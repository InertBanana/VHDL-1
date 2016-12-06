--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:33:13 06/29/2016
-- Design Name:   
-- Module Name:   C:/Users/Andrew/Documents/CS2022/RPT PROJ/MP/FULL_ADDER_1b_TB.vhd
-- Project Name:  MP
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FULL_ADDER_1b
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
 
ENTITY FULL_ADDER_1b_TB IS
END FULL_ADDER_1b_TB;
 
ARCHITECTURE behavior OF FULL_ADDER_1b_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FULL_ADDER_1b
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         carry_in : IN  std_logic;
         sum : OUT  std_logic;
         carry_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal carry_in : std_logic := '0';

 	--Outputs
   signal sum : std_logic;
   signal carry_out : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FULL_ADDER_1b PORT MAP (
          a => a,
          b => b,
          carry_in => carry_in,
          sum => sum,
          carry_out => carry_out
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
		a <= '0';
		b <= '0';
		carry_in <= '0';
		
		wait for 10 ns;	
		a <= '1';
		b <= '0';
		carry_in <= '0';
		
		wait for 10 ns;	
		a <= '0';
		b <= '1';
		carry_in <= '0';
		
		wait for 10 ns;	
		a <= '1';
		b <= '1';
		carry_in <= '0';
		
      wait for 10 ns;	
		a <= '0';
		b <= '0';
		carry_in <= '1';
		
		wait for 10 ns;	
		a <= '1';
		b <= '0';
		carry_in <= '1';
		
		wait for 10 ns;	
		a <= '0';
		b <= '1';
		carry_in <= '1';
		
		wait for 10 ns;	
		a <= '1';
		b <= '1';
		carry_in <= '1';
--      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
