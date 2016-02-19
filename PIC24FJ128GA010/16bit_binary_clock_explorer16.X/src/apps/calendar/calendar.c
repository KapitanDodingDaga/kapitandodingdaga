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
#include <string.h>
#include <xc.h>

#include "lcd_calendar.h"
#include "calendar.h"
#include "DEE Emulation 16-bit.h"
#include "io_printf.h"
#include "rtcc_calendar.h"
#include "spieeprom.h"
#include "utils.h"

lcd_info_t g_calendar_obj;

#define     CALENDAR_INFO_START_ADDRS     (50)
#define     CALENDAR_INFO_STRUCT_SIZE     (sizeof(lcd_info_t))

/*!
 * @name  calendar_init().
 * @brief None.
 * @param None.
 */
void calendar_init(void)
{
    g_calendar_obj.alarm = ALARM_OFF;
    g_calendar_obj.millenium = 2000;
    lcd_calendar_init();
    rtcc_calendar_init();
}

/*!
 * @name  calendar_init().
 * @brief None.
 * @param None.
 */
void calendar_update(void)
{
    calendar_t obj;

    g_calendar_obj.millenium = ( g_calendar_obj.year / 100 ) * 100;
    obj.mon = g_calendar_obj.month;
    obj.mday = g_calendar_obj.date;
    obj.year = g_calendar_obj.year % 100;

    obj.wday = g_calendar_obj.day;

    obj.hour = g_calendar_obj.hour;
    obj.min = g_calendar_obj.min;
    obj.sec = g_calendar_obj.sec;

    // update RTC
    rtcc_calendar_update( obj );
}


/*!
 * @name  calendar_tick().
 * @brief None.
 * @param None.
 */
void calendar_tick(void)
{
    calendar_t rtc;
    // update calendar parameters
    rtc = rtcc_calendar_get_info();
    g_calendar_obj.month = rtc.mon;
    g_calendar_obj.date = rtc.mday;
    g_calendar_obj.year = g_calendar_obj.millenium + rtc.year;
    g_calendar_obj.day = rtc.wday;
    g_calendar_obj.hour = rtc.hour;
    g_calendar_obj.min = rtc.min;
    g_calendar_obj.sec = rtc.sec;

    // update calendar display
    lcd_calendar_display(g_calendar_obj);
}


/*!
 * @name  calendar_save_ieeprom().
 * @brief None.
 * @param None.
 */
void calendar_save_ieeprom( lcd_info_t obj )
{
    uint16_t i = 0;
    uint16_t address = 0;
    uint16_t obj_size = 0;
    uint16_t buffer[CALENDAR_INFO_STRUCT_SIZE / 2];

    obj_size = sizeof(obj);
    memmove( buffer, &obj, obj_size );
    if( CALENDAR_INFO_STRUCT_SIZE != obj_size )
    {
        glue_post_error();
    }

    // save entire calendar info object to internal eeprom
    for( i = 0; i < sizeof(obj) / 2; i++ )
    {
        address = i * 2;
        DataEEWrite( buffer[i], address );
    }
}


/*!
 * @name  calendar_get_ieeprom().
 * @brief None.
 * @param None.
 */
lcd_info_t calendar_get_ieeprom(void)
{
    uint16_t i = 0;
    uint16_t address = 0;
    uint16_t read_buffer[CALENDAR_INFO_STRUCT_SIZE / 2];
    lcd_info_t obj;

    // get entire calendar info object from internal eeprom
    for( i = 0; i < sizeof(obj) / 2; i++ )
    {
        address = i * 2;
        read_buffer[i] = DataEERead(address);
    }
    memmove( &obj, read_buffer , sizeof(obj) );
    return obj;
}



/*!
 * @name  calendar_save_xeeprom().
 * @brief None.
 * @param None.
 */
uint8_t calendar_save_xeeprom( lcd_info_t obj )
{
    uint8_t resp = 0;
    uint8_t buffer[CALENDAR_INFO_STRUCT_SIZE];
    memmove( buffer, &obj, CALENDAR_INFO_STRUCT_SIZE );
    resp = xeeprom_write( buffer, sizeof(buffer), 0 );
    return resp;
}


/*!
 * @name  calendar_get_xeeprom().
 * @brief None.
 * @param None.
 */
lcd_info_t calendar_get_xeeprom(void)
{
    uint8_t resp = 0;
    uint8_t read_buffer[CALENDAR_INFO_STRUCT_SIZE];
    lcd_info_t obj;
    resp = xeeprom_read( read_buffer, CALENDAR_INFO_STRUCT_SIZE , 0 );
    memmove( &obj, read_buffer , CALENDAR_INFO_STRUCT_SIZE );
    return obj;
}
/* end of file */
