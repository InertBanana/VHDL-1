----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:24:35 07/15/2016 
-- Design Name: 
-- Module Name:    ALU_WITH_REG_FILE_16b - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU_WITH_REG_FILE_16b is
	port(
		write_enable,
		MB_SEL,
		MD_SEL,
		MM_SEL,
		MW,
		clk : in std_logic;
		
		A_ADDR, 
		B_ADDR, 
		D_ADDR : in std_logic_vector(3 downto 0);
		
		F_SEL : in std_logic_vector(4 downto 0);
		
		k_in, MM_1 : in std_logic_vector(15 downto 0);
		
		data_out, into_reg, R0Q : out std_logic_vector(15 downto 0);
		
		N,
		Z,
		C, 
		V : out std_logic);
end ALU_WITH_REG_FILE_16b;

architecture Behavioral of ALU_WITH_REG_FILE_16b is
	
	COMPONENT MEMORY_M_512x16
	PORT(
	data_in, address_in : in std_logic_vector(15 downto 0);
	mw, mr, clk : in std_logic;
	data_out : out std_logic_vector(15 downto 0));
	END COMPONENT;
	
	COMPONENT MUX_2_16b 
	PORT(
		in0, in1 : in std_logic_vector(15 downto 0);
		sel : in std_logic;
		q : out std_logic_vector(15 downto 0));
	END COMPONENT;
	
	COMPONENT ALU_16b
	PORT(
		A, B : in std_logic_vector(15 downto 0);  
		F_SEL : in std_logic_vector(4 downto 0);
		V,C,N,Z : out std_logic; 						
		F : out std_logic_vector(15 downto 0));	
	END COMPONENT;
	
	COMPONENT REG_FILE_16b
	PORT(
		data : in std_logic_vector(15 downto 0);										-- external signal, data from source outside the register file (to be written to a register)
		DEST_REG, A_SRC, B_SRC : in std_logic_vector(3 downto 0);				-- D_SRC decides where input data goes (feeds decoder), A_SRC, B_SRC feed the A_MUX_OUT and B_MUX_OUT respectively
		clk, write_enable : in std_logic;																	-- clock input
		A_DATA_OUT, B_DATA_OUT, R0 : out std_logic_vector(15 downto 0));			-- ports fed by the outputs of each register 

	END COMPONENT;
	
	signal A_DATA, B_DATA, MUX_B_OUT, F_DATA, MUX_D_OUT, MUX_M_OUT, MUX_D_IN_1, R0 : std_logic_vector(15 downto 0);
	signal FUNC_SEL : std_logic_vector(4 downto 0);
	signal NEG, ZERO, CAR, oVer : std_logic; 
begin
	
	MEMORY : MEMORY_M_512x16 PORT MAP(
		data_in => MUX_B_OUT,
		address_in => MUX_M_OUT,
		mw => MW,
		mr => '1',
		clk => clk,
		data_out => MUX_D_IN_1
	);
	
	REG_FILE : REG_FILE_16b PORT MAP(
		data => MUX_D_OUT,
		R0 => R0,
		A_DATA_OUT => A_DATA,
		B_DATA_OUT => B_DATA,
		clk => clk,
		DEST_REG => D_ADDR,
		A_SRC => A_ADDR,
		B_SRC => B_ADDR,
		write_enable => write_enable
	);
	
	MUX_B : MUX_2_16b PORT MAP(
		in0 => k_in,
		in1 => B_DATA,
		sel => MB_SEL,
		q => MUX_B_OUT);
		
	MUX_M : MUX_2_16b PORT MAP(
		in0 => A_DATA,
		in1 => MM_1,
		sel => MM_SEL,
		q => MUX_M_OUT);
	
	MUX_D : MUX_2_16b PORT MAP(
		in0 => F_DATA,
		in1 => MUX_D_IN_1,
		sel => MD_SEL,
		q => MUX_D_OUT);
		
	ALU : ALU_16b PORT MAP(
		A => A_DATA,
		B => MUX_B_OUT,
		F_SEL => F_SEL,
		V => oVer,
		C => CAR,
		N => NEG,
		Z => ZERO,
		F => F_DATA
	);
	
	data_out <= MUX_D_IN_1;
	N <= NEG;
	C <= CAR;
	Z <= ZERO;
	V <= oVer;
	into_reg <= MUX_D_OUT;
	R0Q <= R0;
end Behavioral;

