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
#include <stdlib.h>
#include <stdbool.h>
#include <xc.h>

#include "i2c_master.h"
#include "i2c_master_test.h"

void i2c_master_test(void)
{
    // create an I2C Frame
    i2c_master_tx_buffer_t frame;
    i2c_master_resp_t resp = I2C_MASTER_OK;
    frame.start_bit = true;
    frame.packet_length = 4;
    frame.packets[0] = CMD_EEPROM_WRITE;
    frame.packets[1] = 0x22;
    frame.packets[2] = 0x33;
    frame.packets[3] = 0x44;
    frame.stop_bit = true;



    // I2C
    i2c_master_tx_init();
    while(1)
    {
        resp = i2c_master_tx(&frame);
    }
}
/* end of file */
