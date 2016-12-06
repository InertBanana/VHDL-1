----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:24:58 07/27/2016 
-- Design Name: 
-- Module Name:    MUX_S - Behavioral 
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

entity MUX_S is
PORT(
	N, Z, C, V, notN, notC : in std_logic;
	mux_s_sel : in std_logic_vector(2 downto 0);
	q : out std_logic);
end MUX_S;

architecture Behavioral of MUX_S is

begin
	q <= 
		'0' after 5 ns when mux_s_sel = "000" else
		'1' after 5 ns when mux_s_sel = "001" else
		 C  after 5 ns when mux_s_sel = "010" else
		 V  after 5 ns when mux_s_sel = "011" else
		 Z  after 5 ns when mux_s_sel = "100" else
		 N  after 5 ns when mux_s_sel = "101" else
	   notC  after 5 ns when mux_s_sel = "110" else
		notN  after 5 ns when mux_s_sel = "111" else
		'0' after 5 ns;

end Behavioral;

