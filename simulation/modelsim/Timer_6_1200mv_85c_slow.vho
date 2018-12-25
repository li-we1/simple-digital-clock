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

-- DATE "10/28/2018 14:29:57"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
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

ENTITY 	clock IS
    PORT (
	alarm : OUT std_logic;
	CLK : IN std_logic;
	LD_hour : IN std_logic;
	LD_minute : IN std_logic;
	P : IN std_logic;
	CR : IN std_logic;
	DIG : OUT std_logic_vector(5 DOWNTO 0);
	hour_out : OUT std_logic_vector(7 DOWNTO 0);
	minute_out : OUT std_logic_vector(7 DOWNTO 0);
	second_out : OUT std_logic_vector(7 DOWNTO 0);
	SEG : OUT std_logic_vector(7 DOWNTO 0)
	);
END clock;

-- Design Ports Information
-- alarm	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIG[5]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIG[4]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIG[3]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIG[2]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIG[1]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIG[0]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour_out[7]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour_out[6]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour_out[5]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour_out[4]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour_out[3]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour_out[2]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour_out[1]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hour_out[0]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minute_out[7]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minute_out[6]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minute_out[5]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minute_out[4]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minute_out[3]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minute_out[2]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minute_out[1]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minute_out[0]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- second_out[7]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- second_out[6]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- second_out[5]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- second_out[4]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- second_out[3]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- second_out[2]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- second_out[1]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- second_out[0]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[7]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[6]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[5]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[4]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[3]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[2]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[1]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[0]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LD_hour	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LD_minute	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CR	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_hour_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_minute_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_second_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SEG : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst11|i[31]~17clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst10|CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst11|i[4]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst11|i[3]~4clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \alarm~output_o\ : std_logic;
SIGNAL \DIG[5]~output_o\ : std_logic;
SIGNAL \DIG[4]~output_o\ : std_logic;
SIGNAL \DIG[3]~output_o\ : std_logic;
SIGNAL \DIG[2]~output_o\ : std_logic;
SIGNAL \DIG[1]~output_o\ : std_logic;
SIGNAL \DIG[0]~output_o\ : std_logic;
SIGNAL \hour_out[7]~output_o\ : std_logic;
SIGNAL \hour_out[6]~output_o\ : std_logic;
SIGNAL \hour_out[5]~output_o\ : std_logic;
SIGNAL \hour_out[4]~output_o\ : std_logic;
SIGNAL \hour_out[3]~output_o\ : std_logic;
SIGNAL \hour_out[2]~output_o\ : std_logic;
SIGNAL \hour_out[1]~output_o\ : std_logic;
SIGNAL \hour_out[0]~output_o\ : std_logic;
SIGNAL \minute_out[7]~output_o\ : std_logic;
SIGNAL \minute_out[6]~output_o\ : std_logic;
SIGNAL \minute_out[5]~output_o\ : std_logic;
SIGNAL \minute_out[4]~output_o\ : std_logic;
SIGNAL \minute_out[3]~output_o\ : std_logic;
SIGNAL \minute_out[2]~output_o\ : std_logic;
SIGNAL \minute_out[1]~output_o\ : std_logic;
SIGNAL \minute_out[0]~output_o\ : std_logic;
SIGNAL \second_out[7]~output_o\ : std_logic;
SIGNAL \second_out[6]~output_o\ : std_logic;
SIGNAL \second_out[5]~output_o\ : std_logic;
SIGNAL \second_out[4]~output_o\ : std_logic;
SIGNAL \second_out[3]~output_o\ : std_logic;
SIGNAL \second_out[2]~output_o\ : std_logic;
SIGNAL \second_out[1]~output_o\ : std_logic;
SIGNAL \second_out[0]~output_o\ : std_logic;
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
SIGNAL \inst10|Add0~0_combout\ : std_logic;
SIGNAL \inst10|Add0~1\ : std_logic;
SIGNAL \inst10|Add0~2_combout\ : std_logic;
SIGNAL \inst10|i~0_combout\ : std_logic;
SIGNAL \inst10|Add0~3\ : std_logic;
SIGNAL \inst10|Add0~4_combout\ : std_logic;
SIGNAL \inst10|Add0~5\ : std_logic;
SIGNAL \inst10|Add0~6_combout\ : std_logic;
SIGNAL \inst10|Add0~7\ : std_logic;
SIGNAL \inst10|Add0~8_combout\ : std_logic;
SIGNAL \inst10|Add0~9\ : std_logic;
SIGNAL \inst10|Add0~10_combout\ : std_logic;
SIGNAL \inst10|Add0~11\ : std_logic;
SIGNAL \inst10|Add0~12_combout\ : std_logic;
SIGNAL \inst10|Add0~13\ : std_logic;
SIGNAL \inst10|Add0~14_combout\ : std_logic;
SIGNAL \inst10|Add0~15\ : std_logic;
SIGNAL \inst10|Add0~16_combout\ : std_logic;
SIGNAL \inst10|Add0~17\ : std_logic;
SIGNAL \inst10|Add0~18_combout\ : std_logic;
SIGNAL \inst10|Add0~19\ : std_logic;
SIGNAL \inst10|Add0~20_combout\ : std_logic;
SIGNAL \inst10|Add0~21\ : std_logic;
SIGNAL \inst10|Add0~22_combout\ : std_logic;
SIGNAL \inst10|Add0~23\ : std_logic;
SIGNAL \inst10|Add0~24_combout\ : std_logic;
SIGNAL \inst10|Add0~25\ : std_logic;
SIGNAL \inst10|Add0~26_combout\ : std_logic;
SIGNAL \inst10|Add0~27\ : std_logic;
SIGNAL \inst10|Add0~28_combout\ : std_logic;
SIGNAL \inst10|Add0~29\ : std_logic;
SIGNAL \inst10|Add0~30_combout\ : std_logic;
SIGNAL \inst10|Add0~31\ : std_logic;
SIGNAL \inst10|Add0~32_combout\ : std_logic;
SIGNAL \inst10|Add0~33\ : std_logic;
SIGNAL \inst10|Add0~34_combout\ : std_logic;
SIGNAL \inst10|Add0~35\ : std_logic;
SIGNAL \inst10|Add0~36_combout\ : std_logic;
SIGNAL \inst10|Add0~37\ : std_logic;
SIGNAL \inst10|Add0~38_combout\ : std_logic;
SIGNAL \inst10|Add0~39\ : std_logic;
SIGNAL \inst10|Add0~40_combout\ : std_logic;
SIGNAL \inst10|Add0~41\ : std_logic;
SIGNAL \inst10|Add0~42_combout\ : std_logic;
SIGNAL \inst10|Add0~43\ : std_logic;
SIGNAL \inst10|Add0~44_combout\ : std_logic;
SIGNAL \inst10|Add0~45\ : std_logic;
SIGNAL \inst10|Add0~46_combout\ : std_logic;
SIGNAL \inst10|Add0~47\ : std_logic;
SIGNAL \inst10|Add0~48_combout\ : std_logic;
SIGNAL \inst10|Add0~49\ : std_logic;
SIGNAL \inst10|Add0~50_combout\ : std_logic;
SIGNAL \inst10|Add0~51\ : std_logic;
SIGNAL \inst10|Add0~52_combout\ : std_logic;
SIGNAL \inst10|Add0~53\ : std_logic;
SIGNAL \inst10|Add0~54_combout\ : std_logic;
SIGNAL \inst10|Add0~55\ : std_logic;
SIGNAL \inst10|Add0~56_combout\ : std_logic;
SIGNAL \inst10|Add0~57\ : std_logic;
SIGNAL \inst10|Add0~58_combout\ : std_logic;
SIGNAL \inst10|Add0~59\ : std_logic;
SIGNAL \inst10|Add0~60_combout\ : std_logic;
SIGNAL \inst10|Add0~61\ : std_logic;
SIGNAL \inst10|Add0~62_combout\ : std_logic;
SIGNAL \inst10|Equal0~0_combout\ : std_logic;
SIGNAL \inst10|Equal0~6_combout\ : std_logic;
SIGNAL \inst10|Equal0~2_combout\ : std_logic;
SIGNAL \inst10|Equal0~1_combout\ : std_logic;
SIGNAL \inst10|Equal0~3_combout\ : std_logic;
SIGNAL \inst10|Equal0~4_combout\ : std_logic;
SIGNAL \inst10|Equal0~5_combout\ : std_logic;
SIGNAL \inst10|Equal0~7_combout\ : std_logic;
SIGNAL \inst10|Equal0~8_combout\ : std_logic;
SIGNAL \inst10|Equal0~9_combout\ : std_logic;
SIGNAL \inst10|Equal0~10_combout\ : std_logic;
SIGNAL \inst10|CLK~0_combout\ : std_logic;
SIGNAL \inst10|CLK~feeder_combout\ : std_logic;
SIGNAL \inst10|CLK~q\ : std_logic;
SIGNAL \inst10|CLK~clkctrl_outclk\ : std_logic;
SIGNAL \inst|data~8_combout\ : std_logic;
SIGNAL \CR~input_o\ : std_logic;
SIGNAL \LD_minute~input_o\ : std_logic;
SIGNAL \LD_hour~input_o\ : std_logic;
SIGNAL \P~input_o\ : std_logic;
SIGNAL \inst11|i[4]~24_combout\ : std_logic;
SIGNAL \inst11|clean~2_combout\ : std_logic;
SIGNAL \inst11|i[4]~1_combout\ : std_logic;
SIGNAL \inst11|i[3]~25_combout\ : std_logic;
SIGNAL \inst11|i[3]~26_combout\ : std_logic;
SIGNAL \inst11|i[3]~5_combout\ : std_logic;
SIGNAL \inst11|Equal1~11_combout\ : std_logic;
SIGNAL \inst11|i[31]~17_combout\ : std_logic;
SIGNAL \inst11|i[31]~17clkctrl_outclk\ : std_logic;
SIGNAL \inst11|Add0~51\ : std_logic;
SIGNAL \inst11|Add0~52_combout\ : std_logic;
SIGNAL \inst11|Add0~53\ : std_logic;
SIGNAL \inst11|Add0~54_combout\ : std_logic;
SIGNAL \inst11|Add0~55\ : std_logic;
SIGNAL \inst11|Add0~56_combout\ : std_logic;
SIGNAL \inst11|Add0~57\ : std_logic;
SIGNAL \inst11|Add0~58_combout\ : std_logic;
SIGNAL \inst11|Add0~59\ : std_logic;
SIGNAL \inst11|Add0~60_combout\ : std_logic;
SIGNAL \inst11|Add0~61\ : std_logic;
SIGNAL \inst11|Add0~62_combout\ : std_logic;
SIGNAL \inst11|Equal1~2_combout\ : std_logic;
SIGNAL \inst11|Equal1~3_combout\ : std_logic;
SIGNAL \inst11|Equal1~5_combout\ : std_logic;
SIGNAL \inst11|Equal1~4_combout\ : std_logic;
SIGNAL \inst11|Equal1~6_combout\ : std_logic;
SIGNAL \inst11|Equal1~7_combout\ : std_logic;
SIGNAL \inst11|Equal1~8_combout\ : std_logic;
SIGNAL \inst11|Equal1~9_combout\ : std_logic;
SIGNAL \inst11|Equal1~10_combout\ : std_logic;
SIGNAL \inst11|Equal1~13_combout\ : std_logic;
SIGNAL \inst11|Equal2~0_combout\ : std_logic;
SIGNAL \inst11|Equal2~1_combout\ : std_logic;
SIGNAL \inst11|Equal3~0_combout\ : std_logic;
SIGNAL \inst11|minute~1_combout\ : std_logic;
SIGNAL \inst11|i[0]~11_combout\ : std_logic;
SIGNAL \inst11|i[3]~4_combout\ : std_logic;
SIGNAL \inst11|i[3]~4clkctrl_outclk\ : std_logic;
SIGNAL \inst11|i[0]~_emulated_q\ : std_logic;
SIGNAL \inst11|i[0]~10_combout\ : std_logic;
SIGNAL \inst11|Add0~1\ : std_logic;
SIGNAL \inst11|Add0~2_combout\ : std_logic;
SIGNAL \inst11|i[1]~9_combout\ : std_logic;
SIGNAL \inst11|i[4]~0_combout\ : std_logic;
SIGNAL \inst11|i[4]~0clkctrl_outclk\ : std_logic;
SIGNAL \inst11|i[1]~_emulated_q\ : std_logic;
SIGNAL \inst11|i[1]~8_combout\ : std_logic;
SIGNAL \inst11|Add0~3\ : std_logic;
SIGNAL \inst11|Add0~4_combout\ : std_logic;
SIGNAL \inst11|i~23_combout\ : std_logic;
SIGNAL \inst11|Add0~5\ : std_logic;
SIGNAL \inst11|Add0~6_combout\ : std_logic;
SIGNAL \inst11|i[3]~7_combout\ : std_logic;
SIGNAL \inst11|i[3]~_emulated_q\ : std_logic;
SIGNAL \inst11|i[3]~6_combout\ : std_logic;
SIGNAL \inst11|Add0~7\ : std_logic;
SIGNAL \inst11|Add0~8_combout\ : std_logic;
SIGNAL \inst11|i[4]~3_combout\ : std_logic;
SIGNAL \inst11|i[4]~_emulated_q\ : std_logic;
SIGNAL \inst11|i[4]~2_combout\ : std_logic;
SIGNAL \inst11|Add0~9\ : std_logic;
SIGNAL \inst11|Add0~10_combout\ : std_logic;
SIGNAL \inst11|i~18_combout\ : std_logic;
SIGNAL \inst11|Add0~11\ : std_logic;
SIGNAL \inst11|Add0~12_combout\ : std_logic;
SIGNAL \inst11|Add0~13\ : std_logic;
SIGNAL \inst11|Add0~14_combout\ : std_logic;
SIGNAL \inst11|Add0~15\ : std_logic;
SIGNAL \inst11|Add0~16_combout\ : std_logic;
SIGNAL \inst11|Add0~17\ : std_logic;
SIGNAL \inst11|Add0~18_combout\ : std_logic;
SIGNAL \inst11|Add0~19\ : std_logic;
SIGNAL \inst11|Add0~20_combout\ : std_logic;
SIGNAL \inst11|Add0~21\ : std_logic;
SIGNAL \inst11|Add0~22_combout\ : std_logic;
SIGNAL \inst11|Add0~23\ : std_logic;
SIGNAL \inst11|Add0~24_combout\ : std_logic;
SIGNAL \inst11|Add0~25\ : std_logic;
SIGNAL \inst11|Add0~26_combout\ : std_logic;
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
SIGNAL \inst11|Equal0~1_combout\ : std_logic;
SIGNAL \inst11|Equal0~0_combout\ : std_logic;
SIGNAL \inst11|Equal0~2_combout\ : std_logic;
SIGNAL \inst11|Equal0~3_combout\ : std_logic;
SIGNAL \inst11|Equal0~4_combout\ : std_logic;
SIGNAL \inst11|Add0~0_combout\ : std_logic;
SIGNAL \inst11|Equal0~7_combout\ : std_logic;
SIGNAL \inst11|Equal0~6_combout\ : std_logic;
SIGNAL \inst11|Equal0~5_combout\ : std_logic;
SIGNAL \inst11|Equal0~8_combout\ : std_logic;
SIGNAL \inst11|Equal0~9_combout\ : std_logic;
SIGNAL \inst11|i~16_combout\ : std_logic;
SIGNAL \inst11|Equal4~0_combout\ : std_logic;
SIGNAL \inst11|Equal4~1_combout\ : std_logic;
SIGNAL \inst11|Equal1~12_combout\ : std_logic;
SIGNAL \inst11|minute~0_combout\ : std_logic;
SIGNAL \inst11|clean~0_combout\ : std_logic;
SIGNAL \inst11|clean~1_combout\ : std_logic;
SIGNAL \inst11|clean~q\ : std_logic;
SIGNAL \inst11|pause~0_combout\ : std_logic;
SIGNAL \inst11|pause~1_combout\ : std_logic;
SIGNAL \inst11|pause~q\ : std_logic;
SIGNAL \inst2|data[7]~1_combout\ : std_logic;
SIGNAL \inst|data~5_combout\ : std_logic;
SIGNAL \inst|data~7_combout\ : std_logic;
SIGNAL \inst|data~6_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|data~3_combout\ : std_logic;
SIGNAL \inst|data[6]~1_combout\ : std_logic;
SIGNAL \inst|data[6]~2_combout\ : std_logic;
SIGNAL \inst|data~4_combout\ : std_logic;
SIGNAL \inst|data~0_combout\ : std_logic;
SIGNAL \inst7|Equal2~0_combout\ : std_logic;
SIGNAL \inst7|Equal2~1_combout\ : std_logic;
SIGNAL \inst|process_0~0_combout\ : std_logic;
SIGNAL \inst1|C~0_combout\ : std_logic;
SIGNAL \inst|C~q\ : std_logic;
SIGNAL \inst11|minute~2_combout\ : std_logic;
SIGNAL \inst11|minute~q\ : std_logic;
SIGNAL \inst6~combout\ : std_logic;
SIGNAL \inst6~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|data~5_combout\ : std_logic;
SIGNAL \inst1|data~7_combout\ : std_logic;
SIGNAL \inst1|data~4_combout\ : std_logic;
SIGNAL \inst1|data~6_combout\ : std_logic;
SIGNAL \inst1|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|data~0_combout\ : std_logic;
SIGNAL \inst1|data[6]~1_combout\ : std_logic;
SIGNAL \inst1|data~2_combout\ : std_logic;
SIGNAL \inst1|data~3_combout\ : std_logic;
SIGNAL \inst7|comb~0_combout\ : std_logic;
SIGNAL \inst7|comb~1_combout\ : std_logic;
SIGNAL \inst7|comb~2_combout\ : std_logic;
SIGNAL \inst7|comb~3_combout\ : std_logic;
SIGNAL \inst7|alarm~combout\ : std_logic;
SIGNAL \inst8|tx[4]~feeder_combout\ : std_logic;
SIGNAL \inst8|Add0~0_combout\ : std_logic;
SIGNAL \inst8|COUNT~0_combout\ : std_logic;
SIGNAL \inst8|Add0~1\ : std_logic;
SIGNAL \inst8|Add0~2_combout\ : std_logic;
SIGNAL \inst8|Add0~3\ : std_logic;
SIGNAL \inst8|Add0~4_combout\ : std_logic;
SIGNAL \inst8|Add0~5\ : std_logic;
SIGNAL \inst8|Add0~6_combout\ : std_logic;
SIGNAL \inst8|Add0~7\ : std_logic;
SIGNAL \inst8|Add0~8_combout\ : std_logic;
SIGNAL \inst8|COUNT~1_combout\ : std_logic;
SIGNAL \inst8|Add0~9\ : std_logic;
SIGNAL \inst8|Add0~10_combout\ : std_logic;
SIGNAL \inst8|Add0~11\ : std_logic;
SIGNAL \inst8|Add0~12_combout\ : std_logic;
SIGNAL \inst8|Add0~13\ : std_logic;
SIGNAL \inst8|Add0~14_combout\ : std_logic;
SIGNAL \inst8|Add0~15\ : std_logic;
SIGNAL \inst8|Add0~16_combout\ : std_logic;
SIGNAL \inst8|COUNT~2_combout\ : std_logic;
SIGNAL \inst8|Add0~17\ : std_logic;
SIGNAL \inst8|Add0~18_combout\ : std_logic;
SIGNAL \inst8|COUNT~3_combout\ : std_logic;
SIGNAL \inst8|Add0~19\ : std_logic;
SIGNAL \inst8|Add0~20_combout\ : std_logic;
SIGNAL \inst8|COUNT~4_combout\ : std_logic;
SIGNAL \inst8|Add0~21\ : std_logic;
SIGNAL \inst8|Add0~22_combout\ : std_logic;
SIGNAL \inst8|Add0~23\ : std_logic;
SIGNAL \inst8|Add0~24_combout\ : std_logic;
SIGNAL \inst8|Add0~25\ : std_logic;
SIGNAL \inst8|Add0~26_combout\ : std_logic;
SIGNAL \inst8|COUNT~5_combout\ : std_logic;
SIGNAL \inst8|Add0~27\ : std_logic;
SIGNAL \inst8|Add0~28_combout\ : std_logic;
SIGNAL \inst8|Add0~29\ : std_logic;
SIGNAL \inst8|Add0~30_combout\ : std_logic;
SIGNAL \inst8|Add0~31\ : std_logic;
SIGNAL \inst8|Add0~32_combout\ : std_logic;
SIGNAL \inst8|Add0~33\ : std_logic;
SIGNAL \inst8|Add0~34_combout\ : std_logic;
SIGNAL \inst8|Add0~35\ : std_logic;
SIGNAL \inst8|Add0~36_combout\ : std_logic;
SIGNAL \inst8|Add0~37\ : std_logic;
SIGNAL \inst8|Add0~38_combout\ : std_logic;
SIGNAL \inst8|Add0~39\ : std_logic;
SIGNAL \inst8|Add0~40_combout\ : std_logic;
SIGNAL \inst8|Add0~41\ : std_logic;
SIGNAL \inst8|Add0~42_combout\ : std_logic;
SIGNAL \inst8|Add0~43\ : std_logic;
SIGNAL \inst8|Add0~44_combout\ : std_logic;
SIGNAL \inst8|Add0~45\ : std_logic;
SIGNAL \inst8|Add0~46_combout\ : std_logic;
SIGNAL \inst8|Add0~47\ : std_logic;
SIGNAL \inst8|Add0~48_combout\ : std_logic;
SIGNAL \inst8|Add0~49\ : std_logic;
SIGNAL \inst8|Add0~50_combout\ : std_logic;
SIGNAL \inst8|Add0~51\ : std_logic;
SIGNAL \inst8|Add0~52_combout\ : std_logic;
SIGNAL \inst8|Add0~53\ : std_logic;
SIGNAL \inst8|Add0~54_combout\ : std_logic;
SIGNAL \inst8|Add0~55\ : std_logic;
SIGNAL \inst8|Add0~56_combout\ : std_logic;
SIGNAL \inst8|Add0~57\ : std_logic;
SIGNAL \inst8|Add0~58_combout\ : std_logic;
SIGNAL \inst8|Add0~59\ : std_logic;
SIGNAL \inst8|Add0~60_combout\ : std_logic;
SIGNAL \inst8|Add0~61\ : std_logic;
SIGNAL \inst8|Add0~62_combout\ : std_logic;
SIGNAL \inst8|Equal0~9_combout\ : std_logic;
SIGNAL \inst8|Equal0~8_combout\ : std_logic;
SIGNAL \inst8|Equal0~6_combout\ : std_logic;
SIGNAL \inst8|Equal0~5_combout\ : std_logic;
SIGNAL \inst8|Equal0~7_combout\ : std_logic;
SIGNAL \inst8|Equal0~1_combout\ : std_logic;
SIGNAL \inst8|Equal0~2_combout\ : std_logic;
SIGNAL \inst8|Equal0~3_combout\ : std_logic;
SIGNAL \inst8|Equal0~0_combout\ : std_logic;
SIGNAL \inst8|Equal0~4_combout\ : std_logic;
SIGNAL \inst8|Equal0~10_combout\ : std_logic;
SIGNAL \inst8|tx[3]~feeder_combout\ : std_logic;
SIGNAL \inst8|tx[0]~1_combout\ : std_logic;
SIGNAL \inst8|tx[5]~0_combout\ : std_logic;
SIGNAL \inst11|hour~0_combout\ : std_logic;
SIGNAL \inst11|hour~q\ : std_logic;
SIGNAL \inst1|process_0~0_combout\ : std_logic;
SIGNAL \inst1|C~q\ : std_logic;
SIGNAL \inst5~combout\ : std_logic;
SIGNAL \inst5~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|data~6_combout\ : std_logic;
SIGNAL \inst2|data~5_combout\ : std_logic;
SIGNAL \inst2|data~8_combout\ : std_logic;
SIGNAL \inst2|data~7_combout\ : std_logic;
SIGNAL \inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \inst2|data~4_combout\ : std_logic;
SIGNAL \inst2|data[6]~2_combout\ : std_logic;
SIGNAL \inst2|data~3_combout\ : std_logic;
SIGNAL \inst2|data~0_combout\ : std_logic;
SIGNAL \inst8|Mux0~0_combout\ : std_logic;
SIGNAL \inst8|tem[3]~0_combout\ : std_logic;
SIGNAL \inst8|Mux21~0_combout\ : std_logic;
SIGNAL \inst8|tem[3]~1_combout\ : std_logic;
SIGNAL \inst8|Mux7~0_combout\ : std_logic;
SIGNAL \inst8|Mux14~0_combout\ : std_logic;
SIGNAL \inst8|Mux29~0_combout\ : std_logic;
SIGNAL \inst8|Mux29~1_combout\ : std_logic;
SIGNAL \inst8|tem[6]~2_combout\ : std_logic;
SIGNAL \inst8|tem[6]~3_combout\ : std_logic;
SIGNAL \inst8|tem[6]~4_combout\ : std_logic;
SIGNAL \inst8|tem[6]~5_combout\ : std_logic;
SIGNAL \inst8|Mux15~0_combout\ : std_logic;
SIGNAL \inst8|Mux1~0_combout\ : std_logic;
SIGNAL \inst8|Mux8~0_combout\ : std_logic;
SIGNAL \inst8|Mux30~0_combout\ : std_logic;
SIGNAL \inst8|Mux22~0_combout\ : std_logic;
SIGNAL \inst8|Mux30~1_combout\ : std_logic;
SIGNAL \inst8|Mux2~0_combout\ : std_logic;
SIGNAL \inst8|Mux9~0_combout\ : std_logic;
SIGNAL \inst8|Mux16~0_combout\ : std_logic;
SIGNAL \inst8|Mux31~0_combout\ : std_logic;
SIGNAL \inst8|Mux23~0_combout\ : std_logic;
SIGNAL \inst8|Mux31~1_combout\ : std_logic;
SIGNAL \inst8|Mux3~0_combout\ : std_logic;
SIGNAL \inst8|Mux10~0_combout\ : std_logic;
SIGNAL \inst8|Mux32~0_combout\ : std_logic;
SIGNAL \inst8|Mux17~0_combout\ : std_logic;
SIGNAL \inst8|Mux24~0_combout\ : std_logic;
SIGNAL \inst8|Mux32~1_combout\ : std_logic;
SIGNAL \inst8|Mux4~0_combout\ : std_logic;
SIGNAL \inst8|Mux11~0_combout\ : std_logic;
SIGNAL \inst8|Mux18~0_combout\ : std_logic;
SIGNAL \inst8|Mux33~0_combout\ : std_logic;
SIGNAL \inst8|Mux25~0_combout\ : std_logic;
SIGNAL \inst8|Mux33~1_combout\ : std_logic;
SIGNAL \inst8|Mux19~0_combout\ : std_logic;
SIGNAL \inst8|Mux26~0_combout\ : std_logic;
SIGNAL \inst8|Mux5~0_combout\ : std_logic;
SIGNAL \inst8|Mux12~0_combout\ : std_logic;
SIGNAL \inst8|Mux34~0_combout\ : std_logic;
SIGNAL \inst8|Mux34~1_combout\ : std_logic;
SIGNAL \inst8|Mux6~0_combout\ : std_logic;
SIGNAL \inst8|Mux13~0_combout\ : std_logic;
SIGNAL \inst8|Mux20~0_combout\ : std_logic;
SIGNAL \inst8|Mux35~0_combout\ : std_logic;
SIGNAL \inst8|Mux27~0_combout\ : std_logic;
SIGNAL \inst8|Mux35~1_combout\ : std_logic;
SIGNAL \inst8|tx\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst11|i\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst2|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst10|i\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst8|COUNT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|tem\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|ALT_INV_tx\ : std_logic_vector(5 DOWNTO 1);
SIGNAL \inst2|ALT_INV_data[7]~1_combout\ : std_logic;
SIGNAL \inst11|ALT_INV_i[3]~4clkctrl_outclk\ : std_logic;
SIGNAL \inst11|ALT_INV_i[4]~0clkctrl_outclk\ : std_logic;
SIGNAL \inst11|ALT_INV_i[31]~17clkctrl_outclk\ : std_logic;

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
hour_out <= ww_hour_out;
minute_out <= ww_minute_out;
second_out <= ww_second_out;
SEG <= ww_SEG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst11|i[31]~17clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst11|i[31]~17_combout\);

