`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2020/12/25 09:08:44
// Design Name:
// Module Name: CPU_only
// Project Name:
// Target Devices:
// Tool Versions:
// Description: Separate CPU module
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module CPU_only(
           input clk,
           input rst_n,

           // connect to instruction ROM
           output [31:0] pc,
           input [31:0] instruction,

           // connect to data RAM
           output MemWrite_out,
           output [31:0] data_addr,
           output [31:0] data_out,
           input  [31:0] memData
       );

/////////////////////
/******* clk *******/
/////////////////////

// cpu_clk Inputs
// reg   clk;

// cpu_clk Outputs
wire  clk_div; // 20Mhz

cpu_clk  u_cpu_clk (
             .clk_in1                 ( clk        ),

             .clk_out1                ( clk_div    )
         );

//////////////////////
/******** PC ********/
//////////////////////

// pc_1 Inputs
wire  Jrn;
wire  [31:0]  JrPC;

wire [31:0] offset_in;
wire zero_in;
wire Branch_in;
wire nBranch_in;

wire [25:0] j_target;
wire Jmp_in;
wire Jal_in;

// pc_1 Outputs
wire  [31:0]  pcOld;

pc_1  u_pc_1 (
          .clk                     ( clk_div     ),
          .rst_n                   ( rst_n   ),

          .pcOrigin                ( pcOld   ),
          .JrPC                    ( JrPC    ),

          .Jrn                     ( Jrn     ),

          .offset                  ( offset_in  ),
          .zero                    ( zero_in    ),
          .Branch                  ( Branch_in  ),
          .nBranch                 ( nBranch_in ),

          .j_target                ( j_target   ),
          .Jmp                     ( Jmp_in     ),
          .Jal                     ( Jal_in     ),

          .pcOld                   ( pcOld   )
      );

assign pc = pcOld;

///////////////////////////////////
/******** Instruction ROM ********/
///////////////////////////////////

// blk_mem_gen_0 Inputs
////////// wire  [13:0]  addra  = pcOld[15:2];

// blk_mem_gen_0 Outputs // instructions
// wire  [31:0]  instruction;

// blk_mem_gen_0  u_blk_mem_gen_0 (
//                    .clka                    ( clk    ),
//                    .addra                   ( pcOld[15:2]   ),

//                    .douta                   ( instruction   )
//                );

assign j_target = instruction[25:0];

/////////////////////////////
/******** Reg Files ********/
/////////////////////////////


// reg_files_1 Inputs
wire  [31:0]  ALUresult;
reg [31:0] ALUorMemData;
/////// wire   [4:0]  rA = instruction[25:21];
/////// wire   [4:0]  rB = instruction[20:16];
/////// wire   [4:0]  rW = instruction[15:11];
/////// wire   [31:0]  writeData = ALUresult;
wire   RegWrite;
wire   RegDst_in;

// reg_files_1 Outputs
wire  [31:0]  A;    // rs
wire  [31:0]  B;    // rt
assign JrPC = A;

reg_files_1  u_reg_files_1 (
                 .clk                     ( clk_div         ),
                 .rst_n                   ( rst_n       ),
                 .rA                      ( instruction[25:21]  ),
                 .rB                      ( instruction[20:16]  ),
                 .rW                      ( instruction[15:11]  ),
                 .writeData               ( ALUorMemData   ),
                 .RegWrite                ( RegWrite    ),

                 .RegDst                  ( RegDst_in   ),

                 .Jal                     ( Jal_in      ),

                 .A                       ( A           ),
                 .B                       ( B           )
             );

///////////////////////
/******** ALU ********/
///////////////////////

// ALU_1 Inputs
// wire   [31:0]  A;
// wire   [31:0]  B;
wire   [3:0]  ALUop;
wire   Sftmd;

wire   [15:0] imm = instruction[15:0];
wire Lui_in;
wire ALUSrc_in;
wire Zero_sign_ex_in;

// ALU_1 Outputs
// wire  [31:0]  ALUresult = writeData; // Note：Error！
wire  [31:0]  offset;
wire  zero;

assign offset_in = offset;
assign zero_in = zero;

ALU_1  u_ALU_1 (
           .A                       ( A           ),
           .B                       ( B           ),
           .shamt                   ( instruction[10:6]),

           .ALUop                   ( ALUop       ),
           .Sftmd                   ( Sftmd       ),

           /** I-type **/
           .imm                     ( imm              ),
           .Lui                     ( Lui_in           ),
           .ALUSrc                  ( ALUSrc_in        ),
           .Zero_sign_ex            ( Zero_sign_ex_in  ),

           .ALUresult               ( ALUresult        ),
           .offset                  ( offset           ),
           .zero                    ( zero             )
       );


/////////////////////////////
/******** controler ********/
/////////////////////////////

// control_1 Inputs
////// wire   [5:0]  op = instruction[31:26];
////// wire   [5:0]  func = instruction[5:0];

// control_1 Outputs
// wire  RegWrite
// wire  [3:0]  ALUop;
wire Lui;
wire RegDst;
wire ALUSrc;
wire Zero_sign_ex;
wire Branch;
wire nBranch;
wire MemtoReg;
wire MemWrite;
wire Jmp;
wire Jal;

// send to Reg Files
assign RegDst_in = RegDst;
// send to ALU
assign Lui_in = Lui;
assign ALUSrc_in = ALUSrc;
assign Zero_sign_ex_in = Zero_sign_ex;
// send to pc
assign Branch_in = Branch;
assign nBranch_in = nBranch;
assign Jmp_in = Jmp;
assign Jal_in = Jal;

control_1  u_control_1 (
               .op                      ( instruction[31:26]         ),
               .func                    ( instruction[5:0]       ),

               .RegWrite                ( RegWrite   ),
               .Sftmd                   ( Sftmd      ),
               .ALUop                   ( ALUop      ),
               .Jrn                     ( Jrn        ),
               // I type
               .Lui                     ( Lui        ),
               .RegDst                  ( RegDst     ),
               .ALUSrc                  ( ALUSrc     ),
               .Zero_sign_ex            ( Zero_sign_ex ),
               // beq bne
               .Branch                  ( Branch     ),
               .nBranch                 ( nBranch    ),
               // lw sw
               .MemtoReg                ( MemtoReg   ),
               .MemWrite                ( MemWrite   ),
               // J Jal
               .Jmp                    ( Jmp        ),
               .Jal                    ( Jal        )
           );


////////////////////////
/****** Data RAM ******/
////////////////////////

// wire [31:0] memData;

// data_ram  u_data_ram (
//               // NOTE: negedge clk,not posedge clk 可能是吧，目前用上升沿没问题，延迟2个周期
//               // 上升沿读取，上升沿写入
//               .clka                    ( clk          ),

//               .wea                     ( MemWrite     ),
//               .addra                   ( ALUresult[15:2]   ),
//               .dina                    ( B            ),

//               .douta                   ( memData      )
//           );


// connect to data memory
assign MemWrite_out = MemWrite;
assign data_addr = ALUresult;
assign data_out  = B;

////////////////////////
/***** write back *****/
////////////////////////

// write back
// assign ALUorMemData = (MemtoReg == 1)? memData : ALUresult;
always @(*) // ALUorMemData 名称不合适了
begin
    case({MemtoReg,Jal_in})
        2'b00:  // other instructions
            ALUorMemData <= ALUresult;
        2'b10:  // lw instruction
            ALUorMemData <= memData;
        2'b01:  // Jal instruction
            ALUorMemData <= pcOld + 4;
        default:
            ALUorMemData <= 0;
    endcase
end

assign result = ALUorMemData[23:0];

endmodule
