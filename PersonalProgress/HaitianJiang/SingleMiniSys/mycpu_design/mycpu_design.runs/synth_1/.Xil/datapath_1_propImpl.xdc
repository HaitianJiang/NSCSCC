set_property SRC_FILE_INFO {cfile:d:/myCollege/ComputerSystem/NSCSCC/NSCSCC/NSCSCC/PersonalProgress/HaitianJiang/SingleMiniSys/mycpu_design/mycpu_design.srcs/sources_1/ip/cpu_clk/cpu_clk/cpu_clk_in_context.xdc rfile:../../../mycpu_design.srcs/sources_1/ip/cpu_clk/cpu_clk/cpu_clk_in_context.xdc id:1 order:EARLY scoped_inst:u_cpu_clk} [current_design]
set_property SRC_FILE_INFO {cfile:D:/myCollege/ComputerSystem/NSCSCC/NSCSCC/NSCSCC/PersonalProgress/HaitianJiang/SingleMiniSys/mycpu_design/mycpu_design.srcs/constrs_1/new/datapath_1_pin.xdc rfile:../../../mycpu_design.srcs/constrs_1/new/datapath_1_pin.xdc id:2} [current_design]
current_instance u_cpu_clk
set_property src_info {type:SCOPED_XDC file:1 line:1 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 10.000 [get_ports -no_traverse {}]
set_property src_info {type:SCOPED_XDC file:1 line:4 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -source [get_ports clk_in1] -edges {1 2 3} -edge_shift {0.000 20.000 40.000} [get_ports {}]
current_instance
set_property src_info {type:XDC file:2 line:35 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y18 [get_ports clk]
set_property src_info {type:XDC file:2 line:36 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN P20 [get_ports rst_n]
