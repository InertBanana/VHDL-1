----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:20:07 07/04/2016 
-- Design Name: 
-- Module Name:    MUX_3_16b - Behavioral 
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

entity MUX_3_16b is
	port(
		in0, in1, in2 : in std_logic;
		sel : in std_logic_vector(1 downto 0);
		q : out std_logic);
end MUX_3_16b;

architecture Behavioral of MUX_3_16b is

begin
	q <= 
	in0 after 5 ns when sel = "10" else		-- 01 for shift left, 10 for shift right, the position of the 1 in the 2bit vector makes it easy to show direction 
	in1 after 5 ns when sel = "00" else
	in2 after 5 ns when sel = "01" else		
	'0' after 5 ns;

end Behavioral;

