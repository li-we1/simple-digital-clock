-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "10/28/2018 14:25:12"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	input IS
    PORT (
	CLK_in : IN std_logic;
	LD_hour : IN std_logic;
	LD_minute : IN std_logic;
	P : IN std_logic;
	CR : IN std_logic;
	LD_hour_out : OUT std_logic;
	LD_minute_out : OUT std_logic;
	P_out : OUT std_logic;
	CR_out : OUT std_logic
	);
END input;

-- Design Ports Information
-- LD_hour_out	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LD_minute_out	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P_out	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CR_out	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LD_hour	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LD_minute	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CR	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_in	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF input IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK_in : std_logic;
SIGNAL ww_LD_hour : std_logic;
SIGNAL ww_LD_minute : std_logic;
SIGNAL ww_P : std_logic;
SIGNAL ww_CR : std_logic;
SIGNAL ww_LD_hour_out : std_logic;
SIGNAL ww_LD_minute_out : std_logic;
SIGNAL ww_P_out : std_logic;
SIGNAL ww_CR_out : std_logic;
SIGNAL \i[31]~17clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i[4]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i[3]~4clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_in~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LD_hour_out~output_o\ : std_logic;
SIGNAL \LD_minute_out~output_o\ : std_logic;
SIGNAL \P_out~output_o\ : std_logic;
SIGNAL \CR_out~output_o\ : std_logic;
SIGNAL \CLK_in~input_o\ : std_logic;
SIGNAL \CLK_in~inputclkctrl_outclk\ : std_logic;
SIGNAL \P~input_o\ : std_logic;
SIGNAL \LD_hour~input_o\ : std_logic;
SIGNAL \LD_minute~input_o\ : std_logic;
SIGNAL \CR~input_o\ : std_logic;
SIGNAL \i[31]~17_combout\ : std_logic;
SIGNAL \i[4]~25_combout\ : std_logic;
SIGNAL \i[4]~24_combout\ : std_logic;
SIGNAL \i[4]~1_combout\ : std_logic;
SIGNAL \i[1]~9_combout\ : std_logic;
SIGNAL \i[4]~0_combout\ : std_logic;
SIGNAL \i[4]~0clkctrl_outclk\ : std_logic;
SIGNAL \i[1]~_emulated_q\ : std_logic;
SIGNAL \i[1]~8_combout\ : std_logic;
SIGNAL \i[3]~27_combout\ : std_logic;
SIGNAL \i[3]~26_combout\ : std_logic;
SIGNAL \i[3]~5_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \i~23_combout\ : std_logic;
SIGNAL \i[31]~17clkctrl_outclk\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \i[3]~7_combout\ : std_logic;
SIGNAL \i[3]~4_combout\ : std_logic;
SIGNAL \i[3]~4clkctrl_outclk\ : std_logic;
SIGNAL \i[3]~_emulated_q\ : std_logic;
SIGNAL \i[3]~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \i[4]~3_combout\ : std_logic;
SIGNAL \i[4]~_emulated_q\ : std_logic;
SIGNAL \i[4]~2_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \i~16_combout\ : std_logic;
SIGNAL \i[0]~11_combout\ : std_logic;
SIGNAL \i[0]~_emulated_q\ : std_logic;
SIGNAL \i[0]~10_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \Equal1~10_combout\ : std_logic;
SIGNAL \i~18_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \hour~0_combout\ : std_logic;
SIGNAL \hour~1_combout\ : std_logic;
SIGNAL \hour~q\ : std_logic;
SIGNAL \clean~0_combout\ : std_logic;
SIGNAL \minute~0_combout\ : std_logic;
SIGNAL \minute~1_combout\ : std_logic;
SIGNAL \minute~q\ : std_logic;
SIGNAL \pause~0_combout\ : std_logic;
SIGNAL \pause~1_combout\ : std_logic;
SIGNAL \pause~q\ : std_logic;
SIGNAL \clean~1_combout\ : std_logic;
SIGNAL \clean~q\ : std_logic;
SIGNAL i : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_i[3]~4clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_i[4]~0clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_i[31]~17clkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK_in <= CLK_in;
ww_LD_hour <= LD_hour;
ww_LD_minute <= LD_minute;
ww_P <= P;
ww_CR <= CR;
LD_hour_out <= ww_LD_hour_out;
LD_minute_out <= ww_LD_minute_out;
P_out <= ww_P_out;
CR_out <= ww_CR_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i[31]~17clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i[31]~17_combout\);

