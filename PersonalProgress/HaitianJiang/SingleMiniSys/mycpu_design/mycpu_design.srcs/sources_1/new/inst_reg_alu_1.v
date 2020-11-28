`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/28 10:46:28
// Design Name: 
// Module Name: inst_reg_alu_1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 单独测试3个模块连接后的综合情况
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module inst_reg_alu_1(
    input clk,
    input [31:0] instruction,

    output [31:0] ALUresult
    );

    /******** Reg Files ********/

// reg_files_1 Inputs
/////// wire  [31:0]  ALUresult;

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
                 .rA                      ( instruction[25:21] ),
                 .rB                      ( instruction[20:16] ),
                 .rW                      ( instruction[15:11] ),
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

// ALU_1 Outputs
// wire  [31:0]  ALUresult = writeData; // 【不能用！传输方向不对】

ALU_1  u_ALU_1 (
           .A                       ( A           ),
           .B                       ( B           ),
           .ALUop                   ( ALUop       ),

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
               .ALUop                   ( ALUop      )
           );

assign result = ALUresult;
endmodule
