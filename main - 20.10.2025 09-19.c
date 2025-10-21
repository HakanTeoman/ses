/**** main.c -BLE + NUS + SAADC + Soft DCDC + RTC/Time + Plan DSL MVP) ****/
/* Bu dosya, uzun/çok parçalı NUS komutlarına dayanıklı olacak şekilde düzenlendi.
 * - CMD_BUF_SIZE = 4096
 * - PLAN_MAX_SIZE = 3500 (yaz[plan] komutları için güvenlik limiti)
 * - yaz[plan] komutları, 'S=(' sonrası parantez dengesi tamamlanınca işlenir
 * - Plan dışı komutlar \n veya \r ile işlenir
 */

#include <stdio.h>
#include <stdarg.h>
#include <string.h>
#include <ctype.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>
#include "app_error.h"
#include "fds.h"
#include "nrf_fstorage_sd.h"   // (FDS, SoftDevice backend)
#include "sdk_config.h"
#include "nrf.h"
#include "app_timer.h"
#include "nrf_pwr_mgmt.h"
#include "nrf_gpio.h"
#include "nrf_delay.h"

#include "nrf_sdh.h"
#include "nrf_sdh_ble.h"
#include "nrf_ble_gatt.h"
#include "ble_advdata.h"
#include "ble_advertising.h"
#include "ble_conn_params.h"
#include "ble_nus.h"
#include "nrf_sdh_soc.h"
#include "boards.h"
//#include "LeylaAIO_boards.h"
#include "nrf_log.h"
#include "nrf_log_ctrl.h"
#include "nrf_log_default_backends.h"
#include "SEGGER_RTT.h"
#include "app_scheduler.h"
#include "LeylaAIO_pinmap.h"
#include "nrfx_twim.h"


#ifndef LOG
#define LOG(fmt, ...) SEGGER_RTT_printf(0, fmt "\r\n", ##__VA_ARGS__)
#endif



#if !NRFX_TWIM_ENABLED
# error "NRFX_TWIM_ENABLED=1 yap"
#endif
#if !NRFX_TWIM0_ENABLED
# error "NRFX_TWIM0_ENABLED=1 yap"
#endif



// BLE olayl arını dinle



static inline void app_idle(void)
{
#if defined(APP_SCHEDULER_ENABLED) && (APP_SCHEDULER_ENABLED==1)
    app_sched_execute();
#endif
    /* Nordic örnekleri genelde LOG -> nrf_pwr_mgmt_run() yapar. 
       Burada SD var; WFE/SEV üzerinden SD’ye CPU bırakmak için: */
    (void)sd_app_evt_wait();
}



/*FLASH*/
#define FDS_FILE_PLANS   0xB00F          /* aynı dosyada tüm planlar */
#define FDS_KEY_FROM_ID(id) (0x2000u + (uint16_t)(id))


/* ====== BLE / ADV ====== */
#define DEVICE_NAME_SHORT      "HKN_52833"
#define DEVICE_NAME "HKN_52833"
#define APP_BLE_CONN_CFG_TAG   1
#define APP_BLE_OBSERVER_PRIO  3
#define ADV_INT_2S_UNITS       3200  // 2.0 s (0.625ms birim)
#define CK(msg) SEGGER_RTT_WriteString(0, msg "\r\n")

/* ====== Batarya ölçüm sabitleri ====== */
#define SAADC_FS_MV        3600
#define SAADC_MAX_CNT      4095
#define DIV_NUM            53      /* (43k+10k)/10k = 53/10 */
#define DIV_DEN            10
#define BAT_PATH_ACTIVE_HIGH  1

/* ====== RTC (PCF85063) ====== */
#include "nrfx_twim.h"
#define RTC_I2C_ADDR         0x51u   /* 7-bit */
#define RTC_REG_SECONDS      0x04    /* 0x04..0x0A: sec..year */
#define RTC_REG_MINUTES      0x05
#define RTC_REG_HOURS        0x06
#define RTC_REG_DAYS         0x07
#define RTC_REG_WEEKDAYS     0x08
#define RTC_REG_MONTHS       0x09
#define RTC_REG_YEARS        0x0A

/* ====== PLAN / DSL – MVP ====== */
enum { FREQ_DAILY=1, FREQ_WEEKLY=2, FREQ_INTERVAL=3 };
#define MAX_TRIGGERS    16
#define MAX_STEPS       16
#define MAX_PLANS       8
#define LED_GAP_SEC     5

typedef struct {
    uint16_t led_mask;     // bit0=LED1 ... bit11=LED12
    uint16_t on_seconds;   // 1..65535
} PlanStep;

typedef struct {
    uint16_t tod_sec;      // 0..86399
    uint8_t  day_mask;     // 0 -> tüm günler
    uint8_t  step_count;
    PlanStep steps[MAX_STEPS];
} PlanTrigger;

typedef struct {
    uint8_t  version;      // =1
    uint8_t  plan_id;      // 0..255
    uint8_t  freq;         // 1/2/3
    uint8_t  _rsv0;
    uint16_t interval_days;
    uint16_t trigger_count;
    uint32_t anchor_epoch_days;
    uint8_t  crc8;         // (MVP: hesaplamıyoruz)
    PlanTrigger trig[MAX_TRIGGERS];
} PlanParsed;

typedef struct {
    bool     in_use;
    PlanParsed p;
} PlanStore;

/* ====== BLE Nesneleri ====== */
BLE_NUS_DEF(m_nus, NRF_SDH_BLE_TOTAL_LINK_COUNT);
NRF_BLE_GATT_DEF(m_gatt);
BLE_ADVERTISING_DEF(m_advertising);
static uint16_t m_conn_handle = BLE_CONN_HANDLE_INVALID;
static void on_ble_evt(ble_evt_t const * p_ble_evt, void * p_context);
NRF_SDH_BLE_OBSERVER(m_ble_observer, APP_BLE_OBSERVER_PRIO, on_ble_evt, NULL);

/* ====== Globaller ====== */
static PlanStore g_plans[MAX_PLANS];

static volatile int32_t g_vbat_k_num   = 10000;  // ×10000
static volatile int32_t g_vbat_m_milli = 1000;   // ‰
static volatile int32_t g_vbat_b_mV    = 0;      // mV offset
static void fds_kickoff(void *p_context);
static void advertising_start(void);
static void on_adv_evt(ble_adv_evt_t evt);

/* FDS op izleme */
static volatile bool g_fds_op_done = false;       // yaz/update tamam
static volatile bool g_fds_busy = false;
static volatile ret_code_t g_fds_op_result = NRF_SUCCESS;
static volatile bool g_fds_gc_running = false;    // GC devam ediyor
static volatile bool g_fds_gc_done = false;       // GC bitti

/* İsteğe bağlı: Hangi key’e yazdık bilmek için */
static volatile uint16_t g_last_fds_key = 0;


static bool g_plans_loaded_once = false;
APP_TIMER_DEF(m_fds_kick_tmr);
//volatile bool g_fds_ready = false;



static volatile bool g_fds_ready = false;

/* Yazılım saati (basit) */
static struct { int HH, MM, SS, DD, MO, YYYY; } s_time;

/* SAADC EasyDMA örnek buffer (4-byte hizalı) */
static volatile int16_t s_saadc_sample_buf[2] __attribute__((aligned(4)));

/* TWI (lazy open/close) */
static const nrfx_twim_t m_twi = NRFX_TWIM_INSTANCE(0);
static bool twi_is_on = false;

/* ====== Yardımcılar ====== */
static bool starts_with(const char *s, uint16_t len, const char *lit) {
    size_t L = strlen(lit);
    return (len >= L) && (strncmp(s, lit, L) == 0);
}
static bool wait_evt_us(volatile uint32_t *evt, uint32_t timeout_us)
{
    while (timeout_us--) {
        if (*evt) return true;
        nrf_delay_us(1);
    }
    return false;
}


static ret_code_t wait_for_fds_op_done(void)
{
    const uint32_t t0 = app_timer_cnt_get();
    const uint32_t timeout = APP_TIMER_TICKS(1500); // ~1.5s

    while (!g_fds_op_done)
    {
        app_sched_execute();
        (void)NRF_LOG_PROCESS();
        nrf_pwr_mgmt_run();

        uint32_t now = app_timer_cnt_get();
        if (app_timer_cnt_diff_compute(now, t0) > timeout) {
            SEGGER_RTT_WriteString(0, "FDS: op TIMEOUT\n");
            return NRF_ERROR_TIMEOUT;
        }
    }
    return g_fds_op_result;
}


/* --- tarih yardımcıları --- */
static bool is_leap(int y) {
    return ((y%4==0) && (y%100!=0)) || (y%400==0);
}
static int days_in_month(int y, int m) {
    static const uint8_t d[12] = {31,28,31,30,31,30,31,31,30,31,30,31};
    return (m==2) ? (d[1] + (is_leap(y)?1:0)) : d[m-1];
}
static void tick_time(void) {
    s_time.SS++;
    if (s_time.SS >= 60) { s_time.SS=0; s_time.MM++; }
    if (s_time.MM >= 60) { s_time.MM=0; s_time.HH++; }
    if (s_time.HH >= 24) { s_time.HH=0; s_time.DD++; }
    int dim = days_in_month(s_time.YYYY, s_time.MO);
    if (s_time.DD > dim) { s_time.DD = 1; s_time.MO++; }
    if (s_time.MO > 12)  { s_time.MO = 1; s_time.YYYY++; }
}
/*fds*/
static void debug_soc_handler(uint32_t evt_id, void * p_context)
{
    (void)p_context;
    if (evt_id == NRF_EVT_FLASH_OPERATION_SUCCESS || evt_id == NRF_EVT_FLASH_OPERATION_ERROR) {
        SEGGER_RTT_printf(0, "SOC: FLASH evt=%u\n", (unsigned)evt_id);
    }
}

/* DİKKAT: bu makro 4 argüman ister: name, prio, handler, context */
NRF_SDH_SOC_OBSERVER(m_debug_soc_obs, 0, debug_soc_handler, NULL);



/* LED kontrol (örnek) */
static inline uint16_t led_mask_from_index(int led1based) {
    return (led1based>=1 && led1based<=12) ? (1u << (led1based-1)) : 0;
}
static void apply_led_mask(uint16_t mask, bool on)
{
    if (mask & (1u<<0)) on ? bsp_board_led_on(BSP_BOARD_LED_0)
                           : bsp_board_led_off(BSP_BOARD_LED_0);
    if (mask & (1u<<1)) on ? bsp_board_led_on(BSP_BOARD_LED_1)
                           : bsp_board_led_off(BSP_BOARD_LED_1);
    /* Donanımına göre genişlet */
}

/* ====== Basit parse yardımcıları ====== */
static const char* trim_ws(const char* p) {
    while (p && (*p==' '||*p=='\t'||*p=='\r'||*p=='\n')) p++;
    return p;
}
static bool parse_uint_str(const char* s, int* v) {
    if (!s || !*s) return false;
    char* e; long x = strtol(s, &e, 10);
    if (e==s) return false;
    *v = (int)x; return true;
}
static bool parse_time_hhmm(const char* s, uint16_t* tod) {
    int HH=0, MM=0;
    if (sscanf(s, "%d:%d", &HH, &MM) != 2) return false;
    if (HH<0||HH>23||MM<0||MM>59) return false;
    *tod = (uint16_t)(HH*3600 + MM*60);
    return true;
}
static bool parse_dur(const char* s, uint16_t* sec) {
    int val=0; char u='s';
    if (sscanf(s, "%d%c", &val, &u) < 1) return false;
    if      (u=='s' || u=='S') *sec = (uint16_t)val;
    else if (u=='m' || u=='M') *sec = (uint16_t)(val*60);
    else if (u=='h' || u=='H') *sec = (uint16_t)(val*3600);
    else return false;
    return (*sec >= 1);
}
/* "@1357" -> bitmask Mon..Sun = 1..7 */
static uint8_t parse_days_opt(const char* at) {
    if (!at || *at!='@') return 0; // 0 = tüm günler (çıktıda 0x7F farz ederiz)
    at++;
    uint8_t m=0;
    while (*at) {
        if (*at<'1' || *at>'7') break;
        m |= (1u << ( (*at - '1') )); // bit0=Mon
        at++;
    }
    return (m==0) ? 0x7F : m;
}

