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
 * @name  rtcc_calendar_init().
 * @brief None.
 * @param None.
 */
void rtcc_calendar_init(void)
{
    rtccTimeDate obj;
    RtccInitClock(); //turn on clock source
    RtccWrOn(); //unlock writes to RTCC control register
    
    // enable RTCC Output pin
    PORTDbits.RD8 = 0;
    mRtccSetClockOe(true);

    // set default calendar settings
    mRtccOff();
    obj.f.mon = DecimalToBCD(1);         // BCD codification for month, 01-12
    obj.f.mday = DecimalToBCD(13);       // BCD codification for day of the month, 01-31
    obj.f.year = DecimalToBCD(15);       // BCD codification for year, 00-99
    obj.f.wday = DecimalToBCD(2);        // BCD codification for day of the week, 00-06
    obj.f.hour = DecimalToBCD(13);       // BCD codification for hours, 00-24
    obj.f.min = DecimalToBCD(0);         // BCD codification for minutes, 00-59
    obj.f.sec = DecimalToBCD(0);         // BCD codification for seconds, 00-59
    RtccWriteTimeDate( &obj, true);
    mRtccOn(); 
}


/*!
 * @name  rtcc_calendar_update().
 * @brief None.
 * @param None.
 */
void rtcc_calendar_update( calendar_t data )
{
    rtccTimeDate obj;
    obj.f.wday = DecimalToBCD(data.wday);        // BCD codification for day of the week, 00-06
    obj.f.mon = DecimalToBCD(data.mon);         // BCD codification for month, 01-12
    obj.f.mday = DecimalToBCD(data.mday);       // BCD codification for day of the month, 01-31
    obj.f.year = DecimalToBCD(data.year);       // BCD codification for year, 00-99
    obj.f.hour = DecimalToBCD(data.hour);       // BCD codification for hours, 00-24
    obj.f.min = DecimalToBCD(data.min);         // BCD codification for minutes, 00-59
    obj.f.sec = DecimalToBCD(data.sec);         // BCD codification for seconds, 00-59

    mRtccOff();
    RtccWriteTimeDate( &obj, true);
    mRtccOn();
}


/*!
 * @name  rtcc_calendar_get_info().
 * @brief None.
 * @param None.
 */
calendar_t rtcc_calendar_get_info( void )
{
    rtccTimeDate obj;
    calendar_t info;
    RtccReadTimeDate(&obj);
    info.wday = BCDToDecimal(obj.f.wday);
    info.mon = BCDToDecimal(obj.f.mon);
    info.mday = BCDToDecimal(obj.f.mday);
    info.year = BCDToDecimal(obj.f.year);
    info.hour = BCDToDecimal(obj.f.hour);
    info.min = BCDToDecimal(obj.f.min);
    info.sec = BCDToDecimal(obj.f.sec);
    return info;
}



/*!
 * @name  rtcc_calendar_dis_alarm().
 * @brief None.
 * @param None.
 */
void rtcc_calendar_dis_alarm(void)
{
    mRtccAlrmDisable();
}
/* end of file */
