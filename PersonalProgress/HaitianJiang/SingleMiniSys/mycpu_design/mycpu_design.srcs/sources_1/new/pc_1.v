`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2020/11/12 20:31:59
// Design Name:
// Module Name: pc_1
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


module pc_1(
           input clk,
           input rst_n,

           input [31:0] pcNew, // The PC value from outside.
           // input [31:0] pcData2
           // input [31:0] pcData3
           // input [31:0] pcData4
           // input some control signals

           output [31:0] pcOld
       );


reg [31:0] pc = 0;
assign pcOld = pc;

// Update PC register
always @(posedge clk)
begin
    if(rst_n == 1) // Xilinx 官方推荐：reset 高电平有效
    begin
        pc <= 0;
    end
    else
    begin
        pc <= pcNew + 4;
    end
end


endmodule
