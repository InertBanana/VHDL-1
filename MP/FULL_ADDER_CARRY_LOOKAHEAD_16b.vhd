----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:36:28 07/27/2016 
-- Design Name: 
-- Module Name:    FULL_ADDER_CARRY_LOOKAHEAD_16b - Behavioral 
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

entity FULL_ADDER_CARRY_LOOKAHEAD_16b is
PORT(
	in0, in1 : in std_logic_vector(15 downto 0);
	carry_in : in std_logic;
	carry_out : out std_logic;
	f : out std_logic_vector(15 downto 0));
end FULL_ADDER_CARRY_LOOKAHEAD_16b;

architecture Behavioral of FULL_ADDER_CARRY_LOOKAHEAD_16b is

begin


end Behavioral;

