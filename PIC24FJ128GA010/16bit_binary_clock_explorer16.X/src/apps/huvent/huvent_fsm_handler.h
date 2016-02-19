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
#ifndef HUVENT_FSM_HANDLER_H
#define	HUVENT_FSM_HANDLER_H

#ifdef	__cplusplus
extern "C" {
#endif

    void huvent_fsm_init_handler(void);
    void huvent_fsm_idle_handler(void);
    void huvent_fsm_command_handler(void);
    void huvent_fsm_alarm_handler(void);
    void huvent_fsm_error_handler(void);
    void huvent_fsm_none_handler(void);
    void huvent_fsm_button_press_s3(void);
    void huvent_fsm_button_press_s4(void);


#ifdef	__cplusplus
}
#endif

#endif	/* HUVENT_FSM_HANDLER_H */
/* end of file */

