LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY datapath IS
 GENERIC(
	N 	: INTEGER := 8;
	M 	: INTEGER := 6);
 PORT(
	input 	: IN STD_LOGIC_VECTOR(N-1 downto 0);
	IE			: IN STD_LOGIC;
	OE 		: IN STD_LOGIC;
	
	clk		: IN STD_LOGIC;
	WWrite	: IN STD_LOGIC;
	WAddr 	: IN STD_LOGIC_VECTOR(M - 1 DOWNTO 0);
	reset		: IN STD_LOGIC;
	RA			: IN STD_LOGIC_VECTOR(M - 1 DOWNTO 0);
	readA 	: IN STD_LOGIC;
	RB 		: IN STD_LOGIC_VECTOR(M - 1 DOWNTO 0);
	readB 	: IN STD_LOGIC;
	
	OP			: IN  STD_LOGIC_VECTOR(2 downto 0);
	
	output	: OUT STD_LOGIC_VECTOR(N-1 downto 0);
	Z_flag,N_flag,O_flag : OUT STD_LOGIC);
	
END datapath;

ARCHITECTURE logic OF datapath IS
	
	COMPONENT memoria IS
		GENERIC(
			N 	: INTEGER := 8;
			M 	: INTEGER := 6);
		PORT(
			clk		: IN STD_LOGIC;
			WD 		: IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
			WWrite	: IN STD_LOGIC;
			WAddr 	: IN STD_LOGIC_VECTOR(M - 1 DOWNTO 0);
			reset		: IN STD_LOGIC;
			RA			: IN STD_LOGIC_VECTOR(M - 1 DOWNTO 0);
			readA 	: IN STD_LOGIC;
			RB 		: IN STD_LOGIC_VECTOR(M - 1 DOWNTO 0);
			readB 	: IN STD_LOGIC;
			QA 		: OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
			QB 		: OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT lab1_ULA IS
		GENERIC( N  				: INTEGER := 8 );
		PORT(
			OP							: IN  STD_LOGIC_VECTOR(2 downto 0);
			A,B 						: IN  STD_LOGIC_VECTOR(N-1 downto 0);
         Y							: OUT STD_LOGIC_VECTOR(N-1 downto 0); 
	      Z_flag,N_flag,O_flag : OUT STD_LOGIC);
	END COMPONENT;
	
	SIGNAL QA, QB, Y : STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
	SIGNAL Mult : STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
	
BEGIN
	
	MEM0 : memoria generic map(N, M) port map(clk, Mult, WWrite, WAddr, reset, RA, readA, RB, readB, QA, QB);
	ULA0 : lab1_ULA generic map(N) port map(OP, QA, QB, Y, Z_flag, N_flag, O_flag);
	
	Mult <=	input when IE = '1' else
				Y;
	
	output <=	Y when OE = '1' else
					(OTHERS => 'Z');

END logic;