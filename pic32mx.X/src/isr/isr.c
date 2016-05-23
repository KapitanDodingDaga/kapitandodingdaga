/********************************************************************
 * Dependencies:    See INCLUDES section below
 * Processor:       PICxxxx
 * Compiler:        XCxx
 * Board:           ---
 * Author:          Sherwin Tiongson
 * Note:            This code is written for illustration / sample code
 *                  only and not designed to be production worthy. Modules
 *                  are not tested (not unit/target tested). 
 *
 * Company:         Microchip Technology, Inc.
 *
 * Software License Agreement:
 *
 * The software supplied herewith by Microchip Technology Incorporated
 * (the "Company") for its PICmicro? Microcontroller is intended and
 * supplied to you, the Company's customer, for use solely and
 * exclusively on Microchip PICmicro Microcontroller products. The
 * software is owned by the Company and/or its supplier, and is
 * protected under applicable copyright laws. All rights are reserved.
 * Any use in violation of the foregoing restrictions may subject the
 * user to criminal sanctions under applicable laws, as well as to
 * civil liability for the breach of the terms and conditions of this
 * license.
 *
 * THIS SOFTWARE IS PROVIDED IN AN "AS IS" CONDITION. NO WARRANTIES,
 * WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED
 * TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 * PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. THE COMPANY SHALL NOT,
 * IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL OR
 * CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *********************************************************************
 ********************************************************************/
#include <stdint.h>
#include <stdbool.h>
#include <xc.h>

#include "plib_legacy.h"
#include "timer1.h"
#include "sio.h"
#include "spi_slave.h"

/*!
 * @name  isr_change_notice().
 * @brief None.
 * @param None.
 */
void __ISR(_CHANGE_NOTICE_VECTOR, ipl1) isr_change_notice(void)
{
    mCNClearIntFlag();
}



void __ISR(_TIMER_1_VECTOR, ipl2) isr_tmr1(void)
{
    timer1_isr();
}


void __ISR(_UART_2A_VECTOR, ipl4) isr_sio(void)
{
//    sio_error_isr();
    sio_rx_isr();
//    sio_tx_isr();
}

//void __ISR(_I2C_2_VECTOR, ipl4) isr_i2c2(void)
//{
//    while(1);
//}


void __ISR(_SPI_1_VECTOR, ipl4) isr_spi1_slave(void)
{
    spi_slave_isr();
}

/* end of file */
