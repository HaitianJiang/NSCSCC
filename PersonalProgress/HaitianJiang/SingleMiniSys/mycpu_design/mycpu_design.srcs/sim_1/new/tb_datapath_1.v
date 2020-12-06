`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/27 12:12:14
// Design Name: 
// Module Name: tb_datapath_1
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


module tb_datapath_1;

// datapath_1 Parameters
parameter PERIOD  = 20;     // clk 10MHz


// datapath_1 Inputs
reg   clk                                  = 0 ;
reg   rst_n                                = 1 ;

// datapath_1 Outputs



initial
begin
    forever #(PERIOD/2)  clk=~clk;
end

initial
begin
    #(PERIOD*250) rst_n  =  0;
end

datapath_1  u_datapath_1 (
    .clk                     ( clk     ),
    .rst_n                   ( rst_n   )
);

endmodule