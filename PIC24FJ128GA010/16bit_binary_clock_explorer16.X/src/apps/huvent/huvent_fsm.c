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

#include "huvent_fsm.h"
#include "huvent_que.h"
#include "huvent_fsm_handler.h"
#include "io_printf.h"

/*!
 *  fsm action table structure
 */
typedef struct fsm_state_actions_e
{
    /*! human event */
    huvent_t ev;

    /*! Array of function pointers */
    void (*pAction[HUVENT_MAX_STATE]) ();

} fsm_state_actions_t;


// state machine state variable
static huvent_state_t huvent_state;


// state machine handlers
#define 	HFSM_INIT	huvent_fsm_init_handler
#define 	HFSM_IDLE	huvent_fsm_idle_handler
#define 	HFSM_CMDS       huvent_fsm_command_handler
#define 	HFSM_ALRM       huvent_fsm_alarm_handler
#define 	HFSM_BUS3       huvent_fsm_button_press_s3
#define 	HFSM_BUS4       huvent_fsm_button_press_s4
#define 	HFSM_ERRO       huvent_fsm_error_handler
#define 	HFSM_NONE       huvent_fsm_none_handler

/*! state machine look-up table */
const fsm_state_actions_t fsm_action_table [] =
{
/*=======================================================================================================================*/
/*                                       STARTUP	   IDLE             EXECUTING      ALARMING           ERROR      */
/*=======================================================================================================================*/
	/*  Signals */
	{HUVENT_CMD_INIT, 		{HFSM_INIT,       HFSM_INIT,         HFSM_INIT,    HFSM_NONE,       HFSM_ERRO     } },
	{HUVENT_COMMAND, 		{HFSM_NONE,       HFSM_CMDS,         HFSM_NONE,    HFSM_CMDS,       HFSM_ERRO     } },
	{HUVENT_ALARM_START,            {HFSM_ALRM,       HFSM_ALRM,         HFSM_INIT,    HFSM_ALRM,       HFSM_ERRO     } },
	{HUVENT_ERROR_DETECTED,		{HFSM_NONE,       HFSM_ERRO,         HFSM_INIT,    HFSM_ERRO,       HFSM_ERRO     } },
        {HUVENT_BUTTON_PRESS_S3,	{HFSM_NONE,       HFSM_BUS3,         HFSM_NONE,    HFSM_BUS3,       HFSM_NONE     } },
        {HUVENT_BUTTON_PRESS_S4,	{HFSM_NONE,       HFSM_BUS4,         HFSM_NONE,    HFSM_BUS4,       HFSM_NONE     } },
	{HUVENT_STOPER, 		{HFSM_NONE,       HFSM_NONE,         HFSM_NONE,    HFSM_NONE,       HFSM_NONE     } },
};


/*!
 * @name  huvent_fsm_init().
 * @brief None.
 * @param None.
 */
void huvent_fsm_init(void)
{
    huvent_state = HUVENT_STATE_START_UP;
    if( HUVENT_RESP_OK != huvent_que_post( HUVENT_CMD_INIT ) )
    {
        while(1);
    }
}


/*!
 * @name  huvent_fsm_update().
 * @brief None.
 * @param None.
 */
void huvent_fsm_update( huvent_state_t new_state)
{
       huvent_state = new_state;
}


/*!
 * @name  huvent_fsm_getstate().
 * @brief None.
 * @param None.
 */
huvent_state_t huvent_fsm_getstate( void )
{
       return huvent_state;
}


/*!
 * @name  huvent_fsm_engine().
 * @brief None.
 * @param None.
 */
void huvent_fsm_engine(void)
{
    huvent_t event = HUVENT_STOPER;
    huvent_resp_t resp = HUVENT_RESP_OK;
    int cnt = 0;

    while(1)
    {
        // get event from que
        cnt = 0;
        resp = huvent_que_get( &event );

        switch(resp)
        {
            case HUVENT_RESP_EMPTY:
            {
                // nothing to do when human event fifo is empty

                break;
            }
            case HUVENT_RESP_OK:
            {
//                io_printf("\n\r event = %d", event );
//                io_printf("\n\r fsm_state = %d", huvent_state );

                /* Run the correct handler for the event received */
                while(fsm_action_table[ cnt ].ev != HUVENT_STOPER)
                {
                    /* Check the  element in each row of the table */
                    /* to see if it matches the received signal          */
                    if(fsm_action_table[cnt].ev == event)
                    {
                    /* Call the corresponding state handler from the jump table */
                        fsm_action_table[cnt].pAction[huvent_state]();
                    }
                    cnt++;
                }

                // display command prompt after every new console command is executed
                io_printf("\n\n\n\r st:\\> ");

            break;
            }
            case HUVENT_RESP_NULL_HANDLER:
            case HUVENT_RESP_NULL_BUFFER:
            case HUVENT_RESP_ILLEGAL_SIZE:
            case HUVENT_RESP_FULL:
            default:
            {
                io_printf("\n\r fifo error... ");
                while(1);
                break;
            }
        }
    }
}
/* end of file */
