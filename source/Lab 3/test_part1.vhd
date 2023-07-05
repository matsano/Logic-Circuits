library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity test_part1 is end;

architecture dut of test_part1 is

	CONSTANT half_period_50GH : time := 1 ns;
	CONSTANT half_period_20ns : time := 10 ns;
	CONSTANT Tam : integer := 2;
	CONSTANT Tmin : integer := 6;
	CONSTANT Tmax : integer := 10;
	
	COMPONENT lab3_part1 IS
		generic (Tam : integer;
				Tmin : integer;
				Tmax : integer);
		port	(SW : in std_logic_vector (8 DOWNTO 8);
				KEY : in std_logic_vector (0 DOWNTO 0);
				CLOCK_50GH : in std_logic;
				CLOCK_20ns : in std_logic;
				HEX1, HEX2 : out std_logic_vector (0 TO 2));
	END COMPONENT;
	
	signal simulando, CLOCK_50GH, CLOCK_20ns : std_logic := '0';
	signal SW : std_logic_vector (8 DOWNTO 8);
	signal KEY : std_logic_vector (0 DOWNTO 0);
	signal HEX1, HEX2 : std_logic_vector (0 TO 2);

BEGIN
	
	CLOCK_50GH <= (simulando and not CLOCK_50GH) after half_period_50GH;
	CLOCK_20ns <= (simulando and not CLOCK_20ns) after half_period_20ns;
	
	
	DUT: lab3_part1 generic map (Tam, Tmin, Tmax) port map (SW, KEY, CLOCK_50GH, CLOCK_20ns, HEX1, HEX2);
	
	st: process is
	variable HEX1_RTL, HEX2_RTL: std_logic_vector (0 TO 2) := "000";
	
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
			
			SW(8) <= '0';
			
			if (i <= 6) then       -- nao passou o tempo min
				HEX1_RTL := "001";
				HEX2_RTL := "100";
				
				wait until rising_edge(CLOCK_50GH);
				assert HEX1_RTL = HEX1 report "TESTE 0: Erro no HEX1 sem carro na secundaria e nao passou tempo min" severity failure;
				assert HEX2_RTL = HEX2 report "TESTE 0: Erro no HEX2 sem carro na secundaria e nao passou tempo min" severity failure;
				
			elsif (i > 6) then    --passou o tempo min
				HEX1_RTL := "001";
				HEX2_RTL := "100";
				
				wait until rising_edge(CLOCK_50GH);
				assert HEX1_RTL = HEX1 report "TESTE 0: Erro no HEX1 sem carro na secundaria e passou o tempo min" severity failure;
				assert HEX2_RTL = HEX2 report "TESTE 0: Erro no HEX2 sem carro na secundaria e passou o tempo min" severity failure;
			end if;
			wait until falling_edge(CLOCK_20ns);
		end loop;
		
		KEY(0) <= '0';
		wait until rising_edge(CLOCK_50GH);
		wait until falling_edge(CLOCK_50GH);
		KEY(0) <= '1';
		
		-- sempre tem carro na secundaria (TESTE 1)
		FOR I IN 1 TO 22 LOOP
			wait until rising_edge(CLOCK_20ns);
			
			SW(8) <= '1';
			
			if (i <= 6) then       -- nao passou o tempo min
				HEX1_RTL := "001";
				HEX2_RTL := "100";
				
				wait until rising_edge(CLOCK_50GH);
				assert HEX1_RTL = HEX1 report "TESTE 1: Erro no HEX1 com carro na secundaria e nao passou tempo min" severity failure;
				assert HEX2_RTL = HEX2 report "TESTE 1: Erro no HEX2 com carro na secundaria e nao passou tempo min" severity failure;
			
			elsif (i <= 8) then    --sinal amarelo
				HEX1_RTL := "010";
				HEX2_RTL := "100";
				
				wait until rising_edge(CLOCK_50GH);
				assert HEX1_RTL = HEX1 report "TESTE 1: Erro no HEX1 com carro na secundaria e nao passou Tam" severity failure;
				assert HEX2_RTL = HEX2 report "TESTE 1: Erro no HEX2 com carro na secundaria e nao passou Tam" severity failure;
			
			
			elsif (i <= 18) then       -- nao passou o tempo max
				HEX1_RTL := "100";
				HEX2_RTL := "001";
				
				wait until rising_edge(CLOCK_50GH);
				assert HEX1_RTL = HEX1 report "TESTE 1: Erro no HEX1 com carro na secundaria e nao passou tempo max" severity failure;
				assert HEX2_RTL = HEX2 report "TESTE 1: Erro no HEX2 com carro na secundaria e nao passou tempo max" severity failure;
				
			elsif (i <= 20) then    --passou o tempo max e nao passou o Tam
				HEX1_RTL := "100";
				HEX2_RTL := "010";
				
				wait until rising_edge(CLOCK_50GH);
				assert HEX1_RTL = HEX1 report "TESTE 1: Erro no HEX1 com carro na secundaria e secundaria no amarelo" severity failure;
				assert HEX2_RTL = HEX2 report "TESTE 1: Erro no HEX2 com carro na secundaria e secundaria no amarelo" severity failure;
			
			elsif (i = 21) then     --passou o Tam
				HEX1_RTL := "001";
				HEX2_RTL := "100";
				
				wait until rising_edge(CLOCK_50GH);
				assert HEX1_RTL = HEX1 report "TESTE 1: Erro no HEX1 com carro na secundaria e passou tempo Tam" severity failure;
				assert HEX2_RTL = HEX2 report "TESTE 1: Erro no HEX2 com carro na secundaria e passou tempo Tam" severity failure;
			end if;
			wait until falling_edge(CLOCK_20ns);
		end loop;
		
		KEY(0) <= '0';
		wait until rising_edge(CLOCK_50GH);
		wait until falling_edge(CLOCK_50GH);
		KEY(0) <= '1';
		
		-- chegou um carro depois do Tmin (TESTE 2)
		FOR I IN 1 TO 9 LOOP
			
			wait until rising_edge(CLOCK_20ns);
			
			SW(8) <= '0';
			
			if (i <= 6) then       -- nao passou o tempo min
				HEX1_RTL := "001";
				HEX2_RTL := "100";
				
				wait until rising_edge(CLOCK_50GH);
				assert HEX1_RTL = HEX1 report "TESTE 2: Erro no HEX1 sem carro na secundaria e nao passou tempo min" severity failure;
				assert HEX2_RTL = HEX2 report "TESTE 2: Erro no HEX2 sem carro na secundaria e nao passou tempo min" severity failure;
				
			elsif (i > 6) then    --passou o tempo min
				HEX1_RTL := "001";
				HEX2_RTL := "100";
				
				wait until rising_edge(CLOCK_50GH);
				assert HEX1_RTL = HEX1 report "TESTE 2: Erro no HEX1 sem carro na secundaria e passou o tempo min" severity failure;
				assert HEX2_RTL = HEX2 report "TESTE 2: Erro no HEX2 sem carro na secundaria e passou o tempo min" severity failure;
			end if;
			wait until falling_edge(CLOCK_20ns);
		end loop;
		
		FOR I IN 9 TO 16 LOOP
			wait until rising_edge(CLOCK_20ns);
		
			SW(8) <= '1';
			if (i <= 10) then    --sinal amarelo
				HEX1_RTL := "010";
				HEX2_RTL := "100";
				
				wait until falling_edge(CLOCK_50GH);
				wait until rising_edge(CLOCK_50GH);
				assert HEX1_RTL = HEX1 report "TESTE 2: Erro no HEX1 com carro na secundaria e nao passou Tam" severity failure;
				assert HEX2_RTL = HEX2 report "TESTE 2: Erro no HEX2 com carro na secundaria e nao passou Tam" severity failure;
			
			
			else         -- nao passou o tempo max
				HEX1_RTL := "100";
				HEX2_RTL := "001";
				
				wait until falling_edge(CLOCK_50GH);
				wait until rising_edge(CLOCK_50GH);
				assert HEX1_RTL = HEX1 report "TESTE 2: Erro no HEX1 com carro na secundaria e nao passou tempo max" severity failure;
				assert HEX2_RTL = HEX2 report "TESTE 2: Erro no HEX2 com carro na secundaria e nao passou tempo max" severity failure;
			end if;
			wait until falling_edge(CLOCK_20ns);
		end loop;
			
			
		-- nao tem carro na secundaria antes do Tmax (TESTE 3)
		
		FOR I IN 16 TO 20 LOOP
			wait until rising_edge(CLOCK_20ns);
			SW(8) <= '0';
			
			if (I <= 17) then        -- secundaria com sinal amarelo
				HEX1_RTL := "100";
				HEX2_RTL := "010";
				
				wait until falling_edge(CLOCK_50GH);
				wait until rising_edge(CLOCK_50GH);
				assert HEX1_RTL = HEX1 report "TESTE 3: Erro no HEX1 sem carro na secundaria" severity failure;
				assert HEX2_RTL = HEX2 report "TESTE 3: Erro no HEX2 sem carro na secundaria" severity failure;
				
			else                     -- secundaria com sinal vermelho
				HEX1_RTL := "001";
				HEX2_RTL := "100";
				
				wait until falling_edge(CLOCK_50GH);
				wait until rising_edge(CLOCK_50GH);
				assert HEX1_RTL = HEX1 report "TESTE 3: Erro no HEX1 sem carro na secundaria" severity failure;
				assert HEX2_RTL = HEX2 report "TESTE 3: Erro no HEX2 sem carro na secundaria" severity failure;
			end if;
			wait until falling_edge(CLOCK_20ns);
		end loop;

		assert false report "EOT" severity note; --fim do teste
		simulando <= '0';
		wait;
	END process;
END DUT;