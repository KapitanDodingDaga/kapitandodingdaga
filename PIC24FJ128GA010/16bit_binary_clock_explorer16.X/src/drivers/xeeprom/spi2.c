/**********************************************************************
* ?2007 Microchip Technology Inc.
*
* FileName:        eeprom.c
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
#include "spi2.h"
#include "spieeprom.h"

// send one byte of data and receive one back at the same time
unsigned char writeSPI2( unsigned char i )
{
    SPI2BUF = i;					// write to buffer for TX
    while(!SPI2STATbits.SPIRBF);	// wait for transfer to complete
    return SPI2BUF;    				// read the received value
}//writeSPI2

/************************************************************************
* Function: SPI2INTInit                                                 *
*                                                                       *
* Preconditions: TRIS bit of Slave Chip Select pin (if any used) should *
* be made output. This function is used for initializing the SPI module.*
* It initializes the module according to Application Maestro options.   *
*                                                                       *
* Input: Application Maestro options                                    *
*                                                                       *
* Output: None                                                          *
*                                                                       *
************************************************************************/ 
void SPI2INTInit()
{
    IFS2bits.SPI2IF = 0;	// clear interrupt flag
    IEC2bits.SPI2IE = 1;	// enable interrupt
    SPI2CON1 = SPI_MASTER;      // select mode
    SPI2STAT = SPI_ENABLE;      // enable the peripheral
} // SPI2INTInit

//void __attribute__((interrupt, no_auto_psv)) _SPI2Interrupt()
//{
//	/* add code here */
//
//	IFS2bi2Its.SPI2IF = 0;
//
//}


