/********************************************************************
 * Dependencies:    See INCLUDES section below
 * Processor:       PICxxx
 * Compiler:        XCx
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

    // I2C transmit frame.
    #define I2C_FRAME_LENGTH_LIMIT      100
    typedef struct i2c_master_tx_buffer_s
    {
        bool start_bit;
        uint16_t packet_length;     // the number of bytes to send including the address
        uint8_t packets[I2C_FRAME_LENGTH_LIMIT];        // pointer to the list of bytes to send
        bool stop_bit;              // set to true to generate STOP at the end or false otherwise
    } i2c_master_tx_buffer_t;

    // error codes
    typedef enum i2cm_resp_e
    {
        I2CM_OK = 0,
        I2CM_ERROR,
        I2CM_BUS_BUSY,
        I2CM_TX_ERROR,
    } i2cm_resp_t;


    uint32_t i2cm_init(void);
    void i2cm_denit(void);
    i2cm_resp_t i2cm_tx( i2c_master_tx_buffer_t*  payload );

#ifdef	__cplusplus
}
#endif

#endif	/* I2C_MASTER_H */
/* end of file */

