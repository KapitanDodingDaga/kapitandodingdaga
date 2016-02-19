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
#define USE_AND_OR /* To enable AND_OR mask setting */
#include <stdint.h>
#include <stdbool.h>
#include <xc.h>
#include <rtcc.h>

#include "io_printf.h"

rtccTime RtccTime; /* Initialize time struct with required values */
rtccTime RtccTimeVal; /* Initialize time struct with required values */
BOOL update_time;
BOOL Time_Input_out_of_range;


/*!
 * @name  tertcc_testst().
 * @brief None.
 * @param None.
 */
void rtcc_test(void)
{
    RtccInitClock(); //turn on clock source
    RtccWrOn(); //unlock writes to RTCC control register
    mRtccOn(); //enable RTCC peripheral
    while(1)
    {
        /* Update the Time if requested */
        if(update_time)
        {
            Time_Input_out_of_range = (!RtccWriteTime(&RtccTime, TRUE));
            update_time = 0;
        }

        RtccReadTime(&RtccTimeVal);

        
        io_printf("\n\r hour = %d", RtccTimeVal.f.hour);
        io_printf("\n\r min = %d", RtccTimeVal.f.min);
        io_printf("\n\r sec = %d", RtccTimeVal.f.sec);
        io_clr_screen();
    }
}
/* end of file */
