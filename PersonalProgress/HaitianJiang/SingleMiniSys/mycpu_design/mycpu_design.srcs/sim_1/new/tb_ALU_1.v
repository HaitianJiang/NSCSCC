`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2020/11/27 10:36:19
// Design Name:
// Module Name: tb_ALU_1
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


module tb_ALU_1;


// ALU_1 Inputs
reg   [31:0]  A                            = 0 ;
reg   [31:0]  B                            = 0 ;
reg   [3:0]  ALUop                         = 0 ;

// ALU_1 Outputs
wire  [31:0]  ALUresult                    ;


ALU_1  u_ALU_1 (
           .A                       ( A          [31:0] ),
           .B                       ( B          [31:0] ),
           .ALUop                   ( ALUop      [3:0]  ),

           .ALUresult               ( ALUresult  [31:0] )
       );

initial
begin
    #10
    ALUop = 0;
    A = 1;
    B = 4;
    #10
    ALUop = 1;
    A = 1;
    B = 5;
    #10
    ALUop = 2;
    A = 4;
    B = 1;
    #10
    ALUop = 3;
    A = 4;
    B = 2;
    // and
    #10
    ALUop = 4;
    A = 32'b1001111;
    B = 32'b1001001;
    #10
    ALUop = 5;
    A = 32'b1001111;
    B = 32'b1001001;
    #10
    ALUop = 6;
    A = 32'b1001111;
    B = 32'b1001001;
    #10
    ALUop = 7;
    A = 32'b1001111;
    B = 32'b1001001;
    // slt
    #30
    ALUop = 8;
    A = -1;
    B = 3;
    #10
    ALUop = 9;
    A = -1;
    B = 3;
    #10
    ALUop = 9;
    A = 1;
    B = 3;
    // sllv
    #30
    ALUop = 10;
    A = 32'b1001111;
    B = 32'd4;
    #10
    ALUop = 11;
    A = 32'hABCDabcd;
    B = 32'd4;
    // srav
    #30
    ALUop = 12;
    A = 32'hABCDabcd;
    B = 32'd4;
    #40
    ALUop = 4'b1111;

end

endmodule
