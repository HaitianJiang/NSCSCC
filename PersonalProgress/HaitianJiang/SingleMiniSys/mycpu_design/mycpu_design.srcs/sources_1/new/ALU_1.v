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

           /*** I-type ***/
           input [15:0] imm, // data
           // control
           input Lui,           // 1:lui instruction
           input ALUSrc,        // 1:imm calculate
           input Zero_sign_ex,  // 0:zero extension; 1:sign extension

           output reg [31:0] ALUresult,
           // beq bne 
           output [31:0] offset,    
           output zero  // ALUresult == 0 => zero = 1;
       );

// convert A and B to signed numbers
wire signed [31:0] A_signed = A;
wire signed [31:0] B_signed;
wire signed [31:0] B_signed_origin = B; // for sra instruction

// for shift instructions
// select data: if (Sftmd == 1) input shamt else input rs
wire [31:0] A_or_Shift = (Sftmd == 0) ? A : {27'b0,shamt};


/*** I-type: data select ***/

// immediate data extension and select
wire [31:0] zero_imm_ex = {16'b0,imm};
wire [31:0] sign_imm_ex = (imm[15] == 1)? {16'hffff,imm}: {16'b0,imm}; // NOTE: 16'b1 is incorrect
wire [31:0] imm_input = (Zero_sign_ex == 0)? zero_imm_ex: sign_imm_ex;

// R[rt] or imm extension
wire [31:0] B_select = (ALUSrc == 0)? B: imm_input;
assign B_signed = B_select;

// output: (sign extension)offset << 2
assign offset = imm_input << 2;

/* calculate */
always @(*)
begin
    case (ALUop)
        4'b0000:    // add addi
        begin
            ALUresult <= A + B_select;
        end
        4'b0001:    // addu addiu
        begin
            ALUresult <= A + B_select;
        end
        4'b0010:    // sub
        begin
            ALUresult <= A - B;
        end
        4'b0011:    // subu
        begin
            ALUresult <= A - B;
            // zero <= ((A-B) == 0)? 1: 0; // beq
        end
        4'b0100:    // and andi
        begin
            ALUresult <= A & B_select;
        end
        4'b0101:    // or ori
        begin
            ALUresult <= A | B_select;
        end
        4'b0110:    // xor xori
        begin
            ALUresult <= A ^ B_select;
        end
        4'b0111:    // nor nori
        begin
            ALUresult <= ~(A | B_select);
        end
        4'b1000:    // slt slti // note:********signed********//
        begin
            if(A_signed < B_signed)
                ALUresult <= 1;
            else
                ALUresult <= 0;
        end
        4'b1001:    // sltu sltiu
        begin
            if(A < B_select)
                ALUresult <= 1;
            else
                ALUresult <= 0;
        end

        4'b1010:    // sllv 10  /*** note: not B_select ***/
        begin
            ALUresult <= B << A_or_Shift;    // NOTE: not A << B!
        end
        4'b1011:    // srlv
        begin
            ALUresult <= B >> A_or_Shift;    // NOTE: not A >> B!
        end
        4'b1100:    // srav // note: ******signed*******//
        begin
            ALUresult <= B_signed_origin >>> A_or_Shift;    // NOTE: not A_signed >> B!
        end

        4'b1101: // lui
        begin
            ALUresult <= (Lui == 1)? {imm,16'b0}: 0;
        end
        default:
        begin
            ALUresult <= 0;
        end
    endcase
end

assign zero = (ALUresult == 0)? 1: 0;

endmodule
