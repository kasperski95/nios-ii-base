	component nios_ii_base is
		port (
			sw_sliders_external_interface_export  : in    std_logic_vector(17 downto 0) := (others => 'X'); -- export
			reset_reset_n                         : in    std_logic                     := 'X';             -- reset_n
			clk_clk                               : in    std_logic                     := 'X';             -- clk
			leds_red_external_interface_export    : out   std_logic_vector(17 downto 0);                    -- export
			leds_green_external_interface_export  : out   std_logic_vector(8 downto 0);                     -- export
			hex_3_external_interface_HEX0         : out   std_logic_vector(6 downto 0);                     -- HEX0
			hex_3_external_interface_HEX1         : out   std_logic_vector(6 downto 0);                     -- HEX1
			hex_3_external_interface_HEX2         : out   std_logic_vector(6 downto 0);                     -- HEX2
			hex_3_external_interface_HEX3         : out   std_logic_vector(6 downto 0);                     -- HEX3
			hex_7_external_interface_HEX4         : out   std_logic_vector(6 downto 0);                     -- HEX4
			hex_7_external_interface_HEX5         : out   std_logic_vector(6 downto 0);                     -- HEX5
			hex_7_external_interface_HEX6         : out   std_logic_vector(6 downto 0);                     -- HEX6
			hex_7_external_interface_HEX7         : out   std_logic_vector(6 downto 0);                     -- HEX7
			pushbuttons_external_interface_export : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- export
			lcd_external_interface_DATA           : inout std_logic_vector(7 downto 0)  := (others => 'X'); -- DATA
			lcd_external_interface_ON             : out   std_logic;                                        -- ON
			lcd_external_interface_BLON           : out   std_logic;                                        -- BLON
			lcd_external_interface_EN             : out   std_logic;                                        -- EN
			lcd_external_interface_RS             : out   std_logic;                                        -- RS
			lcd_external_interface_RW             : out   std_logic                                         -- RW
		);
	end component nios_ii_base;

	u0 : component nios_ii_base
		port map (
			sw_sliders_external_interface_export  => CONNECTED_TO_sw_sliders_external_interface_export,  --  sw_sliders_external_interface.export
			reset_reset_n                         => CONNECTED_TO_reset_reset_n,                         --                          reset.reset_n
			clk_clk                               => CONNECTED_TO_clk_clk,                               --                            clk.clk
			leds_red_external_interface_export    => CONNECTED_TO_leds_red_external_interface_export,    --    leds_red_external_interface.export
			leds_green_external_interface_export  => CONNECTED_TO_leds_green_external_interface_export,  --  leds_green_external_interface.export
			hex_3_external_interface_HEX0         => CONNECTED_TO_hex_3_external_interface_HEX0,         --       hex_3_external_interface.HEX0
			hex_3_external_interface_HEX1         => CONNECTED_TO_hex_3_external_interface_HEX1,         --                               .HEX1
			hex_3_external_interface_HEX2         => CONNECTED_TO_hex_3_external_interface_HEX2,         --                               .HEX2
			hex_3_external_interface_HEX3         => CONNECTED_TO_hex_3_external_interface_HEX3,         --                               .HEX3
			hex_7_external_interface_HEX4         => CONNECTED_TO_hex_7_external_interface_HEX4,         --       hex_7_external_interface.HEX4
			hex_7_external_interface_HEX5         => CONNECTED_TO_hex_7_external_interface_HEX5,         --                               .HEX5
			hex_7_external_interface_HEX6         => CONNECTED_TO_hex_7_external_interface_HEX6,         --                               .HEX6
			hex_7_external_interface_HEX7         => CONNECTED_TO_hex_7_external_interface_HEX7,         --                               .HEX7
			pushbuttons_external_interface_export => CONNECTED_TO_pushbuttons_external_interface_export, -- pushbuttons_external_interface.export
			lcd_external_interface_DATA           => CONNECTED_TO_lcd_external_interface_DATA,           --         lcd_external_interface.DATA
			lcd_external_interface_ON             => CONNECTED_TO_lcd_external_interface_ON,             --                               .ON
			lcd_external_interface_BLON           => CONNECTED_TO_lcd_external_interface_BLON,           --                               .BLON
			lcd_external_interface_EN             => CONNECTED_TO_lcd_external_interface_EN,             --                               .EN
			lcd_external_interface_RS             => CONNECTED_TO_lcd_external_interface_RS,             --                               .RS
			lcd_external_interface_RW             => CONNECTED_TO_lcd_external_interface_RW              --                               .RW
		);

