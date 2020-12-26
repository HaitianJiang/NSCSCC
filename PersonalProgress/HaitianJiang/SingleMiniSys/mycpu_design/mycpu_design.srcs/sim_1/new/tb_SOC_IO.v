`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2020/12/26 23:43:30
// Design Name:
// Module Name: tb_SOC_IO
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

module tb_SOC_IO;

// SOC_IO Parameters
parameter PERIOD  = 10;


// SOC_IO Inputs
reg   clk                                  = 0 ;
reg   rst_n                                = 1 ;
reg   [23:0]  toggle_switch                = 0 ;

// SOC_IO Outputs
wire  [23:0]  led_data_out                 ;


initial
begin
    forever
        #(PERIOD/2)  clk=~clk;
end

initial
begin
    #(PERIOD*200) rst_n  =  0;
end

SOC_IO  u_SOC_IO (
            .clk                     ( clk                   ),
            .rst_n                   ( rst_n                 ),
            .toggle_switch           ( toggle_switch  [23:0] ),

            .led_data_out            ( led_data_out   [23:0] )
        );

initial
begin
    #2000
    toggle_switch = 24'b11110001_10101010_00001100;
    #1000
    toggle_switch = 24'b1111;
    #1000
    toggle_switch = 24'b1000001111;
    #1000
    toggle_switch = 24'b111100010101111;

end

endmodule
