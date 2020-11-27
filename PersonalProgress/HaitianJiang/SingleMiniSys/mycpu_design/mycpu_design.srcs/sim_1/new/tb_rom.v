`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2020/11/27 15:53:43
// Design Name:
// Module Name: tb_rom
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


module tb_rom(

       );

// datapath_1 Parameters
parameter PERIOD  = 10;


// datapath_1 Inputs
reg   clk                                  = 0 ;
reg   [13:0] addra                         = 0 ;

// datapath_1 Outputs
wire  [31:0]  instruction                  ;


initial
begin
    forever
        #(PERIOD/2)  clk=~clk;
end


blk_mem_gen_0  u_blk_mem_gen_0 (
                   .clka                    ( clk    ),
                   .addra                   ( addra   ),

                   .douta                   ( instruction   )
               );

initial
begin
    #40
    addra = 1;
    #10
    addra = 2;
    #30
    addra = 3;
    #30
    addra = 4;
end

endmodule
