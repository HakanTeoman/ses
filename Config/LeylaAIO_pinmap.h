#ifndef LEYLAAIO_PINMAP_H
#define LEYLAAIO_PINMAP_H

// Auto-generated from pinset.xlsx
// Format: #define PIN_NAME  NRF_GPIO_PIN_MAP(port, pin)   // TIPI: <...> | IDLE: <...> | ACIKLAMA: <...>
#pragma once

#include <stdint.h>
#include "nrf_gpio.h"

#ifndef PIN_XL1
#define PIN_XL1  NRF_GPIO_PIN_MAP(0, 0)   // TIPI: nan | IDLE: nan | ACIKLAMA: Kristal 32.867
#endif

#ifndef PIN_XL2
#define PIN_XL2  NRF_GPIO_PIN_MAP(0, 1)   // TIPI: nan | IDLE: nan | ACIKLAMA: Kristal 32.867
#endif

#ifndef PIN_SCL
#define PIN_SCL  NRF_GPIO_PIN_MAP(1, 0)   // TIPI: Clock | IDLE: Clock | ACIKLAMA: i2c Clock hattı
#endif

#ifndef PIN_SDA
#define PIN_SDA  NRF_GPIO_PIN_MAP(0, 9)   // TIPI: Data | IDLE: Data | ACIKLAMA: i2c Clock hattı
#endif

#ifndef PIN_RTC_INT
#define PIN_RTC_INT  NRF_GPIO_PIN_MAP(0, 10)   // TIPI: Digital | IDLE: High | ACIKLAMA: RTC PCF85063ATL/1,118 - Interrupt pini
#endif

#ifndef PIN_BATT_GATE
#define PIN_BATT_GATE  NRF_GPIO_PIN_MAP(0, 2)   // TIPI: Digital | IDLE: Low | ACIKLAMA: Pil Ölçümü için mosfet gate
#endif

#ifndef PIN_ADC_BATT
#define PIN_ADC_BATT  NRF_GPIO_PIN_MAP(0, 3)   // TIPI: ADC | IDLE: HighZ | ACIKLAMA: Batarya Ölçüm pini
#endif

#ifndef PIN_ADC_SONT
#define PIN_ADC_SONT  NRF_GPIO_PIN_MAP(0, 4)   // TIPI: ADC | IDLE: HighZ | ACIKLAMA: Tüketim üzerinden sürücü çıkışlarını değerlendirip/ bağlı/ arızalı sistemi oluşturacağız
#endif

#ifndef PIN_ADC_BOOST
#define PIN_ADC_BOOST  NRF_GPIO_PIN_MAP(0, 5)   // TIPI: ADC | IDLE: HighZ | ACIKLAMA: Cbank Kapasitorlerinin Doluluk Kontrolü İçin
#endif

#ifndef PIN_MCU_CBANK_EN
#define PIN_MCU_CBANK_EN  NRF_GPIO_PIN_MAP(0, 7)   // TIPI: Digital | IDLE: Low | ACIKLAMA: Cbank Kapasitorlerini Kademeli Doldurmak İçin
#endif

#ifndef PIN_BTN_3
#define PIN_BTN_3  NRF_GPIO_PIN_MAP(0, 11)   // TIPI: Digital | IDLE: HighZ | ACIKLAMA: Bağlı Değil - İhtiyaç halinde pad bırakıldı
#endif

#ifndef PIN_BTN_2
#define PIN_BTN_2  NRF_GPIO_PIN_MAP(0, 12)   // TIPI: Digital | IDLE: HighZ | ACIKLAMA: Bağlı Değil - İhtiyaç halinde pad bırakıldı
#endif

#ifndef PIN_BTN_1
#define PIN_BTN_1  NRF_GPIO_PIN_MAP(0, 13)   // TIPI: Digital | IDLE: HighZ | ACIKLAMA: Bağlı Değil - İhtiyaç halinde pad bırakıldı
#endif

#ifndef PIN_VZONE6
#define PIN_VZONE6  NRF_GPIO_PIN_MAP(0, 14)   // TIPI: Digital | IDLE: Low | ACIKLAMA: 6 Numaralı Driver Sleep Pini
#endif

#ifndef PIN_FLOW
#define PIN_FLOW  NRF_GPIO_PIN_MAP(0, 15)   // TIPI: Digital | IDLE: Low | ACIKLAMA: MCP6541T-I/OT ile logic kontrol
#endif

