#include <stdint.h>
#include <xc.h>

#include "lcd.h"
#include "lcd_test.h"

void lcd_test(void)
{
    char name[17] = "sherwin tiongson";

    // call test function here
    LCD_Initialize();
    LCD_ClearScreen();
    LCD_PutChar('M');
    LCD_ClearScreen();
    LCD_PutString(name, sizeof(name));
}
/* end of file */