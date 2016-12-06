--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:12:42 08/12/2016
-- Design Name:   
-- Module Name:   C:/Users/Andrew/Documents/CS2022/RPT PROJ/MP/PROCESSOR_TB.vhd
-- Project Name:  MP
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PROCESSOR
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
 
ENTITY PROCESSOR_TB IS
END PROCESSOR_TB;
 
ARCHITECTURE behavior OF PROCESSOR_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PROCESSOR
    PORT(
	   PC_OP, reg_in, R0_out  : out std_logic_vector(15 downto 0);
	 	car_1 : out std_logic_vector(7 downto 0);
		C_WRD : out std_logic_vector(27 downto 0);
		reg_w : out std_logic;
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
	signal C_WRD : std_logic_vector(27 downto 0) := (others => '0');
	signal PC_OP, reg_in, R0_out : std_logic_vector(15 downto 0) := (others => '0');
   signal clk, reg_w : std_logic := '0';
	signal car_1 : std_logic_vector(7 downto 0) := (others => '0');
   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PROCESSOR PORT MAP (
			PC_OP => PC_OP,
			R0_out => R0_out,
			reg_in => reg_in,
			car_1=>car_1,
         clk => clk,
			reg_w => reg_w,
			C_WRD => C_WRD
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
   --   wait for 100 ns;	

      --wait for clk_period;
		
	--	wait for clk_period * 100;

      -- insert stimulus here 

      wait;
   end process;

END;
