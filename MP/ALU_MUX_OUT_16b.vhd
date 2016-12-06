----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:13:26 07/06/2016 
-- Design Name: 
-- Module Name:    ALU_MUX_OUT_16b - Behavioral 
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

entity ALU_MUX_OUT_16b is
	Port(
		add_in, l_unit_in, shifter_in : in std_logic_vector(15 downto 0);
		sel : in std_logic_vector(1 downto 0);
		q : out std_logic_vector(15 downto 0));
		
end ALU_MUX_OUT_16b;

architecture Behavioral of ALU_MUX_OUT_16b is

begin
	q <=
		add_in after 5 ns when sel = "00" else			-- ADD 	 00
		l_unit_in after 5 ns when sel = "01" else		-- LOG	 01
		shifter_in after 5 ns when sel >= "10" else	-- SHIFT  1X
		"0000000000000000" after 5 ns;

end Behavioral;

