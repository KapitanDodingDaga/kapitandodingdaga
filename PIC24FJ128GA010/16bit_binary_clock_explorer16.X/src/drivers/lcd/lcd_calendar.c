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
#include <string.h>
#include <xc.h>

#include "lcd.h"
#include "lcd_calendar.h"

#define SPACE_CHARACTER     (32)
#define DEGREE_CHARACTER     (39)

// LCD bitmap
static char first_row[16];
static char second_row[16];

// LCD Coordinates
#define     MONTH_LENGTH            (3)
#define     MONTH_INDEX             (0)
#define     DATE_LENGTH             (3)
#define     DATE_INDEX              (3)
#define     YEAR_LENGTH             (5)
#define     YEAR_INDEX              (6)
#define     TEMPERATURE_LENGTH      (3)
#define     TEMPERATURE_INDEX       (12)
#define     DAY_LENGTH              (10)
#define     DAY_INDEX               (0)
#define     ALARM_LENGTH            (4)
#define     ALARM_INDEX             (13)

// Private Functions
static char *itoa_();
static void calendar_fill_display(void);
static lcd_calendar_error_t calendar_year_update( int yr  );
static lcd_calendar_error_t calendar_month_update( int month );
static lcd_calendar_error_t calendar_date_update( int date );
static lcd_calendar_error_t calendar_temp_update( int temp );
static lcd_calendar_error_t calendar_day_update( day_t day );
static lcd_calendar_error_t calendar_alarm_update( alarm_t alarm  );

/*!
 * @name  itoa_().
 * @brief Converts a numeric integer into string.
 * @param None.
 */
#define INT_DIGITS 19		
static char *itoa_(i)
int i;
{
  static char buf[INT_DIGITS + 2];
  char *p = buf + INT_DIGITS + 1;	
  if (i >= 0)
  {
    do
    {
      *--p = '0' + (i % 10);
      i /= 10;
    } while (i != 0);
    return p;
  }
  else
  {			
    do
    {
      *--p = '0' - (i % 10);
      i /= 10;
    } while (i != 0);
    *--p = '-';
  }
  return p;
}


/*!
 * @name  calendar_fill_display().
 * @brief Fills the entire LCD display with bitmaps.
 * @param None.
 */
static void calendar_fill_display(void)
{
    LCD_PutString(first_row, sizeof(first_row));
    LCD_PutString(second_row, sizeof(second_row));
}


/*!
 * @name  calendar_year_update().
 * @brief Updates the bitmap's year parameter.
 * @param None.
 */
static lcd_calendar_error_t calendar_year_update( int yr  )
{
    if( yr < 1000 ) return INVALID_YEAR;
    if( yr >= 9000 ) return INVALID_YEAR;

    char* str = NULL;
    uint8_t len = 0;
    str = itoa_(yr);
    len =  strlen(str);

    memmove( &first_row[YEAR_INDEX], str, YEAR_LENGTH - 1);
    return LCD_OK;
}

/*!
 * @name  calendar_month_update().
 * @brief Updates the bitmap's month parameter.
 * @param None.
 */
static lcd_calendar_error_t calendar_month_update( int month  )
{
    if( month <= 0 ) return INVALID_MONTH;
    if( month > 13 ) return INVALID_MONTH;
    uint8_t len = 0;
    
    char* str = NULL;

    str = itoa_(month);
    len =  strlen(str);
    if( month < 10 )
    {
        str[1] = str[0];
        str[0] = '0';
    } 
    memmove( &first_row[MONTH_INDEX], str, MONTH_LENGTH - 1);
    return LCD_OK;
}

/*!
 * @name  calendar_date_update().
 * @brief Updates the bitmap's date parameter.
 * @param None.
 */
static lcd_calendar_error_t calendar_date_update( int date  )
{
    if( date <= 0 ) return INVALID_DATE;
    if( date > 32 ) return INVALID_DATE;

    uint8_t len = 0;
    char* str = NULL;

    str = itoa_(date);
    len =  strlen(str);
    if( date < 10 )
    {
        str[1] = str[0];
        str[0] = '0';
    }
    memmove( &first_row[DATE_INDEX], str, DATE_LENGTH - 1);
    return LCD_OK;
}

/*!
 * @name  calendar_temp_update().
 * @brief Updates the bitmap's temperature parameter.
 * @param None.
 */
