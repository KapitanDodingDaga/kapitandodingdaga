/********************************************************************
* Dependencies:    See INCLUDES section below
* Processor:       PIC24FJ128G101
* Compiler:        XC16
* Author:          Sherwin Tiongson
* Company:         Microchip Technology, Inc.
*
* Software License Agreement:
*
* The software supplied herewith by Microchip Technology Incorporated
* (the "Company") for its PICmicro® Microcontroller is intended and
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

#include "i2c_master.h"


// i2c receive buffer
static volatile i2c_master_rx_buffer_t rx;


/*!
 * @name  i2c_master_start().
 * @brief Generate an i2c start event.
 * @param None.
 */
static void i2c_master_start(void)
{
    while(I2C1CONbits.SEN);
    I2C1CONbits.SEN = 1;
    while(I2C1CONbits.SEN);
}





/*!
 * @name  i2c_master_stop().
 * @brief Generate an i2c stop event.
 * @param None.
 */
static void i2c_master_stop(void)
{
    while(I2C1CONbits.PEN);
    I2C1CONbits.PEN = 1;
    while(I2C1CONbits.PEN);
}






/*!
 * @name  i2c_master_restart().
 * @brief Generate an i2c restart event.
 * @param None.
 */
void i2c_master_restart(void)
{
    while(I2C1CONbits.RSEN);
    I2C1CONbits.RSEN = 1;
    while(I2C1CONbits.RSEN);
}






/*!
 * @name  i2c_master_idle().
 * @brief Waits until the the MCU master is idle.
 * @param None.
 */
static void i2c_master_idle(void)
{
    while(  I2C1CONbits.SEN || I2C1CONbits.RSEN ||
            I2C1CONbits.PEN || I2C1CONbits.RCEN ||
            I2C1CONbits.ACKEN || I2C1STATbits.TRSTAT     );
}






/*!
 * @name  i2c_master_tx_init().
 * @brief Initialize I2C pheripheral. RG2 as CLK, RG3 as SDA and 100KHz
 * @param None.
 */
void i2c_master_tx_init(void )
{
    // initialize rx buffer
    rx.count = 0;
    memset((void*)rx.bytes, 0, sizeof(rx.bytes));

    // configure I2C to a known state
    I2C1CON = 0;
    I2C1BRG = 0;
    I2C1STAT = 0;

    I2C1BRG = 18;
    
    IFS1bits.MI2C1IF = 0;       // initialize slave I2C interrupt flag
    IPC4bits.MI2C1IP = 7;  // Slave I2C1 Event Interrupt Priority bits
    IEC1bits.MI2C1IE = 1;       //   Slave I2C1 Event Interrupt Enable bit

    TRISGbits.TRISG2 = 1;
    TRISGbits.TRISG3 = 1;

    I2C1CONbits.RCEN = 0;       // Receive Enable bit
    I2C1CONbits.A10M = 0;       //  Slave Address bit
    I2C1CONbits.STREN = 1;      //  SCLx Clock Stretch Enable bit
    I2C1CONbits.I2CEN = 1;       //  I2Cx Enable bit

    i2c_master_idle();
}





/*!
 * @name  i2c_delay().
 * @brief None.
 * @param None.
 */
void i2c_delay(void)
{
    uint16_t i = 100;
    while(i--);
}





/*!
 * @name  i2c_master_tx().
 * @brief Transfer an entire I2C frame.
 * @param tx - Pointer to the frame to send.
 * @return Returns the transaction status.
 */
i2c_master_resp_t i2c_master_tx( i2c_master_tx_buffer_t * tx )
{
    uint8_t i = 0;
    i2c_master_idle();

    if(true == tx->start_bit) i2c_master_start();

    for( i = 0; i < tx->packet_length; i++ )
    {
        I2C1TRN = tx->packets[i];
        i2c_master_idle();

        // check for errors
        if(I2C1STATbits.IWCOL) return   I2C_MASTER_ERR_COL;
        if(I2C1STATbits.ACKSTAT) return   I2C_MASTER_ERR_NACK;
        
    }
    if(true == tx->stop_bit) i2c_master_stop();
    return I2C_MASTER_OK;
}




/*!
 * @name  i2c_master_rx().
 * @brief Receives I2C bytes.
 * @return Returns the I2C read byte.
 */
uint8_t i2c_master_rx( void )
{
    I2C1CONbits.RCEN = 1;
    while(I2C1CONbits.RCEN);
    I2C1STATbits.I2COV = 0;
    return ( I2C1RCV );
}
/* end of file */

