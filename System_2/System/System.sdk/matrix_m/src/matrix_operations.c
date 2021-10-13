/*
 * matrix_operations.c
 * providing functions for matrix mupltiplications, C procedural mode
 *
 *  Copyright Benjamin Lux ENSEIRB 2018
 */
#include "stdlib.h"
#include <stdio.h>
#include "matrix_operations.h"

/**
 * Initialize a Matrix with a randomValue between 0 and 4095
 */
void mat_Init_random(unsigned int Mat[][V_SIZE] ){
	int i, j;
	for (i=0; i<V_SIZE ; i++){
		for(j = 0; j<V_SIZE; j++){
			Mat[i][j] = rand()%4095;
		}
	}
}

/**
 * Initialize a Matrix with NULL MATRIX
 */
void mat_Init_zeros(unsigned int Mat[][V_SIZE] ){
	int i, j;
	for (i=0; i<V_SIZE ; i++){
		for(j = 0; j<V_SIZE; j++){
			Mat[i][j] = 0;
		}
	}
}

/**
 * Initialize with the identity matrix, useful for debugging
 */
void mat_Init_simple(unsigned int Mat[][V_SIZE] ){
	int i, j;
	for (i=0; i<V_SIZE ; i++){
		for(j = 0; j<V_SIZE; j++){
			if ((i==j))
			{
				Mat[i][j] = 1;
			}else
			{
				Mat[i][j] = 0;
			}
		}
	}
}

/**
 * Display a Matrix
 */
void mat_Print(unsigned int Mat[][V_SIZE]){
	int i,j;
	printf("\n\r");
	for (i=0;  i<V_SIZE; i++){
		for(j = 0; j<V_SIZE; j++ ){
			printf("%d\t", Mat[i][j]);
		}
		printf("\n\r");
	}
}

/**
 * Matrix Multiplication function Res = A * B
 */
void mat_mult_b (unsigned int A[][V_SIZE], unsigned int B[][V_SIZE], unsigned int Res[][V_SIZE]){

	int i,j,k;
	for (i=0;  i<V_SIZE; i++){
		for(j=0; j<V_SIZE; j++ ){
			for(k=0;k<V_SIZE;k++) {
				Res[i][j]+=A[i][k]*B[k][j];
			}
		}
	}
}
