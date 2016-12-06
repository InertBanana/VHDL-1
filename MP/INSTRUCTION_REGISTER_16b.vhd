----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:08:30 07/24/2016 
-- Design Name: 
-- Module Name:    INSTRUCTION_REGISTER_16b - Behavioral 
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

entity INSTRUCTION_REGISTER_16b is
PORT(
	in0 : in std_logic_vector (15 downto 0);
	IL, clk : in std_logic;
	OPCODE : out std_logic_vector(6 downto 0);
	DR, SA, SB : out std_logic_vector(2 downto 0));
end INSTRUCTION_REGISTER_16b;

architecture Behavioral of INSTRUCTION_REGISTER_16b is

begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			if(IL = '1') then
				OPCODE <= in0(15 downto 9);
				DR <= in0(8 downto 6);
				SA <= in0(5 downto 3);
				SB <= in0(2 downto 0);
			end if;
		end if;
	end process;
end Behavioral;

