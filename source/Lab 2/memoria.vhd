LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY memoria IS
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
END memoria;

ARCHITECTURE logic OF memoria IS
	TYPE memory IS ARRAY(2**M - 1 DOWNTO 0) OF STD_LOGIC_VECTOR(N-1 DOWNTO 0);
	
	SIGNAL memoria 	: memory;
	SIGNAL WAddr_int 	: INTEGER RANGE 0 TO 2**M - 1 ;
	
	SIGNAL RA_int, RB_int : INTEGER := 0;
	
BEGIN
	WAddr_int <= to_integer(unsigned(WAddr));
	RA_int <= to_integer(unsigned(RA));
	RB_int <= to_integer(unsigned(RB));
	
	PROCESS(clk, WAddr_int, RA_int, RB_int, reset, WWrite, readA, readB)
	BEGIN
	-- Parte das Escritas
		IF(reset = '1') THEN
			memoria <= (OTHERS => (OTHERS => '0'));
		
		ELSIF(rising_edge(clk) and WWrite = '1') THEN
			memoria(WAddr_int) <= WD;
		END IF;
	
	-- Parte das Leituras
		IF (readA = '1') THEN
			QA <= memoria(RA_int);
		ELSE
			QA <= (OTHERS => '0');
		END IF;
		
		IF (readB = '1') THEN
			QB <= memoria(RB_int);
		ELSE
			QB <= (OTHERS => '0');
		END IF;
	
	END PROCESS;
END logic;