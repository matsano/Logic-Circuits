library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity processador is
	port (clk, run, reset : in std_logic;
			Din: in std_logic_vector(5 downto 0);
			Done: buffer std_logic); 
end processador;

architecture behaviour of processador is

	component registrador1bit is 
		port( Clk, Rst, D, enable: in std_logic;
		   Q: out std_logic);
	end component registrador1bit;

	component registrador6bits is 
		port( Clk, Rst, enable: in std_logic;
			D: in std_logic_vector(5 downto 0);
		   Q: out std_logic_vector(5 downto 0));
	end component registrador6bits;
	
	component mult2 is 
		port( sel: in std_logic;
			entradas: in std_logic_vector(1 downto 0);
		   saida: out std_logic);
	end component mult2;
	
	component mult6 is 
		port( sel: in std_logic_vector(2 downto 0);
			entradas: in std_logic_vector(5 downto 0);
		   saida: out std_logic);
	end component mult6;	
	
	signal IRin, R0in, R0out, R1in, R1out, R2in, R2out, R3in, R3out, Ain, Aout, Gin, Gout: std_logic;
	signal IRout: std_logic_vector(5 downto 0); 
	signal multiplexsel: std_logic_vector(2 downto 0);
	signal multiplexin:std_logic_vector(5 downto 0);
	signal multiplexout: std_logic;
	signal multsel: std_logic;
	signal multin: std_logic_vector(1 downto 0);
	signal multout: std_logic;
	type Estados is(T0, T1, T2, T3);
	signal estado_atual, estado_futuro: Estados;
	
begin	
	multiplexin(5) <= Gout;
	multiplexin(4) <= not Aout;
	multiplexin(3) <= R3out;
	multiplexin(2) <= R2out;
	multiplexin(1) <= R1out;
	multiplexin(0) <= R0out;

	multin(1) <= Aout and multiplexout;
	multin(0) <= Aout or multiplexout;

	
	IR: registrador6bits port map (clk, reset, IRin, Din, IRout);
	R0: registrador1bit port map (clk, reset, multiplexout, R0in, R0out);
	R1: registrador1bit port map (clk, reset, multiplexout, R1in, R1out);
	R2: registrador1bit port map (clk, reset, multiplexout, R2in, R2out);
	R3: registrador1bit port map (clk, reset, multiplexout, R3in, R3out);
	A: registrador1bit port map (clk, reset, multiplexout, Ain, Aout);
	G: registrador1bit port map (clk, reset, multout, Gin, Gout);
	multiplex: mult6 port map (multiplexsel, multiplexin, multiplexout);
	mult: mult2 port map (multsel, multin, multout);
	
	
	process(clk,reset, estado_futuro)
	begin
		if (reset = '1') then
			estado_atual <= T0;
		elsif(rising_edge(clk)) then
			estado_atual <= estado_futuro;
		end if;
	end process;
	
	process(estado_atual, run, Done)
	begin
		case estado_atual is
			when t0 =>
				if (run = '0') then 
					estado_futuro <= T0;
				else 
					estado_futuro <= T1;
				end if;
			when t1 =>
				if (Done = '1') then 
					estado_futuro <= T0;
				else 
					estado_futuro <= T2;
				end if;
			when t2 =>
				if (Done = '1') then 
					estado_futuro <= T0;
				else 
					estado_futuro <= T3;
				end if;
			when t3 =>
				estado_futuro <= T0;
		end case;
	end process;
	
	process(estado_atual, IRout, Done)
	begin
		Done <= '0';
		multsel <= '0';
		multiplexsel <= "000";
		IRin <= '0';
		R0in <= '0';
		--R0out <= '0';
		R1in <= '0';
		--R1out <= '0';
		R2in <= '0';
		--R2out <= '0';
		R3in <= '0';
		--R3out <= '0';
		Ain <= '0';
		--Aout <= '0';
		Gin <= '0';
		--Gout <= '0';

		case estado_atual is
			when t0 =>
				IRin <= '1';
			when t1 =>
				if(IRout(5) = '0' and IRout(4)= '0') then --I=00 (mov)
					if (IRout(3) = '0' and IRout(2)= '0') then --Rx=R0
						R0in <= '1';
					elsif (IRout(3) = '0' and IRout(2)= '1') then --Rx=R1
						R1in <= '1';
					elsif (IRout(3) = '1' and IRout(2)= '0') then --Rx=R2
						R2in <= '1';
					elsif (IRout(3) = '1' and IRout(2)= '1') then --Rx=R3
						R3in <= '1';
					end if;
					if (IRout(1) = '0' and IRout(0)= '0') then -- Ry=R0 
						multiplexsel <= "000";
					elsif (IRout(1) = '0' and IRout(0)= '1') then -- Ry=R1 
						multiplexsel <= "001";
					elsif (IRout(1) = '1' and IRout(0)= '0') then -- Ry=R2 
						multiplexsel <= "010";
					elsif (IRout(1) = '1' and IRout(0)= '1') then -- Ry=R3 
						multiplexsel <= "011";
					end if;
					Done <= '1';
				end if;
				
				if(IRout(5) = '0' and IRout(4)= '1') then --I=01 (not)
					if (IRout(3) = '0' and IRout(2)= '0') then -- Rx=R0 
						multiplexsel <= "000";
					elsif (IRout(3) = '0' and IRout(2)= '1') then -- Rx=R1 
						multiplexsel <= "001";
					elsif (IRout(3) = '1' and IRout(2)= '0') then -- Rx=R2 
						multiplexsel <= "010";
					elsif (IRout(3) = '1' and IRout(2)= '1') then -- Rx=R3 
						multiplexsel <= "011";
					end if;
					Ain <= '1';
				end if;
				
				if((IRout(5) = '1' and IRout(4)= '0') or (IRout(5) = '1' and IRout(4)= '1') ) then --I=10 (and) ou I= 11(or)
					if (IRout(1) = '0' and IRout(0)= '0') then -- Ry=R0 
						multiplexsel <= "000";
					elsif (IRout(1) = '0' and IRout(0)= '1') then -- Ry=R1 
						multiplexsel <= "001";
					elsif (IRout(1) = '1' and IRout(0)= '0') then -- Ry=R2 
						multiplexsel <= "010";
					elsif (IRout(1) = '1' and IRout(0)= '1') then -- Ry=R3 
						multiplexsel <= "011";
					end if;
					Ain <= '1';
				end if;

			when t2 =>
				if(IRout(5) = '0' and IRout(4)= '1') then --I=01 (not)
					multiplexsel <= "100"; 
					if (IRout(3) = '0' and IRout(2)= '0') then --Rx=R0
						R0in <= '1';
					elsif (IRout(3) = '0' and IRout(2)= '1') then --Rx=R1
						R1in <= '1';
					elsif (IRout(3) = '1' and IRout(2)= '0') then --Rx=R2
						R2in <= '1';
					elsif (IRout(3) = '1' and IRout(2)= '1') then --Rx=R3
						R3in <= '1';
					end if;
					Done <= '1';
				end if;
				
				if((IRout(5) = '1' and IRout(4)= '0') or (IRout(5) = '1' and IRout(4)= '1') ) then --I=10 (and) ou I= 11(or)
					if (IRout(3) = '0' and IRout(2)= '0') then -- Rx=R0 
						multiplexsel <= "000";
					elsif (IRout(3) = '0' and IRout(2)= '1') then -- Rx=R1 
						multiplexsel <= "001";
					elsif (IRout(3) = '1' and IRout(2)= '0') then -- Rx=R2 
						multiplexsel <= "010";
					elsif (IRout(3) = '1' and IRout(2)= '1') then -- Rx=R3 
						multiplexsel <= "011";
					end if;
					Gin <= '1';
					if (IRout(5) = '1' and IRout(4)= '0') then -- I=10 and
						multsel <= '1';
					elsif (IRout(5) = '1' and IRout(4)= '1') then -- I=11 or
						multsel <= '0';
					end if;
				end if;
				
			when t3 =>
				multiplexsel <= "101";
				if (IRout(3) = '0' and IRout(2)= '0') then --Rx=R0
						R0in <= '1';
				elsif (IRout(3) = '0' and IRout(2)= '1') then --Rx=R1
						R1in <= '1';
				elsif (IRout(3) = '1' and IRout(2)= '0') then --Rx=R2
						R2in <= '1';
				elsif (IRout(3) = '1' and IRout(2)= '1') then --Rx=R3
						R3in <= '1';
				end if;
				Done <= '1';
					
		end case;
	end process;
