library ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity test_ripple_carry_adder is end;

architecture dut of test_ripple_carry_adder is

	CONSTANT half_period : time := 10 ps;
	CONSTANT N : integer := 6;

	COMPONENT ripple_carry_adder_structural IS
		GENERIC( N  : INTEGER );
		PORT ( A,B  : IN  STD_LOGIC_VECTOR(N-1 downto 0);
		       Cin  : IN  STD_LOGIC;
	               Soma : OUT STD_LOGIC_VECTOR(N-1 downto 0); 
		       Cout : OUT STD_LOGIC);
	END COMPONENT;

	signal clk,Cin,Cout,simulando : std_logic := '0';
	signal A,B,Soma : std_logic_vector(N-1 downto 0);

BEGIN
	clk <= (simulando and not clk) after half_period;

	DUT: ripple_carry_adder_structural generic map (N) port map (A,B,Cin,Soma,Cout);

	st: process is
	variable SUM_RTL,temp_sum,valA,valB : integer := 0;
	variable Cout_RTL : std_logic := '0';
	BEGIN
		assert false report "BOT" severity note; --inicio do teste
		Cin <= '0';
		simulando <= '1';
      	        wait until rising_edge(clk);

		for I in 0 to 2**N - 1 loop
			for J in 0 to 2**N - 1 loop
				wait until falling_edge(clk);
				valA := I;
				valB := J;
				A <= std_logic_vector(to_unsigned(valA,N));
				B <= std_logic_vector(to_unsigned(valB,N));
				temp_sum := valA + valB;
				if(temp_sum <= 2**N - 1) then
					SUM_RTL := temp_sum;
					cout_RTL := '0';
				else
					SUM_RTL := temp_sum - 2**N;
					cout_RTL := '1';
				end if;
				wait until rising_edge(clk);
				assert SUM_RTL = to_integer(unsigned(Soma)) report "Erro na Soma (Cin = 0)" severity failure;
				assert Cout = Cout_RTL report "Erro no Carry Out (Cin = 0)" severity failure;
			end loop;
		end loop;

		Cin <= '1';

		for I in 0 to 2**N - 1 loop
			for J in 0 to 2**N - 1 loop
				wait until falling_edge(clk);
				valA := I;
				valB := J;
				A <= std_logic_vector(to_unsigned(valA,N));
				B <= std_logic_vector(to_unsigned(valB,N));
				temp_sum := valA + valB + 1;
				if(temp_sum <= 2**N - 1) then
					SUM_RTL := temp_sum;
					cout_RTL := '0';
				else
					SUM_RTL := temp_sum - 2**N;
					cout_RTL := '1';
				end if;
				wait until rising_edge(clk);
				assert SUM_RTL = to_integer(unsigned(Soma)) report "Erro na Soma (Cin = 1)" severity failure; --fim do teste
				assert Cout = Cout_RTL report "Erro no Carry Out (Cin = 1)" severity failure;
			end loop;
		end loop;

		assert false report "EOT" severity note; --fim do teste
		simulando <= '0';
		wait;
	END process;
END DUT;