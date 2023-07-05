library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity test_part2 is end;

architecture dut of test_part2 is

	CONSTANT half_period_50GH : time := 1 ns;
	CONSTANT half_period_20ns : time := 10 ns;
	CONSTANT Tam : integer := 2;
	CONSTANT Tmin : integer := 6;
	CONSTANT Tmax : integer := 10;
	
	COMPONENT lab3_part2 IS
		generic (Tam : integer;
				Tmin : integer;
				Tmax : integer);
		port	(SW : in std_logic_vector (8 DOWNTO 7);
				KEY : in std_logic_vector (0 DOWNTO 0);
				CLOCK_50GH : in std_logic;
				CLOCK_20ns : in std_logic;
				HEX1, HEX2 : out std_logic_vector (0 TO 2);
				HEX3, HEX4 : out std_logic_vector (0 TO 2)
				);
	END COMPONENT;
	
	signal simulando, CLOCK_50GH, CLOCK_20ns : std_logic := '0';
	signal SW : std_logic_vector (8 DOWNTO 7);
	signal KEY : std_logic_vector (0 DOWNTO 0);
	signal HEX1, HEX2, HEX3, HEX4 : std_logic_vector (0 TO 2);

BEGIN
	
	CLOCK_50GH <= (simulando and not CLOCK_50GH) after half_period_50GH;
	CLOCK_20ns <= (simulando and not CLOCK_20ns) after half_period_20ns;
	
	
	DUT: lab3_part2 generic map (Tam, Tmin, Tmax) port map (SW, KEY, CLOCK_50GH, CLOCK_20ns, HEX1, HEX2, HEX3, HEX4);
	
	st: process is
	variable HEX1_RTL, HEX2_RTL, HEX3_RTL, HEX4_RTL: std_logic_vector (0 TO 2) := "000";
	
	BEGIN
		assert false report "BOT" severity note;
		simulando <= '1';									--inicio do teste
		wait until rising_edge(CLOCK_50GH);
		
		KEY(0) <= '0';
		wait until rising_edge(CLOCK_50GH);
		wait until falling_edge(CLOCK_50GH);
		KEY(0) <= '1';
		
		
		-- nunca tem carro na secundaria (TESTE 0)
		
		FOR I IN 1 TO 10 LOOP
			
			wait until rising_edge(CLOCK_20ns);
			
			SW(7) <= '0';
			SW(8) <= '0';
			
			if (i <= 6) then       -- nao passou o tempo min
				HEX1_RTL := "001";
				HEX2_RTL := "001";
				HEX3_RTL := "100";
				HEX4_RTL := "100";
				
				wait until rising_edge(CLOCK_50GH);
				assert HEX1_RTL = HEX1 report "TESTE 0: Erro no HEX1 sem carro na secundaria e nao passou tempo min" severity failure;
				assert HEX2_RTL = HEX2 report "TESTE 0: Erro no HEX2 sem carro na secundaria e nao passou tempo min" severity failure;
				assert HEX3_RTL = HEX3 report "TESTE 0: Erro no HEX3 sem carro na secundaria e nao passou tempo min" severity failure;
				assert HEX4_RTL = HEX4 report "TESTE 0: Erro no HEX4 sem carro na secundaria e nao passou tempo min" severity failure;
				
			elsif (i > 6) then    --passou o tempo min
				HEX1_RTL := "001";
				HEX2_RTL := "001";
				HEX3_RTL := "100";
				HEX4_RTL := "100";
				
				wait until rising_edge(CLOCK_50GH);
				assert HEX1_RTL = HEX1 report "TESTE 0: Erro no HEX1 sem carro na secundaria e passou tempo min" severity failure;
				assert HEX2_RTL = HEX2 report "TESTE 0: Erro no HEX2 sem carro na secundaria e passou tempo min" severity failure;
				assert HEX3_RTL = HEX3 report "TESTE 0: Erro no HEX3 sem carro na secundaria e passou tempo min" severity failure;
				assert HEX4_RTL = HEX4 report "TESTE 0: Erro no HEX4 sem carro na secundaria e passou tempo min" severity failure;
			end if;
			wait until falling_edge(CLOCK_20ns);
		end loop;
		
		KEY(0) <= '0';
		wait until rising_edge(CLOCK_50GH);
		wait until falling_edge(CLOCK_50GH);
		KEY(0) <= '1';
		
		
		-- sempre tem carro na secundaria esquerda (TESTE 1)
		FOR I IN 1 TO 22 LOOP
			wait until rising_edge(CLOCK_20ns);
			
			SW(7) <= '1';
			
			if (i <= 6) then       -- nao passou o tempo min
				HEX1_RTL := "001";
				HEX2_RTL := "001";
				HEX3_RTL := "100";
				HEX4_RTL := "100";
				
				wait until rising_edge(CLOCK_50GH);
				assert HEX1_RTL = HEX1 report "TESTE 1: Erro no HEX1 com carro na secundaria esquerda e nao passou tempo min" severity failure;
				assert HEX2_RTL = HEX2 report "TESTE 1: Erro no HEX2 com carro na secundaria esquerda e nao passou tempo min" severity failure;
				assert HEX3_RTL = HEX3 report "TESTE 1: Erro no HEX3 com carro na secundaria esquerda e nao passou tempo min" severity failure;
				assert HEX4_RTL = HEX4 report "TESTE 1: Erro no HEX4 com carro na secundaria esquerda e nao passou tempo min" severity failure;
			
			elsif (i <= 8) then    --sinal amarelo
				HEX1_RTL := "010";
				HEX2_RTL := "010";
				HEX3_RTL := "100";
				HEX4_RTL := "100";
				
				wait until rising_edge(CLOCK_50GH);
				assert HEX1_RTL = HEX1 report "TESTE 1: Erro no HEX1 com carro na secundaria esquerda e nao passou Tam" severity failure;
				assert HEX2_RTL = HEX2 report "TESTE 1: Erro no HEX2 com carro na secundaria esquerda e nao passou Tam" severity failure;
				assert HEX3_RTL = HEX3 report "TESTE 1: Erro no HEX3 com carro na secundaria esquerda e nao passou Tam" severity failure;
				assert HEX4_RTL = HEX4 report "TESTE 1: Erro no HEX4 com carro na secundaria esquerda e nao passou Tam" severity failure;
			
			elsif (i <= 18) then       -- nao passou o tempo max
				HEX1_RTL := "100";
				HEX2_RTL := "100";
				HEX3_RTL := "001";
				HEX4_RTL := "001";
				
				wait until rising_edge(CLOCK_50GH);
				assert HEX1_RTL = HEX1 report "TESTE 1: Erro no HEX1 com carro na secundaria esquerda e nao passou tempo max" severity failure;
				assert HEX2_RTL = HEX2 report "TESTE 1: Erro no HEX2 com carro na secundaria esquerda e nao passou tempo max" severity failure;
				assert HEX3_RTL = HEX3 report "TESTE 1: Erro no HEX3 com carro na secundaria esquerda e nao passou tempo max" severity failure;
				assert HEX4_RTL = HEX4 report "TESTE 1: Erro no HEX4 com carro na secundaria esquerda e nao passou tempo max" severity failure;
				
			elsif (i <= 20) then    --passou o tempo max e nao passou o Tam
				HEX1_RTL := "100";
				HEX2_RTL := "100";
				HEX3_RTL := "010";
				HEX4_RTL := "010";
				
				wait until rising_edge(CLOCK_50GH);
				assert HEX1_RTL = HEX1 report "TESTE 1: Erro no HEX1 com carro na secundaria esquerda e secundaria no amarelo" severity failure;
				assert HEX2_RTL = HEX2 report "TESTE 1: Erro no HEX2 com carro na secundaria esquerda e secundaria no amarelo" severity failure;
				assert HEX3_RTL = HEX3 report "TESTE 1: Erro no HEX3 com carro na secundaria esquerda e secundaria no amarelo" severity failure;
				assert HEX4_RTL = HEX4 report "TESTE 1: Erro no HEX4 com carro na secundaria esquerda e secundaria no amarelo" severity failure;
			
			elsif (i = 21) then     --passou o Tam
				HEX1_RTL := "001";
				HEX2_RTL := "001";
				HEX3_RTL := "100";
				HEX4_RTL := "100";
				
				wait until rising_edge(CLOCK_50GH);
				assert HEX1_RTL = HEX1 report "TESTE 1: Erro no HEX1 com carro na secundaria esquerda e passou tempo Tam" severity failure;
				assert HEX2_RTL = HEX2 report "TESTE 1: Erro no HEX2 com carro na secundaria esquerda e passou tempo Tam" severity failure;
				assert HEX3_RTL = HEX3 report "TESTE 1: Erro no HEX3 com carro na secundaria esquerda e passou tempo Tam" severity failure;
				assert HEX4_RTL = HEX4 report "TESTE 1: Erro no HEX4 com carro na secundaria esquerda e passou tempo Tam" severity failure;
				
			end if;
			wait until falling_edge(CLOCK_20ns);
		end loop;
		
		KEY(0) <= '0';
		wait until rising_edge(CLOCK_50GH);
		wait until falling_edge(CLOCK_50GH);
		KEY(0) <= '1';
		
		
		-- sempre tem carro na secundaria direita (TESTE 2)
		FOR I IN 1 TO 22 LOOP
			wait until rising_edge(CLOCK_20ns);
			
			SW(7) <= '0';
			SW(8) <= '1';
			
			if (i <= 6) then       -- nao passou o tempo min
				HEX1_RTL := "001";
				HEX2_RTL := "001";
				HEX3_RTL := "100";
				HEX4_RTL := "100";
				
				wait until rising_edge(CLOCK_50GH);
				assert HEX1_RTL = HEX1 report "TESTE 2: Erro no HEX1 com carro na secundaria direita e nao passou tempo min" severity failure;
				assert HEX2_RTL = HEX2 report "TESTE 2: Erro no HEX2 com carro na secundaria direita e nao passou tempo min" severity failure;
				assert HEX3_RTL = HEX3 report "TESTE 2: Erro no HEX3 com carro na secundaria direita e nao passou tempo min" severity failure;
				assert HEX4_RTL = HEX4 report "TESTE 2: Erro no HEX4 com carro na secundaria direita e nao passou tempo min" severity failure;
			
			elsif (i <= 8) then    --sinal amarelo
				HEX1_RTL := "001";
				HEX2_RTL := "010";
				HEX3_RTL := "100";
				HEX4_RTL := "100";
				
				wait until rising_edge(CLOCK_50GH);
				assert HEX1_RTL = HEX1 report "TESTE 2: Erro no HEX1 com carro na secundaria direita e nao passou Tam" severity failure;
				assert HEX2_RTL = HEX2 report "TESTE 2: Erro no HEX2 com carro na secundaria direita e nao passou Tam" severity failure;
				assert HEX3_RTL = HEX3 report "TESTE 2: Erro no HEX3 com carro na secundaria direita e nao passou Tam" severity failure;
				assert HEX4_RTL = HEX4 report "TESTE 2: Erro no HEX4 com carro na secundaria direita e nao passou Tam" severity failure;
			
			elsif (i <= 18) then       -- nao passou o tempo max
				HEX1_RTL := "001";
				HEX2_RTL := "100";
				HEX3_RTL := "100";
				HEX4_RTL := "001";
				
				wait until rising_edge(CLOCK_50GH);
				assert HEX1_RTL = HEX1 report "TESTE 2: Erro no HEX1 com carro na secundaria direita e nao passou tempo max" severity failure;
				assert HEX2_RTL = HEX2 report "TESTE 2: Erro no HEX2 com carro na secundaria direita e nao passou tempo max" severity failure;
				assert HEX3_RTL = HEX3 report "TESTE 2: Erro no HEX3 com carro na secundaria direita e nao passou tempo max" severity failure;
				assert HEX4_RTL = HEX4 report "TESTE 2: Erro no HEX4 com carro na secundaria direita e nao passou tempo max" severity failure;
				
			elsif (i <= 20) then    --passou o tempo max e nao passou o Tam
				HEX1_RTL := "001";
				HEX2_RTL := "100";
				HEX3_RTL := "100";
				HEX4_RTL := "010";
				
				wait until rising_edge(CLOCK_50GH);
				assert HEX1_RTL = HEX1 report "TESTE 2: Erro no HEX1 com carro na secundaria direita e secundaria no amarelo" severity failure;
				assert HEX2_RTL = HEX2 report "TESTE 2: Erro no HEX2 com carro na secundaria direita e secundaria no amarelo" severity failure;
				assert HEX3_RTL = HEX3 report "TESTE 2: Erro no HEX3 com carro na secundaria direita e secundaria no amarelo" severity failure;
				assert HEX4_RTL = HEX4 report "TESTE 2: Erro no HEX4 com carro na secundaria direita e secundaria no amarelo" severity failure;
			
			elsif (i = 21) then     --passou o Tam
				HEX1_RTL := "001";
				HEX2_RTL := "001";
				HEX3_RTL := "100";
				HEX4_RTL := "100";
				
				wait until rising_edge(CLOCK_50GH);
				assert HEX1_RTL = HEX1 report "TESTE 2: Erro no HEX1 com carro na secundaria direita e passou tempo Tam" severity failure;
				assert HEX2_RTL = HEX2 report "TESTE 2: Erro no HEX2 com carro na secundaria direita e passou tempo Tam" severity failure;
				assert HEX3_RTL = HEX3 report "TESTE 2: Erro no HEX3 com carro na secundaria direita e passou tempo Tam" severity failure;
				assert HEX4_RTL = HEX4 report "TESTE 2: Erro no HEX4 com carro na secundaria direita e passou tempo Tam" severity failure;
				
			end if;
			wait until falling_edge(CLOCK_20ns);
		end loop;
		
		KEY(0) <= '0';
		wait until rising_edge(CLOCK_50GH);
		wait until falling_edge(CLOCK_50GH);
		KEY(0) <= '1';
		
		
		-- chegou um carro na esquerda depois do Tmin e antes Tmax não passa mais carro na esquerda, mas passa na direita (TESTE 3)
		FOR I IN 1 TO 9 LOOP
			
			wait until rising_edge(CLOCK_20ns);
			
			SW(7) <= '0';
			SW(8) <= '0';
			
			if (i <= 6) then       -- nao passou o tempo min
				HEX1_RTL := "001";
				HEX2_RTL := "001";
				HEX3_RTL := "100";
				HEX4_RTL := "100";
				
				wait until rising_edge(CLOCK_50GH);
				assert HEX1_RTL = HEX1 report "TESTE 3: Erro no HEX1 sem carro na secundaria e nao passou tempo min" severity failure;
				assert HEX2_RTL = HEX2 report "TESTE 3: Erro no HEX2 sem carro na secundaria e nao passou tempo min" severity failure;
				assert HEX3_RTL = HEX3 report "TESTE 3: Erro no HEX3 sem carro na secundaria e nao passou tempo min" severity failure;
				assert HEX4_RTL = HEX4 report "TESTE 3: Erro no HEX4 sem carro na secundaria e nao passou tempo min" severity failure;
				
			elsif (i > 6) then    --passou o tempo min
				HEX1_RTL := "001";
				HEX2_RTL := "001";
				HEX3_RTL := "100";
				HEX4_RTL := "100";
				
				wait until rising_edge(CLOCK_50GH);
				assert HEX1_RTL = HEX1 report "TESTE 3: Erro no HEX1 sem carro na secundaria e passou o tempo min" severity failure;
				assert HEX2_RTL = HEX2 report "TESTE 3: Erro no HEX2 sem carro na secundaria e passou o tempo min" severity failure;
				assert HEX3_RTL = HEX3 report "TESTE 3: Erro no HEX3 sem carro na secundaria e passou o tempo min" severity failure;
				assert HEX4_RTL = HEX4 report "TESTE 3: Erro no HEX4 sem carro na secundaria e passou o tempo min" severity failure;
			end if;
			wait until falling_edge(CLOCK_20ns);
		end loop;
		
		FOR I IN 9 TO 14 LOOP
			wait until rising_edge(CLOCK_20ns);
		
			SW(7) <= '1';        --chega um carro na secundaria esquerda
			SW(8) <= '0';
			
			if (i <= 10) then    --sinal amarelo
				HEX1_RTL := "010";
				HEX2_RTL := "010";
				HEX3_RTL := "100";
				HEX4_RTL := "100";
				
				wait until falling_edge(CLOCK_50GH);
				wait until rising_edge(CLOCK_50GH);
				assert HEX1_RTL = HEX1 report "TESTE 3: Erro no HEX1 com carro na secundaria esquerda e nao passou Tam" severity failure;
				assert HEX2_RTL = HEX2 report "TESTE 3: Erro no HEX2 com carro na secundaria esquerda e nao passou Tam" severity failure;
				assert HEX3_RTL = HEX3 report "TESTE 3: Erro no HEX3 com carro na secundaria esquerda e nao passou Tam" severity failure;
				assert HEX4_RTL = HEX4 report "TESTE 3: Erro no HEX4 com carro na secundaria esquerda e nao passou Tam" severity failure;
			
			else       -- nao passou o tempo max
				HEX1_RTL := "100";
				HEX2_RTL := "100";
				HEX3_RTL := "001";
				HEX4_RTL := "001";
				
				wait until falling_edge(CLOCK_50GH);
				wait until rising_edge(CLOCK_50GH);
				assert HEX1_RTL = HEX1 report "TESTE 3: Erro no HEX1 com carro na secundaria esquerda e nao passou tempo max" severity failure;
				assert HEX2_RTL = HEX2 report "TESTE 3: Erro no HEX2 com carro na secundaria esquerda e nao passou tempo max" severity failure;
				assert HEX3_RTL = HEX3 report "TESTE 3: Erro no HEX3 com carro na secundaria esquerda e nao passou tempo max" severity failure;
				assert HEX4_RTL = HEX4 report "TESTE 3: Erro no HEX4 com carro na secundaria esquerda e nao passou tempo max" severity failure;
			end if;
			wait until falling_edge(CLOCK_20ns);
		end loop;
		
		FOR I IN 14 TO 18 LOOP
			wait until rising_edge(CLOCK_20ns);
			
			if (i <= 14) then        -- para de chegar carro na secundaria esquerda e começa a ter carro na secundaria direita, e mantem contando Tmax
				SW(7) <= '1';
				SW(8) <= '1';
			else
				SW(7) <= '0';
				SW(8) <= '1';
			end if;
			
			
			if (i <= 17) then
				HEX1_RTL := "100";
				HEX2_RTL := "100";
				HEX3_RTL := "001";
				HEX4_RTL := "001";
				
				wait until falling_edge(CLOCK_50GH);
				wait until rising_edge(CLOCK_50GH);
				assert HEX1_RTL = HEX1 report "TESTE 3: Erro no HEX1 com carro na secundaria direita e nao passou Tam" severity failure;
				assert HEX2_RTL = HEX2 report "TESTE 3: Erro no HEX2 com carro na secundaria direita e nao passou Tam" severity failure;
				assert HEX3_RTL = HEX3 report "TESTE 3: Erro no HEX3 com carro na secundaria direita e nao passou Tam" severity failure;
				assert HEX4_RTL = HEX4 report "TESTE 3: Erro no HEX4 com carro na secundaria direita e nao passou Tam" severity failure;
			end if;
			wait until falling_edge(CLOCK_20ns);
		end loop;
		
		FOR I IN 18 TO 21 LOOP
			wait until rising_edge(CLOCK_20ns);
		
			SW(7) <= '0';      --nao passa mais carros nas secundarias
			SW(8) <= '0';
			
			if (i <= 19) then    --sinal amarelo
				HEX1_RTL := "100";
				HEX2_RTL := "100";
				HEX3_RTL := "010";
				HEX4_RTL := "010";
				
				wait until falling_edge(CLOCK_50GH);
				wait until rising_edge(CLOCK_50GH);
				assert HEX1_RTL = HEX1 report "TESTE 3: Erro no HEX1 sem carro na secundaria e nao passou Tam" severity failure;
				assert HEX2_RTL = HEX2 report "TESTE 3: Erro no HEX2 sem carro na secundaria e nao passou Tam" severity failure;
				assert HEX3_RTL = HEX3 report "TESTE 3: Erro no HEX3 sem carro na secundaria e nao passou Tam" severity failure;
				assert HEX4_RTL = HEX4 report "TESTE 3: Erro no HEX4 sem carro na secundaria e nao passou Tam" severity failure;
			
			else       -- secundarias fechadas
				HEX1_RTL := "001";
				HEX2_RTL := "001";
				HEX3_RTL := "100";
				HEX4_RTL := "100";
				
				wait until falling_edge(CLOCK_50GH);
				wait until rising_edge(CLOCK_50GH);
				assert HEX1_RTL = HEX1 report "TESTE 3: Erro no HEX1 sem carro na secundaria e nao passou tempo max" severity failure;
				assert HEX2_RTL = HEX2 report "TESTE 3: Erro no HEX2 sem carro na secundaria e nao passou tempo max" severity failure;
				assert HEX3_RTL = HEX3 report "TESTE 3: Erro no HEX3 sem carro na secundaria e nao passou tempo max" severity failure;
				assert HEX4_RTL = HEX4 report "TESTE 3: Erro no HEX4 sem carro na secundaria e nao passou tempo max" severity failure;
			end if;
			wait until falling_edge(CLOCK_20ns);
		end loop;
		
		KEY(0) <= '0';
		wait until rising_edge(CLOCK_50GH);
		wait until falling_edge(CLOCK_50GH);
		KEY(0) <= '1';
			
		-- abre na direita secundaria e chega um carro na secundaria esquerda depois de 1 clock (TESTE 4)
		FOR I IN 1 TO 10 LOOP
			wait until rising_edge(CLOCK_20ns);
			
			SW(7) <= '0';
			SW(8) <= '1';
			
			if (i <= 6) then       -- nao passou o tempo min
				HEX1_RTL := "001";
				HEX2_RTL := "001";
				HEX3_RTL := "100";
				HEX4_RTL := "100";
				
				wait until rising_edge(CLOCK_50GH);
				assert HEX1_RTL = HEX1 report "TESTE 4: Erro no HEX1 com carro na secundaria direita e nao passou tempo min" severity failure;
				assert HEX2_RTL = HEX2 report "TESTE 4: Erro no HEX2 com carro na secundaria direita e nao passou tempo min" severity failure;
				assert HEX3_RTL = HEX3 report "TESTE 4: Erro no HEX3 com carro na secundaria direita e nao passou tempo min" severity failure;
				assert HEX4_RTL = HEX4 report "TESTE 4: Erro no HEX4 com carro na secundaria direita e nao passou tempo min" severity failure;
			
			elsif (i <= 8) then    --sinal amarelo
				HEX1_RTL := "001";
				HEX2_RTL := "010";
				HEX3_RTL := "100";
				HEX4_RTL := "100";
				
				wait until rising_edge(CLOCK_50GH);
				assert HEX1_RTL = HEX1 report "TESTE 4: Erro no HEX1 com carro na secundaria direita e nao passou Tam" severity failure;
				assert HEX2_RTL = HEX2 report "TESTE 4: Erro no HEX2 com carro na secundaria direita e nao passou Tam" severity failure;
				assert HEX3_RTL = HEX3 report "TESTE 4: Erro no HEX3 com carro na secundaria direita e nao passou Tam" severity failure;
				assert HEX4_RTL = HEX4 report "TESTE 4: Erro no HEX4 com carro na secundaria direita e nao passou Tam" severity failure;
			
			elsif (i <= 9) then       -- nao passou o tempo max
				HEX1_RTL := "001";
				HEX2_RTL := "100";
				HEX3_RTL := "100";
				HEX4_RTL := "001";
				
				wait until rising_edge(CLOCK_50GH);
				assert HEX1_RTL = HEX1 report "TESTE 4: Erro no HEX1 com carro na secundaria direita e nao passou tempo max" severity failure;
				assert HEX2_RTL = HEX2 report "TESTE 4: Erro no HEX2 com carro na secundaria direita e nao passou tempo max" severity failure;
				assert HEX3_RTL = HEX3 report "TESTE 4: Erro no HEX3 com carro na secundaria direita e nao passou tempo max" severity failure;
				assert HEX4_RTL = HEX4 report "TESTE 4: Erro no HEX4 com carro na secundaria direita e nao passou tempo max" severity failure;
			end if;
			wait until falling_edge(CLOCK_20ns);
		end loop;
		
		FOR I IN 10 TO 42 LOOP
			wait until rising_edge(CLOCK_20ns);
			
			SW(7) <= '1';            -- depois de 1 clock, chega um carro na secundaria esquerda
			SW(8) <= '1';
			
			if (i <= 17) then    -- até o tempo max
				HEX1_RTL := "001";
				HEX2_RTL := "100";
				HEX3_RTL := "100";
				HEX4_RTL := "001";
				
				wait until rising_edge(CLOCK_50GH);
				assert HEX1_RTL = HEX1 report "TESTE 4: Erro no HEX1 com carro nas secundarias e secundaria no amarelo" severity failure;
				assert HEX2_RTL = HEX2 report "TESTE 4: Erro no HEX2 com carro nas secundarias e secundaria no amarelo" severity failure;
				assert HEX3_RTL = HEX3 report "TESTE 4: Erro no HEX3 com carro nas secundarias e secundaria no amarelo" severity failure;
				assert HEX4_RTL = HEX4 report "TESTE 4: Erro no HEX4 com carro nas secundarias e secundaria no amarelo" severity failure;
			
			elsif (i <= 19) then     -- sinal amarelo
				HEX1_RTL := "001";
				HEX2_RTL := "100";
				HEX3_RTL := "100";
				HEX4_RTL := "010";
				
				wait until rising_edge(CLOCK_50GH);
				assert HEX1_RTL = HEX1 report "TESTE 4: Erro no HEX1 com carro nas secundarias e passou tempo Tam" severity failure;
				assert HEX2_RTL = HEX2 report "TESTE 4: Erro no HEX2 com carro nas secundarias e passou tempo Tam" severity failure;
				assert HEX3_RTL = HEX3 report "TESTE 4: Erro no HEX3 com carro nas secundarias e passou tempo Tam" severity failure;
				assert HEX4_RTL = HEX4 report "TESTE 4: Erro no HEX4 com carro nas secundarias e passou tempo Tam" severity failure;
			
			elsif (i <= 25) then	-- secundarias fechadas e terminando Tmin
				HEX1_RTL := "001";
				HEX2_RTL := "001";
				HEX3_RTL := "100";
				HEX4_RTL := "100";
				
				wait until rising_edge(CLOCK_50GH);
				assert HEX1_RTL = HEX1 report "TESTE 4: Erro no HEX1 com carro nas secundarias e passou tempo Tam" severity failure;
				assert HEX2_RTL = HEX2 report "TESTE 4: Erro no HEX2 com carro nas secundarias e passou tempo Tam" severity failure;
				assert HEX3_RTL = HEX3 report "TESTE 4: Erro no HEX3 com carro nas secundarias e passou tempo Tam" severity failure;
				assert HEX4_RTL = HEX4 report "TESTE 4: Erro no HEX4 com carro nas secundarias e passou tempo Tam" severity failure;
			
			elsif (i <= 27) then    --sinal amarelo
				HEX1_RTL := "010";
				HEX2_RTL := "010";
				HEX3_RTL := "100";
				HEX4_RTL := "100";
				
				wait until rising_edge(CLOCK_50GH);
				assert HEX1_RTL = HEX1 report "TESTE 4: Erro no HEX1 com carro nas secundarias e nao passou Tam" severity failure;
				assert HEX2_RTL = HEX2 report "TESTE 4: Erro no HEX2 com carro nas secundarias e nao passou Tam" severity failure;
				assert HEX3_RTL = HEX3 report "TESTE 4: Erro no HEX3 com carro nas secundarias e nao passou Tam" severity failure;
				assert HEX4_RTL = HEX4 report "TESTE 4: Erro no HEX4 com carro nas secundarias e nao passou Tam" severity failure;
			
			elsif (i <= 37) then       -- nao passou o tempo max
				HEX1_RTL := "100";
				HEX2_RTL := "100";
				HEX3_RTL := "001";
				HEX4_RTL := "001";
				
				wait until rising_edge(CLOCK_50GH);
				assert HEX1_RTL = HEX1 report "TESTE 4: Erro no HEX1 com carro nas secundarias e nao passou tempo max" severity failure;
				assert HEX2_RTL = HEX2 report "TESTE 4: Erro no HEX2 com carro nas secundarias e nao passou tempo max" severity failure;
				assert HEX3_RTL = HEX3 report "TESTE 4: Erro no HEX3 com carro nas secundarias e nao passou tempo max" severity failure;
				assert HEX4_RTL = HEX4 report "TESTE 4: Erro no HEX4 com carro nas secundarias e nao passou tempo max" severity failure;
				
			elsif (i <= 39) then    --passou o tempo max e nao passou o Tam
				HEX1_RTL := "100";
				HEX2_RTL := "100";
				HEX3_RTL := "010";
				HEX4_RTL := "010";
				
				wait until rising_edge(CLOCK_50GH);
				assert HEX1_RTL = HEX1 report "TESTE 4: Erro no HEX1 com carro nas secundarias e secundaria no amarelo" severity failure;
				assert HEX2_RTL = HEX2 report "TESTE 4: Erro no HEX2 com carro nas secundariasa e secundaria no amarelo" severity failure;
				assert HEX3_RTL = HEX3 report "TESTE 4: Erro no HEX3 com carro nas secundarias e secundaria no amarelo" severity failure;
				assert HEX4_RTL = HEX4 report "TESTE 4: Erro no HEX4 com carro nas secundarias e secundaria no amarelo" severity failure;
			
			elsif (i <= 41) then     --passou o Tam
				HEX1_RTL := "001";
				HEX2_RTL := "001";
				HEX3_RTL := "100";
				HEX4_RTL := "100";
				
				wait until rising_edge(CLOCK_50GH);
				assert HEX1_RTL = HEX1 report "TESTE 4: Erro no HEX1 com carro nas secundarias e passou tempo Tam" severity failure;
				assert HEX2_RTL = HEX2 report "TESTE 4: Erro no HEX2 com carro nas secundarias e passou tempo Tam" severity failure;
				assert HEX3_RTL = HEX3 report "TESTE 4: Erro no HEX3 com carro nas secundarias e passou tempo Tam" severity failure;
				assert HEX4_RTL = HEX4 report "TESTE 4: Erro no HEX4 com carro nas secundarias e passou tempo Tam" severity failure;
				
			end if;
			wait until falling_edge(CLOCK_20ns);
		end loop;
		

		assert false report "EOT" severity note; --fim do teste
		simulando <= '0';
		wait;
	END process;
END DUT;