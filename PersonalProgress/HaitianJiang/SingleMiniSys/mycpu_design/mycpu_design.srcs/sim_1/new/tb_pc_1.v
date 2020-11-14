`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/12 20:58:17
// Design Name: 
// Module Name: tb_pc_1
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


module tb_pc_1;

// pc_1 Parameters
parameter PERIOD  = 10;


// pc_1 Inputs
reg   clk                                  = 0 ;
reg   rst_n                                = 1 ;
// reg   [31:0]  pcNew                        = 0 ;

// pc_1 Outputs
wire  [31:0]  pcOld                        ;


initial
begin
    forever #(PERIOD/2)  clk=~clk;
end

initial
begin
    #(PERIOD*2) rst_n  =  0;
end

pc_1  u_pc_1 (
    .clk                     ( clk           ),
    .rst_n                   ( rst_n         ),
    .pcNew                   ( pcOld  [31:0] ),

    .pcOld                   ( pcOld  [31:0] )
);


endmodule