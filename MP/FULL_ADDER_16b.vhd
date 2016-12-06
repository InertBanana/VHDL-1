----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:50:17 06/29/2016 
-- Design Name: 
-- Module Name:    FULL_ADDER_16b - Behavioral 
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

entity FULL_ADDER_16b is
	port(a, b : in std_logic_vector(15 downto 0);
		carry_in : in std_logic;
		sum : out std_logic_vector(15 downto 0);
		carry_out : out std_logic);
end FULL_ADDER_16b;

architecture Behavioral of FULL_ADDER_16b is

signal carry : std_logic_vector(15 downto 0);

	COMPONENT FULL_ADDER_1b PORT(
		a, b : in std_logic;
		carry_in : in std_logic;
		sum, carry_out : out std_logic);
	END COMPONENT;
	
begin
	
	ADD0 : FULL_ADDER_1b PORT MAP(
		a => a(0),
		b => b(0),
		carry_in => carry_in,
		sum => sum(0),
		carry_out => carry(0));
		
	ADD1 : FULL_ADDER_1b PORT MAP(
		a => a(1),
		b => b(1),
		sum => sum(1),
		carry_in => carry(0),
		carry_out => carry(1));

	ADD2 : FULL_ADDER_1b PORT MAP(
		a => a(2),
		b => b(2),
		sum => sum(2),
		carry_in => carry(1),
		carry_out => carry(2));

	ADD3 : FULL_ADDER_1b PORT MAP(
		a => a(3),
		b => b(3),
		sum => sum(3),
		carry_in => carry(2),
		carry_out => carry(3));

	ADD4 : FULL_ADDER_1b PORT MAP(
		a => a(4),
		b => b(4),
		sum => sum(4),
		carry_in => carry(3),
		carry_out => carry(4));

	ADD5 : FULL_ADDER_1b PORT MAP(
		a => a(5),
		b => b(5),
		sum => sum(5),
		carry_in => carry(4),
		carry_out => carry(5));

	ADD6 : FULL_ADDER_1b PORT MAP(
		a => a(6),
		b => b(6),
		sum => sum(6),
		carry_in => carry(5),
		carry_out => carry(6));

	ADD7 : FULL_ADDER_1b PORT MAP(
		a => a(7),
		b => b(7),
		sum => sum(7),
		carry_in => carry(6),
		carry_out => carry(7));

	ADD8 : FULL_ADDER_1b PORT MAP(
		a => a(8),
		b => b(8),
		sum => sum(8),
		carry_in => carry(7),
		carry_out => carry(8));

	ADD9 : FULL_ADDER_1b PORT MAP(
		a => a(9),
		b => b(9),
		sum => sum(9),
		carry_in => carry(8),
		carry_out => carry(9));

	ADD10 : FULL_ADDER_1b PORT MAP(
		a => a(10),
		b => b(10),
		sum => sum(10),
		carry_in => carry(9),
		carry_out => carry(10));

	ADD11 : FULL_ADDER_1b PORT MAP(
		a => a(11),
		b => b(11),
		sum => sum(11),
		carry_in => carry(10),
		carry_out => carry(11));

	ADD12 : FULL_ADDER_1b PORT MAP(
		a => a(12),
		b => b(12),
		sum => sum(12),
		carry_in => carry(11),
		carry_out => carry(12));

	ADD13 : FULL_ADDER_1b PORT MAP(
		a => a(13),
		b => b(13),
		sum => sum(13),
		carry_in => carry(12),
		carry_out => carry(13));

	ADD14 : FULL_ADDER_1b PORT MAP(
		a => a(14),
		b => b(14),
		sum => sum(14),
		carry_in => carry(13),
		carry_out => carry(14));

	ADD15 : FULL_ADDER_1b PORT MAP(
		a => a(15),
		b => b(15),
		sum => sum(15),
		carry_in => carry(14),
		carry_out => carry(15));

carry_out <= carry(15);

end Behavioral;

