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

//////////////////////
/******** PC ********/
//////////////////////

// pc_1 Inputs
wire  Jrn;
wire  [31:0]  JrPC;

wire [31:0] offset_in;
wire zero_in;
wire Branch_in;
wire nBranch_in;

// pc_1 Outputs
wire  [31:0]  pcOld;

pc_1  u_pc_1 (
          .clk                     ( clk     ),
          .rst_n                   ( rst_n   ),

          .pcOrigin                ( pcOld   ),
          .JrPC                    ( JrPC    ),

          .Jrn                     ( Jrn     ),

          .offset                  ( offset_in  ),
          .zero                    ( zero_in    ),
          .Branch                  ( Branch_in  ),
          .nBranch                 ( nBranch_in ),

          .pcOld                   ( pcOld   )
      );


///////////////////////////////////
/******** Instruction ROM ********/
///////////////////////////////////

// blk_mem_gen_0 Inputs
////////// wire  [13:0]  addra  = pcOld[15:2];

// blk_mem_gen_0 Outputs // instructions
wire  [31:0]  instruction;

blk_mem_gen_0  u_blk_mem_gen_0 (
                   .clka                    ( clk    ),
                   .addra                   ( pcOld[15:2]   ),

                   .douta                   ( instruction   )
               );


/////////////////////////////
/******** Reg Files ********/
/////////////////////////////


// reg_files_1 Inputs
wire  [31:0]  ALUresult;

/////// wire   [4:0]  rA = instruction[25:21];
/////// wire   [4:0]  rB = instruction[20:16];
/////// wire   [4:0]  rW = instruction[15:11];
/////// wire   [31:0]  writeData = ALUresult;
wire   RegWrite;
wire   RegDst_in;

// reg_files_1 Outputs
wire  [31:0]  A;    // rs
wire  [31:0]  B;    // rt
assign JrPC = A;

reg_files_1  u_reg_files_1 (
                 .clk                     ( clk         ),
                 .rst_n                   ( rst_n       ),
                 .rA                      ( instruction[25:21]          ),
                 .rB                      ( instruction[20:16]          ),
                 .rW                      ( instruction[15:11]          ),
                 .writeData               ( ALUresult   ),
                 .RegWrite                ( RegWrite    ),

                 .RegDst                  ( RegDst_in   ),

                 .A                       ( A           ),
                 .B                       ( B           )
             );

///////////////////////
/******** ALU ********/
///////////////////////

// ALU_1 Inputs
// wire   [31:0]  A;
// wire   [31:0]  B;
wire   [3:0]  ALUop;
wire   Sftmd;

wire   [15:0] imm = instruction[15:0];
wire Lui_in;
wire ALUSrc_in;
wire Zero_sign_ex_in;

// ALU_1 Outputs
// wire  [31:0]  ALUresult = writeData; // Note：Error！
wire  [31:0]  offset;
wire  zero;

assign offset_in = offset;
assign zero_in = zero;

ALU_1  u_ALU_1 (
           .A                       ( A           ),
           .B                       ( B           ),
           .shamt                   ( instruction[10:6]),

           .ALUop                   ( ALUop       ),
           .Sftmd                   ( Sftmd       ),

           /** I-type **/
           .imm                     ( imm              ),
           .Lui                     ( Lui_in           ),
           .ALUSrc                  ( ALUSrc_in        ),
           .Zero_sign_ex            ( Zero_sign_ex_in  ),

           .ALUresult               ( ALUresult        ),
           .offset                  ( offset           ),
           .zero                    ( zero             )
       );


/////////////////////////////
/******** controler ********/
/////////////////////////////

// control_1 Inputs
////// wire   [5:0]  op = instruction[31:26];
////// wire   [5:0]  func = instruction[5:0];

// control_1 Outputs
// wire  RegWrite
// wire  [3:0]  ALUop;
wire Lui;
wire RegDst;
wire ALUSrc;
wire Zero_sign_ex;
wire Branch;
wire nBranch;

// send to Reg Files
assign RegDst_in = RegDst;
// send to ALU
assign Lui_in = Lui;
assign ALUSrc_in = ALUSrc;
assign Zero_sign_ex_in = Zero_sign_ex;
// send to pc
assign Branch_in = Branch;
assign nBranch_in = nBranch;

control_1  u_control_1 (
               .op                      ( instruction[31:26]         ),
               .func                    ( instruction[5:0]       ),

               .RegWrite                ( RegWrite   ),
               .Sftmd                   ( Sftmd      ),
               .ALUop                   ( ALUop      ),
               .Jrn                     ( Jrn        ),
               // I type
               .Lui                     ( Lui        ),
               .RegDst                  ( RegDst     ),
               .ALUSrc                  ( ALUSrc     ),
               .Zero_sign_ex            ( Zero_sign_ex ),
               // beq bne
               .Branch                  ( Branch     ),
               .nBranch                 ( nBranch    )
           );

assign result = ALUresult;

endmodule

