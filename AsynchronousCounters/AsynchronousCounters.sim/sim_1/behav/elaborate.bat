@echo off
set xv_path=F:\\Softwares-Installed\\Xilinx\\Vivado\\2015.1\\bin
call %xv_path%/xelab  -wto 5a7ffec1409043c080d310f0f932ca22 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot asyncnt_tb_behav xil_defaultlib.asyncnt_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
