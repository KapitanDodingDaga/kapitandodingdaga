/******************************************************************************
Software License Agreement

The software supplied herewith by Microchip Technology Incorporated
(the "Company") for its PIC(R) Microcontroller is intended and
supplied to you, the Company's customer, for use solely and
exclusively on Microchip PICmicro Microcontroller products. The
software is owned by the Company and/or its supplier, and is
protected under applicable copyright laws. All rights are reserved.
Any use in violation of the foregoing restrictions may subject the
user to criminal sanctions under applicable laws, as well as to
civil liability for the breach of the terms and conditions of this
license.

THIS SOFTWARE IS PROVIDED IN AN "AS IS" CONDITION. NO WARRANTIES,
WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED
TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. THE COMPANY SHALL NOT,
IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL OR
CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
*******************************************************************************/
#include <stdint.h>
#include <stdbool.h>
#include <xc.h>

#include "isr.h"
#include "led.h"
#include "sio.h"
#include "io_printf.h"
#include "button.h"
#include "timer1.h"
#include "fifo_static.h"
#include "huvent_fsm.h"
#include "huvent_que.h"

// Notes:
//  1.) ISR routing names is listed in
//         C:\Program Files (x86)\Microchip\xc16\v1.21\docs\IntVectors


/*!
 * @name  _T1Interrupt().
 * @brief ISR for TIMER1.
 * @param None.
 */
void __attribute__ ((interrupt, no_auto_psv)) _T1Interrupt (void)
{
    timer1_tick();
}


/*!
 * @name  _SI2C1Interrupt().
 * @brief Slave I2C? interrupt 1
 * @param None.
 */
void __attribute__ ((interrupt, no_auto_psv)) _SI2C1Interrupt (void)
{
//    i2c_slave_isr();
}



/*!
 * @name  _SI2C1Interrupt().
 * @brief Master I2C interrupt 1
 * @param None.
 */
void __attribute__ ((interrupt, no_auto_psv)) _MI2C1Interrupt (void)
{

}


/*!
 * @name  _SPI2ErrInterrupt().
 * @brief SPI2 error interrupt.
 * @param None.
 */
void __attribute__ ((interrupt, no_auto_psv)) _SPI2ErrInterrupt (void)
{
    IFS2bits.SPF2IF = 0;
    while(1);
}


/*!
 * @name  _SPI2Interrupt().
 * @brief SPI2 transfer completed interrupt.
 * @param None.
 */
void __attribute__ ((interrupt, no_auto_psv)) _SPI2Interrupt (void)
{
    IFS2bits.SPI2IF = 0;
}


/*!
 * @name  __U1TXInterrupt().
 * @brief UART1TX Uart 1 Transmitter.
 * @param None.
 */
void __attribute__ ((interrupt, no_auto_psv)) _U2TXInterrupt (void)
{
    sio_tx_isr();
}


/*!
 * @name  _U1RXInterrupt().
 * @brief UART1RX Uart 1 Receiver
 * @param None.
 */
void __attribute__ ((interrupt, no_auto_psv)) _U2RXInterrupt (void)
{
    sio_rx_isr();
}


/*!
 * @name  _U1RXInterrupt().
 * @brief UART1RX Uart 1 Receiver
 * @param None.
 */
void __attribute__ ((interrupt, no_auto_psv)) _ADC1Interrupt (void)
{
    /* reset ADC interrupt flag */
    IFS0bits.AD1IF = 0 ;
}





/*!
 * @name  _U2ErrInterrupt().
 * @brief UART2 error interrupt.
 * @param None.
 */
void __attribute__ ((interrupt, no_auto_psv)) _U2ErrInterrupt (void)
{
    sio_error_isr();
}



void __attribute__((interrupt,no_auto_psv)) _IC2Interrupt(void)
{
//    capture_isr();
}




/*!
 * @name  _OscillatorFail().
 * @brief Oscillator fail trap.
 * @param None.
 */
void __attribute__((interrupt,no_auto_psv)) _OscillatorFail(void)
{
    io_printf("\n\r Oscillator fail trap.");
    INTCON1bits.OSCFAIL = 0;
    while(1);
}

/*!
 * @name  _AddressError().
 * @brief Address error trap
 * @param None.
 */
void __attribute__((interrupt,no_auto_psv)) _AddressError(void)
{
    io_printf("\n\r Address error trap");
    INTCON1bits.ADDRERR = 0;
    while(1);
}


/*!
 * @name  _StackError().
 * @brief Stack error trap.
 * @param None.
 */
void __attribute__((interrupt,no_auto_psv)) _StackError(void)
{
    io_printf("\n\r Stack error trap.");
    INTCON1bits.STKERR = 0;
    while(1);
}


/*!
 * @name  _MathError().
 * @brief Math error trap.
 * @param None.
 */
void __attribute__((interrupt,no_auto_psv)) _MathError(void)
{
    io_printf("\n\r Math error trap.");
    INTCON1bits.MATHERR = 0;
    while(1);
}



/*!
 * @name  _CNInterrupt().
 * @brief CN Input change interrupt.
 * @param None.
 */
void __attribute__((interrupt,no_auto_psv)) _CNInterrupt(void)
{
    button_isr();
}


/*!
 * @name  _RTCCInterrupt().
 * @brief CN Input change interrupt.
 * @param None.
 */
void __attribute__((interrupt,no_auto_psv)) _RTCCInterrupt(void)
{
//    IFS3bits.RTCIF = 0;
//    LED3 ^= 1;

    IFS3bits.RTCIF = 0;
    if( HUVENT_RESP_OK != huvent_que_post( HUVENT_ALARM_START ) )
    {
        io_printf("\n\r Error during huvent que post..");
        while(1);
    }
}
/* end of file */