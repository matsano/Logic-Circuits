LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY ripple_carry_adder_structural IS
	GENERIC( N  : INTEGER );
	PORT ( A,B  : IN  STD_LOGIC_VECTOR(N-1 downto 0);
	       Cin  : IN  STD_LOGIC;
               Soma : OUT STD_LOGIC_VECTOR(N-1 downto 0); 
	       Cout : OUT STD_LOGIC);
END ripple_carry_adder_structural;

ARCHITECTURE structural OF ripple_carry_adder_structural IS

	COMPONENT full_adder IS
		PORT ( Cin, x, y : IN  STD_LOGIC;
	               s, Cout   : OUT STD_LOGIC );
	END COMPONENT;

	signal temp_carry : std_logic_vector(N-1 downto 0);

BEGIN
	ADD0 : full_adder port map (Cin, A(0), B(0), Soma(0), temp_carry(0));
	GEN_REG: for I in 1 to N-1 generate
		ADDX : full_adder port map (temp_carry(I-1), A(I), B(I), Soma(I), temp_carry(I));
	end generate GEN_REG;

	Cout <= temp_carry(N-1);

END structural;
