--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:18:38 07/24/2016
-- Design Name:   
-- Module Name:   C:/Users/Andrew/Documents/CS2022/RPT PROJ/MP/INSTRUCTION_REGISTER_16b_TB.vhd
-- Project Name:  MP
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: INSTRUCTION_REGISTER_16b
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
 
ENTITY INSTRUCTION_REGISTER_16b_TB IS
END INSTRUCTION_REGISTER_16b_TB;
 
ARCHITECTURE behavior OF INSTRUCTION_REGISTER_16b_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT INSTRUCTION_REGISTER_16b
    PORT(
         in0 : IN  std_logic_vector(15 downto 0);
         IL : IN  std_logic;
         clk : IN  std_logic;
         OPCODE : OUT  std_logic_vector(6 downto 0);
         DR : OUT  std_logic_vector(2 downto 0);
         SA : OUT  std_logic_vector(2 downto 0);
         SB : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal in0 : std_logic_vector(15 downto 0) := (others => '0');
   signal IL : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal OPCODE : std_logic_vector(6 downto 0);
   signal DR : std_logic_vector(2 downto 0);
   signal SA : std_logic_vector(2 downto 0);
   signal SB : std_logic_vector(2 downto 0);

   -- Clock period definitions
   constant clk_period : time := 85 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: INSTRUCTION_REGISTER_16b PORT MAP (
          in0 => in0,
          IL => IL,
          clk => clk,
          OPCODE => OPCODE,
          DR => DR,
          SA => SA,
          SB => SB
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
		
		in0 <= "1110000111100001";
		IL <= '0';
      wait for clk_period;
		IL <= '1';
		wait for clk_period;
      -- insert stimulus here 

      wait;
   end process;

END;
