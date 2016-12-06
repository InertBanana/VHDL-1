----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:15:24 07/04/2016 
-- Design Name: 
-- Module Name:    ALU_16b - Behavioral 
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

entity ALU_16b is
	Port(
		A, B : in std_logic_vector(15 downto 0);  -- PAIR OF OPERANDS
		F_SEL : in std_logic_vector(4 downto 0); -- FUNCTION SELECT VECTOR
		V,C,N,Z : out std_logic; 						-- CONDITION CODE FLAGS
		F : out std_logic_vector(15 downto 0));	-- RESULT OF OPERATION
		
end ALU_16b;

architecture Behavioral of ALU_16b is
	
	COMPONENT FULL_ADDER_16b
	PORT(
		a, b : in std_logic_vector(15 downto 0);
		carry_in : in std_logic;
		sum : out std_logic_vector(15 downto 0);
		carry_out : out std_logic);
	END COMPONENT;
	
	COMPONENT SINGLE_POS_SHIFTER_16b
	PORT(
		b : in std_logic_vector(15 downto 0);
		H_SEL : in std_logic_vector(1 downto 0);
		f : out std_logic_vector(15 downto 0);
		carry_out: out std_logic);
	END COMPONENT;
	
	COMPONENT LOGIC_UNIT_16b
	PORT(
		a, b : in std_logic_vector(15 downto 0);
		G_SEL : in std_logic_vector(3 downto 0);
		f : out std_logic_vector(15 downto 0));
	END COMPONENT;
	
	COMPONENT ALU_MUX_OUT_16b
	PORT(
		add_in, shifter_in, l_unit_in : in std_logic_vector(15 downto 0);
		sel : in std_logic_vector(1 downto 0);
		q : out std_logic_vector(15 downto 0));
	END COMPONENT;
	
	COMPONENT ALU_CCV_MUX_1b
	PORT(
		in0, in1 : in std_logic;
		func_sel : in std_logic_vector(4 downto 0);
		q : out std_logic);
	END COMPONENT;
	
	signal a_in, b_in, mux0, mux1, mux2, mux_q : std_logic_vector(15 downto 0);
	signal func_sel : std_logic_vector(4 downto 0);
	signal NEG, CAR, ZERO, oVer, carry_out_add, carry_out_shift, b_over_in : std_logic;
	
begin
	a_in <= A;
	func_sel <= F_SEL;
	b_in <=
	   "0000000000000000" when func_sel(2 downto 1) = "00" and func_sel < "01000" else		-- G_SEL = 0000 || 0001, F = A +  0 + CARRY
		B when func_sel(2 downto 1) = "01" or func_sel >= "01000" else														   -- G_SEL = 0010 || 0011, F = A +  B + CARRY 
		not(B) when func_sel(2 downto 1) = "10" else														-- G_SEL = 0100 || 0101, F = A + ¬B + CARRY
		"1111111111111111" when func_sel(2 downto 1) = "11";											-- G_SEL = 0110 || 0111, F = A + -1 + CARRY

	
	
	ADDER : FULL_ADDER_16b PORT MAP(
		a => a_in,
		b => b_in,
		carry_in => func_sel(0),
		carry_out => carry_out_add,
		sum => mux0
	);
	
	LUNIT : LOGIC_UNIT_16b PORT MAP(
		a => a_in,
		b => b_in, 
		G_SEL => func_sel(3 downto 0),
		f => mux1
	);
	
	SHIFTER : SINGLE_POS_SHIFTER_16b PORT MAP(
		b => b_in,
		H_SEL => func_sel(3 downto 2),
		f => mux2,
		carry_out => carry_out_shift 
	);
	
	OP_MUX : ALU_MUX_OUT_16b PORT MAP(
		add_in => mux0,
		l_unit_in => mux1,
		shifter_in => mux2,
		sel => func_sel(4 downto 3),
		q => mux_q
	);
	
	C_MUX : ALU_CCV_MUX_1b PORT MAP(
		in0 => carry_out_add,
		in1 => carry_out_shift,
		func_sel => func_sel,
		q => CAR	
	);
		
	
	F <= mux_q;	
	NEG <= mux_q(15);
	ZERO <= '1'  when mux_q = "0000000000000000" else '0';
	b_over_in <= b_in(15) when (func_sel > "00001") else '0';
	oVer <= ((a_in(15) xor (mux_q(15))) and (((b_over_in) xor (mux_q(15))))) when (func_sel >= "00001" and func_sel < "01000") else '0';	-- V = 1 when a_in(15) and b_in(15) are 0 and mux_q is 1, or the inverse is also true
	
	C <= CAR;
	N <= NEG;
	Z <= ZERO;
	V <= oVer;
end Behavioral;

