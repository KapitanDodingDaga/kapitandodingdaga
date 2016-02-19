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

#include <Rtcc.h>
#include "rtcc_calendar.h"
#include "rtcc_calendar_test.h"
#include "io_printf.h"

/*!
 * @name  test().
 * @brief None.
 * @param None.
 */
void rtcc_calendar_test(void)
{
    calendar_t obj;
    rtcc_calendar_init();
    while(1)
    {
        obj = rtcc_calendar_get_info();
        io_printf("\n\n\n\r");
        io_printf("\n\r=========================================");
        io_printf("\n\n\r mon = %d", obj.mon );
        io_printf("\n\r mday = %d", obj.mday );
        io_printf("\n\r year = %d",  obj.year );

        io_printf("\n\n\r wday = %d", obj.wday );

        io_printf("\n\n\r hour = %d", obj.hour );
        io_printf("\n\r min = %d", obj.min );
        io_printf("\n\r sec = %d", obj.sec );
    }
}
/* end of file */
