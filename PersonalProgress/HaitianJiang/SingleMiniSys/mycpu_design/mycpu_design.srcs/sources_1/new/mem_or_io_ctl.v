`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2020/12/26 20:18:41
// Design Name:
// Module Name: mem_or_io_ctl
// Project Name:
// Target Devices:
// Tool Versions:
// Description: data memory and io devices controler
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////

// It's a combinational logic circuit.
module mem_or_io_ctl(
           // connect with cpu
           input [31:0] cpu_addr_i,
           input [31:0] cpu_data_i,
           input mem_io_write,

           output reg [31:0] cpu_data_o,   // send data to cpu

           // connect with data memory
           input [31:0] mem_data_i,

           output reg [31:0] mem_data_o,
           output reg [31:0] mem_addr_o,
           output reg mem_write,

           // connect with io devices
           input [15:0] switch_data_i,  // toggle switch

           output reg [15:0] led_data_o,    // LED
           output reg io_write,
           // select interface chip
           output reg [5:0] chip_select,
           // select port address of selected interface chip
           output reg [3:0] io_port_addr
       );



always @(*)
begin
    if(cpu_addr_i[31:10] == 22'h3F_FFFF) // IO
    begin
        io_write <= mem_io_write;
        chip_select <= cpu_addr_i[9:4];
        io_port_addr <= cpu_addr_i[3:0];
        led_data_o <= cpu_data_i[15:0];

        cpu_data_o <= {16'h0,switch_data_i};

        mem_data_o <= 0;
        mem_addr_o <= 0;
        mem_write <= 0;
    end
    else if(cpu_addr_i[31:10] != 22'h3F_FFFF)   // data memory
    begin
        io_write <= 0;
        chip_select <= 0;
        io_port_addr <= 0;
        led_data_o <= 0;

        cpu_data_o <= mem_data_i;

        mem_data_o <= cpu_data_i;
        mem_addr_o <= cpu_addr_i;
        mem_write <= mem_io_write;
    end
end


endmodule
