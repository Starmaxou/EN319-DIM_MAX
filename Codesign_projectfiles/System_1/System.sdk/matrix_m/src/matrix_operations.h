/*
 * matrix_operations.h
 * providing functions for matrix mupltiplications, C procedural mode
 *
 *  Copyright Benjamin Lux ENSEIRB 2018
 */

#ifndef __MATRIX_OPERATIONS_H__
#define __MATRIX_OPERATIONS_H__

#include "mat_mult.h"

void mat_Init_random(unsigned int Mat[][V_SIZE]);
void mat_Init_zeros(unsigned int Mat[][V_SIZE] );
void mat_Init_simple(unsigned int Mat[][V_SIZE]);
void mat_Print(unsigned int Mat[][V_SIZE]);
void mat_mult_b (unsigned int A[][V_SIZE], unsigned int B[][V_SIZE], unsigned int Res[][V_SIZE]);


#endif /* __MATRIX_OPERATIONS_H__ */