\i[4]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i[4]~0_combout\);

\i[3]~4clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i[3]~4_combout\);

\CLK_in~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_in~input_o\);
\ALT_INV_i[3]~4clkctrl_outclk\ <= NOT \i[3]~4clkctrl_outclk\;
\ALT_INV_i[4]~0clkctrl_outclk\ <= NOT \i[4]~0clkctrl_outclk\;
\ALT_INV_i[31]~17clkctrl_outclk\ <= NOT \i[31]~17clkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y9_N9
\LD_hour_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour~q\,
	devoe => ww_devoe,
	o => \LD_hour_out~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\LD_minute_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \minute~q\,
	devoe => ww_devoe,
	o => \LD_minute_out~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\P_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pause~q\,
	devoe => ww_devoe,
	o => \P_out~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\CR_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clean~q\,
	devoe => ww_devoe,
	o => \CR_out~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\CLK_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_in,
	o => \CLK_in~input_o\);

-- Location: CLKCTRL_G2
\CLK_in~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_in~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_in~inputclkctrl_outclk\);

-- Location: IOIBUF_X34_Y17_N15
\P~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P,
	o => \P~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\LD_hour~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LD_hour,
	o => \LD_hour~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\LD_minute~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LD_minute,
	o => \LD_minute~input_o\);

-- Location: IOIBUF_X34_Y17_N1
\CR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CR,
	o => \CR~input_o\);

