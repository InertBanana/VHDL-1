--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:00:12 07/24/2016
-- Design Name:   
-- Module Name:   C:/Users/Andrew/Documents/CS2022/RPT PROJ/MP/MEMORY_M_512x16_TB.vhd
-- Project Name:  MP
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MEMORY_M_512x16
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
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY MEMORY_M_512x16_TB IS
END MEMORY_M_512x16_TB;
 
ARCHITECTURE behavior OF MEMORY_M_512x16_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MEMORY_M_512x16
    PORT(
         data_in : IN  std_logic_vector(15 downto 0);
         address_in : IN  std_logic_vector(15 downto 0);
         mw, mr : IN  std_logic;
         clk : IN  std_logic;
         data_out : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal data_in : std_logic_vector(15 downto 0) := (others => '0');
   signal address_in : std_logic_vector(15 downto 0) := (others => '0');
   signal mw, mr : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal data_out : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MEMORY_M_512x16 PORT MAP (
          data_in => data_in,
          address_in => address_in,
          mw => mw,
			 mr => mr,
          clk => clk,
          data_out => data_out
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

      wait for clk_period;
		data_in <= "0111011101110111";
		address_in <= "0000000000000000";
		mw <= '0';
		mr <= '1';
		wait for clk_period;
		mw <= '1';
		mr <= '0';
		wait for clk_period;
		mw <= '0';
		mr <= '1';
		wait for clk_period;
		

      -- insert stimulus here 

      wait;
   end process;

END;
