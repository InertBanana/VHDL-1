--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:51:46 07/28/2016
-- Design Name:   
-- Module Name:   C:/Users/Andrew/Documents/CS2022/RPT PROJ/MP/PROGRAM_COUNTER_TB.vhd
-- Project Name:  MP
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PROGRAM_COUNTER
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
 
ENTITY PROGRAM_COUNTER_TB IS
END PROGRAM_COUNTER_TB;
 
ARCHITECTURE behavior OF PROGRAM_COUNTER_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PROGRAM_COUNTER
    PORT(
         in0 : IN  std_logic_vector(15 downto 0);
         PL : IN  std_logic;
         PI : IN  std_logic;
         clk : IN  std_logic;
         q : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal in0 : std_logic_vector(15 downto 0) := (others => '0');
   signal PL : std_logic := '0';
   signal PI : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal q : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PROGRAM_COUNTER PORT MAP (
          in0 => in0,
          PL => PL,
          PI => PI,
          clk => clk,
          q => q
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
--		in0 <= X"0000";
--		PL <= '1';
--		PI <= '0';
--      wait for clk_period;
		
		in0 <= X"0000";
		PL <= '1';
		PI <= '0';
      wait for clk_period;
		
		in0 <= X"0F01";
		PL <= '0';
		PI <= '1';
      wait for clk_period * 1;
		
		PI <= '0';
		wait for clk_period;
      -- insert stimulus here 

      wait;
   end process;

END;
