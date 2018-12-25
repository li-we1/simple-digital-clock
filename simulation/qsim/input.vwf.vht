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
-- Generated on "10/28/2018 14:25:10"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          input
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY input_vhd_vec_tst IS
END input_vhd_vec_tst;
ARCHITECTURE input_arch OF input_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK_in : STD_LOGIC;
SIGNAL CR : STD_LOGIC;
SIGNAL CR_out : STD_LOGIC;
SIGNAL LD_hour : STD_LOGIC;
SIGNAL LD_hour_out : STD_LOGIC;
SIGNAL LD_minute : STD_LOGIC;
SIGNAL LD_minute_out : STD_LOGIC;
SIGNAL P : STD_LOGIC;
SIGNAL P_out : STD_LOGIC;
COMPONENT input
	PORT (
	CLK_in : IN STD_LOGIC;
	CR : IN STD_LOGIC;
	CR_out : OUT STD_LOGIC;
	LD_hour : IN STD_LOGIC;
	LD_hour_out : OUT STD_LOGIC;
	LD_minute : IN STD_LOGIC;
	LD_minute_out : OUT STD_LOGIC;
	P : IN STD_LOGIC;
	P_out : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : input
	PORT MAP (
-- list connections between master ports and signals
	CLK_in => CLK_in,
	CR => CR,
	CR_out => CR_out,
	LD_hour => LD_hour,
	LD_hour_out => LD_hour_out,
	LD_minute => LD_minute,
	LD_minute_out => LD_minute_out,
	P => P,
	P_out => P_out
	);

-- CLK_in
t_prcs_CLK_in: PROCESS
BEGIN
LOOP
	CLK_in <= '0';
	WAIT FOR 10000 ps;
	CLK_in <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK_in;

-- CR
t_prcs_CR: PROCESS
BEGIN
	CR <= '1';
	WAIT FOR 60000 ps;
	CR <= '0';
	WAIT FOR 20000 ps;
	CR <= '1';
	WAIT FOR 10000 ps;
	CR <= '0';
	WAIT FOR 10000 ps;
	CR <= '1';
WAIT;
END PROCESS t_prcs_CR;

-- LD_hour
t_prcs_LD_hour: PROCESS
BEGIN
	LD_hour <= '1';
WAIT;
END PROCESS t_prcs_LD_hour;

-- LD_minute
t_prcs_LD_minute: PROCESS
BEGIN
	LD_minute <= '1';
WAIT;
END PROCESS t_prcs_LD_minute;

-- P
t_prcs_P: PROCESS
BEGIN
	P <= '1';
WAIT;
END PROCESS t_prcs_P;
END input_arch;
