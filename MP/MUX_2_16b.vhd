----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:03:56 06/27/2016 
-- Design Name: 
-- Module Name:    MUX_2_16b - Behavioral 
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

entity MUX_2_16b is
	port(
		sel : in std_logic;
		in0, in1 : in std_logic_vector(15 downto 0);
		q : out std_logic_vector(15 downto 0));

end MUX_2_16b;

architecture Behavioral of MUX_2_16b is
begin
	q <= in0 after 5ns when sel = '0' else
		  in1 after 5ns when sel = '1' else 
		  "0000000000000000" after 5ns;
end Behavioral;

