----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:58:56 07/04/2016 
-- Design Name: 
-- Module Name:    LOGIC_UNIT_16b - Behavioral 
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

entity LOGIC_UNIT_16b is
	port(
		a, b : in std_logic_vector(15 downto 0);
		G_SEL : in std_logic_vector(3 downto 0);
		f : out std_logic_vector(15 downto 0));
end LOGIC_UNIT_16b;

architecture Behavioral of LOGIC_UNIT_16b is

begin
	f <= (a and b) after 5 ns when G_SEL = "1000" else
		  (a or b)  after 5 ns when G_SEL = "1010" else
		  (a xor b) after 5 ns when G_SEL = "1100" else
		  (not(a))  after 5 ns when G_SEL = "1110" else
		  "0000000000000000" after 5 ns;
end Behavioral;

