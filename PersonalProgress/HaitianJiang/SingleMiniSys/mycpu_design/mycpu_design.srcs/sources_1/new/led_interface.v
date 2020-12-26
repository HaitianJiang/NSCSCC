`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2020/12/26 21:25:30
// Design Name:
// Module Name: led_interface
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


module led_interface(
           input clk,
           input rst_n,

           input led_write,
           // from cpu
           input [15:0] led_data_i,
           input [5:0] led_cs, // led chip select
           input [3:0] led_port_addr,

           // send to led lights
           output reg [23:0] led_data_o
       );

// led port
reg [15:0] led_port [7:0];
integer i;
initial
begin
    for(i = 0; i < 8; i = i + 1)
        led_port[i] = 0;
end

///////////////////////////////////////////
/////////////// read port /////////////////
///////////////////////////////////////////
always @(*)
begin
    if(rst_n == 1)
    begin
        led_data_o <= 0;
    end
    else
    begin
        led_data_o <= {led_port[1][15:8],led_port[0]};
    end
end

///////////////////////////////////////////
/////////////// write port ////////////////
///////////////////////////////////////////
always @(posedge clk)
begin
    if(rst_n == 0)
    begin
        if(led_write == 1 && led_cs == 6'b000_110)
        begin
            led_port[led_port_addr[3:1]] <= led_data_i;
        end
        else
            ;
    end
    else
        ;
end


endmodule
