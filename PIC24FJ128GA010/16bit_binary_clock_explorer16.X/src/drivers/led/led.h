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
    void led_block_hr( uint8_t hr );
    void led_block_minutes( uint8_t minutes );
    void led_block_alarm( void );


    #define     LED3        PORTAbits.RA0       // TMS/RA0      - JTAG Test Mode Select Input.
    #define     LED4        PORTAbits.RA1       // INT4/RA15    - External Interrupt Inputs.
    #define     LED5        PORTAbits.RA2       // SCL2/RA2     - I2C
    #define     LED6        PORTAbits.RA3       // SDA2/RA3     - I2C
    #define     LED7        PORTAbits.RA4       // TDI/RA4      - JTAG Test Data/Programming Data Input.
    #define     LED8        PORTAbits.RA5       // TDO/RA5      - JTAG Test Data Output.
    #define     LED9        PORTAbits.RA6       // RA6          
    #define     LED10       PORTAbits.RA7       // RA7           

#ifdef	__cplusplus
}
#endif

#endif	/* LED_H */
/* end of file */

