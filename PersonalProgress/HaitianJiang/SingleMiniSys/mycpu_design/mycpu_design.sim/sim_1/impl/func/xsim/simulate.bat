@echo off
REM ****************************************************************************
REM Vivado (TM) v2020.1 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Sun Dec 06 22:31:53 +0800 2020
REM SW Build 2902540 on Wed May 27 19:54:49 MDT 2020
REM
REM Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
echo "xsim tb_datapath_1_func_impl -key {Post-Implementation:sim_1:Functional:tb_datapath_1} -tclbatch tb_datapath_1.tcl -view D:/myCollege/ComputerSystem/NSCSCC/NSCSCC/NSCSCC/PersonalProgress/HaitianJiang/SingleMiniSys/mycpu_design/tb_datapath_1_behav_sim.wcfg -log simulate.log"
call xsim  tb_datapath_1_func_impl -key {Post-Implementation:sim_1:Functional:tb_datapath_1} -tclbatch tb_datapath_1.tcl -view D:/myCollege/ComputerSystem/NSCSCC/NSCSCC/NSCSCC/PersonalProgress/HaitianJiang/SingleMiniSys/mycpu_design/tb_datapath_1_behav_sim.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
