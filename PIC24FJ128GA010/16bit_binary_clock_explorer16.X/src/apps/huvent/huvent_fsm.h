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
#ifndef HUVENT_FSM_H
#define	HUVENT_FSM_H

#ifdef	__cplusplus
extern "C" {
#endif

typedef enum huvent_state_e
{
    // system is not yet initialized
    HUVENT_STATE_START_UP = 0,

    // default system state
    HUVENT_STATE_IDLE,

    // system is currently executing a command
    HUVENT_STATE_CMD_EXECUTING,

    // alarming is detected
    HUVENT_STATE_ALARMING,

    // error state
    HUVENT_STATE_ERROR,

    // system state limiter
    HUVENT_MAX_STATE

} huvent_state_t;


typedef enum huvent_e
{
    // initialization
    HUVENT_CMD_INIT = 0,

    // console command received
    HUVENT_COMMAND,

    // alarm event is detected
    HUVENT_ALARM_START,

    // error is detected
    HUVENT_ERROR_DETECTED,

    // S3 button press
    HUVENT_BUTTON_PRESS_S3,

    // S4 button press
    HUVENT_BUTTON_PRESS_S4,

    // fsm stopper
    HUVENT_STOPER
} huvent_t;

void huvent_fsm_init(void);
void huvent_fsm_engine(void);
void huvent_fsm_update( huvent_state_t new_state);
huvent_state_t huvent_fsm_getstate( void );

#define     RUN_MAIN_FSM         huvent_fsm_engine

#ifdef	__cplusplus
}
#endif

#endif	/* HUVENT_FSM_H */
/* end of file */

