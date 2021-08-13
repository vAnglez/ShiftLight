-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "08/09/2021 16:33:53"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ShiftLight IS
    PORT (
	LEDlight : OUT std_logic;
	RPM1stBit : IN std_logic;
	RPM2ndBit : IN std_logic;
	RPM3rdBit : IN std_logic;
	RPM4thBit : IN std_logic;
	FirstMemory : IN std_logic;
	SecondMemory : IN std_logic;
	ThirdMoney : IN std_logic;
	FourthMoney : IN std_logic
	);
END ShiftLight;

-- Design Ports Information
-- LEDlight	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RPM1stBit	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FirstMemory	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RPM2ndBit	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SecondMemory	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RPM3rdBit	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RPM4thBit	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FourthMoney	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ThirdMoney	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ShiftLight IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDlight : std_logic;
SIGNAL ww_RPM1stBit : std_logic;
SIGNAL ww_RPM2ndBit : std_logic;
SIGNAL ww_RPM3rdBit : std_logic;
SIGNAL ww_RPM4thBit : std_logic;
SIGNAL ww_FirstMemory : std_logic;
SIGNAL ww_SecondMemory : std_logic;
SIGNAL ww_ThirdMoney : std_logic;
SIGNAL ww_FourthMoney : std_logic;
SIGNAL \RPM3rdBit~input_o\ : std_logic;
SIGNAL \LEDlight~output_o\ : std_logic;
SIGNAL \RPM1stBit~input_o\ : std_logic;
SIGNAL \FirstMemory~input_o\ : std_logic;
SIGNAL \SecondMemory~input_o\ : std_logic;
SIGNAL \RPM2ndBit~input_o\ : std_logic;
SIGNAL \RPM4thBit~input_o\ : std_logic;
SIGNAL \ThirdMoney~input_o\ : std_logic;
SIGNAL \FourthMoney~input_o\ : std_logic;
SIGNAL \inst1|inst4~0_combout\ : std_logic;
SIGNAL \inst1|inst4~1_combout\ : std_logic;
SIGNAL \inst1|inst4~2_combout\ : std_logic;

BEGIN

LEDlight <= ww_LEDlight;
ww_RPM1stBit <= RPM1stBit;
ww_RPM2ndBit <= RPM2ndBit;
ww_RPM3rdBit <= RPM3rdBit;
ww_RPM4thBit <= RPM4thBit;
ww_FirstMemory <= FirstMemory;
ww_SecondMemory <= SecondMemory;
ww_ThirdMoney <= ThirdMoney;
ww_FourthMoney <= FourthMoney;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOIBUF_X10_Y31_N1
\RPM3rdBit~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RPM3rdBit,
	o => \RPM3rdBit~input_o\);

-- Location: IOOBUF_X8_Y0_N9
\LEDlight~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst4~2_combout\,
	devoe => ww_devoe,
	o => \LEDlight~output_o\);

-- Location: IOIBUF_X12_Y0_N1
\RPM1stBit~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RPM1stBit,
	o => \RPM1stBit~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\FirstMemory~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FirstMemory,
	o => \FirstMemory~input_o\);

-- Location: IOIBUF_X10_Y0_N8
\SecondMemory~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SecondMemory,
	o => \SecondMemory~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\RPM2ndBit~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RPM2ndBit,
	o => \RPM2ndBit~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\RPM4thBit~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RPM4thBit,
	o => \RPM4thBit~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\ThirdMoney~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ThirdMoney,
	o => \ThirdMoney~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\FourthMoney~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FourthMoney,
	o => \FourthMoney~input_o\);

-- Location: LCCOMB_X10_Y1_N0
\inst1|inst4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst4~0_combout\ = (\RPM3rdBit~input_o\ & ((\RPM4thBit~input_o\) # ((!\FourthMoney~input_o\) # (!\ThirdMoney~input_o\)))) # (!\RPM3rdBit~input_o\ & (!\ThirdMoney~input_o\ & ((\RPM4thBit~input_o\) # (!\FourthMoney~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RPM3rdBit~input_o\,
	datab => \RPM4thBit~input_o\,
	datac => \ThirdMoney~input_o\,
	datad => \FourthMoney~input_o\,
	combout => \inst1|inst4~0_combout\);

-- Location: LCCOMB_X10_Y1_N2
\inst1|inst4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst4~1_combout\ = (\SecondMemory~input_o\ & (\RPM2ndBit~input_o\ & \inst1|inst4~0_combout\)) # (!\SecondMemory~input_o\ & ((\RPM2ndBit~input_o\) # (\inst1|inst4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SecondMemory~input_o\,
	datac => \RPM2ndBit~input_o\,
	datad => \inst1|inst4~0_combout\,
	combout => \inst1|inst4~1_combout\);

-- Location: LCCOMB_X10_Y1_N4
\inst1|inst4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst4~2_combout\ = (\RPM1stBit~input_o\ & ((\inst1|inst4~1_combout\) # (!\FirstMemory~input_o\))) # (!\RPM1stBit~input_o\ & (!\FirstMemory~input_o\ & \inst1|inst4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RPM1stBit~input_o\,
	datab => \FirstMemory~input_o\,
	datad => \inst1|inst4~1_combout\,
	combout => \inst1|inst4~2_combout\);

ww_LEDlight <= \LEDlight~output_o\;
END structure;


