----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:29:09 08/31/2016 
-- Design Name: 
-- Module Name:    MUX_4_1_1b - Behavioral 
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

entity MUX_4_1_1b is
port(
	in0, in1, in2, in3 : in std_logic;
	sel : in std_logic_vector(1 downto 0);
	q : out std_logic);
end MUX_4_1_1b;

architecture Behavioral of MUX_4_1_1b is

begin
	q <= in0 after 5 ns when sel = "00" else
	     in1 after 5 ns when sel = "01" else
	     in2 after 5 ns when sel = "10" else
	     in3 after 5 ns when sel = "11" else
	     '0' after 5 ns;
	
end Behavioral;

