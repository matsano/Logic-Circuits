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

-- DATE "04/19/2021 17:42:13"

-- 
-- Device: Altera 5M2210ZF256C4 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	memoria IS
    PORT (
	clk : IN std_logic;
	WD : IN std_logic_vector(7 DOWNTO 0);
	WWrite : IN std_logic;
	WAddr : IN std_logic_vector(5 DOWNTO 0);
	reset : IN std_logic;
	RA : IN std_logic_vector(5 DOWNTO 0);
	readA : IN std_logic;
	RB : IN std_logic_vector(5 DOWNTO 0);
	readB : IN std_logic;
	QA : BUFFER std_logic_vector(7 DOWNTO 0);
	QB : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END memoria;

-- Design Ports Information


ARCHITECTURE structure OF memoria IS
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
SIGNAL ww_WD : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_WWrite : std_logic;
SIGNAL ww_WAddr : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL ww_RA : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_readA : std_logic;
SIGNAL ww_RB : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_readB : std_logic;
SIGNAL ww_QA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_QB : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \WWrite~combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Decoder0~25_combout\ : std_logic;
SIGNAL \memoria[21][0]~regout\ : std_logic;
SIGNAL \Decoder0~14_combout\ : std_logic;
SIGNAL \Decoder0~26_combout\ : std_logic;
SIGNAL \memoria[20][0]~regout\ : std_logic;
SIGNAL \QA~10\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \Decoder0~24_combout\ : std_logic;
SIGNAL \memoria[22][0]~regout\ : std_logic;
SIGNAL \QB~10\ : std_logic;
SIGNAL \Decoder0~18_combout\ : std_logic;
SIGNAL \Decoder0~27_combout\ : std_logic;
SIGNAL \memoria[23][0]~regout\ : std_logic;
SIGNAL \QA~11\ : std_logic;
SIGNAL \Decoder0~37_combout\ : std_logic;
SIGNAL \memoria[29][0]~regout\ : std_logic;
SIGNAL \Decoder0~38_combout\ : std_logic;
SIGNAL \memoria[28][0]~regout\ : std_logic;
SIGNAL \QA~17\ : std_logic;
SIGNAL \Decoder0~36_combout\ : std_logic;
SIGNAL \memoria[30][0]~regout\ : std_logic;
SIGNAL \QB~17\ : std_logic;
SIGNAL \Decoder0~39_combout\ : std_logic;
SIGNAL \memoria[31][0]~regout\ : std_logic;
SIGNAL \QA~18\ : std_logic;
SIGNAL \Decoder0~12_combout\ : std_logic;
SIGNAL \Decoder0~30_combout\ : std_logic;
SIGNAL \memoria[24][0]~regout\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \Decoder0~29_combout\ : std_logic;
SIGNAL \memoria[26][0]~regout\ : std_logic;
SIGNAL \QB~12\ : std_logic;
SIGNAL \QA~12\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \Decoder0~28_combout\ : std_logic;
SIGNAL \memoria[25][0]~regout\ : std_logic;
SIGNAL \Decoder0~20_combout\ : std_logic;
SIGNAL \Decoder0~31_combout\ : std_logic;
SIGNAL \memoria[27][0]~regout\ : std_logic;
SIGNAL \QA~13\ : std_logic;
SIGNAL \Decoder0~33_combout\ : std_logic;
SIGNAL \memoria[18][0]~regout\ : std_logic;
SIGNAL \Decoder0~34_combout\ : std_logic;
SIGNAL \memoria[16][0]~regout\ : std_logic;
SIGNAL \QA~14\ : std_logic;
SIGNAL \QB~14\ : std_logic;
SIGNAL \Decoder0~32_combout\ : std_logic;
SIGNAL \memoria[17][0]~regout\ : std_logic;
SIGNAL \Decoder0~35_combout\ : std_logic;
SIGNAL \memoria[19][0]~regout\ : std_logic;
SIGNAL \QA~15\ : std_logic;
SIGNAL \QA~16_combout\ : std_logic;
SIGNAL \QA~19_combout\ : std_logic;
SIGNAL \Decoder0~50_combout\ : std_logic;
SIGNAL \memoria[0][0]~regout\ : std_logic;
SIGNAL \Decoder0~49_combout\ : std_logic;
SIGNAL \memoria[2][0]~regout\ : std_logic;
SIGNAL \QB~24\ : std_logic;
SIGNAL \QA~24\ : std_logic;
SIGNAL \Decoder0~48_combout\ : std_logic;
SIGNAL \memoria[1][0]~regout\ : std_logic;
SIGNAL \Decoder0~51_combout\ : std_logic;
SIGNAL \memoria[3][0]~regout\ : std_logic;
SIGNAL \QA~25\ : std_logic;
SIGNAL \Decoder0~45_combout\ : std_logic;
SIGNAL \memoria[5][0]~regout\ : std_logic;
SIGNAL \Decoder0~46_combout\ : std_logic;
SIGNAL \memoria[4][0]~regout\ : std_logic;
SIGNAL \QA~22\ : std_logic;
SIGNAL \QB~22\ : std_logic;
SIGNAL \Decoder0~44_combout\ : std_logic;
SIGNAL \memoria[6][0]~regout\ : std_logic;
SIGNAL \Decoder0~47_combout\ : std_logic;
SIGNAL \memoria[7][0]~regout\ : std_logic;
SIGNAL \QA~23\ : std_logic;
SIGNAL \QA~26_combout\ : std_logic;
SIGNAL \Decoder0~53_combout\ : std_logic;
SIGNAL \memoria[13][0]~regout\ : std_logic;
SIGNAL \Decoder0~54_combout\ : std_logic;
SIGNAL \memoria[12][0]~regout\ : std_logic;
SIGNAL \QA~27\ : std_logic;
SIGNAL \QB~27\ : std_logic;
SIGNAL \Decoder0~52_combout\ : std_logic;
SIGNAL \memoria[14][0]~regout\ : std_logic;
SIGNAL \Decoder0~55_combout\ : std_logic;
SIGNAL \memoria[15][0]~regout\ : std_logic;
SIGNAL \QA~28\ : std_logic;
SIGNAL \Decoder0~41_combout\ : std_logic;
SIGNAL \memoria[10][0]~regout\ : std_logic;
SIGNAL \Decoder0~42_combout\ : std_logic;
SIGNAL \memoria[8][0]~regout\ : std_logic;
SIGNAL \QA~20\ : std_logic;
SIGNAL \Decoder0~40_combout\ : std_logic;
SIGNAL \memoria[9][0]~regout\ : std_logic;
SIGNAL \QB~20\ : std_logic;
SIGNAL \Decoder0~43_combout\ : std_logic;
SIGNAL \memoria[11][0]~regout\ : std_logic;
SIGNAL \QA~21\ : std_logic;
SIGNAL \QA~29_combout\ : std_logic;
SIGNAL \QA~30_combout\ : std_logic;
SIGNAL \Decoder0~21_combout\ : std_logic;
SIGNAL \memoria[43][0]~regout\ : std_logic;
SIGNAL \Decoder0~22_combout\ : std_logic;
SIGNAL \memoria[35][0]~regout\ : std_logic;
SIGNAL \QA~7\ : std_logic;
SIGNAL \Decoder0~19_combout\ : std_logic;
SIGNAL \memoria[39][0]~regout\ : std_logic;
SIGNAL \QB~7\ : std_logic;
SIGNAL \Decoder0~23_combout\ : std_logic;
SIGNAL \memoria[47][0]~regout\ : std_logic;
SIGNAL \QA~8\ : std_logic;
SIGNAL \Decoder0~15_combout\ : std_logic;
SIGNAL \memoria[36][0]~regout\ : std_logic;
SIGNAL \Decoder0~16_combout\ : std_logic;
SIGNAL \memoria[32][0]~regout\ : std_logic;
SIGNAL \QA~4\ : std_logic;
SIGNAL \QB~4\ : std_logic;
SIGNAL \Decoder0~13_combout\ : std_logic;
SIGNAL \memoria[40][0]~regout\ : std_logic;
SIGNAL \Decoder0~17_combout\ : std_logic;
SIGNAL \memoria[44][0]~regout\ : std_logic;
SIGNAL \QA~5\ : std_logic;
SIGNAL \Decoder0~9_combout\ : std_logic;
SIGNAL \memoria[38][0]~regout\ : std_logic;
SIGNAL \Decoder0~10_combout\ : std_logic;
SIGNAL \memoria[34][0]~regout\ : std_logic;
SIGNAL \QA~2\ : std_logic;
SIGNAL \QB~2\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \memoria[42][0]~regout\ : std_logic;
SIGNAL \Decoder0~11_combout\ : std_logic;
SIGNAL \memoria[46][0]~regout\ : std_logic;
SIGNAL \QA~3\ : std_logic;
SIGNAL \QA~6_combout\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \memoria[33][0]~regout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \memoria[41][0]~regout\ : std_logic;
SIGNAL \QB~0\ : std_logic;
SIGNAL \QA~0\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \memoria[37][0]~regout\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \memoria[45][0]~regout\ : std_logic;
SIGNAL \QA~1\ : std_logic;
SIGNAL \QA~9_combout\ : std_logic;
SIGNAL \Decoder0~69_combout\ : std_logic;
SIGNAL \memoria[62][0]~regout\ : std_logic;
SIGNAL \Decoder0~70_combout\ : std_logic;
SIGNAL \memoria[60][0]~regout\ : std_logic;
SIGNAL \QA~38\ : std_logic;
SIGNAL \Decoder0~68_combout\ : std_logic;
SIGNAL \memoria[61][0]~regout\ : std_logic;
SIGNAL \QB~38\ : std_logic;
SIGNAL \Decoder0~71_combout\ : std_logic;
SIGNAL \memoria[63][0]~regout\ : std_logic;
SIGNAL \QA~39\ : std_logic;
SIGNAL \Decoder0~57_combout\ : std_logic;
SIGNAL \memoria[57][0]~regout\ : std_logic;
SIGNAL \Decoder0~58_combout\ : std_logic;
SIGNAL \memoria[56][0]~regout\ : std_logic;
SIGNAL \QA~31\ : std_logic;
SIGNAL \Decoder0~56_combout\ : std_logic;
SIGNAL \memoria[58][0]~regout\ : std_logic;
SIGNAL \QB~31\ : std_logic;
SIGNAL \Decoder0~59_combout\ : std_logic;
SIGNAL \memoria[59][0]~regout\ : std_logic;
SIGNAL \QA~32\ : std_logic;
SIGNAL \Decoder0~65_combout\ : std_logic;
SIGNAL \memoria[49][0]~regout\ : std_logic;
SIGNAL \Decoder0~66_combout\ : std_logic;
SIGNAL \memoria[48][0]~regout\ : std_logic;
SIGNAL \QA~35\ : std_logic;
SIGNAL \Decoder0~64_combout\ : std_logic;
SIGNAL \memoria[50][0]~regout\ : std_logic;
SIGNAL \QB~35\ : std_logic;
SIGNAL \Decoder0~67_combout\ : std_logic;
SIGNAL \memoria[51][0]~regout\ : std_logic;
SIGNAL \QA~36\ : std_logic;
SIGNAL \Decoder0~61_combout\ : std_logic;
SIGNAL \memoria[54][0]~regout\ : std_logic;
SIGNAL \Decoder0~62_combout\ : std_logic;
SIGNAL \memoria[52][0]~regout\ : std_logic;
SIGNAL \QA~33\ : std_logic;
SIGNAL \Decoder0~60_combout\ : std_logic;
SIGNAL \memoria[53][0]~regout\ : std_logic;
SIGNAL \QB~33\ : std_logic;
SIGNAL \Decoder0~63_combout\ : std_logic;
SIGNAL \memoria[55][0]~regout\ : std_logic;
SIGNAL \QA~34\ : std_logic;
SIGNAL \QA~37_combout\ : std_logic;
SIGNAL \QA~40_combout\ : std_logic;
SIGNAL \QA~41_combout\ : std_logic;
SIGNAL \readA~combout\ : std_logic;
SIGNAL \QA~42_combout\ : std_logic;
SIGNAL \memoria[14][1]~regout\ : std_logic;
SIGNAL \memoria[30][1]~regout\ : std_logic;
SIGNAL \QB~50\ : std_logic;
SIGNAL \QA~50\ : std_logic;
SIGNAL \memoria[46][1]~regout\ : std_logic;
SIGNAL \memoria[62][1]~regout\ : std_logic;
SIGNAL \QA~51\ : std_logic;
SIGNAL \memoria[34][1]~regout\ : std_logic;
SIGNAL \memoria[2][1]~regout\ : std_logic;
SIGNAL \QA~47\ : std_logic;
SIGNAL \memoria[18][1]~regout\ : std_logic;
SIGNAL \QB~47\ : std_logic;
SIGNAL \memoria[50][1]~regout\ : std_logic;
SIGNAL \QA~48\ : std_logic;
SIGNAL \memoria[42][1]~regout\ : std_logic;
SIGNAL \memoria[10][1]~regout\ : std_logic;
SIGNAL \QA~45\ : std_logic;
SIGNAL \memoria[26][1]~regout\ : std_logic;
SIGNAL \QB~45\ : std_logic;
SIGNAL \memoria[58][1]~regout\ : std_logic;
SIGNAL \QA~46\ : std_logic;
SIGNAL \QA~49_combout\ : std_logic;
SIGNAL \memoria[22][1]~regout\ : std_logic;
SIGNAL \memoria[6][1]~regout\ : std_logic;
SIGNAL \QA~43\ : std_logic;
SIGNAL \memoria[38][1]~regout\ : std_logic;
SIGNAL \QB~43\ : std_logic;
SIGNAL \memoria[54][1]~regout\ : std_logic;
SIGNAL \QA~44\ : std_logic;
SIGNAL \QA~52_combout\ : std_logic;
SIGNAL \memoria[43][1]~regout\ : std_logic;
SIGNAL \memoria[11][1]~regout\ : std_logic;
SIGNAL \QA~74\ : std_logic;
SIGNAL \memoria[27][1]~regout\ : std_logic;
SIGNAL \QB~74\ : std_logic;
SIGNAL \memoria[59][1]~regout\ : std_logic;
SIGNAL \QA~75\ : std_logic;
SIGNAL \memoria[31][1]~regout\ : std_logic;
SIGNAL \memoria[15][1]~regout\ : std_logic;
SIGNAL \QA~81\ : std_logic;
SIGNAL \memoria[47][1]~regout\ : std_logic;
SIGNAL \QB~81\ : std_logic;
SIGNAL \memoria[63][1]~regout\ : std_logic;
SIGNAL \QA~82\ : std_logic;
SIGNAL \memoria[35][1]~regout\ : std_logic;
SIGNAL \memoria[3][1]~regout\ : std_logic;
SIGNAL \QA~78\ : std_logic;
SIGNAL \QB~78\ : std_logic;
SIGNAL \memoria[19][1]~regout\ : std_logic;
SIGNAL \memoria[51][1]~regout\ : std_logic;
SIGNAL \QA~79\ : std_logic;
SIGNAL \memoria[23][1]~regout\ : std_logic;
SIGNAL \memoria[7][1]~regout\ : std_logic;
SIGNAL \QA~76\ : std_logic;
SIGNAL \memoria[39][1]~regout\ : std_logic;
SIGNAL \QB~76\ : std_logic;
SIGNAL \memoria[55][1]~regout\ : std_logic;
SIGNAL \QA~77\ : std_logic;
SIGNAL \QA~80_combout\ : std_logic;
SIGNAL \QA~83_combout\ : std_logic;
SIGNAL \memoria[21][1]~regout\ : std_logic;
SIGNAL \memoria[5][1]~regout\ : std_logic;
SIGNAL \QA~55\ : std_logic;
SIGNAL \QB~55\ : std_logic;
SIGNAL \memoria[37][1]~regout\ : std_logic;
SIGNAL \memoria[53][1]~regout\ : std_logic;
SIGNAL \QA~56\ : std_logic;
SIGNAL \memoria[1][1]~regout\ : std_logic;
SIGNAL \memoria[33][1]~regout\ : std_logic;
SIGNAL \QB~57\ : std_logic;
SIGNAL \QA~57\ : std_logic;
SIGNAL \memoria[17][1]~regout\ : std_logic;
SIGNAL \memoria[49][1]~regout\ : std_logic;
SIGNAL \QA~58\ : std_logic;
SIGNAL \QA~59_combout\ : std_logic;
SIGNAL \memoria[29][1]~regout\ : std_logic;
SIGNAL \memoria[13][1]~regout\ : std_logic;
SIGNAL \QA~60\ : std_logic;
SIGNAL \memoria[45][1]~regout\ : std_logic;
SIGNAL \QB~60\ : std_logic;
SIGNAL \memoria[61][1]~regout\ : std_logic;
SIGNAL \QA~61\ : std_logic;
SIGNAL \memoria[41][1]~regout\ : std_logic;
SIGNAL \memoria[9][1]~regout\ : std_logic;
SIGNAL \QA~53\ : std_logic;
SIGNAL \memoria[25][1]~regout\ : std_logic;
SIGNAL \QB~53\ : std_logic;
SIGNAL \memoria[57][1]~regout\ : std_logic;
SIGNAL \QA~54\ : std_logic;
SIGNAL \QA~62_combout\ : std_logic;
SIGNAL \memoria[40][1]~regout\ : std_logic;
SIGNAL \memoria[8][1]~regout\ : std_logic;
SIGNAL \QA~65\ : std_logic;
SIGNAL \memoria[24][1]~regout\ : std_logic;
SIGNAL \QB~65\ : std_logic;
SIGNAL \memoria[56][1]~regout\ : std_logic;
SIGNAL \QA~66\ : std_logic;
SIGNAL \memoria[32][1]~regout\ : std_logic;
SIGNAL \memoria[0][1]~regout\ : std_logic;
SIGNAL \QA~67\ : std_logic;
SIGNAL \memoria[16][1]~regout\ : std_logic;
SIGNAL \QB~67\ : std_logic;
SIGNAL \memoria[48][1]~regout\ : std_logic;
SIGNAL \QA~68\ : std_logic;
SIGNAL \QA~69_combout\ : std_logic;
SIGNAL \memoria[20][1]~regout\ : std_logic;
SIGNAL \memoria[4][1]~regout\ : std_logic;
SIGNAL \QA~63\ : std_logic;
SIGNAL \memoria[36][1]~regout\ : std_logic;
SIGNAL \QB~63\ : std_logic;
SIGNAL \memoria[52][1]~regout\ : std_logic;
SIGNAL \QA~64\ : std_logic;
SIGNAL \memoria[28][1]~regout\ : std_logic;
SIGNAL \memoria[12][1]~regout\ : std_logic;
SIGNAL \QA~70\ : std_logic;
SIGNAL \memoria[44][1]~regout\ : std_logic;
SIGNAL \QB~70\ : std_logic;
SIGNAL \memoria[60][1]~regout\ : std_logic;
SIGNAL \QA~71\ : std_logic;
SIGNAL \QA~72_combout\ : std_logic;
SIGNAL \QA~73_combout\ : std_logic;
SIGNAL \QA~84_combout\ : std_logic;
SIGNAL \QA~85_combout\ : std_logic;
SIGNAL \memoria[4][2]~regout\ : std_logic;
SIGNAL \memoria[5][2]~regout\ : std_logic;
SIGNAL \QB~100\ : std_logic;
SIGNAL \QA~100\ : std_logic;
SIGNAL \memoria[6][2]~regout\ : std_logic;
SIGNAL \memoria[7][2]~regout\ : std_logic;
SIGNAL \QA~101\ : std_logic;
SIGNAL \memoria[22][2]~regout\ : std_logic;
SIGNAL \memoria[20][2]~regout\ : std_logic;
SIGNAL \QA~98\ : std_logic;
SIGNAL \QB~98\ : std_logic;
SIGNAL \memoria[21][2]~regout\ : std_logic;
SIGNAL \memoria[23][2]~regout\ : std_logic;
SIGNAL \QA~99\ : std_logic;
SIGNAL \QA~102_combout\ : std_logic;
SIGNAL \memoria[37][2]~regout\ : std_logic;
SIGNAL \memoria[36][2]~regout\ : std_logic;
SIGNAL \QA~96\ : std_logic;
SIGNAL \memoria[38][2]~regout\ : std_logic;
SIGNAL \QB~96\ : std_logic;
SIGNAL \memoria[39][2]~regout\ : std_logic;
SIGNAL \QA~97\ : std_logic;
SIGNAL \memoria[52][2]~regout\ : std_logic;
SIGNAL \memoria[54][2]~regout\ : std_logic;
SIGNAL \QB~103\ : std_logic;
SIGNAL \QA~103\ : std_logic;
SIGNAL \memoria[53][2]~regout\ : std_logic;
SIGNAL \memoria[55][2]~regout\ : std_logic;
SIGNAL \QA~104\ : std_logic;
SIGNAL \QA~105_combout\ : std_logic;
SIGNAL \memoria[33][2]~regout\ : std_logic;
SIGNAL \memoria[32][2]~regout\ : std_logic;
SIGNAL \QA~108\ : std_logic;
SIGNAL \memoria[34][2]~regout\ : std_logic;
SIGNAL \QB~108\ : std_logic;
SIGNAL \memoria[35][2]~regout\ : std_logic;
SIGNAL \QA~109\ : std_logic;
SIGNAL \memoria[1][2]~regout\ : std_logic;
SIGNAL \memoria[0][2]~regout\ : std_logic;
SIGNAL \QA~110\ : std_logic;
SIGNAL \QB~110\ : std_logic;
SIGNAL \memoria[2][2]~regout\ : std_logic;
SIGNAL \memoria[3][2]~regout\ : std_logic;
SIGNAL \QA~111\ : std_logic;
SIGNAL \QA~112_combout\ : std_logic;
SIGNAL \memoria[18][2]~regout\ : std_logic;
SIGNAL \memoria[16][2]~regout\ : std_logic;
SIGNAL \QA~106\ : std_logic;
SIGNAL \memoria[17][2]~regout\ : std_logic;
SIGNAL \QB~106\ : std_logic;
SIGNAL \memoria[19][2]~regout\ : std_logic;
SIGNAL \QA~107\ : std_logic;
SIGNAL \memoria[48][2]~regout\ : std_logic;
SIGNAL \memoria[50][2]~regout\ : std_logic;
SIGNAL \QB~113\ : std_logic;
SIGNAL \QA~113\ : std_logic;
SIGNAL \memoria[49][2]~regout\ : std_logic;
SIGNAL \memoria[51][2]~regout\ : std_logic;
SIGNAL \QA~114\ : std_logic;
SIGNAL \QA~115_combout\ : std_logic;
SIGNAL \QA~116_combout\ : std_logic;
SIGNAL \memoria[28][2]~regout\ : std_logic;
SIGNAL \memoria[29][2]~regout\ : std_logic;
SIGNAL \QB~117\ : std_logic;
SIGNAL \QA~117\ : std_logic;
SIGNAL \memoria[30][2]~regout\ : std_logic;
SIGNAL \memoria[31][2]~regout\ : std_logic;
SIGNAL \QA~118\ : std_logic;
SIGNAL \memoria[46][2]~regout\ : std_logic;
SIGNAL \memoria[44][2]~regout\ : std_logic;
SIGNAL \QA~119\ : std_logic;
SIGNAL \memoria[45][2]~regout\ : std_logic;
SIGNAL \QB~119\ : std_logic;
SIGNAL \memoria[47][2]~regout\ : std_logic;
SIGNAL \QA~120\ : std_logic;
SIGNAL \memoria[14][2]~regout\ : std_logic;
SIGNAL \memoria[12][2]~regout\ : std_logic;
SIGNAL \QA~121\ : std_logic;
SIGNAL \memoria[13][2]~regout\ : std_logic;
SIGNAL \QB~121\ : std_logic;
SIGNAL \memoria[15][2]~regout\ : std_logic;
SIGNAL \QA~122\ : std_logic;
SIGNAL \QA~123_combout\ : std_logic;
SIGNAL \memoria[61][2]~regout\ : std_logic;
SIGNAL \memoria[60][2]~regout\ : std_logic;
SIGNAL \QA~124\ : std_logic;
SIGNAL \memoria[62][2]~regout\ : std_logic;
SIGNAL \QB~124\ : std_logic;
SIGNAL \memoria[63][2]~regout\ : std_logic;
SIGNAL \QA~125\ : std_logic;
SIGNAL \QA~126_combout\ : std_logic;
SIGNAL \memoria[9][2]~regout\ : std_logic;
SIGNAL \memoria[25][2]~regout\ : std_logic;
SIGNAL \QB~88\ : std_logic;
SIGNAL \QA~88\ : std_logic;
SIGNAL \memoria[41][2]~regout\ : std_logic;
SIGNAL \memoria[57][2]~regout\ : std_logic;
SIGNAL \QA~89\ : std_logic;
SIGNAL \memoria[8][2]~regout\ : std_logic;
SIGNAL \memoria[40][2]~regout\ : std_logic;
SIGNAL \QB~90\ : std_logic;
SIGNAL \QA~90\ : std_logic;
SIGNAL \memoria[24][2]~regout\ : std_logic;
SIGNAL \memoria[56][2]~regout\ : std_logic;
SIGNAL \QA~91\ : std_logic;
SIGNAL \QA~92_combout\ : std_logic;
SIGNAL \memoria[42][2]~regout\ : std_logic;
SIGNAL \memoria[10][2]~regout\ : std_logic;
SIGNAL \QA~86\ : std_logic;
SIGNAL \memoria[26][2]~regout\ : std_logic;
SIGNAL \QB~86\ : std_logic;
SIGNAL \memoria[58][2]~regout\ : std_logic;
SIGNAL \QA~87\ : std_logic;
SIGNAL \memoria[27][2]~regout\ : std_logic;
SIGNAL \memoria[11][2]~regout\ : std_logic;
SIGNAL \QA~93\ : std_logic;
SIGNAL \memoria[43][2]~regout\ : std_logic;
SIGNAL \QB~93\ : std_logic;
SIGNAL \memoria[59][2]~regout\ : std_logic;
SIGNAL \QA~94\ : std_logic;
SIGNAL \QA~95_combout\ : std_logic;
SIGNAL \QA~127_combout\ : std_logic;
SIGNAL \QA~128_combout\ : std_logic;
SIGNAL \memoria[24][3]~regout\ : std_logic;
SIGNAL \memoria[16][3]~regout\ : std_logic;
SIGNAL \QA~133\ : std_logic;
SIGNAL \QB~133\ : std_logic;
SIGNAL \memoria[20][3]~regout\ : std_logic;
SIGNAL \memoria[28][3]~regout\ : std_logic;
SIGNAL \QA~134\ : std_logic;
SIGNAL \memoria[21][3]~regout\ : std_logic;
SIGNAL \memoria[17][3]~regout\ : std_logic;
SIGNAL \QA~131\ : std_logic;
SIGNAL \memoria[25][3]~regout\ : std_logic;
SIGNAL \QB~131\ : std_logic;
SIGNAL \memoria[29][3]~regout\ : std_logic;
SIGNAL \QA~132\ : std_logic;
SIGNAL \QA~135_combout\ : std_logic;
SIGNAL \memoria[26][3]~regout\ : std_logic;
SIGNAL \memoria[18][3]~regout\ : std_logic;
SIGNAL \QA~129\ : std_logic;
SIGNAL \memoria[22][3]~regout\ : std_logic;
SIGNAL \QB~129\ : std_logic;
SIGNAL \memoria[30][3]~regout\ : std_logic;
SIGNAL \QA~130\ : std_logic;
SIGNAL \memoria[23][3]~regout\ : std_logic;
SIGNAL \memoria[19][3]~regout\ : std_logic;
SIGNAL \QA~136\ : std_logic;
SIGNAL \memoria[27][3]~regout\ : std_logic;
SIGNAL \QB~136\ : std_logic;
SIGNAL \memoria[31][3]~regout\ : std_logic;
SIGNAL \QA~137\ : std_logic;
SIGNAL \QA~138_combout\ : std_logic;
SIGNAL \memoria[51][3]~regout\ : std_logic;
SIGNAL \memoria[55][3]~regout\ : std_logic;
SIGNAL \QB~167\ : std_logic;
SIGNAL \QA~167\ : std_logic;
SIGNAL \memoria[59][3]~regout\ : std_logic;
SIGNAL \memoria[63][3]~regout\ : std_logic;
SIGNAL \QA~168\ : std_logic;
SIGNAL \memoria[50][3]~regout\ : std_logic;
SIGNAL \memoria[58][3]~regout\ : std_logic;
SIGNAL \QB~160\ : std_logic;
SIGNAL \QA~160\ : std_logic;
SIGNAL \memoria[54][3]~regout\ : std_logic;
SIGNAL \memoria[62][3]~regout\ : std_logic;
SIGNAL \QA~161\ : std_logic;
SIGNAL \memoria[53][3]~regout\ : std_logic;
SIGNAL \memoria[49][3]~regout\ : std_logic;
SIGNAL \QA~162\ : std_logic;
SIGNAL \memoria[57][3]~regout\ : std_logic;
SIGNAL \QB~162\ : std_logic;
SIGNAL \memoria[61][3]~regout\ : std_logic;
SIGNAL \QA~163\ : std_logic;
SIGNAL \memoria[56][3]~regout\ : std_logic;
SIGNAL \memoria[48][3]~regout\ : std_logic;
SIGNAL \QA~164\ : std_logic;
SIGNAL \QB~164\ : std_logic;
SIGNAL \memoria[52][3]~regout\ : std_logic;
SIGNAL \memoria[60][3]~regout\ : std_logic;
SIGNAL \QA~165\ : std_logic;
SIGNAL \QA~166_combout\ : std_logic;
SIGNAL \QA~169_combout\ : std_logic;
SIGNAL \memoria[39][3]~regout\ : std_logic;
SIGNAL \memoria[35][3]~regout\ : std_logic;
SIGNAL \QA~146\ : std_logic;
SIGNAL \memoria[43][3]~regout\ : std_logic;
SIGNAL \QB~146\ : std_logic;
SIGNAL \memoria[47][3]~regout\ : std_logic;
SIGNAL \QA~147\ : std_logic;
SIGNAL \memoria[37][3]~regout\ : std_logic;
SIGNAL \memoria[33][3]~regout\ : std_logic;
SIGNAL \QA~139\ : std_logic;
SIGNAL \memoria[41][3]~regout\ : std_logic;
SIGNAL \QB~139\ : std_logic;
SIGNAL \memoria[45][3]~regout\ : std_logic;
SIGNAL \QA~140\ : std_logic;
SIGNAL \memoria[42][3]~regout\ : std_logic;
SIGNAL \memoria[34][3]~regout\ : std_logic;
SIGNAL \QA~141\ : std_logic;
SIGNAL \QB~141\ : std_logic;
SIGNAL \memoria[38][3]~regout\ : std_logic;
SIGNAL \memoria[46][3]~regout\ : std_logic;
SIGNAL \QA~142\ : std_logic;
SIGNAL \memoria[40][3]~regout\ : std_logic;
SIGNAL \memoria[32][3]~regout\ : std_logic;
SIGNAL \QA~143\ : std_logic;
SIGNAL \memoria[36][3]~regout\ : std_logic;
SIGNAL \QB~143\ : std_logic;
SIGNAL \memoria[44][3]~regout\ : std_logic;
SIGNAL \QA~144\ : std_logic;
SIGNAL \QA~145_combout\ : std_logic;
SIGNAL \QA~148_combout\ : std_logic;
SIGNAL \memoria[5][3]~regout\ : std_logic;
SIGNAL \memoria[1][3]~regout\ : std_logic;
SIGNAL \QA~149\ : std_logic;
SIGNAL \memoria[9][3]~regout\ : std_logic;
SIGNAL \QB~149\ : std_logic;
SIGNAL \memoria[13][3]~regout\ : std_logic;
SIGNAL \QA~150\ : std_logic;
SIGNAL \memoria[7][3]~regout\ : std_logic;
SIGNAL \memoria[3][3]~regout\ : std_logic;
SIGNAL \QA~156\ : std_logic;
SIGNAL \QB~156\ : std_logic;
SIGNAL \memoria[11][3]~regout\ : std_logic;
SIGNAL \memoria[15][3]~regout\ : std_logic;
SIGNAL \QA~157\ : std_logic;
SIGNAL \memoria[8][3]~regout\ : std_logic;
SIGNAL \memoria[0][3]~regout\ : std_logic;
SIGNAL \QA~153\ : std_logic;
SIGNAL \memoria[4][3]~regout\ : std_logic;
SIGNAL \QB~153\ : std_logic;
SIGNAL \memoria[12][3]~regout\ : std_logic;
SIGNAL \QA~154\ : std_logic;
SIGNAL \memoria[10][3]~regout\ : std_logic;
SIGNAL \memoria[2][3]~regout\ : std_logic;
SIGNAL \QA~151\ : std_logic;
SIGNAL \memoria[6][3]~regout\ : std_logic;
SIGNAL \QB~151\ : std_logic;
SIGNAL \memoria[14][3]~regout\ : std_logic;
SIGNAL \QA~152\ : std_logic;
SIGNAL \QA~155_combout\ : std_logic;
SIGNAL \QA~158_combout\ : std_logic;
SIGNAL \QA~159_combout\ : std_logic;
SIGNAL \QA~170_combout\ : std_logic;
SIGNAL \QA~171_combout\ : std_logic;
SIGNAL \memoria[35][4]~regout\ : std_logic;
SIGNAL \memoria[39][4]~regout\ : std_logic;
SIGNAL \QB~203\ : std_logic;
SIGNAL \QA~203\ : std_logic;
SIGNAL \memoria[43][4]~regout\ : std_logic;
SIGNAL \memoria[47][4]~regout\ : std_logic;
SIGNAL \QA~204\ : std_logic;
SIGNAL \memoria[7][4]~regout\ : std_logic;
SIGNAL \memoria[3][4]~regout\ : std_logic;
SIGNAL \QA~207\ : std_logic;
SIGNAL \memoria[11][4]~regout\ : std_logic;
SIGNAL \QB~207\ : std_logic;
SIGNAL \memoria[15][4]~regout\ : std_logic;
SIGNAL \QA~208\ : std_logic;
SIGNAL \memoria[27][4]~regout\ : std_logic;
SIGNAL \memoria[19][4]~regout\ : std_logic;
SIGNAL \QA~205\ : std_logic;
SIGNAL \memoria[23][4]~regout\ : std_logic;
SIGNAL \QB~205\ : std_logic;
SIGNAL \memoria[31][4]~regout\ : std_logic;
SIGNAL \QA~206\ : std_logic;
SIGNAL \QA~209_combout\ : std_logic;
SIGNAL \memoria[59][4]~regout\ : std_logic;
SIGNAL \memoria[51][4]~regout\ : std_logic;
SIGNAL \QA~210\ : std_logic;
SIGNAL \memoria[55][4]~regout\ : std_logic;
SIGNAL \QB~210\ : std_logic;
SIGNAL \memoria[63][4]~regout\ : std_logic;
SIGNAL \QA~211\ : std_logic;
SIGNAL \QA~212_combout\ : std_logic;
SIGNAL \memoria[26][4]~regout\ : std_logic;
SIGNAL \memoria[10][4]~regout\ : std_logic;
SIGNAL \QA~184\ : std_logic;
SIGNAL \memoria[42][4]~regout\ : std_logic;
SIGNAL \QB~184\ : std_logic;
SIGNAL \memoria[58][4]~regout\ : std_logic;
SIGNAL \QA~185\ : std_logic;
SIGNAL \memoria[2][4]~regout\ : std_logic;
SIGNAL \memoria[18][4]~regout\ : std_logic;
SIGNAL \QB~186\ : std_logic;
SIGNAL \QA~186\ : std_logic;
SIGNAL \memoria[34][4]~regout\ : std_logic;
SIGNAL \memoria[50][4]~regout\ : std_logic;
SIGNAL \QA~187\ : std_logic;
SIGNAL \QA~188_combout\ : std_logic;
SIGNAL \memoria[38][4]~regout\ : std_logic;
SIGNAL \memoria[6][4]~regout\ : std_logic;
SIGNAL \QA~182\ : std_logic;
SIGNAL \QB~182\ : std_logic;
SIGNAL \memoria[22][4]~regout\ : std_logic;
SIGNAL \memoria[54][4]~regout\ : std_logic;
SIGNAL \QA~183\ : std_logic;
SIGNAL \memoria[46][4]~regout\ : std_logic;
SIGNAL \memoria[14][4]~regout\ : std_logic;
SIGNAL \QA~189\ : std_logic;
SIGNAL \memoria[30][4]~regout\ : std_logic;
SIGNAL \QB~189\ : std_logic;
SIGNAL \memoria[62][4]~regout\ : std_logic;
SIGNAL \QA~190\ : std_logic;
SIGNAL \QA~191_combout\ : std_logic;
SIGNAL \memoria[16][4]~regout\ : std_logic;
SIGNAL \memoria[0][4]~regout\ : std_logic;
SIGNAL \QA~196\ : std_logic;
SIGNAL \memoria[32][4]~regout\ : std_logic;
SIGNAL \QB~196\ : std_logic;
SIGNAL \memoria[48][4]~regout\ : std_logic;
SIGNAL \QA~197\ : std_logic;
SIGNAL \memoria[24][4]~regout\ : std_logic;
SIGNAL \memoria[8][4]~regout\ : std_logic;
SIGNAL \QA~194\ : std_logic;
SIGNAL \memoria[40][4]~regout\ : std_logic;
SIGNAL \QB~194\ : std_logic;
SIGNAL \memoria[56][4]~regout\ : std_logic;
SIGNAL \QA~195\ : std_logic;
SIGNAL \QA~198_combout\ : std_logic;
SIGNAL \memoria[36][4]~regout\ : std_logic;
SIGNAL \memoria[4][4]~regout\ : std_logic;
SIGNAL \QA~192\ : std_logic;
SIGNAL \memoria[20][4]~regout\ : std_logic;
SIGNAL \QB~192\ : std_logic;
SIGNAL \memoria[52][4]~regout\ : std_logic;
SIGNAL \QA~193\ : std_logic;
SIGNAL \memoria[44][4]~regout\ : std_logic;
SIGNAL \memoria[12][4]~regout\ : std_logic;
SIGNAL \QA~199\ : std_logic;
SIGNAL \memoria[28][4]~regout\ : std_logic;
SIGNAL \QB~199\ : std_logic;
SIGNAL \memoria[60][4]~regout\ : std_logic;
SIGNAL \QA~200\ : std_logic;
SIGNAL \QA~201_combout\ : std_logic;
SIGNAL \QA~202_combout\ : std_logic;
SIGNAL \memoria[17][4]~regout\ : std_logic;
SIGNAL \memoria[1][4]~regout\ : std_logic;
SIGNAL \QA~176\ : std_logic;
SIGNAL \memoria[33][4]~regout\ : std_logic;
SIGNAL \QB~176\ : std_logic;
SIGNAL \memoria[49][4]~regout\ : std_logic;
SIGNAL \QA~177\ : std_logic;
SIGNAL \memoria[5][4]~regout\ : std_logic;
SIGNAL \memoria[37][4]~regout\ : std_logic;
SIGNAL \QB~174\ : std_logic;
SIGNAL \QA~174\ : std_logic;
SIGNAL \memoria[21][4]~regout\ : std_logic;
SIGNAL \memoria[53][4]~regout\ : std_logic;
SIGNAL \QA~175\ : std_logic;
SIGNAL \QA~178_combout\ : std_logic;
SIGNAL \memoria[25][4]~regout\ : std_logic;
SIGNAL \memoria[9][4]~regout\ : std_logic;
SIGNAL \QA~172\ : std_logic;
SIGNAL \memoria[41][4]~regout\ : std_logic;
SIGNAL \QB~172\ : std_logic;
SIGNAL \memoria[57][4]~regout\ : std_logic;
SIGNAL \QA~173\ : std_logic;
SIGNAL \memoria[45][4]~regout\ : std_logic;
SIGNAL \memoria[13][4]~regout\ : std_logic;
SIGNAL \QA~179\ : std_logic;
SIGNAL \QB~179\ : std_logic;
SIGNAL \memoria[29][4]~regout\ : std_logic;
SIGNAL \memoria[61][4]~regout\ : std_logic;
SIGNAL \QA~180\ : std_logic;
SIGNAL \QA~181_combout\ : std_logic;
SIGNAL \QA~213_combout\ : std_logic;
SIGNAL \QA~214_combout\ : std_logic;
SIGNAL \memoria[49][5]~regout\ : std_logic;
SIGNAL \memoria[48][5]~regout\ : std_logic;
SIGNAL \QA~242\ : std_logic;
SIGNAL \memoria[50][5]~regout\ : std_logic;
SIGNAL \QB~242\ : std_logic;
SIGNAL \memoria[51][5]~regout\ : std_logic;
SIGNAL \QA~243\ : std_logic;
SIGNAL \memoria[17][5]~regout\ : std_logic;
SIGNAL \memoria[16][5]~regout\ : std_logic;
SIGNAL \QA~235\ : std_logic;
SIGNAL \memoria[18][5]~regout\ : std_logic;
SIGNAL \QB~235\ : std_logic;
SIGNAL \memoria[19][5]~regout\ : std_logic;
SIGNAL \QA~236\ : std_logic;
SIGNAL \memoria[34][5]~regout\ : std_logic;
SIGNAL \memoria[32][5]~regout\ : std_logic;
SIGNAL \QA~237\ : std_logic;
SIGNAL \memoria[33][5]~regout\ : std_logic;
SIGNAL \QB~237\ : std_logic;
SIGNAL \memoria[35][5]~regout\ : std_logic;
SIGNAL \QA~238\ : std_logic;
SIGNAL \memoria[2][5]~regout\ : std_logic;
SIGNAL \memoria[0][5]~regout\ : std_logic;
SIGNAL \QA~239\ : std_logic;
SIGNAL \memoria[1][5]~regout\ : std_logic;
SIGNAL \QB~239\ : std_logic;
SIGNAL \memoria[3][5]~regout\ : std_logic;
SIGNAL \QA~240\ : std_logic;
SIGNAL \QA~241_combout\ : std_logic;
SIGNAL \QA~244_combout\ : std_logic;
SIGNAL \memoria[8][5]~regout\ : std_logic;
SIGNAL \memoria[10][5]~regout\ : std_logic;
SIGNAL \QB~229\ : std_logic;
SIGNAL \QA~229\ : std_logic;
SIGNAL \memoria[9][5]~regout\ : std_logic;
SIGNAL \memoria[11][5]~regout\ : std_logic;
SIGNAL \QA~230\ : std_logic;
SIGNAL \memoria[42][5]~regout\ : std_logic;
SIGNAL \memoria[40][5]~regout\ : std_logic;
SIGNAL \QA~227\ : std_logic;
SIGNAL \memoria[41][5]~regout\ : std_logic;
SIGNAL \QB~227\ : std_logic;
SIGNAL \memoria[43][5]~regout\ : std_logic;
SIGNAL \QA~228\ : std_logic;
SIGNAL \QA~231_combout\ : std_logic;
SIGNAL \memoria[57][5]~regout\ : std_logic;
SIGNAL \memoria[56][5]~regout\ : std_logic;
SIGNAL \QA~232\ : std_logic;
SIGNAL \memoria[58][5]~regout\ : std_logic;
SIGNAL \QB~232\ : std_logic;
SIGNAL \memoria[59][5]~regout\ : std_logic;
SIGNAL \QA~233\ : std_logic;
SIGNAL \memoria[25][5]~regout\ : std_logic;
SIGNAL \memoria[24][5]~regout\ : std_logic;
SIGNAL \QA~225\ : std_logic;
SIGNAL \memoria[26][5]~regout\ : std_logic;
SIGNAL \QB~225\ : std_logic;
SIGNAL \memoria[27][5]~regout\ : std_logic;
SIGNAL \QA~226\ : std_logic;
SIGNAL \QA~234_combout\ : std_logic;
SIGNAL \QA~245_combout\ : std_logic;
SIGNAL \memoria[21][5]~regout\ : std_logic;
SIGNAL \memoria[20][5]~regout\ : std_logic;
SIGNAL \QA~217\ : std_logic;
SIGNAL \memoria[22][5]~regout\ : std_logic;
SIGNAL \QB~217\ : std_logic;
SIGNAL \memoria[23][5]~regout\ : std_logic;
SIGNAL \QA~218\ : std_logic;
SIGNAL \memoria[6][5]~regout\ : std_logic;
SIGNAL \memoria[4][5]~regout\ : std_logic;
SIGNAL \QA~219\ : std_logic;
SIGNAL \memoria[5][5]~regout\ : std_logic;
SIGNAL \QB~219\ : std_logic;
SIGNAL \memoria[7][5]~regout\ : std_logic;
SIGNAL \QA~220\ : std_logic;
SIGNAL \QA~221_combout\ : std_logic;
SIGNAL \memoria[53][5]~regout\ : std_logic;
SIGNAL \memoria[52][5]~regout\ : std_logic;
SIGNAL \QA~222\ : std_logic;
SIGNAL \memoria[54][5]~regout\ : std_logic;
SIGNAL \QB~222\ : std_logic;
SIGNAL \memoria[55][5]~regout\ : std_logic;
SIGNAL \QA~223\ : std_logic;
SIGNAL \memoria[36][5]~regout\ : std_logic;
SIGNAL \memoria[38][5]~regout\ : std_logic;
SIGNAL \QB~215\ : std_logic;
SIGNAL \QA~215\ : std_logic;
SIGNAL \memoria[37][5]~regout\ : std_logic;
SIGNAL \memoria[39][5]~regout\ : std_logic;
SIGNAL \QA~216\ : std_logic;
SIGNAL \QA~224_combout\ : std_logic;
SIGNAL \memoria[14][5]~regout\ : std_logic;
SIGNAL \memoria[30][5]~regout\ : std_logic;
SIGNAL \QB~248\ : std_logic;
SIGNAL \QA~248\ : std_logic;
SIGNAL \memoria[46][5]~regout\ : std_logic;
SIGNAL \memoria[62][5]~regout\ : std_logic;
SIGNAL \QA~249\ : std_logic;
SIGNAL \memoria[28][5]~regout\ : std_logic;
SIGNAL \memoria[12][5]~regout\ : std_logic;
SIGNAL \QA~250\ : std_logic;
SIGNAL \memoria[44][5]~regout\ : std_logic;
SIGNAL \QB~250\ : std_logic;
SIGNAL \memoria[60][5]~regout\ : std_logic;
SIGNAL \QA~251\ : std_logic;
SIGNAL \QA~252_combout\ : std_logic;
SIGNAL \memoria[45][5]~regout\ : std_logic;
SIGNAL \memoria[13][5]~regout\ : std_logic;
SIGNAL \QA~246\ : std_logic;
SIGNAL \memoria[29][5]~regout\ : std_logic;
SIGNAL \QB~246\ : std_logic;
SIGNAL \memoria[61][5]~regout\ : std_logic;
SIGNAL \QA~247\ : std_logic;
SIGNAL \memoria[47][5]~regout\ : std_logic;
SIGNAL \memoria[15][5]~regout\ : std_logic;
SIGNAL \QA~253\ : std_logic;
SIGNAL \memoria[31][5]~regout\ : std_logic;
SIGNAL \QB~253\ : std_logic;
SIGNAL \memoria[63][5]~regout\ : std_logic;
SIGNAL \QA~254\ : std_logic;
SIGNAL \QA~255_combout\ : std_logic;
SIGNAL \QA~256_combout\ : std_logic;
SIGNAL \QA~257_combout\ : std_logic;
SIGNAL \memoria[33][6]~regout\ : std_logic;
SIGNAL \memoria[32][6]~regout\ : std_logic;
SIGNAL \QA~262\ : std_logic;
SIGNAL \memoria[34][6]~regout\ : std_logic;
SIGNAL \QB~262\ : std_logic;
SIGNAL \memoria[35][6]~regout\ : std_logic;
SIGNAL \QA~263\ : std_logic;
SIGNAL \memoria[38][6]~regout\ : std_logic;
SIGNAL \memoria[36][6]~regout\ : std_logic;
SIGNAL \QA~260\ : std_logic;
SIGNAL \memoria[37][6]~regout\ : std_logic;
SIGNAL \QB~260\ : std_logic;
SIGNAL \memoria[39][6]~regout\ : std_logic;
SIGNAL \QA~261\ : std_logic;
SIGNAL \QA~264_combout\ : std_logic;
SIGNAL \memoria[41][6]~regout\ : std_logic;
SIGNAL \memoria[40][6]~regout\ : std_logic;
SIGNAL \QA~258\ : std_logic;
SIGNAL \memoria[42][6]~regout\ : std_logic;
SIGNAL \QB~258\ : std_logic;
SIGNAL \memoria[43][6]~regout\ : std_logic;
SIGNAL \QA~259\ : std_logic;
SIGNAL \memoria[46][6]~regout\ : std_logic;
SIGNAL \memoria[44][6]~regout\ : std_logic;
SIGNAL \QA~265\ : std_logic;
SIGNAL \memoria[45][6]~regout\ : std_logic;
SIGNAL \QB~265\ : std_logic;
SIGNAL \memoria[47][6]~regout\ : std_logic;
SIGNAL \QA~266\ : std_logic;
SIGNAL \QA~267_combout\ : std_logic;
SIGNAL \memoria[4][6]~regout\ : std_logic;
SIGNAL \memoria[0][6]~regout\ : std_logic;
SIGNAL \QA~282\ : std_logic;
SIGNAL \QB~282\ : std_logic;
SIGNAL \memoria[8][6]~regout\ : std_logic;
SIGNAL \memoria[12][6]~regout\ : std_logic;
SIGNAL \QA~283\ : std_logic;
SIGNAL \memoria[9][6]~regout\ : std_logic;
SIGNAL \memoria[1][6]~regout\ : std_logic;
SIGNAL \QA~280\ : std_logic;
SIGNAL \memoria[5][6]~regout\ : std_logic;
SIGNAL \QB~280\ : std_logic;
SIGNAL \memoria[13][6]~regout\ : std_logic;
SIGNAL \QA~281\ : std_logic;
SIGNAL \QA~284_combout\ : std_logic;
SIGNAL \memoria[6][6]~regout\ : std_logic;
SIGNAL \memoria[2][6]~regout\ : std_logic;
SIGNAL \QA~278\ : std_logic;
SIGNAL \memoria[10][6]~regout\ : std_logic;
SIGNAL \QB~278\ : std_logic;
SIGNAL \memoria[14][6]~regout\ : std_logic;
SIGNAL \QA~279\ : std_logic;
SIGNAL \memoria[3][6]~regout\ : std_logic;
SIGNAL \memoria[11][6]~regout\ : std_logic;
SIGNAL \QB~285\ : std_logic;
SIGNAL \QA~285\ : std_logic;
SIGNAL \memoria[7][6]~regout\ : std_logic;
SIGNAL \memoria[15][6]~regout\ : std_logic;
SIGNAL \QA~286\ : std_logic;
SIGNAL \QA~287_combout\ : std_logic;
SIGNAL \memoria[25][6]~regout\ : std_logic;
SIGNAL \memoria[17][6]~regout\ : std_logic;
SIGNAL \QA~268\ : std_logic;
SIGNAL \QB~268\ : std_logic;
SIGNAL \memoria[21][6]~regout\ : std_logic;
SIGNAL \memoria[29][6]~regout\ : std_logic;
SIGNAL \QA~269\ : std_logic;
SIGNAL \memoria[18][6]~regout\ : std_logic;
SIGNAL \memoria[22][6]~regout\ : std_logic;
SIGNAL \QB~270\ : std_logic;
SIGNAL \QA~270\ : std_logic;
SIGNAL \memoria[26][6]~regout\ : std_logic;
SIGNAL \memoria[30][6]~regout\ : std_logic;
SIGNAL \QA~271\ : std_logic;
SIGNAL \memoria[20][6]~regout\ : std_logic;
SIGNAL \memoria[16][6]~regout\ : std_logic;
SIGNAL \QA~272\ : std_logic;
SIGNAL \memoria[24][6]~regout\ : std_logic;
SIGNAL \QB~272\ : std_logic;
SIGNAL \memoria[28][6]~regout\ : std_logic;
SIGNAL \QA~273\ : std_logic;
SIGNAL \QA~274_combout\ : std_logic;
SIGNAL \memoria[19][6]~regout\ : std_logic;
SIGNAL \memoria[27][6]~regout\ : std_logic;
SIGNAL \QB~275\ : std_logic;
SIGNAL \QA~275\ : std_logic;
SIGNAL \memoria[23][6]~regout\ : std_logic;
SIGNAL \memoria[31][6]~regout\ : std_logic;
SIGNAL \QA~276\ : std_logic;
SIGNAL \QA~277_combout\ : std_logic;
SIGNAL \QA~288_combout\ : std_logic;
SIGNAL \memoria[51][6]~regout\ : std_logic;
SIGNAL \memoria[55][6]~regout\ : std_logic;
SIGNAL \QB~296\ : std_logic;
SIGNAL \QA~296\ : std_logic;
SIGNAL \memoria[59][6]~regout\ : std_logic;
SIGNAL \memoria[63][6]~regout\ : std_logic;
SIGNAL \QA~297\ : std_logic;
SIGNAL \memoria[50][6]~regout\ : std_logic;
SIGNAL \memoria[58][6]~regout\ : std_logic;
SIGNAL \QB~289\ : std_logic;
SIGNAL \QA~289\ : std_logic;
SIGNAL \memoria[54][6]~regout\ : std_logic;
SIGNAL \memoria[62][6]~regout\ : std_logic;
SIGNAL \QA~290\ : std_logic;
SIGNAL \memoria[56][6]~regout\ : std_logic;
SIGNAL \memoria[48][6]~regout\ : std_logic;
SIGNAL \QA~293\ : std_logic;
SIGNAL \memoria[52][6]~regout\ : std_logic;
SIGNAL \QB~293\ : std_logic;
SIGNAL \memoria[60][6]~regout\ : std_logic;
SIGNAL \QA~294\ : std_logic;
SIGNAL \memoria[53][6]~regout\ : std_logic;
SIGNAL \memoria[49][6]~regout\ : std_logic;
SIGNAL \QA~291\ : std_logic;
SIGNAL \QB~291\ : std_logic;
SIGNAL \memoria[57][6]~regout\ : std_logic;
SIGNAL \memoria[61][6]~regout\ : std_logic;
SIGNAL \QA~292\ : std_logic;
SIGNAL \QA~295_combout\ : std_logic;
SIGNAL \QA~298_combout\ : std_logic;
SIGNAL \QA~299_combout\ : std_logic;
SIGNAL \QA~300_combout\ : std_logic;
SIGNAL \memoria[39][7]~regout\ : std_logic;
SIGNAL \memoria[35][7]~regout\ : std_logic;
SIGNAL \QA~332\ : std_logic;
SIGNAL \memoria[43][7]~regout\ : std_logic;
SIGNAL \QB~332\ : std_logic;
SIGNAL \memoria[47][7]~regout\ : std_logic;
SIGNAL \QA~333\ : std_logic;
SIGNAL \memoria[19][7]~regout\ : std_logic;
SIGNAL \memoria[27][7]~regout\ : std_logic;
SIGNAL \QB~334\ : std_logic;
SIGNAL \QA~334\ : std_logic;
SIGNAL \memoria[23][7]~regout\ : std_logic;
SIGNAL \memoria[31][7]~regout\ : std_logic;
SIGNAL \QA~335\ : std_logic;
SIGNAL \memoria[7][7]~regout\ : std_logic;
SIGNAL \memoria[3][7]~regout\ : std_logic;
SIGNAL \QA~336\ : std_logic;
SIGNAL \memoria[11][7]~regout\ : std_logic;
SIGNAL \QB~336\ : std_logic;
SIGNAL \memoria[15][7]~regout\ : std_logic;
SIGNAL \QA~337\ : std_logic;
SIGNAL \QA~338_combout\ : std_logic;
SIGNAL \memoria[59][7]~regout\ : std_logic;
SIGNAL \memoria[51][7]~regout\ : std_logic;
SIGNAL \QA~339\ : std_logic;
SIGNAL \QB~339\ : std_logic;
SIGNAL \memoria[55][7]~regout\ : std_logic;
SIGNAL \memoria[63][7]~regout\ : std_logic;
SIGNAL \QA~340\ : std_logic;
SIGNAL \QA~341_combout\ : std_logic;
SIGNAL \memoria[6][7]~regout\ : std_logic;
SIGNAL \memoria[38][7]~regout\ : std_logic;
SIGNAL \QB~301\ : std_logic;
SIGNAL \QA~301\ : std_logic;
SIGNAL \memoria[22][7]~regout\ : std_logic;
SIGNAL \memoria[54][7]~regout\ : std_logic;
SIGNAL \QA~302\ : std_logic;
SIGNAL \memoria[18][7]~regout\ : std_logic;
SIGNAL \memoria[2][7]~regout\ : std_logic;
SIGNAL \QA~305\ : std_logic;
SIGNAL \QB~305\ : std_logic;
SIGNAL \memoria[34][7]~regout\ : std_logic;
SIGNAL \memoria[50][7]~regout\ : std_logic;
SIGNAL \QA~306\ : std_logic;
SIGNAL \memoria[26][7]~regout\ : std_logic;
SIGNAL \memoria[10][7]~regout\ : std_logic;
SIGNAL \QA~303\ : std_logic;
SIGNAL \QB~303\ : std_logic;
SIGNAL \memoria[42][7]~regout\ : std_logic;
SIGNAL \memoria[58][7]~regout\ : std_logic;
SIGNAL \QA~304\ : std_logic;
SIGNAL \QA~307_combout\ : std_logic;
SIGNAL \memoria[46][7]~regout\ : std_logic;
SIGNAL \memoria[14][7]~regout\ : std_logic;
SIGNAL \QA~308\ : std_logic;
SIGNAL \QB~308\ : std_logic;
SIGNAL \memoria[30][7]~regout\ : std_logic;
SIGNAL \memoria[62][7]~regout\ : std_logic;
SIGNAL \QA~309\ : std_logic;
SIGNAL \QA~310_combout\ : std_logic;
SIGNAL \memoria[24][7]~regout\ : std_logic;
SIGNAL \memoria[8][7]~regout\ : std_logic;
SIGNAL \QA~323\ : std_logic;
SIGNAL \QB~323\ : std_logic;
SIGNAL \memoria[40][7]~regout\ : std_logic;
SIGNAL \memoria[56][7]~regout\ : std_logic;
SIGNAL \QA~324\ : std_logic;
SIGNAL \memoria[16][7]~regout\ : std_logic;
SIGNAL \memoria[0][7]~regout\ : std_logic;
SIGNAL \QA~325\ : std_logic;
SIGNAL \memoria[32][7]~regout\ : std_logic;
SIGNAL \QB~325\ : std_logic;
SIGNAL \memoria[48][7]~regout\ : std_logic;
SIGNAL \QA~326\ : std_logic;
SIGNAL \QA~327_combout\ : std_logic;
SIGNAL \memoria[36][7]~regout\ : std_logic;
SIGNAL \memoria[4][7]~regout\ : std_logic;
SIGNAL \QA~321\ : std_logic;
SIGNAL \QB~321\ : std_logic;
SIGNAL \memoria[20][7]~regout\ : std_logic;
SIGNAL \memoria[52][7]~regout\ : std_logic;
SIGNAL \QA~322\ : std_logic;
SIGNAL \memoria[12][7]~regout\ : std_logic;
SIGNAL \memoria[44][7]~regout\ : std_logic;
SIGNAL \QB~328\ : std_logic;
SIGNAL \QA~328\ : std_logic;
SIGNAL \memoria[28][7]~regout\ : std_logic;
SIGNAL \memoria[60][7]~regout\ : std_logic;
SIGNAL \QA~329\ : std_logic;
SIGNAL \QA~330_combout\ : std_logic;
SIGNAL \memoria[25][7]~regout\ : std_logic;
SIGNAL \memoria[9][7]~regout\ : std_logic;
SIGNAL \QA~311\ : std_logic;
SIGNAL \QB~311\ : std_logic;
SIGNAL \memoria[41][7]~regout\ : std_logic;
SIGNAL \memoria[57][7]~regout\ : std_logic;
SIGNAL \QA~312\ : std_logic;
SIGNAL \memoria[5][7]~regout\ : std_logic;
SIGNAL \memoria[37][7]~regout\ : std_logic;
SIGNAL \QB~313\ : std_logic;
SIGNAL \QA~313\ : std_logic;
SIGNAL \memoria[21][7]~regout\ : std_logic;
SIGNAL \memoria[53][7]~regout\ : std_logic;
SIGNAL \QA~314\ : std_logic;
SIGNAL \memoria[17][7]~regout\ : std_logic;
SIGNAL \memoria[1][7]~regout\ : std_logic;
SIGNAL \QA~315\ : std_logic;
SIGNAL \memoria[33][7]~regout\ : std_logic;
SIGNAL \QB~315\ : std_logic;
SIGNAL \memoria[49][7]~regout\ : std_logic;
SIGNAL \QA~316\ : std_logic;
SIGNAL \QA~317_combout\ : std_logic;
SIGNAL \memoria[45][7]~regout\ : std_logic;
SIGNAL \memoria[13][7]~regout\ : std_logic;
SIGNAL \QA~318\ : std_logic;
SIGNAL \memoria[29][7]~regout\ : std_logic;
SIGNAL \QB~318\ : std_logic;
SIGNAL \memoria[61][7]~regout\ : std_logic;
SIGNAL \QA~319\ : std_logic;
SIGNAL \QA~320_combout\ : std_logic;
SIGNAL \QA~331_combout\ : std_logic;
SIGNAL \QA~342_combout\ : std_logic;
SIGNAL \QA~343_combout\ : std_logic;
SIGNAL \readB~combout\ : std_logic;
SIGNAL \QB~36\ : std_logic;
SIGNAL \QB~34\ : std_logic;
SIGNAL \QB~37_combout\ : std_logic;
SIGNAL \QB~39\ : std_logic;
SIGNAL \QB~32\ : std_logic;
SIGNAL \QB~40_combout\ : std_logic;
SIGNAL \QB~28\ : std_logic;
SIGNAL \QB~25\ : std_logic;
SIGNAL \QB~23\ : std_logic;
SIGNAL \QB~26_combout\ : std_logic;
SIGNAL \QB~21\ : std_logic;
SIGNAL \QB~29_combout\ : std_logic;
SIGNAL \QB~18\ : std_logic;
SIGNAL \QB~11\ : std_logic;
SIGNAL \QB~15\ : std_logic;
SIGNAL \QB~13\ : std_logic;
SIGNAL \QB~16_combout\ : std_logic;
SIGNAL \QB~19_combout\ : std_logic;
SIGNAL \QB~30_combout\ : std_logic;
SIGNAL \QB~1\ : std_logic;
SIGNAL \QB~5\ : std_logic;
SIGNAL \QB~3\ : std_logic;
SIGNAL \QB~6_combout\ : std_logic;
SIGNAL \QB~8\ : std_logic;
SIGNAL \QB~9_combout\ : std_logic;
SIGNAL \QB~41_combout\ : std_logic;
SIGNAL \QB~42_combout\ : std_logic;
SIGNAL \QB~82\ : std_logic;
SIGNAL \QB~79\ : std_logic;
SIGNAL \QB~77\ : std_logic;
SIGNAL \QB~80_combout\ : std_logic;
SIGNAL \QB~75\ : std_logic;
SIGNAL \QB~83_combout\ : std_logic;
SIGNAL \QB~66\ : std_logic;
SIGNAL \QB~68\ : std_logic;
SIGNAL \QB~69_combout\ : std_logic;
SIGNAL \QB~64\ : std_logic;
SIGNAL \QB~71\ : std_logic;
SIGNAL \QB~72_combout\ : std_logic;
SIGNAL \QB~61\ : std_logic;
SIGNAL \QB~54\ : std_logic;
SIGNAL \QB~56\ : std_logic;
SIGNAL \QB~58\ : std_logic;
SIGNAL \QB~59_combout\ : std_logic;
SIGNAL \QB~62_combout\ : std_logic;
SIGNAL \QB~73_combout\ : std_logic;
SIGNAL \QB~51\ : std_logic;
SIGNAL \QB~46\ : std_logic;
SIGNAL \QB~48\ : std_logic;
SIGNAL \QB~49_combout\ : std_logic;
SIGNAL \QB~44\ : std_logic;
SIGNAL \QB~52_combout\ : std_logic;
SIGNAL \QB~84_combout\ : std_logic;
SIGNAL \QB~85_combout\ : std_logic;
SIGNAL \QB~99\ : std_logic;
SIGNAL \QB~101\ : std_logic;
SIGNAL \QB~102_combout\ : std_logic;
SIGNAL \QB~97\ : std_logic;
SIGNAL \QB~104\ : std_logic;
SIGNAL \QB~105_combout\ : std_logic;
SIGNAL \QB~107\ : std_logic;
SIGNAL \QB~109\ : std_logic;
SIGNAL \QB~111\ : std_logic;
SIGNAL \QB~112_combout\ : std_logic;
SIGNAL \QB~114\ : std_logic;
SIGNAL \QB~115_combout\ : std_logic;
SIGNAL \QB~116_combout\ : std_logic;
SIGNAL \QB~94\ : std_logic;
SIGNAL \QB~87\ : std_logic;
SIGNAL \QB~89\ : std_logic;
SIGNAL \QB~91\ : std_logic;
SIGNAL \QB~92_combout\ : std_logic;
SIGNAL \QB~95_combout\ : std_logic;
SIGNAL \QB~122\ : std_logic;
SIGNAL \QB~120\ : std_logic;
SIGNAL \QB~123_combout\ : std_logic;
SIGNAL \QB~118\ : std_logic;
SIGNAL \QB~125\ : std_logic;
SIGNAL \QB~126_combout\ : std_logic;
SIGNAL \QB~127_combout\ : std_logic;
SIGNAL \QB~128_combout\ : std_logic;
SIGNAL \QB~150\ : std_logic;
SIGNAL \QB~152\ : std_logic;
SIGNAL \QB~154\ : std_logic;
SIGNAL \QB~155_combout\ : std_logic;
SIGNAL \QB~157\ : std_logic;
SIGNAL \QB~158_combout\ : std_logic;
SIGNAL \QB~147\ : std_logic;
SIGNAL \QB~140\ : std_logic;
SIGNAL \QB~142\ : std_logic;
SIGNAL \QB~144\ : std_logic;
SIGNAL \QB~145_combout\ : std_logic;
SIGNAL \QB~148_combout\ : std_logic;
SIGNAL \QB~159_combout\ : std_logic;
SIGNAL \QB~168\ : std_logic;
SIGNAL \QB~161\ : std_logic;
SIGNAL \QB~165\ : std_logic;
SIGNAL \QB~163\ : std_logic;
SIGNAL \QB~166_combout\ : std_logic;
SIGNAL \QB~169_combout\ : std_logic;
SIGNAL \QB~137\ : std_logic;
SIGNAL \QB~132\ : std_logic;
SIGNAL \QB~134\ : std_logic;
SIGNAL \QB~135_combout\ : std_logic;
SIGNAL \QB~130\ : std_logic;
SIGNAL \QB~138_combout\ : std_logic;
SIGNAL \QB~170_combout\ : std_logic;
SIGNAL \QB~171_combout\ : std_logic;
SIGNAL \QB~193\ : std_logic;
SIGNAL \QB~195\ : std_logic;
SIGNAL \QB~197\ : std_logic;
SIGNAL \QB~198_combout\ : std_logic;
SIGNAL \QB~200\ : std_logic;
SIGNAL \QB~201_combout\ : std_logic;
SIGNAL \QB~183\ : std_logic;
SIGNAL \QB~187\ : std_logic;
SIGNAL \QB~185\ : std_logic;
SIGNAL \QB~188_combout\ : std_logic;
SIGNAL \QB~190\ : std_logic;
SIGNAL \QB~191_combout\ : std_logic;
SIGNAL \QB~202_combout\ : std_logic;
SIGNAL \QB~206\ : std_logic;
SIGNAL \QB~208\ : std_logic;
SIGNAL \QB~209_combout\ : std_logic;
SIGNAL \QB~211\ : std_logic;
SIGNAL \QB~204\ : std_logic;
SIGNAL \QB~212_combout\ : std_logic;
SIGNAL \QB~173\ : std_logic;
SIGNAL \QB~180\ : std_logic;
SIGNAL \QB~175\ : std_logic;
SIGNAL \QB~177\ : std_logic;
SIGNAL \QB~178_combout\ : std_logic;
SIGNAL \QB~181_combout\ : std_logic;
SIGNAL \QB~213_combout\ : std_logic;
SIGNAL \QB~214_combout\ : std_logic;
SIGNAL \QB~218\ : std_logic;
SIGNAL \QB~220\ : std_logic;
SIGNAL \QB~221_combout\ : std_logic;
SIGNAL \QB~216\ : std_logic;
SIGNAL \QB~223\ : std_logic;
SIGNAL \QB~224_combout\ : std_logic;
SIGNAL \QB~254\ : std_logic;
SIGNAL \QB~249\ : std_logic;
SIGNAL \QB~251\ : std_logic;
SIGNAL \QB~252_combout\ : std_logic;
SIGNAL \QB~247\ : std_logic;
SIGNAL \QB~255_combout\ : std_logic;
SIGNAL \QB~233\ : std_logic;
SIGNAL \QB~226\ : std_logic;
SIGNAL \QB~228\ : std_logic;
SIGNAL \QB~230\ : std_logic;
SIGNAL \QB~231_combout\ : std_logic;
SIGNAL \QB~234_combout\ : std_logic;
SIGNAL \QB~238\ : std_logic;
SIGNAL \QB~240\ : std_logic;
SIGNAL \QB~241_combout\ : std_logic;
SIGNAL \QB~236\ : std_logic;
SIGNAL \QB~243\ : std_logic;
SIGNAL \QB~244_combout\ : std_logic;
SIGNAL \QB~245_combout\ : std_logic;
SIGNAL \QB~256_combout\ : std_logic;
SIGNAL \QB~257_combout\ : std_logic;
SIGNAL \QB~294\ : std_logic;
SIGNAL \QB~292\ : std_logic;
SIGNAL \QB~295_combout\ : std_logic;
SIGNAL \QB~297\ : std_logic;
SIGNAL \QB~290\ : std_logic;
SIGNAL \QB~298_combout\ : std_logic;
SIGNAL \QB~269\ : std_logic;
SIGNAL \QB~273\ : std_logic;
SIGNAL \QB~271\ : std_logic;
SIGNAL \QB~274_combout\ : std_logic;
SIGNAL \QB~276\ : std_logic;
SIGNAL \QB~277_combout\ : std_logic;
SIGNAL \QB~286\ : std_logic;
SIGNAL \QB~281\ : std_logic;
SIGNAL \QB~283\ : std_logic;
SIGNAL \QB~284_combout\ : std_logic;
SIGNAL \QB~279\ : std_logic;
SIGNAL \QB~287_combout\ : std_logic;
SIGNAL \QB~288_combout\ : std_logic;
SIGNAL \QB~263\ : std_logic;
SIGNAL \QB~261\ : std_logic;
SIGNAL \QB~264_combout\ : std_logic;
SIGNAL \QB~266\ : std_logic;
SIGNAL \QB~259\ : std_logic;
SIGNAL \QB~267_combout\ : std_logic;
SIGNAL \QB~299_combout\ : std_logic;
SIGNAL \QB~300_combout\ : std_logic;
SIGNAL \QB~309\ : std_logic;
SIGNAL \QB~306\ : std_logic;
SIGNAL \QB~304\ : std_logic;
SIGNAL \QB~307_combout\ : std_logic;
SIGNAL \QB~302\ : std_logic;
SIGNAL \QB~310_combout\ : std_logic;
SIGNAL \QB~340\ : std_logic;
SIGNAL \QB~333\ : std_logic;
SIGNAL \QB~335\ : std_logic;
SIGNAL \QB~337\ : std_logic;
SIGNAL \QB~338_combout\ : std_logic;
SIGNAL \QB~341_combout\ : std_logic;
SIGNAL \QB~324\ : std_logic;
SIGNAL \QB~326\ : std_logic;
SIGNAL \QB~327_combout\ : std_logic;
SIGNAL \QB~329\ : std_logic;
SIGNAL \QB~322\ : std_logic;
SIGNAL \QB~330_combout\ : std_logic;
SIGNAL \QB~319\ : std_logic;
SIGNAL \QB~314\ : std_logic;
SIGNAL \QB~316\ : std_logic;
SIGNAL \QB~317_combout\ : std_logic;
SIGNAL \QB~312\ : std_logic;
SIGNAL \QB~320_combout\ : std_logic;
SIGNAL \QB~331_combout\ : std_logic;
SIGNAL \QB~342_combout\ : std_logic;
SIGNAL \QB~343_combout\ : std_logic;
SIGNAL \RA~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \RB~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \WD~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \WAddr~combout\ : std_logic_vector(5 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_WD <= WD;
ww_WWrite <= WWrite;
ww_WAddr <= WAddr;
ww_reset <= reset;
ww_RA <= RA;
ww_readA <= readA;
ww_RB <= RB;
ww_readB <= readB;
QA <= ww_QA;
QB <= ww_QB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_N8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RA[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RA(1),
	combout => \RA~combout\(1));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WD[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_WD(0),
	combout => \WD~combout\(0));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RA[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RA(0),
	combout => \RA~combout\(0));

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WAddr[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_WAddr(4),
	combout => \WAddr~combout\(4));

-- Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WAddr[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_WAddr(3),
	combout => \WAddr~combout\(3));

-- Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WAddr[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_WAddr(5),
	combout => \WAddr~combout\(5));

-- Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WAddr[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_WAddr(0),
	combout => \WAddr~combout\(0));

-- Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WAddr[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_WAddr(1),
	combout => \WAddr~combout\(1));

-- Location: PIN_M11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WWrite~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_WWrite,
	combout => \WWrite~combout\);

-- Location: PIN_P10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WAddr[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_WAddr(2),
	combout => \WAddr~combout\(2));

-- Location: LC_X14_Y3_N5
\Decoder0~0\ : maxv_lcell
-- Equation(s):
-- \Decoder0~0_combout\ = (\WAddr~combout\(0) & (!\WAddr~combout\(1) & (\WWrite~combout\ & \WAddr~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(0),
	datab => \WAddr~combout\(1),
	datac => \WWrite~combout\,
	datad => \WAddr~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~0_combout\);

-- Location: LC_X14_Y6_N3
\Decoder0~25\ : maxv_lcell
-- Equation(s):
-- \Decoder0~25_combout\ = (\WAddr~combout\(4) & (!\WAddr~combout\(3) & (!\WAddr~combout\(5) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(4),
	datab => \WAddr~combout\(3),
	datac => \WAddr~combout\(5),
	datad => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~25_combout\);

-- Location: LC_X4_Y11_N6
\memoria[21][0]\ : maxv_lcell
-- Equation(s):
-- \QA~10\ = (\RA~combout\(1) & (((\RA~combout\(0))))) # (!\RA~combout\(1) & ((\RA~combout\(0) & ((memoria[21][0]))) # (!\RA~combout\(0) & (\memoria[20][0]~regout\))))
-- \memoria[21][0]~regout\ = DFFEAS(\QA~10\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~25_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(1),
	datab => \memoria[20][0]~regout\,
	datac => \WD~combout\(0),
	datad => \RA~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~10\,
	regout => \memoria[21][0]~regout\);

-- Location: PIN_L14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RB[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RB(1),
	combout => \RB~combout\(1));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RB[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RB(0),
	combout => \RB~combout\(0));

-- Location: LC_X14_Y3_N0
\Decoder0~14\ : maxv_lcell
-- Equation(s):
-- \Decoder0~14_combout\ = (!\WAddr~combout\(0) & (!\WAddr~combout\(1) & (\WWrite~combout\ & \WAddr~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(0),
	datab => \WAddr~combout\(1),
	datac => \WWrite~combout\,
	datad => \WAddr~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~14_combout\);

-- Location: LC_X10_Y8_N9
\Decoder0~26\ : maxv_lcell
-- Equation(s):
-- \Decoder0~26_combout\ = (!\WAddr~combout\(3) & (\WAddr~combout\(4) & (!\WAddr~combout\(5) & \Decoder0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(3),
	datab => \WAddr~combout\(4),
	datac => \WAddr~combout\(5),
	datad => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~26_combout\);

-- Location: LC_X4_Y11_N9
\memoria[20][0]\ : maxv_lcell
-- Equation(s):
-- \QB~10\ = (\RB~combout\(1) & (((\RB~combout\(0))))) # (!\RB~combout\(1) & ((\RB~combout\(0) & (\memoria[21][0]~regout\)) # (!\RB~combout\(0) & ((memoria[20][0])))))
-- \memoria[20][0]~regout\ = DFFEAS(\QB~10\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~26_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[21][0]~regout\,
	datab => \RB~combout\(1),
	datac => \WD~combout\(0),
	datad => \RB~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~10\,
	regout => \memoria[20][0]~regout\);

-- Location: LC_X14_Y3_N6
\Decoder0~8\ : maxv_lcell
-- Equation(s):
-- \Decoder0~8_combout\ = (!\WAddr~combout\(0) & (\WAddr~combout\(1) & (\WWrite~combout\ & \WAddr~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(0),
	datab => \WAddr~combout\(1),
	datac => \WWrite~combout\,
	datad => \WAddr~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~8_combout\);

-- Location: LC_X9_Y4_N4
\Decoder0~24\ : maxv_lcell
-- Equation(s):
-- \Decoder0~24_combout\ = (\WAddr~combout\(4) & (!\WAddr~combout\(5) & (!\WAddr~combout\(3) & \Decoder0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(4),
	datab => \WAddr~combout\(5),
	datac => \WAddr~combout\(3),
	datad => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~24_combout\);

-- Location: LC_X4_Y8_N0
\memoria[22][0]\ : maxv_lcell
-- Equation(s):
-- \QA~11\ = (\RA~combout\(1) & ((\QA~10\ & ((\memoria[23][0]~regout\))) # (!\QA~10\ & (memoria[22][0])))) # (!\RA~combout\(1) & (\QA~10\))
-- \memoria[22][0]~regout\ = DFFEAS(\QA~11\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~24_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(1),
	datab => \QA~10\,
	datac => \WD~combout\(0),
	datad => \memoria[23][0]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~11\,
	regout => \memoria[22][0]~regout\);

-- Location: LC_X14_Y3_N2
\Decoder0~18\ : maxv_lcell
-- Equation(s):
-- \Decoder0~18_combout\ = (\WAddr~combout\(0) & (\WAddr~combout\(1) & (\WWrite~combout\ & \WAddr~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(0),
	datab => \WAddr~combout\(1),
	datac => \WWrite~combout\,
	datad => \WAddr~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~18_combout\);

-- Location: LC_X15_Y10_N8
\Decoder0~27\ : maxv_lcell
-- Equation(s):
-- \Decoder0~27_combout\ = (\WAddr~combout\(4) & (!\WAddr~combout\(3) & (\Decoder0~18_combout\ & !\WAddr~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(4),
	datab => \WAddr~combout\(3),
	datac => \Decoder0~18_combout\,
	datad => \WAddr~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~27_combout\);

-- Location: LC_X4_Y8_N8
\memoria[23][0]\ : maxv_lcell
-- Equation(s):
-- \QB~11\ = (\RB~combout\(1) & ((\QB~10\ & ((memoria[23][0]))) # (!\QB~10\ & (\memoria[22][0]~regout\)))) # (!\RB~combout\(1) & (((\QB~10\))))
-- \memoria[23][0]~regout\ = DFFEAS(\QB~11\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~27_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(1),
	datab => \memoria[22][0]~regout\,
	datac => \WD~combout\(0),
	datad => \QB~10\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~11\,
	regout => \memoria[23][0]~regout\);

-- Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RA[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RA(2),
	combout => \RA~combout\(2));

-- Location: LC_X15_Y6_N7
\Decoder0~37\ : maxv_lcell
-- Equation(s):
-- \Decoder0~37_combout\ = (\WAddr~combout\(3) & (\WAddr~combout\(4) & (!\WAddr~combout\(5) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(3),
	datab => \WAddr~combout\(4),
	datac => \WAddr~combout\(5),
	datad => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~37_combout\);

-- Location: LC_X3_Y7_N4
\memoria[29][0]\ : maxv_lcell
-- Equation(s):
-- \QA~17\ = (\RA~combout\(0) & (((memoria[29][0]) # (\RA~combout\(1))))) # (!\RA~combout\(0) & (\memoria[28][0]~regout\ & ((!\RA~combout\(1)))))
-- \memoria[29][0]~regout\ = DFFEAS(\QA~17\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~37_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(0),
	datab => \memoria[28][0]~regout\,
	datac => \WD~combout\(0),
	datad => \RA~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~17\,
	regout => \memoria[29][0]~regout\);

-- Location: LC_X10_Y8_N7
\Decoder0~38\ : maxv_lcell
-- Equation(s):
-- \Decoder0~38_combout\ = (\WAddr~combout\(3) & (\WAddr~combout\(4) & (!\WAddr~combout\(5) & \Decoder0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(3),
	datab => \WAddr~combout\(4),
	datac => \WAddr~combout\(5),
	datad => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~38_combout\);

-- Location: LC_X3_Y7_N7
\memoria[28][0]\ : maxv_lcell
-- Equation(s):
-- \QB~17\ = (\RB~combout\(1) & (((\RB~combout\(0))))) # (!\RB~combout\(1) & ((\RB~combout\(0) & (\memoria[29][0]~regout\)) # (!\RB~combout\(0) & ((memoria[28][0])))))
-- \memoria[28][0]~regout\ = DFFEAS(\QB~17\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~38_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[29][0]~regout\,
	datab => \RB~combout\(1),
	datac => \WD~combout\(0),
	datad => \RB~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~17\,
	regout => \memoria[28][0]~regout\);

-- Location: LC_X9_Y6_N4
\Decoder0~36\ : maxv_lcell
-- Equation(s):
-- \Decoder0~36_combout\ = (\WAddr~combout\(4) & (\WAddr~combout\(3) & (\Decoder0~8_combout\ & !\WAddr~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(4),
	datab => \WAddr~combout\(3),
	datac => \Decoder0~8_combout\,
	datad => \WAddr~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~36_combout\);

-- Location: LC_X4_Y7_N2
\memoria[30][0]\ : maxv_lcell
-- Equation(s):
-- \QA~18\ = (\RA~combout\(1) & ((\QA~17\ & (\memoria[31][0]~regout\)) # (!\QA~17\ & ((memoria[30][0]))))) # (!\RA~combout\(1) & (((\QA~17\))))
-- \memoria[30][0]~regout\ = DFFEAS(\QA~18\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~36_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(1),
	datab => \memoria[31][0]~regout\,
	datac => \WD~combout\(0),
	datad => \QA~17\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~18\,
	regout => \memoria[30][0]~regout\);

-- Location: LC_X13_Y4_N9
\Decoder0~39\ : maxv_lcell
-- Equation(s):
-- \Decoder0~39_combout\ = (\WAddr~combout\(3) & (\WAddr~combout\(4) & (!\WAddr~combout\(5) & \Decoder0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(3),
	datab => \WAddr~combout\(4),
	datac => \WAddr~combout\(5),
	datad => \Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~39_combout\);

-- Location: LC_X4_Y7_N0
\memoria[31][0]\ : maxv_lcell
-- Equation(s):
-- \QB~18\ = (\RB~combout\(1) & ((\QB~17\ & ((memoria[31][0]))) # (!\QB~17\ & (\memoria[30][0]~regout\)))) # (!\RB~combout\(1) & (((\QB~17\))))
-- \memoria[31][0]~regout\ = DFFEAS(\QB~18\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~39_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(1),
	datab => \memoria[30][0]~regout\,
	datac => \WD~combout\(0),
	datad => \QB~17\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~18\,
	regout => \memoria[31][0]~regout\);

-- Location: LC_X14_Y3_N3
\Decoder0~12\ : maxv_lcell
-- Equation(s):
-- \Decoder0~12_combout\ = (!\WAddr~combout\(0) & (!\WAddr~combout\(1) & (\WWrite~combout\ & !\WAddr~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(0),
	datab => \WAddr~combout\(1),
	datac => \WWrite~combout\,
	datad => \WAddr~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~12_combout\);

-- Location: LC_X9_Y8_N4
\Decoder0~30\ : maxv_lcell
-- Equation(s):
-- \Decoder0~30_combout\ = (\Decoder0~12_combout\ & (\WAddr~combout\(3) & (\WAddr~combout\(4) & !\WAddr~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~12_combout\,
	datab => \WAddr~combout\(3),
	datac => \WAddr~combout\(4),
	datad => \WAddr~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~30_combout\);

-- Location: LC_X19_Y10_N6
\memoria[24][0]\ : maxv_lcell
-- Equation(s):
-- \QB~12\ = (\RB~combout\(1) & ((\memoria[26][0]~regout\) # ((\RB~combout\(0))))) # (!\RB~combout\(1) & (((memoria[24][0] & !\RB~combout\(0)))))
-- \memoria[24][0]~regout\ = DFFEAS(\QB~12\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~30_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(1),
	datab => \memoria[26][0]~regout\,
	datac => \WD~combout\(0),
	datad => \RB~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~12\,
	regout => \memoria[24][0]~regout\);

-- Location: LC_X14_Y3_N7
\Decoder0~6\ : maxv_lcell
-- Equation(s):
-- \Decoder0~6_combout\ = (!\WAddr~combout\(0) & (\WAddr~combout\(1) & (\WWrite~combout\ & !\WAddr~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(0),
	datab => \WAddr~combout\(1),
	datac => \WWrite~combout\,
	datad => \WAddr~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~6_combout\);

-- Location: LC_X10_Y4_N5
\Decoder0~29\ : maxv_lcell
-- Equation(s):
-- \Decoder0~29_combout\ = (!\WAddr~combout\(5) & (\WAddr~combout\(3) & (\WAddr~combout\(4) & \Decoder0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(5),
	datab => \WAddr~combout\(3),
	datac => \WAddr~combout\(4),
	datad => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~29_combout\);

-- Location: LC_X19_Y10_N9
\memoria[26][0]\ : maxv_lcell
-- Equation(s):
-- \QA~12\ = (\RA~combout\(0) & (((\RA~combout\(1))))) # (!\RA~combout\(0) & ((\RA~combout\(1) & ((memoria[26][0]))) # (!\RA~combout\(1) & (\memoria[24][0]~regout\))))
-- \memoria[26][0]~regout\ = DFFEAS(\QA~12\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~29_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[24][0]~regout\,
	datab => \RA~combout\(0),
	datac => \WD~combout\(0),
	datad => \RA~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~12\,
	regout => \memoria[26][0]~regout\);

-- Location: LC_X14_Y3_N8
\Decoder0~2\ : maxv_lcell
-- Equation(s):
-- \Decoder0~2_combout\ = (\WAddr~combout\(0) & (!\WAddr~combout\(1) & (\WWrite~combout\ & !\WAddr~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(0),
	datab => \WAddr~combout\(1),
	datac => \WWrite~combout\,
	datad => \WAddr~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~2_combout\);

-- Location: LC_X17_Y9_N7
\Decoder0~28\ : maxv_lcell
-- Equation(s):
-- \Decoder0~28_combout\ = (\WAddr~combout\(4) & (\WAddr~combout\(3) & (!\WAddr~combout\(5) & \Decoder0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(4),
	datab => \WAddr~combout\(3),
	datac => \WAddr~combout\(5),
	datad => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~28_combout\);

-- Location: LC_X11_Y8_N7
\memoria[25][0]\ : maxv_lcell
-- Equation(s):
-- \QA~13\ = (\RA~combout\(0) & ((\QA~12\ & (\memoria[27][0]~regout\)) # (!\QA~12\ & ((memoria[25][0]))))) # (!\RA~combout\(0) & (((\QA~12\))))
-- \memoria[25][0]~regout\ = DFFEAS(\QA~13\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~28_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[27][0]~regout\,
	datab => \RA~combout\(0),
	datac => \WD~combout\(0),
	datad => \QA~12\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~13\,
	regout => \memoria[25][0]~regout\);

-- Location: LC_X14_Y3_N1
\Decoder0~20\ : maxv_lcell
-- Equation(s):
-- \Decoder0~20_combout\ = (\WAddr~combout\(0) & (\WAddr~combout\(1) & (\WWrite~combout\ & !\WAddr~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(0),
	datab => \WAddr~combout\(1),
	datac => \WWrite~combout\,
	datad => \WAddr~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~20_combout\);

-- Location: LC_X10_Y5_N8
\Decoder0~31\ : maxv_lcell
-- Equation(s):
-- \Decoder0~31_combout\ = (\Decoder0~20_combout\ & (\WAddr~combout\(3) & (!\WAddr~combout\(5) & \WAddr~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~20_combout\,
	datab => \WAddr~combout\(3),
	datac => \WAddr~combout\(5),
	datad => \WAddr~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~31_combout\);

-- Location: LC_X11_Y8_N3
\memoria[27][0]\ : maxv_lcell
-- Equation(s):
-- \QB~13\ = (\QB~12\ & (((memoria[27][0]) # (!\RB~combout\(0))))) # (!\QB~12\ & (\memoria[25][0]~regout\ & ((\RB~combout\(0)))))
-- \memoria[27][0]~regout\ = DFFEAS(\QB~13\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~31_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QB~12\,
	datab => \memoria[25][0]~regout\,
	datac => \WD~combout\(0),
	datad => \RB~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~13\,
	regout => \memoria[27][0]~regout\);

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RA[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RA(3),
	combout => \RA~combout\(3));

-- Location: LC_X10_Y4_N7
\Decoder0~33\ : maxv_lcell
-- Equation(s):
-- \Decoder0~33_combout\ = (!\WAddr~combout\(5) & (!\WAddr~combout\(3) & (\WAddr~combout\(4) & \Decoder0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(5),
	datab => \WAddr~combout\(3),
	datac => \WAddr~combout\(4),
	datad => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~33_combout\);

-- Location: LC_X7_Y8_N6
\memoria[18][0]\ : maxv_lcell
-- Equation(s):
-- \QA~14\ = (\RA~combout\(0) & (((\RA~combout\(1))))) # (!\RA~combout\(0) & ((\RA~combout\(1) & ((memoria[18][0]))) # (!\RA~combout\(1) & (\memoria[16][0]~regout\))))
-- \memoria[18][0]~regout\ = DFFEAS(\QA~14\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~33_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(0),
	datab => \memoria[16][0]~regout\,
	datac => \WD~combout\(0),
	datad => \RA~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~14\,
	regout => \memoria[18][0]~regout\);

-- Location: LC_X8_Y9_N9
\Decoder0~34\ : maxv_lcell
-- Equation(s):
-- \Decoder0~34_combout\ = (\WAddr~combout\(4) & (!\WAddr~combout\(3) & (!\WAddr~combout\(5) & \Decoder0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(4),
	datab => \WAddr~combout\(3),
	datac => \WAddr~combout\(5),
	datad => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~34_combout\);

-- Location: LC_X6_Y8_N9
\memoria[16][0]\ : maxv_lcell
-- Equation(s):
-- \QB~14\ = (\RB~combout\(1) & ((\memoria[18][0]~regout\) # ((\RB~combout\(0))))) # (!\RB~combout\(1) & (((memoria[16][0] & !\RB~combout\(0)))))
-- \memoria[16][0]~regout\ = DFFEAS(\QB~14\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~34_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(1),
	datab => \memoria[18][0]~regout\,
	datac => \WD~combout\(0),
	datad => \RB~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~14\,
	regout => \memoria[16][0]~regout\);

-- Location: LC_X15_Y6_N6
\Decoder0~32\ : maxv_lcell
-- Equation(s):
-- \Decoder0~32_combout\ = (!\WAddr~combout\(3) & (\WAddr~combout\(4) & (!\WAddr~combout\(5) & \Decoder0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(3),
	datab => \WAddr~combout\(4),
	datac => \WAddr~combout\(5),
	datad => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~32_combout\);

-- Location: LC_X6_Y8_N2
\memoria[17][0]\ : maxv_lcell
-- Equation(s):
-- \QA~15\ = (\QA~14\ & (((\memoria[19][0]~regout\)) # (!\RA~combout\(0)))) # (!\QA~14\ & (\RA~combout\(0) & (memoria[17][0])))
-- \memoria[17][0]~regout\ = DFFEAS(\QA~15\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~32_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QA~14\,
	datab => \RA~combout\(0),
	datac => \WD~combout\(0),
	datad => \memoria[19][0]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~15\,
	regout => \memoria[17][0]~regout\);

-- Location: LC_X10_Y5_N0
\Decoder0~35\ : maxv_lcell
-- Equation(s):
-- \Decoder0~35_combout\ = (\Decoder0~20_combout\ & (!\WAddr~combout\(3) & (!\WAddr~combout\(5) & \WAddr~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~20_combout\,
	datab => \WAddr~combout\(3),
	datac => \WAddr~combout\(5),
	datad => \WAddr~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~35_combout\);

-- Location: LC_X7_Y8_N7
\memoria[19][0]\ : maxv_lcell
-- Equation(s):
-- \QB~15\ = (\QB~14\ & (((memoria[19][0]) # (!\RB~combout\(0))))) # (!\QB~14\ & (\memoria[17][0]~regout\ & ((\RB~combout\(0)))))
-- \memoria[19][0]~regout\ = DFFEAS(\QB~15\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~35_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QB~14\,
	datab => \memoria[17][0]~regout\,
	datac => \WD~combout\(0),
	datad => \RB~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~15\,
	regout => \memoria[19][0]~regout\);

-- Location: LC_X6_Y9_N2
\QA~16\ : maxv_lcell
-- Equation(s):
-- \QA~16_combout\ = (\RA~combout\(2) & (((\RA~combout\(3))))) # (!\RA~combout\(2) & ((\RA~combout\(3) & (\QA~13\)) # (!\RA~combout\(3) & ((\QA~15\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e3e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~13\,
	datab => \RA~combout\(2),
	datac => \RA~combout\(3),
	datad => \QA~15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~16_combout\);

-- Location: LC_X6_Y9_N5
\QA~19\ : maxv_lcell
-- Equation(s):
-- \QA~19_combout\ = (\RA~combout\(2) & ((\QA~16_combout\ & ((\QA~18\))) # (!\QA~16_combout\ & (\QA~11\)))) # (!\RA~combout\(2) & (((\QA~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~11\,
	datab => \RA~combout\(2),
	datac => \QA~18\,
	datad => \QA~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~19_combout\);

-- Location: LC_X8_Y9_N4
\Decoder0~50\ : maxv_lcell
-- Equation(s):
-- \Decoder0~50_combout\ = (!\WAddr~combout\(4) & (!\WAddr~combout\(3) & (!\WAddr~combout\(5) & \Decoder0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(4),
	datab => \WAddr~combout\(3),
	datac => \WAddr~combout\(5),
	datad => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~50_combout\);

-- Location: LC_X5_Y9_N8
\memoria[0][0]\ : maxv_lcell
-- Equation(s):
-- \QB~24\ = (\RB~combout\(0) & (((\RB~combout\(1))))) # (!\RB~combout\(0) & ((\RB~combout\(1) & (\memoria[2][0]~regout\)) # (!\RB~combout\(1) & ((memoria[0][0])))))
-- \memoria[0][0]~regout\ = DFFEAS(\QB~24\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~50_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(0),
	datab => \memoria[2][0]~regout\,
	datac => \WD~combout\(0),
	datad => \RB~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~24\,
	regout => \memoria[0][0]~regout\);

-- Location: LC_X10_Y4_N9
\Decoder0~49\ : maxv_lcell
-- Equation(s):
-- \Decoder0~49_combout\ = (!\WAddr~combout\(5) & (!\WAddr~combout\(3) & (!\WAddr~combout\(4) & \Decoder0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(5),
	datab => \WAddr~combout\(3),
	datac => \WAddr~combout\(4),
	datad => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~49_combout\);

-- Location: LC_X5_Y9_N7
\memoria[2][0]\ : maxv_lcell
-- Equation(s):
-- \QA~24\ = (\RA~combout\(0) & (\RA~combout\(1))) # (!\RA~combout\(0) & ((\RA~combout\(1) & (memoria[2][0])) # (!\RA~combout\(1) & ((\memoria[0][0]~regout\)))))
-- \memoria[2][0]~regout\ = DFFEAS(\QA~24\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~49_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(0),
	datab => \RA~combout\(1),
	datac => \WD~combout\(0),
	datad => \memoria[0][0]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~24\,
	regout => \memoria[2][0]~regout\);

-- Location: LC_X17_Y9_N4
\Decoder0~48\ : maxv_lcell
-- Equation(s):
-- \Decoder0~48_combout\ = (!\WAddr~combout\(4) & (!\WAddr~combout\(3) & (!\WAddr~combout\(5) & \Decoder0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(4),
	datab => \WAddr~combout\(3),
	datac => \WAddr~combout\(5),
	datad => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~48_combout\);

-- Location: LC_X5_Y10_N2
\memoria[1][0]\ : maxv_lcell
-- Equation(s):
-- \QA~25\ = (\QA~24\ & ((\memoria[3][0]~regout\) # ((!\RA~combout\(0))))) # (!\QA~24\ & (((memoria[1][0] & \RA~combout\(0)))))
-- \memoria[1][0]~regout\ = DFFEAS(\QA~25\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~48_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[3][0]~regout\,
	datab => \QA~24\,
	datac => \WD~combout\(0),
	datad => \RA~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~25\,
	regout => \memoria[1][0]~regout\);

-- Location: LC_X10_Y5_N6
\Decoder0~51\ : maxv_lcell
-- Equation(s):
-- \Decoder0~51_combout\ = (\Decoder0~20_combout\ & (!\WAddr~combout\(3) & (!\WAddr~combout\(5) & !\WAddr~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~20_combout\,
	datab => \WAddr~combout\(3),
	datac => \WAddr~combout\(5),
	datad => \WAddr~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~51_combout\);

-- Location: LC_X5_Y10_N5
\memoria[3][0]\ : maxv_lcell
-- Equation(s):
-- \QB~25\ = (\QB~24\ & (((memoria[3][0]) # (!\RB~combout\(0))))) # (!\QB~24\ & (\memoria[1][0]~regout\ & ((\RB~combout\(0)))))
-- \memoria[3][0]~regout\ = DFFEAS(\QB~25\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~51_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QB~24\,
	datab => \memoria[1][0]~regout\,
	datac => \WD~combout\(0),
	datad => \RB~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~25\,
	regout => \memoria[3][0]~regout\);

-- Location: LC_X14_Y6_N8
\Decoder0~45\ : maxv_lcell
-- Equation(s):
-- \Decoder0~45_combout\ = (!\WAddr~combout\(4) & (!\WAddr~combout\(3) & (!\WAddr~combout\(5) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(4),
	datab => \WAddr~combout\(3),
	datac => \WAddr~combout\(5),
	datad => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~45_combout\);

-- Location: LC_X17_Y12_N8
\memoria[5][0]\ : maxv_lcell
-- Equation(s):
-- \QA~22\ = (\RA~combout\(0) & (((memoria[5][0]) # (\RA~combout\(1))))) # (!\RA~combout\(0) & (\memoria[4][0]~regout\ & ((!\RA~combout\(1)))))
-- \memoria[5][0]~regout\ = DFFEAS(\QA~22\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~45_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[4][0]~regout\,
	datab => \RA~combout\(0),
	datac => \WD~combout\(0),
	datad => \RA~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~22\,
	regout => \memoria[5][0]~regout\);

-- Location: LC_X10_Y8_N3
\Decoder0~46\ : maxv_lcell
-- Equation(s):
-- \Decoder0~46_combout\ = (!\WAddr~combout\(3) & (!\WAddr~combout\(4) & (!\WAddr~combout\(5) & \Decoder0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(3),
	datab => \WAddr~combout\(4),
	datac => \WAddr~combout\(5),
	datad => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~46_combout\);

-- Location: LC_X17_Y12_N6
\memoria[4][0]\ : maxv_lcell
-- Equation(s):
-- \QB~22\ = (\RB~combout\(1) & (\RB~combout\(0))) # (!\RB~combout\(1) & ((\RB~combout\(0) & ((\memoria[5][0]~regout\))) # (!\RB~combout\(0) & (memoria[4][0]))))
-- \memoria[4][0]~regout\ = DFFEAS(\QB~22\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~46_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(1),
	datab => \RB~combout\(0),
	datac => \WD~combout\(0),
	datad => \memoria[5][0]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~22\,
	regout => \memoria[4][0]~regout\);

-- Location: LC_X9_Y8_N0
\Decoder0~44\ : maxv_lcell
-- Equation(s):
-- \Decoder0~44_combout\ = (\Decoder0~8_combout\ & (!\WAddr~combout\(3) & (!\WAddr~combout\(4) & !\WAddr~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~8_combout\,
	datab => \WAddr~combout\(3),
	datac => \WAddr~combout\(4),
	datad => \WAddr~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~44_combout\);

-- Location: LC_X11_Y9_N2
\memoria[6][0]\ : maxv_lcell
-- Equation(s):
-- \QA~23\ = (\QA~22\ & (((\memoria[7][0]~regout\)) # (!\RA~combout\(1)))) # (!\QA~22\ & (\RA~combout\(1) & (memoria[6][0])))
-- \memoria[6][0]~regout\ = DFFEAS(\QA~23\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~44_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QA~22\,
	datab => \RA~combout\(1),
	datac => \WD~combout\(0),
	datad => \memoria[7][0]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~23\,
	regout => \memoria[6][0]~regout\);

-- Location: LC_X15_Y10_N9
\Decoder0~47\ : maxv_lcell
-- Equation(s):
-- \Decoder0~47_combout\ = (!\WAddr~combout\(4) & (!\WAddr~combout\(3) & (\Decoder0~18_combout\ & !\WAddr~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(4),
	datab => \WAddr~combout\(3),
	datac => \Decoder0~18_combout\,
	datad => \WAddr~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~47_combout\);

-- Location: LC_X11_Y9_N3
\memoria[7][0]\ : maxv_lcell
-- Equation(s):
-- \QB~23\ = (\QB~22\ & (((memoria[7][0]) # (!\RB~combout\(1))))) # (!\QB~22\ & (\memoria[6][0]~regout\ & ((\RB~combout\(1)))))
-- \memoria[7][0]~regout\ = DFFEAS(\QB~23\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~47_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QB~22\,
	datab => \memoria[6][0]~regout\,
	datac => \WD~combout\(0),
	datad => \RB~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~23\,
	regout => \memoria[7][0]~regout\);

-- Location: LC_X6_Y9_N4
\QA~26\ : maxv_lcell
-- Equation(s):
-- \QA~26_combout\ = (\RA~combout\(2) & (((\RA~combout\(3)) # (\QA~23\)))) # (!\RA~combout\(2) & (\QA~25\ & (!\RA~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cec2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~25\,
	datab => \RA~combout\(2),
	datac => \RA~combout\(3),
	datad => \QA~23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~26_combout\);

-- Location: LC_X15_Y6_N5
\Decoder0~53\ : maxv_lcell
-- Equation(s):
-- \Decoder0~53_combout\ = (\WAddr~combout\(3) & (!\WAddr~combout\(4) & (!\WAddr~combout\(5) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(3),
	datab => \WAddr~combout\(4),
	datac => \WAddr~combout\(5),
	datad => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~53_combout\);

-- Location: LC_X3_Y5_N2
\memoria[13][0]\ : maxv_lcell
-- Equation(s):
-- \QA~27\ = (\RA~combout\(0) & (((memoria[13][0]) # (\RA~combout\(1))))) # (!\RA~combout\(0) & (\memoria[12][0]~regout\ & ((!\RA~combout\(1)))))
-- \memoria[13][0]~regout\ = DFFEAS(\QA~27\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~53_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[12][0]~regout\,
	datab => \RA~combout\(0),
	datac => \WD~combout\(0),
	datad => \RA~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~27\,
	regout => \memoria[13][0]~regout\);

-- Location: LC_X10_Y8_N0
\Decoder0~54\ : maxv_lcell
-- Equation(s):
-- \Decoder0~54_combout\ = (\WAddr~combout\(3) & (!\WAddr~combout\(4) & (!\WAddr~combout\(5) & \Decoder0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(3),
	datab => \WAddr~combout\(4),
	datac => \WAddr~combout\(5),
	datad => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~54_combout\);

-- Location: LC_X3_Y5_N4
\memoria[12][0]\ : maxv_lcell
-- Equation(s):
-- \QB~27\ = (\RB~combout\(1) & (((\RB~combout\(0))))) # (!\RB~combout\(1) & ((\RB~combout\(0) & (\memoria[13][0]~regout\)) # (!\RB~combout\(0) & ((memoria[12][0])))))
-- \memoria[12][0]~regout\ = DFFEAS(\QB~27\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~54_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(1),
	datab => \memoria[13][0]~regout\,
	datac => \WD~combout\(0),
	datad => \RB~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~27\,
	regout => \memoria[12][0]~regout\);

-- Location: LC_X9_Y7_N4
\Decoder0~52\ : maxv_lcell
-- Equation(s):
-- \Decoder0~52_combout\ = (!\WAddr~combout\(4) & (!\WAddr~combout\(5) & (\Decoder0~8_combout\ & \WAddr~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(4),
	datab => \WAddr~combout\(5),
	datac => \Decoder0~8_combout\,
	datad => \WAddr~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~52_combout\);

-- Location: LC_X12_Y9_N9
\memoria[14][0]\ : maxv_lcell
-- Equation(s):
-- \QA~28\ = (\QA~27\ & (((\memoria[15][0]~regout\)) # (!\RA~combout\(1)))) # (!\QA~27\ & (\RA~combout\(1) & (memoria[14][0])))
-- \memoria[14][0]~regout\ = DFFEAS(\QA~28\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~52_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QA~27\,
	datab => \RA~combout\(1),
	datac => \WD~combout\(0),
	datad => \memoria[15][0]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~28\,
	regout => \memoria[14][0]~regout\);

-- Location: LC_X15_Y10_N7
\Decoder0~55\ : maxv_lcell
-- Equation(s):
-- \Decoder0~55_combout\ = (!\WAddr~combout\(4) & (\WAddr~combout\(3) & (\Decoder0~18_combout\ & !\WAddr~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(4),
	datab => \WAddr~combout\(3),
	datac => \Decoder0~18_combout\,
	datad => \WAddr~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~55_combout\);

-- Location: LC_X12_Y9_N8
\memoria[15][0]\ : maxv_lcell
-- Equation(s):
-- \QB~28\ = (\QB~27\ & (((memoria[15][0])) # (!\RB~combout\(1)))) # (!\QB~27\ & (\RB~combout\(1) & ((\memoria[14][0]~regout\))))
-- \memoria[15][0]~regout\ = DFFEAS(\QB~28\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~55_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QB~27\,
	datab => \RB~combout\(1),
	datac => \WD~combout\(0),
	datad => \memoria[14][0]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~28\,
	regout => \memoria[15][0]~regout\);

-- Location: LC_X13_Y4_N5
\Decoder0~41\ : maxv_lcell
-- Equation(s):
-- \Decoder0~41_combout\ = (!\WAddr~combout\(5) & (!\WAddr~combout\(4) & (\WAddr~combout\(3) & \Decoder0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(5),
	datab => \WAddr~combout\(4),
	datac => \WAddr~combout\(3),
	datad => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~41_combout\);

-- Location: LC_X20_Y9_N5
\memoria[10][0]\ : maxv_lcell
-- Equation(s):
-- \QA~20\ = (\RA~combout\(0) & (\RA~combout\(1))) # (!\RA~combout\(0) & ((\RA~combout\(1) & (memoria[10][0])) # (!\RA~combout\(1) & ((\memoria[8][0]~regout\)))))
-- \memoria[10][0]~regout\ = DFFEAS(\QA~20\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~41_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(0),
	datab => \RA~combout\(1),
	datac => \WD~combout\(0),
	datad => \memoria[8][0]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~20\,
	regout => \memoria[10][0]~regout\);

-- Location: LC_X9_Y8_N6
\Decoder0~42\ : maxv_lcell
-- Equation(s):
-- \Decoder0~42_combout\ = (\Decoder0~12_combout\ & (\WAddr~combout\(3) & (!\WAddr~combout\(4) & !\WAddr~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~12_combout\,
	datab => \WAddr~combout\(3),
	datac => \WAddr~combout\(4),
	datad => \WAddr~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~42_combout\);

-- Location: LC_X20_Y9_N9
\memoria[8][0]\ : maxv_lcell
-- Equation(s):
-- \QB~20\ = (\RB~combout\(0) & (((\RB~combout\(1))))) # (!\RB~combout\(0) & ((\RB~combout\(1) & (\memoria[10][0]~regout\)) # (!\RB~combout\(1) & ((memoria[8][0])))))
-- \memoria[8][0]~regout\ = DFFEAS(\QB~20\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~42_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[10][0]~regout\,
	datab => \RB~combout\(0),
	datac => \WD~combout\(0),
	datad => \RB~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~20\,
	regout => \memoria[8][0]~regout\);

-- Location: LC_X17_Y9_N6
\Decoder0~40\ : maxv_lcell
-- Equation(s):
-- \Decoder0~40_combout\ = (!\WAddr~combout\(4) & (\WAddr~combout\(3) & (!\WAddr~combout\(5) & \Decoder0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(4),
	datab => \WAddr~combout\(3),
	datac => \WAddr~combout\(5),
	datad => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~40_combout\);

-- Location: LC_X20_Y8_N6
\memoria[9][0]\ : maxv_lcell
-- Equation(s):
-- \QA~21\ = (\RA~combout\(0) & ((\QA~20\ & (\memoria[11][0]~regout\)) # (!\QA~20\ & ((memoria[9][0]))))) # (!\RA~combout\(0) & (((\QA~20\))))
-- \memoria[9][0]~regout\ = DFFEAS(\QA~21\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~40_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(0),
	datab => \memoria[11][0]~regout\,
	datac => \WD~combout\(0),
	datad => \QA~20\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~21\,
	regout => \memoria[9][0]~regout\);

-- Location: LC_X13_Y4_N8
\Decoder0~43\ : maxv_lcell
-- Equation(s):
-- \Decoder0~43_combout\ = (\WAddr~combout\(3) & (!\WAddr~combout\(4) & (!\WAddr~combout\(5) & \Decoder0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(3),
	datab => \WAddr~combout\(4),
	datac => \WAddr~combout\(5),
	datad => \Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~43_combout\);

-- Location: LC_X20_Y8_N7
\memoria[11][0]\ : maxv_lcell
-- Equation(s):
-- \QB~21\ = (\QB~20\ & (((memoria[11][0]) # (!\RB~combout\(0))))) # (!\QB~20\ & (\memoria[9][0]~regout\ & ((\RB~combout\(0)))))
-- \memoria[11][0]~regout\ = DFFEAS(\QB~21\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~43_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[9][0]~regout\,
	datab => \QB~20\,
	datac => \WD~combout\(0),
	datad => \RB~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~21\,
	regout => \memoria[11][0]~regout\);

-- Location: LC_X6_Y9_N9
\QA~29\ : maxv_lcell
-- Equation(s):
-- \QA~29_combout\ = (\QA~26_combout\ & ((\QA~28\) # ((!\RA~combout\(3))))) # (!\QA~26_combout\ & (((\RA~combout\(3) & \QA~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "da8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~26_combout\,
	datab => \QA~28\,
	datac => \RA~combout\(3),
	datad => \QA~21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~29_combout\);

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RA[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RA(5),
	combout => \RA~combout\(5));

-- Location: PIN_N7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RA[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RA(4),
	combout => \RA~combout\(4));

-- Location: LC_X6_Y9_N3
\QA~30\ : maxv_lcell
-- Equation(s):
-- \QA~30_combout\ = (\RA~combout\(5) & (((\RA~combout\(4))))) # (!\RA~combout\(5) & ((\RA~combout\(4) & (\QA~19_combout\)) # (!\RA~combout\(4) & ((\QA~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~19_combout\,
	datab => \QA~29_combout\,
	datac => \RA~combout\(5),
	datad => \RA~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~30_combout\);

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RB[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RB(3),
	combout => \RB~combout\(3));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RB[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RB(2),
	combout => \RB~combout\(2));

-- Location: LC_X10_Y5_N3
\Decoder0~21\ : maxv_lcell
-- Equation(s):
-- \Decoder0~21_combout\ = (\Decoder0~20_combout\ & (\WAddr~combout\(3) & (\WAddr~combout\(5) & !\WAddr~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~20_combout\,
	datab => \WAddr~combout\(3),
	datac => \WAddr~combout\(5),
	datad => \WAddr~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~21_combout\);

-- Location: LC_X10_Y5_N9
\memoria[43][0]\ : maxv_lcell
-- Equation(s):
-- \QA~7\ = (\RA~combout\(3) & (((memoria[43][0]) # (\RA~combout\(2))))) # (!\RA~combout\(3) & (\memoria[35][0]~regout\ & ((!\RA~combout\(2)))))
-- \memoria[43][0]~regout\ = DFFEAS(\QA~7\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~21_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[35][0]~regout\,
	datab => \RA~combout\(3),
	datac => \WD~combout\(0),
	datad => \RA~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~7\,
	regout => \memoria[43][0]~regout\);

-- Location: LC_X10_Y5_N2
\Decoder0~22\ : maxv_lcell
-- Equation(s):
-- \Decoder0~22_combout\ = (\Decoder0~20_combout\ & (!\WAddr~combout\(3) & (\WAddr~combout\(5) & !\WAddr~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~20_combout\,
	datab => \WAddr~combout\(3),
	datac => \WAddr~combout\(5),
	datad => \WAddr~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~22_combout\);

-- Location: LC_X10_Y5_N5
\memoria[35][0]\ : maxv_lcell
-- Equation(s):
-- \QB~7\ = (\RB~combout\(3) & ((\RB~combout\(2)) # ((\memoria[43][0]~regout\)))) # (!\RB~combout\(3) & (!\RB~combout\(2) & (memoria[35][0])))
-- \memoria[35][0]~regout\ = DFFEAS(\QB~7\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~22_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(3),
	datab => \RB~combout\(2),
	datac => \WD~combout\(0),
	datad => \memoria[43][0]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~7\,
	regout => \memoria[35][0]~regout\);

-- Location: LC_X15_Y10_N4
\Decoder0~19\ : maxv_lcell
-- Equation(s):
-- \Decoder0~19_combout\ = (!\WAddr~combout\(4) & (!\WAddr~combout\(3) & (\Decoder0~18_combout\ & \WAddr~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(4),
	datab => \WAddr~combout\(3),
	datac => \Decoder0~18_combout\,
	datad => \WAddr~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~19_combout\);

-- Location: LC_X7_Y11_N6
\memoria[39][0]\ : maxv_lcell
-- Equation(s):
-- \QA~8\ = (\RA~combout\(2) & ((\QA~7\ & (\memoria[47][0]~regout\)) # (!\QA~7\ & ((memoria[39][0]))))) # (!\RA~combout\(2) & (((\QA~7\))))
-- \memoria[39][0]~regout\ = DFFEAS(\QA~8\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~19_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[47][0]~regout\,
	datab => \RA~combout\(2),
	datac => \WD~combout\(0),
	datad => \QA~7\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~8\,
	regout => \memoria[39][0]~regout\);

-- Location: LC_X15_Y10_N3
\Decoder0~23\ : maxv_lcell
-- Equation(s):
-- \Decoder0~23_combout\ = (!\WAddr~combout\(4) & (\WAddr~combout\(3) & (\Decoder0~18_combout\ & \WAddr~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(4),
	datab => \WAddr~combout\(3),
	datac => \Decoder0~18_combout\,
	datad => \WAddr~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~23_combout\);

-- Location: LC_X7_Y11_N4
\memoria[47][0]\ : maxv_lcell
-- Equation(s):
-- \QB~8\ = (\RB~combout\(2) & ((\QB~7\ & ((memoria[47][0]))) # (!\QB~7\ & (\memoria[39][0]~regout\)))) # (!\RB~combout\(2) & (((\QB~7\))))
-- \memoria[47][0]~regout\ = DFFEAS(\QB~8\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~23_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[39][0]~regout\,
	datab => \RB~combout\(2),
	datac => \WD~combout\(0),
	datad => \QB~7\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~8\,
	regout => \memoria[47][0]~regout\);

-- Location: LC_X10_Y8_N2
\Decoder0~15\ : maxv_lcell
-- Equation(s):
-- \Decoder0~15_combout\ = (!\WAddr~combout\(3) & (!\WAddr~combout\(4) & (\WAddr~combout\(5) & \Decoder0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(3),
	datab => \WAddr~combout\(4),
	datac => \WAddr~combout\(5),
	datad => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~15_combout\);

-- Location: LC_X5_Y7_N2
\memoria[36][0]\ : maxv_lcell
-- Equation(s):
-- \QA~4\ = (\RA~combout\(3) & (((\RA~combout\(2))))) # (!\RA~combout\(3) & ((\RA~combout\(2) & ((memoria[36][0]))) # (!\RA~combout\(2) & (\memoria[32][0]~regout\))))
-- \memoria[36][0]~regout\ = DFFEAS(\QA~4\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~15_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[32][0]~regout\,
	datab => \RA~combout\(3),
	datac => \WD~combout\(0),
	datad => \RA~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~4\,
	regout => \memoria[36][0]~regout\);

-- Location: LC_X8_Y9_N6
\Decoder0~16\ : maxv_lcell
-- Equation(s):
-- \Decoder0~16_combout\ = (!\WAddr~combout\(4) & (!\WAddr~combout\(3) & (\WAddr~combout\(5) & \Decoder0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(4),
	datab => \WAddr~combout\(3),
	datac => \WAddr~combout\(5),
	datad => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~16_combout\);

-- Location: LC_X6_Y7_N6
\memoria[32][0]\ : maxv_lcell
-- Equation(s):
-- \QB~4\ = (\RB~combout\(2) & ((\RB~combout\(3)) # ((\memoria[36][0]~regout\)))) # (!\RB~combout\(2) & (!\RB~combout\(3) & (memoria[32][0])))
-- \memoria[32][0]~regout\ = DFFEAS(\QB~4\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~16_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(2),
	datab => \RB~combout\(3),
	datac => \WD~combout\(0),
	datad => \memoria[36][0]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~4\,
	regout => \memoria[32][0]~regout\);

-- Location: LC_X9_Y8_N8
\Decoder0~13\ : maxv_lcell
-- Equation(s):
-- \Decoder0~13_combout\ = (\Decoder0~12_combout\ & (\WAddr~combout\(3) & (!\WAddr~combout\(4) & \WAddr~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~12_combout\,
	datab => \WAddr~combout\(3),
	datac => \WAddr~combout\(4),
	datad => \WAddr~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~13_combout\);

-- Location: LC_X15_Y13_N3
\memoria[40][0]\ : maxv_lcell
-- Equation(s):
-- \QA~5\ = (\QA~4\ & (((\memoria[44][0]~regout\)) # (!\RA~combout\(3)))) # (!\QA~4\ & (\RA~combout\(3) & (memoria[40][0])))
-- \memoria[40][0]~regout\ = DFFEAS(\QA~5\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~13_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QA~4\,
	datab => \RA~combout\(3),
	datac => \WD~combout\(0),
	datad => \memoria[44][0]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~5\,
	regout => \memoria[40][0]~regout\);

-- Location: LC_X10_Y8_N1
\Decoder0~17\ : maxv_lcell
-- Equation(s):
-- \Decoder0~17_combout\ = (\WAddr~combout\(3) & (!\WAddr~combout\(4) & (\WAddr~combout\(5) & \Decoder0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(3),
	datab => \WAddr~combout\(4),
	datac => \WAddr~combout\(5),
	datad => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~17_combout\);

-- Location: LC_X12_Y7_N6
\memoria[44][0]\ : maxv_lcell
-- Equation(s):
-- \QB~5\ = (\RB~combout\(3) & ((\QB~4\ & (memoria[44][0])) # (!\QB~4\ & ((\memoria[40][0]~regout\))))) # (!\RB~combout\(3) & (\QB~4\))
-- \memoria[44][0]~regout\ = DFFEAS(\QB~5\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~17_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(3),
	datab => \QB~4\,
	datac => \WD~combout\(0),
	datad => \memoria[40][0]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~5\,
	regout => \memoria[44][0]~regout\);

-- Location: LC_X9_Y6_N5
\Decoder0~9\ : maxv_lcell
-- Equation(s):
-- \Decoder0~9_combout\ = (!\WAddr~combout\(4) & (!\WAddr~combout\(3) & (\Decoder0~8_combout\ & \WAddr~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(4),
	datab => \WAddr~combout\(3),
	datac => \Decoder0~8_combout\,
	datad => \WAddr~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~9_combout\);

-- Location: LC_X2_Y5_N4
\memoria[38][0]\ : maxv_lcell
-- Equation(s):
-- \QA~2\ = (\RA~combout\(2) & ((\RA~combout\(3)) # ((memoria[38][0])))) # (!\RA~combout\(2) & (!\RA~combout\(3) & ((\memoria[34][0]~regout\))))
-- \memoria[38][0]~regout\ = DFFEAS(\QA~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~9_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(2),
	datab => \RA~combout\(3),
	datac => \WD~combout\(0),
	datad => \memoria[34][0]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~2\,
	regout => \memoria[38][0]~regout\);

-- Location: LC_X10_Y4_N6
\Decoder0~10\ : maxv_lcell
-- Equation(s):
-- \Decoder0~10_combout\ = (\WAddr~combout\(5) & (!\WAddr~combout\(3) & (!\WAddr~combout\(4) & \Decoder0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(5),
	datab => \WAddr~combout\(3),
	datac => \WAddr~combout\(4),
	datad => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~10_combout\);

-- Location: LC_X2_Y5_N3
\memoria[34][0]\ : maxv_lcell
-- Equation(s):
-- \QB~2\ = (\RB~combout\(3) & (((\RB~combout\(2))))) # (!\RB~combout\(3) & ((\RB~combout\(2) & (\memoria[38][0]~regout\)) # (!\RB~combout\(2) & ((memoria[34][0])))))
-- \memoria[34][0]~regout\ = DFFEAS(\QB~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~10_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[38][0]~regout\,
	datab => \RB~combout\(3),
	datac => \WD~combout\(0),
	datad => \RB~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~2\,
	regout => \memoria[34][0]~regout\);

-- Location: LC_X13_Y4_N4
\Decoder0~7\ : maxv_lcell
-- Equation(s):
-- \Decoder0~7_combout\ = (\WAddr~combout\(5) & (!\WAddr~combout\(4) & (\WAddr~combout\(3) & \Decoder0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(5),
	datab => \WAddr~combout\(4),
	datac => \WAddr~combout\(3),
	datad => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~7_combout\);

-- Location: LC_X5_Y6_N2
\memoria[42][0]\ : maxv_lcell
-- Equation(s):
-- \QA~3\ = (\QA~2\ & (((\memoria[46][0]~regout\)) # (!\RA~combout\(3)))) # (!\QA~2\ & (\RA~combout\(3) & (memoria[42][0])))
-- \memoria[42][0]~regout\ = DFFEAS(\QA~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~7_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QA~2\,
	datab => \RA~combout\(3),
	datac => \WD~combout\(0),
	datad => \memoria[46][0]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~3\,
	regout => \memoria[42][0]~regout\);

-- Location: LC_X9_Y7_N8
\Decoder0~11\ : maxv_lcell
-- Equation(s):
-- \Decoder0~11_combout\ = (!\WAddr~combout\(4) & (\WAddr~combout\(5) & (\Decoder0~8_combout\ & \WAddr~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(4),
	datab => \WAddr~combout\(5),
	datac => \Decoder0~8_combout\,
	datad => \WAddr~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~11_combout\);

-- Location: LC_X5_Y6_N1
\memoria[46][0]\ : maxv_lcell
-- Equation(s):
-- \QB~3\ = (\QB~2\ & (((memoria[46][0])) # (!\RB~combout\(3)))) # (!\QB~2\ & (\RB~combout\(3) & ((\memoria[42][0]~regout\))))
-- \memoria[46][0]~regout\ = DFFEAS(\QB~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~11_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QB~2\,
	datab => \RB~combout\(3),
	datac => \WD~combout\(0),
	datad => \memoria[42][0]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~3\,
	regout => \memoria[46][0]~regout\);

-- Location: LC_X5_Y8_N0
\QA~6\ : maxv_lcell
-- Equation(s):
-- \QA~6_combout\ = (\RA~combout\(0) & (((\RA~combout\(1))))) # (!\RA~combout\(0) & ((\RA~combout\(1) & ((\QA~3\))) # (!\RA~combout\(1) & (\QA~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RA~combout\(0),
	datab => \QA~5\,
	datac => \QA~3\,
	datad => \RA~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~6_combout\);

-- Location: LC_X17_Y8_N4
\Decoder0~4\ : maxv_lcell
-- Equation(s):
-- \Decoder0~4_combout\ = (\Decoder0~2_combout\ & (!\WAddr~combout\(3) & (!\WAddr~combout\(4) & \WAddr~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~2_combout\,
	datab => \WAddr~combout\(3),
	datac => \WAddr~combout\(4),
	datad => \WAddr~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~4_combout\);

-- Location: LC_X17_Y11_N8
\memoria[33][0]\ : maxv_lcell
-- Equation(s):
-- \QB~0\ = (\RB~combout\(3) & ((\RB~combout\(2)) # ((\memoria[41][0]~regout\)))) # (!\RB~combout\(3) & (!\RB~combout\(2) & (memoria[33][0])))
-- \memoria[33][0]~regout\ = DFFEAS(\QB~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~4_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(3),
	datab => \RB~combout\(2),
	datac => \WD~combout\(0),
	datad => \memoria[41][0]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~0\,
	regout => \memoria[33][0]~regout\);

-- Location: LC_X17_Y9_N3
\Decoder0~3\ : maxv_lcell
-- Equation(s):
-- \Decoder0~3_combout\ = (!\WAddr~combout\(4) & (\WAddr~combout\(3) & (\WAddr~combout\(5) & \Decoder0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(4),
	datab => \WAddr~combout\(3),
	datac => \WAddr~combout\(5),
	datad => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~3_combout\);

-- Location: LC_X17_Y11_N9
\memoria[41][0]\ : maxv_lcell
-- Equation(s):
-- \QA~0\ = (\RA~combout\(2) & (\RA~combout\(3))) # (!\RA~combout\(2) & ((\RA~combout\(3) & (memoria[41][0])) # (!\RA~combout\(3) & ((\memoria[33][0]~regout\)))))
-- \memoria[41][0]~regout\ = DFFEAS(\QA~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~3_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(2),
	datab => \RA~combout\(3),
	datac => \WD~combout\(0),
	datad => \memoria[33][0]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~0\,
	regout => \memoria[41][0]~regout\);

-- Location: LC_X14_Y6_N7
\Decoder0~1\ : maxv_lcell
-- Equation(s):
-- \Decoder0~1_combout\ = (!\WAddr~combout\(4) & (!\WAddr~combout\(3) & (\WAddr~combout\(5) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(4),
	datab => \WAddr~combout\(3),
	datac => \WAddr~combout\(5),
	datad => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~1_combout\);

-- Location: LC_X16_Y9_N9
\memoria[37][0]\ : maxv_lcell
-- Equation(s):
-- \QA~1\ = (\RA~combout\(2) & ((\QA~0\ & (\memoria[45][0]~regout\)) # (!\QA~0\ & ((memoria[37][0]))))) # (!\RA~combout\(2) & (((\QA~0\))))
-- \memoria[37][0]~regout\ = DFFEAS(\QA~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~1_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(2),
	datab => \memoria[45][0]~regout\,
	datac => \WD~combout\(0),
	datad => \QA~0\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~1\,
	regout => \memoria[37][0]~regout\);

-- Location: LC_X14_Y6_N2
\Decoder0~5\ : maxv_lcell
-- Equation(s):
-- \Decoder0~5_combout\ = (!\WAddr~combout\(4) & (\WAddr~combout\(3) & (\WAddr~combout\(5) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(4),
	datab => \WAddr~combout\(3),
	datac => \WAddr~combout\(5),
	datad => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~5_combout\);

-- Location: LC_X16_Y9_N8
\memoria[45][0]\ : maxv_lcell
-- Equation(s):
-- \QB~1\ = (\QB~0\ & (((memoria[45][0])) # (!\RB~combout\(2)))) # (!\QB~0\ & (\RB~combout\(2) & ((\memoria[37][0]~regout\))))
-- \memoria[45][0]~regout\ = DFFEAS(\QB~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~5_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QB~0\,
	datab => \RB~combout\(2),
	datac => \WD~combout\(0),
	datad => \memoria[37][0]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~1\,
	regout => \memoria[45][0]~regout\);

-- Location: LC_X6_Y9_N1
\QA~9\ : maxv_lcell
-- Equation(s):
-- \QA~9_combout\ = (\RA~combout\(0) & ((\QA~6_combout\ & (\QA~8\)) # (!\QA~6_combout\ & ((\QA~1\))))) # (!\RA~combout\(0) & (((\QA~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dad0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RA~combout\(0),
	datab => \QA~8\,
	datac => \QA~6_combout\,
	datad => \QA~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~9_combout\);

-- Location: LC_X9_Y6_N9
\Decoder0~69\ : maxv_lcell
-- Equation(s):
-- \Decoder0~69_combout\ = (\WAddr~combout\(4) & (\WAddr~combout\(3) & (\Decoder0~8_combout\ & \WAddr~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(4),
	datab => \WAddr~combout\(3),
	datac => \Decoder0~8_combout\,
	datad => \WAddr~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~69_combout\);

-- Location: LC_X16_Y5_N7
\memoria[62][0]\ : maxv_lcell
-- Equation(s):
-- \QA~38\ = (\RA~combout\(1) & ((\RA~combout\(0)) # ((memoria[62][0])))) # (!\RA~combout\(1) & (!\RA~combout\(0) & ((\memoria[60][0]~regout\))))
-- \memoria[62][0]~regout\ = DFFEAS(\QA~38\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~69_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(1),
	datab => \RA~combout\(0),
	datac => \WD~combout\(0),
	datad => \memoria[60][0]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~38\,
	regout => \memoria[62][0]~regout\);

-- Location: LC_X10_Y8_N8
\Decoder0~70\ : maxv_lcell
-- Equation(s):
-- \Decoder0~70_combout\ = (\WAddr~combout\(3) & (\WAddr~combout\(4) & (\WAddr~combout\(5) & \Decoder0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(3),
	datab => \WAddr~combout\(4),
	datac => \WAddr~combout\(5),
	datad => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~70_combout\);

-- Location: LC_X16_Y5_N8
\memoria[60][0]\ : maxv_lcell
-- Equation(s):
-- \QB~38\ = (\RB~combout\(1) & ((\memoria[62][0]~regout\) # ((\RB~combout\(0))))) # (!\RB~combout\(1) & (((memoria[60][0] & !\RB~combout\(0)))))
-- \memoria[60][0]~regout\ = DFFEAS(\QB~38\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~70_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(1),
	datab => \memoria[62][0]~regout\,
	datac => \WD~combout\(0),
	datad => \RB~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~38\,
	regout => \memoria[60][0]~regout\);

-- Location: LC_X14_Y6_N9
\Decoder0~68\ : maxv_lcell
-- Equation(s):
-- \Decoder0~68_combout\ = (\WAddr~combout\(4) & (\WAddr~combout\(3) & (\WAddr~combout\(5) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(4),
	datab => \WAddr~combout\(3),
	datac => \WAddr~combout\(5),
	datad => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~68_combout\);

-- Location: LC_X14_Y9_N8
\memoria[61][0]\ : maxv_lcell
-- Equation(s):
-- \QA~39\ = (\QA~38\ & ((\memoria[63][0]~regout\) # ((!\RA~combout\(0))))) # (!\QA~38\ & (((memoria[61][0] & \RA~combout\(0)))))
-- \memoria[61][0]~regout\ = DFFEAS(\QA~39\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~68_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[63][0]~regout\,
	datab => \QA~38\,
	datac => \WD~combout\(0),
	datad => \RA~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~39\,
	regout => \memoria[61][0]~regout\);

-- Location: LC_X15_Y10_N6
\Decoder0~71\ : maxv_lcell
-- Equation(s):
-- \Decoder0~71_combout\ = (\WAddr~combout\(4) & (\WAddr~combout\(3) & (\Decoder0~18_combout\ & \WAddr~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(4),
	datab => \WAddr~combout\(3),
	datac => \Decoder0~18_combout\,
	datad => \WAddr~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~71_combout\);

-- Location: LC_X14_Y9_N5
\memoria[63][0]\ : maxv_lcell
-- Equation(s):
-- \QB~39\ = (\RB~combout\(0) & ((\QB~38\ & ((memoria[63][0]))) # (!\QB~38\ & (\memoria[61][0]~regout\)))) # (!\RB~combout\(0) & (((\QB~38\))))
-- \memoria[63][0]~regout\ = DFFEAS(\QB~39\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~71_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[61][0]~regout\,
	datab => \RB~combout\(0),
	datac => \WD~combout\(0),
	datad => \QB~38\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~39\,
	regout => \memoria[63][0]~regout\);

-- Location: LC_X17_Y9_N8
\Decoder0~57\ : maxv_lcell
-- Equation(s):
-- \Decoder0~57_combout\ = (\WAddr~combout\(4) & (\WAddr~combout\(3) & (\WAddr~combout\(5) & \Decoder0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(4),
	datab => \WAddr~combout\(3),
	datac => \WAddr~combout\(5),
	datad => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~57_combout\);

-- Location: LC_X11_Y7_N5
\memoria[57][0]\ : maxv_lcell
-- Equation(s):
-- \QA~31\ = (\RA~combout\(1) & (\RA~combout\(0))) # (!\RA~combout\(1) & ((\RA~combout\(0) & (memoria[57][0])) # (!\RA~combout\(0) & ((\memoria[56][0]~regout\)))))
-- \memoria[57][0]~regout\ = DFFEAS(\QA~31\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~57_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(1),
	datab => \RA~combout\(0),
	datac => \WD~combout\(0),
	datad => \memoria[56][0]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~31\,
	regout => \memoria[57][0]~regout\);

-- Location: LC_X9_Y8_N5
\Decoder0~58\ : maxv_lcell
-- Equation(s):
-- \Decoder0~58_combout\ = (\Decoder0~12_combout\ & (\WAddr~combout\(3) & (\WAddr~combout\(4) & \WAddr~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~12_combout\,
	datab => \WAddr~combout\(3),
	datac => \WAddr~combout\(4),
	datad => \WAddr~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~58_combout\);

-- Location: LC_X11_Y7_N9
\memoria[56][0]\ : maxv_lcell
-- Equation(s):
-- \QB~31\ = (\RB~combout\(0) & ((\memoria[57][0]~regout\) # ((\RB~combout\(1))))) # (!\RB~combout\(0) & (((memoria[56][0] & !\RB~combout\(1)))))
-- \memoria[56][0]~regout\ = DFFEAS(\QB~31\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~58_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[57][0]~regout\,
	datab => \RB~combout\(0),
	datac => \WD~combout\(0),
	datad => \RB~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~31\,
	regout => \memoria[56][0]~regout\);

-- Location: LC_X10_Y4_N3
\Decoder0~56\ : maxv_lcell
-- Equation(s):
-- \Decoder0~56_combout\ = (\WAddr~combout\(5) & (\WAddr~combout\(3) & (\WAddr~combout\(4) & \Decoder0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(5),
	datab => \WAddr~combout\(3),
	datac => \WAddr~combout\(4),
	datad => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~56_combout\);

-- Location: LC_X13_Y6_N5
\memoria[58][0]\ : maxv_lcell
-- Equation(s):
-- \QA~32\ = (\QA~31\ & ((\memoria[59][0]~regout\) # ((!\RA~combout\(1))))) # (!\QA~31\ & (((memoria[58][0] & \RA~combout\(1)))))
-- \memoria[58][0]~regout\ = DFFEAS(\QA~32\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~56_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QA~31\,
	datab => \memoria[59][0]~regout\,
	datac => \WD~combout\(0),
	datad => \RA~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~32\,
	regout => \memoria[58][0]~regout\);

-- Location: LC_X10_Y5_N1
\Decoder0~59\ : maxv_lcell
-- Equation(s):
-- \Decoder0~59_combout\ = (\Decoder0~20_combout\ & (\WAddr~combout\(3) & (\WAddr~combout\(5) & \WAddr~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~20_combout\,
	datab => \WAddr~combout\(3),
	datac => \WAddr~combout\(5),
	datad => \WAddr~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~59_combout\);

-- Location: LC_X13_Y6_N0
\memoria[59][0]\ : maxv_lcell
-- Equation(s):
-- \QB~32\ = (\QB~31\ & (((memoria[59][0]) # (!\RB~combout\(1))))) # (!\QB~31\ & (\memoria[58][0]~regout\ & ((\RB~combout\(1)))))
-- \memoria[59][0]~regout\ = DFFEAS(\QB~32\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~59_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[58][0]~regout\,
	datab => \QB~31\,
	datac => \WD~combout\(0),
	datad => \RB~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~32\,
	regout => \memoria[59][0]~regout\);

-- Location: LC_X17_Y8_N3
\Decoder0~65\ : maxv_lcell
-- Equation(s):
-- \Decoder0~65_combout\ = (\Decoder0~2_combout\ & (!\WAddr~combout\(3) & (\WAddr~combout\(4) & \WAddr~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~2_combout\,
	datab => \WAddr~combout\(3),
	datac => \WAddr~combout\(4),
	datad => \WAddr~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~65_combout\);

-- Location: LC_X15_Y12_N3
\memoria[49][0]\ : maxv_lcell
-- Equation(s):
-- \QA~35\ = (\RA~combout\(1) & (((\RA~combout\(0))))) # (!\RA~combout\(1) & ((\RA~combout\(0) & ((memoria[49][0]))) # (!\RA~combout\(0) & (\memoria[48][0]~regout\))))
-- \memoria[49][0]~regout\ = DFFEAS(\QA~35\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~65_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(1),
	datab => \memoria[48][0]~regout\,
	datac => \WD~combout\(0),
	datad => \RA~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~35\,
	regout => \memoria[49][0]~regout\);

-- Location: LC_X9_Y8_N2
\Decoder0~66\ : maxv_lcell
-- Equation(s):
-- \Decoder0~66_combout\ = (\Decoder0~12_combout\ & (!\WAddr~combout\(3) & (\WAddr~combout\(4) & \WAddr~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~12_combout\,
	datab => \WAddr~combout\(3),
	datac => \WAddr~combout\(4),
	datad => \WAddr~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~66_combout\);

-- Location: LC_X15_Y12_N9
\memoria[48][0]\ : maxv_lcell
-- Equation(s):
-- \QB~35\ = (\RB~combout\(1) & (\RB~combout\(0))) # (!\RB~combout\(1) & ((\RB~combout\(0) & ((\memoria[49][0]~regout\))) # (!\RB~combout\(0) & (memoria[48][0]))))
-- \memoria[48][0]~regout\ = DFFEAS(\QB~35\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~66_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(1),
	datab => \RB~combout\(0),
	datac => \WD~combout\(0),
	datad => \memoria[49][0]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~35\,
	regout => \memoria[48][0]~regout\);

-- Location: LC_X10_Y4_N4
\Decoder0~64\ : maxv_lcell
-- Equation(s):
-- \Decoder0~64_combout\ = (\WAddr~combout\(5) & (!\WAddr~combout\(3) & (\WAddr~combout\(4) & \Decoder0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(5),
	datab => \WAddr~combout\(3),
	datac => \WAddr~combout\(4),
	datad => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~64_combout\);

-- Location: LC_X14_Y12_N5
\memoria[50][0]\ : maxv_lcell
-- Equation(s):
-- \QA~36\ = (\QA~35\ & ((\memoria[51][0]~regout\) # ((!\RA~combout\(1))))) # (!\QA~35\ & (((memoria[50][0] & \RA~combout\(1)))))
-- \memoria[50][0]~regout\ = DFFEAS(\QA~36\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~64_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QA~35\,
	datab => \memoria[51][0]~regout\,
	datac => \WD~combout\(0),
	datad => \RA~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~36\,
	regout => \memoria[50][0]~regout\);

-- Location: LC_X10_Y5_N7
\Decoder0~67\ : maxv_lcell
-- Equation(s):
-- \Decoder0~67_combout\ = (\Decoder0~20_combout\ & (!\WAddr~combout\(3) & (\WAddr~combout\(5) & \WAddr~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~20_combout\,
	datab => \WAddr~combout\(3),
	datac => \WAddr~combout\(5),
	datad => \WAddr~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~67_combout\);

-- Location: LC_X14_Y12_N7
\memoria[51][0]\ : maxv_lcell
-- Equation(s):
-- \QB~36\ = (\QB~35\ & (((memoria[51][0]) # (!\RB~combout\(1))))) # (!\QB~35\ & (\memoria[50][0]~regout\ & ((\RB~combout\(1)))))
-- \memoria[51][0]~regout\ = DFFEAS(\QB~36\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~67_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[50][0]~regout\,
	datab => \QB~35\,
	datac => \WD~combout\(0),
	datad => \RB~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~36\,
	regout => \memoria[51][0]~regout\);

-- Location: LC_X9_Y4_N8
\Decoder0~61\ : maxv_lcell
-- Equation(s):
-- \Decoder0~61_combout\ = (\WAddr~combout\(4) & (\WAddr~combout\(5) & (!\WAddr~combout\(3) & \Decoder0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(4),
	datab => \WAddr~combout\(5),
	datac => \WAddr~combout\(3),
	datad => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~61_combout\);

-- Location: LC_X18_Y11_N4
\memoria[54][0]\ : maxv_lcell
-- Equation(s):
-- \QA~33\ = (\RA~combout\(1) & (((memoria[54][0]) # (\RA~combout\(0))))) # (!\RA~combout\(1) & (\memoria[52][0]~regout\ & ((!\RA~combout\(0)))))
-- \memoria[54][0]~regout\ = DFFEAS(\QA~33\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~61_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[52][0]~regout\,
	datab => \RA~combout\(1),
	datac => \WD~combout\(0),
	datad => \RA~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~33\,
	regout => \memoria[54][0]~regout\);

-- Location: LC_X10_Y8_N5
\Decoder0~62\ : maxv_lcell
-- Equation(s):
-- \Decoder0~62_combout\ = (!\WAddr~combout\(3) & (\WAddr~combout\(4) & (\WAddr~combout\(5) & \Decoder0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(3),
	datab => \WAddr~combout\(4),
	datac => \WAddr~combout\(5),
	datad => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~62_combout\);

-- Location: LC_X18_Y11_N6
\memoria[52][0]\ : maxv_lcell
-- Equation(s):
-- \QB~33\ = (\RB~combout\(1) & ((\memoria[54][0]~regout\) # ((\RB~combout\(0))))) # (!\RB~combout\(1) & (((memoria[52][0] & !\RB~combout\(0)))))
-- \memoria[52][0]~regout\ = DFFEAS(\QB~33\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~62_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[54][0]~regout\,
	datab => \RB~combout\(1),
	datac => \WD~combout\(0),
	datad => \RB~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~33\,
	regout => \memoria[52][0]~regout\);

-- Location: LC_X14_Y6_N6
\Decoder0~60\ : maxv_lcell
-- Equation(s):
-- \Decoder0~60_combout\ = (\WAddr~combout\(4) & (!\WAddr~combout\(3) & (\WAddr~combout\(5) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(4),
	datab => \WAddr~combout\(3),
	datac => \WAddr~combout\(5),
	datad => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~60_combout\);

-- Location: LC_X18_Y8_N8
\memoria[53][0]\ : maxv_lcell
-- Equation(s):
-- \QA~34\ = (\RA~combout\(0) & ((\QA~33\ & (\memoria[55][0]~regout\)) # (!\QA~33\ & ((memoria[53][0]))))) # (!\RA~combout\(0) & (((\QA~33\))))
-- \memoria[53][0]~regout\ = DFFEAS(\QA~34\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~60_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(0),
	datab => \memoria[55][0]~regout\,
	datac => \WD~combout\(0),
	datad => \QA~33\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~34\,
	regout => \memoria[53][0]~regout\);

-- Location: LC_X15_Y10_N5
\Decoder0~63\ : maxv_lcell
-- Equation(s):
-- \Decoder0~63_combout\ = (\WAddr~combout\(4) & (!\WAddr~combout\(3) & (\Decoder0~18_combout\ & \WAddr~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(4),
	datab => \WAddr~combout\(3),
	datac => \Decoder0~18_combout\,
	datad => \WAddr~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~63_combout\);

-- Location: LC_X18_Y8_N9
\memoria[55][0]\ : maxv_lcell
-- Equation(s):
-- \QB~34\ = (\QB~33\ & (((memoria[55][0]) # (!\RB~combout\(0))))) # (!\QB~33\ & (\memoria[53][0]~regout\ & ((\RB~combout\(0)))))
-- \memoria[55][0]~regout\ = DFFEAS(\QB~34\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~63_combout\, \WD~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[53][0]~regout\,
	datab => \QB~33\,
	datac => \WD~combout\(0),
	datad => \RB~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~34\,
	regout => \memoria[55][0]~regout\);

-- Location: LC_X14_Y9_N0
\QA~37\ : maxv_lcell
-- Equation(s):
-- \QA~37_combout\ = (\RA~combout\(3) & (\RA~combout\(2))) # (!\RA~combout\(3) & ((\RA~combout\(2) & ((\QA~34\))) # (!\RA~combout\(2) & (\QA~36\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RA~combout\(3),
	datab => \RA~combout\(2),
	datac => \QA~36\,
	datad => \QA~34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~37_combout\);

-- Location: LC_X14_Y9_N1
\QA~40\ : maxv_lcell
-- Equation(s):
-- \QA~40_combout\ = (\RA~combout\(3) & ((\QA~37_combout\ & (\QA~39\)) # (!\QA~37_combout\ & ((\QA~32\))))) # (!\RA~combout\(3) & (((\QA~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~39\,
	datab => \QA~32\,
	datac => \RA~combout\(3),
	datad => \QA~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~40_combout\);

-- Location: LC_X6_Y9_N7
\QA~41\ : maxv_lcell
-- Equation(s):
-- \QA~41_combout\ = (\QA~30_combout\ & (((\QA~40_combout\) # (!\RA~combout\(5))))) # (!\QA~30_combout\ & (\QA~9_combout\ & (\RA~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea4a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~30_combout\,
	datab => \QA~9_combout\,
	datac => \RA~combout\(5),
	datad => \QA~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~41_combout\);

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\readA~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_readA,
	combout => \readA~combout\);

-- Location: LC_X6_Y11_N5
\QA~42\ : maxv_lcell
-- Equation(s):
-- \QA~42_combout\ = (((\QA~41_combout\ & \readA~combout\)))

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
	datac => \QA~41_combout\,
	datad => \readA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~42_combout\);

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RB[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RB(5),
	combout => \RB~combout\(5));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RB[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RB(4),
	combout => \RB~combout\(4));

-- Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WD[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_WD(1),
	combout => \WD~combout\(1));

-- Location: LC_X9_Y7_N2
\memoria[14][1]\ : maxv_lcell
-- Equation(s):
-- \QB~50\ = (\RB~combout\(4) & ((\memoria[30][1]~regout\) # ((\RB~combout\(5))))) # (!\RB~combout\(4) & (((memoria[14][1] & !\RB~combout\(5)))))
-- \memoria[14][1]~regout\ = DFFEAS(\QB~50\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~52_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[30][1]~regout\,
	datab => \RB~combout\(4),
	datac => \WD~combout\(1),
	datad => \RB~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~50\,
	regout => \memoria[14][1]~regout\);

-- Location: LC_X9_Y6_N1
\memoria[30][1]\ : maxv_lcell
-- Equation(s):
-- \QA~50\ = (\RA~combout\(5) & (((\RA~combout\(4))))) # (!\RA~combout\(5) & ((\RA~combout\(4) & ((memoria[30][1]))) # (!\RA~combout\(4) & (\memoria[14][1]~regout\))))
-- \memoria[30][1]~regout\ = DFFEAS(\QA~50\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~36_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[14][1]~regout\,
	datab => \RA~combout\(5),
	datac => \WD~combout\(1),
	datad => \RA~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~50\,
	regout => \memoria[30][1]~regout\);

-- Location: LC_X11_Y6_N6
\memoria[46][1]\ : maxv_lcell
-- Equation(s):
-- \QA~51\ = (\RA~combout\(5) & ((\QA~50\ & (\memoria[62][1]~regout\)) # (!\QA~50\ & ((memoria[46][1]))))) # (!\RA~combout\(5) & (((\QA~50\))))
-- \memoria[46][1]~regout\ = DFFEAS(\QA~51\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~11_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(5),
	datab => \memoria[62][1]~regout\,
	datac => \WD~combout\(1),
	datad => \QA~50\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~51\,
	regout => \memoria[46][1]~regout\);

-- Location: LC_X9_Y6_N3
\memoria[62][1]\ : maxv_lcell
-- Equation(s):
-- \QB~51\ = (\RB~combout\(5) & ((\QB~50\ & (memoria[62][1])) # (!\QB~50\ & ((\memoria[46][1]~regout\))))) # (!\RB~combout\(5) & (\QB~50\))
-- \memoria[62][1]~regout\ = DFFEAS(\QB~51\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~69_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(5),
	datab => \QB~50\,
	datac => \WD~combout\(1),
	datad => \memoria[46][1]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~51\,
	regout => \memoria[62][1]~regout\);

-- Location: LC_X4_Y4_N8
\memoria[34][1]\ : maxv_lcell
-- Equation(s):
-- \QA~47\ = (\RA~combout\(5) & (((memoria[34][1]) # (\RA~combout\(4))))) # (!\RA~combout\(5) & (\memoria[2][1]~regout\ & ((!\RA~combout\(4)))))
-- \memoria[34][1]~regout\ = DFFEAS(\QA~47\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~10_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(5),
	datab => \memoria[2][1]~regout\,
	datac => \WD~combout\(1),
	datad => \RA~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~47\,
	regout => \memoria[34][1]~regout\);

-- Location: LC_X4_Y4_N9
\memoria[2][1]\ : maxv_lcell
-- Equation(s):
-- \QB~47\ = (\RB~combout\(5) & ((\RB~combout\(4)) # ((\memoria[34][1]~regout\)))) # (!\RB~combout\(5) & (!\RB~combout\(4) & (memoria[2][1])))
-- \memoria[2][1]~regout\ = DFFEAS(\QB~47\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~49_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(5),
	datab => \RB~combout\(4),
	datac => \WD~combout\(1),
	datad => \memoria[34][1]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~47\,
	regout => \memoria[2][1]~regout\);

-- Location: LC_X10_Y4_N0
\memoria[18][1]\ : maxv_lcell
-- Equation(s):
-- \QA~48\ = (\RA~combout\(4) & ((\QA~47\ & ((\memoria[50][1]~regout\))) # (!\QA~47\ & (memoria[18][1])))) # (!\RA~combout\(4) & (\QA~47\))
-- \memoria[18][1]~regout\ = DFFEAS(\QA~48\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~33_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(4),
	datab => \QA~47\,
	datac => \WD~combout\(1),
	datad => \memoria[50][1]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~48\,
	regout => \memoria[18][1]~regout\);

-- Location: LC_X10_Y4_N8
\memoria[50][1]\ : maxv_lcell
-- Equation(s):
-- \QB~48\ = (\RB~combout\(4) & ((\QB~47\ & ((memoria[50][1]))) # (!\QB~47\ & (\memoria[18][1]~regout\)))) # (!\RB~combout\(4) & (((\QB~47\))))
-- \memoria[50][1]~regout\ = DFFEAS(\QB~48\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~64_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(4),
	datab => \memoria[18][1]~regout\,
	datac => \WD~combout\(1),
	datad => \QB~47\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~48\,
	regout => \memoria[50][1]~regout\);

-- Location: LC_X15_Y5_N7
\memoria[42][1]\ : maxv_lcell
-- Equation(s):
-- \QA~45\ = (\RA~combout\(5) & (((memoria[42][1]) # (\RA~combout\(4))))) # (!\RA~combout\(5) & (\memoria[10][1]~regout\ & ((!\RA~combout\(4)))))
-- \memoria[42][1]~regout\ = DFFEAS(\QA~45\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~7_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[10][1]~regout\,
	datab => \RA~combout\(5),
	datac => \WD~combout\(1),
	datad => \RA~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~45\,
	regout => \memoria[42][1]~regout\);

-- Location: LC_X15_Y5_N6
\memoria[10][1]\ : maxv_lcell
-- Equation(s):
-- \QB~45\ = (\RB~combout\(5) & ((\memoria[42][1]~regout\) # ((\RB~combout\(4))))) # (!\RB~combout\(5) & (((memoria[10][1] & !\RB~combout\(4)))))
-- \memoria[10][1]~regout\ = DFFEAS(\QB~45\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~41_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(5),
	datab => \memoria[42][1]~regout\,
	datac => \WD~combout\(1),
	datad => \RB~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~45\,
	regout => \memoria[10][1]~regout\);

-- Location: LC_X16_Y6_N3
\memoria[26][1]\ : maxv_lcell
-- Equation(s):
-- \QA~46\ = (\RA~combout\(4) & ((\QA~45\ & (\memoria[58][1]~regout\)) # (!\QA~45\ & ((memoria[26][1]))))) # (!\RA~combout\(4) & (((\QA~45\))))
-- \memoria[26][1]~regout\ = DFFEAS(\QA~46\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~29_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(4),
	datab => \memoria[58][1]~regout\,
	datac => \WD~combout\(1),
	datad => \QA~45\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~46\,
	regout => \memoria[26][1]~regout\);

-- Location: LC_X16_Y6_N7
\memoria[58][1]\ : maxv_lcell
-- Equation(s):
-- \QB~46\ = (\QB~45\ & (((memoria[58][1]) # (!\RB~combout\(4))))) # (!\QB~45\ & (\memoria[26][1]~regout\ & ((\RB~combout\(4)))))
-- \memoria[58][1]~regout\ = DFFEAS(\QB~46\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~56_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[26][1]~regout\,
	datab => \QB~45\,
	datac => \WD~combout\(1),
	datad => \RB~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~46\,
	regout => \memoria[58][1]~regout\);

-- Location: LC_X11_Y6_N4
\QA~49\ : maxv_lcell
-- Equation(s):
-- \QA~49_combout\ = (\RA~combout\(2) & (((\RA~combout\(3))))) # (!\RA~combout\(2) & ((\RA~combout\(3) & ((\QA~46\))) # (!\RA~combout\(3) & (\QA~48\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2c2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~48\,
	datab => \RA~combout\(2),
	datac => \RA~combout\(3),
	datad => \QA~46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~49_combout\);

-- Location: LC_X13_Y13_N4
\memoria[22][1]\ : maxv_lcell
-- Equation(s):
-- \QA~43\ = (\RA~combout\(5) & (((\RA~combout\(4))))) # (!\RA~combout\(5) & ((\RA~combout\(4) & ((memoria[22][1]))) # (!\RA~combout\(4) & (\memoria[6][1]~regout\))))
-- \memoria[22][1]~regout\ = DFFEAS(\QA~43\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~24_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[6][1]~regout\,
	datab => \RA~combout\(5),
	datac => \WD~combout\(1),
	datad => \RA~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~43\,
	regout => \memoria[22][1]~regout\);

-- Location: LC_X13_Y13_N5
\memoria[6][1]\ : maxv_lcell
-- Equation(s):
-- \QB~43\ = (\RB~combout\(4) & ((\memoria[22][1]~regout\) # ((\RB~combout\(5))))) # (!\RB~combout\(4) & (((memoria[6][1] & !\RB~combout\(5)))))
-- \memoria[6][1]~regout\ = DFFEAS(\QB~43\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~44_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[22][1]~regout\,
	datab => \RB~combout\(4),
	datac => \WD~combout\(1),
	datad => \RB~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~43\,
	regout => \memoria[6][1]~regout\);

-- Location: LC_X11_Y6_N3
\memoria[38][1]\ : maxv_lcell
-- Equation(s):
-- \QA~44\ = (\RA~combout\(5) & ((\QA~43\ & (\memoria[54][1]~regout\)) # (!\QA~43\ & ((memoria[38][1]))))) # (!\RA~combout\(5) & (((\QA~43\))))
-- \memoria[38][1]~regout\ = DFFEAS(\QA~44\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~9_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(5),
	datab => \memoria[54][1]~regout\,
	datac => \WD~combout\(1),
	datad => \QA~43\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~44\,
	regout => \memoria[38][1]~regout\);

-- Location: LC_X14_Y4_N2
\memoria[54][1]\ : maxv_lcell
-- Equation(s):
-- \QB~44\ = (\RB~combout\(5) & ((\QB~43\ & ((memoria[54][1]))) # (!\QB~43\ & (\memoria[38][1]~regout\)))) # (!\RB~combout\(5) & (((\QB~43\))))
-- \memoria[54][1]~regout\ = DFFEAS(\QB~44\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~61_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(5),
	datab => \memoria[38][1]~regout\,
	datac => \WD~combout\(1),
	datad => \QB~43\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~44\,
	regout => \memoria[54][1]~regout\);

-- Location: LC_X11_Y6_N5
\QA~52\ : maxv_lcell
-- Equation(s):
-- \QA~52_combout\ = (\RA~combout\(2) & ((\QA~49_combout\ & (\QA~51\)) # (!\QA~49_combout\ & ((\QA~44\))))) # (!\RA~combout\(2) & (((\QA~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bcb0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~51\,
	datab => \RA~combout\(2),
	datac => \QA~49_combout\,
	datad => \QA~44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~52_combout\);

-- Location: LC_X19_Y9_N8
\memoria[43][1]\ : maxv_lcell
-- Equation(s):
-- \QA~74\ = (\RA~combout\(5) & ((\RA~combout\(4)) # ((memoria[43][1])))) # (!\RA~combout\(5) & (!\RA~combout\(4) & ((\memoria[11][1]~regout\))))
-- \memoria[43][1]~regout\ = DFFEAS(\QA~74\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~21_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(5),
	datab => \RA~combout\(4),
	datac => \WD~combout\(1),
	datad => \memoria[11][1]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~74\,
	regout => \memoria[43][1]~regout\);

-- Location: LC_X19_Y9_N2
\memoria[11][1]\ : maxv_lcell
-- Equation(s):
-- \QB~74\ = (\RB~combout\(5) & ((\RB~combout\(4)) # ((\memoria[43][1]~regout\)))) # (!\RB~combout\(5) & (!\RB~combout\(4) & (memoria[11][1])))
-- \memoria[11][1]~regout\ = DFFEAS(\QB~74\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~43_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(5),
	datab => \RB~combout\(4),
	datac => \WD~combout\(1),
	datad => \memoria[43][1]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~74\,
	regout => \memoria[11][1]~regout\);

-- Location: LC_X19_Y7_N4
\memoria[27][1]\ : maxv_lcell
-- Equation(s):
-- \QA~75\ = (\RA~combout\(4) & ((\QA~74\ & (\memoria[59][1]~regout\)) # (!\QA~74\ & ((memoria[27][1]))))) # (!\RA~combout\(4) & (((\QA~74\))))
-- \memoria[27][1]~regout\ = DFFEAS(\QA~75\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~31_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(4),
	datab => \memoria[59][1]~regout\,
	datac => \WD~combout\(1),
	datad => \QA~74\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~75\,
	regout => \memoria[27][1]~regout\);

-- Location: LC_X19_Y7_N2
\memoria[59][1]\ : maxv_lcell
-- Equation(s):
-- \QB~75\ = (\RB~combout\(4) & ((\QB~74\ & ((memoria[59][1]))) # (!\QB~74\ & (\memoria[27][1]~regout\)))) # (!\RB~combout\(4) & (((\QB~74\))))
-- \memoria[59][1]~regout\ = DFFEAS(\QB~75\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~59_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[27][1]~regout\,
	datab => \RB~combout\(4),
	datac => \WD~combout\(1),
	datad => \QB~74\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~75\,
	regout => \memoria[59][1]~regout\);

-- Location: LC_X15_Y10_N1
\memoria[31][1]\ : maxv_lcell
-- Equation(s):
-- \QA~81\ = (\RA~combout\(5) & (\RA~combout\(4))) # (!\RA~combout\(5) & ((\RA~combout\(4) & (memoria[31][1])) # (!\RA~combout\(4) & ((\memoria[15][1]~regout\)))))
-- \memoria[31][1]~regout\ = DFFEAS(\QA~81\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~39_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(5),
	datab => \RA~combout\(4),
	datac => \WD~combout\(1),
	datad => \memoria[15][1]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~81\,
	regout => \memoria[31][1]~regout\);

-- Location: LC_X18_Y10_N2
\memoria[15][1]\ : maxv_lcell
-- Equation(s):
-- \QB~81\ = (\RB~combout\(5) & (\RB~combout\(4))) # (!\RB~combout\(5) & ((\RB~combout\(4) & ((\memoria[31][1]~regout\))) # (!\RB~combout\(4) & (memoria[15][1]))))
-- \memoria[15][1]~regout\ = DFFEAS(\QB~81\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~55_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(5),
	datab => \RB~combout\(4),
	datac => \WD~combout\(1),
	datad => \memoria[31][1]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~81\,
	regout => \memoria[15][1]~regout\);

-- Location: LC_X9_Y10_N5
\memoria[47][1]\ : maxv_lcell
-- Equation(s):
-- \QA~82\ = (\RA~combout\(5) & ((\QA~81\ & (\memoria[63][1]~regout\)) # (!\QA~81\ & ((memoria[47][1]))))) # (!\RA~combout\(5) & (((\QA~81\))))
-- \memoria[47][1]~regout\ = DFFEAS(\QA~82\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~23_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(5),
	datab => \memoria[63][1]~regout\,
	datac => \WD~combout\(1),
	datad => \QA~81\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~82\,
	regout => \memoria[47][1]~regout\);

-- Location: LC_X12_Y8_N8
\memoria[63][1]\ : maxv_lcell
-- Equation(s):
-- \QB~82\ = (\RB~combout\(5) & ((\QB~81\ & ((memoria[63][1]))) # (!\QB~81\ & (\memoria[47][1]~regout\)))) # (!\RB~combout\(5) & (((\QB~81\))))
-- \memoria[63][1]~regout\ = DFFEAS(\QB~82\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~71_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(5),
	datab => \memoria[47][1]~regout\,
	datac => \WD~combout\(1),
	datad => \QB~81\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~82\,
	regout => \memoria[63][1]~regout\);

-- Location: LC_X10_Y5_N4
\memoria[35][1]\ : maxv_lcell
-- Equation(s):
-- \QA~78\ = (\RA~combout\(5) & (((memoria[35][1]) # (\RA~combout\(4))))) # (!\RA~combout\(5) & (\memoria[3][1]~regout\ & ((!\RA~combout\(4)))))
-- \memoria[35][1]~regout\ = DFFEAS(\QA~78\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~22_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[3][1]~regout\,
	datab => \RA~combout\(5),
	datac => \WD~combout\(1),
	datad => \RA~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~78\,
	regout => \memoria[35][1]~regout\);

-- Location: LC_X7_Y5_N7
\memoria[3][1]\ : maxv_lcell
-- Equation(s):
-- \QB~78\ = (\RB~combout\(4) & (((\RB~combout\(5))))) # (!\RB~combout\(4) & ((\RB~combout\(5) & (\memoria[35][1]~regout\)) # (!\RB~combout\(5) & ((memoria[3][1])))))
-- \memoria[3][1]~regout\ = DFFEAS(\QB~78\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~51_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(4),
	datab => \memoria[35][1]~regout\,
	datac => \WD~combout\(1),
	datad => \RB~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~78\,
	regout => \memoria[3][1]~regout\);

-- Location: LC_X4_Y6_N5
\memoria[19][1]\ : maxv_lcell
-- Equation(s):
-- \QA~79\ = (\QA~78\ & (((\memoria[51][1]~regout\)) # (!\RA~combout\(4)))) # (!\QA~78\ & (\RA~combout\(4) & (memoria[19][1])))
-- \memoria[19][1]~regout\ = DFFEAS(\QA~79\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~35_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QA~78\,
	datab => \RA~combout\(4),
	datac => \WD~combout\(1),
	datad => \memoria[51][1]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~79\,
	regout => \memoria[19][1]~regout\);

-- Location: LC_X7_Y5_N8
\memoria[51][1]\ : maxv_lcell
-- Equation(s):
-- \QB~79\ = (\RB~combout\(4) & ((\QB~78\ & (memoria[51][1])) # (!\QB~78\ & ((\memoria[19][1]~regout\))))) # (!\RB~combout\(4) & (\QB~78\))
-- \memoria[51][1]~regout\ = DFFEAS(\QB~79\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~67_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(4),
	datab => \QB~78\,
	datac => \WD~combout\(1),
	datad => \memoria[19][1]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~79\,
	regout => \memoria[51][1]~regout\);

-- Location: LC_X11_Y13_N8
\memoria[23][1]\ : maxv_lcell
-- Equation(s):
-- \QA~76\ = (\RA~combout\(4) & ((\RA~combout\(5)) # ((memoria[23][1])))) # (!\RA~combout\(4) & (!\RA~combout\(5) & ((\memoria[7][1]~regout\))))
-- \memoria[23][1]~regout\ = DFFEAS(\QA~76\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~27_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(4),
	datab => \RA~combout\(5),
	datac => \WD~combout\(1),
	datad => \memoria[7][1]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~76\,
	regout => \memoria[23][1]~regout\);

-- Location: LC_X11_Y13_N3
\memoria[7][1]\ : maxv_lcell
-- Equation(s):
-- \QB~76\ = (\RB~combout\(4) & ((\memoria[23][1]~regout\) # ((\RB~combout\(5))))) # (!\RB~combout\(4) & (((memoria[7][1] & !\RB~combout\(5)))))
-- \memoria[7][1]~regout\ = DFFEAS(\QB~76\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~47_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[23][1]~regout\,
	datab => \RB~combout\(4),
	datac => \WD~combout\(1),
	datad => \RB~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~76\,
	regout => \memoria[7][1]~regout\);

-- Location: LC_X11_Y11_N6
\memoria[39][1]\ : maxv_lcell
-- Equation(s):
-- \QA~77\ = (\QA~76\ & (((\memoria[55][1]~regout\)) # (!\RA~combout\(5)))) # (!\QA~76\ & (\RA~combout\(5) & (memoria[39][1])))
-- \memoria[39][1]~regout\ = DFFEAS(\QA~77\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~19_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QA~76\,
	datab => \RA~combout\(5),
	datac => \WD~combout\(1),
	datad => \memoria[55][1]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~77\,
	regout => \memoria[39][1]~regout\);

-- Location: LC_X11_Y11_N9
\memoria[55][1]\ : maxv_lcell
-- Equation(s):
-- \QB~77\ = (\RB~combout\(5) & ((\QB~76\ & ((memoria[55][1]))) # (!\QB~76\ & (\memoria[39][1]~regout\)))) # (!\RB~combout\(5) & (((\QB~76\))))
-- \memoria[55][1]~regout\ = DFFEAS(\QB~77\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~63_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[39][1]~regout\,
	datab => \RB~combout\(5),
	datac => \WD~combout\(1),
	datad => \QB~76\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~77\,
	regout => \memoria[55][1]~regout\);

-- Location: LC_X7_Y12_N5
\QA~80\ : maxv_lcell
-- Equation(s):
-- \QA~80_combout\ = (\RA~combout\(2) & (((\RA~combout\(3)) # (\QA~77\)))) # (!\RA~combout\(2) & (\QA~79\ & (!\RA~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cec2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~79\,
	datab => \RA~combout\(2),
	datac => \RA~combout\(3),
	datad => \QA~77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~80_combout\);

-- Location: LC_X10_Y11_N8
\QA~83\ : maxv_lcell
-- Equation(s):
-- \QA~83_combout\ = (\RA~combout\(3) & ((\QA~80_combout\ & ((\QA~82\))) # (!\QA~80_combout\ & (\QA~75\)))) # (!\RA~combout\(3) & (((\QA~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~75\,
	datab => \QA~82\,
	datac => \RA~combout\(3),
	datad => \QA~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~83_combout\);

-- Location: LC_X7_Y7_N4
\memoria[21][1]\ : maxv_lcell
-- Equation(s):
-- \QA~55\ = (\RA~combout\(4) & ((\RA~combout\(5)) # ((memoria[21][1])))) # (!\RA~combout\(4) & (!\RA~combout\(5) & ((\memoria[5][1]~regout\))))
-- \memoria[21][1]~regout\ = DFFEAS(\QA~55\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~25_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(4),
	datab => \RA~combout\(5),
	datac => \WD~combout\(1),
	datad => \memoria[5][1]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~55\,
	regout => \memoria[21][1]~regout\);

-- Location: LC_X7_Y7_N9
\memoria[5][1]\ : maxv_lcell
-- Equation(s):
-- \QB~55\ = (\RB~combout\(4) & ((\memoria[21][1]~regout\) # ((\RB~combout\(5))))) # (!\RB~combout\(4) & (((memoria[5][1] & !\RB~combout\(5)))))
-- \memoria[5][1]~regout\ = DFFEAS(\QB~55\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~45_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[21][1]~regout\,
	datab => \RB~combout\(4),
	datac => \WD~combout\(1),
	datad => \RB~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~55\,
	regout => \memoria[5][1]~regout\);

-- Location: LC_X14_Y7_N7
\memoria[37][1]\ : maxv_lcell
-- Equation(s):
-- \QA~56\ = (\RA~combout\(5) & ((\QA~55\ & ((\memoria[53][1]~regout\))) # (!\QA~55\ & (memoria[37][1])))) # (!\RA~combout\(5) & (\QA~55\))
-- \memoria[37][1]~regout\ = DFFEAS(\QA~56\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~1_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(5),
	datab => \QA~55\,
	datac => \WD~combout\(1),
	datad => \memoria[53][1]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~56\,
	regout => \memoria[37][1]~regout\);

-- Location: LC_X14_Y7_N8
\memoria[53][1]\ : maxv_lcell
-- Equation(s):
-- \QB~56\ = (\QB~55\ & (((memoria[53][1]) # (!\RB~combout\(5))))) # (!\QB~55\ & (\memoria[37][1]~regout\ & ((\RB~combout\(5)))))
-- \memoria[53][1]~regout\ = DFFEAS(\QB~56\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~60_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QB~55\,
	datab => \memoria[37][1]~regout\,
	datac => \WD~combout\(1),
	datad => \RB~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~56\,
	regout => \memoria[53][1]~regout\);

-- Location: LC_X13_Y8_N8
\memoria[1][1]\ : maxv_lcell
-- Equation(s):
-- \QB~57\ = (\RB~combout\(5) & ((\memoria[33][1]~regout\) # ((\RB~combout\(4))))) # (!\RB~combout\(5) & (((memoria[1][1] & !\RB~combout\(4)))))
-- \memoria[1][1]~regout\ = DFFEAS(\QB~57\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~48_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(5),
	datab => \memoria[33][1]~regout\,
	datac => \WD~combout\(1),
	datad => \RB~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~57\,
	regout => \memoria[1][1]~regout\);

-- Location: LC_X13_Y8_N0
\memoria[33][1]\ : maxv_lcell
-- Equation(s):
-- \QA~57\ = (\RA~combout\(4) & (((\RA~combout\(5))))) # (!\RA~combout\(4) & ((\RA~combout\(5) & ((memoria[33][1]))) # (!\RA~combout\(5) & (\memoria[1][1]~regout\))))
-- \memoria[33][1]~regout\ = DFFEAS(\QA~57\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~4_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[1][1]~regout\,
	datab => \RA~combout\(4),
	datac => \WD~combout\(1),
	datad => \RA~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~57\,
	regout => \memoria[33][1]~regout\);

-- Location: LC_X15_Y9_N9
\memoria[17][1]\ : maxv_lcell
-- Equation(s):
-- \QA~58\ = (\RA~combout\(4) & ((\QA~57\ & (\memoria[49][1]~regout\)) # (!\QA~57\ & ((memoria[17][1]))))) # (!\RA~combout\(4) & (((\QA~57\))))
-- \memoria[17][1]~regout\ = DFFEAS(\QA~58\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~32_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[49][1]~regout\,
	datab => \RA~combout\(4),
	datac => \WD~combout\(1),
	datad => \QA~57\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~58\,
	regout => \memoria[17][1]~regout\);

-- Location: LC_X15_Y9_N8
\memoria[49][1]\ : maxv_lcell
-- Equation(s):
-- \QB~58\ = (\RB~combout\(4) & ((\QB~57\ & (memoria[49][1])) # (!\QB~57\ & ((\memoria[17][1]~regout\))))) # (!\RB~combout\(4) & (\QB~57\))
-- \memoria[49][1]~regout\ = DFFEAS(\QB~58\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~65_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(4),
	datab => \QB~57\,
	datac => \WD~combout\(1),
	datad => \memoria[17][1]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~58\,
	regout => \memoria[49][1]~regout\);

-- Location: LC_X14_Y7_N0
\QA~59\ : maxv_lcell
-- Equation(s):
-- \QA~59_combout\ = (\RA~combout\(3) & (\RA~combout\(2))) # (!\RA~combout\(3) & ((\RA~combout\(2) & (\QA~56\)) # (!\RA~combout\(2) & ((\QA~58\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RA~combout\(3),
	datab => \RA~combout\(2),
	datac => \QA~56\,
	datad => \QA~58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~59_combout\);

-- Location: LC_X15_Y6_N8
\memoria[29][1]\ : maxv_lcell
-- Equation(s):
-- \QA~60\ = (\RA~combout\(5) & (\RA~combout\(4))) # (!\RA~combout\(5) & ((\RA~combout\(4) & (memoria[29][1])) # (!\RA~combout\(4) & ((\memoria[13][1]~regout\)))))
-- \memoria[29][1]~regout\ = DFFEAS(\QA~60\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~37_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(5),
	datab => \RA~combout\(4),
	datac => \WD~combout\(1),
	datad => \memoria[13][1]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~60\,
	regout => \memoria[29][1]~regout\);

-- Location: LC_X15_Y6_N9
\memoria[13][1]\ : maxv_lcell
-- Equation(s):
-- \QB~60\ = (\RB~combout\(4) & ((\memoria[29][1]~regout\) # ((\RB~combout\(5))))) # (!\RB~combout\(4) & (((memoria[13][1] & !\RB~combout\(5)))))
-- \memoria[13][1]~regout\ = DFFEAS(\QB~60\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~53_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[29][1]~regout\,
	datab => \RB~combout\(4),
	datac => \WD~combout\(1),
	datad => \RB~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~60\,
	regout => \memoria[13][1]~regout\);

-- Location: LC_X14_Y6_N5
\memoria[45][1]\ : maxv_lcell
-- Equation(s):
-- \QA~61\ = (\QA~60\ & ((\memoria[61][1]~regout\) # ((!\RA~combout\(5))))) # (!\QA~60\ & (((memoria[45][1] & \RA~combout\(5)))))
-- \memoria[45][1]~regout\ = DFFEAS(\QA~61\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~5_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[61][1]~regout\,
	datab => \QA~60\,
	datac => \WD~combout\(1),
	datad => \RA~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~61\,
	regout => \memoria[45][1]~regout\);

-- Location: LC_X14_Y6_N4
\memoria[61][1]\ : maxv_lcell
-- Equation(s):
-- \QB~61\ = (\RB~combout\(5) & ((\QB~60\ & ((memoria[61][1]))) # (!\QB~60\ & (\memoria[45][1]~regout\)))) # (!\RB~combout\(5) & (((\QB~60\))))
-- \memoria[61][1]~regout\ = DFFEAS(\QB~61\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~68_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[45][1]~regout\,
	datab => \RB~combout\(5),
	datac => \WD~combout\(1),
	datad => \QB~60\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~61\,
	regout => \memoria[61][1]~regout\);

-- Location: LC_X19_Y11_N9
\memoria[41][1]\ : maxv_lcell
-- Equation(s):
-- \QA~53\ = (\RA~combout\(5) & ((\RA~combout\(4)) # ((memoria[41][1])))) # (!\RA~combout\(5) & (!\RA~combout\(4) & ((\memoria[9][1]~regout\))))
-- \memoria[41][1]~regout\ = DFFEAS(\QA~53\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~3_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(5),
	datab => \RA~combout\(4),
	datac => \WD~combout\(1),
	datad => \memoria[9][1]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~53\,
	regout => \memoria[41][1]~regout\);

-- Location: LC_X19_Y11_N8
\memoria[9][1]\ : maxv_lcell
-- Equation(s):
-- \QB~53\ = (\RB~combout\(5) & ((\RB~combout\(4)) # ((\memoria[41][1]~regout\)))) # (!\RB~combout\(5) & (!\RB~combout\(4) & (memoria[9][1])))
-- \memoria[9][1]~regout\ = DFFEAS(\QB~53\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~40_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(5),
	datab => \RB~combout\(4),
	datac => \WD~combout\(1),
	datad => \memoria[41][1]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~53\,
	regout => \memoria[9][1]~regout\);

-- Location: LC_X17_Y9_N5
\memoria[25][1]\ : maxv_lcell
-- Equation(s):
-- \QA~54\ = (\QA~53\ & ((\memoria[57][1]~regout\) # ((!\RA~combout\(4))))) # (!\QA~53\ & (((memoria[25][1] & \RA~combout\(4)))))
-- \memoria[25][1]~regout\ = DFFEAS(\QA~54\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~28_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QA~53\,
	datab => \memoria[57][1]~regout\,
	datac => \WD~combout\(1),
	datad => \RA~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~54\,
	regout => \memoria[25][1]~regout\);

-- Location: LC_X17_Y9_N9
\memoria[57][1]\ : maxv_lcell
-- Equation(s):
-- \QB~54\ = (\RB~combout\(4) & ((\QB~53\ & ((memoria[57][1]))) # (!\QB~53\ & (\memoria[25][1]~regout\)))) # (!\RB~combout\(4) & (((\QB~53\))))
-- \memoria[57][1]~regout\ = DFFEAS(\QB~54\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~57_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[25][1]~regout\,
	datab => \RB~combout\(4),
	datac => \WD~combout\(1),
	datad => \QB~53\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~54\,
	regout => \memoria[57][1]~regout\);

-- Location: LC_X15_Y8_N1
\QA~62\ : maxv_lcell
-- Equation(s):
-- \QA~62_combout\ = (\QA~59_combout\ & ((\QA~61\) # ((!\RA~combout\(3))))) # (!\QA~59_combout\ & (((\RA~combout\(3) & \QA~54\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "da8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~59_combout\,
	datab => \QA~61\,
	datac => \RA~combout\(3),
	datad => \QA~54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~62_combout\);

-- Location: LC_X7_Y6_N4
\memoria[40][1]\ : maxv_lcell
-- Equation(s):
-- \QA~65\ = (\RA~combout\(4) & (\RA~combout\(5))) # (!\RA~combout\(4) & ((\RA~combout\(5) & (memoria[40][1])) # (!\RA~combout\(5) & ((\memoria[8][1]~regout\)))))
-- \memoria[40][1]~regout\ = DFFEAS(\QA~65\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~13_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(4),
	datab => \RA~combout\(5),
	datac => \WD~combout\(1),
	datad => \memoria[8][1]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~65\,
	regout => \memoria[40][1]~regout\);

-- Location: LC_X7_Y6_N2
\memoria[8][1]\ : maxv_lcell
-- Equation(s):
-- \QB~65\ = (\RB~combout\(4) & (((\RB~combout\(5))))) # (!\RB~combout\(4) & ((\RB~combout\(5) & (\memoria[40][1]~regout\)) # (!\RB~combout\(5) & ((memoria[8][1])))))
-- \memoria[8][1]~regout\ = DFFEAS(\QB~65\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~42_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[40][1]~regout\,
	datab => \RB~combout\(4),
	datac => \WD~combout\(1),
	datad => \RB~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~65\,
	regout => \memoria[8][1]~regout\);

-- Location: LC_X9_Y8_N3
\memoria[24][1]\ : maxv_lcell
-- Equation(s):
-- \QA~66\ = (\QA~65\ & ((\memoria[56][1]~regout\) # ((!\RA~combout\(4))))) # (!\QA~65\ & (((memoria[24][1] & \RA~combout\(4)))))
-- \memoria[24][1]~regout\ = DFFEAS(\QA~66\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~30_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QA~65\,
	datab => \memoria[56][1]~regout\,
	datac => \WD~combout\(1),
	datad => \RA~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~66\,
	regout => \memoria[24][1]~regout\);

-- Location: LC_X9_Y8_N1
\memoria[56][1]\ : maxv_lcell
-- Equation(s):
-- \QB~66\ = (\RB~combout\(4) & ((\QB~65\ & ((memoria[56][1]))) # (!\QB~65\ & (\memoria[24][1]~regout\)))) # (!\RB~combout\(4) & (((\QB~65\))))
-- \memoria[56][1]~regout\ = DFFEAS(\QB~66\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~58_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[24][1]~regout\,
	datab => \RB~combout\(4),
	datac => \WD~combout\(1),
	datad => \QB~65\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~66\,
	regout => \memoria[56][1]~regout\);

-- Location: LC_X8_Y7_N5
\memoria[32][1]\ : maxv_lcell
-- Equation(s):
-- \QA~67\ = (\RA~combout\(4) & (\RA~combout\(5))) # (!\RA~combout\(4) & ((\RA~combout\(5) & (memoria[32][1])) # (!\RA~combout\(5) & ((\memoria[0][1]~regout\)))))
-- \memoria[32][1]~regout\ = DFFEAS(\QA~67\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~16_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(4),
	datab => \RA~combout\(5),
	datac => \WD~combout\(1),
	datad => \memoria[0][1]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~67\,
	regout => \memoria[32][1]~regout\);

-- Location: LC_X8_Y9_N7
\memoria[0][1]\ : maxv_lcell
-- Equation(s):
-- \QB~67\ = (\RB~combout\(5) & ((\RB~combout\(4)) # ((\memoria[32][1]~regout\)))) # (!\RB~combout\(5) & (!\RB~combout\(4) & (memoria[0][1])))
-- \memoria[0][1]~regout\ = DFFEAS(\QB~67\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~50_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(5),
	datab => \RB~combout\(4),
	datac => \WD~combout\(1),
	datad => \memoria[32][1]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~67\,
	regout => \memoria[0][1]~regout\);

-- Location: LC_X8_Y9_N8
\memoria[16][1]\ : maxv_lcell
-- Equation(s):
-- \QA~68\ = (\RA~combout\(4) & ((\QA~67\ & (\memoria[48][1]~regout\)) # (!\QA~67\ & ((memoria[16][1]))))) # (!\RA~combout\(4) & (((\QA~67\))))
-- \memoria[16][1]~regout\ = DFFEAS(\QA~68\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~34_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(4),
	datab => \memoria[48][1]~regout\,
	datac => \WD~combout\(1),
	datad => \QA~67\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~68\,
	regout => \memoria[16][1]~regout\);

-- Location: LC_X10_Y11_N6
\memoria[48][1]\ : maxv_lcell
-- Equation(s):
-- \QB~68\ = (\QB~67\ & (((memoria[48][1]) # (!\RB~combout\(4))))) # (!\QB~67\ & (\memoria[16][1]~regout\ & ((\RB~combout\(4)))))
-- \memoria[48][1]~regout\ = DFFEAS(\QB~68\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~66_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[16][1]~regout\,
	datab => \QB~67\,
	datac => \WD~combout\(1),
	datad => \RB~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~68\,
	regout => \memoria[48][1]~regout\);

-- Location: LC_X11_Y8_N6
\QA~69\ : maxv_lcell
-- Equation(s):
-- \QA~69_combout\ = (\RA~combout\(2) & (((\RA~combout\(3))))) # (!\RA~combout\(2) & ((\RA~combout\(3) & (\QA~66\)) # (!\RA~combout\(3) & ((\QA~68\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~66\,
	datab => \RA~combout\(2),
	datac => \QA~68\,
	datad => \RA~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~69_combout\);

-- Location: LC_X4_Y12_N2
\memoria[20][1]\ : maxv_lcell
-- Equation(s):
-- \QA~63\ = (\RA~combout\(5) & (((\RA~combout\(4))))) # (!\RA~combout\(5) & ((\RA~combout\(4) & ((memoria[20][1]))) # (!\RA~combout\(4) & (\memoria[4][1]~regout\))))
-- \memoria[20][1]~regout\ = DFFEAS(\QA~63\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~26_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[4][1]~regout\,
	datab => \RA~combout\(5),
	datac => \WD~combout\(1),
	datad => \RA~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~63\,
	regout => \memoria[20][1]~regout\);

-- Location: LC_X4_Y12_N4
\memoria[4][1]\ : maxv_lcell
-- Equation(s):
-- \QB~63\ = (\RB~combout\(4) & ((\memoria[20][1]~regout\) # ((\RB~combout\(5))))) # (!\RB~combout\(4) & (((memoria[4][1] & !\RB~combout\(5)))))
-- \memoria[4][1]~regout\ = DFFEAS(\QB~63\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~46_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(4),
	datab => \memoria[20][1]~regout\,
	datac => \WD~combout\(1),
	datad => \RB~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~63\,
	regout => \memoria[4][1]~regout\);

-- Location: LC_X10_Y8_N6
\memoria[36][1]\ : maxv_lcell
-- Equation(s):
-- \QA~64\ = (\QA~63\ & ((\memoria[52][1]~regout\) # ((!\RA~combout\(5))))) # (!\QA~63\ & (((memoria[36][1] & \RA~combout\(5)))))
-- \memoria[36][1]~regout\ = DFFEAS(\QA~64\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~15_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[52][1]~regout\,
	datab => \QA~63\,
	datac => \WD~combout\(1),
	datad => \RA~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~64\,
	regout => \memoria[36][1]~regout\);

-- Location: LC_X10_Y8_N4
\memoria[52][1]\ : maxv_lcell
-- Equation(s):
-- \QB~64\ = (\QB~63\ & (((memoria[52][1]) # (!\RB~combout\(5))))) # (!\QB~63\ & (\memoria[36][1]~regout\ & ((\RB~combout\(5)))))
-- \memoria[52][1]~regout\ = DFFEAS(\QB~64\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~62_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[36][1]~regout\,
	datab => \QB~63\,
	datac => \WD~combout\(1),
	datad => \RB~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~64\,
	regout => \memoria[52][1]~regout\);

-- Location: LC_X13_Y5_N7
\memoria[28][1]\ : maxv_lcell
-- Equation(s):
-- \QA~70\ = (\RA~combout\(4) & ((\RA~combout\(5)) # ((memoria[28][1])))) # (!\RA~combout\(4) & (!\RA~combout\(5) & ((\memoria[12][1]~regout\))))
-- \memoria[28][1]~regout\ = DFFEAS(\QA~70\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~38_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(4),
	datab => \RA~combout\(5),
	datac => \WD~combout\(1),
	datad => \memoria[12][1]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~70\,
	regout => \memoria[28][1]~regout\);

-- Location: LC_X13_Y5_N9
\memoria[12][1]\ : maxv_lcell
-- Equation(s):
-- \QB~70\ = (\RB~combout\(5) & (((\RB~combout\(4))))) # (!\RB~combout\(5) & ((\RB~combout\(4) & (\memoria[28][1]~regout\)) # (!\RB~combout\(4) & ((memoria[12][1])))))
-- \memoria[12][1]~regout\ = DFFEAS(\QB~70\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~54_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(5),
	datab => \memoria[28][1]~regout\,
	datac => \WD~combout\(1),
	datad => \RB~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~70\,
	regout => \memoria[12][1]~regout\);

-- Location: LC_X13_Y4_N6
\memoria[44][1]\ : maxv_lcell
-- Equation(s):
-- \QA~71\ = (\QA~70\ & ((\memoria[60][1]~regout\) # ((!\RA~combout\(5))))) # (!\QA~70\ & (((memoria[44][1] & \RA~combout\(5)))))
-- \memoria[44][1]~regout\ = DFFEAS(\QA~71\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~17_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QA~70\,
	datab => \memoria[60][1]~regout\,
	datac => \WD~combout\(1),
	datad => \RA~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~71\,
	regout => \memoria[44][1]~regout\);

-- Location: LC_X13_Y4_N2
\memoria[60][1]\ : maxv_lcell
-- Equation(s):
-- \QB~71\ = (\QB~70\ & (((memoria[60][1]) # (!\RB~combout\(5))))) # (!\QB~70\ & (\memoria[44][1]~regout\ & ((\RB~combout\(5)))))
-- \memoria[60][1]~regout\ = DFFEAS(\QB~71\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~70_combout\, \WD~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[44][1]~regout\,
	datab => \QB~70\,
	datac => \WD~combout\(1),
	datad => \RB~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~71\,
	regout => \memoria[60][1]~regout\);

-- Location: LC_X11_Y8_N2
\QA~72\ : maxv_lcell
-- Equation(s):
-- \QA~72_combout\ = (\QA~69_combout\ & (((\QA~71\) # (!\RA~combout\(2))))) # (!\QA~69_combout\ & (\QA~64\ & (\RA~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea4a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~69_combout\,
	datab => \QA~64\,
	datac => \RA~combout\(2),
	datad => \QA~71\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~72_combout\);

-- Location: LC_X11_Y8_N5
\QA~73\ : maxv_lcell
-- Equation(s):
-- \QA~73_combout\ = (\RA~combout\(1) & (((\RA~combout\(0))))) # (!\RA~combout\(1) & ((\RA~combout\(0) & (\QA~62_combout\)) # (!\RA~combout\(0) & ((\QA~72_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e3e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~62_combout\,
	datab => \RA~combout\(1),
	datac => \RA~combout\(0),
	datad => \QA~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~73_combout\);

-- Location: LC_X11_Y11_N7
\QA~84\ : maxv_lcell
-- Equation(s):
-- \QA~84_combout\ = (\RA~combout\(1) & ((\QA~73_combout\ & ((\QA~83_combout\))) # (!\QA~73_combout\ & (\QA~52_combout\)))) # (!\RA~combout\(1) & (((\QA~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~52_combout\,
	datab => \RA~combout\(1),
	datac => \QA~83_combout\,
	datad => \QA~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~84_combout\);

-- Location: LC_X11_Y11_N8
\QA~85\ : maxv_lcell
-- Equation(s):
-- \QA~85_combout\ = (((\readA~combout\ & \QA~84_combout\)))

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
	datac => \readA~combout\,
	datad => \QA~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~85_combout\);

-- Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WD[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_WD(2),
	combout => \WD~combout\(2));

-- Location: LC_X17_Y12_N5
\memoria[4][2]\ : maxv_lcell
-- Equation(s):
-- \QB~100\ = (\RB~combout\(1) & (((\RB~combout\(0))))) # (!\RB~combout\(1) & ((\RB~combout\(0) & (\memoria[5][2]~regout\)) # (!\RB~combout\(0) & ((memoria[4][2])))))
-- \memoria[4][2]~regout\ = DFFEAS(\QB~100\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~46_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(1),
	datab => \memoria[5][2]~regout\,
	datac => \WD~combout\(2),
	datad => \RB~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~100\,
	regout => \memoria[4][2]~regout\);

-- Location: LC_X17_Y12_N7
\memoria[5][2]\ : maxv_lcell
-- Equation(s):
-- \QA~100\ = (\RA~combout\(0) & (((memoria[5][2]) # (\RA~combout\(1))))) # (!\RA~combout\(0) & (\memoria[4][2]~regout\ & ((!\RA~combout\(1)))))
-- \memoria[5][2]~regout\ = DFFEAS(\QA~100\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~45_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[4][2]~regout\,
	datab => \RA~combout\(0),
	datac => \WD~combout\(2),
	datad => \RA~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~100\,
	regout => \memoria[5][2]~regout\);

-- Location: LC_X11_Y9_N0
\memoria[6][2]\ : maxv_lcell
-- Equation(s):
-- \QA~101\ = (\RA~combout\(1) & ((\QA~100\ & (\memoria[7][2]~regout\)) # (!\QA~100\ & ((memoria[6][2]))))) # (!\RA~combout\(1) & (((\QA~100\))))
-- \memoria[6][2]~regout\ = DFFEAS(\QA~101\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~44_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(1),
	datab => \memoria[7][2]~regout\,
	datac => \WD~combout\(2),
	datad => \QA~100\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~101\,
	regout => \memoria[6][2]~regout\);

-- Location: LC_X11_Y9_N9
\memoria[7][2]\ : maxv_lcell
-- Equation(s):
-- \QB~101\ = (\QB~100\ & (((memoria[7][2]) # (!\RB~combout\(1))))) # (!\QB~100\ & (\memoria[6][2]~regout\ & ((\RB~combout\(1)))))
-- \memoria[7][2]~regout\ = DFFEAS(\QB~101\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~47_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QB~100\,
	datab => \memoria[6][2]~regout\,
	datac => \WD~combout\(2),
	datad => \RB~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~101\,
	regout => \memoria[7][2]~regout\);

-- Location: LC_X6_Y12_N9
\memoria[22][2]\ : maxv_lcell
-- Equation(s):
-- \QA~98\ = (\RA~combout\(0) & (((\RA~combout\(1))))) # (!\RA~combout\(0) & ((\RA~combout\(1) & ((memoria[22][2]))) # (!\RA~combout\(1) & (\memoria[20][2]~regout\))))
-- \memoria[22][2]~regout\ = DFFEAS(\QA~98\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~24_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[20][2]~regout\,
	datab => \RA~combout\(0),
	datac => \WD~combout\(2),
	datad => \RA~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~98\,
	regout => \memoria[22][2]~regout\);

-- Location: LC_X6_Y12_N3
\memoria[20][2]\ : maxv_lcell
-- Equation(s):
-- \QB~98\ = (\RB~combout\(1) & ((\memoria[22][2]~regout\) # ((\RB~combout\(0))))) # (!\RB~combout\(1) & (((memoria[20][2] & !\RB~combout\(0)))))
-- \memoria[20][2]~regout\ = DFFEAS(\QB~98\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~26_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(1),
	datab => \memoria[22][2]~regout\,
	datac => \WD~combout\(2),
	datad => \RB~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~98\,
	regout => \memoria[20][2]~regout\);

-- Location: LC_X18_Y12_N9
\memoria[21][2]\ : maxv_lcell
-- Equation(s):
-- \QA~99\ = (\RA~combout\(0) & ((\QA~98\ & ((\memoria[23][2]~regout\))) # (!\QA~98\ & (memoria[21][2])))) # (!\RA~combout\(0) & (\QA~98\))
-- \memoria[21][2]~regout\ = DFFEAS(\QA~99\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~25_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(0),
	datab => \QA~98\,
	datac => \WD~combout\(2),
	datad => \memoria[23][2]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~99\,
	regout => \memoria[21][2]~regout\);

-- Location: LC_X18_Y12_N3
\memoria[23][2]\ : maxv_lcell
-- Equation(s):
-- \QB~99\ = (\QB~98\ & (((memoria[23][2]) # (!\RB~combout\(0))))) # (!\QB~98\ & (\memoria[21][2]~regout\ & ((\RB~combout\(0)))))
-- \memoria[23][2]~regout\ = DFFEAS(\QB~99\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~27_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QB~98\,
	datab => \memoria[21][2]~regout\,
	datac => \WD~combout\(2),
	datad => \RB~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~99\,
	regout => \memoria[23][2]~regout\);

-- Location: LC_X17_Y10_N4
\QA~102\ : maxv_lcell
-- Equation(s):
-- \QA~102_combout\ = (\RA~combout\(4) & (((\RA~combout\(5)) # (\QA~99\)))) # (!\RA~combout\(4) & (\QA~101\ & (!\RA~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cec2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~101\,
	datab => \RA~combout\(4),
	datac => \RA~combout\(5),
	datad => \QA~99\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~102_combout\);

-- Location: LC_X6_Y10_N7
\memoria[37][2]\ : maxv_lcell
-- Equation(s):
-- \QA~96\ = (\RA~combout\(0) & (((memoria[37][2]) # (\RA~combout\(1))))) # (!\RA~combout\(0) & (\memoria[36][2]~regout\ & ((!\RA~combout\(1)))))
-- \memoria[37][2]~regout\ = DFFEAS(\QA~96\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~1_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[36][2]~regout\,
	datab => \RA~combout\(0),
	datac => \WD~combout\(2),
	datad => \RA~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~96\,
	regout => \memoria[37][2]~regout\);

-- Location: LC_X6_Y10_N3
\memoria[36][2]\ : maxv_lcell
-- Equation(s):
-- \QB~96\ = (\RB~combout\(1) & (((\RB~combout\(0))))) # (!\RB~combout\(1) & ((\RB~combout\(0) & (\memoria[37][2]~regout\)) # (!\RB~combout\(0) & ((memoria[36][2])))))
-- \memoria[36][2]~regout\ = DFFEAS(\QB~96\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~15_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(1),
	datab => \memoria[37][2]~regout\,
	datac => \WD~combout\(2),
	datad => \RB~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~96\,
	regout => \memoria[36][2]~regout\);

-- Location: LC_X7_Y10_N9
\memoria[38][2]\ : maxv_lcell
-- Equation(s):
-- \QA~97\ = (\RA~combout\(1) & ((\QA~96\ & ((\memoria[39][2]~regout\))) # (!\QA~96\ & (memoria[38][2])))) # (!\RA~combout\(1) & (\QA~96\))
-- \memoria[38][2]~regout\ = DFFEAS(\QA~97\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~9_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(1),
	datab => \QA~96\,
	datac => \WD~combout\(2),
	datad => \memoria[39][2]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~97\,
	regout => \memoria[38][2]~regout\);

-- Location: LC_X15_Y11_N5
\memoria[39][2]\ : maxv_lcell
-- Equation(s):
-- \QB~97\ = (\RB~combout\(1) & ((\QB~96\ & ((memoria[39][2]))) # (!\QB~96\ & (\memoria[38][2]~regout\)))) # (!\RB~combout\(1) & (((\QB~96\))))
-- \memoria[39][2]~regout\ = DFFEAS(\QB~97\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~19_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(1),
	datab => \memoria[38][2]~regout\,
	datac => \WD~combout\(2),
	datad => \QB~96\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~97\,
	regout => \memoria[39][2]~regout\);

-- Location: LC_X18_Y11_N8
\memoria[52][2]\ : maxv_lcell
-- Equation(s):
-- \QB~103\ = (\RB~combout\(0) & (\RB~combout\(1))) # (!\RB~combout\(0) & ((\RB~combout\(1) & ((\memoria[54][2]~regout\))) # (!\RB~combout\(1) & (memoria[52][2]))))
-- \memoria[52][2]~regout\ = DFFEAS(\QB~103\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~62_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(0),
	datab => \RB~combout\(1),
	datac => \WD~combout\(2),
	datad => \memoria[54][2]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~103\,
	regout => \memoria[52][2]~regout\);

-- Location: LC_X18_Y11_N9
\memoria[54][2]\ : maxv_lcell
-- Equation(s):
-- \QA~103\ = (\RA~combout\(0) & (\RA~combout\(1))) # (!\RA~combout\(0) & ((\RA~combout\(1) & (memoria[54][2])) # (!\RA~combout\(1) & ((\memoria[52][2]~regout\)))))
-- \memoria[54][2]~regout\ = DFFEAS(\QA~103\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~61_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(0),
	datab => \RA~combout\(1),
	datac => \WD~combout\(2),
	datad => \memoria[52][2]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~103\,
	regout => \memoria[54][2]~regout\);

-- Location: LC_X17_Y10_N2
\memoria[53][2]\ : maxv_lcell
-- Equation(s):
-- \QA~104\ = (\QA~103\ & ((\memoria[55][2]~regout\) # ((!\RA~combout\(0))))) # (!\QA~103\ & (((memoria[53][2] & \RA~combout\(0)))))
-- \memoria[53][2]~regout\ = DFFEAS(\QA~104\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~60_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[55][2]~regout\,
	datab => \QA~103\,
	datac => \WD~combout\(2),
	datad => \RA~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~104\,
	regout => \memoria[53][2]~regout\);

-- Location: LC_X17_Y10_N6
\memoria[55][2]\ : maxv_lcell
-- Equation(s):
-- \QB~104\ = (\QB~103\ & (((memoria[55][2]) # (!\RB~combout\(0))))) # (!\QB~103\ & (\memoria[53][2]~regout\ & ((\RB~combout\(0)))))
-- \memoria[55][2]~regout\ = DFFEAS(\QB~104\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~63_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QB~103\,
	datab => \memoria[53][2]~regout\,
	datac => \WD~combout\(2),
	datad => \RB~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~104\,
	regout => \memoria[55][2]~regout\);

-- Location: LC_X17_Y10_N3
\QA~105\ : maxv_lcell
-- Equation(s):
-- \QA~105_combout\ = (\QA~102_combout\ & (((\QA~104\) # (!\RA~combout\(5))))) # (!\QA~102_combout\ & (\QA~97\ & (\RA~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea4a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~102_combout\,
	datab => \QA~97\,
	datac => \RA~combout\(5),
	datad => \QA~104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~105_combout\);

-- Location: LC_X5_Y11_N8
\memoria[33][2]\ : maxv_lcell
-- Equation(s):
-- \QA~108\ = (\RA~combout\(0) & (((memoria[33][2]) # (\RA~combout\(1))))) # (!\RA~combout\(0) & (\memoria[32][2]~regout\ & ((!\RA~combout\(1)))))
-- \memoria[33][2]~regout\ = DFFEAS(\QA~108\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~4_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(0),
	datab => \memoria[32][2]~regout\,
	datac => \WD~combout\(2),
	datad => \RA~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~108\,
	regout => \memoria[33][2]~regout\);

-- Location: LC_X5_Y11_N7
\memoria[32][2]\ : maxv_lcell
-- Equation(s):
-- \QB~108\ = (\RB~combout\(1) & (\RB~combout\(0))) # (!\RB~combout\(1) & ((\RB~combout\(0) & ((\memoria[33][2]~regout\))) # (!\RB~combout\(0) & (memoria[32][2]))))
-- \memoria[32][2]~regout\ = DFFEAS(\QB~108\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~16_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(1),
	datab => \RB~combout\(0),
	datac => \WD~combout\(2),
	datad => \memoria[33][2]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~108\,
	regout => \memoria[32][2]~regout\);

-- Location: LC_X5_Y12_N2
\memoria[34][2]\ : maxv_lcell
-- Equation(s):
-- \QA~109\ = (\RA~combout\(1) & ((\QA~108\ & ((\memoria[35][2]~regout\))) # (!\QA~108\ & (memoria[34][2])))) # (!\RA~combout\(1) & (\QA~108\))
-- \memoria[34][2]~regout\ = DFFEAS(\QA~109\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~10_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(1),
	datab => \QA~108\,
	datac => \WD~combout\(2),
	datad => \memoria[35][2]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~109\,
	regout => \memoria[34][2]~regout\);

-- Location: LC_X5_Y12_N9
\memoria[35][2]\ : maxv_lcell
-- Equation(s):
-- \QB~109\ = (\RB~combout\(1) & ((\QB~108\ & ((memoria[35][2]))) # (!\QB~108\ & (\memoria[34][2]~regout\)))) # (!\RB~combout\(1) & (((\QB~108\))))
-- \memoria[35][2]~regout\ = DFFEAS(\QB~109\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~22_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(1),
	datab => \memoria[34][2]~regout\,
	datac => \WD~combout\(2),
	datad => \QB~108\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~109\,
	regout => \memoria[35][2]~regout\);

-- Location: LC_X8_Y13_N2
\memoria[1][2]\ : maxv_lcell
-- Equation(s):
-- \QA~110\ = (\RA~combout\(0) & (((memoria[1][2]) # (\RA~combout\(1))))) # (!\RA~combout\(0) & (\memoria[0][2]~regout\ & ((!\RA~combout\(1)))))
-- \memoria[1][2]~regout\ = DFFEAS(\QA~110\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~48_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[0][2]~regout\,
	datab => \RA~combout\(0),
	datac => \WD~combout\(2),
	datad => \RA~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~110\,
	regout => \memoria[1][2]~regout\);

-- Location: LC_X8_Y13_N5
\memoria[0][2]\ : maxv_lcell
-- Equation(s):
-- \QB~110\ = (\RB~combout\(1) & (((\RB~combout\(0))))) # (!\RB~combout\(1) & ((\RB~combout\(0) & (\memoria[1][2]~regout\)) # (!\RB~combout\(0) & ((memoria[0][2])))))
-- \memoria[0][2]~regout\ = DFFEAS(\QB~110\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~50_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(1),
	datab => \memoria[1][2]~regout\,
	datac => \WD~combout\(2),
	datad => \RB~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~110\,
	regout => \memoria[0][2]~regout\);

-- Location: LC_X7_Y13_N9
\memoria[2][2]\ : maxv_lcell
-- Equation(s):
-- \QA~111\ = (\RA~combout\(1) & ((\QA~110\ & ((\memoria[3][2]~regout\))) # (!\QA~110\ & (memoria[2][2])))) # (!\RA~combout\(1) & (\QA~110\))
-- \memoria[2][2]~regout\ = DFFEAS(\QA~111\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~49_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(1),
	datab => \QA~110\,
	datac => \WD~combout\(2),
	datad => \memoria[3][2]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~111\,
	regout => \memoria[2][2]~regout\);

-- Location: LC_X7_Y13_N8
\memoria[3][2]\ : maxv_lcell
-- Equation(s):
-- \QB~111\ = (\RB~combout\(1) & ((\QB~110\ & (memoria[3][2])) # (!\QB~110\ & ((\memoria[2][2]~regout\))))) # (!\RB~combout\(1) & (\QB~110\))
-- \memoria[3][2]~regout\ = DFFEAS(\QB~111\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~51_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(1),
	datab => \QB~110\,
	datac => \WD~combout\(2),
	datad => \memoria[2][2]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~111\,
	regout => \memoria[3][2]~regout\);

-- Location: LC_X8_Y13_N0
\QA~112\ : maxv_lcell
-- Equation(s):
-- \QA~112_combout\ = (\RA~combout\(5) & ((\QA~109\) # ((\RA~combout\(4))))) # (!\RA~combout\(5) & (((!\RA~combout\(4) & \QA~111\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cbc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~109\,
	datab => \RA~combout\(5),
	datac => \RA~combout\(4),
	datad => \QA~111\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~112_combout\);

-- Location: LC_X3_Y4_N2
\memoria[18][2]\ : maxv_lcell
-- Equation(s):
-- \QA~106\ = (\RA~combout\(0) & (((\RA~combout\(1))))) # (!\RA~combout\(0) & ((\RA~combout\(1) & ((memoria[18][2]))) # (!\RA~combout\(1) & (\memoria[16][2]~regout\))))
-- \memoria[18][2]~regout\ = DFFEAS(\QA~106\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~33_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[16][2]~regout\,
	datab => \RA~combout\(0),
	datac => \WD~combout\(2),
	datad => \RA~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~106\,
	regout => \memoria[18][2]~regout\);

-- Location: LC_X3_Y4_N5
\memoria[16][2]\ : maxv_lcell
-- Equation(s):
-- \QB~106\ = (\RB~combout\(1) & ((\memoria[18][2]~regout\) # ((\RB~combout\(0))))) # (!\RB~combout\(1) & (((memoria[16][2] & !\RB~combout\(0)))))
-- \memoria[16][2]~regout\ = DFFEAS(\QB~106\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~34_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(1),
	datab => \memoria[18][2]~regout\,
	datac => \WD~combout\(2),
	datad => \RB~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~106\,
	regout => \memoria[16][2]~regout\);

-- Location: LC_X4_Y6_N7
\memoria[17][2]\ : maxv_lcell
-- Equation(s):
-- \QA~107\ = (\QA~106\ & ((\memoria[19][2]~regout\) # ((!\RA~combout\(0))))) # (!\QA~106\ & (((memoria[17][2] & \RA~combout\(0)))))
-- \memoria[17][2]~regout\ = DFFEAS(\QA~107\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~32_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[19][2]~regout\,
	datab => \QA~106\,
	datac => \WD~combout\(2),
	datad => \RA~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~107\,
	regout => \memoria[17][2]~regout\);

-- Location: LC_X4_Y6_N4
\memoria[19][2]\ : maxv_lcell
-- Equation(s):
-- \QB~107\ = (\RB~combout\(0) & ((\QB~106\ & ((memoria[19][2]))) # (!\QB~106\ & (\memoria[17][2]~regout\)))) # (!\RB~combout\(0) & (((\QB~106\))))
-- \memoria[19][2]~regout\ = DFFEAS(\QB~107\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~35_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(0),
	datab => \memoria[17][2]~regout\,
	datac => \WD~combout\(2),
	datad => \QB~106\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~107\,
	regout => \memoria[19][2]~regout\);

-- Location: LC_X15_Y12_N6
\memoria[48][2]\ : maxv_lcell
-- Equation(s):
-- \QB~113\ = (\RB~combout\(1) & ((\memoria[50][2]~regout\) # ((\RB~combout\(0))))) # (!\RB~combout\(1) & (((memoria[48][2] & !\RB~combout\(0)))))
-- \memoria[48][2]~regout\ = DFFEAS(\QB~113\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~66_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(1),
	datab => \memoria[50][2]~regout\,
	datac => \WD~combout\(2),
	datad => \RB~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~113\,
	regout => \memoria[48][2]~regout\);

-- Location: LC_X14_Y12_N4
\memoria[50][2]\ : maxv_lcell
-- Equation(s):
-- \QA~113\ = (\RA~combout\(1) & ((\RA~combout\(0)) # ((memoria[50][2])))) # (!\RA~combout\(1) & (!\RA~combout\(0) & ((\memoria[48][2]~regout\))))
-- \memoria[50][2]~regout\ = DFFEAS(\QA~113\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~64_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(1),
	datab => \RA~combout\(0),
	datac => \WD~combout\(2),
	datad => \memoria[48][2]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~113\,
	regout => \memoria[50][2]~regout\);

-- Location: LC_X15_Y12_N5
\memoria[49][2]\ : maxv_lcell
-- Equation(s):
-- \QA~114\ = (\RA~combout\(0) & ((\QA~113\ & (\memoria[51][2]~regout\)) # (!\QA~113\ & ((memoria[49][2]))))) # (!\RA~combout\(0) & (((\QA~113\))))
-- \memoria[49][2]~regout\ = DFFEAS(\QA~114\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~65_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[51][2]~regout\,
	datab => \RA~combout\(0),
	datac => \WD~combout\(2),
	datad => \QA~113\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~114\,
	regout => \memoria[49][2]~regout\);

-- Location: LC_X14_Y12_N9
\memoria[51][2]\ : maxv_lcell
-- Equation(s):
-- \QB~114\ = (\QB~113\ & (((memoria[51][2])) # (!\RB~combout\(0)))) # (!\QB~113\ & (\RB~combout\(0) & ((\memoria[49][2]~regout\))))
-- \memoria[51][2]~regout\ = DFFEAS(\QB~114\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~67_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QB~113\,
	datab => \RB~combout\(0),
	datac => \WD~combout\(2),
	datad => \memoria[49][2]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~114\,
	regout => \memoria[51][2]~regout\);

-- Location: LC_X8_Y11_N5
\QA~115\ : maxv_lcell
-- Equation(s):
-- \QA~115_combout\ = (\QA~112_combout\ & (((\QA~114\)) # (!\RA~combout\(4)))) # (!\QA~112_combout\ & (\RA~combout\(4) & (\QA~107\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~112_combout\,
	datab => \RA~combout\(4),
	datac => \QA~107\,
	datad => \QA~114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~115_combout\);

-- Location: LC_X10_Y6_N3
\QA~116\ : maxv_lcell
-- Equation(s):
-- \QA~116_combout\ = (\RA~combout\(3) & (((\RA~combout\(2))))) # (!\RA~combout\(3) & ((\RA~combout\(2) & (\QA~105_combout\)) # (!\RA~combout\(2) & ((\QA~115_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~105_combout\,
	datab => \RA~combout\(3),
	datac => \QA~115_combout\,
	datad => \RA~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~116_combout\);

-- Location: LC_X3_Y7_N2
\memoria[28][2]\ : maxv_lcell
-- Equation(s):
-- \QB~117\ = (\RB~combout\(1) & (((\RB~combout\(0))))) # (!\RB~combout\(1) & ((\RB~combout\(0) & (\memoria[29][2]~regout\)) # (!\RB~combout\(0) & ((memoria[28][2])))))
-- \memoria[28][2]~regout\ = DFFEAS(\QB~117\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~38_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[29][2]~regout\,
	datab => \RB~combout\(1),
	datac => \WD~combout\(2),
	datad => \RB~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~117\,
	regout => \memoria[28][2]~regout\);

-- Location: LC_X3_Y7_N6
\memoria[29][2]\ : maxv_lcell
-- Equation(s):
-- \QA~117\ = (\RA~combout\(0) & (((memoria[29][2]) # (\RA~combout\(1))))) # (!\RA~combout\(0) & (\memoria[28][2]~regout\ & ((!\RA~combout\(1)))))
-- \memoria[29][2]~regout\ = DFFEAS(\QA~117\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~37_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(0),
	datab => \memoria[28][2]~regout\,
	datac => \WD~combout\(2),
	datad => \RA~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~117\,
	regout => \memoria[29][2]~regout\);

-- Location: LC_X4_Y7_N1
\memoria[30][2]\ : maxv_lcell
-- Equation(s):
-- \QA~118\ = (\QA~117\ & ((\memoria[31][2]~regout\) # ((!\RA~combout\(1))))) # (!\QA~117\ & (((memoria[30][2] & \RA~combout\(1)))))
-- \memoria[30][2]~regout\ = DFFEAS(\QA~118\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~36_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[31][2]~regout\,
	datab => \QA~117\,
	datac => \WD~combout\(2),
	datad => \RA~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~118\,
	regout => \memoria[30][2]~regout\);

-- Location: LC_X4_Y7_N5
\memoria[31][2]\ : maxv_lcell
-- Equation(s):
-- \QB~118\ = (\RB~combout\(1) & ((\QB~117\ & (memoria[31][2])) # (!\QB~117\ & ((\memoria[30][2]~regout\))))) # (!\RB~combout\(1) & (\QB~117\))
-- \memoria[31][2]~regout\ = DFFEAS(\QB~118\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~39_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(1),
	datab => \QB~117\,
	datac => \WD~combout\(2),
	datad => \memoria[30][2]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~118\,
	regout => \memoria[31][2]~regout\);

-- Location: LC_X12_Y7_N9
\memoria[46][2]\ : maxv_lcell
-- Equation(s):
-- \QA~119\ = (\RA~combout\(1) & (((memoria[46][2]) # (\RA~combout\(0))))) # (!\RA~combout\(1) & (\memoria[44][2]~regout\ & ((!\RA~combout\(0)))))
-- \memoria[46][2]~regout\ = DFFEAS(\QA~119\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~11_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[44][2]~regout\,
	datab => \RA~combout\(1),
	datac => \WD~combout\(2),
	datad => \RA~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~119\,
	regout => \memoria[46][2]~regout\);

-- Location: LC_X12_Y7_N4
\memoria[44][2]\ : maxv_lcell
-- Equation(s):
-- \QB~119\ = (\RB~combout\(1) & ((\RB~combout\(0)) # ((\memoria[46][2]~regout\)))) # (!\RB~combout\(1) & (!\RB~combout\(0) & (memoria[44][2])))
-- \memoria[44][2]~regout\ = DFFEAS(\QB~119\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~17_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(1),
	datab => \RB~combout\(0),
	datac => \WD~combout\(2),
	datad => \memoria[46][2]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~119\,
	regout => \memoria[44][2]~regout\);

-- Location: LC_X16_Y7_N4
\memoria[45][2]\ : maxv_lcell
-- Equation(s):
-- \QA~120\ = (\RA~combout\(0) & ((\QA~119\ & ((\memoria[47][2]~regout\))) # (!\QA~119\ & (memoria[45][2])))) # (!\RA~combout\(0) & (\QA~119\))
-- \memoria[45][2]~regout\ = DFFEAS(\QA~120\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~5_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(0),
	datab => \QA~119\,
	datac => \WD~combout\(2),
	datad => \memoria[47][2]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~120\,
	regout => \memoria[45][2]~regout\);

-- Location: LC_X18_Y7_N8
\memoria[47][2]\ : maxv_lcell
-- Equation(s):
-- \QB~120\ = (\QB~119\ & (((memoria[47][2]) # (!\RB~combout\(0))))) # (!\QB~119\ & (\memoria[45][2]~regout\ & ((\RB~combout\(0)))))
-- \memoria[47][2]~regout\ = DFFEAS(\QB~120\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~23_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[45][2]~regout\,
	datab => \QB~119\,
	datac => \WD~combout\(2),
	datad => \RB~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~120\,
	regout => \memoria[47][2]~regout\);

-- Location: LC_X3_Y9_N8
\memoria[14][2]\ : maxv_lcell
-- Equation(s):
-- \QA~121\ = (\RA~combout\(0) & (((\RA~combout\(1))))) # (!\RA~combout\(0) & ((\RA~combout\(1) & ((memoria[14][2]))) # (!\RA~combout\(1) & (\memoria[12][2]~regout\))))
-- \memoria[14][2]~regout\ = DFFEAS(\QA~121\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~52_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[12][2]~regout\,
	datab => \RA~combout\(0),
	datac => \WD~combout\(2),
	datad => \RA~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~121\,
	regout => \memoria[14][2]~regout\);

-- Location: LC_X3_Y5_N5
\memoria[12][2]\ : maxv_lcell
-- Equation(s):
-- \QB~121\ = (\RB~combout\(1) & ((\memoria[14][2]~regout\) # ((\RB~combout\(0))))) # (!\RB~combout\(1) & (((memoria[12][2] & !\RB~combout\(0)))))
-- \memoria[12][2]~regout\ = DFFEAS(\QB~121\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~54_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(1),
	datab => \memoria[14][2]~regout\,
	datac => \WD~combout\(2),
	datad => \RB~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~121\,
	regout => \memoria[12][2]~regout\);

-- Location: LC_X16_Y7_N1
\memoria[13][2]\ : maxv_lcell
-- Equation(s):
-- \QA~122\ = (\RA~combout\(0) & ((\QA~121\ & ((\memoria[15][2]~regout\))) # (!\QA~121\ & (memoria[13][2])))) # (!\RA~combout\(0) & (\QA~121\))
-- \memoria[13][2]~regout\ = DFFEAS(\QA~122\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~53_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(0),
	datab => \QA~121\,
	datac => \WD~combout\(2),
	datad => \memoria[15][2]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~122\,
	regout => \memoria[13][2]~regout\);

-- Location: LC_X15_Y8_N2
\memoria[15][2]\ : maxv_lcell
-- Equation(s):
-- \QB~122\ = (\QB~121\ & (((memoria[15][2]) # (!\RB~combout\(0))))) # (!\QB~121\ & (\memoria[13][2]~regout\ & ((\RB~combout\(0)))))
-- \memoria[15][2]~regout\ = DFFEAS(\QB~122\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~55_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[13][2]~regout\,
	datab => \QB~121\,
	datac => \WD~combout\(2),
	datad => \RB~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~122\,
	regout => \memoria[15][2]~regout\);

-- Location: LC_X16_Y7_N2
\QA~123\ : maxv_lcell
-- Equation(s):
-- \QA~123_combout\ = (\RA~combout\(4) & (((\RA~combout\(5))))) # (!\RA~combout\(4) & ((\RA~combout\(5) & (\QA~120\)) # (!\RA~combout\(5) & ((\QA~122\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e3e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~120\,
	datab => \RA~combout\(4),
	datac => \RA~combout\(5),
	datad => \QA~122\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~123_combout\);

-- Location: LC_X20_Y12_N6
\memoria[61][2]\ : maxv_lcell
-- Equation(s):
-- \QA~124\ = (\RA~combout\(1) & (\RA~combout\(0))) # (!\RA~combout\(1) & ((\RA~combout\(0) & (memoria[61][2])) # (!\RA~combout\(0) & ((\memoria[60][2]~regout\)))))
-- \memoria[61][2]~regout\ = DFFEAS(\QA~124\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~68_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(1),
	datab => \RA~combout\(0),
	datac => \WD~combout\(2),
	datad => \memoria[60][2]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~124\,
	regout => \memoria[61][2]~regout\);

-- Location: LC_X20_Y12_N9
\memoria[60][2]\ : maxv_lcell
-- Equation(s):
-- \QB~124\ = (\RB~combout\(0) & ((\memoria[61][2]~regout\) # ((\RB~combout\(1))))) # (!\RB~combout\(0) & (((memoria[60][2] & !\RB~combout\(1)))))
-- \memoria[60][2]~regout\ = DFFEAS(\QB~124\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~70_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[61][2]~regout\,
	datab => \RB~combout\(0),
	datac => \WD~combout\(2),
	datad => \RB~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~124\,
	regout => \memoria[60][2]~regout\);

-- Location: LC_X16_Y10_N5
\memoria[62][2]\ : maxv_lcell
-- Equation(s):
-- \QA~125\ = (\QA~124\ & (((\memoria[63][2]~regout\)) # (!\RA~combout\(1)))) # (!\QA~124\ & (\RA~combout\(1) & (memoria[62][2])))
-- \memoria[62][2]~regout\ = DFFEAS(\QA~125\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~69_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QA~124\,
	datab => \RA~combout\(1),
	datac => \WD~combout\(2),
	datad => \memoria[63][2]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~125\,
	regout => \memoria[62][2]~regout\);

-- Location: LC_X16_Y10_N9
\memoria[63][2]\ : maxv_lcell
-- Equation(s):
-- \QB~125\ = (\RB~combout\(1) & ((\QB~124\ & ((memoria[63][2]))) # (!\QB~124\ & (\memoria[62][2]~regout\)))) # (!\RB~combout\(1) & (((\QB~124\))))
-- \memoria[63][2]~regout\ = DFFEAS(\QB~125\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~71_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[62][2]~regout\,
	datab => \RB~combout\(1),
	datac => \WD~combout\(2),
	datad => \QB~124\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~125\,
	regout => \memoria[63][2]~regout\);

-- Location: LC_X15_Y7_N8
\QA~126\ : maxv_lcell
-- Equation(s):
-- \QA~126_combout\ = (\RA~combout\(4) & ((\QA~123_combout\ & ((\QA~125\))) # (!\QA~123_combout\ & (\QA~118\)))) # (!\RA~combout\(4) & (((\QA~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f838",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~118\,
	datab => \RA~combout\(4),
	datac => \QA~123_combout\,
	datad => \QA~125\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~126_combout\);

-- Location: LC_X18_Y4_N7
\memoria[9][2]\ : maxv_lcell
-- Equation(s):
-- \QB~88\ = (\RB~combout\(5) & (((\RB~combout\(4))))) # (!\RB~combout\(5) & ((\RB~combout\(4) & (\memoria[25][2]~regout\)) # (!\RB~combout\(4) & ((memoria[9][2])))))
-- \memoria[9][2]~regout\ = DFFEAS(\QB~88\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~40_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[25][2]~regout\,
	datab => \RB~combout\(5),
	datac => \WD~combout\(2),
	datad => \RB~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~88\,
	regout => \memoria[9][2]~regout\);

-- Location: LC_X18_Y4_N4
\memoria[25][2]\ : maxv_lcell
-- Equation(s):
-- \QA~88\ = (\RA~combout\(5) & (((\RA~combout\(4))))) # (!\RA~combout\(5) & ((\RA~combout\(4) & ((memoria[25][2]))) # (!\RA~combout\(4) & (\memoria[9][2]~regout\))))
-- \memoria[25][2]~regout\ = DFFEAS(\QA~88\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~28_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(5),
	datab => \memoria[9][2]~regout\,
	datac => \WD~combout\(2),
	datad => \RA~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~88\,
	regout => \memoria[25][2]~regout\);

-- Location: LC_X17_Y5_N9
\memoria[41][2]\ : maxv_lcell
-- Equation(s):
-- \QA~89\ = (\RA~combout\(5) & ((\QA~88\ & (\memoria[57][2]~regout\)) # (!\QA~88\ & ((memoria[41][2]))))) # (!\RA~combout\(5) & (((\QA~88\))))
-- \memoria[41][2]~regout\ = DFFEAS(\QA~89\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~3_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[57][2]~regout\,
	datab => \RA~combout\(5),
	datac => \WD~combout\(2),
	datad => \QA~88\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~89\,
	regout => \memoria[41][2]~regout\);

-- Location: LC_X17_Y5_N6
\memoria[57][2]\ : maxv_lcell
-- Equation(s):
-- \QB~89\ = (\QB~88\ & (((memoria[57][2]) # (!\RB~combout\(5))))) # (!\QB~88\ & (\memoria[41][2]~regout\ & ((\RB~combout\(5)))))
-- \memoria[57][2]~regout\ = DFFEAS(\QB~89\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~57_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QB~88\,
	datab => \memoria[41][2]~regout\,
	datac => \WD~combout\(2),
	datad => \RB~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~89\,
	regout => \memoria[57][2]~regout\);

-- Location: LC_X10_Y9_N8
\memoria[8][2]\ : maxv_lcell
-- Equation(s):
-- \QB~90\ = (\RB~combout\(4) & (((\RB~combout\(5))))) # (!\RB~combout\(4) & ((\RB~combout\(5) & (\memoria[40][2]~regout\)) # (!\RB~combout\(5) & ((memoria[8][2])))))
-- \memoria[8][2]~regout\ = DFFEAS(\QB~90\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~42_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(4),
	datab => \memoria[40][2]~regout\,
	datac => \WD~combout\(2),
	datad => \RB~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~90\,
	regout => \memoria[8][2]~regout\);

-- Location: LC_X10_Y9_N9
\memoria[40][2]\ : maxv_lcell
-- Equation(s):
-- \QA~90\ = (\RA~combout\(5) & ((\RA~combout\(4)) # ((memoria[40][2])))) # (!\RA~combout\(5) & (!\RA~combout\(4) & ((\memoria[8][2]~regout\))))
-- \memoria[40][2]~regout\ = DFFEAS(\QA~90\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~13_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(5),
	datab => \RA~combout\(4),
	datac => \WD~combout\(2),
	datad => \memoria[8][2]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~90\,
	regout => \memoria[40][2]~regout\);

-- Location: LC_X9_Y8_N9
\memoria[24][2]\ : maxv_lcell
-- Equation(s):
-- \QA~91\ = (\RA~combout\(4) & ((\QA~90\ & (\memoria[56][2]~regout\)) # (!\QA~90\ & ((memoria[24][2]))))) # (!\RA~combout\(4) & (((\QA~90\))))
-- \memoria[24][2]~regout\ = DFFEAS(\QA~91\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~30_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(4),
	datab => \memoria[56][2]~regout\,
	datac => \WD~combout\(2),
	datad => \QA~90\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~91\,
	regout => \memoria[24][2]~regout\);

-- Location: LC_X9_Y8_N7
\memoria[56][2]\ : maxv_lcell
-- Equation(s):
-- \QB~91\ = (\QB~90\ & (((memoria[56][2])) # (!\RB~combout\(4)))) # (!\QB~90\ & (\RB~combout\(4) & ((\memoria[24][2]~regout\))))
-- \memoria[56][2]~regout\ = DFFEAS(\QB~91\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~58_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QB~90\,
	datab => \RB~combout\(4),
	datac => \WD~combout\(2),
	datad => \memoria[24][2]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~91\,
	regout => \memoria[56][2]~regout\);

-- Location: LC_X17_Y6_N5
\QA~92\ : maxv_lcell
-- Equation(s):
-- \QA~92_combout\ = (\RA~combout\(1) & (((\RA~combout\(0))))) # (!\RA~combout\(1) & ((\RA~combout\(0) & (\QA~89\)) # (!\RA~combout\(0) & ((\QA~91\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e3e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~89\,
	datab => \RA~combout\(1),
	datac => \RA~combout\(0),
	datad => \QA~91\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~92_combout\);

-- Location: LC_X15_Y5_N2
\memoria[42][2]\ : maxv_lcell
-- Equation(s):
-- \QA~86\ = (\RA~combout\(4) & (((\RA~combout\(5))))) # (!\RA~combout\(4) & ((\RA~combout\(5) & ((memoria[42][2]))) # (!\RA~combout\(5) & (\memoria[10][2]~regout\))))
-- \memoria[42][2]~regout\ = DFFEAS(\QA~86\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~7_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(4),
	datab => \memoria[10][2]~regout\,
	datac => \WD~combout\(2),
	datad => \RA~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~86\,
	regout => \memoria[42][2]~regout\);

-- Location: LC_X15_Y5_N0
\memoria[10][2]\ : maxv_lcell
-- Equation(s):
-- \QB~86\ = (\RB~combout\(5) & ((\RB~combout\(4)) # ((\memoria[42][2]~regout\)))) # (!\RB~combout\(5) & (!\RB~combout\(4) & (memoria[10][2])))
-- \memoria[10][2]~regout\ = DFFEAS(\QB~86\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~41_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(5),
	datab => \RB~combout\(4),
	datac => \WD~combout\(2),
	datad => \memoria[42][2]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~86\,
	regout => \memoria[10][2]~regout\);

-- Location: LC_X16_Y6_N6
\memoria[26][2]\ : maxv_lcell
-- Equation(s):
-- \QA~87\ = (\QA~86\ & ((\memoria[58][2]~regout\) # ((!\RA~combout\(4))))) # (!\QA~86\ & (((memoria[26][2] & \RA~combout\(4)))))
-- \memoria[26][2]~regout\ = DFFEAS(\QA~87\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~29_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[58][2]~regout\,
	datab => \QA~86\,
	datac => \WD~combout\(2),
	datad => \RA~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~87\,
	regout => \memoria[26][2]~regout\);

-- Location: LC_X16_Y6_N8
\memoria[58][2]\ : maxv_lcell
-- Equation(s):
-- \QB~87\ = (\RB~combout\(4) & ((\QB~86\ & ((memoria[58][2]))) # (!\QB~86\ & (\memoria[26][2]~regout\)))) # (!\RB~combout\(4) & (((\QB~86\))))
-- \memoria[58][2]~regout\ = DFFEAS(\QB~87\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~56_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[26][2]~regout\,
	datab => \RB~combout\(4),
	datac => \WD~combout\(2),
	datad => \QB~86\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~87\,
	regout => \memoria[58][2]~regout\);

-- Location: LC_X19_Y6_N5
\memoria[27][2]\ : maxv_lcell
-- Equation(s):
-- \QA~93\ = (\RA~combout\(4) & ((\RA~combout\(5)) # ((memoria[27][2])))) # (!\RA~combout\(4) & (!\RA~combout\(5) & ((\memoria[11][2]~regout\))))
-- \memoria[27][2]~regout\ = DFFEAS(\QA~93\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~31_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(4),
	datab => \RA~combout\(5),
	datac => \WD~combout\(2),
	datad => \memoria[11][2]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~93\,
	regout => \memoria[27][2]~regout\);

-- Location: LC_X19_Y6_N8
\memoria[11][2]\ : maxv_lcell
-- Equation(s):
-- \QB~93\ = (\RB~combout\(4) & ((\memoria[27][2]~regout\) # ((\RB~combout\(5))))) # (!\RB~combout\(4) & (((memoria[11][2] & !\RB~combout\(5)))))
-- \memoria[11][2]~regout\ = DFFEAS(\QB~93\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~43_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[27][2]~regout\,
	datab => \RB~combout\(4),
	datac => \WD~combout\(2),
	datad => \RB~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~93\,
	regout => \memoria[11][2]~regout\);

-- Location: LC_X19_Y5_N5
\memoria[43][2]\ : maxv_lcell
-- Equation(s):
-- \QA~94\ = (\RA~combout\(5) & ((\QA~93\ & (\memoria[59][2]~regout\)) # (!\QA~93\ & ((memoria[43][2]))))) # (!\RA~combout\(5) & (((\QA~93\))))
-- \memoria[43][2]~regout\ = DFFEAS(\QA~94\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~21_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(5),
	datab => \memoria[59][2]~regout\,
	datac => \WD~combout\(2),
	datad => \QA~93\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~94\,
	regout => \memoria[43][2]~regout\);

-- Location: LC_X19_Y5_N7
\memoria[59][2]\ : maxv_lcell
-- Equation(s):
-- \QB~94\ = (\RB~combout\(5) & ((\QB~93\ & ((memoria[59][2]))) # (!\QB~93\ & (\memoria[43][2]~regout\)))) # (!\RB~combout\(5) & (((\QB~93\))))
-- \memoria[59][2]~regout\ = DFFEAS(\QB~94\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~59_combout\, \WD~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[43][2]~regout\,
	datab => \RB~combout\(5),
	datac => \WD~combout\(2),
	datad => \QB~93\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~94\,
	regout => \memoria[59][2]~regout\);

-- Location: LC_X17_Y6_N6
\QA~95\ : maxv_lcell
-- Equation(s):
-- \QA~95_combout\ = (\QA~92_combout\ & (((\QA~94\)) # (!\RA~combout\(1)))) # (!\QA~92_combout\ & (\RA~combout\(1) & (\QA~87\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~92_combout\,
	datab => \RA~combout\(1),
	datac => \QA~87\,
	datad => \QA~94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~95_combout\);

-- Location: LC_X10_Y6_N6
\QA~127\ : maxv_lcell
-- Equation(s):
-- \QA~127_combout\ = (\QA~116_combout\ & ((\QA~126_combout\) # ((!\RA~combout\(3))))) # (!\QA~116_combout\ & (((\RA~combout\(3) & \QA~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "da8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~116_combout\,
	datab => \QA~126_combout\,
	datac => \RA~combout\(3),
	datad => \QA~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~127_combout\);

-- Location: LC_X10_Y6_N5
\QA~128\ : maxv_lcell
-- Equation(s):
-- \QA~128_combout\ = (((\QA~127_combout\ & \readA~combout\)))

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
	datac => \QA~127_combout\,
	datad => \readA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~128_combout\);

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WD[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_WD(3),
	combout => \WD~combout\(3));

-- Location: LC_X2_Y9_N5
\memoria[24][3]\ : maxv_lcell
-- Equation(s):
-- \QA~133\ = (\RA~combout\(3) & ((\RA~combout\(2)) # ((memoria[24][3])))) # (!\RA~combout\(3) & (!\RA~combout\(2) & ((\memoria[16][3]~regout\))))
-- \memoria[24][3]~regout\ = DFFEAS(\QA~133\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~30_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(3),
	datab => \RA~combout\(2),
	datac => \WD~combout\(3),
	datad => \memoria[16][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~133\,
	regout => \memoria[24][3]~regout\);

-- Location: LC_X1_Y9_N0
\memoria[16][3]\ : maxv_lcell
-- Equation(s):
-- \QB~133\ = (\RB~combout\(3) & ((\RB~combout\(2)) # ((\memoria[24][3]~regout\)))) # (!\RB~combout\(3) & (!\RB~combout\(2) & (memoria[16][3])))
-- \memoria[16][3]~regout\ = DFFEAS(\QB~133\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~34_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(3),
	datab => \RB~combout\(2),
	datac => \WD~combout\(3),
	datad => \memoria[24][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~133\,
	regout => \memoria[16][3]~regout\);

-- Location: LC_X3_Y10_N2
\memoria[20][3]\ : maxv_lcell
-- Equation(s):
-- \QA~134\ = (\QA~133\ & (((\memoria[28][3]~regout\)) # (!\RA~combout\(2)))) # (!\QA~133\ & (\RA~combout\(2) & (memoria[20][3])))
-- \memoria[20][3]~regout\ = DFFEAS(\QA~134\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~26_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QA~133\,
	datab => \RA~combout\(2),
	datac => \WD~combout\(3),
	datad => \memoria[28][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~134\,
	regout => \memoria[20][3]~regout\);

-- Location: LC_X3_Y10_N9
\memoria[28][3]\ : maxv_lcell
-- Equation(s):
-- \QB~134\ = (\RB~combout\(2) & ((\QB~133\ & (memoria[28][3])) # (!\QB~133\ & ((\memoria[20][3]~regout\))))) # (!\RB~combout\(2) & (\QB~133\))
-- \memoria[28][3]~regout\ = DFFEAS(\QB~134\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~38_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(2),
	datab => \QB~133\,
	datac => \WD~combout\(3),
	datad => \memoria[20][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~134\,
	regout => \memoria[28][3]~regout\);

-- Location: LC_X2_Y4_N8
\memoria[21][3]\ : maxv_lcell
-- Equation(s):
-- \QA~131\ = (\RA~combout\(2) & ((\RA~combout\(3)) # ((memoria[21][3])))) # (!\RA~combout\(2) & (!\RA~combout\(3) & ((\memoria[17][3]~regout\))))
-- \memoria[21][3]~regout\ = DFFEAS(\QA~131\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~25_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(2),
	datab => \RA~combout\(3),
	datac => \WD~combout\(3),
	datad => \memoria[17][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~131\,
	regout => \memoria[21][3]~regout\);

-- Location: LC_X2_Y4_N9
\memoria[17][3]\ : maxv_lcell
-- Equation(s):
-- \QB~131\ = (\RB~combout\(2) & ((\RB~combout\(3)) # ((\memoria[21][3]~regout\)))) # (!\RB~combout\(2) & (!\RB~combout\(3) & (memoria[17][3])))
-- \memoria[17][3]~regout\ = DFFEAS(\QB~131\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~32_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(2),
	datab => \RB~combout\(3),
	datac => \WD~combout\(3),
	datad => \memoria[21][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~131\,
	regout => \memoria[17][3]~regout\);

-- Location: LC_X1_Y5_N5
\memoria[25][3]\ : maxv_lcell
-- Equation(s):
-- \QA~132\ = (\QA~131\ & (((\memoria[29][3]~regout\)) # (!\RA~combout\(3)))) # (!\QA~131\ & (\RA~combout\(3) & (memoria[25][3])))
-- \memoria[25][3]~regout\ = DFFEAS(\QA~132\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~28_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QA~131\,
	datab => \RA~combout\(3),
	datac => \WD~combout\(3),
	datad => \memoria[29][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~132\,
	regout => \memoria[25][3]~regout\);

-- Location: LC_X1_Y5_N8
\memoria[29][3]\ : maxv_lcell
-- Equation(s):
-- \QB~132\ = (\RB~combout\(3) & ((\QB~131\ & ((memoria[29][3]))) # (!\QB~131\ & (\memoria[25][3]~regout\)))) # (!\RB~combout\(3) & (((\QB~131\))))
-- \memoria[29][3]~regout\ = DFFEAS(\QB~132\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~37_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[25][3]~regout\,
	datab => \RB~combout\(3),
	datac => \WD~combout\(3),
	datad => \QB~131\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~132\,
	regout => \memoria[29][3]~regout\);

-- Location: LC_X3_Y8_N4
\QA~135\ : maxv_lcell
-- Equation(s):
-- \QA~135_combout\ = (\RA~combout\(0) & (((\QA~132\) # (\RA~combout\(1))))) # (!\RA~combout\(0) & (\QA~134\ & ((!\RA~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RA~combout\(0),
	datab => \QA~134\,
	datac => \QA~132\,
	datad => \RA~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~135_combout\);

-- Location: LC_X3_Y6_N8
\memoria[26][3]\ : maxv_lcell
-- Equation(s):
-- \QA~129\ = (\RA~combout\(3) & ((\RA~combout\(2)) # ((memoria[26][3])))) # (!\RA~combout\(3) & (!\RA~combout\(2) & ((\memoria[18][3]~regout\))))
-- \memoria[26][3]~regout\ = DFFEAS(\QA~129\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~29_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(3),
	datab => \RA~combout\(2),
	datac => \WD~combout\(3),
	datad => \memoria[18][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~129\,
	regout => \memoria[26][3]~regout\);

-- Location: LC_X2_Y6_N0
\memoria[18][3]\ : maxv_lcell
-- Equation(s):
-- \QB~129\ = (\RB~combout\(3) & ((\RB~combout\(2)) # ((\memoria[26][3]~regout\)))) # (!\RB~combout\(3) & (!\RB~combout\(2) & (memoria[18][3])))
-- \memoria[18][3]~regout\ = DFFEAS(\QB~129\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~33_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(3),
	datab => \RB~combout\(2),
	datac => \WD~combout\(3),
	datad => \memoria[26][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~129\,
	regout => \memoria[18][3]~regout\);

-- Location: LC_X3_Y6_N5
\memoria[22][3]\ : maxv_lcell
-- Equation(s):
-- \QA~130\ = (\QA~129\ & (((\memoria[30][3]~regout\)) # (!\RA~combout\(2)))) # (!\QA~129\ & (\RA~combout\(2) & (memoria[22][3])))
-- \memoria[22][3]~regout\ = DFFEAS(\QA~130\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~24_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QA~129\,
	datab => \RA~combout\(2),
	datac => \WD~combout\(3),
	datad => \memoria[30][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~130\,
	regout => \memoria[22][3]~regout\);

-- Location: LC_X4_Y7_N9
\memoria[30][3]\ : maxv_lcell
-- Equation(s):
-- \QB~130\ = (\RB~combout\(2) & ((\QB~129\ & ((memoria[30][3]))) # (!\QB~129\ & (\memoria[22][3]~regout\)))) # (!\RB~combout\(2) & (((\QB~129\))))
-- \memoria[30][3]~regout\ = DFFEAS(\QB~130\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~36_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[22][3]~regout\,
	datab => \RB~combout\(2),
	datac => \WD~combout\(3),
	datad => \QB~129\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~130\,
	regout => \memoria[30][3]~regout\);

-- Location: LC_X2_Y7_N6
\memoria[23][3]\ : maxv_lcell
-- Equation(s):
-- \QA~136\ = (\RA~combout\(2) & ((\RA~combout\(3)) # ((memoria[23][3])))) # (!\RA~combout\(2) & (!\RA~combout\(3) & ((\memoria[19][3]~regout\))))
-- \memoria[23][3]~regout\ = DFFEAS(\QA~136\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~27_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(2),
	datab => \RA~combout\(3),
	datac => \WD~combout\(3),
	datad => \memoria[19][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~136\,
	regout => \memoria[23][3]~regout\);

-- Location: LC_X2_Y6_N5
\memoria[19][3]\ : maxv_lcell
-- Equation(s):
-- \QB~136\ = (\RB~combout\(3) & (\RB~combout\(2))) # (!\RB~combout\(3) & ((\RB~combout\(2) & ((\memoria[23][3]~regout\))) # (!\RB~combout\(2) & (memoria[19][3]))))
-- \memoria[19][3]~regout\ = DFFEAS(\QB~136\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~35_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(3),
	datab => \RB~combout\(2),
	datac => \WD~combout\(3),
	datad => \memoria[23][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~136\,
	regout => \memoria[19][3]~regout\);

-- Location: LC_X2_Y7_N7
\memoria[27][3]\ : maxv_lcell
-- Equation(s):
-- \QA~137\ = (\QA~136\ & (((\memoria[31][3]~regout\)) # (!\RA~combout\(3)))) # (!\QA~136\ & (\RA~combout\(3) & (memoria[27][3])))
-- \memoria[27][3]~regout\ = DFFEAS(\QA~137\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~31_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QA~136\,
	datab => \RA~combout\(3),
	datac => \WD~combout\(3),
	datad => \memoria[31][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~137\,
	regout => \memoria[27][3]~regout\);

-- Location: LC_X4_Y7_N7
\memoria[31][3]\ : maxv_lcell
-- Equation(s):
-- \QB~137\ = (\RB~combout\(3) & ((\QB~136\ & ((memoria[31][3]))) # (!\QB~136\ & (\memoria[27][3]~regout\)))) # (!\RB~combout\(3) & (((\QB~136\))))
-- \memoria[31][3]~regout\ = DFFEAS(\QB~137\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~39_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[27][3]~regout\,
	datab => \RB~combout\(3),
	datac => \WD~combout\(3),
	datad => \QB~136\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~137\,
	regout => \memoria[31][3]~regout\);

-- Location: LC_X3_Y8_N3
\QA~138\ : maxv_lcell
-- Equation(s):
-- \QA~138_combout\ = (\QA~135_combout\ & (((\QA~137\) # (!\RA~combout\(1))))) # (!\QA~135_combout\ & (\QA~130\ & (\RA~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea4a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~135_combout\,
	datab => \QA~130\,
	datac => \RA~combout\(1),
	datad => \QA~137\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~138_combout\);

-- Location: LC_X11_Y4_N3
\memoria[51][3]\ : maxv_lcell
-- Equation(s):
-- \QB~167\ = (\RB~combout\(3) & (\RB~combout\(2))) # (!\RB~combout\(3) & ((\RB~combout\(2) & ((\memoria[55][3]~regout\))) # (!\RB~combout\(2) & (memoria[51][3]))))
-- \memoria[51][3]~regout\ = DFFEAS(\QB~167\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~67_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(3),
	datab => \RB~combout\(2),
	datac => \WD~combout\(3),
	datad => \memoria[55][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~167\,
	regout => \memoria[51][3]~regout\);

-- Location: LC_X11_Y4_N1
\memoria[55][3]\ : maxv_lcell
-- Equation(s):
-- \QA~167\ = (\RA~combout\(2) & ((\RA~combout\(3)) # ((memoria[55][3])))) # (!\RA~combout\(2) & (!\RA~combout\(3) & ((\memoria[51][3]~regout\))))
-- \memoria[55][3]~regout\ = DFFEAS(\QA~167\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~63_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(2),
	datab => \RA~combout\(3),
	datac => \WD~combout\(3),
	datad => \memoria[51][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~167\,
	regout => \memoria[55][3]~regout\);

-- Location: LC_X11_Y5_N8
\memoria[59][3]\ : maxv_lcell
-- Equation(s):
-- \QA~168\ = (\RA~combout\(3) & ((\QA~167\ & (\memoria[63][3]~regout\)) # (!\QA~167\ & ((memoria[59][3]))))) # (!\RA~combout\(3) & (((\QA~167\))))
-- \memoria[59][3]~regout\ = DFFEAS(\QA~168\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~59_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[63][3]~regout\,
	datab => \RA~combout\(3),
	datac => \WD~combout\(3),
	datad => \QA~167\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~168\,
	regout => \memoria[59][3]~regout\);

-- Location: LC_X11_Y5_N5
\memoria[63][3]\ : maxv_lcell
-- Equation(s):
-- \QB~168\ = (\RB~combout\(3) & ((\QB~167\ & (memoria[63][3])) # (!\QB~167\ & ((\memoria[59][3]~regout\))))) # (!\RB~combout\(3) & (\QB~167\))
-- \memoria[63][3]~regout\ = DFFEAS(\QB~168\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~71_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(3),
	datab => \QB~167\,
	datac => \WD~combout\(3),
	datad => \memoria[59][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~168\,
	regout => \memoria[63][3]~regout\);

-- Location: LC_X8_Y5_N1
\memoria[50][3]\ : maxv_lcell
-- Equation(s):
-- \QB~160\ = (\RB~combout\(2) & (((\RB~combout\(3))))) # (!\RB~combout\(2) & ((\RB~combout\(3) & (\memoria[58][3]~regout\)) # (!\RB~combout\(3) & ((memoria[50][3])))))
-- \memoria[50][3]~regout\ = DFFEAS(\QB~160\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~64_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(2),
	datab => \memoria[58][3]~regout\,
	datac => \WD~combout\(3),
	datad => \RB~combout\(3),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~160\,
	regout => \memoria[50][3]~regout\);

-- Location: LC_X8_Y5_N7
\memoria[58][3]\ : maxv_lcell
-- Equation(s):
-- \QA~160\ = (\RA~combout\(3) & ((\RA~combout\(2)) # ((memoria[58][3])))) # (!\RA~combout\(3) & (!\RA~combout\(2) & ((\memoria[50][3]~regout\))))
-- \memoria[58][3]~regout\ = DFFEAS(\QA~160\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~56_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(3),
	datab => \RA~combout\(2),
	datac => \WD~combout\(3),
	datad => \memoria[50][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~160\,
	regout => \memoria[58][3]~regout\);

-- Location: LC_X9_Y5_N9
\memoria[54][3]\ : maxv_lcell
-- Equation(s):
-- \QA~161\ = (\RA~combout\(2) & ((\QA~160\ & (\memoria[62][3]~regout\)) # (!\QA~160\ & ((memoria[54][3]))))) # (!\RA~combout\(2) & (((\QA~160\))))
-- \memoria[54][3]~regout\ = DFFEAS(\QA~161\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~61_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[62][3]~regout\,
	datab => \RA~combout\(2),
	datac => \WD~combout\(3),
	datad => \QA~160\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~161\,
	regout => \memoria[54][3]~regout\);

-- Location: LC_X9_Y5_N5
\memoria[62][3]\ : maxv_lcell
-- Equation(s):
-- \QB~161\ = (\QB~160\ & (((memoria[62][3])) # (!\RB~combout\(2)))) # (!\QB~160\ & (\RB~combout\(2) & ((\memoria[54][3]~regout\))))
-- \memoria[62][3]~regout\ = DFFEAS(\QB~161\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~69_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QB~160\,
	datab => \RB~combout\(2),
	datac => \WD~combout\(3),
	datad => \memoria[54][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~161\,
	regout => \memoria[62][3]~regout\);

-- Location: LC_X14_Y10_N8
\memoria[53][3]\ : maxv_lcell
-- Equation(s):
-- \QA~162\ = (\RA~combout\(2) & ((\RA~combout\(3)) # ((memoria[53][3])))) # (!\RA~combout\(2) & (!\RA~combout\(3) & ((\memoria[49][3]~regout\))))
-- \memoria[53][3]~regout\ = DFFEAS(\QA~162\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~60_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(2),
	datab => \RA~combout\(3),
	datac => \WD~combout\(3),
	datad => \memoria[49][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~162\,
	regout => \memoria[53][3]~regout\);

-- Location: LC_X14_Y10_N9
\memoria[49][3]\ : maxv_lcell
-- Equation(s):
-- \QB~162\ = (\RB~combout\(2) & ((\RB~combout\(3)) # ((\memoria[53][3]~regout\)))) # (!\RB~combout\(2) & (!\RB~combout\(3) & (memoria[49][3])))
-- \memoria[49][3]~regout\ = DFFEAS(\QB~162\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~65_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(2),
	datab => \RB~combout\(3),
	datac => \WD~combout\(3),
	datad => \memoria[53][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~162\,
	regout => \memoria[49][3]~regout\);

-- Location: LC_X11_Y7_N4
\memoria[57][3]\ : maxv_lcell
-- Equation(s):
-- \QA~163\ = (\RA~combout\(3) & ((\QA~162\ & (\memoria[61][3]~regout\)) # (!\QA~162\ & ((memoria[57][3]))))) # (!\RA~combout\(3) & (((\QA~162\))))
-- \memoria[57][3]~regout\ = DFFEAS(\QA~163\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~57_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[61][3]~regout\,
	datab => \RA~combout\(3),
	datac => \WD~combout\(3),
	datad => \QA~162\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~163\,
	regout => \memoria[57][3]~regout\);

-- Location: LC_X10_Y7_N8
\memoria[61][3]\ : maxv_lcell
-- Equation(s):
-- \QB~163\ = (\RB~combout\(3) & ((\QB~162\ & ((memoria[61][3]))) # (!\QB~162\ & (\memoria[57][3]~regout\)))) # (!\RB~combout\(3) & (((\QB~162\))))
-- \memoria[61][3]~regout\ = DFFEAS(\QB~163\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~68_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(3),
	datab => \memoria[57][3]~regout\,
	datac => \WD~combout\(3),
	datad => \QB~162\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~163\,
	regout => \memoria[61][3]~regout\);

-- Location: LC_X10_Y11_N9
\memoria[56][3]\ : maxv_lcell
-- Equation(s):
-- \QA~164\ = (\RA~combout\(3) & ((\RA~combout\(2)) # ((memoria[56][3])))) # (!\RA~combout\(3) & (!\RA~combout\(2) & ((\memoria[48][3]~regout\))))
-- \memoria[56][3]~regout\ = DFFEAS(\QA~164\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~58_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(3),
	datab => \RA~combout\(2),
	datac => \WD~combout\(3),
	datad => \memoria[48][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~164\,
	regout => \memoria[56][3]~regout\);

-- Location: LC_X10_Y11_N3
\memoria[48][3]\ : maxv_lcell
-- Equation(s):
-- \QB~164\ = (\RB~combout\(2) & (\RB~combout\(3))) # (!\RB~combout\(2) & ((\RB~combout\(3) & ((\memoria[56][3]~regout\))) # (!\RB~combout\(3) & (memoria[48][3]))))
-- \memoria[48][3]~regout\ = DFFEAS(\QB~164\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~66_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(2),
	datab => \RB~combout\(3),
	datac => \WD~combout\(3),
	datad => \memoria[56][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~164\,
	regout => \memoria[48][3]~regout\);

-- Location: LC_X13_Y7_N9
\memoria[52][3]\ : maxv_lcell
-- Equation(s):
-- \QA~165\ = (\QA~164\ & (((\memoria[60][3]~regout\)) # (!\RA~combout\(2)))) # (!\QA~164\ & (\RA~combout\(2) & (memoria[52][3])))
-- \memoria[52][3]~regout\ = DFFEAS(\QA~165\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~62_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QA~164\,
	datab => \RA~combout\(2),
	datac => \WD~combout\(3),
	datad => \memoria[60][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~165\,
	regout => \memoria[52][3]~regout\);

-- Location: LC_X13_Y7_N8
\memoria[60][3]\ : maxv_lcell
-- Equation(s):
-- \QB~165\ = (\RB~combout\(2) & ((\QB~164\ & (memoria[60][3])) # (!\QB~164\ & ((\memoria[52][3]~regout\))))) # (!\RB~combout\(2) & (\QB~164\))
-- \memoria[60][3]~regout\ = DFFEAS(\QB~165\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~70_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(2),
	datab => \QB~164\,
	datac => \WD~combout\(3),
	datad => \memoria[52][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~165\,
	regout => \memoria[60][3]~regout\);

-- Location: LC_X11_Y7_N6
\QA~166\ : maxv_lcell
-- Equation(s):
-- \QA~166_combout\ = (\RA~combout\(0) & ((\QA~163\) # ((\RA~combout\(1))))) # (!\RA~combout\(0) & (((!\RA~combout\(1) & \QA~165\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cbc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~163\,
	datab => \RA~combout\(0),
	datac => \RA~combout\(1),
	datad => \QA~165\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~166_combout\);

-- Location: LC_X11_Y5_N6
\QA~169\ : maxv_lcell
-- Equation(s):
-- \QA~169_combout\ = (\RA~combout\(1) & ((\QA~166_combout\ & (\QA~168\)) # (!\QA~166_combout\ & ((\QA~161\))))) # (!\RA~combout\(1) & (((\QA~166_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~168\,
	datab => \QA~161\,
	datac => \RA~combout\(1),
	datad => \QA~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~169_combout\);

-- Location: LC_X9_Y12_N7
\memoria[39][3]\ : maxv_lcell
-- Equation(s):
-- \QA~146\ = (\RA~combout\(2) & ((\RA~combout\(3)) # ((memoria[39][3])))) # (!\RA~combout\(2) & (!\RA~combout\(3) & ((\memoria[35][3]~regout\))))
-- \memoria[39][3]~regout\ = DFFEAS(\QA~146\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~19_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(2),
	datab => \RA~combout\(3),
	datac => \WD~combout\(3),
	datad => \memoria[35][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~146\,
	regout => \memoria[39][3]~regout\);

-- Location: LC_X9_Y12_N3
\memoria[35][3]\ : maxv_lcell
-- Equation(s):
-- \QB~146\ = (\RB~combout\(2) & ((\memoria[39][3]~regout\) # ((\RB~combout\(3))))) # (!\RB~combout\(2) & (((memoria[35][3] & !\RB~combout\(3)))))
-- \memoria[35][3]~regout\ = DFFEAS(\QB~146\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~22_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[39][3]~regout\,
	datab => \RB~combout\(2),
	datac => \WD~combout\(3),
	datad => \RB~combout\(3),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~146\,
	regout => \memoria[35][3]~regout\);

-- Location: LC_X9_Y10_N9
\memoria[43][3]\ : maxv_lcell
-- Equation(s):
-- \QA~147\ = (\QA~146\ & (((\memoria[47][3]~regout\)) # (!\RA~combout\(3)))) # (!\QA~146\ & (\RA~combout\(3) & (memoria[43][3])))
-- \memoria[43][3]~regout\ = DFFEAS(\QA~147\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~21_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QA~146\,
	datab => \RA~combout\(3),
	datac => \WD~combout\(3),
	datad => \memoria[47][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~147\,
	regout => \memoria[43][3]~regout\);

-- Location: LC_X9_Y10_N2
\memoria[47][3]\ : maxv_lcell
-- Equation(s):
-- \QB~147\ = (\RB~combout\(3) & ((\QB~146\ & ((memoria[47][3]))) # (!\QB~146\ & (\memoria[43][3]~regout\)))) # (!\RB~combout\(3) & (((\QB~146\))))
-- \memoria[47][3]~regout\ = DFFEAS(\QB~147\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~23_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(3),
	datab => \memoria[43][3]~regout\,
	datac => \WD~combout\(3),
	datad => \QB~146\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~147\,
	regout => \memoria[47][3]~regout\);

-- Location: LC_X6_Y9_N6
\memoria[37][3]\ : maxv_lcell
-- Equation(s):
-- \QA~139\ = (\RA~combout\(3) & (\RA~combout\(2))) # (!\RA~combout\(3) & ((\RA~combout\(2) & (memoria[37][3])) # (!\RA~combout\(2) & ((\memoria[33][3]~regout\)))))
-- \memoria[37][3]~regout\ = DFFEAS(\QA~139\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~1_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(3),
	datab => \RA~combout\(2),
	datac => \WD~combout\(3),
	datad => \memoria[33][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~139\,
	regout => \memoria[37][3]~regout\);

-- Location: LC_X6_Y9_N8
\memoria[33][3]\ : maxv_lcell
-- Equation(s):
-- \QB~139\ = (\RB~combout\(2) & ((\memoria[37][3]~regout\) # ((\RB~combout\(3))))) # (!\RB~combout\(2) & (((memoria[33][3] & !\RB~combout\(3)))))
-- \memoria[33][3]~regout\ = DFFEAS(\QB~139\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~4_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[37][3]~regout\,
	datab => \RB~combout\(2),
	datac => \WD~combout\(3),
	datad => \RB~combout\(3),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~139\,
	regout => \memoria[33][3]~regout\);

-- Location: LC_X8_Y10_N5
\memoria[41][3]\ : maxv_lcell
-- Equation(s):
-- \QA~140\ = (\RA~combout\(3) & ((\QA~139\ & (\memoria[45][3]~regout\)) # (!\QA~139\ & ((memoria[41][3]))))) # (!\RA~combout\(3) & (((\QA~139\))))
-- \memoria[41][3]~regout\ = DFFEAS(\QA~140\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~3_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[45][3]~regout\,
	datab => \RA~combout\(3),
	datac => \WD~combout\(3),
	datad => \QA~139\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~140\,
	regout => \memoria[41][3]~regout\);

-- Location: LC_X8_Y10_N6
\memoria[45][3]\ : maxv_lcell
-- Equation(s):
-- \QB~140\ = (\RB~combout\(3) & ((\QB~139\ & ((memoria[45][3]))) # (!\QB~139\ & (\memoria[41][3]~regout\)))) # (!\RB~combout\(3) & (((\QB~139\))))
-- \memoria[45][3]~regout\ = DFFEAS(\QB~140\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~5_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[41][3]~regout\,
	datab => \RB~combout\(3),
	datac => \WD~combout\(3),
	datad => \QB~139\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~140\,
	regout => \memoria[45][3]~regout\);

-- Location: LC_X7_Y4_N1
\memoria[42][3]\ : maxv_lcell
-- Equation(s):
-- \QA~141\ = (\RA~combout\(2) & (\RA~combout\(3))) # (!\RA~combout\(2) & ((\RA~combout\(3) & (memoria[42][3])) # (!\RA~combout\(3) & ((\memoria[34][3]~regout\)))))
-- \memoria[42][3]~regout\ = DFFEAS(\QA~141\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~7_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(2),
	datab => \RA~combout\(3),
	datac => \WD~combout\(3),
	datad => \memoria[34][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~141\,
	regout => \memoria[42][3]~regout\);

-- Location: LC_X7_Y4_N9
\memoria[34][3]\ : maxv_lcell
-- Equation(s):
-- \QB~141\ = (\RB~combout\(3) & ((\RB~combout\(2)) # ((\memoria[42][3]~regout\)))) # (!\RB~combout\(3) & (!\RB~combout\(2) & (memoria[34][3])))
-- \memoria[34][3]~regout\ = DFFEAS(\QB~141\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~10_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(3),
	datab => \RB~combout\(2),
	datac => \WD~combout\(3),
	datad => \memoria[42][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~141\,
	regout => \memoria[34][3]~regout\);

-- Location: LC_X11_Y6_N9
\memoria[38][3]\ : maxv_lcell
-- Equation(s):
-- \QA~142\ = (\QA~141\ & (((\memoria[46][3]~regout\)) # (!\RA~combout\(2)))) # (!\QA~141\ & (\RA~combout\(2) & (memoria[38][3])))
-- \memoria[38][3]~regout\ = DFFEAS(\QA~142\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~9_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QA~141\,
	datab => \RA~combout\(2),
	datac => \WD~combout\(3),
	datad => \memoria[46][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~142\,
	regout => \memoria[38][3]~regout\);

-- Location: LC_X11_Y6_N8
\memoria[46][3]\ : maxv_lcell
-- Equation(s):
-- \QB~142\ = (\QB~141\ & (((memoria[46][3])) # (!\RB~combout\(2)))) # (!\QB~141\ & (\RB~combout\(2) & ((\memoria[38][3]~regout\))))
-- \memoria[46][3]~regout\ = DFFEAS(\QB~142\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~11_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QB~141\,
	datab => \RB~combout\(2),
	datac => \WD~combout\(3),
	datad => \memoria[38][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~142\,
	regout => \memoria[46][3]~regout\);

-- Location: LC_X6_Y7_N3
\memoria[40][3]\ : maxv_lcell
-- Equation(s):
-- \QA~143\ = (\RA~combout\(2) & (((\RA~combout\(3))))) # (!\RA~combout\(2) & ((\RA~combout\(3) & ((memoria[40][3]))) # (!\RA~combout\(3) & (\memoria[32][3]~regout\))))
-- \memoria[40][3]~regout\ = DFFEAS(\QA~143\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~13_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(2),
	datab => \memoria[32][3]~regout\,
	datac => \WD~combout\(3),
	datad => \RA~combout\(3),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~143\,
	regout => \memoria[40][3]~regout\);

-- Location: LC_X6_Y7_N7
\memoria[32][3]\ : maxv_lcell
-- Equation(s):
-- \QB~143\ = (\RB~combout\(2) & (\RB~combout\(3))) # (!\RB~combout\(2) & ((\RB~combout\(3) & ((\memoria[40][3]~regout\))) # (!\RB~combout\(3) & (memoria[32][3]))))
-- \memoria[32][3]~regout\ = DFFEAS(\QB~143\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~16_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(2),
	datab => \RB~combout\(3),
	datac => \WD~combout\(3),
	datad => \memoria[40][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~143\,
	regout => \memoria[32][3]~regout\);

-- Location: LC_X5_Y7_N5
\memoria[36][3]\ : maxv_lcell
-- Equation(s):
-- \QA~144\ = (\QA~143\ & (((\memoria[44][3]~regout\)) # (!\RA~combout\(2)))) # (!\QA~143\ & (\RA~combout\(2) & (memoria[36][3])))
-- \memoria[36][3]~regout\ = DFFEAS(\QA~144\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~15_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QA~143\,
	datab => \RA~combout\(2),
	datac => \WD~combout\(3),
	datad => \memoria[44][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~144\,
	regout => \memoria[36][3]~regout\);

-- Location: LC_X5_Y7_N3
\memoria[44][3]\ : maxv_lcell
-- Equation(s):
-- \QB~144\ = (\RB~combout\(2) & ((\QB~143\ & ((memoria[44][3]))) # (!\QB~143\ & (\memoria[36][3]~regout\)))) # (!\RB~combout\(2) & (((\QB~143\))))
-- \memoria[44][3]~regout\ = DFFEAS(\QB~144\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~17_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[36][3]~regout\,
	datab => \RB~combout\(2),
	datac => \WD~combout\(3),
	datad => \QB~143\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~144\,
	regout => \memoria[44][3]~regout\);

-- Location: LC_X8_Y10_N8
\QA~145\ : maxv_lcell
-- Equation(s):
-- \QA~145_combout\ = (\RA~combout\(0) & (((\RA~combout\(1))))) # (!\RA~combout\(0) & ((\RA~combout\(1) & (\QA~142\)) # (!\RA~combout\(1) & ((\QA~144\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RA~combout\(0),
	datab => \QA~142\,
	datac => \QA~144\,
	datad => \RA~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~145_combout\);

-- Location: LC_X8_Y10_N9
\QA~148\ : maxv_lcell
-- Equation(s):
-- \QA~148_combout\ = (\RA~combout\(0) & ((\QA~145_combout\ & (\QA~147\)) # (!\QA~145_combout\ & ((\QA~140\))))) # (!\RA~combout\(0) & (((\QA~145_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RA~combout\(0),
	datab => \QA~147\,
	datac => \QA~140\,
	datad => \QA~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~148_combout\);

-- Location: LC_X6_Y6_N2
\memoria[5][3]\ : maxv_lcell
-- Equation(s):
-- \QA~149\ = (\RA~combout\(2) & (((memoria[5][3]) # (\RA~combout\(3))))) # (!\RA~combout\(2) & (\memoria[1][3]~regout\ & ((!\RA~combout\(3)))))
-- \memoria[5][3]~regout\ = DFFEAS(\QA~149\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~45_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[1][3]~regout\,
	datab => \RA~combout\(2),
	datac => \WD~combout\(3),
	datad => \RA~combout\(3),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~149\,
	regout => \memoria[5][3]~regout\);

-- Location: LC_X6_Y6_N4
\memoria[1][3]\ : maxv_lcell
-- Equation(s):
-- \QB~149\ = (\RB~combout\(3) & (\RB~combout\(2))) # (!\RB~combout\(3) & ((\RB~combout\(2) & ((\memoria[5][3]~regout\))) # (!\RB~combout\(2) & (memoria[1][3]))))
-- \memoria[1][3]~regout\ = DFFEAS(\QB~149\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~48_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(3),
	datab => \RB~combout\(2),
	datac => \WD~combout\(3),
	datad => \memoria[5][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~149\,
	regout => \memoria[1][3]~regout\);

-- Location: LC_X1_Y7_N4
\memoria[9][3]\ : maxv_lcell
-- Equation(s):
-- \QA~150\ = (\RA~combout\(3) & ((\QA~149\ & (\memoria[13][3]~regout\)) # (!\QA~149\ & ((memoria[9][3]))))) # (!\RA~combout\(3) & (((\QA~149\))))
-- \memoria[9][3]~regout\ = DFFEAS(\QA~150\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~40_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[13][3]~regout\,
	datab => \RA~combout\(3),
	datac => \WD~combout\(3),
	datad => \QA~149\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~150\,
	regout => \memoria[9][3]~regout\);

-- Location: LC_X1_Y7_N8
\memoria[13][3]\ : maxv_lcell
-- Equation(s):
-- \QB~150\ = (\RB~combout\(3) & ((\QB~149\ & ((memoria[13][3]))) # (!\QB~149\ & (\memoria[9][3]~regout\)))) # (!\RB~combout\(3) & (((\QB~149\))))
-- \memoria[13][3]~regout\ = DFFEAS(\QB~150\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~53_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[9][3]~regout\,
	datab => \RB~combout\(3),
	datac => \WD~combout\(3),
	datad => \QB~149\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~150\,
	regout => \memoria[13][3]~regout\);

-- Location: LC_X10_Y10_N7
\memoria[7][3]\ : maxv_lcell
-- Equation(s):
-- \QA~156\ = (\RA~combout\(3) & (\RA~combout\(2))) # (!\RA~combout\(3) & ((\RA~combout\(2) & (memoria[7][3])) # (!\RA~combout\(2) & ((\memoria[3][3]~regout\)))))
-- \memoria[7][3]~regout\ = DFFEAS(\QA~156\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~47_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(3),
	datab => \RA~combout\(2),
	datac => \WD~combout\(3),
	datad => \memoria[3][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~156\,
	regout => \memoria[7][3]~regout\);

-- Location: LC_X10_Y10_N8
\memoria[3][3]\ : maxv_lcell
-- Equation(s):
-- \QB~156\ = (\RB~combout\(2) & ((\memoria[7][3]~regout\) # ((\RB~combout\(3))))) # (!\RB~combout\(2) & (((memoria[3][3] & !\RB~combout\(3)))))
-- \memoria[3][3]~regout\ = DFFEAS(\QB~156\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~51_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(2),
	datab => \memoria[7][3]~regout\,
	datac => \WD~combout\(3),
	datad => \RB~combout\(3),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~156\,
	regout => \memoria[3][3]~regout\);

-- Location: LC_X11_Y10_N3
\memoria[11][3]\ : maxv_lcell
-- Equation(s):
-- \QA~157\ = (\RA~combout\(3) & ((\QA~156\ & ((\memoria[15][3]~regout\))) # (!\QA~156\ & (memoria[11][3])))) # (!\RA~combout\(3) & (\QA~156\))
-- \memoria[11][3]~regout\ = DFFEAS(\QA~157\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~43_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(3),
	datab => \QA~156\,
	datac => \WD~combout\(3),
	datad => \memoria[15][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~157\,
	regout => \memoria[11][3]~regout\);

-- Location: LC_X11_Y10_N8
\memoria[15][3]\ : maxv_lcell
-- Equation(s):
-- \QB~157\ = (\QB~156\ & (((memoria[15][3])) # (!\RB~combout\(3)))) # (!\QB~156\ & (\RB~combout\(3) & ((\memoria[11][3]~regout\))))
-- \memoria[15][3]~regout\ = DFFEAS(\QB~157\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~55_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QB~156\,
	datab => \RB~combout\(3),
	datac => \WD~combout\(3),
	datad => \memoria[11][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~157\,
	regout => \memoria[15][3]~regout\);

-- Location: LC_X7_Y9_N9
\memoria[8][3]\ : maxv_lcell
-- Equation(s):
-- \QA~153\ = (\RA~combout\(3) & ((\RA~combout\(2)) # ((memoria[8][3])))) # (!\RA~combout\(3) & (!\RA~combout\(2) & ((\memoria[0][3]~regout\))))
-- \memoria[8][3]~regout\ = DFFEAS(\QA~153\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~42_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(3),
	datab => \RA~combout\(2),
	datac => \WD~combout\(3),
	datad => \memoria[0][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~153\,
	regout => \memoria[8][3]~regout\);

-- Location: LC_X7_Y9_N8
\memoria[0][3]\ : maxv_lcell
-- Equation(s):
-- \QB~153\ = (\RB~combout\(3) & ((\RB~combout\(2)) # ((\memoria[8][3]~regout\)))) # (!\RB~combout\(3) & (!\RB~combout\(2) & (memoria[0][3])))
-- \memoria[0][3]~regout\ = DFFEAS(\QB~153\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~50_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(3),
	datab => \RB~combout\(2),
	datac => \WD~combout\(3),
	datad => \memoria[8][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~153\,
	regout => \memoria[0][3]~regout\);

-- Location: LC_X9_Y9_N5
\memoria[4][3]\ : maxv_lcell
-- Equation(s):
-- \QA~154\ = (\RA~combout\(2) & ((\QA~153\ & ((\memoria[12][3]~regout\))) # (!\QA~153\ & (memoria[4][3])))) # (!\RA~combout\(2) & (\QA~153\))
-- \memoria[4][3]~regout\ = DFFEAS(\QA~154\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~46_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(2),
	datab => \QA~153\,
	datac => \WD~combout\(3),
	datad => \memoria[12][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~154\,
	regout => \memoria[4][3]~regout\);

-- Location: LC_X9_Y9_N6
\memoria[12][3]\ : maxv_lcell
-- Equation(s):
-- \QB~154\ = (\RB~combout\(2) & ((\QB~153\ & ((memoria[12][3]))) # (!\QB~153\ & (\memoria[4][3]~regout\)))) # (!\RB~combout\(2) & (((\QB~153\))))
-- \memoria[12][3]~regout\ = DFFEAS(\QB~154\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~54_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[4][3]~regout\,
	datab => \RB~combout\(2),
	datac => \WD~combout\(3),
	datad => \QB~153\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~154\,
	regout => \memoria[12][3]~regout\);

-- Location: LC_X4_Y10_N6
\memoria[10][3]\ : maxv_lcell
-- Equation(s):
-- \QA~151\ = (\RA~combout\(2) & (\RA~combout\(3))) # (!\RA~combout\(2) & ((\RA~combout\(3) & (memoria[10][3])) # (!\RA~combout\(3) & ((\memoria[2][3]~regout\)))))
-- \memoria[10][3]~regout\ = DFFEAS(\QA~151\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~41_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(2),
	datab => \RA~combout\(3),
	datac => \WD~combout\(3),
	datad => \memoria[2][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~151\,
	regout => \memoria[10][3]~regout\);

-- Location: LC_X4_Y10_N9
\memoria[2][3]\ : maxv_lcell
-- Equation(s):
-- \QB~151\ = (\RB~combout\(3) & ((\memoria[10][3]~regout\) # ((\RB~combout\(2))))) # (!\RB~combout\(3) & (((memoria[2][3] & !\RB~combout\(2)))))
-- \memoria[2][3]~regout\ = DFFEAS(\QB~151\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~49_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[10][3]~regout\,
	datab => \RB~combout\(3),
	datac => \WD~combout\(3),
	datad => \RB~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~151\,
	regout => \memoria[2][3]~regout\);

-- Location: LC_X3_Y9_N3
\memoria[6][3]\ : maxv_lcell
-- Equation(s):
-- \QA~152\ = (\QA~151\ & (((\memoria[14][3]~regout\)) # (!\RA~combout\(2)))) # (!\QA~151\ & (\RA~combout\(2) & (memoria[6][3])))
-- \memoria[6][3]~regout\ = DFFEAS(\QA~152\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~44_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QA~151\,
	datab => \RA~combout\(2),
	datac => \WD~combout\(3),
	datad => \memoria[14][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~152\,
	regout => \memoria[6][3]~regout\);

-- Location: LC_X3_Y9_N9
\memoria[14][3]\ : maxv_lcell
-- Equation(s):
-- \QB~152\ = (\QB~151\ & (((memoria[14][3]) # (!\RB~combout\(2))))) # (!\QB~151\ & (\memoria[6][3]~regout\ & ((\RB~combout\(2)))))
-- \memoria[14][3]~regout\ = DFFEAS(\QB~152\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~52_combout\, \WD~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[6][3]~regout\,
	datab => \QB~151\,
	datac => \WD~combout\(3),
	datad => \RB~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~152\,
	regout => \memoria[14][3]~regout\);

-- Location: LC_X11_Y8_N8
\QA~155\ : maxv_lcell
-- Equation(s):
-- \QA~155_combout\ = (\RA~combout\(0) & (((\RA~combout\(1))))) # (!\RA~combout\(0) & ((\RA~combout\(1) & ((\QA~152\))) # (!\RA~combout\(1) & (\QA~154\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~154\,
	datab => \QA~152\,
	datac => \RA~combout\(0),
	datad => \RA~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~155_combout\);

-- Location: LC_X11_Y8_N9
\QA~158\ : maxv_lcell
-- Equation(s):
-- \QA~158_combout\ = (\RA~combout\(0) & ((\QA~155_combout\ & ((\QA~157\))) # (!\QA~155_combout\ & (\QA~150\)))) # (!\RA~combout\(0) & (((\QA~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~150\,
	datab => \QA~157\,
	datac => \RA~combout\(0),
	datad => \QA~155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~158_combout\);

-- Location: LC_X10_Y6_N4
\QA~159\ : maxv_lcell
-- Equation(s):
-- \QA~159_combout\ = (\RA~combout\(4) & (\RA~combout\(5))) # (!\RA~combout\(4) & ((\RA~combout\(5) & (\QA~148_combout\)) # (!\RA~combout\(5) & ((\QA~158_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RA~combout\(4),
	datab => \RA~combout\(5),
	datac => \QA~148_combout\,
	datad => \QA~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~159_combout\);

-- Location: LC_X10_Y6_N2
\QA~170\ : maxv_lcell
-- Equation(s):
-- \QA~170_combout\ = (\QA~159_combout\ & (((\QA~169_combout\) # (!\RA~combout\(4))))) # (!\QA~159_combout\ & (\QA~138_combout\ & ((\RA~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~138_combout\,
	datab => \QA~169_combout\,
	datac => \QA~159_combout\,
	datad => \RA~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~170_combout\);

-- Location: LC_X10_Y6_N7
\QA~171\ : maxv_lcell
-- Equation(s):
-- \QA~171_combout\ = ((\readA~combout\ & ((\QA~170_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \readA~combout\,
	datad => \QA~170_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~171_combout\);

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WD[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_WD(4),
	combout => \WD~combout\(4));

-- Location: LC_X9_Y12_N1
\memoria[35][4]\ : maxv_lcell
-- Equation(s):
-- \QB~203\ = (\RB~combout\(2) & ((\memoria[39][4]~regout\) # ((\RB~combout\(3))))) # (!\RB~combout\(2) & (((memoria[35][4] & !\RB~combout\(3)))))
-- \memoria[35][4]~regout\ = DFFEAS(\QB~203\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~22_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[39][4]~regout\,
	datab => \RB~combout\(2),
	datac => \WD~combout\(4),
	datad => \RB~combout\(3),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~203\,
	regout => \memoria[35][4]~regout\);

-- Location: LC_X9_Y12_N6
\memoria[39][4]\ : maxv_lcell
-- Equation(s):
-- \QA~203\ = (\RA~combout\(2) & ((\RA~combout\(3)) # ((memoria[39][4])))) # (!\RA~combout\(2) & (!\RA~combout\(3) & ((\memoria[35][4]~regout\))))
-- \memoria[39][4]~regout\ = DFFEAS(\QA~203\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~19_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(2),
	datab => \RA~combout\(3),
	datac => \WD~combout\(4),
	datad => \memoria[35][4]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~203\,
	regout => \memoria[39][4]~regout\);

-- Location: LC_X9_Y10_N3
\memoria[43][4]\ : maxv_lcell
-- Equation(s):
-- \QA~204\ = (\RA~combout\(3) & ((\QA~203\ & (\memoria[47][4]~regout\)) # (!\QA~203\ & ((memoria[43][4]))))) # (!\RA~combout\(3) & (((\QA~203\))))
-- \memoria[43][4]~regout\ = DFFEAS(\QA~204\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~21_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(3),
	datab => \memoria[47][4]~regout\,
	datac => \WD~combout\(4),
	datad => \QA~203\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~204\,
	regout => \memoria[43][4]~regout\);

-- Location: LC_X9_Y10_N1
\memoria[47][4]\ : maxv_lcell
-- Equation(s):
-- \QB~204\ = (\RB~combout\(3) & ((\QB~203\ & (memoria[47][4])) # (!\QB~203\ & ((\memoria[43][4]~regout\))))) # (!\RB~combout\(3) & (\QB~203\))
-- \memoria[47][4]~regout\ = DFFEAS(\QB~204\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~23_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(3),
	datab => \QB~203\,
	datac => \WD~combout\(4),
	datad => \memoria[43][4]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~204\,
	regout => \memoria[47][4]~regout\);

-- Location: LC_X10_Y10_N0
\memoria[7][4]\ : maxv_lcell
-- Equation(s):
-- \QA~207\ = (\RA~combout\(3) & (\RA~combout\(2))) # (!\RA~combout\(3) & ((\RA~combout\(2) & (memoria[7][4])) # (!\RA~combout\(2) & ((\memoria[3][4]~regout\)))))
-- \memoria[7][4]~regout\ = DFFEAS(\QA~207\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~47_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(3),
	datab => \RA~combout\(2),
	datac => \WD~combout\(4),
	datad => \memoria[3][4]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~207\,
	regout => \memoria[7][4]~regout\);

-- Location: LC_X10_Y10_N9
\memoria[3][4]\ : maxv_lcell
-- Equation(s):
-- \QB~207\ = (\RB~combout\(2) & ((\memoria[7][4]~regout\) # ((\RB~combout\(3))))) # (!\RB~combout\(2) & (((memoria[3][4] & !\RB~combout\(3)))))
-- \memoria[3][4]~regout\ = DFFEAS(\QB~207\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~51_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(2),
	datab => \memoria[7][4]~regout\,
	datac => \WD~combout\(4),
	datad => \RB~combout\(3),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~207\,
	regout => \memoria[3][4]~regout\);

-- Location: LC_X11_Y10_N7
\memoria[11][4]\ : maxv_lcell
-- Equation(s):
-- \QA~208\ = (\QA~207\ & (((\memoria[15][4]~regout\)) # (!\RA~combout\(3)))) # (!\QA~207\ & (\RA~combout\(3) & (memoria[11][4])))
-- \memoria[11][4]~regout\ = DFFEAS(\QA~208\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~43_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QA~207\,
	datab => \RA~combout\(3),
	datac => \WD~combout\(4),
	datad => \memoria[15][4]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~208\,
	regout => \memoria[11][4]~regout\);

-- Location: LC_X11_Y10_N9
\memoria[15][4]\ : maxv_lcell
-- Equation(s):
-- \QB~208\ = (\RB~combout\(3) & ((\QB~207\ & ((memoria[15][4]))) # (!\QB~207\ & (\memoria[11][4]~regout\)))) # (!\RB~combout\(3) & (((\QB~207\))))
-- \memoria[15][4]~regout\ = DFFEAS(\QB~208\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~55_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[11][4]~regout\,
	datab => \RB~combout\(3),
	datac => \WD~combout\(4),
	datad => \QB~207\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~208\,
	regout => \memoria[15][4]~regout\);

-- Location: LC_X12_Y13_N5
\memoria[27][4]\ : maxv_lcell
-- Equation(s):
-- \QA~205\ = (\RA~combout\(2) & (\RA~combout\(3))) # (!\RA~combout\(2) & ((\RA~combout\(3) & (memoria[27][4])) # (!\RA~combout\(3) & ((\memoria[19][4]~regout\)))))
-- \memoria[27][4]~regout\ = DFFEAS(\QA~205\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~31_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(2),
	datab => \RA~combout\(3),
	datac => \WD~combout\(4),
	datad => \memoria[19][4]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~205\,
	regout => \memoria[27][4]~regout\);

-- Location: LC_X12_Y13_N2
\memoria[19][4]\ : maxv_lcell
-- Equation(s):
-- \QB~205\ = (\RB~combout\(3) & ((\memoria[27][4]~regout\) # ((\RB~combout\(2))))) # (!\RB~combout\(3) & (((memoria[19][4] & !\RB~combout\(2)))))
-- \memoria[19][4]~regout\ = DFFEAS(\QB~205\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~35_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(3),
	datab => \memoria[27][4]~regout\,
	datac => \WD~combout\(4),
	datad => \RB~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~205\,
	regout => \memoria[19][4]~regout\);

-- Location: LC_X12_Y12_N5
\memoria[23][4]\ : maxv_lcell
-- Equation(s):
-- \QA~206\ = (\RA~combout\(2) & ((\QA~205\ & ((\memoria[31][4]~regout\))) # (!\QA~205\ & (memoria[23][4])))) # (!\RA~combout\(2) & (\QA~205\))
-- \memoria[23][4]~regout\ = DFFEAS(\QA~206\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~27_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(2),
	datab => \QA~205\,
	datac => \WD~combout\(4),
	datad => \memoria[31][4]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~206\,
	regout => \memoria[23][4]~regout\);

-- Location: LC_X12_Y12_N3
\memoria[31][4]\ : maxv_lcell
-- Equation(s):
-- \QB~206\ = (\QB~205\ & (((memoria[31][4]) # (!\RB~combout\(2))))) # (!\QB~205\ & (\memoria[23][4]~regout\ & ((\RB~combout\(2)))))
-- \memoria[31][4]~regout\ = DFFEAS(\QB~206\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~39_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[23][4]~regout\,
	datab => \QB~205\,
	datac => \WD~combout\(4),
	datad => \RB~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~206\,
	regout => \memoria[31][4]~regout\);

-- Location: LC_X12_Y11_N7
\QA~209\ : maxv_lcell
-- Equation(s):
-- \QA~209_combout\ = (\RA~combout\(4) & (((\RA~combout\(5)) # (\QA~206\)))) # (!\RA~combout\(4) & (\QA~208\ & (!\RA~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aea4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RA~combout\(4),
	datab => \QA~208\,
	datac => \RA~combout\(5),
	datad => \QA~206\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~209_combout\);

-- Location: LC_X13_Y9_N8
\memoria[59][4]\ : maxv_lcell
-- Equation(s):
-- \QA~210\ = (\RA~combout\(2) & (((\RA~combout\(3))))) # (!\RA~combout\(2) & ((\RA~combout\(3) & ((memoria[59][4]))) # (!\RA~combout\(3) & (\memoria[51][4]~regout\))))
-- \memoria[59][4]~regout\ = DFFEAS(\QA~210\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~59_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[51][4]~regout\,
	datab => \RA~combout\(2),
	datac => \WD~combout\(4),
	datad => \RA~combout\(3),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~210\,
	regout => \memoria[59][4]~regout\);

-- Location: LC_X13_Y9_N5
\memoria[51][4]\ : maxv_lcell
-- Equation(s):
-- \QB~210\ = (\RB~combout\(2) & (\RB~combout\(3))) # (!\RB~combout\(2) & ((\RB~combout\(3) & ((\memoria[59][4]~regout\))) # (!\RB~combout\(3) & (memoria[51][4]))))
-- \memoria[51][4]~regout\ = DFFEAS(\QB~210\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~67_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(2),
	datab => \RB~combout\(3),
	datac => \WD~combout\(4),
	datad => \memoria[59][4]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~210\,
	regout => \memoria[51][4]~regout\);

-- Location: LC_X13_Y10_N4
\memoria[55][4]\ : maxv_lcell
-- Equation(s):
-- \QA~211\ = (\RA~combout\(2) & ((\QA~210\ & (\memoria[63][4]~regout\)) # (!\QA~210\ & ((memoria[55][4]))))) # (!\RA~combout\(2) & (((\QA~210\))))
-- \memoria[55][4]~regout\ = DFFEAS(\QA~211\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~63_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[63][4]~regout\,
	datab => \RA~combout\(2),
	datac => \WD~combout\(4),
	datad => \QA~210\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~211\,
	regout => \memoria[55][4]~regout\);

-- Location: LC_X13_Y10_N6
\memoria[63][4]\ : maxv_lcell
-- Equation(s):
-- \QB~211\ = (\RB~combout\(2) & ((\QB~210\ & ((memoria[63][4]))) # (!\QB~210\ & (\memoria[55][4]~regout\)))) # (!\RB~combout\(2) & (((\QB~210\))))
-- \memoria[63][4]~regout\ = DFFEAS(\QB~211\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~71_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[55][4]~regout\,
	datab => \RB~combout\(2),
	datac => \WD~combout\(4),
	datad => \QB~210\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~211\,
	regout => \memoria[63][4]~regout\);

-- Location: LC_X13_Y10_N5
\QA~212\ : maxv_lcell
-- Equation(s):
-- \QA~212_combout\ = (\QA~209_combout\ & (((\QA~211\) # (!\RA~combout\(5))))) # (!\QA~209_combout\ & (\QA~204\ & (\RA~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec2c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~204\,
	datab => \QA~209_combout\,
	datac => \RA~combout\(5),
	datad => \QA~211\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~212_combout\);

-- Location: LC_X5_Y4_N2
\memoria[26][4]\ : maxv_lcell
-- Equation(s):
-- \QA~184\ = (\RA~combout\(4) & (((memoria[26][4]) # (\RA~combout\(5))))) # (!\RA~combout\(4) & (\memoria[10][4]~regout\ & ((!\RA~combout\(5)))))
-- \memoria[26][4]~regout\ = DFFEAS(\QA~184\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~29_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[10][4]~regout\,
	datab => \RA~combout\(4),
	datac => \WD~combout\(4),
	datad => \RA~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~184\,
	regout => \memoria[26][4]~regout\);

-- Location: LC_X5_Y4_N6
\memoria[10][4]\ : maxv_lcell
-- Equation(s):
-- \QB~184\ = (\RB~combout\(4) & ((\memoria[26][4]~regout\) # ((\RB~combout\(5))))) # (!\RB~combout\(4) & (((memoria[10][4] & !\RB~combout\(5)))))
-- \memoria[10][4]~regout\ = DFFEAS(\QB~184\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~41_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(4),
	datab => \memoria[26][4]~regout\,
	datac => \WD~combout\(4),
	datad => \RB~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~184\,
	regout => \memoria[10][4]~regout\);

-- Location: LC_X6_Y4_N8
\memoria[42][4]\ : maxv_lcell
-- Equation(s):
-- \QA~185\ = (\RA~combout\(5) & ((\QA~184\ & (\memoria[58][4]~regout\)) # (!\QA~184\ & ((memoria[42][4]))))) # (!\RA~combout\(5) & (((\QA~184\))))
-- \memoria[42][4]~regout\ = DFFEAS(\QA~185\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~7_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[58][4]~regout\,
	datab => \RA~combout\(5),
	datac => \WD~combout\(4),
	datad => \QA~184\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~185\,
	regout => \memoria[42][4]~regout\);

-- Location: LC_X6_Y4_N3
\memoria[58][4]\ : maxv_lcell
-- Equation(s):
-- \QB~185\ = (\QB~184\ & (((memoria[58][4]) # (!\RB~combout\(5))))) # (!\QB~184\ & (\memoria[42][4]~regout\ & ((\RB~combout\(5)))))
-- \memoria[58][4]~regout\ = DFFEAS(\QB~185\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~56_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[42][4]~regout\,
	datab => \QB~184\,
	datac => \WD~combout\(4),
	datad => \RB~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~185\,
	regout => \memoria[58][4]~regout\);

-- Location: LC_X5_Y5_N4
\memoria[2][4]\ : maxv_lcell
-- Equation(s):
-- \QB~186\ = (\RB~combout\(4) & ((\memoria[18][4]~regout\) # ((\RB~combout\(5))))) # (!\RB~combout\(4) & (((memoria[2][4] & !\RB~combout\(5)))))
-- \memoria[2][4]~regout\ = DFFEAS(\QB~186\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~49_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[18][4]~regout\,
	datab => \RB~combout\(4),
	datac => \WD~combout\(4),
	datad => \RB~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~186\,
	regout => \memoria[2][4]~regout\);

-- Location: LC_X5_Y5_N8
\memoria[18][4]\ : maxv_lcell
-- Equation(s):
-- \QA~186\ = (\RA~combout\(5) & (((\RA~combout\(4))))) # (!\RA~combout\(5) & ((\RA~combout\(4) & ((memoria[18][4]))) # (!\RA~combout\(4) & (\memoria[2][4]~regout\))))
-- \memoria[18][4]~regout\ = DFFEAS(\QA~186\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~33_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[2][4]~regout\,
	datab => \RA~combout\(5),
	datac => \WD~combout\(4),
	datad => \RA~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~186\,
	regout => \memoria[18][4]~regout\);

-- Location: LC_X6_Y5_N9
\memoria[34][4]\ : maxv_lcell
-- Equation(s):
-- \QA~187\ = (\RA~combout\(5) & ((\QA~186\ & (\memoria[50][4]~regout\)) # (!\QA~186\ & ((memoria[34][4]))))) # (!\RA~combout\(5) & (((\QA~186\))))
-- \memoria[34][4]~regout\ = DFFEAS(\QA~187\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~10_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(5),
	datab => \memoria[50][4]~regout\,
	datac => \WD~combout\(4),
	datad => \QA~186\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~187\,
	regout => \memoria[34][4]~regout\);

-- Location: LC_X6_Y5_N7
\memoria[50][4]\ : maxv_lcell
-- Equation(s):
-- \QB~187\ = (\RB~combout\(5) & ((\QB~186\ & (memoria[50][4])) # (!\QB~186\ & ((\memoria[34][4]~regout\))))) # (!\RB~combout\(5) & (\QB~186\))
-- \memoria[50][4]~regout\ = DFFEAS(\QB~187\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~64_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(5),
	datab => \QB~186\,
	datac => \WD~combout\(4),
	datad => \memoria[34][4]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~187\,
	regout => \memoria[50][4]~regout\);

-- Location: LC_X6_Y5_N0
\QA~188\ : maxv_lcell
-- Equation(s):
-- \QA~188_combout\ = (\RA~combout\(2) & (((\RA~combout\(3))))) # (!\RA~combout\(2) & ((\RA~combout\(3) & (\QA~185\)) # (!\RA~combout\(3) & ((\QA~187\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e3e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~185\,
	datab => \RA~combout\(2),
	datac => \RA~combout\(3),
	datad => \QA~187\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~188_combout\);

-- Location: LC_X8_Y8_N7
\memoria[38][4]\ : maxv_lcell
-- Equation(s):
-- \QA~182\ = (\RA~combout\(5) & (((memoria[38][4]) # (\RA~combout\(4))))) # (!\RA~combout\(5) & (\memoria[6][4]~regout\ & ((!\RA~combout\(4)))))
-- \memoria[38][4]~regout\ = DFFEAS(\QA~182\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~9_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[6][4]~regout\,
	datab => \RA~combout\(5),
	datac => \WD~combout\(4),
	datad => \RA~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~182\,
	regout => \memoria[38][4]~regout\);

-- Location: LC_X8_Y8_N6
\memoria[6][4]\ : maxv_lcell
-- Equation(s):
-- \QB~182\ = (\RB~combout\(4) & (((\RB~combout\(5))))) # (!\RB~combout\(4) & ((\RB~combout\(5) & (\memoria[38][4]~regout\)) # (!\RB~combout\(5) & ((memoria[6][4])))))
-- \memoria[6][4]~regout\ = DFFEAS(\QB~182\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~44_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[38][4]~regout\,
	datab => \RB~combout\(4),
	datac => \WD~combout\(4),
	datad => \RB~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~182\,
	regout => \memoria[6][4]~regout\);

-- Location: LC_X9_Y4_N9
\memoria[22][4]\ : maxv_lcell
-- Equation(s):
-- \QA~183\ = (\QA~182\ & (((\memoria[54][4]~regout\)) # (!\RA~combout\(4)))) # (!\QA~182\ & (\RA~combout\(4) & (memoria[22][4])))
-- \memoria[22][4]~regout\ = DFFEAS(\QA~183\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~24_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QA~182\,
	datab => \RA~combout\(4),
	datac => \WD~combout\(4),
	datad => \memoria[54][4]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~183\,
	regout => \memoria[22][4]~regout\);

-- Location: LC_X9_Y4_N2
\memoria[54][4]\ : maxv_lcell
-- Equation(s):
-- \QB~183\ = (\RB~combout\(4) & ((\QB~182\ & (memoria[54][4])) # (!\QB~182\ & ((\memoria[22][4]~regout\))))) # (!\RB~combout\(4) & (\QB~182\))
-- \memoria[54][4]~regout\ = DFFEAS(\QB~183\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~61_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(4),
	datab => \QB~182\,
	datac => \WD~combout\(4),
	datad => \memoria[22][4]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~183\,
	regout => \memoria[54][4]~regout\);

-- Location: LC_X9_Y7_N3
\memoria[46][4]\ : maxv_lcell
-- Equation(s):
-- \QA~189\ = (\RA~combout\(5) & ((\RA~combout\(4)) # ((memoria[46][4])))) # (!\RA~combout\(5) & (!\RA~combout\(4) & ((\memoria[14][4]~regout\))))
-- \memoria[46][4]~regout\ = DFFEAS(\QA~189\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~11_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(5),
	datab => \RA~combout\(4),
	datac => \WD~combout\(4),
	datad => \memoria[14][4]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~189\,
	regout => \memoria[46][4]~regout\);

-- Location: LC_X9_Y7_N9
\memoria[14][4]\ : maxv_lcell
-- Equation(s):
-- \QB~189\ = (\RB~combout\(4) & (((\RB~combout\(5))))) # (!\RB~combout\(4) & ((\RB~combout\(5) & (\memoria[46][4]~regout\)) # (!\RB~combout\(5) & ((memoria[14][4])))))
-- \memoria[14][4]~regout\ = DFFEAS(\QB~189\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~52_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[46][4]~regout\,
	datab => \RB~combout\(4),
	datac => \WD~combout\(4),
	datad => \RB~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~189\,
	regout => \memoria[14][4]~regout\);

-- Location: LC_X9_Y6_N8
\memoria[30][4]\ : maxv_lcell
-- Equation(s):
-- \QA~190\ = (\QA~189\ & ((\memoria[62][4]~regout\) # ((!\RA~combout\(4))))) # (!\QA~189\ & (((memoria[30][4] & \RA~combout\(4)))))
-- \memoria[30][4]~regout\ = DFFEAS(\QA~190\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~36_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[62][4]~regout\,
	datab => \QA~189\,
	datac => \WD~combout\(4),
	datad => \RA~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~190\,
	regout => \memoria[30][4]~regout\);

-- Location: LC_X9_Y6_N6
\memoria[62][4]\ : maxv_lcell
-- Equation(s):
-- \QB~190\ = (\RB~combout\(4) & ((\QB~189\ & ((memoria[62][4]))) # (!\QB~189\ & (\memoria[30][4]~regout\)))) # (!\RB~combout\(4) & (((\QB~189\))))
-- \memoria[62][4]~regout\ = DFFEAS(\QB~190\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~69_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[30][4]~regout\,
	datab => \RB~combout\(4),
	datac => \WD~combout\(4),
	datad => \QB~189\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~190\,
	regout => \memoria[62][4]~regout\);

-- Location: LC_X8_Y6_N0
\QA~191\ : maxv_lcell
-- Equation(s):
-- \QA~191_combout\ = (\QA~188_combout\ & (((\QA~190\)) # (!\RA~combout\(2)))) # (!\QA~188_combout\ & (\RA~combout\(2) & (\QA~183\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~188_combout\,
	datab => \RA~combout\(2),
	datac => \QA~183\,
	datad => \QA~190\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~191_combout\);

-- Location: LC_X8_Y9_N0
\memoria[16][4]\ : maxv_lcell
-- Equation(s):
-- \QA~196\ = (\RA~combout\(4) & ((\RA~combout\(5)) # ((memoria[16][4])))) # (!\RA~combout\(4) & (!\RA~combout\(5) & ((\memoria[0][4]~regout\))))
-- \memoria[16][4]~regout\ = DFFEAS(\QA~196\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~34_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(4),
	datab => \RA~combout\(5),
	datac => \WD~combout\(4),
	datad => \memoria[0][4]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~196\,
	regout => \memoria[16][4]~regout\);

-- Location: LC_X8_Y9_N1
\memoria[0][4]\ : maxv_lcell
-- Equation(s):
-- \QB~196\ = (\RB~combout\(5) & (((\RB~combout\(4))))) # (!\RB~combout\(5) & ((\RB~combout\(4) & (\memoria[16][4]~regout\)) # (!\RB~combout\(4) & ((memoria[0][4])))))
-- \memoria[0][4]~regout\ = DFFEAS(\QB~196\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~50_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(5),
	datab => \memoria[16][4]~regout\,
	datac => \WD~combout\(4),
	datad => \RB~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~196\,
	regout => \memoria[0][4]~regout\);

-- Location: LC_X9_Y11_N7
\memoria[32][4]\ : maxv_lcell
-- Equation(s):
-- \QA~197\ = (\RA~combout\(5) & ((\QA~196\ & (\memoria[48][4]~regout\)) # (!\QA~196\ & ((memoria[32][4]))))) # (!\RA~combout\(5) & (((\QA~196\))))
-- \memoria[32][4]~regout\ = DFFEAS(\QA~197\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~16_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[48][4]~regout\,
	datab => \RA~combout\(5),
	datac => \WD~combout\(4),
	datad => \QA~196\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~197\,
	regout => \memoria[32][4]~regout\);

-- Location: LC_X9_Y11_N3
\memoria[48][4]\ : maxv_lcell
-- Equation(s):
-- \QB~197\ = (\QB~196\ & (((memoria[48][4]) # (!\RB~combout\(5))))) # (!\QB~196\ & (\memoria[32][4]~regout\ & ((\RB~combout\(5)))))
-- \memoria[48][4]~regout\ = DFFEAS(\QB~197\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~66_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[32][4]~regout\,
	datab => \QB~196\,
	datac => \WD~combout\(4),
	datad => \RB~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~197\,
	regout => \memoria[48][4]~regout\);

-- Location: LC_X7_Y12_N8
\memoria[24][4]\ : maxv_lcell
-- Equation(s):
-- \QA~194\ = (\RA~combout\(5) & (((\RA~combout\(4))))) # (!\RA~combout\(5) & ((\RA~combout\(4) & ((memoria[24][4]))) # (!\RA~combout\(4) & (\memoria[8][4]~regout\))))
-- \memoria[24][4]~regout\ = DFFEAS(\QA~194\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~30_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[8][4]~regout\,
	datab => \RA~combout\(5),
	datac => \WD~combout\(4),
	datad => \RA~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~194\,
	regout => \memoria[24][4]~regout\);

-- Location: LC_X7_Y12_N6
\memoria[8][4]\ : maxv_lcell
-- Equation(s):
-- \QB~194\ = (\RB~combout\(4) & ((\memoria[24][4]~regout\) # ((\RB~combout\(5))))) # (!\RB~combout\(4) & (((memoria[8][4] & !\RB~combout\(5)))))
-- \memoria[8][4]~regout\ = DFFEAS(\QB~194\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~42_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[24][4]~regout\,
	datab => \RB~combout\(4),
	datac => \WD~combout\(4),
	datad => \RB~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~194\,
	regout => \memoria[8][4]~regout\);

-- Location: LC_X8_Y12_N4
\memoria[40][4]\ : maxv_lcell
-- Equation(s):
-- \QA~195\ = (\QA~194\ & (((\memoria[56][4]~regout\)) # (!\RA~combout\(5)))) # (!\QA~194\ & (\RA~combout\(5) & (memoria[40][4])))
-- \memoria[40][4]~regout\ = DFFEAS(\QA~195\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~13_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QA~194\,
	datab => \RA~combout\(5),
	datac => \WD~combout\(4),
	datad => \memoria[56][4]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~195\,
	regout => \memoria[40][4]~regout\);

-- Location: LC_X8_Y12_N9
\memoria[56][4]\ : maxv_lcell
-- Equation(s):
-- \QB~195\ = (\QB~194\ & (((memoria[56][4]) # (!\RB~combout\(5))))) # (!\QB~194\ & (\memoria[40][4]~regout\ & ((\RB~combout\(5)))))
-- \memoria[56][4]~regout\ = DFFEAS(\QB~195\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~58_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[40][4]~regout\,
	datab => \QB~194\,
	datac => \WD~combout\(4),
	datad => \RB~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~195\,
	regout => \memoria[56][4]~regout\);

-- Location: LC_X9_Y12_N4
\QA~198\ : maxv_lcell
-- Equation(s):
-- \QA~198_combout\ = (\RA~combout\(3) & (((\RA~combout\(2)) # (\QA~195\)))) # (!\RA~combout\(3) & (\QA~197\ & (!\RA~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cec2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~197\,
	datab => \RA~combout\(3),
	datac => \RA~combout\(2),
	datad => \QA~195\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~198_combout\);

-- Location: LC_X9_Y13_N5
\memoria[36][4]\ : maxv_lcell
-- Equation(s):
-- \QA~192\ = (\RA~combout\(5) & (((memoria[36][4]) # (\RA~combout\(4))))) # (!\RA~combout\(5) & (\memoria[4][4]~regout\ & ((!\RA~combout\(4)))))
-- \memoria[36][4]~regout\ = DFFEAS(\QA~192\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~15_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(5),
	datab => \memoria[4][4]~regout\,
	datac => \WD~combout\(4),
	datad => \RA~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~192\,
	regout => \memoria[36][4]~regout\);

-- Location: LC_X9_Y13_N9
\memoria[4][4]\ : maxv_lcell
-- Equation(s):
-- \QB~192\ = (\RB~combout\(4) & (((\RB~combout\(5))))) # (!\RB~combout\(4) & ((\RB~combout\(5) & (\memoria[36][4]~regout\)) # (!\RB~combout\(5) & ((memoria[4][4])))))
-- \memoria[4][4]~regout\ = DFFEAS(\QB~192\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~46_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[36][4]~regout\,
	datab => \RB~combout\(4),
	datac => \WD~combout\(4),
	datad => \RB~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~192\,
	regout => \memoria[4][4]~regout\);

-- Location: LC_X8_Y11_N6
\memoria[20][4]\ : maxv_lcell
-- Equation(s):
-- \QA~193\ = (\RA~combout\(4) & ((\QA~192\ & (\memoria[52][4]~regout\)) # (!\QA~192\ & ((memoria[20][4]))))) # (!\RA~combout\(4) & (((\QA~192\))))
-- \memoria[20][4]~regout\ = DFFEAS(\QA~193\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~26_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[52][4]~regout\,
	datab => \RA~combout\(4),
	datac => \WD~combout\(4),
	datad => \QA~192\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~193\,
	regout => \memoria[20][4]~regout\);

-- Location: LC_X8_Y11_N8
\memoria[52][4]\ : maxv_lcell
-- Equation(s):
-- \QB~193\ = (\RB~combout\(4) & ((\QB~192\ & ((memoria[52][4]))) # (!\QB~192\ & (\memoria[20][4]~regout\)))) # (!\RB~combout\(4) & (((\QB~192\))))
-- \memoria[52][4]~regout\ = DFFEAS(\QB~193\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~62_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[20][4]~regout\,
	datab => \RB~combout\(4),
	datac => \WD~combout\(4),
	datad => \QB~192\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~193\,
	regout => \memoria[52][4]~regout\);

-- Location: LC_X14_Y11_N1
\memoria[44][4]\ : maxv_lcell
-- Equation(s):
-- \QA~199\ = (\RA~combout\(4) & (((\RA~combout\(5))))) # (!\RA~combout\(4) & ((\RA~combout\(5) & ((memoria[44][4]))) # (!\RA~combout\(5) & (\memoria[12][4]~regout\))))
-- \memoria[44][4]~regout\ = DFFEAS(\QA~199\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~17_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(4),
	datab => \memoria[12][4]~regout\,
	datac => \WD~combout\(4),
	datad => \RA~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~199\,
	regout => \memoria[44][4]~regout\);

-- Location: LC_X14_Y11_N7
\memoria[12][4]\ : maxv_lcell
-- Equation(s):
-- \QB~199\ = (\RB~combout\(5) & ((\RB~combout\(4)) # ((\memoria[44][4]~regout\)))) # (!\RB~combout\(5) & (!\RB~combout\(4) & (memoria[12][4])))
-- \memoria[12][4]~regout\ = DFFEAS(\QB~199\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~54_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(5),
	datab => \RB~combout\(4),
	datac => \WD~combout\(4),
	datad => \memoria[44][4]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~199\,
	regout => \memoria[12][4]~regout\);

-- Location: LC_X13_Y11_N7
\memoria[28][4]\ : maxv_lcell
-- Equation(s):
-- \QA~200\ = (\RA~combout\(4) & ((\QA~199\ & (\memoria[60][4]~regout\)) # (!\QA~199\ & ((memoria[28][4]))))) # (!\RA~combout\(4) & (((\QA~199\))))
-- \memoria[28][4]~regout\ = DFFEAS(\QA~200\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~38_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[60][4]~regout\,
	datab => \RA~combout\(4),
	datac => \WD~combout\(4),
	datad => \QA~199\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~200\,
	regout => \memoria[28][4]~regout\);

-- Location: LC_X13_Y11_N6
\memoria[60][4]\ : maxv_lcell
-- Equation(s):
-- \QB~200\ = (\RB~combout\(4) & ((\QB~199\ & ((memoria[60][4]))) # (!\QB~199\ & (\memoria[28][4]~regout\)))) # (!\RB~combout\(4) & (((\QB~199\))))
-- \memoria[60][4]~regout\ = DFFEAS(\QB~200\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~70_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[28][4]~regout\,
	datab => \RB~combout\(4),
	datac => \WD~combout\(4),
	datad => \QB~199\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~200\,
	regout => \memoria[60][4]~regout\);

-- Location: LC_X13_Y11_N3
\QA~201\ : maxv_lcell
-- Equation(s):
-- \QA~201_combout\ = (\QA~198_combout\ & (((\QA~200\) # (!\RA~combout\(2))))) # (!\QA~198_combout\ & (\QA~193\ & ((\RA~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~198_combout\,
	datab => \QA~193\,
	datac => \QA~200\,
	datad => \RA~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~201_combout\);

-- Location: LC_X15_Y7_N7
\QA~202\ : maxv_lcell
-- Equation(s):
-- \QA~202_combout\ = (\RA~combout\(0) & (((\RA~combout\(1))))) # (!\RA~combout\(0) & ((\RA~combout\(1) & (\QA~191_combout\)) # (!\RA~combout\(1) & ((\QA~201_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e3e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~191_combout\,
	datab => \RA~combout\(0),
	datac => \RA~combout\(1),
	datad => \QA~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~202_combout\);

-- Location: LC_X16_Y8_N2
\memoria[17][4]\ : maxv_lcell
-- Equation(s):
-- \QA~176\ = (\RA~combout\(4) & (((memoria[17][4]) # (\RA~combout\(5))))) # (!\RA~combout\(4) & (\memoria[1][4]~regout\ & ((!\RA~combout\(5)))))
-- \memoria[17][4]~regout\ = DFFEAS(\QA~176\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~32_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(4),
	datab => \memoria[1][4]~regout\,
	datac => \WD~combout\(4),
	datad => \RA~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~176\,
	regout => \memoria[17][4]~regout\);

-- Location: LC_X16_Y8_N7
\memoria[1][4]\ : maxv_lcell
-- Equation(s):
-- \QB~176\ = (\RB~combout\(4) & ((\RB~combout\(5)) # ((\memoria[17][4]~regout\)))) # (!\RB~combout\(4) & (!\RB~combout\(5) & (memoria[1][4])))
-- \memoria[1][4]~regout\ = DFFEAS(\QB~176\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~48_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(4),
	datab => \RB~combout\(5),
	datac => \WD~combout\(4),
	datad => \memoria[17][4]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~176\,
	regout => \memoria[1][4]~regout\);

-- Location: LC_X17_Y8_N2
\memoria[33][4]\ : maxv_lcell
-- Equation(s):
-- \QA~177\ = (\QA~176\ & ((\memoria[49][4]~regout\) # ((!\RA~combout\(5))))) # (!\QA~176\ & (((memoria[33][4] & \RA~combout\(5)))))
-- \memoria[33][4]~regout\ = DFFEAS(\QA~177\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~4_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[49][4]~regout\,
	datab => \QA~176\,
	datac => \WD~combout\(4),
	datad => \RA~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~177\,
	regout => \memoria[33][4]~regout\);

-- Location: LC_X17_Y8_N5
\memoria[49][4]\ : maxv_lcell
-- Equation(s):
-- \QB~177\ = (\RB~combout\(5) & ((\QB~176\ & ((memoria[49][4]))) # (!\QB~176\ & (\memoria[33][4]~regout\)))) # (!\RB~combout\(5) & (((\QB~176\))))
-- \memoria[49][4]~regout\ = DFFEAS(\QB~177\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~65_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(5),
	datab => \memoria[33][4]~regout\,
	datac => \WD~combout\(4),
	datad => \QB~176\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~177\,
	regout => \memoria[49][4]~regout\);

-- Location: LC_X18_Y9_N2
\memoria[5][4]\ : maxv_lcell
-- Equation(s):
-- \QB~174\ = (\RB~combout\(5) & ((\RB~combout\(4)) # ((\memoria[37][4]~regout\)))) # (!\RB~combout\(5) & (!\RB~combout\(4) & (memoria[5][4])))
-- \memoria[5][4]~regout\ = DFFEAS(\QB~174\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~45_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(5),
	datab => \RB~combout\(4),
	datac => \WD~combout\(4),
	datad => \memoria[37][4]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~174\,
	regout => \memoria[5][4]~regout\);

-- Location: LC_X18_Y9_N9
\memoria[37][4]\ : maxv_lcell
-- Equation(s):
-- \QA~174\ = (\RA~combout\(5) & ((\RA~combout\(4)) # ((memoria[37][4])))) # (!\RA~combout\(5) & (!\RA~combout\(4) & ((\memoria[5][4]~regout\))))
-- \memoria[37][4]~regout\ = DFFEAS(\QA~174\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~1_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(5),
	datab => \RA~combout\(4),
	datac => \WD~combout\(4),
	datad => \memoria[5][4]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~174\,
	regout => \memoria[37][4]~regout\);

-- Location: LC_X17_Y7_N2
\memoria[21][4]\ : maxv_lcell
-- Equation(s):
-- \QA~175\ = (\RA~combout\(4) & ((\QA~174\ & (\memoria[53][4]~regout\)) # (!\QA~174\ & ((memoria[21][4]))))) # (!\RA~combout\(4) & (((\QA~174\))))
-- \memoria[21][4]~regout\ = DFFEAS(\QA~175\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~25_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[53][4]~regout\,
	datab => \RA~combout\(4),
	datac => \WD~combout\(4),
	datad => \QA~174\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~175\,
	regout => \memoria[21][4]~regout\);

-- Location: LC_X17_Y7_N3
\memoria[53][4]\ : maxv_lcell
-- Equation(s):
-- \QB~175\ = (\RB~combout\(4) & ((\QB~174\ & (memoria[53][4])) # (!\QB~174\ & ((\memoria[21][4]~regout\))))) # (!\RB~combout\(4) & (\QB~174\))
-- \memoria[53][4]~regout\ = DFFEAS(\QB~175\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~60_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(4),
	datab => \QB~174\,
	datac => \WD~combout\(4),
	datad => \memoria[21][4]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~175\,
	regout => \memoria[53][4]~regout\);

-- Location: LC_X17_Y8_N9
\QA~178\ : maxv_lcell
-- Equation(s):
-- \QA~178_combout\ = (\RA~combout\(3) & (((\RA~combout\(2))))) # (!\RA~combout\(3) & ((\RA~combout\(2) & ((\QA~175\))) # (!\RA~combout\(2) & (\QA~177\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RA~combout\(3),
	datab => \QA~177\,
	datac => \RA~combout\(2),
	datad => \QA~175\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~178_combout\);

-- Location: LC_X17_Y4_N3
\memoria[25][4]\ : maxv_lcell
-- Equation(s):
-- \QA~172\ = (\RA~combout\(4) & ((\RA~combout\(5)) # ((memoria[25][4])))) # (!\RA~combout\(4) & (!\RA~combout\(5) & ((\memoria[9][4]~regout\))))
-- \memoria[25][4]~regout\ = DFFEAS(\QA~172\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~28_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(4),
	datab => \RA~combout\(5),
	datac => \WD~combout\(4),
	datad => \memoria[9][4]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~172\,
	regout => \memoria[25][4]~regout\);

-- Location: LC_X17_Y4_N9
\memoria[9][4]\ : maxv_lcell
-- Equation(s):
-- \QB~172\ = (\RB~combout\(5) & (\RB~combout\(4))) # (!\RB~combout\(5) & ((\RB~combout\(4) & ((\memoria[25][4]~regout\))) # (!\RB~combout\(4) & (memoria[9][4]))))
-- \memoria[9][4]~regout\ = DFFEAS(\QB~172\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~40_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(5),
	datab => \RB~combout\(4),
	datac => \WD~combout\(4),
	datad => \memoria[25][4]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~172\,
	regout => \memoria[9][4]~regout\);

-- Location: LC_X17_Y5_N5
\memoria[41][4]\ : maxv_lcell
-- Equation(s):
-- \QA~173\ = (\RA~combout\(5) & ((\QA~172\ & (\memoria[57][4]~regout\)) # (!\QA~172\ & ((memoria[41][4]))))) # (!\RA~combout\(5) & (((\QA~172\))))
-- \memoria[41][4]~regout\ = DFFEAS(\QA~173\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~3_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[57][4]~regout\,
	datab => \RA~combout\(5),
	datac => \WD~combout\(4),
	datad => \QA~172\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~173\,
	regout => \memoria[41][4]~regout\);

-- Location: LC_X17_Y5_N4
\memoria[57][4]\ : maxv_lcell
-- Equation(s):
-- \QB~173\ = (\QB~172\ & (((memoria[57][4]) # (!\RB~combout\(5))))) # (!\QB~172\ & (\memoria[41][4]~regout\ & ((\RB~combout\(5)))))
-- \memoria[57][4]~regout\ = DFFEAS(\QB~173\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~57_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[41][4]~regout\,
	datab => \QB~172\,
	datac => \WD~combout\(4),
	datad => \RB~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~173\,
	regout => \memoria[57][4]~regout\);

-- Location: LC_X16_Y7_N6
\memoria[45][4]\ : maxv_lcell
-- Equation(s):
-- \QA~179\ = (\RA~combout\(5) & ((\RA~combout\(4)) # ((memoria[45][4])))) # (!\RA~combout\(5) & (!\RA~combout\(4) & ((\memoria[13][4]~regout\))))
-- \memoria[45][4]~regout\ = DFFEAS(\QA~179\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~5_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(5),
	datab => \RA~combout\(4),
	datac => \WD~combout\(4),
	datad => \memoria[13][4]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~179\,
	regout => \memoria[45][4]~regout\);

-- Location: LC_X16_Y7_N9
\memoria[13][4]\ : maxv_lcell
-- Equation(s):
-- \QB~179\ = (\RB~combout\(5) & ((\memoria[45][4]~regout\) # ((\RB~combout\(4))))) # (!\RB~combout\(5) & (((memoria[13][4] & !\RB~combout\(4)))))
-- \memoria[13][4]~regout\ = DFFEAS(\QB~179\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~53_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[45][4]~regout\,
	datab => \RB~combout\(5),
	datac => \WD~combout\(4),
	datad => \RB~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~179\,
	regout => \memoria[13][4]~regout\);

-- Location: LC_X15_Y7_N2
\memoria[29][4]\ : maxv_lcell
-- Equation(s):
-- \QA~180\ = (\QA~179\ & ((\memoria[61][4]~regout\) # ((!\RA~combout\(4))))) # (!\QA~179\ & (((memoria[29][4] & \RA~combout\(4)))))
-- \memoria[29][4]~regout\ = DFFEAS(\QA~180\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~37_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QA~179\,
	datab => \memoria[61][4]~regout\,
	datac => \WD~combout\(4),
	datad => \RA~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~180\,
	regout => \memoria[29][4]~regout\);

-- Location: LC_X15_Y7_N9
\memoria[61][4]\ : maxv_lcell
-- Equation(s):
-- \QB~180\ = (\RB~combout\(4) & ((\QB~179\ & (memoria[61][4])) # (!\QB~179\ & ((\memoria[29][4]~regout\))))) # (!\RB~combout\(4) & (\QB~179\))
-- \memoria[61][4]~regout\ = DFFEAS(\QB~180\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~68_combout\, \WD~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(4),
	datab => \QB~179\,
	datac => \WD~combout\(4),
	datad => \memoria[29][4]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~180\,
	regout => \memoria[61][4]~regout\);

-- Location: LC_X15_Y7_N3
\QA~181\ : maxv_lcell
-- Equation(s):
-- \QA~181_combout\ = (\QA~178_combout\ & (((\QA~180\)) # (!\RA~combout\(3)))) # (!\QA~178_combout\ & (\RA~combout\(3) & (\QA~173\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~178_combout\,
	datab => \RA~combout\(3),
	datac => \QA~173\,
	datad => \QA~180\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~181_combout\);

-- Location: LC_X15_Y7_N4
\QA~213\ : maxv_lcell
-- Equation(s):
-- \QA~213_combout\ = (\RA~combout\(0) & ((\QA~202_combout\ & (\QA~212_combout\)) # (!\QA~202_combout\ & ((\QA~181_combout\))))) # (!\RA~combout\(0) & (((\QA~202_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bcb0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~212_combout\,
	datab => \RA~combout\(0),
	datac => \QA~202_combout\,
	datad => \QA~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~213_combout\);

-- Location: LC_X15_Y7_N5
\QA~214\ : maxv_lcell
-- Equation(s):
-- \QA~214_combout\ = (((\readA~combout\ & \QA~213_combout\)))

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
	datac => \readA~combout\,
	datad => \QA~213_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~214_combout\);

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WD[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_WD(5),
	combout => \WD~combout\(5));

-- Location: LC_X15_Y12_N7
\memoria[49][5]\ : maxv_lcell
-- Equation(s):
-- \QA~242\ = (\RA~combout\(1) & (\RA~combout\(0))) # (!\RA~combout\(1) & ((\RA~combout\(0) & (memoria[49][5])) # (!\RA~combout\(0) & ((\memoria[48][5]~regout\)))))
-- \memoria[49][5]~regout\ = DFFEAS(\QA~242\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~65_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(1),
	datab => \RA~combout\(0),
	datac => \WD~combout\(5),
	datad => \memoria[48][5]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~242\,
	regout => \memoria[49][5]~regout\);

-- Location: LC_X15_Y12_N8
\memoria[48][5]\ : maxv_lcell
-- Equation(s):
-- \QB~242\ = (\RB~combout\(1) & (((\RB~combout\(0))))) # (!\RB~combout\(1) & ((\RB~combout\(0) & (\memoria[49][5]~regout\)) # (!\RB~combout\(0) & ((memoria[48][5])))))
-- \memoria[48][5]~regout\ = DFFEAS(\QB~242\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~66_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(1),
	datab => \memoria[49][5]~regout\,
	datac => \WD~combout\(5),
	datad => \RB~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~242\,
	regout => \memoria[48][5]~regout\);

-- Location: LC_X14_Y12_N8
\memoria[50][5]\ : maxv_lcell
-- Equation(s):
-- \QA~243\ = (\RA~combout\(1) & ((\QA~242\ & (\memoria[51][5]~regout\)) # (!\QA~242\ & ((memoria[50][5]))))) # (!\RA~combout\(1) & (((\QA~242\))))
-- \memoria[50][5]~regout\ = DFFEAS(\QA~243\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~64_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[51][5]~regout\,
	datab => \RA~combout\(1),
	datac => \WD~combout\(5),
	datad => \QA~242\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~243\,
	regout => \memoria[50][5]~regout\);

-- Location: LC_X14_Y12_N6
\memoria[51][5]\ : maxv_lcell
-- Equation(s):
-- \QB~243\ = (\QB~242\ & (((memoria[51][5]) # (!\RB~combout\(1))))) # (!\QB~242\ & (\memoria[50][5]~regout\ & ((\RB~combout\(1)))))
-- \memoria[51][5]~regout\ = DFFEAS(\QB~243\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~67_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[50][5]~regout\,
	datab => \QB~242\,
	datac => \WD~combout\(5),
	datad => \RB~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~243\,
	regout => \memoria[51][5]~regout\);

-- Location: LC_X5_Y8_N9
\memoria[17][5]\ : maxv_lcell
-- Equation(s):
-- \QA~235\ = (\RA~combout\(0) & (((memoria[17][5]) # (\RA~combout\(1))))) # (!\RA~combout\(0) & (\memoria[16][5]~regout\ & ((!\RA~combout\(1)))))
-- \memoria[17][5]~regout\ = DFFEAS(\QA~235\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~32_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(0),
	datab => \memoria[16][5]~regout\,
	datac => \WD~combout\(5),
	datad => \RA~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~235\,
	regout => \memoria[17][5]~regout\);

-- Location: LC_X5_Y8_N8
\memoria[16][5]\ : maxv_lcell
-- Equation(s):
-- \QB~235\ = (\RB~combout\(1) & (((\RB~combout\(0))))) # (!\RB~combout\(1) & ((\RB~combout\(0) & (\memoria[17][5]~regout\)) # (!\RB~combout\(0) & ((memoria[16][5])))))
-- \memoria[16][5]~regout\ = DFFEAS(\QB~235\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~34_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(1),
	datab => \memoria[17][5]~regout\,
	datac => \WD~combout\(5),
	datad => \RB~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~235\,
	regout => \memoria[16][5]~regout\);

-- Location: LC_X7_Y8_N9
\memoria[18][5]\ : maxv_lcell
-- Equation(s):
-- \QA~236\ = (\QA~235\ & ((\memoria[19][5]~regout\) # ((!\RA~combout\(1))))) # (!\QA~235\ & (((memoria[18][5] & \RA~combout\(1)))))
-- \memoria[18][5]~regout\ = DFFEAS(\QA~236\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~33_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[19][5]~regout\,
	datab => \QA~235\,
	datac => \WD~combout\(5),
	datad => \RA~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~236\,
	regout => \memoria[18][5]~regout\);

-- Location: LC_X7_Y8_N5
\memoria[19][5]\ : maxv_lcell
-- Equation(s):
-- \QB~236\ = (\RB~combout\(1) & ((\QB~235\ & ((memoria[19][5]))) # (!\QB~235\ & (\memoria[18][5]~regout\)))) # (!\RB~combout\(1) & (((\QB~235\))))
-- \memoria[19][5]~regout\ = DFFEAS(\QB~236\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~35_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(1),
	datab => \memoria[18][5]~regout\,
	datac => \WD~combout\(5),
	datad => \QB~235\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~236\,
	regout => \memoria[19][5]~regout\);

-- Location: LC_X16_Y4_N4
\memoria[34][5]\ : maxv_lcell
-- Equation(s):
-- \QA~237\ = (\RA~combout\(1) & ((\RA~combout\(0)) # ((memoria[34][5])))) # (!\RA~combout\(1) & (!\RA~combout\(0) & ((\memoria[32][5]~regout\))))
-- \memoria[34][5]~regout\ = DFFEAS(\QA~237\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~10_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(1),
	datab => \RA~combout\(0),
	datac => \WD~combout\(5),
	datad => \memoria[32][5]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~237\,
	regout => \memoria[34][5]~regout\);

-- Location: LC_X16_Y4_N2
\memoria[32][5]\ : maxv_lcell
-- Equation(s):
-- \QB~237\ = (\RB~combout\(1) & ((\memoria[34][5]~regout\) # ((\RB~combout\(0))))) # (!\RB~combout\(1) & (((memoria[32][5] & !\RB~combout\(0)))))
-- \memoria[32][5]~regout\ = DFFEAS(\QB~237\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~16_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[34][5]~regout\,
	datab => \RB~combout\(1),
	datac => \WD~combout\(5),
	datad => \RB~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~237\,
	regout => \memoria[32][5]~regout\);

-- Location: LC_X12_Y5_N5
\memoria[33][5]\ : maxv_lcell
-- Equation(s):
-- \QA~238\ = (\RA~combout\(0) & ((\QA~237\ & (\memoria[35][5]~regout\)) # (!\QA~237\ & ((memoria[33][5]))))) # (!\RA~combout\(0) & (((\QA~237\))))
-- \memoria[33][5]~regout\ = DFFEAS(\QA~238\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~4_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[35][5]~regout\,
	datab => \RA~combout\(0),
	datac => \WD~combout\(5),
	datad => \QA~237\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~238\,
	regout => \memoria[33][5]~regout\);

-- Location: LC_X12_Y5_N4
\memoria[35][5]\ : maxv_lcell
-- Equation(s):
-- \QB~238\ = (\RB~combout\(0) & ((\QB~237\ & ((memoria[35][5]))) # (!\QB~237\ & (\memoria[33][5]~regout\)))) # (!\RB~combout\(0) & (((\QB~237\))))
-- \memoria[35][5]~regout\ = DFFEAS(\QB~238\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~22_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[33][5]~regout\,
	datab => \RB~combout\(0),
	datac => \WD~combout\(5),
	datad => \QB~237\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~238\,
	regout => \memoria[35][5]~regout\);

-- Location: LC_X5_Y9_N3
\memoria[2][5]\ : maxv_lcell
-- Equation(s):
-- \QA~239\ = (\RA~combout\(1) & (((memoria[2][5]) # (\RA~combout\(0))))) # (!\RA~combout\(1) & (\memoria[0][5]~regout\ & ((!\RA~combout\(0)))))
-- \memoria[2][5]~regout\ = DFFEAS(\QA~239\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~49_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[0][5]~regout\,
	datab => \RA~combout\(1),
	datac => \WD~combout\(5),
	datad => \RA~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~239\,
	regout => \memoria[2][5]~regout\);

-- Location: LC_X5_Y9_N5
\memoria[0][5]\ : maxv_lcell
-- Equation(s):
-- \QB~239\ = (\RB~combout\(0) & (\RB~combout\(1))) # (!\RB~combout\(0) & ((\RB~combout\(1) & ((\memoria[2][5]~regout\))) # (!\RB~combout\(1) & (memoria[0][5]))))
-- \memoria[0][5]~regout\ = DFFEAS(\QB~239\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~50_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(0),
	datab => \RB~combout\(1),
	datac => \WD~combout\(5),
	datad => \memoria[2][5]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~239\,
	regout => \memoria[0][5]~regout\);

-- Location: LC_X5_Y10_N8
\memoria[1][5]\ : maxv_lcell
-- Equation(s):
-- \QA~240\ = (\QA~239\ & ((\memoria[3][5]~regout\) # ((!\RA~combout\(0))))) # (!\QA~239\ & (((memoria[1][5] & \RA~combout\(0)))))
-- \memoria[1][5]~regout\ = DFFEAS(\QA~240\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~48_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[3][5]~regout\,
	datab => \QA~239\,
	datac => \WD~combout\(5),
	datad => \RA~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~240\,
	regout => \memoria[1][5]~regout\);

-- Location: LC_X5_Y10_N6
\memoria[3][5]\ : maxv_lcell
-- Equation(s):
-- \QB~240\ = (\QB~239\ & (((memoria[3][5]) # (!\RB~combout\(0))))) # (!\QB~239\ & (\memoria[1][5]~regout\ & ((\RB~combout\(0)))))
-- \memoria[3][5]~regout\ = DFFEAS(\QB~240\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~51_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[1][5]~regout\,
	datab => \QB~239\,
	datac => \WD~combout\(5),
	datad => \RB~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~240\,
	regout => \memoria[3][5]~regout\);

-- Location: LC_X13_Y8_N5
\QA~241\ : maxv_lcell
-- Equation(s):
-- \QA~241_combout\ = (\RA~combout\(5) & ((\QA~238\) # ((\RA~combout\(4))))) # (!\RA~combout\(5) & (((\QA~240\ & !\RA~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~238\,
	datab => \RA~combout\(5),
	datac => \QA~240\,
	datad => \RA~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~241_combout\);

-- Location: LC_X13_Y8_N3
\QA~244\ : maxv_lcell
-- Equation(s):
-- \QA~244_combout\ = (\QA~241_combout\ & ((\QA~243\) # ((!\RA~combout\(4))))) # (!\QA~241_combout\ & (((\QA~236\ & \RA~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~243\,
	datab => \QA~236\,
	datac => \QA~241_combout\,
	datad => \RA~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~244_combout\);

-- Location: LC_X20_Y9_N8
\memoria[8][5]\ : maxv_lcell
-- Equation(s):
-- \QB~229\ = (\RB~combout\(0) & (((\RB~combout\(1))))) # (!\RB~combout\(0) & ((\RB~combout\(1) & (\memoria[10][5]~regout\)) # (!\RB~combout\(1) & ((memoria[8][5])))))
-- \memoria[8][5]~regout\ = DFFEAS(\QB~229\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~42_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[10][5]~regout\,
	datab => \RB~combout\(0),
	datac => \WD~combout\(5),
	datad => \RB~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~229\,
	regout => \memoria[8][5]~regout\);

-- Location: LC_X20_Y9_N6
\memoria[10][5]\ : maxv_lcell
-- Equation(s):
-- \QA~229\ = (\RA~combout\(0) & (\RA~combout\(1))) # (!\RA~combout\(0) & ((\RA~combout\(1) & (memoria[10][5])) # (!\RA~combout\(1) & ((\memoria[8][5]~regout\)))))
-- \memoria[10][5]~regout\ = DFFEAS(\QA~229\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~41_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(0),
	datab => \RA~combout\(1),
	datac => \WD~combout\(5),
	datad => \memoria[8][5]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~229\,
	regout => \memoria[10][5]~regout\);

-- Location: LC_X20_Y8_N8
\memoria[9][5]\ : maxv_lcell
-- Equation(s):
-- \QA~230\ = (\RA~combout\(0) & ((\QA~229\ & (\memoria[11][5]~regout\)) # (!\QA~229\ & ((memoria[9][5]))))) # (!\RA~combout\(0) & (((\QA~229\))))
-- \memoria[9][5]~regout\ = DFFEAS(\QA~230\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~40_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(0),
	datab => \memoria[11][5]~regout\,
	datac => \WD~combout\(5),
	datad => \QA~229\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~230\,
	regout => \memoria[9][5]~regout\);

-- Location: LC_X20_Y8_N9
\memoria[11][5]\ : maxv_lcell
-- Equation(s):
-- \QB~230\ = (\QB~229\ & (((memoria[11][5])) # (!\RB~combout\(0)))) # (!\QB~229\ & (\RB~combout\(0) & ((\memoria[9][5]~regout\))))
-- \memoria[11][5]~regout\ = DFFEAS(\QB~230\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~43_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QB~229\,
	datab => \RB~combout\(0),
	datac => \WD~combout\(5),
	datad => \memoria[9][5]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~230\,
	regout => \memoria[11][5]~regout\);

-- Location: LC_X15_Y4_N7
\memoria[42][5]\ : maxv_lcell
-- Equation(s):
-- \QA~227\ = (\RA~combout\(1) & ((\RA~combout\(0)) # ((memoria[42][5])))) # (!\RA~combout\(1) & (!\RA~combout\(0) & ((\memoria[40][5]~regout\))))
-- \memoria[42][5]~regout\ = DFFEAS(\QA~227\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~7_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(1),
	datab => \RA~combout\(0),
	datac => \WD~combout\(5),
	datad => \memoria[40][5]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~227\,
	regout => \memoria[42][5]~regout\);

-- Location: LC_X15_Y4_N9
\memoria[40][5]\ : maxv_lcell
-- Equation(s):
-- \QB~227\ = (\RB~combout\(1) & ((\memoria[42][5]~regout\) # ((\RB~combout\(0))))) # (!\RB~combout\(1) & (((memoria[40][5] & !\RB~combout\(0)))))
-- \memoria[40][5]~regout\ = DFFEAS(\QB~227\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~13_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(1),
	datab => \memoria[42][5]~regout\,
	datac => \WD~combout\(5),
	datad => \RB~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~227\,
	regout => \memoria[40][5]~regout\);

-- Location: LC_X18_Y5_N0
\memoria[41][5]\ : maxv_lcell
-- Equation(s):
-- \QA~228\ = (\RA~combout\(0) & ((\QA~227\ & ((\memoria[43][5]~regout\))) # (!\QA~227\ & (memoria[41][5])))) # (!\RA~combout\(0) & (\QA~227\))
-- \memoria[41][5]~regout\ = DFFEAS(\QA~228\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~3_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(0),
	datab => \QA~227\,
	datac => \WD~combout\(5),
	datad => \memoria[43][5]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~228\,
	regout => \memoria[41][5]~regout\);

-- Location: LC_X18_Y5_N6
\memoria[43][5]\ : maxv_lcell
-- Equation(s):
-- \QB~228\ = (\RB~combout\(0) & ((\QB~227\ & ((memoria[43][5]))) # (!\QB~227\ & (\memoria[41][5]~regout\)))) # (!\RB~combout\(0) & (((\QB~227\))))
-- \memoria[43][5]~regout\ = DFFEAS(\QB~228\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~21_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(0),
	datab => \memoria[41][5]~regout\,
	datac => \WD~combout\(5),
	datad => \QB~227\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~228\,
	regout => \memoria[43][5]~regout\);

-- Location: LC_X18_Y6_N5
\QA~231\ : maxv_lcell
-- Equation(s):
-- \QA~231_combout\ = (\RA~combout\(4) & (((\RA~combout\(5))))) # (!\RA~combout\(4) & ((\RA~combout\(5) & ((\QA~228\))) # (!\RA~combout\(5) & (\QA~230\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RA~combout\(4),
	datab => \QA~230\,
	datac => \RA~combout\(5),
	datad => \QA~228\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~231_combout\);

-- Location: LC_X11_Y7_N7
\memoria[57][5]\ : maxv_lcell
-- Equation(s):
-- \QA~232\ = (\RA~combout\(1) & (((\RA~combout\(0))))) # (!\RA~combout\(1) & ((\RA~combout\(0) & ((memoria[57][5]))) # (!\RA~combout\(0) & (\memoria[56][5]~regout\))))
-- \memoria[57][5]~regout\ = DFFEAS(\QA~232\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~57_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[56][5]~regout\,
	datab => \RA~combout\(1),
	datac => \WD~combout\(5),
	datad => \RA~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~232\,
	regout => \memoria[57][5]~regout\);

-- Location: LC_X11_Y7_N3
\memoria[56][5]\ : maxv_lcell
-- Equation(s):
-- \QB~232\ = (\RB~combout\(1) & (((\RB~combout\(0))))) # (!\RB~combout\(1) & ((\RB~combout\(0) & (\memoria[57][5]~regout\)) # (!\RB~combout\(0) & ((memoria[56][5])))))
-- \memoria[56][5]~regout\ = DFFEAS(\QB~232\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~58_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(1),
	datab => \memoria[57][5]~regout\,
	datac => \WD~combout\(5),
	datad => \RB~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~232\,
	regout => \memoria[56][5]~regout\);

-- Location: LC_X17_Y6_N4
\memoria[58][5]\ : maxv_lcell
-- Equation(s):
-- \QA~233\ = (\RA~combout\(1) & ((\QA~232\ & ((\memoria[59][5]~regout\))) # (!\QA~232\ & (memoria[58][5])))) # (!\RA~combout\(1) & (\QA~232\))
-- \memoria[58][5]~regout\ = DFFEAS(\QA~233\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~56_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(1),
	datab => \QA~232\,
	datac => \WD~combout\(5),
	datad => \memoria[59][5]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~233\,
	regout => \memoria[58][5]~regout\);

-- Location: LC_X17_Y6_N9
\memoria[59][5]\ : maxv_lcell
-- Equation(s):
-- \QB~233\ = (\QB~232\ & (((memoria[59][5]) # (!\RB~combout\(1))))) # (!\QB~232\ & (\memoria[58][5]~regout\ & ((\RB~combout\(1)))))
-- \memoria[59][5]~regout\ = DFFEAS(\QB~233\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~59_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[58][5]~regout\,
	datab => \QB~232\,
	datac => \WD~combout\(5),
	datad => \RB~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~233\,
	regout => \memoria[59][5]~regout\);

-- Location: LC_X14_Y13_N6
\memoria[25][5]\ : maxv_lcell
-- Equation(s):
-- \QA~225\ = (\RA~combout\(0) & (((memoria[25][5]) # (\RA~combout\(1))))) # (!\RA~combout\(0) & (\memoria[24][5]~regout\ & ((!\RA~combout\(1)))))
-- \memoria[25][5]~regout\ = DFFEAS(\QA~225\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~28_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[24][5]~regout\,
	datab => \RA~combout\(0),
	datac => \WD~combout\(5),
	datad => \RA~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~225\,
	regout => \memoria[25][5]~regout\);

-- Location: LC_X14_Y13_N4
\memoria[24][5]\ : maxv_lcell
-- Equation(s):
-- \QB~225\ = (\RB~combout\(1) & (((\RB~combout\(0))))) # (!\RB~combout\(1) & ((\RB~combout\(0) & (\memoria[25][5]~regout\)) # (!\RB~combout\(0) & ((memoria[24][5])))))
-- \memoria[24][5]~regout\ = DFFEAS(\QB~225\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~30_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[25][5]~regout\,
	datab => \RB~combout\(1),
	datac => \WD~combout\(5),
	datad => \RB~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~225\,
	regout => \memoria[24][5]~regout\);

-- Location: LC_X18_Y6_N8
\memoria[26][5]\ : maxv_lcell
-- Equation(s):
-- \QA~226\ = (\RA~combout\(1) & ((\QA~225\ & (\memoria[27][5]~regout\)) # (!\QA~225\ & ((memoria[26][5]))))) # (!\RA~combout\(1) & (((\QA~225\))))
-- \memoria[26][5]~regout\ = DFFEAS(\QA~226\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~29_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[27][5]~regout\,
	datab => \RA~combout\(1),
	datac => \WD~combout\(5),
	datad => \QA~225\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~226\,
	regout => \memoria[26][5]~regout\);

-- Location: LC_X18_Y6_N7
\memoria[27][5]\ : maxv_lcell
-- Equation(s):
-- \QB~226\ = (\QB~225\ & (((memoria[27][5]) # (!\RB~combout\(1))))) # (!\QB~225\ & (\memoria[26][5]~regout\ & ((\RB~combout\(1)))))
-- \memoria[27][5]~regout\ = DFFEAS(\QB~226\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~31_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[26][5]~regout\,
	datab => \QB~225\,
	datac => \WD~combout\(5),
	datad => \RB~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~226\,
	regout => \memoria[27][5]~regout\);

-- Location: LC_X18_Y6_N9
\QA~234\ : maxv_lcell
-- Equation(s):
-- \QA~234_combout\ = (\QA~231_combout\ & ((\QA~233\) # ((!\RA~combout\(4))))) # (!\QA~231_combout\ & (((\RA~combout\(4) & \QA~226\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "da8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~231_combout\,
	datab => \QA~233\,
	datac => \RA~combout\(4),
	datad => \QA~226\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~234_combout\);

-- Location: LC_X13_Y8_N4
\QA~245\ : maxv_lcell
-- Equation(s):
-- \QA~245_combout\ = (\RA~combout\(2) & (((\RA~combout\(3))))) # (!\RA~combout\(2) & ((\RA~combout\(3) & ((\QA~234_combout\))) # (!\RA~combout\(3) & (\QA~244_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~244_combout\,
	datab => \QA~234_combout\,
	datac => \RA~combout\(2),
	datad => \RA~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~245_combout\);

-- Location: LC_X4_Y11_N3
\memoria[21][5]\ : maxv_lcell
-- Equation(s):
-- \QA~217\ = (\RA~combout\(1) & (((\RA~combout\(0))))) # (!\RA~combout\(1) & ((\RA~combout\(0) & ((memoria[21][5]))) # (!\RA~combout\(0) & (\memoria[20][5]~regout\))))
-- \memoria[21][5]~regout\ = DFFEAS(\QA~217\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~25_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(1),
	datab => \memoria[20][5]~regout\,
	datac => \WD~combout\(5),
	datad => \RA~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~217\,
	regout => \memoria[21][5]~regout\);

-- Location: LC_X4_Y11_N7
\memoria[20][5]\ : maxv_lcell
-- Equation(s):
-- \QB~217\ = (\RB~combout\(1) & (((\RB~combout\(0))))) # (!\RB~combout\(1) & ((\RB~combout\(0) & (\memoria[21][5]~regout\)) # (!\RB~combout\(0) & ((memoria[20][5])))))
-- \memoria[20][5]~regout\ = DFFEAS(\QB~217\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~26_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[21][5]~regout\,
	datab => \RB~combout\(1),
	datac => \WD~combout\(5),
	datad => \RB~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~217\,
	regout => \memoria[20][5]~regout\);

-- Location: LC_X4_Y8_N4
\memoria[22][5]\ : maxv_lcell
-- Equation(s):
-- \QA~218\ = (\RA~combout\(1) & ((\QA~217\ & ((\memoria[23][5]~regout\))) # (!\QA~217\ & (memoria[22][5])))) # (!\RA~combout\(1) & (\QA~217\))
-- \memoria[22][5]~regout\ = DFFEAS(\QA~218\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~24_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(1),
	datab => \QA~217\,
	datac => \WD~combout\(5),
	datad => \memoria[23][5]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~218\,
	regout => \memoria[22][5]~regout\);

-- Location: LC_X4_Y8_N9
\memoria[23][5]\ : maxv_lcell
-- Equation(s):
-- \QB~218\ = (\RB~combout\(1) & ((\QB~217\ & ((memoria[23][5]))) # (!\QB~217\ & (\memoria[22][5]~regout\)))) # (!\RB~combout\(1) & (((\QB~217\))))
-- \memoria[23][5]~regout\ = DFFEAS(\QB~218\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~27_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(1),
	datab => \memoria[22][5]~regout\,
	datac => \WD~combout\(5),
	datad => \QB~217\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~218\,
	regout => \memoria[23][5]~regout\);

-- Location: LC_X3_Y9_N4
\memoria[6][5]\ : maxv_lcell
-- Equation(s):
-- \QA~219\ = (\RA~combout\(1) & (((memoria[6][5]) # (\RA~combout\(0))))) # (!\RA~combout\(1) & (\memoria[4][5]~regout\ & ((!\RA~combout\(0)))))
-- \memoria[6][5]~regout\ = DFFEAS(\QA~219\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~44_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(1),
	datab => \memoria[4][5]~regout\,
	datac => \WD~combout\(5),
	datad => \RA~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~219\,
	regout => \memoria[6][5]~regout\);

-- Location: LC_X4_Y13_N3
\memoria[4][5]\ : maxv_lcell
-- Equation(s):
-- \QB~219\ = (\RB~combout\(1) & ((\RB~combout\(0)) # ((\memoria[6][5]~regout\)))) # (!\RB~combout\(1) & (!\RB~combout\(0) & (memoria[4][5])))
-- \memoria[4][5]~regout\ = DFFEAS(\QB~219\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~46_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(1),
	datab => \RB~combout\(0),
	datac => \WD~combout\(5),
	datad => \memoria[6][5]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~219\,
	regout => \memoria[4][5]~regout\);

-- Location: LC_X4_Y9_N5
\memoria[5][5]\ : maxv_lcell
-- Equation(s):
-- \QA~220\ = (\QA~219\ & (((\memoria[7][5]~regout\)) # (!\RA~combout\(0)))) # (!\QA~219\ & (\RA~combout\(0) & (memoria[5][5])))
-- \memoria[5][5]~regout\ = DFFEAS(\QA~220\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~45_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QA~219\,
	datab => \RA~combout\(0),
	datac => \WD~combout\(5),
	datad => \memoria[7][5]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~220\,
	regout => \memoria[5][5]~regout\);

-- Location: LC_X4_Y9_N8
\memoria[7][5]\ : maxv_lcell
-- Equation(s):
-- \QB~220\ = (\QB~219\ & (((memoria[7][5]) # (!\RB~combout\(0))))) # (!\QB~219\ & (\memoria[5][5]~regout\ & ((\RB~combout\(0)))))
-- \memoria[7][5]~regout\ = DFFEAS(\QB~220\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~47_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[5][5]~regout\,
	datab => \QB~219\,
	datac => \WD~combout\(5),
	datad => \RB~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~220\,
	regout => \memoria[7][5]~regout\);

-- Location: LC_X4_Y8_N7
\QA~221\ : maxv_lcell
-- Equation(s):
-- \QA~221_combout\ = (\RA~combout\(5) & (\RA~combout\(4))) # (!\RA~combout\(5) & ((\RA~combout\(4) & (\QA~218\)) # (!\RA~combout\(4) & ((\QA~220\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RA~combout\(5),
	datab => \RA~combout\(4),
	datac => \QA~218\,
	datad => \QA~220\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~221_combout\);

-- Location: LC_X20_Y7_N7
\memoria[53][5]\ : maxv_lcell
-- Equation(s):
-- \QA~222\ = (\RA~combout\(1) & (\RA~combout\(0))) # (!\RA~combout\(1) & ((\RA~combout\(0) & (memoria[53][5])) # (!\RA~combout\(0) & ((\memoria[52][5]~regout\)))))
-- \memoria[53][5]~regout\ = DFFEAS(\QA~222\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~60_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(1),
	datab => \RA~combout\(0),
	datac => \WD~combout\(5),
	datad => \memoria[52][5]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~222\,
	regout => \memoria[53][5]~regout\);

-- Location: LC_X20_Y7_N9
\memoria[52][5]\ : maxv_lcell
-- Equation(s):
-- \QB~222\ = (\RB~combout\(0) & ((\memoria[53][5]~regout\) # ((\RB~combout\(1))))) # (!\RB~combout\(0) & (((memoria[52][5] & !\RB~combout\(1)))))
-- \memoria[52][5]~regout\ = DFFEAS(\QB~222\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~62_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(0),
	datab => \memoria[53][5]~regout\,
	datac => \WD~combout\(5),
	datad => \RB~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~222\,
	regout => \memoria[52][5]~regout\);

-- Location: LC_X18_Y11_N7
\memoria[54][5]\ : maxv_lcell
-- Equation(s):
-- \QA~223\ = (\RA~combout\(1) & ((\QA~222\ & (\memoria[55][5]~regout\)) # (!\QA~222\ & ((memoria[54][5]))))) # (!\RA~combout\(1) & (((\QA~222\))))
-- \memoria[54][5]~regout\ = DFFEAS(\QA~223\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~61_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[55][5]~regout\,
	datab => \RA~combout\(1),
	datac => \WD~combout\(5),
	datad => \QA~222\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~223\,
	regout => \memoria[54][5]~regout\);

-- Location: LC_X15_Y11_N8
\memoria[55][5]\ : maxv_lcell
-- Equation(s):
-- \QB~223\ = (\RB~combout\(1) & ((\QB~222\ & ((memoria[55][5]))) # (!\QB~222\ & (\memoria[54][5]~regout\)))) # (!\RB~combout\(1) & (((\QB~222\))))
-- \memoria[55][5]~regout\ = DFFEAS(\QB~223\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~63_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(1),
	datab => \memoria[54][5]~regout\,
	datac => \WD~combout\(5),
	datad => \QB~222\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~223\,
	regout => \memoria[55][5]~regout\);

-- Location: LC_X7_Y10_N0
\memoria[36][5]\ : maxv_lcell
-- Equation(s):
-- \QB~215\ = (\RB~combout\(1) & ((\memoria[38][5]~regout\) # ((\RB~combout\(0))))) # (!\RB~combout\(1) & (((memoria[36][5] & !\RB~combout\(0)))))
-- \memoria[36][5]~regout\ = DFFEAS(\QB~215\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~15_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[38][5]~regout\,
	datab => \RB~combout\(1),
	datac => \WD~combout\(5),
	datad => \RB~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~215\,
	regout => \memoria[36][5]~regout\);

-- Location: LC_X7_Y10_N3
\memoria[38][5]\ : maxv_lcell
-- Equation(s):
-- \QA~215\ = (\RA~combout\(0) & (((\RA~combout\(1))))) # (!\RA~combout\(0) & ((\RA~combout\(1) & ((memoria[38][5]))) # (!\RA~combout\(1) & (\memoria[36][5]~regout\))))
-- \memoria[38][5]~regout\ = DFFEAS(\QA~215\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~9_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(0),
	datab => \memoria[36][5]~regout\,
	datac => \WD~combout\(5),
	datad => \RA~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~215\,
	regout => \memoria[38][5]~regout\);

-- Location: LC_X3_Y8_N2
\memoria[37][5]\ : maxv_lcell
-- Equation(s):
-- \QA~216\ = (\QA~215\ & ((\memoria[39][5]~regout\) # ((!\RA~combout\(0))))) # (!\QA~215\ & (((memoria[37][5] & \RA~combout\(0)))))
-- \memoria[37][5]~regout\ = DFFEAS(\QA~216\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~1_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[39][5]~regout\,
	datab => \QA~215\,
	datac => \WD~combout\(5),
	datad => \RA~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~216\,
	regout => \memoria[37][5]~regout\);

-- Location: LC_X3_Y8_N5
\memoria[39][5]\ : maxv_lcell
-- Equation(s):
-- \QB~216\ = (\QB~215\ & (((memoria[39][5]) # (!\RB~combout\(0))))) # (!\QB~215\ & (\memoria[37][5]~regout\ & ((\RB~combout\(0)))))
-- \memoria[39][5]~regout\ = DFFEAS(\QB~216\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~19_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QB~215\,
	datab => \memoria[37][5]~regout\,
	datac => \WD~combout\(5),
	datad => \RB~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~216\,
	regout => \memoria[39][5]~regout\);

-- Location: LC_X13_Y8_N9
\QA~224\ : maxv_lcell
-- Equation(s):
-- \QA~224_combout\ = (\QA~221_combout\ & ((\QA~223\) # ((!\RA~combout\(5))))) # (!\QA~221_combout\ & (((\QA~216\ & \RA~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~221_combout\,
	datab => \QA~223\,
	datac => \QA~216\,
	datad => \RA~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~224_combout\);

-- Location: LC_X9_Y7_N6
\memoria[14][5]\ : maxv_lcell
-- Equation(s):
-- \QB~248\ = (\RB~combout\(4) & ((\memoria[30][5]~regout\) # ((\RB~combout\(5))))) # (!\RB~combout\(4) & (((memoria[14][5] & !\RB~combout\(5)))))
-- \memoria[14][5]~regout\ = DFFEAS(\QB~248\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~52_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[30][5]~regout\,
	datab => \RB~combout\(4),
	datac => \WD~combout\(5),
	datad => \RB~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~248\,
	regout => \memoria[14][5]~regout\);

-- Location: LC_X9_Y6_N2
\memoria[30][5]\ : maxv_lcell
-- Equation(s):
-- \QA~248\ = (\RA~combout\(4) & ((\RA~combout\(5)) # ((memoria[30][5])))) # (!\RA~combout\(4) & (!\RA~combout\(5) & ((\memoria[14][5]~regout\))))
-- \memoria[30][5]~regout\ = DFFEAS(\QA~248\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~36_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(4),
	datab => \RA~combout\(5),
	datac => \WD~combout\(5),
	datad => \memoria[14][5]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~248\,
	regout => \memoria[30][5]~regout\);

-- Location: LC_X9_Y7_N0
\memoria[46][5]\ : maxv_lcell
-- Equation(s):
-- \QA~249\ = (\QA~248\ & ((\memoria[62][5]~regout\) # ((!\RA~combout\(5))))) # (!\QA~248\ & (((memoria[46][5] & \RA~combout\(5)))))
-- \memoria[46][5]~regout\ = DFFEAS(\QA~249\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~11_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[62][5]~regout\,
	datab => \QA~248\,
	datac => \WD~combout\(5),
	datad => \RA~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~249\,
	regout => \memoria[46][5]~regout\);

-- Location: LC_X9_Y6_N7
\memoria[62][5]\ : maxv_lcell
-- Equation(s):
-- \QB~249\ = (\RB~combout\(5) & ((\QB~248\ & (memoria[62][5])) # (!\QB~248\ & ((\memoria[46][5]~regout\))))) # (!\RB~combout\(5) & (\QB~248\))
-- \memoria[62][5]~regout\ = DFFEAS(\QB~249\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~69_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(5),
	datab => \QB~248\,
	datac => \WD~combout\(5),
	datad => \memoria[46][5]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~249\,
	regout => \memoria[62][5]~regout\);

-- Location: LC_X13_Y5_N4
\memoria[28][5]\ : maxv_lcell
-- Equation(s):
-- \QA~250\ = (\RA~combout\(4) & ((\RA~combout\(5)) # ((memoria[28][5])))) # (!\RA~combout\(4) & (!\RA~combout\(5) & ((\memoria[12][5]~regout\))))
-- \memoria[28][5]~regout\ = DFFEAS(\QA~250\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~38_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(4),
	datab => \RA~combout\(5),
	datac => \WD~combout\(5),
	datad => \memoria[12][5]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~250\,
	regout => \memoria[28][5]~regout\);

-- Location: LC_X13_Y5_N3
\memoria[12][5]\ : maxv_lcell
-- Equation(s):
-- \QB~250\ = (\RB~combout\(4) & ((\memoria[28][5]~regout\) # ((\RB~combout\(5))))) # (!\RB~combout\(4) & (((memoria[12][5] & !\RB~combout\(5)))))
-- \memoria[12][5]~regout\ = DFFEAS(\QB~250\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~54_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[28][5]~regout\,
	datab => \RB~combout\(4),
	datac => \WD~combout\(5),
	datad => \RB~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~250\,
	regout => \memoria[12][5]~regout\);

-- Location: LC_X12_Y11_N5
\memoria[44][5]\ : maxv_lcell
-- Equation(s):
-- \QA~251\ = (\RA~combout\(5) & ((\QA~250\ & (\memoria[60][5]~regout\)) # (!\QA~250\ & ((memoria[44][5]))))) # (!\RA~combout\(5) & (((\QA~250\))))
-- \memoria[44][5]~regout\ = DFFEAS(\QA~251\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~17_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(5),
	datab => \memoria[60][5]~regout\,
	datac => \WD~combout\(5),
	datad => \QA~250\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~251\,
	regout => \memoria[44][5]~regout\);

-- Location: LC_X12_Y11_N9
\memoria[60][5]\ : maxv_lcell
-- Equation(s):
-- \QB~251\ = (\QB~250\ & (((memoria[60][5]) # (!\RB~combout\(5))))) # (!\QB~250\ & (\memoria[44][5]~regout\ & ((\RB~combout\(5)))))
-- \memoria[60][5]~regout\ = DFFEAS(\QB~251\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~70_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[44][5]~regout\,
	datab => \QB~250\,
	datac => \WD~combout\(5),
	datad => \RB~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~251\,
	regout => \memoria[60][5]~regout\);

-- Location: LC_X11_Y8_N4
\QA~252\ : maxv_lcell
-- Equation(s):
-- \QA~252_combout\ = (\RA~combout\(1) & ((\QA~249\) # ((\RA~combout\(0))))) # (!\RA~combout\(1) & (((!\RA~combout\(0) & \QA~251\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cbc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~249\,
	datab => \RA~combout\(1),
	datac => \RA~combout\(0),
	datad => \QA~251\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~252_combout\);

-- Location: LC_X16_Y7_N5
\memoria[45][5]\ : maxv_lcell
-- Equation(s):
-- \QA~246\ = (\RA~combout\(5) & ((\RA~combout\(4)) # ((memoria[45][5])))) # (!\RA~combout\(5) & (!\RA~combout\(4) & ((\memoria[13][5]~regout\))))
-- \memoria[45][5]~regout\ = DFFEAS(\QA~246\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~5_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(5),
	datab => \RA~combout\(4),
	datac => \WD~combout\(5),
	datad => \memoria[13][5]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~246\,
	regout => \memoria[45][5]~regout\);

-- Location: LC_X16_Y7_N3
\memoria[13][5]\ : maxv_lcell
-- Equation(s):
-- \QB~246\ = (\RB~combout\(5) & ((\memoria[45][5]~regout\) # ((\RB~combout\(4))))) # (!\RB~combout\(5) & (((memoria[13][5] & !\RB~combout\(4)))))
-- \memoria[13][5]~regout\ = DFFEAS(\QB~246\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~53_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[45][5]~regout\,
	datab => \RB~combout\(5),
	datac => \WD~combout\(5),
	datad => \RB~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~246\,
	regout => \memoria[13][5]~regout\);

-- Location: LC_X14_Y5_N3
\memoria[29][5]\ : maxv_lcell
-- Equation(s):
-- \QA~247\ = (\QA~246\ & (((\memoria[61][5]~regout\)) # (!\RA~combout\(4)))) # (!\QA~246\ & (\RA~combout\(4) & (memoria[29][5])))
-- \memoria[29][5]~regout\ = DFFEAS(\QA~247\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~37_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QA~246\,
	datab => \RA~combout\(4),
	datac => \WD~combout\(5),
	datad => \memoria[61][5]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~247\,
	regout => \memoria[29][5]~regout\);

-- Location: LC_X14_Y5_N8
\memoria[61][5]\ : maxv_lcell
-- Equation(s):
-- \QB~247\ = (\RB~combout\(4) & ((\QB~246\ & ((memoria[61][5]))) # (!\QB~246\ & (\memoria[29][5]~regout\)))) # (!\RB~combout\(4) & (((\QB~246\))))
-- \memoria[61][5]~regout\ = DFFEAS(\QB~247\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~68_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[29][5]~regout\,
	datab => \RB~combout\(4),
	datac => \WD~combout\(5),
	datad => \QB~246\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~247\,
	regout => \memoria[61][5]~regout\);

-- Location: LC_X15_Y10_N2
\memoria[47][5]\ : maxv_lcell
-- Equation(s):
-- \QA~253\ = (\RA~combout\(5) & ((\RA~combout\(4)) # ((memoria[47][5])))) # (!\RA~combout\(5) & (!\RA~combout\(4) & ((\memoria[15][5]~regout\))))
-- \memoria[47][5]~regout\ = DFFEAS(\QA~253\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~23_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(5),
	datab => \RA~combout\(4),
	datac => \WD~combout\(5),
	datad => \memoria[15][5]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~253\,
	regout => \memoria[47][5]~regout\);

-- Location: LC_X16_Y12_N9
\memoria[15][5]\ : maxv_lcell
-- Equation(s):
-- \QB~253\ = (\RB~combout\(4) & (((\RB~combout\(5))))) # (!\RB~combout\(4) & ((\RB~combout\(5) & (\memoria[47][5]~regout\)) # (!\RB~combout\(5) & ((memoria[15][5])))))
-- \memoria[15][5]~regout\ = DFFEAS(\QB~253\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~55_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[47][5]~regout\,
	datab => \RB~combout\(4),
	datac => \WD~combout\(5),
	datad => \RB~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~253\,
	regout => \memoria[15][5]~regout\);

-- Location: LC_X15_Y10_N0
\memoria[31][5]\ : maxv_lcell
-- Equation(s):
-- \QA~254\ = (\RA~combout\(4) & ((\QA~253\ & ((\memoria[63][5]~regout\))) # (!\QA~253\ & (memoria[31][5])))) # (!\RA~combout\(4) & (\QA~253\))
-- \memoria[31][5]~regout\ = DFFEAS(\QA~254\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~39_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(4),
	datab => \QA~253\,
	datac => \WD~combout\(5),
	datad => \memoria[63][5]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~254\,
	regout => \memoria[31][5]~regout\);

-- Location: LC_X16_Y10_N4
\memoria[63][5]\ : maxv_lcell
-- Equation(s):
-- \QB~254\ = (\RB~combout\(4) & ((\QB~253\ & ((memoria[63][5]))) # (!\QB~253\ & (\memoria[31][5]~regout\)))) # (!\RB~combout\(4) & (((\QB~253\))))
-- \memoria[63][5]~regout\ = DFFEAS(\QB~254\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~71_combout\, \WD~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[31][5]~regout\,
	datab => \RB~combout\(4),
	datac => \WD~combout\(5),
	datad => \QB~253\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~254\,
	regout => \memoria[63][5]~regout\);

-- Location: LC_X13_Y8_N6
\QA~255\ : maxv_lcell
-- Equation(s):
-- \QA~255_combout\ = (\QA~252_combout\ & (((\QA~254\) # (!\RA~combout\(0))))) # (!\QA~252_combout\ & (\QA~247\ & (\RA~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea4a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~252_combout\,
	datab => \QA~247\,
	datac => \RA~combout\(0),
	datad => \QA~254\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~255_combout\);

-- Location: LC_X13_Y8_N7
\QA~256\ : maxv_lcell
-- Equation(s):
-- \QA~256_combout\ = (\QA~245_combout\ & (((\QA~255_combout\) # (!\RA~combout\(2))))) # (!\QA~245_combout\ & (\QA~224_combout\ & (\RA~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea4a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~245_combout\,
	datab => \QA~224_combout\,
	datac => \RA~combout\(2),
	datad => \QA~255_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~256_combout\);

-- Location: LC_X12_Y10_N4
\QA~257\ : maxv_lcell
-- Equation(s):
-- \QA~257_combout\ = (((\readA~combout\ & \QA~256_combout\)))

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
	datac => \readA~combout\,
	datad => \QA~256_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~257_combout\);

-- Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WD[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_WD(6),
	combout => \WD~combout\(6));

-- Location: LC_X5_Y11_N1
\memoria[33][6]\ : maxv_lcell
-- Equation(s):
-- \QA~262\ = (\RA~combout\(0) & ((\RA~combout\(1)) # ((memoria[33][6])))) # (!\RA~combout\(0) & (!\RA~combout\(1) & ((\memoria[32][6]~regout\))))
-- \memoria[33][6]~regout\ = DFFEAS(\QA~262\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~4_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(0),
	datab => \RA~combout\(1),
	datac => \WD~combout\(6),
	datad => \memoria[32][6]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~262\,
	regout => \memoria[33][6]~regout\);

-- Location: LC_X5_Y11_N9
\memoria[32][6]\ : maxv_lcell
-- Equation(s):
-- \QB~262\ = (\RB~combout\(1) & (((\RB~combout\(0))))) # (!\RB~combout\(1) & ((\RB~combout\(0) & (\memoria[33][6]~regout\)) # (!\RB~combout\(0) & ((memoria[32][6])))))
-- \memoria[32][6]~regout\ = DFFEAS(\QB~262\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~16_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(1),
	datab => \memoria[33][6]~regout\,
	datac => \WD~combout\(6),
	datad => \RB~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~262\,
	regout => \memoria[32][6]~regout\);

-- Location: LC_X5_Y12_N7
\memoria[34][6]\ : maxv_lcell
-- Equation(s):
-- \QA~263\ = (\QA~262\ & ((\memoria[35][6]~regout\) # ((!\RA~combout\(1))))) # (!\QA~262\ & (((memoria[34][6] & \RA~combout\(1)))))
-- \memoria[34][6]~regout\ = DFFEAS(\QA~263\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~10_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[35][6]~regout\,
	datab => \QA~262\,
	datac => \WD~combout\(6),
	datad => \RA~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~263\,
	regout => \memoria[34][6]~regout\);

-- Location: LC_X5_Y12_N5
\memoria[35][6]\ : maxv_lcell
-- Equation(s):
-- \QB~263\ = (\RB~combout\(1) & ((\QB~262\ & ((memoria[35][6]))) # (!\QB~262\ & (\memoria[34][6]~regout\)))) # (!\RB~combout\(1) & (((\QB~262\))))
-- \memoria[35][6]~regout\ = DFFEAS(\QB~263\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~22_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(1),
	datab => \memoria[34][6]~regout\,
	datac => \WD~combout\(6),
	datad => \QB~262\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~263\,
	regout => \memoria[35][6]~regout\);

-- Location: LC_X7_Y10_N4
\memoria[38][6]\ : maxv_lcell
-- Equation(s):
-- \QA~260\ = (\RA~combout\(0) & (((\RA~combout\(1))))) # (!\RA~combout\(0) & ((\RA~combout\(1) & ((memoria[38][6]))) # (!\RA~combout\(1) & (\memoria[36][6]~regout\))))
-- \memoria[38][6]~regout\ = DFFEAS(\QA~260\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~9_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(0),
	datab => \memoria[36][6]~regout\,
	datac => \WD~combout\(6),
	datad => \RA~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~260\,
	regout => \memoria[38][6]~regout\);

-- Location: LC_X7_Y10_N8
\memoria[36][6]\ : maxv_lcell
-- Equation(s):
-- \QB~260\ = (\RB~combout\(1) & ((\memoria[38][6]~regout\) # ((\RB~combout\(0))))) # (!\RB~combout\(1) & (((memoria[36][6] & !\RB~combout\(0)))))
-- \memoria[36][6]~regout\ = DFFEAS(\QB~260\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~15_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[38][6]~regout\,
	datab => \RB~combout\(1),
	datac => \WD~combout\(6),
	datad => \RB~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~260\,
	regout => \memoria[36][6]~regout\);

-- Location: LC_X6_Y10_N6
\memoria[37][6]\ : maxv_lcell
-- Equation(s):
-- \QA~261\ = (\QA~260\ & ((\memoria[39][6]~regout\) # ((!\RA~combout\(0))))) # (!\QA~260\ & (((memoria[37][6] & \RA~combout\(0)))))
-- \memoria[37][6]~regout\ = DFFEAS(\QA~261\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~1_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[39][6]~regout\,
	datab => \QA~260\,
	datac => \WD~combout\(6),
	datad => \RA~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~261\,
	regout => \memoria[37][6]~regout\);

-- Location: LC_X7_Y11_N2
\memoria[39][6]\ : maxv_lcell
-- Equation(s):
-- \QB~261\ = (\QB~260\ & (((memoria[39][6]) # (!\RB~combout\(0))))) # (!\QB~260\ & (\memoria[37][6]~regout\ & ((\RB~combout\(0)))))
-- \memoria[39][6]~regout\ = DFFEAS(\QB~261\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~19_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[37][6]~regout\,
	datab => \QB~260\,
	datac => \WD~combout\(6),
	datad => \RB~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~261\,
	regout => \memoria[39][6]~regout\);

-- Location: LC_X6_Y7_N5
\QA~264\ : maxv_lcell
-- Equation(s):
-- \QA~264_combout\ = (\RA~combout\(3) & (((\RA~combout\(2))))) # (!\RA~combout\(3) & ((\RA~combout\(2) & ((\QA~261\))) # (!\RA~combout\(2) & (\QA~263\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RA~combout\(3),
	datab => \QA~263\,
	datac => \RA~combout\(2),
	datad => \QA~261\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~264_combout\);

-- Location: LC_X15_Y3_N7
\memoria[41][6]\ : maxv_lcell
-- Equation(s):
-- \QA~258\ = (\RA~combout\(1) & (\RA~combout\(0))) # (!\RA~combout\(1) & ((\RA~combout\(0) & (memoria[41][6])) # (!\RA~combout\(0) & ((\memoria[40][6]~regout\)))))
-- \memoria[41][6]~regout\ = DFFEAS(\QA~258\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~3_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(1),
	datab => \RA~combout\(0),
	datac => \WD~combout\(6),
	datad => \memoria[40][6]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~258\,
	regout => \memoria[41][6]~regout\);

-- Location: LC_X15_Y4_N5
\memoria[40][6]\ : maxv_lcell
-- Equation(s):
-- \QB~258\ = (\RB~combout\(1) & (((\RB~combout\(0))))) # (!\RB~combout\(1) & ((\RB~combout\(0) & (\memoria[41][6]~regout\)) # (!\RB~combout\(0) & ((memoria[40][6])))))
-- \memoria[40][6]~regout\ = DFFEAS(\QB~258\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~13_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(1),
	datab => \memoria[41][6]~regout\,
	datac => \WD~combout\(6),
	datad => \RB~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~258\,
	regout => \memoria[40][6]~regout\);

-- Location: LC_X12_Y4_N4
\memoria[42][6]\ : maxv_lcell
-- Equation(s):
-- \QA~259\ = (\RA~combout\(1) & ((\QA~258\ & (\memoria[43][6]~regout\)) # (!\QA~258\ & ((memoria[42][6]))))) # (!\RA~combout\(1) & (((\QA~258\))))
-- \memoria[42][6]~regout\ = DFFEAS(\QA~259\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~7_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[43][6]~regout\,
	datab => \RA~combout\(1),
	datac => \WD~combout\(6),
	datad => \QA~258\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~259\,
	regout => \memoria[42][6]~regout\);

-- Location: LC_X12_Y4_N5
\memoria[43][6]\ : maxv_lcell
-- Equation(s):
-- \QB~259\ = (\QB~258\ & (((memoria[43][6]) # (!\RB~combout\(1))))) # (!\QB~258\ & (\memoria[42][6]~regout\ & ((\RB~combout\(1)))))
-- \memoria[43][6]~regout\ = DFFEAS(\QB~259\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~21_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[42][6]~regout\,
	datab => \QB~258\,
	datac => \WD~combout\(6),
	datad => \RB~combout\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~259\,
	regout => \memoria[43][6]~regout\);

-- Location: LC_X12_Y7_N8
\memoria[46][6]\ : maxv_lcell
-- Equation(s):
-- \QA~265\ = (\RA~combout\(1) & (((memoria[46][6]) # (\RA~combout\(0))))) # (!\RA~combout\(1) & (\memoria[44][6]~regout\ & ((!\RA~combout\(0)))))
-- \memoria[46][6]~regout\ = DFFEAS(\QA~265\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~11_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(1),
	datab => \memoria[44][6]~regout\,
	datac => \WD~combout\(6),
	datad => \RA~combout\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~265\,
	regout => \memoria[46][6]~regout\);

-- Location: LC_X12_Y7_N2
\memoria[44][6]\ : maxv_lcell
-- Equation(s):
-- \QB~265\ = (\RB~combout\(1) & ((\RB~combout\(0)) # ((\memoria[46][6]~regout\)))) # (!\RB~combout\(1) & (!\RB~combout\(0) & (memoria[44][6])))
-- \memoria[44][6]~regout\ = DFFEAS(\QB~265\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~17_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(1),
	datab => \RB~combout\(0),
	datac => \WD~combout\(6),
	datad => \memoria[46][6]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~265\,
	regout => \memoria[44][6]~regout\);

-- Location: LC_X12_Y6_N4
\memoria[45][6]\ : maxv_lcell
-- Equation(s):
-- \QA~266\ = (\RA~combout\(0) & ((\QA~265\ & (\memoria[47][6]~regout\)) # (!\QA~265\ & ((memoria[45][6]))))) # (!\RA~combout\(0) & (((\QA~265\))))
-- \memoria[45][6]~regout\ = DFFEAS(\QA~266\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~5_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[47][6]~regout\,
	datab => \RA~combout\(0),
	datac => \WD~combout\(6),
	datad => \QA~265\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~266\,
	regout => \memoria[45][6]~regout\);

-- Location: LC_X12_Y6_N5
\memoria[47][6]\ : maxv_lcell
-- Equation(s):
-- \QB~266\ = (\RB~combout\(0) & ((\QB~265\ & ((memoria[47][6]))) # (!\QB~265\ & (\memoria[45][6]~regout\)))) # (!\RB~combout\(0) & (((\QB~265\))))
-- \memoria[47][6]~regout\ = DFFEAS(\QB~266\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~23_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[45][6]~regout\,
	datab => \RB~combout\(0),
	datac => \WD~combout\(6),
	datad => \QB~265\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~266\,
	regout => \memoria[47][6]~regout\);

-- Location: LC_X6_Y6_N5
\QA~267\ : maxv_lcell
-- Equation(s):
-- \QA~267_combout\ = (\QA~264_combout\ & (((\QA~266\)) # (!\RA~combout\(3)))) # (!\QA~264_combout\ & (\RA~combout\(3) & (\QA~259\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~264_combout\,
	datab => \RA~combout\(3),
	datac => \QA~259\,
	datad => \QA~266\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~267_combout\);

-- Location: LC_X4_Y13_N8
\memoria[4][6]\ : maxv_lcell
-- Equation(s):
-- \QA~282\ = (\RA~combout\(2) & ((\RA~combout\(3)) # ((memoria[4][6])))) # (!\RA~combout\(2) & (!\RA~combout\(3) & ((\memoria[0][6]~regout\))))
-- \memoria[4][6]~regout\ = DFFEAS(\QA~282\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~46_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(2),
	datab => \RA~combout\(3),
	datac => \WD~combout\(6),
	datad => \memoria[0][6]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~282\,
	regout => \memoria[4][6]~regout\);

-- Location: LC_X4_Y13_N9
\memoria[0][6]\ : maxv_lcell
-- Equation(s):
-- \QB~282\ = (\RB~combout\(3) & (\RB~combout\(2))) # (!\RB~combout\(3) & ((\RB~combout\(2) & ((\memoria[4][6]~regout\))) # (!\RB~combout\(2) & (memoria[0][6]))))
-- \memoria[0][6]~regout\ = DFFEAS(\QB~282\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~50_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(3),
	datab => \RB~combout\(2),
	datac => \WD~combout\(6),
	datad => \memoria[4][6]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~282\,
	regout => \memoria[0][6]~regout\);

-- Location: LC_X7_Y9_N6
\memoria[8][6]\ : maxv_lcell
-- Equation(s):
-- \QA~283\ = (\RA~combout\(3) & ((\QA~282\ & ((\memoria[12][6]~regout\))) # (!\QA~282\ & (memoria[8][6])))) # (!\RA~combout\(3) & (\QA~282\))
-- \memoria[8][6]~regout\ = DFFEAS(\QA~283\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~42_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(3),
	datab => \QA~282\,
	datac => \WD~combout\(6),
	datad => \memoria[12][6]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~283\,
	regout => \memoria[8][6]~regout\);

-- Location: LC_X10_Y12_N7
\memoria[12][6]\ : maxv_lcell
-- Equation(s):
-- \QB~283\ = (\QB~282\ & (((memoria[12][6])) # (!\RB~combout\(3)))) # (!\QB~282\ & (\RB~combout\(3) & ((\memoria[8][6]~regout\))))
-- \memoria[12][6]~regout\ = DFFEAS(\QB~283\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~54_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QB~282\,
	datab => \RB~combout\(3),
	datac => \WD~combout\(6),
	datad => \memoria[8][6]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~283\,
	regout => \memoria[12][6]~regout\);

-- Location: LC_X6_Y13_N0
\memoria[9][6]\ : maxv_lcell
-- Equation(s):
-- \QA~280\ = (\RA~combout\(2) & (\RA~combout\(3))) # (!\RA~combout\(2) & ((\RA~combout\(3) & (memoria[9][6])) # (!\RA~combout\(3) & ((\memoria[1][6]~regout\)))))
-- \memoria[9][6]~regout\ = DFFEAS(\QA~280\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~40_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(2),
	datab => \RA~combout\(3),
	datac => \WD~combout\(6),
	datad => \memoria[1][6]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~280\,
	regout => \memoria[9][6]~regout\);

-- Location: LC_X6_Y13_N8
\memoria[1][6]\ : maxv_lcell
-- Equation(s):
-- \QB~280\ = (\RB~combout\(3) & ((\RB~combout\(2)) # ((\memoria[9][6]~regout\)))) # (!\RB~combout\(3) & (!\RB~combout\(2) & (memoria[1][6])))
-- \memoria[1][6]~regout\ = DFFEAS(\QB~280\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~48_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(3),
	datab => \RB~combout\(2),
	datac => \WD~combout\(6),
	datad => \memoria[9][6]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~280\,
	regout => \memoria[1][6]~regout\);

-- Location: LC_X6_Y11_N6
\memoria[5][6]\ : maxv_lcell
-- Equation(s):
-- \QA~281\ = (\QA~280\ & (((\memoria[13][6]~regout\)) # (!\RA~combout\(2)))) # (!\QA~280\ & (\RA~combout\(2) & (memoria[5][6])))
-- \memoria[5][6]~regout\ = DFFEAS(\QA~281\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~45_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QA~280\,
	datab => \RA~combout\(2),
	datac => \WD~combout\(6),
	datad => \memoria[13][6]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~281\,
	regout => \memoria[5][6]~regout\);

-- Location: LC_X6_Y11_N9
\memoria[13][6]\ : maxv_lcell
-- Equation(s):
-- \QB~281\ = (\RB~combout\(2) & ((\QB~280\ & ((memoria[13][6]))) # (!\QB~280\ & (\memoria[5][6]~regout\)))) # (!\RB~combout\(2) & (((\QB~280\))))
-- \memoria[13][6]~regout\ = DFFEAS(\QB~281\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~53_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[5][6]~regout\,
	datab => \RB~combout\(2),
	datac => \WD~combout\(6),
	datad => \QB~280\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~281\,
	regout => \memoria[13][6]~regout\);

-- Location: LC_X5_Y11_N3
\QA~284\ : maxv_lcell
-- Equation(s):
-- \QA~284_combout\ = (\RA~combout\(0) & (((\QA~281\) # (\RA~combout\(1))))) # (!\RA~combout\(0) & (\QA~283\ & ((!\RA~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RA~combout\(0),
	datab => \QA~283\,
	datac => \QA~281\,
	datad => \RA~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~284_combout\);

-- Location: LC_X3_Y9_N5
\memoria[6][6]\ : maxv_lcell
-- Equation(s):
-- \QA~278\ = (\RA~combout\(3) & (((\RA~combout\(2))))) # (!\RA~combout\(3) & ((\RA~combout\(2) & ((memoria[6][6]))) # (!\RA~combout\(2) & (\memoria[2][6]~regout\))))
-- \memoria[6][6]~regout\ = DFFEAS(\QA~278\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~44_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[2][6]~regout\,
	datab => \RA~combout\(3),
	datac => \WD~combout\(6),
	datad => \RA~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~278\,
	regout => \memoria[6][6]~regout\);

-- Location: LC_X4_Y10_N8
\memoria[2][6]\ : maxv_lcell
-- Equation(s):
-- \QB~278\ = (\RB~combout\(2) & ((\memoria[6][6]~regout\) # ((\RB~combout\(3))))) # (!\RB~combout\(2) & (((memoria[2][6] & !\RB~combout\(3)))))
-- \memoria[2][6]~regout\ = DFFEAS(\QB~278\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~49_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[6][6]~regout\,
	datab => \RB~combout\(2),
	datac => \WD~combout\(6),
	datad => \RB~combout\(3),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~278\,
	regout => \memoria[2][6]~regout\);

-- Location: LC_X3_Y11_N9
\memoria[10][6]\ : maxv_lcell
-- Equation(s):
-- \QA~279\ = (\RA~combout\(3) & ((\QA~278\ & (\memoria[14][6]~regout\)) # (!\QA~278\ & ((memoria[10][6]))))) # (!\RA~combout\(3) & (((\QA~278\))))
-- \memoria[10][6]~regout\ = DFFEAS(\QA~279\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~41_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(3),
	datab => \memoria[14][6]~regout\,
	datac => \WD~combout\(6),
	datad => \QA~278\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~279\,
	regout => \memoria[10][6]~regout\);

-- Location: LC_X3_Y11_N0
\memoria[14][6]\ : maxv_lcell
-- Equation(s):
-- \QB~279\ = (\RB~combout\(3) & ((\QB~278\ & ((memoria[14][6]))) # (!\QB~278\ & (\memoria[10][6]~regout\)))) # (!\RB~combout\(3) & (((\QB~278\))))
-- \memoria[14][6]~regout\ = DFFEAS(\QB~279\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~52_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(3),
	datab => \memoria[10][6]~regout\,
	datac => \WD~combout\(6),
	datad => \QB~278\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~279\,
	regout => \memoria[14][6]~regout\);

-- Location: LC_X11_Y12_N9
\memoria[3][6]\ : maxv_lcell
-- Equation(s):
-- \QB~285\ = (\RB~combout\(3) & ((\RB~combout\(2)) # ((\memoria[11][6]~regout\)))) # (!\RB~combout\(3) & (!\RB~combout\(2) & (memoria[3][6])))
-- \memoria[3][6]~regout\ = DFFEAS(\QB~285\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~51_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(3),
	datab => \RB~combout\(2),
	datac => \WD~combout\(6),
	datad => \memoria[11][6]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~285\,
	regout => \memoria[3][6]~regout\);

-- Location: LC_X11_Y12_N8
\memoria[11][6]\ : maxv_lcell
-- Equation(s):
-- \QA~285\ = (\RA~combout\(2) & (\RA~combout\(3))) # (!\RA~combout\(2) & ((\RA~combout\(3) & (memoria[11][6])) # (!\RA~combout\(3) & ((\memoria[3][6]~regout\)))))
-- \memoria[11][6]~regout\ = DFFEAS(\QA~285\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~43_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(2),
	datab => \RA~combout\(3),
	datac => \WD~combout\(6),
	datad => \memoria[3][6]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~285\,
	regout => \memoria[11][6]~regout\);

-- Location: LC_X10_Y13_N5
\memoria[7][6]\ : maxv_lcell
-- Equation(s):
-- \QA~286\ = (\RA~combout\(2) & ((\QA~285\ & (\memoria[15][6]~regout\)) # (!\QA~285\ & ((memoria[7][6]))))) # (!\RA~combout\(2) & (((\QA~285\))))
-- \memoria[7][6]~regout\ = DFFEAS(\QA~286\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~47_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[15][6]~regout\,
	datab => \RA~combout\(2),
	datac => \WD~combout\(6),
	datad => \QA~285\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~286\,
	regout => \memoria[7][6]~regout\);

-- Location: LC_X10_Y12_N6
\memoria[15][6]\ : maxv_lcell
-- Equation(s):
-- \QB~286\ = (\RB~combout\(2) & ((\QB~285\ & (memoria[15][6])) # (!\QB~285\ & ((\memoria[7][6]~regout\))))) # (!\RB~combout\(2) & (\QB~285\))
-- \memoria[15][6]~regout\ = DFFEAS(\QB~286\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~55_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(2),
	datab => \QB~285\,
	datac => \WD~combout\(6),
	datad => \memoria[7][6]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~286\,
	regout => \memoria[15][6]~regout\);

-- Location: LC_X3_Y11_N5
\QA~287\ : maxv_lcell
-- Equation(s):
-- \QA~287_combout\ = (\RA~combout\(1) & ((\QA~284_combout\ & ((\QA~286\))) # (!\QA~284_combout\ & (\QA~279\)))) # (!\RA~combout\(1) & (\QA~284_combout\))

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
	dataa => \RA~combout\(1),
	datab => \QA~284_combout\,
	datac => \QA~279\,
	datad => \QA~286\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~287_combout\);

-- Location: LC_X1_Y8_N8
\memoria[25][6]\ : maxv_lcell
-- Equation(s):
-- \QA~268\ = (\RA~combout\(2) & (\RA~combout\(3))) # (!\RA~combout\(2) & ((\RA~combout\(3) & (memoria[25][6])) # (!\RA~combout\(3) & ((\memoria[17][6]~regout\)))))
-- \memoria[25][6]~regout\ = DFFEAS(\QA~268\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~28_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(2),
	datab => \RA~combout\(3),
	datac => \WD~combout\(6),
	datad => \memoria[17][6]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~268\,
	regout => \memoria[25][6]~regout\);

-- Location: LC_X1_Y8_N9
\memoria[17][6]\ : maxv_lcell
-- Equation(s):
-- \QB~268\ = (\RB~combout\(2) & (\RB~combout\(3))) # (!\RB~combout\(2) & ((\RB~combout\(3) & ((\memoria[25][6]~regout\))) # (!\RB~combout\(3) & (memoria[17][6]))))
-- \memoria[17][6]~regout\ = DFFEAS(\QB~268\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~32_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(2),
	datab => \RB~combout\(3),
	datac => \WD~combout\(6),
	datad => \memoria[25][6]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~268\,
	regout => \memoria[17][6]~regout\);

-- Location: LC_X2_Y8_N8
\memoria[21][6]\ : maxv_lcell
-- Equation(s):
-- \QA~269\ = (\QA~268\ & ((\memoria[29][6]~regout\) # ((!\RA~combout\(2))))) # (!\QA~268\ & (((memoria[21][6] & \RA~combout\(2)))))
-- \memoria[21][6]~regout\ = DFFEAS(\QA~269\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~25_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QA~268\,
	datab => \memoria[29][6]~regout\,
	datac => \WD~combout\(6),
	datad => \RA~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~269\,
	regout => \memoria[21][6]~regout\);

-- Location: LC_X2_Y8_N0
\memoria[29][6]\ : maxv_lcell
-- Equation(s):
-- \QB~269\ = (\QB~268\ & (((memoria[29][6])) # (!\RB~combout\(2)))) # (!\QB~268\ & (\RB~combout\(2) & ((\memoria[21][6]~regout\))))
-- \memoria[29][6]~regout\ = DFFEAS(\QB~269\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~37_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QB~268\,
	datab => \RB~combout\(2),
	datac => \WD~combout\(6),
	datad => \memoria[21][6]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~269\,
	regout => \memoria[29][6]~regout\);

-- Location: LC_X8_Y6_N9
\memoria[18][6]\ : maxv_lcell
-- Equation(s):
-- \QB~270\ = (\RB~combout\(2) & ((\memoria[22][6]~regout\) # ((\RB~combout\(3))))) # (!\RB~combout\(2) & (((memoria[18][6] & !\RB~combout\(3)))))
-- \memoria[18][6]~regout\ = DFFEAS(\QB~270\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~33_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[22][6]~regout\,
	datab => \RB~combout\(2),
	datac => \WD~combout\(6),
	datad => \RB~combout\(3),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~270\,
	regout => \memoria[18][6]~regout\);

-- Location: LC_X8_Y6_N6
\memoria[22][6]\ : maxv_lcell
-- Equation(s):
-- \QA~270\ = (\RA~combout\(3) & (\RA~combout\(2))) # (!\RA~combout\(3) & ((\RA~combout\(2) & (memoria[22][6])) # (!\RA~combout\(2) & ((\memoria[18][6]~regout\)))))
-- \memoria[22][6]~regout\ = DFFEAS(\QA~270\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~24_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(3),
	datab => \RA~combout\(2),
	datac => \WD~combout\(6),
	datad => \memoria[18][6]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~270\,
	regout => \memoria[22][6]~regout\);

-- Location: LC_X4_Y5_N8
\memoria[26][6]\ : maxv_lcell
-- Equation(s):
-- \QA~271\ = (\RA~combout\(3) & ((\QA~270\ & (\memoria[30][6]~regout\)) # (!\QA~270\ & ((memoria[26][6]))))) # (!\RA~combout\(3) & (((\QA~270\))))
-- \memoria[26][6]~regout\ = DFFEAS(\QA~271\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~29_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[30][6]~regout\,
	datab => \RA~combout\(3),
	datac => \WD~combout\(6),
	datad => \QA~270\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~271\,
	regout => \memoria[26][6]~regout\);

-- Location: LC_X4_Y5_N5
\memoria[30][6]\ : maxv_lcell
-- Equation(s):
-- \QB~271\ = (\RB~combout\(3) & ((\QB~270\ & (memoria[30][6])) # (!\QB~270\ & ((\memoria[26][6]~regout\))))) # (!\RB~combout\(3) & (\QB~270\))
-- \memoria[30][6]~regout\ = DFFEAS(\QB~271\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~36_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(3),
	datab => \QB~270\,
	datac => \WD~combout\(6),
	datad => \memoria[26][6]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~271\,
	regout => \memoria[30][6]~regout\);

-- Location: LC_X1_Y9_N9
\memoria[20][6]\ : maxv_lcell
-- Equation(s):
-- \QA~272\ = (\RA~combout\(3) & (\RA~combout\(2))) # (!\RA~combout\(3) & ((\RA~combout\(2) & (memoria[20][6])) # (!\RA~combout\(2) & ((\memoria[16][6]~regout\)))))
-- \memoria[20][6]~regout\ = DFFEAS(\QA~272\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~26_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(3),
	datab => \RA~combout\(2),
	datac => \WD~combout\(6),
	datad => \memoria[16][6]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~272\,
	regout => \memoria[20][6]~regout\);

-- Location: LC_X1_Y9_N3
\memoria[16][6]\ : maxv_lcell
-- Equation(s):
-- \QB~272\ = (\RB~combout\(3) & (\RB~combout\(2))) # (!\RB~combout\(3) & ((\RB~combout\(2) & ((\memoria[20][6]~regout\))) # (!\RB~combout\(2) & (memoria[16][6]))))
-- \memoria[16][6]~regout\ = DFFEAS(\QB~272\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~34_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(3),
	datab => \RB~combout\(2),
	datac => \WD~combout\(6),
	datad => \memoria[20][6]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~272\,
	regout => \memoria[16][6]~regout\);

-- Location: LC_X2_Y9_N6
\memoria[24][6]\ : maxv_lcell
-- Equation(s):
-- \QA~273\ = (\QA~272\ & (((\memoria[28][6]~regout\)) # (!\RA~combout\(3)))) # (!\QA~272\ & (\RA~combout\(3) & (memoria[24][6])))
-- \memoria[24][6]~regout\ = DFFEAS(\QA~273\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~30_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QA~272\,
	datab => \RA~combout\(3),
	datac => \WD~combout\(6),
	datad => \memoria[28][6]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~273\,
	regout => \memoria[24][6]~regout\);

-- Location: LC_X2_Y9_N8
\memoria[28][6]\ : maxv_lcell
-- Equation(s):
-- \QB~273\ = (\RB~combout\(3) & ((\QB~272\ & ((memoria[28][6]))) # (!\QB~272\ & (\memoria[24][6]~regout\)))) # (!\RB~combout\(3) & (((\QB~272\))))
-- \memoria[28][6]~regout\ = DFFEAS(\QB~273\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~38_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[24][6]~regout\,
	datab => \RB~combout\(3),
	datac => \WD~combout\(6),
	datad => \QB~272\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~273\,
	regout => \memoria[28][6]~regout\);

-- Location: LC_X3_Y7_N5
\QA~274\ : maxv_lcell
-- Equation(s):
-- \QA~274_combout\ = (\RA~combout\(0) & (((\RA~combout\(1))))) # (!\RA~combout\(0) & ((\RA~combout\(1) & (\QA~271\)) # (!\RA~combout\(1) & ((\QA~273\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RA~combout\(0),
	datab => \QA~271\,
	datac => \QA~273\,
	datad => \RA~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~274_combout\);

-- Location: LC_X12_Y13_N3
\memoria[19][6]\ : maxv_lcell
-- Equation(s):
-- \QB~275\ = (\RB~combout\(3) & ((\memoria[27][6]~regout\) # ((\RB~combout\(2))))) # (!\RB~combout\(3) & (((memoria[19][6] & !\RB~combout\(2)))))
-- \memoria[19][6]~regout\ = DFFEAS(\QB~275\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~35_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(3),
	datab => \memoria[27][6]~regout\,
	datac => \WD~combout\(6),
	datad => \RB~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~275\,
	regout => \memoria[19][6]~regout\);

-- Location: LC_X12_Y13_N1
\memoria[27][6]\ : maxv_lcell
-- Equation(s):
-- \QA~275\ = (\RA~combout\(2) & (\RA~combout\(3))) # (!\RA~combout\(2) & ((\RA~combout\(3) & (memoria[27][6])) # (!\RA~combout\(3) & ((\memoria[19][6]~regout\)))))
-- \memoria[27][6]~regout\ = DFFEAS(\QA~275\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~31_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(2),
	datab => \RA~combout\(3),
	datac => \WD~combout\(6),
	datad => \memoria[19][6]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~275\,
	regout => \memoria[27][6]~regout\);

-- Location: LC_X12_Y12_N6
\memoria[23][6]\ : maxv_lcell
-- Equation(s):
-- \QA~276\ = (\RA~combout\(2) & ((\QA~275\ & (\memoria[31][6]~regout\)) # (!\QA~275\ & ((memoria[23][6]))))) # (!\RA~combout\(2) & (((\QA~275\))))
-- \memoria[23][6]~regout\ = DFFEAS(\QA~276\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~27_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(2),
	datab => \memoria[31][6]~regout\,
	datac => \WD~combout\(6),
	datad => \QA~275\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~276\,
	regout => \memoria[23][6]~regout\);

-- Location: LC_X12_Y12_N9
\memoria[31][6]\ : maxv_lcell
-- Equation(s):
-- \QB~276\ = (\RB~combout\(2) & ((\QB~275\ & (memoria[31][6])) # (!\QB~275\ & ((\memoria[23][6]~regout\))))) # (!\RB~combout\(2) & (\QB~275\))
-- \memoria[31][6]~regout\ = DFFEAS(\QB~276\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~39_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(2),
	datab => \QB~275\,
	datac => \WD~combout\(6),
	datad => \memoria[23][6]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~276\,
	regout => \memoria[31][6]~regout\);

-- Location: LC_X6_Y6_N6
\QA~277\ : maxv_lcell
-- Equation(s):
-- \QA~277_combout\ = (\QA~274_combout\ & (((\QA~276\) # (!\RA~combout\(0))))) # (!\QA~274_combout\ & (\QA~269\ & (\RA~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec2c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~269\,
	datab => \QA~274_combout\,
	datac => \RA~combout\(0),
	datad => \QA~276\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~277_combout\);

-- Location: LC_X6_Y6_N7
\QA~288\ : maxv_lcell
-- Equation(s):
-- \QA~288_combout\ = (\RA~combout\(4) & ((\RA~combout\(5)) # ((\QA~277_combout\)))) # (!\RA~combout\(4) & (!\RA~combout\(5) & (\QA~287_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RA~combout\(4),
	datab => \RA~combout\(5),
	datac => \QA~287_combout\,
	datad => \QA~277_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~288_combout\);

-- Location: LC_X11_Y4_N8
\memoria[51][6]\ : maxv_lcell
-- Equation(s):
-- \QB~296\ = (\RB~combout\(3) & (((\RB~combout\(2))))) # (!\RB~combout\(3) & ((\RB~combout\(2) & (\memoria[55][6]~regout\)) # (!\RB~combout\(2) & ((memoria[51][6])))))
-- \memoria[51][6]~regout\ = DFFEAS(\QB~296\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~67_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(3),
	datab => \memoria[55][6]~regout\,
	datac => \WD~combout\(6),
	datad => \RB~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~296\,
	regout => \memoria[51][6]~regout\);

-- Location: LC_X11_Y4_N0
\memoria[55][6]\ : maxv_lcell
-- Equation(s):
-- \QA~296\ = (\RA~combout\(2) & ((\RA~combout\(3)) # ((memoria[55][6])))) # (!\RA~combout\(2) & (!\RA~combout\(3) & ((\memoria[51][6]~regout\))))
-- \memoria[55][6]~regout\ = DFFEAS(\QA~296\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~63_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(2),
	datab => \RA~combout\(3),
	datac => \WD~combout\(6),
	datad => \memoria[51][6]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~296\,
	regout => \memoria[55][6]~regout\);

-- Location: LC_X11_Y5_N9
\memoria[59][6]\ : maxv_lcell
-- Equation(s):
-- \QA~297\ = (\RA~combout\(3) & ((\QA~296\ & (\memoria[63][6]~regout\)) # (!\QA~296\ & ((memoria[59][6]))))) # (!\RA~combout\(3) & (((\QA~296\))))
-- \memoria[59][6]~regout\ = DFFEAS(\QA~297\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~59_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[63][6]~regout\,
	datab => \RA~combout\(3),
	datac => \WD~combout\(6),
	datad => \QA~296\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~297\,
	regout => \memoria[59][6]~regout\);

-- Location: LC_X11_Y5_N4
\memoria[63][6]\ : maxv_lcell
-- Equation(s):
-- \QB~297\ = (\QB~296\ & (((memoria[63][6])) # (!\RB~combout\(3)))) # (!\QB~296\ & (\RB~combout\(3) & ((\memoria[59][6]~regout\))))
-- \memoria[63][6]~regout\ = DFFEAS(\QB~297\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~71_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QB~296\,
	datab => \RB~combout\(3),
	datac => \WD~combout\(6),
	datad => \memoria[59][6]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~297\,
	regout => \memoria[63][6]~regout\);

-- Location: LC_X8_Y5_N5
\memoria[50][6]\ : maxv_lcell
-- Equation(s):
-- \QB~289\ = (\RB~combout\(2) & (\RB~combout\(3))) # (!\RB~combout\(2) & ((\RB~combout\(3) & ((\memoria[58][6]~regout\))) # (!\RB~combout\(3) & (memoria[50][6]))))
-- \memoria[50][6]~regout\ = DFFEAS(\QB~289\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~64_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(2),
	datab => \RB~combout\(3),
	datac => \WD~combout\(6),
	datad => \memoria[58][6]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~289\,
	regout => \memoria[50][6]~regout\);

-- Location: LC_X8_Y5_N2
\memoria[58][6]\ : maxv_lcell
-- Equation(s):
-- \QA~289\ = (\RA~combout\(2) & (((\RA~combout\(3))))) # (!\RA~combout\(2) & ((\RA~combout\(3) & ((memoria[58][6]))) # (!\RA~combout\(3) & (\memoria[50][6]~regout\))))
-- \memoria[58][6]~regout\ = DFFEAS(\QA~289\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~56_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[50][6]~regout\,
	datab => \RA~combout\(2),
	datac => \WD~combout\(6),
	datad => \RA~combout\(3),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~289\,
	regout => \memoria[58][6]~regout\);

-- Location: LC_X9_Y5_N7
\memoria[54][6]\ : maxv_lcell
-- Equation(s):
-- \QA~290\ = (\RA~combout\(2) & ((\QA~289\ & (\memoria[62][6]~regout\)) # (!\QA~289\ & ((memoria[54][6]))))) # (!\RA~combout\(2) & (((\QA~289\))))
-- \memoria[54][6]~regout\ = DFFEAS(\QA~290\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~61_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[62][6]~regout\,
	datab => \RA~combout\(2),
	datac => \WD~combout\(6),
	datad => \QA~289\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~290\,
	regout => \memoria[54][6]~regout\);

-- Location: LC_X9_Y5_N6
\memoria[62][6]\ : maxv_lcell
-- Equation(s):
-- \QB~290\ = (\QB~289\ & (((memoria[62][6]) # (!\RB~combout\(2))))) # (!\QB~289\ & (\memoria[54][6]~regout\ & ((\RB~combout\(2)))))
-- \memoria[62][6]~regout\ = DFFEAS(\QB~290\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~69_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QB~289\,
	datab => \memoria[54][6]~regout\,
	datac => \WD~combout\(6),
	datad => \RB~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~290\,
	regout => \memoria[62][6]~regout\);

-- Location: LC_X13_Y12_N9
\memoria[56][6]\ : maxv_lcell
-- Equation(s):
-- \QA~293\ = (\RA~combout\(3) & ((\RA~combout\(2)) # ((memoria[56][6])))) # (!\RA~combout\(3) & (!\RA~combout\(2) & ((\memoria[48][6]~regout\))))
-- \memoria[56][6]~regout\ = DFFEAS(\QA~293\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~58_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(3),
	datab => \RA~combout\(2),
	datac => \WD~combout\(6),
	datad => \memoria[48][6]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~293\,
	regout => \memoria[56][6]~regout\);

-- Location: LC_X13_Y12_N8
\memoria[48][6]\ : maxv_lcell
-- Equation(s):
-- \QB~293\ = (\RB~combout\(3) & ((\RB~combout\(2)) # ((\memoria[56][6]~regout\)))) # (!\RB~combout\(3) & (!\RB~combout\(2) & (memoria[48][6])))
-- \memoria[48][6]~regout\ = DFFEAS(\QB~293\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~66_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(3),
	datab => \RB~combout\(2),
	datac => \WD~combout\(6),
	datad => \memoria[56][6]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~293\,
	regout => \memoria[48][6]~regout\);

-- Location: LC_X13_Y7_N3
\memoria[52][6]\ : maxv_lcell
-- Equation(s):
-- \QA~294\ = (\RA~combout\(2) & ((\QA~293\ & (\memoria[60][6]~regout\)) # (!\QA~293\ & ((memoria[52][6]))))) # (!\RA~combout\(2) & (((\QA~293\))))
-- \memoria[52][6]~regout\ = DFFEAS(\QA~294\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~62_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(2),
	datab => \memoria[60][6]~regout\,
	datac => \WD~combout\(6),
	datad => \QA~293\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~294\,
	regout => \memoria[52][6]~regout\);

-- Location: LC_X13_Y7_N6
\memoria[60][6]\ : maxv_lcell
-- Equation(s):
-- \QB~294\ = (\QB~293\ & (((memoria[60][6]) # (!\RB~combout\(2))))) # (!\QB~293\ & (\memoria[52][6]~regout\ & ((\RB~combout\(2)))))
-- \memoria[60][6]~regout\ = DFFEAS(\QB~294\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~70_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[52][6]~regout\,
	datab => \QB~293\,
	datac => \WD~combout\(6),
	datad => \RB~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~294\,
	regout => \memoria[60][6]~regout\);

-- Location: LC_X14_Y7_N2
\memoria[53][6]\ : maxv_lcell
-- Equation(s):
-- \QA~291\ = (\RA~combout\(3) & (\RA~combout\(2))) # (!\RA~combout\(3) & ((\RA~combout\(2) & (memoria[53][6])) # (!\RA~combout\(2) & ((\memoria[49][6]~regout\)))))
-- \memoria[53][6]~regout\ = DFFEAS(\QA~291\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~60_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(3),
	datab => \RA~combout\(2),
	datac => \WD~combout\(6),
	datad => \memoria[49][6]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~291\,
	regout => \memoria[53][6]~regout\);

-- Location: LC_X15_Y9_N6
\memoria[49][6]\ : maxv_lcell
-- Equation(s):
-- \QB~291\ = (\RB~combout\(3) & (\RB~combout\(2))) # (!\RB~combout\(3) & ((\RB~combout\(2) & ((\memoria[53][6]~regout\))) # (!\RB~combout\(2) & (memoria[49][6]))))
-- \memoria[49][6]~regout\ = DFFEAS(\QB~291\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~65_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(3),
	datab => \RB~combout\(2),
	datac => \WD~combout\(6),
	datad => \memoria[53][6]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~291\,
	regout => \memoria[49][6]~regout\);

-- Location: LC_X14_Y8_N9
\memoria[57][6]\ : maxv_lcell
-- Equation(s):
-- \QA~292\ = (\RA~combout\(3) & ((\QA~291\ & ((\memoria[61][6]~regout\))) # (!\QA~291\ & (memoria[57][6])))) # (!\RA~combout\(3) & (\QA~291\))
-- \memoria[57][6]~regout\ = DFFEAS(\QA~292\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~57_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(3),
	datab => \QA~291\,
	datac => \WD~combout\(6),
	datad => \memoria[61][6]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~292\,
	regout => \memoria[57][6]~regout\);

-- Location: LC_X14_Y8_N8
\memoria[61][6]\ : maxv_lcell
-- Equation(s):
-- \QB~292\ = (\QB~291\ & (((memoria[61][6])) # (!\RB~combout\(3)))) # (!\QB~291\ & (\RB~combout\(3) & ((\memoria[57][6]~regout\))))
-- \memoria[61][6]~regout\ = DFFEAS(\QB~292\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~68_combout\, \WD~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QB~291\,
	datab => \RB~combout\(3),
	datac => \WD~combout\(6),
	datad => \memoria[57][6]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~292\,
	regout => \memoria[61][6]~regout\);

-- Location: LC_X13_Y6_N2
\QA~295\ : maxv_lcell
-- Equation(s):
-- \QA~295_combout\ = (\RA~combout\(1) & (((\RA~combout\(0))))) # (!\RA~combout\(1) & ((\RA~combout\(0) & ((\QA~292\))) # (!\RA~combout\(0) & (\QA~294\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2c2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~294\,
	datab => \RA~combout\(1),
	datac => \RA~combout\(0),
	datad => \QA~292\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~295_combout\);

-- Location: LC_X11_Y5_N3
\QA~298\ : maxv_lcell
-- Equation(s):
-- \QA~298_combout\ = (\RA~combout\(1) & ((\QA~295_combout\ & (\QA~297\)) # (!\QA~295_combout\ & ((\QA~290\))))) # (!\RA~combout\(1) & (((\QA~295_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RA~combout\(1),
	datab => \QA~297\,
	datac => \QA~290\,
	datad => \QA~295_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~298_combout\);

-- Location: LC_X6_Y6_N0
\QA~299\ : maxv_lcell
-- Equation(s):
-- \QA~299_combout\ = (\QA~288_combout\ & (((\QA~298_combout\) # (!\RA~combout\(5))))) # (!\QA~288_combout\ & (\QA~267_combout\ & (\RA~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec2c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~267_combout\,
	datab => \QA~288_combout\,
	datac => \RA~combout\(5),
	datad => \QA~298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~299_combout\);

-- Location: LC_X6_Y6_N8
\QA~300\ : maxv_lcell
-- Equation(s):
-- \QA~300_combout\ = (((\QA~299_combout\ & \readA~combout\)))

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
	datac => \QA~299_combout\,
	datad => \readA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~300_combout\);

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WD[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_WD(7),
	combout => \WD~combout\(7));

-- Location: LC_X9_Y12_N8
\memoria[39][7]\ : maxv_lcell
-- Equation(s):
-- \QA~332\ = (\RA~combout\(2) & ((\RA~combout\(3)) # ((memoria[39][7])))) # (!\RA~combout\(2) & (!\RA~combout\(3) & ((\memoria[35][7]~regout\))))
-- \memoria[39][7]~regout\ = DFFEAS(\QA~332\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~19_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(2),
	datab => \RA~combout\(3),
	datac => \WD~combout\(7),
	datad => \memoria[35][7]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~332\,
	regout => \memoria[39][7]~regout\);

-- Location: LC_X9_Y12_N9
\memoria[35][7]\ : maxv_lcell
-- Equation(s):
-- \QB~332\ = (\RB~combout\(2) & ((\memoria[39][7]~regout\) # ((\RB~combout\(3))))) # (!\RB~combout\(2) & (((memoria[35][7] & !\RB~combout\(3)))))
-- \memoria[35][7]~regout\ = DFFEAS(\QB~332\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~22_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[39][7]~regout\,
	datab => \RB~combout\(2),
	datac => \WD~combout\(7),
	datad => \RB~combout\(3),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~332\,
	regout => \memoria[35][7]~regout\);

-- Location: LC_X12_Y10_N6
\memoria[43][7]\ : maxv_lcell
-- Equation(s):
-- \QA~333\ = (\RA~combout\(3) & ((\QA~332\ & (\memoria[47][7]~regout\)) # (!\QA~332\ & ((memoria[43][7]))))) # (!\RA~combout\(3) & (((\QA~332\))))
-- \memoria[43][7]~regout\ = DFFEAS(\QA~333\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~21_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[47][7]~regout\,
	datab => \RA~combout\(3),
	datac => \WD~combout\(7),
	datad => \QA~332\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~333\,
	regout => \memoria[43][7]~regout\);

-- Location: LC_X12_Y10_N5
\memoria[47][7]\ : maxv_lcell
-- Equation(s):
-- \QB~333\ = (\RB~combout\(3) & ((\QB~332\ & ((memoria[47][7]))) # (!\QB~332\ & (\memoria[43][7]~regout\)))) # (!\RB~combout\(3) & (((\QB~332\))))
-- \memoria[47][7]~regout\ = DFFEAS(\QB~333\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~23_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[43][7]~regout\,
	datab => \RB~combout\(3),
	datac => \WD~combout\(7),
	datad => \QB~332\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~333\,
	regout => \memoria[47][7]~regout\);

-- Location: LC_X12_Y13_N8
\memoria[19][7]\ : maxv_lcell
-- Equation(s):
-- \QB~334\ = (\RB~combout\(3) & ((\memoria[27][7]~regout\) # ((\RB~combout\(2))))) # (!\RB~combout\(3) & (((memoria[19][7] & !\RB~combout\(2)))))
-- \memoria[19][7]~regout\ = DFFEAS(\QB~334\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~35_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(3),
	datab => \memoria[27][7]~regout\,
	datac => \WD~combout\(7),
	datad => \RB~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~334\,
	regout => \memoria[19][7]~regout\);

-- Location: LC_X12_Y13_N7
\memoria[27][7]\ : maxv_lcell
-- Equation(s):
-- \QA~334\ = (\RA~combout\(2) & (\RA~combout\(3))) # (!\RA~combout\(2) & ((\RA~combout\(3) & (memoria[27][7])) # (!\RA~combout\(3) & ((\memoria[19][7]~regout\)))))
-- \memoria[27][7]~regout\ = DFFEAS(\QA~334\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~31_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(2),
	datab => \RA~combout\(3),
	datac => \WD~combout\(7),
	datad => \memoria[19][7]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~334\,
	regout => \memoria[27][7]~regout\);

-- Location: LC_X12_Y12_N2
\memoria[23][7]\ : maxv_lcell
-- Equation(s):
-- \QA~335\ = (\RA~combout\(2) & ((\QA~334\ & (\memoria[31][7]~regout\)) # (!\QA~334\ & ((memoria[23][7]))))) # (!\RA~combout\(2) & (((\QA~334\))))
-- \memoria[23][7]~regout\ = DFFEAS(\QA~335\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~27_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(2),
	datab => \memoria[31][7]~regout\,
	datac => \WD~combout\(7),
	datad => \QA~334\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~335\,
	regout => \memoria[23][7]~regout\);

-- Location: LC_X12_Y12_N7
\memoria[31][7]\ : maxv_lcell
-- Equation(s):
-- \QB~335\ = (\RB~combout\(2) & ((\QB~334\ & (memoria[31][7])) # (!\QB~334\ & ((\memoria[23][7]~regout\))))) # (!\RB~combout\(2) & (\QB~334\))
-- \memoria[31][7]~regout\ = DFFEAS(\QB~335\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~39_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(2),
	datab => \QB~334\,
	datac => \WD~combout\(7),
	datad => \memoria[23][7]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~335\,
	regout => \memoria[31][7]~regout\);

-- Location: LC_X10_Y10_N2
\memoria[7][7]\ : maxv_lcell
-- Equation(s):
-- \QA~336\ = (\RA~combout\(3) & (\RA~combout\(2))) # (!\RA~combout\(3) & ((\RA~combout\(2) & (memoria[7][7])) # (!\RA~combout\(2) & ((\memoria[3][7]~regout\)))))
-- \memoria[7][7]~regout\ = DFFEAS(\QA~336\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~47_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(3),
	datab => \RA~combout\(2),
	datac => \WD~combout\(7),
	datad => \memoria[3][7]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~336\,
	regout => \memoria[7][7]~regout\);

-- Location: LC_X10_Y10_N3
\memoria[3][7]\ : maxv_lcell
-- Equation(s):
-- \QB~336\ = (\RB~combout\(2) & ((\memoria[7][7]~regout\) # ((\RB~combout\(3))))) # (!\RB~combout\(2) & (((memoria[3][7] & !\RB~combout\(3)))))
-- \memoria[3][7]~regout\ = DFFEAS(\QB~336\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~51_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(2),
	datab => \memoria[7][7]~regout\,
	datac => \WD~combout\(7),
	datad => \RB~combout\(3),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~336\,
	regout => \memoria[3][7]~regout\);

-- Location: LC_X11_Y10_N6
\memoria[11][7]\ : maxv_lcell
-- Equation(s):
-- \QA~337\ = (\RA~combout\(3) & ((\QA~336\ & (\memoria[15][7]~regout\)) # (!\QA~336\ & ((memoria[11][7]))))) # (!\RA~combout\(3) & (((\QA~336\))))
-- \memoria[11][7]~regout\ = DFFEAS(\QA~337\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~43_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[15][7]~regout\,
	datab => \RA~combout\(3),
	datac => \WD~combout\(7),
	datad => \QA~336\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~337\,
	regout => \memoria[11][7]~regout\);

-- Location: LC_X11_Y10_N5
\memoria[15][7]\ : maxv_lcell
-- Equation(s):
-- \QB~337\ = (\QB~336\ & (((memoria[15][7]) # (!\RB~combout\(3))))) # (!\QB~336\ & (\memoria[11][7]~regout\ & ((\RB~combout\(3)))))
-- \memoria[15][7]~regout\ = DFFEAS(\QB~337\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~55_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[11][7]~regout\,
	datab => \QB~336\,
	datac => \WD~combout\(7),
	datad => \RB~combout\(3),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~337\,
	regout => \memoria[15][7]~regout\);

-- Location: LC_X12_Y10_N7
\QA~338\ : maxv_lcell
-- Equation(s):
-- \QA~338_combout\ = (\RA~combout\(4) & ((\QA~335\) # ((\RA~combout\(5))))) # (!\RA~combout\(4) & (((\QA~337\ & !\RA~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~335\,
	datab => \QA~337\,
	datac => \RA~combout\(4),
	datad => \RA~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~338_combout\);

-- Location: LC_X13_Y9_N9
\memoria[59][7]\ : maxv_lcell
-- Equation(s):
-- \QA~339\ = (\RA~combout\(3) & (((memoria[59][7]) # (\RA~combout\(2))))) # (!\RA~combout\(3) & (\memoria[51][7]~regout\ & ((!\RA~combout\(2)))))
-- \memoria[59][7]~regout\ = DFFEAS(\QA~339\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~59_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[51][7]~regout\,
	datab => \RA~combout\(3),
	datac => \WD~combout\(7),
	datad => \RA~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~339\,
	regout => \memoria[59][7]~regout\);

-- Location: LC_X13_Y9_N6
\memoria[51][7]\ : maxv_lcell
-- Equation(s):
-- \QB~339\ = (\RB~combout\(2) & (\RB~combout\(3))) # (!\RB~combout\(2) & ((\RB~combout\(3) & ((\memoria[59][7]~regout\))) # (!\RB~combout\(3) & (memoria[51][7]))))
-- \memoria[51][7]~regout\ = DFFEAS(\QB~339\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~67_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(2),
	datab => \RB~combout\(3),
	datac => \WD~combout\(7),
	datad => \memoria[59][7]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~339\,
	regout => \memoria[51][7]~regout\);

-- Location: LC_X13_Y10_N8
\memoria[55][7]\ : maxv_lcell
-- Equation(s):
-- \QA~340\ = (\QA~339\ & ((\memoria[63][7]~regout\) # ((!\RA~combout\(2))))) # (!\QA~339\ & (((memoria[55][7] & \RA~combout\(2)))))
-- \memoria[55][7]~regout\ = DFFEAS(\QA~340\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~63_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QA~339\,
	datab => \memoria[63][7]~regout\,
	datac => \WD~combout\(7),
	datad => \RA~combout\(2),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~340\,
	regout => \memoria[55][7]~regout\);

-- Location: LC_X13_Y10_N7
\memoria[63][7]\ : maxv_lcell
-- Equation(s):
-- \QB~340\ = (\QB~339\ & (((memoria[63][7])) # (!\RB~combout\(2)))) # (!\QB~339\ & (\RB~combout\(2) & ((\memoria[55][7]~regout\))))
-- \memoria[63][7]~regout\ = DFFEAS(\QB~340\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~71_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QB~339\,
	datab => \RB~combout\(2),
	datac => \WD~combout\(7),
	datad => \memoria[55][7]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~340\,
	regout => \memoria[63][7]~regout\);

-- Location: LC_X12_Y10_N1
\QA~341\ : maxv_lcell
-- Equation(s):
-- \QA~341_combout\ = (\RA~combout\(5) & ((\QA~338_combout\ & ((\QA~340\))) # (!\QA~338_combout\ & (\QA~333\)))) # (!\RA~combout\(5) & (((\QA~338_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f838",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~333\,
	datab => \RA~combout\(5),
	datac => \QA~338_combout\,
	datad => \QA~340\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~341_combout\);

-- Location: LC_X8_Y8_N5
\memoria[6][7]\ : maxv_lcell
-- Equation(s):
-- \QB~301\ = (\RB~combout\(5) & ((\RB~combout\(4)) # ((\memoria[38][7]~regout\)))) # (!\RB~combout\(5) & (!\RB~combout\(4) & (memoria[6][7])))
-- \memoria[6][7]~regout\ = DFFEAS(\QB~301\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~44_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(5),
	datab => \RB~combout\(4),
	datac => \WD~combout\(7),
	datad => \memoria[38][7]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~301\,
	regout => \memoria[6][7]~regout\);

-- Location: LC_X8_Y8_N1
\memoria[38][7]\ : maxv_lcell
-- Equation(s):
-- \QA~301\ = (\RA~combout\(5) & (((memoria[38][7]) # (\RA~combout\(4))))) # (!\RA~combout\(5) & (\memoria[6][7]~regout\ & ((!\RA~combout\(4)))))
-- \memoria[38][7]~regout\ = DFFEAS(\QA~301\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~9_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[6][7]~regout\,
	datab => \RA~combout\(5),
	datac => \WD~combout\(7),
	datad => \RA~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~301\,
	regout => \memoria[38][7]~regout\);

-- Location: LC_X9_Y4_N7
\memoria[22][7]\ : maxv_lcell
-- Equation(s):
-- \QA~302\ = (\QA~301\ & ((\memoria[54][7]~regout\) # ((!\RA~combout\(4))))) # (!\QA~301\ & (((memoria[22][7] & \RA~combout\(4)))))
-- \memoria[22][7]~regout\ = DFFEAS(\QA~302\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~24_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[54][7]~regout\,
	datab => \QA~301\,
	datac => \WD~combout\(7),
	datad => \RA~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~302\,
	regout => \memoria[22][7]~regout\);

-- Location: LC_X9_Y4_N6
\memoria[54][7]\ : maxv_lcell
-- Equation(s):
-- \QB~302\ = (\QB~301\ & (((memoria[54][7]) # (!\RB~combout\(4))))) # (!\QB~301\ & (\memoria[22][7]~regout\ & ((\RB~combout\(4)))))
-- \memoria[54][7]~regout\ = DFFEAS(\QB~302\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~61_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QB~301\,
	datab => \memoria[22][7]~regout\,
	datac => \WD~combout\(7),
	datad => \RB~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~302\,
	regout => \memoria[54][7]~regout\);

-- Location: LC_X5_Y5_N5
\memoria[18][7]\ : maxv_lcell
-- Equation(s):
-- \QA~305\ = (\RA~combout\(5) & (((\RA~combout\(4))))) # (!\RA~combout\(5) & ((\RA~combout\(4) & ((memoria[18][7]))) # (!\RA~combout\(4) & (\memoria[2][7]~regout\))))
-- \memoria[18][7]~regout\ = DFFEAS(\QA~305\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~33_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[2][7]~regout\,
	datab => \RA~combout\(5),
	datac => \WD~combout\(7),
	datad => \RA~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~305\,
	regout => \memoria[18][7]~regout\);

-- Location: LC_X5_Y5_N6
\memoria[2][7]\ : maxv_lcell
-- Equation(s):
-- \QB~305\ = (\RB~combout\(4) & ((\memoria[18][7]~regout\) # ((\RB~combout\(5))))) # (!\RB~combout\(4) & (((memoria[2][7] & !\RB~combout\(5)))))
-- \memoria[2][7]~regout\ = DFFEAS(\QB~305\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~49_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[18][7]~regout\,
	datab => \RB~combout\(4),
	datac => \WD~combout\(7),
	datad => \RB~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~305\,
	regout => \memoria[2][7]~regout\);

-- Location: LC_X8_Y4_N0
\memoria[34][7]\ : maxv_lcell
-- Equation(s):
-- \QA~306\ = (\QA~305\ & (((\memoria[50][7]~regout\)) # (!\RA~combout\(5)))) # (!\QA~305\ & (\RA~combout\(5) & (memoria[34][7])))
-- \memoria[34][7]~regout\ = DFFEAS(\QA~306\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~10_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QA~305\,
	datab => \RA~combout\(5),
	datac => \WD~combout\(7),
	datad => \memoria[50][7]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~306\,
	regout => \memoria[34][7]~regout\);

-- Location: LC_X8_Y5_N6
\memoria[50][7]\ : maxv_lcell
-- Equation(s):
-- \QB~306\ = (\RB~combout\(5) & ((\QB~305\ & (memoria[50][7])) # (!\QB~305\ & ((\memoria[34][7]~regout\))))) # (!\RB~combout\(5) & (\QB~305\))
-- \memoria[50][7]~regout\ = DFFEAS(\QB~306\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~64_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(5),
	datab => \QB~305\,
	datac => \WD~combout\(7),
	datad => \memoria[34][7]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~306\,
	regout => \memoria[50][7]~regout\);

-- Location: LC_X5_Y4_N0
\memoria[26][7]\ : maxv_lcell
-- Equation(s):
-- \QA~303\ = (\RA~combout\(4) & (((memoria[26][7]) # (\RA~combout\(5))))) # (!\RA~combout\(4) & (\memoria[10][7]~regout\ & ((!\RA~combout\(5)))))
-- \memoria[26][7]~regout\ = DFFEAS(\QA~303\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~29_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[10][7]~regout\,
	datab => \RA~combout\(4),
	datac => \WD~combout\(7),
	datad => \RA~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~303\,
	regout => \memoria[26][7]~regout\);

-- Location: LC_X5_Y4_N5
\memoria[10][7]\ : maxv_lcell
-- Equation(s):
-- \QB~303\ = (\RB~combout\(4) & ((\memoria[26][7]~regout\) # ((\RB~combout\(5))))) # (!\RB~combout\(4) & (((memoria[10][7] & !\RB~combout\(5)))))
-- \memoria[10][7]~regout\ = DFFEAS(\QB~303\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~41_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(4),
	datab => \memoria[26][7]~regout\,
	datac => \WD~combout\(7),
	datad => \RB~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~303\,
	regout => \memoria[10][7]~regout\);

-- Location: LC_X6_Y4_N0
\memoria[42][7]\ : maxv_lcell
-- Equation(s):
-- \QA~304\ = (\QA~303\ & (((\memoria[58][7]~regout\)) # (!\RA~combout\(5)))) # (!\QA~303\ & (\RA~combout\(5) & (memoria[42][7])))
-- \memoria[42][7]~regout\ = DFFEAS(\QA~304\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~7_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QA~303\,
	datab => \RA~combout\(5),
	datac => \WD~combout\(7),
	datad => \memoria[58][7]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~304\,
	regout => \memoria[42][7]~regout\);

-- Location: LC_X6_Y4_N9
\memoria[58][7]\ : maxv_lcell
-- Equation(s):
-- \QB~304\ = (\QB~303\ & (((memoria[58][7]) # (!\RB~combout\(5))))) # (!\QB~303\ & (\memoria[42][7]~regout\ & ((\RB~combout\(5)))))
-- \memoria[58][7]~regout\ = DFFEAS(\QB~304\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~56_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QB~303\,
	datab => \memoria[42][7]~regout\,
	datac => \WD~combout\(7),
	datad => \RB~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~304\,
	regout => \memoria[58][7]~regout\);

-- Location: LC_X8_Y5_N9
\QA~307\ : maxv_lcell
-- Equation(s):
-- \QA~307_combout\ = (\RA~combout\(2) & (((\RA~combout\(3))))) # (!\RA~combout\(2) & ((\RA~combout\(3) & ((\QA~304\))) # (!\RA~combout\(3) & (\QA~306\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2c2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~306\,
	datab => \RA~combout\(2),
	datac => \RA~combout\(3),
	datad => \QA~304\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~307_combout\);

-- Location: LC_X9_Y7_N7
\memoria[46][7]\ : maxv_lcell
-- Equation(s):
-- \QA~308\ = (\RA~combout\(4) & (((\RA~combout\(5))))) # (!\RA~combout\(4) & ((\RA~combout\(5) & ((memoria[46][7]))) # (!\RA~combout\(5) & (\memoria[14][7]~regout\))))
-- \memoria[46][7]~regout\ = DFFEAS(\QA~308\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~11_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[14][7]~regout\,
	datab => \RA~combout\(4),
	datac => \WD~combout\(7),
	datad => \RA~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~308\,
	regout => \memoria[46][7]~regout\);

-- Location: LC_X9_Y7_N5
\memoria[14][7]\ : maxv_lcell
-- Equation(s):
-- \QB~308\ = (\RB~combout\(4) & (((\RB~combout\(5))))) # (!\RB~combout\(4) & ((\RB~combout\(5) & (\memoria[46][7]~regout\)) # (!\RB~combout\(5) & ((memoria[14][7])))))
-- \memoria[14][7]~regout\ = DFFEAS(\QB~308\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~52_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(4),
	datab => \memoria[46][7]~regout\,
	datac => \WD~combout\(7),
	datad => \RB~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~308\,
	regout => \memoria[14][7]~regout\);

-- Location: LC_X10_Y6_N9
\memoria[30][7]\ : maxv_lcell
-- Equation(s):
-- \QA~309\ = (\RA~combout\(4) & ((\QA~308\ & ((\memoria[62][7]~regout\))) # (!\QA~308\ & (memoria[30][7])))) # (!\RA~combout\(4) & (\QA~308\))
-- \memoria[30][7]~regout\ = DFFEAS(\QA~309\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~36_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(4),
	datab => \QA~308\,
	datac => \WD~combout\(7),
	datad => \memoria[62][7]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~309\,
	regout => \memoria[30][7]~regout\);

-- Location: LC_X10_Y6_N8
\memoria[62][7]\ : maxv_lcell
-- Equation(s):
-- \QB~309\ = (\QB~308\ & (((memoria[62][7]) # (!\RB~combout\(4))))) # (!\QB~308\ & (\memoria[30][7]~regout\ & ((\RB~combout\(4)))))
-- \memoria[62][7]~regout\ = DFFEAS(\QB~309\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~69_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QB~308\,
	datab => \memoria[30][7]~regout\,
	datac => \WD~combout\(7),
	datad => \RB~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~309\,
	regout => \memoria[62][7]~regout\);

-- Location: LC_X9_Y5_N0
\QA~310\ : maxv_lcell
-- Equation(s):
-- \QA~310_combout\ = (\RA~combout\(2) & ((\QA~307_combout\ & ((\QA~309\))) # (!\QA~307_combout\ & (\QA~302\)))) # (!\RA~combout\(2) & (((\QA~307_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f838",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~302\,
	datab => \RA~combout\(2),
	datac => \QA~307_combout\,
	datad => \QA~309\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~310_combout\);

-- Location: LC_X7_Y12_N4
\memoria[24][7]\ : maxv_lcell
-- Equation(s):
-- \QA~323\ = (\RA~combout\(5) & (((\RA~combout\(4))))) # (!\RA~combout\(5) & ((\RA~combout\(4) & ((memoria[24][7]))) # (!\RA~combout\(4) & (\memoria[8][7]~regout\))))
-- \memoria[24][7]~regout\ = DFFEAS(\QA~323\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~30_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(5),
	datab => \memoria[8][7]~regout\,
	datac => \WD~combout\(7),
	datad => \RA~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~323\,
	regout => \memoria[24][7]~regout\);

-- Location: LC_X7_Y12_N9
\memoria[8][7]\ : maxv_lcell
-- Equation(s):
-- \QB~323\ = (\RB~combout\(4) & ((\memoria[24][7]~regout\) # ((\RB~combout\(5))))) # (!\RB~combout\(4) & (((memoria[8][7] & !\RB~combout\(5)))))
-- \memoria[8][7]~regout\ = DFFEAS(\QB~323\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~42_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[24][7]~regout\,
	datab => \RB~combout\(4),
	datac => \WD~combout\(7),
	datad => \RB~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~323\,
	regout => \memoria[8][7]~regout\);

-- Location: LC_X8_Y12_N8
\memoria[40][7]\ : maxv_lcell
-- Equation(s):
-- \QA~324\ = (\QA~323\ & (((\memoria[56][7]~regout\)) # (!\RA~combout\(5)))) # (!\QA~323\ & (\RA~combout\(5) & (memoria[40][7])))
-- \memoria[40][7]~regout\ = DFFEAS(\QA~324\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~13_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QA~323\,
	datab => \RA~combout\(5),
	datac => \WD~combout\(7),
	datad => \memoria[56][7]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~324\,
	regout => \memoria[40][7]~regout\);

-- Location: LC_X8_Y12_N1
\memoria[56][7]\ : maxv_lcell
-- Equation(s):
-- \QB~324\ = (\QB~323\ & (((memoria[56][7]) # (!\RB~combout\(5))))) # (!\QB~323\ & (\memoria[40][7]~regout\ & ((\RB~combout\(5)))))
-- \memoria[56][7]~regout\ = DFFEAS(\QB~324\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~58_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QB~323\,
	datab => \memoria[40][7]~regout\,
	datac => \WD~combout\(7),
	datad => \RB~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~324\,
	regout => \memoria[56][7]~regout\);

-- Location: LC_X8_Y9_N5
\memoria[16][7]\ : maxv_lcell
-- Equation(s):
-- \QA~325\ = (\RA~combout\(4) & ((\RA~combout\(5)) # ((memoria[16][7])))) # (!\RA~combout\(4) & (!\RA~combout\(5) & ((\memoria[0][7]~regout\))))
-- \memoria[16][7]~regout\ = DFFEAS(\QA~325\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~34_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(4),
	datab => \RA~combout\(5),
	datac => \WD~combout\(7),
	datad => \memoria[0][7]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~325\,
	regout => \memoria[16][7]~regout\);

-- Location: LC_X8_Y9_N2
\memoria[0][7]\ : maxv_lcell
-- Equation(s):
-- \QB~325\ = (\RB~combout\(4) & ((\memoria[16][7]~regout\) # ((\RB~combout\(5))))) # (!\RB~combout\(4) & (((memoria[0][7] & !\RB~combout\(5)))))
-- \memoria[0][7]~regout\ = DFFEAS(\QB~325\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~50_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[16][7]~regout\,
	datab => \RB~combout\(4),
	datac => \WD~combout\(7),
	datad => \RB~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~325\,
	regout => \memoria[0][7]~regout\);

-- Location: LC_X9_Y11_N4
\memoria[32][7]\ : maxv_lcell
-- Equation(s):
-- \QA~326\ = (\QA~325\ & (((\memoria[48][7]~regout\)) # (!\RA~combout\(5)))) # (!\QA~325\ & (\RA~combout\(5) & (memoria[32][7])))
-- \memoria[32][7]~regout\ = DFFEAS(\QA~326\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~16_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QA~325\,
	datab => \RA~combout\(5),
	datac => \WD~combout\(7),
	datad => \memoria[48][7]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~326\,
	regout => \memoria[32][7]~regout\);

-- Location: LC_X9_Y11_N8
\memoria[48][7]\ : maxv_lcell
-- Equation(s):
-- \QB~326\ = (\QB~325\ & (((memoria[48][7]) # (!\RB~combout\(5))))) # (!\QB~325\ & (\memoria[32][7]~regout\ & ((\RB~combout\(5)))))
-- \memoria[48][7]~regout\ = DFFEAS(\QB~326\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~66_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[32][7]~regout\,
	datab => \QB~325\,
	datac => \WD~combout\(7),
	datad => \RB~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~326\,
	regout => \memoria[48][7]~regout\);

-- Location: LC_X8_Y12_N5
\QA~327\ : maxv_lcell
-- Equation(s):
-- \QA~327_combout\ = (\RA~combout\(2) & (((\RA~combout\(3))))) # (!\RA~combout\(2) & ((\RA~combout\(3) & (\QA~324\)) # (!\RA~combout\(3) & ((\QA~326\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e3e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~324\,
	datab => \RA~combout\(2),
	datac => \RA~combout\(3),
	datad => \QA~326\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~327_combout\);

-- Location: LC_X9_Y13_N3
\memoria[36][7]\ : maxv_lcell
-- Equation(s):
-- \QA~321\ = (\RA~combout\(5) & (((memoria[36][7]) # (\RA~combout\(4))))) # (!\RA~combout\(5) & (\memoria[4][7]~regout\ & ((!\RA~combout\(4)))))
-- \memoria[36][7]~regout\ = DFFEAS(\QA~321\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~15_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(5),
	datab => \memoria[4][7]~regout\,
	datac => \WD~combout\(7),
	datad => \RA~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~321\,
	regout => \memoria[36][7]~regout\);

-- Location: LC_X9_Y13_N7
\memoria[4][7]\ : maxv_lcell
-- Equation(s):
-- \QB~321\ = (\RB~combout\(4) & (((\RB~combout\(5))))) # (!\RB~combout\(4) & ((\RB~combout\(5) & (\memoria[36][7]~regout\)) # (!\RB~combout\(5) & ((memoria[4][7])))))
-- \memoria[4][7]~regout\ = DFFEAS(\QB~321\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~46_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[36][7]~regout\,
	datab => \RB~combout\(4),
	datac => \WD~combout\(7),
	datad => \RB~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~321\,
	regout => \memoria[4][7]~regout\);

-- Location: LC_X8_Y11_N7
\memoria[20][7]\ : maxv_lcell
-- Equation(s):
-- \QA~322\ = (\QA~321\ & (((\memoria[52][7]~regout\)) # (!\RA~combout\(4)))) # (!\QA~321\ & (\RA~combout\(4) & (memoria[20][7])))
-- \memoria[20][7]~regout\ = DFFEAS(\QA~322\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~26_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QA~321\,
	datab => \RA~combout\(4),
	datac => \WD~combout\(7),
	datad => \memoria[52][7]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~322\,
	regout => \memoria[20][7]~regout\);

-- Location: LC_X8_Y11_N2
\memoria[52][7]\ : maxv_lcell
-- Equation(s):
-- \QB~322\ = (\QB~321\ & (((memoria[52][7]) # (!\RB~combout\(4))))) # (!\QB~321\ & (\memoria[20][7]~regout\ & ((\RB~combout\(4)))))
-- \memoria[52][7]~regout\ = DFFEAS(\QB~322\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~62_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QB~321\,
	datab => \memoria[20][7]~regout\,
	datac => \WD~combout\(7),
	datad => \RB~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~322\,
	regout => \memoria[52][7]~regout\);

-- Location: LC_X14_Y11_N6
\memoria[12][7]\ : maxv_lcell
-- Equation(s):
-- \QB~328\ = (\RB~combout\(5) & ((\RB~combout\(4)) # ((\memoria[44][7]~regout\)))) # (!\RB~combout\(5) & (!\RB~combout\(4) & (memoria[12][7])))
-- \memoria[12][7]~regout\ = DFFEAS(\QB~328\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~54_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(5),
	datab => \RB~combout\(4),
	datac => \WD~combout\(7),
	datad => \memoria[44][7]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~328\,
	regout => \memoria[12][7]~regout\);

-- Location: LC_X14_Y11_N9
\memoria[44][7]\ : maxv_lcell
-- Equation(s):
-- \QA~328\ = (\RA~combout\(5) & (((memoria[44][7]) # (\RA~combout\(4))))) # (!\RA~combout\(5) & (\memoria[12][7]~regout\ & ((!\RA~combout\(4)))))
-- \memoria[44][7]~regout\ = DFFEAS(\QA~328\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~17_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[12][7]~regout\,
	datab => \RA~combout\(5),
	datac => \WD~combout\(7),
	datad => \RA~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~328\,
	regout => \memoria[44][7]~regout\);

-- Location: LC_X13_Y11_N8
\memoria[28][7]\ : maxv_lcell
-- Equation(s):
-- \QA~329\ = (\RA~combout\(4) & ((\QA~328\ & (\memoria[60][7]~regout\)) # (!\QA~328\ & ((memoria[28][7]))))) # (!\RA~combout\(4) & (((\QA~328\))))
-- \memoria[28][7]~regout\ = DFFEAS(\QA~329\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~38_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[60][7]~regout\,
	datab => \RA~combout\(4),
	datac => \WD~combout\(7),
	datad => \QA~328\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~329\,
	regout => \memoria[28][7]~regout\);

-- Location: LC_X13_Y11_N5
\memoria[60][7]\ : maxv_lcell
-- Equation(s):
-- \QB~329\ = (\QB~328\ & (((memoria[60][7])) # (!\RB~combout\(4)))) # (!\QB~328\ & (\RB~combout\(4) & ((\memoria[28][7]~regout\))))
-- \memoria[60][7]~regout\ = DFFEAS(\QB~329\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~70_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QB~328\,
	datab => \RB~combout\(4),
	datac => \WD~combout\(7),
	datad => \memoria[28][7]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~329\,
	regout => \memoria[60][7]~regout\);

-- Location: LC_X8_Y11_N9
\QA~330\ : maxv_lcell
-- Equation(s):
-- \QA~330_combout\ = (\QA~327_combout\ & (((\QA~329\) # (!\RA~combout\(2))))) # (!\QA~327_combout\ & (\QA~322\ & (\RA~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea4a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QA~327_combout\,
	datab => \QA~322\,
	datac => \RA~combout\(2),
	datad => \QA~329\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~330_combout\);

-- Location: LC_X17_Y4_N2
\memoria[25][7]\ : maxv_lcell
-- Equation(s):
-- \QA~311\ = (\RA~combout\(5) & (((\RA~combout\(4))))) # (!\RA~combout\(5) & ((\RA~combout\(4) & ((memoria[25][7]))) # (!\RA~combout\(4) & (\memoria[9][7]~regout\))))
-- \memoria[25][7]~regout\ = DFFEAS(\QA~311\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~28_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[9][7]~regout\,
	datab => \RA~combout\(5),
	datac => \WD~combout\(7),
	datad => \RA~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~311\,
	regout => \memoria[25][7]~regout\);

-- Location: LC_X17_Y4_N8
\memoria[9][7]\ : maxv_lcell
-- Equation(s):
-- \QB~311\ = (\RB~combout\(5) & (\RB~combout\(4))) # (!\RB~combout\(5) & ((\RB~combout\(4) & ((\memoria[25][7]~regout\))) # (!\RB~combout\(4) & (memoria[9][7]))))
-- \memoria[9][7]~regout\ = DFFEAS(\QB~311\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~40_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(5),
	datab => \RB~combout\(4),
	datac => \WD~combout\(7),
	datad => \memoria[25][7]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~311\,
	regout => \memoria[9][7]~regout\);

-- Location: LC_X17_Y5_N2
\memoria[41][7]\ : maxv_lcell
-- Equation(s):
-- \QA~312\ = (\QA~311\ & (((\memoria[57][7]~regout\)) # (!\RA~combout\(5)))) # (!\QA~311\ & (\RA~combout\(5) & (memoria[41][7])))
-- \memoria[41][7]~regout\ = DFFEAS(\QA~312\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~3_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QA~311\,
	datab => \RA~combout\(5),
	datac => \WD~combout\(7),
	datad => \memoria[57][7]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~312\,
	regout => \memoria[41][7]~regout\);

-- Location: LC_X17_Y5_N8
\memoria[57][7]\ : maxv_lcell
-- Equation(s):
-- \QB~312\ = (\QB~311\ & (((memoria[57][7]) # (!\RB~combout\(5))))) # (!\QB~311\ & (\memoria[41][7]~regout\ & ((\RB~combout\(5)))))
-- \memoria[57][7]~regout\ = DFFEAS(\QB~312\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~57_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \QB~311\,
	datab => \memoria[41][7]~regout\,
	datac => \WD~combout\(7),
	datad => \RB~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~312\,
	regout => \memoria[57][7]~regout\);

-- Location: LC_X19_Y8_N8
\memoria[5][7]\ : maxv_lcell
-- Equation(s):
-- \QB~313\ = (\RB~combout\(5) & ((\RB~combout\(4)) # ((\memoria[37][7]~regout\)))) # (!\RB~combout\(5) & (!\RB~combout\(4) & (memoria[5][7])))
-- \memoria[5][7]~regout\ = DFFEAS(\QB~313\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~45_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(5),
	datab => \RB~combout\(4),
	datac => \WD~combout\(7),
	datad => \memoria[37][7]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~313\,
	regout => \memoria[5][7]~regout\);

-- Location: LC_X19_Y8_N9
\memoria[37][7]\ : maxv_lcell
-- Equation(s):
-- \QA~313\ = (\RA~combout\(5) & ((\RA~combout\(4)) # ((memoria[37][7])))) # (!\RA~combout\(5) & (!\RA~combout\(4) & ((\memoria[5][7]~regout\))))
-- \memoria[37][7]~regout\ = DFFEAS(\QA~313\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~1_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(5),
	datab => \RA~combout\(4),
	datac => \WD~combout\(7),
	datad => \memoria[5][7]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~313\,
	regout => \memoria[37][7]~regout\);

-- Location: LC_X17_Y7_N9
\memoria[21][7]\ : maxv_lcell
-- Equation(s):
-- \QA~314\ = (\QA~313\ & ((\memoria[53][7]~regout\) # ((!\RA~combout\(4))))) # (!\QA~313\ & (((memoria[21][7] & \RA~combout\(4)))))
-- \memoria[21][7]~regout\ = DFFEAS(\QA~314\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~25_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[53][7]~regout\,
	datab => \QA~313\,
	datac => \WD~combout\(7),
	datad => \RA~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~314\,
	regout => \memoria[21][7]~regout\);

-- Location: LC_X17_Y7_N5
\memoria[53][7]\ : maxv_lcell
-- Equation(s):
-- \QB~314\ = (\RB~combout\(4) & ((\QB~313\ & (memoria[53][7])) # (!\QB~313\ & ((\memoria[21][7]~regout\))))) # (!\RB~combout\(4) & (\QB~313\))
-- \memoria[53][7]~regout\ = DFFEAS(\QB~314\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~60_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(4),
	datab => \QB~313\,
	datac => \WD~combout\(7),
	datad => \memoria[21][7]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~314\,
	regout => \memoria[53][7]~regout\);

-- Location: LC_X16_Y8_N3
\memoria[17][7]\ : maxv_lcell
-- Equation(s):
-- \QA~315\ = (\RA~combout\(5) & (((\RA~combout\(4))))) # (!\RA~combout\(5) & ((\RA~combout\(4) & ((memoria[17][7]))) # (!\RA~combout\(4) & (\memoria[1][7]~regout\))))
-- \memoria[17][7]~regout\ = DFFEAS(\QA~315\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~32_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[1][7]~regout\,
	datab => \RA~combout\(5),
	datac => \WD~combout\(7),
	datad => \RA~combout\(4),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~315\,
	regout => \memoria[17][7]~regout\);

-- Location: LC_X16_Y8_N5
\memoria[1][7]\ : maxv_lcell
-- Equation(s):
-- \QB~315\ = (\RB~combout\(4) & ((\memoria[17][7]~regout\) # ((\RB~combout\(5))))) # (!\RB~combout\(4) & (((memoria[1][7] & !\RB~combout\(5)))))
-- \memoria[1][7]~regout\ = DFFEAS(\QB~315\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~48_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[17][7]~regout\,
	datab => \RB~combout\(4),
	datac => \WD~combout\(7),
	datad => \RB~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~315\,
	regout => \memoria[1][7]~regout\);

-- Location: LC_X17_Y8_N0
\memoria[33][7]\ : maxv_lcell
-- Equation(s):
-- \QA~316\ = (\RA~combout\(5) & ((\QA~315\ & (\memoria[49][7]~regout\)) # (!\QA~315\ & ((memoria[33][7]))))) # (!\RA~combout\(5) & (((\QA~315\))))
-- \memoria[33][7]~regout\ = DFFEAS(\QA~316\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~4_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[49][7]~regout\,
	datab => \RA~combout\(5),
	datac => \WD~combout\(7),
	datad => \QA~315\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~316\,
	regout => \memoria[33][7]~regout\);

-- Location: LC_X17_Y8_N8
\memoria[49][7]\ : maxv_lcell
-- Equation(s):
-- \QB~316\ = (\RB~combout\(5) & ((\QB~315\ & ((memoria[49][7]))) # (!\QB~315\ & (\memoria[33][7]~regout\)))) # (!\RB~combout\(5) & (((\QB~315\))))
-- \memoria[49][7]~regout\ = DFFEAS(\QB~316\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~65_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(5),
	datab => \memoria[33][7]~regout\,
	datac => \WD~combout\(7),
	datad => \QB~315\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~316\,
	regout => \memoria[49][7]~regout\);

-- Location: LC_X17_Y8_N6
\QA~317\ : maxv_lcell
-- Equation(s):
-- \QA~317_combout\ = (\RA~combout\(3) & (((\RA~combout\(2))))) # (!\RA~combout\(3) & ((\RA~combout\(2) & (\QA~314\)) # (!\RA~combout\(2) & ((\QA~316\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e5e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RA~combout\(3),
	datab => \QA~314\,
	datac => \RA~combout\(2),
	datad => \QA~316\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~317_combout\);

-- Location: LC_X16_Y7_N7
\memoria[45][7]\ : maxv_lcell
-- Equation(s):
-- \QA~318\ = (\RA~combout\(5) & ((\RA~combout\(4)) # ((memoria[45][7])))) # (!\RA~combout\(5) & (!\RA~combout\(4) & ((\memoria[13][7]~regout\))))
-- \memoria[45][7]~regout\ = DFFEAS(\QA~318\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~5_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RA~combout\(5),
	datab => \RA~combout\(4),
	datac => \WD~combout\(7),
	datad => \memoria[13][7]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~318\,
	regout => \memoria[45][7]~regout\);

-- Location: LC_X16_Y7_N8
\memoria[13][7]\ : maxv_lcell
-- Equation(s):
-- \QB~318\ = (\RB~combout\(4) & (((\RB~combout\(5))))) # (!\RB~combout\(4) & ((\RB~combout\(5) & (\memoria[45][7]~regout\)) # (!\RB~combout\(5) & ((memoria[13][7])))))
-- \memoria[13][7]~regout\ = DFFEAS(\QB~318\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~53_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(4),
	datab => \memoria[45][7]~regout\,
	datac => \WD~combout\(7),
	datad => \RB~combout\(5),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~318\,
	regout => \memoria[13][7]~regout\);

-- Location: LC_X15_Y7_N0
\memoria[29][7]\ : maxv_lcell
-- Equation(s):
-- \QA~319\ = (\RA~combout\(4) & ((\QA~318\ & (\memoria[61][7]~regout\)) # (!\QA~318\ & ((memoria[29][7]))))) # (!\RA~combout\(4) & (((\QA~318\))))
-- \memoria[29][7]~regout\ = DFFEAS(\QA~319\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~37_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memoria[61][7]~regout\,
	datab => \RA~combout\(4),
	datac => \WD~combout\(7),
	datad => \QA~318\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~319\,
	regout => \memoria[29][7]~regout\);

-- Location: LC_X15_Y7_N6
\memoria[61][7]\ : maxv_lcell
-- Equation(s):
-- \QB~319\ = (\RB~combout\(4) & ((\QB~318\ & ((memoria[61][7]))) # (!\QB~318\ & (\memoria[29][7]~regout\)))) # (!\RB~combout\(4) & (((\QB~318\))))
-- \memoria[61][7]~regout\ = DFFEAS(\QB~319\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \Decoder0~68_combout\, \WD~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RB~combout\(4),
	datab => \memoria[29][7]~regout\,
	datac => \WD~combout\(7),
	datad => \QB~318\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \Decoder0~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~319\,
	regout => \memoria[61][7]~regout\);

-- Location: LC_X17_Y8_N1
\QA~320\ : maxv_lcell
-- Equation(s):
-- \QA~320_combout\ = (\RA~combout\(3) & ((\QA~317_combout\ & ((\QA~319\))) # (!\QA~317_combout\ & (\QA~312\)))) # (!\RA~combout\(3) & (((\QA~317_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f858",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RA~combout\(3),
	datab => \QA~312\,
	datac => \QA~317_combout\,
	datad => \QA~319\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~320_combout\);

-- Location: LC_X12_Y10_N8
\QA~331\ : maxv_lcell
-- Equation(s):
-- \QA~331_combout\ = (\RA~combout\(1) & (((\RA~combout\(0))))) # (!\RA~combout\(1) & ((\RA~combout\(0) & ((\QA~320_combout\))) # (!\RA~combout\(0) & (\QA~330_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RA~combout\(1),
	datab => \QA~330_combout\,
	datac => \RA~combout\(0),
	datad => \QA~320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~331_combout\);

-- Location: LC_X12_Y10_N9
\QA~342\ : maxv_lcell
-- Equation(s):
-- \QA~342_combout\ = (\RA~combout\(1) & ((\QA~331_combout\ & (\QA~341_combout\)) # (!\QA~331_combout\ & ((\QA~310_combout\))))) # (!\RA~combout\(1) & (((\QA~331_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RA~combout\(1),
	datab => \QA~341_combout\,
	datac => \QA~310_combout\,
	datad => \QA~331_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~342_combout\);

-- Location: LC_X12_Y10_N2
\QA~343\ : maxv_lcell
-- Equation(s):
-- \QA~343_combout\ = (((\readA~combout\ & \QA~342_combout\)))

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
	datac => \readA~combout\,
	datad => \QA~342_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QA~343_combout\);

-- Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\readB~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_readB,
	combout => \readB~combout\);

-- Location: LC_X14_Y9_N7
\QB~37\ : maxv_lcell
-- Equation(s):
-- \QB~37_combout\ = (\RB~combout\(2) & (((\QB~34\) # (\RB~combout\(3))))) # (!\RB~combout\(2) & (\QB~36\ & ((!\RB~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~36\,
	datab => \QB~34\,
	datac => \RB~combout\(2),
	datad => \RB~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~37_combout\);

-- Location: LC_X14_Y9_N6
\QB~40\ : maxv_lcell
-- Equation(s):
-- \QB~40_combout\ = (\RB~combout\(3) & ((\QB~37_combout\ & (\QB~39\)) # (!\QB~37_combout\ & ((\QB~32\))))) # (!\RB~combout\(3) & (\QB~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RB~combout\(3),
	datab => \QB~37_combout\,
	datac => \QB~39\,
	datad => \QB~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~40_combout\);

-- Location: LC_X11_Y9_N7
\QB~26\ : maxv_lcell
-- Equation(s):
-- \QB~26_combout\ = (\RB~combout\(3) & (((\RB~combout\(2))))) # (!\RB~combout\(3) & ((\RB~combout\(2) & ((\QB~23\))) # (!\RB~combout\(2) & (\QB~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RB~combout\(3),
	datab => \QB~25\,
	datac => \RB~combout\(2),
	datad => \QB~23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~26_combout\);

-- Location: LC_X12_Y9_N4
\QB~29\ : maxv_lcell
-- Equation(s):
-- \QB~29_combout\ = (\QB~26_combout\ & ((\QB~28\) # ((!\RB~combout\(3))))) # (!\QB~26_combout\ & (((\RB~combout\(3) & \QB~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bc8c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~28\,
	datab => \QB~26_combout\,
	datac => \RB~combout\(3),
	datad => \QB~21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~29_combout\);

-- Location: LC_X7_Y8_N3
\QB~16\ : maxv_lcell
-- Equation(s):
-- \QB~16_combout\ = (\RB~combout\(3) & (((\RB~combout\(2)) # (\QB~13\)))) # (!\RB~combout\(3) & (\QB~15\ & (!\RB~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aea4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RB~combout\(3),
	datab => \QB~15\,
	datac => \RB~combout\(2),
	datad => \QB~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~16_combout\);

-- Location: LC_X7_Y8_N0
\QB~19\ : maxv_lcell
-- Equation(s):
-- \QB~19_combout\ = (\RB~combout\(2) & ((\QB~16_combout\ & (\QB~18\)) # (!\QB~16_combout\ & ((\QB~11\))))) # (!\RB~combout\(2) & (((\QB~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~18\,
	datab => \RB~combout\(2),
	datac => \QB~11\,
	datad => \QB~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~19_combout\);

-- Location: LC_X12_Y9_N5
\QB~30\ : maxv_lcell
-- Equation(s):
-- \QB~30_combout\ = (\RB~combout\(4) & (((\QB~19_combout\) # (\RB~combout\(5))))) # (!\RB~combout\(4) & (\QB~29_combout\ & ((!\RB~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~29_combout\,
	datab => \QB~19_combout\,
	datac => \RB~combout\(4),
	datad => \RB~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~30_combout\);

-- Location: LC_X12_Y7_N5
\QB~6\ : maxv_lcell
-- Equation(s):
-- \QB~6_combout\ = (\RB~combout\(1) & (((\RB~combout\(0)) # (\QB~3\)))) # (!\RB~combout\(1) & (\QB~5\ & (!\RB~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cec2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~5\,
	datab => \RB~combout\(1),
	datac => \RB~combout\(0),
	datad => \QB~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~6_combout\);

-- Location: LC_X14_Y9_N2
\QB~9\ : maxv_lcell
-- Equation(s):
-- \QB~9_combout\ = (\RB~combout\(0) & ((\QB~6_combout\ & ((\QB~8\))) # (!\QB~6_combout\ & (\QB~1\)))) # (!\RB~combout\(0) & (((\QB~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f838",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~1\,
	datab => \RB~combout\(0),
	datac => \QB~6_combout\,
	datad => \QB~8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~9_combout\);

-- Location: LC_X14_Y9_N3
\QB~41\ : maxv_lcell
-- Equation(s):
-- \QB~41_combout\ = (\QB~30_combout\ & ((\QB~40_combout\) # ((!\RB~combout\(5))))) # (!\QB~30_combout\ & (((\RB~combout\(5) & \QB~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bc8c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~40_combout\,
	datab => \QB~30_combout\,
	datac => \RB~combout\(5),
	datad => \QB~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~41_combout\);

-- Location: LC_X14_Y9_N4
\QB~42\ : maxv_lcell
-- Equation(s):
-- \QB~42_combout\ = (((\readB~combout\ & \QB~41_combout\)))

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
	datac => \readB~combout\,
	datad => \QB~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~42_combout\);

-- Location: LC_X12_Y8_N2
\QB~80\ : maxv_lcell
-- Equation(s):
-- \QB~80_combout\ = (\RB~combout\(2) & (((\RB~combout\(3)) # (\QB~77\)))) # (!\RB~combout\(2) & (\QB~79\ & (!\RB~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cec2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~79\,
	datab => \RB~combout\(2),
	datac => \RB~combout\(3),
	datad => \QB~77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~80_combout\);

-- Location: LC_X12_Y8_N3
\QB~83\ : maxv_lcell
-- Equation(s):
-- \QB~83_combout\ = (\QB~80_combout\ & ((\QB~82\) # ((!\RB~combout\(3))))) # (!\QB~80_combout\ & (((\RB~combout\(3) & \QB~75\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bc8c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~82\,
	datab => \QB~80_combout\,
	datac => \RB~combout\(3),
	datad => \QB~75\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~83_combout\);

-- Location: LC_X9_Y9_N4
\QB~69\ : maxv_lcell
-- Equation(s):
-- \QB~69_combout\ = (\RB~combout\(3) & ((\RB~combout\(2)) # ((\QB~66\)))) # (!\RB~combout\(3) & (!\RB~combout\(2) & ((\QB~68\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RB~combout\(3),
	datab => \RB~combout\(2),
	datac => \QB~66\,
	datad => \QB~68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~69_combout\);

-- Location: LC_X9_Y9_N8
\QB~72\ : maxv_lcell
-- Equation(s):
-- \QB~72_combout\ = (\QB~69_combout\ & (((\QB~71\)) # (!\RB~combout\(2)))) # (!\QB~69_combout\ & (\RB~combout\(2) & (\QB~64\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~69_combout\,
	datab => \RB~combout\(2),
	datac => \QB~64\,
	datad => \QB~71\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~72_combout\);

-- Location: LC_X14_Y10_N2
\QB~59\ : maxv_lcell
-- Equation(s):
-- \QB~59_combout\ = (\RB~combout\(2) & ((\QB~56\) # ((\RB~combout\(3))))) # (!\RB~combout\(2) & (((!\RB~combout\(3) & \QB~58\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ada8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RB~combout\(2),
	datab => \QB~56\,
	datac => \RB~combout\(3),
	datad => \QB~58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~59_combout\);

-- Location: LC_X13_Y8_N1
\QB~62\ : maxv_lcell
-- Equation(s):
-- \QB~62_combout\ = (\RB~combout\(3) & ((\QB~59_combout\ & (\QB~61\)) # (!\QB~59_combout\ & ((\QB~54\))))) # (!\RB~combout\(3) & (((\QB~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~61\,
	datab => \QB~54\,
	datac => \RB~combout\(3),
	datad => \QB~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~62_combout\);

-- Location: LC_X9_Y9_N9
\QB~73\ : maxv_lcell
-- Equation(s):
-- \QB~73_combout\ = (\RB~combout\(0) & (((\QB~62_combout\) # (\RB~combout\(1))))) # (!\RB~combout\(0) & (\QB~72_combout\ & ((!\RB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~72_combout\,
	datab => \QB~62_combout\,
	datac => \RB~combout\(0),
	datad => \RB~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~73_combout\);

-- Location: LC_X12_Y8_N4
\QB~49\ : maxv_lcell
-- Equation(s):
-- \QB~49_combout\ = (\RB~combout\(2) & (((\RB~combout\(3))))) # (!\RB~combout\(2) & ((\RB~combout\(3) & (\QB~46\)) # (!\RB~combout\(3) & ((\QB~48\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e3e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~46\,
	datab => \RB~combout\(2),
	datac => \RB~combout\(3),
	datad => \QB~48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~49_combout\);

-- Location: LC_X12_Y8_N5
\QB~52\ : maxv_lcell
-- Equation(s):
-- \QB~52_combout\ = (\RB~combout\(2) & ((\QB~49_combout\ & (\QB~51\)) # (!\QB~49_combout\ & ((\QB~44\))))) # (!\RB~combout\(2) & (((\QB~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bcb0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~51\,
	datab => \RB~combout\(2),
	datac => \QB~49_combout\,
	datad => \QB~44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~52_combout\);

-- Location: LC_X12_Y9_N2
\QB~84\ : maxv_lcell
-- Equation(s):
-- \QB~84_combout\ = (\RB~combout\(1) & ((\QB~73_combout\ & (\QB~83_combout\)) # (!\QB~73_combout\ & ((\QB~52_combout\))))) # (!\RB~combout\(1) & (((\QB~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bcb0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~83_combout\,
	datab => \RB~combout\(1),
	datac => \QB~73_combout\,
	datad => \QB~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~84_combout\);

-- Location: LC_X12_Y9_N3
\QB~85\ : maxv_lcell
-- Equation(s):
-- \QB~85_combout\ = (\readB~combout\ & (((\QB~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \readB~combout\,
	datad => \QB~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~85_combout\);

-- Location: LC_X17_Y10_N8
\QB~102\ : maxv_lcell
-- Equation(s):
-- \QB~102_combout\ = (\RB~combout\(4) & ((\RB~combout\(5)) # ((\QB~99\)))) # (!\RB~combout\(4) & (!\RB~combout\(5) & ((\QB~101\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RB~combout\(4),
	datab => \RB~combout\(5),
	datac => \QB~99\,
	datad => \QB~101\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~102_combout\);

-- Location: LC_X17_Y10_N9
\QB~105\ : maxv_lcell
-- Equation(s):
-- \QB~105_combout\ = (\QB~102_combout\ & (((\QB~104\) # (!\RB~combout\(5))))) # (!\QB~102_combout\ & (\QB~97\ & ((\RB~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~102_combout\,
	datab => \QB~97\,
	datac => \QB~104\,
	datad => \RB~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~105_combout\);

-- Location: LC_X7_Y13_N3
\QB~112\ : maxv_lcell
-- Equation(s):
-- \QB~112_combout\ = (\RB~combout\(4) & (((\RB~combout\(5))))) # (!\RB~combout\(4) & ((\RB~combout\(5) & (\QB~109\)) # (!\RB~combout\(5) & ((\QB~111\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~109\,
	datab => \QB~111\,
	datac => \RB~combout\(4),
	datad => \RB~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~112_combout\);

-- Location: LC_X14_Y11_N5
\QB~115\ : maxv_lcell
-- Equation(s):
-- \QB~115_combout\ = (\RB~combout\(4) & ((\QB~112_combout\ & ((\QB~114\))) # (!\QB~112_combout\ & (\QB~107\)))) # (!\RB~combout\(4) & (((\QB~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f838",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~107\,
	datab => \RB~combout\(4),
	datac => \QB~112_combout\,
	datad => \QB~114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~115_combout\);

-- Location: LC_X16_Y10_N3
\QB~116\ : maxv_lcell
-- Equation(s):
-- \QB~116_combout\ = (\RB~combout\(2) & ((\QB~105_combout\) # ((\RB~combout\(3))))) # (!\RB~combout\(2) & (((\QB~115_combout\ & !\RB~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RB~combout\(2),
	datab => \QB~105_combout\,
	datac => \QB~115_combout\,
	datad => \RB~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~116_combout\);

-- Location: LC_X17_Y6_N7
\QB~92\ : maxv_lcell
-- Equation(s):
-- \QB~92_combout\ = (\RB~combout\(1) & (((\RB~combout\(0))))) # (!\RB~combout\(1) & ((\RB~combout\(0) & (\QB~89\)) # (!\RB~combout\(0) & ((\QB~91\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e3e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~89\,
	datab => \RB~combout\(1),
	datac => \RB~combout\(0),
	datad => \QB~91\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~92_combout\);

-- Location: LC_X17_Y6_N8
\QB~95\ : maxv_lcell
-- Equation(s):
-- \QB~95_combout\ = (\QB~92_combout\ & ((\QB~94\) # ((!\RB~combout\(1))))) # (!\QB~92_combout\ & (((\QB~87\ & \RB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~94\,
	datab => \QB~87\,
	datac => \QB~92_combout\,
	datad => \RB~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~95_combout\);

-- Location: LC_X15_Y8_N5
\QB~123\ : maxv_lcell
-- Equation(s):
-- \QB~123_combout\ = (\RB~combout\(5) & (((\RB~combout\(4)) # (\QB~120\)))) # (!\RB~combout\(5) & (\QB~122\ & (!\RB~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aea4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RB~combout\(5),
	datab => \QB~122\,
	datac => \RB~combout\(4),
	datad => \QB~120\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~123_combout\);

-- Location: LC_X16_Y10_N6
\QB~126\ : maxv_lcell
-- Equation(s):
-- \QB~126_combout\ = (\QB~123_combout\ & (((\QB~125\)) # (!\RB~combout\(4)))) # (!\QB~123_combout\ & (\RB~combout\(4) & (\QB~118\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~123_combout\,
	datab => \RB~combout\(4),
	datac => \QB~118\,
	datad => \QB~125\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~126_combout\);

-- Location: LC_X16_Y10_N7
\QB~127\ : maxv_lcell
-- Equation(s):
-- \QB~127_combout\ = (\QB~116_combout\ & (((\QB~126_combout\) # (!\RB~combout\(3))))) # (!\QB~116_combout\ & (\QB~95_combout\ & ((\RB~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~116_combout\,
	datab => \QB~95_combout\,
	datac => \QB~126_combout\,
	datad => \RB~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~127_combout\);

-- Location: LC_X16_Y10_N8
\QB~128\ : maxv_lcell
-- Equation(s):
-- \QB~128_combout\ = (((\readB~combout\ & \QB~127_combout\)))

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
	datac => \readB~combout\,
	datad => \QB~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~128_combout\);

-- Location: LC_X9_Y9_N7
\QB~155\ : maxv_lcell
-- Equation(s):
-- \QB~155_combout\ = (\RB~combout\(1) & ((\QB~152\) # ((\RB~combout\(0))))) # (!\RB~combout\(1) & (((!\RB~combout\(0) & \QB~154\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cbc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~152\,
	datab => \RB~combout\(1),
	datac => \RB~combout\(0),
	datad => \QB~154\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~155_combout\);

-- Location: LC_X9_Y9_N2
\QB~158\ : maxv_lcell
-- Equation(s):
-- \QB~158_combout\ = (\QB~155_combout\ & (((\QB~157\) # (!\RB~combout\(0))))) # (!\QB~155_combout\ & (\QB~150\ & (\RB~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec2c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~150\,
	datab => \QB~155_combout\,
	datac => \RB~combout\(0),
	datad => \QB~157\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~158_combout\);

-- Location: LC_X8_Y7_N7
\QB~145\ : maxv_lcell
-- Equation(s):
-- \QB~145_combout\ = (\RB~combout\(1) & ((\QB~142\) # ((\RB~combout\(0))))) # (!\RB~combout\(1) & (((\QB~144\ & !\RB~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~142\,
	datab => \QB~144\,
	datac => \RB~combout\(1),
	datad => \RB~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~145_combout\);

-- Location: LC_X8_Y7_N3
\QB~148\ : maxv_lcell
-- Equation(s):
-- \QB~148_combout\ = (\QB~145_combout\ & ((\QB~147\) # ((!\RB~combout\(0))))) # (!\QB~145_combout\ & (((\QB~140\ & \RB~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~147\,
	datab => \QB~140\,
	datac => \QB~145_combout\,
	datad => \RB~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~148_combout\);

-- Location: LC_X8_Y7_N8
\QB~159\ : maxv_lcell
-- Equation(s):
-- \QB~159_combout\ = (\RB~combout\(5) & ((\RB~combout\(4)) # ((\QB~148_combout\)))) # (!\RB~combout\(5) & (!\RB~combout\(4) & (\QB~158_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RB~combout\(5),
	datab => \RB~combout\(4),
	datac => \QB~158_combout\,
	datad => \QB~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~159_combout\);

-- Location: LC_X11_Y7_N8
\QB~166\ : maxv_lcell
-- Equation(s):
-- \QB~166_combout\ = (\RB~combout\(1) & (((\RB~combout\(0))))) # (!\RB~combout\(1) & ((\RB~combout\(0) & ((\QB~163\))) # (!\RB~combout\(0) & (\QB~165\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RB~combout\(1),
	datab => \QB~165\,
	datac => \QB~163\,
	datad => \RB~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~166_combout\);

-- Location: LC_X11_Y7_N2
\QB~169\ : maxv_lcell
-- Equation(s):
-- \QB~169_combout\ = (\RB~combout\(1) & ((\QB~166_combout\ & (\QB~168\)) # (!\QB~166_combout\ & ((\QB~161\))))) # (!\RB~combout\(1) & (((\QB~166_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RB~combout\(1),
	datab => \QB~168\,
	datac => \QB~161\,
	datad => \QB~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~169_combout\);

-- Location: LC_X4_Y7_N4
\QB~135\ : maxv_lcell
-- Equation(s):
-- \QB~135_combout\ = (\RB~combout\(1) & (((\RB~combout\(0))))) # (!\RB~combout\(1) & ((\RB~combout\(0) & (\QB~132\)) # (!\RB~combout\(0) & ((\QB~134\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e5e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RB~combout\(1),
	datab => \QB~132\,
	datac => \RB~combout\(0),
	datad => \QB~134\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~135_combout\);

-- Location: LC_X4_Y7_N6
\QB~138\ : maxv_lcell
-- Equation(s):
-- \QB~138_combout\ = (\RB~combout\(1) & ((\QB~135_combout\ & (\QB~137\)) # (!\QB~135_combout\ & ((\QB~130\))))) # (!\RB~combout\(1) & (((\QB~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dad0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RB~combout\(1),
	datab => \QB~137\,
	datac => \QB~135_combout\,
	datad => \QB~130\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~138_combout\);

-- Location: LC_X8_Y7_N9
\QB~170\ : maxv_lcell
-- Equation(s):
-- \QB~170_combout\ = (\QB~159_combout\ & (((\QB~169_combout\)) # (!\RB~combout\(4)))) # (!\QB~159_combout\ & (\RB~combout\(4) & ((\QB~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~159_combout\,
	datab => \RB~combout\(4),
	datac => \QB~169_combout\,
	datad => \QB~138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~170_combout\);

-- Location: LC_X8_Y7_N4
\QB~171\ : maxv_lcell
-- Equation(s):
-- \QB~171_combout\ = ((\readB~combout\ & ((\QB~170_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \readB~combout\,
	datad => \QB~170_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~171_combout\);

-- Location: LC_X9_Y11_N6
\QB~198\ : maxv_lcell
-- Equation(s):
-- \QB~198_combout\ = (\RB~combout\(3) & ((\QB~195\) # ((\RB~combout\(2))))) # (!\RB~combout\(3) & (((!\RB~combout\(2) & \QB~197\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cbc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~195\,
	datab => \RB~combout\(3),
	datac => \RB~combout\(2),
	datad => \QB~197\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~198_combout\);

-- Location: LC_X10_Y11_N7
\QB~201\ : maxv_lcell
-- Equation(s):
-- \QB~201_combout\ = (\QB~198_combout\ & (((\QB~200\) # (!\RB~combout\(2))))) # (!\QB~198_combout\ & (\QB~193\ & (\RB~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec2c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~193\,
	datab => \QB~198_combout\,
	datac => \RB~combout\(2),
	datad => \QB~200\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~201_combout\);

-- Location: LC_X7_Y4_N0
\QB~188\ : maxv_lcell
-- Equation(s):
-- \QB~188_combout\ = (\RB~combout\(3) & (((\QB~185\) # (\RB~combout\(2))))) # (!\RB~combout\(3) & (\QB~187\ & ((!\RB~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~187\,
	datab => \QB~185\,
	datac => \RB~combout\(3),
	datad => \RB~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~188_combout\);

-- Location: LC_X9_Y5_N4
\QB~191\ : maxv_lcell
-- Equation(s):
-- \QB~191_combout\ = (\RB~combout\(2) & ((\QB~188_combout\ & ((\QB~190\))) # (!\QB~188_combout\ & (\QB~183\)))) # (!\RB~combout\(2) & (((\QB~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f838",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~183\,
	datab => \RB~combout\(2),
	datac => \QB~188_combout\,
	datad => \QB~190\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~191_combout\);

-- Location: LC_X13_Y5_N6
\QB~202\ : maxv_lcell
-- Equation(s):
-- \QB~202_combout\ = (\RB~combout\(1) & ((\RB~combout\(0)) # ((\QB~191_combout\)))) # (!\RB~combout\(1) & (!\RB~combout\(0) & (\QB~201_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RB~combout\(1),
	datab => \RB~combout\(0),
	datac => \QB~201_combout\,
	datad => \QB~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~202_combout\);

-- Location: LC_X10_Y9_N6
\QB~209\ : maxv_lcell
-- Equation(s):
-- \QB~209_combout\ = (\RB~combout\(4) & ((\QB~206\) # ((\RB~combout\(5))))) # (!\RB~combout\(4) & (((\QB~208\ & !\RB~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~206\,
	datab => \QB~208\,
	datac => \RB~combout\(4),
	datad => \RB~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~209_combout\);

-- Location: LC_X10_Y9_N7
\QB~212\ : maxv_lcell
-- Equation(s):
-- \QB~212_combout\ = (\QB~209_combout\ & ((\QB~211\) # ((!\RB~combout\(5))))) # (!\QB~209_combout\ & (((\QB~204\ & \RB~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~209_combout\,
	datab => \QB~211\,
	datac => \QB~204\,
	datad => \RB~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~212_combout\);

-- Location: LC_X17_Y7_N8
\QB~178\ : maxv_lcell
-- Equation(s):
-- \QB~178_combout\ = (\RB~combout\(2) & ((\QB~175\) # ((\RB~combout\(3))))) # (!\RB~combout\(2) & (((!\RB~combout\(3) & \QB~177\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cbc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~175\,
	datab => \RB~combout\(2),
	datac => \RB~combout\(3),
	datad => \QB~177\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~178_combout\);

-- Location: LC_X17_Y7_N4
\QB~181\ : maxv_lcell
-- Equation(s):
-- \QB~181_combout\ = (\RB~combout\(3) & ((\QB~178_combout\ & ((\QB~180\))) # (!\QB~178_combout\ & (\QB~173\)))) # (!\RB~combout\(3) & (((\QB~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RB~combout\(3),
	datab => \QB~173\,
	datac => \QB~180\,
	datad => \QB~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~181_combout\);

-- Location: LC_X13_Y5_N8
\QB~213\ : maxv_lcell
-- Equation(s):
-- \QB~213_combout\ = (\QB~202_combout\ & (((\QB~212_combout\)) # (!\RB~combout\(0)))) # (!\QB~202_combout\ & (\RB~combout\(0) & ((\QB~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~202_combout\,
	datab => \RB~combout\(0),
	datac => \QB~212_combout\,
	datad => \QB~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~213_combout\);

-- Location: LC_X12_Y4_N8
\QB~214\ : maxv_lcell
-- Equation(s):
-- \QB~214_combout\ = (((\readB~combout\ & \QB~213_combout\)))

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
	datac => \readB~combout\,
	datad => \QB~213_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~214_combout\);

-- Location: LC_X4_Y9_N9
\QB~221\ : maxv_lcell
-- Equation(s):
-- \QB~221_combout\ = (\RB~combout\(5) & (\RB~combout\(4))) # (!\RB~combout\(5) & ((\RB~combout\(4) & (\QB~218\)) # (!\RB~combout\(4) & ((\QB~220\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RB~combout\(5),
	datab => \RB~combout\(4),
	datac => \QB~218\,
	datad => \QB~220\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~221_combout\);

-- Location: LC_X4_Y9_N6
\QB~224\ : maxv_lcell
-- Equation(s):
-- \QB~224_combout\ = (\RB~combout\(5) & ((\QB~221_combout\ & ((\QB~223\))) # (!\QB~221_combout\ & (\QB~216\)))) # (!\RB~combout\(5) & (\QB~221_combout\))

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
	dataa => \RB~combout\(5),
	datab => \QB~221_combout\,
	datac => \QB~216\,
	datad => \QB~223\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~224_combout\);

-- Location: LC_X10_Y7_N9
\QB~252\ : maxv_lcell
-- Equation(s):
-- \QB~252_combout\ = (\RB~combout\(1) & ((\QB~249\) # ((\RB~combout\(0))))) # (!\RB~combout\(1) & (((\QB~251\ & !\RB~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RB~combout\(1),
	datab => \QB~249\,
	datac => \QB~251\,
	datad => \RB~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~252_combout\);

-- Location: LC_X10_Y7_N4
\QB~255\ : maxv_lcell
-- Equation(s):
-- \QB~255_combout\ = (\QB~252_combout\ & ((\QB~254\) # ((!\RB~combout\(0))))) # (!\QB~252_combout\ & (((\QB~247\ & \RB~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~254\,
	datab => \QB~252_combout\,
	datac => \QB~247\,
	datad => \RB~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~255_combout\);

-- Location: LC_X19_Y6_N7
\QB~231\ : maxv_lcell
-- Equation(s):
-- \QB~231_combout\ = (\RB~combout\(5) & ((\QB~228\) # ((\RB~combout\(4))))) # (!\RB~combout\(5) & (((!\RB~combout\(4) & \QB~230\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cbc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~228\,
	datab => \RB~combout\(5),
	datac => \RB~combout\(4),
	datad => \QB~230\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~231_combout\);

-- Location: LC_X18_Y6_N6
\QB~234\ : maxv_lcell
-- Equation(s):
-- \QB~234_combout\ = (\RB~combout\(4) & ((\QB~231_combout\ & (\QB~233\)) # (!\QB~231_combout\ & ((\QB~226\))))) # (!\RB~combout\(4) & (((\QB~231_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~233\,
	datab => \RB~combout\(4),
	datac => \QB~226\,
	datad => \QB~231_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~234_combout\);

-- Location: LC_X9_Y7_N1
\QB~241\ : maxv_lcell
-- Equation(s):
-- \QB~241_combout\ = (\RB~combout\(4) & (((\RB~combout\(5))))) # (!\RB~combout\(4) & ((\RB~combout\(5) & (\QB~238\)) # (!\RB~combout\(5) & ((\QB~240\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~238\,
	datab => \RB~combout\(4),
	datac => \QB~240\,
	datad => \RB~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~241_combout\);

-- Location: LC_X10_Y7_N2
\QB~244\ : maxv_lcell
-- Equation(s):
-- \QB~244_combout\ = (\QB~241_combout\ & (((\QB~243\) # (!\RB~combout\(4))))) # (!\QB~241_combout\ & (\QB~236\ & (\RB~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea4a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~241_combout\,
	datab => \QB~236\,
	datac => \RB~combout\(4),
	datad => \QB~243\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~244_combout\);

-- Location: LC_X10_Y7_N5
\QB~245\ : maxv_lcell
-- Equation(s):
-- \QB~245_combout\ = (\RB~combout\(2) & (((\RB~combout\(3))))) # (!\RB~combout\(2) & ((\RB~combout\(3) & (\QB~234_combout\)) # (!\RB~combout\(3) & ((\QB~244_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e5e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RB~combout\(2),
	datab => \QB~234_combout\,
	datac => \RB~combout\(3),
	datad => \QB~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~245_combout\);

-- Location: LC_X10_Y7_N6
\QB~256\ : maxv_lcell
-- Equation(s):
-- \QB~256_combout\ = (\RB~combout\(2) & ((\QB~245_combout\ & ((\QB~255_combout\))) # (!\QB~245_combout\ & (\QB~224_combout\)))) # (!\RB~combout\(2) & (((\QB~245_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RB~combout\(2),
	datab => \QB~224_combout\,
	datac => \QB~255_combout\,
	datad => \QB~245_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~256_combout\);

-- Location: LC_X10_Y7_N7
\QB~257\ : maxv_lcell
-- Equation(s):
-- \QB~257_combout\ = ((\readB~combout\ & ((\QB~256_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \readB~combout\,
	datad => \QB~256_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~257_combout\);

-- Location: LC_X13_Y7_N7
\QB~295\ : maxv_lcell
-- Equation(s):
-- \QB~295_combout\ = (\RB~combout\(0) & (((\RB~combout\(1)) # (\QB~292\)))) # (!\RB~combout\(0) & (\QB~294\ & (!\RB~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cec2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~294\,
	datab => \RB~combout\(0),
	datac => \RB~combout\(1),
	datad => \QB~292\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~295_combout\);

-- Location: LC_X12_Y5_N2
\QB~298\ : maxv_lcell
-- Equation(s):
-- \QB~298_combout\ = (\QB~295_combout\ & ((\QB~297\) # ((!\RB~combout\(1))))) # (!\QB~295_combout\ & (((\QB~290\ & \RB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~295_combout\,
	datab => \QB~297\,
	datac => \QB~290\,
	datad => \RB~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~298_combout\);

-- Location: LC_X5_Y9_N9
\QB~274\ : maxv_lcell
-- Equation(s):
-- \QB~274_combout\ = (\RB~combout\(0) & (((\RB~combout\(1))))) # (!\RB~combout\(0) & ((\RB~combout\(1) & ((\QB~271\))) # (!\RB~combout\(1) & (\QB~273\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RB~combout\(0),
	datab => \QB~273\,
	datac => \QB~271\,
	datad => \RB~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~274_combout\);

-- Location: LC_X5_Y9_N4
\QB~277\ : maxv_lcell
-- Equation(s):
-- \QB~277_combout\ = (\QB~274_combout\ & (((\QB~276\) # (!\RB~combout\(0))))) # (!\QB~274_combout\ & (\QB~269\ & (\RB~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec2c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~269\,
	datab => \QB~274_combout\,
	datac => \RB~combout\(0),
	datad => \QB~276\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~277_combout\);

-- Location: LC_X10_Y12_N9
\QB~284\ : maxv_lcell
-- Equation(s):
-- \QB~284_combout\ = (\RB~combout\(1) & (((\RB~combout\(0))))) # (!\RB~combout\(1) & ((\RB~combout\(0) & (\QB~281\)) # (!\RB~combout\(0) & ((\QB~283\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~281\,
	datab => \RB~combout\(1),
	datac => \QB~283\,
	datad => \RB~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~284_combout\);

-- Location: LC_X10_Y12_N3
\QB~287\ : maxv_lcell
-- Equation(s):
-- \QB~287_combout\ = (\QB~284_combout\ & ((\QB~286\) # ((!\RB~combout\(1))))) # (!\QB~284_combout\ & (((\QB~279\ & \RB~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~286\,
	datab => \QB~284_combout\,
	datac => \QB~279\,
	datad => \RB~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~287_combout\);

-- Location: LC_X10_Y9_N5
\QB~288\ : maxv_lcell
-- Equation(s):
-- \QB~288_combout\ = (\RB~combout\(4) & ((\QB~277_combout\) # ((\RB~combout\(5))))) # (!\RB~combout\(4) & (((\QB~287_combout\ & !\RB~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~277_combout\,
	datab => \QB~287_combout\,
	datac => \RB~combout\(4),
	datad => \RB~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~288_combout\);

-- Location: LC_X7_Y11_N5
\QB~264\ : maxv_lcell
-- Equation(s):
-- \QB~264_combout\ = (\RB~combout\(2) & (((\RB~combout\(3)) # (\QB~261\)))) # (!\RB~combout\(2) & (\QB~263\ & (!\RB~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cec2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~263\,
	datab => \RB~combout\(2),
	datac => \RB~combout\(3),
	datad => \QB~261\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~264_combout\);

-- Location: LC_X12_Y4_N6
\QB~267\ : maxv_lcell
-- Equation(s):
-- \QB~267_combout\ = (\QB~264_combout\ & ((\QB~266\) # ((!\RB~combout\(3))))) # (!\QB~264_combout\ & (((\RB~combout\(3) & \QB~259\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "da8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~264_combout\,
	datab => \QB~266\,
	datac => \RB~combout\(3),
	datad => \QB~259\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~267_combout\);

-- Location: LC_X12_Y4_N9
\QB~299\ : maxv_lcell
-- Equation(s):
-- \QB~299_combout\ = (\QB~288_combout\ & ((\QB~298_combout\) # ((!\RB~combout\(5))))) # (!\QB~288_combout\ & (((\QB~267_combout\ & \RB~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~298_combout\,
	datab => \QB~288_combout\,
	datac => \QB~267_combout\,
	datad => \RB~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~299_combout\);

-- Location: LC_X12_Y4_N7
\QB~300\ : maxv_lcell
-- Equation(s):
-- \QB~300_combout\ = (((\readB~combout\ & \QB~299_combout\)))

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
	datac => \readB~combout\,
	datad => \QB~299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~300_combout\);

-- Location: LC_X8_Y5_N4
\QB~307\ : maxv_lcell
-- Equation(s):
-- \QB~307_combout\ = (\RB~combout\(2) & (\RB~combout\(3))) # (!\RB~combout\(2) & ((\RB~combout\(3) & ((\QB~304\))) # (!\RB~combout\(3) & (\QB~306\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RB~combout\(2),
	datab => \RB~combout\(3),
	datac => \QB~306\,
	datad => \QB~304\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~307_combout\);

-- Location: LC_X9_Y5_N8
\QB~310\ : maxv_lcell
-- Equation(s):
-- \QB~310_combout\ = (\QB~307_combout\ & ((\QB~309\) # ((!\RB~combout\(2))))) # (!\QB~307_combout\ & (((\QB~302\ & \RB~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~309\,
	datab => \QB~307_combout\,
	datac => \QB~302\,
	datad => \RB~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~310_combout\);

-- Location: LC_X12_Y9_N7
\QB~338\ : maxv_lcell
-- Equation(s):
-- \QB~338_combout\ = (\RB~combout\(4) & ((\QB~335\) # ((\RB~combout\(5))))) # (!\RB~combout\(4) & (((\QB~337\ & !\RB~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~335\,
	datab => \QB~337\,
	datac => \RB~combout\(4),
	datad => \RB~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~338_combout\);

-- Location: LC_X12_Y9_N0
\QB~341\ : maxv_lcell
-- Equation(s):
-- \QB~341_combout\ = (\QB~338_combout\ & ((\QB~340\) # ((!\RB~combout\(5))))) # (!\QB~338_combout\ & (((\QB~333\ & \RB~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~340\,
	datab => \QB~333\,
	datac => \QB~338_combout\,
	datad => \RB~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~341_combout\);

-- Location: LC_X9_Y11_N1
\QB~327\ : maxv_lcell
-- Equation(s):
-- \QB~327_combout\ = (\RB~combout\(3) & ((\QB~324\) # ((\RB~combout\(2))))) # (!\RB~combout\(3) & (((!\RB~combout\(2) & \QB~326\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cbc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~324\,
	datab => \RB~combout\(3),
	datac => \RB~combout\(2),
	datad => \QB~326\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~327_combout\);

-- Location: LC_X10_Y11_N5
\QB~330\ : maxv_lcell
-- Equation(s):
-- \QB~330_combout\ = (\QB~327_combout\ & ((\QB~329\) # ((!\RB~combout\(2))))) # (!\QB~327_combout\ & (((\RB~combout\(2) & \QB~322\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "da8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~327_combout\,
	datab => \QB~329\,
	datac => \RB~combout\(2),
	datad => \QB~322\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~330_combout\);

-- Location: LC_X17_Y7_N6
\QB~317\ : maxv_lcell
-- Equation(s):
-- \QB~317_combout\ = (\RB~combout\(3) & (((\RB~combout\(2))))) # (!\RB~combout\(3) & ((\RB~combout\(2) & (\QB~314\)) # (!\RB~combout\(2) & ((\QB~316\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~314\,
	datab => \RB~combout\(3),
	datac => \QB~316\,
	datad => \RB~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~317_combout\);

-- Location: LC_X17_Y7_N7
\QB~320\ : maxv_lcell
-- Equation(s):
-- \QB~320_combout\ = (\RB~combout\(3) & ((\QB~317_combout\ & (\QB~319\)) # (!\QB~317_combout\ & ((\QB~312\))))) # (!\RB~combout\(3) & (((\QB~317_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dad0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RB~combout\(3),
	datab => \QB~319\,
	datac => \QB~317_combout\,
	datad => \QB~312\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~320_combout\);

-- Location: LC_X12_Y7_N7
\QB~331\ : maxv_lcell
-- Equation(s):
-- \QB~331_combout\ = (\RB~combout\(1) & (((\RB~combout\(0))))) # (!\RB~combout\(1) & ((\RB~combout\(0) & ((\QB~320_combout\))) # (!\RB~combout\(0) & (\QB~330_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2c2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~330_combout\,
	datab => \RB~combout\(1),
	datac => \RB~combout\(0),
	datad => \QB~320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~331_combout\);

-- Location: LC_X12_Y9_N1
\QB~342\ : maxv_lcell
-- Equation(s):
-- \QB~342_combout\ = (\RB~combout\(1) & ((\QB~331_combout\ & ((\QB~341_combout\))) # (!\QB~331_combout\ & (\QB~310_combout\)))) # (!\RB~combout\(1) & (((\QB~331_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QB~310_combout\,
	datab => \QB~341_combout\,
	datac => \RB~combout\(1),
	datad => \QB~331_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~342_combout\);

-- Location: LC_X12_Y9_N6
\QB~343\ : maxv_lcell
-- Equation(s):
-- \QB~343_combout\ = (((\readB~combout\ & \QB~342_combout\)))

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
	datac => \readB~combout\,
	datad => \QB~342_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QB~343_combout\);

-- Location: PIN_E6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\QA[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \QA~42_combout\,
	oe => VCC,
	padio => ww_QA(0));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\QA[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \QA~85_combout\,
	oe => VCC,
	padio => ww_QA(1));

-- Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\QA[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \QA~128_combout\,
	oe => VCC,
	padio => ww_QA(2));

-- Location: PIN_N6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\QA[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \QA~171_combout\,
	oe => VCC,
	padio => ww_QA(3));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\QA[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \QA~214_combout\,
	oe => VCC,
	padio => ww_QA(4));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\QA[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \QA~257_combout\,
	oe => VCC,
	padio => ww_QA(5));

-- Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\QA[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \QA~300_combout\,
	oe => VCC,
	padio => ww_QA(6));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\QA[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \QA~343_combout\,
	oe => VCC,
	padio => ww_QA(7));

-- Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\QB[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \QB~42_combout\,
	oe => VCC,
	padio => ww_QB(0));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\QB[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \QB~85_combout\,
	oe => VCC,
	padio => ww_QB(1));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\QB[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \QB~128_combout\,
	oe => VCC,
	padio => ww_QB(2));

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\QB[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \QB~171_combout\,
	oe => VCC,
	padio => ww_QB(3));

-- Location: PIN_M10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\QB[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \QB~214_combout\,
	oe => VCC,
	padio => ww_QB(4));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\QB[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \QB~257_combout\,
	oe => VCC,
	padio => ww_QB(5));

-- Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\QB[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \QB~300_combout\,
	oe => VCC,
	padio => ww_QB(6));

-- Location: PIN_N10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\QB[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \QB~343_combout\,
	oe => VCC,
	padio => ww_QB(7));
END structure;


