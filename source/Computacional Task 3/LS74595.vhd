library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity LS74595 is
	port (Gn, Rck, SCLRn, SCK, SI: in std_logic;
		Q: out std_logic_vector(7 downto 0);
		Qhp: out std_logic);
end LS74595;

architecture structure of LS74595 is
	
	component FFD is
		port( Clk, Rst, D: in std_logic;
				Q: out std_logic);
	end component FFD;
	
	component Buf is
		port( Gn, B: in std_logic;
				Q: out std_logic);
	end component Buf;
	
	signal C: std_logic_vector(6 downto 0);
	signal B: std_logic_vector(7 downto 0);
	signal inter: std_logic;
	
begin
	FA0: FFD port map (SCK, SCLRn, SI, C(0));
	FA1: FFD port map (SCK, SCLRn, C(0), C(1));
	FA2: FFD port map (SCK, SCLRn, C(1), C(2));
	FA3: FFD port map (SCK, SCLRn, C(2), C(3));
	FA4: FFD port map (SCK, SCLRn, C(3), C(4));
	FA5: FFD port map (SCK, SCLRn, C(4), C(5));
	FA6: FFD port map (SCK, SCLRn, C(5), C(6));
	FA7: FFD port map (SCK, SCLRn, C(6), inter);
	
	FA8: FFD port map (Rck, '1', C(0), B(0));
	FA9: FFD port map (Rck, '1', C(1), B(1));
	FA10: FFD port map (Rck, '1', C(2), B(2));
	FA11: FFD port map (Rck, '1', C(3), B(3));
	FA12: FFD port map (Rck, '1', C(4), B(4));
	FA13: FFD port map (Rck, '1', C(5), B(5));
	FA14: FFD port map (Rck, '1', C(6), B(6));
	FA15: FFD port map (Rck, '1', inter, B(7));
	
	BUF0: Buf port map (Gn, B(0), Q(0));
	BUF1: Buf port map (Gn, B(1), Q(1));
	BUF2: Buf port map (Gn, B(2), Q(2));
	BUF3: Buf port map (Gn, B(3), Q(3));
	BUF4: Buf port map (Gn, B(4), Q(4));
	BUF5: Buf port map (Gn, B(5), Q(5));
	BUF6: Buf port map (Gn, B(6), Q(6));
	BUF7: Buf port map (Gn, B(7), Q(7));
	
	Qhp <= inter;

end structure;

architecture behaviour of LS74595 is

	signal Q1: std_logic_vector(7 downto 0);
	signal Q2: std_logic_vector(7 downto 0);
begin

	process(SCLRn, SCK)
	begin
		if (SCLRn='0') then
			Q1(0) <= '0';
			Q1(1) <= '0';
			Q1(2) <= '0';
			Q1(3) <= '0';
			Q1(4) <= '0';
			Q1(5) <= '0';
			Q1(6) <= '0';
			Q1(7) <= '0';
		else
			if (rising_edge(SCK)) then
				Q1(0) <= SI;
				Q1(1) <= Q1(0);
				Q1(2) <= Q1(1);
				Q1(3) <= Q1(2);
				Q1(4) <= Q1(3);
				Q1(5) <= Q1(4);
				Q1(6) <= Q1(5);
				Q1(7) <= Q1(6);
			end if;
		end if;
	end process;
	
	Qhp <= Q1(7);
		
	process(RCK)
	begin
		if (rising_edge(RCK)) then
			Q2(0) <= Q1(0);
			Q2(1) <= Q1(1);
			Q2(2) <= Q1(2);
			Q2(3) <= Q1(3);
			Q2(4) <= Q1(4);
			Q2(5) <= Q1(5);
			Q2(6) <= Q1(6);
			Q2(7) <= Q1(7);
		end if;
	end process;
	
	Q <= Q2 when Gn = '0' else "ZZZZZZZZ";

end behaviour;