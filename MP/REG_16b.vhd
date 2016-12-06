----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:05:05 06/27/2016 
-- Design Name: 
-- Module Name:    REG_16b - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity REG_16b is
	port( 
		d : in std_logic_vector(15 downto 0);
		load, clk : in std_logic;
		q : out std_logic_vector(15 downto 0));
end REG_16b;

architecture Behavioral of REG_16b is
	
begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			if(load = '1') then
				q <= d;
			end if;
		end if;
	end process;
end Behavioral;

