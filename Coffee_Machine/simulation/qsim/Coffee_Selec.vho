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

-- DATE "12/05/2024 15:23:55"

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

ENTITY 	Coffee_Selec IS
    PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	E : IN std_logic;
	F : IN std_logic;
	G : IN std_logic;
	H : IN std_logic;
	Saida : BUFFER std_logic_vector(6 DOWNTO 0);
	Err : BUFFER std_logic
	);
END Coffee_Selec;

-- Design Ports Information
-- Saida[0]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[1]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[2]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[3]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[4]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[5]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida[6]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Err	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Coffee_Selec IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_F : std_logic;
SIGNAL ww_G : std_logic;
SIGNAL ww_H : std_logic;
SIGNAL ww_Saida : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Err : std_logic;
SIGNAL \Saida[0]~output_o\ : std_logic;
SIGNAL \Saida[1]~output_o\ : std_logic;
SIGNAL \Saida[2]~output_o\ : std_logic;
SIGNAL \Saida[3]~output_o\ : std_logic;
SIGNAL \Saida[4]~output_o\ : std_logic;
SIGNAL \Saida[5]~output_o\ : std_logic;
SIGNAL \Saida[6]~output_o\ : std_logic;
SIGNAL \Err~output_o\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \G~input_o\ : std_logic;
SIGNAL \F~input_o\ : std_logic;
SIGNAL \E~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \i0|S[1]~1_combout\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \i0|S[0]~0_combout\ : std_logic;
SIGNAL \i2|Mux6~0_combout\ : std_logic;
SIGNAL \H~input_o\ : std_logic;
SIGNAL \i0|Err~2_combout\ : std_logic;
SIGNAL \i0|Err~0_combout\ : std_logic;
SIGNAL \i0|Err~1_combout\ : std_logic;
SIGNAL \i0|Err~3_combout\ : std_logic;
SIGNAL \i2|Mux5~0_combout\ : std_logic;
SIGNAL \i2|Mux4~0_combout\ : std_logic;
SIGNAL \i2|Mux3~0_combout\ : std_logic;
SIGNAL \i2|Mux1~0_combout\ : std_logic;
SIGNAL \i2|Mux0~0_combout\ : std_logic;
SIGNAL \i0|S\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \i2|ALT_INV_Mux6~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_C <= C;
ww_D <= D;
ww_E <= E;
ww_F <= F;
ww_G <= G;
ww_H <= H;
Saida <= ww_Saida;
Err <= ww_Err;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\i2|ALT_INV_Mux6~0_combout\ <= NOT \i2|Mux6~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y10_N23
\Saida[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Saida[0]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\Saida[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Saida[1]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\Saida[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Saida[2]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\Saida[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Saida[3]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\Saida[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Saida[4]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\Saida[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Saida[5]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\Saida[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Saida[6]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\Err~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i0|Err~3_combout\,
	devoe => ww_devoe,
	o => \Err~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\D~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: IOIBUF_X0_Y16_N15
\G~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_G,
	o => \G~input_o\);

-- Location: IOIBUF_X0_Y15_N22
\F~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F,
	o => \F~input_o\);

-- Location: IOIBUF_X0_Y16_N22
\E~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E,
	o => \E~input_o\);

-- Location: LCCOMB_X1_Y14_N10
\i0|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|S\(2) = (\D~input_o\) # ((\G~input_o\) # ((\F~input_o\) # (\E~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datab => \G~input_o\,
	datac => \F~input_o\,
	datad => \E~input_o\,
	combout => \i0|S\(2));

-- Location: IOIBUF_X0_Y17_N15
\B~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: IOIBUF_X0_Y14_N8
\C~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: LCCOMB_X1_Y14_N28
\i0|S[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|S[1]~1_combout\ = (\B~input_o\) # ((\C~input_o\) # ((\F~input_o\) # (\G~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datab => \C~input_o\,
	datac => \F~input_o\,
	datad => \G~input_o\,
	combout => \i0|S[1]~1_combout\);

-- Location: IOIBUF_X0_Y15_N15
\A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: LCCOMB_X1_Y14_N0
\i0|S[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|S[0]~0_combout\ = (\A~input_o\) # ((\G~input_o\) # ((\C~input_o\) # (\E~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datab => \G~input_o\,
	datac => \C~input_o\,
	datad => \E~input_o\,
	combout => \i0|S[0]~0_combout\);

-- Location: LCCOMB_X1_Y14_N6
\i2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Mux6~0_combout\ = (\i0|S[0]~0_combout\) # ((\i0|S\(2) & \i0|S[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0|S\(2),
	datab => \i0|S[1]~1_combout\,
	datad => \i0|S[0]~0_combout\,
	combout => \i2|Mux6~0_combout\);

-- Location: IOIBUF_X0_Y18_N15
\H~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_H,
	o => \H~input_o\);

-- Location: LCCOMB_X1_Y14_N12
\i0|Err~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Err~2_combout\ = (\A~input_o\) # ((\C~input_o\) # ((\H~input_o\) # (\B~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datab => \C~input_o\,
	datac => \H~input_o\,
	datad => \B~input_o\,
	combout => \i0|Err~2_combout\);

