--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:17:18 07/28/2016
-- Design Name:   
-- Module Name:   C:/Users/Andrew/Documents/CS2022/RPT PROJ/MP/MUX_S_TB.vhd
-- Project Name:  MP
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUX_S
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
 
ENTITY MUX_S_TB IS
END MUX_S_TB;
 
ARCHITECTURE behavior OF MUX_S_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX_S
    PORT(
         N : IN  std_logic;
         Z : IN  std_logic;
         C : IN  std_logic;
         V : IN  std_logic;
         notN : IN  std_logic;
         notC : IN  std_logic;
         mux_s_sel : IN  std_logic_vector(2 downto 0);
         q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal N : std_logic := '0';
   signal Z : std_logic := '0';
   signal C : std_logic := '0';
   signal V : std_logic := '0';
   signal notN : std_logic := '0';
   signal notC : std_logic := '0';
   signal mux_s_sel : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal q : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX_S PORT MAP (
          N => N,
          Z => Z,
          C => C,
          V => V,
          notN => notN,
          notC => notC,
          mux_s_sel => mux_s_sel,
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
--	N <= '0';
--	Z <= '0';
--	C <= '0';
--	V <= '0';
--	notN <= '1';
--	notC <= '1';
--	
--	mux_s_sel <= "000";
--	wait for 10 ns;
--	mux_s_sel <= "001";
--	wait for 10 ns;
--	mux_s_sel <= "010";
--	wait for 10 ns;
--	mux_s_sel <= "011";
--	wait for 10 ns;
--	mux_s_sel <= "100";
--	wait for 10 ns;
--	mux_s_sel <= "101";
--	wait for 10 ns;
--	mux_s_sel <= "110";
--	wait for 10 ns;
--	mux_s_sel <= "111";
--	wait for 10 ns;
--      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
