-------------------------------------------------------------------------------
--
-- Title       : bcd2aiken_tbbb
-- Design      : bcd2aiken_tb
-- Author      : Morphy Yeboah
-- Company     : Stony Brook University
--
-------------------------------------------------------------------------------
--
-- File        : C:\Users\Morphy\Desktop\ESE Backup\MMOP\lab_6\bcd2aiken_tb\src\bcd2aiken_tbbb.vhd
-- Generated   : Sun Mar  8 22:34:09 2020
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
--{entity {bcd2aiken_tbbb} architecture {bcd2aiken_tbbb}}



library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bcd2aiken_tb is
end bcd2aiken_tb;

architecture tb_architecture of bcd2aiken_tb is

	-- Stimulus signals
	signal d,c,b,a : std_logic;
	-- Observed signals
	signal v,w,x,y : std_logic;

	constant period: time := 20ns;
	
	signal dont_care : boolean := false; 
	 
	
	 type gray_b is array (0 to 15) of std_logic_vector(3 downto 0);
	constant out3 : gray_b:= (
	"0000", 
	"0001", 
	"0010", 
	"0011", 
	"0100",			   
	"1011",
	"1100",
	"1101",
	"1110",
	"1111",
	"----",
	"----",
	"----",
	"----",
	"----",
	"----");
	
	  
begin

	-- Unit Under Test port map
	UUT : entity bcd2aiken
		port map (d => d, c => c, b => b, a => a,
			v => v, w => w, x => x, y => y
		); 
		
		Zo : process(d,c,b,a) 
		begin 
		
					
			if ((d,c,b,a) = "1001") then 
			dont_care <= true;
			else 
			dont_care <= false;
			end if;
						
			end process Zo;

	stimulus : process
	begin  
		  
		loop1 :for i in 0 to 15 loop 	 				
			  
			(d, c, b, a) <= to_unsigned(i, 4);
			
			wait for period; 	
			
			assert 
			(v, w, x, y) <= out3(to_integer(unsigned'(d, c, b, a)));	
				  	
			 
			report "Error for input " & to_string((d, c, b, a)) 

				severity error;	   
				exit when dont_care = true;
			 
				
		end loop;
		
		--dont_care <= true;
		
		wait; 
		
			
	end process;
		   
end tb_architecture;



