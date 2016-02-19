#include <stdint.h>
#include <xc.h>
#include "timer1.h"
#include "timer1_test.h"

/*!
 * @name  timer1_test().
 * @brief Call me at main and expect a TIMER1 interrupt will trigger.
 * @param None.
 */
void timer1_test(void)
{
    timer1_init(8);
}
/* end of file */
