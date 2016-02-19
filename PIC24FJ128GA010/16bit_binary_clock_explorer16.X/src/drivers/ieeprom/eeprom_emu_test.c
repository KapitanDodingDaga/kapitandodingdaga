/*$T indentinput.c GC 1.140 10/09/15 17:35:14 */

/*
 * Dependencies: See INCLUDES section below Processor: PICxxxx Compiler: XCxx
 * Board: Author: Sherwin Tiongson Company: Microchip Technology, Inc. Software
 * License Agreement: The software supplied herewith by Microchip Technology
 * Incorporated (the "Company") for its PICmicro? Microcontroller is intended and
 * supplied to you, the Company's customer, for use solely and exclusively on
 * Microchip PICmicro Microcontroller products. The software is owned by the
 * Company and/or its supplier, and is protected under applicable copyright laws.
 * All rights are reserved. Any use in violation of the foregoing restrictions may
 * subject the user to criminal sanctions under applicable laws, as well as to
 * civil liability for the breach of the terms and conditions of this license.
 * THIS SOFTWARE IS PROVIDED IN AN "AS IS" CONDITION. NO WARRANTIES, WHETHER
 * EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO
 * THIS SOFTWARE. THE COMPANY SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR
 * SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 */
#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#include <xc.h>

#include "io_printf.h"
#include "DEE Emulation 16-bit.h"
#include "eeprom_emu_test.h"

#define CONSTANT_ADDRESS_TEST	50

/*
 =======================================================================================================================
    ! @name eeprom_emu_test1(). @brief Write, read and compare data to a constant address. @param None.
 =======================================================================================================================
 */
void eeprom_emu_test1(void)
{
	/*~~~~~~~~~~~~~~~~~~~~~~~*/
	uint16_t	data_write = 0;
	uint16_t	data_read = 0;
	uint16_t	resp = 0;
	uint16_t	i = 0;
	/*~~~~~~~~~~~~~~~~~~~~~~~*/

	resp = DataEEInit();
	io_printf("\n\r DataEEInit, resp = 0x%x", resp);
	io_printf("\n\r DataEEInit, dataEEFlags = 0x%x", dataEEFlags.val);

	for(i = 0; i <= 0xFFF8; i++)
	{
		data_write = i;
		resp = DataEEWrite(data_write, CONSTANT_ADDRESS_TEST);
		data_read = DataEERead(CONSTANT_ADDRESS_TEST);

		/* compare */
		if(data_write == data_read)
		{
			io_printf("\n\r PASSED, data_write = %d", data_write);
		}
		else
		{

			/* logs some data */
			io_printf("\n\n\r FAILED.");
			io_printf("\n\r data_write = %d", data_write);
			io_printf("\n\r data_read = %d", data_read);
			io_printf("\n\r DataEEWrite, dataEEFlags = 0x%x", dataEEFlags.val);

			/* lets hang on first error */
			while(1);
		}
	}
}

/*
 =======================================================================================================================
    ! @name eeprom_emu_test2(). @brief Write, read and compare data to all eeprom address. @param None.
 =======================================================================================================================
 */
void eeprom_emu_test2(void)
{
	/*~~~~~~~~~~~~~~~~~~~~~~~*/
	uint16_t	data_write = 0;
	uint16_t	data_read = 0;
	uint16_t	address = 1;
	uint16_t	resp = 0;
	uint16_t	i = 0;
	/*~~~~~~~~~~~~~~~~~~~~~~~*/

	resp = DataEEInit();
	io_printf("\n\r DataEEInit, resp = 0x%x", resp);
	io_printf("\n\r DataEEInit, dataEEFlags = 0x%x", dataEEFlags.val);

	for(i = 0; i < DATA_EE_TOTAL_SIZE; i++)
	{
		data_write = i + 30;
		address = i;
		resp = DataEEWrite(data_write, address);
		data_read = DataEERead(address);

		/* compare */
		if(data_write == data_read)
		{
			io_printf("\n\r PASSED, data_write = 0x%x, address = 0x%x", data_write, address);
		}
		else
		{

			/* logs some data */
			io_printf("\n\n\r FAILED.");
			io_printf("\n\r data_write = 0x%x", data_write);
			io_printf("\n\r data_read = 0x%x", data_read);
			io_printf("\n\r DataEEWrite, dataEEFlags = 0x%x", dataEEFlags.val);

			/* lets hang on first error */
			while(1);
		}
	}
}

/*
 =======================================================================================================================
    ! @name eeprom_emu_flot(). @brief Write, read and compare data to all eeprom address. @param None.
 =======================================================================================================================
 */
void eeprom_emu_flot(void)
{
	/*~~~~~~~~~~~~~~~~~~~~~~~~~*/
	float		data_write = 1.5;
	/*
	 * float data_read = 0;
	 */
	size_t		size = 0;
	uint8_t		data_read = 0;
	uint16_t	address = 1;
	uint16_t	resp = 0;
	uint16_t	i = 0;
	/*~~~~~~~~~~~~~~~~~~~~~~~~~*/

	size = sizeof(data_write);

	/*~~~~~~~~~~~~~~~~*/
	uint8_t buffer1[20];
	int8_t	buffer2[20];
	/*~~~~~~~~~~~~~~~~*/

	memset(buffer1, 0, size);
	memset(buffer2, 0, size);

	memmove(buffer1, &data_write, size);
	memmove(buffer2, &data_write, size);

	resp = DataEEInit();

	io_printf("\n\r DataEEInit, resp = 0x%x", resp);
	io_printf("\n\r DataEEInit, dataEEFlags = 0x%x", dataEEFlags.val);

	for(i = 0; i < size; i++)
	{
		address = i;
		resp = DataEEWrite(buffer1[i], address);
		data_read = DataEERead(address);

		/* compare */
		if(buffer1[i] == data_read)
		{
			io_printf("\n\r PASSED, data_write = 0x%x, address = 0x%x", data_write, address);
		}
		else
		{

			/* logs some data */
			io_printf("\n\n\r FAILED.");
			io_printf("\n\r data_write = 0x%x", data_write);
			io_printf("\n\r data_read = 0x%x", data_read);
			io_printf("\n\r DataEEWrite, dataEEFlags = 0x%x", dataEEFlags.val);

			/* lets hang on first error */
			while(1);
		}
	}
}

/* end of file */
