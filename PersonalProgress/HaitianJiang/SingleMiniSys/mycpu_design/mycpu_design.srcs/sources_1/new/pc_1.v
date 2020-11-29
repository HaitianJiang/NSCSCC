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
           // pc data
           input [31:0] pcOrigin,  // The PC value is from pcOld.
           input [31:0] JrPC,   // jr instruction,from reg files.

           // pc control
           input Jrn,   // jr instruction.

           output [31:0] pcOld
       );


reg [31:0] pc = 0;
assign pcOld = pc;

wire [31:0] pcSelect; // new pc data

assign pcSelect = (Jrn == 0) ? (pcOrigin + 4): JrPC;

// Update PC register
always @(posedge clk)
begin
    if(rst_n == 1) // Xilinx 官方推荐：reset 高电平有效
    begin
        pc <= 0;
    end
    else
    begin
        pc <= pcSelect;
    end
end


endmodule
