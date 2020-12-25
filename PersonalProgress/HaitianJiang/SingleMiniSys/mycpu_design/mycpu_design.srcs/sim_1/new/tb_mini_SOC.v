`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2020/12/25 10:58:09
// Design Name:
// Module Name: tb_mini_SOC
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


module tb_mini_SOC;

// mini_SOC Parameters
parameter PERIOD  = 10;


// mini_SOC Inputs
reg   clk                                  = 0 ;
reg   rst_n                                = 1 ;

// mini_SOC Outputs



initial
begin
    forever
        #(PERIOD/2)  clk=~clk;
end

initial
begin
    #(PERIOD*200) rst_n  =  0;
end

mini_SOC  u_mini_SOC (
              .clk                     ( clk     ),
              .rst_n                   ( rst_n   )
          );


endmodule
