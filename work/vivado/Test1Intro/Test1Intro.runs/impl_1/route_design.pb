
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-349h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
?Placement Constraints Check for IO constraints: Partially locked IO Bus is found. Following components of the IO Bus %s are not locked:  %s %s %s %s %s %s %s %s %s %s  and 8 more (total of 19.)%s*DRC2@
 "*
io_dip[23:0]io_dip2default:default2default:default2B
 ",

io_dip[19]
io_dip[19]2default:default2default:default2B
 ",

io_dip[18]
io_dip[18]2default:default2default:default2B
 ",

io_dip[17]
io_dip[17]2default:default2default:default2B
 ",

io_dip[16]
io_dip[16]2default:default2default:default2B
 ",

io_dip[15]
io_dip[15]2default:default2default:default2B
 ",

io_dip[14]
io_dip[14]2default:default2default:default2B
 ",

io_dip[13]
io_dip[13]2default:default2default:default2B
 ",

io_dip[12]
io_dip[12]2default:default2default:default2B
 ",

io_dip[11]
io_dip[11]2default:default2default:default2B
 ",

io_dip[10]
io_dip[10]2default:default2default:default28
  DRC|Implementation|Placement|IOs2default:default8ZPLIO-3h px? 
?
?Placement Constraints Check for IO constraints: Partially locked IO Bus is found. Following components of the IO Bus %s are not locked:  %s %s%s*DRC2?
 ")
io_sel[3:0]io_sel2default:default2default:default2@
 "*
	io_sel[1]	io_sel[1]2default:default2default:default2@
 "*
	io_sel[0]	io_sel[0]2default:default2default:default28
  DRC|Implementation|Placement|IOs2default:default8ZPLIO-3h px? 
