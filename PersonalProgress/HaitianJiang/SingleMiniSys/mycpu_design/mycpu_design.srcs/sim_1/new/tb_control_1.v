`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2020/11/15 09:49:52
// Design Name:
// Module Name: tb_control_1
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


module tb_control_1(

       );
// control_1 Parameters
parameter PERIOD  = 10;

// control_1 Inputs
reg   [5:0]  op                            = 0 ;
reg   [5:0]  func                          = 0 ;

// control_1 Outputs
wire  RegWrite                             ;
wire  [3:0]  ALUop                         ;


initial
begin
    op = 1 ;
    func = 0 ;
    #10
     op = 0 ;
    func = 6'b100000;
    #10
     op = 0 ;
    func = 6'b100001;
    #10
     op = 0 ;
    func = 6'b100010;
    #10
     op = 0 ;
    func = 6'b000111;
    #10
     op = 0 ;
    func = 6'b111111;
end

control_1  u_control_1 (
               .op                      ( op        [5:0] ),
               .func                    ( func      [5:0] ),

               .RegWrite                ( RegWrite        ),
               .ALUop                   ( ALUop     [3:0] )
           );

endmodule
