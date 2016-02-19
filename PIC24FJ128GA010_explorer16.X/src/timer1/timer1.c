#include <stdint.h>
#include <xc.h>
#include <timer.h>
#include <stdbool.h>

#include "timer1.h"
#include "led.h"

//#define     DYNAMIC_PRIORITY_TIMER1

volatile uint8_t priority;

/*!
 * @name  timer1_init().
 * @brief Initialize TIMER1 to interrupt when it match the period.
 * @param None.
 */
void timer1_init( uint16_t period )
{
    priority = 7;

    IEC0bits.T1IE = 0;      /* Disable the Timer1 interrupt */
    T1CONbits.TON = 0;      /* Disable timer1 */
    IFS0bits.T1IF = 0;      /* Clear Timer interrupt flag */

    // Reset Timer1 to 0x0000
    TMR1  = 0;

    // assigning Period to Timer period register
    PR1   = period;

    //  Input Clock Prescale
    T1CONbits.TCKPS = 0b00;     

    // configure interrupt
    IFS0bits.T1IF = 0;                   /* clear IF bit */
    IPC0bits.T1IP = priority;              /* assigning Interrupt Priority */
    IEC0bits.T1IE = 1;                  /* Interrupt Enable /Disable */

    // turn-on timer
    T1CONbits.TON = 1;
}


static bool direction = true;
static bool AB_line = true;
#define QUAD_LINE_A   LED5
#define QUAD_LINE_B   LED6
void  quadrature_encoder_sim(void)
{
    // forward
    if( AB_line )
    {
        QUAD_LINE_A ^= 1;
    }
    else
    {
        QUAD_LINE_B ^= 1;
    }
    AB_line ^= 1;
}


/*!
 * @name  timer1_tick().
 * @brief A user configurable function called in TIMER1 ISR.
 * @param None.
 */
void timer1_tick(void)
{
#ifdef  DYNAMIC_PRIORITY_TIMER1
    priority--;
#endif
    
    LED10 ^= 1;                 // for debugging only
    TMR1  = 0;
    quadrature_encoder_sim();
    IFS0bits.T1IF = 0;                   /* clear IF bit */
    IPC0bits.T1IP = priority;              /* assigning Interrupt Priority */
}
/* end of file */
