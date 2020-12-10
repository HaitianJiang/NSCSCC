// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Thu Dec 10 23:40:54 2020
// Host        : LAPTOP-7F5JLFQ0 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/myCollege/ComputerSystem/NSCSCC/NSCSCC/NSCSCC/PersonalProgress/HaitianJiang/SingleMiniSys/mycpu_design/mycpu_design.sim/sim_1/impl/timing/xsim/tb_datapath_1_time_impl.v
// Design      : datapath_1
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module RAM32M_UNIQ_BASE_
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'hAAAAAAAA),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'hCCCCCCCC),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'hF0F0F0F0),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'hFF00FF00),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'hFFFF0000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD1
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD10
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD11
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD2
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD3
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD4
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD5
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD6
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'hAAAAAAAA),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'hCCCCCCCC),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'hF0F0F0F0),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'hFF00FF00),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'hFFFF0000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD7
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD8
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD9
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module ALU_1
   (O,
    i__carry__5_i_8,
    CO,
    i__carry__2_i_8,
    \pc[31]_i_5 ,
    \pc_plus_4_reg[31]_i_14_0 ,
    E,
    u_data_ram_i_2_0,
    u_data_ram_i_47,
    \result_OBUF[31]_inst_i_11 ,
    \result_OBUF[13]_inst_i_2_0 ,
    u_data_ram_i_6_0,
    \result_OBUF[25]_inst_i_7 ,
    \result_OBUF[31]_inst_i_5_0 ,
    \result_OBUF[25]_inst_i_10 ,
    \result_OBUF[25]_inst_i_10_0 ,
    \result_OBUF[25]_inst_i_10_1 ,
    \result_OBUF[29]_inst_i_2 ,
    \result_OBUF[25]_inst_i_10_2 ,
    \result_OBUF[25]_inst_i_10_3 ,
    \result_OBUF[28]_inst_i_3_0 ,
    \result_OBUF[25]_inst_i_10_4 ,
    u_data_ram_i_44,
    \result_OBUF[25]_inst_i_10_5 ,
    \result_OBUF[25]_inst_i_10_6 ,
    \result_OBUF[25]_inst_i_10_7 ,
    \result_OBUF[25]_inst_i_10_8 ,
    \result_OBUF[25]_inst_i_10_9 ,
    \pc[31]_i_15 ,
    \result_OBUF[25]_inst_i_7_0 ,
    u_data_ram_i_45,
    \result_OBUF[25]_inst_i_7_1 ,
    \result_OBUF[25]_inst_i_7_2 ,
    ALUSrc_in,
    \bbstub_douta[29] ,
    rst_n,
    D,
    JrPC,
    S,
    u_data_ram_i_9_0,
    u_data_ram_i_5_0,
    \result_OBUF[12]_inst_i_3_0 ,
    \result_OBUF[16]_inst_i_4_0 ,
    \result_OBUF[20]_inst_i_4_0 ,
    \result_OBUF[24]_inst_i_4_0 ,
    \result_OBUF[28]_inst_i_4_0 ,
    DI,
    \result_OBUF[0]_inst_i_4_0 ,
    u_data_ram_i_9_1,
    u_data_ram_i_9_2,
    u_data_ram_i_5_1,
    u_data_ram_i_5_2,
    \result_OBUF[12]_inst_i_3_1 ,
    \result_OBUF[12]_inst_i_3_2 ,
    \result_OBUF[16]_inst_i_4_1 ,
    \result_OBUF[16]_inst_i_4_2 ,
    \result_OBUF[20]_inst_i_4_1 ,
    \result_OBUF[20]_inst_i_4_2 ,
    \result_OBUF[24]_inst_i_4_1 ,
    \result_OBUF[24]_inst_i_4_2 ,
    \result_OBUF[28]_inst_i_4_1 ,
    \result_OBUF[28]_inst_i_4_2 ,
    \ALUresult0_inferred__5/i__carry__0_0 ,
    \ALUresult0_inferred__5/i__carry__0_1 ,
    \ALUresult0_inferred__5/i__carry__1_0 ,
    \ALUresult0_inferred__5/i__carry__1_1 ,
    \ALUresult0_inferred__5/i__carry__2_0 ,
    \ALUresult0_inferred__5/i__carry__2_1 ,
    \result_OBUF[0]_inst_i_6 ,
    \result_OBUF[0]_inst_i_6_0 ,
    \ALUresult0_inferred__6/i__carry__0_0 ,
    \ALUresult0_inferred__6/i__carry__0_1 ,
    \ALUresult0_inferred__6/i__carry__1_0 ,
    \ALUresult0_inferred__6/i__carry__1_1 ,
    \ALUresult0_inferred__6/i__carry__2_0 ,
    \ALUresult0_inferred__6/i__carry__2_1 ,
    \result_OBUF[0]_inst_i_6_1 ,
    \result_OBUF[0]_inst_i_6_2 ,
    Jrn,
    p_0_in,
    \pc_reg[31] ,
    douta,
    \pc_reg[31]_0 ,
    \pc_reg[3] ,
    \pc_reg[3]_0 ,
    ALUresult,
    \pc[31]_i_6 ,
    u_data_ram,
    u_data_ram_0,
    \result_OBUF[15]_inst_i_1 ,
    \result_OBUF[15]_inst_i_1_0 ,
    u_data_ram_1,
    u_data_ram_2,
    \pc[31]_i_10 ,
    \pc[31]_i_8_0 ,
    \pc[31]_i_8_1 ,
    \result_OBUF[12]_inst_i_1 ,
    \result_OBUF[12]_inst_i_1_0 ,
    \pc[2]_i_3 ,
    \pc[2]_i_3_0 ,
    \pc[31]_i_15_0 ,
    \pc[31]_i_15_1 ,
    \result_OBUF[13]_inst_i_1 ,
    \result_OBUF[13]_inst_i_1_0 ,
    \result_OBUF[30]_inst_i_1 ,
    \result_OBUF[30]_inst_i_1_0 ,
    \result_OBUF[30]_inst_i_1_1 ,
    \result_OBUF[28]_inst_i_1 ,
    \result_OBUF[0]_inst_i_1 ,
    \result_OBUF[30]_inst_i_2_0 ,
    \result_OBUF[31]_inst_i_1 ,
    \result_OBUF[31]_inst_i_1_0 ,
    \result_OBUF[31]_inst_i_5_1 ,
    \result_OBUF[21]_inst_i_2 ,
    \result_OBUF[17]_inst_i_2 ,
    \result_OBUF[22]_inst_i_2 ,
    \result_OBUF[23]_inst_i_2 ,
    \pc[31]_i_7 ,
    \pc[31]_i_7_0 ,
    \pc_plus_4_reg[31]_i_17 ,
    \pc_plus_4_reg[31]_i_6 ,
    \result_OBUF[25]_inst_i_2 ,
    \result_OBUF[24]_inst_i_3 ,
    \result_OBUF[28]_inst_i_1_0 ,
    \result_OBUF[28]_inst_i_1_1 ,
    \result_OBUF[28]_inst_i_1_2 ,
    \result_OBUF[28]_inst_i_3_1 ,
    \result_OBUF[29]_inst_i_2_0 ,
    \result_OBUF[20]_inst_i_3 ,
    \result_OBUF[19]_inst_i_2 ,
    \result_OBUF[18]_inst_i_1 ,
    \result_OBUF[18]_inst_i_1_0 ,
    \result_OBUF[18]_inst_i_1_1 ,
    \pc[31]_i_16 ,
    \result_OBUF[0]_inst_i_2_0 ,
    \result_OBUF[16]_inst_i_3 ,
    \result_OBUF[17]_inst_i_2_0 ,
    \result_OBUF[14]_inst_i_1 ,
    \result_OBUF[14]_inst_i_1_0 ,
    u_data_ram_3,
    u_data_ram_4,
    u_data_ram_5,
    u_data_ram_6,
    \pc[31]_i_6_0 ,
    u_data_ram_7,
    u_data_ram_8,
    u_data_ram_9,
    u_data_ram_10,
    u_data_ram_11,
    u_data_ram_12,
    u_data_ram_13,
    u_data_ram_14,
    \result_OBUF[1]_inst_i_1 ,
    \result_OBUF[1]_inst_i_1_0 ,
    u_data_ram_15,
    u_data_ram_16,
    u_data_ram_17,
    u_data_ram_18,
    rst_n_IBUF,
    \pc_reg[31]_1 ,
    \pc_reg[31]_2 ,
    Q,
    \pc_reg[30] ,
    \pc_reg[29] ,
    \pc_reg[28] ,
    \pc_reg[27] ,
    \pc_reg[26] ,
    \pc_reg[25] ,
    \pc_reg[24] ,
    \pc_reg[23] ,
    \pc_reg[22] ,
    \pc_reg[21] ,
    \pc_reg[20] ,
    \pc_reg[19] ,
    \pc_reg[18] ,
    \pc_reg[17] ,
    \pc_reg[16] ,
    \pc_reg[15] ,
    \pc_reg[14] ,
    \pc_reg[13] ,
    \pc_reg[12] ,
    \pc_reg[11] ,
    \pc_reg[10] ,
    \pc_reg[9] ,
    \pc_reg[8] ,
    \pc_reg[7] ,
    \pc_reg[6] ,
    \pc_reg[5] ,
    \pc_reg[4] ,
    \pc_reg[3]_1 ,
    ALUop,
    \result_OBUF[0]_inst_i_1_0 ,
    \result_OBUF[0]_inst_i_1_1 ,
    \result_OBUF[0]_inst_i_1_2 );
  output [1:0]O;
  output [1:0]i__carry__5_i_8;
  output [0:0]CO;
  output [0:0]i__carry__2_i_8;
  output \pc[31]_i_5 ;
  output \pc_plus_4_reg[31]_i_14_0 ;
  output [0:0]E;
  output u_data_ram_i_2_0;
  output [8:0]u_data_ram_i_47;
  output [9:0]\result_OBUF[31]_inst_i_11 ;
  output \result_OBUF[13]_inst_i_2_0 ;
  output u_data_ram_i_6_0;
  output \result_OBUF[25]_inst_i_7 ;
  output \result_OBUF[31]_inst_i_5_0 ;
  output \result_OBUF[25]_inst_i_10 ;
  output \result_OBUF[25]_inst_i_10_0 ;
  output \result_OBUF[25]_inst_i_10_1 ;
  output \result_OBUF[29]_inst_i_2 ;
  output \result_OBUF[25]_inst_i_10_2 ;
  output \result_OBUF[25]_inst_i_10_3 ;
  output \result_OBUF[28]_inst_i_3_0 ;
  output \result_OBUF[25]_inst_i_10_4 ;
  output u_data_ram_i_44;
  output \result_OBUF[25]_inst_i_10_5 ;
  output \result_OBUF[25]_inst_i_10_6 ;
  output \result_OBUF[25]_inst_i_10_7 ;
  output \result_OBUF[25]_inst_i_10_8 ;
  output \result_OBUF[25]_inst_i_10_9 ;
  output \pc[31]_i_15 ;
  output \result_OBUF[25]_inst_i_7_0 ;
  output u_data_ram_i_45;
  output \result_OBUF[25]_inst_i_7_1 ;
  output \result_OBUF[25]_inst_i_7_2 ;
  output ALUSrc_in;
  output \bbstub_douta[29] ;
  output rst_n;
  output [28:0]D;
  input [30:0]JrPC;
  input [3:0]S;
  input [3:0]u_data_ram_i_9_0;
  input [3:0]u_data_ram_i_5_0;
  input [3:0]\result_OBUF[12]_inst_i_3_0 ;
  input [3:0]\result_OBUF[16]_inst_i_4_0 ;
  input [3:0]\result_OBUF[20]_inst_i_4_0 ;
  input [3:0]\result_OBUF[24]_inst_i_4_0 ;
  input [3:0]\result_OBUF[28]_inst_i_4_0 ;
  input [3:0]DI;
  input [3:0]\result_OBUF[0]_inst_i_4_0 ;
  input [3:0]u_data_ram_i_9_1;
  input [3:0]u_data_ram_i_9_2;
  input [3:0]u_data_ram_i_5_1;
  input [3:0]u_data_ram_i_5_2;
  input [3:0]\result_OBUF[12]_inst_i_3_1 ;
  input [3:0]\result_OBUF[12]_inst_i_3_2 ;
  input [3:0]\result_OBUF[16]_inst_i_4_1 ;
  input [3:0]\result_OBUF[16]_inst_i_4_2 ;
  input [3:0]\result_OBUF[20]_inst_i_4_1 ;
  input [3:0]\result_OBUF[20]_inst_i_4_2 ;
  input [3:0]\result_OBUF[24]_inst_i_4_1 ;
  input [3:0]\result_OBUF[24]_inst_i_4_2 ;
  input [2:0]\result_OBUF[28]_inst_i_4_1 ;
  input [3:0]\result_OBUF[28]_inst_i_4_2 ;
  input [3:0]\ALUresult0_inferred__5/i__carry__0_0 ;
  input [3:0]\ALUresult0_inferred__5/i__carry__0_1 ;
  input [3:0]\ALUresult0_inferred__5/i__carry__1_0 ;
  input [3:0]\ALUresult0_inferred__5/i__carry__1_1 ;
  input [3:0]\ALUresult0_inferred__5/i__carry__2_0 ;
  input [3:0]\ALUresult0_inferred__5/i__carry__2_1 ;
  input [3:0]\result_OBUF[0]_inst_i_6 ;
  input [3:0]\result_OBUF[0]_inst_i_6_0 ;
  input [3:0]\ALUresult0_inferred__6/i__carry__0_0 ;
  input [3:0]\ALUresult0_inferred__6/i__carry__0_1 ;
  input [3:0]\ALUresult0_inferred__6/i__carry__1_0 ;
  input [3:0]\ALUresult0_inferred__6/i__carry__1_1 ;
  input [3:0]\ALUresult0_inferred__6/i__carry__2_0 ;
  input [3:0]\ALUresult0_inferred__6/i__carry__2_1 ;
  input [3:0]\result_OBUF[0]_inst_i_6_1 ;
  input [3:0]\result_OBUF[0]_inst_i_6_2 ;
  input Jrn;
  input [0:0]p_0_in;
  input \pc_reg[31] ;
  input [30:0]douta;
  input \pc_reg[31]_0 ;
  input \pc_reg[3] ;
  input \pc_reg[3]_0 ;
  input [2:0]ALUresult;
  input \pc[31]_i_6 ;
  input u_data_ram;
  input u_data_ram_0;
  input \result_OBUF[15]_inst_i_1 ;
  input \result_OBUF[15]_inst_i_1_0 ;
  input u_data_ram_1;
  input u_data_ram_2;
  input \pc[31]_i_10 ;
  input \pc[31]_i_8_0 ;
  input \pc[31]_i_8_1 ;
  input \result_OBUF[12]_inst_i_1 ;
  input \result_OBUF[12]_inst_i_1_0 ;
  input \pc[2]_i_3 ;
  input \pc[2]_i_3_0 ;
  input \pc[31]_i_15_0 ;
  input \pc[31]_i_15_1 ;
  input \result_OBUF[13]_inst_i_1 ;
  input \result_OBUF[13]_inst_i_1_0 ;
  input \result_OBUF[30]_inst_i_1 ;
  input \result_OBUF[30]_inst_i_1_0 ;
  input \result_OBUF[30]_inst_i_1_1 ;
  input \result_OBUF[28]_inst_i_1 ;
  input \result_OBUF[0]_inst_i_1 ;
  input \result_OBUF[30]_inst_i_2_0 ;
  input \result_OBUF[31]_inst_i_1 ;
  input \result_OBUF[31]_inst_i_1_0 ;
  input \result_OBUF[31]_inst_i_5_1 ;
  input \result_OBUF[21]_inst_i_2 ;
  input \result_OBUF[17]_inst_i_2 ;
  input \result_OBUF[22]_inst_i_2 ;
  input \result_OBUF[23]_inst_i_2 ;
  input \pc[31]_i_7 ;
  input \pc[31]_i_7_0 ;
  input \pc_plus_4_reg[31]_i_17 ;
  input \pc_plus_4_reg[31]_i_6 ;
  input \result_OBUF[25]_inst_i_2 ;
  input \result_OBUF[24]_inst_i_3 ;
  input \result_OBUF[28]_inst_i_1_0 ;
  input \result_OBUF[28]_inst_i_1_1 ;
  input \result_OBUF[28]_inst_i_1_2 ;
  input \result_OBUF[28]_inst_i_3_1 ;
  input \result_OBUF[29]_inst_i_2_0 ;
  input \result_OBUF[20]_inst_i_3 ;
  input \result_OBUF[19]_inst_i_2 ;
  input \result_OBUF[18]_inst_i_1 ;
  input \result_OBUF[18]_inst_i_1_0 ;
  input \result_OBUF[18]_inst_i_1_1 ;
  input \pc[31]_i_16 ;
  input \result_OBUF[0]_inst_i_2_0 ;
  input \result_OBUF[16]_inst_i_3 ;
  input \result_OBUF[17]_inst_i_2_0 ;
  input \result_OBUF[14]_inst_i_1 ;
  input \result_OBUF[14]_inst_i_1_0 ;
  input u_data_ram_3;
  input u_data_ram_4;
  input u_data_ram_5;
  input u_data_ram_6;
  input \pc[31]_i_6_0 ;
  input u_data_ram_7;
  input u_data_ram_8;
  input u_data_ram_9;
  input u_data_ram_10;
  input u_data_ram_11;
  input u_data_ram_12;
  input u_data_ram_13;
  input u_data_ram_14;
  input \result_OBUF[1]_inst_i_1 ;
  input \result_OBUF[1]_inst_i_1_0 ;
  input u_data_ram_15;
  input u_data_ram_16;
  input u_data_ram_17;
  input u_data_ram_18;
  input rst_n_IBUF;
  input [0:0]\pc_reg[31]_1 ;
  input \pc_reg[31]_2 ;
  input [3:0]Q;
  input \pc_reg[30] ;
  input \pc_reg[29] ;
  input \pc_reg[28] ;
  input \pc_reg[27] ;
  input \pc_reg[26] ;
  input \pc_reg[25] ;
  input \pc_reg[24] ;
  input \pc_reg[23] ;
  input \pc_reg[22] ;
  input \pc_reg[21] ;
  input \pc_reg[20] ;
  input \pc_reg[19] ;
  input \pc_reg[18] ;
  input \pc_reg[17] ;
  input \pc_reg[16] ;
  input \pc_reg[15] ;
  input \pc_reg[14] ;
  input \pc_reg[13] ;
  input \pc_reg[12] ;
  input \pc_reg[11] ;
  input \pc_reg[10] ;
  input \pc_reg[9] ;
  input \pc_reg[8] ;
  input \pc_reg[7] ;
  input \pc_reg[6] ;
  input \pc_reg[5] ;
  input \pc_reg[4] ;
  input \pc_reg[3]_1 ;
  input [0:0]ALUop;
  input \result_OBUF[0]_inst_i_1_0 ;
  input \result_OBUF[0]_inst_i_1_1 ;
  input \result_OBUF[0]_inst_i_1_2 ;

  wire ALUSrc_in;
  wire [0:0]ALUop;
  wire [2:0]ALUresult;
  wire ALUresult0_carry__0_n_0;
  wire ALUresult0_carry__1_n_0;
  wire ALUresult0_carry__2_n_0;
  wire ALUresult0_carry__3_n_0;
  wire ALUresult0_carry__4_n_0;
  wire ALUresult0_carry__5_n_0;
  wire ALUresult0_carry_n_0;
  wire \ALUresult0_inferred__0/i__carry__0_n_0 ;
  wire \ALUresult0_inferred__0/i__carry__1_n_0 ;
  wire \ALUresult0_inferred__0/i__carry__2_n_0 ;
  wire \ALUresult0_inferred__0/i__carry__3_n_0 ;
  wire \ALUresult0_inferred__0/i__carry__4_n_0 ;
  wire \ALUresult0_inferred__0/i__carry__5_n_0 ;
  wire \ALUresult0_inferred__0/i__carry_n_0 ;
  wire [3:0]\ALUresult0_inferred__5/i__carry__0_0 ;
  wire [3:0]\ALUresult0_inferred__5/i__carry__0_1 ;
  wire \ALUresult0_inferred__5/i__carry__0_n_0 ;
  wire [3:0]\ALUresult0_inferred__5/i__carry__1_0 ;
  wire [3:0]\ALUresult0_inferred__5/i__carry__1_1 ;
  wire \ALUresult0_inferred__5/i__carry__1_n_0 ;
  wire [3:0]\ALUresult0_inferred__5/i__carry__2_0 ;
  wire [3:0]\ALUresult0_inferred__5/i__carry__2_1 ;
  wire \ALUresult0_inferred__5/i__carry_n_0 ;
  wire [3:0]\ALUresult0_inferred__6/i__carry__0_0 ;
  wire [3:0]\ALUresult0_inferred__6/i__carry__0_1 ;
  wire \ALUresult0_inferred__6/i__carry__0_n_0 ;
  wire [3:0]\ALUresult0_inferred__6/i__carry__1_0 ;
  wire [3:0]\ALUresult0_inferred__6/i__carry__1_1 ;
  wire \ALUresult0_inferred__6/i__carry__1_n_0 ;
  wire [3:0]\ALUresult0_inferred__6/i__carry__2_0 ;
  wire [3:0]\ALUresult0_inferred__6/i__carry__2_1 ;
  wire \ALUresult0_inferred__6/i__carry_n_0 ;
  wire [0:0]CO;
  wire [28:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire [30:0]JrPC;
  wire Jrn;
  wire [1:0]O;
  wire [3:0]Q;
  wire [3:0]S;
  wire \bbstub_douta[29] ;
  wire [31:0]data0;
  wire [31:0]data1;
  wire [30:0]douta;
  wire [0:0]i__carry__2_i_8;
  wire [1:0]i__carry__5_i_8;
  wire [0:0]p_0_in;
  wire pcSelect0_carry__3_i_7_n_0;
  wire \pc[2]_i_3 ;
  wire \pc[2]_i_3_0 ;
  wire \pc[31]_i_10 ;
  wire \pc[31]_i_14_n_0 ;
  wire \pc[31]_i_15 ;
  wire \pc[31]_i_15_0 ;
  wire \pc[31]_i_15_1 ;
  wire \pc[31]_i_16 ;
  wire \pc[31]_i_25_n_0 ;
  wire \pc[31]_i_27_n_0 ;
  wire \pc[31]_i_29_n_0 ;
  wire \pc[31]_i_5 ;
  wire \pc[31]_i_6 ;
  wire \pc[31]_i_6_0 ;
  wire \pc[31]_i_7 ;
  wire \pc[31]_i_7_0 ;
  wire \pc[31]_i_8_0 ;
  wire \pc[31]_i_8_1 ;
  wire \pc_plus_4_reg[31]_i_10_n_0 ;
  wire \pc_plus_4_reg[31]_i_12_n_0 ;
  wire \pc_plus_4_reg[31]_i_14_0 ;
  wire \pc_plus_4_reg[31]_i_17 ;
  wire \pc_plus_4_reg[31]_i_3_n_0 ;
  wire \pc_plus_4_reg[31]_i_6 ;
  wire \pc_reg[10] ;
  wire \pc_reg[11] ;
  wire \pc_reg[12] ;
  wire \pc_reg[13] ;
  wire \pc_reg[14] ;
  wire \pc_reg[15] ;
  wire \pc_reg[16] ;
  wire \pc_reg[17] ;
  wire \pc_reg[18] ;
  wire \pc_reg[19] ;
  wire \pc_reg[20] ;
  wire \pc_reg[21] ;
  wire \pc_reg[22] ;
  wire \pc_reg[23] ;
  wire \pc_reg[24] ;
  wire \pc_reg[25] ;
  wire \pc_reg[26] ;
  wire \pc_reg[27] ;
  wire \pc_reg[28] ;
  wire \pc_reg[29] ;
  wire \pc_reg[30] ;
  wire \pc_reg[31] ;
  wire \pc_reg[31]_0 ;
  wire [0:0]\pc_reg[31]_1 ;
  wire \pc_reg[31]_2 ;
  wire \pc_reg[3] ;
  wire \pc_reg[3]_0 ;
  wire \pc_reg[3]_1 ;
  wire \pc_reg[4] ;
  wire \pc_reg[5] ;
  wire \pc_reg[6] ;
  wire \pc_reg[7] ;
  wire \pc_reg[8] ;
  wire \pc_reg[9] ;
  wire \result_OBUF[0]_inst_i_1 ;
  wire \result_OBUF[0]_inst_i_1_0 ;
  wire \result_OBUF[0]_inst_i_1_1 ;
  wire \result_OBUF[0]_inst_i_1_2 ;
  wire \result_OBUF[0]_inst_i_2_0 ;
  wire [3:0]\result_OBUF[0]_inst_i_4_0 ;
  wire \result_OBUF[0]_inst_i_4_n_0 ;
  wire [3:0]\result_OBUF[0]_inst_i_6 ;
  wire [3:0]\result_OBUF[0]_inst_i_6_0 ;
  wire [3:0]\result_OBUF[0]_inst_i_6_1 ;
  wire [3:0]\result_OBUF[0]_inst_i_6_2 ;
  wire \result_OBUF[12]_inst_i_1 ;
  wire \result_OBUF[12]_inst_i_1_0 ;
  wire [3:0]\result_OBUF[12]_inst_i_3_0 ;
  wire [3:0]\result_OBUF[12]_inst_i_3_1 ;
  wire [3:0]\result_OBUF[12]_inst_i_3_2 ;
  wire \result_OBUF[13]_inst_i_1 ;
  wire \result_OBUF[13]_inst_i_1_0 ;
  wire \result_OBUF[13]_inst_i_2_0 ;
  wire \result_OBUF[14]_inst_i_1 ;
  wire \result_OBUF[14]_inst_i_1_0 ;
  wire \result_OBUF[15]_inst_i_1 ;
  wire \result_OBUF[15]_inst_i_1_0 ;
  wire \result_OBUF[16]_inst_i_3 ;
  wire [3:0]\result_OBUF[16]_inst_i_4_0 ;
  wire [3:0]\result_OBUF[16]_inst_i_4_1 ;
  wire [3:0]\result_OBUF[16]_inst_i_4_2 ;
  wire \result_OBUF[17]_inst_i_2 ;
  wire \result_OBUF[17]_inst_i_2_0 ;
  wire \result_OBUF[18]_inst_i_1 ;
  wire \result_OBUF[18]_inst_i_1_0 ;
  wire \result_OBUF[18]_inst_i_1_1 ;
  wire \result_OBUF[19]_inst_i_2 ;
  wire \result_OBUF[1]_inst_i_1 ;
  wire \result_OBUF[1]_inst_i_1_0 ;
  wire \result_OBUF[20]_inst_i_3 ;
  wire [3:0]\result_OBUF[20]_inst_i_4_0 ;
  wire [3:0]\result_OBUF[20]_inst_i_4_1 ;
  wire [3:0]\result_OBUF[20]_inst_i_4_2 ;
  wire \result_OBUF[21]_inst_i_2 ;
  wire \result_OBUF[22]_inst_i_2 ;
  wire \result_OBUF[23]_inst_i_2 ;
  wire \result_OBUF[24]_inst_i_3 ;
  wire [3:0]\result_OBUF[24]_inst_i_4_0 ;
  wire [3:0]\result_OBUF[24]_inst_i_4_1 ;
  wire [3:0]\result_OBUF[24]_inst_i_4_2 ;
  wire \result_OBUF[25]_inst_i_10 ;
  wire \result_OBUF[25]_inst_i_10_0 ;
  wire \result_OBUF[25]_inst_i_10_1 ;
  wire \result_OBUF[25]_inst_i_10_2 ;
  wire \result_OBUF[25]_inst_i_10_3 ;
  wire \result_OBUF[25]_inst_i_10_4 ;
  wire \result_OBUF[25]_inst_i_10_5 ;
  wire \result_OBUF[25]_inst_i_10_6 ;
  wire \result_OBUF[25]_inst_i_10_7 ;
  wire \result_OBUF[25]_inst_i_10_8 ;
  wire \result_OBUF[25]_inst_i_10_9 ;
  wire \result_OBUF[25]_inst_i_2 ;
  wire \result_OBUF[25]_inst_i_7 ;
  wire \result_OBUF[25]_inst_i_7_0 ;
  wire \result_OBUF[25]_inst_i_7_1 ;
  wire \result_OBUF[25]_inst_i_7_2 ;
  wire \result_OBUF[28]_inst_i_1 ;
  wire \result_OBUF[28]_inst_i_1_0 ;
  wire \result_OBUF[28]_inst_i_1_1 ;
  wire \result_OBUF[28]_inst_i_1_2 ;
  wire \result_OBUF[28]_inst_i_3_0 ;
  wire \result_OBUF[28]_inst_i_3_1 ;
  wire [3:0]\result_OBUF[28]_inst_i_4_0 ;
  wire [2:0]\result_OBUF[28]_inst_i_4_1 ;
  wire [3:0]\result_OBUF[28]_inst_i_4_2 ;
  wire \result_OBUF[28]_inst_i_4_n_0 ;
  wire \result_OBUF[29]_inst_i_2 ;
  wire \result_OBUF[29]_inst_i_2_0 ;
  wire \result_OBUF[30]_inst_i_1 ;
  wire \result_OBUF[30]_inst_i_1_0 ;
  wire \result_OBUF[30]_inst_i_1_1 ;
  wire \result_OBUF[30]_inst_i_2_0 ;
  wire \result_OBUF[30]_inst_i_3_n_0 ;
  wire \result_OBUF[31]_inst_i_1 ;
  wire [9:0]\result_OBUF[31]_inst_i_11 ;
  wire \result_OBUF[31]_inst_i_1_0 ;
  wire \result_OBUF[31]_inst_i_5_0 ;
  wire \result_OBUF[31]_inst_i_5_1 ;
  wire \result_OBUF[31]_inst_i_7_n_0 ;
  wire rst_n;
  wire rst_n_IBUF;
  wire u_data_ram;
  wire u_data_ram_0;
  wire u_data_ram_1;
  wire u_data_ram_10;
  wire u_data_ram_11;
  wire u_data_ram_12;
  wire u_data_ram_13;
  wire u_data_ram_14;
  wire u_data_ram_15;
  wire u_data_ram_16;
  wire u_data_ram_17;
  wire u_data_ram_18;
  wire u_data_ram_2;
  wire u_data_ram_3;
  wire u_data_ram_4;
  wire u_data_ram_5;
  wire u_data_ram_6;
  wire u_data_ram_7;
  wire u_data_ram_8;
  wire u_data_ram_9;
  wire u_data_ram_i_2_0;
  wire u_data_ram_i_44;
  wire u_data_ram_i_45;
  wire [8:0]u_data_ram_i_47;
  wire [3:0]u_data_ram_i_5_0;
  wire [3:0]u_data_ram_i_5_1;
  wire [3:0]u_data_ram_i_5_2;
  wire u_data_ram_i_6_0;
  wire [3:0]u_data_ram_i_9_0;
  wire [3:0]u_data_ram_i_9_1;
  wire [3:0]u_data_ram_i_9_2;
  wire [2:0]NLW_ALUresult0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_ALUresult0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_ALUresult0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_ALUresult0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_ALUresult0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_ALUresult0_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_ALUresult0_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_ALUresult0_carry__6_CO_UNCONNECTED;
  wire [2:0]\NLW_ALUresult0_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [2:0]\NLW_ALUresult0_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_ALUresult0_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_ALUresult0_inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [2:0]\NLW_ALUresult0_inferred__0/i__carry__3_CO_UNCONNECTED ;
  wire [2:0]\NLW_ALUresult0_inferred__0/i__carry__4_CO_UNCONNECTED ;
  wire [2:0]\NLW_ALUresult0_inferred__0/i__carry__5_CO_UNCONNECTED ;
  wire [3:0]\NLW_ALUresult0_inferred__0/i__carry__6_CO_UNCONNECTED ;
  wire [2:0]\NLW_ALUresult0_inferred__5/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_ALUresult0_inferred__5/i__carry_O_UNCONNECTED ;
  wire [2:0]\NLW_ALUresult0_inferred__5/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_ALUresult0_inferred__5/i__carry__0_O_UNCONNECTED ;
  wire [2:0]\NLW_ALUresult0_inferred__5/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_ALUresult0_inferred__5/i__carry__1_O_UNCONNECTED ;
  wire [2:0]\NLW_ALUresult0_inferred__5/i__carry__2_CO_UNCONNECTED ;
  wire [3:0]\NLW_ALUresult0_inferred__5/i__carry__2_O_UNCONNECTED ;
  wire [2:0]\NLW_ALUresult0_inferred__6/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_ALUresult0_inferred__6/i__carry_O_UNCONNECTED ;
  wire [2:0]\NLW_ALUresult0_inferred__6/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_ALUresult0_inferred__6/i__carry__0_O_UNCONNECTED ;
  wire [2:0]\NLW_ALUresult0_inferred__6/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_ALUresult0_inferred__6/i__carry__1_O_UNCONNECTED ;
  wire [2:0]\NLW_ALUresult0_inferred__6/i__carry__2_CO_UNCONNECTED ;
  wire [3:0]\NLW_ALUresult0_inferred__6/i__carry__2_O_UNCONNECTED ;

  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0_carry
       (.CI(1'b0),
        .CO({ALUresult0_carry_n_0,NLW_ALUresult0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(JrPC[3:0]),
        .O(data0[3:0]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0_carry__0
       (.CI(ALUresult0_carry_n_0),
        .CO({ALUresult0_carry__0_n_0,NLW_ALUresult0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(JrPC[7:4]),
        .O(data0[7:4]),
        .S(u_data_ram_i_9_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0_carry__1
       (.CI(ALUresult0_carry__0_n_0),
        .CO({ALUresult0_carry__1_n_0,NLW_ALUresult0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(JrPC[11:8]),
        .O(data0[11:8]),
        .S(u_data_ram_i_5_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0_carry__2
       (.CI(ALUresult0_carry__1_n_0),
        .CO({ALUresult0_carry__2_n_0,NLW_ALUresult0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(JrPC[15:12]),
        .O(data0[15:12]),
        .S(\result_OBUF[12]_inst_i_3_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0_carry__3
       (.CI(ALUresult0_carry__2_n_0),
        .CO({ALUresult0_carry__3_n_0,NLW_ALUresult0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(JrPC[19:16]),
        .O(data0[19:16]),
        .S(\result_OBUF[16]_inst_i_4_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0_carry__4
       (.CI(ALUresult0_carry__3_n_0),
        .CO({ALUresult0_carry__4_n_0,NLW_ALUresult0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(JrPC[23:20]),
        .O(data0[23:20]),
        .S(\result_OBUF[20]_inst_i_4_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0_carry__5
       (.CI(ALUresult0_carry__4_n_0),
        .CO({ALUresult0_carry__5_n_0,NLW_ALUresult0_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(JrPC[27:24]),
        .O({O,data0[25:24]}),
        .S(\result_OBUF[24]_inst_i_4_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0_carry__6
       (.CI(ALUresult0_carry__5_n_0),
        .CO(NLW_ALUresult0_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,JrPC[30:28]}),
        .O(data0[31:28]),
        .S(\result_OBUF[28]_inst_i_4_0 ));
  LUT6 #(
    .INIT(64'h000008080000FF00)) 
    ALUresult0_carry_i_9
       (.I0(douta[26]),
        .I1(douta[25]),
        .I2(douta[27]),
        .I3(douta[28]),
        .I4(douta[29]),
        .I5(douta[30]),
        .O(ALUSrc_in));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \ALUresult0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\ALUresult0_inferred__0/i__carry_n_0 ,\NLW_ALUresult0_inferred__0/i__carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI(DI),
        .O(data1[3:0]),
        .S(\result_OBUF[0]_inst_i_4_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \ALUresult0_inferred__0/i__carry__0 
       (.CI(\ALUresult0_inferred__0/i__carry_n_0 ),
        .CO({\ALUresult0_inferred__0/i__carry__0_n_0 ,\NLW_ALUresult0_inferred__0/i__carry__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(u_data_ram_i_9_1),
        .O(data1[7:4]),
        .S(u_data_ram_i_9_2));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \ALUresult0_inferred__0/i__carry__1 
       (.CI(\ALUresult0_inferred__0/i__carry__0_n_0 ),
        .CO({\ALUresult0_inferred__0/i__carry__1_n_0 ,\NLW_ALUresult0_inferred__0/i__carry__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(u_data_ram_i_5_1),
        .O(data1[11:8]),
        .S(u_data_ram_i_5_2));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \ALUresult0_inferred__0/i__carry__2 
       (.CI(\ALUresult0_inferred__0/i__carry__1_n_0 ),
        .CO({\ALUresult0_inferred__0/i__carry__2_n_0 ,\NLW_ALUresult0_inferred__0/i__carry__2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\result_OBUF[12]_inst_i_3_1 ),
        .O(data1[15:12]),
        .S(\result_OBUF[12]_inst_i_3_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \ALUresult0_inferred__0/i__carry__3 
       (.CI(\ALUresult0_inferred__0/i__carry__2_n_0 ),
        .CO({\ALUresult0_inferred__0/i__carry__3_n_0 ,\NLW_ALUresult0_inferred__0/i__carry__3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\result_OBUF[16]_inst_i_4_1 ),
        .O(data1[19:16]),
        .S(\result_OBUF[16]_inst_i_4_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \ALUresult0_inferred__0/i__carry__4 
       (.CI(\ALUresult0_inferred__0/i__carry__3_n_0 ),
        .CO({\ALUresult0_inferred__0/i__carry__4_n_0 ,\NLW_ALUresult0_inferred__0/i__carry__4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\result_OBUF[20]_inst_i_4_1 ),
        .O(data1[23:20]),
        .S(\result_OBUF[20]_inst_i_4_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \ALUresult0_inferred__0/i__carry__5 
       (.CI(\ALUresult0_inferred__0/i__carry__4_n_0 ),
        .CO({\ALUresult0_inferred__0/i__carry__5_n_0 ,\NLW_ALUresult0_inferred__0/i__carry__5_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\result_OBUF[24]_inst_i_4_1 ),
        .O({i__carry__5_i_8,data1[25:24]}),
        .S(\result_OBUF[24]_inst_i_4_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \ALUresult0_inferred__0/i__carry__6 
       (.CI(\ALUresult0_inferred__0/i__carry__5_n_0 ),
        .CO(\NLW_ALUresult0_inferred__0/i__carry__6_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\result_OBUF[28]_inst_i_4_1 }),
        .O(data1[31:28]),
        .S(\result_OBUF[28]_inst_i_4_2 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \ALUresult0_inferred__5/i__carry 
       (.CI(1'b0),
        .CO({\ALUresult0_inferred__5/i__carry_n_0 ,\NLW_ALUresult0_inferred__5/i__carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\ALUresult0_inferred__5/i__carry__0_0 ),
        .O(\NLW_ALUresult0_inferred__5/i__carry_O_UNCONNECTED [3:0]),
        .S(\ALUresult0_inferred__5/i__carry__0_1 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \ALUresult0_inferred__5/i__carry__0 
       (.CI(\ALUresult0_inferred__5/i__carry_n_0 ),
        .CO({\ALUresult0_inferred__5/i__carry__0_n_0 ,\NLW_ALUresult0_inferred__5/i__carry__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\ALUresult0_inferred__5/i__carry__1_0 ),
        .O(\NLW_ALUresult0_inferred__5/i__carry__0_O_UNCONNECTED [3:0]),
        .S(\ALUresult0_inferred__5/i__carry__1_1 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \ALUresult0_inferred__5/i__carry__1 
       (.CI(\ALUresult0_inferred__5/i__carry__0_n_0 ),
        .CO({\ALUresult0_inferred__5/i__carry__1_n_0 ,\NLW_ALUresult0_inferred__5/i__carry__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\ALUresult0_inferred__5/i__carry__2_0 ),
        .O(\NLW_ALUresult0_inferred__5/i__carry__1_O_UNCONNECTED [3:0]),
        .S(\ALUresult0_inferred__5/i__carry__2_1 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \ALUresult0_inferred__5/i__carry__2 
       (.CI(\ALUresult0_inferred__5/i__carry__1_n_0 ),
        .CO({CO,\NLW_ALUresult0_inferred__5/i__carry__2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\result_OBUF[0]_inst_i_6 ),
        .O(\NLW_ALUresult0_inferred__5/i__carry__2_O_UNCONNECTED [3:0]),
        .S(\result_OBUF[0]_inst_i_6_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \ALUresult0_inferred__6/i__carry 
       (.CI(1'b0),
        .CO({\ALUresult0_inferred__6/i__carry_n_0 ,\NLW_ALUresult0_inferred__6/i__carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\ALUresult0_inferred__6/i__carry__0_0 ),
        .O(\NLW_ALUresult0_inferred__6/i__carry_O_UNCONNECTED [3:0]),
        .S(\ALUresult0_inferred__6/i__carry__0_1 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \ALUresult0_inferred__6/i__carry__0 
       (.CI(\ALUresult0_inferred__6/i__carry_n_0 ),
        .CO({\ALUresult0_inferred__6/i__carry__0_n_0 ,\NLW_ALUresult0_inferred__6/i__carry__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\ALUresult0_inferred__6/i__carry__1_0 ),
        .O(\NLW_ALUresult0_inferred__6/i__carry__0_O_UNCONNECTED [3:0]),
        .S(\ALUresult0_inferred__6/i__carry__1_1 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \ALUresult0_inferred__6/i__carry__1 
       (.CI(\ALUresult0_inferred__6/i__carry__0_n_0 ),
        .CO({\ALUresult0_inferred__6/i__carry__1_n_0 ,\NLW_ALUresult0_inferred__6/i__carry__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\ALUresult0_inferred__6/i__carry__2_0 ),
        .O(\NLW_ALUresult0_inferred__6/i__carry__1_O_UNCONNECTED [3:0]),
        .S(\ALUresult0_inferred__6/i__carry__2_1 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \ALUresult0_inferred__6/i__carry__2 
       (.CI(\ALUresult0_inferred__6/i__carry__1_n_0 ),
        .CO({i__carry__2_i_8,\NLW_ALUresult0_inferred__6/i__carry__2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\result_OBUF[0]_inst_i_6_1 ),
        .O(\NLW_ALUresult0_inferred__6/i__carry__2_O_UNCONNECTED [3:0]),
        .S(\result_OBUF[0]_inst_i_6_2 ));
  LUT6 #(
    .INIT(64'h0000201000102000)) 
    pcSelect0_carry__3_i_6
       (.I0(pcSelect0_carry__3_i_7_n_0),
        .I1(douta[29]),
        .I2(douta[14]),
        .I3(douta[30]),
        .I4(douta[27]),
        .I5(douta[28]),
        .O(\bbstub_douta[29] ));
  LUT3 #(
    .INIT(8'hE0)) 
    pcSelect0_carry__3_i_7
       (.I0(douta[27]),
        .I1(douta[25]),
        .I2(douta[26]),
        .O(pcSelect0_carry__3_i_7_n_0));
  LUT6 #(
    .INIT(64'hD5D5D5C0D5C0D5C0)) 
    \pc[10]_i_1 
       (.I0(Jrn),
        .I1(JrPC[10]),
        .I2(\pc[31]_i_5 ),
        .I3(\pc_reg[10] ),
        .I4(douta[7]),
        .I5(\pc_plus_4_reg[31]_i_3_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hD5D5D5C0D5C0D5C0)) 
    \pc[11]_i_1 
       (.I0(Jrn),
        .I1(JrPC[11]),
        .I2(\pc[31]_i_5 ),
        .I3(\pc_reg[11] ),
        .I4(douta[8]),
        .I5(\pc_plus_4_reg[31]_i_3_n_0 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hD5D5D5C0D5C0D5C0)) 
    \pc[12]_i_1 
       (.I0(Jrn),
        .I1(JrPC[12]),
        .I2(\pc[31]_i_5 ),
        .I3(\pc_reg[12] ),
        .I4(douta[9]),
        .I5(\pc_plus_4_reg[31]_i_3_n_0 ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hD5D5D5C0D5C0D5C0)) 
    \pc[13]_i_1 
       (.I0(Jrn),
        .I1(JrPC[13]),
        .I2(\pc[31]_i_5 ),
        .I3(\pc_reg[13] ),
        .I4(douta[10]),
        .I5(\pc_plus_4_reg[31]_i_3_n_0 ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hD5D5D5C0D5C0D5C0)) 
    \pc[14]_i_1 
       (.I0(Jrn),
        .I1(JrPC[14]),
        .I2(\pc[31]_i_5 ),
        .I3(\pc_reg[14] ),
        .I4(douta[11]),
        .I5(\pc_plus_4_reg[31]_i_3_n_0 ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hD5D5D5C0D5C0D5C0)) 
    \pc[15]_i_1 
       (.I0(Jrn),
        .I1(JrPC[15]),
        .I2(\pc[31]_i_5 ),
        .I3(\pc_reg[15] ),
        .I4(douta[12]),
        .I5(\pc_plus_4_reg[31]_i_3_n_0 ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hD5D5D5C0D5C0D5C0)) 
    \pc[16]_i_1 
       (.I0(Jrn),
        .I1(JrPC[16]),
        .I2(\pc[31]_i_5 ),
        .I3(\pc_reg[16] ),
        .I4(douta[13]),
        .I5(\pc_plus_4_reg[31]_i_3_n_0 ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hD5D5D5C0D5C0D5C0)) 
    \pc[17]_i_1 
       (.I0(Jrn),
        .I1(JrPC[17]),
        .I2(\pc[31]_i_5 ),
        .I3(\pc_reg[17] ),
        .I4(douta[14]),
        .I5(\pc_plus_4_reg[31]_i_3_n_0 ),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hD5D5D5C0D5C0D5C0)) 
    \pc[18]_i_1 
       (.I0(Jrn),
        .I1(JrPC[18]),
        .I2(\pc[31]_i_5 ),
        .I3(\pc_reg[18] ),
        .I4(douta[15]),
        .I5(\pc_plus_4_reg[31]_i_3_n_0 ),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hD5D5D5C0D5C0D5C0)) 
    \pc[19]_i_1 
       (.I0(Jrn),
        .I1(JrPC[19]),
        .I2(\pc[31]_i_5 ),
        .I3(\pc_reg[19] ),
        .I4(douta[16]),
        .I5(\pc_plus_4_reg[31]_i_3_n_0 ),
        .O(D[16]));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \pc[1]_i_2 
       (.I0(douta[20]),
        .I1(douta[23]),
        .I2(douta[22]),
        .I3(douta[24]),
        .I4(douta[21]),
        .I5(rst_n_IBUF),
        .O(rst_n));
  LUT6 #(
    .INIT(64'hD5D5D5C0D5C0D5C0)) 
    \pc[20]_i_1 
       (.I0(Jrn),
        .I1(JrPC[20]),
        .I2(\pc[31]_i_5 ),
        .I3(\pc_reg[20] ),
        .I4(douta[17]),
        .I5(\pc_plus_4_reg[31]_i_3_n_0 ),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hD5D5D5C0D5C0D5C0)) 
    \pc[21]_i_1 
       (.I0(Jrn),
        .I1(JrPC[21]),
        .I2(\pc[31]_i_5 ),
        .I3(\pc_reg[21] ),
        .I4(douta[18]),
        .I5(\pc_plus_4_reg[31]_i_3_n_0 ),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hD5D5D5C0D5C0D5C0)) 
    \pc[22]_i_1 
       (.I0(Jrn),
        .I1(JrPC[22]),
        .I2(\pc[31]_i_5 ),
        .I3(\pc_reg[22] ),
        .I4(douta[19]),
        .I5(\pc_plus_4_reg[31]_i_3_n_0 ),
        .O(D[19]));
  LUT6 #(
    .INIT(64'hD5D5D5C0D5C0D5C0)) 
    \pc[23]_i_1 
       (.I0(Jrn),
        .I1(JrPC[23]),
        .I2(\pc[31]_i_5 ),
        .I3(\pc_reg[23] ),
        .I4(douta[20]),
        .I5(\pc_plus_4_reg[31]_i_3_n_0 ),
        .O(D[20]));
  LUT6 #(
    .INIT(64'hD5D5D5C0D5C0D5C0)) 
    \pc[24]_i_1 
       (.I0(Jrn),
        .I1(JrPC[24]),
        .I2(\pc[31]_i_5 ),
        .I3(\pc_reg[24] ),
        .I4(douta[21]),
        .I5(\pc_plus_4_reg[31]_i_3_n_0 ),
        .O(D[21]));
  LUT6 #(
    .INIT(64'hD5D5D5C0D5C0D5C0)) 
    \pc[25]_i_1 
       (.I0(Jrn),
        .I1(JrPC[25]),
        .I2(\pc[31]_i_5 ),
        .I3(\pc_reg[25] ),
        .I4(douta[22]),
        .I5(\pc_plus_4_reg[31]_i_3_n_0 ),
        .O(D[22]));
  LUT6 #(
    .INIT(64'hD5D5D5C0D5C0D5C0)) 
    \pc[26]_i_1 
       (.I0(Jrn),
        .I1(JrPC[26]),
        .I2(\pc[31]_i_5 ),
        .I3(\pc_reg[26] ),
        .I4(douta[23]),
        .I5(\pc_plus_4_reg[31]_i_3_n_0 ),
        .O(D[23]));
  LUT6 #(
    .INIT(64'hD5D5D5C0D5C0D5C0)) 
    \pc[27]_i_1 
       (.I0(Jrn),
        .I1(JrPC[27]),
        .I2(\pc[31]_i_5 ),
        .I3(\pc_reg[27] ),
        .I4(douta[24]),
        .I5(\pc_plus_4_reg[31]_i_3_n_0 ),
        .O(D[24]));
  LUT6 #(
    .INIT(64'hD5D5D5C0D5C0D5C0)) 
    \pc[28]_i_1 
       (.I0(Jrn),
        .I1(JrPC[28]),
        .I2(\pc[31]_i_5 ),
        .I3(\pc_reg[28] ),
        .I4(Q[0]),
        .I5(\pc_plus_4_reg[31]_i_3_n_0 ),
        .O(D[25]));
  LUT6 #(
    .INIT(64'hD5D5D5C0D5C0D5C0)) 
    \pc[29]_i_1 
       (.I0(Jrn),
        .I1(JrPC[29]),
        .I2(\pc[31]_i_5 ),
        .I3(\pc_reg[29] ),
        .I4(Q[1]),
        .I5(\pc_plus_4_reg[31]_i_3_n_0 ),
        .O(D[26]));
  LUT6 #(
    .INIT(64'h0045004500000045)) 
    \pc[2]_i_6 
       (.I0(u_data_ram_i_47[8]),
        .I1(u_data_ram_i_47[7]),
        .I2(u_data_ram_i_47[6]),
        .I3(\result_OBUF[31]_inst_i_11 [4]),
        .I4(\result_OBUF[31]_inst_i_11 [2]),
        .I5(\result_OBUF[31]_inst_i_11 [3]),
        .O(\result_OBUF[13]_inst_i_2_0 ));
  LUT6 #(
    .INIT(64'hD5D5D5C0D5C0D5C0)) 
    \pc[30]_i_1 
       (.I0(Jrn),
        .I1(JrPC[30]),
        .I2(\pc[31]_i_5 ),
        .I3(\pc_reg[30] ),
        .I4(Q[2]),
        .I5(\pc_plus_4_reg[31]_i_3_n_0 ),
        .O(D[27]));
  LUT6 #(
    .INIT(64'hD5D5D5C0D5C0D5C0)) 
    \pc[31]_i_1 
       (.I0(Jrn),
        .I1(\pc_reg[31]_1 ),
        .I2(\pc[31]_i_5 ),
        .I3(\pc_reg[31]_2 ),
        .I4(Q[3]),
        .I5(\pc_plus_4_reg[31]_i_3_n_0 ),
        .O(D[28]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \pc[31]_i_12 
       (.I0(\result_OBUF[31]_inst_i_11 [7]),
        .I1(\result_OBUF[25]_inst_i_10_2 ),
        .I2(\pc[31]_i_7 ),
        .I3(\result_OBUF[25]_inst_i_10_3 ),
        .I4(\pc[31]_i_7_0 ),
        .I5(ALUresult[2]),
        .O(\result_OBUF[29]_inst_i_2 ));
  LUT6 #(
    .INIT(64'h000000000000EEEF)) 
    \pc[31]_i_14 
       (.I0(\pc[31]_i_25_n_0 ),
        .I1(\pc[31]_i_10 ),
        .I2(\pc[31]_i_27_n_0 ),
        .I3(\pc[31]_i_8_0 ),
        .I4(\pc[31]_i_29_n_0 ),
        .I5(\pc[31]_i_8_1 ),
        .O(\pc[31]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000011101110111)) 
    \pc[31]_i_17 
       (.I0(\result_OBUF[31]_inst_i_11 [0]),
        .I1(\pc[31]_i_10 ),
        .I2(data0[13]),
        .I3(\pc[31]_i_15_0 ),
        .I4(data1[13]),
        .I5(\pc[31]_i_15_1 ),
        .O(\result_OBUF[25]_inst_i_7 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \pc[31]_i_24 
       (.I0(data0[15]),
        .I1(\pc[31]_i_15_0 ),
        .I2(data1[15]),
        .I3(\pc[31]_i_15_1 ),
        .O(\result_OBUF[25]_inst_i_7_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \pc[31]_i_25 
       (.I0(data0[13]),
        .I1(\pc[31]_i_15_0 ),
        .I2(data1[13]),
        .I3(\pc[31]_i_15_1 ),
        .O(\pc[31]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \pc[31]_i_27 
       (.I0(data0[12]),
        .I1(\pc[31]_i_15_0 ),
        .I2(data1[12]),
        .I3(\pc[31]_i_15_1 ),
        .O(\pc[31]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \pc[31]_i_29 
       (.I0(data0[14]),
        .I1(\pc[31]_i_15_0 ),
        .I2(data1[14]),
        .I3(\pc[31]_i_15_1 ),
        .O(\pc[31]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h2000022222222222)) 
    \pc[31]_i_3 
       (.I0(Jrn),
        .I1(p_0_in),
        .I2(\pc_plus_4_reg[31]_i_14_0 ),
        .I3(\pc_reg[31] ),
        .I4(douta[25]),
        .I5(\pc_reg[31]_0 ),
        .O(\pc[31]_i_5 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \pc[31]_i_33 
       (.I0(data0[4]),
        .I1(\pc[31]_i_15_0 ),
        .I2(data1[4]),
        .I3(\pc[31]_i_15_1 ),
        .O(\result_OBUF[25]_inst_i_7_2 ));
  LUT6 #(
    .INIT(64'h0000000040400040)) 
    \pc[31]_i_8 
       (.I0(ALUresult[1]),
        .I1(\pc[31]_i_6 ),
        .I2(\pc[31]_i_14_n_0 ),
        .I3(u_data_ram_i_47[6]),
        .I4(u_data_ram_i_47[7]),
        .I5(u_data_ram_i_47[8]),
        .O(u_data_ram_i_2_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \pc[31]_i_9 
       (.I0(\result_OBUF[31]_inst_i_11 [1]),
        .I1(u_data_ram_i_47[8]),
        .I2(u_data_ram_i_47[7]),
        .I3(u_data_ram_i_47[2]),
        .I4(u_data_ram_i_47[5]),
        .I5(\pc[31]_i_6_0 ),
        .O(\pc[31]_i_15 ));
  LUT6 #(
    .INIT(64'hD5D5D5C0D5C0D5C0)) 
    \pc[3]_i_1 
       (.I0(Jrn),
        .I1(JrPC[3]),
        .I2(\pc[31]_i_5 ),
        .I3(\pc_reg[3]_1 ),
        .I4(douta[0]),
        .I5(\pc_plus_4_reg[31]_i_3_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hD5D5D5C0D5C0D5C0)) 
    \pc[4]_i_1 
       (.I0(Jrn),
        .I1(JrPC[4]),
        .I2(\pc[31]_i_5 ),
        .I3(\pc_reg[4] ),
        .I4(douta[1]),
        .I5(\pc_plus_4_reg[31]_i_3_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hD5D5D5C0D5C0D5C0)) 
    \pc[5]_i_1 
       (.I0(Jrn),
        .I1(JrPC[5]),
        .I2(\pc[31]_i_5 ),
        .I3(\pc_reg[5] ),
        .I4(douta[2]),
        .I5(\pc_plus_4_reg[31]_i_3_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hD5D5D5C0D5C0D5C0)) 
    \pc[6]_i_1 
       (.I0(Jrn),
        .I1(JrPC[6]),
        .I2(\pc[31]_i_5 ),
        .I3(\pc_reg[6] ),
        .I4(douta[3]),
        .I5(\pc_plus_4_reg[31]_i_3_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hD5D5D5C0D5C0D5C0)) 
    \pc[7]_i_1 
       (.I0(Jrn),
        .I1(JrPC[7]),
        .I2(\pc[31]_i_5 ),
        .I3(\pc_reg[7] ),
        .I4(douta[4]),
        .I5(\pc_plus_4_reg[31]_i_3_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hD5D5D5C0D5C0D5C0)) 
    \pc[8]_i_1 
       (.I0(Jrn),
        .I1(JrPC[8]),
        .I2(\pc[31]_i_5 ),
        .I3(\pc_reg[8] ),
        .I4(douta[5]),
        .I5(\pc_plus_4_reg[31]_i_3_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hD5D5D5C0D5C0D5C0)) 
    \pc[9]_i_1 
       (.I0(Jrn),
        .I1(JrPC[9]),
        .I2(\pc[31]_i_5 ),
        .I3(\pc_reg[9] ),
        .I4(douta[6]),
        .I5(\pc_plus_4_reg[31]_i_3_n_0 ),
        .O(D[6]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \pc_plus_4_reg[31]_i_10 
       (.I0(\result_OBUF[31]_inst_i_11 [3]),
        .I1(\result_OBUF[31]_inst_i_11 [0]),
        .I2(\result_OBUF[31]_inst_i_11 [4]),
        .I3(ALUresult[0]),
        .I4(ALUresult[1]),
        .O(\pc_plus_4_reg[31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \pc_plus_4_reg[31]_i_12 
       (.I0(u_data_ram_i_47[5]),
        .I1(u_data_ram_i_47[2]),
        .I2(u_data_ram_i_47[7]),
        .I3(u_data_ram_i_47[8]),
        .I4(\result_OBUF[31]_inst_i_11 [1]),
        .O(\pc_plus_4_reg[31]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0045004500000045)) 
    \pc_plus_4_reg[31]_i_14 
       (.I0(u_data_ram_i_47[2]),
        .I1(u_data_ram_i_47[1]),
        .I2(u_data_ram_i_47[0]),
        .I3(u_data_ram_i_47[5]),
        .I4(u_data_ram_i_47[3]),
        .I5(u_data_ram_i_47[4]),
        .O(u_data_ram_i_6_0));
  LUT4 #(
    .INIT(16'h0007)) 
    \pc_plus_4_reg[31]_i_18 
       (.I0(\result_OBUF[0]_inst_i_1 ),
        .I1(\pc_plus_4_reg[31]_i_6 ),
        .I2(\result_OBUF[25]_inst_i_10_2 ),
        .I3(\result_OBUF[31]_inst_i_11 [7]),
        .O(\result_OBUF[28]_inst_i_3_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pc_plus_4_reg[31]_i_2 
       (.I0(\pc_plus_4_reg[31]_i_3_n_0 ),
        .I1(Jrn),
        .O(E));
  LUT4 #(
    .INIT(16'hF888)) 
    \pc_plus_4_reg[31]_i_20 
       (.I0(data0[7]),
        .I1(\pc[31]_i_15_0 ),
        .I2(data1[7]),
        .I3(\pc[31]_i_15_1 ),
        .O(\result_OBUF[25]_inst_i_7_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \pc_plus_4_reg[31]_i_21 
       (.I0(\result_OBUF[31]_inst_i_11 [8]),
        .I1(\result_OBUF[31]_inst_i_11 [9]),
        .O(\result_OBUF[31]_inst_i_5_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \pc_plus_4_reg[31]_i_22 
       (.I0(\pc[31]_i_15_1 ),
        .I1(i__carry__5_i_8[0]),
        .I2(\pc[31]_i_15_0 ),
        .I3(O[0]),
        .I4(\pc_plus_4_reg[31]_i_17 ),
        .I5(\result_OBUF[17]_inst_i_2 ),
        .O(\result_OBUF[25]_inst_i_10_3 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA802AAAAA)) 
    \pc_plus_4_reg[31]_i_3 
       (.I0(p_0_in),
        .I1(\pc_plus_4_reg[31]_i_14_0 ),
        .I2(\pc_reg[31] ),
        .I3(douta[25]),
        .I4(\pc_reg[3] ),
        .I5(\pc_reg[3]_0 ),
        .O(\pc_plus_4_reg[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \pc_plus_4_reg[31]_i_5 
       (.I0(\pc_plus_4_reg[31]_i_10_n_0 ),
        .I1(\pc[2]_i_3 ),
        .I2(\pc_plus_4_reg[31]_i_12_n_0 ),
        .I3(u_data_ram_i_47[1]),
        .I4(\pc[2]_i_3_0 ),
        .I5(u_data_ram_i_6_0),
        .O(\pc_plus_4_reg[31]_i_14_0 ));
  LUT6 #(
    .INIT(64'hFDFDFDFCCCCCCCCC)) 
    \result_OBUF[0]_inst_i_2 
       (.I0(ALUop),
        .I1(\result_OBUF[0]_inst_i_4_n_0 ),
        .I2(\result_OBUF[0]_inst_i_1_0 ),
        .I3(\result_OBUF[0]_inst_i_1_1 ),
        .I4(\result_OBUF[0]_inst_i_1_2 ),
        .I5(\result_OBUF[0]_inst_i_1 ),
        .O(\result_OBUF[31]_inst_i_11 [0]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \result_OBUF[0]_inst_i_4 
       (.I0(data1[0]),
        .I1(data0[0]),
        .I2(\result_OBUF[0]_inst_i_2_0 ),
        .I3(u_data_ram_0),
        .I4(u_data_ram),
        .O(\result_OBUF[0]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFD8FFD8FFD800D8)) 
    \result_OBUF[12]_inst_i_3 
       (.I0(u_data_ram),
        .I1(data1[12]),
        .I2(data0[12]),
        .I3(u_data_ram_0),
        .I4(\result_OBUF[12]_inst_i_1 ),
        .I5(\result_OBUF[12]_inst_i_1_0 ),
        .O(\result_OBUF[31]_inst_i_11 [2]));
  LUT6 #(
    .INIT(64'hFFD8FFD8FFD800D8)) 
    \result_OBUF[13]_inst_i_2 
       (.I0(u_data_ram),
        .I1(data1[13]),
        .I2(data0[13]),
        .I3(u_data_ram_0),
        .I4(\result_OBUF[13]_inst_i_1 ),
        .I5(\result_OBUF[13]_inst_i_1_0 ),
        .O(\result_OBUF[31]_inst_i_11 [3]));
  LUT6 #(
    .INIT(64'hFFD8FFD8FFD800D8)) 
    \result_OBUF[14]_inst_i_2 
       (.I0(u_data_ram),
        .I1(data1[14]),
        .I2(data0[14]),
        .I3(u_data_ram_0),
        .I4(\result_OBUF[14]_inst_i_1 ),
        .I5(\result_OBUF[14]_inst_i_1_0 ),
        .O(\result_OBUF[31]_inst_i_11 [4]));
  LUT6 #(
    .INIT(64'hFFD8FFD8FFD800D8)) 
    \result_OBUF[15]_inst_i_2 
       (.I0(u_data_ram),
        .I1(data1[15]),
        .I2(data0[15]),
        .I3(u_data_ram_0),
        .I4(\result_OBUF[15]_inst_i_1 ),
        .I5(\result_OBUF[15]_inst_i_1_0 ),
        .O(\result_OBUF[31]_inst_i_11 [5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[16]_inst_i_4 
       (.I0(\pc[31]_i_15_1 ),
        .I1(data1[16]),
        .I2(\pc[31]_i_15_0 ),
        .I3(data0[16]),
        .I4(\result_OBUF[16]_inst_i_3 ),
        .I5(\result_OBUF[17]_inst_i_2 ),
        .O(\result_OBUF[25]_inst_i_10_8 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[17]_inst_i_3 
       (.I0(\pc[31]_i_15_1 ),
        .I1(data1[17]),
        .I2(\pc[31]_i_15_0 ),
        .I3(data0[17]),
        .I4(\result_OBUF[17]_inst_i_2_0 ),
        .I5(\result_OBUF[17]_inst_i_2 ),
        .O(\result_OBUF[25]_inst_i_10_9 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAAAAAAAAA)) 
    \result_OBUF[18]_inst_i_2 
       (.I0(\result_OBUF[25]_inst_i_10_7 ),
        .I1(\result_OBUF[18]_inst_i_1 ),
        .I2(douta[1]),
        .I3(\result_OBUF[18]_inst_i_1_0 ),
        .I4(\result_OBUF[18]_inst_i_1_1 ),
        .I5(\result_OBUF[0]_inst_i_1 ),
        .O(\result_OBUF[31]_inst_i_11 [6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[18]_inst_i_3 
       (.I0(\pc[31]_i_15_1 ),
        .I1(data1[18]),
        .I2(\pc[31]_i_15_0 ),
        .I3(data0[18]),
        .I4(\pc[31]_i_16 ),
        .I5(\result_OBUF[17]_inst_i_2 ),
        .O(\result_OBUF[25]_inst_i_10_7 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[19]_inst_i_3 
       (.I0(\pc[31]_i_15_1 ),
        .I1(data1[19]),
        .I2(\pc[31]_i_15_0 ),
        .I3(data0[19]),
        .I4(\result_OBUF[19]_inst_i_2 ),
        .I5(\result_OBUF[17]_inst_i_2 ),
        .O(\result_OBUF[25]_inst_i_10_6 ));
  LUT6 #(
    .INIT(64'hFFD8FFD8FFD800D8)) 
    \result_OBUF[1]_inst_i_2 
       (.I0(u_data_ram),
        .I1(data1[1]),
        .I2(data0[1]),
        .I3(u_data_ram_0),
        .I4(\result_OBUF[1]_inst_i_1 ),
        .I5(\result_OBUF[1]_inst_i_1_0 ),
        .O(\result_OBUF[31]_inst_i_11 [1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[20]_inst_i_4 
       (.I0(\pc[31]_i_15_1 ),
        .I1(data1[20]),
        .I2(\pc[31]_i_15_0 ),
        .I3(data0[20]),
        .I4(\result_OBUF[20]_inst_i_3 ),
        .I5(\result_OBUF[17]_inst_i_2 ),
        .O(\result_OBUF[25]_inst_i_10_5 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[21]_inst_i_3 
       (.I0(\pc[31]_i_15_1 ),
        .I1(data1[21]),
        .I2(\pc[31]_i_15_0 ),
        .I3(data0[21]),
        .I4(\result_OBUF[21]_inst_i_2 ),
        .I5(\result_OBUF[17]_inst_i_2 ),
        .O(\result_OBUF[25]_inst_i_10 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[22]_inst_i_3 
       (.I0(\pc[31]_i_15_1 ),
        .I1(data1[22]),
        .I2(\pc[31]_i_15_0 ),
        .I3(data0[22]),
        .I4(\result_OBUF[22]_inst_i_2 ),
        .I5(\result_OBUF[17]_inst_i_2 ),
        .O(\result_OBUF[25]_inst_i_10_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[23]_inst_i_3 
       (.I0(\pc[31]_i_15_1 ),
        .I1(data1[23]),
        .I2(\pc[31]_i_15_0 ),
        .I3(data0[23]),
        .I4(\result_OBUF[23]_inst_i_2 ),
        .I5(\result_OBUF[17]_inst_i_2 ),
        .O(\result_OBUF[25]_inst_i_10_1 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[24]_inst_i_4 
       (.I0(\pc[31]_i_15_1 ),
        .I1(data1[24]),
        .I2(\pc[31]_i_15_0 ),
        .I3(data0[24]),
        .I4(\result_OBUF[24]_inst_i_3 ),
        .I5(\result_OBUF[17]_inst_i_2 ),
        .O(\result_OBUF[25]_inst_i_10_4 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[25]_inst_i_3 
       (.I0(\pc[31]_i_15_1 ),
        .I1(data1[25]),
        .I2(\pc[31]_i_15_0 ),
        .I3(data0[25]),
        .I4(\result_OBUF[25]_inst_i_2 ),
        .I5(\result_OBUF[17]_inst_i_2 ),
        .O(\result_OBUF[25]_inst_i_10_2 ));
  LUT6 #(
    .INIT(64'hFFFEEEEEAAAAAAAA)) 
    \result_OBUF[28]_inst_i_3 
       (.I0(\result_OBUF[28]_inst_i_4_n_0 ),
        .I1(\result_OBUF[28]_inst_i_1_0 ),
        .I2(\result_OBUF[28]_inst_i_1_1 ),
        .I3(\result_OBUF[28]_inst_i_1_2 ),
        .I4(\result_OBUF[28]_inst_i_1 ),
        .I5(\result_OBUF[0]_inst_i_1 ),
        .O(\result_OBUF[31]_inst_i_11 [7]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \result_OBUF[28]_inst_i_4 
       (.I0(data1[28]),
        .I1(data0[28]),
        .I2(\result_OBUF[28]_inst_i_3_1 ),
        .I3(u_data_ram_0),
        .I4(u_data_ram),
        .O(\result_OBUF[28]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \result_OBUF[29]_inst_i_3 
       (.I0(data1[29]),
        .I1(data0[29]),
        .I2(\result_OBUF[29]_inst_i_2_0 ),
        .I3(u_data_ram_0),
        .I4(u_data_ram),
        .O(u_data_ram_i_44));
  LUT6 #(
    .INIT(64'hFFFEEEEEAAAAAAAA)) 
    \result_OBUF[30]_inst_i_2 
       (.I0(\result_OBUF[30]_inst_i_3_n_0 ),
        .I1(\result_OBUF[30]_inst_i_1 ),
        .I2(\result_OBUF[30]_inst_i_1_0 ),
        .I3(\result_OBUF[30]_inst_i_1_1 ),
        .I4(\result_OBUF[28]_inst_i_1 ),
        .I5(\result_OBUF[0]_inst_i_1 ),
        .O(\result_OBUF[31]_inst_i_11 [8]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \result_OBUF[30]_inst_i_3 
       (.I0(data1[30]),
        .I1(data0[30]),
        .I2(\result_OBUF[30]_inst_i_2_0 ),
        .I3(u_data_ram_0),
        .I4(u_data_ram),
        .O(\result_OBUF[30]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFEEEAAAA)) 
    \result_OBUF[31]_inst_i_5 
       (.I0(\result_OBUF[31]_inst_i_7_n_0 ),
        .I1(\result_OBUF[31]_inst_i_1 ),
        .I2(\result_OBUF[31]_inst_i_1_0 ),
        .I3(\result_OBUF[28]_inst_i_1 ),
        .I4(\result_OBUF[0]_inst_i_1 ),
        .O(\result_OBUF[31]_inst_i_11 [9]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \result_OBUF[31]_inst_i_7 
       (.I0(data1[31]),
        .I1(data0[31]),
        .I2(\result_OBUF[31]_inst_i_5_1 ),
        .I3(u_data_ram_0),
        .I4(u_data_ram),
        .O(\result_OBUF[31]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFD8FFD8FFD800D8)) 
    u_data_ram_i_10
       (.I0(u_data_ram),
        .I1(data1[3]),
        .I2(data0[3]),
        .I3(u_data_ram_0),
        .I4(u_data_ram_3),
        .I5(u_data_ram_4),
        .O(u_data_ram_i_47[0]));
  LUT6 #(
    .INIT(64'hFFD8FFD8FFD800D8)) 
    u_data_ram_i_2
       (.I0(u_data_ram),
        .I1(data1[11]),
        .I2(data0[11]),
        .I3(u_data_ram_0),
        .I4(u_data_ram_9),
        .I5(u_data_ram_10),
        .O(u_data_ram_i_47[8]));
  LUT6 #(
    .INIT(64'hFFD8FFD8FFD800D8)) 
    u_data_ram_i_3
       (.I0(u_data_ram),
        .I1(data1[10]),
        .I2(data0[10]),
        .I3(u_data_ram_0),
        .I4(u_data_ram_7),
        .I5(u_data_ram_8),
        .O(u_data_ram_i_47[7]));
  LUT6 #(
    .INIT(64'hFFD8FFD8FFD800D8)) 
    u_data_ram_i_4
       (.I0(u_data_ram),
        .I1(data1[9]),
        .I2(data0[9]),
        .I3(u_data_ram_0),
        .I4(u_data_ram_1),
        .I5(u_data_ram_2),
        .O(u_data_ram_i_47[6]));
  LUT6 #(
    .INIT(64'hFFD8FFD8FFD800D8)) 
    u_data_ram_i_5
       (.I0(u_data_ram),
        .I1(data1[8]),
        .I2(data0[8]),
        .I3(u_data_ram_0),
        .I4(u_data_ram_11),
        .I5(u_data_ram_12),
        .O(u_data_ram_i_47[5]));
  LUT6 #(
    .INIT(64'hFFD8FFD8FFD800D8)) 
    u_data_ram_i_6
       (.I0(u_data_ram),
        .I1(data1[7]),
        .I2(data0[7]),
        .I3(u_data_ram_0),
        .I4(u_data_ram_15),
        .I5(u_data_ram_16),
        .O(u_data_ram_i_47[4]));
  LUT4 #(
    .INIT(16'h00CA)) 
    u_data_ram_i_64
       (.I0(data0[2]),
        .I1(data1[2]),
        .I2(u_data_ram),
        .I3(u_data_ram_0),
        .O(u_data_ram_i_45));
  LUT6 #(
    .INIT(64'hFFD8FFD8FFD800D8)) 
    u_data_ram_i_7
       (.I0(u_data_ram),
        .I1(data1[6]),
        .I2(data0[6]),
        .I3(u_data_ram_0),
        .I4(u_data_ram_5),
        .I5(u_data_ram_6),
        .O(u_data_ram_i_47[3]));
  LUT6 #(
    .INIT(64'hFFD8FFD8FFD800D8)) 
    u_data_ram_i_8
       (.I0(u_data_ram),
        .I1(data1[5]),
        .I2(data0[5]),
        .I3(u_data_ram_0),
        .I4(u_data_ram_13),
        .I5(u_data_ram_14),
        .O(u_data_ram_i_47[2]));
  LUT6 #(
    .INIT(64'hFFD8FFD8FFD800D8)) 
    u_data_ram_i_9
       (.I0(u_data_ram),
        .I1(data1[4]),
        .I2(data0[4]),
        .I3(u_data_ram_0),
        .I4(u_data_ram_17),
        .I5(u_data_ram_18),
        .O(u_data_ram_i_47[1]));
endmodule

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.1" *) 
module blk_mem_gen_0
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]douta;
  wire NLW_U0_clkb_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_deepsleep_UNCONNECTED;
  wire NLW_U0_eccpipece_UNCONNECTED;
  wire NLW_U0_ena_UNCONNECTED;
  wire NLW_U0_enb_UNCONNECTED;
  wire NLW_U0_injectdbiterr_UNCONNECTED;
  wire NLW_U0_injectsbiterr_UNCONNECTED;
  wire NLW_U0_regcea_UNCONNECTED;
  wire NLW_U0_regceb_UNCONNECTED;
  wire NLW_U0_rsta_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_aclk_UNCONNECTED;
  wire NLW_U0_s_aresetn_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_arvalid_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_awvalid_UNCONNECTED;
  wire NLW_U0_s_axi_bready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_injectdbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_injectsbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rready_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wlast_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axi_wvalid_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_shutdown_UNCONNECTED;
  wire NLW_U0_sleep_UNCONNECTED;
  wire [9:0]NLW_U0_addrb_UNCONNECTED;
  wire [31:0]NLW_U0_dina_UNCONNECTED;
  wire [31:0]NLW_U0_dinb_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_arlen_UNCONNECTED;
  wire [2:0]NLW_U0_s_axi_arsize_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_awlen_UNCONNECTED;
  wire [2:0]NLW_U0_s_axi_awsize_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_wea_UNCONNECTED;
  wire [0:0]NLW_U0_web_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.622 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(NLW_U0_addrb_UNCONNECTED[9:0]),
        .clka(clka),
        .clkb(NLW_U0_clkb_UNCONNECTED),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(NLW_U0_deepsleep_UNCONNECTED),
        .dina(NLW_U0_dina_UNCONNECTED[31:0]),
        .dinb(NLW_U0_dinb_UNCONNECTED[31:0]),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(NLW_U0_eccpipece_UNCONNECTED),
        .ena(NLW_U0_ena_UNCONNECTED),
        .enb(NLW_U0_enb_UNCONNECTED),
        .injectdbiterr(NLW_U0_injectdbiterr_UNCONNECTED),
        .injectsbiterr(NLW_U0_injectsbiterr_UNCONNECTED),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(NLW_U0_regcea_UNCONNECTED),
        .regceb(NLW_U0_regceb_UNCONNECTED),
        .rsta(NLW_U0_rsta_UNCONNECTED),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(NLW_U0_rstb_UNCONNECTED),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(NLW_U0_s_aclk_UNCONNECTED),
        .s_aresetn(NLW_U0_s_aresetn_UNCONNECTED),
        .s_axi_araddr(NLW_U0_s_axi_araddr_UNCONNECTED[31:0]),
        .s_axi_arburst(NLW_U0_s_axi_arburst_UNCONNECTED[1:0]),
        .s_axi_arid(NLW_U0_s_axi_arid_UNCONNECTED[3:0]),
        .s_axi_arlen(NLW_U0_s_axi_arlen_UNCONNECTED[7:0]),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize(NLW_U0_s_axi_arsize_UNCONNECTED[2:0]),
        .s_axi_arvalid(NLW_U0_s_axi_arvalid_UNCONNECTED),
        .s_axi_awaddr(NLW_U0_s_axi_awaddr_UNCONNECTED[31:0]),
        .s_axi_awburst(NLW_U0_s_axi_awburst_UNCONNECTED[1:0]),
        .s_axi_awid(NLW_U0_s_axi_awid_UNCONNECTED[3:0]),
        .s_axi_awlen(NLW_U0_s_axi_awlen_UNCONNECTED[7:0]),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize(NLW_U0_s_axi_awsize_UNCONNECTED[2:0]),
        .s_axi_awvalid(NLW_U0_s_axi_awvalid_UNCONNECTED),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(NLW_U0_s_axi_bready_UNCONNECTED),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(NLW_U0_s_axi_injectdbiterr_UNCONNECTED),
        .s_axi_injectsbiterr(NLW_U0_s_axi_injectsbiterr_UNCONNECTED),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(NLW_U0_s_axi_rready_UNCONNECTED),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata(NLW_U0_s_axi_wdata_UNCONNECTED[31:0]),
        .s_axi_wlast(NLW_U0_s_axi_wlast_UNCONNECTED),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(NLW_U0_s_axi_wstrb_UNCONNECTED[0]),
        .s_axi_wvalid(NLW_U0_s_axi_wvalid_UNCONNECTED),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(NLW_U0_shutdown_UNCONNECTED),
        .sleep(NLW_U0_sleep_UNCONNECTED),
        .wea(NLW_U0_wea_UNCONNECTED[0]),
        .web(NLW_U0_web_UNCONNECTED[0]));
endmodule

module cpu_clk
   (clk_out1,
    clk_in1);
  output clk_out1;
  input clk_in1;

  (* IBUF_LOW_PWR *) wire clk_in1;
  wire clk_out1;

  cpu_clk_cpu_clk_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1));
endmodule

(* ORIG_REF_NAME = "cpu_clk_clk_wiz" *) 
module cpu_clk_cpu_clk_clk_wiz
   (clk_out1,
    clk_in1);
  output clk_out1;
  input clk_in1;

  wire clk_in1;
  wire clk_out1;
  wire clk_out1_cpu_clk;
  wire clkfbout_buf_cpu_clk;
  wire clkfbout_cpu_clk;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_LOCKED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_cpu_clk),
        .O(clkfbout_buf_cpu_clk));
  (* box_type = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_cpu_clk),
        .O(clk_out1));
  (* OPT_MODIFIED = "MLO" *) 
  (* box_type = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(8.500000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(42.500000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_cpu_clk),
        .CLKFBOUT(clkfbout_cpu_clk),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in1),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_out1_cpu_clk),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(NLW_mmcm_adv_inst_LOCKED_UNCONNECTED),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "data_ram,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.1" *) 
module data_ram
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire [0:0]wea;
  wire NLW_U0_clkb_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_deepsleep_UNCONNECTED;
  wire NLW_U0_eccpipece_UNCONNECTED;
  wire NLW_U0_ena_UNCONNECTED;
  wire NLW_U0_enb_UNCONNECTED;
  wire NLW_U0_injectdbiterr_UNCONNECTED;
  wire NLW_U0_injectsbiterr_UNCONNECTED;
  wire NLW_U0_regcea_UNCONNECTED;
  wire NLW_U0_regceb_UNCONNECTED;
  wire NLW_U0_rsta_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_aclk_UNCONNECTED;
  wire NLW_U0_s_aresetn_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_arvalid_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_awvalid_UNCONNECTED;
  wire NLW_U0_s_axi_bready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_injectdbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_injectsbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rready_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wlast_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axi_wvalid_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_shutdown_UNCONNECTED;
  wire NLW_U0_sleep_UNCONNECTED;
  wire [9:0]NLW_U0_addrb_UNCONNECTED;
  wire [31:0]NLW_U0_dinb_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_arlen_UNCONNECTED;
  wire [2:0]NLW_U0_s_axi_arsize_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_awlen_UNCONNECTED;
  wire [2:0]NLW_U0_s_axi_awsize_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_web_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.95215 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "data_ram.mem" *) 
  (* C_INIT_FILE_NAME = "data_ram.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  data_ram_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(NLW_U0_addrb_UNCONNECTED[9:0]),
        .clka(clka),
        .clkb(NLW_U0_clkb_UNCONNECTED),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(NLW_U0_deepsleep_UNCONNECTED),
        .dina(dina),
        .dinb(NLW_U0_dinb_UNCONNECTED[31:0]),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(NLW_U0_eccpipece_UNCONNECTED),
        .ena(NLW_U0_ena_UNCONNECTED),
        .enb(NLW_U0_enb_UNCONNECTED),
        .injectdbiterr(NLW_U0_injectdbiterr_UNCONNECTED),
        .injectsbiterr(NLW_U0_injectsbiterr_UNCONNECTED),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(NLW_U0_regcea_UNCONNECTED),
        .regceb(NLW_U0_regceb_UNCONNECTED),
        .rsta(NLW_U0_rsta_UNCONNECTED),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(NLW_U0_rstb_UNCONNECTED),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(NLW_U0_s_aclk_UNCONNECTED),
        .s_aresetn(NLW_U0_s_aresetn_UNCONNECTED),
        .s_axi_araddr(NLW_U0_s_axi_araddr_UNCONNECTED[31:0]),
        .s_axi_arburst(NLW_U0_s_axi_arburst_UNCONNECTED[1:0]),
        .s_axi_arid(NLW_U0_s_axi_arid_UNCONNECTED[3:0]),
        .s_axi_arlen(NLW_U0_s_axi_arlen_UNCONNECTED[7:0]),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize(NLW_U0_s_axi_arsize_UNCONNECTED[2:0]),
        .s_axi_arvalid(NLW_U0_s_axi_arvalid_UNCONNECTED),
        .s_axi_awaddr(NLW_U0_s_axi_awaddr_UNCONNECTED[31:0]),
        .s_axi_awburst(NLW_U0_s_axi_awburst_UNCONNECTED[1:0]),
        .s_axi_awid(NLW_U0_s_axi_awid_UNCONNECTED[3:0]),
        .s_axi_awlen(NLW_U0_s_axi_awlen_UNCONNECTED[7:0]),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize(NLW_U0_s_axi_awsize_UNCONNECTED[2:0]),
        .s_axi_awvalid(NLW_U0_s_axi_awvalid_UNCONNECTED),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(NLW_U0_s_axi_bready_UNCONNECTED),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(NLW_U0_s_axi_injectdbiterr_UNCONNECTED),
        .s_axi_injectsbiterr(NLW_U0_s_axi_injectsbiterr_UNCONNECTED),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(NLW_U0_s_axi_rready_UNCONNECTED),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata(NLW_U0_s_axi_wdata_UNCONNECTED[31:0]),
        .s_axi_wlast(NLW_U0_s_axi_wlast_UNCONNECTED),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(NLW_U0_s_axi_wstrb_UNCONNECTED[0]),
        .s_axi_wvalid(NLW_U0_s_axi_wvalid_UNCONNECTED),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(NLW_U0_shutdown_UNCONNECTED),
        .sleep(NLW_U0_sleep_UNCONNECTED),
        .wea(wea),
        .web(NLW_U0_web_UNCONNECTED[0]));
endmodule

(* ECO_CHECKSUM = "cd4eda5" *) (* POWER_OPT_BRAM_CDC = "1" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
module datapath_1
   (clk,
    rst_n,
    result);
  input clk;
  input rst_n;
  output [31:0]result;

  wire [1:0]A0;
  wire ALUSrc_in;
  wire [2:0]ALUop;
  wire [11:2]ALUresult;
  wire [31:0]ALUresult__0;
  wire [31:0]B;
  wire [30:0]JrPC;
  wire [31:31]JrPC__0;
  wire Jrn;
  wire MemWrite;
  wire Sftmd;
  wire clk;
  wire clk_IBUF;
  wire clk_div;
  wire [27:26]data0;
  wire [27:26]data1;
  wire data6;
  wire data7;
  wire [31:0]instruction;
  wire [31:0]memData;
  wire [0:0]p_0_in;
  wire [11:2]pcOld;
  wire [31:2]pcSelect;
  wire [31:28]pc_plus_4;
  wire [31:0]result;
  wire [31:0]result_OBUF;
  wire rst_n;
  wire rst_n_IBUF;
  wire u_ALU_1_n_29;
  wire u_ALU_1_n_30;
  wire u_ALU_1_n_31;
  wire u_ALU_1_n_32;
  wire u_ALU_1_n_33;
  wire u_ALU_1_n_34;
  wire u_ALU_1_n_35;
  wire u_ALU_1_n_36;
  wire u_ALU_1_n_37;
  wire u_ALU_1_n_38;
  wire u_ALU_1_n_39;
  wire u_ALU_1_n_40;
  wire u_ALU_1_n_41;
  wire u_ALU_1_n_42;
  wire u_ALU_1_n_43;
  wire u_ALU_1_n_44;
  wire u_ALU_1_n_45;
  wire u_ALU_1_n_46;
  wire u_ALU_1_n_47;
  wire u_ALU_1_n_48;
  wire u_ALU_1_n_49;
  wire u_ALU_1_n_50;
  wire u_ALU_1_n_51;
  wire u_ALU_1_n_53;
  wire u_ALU_1_n_54;
  wire u_ALU_1_n_6;
  wire u_ALU_1_n_7;
  wire u_ALU_1_n_8;
  wire u_ALU_1_n_9;
  wire u_pc_1_n_0;
  wire u_pc_1_n_43;
  wire u_pc_1_n_44;
  wire u_pc_1_n_46;
  wire u_pc_1_n_47;
  wire u_pc_1_n_48;
  wire u_pc_1_n_49;
  wire u_pc_1_n_50;
  wire u_pc_1_n_51;
  wire u_pc_1_n_52;
  wire u_pc_1_n_53;
  wire u_pc_1_n_54;
  wire u_pc_1_n_55;
  wire u_pc_1_n_56;
  wire u_pc_1_n_57;
  wire u_pc_1_n_58;
  wire u_pc_1_n_59;
  wire u_pc_1_n_60;
  wire u_pc_1_n_61;
  wire u_pc_1_n_62;
  wire u_pc_1_n_63;
  wire u_pc_1_n_64;
  wire u_pc_1_n_65;
  wire u_pc_1_n_66;
  wire u_pc_1_n_67;
  wire u_pc_1_n_68;
  wire u_pc_1_n_69;
  wire u_pc_1_n_70;
  wire u_pc_1_n_71;
  wire u_pc_1_n_72;
  wire u_pc_1_n_73;
  wire u_pc_1_n_74;
  wire u_pc_1_n_75;
  wire u_pc_1_n_76;
  wire u_pc_1_n_77;
  wire u_pc_1_n_78;
  wire u_pc_1_n_79;
  wire u_pc_1_n_80;
  wire u_pc_1_n_84;
  wire u_pc_1_n_85;
  wire u_pc_1_n_86;
  wire u_pc_1_n_87;
  wire u_pc_1_n_88;
  wire u_pc_1_n_89;
  wire u_pc_1_n_90;
  wire u_pc_1_n_92;
  wire u_pc_1_n_93;
  wire u_pc_1_n_95;
  wire u_pc_1_n_96;
  wire u_pc_1_n_97;
  wire u_pc_1_n_98;
  wire u_pc_1_n_99;
  wire u_reg_files_1_n_100;
  wire u_reg_files_1_n_101;
  wire u_reg_files_1_n_102;
  wire u_reg_files_1_n_103;
  wire u_reg_files_1_n_105;
  wire u_reg_files_1_n_106;
  wire u_reg_files_1_n_107;
  wire u_reg_files_1_n_108;
  wire u_reg_files_1_n_109;
  wire u_reg_files_1_n_110;
  wire u_reg_files_1_n_111;
  wire u_reg_files_1_n_112;
  wire u_reg_files_1_n_113;
  wire u_reg_files_1_n_114;
  wire u_reg_files_1_n_115;
  wire u_reg_files_1_n_116;
  wire u_reg_files_1_n_117;
  wire u_reg_files_1_n_118;
  wire u_reg_files_1_n_119;
  wire u_reg_files_1_n_120;
  wire u_reg_files_1_n_121;
  wire u_reg_files_1_n_122;
  wire u_reg_files_1_n_155;
  wire u_reg_files_1_n_156;
  wire u_reg_files_1_n_157;
  wire u_reg_files_1_n_158;
  wire u_reg_files_1_n_159;
  wire u_reg_files_1_n_160;
  wire u_reg_files_1_n_161;
  wire u_reg_files_1_n_162;
  wire u_reg_files_1_n_163;
  wire u_reg_files_1_n_164;
  wire u_reg_files_1_n_165;
  wire u_reg_files_1_n_166;
  wire u_reg_files_1_n_167;
  wire u_reg_files_1_n_168;
  wire u_reg_files_1_n_169;
  wire u_reg_files_1_n_170;
  wire u_reg_files_1_n_171;
  wire u_reg_files_1_n_172;
  wire u_reg_files_1_n_173;
  wire u_reg_files_1_n_174;
  wire u_reg_files_1_n_175;
  wire u_reg_files_1_n_176;
  wire u_reg_files_1_n_177;
  wire u_reg_files_1_n_178;
  wire u_reg_files_1_n_179;
  wire u_reg_files_1_n_180;
  wire u_reg_files_1_n_181;
  wire u_reg_files_1_n_182;
  wire u_reg_files_1_n_184;
  wire u_reg_files_1_n_185;
  wire u_reg_files_1_n_186;
  wire u_reg_files_1_n_187;
  wire u_reg_files_1_n_188;
  wire u_reg_files_1_n_189;
  wire u_reg_files_1_n_190;
  wire u_reg_files_1_n_191;
  wire u_reg_files_1_n_192;
  wire u_reg_files_1_n_193;
  wire u_reg_files_1_n_194;
  wire u_reg_files_1_n_195;
  wire u_reg_files_1_n_196;
  wire u_reg_files_1_n_197;
  wire u_reg_files_1_n_198;
  wire u_reg_files_1_n_199;
  wire u_reg_files_1_n_200;
  wire u_reg_files_1_n_201;
  wire u_reg_files_1_n_202;
  wire u_reg_files_1_n_203;
  wire u_reg_files_1_n_204;
  wire u_reg_files_1_n_205;
  wire u_reg_files_1_n_206;
  wire u_reg_files_1_n_207;
  wire u_reg_files_1_n_208;
  wire u_reg_files_1_n_209;
  wire u_reg_files_1_n_210;
  wire u_reg_files_1_n_211;
  wire u_reg_files_1_n_212;
  wire u_reg_files_1_n_213;
  wire u_reg_files_1_n_214;
  wire u_reg_files_1_n_215;
  wire u_reg_files_1_n_216;
  wire u_reg_files_1_n_217;
  wire u_reg_files_1_n_218;
  wire u_reg_files_1_n_219;
  wire u_reg_files_1_n_220;
  wire u_reg_files_1_n_221;
  wire u_reg_files_1_n_222;
  wire u_reg_files_1_n_223;
  wire u_reg_files_1_n_224;
  wire u_reg_files_1_n_225;
  wire u_reg_files_1_n_226;
  wire u_reg_files_1_n_227;
  wire u_reg_files_1_n_228;
  wire u_reg_files_1_n_229;
  wire u_reg_files_1_n_230;
  wire u_reg_files_1_n_231;
  wire u_reg_files_1_n_232;
  wire u_reg_files_1_n_233;
  wire u_reg_files_1_n_234;
  wire u_reg_files_1_n_235;
  wire u_reg_files_1_n_236;
  wire u_reg_files_1_n_237;
  wire u_reg_files_1_n_238;
  wire u_reg_files_1_n_239;
  wire u_reg_files_1_n_240;
  wire u_reg_files_1_n_241;
  wire u_reg_files_1_n_242;
  wire u_reg_files_1_n_243;
  wire u_reg_files_1_n_244;
  wire u_reg_files_1_n_245;
  wire u_reg_files_1_n_246;
  wire u_reg_files_1_n_247;
  wire u_reg_files_1_n_248;
  wire u_reg_files_1_n_249;
  wire u_reg_files_1_n_250;
  wire u_reg_files_1_n_251;
  wire u_reg_files_1_n_252;
  wire u_reg_files_1_n_253;
  wire u_reg_files_1_n_254;
  wire u_reg_files_1_n_255;
  wire u_reg_files_1_n_256;
  wire u_reg_files_1_n_257;
  wire u_reg_files_1_n_258;
  wire u_reg_files_1_n_259;
  wire u_reg_files_1_n_260;
  wire u_reg_files_1_n_261;
  wire u_reg_files_1_n_262;
  wire u_reg_files_1_n_263;
  wire u_reg_files_1_n_264;
  wire u_reg_files_1_n_265;
  wire u_reg_files_1_n_266;
  wire u_reg_files_1_n_267;
  wire u_reg_files_1_n_268;
  wire u_reg_files_1_n_269;
  wire u_reg_files_1_n_270;
  wire u_reg_files_1_n_271;
  wire u_reg_files_1_n_272;
  wire u_reg_files_1_n_273;
  wire u_reg_files_1_n_274;
  wire u_reg_files_1_n_275;
  wire u_reg_files_1_n_276;
  wire u_reg_files_1_n_277;
  wire u_reg_files_1_n_278;
  wire u_reg_files_1_n_279;
  wire u_reg_files_1_n_280;
  wire u_reg_files_1_n_281;
  wire u_reg_files_1_n_282;
  wire u_reg_files_1_n_283;
  wire u_reg_files_1_n_284;
  wire u_reg_files_1_n_285;
  wire u_reg_files_1_n_286;
  wire u_reg_files_1_n_287;
  wire u_reg_files_1_n_288;
  wire u_reg_files_1_n_289;
  wire u_reg_files_1_n_290;
  wire u_reg_files_1_n_291;
  wire u_reg_files_1_n_292;
  wire u_reg_files_1_n_293;
  wire u_reg_files_1_n_294;
  wire u_reg_files_1_n_295;
  wire u_reg_files_1_n_296;
  wire u_reg_files_1_n_297;
  wire u_reg_files_1_n_298;
  wire u_reg_files_1_n_299;
  wire u_reg_files_1_n_300;
  wire u_reg_files_1_n_301;
  wire u_reg_files_1_n_302;
  wire u_reg_files_1_n_303;
  wire u_reg_files_1_n_304;
  wire u_reg_files_1_n_305;
  wire u_reg_files_1_n_306;
  wire u_reg_files_1_n_307;
  wire u_reg_files_1_n_308;
  wire u_reg_files_1_n_309;
  wire u_reg_files_1_n_310;
  wire u_reg_files_1_n_311;
  wire u_reg_files_1_n_32;
  wire u_reg_files_1_n_33;
  wire u_reg_files_1_n_34;
  wire u_reg_files_1_n_35;
  wire u_reg_files_1_n_38;
  wire u_reg_files_1_n_39;
  wire u_reg_files_1_n_40;
  wire u_reg_files_1_n_41;
  wire u_reg_files_1_n_42;
  wire u_reg_files_1_n_43;
  wire u_reg_files_1_n_44;
  wire u_reg_files_1_n_45;
  wire u_reg_files_1_n_46;
  wire u_reg_files_1_n_47;
  wire u_reg_files_1_n_48;
  wire u_reg_files_1_n_49;
  wire u_reg_files_1_n_50;
  wire u_reg_files_1_n_51;
  wire u_reg_files_1_n_52;
  wire u_reg_files_1_n_53;
  wire u_reg_files_1_n_54;
  wire u_reg_files_1_n_55;
  wire u_reg_files_1_n_56;
  wire u_reg_files_1_n_57;
  wire u_reg_files_1_n_58;
  wire u_reg_files_1_n_59;
  wire u_reg_files_1_n_60;
  wire u_reg_files_1_n_61;
  wire u_reg_files_1_n_62;
  wire u_reg_files_1_n_63;
  wire u_reg_files_1_n_64;
  wire u_reg_files_1_n_65;
  wire u_reg_files_1_n_66;
  wire u_reg_files_1_n_67;
  wire u_reg_files_1_n_68;
  wire u_reg_files_1_n_70;
  wire u_reg_files_1_n_83;
  wire u_reg_files_1_n_84;
  wire u_reg_files_1_n_85;
  wire u_reg_files_1_n_86;
  wire u_reg_files_1_n_87;
  wire u_reg_files_1_n_88;
  wire u_reg_files_1_n_89;
  wire u_reg_files_1_n_90;
  wire u_reg_files_1_n_91;
  wire u_reg_files_1_n_92;
  wire u_reg_files_1_n_93;
  wire u_reg_files_1_n_94;
  wire u_reg_files_1_n_95;
  wire u_reg_files_1_n_96;
  wire u_reg_files_1_n_97;
  wire u_reg_files_1_n_98;
  wire u_reg_files_1_n_99;
  wire zero_in;

initial begin
 $sdf_annotate("tb_datapath_1_time_impl.sdf",,,,"tool_control");
end
  (* OPT_INSERTED *) 
  (* OPT_MODIFIED = "MLO" *) 
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF \result_OBUF[0]_inst 
       (.I(result_OBUF[0]),
        .O(result[0]));
  OBUF \result_OBUF[10]_inst 
       (.I(result_OBUF[10]),
        .O(result[10]));
  OBUF \result_OBUF[11]_inst 
       (.I(result_OBUF[11]),
        .O(result[11]));
  OBUF \result_OBUF[12]_inst 
       (.I(result_OBUF[12]),
        .O(result[12]));
  OBUF \result_OBUF[13]_inst 
       (.I(result_OBUF[13]),
        .O(result[13]));
  OBUF \result_OBUF[14]_inst 
       (.I(result_OBUF[14]),
        .O(result[14]));
  OBUF \result_OBUF[15]_inst 
       (.I(result_OBUF[15]),
        .O(result[15]));
  OBUF \result_OBUF[16]_inst 
       (.I(result_OBUF[16]),
        .O(result[16]));
  OBUF \result_OBUF[17]_inst 
       (.I(result_OBUF[17]),
        .O(result[17]));
  OBUF \result_OBUF[18]_inst 
       (.I(result_OBUF[18]),
        .O(result[18]));
  OBUF \result_OBUF[19]_inst 
       (.I(result_OBUF[19]),
        .O(result[19]));
  OBUF \result_OBUF[1]_inst 
       (.I(result_OBUF[1]),
        .O(result[1]));
  OBUF \result_OBUF[20]_inst 
       (.I(result_OBUF[20]),
        .O(result[20]));
  OBUF \result_OBUF[21]_inst 
       (.I(result_OBUF[21]),
        .O(result[21]));
  OBUF \result_OBUF[22]_inst 
       (.I(result_OBUF[22]),
        .O(result[22]));
  OBUF \result_OBUF[23]_inst 
       (.I(result_OBUF[23]),
        .O(result[23]));
  OBUF \result_OBUF[24]_inst 
       (.I(result_OBUF[24]),
        .O(result[24]));
  OBUF \result_OBUF[25]_inst 
       (.I(result_OBUF[25]),
        .O(result[25]));
  OBUF \result_OBUF[26]_inst 
       (.I(result_OBUF[26]),
        .O(result[26]));
  OBUF \result_OBUF[27]_inst 
       (.I(result_OBUF[27]),
        .O(result[27]));
  OBUF \result_OBUF[28]_inst 
       (.I(result_OBUF[28]),
        .O(result[28]));
  OBUF \result_OBUF[29]_inst 
       (.I(result_OBUF[29]),
        .O(result[29]));
  OBUF \result_OBUF[2]_inst 
       (.I(result_OBUF[2]),
        .O(result[2]));
  OBUF \result_OBUF[30]_inst 
       (.I(result_OBUF[30]),
        .O(result[30]));
  OBUF \result_OBUF[31]_inst 
       (.I(result_OBUF[31]),
        .O(result[31]));
  OBUF \result_OBUF[3]_inst 
       (.I(result_OBUF[3]),
        .O(result[3]));
  OBUF \result_OBUF[4]_inst 
       (.I(result_OBUF[4]),
        .O(result[4]));
  OBUF \result_OBUF[5]_inst 
       (.I(result_OBUF[5]),
        .O(result[5]));
  OBUF \result_OBUF[6]_inst 
       (.I(result_OBUF[6]),
        .O(result[6]));
  OBUF \result_OBUF[7]_inst 
       (.I(result_OBUF[7]),
        .O(result[7]));
  OBUF \result_OBUF[8]_inst 
       (.I(result_OBUF[8]),
        .O(result[8]));
  OBUF \result_OBUF[9]_inst 
       (.I(result_OBUF[9]),
        .O(result[9]));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  ALU_1 u_ALU_1
       (.ALUSrc_in(ALUSrc_in),
        .ALUop(ALUop[2]),
        .ALUresult({ALUresult__0[29],ALUresult__0[17:16]}),
        .\ALUresult0_inferred__5/i__carry__0_0 ({u_reg_files_1_n_220,u_reg_files_1_n_221,u_reg_files_1_n_222,u_reg_files_1_n_223}),
        .\ALUresult0_inferred__5/i__carry__0_1 ({u_reg_files_1_n_216,u_reg_files_1_n_217,u_reg_files_1_n_218,u_reg_files_1_n_219}),
        .\ALUresult0_inferred__5/i__carry__1_0 ({u_reg_files_1_n_228,u_reg_files_1_n_229,u_reg_files_1_n_230,u_reg_files_1_n_231}),
        .\ALUresult0_inferred__5/i__carry__1_1 ({u_reg_files_1_n_224,u_reg_files_1_n_225,u_reg_files_1_n_226,u_reg_files_1_n_227}),
        .\ALUresult0_inferred__5/i__carry__2_0 ({u_reg_files_1_n_236,u_reg_files_1_n_237,u_reg_files_1_n_238,u_reg_files_1_n_239}),
        .\ALUresult0_inferred__5/i__carry__2_1 ({u_reg_files_1_n_232,u_reg_files_1_n_233,u_reg_files_1_n_234,u_reg_files_1_n_235}),
        .\ALUresult0_inferred__6/i__carry__0_0 ({u_reg_files_1_n_38,u_reg_files_1_n_39,u_reg_files_1_n_40,u_reg_files_1_n_41}),
        .\ALUresult0_inferred__6/i__carry__0_1 ({u_reg_files_1_n_32,u_reg_files_1_n_33,u_reg_files_1_n_34,u_reg_files_1_n_35}),
        .\ALUresult0_inferred__6/i__carry__1_0 ({u_reg_files_1_n_46,u_reg_files_1_n_47,u_reg_files_1_n_48,u_reg_files_1_n_49}),
        .\ALUresult0_inferred__6/i__carry__1_1 ({u_reg_files_1_n_42,u_reg_files_1_n_43,u_reg_files_1_n_44,u_reg_files_1_n_45}),
        .\ALUresult0_inferred__6/i__carry__2_0 ({u_reg_files_1_n_54,u_reg_files_1_n_55,u_reg_files_1_n_56,u_reg_files_1_n_57}),
        .\ALUresult0_inferred__6/i__carry__2_1 ({u_reg_files_1_n_50,u_reg_files_1_n_51,u_reg_files_1_n_52,u_reg_files_1_n_53}),
        .CO(data6),
        .D(pcSelect[31:3]),
        .DI({u_reg_files_1_n_185,u_reg_files_1_n_186,u_reg_files_1_n_187,u_reg_files_1_n_188}),
        .E(u_ALU_1_n_8),
        .JrPC(JrPC),
        .Jrn(Jrn),
        .O(data0),
        .Q(pc_plus_4),
        .S({u_reg_files_1_n_248,u_reg_files_1_n_249,u_reg_files_1_n_250,u_reg_files_1_n_251}),
        .\bbstub_douta[29] (u_ALU_1_n_53),
        .douta(instruction[31:1]),
        .i__carry__2_i_8(data7),
        .i__carry__5_i_8(data1),
        .p_0_in(p_0_in),
        .\pc[2]_i_3 (u_reg_files_1_n_91),
        .\pc[2]_i_3_0 (u_reg_files_1_n_105),
        .\pc[31]_i_10 (u_reg_files_1_n_88),
        .\pc[31]_i_15 (u_ALU_1_n_47),
        .\pc[31]_i_15_0 (u_pc_1_n_78),
        .\pc[31]_i_15_1 (u_pc_1_n_79),
        .\pc[31]_i_16 (u_reg_files_1_n_166),
        .\pc[31]_i_5 (u_ALU_1_n_6),
        .\pc[31]_i_6 (u_reg_files_1_n_83),
        .\pc[31]_i_6_0 (u_reg_files_1_n_103),
        .\pc[31]_i_7 (u_reg_files_1_n_93),
        .\pc[31]_i_7_0 (u_reg_files_1_n_92),
        .\pc[31]_i_8_0 (u_reg_files_1_n_86),
        .\pc[31]_i_8_1 (u_reg_files_1_n_94),
        .\pc_plus_4_reg[31]_i_14_0 (u_ALU_1_n_7),
        .\pc_plus_4_reg[31]_i_17 (u_reg_files_1_n_90),
        .\pc_plus_4_reg[31]_i_6 (u_reg_files_1_n_156),
        .\pc_reg[10] (u_pc_1_n_52),
        .\pc_reg[11] (u_pc_1_n_53),
        .\pc_reg[12] (u_pc_1_n_54),
        .\pc_reg[13] (u_pc_1_n_55),
        .\pc_reg[14] (u_pc_1_n_56),
        .\pc_reg[15] (u_pc_1_n_57),
        .\pc_reg[16] (u_pc_1_n_58),
        .\pc_reg[17] (u_pc_1_n_59),
        .\pc_reg[18] (u_pc_1_n_60),
        .\pc_reg[19] (u_pc_1_n_61),
        .\pc_reg[20] (u_pc_1_n_62),
        .\pc_reg[21] (u_pc_1_n_63),
        .\pc_reg[22] (u_pc_1_n_64),
        .\pc_reg[23] (u_pc_1_n_65),
        .\pc_reg[24] (u_pc_1_n_66),
        .\pc_reg[25] (u_pc_1_n_67),
        .\pc_reg[26] (u_pc_1_n_68),
        .\pc_reg[27] (u_pc_1_n_69),
        .\pc_reg[28] (u_pc_1_n_70),
        .\pc_reg[29] (u_pc_1_n_71),
        .\pc_reg[30] (u_pc_1_n_72),
        .\pc_reg[31] (u_reg_files_1_n_70),
        .\pc_reg[31]_0 (u_pc_1_n_44),
        .\pc_reg[31]_1 (JrPC__0),
        .\pc_reg[31]_2 (u_pc_1_n_73),
        .\pc_reg[3] (u_pc_1_n_97),
        .\pc_reg[3]_0 (u_reg_files_1_n_68),
        .\pc_reg[3]_1 (u_pc_1_n_43),
        .\pc_reg[4] (u_pc_1_n_46),
        .\pc_reg[5] (u_pc_1_n_47),
        .\pc_reg[6] (u_pc_1_n_48),
        .\pc_reg[7] (u_pc_1_n_49),
        .\pc_reg[8] (u_pc_1_n_50),
        .\pc_reg[9] (u_pc_1_n_51),
        .\result_OBUF[0]_inst_i_1 (u_pc_1_n_77),
        .\result_OBUF[0]_inst_i_1_0 (u_reg_files_1_n_173),
        .\result_OBUF[0]_inst_i_1_1 (u_reg_files_1_n_168),
        .\result_OBUF[0]_inst_i_1_2 (u_reg_files_1_n_169),
        .\result_OBUF[0]_inst_i_2_0 (u_reg_files_1_n_167),
        .\result_OBUF[0]_inst_i_4_0 ({u_reg_files_1_n_264,u_reg_files_1_n_265,u_reg_files_1_n_266,u_reg_files_1_n_267}),
        .\result_OBUF[0]_inst_i_6 ({u_reg_files_1_n_174,u_reg_files_1_n_175,u_reg_files_1_n_176,u_reg_files_1_n_177}),
        .\result_OBUF[0]_inst_i_6_0 ({u_reg_files_1_n_240,u_reg_files_1_n_241,u_reg_files_1_n_242,u_reg_files_1_n_243}),
        .\result_OBUF[0]_inst_i_6_1 ({u_reg_files_1_n_62,u_reg_files_1_n_63,u_reg_files_1_n_64,u_reg_files_1_n_65}),
        .\result_OBUF[0]_inst_i_6_2 ({u_reg_files_1_n_58,u_reg_files_1_n_59,u_reg_files_1_n_60,u_reg_files_1_n_61}),
        .\result_OBUF[12]_inst_i_1 (u_reg_files_1_n_87),
        .\result_OBUF[12]_inst_i_1_0 (u_reg_files_1_n_111),
        .\result_OBUF[12]_inst_i_3_0 ({u_reg_files_1_n_260,u_reg_files_1_n_261,u_reg_files_1_n_262,u_reg_files_1_n_263}),
        .\result_OBUF[12]_inst_i_3_1 ({u_reg_files_1_n_197,u_reg_files_1_n_198,u_reg_files_1_n_199,u_reg_files_1_n_200}),
        .\result_OBUF[12]_inst_i_3_2 ({u_reg_files_1_n_276,u_reg_files_1_n_277,u_reg_files_1_n_278,u_reg_files_1_n_279}),
        .\result_OBUF[13]_inst_i_1 (u_reg_files_1_n_89),
        .\result_OBUF[13]_inst_i_1_0 (u_reg_files_1_n_112),
        .\result_OBUF[13]_inst_i_2_0 (u_ALU_1_n_29),
        .\result_OBUF[14]_inst_i_1 (u_reg_files_1_n_95),
        .\result_OBUF[14]_inst_i_1_0 (u_reg_files_1_n_113),
        .\result_OBUF[15]_inst_i_1 (u_reg_files_1_n_84),
        .\result_OBUF[15]_inst_i_1_0 (u_reg_files_1_n_109),
        .\result_OBUF[16]_inst_i_3 (u_reg_files_1_n_170),
        .\result_OBUF[16]_inst_i_4_0 ({u_reg_files_1_n_308,u_reg_files_1_n_309,u_reg_files_1_n_310,u_reg_files_1_n_311}),
        .\result_OBUF[16]_inst_i_4_1 ({u_reg_files_1_n_201,u_reg_files_1_n_202,u_reg_files_1_n_203,u_reg_files_1_n_204}),
        .\result_OBUF[16]_inst_i_4_2 ({u_reg_files_1_n_280,u_reg_files_1_n_281,u_reg_files_1_n_282,u_reg_files_1_n_283}),
        .\result_OBUF[17]_inst_i_2 (u_pc_1_n_74),
        .\result_OBUF[17]_inst_i_2_0 (u_reg_files_1_n_171),
        .\result_OBUF[18]_inst_i_1 (u_pc_1_n_87),
        .\result_OBUF[18]_inst_i_1_0 (u_reg_files_1_n_172),
        .\result_OBUF[18]_inst_i_1_1 (u_reg_files_1_n_158),
        .\result_OBUF[19]_inst_i_2 (u_reg_files_1_n_165),
        .\result_OBUF[1]_inst_i_1 (u_reg_files_1_n_102),
        .\result_OBUF[1]_inst_i_1_0 (u_reg_files_1_n_120),
        .\result_OBUF[20]_inst_i_3 (u_reg_files_1_n_164),
        .\result_OBUF[20]_inst_i_4_0 ({u_reg_files_1_n_304,u_reg_files_1_n_305,u_reg_files_1_n_306,u_reg_files_1_n_307}),
        .\result_OBUF[20]_inst_i_4_1 ({u_reg_files_1_n_205,u_reg_files_1_n_206,u_reg_files_1_n_207,u_reg_files_1_n_208}),
        .\result_OBUF[20]_inst_i_4_2 ({u_reg_files_1_n_284,u_reg_files_1_n_285,u_reg_files_1_n_286,u_reg_files_1_n_287}),
        .\result_OBUF[21]_inst_i_2 (u_reg_files_1_n_159),
        .\result_OBUF[22]_inst_i_2 (u_reg_files_1_n_160),
        .\result_OBUF[23]_inst_i_2 (u_reg_files_1_n_161),
        .\result_OBUF[24]_inst_i_3 (u_reg_files_1_n_163),
        .\result_OBUF[24]_inst_i_4_0 ({u_reg_files_1_n_300,u_reg_files_1_n_301,u_reg_files_1_n_302,u_reg_files_1_n_303}),
        .\result_OBUF[24]_inst_i_4_1 ({u_reg_files_1_n_209,u_reg_files_1_n_210,u_reg_files_1_n_211,u_reg_files_1_n_212}),
        .\result_OBUF[24]_inst_i_4_2 ({u_reg_files_1_n_288,u_reg_files_1_n_289,u_reg_files_1_n_290,u_reg_files_1_n_291}),
        .\result_OBUF[25]_inst_i_10 (u_ALU_1_n_33),
        .\result_OBUF[25]_inst_i_10_0 (u_ALU_1_n_34),
        .\result_OBUF[25]_inst_i_10_1 (u_ALU_1_n_35),
        .\result_OBUF[25]_inst_i_10_2 (u_ALU_1_n_37),
        .\result_OBUF[25]_inst_i_10_3 (u_ALU_1_n_38),
        .\result_OBUF[25]_inst_i_10_4 (u_ALU_1_n_40),
        .\result_OBUF[25]_inst_i_10_5 (u_ALU_1_n_42),
        .\result_OBUF[25]_inst_i_10_6 (u_ALU_1_n_43),
        .\result_OBUF[25]_inst_i_10_7 (u_ALU_1_n_44),
        .\result_OBUF[25]_inst_i_10_8 (u_ALU_1_n_45),
        .\result_OBUF[25]_inst_i_10_9 (u_ALU_1_n_46),
        .\result_OBUF[25]_inst_i_2 (u_reg_files_1_n_162),
        .\result_OBUF[25]_inst_i_7 (u_ALU_1_n_31),
        .\result_OBUF[25]_inst_i_7_0 (u_ALU_1_n_48),
        .\result_OBUF[25]_inst_i_7_1 (u_ALU_1_n_50),
        .\result_OBUF[25]_inst_i_7_2 (u_ALU_1_n_51),
        .\result_OBUF[28]_inst_i_1 (u_pc_1_n_85),
        .\result_OBUF[28]_inst_i_1_0 (u_reg_files_1_n_157),
        .\result_OBUF[28]_inst_i_1_1 (u_reg_files_1_n_180),
        .\result_OBUF[28]_inst_i_1_2 (u_reg_files_1_n_181),
        .\result_OBUF[28]_inst_i_3_0 (u_ALU_1_n_39),
        .\result_OBUF[28]_inst_i_3_1 (u_reg_files_1_n_297),
        .\result_OBUF[28]_inst_i_4_0 ({u_reg_files_1_n_292,u_reg_files_1_n_293,u_reg_files_1_n_294,u_reg_files_1_n_295}),
        .\result_OBUF[28]_inst_i_4_1 ({u_reg_files_1_n_213,u_reg_files_1_n_214,u_reg_files_1_n_215}),
        .\result_OBUF[28]_inst_i_4_2 ({u_reg_files_1_n_244,u_reg_files_1_n_245,u_reg_files_1_n_246,u_reg_files_1_n_247}),
        .\result_OBUF[29]_inst_i_2 (u_ALU_1_n_36),
        .\result_OBUF[29]_inst_i_2_0 (u_reg_files_1_n_296),
        .\result_OBUF[30]_inst_i_1 (u_reg_files_1_n_122),
        .\result_OBUF[30]_inst_i_1_0 (u_reg_files_1_n_178),
        .\result_OBUF[30]_inst_i_1_1 (u_reg_files_1_n_182),
        .\result_OBUF[30]_inst_i_2_0 (u_reg_files_1_n_299),
        .\result_OBUF[31]_inst_i_1 (u_reg_files_1_n_155),
        .\result_OBUF[31]_inst_i_11 ({ALUresult__0[31:30],ALUresult__0[28],ALUresult__0[18],ALUresult__0[15:12],ALUresult__0[1:0]}),
        .\result_OBUF[31]_inst_i_1_0 (u_reg_files_1_n_179),
        .\result_OBUF[31]_inst_i_5_0 (u_ALU_1_n_32),
        .\result_OBUF[31]_inst_i_5_1 (u_reg_files_1_n_298),
        .rst_n(u_ALU_1_n_54),
        .rst_n_IBUF(rst_n_IBUF),
        .u_data_ram(u_pc_1_n_76),
        .u_data_ram_0(u_pc_1_n_75),
        .u_data_ram_1(u_reg_files_1_n_85),
        .u_data_ram_10(u_reg_files_1_n_117),
        .u_data_ram_11(u_reg_files_1_n_100),
        .u_data_ram_12(u_reg_files_1_n_118),
        .u_data_ram_13(u_reg_files_1_n_101),
        .u_data_ram_14(u_reg_files_1_n_119),
        .u_data_ram_15(u_reg_files_1_n_107),
        .u_data_ram_16(u_reg_files_1_n_106),
        .u_data_ram_17(u_reg_files_1_n_108),
        .u_data_ram_18(u_reg_files_1_n_121),
        .u_data_ram_2(u_reg_files_1_n_110),
        .u_data_ram_3(u_reg_files_1_n_96),
        .u_data_ram_4(u_reg_files_1_n_114),
        .u_data_ram_5(u_reg_files_1_n_97),
        .u_data_ram_6(u_reg_files_1_n_115),
        .u_data_ram_7(u_reg_files_1_n_98),
        .u_data_ram_8(u_reg_files_1_n_116),
        .u_data_ram_9(u_reg_files_1_n_99),
        .u_data_ram_i_2_0(u_ALU_1_n_9),
        .u_data_ram_i_44(u_ALU_1_n_41),
        .u_data_ram_i_45(u_ALU_1_n_49),
        .u_data_ram_i_47(ALUresult[11:3]),
        .u_data_ram_i_5_0({u_reg_files_1_n_256,u_reg_files_1_n_257,u_reg_files_1_n_258,u_reg_files_1_n_259}),
        .u_data_ram_i_5_1({u_reg_files_1_n_193,u_reg_files_1_n_194,u_reg_files_1_n_195,u_reg_files_1_n_196}),
        .u_data_ram_i_5_2({u_reg_files_1_n_272,u_reg_files_1_n_273,u_reg_files_1_n_274,u_reg_files_1_n_275}),
        .u_data_ram_i_6_0(u_ALU_1_n_30),
        .u_data_ram_i_9_0({u_reg_files_1_n_252,u_reg_files_1_n_253,u_reg_files_1_n_254,u_reg_files_1_n_255}),
        .u_data_ram_i_9_1({u_reg_files_1_n_189,u_reg_files_1_n_190,u_reg_files_1_n_191,u_reg_files_1_n_192}),
        .u_data_ram_i_9_2({u_reg_files_1_n_268,u_reg_files_1_n_269,u_reg_files_1_n_270,u_reg_files_1_n_271}));
  (* IMPORTED_FROM = "d:/myCollege/ComputerSystem/NSCSCC/NSCSCC/NSCSCC/PersonalProgress/HaitianJiang/SingleMiniSys/mycpu_design/mycpu_design.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.1" *) 
  blk_mem_gen_0 u_blk_mem_gen_0
       (.addra(pcOld),
        .clka(clk_IBUF),
        .douta(instruction));
  (* IMPORTED_FROM = "d:/myCollege/ComputerSystem/NSCSCC/NSCSCC/NSCSCC/PersonalProgress/HaitianJiang/SingleMiniSys/mycpu_design/mycpu_design.srcs/sources_1/ip/cpu_clk/cpu_clk.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  cpu_clk u_cpu_clk
       (.clk_in1(clk_IBUF),
        .clk_out1(clk_div));
  (* IMPORTED_FROM = "d:/myCollege/ComputerSystem/NSCSCC/NSCSCC/NSCSCC/PersonalProgress/HaitianJiang/SingleMiniSys/mycpu_design/mycpu_design.srcs/sources_1/ip/data_ram/data_ram.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.1" *) 
  data_ram u_data_ram
       (.addra(ALUresult),
        .clka(clk_IBUF),
        .dina(B),
        .douta(memData),
        .wea(MemWrite));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    u_data_ram_i_1
       (.I0(instruction[27]),
        .I1(instruction[26]),
        .I2(instruction[29]),
        .I3(instruction[30]),
        .I4(instruction[28]),
        .I5(instruction[31]),
        .O(MemWrite));
  pc_1 u_pc_1
       (.A0(A0),
        .ALUresult({ALUresult__0[31:12],ALUresult__0[1:0]}),
        .D(pcSelect),
        .E(u_ALU_1_n_8),
        .Jrn(Jrn),
        .O(u_pc_1_n_0),
        .Q(pcOld),
        .Sftmd(Sftmd),
        .\bbstub_douta[0] (u_pc_1_n_98),
        .\bbstub_douta[10] (u_pc_1_n_86),
        .\bbstub_douta[12] (u_pc_1_n_89),
        .\bbstub_douta[26] (u_pc_1_n_99),
        .\bbstub_douta[27] (u_pc_1_n_97),
        .\bbstub_douta[30] (u_pc_1_n_44),
        .\bbstub_douta[30]_0 (u_pc_1_n_92),
        .\bbstub_douta[31] (ALUop),
        .\bbstub_douta[4] (u_pc_1_n_93),
        .\bbstub_douta[5] (u_pc_1_n_96),
        .\bbstub_douta[9] (u_pc_1_n_88),
        .clk_out1(clk_div),
        .douta(memData),
        .p_0_in(p_0_in),
        .pcSelect0_carry__6_0(u_ALU_1_n_53),
        .\pc_reg[12]_0 (u_pc_1_n_51),
        .\pc_reg[12]_1 (u_pc_1_n_52),
        .\pc_reg[12]_2 (u_pc_1_n_53),
        .\pc_reg[12]_3 (u_pc_1_n_54),
        .\pc_reg[16]_0 (u_pc_1_n_55),
        .\pc_reg[16]_1 (u_pc_1_n_56),
        .\pc_reg[16]_2 (u_pc_1_n_57),
        .\pc_reg[16]_3 (u_pc_1_n_58),
        .\pc_reg[1]_0 ({instruction[31:26],instruction[20:0]}),
        .\pc_reg[1]_1 (u_ALU_1_n_54),
        .\pc_reg[1]_2 (u_ALU_1_n_6),
        .\pc_reg[20]_0 (u_pc_1_n_59),
        .\pc_reg[20]_1 (u_pc_1_n_60),
        .\pc_reg[20]_2 (u_pc_1_n_61),
        .\pc_reg[20]_3 (u_pc_1_n_62),
        .\pc_reg[24]_0 (u_pc_1_n_63),
        .\pc_reg[24]_1 (u_pc_1_n_64),
        .\pc_reg[24]_2 (u_pc_1_n_65),
        .\pc_reg[24]_3 (u_pc_1_n_66),
        .\pc_reg[28]_0 (u_pc_1_n_67),
        .\pc_reg[28]_1 (u_pc_1_n_68),
        .\pc_reg[28]_2 (u_pc_1_n_69),
        .\pc_reg[28]_3 (u_pc_1_n_70),
        .\pc_reg[2]_0 (u_pc_1_n_43),
        .\pc_reg[2]_1 (u_pc_1_n_46),
        .\pc_reg[31]_0 (u_pc_1_n_71),
        .\pc_reg[31]_1 (u_pc_1_n_72),
        .\pc_reg[31]_2 (u_pc_1_n_73),
        .\pc_reg[31]_3 (pc_plus_4),
        .\pc_reg[8]_0 (u_pc_1_n_47),
        .\pc_reg[8]_1 (u_pc_1_n_48),
        .\pc_reg[8]_2 (u_pc_1_n_49),
        .\pc_reg[8]_3 (u_pc_1_n_50),
        .\result[0] (u_reg_files_1_n_67),
        .\result[0]_0 (u_reg_files_1_n_66),
        .\result[0]_1 (u_reg_files_1_n_184),
        .\result[11] (ALUresult),
        .\result_OBUF[0]_inst_i_3_0 (u_pc_1_n_80),
        .rst_n(u_pc_1_n_95),
        .rst_n_IBUF(rst_n_IBUF),
        .u_data_ram_i_44_0(u_pc_1_n_74),
        .u_data_ram_i_44_1(u_pc_1_n_77),
        .u_data_ram_i_44_2(u_pc_1_n_78),
        .u_data_ram_i_44_3(u_pc_1_n_84),
        .u_data_ram_i_45_0(u_pc_1_n_79),
        .u_data_ram_i_70_0(u_pc_1_n_85),
        .u_data_ram_i_70_1(u_pc_1_n_87),
        .u_data_ram_i_70_2(u_pc_1_n_90),
        .u_data_ram_i_71_0(u_pc_1_n_75),
        .u_data_ram_i_71_1(u_pc_1_n_76),
        .writeData(result_OBUF),
        .zero_in(zero_in));
  reg_files_1 u_reg_files_1
       (.A0(A0),
        .ALUSrc_in(ALUSrc_in),
        .ALUresult({ALUresult__0[29],ALUresult__0[27:19],ALUresult__0[17:16]}),
        .ALUresult0_carry__3(u_pc_1_n_95),
        .ALUresult0_carry__3_0(u_ALU_1_n_53),
        .B(B),
        .CO(data6),
        .D(pcSelect[2]),
        .DI({u_reg_files_1_n_185,u_reg_files_1_n_186,u_reg_files_1_n_187,u_reg_files_1_n_188}),
        .JrPC(JrPC),
        .Jrn(Jrn),
        .O(u_pc_1_n_0),
        .S({u_reg_files_1_n_248,u_reg_files_1_n_249,u_reg_files_1_n_250,u_reg_files_1_n_251}),
        .Sftmd(Sftmd),
        .\bbstub_douta[11] ({u_reg_files_1_n_256,u_reg_files_1_n_257,u_reg_files_1_n_258,u_reg_files_1_n_259}),
        .\bbstub_douta[15] ({u_reg_files_1_n_260,u_reg_files_1_n_261,u_reg_files_1_n_262,u_reg_files_1_n_263}),
        .\bbstub_douta[27] (u_reg_files_1_n_66),
        .\bbstub_douta[27]_0 (u_reg_files_1_n_184),
        .\bbstub_douta[29] (u_reg_files_1_n_67),
        .\bbstub_douta[31] (u_reg_files_1_n_68),
        .\bbstub_douta[7] ({u_reg_files_1_n_252,u_reg_files_1_n_253,u_reg_files_1_n_254,u_reg_files_1_n_255}),
        .clk_out1(clk_div),
        .douta(instruction),
        .i__carry__0_i_10_0({u_reg_files_1_n_46,u_reg_files_1_n_47,u_reg_files_1_n_48,u_reg_files_1_n_49}),
        .i__carry__0_i_10_1({u_reg_files_1_n_228,u_reg_files_1_n_229,u_reg_files_1_n_230,u_reg_files_1_n_231}),
        .i__carry__1_i_10_0({u_reg_files_1_n_54,u_reg_files_1_n_55,u_reg_files_1_n_56,u_reg_files_1_n_57}),
        .i__carry__1_i_10_1({u_reg_files_1_n_236,u_reg_files_1_n_237,u_reg_files_1_n_238,u_reg_files_1_n_239}),
        .i__carry_i_10_0({u_reg_files_1_n_38,u_reg_files_1_n_39,u_reg_files_1_n_40,u_reg_files_1_n_41}),
        .i__carry_i_10_1({u_reg_files_1_n_220,u_reg_files_1_n_221,u_reg_files_1_n_222,u_reg_files_1_n_223}),
        .\pc[1]_i_2 ({u_reg_files_1_n_62,u_reg_files_1_n_63,u_reg_files_1_n_64,u_reg_files_1_n_65}),
        .\pc[1]_i_2_0 ({u_reg_files_1_n_174,u_reg_files_1_n_175,u_reg_files_1_n_176,u_reg_files_1_n_177}),
        .\pc[31]_i_10_0 (u_ALU_1_n_44),
        .\pc[31]_i_12 (u_pc_1_n_77),
        .\pc[31]_i_12_0 (u_ALU_1_n_41),
        .\pc[31]_i_12_1 (u_pc_1_n_86),
        .\pc[31]_i_12_2 (u_pc_1_n_88),
        .\pc[31]_i_13_0 (u_pc_1_n_87),
        .\pc[31]_i_24 (u_reg_files_1_n_83),
        .\pc[31]_i_2_0 (u_reg_files_1_n_298),
        .\pc[31]_i_32_0 (u_pc_1_n_76),
        .\pc[31]_i_32_1 (u_pc_1_n_80),
        .\pc[31]_i_33 (u_reg_files_1_n_103),
        .\pc[31]_i_37 (u_reg_files_1_n_93),
        .\pc[31]_i_38 (u_reg_files_1_n_92),
        .\pc[31]_i_4 (u_ALU_1_n_9),
        .\pc[31]_i_4_0 (u_ALU_1_n_30),
        .\pc[31]_i_4_1 (u_ALU_1_n_47),
        .\pc[31]_i_6_0 ({ALUresult__0[28],ALUresult__0[18],ALUresult__0[15:14]}),
        .\pc[31]_i_6_1 (u_ALU_1_n_31),
        .\pc[31]_i_6_2 (u_ALU_1_n_36),
        .\pc[31]_i_8 (u_ALU_1_n_48),
        .\pc[31]_i_9 (u_ALU_1_n_51),
        .\pc_plus_4_reg[31]_i_10 (u_ALU_1_n_45),
        .\pc_plus_4_reg[31]_i_10_0 (u_ALU_1_n_46),
        .\pc_plus_4_reg[31]_i_18 (u_reg_files_1_n_70),
        .\pc_plus_4_reg[31]_i_20 (u_reg_files_1_n_105),
        .\pc_plus_4_reg[31]_i_3 (u_ALU_1_n_39),
        .\pc_plus_4_reg[31]_i_5 (u_ALU_1_n_50),
        .\pc_plus_4_reg[31]_i_6_0 (u_ALU_1_n_32),
        .\pc_plus_4_reg[31]_i_6_1 (u_ALU_1_n_38),
        .\pc_reg[2] (p_0_in),
        .\pc_reg[2]_0 (u_ALU_1_n_54),
        .\pc_reg[2]_1 (u_pc_1_n_44),
        .\pc_reg[2]_2 (u_ALU_1_n_29),
        .\pc_reg[2]_3 (u_ALU_1_n_7),
        .register_reg_r1_0_31_12_17_0({u_reg_files_1_n_42,u_reg_files_1_n_43,u_reg_files_1_n_44,u_reg_files_1_n_45}),
        .register_reg_r1_0_31_12_17_1({u_reg_files_1_n_197,u_reg_files_1_n_198,u_reg_files_1_n_199,u_reg_files_1_n_200}),
        .register_reg_r1_0_31_12_17_2({u_reg_files_1_n_224,u_reg_files_1_n_225,u_reg_files_1_n_226,u_reg_files_1_n_227}),
        .register_reg_r1_0_31_18_23_0({u_reg_files_1_n_50,u_reg_files_1_n_51,u_reg_files_1_n_52,u_reg_files_1_n_53}),
        .register_reg_r1_0_31_18_23_1({u_reg_files_1_n_201,u_reg_files_1_n_202,u_reg_files_1_n_203,u_reg_files_1_n_204}),
        .register_reg_r1_0_31_18_23_2({u_reg_files_1_n_205,u_reg_files_1_n_206,u_reg_files_1_n_207,u_reg_files_1_n_208}),
        .register_reg_r1_0_31_18_23_3({u_reg_files_1_n_232,u_reg_files_1_n_233,u_reg_files_1_n_234,u_reg_files_1_n_235}),
        .register_reg_r1_0_31_24_29_0({u_reg_files_1_n_209,u_reg_files_1_n_210,u_reg_files_1_n_211,u_reg_files_1_n_212}),
        .register_reg_r1_0_31_30_31_0({u_reg_files_1_n_58,u_reg_files_1_n_59,u_reg_files_1_n_60,u_reg_files_1_n_61}),
        .register_reg_r1_0_31_30_31_1(JrPC__0),
        .register_reg_r1_0_31_30_31_2({u_reg_files_1_n_213,u_reg_files_1_n_214,u_reg_files_1_n_215}),
        .register_reg_r1_0_31_30_31_3({u_reg_files_1_n_240,u_reg_files_1_n_241,u_reg_files_1_n_242,u_reg_files_1_n_243}),
        .register_reg_r1_0_31_6_11_0({u_reg_files_1_n_32,u_reg_files_1_n_33,u_reg_files_1_n_34,u_reg_files_1_n_35}),
        .register_reg_r1_0_31_6_11_1({u_reg_files_1_n_189,u_reg_files_1_n_190,u_reg_files_1_n_191,u_reg_files_1_n_192}),
        .register_reg_r1_0_31_6_11_2({u_reg_files_1_n_193,u_reg_files_1_n_194,u_reg_files_1_n_195,u_reg_files_1_n_196}),
        .register_reg_r1_0_31_6_11_3({u_reg_files_1_n_216,u_reg_files_1_n_217,u_reg_files_1_n_218,u_reg_files_1_n_219}),
        .\result_OBUF[0]_inst_i_13_0 (u_reg_files_1_n_169),
        .\result_OBUF[0]_inst_i_13_1 (u_reg_files_1_n_173),
        .\result_OBUF[0]_inst_i_2 (data7),
        .\result_OBUF[12]_inst_i_6_0 (u_reg_files_1_n_87),
        .\result_OBUF[13]_inst_i_5_0 (u_reg_files_1_n_89),
        .\result_OBUF[14]_inst_i_5_0 (u_reg_files_1_n_95),
        .\result_OBUF[15]_inst_i_5_0 (u_reg_files_1_n_84),
        .\result_OBUF[17]_inst_i_2_0 (u_pc_1_n_85),
        .\result_OBUF[17]_inst_i_2_1 (u_pc_1_n_90),
        .\result_OBUF[19]_inst_i_1 (u_ALU_1_n_43),
        .\result_OBUF[1]_inst_i_5_0 (u_reg_files_1_n_102),
        .\result_OBUF[1]_inst_i_7_0 (u_reg_files_1_n_120),
        .\result_OBUF[20]_inst_i_1 (u_ALU_1_n_42),
        .\result_OBUF[20]_inst_i_3_0 (u_reg_files_1_n_91),
        .\result_OBUF[21]_inst_i_1 (u_ALU_1_n_33),
        .\result_OBUF[22]_inst_i_1 (u_ALU_1_n_34),
        .\result_OBUF[23]_inst_i_1 (u_ALU_1_n_35),
        .\result_OBUF[24]_inst_i_1 (u_ALU_1_n_40),
        .\result_OBUF[25]_inst_i_1 (u_ALU_1_n_37),
        .\result_OBUF[25]_inst_i_4 (u_reg_files_1_n_155),
        .\result_OBUF[27]_inst_i_1 (data0),
        .\result_OBUF[27]_inst_i_1_0 (data1),
        .\result_OBUF[28]_inst_i_11 (u_reg_files_1_n_157),
        .\result_OBUF[28]_inst_i_3 (u_pc_1_n_89),
        .\result_OBUF[30]_inst_i_3 (ALUop[1:0]),
        .\result_OBUF[31]_inst_i_10 (u_reg_files_1_n_156),
        .\result_OBUF[31]_inst_i_14_0 (u_pc_1_n_92),
        .\result_OBUF[31]_inst_i_14_1 (u_pc_1_n_99),
        .\result_OBUF[31]_inst_i_14_2 (u_pc_1_n_93),
        .\result_OBUF[31]_inst_i_16_0 (u_reg_files_1_n_179),
        .rst_n_IBUF(rst_n_IBUF),
        .u_data_ram(u_pc_1_n_75),
        .u_data_ram_0(u_ALU_1_n_49),
        .u_data_ram_i_102_0(u_reg_files_1_n_108),
        .u_data_ram_i_106_0(u_reg_files_1_n_96),
        .u_data_ram_i_111_0(u_reg_files_1_n_114),
        .u_data_ram_i_116_0(u_reg_files_1_n_158),
        .u_data_ram_i_170_0(u_pc_1_n_98),
        .u_data_ram_i_170_1(u_pc_1_n_96),
        .u_data_ram_i_45(u_reg_files_1_n_86),
        .u_data_ram_i_45_0(u_reg_files_1_n_88),
        .u_data_ram_i_45_1(u_reg_files_1_n_94),
        .u_data_ram_i_68(ALUresult[2]),
        .u_data_ram_i_69({u_reg_files_1_n_244,u_reg_files_1_n_245,u_reg_files_1_n_246,u_reg_files_1_n_247}),
        .u_data_ram_i_69_0({u_reg_files_1_n_264,u_reg_files_1_n_265,u_reg_files_1_n_266,u_reg_files_1_n_267}),
        .u_data_ram_i_69_1({u_reg_files_1_n_268,u_reg_files_1_n_269,u_reg_files_1_n_270,u_reg_files_1_n_271}),
        .u_data_ram_i_69_10({u_reg_files_1_n_308,u_reg_files_1_n_309,u_reg_files_1_n_310,u_reg_files_1_n_311}),
        .u_data_ram_i_69_2({u_reg_files_1_n_272,u_reg_files_1_n_273,u_reg_files_1_n_274,u_reg_files_1_n_275}),
        .u_data_ram_i_69_3({u_reg_files_1_n_276,u_reg_files_1_n_277,u_reg_files_1_n_278,u_reg_files_1_n_279}),
        .u_data_ram_i_69_4({u_reg_files_1_n_280,u_reg_files_1_n_281,u_reg_files_1_n_282,u_reg_files_1_n_283}),
        .u_data_ram_i_69_5({u_reg_files_1_n_284,u_reg_files_1_n_285,u_reg_files_1_n_286,u_reg_files_1_n_287}),
        .u_data_ram_i_69_6({u_reg_files_1_n_288,u_reg_files_1_n_289,u_reg_files_1_n_290,u_reg_files_1_n_291}),
        .u_data_ram_i_69_7({u_reg_files_1_n_292,u_reg_files_1_n_293,u_reg_files_1_n_294,u_reg_files_1_n_295}),
        .u_data_ram_i_69_8({u_reg_files_1_n_300,u_reg_files_1_n_301,u_reg_files_1_n_302,u_reg_files_1_n_303}),
        .u_data_ram_i_69_9({u_reg_files_1_n_304,u_reg_files_1_n_305,u_reg_files_1_n_306,u_reg_files_1_n_307}),
        .u_data_ram_i_72(u_reg_files_1_n_90),
        .u_data_ram_i_72_0(u_reg_files_1_n_159),
        .u_data_ram_i_72_1(u_reg_files_1_n_160),
        .u_data_ram_i_72_10(u_reg_files_1_n_171),
        .u_data_ram_i_72_11(u_reg_files_1_n_178),
        .u_data_ram_i_72_12(u_reg_files_1_n_180),
        .u_data_ram_i_72_13(u_reg_files_1_n_181),
        .u_data_ram_i_72_14(u_reg_files_1_n_182),
        .u_data_ram_i_72_15(u_reg_files_1_n_296),
        .u_data_ram_i_72_16(u_reg_files_1_n_297),
        .u_data_ram_i_72_17(u_reg_files_1_n_299),
        .u_data_ram_i_72_2(u_reg_files_1_n_161),
        .u_data_ram_i_72_3(u_reg_files_1_n_162),
        .u_data_ram_i_72_4(u_reg_files_1_n_163),
        .u_data_ram_i_72_5(u_reg_files_1_n_164),
        .u_data_ram_i_72_6(u_reg_files_1_n_165),
        .u_data_ram_i_72_7(u_reg_files_1_n_166),
        .u_data_ram_i_72_8(u_reg_files_1_n_167),
        .u_data_ram_i_72_9(u_reg_files_1_n_170),
        .u_data_ram_i_73_0(u_reg_files_1_n_99),
        .u_data_ram_i_77_0(u_reg_files_1_n_106),
        .u_data_ram_i_77_1(u_reg_files_1_n_109),
        .u_data_ram_i_77_10(u_reg_files_1_n_119),
        .u_data_ram_i_77_11(u_reg_files_1_n_121),
        .u_data_ram_i_77_12(u_reg_files_1_n_122),
        .u_data_ram_i_77_13(u_reg_files_1_n_168),
        .u_data_ram_i_77_14(u_reg_files_1_n_172),
        .u_data_ram_i_77_2(u_reg_files_1_n_110),
        .u_data_ram_i_77_3(u_reg_files_1_n_111),
        .u_data_ram_i_77_4(u_reg_files_1_n_112),
        .u_data_ram_i_77_5(u_reg_files_1_n_113),
        .u_data_ram_i_77_6(u_reg_files_1_n_115),
        .u_data_ram_i_77_7(u_reg_files_1_n_116),
        .u_data_ram_i_77_8(u_reg_files_1_n_117),
        .u_data_ram_i_77_9(u_reg_files_1_n_118),
        .u_data_ram_i_78_0(u_reg_files_1_n_98),
        .u_data_ram_i_82_0(u_reg_files_1_n_85),
        .u_data_ram_i_86_0(u_reg_files_1_n_100),
        .u_data_ram_i_9(u_pc_1_n_84),
        .u_data_ram_i_90_0(u_reg_files_1_n_107),
        .u_data_ram_i_94_0(u_reg_files_1_n_97),
        .u_data_ram_i_98_0(u_reg_files_1_n_101),
        .writeData(result_OBUF),
        .zero_in(zero_in));
endmodule

module pc_1
   (O,
    writeData,
    Q,
    \pc_reg[2]_0 ,
    \bbstub_douta[30] ,
    p_0_in,
    \pc_reg[2]_1 ,
    \pc_reg[8]_0 ,
    \pc_reg[8]_1 ,
    \pc_reg[8]_2 ,
    \pc_reg[8]_3 ,
    \pc_reg[12]_0 ,
    \pc_reg[12]_1 ,
    \pc_reg[12]_2 ,
    \pc_reg[12]_3 ,
    \pc_reg[16]_0 ,
    \pc_reg[16]_1 ,
    \pc_reg[16]_2 ,
    \pc_reg[16]_3 ,
    \pc_reg[20]_0 ,
    \pc_reg[20]_1 ,
    \pc_reg[20]_2 ,
    \pc_reg[20]_3 ,
    \pc_reg[24]_0 ,
    \pc_reg[24]_1 ,
    \pc_reg[24]_2 ,
    \pc_reg[24]_3 ,
    \pc_reg[28]_0 ,
    \pc_reg[28]_1 ,
    \pc_reg[28]_2 ,
    \pc_reg[28]_3 ,
    \pc_reg[31]_0 ,
    \pc_reg[31]_1 ,
    \pc_reg[31]_2 ,
    u_data_ram_i_44_0,
    u_data_ram_i_71_0,
    u_data_ram_i_71_1,
    u_data_ram_i_44_1,
    u_data_ram_i_44_2,
    u_data_ram_i_45_0,
    \result_OBUF[0]_inst_i_3_0 ,
    \bbstub_douta[31] ,
    u_data_ram_i_44_3,
    u_data_ram_i_70_0,
    \bbstub_douta[10] ,
    u_data_ram_i_70_1,
    \bbstub_douta[9] ,
    \bbstub_douta[12] ,
    u_data_ram_i_70_2,
    Sftmd,
    \bbstub_douta[30]_0 ,
    \bbstub_douta[4] ,
    Jrn,
    rst_n,
    \bbstub_douta[5] ,
    \bbstub_douta[27] ,
    \bbstub_douta[0] ,
    \bbstub_douta[26] ,
    \pc_reg[31]_3 ,
    \result[0] ,
    \result[0]_0 ,
    douta,
    ALUresult,
    \result[0]_1 ,
    \result[11] ,
    zero_in,
    \pc_reg[1]_0 ,
    rst_n_IBUF,
    pcSelect0_carry__6_0,
    D,
    \pc_reg[1]_1 ,
    A0,
    \pc_reg[1]_2 ,
    E,
    clk_out1);
  output [0:0]O;
  output [31:0]writeData;
  output [9:0]Q;
  output \pc_reg[2]_0 ;
  output \bbstub_douta[30] ;
  output [0:0]p_0_in;
  output \pc_reg[2]_1 ;
  output \pc_reg[8]_0 ;
  output \pc_reg[8]_1 ;
  output \pc_reg[8]_2 ;
  output \pc_reg[8]_3 ;
  output \pc_reg[12]_0 ;
  output \pc_reg[12]_1 ;
  output \pc_reg[12]_2 ;
  output \pc_reg[12]_3 ;
  output \pc_reg[16]_0 ;
  output \pc_reg[16]_1 ;
  output \pc_reg[16]_2 ;
  output \pc_reg[16]_3 ;
  output \pc_reg[20]_0 ;
  output \pc_reg[20]_1 ;
  output \pc_reg[20]_2 ;
  output \pc_reg[20]_3 ;
  output \pc_reg[24]_0 ;
  output \pc_reg[24]_1 ;
  output \pc_reg[24]_2 ;
  output \pc_reg[24]_3 ;
  output \pc_reg[28]_0 ;
  output \pc_reg[28]_1 ;
  output \pc_reg[28]_2 ;
  output \pc_reg[28]_3 ;
  output \pc_reg[31]_0 ;
  output \pc_reg[31]_1 ;
  output \pc_reg[31]_2 ;
  output u_data_ram_i_44_0;
  output u_data_ram_i_71_0;
  output u_data_ram_i_71_1;
  output u_data_ram_i_44_1;
  output u_data_ram_i_44_2;
  output u_data_ram_i_45_0;
  output \result_OBUF[0]_inst_i_3_0 ;
  output [2:0]\bbstub_douta[31] ;
  output u_data_ram_i_44_3;
  output u_data_ram_i_70_0;
  output \bbstub_douta[10] ;
  output u_data_ram_i_70_1;
  output \bbstub_douta[9] ;
  output \bbstub_douta[12] ;
  output u_data_ram_i_70_2;
  output Sftmd;
  output \bbstub_douta[30]_0 ;
  output \bbstub_douta[4] ;
  output Jrn;
  output rst_n;
  output \bbstub_douta[5] ;
  output \bbstub_douta[27] ;
  output \bbstub_douta[0] ;
  output \bbstub_douta[26] ;
  output [3:0]\pc_reg[31]_3 ;
  input \result[0] ;
  input \result[0]_0 ;
  input [31:0]douta;
  input [21:0]ALUresult;
  input \result[0]_1 ;
  input [9:0]\result[11] ;
  input zero_in;
  input [26:0]\pc_reg[1]_0 ;
  input rst_n_IBUF;
  input pcSelect0_carry__6_0;
  input [29:0]D;
  input \pc_reg[1]_1 ;
  input [1:0]A0;
  input \pc_reg[1]_2 ;
  input [0:0]E;
  input clk_out1;

  wire [1:0]A0;
  wire [3:3]ALUop;
  wire [31:1]ALUorMemData0;
  wire [21:0]ALUresult;
  wire [29:0]D;
  wire [0:0]E;
  wire Jrn;
  wire [0:0]O;
  wire [9:0]Q;
  wire Sftmd;
  wire \bbstub_douta[0] ;
  wire \bbstub_douta[10] ;
  wire \bbstub_douta[12] ;
  wire \bbstub_douta[26] ;
  wire \bbstub_douta[27] ;
  wire \bbstub_douta[30] ;
  wire \bbstub_douta[30]_0 ;
  wire [2:0]\bbstub_douta[31] ;
  wire \bbstub_douta[4] ;
  wire \bbstub_douta[5] ;
  wire \bbstub_douta[9] ;
  wire clk_out1;
  wire [31:2]data2;
  wire [31:0]douta;
  wire [0:0]p_0_in;
  wire [31:0]pcOld;
  wire [1:0]pcSelect;
  wire pcSelect0_carry__0_i_1_n_0;
  wire pcSelect0_carry__0_i_1_n_4;
  wire pcSelect0_carry__0_i_1_n_5;
  wire pcSelect0_carry__0_i_1_n_6;
  wire pcSelect0_carry__0_i_1_n_7;
  wire pcSelect0_carry__0_i_2_n_0;
  wire pcSelect0_carry__0_i_3_n_0;
  wire pcSelect0_carry__0_i_4_n_0;
  wire pcSelect0_carry__0_i_5_n_0;
  wire pcSelect0_carry__0_n_0;
  wire pcSelect0_carry__1_i_1_n_0;
  wire pcSelect0_carry__1_i_1_n_4;
  wire pcSelect0_carry__1_i_1_n_5;
  wire pcSelect0_carry__1_i_1_n_6;
  wire pcSelect0_carry__1_i_1_n_7;
  wire pcSelect0_carry__1_i_2_n_0;
  wire pcSelect0_carry__1_i_3_n_0;
  wire pcSelect0_carry__1_i_4_n_0;
  wire pcSelect0_carry__1_i_5_n_0;
  wire pcSelect0_carry__1_n_0;
  wire pcSelect0_carry__2_i_1_n_0;
  wire pcSelect0_carry__2_i_1_n_4;
  wire pcSelect0_carry__2_i_1_n_5;
  wire pcSelect0_carry__2_i_1_n_6;
  wire pcSelect0_carry__2_i_1_n_7;
  wire pcSelect0_carry__2_i_2_n_0;
  wire pcSelect0_carry__2_i_3_n_0;
  wire pcSelect0_carry__2_i_4_n_0;
  wire pcSelect0_carry__2_i_5_n_0;
  wire pcSelect0_carry__2_n_0;
  wire pcSelect0_carry__3_i_1_n_0;
  wire pcSelect0_carry__3_i_1_n_4;
  wire pcSelect0_carry__3_i_1_n_5;
  wire pcSelect0_carry__3_i_1_n_6;
  wire pcSelect0_carry__3_i_1_n_7;
  wire pcSelect0_carry__3_i_2_n_0;
  wire pcSelect0_carry__3_i_3_n_0;
  wire pcSelect0_carry__3_i_4_n_0;
  wire pcSelect0_carry__3_i_5_n_0;
  wire pcSelect0_carry__3_n_0;
  wire pcSelect0_carry__4_i_1_n_0;
  wire pcSelect0_carry__4_i_2_n_0;
  wire pcSelect0_carry__4_i_3_n_0;
  wire pcSelect0_carry__4_i_4_n_0;
  wire pcSelect0_carry__4_n_0;
  wire pcSelect0_carry__5_i_1_n_0;
  wire pcSelect0_carry__5_i_2_n_0;
  wire pcSelect0_carry__5_i_3_n_0;
  wire pcSelect0_carry__5_i_4_n_0;
  wire pcSelect0_carry__5_n_0;
  wire pcSelect0_carry__6_0;
  wire pcSelect0_carry__6_i_1_n_0;
  wire pcSelect0_carry__6_i_2_n_0;
  wire pcSelect0_carry_i_1_n_0;
  wire pcSelect0_carry_i_1_n_4;
  wire pcSelect0_carry_i_1_n_5;
  wire pcSelect0_carry_i_1_n_6;
  wire pcSelect0_carry_i_1_n_7;
  wire pcSelect0_carry_i_2_n_0;
  wire pcSelect0_carry_i_2_n_4;
  wire pcSelect0_carry_i_2_n_5;
  wire pcSelect0_carry_i_3_n_0;
  wire pcSelect0_carry_i_4_n_0;
  wire pcSelect0_carry_i_5_n_0;
  wire pcSelect0_carry_i_7_n_0;
  wire pcSelect0_carry_n_0;
  wire \pc_plus_4_reg[28]_i_1_n_0 ;
  wire \pc_plus_4_reg[28]_i_1_n_4 ;
  wire \pc_plus_4_reg[28]_i_1_n_5 ;
  wire \pc_plus_4_reg[28]_i_1_n_6 ;
  wire \pc_plus_4_reg[28]_i_1_n_7 ;
  wire \pc_plus_4_reg[31]_i_1_n_5 ;
  wire \pc_plus_4_reg[31]_i_1_n_6 ;
  wire \pc_plus_4_reg[31]_i_1_n_7 ;
  wire \pc_plus_4_reg[31]_i_8_n_0 ;
  wire \pc_reg[12]_0 ;
  wire \pc_reg[12]_1 ;
  wire \pc_reg[12]_2 ;
  wire \pc_reg[12]_3 ;
  wire \pc_reg[16]_0 ;
  wire \pc_reg[16]_1 ;
  wire \pc_reg[16]_2 ;
  wire \pc_reg[16]_3 ;
  wire [26:0]\pc_reg[1]_0 ;
  wire \pc_reg[1]_1 ;
  wire \pc_reg[1]_2 ;
  wire \pc_reg[20]_0 ;
  wire \pc_reg[20]_1 ;
  wire \pc_reg[20]_2 ;
  wire \pc_reg[20]_3 ;
  wire \pc_reg[24]_0 ;
  wire \pc_reg[24]_1 ;
  wire \pc_reg[24]_2 ;
  wire \pc_reg[24]_3 ;
  wire \pc_reg[28]_0 ;
  wire \pc_reg[28]_1 ;
  wire \pc_reg[28]_2 ;
  wire \pc_reg[28]_3 ;
  wire \pc_reg[2]_0 ;
  wire \pc_reg[2]_1 ;
  wire \pc_reg[31]_0 ;
  wire \pc_reg[31]_1 ;
  wire \pc_reg[31]_2 ;
  wire [3:0]\pc_reg[31]_3 ;
  wire \pc_reg[8]_0 ;
  wire \pc_reg[8]_1 ;
  wire \pc_reg[8]_2 ;
  wire \pc_reg[8]_3 ;
  wire \result[0] ;
  wire \result[0]_0 ;
  wire \result[0]_1 ;
  wire [9:0]\result[11] ;
  wire \result_OBUF[0]_inst_i_14_n_0 ;
  wire \result_OBUF[0]_inst_i_15_n_0 ;
  wire \result_OBUF[0]_inst_i_3_0 ;
  wire \result_OBUF[0]_inst_i_8_n_0 ;
  wire \result_OBUF[12]_inst_i_2_n_0 ;
  wire \result_OBUF[16]_inst_i_2_n_0 ;
  wire \result_OBUF[20]_inst_i_2_n_0 ;
  wire \result_OBUF[24]_inst_i_2_n_0 ;
  wire \result_OBUF[25]_inst_i_11_n_0 ;
  wire \result_OBUF[25]_inst_i_12_n_0 ;
  wire \result_OBUF[28]_inst_i_16_n_0 ;
  wire \result_OBUF[28]_inst_i_2_n_0 ;
  wire \result_OBUF[4]_inst_i_2_n_0 ;
  wire \result_OBUF[4]_inst_i_3_n_0 ;
  wire \result_OBUF[8]_inst_i_2_n_0 ;
  wire rst_n;
  wire rst_n_IBUF;
  wire u_data_ram_i_123_n_0;
  wire u_data_ram_i_124_n_0;
  wire u_data_ram_i_125_n_0;
  wire u_data_ram_i_126_n_0;
  wire u_data_ram_i_172_n_0;
  wire u_data_ram_i_173_n_0;
  wire u_data_ram_i_174_n_0;
  wire u_data_ram_i_175_n_0;
  wire u_data_ram_i_44_0;
  wire u_data_ram_i_44_1;
  wire u_data_ram_i_44_2;
  wire u_data_ram_i_44_3;
  wire u_data_ram_i_45_0;
  wire u_data_ram_i_70_0;
  wire u_data_ram_i_70_1;
  wire u_data_ram_i_70_2;
  wire u_data_ram_i_71_0;
  wire u_data_ram_i_71_1;
  wire [31:0]writeData;
  wire zero_in;
  wire [2:0]NLW_pcSelect0_carry_CO_UNCONNECTED;
  wire [0:0]NLW_pcSelect0_carry_O_UNCONNECTED;
  wire [2:0]NLW_pcSelect0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_pcSelect0_carry__0_i_1_CO_UNCONNECTED;
  wire [2:0]NLW_pcSelect0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_pcSelect0_carry__1_i_1_CO_UNCONNECTED;
  wire [2:0]NLW_pcSelect0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_pcSelect0_carry__2_i_1_CO_UNCONNECTED;
  wire [2:0]NLW_pcSelect0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_pcSelect0_carry__3_i_1_CO_UNCONNECTED;
  wire [2:0]NLW_pcSelect0_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_pcSelect0_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_pcSelect0_carry__6_CO_UNCONNECTED;
  wire [3:2]NLW_pcSelect0_carry__6_O_UNCONNECTED;
  wire [2:0]NLW_pcSelect0_carry_i_1_CO_UNCONNECTED;
  wire [2:0]NLW_pcSelect0_carry_i_2_CO_UNCONNECTED;
  wire [2:0]\NLW_pc_plus_4_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_pc_plus_4_reg[31]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_pc_plus_4_reg[31]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_result_OBUF[12]_inst_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_result_OBUF[16]_inst_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_result_OBUF[20]_inst_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_result_OBUF[24]_inst_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_result_OBUF[28]_inst_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_result_OBUF[31]_inst_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_result_OBUF[31]_inst_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_result_OBUF[4]_inst_i_2_CO_UNCONNECTED ;
  wire [0:0]\NLW_result_OBUF[4]_inst_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_result_OBUF[8]_inst_i_2_CO_UNCONNECTED ;

  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 pcSelect0_carry
       (.CI(1'b0),
        .CO({pcSelect0_carry_n_0,NLW_pcSelect0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({pcSelect0_carry_i_1_n_7,pcSelect0_carry_i_2_n_4,pcSelect0_carry_i_2_n_5,O}),
        .O({data2[5:3],NLW_pcSelect0_carry_O_UNCONNECTED[0]}),
        .S({pcSelect0_carry_i_3_n_0,pcSelect0_carry_i_4_n_0,pcSelect0_carry_i_5_n_0,data2[2]}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 pcSelect0_carry__0
       (.CI(pcSelect0_carry_n_0),
        .CO({pcSelect0_carry__0_n_0,NLW_pcSelect0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({pcSelect0_carry__0_i_1_n_7,pcSelect0_carry_i_1_n_4,pcSelect0_carry_i_1_n_5,pcSelect0_carry_i_1_n_6}),
        .O(data2[9:6]),
        .S({pcSelect0_carry__0_i_2_n_0,pcSelect0_carry__0_i_3_n_0,pcSelect0_carry__0_i_4_n_0,pcSelect0_carry__0_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 pcSelect0_carry__0_i_1
       (.CI(pcSelect0_carry_i_1_n_0),
        .CO({pcSelect0_carry__0_i_1_n_0,NLW_pcSelect0_carry__0_i_1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({pcSelect0_carry__0_i_1_n_4,pcSelect0_carry__0_i_1_n_5,pcSelect0_carry__0_i_1_n_6,pcSelect0_carry__0_i_1_n_7}),
        .S({pcOld[12],Q[9:7]}));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0_carry__0_i_2
       (.I0(pcSelect0_carry__0_i_1_n_7),
        .I1(\pc_reg[1]_0 [7]),
        .O(pcSelect0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0_carry__0_i_3
       (.I0(pcSelect0_carry_i_1_n_4),
        .I1(\pc_reg[1]_0 [6]),
        .O(pcSelect0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0_carry__0_i_4
       (.I0(pcSelect0_carry_i_1_n_5),
        .I1(\pc_reg[1]_0 [5]),
        .O(pcSelect0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0_carry__0_i_5
       (.I0(pcSelect0_carry_i_1_n_6),
        .I1(\pc_reg[1]_0 [4]),
        .O(pcSelect0_carry__0_i_5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 pcSelect0_carry__1
       (.CI(pcSelect0_carry__0_n_0),
        .CO({pcSelect0_carry__1_n_0,NLW_pcSelect0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({pcSelect0_carry__1_i_1_n_7,pcSelect0_carry__0_i_1_n_4,pcSelect0_carry__0_i_1_n_5,pcSelect0_carry__0_i_1_n_6}),
        .O(data2[13:10]),
        .S({pcSelect0_carry__1_i_2_n_0,pcSelect0_carry__1_i_3_n_0,pcSelect0_carry__1_i_4_n_0,pcSelect0_carry__1_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 pcSelect0_carry__1_i_1
       (.CI(pcSelect0_carry__0_i_1_n_0),
        .CO({pcSelect0_carry__1_i_1_n_0,NLW_pcSelect0_carry__1_i_1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({pcSelect0_carry__1_i_1_n_4,pcSelect0_carry__1_i_1_n_5,pcSelect0_carry__1_i_1_n_6,pcSelect0_carry__1_i_1_n_7}),
        .S(pcOld[16:13]));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0_carry__1_i_2
       (.I0(pcSelect0_carry__1_i_1_n_7),
        .I1(\pc_reg[1]_0 [11]),
        .O(pcSelect0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0_carry__1_i_3
       (.I0(pcSelect0_carry__0_i_1_n_4),
        .I1(\pc_reg[1]_0 [10]),
        .O(pcSelect0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0_carry__1_i_4
       (.I0(pcSelect0_carry__0_i_1_n_5),
        .I1(\pc_reg[1]_0 [9]),
        .O(pcSelect0_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0_carry__1_i_5
       (.I0(pcSelect0_carry__0_i_1_n_6),
        .I1(\pc_reg[1]_0 [8]),
        .O(pcSelect0_carry__1_i_5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 pcSelect0_carry__2
       (.CI(pcSelect0_carry__1_n_0),
        .CO({pcSelect0_carry__2_n_0,NLW_pcSelect0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({pcSelect0_carry__2_i_1_n_7,pcSelect0_carry__1_i_1_n_4,pcSelect0_carry__1_i_1_n_5,pcSelect0_carry__1_i_1_n_6}),
        .O(data2[17:14]),
        .S({pcSelect0_carry__2_i_2_n_0,pcSelect0_carry__2_i_3_n_0,pcSelect0_carry__2_i_4_n_0,pcSelect0_carry__2_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 pcSelect0_carry__2_i_1
       (.CI(pcSelect0_carry__1_i_1_n_0),
        .CO({pcSelect0_carry__2_i_1_n_0,NLW_pcSelect0_carry__2_i_1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({pcSelect0_carry__2_i_1_n_4,pcSelect0_carry__2_i_1_n_5,pcSelect0_carry__2_i_1_n_6,pcSelect0_carry__2_i_1_n_7}),
        .S(pcOld[20:17]));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0_carry__2_i_2
       (.I0(pcSelect0_carry__2_i_1_n_7),
        .I1(\pc_reg[1]_0 [15]),
        .O(pcSelect0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0_carry__2_i_3
       (.I0(pcSelect0_carry__1_i_1_n_4),
        .I1(\pc_reg[1]_0 [14]),
        .O(pcSelect0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0_carry__2_i_4
       (.I0(pcSelect0_carry__1_i_1_n_5),
        .I1(\pc_reg[1]_0 [13]),
        .O(pcSelect0_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0_carry__2_i_5
       (.I0(pcSelect0_carry__1_i_1_n_6),
        .I1(\pc_reg[1]_0 [12]),
        .O(pcSelect0_carry__2_i_5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 pcSelect0_carry__3
       (.CI(pcSelect0_carry__2_n_0),
        .CO({pcSelect0_carry__3_n_0,NLW_pcSelect0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({pcSelect0_carry__3_i_1_n_7,pcSelect0_carry__2_i_1_n_4,pcSelect0_carry__2_i_1_n_5,pcSelect0_carry__2_i_1_n_6}),
        .O(data2[21:18]),
        .S({pcSelect0_carry__3_i_2_n_0,pcSelect0_carry__3_i_3_n_0,pcSelect0_carry__3_i_4_n_0,pcSelect0_carry__3_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 pcSelect0_carry__3_i_1
       (.CI(pcSelect0_carry__2_i_1_n_0),
        .CO({pcSelect0_carry__3_i_1_n_0,NLW_pcSelect0_carry__3_i_1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({pcSelect0_carry__3_i_1_n_4,pcSelect0_carry__3_i_1_n_5,pcSelect0_carry__3_i_1_n_6,pcSelect0_carry__3_i_1_n_7}),
        .S(pcOld[24:21]));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0_carry__3_i_2
       (.I0(pcSelect0_carry__3_i_1_n_7),
        .I1(pcSelect0_carry__6_0),
        .O(pcSelect0_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0_carry__3_i_3
       (.I0(pcSelect0_carry__2_i_1_n_4),
        .I1(pcSelect0_carry__6_0),
        .O(pcSelect0_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0_carry__3_i_4
       (.I0(pcSelect0_carry__2_i_1_n_5),
        .I1(pcSelect0_carry__6_0),
        .O(pcSelect0_carry__3_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0_carry__3_i_5
       (.I0(pcSelect0_carry__2_i_1_n_6),
        .I1(pcSelect0_carry__6_0),
        .O(pcSelect0_carry__3_i_5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 pcSelect0_carry__4
       (.CI(pcSelect0_carry__3_n_0),
        .CO({pcSelect0_carry__4_n_0,NLW_pcSelect0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({\pc_plus_4_reg[28]_i_1_n_7 ,pcSelect0_carry__3_i_1_n_4,pcSelect0_carry__3_i_1_n_5,pcSelect0_carry__3_i_1_n_6}),
        .O(data2[25:22]),
        .S({pcSelect0_carry__4_i_1_n_0,pcSelect0_carry__4_i_2_n_0,pcSelect0_carry__4_i_3_n_0,pcSelect0_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0_carry__4_i_1
       (.I0(\pc_plus_4_reg[28]_i_1_n_7 ),
        .I1(pcSelect0_carry__6_0),
        .O(pcSelect0_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0_carry__4_i_2
       (.I0(pcSelect0_carry__3_i_1_n_4),
        .I1(pcSelect0_carry__6_0),
        .O(pcSelect0_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0_carry__4_i_3
       (.I0(pcSelect0_carry__3_i_1_n_5),
        .I1(pcSelect0_carry__6_0),
        .O(pcSelect0_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0_carry__4_i_4
       (.I0(pcSelect0_carry__3_i_1_n_6),
        .I1(pcSelect0_carry__6_0),
        .O(pcSelect0_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 pcSelect0_carry__5
       (.CI(pcSelect0_carry__4_n_0),
        .CO({pcSelect0_carry__5_n_0,NLW_pcSelect0_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({\pc_plus_4_reg[31]_i_1_n_7 ,\pc_plus_4_reg[28]_i_1_n_4 ,\pc_plus_4_reg[28]_i_1_n_5 ,\pc_plus_4_reg[28]_i_1_n_6 }),
        .O(data2[29:26]),
        .S({pcSelect0_carry__5_i_1_n_0,pcSelect0_carry__5_i_2_n_0,pcSelect0_carry__5_i_3_n_0,pcSelect0_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0_carry__5_i_1
       (.I0(\pc_plus_4_reg[31]_i_1_n_7 ),
        .I1(pcSelect0_carry__6_0),
        .O(pcSelect0_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0_carry__5_i_2
       (.I0(\pc_plus_4_reg[28]_i_1_n_4 ),
        .I1(pcSelect0_carry__6_0),
        .O(pcSelect0_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0_carry__5_i_3
       (.I0(\pc_plus_4_reg[28]_i_1_n_5 ),
        .I1(pcSelect0_carry__6_0),
        .O(pcSelect0_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0_carry__5_i_4
       (.I0(\pc_plus_4_reg[28]_i_1_n_6 ),
        .I1(pcSelect0_carry__6_0),
        .O(pcSelect0_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 pcSelect0_carry__6
       (.CI(pcSelect0_carry__5_n_0),
        .CO(NLW_pcSelect0_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\pc_plus_4_reg[31]_i_1_n_6 }),
        .O({NLW_pcSelect0_carry__6_O_UNCONNECTED[3:2],data2[31:30]}),
        .S({1'b0,1'b0,pcSelect0_carry__6_i_1_n_0,pcSelect0_carry__6_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0_carry__6_i_1
       (.I0(\pc_plus_4_reg[31]_i_1_n_5 ),
        .I1(pcSelect0_carry__6_0),
        .O(pcSelect0_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0_carry__6_i_2
       (.I0(\pc_plus_4_reg[31]_i_1_n_6 ),
        .I1(pcSelect0_carry__6_0),
        .O(pcSelect0_carry__6_i_2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 pcSelect0_carry_i_1
       (.CI(pcSelect0_carry_i_2_n_0),
        .CO({pcSelect0_carry_i_1_n_0,NLW_pcSelect0_carry_i_1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({pcSelect0_carry_i_1_n_4,pcSelect0_carry_i_1_n_5,pcSelect0_carry_i_1_n_6,pcSelect0_carry_i_1_n_7}),
        .S(Q[6:3]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 pcSelect0_carry_i_2
       (.CI(1'b0),
        .CO({pcSelect0_carry_i_2_n_0,NLW_pcSelect0_carry_i_2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[0],1'b0}),
        .O({pcSelect0_carry_i_2_n_4,pcSelect0_carry_i_2_n_5,O,ALUorMemData0[1]}),
        .S({Q[2:1],pcSelect0_carry_i_7_n_0,pcOld[1]}));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0_carry_i_3
       (.I0(pcSelect0_carry_i_1_n_7),
        .I1(\pc_reg[1]_0 [3]),
        .O(pcSelect0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0_carry_i_4
       (.I0(pcSelect0_carry_i_2_n_4),
        .I1(\pc_reg[1]_0 [2]),
        .O(pcSelect0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0_carry_i_5
       (.I0(pcSelect0_carry_i_2_n_5),
        .I1(\pc_reg[1]_0 [1]),
        .O(pcSelect0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0_carry_i_6
       (.I0(O),
        .I1(\pc_reg[1]_0 [0]),
        .O(data2[2]));
  LUT1 #(
    .INIT(2'h1)) 
    pcSelect0_carry_i_7
       (.I0(Q[0]),
        .O(pcSelect0_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'hFF04040404040404)) 
    \pc[0]_i_1 
       (.I0(Jrn),
        .I1(pcOld[0]),
        .I2(p_0_in),
        .I3(\pc_reg[1]_1 ),
        .I4(A0[0]),
        .I5(\pc_reg[1]_2 ),
        .O(pcSelect[0]));
  LUT6 #(
    .INIT(64'h00000000ACCAAAAA)) 
    \pc[10]_i_2 
       (.I0(pcSelect0_carry__0_i_1_n_6),
        .I1(data2[10]),
        .I2(zero_in),
        .I3(\pc_reg[1]_0 [21]),
        .I4(\bbstub_douta[30] ),
        .I5(p_0_in),
        .O(\pc_reg[12]_1 ));
  LUT6 #(
    .INIT(64'h00000000ACCAAAAA)) 
    \pc[11]_i_2 
       (.I0(pcSelect0_carry__0_i_1_n_5),
        .I1(data2[11]),
        .I2(zero_in),
        .I3(\pc_reg[1]_0 [21]),
        .I4(\bbstub_douta[30] ),
        .I5(p_0_in),
        .O(\pc_reg[12]_2 ));
  LUT6 #(
    .INIT(64'h00000000ACCAAAAA)) 
    \pc[12]_i_2 
       (.I0(pcSelect0_carry__0_i_1_n_4),
        .I1(data2[12]),
        .I2(zero_in),
        .I3(\pc_reg[1]_0 [21]),
        .I4(\bbstub_douta[30] ),
        .I5(p_0_in),
        .O(\pc_reg[12]_3 ));
  LUT6 #(
    .INIT(64'h00000000ACCAAAAA)) 
    \pc[13]_i_2 
       (.I0(pcSelect0_carry__1_i_1_n_7),
        .I1(data2[13]),
        .I2(zero_in),
        .I3(\pc_reg[1]_0 [21]),
        .I4(\bbstub_douta[30] ),
        .I5(p_0_in),
        .O(\pc_reg[16]_0 ));
  LUT6 #(
    .INIT(64'h00000000ACCAAAAA)) 
    \pc[14]_i_2 
       (.I0(pcSelect0_carry__1_i_1_n_6),
        .I1(data2[14]),
        .I2(zero_in),
        .I3(\pc_reg[1]_0 [21]),
        .I4(\bbstub_douta[30] ),
        .I5(p_0_in),
        .O(\pc_reg[16]_1 ));
  LUT6 #(
    .INIT(64'h00000000ACCAAAAA)) 
    \pc[15]_i_2 
       (.I0(pcSelect0_carry__1_i_1_n_5),
        .I1(data2[15]),
        .I2(zero_in),
        .I3(\pc_reg[1]_0 [21]),
        .I4(\bbstub_douta[30] ),
        .I5(p_0_in),
        .O(\pc_reg[16]_2 ));
  LUT6 #(
    .INIT(64'h00000000ACCAAAAA)) 
    \pc[16]_i_2 
       (.I0(pcSelect0_carry__1_i_1_n_4),
        .I1(data2[16]),
        .I2(zero_in),
        .I3(\pc_reg[1]_0 [21]),
        .I4(\bbstub_douta[30] ),
        .I5(p_0_in),
        .O(\pc_reg[16]_3 ));
  LUT6 #(
    .INIT(64'h00000000ACCAAAAA)) 
    \pc[17]_i_2 
       (.I0(pcSelect0_carry__2_i_1_n_7),
        .I1(data2[17]),
        .I2(zero_in),
        .I3(\pc_reg[1]_0 [21]),
        .I4(\bbstub_douta[30] ),
        .I5(p_0_in),
        .O(\pc_reg[20]_0 ));
  LUT6 #(
    .INIT(64'h00000000ACCAAAAA)) 
    \pc[18]_i_2 
       (.I0(pcSelect0_carry__2_i_1_n_6),
        .I1(data2[18]),
        .I2(zero_in),
        .I3(\pc_reg[1]_0 [21]),
        .I4(\bbstub_douta[30] ),
        .I5(p_0_in),
        .O(\pc_reg[20]_1 ));
  LUT6 #(
    .INIT(64'h00000000ACCAAAAA)) 
    \pc[19]_i_2 
       (.I0(pcSelect0_carry__2_i_1_n_5),
        .I1(data2[19]),
        .I2(zero_in),
        .I3(\pc_reg[1]_0 [21]),
        .I4(\bbstub_douta[30] ),
        .I5(p_0_in),
        .O(\pc_reg[20]_2 ));
  LUT6 #(
    .INIT(64'hFF04040404040404)) 
    \pc[1]_i_1 
       (.I0(Jrn),
        .I1(pcOld[1]),
        .I2(p_0_in),
        .I3(\pc_reg[1]_1 ),
        .I4(A0[1]),
        .I5(\pc_reg[1]_2 ),
        .O(pcSelect[1]));
  LUT6 #(
    .INIT(64'h00000000ACCAAAAA)) 
    \pc[20]_i_2 
       (.I0(pcSelect0_carry__2_i_1_n_4),
        .I1(data2[20]),
        .I2(zero_in),
        .I3(\pc_reg[1]_0 [21]),
        .I4(\bbstub_douta[30] ),
        .I5(p_0_in),
        .O(\pc_reg[20]_3 ));
  LUT6 #(
    .INIT(64'h00000000ACCAAAAA)) 
    \pc[21]_i_2 
       (.I0(pcSelect0_carry__3_i_1_n_7),
        .I1(data2[21]),
        .I2(zero_in),
        .I3(\pc_reg[1]_0 [21]),
        .I4(\bbstub_douta[30] ),
        .I5(p_0_in),
        .O(\pc_reg[24]_0 ));
  LUT6 #(
    .INIT(64'h00000000ACCAAAAA)) 
    \pc[22]_i_2 
       (.I0(pcSelect0_carry__3_i_1_n_6),
        .I1(data2[22]),
        .I2(zero_in),
        .I3(\pc_reg[1]_0 [21]),
        .I4(\bbstub_douta[30] ),
        .I5(p_0_in),
        .O(\pc_reg[24]_1 ));
  LUT6 #(
    .INIT(64'h00000000ACCAAAAA)) 
    \pc[23]_i_2 
       (.I0(pcSelect0_carry__3_i_1_n_5),
        .I1(data2[23]),
        .I2(zero_in),
        .I3(\pc_reg[1]_0 [21]),
        .I4(\bbstub_douta[30] ),
        .I5(p_0_in),
        .O(\pc_reg[24]_2 ));
  LUT6 #(
    .INIT(64'h00000000ACCAAAAA)) 
    \pc[24]_i_2 
       (.I0(pcSelect0_carry__3_i_1_n_4),
        .I1(data2[24]),
        .I2(zero_in),
        .I3(\pc_reg[1]_0 [21]),
        .I4(\bbstub_douta[30] ),
        .I5(p_0_in),
        .O(\pc_reg[24]_3 ));
  LUT6 #(
    .INIT(64'h00000000ACCAAAAA)) 
    \pc[25]_i_2 
       (.I0(\pc_plus_4_reg[28]_i_1_n_7 ),
        .I1(data2[25]),
        .I2(zero_in),
        .I3(\pc_reg[1]_0 [21]),
        .I4(\bbstub_douta[30] ),
        .I5(p_0_in),
        .O(\pc_reg[28]_0 ));
  LUT6 #(
    .INIT(64'h00000000ACCAAAAA)) 
    \pc[26]_i_2 
       (.I0(\pc_plus_4_reg[28]_i_1_n_6 ),
        .I1(data2[26]),
        .I2(zero_in),
        .I3(\pc_reg[1]_0 [21]),
        .I4(\bbstub_douta[30] ),
        .I5(p_0_in),
        .O(\pc_reg[28]_1 ));
  LUT6 #(
    .INIT(64'h00000000ACCAAAAA)) 
    \pc[27]_i_2 
       (.I0(\pc_plus_4_reg[28]_i_1_n_5 ),
        .I1(data2[27]),
        .I2(zero_in),
        .I3(\pc_reg[1]_0 [21]),
        .I4(\bbstub_douta[30] ),
        .I5(p_0_in),
        .O(\pc_reg[28]_2 ));
  LUT6 #(
    .INIT(64'h00000000ACCAAAAA)) 
    \pc[28]_i_2 
       (.I0(\pc_plus_4_reg[28]_i_1_n_4 ),
        .I1(data2[28]),
        .I2(zero_in),
        .I3(\pc_reg[1]_0 [21]),
        .I4(\bbstub_douta[30] ),
        .I5(p_0_in),
        .O(\pc_reg[28]_3 ));
  LUT6 #(
    .INIT(64'h00000000ACCAAAAA)) 
    \pc[29]_i_2 
       (.I0(\pc_plus_4_reg[31]_i_1_n_7 ),
        .I1(data2[29]),
        .I2(zero_in),
        .I3(\pc_reg[1]_0 [21]),
        .I4(\bbstub_douta[30] ),
        .I5(p_0_in),
        .O(\pc_reg[31]_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \pc[2]_i_2 
       (.I0(\pc_reg[1]_0 [24]),
        .I1(\pc_reg[1]_0 [23]),
        .I2(\pc_reg[1]_0 [26]),
        .I3(\pc_reg[1]_0 [25]),
        .I4(\pc_reg[1]_0 [22]),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'h00000000ACCAAAAA)) 
    \pc[30]_i_2 
       (.I0(\pc_plus_4_reg[31]_i_1_n_6 ),
        .I1(data2[30]),
        .I2(zero_in),
        .I3(\pc_reg[1]_0 [21]),
        .I4(\bbstub_douta[30] ),
        .I5(p_0_in),
        .O(\pc_reg[31]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pc[31]_i_37 
       (.I0(u_data_ram_i_70_1),
        .I1(\pc_reg[1]_0 [9]),
        .O(\bbstub_douta[9] ));
  LUT2 #(
    .INIT(4'h8)) 
    \pc[31]_i_38 
       (.I0(u_data_ram_i_70_1),
        .I1(\pc_reg[1]_0 [10]),
        .O(\bbstub_douta[10] ));
  LUT6 #(
    .INIT(64'h00000000ACCAAAAA)) 
    \pc[31]_i_4 
       (.I0(\pc_plus_4_reg[31]_i_1_n_5 ),
        .I1(data2[31]),
        .I2(zero_in),
        .I3(\pc_reg[1]_0 [21]),
        .I4(\bbstub_douta[30] ),
        .I5(p_0_in),
        .O(\pc_reg[31]_2 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \pc[31]_i_5 
       (.I0(\pc_reg[1]_0 [22]),
        .I1(\pc_reg[1]_0 [23]),
        .I2(\pc_reg[1]_0 [24]),
        .I3(\pc_reg[1]_0 [26]),
        .I4(\pc_reg[1]_0 [25]),
        .O(\bbstub_douta[30] ));
  LUT6 #(
    .INIT(64'h00000000ACCAAAAA)) 
    \pc[3]_i_2 
       (.I0(pcSelect0_carry_i_2_n_5),
        .I1(data2[3]),
        .I2(zero_in),
        .I3(\pc_reg[1]_0 [21]),
        .I4(\bbstub_douta[30] ),
        .I5(p_0_in),
        .O(\pc_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h00000000ACCAAAAA)) 
    \pc[4]_i_2 
       (.I0(pcSelect0_carry_i_2_n_4),
        .I1(data2[4]),
        .I2(zero_in),
        .I3(\pc_reg[1]_0 [21]),
        .I4(\bbstub_douta[30] ),
        .I5(p_0_in),
        .O(\pc_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h00000000ACCAAAAA)) 
    \pc[5]_i_2 
       (.I0(pcSelect0_carry_i_1_n_7),
        .I1(data2[5]),
        .I2(zero_in),
        .I3(\pc_reg[1]_0 [21]),
        .I4(\bbstub_douta[30] ),
        .I5(p_0_in),
        .O(\pc_reg[8]_0 ));
  LUT6 #(
    .INIT(64'h00000000ACCAAAAA)) 
    \pc[6]_i_2 
       (.I0(pcSelect0_carry_i_1_n_6),
        .I1(data2[6]),
        .I2(zero_in),
        .I3(\pc_reg[1]_0 [21]),
        .I4(\bbstub_douta[30] ),
        .I5(p_0_in),
        .O(\pc_reg[8]_1 ));
  LUT6 #(
    .INIT(64'h00000000ACCAAAAA)) 
    \pc[7]_i_2 
       (.I0(pcSelect0_carry_i_1_n_5),
        .I1(data2[7]),
        .I2(zero_in),
        .I3(\pc_reg[1]_0 [21]),
        .I4(\bbstub_douta[30] ),
        .I5(p_0_in),
        .O(\pc_reg[8]_2 ));
  LUT6 #(
    .INIT(64'h00000000ACCAAAAA)) 
    \pc[8]_i_2 
       (.I0(pcSelect0_carry_i_1_n_4),
        .I1(data2[8]),
        .I2(zero_in),
        .I3(\pc_reg[1]_0 [21]),
        .I4(\bbstub_douta[30] ),
        .I5(p_0_in),
        .O(\pc_reg[8]_3 ));
  LUT6 #(
    .INIT(64'h00000000ACCAAAAA)) 
    \pc[9]_i_2 
       (.I0(pcSelect0_carry__0_i_1_n_7),
        .I1(data2[9]),
        .I2(zero_in),
        .I3(\pc_reg[1]_0 [21]),
        .I4(\bbstub_douta[30] ),
        .I5(p_0_in),
        .O(\pc_reg[12]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pc_plus_4_reg[28] 
       (.CLR(1'b0),
        .D(\pc_plus_4_reg[28]_i_1_n_4 ),
        .G(E),
        .GE(1'b1),
        .Q(\pc_reg[31]_3 [0]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \pc_plus_4_reg[28]_i_1 
       (.CI(pcSelect0_carry__3_i_1_n_0),
        .CO({\pc_plus_4_reg[28]_i_1_n_0 ,\NLW_pc_plus_4_reg[28]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_plus_4_reg[28]_i_1_n_4 ,\pc_plus_4_reg[28]_i_1_n_5 ,\pc_plus_4_reg[28]_i_1_n_6 ,\pc_plus_4_reg[28]_i_1_n_7 }),
        .S(pcOld[28:25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pc_plus_4_reg[29] 
       (.CLR(1'b0),
        .D(\pc_plus_4_reg[31]_i_1_n_7 ),
        .G(E),
        .GE(1'b1),
        .Q(\pc_reg[31]_3 [1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pc_plus_4_reg[30] 
       (.CLR(1'b0),
        .D(\pc_plus_4_reg[31]_i_1_n_6 ),
        .G(E),
        .GE(1'b1),
        .Q(\pc_reg[31]_3 [2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pc_plus_4_reg[31] 
       (.CLR(1'b0),
        .D(\pc_plus_4_reg[31]_i_1_n_5 ),
        .G(E),
        .GE(1'b1),
        .Q(\pc_reg[31]_3 [3]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \pc_plus_4_reg[31]_i_1 
       (.CI(\pc_plus_4_reg[28]_i_1_n_0 ),
        .CO(\NLW_pc_plus_4_reg[31]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_pc_plus_4_reg[31]_i_1_O_UNCONNECTED [3],\pc_plus_4_reg[31]_i_1_n_5 ,\pc_plus_4_reg[31]_i_1_n_6 ,\pc_plus_4_reg[31]_i_1_n_7 }),
        .S({1'b0,pcOld[31:29]}));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \pc_plus_4_reg[31]_i_4 
       (.I0(\pc_plus_4_reg[31]_i_8_n_0 ),
        .I1(\pc_reg[1]_0 [3]),
        .I2(\pc_reg[1]_0 [2]),
        .I3(\pc_reg[1]_0 [5]),
        .I4(\pc_reg[1]_0 [4]),
        .I5(\bbstub_douta[30]_0 ),
        .O(Jrn));
  LUT3 #(
    .INIT(8'h04)) 
    \pc_plus_4_reg[31]_i_7 
       (.I0(\pc_reg[1]_0 [24]),
        .I1(\pc_reg[1]_0 [23]),
        .I2(\pc_reg[1]_0 [22]),
        .O(\bbstub_douta[27] ));
  LUT4 #(
    .INIT(16'h0001)) 
    \pc_plus_4_reg[31]_i_8 
       (.I0(\pc_reg[1]_0 [1]),
        .I1(\pc_reg[1]_0 [0]),
        .I2(\pc_reg[1]_0 [26]),
        .I3(\pc_reg[1]_0 [21]),
        .O(\pc_plus_4_reg[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pc_plus_4_reg[31]_i_9 
       (.I0(\pc_reg[1]_0 [22]),
        .I1(\pc_reg[1]_0 [24]),
        .I2(\pc_reg[1]_0 [23]),
        .I3(\pc_reg[1]_0 [25]),
        .O(\bbstub_douta[30]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(pcSelect[0]),
        .Q(pcOld[0]),
        .R(rst_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[10] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(rst_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[11] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[9]),
        .Q(Q[9]),
        .R(rst_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[12] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[10]),
        .Q(pcOld[12]),
        .R(rst_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[13] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[11]),
        .Q(pcOld[13]),
        .R(rst_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[14] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[12]),
        .Q(pcOld[14]),
        .R(rst_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[15] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[13]),
        .Q(pcOld[15]),
        .R(rst_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[16] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[14]),
        .Q(pcOld[16]),
        .R(rst_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[17] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[15]),
        .Q(pcOld[17]),
        .R(rst_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[18] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[16]),
        .Q(pcOld[18]),
        .R(rst_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[19] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[17]),
        .Q(pcOld[19]),
        .R(rst_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(pcSelect[1]),
        .Q(pcOld[1]),
        .R(rst_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[20] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[18]),
        .Q(pcOld[20]),
        .R(rst_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[21] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[19]),
        .Q(pcOld[21]),
        .R(rst_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[22] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[20]),
        .Q(pcOld[22]),
        .R(rst_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[23] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[21]),
        .Q(pcOld[23]),
        .R(rst_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[24] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[22]),
        .Q(pcOld[24]),
        .R(rst_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[25] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[23]),
        .Q(pcOld[25]),
        .R(rst_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[26] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[24]),
        .Q(pcOld[26]),
        .R(rst_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[27] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[25]),
        .Q(pcOld[27]),
        .R(rst_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[28] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[26]),
        .Q(pcOld[28]),
        .R(rst_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[29] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[27]),
        .Q(pcOld[29]),
        .R(rst_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(rst_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[30] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[28]),
        .Q(pcOld[30]),
        .R(rst_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[31] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[29]),
        .Q(pcOld[31]),
        .R(rst_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(rst_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(rst_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(rst_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(rst_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(rst_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[8] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(rst_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[9] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(rst_n_IBUF));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[0]_inst_i_1 
       (.I0(\result[0] ),
        .I1(pcOld[0]),
        .I2(\result[0]_0 ),
        .I3(douta[0]),
        .I4(ALUresult[0]),
        .I5(\result[0]_1 ),
        .O(writeData[0]));
  LUT4 #(
    .INIT(16'h0001)) 
    \result_OBUF[0]_inst_i_14 
       (.I0(\pc_reg[1]_0 [3]),
        .I1(\pc_reg[1]_0 [0]),
        .I2(\pc_reg[1]_0 [5]),
        .I3(\pc_reg[1]_0 [4]),
        .O(\result_OBUF[0]_inst_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h00000D00)) 
    \result_OBUF[0]_inst_i_15 
       (.I0(\pc_reg[1]_0 [3]),
        .I1(\pc_reg[1]_0 [1]),
        .I2(\pc_reg[1]_0 [4]),
        .I3(\pc_reg[1]_0 [5]),
        .I4(\pc_reg[1]_0 [2]),
        .O(\result_OBUF[0]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF0FF33FF11)) 
    \result_OBUF[0]_inst_i_3 
       (.I0(\pc_reg[1]_0 [24]),
        .I1(\result_OBUF[0]_inst_i_8_n_0 ),
        .I2(\result_OBUF[25]_inst_i_11_n_0 ),
        .I3(\pc_reg[1]_0 [25]),
        .I4(\pc_reg[1]_0 [23]),
        .I5(\pc_reg[1]_0 [26]),
        .O(\bbstub_douta[31] [2]));
  LUT6 #(
    .INIT(64'h0055000F0055000C)) 
    \result_OBUF[0]_inst_i_8 
       (.I0(\pc_reg[1]_0 [24]),
        .I1(\result_OBUF[0]_inst_i_14_n_0 ),
        .I2(\pc_reg[1]_0 [21]),
        .I3(\pc_reg[1]_0 [22]),
        .I4(\pc_reg[1]_0 [23]),
        .I5(\result_OBUF[0]_inst_i_15_n_0 ),
        .O(\result_OBUF[0]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[10]_inst_i_1 
       (.I0(\result[0] ),
        .I1(ALUorMemData0[10]),
        .I2(\result[0]_0 ),
        .I3(douta[10]),
        .I4(\result[11] [8]),
        .I5(\result[0]_1 ),
        .O(writeData[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[11]_inst_i_1 
       (.I0(\result[0] ),
        .I1(ALUorMemData0[11]),
        .I2(\result[0]_0 ),
        .I3(douta[11]),
        .I4(\result[11] [9]),
        .I5(\result[0]_1 ),
        .O(writeData[11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[12]_inst_i_1 
       (.I0(\result[0] ),
        .I1(ALUorMemData0[12]),
        .I2(\result[0]_0 ),
        .I3(douta[12]),
        .I4(ALUresult[2]),
        .I5(\result[0]_1 ),
        .O(writeData[12]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \result_OBUF[12]_inst_i_2 
       (.CI(\result_OBUF[8]_inst_i_2_n_0 ),
        .CO({\result_OBUF[12]_inst_i_2_n_0 ,\NLW_result_OBUF[12]_inst_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(ALUorMemData0[12:9]),
        .S({pcOld[12],Q[9:7]}));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[13]_inst_i_1 
       (.I0(\result[0] ),
        .I1(ALUorMemData0[13]),
        .I2(\result[0]_0 ),
        .I3(douta[13]),
        .I4(ALUresult[3]),
        .I5(\result[0]_1 ),
        .O(writeData[13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[14]_inst_i_1 
       (.I0(\result[0] ),
        .I1(ALUorMemData0[14]),
        .I2(\result[0]_0 ),
        .I3(douta[14]),
        .I4(ALUresult[4]),
        .I5(\result[0]_1 ),
        .O(writeData[14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[15]_inst_i_1 
       (.I0(\result[0] ),
        .I1(ALUorMemData0[15]),
        .I2(\result[0]_0 ),
        .I3(douta[15]),
        .I4(ALUresult[5]),
        .I5(\result[0]_1 ),
        .O(writeData[15]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[16]_inst_i_1 
       (.I0(\result[0] ),
        .I1(ALUorMemData0[16]),
        .I2(\result[0]_0 ),
        .I3(douta[16]),
        .I4(ALUresult[6]),
        .I5(\result[0]_1 ),
        .O(writeData[16]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \result_OBUF[16]_inst_i_2 
       (.CI(\result_OBUF[12]_inst_i_2_n_0 ),
        .CO({\result_OBUF[16]_inst_i_2_n_0 ,\NLW_result_OBUF[16]_inst_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(ALUorMemData0[16:13]),
        .S(pcOld[16:13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[17]_inst_i_1 
       (.I0(\result[0] ),
        .I1(ALUorMemData0[17]),
        .I2(\result[0]_0 ),
        .I3(douta[17]),
        .I4(ALUresult[7]),
        .I5(\result[0]_1 ),
        .O(writeData[17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[18]_inst_i_1 
       (.I0(\result[0] ),
        .I1(ALUorMemData0[18]),
        .I2(\result[0]_0 ),
        .I3(douta[18]),
        .I4(ALUresult[8]),
        .I5(\result[0]_1 ),
        .O(writeData[18]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[19]_inst_i_1 
       (.I0(\result[0] ),
        .I1(ALUorMemData0[19]),
        .I2(\result[0]_0 ),
        .I3(douta[19]),
        .I4(ALUresult[9]),
        .I5(\result[0]_1 ),
        .O(writeData[19]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[1]_inst_i_1 
       (.I0(\result[0] ),
        .I1(ALUorMemData0[1]),
        .I2(\result[0]_0 ),
        .I3(douta[1]),
        .I4(ALUresult[1]),
        .I5(\result[0]_1 ),
        .O(writeData[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[20]_inst_i_1 
       (.I0(\result[0] ),
        .I1(ALUorMemData0[20]),
        .I2(\result[0]_0 ),
        .I3(douta[20]),
        .I4(ALUresult[10]),
        .I5(\result[0]_1 ),
        .O(writeData[20]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \result_OBUF[20]_inst_i_2 
       (.CI(\result_OBUF[16]_inst_i_2_n_0 ),
        .CO({\result_OBUF[20]_inst_i_2_n_0 ,\NLW_result_OBUF[20]_inst_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(ALUorMemData0[20:17]),
        .S(pcOld[20:17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[21]_inst_i_1 
       (.I0(\result[0] ),
        .I1(ALUorMemData0[21]),
        .I2(\result[0]_0 ),
        .I3(douta[21]),
        .I4(ALUresult[11]),
        .I5(\result[0]_1 ),
        .O(writeData[21]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[22]_inst_i_1 
       (.I0(\result[0] ),
        .I1(ALUorMemData0[22]),
        .I2(\result[0]_0 ),
        .I3(douta[22]),
        .I4(ALUresult[12]),
        .I5(\result[0]_1 ),
        .O(writeData[22]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[23]_inst_i_1 
       (.I0(\result[0] ),
        .I1(ALUorMemData0[23]),
        .I2(\result[0]_0 ),
        .I3(douta[23]),
        .I4(ALUresult[13]),
        .I5(\result[0]_1 ),
        .O(writeData[23]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[24]_inst_i_1 
       (.I0(\result[0] ),
        .I1(ALUorMemData0[24]),
        .I2(\result[0]_0 ),
        .I3(douta[24]),
        .I4(ALUresult[14]),
        .I5(\result[0]_1 ),
        .O(writeData[24]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \result_OBUF[24]_inst_i_2 
       (.CI(\result_OBUF[20]_inst_i_2_n_0 ),
        .CO({\result_OBUF[24]_inst_i_2_n_0 ,\NLW_result_OBUF[24]_inst_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(ALUorMemData0[24:21]),
        .S(pcOld[24:21]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[25]_inst_i_1 
       (.I0(\result[0] ),
        .I1(ALUorMemData0[25]),
        .I2(\result[0]_0 ),
        .I3(douta[25]),
        .I4(ALUresult[15]),
        .I5(\result[0]_1 ),
        .O(writeData[25]));
  LUT2 #(
    .INIT(4'h2)) 
    \result_OBUF[25]_inst_i_10 
       (.I0(u_data_ram_i_71_0),
        .I1(u_data_ram_i_71_1),
        .O(u_data_ram_i_44_0));
  LUT2 #(
    .INIT(4'h7)) 
    \result_OBUF[25]_inst_i_11 
       (.I0(\pc_reg[1]_0 [22]),
        .I1(\pc_reg[1]_0 [21]),
        .O(\result_OBUF[25]_inst_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \result_OBUF[25]_inst_i_12 
       (.I0(\pc_reg[1]_0 [26]),
        .I1(\pc_reg[1]_0 [25]),
        .I2(\pc_reg[1]_0 [24]),
        .O(\result_OBUF[25]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \result_OBUF[25]_inst_i_4 
       (.I0(\result_OBUF[25]_inst_i_11_n_0 ),
        .I1(\pc_reg[1]_0 [23]),
        .I2(\result_OBUF[25]_inst_i_12_n_0 ),
        .I3(\bbstub_douta[31] [2]),
        .I4(\bbstub_douta[31] [0]),
        .I5(\bbstub_douta[31] [1]),
        .O(u_data_ram_i_70_1));
  LUT2 #(
    .INIT(4'h2)) 
    \result_OBUF[25]_inst_i_7 
       (.I0(u_data_ram_i_71_1),
        .I1(u_data_ram_i_71_0),
        .O(u_data_ram_i_45_0));
  LUT2 #(
    .INIT(4'h1)) 
    \result_OBUF[25]_inst_i_8 
       (.I0(u_data_ram_i_71_0),
        .I1(u_data_ram_i_71_1),
        .O(u_data_ram_i_44_2));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[26]_inst_i_1 
       (.I0(\result[0] ),
        .I1(ALUorMemData0[26]),
        .I2(\result[0]_0 ),
        .I3(douta[26]),
        .I4(ALUresult[16]),
        .I5(\result[0]_1 ),
        .O(writeData[26]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[27]_inst_i_1 
       (.I0(\result[0] ),
        .I1(ALUorMemData0[27]),
        .I2(\result[0]_0 ),
        .I3(douta[27]),
        .I4(ALUresult[17]),
        .I5(\result[0]_1 ),
        .O(writeData[27]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[28]_inst_i_1 
       (.I0(\result[0] ),
        .I1(ALUorMemData0[28]),
        .I2(\result[0]_0 ),
        .I3(douta[28]),
        .I4(ALUresult[18]),
        .I5(\result[0]_1 ),
        .O(writeData[28]));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \result_OBUF[28]_inst_i_11 
       (.I0(\bbstub_douta[31] [1]),
        .I1(\bbstub_douta[31] [0]),
        .I2(\bbstub_douta[31] [2]),
        .I3(\result_OBUF[25]_inst_i_12_n_0 ),
        .I4(\result_OBUF[28]_inst_i_16_n_0 ),
        .I5(\pc_reg[1]_0 [12]),
        .O(\bbstub_douta[12] ));
  LUT3 #(
    .INIT(8'h80)) 
    \result_OBUF[28]_inst_i_16 
       (.I0(\pc_reg[1]_0 [23]),
        .I1(\pc_reg[1]_0 [21]),
        .I2(\pc_reg[1]_0 [22]),
        .O(\result_OBUF[28]_inst_i_16_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \result_OBUF[28]_inst_i_2 
       (.CI(\result_OBUF[24]_inst_i_2_n_0 ),
        .CO({\result_OBUF[28]_inst_i_2_n_0 ,\NLW_result_OBUF[28]_inst_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(ALUorMemData0[28:25]),
        .S(pcOld[28:25]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[29]_inst_i_1 
       (.I0(\result[0] ),
        .I1(ALUorMemData0[29]),
        .I2(\result[0]_0 ),
        .I3(douta[29]),
        .I4(ALUresult[19]),
        .I5(\result[0]_1 ),
        .O(writeData[29]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[2]_inst_i_1 
       (.I0(\result[0] ),
        .I1(ALUorMemData0[2]),
        .I2(\result[0]_0 ),
        .I3(douta[2]),
        .I4(\result[11] [0]),
        .I5(\result[0]_1 ),
        .O(writeData[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[30]_inst_i_1 
       (.I0(\result[0] ),
        .I1(ALUorMemData0[30]),
        .I2(\result[0]_0 ),
        .I3(douta[30]),
        .I4(ALUresult[20]),
        .I5(\result[0]_1 ),
        .O(writeData[30]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[31]_inst_i_1 
       (.I0(\result[0] ),
        .I1(ALUorMemData0[31]),
        .I2(\result[0]_0 ),
        .I3(douta[31]),
        .I4(ALUresult[21]),
        .I5(\result[0]_1 ),
        .O(writeData[31]));
  LUT2 #(
    .INIT(4'h4)) 
    \result_OBUF[31]_inst_i_10 
       (.I0(\bbstub_douta[31] [2]),
        .I1(\bbstub_douta[31] [1]),
        .O(u_data_ram_i_70_0));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[31]_inst_i_11 
       (.I0(u_data_ram_i_71_0),
        .I1(u_data_ram_i_71_1),
        .O(u_data_ram_i_44_1));
  LUT3 #(
    .INIT(8'h02)) 
    \result_OBUF[31]_inst_i_13 
       (.I0(\bbstub_douta[31] [2]),
        .I1(\bbstub_douta[31] [0]),
        .I2(\bbstub_douta[31] [1]),
        .O(u_data_ram_i_70_2));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \result_OBUF[31]_inst_i_3 
       (.CI(\result_OBUF[28]_inst_i_2_n_0 ),
        .CO(\NLW_result_OBUF[31]_inst_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_result_OBUF[31]_inst_i_3_O_UNCONNECTED [3],ALUorMemData0[31:29]}),
        .S({1'b0,pcOld[31:29]}));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[3]_inst_i_1 
       (.I0(\result[0] ),
        .I1(ALUorMemData0[3]),
        .I2(\result[0]_0 ),
        .I3(douta[3]),
        .I4(\result[11] [1]),
        .I5(\result[0]_1 ),
        .O(writeData[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[4]_inst_i_1 
       (.I0(\result[0] ),
        .I1(ALUorMemData0[4]),
        .I2(\result[0]_0 ),
        .I3(douta[4]),
        .I4(\result[11] [2]),
        .I5(\result[0]_1 ),
        .O(writeData[4]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \result_OBUF[4]_inst_i_2 
       (.CI(1'b0),
        .CO({\result_OBUF[4]_inst_i_2_n_0 ,\NLW_result_OBUF[4]_inst_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[0],1'b0}),
        .O({ALUorMemData0[4:2],\NLW_result_OBUF[4]_inst_i_2_O_UNCONNECTED [0]}),
        .S({Q[2:1],\result_OBUF[4]_inst_i_3_n_0 ,pcOld[1]}));
  LUT1 #(
    .INIT(2'h1)) 
    \result_OBUF[4]_inst_i_3 
       (.I0(Q[0]),
        .O(\result_OBUF[4]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[5]_inst_i_1 
       (.I0(\result[0] ),
        .I1(ALUorMemData0[5]),
        .I2(\result[0]_0 ),
        .I3(douta[5]),
        .I4(\result[11] [3]),
        .I5(\result[0]_1 ),
        .O(writeData[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[6]_inst_i_1 
       (.I0(\result[0] ),
        .I1(ALUorMemData0[6]),
        .I2(\result[0]_0 ),
        .I3(douta[6]),
        .I4(\result[11] [4]),
        .I5(\result[0]_1 ),
        .O(writeData[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[7]_inst_i_1 
       (.I0(\result[0] ),
        .I1(ALUorMemData0[7]),
        .I2(\result[0]_0 ),
        .I3(douta[7]),
        .I4(\result[11] [5]),
        .I5(\result[0]_1 ),
        .O(writeData[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[8]_inst_i_1 
       (.I0(\result[0] ),
        .I1(ALUorMemData0[8]),
        .I2(\result[0]_0 ),
        .I3(douta[8]),
        .I4(\result[11] [6]),
        .I5(\result[0]_1 ),
        .O(writeData[8]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \result_OBUF[8]_inst_i_2 
       (.CI(\result_OBUF[4]_inst_i_2_n_0 ),
        .CO({\result_OBUF[8]_inst_i_2_n_0 ,\NLW_result_OBUF[8]_inst_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(ALUorMemData0[8:5]),
        .S(Q[6:3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[9]_inst_i_1 
       (.I0(\result[0] ),
        .I1(ALUorMemData0[9]),
        .I2(\result[0]_0 ),
        .I3(douta[9]),
        .I4(\result[11] [7]),
        .I5(\result[0]_1 ),
        .O(writeData[9]));
  LUT4 #(
    .INIT(16'h0400)) 
    u_data_ram_i_112
       (.I0(\bbstub_douta[31] [0]),
        .I1(ALUop),
        .I2(\bbstub_douta[31] [1]),
        .I3(\bbstub_douta[31] [2]),
        .O(\result_OBUF[0]_inst_i_3_0 ));
  LUT6 #(
    .INIT(64'h1111111111111110)) 
    u_data_ram_i_123
       (.I0(\pc_reg[1]_0 [26]),
        .I1(\pc_reg[1]_0 [24]),
        .I2(u_data_ram_i_172_n_0),
        .I3(u_data_ram_i_173_n_0),
        .I4(\pc_reg[1]_0 [23]),
        .I5(u_data_ram_i_174_n_0),
        .O(u_data_ram_i_123_n_0));
  LUT6 #(
    .INIT(64'h0000000099999998)) 
    u_data_ram_i_124
       (.I0(\pc_reg[1]_0 [22]),
        .I1(\pc_reg[1]_0 [23]),
        .I2(\pc_reg[1]_0 [3]),
        .I3(u_data_ram_i_175_n_0),
        .I4(\pc_reg[1]_0 [21]),
        .I5(\pc_reg[1]_0 [24]),
        .O(u_data_ram_i_124_n_0));
  LUT6 #(
    .INIT(64'hFEFEFEEEFEFEFEFE)) 
    u_data_ram_i_125
       (.I0(\pc_reg[1]_0 [4]),
        .I1(\pc_reg[1]_0 [22]),
        .I2(\pc_reg[1]_0 [3]),
        .I3(\pc_reg[1]_0 [0]),
        .I4(\pc_reg[1]_0 [2]),
        .I5(\pc_reg[1]_0 [1]),
        .O(u_data_ram_i_125_n_0));
  LUT6 #(
    .INIT(64'hFFFEFFFEFEFFFFFE)) 
    u_data_ram_i_126
       (.I0(\pc_reg[1]_0 [25]),
        .I1(\pc_reg[1]_0 [23]),
        .I2(\pc_reg[1]_0 [26]),
        .I3(\pc_reg[1]_0 [0]),
        .I4(\pc_reg[1]_0 [1]),
        .I5(\pc_reg[1]_0 [5]),
        .O(u_data_ram_i_126_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    u_data_ram_i_137
       (.I0(\bbstub_douta[30]_0 ),
        .I1(\pc_reg[1]_0 [3]),
        .I2(\pc_reg[1]_0 [2]),
        .I3(\pc_reg[1]_0 [26]),
        .I4(\pc_reg[1]_0 [21]),
        .I5(\bbstub_douta[4] ),
        .O(Sftmd));
  LUT6 #(
    .INIT(64'h88888888CCCCC0CC)) 
    u_data_ram_i_172
       (.I0(\pc_reg[1]_0 [2]),
        .I1(\pc_reg[1]_0 [1]),
        .I2(\pc_reg[1]_0 [5]),
        .I3(\pc_reg[1]_0 [0]),
        .I4(\pc_reg[1]_0 [4]),
        .I5(\pc_reg[1]_0 [3]),
        .O(u_data_ram_i_172_n_0));
  LUT5 #(
    .INIT(32'hFF0CFFDF)) 
    u_data_ram_i_173
       (.I0(\pc_reg[1]_0 [0]),
        .I1(\pc_reg[1]_0 [3]),
        .I2(\pc_reg[1]_0 [1]),
        .I3(\pc_reg[1]_0 [4]),
        .I4(\pc_reg[1]_0 [5]),
        .O(u_data_ram_i_173_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    u_data_ram_i_174
       (.I0(\pc_reg[1]_0 [22]),
        .I1(\pc_reg[1]_0 [21]),
        .O(u_data_ram_i_174_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    u_data_ram_i_175
       (.I0(\pc_reg[1]_0 [4]),
        .I1(\pc_reg[1]_0 [5]),
        .O(u_data_ram_i_175_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    u_data_ram_i_181
       (.I0(\pc_reg[1]_0 [3]),
        .I1(\pc_reg[1]_0 [2]),
        .I2(\pc_reg[1]_0 [26]),
        .I3(\pc_reg[1]_0 [21]),
        .O(\bbstub_douta[26] ));
  LUT4 #(
    .INIT(16'h000D)) 
    u_data_ram_i_182
       (.I0(\pc_reg[1]_0 [0]),
        .I1(\pc_reg[1]_0 [1]),
        .I2(\pc_reg[1]_0 [5]),
        .I3(\pc_reg[1]_0 [4]),
        .O(\bbstub_douta[4] ));
  LUT2 #(
    .INIT(4'hB)) 
    u_data_ram_i_194
       (.I0(\pc_reg[1]_0 [1]),
        .I1(\pc_reg[1]_0 [0]),
        .O(\bbstub_douta[0] ));
  LUT2 #(
    .INIT(4'hE)) 
    u_data_ram_i_195
       (.I0(\pc_reg[1]_0 [4]),
        .I1(\pc_reg[1]_0 [5]),
        .O(\bbstub_douta[5] ));
  LUT3 #(
    .INIT(8'hF4)) 
    u_data_ram_i_44
       (.I0(\bbstub_douta[31] [2]),
        .I1(\bbstub_douta[31] [1]),
        .I2(ALUop),
        .O(u_data_ram_i_71_1));
  LUT2 #(
    .INIT(4'hE)) 
    u_data_ram_i_45
       (.I0(\bbstub_douta[31] [2]),
        .I1(ALUop),
        .O(u_data_ram_i_71_0));
  LUT2 #(
    .INIT(4'h8)) 
    u_data_ram_i_68
       (.I0(u_data_ram_i_70_0),
        .I1(u_data_ram_i_71_1),
        .O(u_data_ram_i_44_3));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    u_data_ram_i_69
       (.I0(\pc_reg[1]_0 [16]),
        .I1(\pc_reg[1]_0 [19]),
        .I2(\pc_reg[1]_0 [18]),
        .I3(\pc_reg[1]_0 [20]),
        .I4(\pc_reg[1]_0 [17]),
        .I5(rst_n_IBUF),
        .O(rst_n));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBF20)) 
    u_data_ram_i_70
       (.I0(\pc_reg[1]_0 [23]),
        .I1(\pc_reg[1]_0 [21]),
        .I2(\pc_reg[1]_0 [22]),
        .I3(\pc_reg[1]_0 [26]),
        .I4(\pc_reg[1]_0 [25]),
        .I5(u_data_ram_i_123_n_0),
        .O(\bbstub_douta[31] [1]));
  LUT6 #(
    .INIT(64'hFFFFFEEEEFFFFFEE)) 
    u_data_ram_i_71
       (.I0(u_data_ram_i_124_n_0),
        .I1(\pc_reg[1]_0 [25]),
        .I2(\pc_reg[1]_0 [21]),
        .I3(\pc_reg[1]_0 [22]),
        .I4(\pc_reg[1]_0 [26]),
        .I5(\pc_reg[1]_0 [23]),
        .O(ALUop));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEE0EEEE)) 
    u_data_ram_i_72
       (.I0(u_data_ram_i_125_n_0),
        .I1(u_data_ram_i_126_n_0),
        .I2(\pc_reg[1]_0 [26]),
        .I3(\pc_reg[1]_0 [25]),
        .I4(\pc_reg[1]_0 [24]),
        .I5(\pc_reg[1]_0 [21]),
        .O(\bbstub_douta[31] [0]));
endmodule

module reg_files_1
   (D,
    JrPC,
    register_reg_r1_0_31_6_11_0,
    A0,
    i__carry_i_10_0,
    register_reg_r1_0_31_12_17_0,
    i__carry__0_i_10_0,
    register_reg_r1_0_31_18_23_0,
    i__carry__1_i_10_0,
    register_reg_r1_0_31_30_31_0,
    \pc[1]_i_2 ,
    \bbstub_douta[27] ,
    \bbstub_douta[29] ,
    \bbstub_douta[31] ,
    zero_in,
    \pc_plus_4_reg[31]_i_18 ,
    ALUresult,
    \pc[31]_i_24 ,
    \result_OBUF[15]_inst_i_5_0 ,
    u_data_ram_i_82_0,
    u_data_ram_i_45,
    \result_OBUF[12]_inst_i_6_0 ,
    u_data_ram_i_45_0,
    \result_OBUF[13]_inst_i_5_0 ,
    u_data_ram_i_72,
    \result_OBUF[20]_inst_i_3_0 ,
    \pc[31]_i_38 ,
    \pc[31]_i_37 ,
    u_data_ram_i_45_1,
    \result_OBUF[14]_inst_i_5_0 ,
    u_data_ram_i_106_0,
    u_data_ram_i_94_0,
    u_data_ram_i_78_0,
    u_data_ram_i_73_0,
    u_data_ram_i_86_0,
    u_data_ram_i_98_0,
    \result_OBUF[1]_inst_i_5_0 ,
    \pc[31]_i_33 ,
    u_data_ram_i_68,
    \pc_plus_4_reg[31]_i_20 ,
    u_data_ram_i_77_0,
    u_data_ram_i_90_0,
    u_data_ram_i_102_0,
    u_data_ram_i_77_1,
    u_data_ram_i_77_2,
    u_data_ram_i_77_3,
    u_data_ram_i_77_4,
    u_data_ram_i_77_5,
    u_data_ram_i_111_0,
    u_data_ram_i_77_6,
    u_data_ram_i_77_7,
    u_data_ram_i_77_8,
    u_data_ram_i_77_9,
    u_data_ram_i_77_10,
    \result_OBUF[1]_inst_i_7_0 ,
    u_data_ram_i_77_11,
    u_data_ram_i_77_12,
    B,
    \result_OBUF[25]_inst_i_4 ,
    \result_OBUF[31]_inst_i_10 ,
    \result_OBUF[28]_inst_i_11 ,
    u_data_ram_i_116_0,
    u_data_ram_i_72_0,
    u_data_ram_i_72_1,
    u_data_ram_i_72_2,
    u_data_ram_i_72_3,
    u_data_ram_i_72_4,
    u_data_ram_i_72_5,
    u_data_ram_i_72_6,
    u_data_ram_i_72_7,
    u_data_ram_i_72_8,
    u_data_ram_i_77_13,
    \result_OBUF[0]_inst_i_13_0 ,
    u_data_ram_i_72_9,
    u_data_ram_i_72_10,
    u_data_ram_i_77_14,
    \result_OBUF[0]_inst_i_13_1 ,
    \pc[1]_i_2_0 ,
    u_data_ram_i_72_11,
    \result_OBUF[31]_inst_i_16_0 ,
    u_data_ram_i_72_12,
    u_data_ram_i_72_13,
    u_data_ram_i_72_14,
    register_reg_r1_0_31_30_31_1,
    \bbstub_douta[27]_0 ,
    DI,
    register_reg_r1_0_31_6_11_1,
    register_reg_r1_0_31_6_11_2,
    register_reg_r1_0_31_12_17_1,
    register_reg_r1_0_31_18_23_1,
    register_reg_r1_0_31_18_23_2,
    register_reg_r1_0_31_24_29_0,
    register_reg_r1_0_31_30_31_2,
    register_reg_r1_0_31_6_11_3,
    i__carry_i_10_1,
    register_reg_r1_0_31_12_17_2,
    i__carry__0_i_10_1,
    register_reg_r1_0_31_18_23_3,
    i__carry__1_i_10_1,
    register_reg_r1_0_31_30_31_3,
    u_data_ram_i_69,
    S,
    \bbstub_douta[7] ,
    \bbstub_douta[11] ,
    \bbstub_douta[15] ,
    u_data_ram_i_69_0,
    u_data_ram_i_69_1,
    u_data_ram_i_69_2,
    u_data_ram_i_69_3,
    u_data_ram_i_69_4,
    u_data_ram_i_69_5,
    u_data_ram_i_69_6,
    u_data_ram_i_69_7,
    u_data_ram_i_72_15,
    u_data_ram_i_72_16,
    \pc[31]_i_2_0 ,
    u_data_ram_i_72_17,
    u_data_ram_i_69_8,
    u_data_ram_i_69_9,
    u_data_ram_i_69_10,
    O,
    douta,
    \pc_reg[2] ,
    Jrn,
    \pc_reg[2]_0 ,
    \pc_reg[2]_1 ,
    \pc_reg[2]_2 ,
    \pc_reg[2]_3 ,
    \pc[31]_i_4 ,
    \pc[31]_i_4_0 ,
    \pc[31]_i_4_1 ,
    \pc_plus_4_reg[31]_i_3 ,
    \pc[31]_i_6_0 ,
    \pc[31]_i_12 ,
    \pc_plus_4_reg[31]_i_10 ,
    u_data_ram,
    \pc[31]_i_8 ,
    u_data_ram_i_9,
    \pc[31]_i_32_0 ,
    \result_OBUF[30]_inst_i_3 ,
    \pc[31]_i_6_1 ,
    \pc_plus_4_reg[31]_i_6_0 ,
    \pc[31]_i_6_2 ,
    \result_OBUF[21]_inst_i_1 ,
    \pc[31]_i_13_0 ,
    \result_OBUF[22]_inst_i_1 ,
    \result_OBUF[23]_inst_i_1 ,
    \pc_plus_4_reg[31]_i_6_1 ,
    \result_OBUF[27]_inst_i_1 ,
    \result_OBUF[27]_inst_i_1_0 ,
    \result_OBUF[25]_inst_i_1 ,
    \result_OBUF[24]_inst_i_1 ,
    \pc[31]_i_12_0 ,
    \result_OBUF[17]_inst_i_2_0 ,
    \result_OBUF[19]_inst_i_1 ,
    \result_OBUF[20]_inst_i_1 ,
    \pc[31]_i_10_0 ,
    \pc_plus_4_reg[31]_i_10_0 ,
    \pc[31]_i_12_1 ,
    \pc[31]_i_12_2 ,
    \pc_plus_4_reg[31]_i_5 ,
    \pc[31]_i_9 ,
    u_data_ram_0,
    \pc[31]_i_32_1 ,
    \result_OBUF[17]_inst_i_2_1 ,
    ALUresult0_carry__3,
    \result_OBUF[28]_inst_i_3 ,
    \result_OBUF[0]_inst_i_2 ,
    CO,
    ALUSrc_in,
    Sftmd,
    \result_OBUF[31]_inst_i_14_0 ,
    \result_OBUF[31]_inst_i_14_1 ,
    \result_OBUF[31]_inst_i_14_2 ,
    u_data_ram_i_170_0,
    u_data_ram_i_170_1,
    rst_n_IBUF,
    ALUresult0_carry__3_0,
    clk_out1,
    writeData);
  output [0:0]D;
  output [30:0]JrPC;
  output [3:0]register_reg_r1_0_31_6_11_0;
  output [1:0]A0;
  output [3:0]i__carry_i_10_0;
  output [3:0]register_reg_r1_0_31_12_17_0;
  output [3:0]i__carry__0_i_10_0;
  output [3:0]register_reg_r1_0_31_18_23_0;
  output [3:0]i__carry__1_i_10_0;
  output [3:0]register_reg_r1_0_31_30_31_0;
  output [3:0]\pc[1]_i_2 ;
  output \bbstub_douta[27] ;
  output \bbstub_douta[29] ;
  output \bbstub_douta[31] ;
  output zero_in;
  output \pc_plus_4_reg[31]_i_18 ;
  output [11:0]ALUresult;
  output \pc[31]_i_24 ;
  output \result_OBUF[15]_inst_i_5_0 ;
  output u_data_ram_i_82_0;
  output u_data_ram_i_45;
  output \result_OBUF[12]_inst_i_6_0 ;
  output u_data_ram_i_45_0;
  output \result_OBUF[13]_inst_i_5_0 ;
  output u_data_ram_i_72;
  output \result_OBUF[20]_inst_i_3_0 ;
  output \pc[31]_i_38 ;
  output \pc[31]_i_37 ;
  output u_data_ram_i_45_1;
  output \result_OBUF[14]_inst_i_5_0 ;
  output u_data_ram_i_106_0;
  output u_data_ram_i_94_0;
  output u_data_ram_i_78_0;
  output u_data_ram_i_73_0;
  output u_data_ram_i_86_0;
  output u_data_ram_i_98_0;
  output \result_OBUF[1]_inst_i_5_0 ;
  output \pc[31]_i_33 ;
  output [0:0]u_data_ram_i_68;
  output \pc_plus_4_reg[31]_i_20 ;
  output u_data_ram_i_77_0;
  output u_data_ram_i_90_0;
  output u_data_ram_i_102_0;
  output u_data_ram_i_77_1;
  output u_data_ram_i_77_2;
  output u_data_ram_i_77_3;
  output u_data_ram_i_77_4;
  output u_data_ram_i_77_5;
  output u_data_ram_i_111_0;
  output u_data_ram_i_77_6;
  output u_data_ram_i_77_7;
  output u_data_ram_i_77_8;
  output u_data_ram_i_77_9;
  output u_data_ram_i_77_10;
  output \result_OBUF[1]_inst_i_7_0 ;
  output u_data_ram_i_77_11;
  output u_data_ram_i_77_12;
  output [31:0]B;
  output \result_OBUF[25]_inst_i_4 ;
  output \result_OBUF[31]_inst_i_10 ;
  output \result_OBUF[28]_inst_i_11 ;
  output u_data_ram_i_116_0;
  output u_data_ram_i_72_0;
  output u_data_ram_i_72_1;
  output u_data_ram_i_72_2;
  output u_data_ram_i_72_3;
  output u_data_ram_i_72_4;
  output u_data_ram_i_72_5;
  output u_data_ram_i_72_6;
  output u_data_ram_i_72_7;
  output u_data_ram_i_72_8;
  output u_data_ram_i_77_13;
  output \result_OBUF[0]_inst_i_13_0 ;
  output u_data_ram_i_72_9;
  output u_data_ram_i_72_10;
  output u_data_ram_i_77_14;
  output \result_OBUF[0]_inst_i_13_1 ;
  output [3:0]\pc[1]_i_2_0 ;
  output u_data_ram_i_72_11;
  output \result_OBUF[31]_inst_i_16_0 ;
  output u_data_ram_i_72_12;
  output u_data_ram_i_72_13;
  output u_data_ram_i_72_14;
  output [0:0]register_reg_r1_0_31_30_31_1;
  output \bbstub_douta[27]_0 ;
  output [3:0]DI;
  output [3:0]register_reg_r1_0_31_6_11_1;
  output [3:0]register_reg_r1_0_31_6_11_2;
  output [3:0]register_reg_r1_0_31_12_17_1;
  output [3:0]register_reg_r1_0_31_18_23_1;
  output [3:0]register_reg_r1_0_31_18_23_2;
  output [3:0]register_reg_r1_0_31_24_29_0;
  output [2:0]register_reg_r1_0_31_30_31_2;
  output [3:0]register_reg_r1_0_31_6_11_3;
  output [3:0]i__carry_i_10_1;
  output [3:0]register_reg_r1_0_31_12_17_2;
  output [3:0]i__carry__0_i_10_1;
  output [3:0]register_reg_r1_0_31_18_23_3;
  output [3:0]i__carry__1_i_10_1;
  output [3:0]register_reg_r1_0_31_30_31_3;
  output [3:0]u_data_ram_i_69;
  output [3:0]S;
  output [3:0]\bbstub_douta[7] ;
  output [3:0]\bbstub_douta[11] ;
  output [3:0]\bbstub_douta[15] ;
  output [3:0]u_data_ram_i_69_0;
  output [3:0]u_data_ram_i_69_1;
  output [3:0]u_data_ram_i_69_2;
  output [3:0]u_data_ram_i_69_3;
  output [3:0]u_data_ram_i_69_4;
  output [3:0]u_data_ram_i_69_5;
  output [3:0]u_data_ram_i_69_6;
  output [3:0]u_data_ram_i_69_7;
  output u_data_ram_i_72_15;
  output u_data_ram_i_72_16;
  output \pc[31]_i_2_0 ;
  output u_data_ram_i_72_17;
  output [3:0]u_data_ram_i_69_8;
  output [3:0]u_data_ram_i_69_9;
  output [3:0]u_data_ram_i_69_10;
  input [0:0]O;
  input [31:0]douta;
  input [0:0]\pc_reg[2] ;
  input Jrn;
  input \pc_reg[2]_0 ;
  input \pc_reg[2]_1 ;
  input \pc_reg[2]_2 ;
  input \pc_reg[2]_3 ;
  input \pc[31]_i_4 ;
  input \pc[31]_i_4_0 ;
  input \pc[31]_i_4_1 ;
  input \pc_plus_4_reg[31]_i_3 ;
  input [3:0]\pc[31]_i_6_0 ;
  input \pc[31]_i_12 ;
  input \pc_plus_4_reg[31]_i_10 ;
  input u_data_ram;
  input \pc[31]_i_8 ;
  input u_data_ram_i_9;
  input \pc[31]_i_32_0 ;
  input [1:0]\result_OBUF[30]_inst_i_3 ;
  input \pc[31]_i_6_1 ;
  input \pc_plus_4_reg[31]_i_6_0 ;
  input \pc[31]_i_6_2 ;
  input \result_OBUF[21]_inst_i_1 ;
  input \pc[31]_i_13_0 ;
  input \result_OBUF[22]_inst_i_1 ;
  input \result_OBUF[23]_inst_i_1 ;
  input \pc_plus_4_reg[31]_i_6_1 ;
  input [1:0]\result_OBUF[27]_inst_i_1 ;
  input [1:0]\result_OBUF[27]_inst_i_1_0 ;
  input \result_OBUF[25]_inst_i_1 ;
  input \result_OBUF[24]_inst_i_1 ;
  input \pc[31]_i_12_0 ;
  input \result_OBUF[17]_inst_i_2_0 ;
  input \result_OBUF[19]_inst_i_1 ;
  input \result_OBUF[20]_inst_i_1 ;
  input \pc[31]_i_10_0 ;
  input \pc_plus_4_reg[31]_i_10_0 ;
  input \pc[31]_i_12_1 ;
  input \pc[31]_i_12_2 ;
  input \pc_plus_4_reg[31]_i_5 ;
  input \pc[31]_i_9 ;
  input u_data_ram_0;
  input \pc[31]_i_32_1 ;
  input \result_OBUF[17]_inst_i_2_1 ;
  input ALUresult0_carry__3;
  input \result_OBUF[28]_inst_i_3 ;
  input [0:0]\result_OBUF[0]_inst_i_2 ;
  input [0:0]CO;
  input ALUSrc_in;
  input Sftmd;
  input \result_OBUF[31]_inst_i_14_0 ;
  input \result_OBUF[31]_inst_i_14_1 ;
  input \result_OBUF[31]_inst_i_14_2 ;
  input u_data_ram_i_170_0;
  input u_data_ram_i_170_1;
  input rst_n_IBUF;
  input ALUresult0_carry__3_0;
  input clk_out1;
  input [31:0]writeData;

  wire [1:0]A0;
  wire [31:2]A0_0;
  wire ALUSrc_in;
  wire [11:0]ALUresult;
  wire ALUresult0_carry__3;
  wire ALUresult0_carry__3_0;
  wire [31:0]B;
  wire [31:0]B0;
  wire [0:0]CO;
  wire [0:0]D;
  wire [3:0]DI;
  wire [30:0]JrPC;
  wire Jrn;
  wire [0:0]O;
  wire [3:0]S;
  wire Sftmd;
  wire [3:0]\bbstub_douta[11] ;
  wire [3:0]\bbstub_douta[15] ;
  wire \bbstub_douta[27] ;
  wire \bbstub_douta[27]_0 ;
  wire \bbstub_douta[29] ;
  wire \bbstub_douta[31] ;
  wire [3:0]\bbstub_douta[7] ;
  wire clk_out1;
  wire [31:0]douta;
  wire [3:0]i__carry__0_i_10_0;
  wire [3:0]i__carry__0_i_10_1;
  wire [3:0]i__carry__1_i_10_0;
  wire [3:0]i__carry__1_i_10_1;
  wire [3:0]i__carry_i_10_0;
  wire [3:0]i__carry_i_10_1;
  wire [3:0]\pc[1]_i_2 ;
  wire [3:0]\pc[1]_i_2_0 ;
  wire \pc[2]_i_4_n_0 ;
  wire \pc[2]_i_5_n_0 ;
  wire \pc[31]_i_10_0 ;
  wire \pc[31]_i_10_n_0 ;
  wire \pc[31]_i_11_n_0 ;
  wire \pc[31]_i_12 ;
  wire \pc[31]_i_12_0 ;
  wire \pc[31]_i_12_1 ;
  wire \pc[31]_i_12_2 ;
  wire \pc[31]_i_13_0 ;
  wire \pc[31]_i_16_n_0 ;
  wire \pc[31]_i_18_n_0 ;
  wire \pc[31]_i_19_n_0 ;
  wire \pc[31]_i_22_n_0 ;
  wire \pc[31]_i_23_n_0 ;
  wire \pc[31]_i_24 ;
  wire \pc[31]_i_2_0 ;
  wire \pc[31]_i_31_n_0 ;
  wire \pc[31]_i_32_0 ;
  wire \pc[31]_i_32_1 ;
  wire \pc[31]_i_32_n_0 ;
  wire \pc[31]_i_33 ;
  wire \pc[31]_i_34_n_0 ;
  wire \pc[31]_i_35_n_0 ;
  wire \pc[31]_i_36_n_0 ;
  wire \pc[31]_i_37 ;
  wire \pc[31]_i_38 ;
  wire \pc[31]_i_39_n_0 ;
  wire \pc[31]_i_4 ;
  wire \pc[31]_i_40_n_0 ;
  wire \pc[31]_i_41_n_0 ;
  wire \pc[31]_i_42_n_0 ;
  wire \pc[31]_i_43_n_0 ;
  wire \pc[31]_i_44_n_0 ;
  wire \pc[31]_i_45_n_0 ;
  wire \pc[31]_i_46_n_0 ;
  wire \pc[31]_i_47_n_0 ;
  wire \pc[31]_i_48_n_0 ;
  wire \pc[31]_i_49_n_0 ;
  wire \pc[31]_i_4_0 ;
  wire \pc[31]_i_4_1 ;
  wire \pc[31]_i_50_n_0 ;
  wire \pc[31]_i_51_n_0 ;
  wire [3:0]\pc[31]_i_6_0 ;
  wire \pc[31]_i_6_1 ;
  wire \pc[31]_i_6_2 ;
  wire \pc[31]_i_7_n_0 ;
  wire \pc[31]_i_8 ;
  wire \pc[31]_i_9 ;
  wire \pc_plus_4_reg[31]_i_10 ;
  wire \pc_plus_4_reg[31]_i_10_0 ;
  wire \pc_plus_4_reg[31]_i_15_n_0 ;
  wire \pc_plus_4_reg[31]_i_16_n_0 ;
  wire \pc_plus_4_reg[31]_i_17_n_0 ;
  wire \pc_plus_4_reg[31]_i_18 ;
  wire \pc_plus_4_reg[31]_i_19_n_0 ;
  wire \pc_plus_4_reg[31]_i_20 ;
  wire \pc_plus_4_reg[31]_i_24_n_0 ;
  wire \pc_plus_4_reg[31]_i_3 ;
  wire \pc_plus_4_reg[31]_i_5 ;
  wire \pc_plus_4_reg[31]_i_6_0 ;
  wire \pc_plus_4_reg[31]_i_6_1 ;
  wire [0:0]\pc_reg[2] ;
  wire \pc_reg[2]_0 ;
  wire \pc_reg[2]_1 ;
  wire \pc_reg[2]_2 ;
  wire \pc_reg[2]_3 ;
  wire [4:0]rW_select;
  wire register_reg_r1_0_31_0_5_i_11_n_0;
  wire register_reg_r1_0_31_0_5_i_12_n_0;
  wire register_reg_r1_0_31_0_5_i_1_n_0;
  wire register_reg_r1_0_31_0_5_i_7_n_0;
  wire register_reg_r1_0_31_0_5_i_8_n_0;
  wire register_reg_r1_0_31_0_5_i_9_n_0;
  wire [3:0]register_reg_r1_0_31_12_17_0;
  wire [3:0]register_reg_r1_0_31_12_17_1;
  wire [3:0]register_reg_r1_0_31_12_17_2;
  wire [3:0]register_reg_r1_0_31_18_23_0;
  wire [3:0]register_reg_r1_0_31_18_23_1;
  wire [3:0]register_reg_r1_0_31_18_23_2;
  wire [3:0]register_reg_r1_0_31_18_23_3;
  wire [3:0]register_reg_r1_0_31_24_29_0;
  wire [3:0]register_reg_r1_0_31_30_31_0;
  wire [0:0]register_reg_r1_0_31_30_31_1;
  wire [2:0]register_reg_r1_0_31_30_31_2;
  wire [3:0]register_reg_r1_0_31_30_31_3;
  wire [3:0]register_reg_r1_0_31_6_11_0;
  wire [3:0]register_reg_r1_0_31_6_11_1;
  wire [3:0]register_reg_r1_0_31_6_11_2;
  wire [3:0]register_reg_r1_0_31_6_11_3;
  wire \result_OBUF[0]_inst_i_10_n_0 ;
  wire \result_OBUF[0]_inst_i_12_n_0 ;
  wire \result_OBUF[0]_inst_i_13_0 ;
  wire \result_OBUF[0]_inst_i_13_1 ;
  wire \result_OBUF[0]_inst_i_13_n_0 ;
  wire \result_OBUF[0]_inst_i_16_n_0 ;
  wire \result_OBUF[0]_inst_i_17_n_0 ;
  wire \result_OBUF[0]_inst_i_18_n_0 ;
  wire \result_OBUF[0]_inst_i_19_n_0 ;
  wire [0:0]\result_OBUF[0]_inst_i_2 ;
  wire \result_OBUF[12]_inst_i_6_0 ;
  wire \result_OBUF[12]_inst_i_6_n_0 ;
  wire \result_OBUF[12]_inst_i_7_n_0 ;
  wire \result_OBUF[12]_inst_i_8_n_0 ;
  wire \result_OBUF[12]_inst_i_9_n_0 ;
  wire \result_OBUF[13]_inst_i_5_0 ;
  wire \result_OBUF[13]_inst_i_5_n_0 ;
  wire \result_OBUF[13]_inst_i_6_n_0 ;
  wire \result_OBUF[13]_inst_i_7_n_0 ;
  wire \result_OBUF[13]_inst_i_8_n_0 ;
  wire \result_OBUF[13]_inst_i_9_n_0 ;
  wire \result_OBUF[14]_inst_i_10_n_0 ;
  wire \result_OBUF[14]_inst_i_5_0 ;
  wire \result_OBUF[14]_inst_i_5_n_0 ;
  wire \result_OBUF[14]_inst_i_6_n_0 ;
  wire \result_OBUF[14]_inst_i_7_n_0 ;
  wire \result_OBUF[14]_inst_i_8_n_0 ;
  wire \result_OBUF[14]_inst_i_9_n_0 ;
  wire \result_OBUF[15]_inst_i_10_n_0 ;
  wire \result_OBUF[15]_inst_i_5_0 ;
  wire \result_OBUF[15]_inst_i_5_n_0 ;
  wire \result_OBUF[15]_inst_i_6_n_0 ;
  wire \result_OBUF[15]_inst_i_7_n_0 ;
  wire \result_OBUF[15]_inst_i_8_n_0 ;
  wire \result_OBUF[15]_inst_i_9_n_0 ;
  wire \result_OBUF[16]_inst_i_10_n_0 ;
  wire \result_OBUF[16]_inst_i_11_n_0 ;
  wire \result_OBUF[16]_inst_i_12_n_0 ;
  wire \result_OBUF[16]_inst_i_13_n_0 ;
  wire \result_OBUF[16]_inst_i_14_n_0 ;
  wire \result_OBUF[16]_inst_i_5_n_0 ;
  wire \result_OBUF[16]_inst_i_6_n_0 ;
  wire \result_OBUF[16]_inst_i_8_n_0 ;
  wire \result_OBUF[16]_inst_i_9_n_0 ;
  wire \result_OBUF[17]_inst_i_10_n_0 ;
  wire \result_OBUF[17]_inst_i_11_n_0 ;
  wire \result_OBUF[17]_inst_i_12_n_0 ;
  wire \result_OBUF[17]_inst_i_13_n_0 ;
  wire \result_OBUF[17]_inst_i_2_0 ;
  wire \result_OBUF[17]_inst_i_2_1 ;
  wire \result_OBUF[17]_inst_i_4_n_0 ;
  wire \result_OBUF[17]_inst_i_5_n_0 ;
  wire \result_OBUF[17]_inst_i_7_n_0 ;
  wire \result_OBUF[17]_inst_i_8_n_0 ;
  wire \result_OBUF[17]_inst_i_9_n_0 ;
  wire \result_OBUF[18]_inst_i_10_n_0 ;
  wire \result_OBUF[18]_inst_i_11_n_0 ;
  wire \result_OBUF[18]_inst_i_12_n_0 ;
  wire \result_OBUF[18]_inst_i_13_n_0 ;
  wire \result_OBUF[18]_inst_i_14_n_0 ;
  wire \result_OBUF[18]_inst_i_7_n_0 ;
  wire \result_OBUF[18]_inst_i_8_n_0 ;
  wire \result_OBUF[18]_inst_i_9_n_0 ;
  wire \result_OBUF[19]_inst_i_1 ;
  wire \result_OBUF[19]_inst_i_10_n_0 ;
  wire \result_OBUF[19]_inst_i_11_n_0 ;
  wire \result_OBUF[19]_inst_i_12_n_0 ;
  wire \result_OBUF[19]_inst_i_13_n_0 ;
  wire \result_OBUF[19]_inst_i_14_n_0 ;
  wire \result_OBUF[19]_inst_i_15_n_0 ;
  wire \result_OBUF[19]_inst_i_4_n_0 ;
  wire \result_OBUF[19]_inst_i_5_n_0 ;
  wire \result_OBUF[19]_inst_i_7_n_0 ;
  wire \result_OBUF[19]_inst_i_8_n_0 ;
  wire \result_OBUF[19]_inst_i_9_n_0 ;
  wire \result_OBUF[1]_inst_i_5_0 ;
  wire \result_OBUF[1]_inst_i_5_n_0 ;
  wire \result_OBUF[1]_inst_i_6_n_0 ;
  wire \result_OBUF[1]_inst_i_7_0 ;
  wire \result_OBUF[1]_inst_i_7_n_0 ;
  wire \result_OBUF[20]_inst_i_1 ;
  wire \result_OBUF[20]_inst_i_10_n_0 ;
  wire \result_OBUF[20]_inst_i_11_n_0 ;
  wire \result_OBUF[20]_inst_i_12_n_0 ;
  wire \result_OBUF[20]_inst_i_13_n_0 ;
  wire \result_OBUF[20]_inst_i_14_n_0 ;
  wire \result_OBUF[20]_inst_i_15_n_0 ;
  wire \result_OBUF[20]_inst_i_3_0 ;
  wire \result_OBUF[20]_inst_i_5_n_0 ;
  wire \result_OBUF[20]_inst_i_6_n_0 ;
  wire \result_OBUF[20]_inst_i_8_n_0 ;
  wire \result_OBUF[20]_inst_i_9_n_0 ;
  wire \result_OBUF[21]_inst_i_1 ;
  wire \result_OBUF[21]_inst_i_10_n_0 ;
  wire \result_OBUF[21]_inst_i_11_n_0 ;
  wire \result_OBUF[21]_inst_i_12_n_0 ;
  wire \result_OBUF[21]_inst_i_13_n_0 ;
  wire \result_OBUF[21]_inst_i_14_n_0 ;
  wire \result_OBUF[21]_inst_i_4_n_0 ;
  wire \result_OBUF[21]_inst_i_5_n_0 ;
  wire \result_OBUF[21]_inst_i_7_n_0 ;
  wire \result_OBUF[21]_inst_i_8_n_0 ;
  wire \result_OBUF[21]_inst_i_9_n_0 ;
  wire \result_OBUF[22]_inst_i_1 ;
  wire \result_OBUF[22]_inst_i_10_n_0 ;
  wire \result_OBUF[22]_inst_i_11_n_0 ;
  wire \result_OBUF[22]_inst_i_12_n_0 ;
  wire \result_OBUF[22]_inst_i_13_n_0 ;
  wire \result_OBUF[22]_inst_i_14_n_0 ;
  wire \result_OBUF[22]_inst_i_4_n_0 ;
  wire \result_OBUF[22]_inst_i_5_n_0 ;
  wire \result_OBUF[22]_inst_i_7_n_0 ;
  wire \result_OBUF[22]_inst_i_8_n_0 ;
  wire \result_OBUF[22]_inst_i_9_n_0 ;
  wire \result_OBUF[23]_inst_i_1 ;
  wire \result_OBUF[23]_inst_i_10_n_0 ;
  wire \result_OBUF[23]_inst_i_11_n_0 ;
  wire \result_OBUF[23]_inst_i_12_n_0 ;
  wire \result_OBUF[23]_inst_i_13_n_0 ;
  wire \result_OBUF[23]_inst_i_4_n_0 ;
  wire \result_OBUF[23]_inst_i_5_n_0 ;
  wire \result_OBUF[23]_inst_i_7_n_0 ;
  wire \result_OBUF[23]_inst_i_8_n_0 ;
  wire \result_OBUF[23]_inst_i_9_n_0 ;
  wire \result_OBUF[24]_inst_i_1 ;
  wire \result_OBUF[24]_inst_i_10_n_0 ;
  wire \result_OBUF[24]_inst_i_11_n_0 ;
  wire \result_OBUF[24]_inst_i_12_n_0 ;
  wire \result_OBUF[24]_inst_i_13_n_0 ;
  wire \result_OBUF[24]_inst_i_14_n_0 ;
  wire \result_OBUF[24]_inst_i_15_n_0 ;
  wire \result_OBUF[24]_inst_i_5_n_0 ;
  wire \result_OBUF[24]_inst_i_6_n_0 ;
  wire \result_OBUF[24]_inst_i_8_n_0 ;
  wire \result_OBUF[24]_inst_i_9_n_0 ;
  wire \result_OBUF[25]_inst_i_1 ;
  wire \result_OBUF[25]_inst_i_13_n_0 ;
  wire \result_OBUF[25]_inst_i_14_n_0 ;
  wire \result_OBUF[25]_inst_i_15_n_0 ;
  wire \result_OBUF[25]_inst_i_16_n_0 ;
  wire \result_OBUF[25]_inst_i_17_n_0 ;
  wire \result_OBUF[25]_inst_i_18_n_0 ;
  wire \result_OBUF[25]_inst_i_19_n_0 ;
  wire \result_OBUF[25]_inst_i_20_n_0 ;
  wire \result_OBUF[25]_inst_i_21_n_0 ;
  wire \result_OBUF[25]_inst_i_22_n_0 ;
  wire \result_OBUF[25]_inst_i_4 ;
  wire \result_OBUF[25]_inst_i_5_n_0 ;
  wire \result_OBUF[25]_inst_i_6_n_0 ;
  wire \result_OBUF[26]_inst_i_4_n_0 ;
  wire \result_OBUF[26]_inst_i_5_n_0 ;
  wire \result_OBUF[26]_inst_i_6_n_0 ;
  wire \result_OBUF[26]_inst_i_7_n_0 ;
  wire \result_OBUF[26]_inst_i_8_n_0 ;
  wire [1:0]\result_OBUF[27]_inst_i_1 ;
  wire \result_OBUF[27]_inst_i_10_n_0 ;
  wire \result_OBUF[27]_inst_i_11_n_0 ;
  wire [1:0]\result_OBUF[27]_inst_i_1_0 ;
  wire \result_OBUF[27]_inst_i_3_n_0 ;
  wire \result_OBUF[27]_inst_i_4_n_0 ;
  wire \result_OBUF[27]_inst_i_5_n_0 ;
  wire \result_OBUF[27]_inst_i_6_n_0 ;
  wire \result_OBUF[27]_inst_i_7_n_0 ;
  wire \result_OBUF[27]_inst_i_8_n_0 ;
  wire \result_OBUF[27]_inst_i_9_n_0 ;
  wire \result_OBUF[28]_inst_i_10_n_0 ;
  wire \result_OBUF[28]_inst_i_11 ;
  wire \result_OBUF[28]_inst_i_12_n_0 ;
  wire \result_OBUF[28]_inst_i_13_n_0 ;
  wire \result_OBUF[28]_inst_i_14_n_0 ;
  wire \result_OBUF[28]_inst_i_15_n_0 ;
  wire \result_OBUF[28]_inst_i_17_n_0 ;
  wire \result_OBUF[28]_inst_i_3 ;
  wire \result_OBUF[28]_inst_i_9_n_0 ;
  wire \result_OBUF[29]_inst_i_10_n_0 ;
  wire \result_OBUF[29]_inst_i_11_n_0 ;
  wire \result_OBUF[29]_inst_i_12_n_0 ;
  wire \result_OBUF[29]_inst_i_13_n_0 ;
  wire \result_OBUF[29]_inst_i_4_n_0 ;
  wire \result_OBUF[29]_inst_i_5_n_0 ;
  wire \result_OBUF[29]_inst_i_6_n_0 ;
  wire \result_OBUF[29]_inst_i_8_n_0 ;
  wire \result_OBUF[29]_inst_i_9_n_0 ;
  wire \result_OBUF[30]_inst_i_10_n_0 ;
  wire \result_OBUF[30]_inst_i_11_n_0 ;
  wire \result_OBUF[30]_inst_i_12_n_0 ;
  wire [1:0]\result_OBUF[30]_inst_i_3 ;
  wire \result_OBUF[30]_inst_i_8_n_0 ;
  wire \result_OBUF[30]_inst_i_9_n_0 ;
  wire \result_OBUF[31]_inst_i_10 ;
  wire \result_OBUF[31]_inst_i_14_0 ;
  wire \result_OBUF[31]_inst_i_14_1 ;
  wire \result_OBUF[31]_inst_i_14_2 ;
  wire \result_OBUF[31]_inst_i_14_n_0 ;
  wire \result_OBUF[31]_inst_i_15_n_0 ;
  wire \result_OBUF[31]_inst_i_16_0 ;
  wire \result_OBUF[31]_inst_i_16_n_0 ;
  wire \result_OBUF[31]_inst_i_17_n_0 ;
  wire \result_OBUF[31]_inst_i_18_n_0 ;
  wire \result_OBUF[31]_inst_i_19_n_0 ;
  wire \result_OBUF[31]_inst_i_20_n_0 ;
  wire \result_OBUF[31]_inst_i_21_n_0 ;
  wire \result_OBUF[31]_inst_i_22_n_0 ;
  wire \result_OBUF[31]_inst_i_23_n_0 ;
  wire \result_OBUF[31]_inst_i_24_n_0 ;
  wire rst_n_IBUF;
  wire [4:0]\u_ALU_1/A_or_Shift__41 ;
  wire [30:0]\u_ALU_1/B_signed ;
  wire [31:31]\u_ALU_1/B_signed__0 ;
  wire u_data_ram;
  wire u_data_ram_0;
  wire u_data_ram_i_100_n_0;
  wire u_data_ram_i_101_n_0;
  wire u_data_ram_i_102_0;
  wire u_data_ram_i_102_n_0;
  wire u_data_ram_i_103_n_0;
  wire u_data_ram_i_104_n_0;
  wire u_data_ram_i_105_n_0;
  wire u_data_ram_i_106_0;
  wire u_data_ram_i_106_n_0;
  wire u_data_ram_i_107_n_0;
  wire u_data_ram_i_108_n_0;
  wire u_data_ram_i_109_n_0;
  wire u_data_ram_i_110_n_0;
  wire u_data_ram_i_111_0;
  wire u_data_ram_i_111_n_0;
  wire u_data_ram_i_113_n_0;
  wire u_data_ram_i_114_n_0;
  wire u_data_ram_i_115_n_0;
  wire u_data_ram_i_116_0;
  wire u_data_ram_i_116_n_0;
  wire u_data_ram_i_117_n_0;
  wire u_data_ram_i_118_n_0;
  wire u_data_ram_i_119_n_0;
  wire u_data_ram_i_120_n_0;
  wire u_data_ram_i_121_n_0;
  wire u_data_ram_i_122_n_0;
  wire u_data_ram_i_127_n_0;
  wire u_data_ram_i_128_n_0;
  wire u_data_ram_i_129_n_0;
  wire u_data_ram_i_131_n_0;
  wire u_data_ram_i_132_n_0;
  wire u_data_ram_i_133_n_0;
  wire u_data_ram_i_134_n_0;
  wire u_data_ram_i_136_n_0;
  wire u_data_ram_i_138_n_0;
  wire u_data_ram_i_139_n_0;
  wire u_data_ram_i_140_n_0;
  wire u_data_ram_i_141_n_0;
  wire u_data_ram_i_142_n_0;
  wire u_data_ram_i_143_n_0;
  wire u_data_ram_i_144_n_0;
  wire u_data_ram_i_145_n_0;
  wire u_data_ram_i_146_n_0;
  wire u_data_ram_i_147_n_0;
  wire u_data_ram_i_148_n_0;
  wire u_data_ram_i_149_n_0;
  wire u_data_ram_i_150_n_0;
  wire u_data_ram_i_151_n_0;
  wire u_data_ram_i_152_n_0;
  wire u_data_ram_i_153_n_0;
  wire u_data_ram_i_154_n_0;
  wire u_data_ram_i_155_n_0;
  wire u_data_ram_i_156_n_0;
  wire u_data_ram_i_157_n_0;
  wire u_data_ram_i_158_n_0;
  wire u_data_ram_i_159_n_0;
  wire u_data_ram_i_160_n_0;
  wire u_data_ram_i_161_n_0;
  wire u_data_ram_i_162_n_0;
  wire u_data_ram_i_163_n_0;
  wire u_data_ram_i_166_n_0;
  wire u_data_ram_i_167_n_0;
  wire u_data_ram_i_168_n_0;
  wire u_data_ram_i_169_n_0;
  wire u_data_ram_i_170_0;
  wire u_data_ram_i_170_1;
  wire u_data_ram_i_170_n_0;
  wire u_data_ram_i_171_n_0;
  wire u_data_ram_i_176_n_0;
  wire u_data_ram_i_177_n_0;
  wire u_data_ram_i_178_n_0;
  wire u_data_ram_i_179_n_0;
  wire u_data_ram_i_180_n_0;
  wire u_data_ram_i_183_n_0;
  wire u_data_ram_i_184_n_0;
  wire u_data_ram_i_185_n_0;
  wire u_data_ram_i_186_n_0;
  wire u_data_ram_i_187_n_0;
  wire u_data_ram_i_188_n_0;
  wire u_data_ram_i_189_n_0;
  wire u_data_ram_i_190_n_0;
  wire u_data_ram_i_191_n_0;
  wire u_data_ram_i_192_n_0;
  wire u_data_ram_i_193_n_0;
  wire u_data_ram_i_45;
  wire u_data_ram_i_45_0;
  wire u_data_ram_i_45_1;
  wire u_data_ram_i_65_n_0;
  wire u_data_ram_i_66_n_0;
  wire u_data_ram_i_67_n_0;
  wire [0:0]u_data_ram_i_68;
  wire [3:0]u_data_ram_i_69;
  wire [3:0]u_data_ram_i_69_0;
  wire [3:0]u_data_ram_i_69_1;
  wire [3:0]u_data_ram_i_69_10;
  wire [3:0]u_data_ram_i_69_2;
  wire [3:0]u_data_ram_i_69_3;
  wire [3:0]u_data_ram_i_69_4;
  wire [3:0]u_data_ram_i_69_5;
  wire [3:0]u_data_ram_i_69_6;
  wire [3:0]u_data_ram_i_69_7;
  wire [3:0]u_data_ram_i_69_8;
  wire [3:0]u_data_ram_i_69_9;
  wire u_data_ram_i_72;
  wire u_data_ram_i_72_0;
  wire u_data_ram_i_72_1;
  wire u_data_ram_i_72_10;
  wire u_data_ram_i_72_11;
  wire u_data_ram_i_72_12;
  wire u_data_ram_i_72_13;
  wire u_data_ram_i_72_14;
  wire u_data_ram_i_72_15;
  wire u_data_ram_i_72_16;
  wire u_data_ram_i_72_17;
  wire u_data_ram_i_72_2;
  wire u_data_ram_i_72_3;
  wire u_data_ram_i_72_4;
  wire u_data_ram_i_72_5;
  wire u_data_ram_i_72_6;
  wire u_data_ram_i_72_7;
  wire u_data_ram_i_72_8;
  wire u_data_ram_i_72_9;
  wire u_data_ram_i_73_0;
  wire u_data_ram_i_73_n_0;
  wire u_data_ram_i_74_n_0;
  wire u_data_ram_i_75_n_0;
  wire u_data_ram_i_76_n_0;
  wire u_data_ram_i_77_0;
  wire u_data_ram_i_77_1;
  wire u_data_ram_i_77_10;
  wire u_data_ram_i_77_11;
  wire u_data_ram_i_77_12;
  wire u_data_ram_i_77_13;
  wire u_data_ram_i_77_14;
  wire u_data_ram_i_77_2;
  wire u_data_ram_i_77_3;
  wire u_data_ram_i_77_4;
  wire u_data_ram_i_77_5;
  wire u_data_ram_i_77_6;
  wire u_data_ram_i_77_7;
  wire u_data_ram_i_77_8;
  wire u_data_ram_i_77_9;
  wire u_data_ram_i_77_n_0;
  wire u_data_ram_i_78_0;
  wire u_data_ram_i_78_n_0;
  wire u_data_ram_i_79_n_0;
  wire u_data_ram_i_80_n_0;
  wire u_data_ram_i_81_n_0;
  wire u_data_ram_i_82_0;
  wire u_data_ram_i_82_n_0;
  wire u_data_ram_i_83_n_0;
  wire u_data_ram_i_84_n_0;
  wire u_data_ram_i_85_n_0;
  wire u_data_ram_i_86_0;
  wire u_data_ram_i_86_n_0;
  wire u_data_ram_i_87_n_0;
  wire u_data_ram_i_88_n_0;
  wire u_data_ram_i_89_n_0;
  wire u_data_ram_i_9;
  wire u_data_ram_i_90_0;
  wire u_data_ram_i_90_n_0;
  wire u_data_ram_i_91_n_0;
  wire u_data_ram_i_92_n_0;
  wire u_data_ram_i_93_n_0;
  wire u_data_ram_i_94_0;
  wire u_data_ram_i_94_n_0;
  wire u_data_ram_i_95_n_0;
  wire u_data_ram_i_96_n_0;
  wire u_data_ram_i_97_n_0;
  wire u_data_ram_i_98_0;
  wire u_data_ram_i_98_n_0;
  wire u_data_ram_i_99_n_0;
  wire [1:1]\u_pc_1/p_0_in ;
  wire [31:0]writeData;
  wire zero_in;
  wire [1:0]NLW_register_reg_r1_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_register_reg_r1_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_register_reg_r1_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_register_reg_r1_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_register_reg_r1_0_31_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_register_reg_r1_0_31_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_register_reg_r1_0_31_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_register_reg_r1_0_31_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_register_reg_r2_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_register_reg_r2_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_register_reg_r2_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_register_reg_r2_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_register_reg_r2_0_31_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_register_reg_r2_0_31_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_register_reg_r2_0_31_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_register_reg_r2_0_31_6_11_DOD_UNCONNECTED;

  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__0_i_1
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[7]),
        .O(JrPC[7]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__0_i_2
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[6]),
        .O(JrPC[6]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__0_i_3
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[5]),
        .O(JrPC[5]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__0_i_4
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[4]),
        .O(JrPC[4]));
  LUT6 #(
    .INIT(64'h7777788888887888)) 
    ALUresult0_carry__0_i_5
       (.I0(A0_0[7]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[7]),
        .I3(ALUresult0_carry__3),
        .I4(ALUSrc_in),
        .I5(douta[7]),
        .O(\bbstub_douta[7] [3]));
  LUT6 #(
    .INIT(64'h7777788888887888)) 
    ALUresult0_carry__0_i_6
       (.I0(A0_0[6]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[6]),
        .I3(ALUresult0_carry__3),
        .I4(ALUSrc_in),
        .I5(douta[6]),
        .O(\bbstub_douta[7] [2]));
  LUT6 #(
    .INIT(64'h7777788888887888)) 
    ALUresult0_carry__0_i_7
       (.I0(A0_0[5]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[5]),
        .I3(ALUresult0_carry__3),
        .I4(ALUSrc_in),
        .I5(douta[5]),
        .O(\bbstub_douta[7] [1]));
  LUT6 #(
    .INIT(64'h7777788888887888)) 
    ALUresult0_carry__0_i_8
       (.I0(A0_0[4]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[4]),
        .I3(ALUresult0_carry__3),
        .I4(ALUSrc_in),
        .I5(douta[4]),
        .O(\bbstub_douta[7] [0]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__1_i_1
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[11]),
        .O(JrPC[11]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__1_i_2
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[10]),
        .O(JrPC[10]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__1_i_3
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[9]),
        .O(JrPC[9]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__1_i_4
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[8]),
        .O(JrPC[8]));
  LUT6 #(
    .INIT(64'h7777788888887888)) 
    ALUresult0_carry__1_i_5
       (.I0(A0_0[11]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[11]),
        .I3(ALUresult0_carry__3),
        .I4(ALUSrc_in),
        .I5(douta[11]),
        .O(\bbstub_douta[11] [3]));
  LUT6 #(
    .INIT(64'h7777788888887888)) 
    ALUresult0_carry__1_i_6
       (.I0(A0_0[10]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[10]),
        .I3(ALUresult0_carry__3),
        .I4(ALUSrc_in),
        .I5(douta[10]),
        .O(\bbstub_douta[11] [2]));
  LUT6 #(
    .INIT(64'h7777788888887888)) 
    ALUresult0_carry__1_i_7
       (.I0(A0_0[9]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[9]),
        .I3(ALUresult0_carry__3),
        .I4(ALUSrc_in),
        .I5(douta[9]),
        .O(\bbstub_douta[11] [1]));
  LUT6 #(
    .INIT(64'h7777788888887888)) 
    ALUresult0_carry__1_i_8
       (.I0(A0_0[8]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[8]),
        .I3(ALUresult0_carry__3),
        .I4(ALUSrc_in),
        .I5(douta[8]),
        .O(\bbstub_douta[11] [0]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__2_i_1
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[15]),
        .O(JrPC[15]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__2_i_2
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[14]),
        .O(JrPC[14]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__2_i_3
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[13]),
        .O(JrPC[13]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__2_i_4
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[12]),
        .O(JrPC[12]));
  LUT6 #(
    .INIT(64'h7777788888887888)) 
    ALUresult0_carry__2_i_5
       (.I0(A0_0[15]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[15]),
        .I3(ALUresult0_carry__3),
        .I4(ALUSrc_in),
        .I5(douta[15]),
        .O(\bbstub_douta[15] [3]));
  LUT6 #(
    .INIT(64'h7777788888887888)) 
    ALUresult0_carry__2_i_6
       (.I0(A0_0[14]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[14]),
        .I3(ALUresult0_carry__3),
        .I4(ALUSrc_in),
        .I5(douta[14]),
        .O(\bbstub_douta[15] [2]));
  LUT6 #(
    .INIT(64'h7777788888887888)) 
    ALUresult0_carry__2_i_7
       (.I0(A0_0[13]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[13]),
        .I3(ALUresult0_carry__3),
        .I4(ALUSrc_in),
        .I5(douta[13]),
        .O(\bbstub_douta[15] [1]));
  LUT6 #(
    .INIT(64'h7777788888887888)) 
    ALUresult0_carry__2_i_8
       (.I0(A0_0[12]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[12]),
        .I3(ALUresult0_carry__3),
        .I4(ALUSrc_in),
        .I5(douta[12]),
        .O(\bbstub_douta[15] [0]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__3_i_1
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[19]),
        .O(JrPC[19]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__3_i_2
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[18]),
        .O(JrPC[18]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__3_i_3
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[17]),
        .O(JrPC[17]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__3_i_4
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[16]),
        .O(JrPC[16]));
  LUT6 #(
    .INIT(64'h4BBB788878887888)) 
    ALUresult0_carry__3_i_5
       (.I0(ALUresult0_carry__3_0),
        .I1(ALUSrc_in),
        .I2(A0_0[19]),
        .I3(\pc_reg[2]_0 ),
        .I4(B0[19]),
        .I5(ALUresult0_carry__3),
        .O(u_data_ram_i_69_10[3]));
  LUT6 #(
    .INIT(64'h4BBB788878887888)) 
    ALUresult0_carry__3_i_6
       (.I0(ALUresult0_carry__3_0),
        .I1(ALUSrc_in),
        .I2(A0_0[18]),
        .I3(\pc_reg[2]_0 ),
        .I4(B0[18]),
        .I5(ALUresult0_carry__3),
        .O(u_data_ram_i_69_10[2]));
  LUT6 #(
    .INIT(64'h4BBB788878887888)) 
    ALUresult0_carry__3_i_7
       (.I0(ALUresult0_carry__3_0),
        .I1(ALUSrc_in),
        .I2(A0_0[17]),
        .I3(\pc_reg[2]_0 ),
        .I4(B0[17]),
        .I5(ALUresult0_carry__3),
        .O(u_data_ram_i_69_10[1]));
  LUT6 #(
    .INIT(64'h4BBB788878887888)) 
    ALUresult0_carry__3_i_8
       (.I0(ALUresult0_carry__3_0),
        .I1(ALUSrc_in),
        .I2(A0_0[16]),
        .I3(\pc_reg[2]_0 ),
        .I4(B0[16]),
        .I5(ALUresult0_carry__3),
        .O(u_data_ram_i_69_10[0]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__4_i_1
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[23]),
        .O(JrPC[23]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__4_i_2
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[22]),
        .O(JrPC[22]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__4_i_3
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[21]),
        .O(JrPC[21]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__4_i_4
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[20]),
        .O(JrPC[20]));
  LUT6 #(
    .INIT(64'h4BBB788878887888)) 
    ALUresult0_carry__4_i_5
       (.I0(ALUresult0_carry__3_0),
        .I1(ALUSrc_in),
        .I2(A0_0[23]),
        .I3(\pc_reg[2]_0 ),
        .I4(B0[23]),
        .I5(ALUresult0_carry__3),
        .O(u_data_ram_i_69_9[3]));
  LUT6 #(
    .INIT(64'h4BBB788878887888)) 
    ALUresult0_carry__4_i_6
       (.I0(ALUresult0_carry__3_0),
        .I1(ALUSrc_in),
        .I2(A0_0[22]),
        .I3(\pc_reg[2]_0 ),
        .I4(B0[22]),
        .I5(ALUresult0_carry__3),
        .O(u_data_ram_i_69_9[2]));
  LUT6 #(
    .INIT(64'h4BBB788878887888)) 
    ALUresult0_carry__4_i_7
       (.I0(ALUresult0_carry__3_0),
        .I1(ALUSrc_in),
        .I2(A0_0[21]),
        .I3(\pc_reg[2]_0 ),
        .I4(B0[21]),
        .I5(ALUresult0_carry__3),
        .O(u_data_ram_i_69_9[1]));
  LUT6 #(
    .INIT(64'h4BBB788878887888)) 
    ALUresult0_carry__4_i_8
       (.I0(ALUresult0_carry__3_0),
        .I1(ALUSrc_in),
        .I2(A0_0[20]),
        .I3(\pc_reg[2]_0 ),
        .I4(B0[20]),
        .I5(ALUresult0_carry__3),
        .O(u_data_ram_i_69_9[0]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__5_i_1
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[27]),
        .O(JrPC[27]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__5_i_2
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[26]),
        .O(JrPC[26]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__5_i_3
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[25]),
        .O(JrPC[25]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__5_i_4
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[24]),
        .O(JrPC[24]));
  LUT6 #(
    .INIT(64'h4BBB788878887888)) 
    ALUresult0_carry__5_i_5
       (.I0(ALUresult0_carry__3_0),
        .I1(ALUSrc_in),
        .I2(A0_0[27]),
        .I3(\pc_reg[2]_0 ),
        .I4(B0[27]),
        .I5(ALUresult0_carry__3),
        .O(u_data_ram_i_69_8[3]));
  LUT6 #(
    .INIT(64'h4BBB788878887888)) 
    ALUresult0_carry__5_i_6
       (.I0(ALUresult0_carry__3_0),
        .I1(ALUSrc_in),
        .I2(A0_0[26]),
        .I3(\pc_reg[2]_0 ),
        .I4(B0[26]),
        .I5(ALUresult0_carry__3),
        .O(u_data_ram_i_69_8[2]));
  LUT6 #(
    .INIT(64'h4BBB788878887888)) 
    ALUresult0_carry__5_i_7
       (.I0(ALUresult0_carry__3_0),
        .I1(ALUSrc_in),
        .I2(A0_0[25]),
        .I3(\pc_reg[2]_0 ),
        .I4(B0[25]),
        .I5(ALUresult0_carry__3),
        .O(u_data_ram_i_69_8[1]));
  LUT6 #(
    .INIT(64'h4BBB788878887888)) 
    ALUresult0_carry__5_i_8
       (.I0(ALUresult0_carry__3_0),
        .I1(ALUSrc_in),
        .I2(A0_0[24]),
        .I3(\pc_reg[2]_0 ),
        .I4(B0[24]),
        .I5(ALUresult0_carry__3),
        .O(u_data_ram_i_69_8[0]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__6_i_1
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[30]),
        .O(JrPC[30]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__6_i_2
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[29]),
        .O(JrPC[29]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__6_i_3
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[28]),
        .O(JrPC[28]));
  LUT6 #(
    .INIT(64'h4BBB788878887888)) 
    ALUresult0_carry__6_i_4
       (.I0(ALUresult0_carry__3_0),
        .I1(ALUSrc_in),
        .I2(A0_0[31]),
        .I3(\pc_reg[2]_0 ),
        .I4(B0[31]),
        .I5(ALUresult0_carry__3),
        .O(u_data_ram_i_69_7[3]));
  LUT6 #(
    .INIT(64'h4BBB788878887888)) 
    ALUresult0_carry__6_i_5
       (.I0(ALUresult0_carry__3_0),
        .I1(ALUSrc_in),
        .I2(A0_0[30]),
        .I3(\pc_reg[2]_0 ),
        .I4(B0[30]),
        .I5(ALUresult0_carry__3),
        .O(u_data_ram_i_69_7[2]));
  LUT6 #(
    .INIT(64'h4BBB788878887888)) 
    ALUresult0_carry__6_i_6
       (.I0(ALUresult0_carry__3_0),
        .I1(ALUSrc_in),
        .I2(A0_0[29]),
        .I3(\pc_reg[2]_0 ),
        .I4(B0[29]),
        .I5(ALUresult0_carry__3),
        .O(u_data_ram_i_69_7[1]));
  LUT6 #(
    .INIT(64'h4BBB788878887888)) 
    ALUresult0_carry__6_i_7
       (.I0(ALUresult0_carry__3_0),
        .I1(ALUSrc_in),
        .I2(A0_0[28]),
        .I3(\pc_reg[2]_0 ),
        .I4(B0[28]),
        .I5(ALUresult0_carry__3),
        .O(u_data_ram_i_69_7[0]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry_i_1
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[3]),
        .O(JrPC[3]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry_i_2
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[2]),
        .O(JrPC[2]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry_i_3
       (.I0(\pc_reg[2]_0 ),
        .I1(A0[1]),
        .O(JrPC[1]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry_i_4
       (.I0(\pc_reg[2]_0 ),
        .I1(A0[0]),
        .O(JrPC[0]));
  LUT6 #(
    .INIT(64'h7777788888887888)) 
    ALUresult0_carry_i_5
       (.I0(A0_0[3]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[3]),
        .I3(ALUresult0_carry__3),
        .I4(ALUSrc_in),
        .I5(douta[3]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h7777788888887888)) 
    ALUresult0_carry_i_6
       (.I0(A0_0[2]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[2]),
        .I3(ALUresult0_carry__3),
        .I4(ALUSrc_in),
        .I5(douta[2]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h7777788888887888)) 
    ALUresult0_carry_i_7
       (.I0(A0[1]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[1]),
        .I3(ALUresult0_carry__3),
        .I4(ALUSrc_in),
        .I5(douta[1]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h7777788888887888)) 
    ALUresult0_carry_i_8
       (.I0(A0[0]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[0]),
        .I3(ALUresult0_carry__3),
        .I4(ALUSrc_in),
        .I5(douta[0]),
        .O(S[0]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry__0_i_1
       (.I0(\u_ALU_1/B_signed [14]),
        .I1(A0_0[14]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0_0[15]),
        .I4(\u_ALU_1/B_signed [15]),
        .O(i__carry__0_i_10_0[3]));
  LUT4 #(
    .INIT(16'hB888)) 
    i__carry__0_i_10
       (.I0(douta[15]),
        .I1(ALUSrc_in),
        .I2(ALUresult0_carry__3),
        .I3(B0[15]),
        .O(\u_ALU_1/B_signed [15]));
  LUT4 #(
    .INIT(16'hB888)) 
    i__carry__0_i_11
       (.I0(douta[12]),
        .I1(ALUSrc_in),
        .I2(ALUresult0_carry__3),
        .I3(B0[12]),
        .O(\u_ALU_1/B_signed [12]));
  LUT4 #(
    .INIT(16'hB888)) 
    i__carry__0_i_12
       (.I0(douta[13]),
        .I1(ALUSrc_in),
        .I2(ALUresult0_carry__3),
        .I3(B0[13]),
        .O(\u_ALU_1/B_signed [13]));
  LUT4 #(
    .INIT(16'hB888)) 
    i__carry__0_i_13
       (.I0(douta[10]),
        .I1(ALUSrc_in),
        .I2(ALUresult0_carry__3),
        .I3(B0[10]),
        .O(\u_ALU_1/B_signed [10]));
  LUT4 #(
    .INIT(16'hB888)) 
    i__carry__0_i_14
       (.I0(douta[11]),
        .I1(ALUSrc_in),
        .I2(ALUresult0_carry__3),
        .I3(B0[11]),
        .O(\u_ALU_1/B_signed [11]));
  LUT4 #(
    .INIT(16'hB888)) 
    i__carry__0_i_15
       (.I0(douta[8]),
        .I1(ALUSrc_in),
        .I2(ALUresult0_carry__3),
        .I3(B0[8]),
        .O(\u_ALU_1/B_signed [8]));
  LUT4 #(
    .INIT(16'hB888)) 
    i__carry__0_i_16
       (.I0(douta[9]),
        .I1(ALUSrc_in),
        .I2(ALUresult0_carry__3),
        .I3(B0[9]),
        .O(\u_ALU_1/B_signed [9]));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__0_i_1__0
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[7]),
        .O(register_reg_r1_0_31_6_11_1[3]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry__0_i_1__1
       (.I0(\u_ALU_1/B_signed [14]),
        .I1(A0_0[14]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0_0[15]),
        .I4(\u_ALU_1/B_signed [15]),
        .O(i__carry__0_i_10_1[3]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry__0_i_2
       (.I0(\u_ALU_1/B_signed [12]),
        .I1(A0_0[12]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0_0[13]),
        .I4(\u_ALU_1/B_signed [13]),
        .O(i__carry__0_i_10_0[2]));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__0_i_2__0
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[6]),
        .O(register_reg_r1_0_31_6_11_1[2]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry__0_i_2__1
       (.I0(\u_ALU_1/B_signed [12]),
        .I1(A0_0[12]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0_0[13]),
        .I4(\u_ALU_1/B_signed [13]),
        .O(i__carry__0_i_10_1[2]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry__0_i_3
       (.I0(\u_ALU_1/B_signed [10]),
        .I1(A0_0[10]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0_0[11]),
        .I4(\u_ALU_1/B_signed [11]),
        .O(i__carry__0_i_10_0[1]));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__0_i_3__0
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[5]),
        .O(register_reg_r1_0_31_6_11_1[1]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry__0_i_3__1
       (.I0(\u_ALU_1/B_signed [10]),
        .I1(A0_0[10]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0_0[11]),
        .I4(\u_ALU_1/B_signed [11]),
        .O(i__carry__0_i_10_1[1]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry__0_i_4
       (.I0(\u_ALU_1/B_signed [8]),
        .I1(A0_0[8]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0_0[9]),
        .I4(\u_ALU_1/B_signed [9]),
        .O(i__carry__0_i_10_0[0]));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__0_i_4__0
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[4]),
        .O(register_reg_r1_0_31_6_11_1[0]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry__0_i_4__1
       (.I0(\u_ALU_1/B_signed [8]),
        .I1(A0_0[8]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0_0[9]),
        .I4(\u_ALU_1/B_signed [9]),
        .O(i__carry__0_i_10_1[0]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry__0_i_5
       (.I0(\u_ALU_1/B_signed [15]),
        .I1(A0_0[15]),
        .I2(\u_ALU_1/B_signed [14]),
        .I3(\pc_reg[2]_0 ),
        .I4(A0_0[14]),
        .O(register_reg_r1_0_31_12_17_0[3]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry__0_i_5__0
       (.I0(\u_ALU_1/B_signed [15]),
        .I1(A0_0[15]),
        .I2(\u_ALU_1/B_signed [14]),
        .I3(\pc_reg[2]_0 ),
        .I4(A0_0[14]),
        .O(register_reg_r1_0_31_12_17_2[3]));
  LUT4 #(
    .INIT(16'h8777)) 
    i__carry__0_i_5__1
       (.I0(A0_0[7]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[7]),
        .I3(ALUresult0_carry__3),
        .O(u_data_ram_i_69_1[3]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry__0_i_6
       (.I0(\u_ALU_1/B_signed [13]),
        .I1(A0_0[13]),
        .I2(\u_ALU_1/B_signed [12]),
        .I3(\pc_reg[2]_0 ),
        .I4(A0_0[12]),
        .O(register_reg_r1_0_31_12_17_0[2]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry__0_i_6__0
       (.I0(\u_ALU_1/B_signed [13]),
        .I1(A0_0[13]),
        .I2(\u_ALU_1/B_signed [12]),
        .I3(\pc_reg[2]_0 ),
        .I4(A0_0[12]),
        .O(register_reg_r1_0_31_12_17_2[2]));
  LUT4 #(
    .INIT(16'h8777)) 
    i__carry__0_i_6__1
       (.I0(A0_0[6]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[6]),
        .I3(ALUresult0_carry__3),
        .O(u_data_ram_i_69_1[2]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry__0_i_7
       (.I0(\u_ALU_1/B_signed [11]),
        .I1(A0_0[11]),
        .I2(\u_ALU_1/B_signed [10]),
        .I3(\pc_reg[2]_0 ),
        .I4(A0_0[10]),
        .O(register_reg_r1_0_31_12_17_0[1]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry__0_i_7__0
       (.I0(\u_ALU_1/B_signed [11]),
        .I1(A0_0[11]),
        .I2(\u_ALU_1/B_signed [10]),
        .I3(\pc_reg[2]_0 ),
        .I4(A0_0[10]),
        .O(register_reg_r1_0_31_12_17_2[1]));
  LUT4 #(
    .INIT(16'h8777)) 
    i__carry__0_i_7__1
       (.I0(A0_0[5]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[5]),
        .I3(ALUresult0_carry__3),
        .O(u_data_ram_i_69_1[1]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry__0_i_8
       (.I0(\u_ALU_1/B_signed [9]),
        .I1(A0_0[9]),
        .I2(\u_ALU_1/B_signed [8]),
        .I3(\pc_reg[2]_0 ),
        .I4(A0_0[8]),
        .O(register_reg_r1_0_31_12_17_0[0]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry__0_i_8__0
       (.I0(\u_ALU_1/B_signed [9]),
        .I1(A0_0[9]),
        .I2(\u_ALU_1/B_signed [8]),
        .I3(\pc_reg[2]_0 ),
        .I4(A0_0[8]),
        .O(register_reg_r1_0_31_12_17_2[0]));
  LUT4 #(
    .INIT(16'h8777)) 
    i__carry__0_i_8__1
       (.I0(A0_0[4]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[4]),
        .I3(ALUresult0_carry__3),
        .O(u_data_ram_i_69_1[0]));
  LUT4 #(
    .INIT(16'hB888)) 
    i__carry__0_i_9
       (.I0(douta[14]),
        .I1(ALUSrc_in),
        .I2(ALUresult0_carry__3),
        .I3(B0[14]),
        .O(\u_ALU_1/B_signed [14]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry__1_i_1
       (.I0(\u_ALU_1/B_signed [22]),
        .I1(A0_0[22]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0_0[23]),
        .I4(\u_ALU_1/B_signed [23]),
        .O(i__carry__1_i_10_0[3]));
  LUT4 #(
    .INIT(16'hB888)) 
    i__carry__1_i_10
       (.I0(ALUresult0_carry__3_0),
        .I1(ALUSrc_in),
        .I2(ALUresult0_carry__3),
        .I3(B0[23]),
        .O(\u_ALU_1/B_signed [23]));
  LUT4 #(
    .INIT(16'hB888)) 
    i__carry__1_i_11
       (.I0(ALUresult0_carry__3_0),
        .I1(ALUSrc_in),
        .I2(ALUresult0_carry__3),
        .I3(B0[20]),
        .O(\u_ALU_1/B_signed [20]));
  LUT4 #(
    .INIT(16'hB888)) 
    i__carry__1_i_12
       (.I0(ALUresult0_carry__3_0),
        .I1(ALUSrc_in),
        .I2(ALUresult0_carry__3),
        .I3(B0[21]),
        .O(\u_ALU_1/B_signed [21]));
  LUT4 #(
    .INIT(16'hB888)) 
    i__carry__1_i_13
       (.I0(ALUresult0_carry__3_0),
        .I1(ALUSrc_in),
        .I2(ALUresult0_carry__3),
        .I3(B0[18]),
        .O(\u_ALU_1/B_signed [18]));
  LUT4 #(
    .INIT(16'hB888)) 
    i__carry__1_i_14
       (.I0(ALUresult0_carry__3_0),
        .I1(ALUSrc_in),
        .I2(ALUresult0_carry__3),
        .I3(B0[19]),
        .O(\u_ALU_1/B_signed [19]));
  LUT4 #(
    .INIT(16'hB888)) 
    i__carry__1_i_15
       (.I0(ALUresult0_carry__3_0),
        .I1(ALUSrc_in),
        .I2(ALUresult0_carry__3),
        .I3(B0[16]),
        .O(\u_ALU_1/B_signed [16]));
  LUT4 #(
    .INIT(16'hB888)) 
    i__carry__1_i_16
       (.I0(ALUresult0_carry__3_0),
        .I1(ALUSrc_in),
        .I2(ALUresult0_carry__3),
        .I3(B0[17]),
        .O(\u_ALU_1/B_signed [17]));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__1_i_1__0
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[11]),
        .O(register_reg_r1_0_31_6_11_2[3]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry__1_i_1__1
       (.I0(\u_ALU_1/B_signed [22]),
        .I1(A0_0[22]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0_0[23]),
        .I4(\u_ALU_1/B_signed [23]),
        .O(i__carry__1_i_10_1[3]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry__1_i_2
       (.I0(\u_ALU_1/B_signed [20]),
        .I1(A0_0[20]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0_0[21]),
        .I4(\u_ALU_1/B_signed [21]),
        .O(i__carry__1_i_10_0[2]));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__1_i_2__0
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[10]),
        .O(register_reg_r1_0_31_6_11_2[2]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry__1_i_2__1
       (.I0(\u_ALU_1/B_signed [20]),
        .I1(A0_0[20]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0_0[21]),
        .I4(\u_ALU_1/B_signed [21]),
        .O(i__carry__1_i_10_1[2]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry__1_i_3
       (.I0(\u_ALU_1/B_signed [18]),
        .I1(A0_0[18]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0_0[19]),
        .I4(\u_ALU_1/B_signed [19]),
        .O(i__carry__1_i_10_0[1]));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__1_i_3__0
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[9]),
        .O(register_reg_r1_0_31_6_11_2[1]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry__1_i_3__1
       (.I0(\u_ALU_1/B_signed [18]),
        .I1(A0_0[18]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0_0[19]),
        .I4(\u_ALU_1/B_signed [19]),
        .O(i__carry__1_i_10_1[1]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry__1_i_4
       (.I0(\u_ALU_1/B_signed [16]),
        .I1(A0_0[16]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0_0[17]),
        .I4(\u_ALU_1/B_signed [17]),
        .O(i__carry__1_i_10_0[0]));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__1_i_4__0
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[8]),
        .O(register_reg_r1_0_31_6_11_2[0]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry__1_i_4__1
       (.I0(\u_ALU_1/B_signed [16]),
        .I1(A0_0[16]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0_0[17]),
        .I4(\u_ALU_1/B_signed [17]),
        .O(i__carry__1_i_10_1[0]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry__1_i_5
       (.I0(\u_ALU_1/B_signed [23]),
        .I1(A0_0[23]),
        .I2(\u_ALU_1/B_signed [22]),
        .I3(\pc_reg[2]_0 ),
        .I4(A0_0[22]),
        .O(register_reg_r1_0_31_18_23_0[3]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry__1_i_5__0
       (.I0(\u_ALU_1/B_signed [23]),
        .I1(A0_0[23]),
        .I2(\u_ALU_1/B_signed [22]),
        .I3(\pc_reg[2]_0 ),
        .I4(A0_0[22]),
        .O(register_reg_r1_0_31_18_23_3[3]));
  LUT4 #(
    .INIT(16'h8777)) 
    i__carry__1_i_5__1
       (.I0(A0_0[11]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[11]),
        .I3(ALUresult0_carry__3),
        .O(u_data_ram_i_69_2[3]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry__1_i_6
       (.I0(\u_ALU_1/B_signed [21]),
        .I1(A0_0[21]),
        .I2(\u_ALU_1/B_signed [20]),
        .I3(\pc_reg[2]_0 ),
        .I4(A0_0[20]),
        .O(register_reg_r1_0_31_18_23_0[2]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry__1_i_6__0
       (.I0(\u_ALU_1/B_signed [21]),
        .I1(A0_0[21]),
        .I2(\u_ALU_1/B_signed [20]),
        .I3(\pc_reg[2]_0 ),
        .I4(A0_0[20]),
        .O(register_reg_r1_0_31_18_23_3[2]));
  LUT4 #(
    .INIT(16'h8777)) 
    i__carry__1_i_6__1
       (.I0(A0_0[10]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[10]),
        .I3(ALUresult0_carry__3),
        .O(u_data_ram_i_69_2[2]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry__1_i_7
       (.I0(\u_ALU_1/B_signed [19]),
        .I1(A0_0[19]),
        .I2(\u_ALU_1/B_signed [18]),
        .I3(\pc_reg[2]_0 ),
        .I4(A0_0[18]),
        .O(register_reg_r1_0_31_18_23_0[1]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry__1_i_7__0
       (.I0(\u_ALU_1/B_signed [19]),
        .I1(A0_0[19]),
        .I2(\u_ALU_1/B_signed [18]),
        .I3(\pc_reg[2]_0 ),
        .I4(A0_0[18]),
        .O(register_reg_r1_0_31_18_23_3[1]));
  LUT4 #(
    .INIT(16'h8777)) 
    i__carry__1_i_7__1
       (.I0(A0_0[9]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[9]),
        .I3(ALUresult0_carry__3),
        .O(u_data_ram_i_69_2[1]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry__1_i_8
       (.I0(\u_ALU_1/B_signed [17]),
        .I1(A0_0[17]),
        .I2(\u_ALU_1/B_signed [16]),
        .I3(\pc_reg[2]_0 ),
        .I4(A0_0[16]),
        .O(register_reg_r1_0_31_18_23_0[0]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry__1_i_8__0
       (.I0(\u_ALU_1/B_signed [17]),
        .I1(A0_0[17]),
        .I2(\u_ALU_1/B_signed [16]),
        .I3(\pc_reg[2]_0 ),
        .I4(A0_0[16]),
        .O(register_reg_r1_0_31_18_23_3[0]));
  LUT4 #(
    .INIT(16'h8777)) 
    i__carry__1_i_8__1
       (.I0(A0_0[8]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[8]),
        .I3(ALUresult0_carry__3),
        .O(u_data_ram_i_69_2[0]));
  LUT4 #(
    .INIT(16'hB888)) 
    i__carry__1_i_9
       (.I0(ALUresult0_carry__3_0),
        .I1(ALUSrc_in),
        .I2(ALUresult0_carry__3),
        .I3(B0[22]),
        .O(\u_ALU_1/B_signed [22]));
  LUT5 #(
    .INIT(32'h0C8EEEEE)) 
    i__carry__2_i_1
       (.I0(\u_ALU_1/B_signed [30]),
        .I1(\u_ALU_1/B_signed__0 ),
        .I2(A0_0[31]),
        .I3(A0_0[30]),
        .I4(\pc_reg[2]_0 ),
        .O(\pc[1]_i_2 [3]));
  LUT4 #(
    .INIT(16'hB888)) 
    i__carry__2_i_10
       (.I0(ALUresult0_carry__3_0),
        .I1(ALUSrc_in),
        .I2(ALUresult0_carry__3),
        .I3(B0[31]),
        .O(\u_ALU_1/B_signed__0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    i__carry__2_i_11
       (.I0(ALUresult0_carry__3_0),
        .I1(ALUSrc_in),
        .I2(ALUresult0_carry__3),
        .I3(B0[28]),
        .O(\u_ALU_1/B_signed [28]));
  LUT4 #(
    .INIT(16'hB888)) 
    i__carry__2_i_12
       (.I0(ALUresult0_carry__3_0),
        .I1(ALUSrc_in),
        .I2(ALUresult0_carry__3),
        .I3(B0[29]),
        .O(\u_ALU_1/B_signed [29]));
  LUT4 #(
    .INIT(16'hB888)) 
    i__carry__2_i_13
       (.I0(ALUresult0_carry__3_0),
        .I1(ALUSrc_in),
        .I2(ALUresult0_carry__3),
        .I3(B0[26]),
        .O(\u_ALU_1/B_signed [26]));
  LUT4 #(
    .INIT(16'hB888)) 
    i__carry__2_i_14
       (.I0(ALUresult0_carry__3_0),
        .I1(ALUSrc_in),
        .I2(ALUresult0_carry__3),
        .I3(B0[27]),
        .O(\u_ALU_1/B_signed [27]));
  LUT4 #(
    .INIT(16'hB888)) 
    i__carry__2_i_15
       (.I0(ALUresult0_carry__3_0),
        .I1(ALUSrc_in),
        .I2(ALUresult0_carry__3),
        .I3(B0[24]),
        .O(\u_ALU_1/B_signed [24]));
  LUT4 #(
    .INIT(16'hB888)) 
    i__carry__2_i_16
       (.I0(ALUresult0_carry__3_0),
        .I1(ALUSrc_in),
        .I2(ALUresult0_carry__3),
        .I3(B0[25]),
        .O(\u_ALU_1/B_signed [25]));
  LUT5 #(
    .INIT(32'h30B22222)) 
    i__carry__2_i_1__0
       (.I0(\u_ALU_1/B_signed [30]),
        .I1(\u_ALU_1/B_signed__0 ),
        .I2(A0_0[31]),
        .I3(A0_0[30]),
        .I4(\pc_reg[2]_0 ),
        .O(\pc[1]_i_2_0 [3]));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__2_i_1__1
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[15]),
        .O(register_reg_r1_0_31_12_17_1[3]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry__2_i_2
       (.I0(\u_ALU_1/B_signed [28]),
        .I1(A0_0[28]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0_0[29]),
        .I4(\u_ALU_1/B_signed [29]),
        .O(\pc[1]_i_2 [2]));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__2_i_2__0
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[14]),
        .O(register_reg_r1_0_31_12_17_1[2]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry__2_i_2__1
       (.I0(\u_ALU_1/B_signed [28]),
        .I1(A0_0[28]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0_0[29]),
        .I4(\u_ALU_1/B_signed [29]),
        .O(\pc[1]_i_2_0 [2]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry__2_i_3
       (.I0(\u_ALU_1/B_signed [26]),
        .I1(A0_0[26]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0_0[27]),
        .I4(\u_ALU_1/B_signed [27]),
        .O(\pc[1]_i_2 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__2_i_3__0
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[13]),
        .O(register_reg_r1_0_31_12_17_1[1]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry__2_i_3__1
       (.I0(\u_ALU_1/B_signed [26]),
        .I1(A0_0[26]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0_0[27]),
        .I4(\u_ALU_1/B_signed [27]),
        .O(\pc[1]_i_2_0 [1]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry__2_i_4
       (.I0(\u_ALU_1/B_signed [24]),
        .I1(A0_0[24]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0_0[25]),
        .I4(\u_ALU_1/B_signed [25]),
        .O(\pc[1]_i_2 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__2_i_4__0
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[12]),
        .O(register_reg_r1_0_31_12_17_1[0]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry__2_i_4__1
       (.I0(\u_ALU_1/B_signed [24]),
        .I1(A0_0[24]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0_0[25]),
        .I4(\u_ALU_1/B_signed [25]),
        .O(\pc[1]_i_2_0 [0]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry__2_i_5
       (.I0(\u_ALU_1/B_signed [30]),
        .I1(A0_0[30]),
        .I2(\u_ALU_1/B_signed__0 ),
        .I3(\pc_reg[2]_0 ),
        .I4(A0_0[31]),
        .O(register_reg_r1_0_31_30_31_0[3]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry__2_i_5__0
       (.I0(\u_ALU_1/B_signed [30]),
        .I1(A0_0[30]),
        .I2(\u_ALU_1/B_signed__0 ),
        .I3(\pc_reg[2]_0 ),
        .I4(A0_0[31]),
        .O(register_reg_r1_0_31_30_31_3[3]));
  LUT4 #(
    .INIT(16'h8777)) 
    i__carry__2_i_5__1
       (.I0(A0_0[15]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[15]),
        .I3(ALUresult0_carry__3),
        .O(u_data_ram_i_69_3[3]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry__2_i_6
       (.I0(\u_ALU_1/B_signed [29]),
        .I1(A0_0[29]),
        .I2(\u_ALU_1/B_signed [28]),
        .I3(\pc_reg[2]_0 ),
        .I4(A0_0[28]),
        .O(register_reg_r1_0_31_30_31_0[2]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry__2_i_6__0
       (.I0(\u_ALU_1/B_signed [29]),
        .I1(A0_0[29]),
        .I2(\u_ALU_1/B_signed [28]),
        .I3(\pc_reg[2]_0 ),
        .I4(A0_0[28]),
        .O(register_reg_r1_0_31_30_31_3[2]));
  LUT4 #(
    .INIT(16'h8777)) 
    i__carry__2_i_6__1
       (.I0(A0_0[14]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[14]),
        .I3(ALUresult0_carry__3),
        .O(u_data_ram_i_69_3[2]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry__2_i_7
       (.I0(\u_ALU_1/B_signed [27]),
        .I1(A0_0[27]),
        .I2(\u_ALU_1/B_signed [26]),
        .I3(\pc_reg[2]_0 ),
        .I4(A0_0[26]),
        .O(register_reg_r1_0_31_30_31_0[1]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry__2_i_7__0
       (.I0(\u_ALU_1/B_signed [27]),
        .I1(A0_0[27]),
        .I2(\u_ALU_1/B_signed [26]),
        .I3(\pc_reg[2]_0 ),
        .I4(A0_0[26]),
        .O(register_reg_r1_0_31_30_31_3[1]));
  LUT4 #(
    .INIT(16'h8777)) 
    i__carry__2_i_7__1
       (.I0(A0_0[13]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[13]),
        .I3(ALUresult0_carry__3),
        .O(u_data_ram_i_69_3[1]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry__2_i_8
       (.I0(\u_ALU_1/B_signed [25]),
        .I1(A0_0[25]),
        .I2(\u_ALU_1/B_signed [24]),
        .I3(\pc_reg[2]_0 ),
        .I4(A0_0[24]),
        .O(register_reg_r1_0_31_30_31_0[0]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry__2_i_8__0
       (.I0(\u_ALU_1/B_signed [25]),
        .I1(A0_0[25]),
        .I2(\u_ALU_1/B_signed [24]),
        .I3(\pc_reg[2]_0 ),
        .I4(A0_0[24]),
        .O(register_reg_r1_0_31_30_31_3[0]));
  LUT4 #(
    .INIT(16'h8777)) 
    i__carry__2_i_8__1
       (.I0(A0_0[12]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[12]),
        .I3(ALUresult0_carry__3),
        .O(u_data_ram_i_69_3[0]));
  LUT4 #(
    .INIT(16'hB888)) 
    i__carry__2_i_9
       (.I0(ALUresult0_carry__3_0),
        .I1(ALUSrc_in),
        .I2(ALUresult0_carry__3),
        .I3(B0[30]),
        .O(\u_ALU_1/B_signed [30]));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__3_i_1
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[19]),
        .O(register_reg_r1_0_31_18_23_1[3]));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__3_i_2
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[18]),
        .O(register_reg_r1_0_31_18_23_1[2]));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__3_i_3
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[17]),
        .O(register_reg_r1_0_31_18_23_1[1]));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__3_i_4
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[16]),
        .O(register_reg_r1_0_31_18_23_1[0]));
  LUT4 #(
    .INIT(16'h8777)) 
    i__carry__3_i_5
       (.I0(A0_0[19]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[19]),
        .I3(ALUresult0_carry__3),
        .O(u_data_ram_i_69_4[3]));
  LUT4 #(
    .INIT(16'h8777)) 
    i__carry__3_i_6
       (.I0(A0_0[18]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[18]),
        .I3(ALUresult0_carry__3),
        .O(u_data_ram_i_69_4[2]));
  LUT4 #(
    .INIT(16'h8777)) 
    i__carry__3_i_7
       (.I0(A0_0[17]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[17]),
        .I3(ALUresult0_carry__3),
        .O(u_data_ram_i_69_4[1]));
  LUT4 #(
    .INIT(16'h8777)) 
    i__carry__3_i_8
       (.I0(A0_0[16]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[16]),
        .I3(ALUresult0_carry__3),
        .O(u_data_ram_i_69_4[0]));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__4_i_1
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[23]),
        .O(register_reg_r1_0_31_18_23_2[3]));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__4_i_2
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[22]),
        .O(register_reg_r1_0_31_18_23_2[2]));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__4_i_3
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[21]),
        .O(register_reg_r1_0_31_18_23_2[1]));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__4_i_4
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[20]),
        .O(register_reg_r1_0_31_18_23_2[0]));
  LUT4 #(
    .INIT(16'h8777)) 
    i__carry__4_i_5
       (.I0(A0_0[23]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[23]),
        .I3(ALUresult0_carry__3),
        .O(u_data_ram_i_69_5[3]));
  LUT4 #(
    .INIT(16'h8777)) 
    i__carry__4_i_6
       (.I0(A0_0[22]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[22]),
        .I3(ALUresult0_carry__3),
        .O(u_data_ram_i_69_5[2]));
  LUT4 #(
    .INIT(16'h8777)) 
    i__carry__4_i_7
       (.I0(A0_0[21]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[21]),
        .I3(ALUresult0_carry__3),
        .O(u_data_ram_i_69_5[1]));
  LUT4 #(
    .INIT(16'h8777)) 
    i__carry__4_i_8
       (.I0(A0_0[20]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[20]),
        .I3(ALUresult0_carry__3),
        .O(u_data_ram_i_69_5[0]));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__5_i_1
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[27]),
        .O(register_reg_r1_0_31_24_29_0[3]));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__5_i_2
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[26]),
        .O(register_reg_r1_0_31_24_29_0[2]));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__5_i_3
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[25]),
        .O(register_reg_r1_0_31_24_29_0[1]));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__5_i_4
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[24]),
        .O(register_reg_r1_0_31_24_29_0[0]));
  LUT4 #(
    .INIT(16'h8777)) 
    i__carry__5_i_5
       (.I0(A0_0[27]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[27]),
        .I3(ALUresult0_carry__3),
        .O(u_data_ram_i_69_6[3]));
  LUT4 #(
    .INIT(16'h8777)) 
    i__carry__5_i_6
       (.I0(A0_0[26]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[26]),
        .I3(ALUresult0_carry__3),
        .O(u_data_ram_i_69_6[2]));
  LUT4 #(
    .INIT(16'h8777)) 
    i__carry__5_i_7
       (.I0(A0_0[25]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[25]),
        .I3(ALUresult0_carry__3),
        .O(u_data_ram_i_69_6[1]));
  LUT4 #(
    .INIT(16'h8777)) 
    i__carry__5_i_8
       (.I0(A0_0[24]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[24]),
        .I3(ALUresult0_carry__3),
        .O(u_data_ram_i_69_6[0]));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__6_i_1
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[30]),
        .O(register_reg_r1_0_31_30_31_2[2]));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__6_i_2
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[29]),
        .O(register_reg_r1_0_31_30_31_2[1]));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__6_i_3
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[28]),
        .O(register_reg_r1_0_31_30_31_2[0]));
  LUT4 #(
    .INIT(16'h8777)) 
    i__carry__6_i_4
       (.I0(A0_0[31]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[31]),
        .I3(ALUresult0_carry__3),
        .O(u_data_ram_i_69[3]));
  LUT4 #(
    .INIT(16'h8777)) 
    i__carry__6_i_5
       (.I0(A0_0[30]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[30]),
        .I3(ALUresult0_carry__3),
        .O(u_data_ram_i_69[2]));
  LUT4 #(
    .INIT(16'h8777)) 
    i__carry__6_i_6
       (.I0(A0_0[29]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[29]),
        .I3(ALUresult0_carry__3),
        .O(u_data_ram_i_69[1]));
  LUT4 #(
    .INIT(16'h8777)) 
    i__carry__6_i_7
       (.I0(A0_0[28]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[28]),
        .I3(ALUresult0_carry__3),
        .O(u_data_ram_i_69[0]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry_i_1
       (.I0(\u_ALU_1/B_signed [6]),
        .I1(A0_0[6]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0_0[7]),
        .I4(\u_ALU_1/B_signed [7]),
        .O(i__carry_i_10_0[3]));
  LUT4 #(
    .INIT(16'hB888)) 
    i__carry_i_10
       (.I0(douta[7]),
        .I1(ALUSrc_in),
        .I2(ALUresult0_carry__3),
        .I3(B0[7]),
        .O(\u_ALU_1/B_signed [7]));
  LUT4 #(
    .INIT(16'hB888)) 
    i__carry_i_11
       (.I0(douta[4]),
        .I1(ALUSrc_in),
        .I2(ALUresult0_carry__3),
        .I3(B0[4]),
        .O(\u_ALU_1/B_signed [4]));
  LUT4 #(
    .INIT(16'hB888)) 
    i__carry_i_12
       (.I0(douta[5]),
        .I1(ALUSrc_in),
        .I2(ALUresult0_carry__3),
        .I3(B0[5]),
        .O(\u_ALU_1/B_signed [5]));
  LUT4 #(
    .INIT(16'hB888)) 
    i__carry_i_13
       (.I0(douta[2]),
        .I1(ALUSrc_in),
        .I2(ALUresult0_carry__3),
        .I3(B0[2]),
        .O(\u_ALU_1/B_signed [2]));
  LUT4 #(
    .INIT(16'hB888)) 
    i__carry_i_14
       (.I0(douta[3]),
        .I1(ALUSrc_in),
        .I2(ALUresult0_carry__3),
        .I3(B0[3]),
        .O(\u_ALU_1/B_signed [3]));
  LUT4 #(
    .INIT(16'hB888)) 
    i__carry_i_15
       (.I0(douta[0]),
        .I1(ALUSrc_in),
        .I2(ALUresult0_carry__3),
        .I3(B0[0]),
        .O(\u_ALU_1/B_signed [0]));
  LUT4 #(
    .INIT(16'hB888)) 
    i__carry_i_16
       (.I0(douta[1]),
        .I1(ALUSrc_in),
        .I2(ALUresult0_carry__3),
        .I3(B0[1]),
        .O(\u_ALU_1/B_signed [1]));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_1__0
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[3]),
        .O(DI[3]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry_i_1__1
       (.I0(\u_ALU_1/B_signed [6]),
        .I1(A0_0[6]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0_0[7]),
        .I4(\u_ALU_1/B_signed [7]),
        .O(i__carry_i_10_1[3]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry_i_2
       (.I0(\u_ALU_1/B_signed [4]),
        .I1(A0_0[4]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0_0[5]),
        .I4(\u_ALU_1/B_signed [5]),
        .O(i__carry_i_10_0[2]));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_2__0
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[2]),
        .O(DI[2]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry_i_2__1
       (.I0(\u_ALU_1/B_signed [4]),
        .I1(A0_0[4]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0_0[5]),
        .I4(\u_ALU_1/B_signed [5]),
        .O(i__carry_i_10_1[2]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry_i_3
       (.I0(\u_ALU_1/B_signed [2]),
        .I1(A0_0[2]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0_0[3]),
        .I4(\u_ALU_1/B_signed [3]),
        .O(i__carry_i_10_0[1]));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_3__0
       (.I0(\pc_reg[2]_0 ),
        .I1(A0[1]),
        .O(DI[1]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry_i_3__1
       (.I0(\u_ALU_1/B_signed [2]),
        .I1(A0_0[2]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0_0[3]),
        .I4(\u_ALU_1/B_signed [3]),
        .O(i__carry_i_10_1[1]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry_i_4
       (.I0(\u_ALU_1/B_signed [0]),
        .I1(A0[0]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0[1]),
        .I4(\u_ALU_1/B_signed [1]),
        .O(i__carry_i_10_0[0]));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_4__0
       (.I0(\pc_reg[2]_0 ),
        .I1(A0[0]),
        .O(DI[0]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    i__carry_i_4__1
       (.I0(\u_ALU_1/B_signed [0]),
        .I1(A0[0]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0[1]),
        .I4(\u_ALU_1/B_signed [1]),
        .O(i__carry_i_10_1[0]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry_i_5
       (.I0(\u_ALU_1/B_signed [7]),
        .I1(A0_0[7]),
        .I2(\u_ALU_1/B_signed [6]),
        .I3(\pc_reg[2]_0 ),
        .I4(A0_0[6]),
        .O(register_reg_r1_0_31_6_11_0[3]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry_i_5__0
       (.I0(\u_ALU_1/B_signed [7]),
        .I1(A0_0[7]),
        .I2(\u_ALU_1/B_signed [6]),
        .I3(\pc_reg[2]_0 ),
        .I4(A0_0[6]),
        .O(register_reg_r1_0_31_6_11_3[3]));
  LUT4 #(
    .INIT(16'h8777)) 
    i__carry_i_5__1
       (.I0(A0_0[3]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[3]),
        .I3(ALUresult0_carry__3),
        .O(u_data_ram_i_69_0[3]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry_i_6
       (.I0(\u_ALU_1/B_signed [5]),
        .I1(A0_0[5]),
        .I2(\u_ALU_1/B_signed [4]),
        .I3(\pc_reg[2]_0 ),
        .I4(A0_0[4]),
        .O(register_reg_r1_0_31_6_11_0[2]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry_i_6__0
       (.I0(\u_ALU_1/B_signed [5]),
        .I1(A0_0[5]),
        .I2(\u_ALU_1/B_signed [4]),
        .I3(\pc_reg[2]_0 ),
        .I4(A0_0[4]),
        .O(register_reg_r1_0_31_6_11_3[2]));
  LUT4 #(
    .INIT(16'h8777)) 
    i__carry_i_6__1
       (.I0(A0_0[2]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[2]),
        .I3(ALUresult0_carry__3),
        .O(u_data_ram_i_69_0[2]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry_i_7
       (.I0(\u_ALU_1/B_signed [3]),
        .I1(A0_0[3]),
        .I2(\u_ALU_1/B_signed [2]),
        .I3(\pc_reg[2]_0 ),
        .I4(A0_0[2]),
        .O(register_reg_r1_0_31_6_11_0[1]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry_i_7__0
       (.I0(\u_ALU_1/B_signed [3]),
        .I1(A0_0[3]),
        .I2(\u_ALU_1/B_signed [2]),
        .I3(\pc_reg[2]_0 ),
        .I4(A0_0[2]),
        .O(register_reg_r1_0_31_6_11_3[1]));
  LUT4 #(
    .INIT(16'h8777)) 
    i__carry_i_7__1
       (.I0(A0[1]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[1]),
        .I3(ALUresult0_carry__3),
        .O(u_data_ram_i_69_0[1]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry_i_8
       (.I0(\u_ALU_1/B_signed [1]),
        .I1(A0[1]),
        .I2(\u_ALU_1/B_signed [0]),
        .I3(\pc_reg[2]_0 ),
        .I4(A0[0]),
        .O(register_reg_r1_0_31_6_11_0[0]));
  LUT5 #(
    .INIT(32'h90050905)) 
    i__carry_i_8__0
       (.I0(\u_ALU_1/B_signed [1]),
        .I1(A0[1]),
        .I2(\u_ALU_1/B_signed [0]),
        .I3(\pc_reg[2]_0 ),
        .I4(A0[0]),
        .O(register_reg_r1_0_31_6_11_3[0]));
  LUT4 #(
    .INIT(16'h8777)) 
    i__carry_i_8__1
       (.I0(A0[0]),
        .I1(\pc_reg[2]_0 ),
        .I2(B0[0]),
        .I3(ALUresult0_carry__3),
        .O(u_data_ram_i_69_0[0]));
  LUT4 #(
    .INIT(16'hB888)) 
    i__carry_i_9
       (.I0(douta[6]),
        .I1(ALUSrc_in),
        .I2(ALUresult0_carry__3),
        .I3(B0[6]),
        .O(\u_ALU_1/B_signed [6]));
  LUT6 #(
    .INIT(64'h000000AA003CF0CC)) 
    \pc[2]_i_1 
       (.I0(JrPC[2]),
        .I1(O),
        .I2(douta[0]),
        .I3(\pc_reg[2] ),
        .I4(\u_pc_1/p_0_in ),
        .I5(Jrn),
        .O(D));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \pc[2]_i_3 
       (.I0(\pc_reg[2]_1 ),
        .I1(douta[26]),
        .I2(\pc[2]_i_4_n_0 ),
        .I3(\pc[2]_i_5_n_0 ),
        .I4(\pc_reg[2]_2 ),
        .I5(\pc_reg[2]_3 ),
        .O(\u_pc_1/p_0_in ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \pc[2]_i_4 
       (.I0(\pc[31]_i_6_0 [3]),
        .I1(ALUresult[8]),
        .I2(ALUresult[9]),
        .I3(ALUresult[11]),
        .I4(\pc_plus_4_reg[31]_i_16_n_0 ),
        .I5(\pc_plus_4_reg[31]_i_15_n_0 ),
        .O(\pc[2]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h0D)) 
    \pc[2]_i_5 
       (.I0(\pc[31]_i_6_0 [1]),
        .I1(ALUresult[0]),
        .I2(ALUresult[1]),
        .O(\pc[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \pc[31]_i_10 
       (.I0(ALUresult[3]),
        .I1(\pc[31]_i_16_n_0 ),
        .I2(ALUresult[1]),
        .I3(ALUresult[0]),
        .I4(\pc[31]_i_6_0 [0]),
        .I5(\pc[31]_i_6_1 ),
        .O(\pc[31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00000313)) 
    \pc[31]_i_11 
       (.I0(\pc[31]_i_18_n_0 ),
        .I1(\result_OBUF[19]_inst_i_1 ),
        .I2(\pc[31]_i_12 ),
        .I3(\pc[31]_i_19_n_0 ),
        .I4(\result_OBUF[20]_inst_i_1 ),
        .O(\pc[31]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8F8F8F8FFFFFF)) 
    \pc[31]_i_13 
       (.I0(\pc[31]_i_12 ),
        .I1(\pc[31]_i_22_n_0 ),
        .I2(\pc_plus_4_reg[31]_i_10 ),
        .I3(\pc[31]_i_23_n_0 ),
        .I4(u_data_ram),
        .I5(\pc[31]_i_8 ),
        .O(\pc[31]_i_24 ));
  LUT6 #(
    .INIT(64'h0000000000010505)) 
    \pc[31]_i_15 
       (.I0(\pc_plus_4_reg[31]_i_5 ),
        .I1(\pc[31]_i_31_n_0 ),
        .I2(u_data_ram_i_68),
        .I3(\pc[31]_i_32_n_0 ),
        .I4(u_data_ram),
        .I5(\pc[31]_i_9 ),
        .O(\pc[31]_i_33 ));
  LUT5 #(
    .INIT(32'hECECEFFF)) 
    \pc[31]_i_16 
       (.I0(\pc[31]_i_18_n_0 ),
        .I1(\result_OBUF[19]_inst_i_1 ),
        .I2(\pc[31]_i_12 ),
        .I3(\pc[31]_i_34_n_0 ),
        .I4(\pc[31]_i_10_0 ),
        .O(\pc[31]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8F8F888)) 
    \pc[31]_i_18 
       (.I0(\pc[31]_i_13_0 ),
        .I1(douta[3]),
        .I2(\result_OBUF[17]_inst_i_2_0 ),
        .I3(\result_OBUF[19]_inst_i_7_n_0 ),
        .I4(\pc[31]_i_35_n_0 ),
        .I5(\result_OBUF[19]_inst_i_5_n_0 ),
        .O(\pc[31]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8F8F888)) 
    \pc[31]_i_19 
       (.I0(\pc[31]_i_13_0 ),
        .I1(douta[4]),
        .I2(\result_OBUF[17]_inst_i_2_0 ),
        .I3(\result_OBUF[20]_inst_i_8_n_0 ),
        .I4(\pc[31]_i_36_n_0 ),
        .I5(\result_OBUF[20]_inst_i_6_n_0 ),
        .O(\pc[31]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pc[31]_i_2 
       (.I0(\pc_reg[2]_0 ),
        .I1(A0_0[31]),
        .O(register_reg_r1_0_31_30_31_1));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA8880)) 
    \pc[31]_i_20 
       (.I0(\pc[31]_i_12 ),
        .I1(\result_OBUF[17]_inst_i_2_0 ),
        .I2(\result_OBUF[25]_inst_i_15_n_0 ),
        .I3(\pc_plus_4_reg[31]_i_24_n_0 ),
        .I4(\result_OBUF[25]_inst_i_5_n_0 ),
        .I5(\pc[31]_i_12_2 ),
        .O(\pc[31]_i_37 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA8880)) 
    \pc[31]_i_21 
       (.I0(\pc[31]_i_12 ),
        .I1(\result_OBUF[17]_inst_i_2_0 ),
        .I2(\result_OBUF[26]_inst_i_7_n_0 ),
        .I3(\result_OBUF[26]_inst_i_6_n_0 ),
        .I4(\result_OBUF[26]_inst_i_5_n_0 ),
        .I5(\pc[31]_i_12_1 ),
        .O(\pc[31]_i_38 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8F8F888)) 
    \pc[31]_i_22 
       (.I0(\pc[31]_i_13_0 ),
        .I1(douta[0]),
        .I2(\result_OBUF[17]_inst_i_2_0 ),
        .I3(\result_OBUF[16]_inst_i_8_n_0 ),
        .I4(\pc[31]_i_39_n_0 ),
        .I5(\result_OBUF[16]_inst_i_6_n_0 ),
        .O(\pc[31]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEEEEE)) 
    \pc[31]_i_23 
       (.I0(\result_OBUF[15]_inst_i_5_n_0 ),
        .I1(\pc[31]_i_40_n_0 ),
        .I2(\pc[31]_i_41_n_0 ),
        .I3(\result_OBUF[15]_inst_i_6_n_0 ),
        .I4(u_data_ram_i_9),
        .O(\pc[31]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFA800000000)) 
    \pc[31]_i_26 
       (.I0(u_data_ram_i_9),
        .I1(\result_OBUF[13]_inst_i_6_n_0 ),
        .I2(\pc[31]_i_42_n_0 ),
        .I3(\pc[31]_i_43_n_0 ),
        .I4(\result_OBUF[13]_inst_i_5_n_0 ),
        .I5(u_data_ram),
        .O(u_data_ram_i_45_0));
  LUT6 #(
    .INIT(64'hFFFFFFA800000000)) 
    \pc[31]_i_28 
       (.I0(u_data_ram_i_9),
        .I1(\result_OBUF[12]_inst_i_7_n_0 ),
        .I2(\pc[31]_i_44_n_0 ),
        .I3(\pc[31]_i_45_n_0 ),
        .I4(\result_OBUF[12]_inst_i_6_n_0 ),
        .I5(u_data_ram),
        .O(u_data_ram_i_45));
  LUT6 #(
    .INIT(64'hFFFFFFA800000000)) 
    \pc[31]_i_30 
       (.I0(u_data_ram_i_9),
        .I1(\result_OBUF[14]_inst_i_6_n_0 ),
        .I2(\pc[31]_i_46_n_0 ),
        .I3(\pc[31]_i_47_n_0 ),
        .I4(\result_OBUF[14]_inst_i_5_n_0 ),
        .I5(u_data_ram),
        .O(u_data_ram_i_45_1));
  LUT5 #(
    .INIT(32'hFFFEEEEE)) 
    \pc[31]_i_31 
       (.I0(u_data_ram_i_90_n_0),
        .I1(\pc_plus_4_reg[31]_i_19_n_0 ),
        .I2(\pc[31]_i_48_n_0 ),
        .I3(u_data_ram_i_91_n_0),
        .I4(u_data_ram_i_9),
        .O(\pc[31]_i_31_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEEEEE)) 
    \pc[31]_i_32 
       (.I0(u_data_ram_i_102_n_0),
        .I1(\pc[31]_i_49_n_0 ),
        .I2(\pc[31]_i_50_n_0 ),
        .I3(u_data_ram_i_103_n_0),
        .I4(u_data_ram_i_9),
        .O(\pc[31]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8F8F888)) 
    \pc[31]_i_34 
       (.I0(\pc[31]_i_13_0 ),
        .I1(douta[2]),
        .I2(\result_OBUF[17]_inst_i_2_0 ),
        .I3(\result_OBUF[18]_inst_i_7_n_0 ),
        .I4(\pc[31]_i_51_n_0 ),
        .I5(u_data_ram_i_116_0),
        .O(\pc[31]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h00CA)) 
    \pc[31]_i_35 
       (.I0(\result_OBUF[19]_inst_i_8_n_0 ),
        .I1(\result_OBUF[19]_inst_i_9_n_0 ),
        .I2(\result_OBUF[30]_inst_i_3 [0]),
        .I3(u_data_ram_i_77_n_0),
        .O(\pc[31]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h00CA)) 
    \pc[31]_i_36 
       (.I0(\result_OBUF[20]_inst_i_9_n_0 ),
        .I1(\result_OBUF[20]_inst_i_10_n_0 ),
        .I2(\result_OBUF[30]_inst_i_3 [0]),
        .I3(u_data_ram_i_77_n_0),
        .O(\pc[31]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h00CA)) 
    \pc[31]_i_39 
       (.I0(\result_OBUF[16]_inst_i_9_n_0 ),
        .I1(\result_OBUF[16]_inst_i_10_n_0 ),
        .I2(\result_OBUF[30]_inst_i_3 [0]),
        .I3(u_data_ram_i_77_n_0),
        .O(\pc[31]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h000000001666E888)) 
    \pc[31]_i_40 
       (.I0(\result_OBUF[30]_inst_i_3 [0]),
        .I1(\u_ALU_1/B_signed [15]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0_0[15]),
        .I4(\result_OBUF[30]_inst_i_3 [1]),
        .I5(\pc[31]_i_32_0 ),
        .O(\pc[31]_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h00CA)) 
    \pc[31]_i_41 
       (.I0(\result_OBUF[15]_inst_i_7_n_0 ),
        .I1(\result_OBUF[15]_inst_i_8_n_0 ),
        .I2(\result_OBUF[30]_inst_i_3 [0]),
        .I3(u_data_ram_i_77_n_0),
        .O(\pc[31]_i_41_n_0 ));
  LUT4 #(
    .INIT(16'h00CA)) 
    \pc[31]_i_42 
       (.I0(\result_OBUF[13]_inst_i_7_n_0 ),
        .I1(\result_OBUF[13]_inst_i_8_n_0 ),
        .I2(\result_OBUF[30]_inst_i_3 [0]),
        .I3(u_data_ram_i_77_n_0),
        .O(\pc[31]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h000000001666E888)) 
    \pc[31]_i_43 
       (.I0(\result_OBUF[30]_inst_i_3 [0]),
        .I1(\u_ALU_1/B_signed [13]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0_0[13]),
        .I4(\result_OBUF[30]_inst_i_3 [1]),
        .I5(\pc[31]_i_32_0 ),
        .O(\pc[31]_i_43_n_0 ));
  LUT4 #(
    .INIT(16'h00CA)) 
    \pc[31]_i_44 
       (.I0(\result_OBUF[12]_inst_i_8_n_0 ),
        .I1(\result_OBUF[12]_inst_i_9_n_0 ),
        .I2(\result_OBUF[30]_inst_i_3 [0]),
        .I3(u_data_ram_i_77_n_0),
        .O(\pc[31]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h000000001666E888)) 
    \pc[31]_i_45 
       (.I0(\result_OBUF[30]_inst_i_3 [0]),
        .I1(\u_ALU_1/B_signed [12]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0_0[12]),
        .I4(\result_OBUF[30]_inst_i_3 [1]),
        .I5(\pc[31]_i_32_0 ),
        .O(\pc[31]_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h00CA)) 
    \pc[31]_i_46 
       (.I0(\result_OBUF[14]_inst_i_7_n_0 ),
        .I1(\result_OBUF[14]_inst_i_8_n_0 ),
        .I2(\result_OBUF[30]_inst_i_3 [0]),
        .I3(u_data_ram_i_77_n_0),
        .O(\pc[31]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h000000001666E888)) 
    \pc[31]_i_47 
       (.I0(\result_OBUF[30]_inst_i_3 [0]),
        .I1(\u_ALU_1/B_signed [14]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0_0[14]),
        .I4(\result_OBUF[30]_inst_i_3 [1]),
        .I5(\pc[31]_i_32_0 ),
        .O(\pc[31]_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h00CA)) 
    \pc[31]_i_48 
       (.I0(u_data_ram_i_92_n_0),
        .I1(u_data_ram_i_93_n_0),
        .I2(\result_OBUF[30]_inst_i_3 [0]),
        .I3(u_data_ram_i_77_n_0),
        .O(\pc[31]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h000000001666E888)) 
    \pc[31]_i_49 
       (.I0(\result_OBUF[30]_inst_i_3 [0]),
        .I1(\u_ALU_1/B_signed [4]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0_0[4]),
        .I4(\result_OBUF[30]_inst_i_3 [1]),
        .I5(\pc[31]_i_32_0 ),
        .O(\pc[31]_i_49_n_0 ));
  LUT4 #(
    .INIT(16'h00CA)) 
    \pc[31]_i_50 
       (.I0(u_data_ram_i_104_n_0),
        .I1(u_data_ram_i_105_n_0),
        .I2(\result_OBUF[30]_inst_i_3 [0]),
        .I3(u_data_ram_i_77_n_0),
        .O(\pc[31]_i_50_n_0 ));
  LUT4 #(
    .INIT(16'h00CA)) 
    \pc[31]_i_51 
       (.I0(\result_OBUF[18]_inst_i_8_n_0 ),
        .I1(\result_OBUF[18]_inst_i_9_n_0 ),
        .I2(\result_OBUF[30]_inst_i_3 [0]),
        .I3(u_data_ram_i_77_n_0),
        .O(\pc[31]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \pc[31]_i_6 
       (.I0(\pc[31]_i_7_n_0 ),
        .I1(\pc_plus_4_reg[31]_i_15_n_0 ),
        .I2(\pc[31]_i_4 ),
        .I3(\pc[31]_i_4_0 ),
        .I4(\pc[31]_i_4_1 ),
        .I5(\pc[31]_i_10_n_0 ),
        .O(zero_in));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \pc[31]_i_7 
       (.I0(ALUresult[4]),
        .I1(\pc[31]_i_11_n_0 ),
        .I2(ALUresult[5]),
        .I3(ALUresult[6]),
        .I4(\pc_plus_4_reg[31]_i_6_0 ),
        .I5(\pc[31]_i_6_2 ),
        .O(\pc[31]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h0D)) 
    \pc_plus_4_reg[31]_i_11 
       (.I0(\pc[31]_i_6_0 [2]),
        .I1(ALUresult[2]),
        .I2(ALUresult[3]),
        .O(\result_OBUF[20]_inst_i_3_0 ));
  LUT6 #(
    .INIT(64'h0000000000015555)) 
    \pc_plus_4_reg[31]_i_13 
       (.I0(u_data_ram_i_68),
        .I1(u_data_ram_i_77_0),
        .I2(\pc_plus_4_reg[31]_i_19_n_0 ),
        .I3(u_data_ram_i_90_n_0),
        .I4(u_data_ram),
        .I5(\pc_plus_4_reg[31]_i_5 ),
        .O(\pc_plus_4_reg[31]_i_20 ));
  LUT6 #(
    .INIT(64'h0045004500000045)) 
    \pc_plus_4_reg[31]_i_15 
       (.I0(ALUresult[9]),
        .I1(ALUresult[8]),
        .I2(ALUresult[7]),
        .I3(ALUresult[11]),
        .I4(ALUresult[10]),
        .I5(\pc[31]_i_6_0 [3]),
        .O(\pc_plus_4_reg[31]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \pc_plus_4_reg[31]_i_16 
       (.I0(\pc_plus_4_reg[31]_i_6_0 ),
        .I1(ALUresult[6]),
        .I2(ALUresult[5]),
        .I3(ALUresult[3]),
        .I4(ALUresult[2]),
        .I5(ALUresult[4]),
        .O(\pc_plus_4_reg[31]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h0015)) 
    \pc_plus_4_reg[31]_i_17 
       (.I0(ALUresult[11]),
        .I1(\pc[31]_i_12 ),
        .I2(\result_OBUF[26]_inst_i_4_n_0 ),
        .I3(\pc_plus_4_reg[31]_i_6_1 ),
        .O(\pc_plus_4_reg[31]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h000000001666E888)) 
    \pc_plus_4_reg[31]_i_19 
       (.I0(\result_OBUF[30]_inst_i_3 [0]),
        .I1(\u_ALU_1/B_signed [7]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0_0[7]),
        .I4(\result_OBUF[30]_inst_i_3 [1]),
        .I5(\pc[31]_i_32_0 ),
        .O(\pc_plus_4_reg[31]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8F8F8F8F8)) 
    \pc_plus_4_reg[31]_i_23 
       (.I0(\pc[31]_i_13_0 ),
        .I1(douta[9]),
        .I2(\result_OBUF[25]_inst_i_5_n_0 ),
        .I3(\pc_plus_4_reg[31]_i_24_n_0 ),
        .I4(\result_OBUF[25]_inst_i_15_n_0 ),
        .I5(\result_OBUF[17]_inst_i_2_0 ),
        .O(\result_OBUF[31]_inst_i_10 ));
  LUT4 #(
    .INIT(16'h00CA)) 
    \pc_plus_4_reg[31]_i_24 
       (.I0(\result_OBUF[25]_inst_i_16_n_0 ),
        .I1(\result_OBUF[25]_inst_i_17_n_0 ),
        .I2(\result_OBUF[30]_inst_i_3 [0]),
        .I3(u_data_ram_i_77_n_0),
        .O(\pc_plus_4_reg[31]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \pc_plus_4_reg[31]_i_6 
       (.I0(\pc_reg[2]_2 ),
        .I1(\pc[2]_i_5_n_0 ),
        .I2(\pc_plus_4_reg[31]_i_15_n_0 ),
        .I3(\pc_plus_4_reg[31]_i_16_n_0 ),
        .I4(\pc_plus_4_reg[31]_i_17_n_0 ),
        .I5(\pc_plus_4_reg[31]_i_3 ),
        .O(\pc_plus_4_reg[31]_i_18 ));
  (* INIT_A = "64'hE4E4E4E4E4E4E4E4" *) 
  (* INIT_B = "64'hFFAA5500FFAA5500" *) 
  (* INIT_C = "64'h5555555500000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "u_reg_files_1/register" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M_UNIQ_BASE_ register_reg_r1_0_31_0_5
       (.ADDRA(douta[25:21]),
        .ADDRB(douta[25:21]),
        .ADDRC(douta[25:21]),
        .ADDRD(rW_select),
        .DIA(writeData[1:0]),
        .DIB(writeData[3:2]),
        .DIC(writeData[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(A0),
        .DOB(A0_0[3:2]),
        .DOC(A0_0[5:4]),
        .DOD(NLW_register_reg_r1_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out1),
        .WE(register_reg_r1_0_31_0_5_i_1_n_0));
  LUT4 #(
    .INIT(16'h0008)) 
    register_reg_r1_0_31_0_5_i_1
       (.I0(register_reg_r1_0_31_0_5_i_7_n_0),
        .I1(register_reg_r1_0_31_0_5_i_8_n_0),
        .I2(douta[30]),
        .I3(rst_n_IBUF),
        .O(register_reg_r1_0_31_0_5_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    register_reg_r1_0_31_0_5_i_10
       (.I0(douta[30]),
        .I1(douta[31]),
        .O(\bbstub_douta[31] ));
  LUT6 #(
    .INIT(64'h0080A8A80080AAAA)) 
    register_reg_r1_0_31_0_5_i_11
       (.I0(register_reg_r1_0_31_0_5_i_12_n_0),
        .I1(douta[1]),
        .I2(douta[5]),
        .I3(douta[2]),
        .I4(douta[3]),
        .I5(douta[0]),
        .O(register_reg_r1_0_31_0_5_i_11_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    register_reg_r1_0_31_0_5_i_12
       (.I0(douta[27]),
        .I1(douta[26]),
        .I2(douta[31]),
        .I3(douta[4]),
        .I4(douta[28]),
        .I5(douta[29]),
        .O(register_reg_r1_0_31_0_5_i_12_n_0));
  LUT6 #(
    .INIT(64'hAAAFAAAAAAAAAAAC)) 
    register_reg_r1_0_31_0_5_i_2
       (.I0(douta[20]),
        .I1(douta[15]),
        .I2(register_reg_r1_0_31_0_5_i_9_n_0),
        .I3(\bbstub_douta[31] ),
        .I4(douta[26]),
        .I5(douta[27]),
        .O(rW_select[4]));
  LUT6 #(
    .INIT(64'hAAAFAAAAAAAAAAAC)) 
    register_reg_r1_0_31_0_5_i_3
       (.I0(douta[19]),
        .I1(douta[14]),
        .I2(register_reg_r1_0_31_0_5_i_9_n_0),
        .I3(\bbstub_douta[31] ),
        .I4(douta[26]),
        .I5(douta[27]),
        .O(rW_select[3]));
  LUT6 #(
    .INIT(64'hAAAFAAAAAAAAAAAC)) 
    register_reg_r1_0_31_0_5_i_4
       (.I0(douta[18]),
        .I1(douta[13]),
        .I2(register_reg_r1_0_31_0_5_i_9_n_0),
        .I3(\bbstub_douta[31] ),
        .I4(douta[26]),
        .I5(douta[27]),
        .O(rW_select[2]));
  LUT6 #(
    .INIT(64'hAAAFAAAAAAAAAAAC)) 
    register_reg_r1_0_31_0_5_i_5
       (.I0(douta[17]),
        .I1(douta[12]),
        .I2(register_reg_r1_0_31_0_5_i_9_n_0),
        .I3(\bbstub_douta[31] ),
        .I4(douta[26]),
        .I5(douta[27]),
        .O(rW_select[1]));
  LUT6 #(
    .INIT(64'hAAAFAAAAAAAAAAAC)) 
    register_reg_r1_0_31_0_5_i_6
       (.I0(douta[16]),
        .I1(douta[11]),
        .I2(register_reg_r1_0_31_0_5_i_9_n_0),
        .I3(\bbstub_douta[31] ),
        .I4(douta[26]),
        .I5(douta[27]),
        .O(rW_select[0]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    register_reg_r1_0_31_0_5_i_7
       (.I0(rW_select[1]),
        .I1(rW_select[4]),
        .I2(rW_select[2]),
        .I3(rW_select[3]),
        .I4(rW_select[0]),
        .O(register_reg_r1_0_31_0_5_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF0008FF08)) 
    register_reg_r1_0_31_0_5_i_8
       (.I0(douta[26]),
        .I1(douta[27]),
        .I2(douta[28]),
        .I3(douta[29]),
        .I4(douta[31]),
        .I5(register_reg_r1_0_31_0_5_i_11_n_0),
        .O(register_reg_r1_0_31_0_5_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    register_reg_r1_0_31_0_5_i_9
       (.I0(douta[29]),
        .I1(douta[28]),
        .O(register_reg_r1_0_31_0_5_i_9_n_0));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "u_reg_files_1/register" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M_HD1 register_reg_r1_0_31_12_17
       (.ADDRA(douta[25:21]),
        .ADDRB(douta[25:21]),
        .ADDRC(douta[25:21]),
        .ADDRD(rW_select),
        .DIA(writeData[13:12]),
        .DIB(writeData[15:14]),
        .DIC(writeData[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(A0_0[13:12]),
        .DOB(A0_0[15:14]),
        .DOC(A0_0[17:16]),
        .DOD(NLW_register_reg_r1_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out1),
        .WE(register_reg_r1_0_31_0_5_i_1_n_0));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "u_reg_files_1/register" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M_HD2 register_reg_r1_0_31_18_23
       (.ADDRA(douta[25:21]),
        .ADDRB(douta[25:21]),
        .ADDRC(douta[25:21]),
        .ADDRD(rW_select),
        .DIA(writeData[19:18]),
        .DIB(writeData[21:20]),
        .DIC(writeData[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(A0_0[19:18]),
        .DOB(A0_0[21:20]),
        .DOC(A0_0[23:22]),
        .DOD(NLW_register_reg_r1_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out1),
        .WE(register_reg_r1_0_31_0_5_i_1_n_0));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "u_reg_files_1/register" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M_HD3 register_reg_r1_0_31_24_29
       (.ADDRA(douta[25:21]),
        .ADDRB(douta[25:21]),
        .ADDRC(douta[25:21]),
        .ADDRD(rW_select),
        .DIA(writeData[25:24]),
        .DIB(writeData[27:26]),
        .DIC(writeData[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(A0_0[25:24]),
        .DOB(A0_0[27:26]),
        .DOC(A0_0[29:28]),
        .DOD(NLW_register_reg_r1_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out1),
        .WE(register_reg_r1_0_31_0_5_i_1_n_0));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "u_reg_files_1/register" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32M_HD4 register_reg_r1_0_31_30_31
       (.ADDRA(douta[25:21]),
        .ADDRB(douta[25:21]),
        .ADDRC(douta[25:21]),
        .ADDRD(rW_select),
        .DIA(writeData[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(A0_0[31:30]),
        .DOB(NLW_register_reg_r1_0_31_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_register_reg_r1_0_31_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_register_reg_r1_0_31_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out1),
        .WE(register_reg_r1_0_31_0_5_i_1_n_0));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "u_reg_files_1/register" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M_HD5 register_reg_r1_0_31_6_11
       (.ADDRA(douta[25:21]),
        .ADDRB(douta[25:21]),
        .ADDRC(douta[25:21]),
        .ADDRD(rW_select),
        .DIA(writeData[7:6]),
        .DIB(writeData[9:8]),
        .DIC(writeData[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(A0_0[7:6]),
        .DOB(A0_0[9:8]),
        .DOC(A0_0[11:10]),
        .DOD(NLW_register_reg_r1_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out1),
        .WE(register_reg_r1_0_31_0_5_i_1_n_0));
  (* INIT_A = "64'hE4E4E4E4E4E4E4E4" *) 
  (* INIT_B = "64'hFFAA5500FFAA5500" *) 
  (* INIT_C = "64'h5555555500000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "u_reg_files_1/register" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M_HD6 register_reg_r2_0_31_0_5
       (.ADDRA(douta[20:16]),
        .ADDRB(douta[20:16]),
        .ADDRC(douta[20:16]),
        .ADDRD(rW_select),
        .DIA(writeData[1:0]),
        .DIB(writeData[3:2]),
        .DIC(writeData[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(B0[1:0]),
        .DOB(B0[3:2]),
        .DOC(B0[5:4]),
        .DOD(NLW_register_reg_r2_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out1),
        .WE(register_reg_r1_0_31_0_5_i_1_n_0));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "u_reg_files_1/register" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M_HD7 register_reg_r2_0_31_12_17
       (.ADDRA(douta[20:16]),
        .ADDRB(douta[20:16]),
        .ADDRC(douta[20:16]),
        .ADDRD(rW_select),
        .DIA(writeData[13:12]),
        .DIB(writeData[15:14]),
        .DIC(writeData[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(B0[13:12]),
        .DOB(B0[15:14]),
        .DOC(B0[17:16]),
        .DOD(NLW_register_reg_r2_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out1),
        .WE(register_reg_r1_0_31_0_5_i_1_n_0));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "u_reg_files_1/register" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M_HD8 register_reg_r2_0_31_18_23
       (.ADDRA(douta[20:16]),
        .ADDRB(douta[20:16]),
        .ADDRC(douta[20:16]),
        .ADDRD(rW_select),
        .DIA(writeData[19:18]),
        .DIB(writeData[21:20]),
        .DIC(writeData[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(B0[19:18]),
        .DOB(B0[21:20]),
        .DOC(B0[23:22]),
        .DOD(NLW_register_reg_r2_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out1),
        .WE(register_reg_r1_0_31_0_5_i_1_n_0));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "u_reg_files_1/register" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M_HD9 register_reg_r2_0_31_24_29
       (.ADDRA(douta[20:16]),
        .ADDRB(douta[20:16]),
        .ADDRC(douta[20:16]),
        .ADDRD(rW_select),
        .DIA(writeData[25:24]),
        .DIB(writeData[27:26]),
        .DIC(writeData[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(B0[25:24]),
        .DOB(B0[27:26]),
        .DOC(B0[29:28]),
        .DOD(NLW_register_reg_r2_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out1),
        .WE(register_reg_r1_0_31_0_5_i_1_n_0));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "u_reg_files_1/register" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32M_HD10 register_reg_r2_0_31_30_31
       (.ADDRA(douta[20:16]),
        .ADDRB(douta[20:16]),
        .ADDRC(douta[20:16]),
        .ADDRD(rW_select),
        .DIA(writeData[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(B0[31:30]),
        .DOB(NLW_register_reg_r2_0_31_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_register_reg_r2_0_31_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_register_reg_r2_0_31_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out1),
        .WE(register_reg_r1_0_31_0_5_i_1_n_0));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "u_reg_files_1/register" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M_HD11 register_reg_r2_0_31_6_11
       (.ADDRA(douta[20:16]),
        .ADDRB(douta[20:16]),
        .ADDRC(douta[20:16]),
        .ADDRD(rW_select),
        .DIA(writeData[7:6]),
        .DIB(writeData[9:8]),
        .DIC(writeData[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(B0[7:6]),
        .DOB(B0[9:8]),
        .DOC(B0[11:10]),
        .DOD(NLW_register_reg_r2_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out1),
        .WE(register_reg_r1_0_31_0_5_i_1_n_0));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \result_OBUF[0]_inst_i_10 
       (.I0(u_data_ram_i_162_n_0),
        .I1(\result_OBUF[0]_inst_i_16_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(u_data_ram_i_158_n_0),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(u_data_ram_i_169_n_0),
        .O(\result_OBUF[0]_inst_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \result_OBUF[0]_inst_i_11 
       (.I0(douta[6]),
        .I1(Sftmd),
        .I2(\pc_reg[2]_0 ),
        .I3(A0[0]),
        .O(\u_ALU_1/A_or_Shift__41 [0]));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \result_OBUF[0]_inst_i_12 
       (.I0(u_data_ram_i_160_n_0),
        .I1(\result_OBUF[0]_inst_i_17_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(u_data_ram_i_155_n_0),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(u_data_ram_i_167_n_0),
        .O(\result_OBUF[0]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000F00000008)) 
    \result_OBUF[0]_inst_i_13 
       (.I0(\result_OBUF[0]_inst_i_18_n_0 ),
        .I1(\result_OBUF[0]_inst_i_19_n_0 ),
        .I2(u_data_ram_i_140_n_0),
        .I3(u_data_ram_i_139_n_0),
        .I4(u_data_ram_i_138_n_0),
        .I5(Sftmd),
        .O(\result_OBUF[0]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \result_OBUF[0]_inst_i_16 
       (.I0(B[0]),
        .I1(B[16]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[24]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .I5(B[8]),
        .O(\result_OBUF[0]_inst_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \result_OBUF[0]_inst_i_17 
       (.I0(B[1]),
        .I1(B[17]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[25]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .I5(B[9]),
        .O(\result_OBUF[0]_inst_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F1F00000000)) 
    \result_OBUF[0]_inst_i_18 
       (.I0(A0_0[7]),
        .I1(A0_0[8]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0_0[5]),
        .I4(A0_0[6]),
        .I5(u_data_ram_i_183_n_0),
        .O(\result_OBUF[0]_inst_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F1F00000000)) 
    \result_OBUF[0]_inst_i_19 
       (.I0(A0_0[17]),
        .I1(A0_0[18]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0_0[19]),
        .I4(A0_0[20]),
        .I5(u_data_ram_i_185_n_0),
        .O(\result_OBUF[0]_inst_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hE200E200FF000000)) 
    \result_OBUF[0]_inst_i_5 
       (.I0(\result_OBUF[0]_inst_i_10_n_0 ),
        .I1(\u_ALU_1/A_or_Shift__41 [0]),
        .I2(\result_OBUF[0]_inst_i_12_n_0 ),
        .I3(\result_OBUF[17]_inst_i_2_1 ),
        .I4(B[31]),
        .I5(\result_OBUF[0]_inst_i_13_n_0 ),
        .O(\result_OBUF[0]_inst_i_13_1 ));
  LUT6 #(
    .INIT(64'h0A0A0C0C0A0AFC0C)) 
    \result_OBUF[0]_inst_i_6 
       (.I0(\result_OBUF[0]_inst_i_2 ),
        .I1(CO),
        .I2(\result_OBUF[30]_inst_i_3 [1]),
        .I3(\result_OBUF[1]_inst_i_6_n_0 ),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .I5(u_data_ram_i_77_n_0),
        .O(u_data_ram_i_77_13));
  LUT6 #(
    .INIT(64'hB800000000000000)) 
    \result_OBUF[0]_inst_i_7 
       (.I0(\result_OBUF[0]_inst_i_12_n_0 ),
        .I1(\u_ALU_1/A_or_Shift__41 [0]),
        .I2(\result_OBUF[0]_inst_i_10_n_0 ),
        .I3(\result_OBUF[30]_inst_i_3 [1]),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .I5(\result_OBUF[0]_inst_i_13_n_0 ),
        .O(\result_OBUF[0]_inst_i_13_0 ));
  LUT5 #(
    .INIT(32'h556A6A80)) 
    \result_OBUF[0]_inst_i_9 
       (.I0(\result_OBUF[30]_inst_i_3 [1]),
        .I1(A0[0]),
        .I2(\pc_reg[2]_0 ),
        .I3(\u_ALU_1/B_signed [0]),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .O(u_data_ram_i_72_8));
  LUT6 #(
    .INIT(64'hFFFFFFFF11141440)) 
    \result_OBUF[12]_inst_i_4 
       (.I0(\pc[31]_i_32_0 ),
        .I1(\result_OBUF[30]_inst_i_3 [1]),
        .I2(JrPC[12]),
        .I3(\u_ALU_1/B_signed [12]),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .I5(\result_OBUF[12]_inst_i_6_n_0 ),
        .O(\result_OBUF[12]_inst_i_6_0 ));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    \result_OBUF[12]_inst_i_5 
       (.I0(u_data_ram_i_9),
        .I1(\result_OBUF[12]_inst_i_7_n_0 ),
        .I2(\result_OBUF[12]_inst_i_8_n_0 ),
        .I3(\result_OBUF[12]_inst_i_9_n_0 ),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .I5(u_data_ram_i_77_n_0),
        .O(u_data_ram_i_77_3));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \result_OBUF[12]_inst_i_6 
       (.I0(\pc[31]_i_32_1 ),
        .I1(u_data_ram_i_113_n_0),
        .I2(\result_OBUF[13]_inst_i_9_n_0 ),
        .I3(u_data_ram_i_77_n_0),
        .I4(u_data_ram_i_127_n_0),
        .I5(u_data_ram_i_116_n_0),
        .O(\result_OBUF[12]_inst_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hC0A0)) 
    \result_OBUF[12]_inst_i_7 
       (.I0(u_data_ram_i_75_n_0),
        .I1(\result_OBUF[13]_inst_i_8_n_0 ),
        .I2(u_data_ram_i_113_n_0),
        .I3(\result_OBUF[30]_inst_i_3 [0]),
        .O(\result_OBUF[12]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \result_OBUF[12]_inst_i_8 
       (.I0(u_data_ram_i_144_n_0),
        .I1(\u_ALU_1/A_or_Shift__41 [1]),
        .I2(\result_OBUF[14]_inst_i_10_n_0 ),
        .I3(\u_ALU_1/A_or_Shift__41 [2]),
        .I4(\result_OBUF[18]_inst_i_11_n_0 ),
        .O(\result_OBUF[12]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[12]_inst_i_9 
       (.I0(\result_OBUF[18]_inst_i_13_n_0 ),
        .I1(u_data_ram_i_147_n_0),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(u_data_ram_i_145_n_0),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(u_data_ram_i_146_n_0),
        .O(\result_OBUF[12]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF11141440)) 
    \result_OBUF[13]_inst_i_3 
       (.I0(\pc[31]_i_32_0 ),
        .I1(\result_OBUF[30]_inst_i_3 [1]),
        .I2(JrPC[13]),
        .I3(\u_ALU_1/B_signed [13]),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .I5(\result_OBUF[13]_inst_i_5_n_0 ),
        .O(\result_OBUF[13]_inst_i_5_0 ));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    \result_OBUF[13]_inst_i_4 
       (.I0(u_data_ram_i_9),
        .I1(\result_OBUF[13]_inst_i_6_n_0 ),
        .I2(\result_OBUF[13]_inst_i_7_n_0 ),
        .I3(\result_OBUF[13]_inst_i_8_n_0 ),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .I5(u_data_ram_i_77_n_0),
        .O(u_data_ram_i_77_4));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \result_OBUF[13]_inst_i_5 
       (.I0(\pc[31]_i_32_1 ),
        .I1(u_data_ram_i_113_n_0),
        .I2(\result_OBUF[14]_inst_i_9_n_0 ),
        .I3(u_data_ram_i_77_n_0),
        .I4(\result_OBUF[13]_inst_i_9_n_0 ),
        .I5(u_data_ram_i_116_n_0),
        .O(\result_OBUF[13]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hC0A0)) 
    \result_OBUF[13]_inst_i_6 
       (.I0(\result_OBUF[12]_inst_i_8_n_0 ),
        .I1(\result_OBUF[14]_inst_i_8_n_0 ),
        .I2(u_data_ram_i_113_n_0),
        .I3(\result_OBUF[30]_inst_i_3 [0]),
        .O(\result_OBUF[13]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \result_OBUF[13]_inst_i_7 
       (.I0(u_data_ram_i_131_n_0),
        .I1(\u_ALU_1/A_or_Shift__41 [1]),
        .I2(\result_OBUF[15]_inst_i_10_n_0 ),
        .I3(\u_ALU_1/A_or_Shift__41 [2]),
        .I4(\result_OBUF[19]_inst_i_11_n_0 ),
        .O(\result_OBUF[13]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[13]_inst_i_8 
       (.I0(\result_OBUF[19]_inst_i_13_n_0 ),
        .I1(u_data_ram_i_134_n_0),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(u_data_ram_i_132_n_0),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(u_data_ram_i_133_n_0),
        .O(\result_OBUF[13]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[13]_inst_i_9 
       (.I0(\result_OBUF[19]_inst_i_15_n_0 ),
        .I1(u_data_ram_i_179_n_0),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[17]_inst_i_13_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(u_data_ram_i_178_n_0),
        .O(\result_OBUF[13]_inst_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \result_OBUF[14]_inst_i_10 
       (.I0(B0[8]),
        .I1(ALUresult0_carry__3),
        .I2(B0[0]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[14]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF11141440)) 
    \result_OBUF[14]_inst_i_3 
       (.I0(\pc[31]_i_32_0 ),
        .I1(\result_OBUF[30]_inst_i_3 [1]),
        .I2(JrPC[14]),
        .I3(\u_ALU_1/B_signed [14]),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .I5(\result_OBUF[14]_inst_i_5_n_0 ),
        .O(\result_OBUF[14]_inst_i_5_0 ));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    \result_OBUF[14]_inst_i_4 
       (.I0(u_data_ram_i_9),
        .I1(\result_OBUF[14]_inst_i_6_n_0 ),
        .I2(\result_OBUF[14]_inst_i_7_n_0 ),
        .I3(\result_OBUF[14]_inst_i_8_n_0 ),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .I5(u_data_ram_i_77_n_0),
        .O(u_data_ram_i_77_5));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \result_OBUF[14]_inst_i_5 
       (.I0(\pc[31]_i_32_1 ),
        .I1(u_data_ram_i_113_n_0),
        .I2(\result_OBUF[15]_inst_i_9_n_0 ),
        .I3(u_data_ram_i_77_n_0),
        .I4(\result_OBUF[14]_inst_i_9_n_0 ),
        .I5(u_data_ram_i_116_n_0),
        .O(\result_OBUF[14]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hC0A0)) 
    \result_OBUF[14]_inst_i_6 
       (.I0(\result_OBUF[13]_inst_i_7_n_0 ),
        .I1(\result_OBUF[15]_inst_i_8_n_0 ),
        .I2(u_data_ram_i_113_n_0),
        .I3(\result_OBUF[30]_inst_i_3 [0]),
        .O(\result_OBUF[14]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[14]_inst_i_7 
       (.I0(\result_OBUF[14]_inst_i_10_n_0 ),
        .I1(\result_OBUF[18]_inst_i_11_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[16]_inst_i_12_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[20]_inst_i_12_n_0 ),
        .O(\result_OBUF[14]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[14]_inst_i_8 
       (.I0(\result_OBUF[16]_inst_i_13_n_0 ),
        .I1(u_data_ram_i_145_n_0),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[18]_inst_i_13_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(u_data_ram_i_147_n_0),
        .O(\result_OBUF[14]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[14]_inst_i_9 
       (.I0(\result_OBUF[20]_inst_i_15_n_0 ),
        .I1(\result_OBUF[16]_inst_i_14_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[18]_inst_i_14_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(u_data_ram_i_176_n_0),
        .O(\result_OBUF[14]_inst_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \result_OBUF[15]_inst_i_10 
       (.I0(B0[9]),
        .I1(ALUresult0_carry__3),
        .I2(B0[1]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[15]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF11141440)) 
    \result_OBUF[15]_inst_i_3 
       (.I0(\pc[31]_i_32_0 ),
        .I1(\result_OBUF[30]_inst_i_3 [1]),
        .I2(JrPC[15]),
        .I3(\u_ALU_1/B_signed [15]),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .I5(\result_OBUF[15]_inst_i_5_n_0 ),
        .O(\result_OBUF[15]_inst_i_5_0 ));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    \result_OBUF[15]_inst_i_4 
       (.I0(u_data_ram_i_9),
        .I1(\result_OBUF[15]_inst_i_6_n_0 ),
        .I2(\result_OBUF[15]_inst_i_7_n_0 ),
        .I3(\result_OBUF[15]_inst_i_8_n_0 ),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .I5(u_data_ram_i_77_n_0),
        .O(u_data_ram_i_77_1));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \result_OBUF[15]_inst_i_5 
       (.I0(\pc[31]_i_32_1 ),
        .I1(u_data_ram_i_113_n_0),
        .I2(\result_OBUF[16]_inst_i_11_n_0 ),
        .I3(u_data_ram_i_77_n_0),
        .I4(\result_OBUF[15]_inst_i_9_n_0 ),
        .I5(u_data_ram_i_116_n_0),
        .O(\result_OBUF[15]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hC0A0)) 
    \result_OBUF[15]_inst_i_6 
       (.I0(\result_OBUF[14]_inst_i_7_n_0 ),
        .I1(\result_OBUF[16]_inst_i_10_n_0 ),
        .I2(u_data_ram_i_113_n_0),
        .I3(\result_OBUF[30]_inst_i_3 [0]),
        .O(\result_OBUF[15]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[15]_inst_i_7 
       (.I0(\result_OBUF[15]_inst_i_10_n_0 ),
        .I1(\result_OBUF[19]_inst_i_11_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[17]_inst_i_11_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[21]_inst_i_11_n_0 ),
        .O(\result_OBUF[15]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[15]_inst_i_8 
       (.I0(\result_OBUF[17]_inst_i_12_n_0 ),
        .I1(u_data_ram_i_132_n_0),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[19]_inst_i_13_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(u_data_ram_i_134_n_0),
        .O(\result_OBUF[15]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[15]_inst_i_9 
       (.I0(\result_OBUF[21]_inst_i_14_n_0 ),
        .I1(\result_OBUF[17]_inst_i_13_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[19]_inst_i_15_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(u_data_ram_i_179_n_0),
        .O(\result_OBUF[15]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[16]_inst_i_10 
       (.I0(\result_OBUF[18]_inst_i_12_n_0 ),
        .I1(\result_OBUF[18]_inst_i_13_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[16]_inst_i_13_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(u_data_ram_i_145_n_0),
        .O(\result_OBUF[16]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[16]_inst_i_11 
       (.I0(\result_OBUF[22]_inst_i_14_n_0 ),
        .I1(\result_OBUF[18]_inst_i_14_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[20]_inst_i_15_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[16]_inst_i_14_n_0 ),
        .O(\result_OBUF[16]_inst_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \result_OBUF[16]_inst_i_12 
       (.I0(B0[10]),
        .I1(ALUresult0_carry__3),
        .I2(B0[2]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[16]_inst_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \result_OBUF[16]_inst_i_13 
       (.I0(B0[20]),
        .I1(ALUresult0_carry__3),
        .I2(B0[28]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[16]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFF000000B800B800)) 
    \result_OBUF[16]_inst_i_14 
       (.I0(B0[24]),
        .I1(\u_ALU_1/A_or_Shift__41 [3]),
        .I2(B0[16]),
        .I3(ALUresult0_carry__3),
        .I4(B0[31]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[16]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAAAAAAAAA)) 
    \result_OBUF[16]_inst_i_3 
       (.I0(\pc_plus_4_reg[31]_i_10 ),
        .I1(\pc[31]_i_13_0 ),
        .I2(douta[0]),
        .I3(\result_OBUF[16]_inst_i_5_n_0 ),
        .I4(\result_OBUF[16]_inst_i_6_n_0 ),
        .I5(\pc[31]_i_12 ),
        .O(ALUresult[0]));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    \result_OBUF[16]_inst_i_5 
       (.I0(\result_OBUF[17]_inst_i_2_0 ),
        .I1(\result_OBUF[16]_inst_i_8_n_0 ),
        .I2(\result_OBUF[16]_inst_i_9_n_0 ),
        .I3(\result_OBUF[16]_inst_i_10_n_0 ),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .I5(u_data_ram_i_77_n_0),
        .O(\result_OBUF[16]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \result_OBUF[16]_inst_i_6 
       (.I0(\result_OBUF[17]_inst_i_2_1 ),
        .I1(u_data_ram_i_113_n_0),
        .I2(\result_OBUF[17]_inst_i_10_n_0 ),
        .I3(u_data_ram_i_77_n_0),
        .I4(\result_OBUF[16]_inst_i_11_n_0 ),
        .I5(u_data_ram_i_116_n_0),
        .O(\result_OBUF[16]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h556A6A80)) 
    \result_OBUF[16]_inst_i_7 
       (.I0(\result_OBUF[30]_inst_i_3 [1]),
        .I1(A0_0[16]),
        .I2(\pc_reg[2]_0 ),
        .I3(\u_ALU_1/B_signed [16]),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .O(u_data_ram_i_72_9));
  LUT4 #(
    .INIT(16'hC0A0)) 
    \result_OBUF[16]_inst_i_8 
       (.I0(\result_OBUF[15]_inst_i_7_n_0 ),
        .I1(\result_OBUF[17]_inst_i_9_n_0 ),
        .I2(u_data_ram_i_113_n_0),
        .I3(\result_OBUF[30]_inst_i_3 [0]),
        .O(\result_OBUF[16]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[16]_inst_i_9 
       (.I0(\result_OBUF[16]_inst_i_12_n_0 ),
        .I1(\result_OBUF[20]_inst_i_12_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[18]_inst_i_11_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[22]_inst_i_11_n_0 ),
        .O(\result_OBUF[16]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[17]_inst_i_10 
       (.I0(\result_OBUF[19]_inst_i_14_n_0 ),
        .I1(\result_OBUF[19]_inst_i_15_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[21]_inst_i_14_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[17]_inst_i_13_n_0 ),
        .O(\result_OBUF[17]_inst_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \result_OBUF[17]_inst_i_11 
       (.I0(B0[11]),
        .I1(ALUresult0_carry__3),
        .I2(B0[3]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[17]_inst_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \result_OBUF[17]_inst_i_12 
       (.I0(B0[21]),
        .I1(ALUresult0_carry__3),
        .I2(B0[29]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[17]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFF000000B800B800)) 
    \result_OBUF[17]_inst_i_13 
       (.I0(B0[25]),
        .I1(\u_ALU_1/A_or_Shift__41 [3]),
        .I2(B0[17]),
        .I3(ALUresult0_carry__3),
        .I4(B0[31]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[17]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAAAAAAAAA)) 
    \result_OBUF[17]_inst_i_2 
       (.I0(\pc_plus_4_reg[31]_i_10_0 ),
        .I1(\pc[31]_i_13_0 ),
        .I2(douta[1]),
        .I3(\result_OBUF[17]_inst_i_4_n_0 ),
        .I4(\result_OBUF[17]_inst_i_5_n_0 ),
        .I5(\pc[31]_i_12 ),
        .O(ALUresult[1]));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    \result_OBUF[17]_inst_i_4 
       (.I0(\result_OBUF[17]_inst_i_2_0 ),
        .I1(\result_OBUF[17]_inst_i_7_n_0 ),
        .I2(\result_OBUF[17]_inst_i_8_n_0 ),
        .I3(\result_OBUF[17]_inst_i_9_n_0 ),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .I5(u_data_ram_i_77_n_0),
        .O(\result_OBUF[17]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \result_OBUF[17]_inst_i_5 
       (.I0(\result_OBUF[17]_inst_i_2_1 ),
        .I1(u_data_ram_i_113_n_0),
        .I2(\result_OBUF[18]_inst_i_10_n_0 ),
        .I3(u_data_ram_i_77_n_0),
        .I4(\result_OBUF[17]_inst_i_10_n_0 ),
        .I5(u_data_ram_i_116_n_0),
        .O(\result_OBUF[17]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h556A6A80)) 
    \result_OBUF[17]_inst_i_6 
       (.I0(\result_OBUF[30]_inst_i_3 [1]),
        .I1(A0_0[17]),
        .I2(\pc_reg[2]_0 ),
        .I3(\u_ALU_1/B_signed [17]),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .O(u_data_ram_i_72_10));
  LUT4 #(
    .INIT(16'hC0A0)) 
    \result_OBUF[17]_inst_i_7 
       (.I0(\result_OBUF[16]_inst_i_9_n_0 ),
        .I1(\result_OBUF[18]_inst_i_9_n_0 ),
        .I2(u_data_ram_i_113_n_0),
        .I3(\result_OBUF[30]_inst_i_3 [0]),
        .O(\result_OBUF[17]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[17]_inst_i_8 
       (.I0(\result_OBUF[17]_inst_i_11_n_0 ),
        .I1(\result_OBUF[21]_inst_i_11_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[19]_inst_i_11_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[23]_inst_i_11_n_0 ),
        .O(\result_OBUF[17]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[17]_inst_i_9 
       (.I0(\result_OBUF[19]_inst_i_12_n_0 ),
        .I1(\result_OBUF[19]_inst_i_13_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[17]_inst_i_12_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(u_data_ram_i_132_n_0),
        .O(\result_OBUF[17]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[18]_inst_i_10 
       (.I0(\result_OBUF[20]_inst_i_14_n_0 ),
        .I1(\result_OBUF[20]_inst_i_15_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[22]_inst_i_14_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[18]_inst_i_14_n_0 ),
        .O(\result_OBUF[18]_inst_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \result_OBUF[18]_inst_i_11 
       (.I0(B0[12]),
        .I1(ALUresult0_carry__3),
        .I2(B0[4]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[18]_inst_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \result_OBUF[18]_inst_i_12 
       (.I0(B0[22]),
        .I1(ALUresult0_carry__3),
        .I2(B0[30]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[18]_inst_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \result_OBUF[18]_inst_i_13 
       (.I0(B0[18]),
        .I1(ALUresult0_carry__3),
        .I2(B0[26]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[18]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFF000000B800B800)) 
    \result_OBUF[18]_inst_i_14 
       (.I0(B0[26]),
        .I1(\u_ALU_1/A_or_Shift__41 [3]),
        .I2(B0[18]),
        .I3(ALUresult0_carry__3),
        .I4(B0[31]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[18]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    \result_OBUF[18]_inst_i_4 
       (.I0(\result_OBUF[17]_inst_i_2_0 ),
        .I1(\result_OBUF[18]_inst_i_7_n_0 ),
        .I2(\result_OBUF[18]_inst_i_8_n_0 ),
        .I3(\result_OBUF[18]_inst_i_9_n_0 ),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .I5(u_data_ram_i_77_n_0),
        .O(u_data_ram_i_77_14));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \result_OBUF[18]_inst_i_5 
       (.I0(\result_OBUF[17]_inst_i_2_1 ),
        .I1(u_data_ram_i_113_n_0),
        .I2(\result_OBUF[19]_inst_i_10_n_0 ),
        .I3(u_data_ram_i_77_n_0),
        .I4(\result_OBUF[18]_inst_i_10_n_0 ),
        .I5(u_data_ram_i_116_n_0),
        .O(u_data_ram_i_116_0));
  LUT5 #(
    .INIT(32'h556A6A80)) 
    \result_OBUF[18]_inst_i_6 
       (.I0(\result_OBUF[30]_inst_i_3 [1]),
        .I1(A0_0[18]),
        .I2(\pc_reg[2]_0 ),
        .I3(\u_ALU_1/B_signed [18]),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .O(u_data_ram_i_72_7));
  LUT4 #(
    .INIT(16'hC0A0)) 
    \result_OBUF[18]_inst_i_7 
       (.I0(\result_OBUF[17]_inst_i_8_n_0 ),
        .I1(\result_OBUF[19]_inst_i_9_n_0 ),
        .I2(u_data_ram_i_113_n_0),
        .I3(\result_OBUF[30]_inst_i_3 [0]),
        .O(\result_OBUF[18]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[18]_inst_i_8 
       (.I0(\result_OBUF[18]_inst_i_11_n_0 ),
        .I1(\result_OBUF[22]_inst_i_11_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[20]_inst_i_12_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[24]_inst_i_13_n_0 ),
        .O(\result_OBUF[18]_inst_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \result_OBUF[18]_inst_i_9 
       (.I0(\result_OBUF[20]_inst_i_13_n_0 ),
        .I1(\u_ALU_1/A_or_Shift__41 [1]),
        .I2(\result_OBUF[18]_inst_i_12_n_0 ),
        .I3(\u_ALU_1/A_or_Shift__41 [2]),
        .I4(\result_OBUF[18]_inst_i_13_n_0 ),
        .O(\result_OBUF[18]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[19]_inst_i_10 
       (.I0(\result_OBUF[21]_inst_i_13_n_0 ),
        .I1(\result_OBUF[21]_inst_i_14_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[19]_inst_i_14_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[19]_inst_i_15_n_0 ),
        .O(\result_OBUF[19]_inst_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \result_OBUF[19]_inst_i_11 
       (.I0(B0[13]),
        .I1(ALUresult0_carry__3),
        .I2(B0[5]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[19]_inst_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \result_OBUF[19]_inst_i_12 
       (.I0(B0[23]),
        .I1(ALUresult0_carry__3),
        .I2(B0[31]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[19]_inst_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \result_OBUF[19]_inst_i_13 
       (.I0(B0[19]),
        .I1(ALUresult0_carry__3),
        .I2(B0[27]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[19]_inst_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hF000E020)) 
    \result_OBUF[19]_inst_i_14 
       (.I0(B0[23]),
        .I1(\u_ALU_1/A_or_Shift__41 [4]),
        .I2(ALUresult0_carry__3),
        .I3(B0[31]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .O(\result_OBUF[19]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFF000000B800B800)) 
    \result_OBUF[19]_inst_i_15 
       (.I0(B0[27]),
        .I1(\u_ALU_1/A_or_Shift__41 [3]),
        .I2(B0[19]),
        .I3(ALUresult0_carry__3),
        .I4(B0[31]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[19]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAAAAAAAAA)) 
    \result_OBUF[19]_inst_i_2 
       (.I0(\result_OBUF[19]_inst_i_1 ),
        .I1(\pc[31]_i_13_0 ),
        .I2(douta[3]),
        .I3(\result_OBUF[19]_inst_i_4_n_0 ),
        .I4(\result_OBUF[19]_inst_i_5_n_0 ),
        .I5(\pc[31]_i_12 ),
        .O(ALUresult[2]));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    \result_OBUF[19]_inst_i_4 
       (.I0(\result_OBUF[17]_inst_i_2_0 ),
        .I1(\result_OBUF[19]_inst_i_7_n_0 ),
        .I2(\result_OBUF[19]_inst_i_8_n_0 ),
        .I3(\result_OBUF[19]_inst_i_9_n_0 ),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .I5(u_data_ram_i_77_n_0),
        .O(\result_OBUF[19]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \result_OBUF[19]_inst_i_5 
       (.I0(\result_OBUF[17]_inst_i_2_1 ),
        .I1(u_data_ram_i_113_n_0),
        .I2(\result_OBUF[20]_inst_i_11_n_0 ),
        .I3(u_data_ram_i_77_n_0),
        .I4(\result_OBUF[19]_inst_i_10_n_0 ),
        .I5(u_data_ram_i_116_n_0),
        .O(\result_OBUF[19]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h556A6A80)) 
    \result_OBUF[19]_inst_i_6 
       (.I0(\result_OBUF[30]_inst_i_3 [1]),
        .I1(A0_0[19]),
        .I2(\pc_reg[2]_0 ),
        .I3(\u_ALU_1/B_signed [19]),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .O(u_data_ram_i_72_6));
  LUT4 #(
    .INIT(16'hC0A0)) 
    \result_OBUF[19]_inst_i_7 
       (.I0(\result_OBUF[18]_inst_i_8_n_0 ),
        .I1(\result_OBUF[20]_inst_i_10_n_0 ),
        .I2(u_data_ram_i_113_n_0),
        .I3(\result_OBUF[30]_inst_i_3 [0]),
        .O(\result_OBUF[19]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[19]_inst_i_8 
       (.I0(\result_OBUF[19]_inst_i_11_n_0 ),
        .I1(\result_OBUF[23]_inst_i_11_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[21]_inst_i_11_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[25]_inst_i_21_n_0 ),
        .O(\result_OBUF[19]_inst_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \result_OBUF[19]_inst_i_9 
       (.I0(\result_OBUF[21]_inst_i_12_n_0 ),
        .I1(\u_ALU_1/A_or_Shift__41 [1]),
        .I2(\result_OBUF[19]_inst_i_12_n_0 ),
        .I3(\u_ALU_1/A_or_Shift__41 [2]),
        .I4(\result_OBUF[19]_inst_i_13_n_0 ),
        .O(\result_OBUF[19]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF11141440)) 
    \result_OBUF[1]_inst_i_3 
       (.I0(\pc[31]_i_32_0 ),
        .I1(\result_OBUF[30]_inst_i_3 [1]),
        .I2(JrPC[1]),
        .I3(\u_ALU_1/B_signed [1]),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .I5(\result_OBUF[1]_inst_i_5_n_0 ),
        .O(\result_OBUF[1]_inst_i_5_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA0008800)) 
    \result_OBUF[1]_inst_i_4 
       (.I0(u_data_ram_i_9),
        .I1(\result_OBUF[1]_inst_i_6_n_0 ),
        .I2(u_data_ram_i_122_n_0),
        .I3(u_data_ram_i_113_n_0),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .I5(\result_OBUF[1]_inst_i_7_n_0 ),
        .O(\result_OBUF[1]_inst_i_7_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA080808)) 
    \result_OBUF[1]_inst_i_5 
       (.I0(\pc[31]_i_32_1 ),
        .I1(\result_OBUF[0]_inst_i_12_n_0 ),
        .I2(u_data_ram_i_77_n_0),
        .I3(u_data_ram_i_115_n_0),
        .I4(u_data_ram_i_113_n_0),
        .I5(u_data_ram_i_116_n_0),
        .O(\result_OBUF[1]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \result_OBUF[1]_inst_i_6 
       (.I0(ALUresult0_carry__3),
        .I1(B0[0]),
        .I2(\result_OBUF[30]_inst_i_9_n_0 ),
        .I3(\u_ALU_1/A_or_Shift__41 [2]),
        .I4(\u_ALU_1/A_or_Shift__41 [1]),
        .O(\result_OBUF[1]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF008080)) 
    \result_OBUF[1]_inst_i_7 
       (.I0(B[1]),
        .I1(\result_OBUF[30]_inst_i_9_n_0 ),
        .I2(\result_OBUF[30]_inst_i_10_n_0 ),
        .I3(\result_OBUF[0]_inst_i_12_n_0 ),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .I5(u_data_ram_i_77_n_0),
        .O(\result_OBUF[1]_inst_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \result_OBUF[20]_inst_i_10 
       (.I0(\result_OBUF[22]_inst_i_12_n_0 ),
        .I1(\u_ALU_1/A_or_Shift__41 [1]),
        .I2(\result_OBUF[20]_inst_i_13_n_0 ),
        .O(\result_OBUF[20]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[20]_inst_i_11 
       (.I0(\result_OBUF[22]_inst_i_13_n_0 ),
        .I1(\result_OBUF[22]_inst_i_14_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[20]_inst_i_14_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[20]_inst_i_15_n_0 ),
        .O(\result_OBUF[20]_inst_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \result_OBUF[20]_inst_i_12 
       (.I0(B0[14]),
        .I1(ALUresult0_carry__3),
        .I2(B0[6]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[20]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h000000003300B8B8)) 
    \result_OBUF[20]_inst_i_13 
       (.I0(B[24]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(B[20]),
        .I3(B[28]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[20]_inst_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hF000E020)) 
    \result_OBUF[20]_inst_i_14 
       (.I0(B0[24]),
        .I1(\u_ALU_1/A_or_Shift__41 [4]),
        .I2(ALUresult0_carry__3),
        .I3(B0[31]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .O(\result_OBUF[20]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFF000000B800B800)) 
    \result_OBUF[20]_inst_i_15 
       (.I0(B0[28]),
        .I1(\u_ALU_1/A_or_Shift__41 [3]),
        .I2(B0[20]),
        .I3(ALUresult0_carry__3),
        .I4(B0[31]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[20]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAAAAAAAAA)) 
    \result_OBUF[20]_inst_i_3 
       (.I0(\result_OBUF[20]_inst_i_1 ),
        .I1(\pc[31]_i_13_0 ),
        .I2(douta[4]),
        .I3(\result_OBUF[20]_inst_i_5_n_0 ),
        .I4(\result_OBUF[20]_inst_i_6_n_0 ),
        .I5(\pc[31]_i_12 ),
        .O(ALUresult[3]));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    \result_OBUF[20]_inst_i_5 
       (.I0(\result_OBUF[17]_inst_i_2_0 ),
        .I1(\result_OBUF[20]_inst_i_8_n_0 ),
        .I2(\result_OBUF[20]_inst_i_9_n_0 ),
        .I3(\result_OBUF[20]_inst_i_10_n_0 ),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .I5(u_data_ram_i_77_n_0),
        .O(\result_OBUF[20]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \result_OBUF[20]_inst_i_6 
       (.I0(\result_OBUF[17]_inst_i_2_1 ),
        .I1(u_data_ram_i_113_n_0),
        .I2(\result_OBUF[21]_inst_i_10_n_0 ),
        .I3(u_data_ram_i_77_n_0),
        .I4(\result_OBUF[20]_inst_i_11_n_0 ),
        .I5(u_data_ram_i_116_n_0),
        .O(\result_OBUF[20]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h556A6A80)) 
    \result_OBUF[20]_inst_i_7 
       (.I0(\result_OBUF[30]_inst_i_3 [1]),
        .I1(A0_0[20]),
        .I2(\pc_reg[2]_0 ),
        .I3(\u_ALU_1/B_signed [20]),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .O(u_data_ram_i_72_5));
  LUT4 #(
    .INIT(16'hC0A0)) 
    \result_OBUF[20]_inst_i_8 
       (.I0(\result_OBUF[19]_inst_i_8_n_0 ),
        .I1(\result_OBUF[21]_inst_i_9_n_0 ),
        .I2(u_data_ram_i_113_n_0),
        .I3(\result_OBUF[30]_inst_i_3 [0]),
        .O(\result_OBUF[20]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[20]_inst_i_9 
       (.I0(\result_OBUF[20]_inst_i_12_n_0 ),
        .I1(\result_OBUF[24]_inst_i_13_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[22]_inst_i_11_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[24]_inst_i_14_n_0 ),
        .O(\result_OBUF[20]_inst_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \result_OBUF[21]_inst_i_10 
       (.I0(\result_OBUF[23]_inst_i_13_n_0 ),
        .I1(\u_ALU_1/A_or_Shift__41 [1]),
        .I2(\result_OBUF[21]_inst_i_13_n_0 ),
        .I3(\u_ALU_1/A_or_Shift__41 [2]),
        .I4(\result_OBUF[21]_inst_i_14_n_0 ),
        .O(\result_OBUF[21]_inst_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \result_OBUF[21]_inst_i_11 
       (.I0(B0[15]),
        .I1(ALUresult0_carry__3),
        .I2(B0[7]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[21]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000000003300B8B8)) 
    \result_OBUF[21]_inst_i_12 
       (.I0(B[25]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(B[21]),
        .I3(B[29]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[21]_inst_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hF000E020)) 
    \result_OBUF[21]_inst_i_13 
       (.I0(B0[25]),
        .I1(\u_ALU_1/A_or_Shift__41 [4]),
        .I2(ALUresult0_carry__3),
        .I3(B0[31]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .O(\result_OBUF[21]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFF000000B800B800)) 
    \result_OBUF[21]_inst_i_14 
       (.I0(B0[29]),
        .I1(\u_ALU_1/A_or_Shift__41 [3]),
        .I2(B0[21]),
        .I3(ALUresult0_carry__3),
        .I4(B0[31]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[21]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAAAAAAAAA)) 
    \result_OBUF[21]_inst_i_2 
       (.I0(\result_OBUF[21]_inst_i_1 ),
        .I1(\pc[31]_i_13_0 ),
        .I2(douta[5]),
        .I3(\result_OBUF[21]_inst_i_4_n_0 ),
        .I4(\result_OBUF[21]_inst_i_5_n_0 ),
        .I5(\pc[31]_i_12 ),
        .O(ALUresult[4]));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    \result_OBUF[21]_inst_i_4 
       (.I0(\result_OBUF[17]_inst_i_2_0 ),
        .I1(\result_OBUF[21]_inst_i_7_n_0 ),
        .I2(\result_OBUF[21]_inst_i_8_n_0 ),
        .I3(\result_OBUF[21]_inst_i_9_n_0 ),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .I5(u_data_ram_i_77_n_0),
        .O(\result_OBUF[21]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \result_OBUF[21]_inst_i_5 
       (.I0(\result_OBUF[17]_inst_i_2_1 ),
        .I1(u_data_ram_i_113_n_0),
        .I2(\result_OBUF[22]_inst_i_10_n_0 ),
        .I3(u_data_ram_i_77_n_0),
        .I4(\result_OBUF[21]_inst_i_10_n_0 ),
        .I5(u_data_ram_i_116_n_0),
        .O(\result_OBUF[21]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h556A6A80)) 
    \result_OBUF[21]_inst_i_6 
       (.I0(\result_OBUF[30]_inst_i_3 [1]),
        .I1(A0_0[21]),
        .I2(\pc_reg[2]_0 ),
        .I3(\u_ALU_1/B_signed [21]),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .O(u_data_ram_i_72_0));
  LUT4 #(
    .INIT(16'hC0A0)) 
    \result_OBUF[21]_inst_i_7 
       (.I0(\result_OBUF[20]_inst_i_9_n_0 ),
        .I1(\result_OBUF[22]_inst_i_9_n_0 ),
        .I2(u_data_ram_i_113_n_0),
        .I3(\result_OBUF[30]_inst_i_3 [0]),
        .O(\result_OBUF[21]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[21]_inst_i_8 
       (.I0(\result_OBUF[21]_inst_i_11_n_0 ),
        .I1(\result_OBUF[25]_inst_i_21_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[23]_inst_i_11_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[28]_inst_i_17_n_0 ),
        .O(\result_OBUF[21]_inst_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \result_OBUF[21]_inst_i_9 
       (.I0(\result_OBUF[23]_inst_i_12_n_0 ),
        .I1(\u_ALU_1/A_or_Shift__41 [1]),
        .I2(\result_OBUF[21]_inst_i_12_n_0 ),
        .O(\result_OBUF[21]_inst_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \result_OBUF[22]_inst_i_10 
       (.I0(\result_OBUF[24]_inst_i_12_n_0 ),
        .I1(\u_ALU_1/A_or_Shift__41 [1]),
        .I2(\result_OBUF[22]_inst_i_13_n_0 ),
        .I3(\u_ALU_1/A_or_Shift__41 [2]),
        .I4(\result_OBUF[22]_inst_i_14_n_0 ),
        .O(\result_OBUF[22]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \result_OBUF[22]_inst_i_11 
       (.I0(B0[0]),
        .I1(B0[16]),
        .I2(ALUresult0_carry__3),
        .I3(B0[8]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[22]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000000003300B8B8)) 
    \result_OBUF[22]_inst_i_12 
       (.I0(B[26]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(B[22]),
        .I3(B[30]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[22]_inst_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hF000E020)) 
    \result_OBUF[22]_inst_i_13 
       (.I0(B0[26]),
        .I1(\u_ALU_1/A_or_Shift__41 [4]),
        .I2(ALUresult0_carry__3),
        .I3(B0[31]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .O(\result_OBUF[22]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFF000000B800B800)) 
    \result_OBUF[22]_inst_i_14 
       (.I0(B0[30]),
        .I1(\u_ALU_1/A_or_Shift__41 [3]),
        .I2(B0[22]),
        .I3(ALUresult0_carry__3),
        .I4(B0[31]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[22]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAAAAAAAAA)) 
    \result_OBUF[22]_inst_i_2 
       (.I0(\result_OBUF[22]_inst_i_1 ),
        .I1(\pc[31]_i_13_0 ),
        .I2(douta[6]),
        .I3(\result_OBUF[22]_inst_i_4_n_0 ),
        .I4(\result_OBUF[22]_inst_i_5_n_0 ),
        .I5(\pc[31]_i_12 ),
        .O(ALUresult[5]));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    \result_OBUF[22]_inst_i_4 
       (.I0(\result_OBUF[17]_inst_i_2_0 ),
        .I1(\result_OBUF[22]_inst_i_7_n_0 ),
        .I2(\result_OBUF[22]_inst_i_8_n_0 ),
        .I3(\result_OBUF[22]_inst_i_9_n_0 ),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .I5(u_data_ram_i_77_n_0),
        .O(\result_OBUF[22]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \result_OBUF[22]_inst_i_5 
       (.I0(\result_OBUF[17]_inst_i_2_1 ),
        .I1(u_data_ram_i_113_n_0),
        .I2(\result_OBUF[23]_inst_i_10_n_0 ),
        .I3(u_data_ram_i_77_n_0),
        .I4(\result_OBUF[22]_inst_i_10_n_0 ),
        .I5(u_data_ram_i_116_n_0),
        .O(\result_OBUF[22]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h556A6A80)) 
    \result_OBUF[22]_inst_i_6 
       (.I0(\result_OBUF[30]_inst_i_3 [1]),
        .I1(A0_0[22]),
        .I2(\pc_reg[2]_0 ),
        .I3(\u_ALU_1/B_signed [22]),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .O(u_data_ram_i_72_1));
  LUT4 #(
    .INIT(16'hC0A0)) 
    \result_OBUF[22]_inst_i_7 
       (.I0(\result_OBUF[21]_inst_i_8_n_0 ),
        .I1(\result_OBUF[23]_inst_i_9_n_0 ),
        .I2(u_data_ram_i_113_n_0),
        .I3(\result_OBUF[30]_inst_i_3 [0]),
        .O(\result_OBUF[22]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[22]_inst_i_8 
       (.I0(\result_OBUF[22]_inst_i_11_n_0 ),
        .I1(\result_OBUF[24]_inst_i_14_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[24]_inst_i_13_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[29]_inst_i_13_n_0 ),
        .O(\result_OBUF[22]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \result_OBUF[22]_inst_i_9 
       (.I0(B[28]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(\result_OBUF[30]_inst_i_9_n_0 ),
        .I3(B[24]),
        .I4(\u_ALU_1/A_or_Shift__41 [1]),
        .I5(\result_OBUF[22]_inst_i_12_n_0 ),
        .O(\result_OBUF[22]_inst_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \result_OBUF[23]_inst_i_10 
       (.I0(\result_OBUF[25]_inst_i_20_n_0 ),
        .I1(\u_ALU_1/A_or_Shift__41 [1]),
        .I2(\result_OBUF[23]_inst_i_13_n_0 ),
        .O(\result_OBUF[23]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \result_OBUF[23]_inst_i_11 
       (.I0(B0[1]),
        .I1(B0[17]),
        .I2(ALUresult0_carry__3),
        .I3(B0[9]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[23]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000000003300B8B8)) 
    \result_OBUF[23]_inst_i_12 
       (.I0(B[27]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(B[23]),
        .I3(B[31]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[23]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFB800B8)) 
    \result_OBUF[23]_inst_i_13 
       (.I0(B[27]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(B[23]),
        .I3(\u_ALU_1/A_or_Shift__41 [4]),
        .I4(B[31]),
        .I5(\u_ALU_1/A_or_Shift__41 [3]),
        .O(\result_OBUF[23]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAAAAAAAAA)) 
    \result_OBUF[23]_inst_i_2 
       (.I0(\result_OBUF[23]_inst_i_1 ),
        .I1(\pc[31]_i_13_0 ),
        .I2(douta[7]),
        .I3(\result_OBUF[23]_inst_i_4_n_0 ),
        .I4(\result_OBUF[23]_inst_i_5_n_0 ),
        .I5(\pc[31]_i_12 ),
        .O(ALUresult[6]));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    \result_OBUF[23]_inst_i_4 
       (.I0(\result_OBUF[17]_inst_i_2_0 ),
        .I1(\result_OBUF[23]_inst_i_7_n_0 ),
        .I2(\result_OBUF[23]_inst_i_8_n_0 ),
        .I3(\result_OBUF[23]_inst_i_9_n_0 ),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .I5(u_data_ram_i_77_n_0),
        .O(\result_OBUF[23]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \result_OBUF[23]_inst_i_5 
       (.I0(\result_OBUF[17]_inst_i_2_1 ),
        .I1(u_data_ram_i_113_n_0),
        .I2(\result_OBUF[24]_inst_i_8_n_0 ),
        .I3(u_data_ram_i_77_n_0),
        .I4(\result_OBUF[23]_inst_i_10_n_0 ),
        .I5(u_data_ram_i_116_n_0),
        .O(\result_OBUF[23]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h556A6A80)) 
    \result_OBUF[23]_inst_i_6 
       (.I0(\result_OBUF[30]_inst_i_3 [1]),
        .I1(A0_0[23]),
        .I2(\pc_reg[2]_0 ),
        .I3(\u_ALU_1/B_signed [23]),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .O(u_data_ram_i_72_2));
  LUT4 #(
    .INIT(16'hC0A0)) 
    \result_OBUF[23]_inst_i_7 
       (.I0(\result_OBUF[22]_inst_i_8_n_0 ),
        .I1(\result_OBUF[24]_inst_i_11_n_0 ),
        .I2(u_data_ram_i_113_n_0),
        .I3(\result_OBUF[30]_inst_i_3 [0]),
        .O(\result_OBUF[23]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[23]_inst_i_8 
       (.I0(\result_OBUF[23]_inst_i_11_n_0 ),
        .I1(\result_OBUF[28]_inst_i_17_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[25]_inst_i_21_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[30]_inst_i_12_n_0 ),
        .O(\result_OBUF[23]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \result_OBUF[23]_inst_i_9 
       (.I0(B[29]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(\result_OBUF[30]_inst_i_9_n_0 ),
        .I3(B[25]),
        .I4(\u_ALU_1/A_or_Shift__41 [1]),
        .I5(\result_OBUF[23]_inst_i_12_n_0 ),
        .O(\result_OBUF[23]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[24]_inst_i_10 
       (.I0(\result_OBUF[24]_inst_i_13_n_0 ),
        .I1(\result_OBUF[29]_inst_i_13_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[24]_inst_i_14_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[31]_inst_i_23_n_0 ),
        .O(\result_OBUF[24]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \result_OBUF[24]_inst_i_11 
       (.I0(B[30]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(\result_OBUF[30]_inst_i_9_n_0 ),
        .I3(B[26]),
        .I4(\u_ALU_1/A_or_Shift__41 [1]),
        .I5(\result_OBUF[24]_inst_i_15_n_0 ),
        .O(\result_OBUF[24]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFB800B8)) 
    \result_OBUF[24]_inst_i_12 
       (.I0(B[28]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(B[24]),
        .I3(\u_ALU_1/A_or_Shift__41 [4]),
        .I4(B[31]),
        .I5(\u_ALU_1/A_or_Shift__41 [3]),
        .O(\result_OBUF[24]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \result_OBUF[24]_inst_i_13 
       (.I0(B0[2]),
        .I1(B0[18]),
        .I2(ALUresult0_carry__3),
        .I3(B0[10]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[24]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \result_OBUF[24]_inst_i_14 
       (.I0(B0[4]),
        .I1(B0[20]),
        .I2(ALUresult0_carry__3),
        .I3(B0[12]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[24]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h000B000800000000)) 
    \result_OBUF[24]_inst_i_15 
       (.I0(B0[28]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(\u_ALU_1/A_or_Shift__41 [4]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(B0[24]),
        .I5(ALUresult0_carry__3),
        .O(\result_OBUF[24]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAAAAAAAAA)) 
    \result_OBUF[24]_inst_i_3 
       (.I0(\result_OBUF[24]_inst_i_1 ),
        .I1(\pc[31]_i_13_0 ),
        .I2(douta[8]),
        .I3(\result_OBUF[24]_inst_i_5_n_0 ),
        .I4(\result_OBUF[24]_inst_i_6_n_0 ),
        .I5(\pc[31]_i_12 ),
        .O(ALUresult[7]));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \result_OBUF[24]_inst_i_5 
       (.I0(\result_OBUF[17]_inst_i_2_1 ),
        .I1(u_data_ram_i_113_n_0),
        .I2(\result_OBUF[25]_inst_i_14_n_0 ),
        .I3(u_data_ram_i_77_n_0),
        .I4(\result_OBUF[24]_inst_i_8_n_0 ),
        .I5(u_data_ram_i_116_n_0),
        .O(\result_OBUF[24]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    \result_OBUF[24]_inst_i_6 
       (.I0(\result_OBUF[17]_inst_i_2_0 ),
        .I1(\result_OBUF[24]_inst_i_9_n_0 ),
        .I2(\result_OBUF[24]_inst_i_10_n_0 ),
        .I3(\result_OBUF[24]_inst_i_11_n_0 ),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .I5(u_data_ram_i_77_n_0),
        .O(\result_OBUF[24]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h556A6A80)) 
    \result_OBUF[24]_inst_i_7 
       (.I0(\result_OBUF[30]_inst_i_3 [1]),
        .I1(A0_0[24]),
        .I2(\pc_reg[2]_0 ),
        .I3(\u_ALU_1/B_signed [24]),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .O(u_data_ram_i_72_4));
  LUT3 #(
    .INIT(8'hB8)) 
    \result_OBUF[24]_inst_i_8 
       (.I0(\result_OBUF[25]_inst_i_18_n_0 ),
        .I1(\u_ALU_1/A_or_Shift__41 [1]),
        .I2(\result_OBUF[24]_inst_i_12_n_0 ),
        .O(\result_OBUF[24]_inst_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hC0A0)) 
    \result_OBUF[24]_inst_i_9 
       (.I0(\result_OBUF[23]_inst_i_8_n_0 ),
        .I1(\result_OBUF[25]_inst_i_17_n_0 ),
        .I2(u_data_ram_i_113_n_0),
        .I3(\result_OBUF[30]_inst_i_3 [0]),
        .O(\result_OBUF[24]_inst_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \result_OBUF[25]_inst_i_13 
       (.I0(\result_OBUF[28]_inst_i_15_n_0 ),
        .I1(\u_ALU_1/A_or_Shift__41 [1]),
        .I2(\result_OBUF[25]_inst_i_18_n_0 ),
        .O(\result_OBUF[25]_inst_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \result_OBUF[25]_inst_i_14 
       (.I0(\result_OBUF[25]_inst_i_19_n_0 ),
        .I1(\u_ALU_1/A_or_Shift__41 [1]),
        .I2(\result_OBUF[25]_inst_i_20_n_0 ),
        .O(\result_OBUF[25]_inst_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hC0A0)) 
    \result_OBUF[25]_inst_i_15 
       (.I0(\result_OBUF[24]_inst_i_10_n_0 ),
        .I1(\result_OBUF[26]_inst_i_8_n_0 ),
        .I2(u_data_ram_i_113_n_0),
        .I3(\result_OBUF[30]_inst_i_3 [0]),
        .O(\result_OBUF[25]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[25]_inst_i_16 
       (.I0(\result_OBUF[25]_inst_i_21_n_0 ),
        .I1(\result_OBUF[30]_inst_i_12_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[28]_inst_i_17_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[31]_inst_i_19_n_0 ),
        .O(\result_OBUF[25]_inst_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \result_OBUF[25]_inst_i_17 
       (.I0(B[31]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(\result_OBUF[30]_inst_i_9_n_0 ),
        .I3(B[27]),
        .I4(\u_ALU_1/A_or_Shift__41 [1]),
        .I5(\result_OBUF[25]_inst_i_22_n_0 ),
        .O(\result_OBUF[25]_inst_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFB800B8)) 
    \result_OBUF[25]_inst_i_18 
       (.I0(B[30]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(B[26]),
        .I3(\u_ALU_1/A_or_Shift__41 [4]),
        .I4(B[31]),
        .I5(\u_ALU_1/A_or_Shift__41 [3]),
        .O(\result_OBUF[25]_inst_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFF000000FE000200)) 
    \result_OBUF[25]_inst_i_19 
       (.I0(B0[27]),
        .I1(\u_ALU_1/A_or_Shift__41 [4]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(ALUresult0_carry__3),
        .I4(B0[31]),
        .I5(\u_ALU_1/A_or_Shift__41 [2]),
        .O(\result_OBUF[25]_inst_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAAAAAAAAA)) 
    \result_OBUF[25]_inst_i_2 
       (.I0(\result_OBUF[25]_inst_i_1 ),
        .I1(\pc[31]_i_13_0 ),
        .I2(douta[9]),
        .I3(\result_OBUF[25]_inst_i_5_n_0 ),
        .I4(\result_OBUF[25]_inst_i_6_n_0 ),
        .I5(\pc[31]_i_12 ),
        .O(ALUresult[8]));
  LUT6 #(
    .INIT(64'hFFFF0000FFB800B8)) 
    \result_OBUF[25]_inst_i_20 
       (.I0(B[29]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(B[25]),
        .I3(\u_ALU_1/A_or_Shift__41 [4]),
        .I4(B[31]),
        .I5(\u_ALU_1/A_or_Shift__41 [3]),
        .O(\result_OBUF[25]_inst_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \result_OBUF[25]_inst_i_21 
       (.I0(B0[3]),
        .I1(B0[19]),
        .I2(ALUresult0_carry__3),
        .I3(B0[11]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[25]_inst_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h000B000800000000)) 
    \result_OBUF[25]_inst_i_22 
       (.I0(B0[29]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(\u_ALU_1/A_or_Shift__41 [4]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(B0[25]),
        .I5(ALUresult0_carry__3),
        .O(\result_OBUF[25]_inst_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \result_OBUF[25]_inst_i_5 
       (.I0(\result_OBUF[17]_inst_i_2_1 ),
        .I1(u_data_ram_i_113_n_0),
        .I2(\result_OBUF[25]_inst_i_13_n_0 ),
        .I3(u_data_ram_i_77_n_0),
        .I4(\result_OBUF[25]_inst_i_14_n_0 ),
        .I5(u_data_ram_i_116_n_0),
        .O(\result_OBUF[25]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    \result_OBUF[25]_inst_i_6 
       (.I0(\result_OBUF[17]_inst_i_2_0 ),
        .I1(\result_OBUF[25]_inst_i_15_n_0 ),
        .I2(\result_OBUF[25]_inst_i_16_n_0 ),
        .I3(\result_OBUF[25]_inst_i_17_n_0 ),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .I5(u_data_ram_i_77_n_0),
        .O(\result_OBUF[25]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h556A6A80)) 
    \result_OBUF[25]_inst_i_9 
       (.I0(\result_OBUF[30]_inst_i_3 [1]),
        .I1(A0_0[25]),
        .I2(\pc_reg[2]_0 ),
        .I3(\u_ALU_1/B_signed [25]),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .O(u_data_ram_i_72_3));
  LUT6 #(
    .INIT(64'hFF00F0F0AAAACCCC)) 
    \result_OBUF[26]_inst_i_2 
       (.I0(u_data_ram_i_72),
        .I1(\result_OBUF[27]_inst_i_1 [0]),
        .I2(\result_OBUF[27]_inst_i_1_0 [0]),
        .I3(\result_OBUF[26]_inst_i_4_n_0 ),
        .I4(u_data_ram),
        .I5(\pc[31]_i_32_0 ),
        .O(ALUresult[9]));
  LUT5 #(
    .INIT(32'h556A6A80)) 
    \result_OBUF[26]_inst_i_3 
       (.I0(\result_OBUF[30]_inst_i_3 [1]),
        .I1(A0_0[26]),
        .I2(\pc_reg[2]_0 ),
        .I3(\u_ALU_1/B_signed [26]),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .O(u_data_ram_i_72));
  LUT6 #(
    .INIT(64'hFFFFFFF8F8F8F8F8)) 
    \result_OBUF[26]_inst_i_4 
       (.I0(\pc[31]_i_13_0 ),
        .I1(douta[10]),
        .I2(\result_OBUF[26]_inst_i_5_n_0 ),
        .I3(\result_OBUF[26]_inst_i_6_n_0 ),
        .I4(\result_OBUF[26]_inst_i_7_n_0 ),
        .I5(\result_OBUF[17]_inst_i_2_0 ),
        .O(\result_OBUF[26]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \result_OBUF[26]_inst_i_5 
       (.I0(\result_OBUF[17]_inst_i_2_1 ),
        .I1(u_data_ram_i_113_n_0),
        .I2(\result_OBUF[27]_inst_i_8_n_0 ),
        .I3(u_data_ram_i_77_n_0),
        .I4(\result_OBUF[25]_inst_i_13_n_0 ),
        .I5(u_data_ram_i_116_n_0),
        .O(\result_OBUF[26]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0000F222)) 
    \result_OBUF[26]_inst_i_6 
       (.I0(\result_OBUF[27]_inst_i_9_n_0 ),
        .I1(u_data_ram_i_77_n_0),
        .I2(\result_OBUF[25]_inst_i_16_n_0 ),
        .I3(u_data_ram_i_113_n_0),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .O(\result_OBUF[26]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hF2220000)) 
    \result_OBUF[26]_inst_i_7 
       (.I0(\result_OBUF[26]_inst_i_8_n_0 ),
        .I1(u_data_ram_i_77_n_0),
        .I2(\result_OBUF[27]_inst_i_10_n_0 ),
        .I3(u_data_ram_i_113_n_0),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .O(\result_OBUF[26]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \result_OBUF[26]_inst_i_8 
       (.I0(B[30]),
        .I1(B[26]),
        .I2(\result_OBUF[30]_inst_i_9_n_0 ),
        .I3(B[28]),
        .I4(\u_ALU_1/A_or_Shift__41 [1]),
        .I5(\u_ALU_1/A_or_Shift__41 [2]),
        .O(\result_OBUF[26]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \result_OBUF[27]_inst_i_10 
       (.I0(B[31]),
        .I1(B[27]),
        .I2(\result_OBUF[30]_inst_i_9_n_0 ),
        .I3(B[29]),
        .I4(\u_ALU_1/A_or_Shift__41 [1]),
        .I5(\u_ALU_1/A_or_Shift__41 [2]),
        .O(\result_OBUF[27]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF000000FE000200)) 
    \result_OBUF[27]_inst_i_11 
       (.I0(B0[29]),
        .I1(\u_ALU_1/A_or_Shift__41 [4]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(ALUresult0_carry__3),
        .I4(B0[31]),
        .I5(\u_ALU_1/A_or_Shift__41 [2]),
        .O(\result_OBUF[27]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFF00F0F0AAAACCCC)) 
    \result_OBUF[27]_inst_i_2 
       (.I0(\result_OBUF[27]_inst_i_3_n_0 ),
        .I1(\result_OBUF[27]_inst_i_1 [1]),
        .I2(\result_OBUF[27]_inst_i_1_0 [1]),
        .I3(\result_OBUF[27]_inst_i_4_n_0 ),
        .I4(u_data_ram),
        .I5(\pc[31]_i_32_0 ),
        .O(ALUresult[10]));
  LUT5 #(
    .INIT(32'h556A6A80)) 
    \result_OBUF[27]_inst_i_3 
       (.I0(\result_OBUF[30]_inst_i_3 [1]),
        .I1(A0_0[27]),
        .I2(\pc_reg[2]_0 ),
        .I3(\u_ALU_1/B_signed [27]),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .O(\result_OBUF[27]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8F8F8F8F8)) 
    \result_OBUF[27]_inst_i_4 
       (.I0(\pc[31]_i_13_0 ),
        .I1(douta[11]),
        .I2(\result_OBUF[27]_inst_i_5_n_0 ),
        .I3(\result_OBUF[27]_inst_i_6_n_0 ),
        .I4(\result_OBUF[27]_inst_i_7_n_0 ),
        .I5(\result_OBUF[17]_inst_i_2_0 ),
        .O(\result_OBUF[27]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \result_OBUF[27]_inst_i_5 
       (.I0(\result_OBUF[17]_inst_i_2_1 ),
        .I1(u_data_ram_i_113_n_0),
        .I2(\result_OBUF[28]_inst_i_9_n_0 ),
        .I3(u_data_ram_i_77_n_0),
        .I4(\result_OBUF[27]_inst_i_8_n_0 ),
        .I5(u_data_ram_i_116_n_0),
        .O(\result_OBUF[27]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0000F222)) 
    \result_OBUF[27]_inst_i_6 
       (.I0(\result_OBUF[28]_inst_i_12_n_0 ),
        .I1(u_data_ram_i_77_n_0),
        .I2(\result_OBUF[27]_inst_i_9_n_0 ),
        .I3(u_data_ram_i_113_n_0),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .O(\result_OBUF[27]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hF2220000)) 
    \result_OBUF[27]_inst_i_7 
       (.I0(\result_OBUF[27]_inst_i_10_n_0 ),
        .I1(u_data_ram_i_77_n_0),
        .I2(\result_OBUF[28]_inst_i_13_n_0 ),
        .I3(u_data_ram_i_113_n_0),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .O(\result_OBUF[27]_inst_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \result_OBUF[27]_inst_i_8 
       (.I0(\result_OBUF[27]_inst_i_11_n_0 ),
        .I1(\u_ALU_1/A_or_Shift__41 [1]),
        .I2(\result_OBUF[25]_inst_i_19_n_0 ),
        .O(\result_OBUF[27]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[27]_inst_i_9 
       (.I0(\result_OBUF[24]_inst_i_14_n_0 ),
        .I1(\result_OBUF[31]_inst_i_23_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[29]_inst_i_13_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[31]_inst_i_21_n_0 ),
        .O(\result_OBUF[27]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000A000800000000)) 
    \result_OBUF[28]_inst_i_10 
       (.I0(\u_ALU_1/A_or_Shift__41 [0]),
        .I1(u_data_ram_i_141_n_0),
        .I2(u_data_ram_i_163_n_0),
        .I3(u_data_ram_i_138_n_0),
        .I4(Sftmd),
        .I5(\result_OBUF[29]_inst_i_12_n_0 ),
        .O(\result_OBUF[28]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[28]_inst_i_12 
       (.I0(\result_OBUF[28]_inst_i_17_n_0 ),
        .I1(\result_OBUF[31]_inst_i_19_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[30]_inst_i_12_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[31]_inst_i_17_n_0 ),
        .O(\result_OBUF[28]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000000C0008800)) 
    \result_OBUF[28]_inst_i_13 
       (.I0(B0[28]),
        .I1(\result_OBUF[30]_inst_i_9_n_0 ),
        .I2(B0[30]),
        .I3(ALUresult0_carry__3),
        .I4(\u_ALU_1/A_or_Shift__41 [1]),
        .I5(\u_ALU_1/A_or_Shift__41 [2]),
        .O(\result_OBUF[28]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFF000000FE000200)) 
    \result_OBUF[28]_inst_i_14 
       (.I0(B0[30]),
        .I1(\u_ALU_1/A_or_Shift__41 [4]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(ALUresult0_carry__3),
        .I4(B0[31]),
        .I5(\u_ALU_1/A_or_Shift__41 [2]),
        .O(\result_OBUF[28]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFF000000FE000200)) 
    \result_OBUF[28]_inst_i_15 
       (.I0(B0[28]),
        .I1(\u_ALU_1/A_or_Shift__41 [4]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(ALUresult0_carry__3),
        .I4(B0[31]),
        .I5(\u_ALU_1/A_or_Shift__41 [2]),
        .O(\result_OBUF[28]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \result_OBUF[28]_inst_i_17 
       (.I0(B0[5]),
        .I1(B0[21]),
        .I2(ALUresult0_carry__3),
        .I3(B0[13]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[28]_inst_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFAE0000)) 
    \result_OBUF[28]_inst_i_5 
       (.I0(u_data_ram_i_116_n_0),
        .I1(\result_OBUF[28]_inst_i_9_n_0 ),
        .I2(u_data_ram_i_77_n_0),
        .I3(\result_OBUF[28]_inst_i_10_n_0 ),
        .I4(\result_OBUF[17]_inst_i_2_1 ),
        .I5(\result_OBUF[28]_inst_i_3 ),
        .O(\result_OBUF[28]_inst_i_11 ));
  LUT5 #(
    .INIT(32'h0000F222)) 
    \result_OBUF[28]_inst_i_6 
       (.I0(\result_OBUF[29]_inst_i_11_n_0 ),
        .I1(u_data_ram_i_77_n_0),
        .I2(\result_OBUF[28]_inst_i_12_n_0 ),
        .I3(u_data_ram_i_113_n_0),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .O(u_data_ram_i_72_12));
  LUT5 #(
    .INIT(32'hF2220000)) 
    \result_OBUF[28]_inst_i_7 
       (.I0(\result_OBUF[28]_inst_i_13_n_0 ),
        .I1(u_data_ram_i_77_n_0),
        .I2(\result_OBUF[29]_inst_i_10_n_0 ),
        .I3(u_data_ram_i_113_n_0),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .O(u_data_ram_i_72_13));
  LUT6 #(
    .INIT(64'h0F4B0F784BB07880)) 
    \result_OBUF[28]_inst_i_8 
       (.I0(ALUresult0_carry__3_0),
        .I1(ALUSrc_in),
        .I2(\result_OBUF[30]_inst_i_3 [1]),
        .I3(JrPC[28]),
        .I4(B[28]),
        .I5(\result_OBUF[30]_inst_i_3 [0]),
        .O(u_data_ram_i_72_16));
  LUT3 #(
    .INIT(8'hB8)) 
    \result_OBUF[28]_inst_i_9 
       (.I0(\result_OBUF[28]_inst_i_14_n_0 ),
        .I1(\u_ALU_1/A_or_Shift__41 [1]),
        .I2(\result_OBUF[28]_inst_i_15_n_0 ),
        .O(\result_OBUF[28]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000C0008800)) 
    \result_OBUF[29]_inst_i_10 
       (.I0(B0[29]),
        .I1(\result_OBUF[30]_inst_i_9_n_0 ),
        .I2(B0[31]),
        .I3(ALUresult0_carry__3),
        .I4(\u_ALU_1/A_or_Shift__41 [1]),
        .I5(\u_ALU_1/A_or_Shift__41 [2]),
        .O(\result_OBUF[29]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[29]_inst_i_11 
       (.I0(\result_OBUF[29]_inst_i_13_n_0 ),
        .I1(\result_OBUF[31]_inst_i_21_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[31]_inst_i_23_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[31]_inst_i_24_n_0 ),
        .O(\result_OBUF[29]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0004)) 
    \result_OBUF[29]_inst_i_12 
       (.I0(\u_ALU_1/A_or_Shift__41 [1]),
        .I1(B[29]),
        .I2(\u_ALU_1/A_or_Shift__41 [4]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(B[31]),
        .I5(\u_ALU_1/A_or_Shift__41 [2]),
        .O(\result_OBUF[29]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \result_OBUF[29]_inst_i_13 
       (.I0(B0[6]),
        .I1(B0[22]),
        .I2(ALUresult0_carry__3),
        .I3(B0[14]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[29]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEEEEEAAAAAAAA)) 
    \result_OBUF[29]_inst_i_2 
       (.I0(\pc[31]_i_12_0 ),
        .I1(\result_OBUF[29]_inst_i_4_n_0 ),
        .I2(\result_OBUF[29]_inst_i_5_n_0 ),
        .I3(\result_OBUF[29]_inst_i_6_n_0 ),
        .I4(\result_OBUF[17]_inst_i_2_0 ),
        .I5(\pc[31]_i_12 ),
        .O(ALUresult[11]));
  LUT6 #(
    .INIT(64'hFFFFEA00EA00EA00)) 
    \result_OBUF[29]_inst_i_4 
       (.I0(\result_OBUF[29]_inst_i_8_n_0 ),
        .I1(\result_OBUF[30]_inst_i_8_n_0 ),
        .I2(u_data_ram_i_113_n_0),
        .I3(\result_OBUF[17]_inst_i_2_1 ),
        .I4(douta[13]),
        .I5(\pc[31]_i_13_0 ),
        .O(\result_OBUF[29]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h808080800000FF00)) 
    \result_OBUF[29]_inst_i_5 
       (.I0(u_data_ram_i_113_n_0),
        .I1(\result_OBUF[29]_inst_i_9_n_0 ),
        .I2(\result_OBUF[30]_inst_i_10_n_0 ),
        .I3(\result_OBUF[30]_inst_i_11_n_0 ),
        .I4(u_data_ram_i_77_n_0),
        .I5(\result_OBUF[30]_inst_i_3 [0]),
        .O(\result_OBUF[29]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h2222F000)) 
    \result_OBUF[29]_inst_i_6 
       (.I0(\result_OBUF[29]_inst_i_10_n_0 ),
        .I1(u_data_ram_i_77_n_0),
        .I2(\result_OBUF[29]_inst_i_11_n_0 ),
        .I3(u_data_ram_i_113_n_0),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .O(\result_OBUF[29]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0F4B0F784BB07880)) 
    \result_OBUF[29]_inst_i_7 
       (.I0(ALUresult0_carry__3_0),
        .I1(ALUSrc_in),
        .I2(\result_OBUF[30]_inst_i_3 [1]),
        .I3(JrPC[29]),
        .I4(B[29]),
        .I5(\result_OBUF[30]_inst_i_3 [0]),
        .O(u_data_ram_i_72_15));
  LUT6 #(
    .INIT(64'hFF44FF4F00440040)) 
    \result_OBUF[29]_inst_i_8 
       (.I0(\u_ALU_1/A_or_Shift__41 [0]),
        .I1(\result_OBUF[29]_inst_i_12_n_0 ),
        .I2(u_data_ram_i_141_n_0),
        .I3(u_data_ram_i_170_n_0),
        .I4(Sftmd),
        .I5(B[31]),
        .O(\result_OBUF[29]_inst_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \result_OBUF[29]_inst_i_9 
       (.I0(\u_ALU_1/A_or_Shift__41 [4]),
        .I1(\u_ALU_1/A_or_Shift__41 [3]),
        .I2(B0[30]),
        .I3(ALUresult0_carry__3),
        .O(\result_OBUF[29]_inst_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_OBUF[30]_inst_i_10 
       (.I0(\u_ALU_1/A_or_Shift__41 [1]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .O(\result_OBUF[30]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[30]_inst_i_11 
       (.I0(\result_OBUF[30]_inst_i_12_n_0 ),
        .I1(\result_OBUF[31]_inst_i_17_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[31]_inst_i_19_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[31]_inst_i_20_n_0 ),
        .O(\result_OBUF[30]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \result_OBUF[30]_inst_i_12 
       (.I0(B0[7]),
        .I1(B0[23]),
        .I2(ALUresult0_carry__3),
        .I3(B0[15]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[30]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hF8F88888FF888888)) 
    \result_OBUF[30]_inst_i_4 
       (.I0(\pc[31]_i_13_0 ),
        .I1(douta[14]),
        .I2(B[31]),
        .I3(\result_OBUF[30]_inst_i_8_n_0 ),
        .I4(\result_OBUF[17]_inst_i_2_1 ),
        .I5(u_data_ram_i_77_n_0),
        .O(u_data_ram_i_77_12));
  LUT6 #(
    .INIT(64'h000080800000FF00)) 
    \result_OBUF[30]_inst_i_5 
       (.I0(B[30]),
        .I1(\result_OBUF[30]_inst_i_9_n_0 ),
        .I2(\result_OBUF[30]_inst_i_10_n_0 ),
        .I3(\result_OBUF[31]_inst_i_15_n_0 ),
        .I4(u_data_ram_i_77_n_0),
        .I5(\result_OBUF[30]_inst_i_3 [0]),
        .O(u_data_ram_i_72_11));
  LUT6 #(
    .INIT(64'h80800000FF000000)) 
    \result_OBUF[30]_inst_i_6 
       (.I0(B[31]),
        .I1(\result_OBUF[30]_inst_i_9_n_0 ),
        .I2(\result_OBUF[30]_inst_i_10_n_0 ),
        .I3(\result_OBUF[30]_inst_i_11_n_0 ),
        .I4(u_data_ram_i_113_n_0),
        .I5(\result_OBUF[30]_inst_i_3 [0]),
        .O(u_data_ram_i_72_14));
  LUT6 #(
    .INIT(64'h0F4B0F784BB07880)) 
    \result_OBUF[30]_inst_i_7 
       (.I0(ALUresult0_carry__3_0),
        .I1(ALUSrc_in),
        .I2(\result_OBUF[30]_inst_i_3 [1]),
        .I3(JrPC[30]),
        .I4(B[30]),
        .I5(\result_OBUF[30]_inst_i_3 [0]),
        .O(u_data_ram_i_72_17));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0004)) 
    \result_OBUF[30]_inst_i_8 
       (.I0(\u_ALU_1/A_or_Shift__41 [1]),
        .I1(B[30]),
        .I2(\u_ALU_1/A_or_Shift__41 [4]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(B[31]),
        .I5(\u_ALU_1/A_or_Shift__41 [2]),
        .O(\result_OBUF[30]_inst_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_OBUF[30]_inst_i_9 
       (.I0(\u_ALU_1/A_or_Shift__41 [3]),
        .I1(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[30]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0F4B0F784BB07880)) 
    \result_OBUF[31]_inst_i_12 
       (.I0(ALUresult0_carry__3_0),
        .I1(ALUSrc_in),
        .I2(\result_OBUF[30]_inst_i_3 [1]),
        .I3(\result_OBUF[30]_inst_i_3 [0]),
        .I4(B[31]),
        .I5(register_reg_r1_0_31_30_31_1),
        .O(\pc[31]_i_2_0 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \result_OBUF[31]_inst_i_14 
       (.I0(\result_OBUF[31]_inst_i_17_n_0 ),
        .I1(\result_OBUF[31]_inst_i_18_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[31]_inst_i_19_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[31]_inst_i_20_n_0 ),
        .O(\result_OBUF[31]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \result_OBUF[31]_inst_i_15 
       (.I0(\result_OBUF[31]_inst_i_21_n_0 ),
        .I1(\result_OBUF[31]_inst_i_22_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[31]_inst_i_23_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[31]_inst_i_24_n_0 ),
        .O(\result_OBUF[31]_inst_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \result_OBUF[31]_inst_i_16 
       (.I0(ALUresult0_carry__3),
        .I1(B0[31]),
        .I2(\result_OBUF[30]_inst_i_9_n_0 ),
        .I3(\u_ALU_1/A_or_Shift__41 [2]),
        .I4(\u_ALU_1/A_or_Shift__41 [1]),
        .O(\result_OBUF[31]_inst_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \result_OBUF[31]_inst_i_17 
       (.I0(B[27]),
        .I1(B[11]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[3]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .I5(B[19]),
        .O(\result_OBUF[31]_inst_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \result_OBUF[31]_inst_i_18 
       (.I0(B[31]),
        .I1(B[15]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[7]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .I5(B[23]),
        .O(\result_OBUF[31]_inst_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \result_OBUF[31]_inst_i_19 
       (.I0(B[25]),
        .I1(B[9]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[1]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .I5(B[17]),
        .O(\result_OBUF[31]_inst_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \result_OBUF[31]_inst_i_2 
       (.I0(douta[31]),
        .I1(douta[28]),
        .I2(douta[30]),
        .I3(douta[26]),
        .I4(douta[27]),
        .I5(douta[29]),
        .O(\bbstub_douta[29] ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \result_OBUF[31]_inst_i_20 
       (.I0(B[29]),
        .I1(B[13]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[5]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .I5(B[21]),
        .O(\result_OBUF[31]_inst_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \result_OBUF[31]_inst_i_21 
       (.I0(B[26]),
        .I1(B[10]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[2]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .I5(B[18]),
        .O(\result_OBUF[31]_inst_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \result_OBUF[31]_inst_i_22 
       (.I0(B[30]),
        .I1(B[14]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[6]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .I5(B[22]),
        .O(\result_OBUF[31]_inst_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \result_OBUF[31]_inst_i_23 
       (.I0(B[24]),
        .I1(B[8]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[0]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .I5(B[16]),
        .O(\result_OBUF[31]_inst_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \result_OBUF[31]_inst_i_24 
       (.I0(B[28]),
        .I1(B[12]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[4]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .I5(B[20]),
        .O(\result_OBUF[31]_inst_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \result_OBUF[31]_inst_i_4 
       (.I0(douta[29]),
        .I1(douta[28]),
        .I2(douta[31]),
        .I3(douta[30]),
        .I4(douta[26]),
        .I5(douta[27]),
        .O(\bbstub_douta[27] ));
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \result_OBUF[31]_inst_i_6 
       (.I0(douta[29]),
        .I1(douta[28]),
        .I2(douta[30]),
        .I3(douta[26]),
        .I4(douta[27]),
        .O(\bbstub_douta[27]_0 ));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \result_OBUF[31]_inst_i_8 
       (.I0(ALUresult0_carry__3),
        .I1(B0[31]),
        .I2(\result_OBUF[17]_inst_i_2_1 ),
        .I3(douta[15]),
        .I4(\pc[31]_i_13_0 ),
        .O(\result_OBUF[25]_inst_i_4 ));
  LUT6 #(
    .INIT(64'h00C0FFEA00C000EA)) 
    \result_OBUF[31]_inst_i_9 
       (.I0(\result_OBUF[31]_inst_i_14_n_0 ),
        .I1(u_data_ram_i_113_n_0),
        .I2(\result_OBUF[31]_inst_i_15_n_0 ),
        .I3(\result_OBUF[30]_inst_i_3 [0]),
        .I4(u_data_ram_i_77_n_0),
        .I5(\result_OBUF[31]_inst_i_16_n_0 ),
        .O(\result_OBUF[31]_inst_i_16_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    u_data_ram_i_100
       (.I0(B[1]),
        .I1(B[5]),
        .I2(\result_OBUF[30]_inst_i_9_n_0 ),
        .I3(B[3]),
        .I4(\u_ALU_1/A_or_Shift__41 [1]),
        .I5(\u_ALU_1/A_or_Shift__41 [2]),
        .O(u_data_ram_i_100_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    u_data_ram_i_101
       (.I0(u_data_ram_i_136_n_0),
        .I1(u_data_ram_i_155_n_0),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(u_data_ram_i_150_n_0),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(u_data_ram_i_160_n_0),
        .O(u_data_ram_i_101_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    u_data_ram_i_102
       (.I0(\pc[31]_i_32_1 ),
        .I1(u_data_ram_i_113_n_0),
        .I2(u_data_ram_i_159_n_0),
        .I3(u_data_ram_i_77_n_0),
        .I4(u_data_ram_i_161_n_0),
        .I5(u_data_ram_i_116_n_0),
        .O(u_data_ram_i_102_n_0));
  LUT4 #(
    .INIT(16'hC0A0)) 
    u_data_ram_i_103
       (.I0(u_data_ram_i_108_n_0),
        .I1(u_data_ram_i_101_n_0),
        .I2(u_data_ram_i_113_n_0),
        .I3(\result_OBUF[30]_inst_i_3 [0]),
        .O(u_data_ram_i_103_n_0));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    u_data_ram_i_104
       (.I0(B[0]),
        .I1(B[4]),
        .I2(\result_OBUF[30]_inst_i_9_n_0 ),
        .I3(B[2]),
        .I4(\u_ALU_1/A_or_Shift__41 [1]),
        .I5(\u_ALU_1/A_or_Shift__41 [2]),
        .O(u_data_ram_i_104_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    u_data_ram_i_105
       (.I0(u_data_ram_i_148_n_0),
        .I1(u_data_ram_i_158_n_0),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(u_data_ram_i_152_n_0),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(u_data_ram_i_162_n_0),
        .O(u_data_ram_i_105_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    u_data_ram_i_106
       (.I0(\pc[31]_i_32_1 ),
        .I1(u_data_ram_i_113_n_0),
        .I2(u_data_ram_i_161_n_0),
        .I3(u_data_ram_i_77_n_0),
        .I4(u_data_ram_i_114_n_0),
        .I5(u_data_ram_i_116_n_0),
        .O(u_data_ram_i_106_n_0));
  LUT5 #(
    .INIT(32'hF2220000)) 
    u_data_ram_i_107
       (.I0(u_data_ram_i_120_n_0),
        .I1(u_data_ram_i_77_n_0),
        .I2(u_data_ram_i_105_n_0),
        .I3(u_data_ram_i_113_n_0),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .O(u_data_ram_i_107_n_0));
  LUT6 #(
    .INIT(64'h00000000C0008800)) 
    u_data_ram_i_108
       (.I0(B0[3]),
        .I1(\result_OBUF[30]_inst_i_9_n_0 ),
        .I2(B0[1]),
        .I3(ALUresult0_carry__3),
        .I4(\u_ALU_1/A_or_Shift__41 [1]),
        .I5(\u_ALU_1/A_or_Shift__41 [2]),
        .O(u_data_ram_i_108_n_0));
  LUT6 #(
    .INIT(64'h0000000000000302)) 
    u_data_ram_i_109
       (.I0(u_data_ram_i_141_n_0),
        .I1(u_data_ram_i_163_n_0),
        .I2(u_data_ram_i_138_n_0),
        .I3(Sftmd),
        .I4(\u_ALU_1/A_or_Shift__41 [0]),
        .I5(\result_OBUF[30]_inst_i_3 [0]),
        .O(u_data_ram_i_109_n_0));
  LUT6 #(
    .INIT(64'hEEEEEEEAEEEAEEEA)) 
    u_data_ram_i_11
       (.I0(u_data_ram_0),
        .I1(u_data_ram),
        .I2(u_data_ram_i_65_n_0),
        .I3(u_data_ram_i_66_n_0),
        .I4(u_data_ram_i_67_n_0),
        .I5(u_data_ram_i_9),
        .O(u_data_ram_i_68));
  LUT6 #(
    .INIT(64'h0000000003000202)) 
    u_data_ram_i_110
       (.I0(B[2]),
        .I1(\u_ALU_1/A_or_Shift__41 [4]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[0]),
        .I4(\u_ALU_1/A_or_Shift__41 [1]),
        .I5(\u_ALU_1/A_or_Shift__41 [2]),
        .O(u_data_ram_i_110_n_0));
  LUT6 #(
    .INIT(64'h00000000000A0008)) 
    u_data_ram_i_111
       (.I0(\u_ALU_1/A_or_Shift__41 [0]),
        .I1(u_data_ram_i_141_n_0),
        .I2(u_data_ram_i_163_n_0),
        .I3(u_data_ram_i_138_n_0),
        .I4(Sftmd),
        .I5(\result_OBUF[30]_inst_i_3 [0]),
        .O(u_data_ram_i_111_n_0));
  LUT6 #(
    .INIT(64'h0003000200000000)) 
    u_data_ram_i_113
       (.I0(Sftmd),
        .I1(u_data_ram_i_138_n_0),
        .I2(u_data_ram_i_139_n_0),
        .I3(u_data_ram_i_140_n_0),
        .I4(u_data_ram_i_141_n_0),
        .I5(\u_ALU_1/A_or_Shift__41 [0]),
        .O(u_data_ram_i_113_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    u_data_ram_i_114
       (.I0(u_data_ram_i_166_n_0),
        .I1(u_data_ram_i_160_n_0),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(u_data_ram_i_155_n_0),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(u_data_ram_i_167_n_0),
        .O(u_data_ram_i_114_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    u_data_ram_i_115
       (.I0(u_data_ram_i_168_n_0),
        .I1(u_data_ram_i_162_n_0),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(u_data_ram_i_158_n_0),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(u_data_ram_i_169_n_0),
        .O(u_data_ram_i_115_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAA0AAAAAAA2)) 
    u_data_ram_i_116
       (.I0(B[31]),
        .I1(Sftmd),
        .I2(u_data_ram_i_138_n_0),
        .I3(u_data_ram_i_139_n_0),
        .I4(u_data_ram_i_140_n_0),
        .I5(u_data_ram_i_141_n_0),
        .O(u_data_ram_i_116_n_0));
  LUT6 #(
    .INIT(64'h0011001000000000)) 
    u_data_ram_i_117
       (.I0(\result_OBUF[30]_inst_i_3 [0]),
        .I1(\u_ALU_1/A_or_Shift__41 [0]),
        .I2(Sftmd),
        .I3(u_data_ram_i_170_n_0),
        .I4(u_data_ram_i_141_n_0),
        .I5(u_data_ram_i_110_n_0),
        .O(u_data_ram_i_117_n_0));
  LUT6 #(
    .INIT(64'h0022002000000000)) 
    u_data_ram_i_118
       (.I0(u_data_ram_i_171_n_0),
        .I1(\result_OBUF[30]_inst_i_3 [0]),
        .I2(Sftmd),
        .I3(u_data_ram_i_170_n_0),
        .I4(u_data_ram_i_141_n_0),
        .I5(\u_ALU_1/A_or_Shift__41 [0]),
        .O(u_data_ram_i_118_n_0));
  LUT6 #(
    .INIT(64'h000A000800000000)) 
    u_data_ram_i_119
       (.I0(\u_ALU_1/A_or_Shift__41 [0]),
        .I1(u_data_ram_i_141_n_0),
        .I2(u_data_ram_i_163_n_0),
        .I3(u_data_ram_i_138_n_0),
        .I4(Sftmd),
        .I5(\result_OBUF[30]_inst_i_3 [0]),
        .O(u_data_ram_i_119_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    u_data_ram_i_12
       (.I0(ALUresult0_carry__3),
        .I1(B0[31]),
        .O(B[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    u_data_ram_i_120
       (.I0(u_data_ram_i_150_n_0),
        .I1(u_data_ram_i_160_n_0),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(u_data_ram_i_155_n_0),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(u_data_ram_i_167_n_0),
        .O(u_data_ram_i_120_n_0));
  LUT6 #(
    .INIT(64'h00000000000A0008)) 
    u_data_ram_i_121
       (.I0(\result_OBUF[30]_inst_i_3 [0]),
        .I1(u_data_ram_i_141_n_0),
        .I2(u_data_ram_i_163_n_0),
        .I3(u_data_ram_i_138_n_0),
        .I4(Sftmd),
        .I5(\u_ALU_1/A_or_Shift__41 [0]),
        .O(u_data_ram_i_121_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    u_data_ram_i_122
       (.I0(u_data_ram_i_152_n_0),
        .I1(u_data_ram_i_162_n_0),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(u_data_ram_i_158_n_0),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(u_data_ram_i_169_n_0),
        .O(u_data_ram_i_122_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    u_data_ram_i_127
       (.I0(\result_OBUF[18]_inst_i_14_n_0 ),
        .I1(u_data_ram_i_176_n_0),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[16]_inst_i_14_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(u_data_ram_i_177_n_0),
        .O(u_data_ram_i_127_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    u_data_ram_i_128
       (.I0(\result_OBUF[17]_inst_i_13_n_0 ),
        .I1(u_data_ram_i_178_n_0),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(u_data_ram_i_179_n_0),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(u_data_ram_i_180_n_0),
        .O(u_data_ram_i_128_n_0));
  LUT6 #(
    .INIT(64'h000000003300B8B8)) 
    u_data_ram_i_129
       (.I0(B[5]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(B[9]),
        .I3(B[1]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(u_data_ram_i_129_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    u_data_ram_i_13
       (.I0(ALUresult0_carry__3),
        .I1(B0[30]),
        .O(B[30]));
  LUT6 #(
    .INIT(64'hEFFF200020002000)) 
    u_data_ram_i_130
       (.I0(douta[7]),
        .I1(\result_OBUF[31]_inst_i_14_0 ),
        .I2(\result_OBUF[31]_inst_i_14_1 ),
        .I3(\result_OBUF[31]_inst_i_14_2 ),
        .I4(\pc_reg[2]_0 ),
        .I5(A0[1]),
        .O(\u_ALU_1/A_or_Shift__41 [1]));
  LUT6 #(
    .INIT(64'h000000003300B8B8)) 
    u_data_ram_i_131
       (.I0(B[7]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(B[11]),
        .I3(B[3]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(u_data_ram_i_131_n_0));
  LUT5 #(
    .INIT(32'h0000C088)) 
    u_data_ram_i_132
       (.I0(B0[17]),
        .I1(ALUresult0_carry__3),
        .I2(B0[25]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .O(u_data_ram_i_132_n_0));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    u_data_ram_i_133
       (.I0(B0[29]),
        .I1(B0[13]),
        .I2(ALUresult0_carry__3),
        .I3(B0[21]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(u_data_ram_i_133_n_0));
  LUT6 #(
    .INIT(64'h0000C0C0F000A0A0)) 
    u_data_ram_i_134
       (.I0(B0[15]),
        .I1(B0[31]),
        .I2(ALUresult0_carry__3),
        .I3(B0[23]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(u_data_ram_i_134_n_0));
  LUT6 #(
    .INIT(64'hEFFF200020002000)) 
    u_data_ram_i_135
       (.I0(douta[8]),
        .I1(\result_OBUF[31]_inst_i_14_0 ),
        .I2(\result_OBUF[31]_inst_i_14_1 ),
        .I3(\result_OBUF[31]_inst_i_14_2 ),
        .I4(\pc_reg[2]_0 ),
        .I5(A0_0[2]),
        .O(\u_ALU_1/A_or_Shift__41 [2]));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    u_data_ram_i_136
       (.I0(B0[27]),
        .I1(B0[11]),
        .I2(ALUresult0_carry__3),
        .I3(B0[19]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(u_data_ram_i_136_n_0));
  LUT6 #(
    .INIT(64'h0000FF000000FE00)) 
    u_data_ram_i_138
       (.I0(A0_0[23]),
        .I1(A0_0[24]),
        .I2(A0_0[21]),
        .I3(\pc_reg[2]_0 ),
        .I4(Sftmd),
        .I5(A0_0[22]),
        .O(u_data_ram_i_138_n_0));
  LUT6 #(
    .INIT(64'h0000FF000000FE00)) 
    u_data_ram_i_139
       (.I0(A0_0[30]),
        .I1(A0_0[31]),
        .I2(A0_0[28]),
        .I3(\pc_reg[2]_0 ),
        .I4(Sftmd),
        .I5(A0_0[29]),
        .O(u_data_ram_i_139_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    u_data_ram_i_14
       (.I0(ALUresult0_carry__3),
        .I1(B0[29]),
        .O(B[29]));
  LUT5 #(
    .INIT(32'h0F000E00)) 
    u_data_ram_i_140
       (.I0(A0_0[26]),
        .I1(A0_0[27]),
        .I2(Sftmd),
        .I3(\pc_reg[2]_0 ),
        .I4(A0_0[25]),
        .O(u_data_ram_i_140_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    u_data_ram_i_141
       (.I0(u_data_ram_i_183_n_0),
        .I1(u_data_ram_i_184_n_0),
        .I2(u_data_ram_i_185_n_0),
        .I3(u_data_ram_i_186_n_0),
        .O(u_data_ram_i_141_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    u_data_ram_i_142
       (.I0(\result_OBUF[16]_inst_i_14_n_0 ),
        .I1(u_data_ram_i_177_n_0),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(u_data_ram_i_176_n_0),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(u_data_ram_i_187_n_0),
        .O(u_data_ram_i_142_n_0));
  LUT6 #(
    .INIT(64'h000000003300B8B8)) 
    u_data_ram_i_143
       (.I0(B[4]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(B[8]),
        .I3(B[0]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(u_data_ram_i_143_n_0));
  LUT6 #(
    .INIT(64'h000000003300B8B8)) 
    u_data_ram_i_144
       (.I0(B[6]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(B[10]),
        .I3(B[2]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(u_data_ram_i_144_n_0));
  LUT5 #(
    .INIT(32'h0000C088)) 
    u_data_ram_i_145
       (.I0(B0[16]),
        .I1(ALUresult0_carry__3),
        .I2(B0[24]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .O(u_data_ram_i_145_n_0));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    u_data_ram_i_146
       (.I0(B0[28]),
        .I1(B0[12]),
        .I2(ALUresult0_carry__3),
        .I3(B0[20]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(u_data_ram_i_146_n_0));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    u_data_ram_i_147
       (.I0(B0[30]),
        .I1(B0[14]),
        .I2(ALUresult0_carry__3),
        .I3(B0[22]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(u_data_ram_i_147_n_0));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    u_data_ram_i_148
       (.I0(B0[26]),
        .I1(B0[10]),
        .I2(ALUresult0_carry__3),
        .I3(B0[18]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(u_data_ram_i_148_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    u_data_ram_i_149
       (.I0(u_data_ram_i_179_n_0),
        .I1(u_data_ram_i_180_n_0),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(u_data_ram_i_178_n_0),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(u_data_ram_i_166_n_0),
        .O(u_data_ram_i_149_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    u_data_ram_i_15
       (.I0(ALUresult0_carry__3),
        .I1(B0[28]),
        .O(B[28]));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    u_data_ram_i_150
       (.I0(B0[25]),
        .I1(B0[9]),
        .I2(ALUresult0_carry__3),
        .I3(B0[17]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(u_data_ram_i_150_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    u_data_ram_i_151
       (.I0(u_data_ram_i_176_n_0),
        .I1(u_data_ram_i_187_n_0),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(u_data_ram_i_177_n_0),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(u_data_ram_i_168_n_0),
        .O(u_data_ram_i_151_n_0));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    u_data_ram_i_152
       (.I0(B0[24]),
        .I1(B0[8]),
        .I2(ALUresult0_carry__3),
        .I3(B0[16]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(u_data_ram_i_152_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    u_data_ram_i_153
       (.I0(u_data_ram_i_178_n_0),
        .I1(u_data_ram_i_166_n_0),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(u_data_ram_i_180_n_0),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(u_data_ram_i_155_n_0),
        .O(u_data_ram_i_153_n_0));
  LUT6 #(
    .INIT(64'h000B000800000000)) 
    u_data_ram_i_154
       (.I0(B0[3]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(\u_ALU_1/A_or_Shift__41 [4]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(B0[7]),
        .I5(ALUresult0_carry__3),
        .O(u_data_ram_i_154_n_0));
  LUT6 #(
    .INIT(64'hFCFC0C0CFA0AFA0A)) 
    u_data_ram_i_155
       (.I0(B[7]),
        .I1(B[23]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[15]),
        .I4(B[31]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(u_data_ram_i_155_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    u_data_ram_i_156
       (.I0(u_data_ram_i_177_n_0),
        .I1(u_data_ram_i_168_n_0),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(u_data_ram_i_187_n_0),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(u_data_ram_i_158_n_0),
        .O(u_data_ram_i_156_n_0));
  LUT6 #(
    .INIT(64'h000B000800000000)) 
    u_data_ram_i_157
       (.I0(B0[2]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(\u_ALU_1/A_or_Shift__41 [4]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(B0[6]),
        .I5(ALUresult0_carry__3),
        .O(u_data_ram_i_157_n_0));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    u_data_ram_i_158
       (.I0(B[6]),
        .I1(B[22]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[30]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .I5(B[14]),
        .O(u_data_ram_i_158_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    u_data_ram_i_159
       (.I0(u_data_ram_i_180_n_0),
        .I1(u_data_ram_i_155_n_0),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(u_data_ram_i_166_n_0),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(u_data_ram_i_160_n_0),
        .O(u_data_ram_i_159_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    u_data_ram_i_16
       (.I0(ALUresult0_carry__3),
        .I1(B0[27]),
        .O(B[27]));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    u_data_ram_i_160
       (.I0(B[5]),
        .I1(B[21]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[29]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .I5(B[13]),
        .O(u_data_ram_i_160_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    u_data_ram_i_161
       (.I0(u_data_ram_i_187_n_0),
        .I1(u_data_ram_i_158_n_0),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(u_data_ram_i_168_n_0),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(u_data_ram_i_162_n_0),
        .O(u_data_ram_i_161_n_0));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    u_data_ram_i_162
       (.I0(B[4]),
        .I1(B[20]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[28]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .I5(B[12]),
        .O(u_data_ram_i_162_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0F0FFFE)) 
    u_data_ram_i_163
       (.I0(JrPC[29]),
        .I1(JrPC[28]),
        .I2(u_data_ram_i_188_n_0),
        .I3(JrPC[25]),
        .I4(Sftmd),
        .I5(u_data_ram_i_189_n_0),
        .O(u_data_ram_i_163_n_0));
  LUT6 #(
    .INIT(64'hEFFF200020002000)) 
    u_data_ram_i_164
       (.I0(douta[10]),
        .I1(\result_OBUF[31]_inst_i_14_0 ),
        .I2(\result_OBUF[31]_inst_i_14_1 ),
        .I3(\result_OBUF[31]_inst_i_14_2 ),
        .I4(\pc_reg[2]_0 ),
        .I5(A0_0[4]),
        .O(\u_ALU_1/A_or_Shift__41 [4]));
  LUT6 #(
    .INIT(64'hEFFF200020002000)) 
    u_data_ram_i_165
       (.I0(douta[9]),
        .I1(\result_OBUF[31]_inst_i_14_0 ),
        .I2(\result_OBUF[31]_inst_i_14_1 ),
        .I3(\result_OBUF[31]_inst_i_14_2 ),
        .I4(\pc_reg[2]_0 ),
        .I5(A0_0[3]),
        .O(\u_ALU_1/A_or_Shift__41 [3]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    u_data_ram_i_166
       (.I0(B[17]),
        .I1(B[31]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[25]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .I5(B[9]),
        .O(u_data_ram_i_166_n_0));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    u_data_ram_i_167
       (.I0(B[3]),
        .I1(B[19]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[27]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .I5(B[11]),
        .O(u_data_ram_i_167_n_0));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    u_data_ram_i_168
       (.I0(B[16]),
        .I1(B[31]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[24]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .I5(B[8]),
        .O(u_data_ram_i_168_n_0));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    u_data_ram_i_169
       (.I0(B[2]),
        .I1(B[18]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[26]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .I5(B[10]),
        .O(u_data_ram_i_169_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    u_data_ram_i_17
       (.I0(ALUresult0_carry__3),
        .I1(B0[26]),
        .O(B[26]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    u_data_ram_i_170
       (.I0(u_data_ram_i_189_n_0),
        .I1(u_data_ram_i_190_n_0),
        .I2(u_data_ram_i_188_n_0),
        .I3(u_data_ram_i_191_n_0),
        .I4(u_data_ram_i_192_n_0),
        .I5(u_data_ram_i_193_n_0),
        .O(u_data_ram_i_170_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    u_data_ram_i_171
       (.I0(ALUresult0_carry__3),
        .I1(B0[1]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(\u_ALU_1/A_or_Shift__41 [4]),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\u_ALU_1/A_or_Shift__41 [1]),
        .O(u_data_ram_i_171_n_0));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    u_data_ram_i_176
       (.I0(B[22]),
        .I1(B[31]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[30]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .I5(B[14]),
        .O(u_data_ram_i_176_n_0));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    u_data_ram_i_177
       (.I0(B[20]),
        .I1(B[31]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[28]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .I5(B[12]),
        .O(u_data_ram_i_177_n_0));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    u_data_ram_i_178
       (.I0(B[21]),
        .I1(B[31]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[29]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .I5(B[13]),
        .O(u_data_ram_i_178_n_0));
  LUT6 #(
    .INIT(64'hFF000000B800B800)) 
    u_data_ram_i_179
       (.I0(B0[23]),
        .I1(\u_ALU_1/A_or_Shift__41 [3]),
        .I2(B0[15]),
        .I3(ALUresult0_carry__3),
        .I4(B0[31]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(u_data_ram_i_179_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    u_data_ram_i_18
       (.I0(ALUresult0_carry__3),
        .I1(B0[25]),
        .O(B[25]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    u_data_ram_i_180
       (.I0(B[19]),
        .I1(B[31]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[27]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .I5(B[11]),
        .O(u_data_ram_i_180_n_0));
  LUT5 #(
    .INIT(32'h0F0F0F1F)) 
    u_data_ram_i_183
       (.I0(A0_0[12]),
        .I1(A0_0[11]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0_0[10]),
        .I4(A0_0[9]),
        .O(u_data_ram_i_183_n_0));
  LUT5 #(
    .INIT(32'h0F0F0F1F)) 
    u_data_ram_i_184
       (.I0(A0_0[6]),
        .I1(A0_0[5]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0_0[8]),
        .I4(A0_0[7]),
        .O(u_data_ram_i_184_n_0));
  LUT5 #(
    .INIT(32'h0F0F0F1F)) 
    u_data_ram_i_185
       (.I0(A0_0[16]),
        .I1(A0_0[15]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0_0[14]),
        .I4(A0_0[13]),
        .O(u_data_ram_i_185_n_0));
  LUT5 #(
    .INIT(32'h0F0F0F1F)) 
    u_data_ram_i_186
       (.I0(A0_0[20]),
        .I1(A0_0[19]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0_0[18]),
        .I4(A0_0[17]),
        .O(u_data_ram_i_186_n_0));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    u_data_ram_i_187
       (.I0(B[18]),
        .I1(B[31]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[26]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .I5(B[10]),
        .O(u_data_ram_i_187_n_0));
  LUT6 #(
    .INIT(64'hCFFF00008AAA0000)) 
    u_data_ram_i_188
       (.I0(A0_0[31]),
        .I1(\result_OBUF[31]_inst_i_14_0 ),
        .I2(\result_OBUF[31]_inst_i_14_1 ),
        .I3(\result_OBUF[31]_inst_i_14_2 ),
        .I4(\pc_reg[2]_0 ),
        .I5(A0_0[30]),
        .O(u_data_ram_i_188_n_0));
  LUT6 #(
    .INIT(64'hCFFF00008AAA0000)) 
    u_data_ram_i_189
       (.I0(A0_0[27]),
        .I1(\result_OBUF[31]_inst_i_14_0 ),
        .I2(\result_OBUF[31]_inst_i_14_1 ),
        .I3(\result_OBUF[31]_inst_i_14_2 ),
        .I4(\pc_reg[2]_0 ),
        .I5(A0_0[26]),
        .O(u_data_ram_i_189_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    u_data_ram_i_19
       (.I0(ALUresult0_carry__3),
        .I1(B0[24]),
        .O(B[24]));
  LUT6 #(
    .INIT(64'h8888888888088888)) 
    u_data_ram_i_190
       (.I0(A0_0[25]),
        .I1(\pc_reg[2]_0 ),
        .I2(u_data_ram_i_170_0),
        .I3(u_data_ram_i_170_1),
        .I4(\result_OBUF[31]_inst_i_14_1 ),
        .I5(\result_OBUF[31]_inst_i_14_0 ),
        .O(u_data_ram_i_190_n_0));
  LUT6 #(
    .INIT(64'hCFFF00008AAA0000)) 
    u_data_ram_i_191
       (.I0(A0_0[29]),
        .I1(\result_OBUF[31]_inst_i_14_0 ),
        .I2(\result_OBUF[31]_inst_i_14_1 ),
        .I3(\result_OBUF[31]_inst_i_14_2 ),
        .I4(\pc_reg[2]_0 ),
        .I5(A0_0[28]),
        .O(u_data_ram_i_191_n_0));
  LUT6 #(
    .INIT(64'hCFFF00008AAA0000)) 
    u_data_ram_i_192
       (.I0(A0_0[22]),
        .I1(\result_OBUF[31]_inst_i_14_0 ),
        .I2(\result_OBUF[31]_inst_i_14_1 ),
        .I3(\result_OBUF[31]_inst_i_14_2 ),
        .I4(\pc_reg[2]_0 ),
        .I5(A0_0[21]),
        .O(u_data_ram_i_192_n_0));
  LUT6 #(
    .INIT(64'hCFFF00008AAA0000)) 
    u_data_ram_i_193
       (.I0(A0_0[24]),
        .I1(\result_OBUF[31]_inst_i_14_0 ),
        .I2(\result_OBUF[31]_inst_i_14_1 ),
        .I3(\result_OBUF[31]_inst_i_14_2 ),
        .I4(\pc_reg[2]_0 ),
        .I5(A0_0[23]),
        .O(u_data_ram_i_193_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    u_data_ram_i_20
       (.I0(ALUresult0_carry__3),
        .I1(B0[23]),
        .O(B[23]));
  LUT2 #(
    .INIT(4'h8)) 
    u_data_ram_i_21
       (.I0(ALUresult0_carry__3),
        .I1(B0[22]),
        .O(B[22]));
  LUT2 #(
    .INIT(4'h8)) 
    u_data_ram_i_22
       (.I0(ALUresult0_carry__3),
        .I1(B0[21]),
        .O(B[21]));
  LUT2 #(
    .INIT(4'h8)) 
    u_data_ram_i_23
       (.I0(ALUresult0_carry__3),
        .I1(B0[20]),
        .O(B[20]));
  LUT2 #(
    .INIT(4'h8)) 
    u_data_ram_i_24
       (.I0(ALUresult0_carry__3),
        .I1(B0[19]),
        .O(B[19]));
  LUT2 #(
    .INIT(4'h8)) 
    u_data_ram_i_25
       (.I0(ALUresult0_carry__3),
        .I1(B0[18]),
        .O(B[18]));
  LUT2 #(
    .INIT(4'h8)) 
    u_data_ram_i_26
       (.I0(ALUresult0_carry__3),
        .I1(B0[17]),
        .O(B[17]));
  LUT2 #(
    .INIT(4'h8)) 
    u_data_ram_i_27
       (.I0(ALUresult0_carry__3),
        .I1(B0[16]),
        .O(B[16]));
  LUT2 #(
    .INIT(4'h8)) 
    u_data_ram_i_28
       (.I0(ALUresult0_carry__3),
        .I1(B0[15]),
        .O(B[15]));
  LUT2 #(
    .INIT(4'h8)) 
    u_data_ram_i_29
       (.I0(ALUresult0_carry__3),
        .I1(B0[14]),
        .O(B[14]));
  LUT2 #(
    .INIT(4'h8)) 
    u_data_ram_i_30
       (.I0(ALUresult0_carry__3),
        .I1(B0[13]),
        .O(B[13]));
  LUT2 #(
    .INIT(4'h8)) 
    u_data_ram_i_31
       (.I0(ALUresult0_carry__3),
        .I1(B0[12]),
        .O(B[12]));
  LUT2 #(
    .INIT(4'h8)) 
    u_data_ram_i_32
       (.I0(ALUresult0_carry__3),
        .I1(B0[11]),
        .O(B[11]));
  LUT2 #(
    .INIT(4'h8)) 
    u_data_ram_i_33
       (.I0(ALUresult0_carry__3),
        .I1(B0[10]),
        .O(B[10]));
  LUT2 #(
    .INIT(4'h8)) 
    u_data_ram_i_34
       (.I0(ALUresult0_carry__3),
        .I1(B0[9]),
        .O(B[9]));
  LUT2 #(
    .INIT(4'h8)) 
    u_data_ram_i_35
       (.I0(ALUresult0_carry__3),
        .I1(B0[8]),
        .O(B[8]));
  LUT2 #(
    .INIT(4'h8)) 
    u_data_ram_i_36
       (.I0(ALUresult0_carry__3),
        .I1(B0[7]),
        .O(B[7]));
  LUT2 #(
    .INIT(4'h8)) 
    u_data_ram_i_37
       (.I0(ALUresult0_carry__3),
        .I1(B0[6]),
        .O(B[6]));
  LUT2 #(
    .INIT(4'h8)) 
    u_data_ram_i_38
       (.I0(ALUresult0_carry__3),
        .I1(B0[5]),
        .O(B[5]));
  LUT2 #(
    .INIT(4'h8)) 
    u_data_ram_i_39
       (.I0(ALUresult0_carry__3),
        .I1(B0[4]),
        .O(B[4]));
  LUT2 #(
    .INIT(4'h8)) 
    u_data_ram_i_40
       (.I0(ALUresult0_carry__3),
        .I1(B0[3]),
        .O(B[3]));
  LUT2 #(
    .INIT(4'h8)) 
    u_data_ram_i_41
       (.I0(ALUresult0_carry__3),
        .I1(B0[2]),
        .O(B[2]));
  LUT2 #(
    .INIT(4'h8)) 
    u_data_ram_i_42
       (.I0(ALUresult0_carry__3),
        .I1(B0[1]),
        .O(B[1]));
  LUT2 #(
    .INIT(4'h8)) 
    u_data_ram_i_43
       (.I0(ALUresult0_carry__3),
        .I1(B0[0]),
        .O(B[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF11141440)) 
    u_data_ram_i_46
       (.I0(\pc[31]_i_32_0 ),
        .I1(\result_OBUF[30]_inst_i_3 [1]),
        .I2(JrPC[11]),
        .I3(\u_ALU_1/B_signed [11]),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .I5(u_data_ram_i_73_n_0),
        .O(u_data_ram_i_73_0));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    u_data_ram_i_47
       (.I0(u_data_ram_i_9),
        .I1(u_data_ram_i_74_n_0),
        .I2(u_data_ram_i_75_n_0),
        .I3(u_data_ram_i_76_n_0),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .I5(u_data_ram_i_77_n_0),
        .O(u_data_ram_i_77_8));
  LUT6 #(
    .INIT(64'hFFFFFFFF11141440)) 
    u_data_ram_i_48
       (.I0(\pc[31]_i_32_0 ),
        .I1(\result_OBUF[30]_inst_i_3 [1]),
        .I2(JrPC[10]),
        .I3(\u_ALU_1/B_signed [10]),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .I5(u_data_ram_i_78_n_0),
        .O(u_data_ram_i_78_0));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    u_data_ram_i_49
       (.I0(u_data_ram_i_9),
        .I1(u_data_ram_i_79_n_0),
        .I2(u_data_ram_i_80_n_0),
        .I3(u_data_ram_i_81_n_0),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .I5(u_data_ram_i_77_n_0),
        .O(u_data_ram_i_77_7));
  LUT6 #(
    .INIT(64'hFFFFFFFF11141440)) 
    u_data_ram_i_50
       (.I0(\pc[31]_i_32_0 ),
        .I1(\result_OBUF[30]_inst_i_3 [1]),
        .I2(JrPC[9]),
        .I3(\u_ALU_1/B_signed [9]),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .I5(u_data_ram_i_82_n_0),
        .O(u_data_ram_i_82_0));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    u_data_ram_i_51
       (.I0(u_data_ram_i_9),
        .I1(u_data_ram_i_83_n_0),
        .I2(u_data_ram_i_84_n_0),
        .I3(u_data_ram_i_85_n_0),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .I5(u_data_ram_i_77_n_0),
        .O(u_data_ram_i_77_2));
  LUT6 #(
    .INIT(64'hFFFFFFFF11141440)) 
    u_data_ram_i_52
       (.I0(\pc[31]_i_32_0 ),
        .I1(\result_OBUF[30]_inst_i_3 [1]),
        .I2(JrPC[8]),
        .I3(\u_ALU_1/B_signed [8]),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .I5(u_data_ram_i_86_n_0),
        .O(u_data_ram_i_86_0));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    u_data_ram_i_53
       (.I0(u_data_ram_i_9),
        .I1(u_data_ram_i_87_n_0),
        .I2(u_data_ram_i_88_n_0),
        .I3(u_data_ram_i_89_n_0),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .I5(u_data_ram_i_77_n_0),
        .O(u_data_ram_i_77_9));
  LUT6 #(
    .INIT(64'hFFFFFFFF11141440)) 
    u_data_ram_i_54
       (.I0(\pc[31]_i_32_0 ),
        .I1(\result_OBUF[30]_inst_i_3 [1]),
        .I2(JrPC[7]),
        .I3(\u_ALU_1/B_signed [7]),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .I5(u_data_ram_i_90_n_0),
        .O(u_data_ram_i_90_0));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    u_data_ram_i_55
       (.I0(u_data_ram_i_9),
        .I1(u_data_ram_i_91_n_0),
        .I2(u_data_ram_i_92_n_0),
        .I3(u_data_ram_i_93_n_0),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .I5(u_data_ram_i_77_n_0),
        .O(u_data_ram_i_77_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF11141440)) 
    u_data_ram_i_56
       (.I0(\pc[31]_i_32_0 ),
        .I1(\result_OBUF[30]_inst_i_3 [1]),
        .I2(JrPC[6]),
        .I3(\u_ALU_1/B_signed [6]),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .I5(u_data_ram_i_94_n_0),
        .O(u_data_ram_i_94_0));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    u_data_ram_i_57
       (.I0(u_data_ram_i_9),
        .I1(u_data_ram_i_95_n_0),
        .I2(u_data_ram_i_96_n_0),
        .I3(u_data_ram_i_97_n_0),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .I5(u_data_ram_i_77_n_0),
        .O(u_data_ram_i_77_6));
  LUT6 #(
    .INIT(64'hFFFFFFFF11141440)) 
    u_data_ram_i_58
       (.I0(\pc[31]_i_32_0 ),
        .I1(\result_OBUF[30]_inst_i_3 [1]),
        .I2(JrPC[5]),
        .I3(\u_ALU_1/B_signed [5]),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .I5(u_data_ram_i_98_n_0),
        .O(u_data_ram_i_98_0));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    u_data_ram_i_59
       (.I0(u_data_ram_i_9),
        .I1(u_data_ram_i_99_n_0),
        .I2(u_data_ram_i_100_n_0),
        .I3(u_data_ram_i_101_n_0),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .I5(u_data_ram_i_77_n_0),
        .O(u_data_ram_i_77_10));
  LUT6 #(
    .INIT(64'hFFFFFFFF11141440)) 
    u_data_ram_i_60
       (.I0(\pc[31]_i_32_0 ),
        .I1(\result_OBUF[30]_inst_i_3 [1]),
        .I2(JrPC[4]),
        .I3(\u_ALU_1/B_signed [4]),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .I5(u_data_ram_i_102_n_0),
        .O(u_data_ram_i_102_0));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    u_data_ram_i_61
       (.I0(u_data_ram_i_9),
        .I1(u_data_ram_i_103_n_0),
        .I2(u_data_ram_i_104_n_0),
        .I3(u_data_ram_i_105_n_0),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .I5(u_data_ram_i_77_n_0),
        .O(u_data_ram_i_77_11));
  LUT6 #(
    .INIT(64'hFFFFFFFF11141440)) 
    u_data_ram_i_62
       (.I0(\pc[31]_i_32_0 ),
        .I1(\result_OBUF[30]_inst_i_3 [1]),
        .I2(JrPC[3]),
        .I3(\u_ALU_1/B_signed [3]),
        .I4(\result_OBUF[30]_inst_i_3 [0]),
        .I5(u_data_ram_i_106_n_0),
        .O(u_data_ram_i_106_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    u_data_ram_i_63
       (.I0(u_data_ram_i_9),
        .I1(u_data_ram_i_107_n_0),
        .I2(u_data_ram_i_108_n_0),
        .I3(u_data_ram_i_109_n_0),
        .I4(u_data_ram_i_110_n_0),
        .I5(u_data_ram_i_111_n_0),
        .O(u_data_ram_i_111_0));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    u_data_ram_i_65
       (.I0(\pc[31]_i_32_1 ),
        .I1(u_data_ram_i_113_n_0),
        .I2(u_data_ram_i_114_n_0),
        .I3(u_data_ram_i_77_n_0),
        .I4(u_data_ram_i_115_n_0),
        .I5(u_data_ram_i_116_n_0),
        .O(u_data_ram_i_65_n_0));
  LUT6 #(
    .INIT(64'h000000001666E888)) 
    u_data_ram_i_66
       (.I0(\result_OBUF[30]_inst_i_3 [0]),
        .I1(\u_ALU_1/B_signed [2]),
        .I2(\pc_reg[2]_0 ),
        .I3(A0_0[2]),
        .I4(\result_OBUF[30]_inst_i_3 [1]),
        .I5(\pc[31]_i_32_0 ),
        .O(u_data_ram_i_66_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    u_data_ram_i_67
       (.I0(u_data_ram_i_117_n_0),
        .I1(u_data_ram_i_118_n_0),
        .I2(u_data_ram_i_119_n_0),
        .I3(u_data_ram_i_120_n_0),
        .I4(u_data_ram_i_121_n_0),
        .I5(u_data_ram_i_122_n_0),
        .O(u_data_ram_i_67_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    u_data_ram_i_73
       (.I0(\pc[31]_i_32_1 ),
        .I1(u_data_ram_i_113_n_0),
        .I2(u_data_ram_i_127_n_0),
        .I3(u_data_ram_i_77_n_0),
        .I4(u_data_ram_i_128_n_0),
        .I5(u_data_ram_i_116_n_0),
        .O(u_data_ram_i_73_n_0));
  LUT4 #(
    .INIT(16'hC0A0)) 
    u_data_ram_i_74
       (.I0(u_data_ram_i_80_n_0),
        .I1(\result_OBUF[12]_inst_i_9_n_0 ),
        .I2(u_data_ram_i_113_n_0),
        .I3(\result_OBUF[30]_inst_i_3 [0]),
        .O(u_data_ram_i_74_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    u_data_ram_i_75
       (.I0(u_data_ram_i_129_n_0),
        .I1(\u_ALU_1/A_or_Shift__41 [1]),
        .I2(u_data_ram_i_131_n_0),
        .O(u_data_ram_i_75_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    u_data_ram_i_76
       (.I0(u_data_ram_i_132_n_0),
        .I1(u_data_ram_i_133_n_0),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(u_data_ram_i_134_n_0),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(u_data_ram_i_136_n_0),
        .O(u_data_ram_i_76_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFAFFFFFFFB)) 
    u_data_ram_i_77
       (.I0(\u_ALU_1/A_or_Shift__41 [0]),
        .I1(Sftmd),
        .I2(u_data_ram_i_138_n_0),
        .I3(u_data_ram_i_139_n_0),
        .I4(u_data_ram_i_140_n_0),
        .I5(u_data_ram_i_141_n_0),
        .O(u_data_ram_i_77_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    u_data_ram_i_78
       (.I0(\pc[31]_i_32_1 ),
        .I1(u_data_ram_i_113_n_0),
        .I2(u_data_ram_i_128_n_0),
        .I3(u_data_ram_i_77_n_0),
        .I4(u_data_ram_i_142_n_0),
        .I5(u_data_ram_i_116_n_0),
        .O(u_data_ram_i_78_n_0));
  LUT4 #(
    .INIT(16'hC0A0)) 
    u_data_ram_i_79
       (.I0(u_data_ram_i_84_n_0),
        .I1(u_data_ram_i_76_n_0),
        .I2(u_data_ram_i_113_n_0),
        .I3(\result_OBUF[30]_inst_i_3 [0]),
        .O(u_data_ram_i_79_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    u_data_ram_i_80
       (.I0(u_data_ram_i_143_n_0),
        .I1(\u_ALU_1/A_or_Shift__41 [1]),
        .I2(u_data_ram_i_144_n_0),
        .O(u_data_ram_i_80_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    u_data_ram_i_81
       (.I0(u_data_ram_i_145_n_0),
        .I1(u_data_ram_i_146_n_0),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(u_data_ram_i_147_n_0),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(u_data_ram_i_148_n_0),
        .O(u_data_ram_i_81_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    u_data_ram_i_82
       (.I0(\pc[31]_i_32_1 ),
        .I1(u_data_ram_i_113_n_0),
        .I2(u_data_ram_i_142_n_0),
        .I3(u_data_ram_i_77_n_0),
        .I4(u_data_ram_i_149_n_0),
        .I5(u_data_ram_i_116_n_0),
        .O(u_data_ram_i_82_n_0));
  LUT4 #(
    .INIT(16'hC0A0)) 
    u_data_ram_i_83
       (.I0(u_data_ram_i_88_n_0),
        .I1(u_data_ram_i_81_n_0),
        .I2(u_data_ram_i_113_n_0),
        .I3(\result_OBUF[30]_inst_i_3 [0]),
        .O(u_data_ram_i_83_n_0));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    u_data_ram_i_84
       (.I0(B[3]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(\result_OBUF[30]_inst_i_9_n_0 ),
        .I3(B[7]),
        .I4(\u_ALU_1/A_or_Shift__41 [1]),
        .I5(u_data_ram_i_129_n_0),
        .O(u_data_ram_i_84_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    u_data_ram_i_85
       (.I0(u_data_ram_i_134_n_0),
        .I1(u_data_ram_i_136_n_0),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(u_data_ram_i_133_n_0),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(u_data_ram_i_150_n_0),
        .O(u_data_ram_i_85_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    u_data_ram_i_86
       (.I0(\pc[31]_i_32_1 ),
        .I1(u_data_ram_i_113_n_0),
        .I2(u_data_ram_i_149_n_0),
        .I3(u_data_ram_i_77_n_0),
        .I4(u_data_ram_i_151_n_0),
        .I5(u_data_ram_i_116_n_0),
        .O(u_data_ram_i_86_n_0));
  LUT4 #(
    .INIT(16'hC0A0)) 
    u_data_ram_i_87
       (.I0(u_data_ram_i_92_n_0),
        .I1(u_data_ram_i_85_n_0),
        .I2(u_data_ram_i_113_n_0),
        .I3(\result_OBUF[30]_inst_i_3 [0]),
        .O(u_data_ram_i_87_n_0));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    u_data_ram_i_88
       (.I0(B[2]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(\result_OBUF[30]_inst_i_9_n_0 ),
        .I3(B[6]),
        .I4(\u_ALU_1/A_or_Shift__41 [1]),
        .I5(u_data_ram_i_143_n_0),
        .O(u_data_ram_i_88_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    u_data_ram_i_89
       (.I0(u_data_ram_i_147_n_0),
        .I1(u_data_ram_i_148_n_0),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(u_data_ram_i_146_n_0),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(u_data_ram_i_152_n_0),
        .O(u_data_ram_i_89_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    u_data_ram_i_90
       (.I0(\pc[31]_i_32_1 ),
        .I1(u_data_ram_i_113_n_0),
        .I2(u_data_ram_i_151_n_0),
        .I3(u_data_ram_i_77_n_0),
        .I4(u_data_ram_i_153_n_0),
        .I5(u_data_ram_i_116_n_0),
        .O(u_data_ram_i_90_n_0));
  LUT4 #(
    .INIT(16'hC0A0)) 
    u_data_ram_i_91
       (.I0(u_data_ram_i_96_n_0),
        .I1(u_data_ram_i_89_n_0),
        .I2(u_data_ram_i_113_n_0),
        .I3(\result_OBUF[30]_inst_i_3 [0]),
        .O(u_data_ram_i_91_n_0));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    u_data_ram_i_92
       (.I0(B[1]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(\result_OBUF[30]_inst_i_9_n_0 ),
        .I3(B[5]),
        .I4(\u_ALU_1/A_or_Shift__41 [1]),
        .I5(u_data_ram_i_154_n_0),
        .O(u_data_ram_i_92_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    u_data_ram_i_93
       (.I0(u_data_ram_i_133_n_0),
        .I1(u_data_ram_i_150_n_0),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(u_data_ram_i_136_n_0),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(u_data_ram_i_155_n_0),
        .O(u_data_ram_i_93_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    u_data_ram_i_94
       (.I0(\pc[31]_i_32_1 ),
        .I1(u_data_ram_i_113_n_0),
        .I2(u_data_ram_i_153_n_0),
        .I3(u_data_ram_i_77_n_0),
        .I4(u_data_ram_i_156_n_0),
        .I5(u_data_ram_i_116_n_0),
        .O(u_data_ram_i_94_n_0));
  LUT4 #(
    .INIT(16'hC0A0)) 
    u_data_ram_i_95
       (.I0(u_data_ram_i_100_n_0),
        .I1(u_data_ram_i_93_n_0),
        .I2(u_data_ram_i_113_n_0),
        .I3(\result_OBUF[30]_inst_i_3 [0]),
        .O(u_data_ram_i_95_n_0));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    u_data_ram_i_96
       (.I0(B[0]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(\result_OBUF[30]_inst_i_9_n_0 ),
        .I3(B[4]),
        .I4(\u_ALU_1/A_or_Shift__41 [1]),
        .I5(u_data_ram_i_157_n_0),
        .O(u_data_ram_i_96_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    u_data_ram_i_97
       (.I0(u_data_ram_i_146_n_0),
        .I1(u_data_ram_i_152_n_0),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(u_data_ram_i_148_n_0),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(u_data_ram_i_158_n_0),
        .O(u_data_ram_i_97_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    u_data_ram_i_98
       (.I0(\pc[31]_i_32_1 ),
        .I1(u_data_ram_i_113_n_0),
        .I2(u_data_ram_i_156_n_0),
        .I3(u_data_ram_i_77_n_0),
        .I4(u_data_ram_i_159_n_0),
        .I5(u_data_ram_i_116_n_0),
        .O(u_data_ram_i_98_n_0));
  LUT4 #(
    .INIT(16'hC0A0)) 
    u_data_ram_i_99
       (.I0(u_data_ram_i_104_n_0),
        .I1(u_data_ram_i_97_n_0),
        .I2(u_data_ram_i_113_n_0),
        .I3(\result_OBUF[30]_inst_i_3 [0]),
        .O(u_data_ram_i_99_n_0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module blk_mem_gen_0_blk_mem_gen_generic_cstr
   (douta,
    clka,
    addra);
  output [31:0]douta;
  input clka;
  input [9:0]addra;

  wire [9:0]addra;
  wire clka;
  wire [31:0]douta;

  blk_mem_gen_0_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width
   (douta,
    clka,
    addra);
  output [31:0]douta;
  input clka;
  input [9:0]addra;

  wire [9:0]addra;
  wire clka;
  wire [31:0]douta;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init
   (douta,
    clka,
    addra);
  output [31:0]douta;
  input clka;
  input [9:0]addra;

  wire [9:0]addra;
  wire clka;
  wire [31:0]douta;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* OPT_MODIFIED = "SWEEP" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h01AE4822340E0002AD0A0004AD0A0000240A00018DAD0000200D205420082000),
    .INIT_01(256'h21080004AD0200080C0000168D0500048D040000118F0007012F602A340F0001),
    .INIT_02(256'h03E000080085102008000015AD0E0000210800083C0EABCD080000092129FFFF),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(douta),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module blk_mem_gen_0_blk_mem_gen_top
   (douta,
    clka,
    addra);
  output [31:0]douta;
  input clka;
  input [9:0]addra;

  wire [9:0]addra;
  wire clka;
  wire [31:0]douta;

  blk_mem_gen_0_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* C_ADDRA_WIDTH = "10" *) (* C_ADDRB_WIDTH = "10" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "0" *) 
(* C_COUNT_36K_BRAM = "1" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.622 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
(* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "3" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "1024" *) (* C_READ_DEPTH_B = "1024" *) (* C_READ_LATENCY_A = "1" *) 
(* C_READ_LATENCY_B = "1" *) (* C_READ_WIDTH_A = "32" *) (* C_READ_WIDTH_B = "32" *) 
(* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) (* C_RST_PRIORITY_A = "CE" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) (* C_USE_BRAM_BLOCK = "0" *) 
(* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) (* C_USE_DEFAULT_DATA = "1" *) 
(* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) (* C_USE_URAM = "0" *) 
(* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) (* C_WRITE_DEPTH_A = "1024" *) 
(* C_WRITE_DEPTH_B = "1024" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
(* C_WRITE_WIDTH_A = "32" *) (* C_WRITE_WIDTH_B = "32" *) (* C_XDEVICEFAMILY = "artix7" *) 
(* ORIG_REF_NAME = "blk_mem_gen_v8_4_4" *) (* downgradeipidentifiedwarnings = "yes" *) 
module blk_mem_gen_0_blk_mem_gen_v8_4_4
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [9:0]addra;
  input [31:0]dina;
  output [31:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [9:0]addrb;
  input [31:0]dinb;
  output [31:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [9:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [9:0]s_axi_rdaddrecc;

  wire [9:0]addra;
  wire clka;
  wire [31:0]douta;

  blk_mem_gen_0_blk_mem_gen_v8_4_4_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_4_synth" *) 
module blk_mem_gen_0_blk_mem_gen_v8_4_4_synth
   (douta,
    clka,
    addra);
  output [31:0]douta;
  input clka;
  input [9:0]addra;

  wire [9:0]addra;
  wire clka;
  wire [31:0]douta;

  blk_mem_gen_0_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module data_ram_blk_mem_gen_generic_cstr
   (douta,
    clka,
    addra,
    dina,
    wea);
  output [31:0]douta;
  input clka;
  input [9:0]addra;
  input [31:0]dina;
  input [0:0]wea;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire [0:0]wea;

  data_ram_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module data_ram_blk_mem_gen_prim_width
   (douta,
    clka,
    addra,
    dina,
    wea);
  output [31:0]douta;
  input clka;
  input [9:0]addra;
  input [31:0]dina;
  input [0:0]wea;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire [0:0]wea;

  data_ram_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module data_ram_blk_mem_gen_prim_wrapper_init
   (douta,
    clka,
    addra,
    dina,
    wea);
  output [31:0]douta;
  input clka;
  input [9:0]addra;
  input [31:0]dina;
  input [0:0]wea;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* OPT_MODIFIED = "SWEEP" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000140000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI(dina),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(douta),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module data_ram_blk_mem_gen_top
   (douta,
    clka,
    addra,
    dina,
    wea);
  output [31:0]douta;
  input clka;
  input [9:0]addra;
  input [31:0]dina;
  input [0:0]wea;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire [0:0]wea;

  data_ram_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
endmodule

(* C_ADDRA_WIDTH = "10" *) (* C_ADDRB_WIDTH = "10" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "0" *) 
(* C_COUNT_36K_BRAM = "1" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.95215 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "data_ram.mem" *) 
(* C_INIT_FILE_NAME = "data_ram.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "0" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "1024" *) (* C_READ_DEPTH_B = "1024" *) (* C_READ_LATENCY_A = "1" *) 
(* C_READ_LATENCY_B = "1" *) (* C_READ_WIDTH_A = "32" *) (* C_READ_WIDTH_B = "32" *) 
(* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) (* C_RST_PRIORITY_A = "CE" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) (* C_USE_BRAM_BLOCK = "0" *) 
(* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) (* C_USE_DEFAULT_DATA = "1" *) 
(* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) (* C_USE_URAM = "0" *) 
(* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) (* C_WRITE_DEPTH_A = "1024" *) 
(* C_WRITE_DEPTH_B = "1024" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
(* C_WRITE_WIDTH_A = "32" *) (* C_WRITE_WIDTH_B = "32" *) (* C_XDEVICEFAMILY = "artix7" *) 
(* ORIG_REF_NAME = "blk_mem_gen_v8_4_4" *) (* downgradeipidentifiedwarnings = "yes" *) 
module data_ram_blk_mem_gen_v8_4_4
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [9:0]addra;
  input [31:0]dina;
  output [31:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [9:0]addrb;
  input [31:0]dinb;
  output [31:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [9:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [9:0]s_axi_rdaddrecc;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire [0:0]wea;

  data_ram_blk_mem_gen_v8_4_4_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_4_synth" *) 
module data_ram_blk_mem_gen_v8_4_4_synth
   (douta,
    clka,
    addra,
    dina,
    wea);
  output [31:0]douta;
  input clka;
  input [9:0]addra;
  input [31:0]dina;
  input [0:0]wea;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire [0:0]wea;

  data_ram_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
