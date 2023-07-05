library ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity test_memoria is end;

architecture dut of test_memoria is

	CONSTANT half_period : time := 10 ps;

	COMPONENT ramlpm IS
		PORT (
			address	: IN STD_LOGIC_VECTOR(4 downto 0);
			clock		: IN STD_LOGIC;
			data		: IN STD_LOGIC_VECTOR(7 downto 0);
			wren		: IN STD_LOGIC;
			q			: OUT STD_LOGIC_VECTOR(7 downto 0)
		);
	END COMPONENT;

	signal clk, simulando : STD_LOGIC := '0';
	signal wren : STD_LOGIC := '0';
	signal address	: STD_LOGIC_VECTOR(4 downto 0);
	signal data, q		: STD_LOGIC_VECTOR(7 downto 0);
	
	
BEGIN
	clk <= (simulando and not clk) after half_period;

	DUT: ramlpm port map (address, clk, data, wren, q);
	
	st: process is
	variable Q_RTL : integer := 0;
	
	BEGIN
		assert false report "BOT" severity note;  --inicio do teste
		simulando <= '1';								-- simulacao começou
      wait until rising_edge(clk);
		
		
		-- TESTE LEITURA
		
		wren <= '0';
		
		FOR I IN 0 TO 31 LOOP
			wait until falling_edge(clk);
			
			address <= std_logic_vector(to_unsigned(I,5));
			Q_RTL := I;
			
			wait until rising_edge(clk);
			wait until falling_edge(clk);
			
			wait until rising_edge(clk);
			assert Q_RTL = to_integer(signed(q)) report "Erro na leitura" severity failure;
		
		END LOOP;
		
		
		-- TESTE ESCRITA
		
		wait until rising_edge(clk);
		
		wren <= '1';
		
		wait until falling_edge(clk);
		
		FOR I IN 0 TO 31 LOOP
			wait until falling_edge(clk);
		
			address <= std_logic_vector(to_unsigned(I,5));
			data <= std_logic_vector(to_unsigned(31-I,8));
			Q_RTL := 31-I;
			
			wait until rising_edge(clk);
			wait until falling_edge(clk);
			
			wait until rising_edge(clk);
			assert Q_RTL = to_integer(signed(q)) report "Erro na escrita" severity failure;
		
		END LOOP;
		
		
		assert false report "EOT" severity note; --fim do teste
		simulando <= '0';	--simulação parou
		wait;
	END process;
END DUT;