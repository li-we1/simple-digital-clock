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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/28/2018 13:18:30"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          clock
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY clock_vhd_vec_tst IS
END clock_vhd_vec_tst;
ARCHITECTURE clock_arch OF clock_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL alarm : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL CR : STD_LOGIC;
SIGNAL DIG : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL hour_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL LD_hour : STD_LOGIC;
SIGNAL LD_minute : STD_LOGIC;
SIGNAL minute_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL P : STD_LOGIC;
SIGNAL second_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL SEG : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT clock
	PORT (
	alarm : OUT STD_LOGIC;
	CLK : IN STD_LOGIC;
	CR : IN STD_LOGIC;
	DIG : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	hour_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	LD_hour : IN STD_LOGIC;
	LD_minute : IN STD_LOGIC;
	minute_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	P : IN STD_LOGIC;
	second_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	SEG : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : clock
	PORT MAP (
-- list connections between master ports and signals
	alarm => alarm,
	CLK => CLK,
	CR => CR,
	DIG => DIG,
	hour_out => hour_out,
	LD_hour => LD_hour,
	LD_minute => LD_minute,
	minute_out => minute_out,
	P => P,
	second_out => second_out,
	SEG => SEG
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 10000 ps;
	CLK <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- CR
t_prcs_CR: PROCESS
BEGIN
	CR <= '0';
	WAIT FOR 20000 ps;
	CR <= '1';
WAIT;
END PROCESS t_prcs_CR;

-- LD_hour
t_prcs_LD_hour: PROCESS
BEGIN
	LD_hour <= '1';
	WAIT FOR 220000 ps;
	LD_hour <= '0';
	WAIT FOR 40000 ps;
	LD_hour <= '1';
	WAIT FOR 160000 ps;
	LD_hour <= '0';
	WAIT FOR 60000 ps;
	LD_hour <= '1';
WAIT;
END PROCESS t_prcs_LD_hour;

-- LD_minute
t_prcs_LD_minute: PROCESS
BEGIN
	LD_minute <= '1';
	WAIT FOR 320000 ps;
	LD_minute <= '0';
	WAIT FOR 40000 ps;
	LD_minute <= '1';
WAIT;
END PROCESS t_prcs_LD_minute;

-- P
t_prcs_P: PROCESS
BEGIN
	P <= '1';
WAIT;
END PROCESS t_prcs_P;
END clock_arch;
