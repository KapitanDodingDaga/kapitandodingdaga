#include <stdint.h>
#include <stdbool.h>
#include <xc.h>
#include <string.h>
#include <ports.h>
#include "led.h"
#include "utils.h"

// bit field for BCD hour
typedef struct hour_bitfield_s
{
   uint8_t    ones : 4;
   uint8_t    tens : 2;
   uint8_t    d9 : 1;
   uint8_t    d10 : 1;
} hour_bitfield_t;

// bit field for BCD minutes
typedef struct minutes_bitfield_s
{
   uint8_t    ones : 4;
   uint8_t    tens : 3;
   uint8_t    d10 : 1;
} minutes_bitfield_t;


/*!
 * @name  led_init().
 * @brief Initialize all PORTA as digital output to control the LEDs mounted in
 *          Explorer 16 Development board.
 * @param None.
 */
void led_init(void)
{

    mPORTAConfig(0x0000);
}

/*!
 * @name  led_echo().
 * @brief Sends whatever value you want to send to PORTA. PORTA is connected
 *          to LEDs in Explorer 16 development board.
 * @param None.
 */
void led_echo(uint16_t value )
{
    mPORTAWrite(value);
}

/*!
 * @name  led_block_hr().
 * @brief None.
 * @param None.
 */
void led_block_hr( uint8_t hr )
{
    uint8_t tens = 0;
    uint8_t ones = 0;
    uint16_t temp = 0;
    hour_bitfield_t hr_bcd;
    ones = hr % 10;
    tens = hr / 10;
    hr_bcd.ones = ones;
    hr_bcd.tens = tens;
    hr_bcd.d9 = 0;
    hr_bcd.d10 = 1;
    memmove(&temp, &hr_bcd, sizeof(hour_bitfield_t));
    led_echo( temp );
}

/*!
 * @name  led_block_minutes().
 * @brief None.
 * @param None.
 */
void led_block_minutes( uint8_t minutes )
{
    uint8_t tens = 0;
    uint8_t ones = 0;
    uint16_t temp = 0;
    minutes_bitfield_t minute_bcd;
    ones = minutes % 10;
    tens = minutes / 10;
    minute_bcd.ones = ones;
    minute_bcd.tens = tens;
    minute_bcd.d10 = 0;
    memmove(&temp, &minute_bcd, sizeof(minutes_bitfield_t));
    led_echo( temp );
}


/*!
 * @name  led_block_alarm().
 * @brief None.
 * @param None.
 */
void led_block_alarm( void )
{
    static bool flag;
    flag ^= 1;
    if(flag)
    {
        led_echo( 0xFF );
    }
    else
    {
        led_echo( 0 );
    }  
}
/* end of file */
