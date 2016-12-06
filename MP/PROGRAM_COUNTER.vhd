----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:15:35 07/27/2016 
-- Design Name: 
-- Module Name:    PROGRAM_COUNTER - Behavioral 
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

entity PROGRAM_COUNTER is
PORT(
	in0 : in std_logic_vector(15 downto 0);
	PL, PI, clk : in std_logic;
	q : out std_logic_vector(15 downto 0));
end PROGRAM_COUNTER;

architecture Behavioral of PROGRAM_COUNTER is
signal current_pc : std_logic_vector(15 downto 0);
begin

	process(clk)
	begin
		if (rising_edge(clk)) then
			if (PL = '1' and PI = '0') then
				current_pc <= in0;
				q <= in0;
			elsif (PI = '1' and PL = '0') then
				q <= current_pc + '1';
				current_pc <= current_pc + '1';
			else
				q <= current_pc;
			end if;
		end if;
	end process;

end Behavioral;

