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

           // J instruction.
           input [25:0] j_target,
           input Jmp,
           // Jal
           input Jal,

           output [31:0] pcOld
       );


reg [31:0] pc = 32'h00003000;
assign pcOld = pc;

// J Jal
// They have the same operation in pc.
wire J_Jal = Jmp || Jal;
reg [31:0] pc_plus_4;

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
    case({Jrn,isBranch,J_Jal})
        3'b000: // pc + 4
            pcSelect <= pcOrigin + 4;
        3'b100: // jr
            pcSelect <= JrPC;
        // fetching 1 instruction wastes 2 clock cycles(memory), and
        // executing the instruction needs 1 clock cycle(CPU).
        // NOTE:the frequency of two clocks is different.
        3'b010: // beq bne
            pcSelect <= pcOrigin + 4 + offset;
        3'b001: // J Jal
        begin
            pc_plus_4 <= pcOrigin + 4;
            pcSelect <= {pc_plus_4[31:28],j_target,2'b00};
        end

        default:
            pcSelect <= 32'h00003000;
    endcase
end



// Update PC register
always @(posedge clk)
begin
    if(rst_n == 1) // Xilinx suggest：reset high level effective
    begin
        pc <= 32'h00003000;
    end
    else
    begin
        pc <= pcSelect;
    end
end


endmodule
