-makelib ies_lib/xpm -sv \
  "E:/SoftWare/Program/Vivado202001/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "E:/SoftWare/Program/Vivado202001/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "E:/SoftWare/Program/Vivado202001/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../mycpu_design.srcs/sources_1/ip/cpu_clk/cpu_clk_clk_wiz.v" \
  "../../../../mycpu_design.srcs/sources_1/ip/cpu_clk/cpu_clk.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

