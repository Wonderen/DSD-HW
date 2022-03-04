--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:18:58 03/14/2021
-- Design Name:   
-- Module Name:   C:/ISE/DSD/tb_counters.vhd
-- Project Name:  DSD
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: counter
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;
entity tb_counters is
end tb_counters;

architecture testbench of tb_counters is
	component counter is 
		 GENERIC ( n	: integer := 8 );
		 Port ( clk: in std_logic; 
				  reset: in std_logic; 
				  step:  in std_logic_vector(n-1 DOWNTO 0);
				  data_en: in std_logic;
				  data_in:  in std_logic_vector(n-1 DOWNTO 0);
				  counter: out std_logic_vector(n-1 downto 0)
		  );
	end component;
	signal reset_t		: std_logic;
	signal clk_t		: std_logic := '0';
	signal data_en_t	: std_logic ;
	signal counter_t	: std_logic_vector(7 downto 0);
	signal step_t 		:std_logic_vector(7 downto 0); 
	signal data_in_t	:std_logic_vector(7 downto 0);

	begin
		cut: counter GENERIC MAP (8) port map (clk_t, reset_t, step_t, data_en_t, data_in_t, counter_t);
		
		clk_t <= NOT clk_t AFTER 10 ns;
		reset_t <= '1' , '0' AFTER 100 ns;
		step_t <= "00000000" , "00000101" AFTER 500 ns;
		data_en_t <= '0' , '1' AFTER 500 ns ,'0' AFTER 550 ns; 
		data_in_t  <= "00000000" , "00000011" AFTER 500 ns; 

end testbench;