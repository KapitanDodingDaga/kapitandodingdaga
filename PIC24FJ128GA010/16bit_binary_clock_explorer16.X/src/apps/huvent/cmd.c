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
#include <string.h>
#include "cmd.h"
// ======================================================================================
// Command Definition:
// 1.) save_date_time_iee - save to internal EEPROM.
// 2.) save_date_time_xee - save to external EEPROM.
// 3.) view_date_time_iee - display to internal EEPROM.
// 4.) view_date_time_xee - display to external EEPROM.
// 5.) update_date<:>month_in_decimal<:>day_in_decimal<:>year_in_decimal - updates the current date.
// 6.) update_time<:>hour_in_decimal<:>minute_in_decimal - updates the current time.
// 7.) set_alarm<:>hour_in_decimal<:>minute_in_decimal - configures the alarm time.
// 8.) dis_alarm - disables the alarm.
// 9.) help - display all available help contents.

const char*  CMD_SAVE_DATE_TIME_IEE = "save_date_time_iee";
const char*  CMD_SAVE_DATE_TIME_XEE = "save_date_time_xee";
const char*  CMD_VIEW_DATE_TIME_IEE = "view_date_time_iee";
const char*  CMD_VIEW_DATE_TIME_XEE = "view_date_time_xee";
const char*  CMD_UPDATE_DATE = "update_date";                   //	update_date < : > month < : > day < : > year < : > wday
const char*  CMD_UPDATE_TIME = "update_time";                   //	update_time < : > hour < : > minutes < : > seconds
const char*  CMD_SET_ALARM = "set_alarm";                       // 	set_alarm < : > hour < : > minutes < : > seconds
const char*  CMD_DIS_ALARM = "dis_alarm";
const char*  CMD_HELP = "help";
/* end of file */
