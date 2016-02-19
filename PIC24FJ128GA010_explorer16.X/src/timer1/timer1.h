/* 
 * File:   timer1.h
 * Author: Sherwin Tiongson
 *
 * Created on November 4, 2014, 8:58 AM
 */

#ifndef TIMER1_H
#define	TIMER1_H

#ifdef	__cplusplus
extern "C" {
#endif

    void timer1_init( uint16_t period );
    void timer1_tick(void);

#ifdef	__cplusplus
}
#endif

#endif	/* TIMER1_H */
/* end of file */

