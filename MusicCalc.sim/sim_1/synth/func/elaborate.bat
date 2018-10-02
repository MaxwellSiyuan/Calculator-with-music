@echo off
set xv_path=E:\\Vivado\\install\\Vivado\\2016.4\\bin
call %xv_path%/xelab  -wto a7562705bc5f4422808c0fe7c62cca33 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L secureip --snapshot ALU_tb_func_synth xil_defaultlib.ALU_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
