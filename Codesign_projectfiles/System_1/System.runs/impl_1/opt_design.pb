
O
Command: %s
53*	vivadotcl2

opt_design2default:defaultZ4-113h px? 
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
n
,Running DRC as a precondition to command %s
22*	vivadotcl2

opt_design2default:defaultZ4-22h px? 
R

Starting %s Task
103*constraints2
DRC2default:defaultZ18-103h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
U
DRC finished with %s
272*project2
0 Errors2default:defaultZ1-461h px? 
d
BPlease refer to the DRC report (report_drc) for more information.
274*projectZ1-462h px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:01 ; elapsed = 00:00:02 . Memory (MB): peak = 1832.148 ; gain = 0.000 ; free physical = 8942 ; free virtual = 286322default:defaulth px? 
g

Starting %s Task
103*constraints2,
Cache Timing Information2default:defaultZ18-103h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
P
;Ending Cache Timing Information Task | Checksum: 1c581a036
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:10 ; elapsed = 00:00:33 . Memory (MB): peak = 2256.695 ; gain = 424.547 ; free physical = 8529 ; free virtual = 282342default:defaulth px? 
a

Starting %s Task
103*constraints2&
Logic Optimization2default:defaultZ18-103h px? 
i

Phase %s%s
101*constraints2
1 2default:default2
Retarget2default:defaultZ18-101h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
K
Retargeted %s cell(s).
49*opt2
02default:defaultZ31-49h px? 
;
&Phase 1 Retarget | Checksum: d9be3294
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.16 ; elapsed = 00:00:00.11 . Memory (MB): peak = 2256.695 ; gain = 0.000 ; free physical = 8553 ; free virtual = 282582default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2
Retarget2default:default2
02default:default2
02default:defaultZ31-389h px? 
u

Phase %s%s
101*constraints2
2 2default:default2(
Constant propagation2default:defaultZ18-101h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
H
3Phase 2 Constant propagation | Checksum: 10bfb0efc
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.20 ; elapsed = 00:00:00.15 . Memory (MB): peak = 2256.695 ; gain = 0.000 ; free physical = 8553 ; free virtual = 282582default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2(
Constant propagation2default:default2
02default:default2
82default:defaultZ31-389h px? 
f

Phase %s%s
101*constraints2
3 2default:default2
Sweep2default:defaultZ18-101h px? 
9
$Phase 3 Sweep | Checksum: 1699ac6d7
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.43 ; elapsed = 00:00:00.38 . Memory (MB): peak = 2256.695 ; gain = 0.000 ; free physical = 8553 ; free virtual = 282582default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2
Sweep2default:default2
02default:default2
3372default:defaultZ31-389h px? 
r

Phase %s%s
101*constraints2
4 2default:default2%
BUFG optimization2default:defaultZ18-101h px? 
E
0Phase 4 BUFG optimization | Checksum: 1699ac6d7
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.46 ; elapsed = 00:00:00.42 . Memory (MB): peak = 2256.695 ; gain = 0.000 ; free physical = 8553 ; free virtual = 282582default:defaulth px? 
?
EPhase %s created %s cells of which %s are BUFGs and removed %s cells.395*opt2%
BUFG optimization2default:default2
02default:default2
02default:default2
02default:defaultZ31-662h px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Shift Register Optimization2default:defaultZ18-101h px? 
O
:Phase 5 Shift Register Optimization | Checksum: 20f9f443d
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.61 ; elapsed = 00:00:00.55 . Memory (MB): peak = 2256.695 ; gain = 0.000 ; free physical = 8552 ; free virtual = 282582default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2/
Shift Register Optimization2default:default2
02default:default2
02default:defaultZ31-389h px? 
x

Phase %s%s
101*constraints2
6 2default:default2+
Post Processing Netlist2default:defaultZ18-101h px? 
K
6Phase 6 Post Processing Netlist | Checksum: 20f9f443d
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.63 ; elapsed = 00:00:00.58 . Memory (MB): peak = 2256.695 ; gain = 0.000 ; free physical = 8552 ; free virtual = 282582default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2+
Post Processing Netlist2default:default2
02default:default2
02default:defaultZ31-389h px? 
a

Starting %s Task
103*constraints2&
Connectivity Check2default:defaultZ18-103h px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2256.695 ; gain = 0.000 ; free physical = 8552 ; free virtual = 282582default:defaulth px? 
J
5Ending Logic Optimization Task | Checksum: 20f9f443d
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.65 ; elapsed = 00:00:00.59 . Memory (MB): peak = 2256.695 ; gain = 0.000 ; free physical = 8552 ; free virtual = 282582default:defaulth px? 
a

Starting %s Task
103*constraints2&
Power Optimization2default:defaultZ18-103h px? 
s
7Will skip clock gating for clocks with period < %s ns.
114*pwropt2
2.002default:defaultZ34-132h px? 
J
5Ending Power Optimization Task | Checksum: 20f9f443d
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.02 . Memory (MB): peak = 2256.699 ; gain = 0.004 ; free physical = 8552 ; free virtual = 282582default:defaulth px? 
\

Starting %s Task
103*constraints2!
Final Cleanup2default:defaultZ18-103h px? 
E
0Ending Final Cleanup Task | Checksum: 20f9f443d
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2256.699 ; gain = 0.000 ; free physical = 8552 ; free virtual = 282582default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
302default:default2
02default:default2
02default:default2
02default:defaultZ4-41h px? 
\
%s completed successfully
29*	vivadotcl2

opt_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2 
opt_design: 2default:default2
00:00:122default:default2
00:00:352default:default2
2256.6992default:default2
424.5512default:default2
85522default:default2
282582default:defaultZ17-722h px? 
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
00:00:00.022default:default2
00:00:00.202default:default2
2288.7112default:default2
0.0002default:default2
85492default:default2
282582default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2x
d/net/s/dpetitjean/Documents/Codesign_projectfiles/System/System.runs/impl_1/design_1_wrapper_opt.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
?Executing : report_drc -file design_1_wrapper_drc_opted.rpt -pb design_1_wrapper_drc_opted.pb -rpx design_1_wrapper_drc_opted.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
ureport_drc -file design_1_wrapper_drc_opted.rpt -pb design_1_wrapper_drc_opted.pb -rpx design_1_wrapper_drc_opted.rpx2default:defaultZ4-113h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
168*coretcl2?
j/net/s/dpetitjean/Documents/Codesign_projectfiles/System/System.runs/impl_1/design_1_wrapper_drc_opted.rptj/net/s/dpetitjean/Documents/Codesign_projectfiles/System/System.runs/impl_1/design_1_wrapper_drc_opted.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 


End Record