--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:50:31 07/04/2016
-- Design Name:   
-- Module Name:   C:/Users/Andrew/Documents/CS2022/RPT PROJ/MP/SINGLE_POS_SHIFTER_16b_TB.vhd
-- Project Name:  MP
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SINGLE_POS_SHIFTER_16b
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
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY SINGLE_POS_SHIFTER_16b_TB IS
END SINGLE_POS_SHIFTER_16b_TB;
 
ARCHITECTURE behavior OF SINGLE_POS_SHIFTER_16b_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SINGLE_POS_SHIFTER_16b
    PORT(
         b : IN  std_logic_vector(15 downto 0);
         H_SEL : IN  std_logic_vector(1 downto 0);
         f : OUT  std_logic_vector(15 downto 0);
			carry_out : OUT std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal b : std_logic_vector(15 downto 0) := (others => '0');
   signal H_SEL : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal f : std_logic_vector(15 downto 0);
	signal carry_out : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SINGLE_POS_SHIFTER_16b PORT MAP (
          b => b,
          H_SEL => H_SEL,
          f => f,
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
	
		b <= "0000111100001111";
		H_SEL <= "00";
		wait for 10 ns;
		
		H_SEL <= "10";
		wait for 10 ns;
		
		H_SEL <= "01";
		wait for 10 ns;
		
		H_SEL <= "11"; 
		wait for 50 ns;
		
		b <= "1000000000000000";
		H_SEL <= "10";
		wait for 10 ns;
		
		H_SEL <= "01";
		wait for 10 ns;
--      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
