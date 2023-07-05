LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY ULA IS
	GENERIC( N  : INTEGER := 6 );
	PORT ( OP	: IN  STD_LOGIC_VECTOR(2 downto 0);
			 A,B  : IN  STD_LOGIC_VECTOR(N-1 downto 0);
          Y		: OUT STD_LOGIC_VECTOR(N-1 downto 0); 
	       Z_flag,N_flag,O_flag : OUT STD_LOGIC);
END lab1_ULA;

ARCHITECTURE structural OF ULA IS

	COMPONENT ripple_carry_adder_structural IS
		GENERIC( N  : INTEGER := 6 );
		PORT ( A,B  : IN  STD_LOGIC_VECTOR(N-1 downto 0);
				 Cin  : IN  STD_LOGIC;
             Soma : OUT STD_LOGIC_VECTOR(N-1 downto 0); 
				 Cout : OUT STD_LOGIC);
	END COMPONENT;
	
	signal comp2, InterY : std_logic_vector(N-1 downto 0);
	signal CoutIntermed, Cout : std_logic;
	signal ZIntermed : std_logic;
	signal ADDA, ADDB, ADDY, Inter0, Inter1, Inter2 : std_logic_vector(N-1 downto 0);
	signal ADDCout, Inter3 : std_logic;

BEGIN

	ADD0 : ripple_carry_adder_structural generic map(N) port map(ADDA, ADDB, '0', ADDY, ADDCout);
	ADD1 : ripple_carry_adder_structural generic map(N) port map(Inter0, Inter1, '0', Inter2, Inter3);

process(OP)
begin

	--codigo das operacoes
	
	if(OP = "000") then
		ADDA <= A;
		ADDB <= B;
		InterY <= ADDY;
		Cout <= ADDCout;
		Y <= ADDY;
	
	elsif(OP = "001") then
		Inter0 <= not B;
		Inter1(0) <= '1';
		Inter1(N-1 downto 1) <= (others =>'0');
		comp2 <= Inter2;
		CoutIntermed <= Inter3;
		
		ADDA <= A;
		ADDB <= comp2;
		InterY <= ADDY;
		Cout <= ADDCout;
		Y <= ADDY;
	
	elsif(OP = "010") then
		InterY <= A and B;
		Y <= A and B;
		
	elsif(OP = "011") then
		InterY <= A or B;
		Y <= A or B;
		
	elsif(OP = "100") then
		InterY <= A xor B;
		Y <= A xor B;
	
	elsif(OP = "101") then
		InterY <= not A;
		Y <= not A;
	
	elsif(OP = "110") then
		InterY <= A;
		Y <= A;
	
	else
		InterY(N-1 downto 0) <= (others =>'0');
		Y(N-1 downto 0) <= (others =>'0');
	
	end if;
	
	
	--codigo do Z_flag
	
	for i in 0 to N-1 loop
		ZIntermed <= Cout or InterY(i);
	end loop;
	Z_flag <= not ZIntermed;
	
	
	
	--codigo do N_flag
	
	N_flag <= InterY(N-1);
	
	
	--codigo do O_flag
	
	O_flag <= (not(OP(2)) and not(OP(1)) and ((not(OP(0)) and ((not(A(N-1)) and not(B(N-1)) and InterY(N-1)) or (A(N-1) and B(N-1) and not(InterY(N-1))))) or (OP(0) and ((not(A(N-1)) and B(N-1) and InterY(N-1)) or (A(N-1) and not(B(N-1)) and not(InterY(N-1)))))));
	
	
	end process;
	
END structural;