`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2020/12/28 19:44:36
// Design Name:
// Module Name: programrom
// Project Name:
// Target Devices:
// Tool Versions:
// Description:  Programable Instruction ROM using UART.
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module programrom(
           /* Instruction ROM */
           input   rom_clk_i,           // 100MHz
           input   [13:0] rom_adr_i,    // address
           output  [31:0] inst,        // instruction


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
////////// ROM ///////////
//////////////////////////

inst_rom  u_program_inst_rom (
                // choose to work normally or be programmed by UART
              .clka    ( is_programable ?  rom_clk_i  : upg_clk_i  ),
              .wea     ( is_programable ?  1'b0       : upg_wen_i  ),
              .addra   ( is_programable ?  rom_adr_i  : upg_adr_i  ),
              .dina    ( is_programable ?  32'h0      : upg_dat_i  ),

              .douta   ( inst)
          );

 
endmodule
