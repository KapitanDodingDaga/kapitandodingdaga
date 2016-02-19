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
#ifndef CRC_CALC_H
#define	CRC_CALC_H

#ifdef	__cplusplus
extern "C" {
#endif

// some known limits from datasheet
#define CRC16_POLYNOMIAL_MAX_LENGTH         (0x0F)

// for Polynomial = x16 + x12 + x5 + 1
#define CRC16_POLYNOMIAL_GENERATOR          (0x8005)
#define CRC16_POLYNOMIAL_LENGTH             (0x0F)

// MACROS
#define     CRC_FIFO_WRITE(data)            ( CRCDAT = data )
#define     CRC_FIFO_IS_EMPTY               (CRCCONbits.CRCMPT)
#define     CRC_FIFO_ISNOT_EMPTY            (!CRCCONbits.CRCMPT)
#define     CRC_FIFO_FULL                   (CRCCONbits.CRCFUL)
#define     CRC_SERIAL_SHIFTER_START        (CRCCONbits.CRCGO = 1)
#define     CRC_SERIAL_SHIFTER_OFF          (CRCCONbits.CRCGO = 0)

void crc_calc_init(uint16_t poly_generator, uint8_t poly_length );
uint16_t crc_calc( uint8_t len, uint8_t* payload, uint8_t initial_crc );

#ifdef	__cplusplus
}
#endif

#endif	/* CRC_CALC_H */
/* end of file */

