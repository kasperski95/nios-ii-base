/*
 * "Hello World" example.
 *
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example
 * designs. It runs with or without the MicroC/OS-II RTOS and requires a STDOUT
 * device in your system's hardware.
 * The memory footprint of this hosted application is ~69 kbytes by default
 * using the standard reference design.
 *
 * For a reduced footprint version of this template, and an explanation of how
 * to reduce the memory footprint for a given application, see the
 * "small_hello_world" template.
 *
 */

#include <system.h>
#include <stdio.h>
#include <io.h>

int validValues[6] = {1,2,4,8,16,32};


int isValid(int value) {
	for(int i = 0; i < 6; ++i) {
		if (value == validValues[i])
			return 0;
	}
	return 1;
}


int main()
{
  int val;

  while (1) {
	  val = IORD(SW_SLIDERS_BASE,0) & 0b00111111;

	  if (isValid(val) == 0) {
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
