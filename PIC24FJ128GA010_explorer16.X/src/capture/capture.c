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

#include "led.h"

#define USE_AND_OR /* To enable AND_OR mask setting */
#include<inCap.h>


volatile uint16_t ic_isr_counter = 0;
volatile uint32_t ic_isr_temp = 0;


/*!
 * @name  capture_init().
 * @brief None.
 * @param None.
 */
void capture_init(void)
{
   //  we will used pin RD9.
   // input capture 2(IC2) is connected to RD9
    
    unsigned int config = 0;

   // Pin settings
   TRISDbits.TRISD9 = 1;

   // timer setting
   T2CON = 0x8000; /*Enable Timer1*/

   // configure interrupt
   ConfigIntCapture2(IC_INT_ON |IC_INT_PRIOR_4);

   // configure input capture pheripheral
   config = IC_IDLE_CON | IC_TIMER2_SRC | IC_INT_1CAPTURE | IC_EVERY_EDGE;
   OpenCapture2(config);
}


/*!
 * @name  capture_isr().
 * @brief None.
 * @param None.
 */
void capture_isr(void)
{
    LED5^= 1;
    ic_isr_counter++;
    ReadCapture2( (unsigned int*)&ic_isr_temp);
    IC2_Clear_Intr_Status_Bit;
}
/* end of file */
