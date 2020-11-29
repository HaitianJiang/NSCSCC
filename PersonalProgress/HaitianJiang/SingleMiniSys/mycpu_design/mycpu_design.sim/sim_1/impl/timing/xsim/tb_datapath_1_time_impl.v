// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sat Nov 28 20:29:56 2020
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

module RAM32M_HD12
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

module RAM32M_HD13
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

module RAM32M_HD14
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

module RAM32M_HD15
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

module RAM32M_HD16
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

module RAM32M_HD17
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

module RAM32M_HD18
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

module RAM32M_HD19
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

module RAM32M_HD20
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

module RAM32M_HD21
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

module RAM32M_HD22
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
   (CO,
    ALUresult0__203_carry__2_i_7,
    rst_n,
    \bbstub_douta[23] ,
    ALUresult0_carry__6_0,
    ALUresult0_carry__6_1,
    \result_OBUF[29]_inst_i_6 ,
    \result_OBUF[29]_inst_i_6_0 ,
    \result_OBUF[29]_inst_i_6_1 ,
    \result_OBUF[29]_inst_i_6_2 ,
    \result_OBUF[29]_inst_i_6_3 ,
    \result_OBUF[29]_inst_i_6_4 ,
    \result_OBUF[29]_inst_i_6_5 ,
    \result_OBUF[29]_inst_i_6_6 ,
    \result_OBUF[29]_inst_i_6_7 ,
    \result_OBUF[29]_inst_i_6_8 ,
    \result_OBUF[29]_inst_i_6_9 ,
    \result_OBUF[29]_inst_i_6_10 ,
    \result_OBUF[29]_inst_i_6_11 ,
    \result_OBUF[29]_inst_i_6_12 ,
    \result_OBUF[29]_inst_i_6_13 ,
    \result_OBUF[29]_inst_i_6_14 ,
    ALUresult0_carry__2_0,
    \result_OBUF[29]_inst_i_6_15 ,
    ALUresult0_carry__1_0,
    \result_OBUF[29]_inst_i_6_16 ,
    \result_OBUF[29]_inst_i_6_17 ,
    \result_OBUF[29]_inst_i_6_18 ,
    \result_OBUF[29]_inst_i_6_19 ,
    \result_OBUF[29]_inst_i_6_20 ,
    \result_OBUF[29]_inst_i_6_21 ,
    \result_OBUF[29]_inst_i_6_22 ,
    \result_OBUF[29]_inst_i_6_23 ,
    \result_OBUF[29]_inst_i_6_24 ,
    \result_OBUF[29]_inst_i_6_25 ,
    ALUresult0_carry_0,
    DI,
    S,
    \result_OBUF[4]_inst_i_5_0 ,
    \result_OBUF[4]_inst_i_5_1 ,
    \result_OBUF[8]_inst_i_6_0 ,
    \result_OBUF[8]_inst_i_6_1 ,
    \result_OBUF[12]_inst_i_5_0 ,
    \result_OBUF[12]_inst_i_5_1 ,
    \result_OBUF[16]_inst_i_6_0 ,
    \result_OBUF[16]_inst_i_6_1 ,
    \result_OBUF[20]_inst_i_6_0 ,
    \result_OBUF[20]_inst_i_6_1 ,
    \result_OBUF[24]_inst_i_5_0 ,
    \result_OBUF[24]_inst_i_5_1 ,
    \result_OBUF[28]_inst_i_5_0 ,
    \result_OBUF[28]_inst_i_5_1 ,
    \result_OBUF[0]_inst_i_2_0 ,
    \result_OBUF[0]_inst_i_2_1 ,
    \result_OBUF[4]_inst_i_5_2 ,
    \result_OBUF[4]_inst_i_5_3 ,
    \result_OBUF[8]_inst_i_6_2 ,
    \result_OBUF[8]_inst_i_6_3 ,
    \result_OBUF[12]_inst_i_5_2 ,
    \result_OBUF[12]_inst_i_5_3 ,
    \result_OBUF[16]_inst_i_6_2 ,
    \result_OBUF[16]_inst_i_6_3 ,
    \result_OBUF[20]_inst_i_6_2 ,
    \result_OBUF[20]_inst_i_6_3 ,
    \result_OBUF[24]_inst_i_5_2 ,
    \result_OBUF[24]_inst_i_5_3 ,
    \result_OBUF[28]_inst_i_5_2 ,
    \result_OBUF[28]_inst_i_5_3 ,
    ALUresult0__187_carry__0_0,
    ALUresult0__187_carry__0_1,
    ALUresult0__187_carry__1_0,
    ALUresult0__187_carry__1_1,
    ALUresult0__187_carry__2_0,
    ALUresult0__187_carry__2_1,
    \result_OBUF[0]_inst_i_4 ,
    \result_OBUF[0]_inst_i_4_0 ,
    ALUresult0__203_carry__0_0,
    ALUresult0__203_carry__0_1,
    ALUresult0__203_carry__1_0,
    ALUresult0__203_carry__1_1,
    ALUresult0__203_carry__2_0,
    ALUresult0__203_carry__2_1,
    \result_OBUF[0]_inst_i_4_1 ,
    \result_OBUF[0]_inst_i_4_2 ,
    rst_n_IBUF,
    douta,
    \result_OBUF[0]_inst_i_1 ,
    \result_OBUF[0]_inst_i_1_0 );
  output [0:0]CO;
  output [0:0]ALUresult0__203_carry__2_i_7;
  output rst_n;
  output \bbstub_douta[23] ;
  output ALUresult0_carry__6_0;
  output ALUresult0_carry__6_1;
  output \result_OBUF[29]_inst_i_6 ;
  output \result_OBUF[29]_inst_i_6_0 ;
  output \result_OBUF[29]_inst_i_6_1 ;
  output \result_OBUF[29]_inst_i_6_2 ;
  output \result_OBUF[29]_inst_i_6_3 ;
  output \result_OBUF[29]_inst_i_6_4 ;
  output \result_OBUF[29]_inst_i_6_5 ;
  output \result_OBUF[29]_inst_i_6_6 ;
  output \result_OBUF[29]_inst_i_6_7 ;
  output \result_OBUF[29]_inst_i_6_8 ;
  output \result_OBUF[29]_inst_i_6_9 ;
  output \result_OBUF[29]_inst_i_6_10 ;
  output \result_OBUF[29]_inst_i_6_11 ;
  output \result_OBUF[29]_inst_i_6_12 ;
  output \result_OBUF[29]_inst_i_6_13 ;
  output \result_OBUF[29]_inst_i_6_14 ;
  output ALUresult0_carry__2_0;
  output \result_OBUF[29]_inst_i_6_15 ;
  output ALUresult0_carry__1_0;
  output \result_OBUF[29]_inst_i_6_16 ;
  output \result_OBUF[29]_inst_i_6_17 ;
  output \result_OBUF[29]_inst_i_6_18 ;
  output \result_OBUF[29]_inst_i_6_19 ;
  output \result_OBUF[29]_inst_i_6_20 ;
  output \result_OBUF[29]_inst_i_6_21 ;
  output \result_OBUF[29]_inst_i_6_22 ;
  output \result_OBUF[29]_inst_i_6_23 ;
  output \result_OBUF[29]_inst_i_6_24 ;
  output \result_OBUF[29]_inst_i_6_25 ;
  output ALUresult0_carry_0;
  input [3:0]DI;
  input [3:0]S;
  input [3:0]\result_OBUF[4]_inst_i_5_0 ;
  input [3:0]\result_OBUF[4]_inst_i_5_1 ;
  input [3:0]\result_OBUF[8]_inst_i_6_0 ;
  input [3:0]\result_OBUF[8]_inst_i_6_1 ;
  input [3:0]\result_OBUF[12]_inst_i_5_0 ;
  input [3:0]\result_OBUF[12]_inst_i_5_1 ;
  input [3:0]\result_OBUF[16]_inst_i_6_0 ;
  input [3:0]\result_OBUF[16]_inst_i_6_1 ;
  input [3:0]\result_OBUF[20]_inst_i_6_0 ;
  input [3:0]\result_OBUF[20]_inst_i_6_1 ;
  input [3:0]\result_OBUF[24]_inst_i_5_0 ;
  input [3:0]\result_OBUF[24]_inst_i_5_1 ;
  input [2:0]\result_OBUF[28]_inst_i_5_0 ;
  input [3:0]\result_OBUF[28]_inst_i_5_1 ;
  input [3:0]\result_OBUF[0]_inst_i_2_0 ;
  input [3:0]\result_OBUF[0]_inst_i_2_1 ;
  input [3:0]\result_OBUF[4]_inst_i_5_2 ;
  input [3:0]\result_OBUF[4]_inst_i_5_3 ;
  input [3:0]\result_OBUF[8]_inst_i_6_2 ;
  input [3:0]\result_OBUF[8]_inst_i_6_3 ;
  input [3:0]\result_OBUF[12]_inst_i_5_2 ;
  input [3:0]\result_OBUF[12]_inst_i_5_3 ;
  input [3:0]\result_OBUF[16]_inst_i_6_2 ;
  input [3:0]\result_OBUF[16]_inst_i_6_3 ;
  input [3:0]\result_OBUF[20]_inst_i_6_2 ;
  input [3:0]\result_OBUF[20]_inst_i_6_3 ;
  input [3:0]\result_OBUF[24]_inst_i_5_2 ;
  input [3:0]\result_OBUF[24]_inst_i_5_3 ;
  input [2:0]\result_OBUF[28]_inst_i_5_2 ;
  input [3:0]\result_OBUF[28]_inst_i_5_3 ;
  input [3:0]ALUresult0__187_carry__0_0;
  input [3:0]ALUresult0__187_carry__0_1;
  input [3:0]ALUresult0__187_carry__1_0;
  input [3:0]ALUresult0__187_carry__1_1;
  input [3:0]ALUresult0__187_carry__2_0;
  input [3:0]ALUresult0__187_carry__2_1;
  input [3:0]\result_OBUF[0]_inst_i_4 ;
  input [3:0]\result_OBUF[0]_inst_i_4_0 ;
  input [0:0]ALUresult0__203_carry__0_0;
  input [3:0]ALUresult0__203_carry__0_1;
  input [3:0]ALUresult0__203_carry__1_0;
  input [3:0]ALUresult0__203_carry__1_1;
  input [3:0]ALUresult0__203_carry__2_0;
  input [3:0]ALUresult0__203_carry__2_1;
  input [2:0]\result_OBUF[0]_inst_i_4_1 ;
  input [3:0]\result_OBUF[0]_inst_i_4_2 ;
  input rst_n_IBUF;
  input [9:0]douta;
  input \result_OBUF[0]_inst_i_1 ;
  input \result_OBUF[0]_inst_i_1_0 ;

  wire [3:0]ALUresult0__187_carry__0_0;
  wire [3:0]ALUresult0__187_carry__0_1;
  wire ALUresult0__187_carry__0_n_0;
  wire [3:0]ALUresult0__187_carry__1_0;
  wire [3:0]ALUresult0__187_carry__1_1;
  wire ALUresult0__187_carry__1_n_0;
  wire [3:0]ALUresult0__187_carry__2_0;
  wire [3:0]ALUresult0__187_carry__2_1;
  wire ALUresult0__187_carry_n_0;
  wire [0:0]ALUresult0__203_carry__0_0;
  wire [3:0]ALUresult0__203_carry__0_1;
  wire ALUresult0__203_carry__0_n_0;
  wire [3:0]ALUresult0__203_carry__1_0;
  wire [3:0]ALUresult0__203_carry__1_1;
  wire ALUresult0__203_carry__1_n_0;
  wire [3:0]ALUresult0__203_carry__2_0;
  wire [3:0]ALUresult0__203_carry__2_1;
  wire [0:0]ALUresult0__203_carry__2_i_7;
  wire ALUresult0__203_carry_n_0;
  wire ALUresult0__93_carry__0_n_0;
  wire ALUresult0__93_carry__1_n_0;
  wire ALUresult0__93_carry__2_n_0;
  wire ALUresult0__93_carry__3_n_0;
  wire ALUresult0__93_carry__4_n_0;
  wire ALUresult0__93_carry__5_n_0;
  wire ALUresult0__93_carry_n_0;
  wire ALUresult0_carry_0;
  wire ALUresult0_carry__0_n_0;
  wire ALUresult0_carry__1_0;
  wire ALUresult0_carry__1_n_0;
  wire ALUresult0_carry__2_0;
  wire ALUresult0_carry__2_n_0;
  wire ALUresult0_carry__3_n_0;
  wire ALUresult0_carry__4_n_0;
  wire ALUresult0_carry__5_n_0;
  wire ALUresult0_carry__6_0;
  wire ALUresult0_carry__6_1;
  wire ALUresult0_carry_n_0;
  wire [0:0]CO;
  wire [3:0]DI;
  wire [3:0]S;
  wire \bbstub_douta[23] ;
  wire [31:0]data0;
  wire [31:0]data1;
  wire [9:0]douta;
  wire \result_OBUF[0]_inst_i_1 ;
  wire \result_OBUF[0]_inst_i_1_0 ;
  wire [3:0]\result_OBUF[0]_inst_i_2_0 ;
  wire [3:0]\result_OBUF[0]_inst_i_2_1 ;
  wire [3:0]\result_OBUF[0]_inst_i_4 ;
  wire [3:0]\result_OBUF[0]_inst_i_4_0 ;
  wire [2:0]\result_OBUF[0]_inst_i_4_1 ;
  wire [3:0]\result_OBUF[0]_inst_i_4_2 ;
  wire [3:0]\result_OBUF[12]_inst_i_5_0 ;
  wire [3:0]\result_OBUF[12]_inst_i_5_1 ;
  wire [3:0]\result_OBUF[12]_inst_i_5_2 ;
  wire [3:0]\result_OBUF[12]_inst_i_5_3 ;
  wire [3:0]\result_OBUF[16]_inst_i_6_0 ;
  wire [3:0]\result_OBUF[16]_inst_i_6_1 ;
  wire [3:0]\result_OBUF[16]_inst_i_6_2 ;
  wire [3:0]\result_OBUF[16]_inst_i_6_3 ;
  wire [3:0]\result_OBUF[20]_inst_i_6_0 ;
  wire [3:0]\result_OBUF[20]_inst_i_6_1 ;
  wire [3:0]\result_OBUF[20]_inst_i_6_2 ;
  wire [3:0]\result_OBUF[20]_inst_i_6_3 ;
  wire [3:0]\result_OBUF[24]_inst_i_5_0 ;
  wire [3:0]\result_OBUF[24]_inst_i_5_1 ;
  wire [3:0]\result_OBUF[24]_inst_i_5_2 ;
  wire [3:0]\result_OBUF[24]_inst_i_5_3 ;
  wire [2:0]\result_OBUF[28]_inst_i_5_0 ;
  wire [3:0]\result_OBUF[28]_inst_i_5_1 ;
  wire [2:0]\result_OBUF[28]_inst_i_5_2 ;
  wire [3:0]\result_OBUF[28]_inst_i_5_3 ;
  wire \result_OBUF[29]_inst_i_6 ;
  wire \result_OBUF[29]_inst_i_6_0 ;
  wire \result_OBUF[29]_inst_i_6_1 ;
  wire \result_OBUF[29]_inst_i_6_10 ;
  wire \result_OBUF[29]_inst_i_6_11 ;
  wire \result_OBUF[29]_inst_i_6_12 ;
  wire \result_OBUF[29]_inst_i_6_13 ;
  wire \result_OBUF[29]_inst_i_6_14 ;
  wire \result_OBUF[29]_inst_i_6_15 ;
  wire \result_OBUF[29]_inst_i_6_16 ;
  wire \result_OBUF[29]_inst_i_6_17 ;
  wire \result_OBUF[29]_inst_i_6_18 ;
  wire \result_OBUF[29]_inst_i_6_19 ;
  wire \result_OBUF[29]_inst_i_6_2 ;
  wire \result_OBUF[29]_inst_i_6_20 ;
  wire \result_OBUF[29]_inst_i_6_21 ;
  wire \result_OBUF[29]_inst_i_6_22 ;
  wire \result_OBUF[29]_inst_i_6_23 ;
  wire \result_OBUF[29]_inst_i_6_24 ;
  wire \result_OBUF[29]_inst_i_6_25 ;
  wire \result_OBUF[29]_inst_i_6_3 ;
  wire \result_OBUF[29]_inst_i_6_4 ;
  wire \result_OBUF[29]_inst_i_6_5 ;
  wire \result_OBUF[29]_inst_i_6_6 ;
  wire \result_OBUF[29]_inst_i_6_7 ;
  wire \result_OBUF[29]_inst_i_6_8 ;
  wire \result_OBUF[29]_inst_i_6_9 ;
  wire [3:0]\result_OBUF[4]_inst_i_5_0 ;
  wire [3:0]\result_OBUF[4]_inst_i_5_1 ;
  wire [3:0]\result_OBUF[4]_inst_i_5_2 ;
  wire [3:0]\result_OBUF[4]_inst_i_5_3 ;
  wire [3:0]\result_OBUF[8]_inst_i_6_0 ;
  wire [3:0]\result_OBUF[8]_inst_i_6_1 ;
  wire [3:0]\result_OBUF[8]_inst_i_6_2 ;
  wire [3:0]\result_OBUF[8]_inst_i_6_3 ;
  wire rst_n;
  wire rst_n_IBUF;
  wire [2:0]NLW_ALUresult0__187_carry_CO_UNCONNECTED;
  wire [3:0]NLW_ALUresult0__187_carry_O_UNCONNECTED;
  wire [2:0]NLW_ALUresult0__187_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_ALUresult0__187_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_ALUresult0__187_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_ALUresult0__187_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_ALUresult0__187_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_ALUresult0__187_carry__2_O_UNCONNECTED;
  wire [2:0]NLW_ALUresult0__203_carry_CO_UNCONNECTED;
  wire [3:0]NLW_ALUresult0__203_carry_O_UNCONNECTED;
  wire [2:0]NLW_ALUresult0__203_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_ALUresult0__203_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_ALUresult0__203_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_ALUresult0__203_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_ALUresult0__203_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_ALUresult0__203_carry__2_O_UNCONNECTED;
  wire [2:0]NLW_ALUresult0__93_carry_CO_UNCONNECTED;
  wire [2:0]NLW_ALUresult0__93_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_ALUresult0__93_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_ALUresult0__93_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_ALUresult0__93_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_ALUresult0__93_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_ALUresult0__93_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_ALUresult0__93_carry__6_CO_UNCONNECTED;
  wire [2:0]NLW_ALUresult0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_ALUresult0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_ALUresult0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_ALUresult0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_ALUresult0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_ALUresult0_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_ALUresult0_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_ALUresult0_carry__6_CO_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0__187_carry
       (.CI(1'b0),
        .CO({ALUresult0__187_carry_n_0,NLW_ALUresult0__187_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(ALUresult0__187_carry__0_0),
        .O(NLW_ALUresult0__187_carry_O_UNCONNECTED[3:0]),
        .S(ALUresult0__187_carry__0_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0__187_carry__0
       (.CI(ALUresult0__187_carry_n_0),
        .CO({ALUresult0__187_carry__0_n_0,NLW_ALUresult0__187_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(ALUresult0__187_carry__1_0),
        .O(NLW_ALUresult0__187_carry__0_O_UNCONNECTED[3:0]),
        .S(ALUresult0__187_carry__1_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0__187_carry__1
       (.CI(ALUresult0__187_carry__0_n_0),
        .CO({ALUresult0__187_carry__1_n_0,NLW_ALUresult0__187_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(ALUresult0__187_carry__2_0),
        .O(NLW_ALUresult0__187_carry__1_O_UNCONNECTED[3:0]),
        .S(ALUresult0__187_carry__2_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0__187_carry__2
       (.CI(ALUresult0__187_carry__1_n_0),
        .CO({CO,NLW_ALUresult0__187_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\result_OBUF[0]_inst_i_4 ),
        .O(NLW_ALUresult0__187_carry__2_O_UNCONNECTED[3:0]),
        .S(\result_OBUF[0]_inst_i_4_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0__203_carry
       (.CI(1'b0),
        .CO({ALUresult0__203_carry_n_0,NLW_ALUresult0__203_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({ALUresult0__203_carry__0_0,ALUresult0__187_carry__0_0[2:0]}),
        .O(NLW_ALUresult0__203_carry_O_UNCONNECTED[3:0]),
        .S(ALUresult0__203_carry__0_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0__203_carry__0
       (.CI(ALUresult0__203_carry_n_0),
        .CO({ALUresult0__203_carry__0_n_0,NLW_ALUresult0__203_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(ALUresult0__203_carry__1_0),
        .O(NLW_ALUresult0__203_carry__0_O_UNCONNECTED[3:0]),
        .S(ALUresult0__203_carry__1_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0__203_carry__1
       (.CI(ALUresult0__203_carry__0_n_0),
        .CO({ALUresult0__203_carry__1_n_0,NLW_ALUresult0__203_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(ALUresult0__203_carry__2_0),
        .O(NLW_ALUresult0__203_carry__1_O_UNCONNECTED[3:0]),
        .S(ALUresult0__203_carry__2_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0__203_carry__2
       (.CI(ALUresult0__203_carry__1_n_0),
        .CO({ALUresult0__203_carry__2_i_7,NLW_ALUresult0__203_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({\result_OBUF[0]_inst_i_4_1 ,\result_OBUF[0]_inst_i_4 [0]}),
        .O(NLW_ALUresult0__203_carry__2_O_UNCONNECTED[3:0]),
        .S(\result_OBUF[0]_inst_i_4_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0__93_carry
       (.CI(1'b0),
        .CO({ALUresult0__93_carry_n_0,NLW_ALUresult0__93_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI(\result_OBUF[0]_inst_i_2_0 ),
        .O(data1[3:0]),
        .S(\result_OBUF[0]_inst_i_2_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0__93_carry__0
       (.CI(ALUresult0__93_carry_n_0),
        .CO({ALUresult0__93_carry__0_n_0,NLW_ALUresult0__93_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\result_OBUF[4]_inst_i_5_2 ),
        .O(data1[7:4]),
        .S(\result_OBUF[4]_inst_i_5_3 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0__93_carry__1
       (.CI(ALUresult0__93_carry__0_n_0),
        .CO({ALUresult0__93_carry__1_n_0,NLW_ALUresult0__93_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\result_OBUF[8]_inst_i_6_2 ),
        .O(data1[11:8]),
        .S(\result_OBUF[8]_inst_i_6_3 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0__93_carry__2
       (.CI(ALUresult0__93_carry__1_n_0),
        .CO({ALUresult0__93_carry__2_n_0,NLW_ALUresult0__93_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\result_OBUF[12]_inst_i_5_2 ),
        .O(data1[15:12]),
        .S(\result_OBUF[12]_inst_i_5_3 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0__93_carry__3
       (.CI(ALUresult0__93_carry__2_n_0),
        .CO({ALUresult0__93_carry__3_n_0,NLW_ALUresult0__93_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\result_OBUF[16]_inst_i_6_2 ),
        .O(data1[19:16]),
        .S(\result_OBUF[16]_inst_i_6_3 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0__93_carry__4
       (.CI(ALUresult0__93_carry__3_n_0),
        .CO({ALUresult0__93_carry__4_n_0,NLW_ALUresult0__93_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\result_OBUF[20]_inst_i_6_2 ),
        .O(data1[23:20]),
        .S(\result_OBUF[20]_inst_i_6_3 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0__93_carry__5
       (.CI(ALUresult0__93_carry__4_n_0),
        .CO({ALUresult0__93_carry__5_n_0,NLW_ALUresult0__93_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\result_OBUF[24]_inst_i_5_2 ),
        .O(data1[27:24]),
        .S(\result_OBUF[24]_inst_i_5_3 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0__93_carry__6
       (.CI(ALUresult0__93_carry__5_n_0),
        .CO(NLW_ALUresult0__93_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\result_OBUF[28]_inst_i_5_2 }),
        .O(data1[31:28]),
        .S(\result_OBUF[28]_inst_i_5_3 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0_carry
       (.CI(1'b0),
        .CO({ALUresult0_carry_n_0,NLW_ALUresult0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(data0[3:0]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0_carry__0
       (.CI(ALUresult0_carry_n_0),
        .CO({ALUresult0_carry__0_n_0,NLW_ALUresult0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\result_OBUF[4]_inst_i_5_0 ),
        .O(data0[7:4]),
        .S(\result_OBUF[4]_inst_i_5_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0_carry__1
       (.CI(ALUresult0_carry__0_n_0),
        .CO({ALUresult0_carry__1_n_0,NLW_ALUresult0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\result_OBUF[8]_inst_i_6_0 ),
        .O(data0[11:8]),
        .S(\result_OBUF[8]_inst_i_6_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0_carry__2
       (.CI(ALUresult0_carry__1_n_0),
        .CO({ALUresult0_carry__2_n_0,NLW_ALUresult0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\result_OBUF[12]_inst_i_5_0 ),
        .O(data0[15:12]),
        .S(\result_OBUF[12]_inst_i_5_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0_carry__3
       (.CI(ALUresult0_carry__2_n_0),
        .CO({ALUresult0_carry__3_n_0,NLW_ALUresult0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\result_OBUF[16]_inst_i_6_0 ),
        .O(data0[19:16]),
        .S(\result_OBUF[16]_inst_i_6_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0_carry__4
       (.CI(ALUresult0_carry__3_n_0),
        .CO({ALUresult0_carry__4_n_0,NLW_ALUresult0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\result_OBUF[20]_inst_i_6_0 ),
        .O(data0[23:20]),
        .S(\result_OBUF[20]_inst_i_6_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0_carry__5
       (.CI(ALUresult0_carry__4_n_0),
        .CO({ALUresult0_carry__5_n_0,NLW_ALUresult0_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\result_OBUF[24]_inst_i_5_0 ),
        .O(data0[27:24]),
        .S(\result_OBUF[24]_inst_i_5_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0_carry__6
       (.CI(ALUresult0_carry__5_n_0),
        .CO(NLW_ALUresult0_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\result_OBUF[28]_inst_i_5_0 }),
        .O(data0[31:28]),
        .S(\result_OBUF[28]_inst_i_5_1 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    ALUresult0_carry_i_10
       (.I0(rst_n_IBUF),
        .I1(douta[2]),
        .I2(douta[3]),
        .I3(douta[4]),
        .I4(douta[0]),
        .I5(douta[1]),
        .O(rst_n));
  LUT5 #(
    .INIT(32'h00000001)) 
    ALUresult0_carry_i_9
       (.I0(douta[6]),
        .I1(douta[5]),
        .I2(douta[9]),
        .I3(douta[8]),
        .I4(douta[7]),
        .O(\bbstub_douta[23] ));
  LUT4 #(
    .INIT(16'hC808)) 
    \result_OBUF[0]_inst_i_2 
       (.I0(data1[0]),
        .I1(\result_OBUF[0]_inst_i_1 ),
        .I2(\result_OBUF[0]_inst_i_1_0 ),
        .I3(data0[0]),
        .O(ALUresult0_carry_0));
  LUT4 #(
    .INIT(16'h0C44)) 
    \result_OBUF[10]_inst_i_6 
       (.I0(data1[10]),
        .I1(\result_OBUF[0]_inst_i_1 ),
        .I2(data0[10]),
        .I3(\result_OBUF[0]_inst_i_1_0 ),
        .O(\result_OBUF[29]_inst_i_6_16 ));
  LUT4 #(
    .INIT(16'hC808)) 
    \result_OBUF[11]_inst_i_2 
       (.I0(data1[11]),
        .I1(\result_OBUF[0]_inst_i_1 ),
        .I2(\result_OBUF[0]_inst_i_1_0 ),
        .I3(data0[11]),
        .O(ALUresult0_carry__1_0));
  LUT4 #(
    .INIT(16'h88C0)) 
    \result_OBUF[12]_inst_i_5 
       (.I0(data0[12]),
        .I1(\result_OBUF[0]_inst_i_1 ),
        .I2(data1[12]),
        .I3(\result_OBUF[0]_inst_i_1_0 ),
        .O(\result_OBUF[29]_inst_i_6_15 ));
  LUT4 #(
    .INIT(16'hC808)) 
    \result_OBUF[13]_inst_i_2 
       (.I0(data1[13]),
        .I1(\result_OBUF[0]_inst_i_1 ),
        .I2(\result_OBUF[0]_inst_i_1_0 ),
        .I3(data0[13]),
        .O(ALUresult0_carry__2_0));
  LUT4 #(
    .INIT(16'h0C44)) 
    \result_OBUF[14]_inst_i_5 
       (.I0(data1[14]),
        .I1(\result_OBUF[0]_inst_i_1 ),
        .I2(data0[14]),
        .I3(\result_OBUF[0]_inst_i_1_0 ),
        .O(\result_OBUF[29]_inst_i_6_14 ));
  LUT4 #(
    .INIT(16'h88C0)) 
    \result_OBUF[15]_inst_i_6 
       (.I0(data0[15]),
        .I1(\result_OBUF[0]_inst_i_1 ),
        .I2(data1[15]),
        .I3(\result_OBUF[0]_inst_i_1_0 ),
        .O(\result_OBUF[29]_inst_i_6_13 ));
  LUT4 #(
    .INIT(16'h88C0)) 
    \result_OBUF[16]_inst_i_6 
       (.I0(data0[16]),
        .I1(\result_OBUF[0]_inst_i_1 ),
        .I2(data1[16]),
        .I3(\result_OBUF[0]_inst_i_1_0 ),
        .O(\result_OBUF[29]_inst_i_6_12 ));
  LUT4 #(
    .INIT(16'h88C0)) 
    \result_OBUF[17]_inst_i_6 
       (.I0(data0[17]),
        .I1(\result_OBUF[0]_inst_i_1 ),
        .I2(data1[17]),
        .I3(\result_OBUF[0]_inst_i_1_0 ),
        .O(\result_OBUF[29]_inst_i_6_11 ));
  LUT4 #(
    .INIT(16'h88C0)) 
    \result_OBUF[18]_inst_i_5 
       (.I0(data0[18]),
        .I1(\result_OBUF[0]_inst_i_1 ),
        .I2(data1[18]),
        .I3(\result_OBUF[0]_inst_i_1_0 ),
        .O(\result_OBUF[29]_inst_i_6_10 ));
  LUT4 #(
    .INIT(16'h88C0)) 
    \result_OBUF[19]_inst_i_6 
       (.I0(data0[19]),
        .I1(\result_OBUF[0]_inst_i_1 ),
        .I2(data1[19]),
        .I3(\result_OBUF[0]_inst_i_1_0 ),
        .O(\result_OBUF[29]_inst_i_6_9 ));
  LUT4 #(
    .INIT(16'h88C0)) 
    \result_OBUF[1]_inst_i_5 
       (.I0(data0[1]),
        .I1(\result_OBUF[0]_inst_i_1 ),
        .I2(data1[1]),
        .I3(\result_OBUF[0]_inst_i_1_0 ),
        .O(\result_OBUF[29]_inst_i_6_25 ));
  LUT4 #(
    .INIT(16'h88C0)) 
    \result_OBUF[20]_inst_i_6 
       (.I0(data0[20]),
        .I1(\result_OBUF[0]_inst_i_1 ),
        .I2(data1[20]),
        .I3(\result_OBUF[0]_inst_i_1_0 ),
        .O(\result_OBUF[29]_inst_i_6_8 ));
  LUT4 #(
    .INIT(16'h88C0)) 
    \result_OBUF[21]_inst_i_6 
       (.I0(data0[21]),
        .I1(\result_OBUF[0]_inst_i_1 ),
        .I2(data1[21]),
        .I3(\result_OBUF[0]_inst_i_1_0 ),
        .O(\result_OBUF[29]_inst_i_6_7 ));
  LUT4 #(
    .INIT(16'h88C0)) 
    \result_OBUF[22]_inst_i_6 
       (.I0(data0[22]),
        .I1(\result_OBUF[0]_inst_i_1 ),
        .I2(data1[22]),
        .I3(\result_OBUF[0]_inst_i_1_0 ),
        .O(\result_OBUF[29]_inst_i_6_6 ));
  LUT4 #(
    .INIT(16'h88C0)) 
    \result_OBUF[23]_inst_i_5 
       (.I0(data0[23]),
        .I1(\result_OBUF[0]_inst_i_1 ),
        .I2(data1[23]),
        .I3(\result_OBUF[0]_inst_i_1_0 ),
        .O(\result_OBUF[29]_inst_i_6_5 ));
  LUT4 #(
    .INIT(16'h88C0)) 
    \result_OBUF[24]_inst_i_5 
       (.I0(data0[24]),
        .I1(\result_OBUF[0]_inst_i_1 ),
        .I2(data1[24]),
        .I3(\result_OBUF[0]_inst_i_1_0 ),
        .O(\result_OBUF[29]_inst_i_6_4 ));
  LUT4 #(
    .INIT(16'h88C0)) 
    \result_OBUF[25]_inst_i_5 
       (.I0(data0[25]),
        .I1(\result_OBUF[0]_inst_i_1 ),
        .I2(data1[25]),
        .I3(\result_OBUF[0]_inst_i_1_0 ),
        .O(\result_OBUF[29]_inst_i_6_3 ));
  LUT4 #(
    .INIT(16'h88C0)) 
    \result_OBUF[26]_inst_i_5 
       (.I0(data0[26]),
        .I1(\result_OBUF[0]_inst_i_1 ),
        .I2(data1[26]),
        .I3(\result_OBUF[0]_inst_i_1_0 ),
        .O(\result_OBUF[29]_inst_i_6_2 ));
  LUT4 #(
    .INIT(16'h88C0)) 
    \result_OBUF[27]_inst_i_5 
       (.I0(data0[27]),
        .I1(\result_OBUF[0]_inst_i_1 ),
        .I2(data1[27]),
        .I3(\result_OBUF[0]_inst_i_1_0 ),
        .O(\result_OBUF[29]_inst_i_6_1 ));
  LUT4 #(
    .INIT(16'h88C0)) 
    \result_OBUF[28]_inst_i_5 
       (.I0(data0[28]),
        .I1(\result_OBUF[0]_inst_i_1 ),
        .I2(data1[28]),
        .I3(\result_OBUF[0]_inst_i_1_0 ),
        .O(\result_OBUF[29]_inst_i_6_0 ));
  LUT4 #(
    .INIT(16'h88C0)) 
    \result_OBUF[29]_inst_i_7 
       (.I0(data0[29]),
        .I1(\result_OBUF[0]_inst_i_1 ),
        .I2(data1[29]),
        .I3(\result_OBUF[0]_inst_i_1_0 ),
        .O(\result_OBUF[29]_inst_i_6 ));
  LUT4 #(
    .INIT(16'h0C44)) 
    \result_OBUF[2]_inst_i_5 
       (.I0(data1[2]),
        .I1(\result_OBUF[0]_inst_i_1 ),
        .I2(data0[2]),
        .I3(\result_OBUF[0]_inst_i_1_0 ),
        .O(\result_OBUF[29]_inst_i_6_24 ));
  LUT4 #(
    .INIT(16'hC808)) 
    \result_OBUF[30]_inst_i_2 
       (.I0(data1[30]),
        .I1(\result_OBUF[0]_inst_i_1 ),
        .I2(\result_OBUF[0]_inst_i_1_0 ),
        .I3(data0[30]),
        .O(ALUresult0_carry__6_1));
  LUT4 #(
    .INIT(16'hC808)) 
    \result_OBUF[31]_inst_i_2 
       (.I0(data1[31]),
        .I1(\result_OBUF[0]_inst_i_1 ),
        .I2(\result_OBUF[0]_inst_i_1_0 ),
        .I3(data0[31]),
        .O(ALUresult0_carry__6_0));
  LUT4 #(
    .INIT(16'h0C44)) 
    \result_OBUF[3]_inst_i_6 
       (.I0(data1[3]),
        .I1(\result_OBUF[0]_inst_i_1 ),
        .I2(data0[3]),
        .I3(\result_OBUF[0]_inst_i_1_0 ),
        .O(\result_OBUF[29]_inst_i_6_23 ));
  LUT4 #(
    .INIT(16'h88C0)) 
    \result_OBUF[4]_inst_i_5 
       (.I0(data0[4]),
        .I1(\result_OBUF[0]_inst_i_1 ),
        .I2(data1[4]),
        .I3(\result_OBUF[0]_inst_i_1_0 ),
        .O(\result_OBUF[29]_inst_i_6_22 ));
  LUT4 #(
    .INIT(16'h88C0)) 
    \result_OBUF[5]_inst_i_5 
       (.I0(data0[5]),
        .I1(\result_OBUF[0]_inst_i_1 ),
        .I2(data1[5]),
        .I3(\result_OBUF[0]_inst_i_1_0 ),
        .O(\result_OBUF[29]_inst_i_6_21 ));
  LUT4 #(
    .INIT(16'h0C44)) 
    \result_OBUF[6]_inst_i_5 
       (.I0(data1[6]),
        .I1(\result_OBUF[0]_inst_i_1 ),
        .I2(data0[6]),
        .I3(\result_OBUF[0]_inst_i_1_0 ),
        .O(\result_OBUF[29]_inst_i_6_20 ));
  LUT4 #(
    .INIT(16'h88C0)) 
    \result_OBUF[7]_inst_i_5 
       (.I0(data0[7]),
        .I1(\result_OBUF[0]_inst_i_1 ),
        .I2(data1[7]),
        .I3(\result_OBUF[0]_inst_i_1_0 ),
        .O(\result_OBUF[29]_inst_i_6_19 ));
  LUT4 #(
    .INIT(16'h88C0)) 
    \result_OBUF[8]_inst_i_6 
       (.I0(data0[8]),
        .I1(\result_OBUF[0]_inst_i_1 ),
        .I2(data1[8]),
        .I3(\result_OBUF[0]_inst_i_1_0 ),
        .O(\result_OBUF[29]_inst_i_6_18 ));
  LUT4 #(
    .INIT(16'h0C44)) 
    \result_OBUF[9]_inst_i_7 
       (.I0(data1[9]),
        .I1(\result_OBUF[0]_inst_i_1 ),
        .I2(data0[9]),
        .I3(\result_OBUF[0]_inst_i_1_0 ),
        .O(\result_OBUF[29]_inst_i_6_17 ));
endmodule

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.1" *) 
module blk_mem_gen_0
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [13:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [13:0]addra;
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
  wire [13:0]NLW_U0_addrb_UNCONNECTED;
  wire [31:0]NLW_U0_dina_UNCONNECTED;
  wire [31:0]NLW_U0_dinb_UNCONNECTED;
  wire [10:6]NLW_U0_douta_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [13:0]NLW_U0_rdaddrecc_UNCONNECTED;
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
  wire [13:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_wea_UNCONNECTED;
  wire [0:0]NLW_U0_web_UNCONNECTED;

  (* C_ADDRA_WIDTH = "14" *) 
  (* C_ADDRB_WIDTH = "14" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "14" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     12.7204 mW" *) 
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
  (* C_READ_DEPTH_A = "16384" *) 
  (* C_READ_DEPTH_B = "16384" *) 
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
  (* C_WRITE_DEPTH_A = "16384" *) 
  (* C_WRITE_DEPTH_B = "16384" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  blk_mem_gen_0__blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(NLW_U0_addrb_UNCONNECTED[13:0]),
        .clka(clka),
        .clkb(NLW_U0_clkb_UNCONNECTED),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(NLW_U0_deepsleep_UNCONNECTED),
        .dina(NLW_U0_dina_UNCONNECTED[31:0]),
        .dinb(NLW_U0_dinb_UNCONNECTED[31:0]),
        .douta({douta[31:11],NLW_U0_douta_UNCONNECTED[10:6],douta[5:0]}),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(NLW_U0_eccpipece_UNCONNECTED),
        .ena(NLW_U0_ena_UNCONNECTED),
        .enb(NLW_U0_enb_UNCONNECTED),
        .injectdbiterr(NLW_U0_injectdbiterr_UNCONNECTED),
        .injectsbiterr(NLW_U0_injectsbiterr_UNCONNECTED),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[13:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[13:0]),
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

(* ECO_CHECKSUM = "5601776d" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
module datapath_1
   (clk,
    rst_n,
    result);
  input clk;
  input rst_n;
  output [31:0]result;

  wire [19:19]A;
  wire [1:0]B;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire data6;
  wire data7;
  wire [31:0]instruction;
  wire [1:0]p_0_in;
  wire [15:2]pcOld;
  wire [31:0]result;
  wire [31:0]result_OBUF;
  wire rst_n;
  wire rst_n_IBUF;
  wire u_ALU_1_n_10;
  wire u_ALU_1_n_11;
  wire u_ALU_1_n_12;
  wire u_ALU_1_n_13;
  wire u_ALU_1_n_14;
  wire u_ALU_1_n_15;
  wire u_ALU_1_n_16;
  wire u_ALU_1_n_17;
  wire u_ALU_1_n_18;
  wire u_ALU_1_n_19;
  wire u_ALU_1_n_2;
  wire u_ALU_1_n_20;
  wire u_ALU_1_n_21;
  wire u_ALU_1_n_22;
  wire u_ALU_1_n_23;
  wire u_ALU_1_n_24;
  wire u_ALU_1_n_25;
  wire u_ALU_1_n_26;
  wire u_ALU_1_n_27;
  wire u_ALU_1_n_28;
  wire u_ALU_1_n_29;
  wire u_ALU_1_n_3;
  wire u_ALU_1_n_30;
  wire u_ALU_1_n_31;
  wire u_ALU_1_n_32;
  wire u_ALU_1_n_33;
  wire u_ALU_1_n_34;
  wire u_ALU_1_n_35;
  wire u_ALU_1_n_4;
  wire u_ALU_1_n_5;
  wire u_ALU_1_n_6;
  wire u_ALU_1_n_7;
  wire u_ALU_1_n_8;
  wire u_ALU_1_n_9;
  wire u_reg_files_1_n_0;
  wire u_reg_files_1_n_1;
  wire u_reg_files_1_n_100;
  wire u_reg_files_1_n_101;
  wire u_reg_files_1_n_102;
  wire u_reg_files_1_n_103;
  wire u_reg_files_1_n_104;
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
  wire u_reg_files_1_n_12;
  wire u_reg_files_1_n_120;
  wire u_reg_files_1_n_121;
  wire u_reg_files_1_n_122;
  wire u_reg_files_1_n_123;
  wire u_reg_files_1_n_124;
  wire u_reg_files_1_n_125;
  wire u_reg_files_1_n_126;
  wire u_reg_files_1_n_127;
  wire u_reg_files_1_n_128;
  wire u_reg_files_1_n_129;
  wire u_reg_files_1_n_13;
  wire u_reg_files_1_n_130;
  wire u_reg_files_1_n_131;
  wire u_reg_files_1_n_132;
  wire u_reg_files_1_n_133;
  wire u_reg_files_1_n_134;
  wire u_reg_files_1_n_135;
  wire u_reg_files_1_n_136;
  wire u_reg_files_1_n_137;
  wire u_reg_files_1_n_138;
  wire u_reg_files_1_n_139;
  wire u_reg_files_1_n_14;
  wire u_reg_files_1_n_140;
  wire u_reg_files_1_n_141;
  wire u_reg_files_1_n_142;
  wire u_reg_files_1_n_143;
  wire u_reg_files_1_n_144;
  wire u_reg_files_1_n_145;
  wire u_reg_files_1_n_146;
  wire u_reg_files_1_n_147;
  wire u_reg_files_1_n_148;
  wire u_reg_files_1_n_149;
  wire u_reg_files_1_n_15;
  wire u_reg_files_1_n_150;
  wire u_reg_files_1_n_151;
  wire u_reg_files_1_n_152;
  wire u_reg_files_1_n_153;
  wire u_reg_files_1_n_154;
  wire u_reg_files_1_n_155;
  wire u_reg_files_1_n_156;
  wire u_reg_files_1_n_157;
  wire u_reg_files_1_n_158;
  wire u_reg_files_1_n_159;
  wire u_reg_files_1_n_16;
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
  wire u_reg_files_1_n_17;
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
  wire u_reg_files_1_n_18;
  wire u_reg_files_1_n_180;
  wire u_reg_files_1_n_181;
  wire u_reg_files_1_n_182;
  wire u_reg_files_1_n_183;
  wire u_reg_files_1_n_184;
  wire u_reg_files_1_n_185;
  wire u_reg_files_1_n_186;
  wire u_reg_files_1_n_187;
  wire u_reg_files_1_n_188;
  wire u_reg_files_1_n_189;
  wire u_reg_files_1_n_19;
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
  wire u_reg_files_1_n_2;
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
  wire u_reg_files_1_n_21;
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
  wire u_reg_files_1_n_22;
  wire u_reg_files_1_n_23;
  wire u_reg_files_1_n_24;
  wire u_reg_files_1_n_25;
  wire u_reg_files_1_n_26;
  wire u_reg_files_1_n_27;
  wire u_reg_files_1_n_28;
  wire u_reg_files_1_n_29;
  wire u_reg_files_1_n_3;
  wire u_reg_files_1_n_30;
  wire u_reg_files_1_n_31;
  wire u_reg_files_1_n_32;
  wire u_reg_files_1_n_33;
  wire u_reg_files_1_n_34;
  wire u_reg_files_1_n_4;
  wire u_reg_files_1_n_5;
  wire u_reg_files_1_n_67;
  wire u_reg_files_1_n_68;
  wire u_reg_files_1_n_69;
  wire u_reg_files_1_n_70;
  wire u_reg_files_1_n_71;
  wire u_reg_files_1_n_72;
  wire u_reg_files_1_n_73;
  wire u_reg_files_1_n_74;
  wire u_reg_files_1_n_75;
  wire u_reg_files_1_n_76;
  wire u_reg_files_1_n_77;
  wire u_reg_files_1_n_78;
  wire u_reg_files_1_n_79;
  wire u_reg_files_1_n_8;
  wire u_reg_files_1_n_80;
  wire u_reg_files_1_n_81;
  wire u_reg_files_1_n_82;
  wire u_reg_files_1_n_83;
  wire u_reg_files_1_n_84;
  wire u_reg_files_1_n_85;
  wire u_reg_files_1_n_86;
  wire u_reg_files_1_n_87;
  wire u_reg_files_1_n_88;
  wire u_reg_files_1_n_89;
  wire u_reg_files_1_n_9;
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
  wire [10:6]NLW_u_blk_mem_gen_0_douta_UNCONNECTED;

initial begin
 $sdf_annotate("tb_datapath_1_time_impl.sdf",,,,"tool_control");
end
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
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
       (.ALUresult0__187_carry__0_0({u_reg_files_1_n_0,u_reg_files_1_n_1,u_reg_files_1_n_2,u_reg_files_1_n_3}),
        .ALUresult0__187_carry__0_1({u_reg_files_1_n_140,u_reg_files_1_n_141,u_reg_files_1_n_142,u_reg_files_1_n_143}),
        .ALUresult0__187_carry__1_0({u_reg_files_1_n_148,u_reg_files_1_n_149,u_reg_files_1_n_150,u_reg_files_1_n_151}),
        .ALUresult0__187_carry__1_1({u_reg_files_1_n_144,u_reg_files_1_n_145,u_reg_files_1_n_146,u_reg_files_1_n_147}),
        .ALUresult0__187_carry__2_0({u_reg_files_1_n_156,u_reg_files_1_n_157,u_reg_files_1_n_158,u_reg_files_1_n_159}),
        .ALUresult0__187_carry__2_1({u_reg_files_1_n_152,u_reg_files_1_n_153,u_reg_files_1_n_154,u_reg_files_1_n_155}),
        .ALUresult0__203_carry__0_0(u_reg_files_1_n_81),
        .ALUresult0__203_carry__0_1({u_reg_files_1_n_12,u_reg_files_1_n_13,u_reg_files_1_n_14,u_reg_files_1_n_15}),
        .ALUresult0__203_carry__1_0({u_reg_files_1_n_24,u_reg_files_1_n_25,u_reg_files_1_n_26,u_reg_files_1_n_27}),
        .ALUresult0__203_carry__1_1({u_reg_files_1_n_16,u_reg_files_1_n_17,u_reg_files_1_n_18,u_reg_files_1_n_19}),
        .ALUresult0__203_carry__2_0({u_reg_files_1_n_77,u_reg_files_1_n_78,u_reg_files_1_n_79,u_reg_files_1_n_80}),
        .ALUresult0__203_carry__2_1({u_reg_files_1_n_73,u_reg_files_1_n_74,u_reg_files_1_n_75,u_reg_files_1_n_76}),
        .ALUresult0__203_carry__2_i_7(data7),
        .ALUresult0_carry_0(u_ALU_1_n_35),
        .ALUresult0_carry__1_0(u_ALU_1_n_24),
        .ALUresult0_carry__2_0(u_ALU_1_n_22),
        .ALUresult0_carry__6_0(u_ALU_1_n_4),
        .ALUresult0_carry__6_1(u_ALU_1_n_5),
        .CO(data6),
        .DI({u_reg_files_1_n_8,u_reg_files_1_n_9,B}),
        .S({u_reg_files_1_n_164,u_reg_files_1_n_165,u_reg_files_1_n_166,u_reg_files_1_n_167}),
        .\bbstub_douta[23] (u_ALU_1_n_3),
        .douta(instruction[25:16]),
        .\result_OBUF[0]_inst_i_1 (u_reg_files_1_n_67),
        .\result_OBUF[0]_inst_i_1_0 (u_reg_files_1_n_68),
        .\result_OBUF[0]_inst_i_2_0 ({u_reg_files_1_n_4,u_reg_files_1_n_5,p_0_in}),
        .\result_OBUF[0]_inst_i_2_1 ({u_reg_files_1_n_172,u_reg_files_1_n_173,u_reg_files_1_n_174,u_reg_files_1_n_175}),
        .\result_OBUF[0]_inst_i_4 ({u_reg_files_1_n_69,u_reg_files_1_n_70,u_reg_files_1_n_71,u_reg_files_1_n_72}),
        .\result_OBUF[0]_inst_i_4_0 ({u_reg_files_1_n_160,u_reg_files_1_n_161,u_reg_files_1_n_162,u_reg_files_1_n_163}),
        .\result_OBUF[0]_inst_i_4_1 ({u_reg_files_1_n_32,u_reg_files_1_n_33,u_reg_files_1_n_34}),
        .\result_OBUF[0]_inst_i_4_2 ({u_reg_files_1_n_28,u_reg_files_1_n_29,u_reg_files_1_n_30,u_reg_files_1_n_31}),
        .\result_OBUF[12]_inst_i_5_0 ({u_reg_files_1_n_98,u_reg_files_1_n_99,u_reg_files_1_n_100,u_reg_files_1_n_101}),
        .\result_OBUF[12]_inst_i_5_1 ({u_reg_files_1_n_212,u_reg_files_1_n_213,u_reg_files_1_n_214,u_reg_files_1_n_215}),
        .\result_OBUF[12]_inst_i_5_2 ({u_reg_files_1_n_125,u_reg_files_1_n_126,u_reg_files_1_n_127,u_reg_files_1_n_128}),
        .\result_OBUF[12]_inst_i_5_3 ({u_reg_files_1_n_216,u_reg_files_1_n_217,u_reg_files_1_n_218,u_reg_files_1_n_219}),
        .\result_OBUF[16]_inst_i_6_0 ({u_reg_files_1_n_102,u_reg_files_1_n_103,u_reg_files_1_n_104,u_reg_files_1_n_105}),
        .\result_OBUF[16]_inst_i_6_1 ({u_reg_files_1_n_204,u_reg_files_1_n_205,u_reg_files_1_n_206,u_reg_files_1_n_207}),
        .\result_OBUF[16]_inst_i_6_2 ({A,u_reg_files_1_n_21,u_reg_files_1_n_22,u_reg_files_1_n_23}),
        .\result_OBUF[16]_inst_i_6_3 ({u_reg_files_1_n_208,u_reg_files_1_n_209,u_reg_files_1_n_210,u_reg_files_1_n_211}),
        .\result_OBUF[20]_inst_i_6_0 ({u_reg_files_1_n_106,u_reg_files_1_n_107,u_reg_files_1_n_108,u_reg_files_1_n_109}),
        .\result_OBUF[20]_inst_i_6_1 ({u_reg_files_1_n_196,u_reg_files_1_n_197,u_reg_files_1_n_198,u_reg_files_1_n_199}),
        .\result_OBUF[20]_inst_i_6_2 ({u_reg_files_1_n_129,u_reg_files_1_n_130,u_reg_files_1_n_131,u_reg_files_1_n_132}),
        .\result_OBUF[20]_inst_i_6_3 ({u_reg_files_1_n_200,u_reg_files_1_n_201,u_reg_files_1_n_202,u_reg_files_1_n_203}),
        .\result_OBUF[24]_inst_i_5_0 ({u_reg_files_1_n_110,u_reg_files_1_n_111,u_reg_files_1_n_112,u_reg_files_1_n_113}),
        .\result_OBUF[24]_inst_i_5_1 ({u_reg_files_1_n_188,u_reg_files_1_n_189,u_reg_files_1_n_190,u_reg_files_1_n_191}),
        .\result_OBUF[24]_inst_i_5_2 ({u_reg_files_1_n_133,u_reg_files_1_n_134,u_reg_files_1_n_135,u_reg_files_1_n_136}),
        .\result_OBUF[24]_inst_i_5_3 ({u_reg_files_1_n_192,u_reg_files_1_n_193,u_reg_files_1_n_194,u_reg_files_1_n_195}),
        .\result_OBUF[28]_inst_i_5_0 ({u_reg_files_1_n_114,u_reg_files_1_n_115,u_reg_files_1_n_116}),
        .\result_OBUF[28]_inst_i_5_1 ({u_reg_files_1_n_82,u_reg_files_1_n_83,u_reg_files_1_n_84,u_reg_files_1_n_85}),
        .\result_OBUF[28]_inst_i_5_2 ({u_reg_files_1_n_137,u_reg_files_1_n_138,u_reg_files_1_n_139}),
        .\result_OBUF[28]_inst_i_5_3 ({u_reg_files_1_n_86,u_reg_files_1_n_87,u_reg_files_1_n_88,u_reg_files_1_n_89}),
        .\result_OBUF[29]_inst_i_6 (u_ALU_1_n_6),
        .\result_OBUF[29]_inst_i_6_0 (u_ALU_1_n_7),
        .\result_OBUF[29]_inst_i_6_1 (u_ALU_1_n_8),
        .\result_OBUF[29]_inst_i_6_10 (u_ALU_1_n_17),
        .\result_OBUF[29]_inst_i_6_11 (u_ALU_1_n_18),
        .\result_OBUF[29]_inst_i_6_12 (u_ALU_1_n_19),
        .\result_OBUF[29]_inst_i_6_13 (u_ALU_1_n_20),
        .\result_OBUF[29]_inst_i_6_14 (u_ALU_1_n_21),
        .\result_OBUF[29]_inst_i_6_15 (u_ALU_1_n_23),
        .\result_OBUF[29]_inst_i_6_16 (u_ALU_1_n_25),
        .\result_OBUF[29]_inst_i_6_17 (u_ALU_1_n_26),
        .\result_OBUF[29]_inst_i_6_18 (u_ALU_1_n_27),
        .\result_OBUF[29]_inst_i_6_19 (u_ALU_1_n_28),
        .\result_OBUF[29]_inst_i_6_2 (u_ALU_1_n_9),
        .\result_OBUF[29]_inst_i_6_20 (u_ALU_1_n_29),
        .\result_OBUF[29]_inst_i_6_21 (u_ALU_1_n_30),
        .\result_OBUF[29]_inst_i_6_22 (u_ALU_1_n_31),
        .\result_OBUF[29]_inst_i_6_23 (u_ALU_1_n_32),
        .\result_OBUF[29]_inst_i_6_24 (u_ALU_1_n_33),
        .\result_OBUF[29]_inst_i_6_25 (u_ALU_1_n_34),
        .\result_OBUF[29]_inst_i_6_3 (u_ALU_1_n_10),
        .\result_OBUF[29]_inst_i_6_4 (u_ALU_1_n_11),
        .\result_OBUF[29]_inst_i_6_5 (u_ALU_1_n_12),
        .\result_OBUF[29]_inst_i_6_6 (u_ALU_1_n_13),
        .\result_OBUF[29]_inst_i_6_7 (u_ALU_1_n_14),
        .\result_OBUF[29]_inst_i_6_8 (u_ALU_1_n_15),
        .\result_OBUF[29]_inst_i_6_9 (u_ALU_1_n_16),
        .\result_OBUF[4]_inst_i_5_0 ({u_reg_files_1_n_90,u_reg_files_1_n_91,u_reg_files_1_n_92,u_reg_files_1_n_93}),
        .\result_OBUF[4]_inst_i_5_1 ({u_reg_files_1_n_180,u_reg_files_1_n_181,u_reg_files_1_n_182,u_reg_files_1_n_183}),
        .\result_OBUF[4]_inst_i_5_2 ({u_reg_files_1_n_117,u_reg_files_1_n_118,u_reg_files_1_n_119,u_reg_files_1_n_120}),
        .\result_OBUF[4]_inst_i_5_3 ({u_reg_files_1_n_184,u_reg_files_1_n_185,u_reg_files_1_n_186,u_reg_files_1_n_187}),
        .\result_OBUF[8]_inst_i_6_0 ({u_reg_files_1_n_94,u_reg_files_1_n_95,u_reg_files_1_n_96,u_reg_files_1_n_97}),
        .\result_OBUF[8]_inst_i_6_1 ({u_reg_files_1_n_168,u_reg_files_1_n_169,u_reg_files_1_n_170,u_reg_files_1_n_171}),
        .\result_OBUF[8]_inst_i_6_2 ({u_reg_files_1_n_121,u_reg_files_1_n_122,u_reg_files_1_n_123,u_reg_files_1_n_124}),
        .\result_OBUF[8]_inst_i_6_3 ({u_reg_files_1_n_176,u_reg_files_1_n_177,u_reg_files_1_n_178,u_reg_files_1_n_179}),
        .rst_n(u_ALU_1_n_2),
        .rst_n_IBUF(rst_n_IBUF));
  (* IMPORTED_FROM = "d:/myCollege/ComputerSystem/NSCSCC/NSCSCC/NSCSCC/PersonalProgress/HaitianJiang/SingleMiniSys/mycpu_design/mycpu_design.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.1" *) 
  blk_mem_gen_0 u_blk_mem_gen_0
       (.addra(pcOld),
        .clka(clk_IBUF_BUFG),
        .douta(instruction));
  pc_1 u_pc_1
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out(pcOld),
        .rst_n_IBUF(rst_n_IBUF));
  reg_files_1 u_reg_files_1
       (.ALUresult0__187_carry(u_ALU_1_n_3),
        .ALUresult0__187_carry__2(u_ALU_1_n_2),
        .ALUresult0__187_carry__2_i_9_0({u_reg_files_1_n_28,u_reg_files_1_n_29,u_reg_files_1_n_30,u_reg_files_1_n_31}),
        .ALUresult0__187_carry__2_i_9_1({u_reg_files_1_n_160,u_reg_files_1_n_161,u_reg_files_1_n_162,u_reg_files_1_n_163}),
        .CO(data6),
        .DI({u_reg_files_1_n_8,u_reg_files_1_n_9,B}),
        .S({u_reg_files_1_n_164,u_reg_files_1_n_165,u_reg_files_1_n_166,u_reg_files_1_n_167}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .douta({instruction[31:11],instruction[5:0]}),
        .register_reg_r2_0_31_12_17_0({u_reg_files_1_n_16,u_reg_files_1_n_17,u_reg_files_1_n_18,u_reg_files_1_n_19}),
        .register_reg_r2_0_31_12_17_1({u_reg_files_1_n_24,u_reg_files_1_n_25,u_reg_files_1_n_26,u_reg_files_1_n_27}),
        .register_reg_r2_0_31_12_17_2({u_reg_files_1_n_144,u_reg_files_1_n_145,u_reg_files_1_n_146,u_reg_files_1_n_147}),
        .register_reg_r2_0_31_12_17_3({u_reg_files_1_n_148,u_reg_files_1_n_149,u_reg_files_1_n_150,u_reg_files_1_n_151}),
        .register_reg_r2_0_31_18_23_0({u_reg_files_1_n_73,u_reg_files_1_n_74,u_reg_files_1_n_75,u_reg_files_1_n_76}),
        .register_reg_r2_0_31_18_23_1({u_reg_files_1_n_77,u_reg_files_1_n_78,u_reg_files_1_n_79,u_reg_files_1_n_80}),
        .register_reg_r2_0_31_18_23_2({u_reg_files_1_n_152,u_reg_files_1_n_153,u_reg_files_1_n_154,u_reg_files_1_n_155}),
        .register_reg_r2_0_31_18_23_3({u_reg_files_1_n_156,u_reg_files_1_n_157,u_reg_files_1_n_158,u_reg_files_1_n_159}),
        .register_reg_r2_0_31_30_31_0({u_reg_files_1_n_32,u_reg_files_1_n_33,u_reg_files_1_n_34}),
        .register_reg_r2_0_31_30_31_1({u_reg_files_1_n_69,u_reg_files_1_n_70,u_reg_files_1_n_71,u_reg_files_1_n_72}),
        .register_reg_r2_0_31_6_11_0({u_reg_files_1_n_0,u_reg_files_1_n_1,u_reg_files_1_n_2,u_reg_files_1_n_3}),
        .register_reg_r2_0_31_6_11_1({u_reg_files_1_n_12,u_reg_files_1_n_13,u_reg_files_1_n_14,u_reg_files_1_n_15}),
        .register_reg_r2_0_31_6_11_2(u_reg_files_1_n_81),
        .register_reg_r2_0_31_6_11_3({u_reg_files_1_n_140,u_reg_files_1_n_141,u_reg_files_1_n_142,u_reg_files_1_n_143}),
        .\result[0] (u_ALU_1_n_35),
        .\result[10] (u_ALU_1_n_25),
        .\result[11] (u_ALU_1_n_24),
        .\result[12] (u_ALU_1_n_23),
        .\result[13] (u_ALU_1_n_22),
        .\result[14] (u_ALU_1_n_21),
        .\result[15] (u_ALU_1_n_20),
        .\result[16] (u_ALU_1_n_19),
        .\result[17] (u_ALU_1_n_18),
        .\result[18] (u_ALU_1_n_17),
        .\result[19] (u_ALU_1_n_16),
        .\result[1] (u_ALU_1_n_34),
        .\result[20] (u_ALU_1_n_15),
        .\result[21] (u_ALU_1_n_14),
        .\result[22] (u_ALU_1_n_13),
        .\result[23] (u_ALU_1_n_12),
        .\result[24] (u_ALU_1_n_11),
        .\result[25] (u_ALU_1_n_10),
        .\result[26] (u_ALU_1_n_9),
        .\result[27] (u_ALU_1_n_8),
        .\result[28] (u_ALU_1_n_7),
        .\result[29] (u_ALU_1_n_6),
        .\result[2] (u_ALU_1_n_33),
        .\result[30] (u_ALU_1_n_5),
        .\result[31] (u_ALU_1_n_4),
        .\result[3] (u_ALU_1_n_32),
        .\result[4] (u_ALU_1_n_31),
        .\result[5] (u_ALU_1_n_30),
        .\result[6] (u_ALU_1_n_29),
        .\result[7] (u_ALU_1_n_28),
        .\result[8] (u_ALU_1_n_27),
        .\result[9] (u_ALU_1_n_26),
        .\result_OBUF[0]_inst_i_1_0 (data7),
        .\result_OBUF[29]_inst_i_14_0 (u_reg_files_1_n_68),
        .\result_OBUF[29]_inst_i_8_0 (u_reg_files_1_n_67),
        .rst_n({u_reg_files_1_n_4,u_reg_files_1_n_5,p_0_in}),
        .rst_n_0({A,u_reg_files_1_n_21,u_reg_files_1_n_22,u_reg_files_1_n_23}),
        .rst_n_1({u_reg_files_1_n_82,u_reg_files_1_n_83,u_reg_files_1_n_84,u_reg_files_1_n_85}),
        .rst_n_10({u_reg_files_1_n_117,u_reg_files_1_n_118,u_reg_files_1_n_119,u_reg_files_1_n_120}),
        .rst_n_11({u_reg_files_1_n_121,u_reg_files_1_n_122,u_reg_files_1_n_123,u_reg_files_1_n_124}),
        .rst_n_12({u_reg_files_1_n_125,u_reg_files_1_n_126,u_reg_files_1_n_127,u_reg_files_1_n_128}),
        .rst_n_13({u_reg_files_1_n_129,u_reg_files_1_n_130,u_reg_files_1_n_131,u_reg_files_1_n_132}),
        .rst_n_14({u_reg_files_1_n_133,u_reg_files_1_n_134,u_reg_files_1_n_135,u_reg_files_1_n_136}),
        .rst_n_15({u_reg_files_1_n_137,u_reg_files_1_n_138,u_reg_files_1_n_139}),
        .rst_n_16({u_reg_files_1_n_168,u_reg_files_1_n_169,u_reg_files_1_n_170,u_reg_files_1_n_171}),
        .rst_n_17({u_reg_files_1_n_172,u_reg_files_1_n_173,u_reg_files_1_n_174,u_reg_files_1_n_175}),
        .rst_n_18({u_reg_files_1_n_176,u_reg_files_1_n_177,u_reg_files_1_n_178,u_reg_files_1_n_179}),
        .rst_n_19({u_reg_files_1_n_180,u_reg_files_1_n_181,u_reg_files_1_n_182,u_reg_files_1_n_183}),
        .rst_n_2({u_reg_files_1_n_86,u_reg_files_1_n_87,u_reg_files_1_n_88,u_reg_files_1_n_89}),
        .rst_n_20({u_reg_files_1_n_184,u_reg_files_1_n_185,u_reg_files_1_n_186,u_reg_files_1_n_187}),
        .rst_n_21({u_reg_files_1_n_188,u_reg_files_1_n_189,u_reg_files_1_n_190,u_reg_files_1_n_191}),
        .rst_n_22({u_reg_files_1_n_192,u_reg_files_1_n_193,u_reg_files_1_n_194,u_reg_files_1_n_195}),
        .rst_n_23({u_reg_files_1_n_196,u_reg_files_1_n_197,u_reg_files_1_n_198,u_reg_files_1_n_199}),
        .rst_n_24({u_reg_files_1_n_200,u_reg_files_1_n_201,u_reg_files_1_n_202,u_reg_files_1_n_203}),
        .rst_n_25({u_reg_files_1_n_204,u_reg_files_1_n_205,u_reg_files_1_n_206,u_reg_files_1_n_207}),
        .rst_n_26({u_reg_files_1_n_208,u_reg_files_1_n_209,u_reg_files_1_n_210,u_reg_files_1_n_211}),
        .rst_n_27({u_reg_files_1_n_212,u_reg_files_1_n_213,u_reg_files_1_n_214,u_reg_files_1_n_215}),
        .rst_n_28({u_reg_files_1_n_216,u_reg_files_1_n_217,u_reg_files_1_n_218,u_reg_files_1_n_219}),
        .rst_n_3({u_reg_files_1_n_90,u_reg_files_1_n_91,u_reg_files_1_n_92,u_reg_files_1_n_93}),
        .rst_n_4({u_reg_files_1_n_94,u_reg_files_1_n_95,u_reg_files_1_n_96,u_reg_files_1_n_97}),
        .rst_n_5({u_reg_files_1_n_98,u_reg_files_1_n_99,u_reg_files_1_n_100,u_reg_files_1_n_101}),
        .rst_n_6({u_reg_files_1_n_102,u_reg_files_1_n_103,u_reg_files_1_n_104,u_reg_files_1_n_105}),
        .rst_n_7({u_reg_files_1_n_106,u_reg_files_1_n_107,u_reg_files_1_n_108,u_reg_files_1_n_109}),
        .rst_n_8({u_reg_files_1_n_110,u_reg_files_1_n_111,u_reg_files_1_n_112,u_reg_files_1_n_113}),
        .rst_n_9({u_reg_files_1_n_114,u_reg_files_1_n_115,u_reg_files_1_n_116}),
        .rst_n_IBUF(rst_n_IBUF),
        .writeData(result_OBUF));
endmodule

module pc_1
   (out,
    rst_n_IBUF,
    clk_IBUF_BUFG);
  output [13:0]out;
  input rst_n_IBUF;
  input clk_IBUF_BUFG;

  wire clk_IBUF_BUFG;
  wire [13:0]out;
  wire \pc[2]_i_2_n_0 ;
  wire \pc_reg[10]_i_1_n_0 ;
  wire \pc_reg[10]_i_1_n_4 ;
  wire \pc_reg[10]_i_1_n_5 ;
  wire \pc_reg[10]_i_1_n_6 ;
  wire \pc_reg[10]_i_1_n_7 ;
  wire \pc_reg[14]_i_1_n_6 ;
  wire \pc_reg[14]_i_1_n_7 ;
  wire \pc_reg[2]_i_1_n_0 ;
  wire \pc_reg[2]_i_1_n_4 ;
  wire \pc_reg[2]_i_1_n_5 ;
  wire \pc_reg[2]_i_1_n_6 ;
  wire \pc_reg[2]_i_1_n_7 ;
  wire \pc_reg[6]_i_1_n_0 ;
  wire \pc_reg[6]_i_1_n_4 ;
  wire \pc_reg[6]_i_1_n_5 ;
  wire \pc_reg[6]_i_1_n_6 ;
  wire \pc_reg[6]_i_1_n_7 ;
  wire rst_n_IBUF;
  wire [2:0]\NLW_pc_reg[10]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_pc_reg[14]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_pc_reg[14]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_pc_reg[2]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_pc_reg[6]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \pc[2]_i_2 
       (.I0(out[0]),
        .O(\pc[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[10]_i_1_n_7 ),
        .Q(out[8]),
        .R(rst_n_IBUF));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \pc_reg[10]_i_1 
       (.CI(\pc_reg[6]_i_1_n_0 ),
        .CO({\pc_reg[10]_i_1_n_0 ,\NLW_pc_reg[10]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[10]_i_1_n_4 ,\pc_reg[10]_i_1_n_5 ,\pc_reg[10]_i_1_n_6 ,\pc_reg[10]_i_1_n_7 }),
        .S(out[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[10]_i_1_n_6 ),
        .Q(out[9]),
        .R(rst_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[10]_i_1_n_5 ),
        .Q(out[10]),
        .R(rst_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[10]_i_1_n_4 ),
        .Q(out[11]),
        .R(rst_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[14]_i_1_n_7 ),
        .Q(out[12]),
        .R(rst_n_IBUF));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \pc_reg[14]_i_1 
       (.CI(\pc_reg[10]_i_1_n_0 ),
        .CO(\NLW_pc_reg[14]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_pc_reg[14]_i_1_O_UNCONNECTED [3:2],\pc_reg[14]_i_1_n_6 ,\pc_reg[14]_i_1_n_7 }),
        .S({1'b0,1'b0,out[13:12]}));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[14]_i_1_n_6 ),
        .Q(out[13]),
        .R(rst_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[2]_i_1_n_7 ),
        .Q(out[0]),
        .R(rst_n_IBUF));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \pc_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\pc_reg[2]_i_1_n_0 ,\NLW_pc_reg[2]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\pc_reg[2]_i_1_n_4 ,\pc_reg[2]_i_1_n_5 ,\pc_reg[2]_i_1_n_6 ,\pc_reg[2]_i_1_n_7 }),
        .S({out[3:1],\pc[2]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[2]_i_1_n_6 ),
        .Q(out[1]),
        .R(rst_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[2]_i_1_n_5 ),
        .Q(out[2]),
        .R(rst_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[2]_i_1_n_4 ),
        .Q(out[3]),
        .R(rst_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[6]_i_1_n_7 ),
        .Q(out[4]),
        .R(rst_n_IBUF));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \pc_reg[6]_i_1 
       (.CI(\pc_reg[2]_i_1_n_0 ),
        .CO({\pc_reg[6]_i_1_n_0 ,\NLW_pc_reg[6]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[6]_i_1_n_4 ,\pc_reg[6]_i_1_n_5 ,\pc_reg[6]_i_1_n_6 ,\pc_reg[6]_i_1_n_7 }),
        .S(out[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[6]_i_1_n_6 ),
        .Q(out[5]),
        .R(rst_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[6]_i_1_n_5 ),
        .Q(out[6]),
        .R(rst_n_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\pc_reg[6]_i_1_n_4 ),
        .Q(out[7]),
        .R(rst_n_IBUF));
endmodule

module reg_files_1
   (register_reg_r2_0_31_6_11_0,
    rst_n,
    DI,
    register_reg_r2_0_31_6_11_1,
    register_reg_r2_0_31_12_17_0,
    rst_n_0,
    register_reg_r2_0_31_12_17_1,
    ALUresult0__187_carry__2_i_9_0,
    register_reg_r2_0_31_30_31_0,
    writeData,
    \result_OBUF[29]_inst_i_8_0 ,
    \result_OBUF[29]_inst_i_14_0 ,
    register_reg_r2_0_31_30_31_1,
    register_reg_r2_0_31_18_23_0,
    register_reg_r2_0_31_18_23_1,
    register_reg_r2_0_31_6_11_2,
    rst_n_1,
    rst_n_2,
    rst_n_3,
    rst_n_4,
    rst_n_5,
    rst_n_6,
    rst_n_7,
    rst_n_8,
    rst_n_9,
    rst_n_10,
    rst_n_11,
    rst_n_12,
    rst_n_13,
    rst_n_14,
    rst_n_15,
    register_reg_r2_0_31_6_11_3,
    register_reg_r2_0_31_12_17_2,
    register_reg_r2_0_31_12_17_3,
    register_reg_r2_0_31_18_23_2,
    register_reg_r2_0_31_18_23_3,
    ALUresult0__187_carry__2_i_9_1,
    S,
    rst_n_16,
    rst_n_17,
    rst_n_18,
    rst_n_19,
    rst_n_20,
    rst_n_21,
    rst_n_22,
    rst_n_23,
    rst_n_24,
    rst_n_25,
    rst_n_26,
    rst_n_27,
    rst_n_28,
    rst_n_IBUF,
    ALUresult0__187_carry,
    ALUresult0__187_carry__2,
    \result[10] ,
    \result[11] ,
    \result[8] ,
    \result[9] ,
    \result[5] ,
    \result[4] ,
    \result[7] ,
    \result[6] ,
    \result[12] ,
    \result[13] ,
    \result[15] ,
    \result[14] ,
    \result[16] ,
    \result[17] ,
    \result[18] ,
    \result[19] ,
    \result[27] ,
    \result[28] ,
    \result[29] ,
    \result[30] ,
    \result[31] ,
    \result[20] ,
    \result[21] ,
    \result[22] ,
    \result[23] ,
    \result[24] ,
    \result[25] ,
    \result[26] ,
    \result[2] ,
    \result[1] ,
    \result[3] ,
    \result[0] ,
    douta,
    CO,
    \result_OBUF[0]_inst_i_1_0 ,
    clk_IBUF_BUFG);
  output [3:0]register_reg_r2_0_31_6_11_0;
  output [3:0]rst_n;
  output [3:0]DI;
  output [3:0]register_reg_r2_0_31_6_11_1;
  output [3:0]register_reg_r2_0_31_12_17_0;
  output [3:0]rst_n_0;
  output [3:0]register_reg_r2_0_31_12_17_1;
  output [3:0]ALUresult0__187_carry__2_i_9_0;
  output [2:0]register_reg_r2_0_31_30_31_0;
  output [31:0]writeData;
  output \result_OBUF[29]_inst_i_8_0 ;
  output \result_OBUF[29]_inst_i_14_0 ;
  output [3:0]register_reg_r2_0_31_30_31_1;
  output [3:0]register_reg_r2_0_31_18_23_0;
  output [3:0]register_reg_r2_0_31_18_23_1;
  output [0:0]register_reg_r2_0_31_6_11_2;
  output [3:0]rst_n_1;
  output [3:0]rst_n_2;
  output [3:0]rst_n_3;
  output [3:0]rst_n_4;
  output [3:0]rst_n_5;
  output [3:0]rst_n_6;
  output [3:0]rst_n_7;
  output [3:0]rst_n_8;
  output [2:0]rst_n_9;
  output [3:0]rst_n_10;
  output [3:0]rst_n_11;
  output [3:0]rst_n_12;
  output [3:0]rst_n_13;
  output [3:0]rst_n_14;
  output [2:0]rst_n_15;
  output [3:0]register_reg_r2_0_31_6_11_3;
  output [3:0]register_reg_r2_0_31_12_17_2;
  output [3:0]register_reg_r2_0_31_12_17_3;
  output [3:0]register_reg_r2_0_31_18_23_2;
  output [3:0]register_reg_r2_0_31_18_23_3;
  output [3:0]ALUresult0__187_carry__2_i_9_1;
  output [3:0]S;
  output [3:0]rst_n_16;
  output [3:0]rst_n_17;
  output [3:0]rst_n_18;
  output [3:0]rst_n_19;
  output [3:0]rst_n_20;
  output [3:0]rst_n_21;
  output [3:0]rst_n_22;
  output [3:0]rst_n_23;
  output [3:0]rst_n_24;
  output [3:0]rst_n_25;
  output [3:0]rst_n_26;
  output [3:0]rst_n_27;
  output [3:0]rst_n_28;
  input rst_n_IBUF;
  input ALUresult0__187_carry;
  input ALUresult0__187_carry__2;
  input \result[10] ;
  input \result[11] ;
  input \result[8] ;
  input \result[9] ;
  input \result[5] ;
  input \result[4] ;
  input \result[7] ;
  input \result[6] ;
  input \result[12] ;
  input \result[13] ;
  input \result[15] ;
  input \result[14] ;
  input \result[16] ;
  input \result[17] ;
  input \result[18] ;
  input \result[19] ;
  input \result[27] ;
  input \result[28] ;
  input \result[29] ;
  input \result[30] ;
  input \result[31] ;
  input \result[20] ;
  input \result[21] ;
  input \result[22] ;
  input \result[23] ;
  input \result[24] ;
  input \result[25] ;
  input \result[26] ;
  input \result[2] ;
  input \result[1] ;
  input \result[3] ;
  input \result[0] ;
  input [26:0]douta;
  input [0:0]CO;
  input [0:0]\result_OBUF[0]_inst_i_1_0 ;
  input clk_IBUF_BUFG;

  wire [30:2]A;
  wire [31:0]A0;
  wire ALUresult0__187_carry;
  wire ALUresult0__187_carry__0_i_13_n_0;
  wire ALUresult0__187_carry__0_i_15_n_0;
  wire ALUresult0__187_carry__1_i_13_n_0;
  wire ALUresult0__187_carry__1_i_15_n_0;
  wire ALUresult0__187_carry__2;
  wire ALUresult0__187_carry__2_i_10_n_0;
  wire [3:0]ALUresult0__187_carry__2_i_9_0;
  wire [3:0]ALUresult0__187_carry__2_i_9_1;
  wire ALUresult0_carry__0_i_10_n_0;
  wire [30:3]B;
  wire [31:0]B0;
  wire [0:0]CO;
  wire [3:0]DI;
  wire [3:0]S;
  wire clk_IBUF_BUFG;
  wire [26:0]douta;
  wire [2:2]p_0_in;
  wire register_reg_r1_0_31_0_5_i_1_n_0;
  wire register_reg_r1_0_31_0_5_i_2_n_0;
  wire register_reg_r1_0_31_0_5_i_3_n_0;
  wire register_reg_r1_0_31_0_5_i_4_n_0;
  wire [3:0]register_reg_r2_0_31_12_17_0;
  wire [3:0]register_reg_r2_0_31_12_17_1;
  wire [3:0]register_reg_r2_0_31_12_17_2;
  wire [3:0]register_reg_r2_0_31_12_17_3;
  wire [3:0]register_reg_r2_0_31_18_23_0;
  wire [3:0]register_reg_r2_0_31_18_23_1;
  wire [3:0]register_reg_r2_0_31_18_23_2;
  wire [3:0]register_reg_r2_0_31_18_23_3;
  wire [2:0]register_reg_r2_0_31_30_31_0;
  wire [3:0]register_reg_r2_0_31_30_31_1;
  wire [3:0]register_reg_r2_0_31_6_11_0;
  wire [3:0]register_reg_r2_0_31_6_11_1;
  wire [0:0]register_reg_r2_0_31_6_11_2;
  wire [3:0]register_reg_r2_0_31_6_11_3;
  wire \result[0] ;
  wire \result[10] ;
  wire \result[11] ;
  wire \result[12] ;
  wire \result[13] ;
  wire \result[14] ;
  wire \result[15] ;
  wire \result[16] ;
  wire \result[17] ;
  wire \result[18] ;
  wire \result[19] ;
  wire \result[1] ;
  wire \result[20] ;
  wire \result[21] ;
  wire \result[22] ;
  wire \result[23] ;
  wire \result[24] ;
  wire \result[25] ;
  wire \result[26] ;
  wire \result[27] ;
  wire \result[28] ;
  wire \result[29] ;
  wire \result[2] ;
  wire \result[30] ;
  wire \result[31] ;
  wire \result[3] ;
  wire \result[4] ;
  wire \result[5] ;
  wire \result[6] ;
  wire \result[7] ;
  wire \result[8] ;
  wire \result[9] ;
  wire \result_OBUF[0]_inst_i_10_n_0 ;
  wire \result_OBUF[0]_inst_i_11_n_0 ;
  wire [0:0]\result_OBUF[0]_inst_i_1_0 ;
  wire \result_OBUF[0]_inst_i_3_n_0 ;
  wire \result_OBUF[0]_inst_i_4_n_0 ;
  wire \result_OBUF[0]_inst_i_5_n_0 ;
  wire \result_OBUF[0]_inst_i_6_n_0 ;
  wire \result_OBUF[0]_inst_i_7_n_0 ;
  wire \result_OBUF[0]_inst_i_8_n_0 ;
  wire \result_OBUF[0]_inst_i_9_n_0 ;
  wire \result_OBUF[10]_inst_i_10_n_0 ;
  wire \result_OBUF[10]_inst_i_11_n_0 ;
  wire \result_OBUF[10]_inst_i_12_n_0 ;
  wire \result_OBUF[10]_inst_i_2_n_0 ;
  wire \result_OBUF[10]_inst_i_3_n_0 ;
  wire \result_OBUF[10]_inst_i_4_n_0 ;
  wire \result_OBUF[10]_inst_i_5_n_0 ;
  wire \result_OBUF[10]_inst_i_7_n_0 ;
  wire \result_OBUF[10]_inst_i_8_n_0 ;
  wire \result_OBUF[10]_inst_i_9_n_0 ;
  wire \result_OBUF[11]_inst_i_10_n_0 ;
  wire \result_OBUF[11]_inst_i_11_n_0 ;
  wire \result_OBUF[11]_inst_i_12_n_0 ;
  wire \result_OBUF[11]_inst_i_13_n_0 ;
  wire \result_OBUF[11]_inst_i_3_n_0 ;
  wire \result_OBUF[11]_inst_i_4_n_0 ;
  wire \result_OBUF[11]_inst_i_5_n_0 ;
  wire \result_OBUF[11]_inst_i_6_n_0 ;
  wire \result_OBUF[11]_inst_i_8_n_0 ;
  wire \result_OBUF[11]_inst_i_9_n_0 ;
  wire \result_OBUF[12]_inst_i_10_n_0 ;
  wire \result_OBUF[12]_inst_i_11_n_0 ;
  wire \result_OBUF[12]_inst_i_12_n_0 ;
  wire \result_OBUF[12]_inst_i_13_n_0 ;
  wire \result_OBUF[12]_inst_i_14_n_0 ;
  wire \result_OBUF[12]_inst_i_2_n_0 ;
  wire \result_OBUF[12]_inst_i_3_n_0 ;
  wire \result_OBUF[12]_inst_i_4_n_0 ;
  wire \result_OBUF[12]_inst_i_7_n_0 ;
  wire \result_OBUF[12]_inst_i_8_n_0 ;
  wire \result_OBUF[12]_inst_i_9_n_0 ;
  wire \result_OBUF[13]_inst_i_10_n_0 ;
  wire \result_OBUF[13]_inst_i_11_n_0 ;
  wire \result_OBUF[13]_inst_i_12_n_0 ;
  wire \result_OBUF[13]_inst_i_13_n_0 ;
  wire \result_OBUF[13]_inst_i_14_n_0 ;
  wire \result_OBUF[13]_inst_i_15_n_0 ;
  wire \result_OBUF[13]_inst_i_16_n_0 ;
  wire \result_OBUF[13]_inst_i_17_n_0 ;
  wire \result_OBUF[13]_inst_i_3_n_0 ;
  wire \result_OBUF[13]_inst_i_4_n_0 ;
  wire \result_OBUF[13]_inst_i_5_n_0 ;
  wire \result_OBUF[13]_inst_i_6_n_0 ;
  wire \result_OBUF[13]_inst_i_8_n_0 ;
  wire \result_OBUF[13]_inst_i_9_n_0 ;
  wire \result_OBUF[14]_inst_i_10_n_0 ;
  wire \result_OBUF[14]_inst_i_11_n_0 ;
  wire \result_OBUF[14]_inst_i_12_n_0 ;
  wire \result_OBUF[14]_inst_i_2_n_0 ;
  wire \result_OBUF[14]_inst_i_3_n_0 ;
  wire \result_OBUF[14]_inst_i_4_n_0 ;
  wire \result_OBUF[14]_inst_i_7_n_0 ;
  wire \result_OBUF[14]_inst_i_8_n_0 ;
  wire \result_OBUF[14]_inst_i_9_n_0 ;
  wire \result_OBUF[15]_inst_i_10_n_0 ;
  wire \result_OBUF[15]_inst_i_11_n_0 ;
  wire \result_OBUF[15]_inst_i_12_n_0 ;
  wire \result_OBUF[15]_inst_i_13_n_0 ;
  wire \result_OBUF[15]_inst_i_2_n_0 ;
  wire \result_OBUF[15]_inst_i_3_n_0 ;
  wire \result_OBUF[15]_inst_i_4_n_0 ;
  wire \result_OBUF[15]_inst_i_5_n_0 ;
  wire \result_OBUF[15]_inst_i_8_n_0 ;
  wire \result_OBUF[15]_inst_i_9_n_0 ;
  wire \result_OBUF[16]_inst_i_10_n_0 ;
  wire \result_OBUF[16]_inst_i_11_n_0 ;
  wire \result_OBUF[16]_inst_i_12_n_0 ;
  wire \result_OBUF[16]_inst_i_13_n_0 ;
  wire \result_OBUF[16]_inst_i_14_n_0 ;
  wire \result_OBUF[16]_inst_i_15_n_0 ;
  wire \result_OBUF[16]_inst_i_16_n_0 ;
  wire \result_OBUF[16]_inst_i_17_n_0 ;
  wire \result_OBUF[16]_inst_i_18_n_0 ;
  wire \result_OBUF[16]_inst_i_19_n_0 ;
  wire \result_OBUF[16]_inst_i_20_n_0 ;
  wire \result_OBUF[16]_inst_i_21_n_0 ;
  wire \result_OBUF[16]_inst_i_22_n_0 ;
  wire \result_OBUF[16]_inst_i_23_n_0 ;
  wire \result_OBUF[16]_inst_i_24_n_0 ;
  wire \result_OBUF[16]_inst_i_25_n_0 ;
  wire \result_OBUF[16]_inst_i_26_n_0 ;
  wire \result_OBUF[16]_inst_i_2_n_0 ;
  wire \result_OBUF[16]_inst_i_3_n_0 ;
  wire \result_OBUF[16]_inst_i_4_n_0 ;
  wire \result_OBUF[16]_inst_i_5_n_0 ;
  wire \result_OBUF[16]_inst_i_8_n_0 ;
  wire \result_OBUF[16]_inst_i_9_n_0 ;
  wire \result_OBUF[17]_inst_i_10_n_0 ;
  wire \result_OBUF[17]_inst_i_11_n_0 ;
  wire \result_OBUF[17]_inst_i_12_n_0 ;
  wire \result_OBUF[17]_inst_i_13_n_0 ;
  wire \result_OBUF[17]_inst_i_2_n_0 ;
  wire \result_OBUF[17]_inst_i_3_n_0 ;
  wire \result_OBUF[17]_inst_i_4_n_0 ;
  wire \result_OBUF[17]_inst_i_5_n_0 ;
  wire \result_OBUF[17]_inst_i_8_n_0 ;
  wire \result_OBUF[17]_inst_i_9_n_0 ;
  wire \result_OBUF[18]_inst_i_10_n_0 ;
  wire \result_OBUF[18]_inst_i_11_n_0 ;
  wire \result_OBUF[18]_inst_i_12_n_0 ;
  wire \result_OBUF[18]_inst_i_14_n_0 ;
  wire \result_OBUF[18]_inst_i_15_n_0 ;
  wire \result_OBUF[18]_inst_i_16_n_0 ;
  wire \result_OBUF[18]_inst_i_17_n_0 ;
  wire \result_OBUF[18]_inst_i_18_n_0 ;
  wire \result_OBUF[18]_inst_i_19_n_0 ;
  wire \result_OBUF[18]_inst_i_20_n_0 ;
  wire \result_OBUF[18]_inst_i_21_n_0 ;
  wire \result_OBUF[18]_inst_i_22_n_0 ;
  wire \result_OBUF[18]_inst_i_23_n_0 ;
  wire \result_OBUF[18]_inst_i_24_n_0 ;
  wire \result_OBUF[18]_inst_i_25_n_0 ;
  wire \result_OBUF[18]_inst_i_26_n_0 ;
  wire \result_OBUF[18]_inst_i_27_n_0 ;
  wire \result_OBUF[18]_inst_i_28_n_0 ;
  wire \result_OBUF[18]_inst_i_29_n_0 ;
  wire \result_OBUF[18]_inst_i_2_n_0 ;
  wire \result_OBUF[18]_inst_i_30_n_0 ;
  wire \result_OBUF[18]_inst_i_31_n_0 ;
  wire \result_OBUF[18]_inst_i_3_n_0 ;
  wire \result_OBUF[18]_inst_i_4_n_0 ;
  wire \result_OBUF[18]_inst_i_6_n_0 ;
  wire \result_OBUF[18]_inst_i_7_n_0 ;
  wire \result_OBUF[18]_inst_i_8_n_0 ;
  wire \result_OBUF[18]_inst_i_9_n_0 ;
  wire \result_OBUF[19]_inst_i_10_n_0 ;
  wire \result_OBUF[19]_inst_i_11_n_0 ;
  wire \result_OBUF[19]_inst_i_12_n_0 ;
  wire \result_OBUF[19]_inst_i_13_n_0 ;
  wire \result_OBUF[19]_inst_i_14_n_0 ;
  wire \result_OBUF[19]_inst_i_15_n_0 ;
  wire \result_OBUF[19]_inst_i_2_n_0 ;
  wire \result_OBUF[19]_inst_i_3_n_0 ;
  wire \result_OBUF[19]_inst_i_4_n_0 ;
  wire \result_OBUF[19]_inst_i_5_n_0 ;
  wire \result_OBUF[19]_inst_i_8_n_0 ;
  wire \result_OBUF[19]_inst_i_9_n_0 ;
  wire \result_OBUF[1]_inst_i_10_n_0 ;
  wire \result_OBUF[1]_inst_i_2_n_0 ;
  wire \result_OBUF[1]_inst_i_3_n_0 ;
  wire \result_OBUF[1]_inst_i_4_n_0 ;
  wire \result_OBUF[1]_inst_i_6_n_0 ;
  wire \result_OBUF[1]_inst_i_7_n_0 ;
  wire \result_OBUF[1]_inst_i_8_n_0 ;
  wire \result_OBUF[1]_inst_i_9_n_0 ;
  wire \result_OBUF[20]_inst_i_10_n_0 ;
  wire \result_OBUF[20]_inst_i_11_n_0 ;
  wire \result_OBUF[20]_inst_i_12_n_0 ;
  wire \result_OBUF[20]_inst_i_2_n_0 ;
  wire \result_OBUF[20]_inst_i_3_n_0 ;
  wire \result_OBUF[20]_inst_i_4_n_0 ;
  wire \result_OBUF[20]_inst_i_5_n_0 ;
  wire \result_OBUF[20]_inst_i_8_n_0 ;
  wire \result_OBUF[20]_inst_i_9_n_0 ;
  wire \result_OBUF[21]_inst_i_10_n_0 ;
  wire \result_OBUF[21]_inst_i_11_n_0 ;
  wire \result_OBUF[21]_inst_i_12_n_0 ;
  wire \result_OBUF[21]_inst_i_13_n_0 ;
  wire \result_OBUF[21]_inst_i_2_n_0 ;
  wire \result_OBUF[21]_inst_i_3_n_0 ;
  wire \result_OBUF[21]_inst_i_4_n_0 ;
  wire \result_OBUF[21]_inst_i_5_n_0 ;
  wire \result_OBUF[21]_inst_i_8_n_0 ;
  wire \result_OBUF[21]_inst_i_9_n_0 ;
  wire \result_OBUF[22]_inst_i_10_n_0 ;
  wire \result_OBUF[22]_inst_i_11_n_0 ;
  wire \result_OBUF[22]_inst_i_12_n_0 ;
  wire \result_OBUF[22]_inst_i_13_n_0 ;
  wire \result_OBUF[22]_inst_i_14_n_0 ;
  wire \result_OBUF[22]_inst_i_2_n_0 ;
  wire \result_OBUF[22]_inst_i_3_n_0 ;
  wire \result_OBUF[22]_inst_i_4_n_0 ;
  wire \result_OBUF[22]_inst_i_5_n_0 ;
  wire \result_OBUF[22]_inst_i_8_n_0 ;
  wire \result_OBUF[22]_inst_i_9_n_0 ;
  wire \result_OBUF[23]_inst_i_10_n_0 ;
  wire \result_OBUF[23]_inst_i_11_n_0 ;
  wire \result_OBUF[23]_inst_i_2_n_0 ;
  wire \result_OBUF[23]_inst_i_3_n_0 ;
  wire \result_OBUF[23]_inst_i_4_n_0 ;
  wire \result_OBUF[23]_inst_i_6_n_0 ;
  wire \result_OBUF[23]_inst_i_7_n_0 ;
  wire \result_OBUF[23]_inst_i_8_n_0 ;
  wire \result_OBUF[23]_inst_i_9_n_0 ;
  wire \result_OBUF[24]_inst_i_10_n_0 ;
  wire \result_OBUF[24]_inst_i_11_n_0 ;
  wire \result_OBUF[24]_inst_i_12_n_0 ;
  wire \result_OBUF[24]_inst_i_13_n_0 ;
  wire \result_OBUF[24]_inst_i_14_n_0 ;
  wire \result_OBUF[24]_inst_i_15_n_0 ;
  wire \result_OBUF[24]_inst_i_16_n_0 ;
  wire \result_OBUF[24]_inst_i_2_n_0 ;
  wire \result_OBUF[24]_inst_i_3_n_0 ;
  wire \result_OBUF[24]_inst_i_4_n_0 ;
  wire \result_OBUF[24]_inst_i_6_n_0 ;
  wire \result_OBUF[24]_inst_i_7_n_0 ;
  wire \result_OBUF[24]_inst_i_8_n_0 ;
  wire \result_OBUF[24]_inst_i_9_n_0 ;
  wire \result_OBUF[25]_inst_i_10_n_0 ;
  wire \result_OBUF[25]_inst_i_11_n_0 ;
  wire \result_OBUF[25]_inst_i_12_n_0 ;
  wire \result_OBUF[25]_inst_i_2_n_0 ;
  wire \result_OBUF[25]_inst_i_3_n_0 ;
  wire \result_OBUF[25]_inst_i_4_n_0 ;
  wire \result_OBUF[25]_inst_i_6_n_0 ;
  wire \result_OBUF[25]_inst_i_7_n_0 ;
  wire \result_OBUF[25]_inst_i_8_n_0 ;
  wire \result_OBUF[25]_inst_i_9_n_0 ;
  wire \result_OBUF[26]_inst_i_10_n_0 ;
  wire \result_OBUF[26]_inst_i_11_n_0 ;
  wire \result_OBUF[26]_inst_i_12_n_0 ;
  wire \result_OBUF[26]_inst_i_13_n_0 ;
  wire \result_OBUF[26]_inst_i_14_n_0 ;
  wire \result_OBUF[26]_inst_i_15_n_0 ;
  wire \result_OBUF[26]_inst_i_16_n_0 ;
  wire \result_OBUF[26]_inst_i_2_n_0 ;
  wire \result_OBUF[26]_inst_i_3_n_0 ;
  wire \result_OBUF[26]_inst_i_4_n_0 ;
  wire \result_OBUF[26]_inst_i_6_n_0 ;
  wire \result_OBUF[26]_inst_i_7_n_0 ;
  wire \result_OBUF[26]_inst_i_8_n_0 ;
  wire \result_OBUF[26]_inst_i_9_n_0 ;
  wire \result_OBUF[27]_inst_i_10_n_0 ;
  wire \result_OBUF[27]_inst_i_11_n_0 ;
  wire \result_OBUF[27]_inst_i_12_n_0 ;
  wire \result_OBUF[27]_inst_i_13_n_0 ;
  wire \result_OBUF[27]_inst_i_14_n_0 ;
  wire \result_OBUF[27]_inst_i_2_n_0 ;
  wire \result_OBUF[27]_inst_i_3_n_0 ;
  wire \result_OBUF[27]_inst_i_4_n_0 ;
  wire \result_OBUF[27]_inst_i_6_n_0 ;
  wire \result_OBUF[27]_inst_i_7_n_0 ;
  wire \result_OBUF[27]_inst_i_8_n_0 ;
  wire \result_OBUF[27]_inst_i_9_n_0 ;
  wire \result_OBUF[28]_inst_i_10_n_0 ;
  wire \result_OBUF[28]_inst_i_2_n_0 ;
  wire \result_OBUF[28]_inst_i_3_n_0 ;
  wire \result_OBUF[28]_inst_i_4_n_0 ;
  wire \result_OBUF[28]_inst_i_6_n_0 ;
  wire \result_OBUF[28]_inst_i_7_n_0 ;
  wire \result_OBUF[28]_inst_i_8_n_0 ;
  wire \result_OBUF[28]_inst_i_9_n_0 ;
  wire \result_OBUF[29]_inst_i_10_n_0 ;
  wire \result_OBUF[29]_inst_i_11_n_0 ;
  wire \result_OBUF[29]_inst_i_12_n_0 ;
  wire \result_OBUF[29]_inst_i_13_n_0 ;
  wire \result_OBUF[29]_inst_i_14_0 ;
  wire \result_OBUF[29]_inst_i_14_n_0 ;
  wire \result_OBUF[29]_inst_i_15_n_0 ;
  wire \result_OBUF[29]_inst_i_16_n_0 ;
  wire \result_OBUF[29]_inst_i_3_n_0 ;
  wire \result_OBUF[29]_inst_i_4_n_0 ;
  wire \result_OBUF[29]_inst_i_5_n_0 ;
  wire \result_OBUF[29]_inst_i_8_0 ;
  wire \result_OBUF[29]_inst_i_8_n_0 ;
  wire \result_OBUF[29]_inst_i_9_n_0 ;
  wire \result_OBUF[2]_inst_i_10_n_0 ;
  wire \result_OBUF[2]_inst_i_11_n_0 ;
  wire \result_OBUF[2]_inst_i_2_n_0 ;
  wire \result_OBUF[2]_inst_i_3_n_0 ;
  wire \result_OBUF[2]_inst_i_4_n_0 ;
  wire \result_OBUF[2]_inst_i_7_n_0 ;
  wire \result_OBUF[2]_inst_i_8_n_0 ;
  wire \result_OBUF[2]_inst_i_9_n_0 ;
  wire \result_OBUF[30]_inst_i_10_n_0 ;
  wire \result_OBUF[30]_inst_i_11_n_0 ;
  wire \result_OBUF[30]_inst_i_12_n_0 ;
  wire \result_OBUF[30]_inst_i_13_n_0 ;
  wire \result_OBUF[30]_inst_i_14_n_0 ;
  wire \result_OBUF[30]_inst_i_3_n_0 ;
  wire \result_OBUF[30]_inst_i_4_n_0 ;
  wire \result_OBUF[30]_inst_i_5_n_0 ;
  wire \result_OBUF[30]_inst_i_6_n_0 ;
  wire \result_OBUF[30]_inst_i_7_n_0 ;
  wire \result_OBUF[30]_inst_i_9_n_0 ;
  wire \result_OBUF[31]_inst_i_10_n_0 ;
  wire \result_OBUF[31]_inst_i_11_n_0 ;
  wire \result_OBUF[31]_inst_i_12_n_0 ;
  wire \result_OBUF[31]_inst_i_13_n_0 ;
  wire \result_OBUF[31]_inst_i_14_n_0 ;
  wire \result_OBUF[31]_inst_i_15_n_0 ;
  wire \result_OBUF[31]_inst_i_16_n_0 ;
  wire \result_OBUF[31]_inst_i_17_n_0 ;
  wire \result_OBUF[31]_inst_i_18_n_0 ;
  wire \result_OBUF[31]_inst_i_19_n_0 ;
  wire \result_OBUF[31]_inst_i_20_n_0 ;
  wire \result_OBUF[31]_inst_i_21_n_0 ;
  wire \result_OBUF[31]_inst_i_22_n_0 ;
  wire \result_OBUF[31]_inst_i_23_n_0 ;
  wire \result_OBUF[31]_inst_i_24_n_0 ;
  wire \result_OBUF[31]_inst_i_25_n_0 ;
  wire \result_OBUF[31]_inst_i_3_n_0 ;
  wire \result_OBUF[31]_inst_i_4_n_0 ;
  wire \result_OBUF[31]_inst_i_5_n_0 ;
  wire \result_OBUF[31]_inst_i_6_n_0 ;
  wire \result_OBUF[31]_inst_i_7_n_0 ;
  wire \result_OBUF[31]_inst_i_8_n_0 ;
  wire \result_OBUF[31]_inst_i_9_n_0 ;
  wire \result_OBUF[3]_inst_i_10_n_0 ;
  wire \result_OBUF[3]_inst_i_11_n_0 ;
  wire \result_OBUF[3]_inst_i_2_n_0 ;
  wire \result_OBUF[3]_inst_i_3_n_0 ;
  wire \result_OBUF[3]_inst_i_4_n_0 ;
  wire \result_OBUF[3]_inst_i_5_n_0 ;
  wire \result_OBUF[3]_inst_i_7_n_0 ;
  wire \result_OBUF[3]_inst_i_8_n_0 ;
  wire \result_OBUF[3]_inst_i_9_n_0 ;
  wire \result_OBUF[4]_inst_i_10_n_0 ;
  wire \result_OBUF[4]_inst_i_11_n_0 ;
  wire \result_OBUF[4]_inst_i_2_n_0 ;
  wire \result_OBUF[4]_inst_i_3_n_0 ;
  wire \result_OBUF[4]_inst_i_4_n_0 ;
  wire \result_OBUF[4]_inst_i_7_n_0 ;
  wire \result_OBUF[4]_inst_i_8_n_0 ;
  wire \result_OBUF[4]_inst_i_9_n_0 ;
  wire \result_OBUF[5]_inst_i_10_n_0 ;
  wire \result_OBUF[5]_inst_i_11_n_0 ;
  wire \result_OBUF[5]_inst_i_2_n_0 ;
  wire \result_OBUF[5]_inst_i_3_n_0 ;
  wire \result_OBUF[5]_inst_i_4_n_0 ;
  wire \result_OBUF[5]_inst_i_7_n_0 ;
  wire \result_OBUF[5]_inst_i_8_n_0 ;
  wire \result_OBUF[5]_inst_i_9_n_0 ;
  wire \result_OBUF[6]_inst_i_10_n_0 ;
  wire \result_OBUF[6]_inst_i_11_n_0 ;
  wire \result_OBUF[6]_inst_i_12_n_0 ;
  wire \result_OBUF[6]_inst_i_13_n_0 ;
  wire \result_OBUF[6]_inst_i_14_n_0 ;
  wire \result_OBUF[6]_inst_i_2_n_0 ;
  wire \result_OBUF[6]_inst_i_3_n_0 ;
  wire \result_OBUF[6]_inst_i_4_n_0 ;
  wire \result_OBUF[6]_inst_i_6_n_0 ;
  wire \result_OBUF[6]_inst_i_7_n_0 ;
  wire \result_OBUF[6]_inst_i_8_n_0 ;
  wire \result_OBUF[6]_inst_i_9_n_0 ;
  wire \result_OBUF[7]_inst_i_10_n_0 ;
  wire \result_OBUF[7]_inst_i_11_n_0 ;
  wire \result_OBUF[7]_inst_i_12_n_0 ;
  wire \result_OBUF[7]_inst_i_13_n_0 ;
  wire \result_OBUF[7]_inst_i_14_n_0 ;
  wire \result_OBUF[7]_inst_i_15_n_0 ;
  wire \result_OBUF[7]_inst_i_16_n_0 ;
  wire \result_OBUF[7]_inst_i_17_n_0 ;
  wire \result_OBUF[7]_inst_i_18_n_0 ;
  wire \result_OBUF[7]_inst_i_2_n_0 ;
  wire \result_OBUF[7]_inst_i_3_n_0 ;
  wire \result_OBUF[7]_inst_i_4_n_0 ;
  wire \result_OBUF[7]_inst_i_7_n_0 ;
  wire \result_OBUF[7]_inst_i_8_n_0 ;
  wire \result_OBUF[7]_inst_i_9_n_0 ;
  wire \result_OBUF[8]_inst_i_10_n_0 ;
  wire \result_OBUF[8]_inst_i_11_n_0 ;
  wire \result_OBUF[8]_inst_i_12_n_0 ;
  wire \result_OBUF[8]_inst_i_13_n_0 ;
  wire \result_OBUF[8]_inst_i_14_n_0 ;
  wire \result_OBUF[8]_inst_i_15_n_0 ;
  wire \result_OBUF[8]_inst_i_16_n_0 ;
  wire \result_OBUF[8]_inst_i_2_n_0 ;
  wire \result_OBUF[8]_inst_i_3_n_0 ;
  wire \result_OBUF[8]_inst_i_4_n_0 ;
  wire \result_OBUF[8]_inst_i_5_n_0 ;
  wire \result_OBUF[8]_inst_i_8_n_0 ;
  wire \result_OBUF[8]_inst_i_9_n_0 ;
  wire \result_OBUF[9]_inst_i_10_n_0 ;
  wire \result_OBUF[9]_inst_i_11_n_0 ;
  wire \result_OBUF[9]_inst_i_12_n_0 ;
  wire \result_OBUF[9]_inst_i_2_n_0 ;
  wire \result_OBUF[9]_inst_i_3_n_0 ;
  wire \result_OBUF[9]_inst_i_4_n_0 ;
  wire \result_OBUF[9]_inst_i_5_n_0 ;
  wire \result_OBUF[9]_inst_i_6_n_0 ;
  wire \result_OBUF[9]_inst_i_9_n_0 ;
  wire [3:0]rst_n;
  wire [3:0]rst_n_0;
  wire [3:0]rst_n_1;
  wire [3:0]rst_n_10;
  wire [3:0]rst_n_11;
  wire [3:0]rst_n_12;
  wire [3:0]rst_n_13;
  wire [3:0]rst_n_14;
  wire [2:0]rst_n_15;
  wire [3:0]rst_n_16;
  wire [3:0]rst_n_17;
  wire [3:0]rst_n_18;
  wire [3:0]rst_n_19;
  wire [3:0]rst_n_2;
  wire [3:0]rst_n_20;
  wire [3:0]rst_n_21;
  wire [3:0]rst_n_22;
  wire [3:0]rst_n_23;
  wire [3:0]rst_n_24;
  wire [3:0]rst_n_25;
  wire [3:0]rst_n_26;
  wire [3:0]rst_n_27;
  wire [3:0]rst_n_28;
  wire [3:0]rst_n_3;
  wire [3:0]rst_n_4;
  wire [3:0]rst_n_5;
  wire [3:0]rst_n_6;
  wire [3:0]rst_n_7;
  wire [3:0]rst_n_8;
  wire [2:0]rst_n_9;
  wire rst_n_IBUF;
  wire [31:0]writeData;
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

  LUT5 #(
    .INIT(32'h10311010)) 
    ALUresult0__187_carry__0_i_1
       (.I0(A[15]),
        .I1(ALUresult0__187_carry__2),
        .I2(B0[15]),
        .I3(A[14]),
        .I4(B0[14]),
        .O(register_reg_r2_0_31_12_17_3[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__187_carry__0_i_10
       (.I0(ALUresult0__187_carry),
        .I1(A0[14]),
        .I2(rst_n_IBUF),
        .O(A[14]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__187_carry__0_i_11
       (.I0(ALUresult0__187_carry),
        .I1(A0[13]),
        .I2(rst_n_IBUF),
        .O(A[13]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__187_carry__0_i_12
       (.I0(ALUresult0__187_carry),
        .I1(A0[12]),
        .I2(rst_n_IBUF),
        .O(A[12]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__187_carry__0_i_13
       (.I0(rst_n_IBUF),
        .I1(A0[11]),
        .I2(ALUresult0__187_carry),
        .O(ALUresult0__187_carry__0_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__187_carry__0_i_14
       (.I0(ALUresult0__187_carry),
        .I1(A0[10]),
        .I2(rst_n_IBUF),
        .O(A[10]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__187_carry__0_i_15
       (.I0(rst_n_IBUF),
        .I1(A0[9]),
        .I2(ALUresult0__187_carry),
        .O(ALUresult0__187_carry__0_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__187_carry__0_i_16
       (.I0(ALUresult0__187_carry),
        .I1(A0[8]),
        .I2(rst_n_IBUF),
        .O(A[8]));
  LUT5 #(
    .INIT(32'h10311010)) 
    ALUresult0__187_carry__0_i_2
       (.I0(A[13]),
        .I1(ALUresult0__187_carry__2),
        .I2(B0[13]),
        .I3(A[12]),
        .I4(B0[12]),
        .O(register_reg_r2_0_31_12_17_3[2]));
  LUT5 #(
    .INIT(32'h02230202)) 
    ALUresult0__187_carry__0_i_3
       (.I0(B0[11]),
        .I1(ALUresult0__187_carry__2),
        .I2(ALUresult0__187_carry__0_i_13_n_0),
        .I3(A[10]),
        .I4(B0[10]),
        .O(register_reg_r2_0_31_12_17_3[1]));
  LUT5 #(
    .INIT(32'h02230202)) 
    ALUresult0__187_carry__0_i_4
       (.I0(B0[9]),
        .I1(ALUresult0__187_carry__2),
        .I2(ALUresult0__187_carry__0_i_15_n_0),
        .I3(A[8]),
        .I4(B0[8]),
        .O(register_reg_r2_0_31_12_17_3[0]));
  LUT5 #(
    .INIT(32'h05900509)) 
    ALUresult0__187_carry__0_i_5
       (.I0(A[15]),
        .I1(B0[15]),
        .I2(A[14]),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[14]),
        .O(register_reg_r2_0_31_12_17_2[3]));
  LUT5 #(
    .INIT(32'h05900509)) 
    ALUresult0__187_carry__0_i_6
       (.I0(A[13]),
        .I1(B0[13]),
        .I2(A[12]),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[12]),
        .O(register_reg_r2_0_31_12_17_2[2]));
  LUT5 #(
    .INIT(32'h00903309)) 
    ALUresult0__187_carry__0_i_7
       (.I0(B0[11]),
        .I1(ALUresult0__187_carry__0_i_13_n_0),
        .I2(B0[10]),
        .I3(ALUresult0__187_carry__2),
        .I4(A[10]),
        .O(register_reg_r2_0_31_12_17_2[1]));
  LUT5 #(
    .INIT(32'h00903309)) 
    ALUresult0__187_carry__0_i_8
       (.I0(B0[9]),
        .I1(ALUresult0__187_carry__0_i_15_n_0),
        .I2(B0[8]),
        .I3(ALUresult0__187_carry__2),
        .I4(A[8]),
        .O(register_reg_r2_0_31_12_17_2[0]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__187_carry__0_i_9
       (.I0(ALUresult0__187_carry),
        .I1(A0[15]),
        .I2(rst_n_IBUF),
        .O(A[15]));
  LUT5 #(
    .INIT(32'h10311010)) 
    ALUresult0__187_carry__1_i_1
       (.I0(A[23]),
        .I1(ALUresult0__187_carry__2),
        .I2(B0[23]),
        .I3(A[22]),
        .I4(B0[22]),
        .O(register_reg_r2_0_31_18_23_3[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__187_carry__1_i_10
       (.I0(ALUresult0__187_carry),
        .I1(A0[22]),
        .I2(rst_n_IBUF),
        .O(A[22]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__187_carry__1_i_11
       (.I0(ALUresult0__187_carry),
        .I1(A0[21]),
        .I2(rst_n_IBUF),
        .O(A[21]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__187_carry__1_i_12
       (.I0(ALUresult0__187_carry),
        .I1(A0[20]),
        .I2(rst_n_IBUF),
        .O(A[20]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    ALUresult0__187_carry__1_i_13
       (.I0(ALUresult0__187_carry),
        .I1(A0[19]),
        .I2(rst_n_IBUF),
        .O(ALUresult0__187_carry__1_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__187_carry__1_i_14
       (.I0(ALUresult0__187_carry),
        .I1(A0[18]),
        .I2(rst_n_IBUF),
        .O(A[18]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__187_carry__1_i_15
       (.I0(ALUresult0__187_carry),
        .I1(A0[17]),
        .I2(rst_n_IBUF),
        .O(ALUresult0__187_carry__1_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__187_carry__1_i_16
       (.I0(ALUresult0__187_carry),
        .I1(A0[16]),
        .I2(rst_n_IBUF),
        .O(A[16]));
  LUT5 #(
    .INIT(32'h10311010)) 
    ALUresult0__187_carry__1_i_2
       (.I0(A[21]),
        .I1(ALUresult0__187_carry__2),
        .I2(B0[21]),
        .I3(A[20]),
        .I4(B0[20]),
        .O(register_reg_r2_0_31_18_23_3[2]));
  LUT5 #(
    .INIT(32'h20322020)) 
    ALUresult0__187_carry__1_i_3
       (.I0(ALUresult0__187_carry__1_i_13_n_0),
        .I1(ALUresult0__187_carry__2),
        .I2(B0[19]),
        .I3(A[18]),
        .I4(B0[18]),
        .O(register_reg_r2_0_31_18_23_3[1]));
  LUT5 #(
    .INIT(32'h10311010)) 
    ALUresult0__187_carry__1_i_4
       (.I0(ALUresult0__187_carry__1_i_15_n_0),
        .I1(ALUresult0__187_carry__2),
        .I2(B0[17]),
        .I3(A[16]),
        .I4(B0[16]),
        .O(register_reg_r2_0_31_18_23_3[0]));
  LUT5 #(
    .INIT(32'h05900509)) 
    ALUresult0__187_carry__1_i_5
       (.I0(A[23]),
        .I1(B0[23]),
        .I2(A[22]),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[22]),
        .O(register_reg_r2_0_31_18_23_2[3]));
  LUT5 #(
    .INIT(32'h05900509)) 
    ALUresult0__187_carry__1_i_6
       (.I0(A[21]),
        .I1(B0[21]),
        .I2(A[20]),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[20]),
        .O(register_reg_r2_0_31_18_23_2[2]));
  LUT5 #(
    .INIT(32'h0A600A06)) 
    ALUresult0__187_carry__1_i_7
       (.I0(ALUresult0__187_carry__1_i_13_n_0),
        .I1(B0[19]),
        .I2(A[18]),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[18]),
        .O(register_reg_r2_0_31_18_23_2[1]));
  LUT5 #(
    .INIT(32'h05900509)) 
    ALUresult0__187_carry__1_i_8
       (.I0(ALUresult0__187_carry__1_i_15_n_0),
        .I1(B0[17]),
        .I2(A[16]),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[16]),
        .O(register_reg_r2_0_31_18_23_2[0]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__187_carry__1_i_9
       (.I0(ALUresult0__187_carry),
        .I1(A0[23]),
        .I2(rst_n_IBUF),
        .O(A[23]));
  LUT5 #(
    .INIT(32'h00DC10FF)) 
    ALUresult0__187_carry__2_i_1
       (.I0(A[30]),
        .I1(ALUresult0__187_carry__2),
        .I2(B0[30]),
        .I3(ALUresult0__187_carry__2_i_10_n_0),
        .I4(B0[31]),
        .O(register_reg_r2_0_31_30_31_1[3]));
  LUT3 #(
    .INIT(8'hFB)) 
    ALUresult0__187_carry__2_i_10
       (.I0(ALUresult0__187_carry),
        .I1(A0[31]),
        .I2(rst_n_IBUF),
        .O(ALUresult0__187_carry__2_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__187_carry__2_i_11
       (.I0(ALUresult0__187_carry),
        .I1(A0[29]),
        .I2(rst_n_IBUF),
        .O(A[29]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__187_carry__2_i_12
       (.I0(ALUresult0__187_carry),
        .I1(A0[28]),
        .I2(rst_n_IBUF),
        .O(A[28]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__187_carry__2_i_13
       (.I0(ALUresult0__187_carry),
        .I1(A0[27]),
        .I2(rst_n_IBUF),
        .O(A[27]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__187_carry__2_i_14
       (.I0(ALUresult0__187_carry),
        .I1(A0[26]),
        .I2(rst_n_IBUF),
        .O(A[26]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ALUresult0__187_carry__2_i_15
       (.I0(B0[25]),
        .I1(ALUresult0__187_carry__2),
        .O(B[25]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ALUresult0__187_carry__2_i_16
       (.I0(B0[24]),
        .I1(ALUresult0__187_carry__2),
        .O(B[24]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__187_carry__2_i_17
       (.I0(ALUresult0__187_carry),
        .I1(A0[25]),
        .I2(rst_n_IBUF),
        .O(A[25]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__187_carry__2_i_18
       (.I0(ALUresult0__187_carry),
        .I1(A0[24]),
        .I2(rst_n_IBUF),
        .O(A[24]));
  LUT5 #(
    .INIT(32'h02230202)) 
    ALUresult0__187_carry__2_i_2
       (.I0(B0[29]),
        .I1(ALUresult0__187_carry__2),
        .I2(A[29]),
        .I3(A[28]),
        .I4(B0[28]),
        .O(register_reg_r2_0_31_30_31_1[2]));
  LUT5 #(
    .INIT(32'h10311010)) 
    ALUresult0__187_carry__2_i_3
       (.I0(A[27]),
        .I1(ALUresult0__187_carry__2),
        .I2(B0[27]),
        .I3(A[26]),
        .I4(B0[26]),
        .O(register_reg_r2_0_31_30_31_1[1]));
  LUT6 #(
    .INIT(64'hFFFF747DCCCC4444)) 
    ALUresult0__187_carry__2_i_4
       (.I0(A0[25]),
        .I1(B[25]),
        .I2(rst_n_IBUF),
        .I3(A0[24]),
        .I4(ALUresult0__187_carry),
        .I5(B[24]),
        .O(register_reg_r2_0_31_30_31_1[0]));
  LUT5 #(
    .INIT(32'h0060CC06)) 
    ALUresult0__187_carry__2_i_5
       (.I0(B0[31]),
        .I1(ALUresult0__187_carry__2_i_10_n_0),
        .I2(B0[30]),
        .I3(ALUresult0__187_carry__2),
        .I4(A[30]),
        .O(ALUresult0__187_carry__2_i_9_1[3]));
  LUT5 #(
    .INIT(32'h00903309)) 
    ALUresult0__187_carry__2_i_6
       (.I0(B0[29]),
        .I1(A[29]),
        .I2(B0[28]),
        .I3(ALUresult0__187_carry__2),
        .I4(A[28]),
        .O(ALUresult0__187_carry__2_i_9_1[2]));
  LUT5 #(
    .INIT(32'h05900509)) 
    ALUresult0__187_carry__2_i_7
       (.I0(A[27]),
        .I1(B0[27]),
        .I2(A[26]),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[26]),
        .O(ALUresult0__187_carry__2_i_9_1[1]));
  LUT5 #(
    .INIT(32'h05900509)) 
    ALUresult0__187_carry__2_i_8
       (.I0(A[25]),
        .I1(B0[25]),
        .I2(A[24]),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[24]),
        .O(ALUresult0__187_carry__2_i_9_1[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__187_carry__2_i_9
       (.I0(ALUresult0__187_carry),
        .I1(A0[30]),
        .I2(rst_n_IBUF),
        .O(A[30]));
  LUT5 #(
    .INIT(32'h10311010)) 
    ALUresult0__187_carry_i_1
       (.I0(A[7]),
        .I1(ALUresult0__187_carry__2),
        .I2(B0[7]),
        .I3(A[6]),
        .I4(B0[6]),
        .O(register_reg_r2_0_31_6_11_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__187_carry_i_10
       (.I0(ALUresult0__187_carry),
        .I1(A0[6]),
        .I2(rst_n_IBUF),
        .O(A[6]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ALUresult0__187_carry_i_11
       (.I0(B0[5]),
        .I1(ALUresult0__187_carry__2),
        .O(B[5]));
  LUT6 #(
    .INIT(64'hFBFAFFFFFA00FB00)) 
    ALUresult0__187_carry_i_2
       (.I0(ALUresult0__187_carry),
        .I1(A0[4]),
        .I2(rst_n_IBUF),
        .I3(B[4]),
        .I4(A0[5]),
        .I5(B[5]),
        .O(register_reg_r2_0_31_6_11_0[2]));
  LUT6 #(
    .INIT(64'hDDDDDDDDDD0CDD4D)) 
    ALUresult0__187_carry_i_3
       (.I0(p_0_in),
        .I1(B[3]),
        .I2(A0[3]),
        .I3(rst_n_IBUF),
        .I4(A0[2]),
        .I5(ALUresult0__187_carry),
        .O(register_reg_r2_0_31_6_11_0[1]));
  LUT6 #(
    .INIT(64'hFFFFF2FBAAAAA2A2)) 
    ALUresult0__187_carry_i_4
       (.I0(DI[1]),
        .I1(A0[1]),
        .I2(rst_n_IBUF),
        .I3(A0[0]),
        .I4(ALUresult0__187_carry),
        .I5(DI[0]),
        .O(register_reg_r2_0_31_6_11_0[0]));
  LUT5 #(
    .INIT(32'h05900509)) 
    ALUresult0__187_carry_i_5
       (.I0(A[7]),
        .I1(B0[7]),
        .I2(A[6]),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[6]),
        .O(register_reg_r2_0_31_6_11_3[3]));
  LUT6 #(
    .INIT(64'h0000090033333039)) 
    ALUresult0__187_carry_i_6
       (.I0(A0[5]),
        .I1(B[5]),
        .I2(rst_n_IBUF),
        .I3(A0[4]),
        .I4(ALUresult0__187_carry),
        .I5(B[4]),
        .O(register_reg_r2_0_31_6_11_3[2]));
  LUT6 #(
    .INIT(64'h5050505050095090)) 
    ALUresult0__187_carry_i_7
       (.I0(B[3]),
        .I1(A0[3]),
        .I2(p_0_in),
        .I3(ALUresult0__187_carry),
        .I4(A0[2]),
        .I5(rst_n_IBUF),
        .O(register_reg_r2_0_31_6_11_3[1]));
  LUT6 #(
    .INIT(64'h0505050505900509)) 
    ALUresult0__187_carry_i_8
       (.I0(DI[1]),
        .I1(A0[1]),
        .I2(DI[0]),
        .I3(ALUresult0__187_carry),
        .I4(A0[0]),
        .I5(rst_n_IBUF),
        .O(register_reg_r2_0_31_6_11_3[0]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__187_carry_i_9
       (.I0(ALUresult0__187_carry),
        .I1(A0[7]),
        .I2(rst_n_IBUF),
        .O(A[7]));
  LUT5 #(
    .INIT(32'h10311010)) 
    ALUresult0__203_carry__0_i_1
       (.I0(A[15]),
        .I1(ALUresult0__187_carry__2),
        .I2(B0[15]),
        .I3(A[14]),
        .I4(B0[14]),
        .O(register_reg_r2_0_31_12_17_1[3]));
  LUT5 #(
    .INIT(32'h10311010)) 
    ALUresult0__203_carry__0_i_2
       (.I0(A[13]),
        .I1(ALUresult0__187_carry__2),
        .I2(B0[13]),
        .I3(A[12]),
        .I4(B0[12]),
        .O(register_reg_r2_0_31_12_17_1[2]));
  LUT5 #(
    .INIT(32'h02230202)) 
    ALUresult0__203_carry__0_i_3
       (.I0(B0[11]),
        .I1(ALUresult0__187_carry__2),
        .I2(ALUresult0__187_carry__0_i_13_n_0),
        .I3(A[10]),
        .I4(B0[10]),
        .O(register_reg_r2_0_31_12_17_1[1]));
  LUT5 #(
    .INIT(32'h02230202)) 
    ALUresult0__203_carry__0_i_4
       (.I0(B0[9]),
        .I1(ALUresult0__187_carry__2),
        .I2(ALUresult0__187_carry__0_i_15_n_0),
        .I3(A[8]),
        .I4(B0[8]),
        .O(register_reg_r2_0_31_12_17_1[0]));
  LUT5 #(
    .INIT(32'h05900509)) 
    ALUresult0__203_carry__0_i_5
       (.I0(A[15]),
        .I1(B0[15]),
        .I2(A[14]),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[14]),
        .O(register_reg_r2_0_31_12_17_0[3]));
  LUT5 #(
    .INIT(32'h05900509)) 
    ALUresult0__203_carry__0_i_6
       (.I0(A[13]),
        .I1(B0[13]),
        .I2(A[12]),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[12]),
        .O(register_reg_r2_0_31_12_17_0[2]));
  LUT5 #(
    .INIT(32'h00903309)) 
    ALUresult0__203_carry__0_i_7
       (.I0(B0[11]),
        .I1(ALUresult0__187_carry__0_i_13_n_0),
        .I2(B0[10]),
        .I3(ALUresult0__187_carry__2),
        .I4(A[10]),
        .O(register_reg_r2_0_31_12_17_0[1]));
  LUT5 #(
    .INIT(32'h00903309)) 
    ALUresult0__203_carry__0_i_8
       (.I0(B0[9]),
        .I1(ALUresult0__187_carry__0_i_15_n_0),
        .I2(B0[8]),
        .I3(ALUresult0__187_carry__2),
        .I4(A[8]),
        .O(register_reg_r2_0_31_12_17_0[0]));
  LUT5 #(
    .INIT(32'h10311010)) 
    ALUresult0__203_carry__1_i_1
       (.I0(A[23]),
        .I1(ALUresult0__187_carry__2),
        .I2(B0[23]),
        .I3(A[22]),
        .I4(B0[22]),
        .O(register_reg_r2_0_31_18_23_1[3]));
  LUT5 #(
    .INIT(32'h10311010)) 
    ALUresult0__203_carry__1_i_2
       (.I0(A[21]),
        .I1(ALUresult0__187_carry__2),
        .I2(B0[21]),
        .I3(A[20]),
        .I4(B0[20]),
        .O(register_reg_r2_0_31_18_23_1[2]));
  LUT5 #(
    .INIT(32'h20322020)) 
    ALUresult0__203_carry__1_i_3
       (.I0(ALUresult0__187_carry__1_i_13_n_0),
        .I1(ALUresult0__187_carry__2),
        .I2(B0[19]),
        .I3(A[18]),
        .I4(B0[18]),
        .O(register_reg_r2_0_31_18_23_1[1]));
  LUT5 #(
    .INIT(32'h10311010)) 
    ALUresult0__203_carry__1_i_4
       (.I0(ALUresult0__187_carry__1_i_15_n_0),
        .I1(ALUresult0__187_carry__2),
        .I2(B0[17]),
        .I3(A[16]),
        .I4(B0[16]),
        .O(register_reg_r2_0_31_18_23_1[0]));
  LUT5 #(
    .INIT(32'h05900509)) 
    ALUresult0__203_carry__1_i_5
       (.I0(A[23]),
        .I1(B0[23]),
        .I2(A[22]),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[22]),
        .O(register_reg_r2_0_31_18_23_0[3]));
  LUT5 #(
    .INIT(32'h05900509)) 
    ALUresult0__203_carry__1_i_6
       (.I0(A[21]),
        .I1(B0[21]),
        .I2(A[20]),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[20]),
        .O(register_reg_r2_0_31_18_23_0[2]));
  LUT5 #(
    .INIT(32'h0A600A06)) 
    ALUresult0__203_carry__1_i_7
       (.I0(ALUresult0__187_carry__1_i_13_n_0),
        .I1(B0[19]),
        .I2(A[18]),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[18]),
        .O(register_reg_r2_0_31_18_23_0[1]));
  LUT5 #(
    .INIT(32'h05900509)) 
    ALUresult0__203_carry__1_i_8
       (.I0(ALUresult0__187_carry__1_i_15_n_0),
        .I1(B0[17]),
        .I2(A[16]),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[16]),
        .O(register_reg_r2_0_31_18_23_0[0]));
  LUT5 #(
    .INIT(32'h33101000)) 
    ALUresult0__203_carry__2_i_1
       (.I0(A[30]),
        .I1(ALUresult0__187_carry__2),
        .I2(B0[30]),
        .I3(ALUresult0__187_carry__2_i_10_n_0),
        .I4(B0[31]),
        .O(register_reg_r2_0_31_30_31_0[2]));
  LUT5 #(
    .INIT(32'h02230202)) 
    ALUresult0__203_carry__2_i_2
       (.I0(B0[29]),
        .I1(ALUresult0__187_carry__2),
        .I2(A[29]),
        .I3(A[28]),
        .I4(B0[28]),
        .O(register_reg_r2_0_31_30_31_0[1]));
  LUT5 #(
    .INIT(32'h10311010)) 
    ALUresult0__203_carry__2_i_3
       (.I0(A[27]),
        .I1(ALUresult0__187_carry__2),
        .I2(B0[27]),
        .I3(A[26]),
        .I4(B0[26]),
        .O(register_reg_r2_0_31_30_31_0[0]));
  LUT5 #(
    .INIT(32'h0060CC06)) 
    ALUresult0__203_carry__2_i_4
       (.I0(B0[31]),
        .I1(ALUresult0__187_carry__2_i_10_n_0),
        .I2(B0[30]),
        .I3(ALUresult0__187_carry__2),
        .I4(A[30]),
        .O(ALUresult0__187_carry__2_i_9_0[3]));
  LUT5 #(
    .INIT(32'h00903309)) 
    ALUresult0__203_carry__2_i_5
       (.I0(B0[29]),
        .I1(A[29]),
        .I2(B0[28]),
        .I3(ALUresult0__187_carry__2),
        .I4(A[28]),
        .O(ALUresult0__187_carry__2_i_9_0[2]));
  LUT5 #(
    .INIT(32'h05900509)) 
    ALUresult0__203_carry__2_i_6
       (.I0(A[27]),
        .I1(B0[27]),
        .I2(A[26]),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[26]),
        .O(ALUresult0__187_carry__2_i_9_0[1]));
  LUT5 #(
    .INIT(32'h05900509)) 
    ALUresult0__203_carry__2_i_7
       (.I0(A[25]),
        .I1(B0[25]),
        .I2(A[24]),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[24]),
        .O(ALUresult0__187_carry__2_i_9_0[0]));
  LUT5 #(
    .INIT(32'h10311010)) 
    ALUresult0__203_carry_i_1
       (.I0(A[7]),
        .I1(ALUresult0__187_carry__2),
        .I2(B0[7]),
        .I3(A[6]),
        .I4(B0[6]),
        .O(register_reg_r2_0_31_6_11_2));
  LUT5 #(
    .INIT(32'h05900509)) 
    ALUresult0__203_carry_i_2
       (.I0(A[7]),
        .I1(B0[7]),
        .I2(A[6]),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[6]),
        .O(register_reg_r2_0_31_6_11_1[3]));
  LUT6 #(
    .INIT(64'h0000090033333039)) 
    ALUresult0__203_carry_i_3
       (.I0(A0[5]),
        .I1(B[5]),
        .I2(rst_n_IBUF),
        .I3(A0[4]),
        .I4(ALUresult0__187_carry),
        .I5(B[4]),
        .O(register_reg_r2_0_31_6_11_1[2]));
  LUT6 #(
    .INIT(64'h5050505050095090)) 
    ALUresult0__203_carry_i_4
       (.I0(B[3]),
        .I1(A0[3]),
        .I2(p_0_in),
        .I3(ALUresult0__187_carry),
        .I4(A0[2]),
        .I5(rst_n_IBUF),
        .O(register_reg_r2_0_31_6_11_1[1]));
  LUT6 #(
    .INIT(64'h0505050505900509)) 
    ALUresult0__203_carry_i_5
       (.I0(DI[1]),
        .I1(A0[1]),
        .I2(DI[0]),
        .I3(ALUresult0__187_carry),
        .I4(A0[0]),
        .I5(rst_n_IBUF),
        .O(register_reg_r2_0_31_6_11_1[0]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__93_carry__0_i_1
       (.I0(ALUresult0__187_carry),
        .I1(A0[7]),
        .I2(rst_n_IBUF),
        .O(rst_n_10[3]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__93_carry__0_i_2
       (.I0(ALUresult0__187_carry),
        .I1(A0[6]),
        .I2(rst_n_IBUF),
        .O(rst_n_10[2]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__93_carry__0_i_3
       (.I0(ALUresult0__187_carry),
        .I1(A0[5]),
        .I2(rst_n_IBUF),
        .O(rst_n_10[1]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__93_carry__0_i_4
       (.I0(ALUresult0__187_carry),
        .I1(A0[4]),
        .I2(rst_n_IBUF),
        .O(rst_n_10[0]));
  LUT5 #(
    .INIT(32'hFB04FBFB)) 
    ALUresult0__93_carry__0_i_5
       (.I0(rst_n_IBUF),
        .I1(A0[7]),
        .I2(ALUresult0__187_carry),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[7]),
        .O(rst_n_20[3]));
  LUT5 #(
    .INIT(32'hFB04FBFB)) 
    ALUresult0__93_carry__0_i_6
       (.I0(rst_n_IBUF),
        .I1(A0[6]),
        .I2(ALUresult0__187_carry),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[6]),
        .O(rst_n_20[2]));
  LUT5 #(
    .INIT(32'hFB04FBFB)) 
    ALUresult0__93_carry__0_i_7
       (.I0(rst_n_IBUF),
        .I1(A0[5]),
        .I2(ALUresult0__187_carry),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[5]),
        .O(rst_n_20[1]));
  LUT4 #(
    .INIT(16'h04FB)) 
    ALUresult0__93_carry__0_i_8
       (.I0(rst_n_IBUF),
        .I1(A0[4]),
        .I2(ALUresult0__187_carry),
        .I3(B[4]),
        .O(rst_n_20[0]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__93_carry__1_i_1
       (.I0(rst_n_IBUF),
        .I1(A0[11]),
        .I2(ALUresult0__187_carry),
        .O(rst_n_11[3]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__93_carry__1_i_2
       (.I0(ALUresult0__187_carry),
        .I1(A0[10]),
        .I2(rst_n_IBUF),
        .O(rst_n_11[2]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__93_carry__1_i_3
       (.I0(rst_n_IBUF),
        .I1(A0[9]),
        .I2(ALUresult0__187_carry),
        .O(rst_n_11[1]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__93_carry__1_i_4
       (.I0(ALUresult0__187_carry),
        .I1(A0[8]),
        .I2(rst_n_IBUF),
        .O(rst_n_11[0]));
  LUT5 #(
    .INIT(32'hDDDDD2DD)) 
    ALUresult0__93_carry__1_i_5
       (.I0(B0[11]),
        .I1(ALUresult0__187_carry__2),
        .I2(rst_n_IBUF),
        .I3(A0[11]),
        .I4(ALUresult0__187_carry),
        .O(rst_n_18[3]));
  LUT5 #(
    .INIT(32'hDDDDD2DD)) 
    ALUresult0__93_carry__1_i_6
       (.I0(B0[10]),
        .I1(ALUresult0__187_carry__2),
        .I2(ALUresult0__187_carry),
        .I3(A0[10]),
        .I4(rst_n_IBUF),
        .O(rst_n_18[2]));
  LUT5 #(
    .INIT(32'hDDDDD2DD)) 
    ALUresult0__93_carry__1_i_7
       (.I0(B0[9]),
        .I1(ALUresult0__187_carry__2),
        .I2(rst_n_IBUF),
        .I3(A0[9]),
        .I4(ALUresult0__187_carry),
        .O(rst_n_18[1]));
  LUT5 #(
    .INIT(32'hDDDDD2DD)) 
    ALUresult0__93_carry__1_i_8
       (.I0(B0[8]),
        .I1(ALUresult0__187_carry__2),
        .I2(ALUresult0__187_carry),
        .I3(A0[8]),
        .I4(rst_n_IBUF),
        .O(rst_n_18[0]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__93_carry__2_i_1
       (.I0(ALUresult0__187_carry),
        .I1(A0[15]),
        .I2(rst_n_IBUF),
        .O(rst_n_12[3]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__93_carry__2_i_2
       (.I0(ALUresult0__187_carry),
        .I1(A0[14]),
        .I2(rst_n_IBUF),
        .O(rst_n_12[2]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__93_carry__2_i_3
       (.I0(ALUresult0__187_carry),
        .I1(A0[13]),
        .I2(rst_n_IBUF),
        .O(rst_n_12[1]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__93_carry__2_i_4
       (.I0(ALUresult0__187_carry),
        .I1(A0[12]),
        .I2(rst_n_IBUF),
        .O(rst_n_12[0]));
  LUT5 #(
    .INIT(32'hFB04FBFB)) 
    ALUresult0__93_carry__2_i_5
       (.I0(rst_n_IBUF),
        .I1(A0[15]),
        .I2(ALUresult0__187_carry),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[15]),
        .O(rst_n_28[3]));
  LUT5 #(
    .INIT(32'hFB04FBFB)) 
    ALUresult0__93_carry__2_i_6
       (.I0(rst_n_IBUF),
        .I1(A0[14]),
        .I2(ALUresult0__187_carry),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[14]),
        .O(rst_n_28[2]));
  LUT5 #(
    .INIT(32'hFB04FBFB)) 
    ALUresult0__93_carry__2_i_7
       (.I0(rst_n_IBUF),
        .I1(A0[13]),
        .I2(ALUresult0__187_carry),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[13]),
        .O(rst_n_28[1]));
  LUT5 #(
    .INIT(32'hFB04FBFB)) 
    ALUresult0__93_carry__2_i_8
       (.I0(rst_n_IBUF),
        .I1(A0[12]),
        .I2(ALUresult0__187_carry),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[12]),
        .O(rst_n_28[0]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__93_carry__3_i_1
       (.I0(rst_n_IBUF),
        .I1(A0[19]),
        .I2(ALUresult0__187_carry),
        .O(rst_n_0[3]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__93_carry__3_i_2
       (.I0(ALUresult0__187_carry),
        .I1(A0[18]),
        .I2(rst_n_IBUF),
        .O(rst_n_0[2]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__93_carry__3_i_3
       (.I0(ALUresult0__187_carry),
        .I1(A0[17]),
        .I2(rst_n_IBUF),
        .O(rst_n_0[1]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__93_carry__3_i_4
       (.I0(ALUresult0__187_carry),
        .I1(A0[16]),
        .I2(rst_n_IBUF),
        .O(rst_n_0[0]));
  LUT5 #(
    .INIT(32'hFB04FBFB)) 
    ALUresult0__93_carry__3_i_5
       (.I0(rst_n_IBUF),
        .I1(A0[19]),
        .I2(ALUresult0__187_carry),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[19]),
        .O(rst_n_26[3]));
  LUT5 #(
    .INIT(32'hFB04FBFB)) 
    ALUresult0__93_carry__3_i_6
       (.I0(rst_n_IBUF),
        .I1(A0[18]),
        .I2(ALUresult0__187_carry),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[18]),
        .O(rst_n_26[2]));
  LUT5 #(
    .INIT(32'hFB04FBFB)) 
    ALUresult0__93_carry__3_i_7
       (.I0(rst_n_IBUF),
        .I1(A0[17]),
        .I2(ALUresult0__187_carry),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[17]),
        .O(rst_n_26[1]));
  LUT5 #(
    .INIT(32'hFB04FBFB)) 
    ALUresult0__93_carry__3_i_8
       (.I0(rst_n_IBUF),
        .I1(A0[16]),
        .I2(ALUresult0__187_carry),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[16]),
        .O(rst_n_26[0]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__93_carry__4_i_1
       (.I0(ALUresult0__187_carry),
        .I1(A0[23]),
        .I2(rst_n_IBUF),
        .O(rst_n_13[3]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__93_carry__4_i_2
       (.I0(ALUresult0__187_carry),
        .I1(A0[22]),
        .I2(rst_n_IBUF),
        .O(rst_n_13[2]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__93_carry__4_i_3
       (.I0(ALUresult0__187_carry),
        .I1(A0[21]),
        .I2(rst_n_IBUF),
        .O(rst_n_13[1]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__93_carry__4_i_4
       (.I0(ALUresult0__187_carry),
        .I1(A0[20]),
        .I2(rst_n_IBUF),
        .O(rst_n_13[0]));
  LUT5 #(
    .INIT(32'hFB04FBFB)) 
    ALUresult0__93_carry__4_i_5
       (.I0(rst_n_IBUF),
        .I1(A0[23]),
        .I2(ALUresult0__187_carry),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[23]),
        .O(rst_n_24[3]));
  LUT5 #(
    .INIT(32'hFB04FBFB)) 
    ALUresult0__93_carry__4_i_6
       (.I0(rst_n_IBUF),
        .I1(A0[22]),
        .I2(ALUresult0__187_carry),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[22]),
        .O(rst_n_24[2]));
  LUT5 #(
    .INIT(32'hFB04FBFB)) 
    ALUresult0__93_carry__4_i_7
       (.I0(rst_n_IBUF),
        .I1(A0[21]),
        .I2(ALUresult0__187_carry),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[21]),
        .O(rst_n_24[1]));
  LUT5 #(
    .INIT(32'hFB04FBFB)) 
    ALUresult0__93_carry__4_i_8
       (.I0(rst_n_IBUF),
        .I1(A0[20]),
        .I2(ALUresult0__187_carry),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[20]),
        .O(rst_n_24[0]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__93_carry__5_i_1
       (.I0(ALUresult0__187_carry),
        .I1(A0[27]),
        .I2(rst_n_IBUF),
        .O(rst_n_14[3]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__93_carry__5_i_2
       (.I0(ALUresult0__187_carry),
        .I1(A0[26]),
        .I2(rst_n_IBUF),
        .O(rst_n_14[2]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__93_carry__5_i_3
       (.I0(ALUresult0__187_carry),
        .I1(A0[25]),
        .I2(rst_n_IBUF),
        .O(rst_n_14[1]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__93_carry__5_i_4
       (.I0(ALUresult0__187_carry),
        .I1(A0[24]),
        .I2(rst_n_IBUF),
        .O(rst_n_14[0]));
  LUT5 #(
    .INIT(32'hFB04FBFB)) 
    ALUresult0__93_carry__5_i_5
       (.I0(rst_n_IBUF),
        .I1(A0[27]),
        .I2(ALUresult0__187_carry),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[27]),
        .O(rst_n_22[3]));
  LUT5 #(
    .INIT(32'hFB04FBFB)) 
    ALUresult0__93_carry__5_i_6
       (.I0(rst_n_IBUF),
        .I1(A0[26]),
        .I2(ALUresult0__187_carry),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[26]),
        .O(rst_n_22[2]));
  LUT5 #(
    .INIT(32'hFB04FBFB)) 
    ALUresult0__93_carry__5_i_7
       (.I0(rst_n_IBUF),
        .I1(A0[25]),
        .I2(ALUresult0__187_carry),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[25]),
        .O(rst_n_22[1]));
  LUT5 #(
    .INIT(32'hFB04FBFB)) 
    ALUresult0__93_carry__5_i_8
       (.I0(rst_n_IBUF),
        .I1(A0[24]),
        .I2(ALUresult0__187_carry),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[24]),
        .O(rst_n_22[0]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__93_carry__6_i_1
       (.I0(ALUresult0__187_carry),
        .I1(A0[30]),
        .I2(rst_n_IBUF),
        .O(rst_n_15[2]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__93_carry__6_i_2
       (.I0(ALUresult0__187_carry),
        .I1(A0[29]),
        .I2(rst_n_IBUF),
        .O(rst_n_15[1]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__93_carry__6_i_3
       (.I0(ALUresult0__187_carry),
        .I1(A0[28]),
        .I2(rst_n_IBUF),
        .O(rst_n_15[0]));
  LUT5 #(
    .INIT(32'hFB04FBFB)) 
    ALUresult0__93_carry__6_i_4
       (.I0(rst_n_IBUF),
        .I1(A0[31]),
        .I2(ALUresult0__187_carry),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[31]),
        .O(rst_n_2[3]));
  LUT5 #(
    .INIT(32'hDDDDD2DD)) 
    ALUresult0__93_carry__6_i_5
       (.I0(B0[30]),
        .I1(ALUresult0__187_carry__2),
        .I2(ALUresult0__187_carry),
        .I3(A0[30]),
        .I4(rst_n_IBUF),
        .O(rst_n_2[2]));
  LUT5 #(
    .INIT(32'hDDDDD2DD)) 
    ALUresult0__93_carry__6_i_6
       (.I0(B0[29]),
        .I1(ALUresult0__187_carry__2),
        .I2(ALUresult0__187_carry),
        .I3(A0[29]),
        .I4(rst_n_IBUF),
        .O(rst_n_2[1]));
  LUT5 #(
    .INIT(32'hDDDDD2DD)) 
    ALUresult0__93_carry__6_i_7
       (.I0(B0[28]),
        .I1(ALUresult0__187_carry__2),
        .I2(ALUresult0__187_carry),
        .I3(A0[28]),
        .I4(rst_n_IBUF),
        .O(rst_n_2[0]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__93_carry_i_1
       (.I0(rst_n_IBUF),
        .I1(A0[3]),
        .I2(ALUresult0__187_carry),
        .O(rst_n[3]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0__93_carry_i_2
       (.I0(ALUresult0__187_carry),
        .I1(A0[2]),
        .I2(rst_n_IBUF),
        .O(rst_n[2]));
  LUT1 #(
    .INIT(2'h1)) 
    ALUresult0__93_carry_i_3
       (.I0(DI[1]),
        .O(rst_n[1]));
  LUT1 #(
    .INIT(2'h1)) 
    ALUresult0__93_carry_i_4
       (.I0(DI[0]),
        .O(rst_n[0]));
  LUT4 #(
    .INIT(16'h5565)) 
    ALUresult0__93_carry_i_5
       (.I0(B[3]),
        .I1(rst_n_IBUF),
        .I2(A0[3]),
        .I3(ALUresult0__187_carry),
        .O(rst_n_17[3]));
  LUT4 #(
    .INIT(16'hAA9A)) 
    ALUresult0__93_carry_i_6
       (.I0(p_0_in),
        .I1(ALUresult0__187_carry),
        .I2(A0[2]),
        .I3(rst_n_IBUF),
        .O(rst_n_17[2]));
  LUT4 #(
    .INIT(16'h5565)) 
    ALUresult0__93_carry_i_7
       (.I0(DI[1]),
        .I1(rst_n_IBUF),
        .I2(A0[1]),
        .I3(ALUresult0__187_carry),
        .O(rst_n_17[1]));
  LUT4 #(
    .INIT(16'h5565)) 
    ALUresult0__93_carry_i_8
       (.I0(DI[0]),
        .I1(ALUresult0__187_carry),
        .I2(A0[0]),
        .I3(rst_n_IBUF),
        .O(rst_n_17[0]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0_carry__0_i_1
       (.I0(ALUresult0__187_carry),
        .I1(A0[7]),
        .I2(rst_n_IBUF),
        .O(rst_n_3[3]));
  LUT5 #(
    .INIT(32'h00000001)) 
    ALUresult0_carry__0_i_10
       (.I0(douta[12]),
        .I1(douta[11]),
        .I2(douta[15]),
        .I3(douta[14]),
        .I4(douta[13]),
        .O(ALUresult0_carry__0_i_10_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0_carry__0_i_2
       (.I0(ALUresult0__187_carry),
        .I1(A0[6]),
        .I2(rst_n_IBUF),
        .O(rst_n_3[2]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0_carry__0_i_3
       (.I0(ALUresult0__187_carry),
        .I1(A0[5]),
        .I2(rst_n_IBUF),
        .O(rst_n_3[1]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0_carry__0_i_4
       (.I0(ALUresult0__187_carry),
        .I1(A0[4]),
        .I2(rst_n_IBUF),
        .O(rst_n_3[0]));
  LUT5 #(
    .INIT(32'h22222D22)) 
    ALUresult0_carry__0_i_5
       (.I0(B0[7]),
        .I1(ALUresult0__187_carry__2),
        .I2(ALUresult0__187_carry),
        .I3(A0[7]),
        .I4(rst_n_IBUF),
        .O(rst_n_19[3]));
  LUT5 #(
    .INIT(32'h22222D22)) 
    ALUresult0_carry__0_i_6
       (.I0(B0[6]),
        .I1(ALUresult0__187_carry__2),
        .I2(ALUresult0__187_carry),
        .I3(A0[6]),
        .I4(rst_n_IBUF),
        .O(rst_n_19[2]));
  LUT5 #(
    .INIT(32'h22222D22)) 
    ALUresult0_carry__0_i_7
       (.I0(B0[5]),
        .I1(ALUresult0__187_carry__2),
        .I2(ALUresult0__187_carry),
        .I3(A0[5]),
        .I4(rst_n_IBUF),
        .O(rst_n_19[1]));
  LUT4 #(
    .INIT(16'hAA9A)) 
    ALUresult0_carry__0_i_8
       (.I0(B[4]),
        .I1(ALUresult0__187_carry),
        .I2(A0[4]),
        .I3(rst_n_IBUF),
        .O(rst_n_19[0]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0_carry__0_i_9
       (.I0(ALUresult0_carry__0_i_10_n_0),
        .I1(B0[4]),
        .I2(rst_n_IBUF),
        .O(B[4]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0_carry__1_i_1
       (.I0(rst_n_IBUF),
        .I1(A0[11]),
        .I2(ALUresult0__187_carry),
        .O(rst_n_4[3]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0_carry__1_i_2
       (.I0(ALUresult0__187_carry),
        .I1(A0[10]),
        .I2(rst_n_IBUF),
        .O(rst_n_4[2]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0_carry__1_i_3
       (.I0(rst_n_IBUF),
        .I1(A0[9]),
        .I2(ALUresult0__187_carry),
        .O(rst_n_4[1]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0_carry__1_i_4
       (.I0(ALUresult0__187_carry),
        .I1(A0[8]),
        .I2(rst_n_IBUF),
        .O(rst_n_4[0]));
  LUT5 #(
    .INIT(32'h04FB0404)) 
    ALUresult0_carry__1_i_5
       (.I0(ALUresult0__187_carry),
        .I1(A0[11]),
        .I2(rst_n_IBUF),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[11]),
        .O(rst_n_16[3]));
  LUT5 #(
    .INIT(32'h04FB0404)) 
    ALUresult0_carry__1_i_6
       (.I0(rst_n_IBUF),
        .I1(A0[10]),
        .I2(ALUresult0__187_carry),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[10]),
        .O(rst_n_16[2]));
  LUT5 #(
    .INIT(32'h04FB0404)) 
    ALUresult0_carry__1_i_7
       (.I0(ALUresult0__187_carry),
        .I1(A0[9]),
        .I2(rst_n_IBUF),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[9]),
        .O(rst_n_16[1]));
  LUT5 #(
    .INIT(32'h04FB0404)) 
    ALUresult0_carry__1_i_8
       (.I0(rst_n_IBUF),
        .I1(A0[8]),
        .I2(ALUresult0__187_carry),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[8]),
        .O(rst_n_16[0]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0_carry__2_i_1
       (.I0(ALUresult0__187_carry),
        .I1(A0[15]),
        .I2(rst_n_IBUF),
        .O(rst_n_5[3]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0_carry__2_i_2
       (.I0(ALUresult0__187_carry),
        .I1(A0[14]),
        .I2(rst_n_IBUF),
        .O(rst_n_5[2]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0_carry__2_i_3
       (.I0(ALUresult0__187_carry),
        .I1(A0[13]),
        .I2(rst_n_IBUF),
        .O(rst_n_5[1]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0_carry__2_i_4
       (.I0(ALUresult0__187_carry),
        .I1(A0[12]),
        .I2(rst_n_IBUF),
        .O(rst_n_5[0]));
  LUT5 #(
    .INIT(32'h22222D22)) 
    ALUresult0_carry__2_i_5
       (.I0(B0[15]),
        .I1(ALUresult0__187_carry__2),
        .I2(ALUresult0__187_carry),
        .I3(A0[15]),
        .I4(rst_n_IBUF),
        .O(rst_n_27[3]));
  LUT5 #(
    .INIT(32'h22222D22)) 
    ALUresult0_carry__2_i_6
       (.I0(B0[14]),
        .I1(ALUresult0__187_carry__2),
        .I2(ALUresult0__187_carry),
        .I3(A0[14]),
        .I4(rst_n_IBUF),
        .O(rst_n_27[2]));
  LUT5 #(
    .INIT(32'h22222D22)) 
    ALUresult0_carry__2_i_7
       (.I0(B0[13]),
        .I1(ALUresult0__187_carry__2),
        .I2(ALUresult0__187_carry),
        .I3(A0[13]),
        .I4(rst_n_IBUF),
        .O(rst_n_27[1]));
  LUT5 #(
    .INIT(32'h22222D22)) 
    ALUresult0_carry__2_i_8
       (.I0(B0[12]),
        .I1(ALUresult0__187_carry__2),
        .I2(ALUresult0__187_carry),
        .I3(A0[12]),
        .I4(rst_n_IBUF),
        .O(rst_n_27[0]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0_carry__3_i_1
       (.I0(rst_n_IBUF),
        .I1(A0[19]),
        .I2(ALUresult0__187_carry),
        .O(rst_n_6[3]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0_carry__3_i_2
       (.I0(ALUresult0__187_carry),
        .I1(A0[18]),
        .I2(rst_n_IBUF),
        .O(rst_n_6[2]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0_carry__3_i_3
       (.I0(ALUresult0__187_carry),
        .I1(A0[17]),
        .I2(rst_n_IBUF),
        .O(rst_n_6[1]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0_carry__3_i_4
       (.I0(ALUresult0__187_carry),
        .I1(A0[16]),
        .I2(rst_n_IBUF),
        .O(rst_n_6[0]));
  LUT5 #(
    .INIT(32'h22222D22)) 
    ALUresult0_carry__3_i_5
       (.I0(B0[19]),
        .I1(ALUresult0__187_carry__2),
        .I2(ALUresult0__187_carry),
        .I3(A0[19]),
        .I4(rst_n_IBUF),
        .O(rst_n_25[3]));
  LUT5 #(
    .INIT(32'h22222D22)) 
    ALUresult0_carry__3_i_6
       (.I0(B0[18]),
        .I1(ALUresult0__187_carry__2),
        .I2(ALUresult0__187_carry),
        .I3(A0[18]),
        .I4(rst_n_IBUF),
        .O(rst_n_25[2]));
  LUT5 #(
    .INIT(32'h22222D22)) 
    ALUresult0_carry__3_i_7
       (.I0(B0[17]),
        .I1(ALUresult0__187_carry__2),
        .I2(ALUresult0__187_carry),
        .I3(A0[17]),
        .I4(rst_n_IBUF),
        .O(rst_n_25[1]));
  LUT5 #(
    .INIT(32'h22222D22)) 
    ALUresult0_carry__3_i_8
       (.I0(B0[16]),
        .I1(ALUresult0__187_carry__2),
        .I2(ALUresult0__187_carry),
        .I3(A0[16]),
        .I4(rst_n_IBUF),
        .O(rst_n_25[0]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0_carry__4_i_1
       (.I0(ALUresult0__187_carry),
        .I1(A0[23]),
        .I2(rst_n_IBUF),
        .O(rst_n_7[3]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0_carry__4_i_2
       (.I0(ALUresult0__187_carry),
        .I1(A0[22]),
        .I2(rst_n_IBUF),
        .O(rst_n_7[2]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0_carry__4_i_3
       (.I0(ALUresult0__187_carry),
        .I1(A0[21]),
        .I2(rst_n_IBUF),
        .O(rst_n_7[1]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0_carry__4_i_4
       (.I0(ALUresult0__187_carry),
        .I1(A0[20]),
        .I2(rst_n_IBUF),
        .O(rst_n_7[0]));
  LUT5 #(
    .INIT(32'h22222D22)) 
    ALUresult0_carry__4_i_5
       (.I0(B0[23]),
        .I1(ALUresult0__187_carry__2),
        .I2(ALUresult0__187_carry),
        .I3(A0[23]),
        .I4(rst_n_IBUF),
        .O(rst_n_23[3]));
  LUT5 #(
    .INIT(32'h22222D22)) 
    ALUresult0_carry__4_i_6
       (.I0(B0[22]),
        .I1(ALUresult0__187_carry__2),
        .I2(ALUresult0__187_carry),
        .I3(A0[22]),
        .I4(rst_n_IBUF),
        .O(rst_n_23[2]));
  LUT5 #(
    .INIT(32'h22222D22)) 
    ALUresult0_carry__4_i_7
       (.I0(B0[21]),
        .I1(ALUresult0__187_carry__2),
        .I2(ALUresult0__187_carry),
        .I3(A0[21]),
        .I4(rst_n_IBUF),
        .O(rst_n_23[1]));
  LUT5 #(
    .INIT(32'h22222D22)) 
    ALUresult0_carry__4_i_8
       (.I0(B0[20]),
        .I1(ALUresult0__187_carry__2),
        .I2(ALUresult0__187_carry),
        .I3(A0[20]),
        .I4(rst_n_IBUF),
        .O(rst_n_23[0]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0_carry__5_i_1
       (.I0(ALUresult0__187_carry),
        .I1(A0[27]),
        .I2(rst_n_IBUF),
        .O(rst_n_8[3]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0_carry__5_i_2
       (.I0(ALUresult0__187_carry),
        .I1(A0[26]),
        .I2(rst_n_IBUF),
        .O(rst_n_8[2]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0_carry__5_i_3
       (.I0(ALUresult0__187_carry),
        .I1(A0[25]),
        .I2(rst_n_IBUF),
        .O(rst_n_8[1]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0_carry__5_i_4
       (.I0(ALUresult0__187_carry),
        .I1(A0[24]),
        .I2(rst_n_IBUF),
        .O(rst_n_8[0]));
  LUT5 #(
    .INIT(32'h22222D22)) 
    ALUresult0_carry__5_i_5
       (.I0(B0[27]),
        .I1(ALUresult0__187_carry__2),
        .I2(ALUresult0__187_carry),
        .I3(A0[27]),
        .I4(rst_n_IBUF),
        .O(rst_n_21[3]));
  LUT5 #(
    .INIT(32'h22222D22)) 
    ALUresult0_carry__5_i_6
       (.I0(B0[26]),
        .I1(ALUresult0__187_carry__2),
        .I2(ALUresult0__187_carry),
        .I3(A0[26]),
        .I4(rst_n_IBUF),
        .O(rst_n_21[2]));
  LUT5 #(
    .INIT(32'h22222D22)) 
    ALUresult0_carry__5_i_7
       (.I0(B0[25]),
        .I1(ALUresult0__187_carry__2),
        .I2(ALUresult0__187_carry),
        .I3(A0[25]),
        .I4(rst_n_IBUF),
        .O(rst_n_21[1]));
  LUT5 #(
    .INIT(32'h22222D22)) 
    ALUresult0_carry__5_i_8
       (.I0(B0[24]),
        .I1(ALUresult0__187_carry__2),
        .I2(ALUresult0__187_carry),
        .I3(A0[24]),
        .I4(rst_n_IBUF),
        .O(rst_n_21[0]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0_carry__6_i_1
       (.I0(ALUresult0__187_carry),
        .I1(A0[30]),
        .I2(rst_n_IBUF),
        .O(rst_n_9[2]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0_carry__6_i_2
       (.I0(ALUresult0__187_carry),
        .I1(A0[29]),
        .I2(rst_n_IBUF),
        .O(rst_n_9[1]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0_carry__6_i_3
       (.I0(ALUresult0__187_carry),
        .I1(A0[28]),
        .I2(rst_n_IBUF),
        .O(rst_n_9[0]));
  LUT5 #(
    .INIT(32'h22222D22)) 
    ALUresult0_carry__6_i_4
       (.I0(B0[31]),
        .I1(ALUresult0__187_carry__2),
        .I2(ALUresult0__187_carry),
        .I3(A0[31]),
        .I4(rst_n_IBUF),
        .O(rst_n_1[3]));
  LUT5 #(
    .INIT(32'h04FB0404)) 
    ALUresult0_carry__6_i_5
       (.I0(rst_n_IBUF),
        .I1(A0[30]),
        .I2(ALUresult0__187_carry),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[30]),
        .O(rst_n_1[2]));
  LUT5 #(
    .INIT(32'h04FB0404)) 
    ALUresult0_carry__6_i_6
       (.I0(rst_n_IBUF),
        .I1(A0[29]),
        .I2(ALUresult0__187_carry),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[29]),
        .O(rst_n_1[1]));
  LUT5 #(
    .INIT(32'h04FB0404)) 
    ALUresult0_carry__6_i_7
       (.I0(rst_n_IBUF),
        .I1(A0[28]),
        .I2(ALUresult0__187_carry),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[28]),
        .O(rst_n_1[0]));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0_carry_i_1
       (.I0(rst_n_IBUF),
        .I1(A0[3]),
        .I2(ALUresult0__187_carry),
        .O(DI[3]));
  LUT2 #(
    .INIT(4'h2)) 
    ALUresult0_carry_i_11
       (.I0(B0[3]),
        .I1(ALUresult0__187_carry__2),
        .O(B[3]));
  LUT2 #(
    .INIT(4'hB)) 
    ALUresult0_carry_i_12
       (.I0(ALUresult0__187_carry__2),
        .I1(B0[2]),
        .O(p_0_in));
  LUT3 #(
    .INIT(8'h04)) 
    ALUresult0_carry_i_2
       (.I0(ALUresult0__187_carry),
        .I1(A0[2]),
        .I2(rst_n_IBUF),
        .O(DI[2]));
  LUT2 #(
    .INIT(4'h2)) 
    ALUresult0_carry_i_3
       (.I0(B0[1]),
        .I1(ALUresult0__187_carry__2),
        .O(DI[1]));
  LUT2 #(
    .INIT(4'h2)) 
    ALUresult0_carry_i_4
       (.I0(B0[0]),
        .I1(ALUresult0__187_carry__2),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'hFB04)) 
    ALUresult0_carry_i_5
       (.I0(ALUresult0__187_carry),
        .I1(A0[3]),
        .I2(rst_n_IBUF),
        .I3(B[3]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h04FB)) 
    ALUresult0_carry_i_6
       (.I0(rst_n_IBUF),
        .I1(A0[2]),
        .I2(ALUresult0__187_carry),
        .I3(p_0_in),
        .O(S[2]));
  LUT4 #(
    .INIT(16'hFB04)) 
    ALUresult0_carry_i_7
       (.I0(ALUresult0__187_carry),
        .I1(A0[1]),
        .I2(rst_n_IBUF),
        .I3(DI[1]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'hFB04)) 
    ALUresult0_carry_i_8
       (.I0(rst_n_IBUF),
        .I1(A0[0]),
        .I2(ALUresult0__187_carry),
        .I3(DI[0]),
        .O(S[0]));
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
       (.ADDRA(douta[20:16]),
        .ADDRB(douta[20:16]),
        .ADDRC(douta[20:16]),
        .ADDRD(douta[10:6]),
        .DIA(writeData[1:0]),
        .DIB(writeData[3:2]),
        .DIC(writeData[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(A0[1:0]),
        .DOB(A0[3:2]),
        .DOC(A0[5:4]),
        .DOD(NLW_register_reg_r1_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(register_reg_r1_0_31_0_5_i_1_n_0));
  LUT4 #(
    .INIT(16'h0010)) 
    register_reg_r1_0_31_0_5_i_1
       (.I0(register_reg_r1_0_31_0_5_i_2_n_0),
        .I1(register_reg_r1_0_31_0_5_i_3_n_0),
        .I2(register_reg_r1_0_31_0_5_i_4_n_0),
        .I3(rst_n_IBUF),
        .O(register_reg_r1_0_31_0_5_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    register_reg_r1_0_31_0_5_i_2
       (.I0(douta[9]),
        .I1(douta[6]),
        .I2(douta[7]),
        .I3(douta[10]),
        .I4(douta[8]),
        .O(register_reg_r1_0_31_0_5_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    register_reg_r1_0_31_0_5_i_3
       (.I0(douta[23]),
        .I1(douta[21]),
        .I2(douta[25]),
        .I3(douta[22]),
        .I4(douta[26]),
        .I5(douta[24]),
        .O(register_reg_r1_0_31_0_5_i_3_n_0));
  LUT6 #(
    .INIT(64'h1100000055554404)) 
    register_reg_r1_0_31_0_5_i_4
       (.I0(douta[4]),
        .I1(douta[2]),
        .I2(douta[0]),
        .I3(douta[1]),
        .I4(douta[5]),
        .I5(douta[3]),
        .O(register_reg_r1_0_31_0_5_i_4_n_0));
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
  RAM32M_HD12 register_reg_r1_0_31_12_17
       (.ADDRA(douta[20:16]),
        .ADDRB(douta[20:16]),
        .ADDRC(douta[20:16]),
        .ADDRD(douta[10:6]),
        .DIA(writeData[13:12]),
        .DIB(writeData[15:14]),
        .DIC(writeData[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(A0[13:12]),
        .DOB(A0[15:14]),
        .DOC(A0[17:16]),
        .DOD(NLW_register_reg_r1_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
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
  RAM32M_HD13 register_reg_r1_0_31_18_23
       (.ADDRA(douta[20:16]),
        .ADDRB(douta[20:16]),
        .ADDRC(douta[20:16]),
        .ADDRD(douta[10:6]),
        .DIA(writeData[19:18]),
        .DIB(writeData[21:20]),
        .DIC(writeData[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(A0[19:18]),
        .DOB(A0[21:20]),
        .DOC(A0[23:22]),
        .DOD(NLW_register_reg_r1_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
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
  RAM32M_HD14 register_reg_r1_0_31_24_29
       (.ADDRA(douta[20:16]),
        .ADDRB(douta[20:16]),
        .ADDRC(douta[20:16]),
        .ADDRD(douta[10:6]),
        .DIA(writeData[25:24]),
        .DIB(writeData[27:26]),
        .DIC(writeData[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(A0[25:24]),
        .DOB(A0[27:26]),
        .DOC(A0[29:28]),
        .DOD(NLW_register_reg_r1_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
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
  RAM32M_HD15 register_reg_r1_0_31_30_31
       (.ADDRA(douta[20:16]),
        .ADDRB(douta[20:16]),
        .ADDRC(douta[20:16]),
        .ADDRD(douta[10:6]),
        .DIA(writeData[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(A0[31:30]),
        .DOB(NLW_register_reg_r1_0_31_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_register_reg_r1_0_31_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_register_reg_r1_0_31_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
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
  RAM32M_HD16 register_reg_r1_0_31_6_11
       (.ADDRA(douta[20:16]),
        .ADDRB(douta[20:16]),
        .ADDRC(douta[20:16]),
        .ADDRD(douta[10:6]),
        .DIA(writeData[7:6]),
        .DIB(writeData[9:8]),
        .DIC(writeData[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(A0[7:6]),
        .DOB(A0[9:8]),
        .DOC(A0[11:10]),
        .DOD(NLW_register_reg_r1_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
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
  RAM32M_HD17 register_reg_r2_0_31_0_5
       (.ADDRA(douta[15:11]),
        .ADDRB(douta[15:11]),
        .ADDRC(douta[15:11]),
        .ADDRD(douta[10:6]),
        .DIA(writeData[1:0]),
        .DIB(writeData[3:2]),
        .DIC(writeData[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(B0[1:0]),
        .DOB(B0[3:2]),
        .DOC(B0[5:4]),
        .DOD(NLW_register_reg_r2_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
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
  RAM32M_HD18 register_reg_r2_0_31_12_17
       (.ADDRA(douta[15:11]),
        .ADDRB(douta[15:11]),
        .ADDRC(douta[15:11]),
        .ADDRD(douta[10:6]),
        .DIA(writeData[13:12]),
        .DIB(writeData[15:14]),
        .DIC(writeData[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(B0[13:12]),
        .DOB(B0[15:14]),
        .DOC(B0[17:16]),
        .DOD(NLW_register_reg_r2_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
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
  RAM32M_HD19 register_reg_r2_0_31_18_23
       (.ADDRA(douta[15:11]),
        .ADDRB(douta[15:11]),
        .ADDRC(douta[15:11]),
        .ADDRD(douta[10:6]),
        .DIA(writeData[19:18]),
        .DIB(writeData[21:20]),
        .DIC(writeData[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(B0[19:18]),
        .DOB(B0[21:20]),
        .DOC(B0[23:22]),
        .DOD(NLW_register_reg_r2_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
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
  RAM32M_HD20 register_reg_r2_0_31_24_29
       (.ADDRA(douta[15:11]),
        .ADDRB(douta[15:11]),
        .ADDRC(douta[15:11]),
        .ADDRD(douta[10:6]),
        .DIA(writeData[25:24]),
        .DIB(writeData[27:26]),
        .DIC(writeData[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(B0[25:24]),
        .DOB(B0[27:26]),
        .DOC(B0[29:28]),
        .DOD(NLW_register_reg_r2_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
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
  RAM32M_HD21 register_reg_r2_0_31_30_31
       (.ADDRA(douta[15:11]),
        .ADDRB(douta[15:11]),
        .ADDRC(douta[15:11]),
        .ADDRD(douta[10:6]),
        .DIA(writeData[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(B0[31:30]),
        .DOB(NLW_register_reg_r2_0_31_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_register_reg_r2_0_31_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_register_reg_r2_0_31_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
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
  RAM32M_HD22 register_reg_r2_0_31_6_11
       (.ADDRA(douta[15:11]),
        .ADDRB(douta[15:11]),
        .ADDRC(douta[15:11]),
        .ADDRD(douta[10:6]),
        .DIA(writeData[7:6]),
        .DIB(writeData[9:8]),
        .DIC(writeData[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(B0[7:6]),
        .DOB(B0[9:8]),
        .DOC(B0[11:10]),
        .DOD(NLW_register_reg_r2_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(register_reg_r1_0_31_0_5_i_1_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBABAA)) 
    \result_OBUF[0]_inst_i_1 
       (.I0(\result[0] ),
        .I1(\result_OBUF[0]_inst_i_3_n_0 ),
        .I2(\result_OBUF[0]_inst_i_4_n_0 ),
        .I3(\result_OBUF[0]_inst_i_5_n_0 ),
        .I4(\result_OBUF[0]_inst_i_6_n_0 ),
        .I5(\result_OBUF[29]_inst_i_14_0 ),
        .O(writeData[0]));
  LUT6 #(
    .INIT(64'h30305F503F3F5F50)) 
    \result_OBUF[0]_inst_i_10 
       (.I0(A[8]),
        .I1(A[24]),
        .I2(B[3]),
        .I3(\result_OBUF[0]_inst_i_7_n_0 ),
        .I4(B[4]),
        .I5(A[16]),
        .O(\result_OBUF[0]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    \result_OBUF[0]_inst_i_11 
       (.I0(B[4]),
        .I1(\result_OBUF[0]_inst_i_7_n_0 ),
        .I2(B[3]),
        .I3(p_0_in),
        .I4(DI[1]),
        .I5(\result_OBUF[31]_inst_i_9_n_0 ),
        .O(\result_OBUF[0]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hEFBEBEBBAAAAAAAA)) 
    \result_OBUF[0]_inst_i_3 
       (.I0(\result_OBUF[29]_inst_i_8_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(DI[0]),
        .I3(\result_OBUF[0]_inst_i_7_n_0 ),
        .I4(\result_OBUF[31]_inst_i_9_n_0 ),
        .I5(\result_OBUF[29]_inst_i_14_0 ),
        .O(\result_OBUF[0]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEFEEEEEFEFEFE)) 
    \result_OBUF[0]_inst_i_4 
       (.I0(\result_OBUF[29]_inst_i_8_n_0 ),
        .I1(register_reg_r1_0_31_0_5_i_3_n_0),
        .I2(\result_OBUF[31]_inst_i_10_n_0 ),
        .I3(\result_OBUF[31]_inst_i_9_n_0 ),
        .I4(CO),
        .I5(\result_OBUF[0]_inst_i_1_0 ),
        .O(\result_OBUF[0]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000111F)) 
    \result_OBUF[0]_inst_i_5 
       (.I0(\result_OBUF[1]_inst_i_7_n_0 ),
        .I1(\result_OBUF[29]_inst_i_13_n_0 ),
        .I2(\result_OBUF[0]_inst_i_8_n_0 ),
        .I3(\result_OBUF[30]_inst_i_10_n_0 ),
        .I4(\result_OBUF[31]_inst_i_9_n_0 ),
        .I5(\result_OBUF[0]_inst_i_9_n_0 ),
        .O(\result_OBUF[0]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h888A888A888AAAAA)) 
    \result_OBUF[0]_inst_i_6 
       (.I0(\result_OBUF[8]_inst_i_4_n_0 ),
        .I1(\result_OBUF[29]_inst_i_11_n_0 ),
        .I2(\result_OBUF[1]_inst_i_7_n_0 ),
        .I3(\result_OBUF[29]_inst_i_13_n_0 ),
        .I4(\result_OBUF[0]_inst_i_8_n_0 ),
        .I5(\result_OBUF[30]_inst_i_10_n_0 ),
        .O(\result_OBUF[0]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \result_OBUF[0]_inst_i_7 
       (.I0(ALUresult0__187_carry),
        .I1(A0[0]),
        .I2(rst_n_IBUF),
        .O(\result_OBUF[0]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[0]_inst_i_8 
       (.I0(\result_OBUF[2]_inst_i_10_n_0 ),
        .I1(\result_OBUF[6]_inst_i_9_n_0 ),
        .I2(DI[1]),
        .I3(\result_OBUF[0]_inst_i_10_n_0 ),
        .I4(p_0_in),
        .I5(\result_OBUF[4]_inst_i_9_n_0 ),
        .O(\result_OBUF[0]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    \result_OBUF[0]_inst_i_9 
       (.I0(\result_OBUF[31]_inst_i_10_n_0 ),
        .I1(\result_OBUF[0]_inst_i_11_n_0 ),
        .I2(\result_OBUF[16]_inst_i_12_n_0 ),
        .I3(\result_OBUF[16]_inst_i_11_n_0 ),
        .I4(\result_OBUF[16]_inst_i_10_n_0 ),
        .I5(DI[0]),
        .O(\result_OBUF[0]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEEEFFFE)) 
    \result_OBUF[10]_inst_i_1 
       (.I0(\result_OBUF[29]_inst_i_8_0 ),
        .I1(\result_OBUF[10]_inst_i_2_n_0 ),
        .I2(\result_OBUF[10]_inst_i_3_n_0 ),
        .I3(\result_OBUF[10]_inst_i_4_n_0 ),
        .I4(\result_OBUF[10]_inst_i_5_n_0 ),
        .I5(\result[10] ),
        .O(writeData[10]));
  LUT5 #(
    .INIT(32'hFFFFF1FD)) 
    \result_OBUF[10]_inst_i_10 
       (.I0(\result_OBUF[3]_inst_i_7_n_0 ),
        .I1(p_0_in),
        .I2(B[3]),
        .I3(A[7]),
        .I4(B[4]),
        .O(\result_OBUF[10]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h888803CFBBBB03CF)) 
    \result_OBUF[10]_inst_i_11 
       (.I0(ALUresult0__187_carry__2_i_10_n_0),
        .I1(B[4]),
        .I2(A[10]),
        .I3(A[26]),
        .I4(B[3]),
        .I5(A[18]),
        .O(\result_OBUF[10]_inst_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h3030BB88)) 
    \result_OBUF[10]_inst_i_12 
       (.I0(A[18]),
        .I1(B[3]),
        .I2(A[26]),
        .I3(A[10]),
        .I4(B[4]),
        .O(\result_OBUF[10]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h6161A66100000000)) 
    \result_OBUF[10]_inst_i_2 
       (.I0(\result_OBUF[31]_inst_i_10_n_0 ),
        .I1(\result_OBUF[31]_inst_i_9_n_0 ),
        .I2(A[10]),
        .I3(B0[10]),
        .I4(ALUresult0__187_carry__2),
        .I5(\result_OBUF[29]_inst_i_14_0 ),
        .O(\result_OBUF[10]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h01555155)) 
    \result_OBUF[10]_inst_i_3 
       (.I0(\result_OBUF[16]_inst_i_4_n_0 ),
        .I1(\result_OBUF[11]_inst_i_8_n_0 ),
        .I2(DI[0]),
        .I3(\result_OBUF[31]_inst_i_9_n_0 ),
        .I4(\result_OBUF[10]_inst_i_7_n_0 ),
        .O(\result_OBUF[10]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h888A888A888AAAAA)) 
    \result_OBUF[10]_inst_i_4 
       (.I0(\result_OBUF[8]_inst_i_4_n_0 ),
        .I1(\result_OBUF[29]_inst_i_11_n_0 ),
        .I2(\result_OBUF[10]_inst_i_8_n_0 ),
        .I3(\result_OBUF[30]_inst_i_10_n_0 ),
        .I4(\result_OBUF[29]_inst_i_13_n_0 ),
        .I5(\result_OBUF[11]_inst_i_10_n_0 ),
        .O(\result_OBUF[10]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hBBBAAABA)) 
    \result_OBUF[10]_inst_i_5 
       (.I0(\result_OBUF[29]_inst_i_14_0 ),
        .I1(\result_OBUF[31]_inst_i_9_n_0 ),
        .I2(\result_OBUF[10]_inst_i_9_n_0 ),
        .I3(DI[0]),
        .I4(\result_OBUF[11]_inst_i_9_n_0 ),
        .O(\result_OBUF[10]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \result_OBUF[10]_inst_i_7 
       (.I0(\result_OBUF[10]_inst_i_10_n_0 ),
        .I1(DI[1]),
        .I2(\result_OBUF[12]_inst_i_10_n_0 ),
        .O(\result_OBUF[10]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[10]_inst_i_8 
       (.I0(\result_OBUF[12]_inst_i_13_n_0 ),
        .I1(\result_OBUF[12]_inst_i_14_n_0 ),
        .I2(DI[1]),
        .I3(\result_OBUF[10]_inst_i_11_n_0 ),
        .I4(p_0_in),
        .I5(\result_OBUF[14]_inst_i_10_n_0 ),
        .O(\result_OBUF[10]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \result_OBUF[10]_inst_i_9 
       (.I0(\result_OBUF[16]_inst_i_17_n_0 ),
        .I1(\result_OBUF[12]_inst_i_11_n_0 ),
        .I2(DI[1]),
        .I3(\result_OBUF[14]_inst_i_12_n_0 ),
        .I4(p_0_in),
        .I5(\result_OBUF[10]_inst_i_12_n_0 ),
        .O(\result_OBUF[10]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBABAA)) 
    \result_OBUF[11]_inst_i_1 
       (.I0(\result[11] ),
        .I1(\result_OBUF[11]_inst_i_3_n_0 ),
        .I2(\result_OBUF[11]_inst_i_4_n_0 ),
        .I3(\result_OBUF[11]_inst_i_5_n_0 ),
        .I4(\result_OBUF[11]_inst_i_6_n_0 ),
        .I5(\result_OBUF[29]_inst_i_14_0 ),
        .O(writeData[11]));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \result_OBUF[11]_inst_i_10 
       (.I0(\result_OBUF[13]_inst_i_14_n_0 ),
        .I1(DI[1]),
        .I2(\result_OBUF[11]_inst_i_13_n_0 ),
        .I3(p_0_in),
        .I4(\result_OBUF[8]_inst_i_9_n_0 ),
        .I5(\result_OBUF[15]_inst_i_13_n_0 ),
        .O(\result_OBUF[11]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAF30AF3F)) 
    \result_OBUF[11]_inst_i_11 
       (.I0(\result_OBUF[0]_inst_i_7_n_0 ),
        .I1(A[8]),
        .I2(p_0_in),
        .I3(B[3]),
        .I4(A[4]),
        .I5(B[4]),
        .O(\result_OBUF[11]_inst_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h0505FC0C)) 
    \result_OBUF[11]_inst_i_12 
       (.I0(ALUresult0__187_carry__1_i_13_n_0),
        .I1(ALUresult0__187_carry__0_i_13_n_0),
        .I2(B[4]),
        .I3(A[27]),
        .I4(B[3]),
        .O(\result_OBUF[11]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hC0C0A0AFCFCFA0AF)) 
    \result_OBUF[11]_inst_i_13 
       (.I0(ALUresult0__187_carry__1_i_13_n_0),
        .I1(ALUresult0__187_carry__2_i_10_n_0),
        .I2(B[3]),
        .I3(ALUresult0__187_carry__0_i_13_n_0),
        .I4(B[4]),
        .I5(A[27]),
        .O(\result_OBUF[11]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hBBEBEBFEAAAAAAAA)) 
    \result_OBUF[11]_inst_i_3 
       (.I0(\result_OBUF[29]_inst_i_8_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(\result_OBUF[31]_inst_i_9_n_0 ),
        .I3(B[11]),
        .I4(ALUresult0__187_carry__0_i_13_n_0),
        .I5(\result_OBUF[29]_inst_i_14_0 ),
        .O(\result_OBUF[11]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFAAEAAA)) 
    \result_OBUF[11]_inst_i_4 
       (.I0(\result_OBUF[16]_inst_i_4_n_0 ),
        .I1(\result_OBUF[11]_inst_i_8_n_0 ),
        .I2(DI[0]),
        .I3(\result_OBUF[31]_inst_i_9_n_0 ),
        .I4(\result_OBUF[12]_inst_i_7_n_0 ),
        .O(\result_OBUF[11]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFF1D)) 
    \result_OBUF[11]_inst_i_5 
       (.I0(\result_OBUF[11]_inst_i_9_n_0 ),
        .I1(DI[0]),
        .I2(\result_OBUF[12]_inst_i_8_n_0 ),
        .I3(\result_OBUF[31]_inst_i_9_n_0 ),
        .O(\result_OBUF[11]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8A888A888A88AAAA)) 
    \result_OBUF[11]_inst_i_6 
       (.I0(\result_OBUF[8]_inst_i_4_n_0 ),
        .I1(\result_OBUF[29]_inst_i_11_n_0 ),
        .I2(\result_OBUF[12]_inst_i_9_n_0 ),
        .I3(\result_OBUF[25]_inst_i_9_n_0 ),
        .I4(\result_OBUF[30]_inst_i_10_n_0 ),
        .I5(\result_OBUF[11]_inst_i_10_n_0 ),
        .O(\result_OBUF[11]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_OBUF[11]_inst_i_7 
       (.I0(B0[11]),
        .I1(ALUresult0__187_carry__2),
        .O(B[11]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_OBUF[11]_inst_i_8 
       (.I0(\result_OBUF[11]_inst_i_11_n_0 ),
        .I1(DI[1]),
        .I2(\result_OBUF[13]_inst_i_11_n_0 ),
        .O(\result_OBUF[11]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \result_OBUF[11]_inst_i_9 
       (.I0(\result_OBUF[11]_inst_i_12_n_0 ),
        .I1(\result_OBUF[15]_inst_i_13_n_0 ),
        .I2(\result_OBUF[13]_inst_i_12_n_0 ),
        .I3(p_0_in),
        .I4(\result_OBUF[13]_inst_i_13_n_0 ),
        .I5(DI[1]),
        .O(\result_OBUF[11]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55555501)) 
    \result_OBUF[12]_inst_i_1 
       (.I0(\result_OBUF[12]_inst_i_2_n_0 ),
        .I1(\result_OBUF[12]_inst_i_3_n_0 ),
        .I2(\result_OBUF[16]_inst_i_4_n_0 ),
        .I3(\result_OBUF[12]_inst_i_4_n_0 ),
        .I4(\result_OBUF[29]_inst_i_14_0 ),
        .I5(\result[12] ),
        .O(writeData[12]));
  LUT6 #(
    .INIT(64'h0030003000AF00A0)) 
    \result_OBUF[12]_inst_i_10 
       (.I0(ALUresult0__187_carry__0_i_15_n_0),
        .I1(\result_OBUF[1]_inst_i_6_n_0 ),
        .I2(p_0_in),
        .I3(B[4]),
        .I4(A[5]),
        .I5(B[3]),
        .O(\result_OBUF[12]_inst_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h3030BB88)) 
    \result_OBUF[12]_inst_i_11 
       (.I0(A[20]),
        .I1(B[3]),
        .I2(A[28]),
        .I3(A[12]),
        .I4(B[4]),
        .O(\result_OBUF[12]_inst_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h888BBB8B)) 
    \result_OBUF[12]_inst_i_12 
       (.I0(ALUresult0__187_carry__2_i_10_n_0),
        .I1(B[4]),
        .I2(A[18]),
        .I3(B[3]),
        .I4(A[26]),
        .O(\result_OBUF[12]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h888803CFBBBB03CF)) 
    \result_OBUF[12]_inst_i_13 
       (.I0(ALUresult0__187_carry__2_i_10_n_0),
        .I1(B[4]),
        .I2(A[12]),
        .I3(A[28]),
        .I4(B[3]),
        .I5(A[20]),
        .O(\result_OBUF[12]_inst_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h888BBB8B)) 
    \result_OBUF[12]_inst_i_14 
       (.I0(ALUresult0__187_carry__2_i_10_n_0),
        .I1(B[4]),
        .I2(A[16]),
        .I3(B[3]),
        .I4(A[24]),
        .O(\result_OBUF[12]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hBBEBEBFEAAAAAAAA)) 
    \result_OBUF[12]_inst_i_2 
       (.I0(\result_OBUF[29]_inst_i_8_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(\result_OBUF[31]_inst_i_9_n_0 ),
        .I3(B[12]),
        .I4(A[12]),
        .I5(\result_OBUF[29]_inst_i_14_0 ),
        .O(\result_OBUF[12]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA0AF3F3FA0AF3030)) 
    \result_OBUF[12]_inst_i_3 
       (.I0(\result_OBUF[12]_inst_i_7_n_0 ),
        .I1(\result_OBUF[13]_inst_i_8_n_0 ),
        .I2(\result_OBUF[31]_inst_i_9_n_0 ),
        .I3(\result_OBUF[13]_inst_i_9_n_0 ),
        .I4(DI[0]),
        .I5(\result_OBUF[12]_inst_i_8_n_0 ),
        .O(\result_OBUF[12]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h888AAAAA888A888A)) 
    \result_OBUF[12]_inst_i_4 
       (.I0(\result_OBUF[8]_inst_i_4_n_0 ),
        .I1(\result_OBUF[29]_inst_i_11_n_0 ),
        .I2(\result_OBUF[12]_inst_i_9_n_0 ),
        .I3(\result_OBUF[30]_inst_i_10_n_0 ),
        .I4(\result_OBUF[13]_inst_i_10_n_0 ),
        .I5(\result_OBUF[25]_inst_i_9_n_0 ),
        .O(\result_OBUF[12]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_OBUF[12]_inst_i_6 
       (.I0(B0[12]),
        .I1(ALUresult0__187_carry__2),
        .O(B[12]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \result_OBUF[12]_inst_i_7 
       (.I0(\result_OBUF[14]_inst_i_11_n_0 ),
        .I1(\result_OBUF[12]_inst_i_10_n_0 ),
        .I2(DI[1]),
        .O(\result_OBUF[12]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h5555333300FF0F0F)) 
    \result_OBUF[12]_inst_i_8 
       (.I0(\result_OBUF[14]_inst_i_12_n_0 ),
        .I1(\result_OBUF[16]_inst_i_15_n_0 ),
        .I2(\result_OBUF[16]_inst_i_17_n_0 ),
        .I3(\result_OBUF[12]_inst_i_11_n_0 ),
        .I4(p_0_in),
        .I5(DI[1]),
        .O(\result_OBUF[12]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[12]_inst_i_9 
       (.I0(\result_OBUF[14]_inst_i_10_n_0 ),
        .I1(\result_OBUF[12]_inst_i_12_n_0 ),
        .I2(DI[1]),
        .I3(\result_OBUF[12]_inst_i_13_n_0 ),
        .I4(p_0_in),
        .I5(\result_OBUF[12]_inst_i_14_n_0 ),
        .O(\result_OBUF[12]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBAAAB)) 
    \result_OBUF[13]_inst_i_1 
       (.I0(\result[13] ),
        .I1(\result_OBUF[13]_inst_i_3_n_0 ),
        .I2(\result_OBUF[13]_inst_i_4_n_0 ),
        .I3(\result_OBUF[16]_inst_i_4_n_0 ),
        .I4(\result_OBUF[13]_inst_i_5_n_0 ),
        .I5(\result_OBUF[13]_inst_i_6_n_0 ),
        .O(writeData[13]));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \result_OBUF[13]_inst_i_10 
       (.I0(\result_OBUF[15]_inst_i_11_n_0 ),
        .I1(p_0_in),
        .I2(\result_OBUF[22]_inst_i_14_n_0 ),
        .I3(\result_OBUF[19]_inst_i_14_n_0 ),
        .I4(DI[1]),
        .I5(\result_OBUF[13]_inst_i_14_n_0 ),
        .O(\result_OBUF[13]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF30FF3FFFF5FFF5)) 
    \result_OBUF[13]_inst_i_11 
       (.I0(A[6]),
        .I1(A[2]),
        .I2(B[3]),
        .I3(B[4]),
        .I4(A[10]),
        .I5(p_0_in),
        .O(\result_OBUF[13]_inst_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \result_OBUF[13]_inst_i_12 
       (.I0(A[21]),
        .I1(B[3]),
        .I2(A[29]),
        .I3(B[4]),
        .I4(A[13]),
        .O(\result_OBUF[13]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0300030103050301)) 
    \result_OBUF[13]_inst_i_13 
       (.I0(B0[4]),
        .I1(\result_OBUF[13]_inst_i_15_n_0 ),
        .I2(rst_n_IBUF),
        .I3(ALUresult0_carry__0_i_10_n_0),
        .I4(B0[3]),
        .I5(\result_OBUF[25]_inst_i_6_n_0 ),
        .O(\result_OBUF[13]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hD1001100D1FF1100)) 
    \result_OBUF[13]_inst_i_14 
       (.I0(\result_OBUF[13]_inst_i_16_n_0 ),
        .I1(B[3]),
        .I2(\result_OBUF[13]_inst_i_17_n_0 ),
        .I3(p_0_in),
        .I4(\result_OBUF[22]_inst_i_14_n_0 ),
        .I5(\result_OBUF[13]_inst_i_13_n_0 ),
        .O(\result_OBUF[13]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \result_OBUF[13]_inst_i_15 
       (.I0(douta[18]),
        .I1(douta[19]),
        .I2(douta[20]),
        .I3(douta[16]),
        .I4(douta[17]),
        .I5(A0[17]),
        .O(\result_OBUF[13]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h000000EF00000020)) 
    \result_OBUF[13]_inst_i_16 
       (.I0(A0[29]),
        .I1(ALUresult0_carry__0_i_10_n_0),
        .I2(B0[4]),
        .I3(rst_n_IBUF),
        .I4(ALUresult0__187_carry),
        .I5(A0[13]),
        .O(\result_OBUF[13]_inst_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFF2FF)) 
    \result_OBUF[13]_inst_i_17 
       (.I0(B0[4]),
        .I1(ALUresult0_carry__0_i_10_n_0),
        .I2(rst_n_IBUF),
        .I3(A0[21]),
        .I4(ALUresult0__187_carry),
        .O(\result_OBUF[13]_inst_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hBBEBEBFEAAAAAAAA)) 
    \result_OBUF[13]_inst_i_3 
       (.I0(\result_OBUF[29]_inst_i_8_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(\result_OBUF[31]_inst_i_9_n_0 ),
        .I3(B[13]),
        .I4(A[13]),
        .I5(\result_OBUF[29]_inst_i_14_0 ),
        .O(\result_OBUF[13]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \result_OBUF[13]_inst_i_4 
       (.I0(\result_OBUF[13]_inst_i_8_n_0 ),
        .I1(\result_OBUF[14]_inst_i_8_n_0 ),
        .I2(\result_OBUF[31]_inst_i_9_n_0 ),
        .I3(\result_OBUF[14]_inst_i_9_n_0 ),
        .I4(DI[0]),
        .I5(\result_OBUF[13]_inst_i_9_n_0 ),
        .O(\result_OBUF[13]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hAABA)) 
    \result_OBUF[13]_inst_i_5 
       (.I0(\result_OBUF[29]_inst_i_14_0 ),
        .I1(\result_OBUF[13]_inst_i_10_n_0 ),
        .I2(\result_OBUF[8]_inst_i_4_n_0 ),
        .I3(\result_OBUF[30]_inst_i_10_n_0 ),
        .O(\result_OBUF[13]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    \result_OBUF[13]_inst_i_6 
       (.I0(\result_OBUF[8]_inst_i_4_n_0 ),
        .I1(\result_OBUF[25]_inst_i_9_n_0 ),
        .I2(\result_OBUF[14]_inst_i_7_n_0 ),
        .I3(\result_OBUF[29]_inst_i_11_n_0 ),
        .O(\result_OBUF[13]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_OBUF[13]_inst_i_7 
       (.I0(B0[13]),
        .I1(ALUresult0__187_carry__2),
        .O(B[13]));
  LUT5 #(
    .INIT(32'h44774747)) 
    \result_OBUF[13]_inst_i_8 
       (.I0(\result_OBUF[13]_inst_i_11_n_0 ),
        .I1(DI[1]),
        .I2(\result_OBUF[15]_inst_i_12_n_0 ),
        .I3(\result_OBUF[19]_inst_i_13_n_0 ),
        .I4(p_0_in),
        .O(\result_OBUF[13]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[13]_inst_i_9 
       (.I0(\result_OBUF[15]_inst_i_13_n_0 ),
        .I1(\result_OBUF[19]_inst_i_14_n_0 ),
        .I2(DI[1]),
        .I3(\result_OBUF[13]_inst_i_12_n_0 ),
        .I4(p_0_in),
        .I5(\result_OBUF[13]_inst_i_13_n_0 ),
        .O(\result_OBUF[13]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BABABABB)) 
    \result_OBUF[14]_inst_i_1 
       (.I0(\result_OBUF[14]_inst_i_2_n_0 ),
        .I1(\result_OBUF[29]_inst_i_14_0 ),
        .I2(\result_OBUF[14]_inst_i_3_n_0 ),
        .I3(\result_OBUF[16]_inst_i_4_n_0 ),
        .I4(\result_OBUF[14]_inst_i_4_n_0 ),
        .I5(\result[14] ),
        .O(writeData[14]));
  LUT6 #(
    .INIT(64'h888803CFBBBB03CF)) 
    \result_OBUF[14]_inst_i_10 
       (.I0(ALUresult0__187_carry__2_i_10_n_0),
        .I1(B[4]),
        .I2(A[14]),
        .I3(A[30]),
        .I4(B[3]),
        .I5(A[22]),
        .O(\result_OBUF[14]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A0CFA0C0)) 
    \result_OBUF[14]_inst_i_11 
       (.I0(\result_OBUF[3]_inst_i_7_n_0 ),
        .I1(ALUresult0__187_carry__0_i_13_n_0),
        .I2(p_0_in),
        .I3(B[3]),
        .I4(A[7]),
        .I5(B[4]),
        .O(\result_OBUF[14]_inst_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h3030BB88)) 
    \result_OBUF[14]_inst_i_12 
       (.I0(A[22]),
        .I1(B[3]),
        .I2(A[30]),
        .I3(A[14]),
        .I4(B[4]),
        .O(\result_OBUF[14]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hEEBEBEABAAAAAAAA)) 
    \result_OBUF[14]_inst_i_2 
       (.I0(\result_OBUF[29]_inst_i_8_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(\result_OBUF[31]_inst_i_9_n_0 ),
        .I3(A[14]),
        .I4(B[14]),
        .I5(\result_OBUF[29]_inst_i_14_0 ),
        .O(\result_OBUF[14]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBABA0000BAFF0000)) 
    \result_OBUF[14]_inst_i_3 
       (.I0(\result_OBUF[29]_inst_i_11_n_0 ),
        .I1(\result_OBUF[15]_inst_i_8_n_0 ),
        .I2(\result_OBUF[25]_inst_i_9_n_0 ),
        .I3(\result_OBUF[14]_inst_i_7_n_0 ),
        .I4(\result_OBUF[8]_inst_i_4_n_0 ),
        .I5(\result_OBUF[30]_inst_i_10_n_0 ),
        .O(\result_OBUF[14]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \result_OBUF[14]_inst_i_4 
       (.I0(\result_OBUF[14]_inst_i_8_n_0 ),
        .I1(\result_OBUF[15]_inst_i_9_n_0 ),
        .I2(\result_OBUF[31]_inst_i_9_n_0 ),
        .I3(\result_OBUF[15]_inst_i_10_n_0 ),
        .I4(DI[0]),
        .I5(\result_OBUF[14]_inst_i_9_n_0 ),
        .O(\result_OBUF[14]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_OBUF[14]_inst_i_6 
       (.I0(B0[14]),
        .I1(ALUresult0__187_carry__2),
        .O(B[14]));
  LUT6 #(
    .INIT(64'h7444300074773000)) 
    \result_OBUF[14]_inst_i_7 
       (.I0(\result_OBUF[16]_inst_i_23_n_0 ),
        .I1(DI[1]),
        .I2(\result_OBUF[14]_inst_i_10_n_0 ),
        .I3(p_0_in),
        .I4(\result_OBUF[22]_inst_i_14_n_0 ),
        .I5(\result_OBUF[16]_inst_i_15_n_0 ),
        .O(\result_OBUF[14]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \result_OBUF[14]_inst_i_8 
       (.I0(\result_OBUF[14]_inst_i_11_n_0 ),
        .I1(DI[1]),
        .I2(\result_OBUF[20]_inst_i_12_n_0 ),
        .I3(p_0_in),
        .I4(\result_OBUF[16]_inst_i_14_n_0 ),
        .O(\result_OBUF[14]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[14]_inst_i_9 
       (.I0(\result_OBUF[16]_inst_i_17_n_0 ),
        .I1(\result_OBUF[16]_inst_i_18_n_0 ),
        .I2(DI[1]),
        .I3(\result_OBUF[14]_inst_i_12_n_0 ),
        .I4(p_0_in),
        .I5(\result_OBUF[16]_inst_i_15_n_0 ),
        .O(\result_OBUF[14]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55554454)) 
    \result_OBUF[15]_inst_i_1 
       (.I0(\result_OBUF[15]_inst_i_2_n_0 ),
        .I1(\result_OBUF[15]_inst_i_3_n_0 ),
        .I2(\result_OBUF[15]_inst_i_4_n_0 ),
        .I3(\result_OBUF[15]_inst_i_5_n_0 ),
        .I4(\result_OBUF[29]_inst_i_14_0 ),
        .I5(\result[15] ),
        .O(writeData[15]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \result_OBUF[15]_inst_i_10 
       (.I0(\result_OBUF[17]_inst_i_12_n_0 ),
        .I1(DI[1]),
        .I2(\result_OBUF[15]_inst_i_13_n_0 ),
        .I3(p_0_in),
        .I4(\result_OBUF[19]_inst_i_14_n_0 ),
        .O(\result_OBUF[15]_inst_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hA0B1F5B1)) 
    \result_OBUF[15]_inst_i_11 
       (.I0(B[4]),
        .I1(A[15]),
        .I2(ALUresult0__187_carry__2_i_10_n_0),
        .I3(B[3]),
        .I4(A[23]),
        .O(\result_OBUF[15]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF4FFF7)) 
    \result_OBUF[15]_inst_i_12 
       (.I0(A0[0]),
        .I1(B[3]),
        .I2(B[4]),
        .I3(rst_n_IBUF),
        .I4(A0[8]),
        .I5(ALUresult0__187_carry),
        .O(\result_OBUF[15]_inst_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0303BB88)) 
    \result_OBUF[15]_inst_i_13 
       (.I0(A[23]),
        .I1(B[3]),
        .I2(ALUresult0__187_carry__2_i_10_n_0),
        .I3(A[15]),
        .I4(B[4]),
        .O(\result_OBUF[15]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAEEFFBBEAAAAAAAA)) 
    \result_OBUF[15]_inst_i_2 
       (.I0(\result_OBUF[29]_inst_i_8_0 ),
        .I1(\result_OBUF[31]_inst_i_9_n_0 ),
        .I2(A[15]),
        .I3(B[15]),
        .I4(\result_OBUF[31]_inst_i_10_n_0 ),
        .I5(\result_OBUF[29]_inst_i_14_0 ),
        .O(\result_OBUF[15]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8A888A888A88AAAA)) 
    \result_OBUF[15]_inst_i_3 
       (.I0(\result_OBUF[8]_inst_i_4_n_0 ),
        .I1(\result_OBUF[29]_inst_i_11_n_0 ),
        .I2(\result_OBUF[16]_inst_i_13_n_0 ),
        .I3(\result_OBUF[25]_inst_i_9_n_0 ),
        .I4(\result_OBUF[30]_inst_i_10_n_0 ),
        .I5(\result_OBUF[15]_inst_i_8_n_0 ),
        .O(\result_OBUF[15]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hB3BF)) 
    \result_OBUF[15]_inst_i_4 
       (.I0(\result_OBUF[15]_inst_i_9_n_0 ),
        .I1(\result_OBUF[31]_inst_i_9_n_0 ),
        .I2(DI[0]),
        .I3(\result_OBUF[16]_inst_i_8_n_0 ),
        .O(\result_OBUF[15]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAABAABBB)) 
    \result_OBUF[15]_inst_i_5 
       (.I0(\result_OBUF[16]_inst_i_4_n_0 ),
        .I1(\result_OBUF[31]_inst_i_9_n_0 ),
        .I2(DI[0]),
        .I3(\result_OBUF[16]_inst_i_9_n_0 ),
        .I4(\result_OBUF[15]_inst_i_10_n_0 ),
        .O(\result_OBUF[15]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_OBUF[15]_inst_i_7 
       (.I0(B0[15]),
        .I1(ALUresult0__187_carry__2),
        .O(B[15]));
  LUT6 #(
    .INIT(64'h7444300074773000)) 
    \result_OBUF[15]_inst_i_8 
       (.I0(\result_OBUF[17]_inst_i_12_n_0 ),
        .I1(DI[1]),
        .I2(\result_OBUF[15]_inst_i_11_n_0 ),
        .I3(p_0_in),
        .I4(\result_OBUF[22]_inst_i_14_n_0 ),
        .I5(\result_OBUF[19]_inst_i_14_n_0 ),
        .O(\result_OBUF[15]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h30303F3F505F505F)) 
    \result_OBUF[15]_inst_i_9 
       (.I0(\result_OBUF[15]_inst_i_12_n_0 ),
        .I1(\result_OBUF[19]_inst_i_13_n_0 ),
        .I2(DI[1]),
        .I3(\result_OBUF[17]_inst_i_13_n_0 ),
        .I4(\result_OBUF[21]_inst_i_13_n_0 ),
        .I5(p_0_in),
        .O(\result_OBUF[15]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55555501)) 
    \result_OBUF[16]_inst_i_1 
       (.I0(\result_OBUF[16]_inst_i_2_n_0 ),
        .I1(\result_OBUF[16]_inst_i_3_n_0 ),
        .I2(\result_OBUF[16]_inst_i_4_n_0 ),
        .I3(\result_OBUF[16]_inst_i_5_n_0 ),
        .I4(\result_OBUF[29]_inst_i_14_0 ),
        .I5(\result[16] ),
        .O(writeData[16]));
  LUT6 #(
    .INIT(64'hFFFFFFFF33333332)) 
    \result_OBUF[16]_inst_i_10 
       (.I0(B0[9]),
        .I1(ALUresult0__187_carry__2),
        .I2(B0[11]),
        .I3(B0[5]),
        .I4(B0[17]),
        .I5(\result_OBUF[16]_inst_i_19_n_0 ),
        .O(\result_OBUF[16]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF33333332)) 
    \result_OBUF[16]_inst_i_11 
       (.I0(B0[16]),
        .I1(ALUresult0__187_carry__2),
        .I2(B0[21]),
        .I3(B0[20]),
        .I4(B0[27]),
        .I5(\result_OBUF[16]_inst_i_20_n_0 ),
        .O(\result_OBUF[16]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF3332)) 
    \result_OBUF[16]_inst_i_12 
       (.I0(B0[12]),
        .I1(ALUresult0__187_carry__2),
        .I2(B0[15]),
        .I3(B0[26]),
        .I4(\result_OBUF[16]_inst_i_21_n_0 ),
        .I5(\result_OBUF[16]_inst_i_22_n_0 ),
        .O(\result_OBUF[16]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h020202A2A2A202A2)) 
    \result_OBUF[16]_inst_i_13 
       (.I0(\result_OBUF[22]_inst_i_14_n_0 ),
        .I1(\result_OBUF[16]_inst_i_23_n_0 ),
        .I2(DI[1]),
        .I3(\result_OBUF[16]_inst_i_16_n_0 ),
        .I4(p_0_in),
        .I5(\result_OBUF[16]_inst_i_15_n_0 ),
        .O(\result_OBUF[16]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0011001000000010)) 
    \result_OBUF[16]_inst_i_14 
       (.I0(B[4]),
        .I1(rst_n_IBUF),
        .I2(A0[9]),
        .I3(ALUresult0__187_carry),
        .I4(B[3]),
        .I5(A0[1]),
        .O(\result_OBUF[16]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \result_OBUF[16]_inst_i_15 
       (.I0(A0[26]),
        .I1(B[3]),
        .I2(ALUresult0__187_carry),
        .I3(A0[18]),
        .I4(rst_n_IBUF),
        .I5(B[4]),
        .O(\result_OBUF[16]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \result_OBUF[16]_inst_i_16 
       (.I0(A0[30]),
        .I1(B[3]),
        .I2(ALUresult0__187_carry),
        .I3(A0[22]),
        .I4(rst_n_IBUF),
        .I5(B[4]),
        .O(\result_OBUF[16]_inst_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \result_OBUF[16]_inst_i_17 
       (.I0(A0[24]),
        .I1(B[3]),
        .I2(ALUresult0__187_carry),
        .I3(A0[16]),
        .I4(rst_n_IBUF),
        .I5(B[4]),
        .O(\result_OBUF[16]_inst_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \result_OBUF[16]_inst_i_18 
       (.I0(A0[28]),
        .I1(B[3]),
        .I2(rst_n_IBUF),
        .I3(A0[20]),
        .I4(ALUresult0__187_carry),
        .I5(B[4]),
        .O(\result_OBUF[16]_inst_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    \result_OBUF[16]_inst_i_19 
       (.I0(B0[24]),
        .I1(B0[18]),
        .I2(B0[30]),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[31]),
        .O(\result_OBUF[16]_inst_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hBBEBEBFEAAAAAAAA)) 
    \result_OBUF[16]_inst_i_2 
       (.I0(\result_OBUF[29]_inst_i_8_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(\result_OBUF[31]_inst_i_9_n_0 ),
        .I3(B[16]),
        .I4(A[16]),
        .I5(\result_OBUF[29]_inst_i_14_0 ),
        .O(\result_OBUF[16]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    \result_OBUF[16]_inst_i_20 
       (.I0(B0[7]),
        .I1(B0[6]),
        .I2(B0[28]),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[13]),
        .O(\result_OBUF[16]_inst_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    \result_OBUF[16]_inst_i_21 
       (.I0(B0[23]),
        .I1(B0[10]),
        .I2(B0[29]),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[8]),
        .O(\result_OBUF[16]_inst_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    \result_OBUF[16]_inst_i_22 
       (.I0(B0[25]),
        .I1(B0[22]),
        .I2(B0[19]),
        .I3(ALUresult0__187_carry__2),
        .I4(B0[14]),
        .O(\result_OBUF[16]_inst_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h505F3F3F505F3030)) 
    \result_OBUF[16]_inst_i_23 
       (.I0(\result_OBUF[16]_inst_i_24_n_0 ),
        .I1(\result_OBUF[16]_inst_i_25_n_0 ),
        .I2(p_0_in),
        .I3(\result_OBUF[26]_inst_i_16_n_0 ),
        .I4(B[3]),
        .I5(\result_OBUF[16]_inst_i_26_n_0 ),
        .O(\result_OBUF[16]_inst_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFF2FF)) 
    \result_OBUF[16]_inst_i_24 
       (.I0(B0[4]),
        .I1(ALUresult0_carry__0_i_10_n_0),
        .I2(rst_n_IBUF),
        .I3(A0[24]),
        .I4(ALUresult0__187_carry),
        .O(\result_OBUF[16]_inst_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFFF2FF)) 
    \result_OBUF[16]_inst_i_25 
       (.I0(B0[4]),
        .I1(ALUresult0_carry__0_i_10_n_0),
        .I2(rst_n_IBUF),
        .I3(A0[16]),
        .I4(ALUresult0__187_carry),
        .O(\result_OBUF[16]_inst_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h02020002)) 
    \result_OBUF[16]_inst_i_26 
       (.I0(A0[20]),
        .I1(ALUresult0__187_carry),
        .I2(rst_n_IBUF),
        .I3(B0[4]),
        .I4(ALUresult0_carry__0_i_10_n_0),
        .O(\result_OBUF[16]_inst_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hC0C0505FCFCF505F)) 
    \result_OBUF[16]_inst_i_3 
       (.I0(\result_OBUF[17]_inst_i_9_n_0 ),
        .I1(\result_OBUF[16]_inst_i_8_n_0 ),
        .I2(\result_OBUF[31]_inst_i_9_n_0 ),
        .I3(\result_OBUF[16]_inst_i_9_n_0 ),
        .I4(DI[0]),
        .I5(\result_OBUF[17]_inst_i_11_n_0 ),
        .O(\result_OBUF[16]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \result_OBUF[16]_inst_i_4 
       (.I0(\result_OBUF[29]_inst_i_14_n_0 ),
        .I1(\result_OBUF[29]_inst_i_8_n_0 ),
        .I2(register_reg_r1_0_31_0_5_i_3_n_0),
        .I3(\result_OBUF[16]_inst_i_10_n_0 ),
        .I4(\result_OBUF[16]_inst_i_11_n_0 ),
        .I5(\result_OBUF[16]_inst_i_12_n_0 ),
        .O(\result_OBUF[16]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h888AAAAA888A888A)) 
    \result_OBUF[16]_inst_i_5 
       (.I0(\result_OBUF[8]_inst_i_4_n_0 ),
        .I1(\result_OBUF[29]_inst_i_11_n_0 ),
        .I2(\result_OBUF[16]_inst_i_13_n_0 ),
        .I3(\result_OBUF[30]_inst_i_10_n_0 ),
        .I4(\result_OBUF[17]_inst_i_8_n_0 ),
        .I5(\result_OBUF[25]_inst_i_9_n_0 ),
        .O(\result_OBUF[16]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_OBUF[16]_inst_i_7 
       (.I0(B0[16]),
        .I1(ALUresult0__187_carry__2),
        .O(B[16]));
  LUT5 #(
    .INIT(32'h303FAAAA)) 
    \result_OBUF[16]_inst_i_8 
       (.I0(\result_OBUF[18]_inst_i_16_n_0 ),
        .I1(\result_OBUF[20]_inst_i_12_n_0 ),
        .I2(p_0_in),
        .I3(\result_OBUF[16]_inst_i_14_n_0 ),
        .I4(DI[1]),
        .O(\result_OBUF[16]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[16]_inst_i_9 
       (.I0(\result_OBUF[16]_inst_i_15_n_0 ),
        .I1(\result_OBUF[16]_inst_i_16_n_0 ),
        .I2(DI[1]),
        .I3(\result_OBUF[16]_inst_i_17_n_0 ),
        .I4(p_0_in),
        .I5(\result_OBUF[16]_inst_i_18_n_0 ),
        .O(\result_OBUF[16]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55554454)) 
    \result_OBUF[17]_inst_i_1 
       (.I0(\result_OBUF[17]_inst_i_2_n_0 ),
        .I1(\result_OBUF[17]_inst_i_3_n_0 ),
        .I2(\result_OBUF[17]_inst_i_4_n_0 ),
        .I3(\result_OBUF[17]_inst_i_5_n_0 ),
        .I4(\result_OBUF[29]_inst_i_14_0 ),
        .I5(\result[17] ),
        .O(writeData[17]));
  MUXF7 \result_OBUF[17]_inst_i_10 
       (.I0(\result_OBUF[18]_inst_i_18_n_0 ),
        .I1(\result_OBUF[18]_inst_i_17_n_0 ),
        .O(\result_OBUF[17]_inst_i_10_n_0 ),
        .S(DI[1]));
  LUT5 #(
    .INIT(32'hA3FFA300)) 
    \result_OBUF[17]_inst_i_11 
       (.I0(\result_OBUF[19]_inst_i_14_n_0 ),
        .I1(\result_OBUF[19]_inst_i_15_n_0 ),
        .I2(p_0_in),
        .I3(DI[1]),
        .I4(\result_OBUF[17]_inst_i_12_n_0 ),
        .O(\result_OBUF[17]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \result_OBUF[17]_inst_i_12 
       (.I0(\result_OBUF[13]_inst_i_13_n_0 ),
        .I1(p_0_in),
        .I2(A[29]),
        .I3(B[3]),
        .I4(A[21]),
        .I5(B[4]),
        .O(\result_OBUF[17]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF4FFF7)) 
    \result_OBUF[17]_inst_i_13 
       (.I0(A0[2]),
        .I1(B[3]),
        .I2(B[4]),
        .I3(rst_n_IBUF),
        .I4(A0[10]),
        .I5(ALUresult0__187_carry),
        .O(\result_OBUF[17]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hBBEBEBFEAAAAAAAA)) 
    \result_OBUF[17]_inst_i_2 
       (.I0(\result_OBUF[29]_inst_i_8_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(\result_OBUF[31]_inst_i_9_n_0 ),
        .I3(B[17]),
        .I4(ALUresult0__187_carry__1_i_15_n_0),
        .I5(\result_OBUF[29]_inst_i_14_0 ),
        .O(\result_OBUF[17]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8A888A888A88AAAA)) 
    \result_OBUF[17]_inst_i_3 
       (.I0(\result_OBUF[8]_inst_i_4_n_0 ),
        .I1(\result_OBUF[29]_inst_i_11_n_0 ),
        .I2(\result_OBUF[18]_inst_i_6_n_0 ),
        .I3(\result_OBUF[25]_inst_i_9_n_0 ),
        .I4(\result_OBUF[30]_inst_i_10_n_0 ),
        .I5(\result_OBUF[17]_inst_i_8_n_0 ),
        .O(\result_OBUF[17]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF377)) 
    \result_OBUF[17]_inst_i_4 
       (.I0(\result_OBUF[18]_inst_i_9_n_0 ),
        .I1(\result_OBUF[31]_inst_i_9_n_0 ),
        .I2(\result_OBUF[17]_inst_i_9_n_0 ),
        .I3(DI[0]),
        .O(\result_OBUF[17]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hBAAABABB)) 
    \result_OBUF[17]_inst_i_5 
       (.I0(\result_OBUF[16]_inst_i_4_n_0 ),
        .I1(\result_OBUF[31]_inst_i_9_n_0 ),
        .I2(\result_OBUF[17]_inst_i_10_n_0 ),
        .I3(DI[0]),
        .I4(\result_OBUF[17]_inst_i_11_n_0 ),
        .O(\result_OBUF[17]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_OBUF[17]_inst_i_7 
       (.I0(B0[17]),
        .I1(ALUresult0__187_carry__2),
        .O(B[17]));
  LUT6 #(
    .INIT(64'h7400300074FF3000)) 
    \result_OBUF[17]_inst_i_8 
       (.I0(\result_OBUF[19]_inst_i_14_n_0 ),
        .I1(p_0_in),
        .I2(\result_OBUF[19]_inst_i_12_n_0 ),
        .I3(DI[1]),
        .I4(\result_OBUF[22]_inst_i_14_n_0 ),
        .I5(\result_OBUF[17]_inst_i_12_n_0 ),
        .O(\result_OBUF[17]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h335533550F000FFF)) 
    \result_OBUF[17]_inst_i_9 
       (.I0(\result_OBUF[17]_inst_i_13_n_0 ),
        .I1(\result_OBUF[21]_inst_i_13_n_0 ),
        .I2(\result_OBUF[23]_inst_i_9_n_0 ),
        .I3(p_0_in),
        .I4(\result_OBUF[19]_inst_i_13_n_0 ),
        .I5(DI[1]),
        .O(\result_OBUF[17]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000FF0D)) 
    \result_OBUF[18]_inst_i_1 
       (.I0(\result_OBUF[18]_inst_i_2_n_0 ),
        .I1(\result_OBUF[18]_inst_i_3_n_0 ),
        .I2(\result_OBUF[29]_inst_i_14_0 ),
        .I3(\result_OBUF[18]_inst_i_4_n_0 ),
        .I4(\result_OBUF[29]_inst_i_8_0 ),
        .I5(\result[18] ),
        .O(writeData[18]));
  LUT5 #(
    .INIT(32'hAAAABABF)) 
    \result_OBUF[18]_inst_i_10 
       (.I0(\result_OBUF[31]_inst_i_9_n_0 ),
        .I1(\result_OBUF[18]_inst_i_17_n_0 ),
        .I2(DI[1]),
        .I3(\result_OBUF[18]_inst_i_18_n_0 ),
        .I4(DI[0]),
        .O(\result_OBUF[18]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h5F5030305F503F3F)) 
    \result_OBUF[18]_inst_i_11 
       (.I0(\result_OBUF[26]_inst_i_14_n_0 ),
        .I1(\result_OBUF[18]_inst_i_19_n_0 ),
        .I2(p_0_in),
        .I3(\result_OBUF[26]_inst_i_15_n_0 ),
        .I4(B[3]),
        .I5(\result_OBUF[18]_inst_i_20_n_0 ),
        .O(\result_OBUF[18]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF33333332)) 
    \result_OBUF[18]_inst_i_12 
       (.I0(B0[14]),
        .I1(ALUresult0__187_carry__2),
        .I2(B0[19]),
        .I3(B0[22]),
        .I4(B0[25]),
        .I5(\result_OBUF[16]_inst_i_21_n_0 ),
        .O(\result_OBUF[18]_inst_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_OBUF[18]_inst_i_13 
       (.I0(B0[26]),
        .I1(ALUresult0__187_carry__2),
        .O(B[26]));
  LUT6 #(
    .INIT(64'hAFA0AFA0CFCFC0C0)) 
    \result_OBUF[18]_inst_i_14 
       (.I0(\result_OBUF[18]_inst_i_21_n_0 ),
        .I1(\result_OBUF[18]_inst_i_22_n_0 ),
        .I2(p_0_in),
        .I3(\result_OBUF[18]_inst_i_23_n_0 ),
        .I4(\result_OBUF[18]_inst_i_24_n_0 ),
        .I5(B[3]),
        .O(\result_OBUF[18]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[18]_inst_i_15 
       (.I0(\result_OBUF[18]_inst_i_25_n_0 ),
        .I1(\result_OBUF[18]_inst_i_26_n_0 ),
        .I2(p_0_in),
        .I3(\result_OBUF[18]_inst_i_27_n_0 ),
        .I4(B[3]),
        .I5(\result_OBUF[18]_inst_i_28_n_0 ),
        .O(\result_OBUF[18]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFF30FF3F55555555)) 
    \result_OBUF[18]_inst_i_16 
       (.I0(\result_OBUF[18]_inst_i_29_n_0 ),
        .I1(A[7]),
        .I2(B[3]),
        .I3(B[4]),
        .I4(A[15]),
        .I5(p_0_in),
        .O(\result_OBUF[18]_inst_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFF5FFF5FFF30FF3F)) 
    \result_OBUF[18]_inst_i_17 
       (.I0(A[28]),
        .I1(A[20]),
        .I2(p_0_in),
        .I3(B[4]),
        .I4(A[24]),
        .I5(B[3]),
        .O(\result_OBUF[18]_inst_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hA0AFCFCFA0AFC0C0)) 
    \result_OBUF[18]_inst_i_18 
       (.I0(\result_OBUF[26]_inst_i_14_n_0 ),
        .I1(\result_OBUF[18]_inst_i_19_n_0 ),
        .I2(p_0_in),
        .I3(\result_OBUF[26]_inst_i_15_n_0 ),
        .I4(B[3]),
        .I5(\result_OBUF[18]_inst_i_20_n_0 ),
        .O(\result_OBUF[18]_inst_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFFFF2FF)) 
    \result_OBUF[18]_inst_i_19 
       (.I0(B0[4]),
        .I1(ALUresult0_carry__0_i_10_n_0),
        .I2(rst_n_IBUF),
        .I3(A0[18]),
        .I4(ALUresult0__187_carry),
        .O(\result_OBUF[18]_inst_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E2FFFFFFFF)) 
    \result_OBUF[18]_inst_i_2 
       (.I0(\result_OBUF[18]_inst_i_6_n_0 ),
        .I1(DI[0]),
        .I2(\result_OBUF[19]_inst_i_8_n_0 ),
        .I3(\result_OBUF[18]_inst_i_7_n_0 ),
        .I4(ALUresult0__187_carry__2_i_10_n_0),
        .I5(\result_OBUF[8]_inst_i_4_n_0 ),
        .O(\result_OBUF[18]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFFFFF2FF)) 
    \result_OBUF[18]_inst_i_20 
       (.I0(B0[4]),
        .I1(ALUresult0_carry__0_i_10_n_0),
        .I2(rst_n_IBUF),
        .I3(A0[22]),
        .I4(ALUresult0__187_carry),
        .O(\result_OBUF[18]_inst_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFFFFF2FF)) 
    \result_OBUF[18]_inst_i_21 
       (.I0(B0[4]),
        .I1(ALUresult0_carry__0_i_10_n_0),
        .I2(rst_n_IBUF),
        .I3(A0[8]),
        .I4(ALUresult0__187_carry),
        .O(\result_OBUF[18]_inst_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFDDFFCFFFDDFFDD)) 
    \result_OBUF[18]_inst_i_22 
       (.I0(A0[16]),
        .I1(ALUresult0__187_carry),
        .I2(A0[0]),
        .I3(rst_n_IBUF),
        .I4(ALUresult0_carry__0_i_10_n_0),
        .I5(B0[4]),
        .O(\result_OBUF[18]_inst_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hFFFFF2FF)) 
    \result_OBUF[18]_inst_i_23 
       (.I0(B0[4]),
        .I1(ALUresult0_carry__0_i_10_n_0),
        .I2(rst_n_IBUF),
        .I3(A0[4]),
        .I4(ALUresult0__187_carry),
        .O(\result_OBUF[18]_inst_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFFFFF2FF)) 
    \result_OBUF[18]_inst_i_24 
       (.I0(B0[4]),
        .I1(ALUresult0_carry__0_i_10_n_0),
        .I2(rst_n_IBUF),
        .I3(A0[12]),
        .I4(ALUresult0__187_carry),
        .O(\result_OBUF[18]_inst_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFFFFF2FF)) 
    \result_OBUF[18]_inst_i_25 
       (.I0(B0[4]),
        .I1(ALUresult0_carry__0_i_10_n_0),
        .I2(rst_n_IBUF),
        .I3(A0[10]),
        .I4(ALUresult0__187_carry),
        .O(\result_OBUF[18]_inst_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF45FFFFFF75)) 
    \result_OBUF[18]_inst_i_26 
       (.I0(A0[18]),
        .I1(ALUresult0_carry__0_i_10_n_0),
        .I2(B0[4]),
        .I3(rst_n_IBUF),
        .I4(ALUresult0__187_carry),
        .I5(A0[2]),
        .O(\result_OBUF[18]_inst_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFFFFF2FF)) 
    \result_OBUF[18]_inst_i_27 
       (.I0(B0[4]),
        .I1(ALUresult0_carry__0_i_10_n_0),
        .I2(rst_n_IBUF),
        .I3(A0[6]),
        .I4(ALUresult0__187_carry),
        .O(\result_OBUF[18]_inst_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFFFF2FF)) 
    \result_OBUF[18]_inst_i_28 
       (.I0(B0[4]),
        .I1(ALUresult0_carry__0_i_10_n_0),
        .I2(rst_n_IBUF),
        .I3(A0[14]),
        .I4(ALUresult0__187_carry),
        .O(\result_OBUF[18]_inst_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h000000F0000400F7)) 
    \result_OBUF[18]_inst_i_29 
       (.I0(\result_OBUF[18]_inst_i_30_n_0 ),
        .I1(B0[3]),
        .I2(ALUresult0_carry__0_i_10_n_0),
        .I3(rst_n_IBUF),
        .I4(\result_OBUF[18]_inst_i_31_n_0 ),
        .I5(B0[4]),
        .O(\result_OBUF[18]_inst_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BABA00B0)) 
    \result_OBUF[18]_inst_i_3 
       (.I0(\result_OBUF[18]_inst_i_8_n_0 ),
        .I1(\result_OBUF[18]_inst_i_9_n_0 ),
        .I2(DI[0]),
        .I3(\result_OBUF[19]_inst_i_10_n_0 ),
        .I4(\result_OBUF[18]_inst_i_10_n_0 ),
        .I5(\result_OBUF[16]_inst_i_4_n_0 ),
        .O(\result_OBUF[18]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \result_OBUF[18]_inst_i_30 
       (.I0(douta[18]),
        .I1(douta[19]),
        .I2(douta[20]),
        .I3(douta[16]),
        .I4(douta[17]),
        .I5(A0[3]),
        .O(\result_OBUF[18]_inst_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \result_OBUF[18]_inst_i_31 
       (.I0(douta[18]),
        .I1(douta[19]),
        .I2(douta[20]),
        .I3(douta[16]),
        .I4(douta[17]),
        .I5(A0[11]),
        .O(\result_OBUF[18]_inst_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h2000AA208A20008A)) 
    \result_OBUF[18]_inst_i_4 
       (.I0(\result_OBUF[29]_inst_i_14_0 ),
        .I1(ALUresult0__187_carry__2),
        .I2(B0[18]),
        .I3(A[18]),
        .I4(\result_OBUF[31]_inst_i_9_n_0 ),
        .I5(\result_OBUF[31]_inst_i_10_n_0 ),
        .O(\result_OBUF[18]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0B0003000BFF0300)) 
    \result_OBUF[18]_inst_i_6 
       (.I0(p_0_in),
        .I1(\result_OBUF[26]_inst_i_12_n_0 ),
        .I2(\result_OBUF[20]_inst_i_11_n_0 ),
        .I3(DI[1]),
        .I4(\result_OBUF[22]_inst_i_14_n_0 ),
        .I5(\result_OBUF[18]_inst_i_11_n_0 ),
        .O(\result_OBUF[18]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \result_OBUF[18]_inst_i_7 
       (.I0(\result_OBUF[18]_inst_i_12_n_0 ),
        .I1(B[26]),
        .I2(B[15]),
        .I3(B[12]),
        .I4(\result_OBUF[16]_inst_i_11_n_0 ),
        .I5(\result_OBUF[16]_inst_i_10_n_0 ),
        .O(\result_OBUF[18]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h0047FFFF)) 
    \result_OBUF[18]_inst_i_8 
       (.I0(\result_OBUF[18]_inst_i_14_n_0 ),
        .I1(DI[1]),
        .I2(\result_OBUF[18]_inst_i_15_n_0 ),
        .I3(DI[0]),
        .I4(\result_OBUF[31]_inst_i_9_n_0 ),
        .O(\result_OBUF[18]_inst_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hBB888B8B)) 
    \result_OBUF[18]_inst_i_9 
       (.I0(\result_OBUF[18]_inst_i_16_n_0 ),
        .I1(DI[1]),
        .I2(\result_OBUF[20]_inst_i_12_n_0 ),
        .I3(\result_OBUF[24]_inst_i_9_n_0 ),
        .I4(p_0_in),
        .O(\result_OBUF[18]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55554454)) 
    \result_OBUF[19]_inst_i_1 
       (.I0(\result_OBUF[19]_inst_i_2_n_0 ),
        .I1(\result_OBUF[19]_inst_i_3_n_0 ),
        .I2(\result_OBUF[19]_inst_i_4_n_0 ),
        .I3(\result_OBUF[19]_inst_i_5_n_0 ),
        .I4(\result_OBUF[29]_inst_i_14_0 ),
        .I5(\result[19] ),
        .O(writeData[19]));
  LUT5 #(
    .INIT(32'h8B8BBB88)) 
    \result_OBUF[19]_inst_i_10 
       (.I0(\result_OBUF[21]_inst_i_12_n_0 ),
        .I1(DI[1]),
        .I2(\result_OBUF[19]_inst_i_14_n_0 ),
        .I3(\result_OBUF[19]_inst_i_15_n_0 ),
        .I4(p_0_in),
        .O(\result_OBUF[19]_inst_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h88B8BBB8)) 
    \result_OBUF[19]_inst_i_11 
       (.I0(ALUresult0__187_carry__2_i_10_n_0),
        .I1(B[4]),
        .I2(ALUresult0__187_carry__1_i_13_n_0),
        .I3(B[3]),
        .I4(A[27]),
        .O(\result_OBUF[19]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF01FFFB)) 
    \result_OBUF[19]_inst_i_12 
       (.I0(B[3]),
        .I1(A0[23]),
        .I2(B[4]),
        .I3(ALUresult0__187_carry),
        .I4(A0[31]),
        .I5(rst_n_IBUF),
        .O(\result_OBUF[19]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDFDFFFFFCFF)) 
    \result_OBUF[19]_inst_i_13 
       (.I0(A0[4]),
        .I1(B[4]),
        .I2(rst_n_IBUF),
        .I3(A0[12]),
        .I4(ALUresult0__187_carry),
        .I5(B[3]),
        .O(\result_OBUF[19]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \result_OBUF[19]_inst_i_14 
       (.I0(A0[27]),
        .I1(B[3]),
        .I2(rst_n_IBUF),
        .I3(A0[19]),
        .I4(ALUresult0__187_carry),
        .I5(B[4]),
        .O(\result_OBUF[19]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF4FFF7)) 
    \result_OBUF[19]_inst_i_15 
       (.I0(A0[31]),
        .I1(B[3]),
        .I2(B[4]),
        .I3(rst_n_IBUF),
        .I4(A0[23]),
        .I5(ALUresult0__187_carry),
        .O(\result_OBUF[19]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hEBBBFEEBAAAAAAAA)) 
    \result_OBUF[19]_inst_i_2 
       (.I0(\result_OBUF[29]_inst_i_8_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(\result_OBUF[31]_inst_i_9_n_0 ),
        .I3(ALUresult0__187_carry__1_i_13_n_0),
        .I4(B[19]),
        .I5(\result_OBUF[29]_inst_i_14_0 ),
        .O(\result_OBUF[19]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888AAAAA888A888A)) 
    \result_OBUF[19]_inst_i_3 
       (.I0(\result_OBUF[8]_inst_i_4_n_0 ),
        .I1(\result_OBUF[29]_inst_i_11_n_0 ),
        .I2(\result_OBUF[19]_inst_i_8_n_0 ),
        .I3(\result_OBUF[30]_inst_i_10_n_0 ),
        .I4(\result_OBUF[20]_inst_i_8_n_0 ),
        .I5(\result_OBUF[25]_inst_i_9_n_0 ),
        .O(\result_OBUF[19]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h37F7)) 
    \result_OBUF[19]_inst_i_4 
       (.I0(\result_OBUF[20]_inst_i_9_n_0 ),
        .I1(\result_OBUF[31]_inst_i_9_n_0 ),
        .I2(DI[0]),
        .I3(\result_OBUF[19]_inst_i_9_n_0 ),
        .O(\result_OBUF[19]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hBBBAAABA)) 
    \result_OBUF[19]_inst_i_5 
       (.I0(\result_OBUF[16]_inst_i_4_n_0 ),
        .I1(\result_OBUF[31]_inst_i_9_n_0 ),
        .I2(\result_OBUF[19]_inst_i_10_n_0 ),
        .I3(DI[0]),
        .I4(\result_OBUF[20]_inst_i_10_n_0 ),
        .O(\result_OBUF[19]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_OBUF[19]_inst_i_7 
       (.I0(B0[19]),
        .I1(ALUresult0__187_carry__2),
        .O(B[19]));
  LUT6 #(
    .INIT(64'h8F808F8F8F808080)) 
    \result_OBUF[19]_inst_i_8 
       (.I0(\result_OBUF[21]_inst_i_11_n_0 ),
        .I1(\result_OBUF[21]_inst_i_12_n_0 ),
        .I2(DI[1]),
        .I3(\result_OBUF[19]_inst_i_11_n_0 ),
        .I4(p_0_in),
        .I5(\result_OBUF[19]_inst_i_12_n_0 ),
        .O(\result_OBUF[19]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[19]_inst_i_9 
       (.I0(\result_OBUF[23]_inst_i_9_n_0 ),
        .I1(\result_OBUF[19]_inst_i_13_n_0 ),
        .I2(DI[1]),
        .I3(\result_OBUF[25]_inst_i_11_n_0 ),
        .I4(p_0_in),
        .I5(\result_OBUF[21]_inst_i_13_n_0 ),
        .O(\result_OBUF[19]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55555510)) 
    \result_OBUF[1]_inst_i_1 
       (.I0(\result_OBUF[1]_inst_i_2_n_0 ),
        .I1(\result_OBUF[1]_inst_i_3_n_0 ),
        .I2(\result_OBUF[8]_inst_i_4_n_0 ),
        .I3(\result_OBUF[1]_inst_i_4_n_0 ),
        .I4(\result_OBUF[29]_inst_i_14_0 ),
        .I5(\result[1] ),
        .O(writeData[1]));
  LUT6 #(
    .INIT(64'hFFFFFFEFFFFFFFFF)) 
    \result_OBUF[1]_inst_i_10 
       (.I0(B[4]),
        .I1(rst_n_IBUF),
        .I2(A0[0]),
        .I3(ALUresult0__187_carry),
        .I4(B[3]),
        .I5(p_0_in),
        .O(\result_OBUF[1]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hEAFEBFEBAAAAAAAA)) 
    \result_OBUF[1]_inst_i_2 
       (.I0(\result_OBUF[29]_inst_i_8_0 ),
        .I1(\result_OBUF[31]_inst_i_9_n_0 ),
        .I2(\result_OBUF[1]_inst_i_6_n_0 ),
        .I3(DI[1]),
        .I4(\result_OBUF[31]_inst_i_10_n_0 ),
        .I5(\result_OBUF[29]_inst_i_14_0 ),
        .O(\result_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F2F2F200)) 
    \result_OBUF[1]_inst_i_3 
       (.I0(\result_OBUF[2]_inst_i_7_n_0 ),
        .I1(\result_OBUF[2]_inst_i_9_n_0 ),
        .I2(\result_OBUF[29]_inst_i_13_n_0 ),
        .I3(\result_OBUF[30]_inst_i_10_n_0 ),
        .I4(\result_OBUF[1]_inst_i_7_n_0 ),
        .I5(\result_OBUF[29]_inst_i_11_n_0 ),
        .O(\result_OBUF[1]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000BABF)) 
    \result_OBUF[1]_inst_i_4 
       (.I0(\result_OBUF[31]_inst_i_9_n_0 ),
        .I1(\result_OBUF[2]_inst_i_7_n_0 ),
        .I2(DI[0]),
        .I3(\result_OBUF[1]_inst_i_7_n_0 ),
        .I4(\result_OBUF[1]_inst_i_8_n_0 ),
        .I5(\result_OBUF[16]_inst_i_4_n_0 ),
        .O(\result_OBUF[1]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \result_OBUF[1]_inst_i_6 
       (.I0(rst_n_IBUF),
        .I1(A0[1]),
        .I2(ALUresult0__187_carry),
        .O(\result_OBUF[1]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[1]_inst_i_7 
       (.I0(\result_OBUF[3]_inst_i_10_n_0 ),
        .I1(\result_OBUF[7]_inst_i_12_n_0 ),
        .I2(DI[1]),
        .I3(\result_OBUF[1]_inst_i_9_n_0 ),
        .I4(p_0_in),
        .I5(\result_OBUF[5]_inst_i_10_n_0 ),
        .O(\result_OBUF[1]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hCCCC8C80)) 
    \result_OBUF[1]_inst_i_8 
       (.I0(\result_OBUF[1]_inst_i_10_n_0 ),
        .I1(\result_OBUF[31]_inst_i_9_n_0 ),
        .I2(DI[0]),
        .I3(\result_OBUF[2]_inst_i_11_n_0 ),
        .I4(DI[1]),
        .O(\result_OBUF[1]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA03F3FAFA03030)) 
    \result_OBUF[1]_inst_i_9 
       (.I0(\result_OBUF[25]_inst_i_6_n_0 ),
        .I1(ALUresult0__187_carry__0_i_15_n_0),
        .I2(B[3]),
        .I3(\result_OBUF[24]_inst_i_12_n_0 ),
        .I4(B[4]),
        .I5(\result_OBUF[1]_inst_i_6_n_0 ),
        .O(\result_OBUF[1]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55554454)) 
    \result_OBUF[20]_inst_i_1 
       (.I0(\result_OBUF[20]_inst_i_2_n_0 ),
        .I1(\result_OBUF[20]_inst_i_3_n_0 ),
        .I2(\result_OBUF[20]_inst_i_4_n_0 ),
        .I3(\result_OBUF[20]_inst_i_5_n_0 ),
        .I4(\result_OBUF[29]_inst_i_14_0 ),
        .I5(\result[20] ),
        .O(writeData[20]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \result_OBUF[20]_inst_i_10 
       (.I0(\result_OBUF[20]_inst_i_11_n_0 ),
        .I1(\result_OBUF[22]_inst_i_12_n_0 ),
        .I2(DI[1]),
        .O(\result_OBUF[20]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A0CFA0C0)) 
    \result_OBUF[20]_inst_i_11 
       (.I0(A[28]),
        .I1(A[20]),
        .I2(p_0_in),
        .I3(B[3]),
        .I4(A[24]),
        .I5(B[4]),
        .O(\result_OBUF[20]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \result_OBUF[20]_inst_i_12 
       (.I0(A0[5]),
        .I1(B[3]),
        .I2(rst_n_IBUF),
        .I3(A0[13]),
        .I4(ALUresult0__187_carry),
        .I5(B[4]),
        .O(\result_OBUF[20]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hBEEFBBBEAAAAAAAA)) 
    \result_OBUF[20]_inst_i_2 
       (.I0(\result_OBUF[29]_inst_i_8_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(A[20]),
        .I3(B[20]),
        .I4(\result_OBUF[31]_inst_i_9_n_0 ),
        .I5(\result_OBUF[29]_inst_i_14_0 ),
        .O(\result_OBUF[20]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8A888A888A88AAAA)) 
    \result_OBUF[20]_inst_i_3 
       (.I0(\result_OBUF[8]_inst_i_4_n_0 ),
        .I1(\result_OBUF[29]_inst_i_11_n_0 ),
        .I2(\result_OBUF[21]_inst_i_8_n_0 ),
        .I3(\result_OBUF[25]_inst_i_9_n_0 ),
        .I4(\result_OBUF[30]_inst_i_10_n_0 ),
        .I5(\result_OBUF[20]_inst_i_8_n_0 ),
        .O(\result_OBUF[20]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h737F)) 
    \result_OBUF[20]_inst_i_4 
       (.I0(\result_OBUF[20]_inst_i_9_n_0 ),
        .I1(\result_OBUF[31]_inst_i_9_n_0 ),
        .I2(DI[0]),
        .I3(\result_OBUF[21]_inst_i_9_n_0 ),
        .O(\result_OBUF[20]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hBBBAAABA)) 
    \result_OBUF[20]_inst_i_5 
       (.I0(\result_OBUF[16]_inst_i_4_n_0 ),
        .I1(\result_OBUF[31]_inst_i_9_n_0 ),
        .I2(\result_OBUF[20]_inst_i_10_n_0 ),
        .I3(DI[0]),
        .I4(\result_OBUF[21]_inst_i_10_n_0 ),
        .O(\result_OBUF[20]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_OBUF[20]_inst_i_7 
       (.I0(B0[20]),
        .I1(ALUresult0__187_carry__2),
        .O(B[20]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h082A)) 
    \result_OBUF[20]_inst_i_8 
       (.I0(\result_OBUF[21]_inst_i_11_n_0 ),
        .I1(DI[1]),
        .I2(\result_OBUF[22]_inst_i_12_n_0 ),
        .I3(\result_OBUF[20]_inst_i_11_n_0 ),
        .O(\result_OBUF[20]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCFC05F5FCFC05050)) 
    \result_OBUF[20]_inst_i_9 
       (.I0(\result_OBUF[20]_inst_i_12_n_0 ),
        .I1(\result_OBUF[24]_inst_i_9_n_0 ),
        .I2(DI[1]),
        .I3(\result_OBUF[26]_inst_i_9_n_0 ),
        .I4(p_0_in),
        .I5(\result_OBUF[22]_inst_i_13_n_0 ),
        .O(\result_OBUF[20]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55554454)) 
    \result_OBUF[21]_inst_i_1 
       (.I0(\result_OBUF[21]_inst_i_2_n_0 ),
        .I1(\result_OBUF[21]_inst_i_3_n_0 ),
        .I2(\result_OBUF[21]_inst_i_4_n_0 ),
        .I3(\result_OBUF[21]_inst_i_5_n_0 ),
        .I4(\result_OBUF[29]_inst_i_14_0 ),
        .I5(\result[21] ),
        .O(writeData[21]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_OBUF[21]_inst_i_10 
       (.I0(\result_OBUF[23]_inst_i_10_n_0 ),
        .I1(DI[1]),
        .I2(\result_OBUF[21]_inst_i_12_n_0 ),
        .O(\result_OBUF[21]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFCFFFFFFFCFFFDF)) 
    \result_OBUF[21]_inst_i_11 
       (.I0(B[3]),
        .I1(rst_n_IBUF),
        .I2(A0[31]),
        .I3(ALUresult0__187_carry),
        .I4(B[4]),
        .I5(p_0_in),
        .O(\result_OBUF[21]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF5F305F3F)) 
    \result_OBUF[21]_inst_i_12 
       (.I0(A[29]),
        .I1(A[21]),
        .I2(p_0_in),
        .I3(B[3]),
        .I4(A[25]),
        .I5(B[4]),
        .O(\result_OBUF[21]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF4FFF7)) 
    \result_OBUF[21]_inst_i_13 
       (.I0(A0[6]),
        .I1(B[3]),
        .I2(B[4]),
        .I3(rst_n_IBUF),
        .I4(A0[14]),
        .I5(ALUresult0__187_carry),
        .O(\result_OBUF[21]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hBBEBEBFEAAAAAAAA)) 
    \result_OBUF[21]_inst_i_2 
       (.I0(\result_OBUF[29]_inst_i_8_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(\result_OBUF[31]_inst_i_9_n_0 ),
        .I3(B[21]),
        .I4(A[21]),
        .I5(\result_OBUF[29]_inst_i_14_0 ),
        .O(\result_OBUF[21]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8A888A888A88AAAA)) 
    \result_OBUF[21]_inst_i_3 
       (.I0(\result_OBUF[8]_inst_i_4_n_0 ),
        .I1(\result_OBUF[29]_inst_i_11_n_0 ),
        .I2(\result_OBUF[22]_inst_i_11_n_0 ),
        .I3(\result_OBUF[25]_inst_i_9_n_0 ),
        .I4(\result_OBUF[30]_inst_i_10_n_0 ),
        .I5(\result_OBUF[21]_inst_i_8_n_0 ),
        .O(\result_OBUF[21]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h37F7)) 
    \result_OBUF[21]_inst_i_4 
       (.I0(\result_OBUF[22]_inst_i_10_n_0 ),
        .I1(\result_OBUF[31]_inst_i_9_n_0 ),
        .I2(DI[0]),
        .I3(\result_OBUF[21]_inst_i_9_n_0 ),
        .O(\result_OBUF[21]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hBBBAAABA)) 
    \result_OBUF[21]_inst_i_5 
       (.I0(\result_OBUF[16]_inst_i_4_n_0 ),
        .I1(\result_OBUF[31]_inst_i_9_n_0 ),
        .I2(\result_OBUF[21]_inst_i_10_n_0 ),
        .I3(DI[0]),
        .I4(\result_OBUF[22]_inst_i_8_n_0 ),
        .O(\result_OBUF[21]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_OBUF[21]_inst_i_7 
       (.I0(B0[21]),
        .I1(ALUresult0__187_carry__2),
        .O(B[21]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \result_OBUF[21]_inst_i_8 
       (.I0(\result_OBUF[23]_inst_i_11_n_0 ),
        .I1(DI[1]),
        .I2(\result_OBUF[21]_inst_i_11_n_0 ),
        .I3(\result_OBUF[21]_inst_i_12_n_0 ),
        .O(\result_OBUF[21]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[21]_inst_i_9 
       (.I0(\result_OBUF[25]_inst_i_11_n_0 ),
        .I1(\result_OBUF[21]_inst_i_13_n_0 ),
        .I2(DI[1]),
        .I3(\result_OBUF[27]_inst_i_9_n_0 ),
        .I4(p_0_in),
        .I5(\result_OBUF[23]_inst_i_9_n_0 ),
        .O(\result_OBUF[21]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55555510)) 
    \result_OBUF[22]_inst_i_1 
       (.I0(\result_OBUF[22]_inst_i_2_n_0 ),
        .I1(\result_OBUF[22]_inst_i_3_n_0 ),
        .I2(\result_OBUF[22]_inst_i_4_n_0 ),
        .I3(\result_OBUF[22]_inst_i_5_n_0 ),
        .I4(\result_OBUF[29]_inst_i_14_0 ),
        .I5(\result[22] ),
        .O(writeData[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[22]_inst_i_10 
       (.I0(\result_OBUF[26]_inst_i_9_n_0 ),
        .I1(\result_OBUF[22]_inst_i_13_n_0 ),
        .I2(DI[1]),
        .I3(\result_OBUF[28]_inst_i_9_n_0 ),
        .I4(p_0_in),
        .I5(\result_OBUF[24]_inst_i_9_n_0 ),
        .O(\result_OBUF[22]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h111100001111F333)) 
    \result_OBUF[22]_inst_i_11 
       (.I0(\result_OBUF[24]_inst_i_11_n_0 ),
        .I1(\result_OBUF[26]_inst_i_12_n_0 ),
        .I2(\result_OBUF[22]_inst_i_14_n_0 ),
        .I3(p_0_in),
        .I4(DI[1]),
        .I5(\result_OBUF[22]_inst_i_12_n_0 ),
        .O(\result_OBUF[22]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A0CFA0C0)) 
    \result_OBUF[22]_inst_i_12 
       (.I0(A[30]),
        .I1(A[22]),
        .I2(p_0_in),
        .I3(B[3]),
        .I4(A[26]),
        .I5(B[4]),
        .O(\result_OBUF[22]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF4FFF7)) 
    \result_OBUF[22]_inst_i_13 
       (.I0(A0[7]),
        .I1(B[3]),
        .I2(B[4]),
        .I3(rst_n_IBUF),
        .I4(A0[15]),
        .I5(ALUresult0__187_carry),
        .O(\result_OBUF[22]_inst_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFDFF)) 
    \result_OBUF[22]_inst_i_14 
       (.I0(A0[31]),
        .I1(ALUresult0__187_carry),
        .I2(rst_n_IBUF),
        .I3(B0[4]),
        .I4(ALUresult0_carry__0_i_10_n_0),
        .O(\result_OBUF[22]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hBBEBEBFEAAAAAAAA)) 
    \result_OBUF[22]_inst_i_2 
       (.I0(\result_OBUF[29]_inst_i_8_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(\result_OBUF[31]_inst_i_9_n_0 ),
        .I3(B[22]),
        .I4(A[22]),
        .I5(\result_OBUF[29]_inst_i_14_0 ),
        .O(\result_OBUF[22]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBBBAAABA)) 
    \result_OBUF[22]_inst_i_3 
       (.I0(\result_OBUF[16]_inst_i_4_n_0 ),
        .I1(\result_OBUF[31]_inst_i_9_n_0 ),
        .I2(\result_OBUF[22]_inst_i_8_n_0 ),
        .I3(DI[0]),
        .I4(\result_OBUF[22]_inst_i_9_n_0 ),
        .O(\result_OBUF[22]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h737F)) 
    \result_OBUF[22]_inst_i_4 
       (.I0(\result_OBUF[22]_inst_i_10_n_0 ),
        .I1(\result_OBUF[31]_inst_i_9_n_0 ),
        .I2(DI[0]),
        .I3(\result_OBUF[23]_inst_i_6_n_0 ),
        .O(\result_OBUF[22]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8A888A888A88AAAA)) 
    \result_OBUF[22]_inst_i_5 
       (.I0(\result_OBUF[8]_inst_i_4_n_0 ),
        .I1(\result_OBUF[29]_inst_i_11_n_0 ),
        .I2(\result_OBUF[23]_inst_i_8_n_0 ),
        .I3(\result_OBUF[25]_inst_i_9_n_0 ),
        .I4(\result_OBUF[30]_inst_i_10_n_0 ),
        .I5(\result_OBUF[22]_inst_i_11_n_0 ),
        .O(\result_OBUF[22]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_OBUF[22]_inst_i_7 
       (.I0(B0[22]),
        .I1(ALUresult0__187_carry__2),
        .O(B[22]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h53)) 
    \result_OBUF[22]_inst_i_8 
       (.I0(\result_OBUF[24]_inst_i_11_n_0 ),
        .I1(\result_OBUF[22]_inst_i_12_n_0 ),
        .I2(DI[1]),
        .O(\result_OBUF[22]_inst_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_OBUF[22]_inst_i_9 
       (.I0(\result_OBUF[25]_inst_i_12_n_0 ),
        .I1(DI[1]),
        .I2(\result_OBUF[23]_inst_i_10_n_0 ),
        .O(\result_OBUF[22]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF11111110)) 
    \result_OBUF[23]_inst_i_1 
       (.I0(\result_OBUF[29]_inst_i_8_0 ),
        .I1(\result_OBUF[23]_inst_i_2_n_0 ),
        .I2(\result_OBUF[23]_inst_i_3_n_0 ),
        .I3(\result_OBUF[23]_inst_i_4_n_0 ),
        .I4(\result_OBUF[29]_inst_i_14_0 ),
        .I5(\result[23] ),
        .O(writeData[23]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAF30AF3F)) 
    \result_OBUF[23]_inst_i_10 
       (.I0(ALUresult0__187_carry__2_i_10_n_0),
        .I1(A[23]),
        .I2(p_0_in),
        .I3(B[3]),
        .I4(A[27]),
        .I5(B[4]),
        .O(\result_OBUF[23]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF00FF004747)) 
    \result_OBUF[23]_inst_i_11 
       (.I0(A[23]),
        .I1(p_0_in),
        .I2(A[27]),
        .I3(ALUresult0__187_carry__2_i_10_n_0),
        .I4(B[4]),
        .I5(B[3]),
        .O(\result_OBUF[23]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAA2A2202228288A8)) 
    \result_OBUF[23]_inst_i_2 
       (.I0(\result_OBUF[29]_inst_i_14_0 ),
        .I1(A[23]),
        .I2(B0[23]),
        .I3(ALUresult0__187_carry__2),
        .I4(\result_OBUF[31]_inst_i_9_n_0 ),
        .I5(\result_OBUF[31]_inst_i_10_n_0 ),
        .O(\result_OBUF[23]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004F7F)) 
    \result_OBUF[23]_inst_i_3 
       (.I0(\result_OBUF[23]_inst_i_6_n_0 ),
        .I1(DI[0]),
        .I2(\result_OBUF[31]_inst_i_9_n_0 ),
        .I3(\result_OBUF[24]_inst_i_6_n_0 ),
        .I4(\result_OBUF[23]_inst_i_7_n_0 ),
        .I5(\result_OBUF[16]_inst_i_4_n_0 ),
        .O(\result_OBUF[23]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A888A888A88AAAA)) 
    \result_OBUF[23]_inst_i_4 
       (.I0(\result_OBUF[8]_inst_i_4_n_0 ),
        .I1(\result_OBUF[29]_inst_i_11_n_0 ),
        .I2(\result_OBUF[24]_inst_i_8_n_0 ),
        .I3(\result_OBUF[25]_inst_i_9_n_0 ),
        .I4(\result_OBUF[30]_inst_i_10_n_0 ),
        .I5(\result_OBUF[23]_inst_i_8_n_0 ),
        .O(\result_OBUF[23]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[23]_inst_i_6 
       (.I0(\result_OBUF[27]_inst_i_9_n_0 ),
        .I1(\result_OBUF[23]_inst_i_9_n_0 ),
        .I2(DI[1]),
        .I3(\result_OBUF[29]_inst_i_15_n_0 ),
        .I4(p_0_in),
        .I5(\result_OBUF[25]_inst_i_11_n_0 ),
        .O(\result_OBUF[23]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000FFB8B8)) 
    \result_OBUF[23]_inst_i_7 
       (.I0(\result_OBUF[25]_inst_i_12_n_0 ),
        .I1(DI[1]),
        .I2(\result_OBUF[23]_inst_i_10_n_0 ),
        .I3(\result_OBUF[24]_inst_i_10_n_0 ),
        .I4(DI[0]),
        .I5(\result_OBUF[31]_inst_i_9_n_0 ),
        .O(\result_OBUF[23]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h888AFFFF888A0000)) 
    \result_OBUF[23]_inst_i_8 
       (.I0(\result_OBUF[25]_inst_i_12_n_0 ),
        .I1(ALUresult0__187_carry__2_i_10_n_0),
        .I2(B[4]),
        .I3(B[3]),
        .I4(DI[1]),
        .I5(\result_OBUF[23]_inst_i_11_n_0 ),
        .O(\result_OBUF[23]_inst_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFCC4747)) 
    \result_OBUF[23]_inst_i_9 
       (.I0(A[8]),
        .I1(B[3]),
        .I2(A[16]),
        .I3(\result_OBUF[0]_inst_i_7_n_0 ),
        .I4(B[4]),
        .O(\result_OBUF[23]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF11111110)) 
    \result_OBUF[24]_inst_i_1 
       (.I0(\result_OBUF[29]_inst_i_8_0 ),
        .I1(\result_OBUF[24]_inst_i_2_n_0 ),
        .I2(\result_OBUF[24]_inst_i_3_n_0 ),
        .I3(\result_OBUF[24]_inst_i_4_n_0 ),
        .I4(\result_OBUF[29]_inst_i_14_0 ),
        .I5(\result[24] ),
        .O(writeData[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[24]_inst_i_10 
       (.I0(\result_OBUF[24]_inst_i_13_n_0 ),
        .I1(\result_OBUF[24]_inst_i_14_n_0 ),
        .I2(DI[1]),
        .I3(\result_OBUF[24]_inst_i_15_n_0 ),
        .I4(p_0_in),
        .I5(\result_OBUF[24]_inst_i_16_n_0 ),
        .O(\result_OBUF[24]_inst_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \result_OBUF[24]_inst_i_11 
       (.I0(A[24]),
        .I1(p_0_in),
        .I2(B[3]),
        .I3(A[28]),
        .I4(B[4]),
        .O(\result_OBUF[24]_inst_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \result_OBUF[24]_inst_i_12 
       (.I0(rst_n_IBUF),
        .I1(A0[17]),
        .I2(ALUresult0__187_carry),
        .O(\result_OBUF[24]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0030000000300010)) 
    \result_OBUF[24]_inst_i_13 
       (.I0(B0[3]),
        .I1(ALUresult0__187_carry),
        .I2(A0[26]),
        .I3(rst_n_IBUF),
        .I4(ALUresult0_carry__0_i_10_n_0),
        .I5(B0[4]),
        .O(\result_OBUF[24]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0030000000300010)) 
    \result_OBUF[24]_inst_i_14 
       (.I0(B0[4]),
        .I1(ALUresult0__187_carry),
        .I2(A0[30]),
        .I3(rst_n_IBUF),
        .I4(ALUresult0_carry__0_i_10_n_0),
        .I5(B0[3]),
        .O(\result_OBUF[24]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0030000000300010)) 
    \result_OBUF[24]_inst_i_15 
       (.I0(B0[3]),
        .I1(ALUresult0__187_carry),
        .I2(A0[24]),
        .I3(rst_n_IBUF),
        .I4(ALUresult0_carry__0_i_10_n_0),
        .I5(B0[4]),
        .O(\result_OBUF[24]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0030000000300010)) 
    \result_OBUF[24]_inst_i_16 
       (.I0(B0[3]),
        .I1(ALUresult0__187_carry),
        .I2(A0[28]),
        .I3(rst_n_IBUF),
        .I4(ALUresult0_carry__0_i_10_n_0),
        .I5(B0[4]),
        .O(\result_OBUF[24]_inst_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAA2A2202228288A8)) 
    \result_OBUF[24]_inst_i_2 
       (.I0(\result_OBUF[29]_inst_i_14_0 ),
        .I1(A[24]),
        .I2(B0[24]),
        .I3(ALUresult0__187_carry__2),
        .I4(\result_OBUF[31]_inst_i_9_n_0 ),
        .I5(\result_OBUF[31]_inst_i_10_n_0 ),
        .O(\result_OBUF[24]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001FDF)) 
    \result_OBUF[24]_inst_i_3 
       (.I0(\result_OBUF[25]_inst_i_7_n_0 ),
        .I1(DI[0]),
        .I2(\result_OBUF[31]_inst_i_9_n_0 ),
        .I3(\result_OBUF[24]_inst_i_6_n_0 ),
        .I4(\result_OBUF[24]_inst_i_7_n_0 ),
        .I5(\result_OBUF[16]_inst_i_4_n_0 ),
        .O(\result_OBUF[24]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h888A888A888AAAAA)) 
    \result_OBUF[24]_inst_i_4 
       (.I0(\result_OBUF[8]_inst_i_4_n_0 ),
        .I1(\result_OBUF[29]_inst_i_11_n_0 ),
        .I2(\result_OBUF[24]_inst_i_8_n_0 ),
        .I3(\result_OBUF[30]_inst_i_10_n_0 ),
        .I4(\result_OBUF[29]_inst_i_13_n_0 ),
        .I5(\result_OBUF[25]_inst_i_10_n_0 ),
        .O(\result_OBUF[24]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[24]_inst_i_6 
       (.I0(\result_OBUF[28]_inst_i_9_n_0 ),
        .I1(\result_OBUF[24]_inst_i_9_n_0 ),
        .I2(DI[1]),
        .I3(\result_OBUF[30]_inst_i_14_n_0 ),
        .I4(p_0_in),
        .I5(\result_OBUF[26]_inst_i_9_n_0 ),
        .O(\result_OBUF[24]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B8B800FF)) 
    \result_OBUF[24]_inst_i_7 
       (.I0(\result_OBUF[27]_inst_i_11_n_0 ),
        .I1(DI[1]),
        .I2(\result_OBUF[25]_inst_i_12_n_0 ),
        .I3(\result_OBUF[24]_inst_i_10_n_0 ),
        .I4(DI[0]),
        .I5(\result_OBUF[31]_inst_i_9_n_0 ),
        .O(\result_OBUF[24]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000F1F1F100F1)) 
    \result_OBUF[24]_inst_i_8 
       (.I0(B[3]),
        .I1(B[4]),
        .I2(ALUresult0__187_carry__2_i_10_n_0),
        .I3(\result_OBUF[24]_inst_i_11_n_0 ),
        .I4(DI[1]),
        .I5(\result_OBUF[26]_inst_i_11_n_0 ),
        .O(\result_OBUF[24]_inst_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFC77FC44)) 
    \result_OBUF[24]_inst_i_9 
       (.I0(ALUresult0__187_carry__0_i_15_n_0),
        .I1(B[3]),
        .I2(\result_OBUF[1]_inst_i_6_n_0 ),
        .I3(B[4]),
        .I4(\result_OBUF[24]_inst_i_12_n_0 ),
        .O(\result_OBUF[24]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF11111110)) 
    \result_OBUF[25]_inst_i_1 
       (.I0(\result_OBUF[29]_inst_i_8_0 ),
        .I1(\result_OBUF[25]_inst_i_2_n_0 ),
        .I2(\result_OBUF[25]_inst_i_3_n_0 ),
        .I3(\result_OBUF[25]_inst_i_4_n_0 ),
        .I4(\result_OBUF[29]_inst_i_14_0 ),
        .I5(\result[25] ),
        .O(writeData[25]));
  LUT6 #(
    .INIT(64'h0C000C00ACFFAC00)) 
    \result_OBUF[25]_inst_i_10 
       (.I0(\result_OBUF[27]_inst_i_13_n_0 ),
        .I1(ALUresult0__187_carry__2_i_10_n_0),
        .I2(p_0_in),
        .I3(DI[1]),
        .I4(\result_OBUF[25]_inst_i_12_n_0 ),
        .I5(\result_OBUF[26]_inst_i_12_n_0 ),
        .O(\result_OBUF[25]_inst_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hCC47FF47)) 
    \result_OBUF[25]_inst_i_11 
       (.I0(A[10]),
        .I1(B[3]),
        .I2(A[18]),
        .I3(B[4]),
        .I4(A[2]),
        .O(\result_OBUF[25]_inst_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF4F7)) 
    \result_OBUF[25]_inst_i_12 
       (.I0(A[25]),
        .I1(p_0_in),
        .I2(B[3]),
        .I3(A[29]),
        .I4(B[4]),
        .O(\result_OBUF[25]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h88AA000A220AAAA0)) 
    \result_OBUF[25]_inst_i_2 
       (.I0(\result_OBUF[29]_inst_i_14_0 ),
        .I1(\result_OBUF[25]_inst_i_6_n_0 ),
        .I2(A[25]),
        .I3(B[25]),
        .I4(\result_OBUF[31]_inst_i_9_n_0 ),
        .I5(\result_OBUF[31]_inst_i_10_n_0 ),
        .O(\result_OBUF[25]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004F7F)) 
    \result_OBUF[25]_inst_i_3 
       (.I0(\result_OBUF[25]_inst_i_7_n_0 ),
        .I1(DI[0]),
        .I2(\result_OBUF[31]_inst_i_9_n_0 ),
        .I3(\result_OBUF[26]_inst_i_6_n_0 ),
        .I4(\result_OBUF[25]_inst_i_8_n_0 ),
        .I5(\result_OBUF[16]_inst_i_4_n_0 ),
        .O(\result_OBUF[25]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A888A888A88AAAA)) 
    \result_OBUF[25]_inst_i_4 
       (.I0(\result_OBUF[8]_inst_i_4_n_0 ),
        .I1(\result_OBUF[29]_inst_i_11_n_0 ),
        .I2(\result_OBUF[26]_inst_i_8_n_0 ),
        .I3(\result_OBUF[25]_inst_i_9_n_0 ),
        .I4(\result_OBUF[30]_inst_i_10_n_0 ),
        .I5(\result_OBUF[25]_inst_i_10_n_0 ),
        .O(\result_OBUF[25]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \result_OBUF[25]_inst_i_6 
       (.I0(douta[18]),
        .I1(douta[19]),
        .I2(douta[20]),
        .I3(douta[16]),
        .I4(douta[17]),
        .I5(A0[25]),
        .O(\result_OBUF[25]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[25]_inst_i_7 
       (.I0(\result_OBUF[29]_inst_i_15_n_0 ),
        .I1(\result_OBUF[25]_inst_i_11_n_0 ),
        .I2(DI[1]),
        .I3(\result_OBUF[31]_inst_i_23_n_0 ),
        .I4(p_0_in),
        .I5(\result_OBUF[27]_inst_i_9_n_0 ),
        .O(\result_OBUF[25]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \result_OBUF[25]_inst_i_8 
       (.I0(\result_OBUF[26]_inst_i_10_n_0 ),
        .I1(DI[0]),
        .I2(\result_OBUF[25]_inst_i_12_n_0 ),
        .I3(DI[1]),
        .I4(\result_OBUF[27]_inst_i_11_n_0 ),
        .I5(\result_OBUF[31]_inst_i_9_n_0 ),
        .O(\result_OBUF[25]_inst_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \result_OBUF[25]_inst_i_9 
       (.I0(DI[0]),
        .I1(\result_OBUF[16]_inst_i_12_n_0 ),
        .I2(\result_OBUF[16]_inst_i_11_n_0 ),
        .I3(\result_OBUF[16]_inst_i_10_n_0 ),
        .O(\result_OBUF[25]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF11111110)) 
    \result_OBUF[26]_inst_i_1 
       (.I0(\result_OBUF[29]_inst_i_8_0 ),
        .I1(\result_OBUF[26]_inst_i_2_n_0 ),
        .I2(\result_OBUF[26]_inst_i_3_n_0 ),
        .I3(\result_OBUF[26]_inst_i_4_n_0 ),
        .I4(\result_OBUF[29]_inst_i_14_0 ),
        .I5(\result[26] ),
        .O(writeData[26]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFAF30AF3)) 
    \result_OBUF[26]_inst_i_10 
       (.I0(\result_OBUF[26]_inst_i_14_n_0 ),
        .I1(\result_OBUF[26]_inst_i_15_n_0 ),
        .I2(DI[1]),
        .I3(p_0_in),
        .I4(\result_OBUF[26]_inst_i_16_n_0 ),
        .I5(B[3]),
        .O(\result_OBUF[26]_inst_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \result_OBUF[26]_inst_i_11 
       (.I0(A[26]),
        .I1(p_0_in),
        .I2(B[4]),
        .I3(A[30]),
        .I4(B[3]),
        .O(\result_OBUF[26]_inst_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00000E00)) 
    \result_OBUF[26]_inst_i_12 
       (.I0(B[3]),
        .I1(B[4]),
        .I2(ALUresult0__187_carry),
        .I3(A0[31]),
        .I4(rst_n_IBUF),
        .O(\result_OBUF[26]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \result_OBUF[26]_inst_i_13 
       (.I0(p_0_in),
        .I1(B[4]),
        .I2(rst_n_IBUF),
        .I3(A0[28]),
        .I4(ALUresult0__187_carry),
        .I5(B[3]),
        .O(\result_OBUF[26]_inst_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFFFF2FF)) 
    \result_OBUF[26]_inst_i_14 
       (.I0(B0[4]),
        .I1(ALUresult0_carry__0_i_10_n_0),
        .I2(rst_n_IBUF),
        .I3(A0[26]),
        .I4(ALUresult0__187_carry),
        .O(\result_OBUF[26]_inst_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h02020002)) 
    \result_OBUF[26]_inst_i_15 
       (.I0(A0[30]),
        .I1(ALUresult0__187_carry),
        .I2(rst_n_IBUF),
        .I3(B0[4]),
        .I4(ALUresult0_carry__0_i_10_n_0),
        .O(\result_OBUF[26]_inst_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFFF2FF)) 
    \result_OBUF[26]_inst_i_16 
       (.I0(B0[4]),
        .I1(ALUresult0_carry__0_i_10_n_0),
        .I2(rst_n_IBUF),
        .I3(A0[28]),
        .I4(ALUresult0__187_carry),
        .O(\result_OBUF[26]_inst_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAA2A2202228288A8)) 
    \result_OBUF[26]_inst_i_2 
       (.I0(\result_OBUF[29]_inst_i_14_0 ),
        .I1(A[26]),
        .I2(B0[26]),
        .I3(ALUresult0__187_carry__2),
        .I4(\result_OBUF[31]_inst_i_9_n_0 ),
        .I5(\result_OBUF[31]_inst_i_10_n_0 ),
        .O(\result_OBUF[26]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001FDF)) 
    \result_OBUF[26]_inst_i_3 
       (.I0(\result_OBUF[27]_inst_i_6_n_0 ),
        .I1(DI[0]),
        .I2(\result_OBUF[31]_inst_i_9_n_0 ),
        .I3(\result_OBUF[26]_inst_i_6_n_0 ),
        .I4(\result_OBUF[26]_inst_i_7_n_0 ),
        .I5(\result_OBUF[16]_inst_i_4_n_0 ),
        .O(\result_OBUF[26]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h888A888A888AAAAA)) 
    \result_OBUF[26]_inst_i_4 
       (.I0(\result_OBUF[8]_inst_i_4_n_0 ),
        .I1(\result_OBUF[29]_inst_i_11_n_0 ),
        .I2(\result_OBUF[26]_inst_i_8_n_0 ),
        .I3(\result_OBUF[30]_inst_i_10_n_0 ),
        .I4(\result_OBUF[29]_inst_i_13_n_0 ),
        .I5(\result_OBUF[27]_inst_i_8_n_0 ),
        .O(\result_OBUF[26]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[26]_inst_i_6 
       (.I0(\result_OBUF[30]_inst_i_14_n_0 ),
        .I1(\result_OBUF[26]_inst_i_9_n_0 ),
        .I2(DI[1]),
        .I3(\result_OBUF[31]_inst_i_19_n_0 ),
        .I4(p_0_in),
        .I5(\result_OBUF[28]_inst_i_9_n_0 ),
        .O(\result_OBUF[26]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B8FFB800)) 
    \result_OBUF[26]_inst_i_7 
       (.I0(\result_OBUF[27]_inst_i_10_n_0 ),
        .I1(DI[1]),
        .I2(\result_OBUF[27]_inst_i_11_n_0 ),
        .I3(DI[0]),
        .I4(\result_OBUF[26]_inst_i_10_n_0 ),
        .I5(\result_OBUF[31]_inst_i_9_n_0 ),
        .O(\result_OBUF[26]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h3F30000011111111)) 
    \result_OBUF[26]_inst_i_8 
       (.I0(\result_OBUF[26]_inst_i_11_n_0 ),
        .I1(\result_OBUF[26]_inst_i_12_n_0 ),
        .I2(p_0_in),
        .I3(ALUresult0__187_carry__2_i_10_n_0),
        .I4(\result_OBUF[26]_inst_i_13_n_0 ),
        .I5(DI[1]),
        .O(\result_OBUF[26]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFCFF7777FCFF4444)) 
    \result_OBUF[26]_inst_i_9 
       (.I0(ALUresult0__187_carry__0_i_13_n_0),
        .I1(B[3]),
        .I2(ALUresult0__187_carry),
        .I3(A0[3]),
        .I4(B[4]),
        .I5(ALUresult0__187_carry__1_i_13_n_0),
        .O(\result_OBUF[26]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF11111110)) 
    \result_OBUF[27]_inst_i_1 
       (.I0(\result_OBUF[29]_inst_i_8_0 ),
        .I1(\result_OBUF[27]_inst_i_2_n_0 ),
        .I2(\result_OBUF[27]_inst_i_3_n_0 ),
        .I3(\result_OBUF[27]_inst_i_4_n_0 ),
        .I4(\result_OBUF[29]_inst_i_14_0 ),
        .I5(\result[27] ),
        .O(writeData[27]));
  LUT6 #(
    .INIT(64'hFFFFFFEFFFFFFFFF)) 
    \result_OBUF[27]_inst_i_10 
       (.I0(B[4]),
        .I1(rst_n_IBUF),
        .I2(A0[29]),
        .I3(ALUresult0__187_carry),
        .I4(B[3]),
        .I5(p_0_in),
        .O(\result_OBUF[27]_inst_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFF7FFF4)) 
    \result_OBUF[27]_inst_i_11 
       (.I0(A[27]),
        .I1(p_0_in),
        .I2(B[3]),
        .I3(B[4]),
        .I4(ALUresult0__187_carry__2_i_10_n_0),
        .O(\result_OBUF[27]_inst_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \result_OBUF[27]_inst_i_12 
       (.I0(B[4]),
        .I1(rst_n_IBUF),
        .I2(A0[29]),
        .I3(ALUresult0__187_carry),
        .O(\result_OBUF[27]_inst_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \result_OBUF[27]_inst_i_13 
       (.I0(B[3]),
        .I1(ALUresult0__187_carry),
        .I2(A0[27]),
        .I3(rst_n_IBUF),
        .I4(B[4]),
        .O(\result_OBUF[27]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000EF0000)) 
    \result_OBUF[27]_inst_i_14 
       (.I0(B[3]),
        .I1(B[4]),
        .I2(p_0_in),
        .I3(rst_n_IBUF),
        .I4(A0[31]),
        .I5(ALUresult0__187_carry),
        .O(\result_OBUF[27]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAA2A2202228288A8)) 
    \result_OBUF[27]_inst_i_2 
       (.I0(\result_OBUF[29]_inst_i_14_0 ),
        .I1(A[27]),
        .I2(B0[27]),
        .I3(ALUresult0__187_carry__2),
        .I4(\result_OBUF[31]_inst_i_9_n_0 ),
        .I5(\result_OBUF[31]_inst_i_10_n_0 ),
        .O(\result_OBUF[27]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004F7F)) 
    \result_OBUF[27]_inst_i_3 
       (.I0(\result_OBUF[27]_inst_i_6_n_0 ),
        .I1(DI[0]),
        .I2(\result_OBUF[31]_inst_i_9_n_0 ),
        .I3(\result_OBUF[28]_inst_i_6_n_0 ),
        .I4(\result_OBUF[27]_inst_i_7_n_0 ),
        .I5(\result_OBUF[16]_inst_i_4_n_0 ),
        .O(\result_OBUF[27]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h888A888A888AAAAA)) 
    \result_OBUF[27]_inst_i_4 
       (.I0(\result_OBUF[8]_inst_i_4_n_0 ),
        .I1(\result_OBUF[29]_inst_i_11_n_0 ),
        .I2(\result_OBUF[27]_inst_i_8_n_0 ),
        .I3(\result_OBUF[30]_inst_i_10_n_0 ),
        .I4(\result_OBUF[29]_inst_i_13_n_0 ),
        .I5(\result_OBUF[28]_inst_i_8_n_0 ),
        .O(\result_OBUF[27]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[27]_inst_i_6 
       (.I0(\result_OBUF[31]_inst_i_23_n_0 ),
        .I1(\result_OBUF[27]_inst_i_9_n_0 ),
        .I2(DI[1]),
        .I3(\result_OBUF[31]_inst_i_13_n_0 ),
        .I4(p_0_in),
        .I5(\result_OBUF[29]_inst_i_15_n_0 ),
        .O(\result_OBUF[27]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFB800B8)) 
    \result_OBUF[27]_inst_i_7 
       (.I0(\result_OBUF[27]_inst_i_10_n_0 ),
        .I1(DI[1]),
        .I2(\result_OBUF[27]_inst_i_11_n_0 ),
        .I3(DI[0]),
        .I4(\result_OBUF[28]_inst_i_10_n_0 ),
        .I5(\result_OBUF[31]_inst_i_9_n_0 ),
        .O(\result_OBUF[27]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EFFFE0FF)) 
    \result_OBUF[27]_inst_i_8 
       (.I0(B[3]),
        .I1(\result_OBUF[27]_inst_i_12_n_0 ),
        .I2(DI[1]),
        .I3(p_0_in),
        .I4(\result_OBUF[27]_inst_i_13_n_0 ),
        .I5(\result_OBUF[27]_inst_i_14_n_0 ),
        .O(\result_OBUF[27]_inst_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \result_OBUF[27]_inst_i_9 
       (.I0(A[12]),
        .I1(B[3]),
        .I2(A[4]),
        .I3(B[4]),
        .I4(A[20]),
        .O(\result_OBUF[27]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF11111110)) 
    \result_OBUF[28]_inst_i_1 
       (.I0(\result_OBUF[29]_inst_i_8_0 ),
        .I1(\result_OBUF[28]_inst_i_2_n_0 ),
        .I2(\result_OBUF[28]_inst_i_3_n_0 ),
        .I3(\result_OBUF[28]_inst_i_4_n_0 ),
        .I4(\result_OBUF[29]_inst_i_14_0 ),
        .I5(\result[28] ),
        .O(writeData[28]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF4FFF7F)) 
    \result_OBUF[28]_inst_i_10 
       (.I0(A[30]),
        .I1(DI[1]),
        .I2(p_0_in),
        .I3(B[4]),
        .I4(A[28]),
        .I5(B[3]),
        .O(\result_OBUF[28]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAA2A2202228288A8)) 
    \result_OBUF[28]_inst_i_2 
       (.I0(\result_OBUF[29]_inst_i_14_0 ),
        .I1(A[28]),
        .I2(B0[28]),
        .I3(ALUresult0__187_carry__2),
        .I4(\result_OBUF[31]_inst_i_9_n_0 ),
        .I5(\result_OBUF[31]_inst_i_10_n_0 ),
        .O(\result_OBUF[28]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001FDF)) 
    \result_OBUF[28]_inst_i_3 
       (.I0(\result_OBUF[29]_inst_i_9_n_0 ),
        .I1(DI[0]),
        .I2(\result_OBUF[31]_inst_i_9_n_0 ),
        .I3(\result_OBUF[28]_inst_i_6_n_0 ),
        .I4(\result_OBUF[28]_inst_i_7_n_0 ),
        .I5(\result_OBUF[16]_inst_i_4_n_0 ),
        .O(\result_OBUF[28]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h888A888A888AAAAA)) 
    \result_OBUF[28]_inst_i_4 
       (.I0(\result_OBUF[8]_inst_i_4_n_0 ),
        .I1(\result_OBUF[29]_inst_i_11_n_0 ),
        .I2(\result_OBUF[28]_inst_i_8_n_0 ),
        .I3(\result_OBUF[30]_inst_i_10_n_0 ),
        .I4(\result_OBUF[29]_inst_i_13_n_0 ),
        .I5(\result_OBUF[29]_inst_i_12_n_0 ),
        .O(\result_OBUF[28]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[28]_inst_i_6 
       (.I0(\result_OBUF[31]_inst_i_19_n_0 ),
        .I1(\result_OBUF[28]_inst_i_9_n_0 ),
        .I2(DI[1]),
        .I3(\result_OBUF[31]_inst_i_21_n_0 ),
        .I4(p_0_in),
        .I5(\result_OBUF[30]_inst_i_14_n_0 ),
        .O(\result_OBUF[28]_inst_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \result_OBUF[28]_inst_i_7 
       (.I0(\result_OBUF[29]_inst_i_16_n_0 ),
        .I1(DI[0]),
        .I2(\result_OBUF[28]_inst_i_10_n_0 ),
        .I3(\result_OBUF[31]_inst_i_9_n_0 ),
        .O(\result_OBUF[28]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h888888A8)) 
    \result_OBUF[28]_inst_i_8 
       (.I0(\result_OBUF[28]_inst_i_10_n_0 ),
        .I1(ALUresult0__187_carry__2_i_10_n_0),
        .I2(p_0_in),
        .I3(B[4]),
        .I4(B[3]),
        .O(\result_OBUF[28]_inst_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hCC47FF47)) 
    \result_OBUF[28]_inst_i_9 
       (.I0(A[13]),
        .I1(B[3]),
        .I2(A[21]),
        .I3(B[4]),
        .I4(A[5]),
        .O(\result_OBUF[28]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF11111110)) 
    \result_OBUF[29]_inst_i_1 
       (.I0(\result_OBUF[29]_inst_i_8_0 ),
        .I1(\result_OBUF[29]_inst_i_3_n_0 ),
        .I2(\result_OBUF[29]_inst_i_4_n_0 ),
        .I3(\result_OBUF[29]_inst_i_5_n_0 ),
        .I4(\result_OBUF[29]_inst_i_14_0 ),
        .I5(\result[29] ),
        .O(writeData[29]));
  LUT5 #(
    .INIT(32'h0000EEE2)) 
    \result_OBUF[29]_inst_i_10 
       (.I0(\result_OBUF[29]_inst_i_16_n_0 ),
        .I1(DI[0]),
        .I2(\result_OBUF[30]_inst_i_11_n_0 ),
        .I3(DI[1]),
        .I4(\result_OBUF[31]_inst_i_9_n_0 ),
        .O(\result_OBUF[29]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000FE0000)) 
    \result_OBUF[29]_inst_i_11 
       (.I0(\result_OBUF[16]_inst_i_10_n_0 ),
        .I1(\result_OBUF[16]_inst_i_11_n_0 ),
        .I2(\result_OBUF[16]_inst_i_12_n_0 ),
        .I3(rst_n_IBUF),
        .I4(A0[31]),
        .I5(ALUresult0__187_carry),
        .O(\result_OBUF[29]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0F0F0B1F0)) 
    \result_OBUF[29]_inst_i_12 
       (.I0(DI[1]),
        .I1(A[29]),
        .I2(ALUresult0__187_carry__2_i_10_n_0),
        .I3(p_0_in),
        .I4(B[4]),
        .I5(B[3]),
        .O(\result_OBUF[29]_inst_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \result_OBUF[29]_inst_i_13 
       (.I0(\result_OBUF[16]_inst_i_10_n_0 ),
        .I1(\result_OBUF[16]_inst_i_11_n_0 ),
        .I2(\result_OBUF[16]_inst_i_12_n_0 ),
        .I3(DI[0]),
        .O(\result_OBUF[29]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCF3FCFDFFFFFF)) 
    \result_OBUF[29]_inst_i_14 
       (.I0(douta[0]),
        .I1(douta[3]),
        .I2(douta[4]),
        .I3(douta[1]),
        .I4(douta[2]),
        .I5(douta[5]),
        .O(\result_OBUF[29]_inst_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hCC47FF47)) 
    \result_OBUF[29]_inst_i_15 
       (.I0(A[14]),
        .I1(B[3]),
        .I2(A[22]),
        .I3(B[4]),
        .I4(A[6]),
        .O(\result_OBUF[29]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF8FBFFFFFFFF)) 
    \result_OBUF[29]_inst_i_16 
       (.I0(ALUresult0__187_carry__2_i_10_n_0),
        .I1(DI[1]),
        .I2(B[4]),
        .I3(A[29]),
        .I4(B[3]),
        .I5(p_0_in),
        .O(\result_OBUF[29]_inst_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \result_OBUF[29]_inst_i_2 
       (.I0(register_reg_r1_0_31_0_5_i_3_n_0),
        .I1(douta[4]),
        .I2(douta[3]),
        .I3(douta[5]),
        .I4(\result_OBUF[29]_inst_i_8_n_0 ),
        .O(\result_OBUF[29]_inst_i_8_0 ));
  LUT6 #(
    .INIT(64'hAA2A2202228288A8)) 
    \result_OBUF[29]_inst_i_3 
       (.I0(\result_OBUF[29]_inst_i_14_0 ),
        .I1(A[29]),
        .I2(B0[29]),
        .I3(ALUresult0__187_carry__2),
        .I4(\result_OBUF[31]_inst_i_9_n_0 ),
        .I5(\result_OBUF[31]_inst_i_10_n_0 ),
        .O(\result_OBUF[29]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004F7F)) 
    \result_OBUF[29]_inst_i_4 
       (.I0(\result_OBUF[29]_inst_i_9_n_0 ),
        .I1(DI[0]),
        .I2(\result_OBUF[31]_inst_i_9_n_0 ),
        .I3(\result_OBUF[30]_inst_i_12_n_0 ),
        .I4(\result_OBUF[29]_inst_i_10_n_0 ),
        .I5(\result_OBUF[16]_inst_i_4_n_0 ),
        .O(\result_OBUF[29]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h888A888A888AAAAA)) 
    \result_OBUF[29]_inst_i_5 
       (.I0(\result_OBUF[8]_inst_i_4_n_0 ),
        .I1(\result_OBUF[29]_inst_i_11_n_0 ),
        .I2(\result_OBUF[29]_inst_i_12_n_0 ),
        .I3(\result_OBUF[30]_inst_i_10_n_0 ),
        .I4(\result_OBUF[30]_inst_i_9_n_0 ),
        .I5(\result_OBUF[29]_inst_i_13_n_0 ),
        .O(\result_OBUF[29]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000100010)) 
    \result_OBUF[29]_inst_i_6 
       (.I0(douta[4]),
        .I1(douta[3]),
        .I2(douta[5]),
        .I3(register_reg_r1_0_31_0_5_i_3_n_0),
        .I4(\result_OBUF[29]_inst_i_8_n_0 ),
        .I5(\result_OBUF[29]_inst_i_14_n_0 ),
        .O(\result_OBUF[29]_inst_i_14_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFEF0FCFFFF)) 
    \result_OBUF[29]_inst_i_8 
       (.I0(douta[0]),
        .I1(douta[3]),
        .I2(douta[4]),
        .I3(douta[1]),
        .I4(douta[5]),
        .I5(douta[2]),
        .O(\result_OBUF[29]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[29]_inst_i_9 
       (.I0(\result_OBUF[31]_inst_i_13_n_0 ),
        .I1(\result_OBUF[29]_inst_i_15_n_0 ),
        .I2(DI[1]),
        .I3(\result_OBUF[31]_inst_i_22_n_0 ),
        .I4(p_0_in),
        .I5(\result_OBUF[31]_inst_i_23_n_0 ),
        .O(\result_OBUF[29]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BABBBABA)) 
    \result_OBUF[2]_inst_i_1 
       (.I0(\result_OBUF[2]_inst_i_2_n_0 ),
        .I1(\result_OBUF[29]_inst_i_14_0 ),
        .I2(\result_OBUF[2]_inst_i_3_n_0 ),
        .I3(\result_OBUF[2]_inst_i_4_n_0 ),
        .I4(\result_OBUF[8]_inst_i_4_n_0 ),
        .I5(\result[2] ),
        .O(writeData[2]));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \result_OBUF[2]_inst_i_10 
       (.I0(A[10]),
        .I1(A[26]),
        .I2(B[3]),
        .I3(A[2]),
        .I4(B[4]),
        .I5(A[18]),
        .O(\result_OBUF[2]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFBFFFFFFFF)) 
    \result_OBUF[2]_inst_i_11 
       (.I0(ALUresult0__187_carry),
        .I1(A0[1]),
        .I2(rst_n_IBUF),
        .I3(B[4]),
        .I4(B[3]),
        .I5(p_0_in),
        .O(\result_OBUF[2]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hBEABFABEAAAAAAAA)) 
    \result_OBUF[2]_inst_i_2 
       (.I0(\result_OBUF[29]_inst_i_8_0 ),
        .I1(\result_OBUF[31]_inst_i_9_n_0 ),
        .I2(\result_OBUF[31]_inst_i_10_n_0 ),
        .I3(A[2]),
        .I4(p_0_in),
        .I5(\result_OBUF[29]_inst_i_14_0 ),
        .O(\result_OBUF[2]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000ABFB)) 
    \result_OBUF[2]_inst_i_3 
       (.I0(\result_OBUF[31]_inst_i_9_n_0 ),
        .I1(\result_OBUF[2]_inst_i_7_n_0 ),
        .I2(DI[0]),
        .I3(\result_OBUF[3]_inst_i_8_n_0 ),
        .I4(\result_OBUF[2]_inst_i_8_n_0 ),
        .I5(\result_OBUF[16]_inst_i_4_n_0 ),
        .O(\result_OBUF[2]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000C0EEC0E0)) 
    \result_OBUF[2]_inst_i_4 
       (.I0(\result_OBUF[3]_inst_i_8_n_0 ),
        .I1(\result_OBUF[29]_inst_i_13_n_0 ),
        .I2(\result_OBUF[30]_inst_i_10_n_0 ),
        .I3(\result_OBUF[2]_inst_i_9_n_0 ),
        .I4(\result_OBUF[2]_inst_i_7_n_0 ),
        .I5(\result_OBUF[29]_inst_i_11_n_0 ),
        .O(\result_OBUF[2]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \result_OBUF[2]_inst_i_6 
       (.I0(ALUresult0__187_carry),
        .I1(A0[2]),
        .I2(rst_n_IBUF),
        .O(A[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[2]_inst_i_7 
       (.I0(\result_OBUF[4]_inst_i_9_n_0 ),
        .I1(\result_OBUF[4]_inst_i_10_n_0 ),
        .I2(DI[1]),
        .I3(\result_OBUF[2]_inst_i_10_n_0 ),
        .I4(p_0_in),
        .I5(\result_OBUF[6]_inst_i_9_n_0 ),
        .O(\result_OBUF[2]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hC8C8C808)) 
    \result_OBUF[2]_inst_i_8 
       (.I0(\result_OBUF[3]_inst_i_11_n_0 ),
        .I1(\result_OBUF[31]_inst_i_9_n_0 ),
        .I2(DI[0]),
        .I3(\result_OBUF[2]_inst_i_11_n_0 ),
        .I4(DI[1]),
        .O(\result_OBUF[2]_inst_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \result_OBUF[2]_inst_i_9 
       (.I0(DI[1]),
        .I1(B[4]),
        .I2(ALUresult0__187_carry__2_i_10_n_0),
        .I3(B[3]),
        .I4(p_0_in),
        .O(\result_OBUF[2]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBABBBABBBABBBABA)) 
    \result_OBUF[30]_inst_i_1 
       (.I0(\result[30] ),
        .I1(\result_OBUF[30]_inst_i_3_n_0 ),
        .I2(\result_OBUF[30]_inst_i_4_n_0 ),
        .I3(\result_OBUF[30]_inst_i_5_n_0 ),
        .I4(\result_OBUF[30]_inst_i_6_n_0 ),
        .I5(\result_OBUF[30]_inst_i_7_n_0 ),
        .O(writeData[30]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \result_OBUF[30]_inst_i_10 
       (.I0(DI[0]),
        .I1(\result_OBUF[16]_inst_i_10_n_0 ),
        .I2(\result_OBUF[16]_inst_i_11_n_0 ),
        .I3(\result_OBUF[16]_inst_i_12_n_0 ),
        .O(\result_OBUF[30]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \result_OBUF[30]_inst_i_11 
       (.I0(p_0_in),
        .I1(B[3]),
        .I2(rst_n_IBUF),
        .I3(A0[30]),
        .I4(ALUresult0__187_carry),
        .I5(B[4]),
        .O(\result_OBUF[30]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[30]_inst_i_12 
       (.I0(\result_OBUF[31]_inst_i_21_n_0 ),
        .I1(\result_OBUF[30]_inst_i_14_n_0 ),
        .I2(DI[1]),
        .I3(\result_OBUF[31]_inst_i_18_n_0 ),
        .I4(p_0_in),
        .I5(\result_OBUF[31]_inst_i_19_n_0 ),
        .O(\result_OBUF[30]_inst_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_OBUF[30]_inst_i_13 
       (.I0(\result_OBUF[31]_inst_i_14_n_0 ),
        .I1(p_0_in),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .O(\result_OBUF[30]_inst_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hCC47FF47)) 
    \result_OBUF[30]_inst_i_14 
       (.I0(A[15]),
        .I1(B[3]),
        .I2(A[23]),
        .I3(B[4]),
        .I4(A[7]),
        .O(\result_OBUF[30]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hBBEBEBFEAAAAAAAA)) 
    \result_OBUF[30]_inst_i_3 
       (.I0(\result_OBUF[29]_inst_i_8_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(\result_OBUF[31]_inst_i_9_n_0 ),
        .I3(A[30]),
        .I4(B[30]),
        .I5(\result_OBUF[29]_inst_i_14_0 ),
        .O(\result_OBUF[30]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFF04FFC4)) 
    \result_OBUF[30]_inst_i_4 
       (.I0(\result_OBUF[30]_inst_i_9_n_0 ),
        .I1(\result_OBUF[8]_inst_i_4_n_0 ),
        .I2(\result_OBUF[30]_inst_i_10_n_0 ),
        .I3(\result_OBUF[29]_inst_i_14_0 ),
        .I4(ALUresult0__187_carry__2_i_10_n_0),
        .O(\result_OBUF[30]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBABABABBBA)) 
    \result_OBUF[30]_inst_i_5 
       (.I0(\result_OBUF[16]_inst_i_4_n_0 ),
        .I1(\result_OBUF[31]_inst_i_9_n_0 ),
        .I2(DI[1]),
        .I3(\result_OBUF[30]_inst_i_11_n_0 ),
        .I4(DI[0]),
        .I5(\result_OBUF[31]_inst_i_16_n_0 ),
        .O(\result_OBUF[30]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_OBUF[30]_inst_i_6 
       (.I0(DI[0]),
        .I1(\result_OBUF[30]_inst_i_12_n_0 ),
        .O(\result_OBUF[30]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0047FFFF)) 
    \result_OBUF[30]_inst_i_7 
       (.I0(\result_OBUF[31]_inst_i_15_n_0 ),
        .I1(DI[1]),
        .I2(\result_OBUF[30]_inst_i_13_n_0 ),
        .I3(DI[0]),
        .I4(\result_OBUF[31]_inst_i_9_n_0 ),
        .O(\result_OBUF[30]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_OBUF[30]_inst_i_8 
       (.I0(B0[30]),
        .I1(ALUresult0__187_carry__2),
        .O(B[30]));
  LUT6 #(
    .INIT(64'hF0F0F0F0F0F0B1F0)) 
    \result_OBUF[30]_inst_i_9 
       (.I0(DI[1]),
        .I1(A[30]),
        .I2(ALUresult0__187_carry__2_i_10_n_0),
        .I3(p_0_in),
        .I4(B[4]),
        .I5(B[3]),
        .O(\result_OBUF[30]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAABABBBBBBBB)) 
    \result_OBUF[31]_inst_i_1 
       (.I0(\result[31] ),
        .I1(\result_OBUF[31]_inst_i_3_n_0 ),
        .I2(\result_OBUF[31]_inst_i_4_n_0 ),
        .I3(\result_OBUF[31]_inst_i_5_n_0 ),
        .I4(\result_OBUF[31]_inst_i_6_n_0 ),
        .I5(\result_OBUF[31]_inst_i_7_n_0 ),
        .O(writeData[31]));
  LUT2 #(
    .INIT(4'h1)) 
    \result_OBUF[31]_inst_i_10 
       (.I0(register_reg_r1_0_31_0_5_i_3_n_0),
        .I1(\result_OBUF[29]_inst_i_14_n_0 ),
        .O(\result_OBUF[31]_inst_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_OBUF[31]_inst_i_11 
       (.I0(\result_OBUF[31]_inst_i_18_n_0 ),
        .I1(p_0_in),
        .I2(\result_OBUF[31]_inst_i_19_n_0 ),
        .O(\result_OBUF[31]_inst_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_OBUF[31]_inst_i_12 
       (.I0(\result_OBUF[31]_inst_i_20_n_0 ),
        .I1(p_0_in),
        .I2(\result_OBUF[31]_inst_i_21_n_0 ),
        .O(\result_OBUF[31]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \result_OBUF[31]_inst_i_13 
       (.I0(A[18]),
        .I1(A[2]),
        .I2(B[3]),
        .I3(A[26]),
        .I4(B[4]),
        .I5(A[10]),
        .O(\result_OBUF[31]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h303F5050303F5F5F)) 
    \result_OBUF[31]_inst_i_14 
       (.I0(A[22]),
        .I1(A[6]),
        .I2(B[3]),
        .I3(A[14]),
        .I4(B[4]),
        .I5(A[30]),
        .O(\result_OBUF[31]_inst_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_OBUF[31]_inst_i_15 
       (.I0(\result_OBUF[31]_inst_i_22_n_0 ),
        .I1(p_0_in),
        .I2(\result_OBUF[31]_inst_i_23_n_0 ),
        .O(\result_OBUF[31]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFBFFFFFFFF)) 
    \result_OBUF[31]_inst_i_16 
       (.I0(rst_n_IBUF),
        .I1(A0[31]),
        .I2(ALUresult0__187_carry),
        .I3(B[4]),
        .I4(B[3]),
        .I5(p_0_in),
        .O(\result_OBUF[31]_inst_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFCFFF8FCFCFC)) 
    \result_OBUF[31]_inst_i_17 
       (.I0(douta[5]),
        .I1(douta[0]),
        .I2(douta[4]),
        .I3(douta[1]),
        .I4(douta[2]),
        .I5(douta[3]),
        .O(\result_OBUF[31]_inst_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \result_OBUF[31]_inst_i_18 
       (.I0(A[21]),
        .I1(A[5]),
        .I2(B[3]),
        .I3(A[29]),
        .I4(B[4]),
        .I5(A[13]),
        .O(\result_OBUF[31]_inst_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hBB88BBBB8B8B8B8B)) 
    \result_OBUF[31]_inst_i_19 
       (.I0(\result_OBUF[31]_inst_i_24_n_0 ),
        .I1(B[3]),
        .I2(A[25]),
        .I3(ALUresult0__187_carry),
        .I4(A0[9]),
        .I5(B[4]),
        .O(\result_OBUF[31]_inst_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h30305F503F3F5F50)) 
    \result_OBUF[31]_inst_i_20 
       (.I0(A[23]),
        .I1(A[7]),
        .I2(B[3]),
        .I3(ALUresult0__187_carry__2_i_10_n_0),
        .I4(B[4]),
        .I5(A[15]),
        .O(\result_OBUF[31]_inst_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hBB88BBBB8B8B8B8B)) 
    \result_OBUF[31]_inst_i_21 
       (.I0(\result_OBUF[31]_inst_i_25_n_0 ),
        .I1(B[3]),
        .I2(A[27]),
        .I3(ALUresult0__187_carry),
        .I4(A0[11]),
        .I5(B[4]),
        .O(\result_OBUF[31]_inst_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h5050303F5F5F303F)) 
    \result_OBUF[31]_inst_i_22 
       (.I0(A[4]),
        .I1(A[20]),
        .I2(B[3]),
        .I3(A[28]),
        .I4(B[4]),
        .I5(A[12]),
        .O(\result_OBUF[31]_inst_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hC0C0505FCFCF505F)) 
    \result_OBUF[31]_inst_i_23 
       (.I0(A[16]),
        .I1(\result_OBUF[0]_inst_i_7_n_0 ),
        .I2(B[3]),
        .I3(A[24]),
        .I4(B[4]),
        .I5(A[8]),
        .O(\result_OBUF[31]_inst_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF10FFDF)) 
    \result_OBUF[31]_inst_i_24 
       (.I0(A0[1]),
        .I1(ALUresult0_carry__0_i_10_n_0),
        .I2(B0[4]),
        .I3(rst_n_IBUF),
        .I4(A0[17]),
        .I5(ALUresult0__187_carry),
        .O(\result_OBUF[31]_inst_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF10FFFFFFDF)) 
    \result_OBUF[31]_inst_i_25 
       (.I0(A0[3]),
        .I1(ALUresult0_carry__0_i_10_n_0),
        .I2(B0[4]),
        .I3(rst_n_IBUF),
        .I4(ALUresult0__187_carry),
        .I5(A0[19]),
        .O(\result_OBUF[31]_inst_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFBBABEEFAAAAAAAA)) 
    \result_OBUF[31]_inst_i_3 
       (.I0(\result_OBUF[29]_inst_i_8_0 ),
        .I1(\result_OBUF[31]_inst_i_8_n_0 ),
        .I2(ALUresult0__187_carry__2_i_10_n_0),
        .I3(\result_OBUF[31]_inst_i_9_n_0 ),
        .I4(\result_OBUF[31]_inst_i_10_n_0 ),
        .I5(\result_OBUF[29]_inst_i_14_0 ),
        .O(\result_OBUF[31]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hDFCFDFFF)) 
    \result_OBUF[31]_inst_i_4 
       (.I0(\result_OBUF[31]_inst_i_11_n_0 ),
        .I1(DI[0]),
        .I2(\result_OBUF[31]_inst_i_9_n_0 ),
        .I3(DI[1]),
        .I4(\result_OBUF[31]_inst_i_12_n_0 ),
        .O(\result_OBUF[31]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \result_OBUF[31]_inst_i_5 
       (.I0(\result_OBUF[31]_inst_i_13_n_0 ),
        .I1(p_0_in),
        .I2(\result_OBUF[31]_inst_i_14_n_0 ),
        .I3(DI[1]),
        .I4(\result_OBUF[31]_inst_i_15_n_0 ),
        .I5(DI[0]),
        .O(\result_OBUF[31]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF00FE)) 
    \result_OBUF[31]_inst_i_6 
       (.I0(DI[0]),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .I2(DI[1]),
        .I3(\result_OBUF[31]_inst_i_9_n_0 ),
        .I4(\result_OBUF[16]_inst_i_4_n_0 ),
        .O(\result_OBUF[31]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h55455555)) 
    \result_OBUF[31]_inst_i_7 
       (.I0(\result_OBUF[29]_inst_i_14_0 ),
        .I1(ALUresult0__187_carry),
        .I2(A0[31]),
        .I3(rst_n_IBUF),
        .I4(\result_OBUF[8]_inst_i_4_n_0 ),
        .O(\result_OBUF[31]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_OBUF[31]_inst_i_8 
       (.I0(B0[31]),
        .I1(ALUresult0__187_carry__2),
        .O(\result_OBUF[31]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000EFEE)) 
    \result_OBUF[31]_inst_i_9 
       (.I0(douta[5]),
        .I1(douta[0]),
        .I2(douta[1]),
        .I3(douta[2]),
        .I4(register_reg_r1_0_31_0_5_i_3_n_0),
        .I5(\result_OBUF[31]_inst_i_17_n_0 ),
        .O(\result_OBUF[31]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBBABBBB)) 
    \result_OBUF[3]_inst_i_1 
       (.I0(\result_OBUF[3]_inst_i_2_n_0 ),
        .I1(\result_OBUF[29]_inst_i_14_0 ),
        .I2(\result_OBUF[3]_inst_i_3_n_0 ),
        .I3(\result_OBUF[3]_inst_i_4_n_0 ),
        .I4(\result_OBUF[3]_inst_i_5_n_0 ),
        .I5(\result[3] ),
        .O(writeData[3]));
  LUT6 #(
    .INIT(64'h3F3050503F305F5F)) 
    \result_OBUF[3]_inst_i_10 
       (.I0(ALUresult0__187_carry__0_i_13_n_0),
        .I1(A[27]),
        .I2(B[3]),
        .I3(ALUresult0__187_carry__1_i_13_n_0),
        .I4(B[4]),
        .I5(\result_OBUF[3]_inst_i_7_n_0 ),
        .O(\result_OBUF[3]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF8FBFFFFFFFF)) 
    \result_OBUF[3]_inst_i_11 
       (.I0(\result_OBUF[0]_inst_i_7_n_0 ),
        .I1(DI[1]),
        .I2(B[4]),
        .I3(A[2]),
        .I4(B[3]),
        .I5(p_0_in),
        .O(\result_OBUF[3]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFABEBEABAAAAAAAA)) 
    \result_OBUF[3]_inst_i_2 
       (.I0(\result_OBUF[29]_inst_i_8_0 ),
        .I1(\result_OBUF[31]_inst_i_9_n_0 ),
        .I2(\result_OBUF[31]_inst_i_10_n_0 ),
        .I3(B[3]),
        .I4(\result_OBUF[3]_inst_i_7_n_0 ),
        .I5(\result_OBUF[29]_inst_i_14_0 ),
        .O(\result_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000004044444444)) 
    \result_OBUF[3]_inst_i_3 
       (.I0(\result_OBUF[30]_inst_i_10_n_0 ),
        .I1(\result_OBUF[8]_inst_i_4_n_0 ),
        .I2(DI[1]),
        .I3(\result_OBUF[8]_inst_i_9_n_0 ),
        .I4(p_0_in),
        .I5(\result_OBUF[3]_inst_i_8_n_0 ),
        .O(\result_OBUF[3]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000BABF)) 
    \result_OBUF[3]_inst_i_4 
       (.I0(\result_OBUF[31]_inst_i_9_n_0 ),
        .I1(\result_OBUF[4]_inst_i_7_n_0 ),
        .I2(DI[0]),
        .I3(\result_OBUF[3]_inst_i_8_n_0 ),
        .I4(\result_OBUF[3]_inst_i_9_n_0 ),
        .I5(\result_OBUF[16]_inst_i_4_n_0 ),
        .O(\result_OBUF[3]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000DDD5FFFFFFFF)) 
    \result_OBUF[3]_inst_i_5 
       (.I0(\result_OBUF[25]_inst_i_9_n_0 ),
        .I1(\result_OBUF[4]_inst_i_7_n_0 ),
        .I2(p_0_in),
        .I3(\result_OBUF[8]_inst_i_9_n_0 ),
        .I4(\result_OBUF[29]_inst_i_11_n_0 ),
        .I5(\result_OBUF[8]_inst_i_4_n_0 ),
        .O(\result_OBUF[3]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \result_OBUF[3]_inst_i_7 
       (.I0(rst_n_IBUF),
        .I1(A0[3]),
        .I2(ALUresult0__187_carry),
        .O(\result_OBUF[3]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA03F3FAFA03030)) 
    \result_OBUF[3]_inst_i_8 
       (.I0(\result_OBUF[5]_inst_i_10_n_0 ),
        .I1(\result_OBUF[9]_inst_i_12_n_0 ),
        .I2(DI[1]),
        .I3(\result_OBUF[3]_inst_i_10_n_0 ),
        .I4(p_0_in),
        .I5(\result_OBUF[7]_inst_i_12_n_0 ),
        .O(\result_OBUF[3]_inst_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8C80)) 
    \result_OBUF[3]_inst_i_9 
       (.I0(\result_OBUF[3]_inst_i_11_n_0 ),
        .I1(\result_OBUF[31]_inst_i_9_n_0 ),
        .I2(DI[0]),
        .I3(\result_OBUF[4]_inst_i_11_n_0 ),
        .O(\result_OBUF[3]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55555510)) 
    \result_OBUF[4]_inst_i_1 
       (.I0(\result_OBUF[4]_inst_i_2_n_0 ),
        .I1(\result_OBUF[4]_inst_i_3_n_0 ),
        .I2(\result_OBUF[8]_inst_i_4_n_0 ),
        .I3(\result_OBUF[4]_inst_i_4_n_0 ),
        .I4(\result_OBUF[29]_inst_i_14_0 ),
        .I5(\result[4] ),
        .O(writeData[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hC4C7F4F7)) 
    \result_OBUF[4]_inst_i_10 
       (.I0(A[16]),
        .I1(B[3]),
        .I2(B[4]),
        .I3(A[8]),
        .I4(A[24]),
        .O(\result_OBUF[4]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF8BFFFFFFFF)) 
    \result_OBUF[4]_inst_i_11 
       (.I0(\result_OBUF[1]_inst_i_6_n_0 ),
        .I1(DI[1]),
        .I2(\result_OBUF[3]_inst_i_7_n_0 ),
        .I3(B[4]),
        .I4(B[3]),
        .I5(p_0_in),
        .O(\result_OBUF[4]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAEEFFBBEAAAAAAAA)) 
    \result_OBUF[4]_inst_i_2 
       (.I0(\result_OBUF[29]_inst_i_8_0 ),
        .I1(\result_OBUF[31]_inst_i_9_n_0 ),
        .I2(B[4]),
        .I3(A[4]),
        .I4(\result_OBUF[31]_inst_i_10_n_0 ),
        .I5(\result_OBUF[29]_inst_i_14_0 ),
        .O(\result_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DDD05050)) 
    \result_OBUF[4]_inst_i_3 
       (.I0(\result_OBUF[25]_inst_i_9_n_0 ),
        .I1(\result_OBUF[5]_inst_i_8_n_0 ),
        .I2(\result_OBUF[30]_inst_i_10_n_0 ),
        .I3(\result_OBUF[4]_inst_i_7_n_0 ),
        .I4(\result_OBUF[5]_inst_i_7_n_0 ),
        .I5(\result_OBUF[29]_inst_i_11_n_0 ),
        .O(\result_OBUF[4]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000ABFB)) 
    \result_OBUF[4]_inst_i_4 
       (.I0(\result_OBUF[31]_inst_i_9_n_0 ),
        .I1(\result_OBUF[4]_inst_i_7_n_0 ),
        .I2(DI[0]),
        .I3(\result_OBUF[5]_inst_i_8_n_0 ),
        .I4(\result_OBUF[4]_inst_i_8_n_0 ),
        .I5(\result_OBUF[16]_inst_i_4_n_0 ),
        .O(\result_OBUF[4]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \result_OBUF[4]_inst_i_6 
       (.I0(ALUresult0__187_carry),
        .I1(A0[4]),
        .I2(rst_n_IBUF),
        .O(A[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[4]_inst_i_7 
       (.I0(\result_OBUF[6]_inst_i_9_n_0 ),
        .I1(\result_OBUF[6]_inst_i_10_n_0 ),
        .I2(DI[1]),
        .I3(\result_OBUF[4]_inst_i_9_n_0 ),
        .I4(p_0_in),
        .I5(\result_OBUF[4]_inst_i_10_n_0 ),
        .O(\result_OBUF[4]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \result_OBUF[4]_inst_i_8 
       (.I0(\result_OBUF[5]_inst_i_11_n_0 ),
        .I1(DI[1]),
        .I2(\result_OBUF[6]_inst_i_11_n_0 ),
        .I3(\result_OBUF[31]_inst_i_9_n_0 ),
        .I4(DI[0]),
        .I5(\result_OBUF[4]_inst_i_11_n_0 ),
        .O(\result_OBUF[4]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \result_OBUF[4]_inst_i_9 
       (.I0(A[12]),
        .I1(A[28]),
        .I2(B[3]),
        .I3(A[4]),
        .I4(B[4]),
        .I5(A[20]),
        .O(\result_OBUF[4]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55555510)) 
    \result_OBUF[5]_inst_i_1 
       (.I0(\result_OBUF[5]_inst_i_2_n_0 ),
        .I1(\result_OBUF[5]_inst_i_3_n_0 ),
        .I2(\result_OBUF[8]_inst_i_4_n_0 ),
        .I3(\result_OBUF[5]_inst_i_4_n_0 ),
        .I4(\result_OBUF[29]_inst_i_14_0 ),
        .I5(\result[5] ),
        .O(writeData[5]));
  LUT6 #(
    .INIT(64'h55335533000FFF0F)) 
    \result_OBUF[5]_inst_i_10 
       (.I0(A[29]),
        .I1(A[13]),
        .I2(A[5]),
        .I3(B[4]),
        .I4(A[21]),
        .I5(B[3]),
        .O(\result_OBUF[5]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEFFFFFFFFF)) 
    \result_OBUF[5]_inst_i_11 
       (.I0(B[4]),
        .I1(rst_n_IBUF),
        .I2(A0[2]),
        .I3(ALUresult0__187_carry),
        .I4(B[3]),
        .I5(p_0_in),
        .O(\result_OBUF[5]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hBBEBEBFEAAAAAAAA)) 
    \result_OBUF[5]_inst_i_2 
       (.I0(\result_OBUF[29]_inst_i_8_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(\result_OBUF[31]_inst_i_9_n_0 ),
        .I3(B[5]),
        .I4(A[5]),
        .I5(\result_OBUF[29]_inst_i_14_0 ),
        .O(\result_OBUF[5]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8F800F8)) 
    \result_OBUF[5]_inst_i_3 
       (.I0(\result_OBUF[5]_inst_i_7_n_0 ),
        .I1(\result_OBUF[5]_inst_i_8_n_0 ),
        .I2(\result_OBUF[30]_inst_i_10_n_0 ),
        .I3(\result_OBUF[25]_inst_i_9_n_0 ),
        .I4(\result_OBUF[6]_inst_i_8_n_0 ),
        .I5(\result_OBUF[29]_inst_i_11_n_0 ),
        .O(\result_OBUF[5]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000BABF)) 
    \result_OBUF[5]_inst_i_4 
       (.I0(\result_OBUF[31]_inst_i_9_n_0 ),
        .I1(\result_OBUF[6]_inst_i_6_n_0 ),
        .I2(DI[0]),
        .I3(\result_OBUF[5]_inst_i_8_n_0 ),
        .I4(\result_OBUF[5]_inst_i_9_n_0 ),
        .I5(\result_OBUF[16]_inst_i_4_n_0 ),
        .O(\result_OBUF[5]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \result_OBUF[5]_inst_i_6 
       (.I0(ALUresult0__187_carry),
        .I1(A0[5]),
        .I2(rst_n_IBUF),
        .O(A[5]));
  LUT6 #(
    .INIT(64'hFFFFFBFFFFFFFFFF)) 
    \result_OBUF[5]_inst_i_7 
       (.I0(p_0_in),
        .I1(B[3]),
        .I2(rst_n_IBUF),
        .I3(A0[31]),
        .I4(ALUresult0__187_carry),
        .I5(B[4]),
        .O(\result_OBUF[5]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA03030AFA03F3F)) 
    \result_OBUF[5]_inst_i_8 
       (.I0(\result_OBUF[7]_inst_i_12_n_0 ),
        .I1(\result_OBUF[11]_inst_i_12_n_0 ),
        .I2(DI[1]),
        .I3(\result_OBUF[5]_inst_i_10_n_0 ),
        .I4(p_0_in),
        .I5(\result_OBUF[9]_inst_i_12_n_0 ),
        .O(\result_OBUF[5]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB800FF00B8000000)) 
    \result_OBUF[5]_inst_i_9 
       (.I0(\result_OBUF[5]_inst_i_11_n_0 ),
        .I1(DI[1]),
        .I2(\result_OBUF[6]_inst_i_11_n_0 ),
        .I3(\result_OBUF[31]_inst_i_9_n_0 ),
        .I4(DI[0]),
        .I5(\result_OBUF[6]_inst_i_12_n_0 ),
        .O(\result_OBUF[5]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EFEEEFEF)) 
    \result_OBUF[6]_inst_i_1 
       (.I0(\result_OBUF[29]_inst_i_8_0 ),
        .I1(\result_OBUF[6]_inst_i_2_n_0 ),
        .I2(\result_OBUF[29]_inst_i_14_0 ),
        .I3(\result_OBUF[6]_inst_i_3_n_0 ),
        .I4(\result_OBUF[6]_inst_i_4_n_0 ),
        .I5(\result[6] ),
        .O(writeData[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hC4C7F4F7)) 
    \result_OBUF[6]_inst_i_10 
       (.I0(A[18]),
        .I1(B[3]),
        .I2(B[4]),
        .I3(A[10]),
        .I4(A[26]),
        .O(\result_OBUF[6]_inst_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF7F4)) 
    \result_OBUF[6]_inst_i_11 
       (.I0(A[4]),
        .I1(p_0_in),
        .I2(B[3]),
        .I3(\result_OBUF[0]_inst_i_7_n_0 ),
        .I4(B[4]),
        .O(\result_OBUF[6]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hBBFCBBFC88FCBBFC)) 
    \result_OBUF[6]_inst_i_12 
       (.I0(\result_OBUF[8]_inst_i_15_n_0 ),
        .I1(DI[1]),
        .I2(\result_OBUF[8]_inst_i_13_n_0 ),
        .I3(p_0_in),
        .I4(\result_OBUF[6]_inst_i_14_n_0 ),
        .I5(B[3]),
        .O(\result_OBUF[6]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h888803CFBBBB03CF)) 
    \result_OBUF[6]_inst_i_13 
       (.I0(ALUresult0__187_carry__2_i_10_n_0),
        .I1(B[4]),
        .I2(A[8]),
        .I3(A[24]),
        .I4(B[3]),
        .I5(A[16]),
        .O(\result_OBUF[6]_inst_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h02020002)) 
    \result_OBUF[6]_inst_i_14 
       (.I0(A0[5]),
        .I1(ALUresult0__187_carry),
        .I2(rst_n_IBUF),
        .I3(B0[4]),
        .I4(ALUresult0_carry__0_i_10_n_0),
        .O(\result_OBUF[6]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h2000AA208A20008A)) 
    \result_OBUF[6]_inst_i_2 
       (.I0(\result_OBUF[29]_inst_i_14_0 ),
        .I1(ALUresult0__187_carry__2),
        .I2(B0[6]),
        .I3(A[6]),
        .I4(\result_OBUF[31]_inst_i_9_n_0 ),
        .I5(\result_OBUF[31]_inst_i_10_n_0 ),
        .O(\result_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000ABFB)) 
    \result_OBUF[6]_inst_i_3 
       (.I0(\result_OBUF[31]_inst_i_9_n_0 ),
        .I1(\result_OBUF[6]_inst_i_6_n_0 ),
        .I2(DI[0]),
        .I3(\result_OBUF[7]_inst_i_8_n_0 ),
        .I4(\result_OBUF[6]_inst_i_7_n_0 ),
        .I5(\result_OBUF[16]_inst_i_4_n_0 ),
        .O(\result_OBUF[6]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h54545400FFFFFFFF)) 
    \result_OBUF[6]_inst_i_4 
       (.I0(\result_OBUF[29]_inst_i_11_n_0 ),
        .I1(\result_OBUF[6]_inst_i_8_n_0 ),
        .I2(\result_OBUF[30]_inst_i_10_n_0 ),
        .I3(\result_OBUF[29]_inst_i_13_n_0 ),
        .I4(\result_OBUF[7]_inst_i_7_n_0 ),
        .I5(\result_OBUF[8]_inst_i_4_n_0 ),
        .O(\result_OBUF[6]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3F305F5F3F305050)) 
    \result_OBUF[6]_inst_i_6 
       (.I0(\result_OBUF[12]_inst_i_11_n_0 ),
        .I1(\result_OBUF[8]_inst_i_11_n_0 ),
        .I2(DI[1]),
        .I3(\result_OBUF[6]_inst_i_9_n_0 ),
        .I4(p_0_in),
        .I5(\result_OBUF[6]_inst_i_10_n_0 ),
        .O(\result_OBUF[6]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \result_OBUF[6]_inst_i_7 
       (.I0(\result_OBUF[6]_inst_i_11_n_0 ),
        .I1(DI[1]),
        .I2(\result_OBUF[9]_inst_i_11_n_0 ),
        .I3(\result_OBUF[31]_inst_i_9_n_0 ),
        .I4(DI[0]),
        .I5(\result_OBUF[6]_inst_i_12_n_0 ),
        .O(\result_OBUF[6]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[6]_inst_i_8 
       (.I0(\result_OBUF[6]_inst_i_13_n_0 ),
        .I1(\result_OBUF[12]_inst_i_13_n_0 ),
        .I2(DI[1]),
        .I3(\result_OBUF[6]_inst_i_9_n_0 ),
        .I4(p_0_in),
        .I5(\result_OBUF[10]_inst_i_11_n_0 ),
        .O(\result_OBUF[6]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \result_OBUF[6]_inst_i_9 
       (.I0(A[14]),
        .I1(A[30]),
        .I2(B[3]),
        .I3(A[6]),
        .I4(B[4]),
        .I5(A[22]),
        .O(\result_OBUF[6]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55555510)) 
    \result_OBUF[7]_inst_i_1 
       (.I0(\result_OBUF[7]_inst_i_2_n_0 ),
        .I1(\result_OBUF[7]_inst_i_3_n_0 ),
        .I2(\result_OBUF[8]_inst_i_4_n_0 ),
        .I3(\result_OBUF[7]_inst_i_4_n_0 ),
        .I4(\result_OBUF[29]_inst_i_14_0 ),
        .I5(\result[7] ),
        .O(writeData[7]));
  LUT6 #(
    .INIT(64'hBB0CBB3F880C883F)) 
    \result_OBUF[7]_inst_i_10 
       (.I0(ALUresult0__187_carry__2_i_10_n_0),
        .I1(B[3]),
        .I2(ALUresult0__187_carry__1_i_15_n_0),
        .I3(B[4]),
        .I4(ALUresult0__187_carry__0_i_15_n_0),
        .I5(\result_OBUF[25]_inst_i_6_n_0 ),
        .O(\result_OBUF[7]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hA0A003F3AFAF03F3)) 
    \result_OBUF[7]_inst_i_11 
       (.I0(ALUresult0__187_carry__2_i_10_n_0),
        .I1(A[13]),
        .I2(B[4]),
        .I3(A[29]),
        .I4(B[3]),
        .I5(A[21]),
        .O(\result_OBUF[7]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF0FF000F35353535)) 
    \result_OBUF[7]_inst_i_12 
       (.I0(A[7]),
        .I1(A[23]),
        .I2(B[4]),
        .I3(A[15]),
        .I4(ALUresult0__187_carry__2_i_10_n_0),
        .I5(B[3]),
        .O(\result_OBUF[7]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[7]_inst_i_13 
       (.I0(\result_OBUF[7]_inst_i_15_n_0 ),
        .I1(\result_OBUF[7]_inst_i_16_n_0 ),
        .I2(DI[1]),
        .I3(\result_OBUF[7]_inst_i_17_n_0 ),
        .I4(p_0_in),
        .I5(\result_OBUF[7]_inst_i_18_n_0 ),
        .O(\result_OBUF[7]_inst_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF2FE)) 
    \result_OBUF[7]_inst_i_14 
       (.I0(\result_OBUF[1]_inst_i_6_n_0 ),
        .I1(p_0_in),
        .I2(B[4]),
        .I3(A[5]),
        .I4(B[3]),
        .O(\result_OBUF[7]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFCFFFFFFFCFFFEF)) 
    \result_OBUF[7]_inst_i_15 
       (.I0(B0[3]),
        .I1(ALUresult0__187_carry),
        .I2(A0[4]),
        .I3(rst_n_IBUF),
        .I4(ALUresult0_carry__0_i_10_n_0),
        .I5(B0[4]),
        .O(\result_OBUF[7]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFCFFFFFFFCFFFEF)) 
    \result_OBUF[7]_inst_i_16 
       (.I0(B0[3]),
        .I1(ALUresult0__187_carry),
        .I2(A0[0]),
        .I3(rst_n_IBUF),
        .I4(ALUresult0_carry__0_i_10_n_0),
        .I5(B0[4]),
        .O(\result_OBUF[7]_inst_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFCFFFFFFFCFFFEF)) 
    \result_OBUF[7]_inst_i_17 
       (.I0(B0[3]),
        .I1(ALUresult0__187_carry),
        .I2(A0[6]),
        .I3(rst_n_IBUF),
        .I4(ALUresult0_carry__0_i_10_n_0),
        .I5(B0[4]),
        .O(\result_OBUF[7]_inst_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFCFFFFFFFCFFFEF)) 
    \result_OBUF[7]_inst_i_18 
       (.I0(B0[3]),
        .I1(ALUresult0__187_carry),
        .I2(A0[2]),
        .I3(rst_n_IBUF),
        .I4(ALUresult0_carry__0_i_10_n_0),
        .I5(B0[4]),
        .O(\result_OBUF[7]_inst_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hBBEBEBFEAAAAAAAA)) 
    \result_OBUF[7]_inst_i_2 
       (.I0(\result_OBUF[29]_inst_i_8_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(\result_OBUF[31]_inst_i_9_n_0 ),
        .I3(B[7]),
        .I4(A[7]),
        .I5(\result_OBUF[29]_inst_i_14_0 ),
        .O(\result_OBUF[7]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EE0E0E0E)) 
    \result_OBUF[7]_inst_i_3 
       (.I0(\result_OBUF[7]_inst_i_7_n_0 ),
        .I1(\result_OBUF[30]_inst_i_10_n_0 ),
        .I2(\result_OBUF[25]_inst_i_9_n_0 ),
        .I3(\result_OBUF[8]_inst_i_8_n_0 ),
        .I4(\result_OBUF[8]_inst_i_9_n_0 ),
        .I5(\result_OBUF[29]_inst_i_11_n_0 ),
        .O(\result_OBUF[7]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000BABF)) 
    \result_OBUF[7]_inst_i_4 
       (.I0(\result_OBUF[31]_inst_i_9_n_0 ),
        .I1(\result_OBUF[8]_inst_i_8_n_0 ),
        .I2(DI[0]),
        .I3(\result_OBUF[7]_inst_i_8_n_0 ),
        .I4(\result_OBUF[7]_inst_i_9_n_0 ),
        .I5(\result_OBUF[16]_inst_i_4_n_0 ),
        .O(\result_OBUF[7]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_OBUF[7]_inst_i_6 
       (.I0(B0[7]),
        .I1(ALUresult0__187_carry__2),
        .O(B[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[7]_inst_i_7 
       (.I0(\result_OBUF[7]_inst_i_10_n_0 ),
        .I1(\result_OBUF[7]_inst_i_11_n_0 ),
        .I2(DI[1]),
        .I3(\result_OBUF[7]_inst_i_12_n_0 ),
        .I4(p_0_in),
        .I5(\result_OBUF[11]_inst_i_13_n_0 ),
        .O(\result_OBUF[7]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h5F5030305F503F3F)) 
    \result_OBUF[7]_inst_i_8 
       (.I0(\result_OBUF[9]_inst_i_12_n_0 ),
        .I1(\result_OBUF[13]_inst_i_12_n_0 ),
        .I2(DI[1]),
        .I3(\result_OBUF[7]_inst_i_12_n_0 ),
        .I4(p_0_in),
        .I5(\result_OBUF[11]_inst_i_12_n_0 ),
        .O(\result_OBUF[7]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8C8C8C8080808C80)) 
    \result_OBUF[7]_inst_i_9 
       (.I0(\result_OBUF[7]_inst_i_13_n_0 ),
        .I1(\result_OBUF[31]_inst_i_9_n_0 ),
        .I2(DI[0]),
        .I3(\result_OBUF[10]_inst_i_10_n_0 ),
        .I4(DI[1]),
        .I5(\result_OBUF[7]_inst_i_14_n_0 ),
        .O(\result_OBUF[7]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55555510)) 
    \result_OBUF[8]_inst_i_1 
       (.I0(\result_OBUF[8]_inst_i_2_n_0 ),
        .I1(\result_OBUF[8]_inst_i_3_n_0 ),
        .I2(\result_OBUF[8]_inst_i_4_n_0 ),
        .I3(\result_OBUF[8]_inst_i_5_n_0 ),
        .I4(\result_OBUF[29]_inst_i_14_0 ),
        .I5(\result[8] ),
        .O(writeData[8]));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    \result_OBUF[8]_inst_i_10 
       (.I0(\result_OBUF[9]_inst_i_11_n_0 ),
        .I1(DI[1]),
        .I2(\result_OBUF[11]_inst_i_11_n_0 ),
        .I3(\result_OBUF[31]_inst_i_9_n_0 ),
        .I4(DI[0]),
        .I5(\result_OBUF[8]_inst_i_12_n_0 ),
        .O(\result_OBUF[8]_inst_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h3030BB88)) 
    \result_OBUF[8]_inst_i_11 
       (.I0(A[16]),
        .I1(B[3]),
        .I2(A[24]),
        .I3(A[8]),
        .I4(B[4]),
        .O(\result_OBUF[8]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h3030AFA03F3FAFA0)) 
    \result_OBUF[8]_inst_i_12 
       (.I0(\result_OBUF[8]_inst_i_13_n_0 ),
        .I1(\result_OBUF[8]_inst_i_14_n_0 ),
        .I2(DI[1]),
        .I3(\result_OBUF[8]_inst_i_15_n_0 ),
        .I4(p_0_in),
        .I5(\result_OBUF[8]_inst_i_16_n_0 ),
        .O(\result_OBUF[8]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF32FFFF)) 
    \result_OBUF[8]_inst_i_13 
       (.I0(B0[3]),
        .I1(ALUresult0_carry__0_i_10_n_0),
        .I2(B0[4]),
        .I3(rst_n_IBUF),
        .I4(A0[1]),
        .I5(ALUresult0__187_carry),
        .O(\result_OBUF[8]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0030000000300010)) 
    \result_OBUF[8]_inst_i_14 
       (.I0(B0[4]),
        .I1(ALUresult0__187_carry),
        .I2(A0[5]),
        .I3(rst_n_IBUF),
        .I4(ALUresult0_carry__0_i_10_n_0),
        .I5(B0[3]),
        .O(\result_OBUF[8]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF32FFFF)) 
    \result_OBUF[8]_inst_i_15 
       (.I0(B0[3]),
        .I1(ALUresult0_carry__0_i_10_n_0),
        .I2(B0[4]),
        .I3(rst_n_IBUF),
        .I4(A0[3]),
        .I5(ALUresult0__187_carry),
        .O(\result_OBUF[8]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0030000000300010)) 
    \result_OBUF[8]_inst_i_16 
       (.I0(B0[3]),
        .I1(ALUresult0__187_carry),
        .I2(A0[7]),
        .I3(rst_n_IBUF),
        .I4(ALUresult0_carry__0_i_10_n_0),
        .I5(B0[4]),
        .O(\result_OBUF[8]_inst_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hBBEBEBFEAAAAAAAA)) 
    \result_OBUF[8]_inst_i_2 
       (.I0(\result_OBUF[29]_inst_i_8_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(\result_OBUF[31]_inst_i_9_n_0 ),
        .I3(B[8]),
        .I4(A[8]),
        .I5(\result_OBUF[29]_inst_i_14_0 ),
        .O(\result_OBUF[8]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DDD05050)) 
    \result_OBUF[8]_inst_i_3 
       (.I0(\result_OBUF[25]_inst_i_9_n_0 ),
        .I1(\result_OBUF[9]_inst_i_10_n_0 ),
        .I2(\result_OBUF[30]_inst_i_10_n_0 ),
        .I3(\result_OBUF[8]_inst_i_8_n_0 ),
        .I4(\result_OBUF[8]_inst_i_9_n_0 ),
        .I5(\result_OBUF[29]_inst_i_11_n_0 ),
        .O(\result_OBUF[8]_inst_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \result_OBUF[8]_inst_i_4 
       (.I0(\result_OBUF[31]_inst_i_10_n_0 ),
        .I1(\result_OBUF[31]_inst_i_9_n_0 ),
        .I2(\result_OBUF[29]_inst_i_8_n_0 ),
        .O(\result_OBUF[8]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000ABFB)) 
    \result_OBUF[8]_inst_i_5 
       (.I0(\result_OBUF[31]_inst_i_9_n_0 ),
        .I1(\result_OBUF[8]_inst_i_8_n_0 ),
        .I2(DI[0]),
        .I3(\result_OBUF[9]_inst_i_10_n_0 ),
        .I4(\result_OBUF[8]_inst_i_10_n_0 ),
        .I5(\result_OBUF[16]_inst_i_4_n_0 ),
        .O(\result_OBUF[8]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_OBUF[8]_inst_i_7 
       (.I0(B0[8]),
        .I1(ALUresult0__187_carry__2),
        .O(B[8]));
  LUT6 #(
    .INIT(64'h3030505F3F3F505F)) 
    \result_OBUF[8]_inst_i_8 
       (.I0(\result_OBUF[14]_inst_i_12_n_0 ),
        .I1(\result_OBUF[10]_inst_i_12_n_0 ),
        .I2(DI[1]),
        .I3(\result_OBUF[12]_inst_i_11_n_0 ),
        .I4(p_0_in),
        .I5(\result_OBUF[8]_inst_i_11_n_0 ),
        .O(\result_OBUF[8]_inst_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFFDFFFFF)) 
    \result_OBUF[8]_inst_i_9 
       (.I0(B[4]),
        .I1(ALUresult0__187_carry),
        .I2(A0[31]),
        .I3(rst_n_IBUF),
        .I4(B[3]),
        .O(\result_OBUF[8]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAFFFE)) 
    \result_OBUF[9]_inst_i_1 
       (.I0(\result_OBUF[9]_inst_i_2_n_0 ),
        .I1(\result_OBUF[9]_inst_i_3_n_0 ),
        .I2(\result_OBUF[9]_inst_i_4_n_0 ),
        .I3(\result_OBUF[9]_inst_i_5_n_0 ),
        .I4(\result_OBUF[9]_inst_i_6_n_0 ),
        .I5(\result[9] ),
        .O(writeData[9]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \result_OBUF[9]_inst_i_10 
       (.I0(\result_OBUF[11]_inst_i_12_n_0 ),
        .I1(\result_OBUF[15]_inst_i_13_n_0 ),
        .I2(DI[1]),
        .I3(\result_OBUF[9]_inst_i_12_n_0 ),
        .I4(p_0_in),
        .I5(\result_OBUF[13]_inst_i_12_n_0 ),
        .O(\result_OBUF[9]_inst_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF4F7)) 
    \result_OBUF[9]_inst_i_11 
       (.I0(A[6]),
        .I1(p_0_in),
        .I2(B[3]),
        .I3(A[2]),
        .I4(B[4]),
        .O(\result_OBUF[9]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00FF000044F044F0)) 
    \result_OBUF[9]_inst_i_12 
       (.I0(ALUresult0__187_carry),
        .I1(A0[25]),
        .I2(ALUresult0__187_carry__0_i_15_n_0),
        .I3(B[4]),
        .I4(ALUresult0__187_carry__1_i_15_n_0),
        .I5(B[3]),
        .O(\result_OBUF[9]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hEEBEBEABAAAAAAAA)) 
    \result_OBUF[9]_inst_i_2 
       (.I0(\result_OBUF[29]_inst_i_8_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(\result_OBUF[31]_inst_i_9_n_0 ),
        .I3(ALUresult0__187_carry__0_i_15_n_0),
        .I4(B[9]),
        .I5(\result_OBUF[29]_inst_i_14_0 ),
        .O(\result_OBUF[9]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h10551555)) 
    \result_OBUF[9]_inst_i_3 
       (.I0(\result_OBUF[16]_inst_i_4_n_0 ),
        .I1(\result_OBUF[9]_inst_i_9_n_0 ),
        .I2(DI[0]),
        .I3(\result_OBUF[31]_inst_i_9_n_0 ),
        .I4(\result_OBUF[10]_inst_i_7_n_0 ),
        .O(\result_OBUF[9]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0404440404040404)) 
    \result_OBUF[9]_inst_i_4 
       (.I0(\result_OBUF[30]_inst_i_10_n_0 ),
        .I1(\result_OBUF[8]_inst_i_4_n_0 ),
        .I2(\result_OBUF[9]_inst_i_10_n_0 ),
        .I3(B[4]),
        .I4(ALUresult0__187_carry__2_i_10_n_0),
        .I5(B[3]),
        .O(\result_OBUF[9]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    \result_OBUF[9]_inst_i_5 
       (.I0(\result_OBUF[8]_inst_i_4_n_0 ),
        .I1(\result_OBUF[25]_inst_i_9_n_0 ),
        .I2(\result_OBUF[10]_inst_i_8_n_0 ),
        .I3(\result_OBUF[29]_inst_i_11_n_0 ),
        .O(\result_OBUF[9]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hBABBBAAA)) 
    \result_OBUF[9]_inst_i_6 
       (.I0(\result_OBUF[29]_inst_i_14_0 ),
        .I1(\result_OBUF[31]_inst_i_9_n_0 ),
        .I2(\result_OBUF[10]_inst_i_9_n_0 ),
        .I3(DI[0]),
        .I4(\result_OBUF[9]_inst_i_10_n_0 ),
        .O(\result_OBUF[9]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_OBUF[9]_inst_i_8 
       (.I0(B0[9]),
        .I1(ALUresult0__187_carry__2),
        .O(B[9]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result_OBUF[9]_inst_i_9 
       (.I0(\result_OBUF[9]_inst_i_11_n_0 ),
        .I1(DI[1]),
        .I2(\result_OBUF[11]_inst_i_11_n_0 ),
        .O(\result_OBUF[9]_inst_i_9_n_0 ));
endmodule

(* ORIG_REF_NAME = "bindec" *) 
module blk_mem_gen_0__bindec
   (ena_array,
    addra);
  output [1:0]ena_array;
  input [1:0]addra;

  wire [1:0]addra;
  wire [1:0]ena_array;

  LUT2 #(
    .INIT(4'h1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1 
       (.I0(addra[1]),
        .I1(addra[0]),
        .O(ena_array[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__0 
       (.I0(addra[1]),
        .I1(addra[0]),
        .O(ena_array[1]));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module blk_mem_gen_0__blk_mem_gen_generic_cstr
   (douta,
    addra,
    clka);
  output [31:0]douta;
  input [13:0]addra;
  input clka;

  wire [13:0]addra;
  wire clka;
  wire [31:0]douta;
  wire [3:0]ena_array;
  wire pwropt;
  wire pwropt_1;
  wire \ramloop[10].ram.r_n_0 ;
  wire \ramloop[10].ram.r_n_1 ;
  wire \ramloop[10].ram.r_n_2 ;
  wire \ramloop[10].ram.r_n_3 ;
  wire \ramloop[10].ram.r_n_4 ;
  wire \ramloop[10].ram.r_n_5 ;
  wire \ramloop[10].ram.r_n_6 ;
  wire \ramloop[10].ram.r_n_7 ;
  wire \ramloop[10].ram.r_n_8 ;
  wire \ramloop[11].ram.r_n_0 ;
  wire \ramloop[11].ram.r_n_1 ;
  wire \ramloop[11].ram.r_n_2 ;
  wire \ramloop[11].ram.r_n_3 ;
  wire \ramloop[11].ram.r_n_4 ;
  wire \ramloop[11].ram.r_n_5 ;
  wire \ramloop[11].ram.r_n_6 ;
  wire \ramloop[11].ram.r_n_7 ;
  wire \ramloop[11].ram.r_n_8 ;
  wire \ramloop[12].ram.r_n_0 ;
  wire \ramloop[12].ram.r_n_1 ;
  wire \ramloop[12].ram.r_n_2 ;
  wire \ramloop[12].ram.r_n_3 ;
  wire \ramloop[12].ram.r_n_4 ;
  wire \ramloop[12].ram.r_n_5 ;
  wire \ramloop[12].ram.r_n_6 ;
  wire \ramloop[12].ram.r_n_7 ;
  wire \ramloop[12].ram.r_n_8 ;
  wire \ramloop[13].ram.r_n_0 ;
  wire \ramloop[13].ram.r_n_1 ;
  wire \ramloop[13].ram.r_n_2 ;
  wire \ramloop[13].ram.r_n_3 ;
  wire \ramloop[13].ram.r_n_4 ;
  wire \ramloop[13].ram.r_n_5 ;
  wire \ramloop[13].ram.r_n_6 ;
  wire \ramloop[13].ram.r_n_7 ;
  wire \ramloop[13].ram.r_n_8 ;
  wire \ramloop[14].ram.r_n_0 ;
  wire \ramloop[14].ram.r_n_1 ;
  wire \ramloop[14].ram.r_n_2 ;
  wire \ramloop[14].ram.r_n_3 ;
  wire \ramloop[14].ram.r_n_4 ;
  wire \ramloop[14].ram.r_n_5 ;
  wire \ramloop[14].ram.r_n_6 ;
  wire \ramloop[14].ram.r_n_7 ;
  wire \ramloop[14].ram.r_n_8 ;
  wire \ramloop[3].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_1 ;
  wire \ramloop[3].ram.r_n_7 ;
  wire \ramloop[3].ram.r_n_8 ;
  wire \ramloop[4].ram.r_n_0 ;
  wire \ramloop[4].ram.r_n_1 ;
  wire \ramloop[4].ram.r_n_7 ;
  wire \ramloop[4].ram.r_n_8 ;
  wire \ramloop[4].ram.r_n_9 ;
  wire \ramloop[5].ram.r_n_0 ;
  wire \ramloop[5].ram.r_n_1 ;
  wire \ramloop[5].ram.r_n_7 ;
  wire \ramloop[5].ram.r_n_8 ;
  wire \ramloop[5].ram.r_n_9 ;
  wire \ramloop[6].ram.r_n_0 ;
  wire \ramloop[6].ram.r_n_1 ;
  wire \ramloop[6].ram.r_n_7 ;
  wire \ramloop[6].ram.r_n_8 ;
  wire \ramloop[7].ram.r_n_0 ;
  wire \ramloop[7].ram.r_n_1 ;
  wire \ramloop[7].ram.r_n_2 ;
  wire \ramloop[7].ram.r_n_3 ;
  wire \ramloop[7].ram.r_n_4 ;
  wire \ramloop[7].ram.r_n_5 ;
  wire \ramloop[7].ram.r_n_6 ;
  wire \ramloop[7].ram.r_n_7 ;
  wire \ramloop[7].ram.r_n_8 ;
  wire \ramloop[8].ram.r_n_0 ;
  wire \ramloop[8].ram.r_n_1 ;
  wire \ramloop[8].ram.r_n_2 ;
  wire \ramloop[8].ram.r_n_3 ;
  wire \ramloop[8].ram.r_n_4 ;
  wire \ramloop[8].ram.r_n_5 ;
  wire \ramloop[8].ram.r_n_6 ;
  wire \ramloop[8].ram.r_n_7 ;
  wire \ramloop[8].ram.r_n_8 ;
  wire \ramloop[9].ram.r_n_0 ;
  wire \ramloop[9].ram.r_n_1 ;
  wire \ramloop[9].ram.r_n_2 ;
  wire \ramloop[9].ram.r_n_3 ;
  wire \ramloop[9].ram.r_n_4 ;
  wire \ramloop[9].ram.r_n_5 ;
  wire \ramloop[9].ram.r_n_6 ;
  wire \ramloop[9].ram.r_n_7 ;
  wire \ramloop[9].ram.r_n_8 ;
  wire [5:1]\NLW_has_mux_a.A_douta_UNCONNECTED ;
  wire [5:1]\NLW_has_mux_a.A_douta[12]_UNCONNECTED ;
  wire [5:1]\NLW_has_mux_a.A_douta[12]_0_UNCONNECTED ;
  wire [5:1]\NLW_has_mux_a.A_douta[12]_1_UNCONNECTED ;
  wire [5:1]\NLW_has_mux_a.A_douta[12]_2_UNCONNECTED ;
  wire [5:1]\NLW_ramloop[3].ram.r_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_UNCONNECTED ;
  wire [5:1]\NLW_ramloop[4].ram.r_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_UNCONNECTED ;
  wire [5:1]\NLW_ramloop[5].ram.r_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_UNCONNECTED ;
  wire [5:1]\NLW_ramloop[6].ram.r_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_UNCONNECTED ;

  blk_mem_gen_0__bindec \bindec_a.bindec_inst_a 
       (.addra(addra[13:12]),
        .ena_array({ena_array[3],ena_array[0]}));
  blk_mem_gen_0__blk_mem_gen_mux \has_mux_a.A 
       (.DOADO({\ramloop[13].ram.r_n_0 ,\ramloop[13].ram.r_n_1 ,\ramloop[13].ram.r_n_2 ,\ramloop[13].ram.r_n_3 ,\ramloop[13].ram.r_n_4 ,\ramloop[13].ram.r_n_5 ,\ramloop[13].ram.r_n_6 ,\ramloop[13].ram.r_n_7 }),
        .DOPADOP(\ramloop[13].ram.r_n_8 ),
        .addra(addra[13:12]),
        .clka(clka),
        .douta({douta[31:11],\NLW_has_mux_a.A_douta_UNCONNECTED [5:1],douta[5]}),
        .\douta[12] ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\NLW_has_mux_a.A_douta[12]_UNCONNECTED [5:1],\ramloop[5].ram.r_n_7 }),
        .\douta[12]_0 ({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\NLW_has_mux_a.A_douta[12]_0_UNCONNECTED [5:1],\ramloop[6].ram.r_n_7 }),
        .\douta[12]_1 ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\NLW_has_mux_a.A_douta[12]_1_UNCONNECTED [5:1],\ramloop[3].ram.r_n_7 }),
        .\douta[12]_2 ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\NLW_has_mux_a.A_douta[12]_2_UNCONNECTED [5:1],\ramloop[4].ram.r_n_7 }),
        .\douta[13] (\ramloop[5].ram.r_n_8 ),
        .\douta[13]_0 (\ramloop[6].ram.r_n_8 ),
        .\douta[13]_1 (\ramloop[3].ram.r_n_8 ),
        .\douta[13]_2 (\ramloop[4].ram.r_n_8 ),
        .\douta[21] ({\ramloop[9].ram.r_n_0 ,\ramloop[9].ram.r_n_1 ,\ramloop[9].ram.r_n_2 ,\ramloop[9].ram.r_n_3 ,\ramloop[9].ram.r_n_4 ,\ramloop[9].ram.r_n_5 ,\ramloop[9].ram.r_n_6 ,\ramloop[9].ram.r_n_7 }),
        .\douta[21]_0 ({\ramloop[10].ram.r_n_0 ,\ramloop[10].ram.r_n_1 ,\ramloop[10].ram.r_n_2 ,\ramloop[10].ram.r_n_3 ,\ramloop[10].ram.r_n_4 ,\ramloop[10].ram.r_n_5 ,\ramloop[10].ram.r_n_6 ,\ramloop[10].ram.r_n_7 }),
        .\douta[21]_1 ({\ramloop[7].ram.r_n_0 ,\ramloop[7].ram.r_n_1 ,\ramloop[7].ram.r_n_2 ,\ramloop[7].ram.r_n_3 ,\ramloop[7].ram.r_n_4 ,\ramloop[7].ram.r_n_5 ,\ramloop[7].ram.r_n_6 ,\ramloop[7].ram.r_n_7 }),
        .\douta[21]_2 ({\ramloop[8].ram.r_n_0 ,\ramloop[8].ram.r_n_1 ,\ramloop[8].ram.r_n_2 ,\ramloop[8].ram.r_n_3 ,\ramloop[8].ram.r_n_4 ,\ramloop[8].ram.r_n_5 ,\ramloop[8].ram.r_n_6 ,\ramloop[8].ram.r_n_7 }),
        .\douta[22] (\ramloop[9].ram.r_n_8 ),
        .\douta[22]_0 (\ramloop[10].ram.r_n_8 ),
        .\douta[22]_1 (\ramloop[7].ram.r_n_8 ),
        .\douta[22]_2 (\ramloop[8].ram.r_n_8 ),
        .\douta[30] ({\ramloop[14].ram.r_n_0 ,\ramloop[14].ram.r_n_1 ,\ramloop[14].ram.r_n_2 ,\ramloop[14].ram.r_n_3 ,\ramloop[14].ram.r_n_4 ,\ramloop[14].ram.r_n_5 ,\ramloop[14].ram.r_n_6 ,\ramloop[14].ram.r_n_7 }),
        .\douta[30]_0 ({\ramloop[11].ram.r_n_0 ,\ramloop[11].ram.r_n_1 ,\ramloop[11].ram.r_n_2 ,\ramloop[11].ram.r_n_3 ,\ramloop[11].ram.r_n_4 ,\ramloop[11].ram.r_n_5 ,\ramloop[11].ram.r_n_6 ,\ramloop[11].ram.r_n_7 }),
        .\douta[30]_1 ({\ramloop[12].ram.r_n_0 ,\ramloop[12].ram.r_n_1 ,\ramloop[12].ram.r_n_2 ,\ramloop[12].ram.r_n_3 ,\ramloop[12].ram.r_n_4 ,\ramloop[12].ram.r_n_5 ,\ramloop[12].ram.r_n_6 ,\ramloop[12].ram.r_n_7 }),
        .\douta[31] (\ramloop[14].ram.r_n_8 ),
        .\douta[31]_0 (\ramloop[11].ram.r_n_8 ),
        .\douta[31]_1 (\ramloop[12].ram.r_n_8 ),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
  blk_mem_gen_0__blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[0]));
  blk_mem_gen_0__blk_mem_gen_prim_width__parameterized9 \ramloop[10].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[10].ram.r_n_0 ,\ramloop[10].ram.r_n_1 ,\ramloop[10].ram.r_n_2 ,\ramloop[10].ram.r_n_3 ,\ramloop[10].ram.r_n_4 ,\ramloop[10].ram.r_n_5 ,\ramloop[10].ram.r_n_6 ,\ramloop[10].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[10].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[3]),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
  blk_mem_gen_0__blk_mem_gen_prim_width__parameterized10 \ramloop[11].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[11].ram.r_n_0 ,\ramloop[11].ram.r_n_1 ,\ramloop[11].ram.r_n_2 ,\ramloop[11].ram.r_n_3 ,\ramloop[11].ram.r_n_4 ,\ramloop[11].ram.r_n_5 ,\ramloop[11].ram.r_n_6 ,\ramloop[11].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[11].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[0]),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
  blk_mem_gen_0__blk_mem_gen_prim_width__parameterized11 \ramloop[12].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[12].ram.r_n_0 ,\ramloop[12].ram.r_n_1 ,\ramloop[12].ram.r_n_2 ,\ramloop[12].ram.r_n_3 ,\ramloop[12].ram.r_n_4 ,\ramloop[12].ram.r_n_5 ,\ramloop[12].ram.r_n_6 ,\ramloop[12].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[12].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\ramloop[4].ram.r_n_9 ),
        .addra(addra[11:0]),
        .clka(clka),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
  blk_mem_gen_0__blk_mem_gen_prim_width__parameterized12 \ramloop[13].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (\ramloop[5].ram.r_n_9 ),
        .DOADO({\ramloop[13].ram.r_n_0 ,\ramloop[13].ram.r_n_1 ,\ramloop[13].ram.r_n_2 ,\ramloop[13].ram.r_n_3 ,\ramloop[13].ram.r_n_4 ,\ramloop[13].ram.r_n_5 ,\ramloop[13].ram.r_n_6 ,\ramloop[13].ram.r_n_7 }),
        .DOPADOP(\ramloop[13].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
  blk_mem_gen_0__blk_mem_gen_prim_width__parameterized13 \ramloop[14].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[14].ram.r_n_0 ,\ramloop[14].ram.r_n_1 ,\ramloop[14].ram.r_n_2 ,\ramloop[14].ram.r_n_3 ,\ramloop[14].ram.r_n_4 ,\ramloop[14].ram.r_n_5 ,\ramloop[14].ram.r_n_6 ,\ramloop[14].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[14].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[3]),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
  blk_mem_gen_0__blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[2:1]));
  blk_mem_gen_0__blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[4:3]));
  blk_mem_gen_0__blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\NLW_ramloop[3].ram.r_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_UNCONNECTED [5:1],\ramloop[3].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[3].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[0]),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
  blk_mem_gen_0__blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\NLW_ramloop[4].ram.r_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_UNCONNECTED [5:1],\ramloop[4].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[4].ram.r_n_8 ),
        .addra(addra),
        .addra_12_sp_1(\ramloop[4].ram.r_n_9 ),
        .clka(clka),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
  blk_mem_gen_0__blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\NLW_ramloop[5].ram.r_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_UNCONNECTED [5:1],\ramloop[5].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[5].ram.r_n_8 ),
        .addra(addra),
        .addra_13_sp_1(\ramloop[5].ram.r_n_9 ),
        .clka(clka),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
  blk_mem_gen_0__blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\NLW_ramloop[6].ram.r_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_UNCONNECTED [5:1],\ramloop[6].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[6].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[3]),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
  blk_mem_gen_0__blk_mem_gen_prim_width__parameterized6 \ramloop[7].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[7].ram.r_n_0 ,\ramloop[7].ram.r_n_1 ,\ramloop[7].ram.r_n_2 ,\ramloop[7].ram.r_n_3 ,\ramloop[7].ram.r_n_4 ,\ramloop[7].ram.r_n_5 ,\ramloop[7].ram.r_n_6 ,\ramloop[7].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[7].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[0]),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
  blk_mem_gen_0__blk_mem_gen_prim_width__parameterized7 \ramloop[8].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[8].ram.r_n_0 ,\ramloop[8].ram.r_n_1 ,\ramloop[8].ram.r_n_2 ,\ramloop[8].ram.r_n_3 ,\ramloop[8].ram.r_n_4 ,\ramloop[8].ram.r_n_5 ,\ramloop[8].ram.r_n_6 ,\ramloop[8].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[8].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\ramloop[4].ram.r_n_9 ),
        .addra(addra[11:0]),
        .clka(clka),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
  blk_mem_gen_0__blk_mem_gen_prim_width__parameterized8 \ramloop[9].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[9].ram.r_n_0 ,\ramloop[9].ram.r_n_1 ,\ramloop[9].ram.r_n_2 ,\ramloop[9].ram.r_n_3 ,\ramloop[9].ram.r_n_4 ,\ramloop[9].ram.r_n_5 ,\ramloop[9].ram.r_n_6 ,\ramloop[9].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[9].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\ramloop[5].ram.r_n_9 ),
        .addra(addra[11:0]),
        .clka(clka),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module blk_mem_gen_0__blk_mem_gen_mux
   (douta,
    addra,
    clka,
    DOPADOP,
    \douta[31] ,
    \douta[31]_0 ,
    \douta[31]_1 ,
    DOADO,
    \douta[30] ,
    \douta[30]_0 ,
    \douta[30]_1 ,
    \douta[22] ,
    \douta[22]_0 ,
    \douta[22]_1 ,
    \douta[22]_2 ,
    \douta[21] ,
    \douta[21]_0 ,
    \douta[21]_1 ,
    \douta[21]_2 ,
    \douta[13] ,
    \douta[13]_0 ,
    \douta[13]_1 ,
    \douta[13]_2 ,
    \douta[12] ,
    \douta[12]_0 ,
    \douta[12]_1 ,
    \douta[12]_2 ,
    pwropt,
    pwropt_1);
  output [26:0]douta;
  input [1:0]addra;
  input clka;
  input [0:0]DOPADOP;
  input [0:0]\douta[31] ;
  input [0:0]\douta[31]_0 ;
  input [0:0]\douta[31]_1 ;
  input [7:0]DOADO;
  input [7:0]\douta[30] ;
  input [7:0]\douta[30]_0 ;
  input [7:0]\douta[30]_1 ;
  input [0:0]\douta[22] ;
  input [0:0]\douta[22]_0 ;
  input [0:0]\douta[22]_1 ;
  input [0:0]\douta[22]_2 ;
  input [7:0]\douta[21] ;
  input [7:0]\douta[21]_0 ;
  input [7:0]\douta[21]_1 ;
  input [7:0]\douta[21]_2 ;
  input [0:0]\douta[13] ;
  input [0:0]\douta[13]_0 ;
  input [0:0]\douta[13]_1 ;
  input [0:0]\douta[13]_2 ;
  input [7:0]\douta[12] ;
  input [7:0]\douta[12]_0 ;
  input [7:0]\douta[12]_1 ;
  input [7:0]\douta[12]_2 ;
  output pwropt;
  output pwropt_1;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [1:0]addra;
  wire clka;
  wire [26:0]douta;
  wire [7:0]\douta[12] ;
  wire [7:0]\douta[12]_0 ;
  wire [7:0]\douta[12]_1 ;
  wire [7:0]\douta[12]_2 ;
  wire [0:0]\douta[13] ;
  wire [0:0]\douta[13]_0 ;
  wire [0:0]\douta[13]_1 ;
  wire [0:0]\douta[13]_2 ;
  wire [7:0]\douta[21] ;
  wire [7:0]\douta[21]_0 ;
  wire [7:0]\douta[21]_1 ;
  wire [7:0]\douta[21]_2 ;
  wire [0:0]\douta[22] ;
  wire [0:0]\douta[22]_0 ;
  wire [0:0]\douta[22]_1 ;
  wire [0:0]\douta[22]_2 ;
  wire [7:0]\douta[30] ;
  wire [7:0]\douta[30]_0 ;
  wire [7:0]\douta[30]_1 ;
  wire [0:0]\douta[31] ;
  wire [0:0]\douta[31]_0 ;
  wire [0:0]\douta[31]_1 ;
  wire [1:0]sel_pipe;
  wire [1:0]sel_pipe_d1;

  assign pwropt = sel_pipe[0];
  assign pwropt_1 = sel_pipe[1];
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[11]_INST_0 
       (.I0(\douta[12] [6]),
        .I1(\douta[12]_0 [6]),
        .I2(\douta[12]_1 [6]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[12]_2 [6]),
        .O(douta[6]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[12]_INST_0 
       (.I0(\douta[12] [7]),
        .I1(\douta[12]_0 [7]),
        .I2(\douta[12]_1 [7]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[12]_2 [7]),
        .O(douta[7]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[13]_INST_0 
       (.I0(\douta[13] ),
        .I1(\douta[13]_0 ),
        .I2(\douta[13]_1 ),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[13]_2 ),
        .O(douta[8]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[14]_INST_0 
       (.I0(\douta[21] [0]),
        .I1(\douta[21]_0 [0]),
        .I2(\douta[21]_1 [0]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[21]_2 [0]),
        .O(douta[9]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[15]_INST_0 
       (.I0(\douta[21] [1]),
        .I1(\douta[21]_0 [1]),
        .I2(\douta[21]_1 [1]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[21]_2 [1]),
        .O(douta[10]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[16]_INST_0 
       (.I0(\douta[21] [2]),
        .I1(\douta[21]_0 [2]),
        .I2(\douta[21]_1 [2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[21]_2 [2]),
        .O(douta[11]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[17]_INST_0 
       (.I0(\douta[21] [3]),
        .I1(\douta[21]_0 [3]),
        .I2(\douta[21]_1 [3]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[21]_2 [3]),
        .O(douta[12]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[18]_INST_0 
       (.I0(\douta[21] [4]),
        .I1(\douta[21]_0 [4]),
        .I2(\douta[21]_1 [4]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[21]_2 [4]),
        .O(douta[13]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[19]_INST_0 
       (.I0(\douta[21] [5]),
        .I1(\douta[21]_0 [5]),
        .I2(\douta[21]_1 [5]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[21]_2 [5]),
        .O(douta[14]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[20]_INST_0 
       (.I0(\douta[21] [6]),
        .I1(\douta[21]_0 [6]),
        .I2(\douta[21]_1 [6]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[21]_2 [6]),
        .O(douta[15]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[21]_INST_0 
       (.I0(\douta[21] [7]),
        .I1(\douta[21]_0 [7]),
        .I2(\douta[21]_1 [7]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[21]_2 [7]),
        .O(douta[16]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[22]_INST_0 
       (.I0(\douta[22] ),
        .I1(\douta[22]_0 ),
        .I2(\douta[22]_1 ),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[22]_2 ),
        .O(douta[17]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[23]_INST_0 
       (.I0(DOADO[0]),
        .I1(\douta[30] [0]),
        .I2(\douta[30]_0 [0]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[30]_1 [0]),
        .O(douta[18]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[24]_INST_0 
       (.I0(DOADO[1]),
        .I1(\douta[30] [1]),
        .I2(\douta[30]_0 [1]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[30]_1 [1]),
        .O(douta[19]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[25]_INST_0 
       (.I0(DOADO[2]),
        .I1(\douta[30] [2]),
        .I2(\douta[30]_0 [2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[30]_1 [2]),
        .O(douta[20]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[26]_INST_0 
       (.I0(DOADO[3]),
        .I1(\douta[30] [3]),
        .I2(\douta[30]_0 [3]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[30]_1 [3]),
        .O(douta[21]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[27]_INST_0 
       (.I0(DOADO[4]),
        .I1(\douta[30] [4]),
        .I2(\douta[30]_0 [4]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[30]_1 [4]),
        .O(douta[22]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[28]_INST_0 
       (.I0(DOADO[5]),
        .I1(\douta[30] [5]),
        .I2(\douta[30]_0 [5]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[30]_1 [5]),
        .O(douta[23]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[29]_INST_0 
       (.I0(DOADO[6]),
        .I1(\douta[30] [6]),
        .I2(\douta[30]_0 [6]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[30]_1 [6]),
        .O(douta[24]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[30]_INST_0 
       (.I0(DOADO[7]),
        .I1(\douta[30] [7]),
        .I2(\douta[30]_0 [7]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[30]_1 [7]),
        .O(douta[25]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[31]_INST_0 
       (.I0(DOPADOP),
        .I1(\douta[31] ),
        .I2(\douta[31]_0 ),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[31]_1 ),
        .O(douta[26]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[5]_INST_0 
       (.I0(\douta[12] [0]),
        .I1(\douta[12]_0 [0]),
        .I2(\douta[12]_1 [0]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[12]_2 [0]),
        .O(douta[0]));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[0]),
        .Q(sel_pipe_d1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[1]),
        .Q(sel_pipe_d1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[0]),
        .Q(sel_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[1]),
        .Q(sel_pipe[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0__blk_mem_gen_prim_width
   (douta,
    clka,
    addra);
  output [0:0]douta;
  input clka;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [0:0]douta;

  blk_mem_gen_0__blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0__blk_mem_gen_prim_width__parameterized0
   (douta,
    clka,
    addra);
  output [1:0]douta;
  input clka;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [1:0]douta;

  blk_mem_gen_0__blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0__blk_mem_gen_prim_width__parameterized1
   (douta,
    clka,
    addra);
  output [1:0]douta;
  input clka;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [1:0]douta;

  blk_mem_gen_0__blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0__blk_mem_gen_prim_width__parameterized10
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra,
    pwropt,
    pwropt_1);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input pwropt;
  input pwropt_1;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire pwropt;
  wire pwropt_1;

  blk_mem_gen_0__blk_mem_gen_prim_wrapper_init__parameterized10 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0__blk_mem_gen_prim_width__parameterized11
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra,
    pwropt,
    pwropt_1);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [11:0]addra;
  input pwropt;
  input pwropt_1;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire pwropt;
  wire pwropt_1;

  blk_mem_gen_0__blk_mem_gen_prim_wrapper_init__parameterized11 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .addra(addra),
        .clka(clka),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0__blk_mem_gen_prim_width__parameterized12
   (DOADO,
    DOPADOP,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    addra,
    pwropt,
    pwropt_1);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input [11:0]addra;
  input pwropt;
  input pwropt_1;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [11:0]addra;
  wire clka;
  wire pwropt;
  wire pwropt_1;

  blk_mem_gen_0__blk_mem_gen_prim_wrapper_init__parameterized12 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .DOADO(DOADO),
        .DOPADOP(DOPADOP),
        .addra(addra),
        .clka(clka),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0__blk_mem_gen_prim_width__parameterized13
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra,
    pwropt,
    pwropt_1);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input pwropt;
  input pwropt_1;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire pwropt;
  wire pwropt_1;

  blk_mem_gen_0__blk_mem_gen_prim_wrapper_init__parameterized13 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0__blk_mem_gen_prim_width__parameterized2
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra,
    pwropt,
    pwropt_1);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input pwropt;
  input pwropt_1;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire pwropt;
  wire pwropt_1;
  wire [5:1]\NLW_prim_init.ram_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0_UNCONNECTED ;

  blk_mem_gen_0__blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [7:6],\NLW_prim_init.ram_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0_UNCONNECTED [5:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [0]}),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0__blk_mem_gen_prim_width__parameterized3
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    addra_12_sp_1,
    clka,
    addra,
    pwropt,
    pwropt_1);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output addra_12_sp_1;
  input clka;
  input [13:0]addra;
  input pwropt;
  input pwropt_1;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [13:0]addra;
  wire addra_12_sn_1;
  wire clka;
  wire pwropt;
  wire pwropt_1;
  wire [5:1]\NLW_prim_init.ram_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0_UNCONNECTED ;

  assign addra_12_sp_1 = addra_12_sn_1;
  blk_mem_gen_0__blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [7:6],\NLW_prim_init.ram_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0_UNCONNECTED [5:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [0]}),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .addra_12_sp_1(addra_12_sn_1),
        .clka(clka),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0__blk_mem_gen_prim_width__parameterized4
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    addra_13_sp_1,
    clka,
    addra,
    pwropt,
    pwropt_1);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output addra_13_sp_1;
  input clka;
  input [13:0]addra;
  input pwropt;
  input pwropt_1;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [13:0]addra;
  wire addra_13_sn_1;
  wire clka;
  wire pwropt;
  wire pwropt_1;
  wire [5:1]\NLW_prim_init.ram_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0_UNCONNECTED ;

  assign addra_13_sp_1 = addra_13_sn_1;
  blk_mem_gen_0__blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [7:6],\NLW_prim_init.ram_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0_UNCONNECTED [5:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [0]}),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .addra_13_sp_1(addra_13_sn_1),
        .clka(clka),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0__blk_mem_gen_prim_width__parameterized5
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra,
    pwropt,
    pwropt_1);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input pwropt;
  input pwropt_1;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire pwropt;
  wire pwropt_1;
  wire [5:1]\NLW_prim_init.ram_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0_UNCONNECTED ;

  blk_mem_gen_0__blk_mem_gen_prim_wrapper_init__parameterized5 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ({\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [7:6],\NLW_prim_init.ram_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0_UNCONNECTED [5:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram [0]}),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0__blk_mem_gen_prim_width__parameterized6
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra,
    pwropt,
    pwropt_1);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input pwropt;
  input pwropt_1;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire pwropt;
  wire pwropt_1;

  blk_mem_gen_0__blk_mem_gen_prim_wrapper_init__parameterized6 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0__blk_mem_gen_prim_width__parameterized7
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra,
    pwropt,
    pwropt_1);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [11:0]addra;
  input pwropt;
  input pwropt_1;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire pwropt;
  wire pwropt_1;

  blk_mem_gen_0__blk_mem_gen_prim_wrapper_init__parameterized7 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .addra(addra),
        .clka(clka),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0__blk_mem_gen_prim_width__parameterized8
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra,
    pwropt,
    pwropt_1);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [11:0]addra;
  input pwropt;
  input pwropt_1;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire pwropt;
  wire pwropt_1;

  blk_mem_gen_0__blk_mem_gen_prim_wrapper_init__parameterized8 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .addra(addra),
        .clka(clka),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0__blk_mem_gen_prim_width__parameterized9
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra,
    pwropt,
    pwropt_1);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input pwropt;
  input pwropt_1;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire pwropt;
  wire pwropt_1;

  blk_mem_gen_0__blk_mem_gen_prim_wrapper_init__parameterized9 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0__blk_mem_gen_prim_wrapper_init
   (douta,
    clka,
    addra);
  output [0:0]douta;
  input clka;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [0:0]douta;
  wire [15:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h00000000000000000000000000000000000000000000000000000000000012AA),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:1],douta}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0__blk_mem_gen_prim_wrapper_init__parameterized0
   (douta,
    clka,
    addra);
  output [1:0]douta;
  input clka;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [1:0]douta;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

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
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000003E5FA50),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1}),
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
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:2],douta}),
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

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0__blk_mem_gen_prim_wrapper_init__parameterized1
   (douta,
    clka,
    addra);
  output [1:0]douta;
  input clka;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [1:0]douta;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

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
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000050000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1}),
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
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:2],douta}),
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

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0__blk_mem_gen_prim_wrapper_init__parameterized10
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra,
    pwropt,
    pwropt_1);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input pwropt;
  input pwropt_1;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_sig_4 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire pwropt;
  wire pwropt_1;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "REGCEAREGCE=NEW" *) 
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
    .INIT_00(256'h0000000000000000000000000000000000000003030303020101010101000100),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
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
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_sig_4 ),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_gate_7 
       (.I0(pwropt_1),
        .I1(pwropt),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_sig_4 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0__blk_mem_gen_prim_wrapper_init__parameterized11
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ,
    addra,
    pwropt,
    pwropt_1);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  input [11:0]addra;
  input pwropt;
  input pwropt_1;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_sig_7 ;
  wire [11:0]addra;
  wire clka;
  wire pwropt;
  wire pwropt_1;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "REGCEAREGCE=NEW" *) 
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
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
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
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_sig_7 ),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h4)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_gate_13 
       (.I0(pwropt_1),
        .I1(pwropt),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_sig_7 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0__blk_mem_gen_prim_wrapper_init__parameterized12
   (DOADO,
    DOPADOP,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    addra,
    pwropt,
    pwropt_1);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [11:0]addra;
  input pwropt;
  input pwropt_1;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_sig_10 ;
  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [11:0]addra;
  wire clka;
  wire pwropt;
  wire pwropt_1;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "REGCEAREGCE=NEW" *) 
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
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
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
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],DOADO}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],DOPADOP}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_sig_10 ),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_gate_19 
       (.I0(pwropt_1),
        .I1(pwropt),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_sig_10 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0__blk_mem_gen_prim_wrapper_init__parameterized13
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra,
    pwropt,
    pwropt_1);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input pwropt;
  input pwropt_1;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_sig_2 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire pwropt;
  wire pwropt_1;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "REGCEAREGCE=NEW" *) 
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
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
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
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_sig_2 ),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h8)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_gate_3 
       (.I0(pwropt_1),
        .I1(pwropt),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_sig_2 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0__blk_mem_gen_prim_wrapper_init__parameterized2
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra,
    pwropt,
    pwropt_1);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input pwropt;
  input pwropt_1;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_sig_5 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire pwropt;
  wire pwropt_1;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* IS_CLOCK_GATED *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  (* POWER_OPTED_CE = "REGCEAREGCE=NEW" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000001C7C),
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
    .INIT_00(256'h00000000000000000000000000000000000000800000818101C1C18141018141),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
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
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 [7:6],\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [5:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 [0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_sig_5 ),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_gate_9 
       (.I0(pwropt_1),
        .I1(pwropt),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_sig_5 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0__blk_mem_gen_prim_wrapper_init__parameterized3
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra_12_sp_1,
    clka,
    addra,
    pwropt,
    pwropt_1);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  output addra_12_sp_1;
  input clka;
  input [13:0]addra;
  input pwropt;
  input pwropt_1;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_sig_8 ;
  wire [13:0]addra;
  wire addra_12_sn_1;
  wire clka;
  wire pwropt;
  wire pwropt_1;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  assign addra_12_sp_1 = addra_12_sn_1;
  (* IS_CLOCK_GATED *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  (* POWER_OPTED_CE = "REGCEAREGCE=NEW" *) 
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
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
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
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 [7:6],\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [5:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 [0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(addra_12_sn_1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_sig_8 ),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h4)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_gate_15 
       (.I0(pwropt_1),
        .I1(pwropt),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_sig_8 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1 
       (.I0(addra[12]),
        .I1(addra[13]),
        .O(addra_12_sn_1));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0__blk_mem_gen_prim_wrapper_init__parameterized4
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra_13_sp_1,
    clka,
    addra,
    pwropt,
    pwropt_1);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  output addra_13_sp_1;
  input clka;
  input [13:0]addra;
  input pwropt;
  input pwropt_1;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_sig_11 ;
  wire [13:0]addra;
  wire addra_13_sn_1;
  wire clka;
  wire pwropt;
  wire pwropt_1;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  assign addra_13_sp_1 = addra_13_sn_1;
  (* IS_CLOCK_GATED *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  (* POWER_OPTED_CE = "REGCEAREGCE=NEW" *) 
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
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
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
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 [7:6],\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [5:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 [0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(addra_13_sn_1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_sig_11 ),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_gate_21 
       (.I0(pwropt_1),
        .I1(pwropt),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_sig_11 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__0 
       (.I0(addra[13]),
        .I1(addra[12]),
        .O(addra_13_sn_1));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0__blk_mem_gen_prim_wrapper_init__parameterized5
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra,
    pwropt,
    pwropt_1);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input pwropt;
  input pwropt_1;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_sig_3 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire pwropt;
  wire pwropt_1;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* IS_CLOCK_GATED *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  (* POWER_OPTED_CE = "REGCEAREGCE=NEW" *) 
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
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
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
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 [7:6],\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [5:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 [0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_sig_3 ),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h8)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_gate_5 
       (.I0(pwropt_1),
        .I1(pwropt),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_sig_3 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0__blk_mem_gen_prim_wrapper_init__parameterized6
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra,
    pwropt,
    pwropt_1);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input pwropt;
  input pwropt_1;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_sig_6 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire pwropt;
  wire pwropt_1;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "REGCEAREGCE=NEW" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h00000000000000000000000000000000000000000000000000000000000011F5),
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
    .INIT_00(256'h000000000000000000000000000000000000009595952DB1992020A00C04040C),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
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
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_sig_6 ),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_gate_11 
       (.I0(pwropt_1),
        .I1(pwropt),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_sig_6 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0__blk_mem_gen_prim_wrapper_init__parameterized7
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ,
    addra,
    pwropt,
    pwropt_1);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  input [11:0]addra;
  input pwropt;
  input pwropt_1;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_sig_9 ;
  wire [11:0]addra;
  wire clka;
  wire pwropt;
  wire pwropt_1;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "REGCEAREGCE=NEW" *) 
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
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
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
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_sig_9 ),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h4)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_gate_17 
       (.I0(pwropt_1),
        .I1(pwropt),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_sig_9 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0__blk_mem_gen_prim_wrapper_init__parameterized8
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ,
    addra,
    pwropt,
    pwropt_1);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  input [11:0]addra;
  input pwropt;
  input pwropt_1;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_sig_12 ;
  wire [11:0]addra;
  wire clka;
  wire pwropt;
  wire pwropt_1;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "REGCEAREGCE=NEW" *) 
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
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
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
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_sig_12 ),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_gate_23 
       (.I0(pwropt_1),
        .I1(pwropt),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_sig_12 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0__blk_mem_gen_prim_wrapper_init__parameterized9
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra,
    pwropt,
    pwropt_1);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input pwropt;
  input pwropt_1;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_sig_1 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire pwropt;
  wire pwropt_1;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "REGCEAREGCE=NEW" *) 
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
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
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
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_sig_1 ),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h8)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_gate_1 
       (.I0(pwropt_1),
        .I1(pwropt),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_REGCEAREGCE_cooolgate_en_sig_1 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module blk_mem_gen_0__blk_mem_gen_top
   (douta,
    addra,
    clka);
  output [31:0]douta;
  input [13:0]addra;
  input clka;

  wire [13:0]addra;
  wire clka;
  wire [31:0]douta;
  wire [10:6]\NLW_valid.cstr_douta_UNCONNECTED ;

  blk_mem_gen_0__blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .douta({douta[31:11],\NLW_valid.cstr_douta_UNCONNECTED [10:6],douta[5:0]}));
endmodule

(* C_ADDRA_WIDTH = "14" *) (* C_ADDRB_WIDTH = "14" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "1" *) 
(* C_COUNT_36K_BRAM = "14" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     12.7204 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
(* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "3" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "16384" *) (* C_READ_DEPTH_B = "16384" *) (* C_READ_LATENCY_A = "1" *) 
(* C_READ_LATENCY_B = "1" *) (* C_READ_WIDTH_A = "32" *) (* C_READ_WIDTH_B = "32" *) 
(* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) (* C_RST_PRIORITY_A = "CE" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) (* C_USE_BRAM_BLOCK = "0" *) 
(* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) (* C_USE_DEFAULT_DATA = "1" *) 
(* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) (* C_USE_URAM = "0" *) 
(* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) (* C_WRITE_DEPTH_A = "16384" *) 
(* C_WRITE_DEPTH_B = "16384" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
(* C_WRITE_WIDTH_A = "32" *) (* C_WRITE_WIDTH_B = "32" *) (* C_XDEVICEFAMILY = "artix7" *) 
(* ORIG_REF_NAME = "blk_mem_gen_v8_4_4" *) (* downgradeipidentifiedwarnings = "yes" *) 
module blk_mem_gen_0__blk_mem_gen_v8_4_4
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
  input [13:0]addra;
  input [31:0]dina;
  output [31:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [13:0]addrb;
  input [31:0]dinb;
  output [31:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [13:0]rdaddrecc;
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
  output [13:0]s_axi_rdaddrecc;

  wire [13:0]addra;
  wire clka;
  wire [31:0]douta;
  wire [10:6]NLW_inst_blk_mem_gen_douta_UNCONNECTED;

  blk_mem_gen_0__blk_mem_gen_v8_4_4_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .douta({douta[31:11],NLW_inst_blk_mem_gen_douta_UNCONNECTED[10:6],douta[5:0]}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_4_synth" *) 
module blk_mem_gen_0__blk_mem_gen_v8_4_4_synth
   (douta,
    addra,
    clka);
  output [31:0]douta;
  input [13:0]addra;
  input clka;

  wire [13:0]addra;
  wire clka;
  wire [31:0]douta;
  wire [10:6]\NLW_gnbram.gnativebmg.native_blk_mem_gen_douta_UNCONNECTED ;

  blk_mem_gen_0__blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .douta({douta[31:11],\NLW_gnbram.gnativebmg.native_blk_mem_gen_douta_UNCONNECTED [10:6],douta[5:0]}));
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
