#pragma once
/*
 * LeylaAIO Boards – Tek Dosyada Açıklama ve Varyant Seçimi
 *
 * Amaç:
 *  - Bütün pinlerin NE işe yaradığını burada anlat.
 *  - Kart varyantlarını (REV, üretim tarihi vs.) derleme bayrağı ile seç.
 *  - main.c sadece bunu include etsin; bu dosya da pinmap’i içeri alsın.
 *
 * Varyant seçimi:
 *   - Derleyicide birini tanımla:  LEYLA_AIO_V1  veya  DK_PCA10056
 *   - Tanımlanmadıysa #error ile durdur.
 */

#if !defined(LEYLA_AIO_V1) && !defined(DK_PCA10056)
# error "Lütfen bir board seçin: -DLEYLA_AIO_V1 veya -DDK_PCA10056"
#endif

/* Ortak: pin tanımları buradan gelsin */
#include "LeylaAIO_pinmap.h"

/* --- Dokümantasyon Bölümü (örn.) ---
   I2C (TWIM0):
     - SCL = PIN_SCL
     - SDA = PIN_SDA
   Güç/Hatları:
     - DCDC Enable = PIN_DCDC_EN  (1=aktif)
     - VZONE1..6   = PIN_VZONE*
   Sensörler:
     - RTC_INT     = PIN_RTC_INT (falling edge)
     - FLOW        = PIN_FLOW (pulldown)
   ----------------------------------- */

/* Güvenlik: kritik makrolar tanımlı mı? */
#ifndef PIN_SCL
# error "PIN_SCL tanımlı değil (LeylaAIO_pinmap.h'i kontrol et)"
#endif
#ifndef PIN_SDA
# error "PIN_SDA tanımlı değil (LeylaAIO_pinmap.h'i kontrol et)"
#endif
#ifndef PIN_BOOST_EN
# error "PIN_BOOST_EN tanımlı değil"
#endif
#ifndef PIN_RTC_INT
# error "PIN_RTC_INT tanımlı değil"
#endif
#ifndef PIN_FLOW
# error "PIN_FLOW tanımlı değil"
#endif

/* Küçük yardımcılar (istersen): */
static inline void leylaboard_dcdc_set(bool en)
{
    nrf_gpio_cfg_output(PIN_BOOST_EN);
    nrf_gpio_pin_write(PIN_BOOST_EN, en ? 1 : 0);
}

static inline void leylaboard_i2c_bus_release_inputs(void)
{
    NRF_P0->PIN_CNF[PIN_SCL] =
        (GPIO_PIN_CNF_DIR_Input        << GPIO_PIN_CNF_DIR_Pos)   |
        (GPIO_PIN_CNF_INPUT_Disconnect << GPIO_PIN_CNF_INPUT_Pos) |
        (GPIO_PIN_CNF_PULL_Disabled    << GPIO_PIN_CNF_PULL_Pos)  |
        (GPIO_PIN_CNF_DRIVE_S0S1       << GPIO_PIN_CNF_DRIVE_Pos) |
        (GPIO_PIN_CNF_SENSE_Disabled   << GPIO_PIN_CNF_SENSE_Pos);
    NRF_P0->PIN_CNF[PIN_SDA] = NRF_P0->PIN_CNF[PIN_SCL];
}
 /**
 * Function for turning on an LED.
 *
 * @param led_idx LED index (starting from 0), as defined in the board-specific header.
 */
void bsp_board_led_on(uint32_t led_idx);

/**
 * Function for turning off an LED.
 *
 * @param led_idx LED index (starting from 0), as defined in the board-specific header.
 */
void bsp_board_led_off(uint32_t led_idx);