b
DRC finished with %s
79*	vivadotcl2(
0 Errors, 2 Warnings2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px? 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
22default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
B
-Phase 1 Build RT Design | Checksum: c6163b99
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:22 ; elapsed = 00:00:22 . Memory (MB): peak = 1592.871 ; gain = 76.8522default:defaulth px? 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px? 
A
,Phase 2.1 Create Timer | Checksum: c6163b99
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:22 ; elapsed = 00:00:22 . Memory (MB): peak = 1592.887 ; gain = 76.8672default:defaulth px? 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
M
8Phase 2.2 Fix Topology Constraints | Checksum: c6163b99
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:22 ; elapsed = 00:00:22 . Memory (MB): peak = 1598.910 ; gain = 82.8912default:defaulth px? 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
F
1Phase 2.3 Pre Route Cleanup | Checksum: c6163b99
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:22 ; elapsed = 00:00:22 . Memory (MB): peak = 1598.910 ; gain = 82.8912default:defaulth px? 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 2.4 Update Timing | Checksum: 13e2a0ef1
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:23 ; elapsed = 00:00:23 . Memory (MB): peak = 1604.570 ; gain = 88.5512default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=0.690  | TNS=0.000  | WHS=-0.143 | THS=-6.598 |
2default:defaultZ35-416h px? 
I
4Phase 2 Router Initialization | Checksum: 15f8544ba
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:24 ; elapsed = 00:00:23 . Memory (MB): peak = 1604.570 ; gain = 88.5512default:defaulth px? 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
3.1 2default:default2"
Global Routing2default:defaultZ18-101h px? 
D
/Phase 3.1 Global Routing | Checksum: 15f8544ba
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:24 ; elapsed = 00:00:23 . Memory (MB): peak = 1606.852 ; gain = 90.8322default:defaulth px? 
B
-Phase 3 Initial Routing | Checksum: da0166fa
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:25 ; elapsed = 00:00:24 . Memory (MB): peak = 1606.852 ; gain = 90.8322default:defaulth px? 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=0.530  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.1 Global Iteration 0 | Checksum: 2cb344f9a
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:28 ; elapsed = 00:00:28 . Memory (MB): peak = 1606.852 ; gain = 90.8322default:defaulth px? 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=0.530  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.2 Global Iteration 1 | Checksum: 1cbba8109
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:28 ; elapsed = 00:00:28 . Memory (MB): peak = 1606.852 ; gain = 90.8322default:defaulth px? 
F
1Phase 4 Rip-up And Reroute | Checksum: 1cbba8109
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:28 ; elapsed = 00:00:28 . Memory (MB): peak = 1606.852 ; gain = 90.8322default:defaulth px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
C
.Phase 5.1 Delay CleanUp | Checksum: 1cbba8109
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:28 ; elapsed = 00:00:28 . Memory (MB): peak = 1606.852 ; gain = 90.8322default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 1cbba8109
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:28 ; elapsed = 00:00:28 . Memory (MB): peak = 1606.852 ; gain = 90.8322default:defaulth px? 
O
:Phase 5 Delay and Skew Optimization | Checksum: 1cbba8109
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:28 ; elapsed = 00:00:28 . Memory (MB): peak = 1606.852 ; gain = 90.8322default:defaulth px? 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 6.1.1 Update Timing | Checksum: 1e2878bbb
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:29 ; elapsed = 00:00:28 . Memory (MB): peak = 1606.852 ; gain = 90.8322default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=0.609  | TNS=0.000  | WHS=0.151  | THS=0.000  |
2default:defaultZ35-416h px? 
C
.Phase 6.1 Hold Fix Iter | Checksum: 26c822355
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:29 ; elapsed = 00:00:28 . Memory (MB): peak = 1606.852 ; gain = 90.8322default:defaulth px? 
A
,Phase 6 Post Hold Fix | Checksum: 26c822355
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:29 ; elapsed = 00:00:28 . Memory (MB): peak = 1606.852 ; gain = 90.8322default:defaulth px? 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px? 
B
-Phase 7 Route finalize | Checksum: 2165d5d21
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:29 ; elapsed = 00:00:28 . Memory (MB): peak = 1606.852 ; gain = 90.8322default:defaulth px? 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
I
4Phase 8 Verifying routed nets | Checksum: 2165d5d21
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:29 ; elapsed = 00:00:28 . Memory (MB): peak = 1607.414 ; gain = 91.3952default:defaulth px? 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
E
0Phase 9 Depositing Routes | Checksum: 16037fdd7
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:29 ; elapsed = 00:00:28 . Memory (MB): peak = 1607.414 ; gain = 91.3952default:defaulth px? 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
?
Estimated Timing Summary %s
57*route2J
6| WNS=0.609  | TNS=0.000  | WHS=0.151  | THS=0.000  |
2default:defaultZ35-57h px? 
?
?The final timing numbers are based on the router estimated timing analysis. For a complete and accurate timing signoff, please run report_timing_summary.
127*routeZ35-327h px? 
G
2Phase 10 Post Router Timing | Checksum: 16037fdd7
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:29 ; elapsed = 00:00:28 . Memory (MB): peak = 1607.414 ; gain = 91.3952default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:29 ; elapsed = 00:00:28 . Memory (MB): peak = 1607.414 ; gain = 91.3952default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
902default:default2
42default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:00:312default:default2
00:00:292default:default2
1607.4142default:default2
102.2812default:defaultZ17-268h px? 
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
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:012default:default2 
00:00:00.3622default:default2
1617.3712default:default2
9.9572default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
?C:/Users/Eliana/Documents/00. 1D Comptruct Term 4/Alchitry/SSR v1/work/vivado/Test1Intro/Test1Intro.runs/impl_1/au_top_0_routed.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
mExecuting : report_drc -file au_top_0_drc_routed.rpt -pb au_top_0_drc_routed.pb -rpx au_top_0_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2t
`report_drc -file au_top_0_drc_routed.rpt -pb au_top_0_drc_routed.pb -rpx au_top_0_drc_routed.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
168*coretcl2?
?C:/Users/Eliana/Documents/00. 1D Comptruct Term 4/Alchitry/SSR v1/work/vivado/Test1Intro/Test1Intro.runs/impl_1/au_top_0_drc_routed.rpt?C:/Users/Eliana/Documents/00. 1D Comptruct Term 4/Alchitry/SSR v1/work/vivado/Test1Intro/Test1Intro.runs/impl_1/au_top_0_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file au_top_0_methodology_drc_routed.rpt -pb au_top_0_methodology_drc_routed.pb -rpx au_top_0_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file au_top_0_methodology_drc_routed.rpt -pb au_top_0_methodology_drc_routed.pb -rpx au_top_0_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
Y
$Running Methodology with %s threads
74*drc2
22default:defaultZ23-133h px? 
?
2The results of Report Methodology are in file %s.
450*coretcl2?
?C:/Users/Eliana/Documents/00. 1D Comptruct Term 4/Alchitry/SSR v1/work/vivado/Test1Intro/Test1Intro.runs/impl_1/au_top_0_methodology_drc_routed.rpt?C:/Users/Eliana/Documents/00. 1D Comptruct Term 4/Alchitry/SSR v1/work/vivado/Test1Intro/Test1Intro.runs/impl_1/au_top_0_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
%s4*runtcl2?
}Executing : report_power -file au_top_0_power_routed.rpt -pb au_top_0_power_summary_routed.pb -rpx au_top_0_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
preport_power -file au_top_0_power_routed.rpt -pb au_top_0_power_summary_routed.pb -rpx au_top_0_power_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1022default:default2
42default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 
?
%s4*runtcl2q
]Executing : report_route_status -file au_top_0_route_status.rpt -pb au_top_0_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -file au_top_0_timing_summary_routed.rpt -pb au_top_0_timing_summary_routed.pb -rpx au_top_0_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 
?
%s4*runtcl2e
QExecuting : report_incremental_reuse -file au_top_0_incremental_reuse_routed.rpt
2default:defaulth px? 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px? 
?
%s4*runtcl2e
QExecuting : report_clock_utilization -file au_top_0_clock_utilization_routed.rpt
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_bus_skew -warn_on_violation -file au_top_0_bus_skew_routed.rpt -pb au_top_0_bus_skew_routed.pb -rpx au_top_0_bus_skew_routed.rpx
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 


End Record