----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:24:15 08/31/2016 
-- Design Name: 
-- Module Name:    BARREL_SHIFTER_4b - Behavioral 
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

entity BARREL_SHIFTER_4b is
port(
	in0 : in std_logic_vector(3 downto 0);
	sel : in std_logic_vector(1 downto 0);
	q : out std_logic_vector(3 downto 0));
end BARREL_SHIFTER_4b;

architecture Behavioral of BARREL_SHIFTER_4b is
	
	COMPONENT MUX_4_1_1b is
	PORT(
		in0, in1, in2, in3 : in std_logic;
		sel : in std_logic_vector(1 downto 0);
		q : out std_logic);
	END COMPONENT;
	
	signal D3, D2, D1, D0, Y3, Y2, Y1, Y0 : std_logic;
begin
	D0 <= in0(0);
	D1 <= in0(1);
	D2 <= in0(2);
	D3 <= in0(3);
	
	M0 : MUX_4_1_1b PORT MAP(
		in0 => D0,
		in1 => D3, 
		in2 => D2, 
		in3 => D1,
		sel => sel,
		q => Y0
	);
	
	M1 : MUX_4_1_1b PORT MAP(
		in0 => D1,
		in1 => D0, 
		in2 => D3, 
		in3 => D2,
		sel => sel,
		q => Y1
	);
	
	M2 : MUX_4_1_1b PORT MAP(
		in0 => D2,
		in1 => D1, 
		in2 => D0, 
		in3 => D3,
		sel => sel,
		q => Y2
	);
	
	M3 : MUX_4_1_1b PORT MAP(
		in0 => D3,
		in1 => D2, 
		in2 => D1, 
		in3 => D0,
		sel => sel,
		q => Y3
	);
	q(0) <= Y0;
	q(1) <= Y1;
	q(2) <= Y2;
	q(3) <= Y3;

end Behavioral;

