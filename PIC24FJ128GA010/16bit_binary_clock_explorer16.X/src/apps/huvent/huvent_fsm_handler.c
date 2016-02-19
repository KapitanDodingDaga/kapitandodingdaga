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
#include <string.h>
#include <xc.h>

#include "timer1.h"
#include "sio.h"
#include "io_printf.h"
#include "huvent_fsm.h"
#include "cmd.h"
#include "glue.h"
#include <Rtcc.h>

/*!
 * @name  huvent_fsm_init_handler().
 * @brief None.
 * @param None.
 */
void huvent_fsm_init_handler(void)
{
    huvent_fsm_update( HUVENT_STATE_IDLE );

    // send some message to serial console that application is ready
    io_printf("\n\n\n\r ======================================================================");
    io_printf("\n\r 16-Bit Lab Exercise: Calendar with Binary Clock (and Temperature) !!!..");
    io_printf("\n\r Author: Sherwin Tiongson");
}


/*!
 * @name  huvent_fsm_init_handler().
 * @brief None.
 * @param None.
 */
void huvent_fsm_idle_handler(void)
{
    io_printf("\n\r huvent_fsm_idle_handler.. ");
}


/*!
 * @name  huvent_fsm_command_handler().
 * @brief None.
 * @param None.
 */
void huvent_fsm_command_handler(void)
{
    uint8_t resp = 0;
    cmd_t cmd = INVALID_CMD;
    sio_shared_buffer_t cmd_string;
    cmd_string = sio_get_command();
    if(!memcmp((void*)cmd_string.command,(void*)CMD_SAVE_DATE_TIME_IEE, strlen(CMD_SAVE_DATE_TIME_IEE) )) cmd = SAVE_DATE_TIME_IEE;
    if(!memcmp((void*)cmd_string.command,(void*)CMD_SAVE_DATE_TIME_XEE, strlen(CMD_SAVE_DATE_TIME_XEE) )) cmd = SAVE_DATE_TIME_XEE;
    if(!memcmp((void*)cmd_string.command,(void*)CMD_VIEW_DATE_TIME_IEE,strlen(CMD_VIEW_DATE_TIME_IEE))) cmd = VIEW_DATE_TIME_IEE;
    if(!memcmp((void*)cmd_string.command,(void*)CMD_VIEW_DATE_TIME_XEE,strlen(CMD_VIEW_DATE_TIME_XEE))) cmd = VIEW_DATE_TIME_XEE;
    if(!memcmp((void*)cmd_string.command,(void*)CMD_UPDATE_DATE,strlen(CMD_UPDATE_DATE))) cmd = UPDATE_DATE;
    if(!memcmp((void*)cmd_string.command,(void*)CMD_UPDATE_TIME,strlen(CMD_UPDATE_TIME))) cmd = UPDATE_TIME;
    if(!memcmp((void*)cmd_string.command,(void*)CMD_SET_ALARM,strlen(CMD_SET_ALARM))) cmd = SET_ALARM;
    if(!memcmp((void*)cmd_string.command,(void*)CMD_DIS_ALARM,strlen(CMD_DIS_ALARM))) cmd = DIS_ALARM;
    if(!memcmp((void*)cmd_string.command,(void*)CMD_HELP,strlen(CMD_HELP))) cmd = HELP;

    // disable periodic screen update to avoid data corruption
    timer1_off();

    switch (cmd)
    {
        case SAVE_DATE_TIME_IEE:
            glue_save_date_time_iee();
        break;

        case SAVE_DATE_TIME_XEE:
            resp = glue_save_date_time_xee();
            if ( 0 != resp )  io_printf("\n\r Error Code = %d", resp );
        break;

        case VIEW_DATE_TIME_IEE:
            glue_view_date_time_iee();
        break;


        case VIEW_DATE_TIME_XEE:
            glue_view_date_time_xee();
        break;

        case UPDATE_DATE:
            resp = glue_update_date( (void*) cmd_string.command );
            if ( 0 != resp )  io_printf("\n\r Error Code = %d", resp );
        break;

        case UPDATE_TIME:
            resp = glue_update_time( (void*) cmd_string.command );
            if ( 0 != resp )  io_printf("\n\r Error Code = %d", resp );
        break;


        case SET_ALARM:
            resp = glue_set_alarm( (void*) cmd_string.command );
            if ( 0 != resp )  io_printf("\n\r Error Code = %d", resp );
        break;

        case DIS_ALARM:
            glue_disable_alarm();
        break;

        case HELP:
            glue_help();
        break;

        default:
            io_printf("\n\r Error invalid command!!!");
            glue_help();
        break;
    }
    // always clear buffers every after executing a console command
     memset( (void*) cmd_string.command, 0, sizeof(cmd_string.command));
    sio_clr_buffer();

    // enable periodic screen update after information update is completed
    timer1_on();
}


/*!
 * @name  huvent_fsm_alarm_handler().
 * @brief None.
 * @param None.
 */
void huvent_fsm_alarm_handler(void)
{
    io_printf("\n\r huvent_fsm_alarm_handler.. ");
    huvent_fsm_update( HUVENT_STATE_ALARMING);
}


/*!
 * @name  huvent_fsm_button_press_s3().
 * @brief None.
 * @param None.
 */
void huvent_fsm_button_press_s3(void)
{
    io_printf("\n\r huvent_fsm_button_press_handler.. ");
    RtccSetAlarmRpt(RTCC_RPT_DAY , true );
    huvent_fsm_update( HUVENT_STATE_IDLE);
}

/*!
 * @name  huvent_fsm_button_press_s4().
 * @brief None.
 * @param None.
 */
void huvent_fsm_button_press_s4(void)
{
    io_printf("\n\r huvent_fsm_button_press_s4.. ");
}


/*!
 * @name  huvent_fsm_error_handler().
 * @brief None.
 * @param None.
 */
void huvent_fsm_error_handler(void)
{
    io_printf("\n\r huvent_fsm_error_handler.. ");
}

/*!
 * @name  huvent_fsm_none_handler().
 * @brief None.
 * @param None.
 */
void huvent_fsm_none_handler(void)
{
    io_printf("\n\r huvent_fsm_none_handler.. ");
}
/* end of file */
