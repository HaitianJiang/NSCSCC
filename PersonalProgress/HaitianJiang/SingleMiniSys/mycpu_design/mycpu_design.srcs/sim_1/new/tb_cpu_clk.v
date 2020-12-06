`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/06 20:10:00
// Design Name: 
// Module Name: tb_cpu_clk
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


module tb_cpu_clk;

// cpu_clk Parameters
parameter PERIOD  = 10;


// cpu_clk Inputs
reg   clk_in1                              = 0 ;

// cpu_clk Outputs
wire  clk_out1                             ;


initial
begin
    forever #(PERIOD/2)  clk_in1 = ~clk_in1;
end



cpu_clk  u_cpu_clk (
    .clk_in1                 ( clk_in1    ),

    .clk_out1                ( clk_out1   )
);


endmodule
