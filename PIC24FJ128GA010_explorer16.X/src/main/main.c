/*
 * File:   main.c
 * Author: Sherwin Tiongson
 *
 * Created on November 3, 2014, 3:27 PM
 */

/******************************************************************************
 * Software License Agreement
 *
 * Copyright � 2011 Microchip Technology Inc.  All rights reserved.
 * Microchip licenses to you the right to use, modify, copy and distribute
 * Software only when embedded on a Microchip microcontroller or digital
 * signal controller, which is integrated into your product or third party
 * product (pursuant to the sublicense terms in the accompanying license
 * agreement).
 *
 * You should refer to the license agreement accompanying this Software
 * for additional information regarding your rights and obligations.
 *
 * SOFTWARE AND DOCUMENTATION ARE PROVIDED ìAS ISî WITHOUT WARRANTY OF ANY
 * KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY
 * OF MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR
 * PURPOSE. IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR
 * OBLIGATED UNDER CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION,
 * BREACH OF WARRANTY, OR OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT
 * DAMAGES OR EXPENSES INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL,
 * INDIRECT, PUNITIVE OR CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA,
 * COST OF PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY
 * CLAIMS BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
 * OR OTHER SIMILAR COSTS.
 *
 *****************************************************************************/
#include <stdint.h>
#include <stdlib.h>
#include <stdbool.h>
#include <xc.h>

#include "DEE Emulation 16-bit.h"
#include "p24FJ128GA010.h"

#include "crc.h"
#include "config_bits.h"
#include "led.h"
#include "timer1_test.h"
#include "i2c_master_test.h"
#include "lcd_test.h"
#include "lcd.h"
#include "i2c_slave_test.h"
#include "spi_master_test.h"
#include "spi_slave.h"
#include "crc_calc_test.h"

#include "sio.h"
#include "io_printf.h"
#include "reset_source.h"
#include "batman.h"
#include "capture.h"
#include "change_notify.h"
#include "eeprom_emu_test.h"
#include "rtcc_test.h"

static void clear_watchdog(void);


void test123(void)
{
    static uint16_t count = 0;
    count = count + 1;
    io_printf("\n\r %d", count);
    test123();
}

/*!
 * @name  main().
 * @brief C main function.
 * @param None.
 */
int main (void)
{
    uint16_t temp = 5000;
    char debug[11] = "Running...";

    // start-up delay to avoid unenttended running during 
    // programming
    while(temp--);

    // enable LED for debugging
    led_init();
    led_echo(0);
    LCD_Initialize();
    LCD_ClearScreen();
    LCD_PutString(debug, sizeof(debug));
    sio_init();

    // used FRC = 8MHz clock
    OSCCON = 0;
    CLKDIV = 0;

    // send some message to serial console
    io_printf("\n\n\n\r ==================================================================");
    io_printf("\n\r Welcome to PIC24F Self-study!!!..");

    // system reset checking
    reset_source();
    wakeup_source();

    // call test function here
    io_printf("\n\r Calling test code!!!..");
    i2c_master_test();


    io_printf("\n\r Going to infinite loop!!!..\n\n\n\r");
    io_printf("\n\r st:\\> ");
    while(1)
    {
      
    }
}


static void clear_watchdog(void)
{
    // since we enabled watchdog we need to clear it from time to time.
    Nop();
    Nop();
    Nop();
    ClrWdt();
}
/* end of file */


