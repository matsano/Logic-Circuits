library ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity contador is
	generic (num_clock : integer := 2);
	port (
			clk : in std_logic;
			reset : in std_logic;
			enable : out std_logic
			);
end contador;

architecture behavioral of contador is
begin

	process (clk, reset)
	variable cont : integer := 0;
	
	begin
	
		if(reset = '1') then
			cont := 0;
			enable <= '1';
	
		elsif(rising_edge(clk)) then
			cont := cont + 1;
			
		end if;
		
		if(cont = num_clock) then
			enable <= '0';
		end if;
		
	end process;

end behavioral;