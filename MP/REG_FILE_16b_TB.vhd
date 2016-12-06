--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:10:28 07/17/2016
-- Design Name:   
-- Module Name:   C:/Users/Andrew/Documents/CS2022/RPT PROJ/MP/REG_FILE_16b_TB.vhd
-- Project Name:  MP
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: REG_FILE_16b
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
 
ENTITY REG_FILE_16b_TB IS
END REG_FILE_16b_TB;
 
ARCHITECTURE behavior OF REG_FILE_16b_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT REG_FILE_16b
    PORT(
         data : IN  std_logic_vector(15 downto 0);
         DEST_REG : IN  std_logic_vector(3 downto 0);
         A_SRC : IN  std_logic_vector(3 downto 0);
         B_SRC : IN  std_logic_vector(3 downto 0);
--         data_src : IN  std_logic_vector(1 downto 0);
         clk, write_enable : IN  std_logic;
--			R0,R1,R2,R3,R4,R5,R6,R7 : OUT  std_logic_vector(15 downto 0);
         A_DATA_OUT : OUT  std_logic_vector(15 downto 0);
         B_DATA_OUT : OUT  std_logic_vector(15 downto 0)	
        );
    END COMPONENT;
    

   --Inputs
   signal data: std_logic_vector(15 downto 0) := (others => '0');
--	signal R0,R1,R2,R3,R4,R5,R6,R7 : std_logic_vector(15 downto 0) := (others => '0');
   signal DEST_REG : std_logic_vector(3 downto 0) := (others => '0');
   signal A_SRC : std_logic_vector(3 downto 0) := (others => '0');
   signal B_SRC : std_logic_vector(3 downto 0) := (others => '0');
--   signal data_src : std_logic_vector(1 downto 0) := (others => '0');
   signal clk, write_enable : std_logic := '0';

 	--Outputs
   signal A_DATA_OUT : std_logic_vector(15 downto 0);
   signal B_DATA_OUT : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 85 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: REG_FILE_16b PORT MAP (
          data => data,
          DEST_REG => DEST_REG,
          A_SRC => A_SRC,
          B_SRC => B_SRC,
--          data_src => data_src,
          clk => clk,
          A_DATA_OUT => A_DATA_OUT,
          B_DATA_OUT => B_DATA_OUT,
			 write_enable => write_enable
--			 R0 => R0,
--			 R1 => R1,
--			 R2 => R2,
--			 R3 => R3,
--			 R4 => R4,
--			 R5 => R5,
--			 R6 => R6,
--			 R7 => R7
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
		write_enable <= '1';
      data <= "0000000000000001";
		DEST_REG <= "0000";
--		data_src <= "00";
		A_SRC <= "0111";
		B_SRC <= "0000";
      wait for clk_period;
      
		data <= "0000000000000010";
		DEST_REG <= "0001";
		wait for clk_period;
		
		data <= "0000000000000011";
		DEST_REG <= "0010";
		wait for clk_period;
		
		data <= "0000000000000100";
		DEST_REG <= "0011";
		wait for clk_period;
		
		data <= "0000000000000101";
		DEST_REG <= "0100";
		wait for clk_period;
		
		data <= "0000000000000110";
		DEST_REG <= "0101";
		wait for clk_period;
		
		data <= "0000000000000111";
		DEST_REG <= "0110";
		wait for clk_period;
		
		data <= "0000000000001000";
		DEST_REG <= "0111";	
		wait for clk_period;
		
		write_enable <= '0';
		data <= "1111111111111111";
		DEST_REG <= "1000";		
		wait for clk_period;
		
		write_enable <= '1';

--------------------------------------------------------------------------------------------------------------------------------------------------------
------	TESTING MOVING DATA BETWEEN REGISTERS - FROM THE A_PATH TO ALL REGISTERS 0-7 -------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------
--
--		data_src <= "01";
--		DEST_REG <= "000";
--		wait for clk_period;
--
--		DEST_REG <= "001";
--		wait for clk_period;
--		
--		DEST_REG <= "010";
--		wait for clk_period;
--		
--		DEST_REG <= "011";
--		wait for clk_period;
--		
--		DEST_REG <= "100";
--		wait for clk_period;
--		
--		DEST_REG <= "101";
--		wait for clk_period;
--		
--		DEST_REG <= "110";
--		wait for clk_period;
--		
--		DEST_REG <= "111";	
--		wait for clk_period * 2;
--		
--		data_src <= "00";
--		data <= "1111111111110000";
--		DEST_REG <= "000";
--		wait for clk_period * 2;
----------------------------------------------------------------------------------------------------------------------------------------------------------
--------	TESTING MOVING DATA BETWEEN REGISTERS - FROM THE B_PATH TO ALL REGISTERS 7-0 -------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------
--
--		data_src <= "10";
--		DEST_REG <= "111";
--		wait for clk_period;
--
--		DEST_REG <= "110";
--		wait for clk_period;
--		
--		DEST_REG <= "101";
--		wait for clk_period;
--		
--		DEST_REG <= "100";
--		wait for clk_period;
--		
--		DEST_REG <= "011";
--		wait for clk_period;
--		
--		DEST_REG <= "010";
--		wait for clk_period;
--		
--		DEST_REG <= "001";
--		wait for clk_period;
--		
--		DEST_REG <= "000";	
--		wait for clk_period;	
      wait;
   end process;

END;
