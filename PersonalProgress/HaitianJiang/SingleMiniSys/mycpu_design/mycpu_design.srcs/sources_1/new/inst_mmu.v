`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/25 16:10:45
// Design Name: 
// Module Name: inst_mmu
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


module inst_mmu(
    input [31:0] virtual_addr,

    output [31:0] real_addr
    );

assign real_addr = virtual_addr - 32'h00003000;

endmodule
