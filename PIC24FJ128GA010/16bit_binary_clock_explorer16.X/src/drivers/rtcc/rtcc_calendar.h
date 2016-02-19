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
#ifndef RTCC_CALENDAR_H
#define	RTCC_CALENDAR_H

#ifdef	__cplusplus
extern "C" {
#endif

    typedef struct calendar_s
    {
        uint8_t    year;       // decimal for year, 00-99
        uint8_t    mday;       // decimal  for day of the month, 01-31
        uint8_t    mon;        // decimal  for month, 01-12
        uint8_t    hour;       // decimal  for hours, 00-24
        uint8_t    min;        // decimal  for minutes, 00-59
        uint8_t    sec;        // decimal  for seconds, 00-59
        uint8_t    wday;       // decimal  for day of the week, 00-06
    } calendar_t;

    void rtcc_calendar_init(void);
    void rtcc_calendar_update( calendar_t obj );
    calendar_t rtcc_calendar_get_info( void );
    void rtcc_calendar_dis_alarm(void);

#ifdef	__cplusplus
}
#endif

#endif	/* RTCC_CALENDAR_H */
/* end of file */

