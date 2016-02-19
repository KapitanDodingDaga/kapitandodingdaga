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
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include <xc.h>
#include <rtcc.h>

#include "config_bits.h"
#include "io_printf.h"
#include "sio.h"
#include "led.h"
#include "eeprom_emu_test.h"
#include "button.h"
#include "timer1.h"
#include "lcd_calendar.h"
#include "calendar.h"
#include "DEE Emulation 16-bit.h"
#include "temp_sense.h"
#include "spi2.h"
#include "spieeprom.h"
#include "huvent_fsm.h"
#include "huvent_que.h"
#include "rtcc_calendar.h"

typedef struct tiongs_s
{
    uint16_t    numeric;
    char*       string;
} tiongs_t;

/*!
 * @name  glue().
 * @brief None.
 * @param None.
 */
static uint8_t DecimalToBCD (uint8_t decimalByte)
{
    return (((decimalByte / 10) << 4) | (decimalByte % 10));
}


/*!
 * @name  glue().
 * @brief None.
 * @param None.
 */
void glue(void)
{
    uint16_t temp = 0xFFFF;

    // used FRC = 8MHz clock
    OSCCON = 0;
    CLKDIV = 0;

    // start-up delay to avoid unenttended 
    // running during programming
    while(temp--);

    // create and initialize system event que first
    // before initializing any hardwares as we don't
    // want any ISR to post event while our que is not
    // yet ready.
    huvent_que_init();
    huvent_fsm_init();

    // inilize mid-layer hardwares
    SPI2INTInit();
    EEPROMInit();
    DataEEInit();
    temp_sense_init();

    // initialized thos HW that can cause humant events
    sio_init();
    button_init();

    // lets initialize those that can be seen
    // easily by our users.
    led_init();
    led_echo(0x0000);
    calendar_init();
      
    // finally, always enable application layer tick last
    timer1_init();
}


/*!
 * @name  glue_save_date_time_iee().
 * @brief None.
 * @param None.
 */
void glue_save_date_time_iee(void)
{
    io_printf("\n\r Saving to internal EEPROM...");
    calendar_save_ieeprom( g_calendar_obj );
    io_printf("\n\r Saving to internal EEPROM success...");
}

/*!
 * @name  glue_view_date_time_iee().
 * @brief None.
 * @param None.
 */
void glue_view_date_time_iee(void)
{
    lcd_info_t info;
    io_printf("\n\r Retriving information from internal EEPROM...");
    info = calendar_get_ieeprom();
    io_printf("\n\r Retriving information from internal EEPROM successfull...");
    io_printf("\n\n\r Time is             %d hour: %d minute: %d second.", info.hour, info.min, info.sec);
    io_printf("\n\r Date is             %d / %d / %d", info.month, info.date, info.year);
    io_printf("\n\r Temperature is      %d'C.", info.temperature );
}


/*!
 * @name  glue_help().
 * @brief None.
 * @param None.
 */
void glue_help(void)
{
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

    io_printf("\n\n\n\r Command Definition:");
    io_printf("\n\r 1.) save_date_time_iee             - save to internal EEPROM.");
    io_printf("\n\r 2.) save_date_time_xee             - save to external EEPROM.");
    io_printf("\n\r 3.) view_date_time_iee             - display to internal EEPROM.");
    io_printf("\n\r 4.) view_date_time_xee             - display to external EEPROM.");
    io_printf("\n\r 5.) update_date<:>month<:>day<:>year<:>wday            - updates the current date.");
    io_printf("\n\r 6.) update_time<:>hour<:>minute<:>seconds              - updates the current time.");
    io_printf("\n\r 7.) set_alarm<:>hour<:>minute<:>seconds               - configures the alarm time.");
    io_printf("\n\r 8.) dis_alarm                - disables the alarm.");
    io_printf("\n\r 9.) help                 - display all available help contents.");
}


/*!
 * @name  glue_update_date().
 * @brief None.
 * @param None.
 */
uint8_t glue_update_date( char* cmd )
{
    if( NULL == cmd ) return 1;
//    io_printf("\n\n\r cmd = %s", cmd);
    tiongs_t month;
    tiongs_t date;
    tiongs_t year;
    tiongs_t wday;
    month.string = strtok (cmd,":");
    month.string = strtok (NULL,":");
    date.string = strtok (NULL,":");
    year.string = strtok (NULL,":");
    wday.string = strtok (NULL,":");
    if( NULL == month.string ) return 4;
    if( NULL == date.string ) return 5;
    if( NULL == year.string ) return 6;
    if( NULL == wday.string ) return 6;
//    io_printf("\n\r month = %s", month.string );
//    io_printf("\n\r date = %s", date.string );
//    io_printf("\n\r year = %s", year.string );
//    io_printf("\n\r wday = %s", wday.string );
    month.numeric = atoi(month.string);
    date.numeric = atoi(date.string);
    year.numeric = atoi(year.string);
    wday.numeric = atoi(wday.string);
    if( month.numeric < 1 ) return 7;
    if( month.numeric > 12 ) return 8;
    if( date.numeric < 1 ) return 9;
    if( date.numeric > 31 ) return 10;
    if( year.numeric < 1000 ) return 11;
    if( year.numeric > 9000 ) return 12;
    if( wday.numeric > 6 ) return 13;
    g_calendar_obj.month = month.numeric;
    g_calendar_obj.date = date.numeric;
    g_calendar_obj.year = year.numeric;
    g_calendar_obj.day = wday.numeric;
    calendar_update();
    return 0;
}

