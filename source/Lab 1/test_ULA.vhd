-- código do prof

library ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity test_ULA is end;

architecture dut of test_ULA is

	CONSTANT half_period : time := 10 ps;
	CONSTANT N : integer := 4;

	COMPONENT lab1_ULA IS
		GENERIC( N  : INTEGER );
		PORT ( OP	: IN  STD_LOGIC_VECTOR(2 downto 0);
				 A,B  : IN  STD_LOGIC_VECTOR(N-1 downto 0);
				 Y		: OUT STD_LOGIC_VECTOR(N-1 downto 0); 
				 Z_flag,N_flag,O_flag : OUT STD_LOGIC);
	END COMPONENT;

	signal clk,simulando : std_logic := '0';
	signal A,B,Y : std_logic_vector(N-1 downto 0);
	signal OP : std_logic_vector(2 downto 0);
	signal Z_flag,N_flag,O_flag : std_logic;
	
function to_string ( a: std_logic_vector) return string is
variable b : string (1 to a'length) := (others => NUL);
variable stri : integer := 1; 
begin
    for i in a'range loop
        b(stri) := std_logic'image(a((i)))(2);
    stri := stri+1;
    end loop;
return b;
end function;

BEGIN
	clk <= (simulando and not clk) after half_period;

	DUT: lab1_ULA generic map (N) port map (OP,A,B,Y,Z_flag,N_flag,O_flag);
	
	st: process is
	variable SUM_RTL, SUB_RTL, AND_RTL, OR_RTL, XOR_RTL, NOT_RTL, MOV_RTL, temp_sum, temp_sub, valOP, valA, valB : integer := 0;
	variable Z_RTL, N_RTL, O_RTL : std_logic := '0';
	variable Zero : std_logic_vector(N-1 downto 0) := (others =>'0');
	variable AandB, AorB, AxorB, notA : std_logic_vector(N-1 downto 0) := (others =>'0');
	variable varA, varB: std_logic_vector(N-1 downto 0) := (others =>'0');
	
	BEGIN
		assert false report "BOT" severity note;  --inicio do teste
		simulando <= '1';								-- simulacao começou
      	        wait until rising_edge(clk);
					  
		for K in 0 to 7 loop
			if (K /= 7) then
				for I in -2**(N-1) to 2**(N-1) - 1 loop
					if (K <= 4) then
						for J in -2**(N-1) to 2**(N-1) - 1 loop
							wait until falling_edge(clk);
							
							valOP := K;
							valA := I;
							valB := J;
							
							OP <= std_logic_vector(to_unsigned(valOP,3));
							A <= std_logic_vector(to_signed(valA,N));
							B <= std_logic_vector(to_signed(valB,N));

							if (K = 0) then
								temp_sum := valA + valB;
								if(temp_sum >= -2**(N-1) and temp_sum <= 2**(N-1) - 1 ) then
									SUM_RTL := temp_sum;
									O_RTL := '0';
								elsif(temp_sum > 0) then
									SUM_RTL := temp_sum - 2**(N);
									O_RTL := '1';
								else
									SUM_RTL := temp_sum + 2**(N);
									O_RTL := '1';
								end if;
								
								if (SUM_RTL = 0) then
									Z_RTL := '1';
								else
									Z_RTL := '0';
								end if;
								
								if (SUM_RTL < 0) then
									N_RTL := '1';
								else
									N_RTL := '0';
								end if;
								
								
								wait until rising_edge(clk);
								assert SUM_RTL = to_integer(signed(Y)) report "Erro na Operacao Soma" severity failure;
								assert Z_RTL = Z_flag report "Erro no Z_flag da Operacao Soma" severity failure;
								assert N_RTL = N_flag report "Erro no N_flag da Operacao Soma" severity failure;
								assert O_RTL = O_flag report "Erro no O_flag da Operacao Soma" severity failure;
							
							elsif (K=1) then
							
								temp_sub := valA - valB;
								if(temp_sub >= -2**(N-1) and temp_sub <= 2**(N-1) - 1 ) then
									SUB_RTL := temp_sub;
									O_RTL := '0';
								elsif(temp_sub > 0) then
									SUB_RTL := temp_sub - 2**(N);
									O_RTL := '1';
								else
									SUB_RTL := temp_sub + 2**(N);
									O_RTL := '1';
								end if;
								
								if (SUB_RTL = 0) then
									Z_RTL := '1';
								else
									Z_RTL := '0';
								end if;
								
								if (SUB_RTL < 0) then
									N_RTL := '1';
								else
									N_RTL := '0';
								end if;
								
								
								wait until rising_edge(clk);
								assert SUB_RTL = to_integer(signed(Y)) report "Erro na Operacao Subtracao" severity failure;
								assert Z_RTL = Z_flag report "Erro no Z_flag da Operacao Subtracao" severity failure;
								assert N_RTL = N_flag report "Erro no N_flag da Operacao Subtracao" severity failure;
								assert O_RTL = O_flag report "Erro no O_flag da Operacao Subtracao" severity failure;
							
							
							elsif (K=2) then
								varA := std_logic_vector(to_signed(valA,N));
								varB := std_logic_vector(to_signed(valB,N));
								AandB := varA and varB;
								AND_RTL := to_integer(signed(AandB));

								if (Zero = AandB) then
									Z_RTL := '1';
								else
									Z_RTL := '0';
								end if;
								
								if (AND_RTL < 0) then
									N_RTL := '1';
								else
									N_RTL := '0';
								end if;
								
								O_RTL := '0';
								
								wait until rising_edge(clk);
								assert AandB = Y report "Erro na Operacao And" & " - A: " & to_string(A) & " B: " & to_string(B) & " AandB: " & to_string(AandB) & " Y: " & to_string(Y) severity failure;
								assert Z_RTL = Z_flag report "Erro no Z_flag da Operacao And" severity failure;
								assert AandB(N-1) = N_flag report "Erro no N_flag da Operacao And" severity failure;
								assert O_RTL = O_flag report "Erro no O_flag da Operacao And" severity failure;
							
							
							elsif (K=3) then
								
								varA := std_logic_vector(to_signed(valA,N));
								varB := std_logic_vector(to_signed(valB,N));
								AorB := varA or varB;
								OR_RTL := to_integer(signed(AorB));
								
								if (AorB = Zero) then
									Z_RTL := '1';
								else
									Z_RTL := '0';
								end if;
								
								if (OR_RTL < 0) then
									N_RTL := '1';
								else
									N_RTL := '0';
								end if;
								
								O_RTL := '0';
								
								wait until rising_edge(clk);
								assert AorB = Y report "Erro na Operacao Or" severity failure;
								assert Z_RTL = Z_flag report "Erro no Z_flag da Operacao Or" severity failure;
								assert N_RTL = N_flag report "Erro no N_flag da Operacao Or" severity failure;
								assert O_RTL = O_flag report "Erro no O_flag da Operacao Or" severity failure;
								
							
							elsif (K=4) then
								
								varA := std_logic_vector(to_signed(valA,N));
								varB := std_logic_vector(to_signed(valB,N));
								AxorB := varA xor varB;
								XOR_RTL := to_integer(signed(AxorB));
								
								if (AxorB = Zero) then
									Z_RTL := '1';
								else
									Z_RTL := '0';
								end if;
								
								if (XOR_RTL < 0) then
									N_RTL := '1';
								else
									N_RTL := '0';
								end if;
								
								O_RTL := '0';
								
								wait until rising_edge(clk);
								assert AxorB = Y report "Erro na Operacao Xor" severity failure;
								assert Z_RTL = Z_flag report "Erro no Z_flag da Operacao Xor" severity failure;
								assert N_RTL = N_flag report "Erro no N_flag da Operacao Xor" severity failure;
								assert O_RTL = O_flag report "Erro no O_flag da Operacao Xor" severity failure;
							
							end if;
						end loop;
						
					else
						wait until falling_edge(clk);
						
						valOP := K;
						valA := I;
						
						OP <= std_logic_vector(to_unsigned(valOP,3));
						A <= std_logic_vector(to_signed(valA,N));
					
					
						if (K = 5) then
							
							varA := std_logic_vector(to_signed(valA,N));
							notA := not varA;
							NOT_RTL := to_integer(signed(notA));
								
							if (notA = Zero) then
								Z_RTL := '1';
							else
								Z_RTL := '0';
							end if;
							
							if (NOT_RTL < 0) then
								N_RTL := '1';
							else
								N_RTL := '0';
							end if;
							
							O_RTL := '0';
							
							wait until rising_edge(clk);
							assert notA = Y report "Erro na Operacao Not" severity failure;
							assert Z_RTL = Z_flag report "Erro no Z_flag da Operacao Not" severity failure;
							assert N_RTL = N_flag report "Erro no N_flag da Operacao Not" severity failure;
							assert O_RTL = O_flag report "Erro no O_flag da Operacao Not" severity failure;
							
						else
							
							varA := std_logic_vector(to_signed(valA,N));
							MOV_RTL := to_integer(signed(varA));
								
							if (varA = Zero) then
								Z_RTL := '1';
							else
								Z_RTL := '0';
							end if;
							
							if (MOV_RTL < 0) then
								N_RTL := '1';
							else
								N_RTL := '0';
							end if;
							
							O_RTL := '0';
							
							wait until rising_edge(clk);
							assert varA = Y report "Erro na Operacao Mov" severity failure;
							assert Z_RTL = Z_flag report "Erro no Z_flag da Operacao Mov" severity failure;
							assert N_RTL = N_flag report "Erro no N_flag da Operacao Mov" severity failure;
							assert O_RTL = O_flag report "Erro no O_flag da Operacao Mov" severity failure;
						
						
						end if;
					end if;
				end loop;
						
			else			-- K = 7
				
				wait until falling_edge(clk);
				valOP := K;			
				OP <= std_logic_vector(to_unsigned(valOP,3));
				
				Z_RTL := '1';
				N_RTL := '0';
				O_RTL := '0';
				
				wait until rising_edge(clk);
				assert 0 = to_integer(signed(Y)) report "Erro na Operacao Zero" severity failure;
				assert Z_RTL = Z_flag report "Erro no Z_flag da Operacao Zero" severity failure;
				assert N_RTL = N_flag report "Erro no N_flag da Operacao Zero" severity failure;
				assert O_RTL = O_flag report "Erro no O_flag da Operacao Zero" severity failure;
					
			end if;
		end loop;	
		
		
		assert false report "EOT" severity note; --fim do teste
		simulando <= '0';
		wait;
	END process;
END DUT;