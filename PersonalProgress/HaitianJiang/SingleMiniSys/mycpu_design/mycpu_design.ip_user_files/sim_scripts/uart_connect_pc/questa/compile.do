vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm  -sv \
"E:/SoftWare/Program/Vivado202001/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/SoftWare/Program/Vivado202001/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"E:/SoftWare/Program/Vivado202001/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  \
"../../../../mycpu_design.srcs/sources_1/ip/uart_connect_pc/uart_bmpg.v" \
"../../../../mycpu_design.srcs/sources_1/ip/uart_connect_pc/upg.v" \
"../../../../mycpu_design.srcs/sources_1/ip/uart_connect_pc/sim/uart_connect_pc.v" \

vlog -work xil_defaultlib \
"glbl.v"

