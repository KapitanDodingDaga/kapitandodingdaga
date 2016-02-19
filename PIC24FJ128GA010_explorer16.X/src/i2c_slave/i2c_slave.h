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
#ifndef I2C_SLAVE_H
#define	I2C_SLAVE_H

#ifdef	__cplusplus
extern "C" {
#endif


// buffer for I2C Recieve.
#define I2C_SLAVE_BUFFER_SIZE  100
typedef struct i2c_slaver_rx_buffer_s
{
    // storage for the 10 bit address
    uint8_t addrs_count;
    uint8_t addrs[2];

    // storage for the payload
    uint8_t count;
    uint8_t bytes[I2C_SLAVE_BUFFER_SIZE];

} i2c_slaver_rx_buffer_t;

extern volatile i2c_slaver_rx_buffer_t slave_i2C_rx_buffer;

// MACROS
#define I2C_RELEASE_CLOCK_STRETCH()       (I2C1CONbits.SCLREL = 1)
#define I2C_ENABLE()                      (I2C1CONbits.I2CEN = 1)
#define I2C_DISABLE()                     (I2C1CONbits.I2CEN = 0)


#define I2C_SLAVE_ADDRESS                               (0x23)
#define I2C_SLAVE_ADDRESS_MASK                          (0b11111110)

// the following address are I2C reserve addresses DO NOT USE IT!!!
#define RESERVED_I2C_SLAVE_ADDRESS_GEN_CALL             (0b00000000)   // General Call Address
#define RESERVED_I2C_SLAVE_ADDRESS_START_BYTE           (0b00000010)   // Start Byte
#define RESERVED_I2C_SLAVE_ADDRESS_CBUS                 (0b00000010)   // CBUS Address
#define RESERVED_I2C_SLAVE_ADDRESS_RESERVED1            (0b00000100)   // Reserved
#define RESERVED_I2C_SLAVE_ADDRESS_RESERVED2            (0b00000110)   // Reserved
#define RESERVED_I2C_SLAVE_ADDRESS_HSMODE               (0b00000110)   // HS Mode Master Code
#define RESERVED_I2C_SLAVE_ADDRESS_RESERVED3            (0b11110000)   // Reserved

void i2c_slave_init( uint8_t slave_address );
void i2c_slave_isr(void);

#ifdef	__cplusplus
}
#endif

#endif	/* I2C_SLAVE_H */
/* end of file */

