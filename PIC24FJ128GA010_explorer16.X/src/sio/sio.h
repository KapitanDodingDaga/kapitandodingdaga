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
#ifndef SIO_H
#define	SIO_H

#ifdef	__cplusplus
extern "C" {
#endif

    #define     SIO_BUFFER_SIZE     50
    typedef struct sio_rx_buffer_s
    {
        uint16_t err_count;                     // error counter, gets incremented at error ISR
        uint16_t payload_count;                 // the number of bytes receive.
        uint16_t payload[SIO_BUFFER_SIZE];      // storage for the bytes received.
    } sio_rx_buffer_t;

    extern volatile sio_rx_buffer_t sio_rx_buffer;

    void sio_init(void);
    void sio_tx( uint16_t len, uint8_t* payload, bool break_bit );
    void sio_rx_isr(void);
    void sio_tx_isr(void);
    void sio_error_isr(void);
    void sio_tx_char( char data );

#ifdef	__cplusplus
}
#endif

#endif	/* SIO_H */
/* end of file */

