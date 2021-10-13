----------------------------------------------------------------------------------
-- Author: Benjamin Lux
-- Module Name:    matrix_multiplier - rtl 
-- CODESIGN course ENSEIRB 2018
-- Matrix Multiplier, fully parallel implementation made of vector multipliers
----------------------------------------------------------------------------------
library IEEE;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

LIBRARY mat_mult_v1_00_a;
USE mat_mult_v1_00_a.definitions_mult.all;
USE mat_mult_v1_00_a.vect_multiplier;

entity matrix_multiplier is
    Port ( 
		clk : in std_logic;      --clock signal
		rst_n : in std_logic;	 --asynchronous reset signal, active low
		matrix_A : in matrix16;	 --input matrix a					 
		matrix_B : in matrix16;  --input matrix b 		  
		matrix_P : out matrix32  --matrix p = matrix a * matrix b
		 );
end matrix_multiplier;

--dummy architecture, for testbench or synthesis only sends back the SUM of the 2 matrices
architecture adder of matrix_multiplier is	
	
begin
	--generate the vectors element that are the inputs of the vectors multipliers
	adder : process(clk, rst_n)
		begin
		if rst_n = '0' then
			Matrix_P <= (OTHERS => (OTHERS => '0'));
		elsif rising_edge(clk) then
			COUNTER: for i in 0 to (matrix_size-1) loop
			  Matrix_P(i) <= (OTHERS => '0');
				Matrix_P(i)(16 DOWNTO 0) <= ('0'&Matrix_A(i)) + ('0'&matrix_B(i));
			end loop COUNTER;
		end if;
	end process adder;	

end architecture adder;

