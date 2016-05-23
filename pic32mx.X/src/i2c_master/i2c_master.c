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
#include "i2c_master.h"


#define I2C_MASTER_MODULE           I2C2
#define I2C_MASTER_CLK_SPEED        100000      // I2C SCK speeb in Hz
#define I2C_MASTER_CLK_SOURCE       8000000     // PBCLK in Hz


/*!
 * @name  i2cm_init().
 * @brief Initialize I2C pheripheral. RA2 as CLK, RA3 as SDA and 100KHz.
 * @param None.
 */
uint32_t i2cm_init(void)
{

    uint32_t i2c_clk = 0;
    INTSetVectorPriority(INT_I2C_2_VECTOR, INT_PRIORITY_LEVEL_4 );
    INTSetVectorSubPriority( INT_I2C_2_VECTOR,  INT_PRIORITY_LEVEL_2);
    INTClearFlag(INT_I2C2);
    INTEnable(INT_I2C2, INT_ENABLED);
    PORTSetPinsDigitalOut(IOPORT_A, BIT_2 | BIT_3 );
    I2CConfigure(I2C_MASTER_MODULE, I2C_ENABLE_HIGH_SPEED );
    i2c_clk = I2CSetFrequency(I2C_MASTER_MODULE, I2C_MASTER_CLK_SOURCE, I2C_MASTER_CLK_SPEED );
    I2CEnable(I2C_MASTER_MODULE, TRUE );
    return i2c_clk;
}

/*!
 * @name  i2cm_denit().
 * @brief None.
 * @param None.
 */
void i2cm_denit(void)
{
    I2CEnable(I2C_MASTER_MODULE, false );
}

/*!
 * @name  i2cm_tx().
 * @brief None.
 * @param None.
 */
i2cm_resp_t i2cm_tx( i2c_master_tx_buffer_t*  payload )
{
    uint8_t i = 0;
    if( NULL == payload ) return I2CM_ERROR;
    if( 0 == payload->packet_length ) return I2CM_ERROR;
    
    // check first if bus is idle before we start a transaction
    while( !I2CBusIsIdle( I2C_MASTER_MODULE ) )
    {
        io_printf("\n\r bus is busy..1" );
    }

    // start bit
    if( payload->start_bit )
    {
        I2CStart(I2C_MASTER_MODULE);
    }

    // send the payload
    for( i = 0; i < payload->packet_length; i++ )
    {
        while( !I2CTransmitterIsReady(I2C_MASTER_MODULE) )
        {
            io_printf("\n\r bus is busy..2" );
        }
        
        io_printf("\n\r byte = %d", payload->packets[ i ] );
        if( I2C_SUCCESS != I2CSendByte(I2C_MASTER_MODULE, payload->packets[i] ) )
        {
            io_printf("\n\r tx error.." );
            return I2CM_TX_ERROR;
        }
        
    }

     // stop bit
    if( payload->stop_bit )
    {
        I2CStop(I2C_MASTER_MODULE);
    }

    return I2CM_OK;
}
/* end of file */
