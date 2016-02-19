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
#ifndef GLUE_H
#define	GLUE_H

#ifdef	__cplusplus
extern "C" {
#endif

    void glue(void);
    void glue_save_date_time_iee(void);
    void glue_view_date_time_iee(void);
    void glue_help(void);
    uint8_t glue_update_date( char* cmd );
    uint8_t glue_update_time( char* cmd );
    uint8_t glue_set_alarm( char* cmd );
    void glue_disable_alarm(void);
    uint8_t glue_save_date_time_xee(void);
    void glue_view_date_time_xee(void);

    #define     INITIALIZE_AND_GLUE     glue

#ifdef	__cplusplus
}
#endif

#endif	/* GLUE_H */
/* end of file */