-- Location: LCCOMB_X1_Y14_N24
\i0|Err~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Err~0_combout\ = (\D~input_o\ & ((\G~input_o\) # ((\F~input_o\) # (\E~input_o\)))) # (!\D~input_o\ & ((\G~input_o\ & ((\F~input_o\) # (\E~input_o\))) # (!\G~input_o\ & (\F~input_o\ & \E~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datab => \G~input_o\,
	datac => \F~input_o\,
	datad => \E~input_o\,
	combout => \i0|Err~0_combout\);

-- Location: LCCOMB_X1_Y14_N26
\i0|Err~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Err~1_combout\ = (\A~input_o\ & ((\C~input_o\) # ((\H~input_o\) # (\B~input_o\)))) # (!\A~input_o\ & ((\C~input_o\ & ((\H~input_o\) # (\B~input_o\))) # (!\C~input_o\ & (\H~input_o\ & \B~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datab => \C~input_o\,
	datac => \H~input_o\,
	datad => \B~input_o\,
	combout => \i0|Err~1_combout\);

-- Location: LCCOMB_X1_Y14_N30
\i0|Err~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Err~3_combout\ = (\i0|Err~0_combout\) # ((\i0|Err~1_combout\) # ((\i0|Err~2_combout\ & \i0|S\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0|Err~2_combout\,
	datab => \i0|Err~0_combout\,
	datac => \i0|Err~1_combout\,
	datad => \i0|S\(2),
	combout => \i0|Err~3_combout\);

-- Location: LCCOMB_X1_Y14_N16
\i2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Mux5~0_combout\ = (\i0|S[1]~1_combout\) # ((\i0|S\(2) & ((\i0|S[0]~0_combout\))) # (!\i0|S\(2) & (\i0|Err~3_combout\ & !\i0|S[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0|S\(2),
	datab => \i0|S[1]~1_combout\,
	datac => \i0|Err~3_combout\,
	datad => \i0|S[0]~0_combout\,
	combout => \i2|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y14_N18
\i2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Mux4~0_combout\ = (\i0|S\(2) & (\i0|S[1]~1_combout\ $ (((\i0|S[0]~0_combout\))))) # (!\i0|S\(2) & ((\i0|S[1]~1_combout\ & ((\i0|S[0]~0_combout\))) # (!\i0|S[1]~1_combout\ & (\i0|Err~3_combout\ & !\i0|S[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0|S\(2),
	datab => \i0|S[1]~1_combout\,
	datac => \i0|Err~3_combout\,
	datad => \i0|S[0]~0_combout\,
	combout => \i2|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y14_N4
\i2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Mux3~0_combout\ = (\i0|S\(2) & (\i0|S[1]~1_combout\ & !\i0|S[0]~0_combout\)) # (!\i0|S\(2) & (!\i0|S[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0|S\(2),
	datab => \i0|S[1]~1_combout\,
	datad => \i0|S[0]~0_combout\,
	combout => \i2|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y14_N22
\i2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Mux1~0_combout\ = (!\i0|S[1]~1_combout\ & (!\i0|S[0]~0_combout\ & ((\i0|S\(2)) # (\i0|Err~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0|S\(2),
	datab => \i0|S[1]~1_combout\,
	datac => \i0|Err~3_combout\,
	datad => \i0|S[0]~0_combout\,
	combout => \i2|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y14_N8
\i2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2|Mux0~0_combout\ = (!\i0|S\(2) & ((\i0|S[1]~1_combout\ & ((\i0|S[0]~0_combout\))) # (!\i0|S[1]~1_combout\ & (\i0|Err~3_combout\ & !\i0|S[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0|S\(2),
	datab => \i0|S[1]~1_combout\,
	datac => \i0|Err~3_combout\,
	datad => \i0|S[0]~0_combout\,
	combout => \i2|Mux0~0_combout\);

ww_Saida(0) <= \Saida[0]~output_o\;

ww_Saida(1) <= \Saida[1]~output_o\;

ww_Saida(2) <= \Saida[2]~output_o\;

ww_Saida(3) <= \Saida[3]~output_o\;

ww_Saida(4) <= \Saida[4]~output_o\;

ww_Saida(5) <= \Saida[5]~output_o\;

ww_Saida(6) <= \Saida[6]~output_o\;

ww_Err <= \Err~output_o\;
END structure;


