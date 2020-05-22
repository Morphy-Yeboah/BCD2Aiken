-------------------------------------------------------------------------------
--
-- Title       : bcd2aiken
-- Design      : bcd2aiken_tb
-- Author      : Morphy Yeboah
-- Company     : Stony Brook University
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\Morphy\Desktop\ESE Backup\MMOP\lab_6\bcd2aiken_tb\src\bcd2siken_vhd.vhd
-- Generated   : Sun Mar  8 21:38:06 2020
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {bcd2aiken} architecture {select_arch}}

library IEEE;
use IEEE.std_logic_1164.all;

entity bcd2aiken is
	 port(
		 d : in STD_LOGIC;
		 c : in STD_LOGIC;
		 b : in STD_LOGIC;
		 a : in STD_LOGIC;
		 v : out STD_LOGIC;
		 w : out STD_LOGIC;
		 x : out STD_LOGIC;
		 y : out STD_LOGIC
	     );
end bcd2aiken;

--}} End of automatically maintained section

architecture select_arch of bcd2aiken is


begin
	with std_logic_vector'(d,c,b,a) select 
	(v, w, x, y) <= std_logic_vector'("0000") when "0000",
	("0001") when "0001",
	("0010") when "0010",
	("0011") when "0011",
	("0100") when "0100",
	("1011") when "0101",
	("1100") when "0110",
	("1101") when "0111",
	("1110") when "1000",
	("1111") when "1001",
	("----") when others;
	
	 -- enter your statements here --

end select_arch;



--(v, w, x, y) <= "----" when "1010" else
			
			-- out3(to_integer(unsigned'(d, c, b, a)));
			
		--elsif dont_care = false then 
			
			
			
			--((v = ((a and not d and c) or (b and not d and c) or (not b and d and not c))) and 
			--(w = ((not d and c and b) or (not d and c and not a) or(d and not c and not b))) and
			--(x = ((not d and not c and b) or (not d and c and not b and a) or (d and not c and not b))) and (y = a))	   
			
			
			--true when (((d, c, b, a)= "1010") and ((d, c, b, a)= "1011") and ((d, c, b, a)= "1100")
				--and ((d, c, b, a)= "1101") and ((d, c, b, a)= "1110") and ((d, c, b, a)= "1111"))  
		--else false;   
			
			--Zo : process(d,c,b,a) 
		--begin 
		
					
			--if ((d,c,b,a) = "1010") then 
			--dont_care <= true;
			--elsif ((d,c,b,a) = "1011") then 
			--dont_care <= true;
			--elsif ((d,c,b,a) = "1100") then 
			--dont_care <= true;
			--elsif ((d,c,b,a) = "1101") then 
			--dont_care <= true;
			--elsif ((d,c,b,a) = "1110") then 
			--dont_care <= true;
			--elsif ((d,c,b,a) = "1111") then 
			--dont_care <= true;
			--else 
			--dont_care <= false;
			--end if;
						
			--end process Zo;	   