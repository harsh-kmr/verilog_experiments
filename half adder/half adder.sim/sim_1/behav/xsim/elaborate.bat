@echo off
REM ****************************************************************************
REM Vivado (TM) v2020.1 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Mon Dec 05 11:12:17 +0530 2022
REM SW Build 2902540 on Wed May 27 19:54:49 MDT 2020
REM
REM Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
echo "xelab -wto 2355de52bb064cfa93fdf2c1f8098385 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot half_adder_tb_behav xil_defaultlib.half_adder_tb xil_defaultlib.glbl -log elaborate.log"
call xelab  -wto 2355de52bb064cfa93fdf2c1f8098385 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot half_adder_tb_behav xil_defaultlib.half_adder_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
