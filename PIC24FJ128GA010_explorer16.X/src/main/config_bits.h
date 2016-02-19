/* 
 * File:   config_bits.h
 * Author: Sherwin Tiongson
 *
 * Created on November 4, 2014, 8:21 AM
 */

#ifndef CONFIG_BITS_H
#define	CONFIG_BITS_H

// PIC24FJ128GA010 Configuration Bit Settings

// 'C' source line config statements

#include <xc.h>


// CONFIG2
#pragma config POSCMOD = NONE           // Primary Oscillator Select (Primary oscillator disabled)
#pragma config OSCIOFNC = ON            // Primary Oscillator Output Function (OSC2/CLKO/RC15 functions as port I/O (RC15))
#pragma config FCKSM = CSDCMD           // Clock Switching and Monitor (Clock switching and Fail-Safe Clock Monitor are disabled)
#pragma config FNOSC = FRC              // Oscillator Select (Fast RC Oscillator (FRC))
#pragma config IESO = OFF               // Internal External Switch Over Mode (IESO mode (Two-Speed Start-up) disabled)

// CONFIG1
#pragma config WDTPS = PS1024           // Watchdog Timer Postscaler (1:1,024)
#pragma config FWPSA = PR32             // WDT Prescaler (Prescaler ratio of 1:32)
#pragma config WINDIS = OFF              // Watchdog Timer Window (Standard Watchdog Timer enabled,(Windowed-mode is disabled))
#pragma config FWDTEN = OFF             // Watchdog Timer Enable (Watchdog Timer is enabled)
#pragma config ICS = PGx2               // Comm Channel Select (Emulator/debugger uses EMUC2/EMUD2)
#pragma config GWRP = OFF               // General Code Segment Write Protect (Writes to program memory are allowed)
#pragma config GCP = OFF                // General Code Segment Code Protect (Code protection is disabled)
#pragma config JTAGEN = ON              // JTAG Port Enable (JTAG port is enabled)

#ifdef	__cplusplus
extern "C" {
#endif




#ifdef	__cplusplus
}
#endif

#endif	/* CONFIG_BITS_H */
/* end of file */

