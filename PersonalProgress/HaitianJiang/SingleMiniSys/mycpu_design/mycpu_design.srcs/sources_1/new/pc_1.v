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

           // beq bne
           input [31:0] offset,
           input zero,
           input Branch,
           input nBranch,

           output [31:0] pcOld
       );


reg [31:0] pc = 0;
assign pcOld = pc;


// judge validity of beq/bne instruction
reg isBranch;
always @(*)
begin
    if((zero == 1) && (Branch == 1)) // beq valid
    begin
        isBranch <= 1;
    end
    else if((zero == 0) && (nBranch == 1)) // bne valid
    begin
        isBranch <= 1;
    end
    else
    begin
        isBranch <= 0;
    end
end


// select new pc value
reg [31:0] pcSelect; // new pc data
always @(*)
begin
    case({Jrn,isBranch})
        2'b00: // pc + 4
            pcSelect <= pcOrigin + 4;
        2'b10: // jr
            pcSelect <= JrPC;
        // fetching 1 instruction wastes 2 clock cycles(memory), and
        // executing the instruction needs 1 clock cycle(CPU).
        // NOTE:the frequency of two clocks is different. 
        2'b01: // beq bne
            pcSelect <= pcOrigin + 4 + offset;    
        default:
            pcSelect <= 0;
    endcase
end



// Update PC register
always @(posedge clk)
begin
    if(rst_n == 1) // Xilinx suggest：reset high level effective
    begin
        pc <= 0;
    end
    else
    begin
        pc <= pcSelect;
    end
end


endmodule
