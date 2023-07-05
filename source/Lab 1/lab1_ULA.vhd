LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY lab1_ULA IS
	GENERIC( N  : INTEGER := 4 );
	PORT ( OP	: IN  STD_LOGIC_VECTOR(2 downto 0);
			 A,B  : IN  STD_LOGIC_VECTOR(N-1 downto 0);
          Y		: OUT STD_LOGIC_VECTOR(N-1 downto 0); 
	       Z_flag,N_flag,O_flag : OUT STD_LOGIC);
END lab1_ULA;

ARCHITECTURE structural OF lab1_ULA IS

	COMPONENT ripple_carry_adder_structural IS
		GENERIC( N  : INTEGER := 4 );
		PORT ( A,B  : IN  STD_LOGIC_VECTOR(N-1 downto 0);
				 Cin  : IN  STD_LOGIC;
             Soma : OUT STD_LOGIC_VECTOR(N-1 downto 0); 
				 Cout : OUT STD_LOGIC);
	END COMPONENT;
	
	signal comp2, InterY, Zero : std_logic_vector(N-1 downto 0);
	signal CoutIntermed, Cout : std_logic;
	signal ZIntermed : std_logic;
	signal ADDA, ADDB, ADDY, Inter0, Inter1, Inter2, AandB, AorB, AxorB, notA : std_logic_vector(N-1 downto 0);
	signal ADDCout, Inter3 : std_logic;

BEGIN

	ADD0 : ripple_carry_adder_structural generic map(N) port map(A, ADDB, '0', ADDY, Cout);
	ADD1 : ripple_carry_adder_structural generic map(N) port map(Inter0, Inter1, '0', Inter2, Inter3);

	
	
	ADDB <= B when OP = "000" else comp2;
	
	Inter0 <= not B;
	Inter1(0) <= '1';
	Inter1(N-1 downto 1) <= (others =>'0');
	comp2 <= Inter2;
	CoutIntermed <= Inter3;
	
	AandB <= A and B;
	AorB <= A or B;
	AxorB <= A xor B;
	notA <= not A;
	
	Zero(N-1 downto 0) <= (others =>'0');
	
	InterY <= ADDY when OP = "000" else
				 ADDY when OP = "001" else
				 AandB when OP = "010" else
				 AorB when OP = "011" else
				 AxorB when OP = "100" else
				 notA when OP = "101" else
				 A when OP = "110" else
				 Zero;
	
	Y <= InterY;
	
	--codigo do Z_flag
	
	Z_flag <= '1' when InterY = Zero else '0';
	
	
	--codigo do N_flag
	
	N_flag <= InterY(N-1);
	
	
	--codigo do O_flag
	
	O_flag <= 	(not(OP(2)) and not(OP(1)) and 
					((not(OP(0)) and ((not(A(N-1)) and not(B(N-1)) and InterY(N-1)) or 
					(A(N-1) and B(N-1) and not(InterY(N-1))))) or 
					(OP(0) and ((not(A(N-1)) and B(N-1) and InterY(N-1)) or 
					(A(N-1) and not(B(N-1)) and not(InterY(N-1)))))));

	
	
END structural;