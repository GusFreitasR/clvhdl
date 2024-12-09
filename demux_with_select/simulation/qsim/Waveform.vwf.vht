-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- Generated on "12/09/2024 02:54:20"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          demux_with_select
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY demux_with_select_vhd_vec_tst IS
END demux_with_select_vhd_vec_tst;
ARCHITECTURE demux_with_select_arch OF demux_with_select_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL c : STD_LOGIC;
SIGNAL d : STD_LOGIC;
SIGNAL sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL x : STD_LOGIC;
COMPONENT demux_with_select
	PORT (
	a : OUT STD_LOGIC;
	b : OUT STD_LOGIC;
	c : OUT STD_LOGIC;
	d : OUT STD_LOGIC;
	sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	x : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : demux_with_select
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	c => c,
	d => d,
	sel => sel,
	x => x
	);
-- sel[1]
t_prcs_sel_1: PROCESS
BEGIN
	sel(1) <= '0';
	WAIT FOR 480000 ps;
	sel(1) <= '1';
	WAIT FOR 480000 ps;
	sel(1) <= '0';
WAIT;
END PROCESS t_prcs_sel_1;
-- sel[0]
t_prcs_sel_0: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		sel(0) <= '0';
		WAIT FOR 240000 ps;
		sel(0) <= '1';
		WAIT FOR 240000 ps;
	END LOOP;
	sel(0) <= '0';
WAIT;
END PROCESS t_prcs_sel_0;

-- x
t_prcs_x: PROCESS
BEGIN
	x <= '0';
WAIT;
END PROCESS t_prcs_x;
END demux_with_select_arch;
