// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Thu Dec 10 23:27:44 2020
// Host        : LAPTOP-7F5JLFQ0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/myCollege/ComputerSystem/NSCSCC/NSCSCC/NSCSCC/PersonalProgress/HaitianJiang/SingleMiniSys/mycpu_design/mycpu_design.srcs/sources_1/ip/data_ram/data_ram_stub.v
// Design      : data_ram
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.1" *)
module data_ram(clka, wea, addra, dina, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[9:0],dina[31:0],douta[31:0]" */;
  input clka;
  input [0:0]wea;
  input [9:0]addra;
  input [31:0]dina;
  output [31:0]douta;
endmodule
