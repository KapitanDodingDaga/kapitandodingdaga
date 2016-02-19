/********************************************************************
 * Dependencies:    See INCLUDES section below
 * Processor:       PIC24F
 * Compiler:        XC16
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
#include <stddef.h>
#include <stdbool.h>
#include <xc.h>

#include "spi_master.h"

/*!
 * @name  spi_master_init().
 * @brief None.
 * @param None.
 */
void spi_master_init(void)
{
    //  To  set  up  the  SPI  module  for  the  Enhanced  Buffer Master mode of operation:
    //      1. If using interrupts:
    //          a) Clear the SPIxIF bit in the respective IFSx register.
    //          b) Set  the  SPIxIE  bit  in  the  respective  IECx register.
    //          c) Write the SPIxIP bits in the respective IPCx register.
    //      2. Write  the  desired  settings  to  the  SPIxCON1 and  SPIxCON2  registers  with  MSTEN (SPIxCON1<5>) =  1 .
    //      3. Clear the SPIROV bit (SPIxSTAT<6>).
    //      4. Select  Enhanced  Buffer  mode  by  setting  the SPIBEN bit (SPIxCON2<0>).
    //      5. Enable SPI operation by setting the SPIEN bit (SPIxSTAT<15>).
    //      6. Write the data to be transmitted to the SPIxBUF register. Transmission (and reception) will start
    //          as  soon  as  data  is  written  to  the  SPIxBUF register.


    // Pinouts:
    // RG6 - SCK2 (PMA5/SCK2/CN8/RG6)
    // RG7 - SDI2 (PMA4/SDI2/CN9/RG7)
    // RG8 - SDO2 (PMA3/SDO2/CN10/RG8)
    // RG9 - SS2 (PMA2/SS2/CN11/RG9)

    // disable other multiplex pheripherals; PMP and CN
    PMAEN = 0;
    PMCONbits.PMPEN = 0;    //  PMP is disabled

    // SPI pin settings
    TRISGbits.TRISG6 = 0;
    TRISGbits.TRISG7 = 0;
    TRISGbits.TRISG8 = 0;
    TRISGbits.TRISG9 = 0;



    // interrupts
    IFS2bits.SPI2IF = 0;
    IEC2bits.SPI2IE = 0;
    IPC8bits.SPI2IP = 0b011;        //  SPI2 Event Interrupt Priority
    IPC8bits.SPF2IP = 0b111;       //  SPI2 Fault Interrupt Priority bits
    
    // set pheripheral to a known state
    SPI2STAT = 0;
    SPI2CON1 = 0;
    SPI2CON2 = 0;
    SPI2BUF = 0;

    SPI2STATbits.SPIEN = 0;         //  SPIx Enable bit

    SPI2CON1bits.PPRE = 0b11;       //  Primary Prescale
    SPI2CON1bits.SPRE = 0b110;      //  Secondary Prescale
    SPI2CON1bits.MSTEN = 1;         // Master Mode
    SPI2CON1bits.CKP = 0;           //  Clock Polarity
    SPI2CON1bits.SSEN = 0;          // SSx pin is used for Slave mode
    SPI2CON1bits.CKE = 0;           // SPIx Clock Edge Select
    SPI2CON1bits.MODE16 = 0;        // Word/Byte Communication Select
    SPI2CON1bits.DISSDO = 0;        // Disable SDOx pin bit
    SPI2CON1bits.DISSCK = 0;        // Internal SPI clock is enabled

    SPI2CON2bits.SPIBEN = 0;        //  Enhanced Buffer is disabled (Legacy mode)
    SPI2CON2bits.FRMEN = 0;
    LATGbits.LATG9 = 1;
    SPI2STATbits.SPIEN = 1;         //  SPIx Enable bit
}


/*!
 * @name  spi_master_tx().
 * @brief Sends SPI frame.
 * @param count - the number of bytes in the frame.
 * @param payload - pointer to frame buffer.
 */
void spi_master_tx( uint16_t count, uint16_t* payload ) 
{
    uint16_t i = 0;
    uint16_t temp = 0;

    if( NULL == payload) return;
    if( 0 == count ) return;

    // chip select
    LATGbits.LATG9 = 0;

    for( i = 0; i < count ; i++)
    {
        if (SPI1CON1bits.MODE16)
        {
            temp = payload[i];
        }
        else
        {
            temp = payload[i] & 0x00ff;
        }

        while( SPI1STATbits.SPITBF);
        SPI2BUF = temp;
    }

    // chip select
    temp = 3;
    while(temp--);
    LATGbits.LATG9 = 1;
}
/* end of file */
