`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2020/11/14 22:30:23
// Design Name:
// Module Name: ALU_1
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


module ALU_1(
           // data
           input [31:0] A,
           input [31:0] B,
           input [4:0] shamt,
           // control
           input [3:0] ALUop,
           input Sftmd, // shift instruction control

           output reg [31:0] ALUresult
       );

// convert A and B to signed numbers
wire signed [31:0] A_signed = A;
wire signed [31:0] B_signed = B;


// for shift instructions
// select data: if (Sftmd == 1) input shamt else input rs
wire [31:0] A_or_Shift = (Sftmd == 0) ? A : {27'b0,shamt};


/* calculate */
always @(*)
begin
    case (ALUop)
        4'b0000:    // add
        begin
            ALUresult <= A + B;
        end
        4'b0001:    // addu
        begin
            ALUresult <= A + B;
        end
        4'b0010:    // sub
        begin
            ALUresult <= A - B;
        end
        4'b0011:    // subu
        begin
            ALUresult <= A - B;
        end
        4'b0100:    // and
        begin
            ALUresult <= A & B;
        end
        4'b0101:    // or
        begin
            ALUresult <= A | B;
        end
        4'b0110:    // xor
        begin
            ALUresult <= A ^ B;
        end
        4'b0111:    // nor
        begin
            ALUresult <= ~(A | B);
        end
        4'b1000:    // slt // note:********signed********//
        begin
            if(A_signed < B_signed)
                ALUresult <= 1;
            else
                ALUresult <= 0;
        end
        4'b1001:    // sltu
        begin
            if(A < B)
                ALUresult <= 1;
            else
                ALUresult <= 0;
        end
        4'b1010:    // sllv 10
        begin
            ALUresult <= B << A_or_Shift;    // NOTE: not A << B!
        end
        4'b1011:    // srlv
        begin
            ALUresult <= B >> A_or_Shift;    // NOTE: not A >> B!
        end
        4'b1100:    // srav // note: ******signed*******//
        begin
            ALUresult <= B_signed >>> A_or_Shift;    // NOTE: not A_signed >> B!
        end
        default:
        begin
            ALUresult <= 0;
        end
    endcase
end

endmodule
