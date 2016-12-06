----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:37:54 08/08/2016 
-- Design Name: 
-- Module Name:    PROCESSOR - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity PROCESSOR is
port(
	reg_w : out std_logic;
	car_1 : out std_logic_vector(7 downto 0);
	PC_OP, reg_in, R0_out : out std_logic_vector(15 downto 0);
	C_WRD : out std_logic_vector(27 downto 0);
	clk : in std_logic);
end PROCESSOR;

architecture Behavioral of PROCESSOR is
	COMPONENT ALU_WITH_REG_FILE_16b
	PORT(
		---------		IN 		--------
		write_enable, MB_SEL, MD_SEL, MM_SEL, MW, clk : in std_logic;	
		A_ADDR, B_ADDR, D_ADDR : in std_logic_vector(3 downto 0);		
		F_SEL : in std_logic_vector(4 downto 0);		
		k_in, MM_1 : in std_logic_vector(15 downto 0);
		---------		OUT		--------
		data_out, into_reg, R0Q : out std_logic_vector(15 downto 0);		
		N, Z, C, V : out std_logic);
	END COMPONENT;
	
	COMPONENT CONTROL_MEMORY_WITH_CAR
	PORT(	
		---------		IN 		--------
		clk, N, Z, C, V, NOT_N, NOT_C : in std_logic;
		IR_IN : in std_logic_vector(15 downto 0);
		---------		OUT		--------
		F_SEL : out std_logic_vector(4 downto 0);
		car_1 : out std_logic_vector(7 downto 0);
		T_D, T_A, T_B, M_B, M_D, R_W, M_M, M_W, P_I, P_L : out std_logic;
		word : out std_logic_vector(27 downto 0);
		DR, SA, SB : out std_logic_vector(2 downto 0));
	END COMPONENT;
	
	COMPONENT PROGRAM_COUNTER
	PORT(
		---------		IN 		--------
		in0 : in std_logic_vector(15 downto 0);
		PL, PI, clk : in std_logic;
		---------		OUT		--------
		q : out std_logic_vector(15 downto 0));
	END COMPONENT;
	signal PI, PL, TD, TA, TB, MB, MD, RW, MM, MW, NEG, ZERO, CAR, oVer, NOT_N, NOT_C, WE : std_logic;
	signal word : std_logic_vector(27 downto 0);
	signal d_out, pc_out, pc_in, into_reg, R0Q : std_logic_vector(15 downto 0);
	signal car_out : std_logic_vector(7 downto 0);
	signal FUNC_SEL : std_logic_vector(4 downto 0);
	signal DA, AA, BA : std_logic_vector(3 downto 0);
	signal DR, SA, SB : std_logic_vector(2 downto 0);
	
begin
	DA <= TD & DR;
	AA <= TA & SA;
	BA <= TB & SB;
	
	-- COMPONENT ALU_WITH_REG_FILE --
	AWITHR : ALU_WITH_REG_FILE_16b PORT MAP(
		write_enable => RW,
		clk => clk,
		R0Q => R0Q,
		into_reg => into_reg,
		MB_SEL => MB,
		MD_SEL => MD,
		MM_SEL => MM,
		MW => MW,
		
		A_ADDR => AA,
		B_ADDR => BA,
		D_ADDR => DA,
		
		F_SEL => FUNC_SEL,
		k_in => "0000000000000000",
		MM_1 => pc_out,
		
		data_out => d_out,
		N => NEG,
		Z => ZERO,
		C => CAR, 
		V => oVer
	);
	pc_in <= "0000000000" & DR & SB;
	-- COMPONENT PROGRAM COUNTER --
	PC : PROGRAM_COUNTER PORT MAP(
		in0 => pc_in,
		PL => PL,
		PI => PI,
		clk => clk,
		q => pc_out
	);
	
	-- ¬N, ¬C --
		NOT_N <= not(NEG);
		NOT_C <= not(CAR);
		
	-- COMPONENT CONTROL MEMORY WITH CAR --
	CMWC : CONTROL_MEMORY_WITH_CAR PORT MAP(
		clk => clk,
		word => word,
		car_1 => car_out,
		N => NEG,
		Z => ZERO,
		C => CAR,
		V => oVer,
		NOT_N => NOT_N,
		NOT_C => NOT_C,
		IR_IN => d_out,
		F_SEL => FUNC_SEL,
		T_D => TD,
		T_A => TA,
		T_B => TB,
		M_B => MB, 
		M_D => MD,
		M_M => MM,
		R_W => RW,
		M_W => MW,
		P_I => PI,
		P_L => PL,
		DR => DR,
		SA => SA, 
		SB => SB
	);
	C_WRD <= word;
	PC_OP <= pc_out;
	car_1 <= car_out;
	reg_w <= RW;
	reg_in <= into_reg;
	R0_out <= R0Q;
end Behavioral;

