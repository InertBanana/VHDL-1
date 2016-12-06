----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:34:15 07/28/2016 
-- Design Name: 
-- Module Name:    CONTROL_MEMORY_WITH_CAR - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CONTROL_MEMORY_WITH_CAR is
PORT(
	clk, N, Z, C, V, NOT_N, NOT_C : in std_logic;
	IR_IN : in std_logic_vector(15 downto 0);
	--	MUX_C_Q : out std_logic_vector(7 downto 0);
	word : out std_logic_vector(27 downto 0);
	car_1 : out std_logic_vector(7 downto 0);
	F_SEL : out std_logic_vector(4 downto 0);
	T_D, T_A, T_B, M_B, M_D, R_W, M_M, M_W, P_I, P_L : out std_logic;
	DR, SA, SB : out std_logic_vector(2 downto 0));
end CONTROL_MEMORY_WITH_CAR;

architecture Behavioral of CONTROL_MEMORY_WITH_CAR is

signal car_in, car_out, NA, MC_IN : std_logic_vector(7 downto 0); 
signal mux_c_1 : std_logic_vector(6 downto 0);
signal mux_s_out, MC, MW, MM, RW, MD, MB, TB, TA, TD, PL, PI, IL : std_logic;
signal FUNC_SEL : std_logic_vector(4 downto 0);
signal MS_SEL, DREG, SRCA, SRCB : std_logic_vector(2 downto 0);

	COMPONENT CONTROL_ADDRESS_REGISTER
	PORT(
		in0 : in std_logic_vector(7 downto 0);
		mux_s_in, clk : in std_logic;
		q : out std_logic_vector(7 downto 0)
	);
	END COMPONENT;
	
	COMPONENT MUX_S
	PORT(
	N, Z, C, V, notN, notC : in std_logic;
	mux_s_sel : in std_logic_vector(2 downto 0);
	q : out std_logic);

	END COMPONENT;
	
	COMPONENT CONTROL_MEMORY_256x28
	PORT(	
		MW : out std_logic;
		MM : out std_logic;
		RW : out std_logic;
		MD : out std_logic;
		FUNC_SEL : out std_logic_vector(4 downto 0);
		MB : out std_logic;
		TB : out std_logic;
		TA : out std_logic;
		TD : out std_logic;
		PL : out std_logic;
		PI : out std_logic;
		IL : out std_logic;
		MC : out std_logic;
		MS_SEL : out std_logic_vector(2 downto 0);
		NA : out std_logic_vector(7 downto 0);
		IN_CAR : in std_logic_vector(7 downto 0));
	END COMPONENT;
	
	COMPONENT MUX_C_8b
	PORT(
		in0, in1 : in std_logic_vector(7 downto 0);
		MC : in std_logic;
		q : out std_logic_vector(7 downto 0));
	END COMPONENT;
	
	COMPONENT INSTRUCTION_REGISTER_16b
	PORT(
		in0 : in std_logic_vector (15 downto 0);
		IL, clk : in std_logic;
		OPCODE : out std_logic_vector(6 downto 0);
		DR, SA, SB : out std_logic_vector(2 downto 0)
	);
	END COMPONENT;
	
begin
	
	IR : INSTRUCTION_REGISTER_16b PORT MAP(
		in0 => IR_IN,
		IL => IL,
		clk => clk,
		OPCODE => mux_c_1,
		DR => DREG,
		SA => SRCA,
		SB => SRCB
	);
	MUXS : MUX_S PORT MAP(
		N => N,
		Z => Z,
		C => C,
		V => V,
		notN => NOT_N,
		notC => NOT_C,
		q => mux_s_out,
		mux_s_sel => MS_SEL
	);
		
	MC_IN <= '0' & mux_c_1;
	MUX_C : MUX_C_8b PORT MAP(
		in0 => NA,
		in1 => MC_IN,
		q => car_in,
		MC => MC
	);
	
	CAR : CONTROL_ADDRESS_REGISTER PORT MAP(
		in0 => car_in,
		clk => clk,
		mux_s_in => mux_s_out,
		q => car_out
	);
	
	CTRL : CONTROL_MEMORY_256x28 PORT MAP(
		MW => MW,
		MM => MM,
		RW => RW,
		FUNC_SEL => FUNC_SEL,
		MD => MD,
		MB => MB,
		TB => TB,
		TA => TA,
		TD => TD,
		PL => PL,
		PI => PI,
		IL => IL,
		MS_SEL => MS_SEL,
		MC => MC,
		NA => NA,
		IN_CAR => car_out
	);
--	MUX_C_Q <= car_in;
	word <= NA & MS_SEL & MC & IL & PI & PL & TD & TA & TB & MB & FUNC_SEL & MD & RW & MM & MW;
	F_SEL <= FUNC_SEL;
	T_D <= TD;
	T_A <= TA;
	T_B <= TB;
	M_B <= MB;
	M_D <= MD;
	R_W <= RW;
	M_M <= MM;
	M_W <= MW;
	P_I <= PI;
	P_L <= PL;
	DR <= DREG;
	SA <= SRCA;
	SB <= SRCB;
	car_1 <= car_out;
end Behavioral;

