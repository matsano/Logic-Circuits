library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FFD is 
	port( Clk, Rst, D: in std_logic;
		   Q: out std_logic);
end FFD;

architecture Behavioral of FFD is 
begin

	process(Clk, Rst)
	begin
		if (Rst='0') then
			 Q <= '0';
		elsif(rising_edge(Clk)) then
			 Q <= D;
		end if;
	end process;

end Behavioral;