/*!
 * @name  glue_update_time().
 * @brief None.
 * @param None.
 */
uint8_t glue_update_time( char* cmd )
{
    if( NULL == cmd ) return 1;
    tiongs_t hours;
    tiongs_t minutes;
    tiongs_t seconds;
    hours.string = strtok (cmd,":");
    hours.string = strtok (NULL,":");
    minutes.string = strtok (NULL,":");
    seconds.string = strtok (NULL,":");
    if( NULL == hours.string ) return 4;
    if( NULL == minutes.string ) return 5;
    if( NULL == seconds.string ) return 20;
//    io_printf("\n\r hours = %s", hours.string );
//    io_printf("\n\r minutes = %s", minutes.string );
//    io_printf("\n\r seconds = %s", seconds.string );
    hours.numeric = atoi(hours.string);
    minutes.numeric = atoi(minutes.string);
    seconds.numeric = atoi(seconds.string);
    if( hours.numeric > 24 ) return 7;
    if( minutes.numeric >= 60 ) return 9;
    if( seconds.numeric >= 60 ) return 10;
    g_calendar_obj.hour = hours.numeric;
    g_calendar_obj.min = minutes.numeric;
    g_calendar_obj.sec = seconds.numeric;
    calendar_update();
    return 0;
}


/*!
 * @name  glue_set_alarm().
 * @brief None.
 * @param None.
 */
uint8_t glue_set_alarm( char* cmd )
{
    rtccTime alarm_obj;
    if( NULL == cmd ) return 1;
//    io_printf("\n\n\r cmd = %s", cmd);
    tiongs_t hours;
    tiongs_t minutes;
    tiongs_t seconds;
    hours.string = strtok (cmd,":");
    hours.string = strtok (NULL,":");
    minutes.string = strtok (NULL,":");
    seconds.string = strtok (NULL,":");
    if( NULL == hours.string ) return 4;
    if( NULL == minutes.string ) return 5;
    if( NULL == seconds.string ) return 11;
//    io_printf("\n\r hours = %s", hours.string );
//    io_printf("\n\r minutes = %s", minutes.string );
//    io_printf("\n\r seconds = %s", seconds.string );
    hours.numeric = atoi(hours.string);
    minutes.numeric = atoi(minutes.string);
    seconds.numeric = atoi(seconds.string);
    if( hours.numeric > 24 ) return 7;
    if( minutes.numeric > 59 ) return 9;
    if( seconds.numeric > 59 ) return 12;

    // configure alarm time
    mRtccAlrmDisable();

    RtccSetAlarmRptCount(200, false);
    alarm_obj.f.hour = DecimalToBCD ( hours.numeric );
    alarm_obj.f.min = DecimalToBCD ( minutes.numeric );
    alarm_obj.f.sec = DecimalToBCD ( seconds.numeric );
    RtccWriteAlrmTime( &alarm_obj );
    
    // configure the alarm to repeat everyday
//    RtccSetAlarmRpt(RTCC_RPT_DAY , true );
     RtccSetAlarmRpt(RTCC_RPT_SEC , true );


    // enabled RTCC Alarm interrupt
     IPC15bits.RTCIP = 6;       // interrupt priority
     IFS3bits.RTCIF = 0;        // reset flag
     IEC3bits.RTCIE = 1;        // enable RTCC interrupt
    mRtccAlrmEnable();

    // update global record
    g_calendar_obj.alarm = ALARM_ON;
    return 0;
}


/*!
 * @name  glue_disable_alarm().
 * @brief None.
 * @param None.
 */
void glue_disable_alarm(void)
{
    rtcc_calendar_dis_alarm();

    // update global record
    g_calendar_obj.alarm = ALARM_OFF;
}


/*!
 * @name  glue_save_date_time_xee().
 * @brief None.
 * @param None.
 */
uint8_t glue_save_date_time_xee(void)
{
    uint8_t resp = 0;
    io_printf("\n\r Saving to external EEPROM...");
    resp = calendar_save_xeeprom( g_calendar_obj );
    io_printf("\n\r Saving to external EEPROM success...");
    return resp;
}

/*!
 * @name  glue_view_date_time_xee().
 * @brief None.
 * @param None.
 */
void glue_view_date_time_xee(void)
{
    lcd_info_t info;
    io_printf("\n\r Retriving information from external EEPROM...");
    info = calendar_get_xeeprom();
    io_printf("\n\r Retriving information from external EEPROM successfull...");
    io_printf("\n\n\r Time is             %d hour: %d minute: %d second.", info.hour, info.min, info.sec);
    io_printf("\n\r Date is             %d / %d / %d", info.month, info.date, info.year);
    io_printf("\n\r Temperature is      %d'C.", info.temperature );
}
/* end of file */
