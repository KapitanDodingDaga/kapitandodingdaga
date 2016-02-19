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
#include <stdbool.h>
#include <xc.h>

#include "crc_calc.h"
#include "crc_calc_test.h"
#include "sio.h"

/*!
 * @name  crc_calc_test().
 * @brief None.
 * @param None.
 */
void crc_calc_test(void)
{
    uint8_t i = 0;
    uint8_t msg[6];
    uint16_t crc = 0;
    
    crc_calc_init(CRC16_POLYNOMIAL_GENERATOR, CRC16_POLYNOMIAL_LENGTH);

    for( i = 0; i < sizeof(msg); i++ )
    {
        msg[i] = i + 4;
    }

    i = 0;
    while(true)
    {   
        crc = crc_calc( sizeof(msg), msg , 0 );

        // print CRC to serial com 
        sio_tx( sizeof(crc), (uint8_t*) &crc, false );
        sio_tx( sizeof(i), (uint8_t*) &i, false );
    }
}
/* end of file */
