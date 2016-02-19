/********************************************************************
 * Dependencies:    See INCLUDES section below
 * Processor:       PICxxxx
 * Compiler:        XCxx
 * Board:           ---
 * Author:          Sherwin Tiongson
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
#include "button.h"
#include "io_printf.h"
#include "huvent_fsm.h"
#include "huvent_que.h"

/*!
 * @name  button_init().
 * @brief None.
 * @param None.
 */
void button_init(void)
{
    // for RD6 - change notification
    TRISDbits.TRISD6 = 1;
    CNEN1bits.CN15IE = 1;

    // for RD13 - change notification
    TRISDbits.TRISD13 = 1;
    CNEN2bits.CN19IE = 1;

    // enable change notification interrupt
    IEC1bits.CNIE = 1;
}

/*!
 * @name  button_isr().
 * @brief None.
 * @param None.
 */
static uint16_t button_cnt = 0;
void button_isr(void)
{
    huvent_resp_t resp = HUVENT_RESP_OK;
    IFS1bits.CNIF = 0;
    button_cnt++;

    if(button_cnt == 2)
    {
        resp = huvent_que_post( HUVENT_BUTTON_PRESS_S3 );
        button_cnt = 0;
    }
}
/* end of file */