/* --- DSL parçaları --- */
static const char* g_parse_errmsg = NULL;
static const char* g_parse_errpos = NULL;
static void perr(const char* where, const char* pos) { g_parse_errmsg=where; g_parse_errpos=pos; }

/* q(1-3,6;30s) */
static bool expand_q(const char* body, PlanStep* out, int max, int* out_count) {
    const char* semi = strchr(body, ';');
    if (!semi) return false;
    char left[64] = {0}, right[16] = {0};
    size_t L = (size_t)(semi - body);
    if (L >= sizeof(left)) return false;
    memcpy(left, body, L);
    strncpy(right, semi+1, sizeof(right)-1);

    uint16_t dur=0;
    if (!parse_dur(right, &dur)) return false;

    char tmp[64]; strncpy(tmp, left, sizeof(tmp)-1);
    char* saveptr=NULL; char* tok = strtok_r(tmp, ",", &saveptr);
    while (tok) {
        int a=0,b=0;
        if (sscanf(tok, "%d-%d", &a,&b)==2) {
            if (a>b) { int t=a; a=b; b=t; }
            for (int k=a; k<=b; k++) {
                if (*out_count >= max) return false;
                out[*out_count].led_mask   = led_mask_from_index(k);
                out[*out_count].on_seconds = dur;
                (*out_count)++;
            }
        } else {
            int n=0; if (!parse_uint_str(tok, &n)) return false;
            if (*out_count >= max) return false;
            out[*out_count].led_mask   = led_mask_from_index(n);
            out[*out_count].on_seconds = dur;
            (*out_count)++;
        }
        tok = strtok_r(NULL, ",", &saveptr);
    }
    return true;
}

/* l((LED,Süre),(LED,Süre),...) */
static bool expand_l(const char* body, PlanStep* out, int max, int* out_count) {
    const char* p = body;
    while (*p) {
        while (*p && (*p==' '||*p=='\t'||*p==',')) p++;
        if (*p!='(') break;
        p++;
        int led=0; char durstr[16]={0};
        { char* e; long v = strtol(p, &e, 10); if (e==p) return false; led = (int)v; p=e; }
        while (*p==' '||*p=='\t') p++;
        if (*p!=',') return false; p++;
        while (*p==' '||*p=='\t') p++;
        int j=0; while (*p && *p!=')' && j<(int)sizeof(durstr)-1) durstr[j++]=*p++;
        durstr[j]=0;
        if (*p!=')') return false; p++;
        uint16_t sec=0; if (!parse_dur(durstr, &sec)) return false;
        if (*out_count >= max) return false;
        out[*out_count].led_mask   = led_mask_from_index(led);
        out[*out_count].on_seconds = sec;
        (*out_count)++;
    }
    return (*out_count > 0);
}

/* at(HH:MM, q(...))[@days]  veya  at(HH:MM, l(...))[@days] */
static bool parse_one_at_segment(const char* atBeg, PlanTrigger* T, const char** out_end)
{
    memset(T, 0, sizeof(*T));
    const char* p = trim_ws(atBeg);
    if (strncmp(p, "at(", 3)!=0) { perr("at( bekleniyordu", p); return false; }
    p += 3;

    char hhmm[8]={0}; int k=0;
    const char* t = p;
    while (*t && *t!=',' && *t!=')' && k<7) hhmm[k++]=*t++;
    hhmm[k]=0;
    uint16_t tod=0;
    if (!parse_time_hhmm(hhmm, &tod)) { perr("HH:MM parse", p); return false; }

    p = trim_ws(t);
    if (*p!=',') { perr("',' bekleniyordu", p); return false; }
    p++; p = trim_ws(p);

    bool is_q = false;
    if (*p=='q') is_q=true;
    else if (*p=='l') is_q=false;
    else { perr("q(..) veya l(..) bekleniyordu", p); return false; }
    p++;
    if (*p!='(') { perr("'(' bekleniyordu", p); return false; }
    p++;

    int depth=1; const char* stBeg=p; const char* stEnd=p;
    while (*stEnd && depth>0){
        if (*stEnd=='(') depth++;
        else if (*stEnd==')') depth--;
        stEnd++;
    }
    if (depth!=0){ perr("steps parantez kapanmadı", stEnd); return false; }
    stEnd--;

    int outc=0;
    if (is_q) {
        if (!expand_q(stBeg, T->steps, MAX_STEPS, &outc)) { perr("q() parse", stBeg); return false; }
    } else {
        if (!expand_l(stBeg, T->steps, MAX_STEPS, &outc)) { perr("l() parse", stBeg); return false; }
    }
    T->step_count = (uint8_t)outc;
    T->tod_sec    = tod;

    const char* after = trim_ws(stEnd+1);
    if (*after=='@') {
        T->day_mask = parse_days_opt(after);
        after++; while (*after && isdigit((unsigned char)*after)) after++;
        after = trim_ws(after);
    } else {
        T->day_mask = 0;
    }
    if (*after!=')') { perr("at(...) kapanışı yok", after); return false; }
    if (out_end) *out_end = after;
    return true;
}

/* yaz[plan] id=1 f=1 S=( at(09:00, q(1-3;30s))@135, at(21:15, l((4,10s),(5,20s))) ) */
static bool dsl_parse_plan(const char* cmd, uint8_t* out_id, PlanParsed* out)
{
    g_parse_errmsg = g_parse_errpos = NULL;
    memset(out, 0, sizeof(*out));
    out->version = 1;

    const char* pid = strstr(cmd, "id=");
    const char* pf  = strstr(cmd, "f=");
    const char* pS  = strstr(cmd, "S=(");
    if (!pid || !pf || !pS) { perr("id= / f= / S=( yok", cmd); return false; }

    { int v=0; if (!parse_uint_str(pid+3, &v) || v<0 || v>255) { perr("id= parse", pid+3); return false; } *out_id=(uint8_t)v; out->plan_id=(uint8_t)v; }
    { int v=0; if (!parse_uint_str(pf+2, &v)  || v<1 || v>3)   { perr("f= parse",  pf+2);  return false; } out->freq=(uint8_t)v; }

    const char* pi = strstr(cmd, " i=");
    if (pi) { int v=0; if (parse_uint_str(pi+3, &v) && v>0 && v<3650) out->interval_days=(uint16_t)v; }

    const char* sOpen = strchr(pS, '('); if (!sOpen) { perr("S=(", pS); return false; }
    sOpen++;
    int depth=1; const char* p=sOpen; const char* sClose=NULL;
    while (*p && depth>0){
        if (*p=='(') depth++;
        else if (*p==')') depth--;
        p++;
        if (depth==0){ sClose=p-1; break; }
    }
    if (!sClose){ perr("S=(...) kapanmadı", p); return false; }

    const char* cur = sOpen;
    while (cur<=sClose) {
        cur = trim_ws(cur);
        while (cur<=sClose && (*cur==',')) { cur++; cur = trim_ws(cur); }
        if (cur>sClose || *cur==')') break;
        if (strncmp(cur,"at(",3)!=0) { perr("at( bekleniyordu", cur); return false; }

        const char* q = strchr(cur,'('); if (!q || q>sClose) { perr("'(' yok", cur); return false; }
        int d2=1; q++;
        while (q<=sClose && d2>0){ if (*q=='(') d2++; else if (*q==')') d2--; q++; }
        if (d2!=0){ perr("at(...) kapanmadı", q); return false; }

        const char* atEnd = NULL;
        if (out->trigger_count >= MAX_TRIGGERS) { perr("çok fazla at()", cur); return false; }
        if (!parse_one_at_segment(cur, &out->trig[out->trigger_count], &atEnd)) return false;
        out->trigger_count++;
        cur = atEnd + 1; // at(...) kapanışından sonrası
    }
    if (out->trigger_count==0) { perr("hiç at() yok", sOpen); return false; }
    return true;
}

/* Plan store yardımcıları */
static PlanStore* plan_store_find(uint8_t id) {
    for (int i=0;i<MAX_PLANS;i++) if (g_plans[i].in_use && g_plans[i].p.plan_id==id) return &g_plans[i];
    return NULL;
}
static PlanStore* plan_store_alloc(uint8_t id) {
    PlanStore* s = plan_store_find(id);
    if (s) return s;
    for (int i=0;i<MAX_PLANS;i++) if (!g_plans[i].in_use) {
        g_plans[i].in_use=true; g_plans[i].p.plan_id=id; return &g_plans[i];
    }
    return NULL;
}

/* ====== Plan yürütme (MVP) ====== */
APP_TIMER_DEF(m_plan_step_timer);

static struct {
    bool     active;
    bool     run_all_now;       // plan_run_now(…): tüm trig’leri sırayla çalıştır
    const PlanParsed* plan;     // plan başına erişim
    const PlanTrigger* trig;    // aktif tetik
    uint8_t  trig_index;        // aktif tetik index’i
    uint8_t  step_index;        // aktif step index’i
} g_runner;

static bool g_in_on_phase = true;

static void runner_stop(void)
{
    g_runner.active = false;
    g_runner.trig = NULL;
    g_runner.plan = NULL;
    g_runner.trig_index = g_runner.step_index = 0;
    g_in_on_phase = true;
    bsp_board_led_off(BSP_BOARD_LED_0);
    bsp_board_led_off(BSP_BOARD_LED_1);
    (void)app_timer_stop(m_plan_step_timer);
}

static void plan_step_timer_handler(void* ctx); /* fwd */

static bool start_trigger(uint8_t tindex)
{
    if (!g_runner.plan) return false;
    if (tindex >= g_runner.plan->trigger_count) return false;
    const PlanTrigger* T = &g_runner.plan->trig[tindex];
    if (T->step_count == 0) return false;

    g_runner.trig = T;
    g_runner.trig_index = tindex;
    g_runner.step_index = 0;
    g_in_on_phase = true;
    plan_step_timer_handler(NULL);
    return true;
}

static void plan_step_timer_handler(void* ctx)
{
    (void)ctx;
    if (!g_runner.active || !g_runner.trig) return;

    const PlanTrigger* T = g_runner.trig;

    if (g_in_on_phase) {
        if (g_runner.step_index >= T->step_count) {
            if (g_runner.run_all_now && g_runner.plan && (g_runner.trig_index + 1) < g_runner.plan->trigger_count) {
                start_trigger((uint8_t)(g_runner.trig_index + 1));
                return;
            } else {
                runner_stop();
                return;
            }
        }
        uint16_t mask = T->steps[g_runner.step_index].led_mask;
        uint16_t on_s = T->steps[g_runner.step_index].on_seconds;
        apply_led_mask(mask, true);

        g_in_on_phase = false;
        APP_ERROR_CHECK(app_timer_start(m_plan_step_timer, APP_TIMER_TICKS((uint32_t)on_s * 1000), NULL));
    } else {
        if (g_runner.step_index < T->step_count) {
            uint16_t prev_mask = T->steps[g_runner.step_index].led_mask;
            apply_led_mask(prev_mask, false);
        }
        g_runner.step_index++;
        g_in_on_phase = true;
        APP_ERROR_CHECK(app_timer_start(m_plan_step_timer, APP_TIMER_TICKS(LED_GAP_SEC * 1000), NULL));
    }
}

static void plan_timer_mux(void* ctx) { plan_step_timer_handler(ctx); }