#ifndef PIN_VZONE5
#define PIN_VZONE5  NRF_GPIO_PIN_MAP(0, 17)   // TIPI: Digital | IDLE: Low | ACIKLAMA: 5 Numaralı Driver Sleep Pini
#endif

#ifndef PIN_LED
#define PIN_LED  NRF_GPIO_PIN_MAP(0, 18)   // TIPI: Digital | IDLE: Low | ACIKLAMA: LED - anot i/o  - katot gnd bağlı
#endif

#ifndef PIN_VZONE4
#define PIN_VZONE4  NRF_GPIO_PIN_MAP(0, 19)   // TIPI: Digital | IDLE: Low | ACIKLAMA: 4 Numaralı Driver Sleep Pini
#endif

#ifndef PIN_VZONE3
#define PIN_VZONE3  NRF_GPIO_PIN_MAP(0, 20)   // TIPI: Digital | IDLE: Low | ACIKLAMA: 3 Numaralı Driver Sleep Pini
#endif

#ifndef PIN_VZONE2
#define PIN_VZONE2  NRF_GPIO_PIN_MAP(0, 21)   // TIPI: Digital | IDLE: Low | ACIKLAMA: 2 Numaralı Driver Sleep Pini
#endif

#ifndef PIN_VZONE1
#define PIN_VZONE1  NRF_GPIO_PIN_MAP(0, 22)   // TIPI: Digital | IDLE: Low | ACIKLAMA: 1 Numaralı Driver Sleep Pini
#endif

#ifndef PIN_G_IN1
#define PIN_G_IN1  NRF_GPIO_PIN_MAP(0, 23)   // TIPI: Digital | IDLE: Low | ACIKLAMA: bütün sürücüler In1 pini
#endif

#ifndef PIN_G_IN2
#define PIN_G_IN2  NRF_GPIO_PIN_MAP(0, 24)   // TIPI: Digital | IDLE: Low | ACIKLAMA: bütün sürücüler In2 pini
#endif

#ifndef PIN_BOOST_EN
#define PIN_BOOST_EN  NRF_GPIO_PIN_MAP(0, 28)   // TIPI: Digital | IDLE: Low | ACIKLAMA: Booster çipini sürmek için
#endif

#ifndef PIN_TEST1
#define PIN_TEST1  NRF_GPIO_PIN_MAP(0, 30)   // TIPI: Digital | IDLE: Low | ACIKLAMA: İhtiyaç olursa boş i/o pad bırakıldı
#endif

#ifndef PIN_TEST2
#define PIN_TEST2  NRF_GPIO_PIN_MAP(0, 29)   // TIPI: Digital | IDLE: Low | ACIKLAMA: İhtiyaç olursa boş i/o pad bırakıldı
#endif

#ifndef PIN_TEST3
#define PIN_TEST3  NRF_GPIO_PIN_MAP(0, 8)   // TIPI: Digital | IDLE: Low | ACIKLAMA: İhtiyaç olursa boş i/o pad bırakıldı
#endif

#ifndef PIN_BAGLI_DEGIL
#define PIN_BAGLI_DEGIL  NRF_GPIO_PIN_MAP(0, 31)   // TIPI: Digital | IDLE: Low | ACIKLAMA: Kullanılamaz
#endif

#ifndef PIN_BAGLI_DEGIL_1
#define PIN_BAGLI_DEGIL_1  NRF_GPIO_PIN_MAP(1, 8)   // TIPI: Digital | IDLE: Low | ACIKLAMA: Kullanılamaz
#endif

#ifndef PIN_BAGLI_DEGIL_2
#define PIN_BAGLI_DEGIL_2  NRF_GPIO_PIN_MAP(1, 9)   // TIPI: Digital | IDLE: Low | ACIKLAMA: Kullanılamaz
#endif

// --- END: Excel-derived aliases ---


