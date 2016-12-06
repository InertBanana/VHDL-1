----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:08:18 07/07/2016 
-- Design Name: 
-- Module Name:    ALU_CCV_MUX_1b - Behavioral 
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

entity ALU_CCV_MUX_1b is
	port(
		in0, in1 : in std_logic;
		func_sel : in std_logic_vector(4 downto 0);
		q : out std_logic);
		
end ALU_CCV_MUX_1b;

architecture Behavioral of ALU_CCV_MUX_1b is

begin
	q <= 
		in0 after 5 ns when func_sel(4 downto 3) = "00" else
		in1 after 5 ns when func_sel(4) = '1' else
		'0' after 5 ns;

end Behavioral;

