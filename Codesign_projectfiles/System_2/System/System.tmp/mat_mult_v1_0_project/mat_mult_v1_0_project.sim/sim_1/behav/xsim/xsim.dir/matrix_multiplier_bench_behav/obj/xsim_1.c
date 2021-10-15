/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern void execute_304(char*, char *);
extern void execute_305(char*, char *);
extern void execute_306(char*, char *);
extern void execute_307(char*, char *);
extern void execute_308(char*, char *);
extern void execute_303(char*, char *);
extern void execute_33(char*, char *);
extern void execute_35(char*, char *);
extern void execute_42(char*, char *);
extern void execute_49(char*, char *);
extern void execute_56(char*, char *);
extern void execute_63(char*, char *);
extern void execute_70(char*, char *);
extern void execute_78(char*, char *);
extern void execute_80(char*, char *);
extern void execute_87(char*, char *);
extern void execute_94(char*, char *);
extern void execute_101(char*, char *);
extern void execute_108(char*, char *);
extern void execute_115(char*, char *);
extern void execute_123(char*, char *);
extern void execute_125(char*, char *);
extern void execute_132(char*, char *);
extern void execute_139(char*, char *);
extern void execute_146(char*, char *);
extern void execute_153(char*, char *);
extern void execute_160(char*, char *);
extern void execute_168(char*, char *);
extern void execute_170(char*, char *);
extern void execute_177(char*, char *);
extern void execute_184(char*, char *);
extern void execute_191(char*, char *);
extern void execute_198(char*, char *);
extern void execute_205(char*, char *);
extern void execute_213(char*, char *);
extern void execute_215(char*, char *);
extern void execute_222(char*, char *);
extern void execute_229(char*, char *);
extern void execute_236(char*, char *);
extern void execute_243(char*, char *);
extern void execute_250(char*, char *);
extern void execute_258(char*, char *);
extern void execute_260(char*, char *);
extern void execute_267(char*, char *);
extern void execute_274(char*, char *);
extern void execute_281(char*, char *);
extern void execute_288(char*, char *);
extern void execute_295(char*, char *);
extern void execute_37(char*, char *);
extern void execute_38(char*, char *);
extern void execute_39(char*, char *);
extern void execute_40(char*, char *);
extern void transaction_0(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[54] = {(funcp)execute_304, (funcp)execute_305, (funcp)execute_306, (funcp)execute_307, (funcp)execute_308, (funcp)execute_303, (funcp)execute_33, (funcp)execute_35, (funcp)execute_42, (funcp)execute_49, (funcp)execute_56, (funcp)execute_63, (funcp)execute_70, (funcp)execute_78, (funcp)execute_80, (funcp)execute_87, (funcp)execute_94, (funcp)execute_101, (funcp)execute_108, (funcp)execute_115, (funcp)execute_123, (funcp)execute_125, (funcp)execute_132, (funcp)execute_139, (funcp)execute_146, (funcp)execute_153, (funcp)execute_160, (funcp)execute_168, (funcp)execute_170, (funcp)execute_177, (funcp)execute_184, (funcp)execute_191, (funcp)execute_198, (funcp)execute_205, (funcp)execute_213, (funcp)execute_215, (funcp)execute_222, (funcp)execute_229, (funcp)execute_236, (funcp)execute_243, (funcp)execute_250, (funcp)execute_258, (funcp)execute_260, (funcp)execute_267, (funcp)execute_274, (funcp)execute_281, (funcp)execute_288, (funcp)execute_295, (funcp)execute_37, (funcp)execute_38, (funcp)execute_39, (funcp)execute_40, (funcp)transaction_0, (funcp)vhdl_transfunc_eventcallback};
const int NumRelocateId= 54;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/matrix_multiplier_bench_behav/xsim.reloc",  (void **)funcTab, 54);
	iki_vhdl_file_variable_register(dp + 112664);
	iki_vhdl_file_variable_register(dp + 112720);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/matrix_multiplier_bench_behav/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/matrix_multiplier_bench_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/matrix_multiplier_bench_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/matrix_multiplier_bench_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/matrix_multiplier_bench_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
