--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:00:09 06/27/2016
-- Design Name:   
-- Module Name:   C:/Users/Andrew/Documents/CS2022/RPT PROJ/MP/DEC_3_8_TB.vhd
-- Project Name:  MP
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DEC_3_8
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL; 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY DEC_3_8_TB IS
END DEC_3_8_TB;
 
ARCHITECTURE behavior OF DEC_3_8_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DEC_3_8
    PORT(
         in0 : IN  std_logic;
         in1 : IN  std_logic;
         in2 : IN  std_logic;
			in3 : IN  std_logic;
         q0 : OUT  std_logic;
         q1 : OUT  std_logic;
         q2 : OUT  std_logic;
         q3 : OUT  std_logic;
         q4 : OUT  std_logic;
         q5 : OUT  std_logic;
         q6 : OUT  std_logic;
         q7 : OUT  std_logic;
			q8 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal in0 : std_logic := '0';
   signal in1 : std_logic := '0';
   signal in2 : std_logic := '0';
	signal in3 : std_logic := '0';

 	--Outputs
   signal q0 : std_logic;
   signal q1 : std_logic;
   signal q2 : std_logic;
   signal q3 : std_logic;
   signal q4 : std_logic;
   signal q5 : std_logic;
   signal q6 : std_logic;
   signal q7 : std_logic;
	signal q8 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DEC_3_8 PORT MAP (
          in0 => in0,
          in1 => in1,
          in2 => in2,
			 in3 => in3,
          q0 => q0,
          q1 => q1,
          q2 => q2,
          q3 => q3,
          q4 => q4,
          q5 => q5,
          q6 => q6,
          q7 => q7,
			 q8 => q8
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;
		
		in0 <= '1';
		in1 <= '0';
		in2 <= '0';
		in3 <= '0';
		wait for 10 ns;

		in0 <= '0';
		in1 <= '1';
		in2 <= '0';
		in3 <= '0';
		wait for 10 ns;
				
		in0 <= '1';
		in1 <= '1';
		in2 <= '0';
		in3 <= '0';
		wait for 10 ns;
				
		in0 <= '0';
		in1 <= '0';
		in2 <= '1';
		in3 <= '0';
		wait for 10 ns;
				
		in0 <= '1';
		in1 <= '0';
		in2 <= '1';
		in3 <= '0';
		wait for 10 ns;
				
		in0 <= '0';
		in1 <= '1';
		in2 <= '1';
		in3 <= '0';
		wait for 10 ns;
				
		in0 <= '1';
		in1 <= '1';
		in2 <= '1';
		in3 <= '0';
		wait for 10 ns;
		
		in0 <= '0';
		in1 <= '0';
		in2 <= '0';
		in3 <= '1';
		wait for 10 ns;
--      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
