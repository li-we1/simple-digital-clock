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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"
-- CREATED		"Mon Oct 29 09:09:52 2018"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY clock IS 
	PORT
	(
		P :  IN  STD_LOGIC;
		LD_hour :  IN  STD_LOGIC;
		LD_minute :  IN  STD_LOGIC;
		CR :  IN  STD_LOGIC;
		CLK_in :  IN  STD_LOGIC;
		alarm :  OUT  STD_LOGIC;
		DIG :  OUT  STD_LOGIC_VECTOR(5 DOWNTO 0);
		SEG :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END clock;

ARCHITECTURE bdf_type OF clock IS 

COMPONENT counter_60
	PORT(CLK : IN STD_LOGIC;
		 CR : IN STD_LOGIC;
		 LD : IN STD_LOGIC;
		 P : IN STD_LOGIC;
		 data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 QCC : OUT STD_LOGIC;
		 data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT input
	PORT(CLK_in : IN STD_LOGIC;
		 LD_hour : IN STD_LOGIC;
		 LD_minute : IN STD_LOGIC;
		 P : IN STD_LOGIC;
		 CR : IN STD_LOGIC;
		 LD_hour_out : OUT STD_LOGIC;
		 LD_minute_out : OUT STD_LOGIC;
		 P_out : OUT STD_LOGIC;
		 CR_out : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT clk
	PORT(CLK_IN : IN STD_LOGIC;
		 CLK_OUT : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT counter_24
	PORT(CLK : IN STD_LOGIC;
		 CR : IN STD_LOGIC;
		 LD : IN STD_LOGIC;
		 P : IN STD_LOGIC;
		 data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 QCC : OUT STD_LOGIC;
		 data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT alarm
	PORT(minute_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 second_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 alarm : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT led
	PORT(CLK : IN STD_LOGIC;
		 hour_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 minute_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 second_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 DIG : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		 SEG : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC_VECTOR(7 DOWNTO 0);


BEGIN 



b2v_inst : counter_60
PORT MAP(CLK => SYNTHESIZED_WIRE_0,
		 CR => SYNTHESIZED_WIRE_20,
		 P => SYNTHESIZED_WIRE_21,
		 QCC => SYNTHESIZED_WIRE_12,
		 data_out => SYNTHESIZED_WIRE_23);


b2v_inst1 : counter_60
PORT MAP(CLK => SYNTHESIZED_WIRE_3,
		 CR => SYNTHESIZED_WIRE_20,
		 P => SYNTHESIZED_WIRE_21,
		 QCC => SYNTHESIZED_WIRE_13,
		 data_out => SYNTHESIZED_WIRE_22);


b2v_inst11 : input
PORT MAP(CLK_in => CLK_in,
		 LD_hour => LD_hour,
		 LD_minute => LD_minute,
		 P => P,
		 CR => CR,
		 LD_hour_out => SYNTHESIZED_WIRE_10,
		 LD_minute_out => SYNTHESIZED_WIRE_9,
		 P_out => SYNTHESIZED_WIRE_21,
		 CR_out => SYNTHESIZED_WIRE_20);


b2v_inst13 : clk
PORT MAP(CLK_IN => CLK_in,
		 CLK_OUT => SYNTHESIZED_WIRE_0);


b2v_inst2 : counter_24
PORT MAP(CLK => SYNTHESIZED_WIRE_6,
		 CR => SYNTHESIZED_WIRE_20,
		 P => SYNTHESIZED_WIRE_21,
		 data_out => SYNTHESIZED_WIRE_17);


SYNTHESIZED_WIRE_11 <= NOT(SYNTHESIZED_WIRE_9);



SYNTHESIZED_WIRE_14 <= NOT(SYNTHESIZED_WIRE_10);



SYNTHESIZED_WIRE_3 <= SYNTHESIZED_WIRE_11 OR SYNTHESIZED_WIRE_12;


SYNTHESIZED_WIRE_6 <= SYNTHESIZED_WIRE_13 OR SYNTHESIZED_WIRE_14;


b2v_inst7 : alarm
PORT MAP(minute_in => SYNTHESIZED_WIRE_22,
		 second_in => SYNTHESIZED_WIRE_23,
		 alarm => alarm);


b2v_inst8 : led
PORT MAP(CLK => CLK,
		 hour_in => SYNTHESIZED_WIRE_17,
		 minute_in => SYNTHESIZED_WIRE_22,
		 second_in => SYNTHESIZED_WIRE_23,
		 DIG => DIG,
		 SEG => SEG);


END bdf_type;