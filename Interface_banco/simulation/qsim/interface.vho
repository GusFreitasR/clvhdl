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

-- DATE "01/30/2025 11:48:29"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	interface IS
    PORT (
	display : BUFFER std_logic_vector(34 DOWNTO 0);
	clock : IN std_logic;
	pickReg : IN std_logic;
	startReading : IN std_logic;
	startWriting : IN std_logic;
	input : IN std_logic_vector(15 DOWNTO 0)
	);
END interface;

-- Design Ports Information
-- display[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[7]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[8]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[9]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[10]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[11]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[12]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[13]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[14]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[15]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[16]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[17]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[18]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[19]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[20]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[21]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[22]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[23]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[24]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[25]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[26]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[27]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[28]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[29]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[30]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[31]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[32]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[33]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[34]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pickReg	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- startWriting	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- startReading	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF interface IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_display : std_logic_vector(34 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_pickReg : std_logic;
SIGNAL ww_startReading : std_logic;
SIGNAL ww_startWriting : std_logic;
SIGNAL ww_input : std_logic_vector(15 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \display[0]~output_o\ : std_logic;
SIGNAL \display[1]~output_o\ : std_logic;
SIGNAL \display[2]~output_o\ : std_logic;
SIGNAL \display[3]~output_o\ : std_logic;
SIGNAL \display[4]~output_o\ : std_logic;
SIGNAL \display[5]~output_o\ : std_logic;
SIGNAL \display[6]~output_o\ : std_logic;
SIGNAL \display[7]~output_o\ : std_logic;
SIGNAL \display[8]~output_o\ : std_logic;
SIGNAL \display[9]~output_o\ : std_logic;
SIGNAL \display[10]~output_o\ : std_logic;
SIGNAL \display[11]~output_o\ : std_logic;
SIGNAL \display[12]~output_o\ : std_logic;
SIGNAL \display[13]~output_o\ : std_logic;
SIGNAL \display[14]~output_o\ : std_logic;
SIGNAL \display[15]~output_o\ : std_logic;
SIGNAL \display[16]~output_o\ : std_logic;
SIGNAL \display[17]~output_o\ : std_logic;
SIGNAL \display[18]~output_o\ : std_logic;
SIGNAL \display[19]~output_o\ : std_logic;
SIGNAL \display[20]~output_o\ : std_logic;
SIGNAL \display[21]~output_o\ : std_logic;
SIGNAL \display[22]~output_o\ : std_logic;
SIGNAL \display[23]~output_o\ : std_logic;
SIGNAL \display[24]~output_o\ : std_logic;
SIGNAL \display[25]~output_o\ : std_logic;
SIGNAL \display[26]~output_o\ : std_logic;
SIGNAL \display[27]~output_o\ : std_logic;
SIGNAL \display[28]~output_o\ : std_logic;
SIGNAL \display[29]~output_o\ : std_logic;
SIGNAL \display[30]~output_o\ : std_logic;
SIGNAL \display[31]~output_o\ : std_logic;
SIGNAL \display[32]~output_o\ : std_logic;
SIGNAL \display[33]~output_o\ : std_logic;
SIGNAL \display[34]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \input[0]~input_o\ : std_logic;
SIGNAL \reg_bank_inst|outputReg[0]~0_combout\ : std_logic;
SIGNAL \reg_bank_inst|outputReg[0]~feeder_combout\ : std_logic;
SIGNAL \pickReg~input_o\ : std_logic;
SIGNAL \startReading~input_o\ : std_logic;
SIGNAL \reg_bank_inst|state.IDLE~0_combout\ : std_logic;
SIGNAL \reg_bank_inst|state.IDLE~q\ : std_logic;
SIGNAL \reg_bank_inst|Selector3~4_combout\ : std_logic;
SIGNAL \reg_bank_inst|Selector3~5_combout\ : std_logic;
SIGNAL \startWriting~input_o\ : std_logic;
SIGNAL \reg_bank_inst|Selector3~1_combout\ : std_logic;
SIGNAL \reg_bank_inst|Selector3~2_combout\ : std_logic;
SIGNAL \reg_bank_inst|Selector3~6_combout\ : std_logic;
SIGNAL \reg_bank_inst|Selector3~3_combout\ : std_logic;
SIGNAL \reg_bank_inst|Selector2~2_combout\ : std_logic;
SIGNAL \reg_bank_inst|Selector2~3_combout\ : std_logic;
SIGNAL \reg_bank_inst|state.reading~q\ : std_logic;
SIGNAL \reg_bank_inst|Selector3~0_combout\ : std_logic;
SIGNAL \reg_bank_inst|Selector3~7_combout\ : std_logic;
SIGNAL \reg_bank_inst|state.writing~q\ : std_logic;
SIGNAL \reg_bank_inst|Selector1~0_combout\ : std_logic;
SIGNAL \reg_bank_inst|Selector1~1_combout\ : std_logic;
SIGNAL \reg_bank_inst|state.pickingReg~q\ : std_logic;
SIGNAL \input[2]~input_o\ : std_logic;
SIGNAL \reg_bank_inst|registers~102feeder_combout\ : std_logic;
SIGNAL \input[1]~input_o\ : std_logic;
SIGNAL \reg_bank_inst|registers~216_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~102_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~219_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~134_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~217_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~118_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~218_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~86_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~158_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~159_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~215_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~70_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~212_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~54_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~214_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~22_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~213_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~38_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~156_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~157_combout\ : std_logic;
SIGNAL \reg_bank_inst|outputBank[2]~2_combout\ : std_logic;
SIGNAL \reg_bank_inst|outputBank~16_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~68feeder_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~68_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~52_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~20_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~36feeder_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~36_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~148_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~149_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~100_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~132_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~116_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~84_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~150_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~151_combout\ : std_logic;
SIGNAL \reg_bank_inst|outputBank[0]~0_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~69feeder_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~69_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~53_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~21_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~37feeder_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~37_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~152_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~153_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~101_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~133_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~117_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~85_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~154_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~155_combout\ : std_logic;
SIGNAL \reg_bank_inst|outputBank[1]~1_combout\ : std_logic;
SIGNAL \input[3]~input_o\ : std_logic;
SIGNAL \reg_bank_inst|registers~103_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~135_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~119_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~87_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~162_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~163_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~71_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~55_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~23_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~39_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~160_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~161_combout\ : std_logic;
SIGNAL \reg_bank_inst|outputBank[3]~3_combout\ : std_logic;
SIGNAL \hexconv_inst|i4|Mux6~0_combout\ : std_logic;
SIGNAL \reg_bank_inst|outputState.IDLE~reg0_q\ : std_logic;
SIGNAL \hexconv_inst|i4|Mux6~1_combout\ : std_logic;
SIGNAL \hexconv_inst|i4|Mux5~0_combout\ : std_logic;
SIGNAL \hexconv_inst|i4|Mux5~1_combout\ : std_logic;
SIGNAL \hexconv_inst|i4|Mux4~0_combout\ : std_logic;
SIGNAL \hexconv_inst|i4|Mux4~1_combout\ : std_logic;
SIGNAL \hexconv_inst|i4|Mux3~0_combout\ : std_logic;
SIGNAL \hexconv_inst|i4|Mux3~1_combout\ : std_logic;
SIGNAL \hexconv_inst|i4|Mux2~0_combout\ : std_logic;
SIGNAL \hexconv_inst|i4|Mux2~1_combout\ : std_logic;
SIGNAL \hexconv_inst|i4|Mux1~0_combout\ : std_logic;
SIGNAL \hexconv_inst|i4|Mux1~1_combout\ : std_logic;
SIGNAL \hexconv_inst|i4|Mux0~0_combout\ : std_logic;
SIGNAL \hexconv_inst|i4|Mux0~1_combout\ : std_logic;
SIGNAL \input[4]~input_o\ : std_logic;
SIGNAL \reg_bank_inst|registers~104_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~136_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~120_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~88_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~166_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~167_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~72feeder_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~72_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~56_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~24_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~40feeder_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~40_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~164_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~165_combout\ : std_logic;
SIGNAL \reg_bank_inst|outputBank[4]~4_combout\ : std_logic;
SIGNAL \input[5]~input_o\ : std_logic;
SIGNAL \reg_bank_inst|registers~105_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~137_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~121_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~89_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~170_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~171_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~73feeder_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~73_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~57_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~25_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~41_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~168_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~169_combout\ : std_logic;
SIGNAL \reg_bank_inst|outputBank[5]~5_combout\ : std_logic;
SIGNAL \input[7]~input_o\ : std_logic;
SIGNAL \reg_bank_inst|registers~107feeder_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~107_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~139_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~123_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~91_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~178_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~179_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~75_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~59_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~27_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~43_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~176_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~177_combout\ : std_logic;
SIGNAL \reg_bank_inst|outputBank[7]~7_combout\ : std_logic;
SIGNAL \input[6]~input_o\ : std_logic;
SIGNAL \reg_bank_inst|registers~106feeder_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~106_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~138_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~122feeder_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~122_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~90_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~174_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~175_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~74feeder_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~74_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~58_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~26_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~42feeder_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~42_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~172_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~173_combout\ : std_logic;
SIGNAL \reg_bank_inst|outputBank[6]~6_combout\ : std_logic;
SIGNAL \hexconv_inst|i3|Mux6~0_combout\ : std_logic;
SIGNAL \hexconv_inst|i3|Mux6~1_combout\ : std_logic;
SIGNAL \hexconv_inst|i3|Mux5~0_combout\ : std_logic;
SIGNAL \hexconv_inst|i3|Mux5~1_combout\ : std_logic;
SIGNAL \hexconv_inst|i3|Mux4~0_combout\ : std_logic;
SIGNAL \hexconv_inst|i3|Mux4~1_combout\ : std_logic;
SIGNAL \hexconv_inst|i3|Mux3~0_combout\ : std_logic;
SIGNAL \hexconv_inst|i3|Mux3~1_combout\ : std_logic;
SIGNAL \hexconv_inst|i3|Mux2~0_combout\ : std_logic;
SIGNAL \hexconv_inst|i3|Mux2~1_combout\ : std_logic;
SIGNAL \hexconv_inst|i3|Mux1~0_combout\ : std_logic;
SIGNAL \hexconv_inst|i3|Mux1~1_combout\ : std_logic;
SIGNAL \hexconv_inst|i3|Mux0~0_combout\ : std_logic;
SIGNAL \hexconv_inst|i3|Mux0~1_combout\ : std_logic;
SIGNAL \input[10]~input_o\ : std_logic;
SIGNAL \reg_bank_inst|registers~110_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~142_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~126_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~94_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~190_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~191_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~78_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~62_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~46_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~30_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~188_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~189_combout\ : std_logic;
SIGNAL \reg_bank_inst|outputBank[10]~10_combout\ : std_logic;
SIGNAL \input[9]~input_o\ : std_logic;
SIGNAL \reg_bank_inst|registers~77feeder_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~77_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~61_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~45feeder_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~45_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~29_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~184_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~185_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~109_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~141_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~125_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~93_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~186_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~187_combout\ : std_logic;
SIGNAL \reg_bank_inst|outputBank[9]~9_combout\ : std_logic;
SIGNAL \input[11]~input_o\ : std_logic;
SIGNAL \reg_bank_inst|registers~111_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~143_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~127_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~95_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~194_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~195_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~79feeder_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~79_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~63_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~47feeder_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~47_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~31_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~192_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~193_combout\ : std_logic;
SIGNAL \reg_bank_inst|outputBank[11]~11_combout\ : std_logic;
SIGNAL \input[8]~input_o\ : std_logic;
SIGNAL \reg_bank_inst|registers~108_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~140_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~124_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~92_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~182_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~183_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~76feeder_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~76_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~60_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~28_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~44feeder_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~44_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~180_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~181_combout\ : std_logic;
SIGNAL \reg_bank_inst|outputBank[8]~8_combout\ : std_logic;
SIGNAL \hexconv_inst|i2|Mux6~0_combout\ : std_logic;
SIGNAL \hexconv_inst|i2|Mux6~1_combout\ : std_logic;
SIGNAL \hexconv_inst|i2|Mux5~0_combout\ : std_logic;
SIGNAL \hexconv_inst|i2|Mux5~1_combout\ : std_logic;
SIGNAL \hexconv_inst|i2|Mux4~0_combout\ : std_logic;
SIGNAL \hexconv_inst|i2|Mux4~1_combout\ : std_logic;
SIGNAL \hexconv_inst|i2|Mux3~0_combout\ : std_logic;
SIGNAL \hexconv_inst|i2|Mux3~1_combout\ : std_logic;
SIGNAL \hexconv_inst|i2|Mux2~0_combout\ : std_logic;
SIGNAL \hexconv_inst|i2|Mux2~1_combout\ : std_logic;
SIGNAL \hexconv_inst|i2|Mux1~0_combout\ : std_logic;
SIGNAL \hexconv_inst|i2|Mux1~1_combout\ : std_logic;
SIGNAL \hexconv_inst|i2|Mux0~0_combout\ : std_logic;
SIGNAL \hexconv_inst|i2|Mux0~1_combout\ : std_logic;
SIGNAL \input[15]~input_o\ : std_logic;
SIGNAL \reg_bank_inst|registers~115_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~147_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~131_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~99_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~210_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~211_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~83feeder_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~83_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~67_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~51feeder_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~51_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~35_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~208_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~209_combout\ : std_logic;
SIGNAL \reg_bank_inst|outputBank[15]~15_combout\ : std_logic;
SIGNAL \input[14]~input_o\ : std_logic;
SIGNAL \reg_bank_inst|registers~114_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~146_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~130_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~98_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~206_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~207_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~82feeder_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~82_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~66_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~50feeder_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~50_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~34_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~204_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~205_combout\ : std_logic;
SIGNAL \reg_bank_inst|outputBank[14]~14_combout\ : std_logic;
SIGNAL \input[12]~input_o\ : std_logic;
SIGNAL \reg_bank_inst|registers~80_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~64_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~48_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~32_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~196_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~197_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~112_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~144_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~128_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~96_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~198_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~199_combout\ : std_logic;
SIGNAL \reg_bank_inst|outputBank[12]~12_combout\ : std_logic;
SIGNAL \input[13]~input_o\ : std_logic;
SIGNAL \reg_bank_inst|registers~113feeder_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~113_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~145_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~129_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~97_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~202_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~203_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~81feeder_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~81_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~65_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~33_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~49_q\ : std_logic;
SIGNAL \reg_bank_inst|registers~200_combout\ : std_logic;
SIGNAL \reg_bank_inst|registers~201_combout\ : std_logic;
SIGNAL \reg_bank_inst|outputBank[13]~13_combout\ : std_logic;
SIGNAL \hexconv_inst|i1|Mux6~0_combout\ : std_logic;
SIGNAL \hexconv_inst|i1|Mux6~1_combout\ : std_logic;
SIGNAL \hexconv_inst|i1|Mux5~0_combout\ : std_logic;
SIGNAL \hexconv_inst|i1|Mux5~1_combout\ : std_logic;
SIGNAL \hexconv_inst|i1|Mux4~0_combout\ : std_logic;
SIGNAL \hexconv_inst|i1|Mux4~1_combout\ : std_logic;
SIGNAL \hexconv_inst|i1|Mux3~0_combout\ : std_logic;
SIGNAL \hexconv_inst|i1|Mux3~1_combout\ : std_logic;
SIGNAL \hexconv_inst|i1|Mux2~0_combout\ : std_logic;
SIGNAL \hexconv_inst|i1|Mux2~1_combout\ : std_logic;
SIGNAL \hexconv_inst|i1|Mux1~0_combout\ : std_logic;
SIGNAL \hexconv_inst|i1|Mux1~1_combout\ : std_logic;
SIGNAL \hexconv_inst|i1|Mux0~0_combout\ : std_logic;
SIGNAL \hexconv_inst|i1|Mux0~1_combout\ : std_logic;
SIGNAL \hexconv_inst|i0|Mux6~0_combout\ : std_logic;
SIGNAL \hexconv_inst|i0|Mux5~0_combout\ : std_logic;
SIGNAL \hexconv_inst|i0|leds[2]~0_combout\ : std_logic;
SIGNAL \hexconv_inst|i0|Mux3~0_combout\ : std_logic;
SIGNAL \hexconv_inst|i0|Mux2~0_combout\ : std_logic;
SIGNAL \hexconv_inst|i0|Mux1~0_combout\ : std_logic;
SIGNAL \hexconv_inst|i0|Mux0~0_combout\ : std_logic;
SIGNAL \reg_bank_inst|outputReg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \reg_bank_inst|outputBank\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg_bank_inst|ALT_INV_state.reading~q\ : std_logic;
SIGNAL \hexconv_inst|i0|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \hexconv_inst|i0|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \hexconv_inst|i0|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \hexconv_inst|i0|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \hexconv_inst|i0|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \hexconv_inst|i0|ALT_INV_Mux6~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

display <= ww_display;
ww_clock <= clock;
ww_pickReg <= pickReg;
ww_startReading <= startReading;
ww_startWriting <= startWriting;
ww_input <= input;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\reg_bank_inst|ALT_INV_state.reading~q\ <= NOT \reg_bank_inst|state.reading~q\;
\hexconv_inst|i0|ALT_INV_Mux0~0_combout\ <= NOT \hexconv_inst|i0|Mux0~0_combout\;
\hexconv_inst|i0|ALT_INV_Mux1~0_combout\ <= NOT \hexconv_inst|i0|Mux1~0_combout\;
\hexconv_inst|i0|ALT_INV_Mux2~0_combout\ <= NOT \hexconv_inst|i0|Mux2~0_combout\;
\hexconv_inst|i0|ALT_INV_Mux3~0_combout\ <= NOT \hexconv_inst|i0|Mux3~0_combout\;
\hexconv_inst|i0|ALT_INV_Mux5~0_combout\ <= NOT \hexconv_inst|i0|Mux5~0_combout\;
\hexconv_inst|i0|ALT_INV_Mux6~0_combout\ <= NOT \hexconv_inst|i0|Mux6~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\display[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexconv_inst|i4|Mux6~1_combout\,
	devoe => ww_devoe,
	o => \display[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\display[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexconv_inst|i4|Mux5~1_combout\,
	devoe => ww_devoe,
	o => \display[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\display[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexconv_inst|i4|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \display[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\display[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexconv_inst|i4|Mux3~1_combout\,
	devoe => ww_devoe,
	o => \display[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\display[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexconv_inst|i4|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \display[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\display[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexconv_inst|i4|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \display[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\display[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexconv_inst|i4|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \display[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\display[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexconv_inst|i3|Mux6~1_combout\,
	devoe => ww_devoe,
	o => \display[7]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\display[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexconv_inst|i3|Mux5~1_combout\,
	devoe => ww_devoe,
	o => \display[8]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\display[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexconv_inst|i3|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \display[9]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\display[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexconv_inst|i3|Mux3~1_combout\,
	devoe => ww_devoe,
	o => \display[10]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\display[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexconv_inst|i3|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \display[11]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\display[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexconv_inst|i3|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \display[12]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\display[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexconv_inst|i3|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \display[13]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\display[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexconv_inst|i2|Mux6~1_combout\,
	devoe => ww_devoe,
	o => \display[14]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\display[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexconv_inst|i2|Mux5~1_combout\,
	devoe => ww_devoe,
	o => \display[15]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\display[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexconv_inst|i2|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \display[16]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\display[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexconv_inst|i2|Mux3~1_combout\,
	devoe => ww_devoe,
	o => \display[17]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\display[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexconv_inst|i2|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \display[18]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\display[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexconv_inst|i2|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \display[19]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\display[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexconv_inst|i2|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \display[20]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\display[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexconv_inst|i1|Mux6~1_combout\,
	devoe => ww_devoe,
	o => \display[21]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\display[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexconv_inst|i1|Mux5~1_combout\,
	devoe => ww_devoe,
	o => \display[22]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\display[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexconv_inst|i1|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \display[23]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\display[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexconv_inst|i1|Mux3~1_combout\,
	devoe => ww_devoe,
	o => \display[24]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\display[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexconv_inst|i1|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \display[25]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\display[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexconv_inst|i1|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \display[26]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\display[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexconv_inst|i1|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \display[27]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\display[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexconv_inst|i0|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \display[28]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\display[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexconv_inst|i0|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \display[29]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\display[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexconv_inst|i0|leds[2]~0_combout\,
	devoe => ww_devoe,
	o => \display[30]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\display[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexconv_inst|i0|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \display[31]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\display[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexconv_inst|i0|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \display[32]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\display[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexconv_inst|i0|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \display[33]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\display[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexconv_inst|i0|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \display[34]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G4
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y17_N1
\input[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(0),
	o => \input[0]~input_o\);

-- Location: LCCOMB_X111_Y11_N22
\reg_bank_inst|outputReg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|outputReg[0]~0_combout\ = !\input[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input[0]~input_o\,
	combout => \reg_bank_inst|outputReg[0]~0_combout\);

-- Location: LCCOMB_X112_Y11_N10
\reg_bank_inst|outputReg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|outputReg[0]~feeder_combout\ = \reg_bank_inst|outputReg[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_bank_inst|outputReg[0]~0_combout\,
	combout => \reg_bank_inst|outputReg[0]~feeder_combout\);

-- Location: IOIBUF_X115_Y14_N8
\pickReg~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pickReg,
	o => \pickReg~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\startReading~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_startReading,
	o => \startReading~input_o\);

-- Location: LCCOMB_X112_Y11_N30
\reg_bank_inst|state.IDLE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|state.IDLE~0_combout\ = (\reg_bank_inst|Selector3~6_combout\) # (\reg_bank_inst|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_bank_inst|Selector3~6_combout\,
	datac => \reg_bank_inst|state.IDLE~q\,
	combout => \reg_bank_inst|state.IDLE~0_combout\);

-- Location: FF_X112_Y11_N31
\reg_bank_inst|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|state.IDLE~q\);

-- Location: LCCOMB_X111_Y11_N30
\reg_bank_inst|Selector3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|Selector3~4_combout\ = (!\startReading~input_o\ & ((\reg_bank_inst|state.pickingReg~q\) # ((\pickReg~input_o\ & !\reg_bank_inst|state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pickReg~input_o\,
	datab => \startReading~input_o\,
	datac => \reg_bank_inst|state.pickingReg~q\,
	datad => \reg_bank_inst|state.IDLE~q\,
	combout => \reg_bank_inst|Selector3~4_combout\);

-- Location: LCCOMB_X111_Y11_N28
\reg_bank_inst|Selector3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|Selector3~5_combout\ = (\pickReg~input_o\ & (((\startReading~input_o\)) # (!\reg_bank_inst|state.writing~q\))) # (!\pickReg~input_o\ & (!\reg_bank_inst|state.writing~q\ & ((\reg_bank_inst|state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pickReg~input_o\,
	datab => \reg_bank_inst|state.writing~q\,
	datac => \startReading~input_o\,
	datad => \reg_bank_inst|state.IDLE~q\,
	combout => \reg_bank_inst|Selector3~5_combout\);

-- Location: IOIBUF_X115_Y53_N15
\startWriting~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_startWriting,
	o => \startWriting~input_o\);

-- Location: LCCOMB_X112_Y11_N24
\reg_bank_inst|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|Selector3~1_combout\ = (\pickReg~input_o\ & ((\reg_bank_inst|state.reading~q\) # ((\startReading~input_o\ & !\reg_bank_inst|state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \startReading~input_o\,
	datab => \pickReg~input_o\,
	datac => \reg_bank_inst|state.IDLE~q\,
	datad => \reg_bank_inst|state.reading~q\,
	combout => \reg_bank_inst|Selector3~1_combout\);

-- Location: LCCOMB_X112_Y11_N28
\reg_bank_inst|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|Selector3~2_combout\ = (\startWriting~input_o\) # ((!\reg_bank_inst|Selector3~1_combout\ & ((!\startReading~input_o\) # (!\reg_bank_inst|state.pickingReg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \startWriting~input_o\,
	datab => \reg_bank_inst|state.pickingReg~q\,
	datac => \startReading~input_o\,
	datad => \reg_bank_inst|Selector3~1_combout\,
	combout => \reg_bank_inst|Selector3~2_combout\);

-- Location: LCCOMB_X111_Y11_N6
\reg_bank_inst|Selector3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|Selector3~6_combout\ = \reg_bank_inst|Selector3~0_combout\ $ (((\reg_bank_inst|Selector3~5_combout\ & (\reg_bank_inst|Selector3~4_combout\ $ (\reg_bank_inst|Selector3~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|Selector3~4_combout\,
	datab => \reg_bank_inst|Selector3~0_combout\,
	datac => \reg_bank_inst|Selector3~5_combout\,
	datad => \reg_bank_inst|Selector3~2_combout\,
	combout => \reg_bank_inst|Selector3~6_combout\);

-- Location: LCCOMB_X111_Y11_N18
\reg_bank_inst|Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|Selector3~3_combout\ = (\reg_bank_inst|state.writing~q\ & ((!\startReading~input_o\) # (!\pickReg~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pickReg~input_o\,
	datac => \startReading~input_o\,
	datad => \reg_bank_inst|state.writing~q\,
	combout => \reg_bank_inst|Selector3~3_combout\);

-- Location: LCCOMB_X111_Y11_N8
\reg_bank_inst|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|Selector2~2_combout\ = (\reg_bank_inst|Selector3~3_combout\ & (\pickReg~input_o\)) # (!\reg_bank_inst|Selector3~3_combout\ & (\reg_bank_inst|Selector3~2_combout\ $ (((!\pickReg~input_o\ & !\reg_bank_inst|state.IDLE~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pickReg~input_o\,
	datab => \reg_bank_inst|Selector3~3_combout\,
	datac => \reg_bank_inst|state.IDLE~q\,
	datad => \reg_bank_inst|Selector3~2_combout\,
	combout => \reg_bank_inst|Selector2~2_combout\);

-- Location: LCCOMB_X112_Y11_N6
\reg_bank_inst|Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|Selector2~3_combout\ = (\reg_bank_inst|Selector3~6_combout\ & (\reg_bank_inst|Selector2~2_combout\ & ((\pickReg~input_o\) # (!\reg_bank_inst|state.reading~q\)))) # (!\reg_bank_inst|Selector3~6_combout\ & 
-- (((\reg_bank_inst|state.reading~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pickReg~input_o\,
	datab => \reg_bank_inst|Selector3~6_combout\,
	datac => \reg_bank_inst|state.reading~q\,
	datad => \reg_bank_inst|Selector2~2_combout\,
	combout => \reg_bank_inst|Selector2~3_combout\);

-- Location: FF_X112_Y11_N7
\reg_bank_inst|state.reading\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|Selector2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|state.reading~q\);

-- Location: LCCOMB_X111_Y11_N0
\reg_bank_inst|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|Selector3~0_combout\ = (\pickReg~input_o\) # (!\reg_bank_inst|state.reading~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pickReg~input_o\,
	datad => \reg_bank_inst|state.reading~q\,
	combout => \reg_bank_inst|Selector3~0_combout\);

-- Location: LCCOMB_X112_Y11_N26
\reg_bank_inst|Selector3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|Selector3~7_combout\ = (\reg_bank_inst|Selector3~6_combout\ & (\reg_bank_inst|Selector3~0_combout\ & (!\reg_bank_inst|Selector3~2_combout\))) # (!\reg_bank_inst|Selector3~6_combout\ & (((\reg_bank_inst|state.writing~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|Selector3~0_combout\,
	datab => \reg_bank_inst|Selector3~2_combout\,
	datac => \reg_bank_inst|state.writing~q\,
	datad => \reg_bank_inst|Selector3~6_combout\,
	combout => \reg_bank_inst|Selector3~7_combout\);

-- Location: FF_X112_Y11_N27
\reg_bank_inst|state.writing\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|Selector3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|state.writing~q\);

-- Location: LCCOMB_X111_Y11_N24
\reg_bank_inst|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|Selector1~0_combout\ = (!\pickReg~input_o\ & ((\reg_bank_inst|state.writing~q\) # ((\reg_bank_inst|state.reading~q\) # (!\reg_bank_inst|state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pickReg~input_o\,
	datab => \reg_bank_inst|state.writing~q\,
	datac => \reg_bank_inst|state.reading~q\,
	datad => \reg_bank_inst|state.IDLE~q\,
	combout => \reg_bank_inst|Selector1~0_combout\);

-- Location: LCCOMB_X112_Y11_N2
\reg_bank_inst|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|Selector1~1_combout\ = (\reg_bank_inst|Selector3~6_combout\ & (\reg_bank_inst|Selector1~0_combout\)) # (!\reg_bank_inst|Selector3~6_combout\ & ((\reg_bank_inst|state.pickingReg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_bank_inst|Selector1~0_combout\,
	datac => \reg_bank_inst|state.pickingReg~q\,
	datad => \reg_bank_inst|Selector3~6_combout\,
	combout => \reg_bank_inst|Selector1~1_combout\);

-- Location: FF_X112_Y11_N3
\reg_bank_inst|state.pickingReg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|state.pickingReg~q\);

-- Location: FF_X112_Y11_N11
\reg_bank_inst|outputReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|outputReg[0]~feeder_combout\,
	ena => \reg_bank_inst|state.pickingReg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|outputReg\(0));

-- Location: IOIBUF_X115_Y15_N8
\input[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(2),
	o => \input[2]~input_o\);

-- Location: LCCOMB_X111_Y13_N4
\reg_bank_inst|registers~102feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~102feeder_combout\ = \input[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[2]~input_o\,
	combout => \reg_bank_inst|registers~102feeder_combout\);

-- Location: IOIBUF_X115_Y14_N1
\input[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(1),
	o => \input[1]~input_o\);

-- Location: FF_X112_Y11_N21
\reg_bank_inst|outputReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[1]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|state.pickingReg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|outputReg\(1));

-- Location: FF_X112_Y11_N19
\reg_bank_inst|outputReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[2]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|state.pickingReg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|outputReg\(2));

-- Location: LCCOMB_X112_Y11_N4
\reg_bank_inst|registers~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~216_combout\ = (!\reg_bank_inst|outputReg\(0) & (!\reg_bank_inst|outputReg\(1) & (\reg_bank_inst|outputReg\(2) & \reg_bank_inst|state.writing~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(0),
	datab => \reg_bank_inst|outputReg\(1),
	datac => \reg_bank_inst|outputReg\(2),
	datad => \reg_bank_inst|state.writing~q\,
	combout => \reg_bank_inst|registers~216_combout\);

-- Location: FF_X111_Y13_N5
\reg_bank_inst|registers~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|registers~102feeder_combout\,
	ena => \reg_bank_inst|registers~216_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~102_q\);

-- Location: LCCOMB_X112_Y11_N16
\reg_bank_inst|registers~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~219_combout\ = (!\reg_bank_inst|outputReg\(0) & (\reg_bank_inst|outputReg\(1) & (\reg_bank_inst|state.writing~q\ & \reg_bank_inst|outputReg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(0),
	datab => \reg_bank_inst|outputReg\(1),
	datac => \reg_bank_inst|state.writing~q\,
	datad => \reg_bank_inst|outputReg\(2),
	combout => \reg_bank_inst|registers~219_combout\);

-- Location: FF_X111_Y13_N7
\reg_bank_inst|registers~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[2]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~219_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~134_q\);

-- Location: LCCOMB_X112_Y11_N8
\reg_bank_inst|registers~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~217_combout\ = (\reg_bank_inst|outputReg\(0) & (\reg_bank_inst|outputReg\(1) & (\reg_bank_inst|outputReg\(2) & \reg_bank_inst|state.writing~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(0),
	datab => \reg_bank_inst|outputReg\(1),
	datac => \reg_bank_inst|outputReg\(2),
	datad => \reg_bank_inst|state.writing~q\,
	combout => \reg_bank_inst|registers~217_combout\);

-- Location: FF_X112_Y13_N9
\reg_bank_inst|registers~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[2]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~217_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~118_q\);

-- Location: LCCOMB_X112_Y11_N14
\reg_bank_inst|registers~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~218_combout\ = (\reg_bank_inst|outputReg\(0) & (!\reg_bank_inst|outputReg\(1) & (\reg_bank_inst|state.writing~q\ & \reg_bank_inst|outputReg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(0),
	datab => \reg_bank_inst|outputReg\(1),
	datac => \reg_bank_inst|state.writing~q\,
	datad => \reg_bank_inst|outputReg\(2),
	combout => \reg_bank_inst|registers~218_combout\);

-- Location: FF_X112_Y13_N3
\reg_bank_inst|registers~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[2]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~218_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~86_q\);

-- Location: LCCOMB_X112_Y13_N2
\reg_bank_inst|registers~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~158_combout\ = (\reg_bank_inst|outputReg\(0) & ((\reg_bank_inst|outputReg\(1) & (\reg_bank_inst|registers~118_q\)) # (!\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|registers~86_q\))))) # (!\reg_bank_inst|outputReg\(0) & 
-- (((\reg_bank_inst|outputReg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(0),
	datab => \reg_bank_inst|registers~118_q\,
	datac => \reg_bank_inst|registers~86_q\,
	datad => \reg_bank_inst|outputReg\(1),
	combout => \reg_bank_inst|registers~158_combout\);

-- Location: LCCOMB_X111_Y13_N6
\reg_bank_inst|registers~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~159_combout\ = (\reg_bank_inst|outputReg\(0) & (((\reg_bank_inst|registers~158_combout\)))) # (!\reg_bank_inst|outputReg\(0) & ((\reg_bank_inst|registers~158_combout\ & ((\reg_bank_inst|registers~134_q\))) # 
-- (!\reg_bank_inst|registers~158_combout\ & (\reg_bank_inst|registers~102_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(0),
	datab => \reg_bank_inst|registers~102_q\,
	datac => \reg_bank_inst|registers~134_q\,
	datad => \reg_bank_inst|registers~158_combout\,
	combout => \reg_bank_inst|registers~159_combout\);

-- Location: LCCOMB_X112_Y11_N0
\reg_bank_inst|registers~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~215_combout\ = (!\reg_bank_inst|outputReg\(0) & (\reg_bank_inst|outputReg\(1) & (!\reg_bank_inst|outputReg\(2) & \reg_bank_inst|state.writing~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(0),
	datab => \reg_bank_inst|outputReg\(1),
	datac => \reg_bank_inst|outputReg\(2),
	datad => \reg_bank_inst|state.writing~q\,
	combout => \reg_bank_inst|registers~215_combout\);

-- Location: FF_X113_Y11_N31
\reg_bank_inst|registers~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[2]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~215_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~70_q\);

-- Location: LCCOMB_X112_Y11_N22
\reg_bank_inst|registers~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~212_combout\ = (\reg_bank_inst|outputReg\(0) & (\reg_bank_inst|outputReg\(1) & (!\reg_bank_inst|outputReg\(2) & \reg_bank_inst|state.writing~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(0),
	datab => \reg_bank_inst|outputReg\(1),
	datac => \reg_bank_inst|outputReg\(2),
	datad => \reg_bank_inst|state.writing~q\,
	combout => \reg_bank_inst|registers~212_combout\);

-- Location: FF_X111_Y11_N17
\reg_bank_inst|registers~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[2]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~212_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~54_q\);

-- Location: LCCOMB_X112_Y11_N20
\reg_bank_inst|registers~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~214_combout\ = (\reg_bank_inst|outputReg\(0) & (!\reg_bank_inst|outputReg\(2) & (!\reg_bank_inst|outputReg\(1) & \reg_bank_inst|state.writing~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(0),
	datab => \reg_bank_inst|outputReg\(2),
	datac => \reg_bank_inst|outputReg\(1),
	datad => \reg_bank_inst|state.writing~q\,
	combout => \reg_bank_inst|registers~214_combout\);

-- Location: FF_X111_Y11_N11
\reg_bank_inst|registers~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[2]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~214_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~22_q\);

-- Location: LCCOMB_X112_Y11_N18
\reg_bank_inst|registers~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~213_combout\ = (!\reg_bank_inst|outputReg\(0) & (!\reg_bank_inst|outputReg\(1) & (!\reg_bank_inst|outputReg\(2) & \reg_bank_inst|state.writing~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(0),
	datab => \reg_bank_inst|outputReg\(1),
	datac => \reg_bank_inst|outputReg\(2),
	datad => \reg_bank_inst|state.writing~q\,
	combout => \reg_bank_inst|registers~213_combout\);

-- Location: FF_X113_Y11_N13
\reg_bank_inst|registers~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[2]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~213_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~38_q\);

-- Location: LCCOMB_X111_Y11_N10
\reg_bank_inst|registers~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~156_combout\ = (\reg_bank_inst|outputReg\(1) & (!\reg_bank_inst|outputReg\(0))) # (!\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|outputReg\(0) & (\reg_bank_inst|registers~22_q\)) # (!\reg_bank_inst|outputReg\(0) & 
-- ((\reg_bank_inst|registers~38_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(1),
	datab => \reg_bank_inst|outputReg\(0),
	datac => \reg_bank_inst|registers~22_q\,
	datad => \reg_bank_inst|registers~38_q\,
	combout => \reg_bank_inst|registers~156_combout\);

-- Location: LCCOMB_X111_Y11_N16
\reg_bank_inst|registers~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~157_combout\ = (\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|registers~156_combout\ & (\reg_bank_inst|registers~70_q\)) # (!\reg_bank_inst|registers~156_combout\ & ((\reg_bank_inst|registers~54_q\))))) # 
-- (!\reg_bank_inst|outputReg\(1) & (((\reg_bank_inst|registers~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|registers~70_q\,
	datab => \reg_bank_inst|outputReg\(1),
	datac => \reg_bank_inst|registers~54_q\,
	datad => \reg_bank_inst|registers~156_combout\,
	combout => \reg_bank_inst|registers~157_combout\);

-- Location: LCCOMB_X110_Y13_N16
\reg_bank_inst|outputBank[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|outputBank[2]~2_combout\ = (\reg_bank_inst|outputReg\(2) & (\reg_bank_inst|registers~159_combout\)) # (!\reg_bank_inst|outputReg\(2) & ((\reg_bank_inst|registers~157_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|registers~159_combout\,
	datab => \reg_bank_inst|outputReg\(2),
	datad => \reg_bank_inst|registers~157_combout\,
	combout => \reg_bank_inst|outputBank[2]~2_combout\);

-- Location: LCCOMB_X112_Y11_N12
\reg_bank_inst|outputBank~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|outputBank~16_combout\ = (\reg_bank_inst|state.IDLE~q\ & !\reg_bank_inst|state.pickingReg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_bank_inst|state.IDLE~q\,
	datad => \reg_bank_inst|state.pickingReg~q\,
	combout => \reg_bank_inst|outputBank~16_combout\);

-- Location: FF_X110_Y13_N17
\reg_bank_inst|outputBank[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|outputBank[2]~2_combout\,
	asdata => \input[2]~input_o\,
	sload => \reg_bank_inst|ALT_INV_state.reading~q\,
	ena => \reg_bank_inst|outputBank~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|outputBank\(2));

-- Location: LCCOMB_X113_Y11_N10
\reg_bank_inst|registers~68feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~68feeder_combout\ = \input[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[0]~input_o\,
	combout => \reg_bank_inst|registers~68feeder_combout\);

-- Location: FF_X113_Y11_N11
\reg_bank_inst|registers~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|registers~68feeder_combout\,
	ena => \reg_bank_inst|registers~215_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~68_q\);

-- Location: FF_X111_Y11_N21
\reg_bank_inst|registers~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[0]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~212_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~52_q\);

-- Location: FF_X111_Y11_N3
\reg_bank_inst|registers~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[0]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~214_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~20_q\);

-- Location: LCCOMB_X113_Y11_N20
\reg_bank_inst|registers~36feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~36feeder_combout\ = \input[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[0]~input_o\,
	combout => \reg_bank_inst|registers~36feeder_combout\);

-- Location: FF_X113_Y11_N21
\reg_bank_inst|registers~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|registers~36feeder_combout\,
	ena => \reg_bank_inst|registers~213_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~36_q\);

-- Location: LCCOMB_X111_Y11_N2
\reg_bank_inst|registers~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~148_combout\ = (\reg_bank_inst|outputReg\(1) & (!\reg_bank_inst|outputReg\(0))) # (!\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|outputReg\(0) & (\reg_bank_inst|registers~20_q\)) # (!\reg_bank_inst|outputReg\(0) & 
-- ((\reg_bank_inst|registers~36_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(1),
	datab => \reg_bank_inst|outputReg\(0),
	datac => \reg_bank_inst|registers~20_q\,
	datad => \reg_bank_inst|registers~36_q\,
	combout => \reg_bank_inst|registers~148_combout\);

-- Location: LCCOMB_X111_Y11_N20
\reg_bank_inst|registers~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~149_combout\ = (\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|registers~148_combout\ & (\reg_bank_inst|registers~68_q\)) # (!\reg_bank_inst|registers~148_combout\ & ((\reg_bank_inst|registers~52_q\))))) # 
-- (!\reg_bank_inst|outputReg\(1) & (((\reg_bank_inst|registers~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|registers~68_q\,
	datab => \reg_bank_inst|outputReg\(1),
	datac => \reg_bank_inst|registers~52_q\,
	datad => \reg_bank_inst|registers~148_combout\,
	combout => \reg_bank_inst|registers~149_combout\);

-- Location: FF_X111_Y13_N25
\reg_bank_inst|registers~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[0]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~216_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~100_q\);

-- Location: FF_X111_Y13_N27
\reg_bank_inst|registers~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[0]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~219_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~132_q\);

-- Location: FF_X112_Y13_N29
\reg_bank_inst|registers~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[0]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~217_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~116_q\);

-- Location: FF_X112_Y13_N19
\reg_bank_inst|registers~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[0]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~218_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~84_q\);

-- Location: LCCOMB_X112_Y13_N18
\reg_bank_inst|registers~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~150_combout\ = (\reg_bank_inst|outputReg\(0) & ((\reg_bank_inst|outputReg\(1) & (\reg_bank_inst|registers~116_q\)) # (!\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|registers~84_q\))))) # (!\reg_bank_inst|outputReg\(0) & 
-- (((\reg_bank_inst|outputReg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(0),
	datab => \reg_bank_inst|registers~116_q\,
	datac => \reg_bank_inst|registers~84_q\,
	datad => \reg_bank_inst|outputReg\(1),
	combout => \reg_bank_inst|registers~150_combout\);

-- Location: LCCOMB_X111_Y13_N26
\reg_bank_inst|registers~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~151_combout\ = (\reg_bank_inst|outputReg\(0) & (((\reg_bank_inst|registers~150_combout\)))) # (!\reg_bank_inst|outputReg\(0) & ((\reg_bank_inst|registers~150_combout\ & ((\reg_bank_inst|registers~132_q\))) # 
-- (!\reg_bank_inst|registers~150_combout\ & (\reg_bank_inst|registers~100_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(0),
	datab => \reg_bank_inst|registers~100_q\,
	datac => \reg_bank_inst|registers~132_q\,
	datad => \reg_bank_inst|registers~150_combout\,
	combout => \reg_bank_inst|registers~151_combout\);

-- Location: LCCOMB_X110_Y13_N12
\reg_bank_inst|outputBank[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|outputBank[0]~0_combout\ = (\reg_bank_inst|outputReg\(2) & ((\reg_bank_inst|registers~151_combout\))) # (!\reg_bank_inst|outputReg\(2) & (\reg_bank_inst|registers~149_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(2),
	datab => \reg_bank_inst|registers~149_combout\,
	datad => \reg_bank_inst|registers~151_combout\,
	combout => \reg_bank_inst|outputBank[0]~0_combout\);

-- Location: FF_X110_Y13_N13
\reg_bank_inst|outputBank[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|outputBank[0]~0_combout\,
	asdata => \input[0]~input_o\,
	sload => \reg_bank_inst|ALT_INV_state.reading~q\,
	ena => \reg_bank_inst|outputBank~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|outputBank\(0));

-- Location: LCCOMB_X113_Y11_N18
\reg_bank_inst|registers~69feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~69feeder_combout\ = \input[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[1]~input_o\,
	combout => \reg_bank_inst|registers~69feeder_combout\);

-- Location: FF_X113_Y11_N19
\reg_bank_inst|registers~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|registers~69feeder_combout\,
	ena => \reg_bank_inst|registers~215_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~69_q\);

-- Location: FF_X110_Y11_N29
\reg_bank_inst|registers~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[1]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~212_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~53_q\);

-- Location: FF_X110_Y11_N27
\reg_bank_inst|registers~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[1]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~214_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~21_q\);

-- Location: LCCOMB_X113_Y11_N28
\reg_bank_inst|registers~37feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~37feeder_combout\ = \input[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[1]~input_o\,
	combout => \reg_bank_inst|registers~37feeder_combout\);

-- Location: FF_X113_Y11_N29
\reg_bank_inst|registers~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|registers~37feeder_combout\,
	ena => \reg_bank_inst|registers~213_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~37_q\);

-- Location: LCCOMB_X110_Y11_N26
\reg_bank_inst|registers~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~152_combout\ = (\reg_bank_inst|outputReg\(1) & (!\reg_bank_inst|outputReg\(0))) # (!\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|outputReg\(0) & (\reg_bank_inst|registers~21_q\)) # (!\reg_bank_inst|outputReg\(0) & 
-- ((\reg_bank_inst|registers~37_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(1),
	datab => \reg_bank_inst|outputReg\(0),
	datac => \reg_bank_inst|registers~21_q\,
	datad => \reg_bank_inst|registers~37_q\,
	combout => \reg_bank_inst|registers~152_combout\);

-- Location: LCCOMB_X110_Y11_N28
\reg_bank_inst|registers~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~153_combout\ = (\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|registers~152_combout\ & (\reg_bank_inst|registers~69_q\)) # (!\reg_bank_inst|registers~152_combout\ & ((\reg_bank_inst|registers~53_q\))))) # 
-- (!\reg_bank_inst|outputReg\(1) & (((\reg_bank_inst|registers~152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(1),
	datab => \reg_bank_inst|registers~69_q\,
	datac => \reg_bank_inst|registers~53_q\,
	datad => \reg_bank_inst|registers~152_combout\,
	combout => \reg_bank_inst|registers~153_combout\);

-- Location: FF_X111_Y13_N13
\reg_bank_inst|registers~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[1]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~216_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~101_q\);

-- Location: FF_X111_Y13_N23
\reg_bank_inst|registers~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[1]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~219_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~133_q\);

-- Location: FF_X112_Y13_N13
\reg_bank_inst|registers~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[1]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~217_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~117_q\);

-- Location: FF_X112_Y13_N23
\reg_bank_inst|registers~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[1]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~218_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~85_q\);

-- Location: LCCOMB_X112_Y13_N22
\reg_bank_inst|registers~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~154_combout\ = (\reg_bank_inst|outputReg\(0) & ((\reg_bank_inst|outputReg\(1) & (\reg_bank_inst|registers~117_q\)) # (!\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|registers~85_q\))))) # (!\reg_bank_inst|outputReg\(0) & 
-- (((\reg_bank_inst|outputReg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(0),
	datab => \reg_bank_inst|registers~117_q\,
	datac => \reg_bank_inst|registers~85_q\,
	datad => \reg_bank_inst|outputReg\(1),
	combout => \reg_bank_inst|registers~154_combout\);

-- Location: LCCOMB_X111_Y13_N22
\reg_bank_inst|registers~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~155_combout\ = (\reg_bank_inst|outputReg\(0) & (((\reg_bank_inst|registers~154_combout\)))) # (!\reg_bank_inst|outputReg\(0) & ((\reg_bank_inst|registers~154_combout\ & ((\reg_bank_inst|registers~133_q\))) # 
-- (!\reg_bank_inst|registers~154_combout\ & (\reg_bank_inst|registers~101_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(0),
	datab => \reg_bank_inst|registers~101_q\,
	datac => \reg_bank_inst|registers~133_q\,
	datad => \reg_bank_inst|registers~154_combout\,
	combout => \reg_bank_inst|registers~155_combout\);

-- Location: LCCOMB_X110_Y13_N10
\reg_bank_inst|outputBank[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|outputBank[1]~1_combout\ = (\reg_bank_inst|outputReg\(2) & ((\reg_bank_inst|registers~155_combout\))) # (!\reg_bank_inst|outputReg\(2) & (\reg_bank_inst|registers~153_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(2),
	datab => \reg_bank_inst|registers~153_combout\,
	datad => \reg_bank_inst|registers~155_combout\,
	combout => \reg_bank_inst|outputBank[1]~1_combout\);

-- Location: FF_X110_Y13_N11
\reg_bank_inst|outputBank[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|outputBank[1]~1_combout\,
	asdata => \input[1]~input_o\,
	sload => \reg_bank_inst|ALT_INV_state.reading~q\,
	ena => \reg_bank_inst|outputBank~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|outputBank\(1));

-- Location: IOIBUF_X115_Y13_N8
\input[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(3),
	o => \input[3]~input_o\);

-- Location: FF_X111_Y13_N1
\reg_bank_inst|registers~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[3]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~216_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~103_q\);

-- Location: FF_X111_Y13_N11
\reg_bank_inst|registers~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[3]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~219_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~135_q\);

-- Location: FF_X112_Y13_N17
\reg_bank_inst|registers~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[3]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~217_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~119_q\);

-- Location: FF_X112_Y13_N31
\reg_bank_inst|registers~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[3]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~218_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~87_q\);

-- Location: LCCOMB_X112_Y13_N30
\reg_bank_inst|registers~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~162_combout\ = (\reg_bank_inst|outputReg\(0) & ((\reg_bank_inst|outputReg\(1) & (\reg_bank_inst|registers~119_q\)) # (!\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|registers~87_q\))))) # (!\reg_bank_inst|outputReg\(0) & 
-- (((\reg_bank_inst|outputReg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(0),
	datab => \reg_bank_inst|registers~119_q\,
	datac => \reg_bank_inst|registers~87_q\,
	datad => \reg_bank_inst|outputReg\(1),
	combout => \reg_bank_inst|registers~162_combout\);

-- Location: LCCOMB_X111_Y13_N10
\reg_bank_inst|registers~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~163_combout\ = (\reg_bank_inst|outputReg\(0) & (((\reg_bank_inst|registers~162_combout\)))) # (!\reg_bank_inst|outputReg\(0) & ((\reg_bank_inst|registers~162_combout\ & ((\reg_bank_inst|registers~135_q\))) # 
-- (!\reg_bank_inst|registers~162_combout\ & (\reg_bank_inst|registers~103_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(0),
	datab => \reg_bank_inst|registers~103_q\,
	datac => \reg_bank_inst|registers~135_q\,
	datad => \reg_bank_inst|registers~162_combout\,
	combout => \reg_bank_inst|registers~163_combout\);

-- Location: FF_X113_Y11_N7
\reg_bank_inst|registers~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[3]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~215_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~71_q\);

-- Location: FF_X110_Y11_N1
\reg_bank_inst|registers~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[3]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~212_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~55_q\);

-- Location: FF_X110_Y11_N11
\reg_bank_inst|registers~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[3]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~214_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~23_q\);

-- Location: FF_X113_Y11_N25
\reg_bank_inst|registers~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[3]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~213_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~39_q\);

-- Location: LCCOMB_X110_Y11_N10
\reg_bank_inst|registers~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~160_combout\ = (\reg_bank_inst|outputReg\(1) & (!\reg_bank_inst|outputReg\(0))) # (!\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|outputReg\(0) & (\reg_bank_inst|registers~23_q\)) # (!\reg_bank_inst|outputReg\(0) & 
-- ((\reg_bank_inst|registers~39_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(1),
	datab => \reg_bank_inst|outputReg\(0),
	datac => \reg_bank_inst|registers~23_q\,
	datad => \reg_bank_inst|registers~39_q\,
	combout => \reg_bank_inst|registers~160_combout\);

-- Location: LCCOMB_X110_Y11_N0
\reg_bank_inst|registers~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~161_combout\ = (\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|registers~160_combout\ & (\reg_bank_inst|registers~71_q\)) # (!\reg_bank_inst|registers~160_combout\ & ((\reg_bank_inst|registers~55_q\))))) # 
-- (!\reg_bank_inst|outputReg\(1) & (((\reg_bank_inst|registers~160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(1),
	datab => \reg_bank_inst|registers~71_q\,
	datac => \reg_bank_inst|registers~55_q\,
	datad => \reg_bank_inst|registers~160_combout\,
	combout => \reg_bank_inst|registers~161_combout\);

-- Location: LCCOMB_X110_Y13_N2
\reg_bank_inst|outputBank[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|outputBank[3]~3_combout\ = (\reg_bank_inst|outputReg\(2) & (\reg_bank_inst|registers~163_combout\)) # (!\reg_bank_inst|outputReg\(2) & ((\reg_bank_inst|registers~161_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(2),
	datab => \reg_bank_inst|registers~163_combout\,
	datad => \reg_bank_inst|registers~161_combout\,
	combout => \reg_bank_inst|outputBank[3]~3_combout\);

-- Location: FF_X110_Y13_N3
\reg_bank_inst|outputBank[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|outputBank[3]~3_combout\,
	asdata => \input[3]~input_o\,
	sload => \reg_bank_inst|ALT_INV_state.reading~q\,
	ena => \reg_bank_inst|outputBank~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|outputBank\(3));

-- Location: LCCOMB_X110_Y50_N28
\hexconv_inst|i4|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i4|Mux6~0_combout\ = (\reg_bank_inst|outputBank\(2) & (!\reg_bank_inst|outputBank\(1) & (\reg_bank_inst|outputBank\(0) $ (!\reg_bank_inst|outputBank\(3))))) # (!\reg_bank_inst|outputBank\(2) & (\reg_bank_inst|outputBank\(0) & 
-- (\reg_bank_inst|outputBank\(1) $ (!\reg_bank_inst|outputBank\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputBank\(2),
	datab => \reg_bank_inst|outputBank\(0),
	datac => \reg_bank_inst|outputBank\(1),
	datad => \reg_bank_inst|outputBank\(3),
	combout => \hexconv_inst|i4|Mux6~0_combout\);

-- Location: FF_X112_Y11_N25
\reg_bank_inst|outputState.IDLE~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg_bank_inst|state.IDLE~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|outputState.IDLE~reg0_q\);

-- Location: LCCOMB_X110_Y50_N10
\hexconv_inst|i4|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i4|Mux6~1_combout\ = (\hexconv_inst|i4|Mux6~0_combout\) # (!\reg_bank_inst|outputState.IDLE~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hexconv_inst|i4|Mux6~0_combout\,
	datad => \reg_bank_inst|outputState.IDLE~reg0_q\,
	combout => \hexconv_inst|i4|Mux6~1_combout\);

-- Location: LCCOMB_X110_Y50_N24
\hexconv_inst|i4|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i4|Mux5~0_combout\ = (\reg_bank_inst|outputBank\(1) & ((\reg_bank_inst|outputBank\(0) & ((\reg_bank_inst|outputBank\(3)))) # (!\reg_bank_inst|outputBank\(0) & (\reg_bank_inst|outputBank\(2))))) # (!\reg_bank_inst|outputBank\(1) & 
-- (\reg_bank_inst|outputBank\(2) & (\reg_bank_inst|outputBank\(0) $ (\reg_bank_inst|outputBank\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputBank\(2),
	datab => \reg_bank_inst|outputBank\(0),
	datac => \reg_bank_inst|outputBank\(1),
	datad => \reg_bank_inst|outputBank\(3),
	combout => \hexconv_inst|i4|Mux5~0_combout\);

-- Location: LCCOMB_X110_Y50_N22
\hexconv_inst|i4|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i4|Mux5~1_combout\ = (\hexconv_inst|i4|Mux5~0_combout\) # (!\reg_bank_inst|outputState.IDLE~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hexconv_inst|i4|Mux5~0_combout\,
	datad => \reg_bank_inst|outputState.IDLE~reg0_q\,
	combout => \hexconv_inst|i4|Mux5~1_combout\);

-- Location: LCCOMB_X110_Y50_N20
\hexconv_inst|i4|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i4|Mux4~0_combout\ = (\reg_bank_inst|outputBank\(2) & (\reg_bank_inst|outputBank\(3) & ((\reg_bank_inst|outputBank\(1)) # (!\reg_bank_inst|outputBank\(0))))) # (!\reg_bank_inst|outputBank\(2) & (!\reg_bank_inst|outputBank\(0) & 
-- (\reg_bank_inst|outputBank\(1) & !\reg_bank_inst|outputBank\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputBank\(2),
	datab => \reg_bank_inst|outputBank\(0),
	datac => \reg_bank_inst|outputBank\(1),
	datad => \reg_bank_inst|outputBank\(3),
	combout => \hexconv_inst|i4|Mux4~0_combout\);

-- Location: LCCOMB_X110_Y50_N2
\hexconv_inst|i4|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i4|Mux4~1_combout\ = (\hexconv_inst|i4|Mux4~0_combout\) # (!\reg_bank_inst|outputState.IDLE~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hexconv_inst|i4|Mux4~0_combout\,
	datad => \reg_bank_inst|outputState.IDLE~reg0_q\,
	combout => \hexconv_inst|i4|Mux4~1_combout\);

-- Location: LCCOMB_X110_Y50_N8
\hexconv_inst|i4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i4|Mux3~0_combout\ = (\reg_bank_inst|outputBank\(1) & ((\reg_bank_inst|outputBank\(2) & (\reg_bank_inst|outputBank\(0))) # (!\reg_bank_inst|outputBank\(2) & (!\reg_bank_inst|outputBank\(0) & \reg_bank_inst|outputBank\(3))))) # 
-- (!\reg_bank_inst|outputBank\(1) & (!\reg_bank_inst|outputBank\(3) & (\reg_bank_inst|outputBank\(2) $ (\reg_bank_inst|outputBank\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputBank\(2),
	datab => \reg_bank_inst|outputBank\(0),
	datac => \reg_bank_inst|outputBank\(1),
	datad => \reg_bank_inst|outputBank\(3),
	combout => \hexconv_inst|i4|Mux3~0_combout\);

-- Location: LCCOMB_X110_Y50_N30
\hexconv_inst|i4|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i4|Mux3~1_combout\ = (\hexconv_inst|i4|Mux3~0_combout\) # (!\reg_bank_inst|outputState.IDLE~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hexconv_inst|i4|Mux3~0_combout\,
	datad => \reg_bank_inst|outputState.IDLE~reg0_q\,
	combout => \hexconv_inst|i4|Mux3~1_combout\);

-- Location: LCCOMB_X110_Y50_N4
\hexconv_inst|i4|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i4|Mux2~0_combout\ = (\reg_bank_inst|outputBank\(1) & (((\reg_bank_inst|outputBank\(0) & !\reg_bank_inst|outputBank\(3))))) # (!\reg_bank_inst|outputBank\(1) & ((\reg_bank_inst|outputBank\(2) & ((!\reg_bank_inst|outputBank\(3)))) # 
-- (!\reg_bank_inst|outputBank\(2) & (\reg_bank_inst|outputBank\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputBank\(2),
	datab => \reg_bank_inst|outputBank\(0),
	datac => \reg_bank_inst|outputBank\(1),
	datad => \reg_bank_inst|outputBank\(3),
	combout => \hexconv_inst|i4|Mux2~0_combout\);

-- Location: LCCOMB_X110_Y50_N18
\hexconv_inst|i4|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i4|Mux2~1_combout\ = (\hexconv_inst|i4|Mux2~0_combout\) # (!\reg_bank_inst|outputState.IDLE~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hexconv_inst|i4|Mux2~0_combout\,
	datad => \reg_bank_inst|outputState.IDLE~reg0_q\,
	combout => \hexconv_inst|i4|Mux2~1_combout\);

-- Location: LCCOMB_X110_Y50_N16
\hexconv_inst|i4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i4|Mux1~0_combout\ = (\reg_bank_inst|outputBank\(2) & (\reg_bank_inst|outputBank\(0) & (\reg_bank_inst|outputBank\(1) $ (\reg_bank_inst|outputBank\(3))))) # (!\reg_bank_inst|outputBank\(2) & (!\reg_bank_inst|outputBank\(3) & 
-- ((\reg_bank_inst|outputBank\(0)) # (\reg_bank_inst|outputBank\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputBank\(2),
	datab => \reg_bank_inst|outputBank\(0),
	datac => \reg_bank_inst|outputBank\(1),
	datad => \reg_bank_inst|outputBank\(3),
	combout => \hexconv_inst|i4|Mux1~0_combout\);

-- Location: LCCOMB_X110_Y50_N14
\hexconv_inst|i4|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i4|Mux1~1_combout\ = (\hexconv_inst|i4|Mux1~0_combout\) # (!\reg_bank_inst|outputState.IDLE~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hexconv_inst|i4|Mux1~0_combout\,
	datad => \reg_bank_inst|outputState.IDLE~reg0_q\,
	combout => \hexconv_inst|i4|Mux1~1_combout\);

-- Location: LCCOMB_X110_Y50_N12
\hexconv_inst|i4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i4|Mux0~0_combout\ = (\reg_bank_inst|outputBank\(0) & ((\reg_bank_inst|outputBank\(3)) # (\reg_bank_inst|outputBank\(2) $ (\reg_bank_inst|outputBank\(1))))) # (!\reg_bank_inst|outputBank\(0) & ((\reg_bank_inst|outputBank\(1)) # 
-- (\reg_bank_inst|outputBank\(2) $ (\reg_bank_inst|outputBank\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputBank\(2),
	datab => \reg_bank_inst|outputBank\(0),
	datac => \reg_bank_inst|outputBank\(1),
	datad => \reg_bank_inst|outputBank\(3),
	combout => \hexconv_inst|i4|Mux0~0_combout\);

-- Location: LCCOMB_X110_Y50_N26
\hexconv_inst|i4|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i4|Mux0~1_combout\ = (!\reg_bank_inst|outputState.IDLE~reg0_q\) # (!\hexconv_inst|i4|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexconv_inst|i4|Mux0~0_combout\,
	datad => \reg_bank_inst|outputState.IDLE~reg0_q\,
	combout => \hexconv_inst|i4|Mux0~1_combout\);

-- Location: IOIBUF_X115_Y18_N8
\input[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(4),
	o => \input[4]~input_o\);

-- Location: FF_X111_Y13_N29
\reg_bank_inst|registers~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[4]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~216_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~104_q\);

-- Location: FF_X111_Y13_N3
\reg_bank_inst|registers~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[4]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~219_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~136_q\);

-- Location: FF_X112_Y13_N1
\reg_bank_inst|registers~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[4]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~217_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~120_q\);

-- Location: FF_X112_Y13_N11
\reg_bank_inst|registers~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[4]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~218_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~88_q\);

-- Location: LCCOMB_X112_Y13_N10
\reg_bank_inst|registers~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~166_combout\ = (\reg_bank_inst|outputReg\(0) & ((\reg_bank_inst|outputReg\(1) & (\reg_bank_inst|registers~120_q\)) # (!\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|registers~88_q\))))) # (!\reg_bank_inst|outputReg\(0) & 
-- (((\reg_bank_inst|outputReg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(0),
	datab => \reg_bank_inst|registers~120_q\,
	datac => \reg_bank_inst|registers~88_q\,
	datad => \reg_bank_inst|outputReg\(1),
	combout => \reg_bank_inst|registers~166_combout\);

-- Location: LCCOMB_X111_Y13_N2
\reg_bank_inst|registers~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~167_combout\ = (\reg_bank_inst|outputReg\(0) & (((\reg_bank_inst|registers~166_combout\)))) # (!\reg_bank_inst|outputReg\(0) & ((\reg_bank_inst|registers~166_combout\ & ((\reg_bank_inst|registers~136_q\))) # 
-- (!\reg_bank_inst|registers~166_combout\ & (\reg_bank_inst|registers~104_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(0),
	datab => \reg_bank_inst|registers~104_q\,
	datac => \reg_bank_inst|registers~136_q\,
	datad => \reg_bank_inst|registers~166_combout\,
	combout => \reg_bank_inst|registers~167_combout\);

-- Location: LCCOMB_X113_Y11_N2
\reg_bank_inst|registers~72feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~72feeder_combout\ = \input[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[4]~input_o\,
	combout => \reg_bank_inst|registers~72feeder_combout\);

-- Location: FF_X113_Y11_N3
\reg_bank_inst|registers~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|registers~72feeder_combout\,
	ena => \reg_bank_inst|registers~215_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~72_q\);

-- Location: FF_X110_Y11_N13
\reg_bank_inst|registers~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[4]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~212_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~56_q\);

-- Location: FF_X110_Y11_N19
\reg_bank_inst|registers~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[4]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~214_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~24_q\);

-- Location: LCCOMB_X113_Y11_N4
\reg_bank_inst|registers~40feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~40feeder_combout\ = \input[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[4]~input_o\,
	combout => \reg_bank_inst|registers~40feeder_combout\);

-- Location: FF_X113_Y11_N5
\reg_bank_inst|registers~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|registers~40feeder_combout\,
	ena => \reg_bank_inst|registers~213_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~40_q\);

-- Location: LCCOMB_X110_Y11_N18
\reg_bank_inst|registers~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~164_combout\ = (\reg_bank_inst|outputReg\(1) & (!\reg_bank_inst|outputReg\(0))) # (!\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|outputReg\(0) & (\reg_bank_inst|registers~24_q\)) # (!\reg_bank_inst|outputReg\(0) & 
-- ((\reg_bank_inst|registers~40_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(1),
	datab => \reg_bank_inst|outputReg\(0),
	datac => \reg_bank_inst|registers~24_q\,
	datad => \reg_bank_inst|registers~40_q\,
	combout => \reg_bank_inst|registers~164_combout\);

-- Location: LCCOMB_X110_Y11_N12
\reg_bank_inst|registers~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~165_combout\ = (\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|registers~164_combout\ & (\reg_bank_inst|registers~72_q\)) # (!\reg_bank_inst|registers~164_combout\ & ((\reg_bank_inst|registers~56_q\))))) # 
-- (!\reg_bank_inst|outputReg\(1) & (((\reg_bank_inst|registers~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(1),
	datab => \reg_bank_inst|registers~72_q\,
	datac => \reg_bank_inst|registers~56_q\,
	datad => \reg_bank_inst|registers~164_combout\,
	combout => \reg_bank_inst|registers~165_combout\);

-- Location: LCCOMB_X110_Y13_N24
\reg_bank_inst|outputBank[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|outputBank[4]~4_combout\ = (\reg_bank_inst|outputReg\(2) & (\reg_bank_inst|registers~167_combout\)) # (!\reg_bank_inst|outputReg\(2) & ((\reg_bank_inst|registers~165_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|registers~167_combout\,
	datab => \reg_bank_inst|outputReg\(2),
	datad => \reg_bank_inst|registers~165_combout\,
	combout => \reg_bank_inst|outputBank[4]~4_combout\);

-- Location: FF_X110_Y13_N25
\reg_bank_inst|outputBank[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|outputBank[4]~4_combout\,
	asdata => \input[4]~input_o\,
	sload => \reg_bank_inst|ALT_INV_state.reading~q\,
	ena => \reg_bank_inst|outputBank~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|outputBank\(4));

-- Location: IOIBUF_X115_Y11_N8
\input[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(5),
	o => \input[5]~input_o\);

-- Location: FF_X111_Y13_N21
\reg_bank_inst|registers~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[5]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~216_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~105_q\);

-- Location: FF_X111_Y13_N31
\reg_bank_inst|registers~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[5]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~219_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~137_q\);

-- Location: FF_X112_Y13_N25
\reg_bank_inst|registers~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[5]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~217_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~121_q\);

-- Location: FF_X112_Y13_N7
\reg_bank_inst|registers~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[5]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~218_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~89_q\);

-- Location: LCCOMB_X112_Y13_N6
\reg_bank_inst|registers~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~170_combout\ = (\reg_bank_inst|outputReg\(0) & ((\reg_bank_inst|outputReg\(1) & (\reg_bank_inst|registers~121_q\)) # (!\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|registers~89_q\))))) # (!\reg_bank_inst|outputReg\(0) & 
-- (((\reg_bank_inst|outputReg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(0),
	datab => \reg_bank_inst|registers~121_q\,
	datac => \reg_bank_inst|registers~89_q\,
	datad => \reg_bank_inst|outputReg\(1),
	combout => \reg_bank_inst|registers~170_combout\);

-- Location: LCCOMB_X111_Y13_N30
\reg_bank_inst|registers~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~171_combout\ = (\reg_bank_inst|outputReg\(0) & (((\reg_bank_inst|registers~170_combout\)))) # (!\reg_bank_inst|outputReg\(0) & ((\reg_bank_inst|registers~170_combout\ & ((\reg_bank_inst|registers~137_q\))) # 
-- (!\reg_bank_inst|registers~170_combout\ & (\reg_bank_inst|registers~105_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(0),
	datab => \reg_bank_inst|registers~105_q\,
	datac => \reg_bank_inst|registers~137_q\,
	datad => \reg_bank_inst|registers~170_combout\,
	combout => \reg_bank_inst|registers~171_combout\);

-- Location: LCCOMB_X114_Y11_N4
\reg_bank_inst|registers~73feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~73feeder_combout\ = \input[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[5]~input_o\,
	combout => \reg_bank_inst|registers~73feeder_combout\);

-- Location: FF_X114_Y11_N5
\reg_bank_inst|registers~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|registers~73feeder_combout\,
	ena => \reg_bank_inst|registers~215_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~73_q\);

-- Location: FF_X110_Y11_N25
\reg_bank_inst|registers~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[5]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~212_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~57_q\);

-- Location: FF_X110_Y11_N31
\reg_bank_inst|registers~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[5]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~214_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~25_q\);

-- Location: FF_X113_Y11_N17
\reg_bank_inst|registers~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[5]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~213_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~41_q\);

-- Location: LCCOMB_X110_Y11_N30
\reg_bank_inst|registers~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~168_combout\ = (\reg_bank_inst|outputReg\(1) & (!\reg_bank_inst|outputReg\(0))) # (!\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|outputReg\(0) & (\reg_bank_inst|registers~25_q\)) # (!\reg_bank_inst|outputReg\(0) & 
-- ((\reg_bank_inst|registers~41_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(1),
	datab => \reg_bank_inst|outputReg\(0),
	datac => \reg_bank_inst|registers~25_q\,
	datad => \reg_bank_inst|registers~41_q\,
	combout => \reg_bank_inst|registers~168_combout\);

-- Location: LCCOMB_X110_Y11_N24
\reg_bank_inst|registers~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~169_combout\ = (\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|registers~168_combout\ & (\reg_bank_inst|registers~73_q\)) # (!\reg_bank_inst|registers~168_combout\ & ((\reg_bank_inst|registers~57_q\))))) # 
-- (!\reg_bank_inst|outputReg\(1) & (((\reg_bank_inst|registers~168_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(1),
	datab => \reg_bank_inst|registers~73_q\,
	datac => \reg_bank_inst|registers~57_q\,
	datad => \reg_bank_inst|registers~168_combout\,
	combout => \reg_bank_inst|registers~169_combout\);

-- Location: LCCOMB_X110_Y13_N6
\reg_bank_inst|outputBank[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|outputBank[5]~5_combout\ = (\reg_bank_inst|outputReg\(2) & (\reg_bank_inst|registers~171_combout\)) # (!\reg_bank_inst|outputReg\(2) & ((\reg_bank_inst|registers~169_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|registers~171_combout\,
	datab => \reg_bank_inst|outputReg\(2),
	datad => \reg_bank_inst|registers~169_combout\,
	combout => \reg_bank_inst|outputBank[5]~5_combout\);

-- Location: FF_X110_Y13_N7
\reg_bank_inst|outputBank[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|outputBank[5]~5_combout\,
	asdata => \input[5]~input_o\,
	sload => \reg_bank_inst|ALT_INV_state.reading~q\,
	ena => \reg_bank_inst|outputBank~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|outputBank\(5));

-- Location: IOIBUF_X115_Y15_N1
\input[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(7),
	o => \input[7]~input_o\);

-- Location: LCCOMB_X111_Y9_N24
\reg_bank_inst|registers~107feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~107feeder_combout\ = \input[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[7]~input_o\,
	combout => \reg_bank_inst|registers~107feeder_combout\);

-- Location: FF_X111_Y9_N25
\reg_bank_inst|registers~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|registers~107feeder_combout\,
	ena => \reg_bank_inst|registers~216_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~107_q\);

-- Location: FF_X111_Y9_N19
\reg_bank_inst|registers~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[7]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~219_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~139_q\);

-- Location: FF_X112_Y9_N13
\reg_bank_inst|registers~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[7]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~217_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~123_q\);

-- Location: FF_X112_Y9_N31
\reg_bank_inst|registers~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[7]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~218_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~91_q\);

-- Location: LCCOMB_X112_Y9_N30
\reg_bank_inst|registers~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~178_combout\ = (\reg_bank_inst|outputReg\(0) & ((\reg_bank_inst|outputReg\(1) & (\reg_bank_inst|registers~123_q\)) # (!\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|registers~91_q\))))) # (!\reg_bank_inst|outputReg\(0) & 
-- (((\reg_bank_inst|outputReg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|registers~123_q\,
	datab => \reg_bank_inst|outputReg\(0),
	datac => \reg_bank_inst|registers~91_q\,
	datad => \reg_bank_inst|outputReg\(1),
	combout => \reg_bank_inst|registers~178_combout\);

-- Location: LCCOMB_X111_Y9_N18
\reg_bank_inst|registers~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~179_combout\ = (\reg_bank_inst|outputReg\(0) & (((\reg_bank_inst|registers~178_combout\)))) # (!\reg_bank_inst|outputReg\(0) & ((\reg_bank_inst|registers~178_combout\ & ((\reg_bank_inst|registers~139_q\))) # 
-- (!\reg_bank_inst|registers~178_combout\ & (\reg_bank_inst|registers~107_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(0),
	datab => \reg_bank_inst|registers~107_q\,
	datac => \reg_bank_inst|registers~139_q\,
	datad => \reg_bank_inst|registers~178_combout\,
	combout => \reg_bank_inst|registers~179_combout\);

-- Location: FF_X113_Y11_N1
\reg_bank_inst|registers~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[7]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~215_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~75_q\);

-- Location: FF_X110_Y11_N17
\reg_bank_inst|registers~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[7]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~212_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~59_q\);

-- Location: FF_X110_Y11_N23
\reg_bank_inst|registers~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[7]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~214_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~27_q\);

-- Location: FF_X113_Y11_N23
\reg_bank_inst|registers~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[7]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~213_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~43_q\);

-- Location: LCCOMB_X110_Y11_N22
\reg_bank_inst|registers~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~176_combout\ = (\reg_bank_inst|outputReg\(1) & (!\reg_bank_inst|outputReg\(0))) # (!\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|outputReg\(0) & (\reg_bank_inst|registers~27_q\)) # (!\reg_bank_inst|outputReg\(0) & 
-- ((\reg_bank_inst|registers~43_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(1),
	datab => \reg_bank_inst|outputReg\(0),
	datac => \reg_bank_inst|registers~27_q\,
	datad => \reg_bank_inst|registers~43_q\,
	combout => \reg_bank_inst|registers~176_combout\);

-- Location: LCCOMB_X110_Y11_N16
\reg_bank_inst|registers~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~177_combout\ = (\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|registers~176_combout\ & (\reg_bank_inst|registers~75_q\)) # (!\reg_bank_inst|registers~176_combout\ & ((\reg_bank_inst|registers~59_q\))))) # 
-- (!\reg_bank_inst|outputReg\(1) & (((\reg_bank_inst|registers~176_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(1),
	datab => \reg_bank_inst|registers~75_q\,
	datac => \reg_bank_inst|registers~59_q\,
	datad => \reg_bank_inst|registers~176_combout\,
	combout => \reg_bank_inst|registers~177_combout\);

-- Location: LCCOMB_X110_Y9_N16
\reg_bank_inst|outputBank[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|outputBank[7]~7_combout\ = (\reg_bank_inst|outputReg\(2) & (\reg_bank_inst|registers~179_combout\)) # (!\reg_bank_inst|outputReg\(2) & ((\reg_bank_inst|registers~177_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(2),
	datab => \reg_bank_inst|registers~179_combout\,
	datad => \reg_bank_inst|registers~177_combout\,
	combout => \reg_bank_inst|outputBank[7]~7_combout\);

-- Location: FF_X110_Y9_N17
\reg_bank_inst|outputBank[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|outputBank[7]~7_combout\,
	asdata => \input[7]~input_o\,
	sload => \reg_bank_inst|ALT_INV_state.reading~q\,
	ena => \reg_bank_inst|outputBank~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|outputBank\(7));

-- Location: IOIBUF_X115_Y10_N1
\input[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(6),
	o => \input[6]~input_o\);

-- Location: LCCOMB_X111_Y13_N8
\reg_bank_inst|registers~106feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~106feeder_combout\ = \input[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[6]~input_o\,
	combout => \reg_bank_inst|registers~106feeder_combout\);

-- Location: FF_X111_Y13_N9
\reg_bank_inst|registers~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|registers~106feeder_combout\,
	ena => \reg_bank_inst|registers~216_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~106_q\);

-- Location: FF_X111_Y13_N15
\reg_bank_inst|registers~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[6]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~219_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~138_q\);

-- Location: LCCOMB_X112_Y13_N20
\reg_bank_inst|registers~122feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~122feeder_combout\ = \input[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[6]~input_o\,
	combout => \reg_bank_inst|registers~122feeder_combout\);

-- Location: FF_X112_Y13_N21
\reg_bank_inst|registers~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|registers~122feeder_combout\,
	ena => \reg_bank_inst|registers~217_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~122_q\);

-- Location: FF_X112_Y13_N15
\reg_bank_inst|registers~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[6]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~218_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~90_q\);

-- Location: LCCOMB_X112_Y13_N14
\reg_bank_inst|registers~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~174_combout\ = (\reg_bank_inst|outputReg\(0) & ((\reg_bank_inst|outputReg\(1) & (\reg_bank_inst|registers~122_q\)) # (!\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|registers~90_q\))))) # (!\reg_bank_inst|outputReg\(0) & 
-- (((\reg_bank_inst|outputReg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(0),
	datab => \reg_bank_inst|registers~122_q\,
	datac => \reg_bank_inst|registers~90_q\,
	datad => \reg_bank_inst|outputReg\(1),
	combout => \reg_bank_inst|registers~174_combout\);

-- Location: LCCOMB_X111_Y13_N14
\reg_bank_inst|registers~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~175_combout\ = (\reg_bank_inst|outputReg\(0) & (((\reg_bank_inst|registers~174_combout\)))) # (!\reg_bank_inst|outputReg\(0) & ((\reg_bank_inst|registers~174_combout\ & ((\reg_bank_inst|registers~138_q\))) # 
-- (!\reg_bank_inst|registers~174_combout\ & (\reg_bank_inst|registers~106_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(0),
	datab => \reg_bank_inst|registers~106_q\,
	datac => \reg_bank_inst|registers~138_q\,
	datad => \reg_bank_inst|registers~174_combout\,
	combout => \reg_bank_inst|registers~175_combout\);

-- Location: LCCOMB_X113_Y11_N8
\reg_bank_inst|registers~74feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~74feeder_combout\ = \input[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[6]~input_o\,
	combout => \reg_bank_inst|registers~74feeder_combout\);

-- Location: FF_X113_Y11_N9
\reg_bank_inst|registers~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|registers~74feeder_combout\,
	ena => \reg_bank_inst|registers~215_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~74_q\);

-- Location: FF_X110_Y11_N9
\reg_bank_inst|registers~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[6]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~212_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~58_q\);

-- Location: FF_X110_Y11_N3
\reg_bank_inst|registers~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[6]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~214_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~26_q\);

-- Location: LCCOMB_X113_Y11_N14
\reg_bank_inst|registers~42feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~42feeder_combout\ = \input[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[6]~input_o\,
	combout => \reg_bank_inst|registers~42feeder_combout\);

-- Location: FF_X113_Y11_N15
\reg_bank_inst|registers~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|registers~42feeder_combout\,
	ena => \reg_bank_inst|registers~213_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~42_q\);

-- Location: LCCOMB_X110_Y11_N2
\reg_bank_inst|registers~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~172_combout\ = (\reg_bank_inst|outputReg\(1) & (!\reg_bank_inst|outputReg\(0))) # (!\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|outputReg\(0) & (\reg_bank_inst|registers~26_q\)) # (!\reg_bank_inst|outputReg\(0) & 
-- ((\reg_bank_inst|registers~42_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(1),
	datab => \reg_bank_inst|outputReg\(0),
	datac => \reg_bank_inst|registers~26_q\,
	datad => \reg_bank_inst|registers~42_q\,
	combout => \reg_bank_inst|registers~172_combout\);

-- Location: LCCOMB_X110_Y11_N8
\reg_bank_inst|registers~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~173_combout\ = (\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|registers~172_combout\ & (\reg_bank_inst|registers~74_q\)) # (!\reg_bank_inst|registers~172_combout\ & ((\reg_bank_inst|registers~58_q\))))) # 
-- (!\reg_bank_inst|outputReg\(1) & (((\reg_bank_inst|registers~172_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(1),
	datab => \reg_bank_inst|registers~74_q\,
	datac => \reg_bank_inst|registers~58_q\,
	datad => \reg_bank_inst|registers~172_combout\,
	combout => \reg_bank_inst|registers~173_combout\);

-- Location: LCCOMB_X110_Y13_N28
\reg_bank_inst|outputBank[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|outputBank[6]~6_combout\ = (\reg_bank_inst|outputReg\(2) & (\reg_bank_inst|registers~175_combout\)) # (!\reg_bank_inst|outputReg\(2) & ((\reg_bank_inst|registers~173_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(2),
	datab => \reg_bank_inst|registers~175_combout\,
	datad => \reg_bank_inst|registers~173_combout\,
	combout => \reg_bank_inst|outputBank[6]~6_combout\);

-- Location: FF_X110_Y13_N29
\reg_bank_inst|outputBank[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|outputBank[6]~6_combout\,
	asdata => \input[6]~input_o\,
	sload => \reg_bank_inst|ALT_INV_state.reading~q\,
	ena => \reg_bank_inst|outputBank~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|outputBank\(6));

-- Location: LCCOMB_X111_Y20_N16
\hexconv_inst|i3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i3|Mux6~0_combout\ = (\reg_bank_inst|outputBank\(7) & (\reg_bank_inst|outputBank\(4) & (\reg_bank_inst|outputBank\(5) $ (\reg_bank_inst|outputBank\(6))))) # (!\reg_bank_inst|outputBank\(7) & (!\reg_bank_inst|outputBank\(5) & 
-- (\reg_bank_inst|outputBank\(4) $ (\reg_bank_inst|outputBank\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputBank\(4),
	datab => \reg_bank_inst|outputBank\(5),
	datac => \reg_bank_inst|outputBank\(7),
	datad => \reg_bank_inst|outputBank\(6),
	combout => \hexconv_inst|i3|Mux6~0_combout\);

-- Location: LCCOMB_X111_Y20_N6
\hexconv_inst|i3|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i3|Mux6~1_combout\ = (\hexconv_inst|i3|Mux6~0_combout\) # (!\reg_bank_inst|outputState.IDLE~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hexconv_inst|i3|Mux6~0_combout\,
	datad => \reg_bank_inst|outputState.IDLE~reg0_q\,
	combout => \hexconv_inst|i3|Mux6~1_combout\);

-- Location: LCCOMB_X111_Y20_N20
\hexconv_inst|i3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i3|Mux5~0_combout\ = (\reg_bank_inst|outputBank\(5) & ((\reg_bank_inst|outputBank\(4) & (\reg_bank_inst|outputBank\(7))) # (!\reg_bank_inst|outputBank\(4) & ((\reg_bank_inst|outputBank\(6)))))) # (!\reg_bank_inst|outputBank\(5) & 
-- (\reg_bank_inst|outputBank\(6) & (\reg_bank_inst|outputBank\(4) $ (\reg_bank_inst|outputBank\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputBank\(4),
	datab => \reg_bank_inst|outputBank\(5),
	datac => \reg_bank_inst|outputBank\(7),
	datad => \reg_bank_inst|outputBank\(6),
	combout => \hexconv_inst|i3|Mux5~0_combout\);

-- Location: LCCOMB_X111_Y20_N26
\hexconv_inst|i3|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i3|Mux5~1_combout\ = (\hexconv_inst|i3|Mux5~0_combout\) # (!\reg_bank_inst|outputState.IDLE~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hexconv_inst|i3|Mux5~0_combout\,
	datad => \reg_bank_inst|outputState.IDLE~reg0_q\,
	combout => \hexconv_inst|i3|Mux5~1_combout\);

-- Location: LCCOMB_X111_Y20_N12
\hexconv_inst|i3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i3|Mux4~0_combout\ = (\reg_bank_inst|outputBank\(7) & (\reg_bank_inst|outputBank\(6) & ((\reg_bank_inst|outputBank\(5)) # (!\reg_bank_inst|outputBank\(4))))) # (!\reg_bank_inst|outputBank\(7) & (!\reg_bank_inst|outputBank\(4) & 
-- (\reg_bank_inst|outputBank\(5) & !\reg_bank_inst|outputBank\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputBank\(4),
	datab => \reg_bank_inst|outputBank\(5),
	datac => \reg_bank_inst|outputBank\(7),
	datad => \reg_bank_inst|outputBank\(6),
	combout => \hexconv_inst|i3|Mux4~0_combout\);

-- Location: LCCOMB_X111_Y20_N14
\hexconv_inst|i3|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i3|Mux4~1_combout\ = (\hexconv_inst|i3|Mux4~0_combout\) # (!\reg_bank_inst|outputState.IDLE~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexconv_inst|i3|Mux4~0_combout\,
	datad => \reg_bank_inst|outputState.IDLE~reg0_q\,
	combout => \hexconv_inst|i3|Mux4~1_combout\);

-- Location: LCCOMB_X111_Y20_N24
\hexconv_inst|i3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i3|Mux3~0_combout\ = (\reg_bank_inst|outputBank\(5) & ((\reg_bank_inst|outputBank\(4) & ((\reg_bank_inst|outputBank\(6)))) # (!\reg_bank_inst|outputBank\(4) & (\reg_bank_inst|outputBank\(7) & !\reg_bank_inst|outputBank\(6))))) # 
-- (!\reg_bank_inst|outputBank\(5) & (!\reg_bank_inst|outputBank\(7) & (\reg_bank_inst|outputBank\(4) $ (\reg_bank_inst|outputBank\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputBank\(4),
	datab => \reg_bank_inst|outputBank\(5),
	datac => \reg_bank_inst|outputBank\(7),
	datad => \reg_bank_inst|outputBank\(6),
	combout => \hexconv_inst|i3|Mux3~0_combout\);

-- Location: LCCOMB_X111_Y20_N22
\hexconv_inst|i3|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i3|Mux3~1_combout\ = (\hexconv_inst|i3|Mux3~0_combout\) # (!\reg_bank_inst|outputState.IDLE~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hexconv_inst|i3|Mux3~0_combout\,
	datad => \reg_bank_inst|outputState.IDLE~reg0_q\,
	combout => \hexconv_inst|i3|Mux3~1_combout\);

-- Location: LCCOMB_X111_Y20_N28
\hexconv_inst|i3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i3|Mux2~0_combout\ = (\reg_bank_inst|outputBank\(5) & (\reg_bank_inst|outputBank\(4) & (!\reg_bank_inst|outputBank\(7)))) # (!\reg_bank_inst|outputBank\(5) & ((\reg_bank_inst|outputBank\(6) & ((!\reg_bank_inst|outputBank\(7)))) # 
-- (!\reg_bank_inst|outputBank\(6) & (\reg_bank_inst|outputBank\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputBank\(4),
	datab => \reg_bank_inst|outputBank\(5),
	datac => \reg_bank_inst|outputBank\(7),
	datad => \reg_bank_inst|outputBank\(6),
	combout => \hexconv_inst|i3|Mux2~0_combout\);

-- Location: LCCOMB_X111_Y20_N18
\hexconv_inst|i3|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i3|Mux2~1_combout\ = (\hexconv_inst|i3|Mux2~0_combout\) # (!\reg_bank_inst|outputState.IDLE~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hexconv_inst|i3|Mux2~0_combout\,
	datad => \reg_bank_inst|outputState.IDLE~reg0_q\,
	combout => \hexconv_inst|i3|Mux2~1_combout\);

-- Location: LCCOMB_X111_Y20_N4
\hexconv_inst|i3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i3|Mux1~0_combout\ = (\reg_bank_inst|outputBank\(4) & (\reg_bank_inst|outputBank\(7) $ (((\reg_bank_inst|outputBank\(5)) # (!\reg_bank_inst|outputBank\(6)))))) # (!\reg_bank_inst|outputBank\(4) & (\reg_bank_inst|outputBank\(5) & 
-- (!\reg_bank_inst|outputBank\(7) & !\reg_bank_inst|outputBank\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputBank\(4),
	datab => \reg_bank_inst|outputBank\(5),
	datac => \reg_bank_inst|outputBank\(7),
	datad => \reg_bank_inst|outputBank\(6),
	combout => \hexconv_inst|i3|Mux1~0_combout\);

-- Location: LCCOMB_X111_Y20_N10
\hexconv_inst|i3|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i3|Mux1~1_combout\ = (\hexconv_inst|i3|Mux1~0_combout\) # (!\reg_bank_inst|outputState.IDLE~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hexconv_inst|i3|Mux1~0_combout\,
	datad => \reg_bank_inst|outputState.IDLE~reg0_q\,
	combout => \hexconv_inst|i3|Mux1~1_combout\);

-- Location: LCCOMB_X111_Y20_N8
\hexconv_inst|i3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i3|Mux0~0_combout\ = (\reg_bank_inst|outputBank\(4) & ((\reg_bank_inst|outputBank\(7)) # (\reg_bank_inst|outputBank\(5) $ (\reg_bank_inst|outputBank\(6))))) # (!\reg_bank_inst|outputBank\(4) & ((\reg_bank_inst|outputBank\(5)) # 
-- (\reg_bank_inst|outputBank\(7) $ (\reg_bank_inst|outputBank\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputBank\(4),
	datab => \reg_bank_inst|outputBank\(5),
	datac => \reg_bank_inst|outputBank\(7),
	datad => \reg_bank_inst|outputBank\(6),
	combout => \hexconv_inst|i3|Mux0~0_combout\);

-- Location: LCCOMB_X111_Y20_N30
\hexconv_inst|i3|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i3|Mux0~1_combout\ = (!\reg_bank_inst|outputState.IDLE~reg0_q\) # (!\hexconv_inst|i3|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hexconv_inst|i3|Mux0~0_combout\,
	datad => \reg_bank_inst|outputState.IDLE~reg0_q\,
	combout => \hexconv_inst|i3|Mux0~1_combout\);

-- Location: IOIBUF_X115_Y4_N15
\input[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(10),
	o => \input[10]~input_o\);

-- Location: FF_X111_Y9_N13
\reg_bank_inst|registers~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[10]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~216_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~110_q\);

-- Location: FF_X111_Y9_N3
\reg_bank_inst|registers~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[10]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~219_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~142_q\);

-- Location: FF_X112_Y9_N1
\reg_bank_inst|registers~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[10]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~217_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~126_q\);

-- Location: FF_X112_Y9_N19
\reg_bank_inst|registers~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[10]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~218_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~94_q\);

-- Location: LCCOMB_X112_Y9_N18
\reg_bank_inst|registers~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~190_combout\ = (\reg_bank_inst|outputReg\(0) & ((\reg_bank_inst|outputReg\(1) & (\reg_bank_inst|registers~126_q\)) # (!\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|registers~94_q\))))) # (!\reg_bank_inst|outputReg\(0) & 
-- (((\reg_bank_inst|outputReg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|registers~126_q\,
	datab => \reg_bank_inst|outputReg\(0),
	datac => \reg_bank_inst|registers~94_q\,
	datad => \reg_bank_inst|outputReg\(1),
	combout => \reg_bank_inst|registers~190_combout\);

-- Location: LCCOMB_X111_Y9_N2
\reg_bank_inst|registers~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~191_combout\ = (\reg_bank_inst|outputReg\(0) & (((\reg_bank_inst|registers~190_combout\)))) # (!\reg_bank_inst|outputReg\(0) & ((\reg_bank_inst|registers~190_combout\ & ((\reg_bank_inst|registers~142_q\))) # 
-- (!\reg_bank_inst|registers~190_combout\ & (\reg_bank_inst|registers~110_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(0),
	datab => \reg_bank_inst|registers~110_q\,
	datac => \reg_bank_inst|registers~142_q\,
	datad => \reg_bank_inst|registers~190_combout\,
	combout => \reg_bank_inst|registers~191_combout\);

-- Location: FF_X108_Y11_N11
\reg_bank_inst|registers~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[10]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~215_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~78_q\);

-- Location: FF_X109_Y11_N29
\reg_bank_inst|registers~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[10]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~212_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~62_q\);

-- Location: FF_X108_Y11_N5
\reg_bank_inst|registers~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[10]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~213_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~46_q\);

-- Location: FF_X109_Y11_N7
\reg_bank_inst|registers~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[10]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~214_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~30_q\);

-- Location: LCCOMB_X109_Y11_N6
\reg_bank_inst|registers~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~188_combout\ = (\reg_bank_inst|outputReg\(1) & (((!\reg_bank_inst|outputReg\(0))))) # (!\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|outputReg\(0) & ((\reg_bank_inst|registers~30_q\))) # (!\reg_bank_inst|outputReg\(0) & 
-- (\reg_bank_inst|registers~46_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(1),
	datab => \reg_bank_inst|registers~46_q\,
	datac => \reg_bank_inst|registers~30_q\,
	datad => \reg_bank_inst|outputReg\(0),
	combout => \reg_bank_inst|registers~188_combout\);

-- Location: LCCOMB_X109_Y11_N28
\reg_bank_inst|registers~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~189_combout\ = (\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|registers~188_combout\ & (\reg_bank_inst|registers~78_q\)) # (!\reg_bank_inst|registers~188_combout\ & ((\reg_bank_inst|registers~62_q\))))) # 
-- (!\reg_bank_inst|outputReg\(1) & (((\reg_bank_inst|registers~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|registers~78_q\,
	datab => \reg_bank_inst|outputReg\(1),
	datac => \reg_bank_inst|registers~62_q\,
	datad => \reg_bank_inst|registers~188_combout\,
	combout => \reg_bank_inst|registers~189_combout\);

-- Location: LCCOMB_X110_Y9_N18
\reg_bank_inst|outputBank[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|outputBank[10]~10_combout\ = (\reg_bank_inst|outputReg\(2) & (\reg_bank_inst|registers~191_combout\)) # (!\reg_bank_inst|outputReg\(2) & ((\reg_bank_inst|registers~189_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|registers~191_combout\,
	datab => \reg_bank_inst|outputReg\(2),
	datad => \reg_bank_inst|registers~189_combout\,
	combout => \reg_bank_inst|outputBank[10]~10_combout\);

-- Location: FF_X110_Y9_N19
\reg_bank_inst|outputBank[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|outputBank[10]~10_combout\,
	asdata => \input[10]~input_o\,
	sload => \reg_bank_inst|ALT_INV_state.reading~q\,
	ena => \reg_bank_inst|outputBank~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|outputBank\(10));

-- Location: IOIBUF_X115_Y16_N8
\input[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(9),
	o => \input[9]~input_o\);

-- Location: LCCOMB_X108_Y11_N30
\reg_bank_inst|registers~77feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~77feeder_combout\ = \input[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[9]~input_o\,
	combout => \reg_bank_inst|registers~77feeder_combout\);

-- Location: FF_X108_Y11_N31
\reg_bank_inst|registers~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|registers~77feeder_combout\,
	ena => \reg_bank_inst|registers~215_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~77_q\);

-- Location: FF_X109_Y11_N21
\reg_bank_inst|registers~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[9]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~212_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~61_q\);

-- Location: LCCOMB_X108_Y11_N8
\reg_bank_inst|registers~45feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~45feeder_combout\ = \input[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[9]~input_o\,
	combout => \reg_bank_inst|registers~45feeder_combout\);

-- Location: FF_X108_Y11_N9
\reg_bank_inst|registers~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|registers~45feeder_combout\,
	ena => \reg_bank_inst|registers~213_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~45_q\);

-- Location: FF_X109_Y11_N27
\reg_bank_inst|registers~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[9]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~214_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~29_q\);

-- Location: LCCOMB_X109_Y11_N26
\reg_bank_inst|registers~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~184_combout\ = (\reg_bank_inst|outputReg\(1) & (((!\reg_bank_inst|outputReg\(0))))) # (!\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|outputReg\(0) & ((\reg_bank_inst|registers~29_q\))) # (!\reg_bank_inst|outputReg\(0) & 
-- (\reg_bank_inst|registers~45_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(1),
	datab => \reg_bank_inst|registers~45_q\,
	datac => \reg_bank_inst|registers~29_q\,
	datad => \reg_bank_inst|outputReg\(0),
	combout => \reg_bank_inst|registers~184_combout\);

-- Location: LCCOMB_X109_Y11_N20
\reg_bank_inst|registers~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~185_combout\ = (\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|registers~184_combout\ & (\reg_bank_inst|registers~77_q\)) # (!\reg_bank_inst|registers~184_combout\ & ((\reg_bank_inst|registers~61_q\))))) # 
-- (!\reg_bank_inst|outputReg\(1) & (((\reg_bank_inst|registers~184_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|registers~77_q\,
	datab => \reg_bank_inst|outputReg\(1),
	datac => \reg_bank_inst|registers~61_q\,
	datad => \reg_bank_inst|registers~184_combout\,
	combout => \reg_bank_inst|registers~185_combout\);

-- Location: FF_X111_Y9_N17
\reg_bank_inst|registers~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[9]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~216_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~109_q\);

-- Location: FF_X111_Y9_N27
\reg_bank_inst|registers~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[9]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~219_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~141_q\);

-- Location: FF_X112_Y9_N17
\reg_bank_inst|registers~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[9]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~217_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~125_q\);

-- Location: FF_X112_Y9_N11
\reg_bank_inst|registers~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[9]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~218_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~93_q\);

-- Location: LCCOMB_X112_Y9_N10
\reg_bank_inst|registers~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~186_combout\ = (\reg_bank_inst|outputReg\(0) & ((\reg_bank_inst|outputReg\(1) & (\reg_bank_inst|registers~125_q\)) # (!\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|registers~93_q\))))) # (!\reg_bank_inst|outputReg\(0) & 
-- (((\reg_bank_inst|outputReg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|registers~125_q\,
	datab => \reg_bank_inst|outputReg\(0),
	datac => \reg_bank_inst|registers~93_q\,
	datad => \reg_bank_inst|outputReg\(1),
	combout => \reg_bank_inst|registers~186_combout\);

-- Location: LCCOMB_X111_Y9_N26
\reg_bank_inst|registers~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~187_combout\ = (\reg_bank_inst|outputReg\(0) & (((\reg_bank_inst|registers~186_combout\)))) # (!\reg_bank_inst|outputReg\(0) & ((\reg_bank_inst|registers~186_combout\ & ((\reg_bank_inst|registers~141_q\))) # 
-- (!\reg_bank_inst|registers~186_combout\ & (\reg_bank_inst|registers~109_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(0),
	datab => \reg_bank_inst|registers~109_q\,
	datac => \reg_bank_inst|registers~141_q\,
	datad => \reg_bank_inst|registers~186_combout\,
	combout => \reg_bank_inst|registers~187_combout\);

-- Location: LCCOMB_X110_Y9_N20
\reg_bank_inst|outputBank[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|outputBank[9]~9_combout\ = (\reg_bank_inst|outputReg\(2) & ((\reg_bank_inst|registers~187_combout\))) # (!\reg_bank_inst|outputReg\(2) & (\reg_bank_inst|registers~185_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|registers~185_combout\,
	datab => \reg_bank_inst|outputReg\(2),
	datad => \reg_bank_inst|registers~187_combout\,
	combout => \reg_bank_inst|outputBank[9]~9_combout\);

-- Location: FF_X110_Y9_N21
\reg_bank_inst|outputBank[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|outputBank[9]~9_combout\,
	asdata => \input[9]~input_o\,
	sload => \reg_bank_inst|ALT_INV_state.reading~q\,
	ena => \reg_bank_inst|outputBank~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|outputBank\(9));

-- Location: IOIBUF_X115_Y5_N15
\input[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(11),
	o => \input[11]~input_o\);

-- Location: FF_X111_Y9_N21
\reg_bank_inst|registers~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[11]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~216_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~111_q\);

-- Location: FF_X111_Y9_N11
\reg_bank_inst|registers~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[11]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~219_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~143_q\);

-- Location: FF_X112_Y9_N25
\reg_bank_inst|registers~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[11]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~217_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~127_q\);

-- Location: FF_X112_Y9_N3
\reg_bank_inst|registers~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[11]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~218_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~95_q\);

-- Location: LCCOMB_X112_Y9_N2
\reg_bank_inst|registers~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~194_combout\ = (\reg_bank_inst|outputReg\(0) & ((\reg_bank_inst|outputReg\(1) & (\reg_bank_inst|registers~127_q\)) # (!\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|registers~95_q\))))) # (!\reg_bank_inst|outputReg\(0) & 
-- (((\reg_bank_inst|outputReg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|registers~127_q\,
	datab => \reg_bank_inst|outputReg\(0),
	datac => \reg_bank_inst|registers~95_q\,
	datad => \reg_bank_inst|outputReg\(1),
	combout => \reg_bank_inst|registers~194_combout\);

-- Location: LCCOMB_X111_Y9_N10
\reg_bank_inst|registers~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~195_combout\ = (\reg_bank_inst|outputReg\(0) & (((\reg_bank_inst|registers~194_combout\)))) # (!\reg_bank_inst|outputReg\(0) & ((\reg_bank_inst|registers~194_combout\ & ((\reg_bank_inst|registers~143_q\))) # 
-- (!\reg_bank_inst|registers~194_combout\ & (\reg_bank_inst|registers~111_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(0),
	datab => \reg_bank_inst|registers~111_q\,
	datac => \reg_bank_inst|registers~143_q\,
	datad => \reg_bank_inst|registers~194_combout\,
	combout => \reg_bank_inst|registers~195_combout\);

-- Location: LCCOMB_X108_Y11_N6
\reg_bank_inst|registers~79feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~79feeder_combout\ = \input[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[11]~input_o\,
	combout => \reg_bank_inst|registers~79feeder_combout\);

-- Location: FF_X108_Y11_N7
\reg_bank_inst|registers~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|registers~79feeder_combout\,
	ena => \reg_bank_inst|registers~215_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~79_q\);

-- Location: FF_X109_Y11_N9
\reg_bank_inst|registers~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[11]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~212_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~63_q\);

-- Location: LCCOMB_X108_Y11_N24
\reg_bank_inst|registers~47feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~47feeder_combout\ = \input[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[11]~input_o\,
	combout => \reg_bank_inst|registers~47feeder_combout\);

-- Location: FF_X108_Y11_N25
\reg_bank_inst|registers~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|registers~47feeder_combout\,
	ena => \reg_bank_inst|registers~213_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~47_q\);

-- Location: FF_X109_Y11_N11
\reg_bank_inst|registers~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[11]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~214_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~31_q\);

-- Location: LCCOMB_X109_Y11_N10
\reg_bank_inst|registers~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~192_combout\ = (\reg_bank_inst|outputReg\(1) & (((!\reg_bank_inst|outputReg\(0))))) # (!\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|outputReg\(0) & ((\reg_bank_inst|registers~31_q\))) # (!\reg_bank_inst|outputReg\(0) & 
-- (\reg_bank_inst|registers~47_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(1),
	datab => \reg_bank_inst|registers~47_q\,
	datac => \reg_bank_inst|registers~31_q\,
	datad => \reg_bank_inst|outputReg\(0),
	combout => \reg_bank_inst|registers~192_combout\);

-- Location: LCCOMB_X109_Y11_N8
\reg_bank_inst|registers~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~193_combout\ = (\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|registers~192_combout\ & (\reg_bank_inst|registers~79_q\)) # (!\reg_bank_inst|registers~192_combout\ & ((\reg_bank_inst|registers~63_q\))))) # 
-- (!\reg_bank_inst|outputReg\(1) & (((\reg_bank_inst|registers~192_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|registers~79_q\,
	datab => \reg_bank_inst|outputReg\(1),
	datac => \reg_bank_inst|registers~63_q\,
	datad => \reg_bank_inst|registers~192_combout\,
	combout => \reg_bank_inst|registers~193_combout\);

-- Location: LCCOMB_X110_Y9_N24
\reg_bank_inst|outputBank[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|outputBank[11]~11_combout\ = (\reg_bank_inst|outputReg\(2) & (\reg_bank_inst|registers~195_combout\)) # (!\reg_bank_inst|outputReg\(2) & ((\reg_bank_inst|registers~193_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(2),
	datab => \reg_bank_inst|registers~195_combout\,
	datad => \reg_bank_inst|registers~193_combout\,
	combout => \reg_bank_inst|outputBank[11]~11_combout\);

-- Location: FF_X110_Y9_N25
\reg_bank_inst|outputBank[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|outputBank[11]~11_combout\,
	asdata => \input[11]~input_o\,
	sload => \reg_bank_inst|ALT_INV_state.reading~q\,
	ena => \reg_bank_inst|outputBank~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|outputBank\(11));

-- Location: IOIBUF_X115_Y4_N22
\input[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(8),
	o => \input[8]~input_o\);

-- Location: FF_X111_Y9_N1
\reg_bank_inst|registers~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[8]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~216_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~108_q\);

-- Location: FF_X111_Y9_N31
\reg_bank_inst|registers~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[8]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~219_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~140_q\);

-- Location: FF_X112_Y9_N9
\reg_bank_inst|registers~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[8]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~217_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~124_q\);

-- Location: FF_X112_Y9_N23
\reg_bank_inst|registers~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[8]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~218_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~92_q\);

-- Location: LCCOMB_X112_Y9_N22
\reg_bank_inst|registers~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~182_combout\ = (\reg_bank_inst|outputReg\(0) & ((\reg_bank_inst|outputReg\(1) & (\reg_bank_inst|registers~124_q\)) # (!\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|registers~92_q\))))) # (!\reg_bank_inst|outputReg\(0) & 
-- (((\reg_bank_inst|outputReg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|registers~124_q\,
	datab => \reg_bank_inst|outputReg\(0),
	datac => \reg_bank_inst|registers~92_q\,
	datad => \reg_bank_inst|outputReg\(1),
	combout => \reg_bank_inst|registers~182_combout\);

-- Location: LCCOMB_X111_Y9_N30
\reg_bank_inst|registers~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~183_combout\ = (\reg_bank_inst|outputReg\(0) & (((\reg_bank_inst|registers~182_combout\)))) # (!\reg_bank_inst|outputReg\(0) & ((\reg_bank_inst|registers~182_combout\ & ((\reg_bank_inst|registers~140_q\))) # 
-- (!\reg_bank_inst|registers~182_combout\ & (\reg_bank_inst|registers~108_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(0),
	datab => \reg_bank_inst|registers~108_q\,
	datac => \reg_bank_inst|registers~140_q\,
	datad => \reg_bank_inst|registers~182_combout\,
	combout => \reg_bank_inst|registers~183_combout\);

-- Location: LCCOMB_X108_Y11_N18
\reg_bank_inst|registers~76feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~76feeder_combout\ = \input[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[8]~input_o\,
	combout => \reg_bank_inst|registers~76feeder_combout\);

-- Location: FF_X108_Y11_N19
\reg_bank_inst|registers~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|registers~76feeder_combout\,
	ena => \reg_bank_inst|registers~215_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~76_q\);

-- Location: FF_X110_Y11_N21
\reg_bank_inst|registers~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[8]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~212_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~60_q\);

-- Location: FF_X110_Y11_N15
\reg_bank_inst|registers~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[8]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~214_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~28_q\);

-- Location: LCCOMB_X108_Y11_N0
\reg_bank_inst|registers~44feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~44feeder_combout\ = \input[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[8]~input_o\,
	combout => \reg_bank_inst|registers~44feeder_combout\);

-- Location: FF_X108_Y11_N1
\reg_bank_inst|registers~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|registers~44feeder_combout\,
	ena => \reg_bank_inst|registers~213_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~44_q\);

-- Location: LCCOMB_X110_Y11_N14
\reg_bank_inst|registers~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~180_combout\ = (\reg_bank_inst|outputReg\(1) & (!\reg_bank_inst|outputReg\(0))) # (!\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|outputReg\(0) & (\reg_bank_inst|registers~28_q\)) # (!\reg_bank_inst|outputReg\(0) & 
-- ((\reg_bank_inst|registers~44_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(1),
	datab => \reg_bank_inst|outputReg\(0),
	datac => \reg_bank_inst|registers~28_q\,
	datad => \reg_bank_inst|registers~44_q\,
	combout => \reg_bank_inst|registers~180_combout\);

-- Location: LCCOMB_X110_Y11_N20
\reg_bank_inst|registers~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~181_combout\ = (\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|registers~180_combout\ & (\reg_bank_inst|registers~76_q\)) # (!\reg_bank_inst|registers~180_combout\ & ((\reg_bank_inst|registers~60_q\))))) # 
-- (!\reg_bank_inst|outputReg\(1) & (((\reg_bank_inst|registers~180_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(1),
	datab => \reg_bank_inst|registers~76_q\,
	datac => \reg_bank_inst|registers~60_q\,
	datad => \reg_bank_inst|registers~180_combout\,
	combout => \reg_bank_inst|registers~181_combout\);

-- Location: LCCOMB_X110_Y9_N14
\reg_bank_inst|outputBank[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|outputBank[8]~8_combout\ = (\reg_bank_inst|outputReg\(2) & (\reg_bank_inst|registers~183_combout\)) # (!\reg_bank_inst|outputReg\(2) & ((\reg_bank_inst|registers~181_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|registers~183_combout\,
	datab => \reg_bank_inst|outputReg\(2),
	datad => \reg_bank_inst|registers~181_combout\,
	combout => \reg_bank_inst|outputBank[8]~8_combout\);

-- Location: FF_X110_Y9_N15
\reg_bank_inst|outputBank[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|outputBank[8]~8_combout\,
	asdata => \input[8]~input_o\,
	sload => \reg_bank_inst|ALT_INV_state.reading~q\,
	ena => \reg_bank_inst|outputBank~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|outputBank\(8));

-- Location: LCCOMB_X114_Y17_N28
\hexconv_inst|i2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i2|Mux6~0_combout\ = (\reg_bank_inst|outputBank\(10) & (!\reg_bank_inst|outputBank\(9) & (\reg_bank_inst|outputBank\(11) $ (!\reg_bank_inst|outputBank\(8))))) # (!\reg_bank_inst|outputBank\(10) & (\reg_bank_inst|outputBank\(8) & 
-- (\reg_bank_inst|outputBank\(9) $ (!\reg_bank_inst|outputBank\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputBank\(10),
	datab => \reg_bank_inst|outputBank\(9),
	datac => \reg_bank_inst|outputBank\(11),
	datad => \reg_bank_inst|outputBank\(8),
	combout => \hexconv_inst|i2|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y17_N18
\hexconv_inst|i2|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i2|Mux6~1_combout\ = (\hexconv_inst|i2|Mux6~0_combout\) # (!\reg_bank_inst|outputState.IDLE~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_bank_inst|outputState.IDLE~reg0_q\,
	datad => \hexconv_inst|i2|Mux6~0_combout\,
	combout => \hexconv_inst|i2|Mux6~1_combout\);

-- Location: LCCOMB_X114_Y17_N0
\hexconv_inst|i2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i2|Mux5~0_combout\ = (\reg_bank_inst|outputBank\(9) & ((\reg_bank_inst|outputBank\(8) & ((\reg_bank_inst|outputBank\(11)))) # (!\reg_bank_inst|outputBank\(8) & (\reg_bank_inst|outputBank\(10))))) # (!\reg_bank_inst|outputBank\(9) & 
-- (\reg_bank_inst|outputBank\(10) & (\reg_bank_inst|outputBank\(11) $ (\reg_bank_inst|outputBank\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputBank\(10),
	datab => \reg_bank_inst|outputBank\(9),
	datac => \reg_bank_inst|outputBank\(11),
	datad => \reg_bank_inst|outputBank\(8),
	combout => \hexconv_inst|i2|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y17_N30
\hexconv_inst|i2|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i2|Mux5~1_combout\ = (\hexconv_inst|i2|Mux5~0_combout\) # (!\reg_bank_inst|outputState.IDLE~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_bank_inst|outputState.IDLE~reg0_q\,
	datad => \hexconv_inst|i2|Mux5~0_combout\,
	combout => \hexconv_inst|i2|Mux5~1_combout\);

-- Location: LCCOMB_X114_Y17_N4
\hexconv_inst|i2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i2|Mux4~0_combout\ = (\reg_bank_inst|outputBank\(10) & (\reg_bank_inst|outputBank\(11) & ((\reg_bank_inst|outputBank\(9)) # (!\reg_bank_inst|outputBank\(8))))) # (!\reg_bank_inst|outputBank\(10) & (\reg_bank_inst|outputBank\(9) & 
-- (!\reg_bank_inst|outputBank\(11) & !\reg_bank_inst|outputBank\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputBank\(10),
	datab => \reg_bank_inst|outputBank\(9),
	datac => \reg_bank_inst|outputBank\(11),
	datad => \reg_bank_inst|outputBank\(8),
	combout => \hexconv_inst|i2|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y17_N14
\hexconv_inst|i2|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i2|Mux4~1_combout\ = (\hexconv_inst|i2|Mux4~0_combout\) # (!\reg_bank_inst|outputState.IDLE~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hexconv_inst|i2|Mux4~0_combout\,
	datad => \reg_bank_inst|outputState.IDLE~reg0_q\,
	combout => \hexconv_inst|i2|Mux4~1_combout\);

-- Location: LCCOMB_X114_Y17_N16
\hexconv_inst|i2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i2|Mux3~0_combout\ = (\reg_bank_inst|outputBank\(9) & ((\reg_bank_inst|outputBank\(10) & ((\reg_bank_inst|outputBank\(8)))) # (!\reg_bank_inst|outputBank\(10) & (\reg_bank_inst|outputBank\(11) & !\reg_bank_inst|outputBank\(8))))) # 
-- (!\reg_bank_inst|outputBank\(9) & (!\reg_bank_inst|outputBank\(11) & (\reg_bank_inst|outputBank\(10) $ (\reg_bank_inst|outputBank\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputBank\(10),
	datab => \reg_bank_inst|outputBank\(9),
	datac => \reg_bank_inst|outputBank\(11),
	datad => \reg_bank_inst|outputBank\(8),
	combout => \hexconv_inst|i2|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y17_N26
\hexconv_inst|i2|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i2|Mux3~1_combout\ = (\hexconv_inst|i2|Mux3~0_combout\) # (!\reg_bank_inst|outputState.IDLE~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_bank_inst|outputState.IDLE~reg0_q\,
	datad => \hexconv_inst|i2|Mux3~0_combout\,
	combout => \hexconv_inst|i2|Mux3~1_combout\);

-- Location: LCCOMB_X114_Y17_N12
\hexconv_inst|i2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i2|Mux2~0_combout\ = (\reg_bank_inst|outputBank\(9) & (((!\reg_bank_inst|outputBank\(11) & \reg_bank_inst|outputBank\(8))))) # (!\reg_bank_inst|outputBank\(9) & ((\reg_bank_inst|outputBank\(10) & (!\reg_bank_inst|outputBank\(11))) # 
-- (!\reg_bank_inst|outputBank\(10) & ((\reg_bank_inst|outputBank\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputBank\(10),
	datab => \reg_bank_inst|outputBank\(9),
	datac => \reg_bank_inst|outputBank\(11),
	datad => \reg_bank_inst|outputBank\(8),
	combout => \hexconv_inst|i2|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y17_N10
\hexconv_inst|i2|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i2|Mux2~1_combout\ = (\hexconv_inst|i2|Mux2~0_combout\) # (!\reg_bank_inst|outputState.IDLE~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_bank_inst|outputState.IDLE~reg0_q\,
	datad => \hexconv_inst|i2|Mux2~0_combout\,
	combout => \hexconv_inst|i2|Mux2~1_combout\);

-- Location: LCCOMB_X114_Y17_N24
\hexconv_inst|i2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i2|Mux1~0_combout\ = (\reg_bank_inst|outputBank\(10) & (\reg_bank_inst|outputBank\(8) & (\reg_bank_inst|outputBank\(9) $ (\reg_bank_inst|outputBank\(11))))) # (!\reg_bank_inst|outputBank\(10) & (!\reg_bank_inst|outputBank\(11) & 
-- ((\reg_bank_inst|outputBank\(9)) # (\reg_bank_inst|outputBank\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputBank\(10),
	datab => \reg_bank_inst|outputBank\(9),
	datac => \reg_bank_inst|outputBank\(11),
	datad => \reg_bank_inst|outputBank\(8),
	combout => \hexconv_inst|i2|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y17_N22
\hexconv_inst|i2|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i2|Mux1~1_combout\ = (\hexconv_inst|i2|Mux1~0_combout\) # (!\reg_bank_inst|outputState.IDLE~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_bank_inst|outputState.IDLE~reg0_q\,
	datad => \hexconv_inst|i2|Mux1~0_combout\,
	combout => \hexconv_inst|i2|Mux1~1_combout\);

-- Location: LCCOMB_X114_Y17_N20
\hexconv_inst|i2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i2|Mux0~0_combout\ = (\reg_bank_inst|outputBank\(8) & ((\reg_bank_inst|outputBank\(11)) # (\reg_bank_inst|outputBank\(10) $ (\reg_bank_inst|outputBank\(9))))) # (!\reg_bank_inst|outputBank\(8) & ((\reg_bank_inst|outputBank\(9)) # 
-- (\reg_bank_inst|outputBank\(10) $ (\reg_bank_inst|outputBank\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputBank\(10),
	datab => \reg_bank_inst|outputBank\(9),
	datac => \reg_bank_inst|outputBank\(11),
	datad => \reg_bank_inst|outputBank\(8),
	combout => \hexconv_inst|i2|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y17_N6
\hexconv_inst|i2|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i2|Mux0~1_combout\ = (!\hexconv_inst|i2|Mux0~0_combout\) # (!\reg_bank_inst|outputState.IDLE~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_bank_inst|outputState.IDLE~reg0_q\,
	datad => \hexconv_inst|i2|Mux0~0_combout\,
	combout => \hexconv_inst|i2|Mux0~1_combout\);

-- Location: IOIBUF_X115_Y6_N15
\input[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(15),
	o => \input[15]~input_o\);

-- Location: FF_X111_Y9_N29
\reg_bank_inst|registers~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[15]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~216_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~115_q\);

-- Location: FF_X111_Y9_N23
\reg_bank_inst|registers~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[15]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~219_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~147_q\);

-- Location: FF_X112_Y9_N5
\reg_bank_inst|registers~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[15]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~217_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~131_q\);

-- Location: FF_X112_Y9_N15
\reg_bank_inst|registers~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[15]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~218_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~99_q\);

-- Location: LCCOMB_X112_Y9_N14
\reg_bank_inst|registers~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~210_combout\ = (\reg_bank_inst|outputReg\(0) & ((\reg_bank_inst|outputReg\(1) & (\reg_bank_inst|registers~131_q\)) # (!\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|registers~99_q\))))) # (!\reg_bank_inst|outputReg\(0) & 
-- (((\reg_bank_inst|outputReg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|registers~131_q\,
	datab => \reg_bank_inst|outputReg\(0),
	datac => \reg_bank_inst|registers~99_q\,
	datad => \reg_bank_inst|outputReg\(1),
	combout => \reg_bank_inst|registers~210_combout\);

-- Location: LCCOMB_X111_Y9_N22
\reg_bank_inst|registers~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~211_combout\ = (\reg_bank_inst|outputReg\(0) & (((\reg_bank_inst|registers~210_combout\)))) # (!\reg_bank_inst|outputReg\(0) & ((\reg_bank_inst|registers~210_combout\ & ((\reg_bank_inst|registers~147_q\))) # 
-- (!\reg_bank_inst|registers~210_combout\ & (\reg_bank_inst|registers~115_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(0),
	datab => \reg_bank_inst|registers~115_q\,
	datac => \reg_bank_inst|registers~147_q\,
	datad => \reg_bank_inst|registers~210_combout\,
	combout => \reg_bank_inst|registers~211_combout\);

-- Location: LCCOMB_X108_Y11_N2
\reg_bank_inst|registers~83feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~83feeder_combout\ = \input[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[15]~input_o\,
	combout => \reg_bank_inst|registers~83feeder_combout\);

-- Location: FF_X108_Y11_N3
\reg_bank_inst|registers~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|registers~83feeder_combout\,
	ena => \reg_bank_inst|registers~215_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~83_q\);

-- Location: FF_X109_Y11_N13
\reg_bank_inst|registers~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[15]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~212_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~67_q\);

-- Location: LCCOMB_X108_Y11_N16
\reg_bank_inst|registers~51feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~51feeder_combout\ = \input[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[15]~input_o\,
	combout => \reg_bank_inst|registers~51feeder_combout\);

-- Location: FF_X108_Y11_N17
\reg_bank_inst|registers~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|registers~51feeder_combout\,
	ena => \reg_bank_inst|registers~213_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~51_q\);

-- Location: FF_X109_Y11_N3
\reg_bank_inst|registers~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[15]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~214_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~35_q\);

-- Location: LCCOMB_X109_Y11_N2
\reg_bank_inst|registers~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~208_combout\ = (\reg_bank_inst|outputReg\(1) & (((!\reg_bank_inst|outputReg\(0))))) # (!\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|outputReg\(0) & ((\reg_bank_inst|registers~35_q\))) # (!\reg_bank_inst|outputReg\(0) & 
-- (\reg_bank_inst|registers~51_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(1),
	datab => \reg_bank_inst|registers~51_q\,
	datac => \reg_bank_inst|registers~35_q\,
	datad => \reg_bank_inst|outputReg\(0),
	combout => \reg_bank_inst|registers~208_combout\);

-- Location: LCCOMB_X109_Y11_N12
\reg_bank_inst|registers~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~209_combout\ = (\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|registers~208_combout\ & (\reg_bank_inst|registers~83_q\)) # (!\reg_bank_inst|registers~208_combout\ & ((\reg_bank_inst|registers~67_q\))))) # 
-- (!\reg_bank_inst|outputReg\(1) & (((\reg_bank_inst|registers~208_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|registers~83_q\,
	datab => \reg_bank_inst|outputReg\(1),
	datac => \reg_bank_inst|registers~67_q\,
	datad => \reg_bank_inst|registers~208_combout\,
	combout => \reg_bank_inst|registers~209_combout\);

-- Location: LCCOMB_X110_Y9_N30
\reg_bank_inst|outputBank[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|outputBank[15]~15_combout\ = (\reg_bank_inst|outputReg\(2) & (\reg_bank_inst|registers~211_combout\)) # (!\reg_bank_inst|outputReg\(2) & ((\reg_bank_inst|registers~209_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(2),
	datab => \reg_bank_inst|registers~211_combout\,
	datad => \reg_bank_inst|registers~209_combout\,
	combout => \reg_bank_inst|outputBank[15]~15_combout\);

-- Location: FF_X110_Y9_N31
\reg_bank_inst|outputBank[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|outputBank[15]~15_combout\,
	asdata => \input[15]~input_o\,
	sload => \reg_bank_inst|ALT_INV_state.reading~q\,
	ena => \reg_bank_inst|outputBank~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|outputBank\(15));

-- Location: IOIBUF_X115_Y10_N8
\input[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(14),
	o => \input[14]~input_o\);

-- Location: FF_X111_Y9_N5
\reg_bank_inst|registers~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[14]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~216_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~114_q\);

-- Location: FF_X111_Y9_N15
\reg_bank_inst|registers~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[14]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~219_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~146_q\);

-- Location: FF_X112_Y9_N21
\reg_bank_inst|registers~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[14]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~217_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~130_q\);

-- Location: FF_X112_Y9_N7
\reg_bank_inst|registers~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[14]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~218_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~98_q\);

-- Location: LCCOMB_X112_Y9_N6
\reg_bank_inst|registers~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~206_combout\ = (\reg_bank_inst|outputReg\(0) & ((\reg_bank_inst|outputReg\(1) & (\reg_bank_inst|registers~130_q\)) # (!\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|registers~98_q\))))) # (!\reg_bank_inst|outputReg\(0) & 
-- (((\reg_bank_inst|outputReg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|registers~130_q\,
	datab => \reg_bank_inst|outputReg\(0),
	datac => \reg_bank_inst|registers~98_q\,
	datad => \reg_bank_inst|outputReg\(1),
	combout => \reg_bank_inst|registers~206_combout\);

-- Location: LCCOMB_X111_Y9_N14
\reg_bank_inst|registers~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~207_combout\ = (\reg_bank_inst|outputReg\(0) & (((\reg_bank_inst|registers~206_combout\)))) # (!\reg_bank_inst|outputReg\(0) & ((\reg_bank_inst|registers~206_combout\ & ((\reg_bank_inst|registers~146_q\))) # 
-- (!\reg_bank_inst|registers~206_combout\ & (\reg_bank_inst|registers~114_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(0),
	datab => \reg_bank_inst|registers~114_q\,
	datac => \reg_bank_inst|registers~146_q\,
	datad => \reg_bank_inst|registers~206_combout\,
	combout => \reg_bank_inst|registers~207_combout\);

-- Location: LCCOMB_X108_Y11_N26
\reg_bank_inst|registers~82feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~82feeder_combout\ = \input[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[14]~input_o\,
	combout => \reg_bank_inst|registers~82feeder_combout\);

-- Location: FF_X108_Y11_N27
\reg_bank_inst|registers~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|registers~82feeder_combout\,
	ena => \reg_bank_inst|registers~215_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~82_q\);

-- Location: FF_X109_Y11_N5
\reg_bank_inst|registers~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[14]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~212_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~66_q\);

-- Location: LCCOMB_X108_Y11_N20
\reg_bank_inst|registers~50feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~50feeder_combout\ = \input[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[14]~input_o\,
	combout => \reg_bank_inst|registers~50feeder_combout\);

-- Location: FF_X108_Y11_N21
\reg_bank_inst|registers~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|registers~50feeder_combout\,
	ena => \reg_bank_inst|registers~213_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~50_q\);

-- Location: FF_X109_Y11_N19
\reg_bank_inst|registers~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[14]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~214_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~34_q\);

-- Location: LCCOMB_X109_Y11_N18
\reg_bank_inst|registers~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~204_combout\ = (\reg_bank_inst|outputReg\(1) & (((!\reg_bank_inst|outputReg\(0))))) # (!\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|outputReg\(0) & ((\reg_bank_inst|registers~34_q\))) # (!\reg_bank_inst|outputReg\(0) & 
-- (\reg_bank_inst|registers~50_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(1),
	datab => \reg_bank_inst|registers~50_q\,
	datac => \reg_bank_inst|registers~34_q\,
	datad => \reg_bank_inst|outputReg\(0),
	combout => \reg_bank_inst|registers~204_combout\);

-- Location: LCCOMB_X109_Y11_N4
\reg_bank_inst|registers~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~205_combout\ = (\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|registers~204_combout\ & (\reg_bank_inst|registers~82_q\)) # (!\reg_bank_inst|registers~204_combout\ & ((\reg_bank_inst|registers~66_q\))))) # 
-- (!\reg_bank_inst|outputReg\(1) & (((\reg_bank_inst|registers~204_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(1),
	datab => \reg_bank_inst|registers~82_q\,
	datac => \reg_bank_inst|registers~66_q\,
	datad => \reg_bank_inst|registers~204_combout\,
	combout => \reg_bank_inst|registers~205_combout\);

-- Location: LCCOMB_X110_Y9_N28
\reg_bank_inst|outputBank[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|outputBank[14]~14_combout\ = (\reg_bank_inst|outputReg\(2) & (\reg_bank_inst|registers~207_combout\)) # (!\reg_bank_inst|outputReg\(2) & ((\reg_bank_inst|registers~205_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(2),
	datab => \reg_bank_inst|registers~207_combout\,
	datad => \reg_bank_inst|registers~205_combout\,
	combout => \reg_bank_inst|outputBank[14]~14_combout\);

-- Location: FF_X110_Y9_N29
\reg_bank_inst|outputBank[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|outputBank[14]~14_combout\,
	asdata => \input[14]~input_o\,
	sload => \reg_bank_inst|ALT_INV_state.reading~q\,
	ena => \reg_bank_inst|outputBank~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|outputBank\(14));

-- Location: IOIBUF_X115_Y7_N15
\input[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(12),
	o => \input[12]~input_o\);

-- Location: FF_X108_Y11_N23
\reg_bank_inst|registers~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[12]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~215_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~80_q\);

-- Location: FF_X109_Y11_N17
\reg_bank_inst|registers~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[12]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~212_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~64_q\);

-- Location: FF_X108_Y11_N29
\reg_bank_inst|registers~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[12]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~213_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~48_q\);

-- Location: FF_X109_Y11_N31
\reg_bank_inst|registers~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[12]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~214_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~32_q\);

-- Location: LCCOMB_X109_Y11_N30
\reg_bank_inst|registers~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~196_combout\ = (\reg_bank_inst|outputReg\(1) & (((!\reg_bank_inst|outputReg\(0))))) # (!\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|outputReg\(0) & ((\reg_bank_inst|registers~32_q\))) # (!\reg_bank_inst|outputReg\(0) & 
-- (\reg_bank_inst|registers~48_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(1),
	datab => \reg_bank_inst|registers~48_q\,
	datac => \reg_bank_inst|registers~32_q\,
	datad => \reg_bank_inst|outputReg\(0),
	combout => \reg_bank_inst|registers~196_combout\);

-- Location: LCCOMB_X109_Y11_N16
\reg_bank_inst|registers~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~197_combout\ = (\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|registers~196_combout\ & (\reg_bank_inst|registers~80_q\)) # (!\reg_bank_inst|registers~196_combout\ & ((\reg_bank_inst|registers~64_q\))))) # 
-- (!\reg_bank_inst|outputReg\(1) & (((\reg_bank_inst|registers~196_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|registers~80_q\,
	datab => \reg_bank_inst|outputReg\(1),
	datac => \reg_bank_inst|registers~64_q\,
	datad => \reg_bank_inst|registers~196_combout\,
	combout => \reg_bank_inst|registers~197_combout\);

-- Location: FF_X111_Y13_N17
\reg_bank_inst|registers~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[12]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~216_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~112_q\);

-- Location: FF_X111_Y13_N19
\reg_bank_inst|registers~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[12]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~219_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~144_q\);

-- Location: FF_X112_Y13_N5
\reg_bank_inst|registers~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[12]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~217_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~128_q\);

-- Location: FF_X112_Y13_N27
\reg_bank_inst|registers~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[12]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~218_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~96_q\);

-- Location: LCCOMB_X112_Y13_N26
\reg_bank_inst|registers~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~198_combout\ = (\reg_bank_inst|outputReg\(0) & ((\reg_bank_inst|outputReg\(1) & (\reg_bank_inst|registers~128_q\)) # (!\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|registers~96_q\))))) # (!\reg_bank_inst|outputReg\(0) & 
-- (((\reg_bank_inst|outputReg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(0),
	datab => \reg_bank_inst|registers~128_q\,
	datac => \reg_bank_inst|registers~96_q\,
	datad => \reg_bank_inst|outputReg\(1),
	combout => \reg_bank_inst|registers~198_combout\);

-- Location: LCCOMB_X111_Y13_N18
\reg_bank_inst|registers~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~199_combout\ = (\reg_bank_inst|outputReg\(0) & (((\reg_bank_inst|registers~198_combout\)))) # (!\reg_bank_inst|outputReg\(0) & ((\reg_bank_inst|registers~198_combout\ & ((\reg_bank_inst|registers~144_q\))) # 
-- (!\reg_bank_inst|registers~198_combout\ & (\reg_bank_inst|registers~112_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(0),
	datab => \reg_bank_inst|registers~112_q\,
	datac => \reg_bank_inst|registers~144_q\,
	datad => \reg_bank_inst|registers~198_combout\,
	combout => \reg_bank_inst|registers~199_combout\);

-- Location: LCCOMB_X110_Y13_N30
\reg_bank_inst|outputBank[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|outputBank[12]~12_combout\ = (\reg_bank_inst|outputReg\(2) & ((\reg_bank_inst|registers~199_combout\))) # (!\reg_bank_inst|outputReg\(2) & (\reg_bank_inst|registers~197_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(2),
	datab => \reg_bank_inst|registers~197_combout\,
	datad => \reg_bank_inst|registers~199_combout\,
	combout => \reg_bank_inst|outputBank[12]~12_combout\);

-- Location: FF_X110_Y13_N31
\reg_bank_inst|outputBank[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|outputBank[12]~12_combout\,
	asdata => \input[12]~input_o\,
	sload => \reg_bank_inst|ALT_INV_state.reading~q\,
	ena => \reg_bank_inst|outputBank~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|outputBank\(12));

-- Location: IOIBUF_X115_Y9_N22
\input[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(13),
	o => \input[13]~input_o\);

-- Location: LCCOMB_X111_Y9_N8
\reg_bank_inst|registers~113feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~113feeder_combout\ = \input[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[13]~input_o\,
	combout => \reg_bank_inst|registers~113feeder_combout\);

-- Location: FF_X111_Y9_N9
\reg_bank_inst|registers~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|registers~113feeder_combout\,
	ena => \reg_bank_inst|registers~216_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~113_q\);

-- Location: FF_X111_Y9_N7
\reg_bank_inst|registers~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[13]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~219_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~145_q\);

-- Location: FF_X112_Y9_N29
\reg_bank_inst|registers~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[13]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~217_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~129_q\);

-- Location: FF_X112_Y9_N27
\reg_bank_inst|registers~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[13]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~218_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~97_q\);

-- Location: LCCOMB_X112_Y9_N26
\reg_bank_inst|registers~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~202_combout\ = (\reg_bank_inst|outputReg\(0) & ((\reg_bank_inst|outputReg\(1) & (\reg_bank_inst|registers~129_q\)) # (!\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|registers~97_q\))))) # (!\reg_bank_inst|outputReg\(0) & 
-- (((\reg_bank_inst|outputReg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|registers~129_q\,
	datab => \reg_bank_inst|outputReg\(0),
	datac => \reg_bank_inst|registers~97_q\,
	datad => \reg_bank_inst|outputReg\(1),
	combout => \reg_bank_inst|registers~202_combout\);

-- Location: LCCOMB_X111_Y9_N6
\reg_bank_inst|registers~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~203_combout\ = (\reg_bank_inst|outputReg\(0) & (((\reg_bank_inst|registers~202_combout\)))) # (!\reg_bank_inst|outputReg\(0) & ((\reg_bank_inst|registers~202_combout\ & ((\reg_bank_inst|registers~145_q\))) # 
-- (!\reg_bank_inst|registers~202_combout\ & (\reg_bank_inst|registers~113_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(0),
	datab => \reg_bank_inst|registers~113_q\,
	datac => \reg_bank_inst|registers~145_q\,
	datad => \reg_bank_inst|registers~202_combout\,
	combout => \reg_bank_inst|registers~203_combout\);

-- Location: LCCOMB_X114_Y11_N22
\reg_bank_inst|registers~81feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~81feeder_combout\ = \input[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[13]~input_o\,
	combout => \reg_bank_inst|registers~81feeder_combout\);

-- Location: FF_X114_Y11_N23
\reg_bank_inst|registers~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|registers~81feeder_combout\,
	ena => \reg_bank_inst|registers~215_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~81_q\);

-- Location: FF_X110_Y11_N5
\reg_bank_inst|registers~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[13]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~212_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~65_q\);

-- Location: FF_X110_Y11_N7
\reg_bank_inst|registers~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[13]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~214_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~33_q\);

-- Location: FF_X113_Y11_N27
\reg_bank_inst|registers~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \input[13]~input_o\,
	sload => VCC,
	ena => \reg_bank_inst|registers~213_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|registers~49_q\);

-- Location: LCCOMB_X110_Y11_N6
\reg_bank_inst|registers~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~200_combout\ = (\reg_bank_inst|outputReg\(1) & (!\reg_bank_inst|outputReg\(0))) # (!\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|outputReg\(0) & (\reg_bank_inst|registers~33_q\)) # (!\reg_bank_inst|outputReg\(0) & 
-- ((\reg_bank_inst|registers~49_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(1),
	datab => \reg_bank_inst|outputReg\(0),
	datac => \reg_bank_inst|registers~33_q\,
	datad => \reg_bank_inst|registers~49_q\,
	combout => \reg_bank_inst|registers~200_combout\);

-- Location: LCCOMB_X110_Y11_N4
\reg_bank_inst|registers~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|registers~201_combout\ = (\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|registers~200_combout\ & (\reg_bank_inst|registers~81_q\)) # (!\reg_bank_inst|registers~200_combout\ & ((\reg_bank_inst|registers~65_q\))))) # 
-- (!\reg_bank_inst|outputReg\(1) & (((\reg_bank_inst|registers~200_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(1),
	datab => \reg_bank_inst|registers~81_q\,
	datac => \reg_bank_inst|registers~65_q\,
	datad => \reg_bank_inst|registers~200_combout\,
	combout => \reg_bank_inst|registers~201_combout\);

-- Location: LCCOMB_X110_Y9_N10
\reg_bank_inst|outputBank[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_bank_inst|outputBank[13]~13_combout\ = (\reg_bank_inst|outputReg\(2) & (\reg_bank_inst|registers~203_combout\)) # (!\reg_bank_inst|outputReg\(2) & ((\reg_bank_inst|registers~201_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|registers~203_combout\,
	datab => \reg_bank_inst|outputReg\(2),
	datad => \reg_bank_inst|registers~201_combout\,
	combout => \reg_bank_inst|outputBank[13]~13_combout\);

-- Location: FF_X110_Y9_N11
\reg_bank_inst|outputBank[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg_bank_inst|outputBank[13]~13_combout\,
	asdata => \input[13]~input_o\,
	sload => \reg_bank_inst|ALT_INV_state.reading~q\,
	ena => \reg_bank_inst|outputBank~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_bank_inst|outputBank\(13));

-- Location: LCCOMB_X110_Y9_N12
\hexconv_inst|i1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i1|Mux6~0_combout\ = (\reg_bank_inst|outputBank\(15) & (\reg_bank_inst|outputBank\(12) & (\reg_bank_inst|outputBank\(14) $ (\reg_bank_inst|outputBank\(13))))) # (!\reg_bank_inst|outputBank\(15) & (!\reg_bank_inst|outputBank\(13) & 
-- (\reg_bank_inst|outputBank\(14) $ (\reg_bank_inst|outputBank\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputBank\(15),
	datab => \reg_bank_inst|outputBank\(14),
	datac => \reg_bank_inst|outputBank\(12),
	datad => \reg_bank_inst|outputBank\(13),
	combout => \hexconv_inst|i1|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y17_N8
\hexconv_inst|i1|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i1|Mux6~1_combout\ = (\hexconv_inst|i1|Mux6~0_combout\) # (!\reg_bank_inst|outputState.IDLE~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hexconv_inst|i1|Mux6~0_combout\,
	datad => \reg_bank_inst|outputState.IDLE~reg0_q\,
	combout => \hexconv_inst|i1|Mux6~1_combout\);

-- Location: LCCOMB_X110_Y9_N22
\hexconv_inst|i1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i1|Mux5~0_combout\ = (\reg_bank_inst|outputBank\(15) & ((\reg_bank_inst|outputBank\(12) & ((\reg_bank_inst|outputBank\(13)))) # (!\reg_bank_inst|outputBank\(12) & (\reg_bank_inst|outputBank\(14))))) # (!\reg_bank_inst|outputBank\(15) & 
-- (\reg_bank_inst|outputBank\(14) & (\reg_bank_inst|outputBank\(12) $ (\reg_bank_inst|outputBank\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputBank\(15),
	datab => \reg_bank_inst|outputBank\(14),
	datac => \reg_bank_inst|outputBank\(12),
	datad => \reg_bank_inst|outputBank\(13),
	combout => \hexconv_inst|i1|Mux5~0_combout\);

-- Location: LCCOMB_X110_Y9_N4
\hexconv_inst|i1|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i1|Mux5~1_combout\ = (\hexconv_inst|i1|Mux5~0_combout\) # (!\reg_bank_inst|outputState.IDLE~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hexconv_inst|i1|Mux5~0_combout\,
	datad => \reg_bank_inst|outputState.IDLE~reg0_q\,
	combout => \hexconv_inst|i1|Mux5~1_combout\);

-- Location: LCCOMB_X110_Y9_N2
\hexconv_inst|i1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i1|Mux4~0_combout\ = (\reg_bank_inst|outputBank\(15) & (\reg_bank_inst|outputBank\(14) & ((\reg_bank_inst|outputBank\(13)) # (!\reg_bank_inst|outputBank\(12))))) # (!\reg_bank_inst|outputBank\(15) & (!\reg_bank_inst|outputBank\(14) & 
-- (!\reg_bank_inst|outputBank\(12) & \reg_bank_inst|outputBank\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputBank\(15),
	datab => \reg_bank_inst|outputBank\(14),
	datac => \reg_bank_inst|outputBank\(12),
	datad => \reg_bank_inst|outputBank\(13),
	combout => \hexconv_inst|i1|Mux4~0_combout\);

-- Location: LCCOMB_X109_Y9_N4
\hexconv_inst|i1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i1|Mux4~1_combout\ = (\hexconv_inst|i1|Mux4~0_combout\) # (!\reg_bank_inst|outputState.IDLE~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexconv_inst|i1|Mux4~0_combout\,
	datad => \reg_bank_inst|outputState.IDLE~reg0_q\,
	combout => \hexconv_inst|i1|Mux4~1_combout\);

-- Location: LCCOMB_X110_Y8_N28
\hexconv_inst|i1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i1|Mux3~0_combout\ = (\reg_bank_inst|outputBank\(13) & ((\reg_bank_inst|outputBank\(14) & ((\reg_bank_inst|outputBank\(12)))) # (!\reg_bank_inst|outputBank\(14) & (\reg_bank_inst|outputBank\(15) & !\reg_bank_inst|outputBank\(12))))) # 
-- (!\reg_bank_inst|outputBank\(13) & (!\reg_bank_inst|outputBank\(15) & (\reg_bank_inst|outputBank\(14) $ (\reg_bank_inst|outputBank\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputBank\(13),
	datab => \reg_bank_inst|outputBank\(14),
	datac => \reg_bank_inst|outputBank\(15),
	datad => \reg_bank_inst|outputBank\(12),
	combout => \hexconv_inst|i1|Mux3~0_combout\);

-- Location: LCCOMB_X110_Y8_N2
\hexconv_inst|i1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i1|Mux3~1_combout\ = (\hexconv_inst|i1|Mux3~0_combout\) # (!\reg_bank_inst|outputState.IDLE~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hexconv_inst|i1|Mux3~0_combout\,
	datad => \reg_bank_inst|outputState.IDLE~reg0_q\,
	combout => \hexconv_inst|i1|Mux3~1_combout\);

-- Location: LCCOMB_X110_Y8_N12
\hexconv_inst|i1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i1|Mux2~0_combout\ = (\reg_bank_inst|outputBank\(13) & (((!\reg_bank_inst|outputBank\(15) & \reg_bank_inst|outputBank\(12))))) # (!\reg_bank_inst|outputBank\(13) & ((\reg_bank_inst|outputBank\(14) & (!\reg_bank_inst|outputBank\(15))) # 
-- (!\reg_bank_inst|outputBank\(14) & ((\reg_bank_inst|outputBank\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputBank\(13),
	datab => \reg_bank_inst|outputBank\(14),
	datac => \reg_bank_inst|outputBank\(15),
	datad => \reg_bank_inst|outputBank\(12),
	combout => \hexconv_inst|i1|Mux2~0_combout\);

-- Location: LCCOMB_X110_Y8_N10
\hexconv_inst|i1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i1|Mux2~1_combout\ = (\hexconv_inst|i1|Mux2~0_combout\) # (!\reg_bank_inst|outputState.IDLE~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexconv_inst|i1|Mux2~0_combout\,
	datad => \reg_bank_inst|outputState.IDLE~reg0_q\,
	combout => \hexconv_inst|i1|Mux2~1_combout\);

-- Location: LCCOMB_X110_Y8_N4
\hexconv_inst|i1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i1|Mux1~0_combout\ = (\reg_bank_inst|outputBank\(13) & (!\reg_bank_inst|outputBank\(15) & ((\reg_bank_inst|outputBank\(12)) # (!\reg_bank_inst|outputBank\(14))))) # (!\reg_bank_inst|outputBank\(13) & (\reg_bank_inst|outputBank\(12) & 
-- (\reg_bank_inst|outputBank\(14) $ (!\reg_bank_inst|outputBank\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputBank\(13),
	datab => \reg_bank_inst|outputBank\(14),
	datac => \reg_bank_inst|outputBank\(15),
	datad => \reg_bank_inst|outputBank\(12),
	combout => \hexconv_inst|i1|Mux1~0_combout\);

-- Location: LCCOMB_X110_Y8_N22
\hexconv_inst|i1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i1|Mux1~1_combout\ = (\hexconv_inst|i1|Mux1~0_combout\) # (!\reg_bank_inst|outputState.IDLE~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hexconv_inst|i1|Mux1~0_combout\,
	datad => \reg_bank_inst|outputState.IDLE~reg0_q\,
	combout => \hexconv_inst|i1|Mux1~1_combout\);

-- Location: LCCOMB_X110_Y9_N8
\hexconv_inst|i1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i1|Mux0~0_combout\ = (\reg_bank_inst|outputBank\(12) & ((\reg_bank_inst|outputBank\(15)) # (\reg_bank_inst|outputBank\(14) $ (\reg_bank_inst|outputBank\(13))))) # (!\reg_bank_inst|outputBank\(12) & ((\reg_bank_inst|outputBank\(13)) # 
-- (\reg_bank_inst|outputBank\(15) $ (\reg_bank_inst|outputBank\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputBank\(15),
	datab => \reg_bank_inst|outputBank\(14),
	datac => \reg_bank_inst|outputBank\(12),
	datad => \reg_bank_inst|outputBank\(13),
	combout => \hexconv_inst|i1|Mux0~0_combout\);

-- Location: LCCOMB_X110_Y9_N6
\hexconv_inst|i1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i1|Mux0~1_combout\ = (!\reg_bank_inst|outputState.IDLE~reg0_q\) # (!\hexconv_inst|i1|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hexconv_inst|i1|Mux0~0_combout\,
	datad => \reg_bank_inst|outputState.IDLE~reg0_q\,
	combout => \hexconv_inst|i1|Mux0~1_combout\);

-- Location: LCCOMB_X109_Y9_N6
\hexconv_inst|i0|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i0|Mux6~0_combout\ = (\reg_bank_inst|outputState.IDLE~reg0_q\ & ((\reg_bank_inst|outputReg\(1)) # (\reg_bank_inst|outputReg\(0) $ (\reg_bank_inst|outputReg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(0),
	datab => \reg_bank_inst|outputReg\(1),
	datac => \reg_bank_inst|outputReg\(2),
	datad => \reg_bank_inst|outputState.IDLE~reg0_q\,
	combout => \hexconv_inst|i0|Mux6~0_combout\);

-- Location: LCCOMB_X109_Y9_N12
\hexconv_inst|i0|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i0|Mux5~0_combout\ = (\reg_bank_inst|outputState.IDLE~reg0_q\ & ((\reg_bank_inst|outputReg\(0) $ (\reg_bank_inst|outputReg\(1))) # (!\reg_bank_inst|outputReg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(0),
	datab => \reg_bank_inst|outputReg\(1),
	datac => \reg_bank_inst|outputReg\(2),
	datad => \reg_bank_inst|outputState.IDLE~reg0_q\,
	combout => \hexconv_inst|i0|Mux5~0_combout\);

-- Location: LCCOMB_X109_Y9_N22
\hexconv_inst|i0|leds[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i0|leds[2]~0_combout\ = ((\reg_bank_inst|outputReg\(0) & (\reg_bank_inst|outputReg\(1) & !\reg_bank_inst|outputReg\(2)))) # (!\reg_bank_inst|outputState.IDLE~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(0),
	datab => \reg_bank_inst|outputReg\(1),
	datac => \reg_bank_inst|outputReg\(2),
	datad => \reg_bank_inst|outputState.IDLE~reg0_q\,
	combout => \hexconv_inst|i0|leds[2]~0_combout\);

-- Location: LCCOMB_X109_Y9_N28
\hexconv_inst|i0|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i0|Mux3~0_combout\ = (\reg_bank_inst|outputState.IDLE~reg0_q\ & ((\reg_bank_inst|outputReg\(0) & ((\reg_bank_inst|outputReg\(1)) # (!\reg_bank_inst|outputReg\(2)))) # (!\reg_bank_inst|outputReg\(0) & (\reg_bank_inst|outputReg\(1) $ 
-- (\reg_bank_inst|outputReg\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(0),
	datab => \reg_bank_inst|outputReg\(1),
	datac => \reg_bank_inst|outputReg\(2),
	datad => \reg_bank_inst|outputState.IDLE~reg0_q\,
	combout => \hexconv_inst|i0|Mux3~0_combout\);

-- Location: LCCOMB_X109_Y9_N30
\hexconv_inst|i0|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i0|Mux2~0_combout\ = (\reg_bank_inst|outputReg\(0) & (\reg_bank_inst|outputState.IDLE~reg0_q\ & ((\reg_bank_inst|outputReg\(1)) # (!\reg_bank_inst|outputReg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(0),
	datab => \reg_bank_inst|outputReg\(1),
	datac => \reg_bank_inst|outputReg\(2),
	datad => \reg_bank_inst|outputState.IDLE~reg0_q\,
	combout => \hexconv_inst|i0|Mux2~0_combout\);

-- Location: LCCOMB_X109_Y9_N20
\hexconv_inst|i0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i0|Mux1~0_combout\ = (\reg_bank_inst|outputState.IDLE~reg0_q\ & ((\reg_bank_inst|outputReg\(0) & ((\reg_bank_inst|outputReg\(2)) # (!\reg_bank_inst|outputReg\(1)))) # (!\reg_bank_inst|outputReg\(0) & (!\reg_bank_inst|outputReg\(1) & 
-- \reg_bank_inst|outputReg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(0),
	datab => \reg_bank_inst|outputReg\(1),
	datac => \reg_bank_inst|outputReg\(2),
	datad => \reg_bank_inst|outputState.IDLE~reg0_q\,
	combout => \hexconv_inst|i0|Mux1~0_combout\);

-- Location: LCCOMB_X109_Y9_N14
\hexconv_inst|i0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexconv_inst|i0|Mux0~0_combout\ = (\reg_bank_inst|outputState.IDLE~reg0_q\ & ((\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|outputReg\(0)) # (!\reg_bank_inst|outputReg\(2)))) # (!\reg_bank_inst|outputReg\(1) & ((\reg_bank_inst|outputReg\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_bank_inst|outputReg\(0),
	datab => \reg_bank_inst|outputReg\(1),
	datac => \reg_bank_inst|outputReg\(2),
	datad => \reg_bank_inst|outputState.IDLE~reg0_q\,
	combout => \hexconv_inst|i0|Mux0~0_combout\);

ww_display(0) <= \display[0]~output_o\;

ww_display(1) <= \display[1]~output_o\;

ww_display(2) <= \display[2]~output_o\;

ww_display(3) <= \display[3]~output_o\;

ww_display(4) <= \display[4]~output_o\;

ww_display(5) <= \display[5]~output_o\;

ww_display(6) <= \display[6]~output_o\;

ww_display(7) <= \display[7]~output_o\;

ww_display(8) <= \display[8]~output_o\;

ww_display(9) <= \display[9]~output_o\;

ww_display(10) <= \display[10]~output_o\;

ww_display(11) <= \display[11]~output_o\;

ww_display(12) <= \display[12]~output_o\;

ww_display(13) <= \display[13]~output_o\;

ww_display(14) <= \display[14]~output_o\;

ww_display(15) <= \display[15]~output_o\;

ww_display(16) <= \display[16]~output_o\;

ww_display(17) <= \display[17]~output_o\;

ww_display(18) <= \display[18]~output_o\;

ww_display(19) <= \display[19]~output_o\;

ww_display(20) <= \display[20]~output_o\;

ww_display(21) <= \display[21]~output_o\;

ww_display(22) <= \display[22]~output_o\;

ww_display(23) <= \display[23]~output_o\;

ww_display(24) <= \display[24]~output_o\;

ww_display(25) <= \display[25]~output_o\;

ww_display(26) <= \display[26]~output_o\;

ww_display(27) <= \display[27]~output_o\;

ww_display(28) <= \display[28]~output_o\;

ww_display(29) <= \display[29]~output_o\;

ww_display(30) <= \display[30]~output_o\;

ww_display(31) <= \display[31]~output_o\;

ww_display(32) <= \display[32]~output_o\;

ww_display(33) <= \display[33]~output_o\;

ww_display(34) <= \display[34]~output_o\;
END structure;


