/********************************************************************
* Dependencies:    See INCLUDES section below
* Processor:       PIC16F1937
* Compiler:        XC8
* Board:           PIC DEM 2 Plus
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
#include "huvent_fsm.h"
#include "huvent_que.h"

 uint16_t convert_u8_u16(uint8_t hi, uint8_t lo)
 {
    return ((hi << 8) | lo );
 }

 /*! name:  byteSwap
 * arg1: a word of data (16 bits)
 * returns: the word with the bytes swapped
 */
unsigned short byteSwap( unsigned short wordIn)
{
	unsigned short wordOut = 0;
	wordOut = wordIn << 8;
	wordOut |= ((wordIn >> 8) & 0xFF);

	return wordOut;
}

 /*! name:  glue_post_error
 * arg1: a word of data (16 bits)
 * returns: the word with the bytes swapped
 */
void glue_post_error(void)
{
    huvent_que_post( HUVENT_ERROR_DETECTED );
}
/* end of file */