/* Hemen çalıştır (tüm at(...) sıralı) */
static bool plan_run_now(const PlanParsed* p)
{
    if (!p || p->trigger_count == 0) return false;
    g_runner.active = true;
    g_runner.run_all_now = true;
    g_runner.plan = p;
    return start_trigger(0);
}

/* ====== Zaman / RTC ====== */
APP_TIMER_DEF(m_time_tick_timer);
static void time_tick_handler(void *p_ctx) { (void)p_ctx; tick_time(); }

static bool parse_datetime(const char* s, int *HH,int *MM,int *SS,int *DD,int *MO,int *YYYY)
{ return (sscanf(s, "%d:%d:%d %d-%d-%d", HH, MM, SS, DD, MO, YYYY) == 6); }

static uint8_t to_bcd(uint8_t v) { return (uint8_t)(((v/10)<<4) | (v%10)); }
static uint8_t from_bcd(uint8_t b){ return (uint8_t)((((b>>4)&0x0F)*10) + (b&0x0F)); }

/* I2C acquire/release (leak önleme) */
static void twi_acquire(void)
{
    if (twi_is_on) return;

    nrfx_twim_config_t cfg = {
        .scl                = PIN_SCL,
        .sda                = PIN_SDA,
        .frequency          = NRF_TWIM_FREQ_100K,   // 100 kHz
        .interrupt_priority = NRFX_TWIM_DEFAULT_CONFIG_IRQ_PRIORITY,
        .hold_bus_uninit    = false
    };

    ret_code_t err = nrfx_twim_init(&m_twi, &cfg, NULL, NULL);
    if (err == NRF_SUCCESS) {
        nrfx_twim_enable(&m_twi);
        twi_is_on = true;
    }
}

// eskisi: plans_fds_init_and_load içinde while (!g_fds_ready) sd_app_evt_wait();
//         ve hemen ardından iterate + record_open yapıyordu


static void plans_load_from_flash(void)
{
    memset(g_plans, 0, sizeof(g_plans));

    fds_record_desc_t  desc = {0};
    fds_find_token_t   tok  = {0};
    uint32_t loaded = 0;

    while (fds_record_iterate(&desc, &tok) == NRF_SUCCESS) {
        fds_flash_record_t frec;
        if (fds_record_open(&desc, &frec) == NRF_SUCCESS) {
            if (frec.p_header->file_id == FDS_FILE_PLANS &&
                frec.p_header->length_words * 4u >= sizeof(PlanParsed)) {
                const PlanParsed *pp = (const PlanParsed*)frec.p_data;
                if (pp->version == 1) {
                    PlanStore *s = plan_store_alloc(pp->plan_id);
                    if (s) { s->p = *pp; s->in_use = true; loaded++; }
                }
            }
            (void)fds_record_close(&desc);
        }
    }
    SEGGER_RTT_printf(0, "FDS: loaded plans=%lu\r\n", (unsigned long)loaded);
}

APP_TIMER_DEF(m_cmd_pump_timer);

static bool s_plans_loaded_once = false;

static volatile bool s_fds_ready   = false;   // FDS init bitti mi?
static volatile bool s_fds_busy    = false;   // FDS şu an bir iş yapıyor mu?
static volatile bool s_fds_do_gc   = false;   // Çöp toplama (GC) tetiklenecek mi?

static const char *fds_ret_str(ret_code_t rc)
{
    switch (rc)
    {
        case NRF_SUCCESS:                 return "NRF_SUCCESS";
        case FDS_ERR_NOT_FOUND:           return "FDS_ERR_NOT_FOUND";
        case FDS_ERR_NO_SPACE_IN_FLASH:   return "FDS_ERR_NO_SPACE_IN_FLASH";
        case NRF_ERROR_BUSY:              return "NRF_ERROR_BUSY";
        case NRF_ERROR_NO_MEM:            return "NRF_ERROR_NO_MEM";
        case NRF_ERROR_TIMEOUT:           return "NRF_ERROR_TIMEOUT";
        default:                          return "UNKNOWN";
    }
}

void fds_evt_handler(fds_evt_t const * p_evt)
{
    if (!p_evt) return;

    LOG("FDS EVT: id=%u result=%s (0x%08X)",
        (unsigned)p_evt->id, fds_ret_str(p_evt->result), (unsigned)p_evt->result);

    switch (p_evt->id)
    {
        case FDS_EVT_INIT:
            s_fds_ready = (p_evt->result == NRF_SUCCESS); // FDS_SUCCESS yerine NRF_SUCCESS kullan
            LOG("FDS: INIT %s", s_fds_ready ? "OK" : "FAIL");
            break;

        case FDS_EVT_WRITE:
            s_fds_busy = false;
            LOG("FDS: WRITE %s rid=%u",
                (p_evt->result == NRF_SUCCESS) ? "OK" : "ERR",
                (unsigned)p_evt->write.record_id);
            break;

        case FDS_EVT_UPDATE:
            s_fds_busy = false;
            // SDK17’de UPDATE olayı da .write.record_id üzerinden bildiriliyor
            LOG("FDS: UPDATE %s rid=%u",
                (p_evt->result == NRF_SUCCESS) ? "OK" : "ERR",
                (unsigned)p_evt->write.record_id);
            break;

        case FDS_EVT_DEL_RECORD:
            s_fds_busy = false;
            LOG("FDS: DELETE %s rid=%u",
                (p_evt->result == NRF_SUCCESS) ? "OK" : "ERR",
                (unsigned)p_evt->del.record_id);
            break;

        case FDS_EVT_DEL_FILE:
            s_fds_busy = false;
            LOG("FDS: DEL_FILE %s", (p_evt->result == NRF_SUCCESS) ? "OK" : "ERR");
            break;

        case FDS_EVT_GC:
            s_fds_busy = false;
            LOG("FDS: GC %s", (p_evt->result == NRF_SUCCESS) ? "DONE" : "ERR");
            break;

        default:
            break;
    }

    // Alan yoksa: GC planla (handler içinde fds_gc() çağırma)
    if (p_evt->result == FDS_ERR_NO_SPACE_IN_FLASH)
    {
        s_fds_do_gc = true;
        LOG("FDS: NO_SPACE_IN_FLASH -> GC requested");
    }
}
static void fds_init_async(void)
{
    ret_code_t err;
    err = fds_register(fds_evt_handler);
    SEGGER_RTT_printf(0, "FDS: register err=0x%08x\n", err);
    err = fds_init();
    SEGGER_RTT_printf(0, "FDS: init() err=0x%08x\n", err);
}

static ret_code_t plans_fds_init(void)
{
    ret_code_t err = fds_register(fds_evt_handler);
    if (err != NRF_SUCCESS) return err;
    return fds_init();                 // *** BEKLEME YOK ***
}


static void fds_init_and_block_until_ready_then_load(void)
{
    ret_code_t err;

    err = fds_register(fds_evt_handler);
    APP_ERROR_CHECK(err);

    err = fds_init();
    APP_ERROR_CHECK(err);

    /* FDS backend (nrf_fstorage_sd) SoftDevice’ten event bekler.
       Burada busy-wait değil, SD’ye CPU bırakıyoruz: */
    while (!g_fds_ready) {
        app_idle();
    }

    /* Flash’taki planları RAM’e çek */
    plans_load_from_flash();
}

static ret_code_t plans_fds_init_and_load(void)

{
    ret_code_t err = fds_register(fds_evt_handler);
    if (err != NRF_SUCCESS) return err;
    return fds_init();  // BURADA BEKLEME YOK
}
    //ret_code_t err = fds_register(fds_evt_handler);
    //if (err != NRF_SUCCESS) return err;

    //err = fds_init();
    //if (err != NRF_SUCCESS) return err;

    ///* init tamam olana kadar bekle (çok kısa sürer) */
    //while (!g_fds_ready) { sd_app_evt_wait(); }

    ///* RAM tarafını temizle */
    //memset(g_plans, 0, sizeof(g_plans));

    ///* Tüm kayıtları tara ve RAM'e al */
    //fds_record_desc_t  desc = {0};
    //fds_find_token_t   tok  = {0};
    //uint32_t loaded = 0;

    //while (fds_record_iterate(&desc, &tok) == NRF_SUCCESS) {
    //    fds_flash_record_t frec;
    //    if (fds_record_open(&desc, &frec) == NRF_SUCCESS) {
    //        if (frec.p_header->file_id == FDS_FILE_PLANS &&
    //            frec.p_header->length_words * 4u >= sizeof(PlanParsed))
    //        {
    //            const PlanParsed *pp = (const PlanParsed*)frec.p_data;
    //            if (pp->version == 1) {
    //                PlanStore *s = plan_store_alloc(pp->plan_id);
    //                if (s) { s->p = *pp; s->in_use = true; loaded++; }
    //            }
    //        }
    //        (void)fds_record_close(&desc);
    //    }
    //}
    //SEGGER_RTT_printf(0, "FDS: loaded plans=%lu\r\n", (unsigned long)loaded);
    //return NRF_SUCCESS;

/* tek planı (id’ye göre) flash’a yazar (replace) */

/* tek planı (id’ye göre) flash’a yazar (replace/update)
 * - varsa UPDATE, yoksa WRITE
 * - NO_SPACE -> GC -> tekrar dene (tek sefer)
 */

static ret_code_t do_write_or_update(bool have_existing_desc,
                                     fds_record_desc_t *p_desc,
                                     fds_record_t const *p_rec)
{
    ret_code_t rc;
    g_fds_op_done   = false;
    g_fds_op_result = NRF_SUCCESS;

    if (have_existing_desc) rc = fds_record_update(p_desc, p_rec);
    else                    rc = fds_record_write (p_desc, p_rec);

    if (rc == NRF_SUCCESS) {
        rc = wait_for_fds_op_done(); // timeout'lu bekleme
    }
    return rc;
}

static ret_code_t plan_persist_save(const PlanParsed* p){
    if(!p) return FDS_ERR_NULL_ARG;
    const uint16_t key = FDS_KEY_FROM_ID(p->plan_id);

    fds_record_desc_t desc={0};
    fds_find_token_t tok={0};
    bool found = (fds_record_find(FDS_FILE_PLANS, key, &desc, &tok)==NRF_SUCCESS);

    fds_record_t rec; memset(&rec,0,sizeof(rec));
    rec.file_id=FDS_FILE_PLANS; rec.key=key;
    rec.data.p_data=p;
    rec.data.length_words=(uint16_t)((sizeof(PlanParsed)+3)/4);

    ret_code_t res = do_write_or_update(found,&desc,&rec);

    if (res==NRF_ERROR_NO_MEM
#ifdef FDS_ERR_NO_SPACE
        || res==FDS_ERR_NO_SPACE
#endif
#ifdef FDS_ERR_NO_PAGES
        || res==FDS_ERR_NO_PAGES
#endif
    ){
        g_fds_gc_running=true; g_fds_gc_done=false;
        ret_code_t ge=fds_gc();
        if (ge==NRF_SUCCESS){
            while(g_fds_gc_running && !g_fds_gc_done) app_idle();
            res = do_write_or_update(found,&desc,&rec);
        }
    }
    return res;
}


/* flash’tan plan sil (opsiyonel) */
static ret_code_t plan_persist_delete(uint8_t id)
{
    fds_record_desc_t desc = {0};
    fds_find_token_t  tok  = {0};
    const uint16_t key = FDS_KEY_FROM_ID(id);
    if (fds_record_find(FDS_FILE_PLANS, key, &desc, &tok) != NRF_SUCCESS)
        return FDS_ERR_NOT_FOUND;

    ret_code_t err = fds_record_delete(&desc);
    if (err == NRF_SUCCESS) {
        g_fds_gc_running = true;
        (void)fds_gc(); /* silinenler GC ile gerçekten boşalır */
    }
    return err;
}

