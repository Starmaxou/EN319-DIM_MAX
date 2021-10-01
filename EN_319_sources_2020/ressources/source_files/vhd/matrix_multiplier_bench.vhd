----------------------------------------------------------------------------------
-- Author: Benjamin Lux
-- Module Name:    matrix_multiplier_bench - test_bench 
-- CODESIGN course ENSEIRB 2013
-- Description: testbench for the matrix_multiplier entity.
-- 				Makes 1000 random tests and computes the associated latency of the module
----------------------------------------------------------------------------------

library IEEE;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE ieee.math_real.ALL; --used for UNIFORM AND TRUNC

LIBRARY mat_mult_v1_00_a;
USe mat_mult_v1_00_a.definitions_mult.all;
USE mat_mult_v1_00_a.all;


entity matrix_multiplier_bench is
end matrix_multiplier_bench;

architecture behav of matrix_multiplier_bench is	
	--signals used for management of global parameters, edit to modify testbench configuration
	constant min_latency : natural :=1; --minimum latency allowed
	constant max_latency : natural :=30; --maximum latency allowed
	constant max_test_nb : integer := 1000; --number of tests to be performed
	
	--signals connected to the entity under test
	 signal clk_50 : std_logic := '0';
	 signal RESETn :  std_logic:= '0';
	 signal	matrix_A :  matrix16;			
	 signal	matrix_B :  matrix16;  
	 signal	matrix_P :  matrix32; --matrix computed by Matrix under test
	 signal matrix_golden_P : matrix32; --computed expected result
	 
	 --signals used for signal generation
	 CONSTANT period_50 : TIME := 5 ns; --half period for the 50 MHz clk
	 
	 --signals for general sequencer
	 signal phase_cnt: integer := 0;
	 signal test_nb: integer := 0;
	 signal test_nb_OK: integer := 0;
	 signal test_counter_OK : integer :=0;		
	 signal computed_latency : integer :=0; --computation of latency
	 signal result_OK : std_logic; --flag indicating if the result of the matrix multiplication is correct

begin

    --instantiation of Device Under Test
    DUT: entity mat_mult_v1_00_a.matrix_multiplier(rtl_parallel) PORT MAP(
		clk => clk_50,
		rst_n => RESETn,
		matrix_A => matrix_A,
		matrix_B => matrix_B,
		matrix_P => matrix_P
    );
    
    --data generators
    clk_50 <= not(clk_50) after period_50;
	RESETn <= '1';
	input_drivers: process(clk_50)
		--variable for random number generation
		variable m: matrix16 := (OTHERS => (OTHERS => '0')); --value to be returned
		variable seed1, seed2: positive;
		variable rand: real; --number between 0 and 1 
		variable int_rand : integer;
	begin
		if rising_edge(clk_50) then
			if phase_cnt = 0 then
				--init phase, initialize input matrices
				mat : for i in 0 to (matrix_size-1) loop
					--generate random number of 14 bits
					UNIFORM(seed1, seed2, rand);
					int_rand := INTEGER(TRUNC(rand * 16384.0));
					matrix_A(i) <= to_unsigned(int_rand,16);
					UNIFORM(seed1, seed2, rand);
					int_rand := INTEGER(TRUNC(rand * 16384.0));
					matrix_B(i) <= to_unsigned(int_rand,16);
				end loop mat;
			end if;
		end if;
	end process input_drivers;

	--matrix multiplier generating the right result to be compared to (behavioural VHDL)
	golden_multiply: process (matrix_A, matrix_B, matrix_golden_P, matrix_P)
		variable r : unsigned(31 DOWNTO 0);
	begin
		result_OK <= '1';
		L  : 
		for i in 0 to (vector_size-1) loop
			C  : 
			for j in 0 to (vector_size-1) loop
				r := (OTHERS => '0');
				SUM : 
				for k in 0 to (vector_size - 1) loop
					--compute the correct output number
					r := r + matrix_A(vector_size*i+k)*matrix_B(vector_size*k+j);
				end loop SUM;
				matrix_golden_P(i*vector_size+j) <= r;
				if r /=  matrix_P(i*vector_size+j) then
					--compare each element of the matrix_P to the correct result
					--and lower the OK flag if one of them is false
					result_OK <= '0';
				end if;
			end loop C;
		end loop L;
	end process golden_multiply;	
		
	--general sequencer:
	--Launch max_test_nb test cases generated randomly
	-- for each test case: generate the output at phase 0 and wait for a good result.
	-- If no good result after max_matency cycles, consider failed.
	TEST_Sequencer : process(clk_50)
	begin
	if rising_edge(clk_50) then
		if test_nb < max_test_nb then
			case phase_cnt IS
				WHEN 0 =>
					--generate output
					phase_cnt <= phase_cnt + 1;
				WHEN max_latency =>
					--test failed after max latency
					phase_cnt <= 0;
					test_nb <= test_nb + 1;
					report "test nb "& INTEGER'IMAGE(test_nb)&  " failed";
				WHEN OTHERS =>
					-- check if test is OK
					if result_OK='1' then 
					--test worked					
						phase_cnt <= 0;
						test_nb <= test_nb + 1;
						test_counter_OK <= test_counter_OK + 1;
						if phase_cnt > computed_latency then
							--update computed latency
							computed_latency <= phase_cnt;
						end if;
						report "test nb "& INTEGER'IMAGE(test_nb)&
					   " successfull passed, computed latency is"& INTEGER'IMAGE(phase_cnt);
					else
					  --not OK yet, wait more
					  phase_cnt <= phase_cnt + 1;
					end if;
			end case;
		else
			--end of test print report
			if test_counter_OK = test_nb then
			   --all tests ARE OK
				report "TESTBENCH SUCCESSFULLY PASSED: "&INTEGER'IMAGE(test_counter_OK)&
					" tests passed, latency of the module is "& INTEGER'IMAGE(computed_latency) severity FAILURE;
			 else
				report "TESTBENCH FAILED: "&INTEGER'IMAGE(test_counter_OK)&
					"/"&INTEGER'IMAGE(test_nb)&" tests passed" severity FAILURE;
			 end if; 
		end if;
	end if;
	end process TEST_Sequencer;		
	
end architecture behav;