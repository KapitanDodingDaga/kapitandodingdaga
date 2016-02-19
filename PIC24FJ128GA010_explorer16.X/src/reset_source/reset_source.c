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
#define USE_AND_OR /* To enable AND_OR mask setting */
#include <stdint.h>
#include <stdbool.h>
#include <xc.h>

#include "p24FJ128GA010.h"
#include "PwrMgnt.h"
#include "ports.h"
#include "wdt.h"
#include "io_printf.h"

/*!
 * @name  wakeup_source().
 * @brief None.
 * @param None.
 */
void wakeup_source(void)
{
    WAKEUP_SOURCE wakeup_src = WAKEUP_IDLE;
    wakeup_src = PwrMgnt_WakeupSource( );
    switch (wakeup_src)
    {
        case WAKEUP_SLEEP:
        io_printf("\n\r WAKEUP_SOURCE: WAKEUP_SLEEP..");
        RCONbits.SLEEP = 0;
        break;

        case WAKEUP_IDLE:
        io_printf("\n\r WAKEUP_SOURCE: WAKEUP_IDLE..");
        RCONbits.IDLE = 0;
        break;
    }
}


RESET_SOURCE GEt_ResetSource(void)
{
   if(RCONbits.WDTO)
   {
      return(WATCHDOG_Reset);
   }
   if(RCONbits.SWR)
   {
      return(SOFTWARE_Reset);
   }
   if(RCONbits.EXTR)
   {
      return(EXTERNAL_Reset);
   }
   if(RCONbits.CM)
   {
      return(CFG_WORD_MISMATCH_Reset);
   }
   if(RCONbits.IOPUWR)
   {
      return(ILLEGAL_INSTR_Reset);
   }
   if(RCONbits.TRAPR)
   {
      return(TRAP_Reset);
   }

  if(RCONbits.POR)
   {
      return(POWER_ON_Reset);
   }

   if((RCONbits.BOR) && !(RCONbits.POR))
   {
      return(BURN_OUT_Reset);
   }

   return(POWER_ON_Reset);
}


/*!
 * @name  reset_source().
 * @brief None.
 * @param None.
 */
void reset_source(void)
{
    RESET_SOURCE reset_src = TRAP_Reset;
    reset_src = PwrMgnt_ResetSource();
    
    switch (reset_src)
    {
        case POWER_ON_Reset:
        io_printf("\n\r RESET_SOURCE: POWER_ON_Reset..");
        RCONbits.POR = 0;
        break;

        case BURN_OUT_Reset:
        io_printf("\n\r RESET_SOURCE: BURN_OUT_Reset..");
        RCONbits.BOR = 0;
        break;

        case WATCHDOG_Reset:
        io_printf("\n\r RESET_SOURCE: WATCHDOG_Reset..");
        RCONbits.WDTO = 0;
        break;


        case SOFTWARE_Reset:
        io_printf("\n\r RESET_SOURCE: SOFTWARE_Reset..");
        RCONbits.SWR = 0;
        break;


        case EXTERNAL_Reset:
        io_printf("\n\r RESET_SOURCE: EXTERNAL_Reset(MCLR)..");
        RCONbits.EXTR = 0;
        break;

        case CFG_WORD_MISMATCH_Reset:
        io_printf("\n\r RESET_SOURCE: CFG_WORD_MISMATCH_Reset..");
        RCONbits.CM = 0;
        break;

        case ILLEGAL_INSTR_Reset:
        io_printf("\n\r RESET_SOURCE: ILLEGAL_INSTR_Reset..");
        RCONbits.IOPUWR = 0;
        break;

        case TRAP_Reset:
        io_printf("\n\r RESET_SOURCE: TRAP_Reset..");
        RCONbits.TRAPR = 0;
        break;
           
    }
}
/* end of file */
