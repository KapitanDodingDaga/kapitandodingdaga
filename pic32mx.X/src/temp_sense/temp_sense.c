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

#include "temp_adc.h"
#include "temp_sense.h"


/*!
 * @name  temp_sense_init().
 * @brief None.
 * @param None.
 */
void temp_sense_init(void)
{
    
    ADC_SetConfiguration(ADC_CONFIGURATION_DEFAULT);
    ADC_ChannelEnable(ADC_CHANNEL_5);
}

/*!
 * @name  temp_sense_scale().
 * @brief None.
 * @param None.
 */
uint16_t temp_sense_scale( uint16_t adc )
{
    uint16_t temp = 0;
    // ==================================================================
    //                         SCALING BASIS
    // 1.) From MCU ADC configuration: ADC Resolution is 3.3V / 2^10 = 3.22mV
    // 2.) From Thermal Sensor datasheet:  t = ( Vout - 500mV ) / 10mV
    // 3.) Vout is Vout = ADC_Value * Resolution = ADC_Value * 3.22mV
    // 4.) Using subtitution: t = ( ( 3.22 * ADC_Value ) - 500 ) / 10
    // ==================================================================
    temp = ( ( 3.22 * adc ) - 500 ) / 10;
    return temp - 19;
}

/*!
 * @name  temp_sense().
 * @brief None.
 * @param None.
 */
uint16_t temp_sense(void)
{
    uint32_t temp1 = 0;
    uint16_t temp2 = 0;
    temp1 = ADC_Read10bit(ADC_CHANNEL_5);
    temp2 = (uint16_t) ( temp1 & 0x000003ff); 
    return temp_sense_scale(temp2);
}
/* end of file */
