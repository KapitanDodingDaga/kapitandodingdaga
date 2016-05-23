/********************************************************************
 * Dependencies:    See INCLUDES section below
 * Processor:       PICxxxx
 * Compiler:        XCxx
 * Board:           ---
 * Author:          Sherwin Tiongson
 * Note:            This code is written for illustration / sample code
 *                  only and not designed to be production worthy. Modules
 *                  are not tested (not unit/target tested). 
 *
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
#include <xc.h>
#include <stdint.h>
#include <stdbool.h>

#include "plib_legacy.h"
#include "spi_slave.h"
#include "led.h"
#include "pic32mx_lab_defines.h"
#include "pic32mx_lab_spi.h"
#include "io_printf.h"

//// SPI clock settings
//#define  PHERIPHERAL_CLK    (8000000)   // our PB_CLOCK is 8MHz
//#define  SPI_CLK_RATE       (4000000)   // target SPI bus speed
//#define  SPI_SRC_CLK     ( PHERIPHERAL_CLK / SPI_CLK_RATE )     // srcClkDiv=srcClk/bitrate;
//
//// SPI settings
//#define  SPI_MODULE      ( SPI_CHANNEL1 )
//#define  SPI_CONFIG      ( SPI_OPEN_SLVEN | SPI_OPEN_SSEN | SPI_OPEN_MODE16 | SPI_OPEN_RBF_NOT_EMPTY | SPI_OPEN_ON )

volatile spi_slave_buffer_t spi_slave_buffer;

void spi_slave_flush_rxbuffer(void)
{   
    uint16_t i = 0;
    io_printf("\n\r spi_slave_buffer.payload_count = %d", spi_slave_buffer.payload_count);
    for( i = 0; i < spi_slave_buffer.payload_count; i++)
    {     
        io_printf("\n\r spi_slave_buffer.payload[%d] = %x", i,spi_slave_buffer.payload[i]);
    }
}

/*!
 * @name  spi_slave_init().
 * @brief None.
 * @param None.
 */
void spi_slave_init(void)
{
    uint32_t temp = 0;
    // ***************** PIM MAP *****************************************************
    // ****** DEVICE PINOUT   ****************************** PIM PINOUT **************
    //  SDO1/OC1/INT0/RD0 ------------------------------------- 53, 72 (RF8 - SD01)
    //  T5CK/SDI1/RC4 ----------------------------------------- 9, 54  (RF7 - SDI1)
    //  SCK1/IC3/PMCS2/PMA15/RD10 ----------------------------- 55, 70 (RF6 - SDA1)
    //  SS1/IC2/RD9 ------------------------------------------- 23     (RB2 - SS1)
    // *******************************************************************************

    // refreash buffer
    spi_slave_buffer.error_count = 0;
    spi_slave_buffer.payload_count = 0;
    memset( (void*) spi_slave_buffer.payload, 0, sizeof(spi_slave_buffer.payload) );
    
     SPI1CONbits.ON = 0; // SPI Peripheral On bit

     SPI1BUF = 0;
     SPI1CON = 0;
     temp = SPI1BUF;
     IFS0bits.SPI1EIF = 0;
     IFS0bits.SPI1RXIF = 0;
     IFS0bits.SPI1TXIF = 0;

    // configure error interrupt
    IFS0bits.SPI1EIF = 0;

    // configure received interrupt
    IFS0bits.SPI1RXIF = 0;
    IPC5bits.SPI1IP = 4;
    IPC5bits.SPI1IS = 2;

    // configure transmit interrupt
    IFS0bits.SPI1TXIF = 0;
    IEC0bits.SPI1TXIE = 1;
    SPI1CONbits.DISSDO = 1;
    
    SPI1CONbits.SSEN = 1;       //  Slave Select Enable (Slave mode) bit
    SPI1CONbits.DISSDO = 0;     // Disable SDOx pin bit
    SPI1CONbits.SIDL = 0;       //  Stop in Idle Mode bit
    SPI1CONbits.ENHBUF = 1;     //  Enhanced Buffer Enable bit
    SPI1CONbits.MSSEN = 0;
    SPI1CONbits.SRXISEL = 0b01;
    SPI1CONbits.MODE16 = 0b01;
    SPI1CONbits.MSTEN = 0; // slave mode
    SPI1CONbits.CKP = 0;
    SPI1CONbits.SMP = 0;  // SMP value is ignored when SPI is used in Slave mode. The module always uses SMP = 0.
   
    // enable interrupt sources
    IEC0bits.SPI1RXIE = 1;
    IEC0bits.SPI1TXIE = 0;
    IEC0bits.SPI1EIE = 1;

    SPI1STATCLR=0x40;
    SPI1CONbits.ON = 1; // SPI Peripheral On bit
}


/*!
 * @name  spi_slave_isr().
 * @brief None.
 * @param None.
 */
void spi_slave_isr(void)
{
    // receive interrupt
    if( IEC0bits.SPI1RXIE &  IFS0bits.SPI1RXIF)
    {
        // read all data in fifo
        while(SPI1STATbits.RXBUFELM)
        {
            // read first before doing anything
            spi_slave_buffer.payload[spi_slave_buffer.payload_count] = (uint16_t) SPI1BUF;
            IFS0bits.SPI1RXIF = 0;

            switch (spi_slave_buffer.payload[spi_slave_buffer.payload_count])
            {
                case  TOKEN_READ_REQ_I2C:

                break;

                case  TOKEN_READ_REQ_SPI:
                      // act as EEPROM by replying right away
                      SPI1BUF = pic32mx_lab_spi_message[spi_slave_buffer.payload_count];
                break;
            }

            if( spi_slave_buffer.payload_count < (PIC32MX_SPI_TOKEN_LENGTH + PIC32MX_SPI_PAYLOAD_LENGTH) )
            {
                spi_slave_buffer.payload_count++;
            }
            else
            {
                spi_slave_buffer.payload_count = 0;
            }
        }
    }

    // tx interrupt
    if(  INTGetFlag( INT_SPI1TX ) & ( IEC0bits.SPI1TXIE  ) )
    {
        INTClearFlag( INT_SPI1TX );
    }

        // error interrupt
    if(  INTGetFlag( INT_SPI1E ) & ( IEC0bits.SPI1EIE ) )
    {
        INTClearFlag( INT_SPI1E );
        spi_slave_buffer.error_count++;
    }
}


/*!
 * @name  spi_slave_rx().
 * @brief None.
 * @param None.
 */
spi_slave_buffer_t spi_slave_rx(void)
{
    return spi_slave_buffer;
}
/* end of file */
