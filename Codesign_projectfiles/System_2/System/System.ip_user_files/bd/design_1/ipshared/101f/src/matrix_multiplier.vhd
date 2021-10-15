----------------------------------------------------------------------------------
-- Company: ENSEIRB-MATMECA
-- Engineer: ALBERTY Maxime & PETITJEAN Dimitri
-- 
-- Create Date: 13.10.2021 09:47:23
-- Module Name: matrix_multiplier - struct
-- Project Name: Codesign TP 2021
-- Description:  Multiplication des deux matrices de taille "vector_size"
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

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

architecture struct of matrix_multiplier is

type signal_matrix_vector_TYPE is array (0 to vector_size-1) of vector16; 

signal s_matrix_a   : signal_matrix_vector_TYPE; -- Contient les lignes de la matrice A
signal s_matrix_b   : signal_matrix_vector_TYPE; -- Contient les colonnes de la matrice B
signal s_matrix_p   : matrix32; -- Contient le resultat de touts les modules Vect_multiplier

begin
    
    GEN_LIGNE : for I in 0 to vector_size-1 generate
         s_matrix_a(I) <= vector16(matrix_A(vector_size*I to ((vector_size*(I+1)) - 1)));
        GEN_VECT_MULT : for J in 0 to vector_size-1 generate
        
            s_matrix_b(I)(J) <= matrix_B(J*vector_size + I);
            
            vect_mult_i : ENTITY vect_multiplier PORT MAP(
                clk => clk,
                vector_in_a => s_matrix_a(I),
                vector_in_b => s_matrix_b(J),
                product_out => s_matrix_p(I*vector_size + J)
            );
        end generate GEN_VECT_MULT;
    end generate GEN_LIGNE;

    matrix_P <= s_matrix_p;

end struct;
