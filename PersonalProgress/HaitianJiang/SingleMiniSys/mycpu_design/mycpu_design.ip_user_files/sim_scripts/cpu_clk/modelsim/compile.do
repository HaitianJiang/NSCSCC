vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm  -incr -sv "+incdir+../../../ipstatic" \
"E:/SoftWare/Program/Vivado202001/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/SoftWare/Program/Vivado202001/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"E:/SoftWare/Program/Vivado202001/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr "+incdir+../../../ipstatic" \
"../../../../mycpu_design.srcs/sources_1/ip/cpu_clk/cpu_clk_clk_wiz.v" \
"../../../../mycpu_design.srcs/sources_1/ip/cpu_clk/cpu_clk.v" \

vlog -work xil_defaultlib \
"glbl.v"

