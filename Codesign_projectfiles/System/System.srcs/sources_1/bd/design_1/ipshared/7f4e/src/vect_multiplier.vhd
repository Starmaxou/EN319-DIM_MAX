----------------------------------------------------------------------------------
-- Author: Benjamin Lux
-- Module Name:    vect_multiplier - rtl 
-- CODESIGN course ENSEIRB 2016
-- Description: realizes the scalar product of 2 vectors (line) per (column) according
-- 				to the matrix product definition.
--				output is an unsigned
--				Used as the decomposition of matrix multiplication
--				Architecture is fully parallel
----------------------------------------------------------------------------------

library IEEE;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

--import definition of vectors and sizes
LIBRARY mat_mult_v1_00_a;
USE mat_mult_v1_00_a.definitions_mult.all;

entity vect_multiplier is
	Port ( 
	clk         : in std_logic; --
	vector_in_a : in vector16; --input vector a
	vector_in_b : in vector16; --input vector b
	product_out : out unsigned(31 DOWNTO 0) --output unsigned the the scalar vector of a and b
	);
end vect_multiplier;

architecture rtl of vect_multiplier is
	
	signal prod_vec : vector32; --element i stores the product of vector_in_a(i) per vector_in_b(i)
	signal prod_vec_logic : std_logic_vector((vector_size*32-1) DOWNTO 0); --same signal in std_logic_vector for compatbility withmult interface
	signal sum_vec  : vector32; --element i stores the result of the sums of the first i elements	
	
	--put input and output registers to ease timing
	signal vector_in_a_i, vector_in_b_i : vector16;
	signal product_out_o : unsigned(31 DOWNTO 0) ;
		
begin
	--FLIP FLOP before the inputs and after the outputs. Improves fmax at the cost of greater latency
	IO_REGS : process(clk)
	begin
		if rising_edge(clk) then
			vector_in_a_i <= vector_in_a;
			vector_in_b_i <= vector_in_b;
			product_out <= product_out_o;
		end if;
	end process IO_REGS;
	
	--realize the products by generating vector_size multipliers
	MULTIPLIERS : process(clk)
	begin
	   if rising_edge(clk) then
	       for k in 0 to (vector_size-1) loop
	           prod_vec_logic((k*32 + 31) DOWNTO (k*32)) <= std_logic_vector( vector_in_a_i(k) * vector_in_b_i(k));
	       end loop;
	   end if;
	end process MULTIPLIERS;

	
	--generate the sum of the outputs of the multipliers
	product_out_o <= sum_vec(vector_size-1);
	
	SUM: process(prod_vec, prod_vec_logic, sum_vec)
	begin	  
		SUM_LOOP: for k in 1 to (vector_size-1) loop
			sum_vec(k) <= prod_vec(k) + sum_vec(k-1);
			--static assignment of prod vec_logic
			prod_vec(k) <= unsigned(prod_vec_logic((k*32 + 31) DOWNTO (k*32)));
		end loop SUM_LOOP;
		prod_vec(0) <= unsigned(prod_vec_logic(31 DOWNTO 0));
		sum_vec(0) <= prod_vec(0);
	end process SUM;

end rtl;
