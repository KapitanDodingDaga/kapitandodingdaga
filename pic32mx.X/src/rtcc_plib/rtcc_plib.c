/********************************************************************
 * Dependencies:    See INCLUDES section below
 * Processor:       PICxxxx
 * Compiler:        XCxx
 * Board:           ---
 * Author:          Sherwin Tiongson
 * Note:            This code is written for illustration / sample code
 *                  only and not designed to be production worthy. Modules
 *                  are not tested (not unit/target tested). 
 *
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

#include "plib_legacy.h"
#include "rtcc_plib.h"
#include "io_printf.h"

/*!
 * @name  rtcc_plib_init().
 * @brief None.
 * @param None.
 */
void rtcc_plib_init( rtc_t rtc )
{
    // ========== PINOUT =========
    // SOSCO/T1CK/CN0/RC14
    // SOSCI/CN1/RC13

    // init the RTCC
    RtccInit();
    
    OSCCONbits.SOSCEN = 1;
    if ( OSCCONbits.SOSCRDY )
    {
        io_printf("\n\r SOSC ready.. ");
    }
    // wait for the SOSC to be actually running and RTCC to have its
    // clock source could wait here at most 32ms
    while( RtccGetClkStat()!=RTCC_CLK_ON );

    // time is MSb: hour, min, sec, rsvd. date is MSb: year, mon, mday, wday.
    RtccSetTimeDate( rtc.time.l, rtc.date.l );

    // wait for the SOSC to be actually running and RTCC to have its
    // clock source could wait here at most 32ms
    while( RtccGetClkStat()!=RTCC_CLK_ON );

    return;
}


/*!
 * @name  rtcc_plib_get().
 * @brief None.
 * @param None.
 */
rtc_t rtcc_plib_get(void)
{
    rtc_t rtc;
    rtc.time.l = RtccGetTime();
    rtc.date.l = RtccGetDate();
    return rtc;
}


/* end of file */
