
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px? 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
82default:defaultZ30-611h px? 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.022default:default2
2436.3052default:default2
0.0002default:default2
67922default:default2
268682default:defaultZ17-722h px? 
[
FPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 11699a189
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.02 ; elapsed = 00:00:00.03 . Memory (MB): peak = 2436.305 ; gain = 0.000 ; free physical = 6792 ; free virtual = 268682default:defaulth px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
2436.3052default:default2
0.0002default:default2
67922default:default2
268682default:defaultZ17-722h px? 
?

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
g
RPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 9ff0b47f
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:04 ; elapsed = 00:00:02 . Memory (MB): peak = 2436.305 ; gain = 0.000 ; free physical = 6777 ; free virtual = 268532default:defaulth px? 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px? 
O
:Phase 1.3 Build Placer Netlist Model | Checksum: ee7c14f0
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:07 ; elapsed = 00:00:04 . Memory (MB): peak = 2436.305 ; gain = 0.000 ; free physical = 6742 ; free virtual = 268172default:defaulth px? 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px? 
L
7Phase 1.4 Constrain Clocks/Macros | Checksum: ee7c14f0
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:07 ; elapsed = 00:00:04 . Memory (MB): peak = 2436.305 ; gain = 0.000 ; free physical = 6742 ; free virtual = 268172default:defaulth px? 
H
3Phase 1 Placer Initialization | Checksum: ee7c14f0
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:07 ; elapsed = 00:00:04 . Memory (MB): peak = 2436.305 ; gain = 0.000 ; free physical = 6742 ; free virtual = 268172default:defaulth px? 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
2.1 2default:default2!
Floorplanning2default:defaultZ18-101h px? 
C
.Phase 2.1 Floorplanning | Checksum: 116161059
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:09 ; elapsed = 00:00:04 . Memory (MB): peak = 2514.570 ; gain = 78.266 ; free physical = 6723 ; free virtual = 267992default:defaulth px? 


Phase %s%s
101*constraints2
2.2 2default:default20
Physical Synthesis In Placer2default:defaultZ18-101h px? 
K
)No high fanout nets found in the design.
65*physynthZ32-65h px? 
?
$Optimized %s %s. Created %s new %s.
216*physynth2
02default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-232h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.022default:default2
00:00:00.022default:default2
2522.5742default:default2
0.0002default:default2
67032default:default2
267782default:defaultZ17-722h px? 
B
-
Summary of Physical Synthesis Optimizations
*commonh px? 
B
-============================================
*commonh px? 


*commonh px? 


*commonh px? 
?
~-----------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Optimization       |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
-----------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Very High Fanout   |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Total              |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
-----------------------------------------------------------------------------------------------------------------------------
*commonh px? 


*commonh px? 


*commonh px? 
R
=Phase 2.2 Physical Synthesis In Placer | Checksum: 129713ecc
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:32 ; elapsed = 00:00:11 . Memory (MB): peak = 2522.574 ; gain = 86.270 ; free physical = 6703 ; free virtual = 267782default:defaulth px? 
D
/Phase 2 Global Placement | Checksum: 218806077
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:33 ; elapsed = 00:00:12 . Memory (MB): peak = 2522.574 ; gain = 86.270 ; free physical = 6708 ; free virtual = 267832default:defaulth px? 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px? 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px? 
P
;Phase 3.1 Commit Multi Column Macros | Checksum: 218806077
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:34 ; elapsed = 00:00:12 . Memory (MB): peak = 2522.574 ; gain = 86.270 ; free physical = 6708 ; free virtual = 267832default:defaulth px? 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px? 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 155a5a1d6
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:38 ; elapsed = 00:00:14 . Memory (MB): peak = 2522.574 ; gain = 86.270 ; free physical = 6702 ; free virtual = 267772default:defaulth px? 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px? 
L
7Phase 3.3 Area Swap Optimization | Checksum: 20ccd48b2
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:38 ; elapsed = 00:00:14 . Memory (MB): peak = 2522.574 ; gain = 86.270 ; free physical = 6702 ; free virtual = 267772default:defaulth px? 
?

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.4 Pipeline Register Optimization | Checksum: 20ccd48b2
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:38 ; elapsed = 00:00:14 . Memory (MB): peak = 2522.574 ; gain = 86.270 ; free physical = 6702 ; free virtual = 267772default:defaulth px? 
x

Phase %s%s
101*constraints2
3.5 2default:default2)
Timing Path Optimizer2default:defaultZ18-101h px? 
K
6Phase 3.5 Timing Path Optimizer | Checksum: 20ccd48b2
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:38 ; elapsed = 00:00:14 . Memory (MB): peak = 2522.574 ; gain = 86.270 ; free physical = 6702 ; free virtual = 267772default:defaulth px? 
t

Phase %s%s
101*constraints2
3.6 2default:default2%
Fast Optimization2default:defaultZ18-101h px? 
G
2Phase 3.6 Fast Optimization | Checksum: 14240a0a9
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:38 ; elapsed = 00:00:14 . Memory (MB): peak = 2522.574 ; gain = 86.270 ; free physical = 6700 ; free virtual = 267752default:defaulth px? 


Phase %s%s
101*constraints2
3.7 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px? 
R
=Phase 3.7 Small Shape Detail Placement | Checksum: 1a1737f9a
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:41 ; elapsed = 00:00:16 . Memory (MB): peak = 2522.574 ; gain = 86.270 ; free physical = 6693 ; free virtual = 267692default:defaulth px? 
u

Phase %s%s
101*constraints2
3.8 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px? 
H
3Phase 3.8 Re-assign LUT pins | Checksum: 15a43df5f
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:42 ; elapsed = 00:00:17 . Memory (MB): peak = 2522.574 ; gain = 86.270 ; free physical = 6694 ; free virtual = 267692default:defaulth px? 
?

