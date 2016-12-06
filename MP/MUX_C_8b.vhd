----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:56:01 07/28/2016 
-- Design Name: 
-- Module Name:    MUX_C_8b - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX_C_8b is
PORT(
	in0, in1 : in std_logic_vector(7 downto 0);
	MC : in std_logic;
	q : out std_logic_vector(7 downto 0));
end MUX_C_8b;

architecture Behavioral of MUX_C_8b is

begin
	q <= in0 after 5 ns when MC = '0' else
		in1 after 5 ns when MC = '1' else
		"00000000" after 5 ns;

end Behavioral;

