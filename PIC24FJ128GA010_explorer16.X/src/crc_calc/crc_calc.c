/********************************************************************
 * Dependencies:    See INCLUDES section below
 * Processor:       PICxxxx
 * Compiler:        XCxx
 * Board:           ---
 * Author:          Sherwin Tiongson
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
#include <stddef.h>
#include <stdbool.h>
#include <xc.h>

#include <crc.h>
#include "crc_calc.h"


/*!
 * @name  crc_calc_init().
 * @brief None.
 * @param None.
 */
void crc_calc_init(uint16_t poly_generator, uint8_t poly_length )
{
    // we got a maximum 15 degree polynomial as PLEN is only 4 bit
    if( poly_length > CRC16_POLYNOMIAL_MAX_LENGTH ) return;

    // configure to a known state
    CRCCON = 0;
    CRCXOR = 0;
    CRCWDAT = 0;

    // we got a maximum 15 degree polynomial as PLEN is only 4 bit
    CRCCONbits.PLEN = poly_length;

    // configure the generator polynomial
    CRCXOR = poly_generator;
}


/*!
 * @name  crc_calc().
 * @brief None.
 * @param None.
 */
uint16_t crc_calc( uint8_t len, uint8_t* payload, uint8_t initial_crc )
{
    if( NULL == payload) return 0;

    // refreash HW CRC output register
    CRCWDAT = initial_crc;

    // load entire payload and calculate payload CRC
    do
    {
        // wait until fifo is empty before turning off the serial shifter
       while( CRC_FIFO_ISNOT_EMPTY );
       CRC_SERIAL_SHIFTER_OFF;

       // load payload until fifo is full
       while( ( (!CRC_FIFO_FULL) && ( 0 < len ) ) )
       {
          CRC_FIFO_WRITE(*payload);
          payload++;
          len--;
       }

       CRC_SERIAL_SHIFTER_START;

    }  while (0 < len);

    // wait until serial shifting is complete
    while(CRC_FIFO_ISNOT_EMPTY);

    // a little bit of delay just incase
       Nop();
       Nop();

    // return payload CRC
    return ( CRCWDAT );
}
/* end of file */
