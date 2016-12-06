----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:04:28 06/27/2016 
-- Design Name: 
-- Module Name:    DEC_3_8 - Behavioral 
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

entity DEC_3_8 is
	port(
		in3, in2, in1, in0 : in std_logic;
		q0, q1, q2, q3, q4, q5, q6, q7, q8 : out std_logic);
end DEC_3_8;

architecture Behavioral of DEC_3_8 is
begin
	q0 <= (not in3) and (not in2) and (not in1) and (not in0);
	q1 <= (not in3) and (not in2) and (not in1) and 	 (in0);
	q2 <= (not in3) and (not in2) and 	  (in1) and (not in0);
	q3 <= (not in3) and (not in2) and 	  (in1) and  	 (in0);
	
	q4 <= (not in3) and 	   (in2) and (not in1) and (not in0);
	q5 <= (not in3) and 	   (in2) and (not in1) and  	 (in0);
	q6 <= (not in3) and     (in2) and 	  (in1) and (not in0);
	q7 <= (not in3) and 	   (in2) and 	  (in1) and 	 (in0);
	q8 <= 	 (in3) and (not in2) and (not in1) and (not in0);


end Behavioral;

