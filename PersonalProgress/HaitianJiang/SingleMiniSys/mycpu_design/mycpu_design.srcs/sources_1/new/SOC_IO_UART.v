`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2020/12/28 19:18:47
// Design Name:
// Module Name: SOC_IO_UART
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


module SOC_IO_UART(
           input clk,
           input rst_n,

           // IO device
           input [23:0] toggle_switch,
           output [23:0] led_data_out,

           // UART
           input  start_pg,    // pin:P5 接板上的S3按键做下载启动键
           input  rx,          // pin:Y19 UART接收
           output tx           // pin:V18 UART发送
       );


////////////////////////////////////
////// UART download control  //////
////////////////////////////////////


wire fpga_clk = clk;
wire fpga_rst = rst_n;

wire spg_bufg;
BUFG U1(.I(start_pg), .O(spg_bufg));	    // S3按键去抖 Implementation Error

// Generate UART Programmer reset signal
reg upg_rst;
always @ (posedge fpga_clk)
begin
    if (spg_bufg)
        upg_rst = 0;
    if (fpga_rst)
        upg_rst = 1;
end

assign io_device_rst = fpga_rst | !upg_rst;


////////////////////////////////////
////////  clock divider  ///////////
////////////////////////////////////


// cpu_clk Outputs
wire  clk_out_20MHz;
wire  clk_out_10MHz;

cpu_clk  u_cpu_clk (
             .clk_in1                 ( clk  ),

             .clk_out1                ( clk_out_20MHz   ),
             .clk_out2                ( clk_out_10MHz   )
         );


////////////////////////////////////
//////////////  CPU  ///////////////
////////////////////////////////////

// CPU_only Inputs
wire  [31:0]  instruction;
wire  [31:0]  outside_data_i;

// CPU_only Outputs
wire  [31:0]  pc;
wire  mem_io_write;
wire  [31:0]  data_addr;
wire  [31:0]  data_out;

CPU_only  u_CPU_only (
              .clk                     ( clk_out_20MHz  ),
              .rst_n                   ( rst_n          ),
              .instruction             ( instruction    ),
              .memData                 ( outside_data_i ),

              .pc                      ( pc             ),
              .MemWrite_out            ( mem_io_write   ),
              .data_addr               ( data_addr      ),
              .data_out                ( data_out       )
          );


////////////////////////////////////
////////  instruction MMU  /////////
////////////////////////////////////

// inst_mmu Inputs
wire  [31:0]  virtual_addr;

assign virtual_addr = pc;

// inst_mmu Outputs
wire  [31:0]  real_addr;

inst_mmu  u_inst_mmu (
              .virtual_addr            ( virtual_addr   ),

              .real_addr               ( real_addr      )
          );



////////////////////////////////////
//////////////  UART  //////////////
////////////////////////////////////

// uart_connect_pc Inputs


// uart_connect_pc Outputs
wire  upg_clk_o;
wire  upg_wen_o;
wire  [14 : 0]  upg_adr_o;
wire  [31 : 0]  upg_dat_o;
wire  upg_done_o;

uart_connect_pc  u_uart_connect_pc (
                     .upg_clk_i               ( clk_out_10MHz ),
                     .upg_rst_i               ( upg_rst       ),
                     .upg_rx_i                ( rx            ),

                     .upg_clk_o               ( upg_clk_o    ),
                     .upg_wen_o               ( upg_wen_o    ),
                     .upg_adr_o               ( upg_adr_o    ),
                     .upg_dat_o               ( upg_dat_o    ),
                     .upg_done_o              ( upg_done_o   ),
                     .upg_tx_o                ( tx           )
                 );



///////////////////////////////////
//// Instruction ROM with UART ////
///////////////////////////////////


// // blk_mem_gen_0 Inputs
// wire [13:0] inst_addr;

// assign inst_addr = real_addr[15:2];

// // blk_mem_gen_0 Outputs // instructions
// wire  [31:0]  instruction_out;

// assign instruction = instruction_out;

// inst_rom  u_inst_rom (
//               .clka                    ( clk             ),
//               .addra                   ( inst_addr       ),

//               .douta                   ( instruction_out )
//           );


// programrom Inputs
wire  [13:0]  rom_adr_i;
assign rom_adr_i = real_addr[15:2];


wire  upg_clk_i;
wire  upg_wen_i;
wire  [13:0]  upg_adr_i;
wire  [31:0]  upg_dat_i;
wire  upg_done_i;

assign upg_clk_i  = upg_clk_o;
assign upg_wen_i  = upg_wen_o;
assign upg_adr_i  = upg_adr_o[13:0];
assign upg_dat_i  = upg_dat_o;
assign upg_done_i = upg_done_o;

// programrom Outputs
wire  [31:0]  inst;

assign instruction = inst;

programrom  u_programrom (
                .rom_clk_i               ( clk    ),
                .rom_adr_i               ( rom_adr_i    ),

                .upg_rst_i               ( upg_rst    ),
                .upg_clk_i               ( upg_clk_i    ),
                // NOTE: if(upg_adr_o[13] == 1) write data to ROM
                .upg_wen_i               ( upg_wen_i & !upg_adr_o[14] ),
                .upg_adr_i               ( upg_adr_i    ),
                .upg_dat_i               ( upg_dat_i    ),
                .upg_done_i              ( upg_done_i   ),


                .inst                    ( inst         )
            );


////////////////////////////////////
//////   mem or io controler  //////
////////////////////////////////////

// mem_or_io_ctl Inputs
wire  [31:0]  cpu_addr_i;
wire  [31:0]  cpu_data_i;
wire  mem_io_write_in;

wire  [31:0]  mem_data_i;
wire  [15:0]  switch_data_i;


// cpu related
assign mem_io_write_in = mem_io_write;
assign cpu_addr_i = data_addr;
assign cpu_data_i = data_out;


// mem_or_io_ctl Outputs
wire  [31:0]  cpu_data_o;

wire  [31:0]  mem_data_o;
wire  [31:0]  mem_addr_o;
wire  mem_write;

wire  [15:0]  led_data_o;
wire  io_write;
wire  [5:0]  chip_select;
wire  [3:0]  io_port_addr;

// cpu related
assign outside_data_i = cpu_data_o;



mem_or_io_ctl  u_mem_or_io_ctl (
                   .cpu_addr_i              ( cpu_addr_i     ),
                   .cpu_data_i              ( cpu_data_i     ),

                   .mem_io_write            ( mem_io_write   ),
                   .mem_data_i              ( mem_data_i     ),

                   .switch_data_i           ( switch_data_i  ),

                   ///////////////////////////////////////////

                   .cpu_data_o              ( cpu_data_o     ),

                   .mem_data_o              ( mem_data_o     ),
                   .mem_addr_o              ( mem_addr_o     ),
                   .mem_write               ( mem_write      ),

                   .led_data_o              ( led_data_o     ),
                   .io_write                ( io_write       ),
                   .chip_select             ( chip_select    ),
                   .io_port_addr            ( io_port_addr   )
               );


////////////////////////////////////
////////////  data RAM  ////////////
////////////////////////////////////


// // input
// wire MemWrite;
// wire [31:0] data_in;
// wire [13:0] data_addr_in;

// assign MemWrite = mem_write;
// assign data_in = mem_data_o;
// assign data_addr_in = mem_addr_o[15:2];

// // output
// wire [31:0] memData_out;

// assign mem_data_i = memData_out;

// data_ram  u_data_ram (
//               .clka                    ( clk          ),

//               .wea                     ( MemWrite     ),
//               .addra                   ( data_addr_in ),
//               .dina                    ( data_in       ),

//               .douta                   ( memData_out   )
//           );

// programram Inputs
wire  ram_wen_i;
wire  [13:0]  ram_adr_i;
wire  [31:0]  ram_dat_i;

assign ram_wen_i = mem_write;
assign ram_dat_i = mem_data_o;
assign ram_adr_i = mem_addr_o[15:2];

// wire  upg_clk_i;
/////////////////////wire  upg_wen_i;
// wire  [13:0]  upg_adr_i;
// wire  [31:0]  upg_dat_i;
// wire  upg_done_i;

// programram Outputs
wire  [31:0]  ram_dat_o;

assign mem_data_i = ram_dat_o;

programram  u_programram (
                .ram_clk                 ( clk      ),
                .ram_wen_i               ( ram_wen_i    ),
                .ram_adr_i               ( ram_adr_i    ),
                .ram_dat_i               ( ram_dat_i    ),

                .upg_rst_i               ( upg_rst    ),
                .upg_clk_i               ( upg_clk_i    ),
                // NOTE: if(upg_adr_o[14] == 1) write data to RAM
                .upg_wen_i               ( upg_wen_i & upg_adr_o[14] ),
                .upg_adr_i               ( upg_adr_i    ),
                .upg_dat_i               ( upg_dat_i    ),
                .upg_done_i              ( upg_done_i   ),


                .ram_dat_o               ( ram_dat_o    )
            );



/* IO device clock frequency = CPU clock frequency */

////////////////////////////////////
/////////  led interface  //////////
////////////////////////////////////

// led_interface Inputs
wire  led_write;
wire  [15:0]  led_data_i;
wire  [5:0]  led_cs;
wire  [3:0]  led_port_addr;


assign led_write = io_write;
assign led_data_i = led_data_o;
assign led_cs = chip_select;
assign led_port_addr = io_port_addr;

// led_interface Outputs
// wire  [23:0]  led_data_out;

led_interface  u_led_interface (
                   .clk                     ( clk_out_20MHz   ),
                   .rst_n                   ( io_device_rst           ),
                   .led_write               ( led_write       ),
                   .led_data_i              ( led_data_i      ),
                   .led_cs                  ( led_cs          ),
                   .led_port_addr           ( led_port_addr   ),

                   .led_data_o              ( led_data_out    )
               );



////////////////////////////////////
////  toggle switch interface  /////
////////////////////////////////////

// toggle_switch_interface Inputs
wire  [5:0]  switch_cs;
wire  [3:0]  switch_port_addr;

assign switch_cs = chip_select;
assign switch_port_addr = io_port_addr;

// toggle_switch_interface Outputs
wire  [15:0]  switch_data_o;

assign switch_data_i = switch_data_o;

toggle_switch_interface  u_toggle_switch_interface (
                             .clk                     ( clk_out_20MHz      ),
                             .rst_n                   ( io_device_rst      ),

                             .switch_data_i           ( toggle_switch      ),
                             .switch_cs               ( switch_cs          ),
                             .switch_port_addr        ( switch_port_addr   ),


                             .switch_data_o           ( switch_data_o      )
                         );

endmodule
