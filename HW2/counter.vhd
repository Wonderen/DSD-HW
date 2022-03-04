----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:16:55 03/14/2021 
-- Design Name: 
-- Module Name:    counter - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counter is
	Generic ( n : integer := 8 );
    Port ( clk		:	 in std_logic; 
           reset	: 	 in std_logic;
			  step	:   in std_logic_vector(n-1 DOWNTO 0);
			  data_en:	 in std_logic;
			  data_in:   in std_logic_vector(n-1 DOWNTO 0);
           counter: 	 out std_logic_vector(n-1 downto 0) 
     );
end counter;

architecture Behavioral of counter is
	signal counter_tmp: std_logic_vector(n-1 downto 0);
		begin
		process(clk)
		begin
			if(rising_edge(clk)) then
			
				 if(reset='1') then
						counter_tmp <= (OTHERS => '0');
					 else
							if(data_en = '1') then
								counter_tmp <= (counter_tmp + step + data_in);
								else
									counter_tmp <= (counter_tmp + step);
							end if;
								
				 end if;
			end if;
		end process;
	 counter <= counter_tmp;

end Behavioral;





