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
#include <stdbool.h>
#include <string.h>
#include <xc.h>

#include "spi_slave.h"
#include "led.h"

volatile spi_slave_buffer_t spi_slave_buffer;

/*!
 * @name  spi_slave_init().
 * @brief None.
 * @param None.
 */
void spi_slave_init(void)
{
    // Pinouts:
    // RG6 - SCK2 (PMA5/SCK2/CN8/RG6)
    // RG7 - SDI2 (PMA4/SDI2/CN9/RG7)
    // RG8 - SDO2 (PMA3/SDO2/CN10/RG8)
    // RG9 - SS2 (PMA2/SS2/CN11/RG9)

    // initialize buffer
    spi_slave_buffer.error_count = 0;
    spi_slave_buffer.payload_count = 0;
    memset( (void*) spi_slave_buffer.payload_count, 0, sizeof(spi_slave_buffer.payload_count));

    // disable other multiplex pheripherals; PMP and CN
    PMAEN = 0;
    PMCONbits.PMPEN = 0;    //  PMP is disabled

    // SPI pin settings
    TRISGbits.TRISG6 = 1;
    TRISGbits.TRISG7 = 1;
    TRISGbits.TRISG8 = 0;
    TRISGbits.TRISG9 = 1;

    // interrupts
    IFS2bits.SPI2IF = 0;    //  SPI2 Event Interrupt Flag Status bit
    IFS2bits.SPF2IF = 0;    //  SPI2 Fault Interrupt Flag Status bit
    IEC2bits.SPI2IE = 1;    //  SPI2 Event Interrupt Enable bit
    IEC2bits.SPF2IE = 1;    //  SPI2 Fault Interrupt Enable bit
    IPC8bits.SPI2IP = 0b011;        //  SPI2 Event Interrupt Priority
    IPC8bits.SPF2IP = 0b111;       //  SPI2 Fault Interrupt Priority bits

    // set pheripheral to a known state
    SPI2STAT = 0;
    SPI2CON1 = 0;
    SPI2CON2 = 0;
    SPI2BUF = 0;

    SPI2STATbits.SPIEN = 0;         //  SPIx Enable bit
    SPI2STATbits.SISEL = 0b001;          //  SPIx Buffer Interrupt Mode bits (valid in Enhanced Buffer mode)
    SPI2STATbits.SRMPT = 1;
    SPI2STATbits.SPIROV = 0;    // reset overflow flag

    SPI2CON1bits.PPRE = 0b11;       //  Primary Prescale
    SPI2CON1bits.SPRE = 0b110;      //  Secondary Prescale
    SPI2CON1bits.MSTEN = 0;         // Slave Mode
    SPI2CON1bits.CKP = 1;           //  Clock Polarity
    SPI2CON1bits.SSEN = 1;          // SSx pin is used for Slave mode
    SPI2CON1bits.CKE = 0;           // SPIx Clock Edge Select
    SPI2CON1bits.MODE16 = 1;        // Word/Byte Communication Select
    SPI2CON1bits.DISSDO = 0;        // Disable SDOx pin bit
    SPI2CON1bits.DISSCK = 0;        // Internal SPI clock is enabled
    SPI2CON1bits.SMP = 0;           // SMP must be cleared when SPIx is used in Slave mode.


    SPI2CON2bits.SPIBEN = 1;        //  Enhanced Buffer bit
    SPI2CON2bits.FRMEN = 0;
    SPI2STATbits.SPIEN = 1;         //  SPIx Enable bit
}

/*!
 * @name  spi_slave_isr().
 * @brief None.
 * @param None.
 */
void spi_slave_isr(void)
{
    // for debugging
    LED5 ^= 1;
    IFS2bits.SPI2IF = 0;    //  SPI2 Event Interrupt Flag Status bit

    while(SPI2STATbits.SPIBEC)
    {
        spi_slave_buffer.payload[spi_slave_buffer.payload_count] = SPI2BUF;
        spi_slave_buffer.payload_count++;

        // roll over receive buffer if needed
        if( spi_slave_buffer.payload_count >= SPI_SLAVE_BUFFER_SIZE ) spi_slave_buffer.payload_count = 0;
    }
}


/*!
 * @name  spi_slave_isr().
 * @brief None.
 * @param None.
 */
void spi_slave_error_isr(void)
{
    spi_slave_buffer.error_count++;
    
    SPI2STATbits.SPIROV = 0;    // reset overflow flag
    IFS2bits.SPF2IF = 0;    //  SPI2 Fault Interrupt Flag Status bit
}
/* end of file */
