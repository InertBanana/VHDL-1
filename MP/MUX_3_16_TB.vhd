--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:25:34 07/04/2016
-- Design Name:   
-- Module Name:   C:/Users/Andrew/Documents/CS2022/RPT PROJ/MP/MUX_3_16_TB.vhd
-- Project Name:  MP
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUX_3_16b
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
 
ENTITY MUX_3_16_TB IS
END MUX_3_16_TB;
 
ARCHITECTURE behavior OF MUX_3_16_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX_3_16b
    PORT(
         in0 : IN  std_logic;
         in1 : IN  std_logic;
         in2 : IN  std_logic;
         sel : IN  std_logic_vector(1 downto 0);
         q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal in0 : std_logic := '0';
   signal in1 : std_logic := '0';
   signal in2 : std_logic := '0';
   signal sel : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal q : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX_3_16b PORT MAP (
          in0 => in0,
          in1 => in1,
          in2 => in2,
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
-- 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;	
		
		in0 <= '1';
		in1 <= '1';
		in2 <= '1';
		sel <= "11";
		wait for 10 ns;
		
		in0 <= '1';
		in1 <= '0';
		in2 <= '0';
		sel <= "00";
		wait for 10 ns;
		
		in0 <= '1';
		in1 <= '1';
		in2 <= '1';
		sel <= "11";
		wait for 10 ns;
		
		in0 <= '0';
		in1 <= '1';
		in2 <= '0';
		sel <= "01";
		wait for 10 ns;
		
		in0 <= '1';
		in1 <= '1';
		in2 <= '1';
		sel <= "11";
		wait for 10 ns;
		
		in0 <= '1';
		in1 <= '0';
		in2 <= '1';
		sel <= "10";
		wait for 10 ns;
--      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
