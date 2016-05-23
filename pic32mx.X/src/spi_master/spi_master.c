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
#include <stdint.h>
#include <stdbool.h>
#include <xc.h>

#include "plib_legacy.h"
#include "spi_master.h"

// SPI clock settings
#define  PHERIPHERAL_CLK    (8000000)   // our PB_CLOCK is 8MHz
#define  SPI_CLK_RATE       (500000)   // target SPI bus speed
#define  SPI_SRC_CLK     ( PHERIPHERAL_CLK / SPI_CLK_RATE )     // srcClkDiv=srcClk/bitrate;

// SPI settings
#define  SPI_MODULE      ( SPI_CHANNEL2 )
#define  SPI_CONFIG      ( SPI_OPEN_MSTEN | SPI_OPEN_MODE8 )  // working and sudgested configuration as we have a total control over SS pin
//#define  SPI_CONFIG      ( SPI_OPEN_MSTEN | SPI_OPEN_MSSEN | SPI_OPEN_MODE8 )  // working
//#define  SPI_CONFIG      ( SPI_OPEN_MSTEN | SPI_OPEN_MSSEN | SPI_OPEN_MODE16 ) // working
//#define  SPI_CONFIG      ( SPI_OPEN_MSTEN | SPI_OPEN_MSSEN | SPI_OPEN_MODE32 ) // bug found

/*!
 * @name  spi_master_init().
 * @brief None.
 * @param None.
 */
void spi_master_init(void)
{
    //************************** PINOUT *******************************
    // ERXDV/AERXDV/ECRSDV/AECRSDV/SCL4/SDO2/U3TX/PMA3/CN10/RG8
    // ECRS/SDA4/SDI2/U3RX/PMA4/CN9/RG7
    // ECOL/SCK2/U6TX/U3RTS/PMA5/CN8/RG6
    // ERXCLK/AERXCLK/EREFCLK/AEREFCLK/SS2/U6RX/U3CTS/PMA2/CN11/RG9
    // ****************************************************************

    // configure SPI pins
    PORTSetPinsDigitalOut( IOPORT_G, BIT_9 );
    mPORTGSetBits(BIT_9); // SS pin default state

    // configure SPI
    SpiChnOpen( SPI_MODULE, SPI_CONFIG,  SPI_SRC_CLK );
    SpiChnEnable( SPI_MODULE, true );
}

/*!
 * @name  spi_master_tx().
 * @brief None.
 * @param None.
 */
void spi_master_tx( uint16_t len, uint8_t* payload  )
{
    if( NULL == payload ) return;
    if( 0 == len ) return;

    // make sure spi module is idle before we assert the SS pin
    while(SpiChnIsBusy(SPI_MODULE));

    // assert SS pin
    mPORTGClearBits(BIT_9);  

    // transmit the payload
    SpiChnPutS(SPI_MODULE, ( uint32_t* ) payload, len );

    // we make sure the last byte is completely shifted out
    // before we de-assert the SS pin
    while(SpiChnIsBusy(SPI_MODULE));

    // de-assert the SS pin
    mPORTGSetBits(BIT_9);
}
/* end of file */