static void twi_release(void)
{
    if (!twi_is_on) return;

    nrfx_twim_disable(&m_twi);
    nrfx_twim_uninit(&m_twi);
    twi_is_on = false;

    // Pinleri emniyetli giriş yap (senin önceki kodunu koruyoruz)
    NRF_P0->PIN_CNF[PIN_SCL] =
        (GPIO_PIN_CNF_DIR_Input        << GPIO_PIN_CNF_DIR_Pos)   |
        (GPIO_PIN_CNF_INPUT_Disconnect << GPIO_PIN_CNF_INPUT_Pos) |
        (GPIO_PIN_CNF_PULL_Disabled    << GPIO_PIN_CNF_PULL_Pos)  |
        (GPIO_PIN_CNF_DRIVE_S0S1       << GPIO_PIN_CNF_DRIVE_Pos) |
        (GPIO_PIN_CNF_SENSE_Disabled   << GPIO_PIN_CNF_SENSE_Pos);
    NRF_P0->PIN_CNF[PIN_SDA] = NRF_P0->PIN_CNF[PIN_SCL];
}

static bool rtc_write_regs(uint8_t reg, const uint8_t *buf, size_t len)
{
    twi_acquire();

    uint8_t tx[12];
    if (len + 1 > sizeof(tx)) { twi_release(); return false; }
    tx[0] = reg;
    memcpy(&tx[1], buf, len);

    ret_code_t err = nrfx_twim_tx(&m_twi, RTC_I2C_ADDR, tx, (uint8_t)(len + 1), false);
    twi_release();
    return (err == NRF_SUCCESS);
}

static bool rtc_read_regs(uint8_t reg, uint8_t *buf, size_t len)
{
    twi_acquire();

    ret_code_t err = nrfx_twim_tx(&m_twi, RTC_I2C_ADDR, &reg, 1, true);  // no-stop
    if (err != NRF_SUCCESS) { twi_release(); return false; }

    err = nrfx_twim_rx(&m_twi, RTC_I2C_ADDR, buf, (uint8_t)len);
    twi_release();
    return (err == NRF_SUCCESS);
}
static bool rtc_set_datetime(int HH,int MM,int SS,int DD,int MO,int YYYY)
{
    uint8_t b[7];
    b[0] = to_bcd((uint8_t)SS) & 0x7F;
    b[1] = to_bcd((uint8_t)MM) & 0x7F;
    b[2] = to_bcd((uint8_t)HH) & 0x3F;
    b[3] = to_bcd((uint8_t)DD) & 0x3F;
    b[4] = 0;
    b[5] = to_bcd((uint8_t)MO) & 0x1F;
    b[6] = to_bcd((uint8_t)(YYYY % 100));
    return rtc_write_regs(RTC_REG_SECONDS, b, sizeof(b));
}
static bool rtc_get_datetime(int *HH,int *MM,int *SS,int *DD,int *MO,int *YYYY)
{
    uint8_t b[7];
    if (!rtc_read_regs(RTC_REG_SECONDS, b, sizeof(b))) return false;
    *SS = from_bcd(b[0] & 0x7F);
    *MM = from_bcd(b[1] & 0x7F);
    *HH = from_bcd(b[2] & 0x3F);
    *DD = from_bcd(b[3] & 0x3F);
    *MO = from_bcd(b[5] & 0x1F);
    *YYYY = 2000 + from_bcd(b[6]);
    return true;
}
static int cmp_ymd(int ay, int am, int ad, int by, int bm, int bd)
{
    if (ay != by) return (ay > by) ? 1 : -1;
    if (am != bm) return (am > bm) ? 1 : -1;
    if (ad != bd) return (ad > bd) ? 1 : -1;
    return 0;
}
static void sync_time_from_rtc_on_boot(void)
{
    const int THR_D = 29, THR_M = 10, THR_Y = 2019;
    const int DEF_H = 9,  DEF_MN = 0,  DEF_S = 0;

    int HH,MM,SS,DD,MO,YYYY;
    bool ok = rtc_get_datetime(&HH,&MM,&SS,&DD,&MO,&YYYY);

    if (!ok || cmp_ymd(YYYY,MO,DD, THR_Y,THR_M,THR_D) < 0) {
        (void)rtc_set_datetime(DEF_H,DEF_MN,DEF_S, THR_D,THR_M,THR_Y);
        s_time.HH=DEF_H; s_time.MM=DEF_MN; s_time.SS=DEF_S;
        s_time.DD=THR_D; s_time.MO=THR_M;  s_time.YYYY=THR_Y;
        SEGGER_RTT_WriteString(0, "TIME: RTC invalid/old -> set default 09:00:00 29-10-2019\r\n");
    } else {
        s_time.HH=HH; s_time.MM=MM; s_time.SS=SS;
        s_time.DD=DD; s_time.MO=MO; s_time.YYYY=YYYY;
        SEGGER_RTT_WriteString(0, "TIME: synced from RTC\r\n");
    }
}

/* ====== NUS reply ====== */
static void nus_replyf(const char *fmt, ...)
{
    if (m_conn_handle == BLE_CONN_HANDLE_INVALID) {
        SEGGER_RTT_WriteString(0, "NUS: no conn\r\n");
        return;
    }
    static char buf[160];
    va_list ap; va_start(ap, fmt);
    int n = vsnprintf(buf, sizeof(buf), fmt, ap);
    va_end(ap);
    if (n <= 0) return;
    uint16_t l = (uint16_t)((n < (int)sizeof(buf)) ? n : (int)sizeof(buf));
    ret_code_t err = ble_nus_data_send(&m_nus, (uint8_t*)buf, &l, m_conn_handle);
    SEGGER_RTT_printf(0, "NUS: send len=%u err=0x%08x\r\n", l, err);
}

/* ====== GPIO: DCDC EN ====== */
static inline void battery_path_enable(bool en)
{
#if BAT_PATH_ACTIVE_HIGH
    nrf_gpio_pin_write(PIN_BOOST_EN, en ? 1 : 0);
#else
    nrf_gpio_pin_write(PIN_BOOST_EN, en ? 0 : 1);
#endif
}
static inline void dcdc_quick_discharge(void)
{
#if BAT_PATH_ACTIVE_HIGH
    nrf_gpio_pin_write(PIN_BOOST_EN, 0);
#else
    nrf_gpio_pin_write(PIN_BOOST_EN, 1);
#endif
    nrf_gpio_cfg_input(PIN_BOOST_EN, NRF_GPIO_PIN_PULLDOWN);
    nrf_delay_us(60);
    nrf_gpio_cfg_output(PIN_BOOST_EN);
#if BAT_PATH_ACTIVE_HIGH
    nrf_gpio_pin_write(PIN_BOOST_EN, 0);
#else
    nrf_gpio_pin_write(PIN_BOOST_EN, 1);
#endif
}

/* ====== DCDC soft start (otomatik) ====== */
static void dcdc_soft_start(void)
{
    static const uint16_t widths_us[] = {
        5,10,50,78,100,125,150,200,250,300,400,500,600,700,800,900,
        1000,1200,1400,1600,2000,2500,3000,4000,4000,4000,5000,5000,5000,5000,
        5000,5000,5000,5000,5000,5000,5000,6000,6000,6000,6000,7000,7000,7000,7000,
        8000,9000,30000,65000
    };
    static const uint16_t gaps_us[] = {
        10000,10000,10000,10000,7000,7000,7000,7000,7000,7000,7000,7000,7000,7000,
        6000,5000,6000,6000,6000,5000,4000,3000,2000,2000,2000,3000,4000,3000,3000,3000,
        3000,4000,4000,4000,4000,4000,4000,4000,4000,4000,4000,4000,4000,4000,4000,
        4000,4000,4000
    };
    for (size_t i=0; i<sizeof(widths_us)/sizeof(widths_us[0]); i++) {
#if BAT_PATH_ACTIVE_HIGH
        nrf_gpio_pin_write(PIN_BOOST_EN, 1);
#else
        nrf_gpio_pin_write(PIN_BOOST_EN, 0);
#endif
        nrf_delay_us(widths_us[i]);
#if BAT_PATH_ACTIVE_HIGH
        nrf_gpio_pin_write(PIN_BOOST_EN, 0);
#else
        nrf_gpio_pin_write(PIN_BOOST_EN, 1);
#endif
        nrf_delay_us(gaps_us[i]);
    }
#if BAT_PATH_ACTIVE_HIGH
    nrf_gpio_pin_write(PIN_BOOST_EN, 1);
#else
    nrf_gpio_pin_write(PIN_BOOST_EN, 0);
#endif
}

/* ====== SAADC utils ====== */
static void saadc_force_stop_wait(void)
{
    NRF_SAADC->TASKS_STOP = 1;
    for (volatile int i = 0; i < 2000; i++) {
        if (NRF_SAADC->EVENTS_STOPPED) break;
        nrf_delay_us(1);
    }
    NRF_SAADC->EVENTS_STOPPED = 0;
    (void)NRF_SAADC->EVENTS_STOPPED;
}
static void saadc_full_off(void)
{
    saadc_force_stop_wait();
    NRF_SAADC->INTENCLR = 0xFFFFFFFF;
    NRF_SAADC->EVENTS_STARTED = 0;
    NRF_SAADC->EVENTS_END     = 0;
    NRF_SAADC->EVENTS_DONE    = 0;
#ifdef SAADC_EVENTS_CALIBRATEDONE
    NRF_SAADC->EVENTS_CALIBRATEDONE = 0;
#endif
    (void)NRF_SAADC->EVENTS_STARTED;
    (void)NRF_SAADC->EVENTS_END;
    (void)NRF_SAADC->EVENTS_DONE;
#ifdef SAADC_EVENTS_CALIBRATEDONE
    (void)NRF_SAADC->EVENTS_CALIBRATEDONE;
#endif
    NVIC_ClearPendingIRQ(SAADC_IRQn);
    NVIC_DisableIRQ(SAADC_IRQn);
    NRF_SAADC->ENABLE = SAADC_ENABLE_ENABLE_Disabled << SAADC_ENABLE_ENABLE_Pos;
}

