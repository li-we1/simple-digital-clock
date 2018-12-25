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

-- DATE "11/03/2018 12:03:55"

-- 
-- Device: Altera EP4CE6F17C8 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	clock IS
    PORT (
	alarm : OUT std_logic;
	CLK : IN std_logic;
	LD_hour : IN std_logic;
	LD_minute : IN std_logic;
	P : IN std_logic;
	CR : IN std_logic;
	DIG : OUT std_logic_vector(5 DOWNTO 0);
	SEG : OUT std_logic_vector(7 DOWNTO 0)
	);
END clock;

-- Design Ports Information
-- alarm	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIG[5]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIG[4]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIG[3]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIG[2]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIG[1]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIG[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[7]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[6]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[5]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[4]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[3]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[2]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[0]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LD_hour	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LD_minute	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CR	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF clock IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_alarm : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_LD_hour : std_logic;
SIGNAL ww_LD_minute : std_logic;
SIGNAL ww_P : std_logic;
SIGNAL ww_CR : std_logic;
SIGNAL ww_DIG : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_SEG : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst11|CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst13|CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst11|i[4]~4clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst11|i[31]~12clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst11|i[5]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \alarm~output_o\ : std_logic;
SIGNAL \DIG[5]~output_o\ : std_logic;
SIGNAL \DIG[4]~output_o\ : std_logic;
SIGNAL \DIG[3]~output_o\ : std_logic;
SIGNAL \DIG[2]~output_o\ : std_logic;
SIGNAL \DIG[1]~output_o\ : std_logic;
SIGNAL \DIG[0]~output_o\ : std_logic;
SIGNAL \SEG[7]~output_o\ : std_logic;
SIGNAL \SEG[6]~output_o\ : std_logic;
SIGNAL \SEG[5]~output_o\ : std_logic;
SIGNAL \SEG[4]~output_o\ : std_logic;
SIGNAL \SEG[3]~output_o\ : std_logic;
SIGNAL \SEG[2]~output_o\ : std_logic;
SIGNAL \SEG[1]~output_o\ : std_logic;
SIGNAL \SEG[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst13|Add0~0_combout\ : std_logic;
SIGNAL \inst13|Add0~1\ : std_logic;
SIGNAL \inst13|Add0~2_combout\ : std_logic;
SIGNAL \inst13|Add0~3\ : std_logic;
SIGNAL \inst13|Add0~4_combout\ : std_logic;
SIGNAL \inst13|Add0~5\ : std_logic;
SIGNAL \inst13|Add0~6_combout\ : std_logic;
SIGNAL \inst13|Add0~7\ : std_logic;
SIGNAL \inst13|Add0~8_combout\ : std_logic;
SIGNAL \inst13|Add0~9\ : std_logic;
SIGNAL \inst13|Add0~10_combout\ : std_logic;
SIGNAL \inst13|Add0~11\ : std_logic;
SIGNAL \inst13|Add0~12_combout\ : std_logic;
SIGNAL \inst13|i~11_combout\ : std_logic;
SIGNAL \inst13|Add0~13\ : std_logic;
SIGNAL \inst13|Add0~14_combout\ : std_logic;
SIGNAL \inst13|Add0~15\ : std_logic;
SIGNAL \inst13|Add0~16_combout\ : std_logic;
SIGNAL \inst13|Add0~17\ : std_logic;
SIGNAL \inst13|Add0~18_combout\ : std_logic;
SIGNAL \inst13|Add0~19\ : std_logic;
SIGNAL \inst13|Add0~20_combout\ : std_logic;
SIGNAL \inst13|Add0~21\ : std_logic;
SIGNAL \inst13|Add0~22_combout\ : std_logic;
SIGNAL \inst13|i~10_combout\ : std_logic;
SIGNAL \inst13|Add0~23\ : std_logic;
SIGNAL \inst13|Add0~24_combout\ : std_logic;
SIGNAL \inst13|i~9_combout\ : std_logic;
SIGNAL \inst13|Add0~25\ : std_logic;
SIGNAL \inst13|Add0~26_combout\ : std_logic;
SIGNAL \inst13|i~8_combout\ : std_logic;
SIGNAL \inst13|Add0~27\ : std_logic;
SIGNAL \inst13|Add0~28_combout\ : std_logic;
SIGNAL \inst13|i~7_combout\ : std_logic;
SIGNAL \inst13|Add0~29\ : std_logic;
SIGNAL \inst13|Add0~30_combout\ : std_logic;
SIGNAL \inst13|Add0~31\ : std_logic;
SIGNAL \inst13|Add0~32_combout\ : std_logic;
SIGNAL \inst13|i~6_combout\ : std_logic;
SIGNAL \inst13|Add0~33\ : std_logic;
SIGNAL \inst13|Add0~34_combout\ : std_logic;
SIGNAL \inst13|Add0~35\ : std_logic;
SIGNAL \inst13|Add0~36_combout\ : std_logic;
SIGNAL \inst13|i~5_combout\ : std_logic;
SIGNAL \inst13|Add0~37\ : std_logic;
SIGNAL \inst13|Add0~38_combout\ : std_logic;
SIGNAL \inst13|i~4_combout\ : std_logic;
SIGNAL \inst13|Add0~39\ : std_logic;
SIGNAL \inst13|Add0~40_combout\ : std_logic;
SIGNAL \inst13|i~3_combout\ : std_logic;
SIGNAL \inst13|Add0~41\ : std_logic;
SIGNAL \inst13|Add0~42_combout\ : std_logic;
SIGNAL \inst13|i~2_combout\ : std_logic;
SIGNAL \inst13|Add0~43\ : std_logic;
SIGNAL \inst13|Add0~44_combout\ : std_logic;
SIGNAL \inst13|i~1_combout\ : std_logic;
SIGNAL \inst13|Add0~45\ : std_logic;
SIGNAL \inst13|Add0~46_combout\ : std_logic;
SIGNAL \inst13|Add0~47\ : std_logic;
SIGNAL \inst13|Add0~48_combout\ : std_logic;
SIGNAL \inst13|i~0_combout\ : std_logic;
SIGNAL \inst13|Add0~49\ : std_logic;
SIGNAL \inst13|Add0~50_combout\ : std_logic;
SIGNAL \inst13|Add0~51\ : std_logic;
SIGNAL \inst13|Add0~52_combout\ : std_logic;
SIGNAL \inst13|Add0~53\ : std_logic;
SIGNAL \inst13|Add0~54_combout\ : std_logic;
SIGNAL \inst13|Add0~55\ : std_logic;
SIGNAL \inst13|Add0~56_combout\ : std_logic;
SIGNAL \inst13|Add0~57\ : std_logic;
SIGNAL \inst13|Add0~58_combout\ : std_logic;
SIGNAL \inst13|Add0~59\ : std_logic;
SIGNAL \inst13|Add0~60_combout\ : std_logic;
SIGNAL \inst13|Add0~61\ : std_logic;
SIGNAL \inst13|Add0~62_combout\ : std_logic;
SIGNAL \inst13|Equal0~9_combout\ : std_logic;
SIGNAL \inst13|Equal0~0_combout\ : std_logic;
SIGNAL \inst13|Equal0~1_combout\ : std_logic;
SIGNAL \inst13|Equal0~2_combout\ : std_logic;
SIGNAL \inst13|Equal0~3_combout\ : std_logic;
SIGNAL \inst13|Equal0~4_combout\ : std_logic;
SIGNAL \inst13|Equal0~5_combout\ : std_logic;
SIGNAL \inst13|Equal0~6_combout\ : std_logic;
SIGNAL \inst13|Equal0~7_combout\ : std_logic;
SIGNAL \inst13|Equal0~8_combout\ : std_logic;
SIGNAL \inst13|Equal0~10_combout\ : std_logic;
SIGNAL \inst13|CLK~0_combout\ : std_logic;
SIGNAL \inst13|CLK~feeder_combout\ : std_logic;
SIGNAL \inst13|CLK~q\ : std_logic;
SIGNAL \inst13|CLK~clkctrl_outclk\ : std_logic;
SIGNAL \inst|data~8_combout\ : std_logic;
SIGNAL \inst11|CLK~0_combout\ : std_logic;
SIGNAL \inst11|CLK~feeder_combout\ : std_logic;
SIGNAL \inst11|Add0~0_combout\ : std_logic;
SIGNAL \inst11|count~0_combout\ : std_logic;
SIGNAL \inst11|Add0~1\ : std_logic;
SIGNAL \inst11|Add0~2_combout\ : std_logic;
SIGNAL \inst11|Add0~3\ : std_logic;
SIGNAL \inst11|Add0~4_combout\ : std_logic;
SIGNAL \inst11|Add0~5\ : std_logic;
SIGNAL \inst11|Add0~6_combout\ : std_logic;
SIGNAL \inst11|Add0~7\ : std_logic;
SIGNAL \inst11|Add0~8_combout\ : std_logic;
SIGNAL \inst11|count~1_combout\ : std_logic;
SIGNAL \inst11|Add0~9\ : std_logic;
SIGNAL \inst11|Add0~10_combout\ : std_logic;
SIGNAL \inst11|Add0~11\ : std_logic;
SIGNAL \inst11|Add0~12_combout\ : std_logic;
SIGNAL \inst11|Add0~13\ : std_logic;
SIGNAL \inst11|Add0~14_combout\ : std_logic;
SIGNAL \inst11|Add0~15\ : std_logic;
SIGNAL \inst11|Add0~16_combout\ : std_logic;
SIGNAL \inst11|count~2_combout\ : std_logic;
SIGNAL \inst11|Add0~17\ : std_logic;
SIGNAL \inst11|Add0~18_combout\ : std_logic;
SIGNAL \inst11|count~3_combout\ : std_logic;
SIGNAL \inst11|Add0~19\ : std_logic;
SIGNAL \inst11|Add0~20_combout\ : std_logic;
SIGNAL \inst11|count~4_combout\ : std_logic;
SIGNAL \inst11|Add0~21\ : std_logic;
SIGNAL \inst11|Add0~22_combout\ : std_logic;
SIGNAL \inst11|Add0~23\ : std_logic;
SIGNAL \inst11|Add0~24_combout\ : std_logic;
SIGNAL \inst11|Add0~25\ : std_logic;
SIGNAL \inst11|Add0~26_combout\ : std_logic;
SIGNAL \inst11|count~5_combout\ : std_logic;
SIGNAL \inst11|Add0~27\ : std_logic;
SIGNAL \inst11|Add0~28_combout\ : std_logic;
SIGNAL \inst11|Add0~29\ : std_logic;
SIGNAL \inst11|Add0~30_combout\ : std_logic;
SIGNAL \inst11|Add0~31\ : std_logic;
SIGNAL \inst11|Add0~32_combout\ : std_logic;
SIGNAL \inst11|Add0~33\ : std_logic;
SIGNAL \inst11|Add0~34_combout\ : std_logic;
SIGNAL \inst11|Add0~35\ : std_logic;
SIGNAL \inst11|Add0~36_combout\ : std_logic;
SIGNAL \inst11|Add0~37\ : std_logic;
SIGNAL \inst11|Add0~38_combout\ : std_logic;
SIGNAL \inst11|Add0~39\ : std_logic;
SIGNAL \inst11|Add0~40_combout\ : std_logic;
SIGNAL \inst11|Add0~41\ : std_logic;
SIGNAL \inst11|Add0~42_combout\ : std_logic;
SIGNAL \inst11|Add0~43\ : std_logic;
SIGNAL \inst11|Add0~44_combout\ : std_logic;
SIGNAL \inst11|Add0~45\ : std_logic;
SIGNAL \inst11|Add0~46_combout\ : std_logic;
SIGNAL \inst11|Add0~47\ : std_logic;
SIGNAL \inst11|Add0~48_combout\ : std_logic;
SIGNAL \inst11|Add0~49\ : std_logic;
SIGNAL \inst11|Add0~50_combout\ : std_logic;
SIGNAL \inst11|Add0~51\ : std_logic;
SIGNAL \inst11|Add0~52_combout\ : std_logic;
SIGNAL \inst11|Add0~53\ : std_logic;
SIGNAL \inst11|Add0~54_combout\ : std_logic;
SIGNAL \inst8|Equal0~8_combout\ : std_logic;
SIGNAL \inst11|Add0~55\ : std_logic;
SIGNAL \inst11|Add0~56_combout\ : std_logic;
SIGNAL \inst11|Add0~57\ : std_logic;
SIGNAL \inst11|Add0~58_combout\ : std_logic;
SIGNAL \inst11|Add0~59\ : std_logic;
SIGNAL \inst11|Add0~60_combout\ : std_logic;
SIGNAL \inst11|Add0~61\ : std_logic;
SIGNAL \inst11|Add0~62_combout\ : std_logic;
SIGNAL \inst8|Equal0~9_combout\ : std_logic;
SIGNAL \inst8|Equal0~2_combout\ : std_logic;
SIGNAL \inst8|Equal0~0_combout\ : std_logic;
SIGNAL \inst8|Equal0~3_combout\ : std_logic;
SIGNAL \inst8|Equal0~1_combout\ : std_logic;
SIGNAL \inst8|Equal0~4_combout\ : std_logic;
SIGNAL \inst8|Equal0~6_combout\ : std_logic;
SIGNAL \inst8|Equal0~5_combout\ : std_logic;
SIGNAL \inst8|Equal0~7_combout\ : std_logic;
SIGNAL \inst8|Equal0~10_combout\ : std_logic;
SIGNAL \inst11|CLK~q\ : std_logic;
SIGNAL \inst11|CLK~clkctrl_outclk\ : std_logic;
SIGNAL \CR~input_o\ : std_logic;
SIGNAL \P~input_o\ : std_logic;
SIGNAL \LD_hour~input_o\ : std_logic;
SIGNAL \LD_minute~input_o\ : std_logic;
SIGNAL \inst11|i[5]~25_combout\ : std_logic;
SIGNAL \inst11|clean~2_combout\ : std_logic;
SIGNAL \inst11|i[5]~1_combout\ : std_logic;
SIGNAL \inst11|i[4]~26_combout\ : std_logic;
SIGNAL \inst11|i[4]~27_combout\ : std_logic;
SIGNAL \inst11|i[4]~5_combout\ : std_logic;
SIGNAL \inst11|Equal2~9_combout\ : std_logic;
SIGNAL \inst11|Equal2~10_combout\ : std_logic;
SIGNAL \inst11|Equal1~6_combout\ : std_logic;
SIGNAL \inst11|Equal1~8_combout\ : std_logic;
SIGNAL \inst11|Equal1~5_combout\ : std_logic;
SIGNAL \inst11|Equal1~7_combout\ : std_logic;
SIGNAL \inst11|Equal1~9_combout\ : std_logic;
SIGNAL \inst11|Add1~0_combout\ : std_logic;
SIGNAL \inst11|Equal2~4_combout\ : std_logic;
SIGNAL \inst11|Equal2~3_combout\ : std_logic;
SIGNAL \inst11|Equal2~5_combout\ : std_logic;
SIGNAL \inst11|Equal2~6_combout\ : std_logic;
SIGNAL \inst11|Equal2~7_combout\ : std_logic;
SIGNAL \inst11|Equal2~8_combout\ : std_logic;
SIGNAL \inst11|i[31]~12_combout\ : std_logic;
SIGNAL \inst11|i[31]~12clkctrl_outclk\ : std_logic;
SIGNAL \inst11|Add1~43\ : std_logic;
SIGNAL \inst11|Add1~44_combout\ : std_logic;
SIGNAL \inst11|Add1~45\ : std_logic;
SIGNAL \inst11|Add1~46_combout\ : std_logic;
SIGNAL \inst11|Add1~47\ : std_logic;
SIGNAL \inst11|Add1~48_combout\ : std_logic;
SIGNAL \inst11|Add1~49\ : std_logic;
SIGNAL \inst11|Add1~50_combout\ : std_logic;
SIGNAL \inst11|Add1~51\ : std_logic;
SIGNAL \inst11|Add1~52_combout\ : std_logic;
SIGNAL \inst11|Add1~53\ : std_logic;
SIGNAL \inst11|Add1~54_combout\ : std_logic;
SIGNAL \inst11|Add1~55\ : std_logic;
SIGNAL \inst11|Add1~56_combout\ : std_logic;
SIGNAL \inst11|Add1~57\ : std_logic;
SIGNAL \inst11|Add1~58_combout\ : std_logic;
SIGNAL \inst11|Add1~59\ : std_logic;
SIGNAL \inst11|Add1~60_combout\ : std_logic;
SIGNAL \inst11|Add1~61\ : std_logic;
SIGNAL \inst11|Add1~62_combout\ : std_logic;
SIGNAL \inst11|Equal2~0_combout\ : std_logic;
SIGNAL \inst11|Equal2~1_combout\ : std_logic;
SIGNAL \inst11|Equal2~2_combout\ : std_logic;
SIGNAL \inst11|Equal2~11_combout\ : std_logic;
SIGNAL \inst11|Equal5~0_combout\ : std_logic;
SIGNAL \inst11|Equal3~0_combout\ : std_logic;
SIGNAL \inst11|Equal3~1_combout\ : std_logic;
SIGNAL \inst11|Equal3~2_combout\ : std_logic;
SIGNAL \inst11|Equal4~0_combout\ : std_logic;
SIGNAL \inst11|Equal4~1_combout\ : std_logic;
SIGNAL \inst11|Equal4~2_combout\ : std_logic;
SIGNAL \inst11|minute~0_combout\ : std_logic;
SIGNAL \inst11|i~24_combout\ : std_logic;
SIGNAL \inst11|Add1~1\ : std_logic;
SIGNAL \inst11|Add1~2_combout\ : std_logic;
SIGNAL \inst11|i~23_combout\ : std_logic;
SIGNAL \inst11|Add1~3\ : std_logic;
SIGNAL \inst11|Add1~4_combout\ : std_logic;
SIGNAL \inst11|i[2]~11_combout\ : std_logic;
SIGNAL \inst11|i[4]~4_combout\ : std_logic;
SIGNAL \inst11|i[4]~4clkctrl_outclk\ : std_logic;
SIGNAL \inst11|i[2]~_emulated_q\ : std_logic;
SIGNAL \inst11|i[2]~10_combout\ : std_logic;
SIGNAL \inst11|Add1~5\ : std_logic;
SIGNAL \inst11|Add1~6_combout\ : std_logic;
SIGNAL \inst11|i[3]~9_combout\ : std_logic;
SIGNAL \inst11|i[5]~0_combout\ : std_logic;
SIGNAL \inst11|i[5]~0clkctrl_outclk\ : std_logic;
SIGNAL \inst11|i[3]~_emulated_q\ : std_logic;
SIGNAL \inst11|i[3]~8_combout\ : std_logic;
SIGNAL \inst11|Add1~7\ : std_logic;
SIGNAL \inst11|Add1~8_combout\ : std_logic;
SIGNAL \inst11|i[4]~7_combout\ : std_logic;
SIGNAL \inst11|i[4]~_emulated_q\ : std_logic;
SIGNAL \inst11|i[4]~6_combout\ : std_logic;
SIGNAL \inst11|Add1~9\ : std_logic;
SIGNAL \inst11|Add1~10_combout\ : std_logic;
SIGNAL \inst11|i[5]~3_combout\ : std_logic;
SIGNAL \inst11|i[5]~_emulated_q\ : std_logic;
SIGNAL \inst11|i[5]~2_combout\ : std_logic;
SIGNAL \inst11|Add1~11\ : std_logic;
SIGNAL \inst11|Add1~12_combout\ : std_logic;
SIGNAL \inst11|i~18_combout\ : std_logic;
SIGNAL \inst11|Add1~13\ : std_logic;
SIGNAL \inst11|Add1~14_combout\ : std_logic;
SIGNAL \inst11|Add1~15\ : std_logic;
SIGNAL \inst11|Add1~16_combout\ : std_logic;
SIGNAL \inst11|Add1~17\ : std_logic;
SIGNAL \inst11|Add1~18_combout\ : std_logic;
SIGNAL \inst11|Add1~19\ : std_logic;
SIGNAL \inst11|Add1~20_combout\ : std_logic;
SIGNAL \inst11|Add1~21\ : std_logic;
SIGNAL \inst11|Add1~22_combout\ : std_logic;
SIGNAL \inst11|Add1~23\ : std_logic;
SIGNAL \inst11|Add1~24_combout\ : std_logic;
SIGNAL \inst11|Add1~25\ : std_logic;
SIGNAL \inst11|Add1~26_combout\ : std_logic;
SIGNAL \inst11|Add1~27\ : std_logic;
SIGNAL \inst11|Add1~28_combout\ : std_logic;
SIGNAL \inst11|Add1~29\ : std_logic;
SIGNAL \inst11|Add1~30_combout\ : std_logic;
SIGNAL \inst11|Add1~31\ : std_logic;
SIGNAL \inst11|Add1~32_combout\ : std_logic;
SIGNAL \inst11|Add1~33\ : std_logic;
SIGNAL \inst11|Add1~34_combout\ : std_logic;
SIGNAL \inst11|Add1~35\ : std_logic;
SIGNAL \inst11|Add1~36_combout\ : std_logic;
SIGNAL \inst11|Add1~37\ : std_logic;
SIGNAL \inst11|Add1~38_combout\ : std_logic;
SIGNAL \inst11|Add1~39\ : std_logic;
SIGNAL \inst11|Add1~40_combout\ : std_logic;
SIGNAL \inst11|Add1~41\ : std_logic;
SIGNAL \inst11|Add1~42_combout\ : std_logic;
SIGNAL \inst11|Equal1~2_combout\ : std_logic;
SIGNAL \inst11|Equal1~1_combout\ : std_logic;
SIGNAL \inst11|Equal1~0_combout\ : std_logic;
SIGNAL \inst11|Equal1~3_combout\ : std_logic;
SIGNAL \inst11|Equal1~4_combout\ : std_logic;
SIGNAL \inst11|i~17_combout\ : std_logic;
SIGNAL \inst11|Equal3~3_combout\ : std_logic;
SIGNAL \inst11|clean~0_combout\ : std_logic;
SIGNAL \inst11|clean~1_combout\ : std_logic;
SIGNAL \inst11|clean~q\ : std_logic;
SIGNAL \inst11|pause~0_combout\ : std_logic;
SIGNAL \inst11|pause~q\ : std_logic;
SIGNAL \inst2|data[4]~6_combout\ : std_logic;
SIGNAL \inst|data~4_combout\ : std_logic;
SIGNAL \inst|data~5_combout\ : std_logic;
SIGNAL \inst|data~7_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|data~3_combout\ : std_logic;
SIGNAL \inst|data[6]~1_combout\ : std_logic;
SIGNAL \inst|data[6]~2_combout\ : std_logic;
SIGNAL \inst|data~6_combout\ : std_logic;
SIGNAL \inst|data~0_combout\ : std_logic;
SIGNAL \inst|process_0~0_combout\ : std_logic;
SIGNAL \inst|C~0_combout\ : std_logic;
SIGNAL \inst|C~q\ : std_logic;
SIGNAL \inst11|minute~1_combout\ : std_logic;
SIGNAL \inst11|minute~2_combout\ : std_logic;
SIGNAL \inst11|minute~q\ : std_logic;
SIGNAL \inst5~combout\ : std_logic;
SIGNAL \inst5~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|data~6_combout\ : std_logic;
SIGNAL \inst1|data~5_combout\ : std_logic;
SIGNAL \inst1|data~0_combout\ : std_logic;
SIGNAL \inst1|data~7_combout\ : std_logic;
SIGNAL \inst1|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|data~3_combout\ : std_logic;
SIGNAL \inst1|data[6]~2_combout\ : std_logic;
SIGNAL \inst1|data~1_combout\ : std_logic;
SIGNAL \inst1|data~4_combout\ : std_logic;
SIGNAL \inst7|comb~1_combout\ : std_logic;
SIGNAL \inst7|comb~0_combout\ : std_logic;
SIGNAL \inst7|Equal2~0_combout\ : std_logic;
SIGNAL \inst7|Equal2~1_combout\ : std_logic;
SIGNAL \inst7|comb~2_combout\ : std_logic;
SIGNAL \inst7|Equal2~2_combout\ : std_logic;
SIGNAL \inst7|alarm~combout\ : std_logic;
SIGNAL \inst8|tx[4]~feeder_combout\ : std_logic;
SIGNAL \inst8|tx[2]~feeder_combout\ : std_logic;
SIGNAL \inst8|tx[1]~feeder_combout\ : std_logic;
SIGNAL \inst8|tx[0]~1_combout\ : std_logic;
SIGNAL \inst8|tx[5]~0_combout\ : std_logic;
SIGNAL \inst8|Mux14~0_combout\ : std_logic;
SIGNAL \inst11|hour~0_combout\ : std_logic;
SIGNAL \inst11|hour~q\ : std_logic;
SIGNAL \inst1|process_0~0_combout\ : std_logic;
SIGNAL \inst1|C~q\ : std_logic;
SIGNAL \inst6~combout\ : std_logic;
SIGNAL \inst6~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|LessThan2~1_combout\ : std_logic;
SIGNAL \inst2|data~11_combout\ : std_logic;
SIGNAL \inst2|LessThan2~0_combout\ : std_logic;
SIGNAL \inst2|data[7]~12_combout\ : std_logic;
SIGNAL \inst2|data[4]~15_combout\ : std_logic;
SIGNAL \inst2|data[5]~14_combout\ : std_logic;
SIGNAL \inst2|data[0]~9_combout\ : std_logic;
SIGNAL \inst2|data~10_combout\ : std_logic;
SIGNAL \inst2|data~13_combout\ : std_logic;
SIGNAL \inst2|data[0]~7_combout\ : std_logic;
SIGNAL \inst2|data~8_combout\ : std_logic;
SIGNAL \inst8|Mux0~0_combout\ : std_logic;
SIGNAL \inst8|tem[0]~7_combout\ : std_logic;
SIGNAL \inst8|tem[0]~8_combout\ : std_logic;
SIGNAL \inst8|Mux21~0_combout\ : std_logic;
SIGNAL \inst8|Mux43~0_combout\ : std_logic;
SIGNAL \inst8|Mux28~0_combout\ : std_logic;
SIGNAL \inst8|Mux43~1_combout\ : std_logic;
SIGNAL \inst8|tem[6]~0_combout\ : std_logic;
SIGNAL \inst8|Mux35~0_combout\ : std_logic;
SIGNAL \inst8|tem[6]~9_combout\ : std_logic;
SIGNAL \inst8|tem[6]~10_combout\ : std_logic;
SIGNAL \inst8|tem[6]~11_combout\ : std_logic;
SIGNAL \inst8|tem[6]~12_combout\ : std_logic;
SIGNAL \inst8|Mux15~0_combout\ : std_logic;
SIGNAL \inst8|Mux8~0_combout\ : std_logic;
SIGNAL \inst8|Mux1~0_combout\ : std_logic;
SIGNAL \inst8|Mux22~0_combout\ : std_logic;
SIGNAL \inst8|Mux44~0_combout\ : std_logic;
SIGNAL \inst8|Mux29~0_combout\ : std_logic;
SIGNAL \inst8|Mux44~1_combout\ : std_logic;
SIGNAL \inst8|tem[5]~1_combout\ : std_logic;
SIGNAL \inst8|Mux36~0_combout\ : std_logic;
SIGNAL \inst8|Mux16~0_combout\ : std_logic;
SIGNAL \inst8|Mux23~0_combout\ : std_logic;
SIGNAL \inst8|Mux45~0_combout\ : std_logic;
SIGNAL \inst8|Mux30~0_combout\ : std_logic;
SIGNAL \inst8|Mux2~0_combout\ : std_logic;
SIGNAL \inst8|Mux45~1_combout\ : std_logic;
SIGNAL \inst8|tem[4]~2_combout\ : std_logic;
SIGNAL \inst8|Mux37~0_combout\ : std_logic;
SIGNAL \inst8|Mux17~0_combout\ : std_logic;
SIGNAL \inst8|Mux10~0_combout\ : std_logic;
SIGNAL \inst8|Mux24~0_combout\ : std_logic;
SIGNAL \inst8|Mux3~0_combout\ : std_logic;
SIGNAL \inst8|Mux46~0_combout\ : std_logic;
SIGNAL \inst8|Mux31~0_combout\ : std_logic;
SIGNAL \inst8|Mux46~1_combout\ : std_logic;
SIGNAL \inst8|tem[3]~3_combout\ : std_logic;
SIGNAL \inst8|Mux38~0_combout\ : std_logic;
SIGNAL \inst8|Mux18~0_combout\ : std_logic;
SIGNAL \inst8|Mux47~2_combout\ : std_logic;
SIGNAL \inst8|Mux47~3_combout\ : std_logic;
SIGNAL \inst8|Mux47~4_combout\ : std_logic;
SIGNAL \inst8|Mux47~0_combout\ : std_logic;
SIGNAL \inst8|Mux47~1_combout\ : std_logic;
SIGNAL \inst8|Mux47~5_combout\ : std_logic;
SIGNAL \inst8|tem[2]~4_combout\ : std_logic;
SIGNAL \inst8|Mux39~0_combout\ : std_logic;
SIGNAL \inst8|Mux19~0_combout\ : std_logic;
SIGNAL \inst8|Mux33~0_combout\ : std_logic;
SIGNAL \inst8|Mux5~0_combout\ : std_logic;
SIGNAL \inst8|Mux26~0_combout\ : std_logic;
SIGNAL \inst8|Mux48~0_combout\ : std_logic;
SIGNAL \inst8|Mux48~1_combout\ : std_logic;
SIGNAL \inst8|tem[1]~5_combout\ : std_logic;
SIGNAL \inst8|Mux40~0_combout\ : std_logic;
SIGNAL \inst8|Mux20~0_combout\ : std_logic;
SIGNAL \inst8|Mux34~0_combout\ : std_logic;
SIGNAL \inst8|Mux6~0_combout\ : std_logic;
SIGNAL \inst8|Mux27~0_combout\ : std_logic;
SIGNAL \inst8|Mux49~0_combout\ : std_logic;
SIGNAL \inst8|Mux49~1_combout\ : std_logic;
SIGNAL \inst8|tem[0]~6_combout\ : std_logic;
SIGNAL \inst8|Mux41~0_combout\ : std_logic;
SIGNAL \inst8|tem\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst13|i\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst8|tx\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst1|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst11|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst11|i\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst2|ALT_INV_data[4]~6_combout\ : std_logic;
SIGNAL \inst11|ALT_INV_pause~q\ : std_logic;
SIGNAL \inst8|ALT_INV_tx\ : std_logic_vector(5 DOWNTO 1);
SIGNAL \inst11|ALT_INV_i[5]~0clkctrl_outclk\ : std_logic;
SIGNAL \inst11|ALT_INV_i[31]~12clkctrl_outclk\ : std_logic;
SIGNAL \inst11|ALT_INV_i[4]~4clkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

alarm <= ww_alarm;
ww_CLK <= CLK;
ww_LD_hour <= LD_hour;
ww_LD_minute <= LD_minute;
ww_P <= P;
ww_CR <= CR;
DIG <= ww_DIG;
SEG <= ww_SEG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst6~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst6~combout\);

\inst11|CLK~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst11|CLK~q\);

