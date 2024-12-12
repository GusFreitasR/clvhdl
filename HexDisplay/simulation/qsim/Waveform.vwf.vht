-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/12/2024 12:10:16"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          HextoDisplay4
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY HextoDisplay4_vhd_vec_tst IS
END HextoDisplay4_vhd_vec_tst;
ARCHITECTURE HextoDisplay4_arch OF HextoDisplay4_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Display : STD_LOGIC_VECTOR(27 DOWNTO 0);
SIGNAL Hexa : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT HextoDisplay4
	PORT (
	Display : OUT STD_LOGIC_VECTOR(27 DOWNTO 0);
	Hexa : IN STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : HextoDisplay4
	PORT MAP (
-- list connections between master ports and signals
	Display => Display,
	Hexa => Hexa
	);
-- Hexa[15]
t_prcs_Hexa_15: PROCESS
BEGIN
	Hexa(15) <= '0';
WAIT;
END PROCESS t_prcs_Hexa_15;
-- Hexa[14]
t_prcs_Hexa_14: PROCESS
BEGIN
	Hexa(14) <= '0';
WAIT;
END PROCESS t_prcs_Hexa_14;
-- Hexa[13]
t_prcs_Hexa_13: PROCESS
BEGIN
	Hexa(13) <= '0';
WAIT;
END PROCESS t_prcs_Hexa_13;
-- Hexa[12]
t_prcs_Hexa_12: PROCESS
BEGIN
	Hexa(12) <= '0';
WAIT;
END PROCESS t_prcs_Hexa_12;
-- Hexa[11]
t_prcs_Hexa_11: PROCESS
BEGIN
	Hexa(11) <= '0';
WAIT;
END PROCESS t_prcs_Hexa_11;
-- Hexa[10]
t_prcs_Hexa_10: PROCESS
BEGIN
	Hexa(10) <= '0';
WAIT;
END PROCESS t_prcs_Hexa_10;
-- Hexa[9]
t_prcs_Hexa_9: PROCESS
BEGIN
	Hexa(9) <= '0';
WAIT;
END PROCESS t_prcs_Hexa_9;
-- Hexa[8]
t_prcs_Hexa_8: PROCESS
BEGIN
	Hexa(8) <= '0';
WAIT;
END PROCESS t_prcs_Hexa_8;
-- Hexa[7]
t_prcs_Hexa_7: PROCESS
BEGIN
	Hexa(7) <= '0';
WAIT;
END PROCESS t_prcs_Hexa_7;
-- Hexa[6]
t_prcs_Hexa_6: PROCESS
BEGIN
	Hexa(6) <= '0';
WAIT;
END PROCESS t_prcs_Hexa_6;
-- Hexa[5]
t_prcs_Hexa_5: PROCESS
BEGIN
	Hexa(5) <= '0';
WAIT;
END PROCESS t_prcs_Hexa_5;
-- Hexa[4]
t_prcs_Hexa_4: PROCESS
BEGIN
	Hexa(4) <= '0';
	WAIT FOR 8000 ps;
	Hexa(4) <= '1';
WAIT;
END PROCESS t_prcs_Hexa_4;
-- Hexa[3]
t_prcs_Hexa_3: PROCESS
BEGIN
	Hexa(3) <= '0';
	WAIT FOR 4000 ps;
	Hexa(3) <= '1';
	WAIT FOR 4000 ps;
	Hexa(3) <= '0';
WAIT;
END PROCESS t_prcs_Hexa_3;
-- Hexa[2]
t_prcs_Hexa_2: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		Hexa(2) <= '0';
		WAIT FOR 2000 ps;
		Hexa(2) <= '1';
		WAIT FOR 2000 ps;
	END LOOP;
	Hexa(2) <= '0';
WAIT;
END PROCESS t_prcs_Hexa_2;
-- Hexa[1]
t_prcs_Hexa_1: PROCESS
BEGIN
LOOP
	Hexa(1) <= '0';
	WAIT FOR 1000 ps;
	Hexa(1) <= '1';
	WAIT FOR 1000 ps;
	IF (NOW >= 10000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Hexa_1;
-- Hexa[0]
t_prcs_Hexa_0: PROCESS
BEGIN
LOOP
	Hexa(0) <= '0';
	WAIT FOR 500 ps;
	Hexa(0) <= '1';
	WAIT FOR 500 ps;
	IF (NOW >= 10000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Hexa_0;
END HextoDisplay4_arch;
