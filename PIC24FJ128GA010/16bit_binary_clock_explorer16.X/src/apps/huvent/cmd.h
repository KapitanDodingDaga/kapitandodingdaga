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
#ifndef CMD_H
#define	CMD_H

#ifdef	__cplusplus
extern "C" {
#endif

typedef enum cmd_e
{
    SAVE_DATE_TIME_IEE = 0,
    SAVE_DATE_TIME_XEE,
    VIEW_DATE_TIME_IEE,
    VIEW_DATE_TIME_XEE,
    UPDATE_DATE,
    UPDATE_TIME,
    SET_ALARM,
    DIS_ALARM,
    HELP,
    INVALID_CMD,
} cmd_t;

extern const char*  CMD_SAVE_DATE_TIME_IEE;
extern const char*  CMD_SAVE_DATE_TIME_XEE;
extern const char*  CMD_VIEW_DATE_TIME_IEE;
extern const char*  CMD_VIEW_DATE_TIME_XEE;
extern const char*  CMD_UPDATE_DATE;
extern const char*  CMD_UPDATE_TIME;
extern const char*  CMD_SET_ALARM;
extern const char*  CMD_DIS_ALARM;
extern const char*  CMD_HELP;

#ifdef	__cplusplus
}
#endif

#endif	/* CMD_H */
/* end of file */

