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

#include "i2c_slave.h"
#include "led.h"



#define I2C_SLAVE_ISR_PRIORITY      (0b111)



// i2c receive buffer
volatile i2c_slaver_rx_buffer_t slave_i2C_rx_buffer;



/*!
 * @name  i2c_slave_init().
 * @brief RG2 as CLK, RG3 as SDA and 100KHz
 * @param None.
 */
void i2c_slave_init( uint8_t slave_address )
{
    uint8_t temp = 0;

    // check for valid I2C Slave address, note that some addresses are reserved.
    temp = slave_address & I2C_SLAVE_ADDRESS_MASK;
    if( temp == RESERVED_I2C_SLAVE_ADDRESS_GEN_CALL ) return;
    if( temp == RESERVED_I2C_SLAVE_ADDRESS_START_BYTE ) return;
    if( temp == RESERVED_I2C_SLAVE_ADDRESS_CBUS ) return;
    if( temp == RESERVED_I2C_SLAVE_ADDRESS_RESERVED1 ) return;
    if( temp == RESERVED_I2C_SLAVE_ADDRESS_RESERVED2 ) return;
    if( temp == RESERVED_I2C_SLAVE_ADDRESS_HSMODE ) return;
    if( ( temp & 0xF0 ) == RESERVED_I2C_SLAVE_ADDRESS_RESERVED3 ) return;

    // initialize rx buffer
    slave_i2C_rx_buffer.count = 0;
    slave_i2C_rx_buffer.addrs_count = 0;
    memset((void*)slave_i2C_rx_buffer.bytes, 0, sizeof(slave_i2C_rx_buffer.bytes));

    // configure I2C to a known state
    I2C1CON = 0;
    I2C1BRG = 0;
    I2C1STAT = 0;
    I2C1ADD = 0;

    I2C1ADD = I2C_SLAVE_ADDRESS;
    I2C1MSK = 0;                // disabled address masking

    TRISGbits.TRISG2 = 1;       // I2C pins need to be input I/O
    TRISGbits.TRISG3 = 1;       // I2C pins need to be input I/O

    I2C1CONbits.ACKDT = 1;      //  Value that will be transmitted when the user software initiates an Acknowledge sequence.
    I2C1CONbits.GCEN = 1;       //  General Call Enable bit
    I2C1CONbits.ACKEN = 1;      // Initiates the Acknowledge sequence on the SDAx and SCLx pins and transmits the ACKDT data bit
    I2C1CONbits.STREN = 1;      //
    I2C1CONbits.RCEN = 1;       // Receive Enable bit
    I2C1CONbits.A10M = 1;       //  Slave Address bit
    I2C1CONbits.STREN = 1;      //  SCLx Clock Stretch Enable bit
    I2C1CONbits.IPMIEN = 0;     // To  enable  address  masking,  the  IPMI  (Intelligent Peripheral Management Interface) must be disabled
    I2C_RELEASE_CLOCK_STRETCH();

    IFS1bits.SI2C1IF = 0;       // initialize slave I2C interrupt flag
    IPC4bits.SI2C1IP = I2C_SLAVE_ISR_PRIORITY;  // Slave I2C1 Event Interrupt Priority bits
    IEC1bits.SI2C1IE = 1;       //   Slave I2C1 Event Interrupt Enable bit
    I2C1CONbits.I2CEN = 1;       //  I2Cx Enable bit
}




/*!
 * @name  i2c_slave_isr().
 * @brief Call this function in the device ISR Routine.
 * @param None.
 */
void i2c_slave_isr(void)
{
    I2C1CONbits.SCLREL = 0;     // Holds SCLx clock low (clock stretch)
//    LED5 ^= 1;                  // for debugging purpose only

    // make sure we are saving I2C payload instead of address
    if(I2C1STATbits.D_A)
    {
        // roll over payload storage if needed
        if(slave_i2C_rx_buffer.count >= I2C_SLAVE_BUFFER_SIZE) slave_i2C_rx_buffer.count = 0;

        // store payload to our buffer
        slave_i2C_rx_buffer.bytes[slave_i2C_rx_buffer.count] = I2C1RCV;
        slave_i2C_rx_buffer.count++;
    }
    else
    {
        // roll over address storage if needed
        if( slave_i2C_rx_buffer.addrs_count >= 2 ) slave_i2C_rx_buffer.addrs_count = 0;

        // store address to our address buffer
        slave_i2C_rx_buffer.addrs[slave_i2C_rx_buffer.addrs_count] = I2C1RCV;
        slave_i2C_rx_buffer.addrs_count++;
    }
    
    IFS1bits.SI2C1IF = 0;
    I2C1CONbits.SCLREL = 1;     //   Releases the SCLx clock (clock stretch)
}
/* end of file */