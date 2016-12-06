----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:15:58 07/04/2016 
-- Design Name: 
-- Module Name:    SINGLE_POS_SHIFTER_16b - Behavioral 
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

entity SINGLE_POS_SHIFTER_16b is
	port(
		b : in std_logic_vector(15 downto 0);
		H_SEL : in std_logic_vector(1 downto 0);
		f : out std_logic_vector(15 downto 0);
		carry_out : out std_logic);
end SINGLE_POS_SHIFTER_16b;

architecture Behavioral of SINGLE_POS_SHIFTER_16b is

	COMPONENT MUX_3_16b PORT(						-- in0 is the bit to the right, in1 is the original bit, in2 is the bit to the left
		in0, in1, in2 : in std_logic;				--	ie. if the shift is to the right, in2 becomes the result 
		sel : in std_logic_vector(1 downto 0);	-- if the shift is to the left, in0 becomes the result
		q : out std_logic);
	END COMPONENT;	
	--signal f_shifted : std_logic_vector(15 downto 0);
begin
	
	BIT_0 : MUX_3_16b PORT MAP(
		in0 => '0',					-- bit to the right here "wraps around" to be the MSB, as the original is the LSB
		in1 => b(0),
		in2 => b(1),			
		sel => H_SEL,					-- each mux takes the same H_SEL vector in order to ensure the shifter performs a correct shift
		q => f(0)
	);
	
	BIT_1 : MUX_3_16b PORT MAP(
		in0 => b(0),					
		in1 => b(1),
		in2 => b(2),			
		sel => H_SEL,
		q => f(1)
	);
	
	BIT_2 : MUX_3_16b PORT MAP(
		in0 => b(1),					
		in1 => b(2),
		in2 => b(3),			
		sel => H_SEL,
		q => f(2)
	);
	
	BIT_3 : MUX_3_16b PORT MAP(
		in0 => b(2),					
		in1 => b(3),
		in2 => b(4),			
		sel => H_SEL,
		q => f(3)
	);
	
	BIT_4 : MUX_3_16b PORT MAP(
		in0 => b(3),					
		in1 => b(4),
		in2 => b(5),			
		sel => H_SEL,
		q => f(4)
	);
	BIT_5 : MUX_3_16b PORT MAP(
		in0 => b(4),					
		in1 => b(5),
		in2 => b(6),			
		sel => H_SEL,
		q => f(5)
	);
	BIT_6 : MUX_3_16b PORT MAP(
		in0 => b(5),					
		in1 => b(6),
		in2 => b(7),			
		sel => H_SEL,
		q => f(6)
	);
	BIT_7 : MUX_3_16b PORT MAP(
		in0 => b(6),					
		in1 => b(7),
		in2 => b(8),			
		sel => H_SEL,
		q => f(7)
	);
	BIT_8 : MUX_3_16b PORT MAP(
		in0 => b(7),					
		in1 => b(8),
		in2 => b(9),			
		sel => H_SEL,
		q => f(8)
	);
	BIT_9 : MUX_3_16b PORT MAP(
		in0 => b(8),					
		in1 => b(9),
		in2 => b(10),			
		sel => H_SEL,
		q => f(9)
	);
	BIT_10 : MUX_3_16b PORT MAP(
		in0 => b(9),					
		in1 => b(10),
		in2 => b(11),			
		sel => H_SEL,
		q => f(10)
	)
	;BIT_11 : MUX_3_16b PORT MAP(
		in0 => b(10),					
		in1 => b(11),
		in2 => b(12),			
		sel => H_SEL,
		q => f(11)
	);
	BIT_12 : MUX_3_16b PORT MAP(
		in0 => b(11),					
		in1 => b(12),
		in2 => b(13),			
		sel => H_SEL,
		q => f(12)
	);
	BIT_13 : MUX_3_16b PORT MAP(
		in0 => b(12),					
		in1 => b(13),
		in2 => b(14),			
		sel => H_SEL,
		q => f(13)
	);
	BIT_14 : MUX_3_16b PORT MAP(
		in0 => b(13),					
		in1 => b(14),
		in2 => b(15),			
		sel => H_SEL,
		q => f(14)
	);
	BIT_15 : MUX_3_16b PORT MAP(
		in0 => b(14),					
		in1 => b(15),
		in2 => '0',				-- as with LSB right bit, the MSB left bit is the LSB as it wraps back around the halfword		
		sel => H_SEL,
		q => f(15)
	);
	carry_out <= 
		b(0) after 5 ns when H_SEL = "01" else
		b(15) after 5 ns when H_SEL = "10" else
		'0';

end Behavioral;

