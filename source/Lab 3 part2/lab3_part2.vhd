library ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity lab3_part2 is
generic (Tam : integer := 2;
			Tmin : integer := 6;
			Tmax : integer := 10
			);
port	(SW : in std_logic_vector (8 DOWNTO 7);
      KEY : in std_logic_vector (0 DOWNTO 0);
      CLOCK_50GH : in std_logic;
		CLOCK_20ns : in std_logic;
      HEX1, HEX2 : out std_logic_vector (0 TO 2);
		HEX3, HEX4 : out std_logic_vector (0 TO 2)
		);
end lab3_part2;

architecture behavioral of lab3_part2 is

	COMPONENT contador IS
		generic (num_clock : integer := 2);
		port (
			clk : in std_logic;
			reset : in std_logic;
			enable : out std_logic
		);
	END COMPONENT;

	type estado is (e0,e1,e2,e3,e4,e5,e6);
	signal atual,proximo : estado;

	signal enable_Tam, enable_Tmin, enable_Tmax : std_logic;
	signal reset1_Tam, reset1_Tmin, reset1_Tmax, reset2_Tam, reset2_Tmin, reset2_Tmax  : std_logic := '1';
	signal reset_Tam, reset_Tmin, reset_Tmax : std_logic;
	
begin

	reset_Tam <= reset1_Tam or reset2_Tam;
	reset_Tmin <= reset1_Tmin or reset2_Tmin;
	reset_Tmax <= reset1_Tmax or reset2_Tmax;

	T01: contador generic map (Tam) port map (CLOCK_20ns, reset_Tam, enable_Tam);
	T02: contador generic map (Tmin) port map (CLOCK_20ns, reset_Tmin, enable_Tmin);
	T03: contador generic map (Tmax) port map (CLOCK_20ns, reset_Tmax, enable_Tmax);

	process (CLOCK_50GH, KEY)
	begin
		 if (KEY(0) = '0') then
		  atual <= e0;
		  reset1_Tmin <= '1';
		  reset1_Tam <= '1';
		  reset1_Tmax <= '1';
		elsif (rising_edge(CLOCK_50GH)) then
		  atual <= proximo;
		  reset1_Tmin <= '0';
		  reset1_Tam <= '0';
		  reset1_Tmax <= '0';
		end if;
	end process;


	process (atual, SW, enable_Tam, enable_Tmin, enable_Tmax)
	begin
		case atual is
			when e0 =>
				reset2_Tmin <= '0';
				reset2_Tam <= '1';
				
				HEX1 <= "001";
				HEX2 <= "001";
				HEX3 <= "100";
				HEX4 <= "100";
				
				if(enable_Tmin ='1' OR (SW(8) = '0' AND SW(7) = '0')) then
					proximo <= e0;
				
				elsif(enable_Tmin ='0' AND SW(7) = '1') then
					proximo <= e1;
					
				elsif(enable_Tmin ='0' AND SW(8) = '1' AND SW(7) = '0') then
					proximo <= e4;
					
				end if;
				
			when e1 =>
				reset2_Tam <= '0';
				reset2_Tmin <= '1';
				
				HEX1 <= "010";
				HEX2 <= "010";
				HEX3 <= "100";
				HEX4 <= "100";
				
				if(enable_Tam ='1') then
					proximo <= e1;
				
				elsif(enable_Tam ='0') then
					proximo <= e2;
					
				end if;
			
			when e2 =>
				reset2_Tmax <= '0';
				reset2_Tam <= '1';
				
				HEX1 <= "100";
				HEX2 <= "100";
				HEX3 <= "001";
				HEX4 <= "001";
				
				if(enable_Tmax ='1' AND (SW(8) = '1' OR SW(7) = '1')) then
					proximo <= e2;
				
				elsif(enable_Tmax ='0' OR (SW(8) = '0' AND SW(7) = '0')) then
					proximo <= e3;
					
				end if;
				
			when e3 =>
				reset2_Tam <= '0';
				reset2_Tmax <= '1';
				
				HEX1 <= "100";
				HEX2 <= "100";
				HEX3 <= "010";
				HEX4 <= "010";
				
				if(enable_Tam ='1') then
					proximo <= e3;
				
				elsif(enable_Tam ='0') then
					proximo <= e0;
					
				end if;
				
			when e4 =>
				reset2_Tam <= '0';
				reset2_Tmin <= '1';
				
				HEX1 <= "001";
				HEX2 <= "010";
				HEX3 <= "100";
				HEX4 <= "100";
				
				if(enable_Tam ='1') then
					proximo <= e4;
				
				elsif(enable_Tam ='0') then
					proximo <= e5;
					
				end if;
			
			when e5 =>
				reset2_Tmax <= '0';
				reset2_Tam <= '1';
				
				HEX1 <= "001";
				HEX2 <= "100";
				HEX3 <= "100";
				HEX4 <= "001";
				
				if(enable_Tmax ='1' AND SW(8) = '1') then
					proximo <= e5;
				
				elsif(enable_Tmax ='0' OR SW(8) = '0') then
					proximo <= e6;
					
				end if;
				
			when e6 =>
				reset2_Tam <= '0';
				reset2_Tmax <= '1';
				
				HEX1 <= "001";
				HEX2 <= "100";
				HEX3 <= "100";
				HEX4 <= "010";
				
				if(enable_Tam ='1') then
					proximo <= e6;
				
				elsif(enable_Tam ='0') then
					proximo <= e0;
					
				end if;
				
		end case;
	end process;

end behavioral;