--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:57:30 07/28/2016
-- Design Name:   
-- Module Name:   C:/Users/Andrew/Documents/CS2022/RPT PROJ/MP/MUX_C_TB.vhd
-- Project Name:  MP
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUX_C_8b
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
 
ENTITY MUX_C_TB IS
END MUX_C_TB;
 
ARCHITECTURE behavior OF MUX_C_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX_C_8b
    PORT(
         in0 : IN  std_logic_vector(7 downto 0);
         in1 : IN  std_logic_vector(7 downto 0);
         MC : IN  std_logic;
         q : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal in0 : std_logic_vector(7 downto 0) := (others => '0');
   signal in1 : std_logic_vector(7 downto 0) := (others => '0');
   signal MC : std_logic := '0';

 	--Outputs
   signal q : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX_C_8b PORT MAP (
          in0 => in0,
          in1 => in1,
          MC => MC,
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
-- 

   -- Stimulus process
   stim_proc: process
   begin		
		
		in0 <= "01010101";
		in1 <= "00000000";
		MC <= '0';
		wait for 10 ns;
		MC <= '1';
		wait for 10 ns;
      wait;
   end process;

END;
