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
#include <stddef.h>
#include <string.h>
#include <xc.h>

#include "sio.h"
#include "led.h"

#define ENABLED_SIO_ECHO 1

// From the datasheet, Baud Rate Calculation is:
#define F_osc       (8000000)                       // we are using FRC
#define F_cy        (F_osc / 2)
#define BAUDRATE    (9600)                          // baud rate you want
#define BRGVAL      ( ( (F_cy/BAUDRATE)/16) - 1 )   // this is the value you want to store in the BAUDRATE register


// a global buffer used to store all received bytes.
// gets populated by the received ISR.
volatile sio_rx_buffer_t sio_rx_buffer;



/*!
 * @name  sio_init().
 * @brief None.
 * @param None.
 */
void sio_init(void)
{
    // PINOUT:
    // 1.) RF5  -   U2TX    (RF5/PMA8/U2TX)
    // 2.) RF4  -   U2RX    (RF4/PMA9/U2RX)

    sio_rx_buffer.err_count = 0;
    sio_rx_buffer.payload_count = 0;
    memset( (void*) sio_rx_buffer.payload, 0, sizeof(sio_rx_buffer.payload));

    // pin settinga
    TRISFbits.TRISF5 = 0;
    TRISFbits.TRISF4 = 1;

    // disable other multiplex pheripherals; PMP and CN
    PMAEN = 0;
    PMCONbits.PMPEN = 0;    //  PMP is disabled

    // configure UART to a  known state
    U2BRG = 0;
    U2MODE = 0;
    U2STA = 0;
    U2RXREG = 0;

    // configure baud rate
    U2BRG = 0;
    U2BRG = BRGVAL;

    U2MODEbits.STSEL = 0;       // 1-Stop bit
    U2MODEbits.PDSEL = 0;       // No Parity, 8-Data bits
    U2MODEbits.BRGH = 0;        // Standard-Speed mode
    U2MODEbits.RXINV = 0;       //  UxRX Idle state
    U2MODEbits.ABAUD = 0;      //   Auto-Baud Enable bit
    U2MODEbits.LPBACK = 0;      // loop back mode enable bit
    U2MODEbits.WAKE = 0;        //  Wake-up on Start bit Detect During Sleep Mode Enable bit
    U2MODEbits.ABAUD = 0; // Auto-Baud disabled

    // interrupt settings
    IFS1bits.U2TXIF = 0;
    IFS1bits.U2RXIF = 0;
    IFS4bits.U2ERIF = 0;
    IPC7bits.U2RXIP = 0b111;        // UART2 RX Interrupt Priority bits
    IPC16bits.U2ERIP = 0b001;       // UART2 Error Interrupt Priority bits
    IEC1bits.U2TXIE = 0;            // TX interrupt enable bit
    IEC1bits.U2RXIE = 1;            // RX interrupt enable bit
    IEC4bits.U2ERIE = 1;            // Error interrupt enable bit
    U2STAbits.URXISEL = 0b00;   //  Interrupt is set when any character is received and transferred from the RSR to the receive buffer;
                                //  receive buffer has one or more characters

    // The UTXEN bit should not be set until the UARTEN bit has been set; otherwise,
    // UART transmissions will not be enabled.
    U2MODEbits.UARTEN = 1;
    U2STAbits.UTXEN = 1;        //  Enable UART TX   
}




/*!
 * @name  sio_tx().
 * @brief Sends the buffer pointed by the payload.
 * @param len - the number of bytes in the payload buffer you want to send.
 * @param payload - pointer to the buffer you want to send.
 * @param break_bit - Set it to "true" if you want to send a break bit, false otherwise.
 */
void sio_tx( uint16_t len, uint8_t* payload, bool break_bit )
{
    uint16_t i = 0;
    if(  NULL == payload ) return;
    if(  0 == len ) return;

    // wait until transmit is idle
    while(!U2STAbits.TRMT);

    //  Transmit Break bit ( Start bit, followed by twelve ? 0 ? bits, followed by Stop bit)
    U2STAbits.UTXBRK = break_bit;
    
    // send buffer to UART
    for( i = 0; i < len; i++ )
    {
        // wait until transmit is idle
        while( !U2STAbits.TRMT );

        U2TXREG = payload[i];
    }
}


/*!
 * @name  sio_tx_char().
 * @brief Sends character to UART.
 */
void sio_tx_char( char data )
{
    // wait until transmit is idle
    while(!U2STAbits.TRMT);

    U2TXREG = data;
}




/*!
 * @name  sio_rx_isr().
 * @brief Call this function inside you UART receive ISR.
 * @param None.
 */
void sio_rx_isr(void)
{
    IFS1bits.U2RXIF = 0;

    // for debugging purpose only
    LED5 ^= 1;

    // store received bytes to rx buffer
    sio_rx_buffer.payload[sio_rx_buffer.payload_count] = U2RXREG;
    
#if ENABLED_SIO_ECHO
    // wait until transmit is idle
    while( !U2STAbits.TRMT );
    U2TXREG = sio_rx_buffer.payload[sio_rx_buffer.payload_count];  
#endif


    sio_rx_buffer.payload_count++;

    // roll over buffer if needed
    if(sio_rx_buffer.payload_count >= SIO_BUFFER_SIZE) sio_rx_buffer.payload_count = 0;
}



/*!
 * @name  sio_tx_isr().
 * @brief Call this function inside you UART transmit ISR..
 * @param None.
 */
void sio_tx_isr(void)
{
    IFS1bits.U2TXIF = 0;
    LED6 ^= 1;
}



/*!
 * @name  sio_error_isr().
 * @brief Call this function inside you UART error ISR...
 * @param None.
 */
void sio_error_isr(void)
{
    LED9 ^= 1;
    IFS4bits.U2ERIF = 0;
    sio_rx_buffer.err_count++;
}
/* end of file */
