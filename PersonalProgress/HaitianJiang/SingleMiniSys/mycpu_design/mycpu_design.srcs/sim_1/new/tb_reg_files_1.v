`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2020/11/27 10:11:14
// Design Name:
// Module Name: tb_reg_files_1
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


module tb_reg_files_1;

// reg_files_1 Parameters
parameter PERIOD  = 10;


// reg_files_1 Inputs
reg   clk                                  = 0 ;
reg   rst_n                                = 1 ;
reg   [4:0]  rA                            = 0 ;
reg   [4:0]  rB                            = 0 ;
reg   [4:0]  rW                            = 0 ;
reg   [31:0]  writeData                    = 0 ;
reg   RegWrite                             = 0 ;

// reg_files_1 Outputs
wire  [31:0]  A                            ;
wire  [31:0]  B                            ;


initial
begin
    forever
        #(PERIOD/2)  clk=~clk;
end

initial
begin
    #(PERIOD*2) rst_n  =  0;
end

reg_files_1  u_reg_files_1 (
                 .clk                     ( clk               ),
                 .rst_n                   ( rst_n             ),
                 .rA                      ( rA         [4:0]  ),
                 .rB                      ( rB         [4:0]  ),
                 .rW                      ( rW         [4:0]  ),
                 .writeData               ( writeData  [31:0] ),
                 .RegWrite                ( RegWrite          ),

                 .A                       ( A          [31:0] ),
                 .B                       ( B          [31:0] )
             );

initial
begin
    #20
    RegWrite = 1;
    rW = 0;
    writeData = 32'hff;
    #10
     rW = 1;
    writeData = 32'hff;
    #10
     rA = 1;
    #10
     rB = 1;
    #10
     rA = 0;
    rB = 0;
end


endmodule
