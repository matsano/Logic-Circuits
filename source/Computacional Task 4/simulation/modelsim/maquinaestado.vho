-- Copyright (C) 2019  Intel Corporation. All rights reserved.
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
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "01/12/2021 18:33:52"

-- 
-- Device: Altera 5M40ZE64C4 Package EQFP64
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	maquinaestado IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	entrada : IN std_logic_vector(3 DOWNTO 0);
	saida : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END maquinaestado;

-- Design Ports Information


ARCHITECTURE structure OF maquinaestado IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_entrada : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_saida : std_logic_vector(3 DOWNTO 0);
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \process_1~1_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \estado_futuro.S10~0_combout\ : std_logic;
SIGNAL \estado_futuro.S10~1_combout\ : std_logic;
SIGNAL \estado_futuro.S20~0_combout\ : std_logic;
SIGNAL \estado_futuro.S20~1_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \estado_futuro.S20_775\ : std_logic;
SIGNAL \estado_atual.S20~regout\ : std_logic;
SIGNAL \saida[2]~3_combout\ : std_logic;
SIGNAL \estado_futuro.S15~0_combout\ : std_logic;
SIGNAL \estado_futuro.S10_645\ : std_logic;
SIGNAL \estado_atual.S10~regout\ : std_logic;
SIGNAL \estado_futuro.S0~0_combout\ : std_logic;
SIGNAL \estado_futuro.S0~1_combout\ : std_logic;
SIGNAL \estado_futuro.S0~2_combout\ : std_logic;
SIGNAL \estado_futuro.S0_515~combout\ : std_logic;
SIGNAL \estado_atual.S0~regout\ : std_logic;
SIGNAL \estado_futuro.S05~0_combout\ : std_logic;
SIGNAL \estado_futuro.S05_580\ : std_logic;
SIGNAL \estado_atual.S05~regout\ : std_logic;
SIGNAL \estado_futuro.S15~1_combout\ : std_logic;
SIGNAL \estado_futuro.S15~2_combout\ : std_logic;
SIGNAL \estado_futuro.S15_710\ : std_logic;
SIGNAL \estado_atual.S15~regout\ : std_logic;
SIGNAL \saida[0]~2_combout\ : std_logic;
SIGNAL \saida[2]~4_combout\ : std_logic;
SIGNAL \saida[0]$latch~combout\ : std_logic;
SIGNAL \saida[2]~5_combout\ : std_logic;
SIGNAL \saida[2]~6_combout\ : std_logic;
SIGNAL \saida[2]$latch~combout\ : std_logic;
SIGNAL \saida[3]~7_combout\ : std_logic;
SIGNAL \saida[3]~8_combout\ : std_logic;
SIGNAL \saida[3]$latch~combout\ : std_logic;
SIGNAL \entrada~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_entrada <= entrada;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entrada[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_entrada(3),
	combout => \entrada~combout\(3));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entrada[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_entrada(2),
	combout => \entrada~combout\(2));

