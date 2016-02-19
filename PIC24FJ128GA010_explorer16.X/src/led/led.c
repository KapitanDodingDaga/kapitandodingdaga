#include <stdint.h>
#include <xc.h>
#include <ports.h>
#include "led.h"

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
/* end of file */
