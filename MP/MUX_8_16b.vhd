----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:04:50 06/27/2016 
-- Design Name: 
-- Module Name:    MUX_8_16b - Behavioral 
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

entity MUX_8_16b is
	port(
		in0, in1, in2, in3, in4, in5, in6, in7, in8 : in std_logic_vector(15 downto 0);
		sel : in std_logic_vector (3 downto 0);
		q : out std_logic_vector(15 downto 0));
end MUX_8_16b;

architecture Behavioral of MUX_8_16b is

begin
	q <= in0 after 5ns when sel = "0000" else
		  in1 after 5ns when sel = "0001" else
		  in2 after 5ns when sel = "0010" else
	     in3 after 5ns when sel = "0011" else
		  in4 after 5ns when sel = "0100" else
		  in5 after 5ns when sel = "0101" else
		  in6 after 5ns when sel = "0110" else
		  in7 after 5ns when sel = "0111" else
		  in8 after 5ns when sel = "1000" else
		  "0000000000000000" after 5ns;
end Behavioral;

