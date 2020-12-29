`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2020/12/28 20:52:45
// Design Name:
// Module Name: programram
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


module programram(
           /* Data RAM */
           input  ram_clk,
           input  ram_wen_i,
           input  [13:0] ram_adr_i,
           input  [31:0] ram_dat_i,
           output [31:0] ram_dat_o,

           /* UART */
           input upg_rst_i,         // reset Active High
           input upg_clk_i,         // UPG clock 10MHz
           input upg_wen_i,         // write enable
           input [13:0] upg_adr_i,  // input [14:0] use [13:0]
           input [31:0] upg_dat_i,  // write data
           input upg_done_i         // 1 if program finish
       );


// if is_programable == 1 CPU work; else ROM download program.
wire is_programable = upg_rst_i | (~upg_rst_i & upg_done_i);

//////////////////////////
////////// RAM ///////////
//////////////////////////

data_ram  u_program_data_ram (
              .clka     ( is_programable ?  ram_clk   : upg_clk_i ),
              .wea      ( is_programable ?  ram_wen_i : upg_wen_i ),
              .addra    ( is_programable ?  ram_adr_i : upg_adr_i ),
              .dina     ( is_programable ?  ram_dat_i : upg_dat_i ),

              .douta    ( ram_dat_o )
          );


endmodule
