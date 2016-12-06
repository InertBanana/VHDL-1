----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:32:20 06/29/2016 
-- Design Name: 
-- Module Name:    FULL_ADDER_1b - Behavioral 
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

entity FULL_ADDER_1b is
	port(
		a, b, carry_in : in std_logic;
		sum, carry_out : out std_logic);
end FULL_ADDER_1b;

architecture Behavioral of FULL_ADDER_1b is

begin
	sum <= ((a xor b) xor carry_in) after 5ns;
	carry_out <= ((a and b) or (a and carry_in) or (b and carry_in)) after 5 ns;
end Behavioral;

