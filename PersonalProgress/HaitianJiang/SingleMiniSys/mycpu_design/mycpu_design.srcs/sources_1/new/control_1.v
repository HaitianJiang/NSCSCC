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
           output reg [3:0] ALUop
       );

always @(*)
begin
    if(op == 6'b0)
    begin
        case (func)
            6'b100000:  // add
            begin
                RegWrite <= 1;
                ALUop <= 4'b0000;
            end
            6'b100001:  // addu
            begin
                RegWrite <= 1;
                ALUop <= 4'b0001;
            end
            6'b100010:  // sub
            begin
                RegWrite <= 1;
                ALUop <= 4'b0010;
            end
            6'b100011:  // subu
            begin
                RegWrite <= 1;
                ALUop <= 4'b0011;
            end
            6'b100100:  // and
            begin
                RegWrite <= 1;
                ALUop <= 4'b0100;
            end
            6'b100101:  // or
            begin
                RegWrite <= 1;
                ALUop <= 4'b0101;
            end
            6'b100110:  // xor
            begin
                RegWrite <= 1;
                ALUop <= 4'b0110;
            end
            6'b100111:  // nor
            begin
                RegWrite <= 1;
                ALUop <= 4'b0111;
            end
            6'b101010:  // slt
            begin
                RegWrite <= 1;
                ALUop <= 4'b1000;
            end
            6'b101011:  // sltu
            begin
                RegWrite <= 1;
                ALUop <= 4'b1001;
            end
            6'b000100:  // sllv
            begin
                RegWrite <= 1;
                ALUop <= 4'b1010;
            end
            6'b000110:  // srlv
            begin
                RegWrite <= 1;
                ALUop <= 4'b1011;
            end
            6'b000111:  // srav
            begin
                RegWrite <= 1;
                ALUop <= 4'b1100;
            end
            default:
            begin
                RegWrite <= 0;
                ALUop <= 4'b1111;
            end
        endcase
    end
    else
    begin
        RegWrite <= 0;
        ALUop <= 4'b1111;
    end
end

endmodule