static lcd_calendar_error_t calendar_temp_update( int temp  )
{
    uint8_t len = 0;
    
    if(temp > 99 ) return INVALID_TEMPERATURE;

    char* str = NULL;
    str = itoa_(temp);
    len =  strlen(str);
    if( temp < 10 )
    {
        str[1] = str[0];
        str[0] = '0';
    }
    memmove( &first_row[TEMPERATURE_INDEX], str, TEMPERATURE_LENGTH - 1);
    return LCD_OK;
}

/*!
 * @name  calendar_day_update().
 * @brief Updates the bitmap's day parameter.
 * @param None.
 */
static lcd_calendar_error_t calendar_day_update( day_t day  )
{
    if( day < SUNDAY ) return INVALID_DAY;
    if( day > SATURDAY ) return INVALID_DAY;
    char str[DAY_LENGTH];
    
    // fill with SPACE character
    memset(str, SPACE_CHARACTER, DAY_LENGTH );
    memset( &second_row[DAY_INDEX], SPACE_CHARACTER, DAY_LENGTH);

    switch (day)
    {
        case SUNDAY:
        {
            memmove(str, "SUNDAY", 6 );
            break;
        }

        case MONDAY:
        {
            memmove(str, "MONDAY", 6 );
            break;
        }

        case TUESDAY:
        {
            memmove(str, "TUESDAY", 7 );
            break;
        }

        case WEDNESDAY:
        {
            memmove(str, "WEDNESDAY", 9 );
            break;
        }

        case THURSDAY:
        {
            memmove(str, "THURSDAY", 8 );
            break;
        }

        case FRIDAY:
        {
            memmove(str, "FRIDAY", 6 );
            break;
        }

        case SATURDAY:
        {
            memmove(str, "SATURDAY", 8 );
            break;
        }

        default:
        {
            return INVALID_DAY;
            break;
        }

    }
    memmove( &second_row[DAY_INDEX], str, DAY_LENGTH - 1);
    return LCD_OK;
}


/*!
 * @name  calendar_alarm_update().
 * @brief Updates the bitmap's alarm states parameter.
 * @param None.
 */
static lcd_calendar_error_t calendar_alarm_update( alarm_t alarm  )
{
    if( alarm < ALARM_ON ) return INVALID_ALARM_STATE;
    if( alarm > ALARM_OFF ) return INVALID_ALARM_STATE;

    char str[ALARM_LENGTH];

    // fill with SPACE character
    memset(str, SPACE_CHARACTER, ALARM_LENGTH );
    memset( &second_row[ALARM_INDEX], SPACE_CHARACTER, ALARM_INDEX);

    switch (alarm)
    {
        case ALARM_ON:
        {
            memmove(str, "ON", 2 );
            break;
        }

        case ALARM_OFF:
        {
            memmove(str, "OFF", 3 );
            break;
        }
        default:
        {
            return INVALID_ALARM_STATE;
            break;
        }
    }

    // update bit field
    memmove( &second_row[ALARM_INDEX], str, ALARM_LENGTH - 1);
    return LCD_OK;
}

/*!
 * @name  lcd_calendar_display().
 * @brief None.
 * @param None.
 */
lcd_calendar_error_t lcd_calendar_display( lcd_info_t info )
{
    if( LCD_OK != calendar_month_update(info.month)) return INVALID_MONTH;
    if( LCD_OK != calendar_date_update(info.date)) return INVALID_DATE;
    if( LCD_OK != calendar_year_update(info.year)) return INVALID_YEAR;
    if( LCD_OK != calendar_temp_update(info.temperature)) return INVALID_TEMPERATURE;
    if( LCD_OK != calendar_day_update(info.day)) return INVALID_DAY;
    if( LCD_OK != calendar_alarm_update(info.alarm)) return INVALID_ALARM_STATE;
    first_row[2] = '/';
    first_row[5] = '/';
    first_row[14] = DEGREE_CHARACTER;
    first_row[15] = 'C';
    calendar_fill_display();
    return LCD_OK;
}


/*!
 * @name  lcd_calendar_init().
 * @brief None.
 * @param None.
 */
void lcd_calendar_init( void )
{
    LCD_Initialize();
    LCD_ClearScreen();

    // initialize lcd image buffer
    memset( &first_row[0], SPACE_CHARACTER, sizeof(first_row));
    memset( &second_row[0], SPACE_CHARACTER, sizeof(second_row));
}
/* end of file */
