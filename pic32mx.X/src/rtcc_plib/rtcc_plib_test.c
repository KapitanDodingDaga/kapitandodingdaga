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
#include "rtcc_plib.h"
#include "rtcc_plib_test.h"
#include "io_printf.h"

/*!
 * @name  BCDToDecimal().
 * @brief None.
 * @param None.
 */
static uint8_t BCDToDecimal (uint8_t bcdByte)
{
    return (((bcdByte & 0xF0) >> 4) * 10) + (bcdByte & 0x0F);
}


/*!
 * @name  DecimalToBCD().
 * @brief None.
 * @param None.
 */
static uint8_t DecimalToBCD (uint8_t decimalByte)
{
    return (((decimalByte / 10) << 4) | (decimalByte % 10));
}

/*!
 * @name  rtcc_plib_test().
 * @brief None.
 * @param None.
 */
void rtcc_plib_test(void)
{
    rtc_t rtc;
    rtc_t temp;
    rtc.date.mon = DecimalToBCD(2);
    rtc.date.mday = DecimalToBCD(3);
    rtc.date.year = DecimalToBCD(15);
    rtc.date.wday = DecimalToBCD(3);
    rtc.time.hour = DecimalToBCD(10);
    rtc.time.min = DecimalToBCD(28);
    rtc.time.sec = DecimalToBCD(0);
    rtcc_plib_init(rtc);

    while(1)
    {
        temp = rtcc_plib_get();
        io_printf("\n\n\r mon = %d", BCDToDecimal ( temp.date.mon ) );
        io_printf("\n\r mday = %d", BCDToDecimal ( temp.date.mday ) );
        io_printf("\n\r year = %d", BCDToDecimal ( temp.date.year ) );
        io_printf("\n\r wday = %d", BCDToDecimal ( temp.date.wday ) );
        io_printf("\n\n\r hour = %d", BCDToDecimal ( temp.time.hour ) );
        io_printf("\n\n\r min = %d", BCDToDecimal( temp.time.min ) );
        io_printf("\n\n\r sec = %d", BCDToDecimal ( temp.time.sec ) );
    }
}
/* end of file */
