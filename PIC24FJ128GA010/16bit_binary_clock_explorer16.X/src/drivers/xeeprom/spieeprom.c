/**********************************************************************
* ?2007 Microchip Technology Inc.
*
* FileName:        spieeprom.c
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
* 25LC256 is connected to SPI2
************************************************************************/
#include <xc.h>
#include <stdint.h>
#include <stddef.h>
#include "spi2.h"
#include "spieeprom.h"


/************************************************************************
* Function: EEPROMInit                                                  *
*                                                                       *
* Preconditions: SPI module must be configured to operate with          *
*                 parameters: Master, MODE16 = 0, CKP = 1, SMP = 1.     *
*                                                                       *
* Overview: This function setup SPI IOs connected to EEPROM.            *
*                                                                       *
* Input: None.                                                          *
*                                                                       *
* Output: None.                                                         *
*                                                                       *
************************************************************************/
void EEPROMInit()
{
    // Set IOs directions for EEPROM SPI
    EEPROM_SS_PORT = 1;
    EEPROM_SS_TRIS = 0;
}

/************************************************************************
* Function: EEPROMWriteByte()                                           *
*                                                                       *
* Preconditions: SPI module must be configured to operate with  EEPROM. *
*                                                                       *
* Overview: This function writes a new value to address specified.      *
*                                                                       *
* Input: Data to be written and address.                                *
*                                                                       *
* Output: None.                                                         *
*                                                                       *
************************************************************************/
void EEPROMWriteByte(unsigned char Data, unsigned int Address)
{
    unsigned char Local_8;
    EEPROMWriteEnable();
    mEEPROMSSLow();

    Local_8 = writeSPI2(EEPROM_CMD_WRITE);

    Local_8 = writeSPI2(Hi(Address));
    Local_8 = writeSPI2(Lo(Address));

    Local_8 = writeSPI2(Data);

    mEEPROMSSHigh();

    // wait for completion of previous write operation
    while(EEPROMReadStatus().Bits.WIP);
    
    EEPROMWriteDisable();
}

/************************************************************************
* Function: EEPROMReadByte()                                            *
*                                                                       *
* Preconditions: SPI module must be configured to operate with  EEPROM. *
*                                                                       *
* Overview: This function reads a value from address specified.         *
*                                                                       *
* Input: Address.                                                       *
*                                                                       *
* Output: Data read.                                                    *
*                                                                       *
************************************************************************/
unsigned char EEPROMReadByte(unsigned int Address)
{
	unsigned char Local_8;

    mEEPROMSSLow();

    Local_8 = writeSPI2(EEPROM_CMD_READ);

    Local_8 = writeSPI2(Hi(Address));
    Local_8 = writeSPI2(Lo(Address));

    Local_8 = writeSPI2(0);

    mEEPROMSSHigh();
    return Local_8;
}

/************************************************************************
* Function: EEPROMWriteEnable()                                         *
*                                                                       *
* Preconditions: SPI module must be configured to operate with EEPROM.  *
*                                                                       *
* Overview: This function allows a writing into EEPROM. Must be called  *
* before every writing command.                                         *
*                                                                       *
* Input: None.                                                          *
*                                                                       *
* Output: None.                                                         *
*                                                                       *
************************************************************************/
void EEPROMWriteEnable()
{
	unsigned char Local_8;
    mEEPROMSSLow();
    Local_8 = writeSPI2(EEPROM_CMD_WREN);
    mEEPROMSSHigh();
}

void EEPROMWriteDisable()
{
	unsigned char Local_8;
    mEEPROMSSLow();
    Local_8 = writeSPI2(EEPROM_CMD_WRDI);
    mEEPROMSSHigh();
}

/************************************************************************
* Function: EEPROMReadStatus()                                          *
*                                                                       *
* Preconditions: SPI module must be configured to operate with  EEPROM. *
*                                                                       *
* Overview: This function reads status register from EEPROM.            *
*                                                                       *
* Input: None.                                                          *
*                                                                       *
* Output: Status register value.                                        *
*                                                                       *
************************************************************************/
union _EEPROMStatus_ EEPROMReadStatus()
{
	unsigned char Local_8;

    mEEPROMSSLow();
    Local_8 = writeSPI2(EEPROM_CMD_RDSR);
    Local_8 = writeSPI2(0);
    mEEPROMSSHigh();

    return (union _EEPROMStatus_)Local_8;
}


uint8_t xeeprom_write( uint8_t* pbuff, uint8_t len, uint16_t start_address )
{
    uint8_t i = 0;
    if( NULL == pbuff ) return 1;

    for( i = 0; i < len; i++ )
    {
        EEPROMWriteByte( pbuff[i], start_address + i );
    }
    return 0;
}


uint8_t xeeprom_read( uint8_t* pbuff, uint8_t len, uint16_t start_address )
{
    uint8_t i = 0;
    if( NULL == pbuff ) return 1;
    for( i = 0; i < len; i++ )
    {
        pbuff[i] = EEPROMReadByte( start_address + i );
    }

    return 0;
}
/* end of file */