-- Location: LCCOMB_X23_Y13_N12
\i[31]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[31]~17_combout\ = (((!\CR~input_o\) # (!\LD_minute~input_o\)) # (!\LD_hour~input_o\)) # (!\P~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P~input_o\,
	datab => \LD_hour~input_o\,
	datac => \LD_minute~input_o\,
	datad => \CR~input_o\,
	combout => \i[31]~17_combout\);

-- Location: LCCOMB_X23_Y13_N26
\i[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[4]~25_combout\ = (!\LD_minute~input_o\) # (!\LD_hour~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LD_hour~input_o\,
	datac => \LD_minute~input_o\,
	combout => \i[4]~25_combout\);

-- Location: LCCOMB_X23_Y13_N28
\i[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[4]~24_combout\ = (\LD_hour~input_o\ & (\LD_minute~input_o\ & ((!\CR~input_o\) # (!\P~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P~input_o\,
	datab => \LD_hour~input_o\,
	datac => \LD_minute~input_o\,
	datad => \CR~input_o\,
	combout => \i[4]~24_combout\);

-- Location: LCCOMB_X23_Y13_N2
\i[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[4]~1_combout\ = (!\i[4]~25_combout\ & ((\i[4]~24_combout\) # (\i[4]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i[4]~24_combout\,
	datac => \i[4]~25_combout\,
	datad => \i[4]~1_combout\,
	combout => \i[4]~1_combout\);

-- Location: LCCOMB_X23_Y13_N6
\i[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[1]~9_combout\ = \i[4]~1_combout\ $ (((\Add0~2_combout\ & (!\Equal1~10_combout\ & !\hour~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \i[4]~1_combout\,
	datac => \Equal1~10_combout\,
	datad => \hour~0_combout\,
	combout => \i[1]~9_combout\);

-- Location: LCCOMB_X23_Y13_N18
\i[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[4]~0_combout\ = (\i[4]~25_combout\) # (\i[4]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i[4]~25_combout\,
	datad => \i[4]~24_combout\,
	combout => \i[4]~0_combout\);

-- Location: CLKCTRL_G8
\i[4]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i[4]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i[4]~0clkctrl_outclk\);

-- Location: FF_X23_Y13_N7
\i[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \i[1]~9_combout\,
	clrn => \ALT_INV_i[4]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i[1]~_emulated_q\);

-- Location: LCCOMB_X23_Y13_N16
\i[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[1]~8_combout\ = (!\i[4]~25_combout\ & ((\i[4]~24_combout\) # (\i[4]~1_combout\ $ (\i[1]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i[4]~25_combout\,
	datab => \i[4]~24_combout\,
	datac => \i[4]~1_combout\,
	datad => \i[1]~_emulated_q\,
	combout => \i[1]~8_combout\);

-- Location: LCCOMB_X23_Y13_N4
\i[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[3]~27_combout\ = ((\LD_minute~input_o\ & !\P~input_o\)) # (!\LD_hour~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LD_hour~input_o\,
	datac => \LD_minute~input_o\,
	datad => \P~input_o\,
	combout => \i[3]~27_combout\);

-- Location: LCCOMB_X23_Y13_N22
\i[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[3]~26_combout\ = (\LD_hour~input_o\ & (((\P~input_o\ & !\CR~input_o\)) # (!\LD_minute~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P~input_o\,
	datab => \LD_hour~input_o\,
	datac => \LD_minute~input_o\,
	datad => \CR~input_o\,
	combout => \i[3]~26_combout\);

-- Location: LCCOMB_X25_Y13_N10
\i[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[3]~5_combout\ = (!\i[3]~27_combout\ & ((\i[3]~26_combout\) # (\i[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i[3]~27_combout\,
	datac => \i[3]~26_combout\,
	datad => \i[3]~5_combout\,
	combout => \i[3]~5_combout\);

-- Location: LCCOMB_X24_Y13_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\i[1]~8_combout\ & (!\Add0~1\)) # (!\i[1]~8_combout\ & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!\i[1]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i[1]~8_combout\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X24_Y13_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (i(2) & (\Add0~3\ $ (GND))) # (!i(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((i(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X25_Y13_N22
\i~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \i~23_combout\ = (\Add0~4_combout\) # ((\hour~0_combout\) # (\Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~4_combout\,
	datac => \hour~0_combout\,
	datad => \Equal1~10_combout\,
	combout => \i~23_combout\);

-- Location: CLKCTRL_G7
\i[31]~17clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i[31]~17clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i[31]~17clkctrl_outclk\);

-- Location: FF_X25_Y13_N23
\i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \i~23_combout\,
	clrn => \ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(2));

-- Location: LCCOMB_X24_Y13_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\i[3]~6_combout\ & (!\Add0~5\)) # (!\i[3]~6_combout\ & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!\i[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i[3]~6_combout\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X25_Y13_N2
\i[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[3]~7_combout\ = \i[3]~5_combout\ $ (((\Add0~6_combout\ & (!\hour~0_combout\ & !\Equal1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i[3]~5_combout\,
	datab => \Add0~6_combout\,
	datac => \hour~0_combout\,
	datad => \Equal1~10_combout\,
	combout => \i[3]~7_combout\);

-- Location: LCCOMB_X23_Y13_N8
\i[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[3]~4_combout\ = (\i[3]~27_combout\) # (\i[3]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i[3]~27_combout\,
	datac => \i[3]~26_combout\,
	combout => \i[3]~4_combout\);

-- Location: CLKCTRL_G6
\i[3]~4clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i[3]~4clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i[3]~4clkctrl_outclk\);

-- Location: FF_X25_Y13_N3
\i[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \i[3]~7_combout\,
	clrn => \ALT_INV_i[3]~4clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i[3]~_emulated_q\);

-- Location: LCCOMB_X25_Y13_N24
\i[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[3]~6_combout\ = (!\i[3]~27_combout\ & ((\i[3]~26_combout\) # (\i[3]~5_combout\ $ (\i[3]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i[3]~5_combout\,
	datab => \i[3]~27_combout\,
	datac => \i[3]~26_combout\,
	datad => \i[3]~_emulated_q\,
	combout => \i[3]~6_combout\);

-- Location: LCCOMB_X24_Y13_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\i[4]~2_combout\ & (\Add0~7\ $ (GND))) # (!\i[4]~2_combout\ & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((\i[4]~2_combout\ & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i[4]~2_combout\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X23_Y13_N10
\i[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[4]~3_combout\ = \i[4]~1_combout\ $ (((\Add0~8_combout\ & (!\Equal1~10_combout\ & !\hour~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i[4]~1_combout\,
	datab => \Add0~8_combout\,
	datac => \Equal1~10_combout\,
	datad => \hour~0_combout\,
	combout => \i[4]~3_combout\);

-- Location: FF_X23_Y13_N11
\i[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \i[4]~3_combout\,
	clrn => \ALT_INV_i[4]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i[4]~_emulated_q\);

-- Location: LCCOMB_X23_Y13_N0
\i[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[4]~2_combout\ = (!\i[4]~25_combout\ & ((\i[4]~24_combout\) # (\i[4]~1_combout\ $ (\i[4]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i[4]~25_combout\,
	datab => \i[4]~24_combout\,
	datac => \i[4]~1_combout\,
	datad => \i[4]~_emulated_q\,
	combout => \i[4]~2_combout\);

-- Location: LCCOMB_X24_Y13_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (i(5) & (!\Add0~9\)) # (!i(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!i(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X24_Y13_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (i(6) & (\Add0~11\ $ (GND))) # (!i(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((i(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X24_Y13_N13
\i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	clrn => \ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(6));

-- Location: LCCOMB_X24_Y13_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (i(7) & (!\Add0~13\)) # (!i(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!i(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X24_Y13_N15
\i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	clrn => \ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(7));

-- Location: LCCOMB_X24_Y13_N16
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (i(8) & (\Add0~15\ $ (GND))) # (!i(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((i(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X24_Y13_N17
\i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	clrn => \ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(8));

-- Location: LCCOMB_X24_Y13_N18
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (i(9) & (!\Add0~17\)) # (!i(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!i(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X24_Y13_N19
\i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	clrn => \ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(9));

-- Location: LCCOMB_X24_Y13_N20
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (i(10) & (\Add0~19\ $ (GND))) # (!i(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((i(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X24_Y13_N21
\i[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	clrn => \ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(10));

-- Location: LCCOMB_X24_Y13_N22
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (i(11) & (!\Add0~21\)) # (!i(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!i(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X24_Y13_N23
\i[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	clrn => \ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(11));

-- Location: LCCOMB_X24_Y13_N24
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (i(12) & (\Add0~23\ $ (GND))) # (!i(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((i(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X24_Y13_N25
\i[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \Add0~24_combout\,
	clrn => \ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(12));

-- Location: LCCOMB_X24_Y13_N26
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (i(13) & (!\Add0~25\)) # (!i(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!i(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: FF_X24_Y13_N27
\i[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \Add0~26_combout\,
	clrn => \ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(13));

-- Location: LCCOMB_X24_Y13_N28
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (i(14) & (\Add0~27\ $ (GND))) # (!i(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((i(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: FF_X24_Y13_N29
\i[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \Add0~28_combout\,
	clrn => \ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(14));

-- Location: LCCOMB_X24_Y13_N30
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (i(15) & (!\Add0~29\)) # (!i(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!i(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: FF_X24_Y13_N31
\i[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \Add0~30_combout\,
	clrn => \ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(15));

-- Location: LCCOMB_X24_Y12_N0
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (i(16) & (\Add0~31\ $ (GND))) # (!i(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((i(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X24_Y12_N1
\i[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	clrn => \ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(16));

-- Location: LCCOMB_X24_Y12_N2
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (i(17) & (!\Add0~33\)) # (!i(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!i(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X24_Y12_N3
\i[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	clrn => \ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(17));

-- Location: LCCOMB_X24_Y12_N4
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (i(18) & (\Add0~35\ $ (GND))) # (!i(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((i(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X24_Y12_N5
\i[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	clrn => \ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(18));

-- Location: LCCOMB_X24_Y12_N6
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (i(19) & (!\Add0~37\)) # (!i(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!i(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: FF_X24_Y12_N7
\i[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \Add0~38_combout\,
	clrn => \ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(19));

-- Location: LCCOMB_X24_Y12_N8
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (i(20) & (\Add0~39\ $ (GND))) # (!i(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((i(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: FF_X24_Y12_N9
\i[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \Add0~40_combout\,
	clrn => \ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(20));

-- Location: LCCOMB_X24_Y12_N10
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (i(21) & (!\Add0~41\)) # (!i(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!i(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: FF_X24_Y12_N11
\i[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \Add0~42_combout\,
	clrn => \ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(21));

-- Location: LCCOMB_X24_Y12_N12
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (i(22) & (\Add0~43\ $ (GND))) # (!i(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((i(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: FF_X24_Y12_N13
\i[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \Add0~44_combout\,
	clrn => \ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(22));

-- Location: LCCOMB_X24_Y12_N14
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (i(23) & (!\Add0~45\)) # (!i(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!i(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X24_Y12_N15
\i[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	clrn => \ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(23));

-- Location: LCCOMB_X25_Y12_N12
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!i(21) & (!i(23) & (!i(22) & !i(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(21),
	datab => i(23),
	datac => i(22),
	datad => i(20),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X24_Y12_N16
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (i(24) & (\Add0~47\ $ (GND))) # (!i(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((i(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X24_Y12_N17
\i[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	clrn => \ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(24));

-- Location: LCCOMB_X24_Y12_N18
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (i(25) & (!\Add0~49\)) # (!i(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!i(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: FF_X24_Y12_N19
\i[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \Add0~50_combout\,
	clrn => \ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(25));

-- Location: LCCOMB_X24_Y12_N20
\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (i(26) & (\Add0~51\ $ (GND))) # (!i(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((i(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: FF_X24_Y12_N21
\i[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \Add0~52_combout\,
	clrn => \ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(26));

-- Location: LCCOMB_X24_Y12_N22
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (i(27) & (!\Add0~53\)) # (!i(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!i(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: FF_X24_Y12_N23
\i[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \Add0~54_combout\,
	clrn => \ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(27));

-- Location: LCCOMB_X25_Y12_N18
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!i(26) & (!i(27) & (!i(24) & !i(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(26),
	datab => i(27),
	datac => i(24),
	datad => i(25),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X25_Y12_N30
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!i(16) & (!i(19) & (!i(18) & !i(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(16),
	datab => i(19),
	datac => i(18),
	datad => i(17),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X24_Y12_N24
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (i(28) & (\Add0~55\ $ (GND))) # (!i(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((i(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: FF_X24_Y12_N25
\i[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \Add0~56_combout\,
	clrn => \ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(28));

-- Location: LCCOMB_X24_Y12_N26
\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (i(29) & (!\Add0~57\)) # (!i(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!i(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: FF_X24_Y12_N27
\i[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \Add0~58_combout\,
	clrn => \ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(29));

-- Location: LCCOMB_X24_Y12_N28
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (i(30) & (\Add0~59\ $ (GND))) # (!i(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((i(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: FF_X24_Y12_N29
\i[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \Add0~60_combout\,
	clrn => \ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(30));

-- Location: LCCOMB_X24_Y12_N30
\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = i(31) $ (\Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: FF_X24_Y12_N31
\i[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \Add0~62_combout\,
	clrn => \ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(31));

-- Location: LCCOMB_X25_Y12_N28
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!i(30) & (!i(28) & (!i(29) & !i(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(30),
	datab => i(28),
	datac => i(29),
	datad => i(31),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X25_Y12_N0
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~2_combout\ & (\Equal0~1_combout\ & (\Equal0~3_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X24_Y13_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \i[0]~10_combout\ $ (VCC)
-- \Add0~1\ = CARRY(\i[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i[0]~10_combout\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X25_Y13_N12
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!i(6) & (i(5) & (i(2) & !i(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(6),
	datab => i(5),
	datac => i(2),
	datad => i(7),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X25_Y13_N18
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!i(8) & (!i(10) & (!i(9) & !i(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(8),
	datab => i(10),
	datac => i(9),
	datad => i(11),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X25_Y13_N26
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!\i[1]~8_combout\ & (!\i[0]~10_combout\ & (!\i[4]~2_combout\ & !\i[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i[1]~8_combout\,
	datab => \i[0]~10_combout\,
	datac => \i[4]~2_combout\,
	datad => \i[3]~6_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X25_Y13_N16
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!i(13) & (!i(12) & (!i(14) & !i(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(13),
	datab => i(12),
	datac => i(14),
	datad => i(15),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X25_Y13_N0
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~7_combout\ & (\Equal0~6_combout\ & (\Equal0~8_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~8_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X25_Y13_N30
\i~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \i~16_combout\ = (\Add0~0_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Add0~0_combout\,
	datad => \Equal0~9_combout\,
	combout => \i~16_combout\);

-- Location: LCCOMB_X25_Y13_N6
\i[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[0]~11_combout\ = \i[3]~5_combout\ $ (((\i~16_combout\ & (!\hour~0_combout\ & !\Equal1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i~16_combout\,
	datab => \i[3]~5_combout\,
	datac => \hour~0_combout\,
	datad => \Equal1~10_combout\,
	combout => \i[0]~11_combout\);

-- Location: FF_X25_Y13_N7
\i[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \i[0]~11_combout\,
	clrn => \ALT_INV_i[3]~4clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i[0]~_emulated_q\);

-- Location: LCCOMB_X25_Y13_N20
\i[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[0]~10_combout\ = (!\i[3]~27_combout\ & ((\i[3]~26_combout\) # (\i[3]~5_combout\ $ (\i[0]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i[3]~5_combout\,
	datab => \i[3]~27_combout\,
	datac => \i[3]~26_combout\,
	datad => \i[0]~_emulated_q\,
	combout => \i[0]~10_combout\);

-- Location: LCCOMB_X25_Y13_N28
\Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~9_combout\ = (!\i~16_combout\ & (!\Add0~10_combout\ & \Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i~16_combout\,
	datab => \Add0~10_combout\,
	datad => \Add0~6_combout\,
	combout => \Equal1~9_combout\);

-- Location: LCCOMB_X23_Y12_N8
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\Add0~36_combout\ & (!\Add0~40_combout\ & (!\Add0~34_combout\ & !\Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~36_combout\,
	datab => \Add0~40_combout\,
	datac => \Add0~34_combout\,
	datad => \Add0~38_combout\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X23_Y13_N30
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!\Add0~20_combout\ & (!\Add0~18_combout\ & (!\Add0~24_combout\ & !\Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \Add0~18_combout\,
	datac => \Add0~24_combout\,
	datad => \Add0~22_combout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X23_Y13_N24
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!\Add0~4_combout\ & (!\Add0~12_combout\ & (!\Add0~14_combout\ & !\Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Add0~12_combout\,
	datac => \Add0~14_combout\,
	datad => \Add0~16_combout\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X23_Y12_N18
\Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!\Add0~30_combout\ & (!\Add0~32_combout\ & (!\Add0~26_combout\ & !\Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \Add0~32_combout\,
	datac => \Add0~26_combout\,
	datad => \Add0~28_combout\,
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X23_Y12_N16
\Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~2_combout\ & (\Equal1~1_combout\ & (!\Add0~42_combout\ & \Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \Equal1~1_combout\,
	datac => \Add0~42_combout\,
	datad => \Equal1~3_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X23_Y12_N10
\Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!\Add0~44_combout\ & (!\Add0~46_combout\ & (\Equal1~0_combout\ & \Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~44_combout\,
	datab => \Add0~46_combout\,
	datac => \Equal1~0_combout\,
	datad => \Equal1~4_combout\,
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X23_Y12_N24
\Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (!\Add0~52_combout\ & (!\Add0~48_combout\ & (!\Add0~50_combout\ & \Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~52_combout\,
	datab => \Add0~48_combout\,
	datac => \Add0~50_combout\,
	datad => \Equal1~5_combout\,
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X23_Y12_N6
\Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (!\Add0~56_combout\ & (!\Add0~54_combout\ & \Equal1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~56_combout\,
	datac => \Add0~54_combout\,
	datad => \Equal1~6_combout\,
	combout => \Equal1~7_combout\);

-- Location: LCCOMB_X23_Y12_N12
\Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = (!\Add0~62_combout\ & (!\Add0~58_combout\ & (!\Add0~60_combout\ & \Equal1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~62_combout\,
	datab => \Add0~58_combout\,
	datac => \Add0~60_combout\,
	datad => \Equal1~7_combout\,
	combout => \Equal1~8_combout\);

-- Location: LCCOMB_X23_Y12_N14
\Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~10_combout\ = (!\Add0~2_combout\ & (!\Add0~8_combout\ & (\Equal1~9_combout\ & \Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Add0~8_combout\,
	datac => \Equal1~9_combout\,
	datad => \Equal1~8_combout\,
	combout => \Equal1~10_combout\);

-- Location: LCCOMB_X25_Y13_N4
\i~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \i~18_combout\ = (\Add0~10_combout\) # ((\hour~0_combout\) # (\Equal1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~10_combout\,
	datac => \hour~0_combout\,
	datad => \Equal1~10_combout\,
	combout => \i~18_combout\);

-- Location: FF_X25_Y13_N5
\i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \i~18_combout\,
	clrn => \ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(5));

-- Location: LCCOMB_X23_Y13_N20
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\Add0~10_combout\ & (\Add0~8_combout\ & !\Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~10_combout\,
	datac => \Add0~8_combout\,
	datad => \Add0~2_combout\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X23_Y12_N26
\Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (\Equal2~0_combout\ & (!\Add0~6_combout\ & (\i~16_combout\ & \Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Add0~6_combout\,
	datac => \i~16_combout\,
	datad => \Equal1~8_combout\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X23_Y12_N4
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (\Add0~2_combout\ & (\Add0~8_combout\ & (\Equal1~9_combout\ & \Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Add0~8_combout\,
	datac => \Equal1~9_combout\,
	datad => \Equal1~8_combout\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X23_Y13_N14
\Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = ((\Add0~8_combout\) # (!\Add0~2_combout\)) # (!\Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~10_combout\,
	datac => \Add0~8_combout\,
	datad => \Add0~2_combout\,
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X23_Y12_N2
\Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (\Equal4~0_combout\) # ((\Add0~6_combout\) # ((!\Equal1~8_combout\) # (!\i~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \Add0~6_combout\,
	datac => \i~16_combout\,
	datad => \Equal1~8_combout\,
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X23_Y12_N0
\hour~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~0_combout\ = (\Equal2~1_combout\) # ((\Equal3~0_combout\) # (!\Equal4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datac => \Equal3~0_combout\,
	datad => \Equal4~1_combout\,
	combout => \hour~0_combout\);

-- Location: LCCOMB_X22_Y12_N4
\hour~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~1_combout\ = (\i[31]~17_combout\ & (((\hour~q\)))) # (!\i[31]~17_combout\ & (!\Equal1~10_combout\ & ((\hour~q\) # (!\hour~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i[31]~17_combout\,
	datab => \hour~0_combout\,
	datac => \hour~q\,
	datad => \Equal1~10_combout\,
	combout => \hour~1_combout\);

-- Location: FF_X22_Y12_N5
hour : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \hour~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hour~q\);

-- Location: LCCOMB_X23_Y12_N28
\clean~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clean~0_combout\ = (!\Equal2~1_combout\ & (!\i[31]~17_combout\ & (!\Equal1~10_combout\ & !\Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datab => \i[31]~17_combout\,
	datac => \Equal1~10_combout\,
	datad => \Equal3~0_combout\,
	combout => \clean~0_combout\);

-- Location: LCCOMB_X22_Y12_N24
\minute~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \minute~0_combout\ = (\minute~q\ & ((\i[31]~17_combout\) # ((\Equal1~10_combout\) # (!\Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i[31]~17_combout\,
	datab => \minute~q\,
	datac => \Equal1~10_combout\,
	datad => \Equal2~1_combout\,
	combout => \minute~0_combout\);

-- Location: LCCOMB_X23_Y12_N20
\minute~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \minute~1_combout\ = (\minute~0_combout\) # ((\clean~0_combout\ & \Equal4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clean~0_combout\,
	datac => \Equal4~1_combout\,
	datad => \minute~0_combout\,
	combout => \minute~1_combout\);

-- Location: FF_X23_Y12_N21
minute : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \minute~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \minute~q\);

-- Location: LCCOMB_X23_Y12_N30
\pause~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pause~0_combout\ = (\Equal2~1_combout\) # ((\i[31]~17_combout\) # ((\Equal1~10_combout\) # (!\Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datab => \i[31]~17_combout\,
	datac => \Equal1~10_combout\,
	datad => \Equal3~0_combout\,
	combout => \pause~0_combout\);

-- Location: LCCOMB_X23_Y12_N22
\pause~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pause~1_combout\ = (\pause~0_combout\ & ((\pause~q\) # ((\Equal4~1_combout\ & \clean~0_combout\)))) # (!\pause~0_combout\ & (\Equal4~1_combout\ & ((\clean~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pause~0_combout\,
	datab => \Equal4~1_combout\,
	datac => \pause~q\,
	datad => \clean~0_combout\,
	combout => \pause~1_combout\);

-- Location: FF_X23_Y12_N23
pause : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \pause~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pause~q\);

-- Location: LCCOMB_X22_Y12_N30
\clean~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clean~1_combout\ = (\clean~0_combout\ & (\Equal4~1_combout\)) # (!\clean~0_combout\ & ((\clean~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~1_combout\,
	datac => \clean~q\,
	datad => \clean~0_combout\,
	combout => \clean~1_combout\);

-- Location: FF_X22_Y12_N31
clean : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_in~inputclkctrl_outclk\,
	d => \clean~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clean~q\);

ww_LD_hour_out <= \LD_hour_out~output_o\;

ww_LD_minute_out <= \LD_minute_out~output_o\;

ww_P_out <= \P_out~output_o\;

ww_CR_out <= \CR_out~output_o\;
END structure;