\inst10|CLK~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst10|CLK~q\);

\inst5~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst5~combout\);

\inst6~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst6~combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\inst11|i[4]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst11|i[4]~0_combout\);

\inst11|i[3]~4clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst11|i[3]~4_combout\);
\inst8|ALT_INV_tx\(1) <= NOT \inst8|tx\(1);
\inst8|ALT_INV_tx\(2) <= NOT \inst8|tx\(2);
\inst8|ALT_INV_tx\(3) <= NOT \inst8|tx\(3);
\inst8|ALT_INV_tx\(4) <= NOT \inst8|tx\(4);
\inst8|ALT_INV_tx\(5) <= NOT \inst8|tx\(5);
\inst2|ALT_INV_data[7]~1_combout\ <= NOT \inst2|data[7]~1_combout\;
\inst11|ALT_INV_i[3]~4clkctrl_outclk\ <= NOT \inst11|i[3]~4clkctrl_outclk\;
\inst11|ALT_INV_i[4]~0clkctrl_outclk\ <= NOT \inst11|i[4]~0clkctrl_outclk\;
\inst11|ALT_INV_i[31]~17clkctrl_outclk\ <= NOT \inst11|i[31]~17clkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y21_N9
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

-- Location: IOOBUF_X0_Y6_N23
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

-- Location: IOOBUF_X16_Y24_N23
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

-- Location: IOOBUF_X23_Y24_N2
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

-- Location: IOOBUF_X16_Y24_N2
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

-- Location: IOOBUF_X16_Y24_N16
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

-- Location: IOOBUF_X16_Y24_N9
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

-- Location: IOOBUF_X1_Y0_N16
\hour_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \hour_out[7]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\hour_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|data\(6),
	devoe => ww_devoe,
	o => \hour_out[6]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\hour_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|data\(5),
	devoe => ww_devoe,
	o => \hour_out[5]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\hour_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|data\(4),
	devoe => ww_devoe,
	o => \hour_out[4]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\hour_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|data\(3),
	devoe => ww_devoe,
	o => \hour_out[3]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\hour_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|data\(2),
	devoe => ww_devoe,
	o => \hour_out[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\hour_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|data\(1),
	devoe => ww_devoe,
	o => \hour_out[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\hour_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|data\(0),
	devoe => ww_devoe,
	o => \hour_out[0]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\minute_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \minute_out[7]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\minute_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|data\(6),
	devoe => ww_devoe,
	o => \minute_out[6]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\minute_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|data\(5),
	devoe => ww_devoe,
	o => \minute_out[5]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\minute_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|data\(4),
	devoe => ww_devoe,
	o => \minute_out[4]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\minute_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|data\(3),
	devoe => ww_devoe,
	o => \minute_out[3]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\minute_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|data\(2),
	devoe => ww_devoe,
	o => \minute_out[2]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\minute_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|data\(1),
	devoe => ww_devoe,
	o => \minute_out[1]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\minute_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|data\(0),
	devoe => ww_devoe,
	o => \minute_out[0]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\second_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \second_out[7]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\second_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|data\(6),
	devoe => ww_devoe,
	o => \second_out[6]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\second_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|data\(5),
	devoe => ww_devoe,
	o => \second_out[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\second_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|data\(4),
	devoe => ww_devoe,
	o => \second_out[4]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\second_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|data\(3),
	devoe => ww_devoe,
	o => \second_out[3]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\second_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|data\(2),
	devoe => ww_devoe,
	o => \second_out[2]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\second_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|data\(1),
	devoe => ww_devoe,
	o => \second_out[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\second_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|data\(0),
	devoe => ww_devoe,
	o => \second_out[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
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

-- Location: IOOBUF_X11_Y24_N16
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

-- Location: IOOBUF_X13_Y24_N23
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

-- Location: IOOBUF_X13_Y24_N16
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

-- Location: IOOBUF_X16_Y0_N23
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

-- Location: IOOBUF_X0_Y18_N16
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

-- Location: IOOBUF_X18_Y24_N23
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

-- Location: IOOBUF_X7_Y24_N2
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

-- Location: FF_X32_Y17_N27
\inst10|i[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|i\(29));

-- Location: LCCOMB_X32_Y18_N0
\inst10|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~0_combout\ = \inst10|i\(0) $ (VCC)
-- \inst10|Add0~1\ = CARRY(\inst10|i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|i\(0),
	datad => VCC,
	combout => \inst10|Add0~0_combout\,
	cout => \inst10|Add0~1\);

-- Location: FF_X32_Y18_N1
\inst10|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|i\(0));

-- Location: LCCOMB_X32_Y18_N2
\inst10|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~2_combout\ = (\inst10|i\(1) & (!\inst10|Add0~1\)) # (!\inst10|i\(1) & ((\inst10|Add0~1\) # (GND)))
-- \inst10|Add0~3\ = CARRY((!\inst10|Add0~1\) # (!\inst10|i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|i\(1),
	datad => VCC,
	cin => \inst10|Add0~1\,
	combout => \inst10|Add0~2_combout\,
	cout => \inst10|Add0~3\);

-- Location: LCCOMB_X33_Y17_N0
\inst10|i~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|i~0_combout\ = (\inst10|Add0~2_combout\ & !\inst10|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Add0~2_combout\,
	datad => \inst10|Equal0~10_combout\,
	combout => \inst10|i~0_combout\);

-- Location: FF_X33_Y17_N1
\inst10|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|i~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|i\(1));

-- Location: LCCOMB_X32_Y18_N4
\inst10|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~4_combout\ = (\inst10|i\(2) & (\inst10|Add0~3\ $ (GND))) # (!\inst10|i\(2) & (!\inst10|Add0~3\ & VCC))
-- \inst10|Add0~5\ = CARRY((\inst10|i\(2) & !\inst10|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|i\(2),
	datad => VCC,
	cin => \inst10|Add0~3\,
	combout => \inst10|Add0~4_combout\,
	cout => \inst10|Add0~5\);

-- Location: FF_X32_Y18_N5
\inst10|i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|i\(2));

-- Location: LCCOMB_X32_Y18_N6
\inst10|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~6_combout\ = (\inst10|i\(3) & (!\inst10|Add0~5\)) # (!\inst10|i\(3) & ((\inst10|Add0~5\) # (GND)))
-- \inst10|Add0~7\ = CARRY((!\inst10|Add0~5\) # (!\inst10|i\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|i\(3),
	datad => VCC,
	cin => \inst10|Add0~5\,
	combout => \inst10|Add0~6_combout\,
	cout => \inst10|Add0~7\);

-- Location: FF_X32_Y18_N7
\inst10|i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|i\(3));

-- Location: LCCOMB_X32_Y18_N8
\inst10|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~8_combout\ = (\inst10|i\(4) & (\inst10|Add0~7\ $ (GND))) # (!\inst10|i\(4) & (!\inst10|Add0~7\ & VCC))
-- \inst10|Add0~9\ = CARRY((\inst10|i\(4) & !\inst10|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|i\(4),
	datad => VCC,
	cin => \inst10|Add0~7\,
	combout => \inst10|Add0~8_combout\,
	cout => \inst10|Add0~9\);

-- Location: FF_X32_Y18_N9
\inst10|i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|i\(4));

-- Location: LCCOMB_X32_Y18_N10
\inst10|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~10_combout\ = (\inst10|i\(5) & (!\inst10|Add0~9\)) # (!\inst10|i\(5) & ((\inst10|Add0~9\) # (GND)))
-- \inst10|Add0~11\ = CARRY((!\inst10|Add0~9\) # (!\inst10|i\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|i\(5),
	datad => VCC,
	cin => \inst10|Add0~9\,
	combout => \inst10|Add0~10_combout\,
	cout => \inst10|Add0~11\);

-- Location: FF_X32_Y18_N11
\inst10|i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|i\(5));

-- Location: LCCOMB_X32_Y18_N12
\inst10|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~12_combout\ = (\inst10|i\(6) & (\inst10|Add0~11\ $ (GND))) # (!\inst10|i\(6) & (!\inst10|Add0~11\ & VCC))
-- \inst10|Add0~13\ = CARRY((\inst10|i\(6) & !\inst10|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|i\(6),
	datad => VCC,
	cin => \inst10|Add0~11\,
	combout => \inst10|Add0~12_combout\,
	cout => \inst10|Add0~13\);

-- Location: FF_X32_Y18_N13
\inst10|i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|i\(6));

-- Location: LCCOMB_X32_Y18_N14
\inst10|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~14_combout\ = (\inst10|i\(7) & (!\inst10|Add0~13\)) # (!\inst10|i\(7) & ((\inst10|Add0~13\) # (GND)))
-- \inst10|Add0~15\ = CARRY((!\inst10|Add0~13\) # (!\inst10|i\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|i\(7),
	datad => VCC,
	cin => \inst10|Add0~13\,
	combout => \inst10|Add0~14_combout\,
	cout => \inst10|Add0~15\);

-- Location: FF_X32_Y18_N15
\inst10|i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|i\(7));

-- Location: LCCOMB_X32_Y18_N16
\inst10|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~16_combout\ = (\inst10|i\(8) & (\inst10|Add0~15\ $ (GND))) # (!\inst10|i\(8) & (!\inst10|Add0~15\ & VCC))
-- \inst10|Add0~17\ = CARRY((\inst10|i\(8) & !\inst10|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|i\(8),
	datad => VCC,
	cin => \inst10|Add0~15\,
	combout => \inst10|Add0~16_combout\,
	cout => \inst10|Add0~17\);

-- Location: FF_X32_Y18_N17
\inst10|i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|i\(8));

-- Location: LCCOMB_X32_Y18_N18
\inst10|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~18_combout\ = (\inst10|i\(9) & (!\inst10|Add0~17\)) # (!\inst10|i\(9) & ((\inst10|Add0~17\) # (GND)))
-- \inst10|Add0~19\ = CARRY((!\inst10|Add0~17\) # (!\inst10|i\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|i\(9),
	datad => VCC,
	cin => \inst10|Add0~17\,
	combout => \inst10|Add0~18_combout\,
	cout => \inst10|Add0~19\);

-- Location: FF_X32_Y18_N19
\inst10|i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|i\(9));

