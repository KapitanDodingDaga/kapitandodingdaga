#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <xc.h>

#include "lcd.h"
#include "lcd_calendar.h"
#include "lcd_test.h"


void lcd_test1(void)
{
    lcd_info_t info;
    lcd_calendar_init();
    info.month = 2;
    info.date = 8;
    info.year = 1980;
    info.temperature = 26;
    info.day = MONDAY;
    info.alarm = ALARM_OFF;
    lcd_calendar_display(info);
}

void lcd_test2(void)
{
    lcd_info_t info;
    lcd_calendar_init();
    info.month = 12;
    info.date = 30;
    info.year = 2015;
    info.temperature = 21;
    info.day = WEDNESDAY;
    info.alarm = ALARM_ON;
    lcd_calendar_display(info);
}

void lcd_test3(void)
{
    lcd_info_t info;
    lcd_calendar_init();
    info.month = 1;
    info.date = 9;
    info.year = 2015;
    info.temperature = 38;
    info.day = FRIDAY;
    info.alarm = ALARM_ON;
    lcd_calendar_display(info);
}

void lcd_test4(void)
{
    lcd_info_t info;
    lcd_calendar_init();
    info.month = 1;
    info.date = 9;
    info.year = 2015;
    info.temperature = 38;
    info.day = FRIDAY;
    info.alarm = ALARM_OFF;
    lcd_calendar_display(info);
}
/* end of file */