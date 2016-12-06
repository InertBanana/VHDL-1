----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:33:17 06/27/2016 
-- Design Name: 
-- Module Name:    REG_FILE_16b - Behavioral 
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

entity REG_FILE_16b is
	port(
		data : in std_logic_vector(15 downto 0);										-- external signal, data from source outside the register file (to be written to a register)
		DEST_REG, A_SRC, B_SRC : in std_logic_vector(3 downto 0);					-- D_SRC decides where input data goes (feeds decoder), A_SRC, B_SRC feed the A_MUX_OUT and B_MUX_OUT respectively
--		data_src : in std_logic_vector(1 downto 0);									-- data_src selection (00 for external data, 01 for from A_DATA_OUT, 10 for B_DATA_OUT) 
		clk, write_enable : in std_logic;																	-- clock input
		R0 : out std_logic_vector(15 downto 0);
--		R1,R2,R3,R4,R5,R6,R7 : out std_logic_vector(15 downto 0);
		A_DATA_OUT, B_DATA_OUT : out std_logic_vector(15 downto 0));			-- ports fed by the outputs of each register 
end REG_FILE_16b;

architecture Behavioral of REG_FILE_16b is
	COMPONENT REG_16b
	PORT(
		d : in std_logic_vector(15 downto 0);
		load, clk : in std_logic;
		q : out std_logic_vector(15 downto 0));
	END COMPONENT;	
	
	COMPONENT DEC_3_8
	PORT(
		in0, in1, in2, in3 : in std_logic;
		q0, q1, q2, q3, q4, q5, q6, q7, q8 : out std_logic);
	END COMPONENT;
	
	COMPONENT MUX_2_16b
	PORT(
		sel : in std_logic_vector(1 downto 0);
		in0, in1, in2 : in std_logic_vector(15 downto 0);
		q : out std_logic_vector(15 downto 0));
	END COMPONENT;

	COMPONENT MUX_8_16b
	PORT(
		sel : in std_logic_vector(3 downto 0);
		in0, in1, in2, in3, in4, in5, in6, in7, in8 : in std_logic_vector(15 downto 0);
		q : out std_logic_vector(15 downto 0));
	END COMPONENT;	
	
	-- SIGNALS --
	signal loadR0, loadR1, loadR2, loadR3, loadR4, loadR5, loadR6, loadR7, loadR8 : std_logic;												-- loads for each register
	signal R0_q, R1_q, R2_q, R3_q, R4_q, 
			 R5_q, R6_q, R7_q, R8_q, data_input, A_OUT, B_OUT : std_logic_vector(15 downto 0);		-- signals for each register's output, the DATA_SRC_MUX output and the REG_SRC_MUX output
begin
	data_input <= data when write_enable = '1' ;
	-- REGISTERS --
	REG0 : REG_16b PORT MAP(
		d => data_input,		-- d fed by data_src_mux_out
		clk => clk,						-- clk fed by clk
		load => loadR0,				-- load fed by loadR0
		q => R0_q);						-- q feeds by R0_q
		
	REG1 : REG_16b PORT MAP(
		d => data_input,		-- d fed by data_src_mux_out
		clk => clk,						-- clk fed by clk
		load => loadR1,				-- load fed by loadR0
		q => R1_q);						-- q feeds by R1_q
		
	REG2 : REG_16b PORT MAP(
		d => data_input,		-- d fed by data_src_mux_out
		clk => clk,						-- clk fed by clk
		load => loadR2,				-- load fed by loadR2
		q => R2_q);						-- q feeds by R2_q

	REG3 : REG_16b PORT MAP(
		d => data_input,		-- d fed by data_src_mux_out
		clk => clk,						-- clk fed by clk
		load => loadR3,				-- load fed by loadR3
		q => R3_q);						-- q feeds by R3_q

	REG4 : REG_16b PORT MAP(
		d => data_input,		-- d fed by data_src_mux_out
		clk => clk,						-- clk fed by clk
		load => loadR4,				-- load fed by loadR4
		q => R4_q);						-- q feeds by R4_q

	REG5 : REG_16b PORT MAP(
		d => data_input,		-- d fed by data_src_mux_out
		clk => clk,						-- clk fed by clk
		load => loadR5,				-- load fed by loadR5
		q => R5_q);						-- q feeds by R5_q

	REG6 : REG_16b PORT MAP(
		d => data_input,		-- d fed by data_src_mux_out
		clk => clk,						-- clk fed by clk
		load => loadR6,				-- load fed by loadR6
		q => R6_q);						-- q feeds by R6_q

	REG7 : REG_16b PORT MAP(
		d => data_input,		-- d fed by data_src_mux_out
		clk => clk,						-- clk fed by clk
		load => loadR7,				-- load fed by loadR7
		q => R7_q);						-- q feeds by R0_q
		
	REG8 : REG_16b PORT MAP(
		d => data_input,		-- d fed by data_src_mux_out
		clk => clk,						-- clk fed by clk
		load => loadR8,				-- load fed by loadR7
		q => R8_q);						-- q feeds by R0_q
		
	A_OUT_MUX : MUX_8_16b PORT MAP(
		in0 => R0_q,					-- each in takes the output of it's similarly numbered register
		in1 => R1_q,
		in2 => R2_q,
		in3 => R3_q,
		in4 => R4_q,
		in5 => R5_q,
		in6 => R6_q,
		in7 => R7_q,
		in8 => R8_q,
		sel => A_SRC,				-- external signal selecting which register goes to output
		q => A_OUT);					-- this feeds the data_src_mux's in1

	B_OUT_MUX : MUX_8_16b PORT MAP(
		in0 => R0_q,					-- each in takes the output of it's similarly numbered register
		in1 => R1_q,
		in2 => R2_q,
		in3 => R3_q,
		in4 => R4_q,
		in5 => R5_q,
		in6 => R6_q,
		in7 => R7_q,
		in8 => R8_q,
		sel => B_SRC,				-- external signal selecting which register goes to output
		q => B_OUT);					-- this feeds the data_src_mux's in1
	
	-- DEC_3_8 --
	DEST_DEC : DEC_3_8 PORT MAP(
		in0 => DEST_REG(0),
		in1 => DEST_REG(1), 
		in2 => DEST_REG(2),
		in3 => DEST_REG(3),
		q0 => loadR0,
		q1 => loadR1,
		q2 => loadR2,
		q3 => loadR3,
		q4 => loadR4,
		q5 => loadR5,
		q6 => loadR6,
		q7 => loadR7,
		q8 => loadR8);	
		
	-- MUX_2_16b --
--	DATA_SRC_MUX : MUX_2_16b PORT MAP(
--		in0 => data,					-- data is an external 16 bit signal 
--		in1 => A_OUT,					-- in1 is the output from A_DATA_OUT 
--		in2 => B_OUT,					-- in2 is the output fro B_DATA_OUT
--		sel => data_src,				-- selection is an external signal
--		q => data_src_mux_out);		-- data_src_mux_out fed by the output of the data_src_mux, this goes to each register
		
		A_DATA_OUT <= A_OUT;
		B_DATA_OUT <= B_OUT;
		
		R0 <= R0_q;
--		R1 <= R1_q;
--		R2 <= R2_q;
--		R3 <= R3_q;
--		R4 <= R4_q;
--		R5 <= R5_q;
--		R6 <= R6_q;
--		R7 <= R7_q;
	
		
end Behavioral;