// Centralized pin registry for the board.
// Usage:
//   #include "LeylaAIO_pinmap.h"
//   nrfx_uarte_config_t cfg = {
//       .pseltxd = PINMAP.UARTE0.tx,
//       .pselrxd = PINMAP.UARTE0.rx,
//       .pselcts = PINMAP.UARTE0.cts,
//       .pselrts = PINMAP.UARTE0.rts,
//       .hwfc    = PINMAP.UARTE0.hwfc,
//       .interrupt_priority = APP_IRQ_PRIORITY_LOWEST
//   };
//
// Rationale: Keep LeylaAIO_boards.h for BSP/SDK compatibility (LEDS_LIST, BUTTONS_LIST, etc.).
//            Keep this pinmap as a single "one stop" lookup to avoid hunting in main.c.

#include "LeylaAIO_boards.h"
#include <stdint.h>
#include <stdbool.h>

// ===== Types =====
typedef struct {
    uint32_t rx, tx, cts, rts;
    bool     hwfc;
} uarte_pins_t;

typedef struct {
    uint32_t scl, sda;
} twim_pins_t;

typedef struct {
    uint32_t sck, mosi, miso;
    // Support up to 4 CS lines (expand if needed)
    uint32_t cs[4];
    uint8_t  cs_count;
} spim_pins_t;

typedef struct {
    // Optional
    uint32_t sck, csn, io0, io1, io2, io3;
    bool     present;
} qspi_pins_t;

typedef struct {
    // Optional
    uint32_t nfc1, nfc2;
    bool     present;
} nfc_pins_t;

typedef struct {
    // LED array (from LEDS_LIST)
    const uint32_t *led_list;
    uint8_t         led_count;
    uint8_t         leds_active_state;
    // Buttons (from BUTTONS_LIST)
    const uint32_t *button_list;
    uint8_t         button_count;
} gpio_arrays_t;

typedef struct {
    // Peripherals
    uarte_pins_t UARTE0;
    twim_pins_t  TWIM0;
    spim_pins_t  SPIM0;
    qspi_pins_t  QSPI;
    nfc_pins_t   NFC;
    gpio_arrays_t GPIOS;
} pinmap_t;

// ===== Weak "LEDS_LIST" & "BUTTONS_LIST" helpers =====
// We build LEDS_LIST and BUTTONS_LIST arrays if macros exist.
#define LEDS_NUMBER 0
#ifdef LEDS_NUMBER
  #if (LEDS_NUMBER > 0)
    static const uint32_t __pinmap_leds[] = LEDS_LIST;
  #else
    static const uint32_t __pinmap_leds[] = { };
  #endif
#else
  static const uint32_t __pinmap_leds[] = { };
#endif

#ifdef BUTTONS_NUMBER
  #if (BUTTONS_NUMBER > 0)
    static const uint32_t __pinmap_buttons[] = BUTTONS_LIST;
  #else
    static const uint32_t __pinmap_buttons[] = { };
  #endif
#else
  static const uint32_t __pinmap_buttons[] = { };
#endif

// ===== Build UARTE0 pins from macros if present =====
#ifndef RX_PIN_NUMBER
  #define RX_PIN_NUMBER  (0xFFFFFFFFu)
#endif
#ifndef TX_PIN_NUMBER
  #define TX_PIN_NUMBER  (0xFFFFFFFFu)
#endif
#ifndef CTS_PIN_NUMBER
  #define CTS_PIN_NUMBER (0xFFFFFFFFu)
#endif
#ifndef RTS_PIN_NUMBER
  #define RTS_PIN_NUMBER (0xFFFFFFFFu)
#endif
#ifndef HWFC
  #define HWFC false
#endif

// ===== Build TWIM0 pins from macros if present =====
#ifndef TWI_SCL_PIN
  #define TWI_SCL_PIN (0xFFFFFFFFu)
#endif
#ifndef TWI_SDA_PIN
  #define TWI_SDA_PIN (0xFFFFFFFFu)
#endif

// ===== Build SPIM0 pins from macros if present =====
#ifndef SPI_SCK_PIN
  #define SPI_SCK_PIN (0xFFFFFFFFu)
#endif
#ifndef SPI_MOSI_PIN
  #define SPI_MOSI_PIN (0xFFFFFFFFu)
#endif
#ifndef SPI_MISO_PIN
  #define SPI_MISO_PIN (0xFFFFFFFFu)
#endif

// Optional multiple CS lines
#ifndef SPI_CS0_PIN
  #define SPI_CS0_PIN (0xFFFFFFFFu)
#endif
#ifndef SPI_CS1_PIN
  #define SPI_CS1_PIN (0xFFFFFFFFu)
