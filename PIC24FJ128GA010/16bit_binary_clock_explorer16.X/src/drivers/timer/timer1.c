#include <stdint.h>
#include <xc.h>
#include <timer.h>
#include <stdbool.h>

#include "timer1.h"
#include "lcd_calendar.h"
#include "calendar.h"
#include "led.h"
#include "temp_sense.h"
#include "huvent_fsm.h"

#define     TICK_PRIORITY           (3)
#define     TICK_PERIOD_250MS       (0x3C97)

/*!
 * @name  timer1_init().
 * @brief Initialize TIMER1 to interrupt when it match the period.
 * @param None.
 */
void timer1_init( void )
{
    IEC0bits.T1IE = 0;      /* Disable the Timer1 interrupt */
    T1CONbits.TON = 0;      /* Disable timer1 */
    IFS0bits.T1IF = 0;      /* Clear Timer interrupt flag */

    // Reset Timer1 to 0x0000
    TMR1  = 0;

    // assigning Period to Timer period register
    PR1   = TICK_PERIOD_250MS;

    //  Input Clock Prescale
    T1CONbits.TCKPS = 0b10;

    // configure interrupt
    IFS0bits.T1IF = 0;                   /* clear IF bit */
    IPC0bits.T1IP = TICK_PRIORITY;              /* assigning Interrupt Priority */
    IEC0bits.T1IE = 1;                  /* Interrupt Enable /Disable */

    // turn-on timer
    T1CONbits.TON = 1;
}

/*!
 * @name  timer1_off().
 * @brief None.
 * @param None.
 */
void timer1_off( void )
{
    // turn-off timer
    T1CONbits.TON = 0;
}

/*!
 * @name  timer1_on().
 * @brief None.
 * @param None.
 */
void timer1_on( void )
{
    // turn-on timer
    T1CONbits.TON = 1;
}

/*!
 * @name  timer1_tick().
 * @brief A user configurable function called in TIMER1 ISR.
 * @param None.
 */
static uint16_t lcd_tick_count = 0;
static uint16_t led_tick_count = 0;
static bool min_hr_flag = true;
void timer1_tick(void)
{
    huvent_state_t state = HUVENT_STATE_START_UP;
    TMR1  = 0;
    IFS0bits.T1IF = 0;                  
    state = huvent_fsm_getstate();
    switch (state)
    {
        case HUVENT_STATE_IDLE:
            // update binary clock display every 5 ticks
            led_tick_count++;
            if( led_tick_count >= 10 )
            {
                // toggle flag
                min_hr_flag ^= 1;
                if( min_hr_flag )
                {
                    led_block_hr(g_calendar_obj.hour);
                }
                else
                {
                    led_block_minutes(g_calendar_obj.min);
                }
                led_tick_count = 0;
            }
            break;

        case HUVENT_STATE_ALARMING:
            led_block_alarm();
            break;

        case HUVENT_STATE_START_UP:
        case HUVENT_STATE_CMD_EXECUTING:
        case HUVENT_STATE_ERROR:
        default:

        break;
    }

    // update calendar display every 5 ticks
    lcd_tick_count++;
    if( lcd_tick_count >= 5 )
    {
        calendar_tick();
        g_calendar_obj.temperature = temp_sense();
        lcd_tick_count = 0;
    }
}
/* end of file */
