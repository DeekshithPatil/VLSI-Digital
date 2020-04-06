@echo off
set xv_path=F:\\Softwares-Installed\\Xilinx\\Vivado\\2015.1\\bin
call %xv_path%/xelab  -wto 64b164e1c19f4b8183e33c14fe059926 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot cnt_tb_behav xil_defaultlib.cnt_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
