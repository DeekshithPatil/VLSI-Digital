@echo off
set xv_path=F:\\Softwares-Installed\\Xilinx\\Vivado\\2015.1\\bin
call %xv_path%/xsim dff_tb_behav -key {Behavioral:sim_1:Functional:dff_tb} -tclbatch dff_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
