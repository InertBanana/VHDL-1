--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:26:25 07/08/2016
-- Design Name:   
-- Module Name:   C:/Users/Andrew/Documents/CS2022/RPT PROJ/MP/ALU_TB.vhd
-- Project Name:  MP
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU_16b
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
 
ENTITY ALU_TB IS
END ALU_TB;
 
ARCHITECTURE behavior OF ALU_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU_16b
    PORT(
         A : IN  std_logic_vector(15 downto 0);
         B : IN  std_logic_vector(15 downto 0);
         F_SEL : IN  std_logic_vector(4 downto 0);
         V : OUT  std_logic;
         C : OUT  std_logic;
         N : OUT  std_logic;
         Z : OUT  std_logic;
         F : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(15 downto 0) := (others => '0');
   signal B : std_logic_vector(15 downto 0) := (others => '0');
   signal F_SEL : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal V : std_logic;
   signal C : std_logic;
   signal N : std_logic;
   signal Z : std_logic;
   signal F : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU_16b PORT MAP (
          A => A,
          B => B,
          F_SEL => F_SEL,
          V => V,
          C => C,
          N => N,
          Z => Z,
          F => F
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
-- 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		A <= "0000111100001111";	
		B <= "0011001011110000";	-- ¬B = 1111 1111 0000 1111	
												  
		F_SEL <= "11000";				
		wait for 90 ns;
		
		B <= "1000000000110000";	
		wait for 90 ns;
		
		B <= "0000000000000000";	
		wait for 90 ns;
		
		B <= "1111111111111111";	
		wait for 90 ns;
		
		B <= "0111111111111111";	
		wait for 90 ns;
		
		B <= "1111000011110001";	
		wait for 90 ns;				 

      wait;
   end process;

END;