end behaviour;


------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity registrador1bit is 
	port( Clk, Rst, D, enable: in std_logic;
		   Q: out std_logic);
end registrador1bit;

architecture Behavioral of registrador1bit is 
begin
	process(Clk, Rst, enable, D)
	begin
		if (Rst='1') then
			Q <= '0';
		elsif(enable = '1') then
			if(rising_edge(Clk)) then
				Q <= D;
			end if;
		end if;
	end process;
end Behavioral;
--------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity registrador6bits is 
	port( Clk, Rst, enable: in std_logic;
			D: in std_logic_vector(5 downto 0);
		   Q: out std_logic_vector(5 downto 0));
end registrador6bits;

architecture Behavioral of registrador6bits is 
begin
	process(Clk, Rst, enable, D)
	begin
		if (Rst='1') then
			Q <= "000000";
		elsif(enable = '1') then
			if(rising_edge(Clk)) then
				Q <= D;
			end if;
		end if;
	end process;
end Behavioral;
---------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mult6 is 
	port( sel: in std_logic_vector(2 downto 0);
			entradas: in std_logic_vector(5 downto 0);
		   saida: out std_logic);
end mult6;

architecture Behavioral of mult6 is 
begin
	process(sel,entradas)
	begin
		if (sel = "000") then
			 saida <= entradas(0);
		elsif(sel = "001") then
			 saida <= entradas(1);
		elsif(sel = "010") then
			 saida <= entradas(2);
		elsif(sel = "011") then
			 saida <= entradas(3);
		elsif(sel = "100") then
			 saida <= entradas(4);
		elsif(sel = "101") then
			 saida <= entradas(5);
		end if;
	end process;
end Behavioral;
--------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mult2 is 
	port( sel: in std_logic;
			entradas: in std_logic_vector(1 downto 0);
		   saida: out std_logic);
end mult2;

architecture Behavioral of mult2 is 
begin
	process(sel,entradas)
	begin
		if (sel = '0') then
			 saida <= entradas(0);
		elsif(sel = '1') then
			 saida <= entradas(1);
		end if;
	end process;
end Behavioral;

-----------------------------------------------------------