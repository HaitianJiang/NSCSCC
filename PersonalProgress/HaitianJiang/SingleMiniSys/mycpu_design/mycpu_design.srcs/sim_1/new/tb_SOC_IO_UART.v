`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/28 23:08:13
// Design Name: 
// Module Name: tb_SOC_IO_UART
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


module tb_SOC_IO_UART;   

// SOC_IO_UART Parameters
parameter PERIOD  = 10;  


// SOC_IO_UART Inputs
reg   clk                                  = 0 ;
reg   rst_n                                = 1 ;
reg   [23:0]  toggle_switch                = 0 ;
reg   start_pg                             = 0 ;
reg   rx                                   = 0 ;

// SOC_IO_UART Outputs
wire  [23:0]  led_data_out                 ;
wire  tx                                   ;


initial
begin
    forever #(PERIOD/2)  clk=~clk;
end

initial
begin
    #(PERIOD*200) rst_n  =  0;
end

SOC_IO_UART  u_SOC_IO_UART (
    .clk                     ( clk                   ),
    .rst_n                   ( rst_n                 ),
    .toggle_switch           ( toggle_switch  [23:0] ),
    .start_pg                ( start_pg              ),
    .rx                      ( rx                    ),

    .led_data_out            ( led_data_out   [23:0] ),
    .tx                      ( tx                    )
);

initial
begin
    #2000
    toggle_switch = 24'habcde;
    #2000
    toggle_switch = 25'haaae;
    
end

endmodule