\inst5~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst5~combout\);

\inst13|CLK~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst13|CLK~q\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\inst11|i[4]~4clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst11|i[4]~4_combout\);

\inst11|i[31]~12clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst11|i[31]~12_combout\);

\inst11|i[5]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst11|i[5]~0_combout\);
\inst2|ALT_INV_data[4]~6_combout\ <= NOT \inst2|data[4]~6_combout\;
\inst11|ALT_INV_pause~q\ <= NOT \inst11|pause~q\;
\inst8|ALT_INV_tx\(1) <= NOT \inst8|tx\(1);
\inst8|ALT_INV_tx\(2) <= NOT \inst8|tx\(2);
\inst8|ALT_INV_tx\(3) <= NOT \inst8|tx\(3);
\inst8|ALT_INV_tx\(4) <= NOT \inst8|tx\(4);
\inst8|ALT_INV_tx\(5) <= NOT \inst8|tx\(5);
\inst11|ALT_INV_i[5]~0clkctrl_outclk\ <= NOT \inst11|i[5]~0clkctrl_outclk\;
\inst11|ALT_INV_i[31]~12clkctrl_outclk\ <= NOT \inst11|i[31]~12clkctrl_outclk\;
\inst11|ALT_INV_i[4]~4clkctrl_outclk\ <= NOT \inst11|i[4]~4clkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X23_Y24_N2
\alarm~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|alarm~combout\,
	devoe => ww_devoe,
	o => \alarm~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\DIG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_tx\(5),
	devoe => ww_devoe,
	o => \DIG[5]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\DIG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_tx\(4),
	devoe => ww_devoe,
	o => \DIG[4]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\DIG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_tx\(3),
	devoe => ww_devoe,
	o => \DIG[3]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\DIG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_tx\(2),
	devoe => ww_devoe,
	o => \DIG[2]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\DIG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_tx\(1),
	devoe => ww_devoe,
	o => \DIG[1]~output_o\);

-- Location: IOOBUF_X21_Y0_N16
\DIG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|tx\(0),
	devoe => ww_devoe,
	o => \DIG[0]~output_o\);

-- Location: IOOBUF_X34_Y5_N16
\SEG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SEG[7]~output_o\);

-- Location: IOOBUF_X34_Y7_N16
\SEG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|tem\(6),
	devoe => ww_devoe,
	o => \SEG[6]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\SEG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|tem\(5),
	devoe => ww_devoe,
	o => \SEG[5]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\SEG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|tem\(4),
	devoe => ww_devoe,
	o => \SEG[4]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\SEG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|tem\(3),
	devoe => ww_devoe,
	o => \SEG[3]~output_o\);

-- Location: IOOBUF_X34_Y5_N23
\SEG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|tem\(2),
	devoe => ww_devoe,
	o => \SEG[2]~output_o\);

-- Location: IOOBUF_X34_Y7_N23
\SEG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|tem\(1),
	devoe => ww_devoe,
	o => \SEG[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\SEG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|tem\(0),
	devoe => ww_devoe,
	o => \SEG[0]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: FF_X10_Y6_N29
\inst13|i[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|i\(30));

-- Location: LCCOMB_X10_Y7_N0
\inst13|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~0_combout\ = \inst13|i\(0) $ (VCC)
-- \inst13|Add0~1\ = CARRY(\inst13|i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|i\(0),
	datad => VCC,
	combout => \inst13|Add0~0_combout\,
	cout => \inst13|Add0~1\);

-- Location: FF_X10_Y7_N1
\inst13|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|i\(0));

-- Location: LCCOMB_X10_Y7_N2
\inst13|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~2_combout\ = (\inst13|i\(1) & (!\inst13|Add0~1\)) # (!\inst13|i\(1) & ((\inst13|Add0~1\) # (GND)))
-- \inst13|Add0~3\ = CARRY((!\inst13|Add0~1\) # (!\inst13|i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|i\(1),
	datad => VCC,
	cin => \inst13|Add0~1\,
	combout => \inst13|Add0~2_combout\,
	cout => \inst13|Add0~3\);

-- Location: FF_X10_Y7_N3
\inst13|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|i\(1));

-- Location: LCCOMB_X10_Y7_N4
\inst13|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~4_combout\ = (\inst13|i\(2) & (\inst13|Add0~3\ $ (GND))) # (!\inst13|i\(2) & (!\inst13|Add0~3\ & VCC))
-- \inst13|Add0~5\ = CARRY((\inst13|i\(2) & !\inst13|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|i\(2),
	datad => VCC,
	cin => \inst13|Add0~3\,
	combout => \inst13|Add0~4_combout\,
	cout => \inst13|Add0~5\);

-- Location: FF_X10_Y7_N5
\inst13|i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|i\(2));

-- Location: LCCOMB_X10_Y7_N6
\inst13|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~6_combout\ = (\inst13|i\(3) & (!\inst13|Add0~5\)) # (!\inst13|i\(3) & ((\inst13|Add0~5\) # (GND)))
-- \inst13|Add0~7\ = CARRY((!\inst13|Add0~5\) # (!\inst13|i\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|i\(3),
	datad => VCC,
	cin => \inst13|Add0~5\,
	combout => \inst13|Add0~6_combout\,
	cout => \inst13|Add0~7\);

-- Location: FF_X10_Y7_N7
\inst13|i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|i\(3));

-- Location: LCCOMB_X10_Y7_N8
\inst13|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~8_combout\ = (\inst13|i\(4) & (\inst13|Add0~7\ $ (GND))) # (!\inst13|i\(4) & (!\inst13|Add0~7\ & VCC))
-- \inst13|Add0~9\ = CARRY((\inst13|i\(4) & !\inst13|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|i\(4),
	datad => VCC,
	cin => \inst13|Add0~7\,
	combout => \inst13|Add0~8_combout\,
	cout => \inst13|Add0~9\);

-- Location: FF_X10_Y7_N9
\inst13|i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|i\(4));

-- Location: LCCOMB_X10_Y7_N10
\inst13|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~10_combout\ = (\inst13|i\(5) & (!\inst13|Add0~9\)) # (!\inst13|i\(5) & ((\inst13|Add0~9\) # (GND)))
-- \inst13|Add0~11\ = CARRY((!\inst13|Add0~9\) # (!\inst13|i\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|i\(5),
	datad => VCC,
	cin => \inst13|Add0~9\,
	combout => \inst13|Add0~10_combout\,
	cout => \inst13|Add0~11\);

-- Location: FF_X10_Y7_N11
\inst13|i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|i\(5));

-- Location: LCCOMB_X10_Y7_N12
\inst13|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~12_combout\ = (\inst13|i\(6) & (\inst13|Add0~11\ $ (GND))) # (!\inst13|i\(6) & (!\inst13|Add0~11\ & VCC))
-- \inst13|Add0~13\ = CARRY((\inst13|i\(6) & !\inst13|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|i\(6),
	datad => VCC,
	cin => \inst13|Add0~11\,
	combout => \inst13|Add0~12_combout\,
	cout => \inst13|Add0~13\);

-- Location: LCCOMB_X9_Y6_N2
\inst13|i~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|i~11_combout\ = (\inst13|Add0~12_combout\ & !\inst13|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~12_combout\,
	datac => \inst13|Equal0~10_combout\,
	combout => \inst13|i~11_combout\);

-- Location: FF_X9_Y6_N3
\inst13|i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|i~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|i\(6));

-- Location: LCCOMB_X10_Y7_N14
\inst13|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~14_combout\ = (\inst13|i\(7) & (!\inst13|Add0~13\)) # (!\inst13|i\(7) & ((\inst13|Add0~13\) # (GND)))
-- \inst13|Add0~15\ = CARRY((!\inst13|Add0~13\) # (!\inst13|i\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|i\(7),
	datad => VCC,
	cin => \inst13|Add0~13\,
	combout => \inst13|Add0~14_combout\,
	cout => \inst13|Add0~15\);

-- Location: FF_X10_Y7_N15
\inst13|i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|i\(7));

-- Location: LCCOMB_X10_Y7_N16
\inst13|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~16_combout\ = (\inst13|i\(8) & (\inst13|Add0~15\ $ (GND))) # (!\inst13|i\(8) & (!\inst13|Add0~15\ & VCC))
-- \inst13|Add0~17\ = CARRY((\inst13|i\(8) & !\inst13|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|i\(8),
	datad => VCC,
	cin => \inst13|Add0~15\,
	combout => \inst13|Add0~16_combout\,
	cout => \inst13|Add0~17\);

-- Location: FF_X10_Y7_N17
\inst13|i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|i\(8));

-- Location: LCCOMB_X10_Y7_N18
\inst13|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~18_combout\ = (\inst13|i\(9) & (!\inst13|Add0~17\)) # (!\inst13|i\(9) & ((\inst13|Add0~17\) # (GND)))
-- \inst13|Add0~19\ = CARRY((!\inst13|Add0~17\) # (!\inst13|i\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|i\(9),
	datad => VCC,
	cin => \inst13|Add0~17\,
	combout => \inst13|Add0~18_combout\,
	cout => \inst13|Add0~19\);

-- Location: FF_X10_Y7_N19
\inst13|i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|i\(9));

