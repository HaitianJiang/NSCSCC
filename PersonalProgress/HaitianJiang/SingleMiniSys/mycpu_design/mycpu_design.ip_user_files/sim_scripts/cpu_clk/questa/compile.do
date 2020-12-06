vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm  -sv "+incdir+../../../ipstatic" \
"E:/SoftWare/Program/Vivado202001/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/SoftWare/Program/Vivado202001/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"E:/SoftWare/Program/Vivado202001/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  "+incdir+../../../ipstatic" \
"../../../../mycpu_design.srcs/sources_1/ip/cpu_clk/cpu_clk_clk_wiz.v" \
"../../../../mycpu_design.srcs/sources_1/ip/cpu_clk/cpu_clk.v" \

vlog -work xil_defaultlib \
"glbl.v"

