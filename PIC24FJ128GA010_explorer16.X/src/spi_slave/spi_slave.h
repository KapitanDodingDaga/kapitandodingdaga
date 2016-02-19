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
#ifndef SPI_SLAVE_H
#define	SPI_SLAVE_H

#ifdef	__cplusplus
extern "C" {
#endif

#define SPI_SLAVE_BUFFER_SIZE   50
typedef struct spi_slave_buffer_s
{
    
    uint16_t error_count;
    uint16_t payload_count;
    uint16_t payload[SPI_SLAVE_BUFFER_SIZE];

} spi_slave_buffer_t ;


extern volatile spi_slave_buffer_t spi_slave_buffer;

void spi_slave_init(void);
void spi_slave_isr(void);
void spi_slave_error_isr(void);


#ifdef	__cplusplus
}
#endif

#endif	/* SPI_SLAVE_H */
/* end of file */

