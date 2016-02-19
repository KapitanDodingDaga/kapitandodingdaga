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

#include "spi_master.h"
#include "spi_master_test.h"

/*!
 * @name  spi_master_test().
 * @brief None.
 * @param None.
 */
void spi_master_test(void)
{
    uint16_t i = 0;
    uint16_t payload[100];

    spi_master_init();

    for(i = 0; i<= 100; i++)
    {
       payload[i] = i + 1; 
    }

    while(true)
    {
        spi_master_tx(sizeof(payload) / 2, payload);
    }
}
/* end of file */
