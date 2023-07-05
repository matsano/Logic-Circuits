library IEEE;
use IEEE.Std_logic_1164.all;

entity maquinaestado is
	port( clk, reset :in std_logic;
			entrada: in std_logic_vector(3 downto 0);
			saida_atual: out std_logic_vector(3 downto 0));
end maquinaestado;

architecture behaviour of maquinaestado is
	
	type Estados is (S25,S20,S15,S10,S05,S0);
	signal estado_atual, estado_futuro : Estados;
	signal saida_futura: std_logic_vector(3 downto 0);

begin

	process(clk)
	begin
		if(rising_edge(clk)) then
			saida_atual <= saida_futura;
		end if;
	end process;

	process(clk,reset)
	begin
		if (reset = '1') then
			estado_atual <= S0;
		elsif(rising_edge(clk)) then
			estado_atual <= estado_futuro;
		else
			estado_atual <= estado_atual;
		end if;
	end process;
	
	process(estado_atual, entrada)
	begin
		if(entrada(3) = '0' and entrada(2) = '1') then
			case estado_atual is
				when S0 =>
					if(entrada(1) = '0' and entrada(0) = '0') then
						saida_futura <= "1111";
						estado_futuro <= S10;
					elsif (entrada(1) = '1' and entrada(0) = '0') then
						saida_futura <= "1111";
						estado_futuro <= S05;
					elsif (entrada(1) = '1' and entrada(0) = '1') then
						saida_futura <= "1111";
						estado_futuro <= S0;
					end if;
				when S05 =>
					if(entrada(1) = '0' and entrada(0) = '0') then
						saida_futura <= "1111";
						estado_futuro <= S15;
					elsif (entrada(1) = '1' and entrada(0) = '0') then
						saida_futura <= "1111";
						estado_futuro <= S10;
					elsif (entrada(1) = '1' and entrada(0) = '1') then
						saida_futura <= "1111";
						estado_futuro <= S05;
					end if;
				when S10 =>
					if(entrada(1) = '0' and entrada(0) = '0') then
						saida_futura <= "0111";
						estado_futuro <= S0;
					elsif (entrada(1) = '1' and entrada(0) = '0') then
						saida_futura <= "1111";
						estado_futuro <= S15;
					elsif (entrada(1) = '1' and entrada(0) = '1') then
						saida_futura <= "1111";
						estado_futuro <= S10;
					end if;
				when S15 =>
					if(entrada(1) = '0' and entrada(0) = '0') then
						saida_futura <= "0110";
						estado_futuro <= S0;
					elsif (entrada(1) = '1' and entrada(0) = '0') then
						saida_futura <= "0111";
						estado_futuro <= S0;
					elsif (entrada(1) = '1' and entrada(0) = '1') then
						saida_futura <= "1111";
						estado_futuro <= S15;
					end if;
				when S20=>
					estado_futuro <= S0;
				when S25=>
					estado_futuro <= S0;
			end case;
		end if;
			
		if(entrada(3) = '1' and entrada(2) = '1') then
			case estado_atual is
				when S0 =>
					if(entrada(1) = '0' and entrada(0) = '0') then
						saida_futura <= "1111";
						estado_futuro <= S10;
					elsif (entrada(1) = '1' and entrada(0) = '0') then
						saida_futura <= "1111";
						estado_futuro <= S05;
					elsif (entrada(1) = '1' and entrada(0) = '1') then
						saida_futura <= "1111";
						estado_futuro <= S0;
					end if;
				when S05 =>
					if(entrada(1) = '0' and entrada(0) = '0') then
						saida_futura <= "1111";
						estado_futuro <= S15;
					elsif (entrada(1) = '1' and entrada(0) = '0') then
						saida_futura <= "1111";
						estado_futuro <= S10;
					elsif (entrada(1) = '1' and entrada(0) = '1') then
						saida_futura <= "1111";
						estado_futuro <= S05;
					end if;
				when S10 =>
					if(entrada(1) = '0' and entrada(0) = '0') then
						saida_futura <= "1111";
						estado_futuro <= S20;
					elsif (entrada(1) = '1' and entrada(0) = '0') then
						saida_futura <= "1111";
						estado_futuro <= S15;
					elsif (entrada(1) = '1' and entrada(0) = '1') then
						saida_futura <= "1111";
						estado_futuro <= S10;
					end if;
				when S15 =>
					if(entrada(1) = '0' and entrada(0) = '0') then
						saida_futura <= "1011";
						estado_futuro <= S0;
					elsif (entrada(1) = '1' and entrada(0) = '0') then
						saida_futura <= "1111";
						estado_futuro <= S20;
					elsif (entrada(1) = '1' and entrada(0) = '1') then
						saida_futura <= "1111";
						estado_futuro <= S15;
					end if;
				
				when S20 =>
					if(entrada(1) = '0' and entrada(0) = '0') then
						saida_futura <= "1010";
						estado_futuro <= S0;
					elsif (entrada(1) = '1' and entrada(0) = '0') then
						saida_futura <= "1011";
						estado_futuro <= S0;
					elsif (entrada(1) = '1' and entrada(0) = '1') then
						saida_futura <= "1111";
						estado_futuro <= S20;
					end if;
				when S25 =>
					estado_futuro <= S0;
			end case;
		end if;
	end process;
end behaviour;