/* 4 discard + 12 örnek ortalamalı tek atım okuma */
static bool saadc_hal_read_avg_cnt(int *p_avg_cnt)
{
    enum { DISCARD = 4, SAMPLES = 12 };
    int32_t acc = 0;

    (void)sd_clock_hfclk_request();
    { uint32_t run=0; for (int i=0;i<8000;i++){ (void)sd_clock_hfclk_is_running(&run); if(run)break; nrf_delay_us(1);} }

    saadc_full_off();

    NRF_SAADC->RESOLUTION = SAADC_RESOLUTION_VAL_12bit << SAADC_RESOLUTION_VAL_Pos;
    NRF_SAADC->OVERSAMPLE = SAADC_OVERSAMPLE_OVERSAMPLE_Bypass << SAADC_OVERSAMPLE_OVERSAMPLE_Pos;
    NRF_SAADC->ENABLE     = SAADC_ENABLE_ENABLE_Enabled << SAADC_ENABLE_ENABLE_Pos;

    NRF_SAADC->CH[0].PSELP  = SAADC_CH_PSELP_PSELP_AnalogInput2;
    NRF_SAADC->CH[0].PSELN  = SAADC_CH_PSELN_PSELN_NC;
    NRF_SAADC->CH[0].CONFIG =
        (SAADC_CH_CONFIG_RESP_Bypass      << SAADC_CH_CONFIG_RESP_Pos)   |
        (SAADC_CH_CONFIG_RESN_Bypass      << SAADC_CH_CONFIG_RESN_Pos)   |
        (SAADC_CH_CONFIG_GAIN_Gain1_6     << SAADC_CH_CONFIG_GAIN_Pos)   |
        (SAADC_CH_CONFIG_REFSEL_Internal  << SAADC_CH_CONFIG_REFSEL_Pos) |
        (SAADC_CH_CONFIG_TACQ_40us        << SAADC_CH_CONFIG_TACQ_Pos)   |
        (SAADC_CH_CONFIG_MODE_SE          << SAADC_CH_CONFIG_MODE_Pos)   |
        (SAADC_CH_CONFIG_BURST_Disabled   << SAADC_CH_CONFIG_BURST_Pos);

    for (int i=0; i<DISCARD; i++) {
        s_saadc_sample_buf[0] = 0;
        NRF_SAADC->RESULT.PTR    = (uint32_t)s_saadc_sample_buf;
        NRF_SAADC->RESULT.MAXCNT = 1;

        NRF_SAADC->EVENTS_STARTED = 0;
        NRF_SAADC->EVENTS_END     = 0;

        NRF_SAADC->TASKS_START = 1;
        if (!wait_evt_us(&NRF_SAADC->EVENTS_STARTED, 20000)) goto fail;
        NRF_SAADC->EVENTS_STARTED = 0;

        NRF_SAADC->TASKS_SAMPLE = 1;
        if (!wait_evt_us(&NRF_SAADC->EVENTS_END, 20000)) { SEGGER_RTT_WriteString(0,"SAADC ERR: DISCARD END timeout\n"); goto fail; }
        NRF_SAADC->EVENTS_END = 0;
    }

    for (int i=0; i<SAMPLES; i++) {
        s_saadc_sample_buf[0] = 0;
        NRF_SAADC->RESULT.PTR    = (uint32_t)s_saadc_sample_buf;
        NRF_SAADC->RESULT.MAXCNT = 1;

        NRF_SAADC->EVENTS_STARTED = 0;
        NRF_SAADC->EVENTS_END     = 0;

        NRF_SAADC->TASKS_START = 1;
        if (!wait_evt_us(&NRF_SAADC->EVENTS_STARTED, 20000)) goto fail;
        NRF_SAADC->EVENTS_STARTED = 0;

        NRF_SAADC->TASKS_SAMPLE = 1;
        if (!wait_evt_us(&NRF_SAADC->EVENTS_END, 20000)) goto fail;
        NRF_SAADC->EVENTS_END = 0;

        acc += s_saadc_sample_buf[0];
    }

    NRF_SAADC->TASKS_STOP = 1;
    (void)wait_evt_us(&NRF_SAADC->EVENTS_STOPPED, 20000);
    NRF_SAADC->EVENTS_STOPPED = 0;
    NRF_SAADC->ENABLE = SAADC_ENABLE_ENABLE_Disabled << SAADC_ENABLE_ENABLE_Pos;
    (void)sd_clock_hfclk_release();

    int avg = acc / SAMPLES;
    if (avg < 0) avg = 0;
    if (avg > SAADC_MAX_CNT) avg = SAADC_MAX_CNT;
    *p_avg_cnt = avg;
    return true;

fail:
    NRF_SAADC->TASKS_STOP = 1;
    (void)wait_evt_us(&NRF_SAADC->EVENTS_STOPPED, 20000);
    NRF_SAADC->ENABLE = SAADC_ENABLE_ENABLE_Disabled << SAADC_ENABLE_ENABLE_Pos;
    (void)sd_clock_hfclk_release();
    return false;
}

/* ====== Batarya okuma (soft start entegre) ====== */
static bool batt_measure_avg_cnt(int *p_cnt)
{
    dcdc_soft_start();
    nrf_delay_ms(6);
    int cnt = 0;
    bool ok = saadc_hal_read_avg_cnt(&cnt);
    battery_path_enable(false);
    dcdc_quick_discharge();
    if (!ok) return false;
    *p_cnt = cnt;
    return true;
}
static int32_t batt_cnt_to_mv(int avg_cnt)
{
    int32_t adc_mv      = (int32_t)(((int64_t)avg_cnt * SAADC_FS_MV + SAADC_MAX_CNT/2) / SAADC_MAX_CNT);
    int32_t adc_corr_mv = (int32_t)(((int64_t)adc_mv * g_vbat_k_num + 10000/2) / 10000);
    int32_t vbat_raw_mv = (int32_t)(((int64_t)adc_corr_mv * DIV_NUM + DIV_DEN/2) / DIV_DEN);
    int32_t vbat_mv     = (int32_t)(((int64_t)vbat_raw_mv * g_vbat_m_milli + 500) / 1000) + g_vbat_b_mV;
    return vbat_mv;
}

/* ====== BLE olayları ====== */
static void on_ble_evt(ble_evt_t const * p_ble_evt, void * p_context)
{
    (void)p_context;
    switch (p_ble_evt->header.evt_id)
    {
        case BLE_GAP_EVT_CONNECTED:
            m_conn_handle = p_ble_evt->evt.gap_evt.conn_handle;
            SEGGER_RTT_WriteString(0, "BLE: CONNECTED\r\n");
            break;
        case BLE_GAP_EVT_DISCONNECTED:
            SEGGER_RTT_WriteString(0, "BLE: DISCONNECTED -> ADV RESTART\r\n");
            m_conn_handle = BLE_CONN_HANDLE_INVALID;
           ret_code_t err = ble_advertising_start(&m_advertising, BLE_ADV_MODE_FAST);
              SEGGER_RTT_printf(0, "adv_start err=0x%08x\r\n", err);
            break;
        default: break;
    }
}


/* ====== GAP / GATT / ADV ====== */
static void gatt_init(void)
{ APP_ERROR_CHECK(nrf_ble_gatt_init(&m_gatt, NULL)); }

static void gap_params_init(void)
{
    ret_code_t err;
    ble_gap_conn_sec_mode_t sec_mode;
    BLE_GAP_CONN_SEC_MODE_SET_OPEN(&sec_mode);

    err = sd_ble_gap_device_name_set(&sec_mode,
                                     (const uint8_t*)DEVICE_NAME_SHORT,
                                     strlen(DEVICE_NAME_SHORT));
    SEGGER_RTT_printf(0, "gap: device_name_set err=0x%08x\r\n", err);

    ble_gap_conn_params_t p = {0};
    p.min_conn_interval = MSEC_TO_UNITS(100, UNIT_1_25_MS);
    p.max_conn_interval = MSEC_TO_UNITS(200, UNIT_1_25_MS);
    p.slave_latency     = 0;
    p.conn_sup_timeout  = MSEC_TO_UNITS(4000, UNIT_10_MS);

    err = sd_ble_gap_ppcp_set(&p);
    SEGGER_RTT_printf(0, "gap: ppcp_set err=0x%08x\r\n", err);
}

static uint8_t m_adv_handle = BLE_GAP_ADV_SET_HANDLE_NOT_SET;
static ble_gap_adv_params_t m_adv_params;
static uint8_t m_adv_buf[31];
static ble_gap_adv_data_t m_adv_data = {
    .adv_data = { .p_data = m_adv_buf, .len = 0 },
    .scan_rsp_data = { .p_data = NULL, .len = 0 },
};


APP_TIMER_DEF(m_adv_led_timer);
static void adv_led_off(void*){ bsp_board_led_off(BSP_BOARD_LED_0); }

static void on_adv_evt(ble_adv_evt_t evt)
{
    switch (evt)
    {
        case BLE_ADV_EVT_FAST:
            SEGGER_RTT_WriteString(0, "ADV EVT: FAST\r\n");
            break;
        case BLE_ADV_EVT_IDLE:
            SEGGER_RTT_WriteString(0, "ADV EVT: IDLE -> restart\r\n");
            advertising_start(); // timeout 0 olsa da güvence
            break;
        default: break;
    }
}






static ble_uuid_t m_adv_uuids[] = {
    { BLE_UUID_NUS_SERVICE, BLE_UUID_TYPE_VENDOR_BEGIN }
};

static void advertising_init(void)
{
    ble_advertising_init_t init; memset(&init, 0, sizeof(init));

    // --- ADV DATA: sadece FULL NAME + FLAGS ---
    ble_advdata_t advdata = {0};
    advdata.name_type          = BLE_ADVDATA_FULL_NAME;      // Kısa isim yerine tam isim
    advdata.include_appearance = false;
    advdata.flags              = BLE_GAP_ADV_FLAGS_LE_ONLY_GENERAL_DISC_MODE;

    // --- SCAN RESPONSE: KAPALI (boş) ---
    ble_advdata_t srdata = {0};

    init.advdata = advdata;
    init.srdata  = srdata;

    // --- Legacy connectable/scannable, 1M PHY, hızlı mod açık ---
    init.config.ble_adv_primary_phy   = BLE_GAP_PHY_1MBPS;
    init.config.ble_adv_secondary_phy = BLE_GAP_PHY_1MBPS;
    init.config.ble_adv_fast_enabled  = true;
    init.config.ble_adv_fast_interval = MSEC_TO_UNITS(100, UNIT_0_625_MS); // 100 ms
    init.config.ble_adv_fast_timeout  = 0;                                  // sınırsız
    init.config.ble_adv_slow_enabled           = false;
    init.config.ble_adv_on_disconnect_disabled = false;

    init.evt_handler = on_adv_evt;
     ret_code_t err = ble_advertising_init(&m_advertising, &init);
    SEGGER_RTT_printf(0, "ADV: ble_advertising_init err=0x%08x\r\n", err);
    APP_ERROR_CHECK(err);
      ble_advertising_conn_cfg_tag_set(&m_advertising, APP_BLE_CONN_CFG_TAG);
         SEGGER_RTT_WriteString(0, "ADV: conn_cfg_tag_set done\r\n");


    // --- Teşhis: cihaz adresi ve TX gücü ---
    ble_gap_addr_t addr; err = sd_ble_gap_addr_get(&addr);
    SEGGER_RTT_printf(0, "ADDR get: 0x%08X, type=%d %02X:%02X:%02X:%02X:%02X:%02X\r\n",
                      err, addr.addr_type,
                      addr.addr[5], addr.addr[4], addr.addr[3],
                      addr.addr[2], addr.addr[1], addr.addr[0]);

   (void)sd_ble_gap_tx_power_set(BLE_GAP_TX_POWER_ROLE_ADV, m_advertising.adv_handle, 0);
}


/* ====== NUS ====== */

/* --- Önemli ayarlar --- */
#define CMD_BUF_SIZE   2048
#define PLAN_MAX_SIZE  3500

static void handle_cmd(const char* cmd, uint16_t len); /* fwd */

