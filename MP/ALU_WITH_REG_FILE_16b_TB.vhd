--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:36:06 07/18/2016
-- Design Name:   
-- Module Name:   C:/Users/Andrew/Documents/CS2022/RPT PROJ/MP/ALU_WITH_REG_FILE_16b_TB.vhd
-- Project Name:  MP
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU_WITH_REG_FILE_16b
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
 
ENTITY ALU_WITH_REG_FILE_16b_TB IS
END ALU_WITH_REG_FILE_16b_TB;
 
ARCHITECTURE behavior OF ALU_WITH_REG_FILE_16b_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU_WITH_REG_FILE_16b
    PORT(
         write_enable : IN  std_logic;
         MB_SEL : IN  std_logic;
         MD_SEL : IN  std_logic;
			MM_SEL : IN std_logic;
			MW	: IN std_logic;
         clk : IN  std_logic;
         A_ADDR : IN  std_logic_vector(3 downto 0);
         B_ADDR : IN  std_logic_vector(3 downto 0);
         D_ADDR : IN  std_logic_vector(3 downto 0);
         F_SEL : IN  std_logic_vector(4 downto 0);
         k_in,MM_1 : IN  std_logic_vector(15 downto 0);
  --       address_out : OUT  std_logic_vector(15 downto 0);
         data_out : OUT  std_logic_vector(15 downto 0);
         N : OUT  std_logic;
         Z : OUT  std_logic;
         C : OUT  std_logic;
         V : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal write_enable : std_logic := '0';
   signal MB_SEL : std_logic := '0';
   signal MD_SEL : std_logic := '0';
	signal MM_SEL : std_logic := '0';
	signal MW : std_logic := '0';
   signal clk : std_logic := '0';
   signal A_ADDR : std_logic_vector(3 downto 0) := (others => '0');
   signal B_ADDR : std_logic_vector(3 downto 0) := (others => '0');
   signal D_ADDR : std_logic_vector(3 downto 0) := (others => '0');
   signal F_SEL : std_logic_vector(4 downto 0) := (others => '0');
   signal k_in,MM_1 : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
 --  signal address_out : std_logic_vector(15 downto 0);
   signal data_out : std_logic_vector(15 downto 0);
   signal N : std_logic;
   signal Z : std_logic;
   signal C : std_logic;
   signal V : std_logic;

   -- Clock period definitions
   constant clk_period : time := 85 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU_WITH_REG_FILE_16b PORT MAP (
          write_enable => write_enable,
          MB_SEL => MB_SEL,
          MD_SEL => MD_SEL,
			 MM_SEL => MM_SEL,
			 MW => MW,
			 MM_1 => MM_1,
          clk => clk,
          A_ADDR => A_ADDR,
          B_ADDR => B_ADDR,
          D_ADDR => D_ADDR,
          F_SEL => F_SEL,
          k_in => k_in,
--          address_out => address_out,
          data_out => data_out,
          N => N,
          Z => Z,
          C => C,
          V => V
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
		MM_1 <= "0000000000000000";
		k_in <= "0011001100110011";
		MW <= '0';
		write_enable <= '1';
		MB_SEL <= '0';
		MD_SEL <= '0';
		MM_SEL <= '1';
		F_SEL <= "10000";
		D_ADDR <= "0000";
		wait for clk_period;
		
		k_in <= "1100110011001100";
		D_ADDR <= "0001";
		wait for clk_period;
		
		write_enable <= '0';
		A_ADDR <= "0000";
		B_ADDR <= "0001";
		MB_SEL <= '1';
		F_SEL <= "00010";
		wait for clk_period;
		
		D_ADDR <= "0010";
		write_enable <= '1';
		wait for clk_period;
		
		write_enable <= '0';
		A_ADDR <= "0001";
		B_ADDR <= "0010";
		MM_SEL <= '0';
		MW <= '1';
		wait for clk_period;
		
		MW <= '0';

--      -- hold reset state for 100 ns.
--
--      wait for clk_period;

      -- insert stimulus here 

      wait;
   end process;

END;
