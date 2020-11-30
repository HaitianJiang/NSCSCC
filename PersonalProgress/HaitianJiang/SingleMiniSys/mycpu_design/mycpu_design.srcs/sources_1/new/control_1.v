`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2020/11/14 22:30:48
// Design Name:
// Module Name: control_1
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


module control_1(
           input [5:0] op,
           input [5:0] func,

           output reg RegWrite,
           output reg Sftmd,    // indicate the instruction is sll/srl/sra
           output reg [3:0] ALUop,
           output reg Jrn,   // jr instruction
           output reg Lui,   // lui instruction
           output reg RegDst,
           output reg ALUSrc,
           output reg Zero_sign_ex
       );

always @(*)
begin
    case(op)
        6'b000000:  //////////////// R-type ////////////////////
        begin
            case (func)
                6'b100000:  // add
                begin
                    RegWrite <= 1;
                    Sftmd <= 0;
                    ALUop <= 4'b0000;
                    Jrn <= 0;
                    Lui <= 0;
                    RegDst <= 1;
                    ALUSrc <= 0;
                    Zero_sign_ex <= 0;

                end
                6'b100001:  // addu
                begin
                    RegWrite <= 1;
                    Sftmd <= 0;
                    ALUop <= 4'b0001;
                    Jrn <= 0;
                    Lui <= 0;
                    RegDst <= 1;
                    ALUSrc <= 0;
                    Zero_sign_ex <= 0;

                end
                6'b100010:  // sub
                begin
                    RegWrite <= 1;
                    Sftmd <= 0;
                    ALUop <= 4'b0010;
                    Jrn <= 0;
                    Lui <= 0;
                    RegDst <= 1;
                    ALUSrc <= 0;
                    Zero_sign_ex <= 0;

                end
                6'b100011:  // subu
                begin
                    RegWrite <= 1;
                    Sftmd <= 0;
                    ALUop <= 4'b0011;
                    Jrn <= 0;
                    Lui <= 0;
                    RegDst <= 1;
                    ALUSrc <= 0;
                    Zero_sign_ex <= 0;

                end
                6'b100100:  // and
                begin
                    RegWrite <= 1;
                    Sftmd <= 0;
                    ALUop <= 4'b0100;
                    Jrn <= 0;
                    Lui <= 0;
                    RegDst <= 1;
                    ALUSrc <= 0;
                    Zero_sign_ex <= 0;

                end
                6'b100101:  // or
                begin
                    RegWrite <= 1;
                    Sftmd <= 0;
                    ALUop <= 4'b0101;
                    Jrn <= 0;
                    Lui <= 0;
                    RegDst <= 1;
                    ALUSrc <= 0;
                    Zero_sign_ex <= 0;

                end
                6'b100110:  // xor
                begin
                    RegWrite <= 1;
                    Sftmd <= 0;
                    ALUop <= 4'b0110;
                    Jrn <= 0;
                    Lui <= 0;
                    RegDst <= 1;
                    ALUSrc <= 0;
                    Zero_sign_ex <= 0;

                end
                6'b100111:  // nor
                begin
                    RegWrite <= 1;
                    Sftmd <= 0;
                    ALUop <= 4'b0111;
                    Jrn <= 0;
                    Lui <= 0;
                    RegDst <= 1;
                    ALUSrc <= 0;
                    Zero_sign_ex <= 0;

                end
                6'b101010:  // slt
                begin
                    RegWrite <= 1;
                    Sftmd <= 0;
                    ALUop <= 4'b1000;
                    Jrn <= 0;
                    Lui <= 0;
                    RegDst <= 1;
                    ALUSrc <= 0;
                    Zero_sign_ex <= 0;

                end
                6'b101011:  // sltu
                begin
                    RegWrite <= 1;
                    Sftmd <= 0;
                    ALUop <= 4'b1001;
                    Jrn <= 0;
                    Lui <= 0;
                    RegDst <= 1;
                    ALUSrc <= 0;
                    Zero_sign_ex <= 0;

                end
                6'b000100:  // sllv
                begin
                    RegWrite <= 1;
                    Sftmd <= 0;
                    ALUop <= 4'b1010;
                    Jrn <= 0;
                    Lui <= 0;
                    RegDst <= 1;
                    ALUSrc <= 0;
                    Zero_sign_ex <= 0;

                end
                6'b000110:  // srlv
                begin
                    RegWrite <= 1;
                    Sftmd <= 0;
                    ALUop <= 4'b1011;
                    Jrn <= 0;
                    Lui <= 0;
                    RegDst <= 1;
                    ALUSrc <= 0;
                    Zero_sign_ex <= 0;

                end
                6'b000111:  // srav
                begin
                    RegWrite <= 1;
                    Sftmd <= 0;
                    ALUop <= 4'b1100;
                    Jrn <= 0;
                    Lui <= 0;
                    RegDst <= 1;
                    ALUSrc <= 0;
                    Zero_sign_ex <= 0;

                end
                6'b000000:  // sll
                begin
                    RegWrite <= 1;
                    Sftmd <= 1;
                    ALUop <= 4'b1010;
                    Jrn <= 0;
                    Lui <= 0;
                    RegDst <= 1;
                    ALUSrc <= 0;
                    Zero_sign_ex <= 0;

                end
                6'b000010:  // srl
                begin
                    RegWrite <= 1;
                    Sftmd <= 1;
                    ALUop <= 4'b1011;
                    Jrn <= 0;
                    Lui <= 0;
                    RegDst <= 1;
                    ALUSrc <= 0;
                    Zero_sign_ex <= 0;

                end
                6'b000011:  // sra
                begin
                    RegWrite <= 1;
                    Sftmd <= 1;
                    ALUop <= 4'b1100;
                    Jrn <= 0;
                    Lui <= 0;
                    RegDst <= 1;
                    ALUSrc <= 0;
                    Zero_sign_ex <= 0;

                end
                6'b001000:  // jr
                begin
                    RegWrite <= 0;
                    Sftmd <= 0;
                    ALUop <= 4'b1111;
                    Jrn <= 1;
                    Lui <= 0;
                    RegDst <= 1;
                    ALUSrc <= 0;
                    Zero_sign_ex <= 0;

                end
                default:
                begin
                    RegWrite <= 0;
                    Sftmd <= 0;
                    ALUop <= 4'b1111;
                    Jrn <= 0;
                    Lui <= 0;
                    RegDst <= 1;
                    ALUSrc <= 0;
                    Zero_sign_ex <= 0;
                end
            endcase
        end
        ////////////////////////////////////////
        /*************** I-type ***************/
        ////////////////////////////////////////
        6'b001000:  // addi
        begin
            ALUop <= 4'b0000;
            RegWrite <= 1;
            Sftmd <= 0;
            Jrn <= 0;
            Lui <= 0;
            RegDst <= 0;
            ALUSrc <= 1;
            Zero_sign_ex <= 1;
        end
        6'b001001:  // addiu
        begin
            ALUop <= 4'b0001;
            RegWrite <= 1;
            Sftmd <= 0;
            Jrn <= 0;
            Lui <= 0;
            RegDst <= 0;
            ALUSrc <= 1;
            Zero_sign_ex <= 1;
        end
        6'b001100:  // andi
        begin
            ALUop <= 4'b0100;
            RegWrite <= 1;
            Sftmd <= 0;
            Jrn <= 0;
            Lui <= 0;
            RegDst <= 0;
            ALUSrc <= 1;
            Zero_sign_ex <= 0;
        end
        6'b001101:  // ori
        begin
            ALUop <= 4'b0101;
            RegWrite <= 1;
            Sftmd <= 0;
            Jrn <= 0;
            Lui <= 0;
            RegDst <= 0;
            ALUSrc <= 1;
            Zero_sign_ex <= 0;
        end
        6'b001110:  // xori
        begin
            ALUop <= 4'b0110;
            RegWrite <= 1;
            Sftmd <= 0;
            Jrn <= 0;
            Lui <= 0;
            RegDst <= 0;
            ALUSrc <= 1;
            Zero_sign_ex <= 0;
        end
        6'b001111:  // lui //////// note ////////
        begin
            ALUop <= 4'b1101;
            RegWrite <= 1;
            Sftmd <= 0;
            Jrn <= 0;
            Lui <= 1;
            RegDst <= 0;
            ALUSrc <= 1;
            Zero_sign_ex <= 0;
        end
        6'b001010:  // slti
        begin
            ALUop <= 4'b1000;
            RegWrite <= 1;
            Sftmd <= 0;
            Jrn <= 0;
            Lui <= 0;
            RegDst <= 0;
            ALUSrc <= 1;
            Zero_sign_ex <= 1;
        end
        6'b001011:  // sltiu
        begin
            ALUop <= 4'b1001;
            RegWrite <= 1;
            Sftmd <= 0;
            Jrn <= 0;
            Lui <= 0;
            RegDst <= 0;
            ALUSrc <= 1;
            Zero_sign_ex <= 0;
        end

        default:
        begin
            RegWrite <= 0;
            Sftmd <= 0;
            ALUop <= 4'b1111;
            Jrn <= 0;
            Lui <= 0;
            RegDst <= 0;
            ALUSrc <= 0;
            Zero_sign_ex <= 0;
        end
    endcase
end

endmodule