Phase %s%s
101*constraints2
3.9 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.9 Pipeline Register Optimization | Checksum: 15a43df5f
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:42 ; elapsed = 00:00:17 . Memory (MB): peak = 2522.574 ; gain = 86.270 ; free physical = 6694 ; free virtual = 267692default:defaulth px? 
D
/Phase 3 Detail Placement | Checksum: 15a43df5f
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:42 ; elapsed = 00:00:17 . Memory (MB): peak = 2522.574 ; gain = 86.270 ; free physical = 6694 ; free virtual = 267692default:defaulth px? 
?

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px? 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
?

Phase %s%s
101*constraints2
4.1.1 2default:default2/
Post Placement Optimization2default:defaultZ18-101h px? 
U
@Post Placement Optimization Initialization | Checksum: eeb6a828
*commonh px? 
u

Phase %s%s
101*constraints2
4.1.1.1 2default:default2"
BUFG Insertion2default:defaultZ18-101h px? 
?
PProcessed net %s, BUFG insertion was skipped due to placement/routing conflicts.32*	placeflow2[
Gdesign_1_i/mat_mult_0/U0/mat_mult_v1_0_S00_AXI_inst/axi_awready_i_1_n_02default:defaultZ46-33h px? 
?
?BUFG insertion identified %s candidate nets, %s success, %s skipped for placement/routing, %s skipped for timing, %s skipped for netlist change reason.30*	placeflow2
12default:default2
02default:default2
12default:default2
02default:default2
02default:defaultZ46-31h px? 
G
2Phase 4.1.1.1 BUFG Insertion | Checksum: eeb6a828
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:48 ; elapsed = 00:00:18 . Memory (MB): peak = 2522.574 ; gain = 86.270 ; free physical = 6703 ; free virtual = 267782default:defaulth px? 
?
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
0.5062default:defaultZ30-746h px? 
S
>Phase 4.1.1 Post Placement Optimization | Checksum: 196f0173b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:48 ; elapsed = 00:00:19 . Memory (MB): peak = 2522.574 ; gain = 86.270 ; free physical = 6701 ; free virtual = 267762default:defaulth px? 
N
9Phase 4.1 Post Commit Optimization | Checksum: 196f0173b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:49 ; elapsed = 00:00:19 . Memory (MB): peak = 2522.574 ; gain = 86.270 ; free physical = 6701 ; free virtual = 267762default:defaulth px? 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px? 
L
7Phase 4.2 Post Placement Cleanup | Checksum: 196f0173b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:49 ; elapsed = 00:00:19 . Memory (MB): peak = 2522.574 ; gain = 86.270 ; free physical = 6702 ; free virtual = 267772default:defaulth px? 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px? 
F
1Phase 4.3 Placer Reporting | Checksum: 196f0173b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:49 ; elapsed = 00:00:19 . Memory (MB): peak = 2522.574 ; gain = 86.270 ; free physical = 6702 ; free virtual = 267772default:defaulth px? 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px? 
M
8Phase 4.4 Final Placement Cleanup | Checksum: 1cb449537
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:49 ; elapsed = 00:00:19 . Memory (MB): peak = 2522.574 ; gain = 86.270 ; free physical = 6702 ; free virtual = 267772default:defaulth px? 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 1cb449537
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:49 ; elapsed = 00:00:19 . Memory (MB): peak = 2522.574 ; gain = 86.270 ; free physical = 6702 ; free virtual = 267772default:defaulth px? 
>
)Ending Placer Task | Checksum: 12aa097ad
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:49 ; elapsed = 00:00:19 . Memory (MB): peak = 2522.574 ; gain = 86.270 ; free physical = 6726 ; free virtual = 268012default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
572default:default2
02default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
place_design: 2default:default2
00:00:522default:default2
00:00:212default:default2
2522.5742default:default2
86.2702default:default2
67262default:default2
268012default:defaultZ17-722h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:042default:default2
00:00:032default:default2
2522.5742default:default2
0.0002default:default2
66862default:default2
267912default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2{
g/net/s/dpetitjean/Documents/Codesign_projectfiles/System/System.runs/impl_1/design_1_wrapper_placed.dcp2default:defaultZ17-1381h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2&
write_checkpoint: 2default:default2
00:00:052default:default2
00:00:062default:default2
2522.5742default:default2
0.0002default:default2
67122default:default2
267942default:defaultZ17-722h px? 
k
%s4*runtcl2O
;Executing : report_io -file design_1_wrapper_io_placed.rpt
2default:defaulth px? 
?
?report_io: Time (s): cpu = 00:00:00.08 ; elapsed = 00:00:00.12 . Memory (MB): peak = 2522.574 ; gain = 0.000 ; free physical = 6701 ; free virtual = 26783
*commonh px? 
?
%s4*runtcl2?
xExecuting : report_utilization -file design_1_wrapper_utilization_placed.rpt -pb design_1_wrapper_utilization_placed.pb
2default:defaulth px? 
?
?report_utilization: Time (s): cpu = 00:00:00.09 ; elapsed = 00:00:00.13 . Memory (MB): peak = 2522.574 ; gain = 0.000 ; free physical = 6713 ; free virtual = 26795
*commonh px? 
?
%s4*runtcl2l
XExecuting : report_control_sets -verbose -file design_1_wrapper_control_sets_placed.rpt
2default:defaulth px? 
?
?report_control_sets: Time (s): cpu = 00:00:00.05 ; elapsed = 00:00:00.10 . Memory (MB): peak = 2522.574 ; gain = 0.000 ; free physical = 6711 ; free virtual = 26793
*commonh px? 


End Record