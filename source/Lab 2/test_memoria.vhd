library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity test_memoria is end;

architecture dut of test_memoria is
	
	CONSTANT half_period : time := 10 ps;
	CONSTANT M : integer := 6;
	CONSTANT N : integer := 6;
	
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

	signal clk,simulando, reset, p_WWrite, p_readA, p_readB : std_logic := '0';
	signal ad_WAddr, ad_RA, ad_RB, ad_antRA, ad_antRB : std_logic_vector(M-1 downto 0) := (OTHERS => '0');
	signal data_WD, data_QA, data_QB, data_zero : std_logic_vector(N-1 downto 0) := (OTHERS => '0');

BEGIN
	
	clk <= (simulando and not clk) after half_period;
	
	DUT: memoria generic map (N, M) port map (clk, data_WD, p_WWrite, ad_WAddr, reset, ad_RA, p_readA, ad_RB, p_readB, data_QA, data_QB);
	
	st: process is
	variable valWD : integer := 0;
	
	
	BEGIN
		assert false report "BOT" severity note;
		simulando <= '1';									--inicio do teste
		
		reset <= '1';
		wait until rising_edge(clk);
		wait until falling_edge(clk);
		reset <= '0';
		
		FOR I IN 0 TO M-1 LOOP
			wait until falling_edge(clk);
			ad_WAddr <= std_logic_vector(to_unsigned(I,M));
			ad_RA <= std_logic_vector(to_unsigned(I,M));
			ad_RB <= std_logic_vector(to_unsigned(I,M));
			
		-- Teste write sem permissão
			
			p_WWrite <= '0';
			data_zero <= (OTHERS => '0');
			
			data_WD <= (OTHERS => '1');
			wait until rising_edge(clk);
			wait until falling_edge(clk);
			p_readA <= '1';
			p_readB <= '1';
			
			wait until rising_edge(clk);
			assert data_QA = data_zero report "Erro na Escrita sem permissão A" severity failure;
			assert data_QB = data_zero report "Erro na Escrita sem permissão B" severity failure;
			
		-- Teste write com permissão e read com permissão
			wait until falling_edge(clk);
			p_WWrite <= '1';
			
			wait until rising_edge(clk);
			wait until falling_edge(clk);
			p_readA <= '1';
			p_readB <= '1';
			
			wait until rising_edge(clk);
			assert data_QA /= data_zero report "Erro na Escrita e Leitura com permissão A" severity failure;
			assert data_QB /= data_zero report "Erro na Escrita e Leitura com permissão B" severity failure;
			
		-- Teste read sem permissão
			wait until falling_edge(clk);
			p_WWrite <= '0';
			
			p_readA <= '0';
			p_readB <= '0';
			
			wait until rising_edge(clk);
			assert data_QA = data_zero report "Erro na Leitura sem permissão A" severity failure;
			assert data_QB = data_zero report "Erro na Leitura sem permissão B" severity failure;
			
		-- Teste armazenamento da informação
			wait until falling_edge(clk);
			IF (I > 0) THEN
				ad_antRA <= std_logic_vector(to_unsigned(I-1,M));
				ad_antRB <= std_logic_vector(to_unsigned(I-1,M));
				ad_RA <= ad_antRA;
				ad_RB <= ad_antRB;
			END IF;
			
			p_readA <= '1';
			p_readB <= '1';
			
			wait until rising_edge(clk);
			assert data_QA /= data_zero report "Erro no armazenamento A" severity failure;
			assert data_QB /= data_zero report "Erro no armazenamento B" severity failure;
			
		END LOOP;
		
	-- Teste reset = 1
		wait until falling_edge(clk);
			
		reset <= '1';
		wait until rising_edge(clk);
		wait until falling_edge(clk);
		reset <= '0';
		
		p_readA <= '1';
		p_readB <= '1';
		
		FOR I IN 0 TO M-1 LOOP
			wait until falling_edge(clk);
			ad_RA <= std_logic_vector(to_unsigned(I,M));
			ad_RB <= std_logic_vector(to_unsigned(I,M));
			
			wait until rising_edge(clk);
			assert data_QA = data_zero report "Erro no reset A" severity failure;
			assert data_QB = data_zero report "Erro no reset B" severity failure;
		END LOOP;
		
		assert false report "EOT" severity note;
		simulando <= '0';									--fim do teste
		wait;
	END process;
END DUT;