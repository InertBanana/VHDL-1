--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:21:32 07/06/2016
-- Design Name:   
-- Module Name:   C:/Users/Andrew/Documents/CS2022/RPT PROJ/MP/ALU_MUX_OUT_16b_TB.vhd
-- Project Name:  MP
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU_MUX_OUT_16b
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
 
ENTITY ALU_MUX_OUT_16b_TB IS
END ALU_MUX_OUT_16b_TB;
 
ARCHITECTURE behavior OF ALU_MUX_OUT_16b_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU_MUX_OUT_16b
    PORT(
         add_in : IN  std_logic_vector(15 downto 0);
         l_unit_in : IN  std_logic_vector(15 downto 0);
         shifter_in : IN  std_logic_vector(15 downto 0);
         sel : IN  std_logic_vector(1 downto 0);
         q : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal add_in : std_logic_vector(15 downto 0) := (others => '0');
   signal l_unit_in : std_logic_vector(15 downto 0) := (others => '0');
   signal shifter_in : std_logic_vector(15 downto 0) := (others => '0');
   signal sel : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal q : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU_MUX_OUT_16b PORT MAP (
          add_in => add_in,
          l_unit_in => l_unit_in,
          shifter_in => shifter_in,
          sel => sel,
          q => q
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
		add_in <= "0000111100001111";
		shifter_in <= "1111000011110000";
		l_unit_in <= "0000000011111111";
		sel <= "00";
		
		wait for 10 ns;
		
		sel <= "01";
		wait for 10 ns;
		
		sel <= "11";
		wait for 10 ns;
	
		sel <= "00"; 
		wait for 10 ns;
		
		sel <= "10"; 
		wait for 10 ns;
--      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
