`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2020/11/14 22:31:09
// Design Name:
// Module Name: reg_files_1
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


module reg_files_1(
           input clk,
           input rst_n,

           /*** read port 1 ***/
           input [4:0] rA,      // rs field
           output reg [31:0] A,

           /*** read port 2 ***/
           input [4:0] rB,      // rt
           output reg [31:0] B,

           /*** write port ***/
           input [4:0] rW,          // rd
           input [31:0] writeData,  // data
           input RegWrite,          // if RegWrite == 1,you can write data to reg files

           /*** I-type input control ***/
           input RegDst // 1: R-type destination is rd; 0: I-type dst is rt
       );

// reg files
reg [31:0] register [0:31];
integer i;
initial
begin
    for (i = 0;i < 32;i = i + 1)
    begin
        /////////////////////////////////////////////////
        ///////////// 为了方便初步测试 ///////////////////
        ////////////////////////////////////////////////
        register[i] <= i;
        // register[i] <= 0;
    end
end

/******* write operation *******/
wire [4:0] rW_select;
assign rW_select = (RegDst == 1)? rW: rB;

always @(posedge clk) // sequential logic
begin
    if(rst_n == 0)  // reset is invalid
    begin
        if((RegWrite == 1'b1) && (rW_select != 5'b0))  // write is valid and address is not equal zero
        begin
            register[rW_select] <= writeData;
        end
        else
            ;
    end
    else
        ;
end

/******* rA read operation *******/
always @(*) // combinational logic
begin
    if(rst_n == 1)
    begin
        A <= 32'b0;
    end
    else if(rA == 5'b0)
    begin
        A <= 32'b0;
    end
    else
    begin
        A <= register[rA];
    end
end



/******* rB read operation *******/
always @(*) // combinational logic
begin
    if(rst_n == 1)
    begin
        B <= 32'b0;
    end
    else if(rB == 5'b0) // $zero
    begin
        B <= 32'b0;
    end
    else
    begin
        B <= register[rB];
    end
end


endmodule
