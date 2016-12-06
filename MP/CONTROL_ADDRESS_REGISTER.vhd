----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:24:35 07/27/2016 
-- Design Name: 
-- Module Name:    CONTROL_ADDRESS_REGISTER - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CONTROL_ADDRESS_REGISTER is
PORT(
	in0 : in std_logic_vector(7 downto 0);
	mux_s_in, clk : in std_logic;
	q : out std_logic_vector(7 downto 0));
end CONTROL_ADDRESS_REGISTER;

architecture Behavioral of CONTROL_ADDRESS_REGISTER is
signal q_x : std_logic_vector(7 downto 0);
begin
	process(clk)
	begin
		if(rising_edge(clk)) then 
			if (mux_s_in = '1') then
				q <= in0;
				q_x <= in0;
			else				
				q_x <= q_x + '1';
				q <= q_x;				
			end if;				
		end if;
	end process;
end Behavioral;