/* Komut tamponu: newline veya S=(...) dengesi tamamlandığında handle_cmd'e verir */
static char     s_cmd_buf[CMD_BUF_SIZE+1];
static uint16_t s_cmd_len = 0;
/* Plan moduna özel durumlar */
static bool     s_plan_assembling = false;   // S=( görüldü ve depth sayıyoruz
static int      s_plan_depth      = 0;       // '(' -> +1, ')' -> -1; 0 olduğunda biter
static bool     s_seen_header     = false;   // "yaz[plan]" + "id=" + "f=" header'ı görüldü
static bool     s_seen_s_equal    = false;   // "S=" görüldü
static bool     s_seen_first_par  = false;   // "S=" den sonra gelen ilk '(' görüldü (depth 1)
static uint16_t s_scan_pos        = 0;//plan modunda bir sonraki tarana
static void reset_cmd_assembler(void)
{
    s_cmd_len = 0;
    s_cmd_buf[0] = '\0';
    s_plan_assembling = false;
    s_plan_depth = 0;
    s_seen_header = false;
    s_seen_s_equal = false;
    s_seen_first_par = false;
    s_scan_pos = 0;
}
static bool header_present(const char* s)
{
    return strstr(s, "yaz[plan]") && strstr(s, "id=") && strstr(s, "f=");
}
/* gelen yeni baytları ekle ve gerekirse komutu flosh et */
static bool cmd_try_flush_stateful(void)
{
    if (s_cmd_len == 0) return false;

    if (!s_plan_assembling) {
        /* plan başlığı ve S=( girişini arıyor */
        if (header_present(s_cmd_buf)) {
            s_seen_header = true;
            char *pS = strstr(s_cmd_buf, "S=");
            if (pS) {
                s_seen_s_equal = true;
                char *p = pS + 2;
                while (*p && isspace((unsigned char)*p)) p++;
                if (*p == '(') {
                    /* Plan moduna gir */
                    s_plan_assembling = true;
                    s_seen_first_par  = true;
                    s_plan_depth      = 1;
                    s_scan_pos        = (uint16_t)(p - s_cmd_buf + 1); /* bir sonraki tarama buradan dı */

                    /* mevcut parçanın kalanını tara */
                    for (uint16_t i = s_scan_pos; i < s_cmd_len; ++i) {
                        char c = s_cmd_buf[i];
                        if (c == '(') s_plan_depth++;
                        else if (c == ')') {
                            s_plan_depth--;
                            if (s_plan_depth == 0) {
                                /* S=(...) tamamlandı -> flush */
                                handle_cmd(s_cmd_buf, (uint16_t)(i + 1));
                                uint16_t used = (uint16_t)(i + 1);
                                uint16_t remain = (s_cmd_len > used) ? (s_cmd_len - used) : 0;
                                if (remain) memmove(s_cmd_buf, &s_cmd_buf[used], remain);
                                s_cmd_len = remain;
                                s_cmd_buf[s_cmd_len] = '\0';
                                /* reset */
                                reset_cmd_assembler();
                                return true;
                            }
                        }
                    }
                    /* Kapanış yok; sonraki paketleri bekliyo */
                    s_scan_pos = s_cmd_len;  /* YENİ: en sona kadar tara */
                    return false;
                }
                /* '(' daha gelmedi; bekle */
                return false;
            }
            /* S= de gelmedi; bekle */
            return false;
        }
    } else {
        /* Plan modundayız: SADECE yeni eklenen segmenti tara */
        for (uint16_t i = s_scan_pos; i < s_cmd_len; ++i) {
            char c = s_cmd_buf[i];
            if (c == '(') s_plan_depth++;
            else if (c == ')') {
                s_plan_depth--;
                if (s_plan_depth == 0) {
                    /* S=(...) tamamlandı -> flush */
                    handle_cmd(s_cmd_buf, (uint16_t)(i + 1));
                    uint16_t used = (uint16_t)(i + 1);
                    uint16_t remain = (s_cmd_len > used) ? (s_cmd_len - used) : 0;
                    if (remain) memmove(s_cmd_buf, &s_cmd_buf[used], remain);
                    s_cmd_len = remain;
                    s_cmd_buf[s_cmd_len] = '\0';
                    reset_cmd_assembler();
                    return true;
                }
            }
        }
        /* Bu turda bitmedi; bir sonraki paket için pozisyonu güncelle */
        s_scan_pos = s_cmd_len;   /* YENİ */
        return false;
    }

    /* Plan değilse: klasik newline ile flush */
    for (uint16_t i = 0; i < s_cmd_len; i++) {
        if (s_cmd_buf[i] == '\n' || s_cmd_buf[i] == '\r') {
            handle_cmd(s_cmd_buf, i);
            uint16_t remain = s_cmd_len - (i + 1);
            if (remain) memmove(s_cmd_buf, &s_cmd_buf[i + 1], remain);
            s_cmd_len = remain;
            s_cmd_buf[s_cmd_len] = '\0';
            return true;
        }
    }
    return false;
}
static bool cmd_try_flush_complete_line(void)
{
    // 0) Boşsa iş yok
    if (s_cmd_len == 0) return false;

    // 1) Eğer tampon "yaz[plan]" ile başlamıyorsa,
    //    a) "yaz[plan]" içerideyse: başına kadar olanı çöpe at ve tekrar dene
    //    b) hiç yoksa: normal newline ile çalış
    if (!(s_cmd_len >= 9 && strncmp(s_cmd_buf, "yaz[plan]", 9) == 0)) {
        char *hdr = strstr(s_cmd_buf, "yaz[plan]");
        if (hdr) {
            // Baştaki çöpleri at (resync)
            uint16_t drop = (uint16_t)(hdr - s_cmd_buf);
            if (drop > 0) {
                uint16_t remain = s_cmd_len - drop;
                memmove(s_cmd_buf, hdr, remain);
                s_cmd_len = remain;
                s_cmd_buf[s_cmd_len] = '\0';
            }
            // Artık baş "yaz[plan]" oldu; devamı bu çağrının başına dönüp işleyecek
            // (return false deyip bir sonraki pompa tick'inde tekrar çağrılması da yeterli)
        }

        // Hâlâ plan değilse: klasik newline ile flush
        if (!(s_cmd_len >= 9 && strncmp(s_cmd_buf, "yaz[plan]", 9) == 0)) {
            for (uint16_t i = 0; i < s_cmd_len; i++) {
                if (s_cmd_buf[i] == '\n' || s_cmd_buf[i] == '\r') {
                    handle_cmd(s_cmd_buf, i);
                    uint16_t remain = s_cmd_len - (i + 1);
                    if (remain) memmove(s_cmd_buf, &s_cmd_buf[i + 1], remain);
                    s_cmd_len = remain;
                    s_cmd_buf[s_cmd_len] = '\0';
                    return true;
                }
            }
            return false;
        }
    }

    // 2) Buraya geldiysek tampon BAŞI "yaz[plan]" ile başlıyor.
    //    Plan flush’ı yalnızca "id=", "f=" ve "S=(" mevcutsa ve S=(...) dengesi kapanmışsa yap.
    char *pid = strstr(s_cmd_buf, "id=");
    char *pf  = strstr(s_cmd_buf, "f=");
    char *pS  = strstr(s_cmd_buf, "S=(");

    if (!pid || !pf || !pS) {
        // Daha veri lazım
        return false;
    }

    // S=( ... ) parantez dengesini *S=( sonrası* say
    int depth = 0;
    char *p = pS;
    for (; *p; ++p) {
        if (*p == '(') depth++;
        else if (*p == ')') depth--;
        if (depth == 0 && p > pS) {
            // S=(...) tamamlandı → komutu baştan p dahiline kadar flush et
            uint16_t cmdlen = (uint16_t)((p - s_cmd_buf) + 1);
            handle_cmd(s_cmd_buf, cmdlen);

            uint16_t remain = s_cmd_len - cmdlen;
            if (remain) memmove(s_cmd_buf, &s_cmd_buf[cmdlen], remain);
            s_cmd_len = remain;
            s_cmd_buf[s_cmd_len] = '\0';
            return true;
        }
    }
    return false; // S kapanışı henüz gelmedi
}




static volatile bool s_cmd_pump_armed = false;

// Pompa: her tetiklemede sınırlı sayıda flush yap, fazla uzarsa yeniden kur.
static void cmd_pump_handler(void *p_ctx)
{
    (void)p_ctx;
    s_cmd_pump_armed = false;

    // FDS init tamamlandıysa ve henüz yüklenmediyse buradan çağır.
    if (g_fds_ready) {
        static bool loaded_once = false;
        if (!loaded_once) { loaded_once = true; plans_load_from_flash(); }
    }

    int budget = 8;
    while (budget-- > 0) {
        if (!cmd_try_flush_complete_line()) break;
    }
    if (cmd_try_flush_complete_line()) {
        app_timer_start(m_cmd_pump_timer, APP_TIMER_TICKS(5), NULL);
        s_cmd_pump_armed = true;
    }
}
static bool fds_boot_safe_init_and_optional_load(bool do_load)
{
    ret_code_t err;

    // 1) Reklamı durdur (zaten kapalıysa hata dönebilir; umursamayız)
    (void) sd_ble_gap_adv_stop(m_advertising.adv_handle);

    // 2) FDS init
    g_fds_ready = false;
    APP_ERROR_CHECK(fds_register(fds_evt_handler));
    err = fds_init();
    if (err != NRF_SUCCESS) {
        SEGGER_RTT_printf(0, "FDS: init ERR=0x%08x\n", (unsigned)err);
        // Reklamı geri başlatıp çık
        (void) advertising_start();
        return false;
    }

    // 3) INIT olayını bekle (kısa timeout; CPU boşta uyusun)
    uint32_t t0 = app_timer_cnt_get();
    const uint32_t timeout_ticks = APP_TIMER_TICKS(2000); // 2s
    while (!g_fds_ready) {
        app_sched_execute();
        (void) NRF_LOG_PROCESS();
        nrf_pwr_mgmt_run();
        uint32_t now = app_timer_cnt_get();
        if (app_timer_cnt_diff_compute(now, t0) > timeout_ticks) {
            SEGGER_RTT_WriteString(0, "FDS: INIT TIMEOUT\n");
            (void) advertising_start();
            return false;
        }
    }

    // 4) İstenirse flash’tan yükle (bloklamayan kendi fonksiyonun)
    if (do_load) {
        plans_load_from_flash();
    }

    // 5) Reklamı tekrar başlat
    (void) advertising_start();
    return true;
}


static void nus_data_handler(ble_nus_evt_t * p_evt)
{
    switch (p_evt->type) {
    case BLE_NUS_EVT_RX_DATA: {
        const uint8_t* d = p_evt->params.rx_data.p_data;
        uint16_t len     = p_evt->params.rx_data.length;

        /* Append (taşma koruması) */
        uint16_t room = (uint16_t)(sizeof(s_cmd_buf) - 1 - s_cmd_len);
        if (len > room) len = room;
        if (len) {
            memcpy(&s_cmd_buf[s_cmd_len], d, len);
            s_cmd_len += len;
            s_cmd_buf[s_cmd_len] = '\0';
        }

        /* Bir seferde birden çok komut flush olabilir */
        while (cmd_try_flush_stateful()) { /* consume */ }

        /* Çok dolarsa sıfırla (yarım komutu drop et) */
        if (s_cmd_len >= sizeof(s_cmd_buf) - 8) {
            reset_cmd_assembler();
            SEGGER_RTT_WriteString(0, "NUS: RX overflow -> buf cleared\r\n");
            nus_replyf("err=rx_overflow\r\n");
        }
    } break;

    case BLE_NUS_EVT_COMM_STARTED:
        m_conn_handle = p_evt->conn_handle;
        SEGGER_RTT_WriteString(0, "NUS: COMM_STARTED (notify ON)\r\n");
        break;

    case BLE_NUS_EVT_COMM_STOPPED:
        SEGGER_RTT_WriteString(0, "NUS: COMM_STOPPED (notify OFF)\r\n");
        m_conn_handle = BLE_CONN_HANDLE_INVALID;
        /* Yarım plan kalmasın */
        reset_cmd_assembler();
        break;

    default: break;
    }
}

static void services_init(void)
{
    ble_nus_init_t nus_init = (ble_nus_init_t){0};
    nus_init.data_handler = nus_data_handler;
    APP_ERROR_CHECK(ble_nus_init(&m_nus, &nus_init));
}

/* ====== BLE Stack ====== */
static void ble_stack_init(void)
{
    ret_code_t err;
    SEGGER_RTT_WriteString(0, "SD: enable_request\r\n");
    err = nrf_sdh_enable_request();
    SEGGER_RTT_printf(0, "SD: enable_request err=0x%08x\r\n", err);
    if (err) return;

    uint32_t ram_start = 0;
    SEGGER_RTT_WriteString(0, "SD: default_cfg_set\r\n");
    err = nrf_sdh_ble_default_cfg_set(APP_BLE_CONN_CFG_TAG, &ram_start);
    SEGGER_RTT_printf(0, "SD: default_cfg_set err=0x%08x, need RAM_START>=0x%08lx\r\n", err, ram_start);
    if (err) return;

    SEGGER_RTT_WriteString(0, "SD: ble_enable\r\n");
    err = nrf_sdh_ble_enable(&ram_start);
    SEGGER_RTT_printf(0, "SD: ble_enable err=0x%08x, used RAM_START=0x%08lx\r\n", err, ram_start);
    if (err) return;
}

