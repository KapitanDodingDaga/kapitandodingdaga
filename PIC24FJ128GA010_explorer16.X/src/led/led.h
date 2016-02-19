/* 
 * File:   led.h
 * Author: Sherwin Tiongson
 *
 * Created on November 3, 2014, 3:28 PM
 */

#ifndef LED_H
#define	LED_H

#ifdef	__cplusplus
extern "C" {
#endif

    void led_init(void);
    void led_echo(uint16_t value );

    #define     LED5        PORTAbits.RA2
    #define     LED6        PORTAbits.RA3
    #define     LED9        PORTAbits.RA6
    #define     LED10       PORTAbits.RA7

#ifdef	__cplusplus
}
#endif

#endif	/* LED_H */
/* end of file */

