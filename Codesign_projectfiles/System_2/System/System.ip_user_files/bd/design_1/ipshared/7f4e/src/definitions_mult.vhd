----------------------------------------------------------------------------------
-- Author: Benjamin Lux
-- Module Name:    definitions_mult
-- CODESIGN course ENSEIRB 2018
-- Description: package for the definition of signal types and length for the projet matrix multiplyer
----------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

--matrices are numbered from left to right and then from up to down
--element a(i,j) at line i and column k, is indexed (vector_size * i) + j
--input elements of the matrices are 16 bits wide and output elements are 32 bits wide

--define a package to save register structure
PACKAGE definitions_mult IS
	--constant relative to matrix size
	CONSTANT vector_size: INTEGER := 6; --size of the matrix, if 3: 3x3 squared matrices
	CONSTANT matrix_size: INTEGER := vector_size**2;
	--definitions of the matrices. a matrix is composed of multiple vectors
	type vector16 is array (0 TO (vector_size - 1)) of unsigned (15 DOWNTO 0);
	type vector32 is array (0 TO (vector_size - 1)) of unsigned (31 DOWNTO 0);
	type matrix16 is array (0 TO (matrix_size - 1)) of unsigned (15 DOWNTO 0);
	type matrix32 is array (0 TO (matrix_size - 1)) of unsigned (31 DOWNTO 0);
END definitions_mult;