library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity LS74138 is
	port(A, E: in std_logic_vector(2 downto 0);
		  O: out std_logic_vector(7 downto 0));
end LS74138;

architecture logic of LS74138 is
		signal notA: std_logic_vector(2 downto 0);
		signal andE: STD_LOGIC;
	begin
		andE <= (not E(0)) and (not E(1)) and E(2);
		notA <= not A;
		
		O(0) <= not(notA(0) and notA(1) and notA(2) and andE);
		O(1) <= not(A(0) and notA(1) and notA(2) and andE);
		O(2) <= not(notA(0) and A(1) and notA(2) and andE);
		O(3) <= not(A(0) and A(1) and notA(2) and andE);
		O(4) <= not(notA(0) and notA(1) and A(2) and andE);
		O(5) <= not(A(0) and notA(1) and A(2) and andE);
		O(6) <= not(notA(0) and A(1) and A(2) and andE);
		O(7) <= not(A(0) and A(1) and A(2) and andE);		
end logic;

architecture functional of LS74138 is
	begin
		O <= "11111110" when E = "100" and A = "000" else
			  "11111101" when E = "100" and A = "001" else
			  "11111011" when E = "100" and A = "010" else
			  "11110111" when E = "100" and A = "011" else
			  "11101111" when E = "100" and A = "100" else
			  "11011111" when E = "100" and A = "101" else
			  "10111111" when E = "100" and A = "110" else
			  "01111111" when E = "100" and A = "111" else
			  "11111111"; 
end functional;