-- Location: LCCOMB_X10_Y7_N20
\inst13|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~20_combout\ = (\inst13|i\(10) & (\inst13|Add0~19\ $ (GND))) # (!\inst13|i\(10) & (!\inst13|Add0~19\ & VCC))
-- \inst13|Add0~21\ = CARRY((\inst13|i\(10) & !\inst13|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|i\(10),
	datad => VCC,
	cin => \inst13|Add0~19\,
	combout => \inst13|Add0~20_combout\,
	cout => \inst13|Add0~21\);

-- Location: FF_X10_Y7_N21
\inst13|i[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|i\(10));

-- Location: LCCOMB_X10_Y7_N22
\inst13|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~22_combout\ = (\inst13|i\(11) & (!\inst13|Add0~21\)) # (!\inst13|i\(11) & ((\inst13|Add0~21\) # (GND)))
-- \inst13|Add0~23\ = CARRY((!\inst13|Add0~21\) # (!\inst13|i\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|i\(11),
	datad => VCC,
	cin => \inst13|Add0~21\,
	combout => \inst13|Add0~22_combout\,
	cout => \inst13|Add0~23\);

-- Location: LCCOMB_X9_Y6_N16
\inst13|i~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|i~10_combout\ = (\inst13|Add0~22_combout\ & !\inst13|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Add0~22_combout\,
	datac => \inst13|Equal0~10_combout\,
	combout => \inst13|i~10_combout\);

-- Location: FF_X9_Y6_N17
\inst13|i[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|i~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|i\(11));

-- Location: LCCOMB_X10_Y7_N24
\inst13|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~24_combout\ = (\inst13|i\(12) & (\inst13|Add0~23\ $ (GND))) # (!\inst13|i\(12) & (!\inst13|Add0~23\ & VCC))
-- \inst13|Add0~25\ = CARRY((\inst13|i\(12) & !\inst13|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|i\(12),
	datad => VCC,
	cin => \inst13|Add0~23\,
	combout => \inst13|Add0~24_combout\,
	cout => \inst13|Add0~25\);

-- Location: LCCOMB_X8_Y6_N26
\inst13|i~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|i~9_combout\ = (\inst13|Add0~24_combout\ & !\inst13|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Add0~24_combout\,
	datad => \inst13|Equal0~10_combout\,
	combout => \inst13|i~9_combout\);

-- Location: FF_X8_Y6_N27
\inst13|i[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|i~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|i\(12));

-- Location: LCCOMB_X10_Y7_N26
\inst13|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~26_combout\ = (\inst13|i\(13) & (!\inst13|Add0~25\)) # (!\inst13|i\(13) & ((\inst13|Add0~25\) # (GND)))
-- \inst13|Add0~27\ = CARRY((!\inst13|Add0~25\) # (!\inst13|i\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|i\(13),
	datad => VCC,
	cin => \inst13|Add0~25\,
	combout => \inst13|Add0~26_combout\,
	cout => \inst13|Add0~27\);

-- Location: LCCOMB_X9_Y6_N14
\inst13|i~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|i~8_combout\ = (!\inst13|Equal0~10_combout\ & \inst13|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Equal0~10_combout\,
	datad => \inst13|Add0~26_combout\,
	combout => \inst13|i~8_combout\);

-- Location: FF_X9_Y6_N15
\inst13|i[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|i~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|i\(13));

-- Location: LCCOMB_X10_Y7_N28
\inst13|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~28_combout\ = (\inst13|i\(14) & (\inst13|Add0~27\ $ (GND))) # (!\inst13|i\(14) & (!\inst13|Add0~27\ & VCC))
-- \inst13|Add0~29\ = CARRY((\inst13|i\(14) & !\inst13|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|i\(14),
	datad => VCC,
	cin => \inst13|Add0~27\,
	combout => \inst13|Add0~28_combout\,
	cout => \inst13|Add0~29\);

-- Location: LCCOMB_X9_Y6_N0
\inst13|i~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|i~7_combout\ = (!\inst13|Equal0~10_combout\ & \inst13|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Equal0~10_combout\,
	datad => \inst13|Add0~28_combout\,
	combout => \inst13|i~7_combout\);

-- Location: FF_X9_Y6_N1
\inst13|i[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|i~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|i\(14));

-- Location: LCCOMB_X10_Y7_N30
\inst13|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~30_combout\ = (\inst13|i\(15) & (!\inst13|Add0~29\)) # (!\inst13|i\(15) & ((\inst13|Add0~29\) # (GND)))
-- \inst13|Add0~31\ = CARRY((!\inst13|Add0~29\) # (!\inst13|i\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|i\(15),
	datad => VCC,
	cin => \inst13|Add0~29\,
	combout => \inst13|Add0~30_combout\,
	cout => \inst13|Add0~31\);

-- Location: FF_X10_Y7_N31
\inst13|i[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|i\(15));

-- Location: LCCOMB_X10_Y6_N0
\inst13|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~32_combout\ = (\inst13|i\(16) & (\inst13|Add0~31\ $ (GND))) # (!\inst13|i\(16) & (!\inst13|Add0~31\ & VCC))
-- \inst13|Add0~33\ = CARRY((\inst13|i\(16) & !\inst13|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|i\(16),
	datad => VCC,
	cin => \inst13|Add0~31\,
	combout => \inst13|Add0~32_combout\,
	cout => \inst13|Add0~33\);

-- Location: LCCOMB_X8_Y6_N20
\inst13|i~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|i~6_combout\ = (\inst13|Add0~32_combout\ & !\inst13|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Add0~32_combout\,
	datad => \inst13|Equal0~10_combout\,
	combout => \inst13|i~6_combout\);

-- Location: FF_X8_Y6_N21
\inst13|i[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|i~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|i\(16));

-- Location: LCCOMB_X10_Y6_N2
\inst13|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~34_combout\ = (\inst13|i\(17) & (!\inst13|Add0~33\)) # (!\inst13|i\(17) & ((\inst13|Add0~33\) # (GND)))
-- \inst13|Add0~35\ = CARRY((!\inst13|Add0~33\) # (!\inst13|i\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|i\(17),
	datad => VCC,
	cin => \inst13|Add0~33\,
	combout => \inst13|Add0~34_combout\,
	cout => \inst13|Add0~35\);

-- Location: FF_X10_Y6_N3
\inst13|i[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|i\(17));

-- Location: LCCOMB_X10_Y6_N4
\inst13|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~36_combout\ = (\inst13|i\(18) & (\inst13|Add0~35\ $ (GND))) # (!\inst13|i\(18) & (!\inst13|Add0~35\ & VCC))
-- \inst13|Add0~37\ = CARRY((\inst13|i\(18) & !\inst13|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|i\(18),
	datad => VCC,
	cin => \inst13|Add0~35\,
	combout => \inst13|Add0~36_combout\,
	cout => \inst13|Add0~37\);

-- Location: LCCOMB_X8_Y6_N10
\inst13|i~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|i~5_combout\ = (\inst13|Add0~36_combout\ & !\inst13|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Add0~36_combout\,
	datad => \inst13|Equal0~10_combout\,
	combout => \inst13|i~5_combout\);

-- Location: FF_X8_Y6_N11
\inst13|i[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|i~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|i\(18));

-- Location: LCCOMB_X10_Y6_N6
\inst13|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~38_combout\ = (\inst13|i\(19) & (!\inst13|Add0~37\)) # (!\inst13|i\(19) & ((\inst13|Add0~37\) # (GND)))
-- \inst13|Add0~39\ = CARRY((!\inst13|Add0~37\) # (!\inst13|i\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|i\(19),
	datad => VCC,
	cin => \inst13|Add0~37\,
	combout => \inst13|Add0~38_combout\,
	cout => \inst13|Add0~39\);

-- Location: LCCOMB_X9_Y6_N18
\inst13|i~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|i~4_combout\ = (\inst13|Add0~38_combout\ & !\inst13|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~38_combout\,
	datac => \inst13|Equal0~10_combout\,
	combout => \inst13|i~4_combout\);

-- Location: FF_X9_Y6_N19
\inst13|i[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|i~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|i\(19));

-- Location: LCCOMB_X10_Y6_N8
\inst13|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~40_combout\ = (\inst13|i\(20) & (\inst13|Add0~39\ $ (GND))) # (!\inst13|i\(20) & (!\inst13|Add0~39\ & VCC))
-- \inst13|Add0~41\ = CARRY((\inst13|i\(20) & !\inst13|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|i\(20),
	datad => VCC,
	cin => \inst13|Add0~39\,
	combout => \inst13|Add0~40_combout\,
	cout => \inst13|Add0~41\);

-- Location: LCCOMB_X9_Y6_N28
\inst13|i~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|i~3_combout\ = (!\inst13|Equal0~10_combout\ & \inst13|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Equal0~10_combout\,
	datad => \inst13|Add0~40_combout\,
	combout => \inst13|i~3_combout\);

-- Location: FF_X9_Y6_N29
\inst13|i[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|i~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|i\(20));

-- Location: LCCOMB_X10_Y6_N10
\inst13|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~42_combout\ = (\inst13|i\(21) & (!\inst13|Add0~41\)) # (!\inst13|i\(21) & ((\inst13|Add0~41\) # (GND)))
-- \inst13|Add0~43\ = CARRY((!\inst13|Add0~41\) # (!\inst13|i\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|i\(21),
	datad => VCC,
	cin => \inst13|Add0~41\,
	combout => \inst13|Add0~42_combout\,
	cout => \inst13|Add0~43\);

-- Location: LCCOMB_X8_Y6_N22
\inst13|i~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|i~2_combout\ = (\inst13|Add0~42_combout\ & !\inst13|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Add0~42_combout\,
	datad => \inst13|Equal0~10_combout\,
	combout => \inst13|i~2_combout\);

-- Location: FF_X8_Y6_N23
\inst13|i[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|i~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|i\(21));

-- Location: LCCOMB_X10_Y6_N12
\inst13|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~44_combout\ = (\inst13|i\(22) & (\inst13|Add0~43\ $ (GND))) # (!\inst13|i\(22) & (!\inst13|Add0~43\ & VCC))
-- \inst13|Add0~45\ = CARRY((\inst13|i\(22) & !\inst13|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|i\(22),
	datad => VCC,
	cin => \inst13|Add0~43\,
	combout => \inst13|Add0~44_combout\,
	cout => \inst13|Add0~45\);

-- Location: LCCOMB_X8_Y6_N4
\inst13|i~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|i~1_combout\ = (\inst13|Add0~44_combout\ & !\inst13|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Add0~44_combout\,
	datad => \inst13|Equal0~10_combout\,
	combout => \inst13|i~1_combout\);

-- Location: FF_X8_Y6_N5
\inst13|i[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|i~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|i\(22));

-- Location: LCCOMB_X10_Y6_N14
\inst13|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~46_combout\ = (\inst13|i\(23) & (!\inst13|Add0~45\)) # (!\inst13|i\(23) & ((\inst13|Add0~45\) # (GND)))
-- \inst13|Add0~47\ = CARRY((!\inst13|Add0~45\) # (!\inst13|i\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|i\(23),
	datad => VCC,
	cin => \inst13|Add0~45\,
	combout => \inst13|Add0~46_combout\,
	cout => \inst13|Add0~47\);

-- Location: FF_X10_Y6_N15
\inst13|i[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|i\(23));

-- Location: LCCOMB_X10_Y6_N16
\inst13|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~48_combout\ = (\inst13|i\(24) & (\inst13|Add0~47\ $ (GND))) # (!\inst13|i\(24) & (!\inst13|Add0~47\ & VCC))
-- \inst13|Add0~49\ = CARRY((\inst13|i\(24) & !\inst13|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|i\(24),
	datad => VCC,
	cin => \inst13|Add0~47\,
	combout => \inst13|Add0~48_combout\,
	cout => \inst13|Add0~49\);

-- Location: LCCOMB_X8_Y6_N12
\inst13|i~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|i~0_combout\ = (\inst13|Add0~48_combout\ & !\inst13|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Add0~48_combout\,
	datad => \inst13|Equal0~10_combout\,
	combout => \inst13|i~0_combout\);

-- Location: FF_X8_Y6_N13
\inst13|i[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|i~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|i\(24));

-- Location: LCCOMB_X10_Y6_N18
\inst13|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~50_combout\ = (\inst13|i\(25) & (!\inst13|Add0~49\)) # (!\inst13|i\(25) & ((\inst13|Add0~49\) # (GND)))
-- \inst13|Add0~51\ = CARRY((!\inst13|Add0~49\) # (!\inst13|i\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|i\(25),
	datad => VCC,
	cin => \inst13|Add0~49\,
	combout => \inst13|Add0~50_combout\,
	cout => \inst13|Add0~51\);

-- Location: FF_X10_Y6_N19
\inst13|i[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|i\(25));

-- Location: LCCOMB_X10_Y6_N20
\inst13|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~52_combout\ = (\inst13|i\(26) & (\inst13|Add0~51\ $ (GND))) # (!\inst13|i\(26) & (!\inst13|Add0~51\ & VCC))
-- \inst13|Add0~53\ = CARRY((\inst13|i\(26) & !\inst13|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|i\(26),
	datad => VCC,
	cin => \inst13|Add0~51\,
	combout => \inst13|Add0~52_combout\,
	cout => \inst13|Add0~53\);

-- Location: FF_X10_Y6_N21
\inst13|i[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|i\(26));

-- Location: LCCOMB_X10_Y6_N22
\inst13|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~54_combout\ = (\inst13|i\(27) & (!\inst13|Add0~53\)) # (!\inst13|i\(27) & ((\inst13|Add0~53\) # (GND)))
-- \inst13|Add0~55\ = CARRY((!\inst13|Add0~53\) # (!\inst13|i\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|i\(27),
	datad => VCC,
	cin => \inst13|Add0~53\,
	combout => \inst13|Add0~54_combout\,
	cout => \inst13|Add0~55\);

-- Location: FF_X10_Y6_N23
\inst13|i[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|i\(27));

-- Location: LCCOMB_X10_Y6_N24
\inst13|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~56_combout\ = (\inst13|i\(28) & (\inst13|Add0~55\ $ (GND))) # (!\inst13|i\(28) & (!\inst13|Add0~55\ & VCC))
-- \inst13|Add0~57\ = CARRY((\inst13|i\(28) & !\inst13|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|i\(28),
	datad => VCC,
	cin => \inst13|Add0~55\,
	combout => \inst13|Add0~56_combout\,
	cout => \inst13|Add0~57\);

-- Location: FF_X10_Y6_N25
\inst13|i[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|i\(28));

-- Location: LCCOMB_X10_Y6_N26
\inst13|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~58_combout\ = (\inst13|i\(29) & (!\inst13|Add0~57\)) # (!\inst13|i\(29) & ((\inst13|Add0~57\) # (GND)))
-- \inst13|Add0~59\ = CARRY((!\inst13|Add0~57\) # (!\inst13|i\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|i\(29),
	datad => VCC,
	cin => \inst13|Add0~57\,
	combout => \inst13|Add0~58_combout\,
	cout => \inst13|Add0~59\);

-- Location: FF_X10_Y6_N27
\inst13|i[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|i\(29));

-- Location: LCCOMB_X10_Y6_N28
\inst13|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~60_combout\ = (\inst13|i\(30) & (\inst13|Add0~59\ $ (GND))) # (!\inst13|i\(30) & (!\inst13|Add0~59\ & VCC))
-- \inst13|Add0~61\ = CARRY((\inst13|i\(30) & !\inst13|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|i\(30),
	datad => VCC,
	cin => \inst13|Add0~59\,
	combout => \inst13|Add0~60_combout\,
	cout => \inst13|Add0~61\);

-- Location: FF_X10_Y6_N31
\inst13|i[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|i\(31));

-- Location: LCCOMB_X10_Y6_N30
\inst13|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Add0~62_combout\ = \inst13|i\(31) $ (\inst13|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|i\(31),
	cin => \inst13|Add0~61\,
	combout => \inst13|Add0~62_combout\);

-- Location: LCCOMB_X9_Y6_N8
\inst13|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Equal0~9_combout\ = (!\inst13|Add0~56_combout\ & !\inst13|Add0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Add0~56_combout\,
	datad => \inst13|Add0~58_combout\,
	combout => \inst13|Equal0~9_combout\);

-- Location: LCCOMB_X9_Y7_N0
\inst13|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Equal0~0_combout\ = (!\inst13|Add0~2_combout\ & (!\inst13|Add0~0_combout\ & (!\inst13|Add0~4_combout\ & !\inst13|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~2_combout\,
	datab => \inst13|Add0~0_combout\,
	datac => \inst13|Add0~4_combout\,
	datad => \inst13|Add0~6_combout\,
	combout => \inst13|Equal0~0_combout\);

-- Location: LCCOMB_X9_Y6_N4
\inst13|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Equal0~1_combout\ = (\inst13|Add0~12_combout\ & (!\inst13|Add0~10_combout\ & (!\inst13|Add0~14_combout\ & !\inst13|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~12_combout\,
	datab => \inst13|Add0~10_combout\,
	datac => \inst13|Add0~14_combout\,
	datad => \inst13|Add0~8_combout\,
	combout => \inst13|Equal0~1_combout\);

-- Location: LCCOMB_X9_Y6_N30
\inst13|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Equal0~2_combout\ = (!\inst13|Add0~18_combout\ & (!\inst13|Add0~16_combout\ & (\inst13|Add0~22_combout\ & !\inst13|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~18_combout\,
	datab => \inst13|Add0~16_combout\,
	datac => \inst13|Add0~22_combout\,
	datad => \inst13|Add0~20_combout\,
	combout => \inst13|Equal0~2_combout\);

-- Location: LCCOMB_X9_Y6_N24
\inst13|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Equal0~3_combout\ = (\inst13|Add0~24_combout\ & (\inst13|Add0~28_combout\ & (!\inst13|Add0~30_combout\ & \inst13|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~24_combout\,
	datab => \inst13|Add0~28_combout\,
	datac => \inst13|Add0~30_combout\,
	datad => \inst13|Add0~26_combout\,
	combout => \inst13|Equal0~3_combout\);

-- Location: LCCOMB_X9_Y6_N22
\inst13|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Equal0~4_combout\ = (\inst13|Equal0~0_combout\ & (\inst13|Equal0~1_combout\ & (\inst13|Equal0~2_combout\ & \inst13|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Equal0~0_combout\,
	datab => \inst13|Equal0~1_combout\,
	datac => \inst13|Equal0~2_combout\,
	datad => \inst13|Equal0~3_combout\,
	combout => \inst13|Equal0~4_combout\);

-- Location: LCCOMB_X9_Y6_N20
\inst13|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Equal0~5_combout\ = (!\inst13|Add0~34_combout\ & (\inst13|Add0~32_combout\ & (\inst13|Add0~36_combout\ & \inst13|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~34_combout\,
	datab => \inst13|Add0~32_combout\,
	datac => \inst13|Add0~36_combout\,
	datad => \inst13|Add0~38_combout\,
	combout => \inst13|Equal0~5_combout\);

-- Location: LCCOMB_X9_Y6_N10
\inst13|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Equal0~6_combout\ = (\inst13|Add0~40_combout\ & (\inst13|Add0~44_combout\ & (\inst13|Add0~42_combout\ & \inst13|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~40_combout\,
	datab => \inst13|Add0~44_combout\,
	datac => \inst13|Add0~42_combout\,
	datad => \inst13|Equal0~5_combout\,
	combout => \inst13|Equal0~6_combout\);

-- Location: LCCOMB_X9_Y6_N12
\inst13|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Equal0~7_combout\ = (!\inst13|Add0~46_combout\ & (\inst13|Add0~48_combout\ & (\inst13|Equal0~4_combout\ & \inst13|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~46_combout\,
	datab => \inst13|Add0~48_combout\,
	datac => \inst13|Equal0~4_combout\,
	datad => \inst13|Equal0~6_combout\,
	combout => \inst13|Equal0~7_combout\);

-- Location: LCCOMB_X9_Y6_N6
\inst13|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Equal0~8_combout\ = (!\inst13|Add0~54_combout\ & (!\inst13|Add0~50_combout\ & (!\inst13|Add0~52_combout\ & \inst13|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~54_combout\,
	datab => \inst13|Add0~50_combout\,
	datac => \inst13|Add0~52_combout\,
	datad => \inst13|Equal0~7_combout\,
	combout => \inst13|Equal0~8_combout\);

-- Location: LCCOMB_X9_Y6_N26
\inst13|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Equal0~10_combout\ = (!\inst13|Add0~60_combout\ & (!\inst13|Add0~62_combout\ & (\inst13|Equal0~9_combout\ & \inst13|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~60_combout\,
	datab => \inst13|Add0~62_combout\,
	datac => \inst13|Equal0~9_combout\,
	datad => \inst13|Equal0~8_combout\,
	combout => \inst13|Equal0~10_combout\);

-- Location: LCCOMB_X8_Y6_N28
\inst13|CLK~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|CLK~0_combout\ = \inst13|CLK~q\ $ (\inst13|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|CLK~q\,
	datad => \inst13|Equal0~10_combout\,
	combout => \inst13|CLK~0_combout\);

-- Location: LCCOMB_X8_Y6_N0
\inst13|CLK~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|CLK~feeder_combout\ = \inst13|CLK~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|CLK~0_combout\,
	combout => \inst13|CLK~feeder_combout\);

-- Location: FF_X8_Y6_N1
\inst13|CLK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|CLK~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|CLK~q\);

-- Location: CLKCTRL_G3
\inst13|CLK~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst13|CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst13|CLK~clkctrl_outclk\);

-- Location: LCCOMB_X29_Y6_N4
\inst|data~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data~8_combout\ = (!\inst|data\(3) & (\inst|data\(0) $ (\inst|data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(0),
	datac => \inst|data\(1),
	datad => \inst|data\(3),
	combout => \inst|data~8_combout\);

-- Location: LCCOMB_X29_Y5_N22
\inst11|CLK~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|CLK~0_combout\ = !\inst11|CLK~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|CLK~q\,
	combout => \inst11|CLK~0_combout\);

-- Location: LCCOMB_X29_Y5_N14
\inst11|CLK~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|CLK~feeder_combout\ = \inst11|CLK~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|CLK~0_combout\,
	combout => \inst11|CLK~feeder_combout\);

-- Location: LCCOMB_X30_Y3_N0
\inst11|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~0_combout\ = \inst11|count\(0) $ (VCC)
-- \inst11|Add0~1\ = CARRY(\inst11|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|count\(0),
	datad => VCC,
	combout => \inst11|Add0~0_combout\,
	cout => \inst11|Add0~1\);

-- Location: LCCOMB_X29_Y3_N16
\inst11|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|count~0_combout\ = (\inst11|Add0~0_combout\ & !\inst8|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Add0~0_combout\,
	datad => \inst8|Equal0~10_combout\,
	combout => \inst11|count~0_combout\);

-- Location: FF_X29_Y3_N17
\inst11|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(0));

-- Location: LCCOMB_X30_Y3_N2
\inst11|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~2_combout\ = (\inst11|count\(1) & (!\inst11|Add0~1\)) # (!\inst11|count\(1) & ((\inst11|Add0~1\) # (GND)))
-- \inst11|Add0~3\ = CARRY((!\inst11|Add0~1\) # (!\inst11|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|count\(1),
	datad => VCC,
	cin => \inst11|Add0~1\,
	combout => \inst11|Add0~2_combout\,
	cout => \inst11|Add0~3\);

-- Location: FF_X30_Y3_N3
\inst11|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(1));

-- Location: LCCOMB_X30_Y3_N4
\inst11|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~4_combout\ = (\inst11|count\(2) & (\inst11|Add0~3\ $ (GND))) # (!\inst11|count\(2) & (!\inst11|Add0~3\ & VCC))
-- \inst11|Add0~5\ = CARRY((\inst11|count\(2) & !\inst11|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|count\(2),
	datad => VCC,
	cin => \inst11|Add0~3\,
	combout => \inst11|Add0~4_combout\,
	cout => \inst11|Add0~5\);

-- Location: FF_X30_Y3_N5
\inst11|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(2));

-- Location: LCCOMB_X30_Y3_N6
\inst11|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~6_combout\ = (\inst11|count\(3) & (!\inst11|Add0~5\)) # (!\inst11|count\(3) & ((\inst11|Add0~5\) # (GND)))
-- \inst11|Add0~7\ = CARRY((!\inst11|Add0~5\) # (!\inst11|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|count\(3),
	datad => VCC,
	cin => \inst11|Add0~5\,
	combout => \inst11|Add0~6_combout\,
	cout => \inst11|Add0~7\);

-- Location: FF_X30_Y3_N7
\inst11|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(3));

-- Location: LCCOMB_X30_Y3_N8
\inst11|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~8_combout\ = (\inst11|count\(4) & (\inst11|Add0~7\ $ (GND))) # (!\inst11|count\(4) & (!\inst11|Add0~7\ & VCC))
-- \inst11|Add0~9\ = CARRY((\inst11|count\(4) & !\inst11|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|count\(4),
	datad => VCC,
	cin => \inst11|Add0~7\,
	combout => \inst11|Add0~8_combout\,
	cout => \inst11|Add0~9\);

-- Location: LCCOMB_X29_Y5_N4
\inst11|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|count~1_combout\ = (!\inst8|Equal0~10_combout\ & \inst11|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Equal0~10_combout\,
	datad => \inst11|Add0~8_combout\,
	combout => \inst11|count~1_combout\);

-- Location: FF_X29_Y5_N5
\inst11|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(4));

-- Location: LCCOMB_X30_Y3_N10
\inst11|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~10_combout\ = (\inst11|count\(5) & (!\inst11|Add0~9\)) # (!\inst11|count\(5) & ((\inst11|Add0~9\) # (GND)))
-- \inst11|Add0~11\ = CARRY((!\inst11|Add0~9\) # (!\inst11|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|count\(5),
	datad => VCC,
	cin => \inst11|Add0~9\,
	combout => \inst11|Add0~10_combout\,
	cout => \inst11|Add0~11\);

-- Location: FF_X30_Y3_N11
\inst11|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(5));

-- Location: LCCOMB_X30_Y3_N12
\inst11|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~12_combout\ = (\inst11|count\(6) & (\inst11|Add0~11\ $ (GND))) # (!\inst11|count\(6) & (!\inst11|Add0~11\ & VCC))
-- \inst11|Add0~13\ = CARRY((\inst11|count\(6) & !\inst11|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|count\(6),
	datad => VCC,
	cin => \inst11|Add0~11\,
	combout => \inst11|Add0~12_combout\,
	cout => \inst11|Add0~13\);

-- Location: FF_X30_Y3_N13
\inst11|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(6));

-- Location: LCCOMB_X30_Y3_N14
\inst11|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~14_combout\ = (\inst11|count\(7) & (!\inst11|Add0~13\)) # (!\inst11|count\(7) & ((\inst11|Add0~13\) # (GND)))
-- \inst11|Add0~15\ = CARRY((!\inst11|Add0~13\) # (!\inst11|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|count\(7),
	datad => VCC,
	cin => \inst11|Add0~13\,
	combout => \inst11|Add0~14_combout\,
	cout => \inst11|Add0~15\);

-- Location: FF_X30_Y3_N15
\inst11|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(7));

-- Location: LCCOMB_X30_Y3_N16
\inst11|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~16_combout\ = (\inst11|count\(8) & (\inst11|Add0~15\ $ (GND))) # (!\inst11|count\(8) & (!\inst11|Add0~15\ & VCC))
-- \inst11|Add0~17\ = CARRY((\inst11|count\(8) & !\inst11|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|count\(8),
	datad => VCC,
	cin => \inst11|Add0~15\,
	combout => \inst11|Add0~16_combout\,
	cout => \inst11|Add0~17\);

-- Location: LCCOMB_X30_Y5_N12
\inst11|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|count~2_combout\ = (\inst11|Add0~16_combout\ & !\inst8|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Add0~16_combout\,
	datad => \inst8|Equal0~10_combout\,
	combout => \inst11|count~2_combout\);

-- Location: FF_X30_Y5_N13
\inst11|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(8));

-- Location: LCCOMB_X30_Y3_N18
\inst11|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~18_combout\ = (\inst11|count\(9) & (!\inst11|Add0~17\)) # (!\inst11|count\(9) & ((\inst11|Add0~17\) # (GND)))
-- \inst11|Add0~19\ = CARRY((!\inst11|Add0~17\) # (!\inst11|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|count\(9),
	datad => VCC,
	cin => \inst11|Add0~17\,
	combout => \inst11|Add0~18_combout\,
	cout => \inst11|Add0~19\);

-- Location: LCCOMB_X30_Y5_N30
\inst11|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|count~3_combout\ = (\inst11|Add0~18_combout\ & !\inst8|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Add0~18_combout\,
	datad => \inst8|Equal0~10_combout\,
	combout => \inst11|count~3_combout\);

-- Location: FF_X30_Y5_N31
\inst11|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(9));

-- Location: LCCOMB_X30_Y3_N20
\inst11|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~20_combout\ = (\inst11|count\(10) & (\inst11|Add0~19\ $ (GND))) # (!\inst11|count\(10) & (!\inst11|Add0~19\ & VCC))
-- \inst11|Add0~21\ = CARRY((\inst11|count\(10) & !\inst11|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|count\(10),
	datad => VCC,
	cin => \inst11|Add0~19\,
	combout => \inst11|Add0~20_combout\,
	cout => \inst11|Add0~21\);

-- Location: LCCOMB_X30_Y5_N16
\inst11|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|count~4_combout\ = (\inst11|Add0~20_combout\ & !\inst8|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Add0~20_combout\,
	datad => \inst8|Equal0~10_combout\,
	combout => \inst11|count~4_combout\);

-- Location: FF_X30_Y5_N17
\inst11|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(10));

-- Location: LCCOMB_X30_Y3_N22
\inst11|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~22_combout\ = (\inst11|count\(11) & (!\inst11|Add0~21\)) # (!\inst11|count\(11) & ((\inst11|Add0~21\) # (GND)))
-- \inst11|Add0~23\ = CARRY((!\inst11|Add0~21\) # (!\inst11|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|count\(11),
	datad => VCC,
	cin => \inst11|Add0~21\,
	combout => \inst11|Add0~22_combout\,
	cout => \inst11|Add0~23\);

-- Location: FF_X30_Y3_N23
\inst11|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(11));

-- Location: LCCOMB_X30_Y3_N24
\inst11|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~24_combout\ = (\inst11|count\(12) & (\inst11|Add0~23\ $ (GND))) # (!\inst11|count\(12) & (!\inst11|Add0~23\ & VCC))
-- \inst11|Add0~25\ = CARRY((\inst11|count\(12) & !\inst11|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|count\(12),
	datad => VCC,
	cin => \inst11|Add0~23\,
	combout => \inst11|Add0~24_combout\,
	cout => \inst11|Add0~25\);

-- Location: FF_X30_Y3_N25
\inst11|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(12));

-- Location: LCCOMB_X30_Y3_N26
\inst11|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~26_combout\ = (\inst11|count\(13) & (!\inst11|Add0~25\)) # (!\inst11|count\(13) & ((\inst11|Add0~25\) # (GND)))
-- \inst11|Add0~27\ = CARRY((!\inst11|Add0~25\) # (!\inst11|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|count\(13),
	datad => VCC,
	cin => \inst11|Add0~25\,
	combout => \inst11|Add0~26_combout\,
	cout => \inst11|Add0~27\);

-- Location: LCCOMB_X30_Y5_N28
\inst11|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|count~5_combout\ = (!\inst8|Equal0~10_combout\ & \inst11|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|Equal0~10_combout\,
	datad => \inst11|Add0~26_combout\,
	combout => \inst11|count~5_combout\);

-- Location: FF_X30_Y5_N29
\inst11|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(13));

-- Location: LCCOMB_X30_Y3_N28
\inst11|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~28_combout\ = (\inst11|count\(14) & (\inst11|Add0~27\ $ (GND))) # (!\inst11|count\(14) & (!\inst11|Add0~27\ & VCC))
-- \inst11|Add0~29\ = CARRY((\inst11|count\(14) & !\inst11|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|count\(14),
	datad => VCC,
	cin => \inst11|Add0~27\,
	combout => \inst11|Add0~28_combout\,
	cout => \inst11|Add0~29\);

-- Location: FF_X30_Y3_N29
\inst11|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(14));

-- Location: LCCOMB_X30_Y3_N30
\inst11|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~30_combout\ = (\inst11|count\(15) & (!\inst11|Add0~29\)) # (!\inst11|count\(15) & ((\inst11|Add0~29\) # (GND)))
-- \inst11|Add0~31\ = CARRY((!\inst11|Add0~29\) # (!\inst11|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|count\(15),
	datad => VCC,
	cin => \inst11|Add0~29\,
	combout => \inst11|Add0~30_combout\,
	cout => \inst11|Add0~31\);

-- Location: FF_X30_Y3_N31
\inst11|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(15));

-- Location: LCCOMB_X30_Y2_N0
\inst11|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~32_combout\ = (\inst11|count\(16) & (\inst11|Add0~31\ $ (GND))) # (!\inst11|count\(16) & (!\inst11|Add0~31\ & VCC))
-- \inst11|Add0~33\ = CARRY((\inst11|count\(16) & !\inst11|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|count\(16),
	datad => VCC,
	cin => \inst11|Add0~31\,
	combout => \inst11|Add0~32_combout\,
	cout => \inst11|Add0~33\);

-- Location: FF_X30_Y2_N1
\inst11|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(16));

-- Location: LCCOMB_X30_Y2_N2
\inst11|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~34_combout\ = (\inst11|count\(17) & (!\inst11|Add0~33\)) # (!\inst11|count\(17) & ((\inst11|Add0~33\) # (GND)))
-- \inst11|Add0~35\ = CARRY((!\inst11|Add0~33\) # (!\inst11|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|count\(17),
	datad => VCC,
	cin => \inst11|Add0~33\,
	combout => \inst11|Add0~34_combout\,
	cout => \inst11|Add0~35\);

-- Location: FF_X30_Y2_N3
\inst11|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(17));

-- Location: LCCOMB_X30_Y2_N4
\inst11|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~36_combout\ = (\inst11|count\(18) & (\inst11|Add0~35\ $ (GND))) # (!\inst11|count\(18) & (!\inst11|Add0~35\ & VCC))
-- \inst11|Add0~37\ = CARRY((\inst11|count\(18) & !\inst11|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|count\(18),
	datad => VCC,
	cin => \inst11|Add0~35\,
	combout => \inst11|Add0~36_combout\,
	cout => \inst11|Add0~37\);

-- Location: FF_X30_Y2_N5
\inst11|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(18));

-- Location: LCCOMB_X30_Y2_N6
\inst11|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~38_combout\ = (\inst11|count\(19) & (!\inst11|Add0~37\)) # (!\inst11|count\(19) & ((\inst11|Add0~37\) # (GND)))
-- \inst11|Add0~39\ = CARRY((!\inst11|Add0~37\) # (!\inst11|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|count\(19),
	datad => VCC,
	cin => \inst11|Add0~37\,
	combout => \inst11|Add0~38_combout\,
	cout => \inst11|Add0~39\);

-- Location: FF_X30_Y2_N7
\inst11|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(19));

-- Location: LCCOMB_X30_Y2_N8
\inst11|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~40_combout\ = (\inst11|count\(20) & (\inst11|Add0~39\ $ (GND))) # (!\inst11|count\(20) & (!\inst11|Add0~39\ & VCC))
-- \inst11|Add0~41\ = CARRY((\inst11|count\(20) & !\inst11|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|count\(20),
	datad => VCC,
	cin => \inst11|Add0~39\,
	combout => \inst11|Add0~40_combout\,
	cout => \inst11|Add0~41\);

-- Location: FF_X30_Y2_N9
\inst11|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(20));

-- Location: LCCOMB_X30_Y2_N10
\inst11|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~42_combout\ = (\inst11|count\(21) & (!\inst11|Add0~41\)) # (!\inst11|count\(21) & ((\inst11|Add0~41\) # (GND)))
-- \inst11|Add0~43\ = CARRY((!\inst11|Add0~41\) # (!\inst11|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|count\(21),
	datad => VCC,
	cin => \inst11|Add0~41\,
	combout => \inst11|Add0~42_combout\,
	cout => \inst11|Add0~43\);

-- Location: FF_X30_Y2_N11
\inst11|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(21));

-- Location: LCCOMB_X30_Y2_N12
\inst11|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~44_combout\ = (\inst11|count\(22) & (\inst11|Add0~43\ $ (GND))) # (!\inst11|count\(22) & (!\inst11|Add0~43\ & VCC))
-- \inst11|Add0~45\ = CARRY((\inst11|count\(22) & !\inst11|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|count\(22),
	datad => VCC,
	cin => \inst11|Add0~43\,
	combout => \inst11|Add0~44_combout\,
	cout => \inst11|Add0~45\);

-- Location: FF_X30_Y2_N13
\inst11|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(22));

-- Location: LCCOMB_X30_Y2_N14
\inst11|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~46_combout\ = (\inst11|count\(23) & (!\inst11|Add0~45\)) # (!\inst11|count\(23) & ((\inst11|Add0~45\) # (GND)))
-- \inst11|Add0~47\ = CARRY((!\inst11|Add0~45\) # (!\inst11|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|count\(23),
	datad => VCC,
	cin => \inst11|Add0~45\,
	combout => \inst11|Add0~46_combout\,
	cout => \inst11|Add0~47\);

-- Location: FF_X30_Y2_N15
\inst11|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(23));

-- Location: LCCOMB_X30_Y2_N16
\inst11|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~48_combout\ = (\inst11|count\(24) & (\inst11|Add0~47\ $ (GND))) # (!\inst11|count\(24) & (!\inst11|Add0~47\ & VCC))
-- \inst11|Add0~49\ = CARRY((\inst11|count\(24) & !\inst11|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|count\(24),
	datad => VCC,
	cin => \inst11|Add0~47\,
	combout => \inst11|Add0~48_combout\,
	cout => \inst11|Add0~49\);

-- Location: FF_X30_Y2_N17
\inst11|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(24));

-- Location: LCCOMB_X30_Y2_N18
\inst11|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~50_combout\ = (\inst11|count\(25) & (!\inst11|Add0~49\)) # (!\inst11|count\(25) & ((\inst11|Add0~49\) # (GND)))
-- \inst11|Add0~51\ = CARRY((!\inst11|Add0~49\) # (!\inst11|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|count\(25),
	datad => VCC,
	cin => \inst11|Add0~49\,
	combout => \inst11|Add0~50_combout\,
	cout => \inst11|Add0~51\);

-- Location: FF_X30_Y2_N19
\inst11|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(25));

-- Location: LCCOMB_X30_Y2_N20
\inst11|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~52_combout\ = (\inst11|count\(26) & (\inst11|Add0~51\ $ (GND))) # (!\inst11|count\(26) & (!\inst11|Add0~51\ & VCC))
-- \inst11|Add0~53\ = CARRY((\inst11|count\(26) & !\inst11|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|count\(26),
	datad => VCC,
	cin => \inst11|Add0~51\,
	combout => \inst11|Add0~52_combout\,
	cout => \inst11|Add0~53\);

-- Location: FF_X30_Y2_N21
\inst11|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(26));

-- Location: LCCOMB_X30_Y2_N22
\inst11|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~54_combout\ = (\inst11|count\(27) & (!\inst11|Add0~53\)) # (!\inst11|count\(27) & ((\inst11|Add0~53\) # (GND)))
-- \inst11|Add0~55\ = CARRY((!\inst11|Add0~53\) # (!\inst11|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|count\(27),
	datad => VCC,
	cin => \inst11|Add0~53\,
	combout => \inst11|Add0~54_combout\,
	cout => \inst11|Add0~55\);

-- Location: FF_X30_Y2_N23
\inst11|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(27));

-- Location: LCCOMB_X30_Y5_N22
\inst8|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~8_combout\ = (!\inst11|count\(27) & (!\inst11|count\(24) & (!\inst11|count\(26) & !\inst11|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|count\(27),
	datab => \inst11|count\(24),
	datac => \inst11|count\(26),
	datad => \inst11|count\(25),
	combout => \inst8|Equal0~8_combout\);

-- Location: LCCOMB_X30_Y2_N24
\inst11|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~56_combout\ = (\inst11|count\(28) & (\inst11|Add0~55\ $ (GND))) # (!\inst11|count\(28) & (!\inst11|Add0~55\ & VCC))
-- \inst11|Add0~57\ = CARRY((\inst11|count\(28) & !\inst11|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|count\(28),
	datad => VCC,
	cin => \inst11|Add0~55\,
	combout => \inst11|Add0~56_combout\,
	cout => \inst11|Add0~57\);

-- Location: FF_X30_Y2_N25
\inst11|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(28));

-- Location: LCCOMB_X30_Y2_N26
\inst11|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~58_combout\ = (\inst11|count\(29) & (!\inst11|Add0~57\)) # (!\inst11|count\(29) & ((\inst11|Add0~57\) # (GND)))
-- \inst11|Add0~59\ = CARRY((!\inst11|Add0~57\) # (!\inst11|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|count\(29),
	datad => VCC,
	cin => \inst11|Add0~57\,
	combout => \inst11|Add0~58_combout\,
	cout => \inst11|Add0~59\);

-- Location: FF_X30_Y2_N27
\inst11|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(29));

-- Location: LCCOMB_X30_Y2_N28
\inst11|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~60_combout\ = (\inst11|count\(30) & (\inst11|Add0~59\ $ (GND))) # (!\inst11|count\(30) & (!\inst11|Add0~59\ & VCC))
-- \inst11|Add0~61\ = CARRY((\inst11|count\(30) & !\inst11|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|count\(30),
	datad => VCC,
	cin => \inst11|Add0~59\,
	combout => \inst11|Add0~60_combout\,
	cout => \inst11|Add0~61\);

-- Location: FF_X30_Y2_N29
\inst11|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(30));

-- Location: LCCOMB_X30_Y2_N30
\inst11|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~62_combout\ = \inst11|count\(31) $ (\inst11|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|count\(31),
	cin => \inst11|Add0~61\,
	combout => \inst11|Add0~62_combout\);

-- Location: FF_X30_Y2_N31
\inst11|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(31));

-- Location: LCCOMB_X29_Y5_N6
\inst8|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~9_combout\ = (!\inst11|count\(29) & (!\inst11|count\(30) & (!\inst11|count\(31) & !\inst11|count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|count\(29),
	datab => \inst11|count\(30),
	datac => \inst11|count\(31),
	datad => \inst11|count\(28),
	combout => \inst8|Equal0~9_combout\);

-- Location: LCCOMB_X30_Y5_N26
\inst8|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~2_combout\ = (\inst11|count\(8) & (\inst11|count\(10) & (\inst11|count\(9) & !\inst11|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|count\(8),
	datab => \inst11|count\(10),
	datac => \inst11|count\(9),
	datad => \inst11|count\(11),
	combout => \inst8|Equal0~2_combout\);

-- Location: LCCOMB_X30_Y5_N18
\inst8|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~0_combout\ = (!\inst11|count\(0) & (!\inst11|count\(2) & (!\inst11|count\(1) & !\inst11|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|count\(0),
	datab => \inst11|count\(2),
	datac => \inst11|count\(1),
	datad => \inst11|count\(3),
	combout => \inst8|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y5_N14
\inst8|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~3_combout\ = (!\inst11|count\(15) & (\inst11|count\(13) & (!\inst11|count\(14) & !\inst11|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|count\(15),
	datab => \inst11|count\(13),
	datac => \inst11|count\(14),
	datad => \inst11|count\(12),
	combout => \inst8|Equal0~3_combout\);

-- Location: LCCOMB_X29_Y5_N20
\inst8|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~1_combout\ = (!\inst11|count\(7) & (\inst11|count\(4) & (!\inst11|count\(5) & !\inst11|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|count\(7),
	datab => \inst11|count\(4),
	datac => \inst11|count\(5),
	datad => \inst11|count\(6),
	combout => \inst8|Equal0~1_combout\);

-- Location: LCCOMB_X30_Y5_N4
\inst8|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~4_combout\ = (\inst8|Equal0~2_combout\ & (\inst8|Equal0~0_combout\ & (\inst8|Equal0~3_combout\ & \inst8|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Equal0~2_combout\,
	datab => \inst8|Equal0~0_combout\,
	datac => \inst8|Equal0~3_combout\,
	datad => \inst8|Equal0~1_combout\,
	combout => \inst8|Equal0~4_combout\);

-- Location: LCCOMB_X31_Y2_N30
\inst8|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~6_combout\ = (!\inst11|count\(23) & (!\inst11|count\(22) & (!\inst11|count\(21) & !\inst11|count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|count\(23),
	datab => \inst11|count\(22),
	datac => \inst11|count\(21),
	datad => \inst11|count\(20),
	combout => \inst8|Equal0~6_combout\);

-- Location: LCCOMB_X31_Y2_N28
\inst8|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~5_combout\ = (!\inst11|count\(17) & (!\inst11|count\(19) & (!\inst11|count\(16) & !\inst11|count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|count\(17),
	datab => \inst11|count\(19),
	datac => \inst11|count\(16),
	datad => \inst11|count\(18),
	combout => \inst8|Equal0~5_combout\);

-- Location: LCCOMB_X31_Y2_N20
\inst8|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~7_combout\ = (\inst8|Equal0~6_combout\ & \inst8|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|Equal0~6_combout\,
	datad => \inst8|Equal0~5_combout\,
	combout => \inst8|Equal0~7_combout\);

-- Location: LCCOMB_X30_Y5_N20
\inst8|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~10_combout\ = (\inst8|Equal0~8_combout\ & (\inst8|Equal0~9_combout\ & (\inst8|Equal0~4_combout\ & \inst8|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Equal0~8_combout\,
	datab => \inst8|Equal0~9_combout\,
	datac => \inst8|Equal0~4_combout\,
	datad => \inst8|Equal0~7_combout\,
	combout => \inst8|Equal0~10_combout\);

-- Location: FF_X29_Y5_N15
\inst11|CLK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|CLK~feeder_combout\,
	ena => \inst8|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|CLK~q\);

-- Location: CLKCTRL_G7
\inst11|CLK~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst11|CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst11|CLK~clkctrl_outclk\);

-- Location: IOIBUF_X34_Y2_N22
\CR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CR,
	o => \CR~input_o\);

-- Location: IOIBUF_X34_Y12_N8
\P~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P,
	o => \P~input_o\);

-- Location: IOIBUF_X34_Y12_N15
\LD_hour~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LD_hour,
	o => \LD_hour~input_o\);

-- Location: IOIBUF_X34_Y12_N22
\LD_minute~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LD_minute,
	o => \LD_minute~input_o\);

-- Location: LCCOMB_X26_Y8_N8
\inst11|i[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|i[5]~25_combout\ = (\LD_hour~input_o\ & (\LD_minute~input_o\ & ((!\P~input_o\) # (!\CR~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CR~input_o\,
	datab => \P~input_o\,
	datac => \LD_hour~input_o\,
	datad => \LD_minute~input_o\,
	combout => \inst11|i[5]~25_combout\);

-- Location: LCCOMB_X26_Y8_N14
\inst11|clean~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|clean~2_combout\ = (!\LD_minute~input_o\) # (!\LD_hour~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LD_hour~input_o\,
	datad => \LD_minute~input_o\,
	combout => \inst11|clean~2_combout\);

-- Location: LCCOMB_X26_Y8_N2
\inst11|i[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|i[5]~1_combout\ = (!\inst11|clean~2_combout\ & ((\inst11|i[5]~25_combout\) # (\inst11|i[5]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i[5]~25_combout\,
	datac => \inst11|clean~2_combout\,
	datad => \inst11|i[5]~1_combout\,
	combout => \inst11|i[5]~1_combout\);

-- Location: LCCOMB_X28_Y8_N28
\inst11|i[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|i[4]~26_combout\ = (\LD_hour~input_o\ & (((\P~input_o\ & !\CR~input_o\)) # (!\LD_minute~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P~input_o\,
	datab => \LD_hour~input_o\,
	datac => \CR~input_o\,
	datad => \LD_minute~input_o\,
	combout => \inst11|i[4]~26_combout\);

-- Location: LCCOMB_X26_Y8_N0
\inst11|i[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|i[4]~27_combout\ = ((!\P~input_o\ & \LD_minute~input_o\)) # (!\LD_hour~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P~input_o\,
	datac => \LD_hour~input_o\,
	datad => \LD_minute~input_o\,
	combout => \inst11|i[4]~27_combout\);

-- Location: LCCOMB_X28_Y8_N2
\inst11|i[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|i[4]~5_combout\ = (!\inst11|i[4]~27_combout\ & ((\inst11|i[4]~26_combout\) # (\inst11|i[4]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i[4]~26_combout\,
	datac => \inst11|i[4]~27_combout\,
	datad => \inst11|i[4]~5_combout\,
	combout => \inst11|i[4]~5_combout\);

-- Location: LCCOMB_X26_Y8_N30
\inst11|Equal2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal2~9_combout\ = (!\inst11|Add1~12_combout\ & (!\inst11|Add1~4_combout\ & \inst11|Add1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add1~12_combout\,
	datac => \inst11|Add1~4_combout\,
	datad => \inst11|Add1~8_combout\,
	combout => \inst11|Equal2~9_combout\);

-- Location: LCCOMB_X26_Y8_N28
\inst11|Equal2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal2~10_combout\ = (!\inst11|Add1~6_combout\ & !\inst11|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Add1~6_combout\,
	datad => \inst11|Add1~10_combout\,
	combout => \inst11|Equal2~10_combout\);

-- Location: LCCOMB_X26_Y8_N16
\inst11|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal1~6_combout\ = (!\inst11|i\(8) & (!\inst11|i\(10) & (!\inst11|i\(9) & !\inst11|i\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i\(8),
	datab => \inst11|i\(10),
	datac => \inst11|i\(9),
	datad => \inst11|i\(11),
	combout => \inst11|Equal1~6_combout\);

-- Location: LCCOMB_X28_Y8_N0
\inst11|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal1~8_combout\ = (!\inst11|i[5]~2_combout\ & (!\inst11|i[2]~10_combout\ & (!\inst11|i[3]~8_combout\ & \inst11|i[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i[5]~2_combout\,
	datab => \inst11|i[2]~10_combout\,
	datac => \inst11|i[3]~8_combout\,
	datad => \inst11|i[4]~6_combout\,
	combout => \inst11|Equal1~8_combout\);

-- Location: LCCOMB_X26_Y8_N18
\inst11|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal1~5_combout\ = (!\inst11|i\(13) & (!\inst11|i\(14) & (!\inst11|i\(15) & !\inst11|i\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i\(13),
	datab => \inst11|i\(14),
	datac => \inst11|i\(15),
	datad => \inst11|i\(12),
	combout => \inst11|Equal1~5_combout\);

-- Location: LCCOMB_X28_Y8_N18
\inst11|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal1~7_combout\ = (\inst11|i\(6) & (!\inst11|i\(1) & (!\inst11|i\(7) & !\inst11|i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i\(6),
	datab => \inst11|i\(1),
	datac => \inst11|i\(7),
	datad => \inst11|i\(0),
	combout => \inst11|Equal1~7_combout\);

-- Location: LCCOMB_X28_Y8_N30
\inst11|Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal1~9_combout\ = (\inst11|Equal1~6_combout\ & (\inst11|Equal1~8_combout\ & (\inst11|Equal1~5_combout\ & \inst11|Equal1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal1~6_combout\,
	datab => \inst11|Equal1~8_combout\,
	datac => \inst11|Equal1~5_combout\,
	datad => \inst11|Equal1~7_combout\,
	combout => \inst11|Equal1~9_combout\);

-- Location: LCCOMB_X25_Y8_N0
\inst11|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~0_combout\ = \inst11|i\(0) $ (VCC)
-- \inst11|Add1~1\ = CARRY(\inst11|i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i\(0),
	datad => VCC,
	combout => \inst11|Add1~0_combout\,
	cout => \inst11|Add1~1\);

-- Location: LCCOMB_X24_Y7_N30
\inst11|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal2~4_combout\ = (!\inst11|Add1~20_combout\ & (!\inst11|Add1~26_combout\ & (!\inst11|Add1~22_combout\ & !\inst11|Add1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add1~20_combout\,
	datab => \inst11|Add1~26_combout\,
	datac => \inst11|Add1~22_combout\,
	datad => \inst11|Add1~24_combout\,
	combout => \inst11|Equal2~4_combout\);

-- Location: LCCOMB_X24_Y7_N8
\inst11|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal2~3_combout\ = (\inst11|Add1~2_combout\ & (!\inst11|Add1~16_combout\ & (!\inst11|Add1~14_combout\ & !\inst11|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add1~2_combout\,
	datab => \inst11|Add1~16_combout\,
	datac => \inst11|Add1~14_combout\,
	datad => \inst11|Add1~18_combout\,
	combout => \inst11|Equal2~3_combout\);

-- Location: LCCOMB_X24_Y7_N4
\inst11|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal2~5_combout\ = (!\inst11|Add1~34_combout\ & (!\inst11|Add1~30_combout\ & (!\inst11|Add1~32_combout\ & !\inst11|Add1~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add1~34_combout\,
	datab => \inst11|Add1~30_combout\,
	datac => \inst11|Add1~32_combout\,
	datad => \inst11|Add1~28_combout\,
	combout => \inst11|Equal2~5_combout\);

-- Location: LCCOMB_X24_Y7_N10
\inst11|Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal2~6_combout\ = (!\inst11|Add1~36_combout\ & (!\inst11|Add1~40_combout\ & (!\inst11|Add1~42_combout\ & !\inst11|Add1~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add1~36_combout\,
	datab => \inst11|Add1~40_combout\,
	datac => \inst11|Add1~42_combout\,
	datad => \inst11|Add1~38_combout\,
	combout => \inst11|Equal2~6_combout\);

-- Location: LCCOMB_X24_Y7_N16
\inst11|Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal2~7_combout\ = (\inst11|Equal2~4_combout\ & (\inst11|Equal2~3_combout\ & (\inst11|Equal2~5_combout\ & \inst11|Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal2~4_combout\,
	datab => \inst11|Equal2~3_combout\,
	datac => \inst11|Equal2~5_combout\,
	datad => \inst11|Equal2~6_combout\,
	combout => \inst11|Equal2~7_combout\);

-- Location: LCCOMB_X24_Y7_N24
\inst11|Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal2~8_combout\ = (\inst11|Add1~0_combout\ & (\inst11|Equal2~7_combout\ & ((!\inst11|Equal1~9_combout\) # (!\inst11|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal1~4_combout\,
	datab => \inst11|Equal1~9_combout\,
	datac => \inst11|Add1~0_combout\,
	datad => \inst11|Equal2~7_combout\,
	combout => \inst11|Equal2~8_combout\);

-- Location: LCCOMB_X26_Y8_N24
\inst11|i[31]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|i[31]~12_combout\ = (((!\LD_minute~input_o\) # (!\LD_hour~input_o\)) # (!\P~input_o\)) # (!\CR~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CR~input_o\,
	datab => \P~input_o\,
	datac => \LD_hour~input_o\,
	datad => \LD_minute~input_o\,
	combout => \inst11|i[31]~12_combout\);

-- Location: CLKCTRL_G1
\inst11|i[31]~12clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst11|i[31]~12clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst11|i[31]~12clkctrl_outclk\);

-- Location: FF_X25_Y7_N29
\inst11|i[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|CLK~clkctrl_outclk\,
	d => \inst11|Add1~60_combout\,
	clrn => \inst11|ALT_INV_i[31]~12clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(30));

-- Location: LCCOMB_X25_Y7_N10
\inst11|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~42_combout\ = (\inst11|i\(21) & (!\inst11|Add1~41\)) # (!\inst11|i\(21) & ((\inst11|Add1~41\) # (GND)))
-- \inst11|Add1~43\ = CARRY((!\inst11|Add1~41\) # (!\inst11|i\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i\(21),
	datad => VCC,
	cin => \inst11|Add1~41\,
	combout => \inst11|Add1~42_combout\,
	cout => \inst11|Add1~43\);

-- Location: LCCOMB_X25_Y7_N12
\inst11|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~44_combout\ = (\inst11|i\(22) & (\inst11|Add1~43\ $ (GND))) # (!\inst11|i\(22) & (!\inst11|Add1~43\ & VCC))
-- \inst11|Add1~45\ = CARRY((\inst11|i\(22) & !\inst11|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i\(22),
	datad => VCC,
	cin => \inst11|Add1~43\,
	combout => \inst11|Add1~44_combout\,
	cout => \inst11|Add1~45\);

-- Location: FF_X25_Y7_N13
\inst11|i[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|CLK~clkctrl_outclk\,
	d => \inst11|Add1~44_combout\,
	clrn => \inst11|ALT_INV_i[31]~12clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(22));

-- Location: LCCOMB_X25_Y7_N14
\inst11|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~46_combout\ = (\inst11|i\(23) & (!\inst11|Add1~45\)) # (!\inst11|i\(23) & ((\inst11|Add1~45\) # (GND)))
-- \inst11|Add1~47\ = CARRY((!\inst11|Add1~45\) # (!\inst11|i\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i\(23),
	datad => VCC,
	cin => \inst11|Add1~45\,
	combout => \inst11|Add1~46_combout\,
	cout => \inst11|Add1~47\);

-- Location: FF_X25_Y7_N15
\inst11|i[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|CLK~clkctrl_outclk\,
	d => \inst11|Add1~46_combout\,
	clrn => \inst11|ALT_INV_i[31]~12clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(23));

-- Location: LCCOMB_X25_Y7_N16
\inst11|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~48_combout\ = (\inst11|i\(24) & (\inst11|Add1~47\ $ (GND))) # (!\inst11|i\(24) & (!\inst11|Add1~47\ & VCC))
-- \inst11|Add1~49\ = CARRY((\inst11|i\(24) & !\inst11|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i\(24),
	datad => VCC,
	cin => \inst11|Add1~47\,
	combout => \inst11|Add1~48_combout\,
	cout => \inst11|Add1~49\);

-- Location: FF_X25_Y7_N17
\inst11|i[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|CLK~clkctrl_outclk\,
	d => \inst11|Add1~48_combout\,
	clrn => \inst11|ALT_INV_i[31]~12clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(24));

-- Location: LCCOMB_X25_Y7_N18
\inst11|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~50_combout\ = (\inst11|i\(25) & (!\inst11|Add1~49\)) # (!\inst11|i\(25) & ((\inst11|Add1~49\) # (GND)))
-- \inst11|Add1~51\ = CARRY((!\inst11|Add1~49\) # (!\inst11|i\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i\(25),
	datad => VCC,
	cin => \inst11|Add1~49\,
	combout => \inst11|Add1~50_combout\,
	cout => \inst11|Add1~51\);

-- Location: FF_X25_Y7_N19
\inst11|i[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|CLK~clkctrl_outclk\,
	d => \inst11|Add1~50_combout\,
	clrn => \inst11|ALT_INV_i[31]~12clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(25));

-- Location: LCCOMB_X25_Y7_N20
\inst11|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~52_combout\ = (\inst11|i\(26) & (\inst11|Add1~51\ $ (GND))) # (!\inst11|i\(26) & (!\inst11|Add1~51\ & VCC))
-- \inst11|Add1~53\ = CARRY((\inst11|i\(26) & !\inst11|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i\(26),
	datad => VCC,
	cin => \inst11|Add1~51\,
	combout => \inst11|Add1~52_combout\,
	cout => \inst11|Add1~53\);

-- Location: FF_X25_Y7_N21
\inst11|i[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|CLK~clkctrl_outclk\,
	d => \inst11|Add1~52_combout\,
	clrn => \inst11|ALT_INV_i[31]~12clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(26));

-- Location: LCCOMB_X25_Y7_N22
\inst11|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~54_combout\ = (\inst11|i\(27) & (!\inst11|Add1~53\)) # (!\inst11|i\(27) & ((\inst11|Add1~53\) # (GND)))
-- \inst11|Add1~55\ = CARRY((!\inst11|Add1~53\) # (!\inst11|i\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i\(27),
	datad => VCC,
	cin => \inst11|Add1~53\,
	combout => \inst11|Add1~54_combout\,
	cout => \inst11|Add1~55\);

-- Location: FF_X25_Y7_N23
\inst11|i[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|CLK~clkctrl_outclk\,
	d => \inst11|Add1~54_combout\,
	clrn => \inst11|ALT_INV_i[31]~12clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(27));

-- Location: LCCOMB_X25_Y7_N24
\inst11|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~56_combout\ = (\inst11|i\(28) & (\inst11|Add1~55\ $ (GND))) # (!\inst11|i\(28) & (!\inst11|Add1~55\ & VCC))
-- \inst11|Add1~57\ = CARRY((\inst11|i\(28) & !\inst11|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i\(28),
	datad => VCC,
	cin => \inst11|Add1~55\,
	combout => \inst11|Add1~56_combout\,
	cout => \inst11|Add1~57\);

-- Location: FF_X25_Y7_N25
\inst11|i[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|CLK~clkctrl_outclk\,
	d => \inst11|Add1~56_combout\,
	clrn => \inst11|ALT_INV_i[31]~12clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(28));

-- Location: LCCOMB_X25_Y7_N26
\inst11|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~58_combout\ = (\inst11|i\(29) & (!\inst11|Add1~57\)) # (!\inst11|i\(29) & ((\inst11|Add1~57\) # (GND)))
-- \inst11|Add1~59\ = CARRY((!\inst11|Add1~57\) # (!\inst11|i\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i\(29),
	datad => VCC,
	cin => \inst11|Add1~57\,
	combout => \inst11|Add1~58_combout\,
	cout => \inst11|Add1~59\);

-- Location: FF_X25_Y7_N27
\inst11|i[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|CLK~clkctrl_outclk\,
	d => \inst11|Add1~58_combout\,
	clrn => \inst11|ALT_INV_i[31]~12clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(29));

-- Location: LCCOMB_X25_Y7_N28
\inst11|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~60_combout\ = (\inst11|i\(30) & (\inst11|Add1~59\ $ (GND))) # (!\inst11|i\(30) & (!\inst11|Add1~59\ & VCC))
-- \inst11|Add1~61\ = CARRY((\inst11|i\(30) & !\inst11|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i\(30),
	datad => VCC,
	cin => \inst11|Add1~59\,
	combout => \inst11|Add1~60_combout\,
	cout => \inst11|Add1~61\);

-- Location: FF_X25_Y7_N31
\inst11|i[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|CLK~clkctrl_outclk\,
	d => \inst11|Add1~62_combout\,
	clrn => \inst11|ALT_INV_i[31]~12clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(31));

-- Location: LCCOMB_X25_Y7_N30
\inst11|Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~62_combout\ = \inst11|i\(31) $ (\inst11|Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i\(31),
	cin => \inst11|Add1~61\,
	combout => \inst11|Add1~62_combout\);

-- Location: LCCOMB_X26_Y7_N20
\inst11|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal2~0_combout\ = (!\inst11|Add1~44_combout\ & (!\inst11|Add1~50_combout\ & (!\inst11|Add1~48_combout\ & !\inst11|Add1~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add1~44_combout\,
	datab => \inst11|Add1~50_combout\,
	datac => \inst11|Add1~48_combout\,
	datad => \inst11|Add1~46_combout\,
	combout => \inst11|Equal2~0_combout\);

-- Location: LCCOMB_X28_Y7_N20
\inst11|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal2~1_combout\ = (!\inst11|Add1~56_combout\ & (!\inst11|Add1~52_combout\ & (!\inst11|Add1~54_combout\ & !\inst11|Add1~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add1~56_combout\,
	datab => \inst11|Add1~52_combout\,
	datac => \inst11|Add1~54_combout\,
	datad => \inst11|Add1~58_combout\,
	combout => \inst11|Equal2~1_combout\);

-- Location: LCCOMB_X28_Y7_N26
\inst11|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal2~2_combout\ = (!\inst11|Add1~60_combout\ & (!\inst11|Add1~62_combout\ & (\inst11|Equal2~0_combout\ & \inst11|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add1~60_combout\,
	datab => \inst11|Add1~62_combout\,
	datac => \inst11|Equal2~0_combout\,
	datad => \inst11|Equal2~1_combout\,
	combout => \inst11|Equal2~2_combout\);

-- Location: LCCOMB_X26_Y7_N10
\inst11|Equal2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal2~11_combout\ = (\inst11|Equal2~9_combout\ & (\inst11|Equal2~10_combout\ & (\inst11|Equal2~8_combout\ & \inst11|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal2~9_combout\,
	datab => \inst11|Equal2~10_combout\,
	datac => \inst11|Equal2~8_combout\,
	datad => \inst11|Equal2~2_combout\,
	combout => \inst11|Equal2~11_combout\);

-- Location: LCCOMB_X26_Y8_N12
\inst11|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal5~0_combout\ = (\inst11|Add1~12_combout\ & (\inst11|Add1~6_combout\ & !\inst11|Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add1~12_combout\,
	datac => \inst11|Add1~6_combout\,
	datad => \inst11|Add1~10_combout\,
	combout => \inst11|Equal5~0_combout\);

-- Location: LCCOMB_X28_Y8_N20
\inst11|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal3~0_combout\ = (!\inst11|Add1~8_combout\ & \inst11|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Add1~8_combout\,
	datad => \inst11|Add1~4_combout\,
	combout => \inst11|Equal3~0_combout\);

-- Location: LCCOMB_X26_Y8_N22
\inst11|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal3~1_combout\ = (!\inst11|Add1~12_combout\ & (!\inst11|Add1~6_combout\ & \inst11|Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add1~12_combout\,
	datac => \inst11|Add1~6_combout\,
	datad => \inst11|Add1~10_combout\,
	combout => \inst11|Equal3~1_combout\);

-- Location: LCCOMB_X28_Y7_N22
\inst11|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal3~2_combout\ = (\inst11|Equal3~0_combout\ & (\inst11|Equal3~1_combout\ & (\inst11|Equal2~2_combout\ & \inst11|Equal2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal3~0_combout\,
	datab => \inst11|Equal3~1_combout\,
	datac => \inst11|Equal2~2_combout\,
	datad => \inst11|Equal2~8_combout\,
	combout => \inst11|Equal3~2_combout\);

-- Location: LCCOMB_X28_Y7_N30
\inst11|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal4~0_combout\ = (\inst11|Add1~10_combout\ & (\inst11|Add1~6_combout\ & (\inst11|Equal2~9_combout\ & \inst11|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add1~10_combout\,
	datab => \inst11|Add1~6_combout\,
	datac => \inst11|Equal2~9_combout\,
	datad => \inst11|Equal2~0_combout\,
	combout => \inst11|Equal4~0_combout\);

-- Location: LCCOMB_X28_Y7_N18
\inst11|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal4~1_combout\ = (\inst11|Equal4~0_combout\ & \inst11|Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Equal4~0_combout\,
	datad => \inst11|Equal2~8_combout\,
	combout => \inst11|Equal4~1_combout\);

-- Location: LCCOMB_X28_Y7_N28
\inst11|Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal4~2_combout\ = (!\inst11|Add1~62_combout\ & (\inst11|Equal2~1_combout\ & (!\inst11|Add1~60_combout\ & \inst11|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add1~62_combout\,
	datab => \inst11|Equal2~1_combout\,
	datac => \inst11|Add1~60_combout\,
	datad => \inst11|Equal4~1_combout\,
	combout => \inst11|Equal4~2_combout\);

-- Location: LCCOMB_X28_Y7_N0
\inst11|minute~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|minute~0_combout\ = (!\inst11|Equal3~2_combout\ & (!\inst11|Equal4~2_combout\ & ((!\inst11|Equal5~0_combout\) # (!\inst11|Equal3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal3~3_combout\,
	datab => \inst11|Equal5~0_combout\,
	datac => \inst11|Equal3~2_combout\,
	datad => \inst11|Equal4~2_combout\,
	combout => \inst11|minute~0_combout\);

-- Location: LCCOMB_X28_Y8_N16
\inst11|i~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|i~24_combout\ = (\inst11|i~17_combout\ & (!\inst11|Equal2~11_combout\ & \inst11|minute~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i~17_combout\,
	datac => \inst11|Equal2~11_combout\,
	datad => \inst11|minute~0_combout\,
	combout => \inst11|i~24_combout\);

-- Location: FF_X28_Y8_N17
\inst11|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|CLK~clkctrl_outclk\,
	d => \inst11|i~24_combout\,
	clrn => \inst11|ALT_INV_i[31]~12clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(0));

-- Location: LCCOMB_X25_Y8_N2
\inst11|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~2_combout\ = (\inst11|i\(1) & (!\inst11|Add1~1\)) # (!\inst11|i\(1) & ((\inst11|Add1~1\) # (GND)))
-- \inst11|Add1~3\ = CARRY((!\inst11|Add1~1\) # (!\inst11|i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i\(1),
	datad => VCC,
	cin => \inst11|Add1~1\,
	combout => \inst11|Add1~2_combout\,
	cout => \inst11|Add1~3\);

-- Location: LCCOMB_X28_Y8_N14
\inst11|i~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|i~23_combout\ = (\inst11|Add1~2_combout\ & (!\inst11|Equal2~11_combout\ & \inst11|minute~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add1~2_combout\,
	datac => \inst11|Equal2~11_combout\,
	datad => \inst11|minute~0_combout\,
	combout => \inst11|i~23_combout\);

-- Location: FF_X28_Y8_N15
\inst11|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|CLK~clkctrl_outclk\,
	d => \inst11|i~23_combout\,
	clrn => \inst11|ALT_INV_i[31]~12clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(1));

-- Location: LCCOMB_X25_Y8_N4
\inst11|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~4_combout\ = (\inst11|i[2]~10_combout\ & (\inst11|Add1~3\ $ (GND))) # (!\inst11|i[2]~10_combout\ & (!\inst11|Add1~3\ & VCC))
-- \inst11|Add1~5\ = CARRY((\inst11|i[2]~10_combout\ & !\inst11|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i[2]~10_combout\,
	datad => VCC,
	cin => \inst11|Add1~3\,
	combout => \inst11|Add1~4_combout\,
	cout => \inst11|Add1~5\);

-- Location: LCCOMB_X28_Y8_N6
\inst11|i[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|i[2]~11_combout\ = \inst11|i[4]~5_combout\ $ (((\inst11|Add1~4_combout\ & (!\inst11|Equal2~11_combout\ & \inst11|minute~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add1~4_combout\,
	datab => \inst11|i[4]~5_combout\,
	datac => \inst11|Equal2~11_combout\,
	datad => \inst11|minute~0_combout\,
	combout => \inst11|i[2]~11_combout\);

-- Location: LCCOMB_X28_Y8_N22
\inst11|i[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|i[4]~4_combout\ = (\inst11|i[4]~27_combout\) # (\inst11|i[4]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|i[4]~27_combout\,
	datad => \inst11|i[4]~26_combout\,
	combout => \inst11|i[4]~4_combout\);

-- Location: CLKCTRL_G5
\inst11|i[4]~4clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst11|i[4]~4clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst11|i[4]~4clkctrl_outclk\);

-- Location: FF_X28_Y8_N7
\inst11|i[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|CLK~clkctrl_outclk\,
	d => \inst11|i[2]~11_combout\,
	clrn => \inst11|ALT_INV_i[4]~4clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i[2]~_emulated_q\);

-- Location: LCCOMB_X28_Y8_N4
\inst11|i[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|i[2]~10_combout\ = (!\inst11|i[4]~27_combout\ & ((\inst11|i[4]~26_combout\) # (\inst11|i[4]~5_combout\ $ (\inst11|i[2]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i[4]~26_combout\,
	datab => \inst11|i[4]~5_combout\,
	datac => \inst11|i[4]~27_combout\,
	datad => \inst11|i[2]~_emulated_q\,
	combout => \inst11|i[2]~10_combout\);

-- Location: LCCOMB_X25_Y8_N6
\inst11|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~6_combout\ = (\inst11|i[3]~8_combout\ & (!\inst11|Add1~5\)) # (!\inst11|i[3]~8_combout\ & ((\inst11|Add1~5\) # (GND)))
-- \inst11|Add1~7\ = CARRY((!\inst11|Add1~5\) # (!\inst11|i[3]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i[3]~8_combout\,
	datad => VCC,
	cin => \inst11|Add1~5\,
	combout => \inst11|Add1~6_combout\,
	cout => \inst11|Add1~7\);

-- Location: LCCOMB_X26_Y8_N10
\inst11|i[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|i[3]~9_combout\ = \inst11|i[5]~1_combout\ $ (((\inst11|Add1~6_combout\ & (!\inst11|Equal2~11_combout\ & \inst11|minute~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add1~6_combout\,
	datab => \inst11|i[5]~1_combout\,
	datac => \inst11|Equal2~11_combout\,
	datad => \inst11|minute~0_combout\,
	combout => \inst11|i[3]~9_combout\);

-- Location: LCCOMB_X26_Y8_N26
\inst11|i[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|i[5]~0_combout\ = (\inst11|i[5]~25_combout\) # (\inst11|clean~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i[5]~25_combout\,
	datac => \inst11|clean~2_combout\,
	combout => \inst11|i[5]~0_combout\);

-- Location: CLKCTRL_G8
\inst11|i[5]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst11|i[5]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst11|i[5]~0clkctrl_outclk\);

-- Location: FF_X26_Y8_N11
\inst11|i[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|CLK~clkctrl_outclk\,
	d => \inst11|i[3]~9_combout\,
	clrn => \inst11|ALT_INV_i[5]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i[3]~_emulated_q\);

-- Location: LCCOMB_X26_Y8_N20
\inst11|i[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|i[3]~8_combout\ = (!\inst11|clean~2_combout\ & ((\inst11|i[5]~25_combout\) # (\inst11|i[5]~1_combout\ $ (\inst11|i[3]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i[5]~1_combout\,
	datab => \inst11|i[5]~25_combout\,
	datac => \inst11|clean~2_combout\,
	datad => \inst11|i[3]~_emulated_q\,
	combout => \inst11|i[3]~8_combout\);

-- Location: LCCOMB_X25_Y8_N8
\inst11|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~8_combout\ = (\inst11|i[4]~6_combout\ & (\inst11|Add1~7\ $ (GND))) # (!\inst11|i[4]~6_combout\ & (!\inst11|Add1~7\ & VCC))
-- \inst11|Add1~9\ = CARRY((\inst11|i[4]~6_combout\ & !\inst11|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i[4]~6_combout\,
	datad => VCC,
	cin => \inst11|Add1~7\,
	combout => \inst11|Add1~8_combout\,
	cout => \inst11|Add1~9\);

-- Location: LCCOMB_X28_Y8_N10
\inst11|i[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|i[4]~7_combout\ = \inst11|i[4]~5_combout\ $ (((\inst11|Add1~8_combout\) # ((\inst11|Equal2~11_combout\) # (!\inst11|minute~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add1~8_combout\,
	datab => \inst11|i[4]~5_combout\,
	datac => \inst11|Equal2~11_combout\,
	datad => \inst11|minute~0_combout\,
	combout => \inst11|i[4]~7_combout\);

-- Location: FF_X28_Y8_N11
\inst11|i[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|CLK~clkctrl_outclk\,
	d => \inst11|i[4]~7_combout\,
	clrn => \inst11|ALT_INV_i[4]~4clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i[4]~_emulated_q\);

-- Location: LCCOMB_X28_Y8_N24
\inst11|i[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|i[4]~6_combout\ = (!\inst11|i[4]~27_combout\ & ((\inst11|i[4]~26_combout\) # (\inst11|i[4]~5_combout\ $ (\inst11|i[4]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i[4]~26_combout\,
	datab => \inst11|i[4]~5_combout\,
	datac => \inst11|i[4]~27_combout\,
	datad => \inst11|i[4]~_emulated_q\,
	combout => \inst11|i[4]~6_combout\);

-- Location: LCCOMB_X25_Y8_N10
\inst11|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~10_combout\ = (\inst11|i[5]~2_combout\ & (!\inst11|Add1~9\)) # (!\inst11|i[5]~2_combout\ & ((\inst11|Add1~9\) # (GND)))
-- \inst11|Add1~11\ = CARRY((!\inst11|Add1~9\) # (!\inst11|i[5]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i[5]~2_combout\,
	datad => VCC,
	cin => \inst11|Add1~9\,
	combout => \inst11|Add1~10_combout\,
	cout => \inst11|Add1~11\);

-- Location: LCCOMB_X26_Y8_N6
\inst11|i[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|i[5]~3_combout\ = \inst11|i[5]~1_combout\ $ (((\inst11|Add1~10_combout\ & (!\inst11|Equal2~11_combout\ & \inst11|minute~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add1~10_combout\,
	datab => \inst11|i[5]~1_combout\,
	datac => \inst11|Equal2~11_combout\,
	datad => \inst11|minute~0_combout\,
	combout => \inst11|i[5]~3_combout\);

-- Location: FF_X26_Y8_N7
\inst11|i[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|CLK~clkctrl_outclk\,
	d => \inst11|i[5]~3_combout\,
	clrn => \inst11|ALT_INV_i[5]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i[5]~_emulated_q\);

-- Location: LCCOMB_X26_Y8_N4
\inst11|i[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|i[5]~2_combout\ = (!\inst11|clean~2_combout\ & ((\inst11|i[5]~25_combout\) # (\inst11|i[5]~1_combout\ $ (\inst11|i[5]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i[5]~1_combout\,
	datab => \inst11|i[5]~25_combout\,
	datac => \inst11|clean~2_combout\,
	datad => \inst11|i[5]~_emulated_q\,
	combout => \inst11|i[5]~2_combout\);

-- Location: LCCOMB_X25_Y8_N12
\inst11|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~12_combout\ = (\inst11|i\(6) & (\inst11|Add1~11\ $ (GND))) # (!\inst11|i\(6) & (!\inst11|Add1~11\ & VCC))
-- \inst11|Add1~13\ = CARRY((\inst11|i\(6) & !\inst11|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i\(6),
	datad => VCC,
	cin => \inst11|Add1~11\,
	combout => \inst11|Add1~12_combout\,
	cout => \inst11|Add1~13\);

-- Location: LCCOMB_X28_Y8_N12
\inst11|i~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|i~18_combout\ = (\inst11|Add1~12_combout\) # ((\inst11|Equal2~11_combout\) # (!\inst11|minute~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Add1~12_combout\,
	datac => \inst11|Equal2~11_combout\,
	datad => \inst11|minute~0_combout\,
	combout => \inst11|i~18_combout\);

-- Location: FF_X28_Y8_N13
\inst11|i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|CLK~clkctrl_outclk\,
	d => \inst11|i~18_combout\,
	clrn => \inst11|ALT_INV_i[31]~12clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(6));

-- Location: LCCOMB_X25_Y8_N14
\inst11|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~14_combout\ = (\inst11|i\(7) & (!\inst11|Add1~13\)) # (!\inst11|i\(7) & ((\inst11|Add1~13\) # (GND)))
-- \inst11|Add1~15\ = CARRY((!\inst11|Add1~13\) # (!\inst11|i\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i\(7),
	datad => VCC,
	cin => \inst11|Add1~13\,
	combout => \inst11|Add1~14_combout\,
	cout => \inst11|Add1~15\);

-- Location: FF_X25_Y8_N15
\inst11|i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|CLK~clkctrl_outclk\,
	d => \inst11|Add1~14_combout\,
	clrn => \inst11|ALT_INV_i[31]~12clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(7));

-- Location: LCCOMB_X25_Y8_N16
\inst11|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~16_combout\ = (\inst11|i\(8) & (\inst11|Add1~15\ $ (GND))) # (!\inst11|i\(8) & (!\inst11|Add1~15\ & VCC))
-- \inst11|Add1~17\ = CARRY((\inst11|i\(8) & !\inst11|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i\(8),
	datad => VCC,
	cin => \inst11|Add1~15\,
	combout => \inst11|Add1~16_combout\,
	cout => \inst11|Add1~17\);

-- Location: FF_X25_Y8_N17
\inst11|i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|CLK~clkctrl_outclk\,
	d => \inst11|Add1~16_combout\,
	clrn => \inst11|ALT_INV_i[31]~12clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(8));

-- Location: LCCOMB_X25_Y8_N18
\inst11|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~18_combout\ = (\inst11|i\(9) & (!\inst11|Add1~17\)) # (!\inst11|i\(9) & ((\inst11|Add1~17\) # (GND)))
-- \inst11|Add1~19\ = CARRY((!\inst11|Add1~17\) # (!\inst11|i\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i\(9),
	datad => VCC,
	cin => \inst11|Add1~17\,
	combout => \inst11|Add1~18_combout\,
	cout => \inst11|Add1~19\);

-- Location: FF_X25_Y8_N19
\inst11|i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|CLK~clkctrl_outclk\,
	d => \inst11|Add1~18_combout\,
	clrn => \inst11|ALT_INV_i[31]~12clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(9));

-- Location: LCCOMB_X25_Y8_N20
\inst11|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~20_combout\ = (\inst11|i\(10) & (\inst11|Add1~19\ $ (GND))) # (!\inst11|i\(10) & (!\inst11|Add1~19\ & VCC))
-- \inst11|Add1~21\ = CARRY((\inst11|i\(10) & !\inst11|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i\(10),
	datad => VCC,
	cin => \inst11|Add1~19\,
	combout => \inst11|Add1~20_combout\,
	cout => \inst11|Add1~21\);

-- Location: FF_X25_Y8_N21
\inst11|i[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|CLK~clkctrl_outclk\,
	d => \inst11|Add1~20_combout\,
	clrn => \inst11|ALT_INV_i[31]~12clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(10));

-- Location: LCCOMB_X25_Y8_N22
\inst11|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~22_combout\ = (\inst11|i\(11) & (!\inst11|Add1~21\)) # (!\inst11|i\(11) & ((\inst11|Add1~21\) # (GND)))
-- \inst11|Add1~23\ = CARRY((!\inst11|Add1~21\) # (!\inst11|i\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i\(11),
	datad => VCC,
	cin => \inst11|Add1~21\,
	combout => \inst11|Add1~22_combout\,
	cout => \inst11|Add1~23\);

-- Location: FF_X25_Y8_N23
\inst11|i[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|CLK~clkctrl_outclk\,
	d => \inst11|Add1~22_combout\,
	clrn => \inst11|ALT_INV_i[31]~12clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(11));

-- Location: LCCOMB_X25_Y8_N24
\inst11|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~24_combout\ = (\inst11|i\(12) & (\inst11|Add1~23\ $ (GND))) # (!\inst11|i\(12) & (!\inst11|Add1~23\ & VCC))
-- \inst11|Add1~25\ = CARRY((\inst11|i\(12) & !\inst11|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i\(12),
	datad => VCC,
	cin => \inst11|Add1~23\,
	combout => \inst11|Add1~24_combout\,
	cout => \inst11|Add1~25\);

-- Location: FF_X25_Y8_N25
\inst11|i[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|CLK~clkctrl_outclk\,
	d => \inst11|Add1~24_combout\,
	clrn => \inst11|ALT_INV_i[31]~12clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(12));

-- Location: LCCOMB_X25_Y8_N26
\inst11|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~26_combout\ = (\inst11|i\(13) & (!\inst11|Add1~25\)) # (!\inst11|i\(13) & ((\inst11|Add1~25\) # (GND)))
-- \inst11|Add1~27\ = CARRY((!\inst11|Add1~25\) # (!\inst11|i\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i\(13),
	datad => VCC,
	cin => \inst11|Add1~25\,
	combout => \inst11|Add1~26_combout\,
	cout => \inst11|Add1~27\);

-- Location: FF_X25_Y8_N27
\inst11|i[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|CLK~clkctrl_outclk\,
	d => \inst11|Add1~26_combout\,
	clrn => \inst11|ALT_INV_i[31]~12clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(13));

-- Location: LCCOMB_X25_Y8_N28
\inst11|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~28_combout\ = (\inst11|i\(14) & (\inst11|Add1~27\ $ (GND))) # (!\inst11|i\(14) & (!\inst11|Add1~27\ & VCC))
-- \inst11|Add1~29\ = CARRY((\inst11|i\(14) & !\inst11|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i\(14),
	datad => VCC,
	cin => \inst11|Add1~27\,
	combout => \inst11|Add1~28_combout\,
	cout => \inst11|Add1~29\);

-- Location: FF_X25_Y8_N29
\inst11|i[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|CLK~clkctrl_outclk\,
	d => \inst11|Add1~28_combout\,
	clrn => \inst11|ALT_INV_i[31]~12clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(14));

-- Location: LCCOMB_X25_Y8_N30
\inst11|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~30_combout\ = (\inst11|i\(15) & (!\inst11|Add1~29\)) # (!\inst11|i\(15) & ((\inst11|Add1~29\) # (GND)))
-- \inst11|Add1~31\ = CARRY((!\inst11|Add1~29\) # (!\inst11|i\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i\(15),
	datad => VCC,
	cin => \inst11|Add1~29\,
	combout => \inst11|Add1~30_combout\,
	cout => \inst11|Add1~31\);

-- Location: FF_X25_Y8_N31
\inst11|i[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|CLK~clkctrl_outclk\,
	d => \inst11|Add1~30_combout\,
	clrn => \inst11|ALT_INV_i[31]~12clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(15));

-- Location: LCCOMB_X25_Y7_N0
\inst11|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~32_combout\ = (\inst11|i\(16) & (\inst11|Add1~31\ $ (GND))) # (!\inst11|i\(16) & (!\inst11|Add1~31\ & VCC))
-- \inst11|Add1~33\ = CARRY((\inst11|i\(16) & !\inst11|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i\(16),
	datad => VCC,
	cin => \inst11|Add1~31\,
	combout => \inst11|Add1~32_combout\,
	cout => \inst11|Add1~33\);

-- Location: FF_X25_Y7_N1
\inst11|i[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|CLK~clkctrl_outclk\,
	d => \inst11|Add1~32_combout\,
	clrn => \inst11|ALT_INV_i[31]~12clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(16));

-- Location: LCCOMB_X25_Y7_N2
\inst11|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~34_combout\ = (\inst11|i\(17) & (!\inst11|Add1~33\)) # (!\inst11|i\(17) & ((\inst11|Add1~33\) # (GND)))
-- \inst11|Add1~35\ = CARRY((!\inst11|Add1~33\) # (!\inst11|i\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i\(17),
	datad => VCC,
	cin => \inst11|Add1~33\,
	combout => \inst11|Add1~34_combout\,
	cout => \inst11|Add1~35\);

-- Location: FF_X25_Y7_N3
\inst11|i[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|CLK~clkctrl_outclk\,
	d => \inst11|Add1~34_combout\,
	clrn => \inst11|ALT_INV_i[31]~12clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(17));

-- Location: LCCOMB_X25_Y7_N4
\inst11|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~36_combout\ = (\inst11|i\(18) & (\inst11|Add1~35\ $ (GND))) # (!\inst11|i\(18) & (!\inst11|Add1~35\ & VCC))
-- \inst11|Add1~37\ = CARRY((\inst11|i\(18) & !\inst11|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i\(18),
	datad => VCC,
	cin => \inst11|Add1~35\,
	combout => \inst11|Add1~36_combout\,
	cout => \inst11|Add1~37\);

-- Location: FF_X25_Y7_N5
\inst11|i[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|CLK~clkctrl_outclk\,
	d => \inst11|Add1~36_combout\,
	clrn => \inst11|ALT_INV_i[31]~12clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(18));

-- Location: LCCOMB_X25_Y7_N6
\inst11|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~38_combout\ = (\inst11|i\(19) & (!\inst11|Add1~37\)) # (!\inst11|i\(19) & ((\inst11|Add1~37\) # (GND)))
-- \inst11|Add1~39\ = CARRY((!\inst11|Add1~37\) # (!\inst11|i\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i\(19),
	datad => VCC,
	cin => \inst11|Add1~37\,
	combout => \inst11|Add1~38_combout\,
	cout => \inst11|Add1~39\);

-- Location: FF_X25_Y7_N7
\inst11|i[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|CLK~clkctrl_outclk\,
	d => \inst11|Add1~38_combout\,
	clrn => \inst11|ALT_INV_i[31]~12clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(19));

-- Location: LCCOMB_X25_Y7_N8
\inst11|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add1~40_combout\ = (\inst11|i\(20) & (\inst11|Add1~39\ $ (GND))) # (!\inst11|i\(20) & (!\inst11|Add1~39\ & VCC))
-- \inst11|Add1~41\ = CARRY((\inst11|i\(20) & !\inst11|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i\(20),
	datad => VCC,
	cin => \inst11|Add1~39\,
	combout => \inst11|Add1~40_combout\,
	cout => \inst11|Add1~41\);

-- Location: FF_X25_Y7_N9
\inst11|i[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|CLK~clkctrl_outclk\,
	d => \inst11|Add1~40_combout\,
	clrn => \inst11|ALT_INV_i[31]~12clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(20));

-- Location: FF_X25_Y7_N11
\inst11|i[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|CLK~clkctrl_outclk\,
	d => \inst11|Add1~42_combout\,
	clrn => \inst11|ALT_INV_i[31]~12clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(21));

-- Location: LCCOMB_X24_Y7_N26
\inst11|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal1~2_combout\ = (!\inst11|i\(21) & (!\inst11|i\(22) & (!\inst11|i\(23) & !\inst11|i\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i\(21),
	datab => \inst11|i\(22),
	datac => \inst11|i\(23),
	datad => \inst11|i\(20),
	combout => \inst11|Equal1~2_combout\);

-- Location: LCCOMB_X24_Y7_N28
\inst11|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal1~1_combout\ = (!\inst11|i\(27) & (!\inst11|i\(25) & (!\inst11|i\(26) & !\inst11|i\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i\(27),
	datab => \inst11|i\(25),
	datac => \inst11|i\(26),
	datad => \inst11|i\(24),
	combout => \inst11|Equal1~1_combout\);

-- Location: LCCOMB_X24_Y7_N14
\inst11|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal1~0_combout\ = (!\inst11|i\(30) & (!\inst11|i\(28) & (!\inst11|i\(31) & !\inst11|i\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i\(30),
	datab => \inst11|i\(28),
	datac => \inst11|i\(31),
	datad => \inst11|i\(29),
	combout => \inst11|Equal1~0_combout\);

-- Location: LCCOMB_X24_Y7_N20
\inst11|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal1~3_combout\ = (!\inst11|i\(17) & (!\inst11|i\(16) & (!\inst11|i\(19) & !\inst11|i\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i\(17),
	datab => \inst11|i\(16),
	datac => \inst11|i\(19),
	datad => \inst11|i\(18),
	combout => \inst11|Equal1~3_combout\);

-- Location: LCCOMB_X24_Y7_N22
\inst11|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal1~4_combout\ = (\inst11|Equal1~2_combout\ & (\inst11|Equal1~1_combout\ & (\inst11|Equal1~0_combout\ & \inst11|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal1~2_combout\,
	datab => \inst11|Equal1~1_combout\,
	datac => \inst11|Equal1~0_combout\,
	datad => \inst11|Equal1~3_combout\,
	combout => \inst11|Equal1~4_combout\);

-- Location: LCCOMB_X28_Y7_N16
\inst11|i~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|i~17_combout\ = (\inst11|Add1~0_combout\ & ((!\inst11|Equal1~9_combout\) # (!\inst11|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal1~4_combout\,
	datab => \inst11|Equal1~9_combout\,
	datad => \inst11|Add1~0_combout\,
	combout => \inst11|i~17_combout\);

-- Location: LCCOMB_X28_Y7_N10
\inst11|Equal3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal3~3_combout\ = (\inst11|i~17_combout\ & (\inst11|Equal3~0_combout\ & (\inst11|Equal2~2_combout\ & \inst11|Equal2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i~17_combout\,
	datab => \inst11|Equal3~0_combout\,
	datac => \inst11|Equal2~2_combout\,
	datad => \inst11|Equal2~7_combout\,
	combout => \inst11|Equal3~3_combout\);

-- Location: LCCOMB_X28_Y7_N2
\inst11|clean~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|clean~0_combout\ = (!\inst11|i[31]~12_combout\ & (!\inst11|Equal4~2_combout\ & (!\inst11|Equal3~2_combout\ & !\inst11|Equal2~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i[31]~12_combout\,
	datab => \inst11|Equal4~2_combout\,
	datac => \inst11|Equal3~2_combout\,
	datad => \inst11|Equal2~11_combout\,
	combout => \inst11|clean~0_combout\);

-- Location: LCCOMB_X28_Y7_N8
\inst11|clean~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|clean~1_combout\ = (\inst11|clean~0_combout\ & (((!\inst11|Equal5~0_combout\)) # (!\inst11|Equal3~3_combout\))) # (!\inst11|clean~0_combout\ & (((\inst11|clean~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal3~3_combout\,
	datab => \inst11|Equal5~0_combout\,
	datac => \inst11|clean~q\,
	datad => \inst11|clean~0_combout\,
	combout => \inst11|clean~1_combout\);

-- Location: FF_X28_Y7_N9
\inst11|clean\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|CLK~clkctrl_outclk\,
	d => \inst11|clean~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|clean~q\);

-- Location: LCCOMB_X28_Y7_N4
\inst11|pause~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|pause~0_combout\ = \inst11|pause~q\ $ (((!\inst11|i[31]~12_combout\ & \inst11|Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i[31]~12_combout\,
	datac => \inst11|pause~q\,
	datad => \inst11|Equal4~2_combout\,
	combout => \inst11|pause~0_combout\);

-- Location: FF_X28_Y7_N17
\inst11|pause\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|CLK~clkctrl_outclk\,
	asdata => \inst11|pause~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|pause~q\);

-- Location: LCCOMB_X28_Y7_N6
\inst2|data[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|data[4]~6_combout\ = (!\inst11|clean~q\ & !\inst11|pause~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|clean~q\,
	datad => \inst11|pause~q\,
	combout => \inst2|data[4]~6_combout\);

-- Location: FF_X29_Y6_N5
\inst|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|CLK~clkctrl_outclk\,
	d => \inst|data~8_combout\,
	clrn => \inst2|ALT_INV_data[4]~6_combout\,
	ena => \inst11|ALT_INV_pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(1));

-- Location: LCCOMB_X30_Y6_N24
\inst|data~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data~4_combout\ = (!\inst|data\(3) & (\inst|data\(2) $ (((\inst|data\(1) & \inst|data\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(3),
	datab => \inst|data\(1),
	datac => \inst|data\(2),
	datad => \inst|data\(0),
	combout => \inst|data~4_combout\);

-- Location: FF_X30_Y6_N25
\inst|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|CLK~clkctrl_outclk\,
	d => \inst|data~4_combout\,
	clrn => \inst2|ALT_INV_data[4]~6_combout\,
	ena => \inst11|ALT_INV_pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(2));

-- Location: LCCOMB_X29_Y6_N10
\inst|data~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data~5_combout\ = (!\inst|data\(0) & (((!\inst|data\(1) & !\inst|data\(2))) # (!\inst|data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(3),
	datab => \inst|data\(1),
	datac => \inst|data\(0),
	datad => \inst|data\(2),
	combout => \inst|data~5_combout\);

-- Location: FF_X29_Y6_N11
\inst|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|CLK~clkctrl_outclk\,
	d => \inst|data~5_combout\,
	clrn => \inst2|ALT_INV_data[4]~6_combout\,
	ena => \inst11|ALT_INV_pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(0));

-- Location: LCCOMB_X30_Y6_N30
\inst|data~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data~7_combout\ = (\inst|data\(0) & (\inst|data\(2) & (!\inst|data\(3) & \inst|data\(1)))) # (!\inst|data\(0) & (!\inst|data\(2) & (\inst|data\(3) & !\inst|data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(0),
	datab => \inst|data\(2),
	datac => \inst|data\(3),
	datad => \inst|data\(1),
	combout => \inst|data~7_combout\);

-- Location: FF_X30_Y6_N31
\inst|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|CLK~clkctrl_outclk\,
	d => \inst|data~7_combout\,
	clrn => \inst2|ALT_INV_data[4]~6_combout\,
	ena => \inst11|ALT_INV_pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(3));

-- Location: LCCOMB_X29_Y9_N6
\inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = ((!\inst|data\(0) & (!\inst|data\(1) & !\inst|data\(2)))) # (!\inst|data\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(3),
	datab => \inst|data\(0),
	datac => \inst|data\(1),
	datad => \inst|data\(2),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X29_Y9_N10
\inst|data~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data~3_combout\ = (!\inst|data\(4) & (((\inst|LessThan0~0_combout\) # (!\inst|data\(6))) # (!\inst|data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(5),
	datab => \inst|data\(6),
	datac => \inst|data\(4),
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|data~3_combout\);

-- Location: LCCOMB_X29_Y6_N22
\inst|data[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data[6]~1_combout\ = (\inst|data\(1)) # (\inst|data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|data\(1),
	datad => \inst|data\(0),
	combout => \inst|data[6]~1_combout\);

-- Location: LCCOMB_X29_Y9_N28
\inst|data[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data[6]~2_combout\ = (\inst|data\(3) & (!\inst11|pause~q\ & ((\inst|data\(2)) # (\inst|data[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(3),
	datab => \inst|data\(2),
	datac => \inst|data[6]~1_combout\,
	datad => \inst11|pause~q\,
	combout => \inst|data[6]~2_combout\);

-- Location: FF_X29_Y9_N11
\inst|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|CLK~clkctrl_outclk\,
	d => \inst|data~3_combout\,
	clrn => \inst2|ALT_INV_data[4]~6_combout\,
	ena => \inst|data[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(4));

-- Location: LCCOMB_X29_Y9_N30
\inst|data~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data~6_combout\ = (\inst|data\(5) & ((\inst|data\(4) & (!\inst|data\(6))) # (!\inst|data\(4) & (\inst|data\(6) & \inst|LessThan0~0_combout\)))) # (!\inst|data\(5) & (\inst|data\(6) & ((\inst|LessThan0~0_combout\) # (!\inst|data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(5),
	datab => \inst|data\(4),
	datac => \inst|data\(6),
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|data~6_combout\);

-- Location: FF_X29_Y9_N31
\inst|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|CLK~clkctrl_outclk\,
	d => \inst|data~6_combout\,
	clrn => \inst2|ALT_INV_data[4]~6_combout\,
	ena => \inst|data[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(6));

-- Location: LCCOMB_X29_Y9_N12
\inst|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data~0_combout\ = (\inst|data\(6) & (\inst|LessThan0~0_combout\ & (\inst|data\(4) $ (\inst|data\(5))))) # (!\inst|data\(6) & (\inst|data\(4) $ ((\inst|data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(6),
	datab => \inst|data\(4),
	datac => \inst|data\(5),
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|data~0_combout\);

-- Location: FF_X29_Y9_N13
\inst|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|CLK~clkctrl_outclk\,
	d => \inst|data~0_combout\,
	clrn => \inst2|ALT_INV_data[4]~6_combout\,
	ena => \inst|data[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(5));

-- Location: LCCOMB_X28_Y9_N10
\inst|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~0_combout\ = (\inst|data\(6) & (!\inst|LessThan0~0_combout\ & ((\inst|data\(5)) # (\inst|data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(5),
	datab => \inst|data\(6),
	datac => \inst|data\(4),
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|process_0~0_combout\);

-- Location: LCCOMB_X28_Y9_N4
\inst|C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|C~0_combout\ = (!\inst11|pause~q\ & \inst11|clean~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|pause~q\,
	datad => \inst11|clean~q\,
	combout => \inst|C~0_combout\);

-- Location: FF_X28_Y9_N11
\inst|C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|CLK~clkctrl_outclk\,
	d => \inst|process_0~0_combout\,
	ena => \inst|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|C~q\);

-- Location: LCCOMB_X28_Y7_N12
\inst11|minute~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|minute~1_combout\ = (!\inst11|i[31]~12_combout\ & !\inst11|Equal2~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|i[31]~12_combout\,
	datad => \inst11|Equal2~11_combout\,
	combout => \inst11|minute~1_combout\);

-- Location: LCCOMB_X28_Y7_N14
\inst11|minute~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|minute~2_combout\ = (\inst11|minute~1_combout\ & ((\inst11|minute~0_combout\) # ((!\inst11|Equal3~2_combout\ & \inst11|minute~q\)))) # (!\inst11|minute~1_combout\ & (((\inst11|minute~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal3~2_combout\,
	datab => \inst11|minute~0_combout\,
	datac => \inst11|minute~q\,
	datad => \inst11|minute~1_combout\,
	combout => \inst11|minute~2_combout\);

-- Location: FF_X28_Y7_N15
\inst11|minute\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|CLK~q\,
	d => \inst11|minute~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|minute~q\);

-- Location: LCCOMB_X28_Y9_N30
inst5 : cycloneive_lcell_comb
-- Equation(s):
-- \inst5~combout\ = LCELL((\inst|C~q\) # (!\inst11|minute~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|C~q\,
	datad => \inst11|minute~q\,
	combout => \inst5~combout\);

-- Location: CLKCTRL_G6
\inst5~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst5~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst5~clkctrl_outclk\);

-- Location: LCCOMB_X31_Y7_N14
\inst1|data~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data~6_combout\ = (!\inst1|data\(3) & (\inst1|data\(0) $ (\inst1|data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|data\(0),
	datac => \inst1|data\(1),
	datad => \inst1|data\(3),
	combout => \inst1|data~6_combout\);

-- Location: FF_X31_Y7_N15
\inst1|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5~clkctrl_outclk\,
	d => \inst1|data~6_combout\,
	clrn => \inst2|ALT_INV_data[4]~6_combout\,
	ena => \inst11|ALT_INV_pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data\(1));

-- Location: LCCOMB_X31_Y7_N8
\inst1|data~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data~5_combout\ = (!\inst1|data\(3) & (\inst1|data\(2) $ (((\inst1|data\(0) & \inst1|data\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data\(3),
	datab => \inst1|data\(0),
	datac => \inst1|data\(2),
	datad => \inst1|data\(1),
	combout => \inst1|data~5_combout\);

-- Location: FF_X31_Y7_N9
\inst1|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5~clkctrl_outclk\,
	d => \inst1|data~5_combout\,
	clrn => \inst2|ALT_INV_data[4]~6_combout\,
	ena => \inst11|ALT_INV_pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data\(2));

-- Location: LCCOMB_X31_Y7_N28
\inst1|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data~0_combout\ = (\inst1|data\(0) & (\inst1|data\(2) & (!\inst1|data\(3) & \inst1|data\(1)))) # (!\inst1|data\(0) & (!\inst1|data\(2) & (\inst1|data\(3) & !\inst1|data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data\(0),
	datab => \inst1|data\(2),
	datac => \inst1|data\(3),
	datad => \inst1|data\(1),
	combout => \inst1|data~0_combout\);

-- Location: FF_X31_Y7_N29
\inst1|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5~clkctrl_outclk\,
	d => \inst1|data~0_combout\,
	clrn => \inst2|ALT_INV_data[4]~6_combout\,
	ena => \inst11|ALT_INV_pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data\(3));

-- Location: LCCOMB_X31_Y7_N12
\inst1|data~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data~7_combout\ = (!\inst1|data\(0) & (((!\inst1|data\(2) & !\inst1|data\(1))) # (!\inst1|data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data\(3),
	datab => \inst1|data\(2),
	datac => \inst1|data\(0),
	datad => \inst1|data\(1),
	combout => \inst1|data~7_combout\);

-- Location: FF_X31_Y7_N13
\inst1|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5~clkctrl_outclk\,
	d => \inst1|data~7_combout\,
	clrn => \inst2|ALT_INV_data[4]~6_combout\,
	ena => \inst11|ALT_INV_pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data\(0));

-- Location: LCCOMB_X31_Y7_N20
\inst1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~0_combout\ = ((!\inst1|data\(0) & (!\inst1|data\(1) & !\inst1|data\(2)))) # (!\inst1|data\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data\(0),
	datab => \inst1|data\(1),
	datac => \inst1|data\(2),
	datad => \inst1|data\(3),
	combout => \inst1|LessThan0~0_combout\);

-- Location: LCCOMB_X31_Y7_N0
\inst1|data~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data~3_combout\ = (!\inst1|data\(4) & (((\inst1|LessThan0~0_combout\) # (!\inst1|data\(6))) # (!\inst1|data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data\(5),
	datab => \inst1|data\(6),
	datac => \inst1|data\(4),
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|data~3_combout\);

-- Location: LCCOMB_X31_Y7_N6
\inst1|data[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data[6]~2_combout\ = (!\inst11|pause~q\ & !\inst1|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|pause~q\,
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|data[6]~2_combout\);

-- Location: FF_X31_Y7_N1
\inst1|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5~clkctrl_outclk\,
	d => \inst1|data~3_combout\,
	clrn => \inst2|ALT_INV_data[4]~6_combout\,
	ena => \inst1|data[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data\(4));

-- Location: LCCOMB_X31_Y7_N30
\inst1|data~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data~1_combout\ = (\inst1|data\(6) & (\inst1|LessThan0~0_combout\ & (\inst1|data\(4) $ (\inst1|data\(5))))) # (!\inst1|data\(6) & (\inst1|data\(4) $ ((\inst1|data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data\(6),
	datab => \inst1|data\(4),
	datac => \inst1|data\(5),
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|data~1_combout\);

-- Location: FF_X31_Y7_N31
\inst1|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5~clkctrl_outclk\,
	d => \inst1|data~1_combout\,
	clrn => \inst2|ALT_INV_data[4]~6_combout\,
	ena => \inst1|data[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data\(5));

-- Location: LCCOMB_X31_Y7_N10
\inst1|data~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data~4_combout\ = (\inst1|data\(5) & ((\inst1|data\(4) & (!\inst1|data\(6))) # (!\inst1|data\(4) & (\inst1|data\(6) & \inst1|LessThan0~0_combout\)))) # (!\inst1|data\(5) & (\inst1|data\(6) & ((\inst1|LessThan0~0_combout\) # (!\inst1|data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data\(5),
	datab => \inst1|data\(4),
	datac => \inst1|data\(6),
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|data~4_combout\);

-- Location: FF_X31_Y7_N11
\inst1|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5~clkctrl_outclk\,
	d => \inst1|data~4_combout\,
	clrn => \inst2|ALT_INV_data[4]~6_combout\,
	ena => \inst1|data[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data\(6));

-- Location: LCCOMB_X29_Y6_N26
\inst7|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|comb~1_combout\ = (!\inst1|data\(6) & (!\inst1|data\(2) & (!\inst1|data\(0) & !\inst1|data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data\(6),
	datab => \inst1|data\(2),
	datac => \inst1|data\(0),
	datad => \inst1|data\(1),
	combout => \inst7|comb~1_combout\);

-- Location: LCCOMB_X29_Y6_N16
\inst7|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|comb~0_combout\ = (!\inst1|data\(3) & (!\inst1|data\(5) & !\inst1|data\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|data\(3),
	datac => \inst1|data\(5),
	datad => \inst1|data\(4),
	combout => \inst7|comb~0_combout\);

-- Location: LCCOMB_X29_Y9_N8
\inst7|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal2~0_combout\ = (!\inst|data\(5) & (!\inst|data\(2) & (!\inst|data\(0) & !\inst|data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(5),
	datab => \inst|data\(2),
	datac => \inst|data\(0),
	datad => \inst|data\(4),
	combout => \inst7|Equal2~0_combout\);

-- Location: LCCOMB_X29_Y6_N24
\inst7|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal2~1_combout\ = (!\inst|data\(3) & (\inst7|Equal2~0_combout\ & !\inst|data\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(3),
	datac => \inst7|Equal2~0_combout\,
	datad => \inst|data\(6),
	combout => \inst7|Equal2~1_combout\);

-- Location: LCCOMB_X29_Y6_N30
\inst7|comb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|comb~2_combout\ = (\inst7|comb~1_combout\ & (!\inst|data\(1) & (\inst7|comb~0_combout\ & \inst7|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|comb~1_combout\,
	datab => \inst|data\(1),
	datac => \inst7|comb~0_combout\,
	datad => \inst7|Equal2~1_combout\,
	combout => \inst7|comb~2_combout\);

-- Location: LCCOMB_X29_Y6_N8
\inst7|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal2~2_combout\ = (!\inst|data\(3) & (\inst|data\(1) & (\inst7|Equal2~0_combout\ & !\inst|data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(3),
	datab => \inst|data\(1),
	datac => \inst7|Equal2~0_combout\,
	datad => \inst|data\(6),
	combout => \inst7|Equal2~2_combout\);

-- Location: LCCOMB_X29_Y6_N20
\inst7|alarm\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|alarm~combout\ = (!\inst7|comb~2_combout\ & ((\inst7|Equal2~2_combout\) # (\inst7|alarm~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|comb~2_combout\,
	datac => \inst7|Equal2~2_combout\,
	datad => \inst7|alarm~combout\,
	combout => \inst7|alarm~combout\);

-- Location: LCCOMB_X29_Y5_N16
\inst8|tx[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|tx[4]~feeder_combout\ = \inst8|tx\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|tx\(5),
	combout => \inst8|tx[4]~feeder_combout\);

-- Location: FF_X29_Y5_N17
\inst8|tx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|tx[4]~feeder_combout\,
	ena => \inst8|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|tx\(4));

-- Location: FF_X29_Y5_N23
\inst8|tx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst8|tx\(4),
	sload => VCC,
	ena => \inst8|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|tx\(3));

-- Location: LCCOMB_X29_Y5_N24
\inst8|tx[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|tx[2]~feeder_combout\ = \inst8|tx\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|tx\(3),
	combout => \inst8|tx[2]~feeder_combout\);

-- Location: FF_X29_Y5_N25
\inst8|tx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|tx[2]~feeder_combout\,
	ena => \inst8|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|tx\(2));

-- Location: LCCOMB_X29_Y5_N28
\inst8|tx[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|tx[1]~feeder_combout\ = \inst8|tx\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|tx\(2),
	combout => \inst8|tx[1]~feeder_combout\);

-- Location: FF_X29_Y5_N29
\inst8|tx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|tx[1]~feeder_combout\,
	ena => \inst8|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|tx\(1));

-- Location: LCCOMB_X29_Y5_N26
\inst8|tx[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|tx[0]~1_combout\ = !\inst8|tx\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|tx\(1),
	combout => \inst8|tx[0]~1_combout\);

-- Location: FF_X29_Y5_N27
\inst8|tx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|tx[0]~1_combout\,
	ena => \inst8|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|tx\(0));

-- Location: LCCOMB_X29_Y5_N2
\inst8|tx[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|tx[5]~0_combout\ = !\inst8|tx\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|tx\(0),
	combout => \inst8|tx[5]~0_combout\);

-- Location: FF_X29_Y5_N3
\inst8|tx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|tx[5]~0_combout\,
	ena => \inst8|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|tx\(5));

-- Location: LCCOMB_X31_Y7_N22
\inst8|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux14~0_combout\ = (\inst1|data\(0) & ((\inst1|data\(3)) # (\inst1|data\(2) $ (\inst1|data\(1))))) # (!\inst1|data\(0) & ((\inst1|data\(1)) # (\inst1|data\(3) $ (\inst1|data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data\(3),
	datab => \inst1|data\(2),
	datac => \inst1|data\(0),
	datad => \inst1|data\(1),
	combout => \inst8|Mux14~0_combout\);

-- Location: LCCOMB_X28_Y7_N24
\inst11|hour~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|hour~0_combout\ = (\inst11|i[31]~12_combout\ & (((\inst11|hour~q\)))) # (!\inst11|i[31]~12_combout\ & (!\inst11|Equal2~11_combout\ & ((\inst11|minute~0_combout\) # (\inst11|hour~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i[31]~12_combout\,
	datab => \inst11|minute~0_combout\,
	datac => \inst11|hour~q\,
	datad => \inst11|Equal2~11_combout\,
	combout => \inst11|hour~0_combout\);

-- Location: FF_X28_Y7_N25
\inst11|hour\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|CLK~q\,
	d => \inst11|hour~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|hour~q\);

-- Location: LCCOMB_X28_Y9_N12
\inst1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~0_combout\ = (\inst1|data\(6) & (!\inst1|LessThan0~0_combout\ & ((\inst1|data\(4)) # (\inst1|data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data\(4),
	datab => \inst1|data\(5),
	datac => \inst1|data\(6),
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|process_0~0_combout\);

-- Location: FF_X28_Y9_N13
\inst1|C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5~clkctrl_outclk\,
	d => \inst1|process_0~0_combout\,
	ena => \inst|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|C~q\);

-- Location: LCCOMB_X28_Y9_N28
inst6 : cycloneive_lcell_comb
-- Equation(s):
-- \inst6~combout\ = LCELL((\inst1|C~q\) # (!\inst11|hour~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|hour~q\,
	datad => \inst1|C~q\,
	combout => \inst6~combout\);

-- Location: CLKCTRL_G9
\inst6~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst6~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst6~clkctrl_outclk\);

-- Location: LCCOMB_X29_Y7_N20
\inst2|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~1_combout\ = (!\inst2|data\(0)) # (!\inst2|data\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|data\(1),
	datad => \inst2|data\(0),
	combout => \inst2|LessThan2~1_combout\);

-- Location: LCCOMB_X29_Y7_N22
\inst2|data~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|data~11_combout\ = (\inst2|data[0]~9_combout\ & (\inst2|data\(3) $ (((\inst2|data\(2) & !\inst2|LessThan2~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data\(2),
	datab => \inst2|LessThan2~1_combout\,
	datac => \inst2|data\(3),
	datad => \inst2|data[0]~9_combout\,
	combout => \inst2|data~11_combout\);

-- Location: FF_X29_Y7_N23
\inst2|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6~clkctrl_outclk\,
	d => \inst2|data~11_combout\,
	clrn => \inst2|ALT_INV_data[4]~6_combout\,
	ena => \inst11|ALT_INV_pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(3));

-- Location: LCCOMB_X29_Y7_N18
\inst2|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~0_combout\ = (!\inst2|data\(2) & (!\inst2|data\(3) & ((!\inst2|data\(1)) # (!\inst2|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data\(0),
	datab => \inst2|data\(2),
	datac => \inst2|data\(3),
	datad => \inst2|data\(1),
	combout => \inst2|LessThan2~0_combout\);

-- Location: LCCOMB_X29_Y7_N6
\inst2|data[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|data[7]~12_combout\ = (!\inst11|pause~q\ & (((\inst2|data\(5) & !\inst2|LessThan2~0_combout\)) # (!\inst2|data[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data\(5),
	datab => \inst2|data[0]~7_combout\,
	datac => \inst11|pause~q\,
	datad => \inst2|LessThan2~0_combout\,
	combout => \inst2|data[7]~12_combout\);

-- Location: LCCOMB_X29_Y7_N16
\inst2|data[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|data[4]~15_combout\ = (\inst2|data\(4) & (((!\inst2|data[7]~12_combout\)))) # (!\inst2|data\(4) & (\inst2|data[7]~12_combout\ & ((\inst2|LessThan2~0_combout\) # (!\inst2|data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data\(5),
	datab => \inst2|LessThan2~0_combout\,
	datac => \inst2|data\(4),
	datad => \inst2|data[7]~12_combout\,
	combout => \inst2|data[4]~15_combout\);

-- Location: FF_X29_Y7_N17
\inst2|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6~clkctrl_outclk\,
	d => \inst2|data[4]~15_combout\,
	clrn => \inst2|ALT_INV_data[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(4));

-- Location: LCCOMB_X29_Y7_N26
\inst2|data[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|data[5]~14_combout\ = (\inst2|data\(4) & ((\inst2|data\(5) $ (\inst2|data[7]~12_combout\)))) # (!\inst2|data\(4) & (\inst2|data\(5) & ((\inst2|LessThan2~0_combout\) # (!\inst2|data[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data\(4),
	datab => \inst2|LessThan2~0_combout\,
	datac => \inst2|data\(5),
	datad => \inst2|data[7]~12_combout\,
	combout => \inst2|data[5]~14_combout\);

-- Location: FF_X29_Y7_N27
\inst2|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6~clkctrl_outclk\,
	d => \inst2|data[5]~14_combout\,
	clrn => \inst2|ALT_INV_data[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(5));

-- Location: LCCOMB_X29_Y7_N14
\inst2|data[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|data[0]~9_combout\ = (\inst2|data[0]~7_combout\ & ((\inst2|LessThan2~0_combout\) # (!\inst2|data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|data\(5),
	datac => \inst2|data[0]~7_combout\,
	datad => \inst2|LessThan2~0_combout\,
	combout => \inst2|data[0]~9_combout\);

-- Location: LCCOMB_X29_Y7_N2
\inst2|data~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|data~10_combout\ = (\inst2|data[0]~9_combout\ & (\inst2|data\(0) $ (\inst2|data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|data\(0),
	datac => \inst2|data\(1),
	datad => \inst2|data[0]~9_combout\,
	combout => \inst2|data~10_combout\);

-- Location: FF_X29_Y7_N3
\inst2|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6~clkctrl_outclk\,
	d => \inst2|data~10_combout\,
	clrn => \inst2|ALT_INV_data[4]~6_combout\,
	ena => \inst11|ALT_INV_pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(1));

-- Location: LCCOMB_X29_Y7_N4
\inst2|data~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|data~13_combout\ = (\inst2|data[0]~9_combout\ & (\inst2|data\(2) $ (((\inst2|data\(1) & \inst2|data\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data\(1),
	datab => \inst2|data\(0),
	datac => \inst2|data\(2),
	datad => \inst2|data[0]~9_combout\,
	combout => \inst2|data~13_combout\);

-- Location: FF_X29_Y7_N5
\inst2|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6~clkctrl_outclk\,
	d => \inst2|data~13_combout\,
	clrn => \inst2|ALT_INV_data[4]~6_combout\,
	ena => \inst11|ALT_INV_pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(2));

-- Location: LCCOMB_X29_Y7_N8
\inst2|data[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|data[0]~7_combout\ = ((!\inst2|data\(2) & (!\inst2|data\(1) & !\inst2|data\(0)))) # (!\inst2|data\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data\(2),
	datab => \inst2|data\(1),
	datac => \inst2|data\(3),
	datad => \inst2|data\(0),
	combout => \inst2|data[0]~7_combout\);

-- Location: LCCOMB_X29_Y7_N12
\inst2|data~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|data~8_combout\ = (\inst2|data[0]~7_combout\ & (!\inst2|data\(0) & ((\inst2|LessThan2~0_combout\) # (!\inst2|data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data[0]~7_combout\,
	datab => \inst2|LessThan2~0_combout\,
	datac => \inst2|data\(0),
	datad => \inst2|data\(5),
	combout => \inst2|data~8_combout\);

-- Location: FF_X29_Y7_N13
\inst2|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6~clkctrl_outclk\,
	d => \inst2|data~8_combout\,
	clrn => \inst2|ALT_INV_data[4]~6_combout\,
	ena => \inst11|ALT_INV_pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(0));

-- Location: LCCOMB_X29_Y7_N28
\inst8|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux0~0_combout\ = (\inst2|data\(0) & ((\inst2|data\(3)) # (\inst2|data\(1) $ (\inst2|data\(2))))) # (!\inst2|data\(0) & ((\inst2|data\(1)) # (\inst2|data\(3) $ (\inst2|data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data\(0),
	datab => \inst2|data\(3),
	datac => \inst2|data\(1),
	datad => \inst2|data\(2),
	combout => \inst8|Mux0~0_combout\);

-- Location: LCCOMB_X29_Y5_N18
\inst8|tem[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|tem[0]~7_combout\ = (!\inst8|tx\(3) & ((\inst8|tx\(2)) # (!\inst8|tx\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|tx\(2),
	datac => \inst8|tx\(3),
	datad => \inst8|tx\(1),
	combout => \inst8|tem[0]~7_combout\);

-- Location: LCCOMB_X29_Y5_N8
\inst8|tem[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|tem[0]~8_combout\ = (!\inst8|tx\(3) & !\inst8|tx\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|tx\(3),
	datad => \inst8|tx\(2),
	combout => \inst8|tem[0]~8_combout\);

-- Location: LCCOMB_X30_Y5_N2
\inst8|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux21~0_combout\ = (\inst1|data\(5) & ((!\inst1|data\(6)) # (!\inst1|data\(4)))) # (!\inst1|data\(5) & ((\inst1|data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|data\(4),
	datac => \inst1|data\(5),
	datad => \inst1|data\(6),
	combout => \inst8|Mux21~0_combout\);

-- Location: LCCOMB_X30_Y5_N8
\inst8|Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux43~0_combout\ = (\inst8|tem[0]~8_combout\ & ((\inst8|tem[0]~7_combout\) # ((!\inst2|data\(5))))) # (!\inst8|tem[0]~8_combout\ & (!\inst8|tem[0]~7_combout\ & ((!\inst8|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|tem[0]~8_combout\,
	datab => \inst8|tem[0]~7_combout\,
	datac => \inst2|data\(5),
	datad => \inst8|Mux21~0_combout\,
	combout => \inst8|Mux43~0_combout\);

-- Location: LCCOMB_X30_Y5_N6
\inst8|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux28~0_combout\ = (\inst|data\(0) & ((\inst|data\(3)) # (\inst|data\(2) $ (\inst|data\(1))))) # (!\inst|data\(0) & ((\inst|data\(1)) # (\inst|data\(3) $ (\inst|data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(0),
	datab => \inst|data\(3),
	datac => \inst|data\(2),
	datad => \inst|data\(1),
	combout => \inst8|Mux28~0_combout\);

-- Location: LCCOMB_X30_Y5_N0
\inst8|Mux43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux43~1_combout\ = (\inst8|tem[0]~7_combout\ & ((\inst8|Mux43~0_combout\ & ((!\inst8|Mux28~0_combout\))) # (!\inst8|Mux43~0_combout\ & (!\inst8|Mux0~0_combout\)))) # (!\inst8|tem[0]~7_combout\ & (((\inst8|Mux43~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux0~0_combout\,
	datab => \inst8|tem[0]~7_combout\,
	datac => \inst8|Mux43~0_combout\,
	datad => \inst8|Mux28~0_combout\,
	combout => \inst8|Mux43~1_combout\);

-- Location: LCCOMB_X30_Y5_N24
\inst8|tem[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|tem[6]~0_combout\ = (\inst8|tx\(4) & (!\inst8|Mux14~0_combout\)) # (!\inst8|tx\(4) & ((\inst8|Mux43~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux14~0_combout\,
	datab => \inst8|tx\(4),
	datad => \inst8|Mux43~1_combout\,
	combout => \inst8|tem[6]~0_combout\);

-- Location: LCCOMB_X29_Y9_N24
\inst8|Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux35~0_combout\ = (\inst|data\(6) & (\inst|data\(4) & \inst|data\(5))) # (!\inst|data\(6) & ((!\inst|data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(4),
	datac => \inst|data\(6),
	datad => \inst|data\(5),
	combout => \inst8|Mux35~0_combout\);

-- Location: LCCOMB_X29_Y5_N12
\inst8|tem[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|tem[6]~9_combout\ = (\inst8|tx\(0) & (!\inst8|tx\(5) & (!\inst8|tx\(3) & !\inst8|tx\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|tx\(0),
	datab => \inst8|tx\(5),
	datac => \inst8|tx\(3),
	datad => \inst8|tx\(1),
	combout => \inst8|tem[6]~9_combout\);

-- Location: LCCOMB_X29_Y5_N30
\inst8|tem[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|tem[6]~10_combout\ = (\inst8|tx\(0) & ((\inst8|tx\(5) & ((\inst8|tx\(3)) # (\inst8|tx\(1)))) # (!\inst8|tx\(5) & (\inst8|tx\(3) & \inst8|tx\(1))))) # (!\inst8|tx\(0) & ((\inst8|tx\(5)) # ((\inst8|tx\(3)) # (\inst8|tx\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|tx\(0),
	datab => \inst8|tx\(5),
	datac => \inst8|tx\(3),
	datad => \inst8|tx\(1),
	combout => \inst8|tem[6]~10_combout\);

-- Location: LCCOMB_X29_Y5_N10
\inst8|tem[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|tem[6]~11_combout\ = (\inst8|tem[6]~9_combout\ & ((\inst8|tx\(4) & ((\inst8|tem[6]~10_combout\) # (\inst8|tx\(2)))) # (!\inst8|tx\(4) & (\inst8|tem[6]~10_combout\ $ (!\inst8|tx\(2)))))) # (!\inst8|tem[6]~9_combout\ & ((\inst8|tx\(4)) # 
-- ((\inst8|tem[6]~10_combout\) # (\inst8|tx\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|tem[6]~9_combout\,
	datab => \inst8|tx\(4),
	datac => \inst8|tem[6]~10_combout\,
	datad => \inst8|tx\(2),
	combout => \inst8|tem[6]~11_combout\);

-- Location: LCCOMB_X30_Y5_N10
\inst8|tem[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|tem[6]~12_combout\ = (!\inst8|tem[6]~11_combout\ & \inst8|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|tem[6]~11_combout\,
	datad => \inst8|Equal0~10_combout\,
	combout => \inst8|tem[6]~12_combout\);

-- Location: FF_X30_Y5_N25
\inst8|tem[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|tem[6]~0_combout\,
	asdata => \inst8|Mux35~0_combout\,
	sload => \inst8|tx\(5),
	ena => \inst8|tem[6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|tem\(6));

-- Location: LCCOMB_X31_Y7_N24
\inst8|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux15~0_combout\ = (\inst1|data\(0) & (\inst1|data\(3) $ (((\inst1|data\(1)) # (!\inst1|data\(2)))))) # (!\inst1|data\(0) & (!\inst1|data\(2) & (!\inst1|data\(3) & \inst1|data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data\(0),
	datab => \inst1|data\(2),
	datac => \inst1|data\(3),
	datad => \inst1|data\(1),
	combout => \inst8|Mux15~0_combout\);

-- Location: LCCOMB_X30_Y7_N0
\inst8|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux8~0_combout\ = (\inst2|data\(4)) # (\inst2|data\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data\(4),
	datac => \inst2|data\(5),
	combout => \inst8|Mux8~0_combout\);

-- Location: LCCOMB_X30_Y7_N30
\inst8|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux1~0_combout\ = (\inst2|data\(0) & (\inst2|data\(3) $ (((\inst2|data\(1)) # (!\inst2|data\(2)))))) # (!\inst2|data\(0) & (!\inst2|data\(3) & (!\inst2|data\(2) & \inst2|data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data\(0),
	datab => \inst2|data\(3),
	datac => \inst2|data\(2),
	datad => \inst2|data\(1),
	combout => \inst8|Mux1~0_combout\);

-- Location: LCCOMB_X30_Y7_N12
\inst8|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux22~0_combout\ = (\inst1|data\(6) & (\inst1|data\(4) & \inst1|data\(5))) # (!\inst1|data\(6) & ((\inst1|data\(4)) # (\inst1|data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data\(6),
	datab => \inst1|data\(4),
	datac => \inst1|data\(5),
	combout => \inst8|Mux22~0_combout\);

-- Location: LCCOMB_X30_Y7_N26
\inst8|Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux44~0_combout\ = (\inst8|tem[0]~8_combout\ & (\inst8|tem[0]~7_combout\)) # (!\inst8|tem[0]~8_combout\ & ((\inst8|tem[0]~7_combout\ & (\inst8|Mux1~0_combout\)) # (!\inst8|tem[0]~7_combout\ & ((\inst8|Mux22~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|tem[0]~8_combout\,
	datab => \inst8|tem[0]~7_combout\,
	datac => \inst8|Mux1~0_combout\,
	datad => \inst8|Mux22~0_combout\,
	combout => \inst8|Mux44~0_combout\);

-- Location: LCCOMB_X30_Y7_N24
\inst8|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux29~0_combout\ = (\inst|data\(1) & (!\inst|data\(3) & ((\inst|data\(0)) # (!\inst|data\(2))))) # (!\inst|data\(1) & (\inst|data\(0) & (\inst|data\(2) $ (!\inst|data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(1),
	datab => \inst|data\(2),
	datac => \inst|data\(0),
	datad => \inst|data\(3),
	combout => \inst8|Mux29~0_combout\);

-- Location: LCCOMB_X30_Y7_N6
\inst8|Mux44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux44~1_combout\ = (\inst8|tem[0]~8_combout\ & ((\inst8|Mux44~0_combout\ & ((\inst8|Mux29~0_combout\))) # (!\inst8|Mux44~0_combout\ & (\inst8|Mux8~0_combout\)))) # (!\inst8|tem[0]~8_combout\ & (((\inst8|Mux44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|tem[0]~8_combout\,
	datab => \inst8|Mux8~0_combout\,
	datac => \inst8|Mux44~0_combout\,
	datad => \inst8|Mux29~0_combout\,
	combout => \inst8|Mux44~1_combout\);

-- Location: LCCOMB_X30_Y7_N16
\inst8|tem[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|tem[5]~1_combout\ = (\inst8|tx\(4) & (\inst8|Mux15~0_combout\)) # (!\inst8|tx\(4) & ((\inst8|Mux44~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|tx\(4),
	datab => \inst8|Mux15~0_combout\,
	datad => \inst8|Mux44~1_combout\,
	combout => \inst8|tem[5]~1_combout\);

-- Location: LCCOMB_X29_Y9_N2
\inst8|Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux36~0_combout\ = (\inst|data\(4) & ((\inst|data\(5)) # (!\inst|data\(6)))) # (!\inst|data\(4) & (!\inst|data\(6) & \inst|data\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(4),
	datac => \inst|data\(6),
	datad => \inst|data\(5),
	combout => \inst8|Mux36~0_combout\);

-- Location: FF_X30_Y7_N17
\inst8|tem[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|tem[5]~1_combout\,
	asdata => \inst8|Mux36~0_combout\,
	sload => \inst8|tx\(5),
	ena => \inst8|tem[6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|tem\(5));

-- Location: LCCOMB_X31_Y6_N8
\inst8|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux16~0_combout\ = (\inst1|data\(1) & (\inst1|data\(0) & ((!\inst1|data\(3))))) # (!\inst1|data\(1) & ((\inst1|data\(2) & ((!\inst1|data\(3)))) # (!\inst1|data\(2) & (\inst1|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data\(0),
	datab => \inst1|data\(1),
	datac => \inst1|data\(2),
	datad => \inst1|data\(3),
	combout => \inst8|Mux16~0_combout\);

-- Location: LCCOMB_X31_Y7_N26
\inst8|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux23~0_combout\ = (\inst1|data\(4)) # ((!\inst1|data\(5) & \inst1|data\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|data\(4),
	datac => \inst1|data\(5),
	datad => \inst1|data\(6),
	combout => \inst8|Mux23~0_combout\);

-- Location: LCCOMB_X30_Y6_N8
\inst8|Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux45~0_combout\ = (\inst8|tem[0]~7_combout\ & (\inst8|tem[0]~8_combout\)) # (!\inst8|tem[0]~7_combout\ & ((\inst8|tem[0]~8_combout\ & (\inst2|data\(4))) # (!\inst8|tem[0]~8_combout\ & ((\inst8|Mux23~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|tem[0]~7_combout\,
	datab => \inst8|tem[0]~8_combout\,
	datac => \inst2|data\(4),
	datad => \inst8|Mux23~0_combout\,
	combout => \inst8|Mux45~0_combout\);

-- Location: LCCOMB_X30_Y6_N14
\inst8|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux30~0_combout\ = (\inst|data\(1) & (!\inst|data\(3) & ((\inst|data\(0))))) # (!\inst|data\(1) & ((\inst|data\(2) & (!\inst|data\(3))) # (!\inst|data\(2) & ((\inst|data\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(3),
	datab => \inst|data\(2),
	datac => \inst|data\(1),
	datad => \inst|data\(0),
	combout => \inst8|Mux30~0_combout\);

-- Location: LCCOMB_X30_Y7_N28
\inst8|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux2~0_combout\ = (\inst2|data\(1) & (\inst2|data\(0) & ((!\inst2|data\(3))))) # (!\inst2|data\(1) & ((\inst2|data\(2) & ((!\inst2|data\(3)))) # (!\inst2|data\(2) & (\inst2|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data\(0),
	datab => \inst2|data\(1),
	datac => \inst2|data\(2),
	datad => \inst2|data\(3),
	combout => \inst8|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y6_N16
\inst8|Mux45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux45~1_combout\ = (\inst8|tem[0]~7_combout\ & ((\inst8|Mux45~0_combout\ & (\inst8|Mux30~0_combout\)) # (!\inst8|Mux45~0_combout\ & ((\inst8|Mux2~0_combout\))))) # (!\inst8|tem[0]~7_combout\ & (\inst8|Mux45~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|tem[0]~7_combout\,
	datab => \inst8|Mux45~0_combout\,
	datac => \inst8|Mux30~0_combout\,
	datad => \inst8|Mux2~0_combout\,
	combout => \inst8|Mux45~1_combout\);

-- Location: LCCOMB_X30_Y6_N12
\inst8|tem[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|tem[4]~2_combout\ = (\inst8|tx\(4) & (\inst8|Mux16~0_combout\)) # (!\inst8|tx\(4) & ((\inst8|Mux45~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|tx\(4),
	datab => \inst8|Mux16~0_combout\,
	datad => \inst8|Mux45~1_combout\,
	combout => \inst8|tem[4]~2_combout\);

-- Location: LCCOMB_X29_Y9_N20
\inst8|Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux37~0_combout\ = (\inst|data\(4)) # ((\inst|data\(6) & !\inst|data\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(4),
	datac => \inst|data\(6),
	datad => \inst|data\(5),
	combout => \inst8|Mux37~0_combout\);

-- Location: FF_X30_Y6_N13
\inst8|tem[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|tem[4]~2_combout\,
	asdata => \inst8|Mux37~0_combout\,
	sload => \inst8|tx\(5),
	ena => \inst8|tem[6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|tem\(4));

-- Location: LCCOMB_X31_Y7_N16
\inst8|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux17~0_combout\ = (\inst1|data\(0) & (\inst1|data\(2) $ (((!\inst1|data\(1)))))) # (!\inst1|data\(0) & ((\inst1|data\(2) & (!\inst1|data\(3) & !\inst1|data\(1))) # (!\inst1|data\(2) & (\inst1|data\(3) & \inst1|data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data\(0),
	datab => \inst1|data\(2),
	datac => \inst1|data\(3),
	datad => \inst1|data\(1),
	combout => \inst8|Mux17~0_combout\);

-- Location: LCCOMB_X29_Y7_N10
\inst8|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux10~0_combout\ = (!\inst2|data\(5) & \inst2|data\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|data\(5),
	datad => \inst2|data\(4),
	combout => \inst8|Mux10~0_combout\);

-- Location: LCCOMB_X30_Y7_N4
\inst8|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux24~0_combout\ = (\inst1|data\(6) & (\inst1|data\(4) $ (!\inst1|data\(5)))) # (!\inst1|data\(6) & (\inst1|data\(4) & !\inst1|data\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data\(6),
	datab => \inst1|data\(4),
	datac => \inst1|data\(5),
	combout => \inst8|Mux24~0_combout\);

-- Location: LCCOMB_X30_Y7_N18
\inst8|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux3~0_combout\ = (\inst2|data\(0) & ((\inst2|data\(2) $ (!\inst2|data\(1))))) # (!\inst2|data\(0) & ((\inst2|data\(3) & (!\inst2|data\(2) & \inst2|data\(1))) # (!\inst2|data\(3) & (\inst2|data\(2) & !\inst2|data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data\(0),
	datab => \inst2|data\(3),
	datac => \inst2|data\(2),
	datad => \inst2|data\(1),
	combout => \inst8|Mux3~0_combout\);

-- Location: LCCOMB_X30_Y7_N22
\inst8|Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux46~0_combout\ = (\inst8|tem[0]~8_combout\ & (((\inst8|tem[0]~7_combout\)))) # (!\inst8|tem[0]~8_combout\ & ((\inst8|tem[0]~7_combout\ & ((\inst8|Mux3~0_combout\))) # (!\inst8|tem[0]~7_combout\ & (\inst8|Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|tem[0]~8_combout\,
	datab => \inst8|Mux24~0_combout\,
	datac => \inst8|tem[0]~7_combout\,
	datad => \inst8|Mux3~0_combout\,
	combout => \inst8|Mux46~0_combout\);

-- Location: LCCOMB_X30_Y7_N20
\inst8|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux31~0_combout\ = (\inst|data\(0) & (\inst|data\(1) $ ((!\inst|data\(2))))) # (!\inst|data\(0) & ((\inst|data\(1) & (!\inst|data\(2) & \inst|data\(3))) # (!\inst|data\(1) & (\inst|data\(2) & !\inst|data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(1),
	datab => \inst|data\(2),
	datac => \inst|data\(0),
	datad => \inst|data\(3),
	combout => \inst8|Mux31~0_combout\);

-- Location: LCCOMB_X30_Y7_N2
\inst8|Mux46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux46~1_combout\ = (\inst8|tem[0]~8_combout\ & ((\inst8|Mux46~0_combout\ & ((\inst8|Mux31~0_combout\))) # (!\inst8|Mux46~0_combout\ & (\inst8|Mux10~0_combout\)))) # (!\inst8|tem[0]~8_combout\ & (((\inst8|Mux46~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|tem[0]~8_combout\,
	datab => \inst8|Mux10~0_combout\,
	datac => \inst8|Mux46~0_combout\,
	datad => \inst8|Mux31~0_combout\,
	combout => \inst8|Mux46~1_combout\);

-- Location: LCCOMB_X30_Y7_N14
\inst8|tem[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|tem[3]~3_combout\ = (\inst8|tx\(4) & (\inst8|Mux17~0_combout\)) # (!\inst8|tx\(4) & ((\inst8|Mux46~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux17~0_combout\,
	datab => \inst8|tx\(4),
	datad => \inst8|Mux46~1_combout\,
	combout => \inst8|tem[3]~3_combout\);

-- Location: LCCOMB_X29_Y9_N18
\inst8|Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux38~0_combout\ = (\inst|data\(4) & (\inst|data\(6) $ (!\inst|data\(5)))) # (!\inst|data\(4) & (\inst|data\(6) & !\inst|data\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(4),
	datac => \inst|data\(6),
	datad => \inst|data\(5),
	combout => \inst8|Mux38~0_combout\);

-- Location: FF_X30_Y7_N15
\inst8|tem[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|tem[3]~3_combout\,
	asdata => \inst8|Mux38~0_combout\,
	sload => \inst8|tx\(5),
	ena => \inst8|tem[6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|tem\(3));

-- Location: LCCOMB_X31_Y6_N22
\inst8|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux18~0_combout\ = (\inst1|data\(2) & (\inst1|data\(3) & ((\inst1|data\(1)) # (!\inst1|data\(0))))) # (!\inst1|data\(2) & (!\inst1|data\(0) & (\inst1|data\(1) & !\inst1|data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data\(0),
	datab => \inst1|data\(1),
	datac => \inst1|data\(2),
	datad => \inst1|data\(3),
	combout => \inst8|Mux18~0_combout\);

-- Location: LCCOMB_X29_Y6_N6
\inst8|Mux47~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux47~2_combout\ = ((\inst|data\(0) & (\inst|data\(1) & \inst|data\(2))) # (!\inst|data\(0) & ((\inst|data\(1)) # (\inst|data\(2))))) # (!\inst8|tem[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(0),
	datab => \inst|data\(1),
	datac => \inst8|tem[0]~8_combout\,
	datad => \inst|data\(2),
	combout => \inst8|Mux47~2_combout\);

-- Location: LCCOMB_X31_Y7_N18
\inst8|Mux47~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux47~3_combout\ = (!\inst1|data\(4) & (\inst1|data\(5) & !\inst1|data\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|data\(4),
	datac => \inst1|data\(5),
	datad => \inst1|data\(6),
	combout => \inst8|Mux47~3_combout\);

-- Location: LCCOMB_X30_Y7_N8
\inst8|Mux47~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux47~4_combout\ = (\inst8|tem[0]~8_combout\ & (!\inst2|data\(4) & (\inst2|data\(5)))) # (!\inst8|tem[0]~8_combout\ & (((\inst8|Mux47~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data\(4),
	datab => \inst8|tem[0]~8_combout\,
	datac => \inst2|data\(5),
	datad => \inst8|Mux47~3_combout\,
	combout => \inst8|Mux47~4_combout\);

-- Location: LCCOMB_X29_Y7_N24
\inst8|Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux47~0_combout\ = (\inst2|data\(3) & (\inst2|data\(2) & ((\inst2|data\(1)) # (!\inst2|data\(0))))) # (!\inst2|data\(3) & (!\inst2|data\(0) & (\inst2|data\(1) & !\inst2|data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data\(0),
	datab => \inst2|data\(1),
	datac => \inst2|data\(3),
	datad => \inst2|data\(2),
	combout => \inst8|Mux47~0_combout\);

-- Location: LCCOMB_X30_Y6_N2
\inst8|Mux47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux47~1_combout\ = (\inst8|tem[0]~8_combout\ & (\inst|data\(3) $ ((!\inst|data\(2))))) # (!\inst8|tem[0]~8_combout\ & (((\inst8|Mux47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(3),
	datab => \inst|data\(2),
	datac => \inst8|Mux47~0_combout\,
	datad => \inst8|tem[0]~8_combout\,
	combout => \inst8|Mux47~1_combout\);

-- Location: LCCOMB_X30_Y6_N20
\inst8|Mux47~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux47~5_combout\ = (\inst8|tem[0]~7_combout\ & (\inst8|Mux47~2_combout\ & ((\inst8|Mux47~1_combout\)))) # (!\inst8|tem[0]~7_combout\ & (((\inst8|Mux47~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|tem[0]~7_combout\,
	datab => \inst8|Mux47~2_combout\,
	datac => \inst8|Mux47~4_combout\,
	datad => \inst8|Mux47~1_combout\,
	combout => \inst8|Mux47~5_combout\);

-- Location: LCCOMB_X30_Y6_N6
\inst8|tem[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|tem[2]~4_combout\ = (\inst8|tx\(4) & (\inst8|Mux18~0_combout\)) # (!\inst8|tx\(4) & ((\inst8|Mux47~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|tx\(4),
	datab => \inst8|Mux18~0_combout\,
	datad => \inst8|Mux47~5_combout\,
	combout => \inst8|tem[2]~4_combout\);

-- Location: LCCOMB_X29_Y9_N16
\inst8|Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux39~0_combout\ = (!\inst|data\(4) & (!\inst|data\(6) & \inst|data\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(4),
	datac => \inst|data\(6),
	datad => \inst|data\(5),
	combout => \inst8|Mux39~0_combout\);

-- Location: FF_X30_Y6_N7
\inst8|tem[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|tem[2]~4_combout\,
	asdata => \inst8|Mux39~0_combout\,
	sload => \inst8|tx\(5),
	ena => \inst8|tem[6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|tem\(2));

-- Location: LCCOMB_X31_Y6_N16
\inst8|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux19~0_combout\ = (\inst1|data\(1) & ((\inst1|data\(0) & ((\inst1|data\(3)))) # (!\inst1|data\(0) & (\inst1|data\(2))))) # (!\inst1|data\(1) & (\inst1|data\(2) & (\inst1|data\(0) $ (\inst1|data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data\(0),
	datab => \inst1|data\(1),
	datac => \inst1|data\(2),
	datad => \inst1|data\(3),
	combout => \inst8|Mux19~0_combout\);

-- Location: LCCOMB_X30_Y6_N22
\inst8|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux33~0_combout\ = (\inst|data\(3) & ((\inst|data\(0) & ((\inst|data\(1)))) # (!\inst|data\(0) & (\inst|data\(2))))) # (!\inst|data\(3) & (\inst|data\(2) & (\inst|data\(0) $ (\inst|data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(0),
	datab => \inst|data\(2),
	datac => \inst|data\(3),
	datad => \inst|data\(1),
	combout => \inst8|Mux33~0_combout\);

-- Location: LCCOMB_X29_Y7_N30
\inst8|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux5~0_combout\ = (\inst2|data\(1) & ((\inst2|data\(0) & (\inst2|data\(3))) # (!\inst2|data\(0) & ((\inst2|data\(2)))))) # (!\inst2|data\(1) & (\inst2|data\(2) & (\inst2|data\(0) $ (\inst2|data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data\(0),
	datab => \inst2|data\(1),
	datac => \inst2|data\(3),
	datad => \inst2|data\(2),
	combout => \inst8|Mux5~0_combout\);

-- Location: LCCOMB_X30_Y6_N28
\inst8|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux26~0_combout\ = (\inst1|data\(6) & (\inst1|data\(4) $ (\inst1|data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|data\(4),
	datac => \inst1|data\(6),
	datad => \inst1|data\(5),
	combout => \inst8|Mux26~0_combout\);

-- Location: LCCOMB_X29_Y6_N28
\inst8|Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux48~0_combout\ = (\inst8|tem[0]~7_combout\ & ((\inst8|tem[0]~8_combout\) # ((\inst8|Mux5~0_combout\)))) # (!\inst8|tem[0]~7_combout\ & (!\inst8|tem[0]~8_combout\ & ((\inst8|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|tem[0]~7_combout\,
	datab => \inst8|tem[0]~8_combout\,
	datac => \inst8|Mux5~0_combout\,
	datad => \inst8|Mux26~0_combout\,
	combout => \inst8|Mux48~0_combout\);

-- Location: LCCOMB_X30_Y6_N10
\inst8|Mux48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux48~1_combout\ = (\inst8|Mux48~0_combout\ & ((\inst8|tx\(2)) # ((\inst8|tx\(3)) # (\inst8|Mux33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|tx\(2),
	datab => \inst8|tx\(3),
	datac => \inst8|Mux33~0_combout\,
	datad => \inst8|Mux48~0_combout\,
	combout => \inst8|Mux48~1_combout\);

-- Location: LCCOMB_X30_Y6_N0
\inst8|tem[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|tem[1]~5_combout\ = (\inst8|tx\(4) & (\inst8|Mux19~0_combout\)) # (!\inst8|tx\(4) & ((\inst8|Mux48~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|tx\(4),
	datab => \inst8|Mux19~0_combout\,
	datad => \inst8|Mux48~1_combout\,
	combout => \inst8|tem[1]~5_combout\);

-- Location: LCCOMB_X29_Y9_N14
\inst8|Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux40~0_combout\ = (\inst|data\(6) & (\inst|data\(4) $ (\inst|data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(4),
	datac => \inst|data\(6),
	datad => \inst|data\(5),
	combout => \inst8|Mux40~0_combout\);

-- Location: FF_X30_Y6_N1
\inst8|tem[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|tem[1]~5_combout\,
	asdata => \inst8|Mux40~0_combout\,
	sload => \inst8|tx\(5),
	ena => \inst8|tem[6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|tem\(1));

-- Location: LCCOMB_X31_Y6_N14
\inst8|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux20~0_combout\ = (\inst1|data\(2) & (!\inst1|data\(1) & (\inst1|data\(0) $ (!\inst1|data\(3))))) # (!\inst1|data\(2) & (\inst1|data\(0) & (\inst1|data\(1) $ (!\inst1|data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data\(0),
	datab => \inst1|data\(1),
	datac => \inst1|data\(2),
	datad => \inst1|data\(3),
	combout => \inst8|Mux20~0_combout\);

-- Location: LCCOMB_X30_Y6_N4
\inst8|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux34~0_combout\ = (\inst|data\(2) & (!\inst|data\(1) & (\inst|data\(0) $ (!\inst|data\(3))))) # (!\inst|data\(2) & (\inst|data\(0) & (\inst|data\(3) $ (!\inst|data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(0),
	datab => \inst|data\(2),
	datac => \inst|data\(3),
	datad => \inst|data\(1),
	combout => \inst8|Mux34~0_combout\);

-- Location: LCCOMB_X29_Y7_N0
\inst8|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux6~0_combout\ = (\inst2|data\(3) & (\inst2|data\(0) & (\inst2|data\(2) $ (\inst2|data\(1))))) # (!\inst2|data\(3) & (!\inst2|data\(1) & (\inst2|data\(2) $ (\inst2|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data\(3),
	datab => \inst2|data\(2),
	datac => \inst2|data\(1),
	datad => \inst2|data\(0),
	combout => \inst8|Mux6~0_combout\);

-- Location: LCCOMB_X29_Y6_N18
\inst8|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux27~0_combout\ = (!\inst1|data\(5) & (\inst1|data\(6) $ (\inst1|data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|data\(5),
	datac => \inst1|data\(6),
	datad => \inst1|data\(4),
	combout => \inst8|Mux27~0_combout\);

-- Location: LCCOMB_X29_Y6_N12
\inst8|Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux49~0_combout\ = (\inst8|tem[0]~7_combout\ & (\inst8|tem[0]~8_combout\)) # (!\inst8|tem[0]~7_combout\ & ((\inst8|tem[0]~8_combout\ & (\inst8|Mux10~0_combout\)) # (!\inst8|tem[0]~8_combout\ & ((\inst8|Mux27~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|tem[0]~7_combout\,
	datab => \inst8|tem[0]~8_combout\,
	datac => \inst8|Mux10~0_combout\,
	datad => \inst8|Mux27~0_combout\,
	combout => \inst8|Mux49~0_combout\);

-- Location: LCCOMB_X30_Y6_N18
\inst8|Mux49~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux49~1_combout\ = (\inst8|tem[0]~7_combout\ & ((\inst8|Mux49~0_combout\ & (\inst8|Mux34~0_combout\)) # (!\inst8|Mux49~0_combout\ & ((\inst8|Mux6~0_combout\))))) # (!\inst8|tem[0]~7_combout\ & (((\inst8|Mux49~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|tem[0]~7_combout\,
	datab => \inst8|Mux34~0_combout\,
	datac => \inst8|Mux6~0_combout\,
	datad => \inst8|Mux49~0_combout\,
	combout => \inst8|Mux49~1_combout\);

-- Location: LCCOMB_X30_Y6_N26
\inst8|tem[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|tem[0]~6_combout\ = (\inst8|tx\(4) & (\inst8|Mux20~0_combout\)) # (!\inst8|tx\(4) & ((\inst8|Mux49~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|tx\(4),
	datab => \inst8|Mux20~0_combout\,
	datad => \inst8|Mux49~1_combout\,
	combout => \inst8|tem[0]~6_combout\);

-- Location: LCCOMB_X29_Y9_N4
\inst8|Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux41~0_combout\ = (!\inst|data\(5) & (\inst|data\(6) $ (\inst|data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(5),
	datac => \inst|data\(6),
	datad => \inst|data\(4),
	combout => \inst8|Mux41~0_combout\);

-- Location: FF_X30_Y6_N27
\inst8|tem[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|tem[0]~6_combout\,
	asdata => \inst8|Mux41~0_combout\,
	sload => \inst8|tx\(5),
	ena => \inst8|tem[6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|tem\(0));

ww_alarm <= \alarm~output_o\;

ww_DIG(5) <= \DIG[5]~output_o\;

ww_DIG(4) <= \DIG[4]~output_o\;

ww_DIG(3) <= \DIG[3]~output_o\;

ww_DIG(2) <= \DIG[2]~output_o\;

ww_DIG(1) <= \DIG[1]~output_o\;

ww_DIG(0) <= \DIG[0]~output_o\;

ww_SEG(7) <= \SEG[7]~output_o\;

ww_SEG(6) <= \SEG[6]~output_o\;

ww_SEG(5) <= \SEG[5]~output_o\;

ww_SEG(4) <= \SEG[4]~output_o\;

ww_SEG(3) <= \SEG[3]~output_o\;

ww_SEG(2) <= \SEG[2]~output_o\;

ww_SEG(1) <= \SEG[1]~output_o\;

ww_SEG(0) <= \SEG[0]~output_o\;
END structure;