-- Location: LC_X2_Y3_N4
\process_1~0\ : maxv_lcell
-- Equation(s):
-- \process_1~0_combout\ = (((\entrada~combout\(3) & \entrada~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \entrada~combout\(3),
	datad => \entrada~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_1~0_combout\);

-- Location: PIN_10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entrada[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_entrada(0),
	combout => \entrada~combout\(0));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entrada[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_entrada(1),
	combout => \entrada~combout\(1));

-- Location: LC_X2_Y3_N0
\process_1~1\ : maxv_lcell
-- Equation(s):
-- \process_1~1_combout\ = (\entrada~combout\(0)) # (((\entrada~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fafa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\(0),
	datac => \entrada~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_1~1_combout\);

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: LC_X3_Y2_N7
\estado_futuro.S10~0\ : maxv_lcell
-- Equation(s):
-- \estado_futuro.S10~0_combout\ = ((\entrada~combout\(1) & (\estado_atual.S05~regout\)) # (!\entrada~combout\(1) & ((!\estado_atual.S0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0f3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \entrada~combout\(1),
	datac => \estado_atual.S05~regout\,
	datad => \estado_atual.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \estado_futuro.S10~0_combout\);

-- Location: LC_X2_Y2_N9
\estado_futuro.S10~1\ : maxv_lcell
-- Equation(s):
-- \estado_futuro.S10~1_combout\ = ((\entrada~combout\(0) & (\estado_atual.S10~regout\)) # (!\entrada~combout\(0) & ((\estado_futuro.S10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \entrada~combout\(0),
	datac => \estado_atual.S10~regout\,
	datad => \estado_futuro.S10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \estado_futuro.S10~1_combout\);

-- Location: LC_X2_Y2_N6
\estado_futuro.S20~0\ : maxv_lcell
-- Equation(s):
-- \estado_futuro.S20~0_combout\ = (\entrada~combout\(1) & ((\entrada~combout\(0) & ((\estado_atual.S20~regout\))) # (!\entrada~combout\(0) & (\estado_atual.S15~regout\)))) # (!\entrada~combout\(1) & (\entrada~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\(1),
	datab => \entrada~combout\(0),
	datac => \estado_atual.S15~regout\,
	datad => \estado_atual.S20~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \estado_futuro.S20~0_combout\);

-- Location: LC_X2_Y2_N7
\estado_futuro.S20~1\ : maxv_lcell
-- Equation(s):
-- \estado_futuro.S20~1_combout\ = (\process_1~0_combout\ & ((\estado_futuro.S20~0_combout\ & (\entrada~combout\(1))) # (!\estado_futuro.S20~0_combout\ & (!\entrada~combout\(1) & \estado_atual.S10~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8280",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~0_combout\,
	datab => \estado_futuro.S20~0_combout\,
	datac => \entrada~combout\(1),
	datad => \estado_atual.S10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \estado_futuro.S20~1_combout\);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LC_X2_Y2_N8
\estado_atual.S20\ : maxv_lcell
-- Equation(s):
-- \estado_futuro.S20_775\ = ((GLOBAL(\estado_futuro.S15~0_combout\) & (\estado_futuro.S20~1_combout\)) # (!GLOBAL(\estado_futuro.S15~0_combout\) & ((\estado_futuro.S20_775\))))
-- \estado_atual.S20~regout\ = DFFEAS(\estado_futuro.S20_775\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \estado_futuro.S20~1_combout\,
	datac => \estado_futuro.S15~0_combout\,
	datad => \estado_futuro.S20_775\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \estado_futuro.S20_775\,
	regout => \estado_atual.S20~regout\);

-- Location: LC_X2_Y3_N8
\saida[2]~3\ : maxv_lcell
-- Equation(s):
-- \saida[2]~3_combout\ = (\entrada~combout\(3)) # (((!\estado_atual.S20~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\(3),
	datad => \estado_atual.S20~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \saida[2]~3_combout\);

-- Location: LC_X2_Y3_N6
\estado_futuro.S15~0\ : maxv_lcell
-- Equation(s):
-- \estado_futuro.S15~0_combout\ = (\entrada~combout\(2) & ((\entrada~combout\(1)) # ((!\saida[2]~3_combout\) # (!\entrada~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8aaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\(2),
	datab => \entrada~combout\(1),
	datac => \entrada~combout\(0),
	datad => \saida[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \estado_futuro.S15~0_combout\);

-- Location: LC_X2_Y2_N3
\estado_atual.S10\ : maxv_lcell
-- Equation(s):
-- \estado_futuro.S10_645\ = ((GLOBAL(\estado_futuro.S15~0_combout\) & (\estado_futuro.S10~1_combout\)) # (!GLOBAL(\estado_futuro.S15~0_combout\) & ((\estado_futuro.S10_645\))))
-- \estado_atual.S10~regout\ = DFFEAS(\estado_futuro.S10_645\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \estado_futuro.S10~1_combout\,
	datac => \estado_futuro.S15~0_combout\,
	datad => \estado_futuro.S10_645\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \estado_futuro.S10_645\,
	regout => \estado_atual.S10~regout\);

-- Location: LC_X2_Y2_N4
\estado_futuro.S0~0\ : maxv_lcell
-- Equation(s):
-- \estado_futuro.S0~0_combout\ = (\entrada~combout\(1) & (\entrada~combout\(2) & (\entrada~combout\(3)))) # (!\entrada~combout\(1) & (\estado_atual.S10~regout\ & ((!\entrada~combout\(3)) # (!\entrada~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8780",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\(2),
	datab => \entrada~combout\(3),
	datac => \entrada~combout\(1),
	datad => \estado_atual.S10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \estado_futuro.S0~0_combout\);

-- Location: LC_X2_Y2_N5
\estado_futuro.S0~1\ : maxv_lcell
-- Equation(s):
-- \estado_futuro.S0~1_combout\ = (\estado_futuro.S0~0_combout\ & (\entrada~combout\(1) $ ((!\entrada~combout\(0))))) # (!\estado_futuro.S0~0_combout\ & (((!\entrada~combout\(0) & \estado_atual.S15~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9930",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\(1),
	datab => \entrada~combout\(0),
	datac => \estado_atual.S15~regout\,
	datad => \estado_futuro.S0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \estado_futuro.S0~1_combout\);

-- Location: LC_X3_Y2_N8
\estado_futuro.S0~2\ : maxv_lcell
-- Equation(s):
-- \estado_futuro.S0~2_combout\ = (\estado_futuro.S0~1_combout\ & (((!\estado_atual.S0~regout\)) # (!\entrada~combout\(0)))) # (!\estado_futuro.S0~1_combout\ & ((\estado_atual.S20~regout\) # ((\entrada~combout\(0) & !\estado_atual.S0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "72fe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \estado_futuro.S0~1_combout\,
	datab => \entrada~combout\(0),
	datac => \estado_atual.S20~regout\,
	datad => \estado_atual.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \estado_futuro.S0~2_combout\);

-- Location: LC_X3_Y2_N1
\estado_futuro.S0_515\ : maxv_lcell
-- Equation(s):
-- \estado_futuro.S0_515~combout\ = ((GLOBAL(\estado_futuro.S15~0_combout\) & (\estado_futuro.S0~2_combout\)) # (!GLOBAL(\estado_futuro.S15~0_combout\) & ((\estado_futuro.S0_515~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \estado_futuro.S0~2_combout\,
	datac => \estado_futuro.S15~0_combout\,
	datad => \estado_futuro.S0_515~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \estado_futuro.S0_515~combout\);

-- Location: LC_X3_Y2_N2
\estado_atual.S0\ : maxv_lcell
-- Equation(s):
-- \estado_atual.S0~regout\ = DFFEAS((((!\estado_futuro.S0_515~combout\))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \estado_futuro.S0_515~combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.S0~regout\);

-- Location: LC_X3_Y2_N5
\estado_futuro.S05~0\ : maxv_lcell
-- Equation(s):
-- \estado_futuro.S05~0_combout\ = (\entrada~combout\(0) & (((\estado_atual.S05~regout\)))) # (!\entrada~combout\(0) & (\entrada~combout\(1) & ((!\estado_atual.S0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\(0),
	datab => \entrada~combout\(1),
	datac => \estado_atual.S05~regout\,
	datad => \estado_atual.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \estado_futuro.S05~0_combout\);

-- Location: LC_X3_Y2_N6
\estado_atual.S05\ : maxv_lcell
-- Equation(s):
-- \estado_futuro.S05_580\ = ((GLOBAL(\estado_futuro.S15~0_combout\) & (\estado_futuro.S05~0_combout\)) # (!GLOBAL(\estado_futuro.S15~0_combout\) & ((\estado_futuro.S05_580\))))
-- \estado_atual.S05~regout\ = DFFEAS(\estado_futuro.S05_580\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \estado_futuro.S05~0_combout\,
	datac => \estado_futuro.S15~0_combout\,
	datad => \estado_futuro.S05_580\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \estado_futuro.S05_580\,
	regout => \estado_atual.S05~regout\);

-- Location: LC_X3_Y2_N3
\estado_futuro.S15~1\ : maxv_lcell
-- Equation(s):
-- \estado_futuro.S15~1_combout\ = ((\entrada~combout\(1) & ((\estado_atual.S10~regout\))) # (!\entrada~combout\(1) & (\estado_atual.S05~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \entrada~combout\(1),
	datac => \estado_atual.S05~regout\,
	datad => \estado_atual.S10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \estado_futuro.S15~1_combout\);

-- Location: LC_X3_Y2_N4
\estado_futuro.S15~2\ : maxv_lcell
-- Equation(s):
-- \estado_futuro.S15~2_combout\ = ((\entrada~combout\(0) & (\estado_atual.S15~regout\)) # (!\entrada~combout\(0) & ((\estado_futuro.S15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \entrada~combout\(0),
	datac => \estado_atual.S15~regout\,
	datad => \estado_futuro.S15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \estado_futuro.S15~2_combout\);

-- Location: LC_X3_Y2_N9
\estado_atual.S15\ : maxv_lcell
-- Equation(s):
-- \estado_futuro.S15_710\ = ((GLOBAL(\estado_futuro.S15~0_combout\) & (\estado_futuro.S15~2_combout\)) # (!GLOBAL(\estado_futuro.S15~0_combout\) & ((\estado_futuro.S15_710\))))
-- \estado_atual.S15~regout\ = DFFEAS(\estado_futuro.S15_710\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \estado_futuro.S15~2_combout\,
	datac => \estado_futuro.S15~0_combout\,
	datad => \estado_futuro.S15_710\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \estado_futuro.S15_710\,
	regout => \estado_atual.S15~regout\);

-- Location: LC_X2_Y3_N2
\saida[0]~2\ : maxv_lcell
-- Equation(s):
-- \saida[0]~2_combout\ = (!\process_1~1_combout\ & ((\process_1~0_combout\ & ((\estado_atual.S20~regout\))) # (!\process_1~0_combout\ & (\estado_atual.S15~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3210",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~0_combout\,
	datab => \process_1~1_combout\,
	datac => \estado_atual.S15~regout\,
	datad => \estado_atual.S20~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \saida[0]~2_combout\);

-- Location: LC_X2_Y3_N9
\saida[2]~4\ : maxv_lcell
-- Equation(s):
-- \saida[2]~4_combout\ = (\entrada~combout\(2) & (\saida[2]~3_combout\ & ((\entrada~combout\(1)) # (!\entrada~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\(2),
	datab => \entrada~combout\(1),
	datac => \entrada~combout\(0),
	datad => \saida[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \saida[2]~4_combout\);

-- Location: LC_X2_Y3_N1
\saida[0]$latch\ : maxv_lcell
-- Equation(s):
-- \saida[0]$latch~combout\ = ((GLOBAL(\saida[2]~4_combout\) & (!\saida[0]~2_combout\)) # (!GLOBAL(\saida[2]~4_combout\) & ((\saida[0]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \saida[0]~2_combout\,
	datac => \saida[0]$latch~combout\,
	datad => \saida[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \saida[0]$latch~combout\);

-- Location: LC_X2_Y3_N3
\saida[2]~5\ : maxv_lcell
-- Equation(s):
-- \saida[2]~5_combout\ = (\entrada~combout\(0)) # (((!\estado_atual.S20~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \entrada~combout\(0),
	datad => \estado_atual.S20~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \saida[2]~5_combout\);

-- Location: LC_X2_Y3_N7
\saida[2]~6\ : maxv_lcell
-- Equation(s):
-- \saida[2]~6_combout\ = ((\saida[2]~5_combout\ & ((\process_1~1_combout\) # (!\estado_atual.S15~regout\)))) # (!\process_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8aff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \saida[2]~5_combout\,
	datab => \process_1~1_combout\,
	datac => \estado_atual.S15~regout\,
	datad => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \saida[2]~6_combout\);

-- Location: LC_X2_Y3_N5
\saida[2]$latch\ : maxv_lcell
-- Equation(s):
-- \saida[2]$latch~combout\ = ((GLOBAL(\saida[2]~4_combout\) & (\saida[2]~6_combout\)) # (!GLOBAL(\saida[2]~4_combout\) & ((\saida[2]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \saida[2]~6_combout\,
	datac => \saida[2]$latch~combout\,
	datad => \saida[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \saida[2]$latch~combout\);

-- Location: LC_X2_Y2_N0
\saida[3]~7\ : maxv_lcell
-- Equation(s):
-- \saida[3]~7_combout\ = (\estado_atual.S20~regout\ & (((\entrada~combout\(1))))) # (!\estado_atual.S20~regout\ & ((\estado_atual.S15~regout\) # ((\estado_atual.S10~regout\ & !\entrada~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.S10~regout\,
	datab => \entrada~combout\(1),
	datac => \estado_atual.S15~regout\,
	datad => \estado_atual.S20~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \saida[3]~7_combout\);

-- Location: LC_X2_Y2_N1
\saida[3]~8\ : maxv_lcell
-- Equation(s):
-- \saida[3]~8_combout\ = (\process_1~0_combout\ & (((\saida[3]~7_combout\) # (!\estado_atual.S20~regout\)) # (!\entrada~combout\(0)))) # (!\process_1~0_combout\ & (!\estado_atual.S20~regout\ & ((\entrada~combout\(0)) # (!\saida[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ae2f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~0_combout\,
	datab => \entrada~combout\(0),
	datac => \estado_atual.S20~regout\,
	datad => \saida[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \saida[3]~8_combout\);

-- Location: LC_X2_Y2_N2
\saida[3]$latch\ : maxv_lcell
-- Equation(s):
-- \saida[3]$latch~combout\ = ((GLOBAL(\saida[2]~4_combout\) & (\saida[3]~8_combout\)) # (!GLOBAL(\saida[2]~4_combout\) & ((\saida[3]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \saida[3]~8_combout\,
	datac => \saida[3]$latch~combout\,
	datad => \saida[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \saida[3]$latch~combout\);

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\saida[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \saida[0]$latch~combout\,
	oe => VCC,
	padio => ww_saida(0));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\saida[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_saida(1));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\saida[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \saida[2]$latch~combout\,
	oe => VCC,
	padio => ww_saida(2));

-- Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\saida[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \saida[3]$latch~combout\,
	oe => VCC,
	padio => ww_saida(3));
END structure;


