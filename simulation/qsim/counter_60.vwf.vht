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
-- Generated on "10/28/2018 12:27:33"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          counter_60
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY counter_60_vhd_vec_tst IS
END counter_60_vhd_vec_tst;
ARCHITECTURE counter_60_arch OF counter_60_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL CR : STD_LOGIC;
SIGNAL data_in : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL data_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL LD : STD_LOGIC;
SIGNAL P : STD_LOGIC;
SIGNAL QCC : STD_LOGIC;
COMPONENT counter_60
	PORT (
	CLK : IN STD_LOGIC;
	CR : IN STD_LOGIC;
	data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	LD : IN STD_LOGIC;
	P : IN STD_LOGIC;
	QCC : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : counter_60
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	CR => CR,
	data_in => data_in,
	data_out => data_out,
	LD => LD,
	P => P,
	QCC => QCC
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 10000 ps;
	CLK <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
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
-- data_in[7]
t_prcs_data_in_7: PROCESS
BEGIN
	data_in(7) <= '0';
WAIT;
END PROCESS t_prcs_data_in_7;
-- data_in[6]
t_prcs_data_in_6: PROCESS
BEGIN
	data_in(6) <= '0';
WAIT;
END PROCESS t_prcs_data_in_6;
-- data_in[5]
t_prcs_data_in_5: PROCESS
BEGIN
	data_in(5) <= '0';
WAIT;
END PROCESS t_prcs_data_in_5;
-- data_in[4]
t_prcs_data_in_4: PROCESS
BEGIN
	data_in(4) <= '0';
WAIT;
END PROCESS t_prcs_data_in_4;
-- data_in[3]
t_prcs_data_in_3: PROCESS
BEGIN
	data_in(3) <= '0';
WAIT;
END PROCESS t_prcs_data_in_3;
-- data_in[2]
t_prcs_data_in_2: PROCESS
BEGIN
	data_in(2) <= '0';
WAIT;
END PROCESS t_prcs_data_in_2;
-- data_in[1]
t_prcs_data_in_1: PROCESS
BEGIN
	data_in(1) <= '0';
WAIT;
END PROCESS t_prcs_data_in_1;
-- data_in[0]
t_prcs_data_in_0: PROCESS
BEGIN
	data_in(0) <= '0';
WAIT;
END PROCESS t_prcs_data_in_0;

-- LD
t_prcs_LD: PROCESS
BEGIN
	LD <= '1';
	WAIT FOR 40000 ps;
	LD <= '0';
	WAIT FOR 30000 ps;
	LD <= '1';
WAIT;
END PROCESS t_prcs_LD;

-- P
t_prcs_P: PROCESS
BEGIN
	P <= '1';
	WAIT FOR 100000 ps;
	P <= '0';
	WAIT FOR 20000 ps;
	P <= '1';
WAIT;
END PROCESS t_prcs_P;
END counter_60_arch;
