#include <system.h>
#include <stdio.h>
#include <io.h>


/*
 *  - A -
 * |     |
 * F     B
 * |     |
 *  - G -
 * |     |
 * E     C
 * |     |
 *  - D -
 */
#define SEG_A 0x01
#define SEG_B 0x02
#define SEG_C 0x04
#define SEG_D 0x08
#define SEG_E 0x10
#define SEG_F 0x20
#define SEG_G 0x40
#define HEX_NULL 0
#define HEX_CHAR_1 SEG_B | SEG_C
#define HEX_CHAR_2 SEG_A | SEG_B | SEG_G | SEG_E | SEG_D
#define HEX_CHAR_3 SEG_A | SEG_B | SEG_G | SEG_C | SEG_D
#define HEX_CHAR_4 SEG_F | SEG_G | SEG_B | SEG_C
#define HEX_CHAR_5 SEG_A | SEG_F | SEG_G | SEG_C | SEG_D
#define HEX_CHAR_6 SEG_A | SEG_F | SEG_G | SEG_C | SEG_D | SEG_E
#define HEX_CHAR_E SEG_A | SEG_F | SEG_G | SEG_E | SEG_D
#define HEX_CHAR_R SEG_E | SEG_G

int validValues[6] = {1,2,4,8,16,32};

int isValid(int value) {
	for(int i = 0; i < 6; ++i) {
		if (value == validValues[i])
			return 1;
	}
	return 0;
}


int main()
{
  int val;

  while (1) {
	  val = IORD(SW_SLIDERS_BASE,0) & 0b00111111;

	  switch(val) {
	  	  case 0: IOWR(HEX_3_BASE, 0, HEX_NULL); break;
		  case 1: IOWR(HEX_3_BASE, 0, HEX_CHAR_1); break;
		  case 2: IOWR(HEX_3_BASE, 0, HEX_CHAR_2); break;
		  case 4: IOWR(HEX_3_BASE, 0, HEX_CHAR_3); break;
		  case 8: IOWR(HEX_3_BASE, 0, HEX_CHAR_4); break;
		  case 16: IOWR(HEX_3_BASE, 0, HEX_CHAR_5); break;
		  case 32: IOWR(HEX_3_BASE, 0, HEX_CHAR_6); break;
		  default:
			  IOWR(HEX_3_BASE, 2, HEX_CHAR_E);
			  IOWR(HEX_3_BASE, 1, HEX_CHAR_R);
			  IOWR(HEX_3_BASE, 0, HEX_CHAR_R);
		  break;
	  }

	  if (isValid(val) == 1) {
		  IOWR(LEDS_GREEN_BASE, 0, val);
		  IOWR(LEDS_RED_BASE, 0, 0);
	  } else {
		  IOWR(LEDS_GREEN_BASE, 0, 0);
		  if (val != 0) {
			  IOWR(LEDS_RED_BASE, 0, 1);
		  } else {
			  IOWR(LEDS_RED_BASE, 0, 0);
		  }
	  }
  }

  return 0;
}
