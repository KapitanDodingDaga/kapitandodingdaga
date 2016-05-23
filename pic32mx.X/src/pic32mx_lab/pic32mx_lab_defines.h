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
 * (the "Company") for its PICmicro� Microcontroller is intended and
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
#ifndef PIC32MX_LAB_DEFINES_H
#define	PIC32MX_LAB_DEFINES_H

#ifdef	__cplusplus
extern "C" {
#endif
    
    #define PIC32MX_SPI_TOKEN_OFFSET        0
    #define PIC32MX_SPI_TOKEN_LENGTH        1

    #define PIC32MX_SPI_PAYLOAD_OFFSET      (PIC32MX_SPI_TOKEN_OFFSET + PIC32MX_SPI_TOKEN_LENGTH)
    #define PIC32MX_SPI_PAYLOAD_LENGTH      250

    typedef enum token_e
    {
        TOKEN_INIT_REQ = 0,
        TOKEN_WRITE_REQ,
        TOKEN_READ_REQ_I2C,
        TOKEN_READ_REQ_SPI,
        TOKEN_READ_RESP,
        TOKEN_IDLE
    } token_t;

#ifdef	__cplusplus
}
#endif

#endif	/* PIC32MX_LAB_DEFINES_H */
/* end of file */

