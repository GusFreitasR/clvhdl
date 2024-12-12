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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.0 Build 991 11/28/2023 SC Lite Edition"

-- DATE "12/12/2024 12:10:27"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	HextoDisplay4 IS
    PORT (
	Hexa : IN std_logic_vector(15 DOWNTO 0);
	Display : OUT std_logic_vector(27 DOWNTO 0)
	);
END HextoDisplay4;

-- Design Ports Information
-- Display[0]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[1]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[2]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[3]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[4]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[5]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[6]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[7]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[8]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[9]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[10]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[11]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[12]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[13]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[14]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[15]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[16]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[17]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[18]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[19]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[20]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[21]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[22]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[23]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[24]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[25]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[26]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[27]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hexa[0]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hexa[1]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hexa[2]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hexa[3]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hexa[4]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hexa[5]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hexa[6]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hexa[7]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hexa[8]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hexa[9]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hexa[10]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hexa[11]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hexa[12]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hexa[13]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hexa[14]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hexa[15]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF HextoDisplay4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Hexa : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Display : std_logic_vector(27 DOWNTO 0);
SIGNAL \Display[0]~output_o\ : std_logic;
SIGNAL \Display[1]~output_o\ : std_logic;
SIGNAL \Display[2]~output_o\ : std_logic;
SIGNAL \Display[3]~output_o\ : std_logic;
SIGNAL \Display[4]~output_o\ : std_logic;
SIGNAL \Display[5]~output_o\ : std_logic;
SIGNAL \Display[6]~output_o\ : std_logic;
SIGNAL \Display[7]~output_o\ : std_logic;
SIGNAL \Display[8]~output_o\ : std_logic;
SIGNAL \Display[9]~output_o\ : std_logic;
SIGNAL \Display[10]~output_o\ : std_logic;
SIGNAL \Display[11]~output_o\ : std_logic;
SIGNAL \Display[12]~output_o\ : std_logic;
SIGNAL \Display[13]~output_o\ : std_logic;
SIGNAL \Display[14]~output_o\ : std_logic;
SIGNAL \Display[15]~output_o\ : std_logic;
SIGNAL \Display[16]~output_o\ : std_logic;
SIGNAL \Display[17]~output_o\ : std_logic;
SIGNAL \Display[18]~output_o\ : std_logic;
SIGNAL \Display[19]~output_o\ : std_logic;
SIGNAL \Display[20]~output_o\ : std_logic;
SIGNAL \Display[21]~output_o\ : std_logic;
SIGNAL \Display[22]~output_o\ : std_logic;
SIGNAL \Display[23]~output_o\ : std_logic;
SIGNAL \Display[24]~output_o\ : std_logic;
SIGNAL \Display[25]~output_o\ : std_logic;
SIGNAL \Display[26]~output_o\ : std_logic;
SIGNAL \Display[27]~output_o\ : std_logic;
SIGNAL \Hexa[2]~input_o\ : std_logic;
SIGNAL \Hexa[3]~input_o\ : std_logic;
SIGNAL \Hexa[1]~input_o\ : std_logic;
SIGNAL \Hexa[0]~input_o\ : std_logic;
SIGNAL \i3|Mux6~0_combout\ : std_logic;
SIGNAL \i3|Mux5~0_combout\ : std_logic;
SIGNAL \i3|Mux4~0_combout\ : std_logic;
SIGNAL \i3|Mux3~0_combout\ : std_logic;
SIGNAL \i3|Mux2~0_combout\ : std_logic;
SIGNAL \i3|Mux1~0_combout\ : std_logic;
SIGNAL \i3|Mux0~0_combout\ : std_logic;
SIGNAL \Hexa[6]~input_o\ : std_logic;
SIGNAL \Hexa[7]~input_o\ : std_logic;
SIGNAL \Hexa[5]~input_o\ : std_logic;
SIGNAL \Hexa[4]~input_o\ : std_logic;
SIGNAL \i2|Mux6~0_combout\ : std_logic;
SIGNAL \i2|Mux5~0_combout\ : std_logic;
SIGNAL \i2|Mux4~0_combout\ : std_logic;
SIGNAL \i2|Mux3~0_combout\ : std_logic;
SIGNAL \i2|Mux2~0_combout\ : std_logic;
SIGNAL \i2|Mux1~0_combout\ : std_logic;
SIGNAL \i2|Mux0~0_combout\ : std_logic;
SIGNAL \Hexa[8]~input_o\ : std_logic;
SIGNAL \Hexa[9]~input_o\ : std_logic;
SIGNAL \Hexa[11]~input_o\ : std_logic;
SIGNAL \Hexa[10]~input_o\ : std_logic;
SIGNAL \i1|Mux6~0_combout\ : std_logic;
SIGNAL \i1|Mux5~0_combout\ : std_logic;
SIGNAL \i1|Mux4~0_combout\ : std_logic;
SIGNAL \i1|Mux3~0_combout\ : std_logic;
SIGNAL \i1|Mux2~0_combout\ : std_logic;
SIGNAL \i1|Mux1~0_combout\ : std_logic;
SIGNAL \i1|Mux0~0_combout\ : std_logic;
SIGNAL \Hexa[13]~input_o\ : std_logic;
SIGNAL \Hexa[12]~input_o\ : std_logic;
SIGNAL \Hexa[15]~input_o\ : std_logic;
SIGNAL \Hexa[14]~input_o\ : std_logic;
SIGNAL \i0|Mux6~0_combout\ : std_logic;
SIGNAL \i0|Mux5~0_combout\ : std_logic;
SIGNAL \i0|Mux4~0_combout\ : std_logic;
SIGNAL \i0|Mux3~0_combout\ : std_logic;
SIGNAL \i0|Mux2~0_combout\ : std_logic;
SIGNAL \i0|Mux1~0_combout\ : std_logic;
SIGNAL \i0|Mux0~0_combout\ : std_logic;
SIGNAL \i0|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \i1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \i2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \i3|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Hexa <= Hexa;
Display <= ww_Display;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\i0|ALT_INV_Mux0~0_combout\ <= NOT \i0|Mux0~0_combout\;
\i1|ALT_INV_Mux0~0_combout\ <= NOT \i1|Mux0~0_combout\;
\i2|ALT_INV_Mux0~0_combout\ <= NOT \i2|Mux0~0_combout\;
\i3|ALT_INV_Mux0~0_combout\ <= NOT \i3|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y57_N16
\Display[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Display[0]~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\Display[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Display[1]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\Display[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Display[2]~output_o\);

-- Location: IOOBUF_X0_Y57_N23
\Display[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Display[3]~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\Display[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Display[4]~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\Display[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Display[5]~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\Display[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i3|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Display[6]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\Display[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Display[7]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\Display[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Display[8]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\Display[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Display[9]~output_o\);

-- Location: IOOBUF_X105_Y73_N9
\Display[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Display[10]~output_o\);

-- Location: IOOBUF_X111_Y73_N2
\Display[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Display[11]~output_o\);

-- Location: IOOBUF_X107_Y73_N2
\Display[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Display[12]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\Display[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Display[13]~output_o\);

-- Location: IOOBUF_X0_Y66_N23
\Display[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Display[14]~output_o\);

-- Location: IOOBUF_X0_Y63_N16
\Display[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Display[15]~output_o\);

-- Location: IOOBUF_X0_Y68_N2
\Display[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Display[16]~output_o\);

-- Location: IOOBUF_X0_Y67_N23
\Display[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Display[17]~output_o\);

-- Location: IOOBUF_X0_Y62_N23
\Display[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Display[18]~output_o\);

-- Location: IOOBUF_X0_Y68_N9
\Display[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Display[19]~output_o\);

-- Location: IOOBUF_X0_Y67_N16
\Display[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Display[20]~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\Display[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Display[21]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\Display[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Display[22]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\Display[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Display[23]~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\Display[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Display[24]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\Display[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Display[25]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\Display[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Display[26]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\Display[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Display[27]~output_o\);

-- Location: IOIBUF_X0_Y53_N8
\Hexa[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Hexa(2),
	o => \Hexa[2]~input_o\);

-- Location: IOIBUF_X0_Y54_N8
\Hexa[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Hexa(3),
	o => \Hexa[3]~input_o\);

-- Location: IOIBUF_X0_Y50_N22
\Hexa[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Hexa(1),
	o => \Hexa[1]~input_o\);

-- Location: IOIBUF_X0_Y55_N8
\Hexa[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Hexa(0),
	o => \Hexa[0]~input_o\);

-- Location: LCCOMB_X1_Y55_N0
\i3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|Mux6~0_combout\ = (\Hexa[2]~input_o\ & (!\Hexa[1]~input_o\ & (\Hexa[3]~input_o\ $ (!\Hexa[0]~input_o\)))) # (!\Hexa[2]~input_o\ & (\Hexa[0]~input_o\ & (\Hexa[3]~input_o\ $ (!\Hexa[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hexa[2]~input_o\,
	datab => \Hexa[3]~input_o\,
	datac => \Hexa[1]~input_o\,
	datad => \Hexa[0]~input_o\,
	combout => \i3|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y55_N26
\i3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|Mux5~0_combout\ = (\Hexa[3]~input_o\ & ((\Hexa[0]~input_o\ & ((\Hexa[1]~input_o\))) # (!\Hexa[0]~input_o\ & (\Hexa[2]~input_o\)))) # (!\Hexa[3]~input_o\ & (\Hexa[2]~input_o\ & (\Hexa[1]~input_o\ $ (\Hexa[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hexa[2]~input_o\,
	datab => \Hexa[3]~input_o\,
	datac => \Hexa[1]~input_o\,
	datad => \Hexa[0]~input_o\,
	combout => \i3|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y55_N20
\i3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|Mux4~0_combout\ = (\Hexa[2]~input_o\ & (\Hexa[3]~input_o\ & ((\Hexa[1]~input_o\) # (!\Hexa[0]~input_o\)))) # (!\Hexa[2]~input_o\ & (!\Hexa[3]~input_o\ & (\Hexa[1]~input_o\ & !\Hexa[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hexa[2]~input_o\,
	datab => \Hexa[3]~input_o\,
	datac => \Hexa[1]~input_o\,
	datad => \Hexa[0]~input_o\,
	combout => \i3|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y55_N14
\i3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|Mux3~0_combout\ = (\Hexa[1]~input_o\ & ((\Hexa[2]~input_o\ & ((\Hexa[0]~input_o\))) # (!\Hexa[2]~input_o\ & (\Hexa[3]~input_o\ & !\Hexa[0]~input_o\)))) # (!\Hexa[1]~input_o\ & (!\Hexa[3]~input_o\ & (\Hexa[2]~input_o\ $ (\Hexa[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hexa[2]~input_o\,
	datab => \Hexa[3]~input_o\,
	datac => \Hexa[1]~input_o\,
	datad => \Hexa[0]~input_o\,
	combout => \i3|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y55_N8
\i3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|Mux2~0_combout\ = (\Hexa[1]~input_o\ & (((!\Hexa[3]~input_o\ & \Hexa[0]~input_o\)))) # (!\Hexa[1]~input_o\ & ((\Hexa[2]~input_o\ & (!\Hexa[3]~input_o\)) # (!\Hexa[2]~input_o\ & ((\Hexa[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hexa[2]~input_o\,
	datab => \Hexa[3]~input_o\,
	datac => \Hexa[1]~input_o\,
	datad => \Hexa[0]~input_o\,
	combout => \i3|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y55_N18
\i3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|Mux1~0_combout\ = (\Hexa[2]~input_o\ & (\Hexa[0]~input_o\ & (\Hexa[3]~input_o\ $ (\Hexa[1]~input_o\)))) # (!\Hexa[2]~input_o\ & (!\Hexa[3]~input_o\ & ((\Hexa[1]~input_o\) # (\Hexa[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hexa[2]~input_o\,
	datab => \Hexa[3]~input_o\,
	datac => \Hexa[1]~input_o\,
	datad => \Hexa[0]~input_o\,
	combout => \i3|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y55_N12
\i3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i3|Mux0~0_combout\ = (\Hexa[0]~input_o\ & ((\Hexa[3]~input_o\) # (\Hexa[2]~input_o\ $ (\Hexa[1]~input_o\)))) # (!\Hexa[0]~input_o\ & ((\Hexa[1]~input_o\) # (\Hexa[2]~input_o\ $ (\Hexa[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hexa[2]~input_o\,
	datab => \Hexa[3]~input_o\,
	datac => \Hexa[1]~input_o\,
	datad => \Hexa[0]~input_o\,
	combout => \i3|Mux0~0_combout\);

-- Location: IOIBUF_X113_Y73_N8
\Hexa[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Hexa(6),
	o => \Hexa[6]~input_o\);

-- Location: IOIBUF_X105_Y73_N1
\Hexa[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Hexa(7),
	o => \Hexa[7]~input_o\);

-- Location: IOIBUF_X109_Y73_N1
\Hexa[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Hexa(5),
	o => \Hexa[5]~input_o\);

-- Location: IOIBUF_X109_Y73_N8
\Hexa[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Hexa(4),
	o => \Hexa[4]~input_o\);

-- Location: LCCOMB_X108_Y72_N0
\i2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Mux6~0_combout\ = (\Hexa[6]~input_o\ & (!\Hexa[5]~input_o\ & (\Hexa[7]~input_o\ $ (!\Hexa[4]~input_o\)))) # (!\Hexa[6]~input_o\ & (\Hexa[4]~input_o\ & (\Hexa[7]~input_o\ $ (!\Hexa[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hexa[6]~input_o\,
	datab => \Hexa[7]~input_o\,
	datac => \Hexa[5]~input_o\,
	datad => \Hexa[4]~input_o\,
	combout => \i2|Mux6~0_combout\);

-- Location: LCCOMB_X108_Y72_N10
\i2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Mux5~0_combout\ = (\Hexa[7]~input_o\ & ((\Hexa[4]~input_o\ & ((\Hexa[5]~input_o\))) # (!\Hexa[4]~input_o\ & (\Hexa[6]~input_o\)))) # (!\Hexa[7]~input_o\ & (\Hexa[6]~input_o\ & (\Hexa[5]~input_o\ $ (\Hexa[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hexa[6]~input_o\,
	datab => \Hexa[7]~input_o\,
	datac => \Hexa[5]~input_o\,
	datad => \Hexa[4]~input_o\,
	combout => \i2|Mux5~0_combout\);

-- Location: LCCOMB_X108_Y72_N12
\i2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Mux4~0_combout\ = (\Hexa[6]~input_o\ & (\Hexa[7]~input_o\ & ((\Hexa[5]~input_o\) # (!\Hexa[4]~input_o\)))) # (!\Hexa[6]~input_o\ & (!\Hexa[7]~input_o\ & (\Hexa[5]~input_o\ & !\Hexa[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hexa[6]~input_o\,
	datab => \Hexa[7]~input_o\,
	datac => \Hexa[5]~input_o\,
	datad => \Hexa[4]~input_o\,
	combout => \i2|Mux4~0_combout\);

-- Location: LCCOMB_X108_Y72_N6
\i2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Mux3~0_combout\ = (\Hexa[5]~input_o\ & ((\Hexa[6]~input_o\ & ((\Hexa[4]~input_o\))) # (!\Hexa[6]~input_o\ & (\Hexa[7]~input_o\ & !\Hexa[4]~input_o\)))) # (!\Hexa[5]~input_o\ & (!\Hexa[7]~input_o\ & (\Hexa[6]~input_o\ $ (\Hexa[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hexa[6]~input_o\,
	datab => \Hexa[7]~input_o\,
	datac => \Hexa[5]~input_o\,
	datad => \Hexa[4]~input_o\,
	combout => \i2|Mux3~0_combout\);

-- Location: LCCOMB_X108_Y72_N8
\i2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Mux2~0_combout\ = (\Hexa[5]~input_o\ & (((!\Hexa[7]~input_o\ & \Hexa[4]~input_o\)))) # (!\Hexa[5]~input_o\ & ((\Hexa[6]~input_o\ & (!\Hexa[7]~input_o\)) # (!\Hexa[6]~input_o\ & ((\Hexa[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hexa[6]~input_o\,
	datab => \Hexa[7]~input_o\,
	datac => \Hexa[5]~input_o\,
	datad => \Hexa[4]~input_o\,
	combout => \i2|Mux2~0_combout\);

-- Location: LCCOMB_X108_Y72_N2
\i2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Mux1~0_combout\ = (\Hexa[6]~input_o\ & (\Hexa[4]~input_o\ & (\Hexa[7]~input_o\ $ (\Hexa[5]~input_o\)))) # (!\Hexa[6]~input_o\ & (!\Hexa[7]~input_o\ & ((\Hexa[5]~input_o\) # (\Hexa[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hexa[6]~input_o\,
	datab => \Hexa[7]~input_o\,
	datac => \Hexa[5]~input_o\,
	datad => \Hexa[4]~input_o\,
	combout => \i2|Mux1~0_combout\);

-- Location: LCCOMB_X108_Y72_N20
\i2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Mux0~0_combout\ = (\Hexa[4]~input_o\ & ((\Hexa[7]~input_o\) # (\Hexa[6]~input_o\ $ (\Hexa[5]~input_o\)))) # (!\Hexa[4]~input_o\ & ((\Hexa[5]~input_o\) # (\Hexa[6]~input_o\ $ (\Hexa[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hexa[6]~input_o\,
	datab => \Hexa[7]~input_o\,
	datac => \Hexa[5]~input_o\,
	datad => \Hexa[4]~input_o\,
	combout => \i2|Mux0~0_combout\);

-- Location: IOIBUF_X0_Y65_N15
\Hexa[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Hexa(8),
	o => \Hexa[8]~input_o\);

-- Location: IOIBUF_X0_Y64_N1
\Hexa[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Hexa(9),
	o => \Hexa[9]~input_o\);

-- Location: IOIBUF_X0_Y63_N22
\Hexa[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Hexa(11),
	o => \Hexa[11]~input_o\);

-- Location: IOIBUF_X0_Y66_N15
\Hexa[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Hexa(10),
	o => \Hexa[10]~input_o\);

-- Location: LCCOMB_X1_Y66_N16
\i1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Mux6~0_combout\ = (\Hexa[11]~input_o\ & (\Hexa[8]~input_o\ & (\Hexa[9]~input_o\ $ (\Hexa[10]~input_o\)))) # (!\Hexa[11]~input_o\ & (!\Hexa[9]~input_o\ & (\Hexa[8]~input_o\ $ (\Hexa[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hexa[8]~input_o\,
	datab => \Hexa[9]~input_o\,
	datac => \Hexa[11]~input_o\,
	datad => \Hexa[10]~input_o\,
	combout => \i1|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y66_N18
\i1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Mux5~0_combout\ = (\Hexa[9]~input_o\ & ((\Hexa[8]~input_o\ & (\Hexa[11]~input_o\)) # (!\Hexa[8]~input_o\ & ((\Hexa[10]~input_o\))))) # (!\Hexa[9]~input_o\ & (\Hexa[10]~input_o\ & (\Hexa[8]~input_o\ $ (\Hexa[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hexa[8]~input_o\,
	datab => \Hexa[9]~input_o\,
	datac => \Hexa[11]~input_o\,
	datad => \Hexa[10]~input_o\,
	combout => \i1|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y66_N4
\i1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Mux4~0_combout\ = (\Hexa[11]~input_o\ & (\Hexa[10]~input_o\ & ((\Hexa[9]~input_o\) # (!\Hexa[8]~input_o\)))) # (!\Hexa[11]~input_o\ & (!\Hexa[8]~input_o\ & (\Hexa[9]~input_o\ & !\Hexa[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hexa[8]~input_o\,
	datab => \Hexa[9]~input_o\,
	datac => \Hexa[11]~input_o\,
	datad => \Hexa[10]~input_o\,
	combout => \i1|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y66_N6
\i1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Mux3~0_combout\ = (\Hexa[9]~input_o\ & ((\Hexa[8]~input_o\ & ((\Hexa[10]~input_o\))) # (!\Hexa[8]~input_o\ & (\Hexa[11]~input_o\ & !\Hexa[10]~input_o\)))) # (!\Hexa[9]~input_o\ & (!\Hexa[11]~input_o\ & (\Hexa[8]~input_o\ $ (\Hexa[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hexa[8]~input_o\,
	datab => \Hexa[9]~input_o\,
	datac => \Hexa[11]~input_o\,
	datad => \Hexa[10]~input_o\,
	combout => \i1|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y66_N24
\i1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Mux2~0_combout\ = (\Hexa[9]~input_o\ & (\Hexa[8]~input_o\ & (!\Hexa[11]~input_o\))) # (!\Hexa[9]~input_o\ & ((\Hexa[10]~input_o\ & ((!\Hexa[11]~input_o\))) # (!\Hexa[10]~input_o\ & (\Hexa[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hexa[8]~input_o\,
	datab => \Hexa[9]~input_o\,
	datac => \Hexa[11]~input_o\,
	datad => \Hexa[10]~input_o\,
	combout => \i1|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y66_N10
\i1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Mux1~0_combout\ = (\Hexa[8]~input_o\ & (\Hexa[11]~input_o\ $ (((\Hexa[9]~input_o\) # (!\Hexa[10]~input_o\))))) # (!\Hexa[8]~input_o\ & (\Hexa[9]~input_o\ & (!\Hexa[11]~input_o\ & !\Hexa[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hexa[8]~input_o\,
	datab => \Hexa[9]~input_o\,
	datac => \Hexa[11]~input_o\,
	datad => \Hexa[10]~input_o\,
	combout => \i1|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y66_N12
\i1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|Mux0~0_combout\ = (\Hexa[8]~input_o\ & ((\Hexa[11]~input_o\) # (\Hexa[9]~input_o\ $ (\Hexa[10]~input_o\)))) # (!\Hexa[8]~input_o\ & ((\Hexa[9]~input_o\) # (\Hexa[11]~input_o\ $ (\Hexa[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hexa[8]~input_o\,
	datab => \Hexa[9]~input_o\,
	datac => \Hexa[11]~input_o\,
	datad => \Hexa[10]~input_o\,
	combout => \i1|Mux0~0_combout\);

-- Location: IOIBUF_X0_Y48_N8
\Hexa[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Hexa(13),
	o => \Hexa[13]~input_o\);

-- Location: IOIBUF_X0_Y48_N1
\Hexa[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Hexa(12),
	o => \Hexa[12]~input_o\);

-- Location: IOIBUF_X0_Y47_N1
\Hexa[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Hexa(15),
	o => \Hexa[15]~input_o\);

-- Location: IOIBUF_X0_Y50_N15
\Hexa[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Hexa(14),
	o => \Hexa[14]~input_o\);

-- Location: LCCOMB_X1_Y52_N16
\i0|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux6~0_combout\ = (\Hexa[15]~input_o\ & (\Hexa[12]~input_o\ & (\Hexa[13]~input_o\ $ (\Hexa[14]~input_o\)))) # (!\Hexa[15]~input_o\ & (!\Hexa[13]~input_o\ & (\Hexa[12]~input_o\ $ (\Hexa[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hexa[13]~input_o\,
	datab => \Hexa[12]~input_o\,
	datac => \Hexa[15]~input_o\,
	datad => \Hexa[14]~input_o\,
	combout => \i0|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y52_N18
\i0|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux5~0_combout\ = (\Hexa[13]~input_o\ & ((\Hexa[12]~input_o\ & (\Hexa[15]~input_o\)) # (!\Hexa[12]~input_o\ & ((\Hexa[14]~input_o\))))) # (!\Hexa[13]~input_o\ & (\Hexa[14]~input_o\ & (\Hexa[12]~input_o\ $ (\Hexa[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hexa[13]~input_o\,
	datab => \Hexa[12]~input_o\,
	datac => \Hexa[15]~input_o\,
	datad => \Hexa[14]~input_o\,
	combout => \i0|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y52_N28
\i0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux4~0_combout\ = (\Hexa[15]~input_o\ & (\Hexa[14]~input_o\ & ((\Hexa[13]~input_o\) # (!\Hexa[12]~input_o\)))) # (!\Hexa[15]~input_o\ & (\Hexa[13]~input_o\ & (!\Hexa[12]~input_o\ & !\Hexa[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hexa[13]~input_o\,
	datab => \Hexa[12]~input_o\,
	datac => \Hexa[15]~input_o\,
	datad => \Hexa[14]~input_o\,
	combout => \i0|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y52_N14
\i0|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux3~0_combout\ = (\Hexa[13]~input_o\ & ((\Hexa[12]~input_o\ & ((\Hexa[14]~input_o\))) # (!\Hexa[12]~input_o\ & (\Hexa[15]~input_o\ & !\Hexa[14]~input_o\)))) # (!\Hexa[13]~input_o\ & (!\Hexa[15]~input_o\ & (\Hexa[12]~input_o\ $ (\Hexa[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hexa[13]~input_o\,
	datab => \Hexa[12]~input_o\,
	datac => \Hexa[15]~input_o\,
	datad => \Hexa[14]~input_o\,
	combout => \i0|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y52_N8
\i0|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux2~0_combout\ = (\Hexa[13]~input_o\ & (\Hexa[12]~input_o\ & (!\Hexa[15]~input_o\))) # (!\Hexa[13]~input_o\ & ((\Hexa[14]~input_o\ & ((!\Hexa[15]~input_o\))) # (!\Hexa[14]~input_o\ & (\Hexa[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hexa[13]~input_o\,
	datab => \Hexa[12]~input_o\,
	datac => \Hexa[15]~input_o\,
	datad => \Hexa[14]~input_o\,
	combout => \i0|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y52_N26
\i0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux1~0_combout\ = (\Hexa[13]~input_o\ & (!\Hexa[15]~input_o\ & ((\Hexa[12]~input_o\) # (!\Hexa[14]~input_o\)))) # (!\Hexa[13]~input_o\ & (\Hexa[12]~input_o\ & (\Hexa[15]~input_o\ $ (!\Hexa[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hexa[13]~input_o\,
	datab => \Hexa[12]~input_o\,
	datac => \Hexa[15]~input_o\,
	datad => \Hexa[14]~input_o\,
	combout => \i0|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y52_N12
\i0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux0~0_combout\ = (\Hexa[12]~input_o\ & ((\Hexa[15]~input_o\) # (\Hexa[13]~input_o\ $ (\Hexa[14]~input_o\)))) # (!\Hexa[12]~input_o\ & ((\Hexa[13]~input_o\) # (\Hexa[15]~input_o\ $ (\Hexa[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hexa[13]~input_o\,
	datab => \Hexa[12]~input_o\,
	datac => \Hexa[15]~input_o\,
	datad => \Hexa[14]~input_o\,
	combout => \i0|Mux0~0_combout\);

ww_Display(0) <= \Display[0]~output_o\;

ww_Display(1) <= \Display[1]~output_o\;

ww_Display(2) <= \Display[2]~output_o\;

ww_Display(3) <= \Display[3]~output_o\;

ww_Display(4) <= \Display[4]~output_o\;

ww_Display(5) <= \Display[5]~output_o\;

ww_Display(6) <= \Display[6]~output_o\;

ww_Display(7) <= \Display[7]~output_o\;

ww_Display(8) <= \Display[8]~output_o\;

ww_Display(9) <= \Display[9]~output_o\;

ww_Display(10) <= \Display[10]~output_o\;

ww_Display(11) <= \Display[11]~output_o\;

ww_Display(12) <= \Display[12]~output_o\;

ww_Display(13) <= \Display[13]~output_o\;

ww_Display(14) <= \Display[14]~output_o\;

ww_Display(15) <= \Display[15]~output_o\;

ww_Display(16) <= \Display[16]~output_o\;

ww_Display(17) <= \Display[17]~output_o\;

ww_Display(18) <= \Display[18]~output_o\;

ww_Display(19) <= \Display[19]~output_o\;

ww_Display(20) <= \Display[20]~output_o\;

ww_Display(21) <= \Display[21]~output_o\;

ww_Display(22) <= \Display[22]~output_o\;

ww_Display(23) <= \Display[23]~output_o\;

ww_Display(24) <= \Display[24]~output_o\;

ww_Display(25) <= \Display[25]~output_o\;

ww_Display(26) <= \Display[26]~output_o\;

ww_Display(27) <= \Display[27]~output_o\;
END structure;


