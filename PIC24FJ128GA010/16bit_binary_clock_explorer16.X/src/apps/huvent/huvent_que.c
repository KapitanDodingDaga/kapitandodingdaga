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
#include <limits.h>
#include <stddef.h>
#include <xc.h>

#include "fifo_static.h"
#include "huvent_fsm.h"
#include "huvent_que.h"

static fifo_buffer_t huvent_buffer;

/*!
 * @name  huvent_que_init().
 * @brief None.
 * @param None.
 */
huvent_resp_t huvent_que_init(void)
{
    fifo_resp_t resp = FIFO_STATIC_OK;
    fifo_static_init( &huvent_buffer );
    fifo_static_refresh( &huvent_buffer );
    resp = fifo_static_getStatus( &huvent_buffer );
    return ( ( huvent_resp_t )resp );
}


/*!
 * @name  huvent_que_post().
 * @brief None.
 * @param None.
 */
huvent_resp_t huvent_que_post( huvent_t ev )
{
    fifo_resp_t resp = FIFO_STATIC_OK;
    resp = fifo_static_put( &huvent_buffer, ev );
    return ( ( huvent_resp_t )resp );
}


/*!
 * @name  huvent_que_get().
 * @brief None.
 * @param None.
 */
huvent_resp_t huvent_que_get( huvent_t* huvent_out )
{
    uint8_t byte_out;
    fifo_resp_t resp = FIFO_STATIC_OK;
    resp = fifo_static_get( &huvent_buffer, &byte_out);
    if( FIFO_STATIC_OK == resp )
    {
        *huvent_out = byte_out;
    }
   return ( ( huvent_resp_t )resp );
}
/* end of file */
