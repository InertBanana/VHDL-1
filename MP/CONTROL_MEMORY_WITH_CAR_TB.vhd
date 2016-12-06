--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:18:37 07/28/2016
-- Design Name:   
-- Module Name:   C:/Users/Andrew/Documents/CS2022/RPT PROJ/MP/CONTROL_MEMORY_WITH_CAR_TB.vhd
-- Project Name:  MP
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CONTROL_MEMORY_WITH_CAR
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
 
ENTITY CONTROL_MEMORY_WITH_CAR_TB IS
END CONTROL_MEMORY_WITH_CAR_TB;
 
ARCHITECTURE behavior OF CONTROL_MEMORY_WITH_CAR_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CONTROL_MEMORY_WITH_CAR
    PORT(
         clk, N, Z, C, V, NOT_N, NOT_C  : IN  std_logic;
			car_1 : out std_logic_vector(7 downto 0);
         IR_IN : IN  std_logic_vector(15 downto 0);
         word : OUT  std_logic_vector(27 downto 0);
			DR, SA, SB : out std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk, N, Z, C, V, NOT_N, NOT_C  : std_logic := '0';
   signal IR_IN : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal word : std_logic_vector(27 downto 0);
   signal car_1 : std_logic_vector(7 downto 0) := (others => '0');
	signal DR, SA, SB : std_logic_vector(2 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CONTROL_MEMORY_WITH_CAR PORT MAP (
			 N=>N,
			 car_1=>car_1,
			 Z=>Z, 
			 C=>C, 
			 V=>V, 
			 NOT_N => NOT_N,
			 NOT_C => NOT_C, 
          clk => clk,
          IR_IN => IR_IN,
          word => word,
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
		C <= '0';
		N <= '0';
		NOT_C <= '1';
		NOT_N <= '1';
		V <= '0';
		Z <= '0';
		IR_IN <= "1101011111000101";		-- send to address 6B, DR = 7,  SA =0, SB = 5
      wait for clk_period*6;

--		mux_s_out <= '0';
      -- insert stimulus here 

      wait;
   end process;

END;
