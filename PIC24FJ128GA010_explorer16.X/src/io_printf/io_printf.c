/**
*****************************************************************************
**                The argument contains a format string that may include
**                conversion specifications. Each conversion specification
**                is introduced by the character %, and ends with a
**                conversion specifier.
**
**                The following conversion specifiers are supported
**                cdisuxX%
**
**                Usage:
**                c    character
**                d,i  signed integer (-sign added, + sign not supported)
**                s    character string
**                u    unsigned integer as decimal
**                x,X  unsigned integer as hexadecimal (uppercase letter)
**                %    % is written (conversion specification is '%%')
**
**                Note:
**                Character padding is not supported
**
*****************************************************************************
*/
#include <stdint.h>
#include <string.h>
#include <stdbool.h>
#include <stdarg.h>
#include <xc.h>

#include "sio.h"
#include "io_printf.h"


static int io_write(int fd, char *str, int len);
static void io_int_to_ascii(char **buf, unsigned int d, int base);
static int io_format_string(char *buf, const char *fmt, va_list va);
static int io_get_max_len(const char *fmt, va_list va);


/*!
 * @name  io_int_to_ascii().
 * @brief Convert integer to ascii.
 * @param None.
 */
static void io_int_to_ascii(char **buf, unsigned int d, int base)
{
    int div = 1;
    while (d/div >= base)
    {
        div *= base;
    }

    while (div != 0)
    {
        int num = d/div;
        d = d%div;
        div /= base;
        if (num > 9)
        {
            *((*buf)++) = (num-10) + 'A';
        }
        else
        {
            *((*buf)++) = num + '0';
        }
    }
}


/*!
 * @name  io_format_string().
 * @brief Writes arguments va to buffer buf according to format fmt.
 * @param None.
 */
int io_format_string(char *buf, const char *fmt, va_list va)
{
	char *start_buf = buf;
	while(*fmt)
	{
		/* Character needs formating? */
		if (*fmt == '%')
		{
			switch (*(++fmt))
			{
			  case 'c':
				*buf++ = va_arg(va, int);
				break;
			  case 'd':
			  case 'i':
				{
					signed int val = va_arg(va, signed int);
					if (val < 0)
					{
						val *= -1;
						*buf++ = '-';
					}
					io_int_to_ascii(&buf, val, 10);
				}
				break;
			  case 's':
				{
					char * arg = va_arg(va, char *);
					while (*arg)
					{
						*buf++ = *arg++;
					}
				}
				break;
			  case 'u':
					io_int_to_ascii(&buf, va_arg(va, unsigned int), 10);
				break;
			  case 'x':
			  case 'X':
					io_int_to_ascii(&buf, va_arg(va, int), 16);
				break;
			  case '%':
				  *buf++ = '%';
				  break;
			}
			fmt++;
		}
		/* Else just copy */
		else
		{
			*buf++ = *fmt++;
		}
	}
	*buf = 0;

	return (int)(buf - start_buf);
}


/*!
 * @name  io_get_max_len().
 * @brief Calculate maximum length of the resulting string from the
 *            format string and va_list va.
 * @return Maximum length.
 */
int io_get_max_len(const char *fmt, va_list va)
{
    char* temp = 0;
	int length = 0;
	while (*fmt)
	{
		if (*fmt == '%')
		{
			++fmt;
			switch (*fmt)
			{
			  case 'c':
		  		  temp = (char *) va_arg(va, int);
				  ++length;
				  break;
			  case 'd':
			  case 'i':
			  case 'u':
				  /* 32 bits integer is max 11 characters with minus sign */
				  length += 11;
				  temp = (char *) va_arg(va, int);
				  break;
			  case 's':
			  	  {
			  		  char * str = va_arg(va, char *);
			  		  while (*str++)
			  			  ++length;
			  	  }
				  break;
			  case 'x':
			  case 'X':
				  /* 32 bits integer as hex is max 8 characters */
				  length += 8;
				  temp = (char *) va_arg(va, unsigned int);
				  break;
			  default:
				  ++length;
				  break;
			}
		}
		else
		{
			++length;
		}
		++fmt;
	}
	return length;
}


void io_uart_puts(char* string , int len )
{
    int i = 0;
    for( i = 0; i < len; i++ )
    {
         sio_tx_char(string[i]);
    }
}

/*!
 * @name  io_write().
 * @brief Sends a string into IO UART.
 * @return Number of characters..
 */
static int io_write(int fd, char *str, int len)
{
    io_uart_puts(str, len);
    return len;
}



/*!
 * @name  io_printf().
 * @brief Loads data from the given locations and writes them to the
*            standard output according to the format parameter.
 * @return Number of bytes written.
 */
int io_printf(const char *fmt, ...)
{
	int length = 0;
	va_list va;
	va_start(va, fmt);
	length = io_get_max_len(fmt, va);
	va_end(va);
	{
		char buf[length];
		va_start(va, fmt);
		length = io_format_string(buf, fmt, va);
		length = io_write(1, buf, length);
		va_end(va);
	}
	return length;
}


void io_clr_screen(void)
{
    sio_tx_char(27); // ESC
    io_printf("[2J"); // clear screen
    sio_tx_char(27); // ESC
    io_printf("[H"); // cursor to home
}

/* end of file */