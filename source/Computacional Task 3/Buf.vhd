library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Buf is 
	port( Gn, B: in std_logic;
		   Q: out std_logic);
end Buf;

architecture Behavioral of Buf is 
begin

	process(Gn, B)
	begin
		if (Gn='1') then
			 Q <= 'Z';
		else
			 Q <= B;
		end if;
	end process;

end Behavioral;