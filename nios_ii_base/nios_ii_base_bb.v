
module nios_ii_base (
	sw_sliders_external_interface_export,
	reset_reset_n,
	clk_clk,
	leds_red_external_interface_export,
	leds_green_external_interface_export,
	hex_3_external_interface_HEX0,
	hex_3_external_interface_HEX1,
	hex_3_external_interface_HEX2,
	hex_3_external_interface_HEX3,
	hex_7_external_interface_HEX4,
	hex_7_external_interface_HEX5,
	hex_7_external_interface_HEX6,
	hex_7_external_interface_HEX7,
	pushbuttons_external_interface_export,
	lcd_external_interface_DATA,
	lcd_external_interface_ON,
	lcd_external_interface_BLON,
	lcd_external_interface_EN,
	lcd_external_interface_RS,
	lcd_external_interface_RW);	

	input	[17:0]	sw_sliders_external_interface_export;
	input		reset_reset_n;
	input		clk_clk;
	output	[17:0]	leds_red_external_interface_export;
	output	[8:0]	leds_green_external_interface_export;
	output	[6:0]	hex_3_external_interface_HEX0;
	output	[6:0]	hex_3_external_interface_HEX1;
	output	[6:0]	hex_3_external_interface_HEX2;
	output	[6:0]	hex_3_external_interface_HEX3;
	output	[6:0]	hex_7_external_interface_HEX4;
	output	[6:0]	hex_7_external_interface_HEX5;
	output	[6:0]	hex_7_external_interface_HEX6;
	output	[6:0]	hex_7_external_interface_HEX7;
	input	[3:0]	pushbuttons_external_interface_export;
	inout	[7:0]	lcd_external_interface_DATA;
	output		lcd_external_interface_ON;
	output		lcd_external_interface_BLON;
	output		lcd_external_interface_EN;
	output		lcd_external_interface_RS;
	output		lcd_external_interface_RW;
endmodule
