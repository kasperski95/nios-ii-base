
module nios_ii_base (
	clk_clk,
	hex_3_HEX0,
	hex_3_HEX1,
	hex_3_HEX2,
	hex_3_HEX3,
	hex_7_HEX4,
	hex_7_HEX5,
	hex_7_HEX6,
	hex_7_HEX7,
	lcd_DATA,
	lcd_ON,
	lcd_BLON,
	lcd_EN,
	lcd_RS,
	lcd_RW,
	leds_green_export,
	leds_red_export,
	pushbuttons_export,
	reset_reset_n,
	sw_sliders_export,
	vga_CLK,
	vga_HS,
	vga_VS,
	vga_BLANK,
	vga_SYNC,
	vga_R,
	vga_G,
	vga_B);	

	input		clk_clk;
	output	[6:0]	hex_3_HEX0;
	output	[6:0]	hex_3_HEX1;
	output	[6:0]	hex_3_HEX2;
	output	[6:0]	hex_3_HEX3;
	output	[6:0]	hex_7_HEX4;
	output	[6:0]	hex_7_HEX5;
	output	[6:0]	hex_7_HEX6;
	output	[6:0]	hex_7_HEX7;
	inout	[7:0]	lcd_DATA;
	output		lcd_ON;
	output		lcd_BLON;
	output		lcd_EN;
	output		lcd_RS;
	output		lcd_RW;
	output	[8:0]	leds_green_export;
	output	[17:0]	leds_red_export;
	input	[3:0]	pushbuttons_export;
	input		reset_reset_n;
	input	[17:0]	sw_sliders_export;
	output		vga_CLK;
	output		vga_HS;
	output		vga_VS;
	output		vga_BLANK;
	output		vga_SYNC;
	output	[7:0]	vga_R;
	output	[7:0]	vga_G;
	output	[7:0]	vga_B;
endmodule
