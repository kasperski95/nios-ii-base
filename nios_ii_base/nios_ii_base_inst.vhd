	component nios_ii_base is
		port (
			clk_clk            : in    std_logic                     := 'X';             -- clk
			hex_3_HEX0         : out   std_logic_vector(6 downto 0);                     -- HEX0
			hex_3_HEX1         : out   std_logic_vector(6 downto 0);                     -- HEX1
			hex_3_HEX2         : out   std_logic_vector(6 downto 0);                     -- HEX2
			hex_3_HEX3         : out   std_logic_vector(6 downto 0);                     -- HEX3
			hex_7_HEX4         : out   std_logic_vector(6 downto 0);                     -- HEX4
			hex_7_HEX5         : out   std_logic_vector(6 downto 0);                     -- HEX5
			hex_7_HEX6         : out   std_logic_vector(6 downto 0);                     -- HEX6
			hex_7_HEX7         : out   std_logic_vector(6 downto 0);                     -- HEX7
			lcd_DATA           : inout std_logic_vector(7 downto 0)  := (others => 'X'); -- DATA
			lcd_ON             : out   std_logic;                                        -- ON
			lcd_BLON           : out   std_logic;                                        -- BLON
			lcd_EN             : out   std_logic;                                        -- EN
			lcd_RS             : out   std_logic;                                        -- RS
			lcd_RW             : out   std_logic;                                        -- RW
			leds_green_export  : out   std_logic_vector(8 downto 0);                     -- export
			leds_red_export    : out   std_logic_vector(17 downto 0);                    -- export
			pushbuttons_export : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- export
			reset_reset_n      : in    std_logic                     := 'X';             -- reset_n
			sw_sliders_export  : in    std_logic_vector(17 downto 0) := (others => 'X')  -- export
		);
	end component nios_ii_base;

	u0 : component nios_ii_base
		port map (
			clk_clk            => CONNECTED_TO_clk_clk,            --         clk.clk
			hex_3_HEX0         => CONNECTED_TO_hex_3_HEX0,         --       hex_3.HEX0
			hex_3_HEX1         => CONNECTED_TO_hex_3_HEX1,         --            .HEX1
			hex_3_HEX2         => CONNECTED_TO_hex_3_HEX2,         --            .HEX2
			hex_3_HEX3         => CONNECTED_TO_hex_3_HEX3,         --            .HEX3
			hex_7_HEX4         => CONNECTED_TO_hex_7_HEX4,         --       hex_7.HEX4
			hex_7_HEX5         => CONNECTED_TO_hex_7_HEX5,         --            .HEX5
			hex_7_HEX6         => CONNECTED_TO_hex_7_HEX6,         --            .HEX6
			hex_7_HEX7         => CONNECTED_TO_hex_7_HEX7,         --            .HEX7
			lcd_DATA           => CONNECTED_TO_lcd_DATA,           --         lcd.DATA
			lcd_ON             => CONNECTED_TO_lcd_ON,             --            .ON
			lcd_BLON           => CONNECTED_TO_lcd_BLON,           --            .BLON
			lcd_EN             => CONNECTED_TO_lcd_EN,             --            .EN
			lcd_RS             => CONNECTED_TO_lcd_RS,             --            .RS
			lcd_RW             => CONNECTED_TO_lcd_RW,             --            .RW
			leds_green_export  => CONNECTED_TO_leds_green_export,  --  leds_green.export
			leds_red_export    => CONNECTED_TO_leds_red_export,    --    leds_red.export
			pushbuttons_export => CONNECTED_TO_pushbuttons_export, -- pushbuttons.export
			reset_reset_n      => CONNECTED_TO_reset_reset_n,      --       reset.reset_n
			sw_sliders_export  => CONNECTED_TO_sw_sliders_export   --  sw_sliders.export
		);