/* ====== Conn Params (opsiyonel) ====== */
static void conn_params_init(void)
{
#if NRF_BLE_CONN_PARAMS_ENABLED
    ble_conn_params_init_t cp = {0};
    cp.first_conn_params_update_delay = APP_TIMER_TICKS(30000);
    cp.next_conn_params_update_delay  = APP_TIMER_TICKS(30000);
    cp.max_conn_params_update_count   = 3;
    APP_ERROR_CHECK(ble_conn_params_init(&cp));
#endif
}

/* ====== Pwr Mgmt ====== */
static void power_management_init(void)
{ APP_ERROR_CHECK(nrf_pwr_mgmt_init()); }

/* ====== GPIO defaults ====== */
static void gpio_defaults_init(void)
{
    bsp_board_init(BSP_INIT_LEDS);
    bsp_board_leds_off();

    const uint8_t sleep_pins[] = { PIN_VZONE1, PIN_VZONE2, PIN_VZONE3,
                                   PIN_VZONE4, PIN_VZONE5, PIN_VZONE6 };
    for (size_t i=0; i<sizeof(sleep_pins); i++) {
        nrf_gpio_cfg_output(sleep_pins[i]);
        nrf_gpio_pin_write(sleep_pins[i], 1);
    }

    nrf_gpio_cfg_output(PIN_G_IN1); nrf_gpio_pin_write(PIN_G_IN1, 0);
    nrf_gpio_cfg_output(PIN_G_IN2); nrf_gpio_pin_write(PIN_G_IN2, 0);

    nrf_gpio_cfg_output(PIN_BOOST_EN);  nrf_gpio_pin_write(PIN_BOOST_EN, 0);

    nrf_gpio_cfg_input(PIN_SCL,      NRF_GPIO_PIN_NOPULL);
    nrf_gpio_cfg_input(PIN_SDA,      NRF_GPIO_PIN_NOPULL);
    nrf_gpio_cfg_input(PIN_FLOW,     NRF_GPIO_PIN_PULLDOWN);
    nrf_gpio_cfg_input(PIN_RTC_INT,  NRF_GPIO_PIN_NOPULL);
}

/* ====== Boot LED sekansı ====== */
static void boot_led_sequence(void)
{
    bsp_board_led_on(BSP_BOARD_LED_0); nrf_delay_ms(200);
    bsp_board_led_off(BSP_BOARD_LED_0); nrf_delay_ms(200);
    bsp_board_led_on(BSP_BOARD_LED_1); nrf_delay_ms(200);
    bsp_board_led_off(BSP_BOARD_LED_1); nrf_delay_ms(200);
}

/* ====== Komut Motoru ====== */
extern uint32_t sd_clock_hfclk_is_running(uint32_t * p_is_running);
extern uint32_t sd_clock_hfclk_release(void);
extern uint32_t sd_clock_hfclk_request(void);


static void handle_cmd(const char* cmd, uint16_t len)
{
    while (len && (cmd[len-1] == '\r' || cmd[len-1] == '\n')) len--;

    /* ---- DATETIME ---- */
    if (starts_with(cmd, len, "yaz[zaman]=")) {
        int HH,MM,SS,DD,MO,YYYY;
        const char* p = strchr(cmd,'='); if (p) p++;
        if (!p || !parse_datetime(p, &HH,&MM,&SS,&DD,&MO,&YYYY)) {
            nus_replyf("err=datetime\r\n"); return;
        }
        s_time.HH=HH; s_time.MM=MM; s_time.SS=SS; s_time.DD=DD; s_time.MO=MO; s_time.YYYY=YYYY;
        bool ok = rtc_set_datetime(HH,MM,SS,DD,MO,YYYY);
        nus_replyf("zaman:set %02d:%02d:%02d %02d-%02d-%04d (rtc=%d)\r\n",
                   HH,MM,SS,DD,MO,YYYY, ok?1:0);
        return;
    }
    if (starts_with(cmd, len, "oku[zaman]")) {
        nus_replyf("%02d:%02d:%02d %02d-%02d-%04d\r\n",
                   s_time.HH, s_time.MM, s_time.SS, s_time.DD, s_time.MO, s_time.YYYY);
        return;
    }
    if (starts_with(cmd, len, "oku[rtc]")) {
        int HH,MM,SS,DD,MO,YYYY;
        bool ok = rtc_get_datetime(&HH,&MM,&SS,&DD,&MO,&YYYY);
        if (!ok) { nus_replyf("rtc=NA\r\n"); return; }
        nus_replyf("%02d:%02d:%02d %02d-%02d-%04d\r\n", HH,MM,SS,DD,MO,YYYY);
        return;
    }

    /* ---- BATTERY ---- */
    if (starts_with(cmd, len, "oku[batt_raw]")) {
        int cnt=0;
        if (!batt_measure_avg_cnt(&cnt)) { nus_replyf("batt_raw=NA\r\n"); return; }
        nus_replyf("batt_raw_cnt=%d\r\n", cnt);
        return;
    }
    if (starts_with(cmd, len, "oku[batt]") || starts_with(cmd, len, "oku[vbat]")) {
        int cnt=0;
        if (!batt_measure_avg_cnt(&cnt)) { nus_replyf("batt=NA\r\n"); return; }
        int32_t mv = batt_cnt_to_mv(cnt);
        nus_replyf("batt=%ld.%03ldV\r\n", (long)(mv/1000), (long)(mv%1000));
        return;
    }

    /* ---- PLAN ---- */
if (starts_with(cmd, len, "yaz[plan]")) {
    uint8_t    id = 0;
    PlanParsed P;

    size_t L = len; if (L > CMD_BUF_SIZE) L = CMD_BUF_SIZE;
    char tmp[CMD_BUF_SIZE + 1]; memcpy(tmp, cmd, L); tmp[L] = '\0';

    if (!dsl_parse_plan(tmp, &id, &P)) {
        const char* ctx = g_parse_errpos ? g_parse_errpos : tmp;
        char tail[24]={0}; for (int i=0;i<20 && ctx[i]; i++) tail[i]=ctx[i];
        nus_replyf("plan=ERR_PARSE where=%s near=\"%s\"\r\n",
                   g_parse_errmsg?g_parse_errmsg:"?", tail);
        return;
    }

    // RAM’e al
    PlanStore* s = plan_store_alloc(id);
    if (!s) { nus_replyf("plan=ERR_STORE\r\n"); return; }
    s->p = P; s->in_use = true;

    // FDS hazır değilse: KISA pencere aç → init → (opsiyonel load) → yaz
    if (!g_fds_ready) {
        bool ok = fds_boot_safe_init_and_optional_load(true /*do_load*/);
        if (!ok) {
            nus_replyf("plan=OK id=%u trig=%u (persist=DEFERRED)\r\n",
                       (unsigned)id, (unsigned)P.trigger_count);
            return;
        }
    }

    // Artık FDS hazır: kalıcı yaz
ret_code_t ferr = plan_persist_save(&s->p);
if (ferr == NRF_SUCCESS) {
    nus_replyf("plan=OK id=%u trig=%u (persist=OK)\r\n",
               (unsigned)id, (unsigned)P.trigger_count);
} else if (ferr == NRF_ERROR_TIMEOUT) {
    nus_replyf("plan=OK id=%u trig=%u (persist=DEFERRED)\r\n",
               (unsigned)id, (unsigned)P.trigger_count);
    // Reklam garanti açılsın:
    (void) advertising_start();
} else {
    nus_replyf("plan=OK id=%u trig=%u (persist=%u)\r\n",
               (unsigned)id, (unsigned)P.trigger_count, (unsigned)ferr);
    (void) advertising_start();
}
    return;
}

    if (starts_with(cmd, len, "sil[plan]=")) {
        const char* p = strchr(cmd,'='); if (!p) { nus_replyf("err=arg\r\n"); return; }
        int vid=0; if (!parse_uint_str(p+1,&vid) || vid<0 || vid>255) { nus_replyf("err=arg\r\n"); return; }
        ret_code_t e = plan_persist_delete((uint8_t)vid);
        for (int i=0;i<MAX_PLANS;i++)
            if (g_plans[i].in_use && g_plans[i].p.plan_id==(uint8_t)vid)
                g_plans[i].in_use=false;
        nus_replyf("sil[plan]=%u\r\n", (unsigned)e);
        return;
    }

    if (starts_with(cmd, len, "oku[plan]=")) {
        const char* p = strchr(cmd,'='); if (!p) { nus_replyf("err=arg\r\n"); return; }
        int vid=0; if (!parse_uint_str(p+1,&vid) || vid<0 || vid>255) { nus_replyf("err=arg\r\n"); return; }
        PlanStore* s = plan_store_find((uint8_t)vid);
        if (!s) { nus_replyf("plan=NA\r\n"); return; }

        nus_replyf("plan id=%u f=%u trig=%u\r\n", s->p.plan_id, s->p.freq, s->p.trigger_count);
        for (int t=0; t<s->p.trigger_count; t++) {
            const PlanTrigger* T = &s->p.trig[t];
            nus_replyf(" at %02u:%02u steps=%u days=0x%02x\r\n",
                (unsigned)(T->tod_sec/3600), (unsigned)((T->tod_sec/60)%60),
                T->step_count, T->day_mask?T->day_mask:0x7F);
            for (int k=0;k<T->step_count;k++) {
                nus_replyf("  - mask=0x%04x on=%us\r\n",
                    T->steps[k].led_mask, T->steps[k].on_seconds);
            }
        }
        return;
    }

    if (starts_with(cmd, len, "yaz[plan_run]=")) {
        const char* p = strchr(cmd,'='); if (!p) { nus_replyf("err=arg\r\n"); return; }
        int vid=0; if (!parse_uint_str(p+1,&vid) || vid<0 || vid>255) { nus_replyf("err=arg\r\n"); return; }
        PlanStore* s = plan_store_find((uint8_t)vid);
        if (!s) { nus_replyf("plan=NA\r\n"); return; }
        if (!plan_run_now(&s->p)) { nus_replyf("plan_run=ERR\r\n"); return; }
        nus_replyf("plan_run=OK id=%u\r\n", s->p.plan_id);
        return;
    }

    /* bilinmeyen */
    nus_replyf("err=unknown_cmd\r\n");
}
static volatile bool fs_busy = false;
static volatile bool fs_need_retry = false;

static bool fds_try_write(const fds_record_t * rec, fds_record_desc_t * desc)
{
    if (fs_busy) return false;
    fs_busy = true;

    ret_code_t rc = fds_record_write(desc, rec);
    if (rc == FDS_ERR_NO_SPACE_IN_FLASH) {
        SEGGER_RTT_WriteString(0, "FDS: NO_SPACE -> GC\r\n");
        APP_ERROR_CHECK(fds_gc());
        // GC bitince tekrar deneyeceğiz
        fs_need_retry = true;
        return true;
    }
    if (rc != NRF_SUCCESS) {
        fs_busy = false;
        SEGGER_RTT_printf(0, "FDS: write err=0x%08x\r\n", (unsigned)rc);
        return false;
    }
    return true; // başarı; tamamlanınca handler'da fs_busy=false yapılacak
}

