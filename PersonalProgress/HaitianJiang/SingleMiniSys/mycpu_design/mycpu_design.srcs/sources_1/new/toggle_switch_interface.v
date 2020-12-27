`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2020/12/26 21:26:12
// Design Name:
// Module Name: toggle_switch_interface
// Project Name:
// Target Devices:
// Tool Versions:
// Description: Non-programmable interface chip.
//              Its port target is fixed.
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module toggle_switch_interface(
           input clk,
           input rst_n,

           // from toggle switch
           input [23:0] switch_data_i,
           input [5:0] switch_cs,
           input [3:0] switch_port_addr,

           // send to CPU
           output reg [15:0] switch_data_o
       );


// reg [15:0] switch_port [7:0];
// integer i;
// initial
// begin
//     for(i = 0; i < 8; i = i + 1)
//         switch_port[i] = 0;
// end

////////////////////////////////////
/////////////// read ///////////////
////////////////////////////////////
always @(posedge clk)
begin
    if(rst_n == 1)
    begin
        switch_data_o <= 0;
    end
    else
    begin
        if(switch_cs == 6'b000_111) // 0xFFFF_FC70
        begin
            if(switch_port_addr == 4'b0000)
                switch_data_o <= switch_data_i[15:0];
            else if(switch_port_addr == 4'b0010)
                switch_data_o <= {8'b0,switch_data_i[23:16]};
        end
    end
end

endmodule