-- Location: LCCOMB_X32_Y18_N20
\inst10|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~20_combout\ = (\inst10|i\(10) & (\inst10|Add0~19\ $ (GND))) # (!\inst10|i\(10) & (!\inst10|Add0~19\ & VCC))
-- \inst10|Add0~21\ = CARRY((\inst10|i\(10) & !\inst10|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|i\(10),
	datad => VCC,
	cin => \inst10|Add0~19\,
	combout => \inst10|Add0~20_combout\,
	cout => \inst10|Add0~21\);

-- Location: FF_X32_Y18_N21
\inst10|i[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|i\(10));

-- Location: LCCOMB_X32_Y18_N22
\inst10|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~22_combout\ = (\inst10|i\(11) & (!\inst10|Add0~21\)) # (!\inst10|i\(11) & ((\inst10|Add0~21\) # (GND)))
-- \inst10|Add0~23\ = CARRY((!\inst10|Add0~21\) # (!\inst10|i\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|i\(11),
	datad => VCC,
	cin => \inst10|Add0~21\,
	combout => \inst10|Add0~22_combout\,
	cout => \inst10|Add0~23\);

-- Location: FF_X32_Y18_N23
\inst10|i[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|i\(11));

-- Location: LCCOMB_X32_Y18_N24
\inst10|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~24_combout\ = (\inst10|i\(12) & (\inst10|Add0~23\ $ (GND))) # (!\inst10|i\(12) & (!\inst10|Add0~23\ & VCC))
-- \inst10|Add0~25\ = CARRY((\inst10|i\(12) & !\inst10|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|i\(12),
	datad => VCC,
	cin => \inst10|Add0~23\,
	combout => \inst10|Add0~24_combout\,
	cout => \inst10|Add0~25\);

-- Location: FF_X32_Y18_N25
\inst10|i[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|i\(12));

-- Location: LCCOMB_X32_Y18_N26
\inst10|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~26_combout\ = (\inst10|i\(13) & (!\inst10|Add0~25\)) # (!\inst10|i\(13) & ((\inst10|Add0~25\) # (GND)))
-- \inst10|Add0~27\ = CARRY((!\inst10|Add0~25\) # (!\inst10|i\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|i\(13),
	datad => VCC,
	cin => \inst10|Add0~25\,
	combout => \inst10|Add0~26_combout\,
	cout => \inst10|Add0~27\);

-- Location: FF_X32_Y18_N27
\inst10|i[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|i\(13));

-- Location: LCCOMB_X32_Y18_N28
\inst10|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~28_combout\ = (\inst10|i\(14) & (\inst10|Add0~27\ $ (GND))) # (!\inst10|i\(14) & (!\inst10|Add0~27\ & VCC))
-- \inst10|Add0~29\ = CARRY((\inst10|i\(14) & !\inst10|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|i\(14),
	datad => VCC,
	cin => \inst10|Add0~27\,
	combout => \inst10|Add0~28_combout\,
	cout => \inst10|Add0~29\);

-- Location: FF_X32_Y18_N29
\inst10|i[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|i\(14));

-- Location: LCCOMB_X32_Y18_N30
\inst10|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~30_combout\ = (\inst10|i\(15) & (!\inst10|Add0~29\)) # (!\inst10|i\(15) & ((\inst10|Add0~29\) # (GND)))
-- \inst10|Add0~31\ = CARRY((!\inst10|Add0~29\) # (!\inst10|i\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|i\(15),
	datad => VCC,
	cin => \inst10|Add0~29\,
	combout => \inst10|Add0~30_combout\,
	cout => \inst10|Add0~31\);

-- Location: FF_X32_Y18_N31
\inst10|i[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|i\(15));

-- Location: LCCOMB_X32_Y17_N0
\inst10|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~32_combout\ = (\inst10|i\(16) & (\inst10|Add0~31\ $ (GND))) # (!\inst10|i\(16) & (!\inst10|Add0~31\ & VCC))
-- \inst10|Add0~33\ = CARRY((\inst10|i\(16) & !\inst10|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|i\(16),
	datad => VCC,
	cin => \inst10|Add0~31\,
	combout => \inst10|Add0~32_combout\,
	cout => \inst10|Add0~33\);

-- Location: FF_X32_Y17_N1
\inst10|i[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|i\(16));

-- Location: LCCOMB_X32_Y17_N2
\inst10|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~34_combout\ = (\inst10|i\(17) & (!\inst10|Add0~33\)) # (!\inst10|i\(17) & ((\inst10|Add0~33\) # (GND)))
-- \inst10|Add0~35\ = CARRY((!\inst10|Add0~33\) # (!\inst10|i\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|i\(17),
	datad => VCC,
	cin => \inst10|Add0~33\,
	combout => \inst10|Add0~34_combout\,
	cout => \inst10|Add0~35\);

-- Location: FF_X32_Y17_N3
\inst10|i[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|i\(17));

-- Location: LCCOMB_X32_Y17_N4
\inst10|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~36_combout\ = (\inst10|i\(18) & (\inst10|Add0~35\ $ (GND))) # (!\inst10|i\(18) & (!\inst10|Add0~35\ & VCC))
-- \inst10|Add0~37\ = CARRY((\inst10|i\(18) & !\inst10|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|i\(18),
	datad => VCC,
	cin => \inst10|Add0~35\,
	combout => \inst10|Add0~36_combout\,
	cout => \inst10|Add0~37\);

-- Location: FF_X32_Y17_N5
\inst10|i[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|i\(18));

-- Location: LCCOMB_X32_Y17_N6
\inst10|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~38_combout\ = (\inst10|i\(19) & (!\inst10|Add0~37\)) # (!\inst10|i\(19) & ((\inst10|Add0~37\) # (GND)))
-- \inst10|Add0~39\ = CARRY((!\inst10|Add0~37\) # (!\inst10|i\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|i\(19),
	datad => VCC,
	cin => \inst10|Add0~37\,
	combout => \inst10|Add0~38_combout\,
	cout => \inst10|Add0~39\);

-- Location: FF_X32_Y17_N7
\inst10|i[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|i\(19));

-- Location: LCCOMB_X32_Y17_N8
\inst10|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~40_combout\ = (\inst10|i\(20) & (\inst10|Add0~39\ $ (GND))) # (!\inst10|i\(20) & (!\inst10|Add0~39\ & VCC))
-- \inst10|Add0~41\ = CARRY((\inst10|i\(20) & !\inst10|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|i\(20),
	datad => VCC,
	cin => \inst10|Add0~39\,
	combout => \inst10|Add0~40_combout\,
	cout => \inst10|Add0~41\);

-- Location: FF_X32_Y17_N9
\inst10|i[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|i\(20));

-- Location: LCCOMB_X32_Y17_N10
\inst10|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~42_combout\ = (\inst10|i\(21) & (!\inst10|Add0~41\)) # (!\inst10|i\(21) & ((\inst10|Add0~41\) # (GND)))
-- \inst10|Add0~43\ = CARRY((!\inst10|Add0~41\) # (!\inst10|i\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|i\(21),
	datad => VCC,
	cin => \inst10|Add0~41\,
	combout => \inst10|Add0~42_combout\,
	cout => \inst10|Add0~43\);

-- Location: FF_X32_Y17_N11
\inst10|i[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|i\(21));

-- Location: LCCOMB_X32_Y17_N12
\inst10|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~44_combout\ = (\inst10|i\(22) & (\inst10|Add0~43\ $ (GND))) # (!\inst10|i\(22) & (!\inst10|Add0~43\ & VCC))
-- \inst10|Add0~45\ = CARRY((\inst10|i\(22) & !\inst10|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|i\(22),
	datad => VCC,
	cin => \inst10|Add0~43\,
	combout => \inst10|Add0~44_combout\,
	cout => \inst10|Add0~45\);

-- Location: FF_X32_Y17_N13
\inst10|i[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|i\(22));

-- Location: LCCOMB_X32_Y17_N14
\inst10|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~46_combout\ = (\inst10|i\(23) & (!\inst10|Add0~45\)) # (!\inst10|i\(23) & ((\inst10|Add0~45\) # (GND)))
-- \inst10|Add0~47\ = CARRY((!\inst10|Add0~45\) # (!\inst10|i\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|i\(23),
	datad => VCC,
	cin => \inst10|Add0~45\,
	combout => \inst10|Add0~46_combout\,
	cout => \inst10|Add0~47\);

-- Location: FF_X32_Y17_N15
\inst10|i[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|i\(23));

-- Location: LCCOMB_X32_Y17_N16
\inst10|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~48_combout\ = (\inst10|i\(24) & (\inst10|Add0~47\ $ (GND))) # (!\inst10|i\(24) & (!\inst10|Add0~47\ & VCC))
-- \inst10|Add0~49\ = CARRY((\inst10|i\(24) & !\inst10|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|i\(24),
	datad => VCC,
	cin => \inst10|Add0~47\,
	combout => \inst10|Add0~48_combout\,
	cout => \inst10|Add0~49\);

-- Location: FF_X32_Y17_N17
\inst10|i[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|i\(24));

-- Location: LCCOMB_X32_Y17_N18
\inst10|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~50_combout\ = (\inst10|i\(25) & (!\inst10|Add0~49\)) # (!\inst10|i\(25) & ((\inst10|Add0~49\) # (GND)))
-- \inst10|Add0~51\ = CARRY((!\inst10|Add0~49\) # (!\inst10|i\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|i\(25),
	datad => VCC,
	cin => \inst10|Add0~49\,
	combout => \inst10|Add0~50_combout\,
	cout => \inst10|Add0~51\);

-- Location: FF_X32_Y17_N19
\inst10|i[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|i\(25));

-- Location: LCCOMB_X32_Y17_N20
\inst10|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~52_combout\ = (\inst10|i\(26) & (\inst10|Add0~51\ $ (GND))) # (!\inst10|i\(26) & (!\inst10|Add0~51\ & VCC))
-- \inst10|Add0~53\ = CARRY((\inst10|i\(26) & !\inst10|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|i\(26),
	datad => VCC,
	cin => \inst10|Add0~51\,
	combout => \inst10|Add0~52_combout\,
	cout => \inst10|Add0~53\);

-- Location: FF_X32_Y17_N21
\inst10|i[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|i\(26));

-- Location: LCCOMB_X32_Y17_N22
\inst10|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~54_combout\ = (\inst10|i\(27) & (!\inst10|Add0~53\)) # (!\inst10|i\(27) & ((\inst10|Add0~53\) # (GND)))
-- \inst10|Add0~55\ = CARRY((!\inst10|Add0~53\) # (!\inst10|i\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|i\(27),
	datad => VCC,
	cin => \inst10|Add0~53\,
	combout => \inst10|Add0~54_combout\,
	cout => \inst10|Add0~55\);

-- Location: FF_X32_Y17_N23
\inst10|i[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|i\(27));

-- Location: LCCOMB_X32_Y17_N24
\inst10|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~56_combout\ = (\inst10|i\(28) & (\inst10|Add0~55\ $ (GND))) # (!\inst10|i\(28) & (!\inst10|Add0~55\ & VCC))
-- \inst10|Add0~57\ = CARRY((\inst10|i\(28) & !\inst10|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|i\(28),
	datad => VCC,
	cin => \inst10|Add0~55\,
	combout => \inst10|Add0~56_combout\,
	cout => \inst10|Add0~57\);

-- Location: FF_X32_Y17_N25
\inst10|i[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|i\(28));

-- Location: LCCOMB_X32_Y17_N26
\inst10|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~58_combout\ = (\inst10|i\(29) & (!\inst10|Add0~57\)) # (!\inst10|i\(29) & ((\inst10|Add0~57\) # (GND)))
-- \inst10|Add0~59\ = CARRY((!\inst10|Add0~57\) # (!\inst10|i\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|i\(29),
	datad => VCC,
	cin => \inst10|Add0~57\,
	combout => \inst10|Add0~58_combout\,
	cout => \inst10|Add0~59\);

-- Location: FF_X32_Y17_N31
\inst10|i[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|i\(31));

-- Location: LCCOMB_X32_Y17_N28
\inst10|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~60_combout\ = (\inst10|i\(30) & (\inst10|Add0~59\ $ (GND))) # (!\inst10|i\(30) & (!\inst10|Add0~59\ & VCC))
-- \inst10|Add0~61\ = CARRY((\inst10|i\(30) & !\inst10|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|i\(30),
	datad => VCC,
	cin => \inst10|Add0~59\,
	combout => \inst10|Add0~60_combout\,
	cout => \inst10|Add0~61\);

-- Location: FF_X32_Y17_N29
\inst10|i[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|i\(30));

-- Location: LCCOMB_X32_Y17_N30
\inst10|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Add0~62_combout\ = \inst10|i\(31) $ (\inst10|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|i\(31),
	cin => \inst10|Add0~61\,
	combout => \inst10|Add0~62_combout\);

-- Location: LCCOMB_X33_Y17_N22
\inst10|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Equal0~0_combout\ = (!\inst10|Add0~42_combout\ & (!\inst10|Add0~40_combout\ & (!\inst10|Add0~44_combout\ & !\inst10|Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add0~42_combout\,
	datab => \inst10|Add0~40_combout\,
	datac => \inst10|Add0~44_combout\,
	datad => \inst10|Add0~46_combout\,
	combout => \inst10|Equal0~0_combout\);

-- Location: LCCOMB_X33_Y17_N14
\inst10|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Equal0~6_combout\ = (!\inst10|Add0~32_combout\ & (!\inst10|Add0~34_combout\ & (!\inst10|Add0~36_combout\ & !\inst10|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add0~32_combout\,
	datab => \inst10|Add0~34_combout\,
	datac => \inst10|Add0~36_combout\,
	datad => \inst10|Add0~38_combout\,
	combout => \inst10|Equal0~6_combout\);

-- Location: LCCOMB_X33_Y17_N26
\inst10|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Equal0~2_combout\ = (!\inst10|Add0~14_combout\ & (!\inst10|Add0~10_combout\ & (!\inst10|Add0~12_combout\ & !\inst10|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add0~14_combout\,
	datab => \inst10|Add0~10_combout\,
	datac => \inst10|Add0~12_combout\,
	datad => \inst10|Add0~8_combout\,
	combout => \inst10|Equal0~2_combout\);

-- Location: LCCOMB_X33_Y17_N28
\inst10|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Equal0~1_combout\ = (!\inst10|Add0~6_combout\ & (\inst10|Add0~2_combout\ & (!\inst10|Add0~0_combout\ & !\inst10|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add0~6_combout\,
	datab => \inst10|Add0~2_combout\,
	datac => \inst10|Add0~0_combout\,
	datad => \inst10|Add0~4_combout\,
	combout => \inst10|Equal0~1_combout\);

-- Location: LCCOMB_X33_Y17_N8
\inst10|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Equal0~3_combout\ = (!\inst10|Add0~18_combout\ & (!\inst10|Add0~20_combout\ & (!\inst10|Add0~22_combout\ & !\inst10|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add0~18_combout\,
	datab => \inst10|Add0~20_combout\,
	datac => \inst10|Add0~22_combout\,
	datad => \inst10|Add0~16_combout\,
	combout => \inst10|Equal0~3_combout\);

-- Location: LCCOMB_X33_Y17_N18
\inst10|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Equal0~4_combout\ = (!\inst10|Add0~26_combout\ & (!\inst10|Add0~24_combout\ & (!\inst10|Add0~30_combout\ & !\inst10|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add0~26_combout\,
	datab => \inst10|Add0~24_combout\,
	datac => \inst10|Add0~30_combout\,
	datad => \inst10|Add0~28_combout\,
	combout => \inst10|Equal0~4_combout\);

-- Location: LCCOMB_X33_Y17_N10
\inst10|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Equal0~5_combout\ = (\inst10|Equal0~2_combout\ & (\inst10|Equal0~1_combout\ & (\inst10|Equal0~3_combout\ & \inst10|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Equal0~2_combout\,
	datab => \inst10|Equal0~1_combout\,
	datac => \inst10|Equal0~3_combout\,
	datad => \inst10|Equal0~4_combout\,
	combout => \inst10|Equal0~5_combout\);

-- Location: LCCOMB_X33_Y17_N16
\inst10|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Equal0~7_combout\ = (!\inst10|Add0~48_combout\ & (!\inst10|Add0~50_combout\ & (\inst10|Equal0~6_combout\ & \inst10|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add0~48_combout\,
	datab => \inst10|Add0~50_combout\,
	datac => \inst10|Equal0~6_combout\,
	datad => \inst10|Equal0~5_combout\,
	combout => \inst10|Equal0~7_combout\);

-- Location: LCCOMB_X33_Y17_N6
\inst10|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Equal0~8_combout\ = (\inst10|Equal0~0_combout\ & (!\inst10|Add0~54_combout\ & (!\inst10|Add0~52_combout\ & \inst10|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Equal0~0_combout\,
	datab => \inst10|Add0~54_combout\,
	datac => \inst10|Add0~52_combout\,
	datad => \inst10|Equal0~7_combout\,
	combout => \inst10|Equal0~8_combout\);

-- Location: LCCOMB_X33_Y17_N12
\inst10|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Equal0~9_combout\ = (!\inst10|Add0~56_combout\ & \inst10|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Add0~56_combout\,
	datad => \inst10|Equal0~8_combout\,
	combout => \inst10|Equal0~9_combout\);

-- Location: LCCOMB_X33_Y17_N24
\inst10|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Equal0~10_combout\ = (!\inst10|Add0~58_combout\ & (!\inst10|Add0~62_combout\ & (!\inst10|Add0~60_combout\ & \inst10|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add0~58_combout\,
	datab => \inst10|Add0~62_combout\,
	datac => \inst10|Add0~60_combout\,
	datad => \inst10|Equal0~9_combout\,
	combout => \inst10|Equal0~10_combout\);

-- Location: LCCOMB_X33_Y17_N20
\inst10|CLK~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|CLK~0_combout\ = \inst10|CLK~q\ $ (\inst10|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|CLK~q\,
	datad => \inst10|Equal0~10_combout\,
	combout => \inst10|CLK~0_combout\);

-- Location: LCCOMB_X33_Y17_N30
\inst10|CLK~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|CLK~feeder_combout\ = \inst10|CLK~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|CLK~0_combout\,
	combout => \inst10|CLK~feeder_combout\);

-- Location: FF_X33_Y17_N31
\inst10|CLK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|CLK~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|CLK~q\);

-- Location: CLKCTRL_G6
\inst10|CLK~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst10|CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst10|CLK~clkctrl_outclk\);

-- Location: LCCOMB_X13_Y13_N2
\inst|data~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data~8_combout\ = (!\inst|data\(0) & (((!\inst|data\(1) & !\inst|data\(2))) # (!\inst|data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(1),
	datab => \inst|data\(2),
	datac => \inst|data\(0),
	datad => \inst|data\(3),
	combout => \inst|data~8_combout\);

-- Location: IOIBUF_X21_Y0_N8
\CR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CR,
	o => \CR~input_o\);

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

-- Location: IOIBUF_X23_Y0_N8
\P~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P,
	o => \P~input_o\);

-- Location: LCCOMB_X16_Y11_N8
\inst11|i[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|i[4]~24_combout\ = (\LD_minute~input_o\ & (\LD_hour~input_o\ & ((!\P~input_o\) # (!\CR~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CR~input_o\,
	datab => \LD_minute~input_o\,
	datac => \LD_hour~input_o\,
	datad => \P~input_o\,
	combout => \inst11|i[4]~24_combout\);

-- Location: LCCOMB_X14_Y11_N16
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

-- Location: LCCOMB_X12_Y11_N6
\inst11|i[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|i[4]~1_combout\ = (!\inst11|clean~2_combout\ & ((\inst11|i[4]~24_combout\) # (\inst11|i[4]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i[4]~24_combout\,
	datac => \inst11|clean~2_combout\,
	datad => \inst11|i[4]~1_combout\,
	combout => \inst11|i[4]~1_combout\);

-- Location: LCCOMB_X14_Y11_N14
\inst11|i[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|i[3]~25_combout\ = (\LD_hour~input_o\ & (((\P~input_o\ & !\CR~input_o\)) # (!\LD_minute~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P~input_o\,
	datab => \CR~input_o\,
	datac => \LD_hour~input_o\,
	datad => \LD_minute~input_o\,
	combout => \inst11|i[3]~25_combout\);

-- Location: LCCOMB_X14_Y11_N8
\inst11|i[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|i[3]~26_combout\ = ((\LD_minute~input_o\ & !\P~input_o\)) # (!\LD_hour~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LD_minute~input_o\,
	datac => \LD_hour~input_o\,
	datad => \P~input_o\,
	combout => \inst11|i[3]~26_combout\);

-- Location: LCCOMB_X14_Y11_N10
\inst11|i[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|i[3]~5_combout\ = (!\inst11|i[3]~26_combout\ & ((\inst11|i[3]~25_combout\) # (\inst11|i[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i[3]~25_combout\,
	datac => \inst11|i[3]~26_combout\,
	datad => \inst11|i[3]~5_combout\,
	combout => \inst11|i[3]~5_combout\);

-- Location: LCCOMB_X13_Y12_N18
\inst11|Equal1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal1~11_combout\ = (\inst11|Add0~6_combout\ & (!\inst11|Add0~10_combout\ & !\inst11|i~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~6_combout\,
	datac => \inst11|Add0~10_combout\,
	datad => \inst11|i~16_combout\,
	combout => \inst11|Equal1~11_combout\);

-- Location: LCCOMB_X14_Y11_N24
\inst11|i[31]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|i[31]~17_combout\ = (((!\LD_minute~input_o\) # (!\LD_hour~input_o\)) # (!\CR~input_o\)) # (!\P~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P~input_o\,
	datab => \CR~input_o\,
	datac => \LD_hour~input_o\,
	datad => \LD_minute~input_o\,
	combout => \inst11|i[31]~17_combout\);

-- Location: CLKCTRL_G4
\inst11|i[31]~17clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst11|i[31]~17clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst11|i[31]~17clkctrl_outclk\);

-- Location: FF_X13_Y10_N27
\inst11|i[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~58_combout\,
	clrn => \inst11|ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(29));

-- Location: LCCOMB_X13_Y10_N18
\inst11|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~50_combout\ = (\inst11|i\(25) & (!\inst11|Add0~49\)) # (!\inst11|i\(25) & ((\inst11|Add0~49\) # (GND)))
-- \inst11|Add0~51\ = CARRY((!\inst11|Add0~49\) # (!\inst11|i\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i\(25),
	datad => VCC,
	cin => \inst11|Add0~49\,
	combout => \inst11|Add0~50_combout\,
	cout => \inst11|Add0~51\);

-- Location: LCCOMB_X13_Y10_N20
\inst11|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~52_combout\ = (\inst11|i\(26) & (\inst11|Add0~51\ $ (GND))) # (!\inst11|i\(26) & (!\inst11|Add0~51\ & VCC))
-- \inst11|Add0~53\ = CARRY((\inst11|i\(26) & !\inst11|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i\(26),
	datad => VCC,
	cin => \inst11|Add0~51\,
	combout => \inst11|Add0~52_combout\,
	cout => \inst11|Add0~53\);

-- Location: FF_X13_Y10_N21
\inst11|i[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~52_combout\,
	clrn => \inst11|ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(26));

-- Location: LCCOMB_X13_Y10_N22
\inst11|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~54_combout\ = (\inst11|i\(27) & (!\inst11|Add0~53\)) # (!\inst11|i\(27) & ((\inst11|Add0~53\) # (GND)))
-- \inst11|Add0~55\ = CARRY((!\inst11|Add0~53\) # (!\inst11|i\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i\(27),
	datad => VCC,
	cin => \inst11|Add0~53\,
	combout => \inst11|Add0~54_combout\,
	cout => \inst11|Add0~55\);

-- Location: FF_X13_Y10_N23
\inst11|i[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~54_combout\,
	clrn => \inst11|ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(27));

-- Location: LCCOMB_X13_Y10_N24
\inst11|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~56_combout\ = (\inst11|i\(28) & (\inst11|Add0~55\ $ (GND))) # (!\inst11|i\(28) & (!\inst11|Add0~55\ & VCC))
-- \inst11|Add0~57\ = CARRY((\inst11|i\(28) & !\inst11|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i\(28),
	datad => VCC,
	cin => \inst11|Add0~55\,
	combout => \inst11|Add0~56_combout\,
	cout => \inst11|Add0~57\);

-- Location: FF_X13_Y10_N25
\inst11|i[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~56_combout\,
	clrn => \inst11|ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(28));

-- Location: LCCOMB_X13_Y10_N26
\inst11|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~58_combout\ = (\inst11|i\(29) & (!\inst11|Add0~57\)) # (!\inst11|i\(29) & ((\inst11|Add0~57\) # (GND)))
-- \inst11|Add0~59\ = CARRY((!\inst11|Add0~57\) # (!\inst11|i\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i\(29),
	datad => VCC,
	cin => \inst11|Add0~57\,
	combout => \inst11|Add0~58_combout\,
	cout => \inst11|Add0~59\);

-- Location: FF_X13_Y10_N31
\inst11|i[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~62_combout\,
	clrn => \inst11|ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(31));

-- Location: LCCOMB_X13_Y10_N28
\inst11|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~60_combout\ = (\inst11|i\(30) & (\inst11|Add0~59\ $ (GND))) # (!\inst11|i\(30) & (!\inst11|Add0~59\ & VCC))
-- \inst11|Add0~61\ = CARRY((\inst11|i\(30) & !\inst11|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i\(30),
	datad => VCC,
	cin => \inst11|Add0~59\,
	combout => \inst11|Add0~60_combout\,
	cout => \inst11|Add0~61\);

-- Location: FF_X13_Y10_N29
\inst11|i[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~60_combout\,
	clrn => \inst11|ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(30));

-- Location: LCCOMB_X13_Y10_N30
\inst11|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~62_combout\ = \inst11|Add0~61\ $ (\inst11|i\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst11|i\(31),
	cin => \inst11|Add0~61\,
	combout => \inst11|Add0~62_combout\);

-- Location: LCCOMB_X14_Y10_N22
\inst11|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal1~2_combout\ = (!\inst11|Add0~4_combout\ & (!\inst11|Add0~14_combout\ & (!\inst11|Add0~12_combout\ & !\inst11|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~4_combout\,
	datab => \inst11|Add0~14_combout\,
	datac => \inst11|Add0~12_combout\,
	datad => \inst11|Add0~16_combout\,
	combout => \inst11|Equal1~2_combout\);

-- Location: LCCOMB_X14_Y10_N4
\inst11|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal1~3_combout\ = (!\inst11|Add0~24_combout\ & (!\inst11|Add0~22_combout\ & (!\inst11|Add0~20_combout\ & !\inst11|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~24_combout\,
	datab => \inst11|Add0~22_combout\,
	datac => \inst11|Add0~20_combout\,
	datad => \inst11|Add0~18_combout\,
	combout => \inst11|Equal1~3_combout\);

-- Location: LCCOMB_X14_Y10_N8
\inst11|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal1~5_combout\ = (!\inst11|Add0~34_combout\ & (!\inst11|Add0~36_combout\ & (!\inst11|Add0~38_combout\ & !\inst11|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~34_combout\,
	datab => \inst11|Add0~36_combout\,
	datac => \inst11|Add0~38_combout\,
	datad => \inst11|Add0~40_combout\,
	combout => \inst11|Equal1~5_combout\);

-- Location: LCCOMB_X14_Y10_N2
\inst11|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal1~4_combout\ = (!\inst11|Add0~32_combout\ & (!\inst11|Add0~26_combout\ & (!\inst11|Add0~30_combout\ & !\inst11|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~32_combout\,
	datab => \inst11|Add0~26_combout\,
	datac => \inst11|Add0~30_combout\,
	datad => \inst11|Add0~28_combout\,
	combout => \inst11|Equal1~4_combout\);

-- Location: LCCOMB_X14_Y10_N20
\inst11|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal1~6_combout\ = (\inst11|Equal1~2_combout\ & (\inst11|Equal1~3_combout\ & (\inst11|Equal1~5_combout\ & \inst11|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal1~2_combout\,
	datab => \inst11|Equal1~3_combout\,
	datac => \inst11|Equal1~5_combout\,
	datad => \inst11|Equal1~4_combout\,
	combout => \inst11|Equal1~6_combout\);

-- Location: LCCOMB_X14_Y10_N18
\inst11|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal1~7_combout\ = (!\inst11|Add0~42_combout\ & (!\inst11|Add0~44_combout\ & (!\inst11|Add0~46_combout\ & \inst11|Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~42_combout\,
	datab => \inst11|Add0~44_combout\,
	datac => \inst11|Add0~46_combout\,
	datad => \inst11|Equal1~6_combout\,
	combout => \inst11|Equal1~7_combout\);

-- Location: LCCOMB_X14_Y10_N24
\inst11|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal1~8_combout\ = (!\inst11|Add0~48_combout\ & (!\inst11|Add0~50_combout\ & (!\inst11|Add0~52_combout\ & \inst11|Equal1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~48_combout\,
	datab => \inst11|Add0~50_combout\,
	datac => \inst11|Add0~52_combout\,
	datad => \inst11|Equal1~7_combout\,
	combout => \inst11|Equal1~8_combout\);

-- Location: LCCOMB_X14_Y10_N6
\inst11|Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal1~9_combout\ = (!\inst11|Add0~54_combout\ & (!\inst11|Add0~56_combout\ & \inst11|Equal1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Add0~54_combout\,
	datac => \inst11|Add0~56_combout\,
	datad => \inst11|Equal1~8_combout\,
	combout => \inst11|Equal1~9_combout\);

-- Location: LCCOMB_X14_Y10_N28
\inst11|Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal1~10_combout\ = (!\inst11|Add0~58_combout\ & (!\inst11|Add0~62_combout\ & (!\inst11|Add0~60_combout\ & \inst11|Equal1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~58_combout\,
	datab => \inst11|Add0~62_combout\,
	datac => \inst11|Add0~60_combout\,
	datad => \inst11|Equal1~9_combout\,
	combout => \inst11|Equal1~10_combout\);

-- Location: LCCOMB_X14_Y10_N26
\inst11|Equal1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal1~13_combout\ = (\inst11|Equal1~11_combout\ & (!\inst11|Add0~2_combout\ & (!\inst11|Add0~8_combout\ & \inst11|Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal1~11_combout\,
	datab => \inst11|Add0~2_combout\,
	datac => \inst11|Add0~8_combout\,
	datad => \inst11|Equal1~10_combout\,
	combout => \inst11|Equal1~13_combout\);

-- Location: LCCOMB_X14_Y11_N30
\inst11|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal2~0_combout\ = (!\inst11|Add0~2_combout\ & (!\inst11|Add0~10_combout\ & \inst11|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~2_combout\,
	datac => \inst11|Add0~10_combout\,
	datad => \inst11|Add0~8_combout\,
	combout => \inst11|Equal2~0_combout\);

-- Location: LCCOMB_X14_Y10_N14
\inst11|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal2~1_combout\ = (\inst11|Equal2~0_combout\ & (!\inst11|Add0~6_combout\ & (\inst11|i~16_combout\ & \inst11|Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal2~0_combout\,
	datab => \inst11|Add0~6_combout\,
	datac => \inst11|i~16_combout\,
	datad => \inst11|Equal1~10_combout\,
	combout => \inst11|Equal2~1_combout\);

-- Location: LCCOMB_X14_Y10_N10
\inst11|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal3~0_combout\ = (\inst11|Equal1~11_combout\ & (\inst11|Add0~2_combout\ & (\inst11|Add0~8_combout\ & \inst11|Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal1~11_combout\,
	datab => \inst11|Add0~2_combout\,
	datac => \inst11|Add0~8_combout\,
	datad => \inst11|Equal1~10_combout\,
	combout => \inst11|Equal3~0_combout\);

-- Location: LCCOMB_X14_Y10_N0
\inst11|minute~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|minute~1_combout\ = (!\inst11|Equal4~1_combout\ & (!\inst11|Equal2~1_combout\ & !\inst11|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal4~1_combout\,
	datac => \inst11|Equal2~1_combout\,
	datad => \inst11|Equal3~0_combout\,
	combout => \inst11|minute~1_combout\);

-- Location: LCCOMB_X14_Y11_N12
\inst11|i[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|i[0]~11_combout\ = \inst11|i[3]~5_combout\ $ (((\inst11|i~16_combout\ & (!\inst11|Equal1~13_combout\ & \inst11|minute~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i[3]~5_combout\,
	datab => \inst11|i~16_combout\,
	datac => \inst11|Equal1~13_combout\,
	datad => \inst11|minute~1_combout\,
	combout => \inst11|i[0]~11_combout\);

-- Location: LCCOMB_X11_Y11_N16
\inst11|i[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|i[3]~4_combout\ = (\inst11|i[3]~26_combout\) # (\inst11|i[3]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|i[3]~26_combout\,
	datad => \inst11|i[3]~25_combout\,
	combout => \inst11|i[3]~4_combout\);

-- Location: CLKCTRL_G0
\inst11|i[3]~4clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst11|i[3]~4clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst11|i[3]~4clkctrl_outclk\);

-- Location: FF_X14_Y11_N13
\inst11|i[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|i[0]~11_combout\,
	clrn => \inst11|ALT_INV_i[3]~4clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i[0]~_emulated_q\);

-- Location: LCCOMB_X14_Y11_N18
\inst11|i[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|i[0]~10_combout\ = (!\inst11|i[3]~26_combout\ & ((\inst11|i[3]~25_combout\) # (\inst11|i[3]~5_combout\ $ (\inst11|i[0]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i[3]~5_combout\,
	datab => \inst11|i[3]~25_combout\,
	datac => \inst11|i[3]~26_combout\,
	datad => \inst11|i[0]~_emulated_q\,
	combout => \inst11|i[0]~10_combout\);

-- Location: LCCOMB_X13_Y11_N0
\inst11|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~0_combout\ = \inst11|i[0]~10_combout\ $ (VCC)
-- \inst11|Add0~1\ = CARRY(\inst11|i[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i[0]~10_combout\,
	datad => VCC,
	combout => \inst11|Add0~0_combout\,
	cout => \inst11|Add0~1\);

-- Location: LCCOMB_X13_Y11_N2
\inst11|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~2_combout\ = (\inst11|i[1]~8_combout\ & (!\inst11|Add0~1\)) # (!\inst11|i[1]~8_combout\ & ((\inst11|Add0~1\) # (GND)))
-- \inst11|Add0~3\ = CARRY((!\inst11|Add0~1\) # (!\inst11|i[1]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i[1]~8_combout\,
	datad => VCC,
	cin => \inst11|Add0~1\,
	combout => \inst11|Add0~2_combout\,
	cout => \inst11|Add0~3\);

-- Location: LCCOMB_X14_Y11_N20
\inst11|i[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|i[1]~9_combout\ = \inst11|i[4]~1_combout\ $ (((\inst11|Add0~2_combout\ & (!\inst11|Equal1~13_combout\ & \inst11|minute~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~2_combout\,
	datab => \inst11|i[4]~1_combout\,
	datac => \inst11|Equal1~13_combout\,
	datad => \inst11|minute~1_combout\,
	combout => \inst11|i[1]~9_combout\);

-- Location: LCCOMB_X12_Y11_N24
\inst11|i[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|i[4]~0_combout\ = (\inst11|clean~2_combout\) # (\inst11|i[4]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|clean~2_combout\,
	datad => \inst11|i[4]~24_combout\,
	combout => \inst11|i[4]~0_combout\);

-- Location: CLKCTRL_G3
\inst11|i[4]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst11|i[4]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst11|i[4]~0clkctrl_outclk\);

-- Location: FF_X14_Y11_N21
\inst11|i[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|i[1]~9_combout\,
	clrn => \inst11|ALT_INV_i[4]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i[1]~_emulated_q\);

-- Location: LCCOMB_X14_Y11_N6
\inst11|i[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|i[1]~8_combout\ = (!\inst11|clean~2_combout\ & ((\inst11|i[4]~24_combout\) # (\inst11|i[4]~1_combout\ $ (\inst11|i[1]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i[4]~24_combout\,
	datab => \inst11|clean~2_combout\,
	datac => \inst11|i[4]~1_combout\,
	datad => \inst11|i[1]~_emulated_q\,
	combout => \inst11|i[1]~8_combout\);

-- Location: LCCOMB_X13_Y11_N4
\inst11|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~4_combout\ = (\inst11|i\(2) & (\inst11|Add0~3\ $ (GND))) # (!\inst11|i\(2) & (!\inst11|Add0~3\ & VCC))
-- \inst11|Add0~5\ = CARRY((\inst11|i\(2) & !\inst11|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i\(2),
	datad => VCC,
	cin => \inst11|Add0~3\,
	combout => \inst11|Add0~4_combout\,
	cout => \inst11|Add0~5\);

-- Location: LCCOMB_X14_Y10_N12
\inst11|i~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|i~23_combout\ = (\inst11|Add0~4_combout\) # ((\inst11|Equal1~13_combout\) # (!\inst11|minute~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~4_combout\,
	datac => \inst11|Equal1~13_combout\,
	datad => \inst11|minute~1_combout\,
	combout => \inst11|i~23_combout\);

-- Location: FF_X14_Y10_N13
\inst11|i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|i~23_combout\,
	clrn => \inst11|ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(2));

-- Location: LCCOMB_X13_Y11_N6
\inst11|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~6_combout\ = (\inst11|i[3]~6_combout\ & (!\inst11|Add0~5\)) # (!\inst11|i[3]~6_combout\ & ((\inst11|Add0~5\) # (GND)))
-- \inst11|Add0~7\ = CARRY((!\inst11|Add0~5\) # (!\inst11|i[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i[3]~6_combout\,
	datad => VCC,
	cin => \inst11|Add0~5\,
	combout => \inst11|Add0~6_combout\,
	cout => \inst11|Add0~7\);

-- Location: LCCOMB_X14_Y11_N0
\inst11|i[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|i[3]~7_combout\ = \inst11|i[3]~5_combout\ $ (((\inst11|Add0~6_combout\ & (!\inst11|Equal1~13_combout\ & \inst11|minute~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i[3]~5_combout\,
	datab => \inst11|Add0~6_combout\,
	datac => \inst11|Equal1~13_combout\,
	datad => \inst11|minute~1_combout\,
	combout => \inst11|i[3]~7_combout\);

-- Location: FF_X14_Y11_N1
\inst11|i[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|i[3]~7_combout\,
	clrn => \inst11|ALT_INV_i[3]~4clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i[3]~_emulated_q\);

-- Location: LCCOMB_X14_Y11_N22
\inst11|i[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|i[3]~6_combout\ = (!\inst11|i[3]~26_combout\ & ((\inst11|i[3]~25_combout\) # (\inst11|i[3]~5_combout\ $ (\inst11|i[3]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i[3]~5_combout\,
	datab => \inst11|i[3]~25_combout\,
	datac => \inst11|i[3]~26_combout\,
	datad => \inst11|i[3]~_emulated_q\,
	combout => \inst11|i[3]~6_combout\);

-- Location: LCCOMB_X13_Y11_N8
\inst11|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~8_combout\ = (\inst11|i[4]~2_combout\ & (\inst11|Add0~7\ $ (GND))) # (!\inst11|i[4]~2_combout\ & (!\inst11|Add0~7\ & VCC))
-- \inst11|Add0~9\ = CARRY((\inst11|i[4]~2_combout\ & !\inst11|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i[4]~2_combout\,
	datad => VCC,
	cin => \inst11|Add0~7\,
	combout => \inst11|Add0~8_combout\,
	cout => \inst11|Add0~9\);

-- Location: LCCOMB_X14_Y11_N28
\inst11|i[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|i[4]~3_combout\ = \inst11|i[4]~1_combout\ $ (((\inst11|Add0~8_combout\ & (!\inst11|Equal1~13_combout\ & \inst11|minute~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~8_combout\,
	datab => \inst11|i[4]~1_combout\,
	datac => \inst11|Equal1~13_combout\,
	datad => \inst11|minute~1_combout\,
	combout => \inst11|i[4]~3_combout\);

-- Location: FF_X14_Y11_N29
\inst11|i[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|i[4]~3_combout\,
	clrn => \inst11|ALT_INV_i[4]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i[4]~_emulated_q\);

-- Location: LCCOMB_X14_Y11_N26
\inst11|i[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|i[4]~2_combout\ = (!\inst11|clean~2_combout\ & ((\inst11|i[4]~24_combout\) # (\inst11|i[4]~1_combout\ $ (\inst11|i[4]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i[4]~24_combout\,
	datab => \inst11|clean~2_combout\,
	datac => \inst11|i[4]~1_combout\,
	datad => \inst11|i[4]~_emulated_q\,
	combout => \inst11|i[4]~2_combout\);

-- Location: LCCOMB_X13_Y11_N10
\inst11|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~10_combout\ = (\inst11|i\(5) & (!\inst11|Add0~9\)) # (!\inst11|i\(5) & ((\inst11|Add0~9\) # (GND)))
-- \inst11|Add0~11\ = CARRY((!\inst11|Add0~9\) # (!\inst11|i\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i\(5),
	datad => VCC,
	cin => \inst11|Add0~9\,
	combout => \inst11|Add0~10_combout\,
	cout => \inst11|Add0~11\);

-- Location: LCCOMB_X13_Y12_N24
\inst11|i~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|i~18_combout\ = (\inst11|Add0~10_combout\) # ((\inst11|Equal1~13_combout\) # (!\inst11|minute~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Add0~10_combout\,
	datac => \inst11|Equal1~13_combout\,
	datad => \inst11|minute~1_combout\,
	combout => \inst11|i~18_combout\);

-- Location: FF_X13_Y12_N25
\inst11|i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|i~18_combout\,
	clrn => \inst11|ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(5));

-- Location: LCCOMB_X13_Y11_N12
\inst11|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~12_combout\ = (\inst11|i\(6) & (\inst11|Add0~11\ $ (GND))) # (!\inst11|i\(6) & (!\inst11|Add0~11\ & VCC))
-- \inst11|Add0~13\ = CARRY((\inst11|i\(6) & !\inst11|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i\(6),
	datad => VCC,
	cin => \inst11|Add0~11\,
	combout => \inst11|Add0~12_combout\,
	cout => \inst11|Add0~13\);

-- Location: FF_X13_Y11_N13
\inst11|i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~12_combout\,
	clrn => \inst11|ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(6));

-- Location: LCCOMB_X13_Y11_N14
\inst11|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~14_combout\ = (\inst11|i\(7) & (!\inst11|Add0~13\)) # (!\inst11|i\(7) & ((\inst11|Add0~13\) # (GND)))
-- \inst11|Add0~15\ = CARRY((!\inst11|Add0~13\) # (!\inst11|i\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i\(7),
	datad => VCC,
	cin => \inst11|Add0~13\,
	combout => \inst11|Add0~14_combout\,
	cout => \inst11|Add0~15\);

-- Location: FF_X13_Y11_N15
\inst11|i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~14_combout\,
	clrn => \inst11|ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(7));

-- Location: LCCOMB_X13_Y11_N16
\inst11|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~16_combout\ = (\inst11|i\(8) & (\inst11|Add0~15\ $ (GND))) # (!\inst11|i\(8) & (!\inst11|Add0~15\ & VCC))
-- \inst11|Add0~17\ = CARRY((\inst11|i\(8) & !\inst11|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i\(8),
	datad => VCC,
	cin => \inst11|Add0~15\,
	combout => \inst11|Add0~16_combout\,
	cout => \inst11|Add0~17\);

-- Location: FF_X13_Y11_N17
\inst11|i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~16_combout\,
	clrn => \inst11|ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(8));

-- Location: LCCOMB_X13_Y11_N18
\inst11|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~18_combout\ = (\inst11|i\(9) & (!\inst11|Add0~17\)) # (!\inst11|i\(9) & ((\inst11|Add0~17\) # (GND)))
-- \inst11|Add0~19\ = CARRY((!\inst11|Add0~17\) # (!\inst11|i\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i\(9),
	datad => VCC,
	cin => \inst11|Add0~17\,
	combout => \inst11|Add0~18_combout\,
	cout => \inst11|Add0~19\);

-- Location: FF_X13_Y11_N19
\inst11|i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~18_combout\,
	clrn => \inst11|ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(9));

-- Location: LCCOMB_X13_Y11_N20
\inst11|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~20_combout\ = (\inst11|i\(10) & (\inst11|Add0~19\ $ (GND))) # (!\inst11|i\(10) & (!\inst11|Add0~19\ & VCC))
-- \inst11|Add0~21\ = CARRY((\inst11|i\(10) & !\inst11|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i\(10),
	datad => VCC,
	cin => \inst11|Add0~19\,
	combout => \inst11|Add0~20_combout\,
	cout => \inst11|Add0~21\);

-- Location: FF_X13_Y11_N21
\inst11|i[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~20_combout\,
	clrn => \inst11|ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(10));

-- Location: LCCOMB_X13_Y11_N22
\inst11|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~22_combout\ = (\inst11|i\(11) & (!\inst11|Add0~21\)) # (!\inst11|i\(11) & ((\inst11|Add0~21\) # (GND)))
-- \inst11|Add0~23\ = CARRY((!\inst11|Add0~21\) # (!\inst11|i\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i\(11),
	datad => VCC,
	cin => \inst11|Add0~21\,
	combout => \inst11|Add0~22_combout\,
	cout => \inst11|Add0~23\);

-- Location: FF_X13_Y11_N23
\inst11|i[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~22_combout\,
	clrn => \inst11|ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(11));

-- Location: LCCOMB_X13_Y11_N24
\inst11|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~24_combout\ = (\inst11|i\(12) & (\inst11|Add0~23\ $ (GND))) # (!\inst11|i\(12) & (!\inst11|Add0~23\ & VCC))
-- \inst11|Add0~25\ = CARRY((\inst11|i\(12) & !\inst11|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i\(12),
	datad => VCC,
	cin => \inst11|Add0~23\,
	combout => \inst11|Add0~24_combout\,
	cout => \inst11|Add0~25\);

-- Location: FF_X13_Y11_N25
\inst11|i[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~24_combout\,
	clrn => \inst11|ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(12));

-- Location: LCCOMB_X13_Y11_N26
\inst11|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~26_combout\ = (\inst11|i\(13) & (!\inst11|Add0~25\)) # (!\inst11|i\(13) & ((\inst11|Add0~25\) # (GND)))
-- \inst11|Add0~27\ = CARRY((!\inst11|Add0~25\) # (!\inst11|i\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i\(13),
	datad => VCC,
	cin => \inst11|Add0~25\,
	combout => \inst11|Add0~26_combout\,
	cout => \inst11|Add0~27\);

-- Location: FF_X13_Y11_N27
\inst11|i[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~26_combout\,
	clrn => \inst11|ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(13));

-- Location: LCCOMB_X13_Y11_N28
\inst11|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~28_combout\ = (\inst11|i\(14) & (\inst11|Add0~27\ $ (GND))) # (!\inst11|i\(14) & (!\inst11|Add0~27\ & VCC))
-- \inst11|Add0~29\ = CARRY((\inst11|i\(14) & !\inst11|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i\(14),
	datad => VCC,
	cin => \inst11|Add0~27\,
	combout => \inst11|Add0~28_combout\,
	cout => \inst11|Add0~29\);

-- Location: FF_X13_Y11_N29
\inst11|i[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~28_combout\,
	clrn => \inst11|ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(14));

-- Location: LCCOMB_X13_Y11_N30
\inst11|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~30_combout\ = (\inst11|i\(15) & (!\inst11|Add0~29\)) # (!\inst11|i\(15) & ((\inst11|Add0~29\) # (GND)))
-- \inst11|Add0~31\ = CARRY((!\inst11|Add0~29\) # (!\inst11|i\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i\(15),
	datad => VCC,
	cin => \inst11|Add0~29\,
	combout => \inst11|Add0~30_combout\,
	cout => \inst11|Add0~31\);

-- Location: FF_X13_Y11_N31
\inst11|i[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~30_combout\,
	clrn => \inst11|ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(15));

-- Location: LCCOMB_X13_Y10_N0
\inst11|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~32_combout\ = (\inst11|i\(16) & (\inst11|Add0~31\ $ (GND))) # (!\inst11|i\(16) & (!\inst11|Add0~31\ & VCC))
-- \inst11|Add0~33\ = CARRY((\inst11|i\(16) & !\inst11|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i\(16),
	datad => VCC,
	cin => \inst11|Add0~31\,
	combout => \inst11|Add0~32_combout\,
	cout => \inst11|Add0~33\);

-- Location: FF_X13_Y10_N1
\inst11|i[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~32_combout\,
	clrn => \inst11|ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(16));

-- Location: LCCOMB_X13_Y10_N2
\inst11|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~34_combout\ = (\inst11|i\(17) & (!\inst11|Add0~33\)) # (!\inst11|i\(17) & ((\inst11|Add0~33\) # (GND)))
-- \inst11|Add0~35\ = CARRY((!\inst11|Add0~33\) # (!\inst11|i\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i\(17),
	datad => VCC,
	cin => \inst11|Add0~33\,
	combout => \inst11|Add0~34_combout\,
	cout => \inst11|Add0~35\);

-- Location: FF_X13_Y10_N3
\inst11|i[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~34_combout\,
	clrn => \inst11|ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(17));

-- Location: LCCOMB_X13_Y10_N4
\inst11|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~36_combout\ = (\inst11|i\(18) & (\inst11|Add0~35\ $ (GND))) # (!\inst11|i\(18) & (!\inst11|Add0~35\ & VCC))
-- \inst11|Add0~37\ = CARRY((\inst11|i\(18) & !\inst11|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i\(18),
	datad => VCC,
	cin => \inst11|Add0~35\,
	combout => \inst11|Add0~36_combout\,
	cout => \inst11|Add0~37\);

-- Location: FF_X13_Y10_N5
\inst11|i[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~36_combout\,
	clrn => \inst11|ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(18));

-- Location: LCCOMB_X13_Y10_N6
\inst11|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~38_combout\ = (\inst11|i\(19) & (!\inst11|Add0~37\)) # (!\inst11|i\(19) & ((\inst11|Add0~37\) # (GND)))
-- \inst11|Add0~39\ = CARRY((!\inst11|Add0~37\) # (!\inst11|i\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i\(19),
	datad => VCC,
	cin => \inst11|Add0~37\,
	combout => \inst11|Add0~38_combout\,
	cout => \inst11|Add0~39\);

-- Location: FF_X13_Y10_N7
\inst11|i[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~38_combout\,
	clrn => \inst11|ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(19));

-- Location: LCCOMB_X13_Y10_N8
\inst11|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~40_combout\ = (\inst11|i\(20) & (\inst11|Add0~39\ $ (GND))) # (!\inst11|i\(20) & (!\inst11|Add0~39\ & VCC))
-- \inst11|Add0~41\ = CARRY((\inst11|i\(20) & !\inst11|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i\(20),
	datad => VCC,
	cin => \inst11|Add0~39\,
	combout => \inst11|Add0~40_combout\,
	cout => \inst11|Add0~41\);

-- Location: FF_X13_Y10_N9
\inst11|i[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~40_combout\,
	clrn => \inst11|ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(20));

-- Location: LCCOMB_X13_Y10_N10
\inst11|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~42_combout\ = (\inst11|i\(21) & (!\inst11|Add0~41\)) # (!\inst11|i\(21) & ((\inst11|Add0~41\) # (GND)))
-- \inst11|Add0~43\ = CARRY((!\inst11|Add0~41\) # (!\inst11|i\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i\(21),
	datad => VCC,
	cin => \inst11|Add0~41\,
	combout => \inst11|Add0~42_combout\,
	cout => \inst11|Add0~43\);

-- Location: FF_X13_Y10_N11
\inst11|i[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~42_combout\,
	clrn => \inst11|ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(21));

-- Location: LCCOMB_X13_Y10_N12
\inst11|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~44_combout\ = (\inst11|i\(22) & (\inst11|Add0~43\ $ (GND))) # (!\inst11|i\(22) & (!\inst11|Add0~43\ & VCC))
-- \inst11|Add0~45\ = CARRY((\inst11|i\(22) & !\inst11|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i\(22),
	datad => VCC,
	cin => \inst11|Add0~43\,
	combout => \inst11|Add0~44_combout\,
	cout => \inst11|Add0~45\);

-- Location: FF_X13_Y10_N13
\inst11|i[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~44_combout\,
	clrn => \inst11|ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(22));

-- Location: LCCOMB_X13_Y10_N14
\inst11|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~46_combout\ = (\inst11|i\(23) & (!\inst11|Add0~45\)) # (!\inst11|i\(23) & ((\inst11|Add0~45\) # (GND)))
-- \inst11|Add0~47\ = CARRY((!\inst11|Add0~45\) # (!\inst11|i\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i\(23),
	datad => VCC,
	cin => \inst11|Add0~45\,
	combout => \inst11|Add0~46_combout\,
	cout => \inst11|Add0~47\);

-- Location: FF_X13_Y10_N15
\inst11|i[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~46_combout\,
	clrn => \inst11|ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(23));

-- Location: LCCOMB_X13_Y10_N16
\inst11|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Add0~48_combout\ = (\inst11|i\(24) & (\inst11|Add0~47\ $ (GND))) # (!\inst11|i\(24) & (!\inst11|Add0~47\ & VCC))
-- \inst11|Add0~49\ = CARRY((\inst11|i\(24) & !\inst11|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|i\(24),
	datad => VCC,
	cin => \inst11|Add0~47\,
	combout => \inst11|Add0~48_combout\,
	cout => \inst11|Add0~49\);

-- Location: FF_X13_Y10_N17
\inst11|i[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~48_combout\,
	clrn => \inst11|ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(24));

-- Location: FF_X13_Y10_N19
\inst11|i[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|Add0~50_combout\,
	clrn => \inst11|ALT_INV_i[31]~17clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|i\(25));

-- Location: LCCOMB_X12_Y10_N10
\inst11|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~1_combout\ = (!\inst11|i\(25) & (!\inst11|i\(27) & (!\inst11|i\(26) & !\inst11|i\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i\(25),
	datab => \inst11|i\(27),
	datac => \inst11|i\(26),
	datad => \inst11|i\(24),
	combout => \inst11|Equal0~1_combout\);

-- Location: LCCOMB_X12_Y10_N28
\inst11|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~0_combout\ = (!\inst11|i\(31) & (!\inst11|i\(30) & (!\inst11|i\(28) & !\inst11|i\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i\(31),
	datab => \inst11|i\(30),
	datac => \inst11|i\(28),
	datad => \inst11|i\(29),
	combout => \inst11|Equal0~0_combout\);

-- Location: LCCOMB_X12_Y10_N8
\inst11|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~2_combout\ = (!\inst11|i\(23) & (!\inst11|i\(21) & (!\inst11|i\(20) & !\inst11|i\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i\(23),
	datab => \inst11|i\(21),
	datac => \inst11|i\(20),
	datad => \inst11|i\(22),
	combout => \inst11|Equal0~2_combout\);

-- Location: LCCOMB_X12_Y10_N18
\inst11|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~3_combout\ = (!\inst11|i\(19) & (!\inst11|i\(16) & (!\inst11|i\(17) & !\inst11|i\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i\(19),
	datab => \inst11|i\(16),
	datac => \inst11|i\(17),
	datad => \inst11|i\(18),
	combout => \inst11|Equal0~3_combout\);

-- Location: LCCOMB_X12_Y10_N24
\inst11|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~4_combout\ = (\inst11|Equal0~1_combout\ & (\inst11|Equal0~0_combout\ & (\inst11|Equal0~2_combout\ & \inst11|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal0~1_combout\,
	datab => \inst11|Equal0~0_combout\,
	datac => \inst11|Equal0~2_combout\,
	datad => \inst11|Equal0~3_combout\,
	combout => \inst11|Equal0~4_combout\);

-- Location: LCCOMB_X13_Y12_N22
\inst11|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~7_combout\ = (!\inst11|i\(7) & (\inst11|i\(5) & (\inst11|i\(2) & !\inst11|i\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i\(7),
	datab => \inst11|i\(5),
	datac => \inst11|i\(2),
	datad => \inst11|i\(6),
	combout => \inst11|Equal0~7_combout\);

-- Location: LCCOMB_X12_Y11_N2
\inst11|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~6_combout\ = (!\inst11|i\(8) & (!\inst11|i\(9) & (!\inst11|i\(10) & !\inst11|i\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i\(8),
	datab => \inst11|i\(9),
	datac => \inst11|i\(10),
	datad => \inst11|i\(11),
	combout => \inst11|Equal0~6_combout\);

-- Location: LCCOMB_X12_Y11_N16
\inst11|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~5_combout\ = (!\inst11|i\(12) & (!\inst11|i\(13) & (!\inst11|i\(15) & !\inst11|i\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i\(12),
	datab => \inst11|i\(13),
	datac => \inst11|i\(15),
	datad => \inst11|i\(14),
	combout => \inst11|Equal0~5_combout\);

-- Location: LCCOMB_X14_Y11_N4
\inst11|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~8_combout\ = (!\inst11|i[3]~6_combout\ & (!\inst11|i[4]~2_combout\ & (!\inst11|i[0]~10_combout\ & !\inst11|i[1]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i[3]~6_combout\,
	datab => \inst11|i[4]~2_combout\,
	datac => \inst11|i[0]~10_combout\,
	datad => \inst11|i[1]~8_combout\,
	combout => \inst11|Equal0~8_combout\);

-- Location: LCCOMB_X13_Y12_N12
\inst11|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~9_combout\ = (\inst11|Equal0~7_combout\ & (\inst11|Equal0~6_combout\ & (\inst11|Equal0~5_combout\ & \inst11|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal0~7_combout\,
	datab => \inst11|Equal0~6_combout\,
	datac => \inst11|Equal0~5_combout\,
	datad => \inst11|Equal0~8_combout\,
	combout => \inst11|Equal0~9_combout\);

-- Location: LCCOMB_X13_Y12_N28
\inst11|i~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|i~16_combout\ = (\inst11|Add0~0_combout\ & ((!\inst11|Equal0~9_combout\) # (!\inst11|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Equal0~4_combout\,
	datac => \inst11|Add0~0_combout\,
	datad => \inst11|Equal0~9_combout\,
	combout => \inst11|i~16_combout\);

-- Location: LCCOMB_X14_Y11_N2
\inst11|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal4~0_combout\ = (!\inst11|Add0~8_combout\ & (\inst11|Add0~10_combout\ & \inst11|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~8_combout\,
	datac => \inst11|Add0~10_combout\,
	datad => \inst11|Add0~2_combout\,
	combout => \inst11|Equal4~0_combout\);

-- Location: LCCOMB_X14_Y10_N30
\inst11|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal4~1_combout\ = (\inst11|i~16_combout\ & (!\inst11|Add0~6_combout\ & (\inst11|Equal4~0_combout\ & \inst11|Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|i~16_combout\,
	datab => \inst11|Add0~6_combout\,
	datac => \inst11|Equal4~0_combout\,
	datad => \inst11|Equal1~10_combout\,
	combout => \inst11|Equal4~1_combout\);

-- Location: LCCOMB_X13_Y12_N30
\inst11|Equal1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal1~12_combout\ = (!\inst11|Add0~2_combout\ & !\inst11|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Add0~2_combout\,
	datad => \inst11|Add0~8_combout\,
	combout => \inst11|Equal1~12_combout\);

-- Location: LCCOMB_X13_Y12_N26
\inst11|minute~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|minute~0_combout\ = (!\inst11|i[31]~17_combout\ & (((!\inst11|Equal1~10_combout\) # (!\inst11|Equal1~11_combout\)) # (!\inst11|Equal1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal1~12_combout\,
	datab => \inst11|Equal1~11_combout\,
	datac => \inst11|i[31]~17_combout\,
	datad => \inst11|Equal1~10_combout\,
	combout => \inst11|minute~0_combout\);

-- Location: LCCOMB_X13_Y12_N16
\inst11|clean~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|clean~0_combout\ = (!\inst11|Equal2~1_combout\ & (\inst11|minute~0_combout\ & !\inst11|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal2~1_combout\,
	datac => \inst11|minute~0_combout\,
	datad => \inst11|Equal3~0_combout\,
	combout => \inst11|clean~0_combout\);

-- Location: LCCOMB_X13_Y12_N14
\inst11|clean~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|clean~1_combout\ = (\inst11|clean~0_combout\ & (!\inst11|Equal4~1_combout\)) # (!\inst11|clean~0_combout\ & ((\inst11|clean~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal4~1_combout\,
	datac => \inst11|clean~q\,
	datad => \inst11|clean~0_combout\,
	combout => \inst11|clean~1_combout\);

-- Location: FF_X13_Y12_N15
\inst11|clean\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|clean~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|clean~q\);

-- Location: LCCOMB_X13_Y12_N4
\inst11|pause~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|pause~0_combout\ = (\inst11|pause~q\ & ((\inst11|Equal2~1_combout\) # ((!\inst11|Equal3~0_combout\) # (!\inst11|minute~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal2~1_combout\,
	datab => \inst11|pause~q\,
	datac => \inst11|minute~0_combout\,
	datad => \inst11|Equal3~0_combout\,
	combout => \inst11|pause~0_combout\);

-- Location: LCCOMB_X13_Y12_N6
\inst11|pause~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|pause~1_combout\ = (\inst11|pause~0_combout\) # ((\inst11|minute~0_combout\ & \inst11|minute~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|minute~0_combout\,
	datac => \inst11|pause~0_combout\,
	datad => \inst11|minute~1_combout\,
	combout => \inst11|pause~1_combout\);

-- Location: FF_X13_Y12_N7
\inst11|pause\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|pause~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|pause~q\);

-- Location: LCCOMB_X12_Y12_N0
\inst2|data[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|data[7]~1_combout\ = (!\inst11|clean~q\ & \inst11|pause~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|clean~q\,
	datad => \inst11|pause~q\,
	combout => \inst2|data[7]~1_combout\);

-- Location: FF_X13_Y13_N3
\inst|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|CLK~clkctrl_outclk\,
	d => \inst|data~8_combout\,
	clrn => \inst2|ALT_INV_data[7]~1_combout\,
	ena => \inst11|pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(0));

-- Location: LCCOMB_X13_Y13_N20
\inst|data~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data~5_combout\ = (\inst|data\(0) & (\inst|data\(1) & (!\inst|data\(3) & \inst|data\(2)))) # (!\inst|data\(0) & (!\inst|data\(1) & (\inst|data\(3) & !\inst|data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(0),
	datab => \inst|data\(1),
	datac => \inst|data\(3),
	datad => \inst|data\(2),
	combout => \inst|data~5_combout\);

-- Location: FF_X13_Y13_N21
\inst|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|CLK~clkctrl_outclk\,
	d => \inst|data~5_combout\,
	clrn => \inst2|ALT_INV_data[7]~1_combout\,
	ena => \inst11|pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(3));

-- Location: LCCOMB_X13_Y13_N4
\inst|data~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data~7_combout\ = (!\inst|data\(3) & (\inst|data\(1) $ (\inst|data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|data\(3),
	datac => \inst|data\(1),
	datad => \inst|data\(0),
	combout => \inst|data~7_combout\);

-- Location: FF_X13_Y13_N5
\inst|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|CLK~clkctrl_outclk\,
	d => \inst|data~7_combout\,
	clrn => \inst2|ALT_INV_data[7]~1_combout\,
	ena => \inst11|pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(1));

-- Location: LCCOMB_X13_Y13_N30
\inst|data~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data~6_combout\ = (!\inst|data\(3) & (\inst|data\(2) $ (((\inst|data\(1) & \inst|data\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(1),
	datab => \inst|data\(0),
	datac => \inst|data\(2),
	datad => \inst|data\(3),
	combout => \inst|data~6_combout\);

-- Location: FF_X13_Y13_N31
\inst|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|CLK~clkctrl_outclk\,
	d => \inst|data~6_combout\,
	clrn => \inst2|ALT_INV_data[7]~1_combout\,
	ena => \inst11|pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(2));

-- Location: LCCOMB_X14_Y12_N28
\inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = ((!\inst|data\(2) & (!\inst|data\(0) & !\inst|data\(1)))) # (!\inst|data\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(2),
	datab => \inst|data\(0),
	datac => \inst|data\(3),
	datad => \inst|data\(1),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X14_Y12_N30
\inst|data~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data~3_combout\ = (\inst|data\(6) & (\inst|LessThan0~0_combout\ & (\inst|data\(4) $ (\inst|data\(5))))) # (!\inst|data\(6) & (\inst|data\(4) $ ((\inst|data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(4),
	datab => \inst|data\(6),
	datac => \inst|data\(5),
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|data~3_combout\);

-- Location: LCCOMB_X14_Y12_N16
\inst|data[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data[6]~1_combout\ = (\inst|data\(2)) # (\inst|data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|data\(2),
	datad => \inst|data\(0),
	combout => \inst|data[6]~1_combout\);

-- Location: LCCOMB_X14_Y12_N10
\inst|data[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data[6]~2_combout\ = (\inst|data\(3) & (\inst11|pause~q\ & ((\inst|data\(1)) # (\inst|data[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(1),
	datab => \inst|data\(3),
	datac => \inst11|pause~q\,
	datad => \inst|data[6]~1_combout\,
	combout => \inst|data[6]~2_combout\);

-- Location: FF_X14_Y12_N31
\inst|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|CLK~clkctrl_outclk\,
	d => \inst|data~3_combout\,
	clrn => \inst2|ALT_INV_data[7]~1_combout\,
	ena => \inst|data[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(5));

-- Location: LCCOMB_X14_Y12_N24
\inst|data~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data~4_combout\ = (!\inst|data\(4) & (((\inst|LessThan0~0_combout\) # (!\inst|data\(5))) # (!\inst|data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(6),
	datab => \inst|data\(5),
	datac => \inst|data\(4),
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|data~4_combout\);

-- Location: FF_X14_Y12_N25
\inst|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|CLK~clkctrl_outclk\,
	d => \inst|data~4_combout\,
	clrn => \inst2|ALT_INV_data[7]~1_combout\,
	ena => \inst|data[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(4));

-- Location: LCCOMB_X14_Y12_N26
\inst|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data~0_combout\ = (\inst|data\(4) & ((\inst|data\(5) & (!\inst|data\(6))) # (!\inst|data\(5) & (\inst|data\(6) & \inst|LessThan0~0_combout\)))) # (!\inst|data\(4) & (\inst|data\(6) & ((\inst|LessThan0~0_combout\) # (!\inst|data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(4),
	datab => \inst|data\(5),
	datac => \inst|data\(6),
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|data~0_combout\);

-- Location: FF_X14_Y12_N27
\inst|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|CLK~clkctrl_outclk\,
	d => \inst|data~0_combout\,
	clrn => \inst2|ALT_INV_data[7]~1_combout\,
	ena => \inst|data[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(6));

-- Location: LCCOMB_X14_Y12_N2
\inst7|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal2~0_combout\ = (!\inst|data\(5) & (!\inst|data\(0) & (!\inst|data\(4) & !\inst|data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(5),
	datab => \inst|data\(0),
	datac => \inst|data\(4),
	datad => \inst|data\(2),
	combout => \inst7|Equal2~0_combout\);

-- Location: LCCOMB_X14_Y13_N22
\inst7|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal2~1_combout\ = (!\inst|data\(6) & (\inst|data\(1) & (!\inst|data\(3) & \inst7|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(6),
	datab => \inst|data\(1),
	datac => \inst|data\(3),
	datad => \inst7|Equal2~0_combout\,
	combout => \inst7|Equal2~1_combout\);

-- Location: LCCOMB_X14_Y12_N20
\inst|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~0_combout\ = (\inst|data\(6) & (!\inst|LessThan0~0_combout\ & ((\inst|data\(5)) # (\inst|data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(6),
	datab => \inst|data\(5),
	datac => \inst|data\(4),
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|process_0~0_combout\);

-- Location: LCCOMB_X14_Y12_N0
\inst1|C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|C~0_combout\ = (\inst11|pause~q\ & \inst11|clean~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|pause~q\,
	datad => \inst11|clean~q\,
	combout => \inst1|C~0_combout\);

-- Location: FF_X14_Y12_N21
\inst|C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|CLK~clkctrl_outclk\,
	d => \inst|process_0~0_combout\,
	ena => \inst1|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|C~q\);

-- Location: LCCOMB_X13_Y12_N20
\inst11|minute~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|minute~2_combout\ = (\inst11|minute~0_combout\ & ((\inst11|minute~1_combout\) # ((!\inst11|Equal2~1_combout\ & \inst11|minute~q\)))) # (!\inst11|minute~0_combout\ & (((\inst11|minute~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal2~1_combout\,
	datab => \inst11|minute~0_combout\,
	datac => \inst11|minute~q\,
	datad => \inst11|minute~1_combout\,
	combout => \inst11|minute~2_combout\);

-- Location: FF_X13_Y12_N21
\inst11|minute\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst11|minute~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|minute~q\);

-- Location: LCCOMB_X13_Y12_N8
inst6 : cycloneive_lcell_comb
-- Equation(s):
-- \inst6~combout\ = LCELL(\inst|C~q\ $ (\inst11|minute~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|C~q\,
	datad => \inst11|minute~q\,
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

-- Location: LCCOMB_X11_Y13_N4
\inst1|data~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data~5_combout\ = (!\inst1|data\(3) & (\inst1|data\(2) $ (((\inst1|data\(1) & \inst1|data\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data\(3),
	datab => \inst1|data\(1),
	datac => \inst1|data\(2),
	datad => \inst1|data\(0),
	combout => \inst1|data~5_combout\);

-- Location: FF_X11_Y13_N5
\inst1|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6~clkctrl_outclk\,
	d => \inst1|data~5_combout\,
	clrn => \inst2|ALT_INV_data[7]~1_combout\,
	ena => \inst11|pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data\(2));

-- Location: LCCOMB_X11_Y13_N28
\inst1|data~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data~7_combout\ = (!\inst1|data\(0) & (((!\inst1|data\(1) & !\inst1|data\(2))) # (!\inst1|data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data\(3),
	datab => \inst1|data\(1),
	datac => \inst1|data\(0),
	datad => \inst1|data\(2),
	combout => \inst1|data~7_combout\);

-- Location: FF_X11_Y13_N29
\inst1|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6~clkctrl_outclk\,
	d => \inst1|data~7_combout\,
	clrn => \inst2|ALT_INV_data[7]~1_combout\,
	ena => \inst11|pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data\(0));

-- Location: LCCOMB_X11_Y13_N8
\inst1|data~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data~4_combout\ = (\inst1|data\(0) & (\inst1|data\(2) & (!\inst1|data\(3) & \inst1|data\(1)))) # (!\inst1|data\(0) & (!\inst1|data\(2) & (\inst1|data\(3) & !\inst1|data\(1))))

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
	combout => \inst1|data~4_combout\);

-- Location: FF_X11_Y13_N9
\inst1|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6~clkctrl_outclk\,
	d => \inst1|data~4_combout\,
	clrn => \inst2|ALT_INV_data[7]~1_combout\,
	ena => \inst11|pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data\(3));

-- Location: LCCOMB_X11_Y13_N30
\inst1|data~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data~6_combout\ = (!\inst1|data\(3) & (\inst1|data\(1) $ (\inst1|data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data\(3),
	datac => \inst1|data\(1),
	datad => \inst1|data\(0),
	combout => \inst1|data~6_combout\);

-- Location: FF_X11_Y13_N31
\inst1|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6~clkctrl_outclk\,
	d => \inst1|data~6_combout\,
	clrn => \inst2|ALT_INV_data[7]~1_combout\,
	ena => \inst11|pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data\(1));

-- Location: LCCOMB_X11_Y13_N14
\inst1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~0_combout\ = ((!\inst1|data\(1) & (!\inst1|data\(2) & !\inst1|data\(0)))) # (!\inst1|data\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data\(1),
	datab => \inst1|data\(2),
	datac => \inst1|data\(3),
	datad => \inst1|data\(0),
	combout => \inst1|LessThan0~0_combout\);

-- Location: LCCOMB_X12_Y13_N12
\inst1|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data~0_combout\ = (\inst1|data\(4) & ((\inst1|data\(5) & (!\inst1|data\(6))) # (!\inst1|data\(5) & (\inst1|data\(6) & \inst1|LessThan0~0_combout\)))) # (!\inst1|data\(4) & (\inst1|data\(6) & ((\inst1|LessThan0~0_combout\) # (!\inst1|data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data\(4),
	datab => \inst1|data\(5),
	datac => \inst1|data\(6),
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|data~0_combout\);

-- Location: LCCOMB_X12_Y13_N30
\inst1|data[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data[6]~1_combout\ = (\inst11|pause~q\ & !\inst1|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|pause~q\,
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|data[6]~1_combout\);

-- Location: FF_X12_Y13_N13
\inst1|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6~clkctrl_outclk\,
	d => \inst1|data~0_combout\,
	clrn => \inst2|ALT_INV_data[7]~1_combout\,
	ena => \inst1|data[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data\(6));

-- Location: LCCOMB_X12_Y13_N22
\inst1|data~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data~2_combout\ = (\inst1|data\(6) & (\inst1|LessThan0~0_combout\ & (\inst1|data\(4) $ (\inst1|data\(5))))) # (!\inst1|data\(6) & (\inst1|data\(4) $ ((\inst1|data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data\(4),
	datab => \inst1|data\(6),
	datac => \inst1|data\(5),
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|data~2_combout\);

-- Location: FF_X12_Y13_N23
\inst1|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6~clkctrl_outclk\,
	d => \inst1|data~2_combout\,
	clrn => \inst2|ALT_INV_data[7]~1_combout\,
	ena => \inst1|data[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data\(5));

-- Location: LCCOMB_X12_Y13_N4
\inst1|data~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data~3_combout\ = (!\inst1|data\(4) & ((\inst1|LessThan0~0_combout\) # ((!\inst1|data\(6)) # (!\inst1|data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan0~0_combout\,
	datab => \inst1|data\(5),
	datac => \inst1|data\(4),
	datad => \inst1|data\(6),
	combout => \inst1|data~3_combout\);

-- Location: FF_X12_Y13_N5
\inst1|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6~clkctrl_outclk\,
	d => \inst1|data~3_combout\,
	clrn => \inst2|ALT_INV_data[7]~1_combout\,
	ena => \inst1|data[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data\(4));

-- Location: LCCOMB_X11_Y13_N18
\inst7|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|comb~0_combout\ = (!\inst1|data\(4) & (!\inst1|data\(3) & !\inst1|data\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data\(4),
	datac => \inst1|data\(3),
	datad => \inst1|data\(5),
	combout => \inst7|comb~0_combout\);

-- Location: LCCOMB_X11_Y13_N6
\inst7|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|comb~1_combout\ = (!\inst1|data\(6) & (!\inst1|data\(0) & (!\inst1|data\(2) & !\inst1|data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data\(6),
	datab => \inst1|data\(0),
	datac => \inst1|data\(2),
	datad => \inst1|data\(1),
	combout => \inst7|comb~1_combout\);

-- Location: LCCOMB_X14_Y13_N28
\inst7|comb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|comb~2_combout\ = (!\inst|data\(6) & (!\inst|data\(3) & (\inst7|comb~1_combout\ & \inst7|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(6),
	datab => \inst|data\(3),
	datac => \inst7|comb~1_combout\,
	datad => \inst7|Equal2~0_combout\,
	combout => \inst7|comb~2_combout\);

-- Location: LCCOMB_X14_Y13_N4
\inst7|comb~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|comb~3_combout\ = (!\inst7|Equal2~1_combout\ & (\inst7|comb~0_combout\ & \inst7|comb~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal2~1_combout\,
	datac => \inst7|comb~0_combout\,
	datad => \inst7|comb~2_combout\,
	combout => \inst7|comb~3_combout\);

-- Location: LCCOMB_X14_Y13_N12
\inst7|alarm\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|alarm~combout\ = (!\inst7|comb~3_combout\ & ((\inst7|Equal2~1_combout\) # (\inst7|alarm~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|comb~3_combout\,
	datac => \inst7|Equal2~1_combout\,
	datad => \inst7|alarm~combout\,
	combout => \inst7|alarm~combout\);

-- Location: LCCOMB_X16_Y13_N6
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

-- Location: LCCOMB_X16_Y16_N0
\inst8|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~0_combout\ = \inst8|COUNT\(0) $ (VCC)
-- \inst8|Add0~1\ = CARRY(\inst8|COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|COUNT\(0),
	datad => VCC,
	combout => \inst8|Add0~0_combout\,
	cout => \inst8|Add0~1\);

-- Location: LCCOMB_X17_Y16_N20
\inst8|COUNT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|COUNT~0_combout\ = (\inst8|Add0~0_combout\ & !\inst8|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~0_combout\,
	datac => \inst8|Equal0~10_combout\,
	combout => \inst8|COUNT~0_combout\);

-- Location: FF_X17_Y16_N21
\inst8|COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|COUNT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|COUNT\(0));

-- Location: LCCOMB_X16_Y16_N2
\inst8|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~2_combout\ = (\inst8|COUNT\(1) & (!\inst8|Add0~1\)) # (!\inst8|COUNT\(1) & ((\inst8|Add0~1\) # (GND)))
-- \inst8|Add0~3\ = CARRY((!\inst8|Add0~1\) # (!\inst8|COUNT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|COUNT\(1),
	datad => VCC,
	cin => \inst8|Add0~1\,
	combout => \inst8|Add0~2_combout\,
	cout => \inst8|Add0~3\);

-- Location: FF_X16_Y16_N3
\inst8|COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|COUNT\(1));

-- Location: LCCOMB_X16_Y16_N4
\inst8|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~4_combout\ = (\inst8|COUNT\(2) & (\inst8|Add0~3\ $ (GND))) # (!\inst8|COUNT\(2) & (!\inst8|Add0~3\ & VCC))
-- \inst8|Add0~5\ = CARRY((\inst8|COUNT\(2) & !\inst8|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|COUNT\(2),
	datad => VCC,
	cin => \inst8|Add0~3\,
	combout => \inst8|Add0~4_combout\,
	cout => \inst8|Add0~5\);

-- Location: FF_X16_Y16_N5
\inst8|COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|COUNT\(2));

-- Location: LCCOMB_X16_Y16_N6
\inst8|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~6_combout\ = (\inst8|COUNT\(3) & (!\inst8|Add0~5\)) # (!\inst8|COUNT\(3) & ((\inst8|Add0~5\) # (GND)))
-- \inst8|Add0~7\ = CARRY((!\inst8|Add0~5\) # (!\inst8|COUNT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|COUNT\(3),
	datad => VCC,
	cin => \inst8|Add0~5\,
	combout => \inst8|Add0~6_combout\,
	cout => \inst8|Add0~7\);

-- Location: FF_X16_Y16_N7
\inst8|COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|COUNT\(3));

-- Location: LCCOMB_X16_Y16_N8
\inst8|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~8_combout\ = (\inst8|COUNT\(4) & (\inst8|Add0~7\ $ (GND))) # (!\inst8|COUNT\(4) & (!\inst8|Add0~7\ & VCC))
-- \inst8|Add0~9\ = CARRY((\inst8|COUNT\(4) & !\inst8|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|COUNT\(4),
	datad => VCC,
	cin => \inst8|Add0~7\,
	combout => \inst8|Add0~8_combout\,
	cout => \inst8|Add0~9\);

-- Location: LCCOMB_X17_Y16_N8
\inst8|COUNT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|COUNT~1_combout\ = (\inst8|Add0~8_combout\ & !\inst8|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~8_combout\,
	datac => \inst8|Equal0~10_combout\,
	combout => \inst8|COUNT~1_combout\);

-- Location: FF_X17_Y16_N9
\inst8|COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|COUNT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|COUNT\(4));

-- Location: LCCOMB_X16_Y16_N10
\inst8|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~10_combout\ = (\inst8|COUNT\(5) & (!\inst8|Add0~9\)) # (!\inst8|COUNT\(5) & ((\inst8|Add0~9\) # (GND)))
-- \inst8|Add0~11\ = CARRY((!\inst8|Add0~9\) # (!\inst8|COUNT\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|COUNT\(5),
	datad => VCC,
	cin => \inst8|Add0~9\,
	combout => \inst8|Add0~10_combout\,
	cout => \inst8|Add0~11\);

-- Location: FF_X16_Y16_N11
\inst8|COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|COUNT\(5));

-- Location: LCCOMB_X16_Y16_N12
\inst8|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~12_combout\ = (\inst8|COUNT\(6) & (\inst8|Add0~11\ $ (GND))) # (!\inst8|COUNT\(6) & (!\inst8|Add0~11\ & VCC))
-- \inst8|Add0~13\ = CARRY((\inst8|COUNT\(6) & !\inst8|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|COUNT\(6),
	datad => VCC,
	cin => \inst8|Add0~11\,
	combout => \inst8|Add0~12_combout\,
	cout => \inst8|Add0~13\);

-- Location: FF_X16_Y16_N13
\inst8|COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|COUNT\(6));

-- Location: LCCOMB_X16_Y16_N14
\inst8|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~14_combout\ = (\inst8|COUNT\(7) & (!\inst8|Add0~13\)) # (!\inst8|COUNT\(7) & ((\inst8|Add0~13\) # (GND)))
-- \inst8|Add0~15\ = CARRY((!\inst8|Add0~13\) # (!\inst8|COUNT\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|COUNT\(7),
	datad => VCC,
	cin => \inst8|Add0~13\,
	combout => \inst8|Add0~14_combout\,
	cout => \inst8|Add0~15\);

-- Location: FF_X16_Y16_N15
\inst8|COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|COUNT\(7));

-- Location: LCCOMB_X16_Y16_N16
\inst8|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~16_combout\ = (\inst8|COUNT\(8) & (\inst8|Add0~15\ $ (GND))) # (!\inst8|COUNT\(8) & (!\inst8|Add0~15\ & VCC))
-- \inst8|Add0~17\ = CARRY((\inst8|COUNT\(8) & !\inst8|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|COUNT\(8),
	datad => VCC,
	cin => \inst8|Add0~15\,
	combout => \inst8|Add0~16_combout\,
	cout => \inst8|Add0~17\);

-- Location: LCCOMB_X17_Y16_N16
\inst8|COUNT~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|COUNT~2_combout\ = (\inst8|Add0~16_combout\ & !\inst8|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~16_combout\,
	datac => \inst8|Equal0~10_combout\,
	combout => \inst8|COUNT~2_combout\);

-- Location: FF_X17_Y16_N17
\inst8|COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|COUNT~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|COUNT\(8));

-- Location: LCCOMB_X16_Y16_N18
\inst8|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~18_combout\ = (\inst8|COUNT\(9) & (!\inst8|Add0~17\)) # (!\inst8|COUNT\(9) & ((\inst8|Add0~17\) # (GND)))
-- \inst8|Add0~19\ = CARRY((!\inst8|Add0~17\) # (!\inst8|COUNT\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|COUNT\(9),
	datad => VCC,
	cin => \inst8|Add0~17\,
	combout => \inst8|Add0~18_combout\,
	cout => \inst8|Add0~19\);

-- Location: LCCOMB_X17_Y16_N30
\inst8|COUNT~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|COUNT~3_combout\ = (!\inst8|Equal0~10_combout\ & \inst8|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|Equal0~10_combout\,
	datad => \inst8|Add0~18_combout\,
	combout => \inst8|COUNT~3_combout\);

-- Location: FF_X17_Y16_N31
\inst8|COUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|COUNT~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|COUNT\(9));

-- Location: LCCOMB_X16_Y16_N20
\inst8|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~20_combout\ = (\inst8|COUNT\(10) & (\inst8|Add0~19\ $ (GND))) # (!\inst8|COUNT\(10) & (!\inst8|Add0~19\ & VCC))
-- \inst8|Add0~21\ = CARRY((\inst8|COUNT\(10) & !\inst8|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|COUNT\(10),
	datad => VCC,
	cin => \inst8|Add0~19\,
	combout => \inst8|Add0~20_combout\,
	cout => \inst8|Add0~21\);

-- Location: LCCOMB_X17_Y16_N12
\inst8|COUNT~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|COUNT~4_combout\ = (!\inst8|Equal0~10_combout\ & \inst8|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|Equal0~10_combout\,
	datad => \inst8|Add0~20_combout\,
	combout => \inst8|COUNT~4_combout\);

-- Location: FF_X17_Y16_N13
\inst8|COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|COUNT~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|COUNT\(10));

-- Location: LCCOMB_X16_Y16_N22
\inst8|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~22_combout\ = (\inst8|COUNT\(11) & (!\inst8|Add0~21\)) # (!\inst8|COUNT\(11) & ((\inst8|Add0~21\) # (GND)))
-- \inst8|Add0~23\ = CARRY((!\inst8|Add0~21\) # (!\inst8|COUNT\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|COUNT\(11),
	datad => VCC,
	cin => \inst8|Add0~21\,
	combout => \inst8|Add0~22_combout\,
	cout => \inst8|Add0~23\);

-- Location: FF_X16_Y16_N23
\inst8|COUNT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|COUNT\(11));

-- Location: LCCOMB_X16_Y16_N24
\inst8|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~24_combout\ = (\inst8|COUNT\(12) & (\inst8|Add0~23\ $ (GND))) # (!\inst8|COUNT\(12) & (!\inst8|Add0~23\ & VCC))
-- \inst8|Add0~25\ = CARRY((\inst8|COUNT\(12) & !\inst8|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|COUNT\(12),
	datad => VCC,
	cin => \inst8|Add0~23\,
	combout => \inst8|Add0~24_combout\,
	cout => \inst8|Add0~25\);

-- Location: FF_X16_Y16_N25
\inst8|COUNT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|COUNT\(12));

-- Location: LCCOMB_X16_Y16_N26
\inst8|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~26_combout\ = (\inst8|COUNT\(13) & (!\inst8|Add0~25\)) # (!\inst8|COUNT\(13) & ((\inst8|Add0~25\) # (GND)))
-- \inst8|Add0~27\ = CARRY((!\inst8|Add0~25\) # (!\inst8|COUNT\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|COUNT\(13),
	datad => VCC,
	cin => \inst8|Add0~25\,
	combout => \inst8|Add0~26_combout\,
	cout => \inst8|Add0~27\);

-- Location: LCCOMB_X17_Y16_N4
\inst8|COUNT~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|COUNT~5_combout\ = (!\inst8|Equal0~10_combout\ & \inst8|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|Equal0~10_combout\,
	datac => \inst8|Add0~26_combout\,
	combout => \inst8|COUNT~5_combout\);

-- Location: FF_X17_Y16_N5
\inst8|COUNT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|COUNT~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|COUNT\(13));

-- Location: LCCOMB_X16_Y16_N28
\inst8|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~28_combout\ = (\inst8|COUNT\(14) & (\inst8|Add0~27\ $ (GND))) # (!\inst8|COUNT\(14) & (!\inst8|Add0~27\ & VCC))
-- \inst8|Add0~29\ = CARRY((\inst8|COUNT\(14) & !\inst8|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|COUNT\(14),
	datad => VCC,
	cin => \inst8|Add0~27\,
	combout => \inst8|Add0~28_combout\,
	cout => \inst8|Add0~29\);

-- Location: FF_X16_Y16_N29
\inst8|COUNT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|COUNT\(14));

-- Location: LCCOMB_X16_Y16_N30
\inst8|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~30_combout\ = (\inst8|COUNT\(15) & (!\inst8|Add0~29\)) # (!\inst8|COUNT\(15) & ((\inst8|Add0~29\) # (GND)))
-- \inst8|Add0~31\ = CARRY((!\inst8|Add0~29\) # (!\inst8|COUNT\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|COUNT\(15),
	datad => VCC,
	cin => \inst8|Add0~29\,
	combout => \inst8|Add0~30_combout\,
	cout => \inst8|Add0~31\);

-- Location: FF_X16_Y16_N31
\inst8|COUNT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|COUNT\(15));

-- Location: LCCOMB_X16_Y15_N0
\inst8|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~32_combout\ = (\inst8|COUNT\(16) & (\inst8|Add0~31\ $ (GND))) # (!\inst8|COUNT\(16) & (!\inst8|Add0~31\ & VCC))
-- \inst8|Add0~33\ = CARRY((\inst8|COUNT\(16) & !\inst8|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|COUNT\(16),
	datad => VCC,
	cin => \inst8|Add0~31\,
	combout => \inst8|Add0~32_combout\,
	cout => \inst8|Add0~33\);

-- Location: FF_X16_Y15_N1
\inst8|COUNT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|COUNT\(16));

-- Location: LCCOMB_X16_Y15_N2
\inst8|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~34_combout\ = (\inst8|COUNT\(17) & (!\inst8|Add0~33\)) # (!\inst8|COUNT\(17) & ((\inst8|Add0~33\) # (GND)))
-- \inst8|Add0~35\ = CARRY((!\inst8|Add0~33\) # (!\inst8|COUNT\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|COUNT\(17),
	datad => VCC,
	cin => \inst8|Add0~33\,
	combout => \inst8|Add0~34_combout\,
	cout => \inst8|Add0~35\);

-- Location: FF_X16_Y15_N3
\inst8|COUNT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|COUNT\(17));

-- Location: LCCOMB_X16_Y15_N4
\inst8|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~36_combout\ = (\inst8|COUNT\(18) & (\inst8|Add0~35\ $ (GND))) # (!\inst8|COUNT\(18) & (!\inst8|Add0~35\ & VCC))
-- \inst8|Add0~37\ = CARRY((\inst8|COUNT\(18) & !\inst8|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|COUNT\(18),
	datad => VCC,
	cin => \inst8|Add0~35\,
	combout => \inst8|Add0~36_combout\,
	cout => \inst8|Add0~37\);

-- Location: FF_X16_Y15_N5
\inst8|COUNT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|COUNT\(18));

-- Location: LCCOMB_X16_Y15_N6
\inst8|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~38_combout\ = (\inst8|COUNT\(19) & (!\inst8|Add0~37\)) # (!\inst8|COUNT\(19) & ((\inst8|Add0~37\) # (GND)))
-- \inst8|Add0~39\ = CARRY((!\inst8|Add0~37\) # (!\inst8|COUNT\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|COUNT\(19),
	datad => VCC,
	cin => \inst8|Add0~37\,
	combout => \inst8|Add0~38_combout\,
	cout => \inst8|Add0~39\);

-- Location: FF_X16_Y15_N7
\inst8|COUNT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|COUNT\(19));

-- Location: LCCOMB_X16_Y15_N8
\inst8|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~40_combout\ = (\inst8|COUNT\(20) & (\inst8|Add0~39\ $ (GND))) # (!\inst8|COUNT\(20) & (!\inst8|Add0~39\ & VCC))
-- \inst8|Add0~41\ = CARRY((\inst8|COUNT\(20) & !\inst8|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|COUNT\(20),
	datad => VCC,
	cin => \inst8|Add0~39\,
	combout => \inst8|Add0~40_combout\,
	cout => \inst8|Add0~41\);

-- Location: FF_X16_Y15_N9
\inst8|COUNT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|COUNT\(20));

-- Location: LCCOMB_X16_Y15_N10
\inst8|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~42_combout\ = (\inst8|COUNT\(21) & (!\inst8|Add0~41\)) # (!\inst8|COUNT\(21) & ((\inst8|Add0~41\) # (GND)))
-- \inst8|Add0~43\ = CARRY((!\inst8|Add0~41\) # (!\inst8|COUNT\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|COUNT\(21),
	datad => VCC,
	cin => \inst8|Add0~41\,
	combout => \inst8|Add0~42_combout\,
	cout => \inst8|Add0~43\);

-- Location: FF_X16_Y15_N11
\inst8|COUNT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|COUNT\(21));

-- Location: LCCOMB_X16_Y15_N12
\inst8|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~44_combout\ = (\inst8|COUNT\(22) & (\inst8|Add0~43\ $ (GND))) # (!\inst8|COUNT\(22) & (!\inst8|Add0~43\ & VCC))
-- \inst8|Add0~45\ = CARRY((\inst8|COUNT\(22) & !\inst8|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|COUNT\(22),
	datad => VCC,
	cin => \inst8|Add0~43\,
	combout => \inst8|Add0~44_combout\,
	cout => \inst8|Add0~45\);

-- Location: FF_X16_Y15_N13
\inst8|COUNT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|COUNT\(22));

-- Location: LCCOMB_X16_Y15_N14
\inst8|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~46_combout\ = (\inst8|COUNT\(23) & (!\inst8|Add0~45\)) # (!\inst8|COUNT\(23) & ((\inst8|Add0~45\) # (GND)))
-- \inst8|Add0~47\ = CARRY((!\inst8|Add0~45\) # (!\inst8|COUNT\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|COUNT\(23),
	datad => VCC,
	cin => \inst8|Add0~45\,
	combout => \inst8|Add0~46_combout\,
	cout => \inst8|Add0~47\);

-- Location: FF_X16_Y15_N15
\inst8|COUNT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|COUNT\(23));

-- Location: LCCOMB_X16_Y15_N16
\inst8|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~48_combout\ = (\inst8|COUNT\(24) & (\inst8|Add0~47\ $ (GND))) # (!\inst8|COUNT\(24) & (!\inst8|Add0~47\ & VCC))
-- \inst8|Add0~49\ = CARRY((\inst8|COUNT\(24) & !\inst8|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|COUNT\(24),
	datad => VCC,
	cin => \inst8|Add0~47\,
	combout => \inst8|Add0~48_combout\,
	cout => \inst8|Add0~49\);

-- Location: FF_X16_Y15_N17
\inst8|COUNT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|COUNT\(24));

-- Location: LCCOMB_X16_Y15_N18
\inst8|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~50_combout\ = (\inst8|COUNT\(25) & (!\inst8|Add0~49\)) # (!\inst8|COUNT\(25) & ((\inst8|Add0~49\) # (GND)))
-- \inst8|Add0~51\ = CARRY((!\inst8|Add0~49\) # (!\inst8|COUNT\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|COUNT\(25),
	datad => VCC,
	cin => \inst8|Add0~49\,
	combout => \inst8|Add0~50_combout\,
	cout => \inst8|Add0~51\);

-- Location: FF_X16_Y15_N19
\inst8|COUNT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|COUNT\(25));

-- Location: LCCOMB_X16_Y15_N20
\inst8|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~52_combout\ = (\inst8|COUNT\(26) & (\inst8|Add0~51\ $ (GND))) # (!\inst8|COUNT\(26) & (!\inst8|Add0~51\ & VCC))
-- \inst8|Add0~53\ = CARRY((\inst8|COUNT\(26) & !\inst8|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|COUNT\(26),
	datad => VCC,
	cin => \inst8|Add0~51\,
	combout => \inst8|Add0~52_combout\,
	cout => \inst8|Add0~53\);

-- Location: FF_X16_Y15_N21
\inst8|COUNT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|COUNT\(26));

-- Location: LCCOMB_X16_Y15_N22
\inst8|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~54_combout\ = (\inst8|COUNT\(27) & (!\inst8|Add0~53\)) # (!\inst8|COUNT\(27) & ((\inst8|Add0~53\) # (GND)))
-- \inst8|Add0~55\ = CARRY((!\inst8|Add0~53\) # (!\inst8|COUNT\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|COUNT\(27),
	datad => VCC,
	cin => \inst8|Add0~53\,
	combout => \inst8|Add0~54_combout\,
	cout => \inst8|Add0~55\);

-- Location: FF_X16_Y15_N23
\inst8|COUNT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|COUNT\(27));

-- Location: LCCOMB_X16_Y15_N24
\inst8|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~56_combout\ = (\inst8|COUNT\(28) & (\inst8|Add0~55\ $ (GND))) # (!\inst8|COUNT\(28) & (!\inst8|Add0~55\ & VCC))
-- \inst8|Add0~57\ = CARRY((\inst8|COUNT\(28) & !\inst8|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|COUNT\(28),
	datad => VCC,
	cin => \inst8|Add0~55\,
	combout => \inst8|Add0~56_combout\,
	cout => \inst8|Add0~57\);

-- Location: FF_X16_Y15_N25
\inst8|COUNT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|COUNT\(28));

-- Location: LCCOMB_X16_Y15_N26
\inst8|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~58_combout\ = (\inst8|COUNT\(29) & (!\inst8|Add0~57\)) # (!\inst8|COUNT\(29) & ((\inst8|Add0~57\) # (GND)))
-- \inst8|Add0~59\ = CARRY((!\inst8|Add0~57\) # (!\inst8|COUNT\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|COUNT\(29),
	datad => VCC,
	cin => \inst8|Add0~57\,
	combout => \inst8|Add0~58_combout\,
	cout => \inst8|Add0~59\);

-- Location: FF_X16_Y15_N27
\inst8|COUNT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|COUNT\(29));

-- Location: LCCOMB_X16_Y15_N28
\inst8|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~60_combout\ = (\inst8|COUNT\(30) & (\inst8|Add0~59\ $ (GND))) # (!\inst8|COUNT\(30) & (!\inst8|Add0~59\ & VCC))
-- \inst8|Add0~61\ = CARRY((\inst8|COUNT\(30) & !\inst8|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|COUNT\(30),
	datad => VCC,
	cin => \inst8|Add0~59\,
	combout => \inst8|Add0~60_combout\,
	cout => \inst8|Add0~61\);

-- Location: FF_X16_Y15_N29
\inst8|COUNT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|COUNT\(30));

-- Location: LCCOMB_X16_Y15_N30
\inst8|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~62_combout\ = \inst8|COUNT\(31) $ (\inst8|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|COUNT\(31),
	cin => \inst8|Add0~61\,
	combout => \inst8|Add0~62_combout\);

-- Location: FF_X16_Y15_N31
\inst8|COUNT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|COUNT\(31));

-- Location: LCCOMB_X16_Y13_N12
\inst8|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~9_combout\ = (!\inst8|COUNT\(28) & (!\inst8|COUNT\(30) & (!\inst8|COUNT\(29) & !\inst8|COUNT\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|COUNT\(28),
	datab => \inst8|COUNT\(30),
	datac => \inst8|COUNT\(29),
	datad => \inst8|COUNT\(31),
	combout => \inst8|Equal0~9_combout\);

-- Location: LCCOMB_X16_Y13_N8
\inst8|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~8_combout\ = (!\inst8|COUNT\(25) & (!\inst8|COUNT\(24) & (!\inst8|COUNT\(27) & !\inst8|COUNT\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|COUNT\(25),
	datab => \inst8|COUNT\(24),
	datac => \inst8|COUNT\(27),
	datad => \inst8|COUNT\(26),
	combout => \inst8|Equal0~8_combout\);

-- Location: LCCOMB_X16_Y13_N26
\inst8|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~6_combout\ = (!\inst8|COUNT\(21) & (!\inst8|COUNT\(20) & (!\inst8|COUNT\(23) & !\inst8|COUNT\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|COUNT\(21),
	datab => \inst8|COUNT\(20),
	datac => \inst8|COUNT\(23),
	datad => \inst8|COUNT\(22),
	combout => \inst8|Equal0~6_combout\);

-- Location: LCCOMB_X16_Y13_N2
\inst8|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~5_combout\ = (!\inst8|COUNT\(17) & (!\inst8|COUNT\(19) & (!\inst8|COUNT\(16) & !\inst8|COUNT\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|COUNT\(17),
	datab => \inst8|COUNT\(19),
	datac => \inst8|COUNT\(16),
	datad => \inst8|COUNT\(18),
	combout => \inst8|Equal0~5_combout\);

-- Location: LCCOMB_X16_Y13_N14
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

-- Location: LCCOMB_X17_Y16_N26
\inst8|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~1_combout\ = (!\inst8|COUNT\(7) & (\inst8|COUNT\(4) & (!\inst8|COUNT\(6) & !\inst8|COUNT\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|COUNT\(7),
	datab => \inst8|COUNT\(4),
	datac => \inst8|COUNT\(6),
	datad => \inst8|COUNT\(5),
	combout => \inst8|Equal0~1_combout\);

-- Location: LCCOMB_X17_Y16_N14
\inst8|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~2_combout\ = (\inst8|COUNT\(10) & (\inst8|COUNT\(8) & (\inst8|COUNT\(9) & !\inst8|COUNT\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|COUNT\(10),
	datab => \inst8|COUNT\(8),
	datac => \inst8|COUNT\(9),
	datad => \inst8|COUNT\(11),
	combout => \inst8|Equal0~2_combout\);

-- Location: LCCOMB_X17_Y16_N22
\inst8|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~3_combout\ = (\inst8|COUNT\(13) & (!\inst8|COUNT\(14) & (!\inst8|COUNT\(15) & !\inst8|COUNT\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|COUNT\(13),
	datab => \inst8|COUNT\(14),
	datac => \inst8|COUNT\(15),
	datad => \inst8|COUNT\(12),
	combout => \inst8|Equal0~3_combout\);

-- Location: LCCOMB_X17_Y16_N2
\inst8|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~0_combout\ = (!\inst8|COUNT\(0) & (!\inst8|COUNT\(3) & (!\inst8|COUNT\(2) & !\inst8|COUNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|COUNT\(0),
	datab => \inst8|COUNT\(3),
	datac => \inst8|COUNT\(2),
	datad => \inst8|COUNT\(1),
	combout => \inst8|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y16_N28
\inst8|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~4_combout\ = (\inst8|Equal0~1_combout\ & (\inst8|Equal0~2_combout\ & (\inst8|Equal0~3_combout\ & \inst8|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Equal0~1_combout\,
	datab => \inst8|Equal0~2_combout\,
	datac => \inst8|Equal0~3_combout\,
	datad => \inst8|Equal0~0_combout\,
	combout => \inst8|Equal0~4_combout\);

-- Location: LCCOMB_X16_Y13_N10
\inst8|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~10_combout\ = (\inst8|Equal0~9_combout\ & (\inst8|Equal0~8_combout\ & (\inst8|Equal0~7_combout\ & \inst8|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Equal0~9_combout\,
	datab => \inst8|Equal0~8_combout\,
	datac => \inst8|Equal0~7_combout\,
	datad => \inst8|Equal0~4_combout\,
	combout => \inst8|Equal0~10_combout\);

-- Location: FF_X16_Y13_N7
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

-- Location: LCCOMB_X16_Y13_N30
\inst8|tx[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|tx[3]~feeder_combout\ = \inst8|tx\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|tx\(4),
	combout => \inst8|tx[3]~feeder_combout\);

-- Location: FF_X16_Y13_N31
\inst8|tx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|tx[3]~feeder_combout\,
	ena => \inst8|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|tx\(3));

-- Location: FF_X16_Y13_N23
\inst8|tx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst8|tx\(3),
	sload => VCC,
	ena => \inst8|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|tx\(2));

-- Location: FF_X16_Y13_N19
\inst8|tx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst8|tx\(2),
	sload => VCC,
	ena => \inst8|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|tx\(1));

-- Location: LCCOMB_X16_Y13_N16
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

-- Location: FF_X16_Y13_N17
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

-- Location: LCCOMB_X16_Y13_N20
\inst8|tx[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|tx[5]~0_combout\ = !\inst8|tx\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|tx\(0),
	combout => \inst8|tx[5]~0_combout\);

-- Location: FF_X16_Y13_N21
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

-- Location: LCCOMB_X14_Y10_N16
\inst11|hour~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|hour~0_combout\ = (\inst11|i[31]~17_combout\ & (((\inst11|hour~q\)))) # (!\inst11|i[31]~17_combout\ & (!\inst11|Equal1~13_combout\ & ((\inst11|hour~q\) # (\inst11|minute~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal1~13_combout\,
	datab => \inst11|i[31]~17_combout\,
	datac => \inst11|hour~q\,
	datad => \inst11|minute~1_combout\,
	combout => \inst11|hour~0_combout\);

-- Location: FF_X14_Y10_N17
\inst11|hour\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst11|hour~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|hour~q\);

-- Location: LCCOMB_X11_Y13_N10
\inst1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~0_combout\ = (!\inst1|LessThan0~0_combout\ & (\inst1|data\(6) & ((\inst1|data\(4)) # (\inst1|data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data\(4),
	datab => \inst1|data\(5),
	datac => \inst1|LessThan0~0_combout\,
	datad => \inst1|data\(6),
	combout => \inst1|process_0~0_combout\);

-- Location: FF_X11_Y13_N11
\inst1|C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6~clkctrl_outclk\,
	d => \inst1|process_0~0_combout\,
	ena => \inst1|C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|C~q\);

-- Location: LCCOMB_X11_Y13_N2
inst5 : cycloneive_lcell_comb
-- Equation(s):
-- \inst5~combout\ = LCELL(\inst11|hour~q\ $ (\inst1|C~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|hour~q\,
	datad => \inst1|C~q\,
	combout => \inst5~combout\);

-- Location: CLKCTRL_G1
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

-- Location: LCCOMB_X12_Y12_N4
\inst2|data~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|data~6_combout\ = (!\inst2|data\(3) & (\inst2|data\(2) $ (((\inst2|data\(1) & \inst2|data\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data\(1),
	datab => \inst2|data\(0),
	datac => \inst2|data\(2),
	datad => \inst2|data\(3),
	combout => \inst2|data~6_combout\);

-- Location: FF_X12_Y12_N5
\inst2|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5~clkctrl_outclk\,
	d => \inst2|data~6_combout\,
	clrn => \inst2|ALT_INV_data[7]~1_combout\,
	ena => \inst11|pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(2));

-- Location: LCCOMB_X12_Y12_N14
\inst2|data~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|data~5_combout\ = (\inst2|data\(1) & (\inst2|data\(0) & (!\inst2|data\(3) & \inst2|data\(2)))) # (!\inst2|data\(1) & (!\inst2|data\(0) & (\inst2|data\(3) & !\inst2|data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data\(1),
	datab => \inst2|data\(0),
	datac => \inst2|data\(3),
	datad => \inst2|data\(2),
	combout => \inst2|data~5_combout\);

-- Location: FF_X12_Y12_N15
\inst2|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5~clkctrl_outclk\,
	d => \inst2|data~5_combout\,
	clrn => \inst2|ALT_INV_data[7]~1_combout\,
	ena => \inst11|pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(3));

-- Location: LCCOMB_X12_Y12_N28
\inst2|data~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|data~8_combout\ = (!\inst2|data\(0) & (((!\inst2|data\(1) & !\inst2|data\(2))) # (!\inst2|data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data\(1),
	datab => \inst2|data\(3),
	datac => \inst2|data\(0),
	datad => \inst2|data\(2),
	combout => \inst2|data~8_combout\);

-- Location: FF_X12_Y12_N29
\inst2|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5~clkctrl_outclk\,
	d => \inst2|data~8_combout\,
	clrn => \inst2|ALT_INV_data[7]~1_combout\,
	ena => \inst11|pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(0));

-- Location: LCCOMB_X12_Y12_N30
\inst2|data~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|data~7_combout\ = (!\inst2|data\(3) & (\inst2|data\(0) $ (\inst2|data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|data\(0),
	datac => \inst2|data\(1),
	datad => \inst2|data\(3),
	combout => \inst2|data~7_combout\);

-- Location: FF_X12_Y12_N31
\inst2|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5~clkctrl_outclk\,
	d => \inst2|data~7_combout\,
	clrn => \inst2|ALT_INV_data[7]~1_combout\,
	ena => \inst11|pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(1));

-- Location: LCCOMB_X12_Y12_N18
\inst2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~0_combout\ = ((!\inst2|data\(1) & (!\inst2|data\(2) & !\inst2|data\(0)))) # (!\inst2|data\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data\(1),
	datab => \inst2|data\(2),
	datac => \inst2|data\(3),
	datad => \inst2|data\(0),
	combout => \inst2|LessThan0~0_combout\);

-- Location: LCCOMB_X12_Y12_N24
\inst2|data~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|data~4_combout\ = (!\inst2|data\(4) & (((\inst2|LessThan0~0_combout\) # (!\inst2|data\(6))) # (!\inst2|data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data\(5),
	datab => \inst2|data\(6),
	datac => \inst2|data\(4),
	datad => \inst2|LessThan0~0_combout\,
	combout => \inst2|data~4_combout\);

-- Location: LCCOMB_X12_Y12_N26
\inst2|data[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|data[6]~2_combout\ = (\inst11|pause~q\ & !\inst2|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|pause~q\,
	datad => \inst2|LessThan0~0_combout\,
	combout => \inst2|data[6]~2_combout\);

-- Location: FF_X12_Y12_N25
\inst2|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5~clkctrl_outclk\,
	d => \inst2|data~4_combout\,
	clrn => \inst2|ALT_INV_data[7]~1_combout\,
	ena => \inst2|data[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(4));

-- Location: LCCOMB_X12_Y12_N22
\inst2|data~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|data~3_combout\ = (\inst2|data\(6) & (\inst2|LessThan0~0_combout\ & (\inst2|data\(4) $ (\inst2|data\(5))))) # (!\inst2|data\(6) & (\inst2|data\(4) $ ((\inst2|data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data\(4),
	datab => \inst2|data\(6),
	datac => \inst2|data\(5),
	datad => \inst2|LessThan0~0_combout\,
	combout => \inst2|data~3_combout\);

-- Location: FF_X12_Y12_N23
\inst2|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5~clkctrl_outclk\,
	d => \inst2|data~3_combout\,
	clrn => \inst2|ALT_INV_data[7]~1_combout\,
	ena => \inst2|data[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(5));

-- Location: LCCOMB_X12_Y12_N16
\inst2|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|data~0_combout\ = (\inst2|data\(5) & ((\inst2|data\(4) & (!\inst2|data\(6))) # (!\inst2|data\(4) & (\inst2|data\(6) & \inst2|LessThan0~0_combout\)))) # (!\inst2|data\(5) & (\inst2|data\(6) & ((\inst2|LessThan0~0_combout\) # (!\inst2|data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data\(5),
	datab => \inst2|data\(4),
	datac => \inst2|data\(6),
	datad => \inst2|LessThan0~0_combout\,
	combout => \inst2|data~0_combout\);

-- Location: FF_X12_Y12_N17
\inst2|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5~clkctrl_outclk\,
	d => \inst2|data~0_combout\,
	clrn => \inst2|ALT_INV_data[7]~1_combout\,
	ena => \inst2|data[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(6));

-- Location: LCCOMB_X11_Y13_N0
\inst8|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux0~0_combout\ = (\inst1|data\(0) & ((\inst1|data\(3)) # (\inst1|data\(1) $ (\inst1|data\(2))))) # (!\inst1|data\(0) & ((\inst1|data\(1)) # (\inst1|data\(3) $ (\inst1|data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data\(3),
	datab => \inst1|data\(0),
	datac => \inst1|data\(1),
	datad => \inst1|data\(2),
	combout => \inst8|Mux0~0_combout\);

-- Location: LCCOMB_X16_Y13_N18
\inst8|tem[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|tem[3]~0_combout\ = (!\inst8|tx\(3) & ((\inst8|tx\(2)) # ((\inst8|tx\(1)) # (\inst8|tx\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|tx\(2),
	datab => \inst8|tx\(3),
	datac => \inst8|tx\(1),
	datad => \inst8|tx\(5),
	combout => \inst8|tem[3]~0_combout\);

-- Location: LCCOMB_X14_Y12_N22
\inst8|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux21~0_combout\ = (\inst|data\(5) & ((!\inst|data\(6)) # (!\inst|data\(4)))) # (!\inst|data\(5) & ((\inst|data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|data\(4),
	datac => \inst|data\(5),
	datad => \inst|data\(6),
	combout => \inst8|Mux21~0_combout\);

-- Location: LCCOMB_X16_Y13_N22
\inst8|tem[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|tem[3]~1_combout\ = (!\inst8|tx\(3) & !\inst8|tx\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|tx\(3),
	datac => \inst8|tx\(2),
	combout => \inst8|tem[3]~1_combout\);

-- Location: LCCOMB_X12_Y13_N8
\inst8|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux7~0_combout\ = (\inst1|data\(6) & ((!\inst1|data\(5)) # (!\inst1|data\(4)))) # (!\inst1|data\(6) & ((\inst1|data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data\(6),
	datab => \inst1|data\(4),
	datad => \inst1|data\(5),
	combout => \inst8|Mux7~0_combout\);

-- Location: LCCOMB_X13_Y13_N22
\inst8|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux14~0_combout\ = (\inst|data\(0) & ((\inst|data\(3)) # (\inst|data\(2) $ (\inst|data\(1))))) # (!\inst|data\(0) & ((\inst|data\(1)) # (\inst|data\(2) $ (\inst|data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(2),
	datab => \inst|data\(0),
	datac => \inst|data\(1),
	datad => \inst|data\(3),
	combout => \inst8|Mux14~0_combout\);

-- Location: LCCOMB_X12_Y13_N10
\inst8|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux29~0_combout\ = (\inst8|tem[3]~1_combout\ & ((\inst8|tem[3]~0_combout\) # ((!\inst8|Mux14~0_combout\)))) # (!\inst8|tem[3]~1_combout\ & (!\inst8|tem[3]~0_combout\ & (!\inst8|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|tem[3]~1_combout\,
	datab => \inst8|tem[3]~0_combout\,
	datac => \inst8|Mux7~0_combout\,
	datad => \inst8|Mux14~0_combout\,
	combout => \inst8|Mux29~0_combout\);

-- Location: LCCOMB_X12_Y13_N18
\inst8|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux29~1_combout\ = (\inst8|tem[3]~0_combout\ & ((\inst8|Mux29~0_combout\ & ((!\inst8|Mux21~0_combout\))) # (!\inst8|Mux29~0_combout\ & (!\inst8|Mux0~0_combout\)))) # (!\inst8|tem[3]~0_combout\ & (((\inst8|Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux0~0_combout\,
	datab => \inst8|tem[3]~0_combout\,
	datac => \inst8|Mux21~0_combout\,
	datad => \inst8|Mux29~0_combout\,
	combout => \inst8|Mux29~1_combout\);

-- Location: LCCOMB_X16_Y13_N24
\inst8|tem[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|tem[6]~2_combout\ = (!\inst8|tx\(2) & (!\inst8|tx\(5) & (\inst8|tx\(0) & !\inst8|tx\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|tx\(2),
	datab => \inst8|tx\(5),
	datac => \inst8|tx\(0),
	datad => \inst8|tx\(1),
	combout => \inst8|tem[6]~2_combout\);

-- Location: LCCOMB_X16_Y13_N28
\inst8|tem[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|tem[6]~3_combout\ = (\inst8|tx\(2) & (!\inst8|tx\(5) & (\inst8|tx\(0) & !\inst8|tx\(1)))) # (!\inst8|tx\(2) & ((\inst8|tx\(5) & (\inst8|tx\(0) & !\inst8|tx\(1))) # (!\inst8|tx\(5) & (\inst8|tx\(0) $ (!\inst8|tx\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|tx\(2),
	datab => \inst8|tx\(5),
	datac => \inst8|tx\(0),
	datad => \inst8|tx\(1),
	combout => \inst8|tem[6]~3_combout\);

-- Location: LCCOMB_X16_Y13_N4
\inst8|tem[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|tem[6]~4_combout\ = (\inst8|tx\(4) & (\inst8|tem[6]~2_combout\ & (!\inst8|tx\(3)))) # (!\inst8|tx\(4) & ((\inst8|tx\(3) & (\inst8|tem[6]~2_combout\)) # (!\inst8|tx\(3) & ((\inst8|tem[6]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|tx\(4),
	datab => \inst8|tem[6]~2_combout\,
	datac => \inst8|tx\(3),
	datad => \inst8|tem[6]~3_combout\,
	combout => \inst8|tem[6]~4_combout\);

-- Location: LCCOMB_X16_Y13_N0
\inst8|tem[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|tem[6]~5_combout\ = (\inst8|tem[6]~4_combout\ & \inst8|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|tem[6]~4_combout\,
	datad => \inst8|Equal0~10_combout\,
	combout => \inst8|tem[6]~5_combout\);

-- Location: FF_X12_Y13_N19
\inst8|tem[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Mux29~1_combout\,
	ena => \inst8|tem[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|tem\(6));

-- Location: LCCOMB_X13_Y13_N0
\inst8|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux15~0_combout\ = (\inst|data\(2) & (\inst|data\(0) & (\inst|data\(1) $ (\inst|data\(3))))) # (!\inst|data\(2) & (!\inst|data\(3) & ((\inst|data\(1)) # (\inst|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(2),
	datab => \inst|data\(1),
	datac => \inst|data\(0),
	datad => \inst|data\(3),
	combout => \inst8|Mux15~0_combout\);

-- Location: LCCOMB_X11_Y13_N20
\inst8|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux1~0_combout\ = (\inst1|data\(1) & (!\inst1|data\(3) & ((\inst1|data\(0)) # (!\inst1|data\(2))))) # (!\inst1|data\(1) & (\inst1|data\(0) & (\inst1|data\(3) $ (!\inst1|data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data\(1),
	datab => \inst1|data\(3),
	datac => \inst1|data\(2),
	datad => \inst1|data\(0),
	combout => \inst8|Mux1~0_combout\);

-- Location: LCCOMB_X12_Y13_N28
\inst8|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux8~0_combout\ = (\inst1|data\(4) & ((\inst1|data\(5)) # (!\inst1|data\(6)))) # (!\inst1|data\(4) & (\inst1|data\(5) & !\inst1|data\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|data\(4),
	datac => \inst1|data\(5),
	datad => \inst1|data\(6),
	combout => \inst8|Mux8~0_combout\);

-- Location: LCCOMB_X14_Y13_N14
\inst8|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux30~0_combout\ = (\inst8|tem[3]~1_combout\ & (\inst8|tem[3]~0_combout\)) # (!\inst8|tem[3]~1_combout\ & ((\inst8|tem[3]~0_combout\ & (\inst8|Mux1~0_combout\)) # (!\inst8|tem[3]~0_combout\ & ((\inst8|Mux8~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|tem[3]~1_combout\,
	datab => \inst8|tem[3]~0_combout\,
	datac => \inst8|Mux1~0_combout\,
	datad => \inst8|Mux8~0_combout\,
	combout => \inst8|Mux30~0_combout\);

-- Location: LCCOMB_X14_Y12_N6
\inst8|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux22~0_combout\ = (\inst|data\(6) & (\inst|data\(5) & \inst|data\(4))) # (!\inst|data\(6) & ((\inst|data\(5)) # (\inst|data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(6),
	datac => \inst|data\(5),
	datad => \inst|data\(4),
	combout => \inst8|Mux22~0_combout\);

-- Location: LCCOMB_X14_Y13_N0
\inst8|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux30~1_combout\ = (\inst8|tem[3]~1_combout\ & ((\inst8|Mux30~0_combout\ & ((\inst8|Mux22~0_combout\))) # (!\inst8|Mux30~0_combout\ & (\inst8|Mux15~0_combout\)))) # (!\inst8|tem[3]~1_combout\ & (((\inst8|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux15~0_combout\,
	datab => \inst8|tem[3]~1_combout\,
	datac => \inst8|Mux30~0_combout\,
	datad => \inst8|Mux22~0_combout\,
	combout => \inst8|Mux30~1_combout\);

-- Location: FF_X14_Y13_N1
\inst8|tem[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Mux30~1_combout\,
	ena => \inst8|tem[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|tem\(5));

-- Location: LCCOMB_X11_Y13_N22
\inst8|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux2~0_combout\ = (\inst1|data\(1) & (\inst1|data\(0) & (!\inst1|data\(3)))) # (!\inst1|data\(1) & ((\inst1|data\(2) & ((!\inst1|data\(3)))) # (!\inst1|data\(2) & (\inst1|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data\(1),
	datab => \inst1|data\(0),
	datac => \inst1|data\(3),
	datad => \inst1|data\(2),
	combout => \inst8|Mux2~0_combout\);

-- Location: LCCOMB_X12_Y13_N6
\inst8|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux9~0_combout\ = (\inst1|data\(4)) # ((\inst1|data\(6) & !\inst1|data\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data\(6),
	datab => \inst1|data\(4),
	datac => \inst1|data\(5),
	combout => \inst8|Mux9~0_combout\);

-- Location: LCCOMB_X13_Y13_N18
\inst8|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux16~0_combout\ = (\inst|data\(1) & (((\inst|data\(0) & !\inst|data\(3))))) # (!\inst|data\(1) & ((\inst|data\(2) & ((!\inst|data\(3)))) # (!\inst|data\(2) & (\inst|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(2),
	datab => \inst|data\(1),
	datac => \inst|data\(0),
	datad => \inst|data\(3),
	combout => \inst8|Mux16~0_combout\);

-- Location: LCCOMB_X13_Y13_N8
\inst8|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux31~0_combout\ = (\inst8|tem[3]~1_combout\ & ((\inst8|tem[3]~0_combout\) # ((\inst8|Mux16~0_combout\)))) # (!\inst8|tem[3]~1_combout\ & (!\inst8|tem[3]~0_combout\ & (\inst8|Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|tem[3]~1_combout\,
	datab => \inst8|tem[3]~0_combout\,
	datac => \inst8|Mux9~0_combout\,
	datad => \inst8|Mux16~0_combout\,
	combout => \inst8|Mux31~0_combout\);

-- Location: LCCOMB_X14_Y12_N4
\inst8|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux23~0_combout\ = (\inst|data\(4)) # ((!\inst|data\(5) & \inst|data\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|data\(4),
	datac => \inst|data\(5),
	datad => \inst|data\(6),
	combout => \inst8|Mux23~0_combout\);

-- Location: LCCOMB_X13_Y13_N28
\inst8|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux31~1_combout\ = (\inst8|tem[3]~0_combout\ & ((\inst8|Mux31~0_combout\ & ((\inst8|Mux23~0_combout\))) # (!\inst8|Mux31~0_combout\ & (\inst8|Mux2~0_combout\)))) # (!\inst8|tem[3]~0_combout\ & (((\inst8|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux2~0_combout\,
	datab => \inst8|tem[3]~0_combout\,
	datac => \inst8|Mux31~0_combout\,
	datad => \inst8|Mux23~0_combout\,
	combout => \inst8|Mux31~1_combout\);

-- Location: FF_X13_Y13_N29
\inst8|tem[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Mux31~1_combout\,
	ena => \inst8|tem[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|tem\(4));

-- Location: LCCOMB_X11_Y13_N16
\inst8|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux3~0_combout\ = (\inst1|data\(0) & ((\inst1|data\(1) $ (!\inst1|data\(2))))) # (!\inst1|data\(0) & ((\inst1|data\(3) & (\inst1|data\(1) & !\inst1|data\(2))) # (!\inst1|data\(3) & (!\inst1|data\(1) & \inst1|data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data\(3),
	datab => \inst1|data\(0),
	datac => \inst1|data\(1),
	datad => \inst1|data\(2),
	combout => \inst8|Mux3~0_combout\);

-- Location: LCCOMB_X12_Y13_N20
\inst8|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux10~0_combout\ = (\inst1|data\(6) & (\inst1|data\(4) $ (!\inst1|data\(5)))) # (!\inst1|data\(6) & (\inst1|data\(4) & !\inst1|data\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data\(6),
	datab => \inst1|data\(4),
	datad => \inst1|data\(5),
	combout => \inst8|Mux10~0_combout\);

-- Location: LCCOMB_X12_Y13_N2
\inst8|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux32~0_combout\ = (\inst8|tem[3]~1_combout\ & (\inst8|tem[3]~0_combout\)) # (!\inst8|tem[3]~1_combout\ & ((\inst8|tem[3]~0_combout\ & (\inst8|Mux3~0_combout\)) # (!\inst8|tem[3]~0_combout\ & ((\inst8|Mux10~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|tem[3]~1_combout\,
	datab => \inst8|tem[3]~0_combout\,
	datac => \inst8|Mux3~0_combout\,
	datad => \inst8|Mux10~0_combout\,
	combout => \inst8|Mux32~0_combout\);

-- Location: LCCOMB_X13_Y13_N6
\inst8|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux17~0_combout\ = (\inst|data\(0) & ((\inst|data\(1) $ (!\inst|data\(2))))) # (!\inst|data\(0) & ((\inst|data\(3) & (\inst|data\(1) & !\inst|data\(2))) # (!\inst|data\(3) & (!\inst|data\(1) & \inst|data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(3),
	datab => \inst|data\(0),
	datac => \inst|data\(1),
	datad => \inst|data\(2),
	combout => \inst8|Mux17~0_combout\);

-- Location: LCCOMB_X14_Y12_N14
\inst8|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux24~0_combout\ = (\inst|data\(6) & (\inst|data\(5) $ (!\inst|data\(4)))) # (!\inst|data\(6) & (!\inst|data\(5) & \inst|data\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(6),
	datac => \inst|data\(5),
	datad => \inst|data\(4),
	combout => \inst8|Mux24~0_combout\);

-- Location: LCCOMB_X12_Y13_N24
\inst8|Mux32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux32~1_combout\ = (\inst8|tem[3]~1_combout\ & ((\inst8|Mux32~0_combout\ & ((\inst8|Mux24~0_combout\))) # (!\inst8|Mux32~0_combout\ & (\inst8|Mux17~0_combout\)))) # (!\inst8|tem[3]~1_combout\ & (\inst8|Mux32~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|tem[3]~1_combout\,
	datab => \inst8|Mux32~0_combout\,
	datac => \inst8|Mux17~0_combout\,
	datad => \inst8|Mux24~0_combout\,
	combout => \inst8|Mux32~1_combout\);

-- Location: FF_X12_Y13_N25
\inst8|tem[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Mux32~1_combout\,
	ena => \inst8|tem[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|tem\(3));

-- Location: LCCOMB_X11_Y13_N26
\inst8|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux4~0_combout\ = (\inst1|data\(2) & (\inst1|data\(3) $ (((!\inst1|data\(1) & \inst1|data\(0)))))) # (!\inst1|data\(2) & (\inst1|data\(1) & (!\inst1|data\(0) & !\inst1|data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data\(1),
	datab => \inst1|data\(0),
	datac => \inst1|data\(3),
	datad => \inst1|data\(2),
	combout => \inst8|Mux4~0_combout\);

-- Location: LCCOMB_X12_Y13_N0
\inst8|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux11~0_combout\ = (\inst1|data\(6) & (\inst1|data\(4) & !\inst1|data\(5))) # (!\inst1|data\(6) & (!\inst1|data\(4) & \inst1|data\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data\(6),
	datab => \inst1|data\(4),
	datac => \inst1|data\(5),
	combout => \inst8|Mux11~0_combout\);

-- Location: LCCOMB_X13_Y13_N24
\inst8|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux18~0_combout\ = (\inst|data\(2) & (\inst|data\(3) $ (((\inst|data\(0) & !\inst|data\(1)))))) # (!\inst|data\(2) & (!\inst|data\(3) & (!\inst|data\(0) & \inst|data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(3),
	datab => \inst|data\(0),
	datac => \inst|data\(1),
	datad => \inst|data\(2),
	combout => \inst8|Mux18~0_combout\);

-- Location: LCCOMB_X13_Y13_N14
\inst8|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux33~0_combout\ = (\inst8|tem[3]~1_combout\ & ((\inst8|tem[3]~0_combout\) # ((\inst8|Mux18~0_combout\)))) # (!\inst8|tem[3]~1_combout\ & (!\inst8|tem[3]~0_combout\ & (\inst8|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|tem[3]~1_combout\,
	datab => \inst8|tem[3]~0_combout\,
	datac => \inst8|Mux11~0_combout\,
	datad => \inst8|Mux18~0_combout\,
	combout => \inst8|Mux33~0_combout\);

-- Location: LCCOMB_X14_Y12_N18
\inst8|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux25~0_combout\ = (\inst|data\(6) & (!\inst|data\(5) & \inst|data\(4))) # (!\inst|data\(6) & (\inst|data\(5) & !\inst|data\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(6),
	datac => \inst|data\(5),
	datad => \inst|data\(4),
	combout => \inst8|Mux25~0_combout\);

-- Location: LCCOMB_X13_Y13_N10
\inst8|Mux33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux33~1_combout\ = (\inst8|tem[3]~0_combout\ & ((\inst8|Mux33~0_combout\ & ((\inst8|Mux25~0_combout\))) # (!\inst8|Mux33~0_combout\ & (\inst8|Mux4~0_combout\)))) # (!\inst8|tem[3]~0_combout\ & (((\inst8|Mux33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|tem[3]~0_combout\,
	datab => \inst8|Mux4~0_combout\,
	datac => \inst8|Mux33~0_combout\,
	datad => \inst8|Mux25~0_combout\,
	combout => \inst8|Mux33~1_combout\);

-- Location: FF_X13_Y13_N11
\inst8|tem[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Mux33~1_combout\,
	ena => \inst8|tem[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|tem\(2));

-- Location: LCCOMB_X14_Y13_N8
\inst8|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux19~0_combout\ = (\inst|data\(0) & (\inst|data\(3) & (\inst|data\(1)))) # (!\inst|data\(0) & (\inst|data\(2) & ((\inst|data\(3)) # (\inst|data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(0),
	datab => \inst|data\(3),
	datac => \inst|data\(1),
	datad => \inst|data\(2),
	combout => \inst8|Mux19~0_combout\);

-- Location: LCCOMB_X14_Y12_N8
\inst8|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux26~0_combout\ = (\inst|data\(6) & (\inst|data\(5) & !\inst|data\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(6),
	datac => \inst|data\(5),
	datad => \inst|data\(4),
	combout => \inst8|Mux26~0_combout\);

-- Location: LCCOMB_X11_Y13_N12
\inst8|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux5~0_combout\ = (\inst1|data\(0) & (\inst1|data\(1) & (\inst1|data\(3)))) # (!\inst1|data\(0) & (\inst1|data\(2) & ((\inst1|data\(1)) # (\inst1|data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data\(1),
	datab => \inst1|data\(0),
	datac => \inst1|data\(3),
	datad => \inst1|data\(2),
	combout => \inst8|Mux5~0_combout\);

-- Location: LCCOMB_X12_Y13_N14
\inst8|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux12~0_combout\ = (!\inst1|data\(4) & (\inst1|data\(5) & \inst1|data\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|data\(4),
	datac => \inst1|data\(5),
	datad => \inst1|data\(6),
	combout => \inst8|Mux12~0_combout\);

-- Location: LCCOMB_X14_Y13_N10
\inst8|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux34~0_combout\ = (\inst8|tem[3]~1_combout\ & (\inst8|tem[3]~0_combout\)) # (!\inst8|tem[3]~1_combout\ & ((\inst8|tem[3]~0_combout\ & (\inst8|Mux5~0_combout\)) # (!\inst8|tem[3]~0_combout\ & ((\inst8|Mux12~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|tem[3]~1_combout\,
	datab => \inst8|tem[3]~0_combout\,
	datac => \inst8|Mux5~0_combout\,
	datad => \inst8|Mux12~0_combout\,
	combout => \inst8|Mux34~0_combout\);

-- Location: LCCOMB_X14_Y13_N6
\inst8|Mux34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux34~1_combout\ = (\inst8|tem[3]~1_combout\ & ((\inst8|Mux34~0_combout\ & ((\inst8|Mux26~0_combout\))) # (!\inst8|Mux34~0_combout\ & (\inst8|Mux19~0_combout\)))) # (!\inst8|tem[3]~1_combout\ & (((\inst8|Mux34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|tem[3]~1_combout\,
	datab => \inst8|Mux19~0_combout\,
	datac => \inst8|Mux26~0_combout\,
	datad => \inst8|Mux34~0_combout\,
	combout => \inst8|Mux34~1_combout\);

-- Location: FF_X14_Y13_N7
\inst8|tem[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Mux34~1_combout\,
	ena => \inst8|tem[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|tem\(1));

-- Location: LCCOMB_X11_Y13_N24
\inst8|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux6~0_combout\ = (\inst1|data\(3) & (\inst1|data\(0) & (\inst1|data\(2) $ (\inst1|data\(1))))) # (!\inst1|data\(3) & (!\inst1|data\(1) & (\inst1|data\(2) $ (\inst1|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data\(3),
	datab => \inst1|data\(2),
	datac => \inst1|data\(1),
	datad => \inst1|data\(0),
	combout => \inst8|Mux6~0_combout\);

-- Location: LCCOMB_X12_Y13_N16
\inst8|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux13~0_combout\ = (!\inst1|data\(5) & (\inst1|data\(6) $ (\inst1|data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data\(6),
	datab => \inst1|data\(4),
	datac => \inst1|data\(5),
	combout => \inst8|Mux13~0_combout\);

-- Location: LCCOMB_X13_Y13_N12
\inst8|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux20~0_combout\ = (\inst|data\(3) & (\inst|data\(0) & (\inst|data\(1) $ (\inst|data\(2))))) # (!\inst|data\(3) & (!\inst|data\(1) & (\inst|data\(0) $ (\inst|data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(3),
	datab => \inst|data\(0),
	datac => \inst|data\(1),
	datad => \inst|data\(2),
	combout => \inst8|Mux20~0_combout\);

-- Location: LCCOMB_X13_Y13_N26
\inst8|Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux35~0_combout\ = (\inst8|tem[3]~1_combout\ & ((\inst8|tem[3]~0_combout\) # ((\inst8|Mux20~0_combout\)))) # (!\inst8|tem[3]~1_combout\ & (!\inst8|tem[3]~0_combout\ & (\inst8|Mux13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|tem[3]~1_combout\,
	datab => \inst8|tem[3]~0_combout\,
	datac => \inst8|Mux13~0_combout\,
	datad => \inst8|Mux20~0_combout\,
	combout => \inst8|Mux35~0_combout\);

-- Location: LCCOMB_X14_Y12_N12
\inst8|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux27~0_combout\ = (!\inst|data\(5) & (\inst|data\(6) $ (\inst|data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(5),
	datac => \inst|data\(6),
	datad => \inst|data\(4),
	combout => \inst8|Mux27~0_combout\);

-- Location: LCCOMB_X13_Y13_N16
\inst8|Mux35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux35~1_combout\ = (\inst8|tem[3]~0_combout\ & ((\inst8|Mux35~0_combout\ & ((\inst8|Mux27~0_combout\))) # (!\inst8|Mux35~0_combout\ & (\inst8|Mux6~0_combout\)))) # (!\inst8|tem[3]~0_combout\ & (((\inst8|Mux35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux6~0_combout\,
	datab => \inst8|tem[3]~0_combout\,
	datac => \inst8|Mux35~0_combout\,
	datad => \inst8|Mux27~0_combout\,
	combout => \inst8|Mux35~1_combout\);

-- Location: FF_X13_Y13_N17
\inst8|tem[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|Mux35~1_combout\,
	ena => \inst8|tem[6]~5_combout\,
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

ww_hour_out(7) <= \hour_out[7]~output_o\;

ww_hour_out(6) <= \hour_out[6]~output_o\;

ww_hour_out(5) <= \hour_out[5]~output_o\;

ww_hour_out(4) <= \hour_out[4]~output_o\;

ww_hour_out(3) <= \hour_out[3]~output_o\;

ww_hour_out(2) <= \hour_out[2]~output_o\;

ww_hour_out(1) <= \hour_out[1]~output_o\;

ww_hour_out(0) <= \hour_out[0]~output_o\;

ww_minute_out(7) <= \minute_out[7]~output_o\;

ww_minute_out(6) <= \minute_out[6]~output_o\;

ww_minute_out(5) <= \minute_out[5]~output_o\;

ww_minute_out(4) <= \minute_out[4]~output_o\;

ww_minute_out(3) <= \minute_out[3]~output_o\;

ww_minute_out(2) <= \minute_out[2]~output_o\;

ww_minute_out(1) <= \minute_out[1]~output_o\;

ww_minute_out(0) <= \minute_out[0]~output_o\;

ww_second_out(7) <= \second_out[7]~output_o\;

ww_second_out(6) <= \second_out[6]~output_o\;

ww_second_out(5) <= \second_out[5]~output_o\;

ww_second_out(4) <= \second_out[4]~output_o\;

ww_second_out(3) <= \second_out[3]~output_o\;

ww_second_out(2) <= \second_out[2]~output_o\;

ww_second_out(1) <= \second_out[1]~output_o\;

ww_second_out(0) <= \second_out[0]~output_o\;

ww_SEG(7) <= \SEG[7]~output_o\;

ww_SEG(6) <= \SEG[6]~output_o\;

ww_SEG(5) <= \SEG[5]~output_o\;

ww_SEG(4) <= \SEG[4]~output_o\;

ww_SEG(3) <= \SEG[3]~output_o\;

ww_SEG(2) <= \SEG[2]~output_o\;

ww_SEG(1) <= \SEG[1]~output_o\;

ww_SEG(0) <= \SEG[0]~output_o\;
END structure;


