LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY sevenBit21Mux IS
	PORT (
		i_sel		: IN	STD_LOGIC;
		i_A		: IN	STD_LOGIC_VECTOR(6 downto 0);
		i_B		: IN	STD_LOGIC_VECTOR(6 downto 0);
		o_q		: OUT	STD_LOGIC_VECTOR(6 downto 0));
END sevenBit21Mux;

architecture rtl of sevenBit2x1MUX is
	begin
	   
		process(i_sel, i_A, i_B)
		begin
		   
			case i_sel is
				when '0' =>
					o_q <= i_A;
				when '1' =>
					o_q <= i_B;
				when others =>
					o_q <= (others => '0');
			end case;
		end process;
	
	end rtl;