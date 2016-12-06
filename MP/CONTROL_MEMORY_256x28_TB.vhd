--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:34:36 07/24/2016
-- Design Name:   
-- Module Name:   C:/Users/Andrew/Documents/CS2022/RPT PROJ/MP/CONTROL_MEMORY_256x28_TB.vhd
-- Project Name:  MP
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CONTROL_MEMORY_256x28
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
 
ENTITY CONTROL_MEMORY_256x28_TB IS
END CONTROL_MEMORY_256x28_TB;
 
ARCHITECTURE behavior OF CONTROL_MEMORY_256x28_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CONTROL_MEMORY_256x28
    PORT(
         MW : OUT  std_logic;
         MM : OUT  std_logic;
         RW : OUT  std_logic;
         MD : OUT  std_logic;
         FUNC_SEL : OUT  std_logic_vector(4 downto 0);
         MB : OUT  std_logic;
         TB : OUT  std_logic;
         TA : OUT  std_logic;
         TD : OUT  std_logic;
         PL : OUT  std_logic;
         PI : OUT  std_logic;
         IL : OUT  std_logic;
         MC : OUT  std_logic;
         MUX_S : OUT  std_logic_vector(2 downto 0);
         NA : OUT  std_logic_vector(7 downto 0);
         IN_CAR : IN  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal IN_CAR : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal MW : std_logic;
   signal MM : std_logic;
   signal RW : std_logic;
   signal MD : std_logic;
   signal FUNC_SEL : std_logic_vector(4 downto 0);
   signal MB : std_logic;
   signal TB : std_logic;
   signal TA : std_logic;
   signal TD : std_logic;
   signal PL : std_logic;
   signal PI : std_logic;
   signal IL : std_logic;
   signal MC : std_logic;
   signal MUX_S : std_logic_vector(2 downto 0);
   signal NA : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CONTROL_MEMORY_256x28 PORT MAP (
          MW => MW,
          MM => MM,
          RW => RW,
          MD => MD,
          FUNC_SEL => FUNC_SEL,
          MB => MB,
          TB => TB,
          TA => TA,
          TD => TD,
          PL => PL,
          PI => PI,
          IL => IL,
          MC => MC,
          MUX_S => MUX_S,
          NA => NA,
          IN_CAR => IN_CAR
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
		IN_CAR <= "00110011";
		wait for 10 ns;
		IN_CAR <= "11111111";
		wait for 10 ns;
--      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
