/********************************************************************
 * Dependencies:    See INCLUDES section below
 * Processor:       PICxxx
 * Compiler:        XCx
 * Author:          Sherwin Tiongson
 * Company:         Microchip Technology, Inc.
 *
 * Software License Agreement:
 *
 * The software supplied herewith by Microchip Technology Incorporated
 * (the "Company") for its PICmicro® Microcontroller is intended and
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
#ifndef LCD_CALENDAR_H
#define	LCD_CALENDAR_H

#ifdef	__cplusplus
extern "C" {
#endif
    
typedef enum lcd_calendar_error_e
{
    LCD_OK = 0,
    INVALID_DATE,
    INVALID_MONTH,
    INVALID_YEAR,
    INVALID_DAY,
    INVALID_TEMPERATURE,
    INVALID_ARGUMENT,
    INVALID_ALARM_STATE,   
} lcd_calendar_error_t;

typedef enum day_e
{
    SUNDAY = 0,
    MONDAY,
    TUESDAY,
    WEDNESDAY,
    THURSDAY,
    FRIDAY,
    SATURDAY,
} day_t;

typedef enum alarm_e
{
    ALARM_ON = 0,
    ALARM_OFF,
} alarm_t;


typedef struct lcd_info_s
{
    uint8_t date;
    uint8_t month;
    uint16_t year;
    day_t day;                   
    uint16_t temperature;
    alarm_t alarm;
    uint8_t    hour;       // decimal  for hours, 00-24
    uint8_t    min;        // decimal  for minutes, 00-59
    uint8_t    sec;        // decimal  for seconds, 00-59
    uint16_t millenium;
} lcd_info_t ;

void lcd_calendar_init( void );
lcd_calendar_error_t lcd_calendar_display( lcd_info_t info );


#ifdef	__cplusplus
}
#endif

#endif	/* LCD_CALENDAR_H */
/* end of file */

