/**********************************************************************
* ?2007 Microchip Technology Inc.
*
* FileName:        SPI_Master_EEPROM.c
* Dependencies:    Header (.h) files if applicable, see below
* Processor:       PIC24Fxxxx
* Compiler:        MPLAB?C30 v3.00 or higher
*
* SOFTWARE LICENSE AGREEMENT:
* Microchip Technology Incorporated ("Microchip") retains all 
* ownership and intellectual property rights in the code accompanying
* this message and in all derivatives hereto.  You may use this code,
* and any derivatives created by any person or entity by or on your 
* behalf, exclusively with Microchip's proprietary products.  Your 
* acceptance and/or use of this code constitutes agreement to the 
* terms and conditions of this notice.
*
* CODE ACCOMPANYING THIS MESSAGE IS SUPPLIED BY MICROCHIP "AS IS". NO 
* WARRANTIES, WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT 
* NOT LIMITED TO, IMPLIED WARRANTIES OF NON-INFRINGEMENT, 
* MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS 
* CODE, ITS INTERACTION WITH MICROCHIP'S PRODUCTS, COMBINATION WITH 
* ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION. 
*
* YOU ACKNOWLEDGE AND AGREE THAT, IN NO EVENT, SHALL MICROCHIP BE 
* LIABLE, WHETHER IN CONTRACT, WARRANTY, TORT (INCLUDING NEGLIGENCE OR
* BREACH OF STATUTORY DUTY), STRICT LIABILITY, INDEMNITY, 
* CONTRIBUTION, OR OTHERWISE, FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
* EXEMPLARY, INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, FOR COST OR 
* EXPENSE OF ANY KIND WHATSOEVER RELATED TO THE CODE, HOWSOEVER 
* CAUSED, EVEN IF MICROCHIP HAS BEEN ADVISED OF THE POSSIBILITY OR THE
* DAMAGES ARE FORESEEABLE.  TO THE FULLEST EXTENT ALLOWABLE BY LAW, 
* MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN ANY WAY RELATED TO THIS
* CODE, SHALL NOT EXCEED THE PRICE YOU PAID DIRECTLY TO MICROCHIP 
* SPECIFICALLY TO HAVE THIS CODE DEVELOPED.
*
* You agree that you are solely responsible for testing the code and 
* determining its suitability.  Microchip has no obligation to modify,
* test, certify, or support the code.
*
* REVISION HISTORY:
*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* Author        Date      	Comments on this revision
*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* Albert Z.		05/16/08	First release of source file
*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
*
* ADDITIONAL NOTES:
* Code Tested on:
* Explorer 16 Demo board with PIC24FJ128GA010 controller
* The Processor starts with the External Crystal.
*
* On-board 25LC256 SPI EEPROM is pasted on Explorer 16. 
**********************************************************************/

#include <xc.h>
#include <stdint.h>
#include <string.h>

#include "spieeprom.h"
#include "spi2.h"
#include "SPI_Master_EEPROM.h"

void xeeprom_test (void)
{
	unsigned int txData, rxData;

	SPI2INTInit();
	EEPROMInit();
	
	/*
	 * Write one byte to designated address.
	 */
    txData = 0x5AAC;

    // Write MS byte into EEPROM address. 
    EEPROMWriteByte(Hi(txData), 0x10);
    // Write LS byte into EEPROM address. 
    EEPROMWriteByte(Lo(txData), 0x11);

	/*
	 * Now Readback one data from the serial eeprom.
	 */
    // Read MS byte from EEPROM address.
    rxData =  EEPROMReadByte(0x10);
    rxData = (rxData<<8) & 0xff00;
    // Read LS byte from EEPROM address.
    rxData |= (EEPROMReadByte(0x11) & 0x00ff);
	// verify write and read SPI EEPROM (single byte)
	if( rxData != txData )
		while(1);	//error: verify failed

	while(1);		// Success
}


void xeeprom_test2(void)
{
    uint8_t write[64];
    uint8_t read[64];
    uint8_t i = 0;
    SPI2INTInit();
    EEPROMInit();
    memset(read, 0, sizeof(read));
    memset(write, 0, sizeof(write));
    for( i = 0;  i <= sizeof(write) ; i++)
    {
        write[i] = i;
    }
    xeeprom_write( write, sizeof(write), 0);
    xeeprom_read(read, sizeof(read), 0);
    if ( 0 == memcmp(write, read, sizeof(write) ) )
    {
        while(1);
    }
    else
    {
        while(1);
    }
}


void read_status_test(void)
{
    union _EEPROMStatus_ tmp;
    tmp.Char = 0;
    tmp = EEPROMReadStatus();
}


