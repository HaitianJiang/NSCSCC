-makelib xcelium_lib/xpm -sv \
  "E:/SoftWare/Program/Vivado202001/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "E:/SoftWare/Program/Vivado202001/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "E:/SoftWare/Program/Vivado202001/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_4 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../mycpu_design.srcs/sources_1/ip/data_ram/sim/data_ram.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

