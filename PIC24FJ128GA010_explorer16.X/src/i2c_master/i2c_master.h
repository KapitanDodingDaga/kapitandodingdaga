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
#ifndef I2C_MASTER_H
#define	I2C_MASTER_H

#ifdef	__cplusplus
extern "C" {
#endif


// data structure for I2C transmit frame.
typedef struct i2c_master_tx_buffer_s
{
    bool start_bit;
    uint16_t packet_length;     // the number of bytes to send including the address
    uint8_t packets[50];        // pointer to the list of bytes to send
    bool stop_bit;              // set to true to generate STOP at the end or false otherwise

} i2c_master_tx_buffer_t;



// buffer for I2C Recieve.
#define I2C_MASTER_BUFFER_SIZE  100
typedef struct i2c_master_rx_buffer_s
{ 
    uint8_t count;
    uint8_t bytes[I2C_MASTER_BUFFER_SIZE];
} i2c_master_rx_buffer_t;




typedef enum i2c_master_resp_s
{
    I2C_MASTER_OK = 0,      // all is well
    I2C_MASTER_ERR_GEN,     // generic error
    I2C_MASTER_ERR_COL,     // collision error
    I2C_MASTER_ERR_NACK,     // NACK from slave
    I2C_MASTER_ERR_NULL,     // NULL buffers

} i2c_master_resp_t;



void i2c_master_tx_init(void);
i2c_master_resp_t i2c_master_tx(i2c_master_tx_buffer_t* tx);
uint8_t i2c_master_rx(void);
void i2c_master_restart(void);


#ifdef	__cplusplus
}
#endif

#endif	/* I2C_MASTER_H */
/* end of file */