#endif
#ifndef SPI_CS2_PIN
  #define SPI_CS2_PIN (0xFFFFFFFFu)
#endif
#ifndef SPI_CS3_PIN
  #define SPI_CS3_PIN (0xFFFFFFFFu)
#endif

// ===== Optional QSPI from macros if present =====
#ifndef BSP_QSPI_SCK_PIN
  #define BSP_QSPI_SCK_PIN (0xFFFFFFFFu)
#endif
#ifndef BSP_QSPI_CSN_PIN
  #define BSP_QSPI_CSN_PIN (0xFFFFFFFFu)
#endif
#ifndef BSP_QSPI_IO0_PIN
  #define BSP_QSPI_IO0_PIN (0xFFFFFFFFu)
#endif
#ifndef BSP_QSPI_IO1_PIN
  #define BSP_QSPI_IO1_PIN (0xFFFFFFFFu)
#endif
#ifndef BSP_QSPI_IO2_PIN
  #define BSP_QSPI_IO2_PIN (0xFFFFFFFFu)
#endif
#ifndef BSP_QSPI_IO3_PIN
  #define BSP_QSPI_IO3_PIN (0xFFFFFFFFu)
#endif

// ===== Optional NFC from macros if present =====
#ifndef NFC1_PIN
  #define NFC1_PIN (0xFFFFFFFFu)
#endif
#ifndef NFC2_PIN
  #define NFC2_PIN (0xFFFFFFFFu)
#endif

// ===== Singleton PINMAP =====
static const pinmap_t PINMAP = {
    .UARTE0 = {
        .rx   = RX_PIN_NUMBER,
        .tx   = TX_PIN_NUMBER,
        .cts  = CTS_PIN_NUMBER,
        .rts  = RTS_PIN_NUMBER,
        .hwfc = HWFC
    },
    .TWIM0 = {
        .scl  = TWI_SCL_PIN,
        .sda  = TWI_SDA_PIN
    },
    .SPIM0 = {
        .sck  = SPI_SCK_PIN,
        .mosi = SPI_MOSI_PIN,
        .miso = SPI_MISO_PIN,
        .cs   = { SPI_CS0_PIN, SPI_CS1_PIN, SPI_CS2_PIN, SPI_CS3_PIN },
        .cs_count =
            ((SPI_CS0_PIN != 0xFFFFFFFFu) ? 1 : 0) +
            ((SPI_CS1_PIN != 0xFFFFFFFFu) ? 1 : 0) +
            ((SPI_CS2_PIN != 0xFFFFFFFFu) ? 1 : 0) +
            ((SPI_CS3_PIN != 0xFFFFFFFFu) ? 1 : 0)
    },
    .QSPI = {
        .sck     = BSP_QSPI_SCK_PIN,
        .csn     = BSP_QSPI_CSN_PIN,
        .io0     = BSP_QSPI_IO0_PIN,
        .io1     = BSP_QSPI_IO1_PIN,
        .io2     = BSP_QSPI_IO2_PIN,
        .io3     = BSP_QSPI_IO3_PIN,
        .present = (BSP_QSPI_CSN_PIN != 0xFFFFFFFFu)
    },
    .NFC = {
        .nfc1    = NFC1_PIN,
        .nfc2    = NFC2_PIN,
        .present = (NFC1_PIN != 0xFFFFFFFFu || NFC2_PIN != 0xFFFFFFFFu)
    },
    .GPIOS = {
        .led_list         = __pinmap_leds,
        .led_count        = sizeof(__pinmap_leds)/sizeof(__pinmap_leds[0]),
        #ifdef LEDS_ACTIVE_STATE
        .leds_active_state = LEDS_ACTIVE_STATE,
        #else
        .leds_active_state = 0,
        #endif
        .button_list      = __pinmap_buttons,
        .button_count     = sizeof(__pinmap_buttons)/sizeof(__pinmap_buttons[0])
    }
};

// ===== Friendly names (optional) =====
#ifdef LED_1
  #define PIN_LED1 LED_1
#endif
#ifdef LED_2
  #define PIN_LED2 LED_2
#endif
#ifdef BUTTON_1
  #define PIN_BUTTON1 BUTTON_1
#endif

#endif /* LEYLAAIO_PINMAP_H */