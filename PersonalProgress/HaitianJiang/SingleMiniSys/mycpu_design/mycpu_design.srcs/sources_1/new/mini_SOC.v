`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2020/12/25 10:22:36
// Design Name:
// Module Name: mini_SOC
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module mini_SOC(
           input clk,
           input rst_n
       );


////////////////////////////////////
//////////////  CPU  ///////////////
////////////////////////////////////

// CPU_only Inputs
wire  [31:0]  instruction;
wire  [31:0]  memData;

// CPU_only Outputs
wire  [13:0]  pc;
wire  MemWrite_out;
wire  [13:0]  data_addr;
wire  [31:0]  data_out;

CPU_only  u_CPU_only (
              .clk                     ( clk            ),
              .rst_n                   ( rst_n          ),
              .instruction             ( instruction    ),
              .memData                 ( memData        ),

              .pc                      ( pc             ),
              .MemWrite_out            ( MemWrite_out   ),
              .data_addr               ( data_addr      ),
              .data_out                ( data_out       )
          );


////////////////////////////////////
////////  instruction ROM  /////////
////////////////////////////////////


// blk_mem_gen_0 Inputs
wire [13:0] inst_addr;

assign inst_addr = pc;

// blk_mem_gen_0 Outputs // instructions
wire  [31:0]  instruction_out;

assign instruction = instruction_out;

inst_rom  u_inst_rom (
              .clka                    ( clk             ),
              .addra                   ( inst_addr       ),

              .douta                   ( instruction_out )
          );


////////////////////////////////////
////////////  data RAM  ////////////
////////////////////////////////////


// input
wire MemWrite;
wire [31:0] data_in;
wire [13:0] data_addr_in;

assign MemWrite = MemWrite_out;
assign data_in = data_out;
assign data_addr_in = data_addr;

// output
wire [31:0] memData_out;

assign memData_out = memData;


data_ram  u_data_ram (
              .clka                    ( clk          ),

              .wea                     ( MemWrite     ),
              .addra                   ( data_addr_in ),
              .dina                    ( data_in       ),

              .douta                   ( memData      )
          );


endmodule
