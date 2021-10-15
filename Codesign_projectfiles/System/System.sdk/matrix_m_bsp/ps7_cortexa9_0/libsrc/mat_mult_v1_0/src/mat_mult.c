
/***************************** Include Files *******************************/
#include "mat_mult.h"
#include "xparameters.h"
#include "stdio.h"
#include "xil_io.h"

/************************** Function Definitions ***************************/


/**
 * mat_mult : multiplication de la matrice A par la matrice B. Resultat renvoyé sur Res
 */
void mat_mult(unsigned int A[][V_SIZE], unsigned int B[][V_SIZE], unsigned int Res[][V_SIZE])
{
	unsigned int write_index = 0;
	unsigned int read_index = 0;

	//Write A and B matrix in IP
	for (int i = 0 ; i < V_SIZE ; i++){
		for (int j = 0 ; j < V_SIZE ; j++){
			MAT_MULT_mWriteReg(XPAR_MAT_MULT_0_S00_AXI_BASEADDR, STEP_ADDR*write_index, A[i][j]);
			MAT_MULT_mWriteReg(XPAR_MAT_MULT_0_S00_AXI_BASEADDR, STEP_ADDR*write_index + MATRIX_B_ADDR_OFFSET, B[i][j]);
			write_index++;
		}
	}

	//Read Res matrix from IP
	for (int i = 0 ; i < V_SIZE ; i++){
		for (int j = 0 ; j < V_SIZE ; j++){
			Res[i][j] = MAT_MULT_mReadReg(XPAR_MAT_MULT_0_S00_AXI_BASEADDR, STEP_ADDR*read_index + MATRIX_P_ADDR_OFFSET);
			read_index++;
		}
	}
}
