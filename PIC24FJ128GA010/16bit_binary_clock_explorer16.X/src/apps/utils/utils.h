/* 
 * File:   utils.h
 * Author: Sherwin Tiongson
 *
 * Created on September 24, 2014, 9:48 AM
 */

#ifndef UTILS_H
#define	UTILS_H

#ifdef	__cplusplus
extern "C" {
#endif


uint16_t convert_u8_u16(uint8_t hi, uint8_t lo);
unsigned short byteSwap( unsigned short wordIn);
void glue_post_error(void);



/*!
  !! => creates a boolean of original
  e.g. !(!(0)) -> !(TRUE) -> FALSE
  e.g. !(!(non zero)) -> !(FALSE) -> TRUE
*/
#define BOOL(x) (!(!(x)))

#define BitMsk(bit) (1 << (bit))

/*!
   These work on positions (Note 1L used).
   Note also that the BitN.... macros aren't
   slower that the Bit... macros since the
   compiler will treat (1L << 3) for e.g. as
   the constant 8 (constant folding).
*/
#define BitNset(arg,bit) ((arg) |= BitMsk(bit))
#define BitNclr(arg,bit) ((arg) &= ~BitMsk(bit))




/*!
  this part of XOR combinations
  used, hence the bits are flipped.

  1^1->0
  0^1->1
*/
#define BitNflp(arg,bit) ((arg) ^= BitMsk(bit))
#define BitNtst(arg,bit) BOOL((arg) & BitMsk(bit))


/*!
   These work on positions defined by constants
   Note constants can have 1 or more bits set.
   Note also that you don't have to cast the
   vals in the macros below as done for 1L
   above (although is wouldn't make any difference).
   This is because the compiler will generate the
   code needed to work on the lowest type of the
   val possible (byte, then word, then dword ...
*/
#define BitSet(arg,val) ((arg) |= (val))
#define BitClr(arg,val) ((arg) &= ~(val))
#define BitFlp(arg,val) ((arg) ^= (val))

/*!
  return true if any of bits specifed
  in val is set.
*/
#define BitTst(arg,val) BOOL((arg) & (val))


/*!
  return true if all bits specifed
  in val are set.
*/
#define BitChk(arg,val) (((arg) & (val)) == (val))




/*!
  returns true if all bits specified in bits
  have the values specified in val (set bits
  in val to 0 that you're not interested in).

  The following is a table of the valid combinations
  explaning how this works.

  !(arg bit = 0 & bits = 1 ->0 ^ val = 0 -> 0) = TRUE
  !(arg bit = 0 & bits = 1 ->0 ^ val = 1 -> 1) = FALSE
  !(arg bit = 1 & bits = 1 ->1 ^ val = 0 -> 1) = FALSE
  !(arg bit = 1 & bits = 1 ->1 ^ val = 1 -> 0) = TRUE
*/
#define BitVal(arg,bits,val) (!(((arg) & (bits)) ^ (val)))





/*!
  set all bits specified in bits
  to match the values specified in val (set bits
  in val to 0 that you're not interested in).
*/
#define BitSetVal(arg,bits,val) (BitSet(BitClr(arg,bits),val))



/*!
  Note the following ODD macro is non portable!
  It will fail (for negative numbers) on machines that
  use the 1's complement representation for negative
  numbers. You could do something like:

  #if (-1 & 1) == 1
	#define ODD(arg) (BitTst(arg,0x01))
  #else
	#define ODD(arg) ((arg)%2 !=0)
  #endif

  But this could fail if you were cross compiling
  (as preprocessor running on different machine).
  Note also that the %2 form is much slower.
*/
#define ODD(arg) (BitTst(arg,0x01))
#define EVEN(arg) (!ODD(arg))





/*!
   These are Read/modify/write versions of the
   macros below. This is needed by some ICs.

   Note when used like RMW_BitClr(x,y); you will get
   a redundant ; that should only generate warnings.
*/
#define RMW_BitClr(arg,val) {unsigned long static_workbyte=arg; BitClr(static_workbyte,(val)); arg=static_workbyte;}
#define RMW_BitSet(arg,val) {unsigned long static_workbyte=arg; BitSet(static_workbyte,(val)); arg=static_workbyte;}




#ifdef	__cplusplus
}
#endif

#endif	/* UTILS_H */
/* end of file */

