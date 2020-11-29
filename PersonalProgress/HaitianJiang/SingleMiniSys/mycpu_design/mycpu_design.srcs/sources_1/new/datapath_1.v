`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2020/11/27 11:41:34
// Design Name:
// Module Name: datapath_1
// Project Name:
// Target Devices:
// Tool Versions:
// Description: 仅仅实现了几个简单的R类指令的最简单的数据通路，不与外界交互
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module datapath_1(
           input clk,
           input rst_n,

           output [31:0] result // 测试syntheses，没有输出的模块是恐怖的
       );

/******** PC ********/

// pc_1 Outputs
wire  [31:0]  pcOld;

pc_1  u_pc_1 (
          .clk                     ( clk     ),
          .rst_n                   ( rst_n   ),
          .pcNew                   ( pcOld   ), // pcNew = pcOld + 4; no selection

          .pcOld                   ( pcOld   )
      );


/******** Instruction ROM ********/

// blk_mem_gen_0 Inputs
////////// wire  [13:0]  addra  = pcOld[15:2];

// blk_mem_gen_0 Outputs // instructions
wire  [31:0]  instruction;

blk_mem_gen_0  u_blk_mem_gen_0 (
                   .clka                    ( clk    ),
                   .addra                   ( pcOld[15:2]   ),

                   .douta                   ( instruction   )
               );


/******** Reg Files ********/

// reg_files_1 Inputs
wire  [31:0]  ALUresult;

/////// wire   [4:0]  rA = instruction[25:21];
/////// wire   [4:0]  rB = instruction[20:16];
/////// wire   [4:0]  rW = instruction[15:11];
/////// wire   [31:0]  writeData = ALUresult;
wire   RegWrite;

// reg_files_1 Outputs
wire  [31:0]  A;
wire  [31:0]  B;

reg_files_1  u_reg_files_1 (
                 .clk                     ( clk         ),
                 .rst_n                   ( rst_n       ),
                 .rA                      ( instruction[25:21]          ),
                 .rB                      ( instruction[20:16]          ),
                 .rW                      ( instruction[15:11]          ),
                 .writeData               ( ALUresult   ),
                 .RegWrite                ( RegWrite    ),

                 .A                       ( A           ),
                 .B                       ( B           )
             );


/******** ALU ********/

// ALU_1 Inputs
// wire   [31:0]  A;
// wire   [31:0]  B;
wire   [3:0]  ALUop;
wire   Sftmd;

// ALU_1 Outputs
// wire  [31:0]  ALUresult = writeData; // 【不能用！传输方向不对】

ALU_1  u_ALU_1 (
           .A                       ( A           ),
           .B                       ( B           ),
           .shamt                   ( instruction[10:6]),

           .ALUop                   ( ALUop       ),
           .Sftmd                   ( Sftmd       ),

           .ALUresult               ( ALUresult   )
       );


/******** controler ********/

// control_1 Inputs
////// wire   [5:0]  op = instruction[31:26];
////// wire   [5:0]  func = instruction[5:0];

// control_1 Outputs
// wire  RegWrite
// wire  [3:0]  ALUop;

control_1  u_control_1 (
               .op                      ( instruction[31:26]         ),
               .func                    ( instruction[5:0]       ),

               .RegWrite                ( RegWrite   ),
               .Sftmd                   ( Sftmd      ),
               .ALUop                   ( ALUop      )
           );

assign result = ALUresult;

endmodule

