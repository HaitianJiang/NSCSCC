-makelib xcelium_lib/xpm -sv \
  "E:/SoftWare/Program/Vivado202001/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "E:/SoftWare/Program/Vivado202001/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "E:/SoftWare/Program/Vivado202001/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../mycpu_design.srcs/sources_1/ip/uart_connect_pc/uart_bmpg.v" \
  "../../../../mycpu_design.srcs/sources_1/ip/uart_connect_pc/upg.v" \
  "../../../../mycpu_design.srcs/sources_1/ip/uart_connect_pc/sim/uart_connect_pc.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