static void hfclk_selftest(void)
{
    // 1) HFCLK iste
    ret_code_t e = sd_clock_hfclk_request();
    SEGGER_RTT_printf(0, "HFCLK request: 0x%08X\r\n", e);

    // 2) (Basit bekleme/polling) – 10 ms içinde XTAL'a geçmesi lazım
    for (int i = 0; i < 100; i++)
    {
        nrf_delay_ms(1);
        uint32_t stat = NRF_CLOCK->HFCLKSTAT;
        uint32_t src  = (stat & CLOCK_HFCLKSTAT_SRC_Msk)   >> CLOCK_HFCLKSTAT_SRC_Pos;   // 1=XTAL, 0=RC
        uint32_t run  = (stat & CLOCK_HFCLKSTAT_STATE_Msk) >> CLOCK_HFCLKSTAT_STATE_Pos; // 1=Running
        if (run)
        {
            SEGGER_RTT_printf(0, "HFCLKSTAT: run=%u src=%u (0=RC,1=XTAL)\r\n", run, src);
            break;
        }
        if (i == 99)
        {
            SEGGER_RTT_printf(0, "HFCLKSTAT: TIMEOUT (run=0)\r\n");
        }
    }

    // 3) İşi bitince serbest bırak (opsiyonel)
    (void) sd_clock_hfclk_release();
}
static void dump_clocks(void)
{
    uint32_t hf = NRF_CLOCK->HFCLKSTAT;
    uint32_t lf = NRF_CLOCK->LFCLKSTAT;
    SEGGER_RTT_printf(0,
        "CLK: HF=%s SRC=%u | LF=%s SRC=%u\r\n",
        (hf & CLOCK_HFCLKSTAT_STATE_Msk) ? "RUN" : "STOP",
        (hf & CLOCK_HFCLKSTAT_SRC_Msk)   ? 1 : 0,
        (lf & CLOCK_LFCLKSTAT_STATE_Msk) ? "RUN" : "STOP",
        (lf & CLOCK_LFCLKSTAT_SRC_Msk) >> CLOCK_LFCLKSTAT_SRC_Pos
    );
}
static void advertising_start(void)
{
    (void)sd_ble_gap_tx_power_set(BLE_GAP_TX_POWER_ROLE_ADV, m_advertising.adv_handle, 0);
    ret_code_t err = ble_advertising_start(&m_advertising, BLE_ADV_MODE_FAST);
    SEGGER_RTT_printf(0, "ADV: start er=0x%08x\r\n", err);
    APP_ERROR_CHECK(err);
}
static void ble_evt_handler(ble_evt_t const * p_ble_evt, void * p_context)
{
    switch (p_ble_evt->header.evt_id)
    {
        
        case BLE_GAP_EVT_DISCONNECTED:
            SEGGER_RTT_WriteString(0, "BLE: DISCONNECTED -> restart adv\r\n");
            APP_ERROR_CHECK(ble_advertising_start(&m_advertising, BLE_ADV_MODE_FAST));
            break;

        default:
            break;
    }
}
static void fds_kickoff(void *p_context)
{
    SEGGER_RTT_WriteString(0, "DELAY: 2500 ms before FDS ops\r\n");

    ret_code_t er = fds_register(fds_evt_handler);
    SEGGER_RTT_printf(0, "FDS: register er=0x%08x\r\n", er);
    APP_ERROR_CHECK(er);

    // İstersen sadece durum oku (flash erase/yazma yok)
    fds_stat_t st;
    er = fds_stat(&st);
    SEGGER_RTT_printf(0, "FDS: stat er=0x%08x (valid=%u dirty=%u)\r\n",
                      er, (unsigned)st.valid_records, (unsigned)st.dirty_records);

    // NOT: Burada fds_init() ÇAĞIRMIYORUZ. (Sorunu tetikleyen kısım buydu)
}

/* ====================== MAIN ====================== */
static void fds_log_layout(void)
{
    uint32_t page_sz   = NRF_FICR->CODEPAGESIZE;         // 4096
    uint32_t pages_tot = NRF_FICR->CODESIZE;             // 512k / 4k = 128
    uint32_t flash_end = pages_tot * page_sz;            // 0x80000

    uint32_t vp        = FDS_VIRTUAL_PAGES;
    uint32_t reserved  = FDS_VIRTUAL_PAGES_RESERVED;
    uint32_t used_pages= vp + 1 + reserved;              // data+swap+reserved
    uint32_t fds_start = flash_end - used_pages * page_sz;
    uint32_t swap_addr = flash_end - (reserved + 1) * page_sz;
    uint32_t resv_beg  = flash_end - reserved * page_sz;

    SEGGER_RTT_printf(0,
        "FDS-LAYOUT: page=%u bytes, flash_end=0x%05x\n"
        "            vp=%u, reserved=%u -> used_pages=%u\n"
        "            fds_start=0x%05x .. 0x%05x (data)\n"
        "            swap=0x%05x, reserved=%u pages [0x%05x..0x%05x]\n",
        (unsigned)page_sz, (unsigned)flash_end,
        (unsigned)vp, (unsigned)reserved, (unsigned)used_pages,
        (unsigned)fds_start, (unsigned)(swap_addr-1),
        (unsigned)swap_addr, (unsigned)reserved,
        (unsigned)resv_beg, (unsigned)(flash_end-1));
}


int main(void)
{
    // Log & güç & timer & scheduler
    APP_ERROR_CHECK(NRF_LOG_INIT(NULL));
    NRF_LOG_DEFAULT_BACKENDS_INIT();
    APP_ERROR_CHECK(nrf_pwr_mgmt_init());
    APP_ERROR_CHECK(app_timer_init());
    APP_SCHED_INIT(APP_TIMER_SCHED_EVENT_DATA_SIZE, 32);
    sync_time_from_rtc_on_boot();

    // BLE stack
    SEGGER_RTT_WriteString(0, "A: ble_stack_init()\r\n");
    ble_stack_init(); // SD enable + cfg + enable logların geldiğini görüyorsun

    // GATT/GAP/Services/ADV
    gatt_init();
    gap_params_init();
    services_init();

    advertising_init(); // m_advertising.init.evt_handler = on_adv_evt; (projenizde bu setli olmalı)
    ble_advertising_conn_cfg_tag_set(&m_advertising, APP_BLE_CONN_CFG_TAG);

    //fds_init_and_block_until_ready_then_load();
    power_management_init();
    boot_led_sequence();

    APP_ERROR_CHECK(app_timer_create(&m_time_tick_timer,
                                     APP_TIMER_MODE_REPEATED,
                                     time_tick_handler));
    APP_ERROR_CHECK(app_timer_start(m_time_tick_timer,
                                    APP_TIMER_TICKS(1000), NULL));

    // Plan step timer
    APP_ERROR_CHECK(app_timer_create(&m_plan_step_timer,
                                     APP_TIMER_MODE_SINGLE_SHOT,
                                     plan_timer_mux));

    // Reklamı hemen başlat
    SEGGER_RTT_WriteString(0, "ADV: start\r\n");
    advertising_start();
    SEGGER_RTT_WriteString(0, "ADV: start done\r\n");

      fds_log_layout();
      APP_ERROR_CHECK(fds_register(fds_evt_handler));
    //SEGGER_RTT_WriteString(0, "FDS: kickoff (immediate)\r\n");
        //APP_ERROR_CHECK(fds_register(fds_evt_handler));
    APP_ERROR_CHECK(fds_init());   // EVT_INIT gelecektir; fds_evt_handler içinde load edeceğiz
    ////// 2.5 sn sonra FDS REGISTER (bloklamadan) – kesinlikle scheduler üzerinden
    //APP_ERROR_CHECK(app_timer_create(&m_fds_kick_tmr, APP_TIMER_MODE_SINGLE_SHOT, fds_kickoff));
    //APP_ERROR_CHECK(app_timer_start(m_fds_kick_tmr, APP_TIMER_TICKS(2500), NULL));

    // Ana döngü – SD = APPSH ise scheduler’ı mutlaka çalıştır
      for (;;)
      {
          if (s_fds_do_gc && !s_fds_busy && s_fds_ready)
          {
              s_fds_do_gc = false;
              s_fds_busy  = true;
              ret_code_t rc = fds_gc();
              LOG("FDS: GC start rc=0x%08X", (unsigned)rc);
          }
      }
}

                //int main(void)
                      //{
                      //    SEGGER_RTT_WriteString(0, "BOOT\r\n");
                      //    APP_ERROR_CHECK(NRF_LOG_INIT(NULL));
                      //    NRF_LOG_DEFAULT_BACKENDS_INIT();

                      //    CK("A: ble_stack_init()");
                      //    ble_stack_init();

                      //    CK("B: app_timer_init()");
                      //    APP_ERROR_CHECK(app_timer_init());

                      //    // --- SCHEDULER ---
                      //    #define SCHED_MAX_EVENT_DATA_SIZE   APP_TIMER_SCHED_EVENT_DATA_SIZE
                      //    #define SCHED_QUEUE_SIZE            32
                      //    APP_SCHED_INIT(SCHED_MAX_EVENT_DATA_SIZE, SCHED_QUEUE_SIZE);

                      //    CK("C: gpio_defaults_init()");
                      //    gpio_defaults_init();

                      //    CK("D: time sync (RTC)");
                      //    sync_time_from_rtc_on_boot();

                      //    // 1s yazılım saati tick’i (senin mevcut timer’ların)
                      //    APP_ERROR_CHECK(app_timer_create(&m_time_tick_timer,
                      //                                     APP_TIMER_MODE_REPEATED,
                      //                                     time_tick_handler));
                      //    APP_ERROR_CHECK(app_timer_start(m_time_tick_timer,
                      //                                    APP_TIMER_TICKS(1000), NULL));

                      //    // Plan step timer
                      //    APP_ERROR_CHECK(app_timer_create(&m_plan_step_timer,
                      //                                     APP_TIMER_MODE_SINGLE_SHOT,
                      //                                     plan_timer_mux));

                      //    CK("E: pwr_mgmt_init()");
                      //    power_management_init();

                      //    CK("F: boot_led_sequence()");
                      //    boot_led_sequence();

                      //    CK("G0: gatt_init()");
                      //    gatt_init();
                      //    CK("G1: gap_params_init()");
                      //    gap_params_init();
                      //    CK("G2: services_init()");
                      //    services_init();
                      //    CK("G3: advertising_init()");
                      //    advertising_init();

                      //    CK("HFL: hfclk_selftest(void)");
                      //    hfclk_selftest();

                      //    conn_params_init(); // kullanıyorsan

                      //    // --- GÜVENLİ SIRA ---
                      //    // 1) Önce reklamı aç
                      //    CK("ADV: start");
                      //    advertising_start();

                      //    // 2) Kısa gecikme (PPK/telefon görsün)
                      //    SEGGER_RTT_WriteString(0, "DELAY: 2500 ms before FDS ops\r\n");
                      //    nrf_delay_ms(2500);

                      //    // 3) Reklamı nazikçe durdur, FDS’yi başlat, INIT olayı gelene dek bekle, sonra reklamı geri başlat
                      //   // (void) sd_ble_gap_adv_stop(m_advertising.adv_handle);

                      //    ret_code_t er = fds_register(fds_evt_handler);
                      //    SEGGER_RTT_printf(0, "FDS: register er=0x%08x\r\n", er);
                      //    APP_ERROR_CHECK(er);

                      //    er = fds_init();
                      //    SEGGER_RTT_printf(0, "FDS: init er=0x%08x\r\n", er);
                      //    APP_ERROR_CHECK(er);

                      //    while (!g_fds_ready) { __WFE(); __SEV(); __WFE(); }

                      //    advertising_start();
                      //    SEGGER_RTT_WriteString(0, "ADV: restarted after FDS init\r\n");

                      //    // NOT: Bu aşamada GC/okuma/yazma yapma. Sadece init + (istersen) fds_stat() logla.
                      //    // Daha ağır FDS işleri için bağlantı kurulduğunda veya reklam kapalı iken pencere aç.

                      //    CK("I: loop");
                      //    for (;;)
                      //    {
                      //        // Log boşsa düşük güçte kal
                      //        if (NRF_LOG_PROCESS() == false)
                      //            nrf_pwr_mgmt_run();   // sd_app_evt_wait ile düşük akım
                      //    }
                      //}