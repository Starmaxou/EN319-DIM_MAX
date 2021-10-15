/*
 * helloworld.c: matrix multiplication application
 * Copyright Benjamin Lux ENSEIRB 2018
 */

#include <stdio.h>
#include <stdlib.h>
#include <xparameters.h>

#include "platform.h"
#include "xtmrctr.h"
#include "matrix_operations.h"
#include "mat_mult.h"

void init_timer( XTmrCtr TimerCounter, XTmrCtr *TmrCtrInstancePtr ){
	//Initialize the TmrCtr driver so that it is ready to use
	int Status = XTmrCtr_Initialize(TmrCtrInstancePtr, XPAR_AXI_TIMER_0_DEVICE_ID);
	if (Status == XST_DEVICE_IS_STARTED) {
		XTmrCtr_Stop(TmrCtrInstancePtr, 0);
		printf("timer already started\n\r");
	}else if(Status ==XST_DEVICE_NOT_FOUND){
		printf("timer not found\n\r");
	}
	//XTmrCtr_Stop(TmrCtrInstancePtr, 0);
	XTmrCtr_Reset(TmrCtrInstancePtr, 0);
	Status = XTmrCtr_SelfTest(TmrCtrInstancePtr, 0);
	if (Status != XST_SUCCESS) {
		printf("Timer init failed\n\r");
		//return XST_FAILURE;
		return;
	}
	else
	{
		printf("Timer rocks\n\r");
	}
	 // Enable the Autoreload mode of the timer counters.
	XTmrCtr_SetOptions(TmrCtrInstancePtr, 0, XTC_AUTO_RELOAD_OPTION);
	XTmrCtr_Start(TmrCtrInstancePtr, 0);
}

int main()
{
    init_platform();

    printf("Hello World of Codesign MULT %d\n\r system 2\n\r", (int)V_SIZE);

	//initializing timer
    printf("Init Timer\n");
	XTmrCtr TimerCounter;
	XTmrCtr *TmrCtrInstancePtr = &TimerCounter;
	printf("Init Timer Fonction\n");
	init_timer(TimerCounter,TmrCtrInstancePtr );
	//init srand
	printf("Init Timer OK\n");
	srand(7+XTmrCtr_GetValue(TmrCtrInstancePtr, 0));
    unsigned int a =  rand()%65535;
    unsigned int b =  rand()%65535;
    //variables for storing results
    unsigned int resmult;
    unsigned int resadd;
	u32 Value1;
	u32 Value2;
	u32 Value3;

	//test 1: counting time elpased when no operation
	{
		Value1 = XTmrCtr_GetValue(TmrCtrInstancePtr, 0);
		asm( "nop" );
		Value2 = XTmrCtr_GetValue(TmrCtrInstancePtr, 0);
		Value3 = Value2 - Value1;
		printf( "\n\r---------------------------------"
				"\n\rtest 1 : No operation "
				"\n\rt1: %d, t2: %d, diff:%d\n\r", (int)Value1, (int)Value2, (int)Value3);
	}

	//test2: simple integer addition
	{
		Value1 = XTmrCtr_GetValue(TmrCtrInstancePtr, 0);
		for (int i = 0 ; i < 1000000 ; i++)
			resadd = a + b;
		Value2 = XTmrCtr_GetValue(TmrCtrInstancePtr, 0);
		Value3 = Value2 - Value1;
		printf( "\n\r---------------------------------"
				"\n\rtest 2 : integer addition"
				"\n\rt1: %d, t2: %d, diff:%d\n\r", (int)Value1, (int)Value2, (int)Value3);
		printf("%d + %d = %d\n\r", a, b, resadd);
	}

	//test3: simple integer multiplication
	{
		//your code here
		Value1 = XTmrCtr_GetValue(TmrCtrInstancePtr, 0);
		for (int i = 0 ; i < 1000000 ; i++)
			resmult = a * b;
		Value2 = XTmrCtr_GetValue(TmrCtrInstancePtr, 0);
		Value3 = Value2 - Value1;
		printf( "\n\r---------------------------------"
				"\n\rtest 3 : integer multiplication"
				"\n\rt1: %d, t2: %d, diff:%d\n\r", (int)Value1, (int)Value2, (int)Value3);
		printf("%d * %d = %d\n\r", a, b, resmult);
	}

	//declare matrices that will be used for the operation
	unsigned int MatA[V_SIZE][V_SIZE];
	unsigned int MatB[V_SIZE][V_SIZE];
	unsigned int MatRes[V_SIZE][V_SIZE];
	unsigned int MatResIP[V_SIZE][V_SIZE];
	//initialize matrices
	mat_Init_zeros(MatRes);
	mat_Init_zeros(MatResIP);
	mat_Init_random(MatA);
	mat_Init_random(MatB);
	printf("\nMatrix A is");
	mat_Print(MatA);
	printf("Matrix B is");
	mat_Print(MatB);

	//test 4 6x6 matrix multiplication
	{
		//your code here
		Value1 = XTmrCtr_GetValue(TmrCtrInstancePtr, 0);
		mat_mult_b(MatA, MatB, MatRes);
		Value2 = XTmrCtr_GetValue(TmrCtrInstancePtr, 0);
		Value3 = Value2 - Value1;
		printf( "\n\r---------------------------------"
				"\n\rtest 4 : matrix multiplication"
				"\n\rt1: %d, t2: %d, diff:%d\n\r", (int)Value1, (int)Value2, (int)Value3);
		printf("\nMatrix Res is");
		mat_Print(MatRes);
	}


	//test 5 6x6 matrix multiplication with IP, 760 typ
	{
		//your code here
		Value1 = XTmrCtr_GetValue(TmrCtrInstancePtr, 0);
		mat_mult(MatA, MatB, MatResIP);
		Value2 = XTmrCtr_GetValue(TmrCtrInstancePtr, 0);
		Value3 = Value2 - Value1;
		printf( "\n\r---------------------------------"
				"\n\rtest 5 : matrix multiplication with IP"
				"\n\rt1: %d, t2: %d, diff:%d\n\r", (int)Value1, (int)Value2, (int)Value3);
		printf("\nGolden model is");
		mat_Print(MatRes);
		printf("\nMatrix Res IP is");
		mat_Print(MatResIP);
	}
	
	//Stop Timer
	XTmrCtr_Stop(TmrCtrInstancePtr, 0);
    printf("\n\nend of tests\n\r");

    cleanup_platform();
    return 0;
}