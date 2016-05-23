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
#include "pic32mx_lab_defines.h"
#include "spi_slave.h"
#include "pic32mx_lab_spi.h"
#include "led.h"


#define PIC32MX_SPI_BUFFER_SIZE         SPI_SLAVE_BUFFER_SIZE

// local copies of received message
uint16_t pic32mx_lab_spi_message[PIC32MX_SPI_BUFFER_SIZE / 2];
static token_t spi_token = TOKEN_IDLE;

// temporary emulation of physical memory
static uint16_t spi_phy_emulation[PIC32MX_SPI_PAYLOAD_LENGTH / 2];

/*!
 * @name  pic32mx_lab_spi().
 * @brief None.
 * @param None.
 */
void pic32mx_lab_spi(void)
{
    switch(spi_token)
    {
        case TOKEN_IDLE:
        {
            LED3 ^= 1;
            if( spi_slave_buffer.payload_count >= (SPI_SLAVE_BUFFER_SIZE / 2) )
            {
                // get a copy of spi slave received data
                memmove( pic32mx_lab_spi_message, (void*) spi_slave_buffer.payload, PIC32MX_SPI_BUFFER_SIZE);

                // refreash SPI Slave buffer after having a local copy
                memset( (void*)spi_slave_buffer.payload, 0, sizeof(spi_slave_buffer.payload));
                spi_slave_buffer.payload_count = 0;
                spi_slave_buffer.error_count = 0;
                
                // check and update request type
                spi_token = pic32mx_lab_spi_message[PIC32MX_SPI_TOKEN_OFFSET];
            }
            break;
        }

        case TOKEN_INIT_REQ:
        {
            pic32mx_lab_spi_init();
            break;
        }

        case TOKEN_WRITE_REQ:
        {
            pic32mx_lab_spi_write();
            break;
        }


        case TOKEN_READ_REQ_I2C:
        case TOKEN_READ_REQ_SPI:
        {
            // for easy implementation read functionality
            // will be implemented in SPI RX ISR.
//            pic32mx_lab_spi_read();
            break;
        }


        default:
        {
            spi_token = TOKEN_IDLE;
            break;
        }
    }
}

/*!
 * @name  pic32mx_lab_spi_init().
 * @brief None.
 * @param None.
 */
void pic32mx_lab_spi_init(void)
{
    memset(pic32mx_lab_spi_message, 0, sizeof(pic32mx_lab_spi_message));
    spi_token = TOKEN_IDLE;
}


/*!
 * @name  pic32mx_lab_spi_write().
 * @brief None.
 * @param None.
 */
void pic32mx_lab_spi_write(void)
{
    // write to physical memory
    memmove(spi_phy_emulation, &pic32mx_lab_spi_message[PIC32MX_SPI_PAYLOAD_OFFSET], PIC32MX_SPI_PAYLOAD_LENGTH );

    // update token to idle to start waiting for complete message
    spi_token = TOKEN_IDLE;
}


/*!
 * @name  pic32mx_lab_spi_read().
 * @brief None.
 * @param None.
 */
void pic32mx_lab_spi_read(void)
{
    uint8_t temp[PIC32MX_SPI_BUFFER_SIZE] = {0};

    // read message payload from physical memory
     memmove( temp, spi_phy_emulation, PIC32MX_SPI_PAYLOAD_LENGTH );

     // update message token
     temp[PIC32MX_SPI_TOKEN_OFFSET] = TOKEN_READ_RESP;          // offset 250
     temp[PIC32MX_SPI_TOKEN_OFFSET + 1] = TOKEN_READ_RESP;      // offset 251
     temp[PIC32MX_SPI_TOKEN_OFFSET + 2] = TOKEN_READ_RESP;      // offset 252
     temp[PIC32MX_SPI_TOKEN_OFFSET + 3] = TOKEN_READ_RESP;      // offset 253
     temp[PIC32MX_SPI_TOKEN_OFFSET + 4] = TOKEN_READ_RESP;      // offset 254
     temp[PIC32MX_SPI_TOKEN_OFFSET + 5] = TOKEN_READ_RESP;      // offset 255

    // reply TOKEN_READ_RESP message to main processor
    

     // update token to idle to start waiting for complete message
    spi_token = TOKEN_IDLE;
}
/* end of file */
