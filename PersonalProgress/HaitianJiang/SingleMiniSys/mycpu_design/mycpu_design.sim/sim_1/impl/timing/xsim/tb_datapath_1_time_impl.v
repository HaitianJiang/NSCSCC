// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sun Dec  6 22:35:30 2020
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
   (O,
    ALUresult0__93_carry__5_i_8,
    CO,
    ALUresult0__203_carry__2_i_8,
    D,
    \pc[15]_i_12_0 ,
    \pc[15]_i_12_1 ,
    zero_in,
    result_OBUF,
    \result_OBUF[25]_inst_i_9 ,
    \result_OBUF[25]_inst_i_6 ,
    \result_OBUF[25]_inst_i_6_0 ,
    \result_OBUF[25]_inst_i_9_0 ,
    \result_OBUF[25]_inst_i_9_1 ,
    \result_OBUF[25]_inst_i_9_2 ,
    \result_OBUF[29]_inst_i_1 ,
    \result_OBUF[25]_inst_i_9_3 ,
    \result_OBUF[25]_inst_i_9_4 ,
    \result_OBUF[25]_inst_i_9_5 ,
    \result_OBUF[27]_inst_i_5 ,
    \result_OBUF[27]_inst_i_5_0 ,
    \result_OBUF[27]_inst_i_5_1 ,
    rst_n,
    rst_n_0,
    \result_OBUF[27]_inst_i_4 ,
    \result_OBUF[25]_inst_i_6_1 ,
    \result_OBUF[27]_inst_i_4_0 ,
    \bbstub_douta[28] ,
    ALUSrc_in,
    JrPC,
    S,
    \result_OBUF[4]_inst_i_1_0 ,
    \result_OBUF[8]_inst_i_1_0 ,
    \result_OBUF[12]_inst_i_1_0 ,
    \result_OBUF[16]_inst_i_2_0 ,
    \result_OBUF[20]_inst_i_2_0 ,
    \result_OBUF[24]_inst_i_2_0 ,
    \result_OBUF[28]_inst_i_2_0 ,
    DI,
    \result_OBUF[0]_inst_i_3_0 ,
    \result_OBUF[4]_inst_i_1_1 ,
    \result_OBUF[4]_inst_i_1_2 ,
    \result_OBUF[8]_inst_i_1_1 ,
    \result_OBUF[8]_inst_i_1_2 ,
    \result_OBUF[12]_inst_i_1_1 ,
    \result_OBUF[12]_inst_i_1_2 ,
    \result_OBUF[16]_inst_i_2_1 ,
    \result_OBUF[16]_inst_i_2_2 ,
    \result_OBUF[20]_inst_i_2_1 ,
    \result_OBUF[20]_inst_i_2_2 ,
    \result_OBUF[24]_inst_i_2_1 ,
    \result_OBUF[24]_inst_i_2_2 ,
    \result_OBUF[28]_inst_i_2_1 ,
    \result_OBUF[28]_inst_i_2_2 ,
    ALUresult0__187_carry__0_0,
    ALUresult0__187_carry__0_1,
    ALUresult0__187_carry__1_0,
    ALUresult0__187_carry__1_1,
    ALUresult0__187_carry__2_0,
    ALUresult0__187_carry__2_1,
    \result_OBUF[0]_inst_i_5 ,
    \result_OBUF[0]_inst_i_5_0 ,
    ALUresult0__203_carry__0_0,
    ALUresult0__203_carry__0_1,
    ALUresult0__203_carry__1_0,
    ALUresult0__203_carry__1_1,
    ALUresult0__203_carry__2_0,
    ALUresult0__203_carry__2_1,
    \result_OBUF[0]_inst_i_5_1 ,
    \result_OBUF[0]_inst_i_5_2 ,
    douta,
    \pc_reg[2] ,
    Jrn,
    \pc_reg[2]_0 ,
    \pc_reg[2]_1 ,
    \pc_reg[2]_2 ,
    \pc_reg[2]_3 ,
    \pc_reg[1] ,
    \pc[15]_i_10_0 ,
    \pc[15]_i_10_1 ,
    \pc[15]_i_10_2 ,
    \result[15] ,
    \result[15]_0 ,
    \result[15]_1 ,
    \result[15]_2 ,
    \pc[15]_i_8 ,
    \result[14] ,
    \result[14]_0 ,
    \result[12] ,
    \result[12]_0 ,
    \result[13] ,
    \result[13]_0 ,
    \pc[15]_i_10_3 ,
    \pc[15]_i_11_0 ,
    \pc[15]_i_10_4 ,
    \result[9] ,
    \result[9]_0 ,
    \pc[15]_i_4_0 ,
    \pc[15]_i_4_1 ,
    \result[8] ,
    \result[8]_0 ,
    \result[11] ,
    \result[11]_0 ,
    \pc[15]_i_11_1 ,
    \result[10] ,
    \result[10]_0 ,
    \result[1] ,
    \result[1]_0 ,
    \result[6] ,
    \result[6]_0 ,
    \result[7] ,
    \result[7]_0 ,
    \result[5] ,
    \result[5]_0 ,
    \result[4] ,
    \result[4]_0 ,
    \result[17] ,
    \result[17]_0 ,
    \result[17]_1 ,
    \result[17]_2 ,
    \pc[15]_i_10_5 ,
    \pc[15]_i_10_6 ,
    \pc[15]_i_10_7 ,
    \result[22] ,
    \result[22]_0 ,
    \result[23] ,
    \result[23]_0 ,
    \pc[15]_i_8_0 ,
    \pc[15]_i_8_1 ,
    \result[28] ,
    \result[28]_0 ,
    \result[28]_1 ,
    \result[28]_2 ,
    \result_OBUF[0]_inst_i_1_0 ,
    \pc[15]_i_20 ,
    \pc[15]_i_20_0 ,
    \result_OBUF[16]_inst_i_1 ,
    \pc[15]_i_16_0 ,
    \pc[15]_i_19_0 ,
    \result_OBUF[18]_inst_i_1 ,
    \result_OBUF[19]_inst_i_1 ,
    \result_OBUF[20]_inst_i_1 ,
    \result_OBUF[21]_inst_i_1 ,
    \result_OBUF[22]_inst_i_1_0 ,
    \result_OBUF[23]_inst_i_1_0 ,
    \result_OBUF[24]_inst_i_1 ,
    \result_OBUF[25]_inst_i_1 ,
    \pc[15]_i_16_1 ,
    \result_OBUF[28]_inst_i_1_0 ,
    \result_OBUF[29]_inst_i_1_0 ,
    \result_OBUF[30]_inst_i_1 ,
    \pc[15]_i_15 ,
    rst_n_IBUF,
    ALUresult0__187_carry__2_i_10,
    ALUop,
    \result[0] ,
    \result[0]_0 ,
    \result[0]_1 );
  output [1:0]O;
  output [1:0]ALUresult0__93_carry__5_i_8;
  output [0:0]CO;
  output [0:0]ALUresult0__203_carry__2_i_8;
  output [0:0]D;
  output \pc[15]_i_12_0 ;
  output \pc[15]_i_12_1 ;
  output zero_in;
  output [17:0]result_OBUF;
  output \result_OBUF[25]_inst_i_9 ;
  output \result_OBUF[25]_inst_i_6 ;
  output \result_OBUF[25]_inst_i_6_0 ;
  output \result_OBUF[25]_inst_i_9_0 ;
  output \result_OBUF[25]_inst_i_9_1 ;
  output \result_OBUF[25]_inst_i_9_2 ;
  output \result_OBUF[29]_inst_i_1 ;
  output \result_OBUF[25]_inst_i_9_3 ;
  output \result_OBUF[25]_inst_i_9_4 ;
  output \result_OBUF[25]_inst_i_9_5 ;
  output \result_OBUF[27]_inst_i_5 ;
  output \result_OBUF[27]_inst_i_5_0 ;
  output \result_OBUF[27]_inst_i_5_1 ;
  output rst_n;
  output rst_n_0;
  output \result_OBUF[27]_inst_i_4 ;
  output \result_OBUF[25]_inst_i_6_1 ;
  output \result_OBUF[27]_inst_i_4_0 ;
  output \bbstub_douta[28] ;
  output ALUSrc_in;
  input [30:0]JrPC;
  input [3:0]S;
  input [3:0]\result_OBUF[4]_inst_i_1_0 ;
  input [3:0]\result_OBUF[8]_inst_i_1_0 ;
  input [3:0]\result_OBUF[12]_inst_i_1_0 ;
  input [3:0]\result_OBUF[16]_inst_i_2_0 ;
  input [3:0]\result_OBUF[20]_inst_i_2_0 ;
  input [3:0]\result_OBUF[24]_inst_i_2_0 ;
  input [3:0]\result_OBUF[28]_inst_i_2_0 ;
  input [3:0]DI;
  input [3:0]\result_OBUF[0]_inst_i_3_0 ;
  input [3:0]\result_OBUF[4]_inst_i_1_1 ;
  input [3:0]\result_OBUF[4]_inst_i_1_2 ;
  input [3:0]\result_OBUF[8]_inst_i_1_1 ;
  input [3:0]\result_OBUF[8]_inst_i_1_2 ;
  input [3:0]\result_OBUF[12]_inst_i_1_1 ;
  input [3:0]\result_OBUF[12]_inst_i_1_2 ;
  input [3:0]\result_OBUF[16]_inst_i_2_1 ;
  input [3:0]\result_OBUF[16]_inst_i_2_2 ;
  input [3:0]\result_OBUF[20]_inst_i_2_1 ;
  input [3:0]\result_OBUF[20]_inst_i_2_2 ;
  input [3:0]\result_OBUF[24]_inst_i_2_1 ;
  input [3:0]\result_OBUF[24]_inst_i_2_2 ;
  input [2:0]\result_OBUF[28]_inst_i_2_1 ;
  input [3:0]\result_OBUF[28]_inst_i_2_2 ;
  input [3:0]ALUresult0__187_carry__0_0;
  input [3:0]ALUresult0__187_carry__0_1;
  input [3:0]ALUresult0__187_carry__1_0;
  input [3:0]ALUresult0__187_carry__1_1;
  input [3:0]ALUresult0__187_carry__2_0;
  input [3:0]ALUresult0__187_carry__2_1;
  input [3:0]\result_OBUF[0]_inst_i_5 ;
  input [3:0]\result_OBUF[0]_inst_i_5_0 ;
  input [3:0]ALUresult0__203_carry__0_0;
  input [3:0]ALUresult0__203_carry__0_1;
  input [3:0]ALUresult0__203_carry__1_0;
  input [3:0]ALUresult0__203_carry__1_1;
  input [3:0]ALUresult0__203_carry__2_0;
  input [3:0]ALUresult0__203_carry__2_1;
  input [3:0]\result_OBUF[0]_inst_i_5_1 ;
  input [3:0]\result_OBUF[0]_inst_i_5_2 ;
  input [20:0]douta;
  input [0:0]\pc_reg[2] ;
  input Jrn;
  input \pc_reg[2]_0 ;
  input \pc_reg[2]_1 ;
  input \pc_reg[2]_2 ;
  input \pc_reg[2]_3 ;
  input \pc_reg[1] ;
  input \pc[15]_i_10_0 ;
  input \pc[15]_i_10_1 ;
  input \pc[15]_i_10_2 ;
  input \result[15] ;
  input \result[15]_0 ;
  input \result[15]_1 ;
  input \result[15]_2 ;
  input [2:0]\pc[15]_i_8 ;
  input \result[14] ;
  input \result[14]_0 ;
  input \result[12] ;
  input \result[12]_0 ;
  input \result[13] ;
  input \result[13]_0 ;
  input \pc[15]_i_10_3 ;
  input \pc[15]_i_11_0 ;
  input \pc[15]_i_10_4 ;
  input \result[9] ;
  input \result[9]_0 ;
  input \pc[15]_i_4_0 ;
  input \pc[15]_i_4_1 ;
  input \result[8] ;
  input \result[8]_0 ;
  input \result[11] ;
  input \result[11]_0 ;
  input \pc[15]_i_11_1 ;
  input \result[10] ;
  input \result[10]_0 ;
  input \result[1] ;
  input \result[1]_0 ;
  input \result[6] ;
  input \result[6]_0 ;
  input \result[7] ;
  input \result[7]_0 ;
  input \result[5] ;
  input \result[5]_0 ;
  input \result[4] ;
  input \result[4]_0 ;
  input \result[17] ;
  input \result[17]_0 ;
  input \result[17]_1 ;
  input \result[17]_2 ;
  input \pc[15]_i_10_5 ;
  input \pc[15]_i_10_6 ;
  input \pc[15]_i_10_7 ;
  input \result[22] ;
  input \result[22]_0 ;
  input \result[23] ;
  input \result[23]_0 ;
  input \pc[15]_i_8_0 ;
  input \pc[15]_i_8_1 ;
  input \result[28] ;
  input \result[28]_0 ;
  input \result[28]_1 ;
  input \result[28]_2 ;
  input \result_OBUF[0]_inst_i_1_0 ;
  input \pc[15]_i_20 ;
  input \pc[15]_i_20_0 ;
  input \result_OBUF[16]_inst_i_1 ;
  input \pc[15]_i_16_0 ;
  input \pc[15]_i_19_0 ;
  input \result_OBUF[18]_inst_i_1 ;
  input \result_OBUF[19]_inst_i_1 ;
  input \result_OBUF[20]_inst_i_1 ;
  input \result_OBUF[21]_inst_i_1 ;
  input \result_OBUF[22]_inst_i_1_0 ;
  input \result_OBUF[23]_inst_i_1_0 ;
  input \result_OBUF[24]_inst_i_1 ;
  input \result_OBUF[25]_inst_i_1 ;
  input \pc[15]_i_16_1 ;
  input \result_OBUF[28]_inst_i_1_0 ;
  input \result_OBUF[29]_inst_i_1_0 ;
  input \result_OBUF[30]_inst_i_1 ;
  input \pc[15]_i_15 ;
  input rst_n_IBUF;
  input ALUresult0__187_carry__2_i_10;
  input [0:0]ALUop;
  input \result[0] ;
  input \result[0]_0 ;
  input \result[0]_1 ;

  wire ALUSrc_in;
  wire [0:0]ALUop;
  wire [3:0]ALUresult0__187_carry__0_0;
  wire [3:0]ALUresult0__187_carry__0_1;
  wire ALUresult0__187_carry__0_n_0;
  wire [3:0]ALUresult0__187_carry__1_0;
  wire [3:0]ALUresult0__187_carry__1_1;
  wire ALUresult0__187_carry__1_n_0;
  wire [3:0]ALUresult0__187_carry__2_0;
  wire [3:0]ALUresult0__187_carry__2_1;
  wire ALUresult0__187_carry__2_i_10;
  wire ALUresult0__187_carry_n_0;
  wire [3:0]ALUresult0__203_carry__0_0;
  wire [3:0]ALUresult0__203_carry__0_1;
  wire ALUresult0__203_carry__0_n_0;
  wire [3:0]ALUresult0__203_carry__1_0;
  wire [3:0]ALUresult0__203_carry__1_1;
  wire ALUresult0__203_carry__1_n_0;
  wire [3:0]ALUresult0__203_carry__2_0;
  wire [3:0]ALUresult0__203_carry__2_1;
  wire [0:0]ALUresult0__203_carry__2_i_8;
  wire ALUresult0__203_carry_n_0;
  wire ALUresult0__93_carry__0_n_0;
  wire ALUresult0__93_carry__1_n_0;
  wire ALUresult0__93_carry__2_n_0;
  wire ALUresult0__93_carry__3_n_0;
  wire ALUresult0__93_carry__4_n_0;
  wire [1:0]ALUresult0__93_carry__5_i_8;
  wire ALUresult0__93_carry__5_n_0;
  wire ALUresult0__93_carry_n_0;
  wire ALUresult0_carry__0_n_0;
  wire ALUresult0_carry__1_n_0;
  wire ALUresult0_carry__2_n_0;
  wire ALUresult0_carry__3_n_0;
  wire ALUresult0_carry__4_n_0;
  wire ALUresult0_carry__5_n_0;
  wire ALUresult0_carry_n_0;
  wire [0:0]CO;
  wire [0:0]D;
  wire [3:0]DI;
  wire [30:0]JrPC;
  wire Jrn;
  wire [1:0]O;
  wire [3:0]S;
  wire \bbstub_douta[28] ;
  wire [31:0]data0;
  wire [31:0]data1;
  wire [20:0]douta;
  wire \pc[15]_i_10_0 ;
  wire \pc[15]_i_10_1 ;
  wire \pc[15]_i_10_2 ;
  wire \pc[15]_i_10_3 ;
  wire \pc[15]_i_10_4 ;
  wire \pc[15]_i_10_5 ;
  wire \pc[15]_i_10_6 ;
  wire \pc[15]_i_10_7 ;
  wire \pc[15]_i_10_n_0 ;
  wire \pc[15]_i_11_0 ;
  wire \pc[15]_i_11_1 ;
  wire \pc[15]_i_11_n_0 ;
  wire \pc[15]_i_12_0 ;
  wire \pc[15]_i_12_1 ;
  wire \pc[15]_i_12_n_0 ;
  wire \pc[15]_i_15 ;
  wire \pc[15]_i_16_0 ;
  wire \pc[15]_i_16_1 ;
  wire \pc[15]_i_17_n_0 ;
  wire \pc[15]_i_18_n_0 ;
  wire \pc[15]_i_19_0 ;
  wire \pc[15]_i_19_n_0 ;
  wire \pc[15]_i_20 ;
  wire \pc[15]_i_20_0 ;
  wire \pc[15]_i_21_n_0 ;
  wire \pc[15]_i_26_n_0 ;
  wire \pc[15]_i_28_n_0 ;
  wire \pc[15]_i_30_n_0 ;
  wire \pc[15]_i_37_n_0 ;
  wire \pc[15]_i_4_0 ;
  wire \pc[15]_i_4_1 ;
  wire [2:0]\pc[15]_i_8 ;
  wire \pc[15]_i_8_0 ;
  wire \pc[15]_i_8_1 ;
  wire \pc[1]_i_4_n_0 ;
  wire \pc_reg[1] ;
  wire [0:0]\pc_reg[2] ;
  wire \pc_reg[2]_0 ;
  wire \pc_reg[2]_1 ;
  wire \pc_reg[2]_2 ;
  wire \pc_reg[2]_3 ;
  wire \result[0] ;
  wire \result[0]_0 ;
  wire \result[0]_1 ;
  wire \result[10] ;
  wire \result[10]_0 ;
  wire \result[11] ;
  wire \result[11]_0 ;
  wire \result[12] ;
  wire \result[12]_0 ;
  wire \result[13] ;
  wire \result[13]_0 ;
  wire \result[14] ;
  wire \result[14]_0 ;
  wire \result[15] ;
  wire \result[15]_0 ;
  wire \result[15]_1 ;
  wire \result[15]_2 ;
  wire \result[17] ;
  wire \result[17]_0 ;
  wire \result[17]_1 ;
  wire \result[17]_2 ;
  wire \result[1] ;
  wire \result[1]_0 ;
  wire \result[22] ;
  wire \result[22]_0 ;
  wire \result[23] ;
  wire \result[23]_0 ;
  wire \result[28] ;
  wire \result[28]_0 ;
  wire \result[28]_1 ;
  wire \result[28]_2 ;
  wire \result[4] ;
  wire \result[4]_0 ;
  wire \result[5] ;
  wire \result[5]_0 ;
  wire \result[6] ;
  wire \result[6]_0 ;
  wire \result[7] ;
  wire \result[7]_0 ;
  wire \result[8] ;
  wire \result[8]_0 ;
  wire \result[9] ;
  wire \result[9]_0 ;
  wire [17:0]result_OBUF;
  wire \result_OBUF[0]_inst_i_1_0 ;
  wire [3:0]\result_OBUF[0]_inst_i_3_0 ;
  wire \result_OBUF[0]_inst_i_3_n_0 ;
  wire [3:0]\result_OBUF[0]_inst_i_5 ;
  wire [3:0]\result_OBUF[0]_inst_i_5_0 ;
  wire [3:0]\result_OBUF[0]_inst_i_5_1 ;
  wire [3:0]\result_OBUF[0]_inst_i_5_2 ;
  wire [3:0]\result_OBUF[12]_inst_i_1_0 ;
  wire [3:0]\result_OBUF[12]_inst_i_1_1 ;
  wire [3:0]\result_OBUF[12]_inst_i_1_2 ;
  wire \result_OBUF[16]_inst_i_1 ;
  wire [3:0]\result_OBUF[16]_inst_i_2_0 ;
  wire [3:0]\result_OBUF[16]_inst_i_2_1 ;
  wire [3:0]\result_OBUF[16]_inst_i_2_2 ;
  wire \result_OBUF[17]_inst_i_2_n_0 ;
  wire \result_OBUF[18]_inst_i_1 ;
  wire \result_OBUF[19]_inst_i_1 ;
  wire \result_OBUF[20]_inst_i_1 ;
  wire [3:0]\result_OBUF[20]_inst_i_2_0 ;
  wire [3:0]\result_OBUF[20]_inst_i_2_1 ;
  wire [3:0]\result_OBUF[20]_inst_i_2_2 ;
  wire \result_OBUF[21]_inst_i_1 ;
  wire \result_OBUF[22]_inst_i_1_0 ;
  wire \result_OBUF[22]_inst_i_2_n_0 ;
  wire \result_OBUF[23]_inst_i_1_0 ;
  wire \result_OBUF[23]_inst_i_2_n_0 ;
  wire \result_OBUF[24]_inst_i_1 ;
  wire [3:0]\result_OBUF[24]_inst_i_2_0 ;
  wire [3:0]\result_OBUF[24]_inst_i_2_1 ;
  wire [3:0]\result_OBUF[24]_inst_i_2_2 ;
  wire \result_OBUF[25]_inst_i_1 ;
  wire \result_OBUF[25]_inst_i_6 ;
  wire \result_OBUF[25]_inst_i_6_0 ;
  wire \result_OBUF[25]_inst_i_6_1 ;
  wire \result_OBUF[25]_inst_i_9 ;
  wire \result_OBUF[25]_inst_i_9_0 ;
  wire \result_OBUF[25]_inst_i_9_1 ;
  wire \result_OBUF[25]_inst_i_9_2 ;
  wire \result_OBUF[25]_inst_i_9_3 ;
  wire \result_OBUF[25]_inst_i_9_4 ;
  wire \result_OBUF[25]_inst_i_9_5 ;
  wire \result_OBUF[27]_inst_i_4 ;
  wire \result_OBUF[27]_inst_i_4_0 ;
  wire \result_OBUF[27]_inst_i_5 ;
  wire \result_OBUF[27]_inst_i_5_0 ;
  wire \result_OBUF[27]_inst_i_5_1 ;
  wire \result_OBUF[28]_inst_i_1_0 ;
  wire [3:0]\result_OBUF[28]_inst_i_2_0 ;
  wire [2:0]\result_OBUF[28]_inst_i_2_1 ;
  wire [3:0]\result_OBUF[28]_inst_i_2_2 ;
  wire \result_OBUF[28]_inst_i_2_n_0 ;
  wire \result_OBUF[29]_inst_i_1 ;
  wire \result_OBUF[29]_inst_i_1_0 ;
  wire \result_OBUF[30]_inst_i_1 ;
  wire [3:0]\result_OBUF[4]_inst_i_1_0 ;
  wire [3:0]\result_OBUF[4]_inst_i_1_1 ;
  wire [3:0]\result_OBUF[4]_inst_i_1_2 ;
  wire [3:0]\result_OBUF[8]_inst_i_1_0 ;
  wire [3:0]\result_OBUF[8]_inst_i_1_1 ;
  wire [3:0]\result_OBUF[8]_inst_i_1_2 ;
  wire rst_n;
  wire rst_n_0;
  wire rst_n_IBUF;
  wire zero_in;
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
        .DI(\result_OBUF[0]_inst_i_5 ),
        .O(NLW_ALUresult0__187_carry__2_O_UNCONNECTED[3:0]),
        .S(\result_OBUF[0]_inst_i_5_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0__203_carry
       (.CI(1'b0),
        .CO({ALUresult0__203_carry_n_0,NLW_ALUresult0__203_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(ALUresult0__203_carry__0_0),
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
        .CO({ALUresult0__203_carry__2_i_8,NLW_ALUresult0__203_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\result_OBUF[0]_inst_i_5_1 ),
        .O(NLW_ALUresult0__203_carry__2_O_UNCONNECTED[3:0]),
        .S(\result_OBUF[0]_inst_i_5_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0__93_carry
       (.CI(1'b0),
        .CO({ALUresult0__93_carry_n_0,NLW_ALUresult0__93_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI(DI),
        .O(data1[3:0]),
        .S(\result_OBUF[0]_inst_i_3_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0__93_carry__0
       (.CI(ALUresult0__93_carry_n_0),
        .CO({ALUresult0__93_carry__0_n_0,NLW_ALUresult0__93_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\result_OBUF[4]_inst_i_1_1 ),
        .O(data1[7:4]),
        .S(\result_OBUF[4]_inst_i_1_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0__93_carry__1
       (.CI(ALUresult0__93_carry__0_n_0),
        .CO({ALUresult0__93_carry__1_n_0,NLW_ALUresult0__93_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\result_OBUF[8]_inst_i_1_1 ),
        .O(data1[11:8]),
        .S(\result_OBUF[8]_inst_i_1_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0__93_carry__2
       (.CI(ALUresult0__93_carry__1_n_0),
        .CO({ALUresult0__93_carry__2_n_0,NLW_ALUresult0__93_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\result_OBUF[12]_inst_i_1_1 ),
        .O(data1[15:12]),
        .S(\result_OBUF[12]_inst_i_1_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0__93_carry__3
       (.CI(ALUresult0__93_carry__2_n_0),
        .CO({ALUresult0__93_carry__3_n_0,NLW_ALUresult0__93_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\result_OBUF[16]_inst_i_2_1 ),
        .O(data1[19:16]),
        .S(\result_OBUF[16]_inst_i_2_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0__93_carry__4
       (.CI(ALUresult0__93_carry__3_n_0),
        .CO({ALUresult0__93_carry__4_n_0,NLW_ALUresult0__93_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\result_OBUF[20]_inst_i_2_1 ),
        .O(data1[23:20]),
        .S(\result_OBUF[20]_inst_i_2_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0__93_carry__5
       (.CI(ALUresult0__93_carry__4_n_0),
        .CO({ALUresult0__93_carry__5_n_0,NLW_ALUresult0__93_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\result_OBUF[24]_inst_i_2_1 ),
        .O({ALUresult0__93_carry__5_i_8,data1[25:24]}),
        .S(\result_OBUF[24]_inst_i_2_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0__93_carry__6
       (.CI(ALUresult0__93_carry__5_n_0),
        .CO(NLW_ALUresult0__93_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\result_OBUF[28]_inst_i_2_1 }),
        .O(data1[31:28]),
        .S(\result_OBUF[28]_inst_i_2_2 ));
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
        .S(\result_OBUF[4]_inst_i_1_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0_carry__1
       (.CI(ALUresult0_carry__0_n_0),
        .CO({ALUresult0_carry__1_n_0,NLW_ALUresult0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(JrPC[11:8]),
        .O(data0[11:8]),
        .S(\result_OBUF[8]_inst_i_1_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0_carry__2
       (.CI(ALUresult0_carry__1_n_0),
        .CO({ALUresult0_carry__2_n_0,NLW_ALUresult0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(JrPC[15:12]),
        .O(data0[15:12]),
        .S(\result_OBUF[12]_inst_i_1_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0_carry__3
       (.CI(ALUresult0_carry__2_n_0),
        .CO({ALUresult0_carry__3_n_0,NLW_ALUresult0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(JrPC[19:16]),
        .O(data0[19:16]),
        .S(\result_OBUF[16]_inst_i_2_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8FFF)) 
    ALUresult0_carry__3_i_9
       (.I0(douta[15]),
        .I1(douta[16]),
        .I2(douta[4]),
        .I3(douta[18]),
        .I4(ALUresult0__187_carry__2_i_10),
        .I5(douta[17]),
        .O(\bbstub_douta[28] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0_carry__4
       (.CI(ALUresult0_carry__3_n_0),
        .CO({ALUresult0_carry__4_n_0,NLW_ALUresult0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(JrPC[23:20]),
        .O(data0[23:20]),
        .S(\result_OBUF[20]_inst_i_2_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0_carry__5
       (.CI(ALUresult0_carry__4_n_0),
        .CO({ALUresult0_carry__5_n_0,NLW_ALUresult0_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(JrPC[27:24]),
        .O({O,data0[25:24]}),
        .S(\result_OBUF[24]_inst_i_2_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ALUresult0_carry__6
       (.CI(ALUresult0_carry__5_n_0),
        .CO(NLW_ALUresult0_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,JrPC[30:28]}),
        .O(data0[31:28]),
        .S(\result_OBUF[28]_inst_i_2_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    ALUresult0_carry_i_10
       (.I0(douta[5]),
        .I1(douta[8]),
        .I2(douta[7]),
        .I3(douta[9]),
        .I4(douta[6]),
        .I5(rst_n_IBUF),
        .O(rst_n));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    ALUresult0_carry_i_9
       (.I0(douta[10]),
        .I1(douta[13]),
        .I2(douta[12]),
        .I3(douta[14]),
        .I4(douta[11]),
        .I5(rst_n_IBUF),
        .O(rst_n_0));
  LUT6 #(
    .INIT(64'h0B00000000000000)) 
    \pc[15]_i_10 
       (.I0(result_OBUF[11]),
        .I1(result_OBUF[10]),
        .I2(result_OBUF[12]),
        .I3(\pc[15]_i_17_n_0 ),
        .I4(\pc[15]_i_18_n_0 ),
        .I5(\pc[15]_i_19_n_0 ),
        .O(\pc[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \pc[15]_i_11 
       (.I0(result_OBUF[4]),
        .I1(\pc[15]_i_4_0 ),
        .I2(\pc[15]_i_21_n_0 ),
        .I3(\pc[15]_i_4_1 ),
        .I4(result_OBUF[6]),
        .I5(result_OBUF[5]),
        .O(\pc[15]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \pc[15]_i_12 
       (.I0(result_OBUF[11]),
        .I1(result_OBUF[14]),
        .I2(\pc[15]_i_8 [1]),
        .I3(result_OBUF[12]),
        .I4(result_OBUF[1]),
        .O(\pc[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \pc[15]_i_16 
       (.I0(result_OBUF[17]),
        .I1(\result_OBUF[25]_inst_i_9_3 ),
        .I2(\pc[15]_i_8_0 ),
        .I3(\pc[15]_i_26_n_0 ),
        .I4(\pc[15]_i_8_1 ),
        .I5(\pc[15]_i_8 [2]),
        .O(\result_OBUF[29]_inst_i_1 ));
  LUT6 #(
    .INIT(64'h000000000000FFF1)) 
    \pc[15]_i_17 
       (.I0(\pc[15]_i_28_n_0 ),
        .I1(\pc[15]_i_10_3 ),
        .I2(\pc[15]_i_30_n_0 ),
        .I3(\pc[15]_i_11_0 ),
        .I4(\pc[15]_i_10_4 ),
        .I5(\result_OBUF[25]_inst_i_6 ),
        .O(\pc[15]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000EEEF)) 
    \pc[15]_i_18 
       (.I0(\result_OBUF[25]_inst_i_9_0 ),
        .I1(\pc[15]_i_10_5 ),
        .I2(\result_OBUF[25]_inst_i_9_1 ),
        .I3(\pc[15]_i_10_6 ),
        .I4(\result_OBUF[25]_inst_i_9_2 ),
        .I5(\pc[15]_i_10_7 ),
        .O(\pc[15]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FFF1)) 
    \pc[15]_i_19 
       (.I0(\pc[15]_i_37_n_0 ),
        .I1(\pc[15]_i_10_0 ),
        .I2(\result_OBUF[25]_inst_i_9 ),
        .I3(\pc[15]_i_10_1 ),
        .I4(\pc[15]_i_10_2 ),
        .I5(\result_OBUF[17]_inst_i_2_n_0 ),
        .O(\pc[15]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \pc[15]_i_21 
       (.I0(\result_OBUF[25]_inst_i_6_0 ),
        .I1(\pc[15]_i_11_1 ),
        .I2(\pc[15]_i_30_n_0 ),
        .I3(\pc[15]_i_11_0 ),
        .I4(\pc[15]_i_8 [0]),
        .I5(result_OBUF[0]),
        .O(\pc[15]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \pc[15]_i_26 
       (.I0(\pc[15]_i_20 ),
        .I1(ALUresult0__93_carry__5_i_8[0]),
        .I2(\pc[15]_i_20_0 ),
        .I3(O[0]),
        .I4(\pc[15]_i_16_1 ),
        .I5(\pc[15]_i_16_0 ),
        .O(\pc[15]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \pc[15]_i_28 
       (.I0(data0[9]),
        .I1(\pc[15]_i_20_0 ),
        .I2(data1[9]),
        .I3(\pc[15]_i_20 ),
        .O(\pc[15]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \pc[15]_i_3 
       (.I0(\pc_reg[2]_3 ),
        .I1(\pc_reg[2]_1 ),
        .I2(\pc_reg[2]_2 ),
        .I3(\pc[15]_i_10_n_0 ),
        .I4(\pc[15]_i_11_n_0 ),
        .I5(\pc[15]_i_12_n_0 ),
        .O(\pc[15]_i_12_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \pc[15]_i_30 
       (.I0(data0[10]),
        .I1(\pc[15]_i_20_0 ),
        .I2(data1[10]),
        .I3(\pc[15]_i_20 ),
        .O(\pc[15]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \pc[15]_i_33 
       (.I0(data0[11]),
        .I1(\pc[15]_i_20_0 ),
        .I2(data1[11]),
        .I3(\pc[15]_i_20 ),
        .O(\result_OBUF[25]_inst_i_6 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \pc[15]_i_37 
       (.I0(data0[15]),
        .I1(\pc[15]_i_20_0 ),
        .I2(data1[15]),
        .I3(\pc[15]_i_20 ),
        .O(\pc[15]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \pc[15]_i_4 
       (.I0(\pc_reg[2]_0 ),
        .I1(\pc_reg[2]_1 ),
        .I2(\pc_reg[2]_2 ),
        .I3(\pc[15]_i_10_n_0 ),
        .I4(\pc[15]_i_11_n_0 ),
        .I5(\pc[15]_i_12_n_0 ),
        .O(\pc[15]_i_12_1 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \pc[15]_i_41 
       (.I0(data0[4]),
        .I1(\pc[15]_i_20_0 ),
        .I2(data1[4]),
        .I3(\pc[15]_i_20 ),
        .O(\result_OBUF[25]_inst_i_6_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \pc[15]_i_44 
       (.I0(data0[5]),
        .I1(\pc[15]_i_20_0 ),
        .I2(data1[5]),
        .I3(\pc[15]_i_20 ),
        .O(\result_OBUF[25]_inst_i_6_1 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \pc[1]_i_3 
       (.I0(\pc[15]_i_12_n_0 ),
        .I1(\pc[15]_i_11_n_0 ),
        .I2(\pc[1]_i_4_n_0 ),
        .I3(\pc_reg[1] ),
        .I4(\pc_reg[2]_2 ),
        .I5(\pc_reg[2]_1 ),
        .O(zero_in));
  LUT6 #(
    .INIT(64'h0045004500000045)) 
    \pc[1]_i_4 
       (.I0(result_OBUF[9]),
        .I1(result_OBUF[8]),
        .I2(result_OBUF[7]),
        .I3(result_OBUF[12]),
        .I4(result_OBUF[10]),
        .I5(result_OBUF[11]),
        .O(\pc[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h006600660066F0CC)) 
    \pc[2]_i_1 
       (.I0(douta[0]),
        .I1(\pc_reg[2] ),
        .I2(JrPC[2]),
        .I3(Jrn),
        .I4(\pc[15]_i_12_0 ),
        .I5(\pc[15]_i_12_1 ),
        .O(D));
  LUT3 #(
    .INIT(8'h02)) 
    register_reg_r1_0_31_0_5_i_8
       (.I0(douta[18]),
        .I1(douta[19]),
        .I2(douta[20]),
        .O(ALUSrc_in));
  LUT6 #(
    .INIT(64'hFDFDFDFCCCCCCCCC)) 
    \result_OBUF[0]_inst_i_1 
       (.I0(ALUop),
        .I1(\result_OBUF[0]_inst_i_3_n_0 ),
        .I2(\result[0] ),
        .I3(\result[0]_0 ),
        .I4(\result[0]_1 ),
        .I5(\result[17]_2 ),
        .O(result_OBUF[0]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \result_OBUF[0]_inst_i_3 
       (.I0(data1[0]),
        .I1(data0[0]),
        .I2(\result_OBUF[0]_inst_i_1_0 ),
        .I3(\result[15]_0 ),
        .I4(\result[15] ),
        .O(\result_OBUF[0]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFD8FFD8FFD800D8)) 
    \result_OBUF[10]_inst_i_1 
       (.I0(\result[15] ),
        .I1(data1[10]),
        .I2(data0[10]),
        .I3(\result[15]_0 ),
        .I4(\result[10] ),
        .I5(\result[10]_0 ),
        .O(result_OBUF[8]));
  LUT6 #(
    .INIT(64'hFFD8FFD8FFD800D8)) 
    \result_OBUF[11]_inst_i_1 
       (.I0(\result[15] ),
        .I1(data1[11]),
        .I2(data0[11]),
        .I3(\result[15]_0 ),
        .I4(\result[11] ),
        .I5(\result[11]_0 ),
        .O(result_OBUF[9]));
  LUT6 #(
    .INIT(64'hFFD8FFD8FFD800D8)) 
    \result_OBUF[12]_inst_i_1 
       (.I0(\result[15] ),
        .I1(data1[12]),
        .I2(data0[12]),
        .I3(\result[15]_0 ),
        .I4(\result[12] ),
        .I5(\result[12]_0 ),
        .O(result_OBUF[10]));
  LUT6 #(
    .INIT(64'hFFD8FFD8FFD800D8)) 
    \result_OBUF[13]_inst_i_1 
       (.I0(\result[15] ),
        .I1(data1[13]),
        .I2(data0[13]),
        .I3(\result[15]_0 ),
        .I4(\result[13] ),
        .I5(\result[13]_0 ),
        .O(result_OBUF[11]));
  LUT6 #(
    .INIT(64'hFFD8FFD8FFD800D8)) 
    \result_OBUF[14]_inst_i_1 
       (.I0(\result[15] ),
        .I1(data1[14]),
        .I2(data0[14]),
        .I3(\result[15]_0 ),
        .I4(\result[14] ),
        .I5(\result[14]_0 ),
        .O(result_OBUF[12]));
  LUT6 #(
    .INIT(64'hFFD8FFD8FFD800D8)) 
    \result_OBUF[15]_inst_i_1 
       (.I0(\result[15] ),
        .I1(data1[15]),
        .I2(data0[15]),
        .I3(\result[15]_0 ),
        .I4(\result[15]_1 ),
        .I5(\result[15]_2 ),
        .O(result_OBUF[13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[16]_inst_i_2 
       (.I0(\pc[15]_i_20 ),
        .I1(data1[16]),
        .I2(\pc[15]_i_20_0 ),
        .I3(data0[16]),
        .I4(\result_OBUF[16]_inst_i_1 ),
        .I5(\pc[15]_i_16_0 ),
        .O(\result_OBUF[25]_inst_i_9 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAAAAAAAAA)) 
    \result_OBUF[17]_inst_i_1 
       (.I0(\result_OBUF[17]_inst_i_2_n_0 ),
        .I1(\result[17] ),
        .I2(douta[1]),
        .I3(\result[17]_0 ),
        .I4(\result[17]_1 ),
        .I5(\result[17]_2 ),
        .O(result_OBUF[14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[17]_inst_i_2 
       (.I0(\pc[15]_i_20 ),
        .I1(data1[17]),
        .I2(\pc[15]_i_20_0 ),
        .I3(data0[17]),
        .I4(\pc[15]_i_19_0 ),
        .I5(\pc[15]_i_16_0 ),
        .O(\result_OBUF[17]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[18]_inst_i_2 
       (.I0(\pc[15]_i_20 ),
        .I1(data1[18]),
        .I2(\pc[15]_i_20_0 ),
        .I3(data0[18]),
        .I4(\result_OBUF[18]_inst_i_1 ),
        .I5(\pc[15]_i_16_0 ),
        .O(\result_OBUF[25]_inst_i_9_1 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[19]_inst_i_2 
       (.I0(\pc[15]_i_20 ),
        .I1(data1[19]),
        .I2(\pc[15]_i_20_0 ),
        .I3(data0[19]),
        .I4(\result_OBUF[19]_inst_i_1 ),
        .I5(\pc[15]_i_16_0 ),
        .O(\result_OBUF[25]_inst_i_9_0 ));
  LUT6 #(
    .INIT(64'hFFD8FFD8FFD800D8)) 
    \result_OBUF[1]_inst_i_1 
       (.I0(\result[15] ),
        .I1(data1[1]),
        .I2(data0[1]),
        .I3(\result[15]_0 ),
        .I4(\result[1] ),
        .I5(\result[1]_0 ),
        .O(result_OBUF[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[20]_inst_i_2 
       (.I0(\pc[15]_i_20 ),
        .I1(data1[20]),
        .I2(\pc[15]_i_20_0 ),
        .I3(data0[20]),
        .I4(\result_OBUF[20]_inst_i_1 ),
        .I5(\pc[15]_i_16_0 ),
        .O(\result_OBUF[25]_inst_i_9_2 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[21]_inst_i_2 
       (.I0(\pc[15]_i_20 ),
        .I1(data1[21]),
        .I2(\pc[15]_i_20_0 ),
        .I3(data0[21]),
        .I4(\result_OBUF[21]_inst_i_1 ),
        .I5(\pc[15]_i_16_0 ),
        .O(\result_OBUF[25]_inst_i_9_4 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAAAAAAAAA)) 
    \result_OBUF[22]_inst_i_1 
       (.I0(\result_OBUF[22]_inst_i_2_n_0 ),
        .I1(\result[17] ),
        .I2(douta[2]),
        .I3(\result[22] ),
        .I4(\result[22]_0 ),
        .I5(\result[17]_2 ),
        .O(result_OBUF[15]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[22]_inst_i_2 
       (.I0(\pc[15]_i_20 ),
        .I1(data1[22]),
        .I2(\pc[15]_i_20_0 ),
        .I3(data0[22]),
        .I4(\result_OBUF[22]_inst_i_1_0 ),
        .I5(\pc[15]_i_16_0 ),
        .O(\result_OBUF[22]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAAAAAAAAA)) 
    \result_OBUF[23]_inst_i_1 
       (.I0(\result_OBUF[23]_inst_i_2_n_0 ),
        .I1(\result[17] ),
        .I2(douta[3]),
        .I3(\result[23] ),
        .I4(\result[23]_0 ),
        .I5(\result[17]_2 ),
        .O(result_OBUF[16]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[23]_inst_i_2 
       (.I0(\pc[15]_i_20 ),
        .I1(data1[23]),
        .I2(\pc[15]_i_20_0 ),
        .I3(data0[23]),
        .I4(\result_OBUF[23]_inst_i_1_0 ),
        .I5(\pc[15]_i_16_0 ),
        .O(\result_OBUF[23]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[24]_inst_i_2 
       (.I0(\pc[15]_i_20 ),
        .I1(data1[24]),
        .I2(\pc[15]_i_20_0 ),
        .I3(data0[24]),
        .I4(\result_OBUF[24]_inst_i_1 ),
        .I5(\pc[15]_i_16_0 ),
        .O(\result_OBUF[25]_inst_i_9_5 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \result_OBUF[25]_inst_i_2 
       (.I0(\pc[15]_i_20 ),
        .I1(data1[25]),
        .I2(\pc[15]_i_20_0 ),
        .I3(data0[25]),
        .I4(\result_OBUF[25]_inst_i_1 ),
        .I5(\pc[15]_i_16_0 ),
        .O(\result_OBUF[25]_inst_i_9_3 ));
  LUT6 #(
    .INIT(64'hFFFEEEEEAAAAAAAA)) 
    \result_OBUF[28]_inst_i_1 
       (.I0(\result_OBUF[28]_inst_i_2_n_0 ),
        .I1(\result[28] ),
        .I2(\result[28]_0 ),
        .I3(\result[28]_1 ),
        .I4(\result[28]_2 ),
        .I5(\result[17]_2 ),
        .O(result_OBUF[17]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \result_OBUF[28]_inst_i_2 
       (.I0(data1[28]),
        .I1(data0[28]),
        .I2(\result_OBUF[28]_inst_i_1_0 ),
        .I3(\result[15]_0 ),
        .I4(\result[15] ),
        .O(\result_OBUF[28]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \result_OBUF[29]_inst_i_2 
       (.I0(data1[29]),
        .I1(data0[29]),
        .I2(\result_OBUF[29]_inst_i_1_0 ),
        .I3(\result[15]_0 ),
        .I4(\result[15] ),
        .O(\result_OBUF[27]_inst_i_5 ));
  LUT4 #(
    .INIT(16'h00CA)) 
    \result_OBUF[2]_inst_i_2 
       (.I0(data0[2]),
        .I1(data1[2]),
        .I2(\result[15] ),
        .I3(\result[15]_0 ),
        .O(\result_OBUF[27]_inst_i_4_0 ));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \result_OBUF[30]_inst_i_2 
       (.I0(data1[30]),
        .I1(data0[30]),
        .I2(\result_OBUF[30]_inst_i_1 ),
        .I3(\result[15]_0 ),
        .I4(\result[15] ),
        .O(\result_OBUF[27]_inst_i_5_0 ));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \result_OBUF[31]_inst_i_2 
       (.I0(data1[31]),
        .I1(data0[31]),
        .I2(\pc[15]_i_15 ),
        .I3(\result[15]_0 ),
        .I4(\result[15] ),
        .O(\result_OBUF[27]_inst_i_5_1 ));
  LUT4 #(
    .INIT(16'h00CA)) 
    \result_OBUF[3]_inst_i_2 
       (.I0(data0[3]),
        .I1(data1[3]),
        .I2(\result[15] ),
        .I3(\result[15]_0 ),
        .O(\result_OBUF[27]_inst_i_4 ));
  LUT6 #(
    .INIT(64'hFFD8FFD8FFD800D8)) 
    \result_OBUF[4]_inst_i_1 
       (.I0(\result[15] ),
        .I1(data1[4]),
        .I2(data0[4]),
        .I3(\result[15]_0 ),
        .I4(\result[4] ),
        .I5(\result[4]_0 ),
        .O(result_OBUF[2]));
  LUT6 #(
    .INIT(64'hFFD8FFD8FFD800D8)) 
    \result_OBUF[5]_inst_i_1 
       (.I0(\result[15] ),
        .I1(data1[5]),
        .I2(data0[5]),
        .I3(\result[15]_0 ),
        .I4(\result[5] ),
        .I5(\result[5]_0 ),
        .O(result_OBUF[3]));
  LUT6 #(
    .INIT(64'hFFD8FFD8FFD800D8)) 
    \result_OBUF[6]_inst_i_1 
       (.I0(\result[15] ),
        .I1(data1[6]),
        .I2(data0[6]),
        .I3(\result[15]_0 ),
        .I4(\result[6] ),
        .I5(\result[6]_0 ),
        .O(result_OBUF[4]));
  LUT6 #(
    .INIT(64'hFFD8FFD8FFD800D8)) 
    \result_OBUF[7]_inst_i_1 
       (.I0(\result[15] ),
        .I1(data1[7]),
        .I2(data0[7]),
        .I3(\result[15]_0 ),
        .I4(\result[7] ),
        .I5(\result[7]_0 ),
        .O(result_OBUF[5]));
  LUT6 #(
    .INIT(64'hFFD8FFD8FFD800D8)) 
    \result_OBUF[8]_inst_i_1 
       (.I0(\result[15] ),
        .I1(data1[8]),
        .I2(data0[8]),
        .I3(\result[15]_0 ),
        .I4(\result[8] ),
        .I5(\result[8]_0 ),
        .O(result_OBUF[6]));
  LUT6 #(
    .INIT(64'hFFD8FFD8FFD800D8)) 
    \result_OBUF[9]_inst_i_1 
       (.I0(\result[15] ),
        .I1(data1[9]),
        .I2(data0[9]),
        .I3(\result[15]_0 ),
        .I4(\result[9] ),
        .I5(\result[9]_0 ),
        .O(result_OBUF[7]));
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
  blk_mem_gen_0_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(NLW_U0_addrb_UNCONNECTED[13:0]),
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

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_cpu_clk),
        .O(clkfbout_buf_cpu_clk));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_cpu_clk),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
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
    .COMPENSATION("BUF_IN"),
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

(* ECO_CHECKSUM = "2851b317" *) (* POWER_OPT_BRAM_CDC = "15" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
module datapath_1
   (clk,
    rst_n,
    result);
  input clk;
  input rst_n;
  output [31:0]result;

  wire ALUSrc_in;
  wire [2:0]ALUop;
  wire [30:0]JrPC;
  wire Jrn;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire clk_div;
  wire [27:26]data0;
  wire [27:26]data1;
  wire data6;
  wire data7;
  wire [31:0]instruction;
  wire [15:2]pcOld;
  wire [2:2]pcSelect;
  wire [2:2]pcSelect00_in;
  wire [31:0]result;
  wire [31:0]result_OBUF;
  wire rst_n;
  wire rst_n_IBUF;
  wire u_ALU_1_n_28;
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
  wire u_ALU_1_n_7;
  wire u_ALU_1_n_8;
  wire u_pc_1_n_16;
  wire u_pc_1_n_17;
  wire u_pc_1_n_18;
  wire u_pc_1_n_19;
  wire u_pc_1_n_20;
  wire u_pc_1_n_21;
  wire u_pc_1_n_22;
  wire u_pc_1_n_23;
  wire u_pc_1_n_24;
  wire u_pc_1_n_25;
  wire u_pc_1_n_26;
  wire u_pc_1_n_27;
  wire u_pc_1_n_28;
  wire u_pc_1_n_29;
  wire u_pc_1_n_30;
  wire u_pc_1_n_31;
  wire u_reg_files_1_n_0;
  wire u_reg_files_1_n_1;
  wire u_reg_files_1_n_10;
  wire u_reg_files_1_n_11;
  wire u_reg_files_1_n_12;
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
  wire u_reg_files_1_n_20;
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
  wire u_reg_files_1_n_23;
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
  wire u_reg_files_1_n_24;
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
  wire u_reg_files_1_n_25;
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
  wire u_reg_files_1_n_26;
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
  wire u_reg_files_1_n_27;
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
  wire u_reg_files_1_n_28;
  wire u_reg_files_1_n_280;
  wire u_reg_files_1_n_281;
  wire u_reg_files_1_n_282;
  wire u_reg_files_1_n_283;
  wire u_reg_files_1_n_29;
  wire u_reg_files_1_n_3;
  wire u_reg_files_1_n_30;
  wire u_reg_files_1_n_31;
  wire u_reg_files_1_n_32;
  wire u_reg_files_1_n_4;
  wire u_reg_files_1_n_47;
  wire u_reg_files_1_n_48;
  wire u_reg_files_1_n_49;
  wire u_reg_files_1_n_5;
  wire u_reg_files_1_n_53;
  wire u_reg_files_1_n_54;
  wire u_reg_files_1_n_55;
  wire u_reg_files_1_n_56;
  wire u_reg_files_1_n_57;
  wire u_reg_files_1_n_58;
  wire u_reg_files_1_n_59;
  wire u_reg_files_1_n_6;
  wire u_reg_files_1_n_60;
  wire u_reg_files_1_n_61;
  wire u_reg_files_1_n_62;
  wire u_reg_files_1_n_63;
  wire u_reg_files_1_n_64;
  wire u_reg_files_1_n_65;
  wire u_reg_files_1_n_66;
  wire u_reg_files_1_n_67;
  wire u_reg_files_1_n_68;
  wire u_reg_files_1_n_69;
  wire u_reg_files_1_n_7;
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
  wire zero_in;

initial begin
 $sdf_annotate("tb_datapath_1_time_impl.sdf",,,,"tool_control");
end
  (* LOPT_BUFG_CLOCK *) 
  (* OPT_MODIFIED = "BUFG_OPT" *) 
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  (* OPT_INSERTED *) 
  (* OPT_MODIFIED = "MLO BUFG_OPT" *) 
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
        .ALUresult0__187_carry__0_0({u_reg_files_1_n_200,u_reg_files_1_n_201,u_reg_files_1_n_202,u_reg_files_1_n_203}),
        .ALUresult0__187_carry__0_1({u_reg_files_1_n_196,u_reg_files_1_n_197,u_reg_files_1_n_198,u_reg_files_1_n_199}),
        .ALUresult0__187_carry__1_0({u_reg_files_1_n_208,u_reg_files_1_n_209,u_reg_files_1_n_210,u_reg_files_1_n_211}),
        .ALUresult0__187_carry__1_1({u_reg_files_1_n_204,u_reg_files_1_n_205,u_reg_files_1_n_206,u_reg_files_1_n_207}),
        .ALUresult0__187_carry__2_0({u_reg_files_1_n_216,u_reg_files_1_n_217,u_reg_files_1_n_218,u_reg_files_1_n_219}),
        .ALUresult0__187_carry__2_1({u_reg_files_1_n_212,u_reg_files_1_n_213,u_reg_files_1_n_214,u_reg_files_1_n_215}),
        .ALUresult0__187_carry__2_i_10(u_reg_files_1_n_164),
        .ALUresult0__203_carry__0_0({u_reg_files_1_n_4,u_reg_files_1_n_5,u_reg_files_1_n_6,u_reg_files_1_n_7}),
        .ALUresult0__203_carry__0_1({u_reg_files_1_n_0,u_reg_files_1_n_1,u_reg_files_1_n_2,u_reg_files_1_n_3}),
        .ALUresult0__203_carry__1_0({u_reg_files_1_n_12,u_reg_files_1_n_13,u_reg_files_1_n_14,u_reg_files_1_n_15}),
        .ALUresult0__203_carry__1_1({u_reg_files_1_n_8,u_reg_files_1_n_9,u_reg_files_1_n_10,u_reg_files_1_n_11}),
        .ALUresult0__203_carry__2_0({u_reg_files_1_n_20,u_reg_files_1_n_21,u_reg_files_1_n_22,u_reg_files_1_n_23}),
        .ALUresult0__203_carry__2_1({u_reg_files_1_n_16,u_reg_files_1_n_17,u_reg_files_1_n_18,u_reg_files_1_n_19}),
        .ALUresult0__203_carry__2_i_8(data7),
        .ALUresult0__93_carry__5_i_8(data1),
        .CO(data6),
        .D(pcSelect),
        .DI({u_reg_files_1_n_165,u_reg_files_1_n_166,u_reg_files_1_n_167,u_reg_files_1_n_168}),
        .JrPC(JrPC),
        .Jrn(Jrn),
        .O(data0),
        .S({u_reg_files_1_n_228,u_reg_files_1_n_229,u_reg_files_1_n_230,u_reg_files_1_n_231}),
        .\bbstub_douta[28] (u_ALU_1_n_46),
        .douta({instruction[31:15],instruction[7:6],instruction[1:0]}),
        .\pc[15]_i_10_0 (u_reg_files_1_n_47),
        .\pc[15]_i_10_1 (u_reg_files_1_n_75),
        .\pc[15]_i_10_2 (u_reg_files_1_n_76),
        .\pc[15]_i_10_3 (u_reg_files_1_n_56),
        .\pc[15]_i_10_4 (u_reg_files_1_n_62),
        .\pc[15]_i_10_5 (u_reg_files_1_n_81),
        .\pc[15]_i_10_6 (u_reg_files_1_n_79),
        .\pc[15]_i_10_7 (u_reg_files_1_n_84),
        .\pc[15]_i_11_0 (u_reg_files_1_n_64),
        .\pc[15]_i_11_1 (u_reg_files_1_n_71),
        .\pc[15]_i_12_0 (u_ALU_1_n_7),
        .\pc[15]_i_12_1 (u_ALU_1_n_8),
        .\pc[15]_i_15 (u_reg_files_1_n_156),
        .\pc[15]_i_16_0 (u_reg_files_1_n_163),
        .\pc[15]_i_16_1 (u_reg_files_1_n_88),
        .\pc[15]_i_19_0 (u_reg_files_1_n_136),
        .\pc[15]_i_20 (u_pc_1_n_19),
        .\pc[15]_i_20_0 (u_pc_1_n_18),
        .\pc[15]_i_4_0 (u_reg_files_1_n_70),
        .\pc[15]_i_4_1 (u_reg_files_1_n_59),
        .\pc[15]_i_8 ({result_OBUF[29],result_OBUF[16],result_OBUF[2]}),
        .\pc[15]_i_8_0 (u_reg_files_1_n_87),
        .\pc[15]_i_8_1 (u_reg_files_1_n_90),
        .\pc_reg[1] (u_reg_files_1_n_32),
        .\pc_reg[2] (pcSelect00_in),
        .\pc_reg[2]_0 (u_pc_1_n_16),
        .\pc_reg[2]_1 (u_reg_files_1_n_80),
        .\pc_reg[2]_2 (u_reg_files_1_n_85),
        .\pc_reg[2]_3 (u_pc_1_n_17),
        .\result[0] (u_reg_files_1_n_73),
        .\result[0]_0 (u_reg_files_1_n_66),
        .\result[0]_1 (u_reg_files_1_n_74),
        .\result[10] (u_reg_files_1_n_129),
        .\result[10]_0 (u_reg_files_1_n_65),
        .\result[11] (u_reg_files_1_n_130),
        .\result[11]_0 (u_reg_files_1_n_63),
        .\result[12] (u_reg_files_1_n_131),
        .\result[12]_0 (u_reg_files_1_n_54),
        .\result[13] (u_reg_files_1_n_132),
        .\result[13]_0 (u_reg_files_1_n_55),
        .\result[14] (u_reg_files_1_n_133),
        .\result[14]_0 (u_reg_files_1_n_53),
        .\result[15] (u_reg_files_1_n_89),
        .\result[15]_0 (u_reg_files_1_n_48),
        .\result[15]_1 (u_reg_files_1_n_134),
        .\result[15]_2 (u_reg_files_1_n_49),
        .\result[17] (u_pc_1_n_22),
        .\result[17]_0 (u_reg_files_1_n_78),
        .\result[17]_1 (u_reg_files_1_n_77),
        .\result[17]_2 (u_pc_1_n_20),
        .\result[1] (u_reg_files_1_n_92),
        .\result[1]_0 (u_reg_files_1_n_67),
        .\result[22] (u_reg_files_1_n_82),
        .\result[22]_0 (u_reg_files_1_n_141),
        .\result[23] (u_reg_files_1_n_83),
        .\result[23]_0 (u_reg_files_1_n_143),
        .\result[28] (u_reg_files_1_n_147),
        .\result[28]_0 (u_reg_files_1_n_86),
        .\result[28]_1 (u_reg_files_1_n_148),
        .\result[28]_2 (u_pc_1_n_31),
        .\result[4] (u_reg_files_1_n_124),
        .\result[4]_0 (u_reg_files_1_n_72),
        .\result[5] (u_reg_files_1_n_61),
        .\result[5]_0 (u_reg_files_1_n_60),
        .\result[6] (u_reg_files_1_n_125),
        .\result[6]_0 (u_reg_files_1_n_68),
        .\result[7] (u_reg_files_1_n_126),
        .\result[7]_0 (u_reg_files_1_n_69),
        .\result[8] (u_reg_files_1_n_127),
        .\result[8]_0 (u_reg_files_1_n_58),
        .\result[9] (u_reg_files_1_n_128),
        .\result[9]_0 (u_reg_files_1_n_57),
        .result_OBUF({result_OBUF[28],result_OBUF[23:22],result_OBUF[17],result_OBUF[15:4],result_OBUF[1:0]}),
        .\result_OBUF[0]_inst_i_1_0 (u_reg_files_1_n_91),
        .\result_OBUF[0]_inst_i_3_0 ({u_reg_files_1_n_256,u_reg_files_1_n_257,u_reg_files_1_n_258,u_reg_files_1_n_259}),
        .\result_OBUF[0]_inst_i_5 ({u_reg_files_1_n_151,u_reg_files_1_n_152,u_reg_files_1_n_153,u_reg_files_1_n_154}),
        .\result_OBUF[0]_inst_i_5_0 ({u_reg_files_1_n_220,u_reg_files_1_n_221,u_reg_files_1_n_222,u_reg_files_1_n_223}),
        .\result_OBUF[0]_inst_i_5_1 ({u_reg_files_1_n_28,u_reg_files_1_n_29,u_reg_files_1_n_30,u_reg_files_1_n_31}),
        .\result_OBUF[0]_inst_i_5_2 ({u_reg_files_1_n_24,u_reg_files_1_n_25,u_reg_files_1_n_26,u_reg_files_1_n_27}),
        .\result_OBUF[12]_inst_i_1_0 ({u_reg_files_1_n_240,u_reg_files_1_n_241,u_reg_files_1_n_242,u_reg_files_1_n_243}),
        .\result_OBUF[12]_inst_i_1_1 ({u_reg_files_1_n_177,u_reg_files_1_n_178,u_reg_files_1_n_179,u_reg_files_1_n_180}),
        .\result_OBUF[12]_inst_i_1_2 ({u_reg_files_1_n_268,u_reg_files_1_n_269,u_reg_files_1_n_270,u_reg_files_1_n_271}),
        .\result_OBUF[16]_inst_i_1 (u_reg_files_1_n_135),
        .\result_OBUF[16]_inst_i_2_0 ({u_reg_files_1_n_244,u_reg_files_1_n_245,u_reg_files_1_n_246,u_reg_files_1_n_247}),
        .\result_OBUF[16]_inst_i_2_1 ({u_reg_files_1_n_181,u_reg_files_1_n_182,u_reg_files_1_n_183,u_reg_files_1_n_184}),
        .\result_OBUF[16]_inst_i_2_2 ({u_reg_files_1_n_272,u_reg_files_1_n_273,u_reg_files_1_n_274,u_reg_files_1_n_275}),
        .\result_OBUF[18]_inst_i_1 (u_reg_files_1_n_137),
        .\result_OBUF[19]_inst_i_1 (u_reg_files_1_n_138),
        .\result_OBUF[20]_inst_i_1 (u_reg_files_1_n_139),
        .\result_OBUF[20]_inst_i_2_0 ({u_reg_files_1_n_248,u_reg_files_1_n_249,u_reg_files_1_n_250,u_reg_files_1_n_251}),
        .\result_OBUF[20]_inst_i_2_1 ({u_reg_files_1_n_185,u_reg_files_1_n_186,u_reg_files_1_n_187,u_reg_files_1_n_188}),
        .\result_OBUF[20]_inst_i_2_2 ({u_reg_files_1_n_276,u_reg_files_1_n_277,u_reg_files_1_n_278,u_reg_files_1_n_279}),
        .\result_OBUF[21]_inst_i_1 (u_reg_files_1_n_140),
        .\result_OBUF[22]_inst_i_1_0 (u_reg_files_1_n_142),
        .\result_OBUF[23]_inst_i_1_0 (u_reg_files_1_n_144),
        .\result_OBUF[24]_inst_i_1 (u_reg_files_1_n_145),
        .\result_OBUF[24]_inst_i_2_0 ({u_reg_files_1_n_252,u_reg_files_1_n_253,u_reg_files_1_n_254,u_reg_files_1_n_255}),
        .\result_OBUF[24]_inst_i_2_1 ({u_reg_files_1_n_189,u_reg_files_1_n_190,u_reg_files_1_n_191,u_reg_files_1_n_192}),
        .\result_OBUF[24]_inst_i_2_2 ({u_reg_files_1_n_280,u_reg_files_1_n_281,u_reg_files_1_n_282,u_reg_files_1_n_283}),
        .\result_OBUF[25]_inst_i_1 (u_reg_files_1_n_146),
        .\result_OBUF[25]_inst_i_6 (u_ALU_1_n_29),
        .\result_OBUF[25]_inst_i_6_0 (u_ALU_1_n_30),
        .\result_OBUF[25]_inst_i_6_1 (u_ALU_1_n_44),
        .\result_OBUF[25]_inst_i_9 (u_ALU_1_n_28),
        .\result_OBUF[25]_inst_i_9_0 (u_ALU_1_n_31),
        .\result_OBUF[25]_inst_i_9_1 (u_ALU_1_n_32),
        .\result_OBUF[25]_inst_i_9_2 (u_ALU_1_n_33),
        .\result_OBUF[25]_inst_i_9_3 (u_ALU_1_n_35),
        .\result_OBUF[25]_inst_i_9_4 (u_ALU_1_n_36),
        .\result_OBUF[25]_inst_i_9_5 (u_ALU_1_n_37),
        .\result_OBUF[27]_inst_i_4 (u_ALU_1_n_43),
        .\result_OBUF[27]_inst_i_4_0 (u_ALU_1_n_45),
        .\result_OBUF[27]_inst_i_5 (u_ALU_1_n_38),
        .\result_OBUF[27]_inst_i_5_0 (u_ALU_1_n_39),
        .\result_OBUF[27]_inst_i_5_1 (u_ALU_1_n_40),
        .\result_OBUF[28]_inst_i_1_0 (u_reg_files_1_n_149),
        .\result_OBUF[28]_inst_i_2_0 ({u_reg_files_1_n_157,u_reg_files_1_n_158,u_reg_files_1_n_159,u_reg_files_1_n_160}),
        .\result_OBUF[28]_inst_i_2_1 ({u_reg_files_1_n_193,u_reg_files_1_n_194,u_reg_files_1_n_195}),
        .\result_OBUF[28]_inst_i_2_2 ({u_reg_files_1_n_224,u_reg_files_1_n_225,u_reg_files_1_n_226,u_reg_files_1_n_227}),
        .\result_OBUF[29]_inst_i_1 (u_ALU_1_n_34),
        .\result_OBUF[29]_inst_i_1_0 (u_reg_files_1_n_150),
        .\result_OBUF[30]_inst_i_1 (u_reg_files_1_n_155),
        .\result_OBUF[4]_inst_i_1_0 ({u_reg_files_1_n_232,u_reg_files_1_n_233,u_reg_files_1_n_234,u_reg_files_1_n_235}),
        .\result_OBUF[4]_inst_i_1_1 ({u_reg_files_1_n_169,u_reg_files_1_n_170,u_reg_files_1_n_171,u_reg_files_1_n_172}),
        .\result_OBUF[4]_inst_i_1_2 ({u_reg_files_1_n_260,u_reg_files_1_n_261,u_reg_files_1_n_262,u_reg_files_1_n_263}),
        .\result_OBUF[8]_inst_i_1_0 ({u_reg_files_1_n_236,u_reg_files_1_n_237,u_reg_files_1_n_238,u_reg_files_1_n_239}),
        .\result_OBUF[8]_inst_i_1_1 ({u_reg_files_1_n_173,u_reg_files_1_n_174,u_reg_files_1_n_175,u_reg_files_1_n_176}),
        .\result_OBUF[8]_inst_i_1_2 ({u_reg_files_1_n_264,u_reg_files_1_n_265,u_reg_files_1_n_266,u_reg_files_1_n_267}),
        .rst_n(u_ALU_1_n_41),
        .rst_n_0(u_ALU_1_n_42),
        .rst_n_IBUF(rst_n_IBUF),
        .zero_in(zero_in));
  (* IMPORTED_FROM = "d:/myCollege/ComputerSystem/NSCSCC/NSCSCC/NSCSCC/PersonalProgress/HaitianJiang/SingleMiniSys/mycpu_design/mycpu_design.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.1" *) 
  blk_mem_gen_0 u_blk_mem_gen_0
       (.addra(pcOld),
        .clka(clk_IBUF_BUFG),
        .douta(instruction));
  (* IMPORTED_FROM = "d:/myCollege/ComputerSystem/NSCSCC/NSCSCC/NSCSCC/PersonalProgress/HaitianJiang/SingleMiniSys/mycpu_design/mycpu_design.srcs/sources_1/ip/cpu_clk/cpu_clk.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  cpu_clk u_cpu_clk
       (.clk_in1(clk_IBUF_BUFG),
        .clk_out1(clk_div));
  pc_1 u_pc_1
       (.ALUop(ALUop),
        .D(pcSelect),
        .JrPC({JrPC[15:3],JrPC[1]}),
        .Jrn(Jrn),
        .Q(pcOld),
        .SR(rst_n_IBUF),
        .\bbstub_douta[0] (u_pc_1_n_23),
        .\bbstub_douta[10] (u_pc_1_n_27),
        .\bbstub_douta[12] (u_pc_1_n_29),
        .\bbstub_douta[1] (u_pc_1_n_24),
        .\bbstub_douta[26] (u_pc_1_n_16),
        .\bbstub_douta[26]_0 (u_pc_1_n_17),
        .\bbstub_douta[2] (u_pc_1_n_21),
        .\bbstub_douta[3] (u_pc_1_n_25),
        .\bbstub_douta[4] (u_pc_1_n_26),
        .\bbstub_douta[9] (u_pc_1_n_28),
        .clk_out1(clk_div),
        .douta({instruction[31:26],instruction[13:0]}),
        .\pc_reg[2]_0 (pcSelect00_in),
        .\pc_reg[3]_0 (u_ALU_1_n_7),
        .\pc_reg[3]_1 (u_ALU_1_n_8),
        .\pc_reg[3]_2 (u_reg_files_1_n_162),
        .\pc_reg[3]_3 (u_reg_files_1_n_161),
        .\result_OBUF[0]_inst_i_1 (u_reg_files_1_n_48),
        .\result_OBUF[0]_inst_i_1_0 (u_reg_files_1_n_89),
        .\result_OBUF[27]_inst_i_4 (u_pc_1_n_19),
        .\result_OBUF[27]_inst_i_5 (u_pc_1_n_18),
        .\result_OBUF[27]_inst_i_5_0 (u_pc_1_n_20),
        .\result_OBUF[31]_inst_i_15 (u_pc_1_n_22),
        .\result_OBUF[31]_inst_i_15_0 (u_pc_1_n_30),
        .\result_OBUF[31]_inst_i_15_1 (u_pc_1_n_31),
        .zero_in(zero_in));
  reg_files_1 u_reg_files_1
       (.ALUSrc_in(ALUSrc_in),
        .ALUresult0__187_carry__0_i_10_0({u_reg_files_1_n_12,u_reg_files_1_n_13,u_reg_files_1_n_14,u_reg_files_1_n_15}),
        .ALUresult0__187_carry__0_i_10_1({u_reg_files_1_n_208,u_reg_files_1_n_209,u_reg_files_1_n_210,u_reg_files_1_n_211}),
        .ALUresult0__187_carry__1_i_10_0({u_reg_files_1_n_20,u_reg_files_1_n_21,u_reg_files_1_n_22,u_reg_files_1_n_23}),
        .ALUresult0__187_carry__1_i_10_1({u_reg_files_1_n_216,u_reg_files_1_n_217,u_reg_files_1_n_218,u_reg_files_1_n_219}),
        .ALUresult0__187_carry_i_10_0({u_reg_files_1_n_4,u_reg_files_1_n_5,u_reg_files_1_n_6,u_reg_files_1_n_7}),
        .ALUresult0__187_carry_i_10_1({u_reg_files_1_n_200,u_reg_files_1_n_201,u_reg_files_1_n_202,u_reg_files_1_n_203}),
        .ALUresult0__203_carry__2_i_5_0(u_ALU_1_n_46),
        .ALUresult0_carry_i_10({u_reg_files_1_n_224,u_reg_files_1_n_225,u_reg_files_1_n_226,u_reg_files_1_n_227}),
        .ALUresult0_carry_i_10_0({u_reg_files_1_n_256,u_reg_files_1_n_257,u_reg_files_1_n_258,u_reg_files_1_n_259}),
        .ALUresult0_carry_i_10_1({u_reg_files_1_n_260,u_reg_files_1_n_261,u_reg_files_1_n_262,u_reg_files_1_n_263}),
        .ALUresult0_carry_i_10_2({u_reg_files_1_n_264,u_reg_files_1_n_265,u_reg_files_1_n_266,u_reg_files_1_n_267}),
        .ALUresult0_carry_i_10_3({u_reg_files_1_n_268,u_reg_files_1_n_269,u_reg_files_1_n_270,u_reg_files_1_n_271}),
        .ALUresult0_carry_i_10_4({u_reg_files_1_n_272,u_reg_files_1_n_273,u_reg_files_1_n_274,u_reg_files_1_n_275}),
        .ALUresult0_carry_i_10_5({u_reg_files_1_n_276,u_reg_files_1_n_277,u_reg_files_1_n_278,u_reg_files_1_n_279}),
        .ALUresult0_carry_i_10_6({u_reg_files_1_n_280,u_reg_files_1_n_281,u_reg_files_1_n_282,u_reg_files_1_n_283}),
        .ALUresult0_carry_i_9({u_reg_files_1_n_28,u_reg_files_1_n_29,u_reg_files_1_n_30,u_reg_files_1_n_31}),
        .ALUresult0_carry_i_9_0({u_reg_files_1_n_151,u_reg_files_1_n_152,u_reg_files_1_n_153,u_reg_files_1_n_154}),
        .CO(data6),
        .DI({u_reg_files_1_n_165,u_reg_files_1_n_166,u_reg_files_1_n_167,u_reg_files_1_n_168}),
        .JrPC(JrPC),
        .O(data0),
        .S({u_reg_files_1_n_228,u_reg_files_1_n_229,u_reg_files_1_n_230,u_reg_files_1_n_231}),
        .SR(rst_n_IBUF),
        .\bbstub_douta[11] ({u_reg_files_1_n_236,u_reg_files_1_n_237,u_reg_files_1_n_238,u_reg_files_1_n_239}),
        .\bbstub_douta[15] ({u_reg_files_1_n_240,u_reg_files_1_n_241,u_reg_files_1_n_242,u_reg_files_1_n_243}),
        .\bbstub_douta[30] (u_reg_files_1_n_164),
        .\bbstub_douta[31] (u_reg_files_1_n_161),
        .\bbstub_douta[5] (u_reg_files_1_n_162),
        .\bbstub_douta[7] ({u_reg_files_1_n_232,u_reg_files_1_n_233,u_reg_files_1_n_234,u_reg_files_1_n_235}),
        .clk_out1(clk_div),
        .douta(instruction),
        .\pc[15]_i_11 (u_ALU_1_n_44),
        .\pc[15]_i_11_0 (u_ALU_1_n_29),
        .\pc[15]_i_11_1 (u_ALU_1_n_30),
        .\pc[15]_i_16 (u_reg_files_1_n_80),
        .\pc[15]_i_16_0 (u_pc_1_n_28),
        .\pc[15]_i_16_1 (u_pc_1_n_27),
        .\pc[15]_i_18 (u_pc_1_n_21),
        .\pc[15]_i_18_0 (u_pc_1_n_25),
        .\pc[15]_i_18_1 (u_pc_1_n_26),
        .\pc[15]_i_19 (u_pc_1_n_23),
        .\pc[15]_i_19_0 (u_pc_1_n_24),
        .\pc[15]_i_33 (u_reg_files_1_n_59),
        .\pc[15]_i_44 (u_reg_files_1_n_70),
        .\pc[15]_i_50 (u_reg_files_1_n_87),
        .\pc[15]_i_51 (u_reg_files_1_n_90),
        .\pc[15]_i_58 (u_reg_files_1_n_81),
        .\pc[15]_i_60 (u_reg_files_1_n_79),
        .\pc[15]_i_61 (u_reg_files_1_n_84),
        .\pc[15]_i_65 (u_reg_files_1_n_75),
        .\pc[15]_i_67 (u_reg_files_1_n_76),
        .\pc[1]_i_3 (u_ALU_1_n_34),
        .\pc_reg[1] (u_ALU_1_n_42),
        .register_reg_r1_0_31_0_5_i_8({u_reg_files_1_n_157,u_reg_files_1_n_158,u_reg_files_1_n_159,u_reg_files_1_n_160}),
        .register_reg_r1_0_31_0_5_i_8_0({u_reg_files_1_n_244,u_reg_files_1_n_245,u_reg_files_1_n_246,u_reg_files_1_n_247}),
        .register_reg_r1_0_31_0_5_i_8_1({u_reg_files_1_n_248,u_reg_files_1_n_249,u_reg_files_1_n_250,u_reg_files_1_n_251}),
        .register_reg_r1_0_31_0_5_i_8_2({u_reg_files_1_n_252,u_reg_files_1_n_253,u_reg_files_1_n_254,u_reg_files_1_n_255}),
        .register_reg_r1_0_31_12_17_0({u_reg_files_1_n_8,u_reg_files_1_n_9,u_reg_files_1_n_10,u_reg_files_1_n_11}),
        .register_reg_r1_0_31_12_17_1({u_reg_files_1_n_177,u_reg_files_1_n_178,u_reg_files_1_n_179,u_reg_files_1_n_180}),
        .register_reg_r1_0_31_12_17_2({u_reg_files_1_n_204,u_reg_files_1_n_205,u_reg_files_1_n_206,u_reg_files_1_n_207}),
        .register_reg_r1_0_31_18_23_0({u_reg_files_1_n_16,u_reg_files_1_n_17,u_reg_files_1_n_18,u_reg_files_1_n_19}),
        .register_reg_r1_0_31_18_23_1({u_reg_files_1_n_181,u_reg_files_1_n_182,u_reg_files_1_n_183,u_reg_files_1_n_184}),
        .register_reg_r1_0_31_18_23_2({u_reg_files_1_n_185,u_reg_files_1_n_186,u_reg_files_1_n_187,u_reg_files_1_n_188}),
        .register_reg_r1_0_31_18_23_3({u_reg_files_1_n_212,u_reg_files_1_n_213,u_reg_files_1_n_214,u_reg_files_1_n_215}),
        .register_reg_r1_0_31_24_29_0({u_reg_files_1_n_189,u_reg_files_1_n_190,u_reg_files_1_n_191,u_reg_files_1_n_192}),
        .register_reg_r1_0_31_30_31_0({u_reg_files_1_n_24,u_reg_files_1_n_25,u_reg_files_1_n_26,u_reg_files_1_n_27}),
        .register_reg_r1_0_31_30_31_1(u_reg_files_1_n_156),
        .register_reg_r1_0_31_30_31_2({u_reg_files_1_n_193,u_reg_files_1_n_194,u_reg_files_1_n_195}),
        .register_reg_r1_0_31_30_31_3({u_reg_files_1_n_220,u_reg_files_1_n_221,u_reg_files_1_n_222,u_reg_files_1_n_223}),
        .register_reg_r1_0_31_6_11_0({u_reg_files_1_n_0,u_reg_files_1_n_1,u_reg_files_1_n_2,u_reg_files_1_n_3}),
        .register_reg_r1_0_31_6_11_1({u_reg_files_1_n_169,u_reg_files_1_n_170,u_reg_files_1_n_171,u_reg_files_1_n_172}),
        .register_reg_r1_0_31_6_11_2({u_reg_files_1_n_173,u_reg_files_1_n_174,u_reg_files_1_n_175,u_reg_files_1_n_176}),
        .register_reg_r1_0_31_6_11_3({u_reg_files_1_n_196,u_reg_files_1_n_197,u_reg_files_1_n_198,u_reg_files_1_n_199}),
        .\result[16] (u_ALU_1_n_28),
        .\result[16]_0 (u_pc_1_n_22),
        .\result[16]_1 (u_pc_1_n_20),
        .\result[18] (u_ALU_1_n_32),
        .\result[19] (u_ALU_1_n_31),
        .\result[20] (u_ALU_1_n_33),
        .\result[21] (u_ALU_1_n_36),
        .\result[24] (u_ALU_1_n_37),
        .\result[25] (u_ALU_1_n_35),
        .\result[27] (data1),
        .\result[29] (u_ALU_1_n_38),
        .\result[2] (u_ALU_1_n_45),
        .\result[30] (u_pc_1_n_31),
        .\result[30]_0 (u_ALU_1_n_39),
        .\result[31] (u_ALU_1_n_40),
        .\result[3] (u_ALU_1_n_43),
        .result_OBUF({result_OBUF[28],result_OBUF[23:22],result_OBUF[17],result_OBUF[15:4],result_OBUF[1:0]}),
        .\result_OBUF[0]_inst_i_1 (data7),
        .\result_OBUF[0]_inst_i_11_0 (u_reg_files_1_n_74),
        .\result_OBUF[0]_inst_i_14_0 (u_reg_files_1_n_73),
        .\result_OBUF[0]_inst_i_4_0 (u_ALU_1_n_41),
        .\result_OBUF[0]_inst_i_9_0 (ALUop),
        .\result_OBUF[10]_inst_i_4_0 (u_reg_files_1_n_129),
        .\result_OBUF[11]_inst_i_4_0 (u_reg_files_1_n_130),
        .\result_OBUF[12]_inst_i_4_0 (u_reg_files_1_n_131),
        .\result_OBUF[13]_inst_i_4_0 (u_reg_files_1_n_132),
        .\result_OBUF[14]_inst_i_4_0 (u_reg_files_1_n_133),
        .\result_OBUF[15]_inst_i_4_0 (u_reg_files_1_n_134),
        .\result_OBUF[19]_inst_i_1_0 (u_reg_files_1_n_32),
        .\result_OBUF[1]_inst_i_4_0 (u_reg_files_1_n_92),
        .\result_OBUF[1]_inst_i_6_0 (u_reg_files_1_n_67),
        .\result_OBUF[27]_inst_i_4_0 (u_reg_files_1_n_47),
        .\result_OBUF[27]_inst_i_4_1 (u_reg_files_1_n_56),
        .\result_OBUF[27]_inst_i_4_2 (u_reg_files_1_n_62),
        .\result_OBUF[27]_inst_i_4_3 (u_reg_files_1_n_64),
        .\result_OBUF[27]_inst_i_4_4 (u_reg_files_1_n_71),
        .\result_OBUF[27]_inst_i_5_0 (u_reg_files_1_n_163),
        .\result_OBUF[27]_inst_i_9_0 (u_reg_files_1_n_48),
        .\result_OBUF[27]_inst_i_9_1 (u_reg_files_1_n_89),
        .\result_OBUF[28]_inst_i_1 (u_reg_files_1_n_85),
        .\result_OBUF[28]_inst_i_10 (u_reg_files_1_n_147),
        .\result_OBUF[28]_inst_i_1_0 (u_pc_1_n_29),
        .\result_OBUF[28]_inst_i_7_0 (u_reg_files_1_n_77),
        .\result_OBUF[28]_inst_i_7_1 (u_reg_files_1_n_141),
        .\result_OBUF[28]_inst_i_7_2 (u_reg_files_1_n_143),
        .\result_OBUF[31]_inst_i_12_0 (u_reg_files_1_n_86),
        .\result_OBUF[31]_inst_i_12_1 (u_reg_files_1_n_88),
        .\result_OBUF[31]_inst_i_12_10 (u_reg_files_1_n_144),
        .\result_OBUF[31]_inst_i_12_11 (u_reg_files_1_n_145),
        .\result_OBUF[31]_inst_i_12_12 (u_reg_files_1_n_146),
        .\result_OBUF[31]_inst_i_12_13 (u_reg_files_1_n_148),
        .\result_OBUF[31]_inst_i_12_14 (u_reg_files_1_n_149),
        .\result_OBUF[31]_inst_i_12_15 (u_reg_files_1_n_150),
        .\result_OBUF[31]_inst_i_12_16 (u_reg_files_1_n_155),
        .\result_OBUF[31]_inst_i_12_2 (u_reg_files_1_n_91),
        .\result_OBUF[31]_inst_i_12_3 (u_reg_files_1_n_135),
        .\result_OBUF[31]_inst_i_12_4 (u_reg_files_1_n_136),
        .\result_OBUF[31]_inst_i_12_5 (u_reg_files_1_n_137),
        .\result_OBUF[31]_inst_i_12_6 (u_reg_files_1_n_138),
        .\result_OBUF[31]_inst_i_12_7 (u_reg_files_1_n_139),
        .\result_OBUF[31]_inst_i_12_8 (u_reg_files_1_n_140),
        .\result_OBUF[31]_inst_i_12_9 (u_reg_files_1_n_142),
        .\result_OBUF[31]_inst_i_13_0 (u_reg_files_1_n_49),
        .\result_OBUF[31]_inst_i_13_1 (u_reg_files_1_n_53),
        .\result_OBUF[31]_inst_i_13_10 (u_reg_files_1_n_69),
        .\result_OBUF[31]_inst_i_13_11 (u_reg_files_1_n_72),
        .\result_OBUF[31]_inst_i_13_12 (u_reg_files_1_n_78),
        .\result_OBUF[31]_inst_i_13_13 (u_reg_files_1_n_82),
        .\result_OBUF[31]_inst_i_13_14 (u_reg_files_1_n_83),
        .\result_OBUF[31]_inst_i_13_2 (u_reg_files_1_n_54),
        .\result_OBUF[31]_inst_i_13_3 (u_reg_files_1_n_55),
        .\result_OBUF[31]_inst_i_13_4 (u_reg_files_1_n_57),
        .\result_OBUF[31]_inst_i_13_5 (u_reg_files_1_n_58),
        .\result_OBUF[31]_inst_i_13_6 (u_reg_files_1_n_60),
        .\result_OBUF[31]_inst_i_13_7 (u_reg_files_1_n_63),
        .\result_OBUF[31]_inst_i_13_8 (u_reg_files_1_n_65),
        .\result_OBUF[31]_inst_i_13_9 (u_reg_files_1_n_68),
        .\result_OBUF[31]_inst_i_15_0 (u_reg_files_1_n_66),
        .\result_OBUF[31]_inst_i_1_0 (u_pc_1_n_30),
        .\result_OBUF[31]_inst_i_6 ({result_OBUF[31:29],result_OBUF[27:24],result_OBUF[21:18],result_OBUF[16],result_OBUF[3:2]}),
        .\result_OBUF[4]_inst_i_4_0 (u_reg_files_1_n_124),
        .\result_OBUF[5]_inst_i_4_0 (u_reg_files_1_n_61),
        .\result_OBUF[6]_inst_i_4_0 (u_reg_files_1_n_125),
        .\result_OBUF[7]_inst_i_4_0 (u_reg_files_1_n_126),
        .\result_OBUF[8]_inst_i_4_0 (u_reg_files_1_n_127),
        .\result_OBUF[9]_inst_i_4_0 (u_reg_files_1_n_128));
endmodule

module pc_1
   (\pc_reg[2]_0 ,
    Q,
    Jrn,
    \bbstub_douta[26] ,
    \bbstub_douta[26]_0 ,
    \result_OBUF[27]_inst_i_5 ,
    \result_OBUF[27]_inst_i_4 ,
    \result_OBUF[27]_inst_i_5_0 ,
    \bbstub_douta[2] ,
    \result_OBUF[31]_inst_i_15 ,
    \bbstub_douta[0] ,
    \bbstub_douta[1] ,
    \bbstub_douta[3] ,
    \bbstub_douta[4] ,
    \bbstub_douta[10] ,
    \bbstub_douta[9] ,
    \bbstub_douta[12] ,
    \result_OBUF[31]_inst_i_15_0 ,
    \result_OBUF[31]_inst_i_15_1 ,
    D,
    JrPC,
    \pc_reg[3]_0 ,
    \pc_reg[3]_1 ,
    douta,
    zero_in,
    \result_OBUF[0]_inst_i_1 ,
    \result_OBUF[0]_inst_i_1_0 ,
    ALUop,
    \pc_reg[3]_2 ,
    \pc_reg[3]_3 ,
    SR,
    clk_out1);
  output [0:0]\pc_reg[2]_0 ;
  output [13:0]Q;
  output Jrn;
  output \bbstub_douta[26] ;
  output \bbstub_douta[26]_0 ;
  output \result_OBUF[27]_inst_i_5 ;
  output \result_OBUF[27]_inst_i_4 ;
  output \result_OBUF[27]_inst_i_5_0 ;
  output \bbstub_douta[2] ;
  output \result_OBUF[31]_inst_i_15 ;
  output \bbstub_douta[0] ;
  output \bbstub_douta[1] ;
  output \bbstub_douta[3] ;
  output \bbstub_douta[4] ;
  output \bbstub_douta[10] ;
  output \bbstub_douta[9] ;
  output \bbstub_douta[12] ;
  output \result_OBUF[31]_inst_i_15_0 ;
  output \result_OBUF[31]_inst_i_15_1 ;
  input [0:0]D;
  input [13:0]JrPC;
  input \pc_reg[3]_0 ;
  input \pc_reg[3]_1 ;
  input [19:0]douta;
  input zero_in;
  input \result_OBUF[0]_inst_i_1 ;
  input \result_OBUF[0]_inst_i_1_0 ;
  input [2:0]ALUop;
  input \pc_reg[3]_2 ;
  input \pc_reg[3]_3 ;
  input [0:0]SR;
  input clk_out1;

  wire [2:0]ALUop;
  wire [0:0]D;
  wire [13:0]JrPC;
  wire Jrn;
  wire [13:0]Q;
  wire [0:0]SR;
  wire \bbstub_douta[0] ;
  wire \bbstub_douta[10] ;
  wire \bbstub_douta[12] ;
  wire \bbstub_douta[1] ;
  wire \bbstub_douta[26] ;
  wire \bbstub_douta[26]_0 ;
  wire \bbstub_douta[2] ;
  wire \bbstub_douta[3] ;
  wire \bbstub_douta[4] ;
  wire \bbstub_douta[9] ;
  wire clk_out1;
  wire [19:0]douta;
  wire [1:1]pcOld;
  wire [15:1]pcSelect;
  wire [15:2]pcSelect0;
  wire [15:1]pcSelect00_in;
  wire pcSelect0__28_carry__0_i_1_n_0;
  wire pcSelect0__28_carry__0_i_2_n_0;
  wire pcSelect0__28_carry__0_i_3_n_0;
  wire pcSelect0__28_carry__0_i_4_n_0;
  wire pcSelect0__28_carry__0_n_0;
  wire pcSelect0__28_carry__1_i_1_n_0;
  wire pcSelect0__28_carry__1_i_2_n_0;
  wire pcSelect0__28_carry__1_i_3_n_0;
  wire pcSelect0__28_carry__1_i_4_n_0;
  wire pcSelect0__28_carry__1_n_0;
  wire pcSelect0__28_carry__2_i_1_n_0;
  wire pcSelect0__28_carry__2_i_2_n_0;
  wire pcSelect0__28_carry_i_1_n_0;
  wire pcSelect0__28_carry_i_2_n_0;
  wire pcSelect0__28_carry_i_3_n_0;
  wire pcSelect0__28_carry_n_0;
  wire pcSelect0_carry__0_n_0;
  wire pcSelect0_carry__1_n_0;
  wire pcSelect0_carry_i_1_n_0;
  wire pcSelect0_carry_n_0;
  wire \pc[15]_i_5_n_0 ;
  wire \pc[1]_i_2_n_0 ;
  wire [0:0]\pc_reg[2]_0 ;
  wire \pc_reg[3]_0 ;
  wire \pc_reg[3]_1 ;
  wire \pc_reg[3]_2 ;
  wire \pc_reg[3]_3 ;
  wire \result_OBUF[0]_inst_i_1 ;
  wire \result_OBUF[0]_inst_i_1_0 ;
  wire \result_OBUF[25]_inst_i_10_n_0 ;
  wire \result_OBUF[27]_inst_i_4 ;
  wire \result_OBUF[27]_inst_i_5 ;
  wire \result_OBUF[27]_inst_i_5_0 ;
  wire \result_OBUF[31]_inst_i_15 ;
  wire \result_OBUF[31]_inst_i_15_0 ;
  wire \result_OBUF[31]_inst_i_15_1 ;
  wire zero_in;
  wire [2:0]NLW_pcSelect0__28_carry_CO_UNCONNECTED;
  wire [0:0]NLW_pcSelect0__28_carry_O_UNCONNECTED;
  wire [2:0]NLW_pcSelect0__28_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_pcSelect0__28_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_pcSelect0__28_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_pcSelect0__28_carry__2_O_UNCONNECTED;
  wire [2:0]NLW_pcSelect0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_pcSelect0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_pcSelect0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_pcSelect0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_pcSelect0_carry__2_O_UNCONNECTED;

  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 pcSelect0__28_carry
       (.CI(1'b0),
        .CO({pcSelect0__28_carry_n_0,NLW_pcSelect0__28_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({pcSelect00_in[5:3],\pc_reg[2]_0 }),
        .O({pcSelect0[5:3],NLW_pcSelect0__28_carry_O_UNCONNECTED[0]}),
        .S({pcSelect0__28_carry_i_1_n_0,pcSelect0__28_carry_i_2_n_0,pcSelect0__28_carry_i_3_n_0,pcSelect0[2]}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 pcSelect0__28_carry__0
       (.CI(pcSelect0__28_carry_n_0),
        .CO({pcSelect0__28_carry__0_n_0,NLW_pcSelect0__28_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(pcSelect00_in[9:6]),
        .O(pcSelect0[9:6]),
        .S({pcSelect0__28_carry__0_i_1_n_0,pcSelect0__28_carry__0_i_2_n_0,pcSelect0__28_carry__0_i_3_n_0,pcSelect0__28_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0__28_carry__0_i_1
       (.I0(pcSelect00_in[9]),
        .I1(douta[7]),
        .O(pcSelect0__28_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0__28_carry__0_i_2
       (.I0(pcSelect00_in[8]),
        .I1(douta[6]),
        .O(pcSelect0__28_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0__28_carry__0_i_3
       (.I0(pcSelect00_in[7]),
        .I1(douta[5]),
        .O(pcSelect0__28_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0__28_carry__0_i_4
       (.I0(pcSelect00_in[6]),
        .I1(douta[4]),
        .O(pcSelect0__28_carry__0_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 pcSelect0__28_carry__1
       (.CI(pcSelect0__28_carry__0_n_0),
        .CO({pcSelect0__28_carry__1_n_0,NLW_pcSelect0__28_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(pcSelect00_in[13:10]),
        .O(pcSelect0[13:10]),
        .S({pcSelect0__28_carry__1_i_1_n_0,pcSelect0__28_carry__1_i_2_n_0,pcSelect0__28_carry__1_i_3_n_0,pcSelect0__28_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0__28_carry__1_i_1
       (.I0(pcSelect00_in[13]),
        .I1(douta[11]),
        .O(pcSelect0__28_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0__28_carry__1_i_2
       (.I0(pcSelect00_in[12]),
        .I1(douta[10]),
        .O(pcSelect0__28_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0__28_carry__1_i_3
       (.I0(pcSelect00_in[11]),
        .I1(douta[9]),
        .O(pcSelect0__28_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0__28_carry__1_i_4
       (.I0(pcSelect00_in[10]),
        .I1(douta[8]),
        .O(pcSelect0__28_carry__1_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 pcSelect0__28_carry__2
       (.CI(pcSelect0__28_carry__1_n_0),
        .CO(NLW_pcSelect0__28_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,pcSelect00_in[14]}),
        .O({NLW_pcSelect0__28_carry__2_O_UNCONNECTED[3:2],pcSelect0[15:14]}),
        .S({1'b0,1'b0,pcSelect0__28_carry__2_i_1_n_0,pcSelect0__28_carry__2_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0__28_carry__2_i_1
       (.I0(pcSelect00_in[15]),
        .I1(douta[13]),
        .O(pcSelect0__28_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0__28_carry__2_i_2
       (.I0(pcSelect00_in[14]),
        .I1(douta[12]),
        .O(pcSelect0__28_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0__28_carry_i_1
       (.I0(pcSelect00_in[5]),
        .I1(douta[3]),
        .O(pcSelect0__28_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0__28_carry_i_2
       (.I0(pcSelect00_in[4]),
        .I1(douta[2]),
        .O(pcSelect0__28_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0__28_carry_i_3
       (.I0(pcSelect00_in[3]),
        .I1(douta[1]),
        .O(pcSelect0__28_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    pcSelect0__28_carry_i_4
       (.I0(\pc_reg[2]_0 ),
        .I1(douta[0]),
        .O(pcSelect0[2]));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 pcSelect0_carry
       (.CI(1'b0),
        .CO({pcSelect0_carry_n_0,NLW_pcSelect0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[0],1'b0}),
        .O({pcSelect00_in[4:3],\pc_reg[2]_0 ,pcSelect00_in[1]}),
        .S({Q[2:1],pcSelect0_carry_i_1_n_0,pcOld}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 pcSelect0_carry__0
       (.CI(pcSelect0_carry_n_0),
        .CO({pcSelect0_carry__0_n_0,NLW_pcSelect0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pcSelect00_in[8:5]),
        .S(Q[6:3]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 pcSelect0_carry__1
       (.CI(pcSelect0_carry__0_n_0),
        .CO({pcSelect0_carry__1_n_0,NLW_pcSelect0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pcSelect00_in[12:9]),
        .S(Q[10:7]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 pcSelect0_carry__2
       (.CI(pcSelect0_carry__1_n_0),
        .CO(NLW_pcSelect0_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_pcSelect0_carry__2_O_UNCONNECTED[3],pcSelect00_in[15:13]}),
        .S({1'b0,Q[13:11]}));
  LUT1 #(
    .INIT(2'h1)) 
    pcSelect0_carry_i_1
       (.I0(Q[0]),
        .O(pcSelect0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h00AA00AA00AAF0CC)) 
    \pc[10]_i_1 
       (.I0(pcSelect0[10]),
        .I1(pcSelect00_in[10]),
        .I2(JrPC[8]),
        .I3(Jrn),
        .I4(\pc_reg[3]_0 ),
        .I5(\pc_reg[3]_1 ),
        .O(pcSelect[10]));
  LUT6 #(
    .INIT(64'h00AA00AA00AAF0CC)) 
    \pc[11]_i_1 
       (.I0(pcSelect0[11]),
        .I1(pcSelect00_in[11]),
        .I2(JrPC[9]),
        .I3(Jrn),
        .I4(\pc_reg[3]_0 ),
        .I5(\pc_reg[3]_1 ),
        .O(pcSelect[11]));
  LUT6 #(
    .INIT(64'h00AA00AA00AAF0CC)) 
    \pc[12]_i_1 
       (.I0(pcSelect0[12]),
        .I1(pcSelect00_in[12]),
        .I2(JrPC[10]),
        .I3(Jrn),
        .I4(\pc_reg[3]_0 ),
        .I5(\pc_reg[3]_1 ),
        .O(pcSelect[12]));
  LUT6 #(
    .INIT(64'h00AA00AA00AAF0CC)) 
    \pc[13]_i_1 
       (.I0(pcSelect0[13]),
        .I1(pcSelect00_in[13]),
        .I2(JrPC[11]),
        .I3(Jrn),
        .I4(\pc_reg[3]_0 ),
        .I5(\pc_reg[3]_1 ),
        .O(pcSelect[13]));
  LUT6 #(
    .INIT(64'h00AA00AA00AAF0CC)) 
    \pc[14]_i_1 
       (.I0(pcSelect0[14]),
        .I1(pcSelect00_in[14]),
        .I2(JrPC[12]),
        .I3(Jrn),
        .I4(\pc_reg[3]_0 ),
        .I5(\pc_reg[3]_1 ),
        .O(pcSelect[14]));
  LUT6 #(
    .INIT(64'h00AA00AA00AAF0CC)) 
    \pc[15]_i_1 
       (.I0(pcSelect0[15]),
        .I1(pcSelect00_in[15]),
        .I2(JrPC[13]),
        .I3(Jrn),
        .I4(\pc_reg[3]_0 ),
        .I5(\pc_reg[3]_1 ),
        .O(pcSelect[15]));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \pc[15]_i_13 
       (.I0(douta[19]),
        .I1(douta[18]),
        .I2(douta[17]),
        .I3(douta[16]),
        .I4(douta[15]),
        .I5(douta[14]),
        .O(\bbstub_douta[26] ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \pc[15]_i_2 
       (.I0(douta[17]),
        .I1(douta[1]),
        .I2(douta[0]),
        .I3(\pc[15]_i_5_n_0 ),
        .I4(\pc_reg[3]_2 ),
        .I5(\pc_reg[3]_3 ),
        .O(Jrn));
  LUT2 #(
    .INIT(4'hB)) 
    \pc[15]_i_5 
       (.I0(douta[2]),
        .I1(douta[3]),
        .O(\pc[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \pc[15]_i_50 
       (.I0(\result_OBUF[31]_inst_i_15 ),
        .I1(douta[9]),
        .O(\bbstub_douta[9] ));
  LUT2 #(
    .INIT(4'h8)) 
    \pc[15]_i_51 
       (.I0(\result_OBUF[31]_inst_i_15 ),
        .I1(douta[10]),
        .O(\bbstub_douta[10] ));
  LUT2 #(
    .INIT(4'h8)) 
    \pc[15]_i_58 
       (.I0(\result_OBUF[31]_inst_i_15 ),
        .I1(douta[3]),
        .O(\bbstub_douta[3] ));
  LUT2 #(
    .INIT(4'h8)) 
    \pc[15]_i_60 
       (.I0(\result_OBUF[31]_inst_i_15 ),
        .I1(douta[2]),
        .O(\bbstub_douta[2] ));
  LUT2 #(
    .INIT(4'h8)) 
    \pc[15]_i_61 
       (.I0(\result_OBUF[31]_inst_i_15 ),
        .I1(douta[4]),
        .O(\bbstub_douta[4] ));
  LUT2 #(
    .INIT(4'h8)) 
    \pc[15]_i_65 
       (.I0(\result_OBUF[31]_inst_i_15 ),
        .I1(douta[0]),
        .O(\bbstub_douta[0] ));
  LUT2 #(
    .INIT(4'h8)) 
    \pc[15]_i_67 
       (.I0(\result_OBUF[31]_inst_i_15 ),
        .I1(douta[1]),
        .O(\bbstub_douta[1] ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \pc[15]_i_7 
       (.I0(douta[19]),
        .I1(douta[18]),
        .I2(douta[17]),
        .I3(douta[16]),
        .I4(douta[15]),
        .I5(douta[14]),
        .O(\bbstub_douta[26]_0 ));
  LUT6 #(
    .INIT(64'hCA0ACACA0ACACACA)) 
    \pc[1]_i_1 
       (.I0(pcSelect00_in[1]),
        .I1(JrPC[0]),
        .I2(Jrn),
        .I3(douta[14]),
        .I4(\pc[1]_i_2_n_0 ),
        .I5(zero_in),
        .O(pcSelect[1]));
  LUT5 #(
    .INIT(32'h00000004)) 
    \pc[1]_i_2 
       (.I0(douta[15]),
        .I1(douta[16]),
        .I2(douta[17]),
        .I3(douta[18]),
        .I4(douta[19]),
        .O(\pc[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00AA00AA00AAF0CC)) 
    \pc[3]_i_1 
       (.I0(pcSelect0[3]),
        .I1(pcSelect00_in[3]),
        .I2(JrPC[1]),
        .I3(Jrn),
        .I4(\pc_reg[3]_0 ),
        .I5(\pc_reg[3]_1 ),
        .O(pcSelect[3]));
  LUT6 #(
    .INIT(64'h00AA00AA00AAF0CC)) 
    \pc[4]_i_1 
       (.I0(pcSelect0[4]),
        .I1(pcSelect00_in[4]),
        .I2(JrPC[2]),
        .I3(Jrn),
        .I4(\pc_reg[3]_0 ),
        .I5(\pc_reg[3]_1 ),
        .O(pcSelect[4]));
  LUT6 #(
    .INIT(64'h00AA00AA00AAF0CC)) 
    \pc[5]_i_1 
       (.I0(pcSelect0[5]),
        .I1(pcSelect00_in[5]),
        .I2(JrPC[3]),
        .I3(Jrn),
        .I4(\pc_reg[3]_0 ),
        .I5(\pc_reg[3]_1 ),
        .O(pcSelect[5]));
  LUT6 #(
    .INIT(64'h00AA00AA00AAF0CC)) 
    \pc[6]_i_1 
       (.I0(pcSelect0[6]),
        .I1(pcSelect00_in[6]),
        .I2(JrPC[4]),
        .I3(Jrn),
        .I4(\pc_reg[3]_0 ),
        .I5(\pc_reg[3]_1 ),
        .O(pcSelect[6]));
  LUT6 #(
    .INIT(64'h00AA00AA00AAF0CC)) 
    \pc[7]_i_1 
       (.I0(pcSelect0[7]),
        .I1(pcSelect00_in[7]),
        .I2(JrPC[5]),
        .I3(Jrn),
        .I4(\pc_reg[3]_0 ),
        .I5(\pc_reg[3]_1 ),
        .O(pcSelect[7]));
  LUT6 #(
    .INIT(64'h00AA00AA00AAF0CC)) 
    \pc[8]_i_1 
       (.I0(pcSelect0[8]),
        .I1(pcSelect00_in[8]),
        .I2(JrPC[6]),
        .I3(Jrn),
        .I4(\pc_reg[3]_0 ),
        .I5(\pc_reg[3]_1 ),
        .O(pcSelect[8]));
  LUT6 #(
    .INIT(64'h00AA00AA00AAF0CC)) 
    \pc[9]_i_1 
       (.I0(pcSelect0[9]),
        .I1(pcSelect00_in[9]),
        .I2(JrPC[7]),
        .I3(Jrn),
        .I4(\pc_reg[3]_0 ),
        .I5(\pc_reg[3]_1 ),
        .O(pcSelect[9]));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[10] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(pcSelect[10]),
        .Q(Q[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[11] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(pcSelect[11]),
        .Q(Q[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[12] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(pcSelect[12]),
        .Q(Q[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[13] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(pcSelect[13]),
        .Q(Q[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[14] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(pcSelect[14]),
        .Q(Q[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[15] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(pcSelect[15]),
        .Q(Q[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(pcSelect[1]),
        .Q(pcOld),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(pcSelect[3]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(pcSelect[4]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(pcSelect[5]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(pcSelect[6]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(pcSelect[7]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[8] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(pcSelect[8]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[9] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(pcSelect[9]),
        .Q(Q[7]),
        .R(SR));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \result_OBUF[25]_inst_i_10 
       (.I0(douta[19]),
        .I1(douta[18]),
        .I2(douta[14]),
        .I3(douta[15]),
        .I4(douta[17]),
        .I5(douta[16]),
        .O(\result_OBUF[25]_inst_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \result_OBUF[25]_inst_i_3 
       (.I0(\result_OBUF[25]_inst_i_10_n_0 ),
        .I1(ALUop[2]),
        .I2(ALUop[0]),
        .I3(ALUop[1]),
        .O(\result_OBUF[31]_inst_i_15 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_OBUF[25]_inst_i_6 
       (.I0(\result_OBUF[0]_inst_i_1_0 ),
        .I1(\result_OBUF[0]_inst_i_1 ),
        .O(\result_OBUF[27]_inst_i_4 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_OBUF[25]_inst_i_7 
       (.I0(\result_OBUF[0]_inst_i_1 ),
        .I1(\result_OBUF[0]_inst_i_1_0 ),
        .O(\result_OBUF[27]_inst_i_5 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \result_OBUF[28]_inst_i_10 
       (.I0(ALUop[1]),
        .I1(ALUop[0]),
        .I2(ALUop[2]),
        .I3(\result_OBUF[25]_inst_i_10_n_0 ),
        .I4(douta[12]),
        .O(\bbstub_douta[12] ));
  LUT2 #(
    .INIT(4'h4)) 
    \result_OBUF[31]_inst_i_5 
       (.I0(ALUop[2]),
        .I1(ALUop[1]),
        .O(\result_OBUF[31]_inst_i_15_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[31]_inst_i_6 
       (.I0(\result_OBUF[0]_inst_i_1 ),
        .I1(\result_OBUF[0]_inst_i_1_0 ),
        .O(\result_OBUF[27]_inst_i_5_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \result_OBUF[31]_inst_i_8 
       (.I0(ALUop[2]),
        .I1(ALUop[0]),
        .I2(ALUop[1]),
        .O(\result_OBUF[31]_inst_i_15_0 ));
endmodule

module reg_files_1
   (register_reg_r1_0_31_6_11_0,
    ALUresult0__187_carry_i_10_0,
    register_reg_r1_0_31_12_17_0,
    ALUresult0__187_carry__0_i_10_0,
    register_reg_r1_0_31_18_23_0,
    ALUresult0__187_carry__1_i_10_0,
    register_reg_r1_0_31_30_31_0,
    ALUresult0_carry_i_9,
    \result_OBUF[19]_inst_i_1_0 ,
    \result_OBUF[31]_inst_i_6 ,
    \result_OBUF[27]_inst_i_4_0 ,
    \result_OBUF[27]_inst_i_9_0 ,
    \result_OBUF[31]_inst_i_13_0 ,
    \result_OBUF[0]_inst_i_9_0 ,
    \result_OBUF[31]_inst_i_13_1 ,
    \result_OBUF[31]_inst_i_13_2 ,
    \result_OBUF[31]_inst_i_13_3 ,
    \result_OBUF[27]_inst_i_4_1 ,
    \result_OBUF[31]_inst_i_13_4 ,
    \result_OBUF[31]_inst_i_13_5 ,
    \pc[15]_i_33 ,
    \result_OBUF[31]_inst_i_13_6 ,
    \result_OBUF[5]_inst_i_4_0 ,
    \result_OBUF[27]_inst_i_4_2 ,
    \result_OBUF[31]_inst_i_13_7 ,
    \result_OBUF[27]_inst_i_4_3 ,
    \result_OBUF[31]_inst_i_13_8 ,
    \result_OBUF[31]_inst_i_15_0 ,
    \result_OBUF[1]_inst_i_6_0 ,
    \result_OBUF[31]_inst_i_13_9 ,
    \result_OBUF[31]_inst_i_13_10 ,
    \pc[15]_i_44 ,
    \result_OBUF[27]_inst_i_4_4 ,
    \result_OBUF[31]_inst_i_13_11 ,
    \result_OBUF[0]_inst_i_14_0 ,
    \result_OBUF[0]_inst_i_11_0 ,
    \pc[15]_i_65 ,
    \pc[15]_i_67 ,
    \result_OBUF[28]_inst_i_7_0 ,
    \result_OBUF[31]_inst_i_13_12 ,
    \pc[15]_i_60 ,
    \pc[15]_i_16 ,
    \pc[15]_i_58 ,
    \result_OBUF[31]_inst_i_13_13 ,
    \result_OBUF[31]_inst_i_13_14 ,
    \pc[15]_i_61 ,
    \result_OBUF[28]_inst_i_1 ,
    \result_OBUF[31]_inst_i_12_0 ,
    \pc[15]_i_50 ,
    \result_OBUF[31]_inst_i_12_1 ,
    \result_OBUF[27]_inst_i_9_1 ,
    \pc[15]_i_51 ,
    \result_OBUF[31]_inst_i_12_2 ,
    \result_OBUF[1]_inst_i_4_0 ,
    JrPC,
    \result_OBUF[4]_inst_i_4_0 ,
    \result_OBUF[6]_inst_i_4_0 ,
    \result_OBUF[7]_inst_i_4_0 ,
    \result_OBUF[8]_inst_i_4_0 ,
    \result_OBUF[9]_inst_i_4_0 ,
    \result_OBUF[10]_inst_i_4_0 ,
    \result_OBUF[11]_inst_i_4_0 ,
    \result_OBUF[12]_inst_i_4_0 ,
    \result_OBUF[13]_inst_i_4_0 ,
    \result_OBUF[14]_inst_i_4_0 ,
    \result_OBUF[15]_inst_i_4_0 ,
    \result_OBUF[31]_inst_i_12_3 ,
    \result_OBUF[31]_inst_i_12_4 ,
    \result_OBUF[31]_inst_i_12_5 ,
    \result_OBUF[31]_inst_i_12_6 ,
    \result_OBUF[31]_inst_i_12_7 ,
    \result_OBUF[31]_inst_i_12_8 ,
    \result_OBUF[28]_inst_i_7_1 ,
    \result_OBUF[31]_inst_i_12_9 ,
    \result_OBUF[28]_inst_i_7_2 ,
    \result_OBUF[31]_inst_i_12_10 ,
    \result_OBUF[31]_inst_i_12_11 ,
    \result_OBUF[31]_inst_i_12_12 ,
    \result_OBUF[28]_inst_i_10 ,
    \result_OBUF[31]_inst_i_12_13 ,
    \result_OBUF[31]_inst_i_12_14 ,
    \result_OBUF[31]_inst_i_12_15 ,
    ALUresult0_carry_i_9_0,
    \result_OBUF[31]_inst_i_12_16 ,
    register_reg_r1_0_31_30_31_1,
    register_reg_r1_0_31_0_5_i_8,
    \bbstub_douta[31] ,
    \bbstub_douta[5] ,
    \result_OBUF[27]_inst_i_5_0 ,
    \bbstub_douta[30] ,
    DI,
    register_reg_r1_0_31_6_11_1,
    register_reg_r1_0_31_6_11_2,
    register_reg_r1_0_31_12_17_1,
    register_reg_r1_0_31_18_23_1,
    register_reg_r1_0_31_18_23_2,
    register_reg_r1_0_31_24_29_0,
    register_reg_r1_0_31_30_31_2,
    register_reg_r1_0_31_6_11_3,
    ALUresult0__187_carry_i_10_1,
    register_reg_r1_0_31_12_17_2,
    ALUresult0__187_carry__0_i_10_1,
    register_reg_r1_0_31_18_23_3,
    ALUresult0__187_carry__1_i_10_1,
    register_reg_r1_0_31_30_31_3,
    ALUresult0_carry_i_10,
    S,
    \bbstub_douta[7] ,
    \bbstub_douta[11] ,
    \bbstub_douta[15] ,
    register_reg_r1_0_31_0_5_i_8_0,
    register_reg_r1_0_31_0_5_i_8_1,
    register_reg_r1_0_31_0_5_i_8_2,
    ALUresult0_carry_i_10_0,
    ALUresult0_carry_i_10_1,
    ALUresult0_carry_i_10_2,
    ALUresult0_carry_i_10_3,
    ALUresult0_carry_i_10_4,
    ALUresult0_carry_i_10_5,
    ALUresult0_carry_i_10_6,
    \pc_reg[1] ,
    result_OBUF,
    \pc[15]_i_11 ,
    \pc[15]_i_11_0 ,
    \result_OBUF[0]_inst_i_4_0 ,
    \result_OBUF[0]_inst_i_1 ,
    CO,
    \pc[15]_i_11_1 ,
    \result_OBUF[31]_inst_i_1_0 ,
    \result[3] ,
    \result[2] ,
    \result[16] ,
    \result[16]_0 ,
    douta,
    \result[16]_1 ,
    \result[30] ,
    \pc[15]_i_19 ,
    \pc[15]_i_19_0 ,
    \result[18] ,
    \pc[15]_i_18 ,
    \pc[1]_i_3 ,
    \result[19] ,
    \result[20] ,
    \pc[15]_i_18_0 ,
    \result[21] ,
    \pc[15]_i_18_1 ,
    \result[30]_0 ,
    \result[31] ,
    \result[29] ,
    \result[25] ,
    \pc[15]_i_16_0 ,
    \result[24] ,
    O,
    \result[27] ,
    \pc[15]_i_16_1 ,
    ALUresult0__203_carry__2_i_5_0,
    \result_OBUF[28]_inst_i_1_0 ,
    ALUSrc_in,
    SR,
    clk_out1);
  output [3:0]register_reg_r1_0_31_6_11_0;
  output [3:0]ALUresult0__187_carry_i_10_0;
  output [3:0]register_reg_r1_0_31_12_17_0;
  output [3:0]ALUresult0__187_carry__0_i_10_0;
  output [3:0]register_reg_r1_0_31_18_23_0;
  output [3:0]ALUresult0__187_carry__1_i_10_0;
  output [3:0]register_reg_r1_0_31_30_31_0;
  output [3:0]ALUresult0_carry_i_9;
  output \result_OBUF[19]_inst_i_1_0 ;
  output [13:0]\result_OBUF[31]_inst_i_6 ;
  output \result_OBUF[27]_inst_i_4_0 ;
  output \result_OBUF[27]_inst_i_9_0 ;
  output \result_OBUF[31]_inst_i_13_0 ;
  output [2:0]\result_OBUF[0]_inst_i_9_0 ;
  output \result_OBUF[31]_inst_i_13_1 ;
  output \result_OBUF[31]_inst_i_13_2 ;
  output \result_OBUF[31]_inst_i_13_3 ;
  output \result_OBUF[27]_inst_i_4_1 ;
  output \result_OBUF[31]_inst_i_13_4 ;
  output \result_OBUF[31]_inst_i_13_5 ;
  output \pc[15]_i_33 ;
  output \result_OBUF[31]_inst_i_13_6 ;
  output \result_OBUF[5]_inst_i_4_0 ;
  output \result_OBUF[27]_inst_i_4_2 ;
  output \result_OBUF[31]_inst_i_13_7 ;
  output \result_OBUF[27]_inst_i_4_3 ;
  output \result_OBUF[31]_inst_i_13_8 ;
  output \result_OBUF[31]_inst_i_15_0 ;
  output \result_OBUF[1]_inst_i_6_0 ;
  output \result_OBUF[31]_inst_i_13_9 ;
  output \result_OBUF[31]_inst_i_13_10 ;
  output \pc[15]_i_44 ;
  output \result_OBUF[27]_inst_i_4_4 ;
  output \result_OBUF[31]_inst_i_13_11 ;
  output \result_OBUF[0]_inst_i_14_0 ;
  output \result_OBUF[0]_inst_i_11_0 ;
  output \pc[15]_i_65 ;
  output \pc[15]_i_67 ;
  output \result_OBUF[28]_inst_i_7_0 ;
  output \result_OBUF[31]_inst_i_13_12 ;
  output \pc[15]_i_60 ;
  output \pc[15]_i_16 ;
  output \pc[15]_i_58 ;
  output \result_OBUF[31]_inst_i_13_13 ;
  output \result_OBUF[31]_inst_i_13_14 ;
  output \pc[15]_i_61 ;
  output \result_OBUF[28]_inst_i_1 ;
  output \result_OBUF[31]_inst_i_12_0 ;
  output \pc[15]_i_50 ;
  output \result_OBUF[31]_inst_i_12_1 ;
  output \result_OBUF[27]_inst_i_9_1 ;
  output \pc[15]_i_51 ;
  output \result_OBUF[31]_inst_i_12_2 ;
  output \result_OBUF[1]_inst_i_4_0 ;
  output [30:0]JrPC;
  output \result_OBUF[4]_inst_i_4_0 ;
  output \result_OBUF[6]_inst_i_4_0 ;
  output \result_OBUF[7]_inst_i_4_0 ;
  output \result_OBUF[8]_inst_i_4_0 ;
  output \result_OBUF[9]_inst_i_4_0 ;
  output \result_OBUF[10]_inst_i_4_0 ;
  output \result_OBUF[11]_inst_i_4_0 ;
  output \result_OBUF[12]_inst_i_4_0 ;
  output \result_OBUF[13]_inst_i_4_0 ;
  output \result_OBUF[14]_inst_i_4_0 ;
  output \result_OBUF[15]_inst_i_4_0 ;
  output \result_OBUF[31]_inst_i_12_3 ;
  output \result_OBUF[31]_inst_i_12_4 ;
  output \result_OBUF[31]_inst_i_12_5 ;
  output \result_OBUF[31]_inst_i_12_6 ;
  output \result_OBUF[31]_inst_i_12_7 ;
  output \result_OBUF[31]_inst_i_12_8 ;
  output \result_OBUF[28]_inst_i_7_1 ;
  output \result_OBUF[31]_inst_i_12_9 ;
  output \result_OBUF[28]_inst_i_7_2 ;
  output \result_OBUF[31]_inst_i_12_10 ;
  output \result_OBUF[31]_inst_i_12_11 ;
  output \result_OBUF[31]_inst_i_12_12 ;
  output \result_OBUF[28]_inst_i_10 ;
  output \result_OBUF[31]_inst_i_12_13 ;
  output \result_OBUF[31]_inst_i_12_14 ;
  output \result_OBUF[31]_inst_i_12_15 ;
  output [3:0]ALUresult0_carry_i_9_0;
  output \result_OBUF[31]_inst_i_12_16 ;
  output register_reg_r1_0_31_30_31_1;
  output [3:0]register_reg_r1_0_31_0_5_i_8;
  output \bbstub_douta[31] ;
  output \bbstub_douta[5] ;
  output \result_OBUF[27]_inst_i_5_0 ;
  output \bbstub_douta[30] ;
  output [3:0]DI;
  output [3:0]register_reg_r1_0_31_6_11_1;
  output [3:0]register_reg_r1_0_31_6_11_2;
  output [3:0]register_reg_r1_0_31_12_17_1;
  output [3:0]register_reg_r1_0_31_18_23_1;
  output [3:0]register_reg_r1_0_31_18_23_2;
  output [3:0]register_reg_r1_0_31_24_29_0;
  output [2:0]register_reg_r1_0_31_30_31_2;
  output [3:0]register_reg_r1_0_31_6_11_3;
  output [3:0]ALUresult0__187_carry_i_10_1;
  output [3:0]register_reg_r1_0_31_12_17_2;
  output [3:0]ALUresult0__187_carry__0_i_10_1;
  output [3:0]register_reg_r1_0_31_18_23_3;
  output [3:0]ALUresult0__187_carry__1_i_10_1;
  output [3:0]register_reg_r1_0_31_30_31_3;
  output [3:0]ALUresult0_carry_i_10;
  output [3:0]S;
  output [3:0]\bbstub_douta[7] ;
  output [3:0]\bbstub_douta[11] ;
  output [3:0]\bbstub_douta[15] ;
  output [3:0]register_reg_r1_0_31_0_5_i_8_0;
  output [3:0]register_reg_r1_0_31_0_5_i_8_1;
  output [3:0]register_reg_r1_0_31_0_5_i_8_2;
  output [3:0]ALUresult0_carry_i_10_0;
  output [3:0]ALUresult0_carry_i_10_1;
  output [3:0]ALUresult0_carry_i_10_2;
  output [3:0]ALUresult0_carry_i_10_3;
  output [3:0]ALUresult0_carry_i_10_4;
  output [3:0]ALUresult0_carry_i_10_5;
  output [3:0]ALUresult0_carry_i_10_6;
  input \pc_reg[1] ;
  input [17:0]result_OBUF;
  input \pc[15]_i_11 ;
  input \pc[15]_i_11_0 ;
  input \result_OBUF[0]_inst_i_4_0 ;
  input [0:0]\result_OBUF[0]_inst_i_1 ;
  input [0:0]CO;
  input \pc[15]_i_11_1 ;
  input \result_OBUF[31]_inst_i_1_0 ;
  input \result[3] ;
  input \result[2] ;
  input \result[16] ;
  input \result[16]_0 ;
  input [31:0]douta;
  input \result[16]_1 ;
  input \result[30] ;
  input \pc[15]_i_19 ;
  input \pc[15]_i_19_0 ;
  input \result[18] ;
  input \pc[15]_i_18 ;
  input \pc[1]_i_3 ;
  input \result[19] ;
  input \result[20] ;
  input \pc[15]_i_18_0 ;
  input \result[21] ;
  input \pc[15]_i_18_1 ;
  input \result[30]_0 ;
  input \result[31] ;
  input \result[29] ;
  input \result[25] ;
  input \pc[15]_i_16_0 ;
  input \result[24] ;
  input [1:0]O;
  input [1:0]\result[27] ;
  input \pc[15]_i_16_1 ;
  input ALUresult0__203_carry__2_i_5_0;
  input \result_OBUF[28]_inst_i_1_0 ;
  input ALUSrc_in;
  input [0:0]SR;
  input clk_out1;

  wire [31:0]A0;
  wire ALUSrc_in;
  wire [3:3]ALUop;
  wire [3:0]ALUresult0__187_carry__0_i_10_0;
  wire [3:0]ALUresult0__187_carry__0_i_10_1;
  wire [3:0]ALUresult0__187_carry__1_i_10_0;
  wire [3:0]ALUresult0__187_carry__1_i_10_1;
  wire [3:0]ALUresult0__187_carry_i_10_0;
  wire [3:0]ALUresult0__187_carry_i_10_1;
  wire ALUresult0__203_carry__2_i_5_0;
  wire [3:0]ALUresult0_carry_i_10;
  wire [3:0]ALUresult0_carry_i_10_0;
  wire [3:0]ALUresult0_carry_i_10_1;
  wire [3:0]ALUresult0_carry_i_10_2;
  wire [3:0]ALUresult0_carry_i_10_3;
  wire [3:0]ALUresult0_carry_i_10_4;
  wire [3:0]ALUresult0_carry_i_10_5;
  wire [3:0]ALUresult0_carry_i_10_6;
  wire [3:0]ALUresult0_carry_i_9;
  wire [3:0]ALUresult0_carry_i_9_0;
  wire [30:0]B;
  wire [31:0]B0;
  wire [31:31]B__0;
  wire [0:0]CO;
  wire [3:0]DI;
  wire [30:0]JrPC;
  wire [1:0]O;
  wire RegDst_in;
  wire [3:0]S;
  wire [0:0]SR;
  wire Sftmd;
  wire [3:0]\bbstub_douta[11] ;
  wire [3:0]\bbstub_douta[15] ;
  wire \bbstub_douta[30] ;
  wire \bbstub_douta[31] ;
  wire \bbstub_douta[5] ;
  wire [3:0]\bbstub_douta[7] ;
  wire clk_out1;
  wire [31:0]douta;
  wire \pc[15]_i_11 ;
  wire \pc[15]_i_11_0 ;
  wire \pc[15]_i_11_1 ;
  wire \pc[15]_i_14_n_0 ;
  wire \pc[15]_i_15_n_0 ;
  wire \pc[15]_i_16 ;
  wire \pc[15]_i_16_0 ;
  wire \pc[15]_i_16_1 ;
  wire \pc[15]_i_18 ;
  wire \pc[15]_i_18_0 ;
  wire \pc[15]_i_18_1 ;
  wire \pc[15]_i_19 ;
  wire \pc[15]_i_19_0 ;
  wire \pc[15]_i_23_n_0 ;
  wire \pc[15]_i_24_n_0 ;
  wire \pc[15]_i_33 ;
  wire \pc[15]_i_42_n_0 ;
  wire \pc[15]_i_43_n_0 ;
  wire \pc[15]_i_44 ;
  wire \pc[15]_i_46_n_0 ;
  wire \pc[15]_i_47_n_0 ;
  wire \pc[15]_i_48_n_0 ;
  wire \pc[15]_i_49_n_0 ;
  wire \pc[15]_i_50 ;
  wire \pc[15]_i_51 ;
  wire \pc[15]_i_52_n_0 ;
  wire \pc[15]_i_53_n_0 ;
  wire \pc[15]_i_54_n_0 ;
  wire \pc[15]_i_55_n_0 ;
  wire \pc[15]_i_56_n_0 ;
  wire \pc[15]_i_57_n_0 ;
  wire \pc[15]_i_58 ;
  wire \pc[15]_i_59_n_0 ;
  wire \pc[15]_i_60 ;
  wire \pc[15]_i_61 ;
  wire \pc[15]_i_62_n_0 ;
  wire \pc[15]_i_63_n_0 ;
  wire \pc[15]_i_64_n_0 ;
  wire \pc[15]_i_65 ;
  wire \pc[15]_i_66_n_0 ;
  wire \pc[15]_i_67 ;
  wire \pc[15]_i_68_n_0 ;
  wire \pc[15]_i_69_n_0 ;
  wire \pc[15]_i_70_n_0 ;
  wire \pc[15]_i_71_n_0 ;
  wire \pc[1]_i_3 ;
  wire \pc_reg[1] ;
  wire [4:0]rW_select;
  wire register_reg_r1_0_31_0_5_i_1_n_0;
  wire register_reg_r1_0_31_0_5_i_7_n_0;
  wire [3:0]register_reg_r1_0_31_0_5_i_8;
  wire [3:0]register_reg_r1_0_31_0_5_i_8_0;
  wire [3:0]register_reg_r1_0_31_0_5_i_8_1;
  wire [3:0]register_reg_r1_0_31_0_5_i_8_2;
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
  wire register_reg_r1_0_31_30_31_1;
  wire [2:0]register_reg_r1_0_31_30_31_2;
  wire [3:0]register_reg_r1_0_31_30_31_3;
  wire [3:0]register_reg_r1_0_31_6_11_0;
  wire [3:0]register_reg_r1_0_31_6_11_1;
  wire [3:0]register_reg_r1_0_31_6_11_2;
  wire [3:0]register_reg_r1_0_31_6_11_3;
  wire \result[16] ;
  wire \result[16]_0 ;
  wire \result[16]_1 ;
  wire \result[18] ;
  wire \result[19] ;
  wire \result[20] ;
  wire \result[21] ;
  wire \result[24] ;
  wire \result[25] ;
  wire [1:0]\result[27] ;
  wire \result[29] ;
  wire \result[2] ;
  wire \result[30] ;
  wire \result[30]_0 ;
  wire \result[31] ;
  wire \result[3] ;
  wire [17:0]result_OBUF;
  wire [0:0]\result_OBUF[0]_inst_i_1 ;
  wire \result_OBUF[0]_inst_i_11_0 ;
  wire \result_OBUF[0]_inst_i_11_n_0 ;
  wire \result_OBUF[0]_inst_i_13_n_0 ;
  wire \result_OBUF[0]_inst_i_14_0 ;
  wire \result_OBUF[0]_inst_i_14_n_0 ;
  wire \result_OBUF[0]_inst_i_15_n_0 ;
  wire \result_OBUF[0]_inst_i_16_n_0 ;
  wire \result_OBUF[0]_inst_i_17_n_0 ;
  wire \result_OBUF[0]_inst_i_18_n_0 ;
  wire \result_OBUF[0]_inst_i_4_0 ;
  wire \result_OBUF[0]_inst_i_8_n_0 ;
  wire [2:0]\result_OBUF[0]_inst_i_9_0 ;
  wire \result_OBUF[0]_inst_i_9_n_0 ;
  wire \result_OBUF[10]_inst_i_10_n_0 ;
  wire \result_OBUF[10]_inst_i_4_0 ;
  wire \result_OBUF[10]_inst_i_4_n_0 ;
  wire \result_OBUF[10]_inst_i_5_n_0 ;
  wire \result_OBUF[10]_inst_i_6_n_0 ;
  wire \result_OBUF[10]_inst_i_7_n_0 ;
  wire \result_OBUF[10]_inst_i_8_n_0 ;
  wire \result_OBUF[11]_inst_i_10_n_0 ;
  wire \result_OBUF[11]_inst_i_11_n_0 ;
  wire \result_OBUF[11]_inst_i_4_0 ;
  wire \result_OBUF[11]_inst_i_4_n_0 ;
  wire \result_OBUF[11]_inst_i_5_n_0 ;
  wire \result_OBUF[11]_inst_i_6_n_0 ;
  wire \result_OBUF[11]_inst_i_7_n_0 ;
  wire \result_OBUF[11]_inst_i_8_n_0 ;
  wire \result_OBUF[12]_inst_i_10_n_0 ;
  wire \result_OBUF[12]_inst_i_11_n_0 ;
  wire \result_OBUF[12]_inst_i_4_0 ;
  wire \result_OBUF[12]_inst_i_4_n_0 ;
  wire \result_OBUF[12]_inst_i_5_n_0 ;
  wire \result_OBUF[12]_inst_i_6_n_0 ;
  wire \result_OBUF[12]_inst_i_7_n_0 ;
  wire \result_OBUF[12]_inst_i_8_n_0 ;
  wire \result_OBUF[12]_inst_i_9_n_0 ;
  wire \result_OBUF[13]_inst_i_10_n_0 ;
  wire \result_OBUF[13]_inst_i_11_n_0 ;
  wire \result_OBUF[13]_inst_i_4_0 ;
  wire \result_OBUF[13]_inst_i_4_n_0 ;
  wire \result_OBUF[13]_inst_i_5_n_0 ;
  wire \result_OBUF[13]_inst_i_6_n_0 ;
  wire \result_OBUF[13]_inst_i_7_n_0 ;
  wire \result_OBUF[13]_inst_i_8_n_0 ;
  wire \result_OBUF[13]_inst_i_9_n_0 ;
  wire \result_OBUF[14]_inst_i_10_n_0 ;
  wire \result_OBUF[14]_inst_i_11_n_0 ;
  wire \result_OBUF[14]_inst_i_4_0 ;
  wire \result_OBUF[14]_inst_i_4_n_0 ;
  wire \result_OBUF[14]_inst_i_5_n_0 ;
  wire \result_OBUF[14]_inst_i_6_n_0 ;
  wire \result_OBUF[14]_inst_i_7_n_0 ;
  wire \result_OBUF[14]_inst_i_8_n_0 ;
  wire \result_OBUF[14]_inst_i_9_n_0 ;
  wire \result_OBUF[15]_inst_i_10_n_0 ;
  wire \result_OBUF[15]_inst_i_11_n_0 ;
  wire \result_OBUF[15]_inst_i_4_0 ;
  wire \result_OBUF[15]_inst_i_4_n_0 ;
  wire \result_OBUF[15]_inst_i_5_n_0 ;
  wire \result_OBUF[15]_inst_i_6_n_0 ;
  wire \result_OBUF[15]_inst_i_7_n_0 ;
  wire \result_OBUF[15]_inst_i_8_n_0 ;
  wire \result_OBUF[15]_inst_i_9_n_0 ;
  wire \result_OBUF[16]_inst_i_10_n_0 ;
  wire \result_OBUF[16]_inst_i_11_n_0 ;
  wire \result_OBUF[16]_inst_i_12_n_0 ;
  wire \result_OBUF[16]_inst_i_13_n_0 ;
  wire \result_OBUF[16]_inst_i_3_n_0 ;
  wire \result_OBUF[16]_inst_i_4_n_0 ;
  wire \result_OBUF[16]_inst_i_6_n_0 ;
  wire \result_OBUF[16]_inst_i_7_n_0 ;
  wire \result_OBUF[16]_inst_i_8_n_0 ;
  wire \result_OBUF[16]_inst_i_9_n_0 ;
  wire \result_OBUF[17]_inst_i_10_n_0 ;
  wire \result_OBUF[17]_inst_i_11_n_0 ;
  wire \result_OBUF[17]_inst_i_12_n_0 ;
  wire \result_OBUF[17]_inst_i_6_n_0 ;
  wire \result_OBUF[17]_inst_i_7_n_0 ;
  wire \result_OBUF[17]_inst_i_8_n_0 ;
  wire \result_OBUF[17]_inst_i_9_n_0 ;
  wire \result_OBUF[18]_inst_i_10_n_0 ;
  wire \result_OBUF[18]_inst_i_11_n_0 ;
  wire \result_OBUF[18]_inst_i_12_n_0 ;
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
  wire \result_OBUF[19]_inst_i_1_0 ;
  wire \result_OBUF[19]_inst_i_3_n_0 ;
  wire \result_OBUF[19]_inst_i_4_n_0 ;
  wire \result_OBUF[19]_inst_i_6_n_0 ;
  wire \result_OBUF[19]_inst_i_7_n_0 ;
  wire \result_OBUF[19]_inst_i_8_n_0 ;
  wire \result_OBUF[19]_inst_i_9_n_0 ;
  wire \result_OBUF[1]_inst_i_4_0 ;
  wire \result_OBUF[1]_inst_i_4_n_0 ;
  wire \result_OBUF[1]_inst_i_5_n_0 ;
  wire \result_OBUF[1]_inst_i_6_0 ;
  wire \result_OBUF[1]_inst_i_6_n_0 ;
  wire \result_OBUF[20]_inst_i_10_n_0 ;
  wire \result_OBUF[20]_inst_i_11_n_0 ;
  wire \result_OBUF[20]_inst_i_12_n_0 ;
  wire \result_OBUF[20]_inst_i_13_n_0 ;
  wire \result_OBUF[20]_inst_i_14_n_0 ;
  wire \result_OBUF[20]_inst_i_3_n_0 ;
  wire \result_OBUF[20]_inst_i_4_n_0 ;
  wire \result_OBUF[20]_inst_i_6_n_0 ;
  wire \result_OBUF[20]_inst_i_7_n_0 ;
  wire \result_OBUF[20]_inst_i_8_n_0 ;
  wire \result_OBUF[20]_inst_i_9_n_0 ;
  wire \result_OBUF[21]_inst_i_10_n_0 ;
  wire \result_OBUF[21]_inst_i_11_n_0 ;
  wire \result_OBUF[21]_inst_i_12_n_0 ;
  wire \result_OBUF[21]_inst_i_13_n_0 ;
  wire \result_OBUF[21]_inst_i_3_n_0 ;
  wire \result_OBUF[21]_inst_i_4_n_0 ;
  wire \result_OBUF[21]_inst_i_6_n_0 ;
  wire \result_OBUF[21]_inst_i_7_n_0 ;
  wire \result_OBUF[21]_inst_i_8_n_0 ;
  wire \result_OBUF[21]_inst_i_9_n_0 ;
  wire \result_OBUF[22]_inst_i_10_n_0 ;
  wire \result_OBUF[22]_inst_i_13_n_0 ;
  wire \result_OBUF[22]_inst_i_14_n_0 ;
  wire \result_OBUF[22]_inst_i_15_n_0 ;
  wire \result_OBUF[22]_inst_i_6_n_0 ;
  wire \result_OBUF[22]_inst_i_7_n_0 ;
  wire \result_OBUF[22]_inst_i_8_n_0 ;
  wire \result_OBUF[22]_inst_i_9_n_0 ;
  wire \result_OBUF[23]_inst_i_10_n_0 ;
  wire \result_OBUF[23]_inst_i_13_n_0 ;
  wire \result_OBUF[23]_inst_i_14_n_0 ;
  wire \result_OBUF[23]_inst_i_6_n_0 ;
  wire \result_OBUF[23]_inst_i_7_n_0 ;
  wire \result_OBUF[23]_inst_i_8_n_0 ;
  wire \result_OBUF[23]_inst_i_9_n_0 ;
  wire \result_OBUF[24]_inst_i_10_n_0 ;
  wire \result_OBUF[24]_inst_i_11_n_0 ;
  wire \result_OBUF[24]_inst_i_12_n_0 ;
  wire \result_OBUF[24]_inst_i_14_n_0 ;
  wire \result_OBUF[24]_inst_i_3_n_0 ;
  wire \result_OBUF[24]_inst_i_4_n_0 ;
  wire \result_OBUF[24]_inst_i_6_n_0 ;
  wire \result_OBUF[24]_inst_i_7_n_0 ;
  wire \result_OBUF[24]_inst_i_8_n_0 ;
  wire \result_OBUF[24]_inst_i_9_n_0 ;
  wire \result_OBUF[25]_inst_i_11_n_0 ;
  wire \result_OBUF[25]_inst_i_12_n_0 ;
  wire \result_OBUF[25]_inst_i_13_n_0 ;
  wire \result_OBUF[25]_inst_i_14_n_0 ;
  wire \result_OBUF[25]_inst_i_15_n_0 ;
  wire \result_OBUF[25]_inst_i_16_n_0 ;
  wire \result_OBUF[25]_inst_i_17_n_0 ;
  wire \result_OBUF[25]_inst_i_18_n_0 ;
  wire \result_OBUF[25]_inst_i_19_n_0 ;
  wire \result_OBUF[25]_inst_i_21_n_0 ;
  wire \result_OBUF[25]_inst_i_4_n_0 ;
  wire \result_OBUF[25]_inst_i_5_n_0 ;
  wire \result_OBUF[26]_inst_i_3_n_0 ;
  wire \result_OBUF[26]_inst_i_4_n_0 ;
  wire \result_OBUF[26]_inst_i_5_n_0 ;
  wire \result_OBUF[26]_inst_i_6_n_0 ;
  wire \result_OBUF[26]_inst_i_7_n_0 ;
  wire \result_OBUF[27]_inst_i_10_n_0 ;
  wire \result_OBUF[27]_inst_i_11_n_0 ;
  wire \result_OBUF[27]_inst_i_12_n_0 ;
  wire \result_OBUF[27]_inst_i_13_n_0 ;
  wire \result_OBUF[27]_inst_i_14_n_0 ;
  wire \result_OBUF[27]_inst_i_2_n_0 ;
  wire \result_OBUF[27]_inst_i_3_n_0 ;
  wire \result_OBUF[27]_inst_i_4_0 ;
  wire \result_OBUF[27]_inst_i_4_1 ;
  wire \result_OBUF[27]_inst_i_4_2 ;
  wire \result_OBUF[27]_inst_i_4_3 ;
  wire \result_OBUF[27]_inst_i_4_4 ;
  wire \result_OBUF[27]_inst_i_5_0 ;
  wire \result_OBUF[27]_inst_i_6_n_0 ;
  wire \result_OBUF[27]_inst_i_7_n_0 ;
  wire \result_OBUF[27]_inst_i_8_n_0 ;
  wire \result_OBUF[27]_inst_i_9_0 ;
  wire \result_OBUF[27]_inst_i_9_1 ;
  wire \result_OBUF[28]_inst_i_1 ;
  wire \result_OBUF[28]_inst_i_10 ;
  wire \result_OBUF[28]_inst_i_11_n_0 ;
  wire \result_OBUF[28]_inst_i_12_n_0 ;
  wire \result_OBUF[28]_inst_i_13_n_0 ;
  wire \result_OBUF[28]_inst_i_14_n_0 ;
  wire \result_OBUF[28]_inst_i_15_n_0 ;
  wire \result_OBUF[28]_inst_i_16_n_0 ;
  wire \result_OBUF[28]_inst_i_1_0 ;
  wire \result_OBUF[28]_inst_i_7_0 ;
  wire \result_OBUF[28]_inst_i_7_1 ;
  wire \result_OBUF[28]_inst_i_7_2 ;
  wire \result_OBUF[28]_inst_i_7_n_0 ;
  wire \result_OBUF[28]_inst_i_8_n_0 ;
  wire \result_OBUF[28]_inst_i_9_n_0 ;
  wire \result_OBUF[29]_inst_i_10_n_0 ;
  wire \result_OBUF[29]_inst_i_11_n_0 ;
  wire \result_OBUF[29]_inst_i_12_n_0 ;
  wire \result_OBUF[29]_inst_i_13_n_0 ;
  wire \result_OBUF[29]_inst_i_14_n_0 ;
  wire \result_OBUF[29]_inst_i_15_n_0 ;
  wire \result_OBUF[29]_inst_i_16_n_0 ;
  wire \result_OBUF[29]_inst_i_17_n_0 ;
  wire \result_OBUF[29]_inst_i_18_n_0 ;
  wire \result_OBUF[29]_inst_i_19_n_0 ;
  wire \result_OBUF[29]_inst_i_3_n_0 ;
  wire \result_OBUF[29]_inst_i_4_n_0 ;
  wire \result_OBUF[29]_inst_i_5_n_0 ;
  wire \result_OBUF[29]_inst_i_7_n_0 ;
  wire \result_OBUF[29]_inst_i_8_n_0 ;
  wire \result_OBUF[29]_inst_i_9_n_0 ;
  wire \result_OBUF[2]_inst_i_10_n_0 ;
  wire \result_OBUF[2]_inst_i_11_n_0 ;
  wire \result_OBUF[2]_inst_i_3_n_0 ;
  wire \result_OBUF[2]_inst_i_4_n_0 ;
  wire \result_OBUF[2]_inst_i_5_n_0 ;
  wire \result_OBUF[2]_inst_i_6_n_0 ;
  wire \result_OBUF[2]_inst_i_7_n_0 ;
  wire \result_OBUF[2]_inst_i_8_n_0 ;
  wire \result_OBUF[2]_inst_i_9_n_0 ;
  wire \result_OBUF[30]_inst_i_10_n_0 ;
  wire \result_OBUF[30]_inst_i_11_n_0 ;
  wire \result_OBUF[30]_inst_i_12_n_0 ;
  wire \result_OBUF[30]_inst_i_15_n_0 ;
  wire \result_OBUF[30]_inst_i_3_n_0 ;
  wire \result_OBUF[30]_inst_i_4_n_0 ;
  wire \result_OBUF[30]_inst_i_5_n_0 ;
  wire \result_OBUF[30]_inst_i_8_n_0 ;
  wire \result_OBUF[31]_inst_i_10_n_0 ;
  wire \result_OBUF[31]_inst_i_11_n_0 ;
  wire \result_OBUF[31]_inst_i_12_0 ;
  wire \result_OBUF[31]_inst_i_12_1 ;
  wire \result_OBUF[31]_inst_i_12_10 ;
  wire \result_OBUF[31]_inst_i_12_11 ;
  wire \result_OBUF[31]_inst_i_12_12 ;
  wire \result_OBUF[31]_inst_i_12_13 ;
  wire \result_OBUF[31]_inst_i_12_14 ;
  wire \result_OBUF[31]_inst_i_12_15 ;
  wire \result_OBUF[31]_inst_i_12_16 ;
  wire \result_OBUF[31]_inst_i_12_2 ;
  wire \result_OBUF[31]_inst_i_12_3 ;
  wire \result_OBUF[31]_inst_i_12_4 ;
  wire \result_OBUF[31]_inst_i_12_5 ;
  wire \result_OBUF[31]_inst_i_12_6 ;
  wire \result_OBUF[31]_inst_i_12_7 ;
  wire \result_OBUF[31]_inst_i_12_8 ;
  wire \result_OBUF[31]_inst_i_12_9 ;
  wire \result_OBUF[31]_inst_i_13_0 ;
  wire \result_OBUF[31]_inst_i_13_1 ;
  wire \result_OBUF[31]_inst_i_13_10 ;
  wire \result_OBUF[31]_inst_i_13_11 ;
  wire \result_OBUF[31]_inst_i_13_12 ;
  wire \result_OBUF[31]_inst_i_13_13 ;
  wire \result_OBUF[31]_inst_i_13_14 ;
  wire \result_OBUF[31]_inst_i_13_2 ;
  wire \result_OBUF[31]_inst_i_13_3 ;
  wire \result_OBUF[31]_inst_i_13_4 ;
  wire \result_OBUF[31]_inst_i_13_5 ;
  wire \result_OBUF[31]_inst_i_13_6 ;
  wire \result_OBUF[31]_inst_i_13_7 ;
  wire \result_OBUF[31]_inst_i_13_8 ;
  wire \result_OBUF[31]_inst_i_13_9 ;
  wire \result_OBUF[31]_inst_i_13_n_0 ;
  wire \result_OBUF[31]_inst_i_14_n_0 ;
  wire \result_OBUF[31]_inst_i_15_0 ;
  wire \result_OBUF[31]_inst_i_16_n_0 ;
  wire \result_OBUF[31]_inst_i_17_n_0 ;
  wire \result_OBUF[31]_inst_i_19_n_0 ;
  wire \result_OBUF[31]_inst_i_1_0 ;
  wire \result_OBUF[31]_inst_i_21_n_0 ;
  wire \result_OBUF[31]_inst_i_23_n_0 ;
  wire \result_OBUF[31]_inst_i_24_n_0 ;
  wire \result_OBUF[31]_inst_i_25_n_0 ;
  wire \result_OBUF[31]_inst_i_26_n_0 ;
  wire \result_OBUF[31]_inst_i_27_n_0 ;
  wire \result_OBUF[31]_inst_i_28_n_0 ;
  wire \result_OBUF[31]_inst_i_29_n_0 ;
  wire \result_OBUF[31]_inst_i_30_n_0 ;
  wire \result_OBUF[31]_inst_i_31_n_0 ;
  wire \result_OBUF[31]_inst_i_32_n_0 ;
  wire \result_OBUF[31]_inst_i_33_n_0 ;
  wire \result_OBUF[31]_inst_i_34_n_0 ;
  wire \result_OBUF[31]_inst_i_35_n_0 ;
  wire \result_OBUF[31]_inst_i_3_n_0 ;
  wire \result_OBUF[31]_inst_i_40_n_0 ;
  wire \result_OBUF[31]_inst_i_41_n_0 ;
  wire \result_OBUF[31]_inst_i_46_n_0 ;
  wire \result_OBUF[31]_inst_i_47_n_0 ;
  wire \result_OBUF[31]_inst_i_48_n_0 ;
  wire \result_OBUF[31]_inst_i_49_n_0 ;
  wire \result_OBUF[31]_inst_i_4_n_0 ;
  wire \result_OBUF[31]_inst_i_50_n_0 ;
  wire \result_OBUF[31]_inst_i_59_n_0 ;
  wire [13:0]\result_OBUF[31]_inst_i_6 ;
  wire \result_OBUF[31]_inst_i_9_n_0 ;
  wire \result_OBUF[3]_inst_i_10_n_0 ;
  wire \result_OBUF[3]_inst_i_11_n_0 ;
  wire \result_OBUF[3]_inst_i_12_n_0 ;
  wire \result_OBUF[3]_inst_i_13_n_0 ;
  wire \result_OBUF[3]_inst_i_14_n_0 ;
  wire \result_OBUF[3]_inst_i_15_n_0 ;
  wire \result_OBUF[3]_inst_i_16_n_0 ;
  wire \result_OBUF[3]_inst_i_17_n_0 ;
  wire \result_OBUF[3]_inst_i_18_n_0 ;
  wire \result_OBUF[3]_inst_i_19_n_0 ;
  wire \result_OBUF[3]_inst_i_3_n_0 ;
  wire \result_OBUF[3]_inst_i_4_n_0 ;
  wire \result_OBUF[3]_inst_i_5_n_0 ;
  wire \result_OBUF[3]_inst_i_6_n_0 ;
  wire \result_OBUF[3]_inst_i_7_n_0 ;
  wire \result_OBUF[3]_inst_i_8_n_0 ;
  wire \result_OBUF[3]_inst_i_9_n_0 ;
  wire \result_OBUF[4]_inst_i_4_0 ;
  wire \result_OBUF[4]_inst_i_4_n_0 ;
  wire \result_OBUF[4]_inst_i_5_n_0 ;
  wire \result_OBUF[4]_inst_i_6_n_0 ;
  wire \result_OBUF[4]_inst_i_7_n_0 ;
  wire \result_OBUF[4]_inst_i_8_n_0 ;
  wire \result_OBUF[4]_inst_i_9_n_0 ;
  wire \result_OBUF[5]_inst_i_4_0 ;
  wire \result_OBUF[5]_inst_i_4_n_0 ;
  wire \result_OBUF[5]_inst_i_5_n_0 ;
  wire \result_OBUF[5]_inst_i_6_n_0 ;
  wire \result_OBUF[5]_inst_i_7_n_0 ;
  wire \result_OBUF[5]_inst_i_8_n_0 ;
  wire \result_OBUF[5]_inst_i_9_n_0 ;
  wire \result_OBUF[6]_inst_i_10_n_0 ;
  wire \result_OBUF[6]_inst_i_11_n_0 ;
  wire \result_OBUF[6]_inst_i_4_0 ;
  wire \result_OBUF[6]_inst_i_4_n_0 ;
  wire \result_OBUF[6]_inst_i_5_n_0 ;
  wire \result_OBUF[6]_inst_i_6_n_0 ;
  wire \result_OBUF[6]_inst_i_7_n_0 ;
  wire \result_OBUF[6]_inst_i_8_n_0 ;
  wire \result_OBUF[7]_inst_i_10_n_0 ;
  wire \result_OBUF[7]_inst_i_11_n_0 ;
  wire \result_OBUF[7]_inst_i_4_0 ;
  wire \result_OBUF[7]_inst_i_4_n_0 ;
  wire \result_OBUF[7]_inst_i_5_n_0 ;
  wire \result_OBUF[7]_inst_i_6_n_0 ;
  wire \result_OBUF[7]_inst_i_7_n_0 ;
  wire \result_OBUF[7]_inst_i_8_n_0 ;
  wire \result_OBUF[8]_inst_i_11_n_0 ;
  wire \result_OBUF[8]_inst_i_12_n_0 ;
  wire \result_OBUF[8]_inst_i_4_0 ;
  wire \result_OBUF[8]_inst_i_4_n_0 ;
  wire \result_OBUF[8]_inst_i_5_n_0 ;
  wire \result_OBUF[8]_inst_i_6_n_0 ;
  wire \result_OBUF[8]_inst_i_7_n_0 ;
  wire \result_OBUF[8]_inst_i_8_n_0 ;
  wire \result_OBUF[9]_inst_i_11_n_0 ;
  wire \result_OBUF[9]_inst_i_12_n_0 ;
  wire \result_OBUF[9]_inst_i_4_0 ;
  wire \result_OBUF[9]_inst_i_4_n_0 ;
  wire \result_OBUF[9]_inst_i_5_n_0 ;
  wire \result_OBUF[9]_inst_i_6_n_0 ;
  wire \result_OBUF[9]_inst_i_7_n_0 ;
  wire \result_OBUF[9]_inst_i_8_n_0 ;
  wire [4:0]\u_ALU_1/A_or_Shift__41 ;
  wire [30:0]\u_ALU_1/B_signed ;
  wire [31:31]\u_ALU_1/B_signed__0 ;
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
    .INIT(32'h2FFF0A2A)) 
    ALUresult0__187_carry__0_i_1
       (.I0(\u_ALU_1/B_signed [14]),
        .I1(A0[14]),
        .I2(\pc_reg[1] ),
        .I3(A0[15]),
        .I4(\u_ALU_1/B_signed [15]),
        .O(ALUresult0__187_carry__0_i_10_1[3]));
  LUT6 #(
    .INIT(64'hFFFB000800080008)) 
    ALUresult0__187_carry__0_i_10
       (.I0(douta[15]),
        .I1(douta[29]),
        .I2(douta[30]),
        .I3(douta[31]),
        .I4(\result_OBUF[0]_inst_i_4_0 ),
        .I5(B0[15]),
        .O(\u_ALU_1/B_signed [15]));
  LUT6 #(
    .INIT(64'hFFFB000800080008)) 
    ALUresult0__187_carry__0_i_11
       (.I0(douta[12]),
        .I1(douta[29]),
        .I2(douta[30]),
        .I3(douta[31]),
        .I4(\result_OBUF[0]_inst_i_4_0 ),
        .I5(B0[12]),
        .O(\u_ALU_1/B_signed [12]));
  LUT6 #(
    .INIT(64'hFFFB000800080008)) 
    ALUresult0__187_carry__0_i_12
       (.I0(douta[13]),
        .I1(douta[29]),
        .I2(douta[30]),
        .I3(douta[31]),
        .I4(\result_OBUF[0]_inst_i_4_0 ),
        .I5(B0[13]),
        .O(\u_ALU_1/B_signed [13]));
  LUT6 #(
    .INIT(64'hFFFB000800080008)) 
    ALUresult0__187_carry__0_i_13
       (.I0(douta[10]),
        .I1(douta[29]),
        .I2(douta[30]),
        .I3(douta[31]),
        .I4(\result_OBUF[0]_inst_i_4_0 ),
        .I5(B0[10]),
        .O(\u_ALU_1/B_signed [10]));
  LUT6 #(
    .INIT(64'hFFFB000800080008)) 
    ALUresult0__187_carry__0_i_14
       (.I0(douta[11]),
        .I1(douta[29]),
        .I2(douta[30]),
        .I3(douta[31]),
        .I4(\result_OBUF[0]_inst_i_4_0 ),
        .I5(B0[11]),
        .O(\u_ALU_1/B_signed [11]));
  LUT6 #(
    .INIT(64'hFFFB000800080008)) 
    ALUresult0__187_carry__0_i_15
       (.I0(douta[8]),
        .I1(douta[29]),
        .I2(douta[30]),
        .I3(douta[31]),
        .I4(\result_OBUF[0]_inst_i_4_0 ),
        .I5(B0[8]),
        .O(\u_ALU_1/B_signed [8]));
  LUT6 #(
    .INIT(64'hFFFB000800080008)) 
    ALUresult0__187_carry__0_i_16
       (.I0(douta[9]),
        .I1(douta[29]),
        .I2(douta[30]),
        .I3(douta[31]),
        .I4(\result_OBUF[0]_inst_i_4_0 ),
        .I5(B0[9]),
        .O(\u_ALU_1/B_signed [9]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    ALUresult0__187_carry__0_i_2
       (.I0(\u_ALU_1/B_signed [12]),
        .I1(A0[12]),
        .I2(\pc_reg[1] ),
        .I3(A0[13]),
        .I4(\u_ALU_1/B_signed [13]),
        .O(ALUresult0__187_carry__0_i_10_1[2]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    ALUresult0__187_carry__0_i_3
       (.I0(\u_ALU_1/B_signed [10]),
        .I1(A0[10]),
        .I2(\pc_reg[1] ),
        .I3(A0[11]),
        .I4(\u_ALU_1/B_signed [11]),
        .O(ALUresult0__187_carry__0_i_10_1[1]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    ALUresult0__187_carry__0_i_4
       (.I0(\u_ALU_1/B_signed [8]),
        .I1(A0[8]),
        .I2(\pc_reg[1] ),
        .I3(A0[9]),
        .I4(\u_ALU_1/B_signed [9]),
        .O(ALUresult0__187_carry__0_i_10_1[0]));
  LUT5 #(
    .INIT(32'h90050905)) 
    ALUresult0__187_carry__0_i_5
       (.I0(\u_ALU_1/B_signed [15]),
        .I1(A0[15]),
        .I2(\u_ALU_1/B_signed [14]),
        .I3(\pc_reg[1] ),
        .I4(A0[14]),
        .O(register_reg_r1_0_31_12_17_2[3]));
  LUT5 #(
    .INIT(32'h90050905)) 
    ALUresult0__187_carry__0_i_6
       (.I0(\u_ALU_1/B_signed [13]),
        .I1(A0[13]),
        .I2(\u_ALU_1/B_signed [12]),
        .I3(\pc_reg[1] ),
        .I4(A0[12]),
        .O(register_reg_r1_0_31_12_17_2[2]));
  LUT5 #(
    .INIT(32'h90050905)) 
    ALUresult0__187_carry__0_i_7
       (.I0(\u_ALU_1/B_signed [11]),
        .I1(A0[11]),
        .I2(\u_ALU_1/B_signed [10]),
        .I3(\pc_reg[1] ),
        .I4(A0[10]),
        .O(register_reg_r1_0_31_12_17_2[1]));
  LUT5 #(
    .INIT(32'h90050905)) 
    ALUresult0__187_carry__0_i_8
       (.I0(\u_ALU_1/B_signed [9]),
        .I1(A0[9]),
        .I2(\u_ALU_1/B_signed [8]),
        .I3(\pc_reg[1] ),
        .I4(A0[8]),
        .O(register_reg_r1_0_31_12_17_2[0]));
  LUT6 #(
    .INIT(64'hFFFB000800080008)) 
    ALUresult0__187_carry__0_i_9
       (.I0(douta[14]),
        .I1(douta[29]),
        .I2(douta[30]),
        .I3(douta[31]),
        .I4(\result_OBUF[0]_inst_i_4_0 ),
        .I5(B0[14]),
        .O(\u_ALU_1/B_signed [14]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    ALUresult0__187_carry__1_i_1
       (.I0(\u_ALU_1/B_signed [22]),
        .I1(A0[22]),
        .I2(\pc_reg[1] ),
        .I3(A0[23]),
        .I4(\u_ALU_1/B_signed [23]),
        .O(ALUresult0__187_carry__1_i_10_1[3]));
  LUT6 #(
    .INIT(64'hFD000000FFFFFFFF)) 
    ALUresult0__187_carry__1_i_10
       (.I0(douta[29]),
        .I1(douta[30]),
        .I2(douta[31]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(B0[23]),
        .I5(ALUresult0__203_carry__2_i_5_0),
        .O(\u_ALU_1/B_signed [23]));
  LUT6 #(
    .INIT(64'hFD000000FFFFFFFF)) 
    ALUresult0__187_carry__1_i_11
       (.I0(douta[29]),
        .I1(douta[30]),
        .I2(douta[31]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(B0[20]),
        .I5(ALUresult0__203_carry__2_i_5_0),
        .O(\u_ALU_1/B_signed [20]));
  LUT6 #(
    .INIT(64'hFD000000FFFFFFFF)) 
    ALUresult0__187_carry__1_i_12
       (.I0(douta[29]),
        .I1(douta[30]),
        .I2(douta[31]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(B0[21]),
        .I5(ALUresult0__203_carry__2_i_5_0),
        .O(\u_ALU_1/B_signed [21]));
  LUT6 #(
    .INIT(64'hFD000000FFFFFFFF)) 
    ALUresult0__187_carry__1_i_13
       (.I0(douta[29]),
        .I1(douta[30]),
        .I2(douta[31]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(B0[18]),
        .I5(ALUresult0__203_carry__2_i_5_0),
        .O(\u_ALU_1/B_signed [18]));
  LUT6 #(
    .INIT(64'hFD000000FFFFFFFF)) 
    ALUresult0__187_carry__1_i_14
       (.I0(douta[29]),
        .I1(douta[30]),
        .I2(douta[31]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(B0[19]),
        .I5(ALUresult0__203_carry__2_i_5_0),
        .O(\u_ALU_1/B_signed [19]));
  LUT6 #(
    .INIT(64'hFD000000FFFFFFFF)) 
    ALUresult0__187_carry__1_i_15
       (.I0(douta[29]),
        .I1(douta[30]),
        .I2(douta[31]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(B0[16]),
        .I5(ALUresult0__203_carry__2_i_5_0),
        .O(\u_ALU_1/B_signed [16]));
  LUT6 #(
    .INIT(64'hFD000000FFFFFFFF)) 
    ALUresult0__187_carry__1_i_16
       (.I0(douta[29]),
        .I1(douta[30]),
        .I2(douta[31]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(B0[17]),
        .I5(ALUresult0__203_carry__2_i_5_0),
        .O(\u_ALU_1/B_signed [17]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    ALUresult0__187_carry__1_i_2
       (.I0(\u_ALU_1/B_signed [20]),
        .I1(A0[20]),
        .I2(\pc_reg[1] ),
        .I3(A0[21]),
        .I4(\u_ALU_1/B_signed [21]),
        .O(ALUresult0__187_carry__1_i_10_1[2]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    ALUresult0__187_carry__1_i_3
       (.I0(\u_ALU_1/B_signed [18]),
        .I1(A0[18]),
        .I2(\pc_reg[1] ),
        .I3(A0[19]),
        .I4(\u_ALU_1/B_signed [19]),
        .O(ALUresult0__187_carry__1_i_10_1[1]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    ALUresult0__187_carry__1_i_4
       (.I0(\u_ALU_1/B_signed [16]),
        .I1(A0[16]),
        .I2(\pc_reg[1] ),
        .I3(A0[17]),
        .I4(\u_ALU_1/B_signed [17]),
        .O(ALUresult0__187_carry__1_i_10_1[0]));
  LUT5 #(
    .INIT(32'h90050905)) 
    ALUresult0__187_carry__1_i_5
       (.I0(\u_ALU_1/B_signed [23]),
        .I1(A0[23]),
        .I2(\u_ALU_1/B_signed [22]),
        .I3(\pc_reg[1] ),
        .I4(A0[22]),
        .O(register_reg_r1_0_31_18_23_3[3]));
  LUT5 #(
    .INIT(32'h90050905)) 
    ALUresult0__187_carry__1_i_6
       (.I0(\u_ALU_1/B_signed [21]),
        .I1(A0[21]),
        .I2(\u_ALU_1/B_signed [20]),
        .I3(\pc_reg[1] ),
        .I4(A0[20]),
        .O(register_reg_r1_0_31_18_23_3[2]));
  LUT5 #(
    .INIT(32'h90050905)) 
    ALUresult0__187_carry__1_i_7
       (.I0(\u_ALU_1/B_signed [19]),
        .I1(A0[19]),
        .I2(\u_ALU_1/B_signed [18]),
        .I3(\pc_reg[1] ),
        .I4(A0[18]),
        .O(register_reg_r1_0_31_18_23_3[1]));
  LUT5 #(
    .INIT(32'h90050905)) 
    ALUresult0__187_carry__1_i_8
       (.I0(\u_ALU_1/B_signed [17]),
        .I1(A0[17]),
        .I2(\u_ALU_1/B_signed [16]),
        .I3(\pc_reg[1] ),
        .I4(A0[16]),
        .O(register_reg_r1_0_31_18_23_3[0]));
  LUT6 #(
    .INIT(64'hFD000000FFFFFFFF)) 
    ALUresult0__187_carry__1_i_9
       (.I0(douta[29]),
        .I1(douta[30]),
        .I2(douta[31]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(B0[22]),
        .I5(ALUresult0__203_carry__2_i_5_0),
        .O(\u_ALU_1/B_signed [22]));
  LUT5 #(
    .INIT(32'h30B22222)) 
    ALUresult0__187_carry__2_i_1
       (.I0(\u_ALU_1/B_signed [30]),
        .I1(\u_ALU_1/B_signed__0 ),
        .I2(A0[31]),
        .I3(A0[30]),
        .I4(\pc_reg[1] ),
        .O(ALUresult0_carry_i_9_0[3]));
  LUT6 #(
    .INIT(64'hFD000000FFFFFFFF)) 
    ALUresult0__187_carry__2_i_10
       (.I0(douta[29]),
        .I1(douta[30]),
        .I2(douta[31]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(B0[31]),
        .I5(ALUresult0__203_carry__2_i_5_0),
        .O(\u_ALU_1/B_signed__0 ));
  LUT6 #(
    .INIT(64'hFD000000FFFFFFFF)) 
    ALUresult0__187_carry__2_i_11
       (.I0(douta[29]),
        .I1(douta[30]),
        .I2(douta[31]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(B0[28]),
        .I5(ALUresult0__203_carry__2_i_5_0),
        .O(\u_ALU_1/B_signed [28]));
  LUT6 #(
    .INIT(64'hFD000000FFFFFFFF)) 
    ALUresult0__187_carry__2_i_12
       (.I0(douta[29]),
        .I1(douta[30]),
        .I2(douta[31]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(B0[29]),
        .I5(ALUresult0__203_carry__2_i_5_0),
        .O(\u_ALU_1/B_signed [29]));
  LUT6 #(
    .INIT(64'hFD000000FFFFFFFF)) 
    ALUresult0__187_carry__2_i_13
       (.I0(douta[29]),
        .I1(douta[30]),
        .I2(douta[31]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(B0[26]),
        .I5(ALUresult0__203_carry__2_i_5_0),
        .O(\u_ALU_1/B_signed [26]));
  LUT6 #(
    .INIT(64'hFD000000FFFFFFFF)) 
    ALUresult0__187_carry__2_i_14
       (.I0(douta[29]),
        .I1(douta[30]),
        .I2(douta[31]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(B0[27]),
        .I5(ALUresult0__203_carry__2_i_5_0),
        .O(\u_ALU_1/B_signed [27]));
  LUT6 #(
    .INIT(64'hFD000000FFFFFFFF)) 
    ALUresult0__187_carry__2_i_15
       (.I0(douta[29]),
        .I1(douta[30]),
        .I2(douta[31]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(B0[24]),
        .I5(ALUresult0__203_carry__2_i_5_0),
        .O(\u_ALU_1/B_signed [24]));
  LUT6 #(
    .INIT(64'hFD000000FFFFFFFF)) 
    ALUresult0__187_carry__2_i_16
       (.I0(douta[29]),
        .I1(douta[30]),
        .I2(douta[31]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(B0[25]),
        .I5(ALUresult0__203_carry__2_i_5_0),
        .O(\u_ALU_1/B_signed [25]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    ALUresult0__187_carry__2_i_2
       (.I0(\u_ALU_1/B_signed [28]),
        .I1(A0[28]),
        .I2(\pc_reg[1] ),
        .I3(A0[29]),
        .I4(\u_ALU_1/B_signed [29]),
        .O(ALUresult0_carry_i_9_0[2]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    ALUresult0__187_carry__2_i_3
       (.I0(\u_ALU_1/B_signed [26]),
        .I1(A0[26]),
        .I2(\pc_reg[1] ),
        .I3(A0[27]),
        .I4(\u_ALU_1/B_signed [27]),
        .O(ALUresult0_carry_i_9_0[1]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    ALUresult0__187_carry__2_i_4
       (.I0(\u_ALU_1/B_signed [24]),
        .I1(A0[24]),
        .I2(\pc_reg[1] ),
        .I3(A0[25]),
        .I4(\u_ALU_1/B_signed [25]),
        .O(ALUresult0_carry_i_9_0[0]));
  LUT5 #(
    .INIT(32'h90050905)) 
    ALUresult0__187_carry__2_i_5
       (.I0(\u_ALU_1/B_signed [30]),
        .I1(A0[30]),
        .I2(\u_ALU_1/B_signed__0 ),
        .I3(\pc_reg[1] ),
        .I4(A0[31]),
        .O(register_reg_r1_0_31_30_31_3[3]));
  LUT5 #(
    .INIT(32'h90050905)) 
    ALUresult0__187_carry__2_i_6
       (.I0(\u_ALU_1/B_signed [29]),
        .I1(A0[29]),
        .I2(\u_ALU_1/B_signed [28]),
        .I3(\pc_reg[1] ),
        .I4(A0[28]),
        .O(register_reg_r1_0_31_30_31_3[2]));
  LUT5 #(
    .INIT(32'h90050905)) 
    ALUresult0__187_carry__2_i_7
       (.I0(\u_ALU_1/B_signed [27]),
        .I1(A0[27]),
        .I2(\u_ALU_1/B_signed [26]),
        .I3(\pc_reg[1] ),
        .I4(A0[26]),
        .O(register_reg_r1_0_31_30_31_3[1]));
  LUT5 #(
    .INIT(32'h90050905)) 
    ALUresult0__187_carry__2_i_8
       (.I0(\u_ALU_1/B_signed [25]),
        .I1(A0[25]),
        .I2(\u_ALU_1/B_signed [24]),
        .I3(\pc_reg[1] ),
        .I4(A0[24]),
        .O(register_reg_r1_0_31_30_31_3[0]));
  LUT6 #(
    .INIT(64'hFD000000FFFFFFFF)) 
    ALUresult0__187_carry__2_i_9
       (.I0(douta[29]),
        .I1(douta[30]),
        .I2(douta[31]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(B0[30]),
        .I5(ALUresult0__203_carry__2_i_5_0),
        .O(\u_ALU_1/B_signed [30]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    ALUresult0__187_carry_i_1
       (.I0(\u_ALU_1/B_signed [6]),
        .I1(A0[6]),
        .I2(\pc_reg[1] ),
        .I3(A0[7]),
        .I4(\u_ALU_1/B_signed [7]),
        .O(ALUresult0__187_carry_i_10_1[3]));
  LUT6 #(
    .INIT(64'hFFFB000800080008)) 
    ALUresult0__187_carry_i_10
       (.I0(douta[7]),
        .I1(douta[29]),
        .I2(douta[30]),
        .I3(douta[31]),
        .I4(\result_OBUF[0]_inst_i_4_0 ),
        .I5(B0[7]),
        .O(\u_ALU_1/B_signed [7]));
  LUT6 #(
    .INIT(64'hFFFB000800080008)) 
    ALUresult0__187_carry_i_11
       (.I0(douta[4]),
        .I1(douta[29]),
        .I2(douta[30]),
        .I3(douta[31]),
        .I4(\result_OBUF[0]_inst_i_4_0 ),
        .I5(B0[4]),
        .O(\u_ALU_1/B_signed [4]));
  LUT6 #(
    .INIT(64'hFFFB000800080008)) 
    ALUresult0__187_carry_i_12
       (.I0(douta[5]),
        .I1(douta[29]),
        .I2(douta[30]),
        .I3(douta[31]),
        .I4(\result_OBUF[0]_inst_i_4_0 ),
        .I5(B0[5]),
        .O(\u_ALU_1/B_signed [5]));
  LUT6 #(
    .INIT(64'hFFFB000800080008)) 
    ALUresult0__187_carry_i_13
       (.I0(douta[2]),
        .I1(douta[29]),
        .I2(douta[30]),
        .I3(douta[31]),
        .I4(\result_OBUF[0]_inst_i_4_0 ),
        .I5(B0[2]),
        .O(\u_ALU_1/B_signed [2]));
  LUT6 #(
    .INIT(64'hFFFB000800080008)) 
    ALUresult0__187_carry_i_14
       (.I0(douta[3]),
        .I1(douta[29]),
        .I2(douta[30]),
        .I3(douta[31]),
        .I4(\result_OBUF[0]_inst_i_4_0 ),
        .I5(B0[3]),
        .O(\u_ALU_1/B_signed [3]));
  LUT6 #(
    .INIT(64'hFFFB000800080008)) 
    ALUresult0__187_carry_i_15
       (.I0(douta[0]),
        .I1(douta[29]),
        .I2(douta[30]),
        .I3(douta[31]),
        .I4(\result_OBUF[0]_inst_i_4_0 ),
        .I5(B0[0]),
        .O(\u_ALU_1/B_signed [0]));
  LUT6 #(
    .INIT(64'hFFFB000800080008)) 
    ALUresult0__187_carry_i_16
       (.I0(douta[1]),
        .I1(douta[29]),
        .I2(douta[30]),
        .I3(douta[31]),
        .I4(\result_OBUF[0]_inst_i_4_0 ),
        .I5(B0[1]),
        .O(\u_ALU_1/B_signed [1]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    ALUresult0__187_carry_i_2
       (.I0(\u_ALU_1/B_signed [4]),
        .I1(A0[4]),
        .I2(\pc_reg[1] ),
        .I3(A0[5]),
        .I4(\u_ALU_1/B_signed [5]),
        .O(ALUresult0__187_carry_i_10_1[2]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    ALUresult0__187_carry_i_3
       (.I0(\u_ALU_1/B_signed [2]),
        .I1(A0[2]),
        .I2(\pc_reg[1] ),
        .I3(A0[3]),
        .I4(\u_ALU_1/B_signed [3]),
        .O(ALUresult0__187_carry_i_10_1[1]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    ALUresult0__187_carry_i_4
       (.I0(\u_ALU_1/B_signed [0]),
        .I1(A0[0]),
        .I2(\pc_reg[1] ),
        .I3(A0[1]),
        .I4(\u_ALU_1/B_signed [1]),
        .O(ALUresult0__187_carry_i_10_1[0]));
  LUT5 #(
    .INIT(32'h90050905)) 
    ALUresult0__187_carry_i_5
       (.I0(\u_ALU_1/B_signed [7]),
        .I1(A0[7]),
        .I2(\u_ALU_1/B_signed [6]),
        .I3(\pc_reg[1] ),
        .I4(A0[6]),
        .O(register_reg_r1_0_31_6_11_3[3]));
  LUT5 #(
    .INIT(32'h90050905)) 
    ALUresult0__187_carry_i_6
       (.I0(\u_ALU_1/B_signed [5]),
        .I1(A0[5]),
        .I2(\u_ALU_1/B_signed [4]),
        .I3(\pc_reg[1] ),
        .I4(A0[4]),
        .O(register_reg_r1_0_31_6_11_3[2]));
  LUT5 #(
    .INIT(32'h90050905)) 
    ALUresult0__187_carry_i_7
       (.I0(\u_ALU_1/B_signed [3]),
        .I1(A0[3]),
        .I2(\u_ALU_1/B_signed [2]),
        .I3(\pc_reg[1] ),
        .I4(A0[2]),
        .O(register_reg_r1_0_31_6_11_3[1]));
  LUT5 #(
    .INIT(32'h90050905)) 
    ALUresult0__187_carry_i_8
       (.I0(\u_ALU_1/B_signed [1]),
        .I1(A0[1]),
        .I2(\u_ALU_1/B_signed [0]),
        .I3(\pc_reg[1] ),
        .I4(A0[0]),
        .O(register_reg_r1_0_31_6_11_3[0]));
  LUT6 #(
    .INIT(64'hFFFB000800080008)) 
    ALUresult0__187_carry_i_9
       (.I0(douta[6]),
        .I1(douta[29]),
        .I2(douta[30]),
        .I3(douta[31]),
        .I4(\result_OBUF[0]_inst_i_4_0 ),
        .I5(B0[6]),
        .O(\u_ALU_1/B_signed [6]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    ALUresult0__203_carry__0_i_1
       (.I0(\u_ALU_1/B_signed [14]),
        .I1(A0[14]),
        .I2(\pc_reg[1] ),
        .I3(A0[15]),
        .I4(\u_ALU_1/B_signed [15]),
        .O(ALUresult0__187_carry__0_i_10_0[3]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    ALUresult0__203_carry__0_i_2
       (.I0(\u_ALU_1/B_signed [12]),
        .I1(A0[12]),
        .I2(\pc_reg[1] ),
        .I3(A0[13]),
        .I4(\u_ALU_1/B_signed [13]),
        .O(ALUresult0__187_carry__0_i_10_0[2]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    ALUresult0__203_carry__0_i_3
       (.I0(\u_ALU_1/B_signed [10]),
        .I1(A0[10]),
        .I2(\pc_reg[1] ),
        .I3(A0[11]),
        .I4(\u_ALU_1/B_signed [11]),
        .O(ALUresult0__187_carry__0_i_10_0[1]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    ALUresult0__203_carry__0_i_4
       (.I0(\u_ALU_1/B_signed [8]),
        .I1(A0[8]),
        .I2(\pc_reg[1] ),
        .I3(A0[9]),
        .I4(\u_ALU_1/B_signed [9]),
        .O(ALUresult0__187_carry__0_i_10_0[0]));
  LUT5 #(
    .INIT(32'h90050905)) 
    ALUresult0__203_carry__0_i_5
       (.I0(\u_ALU_1/B_signed [15]),
        .I1(A0[15]),
        .I2(\u_ALU_1/B_signed [14]),
        .I3(\pc_reg[1] ),
        .I4(A0[14]),
        .O(register_reg_r1_0_31_12_17_0[3]));
  LUT5 #(
    .INIT(32'h90050905)) 
    ALUresult0__203_carry__0_i_6
       (.I0(\u_ALU_1/B_signed [13]),
        .I1(A0[13]),
        .I2(\u_ALU_1/B_signed [12]),
        .I3(\pc_reg[1] ),
        .I4(A0[12]),
        .O(register_reg_r1_0_31_12_17_0[2]));
  LUT5 #(
    .INIT(32'h90050905)) 
    ALUresult0__203_carry__0_i_7
       (.I0(\u_ALU_1/B_signed [11]),
        .I1(A0[11]),
        .I2(\u_ALU_1/B_signed [10]),
        .I3(\pc_reg[1] ),
        .I4(A0[10]),
        .O(register_reg_r1_0_31_12_17_0[1]));
  LUT5 #(
    .INIT(32'h90050905)) 
    ALUresult0__203_carry__0_i_8
       (.I0(\u_ALU_1/B_signed [9]),
        .I1(A0[9]),
        .I2(\u_ALU_1/B_signed [8]),
        .I3(\pc_reg[1] ),
        .I4(A0[8]),
        .O(register_reg_r1_0_31_12_17_0[0]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    ALUresult0__203_carry__1_i_1
       (.I0(\u_ALU_1/B_signed [22]),
        .I1(A0[22]),
        .I2(\pc_reg[1] ),
        .I3(A0[23]),
        .I4(\u_ALU_1/B_signed [23]),
        .O(ALUresult0__187_carry__1_i_10_0[3]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    ALUresult0__203_carry__1_i_2
       (.I0(\u_ALU_1/B_signed [20]),
        .I1(A0[20]),
        .I2(\pc_reg[1] ),
        .I3(A0[21]),
        .I4(\u_ALU_1/B_signed [21]),
        .O(ALUresult0__187_carry__1_i_10_0[2]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    ALUresult0__203_carry__1_i_3
       (.I0(\u_ALU_1/B_signed [18]),
        .I1(A0[18]),
        .I2(\pc_reg[1] ),
        .I3(A0[19]),
        .I4(\u_ALU_1/B_signed [19]),
        .O(ALUresult0__187_carry__1_i_10_0[1]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    ALUresult0__203_carry__1_i_4
       (.I0(\u_ALU_1/B_signed [16]),
        .I1(A0[16]),
        .I2(\pc_reg[1] ),
        .I3(A0[17]),
        .I4(\u_ALU_1/B_signed [17]),
        .O(ALUresult0__187_carry__1_i_10_0[0]));
  LUT5 #(
    .INIT(32'h90050905)) 
    ALUresult0__203_carry__1_i_5
       (.I0(\u_ALU_1/B_signed [23]),
        .I1(A0[23]),
        .I2(\u_ALU_1/B_signed [22]),
        .I3(\pc_reg[1] ),
        .I4(A0[22]),
        .O(register_reg_r1_0_31_18_23_0[3]));
  LUT5 #(
    .INIT(32'h90050905)) 
    ALUresult0__203_carry__1_i_6
       (.I0(\u_ALU_1/B_signed [21]),
        .I1(A0[21]),
        .I2(\u_ALU_1/B_signed [20]),
        .I3(\pc_reg[1] ),
        .I4(A0[20]),
        .O(register_reg_r1_0_31_18_23_0[2]));
  LUT5 #(
    .INIT(32'h90050905)) 
    ALUresult0__203_carry__1_i_7
       (.I0(\u_ALU_1/B_signed [19]),
        .I1(A0[19]),
        .I2(\u_ALU_1/B_signed [18]),
        .I3(\pc_reg[1] ),
        .I4(A0[18]),
        .O(register_reg_r1_0_31_18_23_0[1]));
  LUT5 #(
    .INIT(32'h90050905)) 
    ALUresult0__203_carry__1_i_8
       (.I0(\u_ALU_1/B_signed [17]),
        .I1(A0[17]),
        .I2(\u_ALU_1/B_signed [16]),
        .I3(\pc_reg[1] ),
        .I4(A0[16]),
        .O(register_reg_r1_0_31_18_23_0[0]));
  LUT5 #(
    .INIT(32'h0C8EEEEE)) 
    ALUresult0__203_carry__2_i_1
       (.I0(\u_ALU_1/B_signed [30]),
        .I1(\u_ALU_1/B_signed__0 ),
        .I2(A0[31]),
        .I3(A0[30]),
        .I4(\pc_reg[1] ),
        .O(ALUresult0_carry_i_9[3]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    ALUresult0__203_carry__2_i_2
       (.I0(\u_ALU_1/B_signed [28]),
        .I1(A0[28]),
        .I2(\pc_reg[1] ),
        .I3(A0[29]),
        .I4(\u_ALU_1/B_signed [29]),
        .O(ALUresult0_carry_i_9[2]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    ALUresult0__203_carry__2_i_3
       (.I0(\u_ALU_1/B_signed [26]),
        .I1(A0[26]),
        .I2(\pc_reg[1] ),
        .I3(A0[27]),
        .I4(\u_ALU_1/B_signed [27]),
        .O(ALUresult0_carry_i_9[1]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    ALUresult0__203_carry__2_i_4
       (.I0(\u_ALU_1/B_signed [24]),
        .I1(A0[24]),
        .I2(\pc_reg[1] ),
        .I3(A0[25]),
        .I4(\u_ALU_1/B_signed [25]),
        .O(ALUresult0_carry_i_9[0]));
  LUT5 #(
    .INIT(32'h90050905)) 
    ALUresult0__203_carry__2_i_5
       (.I0(\u_ALU_1/B_signed [30]),
        .I1(A0[30]),
        .I2(\u_ALU_1/B_signed__0 ),
        .I3(\pc_reg[1] ),
        .I4(A0[31]),
        .O(register_reg_r1_0_31_30_31_0[3]));
  LUT5 #(
    .INIT(32'h90050905)) 
    ALUresult0__203_carry__2_i_6
       (.I0(\u_ALU_1/B_signed [29]),
        .I1(A0[29]),
        .I2(\u_ALU_1/B_signed [28]),
        .I3(\pc_reg[1] ),
        .I4(A0[28]),
        .O(register_reg_r1_0_31_30_31_0[2]));
  LUT5 #(
    .INIT(32'h90050905)) 
    ALUresult0__203_carry__2_i_7
       (.I0(\u_ALU_1/B_signed [27]),
        .I1(A0[27]),
        .I2(\u_ALU_1/B_signed [26]),
        .I3(\pc_reg[1] ),
        .I4(A0[26]),
        .O(register_reg_r1_0_31_30_31_0[1]));
  LUT5 #(
    .INIT(32'h90050905)) 
    ALUresult0__203_carry__2_i_8
       (.I0(\u_ALU_1/B_signed [25]),
        .I1(A0[25]),
        .I2(\u_ALU_1/B_signed [24]),
        .I3(\pc_reg[1] ),
        .I4(A0[24]),
        .O(register_reg_r1_0_31_30_31_0[0]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    ALUresult0__203_carry_i_1
       (.I0(\u_ALU_1/B_signed [6]),
        .I1(A0[6]),
        .I2(\pc_reg[1] ),
        .I3(A0[7]),
        .I4(\u_ALU_1/B_signed [7]),
        .O(ALUresult0__187_carry_i_10_0[3]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    ALUresult0__203_carry_i_2
       (.I0(\u_ALU_1/B_signed [4]),
        .I1(A0[4]),
        .I2(\pc_reg[1] ),
        .I3(A0[5]),
        .I4(\u_ALU_1/B_signed [5]),
        .O(ALUresult0__187_carry_i_10_0[2]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    ALUresult0__203_carry_i_3
       (.I0(\u_ALU_1/B_signed [2]),
        .I1(A0[2]),
        .I2(\pc_reg[1] ),
        .I3(A0[3]),
        .I4(\u_ALU_1/B_signed [3]),
        .O(ALUresult0__187_carry_i_10_0[1]));
  LUT5 #(
    .INIT(32'h2FFF0A2A)) 
    ALUresult0__203_carry_i_4
       (.I0(\u_ALU_1/B_signed [0]),
        .I1(A0[0]),
        .I2(\pc_reg[1] ),
        .I3(A0[1]),
        .I4(\u_ALU_1/B_signed [1]),
        .O(ALUresult0__187_carry_i_10_0[0]));
  LUT5 #(
    .INIT(32'h90050905)) 
    ALUresult0__203_carry_i_5
       (.I0(\u_ALU_1/B_signed [7]),
        .I1(A0[7]),
        .I2(\u_ALU_1/B_signed [6]),
        .I3(\pc_reg[1] ),
        .I4(A0[6]),
        .O(register_reg_r1_0_31_6_11_0[3]));
  LUT5 #(
    .INIT(32'h90050905)) 
    ALUresult0__203_carry_i_6
       (.I0(\u_ALU_1/B_signed [5]),
        .I1(A0[5]),
        .I2(\u_ALU_1/B_signed [4]),
        .I3(\pc_reg[1] ),
        .I4(A0[4]),
        .O(register_reg_r1_0_31_6_11_0[2]));
  LUT5 #(
    .INIT(32'h90050905)) 
    ALUresult0__203_carry_i_7
       (.I0(\u_ALU_1/B_signed [3]),
        .I1(A0[3]),
        .I2(\u_ALU_1/B_signed [2]),
        .I3(\pc_reg[1] ),
        .I4(A0[2]),
        .O(register_reg_r1_0_31_6_11_0[1]));
  LUT5 #(
    .INIT(32'h90050905)) 
    ALUresult0__203_carry_i_8
       (.I0(\u_ALU_1/B_signed [1]),
        .I1(A0[1]),
        .I2(\u_ALU_1/B_signed [0]),
        .I3(\pc_reg[1] ),
        .I4(A0[0]),
        .O(register_reg_r1_0_31_6_11_0[0]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0__93_carry__0_i_1
       (.I0(\pc_reg[1] ),
        .I1(A0[7]),
        .O(register_reg_r1_0_31_6_11_1[3]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0__93_carry__0_i_2
       (.I0(\pc_reg[1] ),
        .I1(A0[6]),
        .O(register_reg_r1_0_31_6_11_1[2]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0__93_carry__0_i_3
       (.I0(\pc_reg[1] ),
        .I1(A0[5]),
        .O(register_reg_r1_0_31_6_11_1[1]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0__93_carry__0_i_4
       (.I0(\pc_reg[1] ),
        .I1(A0[4]),
        .O(register_reg_r1_0_31_6_11_1[0]));
  LUT4 #(
    .INIT(16'h8777)) 
    ALUresult0__93_carry__0_i_5
       (.I0(A0[7]),
        .I1(\pc_reg[1] ),
        .I2(B0[7]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .O(ALUresult0_carry_i_10_1[3]));
  LUT4 #(
    .INIT(16'h8777)) 
    ALUresult0__93_carry__0_i_6
       (.I0(A0[6]),
        .I1(\pc_reg[1] ),
        .I2(B0[6]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .O(ALUresult0_carry_i_10_1[2]));
  LUT4 #(
    .INIT(16'h8777)) 
    ALUresult0__93_carry__0_i_7
       (.I0(A0[5]),
        .I1(\pc_reg[1] ),
        .I2(B0[5]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .O(ALUresult0_carry_i_10_1[1]));
  LUT4 #(
    .INIT(16'h8777)) 
    ALUresult0__93_carry__0_i_8
       (.I0(A0[4]),
        .I1(\pc_reg[1] ),
        .I2(B0[4]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .O(ALUresult0_carry_i_10_1[0]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0__93_carry__1_i_1
       (.I0(\pc_reg[1] ),
        .I1(A0[11]),
        .O(register_reg_r1_0_31_6_11_2[3]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0__93_carry__1_i_2
       (.I0(\pc_reg[1] ),
        .I1(A0[10]),
        .O(register_reg_r1_0_31_6_11_2[2]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0__93_carry__1_i_3
       (.I0(\pc_reg[1] ),
        .I1(A0[9]),
        .O(register_reg_r1_0_31_6_11_2[1]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0__93_carry__1_i_4
       (.I0(\pc_reg[1] ),
        .I1(A0[8]),
        .O(register_reg_r1_0_31_6_11_2[0]));
  LUT4 #(
    .INIT(16'h8777)) 
    ALUresult0__93_carry__1_i_5
       (.I0(A0[11]),
        .I1(\pc_reg[1] ),
        .I2(B0[11]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .O(ALUresult0_carry_i_10_2[3]));
  LUT4 #(
    .INIT(16'h8777)) 
    ALUresult0__93_carry__1_i_6
       (.I0(A0[10]),
        .I1(\pc_reg[1] ),
        .I2(B0[10]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .O(ALUresult0_carry_i_10_2[2]));
  LUT4 #(
    .INIT(16'h8777)) 
    ALUresult0__93_carry__1_i_7
       (.I0(A0[9]),
        .I1(\pc_reg[1] ),
        .I2(B0[9]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .O(ALUresult0_carry_i_10_2[1]));
  LUT4 #(
    .INIT(16'h8777)) 
    ALUresult0__93_carry__1_i_8
       (.I0(A0[8]),
        .I1(\pc_reg[1] ),
        .I2(B0[8]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .O(ALUresult0_carry_i_10_2[0]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0__93_carry__2_i_1
       (.I0(\pc_reg[1] ),
        .I1(A0[15]),
        .O(register_reg_r1_0_31_12_17_1[3]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0__93_carry__2_i_2
       (.I0(\pc_reg[1] ),
        .I1(A0[14]),
        .O(register_reg_r1_0_31_12_17_1[2]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0__93_carry__2_i_3
       (.I0(\pc_reg[1] ),
        .I1(A0[13]),
        .O(register_reg_r1_0_31_12_17_1[1]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0__93_carry__2_i_4
       (.I0(\pc_reg[1] ),
        .I1(A0[12]),
        .O(register_reg_r1_0_31_12_17_1[0]));
  LUT4 #(
    .INIT(16'h8777)) 
    ALUresult0__93_carry__2_i_5
       (.I0(A0[15]),
        .I1(\pc_reg[1] ),
        .I2(B0[15]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .O(ALUresult0_carry_i_10_3[3]));
  LUT4 #(
    .INIT(16'h8777)) 
    ALUresult0__93_carry__2_i_6
       (.I0(A0[14]),
        .I1(\pc_reg[1] ),
        .I2(B0[14]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .O(ALUresult0_carry_i_10_3[2]));
  LUT4 #(
    .INIT(16'h8777)) 
    ALUresult0__93_carry__2_i_7
       (.I0(A0[13]),
        .I1(\pc_reg[1] ),
        .I2(B0[13]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .O(ALUresult0_carry_i_10_3[1]));
  LUT4 #(
    .INIT(16'h8777)) 
    ALUresult0__93_carry__2_i_8
       (.I0(A0[12]),
        .I1(\pc_reg[1] ),
        .I2(B0[12]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .O(ALUresult0_carry_i_10_3[0]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0__93_carry__3_i_1
       (.I0(\pc_reg[1] ),
        .I1(A0[19]),
        .O(register_reg_r1_0_31_18_23_1[3]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0__93_carry__3_i_2
       (.I0(\pc_reg[1] ),
        .I1(A0[18]),
        .O(register_reg_r1_0_31_18_23_1[2]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0__93_carry__3_i_3
       (.I0(\pc_reg[1] ),
        .I1(A0[17]),
        .O(register_reg_r1_0_31_18_23_1[1]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0__93_carry__3_i_4
       (.I0(\pc_reg[1] ),
        .I1(A0[16]),
        .O(register_reg_r1_0_31_18_23_1[0]));
  LUT4 #(
    .INIT(16'h8777)) 
    ALUresult0__93_carry__3_i_5
       (.I0(A0[19]),
        .I1(\pc_reg[1] ),
        .I2(B0[19]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .O(ALUresult0_carry_i_10_4[3]));
  LUT4 #(
    .INIT(16'h8777)) 
    ALUresult0__93_carry__3_i_6
       (.I0(A0[18]),
        .I1(\pc_reg[1] ),
        .I2(B0[18]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .O(ALUresult0_carry_i_10_4[2]));
  LUT4 #(
    .INIT(16'h8777)) 
    ALUresult0__93_carry__3_i_7
       (.I0(A0[17]),
        .I1(\pc_reg[1] ),
        .I2(B0[17]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .O(ALUresult0_carry_i_10_4[1]));
  LUT4 #(
    .INIT(16'h8777)) 
    ALUresult0__93_carry__3_i_8
       (.I0(A0[16]),
        .I1(\pc_reg[1] ),
        .I2(B0[16]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .O(ALUresult0_carry_i_10_4[0]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0__93_carry__4_i_1
       (.I0(\pc_reg[1] ),
        .I1(A0[23]),
        .O(register_reg_r1_0_31_18_23_2[3]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0__93_carry__4_i_2
       (.I0(\pc_reg[1] ),
        .I1(A0[22]),
        .O(register_reg_r1_0_31_18_23_2[2]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0__93_carry__4_i_3
       (.I0(\pc_reg[1] ),
        .I1(A0[21]),
        .O(register_reg_r1_0_31_18_23_2[1]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0__93_carry__4_i_4
       (.I0(\pc_reg[1] ),
        .I1(A0[20]),
        .O(register_reg_r1_0_31_18_23_2[0]));
  LUT4 #(
    .INIT(16'h8777)) 
    ALUresult0__93_carry__4_i_5
       (.I0(A0[23]),
        .I1(\pc_reg[1] ),
        .I2(B0[23]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .O(ALUresult0_carry_i_10_5[3]));
  LUT4 #(
    .INIT(16'h8777)) 
    ALUresult0__93_carry__4_i_6
       (.I0(A0[22]),
        .I1(\pc_reg[1] ),
        .I2(B0[22]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .O(ALUresult0_carry_i_10_5[2]));
  LUT4 #(
    .INIT(16'h8777)) 
    ALUresult0__93_carry__4_i_7
       (.I0(A0[21]),
        .I1(\pc_reg[1] ),
        .I2(B0[21]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .O(ALUresult0_carry_i_10_5[1]));
  LUT4 #(
    .INIT(16'h8777)) 
    ALUresult0__93_carry__4_i_8
       (.I0(A0[20]),
        .I1(\pc_reg[1] ),
        .I2(B0[20]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .O(ALUresult0_carry_i_10_5[0]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0__93_carry__5_i_1
       (.I0(\pc_reg[1] ),
        .I1(A0[27]),
        .O(register_reg_r1_0_31_24_29_0[3]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0__93_carry__5_i_2
       (.I0(\pc_reg[1] ),
        .I1(A0[26]),
        .O(register_reg_r1_0_31_24_29_0[2]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0__93_carry__5_i_3
       (.I0(\pc_reg[1] ),
        .I1(A0[25]),
        .O(register_reg_r1_0_31_24_29_0[1]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0__93_carry__5_i_4
       (.I0(\pc_reg[1] ),
        .I1(A0[24]),
        .O(register_reg_r1_0_31_24_29_0[0]));
  LUT4 #(
    .INIT(16'h8777)) 
    ALUresult0__93_carry__5_i_5
       (.I0(A0[27]),
        .I1(\pc_reg[1] ),
        .I2(B0[27]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .O(ALUresult0_carry_i_10_6[3]));
  LUT4 #(
    .INIT(16'h8777)) 
    ALUresult0__93_carry__5_i_6
       (.I0(A0[26]),
        .I1(\pc_reg[1] ),
        .I2(B0[26]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .O(ALUresult0_carry_i_10_6[2]));
  LUT4 #(
    .INIT(16'h8777)) 
    ALUresult0__93_carry__5_i_7
       (.I0(A0[25]),
        .I1(\pc_reg[1] ),
        .I2(B0[25]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .O(ALUresult0_carry_i_10_6[1]));
  LUT4 #(
    .INIT(16'h8777)) 
    ALUresult0__93_carry__5_i_8
       (.I0(A0[24]),
        .I1(\pc_reg[1] ),
        .I2(B0[24]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .O(ALUresult0_carry_i_10_6[0]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0__93_carry__6_i_1
       (.I0(\pc_reg[1] ),
        .I1(A0[30]),
        .O(register_reg_r1_0_31_30_31_2[2]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0__93_carry__6_i_2
       (.I0(\pc_reg[1] ),
        .I1(A0[29]),
        .O(register_reg_r1_0_31_30_31_2[1]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0__93_carry__6_i_3
       (.I0(\pc_reg[1] ),
        .I1(A0[28]),
        .O(register_reg_r1_0_31_30_31_2[0]));
  LUT4 #(
    .INIT(16'h8777)) 
    ALUresult0__93_carry__6_i_4
       (.I0(A0[31]),
        .I1(\pc_reg[1] ),
        .I2(B0[31]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .O(ALUresult0_carry_i_10[3]));
  LUT4 #(
    .INIT(16'h8777)) 
    ALUresult0__93_carry__6_i_5
       (.I0(A0[30]),
        .I1(\pc_reg[1] ),
        .I2(B0[30]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .O(ALUresult0_carry_i_10[2]));
  LUT4 #(
    .INIT(16'h8777)) 
    ALUresult0__93_carry__6_i_6
       (.I0(A0[29]),
        .I1(\pc_reg[1] ),
        .I2(B0[29]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .O(ALUresult0_carry_i_10[1]));
  LUT4 #(
    .INIT(16'h8777)) 
    ALUresult0__93_carry__6_i_7
       (.I0(A0[28]),
        .I1(\pc_reg[1] ),
        .I2(B0[28]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .O(ALUresult0_carry_i_10[0]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0__93_carry_i_1
       (.I0(\pc_reg[1] ),
        .I1(A0[3]),
        .O(DI[3]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0__93_carry_i_2
       (.I0(\pc_reg[1] ),
        .I1(A0[2]),
        .O(DI[2]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0__93_carry_i_3
       (.I0(\pc_reg[1] ),
        .I1(A0[1]),
        .O(DI[1]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0__93_carry_i_4
       (.I0(\pc_reg[1] ),
        .I1(A0[0]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h8777)) 
    ALUresult0__93_carry_i_5
       (.I0(A0[3]),
        .I1(\pc_reg[1] ),
        .I2(B0[3]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .O(ALUresult0_carry_i_10_0[3]));
  LUT4 #(
    .INIT(16'h8777)) 
    ALUresult0__93_carry_i_6
       (.I0(A0[2]),
        .I1(\pc_reg[1] ),
        .I2(B0[2]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .O(ALUresult0_carry_i_10_0[2]));
  LUT4 #(
    .INIT(16'h8777)) 
    ALUresult0__93_carry_i_7
       (.I0(A0[1]),
        .I1(\pc_reg[1] ),
        .I2(B0[1]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .O(ALUresult0_carry_i_10_0[1]));
  LUT4 #(
    .INIT(16'h8777)) 
    ALUresult0__93_carry_i_8
       (.I0(A0[0]),
        .I1(\pc_reg[1] ),
        .I2(B0[0]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .O(ALUresult0_carry_i_10_0[0]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__0_i_1
       (.I0(\pc_reg[1] ),
        .I1(A0[7]),
        .O(JrPC[7]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__0_i_2
       (.I0(\pc_reg[1] ),
        .I1(A0[6]),
        .O(JrPC[6]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__0_i_3
       (.I0(\pc_reg[1] ),
        .I1(A0[5]),
        .O(JrPC[5]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__0_i_4
       (.I0(\pc_reg[1] ),
        .I1(A0[4]),
        .O(JrPC[4]));
  LUT6 #(
    .INIT(64'h7777788888887888)) 
    ALUresult0_carry__0_i_5
       (.I0(A0[7]),
        .I1(\pc_reg[1] ),
        .I2(B0[7]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(ALUSrc_in),
        .I5(douta[7]),
        .O(\bbstub_douta[7] [3]));
  LUT6 #(
    .INIT(64'h7777788888887888)) 
    ALUresult0_carry__0_i_6
       (.I0(A0[6]),
        .I1(\pc_reg[1] ),
        .I2(B0[6]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(ALUSrc_in),
        .I5(douta[6]),
        .O(\bbstub_douta[7] [2]));
  LUT6 #(
    .INIT(64'h7777788888887888)) 
    ALUresult0_carry__0_i_7
       (.I0(A0[5]),
        .I1(\pc_reg[1] ),
        .I2(B0[5]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(ALUSrc_in),
        .I5(douta[5]),
        .O(\bbstub_douta[7] [1]));
  LUT6 #(
    .INIT(64'h7777788888887888)) 
    ALUresult0_carry__0_i_8
       (.I0(A0[4]),
        .I1(\pc_reg[1] ),
        .I2(B0[4]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(ALUSrc_in),
        .I5(douta[4]),
        .O(\bbstub_douta[7] [0]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__1_i_1
       (.I0(\pc_reg[1] ),
        .I1(A0[11]),
        .O(JrPC[11]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__1_i_2
       (.I0(\pc_reg[1] ),
        .I1(A0[10]),
        .O(JrPC[10]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__1_i_3
       (.I0(\pc_reg[1] ),
        .I1(A0[9]),
        .O(JrPC[9]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__1_i_4
       (.I0(\pc_reg[1] ),
        .I1(A0[8]),
        .O(JrPC[8]));
  LUT6 #(
    .INIT(64'h7777788888887888)) 
    ALUresult0_carry__1_i_5
       (.I0(A0[11]),
        .I1(\pc_reg[1] ),
        .I2(B0[11]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(ALUSrc_in),
        .I5(douta[11]),
        .O(\bbstub_douta[11] [3]));
  LUT6 #(
    .INIT(64'h7777788888887888)) 
    ALUresult0_carry__1_i_6
       (.I0(A0[10]),
        .I1(\pc_reg[1] ),
        .I2(B0[10]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(ALUSrc_in),
        .I5(douta[10]),
        .O(\bbstub_douta[11] [2]));
  LUT6 #(
    .INIT(64'h7777788888887888)) 
    ALUresult0_carry__1_i_7
       (.I0(A0[9]),
        .I1(\pc_reg[1] ),
        .I2(B0[9]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(ALUSrc_in),
        .I5(douta[9]),
        .O(\bbstub_douta[11] [1]));
  LUT6 #(
    .INIT(64'h7777788888887888)) 
    ALUresult0_carry__1_i_8
       (.I0(A0[8]),
        .I1(\pc_reg[1] ),
        .I2(B0[8]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(ALUSrc_in),
        .I5(douta[8]),
        .O(\bbstub_douta[11] [0]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__2_i_1
       (.I0(\pc_reg[1] ),
        .I1(A0[15]),
        .O(JrPC[15]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__2_i_2
       (.I0(\pc_reg[1] ),
        .I1(A0[14]),
        .O(JrPC[14]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__2_i_3
       (.I0(\pc_reg[1] ),
        .I1(A0[13]),
        .O(JrPC[13]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__2_i_4
       (.I0(\pc_reg[1] ),
        .I1(A0[12]),
        .O(JrPC[12]));
  LUT6 #(
    .INIT(64'h7777788888887888)) 
    ALUresult0_carry__2_i_5
       (.I0(A0[15]),
        .I1(\pc_reg[1] ),
        .I2(B0[15]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(ALUSrc_in),
        .I5(douta[15]),
        .O(\bbstub_douta[15] [3]));
  LUT6 #(
    .INIT(64'h7777788888887888)) 
    ALUresult0_carry__2_i_6
       (.I0(A0[14]),
        .I1(\pc_reg[1] ),
        .I2(B0[14]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(ALUSrc_in),
        .I5(douta[14]),
        .O(\bbstub_douta[15] [2]));
  LUT6 #(
    .INIT(64'h7777788888887888)) 
    ALUresult0_carry__2_i_7
       (.I0(A0[13]),
        .I1(\pc_reg[1] ),
        .I2(B0[13]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(ALUSrc_in),
        .I5(douta[13]),
        .O(\bbstub_douta[15] [1]));
  LUT6 #(
    .INIT(64'h7777788888887888)) 
    ALUresult0_carry__2_i_8
       (.I0(A0[12]),
        .I1(\pc_reg[1] ),
        .I2(B0[12]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(ALUSrc_in),
        .I5(douta[12]),
        .O(\bbstub_douta[15] [0]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__3_i_1
       (.I0(\pc_reg[1] ),
        .I1(A0[19]),
        .O(JrPC[19]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__3_i_2
       (.I0(\pc_reg[1] ),
        .I1(A0[18]),
        .O(JrPC[18]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__3_i_3
       (.I0(\pc_reg[1] ),
        .I1(A0[17]),
        .O(JrPC[17]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__3_i_4
       (.I0(\pc_reg[1] ),
        .I1(A0[16]),
        .O(JrPC[16]));
  LUT6 #(
    .INIT(64'h8787878777878787)) 
    ALUresult0_carry__3_i_5
       (.I0(A0[19]),
        .I1(\pc_reg[1] ),
        .I2(ALUresult0__203_carry__2_i_5_0),
        .I3(B0[19]),
        .I4(\result_OBUF[0]_inst_i_4_0 ),
        .I5(ALUSrc_in),
        .O(register_reg_r1_0_31_0_5_i_8_0[3]));
  LUT6 #(
    .INIT(64'h8787878777878787)) 
    ALUresult0_carry__3_i_6
       (.I0(A0[18]),
        .I1(\pc_reg[1] ),
        .I2(ALUresult0__203_carry__2_i_5_0),
        .I3(B0[18]),
        .I4(\result_OBUF[0]_inst_i_4_0 ),
        .I5(ALUSrc_in),
        .O(register_reg_r1_0_31_0_5_i_8_0[2]));
  LUT6 #(
    .INIT(64'h8787878777878787)) 
    ALUresult0_carry__3_i_7
       (.I0(A0[17]),
        .I1(\pc_reg[1] ),
        .I2(ALUresult0__203_carry__2_i_5_0),
        .I3(B0[17]),
        .I4(\result_OBUF[0]_inst_i_4_0 ),
        .I5(ALUSrc_in),
        .O(register_reg_r1_0_31_0_5_i_8_0[1]));
  LUT6 #(
    .INIT(64'h8787878777878787)) 
    ALUresult0_carry__3_i_8
       (.I0(A0[16]),
        .I1(\pc_reg[1] ),
        .I2(ALUresult0__203_carry__2_i_5_0),
        .I3(B0[16]),
        .I4(\result_OBUF[0]_inst_i_4_0 ),
        .I5(ALUSrc_in),
        .O(register_reg_r1_0_31_0_5_i_8_0[0]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__4_i_1
       (.I0(\pc_reg[1] ),
        .I1(A0[23]),
        .O(JrPC[23]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__4_i_2
       (.I0(\pc_reg[1] ),
        .I1(A0[22]),
        .O(JrPC[22]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__4_i_3
       (.I0(\pc_reg[1] ),
        .I1(A0[21]),
        .O(JrPC[21]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__4_i_4
       (.I0(\pc_reg[1] ),
        .I1(A0[20]),
        .O(JrPC[20]));
  LUT6 #(
    .INIT(64'h8787878777878787)) 
    ALUresult0_carry__4_i_5
       (.I0(A0[23]),
        .I1(\pc_reg[1] ),
        .I2(ALUresult0__203_carry__2_i_5_0),
        .I3(B0[23]),
        .I4(\result_OBUF[0]_inst_i_4_0 ),
        .I5(ALUSrc_in),
        .O(register_reg_r1_0_31_0_5_i_8_1[3]));
  LUT6 #(
    .INIT(64'h8787878777878787)) 
    ALUresult0_carry__4_i_6
       (.I0(A0[22]),
        .I1(\pc_reg[1] ),
        .I2(ALUresult0__203_carry__2_i_5_0),
        .I3(B0[22]),
        .I4(\result_OBUF[0]_inst_i_4_0 ),
        .I5(ALUSrc_in),
        .O(register_reg_r1_0_31_0_5_i_8_1[2]));
  LUT6 #(
    .INIT(64'h8787878777878787)) 
    ALUresult0_carry__4_i_7
       (.I0(A0[21]),
        .I1(\pc_reg[1] ),
        .I2(ALUresult0__203_carry__2_i_5_0),
        .I3(B0[21]),
        .I4(\result_OBUF[0]_inst_i_4_0 ),
        .I5(ALUSrc_in),
        .O(register_reg_r1_0_31_0_5_i_8_1[1]));
  LUT6 #(
    .INIT(64'h8787878777878787)) 
    ALUresult0_carry__4_i_8
       (.I0(A0[20]),
        .I1(\pc_reg[1] ),
        .I2(ALUresult0__203_carry__2_i_5_0),
        .I3(B0[20]),
        .I4(\result_OBUF[0]_inst_i_4_0 ),
        .I5(ALUSrc_in),
        .O(register_reg_r1_0_31_0_5_i_8_1[0]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__5_i_1
       (.I0(\pc_reg[1] ),
        .I1(A0[27]),
        .O(JrPC[27]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__5_i_2
       (.I0(\pc_reg[1] ),
        .I1(A0[26]),
        .O(JrPC[26]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__5_i_3
       (.I0(\pc_reg[1] ),
        .I1(A0[25]),
        .O(JrPC[25]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__5_i_4
       (.I0(\pc_reg[1] ),
        .I1(A0[24]),
        .O(JrPC[24]));
  LUT6 #(
    .INIT(64'h8787878777878787)) 
    ALUresult0_carry__5_i_5
       (.I0(A0[27]),
        .I1(\pc_reg[1] ),
        .I2(ALUresult0__203_carry__2_i_5_0),
        .I3(B0[27]),
        .I4(\result_OBUF[0]_inst_i_4_0 ),
        .I5(ALUSrc_in),
        .O(register_reg_r1_0_31_0_5_i_8_2[3]));
  LUT6 #(
    .INIT(64'h8787878777878787)) 
    ALUresult0_carry__5_i_6
       (.I0(A0[26]),
        .I1(\pc_reg[1] ),
        .I2(ALUresult0__203_carry__2_i_5_0),
        .I3(B0[26]),
        .I4(\result_OBUF[0]_inst_i_4_0 ),
        .I5(ALUSrc_in),
        .O(register_reg_r1_0_31_0_5_i_8_2[2]));
  LUT6 #(
    .INIT(64'h8787878777878787)) 
    ALUresult0_carry__5_i_7
       (.I0(A0[25]),
        .I1(\pc_reg[1] ),
        .I2(ALUresult0__203_carry__2_i_5_0),
        .I3(B0[25]),
        .I4(\result_OBUF[0]_inst_i_4_0 ),
        .I5(ALUSrc_in),
        .O(register_reg_r1_0_31_0_5_i_8_2[1]));
  LUT6 #(
    .INIT(64'h8787878777878787)) 
    ALUresult0_carry__5_i_8
       (.I0(A0[24]),
        .I1(\pc_reg[1] ),
        .I2(ALUresult0__203_carry__2_i_5_0),
        .I3(B0[24]),
        .I4(\result_OBUF[0]_inst_i_4_0 ),
        .I5(ALUSrc_in),
        .O(register_reg_r1_0_31_0_5_i_8_2[0]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__6_i_1
       (.I0(\pc_reg[1] ),
        .I1(A0[30]),
        .O(JrPC[30]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__6_i_2
       (.I0(\pc_reg[1] ),
        .I1(A0[29]),
        .O(JrPC[29]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry__6_i_3
       (.I0(\pc_reg[1] ),
        .I1(A0[28]),
        .O(JrPC[28]));
  LUT6 #(
    .INIT(64'h8787878777878787)) 
    ALUresult0_carry__6_i_4
       (.I0(A0[31]),
        .I1(\pc_reg[1] ),
        .I2(ALUresult0__203_carry__2_i_5_0),
        .I3(B0[31]),
        .I4(\result_OBUF[0]_inst_i_4_0 ),
        .I5(ALUSrc_in),
        .O(register_reg_r1_0_31_0_5_i_8[3]));
  LUT6 #(
    .INIT(64'h8787878777878787)) 
    ALUresult0_carry__6_i_5
       (.I0(A0[30]),
        .I1(\pc_reg[1] ),
        .I2(ALUresult0__203_carry__2_i_5_0),
        .I3(B0[30]),
        .I4(\result_OBUF[0]_inst_i_4_0 ),
        .I5(ALUSrc_in),
        .O(register_reg_r1_0_31_0_5_i_8[2]));
  LUT6 #(
    .INIT(64'h8787878777878787)) 
    ALUresult0_carry__6_i_6
       (.I0(A0[29]),
        .I1(\pc_reg[1] ),
        .I2(ALUresult0__203_carry__2_i_5_0),
        .I3(B0[29]),
        .I4(\result_OBUF[0]_inst_i_4_0 ),
        .I5(ALUSrc_in),
        .O(register_reg_r1_0_31_0_5_i_8[1]));
  LUT6 #(
    .INIT(64'h8787878777878787)) 
    ALUresult0_carry__6_i_7
       (.I0(A0[28]),
        .I1(\pc_reg[1] ),
        .I2(ALUresult0__203_carry__2_i_5_0),
        .I3(B0[28]),
        .I4(\result_OBUF[0]_inst_i_4_0 ),
        .I5(ALUSrc_in),
        .O(register_reg_r1_0_31_0_5_i_8[0]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry_i_1
       (.I0(\pc_reg[1] ),
        .I1(A0[3]),
        .O(JrPC[3]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry_i_2
       (.I0(\pc_reg[1] ),
        .I1(A0[2]),
        .O(JrPC[2]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry_i_3
       (.I0(\pc_reg[1] ),
        .I1(A0[1]),
        .O(JrPC[1]));
  LUT2 #(
    .INIT(4'h8)) 
    ALUresult0_carry_i_4
       (.I0(\pc_reg[1] ),
        .I1(A0[0]),
        .O(JrPC[0]));
  LUT6 #(
    .INIT(64'h7777788888887888)) 
    ALUresult0_carry_i_5
       (.I0(A0[3]),
        .I1(\pc_reg[1] ),
        .I2(B0[3]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(ALUSrc_in),
        .I5(douta[3]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h7777788888887888)) 
    ALUresult0_carry_i_6
       (.I0(A0[2]),
        .I1(\pc_reg[1] ),
        .I2(B0[2]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(ALUSrc_in),
        .I5(douta[2]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h7777788888887888)) 
    ALUresult0_carry_i_7
       (.I0(A0[1]),
        .I1(\pc_reg[1] ),
        .I2(B0[1]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(ALUSrc_in),
        .I5(douta[1]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h7777788888887888)) 
    ALUresult0_carry_i_8
       (.I0(A0[0]),
        .I1(\pc_reg[1] ),
        .I2(B0[0]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(ALUSrc_in),
        .I5(douta[0]),
        .O(S[0]));
  LUT5 #(
    .INIT(32'h00000313)) 
    \pc[15]_i_14 
       (.I0(\pc[15]_i_23_n_0 ),
        .I1(\result[19] ),
        .I2(\result[16]_1 ),
        .I3(\pc[15]_i_24_n_0 ),
        .I4(\result[20] ),
        .O(\pc[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001115555)) 
    \pc[15]_i_15 
       (.I0(\result[31] ),
        .I1(\result_OBUF[31]_inst_i_3_n_0 ),
        .I2(\result_OBUF[31]_inst_i_4_n_0 ),
        .I3(\result[30] ),
        .I4(\result[16]_1 ),
        .I5(\result_OBUF[31]_inst_i_6 [12]),
        .O(\pc[15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000FDDDDD)) 
    \pc[15]_i_20 
       (.I0(\result_OBUF[31]_inst_i_6 [1]),
        .I1(\pc[15]_i_11_1 ),
        .I2(\pc[15]_i_42_n_0 ),
        .I3(\pc[15]_i_43_n_0 ),
        .I4(\result_OBUF[27]_inst_i_9_0 ),
        .I5(\pc[15]_i_11 ),
        .O(\pc[15]_i_44 ));
  LUT6 #(
    .INIT(64'h0000000000010F0F)) 
    \pc[15]_i_22 
       (.I0(\result_OBUF[31]_inst_i_13_6 ),
        .I1(\result_OBUF[5]_inst_i_4_0 ),
        .I2(\pc[15]_i_11 ),
        .I3(\pc[15]_i_46_n_0 ),
        .I4(\result_OBUF[27]_inst_i_9_0 ),
        .I5(\pc[15]_i_11_0 ),
        .O(\pc[15]_i_33 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8F8F888)) 
    \pc[15]_i_23 
       (.I0(\result[16]_0 ),
        .I1(douta[3]),
        .I2(\result[30] ),
        .I3(\result_OBUF[19]_inst_i_6_n_0 ),
        .I4(\pc[15]_i_47_n_0 ),
        .I5(\result_OBUF[19]_inst_i_4_n_0 ),
        .O(\pc[15]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8F8F888)) 
    \pc[15]_i_24 
       (.I0(\result[16]_0 ),
        .I1(douta[4]),
        .I2(\result[30] ),
        .I3(\result_OBUF[20]_inst_i_6_n_0 ),
        .I4(\pc[15]_i_48_n_0 ),
        .I5(\result_OBUF[20]_inst_i_4_n_0 ),
        .O(\pc[15]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA8880)) 
    \pc[15]_i_25 
       (.I0(\result[16]_1 ),
        .I1(\result[30] ),
        .I2(\result_OBUF[25]_inst_i_13_n_0 ),
        .I3(\pc[15]_i_49_n_0 ),
        .I4(\result_OBUF[25]_inst_i_4_n_0 ),
        .I5(\pc[15]_i_16_0 ),
        .O(\pc[15]_i_50 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA8880)) 
    \pc[15]_i_27 
       (.I0(\result[16]_1 ),
        .I1(\result[30] ),
        .I2(\result_OBUF[26]_inst_i_6_n_0 ),
        .I3(\result_OBUF[26]_inst_i_5_n_0 ),
        .I4(\result_OBUF[26]_inst_i_4_n_0 ),
        .I5(\pc[15]_i_16_1 ),
        .O(\pc[15]_i_51 ));
  LUT6 #(
    .INIT(64'hFFFFFFA800000000)) 
    \pc[15]_i_29 
       (.I0(\result_OBUF[3]_inst_i_6_n_0 ),
        .I1(\result_OBUF[9]_inst_i_5_n_0 ),
        .I2(\pc[15]_i_52_n_0 ),
        .I3(\pc[15]_i_53_n_0 ),
        .I4(\result_OBUF[9]_inst_i_4_n_0 ),
        .I5(\result_OBUF[27]_inst_i_9_0 ),
        .O(\result_OBUF[27]_inst_i_4_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFA800000000)) 
    \pc[15]_i_31 
       (.I0(\result_OBUF[3]_inst_i_6_n_0 ),
        .I1(\result_OBUF[10]_inst_i_5_n_0 ),
        .I2(\pc[15]_i_54_n_0 ),
        .I3(\pc[15]_i_55_n_0 ),
        .I4(\result_OBUF[10]_inst_i_4_n_0 ),
        .I5(\result_OBUF[27]_inst_i_9_0 ),
        .O(\result_OBUF[27]_inst_i_4_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFA800000000)) 
    \pc[15]_i_32 
       (.I0(\result_OBUF[3]_inst_i_6_n_0 ),
        .I1(\result_OBUF[11]_inst_i_5_n_0 ),
        .I2(\pc[15]_i_56_n_0 ),
        .I3(\pc[15]_i_57_n_0 ),
        .I4(\result_OBUF[11]_inst_i_4_n_0 ),
        .I5(\result_OBUF[27]_inst_i_9_0 ),
        .O(\result_OBUF[27]_inst_i_4_2 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA88888)) 
    \pc[15]_i_34 
       (.I0(\result[16]_1 ),
        .I1(\result_OBUF[19]_inst_i_4_n_0 ),
        .I2(\pc[15]_i_47_n_0 ),
        .I3(\result_OBUF[19]_inst_i_6_n_0 ),
        .I4(\result[30] ),
        .I5(\pc[15]_i_18_0 ),
        .O(\pc[15]_i_58 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA88888)) 
    \pc[15]_i_35 
       (.I0(\result[16]_1 ),
        .I1(\result_OBUF[18]_inst_i_4_n_0 ),
        .I2(\pc[15]_i_59_n_0 ),
        .I3(\result_OBUF[18]_inst_i_6_n_0 ),
        .I4(\result[30] ),
        .I5(\pc[15]_i_18 ),
        .O(\pc[15]_i_60 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA88888)) 
    \pc[15]_i_36 
       (.I0(\result[16]_1 ),
        .I1(\result_OBUF[20]_inst_i_4_n_0 ),
        .I2(\pc[15]_i_48_n_0 ),
        .I3(\result_OBUF[20]_inst_i_6_n_0 ),
        .I4(\result[30] ),
        .I5(\pc[15]_i_18_1 ),
        .O(\pc[15]_i_61 ));
  LUT6 #(
    .INIT(64'hFFFFFFA800000000)) 
    \pc[15]_i_38 
       (.I0(\result_OBUF[3]_inst_i_6_n_0 ),
        .I1(\result_OBUF[15]_inst_i_5_n_0 ),
        .I2(\pc[15]_i_62_n_0 ),
        .I3(\pc[15]_i_63_n_0 ),
        .I4(\result_OBUF[15]_inst_i_4_n_0 ),
        .I5(\result_OBUF[27]_inst_i_9_0 ),
        .O(\result_OBUF[27]_inst_i_4_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA88888)) 
    \pc[15]_i_39 
       (.I0(\result[16]_1 ),
        .I1(\result_OBUF[16]_inst_i_4_n_0 ),
        .I2(\pc[15]_i_64_n_0 ),
        .I3(\result_OBUF[16]_inst_i_6_n_0 ),
        .I4(\result[30] ),
        .I5(\pc[15]_i_19 ),
        .O(\pc[15]_i_65 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA88888)) 
    \pc[15]_i_40 
       (.I0(\result[16]_1 ),
        .I1(\result_OBUF[28]_inst_i_7_0 ),
        .I2(\pc[15]_i_66_n_0 ),
        .I3(\result_OBUF[17]_inst_i_6_n_0 ),
        .I4(\result[30] ),
        .I5(\pc[15]_i_19_0 ),
        .O(\pc[15]_i_67 ));
  LUT5 #(
    .INIT(32'hFFFEEEEE)) 
    \pc[15]_i_42 
       (.I0(\result_OBUF[4]_inst_i_4_n_0 ),
        .I1(\pc[15]_i_68_n_0 ),
        .I2(\pc[15]_i_69_n_0 ),
        .I3(\result_OBUF[4]_inst_i_5_n_0 ),
        .I4(\result_OBUF[3]_inst_i_6_n_0 ),
        .O(\pc[15]_i_42_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEEEEE)) 
    \pc[15]_i_43 
       (.I0(\result_OBUF[5]_inst_i_4_n_0 ),
        .I1(\pc[15]_i_70_n_0 ),
        .I2(\pc[15]_i_71_n_0 ),
        .I3(\result_OBUF[5]_inst_i_5_n_0 ),
        .I4(\result_OBUF[3]_inst_i_6_n_0 ),
        .O(\pc[15]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFA800000000)) 
    \pc[15]_i_45 
       (.I0(\result_OBUF[3]_inst_i_6_n_0 ),
        .I1(\result_OBUF[4]_inst_i_5_n_0 ),
        .I2(\pc[15]_i_69_n_0 ),
        .I3(\pc[15]_i_68_n_0 ),
        .I4(\result_OBUF[4]_inst_i_4_n_0 ),
        .I5(\result_OBUF[27]_inst_i_9_0 ),
        .O(\result_OBUF[27]_inst_i_4_4 ));
  LUT5 #(
    .INIT(32'hFFFEEEEE)) 
    \pc[15]_i_46 
       (.I0(\result_OBUF[11]_inst_i_4_n_0 ),
        .I1(\pc[15]_i_57_n_0 ),
        .I2(\pc[15]_i_56_n_0 ),
        .I3(\result_OBUF[11]_inst_i_5_n_0 ),
        .I4(\result_OBUF[3]_inst_i_6_n_0 ),
        .O(\pc[15]_i_46_n_0 ));
  LUT4 #(
    .INIT(16'h00CA)) 
    \pc[15]_i_47 
       (.I0(\result_OBUF[19]_inst_i_7_n_0 ),
        .I1(\result_OBUF[19]_inst_i_8_n_0 ),
        .I2(\result_OBUF[0]_inst_i_9_0 [0]),
        .I3(\result_OBUF[31]_inst_i_13_n_0 ),
        .O(\pc[15]_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h00CA)) 
    \pc[15]_i_48 
       (.I0(\result_OBUF[20]_inst_i_7_n_0 ),
        .I1(\result_OBUF[20]_inst_i_8_n_0 ),
        .I2(\result_OBUF[0]_inst_i_9_0 [0]),
        .I3(\result_OBUF[31]_inst_i_13_n_0 ),
        .O(\pc[15]_i_48_n_0 ));
  LUT4 #(
    .INIT(16'h00CA)) 
    \pc[15]_i_49 
       (.I0(\result_OBUF[25]_inst_i_14_n_0 ),
        .I1(\result_OBUF[25]_inst_i_15_n_0 ),
        .I2(\result_OBUF[0]_inst_i_9_0 [0]),
        .I3(\result_OBUF[31]_inst_i_13_n_0 ),
        .O(\pc[15]_i_49_n_0 ));
  LUT4 #(
    .INIT(16'h00CA)) 
    \pc[15]_i_52 
       (.I0(\result_OBUF[9]_inst_i_6_n_0 ),
        .I1(\result_OBUF[9]_inst_i_7_n_0 ),
        .I2(\result_OBUF[0]_inst_i_9_0 [0]),
        .I3(\result_OBUF[31]_inst_i_13_n_0 ),
        .O(\pc[15]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h000000001666E888)) 
    \pc[15]_i_53 
       (.I0(\result_OBUF[0]_inst_i_9_0 [0]),
        .I1(\u_ALU_1/B_signed [9]),
        .I2(\pc_reg[1] ),
        .I3(A0[9]),
        .I4(\result_OBUF[0]_inst_i_9_0 [1]),
        .I5(\result_OBUF[27]_inst_i_9_1 ),
        .O(\pc[15]_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h00CA)) 
    \pc[15]_i_54 
       (.I0(\result_OBUF[10]_inst_i_6_n_0 ),
        .I1(\result_OBUF[10]_inst_i_7_n_0 ),
        .I2(\result_OBUF[0]_inst_i_9_0 [0]),
        .I3(\result_OBUF[31]_inst_i_13_n_0 ),
        .O(\pc[15]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h000000001666E888)) 
    \pc[15]_i_55 
       (.I0(\result_OBUF[0]_inst_i_9_0 [0]),
        .I1(\u_ALU_1/B_signed [10]),
        .I2(\pc_reg[1] ),
        .I3(A0[10]),
        .I4(\result_OBUF[0]_inst_i_9_0 [1]),
        .I5(\result_OBUF[27]_inst_i_9_1 ),
        .O(\pc[15]_i_55_n_0 ));
  LUT4 #(
    .INIT(16'h00CA)) 
    \pc[15]_i_56 
       (.I0(\result_OBUF[11]_inst_i_6_n_0 ),
        .I1(\result_OBUF[11]_inst_i_7_n_0 ),
        .I2(\result_OBUF[0]_inst_i_9_0 [0]),
        .I3(\result_OBUF[31]_inst_i_13_n_0 ),
        .O(\pc[15]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h000000001666E888)) 
    \pc[15]_i_57 
       (.I0(\result_OBUF[0]_inst_i_9_0 [0]),
        .I1(\u_ALU_1/B_signed [11]),
        .I2(\pc_reg[1] ),
        .I3(A0[11]),
        .I4(\result_OBUF[0]_inst_i_9_0 [1]),
        .I5(\result_OBUF[27]_inst_i_9_1 ),
        .O(\pc[15]_i_57_n_0 ));
  LUT4 #(
    .INIT(16'h00CA)) 
    \pc[15]_i_59 
       (.I0(\result_OBUF[18]_inst_i_7_n_0 ),
        .I1(\result_OBUF[18]_inst_i_8_n_0 ),
        .I2(\result_OBUF[0]_inst_i_9_0 [0]),
        .I3(\result_OBUF[31]_inst_i_13_n_0 ),
        .O(\pc[15]_i_59_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pc[15]_i_6 
       (.I0(douta[4]),
        .I1(douta[5]),
        .O(\bbstub_douta[5] ));
  LUT4 #(
    .INIT(16'h00CA)) 
    \pc[15]_i_62 
       (.I0(\result_OBUF[15]_inst_i_6_n_0 ),
        .I1(\result_OBUF[15]_inst_i_7_n_0 ),
        .I2(\result_OBUF[0]_inst_i_9_0 [0]),
        .I3(\result_OBUF[31]_inst_i_13_n_0 ),
        .O(\pc[15]_i_62_n_0 ));
  LUT6 #(
    .INIT(64'h000000001666E888)) 
    \pc[15]_i_63 
       (.I0(\result_OBUF[0]_inst_i_9_0 [0]),
        .I1(\u_ALU_1/B_signed [15]),
        .I2(\pc_reg[1] ),
        .I3(A0[15]),
        .I4(\result_OBUF[0]_inst_i_9_0 [1]),
        .I5(\result_OBUF[27]_inst_i_9_1 ),
        .O(\pc[15]_i_63_n_0 ));
  LUT4 #(
    .INIT(16'h00CA)) 
    \pc[15]_i_64 
       (.I0(\result_OBUF[16]_inst_i_7_n_0 ),
        .I1(\result_OBUF[16]_inst_i_8_n_0 ),
        .I2(\result_OBUF[0]_inst_i_9_0 [0]),
        .I3(\result_OBUF[31]_inst_i_13_n_0 ),
        .O(\pc[15]_i_64_n_0 ));
  LUT4 #(
    .INIT(16'h00CA)) 
    \pc[15]_i_66 
       (.I0(\result_OBUF[17]_inst_i_7_n_0 ),
        .I1(\result_OBUF[17]_inst_i_8_n_0 ),
        .I2(\result_OBUF[0]_inst_i_9_0 [0]),
        .I3(\result_OBUF[31]_inst_i_13_n_0 ),
        .O(\pc[15]_i_66_n_0 ));
  LUT6 #(
    .INIT(64'h000000001666E888)) 
    \pc[15]_i_68 
       (.I0(\result_OBUF[0]_inst_i_9_0 [0]),
        .I1(\u_ALU_1/B_signed [4]),
        .I2(\pc_reg[1] ),
        .I3(A0[4]),
        .I4(\result_OBUF[0]_inst_i_9_0 [1]),
        .I5(\result_OBUF[27]_inst_i_9_1 ),
        .O(\pc[15]_i_68_n_0 ));
  LUT4 #(
    .INIT(16'h00CA)) 
    \pc[15]_i_69 
       (.I0(\result_OBUF[4]_inst_i_6_n_0 ),
        .I1(\result_OBUF[4]_inst_i_7_n_0 ),
        .I2(\result_OBUF[0]_inst_i_9_0 [0]),
        .I3(\result_OBUF[31]_inst_i_13_n_0 ),
        .O(\pc[15]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'h000000001666E888)) 
    \pc[15]_i_70 
       (.I0(\result_OBUF[0]_inst_i_9_0 [0]),
        .I1(\u_ALU_1/B_signed [5]),
        .I2(\pc_reg[1] ),
        .I3(A0[5]),
        .I4(\result_OBUF[0]_inst_i_9_0 [1]),
        .I5(\result_OBUF[27]_inst_i_9_1 ),
        .O(\pc[15]_i_70_n_0 ));
  LUT4 #(
    .INIT(16'h00CA)) 
    \pc[15]_i_71 
       (.I0(\result_OBUF[5]_inst_i_6_n_0 ),
        .I1(\result_OBUF[5]_inst_i_7_n_0 ),
        .I2(\result_OBUF[0]_inst_i_9_0 [0]),
        .I3(\result_OBUF[31]_inst_i_13_n_0 ),
        .O(\pc[15]_i_71_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \pc[15]_i_8 
       (.I0(\result_OBUF[31]_inst_i_6 [6]),
        .I1(\pc[15]_i_14_n_0 ),
        .I2(result_OBUF[15]),
        .I3(result_OBUF[16]),
        .I4(\pc[15]_i_15_n_0 ),
        .I5(\pc[1]_i_3 ),
        .O(\pc[15]_i_16 ));
  LUT6 #(
    .INIT(64'h0045004500000045)) 
    \pc[15]_i_9 
       (.I0(\result_OBUF[31]_inst_i_6 [9]),
        .I1(\result_OBUF[31]_inst_i_6 [8]),
        .I2(\result_OBUF[31]_inst_i_6 [7]),
        .I3(\result_OBUF[31]_inst_i_6 [11]),
        .I4(\result_OBUF[31]_inst_i_6 [10]),
        .I5(result_OBUF[17]),
        .O(\result_OBUF[28]_inst_i_1 ));
  LUT6 #(
    .INIT(64'h0045004500000045)) 
    \pc[1]_i_5 
       (.I0(result_OBUF[14]),
        .I1(\result_OBUF[31]_inst_i_6 [2]),
        .I2(result_OBUF[13]),
        .I3(\result_OBUF[31]_inst_i_6 [5]),
        .I4(\result_OBUF[31]_inst_i_6 [3]),
        .I5(\result_OBUF[31]_inst_i_6 [4]),
        .O(\result_OBUF[19]_inst_i_1_0 ));
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
        .DIA(result_OBUF[1:0]),
        .DIB(\result_OBUF[31]_inst_i_6 [1:0]),
        .DIC(result_OBUF[3:2]),
        .DID({1'b0,1'b0}),
        .DOA(A0[1:0]),
        .DOB(A0[3:2]),
        .DOC(A0[5:4]),
        .DOD(NLW_register_reg_r1_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out1),
        .WE(register_reg_r1_0_31_0_5_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000088888A88)) 
    register_reg_r1_0_31_0_5_i_1
       (.I0(register_reg_r1_0_31_0_5_i_7_n_0),
        .I1(ALUSrc_in),
        .I2(register_reg_r1_0_31_0_5_i_9_n_0),
        .I3(\bbstub_douta[31] ),
        .I4(douta[4]),
        .I5(SR),
        .O(register_reg_r1_0_31_0_5_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    register_reg_r1_0_31_0_5_i_10
       (.I0(douta[27]),
        .I1(douta[26]),
        .I2(douta[28]),
        .I3(douta[30]),
        .I4(douta[31]),
        .O(\bbstub_douta[31] ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    register_reg_r1_0_31_0_5_i_11
       (.I0(douta[31]),
        .I1(douta[30]),
        .I2(douta[28]),
        .I3(douta[26]),
        .I4(douta[27]),
        .I5(douta[29]),
        .O(RegDst_in));
  LUT3 #(
    .INIT(8'hB8)) 
    register_reg_r1_0_31_0_5_i_2
       (.I0(douta[15]),
        .I1(RegDst_in),
        .I2(douta[20]),
        .O(rW_select[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    register_reg_r1_0_31_0_5_i_3
       (.I0(douta[14]),
        .I1(RegDst_in),
        .I2(douta[19]),
        .O(rW_select[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    register_reg_r1_0_31_0_5_i_4
       (.I0(douta[13]),
        .I1(RegDst_in),
        .I2(douta[18]),
        .O(rW_select[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    register_reg_r1_0_31_0_5_i_5
       (.I0(douta[12]),
        .I1(RegDst_in),
        .I2(douta[17]),
        .O(rW_select[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    register_reg_r1_0_31_0_5_i_6
       (.I0(douta[11]),
        .I1(RegDst_in),
        .I2(douta[16]),
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
  LUT5 #(
    .INIT(32'hC0CCCCEE)) 
    register_reg_r1_0_31_0_5_i_9
       (.I0(douta[0]),
        .I1(douta[3]),
        .I2(douta[2]),
        .I3(douta[5]),
        .I4(douta[1]),
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
  RAM32M_HD12 register_reg_r1_0_31_12_17
       (.ADDRA(douta[25:21]),
        .ADDRB(douta[25:21]),
        .ADDRC(douta[25:21]),
        .ADDRD(rW_select),
        .DIA(result_OBUF[11:10]),
        .DIB(result_OBUF[13:12]),
        .DIC({result_OBUF[14],\result_OBUF[31]_inst_i_6 [2]}),
        .DID({1'b0,1'b0}),
        .DOA(A0[13:12]),
        .DOB(A0[15:14]),
        .DOC(A0[17:16]),
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
  RAM32M_HD13 register_reg_r1_0_31_18_23
       (.ADDRA(douta[25:21]),
        .ADDRB(douta[25:21]),
        .ADDRC(douta[25:21]),
        .ADDRD(rW_select),
        .DIA(\result_OBUF[31]_inst_i_6 [4:3]),
        .DIB(\result_OBUF[31]_inst_i_6 [6:5]),
        .DIC(result_OBUF[16:15]),
        .DID({1'b0,1'b0}),
        .DOA(A0[19:18]),
        .DOB(A0[21:20]),
        .DOC(A0[23:22]),
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
  RAM32M_HD14 register_reg_r1_0_31_24_29
       (.ADDRA(douta[25:21]),
        .ADDRB(douta[25:21]),
        .ADDRC(douta[25:21]),
        .ADDRD(rW_select),
        .DIA(\result_OBUF[31]_inst_i_6 [8:7]),
        .DIB(\result_OBUF[31]_inst_i_6 [10:9]),
        .DIC({\result_OBUF[31]_inst_i_6 [11],result_OBUF[17]}),
        .DID({1'b0,1'b0}),
        .DOA(A0[25:24]),
        .DOB(A0[27:26]),
        .DOC(A0[29:28]),
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
  RAM32M_HD15 register_reg_r1_0_31_30_31
       (.ADDRA(douta[25:21]),
        .ADDRB(douta[25:21]),
        .ADDRC(douta[25:21]),
        .ADDRD(rW_select),
        .DIA(\result_OBUF[31]_inst_i_6 [13:12]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(A0[31:30]),
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
  RAM32M_HD16 register_reg_r1_0_31_6_11
       (.ADDRA(douta[25:21]),
        .ADDRB(douta[25:21]),
        .ADDRC(douta[25:21]),
        .ADDRD(rW_select),
        .DIA(result_OBUF[5:4]),
        .DIB(result_OBUF[7:6]),
        .DIC(result_OBUF[9:8]),
        .DID({1'b0,1'b0}),
        .DOA(A0[7:6]),
        .DOB(A0[9:8]),
        .DOC(A0[11:10]),
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
  RAM32M_HD17 register_reg_r2_0_31_0_5
       (.ADDRA(douta[20:16]),
        .ADDRB(douta[20:16]),
        .ADDRC(douta[20:16]),
        .ADDRD(rW_select),
        .DIA(result_OBUF[1:0]),
        .DIB(\result_OBUF[31]_inst_i_6 [1:0]),
        .DIC(result_OBUF[3:2]),
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
  RAM32M_HD18 register_reg_r2_0_31_12_17
       (.ADDRA(douta[20:16]),
        .ADDRB(douta[20:16]),
        .ADDRC(douta[20:16]),
        .ADDRD(rW_select),
        .DIA(result_OBUF[11:10]),
        .DIB(result_OBUF[13:12]),
        .DIC({result_OBUF[14],\result_OBUF[31]_inst_i_6 [2]}),
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
  RAM32M_HD19 register_reg_r2_0_31_18_23
       (.ADDRA(douta[20:16]),
        .ADDRB(douta[20:16]),
        .ADDRC(douta[20:16]),
        .ADDRD(rW_select),
        .DIA(\result_OBUF[31]_inst_i_6 [4:3]),
        .DIB(\result_OBUF[31]_inst_i_6 [6:5]),
        .DIC(result_OBUF[16:15]),
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
  RAM32M_HD20 register_reg_r2_0_31_24_29
       (.ADDRA(douta[20:16]),
        .ADDRB(douta[20:16]),
        .ADDRC(douta[20:16]),
        .ADDRD(rW_select),
        .DIA(\result_OBUF[31]_inst_i_6 [8:7]),
        .DIB(\result_OBUF[31]_inst_i_6 [10:9]),
        .DIC({\result_OBUF[31]_inst_i_6 [11],result_OBUF[17]}),
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
  RAM32M_HD21 register_reg_r2_0_31_30_31
       (.ADDRA(douta[20:16]),
        .ADDRB(douta[20:16]),
        .ADDRC(douta[20:16]),
        .ADDRD(rW_select),
        .DIA(\result_OBUF[31]_inst_i_6 [13:12]),
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
  RAM32M_HD22 register_reg_r2_0_31_6_11
       (.ADDRA(douta[20:16]),
        .ADDRB(douta[20:16]),
        .ADDRC(douta[20:16]),
        .ADDRD(rW_select),
        .DIA(result_OBUF[5:4]),
        .DIB(result_OBUF[7:6]),
        .DIC(result_OBUF[9:8]),
        .DID({1'b0,1'b0}),
        .DOA(B0[7:6]),
        .DOB(B0[9:8]),
        .DOC(B0[11:10]),
        .DOD(NLW_register_reg_r2_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out1),
        .WE(register_reg_r1_0_31_0_5_i_1_n_0));
  LUT5 #(
    .INIT(32'h556A6A80)) 
    \result_OBUF[0]_inst_i_10 
       (.I0(\result_OBUF[0]_inst_i_9_0 [1]),
        .I1(A0[0]),
        .I2(\pc_reg[1] ),
        .I3(\u_ALU_1/B_signed [0]),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[31]_inst_i_12_2 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \result_OBUF[0]_inst_i_11 
       (.I0(\result_OBUF[5]_inst_i_9_n_0 ),
        .I1(\result_OBUF[0]_inst_i_15_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[7]_inst_i_11_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[3]_inst_i_18_n_0 ),
        .O(\result_OBUF[0]_inst_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \result_OBUF[0]_inst_i_12 
       (.I0(douta[6]),
        .I1(Sftmd),
        .I2(\pc_reg[1] ),
        .I3(A0[0]),
        .O(\u_ALU_1/A_or_Shift__41 [0]));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \result_OBUF[0]_inst_i_13 
       (.I0(\result_OBUF[4]_inst_i_9_n_0 ),
        .I1(\result_OBUF[0]_inst_i_16_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[6]_inst_i_11_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[2]_inst_i_10_n_0 ),
        .O(\result_OBUF[0]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000F00000008)) 
    \result_OBUF[0]_inst_i_14 
       (.I0(\result_OBUF[0]_inst_i_17_n_0 ),
        .I1(\result_OBUF[0]_inst_i_18_n_0 ),
        .I2(\result_OBUF[31]_inst_i_25_n_0 ),
        .I3(\result_OBUF[31]_inst_i_24_n_0 ),
        .I4(\result_OBUF[31]_inst_i_23_n_0 ),
        .I5(Sftmd),
        .O(\result_OBUF[0]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \result_OBUF[0]_inst_i_15 
       (.I0(B[1]),
        .I1(B[17]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[25]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .I5(B[9]),
        .O(\result_OBUF[0]_inst_i_15_n_0 ));
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
    .INIT(64'h0F0F0F1F00000000)) 
    \result_OBUF[0]_inst_i_17 
       (.I0(A0[7]),
        .I1(A0[8]),
        .I2(\pc_reg[1] ),
        .I3(A0[5]),
        .I4(A0[6]),
        .I5(\result_OBUF[31]_inst_i_47_n_0 ),
        .O(\result_OBUF[0]_inst_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F1F00000000)) 
    \result_OBUF[0]_inst_i_18 
       (.I0(A0[17]),
        .I1(A0[18]),
        .I2(\pc_reg[1] ),
        .I3(A0[19]),
        .I4(A0[20]),
        .I5(\result_OBUF[31]_inst_i_49_n_0 ),
        .O(\result_OBUF[0]_inst_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFAEEFAEF)) 
    \result_OBUF[0]_inst_i_2 
       (.I0(\bbstub_douta[30] ),
        .I1(douta[27]),
        .I2(douta[28]),
        .I3(douta[29]),
        .I4(\result_OBUF[0]_inst_i_8_n_0 ),
        .I5(\result_OBUF[0]_inst_i_9_n_0 ),
        .O(\result_OBUF[0]_inst_i_9_0 [2]));
  LUT6 #(
    .INIT(64'hB800B800FF000000)) 
    \result_OBUF[0]_inst_i_4 
       (.I0(\result_OBUF[0]_inst_i_11_n_0 ),
        .I1(\u_ALU_1/A_or_Shift__41 [0]),
        .I2(\result_OBUF[0]_inst_i_13_n_0 ),
        .I3(\result_OBUF[31]_inst_i_1_0 ),
        .I4(B__0),
        .I5(\result_OBUF[0]_inst_i_14_n_0 ),
        .O(\result_OBUF[0]_inst_i_14_0 ));
  LUT6 #(
    .INIT(64'h000F0000AACCAACC)) 
    \result_OBUF[0]_inst_i_5 
       (.I0(\result_OBUF[0]_inst_i_1 ),
        .I1(CO),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(\result_OBUF[0]_inst_i_9_0 [0]),
        .I4(\result_OBUF[1]_inst_i_5_n_0 ),
        .I5(\result_OBUF[0]_inst_i_9_0 [1]),
        .O(\result_OBUF[31]_inst_i_15_0 ));
  LUT6 #(
    .INIT(64'h8080800000008000)) 
    \result_OBUF[0]_inst_i_6 
       (.I0(\result_OBUF[0]_inst_i_14_n_0 ),
        .I1(\result_OBUF[0]_inst_i_9_0 [0]),
        .I2(\result_OBUF[0]_inst_i_9_0 [1]),
        .I3(\result_OBUF[0]_inst_i_13_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [0]),
        .I5(\result_OBUF[0]_inst_i_11_n_0 ),
        .O(\result_OBUF[0]_inst_i_11_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \result_OBUF[0]_inst_i_7 
       (.I0(douta[31]),
        .I1(douta[30]),
        .O(\bbstub_douta[30] ));
  LUT6 #(
    .INIT(64'h0000110100000000)) 
    \result_OBUF[0]_inst_i_8 
       (.I0(douta[26]),
        .I1(douta[2]),
        .I2(douta[3]),
        .I3(douta[1]),
        .I4(douta[4]),
        .I5(douta[5]),
        .O(\result_OBUF[0]_inst_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \result_OBUF[0]_inst_i_9 
       (.I0(douta[4]),
        .I1(douta[5]),
        .I2(douta[0]),
        .I3(douta[3]),
        .I4(\result_OBUF[31]_inst_i_33_n_0 ),
        .O(\result_OBUF[0]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \result_OBUF[10]_inst_i_10 
       (.I0(B0[26]),
        .I1(B0[10]),
        .I2(\result_OBUF[0]_inst_i_4_0 ),
        .I3(B0[18]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[10]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF11141440)) 
    \result_OBUF[10]_inst_i_2 
       (.I0(\result_OBUF[27]_inst_i_9_1 ),
        .I1(\result_OBUF[0]_inst_i_9_0 [1]),
        .I2(JrPC[10]),
        .I3(\u_ALU_1/B_signed [10]),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .I5(\result_OBUF[10]_inst_i_4_n_0 ),
        .O(\result_OBUF[10]_inst_i_4_0 ));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    \result_OBUF[10]_inst_i_3 
       (.I0(\result_OBUF[3]_inst_i_6_n_0 ),
        .I1(\result_OBUF[10]_inst_i_5_n_0 ),
        .I2(\result_OBUF[10]_inst_i_6_n_0 ),
        .I3(\result_OBUF[10]_inst_i_7_n_0 ),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .I5(\result_OBUF[31]_inst_i_13_n_0 ),
        .O(\result_OBUF[31]_inst_i_13_8 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \result_OBUF[10]_inst_i_4 
       (.I0(\result_OBUF[3]_inst_i_7_n_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(\result_OBUF[11]_inst_i_8_n_0 ),
        .I3(\result_OBUF[31]_inst_i_13_n_0 ),
        .I4(\result_OBUF[10]_inst_i_8_n_0 ),
        .I5(\result_OBUF[28]_inst_i_7_n_0 ),
        .O(\result_OBUF[10]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hC0A0)) 
    \result_OBUF[10]_inst_i_5 
       (.I0(\result_OBUF[9]_inst_i_6_n_0 ),
        .I1(\result_OBUF[11]_inst_i_7_n_0 ),
        .I2(\result_OBUF[31]_inst_i_10_n_0 ),
        .I3(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[10]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \result_OBUF[10]_inst_i_6 
       (.I0(\result_OBUF[30]_inst_i_10_n_0 ),
        .I1(B[4]),
        .I2(\u_ALU_1/A_or_Shift__41 [2]),
        .I3(\result_OBUF[14]_inst_i_9_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [1]),
        .I5(\result_OBUF[12]_inst_i_9_n_0 ),
        .O(\result_OBUF[10]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[10]_inst_i_7 
       (.I0(\result_OBUF[16]_inst_i_12_n_0 ),
        .I1(\result_OBUF[12]_inst_i_10_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[14]_inst_i_10_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[10]_inst_i_10_n_0 ),
        .O(\result_OBUF[10]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[10]_inst_i_8 
       (.I0(\result_OBUF[16]_inst_i_13_n_0 ),
        .I1(\result_OBUF[12]_inst_i_11_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[14]_inst_i_11_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[3]_inst_i_15_n_0 ),
        .O(\result_OBUF[10]_inst_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[10]_inst_i_9 
       (.I0(\result_OBUF[0]_inst_i_4_0 ),
        .I1(B0[4]),
        .O(B[4]));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \result_OBUF[11]_inst_i_10 
       (.I0(B0[27]),
        .I1(B0[11]),
        .I2(\result_OBUF[0]_inst_i_4_0 ),
        .I3(B0[19]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[11]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \result_OBUF[11]_inst_i_11 
       (.I0(B[19]),
        .I1(B__0),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[27]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .I5(B[11]),
        .O(\result_OBUF[11]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF11141440)) 
    \result_OBUF[11]_inst_i_2 
       (.I0(\result_OBUF[27]_inst_i_9_1 ),
        .I1(\result_OBUF[0]_inst_i_9_0 [1]),
        .I2(JrPC[11]),
        .I3(\u_ALU_1/B_signed [11]),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .I5(\result_OBUF[11]_inst_i_4_n_0 ),
        .O(\result_OBUF[11]_inst_i_4_0 ));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    \result_OBUF[11]_inst_i_3 
       (.I0(\result_OBUF[3]_inst_i_6_n_0 ),
        .I1(\result_OBUF[11]_inst_i_5_n_0 ),
        .I2(\result_OBUF[11]_inst_i_6_n_0 ),
        .I3(\result_OBUF[11]_inst_i_7_n_0 ),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .I5(\result_OBUF[31]_inst_i_13_n_0 ),
        .O(\result_OBUF[31]_inst_i_13_7 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \result_OBUF[11]_inst_i_4 
       (.I0(\result_OBUF[3]_inst_i_7_n_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(\result_OBUF[12]_inst_i_8_n_0 ),
        .I3(\result_OBUF[31]_inst_i_13_n_0 ),
        .I4(\result_OBUF[11]_inst_i_8_n_0 ),
        .I5(\result_OBUF[28]_inst_i_7_n_0 ),
        .O(\result_OBUF[11]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hC0A0)) 
    \result_OBUF[11]_inst_i_5 
       (.I0(\result_OBUF[10]_inst_i_6_n_0 ),
        .I1(\result_OBUF[12]_inst_i_7_n_0 ),
        .I2(\result_OBUF[31]_inst_i_10_n_0 ),
        .I3(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[11]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \result_OBUF[11]_inst_i_6 
       (.I0(\result_OBUF[30]_inst_i_10_n_0 ),
        .I1(B[5]),
        .I2(\u_ALU_1/A_or_Shift__41 [2]),
        .I3(\result_OBUF[15]_inst_i_9_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [1]),
        .I5(\result_OBUF[13]_inst_i_9_n_0 ),
        .O(\result_OBUF[11]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[11]_inst_i_7 
       (.I0(\result_OBUF[17]_inst_i_11_n_0 ),
        .I1(\result_OBUF[13]_inst_i_10_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[15]_inst_i_10_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[11]_inst_i_10_n_0 ),
        .O(\result_OBUF[11]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[11]_inst_i_8 
       (.I0(\result_OBUF[17]_inst_i_12_n_0 ),
        .I1(\result_OBUF[13]_inst_i_11_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[15]_inst_i_11_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[11]_inst_i_11_n_0 ),
        .O(\result_OBUF[11]_inst_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[11]_inst_i_9 
       (.I0(\result_OBUF[0]_inst_i_4_0 ),
        .I1(B0[5]),
        .O(B[5]));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \result_OBUF[12]_inst_i_10 
       (.I0(B0[28]),
        .I1(B0[12]),
        .I2(\result_OBUF[0]_inst_i_4_0 ),
        .I3(B0[20]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[12]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \result_OBUF[12]_inst_i_11 
       (.I0(B[20]),
        .I1(B__0),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[28]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .I5(B[12]),
        .O(\result_OBUF[12]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF11141440)) 
    \result_OBUF[12]_inst_i_2 
       (.I0(\result_OBUF[27]_inst_i_9_1 ),
        .I1(\result_OBUF[0]_inst_i_9_0 [1]),
        .I2(JrPC[12]),
        .I3(\u_ALU_1/B_signed [12]),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .I5(\result_OBUF[12]_inst_i_4_n_0 ),
        .O(\result_OBUF[12]_inst_i_4_0 ));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    \result_OBUF[12]_inst_i_3 
       (.I0(\result_OBUF[3]_inst_i_6_n_0 ),
        .I1(\result_OBUF[12]_inst_i_5_n_0 ),
        .I2(\result_OBUF[12]_inst_i_6_n_0 ),
        .I3(\result_OBUF[12]_inst_i_7_n_0 ),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .I5(\result_OBUF[31]_inst_i_13_n_0 ),
        .O(\result_OBUF[31]_inst_i_13_2 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \result_OBUF[12]_inst_i_4 
       (.I0(\result_OBUF[3]_inst_i_7_n_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(\result_OBUF[13]_inst_i_8_n_0 ),
        .I3(\result_OBUF[31]_inst_i_13_n_0 ),
        .I4(\result_OBUF[12]_inst_i_8_n_0 ),
        .I5(\result_OBUF[28]_inst_i_7_n_0 ),
        .O(\result_OBUF[12]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hC0A0)) 
    \result_OBUF[12]_inst_i_5 
       (.I0(\result_OBUF[11]_inst_i_6_n_0 ),
        .I1(\result_OBUF[13]_inst_i_7_n_0 ),
        .I2(\result_OBUF[31]_inst_i_10_n_0 ),
        .I3(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[12]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \result_OBUF[12]_inst_i_6 
       (.I0(\result_OBUF[12]_inst_i_9_n_0 ),
        .I1(\u_ALU_1/A_or_Shift__41 [1]),
        .I2(\result_OBUF[14]_inst_i_9_n_0 ),
        .I3(\u_ALU_1/A_or_Shift__41 [2]),
        .I4(\result_OBUF[18]_inst_i_10_n_0 ),
        .O(\result_OBUF[12]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[12]_inst_i_7 
       (.I0(\result_OBUF[18]_inst_i_11_n_0 ),
        .I1(\result_OBUF[14]_inst_i_10_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[16]_inst_i_12_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[12]_inst_i_10_n_0 ),
        .O(\result_OBUF[12]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[12]_inst_i_8 
       (.I0(\result_OBUF[18]_inst_i_12_n_0 ),
        .I1(\result_OBUF[14]_inst_i_11_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[16]_inst_i_13_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[12]_inst_i_11_n_0 ),
        .O(\result_OBUF[12]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000003300B8B8)) 
    \result_OBUF[12]_inst_i_9 
       (.I0(B[6]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(B[10]),
        .I3(B[2]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[12]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \result_OBUF[13]_inst_i_10 
       (.I0(B0[29]),
        .I1(B0[13]),
        .I2(\result_OBUF[0]_inst_i_4_0 ),
        .I3(B0[21]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[13]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \result_OBUF[13]_inst_i_11 
       (.I0(B[21]),
        .I1(B__0),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[29]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .I5(B[13]),
        .O(\result_OBUF[13]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF11141440)) 
    \result_OBUF[13]_inst_i_2 
       (.I0(\result_OBUF[27]_inst_i_9_1 ),
        .I1(\result_OBUF[0]_inst_i_9_0 [1]),
        .I2(JrPC[13]),
        .I3(\u_ALU_1/B_signed [13]),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .I5(\result_OBUF[13]_inst_i_4_n_0 ),
        .O(\result_OBUF[13]_inst_i_4_0 ));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    \result_OBUF[13]_inst_i_3 
       (.I0(\result_OBUF[3]_inst_i_6_n_0 ),
        .I1(\result_OBUF[13]_inst_i_5_n_0 ),
        .I2(\result_OBUF[13]_inst_i_6_n_0 ),
        .I3(\result_OBUF[13]_inst_i_7_n_0 ),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .I5(\result_OBUF[31]_inst_i_13_n_0 ),
        .O(\result_OBUF[31]_inst_i_13_3 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \result_OBUF[13]_inst_i_4 
       (.I0(\result_OBUF[3]_inst_i_7_n_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(\result_OBUF[14]_inst_i_8_n_0 ),
        .I3(\result_OBUF[31]_inst_i_13_n_0 ),
        .I4(\result_OBUF[13]_inst_i_8_n_0 ),
        .I5(\result_OBUF[28]_inst_i_7_n_0 ),
        .O(\result_OBUF[13]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hC0A0)) 
    \result_OBUF[13]_inst_i_5 
       (.I0(\result_OBUF[12]_inst_i_6_n_0 ),
        .I1(\result_OBUF[14]_inst_i_7_n_0 ),
        .I2(\result_OBUF[31]_inst_i_10_n_0 ),
        .I3(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[13]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \result_OBUF[13]_inst_i_6 
       (.I0(\result_OBUF[13]_inst_i_9_n_0 ),
        .I1(\u_ALU_1/A_or_Shift__41 [1]),
        .I2(\result_OBUF[15]_inst_i_9_n_0 ),
        .I3(\u_ALU_1/A_or_Shift__41 [2]),
        .I4(\result_OBUF[19]_inst_i_10_n_0 ),
        .O(\result_OBUF[13]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[13]_inst_i_7 
       (.I0(\result_OBUF[19]_inst_i_13_n_0 ),
        .I1(\result_OBUF[15]_inst_i_10_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[17]_inst_i_11_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[13]_inst_i_10_n_0 ),
        .O(\result_OBUF[13]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[13]_inst_i_8 
       (.I0(\result_OBUF[19]_inst_i_15_n_0 ),
        .I1(\result_OBUF[15]_inst_i_11_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[17]_inst_i_12_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[13]_inst_i_11_n_0 ),
        .O(\result_OBUF[13]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000003300B8B8)) 
    \result_OBUF[13]_inst_i_9 
       (.I0(B[7]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(B[11]),
        .I3(B[3]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[13]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \result_OBUF[14]_inst_i_10 
       (.I0(B0[30]),
        .I1(B0[14]),
        .I2(\result_OBUF[0]_inst_i_4_0 ),
        .I3(B0[22]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[14]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \result_OBUF[14]_inst_i_11 
       (.I0(B[22]),
        .I1(B__0),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[30]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .I5(B[14]),
        .O(\result_OBUF[14]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF11141440)) 
    \result_OBUF[14]_inst_i_2 
       (.I0(\result_OBUF[27]_inst_i_9_1 ),
        .I1(\result_OBUF[0]_inst_i_9_0 [1]),
        .I2(JrPC[14]),
        .I3(\u_ALU_1/B_signed [14]),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .I5(\result_OBUF[14]_inst_i_4_n_0 ),
        .O(\result_OBUF[14]_inst_i_4_0 ));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    \result_OBUF[14]_inst_i_3 
       (.I0(\result_OBUF[3]_inst_i_6_n_0 ),
        .I1(\result_OBUF[14]_inst_i_5_n_0 ),
        .I2(\result_OBUF[14]_inst_i_6_n_0 ),
        .I3(\result_OBUF[14]_inst_i_7_n_0 ),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .I5(\result_OBUF[31]_inst_i_13_n_0 ),
        .O(\result_OBUF[31]_inst_i_13_1 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \result_OBUF[14]_inst_i_4 
       (.I0(\result_OBUF[3]_inst_i_7_n_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(\result_OBUF[15]_inst_i_8_n_0 ),
        .I3(\result_OBUF[31]_inst_i_13_n_0 ),
        .I4(\result_OBUF[14]_inst_i_8_n_0 ),
        .I5(\result_OBUF[28]_inst_i_7_n_0 ),
        .O(\result_OBUF[14]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hC0A0)) 
    \result_OBUF[14]_inst_i_5 
       (.I0(\result_OBUF[13]_inst_i_6_n_0 ),
        .I1(\result_OBUF[15]_inst_i_7_n_0 ),
        .I2(\result_OBUF[31]_inst_i_10_n_0 ),
        .I3(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[14]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[14]_inst_i_6 
       (.I0(\result_OBUF[14]_inst_i_9_n_0 ),
        .I1(\result_OBUF[18]_inst_i_10_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[16]_inst_i_10_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[20]_inst_i_10_n_0 ),
        .O(\result_OBUF[14]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[14]_inst_i_7 
       (.I0(\result_OBUF[16]_inst_i_11_n_0 ),
        .I1(\result_OBUF[16]_inst_i_12_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[18]_inst_i_11_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[14]_inst_i_10_n_0 ),
        .O(\result_OBUF[14]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[14]_inst_i_8 
       (.I0(\result_OBUF[20]_inst_i_14_n_0 ),
        .I1(\result_OBUF[16]_inst_i_13_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[18]_inst_i_12_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[14]_inst_i_11_n_0 ),
        .O(\result_OBUF[14]_inst_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \result_OBUF[14]_inst_i_9 
       (.I0(B0[8]),
        .I1(\result_OBUF[0]_inst_i_4_0 ),
        .I2(B0[0]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[14]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000C0C0F000A0A0)) 
    \result_OBUF[15]_inst_i_10 
       (.I0(B0[15]),
        .I1(B0[31]),
        .I2(\result_OBUF[0]_inst_i_4_0 ),
        .I3(B0[23]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[15]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF000000B800B800)) 
    \result_OBUF[15]_inst_i_11 
       (.I0(B0[23]),
        .I1(\u_ALU_1/A_or_Shift__41 [3]),
        .I2(B0[15]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(B0[31]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[15]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF11141440)) 
    \result_OBUF[15]_inst_i_2 
       (.I0(\result_OBUF[27]_inst_i_9_1 ),
        .I1(\result_OBUF[0]_inst_i_9_0 [1]),
        .I2(JrPC[15]),
        .I3(\u_ALU_1/B_signed [15]),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .I5(\result_OBUF[15]_inst_i_4_n_0 ),
        .O(\result_OBUF[15]_inst_i_4_0 ));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    \result_OBUF[15]_inst_i_3 
       (.I0(\result_OBUF[3]_inst_i_6_n_0 ),
        .I1(\result_OBUF[15]_inst_i_5_n_0 ),
        .I2(\result_OBUF[15]_inst_i_6_n_0 ),
        .I3(\result_OBUF[15]_inst_i_7_n_0 ),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .I5(\result_OBUF[31]_inst_i_13_n_0 ),
        .O(\result_OBUF[31]_inst_i_13_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \result_OBUF[15]_inst_i_4 
       (.I0(\result_OBUF[3]_inst_i_7_n_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(\result_OBUF[16]_inst_i_9_n_0 ),
        .I3(\result_OBUF[31]_inst_i_13_n_0 ),
        .I4(\result_OBUF[15]_inst_i_8_n_0 ),
        .I5(\result_OBUF[28]_inst_i_7_n_0 ),
        .O(\result_OBUF[15]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hC0A0)) 
    \result_OBUF[15]_inst_i_5 
       (.I0(\result_OBUF[14]_inst_i_6_n_0 ),
        .I1(\result_OBUF[16]_inst_i_8_n_0 ),
        .I2(\result_OBUF[31]_inst_i_10_n_0 ),
        .I3(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[15]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[15]_inst_i_6 
       (.I0(\result_OBUF[15]_inst_i_9_n_0 ),
        .I1(\result_OBUF[19]_inst_i_10_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[17]_inst_i_10_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[21]_inst_i_10_n_0 ),
        .O(\result_OBUF[15]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[15]_inst_i_7 
       (.I0(\result_OBUF[21]_inst_i_11_n_0 ),
        .I1(\result_OBUF[17]_inst_i_11_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[19]_inst_i_13_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[15]_inst_i_10_n_0 ),
        .O(\result_OBUF[15]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[15]_inst_i_8 
       (.I0(\result_OBUF[21]_inst_i_13_n_0 ),
        .I1(\result_OBUF[17]_inst_i_12_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[19]_inst_i_15_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[15]_inst_i_11_n_0 ),
        .O(\result_OBUF[15]_inst_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \result_OBUF[15]_inst_i_9 
       (.I0(B0[9]),
        .I1(\result_OBUF[0]_inst_i_4_0 ),
        .I2(B0[1]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[15]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAAAAAAAAA)) 
    \result_OBUF[16]_inst_i_1 
       (.I0(\result[16] ),
        .I1(\result[16]_0 ),
        .I2(douta[0]),
        .I3(\result_OBUF[16]_inst_i_3_n_0 ),
        .I4(\result_OBUF[16]_inst_i_4_n_0 ),
        .I5(\result[16]_1 ),
        .O(\result_OBUF[31]_inst_i_6 [2]));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \result_OBUF[16]_inst_i_10 
       (.I0(B0[10]),
        .I1(\result_OBUF[0]_inst_i_4_0 ),
        .I2(B0[2]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[16]_inst_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \result_OBUF[16]_inst_i_11 
       (.I0(B0[20]),
        .I1(\result_OBUF[0]_inst_i_4_0 ),
        .I2(B0[28]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[16]_inst_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \result_OBUF[16]_inst_i_12 
       (.I0(B0[16]),
        .I1(\result_OBUF[0]_inst_i_4_0 ),
        .I2(B0[24]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[16]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFF000000B800B800)) 
    \result_OBUF[16]_inst_i_13 
       (.I0(B0[24]),
        .I1(\u_ALU_1/A_or_Shift__41 [3]),
        .I2(B0[16]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(B0[31]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[16]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    \result_OBUF[16]_inst_i_3 
       (.I0(\result[30] ),
        .I1(\result_OBUF[16]_inst_i_6_n_0 ),
        .I2(\result_OBUF[16]_inst_i_7_n_0 ),
        .I3(\result_OBUF[16]_inst_i_8_n_0 ),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .I5(\result_OBUF[31]_inst_i_13_n_0 ),
        .O(\result_OBUF[16]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \result_OBUF[16]_inst_i_4 
       (.I0(\result_OBUF[31]_inst_i_1_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(\result_OBUF[17]_inst_i_9_n_0 ),
        .I3(\result_OBUF[31]_inst_i_13_n_0 ),
        .I4(\result_OBUF[16]_inst_i_9_n_0 ),
        .I5(\result_OBUF[28]_inst_i_7_n_0 ),
        .O(\result_OBUF[16]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h556A6A80)) 
    \result_OBUF[16]_inst_i_5 
       (.I0(\result_OBUF[0]_inst_i_9_0 [1]),
        .I1(A0[16]),
        .I2(\pc_reg[1] ),
        .I3(\u_ALU_1/B_signed [16]),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[31]_inst_i_12_3 ));
  LUT4 #(
    .INIT(16'hC0A0)) 
    \result_OBUF[16]_inst_i_6 
       (.I0(\result_OBUF[15]_inst_i_6_n_0 ),
        .I1(\result_OBUF[17]_inst_i_8_n_0 ),
        .I2(\result_OBUF[31]_inst_i_10_n_0 ),
        .I3(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[16]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[16]_inst_i_7 
       (.I0(\result_OBUF[16]_inst_i_10_n_0 ),
        .I1(\result_OBUF[20]_inst_i_10_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[18]_inst_i_10_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[22]_inst_i_10_n_0 ),
        .O(\result_OBUF[16]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[16]_inst_i_8 
       (.I0(\result_OBUF[20]_inst_i_11_n_0 ),
        .I1(\result_OBUF[18]_inst_i_11_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[16]_inst_i_11_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[16]_inst_i_12_n_0 ),
        .O(\result_OBUF[16]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[16]_inst_i_9 
       (.I0(\result_OBUF[22]_inst_i_15_n_0 ),
        .I1(\result_OBUF[18]_inst_i_12_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[20]_inst_i_14_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[16]_inst_i_13_n_0 ),
        .O(\result_OBUF[16]_inst_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \result_OBUF[17]_inst_i_10 
       (.I0(B0[11]),
        .I1(\result_OBUF[0]_inst_i_4_0 ),
        .I2(B0[3]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[17]_inst_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \result_OBUF[17]_inst_i_11 
       (.I0(B0[17]),
        .I1(\result_OBUF[0]_inst_i_4_0 ),
        .I2(B0[25]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[17]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFF000000B800B800)) 
    \result_OBUF[17]_inst_i_12 
       (.I0(B0[25]),
        .I1(\u_ALU_1/A_or_Shift__41 [3]),
        .I2(B0[17]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(B0[31]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[17]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    \result_OBUF[17]_inst_i_3 
       (.I0(\result[30] ),
        .I1(\result_OBUF[17]_inst_i_6_n_0 ),
        .I2(\result_OBUF[17]_inst_i_7_n_0 ),
        .I3(\result_OBUF[17]_inst_i_8_n_0 ),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .I5(\result_OBUF[31]_inst_i_13_n_0 ),
        .O(\result_OBUF[31]_inst_i_13_12 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \result_OBUF[17]_inst_i_4 
       (.I0(\result_OBUF[31]_inst_i_1_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(\result_OBUF[18]_inst_i_9_n_0 ),
        .I3(\result_OBUF[31]_inst_i_13_n_0 ),
        .I4(\result_OBUF[17]_inst_i_9_n_0 ),
        .I5(\result_OBUF[28]_inst_i_7_n_0 ),
        .O(\result_OBUF[28]_inst_i_7_0 ));
  LUT5 #(
    .INIT(32'h556A6A80)) 
    \result_OBUF[17]_inst_i_5 
       (.I0(\result_OBUF[0]_inst_i_9_0 [1]),
        .I1(A0[17]),
        .I2(\pc_reg[1] ),
        .I3(\u_ALU_1/B_signed [17]),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[31]_inst_i_12_4 ));
  LUT4 #(
    .INIT(16'hC0A0)) 
    \result_OBUF[17]_inst_i_6 
       (.I0(\result_OBUF[16]_inst_i_7_n_0 ),
        .I1(\result_OBUF[18]_inst_i_8_n_0 ),
        .I2(\result_OBUF[31]_inst_i_10_n_0 ),
        .I3(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[17]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[17]_inst_i_7 
       (.I0(\result_OBUF[17]_inst_i_10_n_0 ),
        .I1(\result_OBUF[21]_inst_i_10_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[19]_inst_i_10_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[23]_inst_i_10_n_0 ),
        .O(\result_OBUF[17]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[17]_inst_i_8 
       (.I0(\result_OBUF[19]_inst_i_12_n_0 ),
        .I1(\result_OBUF[19]_inst_i_13_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[21]_inst_i_11_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[17]_inst_i_11_n_0 ),
        .O(\result_OBUF[17]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[17]_inst_i_9 
       (.I0(\result_OBUF[19]_inst_i_14_n_0 ),
        .I1(\result_OBUF[19]_inst_i_15_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[21]_inst_i_13_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[17]_inst_i_12_n_0 ),
        .O(\result_OBUF[17]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAAAAAAAAA)) 
    \result_OBUF[18]_inst_i_1 
       (.I0(\result[18] ),
        .I1(\result[16]_0 ),
        .I2(douta[2]),
        .I3(\result_OBUF[18]_inst_i_3_n_0 ),
        .I4(\result_OBUF[18]_inst_i_4_n_0 ),
        .I5(\result[16]_1 ),
        .O(\result_OBUF[31]_inst_i_6 [3]));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \result_OBUF[18]_inst_i_10 
       (.I0(B0[12]),
        .I1(\result_OBUF[0]_inst_i_4_0 ),
        .I2(B0[4]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[18]_inst_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \result_OBUF[18]_inst_i_11 
       (.I0(B0[18]),
        .I1(\result_OBUF[0]_inst_i_4_0 ),
        .I2(B0[26]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[18]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFF000000B800B800)) 
    \result_OBUF[18]_inst_i_12 
       (.I0(B0[26]),
        .I1(\u_ALU_1/A_or_Shift__41 [3]),
        .I2(B0[18]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(B0[31]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[18]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    \result_OBUF[18]_inst_i_3 
       (.I0(\result[30] ),
        .I1(\result_OBUF[18]_inst_i_6_n_0 ),
        .I2(\result_OBUF[18]_inst_i_7_n_0 ),
        .I3(\result_OBUF[18]_inst_i_8_n_0 ),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .I5(\result_OBUF[31]_inst_i_13_n_0 ),
        .O(\result_OBUF[18]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \result_OBUF[18]_inst_i_4 
       (.I0(\result_OBUF[31]_inst_i_1_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(\result_OBUF[19]_inst_i_9_n_0 ),
        .I3(\result_OBUF[31]_inst_i_13_n_0 ),
        .I4(\result_OBUF[18]_inst_i_9_n_0 ),
        .I5(\result_OBUF[28]_inst_i_7_n_0 ),
        .O(\result_OBUF[18]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h556A6A80)) 
    \result_OBUF[18]_inst_i_5 
       (.I0(\result_OBUF[0]_inst_i_9_0 [1]),
        .I1(A0[18]),
        .I2(\pc_reg[1] ),
        .I3(\u_ALU_1/B_signed [18]),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[31]_inst_i_12_5 ));
  LUT4 #(
    .INIT(16'hC0A0)) 
    \result_OBUF[18]_inst_i_6 
       (.I0(\result_OBUF[17]_inst_i_7_n_0 ),
        .I1(\result_OBUF[19]_inst_i_8_n_0 ),
        .I2(\result_OBUF[31]_inst_i_10_n_0 ),
        .I3(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[18]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[18]_inst_i_7 
       (.I0(\result_OBUF[18]_inst_i_10_n_0 ),
        .I1(\result_OBUF[22]_inst_i_10_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[20]_inst_i_10_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[24]_inst_i_11_n_0 ),
        .O(\result_OBUF[18]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \result_OBUF[18]_inst_i_8 
       (.I0(\result_OBUF[20]_inst_i_12_n_0 ),
        .I1(\u_ALU_1/A_or_Shift__41 [1]),
        .I2(\result_OBUF[20]_inst_i_11_n_0 ),
        .I3(\u_ALU_1/A_or_Shift__41 [2]),
        .I4(\result_OBUF[18]_inst_i_11_n_0 ),
        .O(\result_OBUF[18]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[18]_inst_i_9 
       (.I0(\result_OBUF[20]_inst_i_13_n_0 ),
        .I1(\result_OBUF[20]_inst_i_14_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[22]_inst_i_15_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[18]_inst_i_12_n_0 ),
        .O(\result_OBUF[18]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAAAAAAAAA)) 
    \result_OBUF[19]_inst_i_1 
       (.I0(\result[19] ),
        .I1(\result[16]_0 ),
        .I2(douta[3]),
        .I3(\result_OBUF[19]_inst_i_3_n_0 ),
        .I4(\result_OBUF[19]_inst_i_4_n_0 ),
        .I5(\result[16]_1 ),
        .O(\result_OBUF[31]_inst_i_6 [4]));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \result_OBUF[19]_inst_i_10 
       (.I0(B0[13]),
        .I1(\result_OBUF[0]_inst_i_4_0 ),
        .I2(B0[5]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[19]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000000003300B8B8)) 
    \result_OBUF[19]_inst_i_11 
       (.I0(B[25]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(B[21]),
        .I3(B[29]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[19]_inst_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \result_OBUF[19]_inst_i_12 
       (.I0(B0[23]),
        .I1(\result_OBUF[0]_inst_i_4_0 ),
        .I2(B0[31]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[19]_inst_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \result_OBUF[19]_inst_i_13 
       (.I0(B0[19]),
        .I1(\result_OBUF[0]_inst_i_4_0 ),
        .I2(B0[27]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[19]_inst_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hF000E020)) 
    \result_OBUF[19]_inst_i_14 
       (.I0(B0[23]),
        .I1(\u_ALU_1/A_or_Shift__41 [4]),
        .I2(\result_OBUF[0]_inst_i_4_0 ),
        .I3(B0[31]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .O(\result_OBUF[19]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFF000000B800B800)) 
    \result_OBUF[19]_inst_i_15 
       (.I0(B0[27]),
        .I1(\u_ALU_1/A_or_Shift__41 [3]),
        .I2(B0[19]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(B0[31]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[19]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    \result_OBUF[19]_inst_i_3 
       (.I0(\result[30] ),
        .I1(\result_OBUF[19]_inst_i_6_n_0 ),
        .I2(\result_OBUF[19]_inst_i_7_n_0 ),
        .I3(\result_OBUF[19]_inst_i_8_n_0 ),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .I5(\result_OBUF[31]_inst_i_13_n_0 ),
        .O(\result_OBUF[19]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \result_OBUF[19]_inst_i_4 
       (.I0(\result_OBUF[31]_inst_i_1_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(\result_OBUF[20]_inst_i_9_n_0 ),
        .I3(\result_OBUF[31]_inst_i_13_n_0 ),
        .I4(\result_OBUF[19]_inst_i_9_n_0 ),
        .I5(\result_OBUF[28]_inst_i_7_n_0 ),
        .O(\result_OBUF[19]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h556A6A80)) 
    \result_OBUF[19]_inst_i_5 
       (.I0(\result_OBUF[0]_inst_i_9_0 [1]),
        .I1(A0[19]),
        .I2(\pc_reg[1] ),
        .I3(\u_ALU_1/B_signed [19]),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[31]_inst_i_12_6 ));
  LUT4 #(
    .INIT(16'hC0A0)) 
    \result_OBUF[19]_inst_i_6 
       (.I0(\result_OBUF[18]_inst_i_7_n_0 ),
        .I1(\result_OBUF[20]_inst_i_8_n_0 ),
        .I2(\result_OBUF[31]_inst_i_10_n_0 ),
        .I3(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[19]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[19]_inst_i_7 
       (.I0(\result_OBUF[19]_inst_i_10_n_0 ),
        .I1(\result_OBUF[23]_inst_i_10_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[21]_inst_i_10_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[25]_inst_i_19_n_0 ),
        .O(\result_OBUF[19]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \result_OBUF[19]_inst_i_8 
       (.I0(\result_OBUF[19]_inst_i_11_n_0 ),
        .I1(\u_ALU_1/A_or_Shift__41 [1]),
        .I2(\result_OBUF[19]_inst_i_12_n_0 ),
        .I3(\u_ALU_1/A_or_Shift__41 [2]),
        .I4(\result_OBUF[19]_inst_i_13_n_0 ),
        .O(\result_OBUF[19]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[19]_inst_i_9 
       (.I0(\result_OBUF[21]_inst_i_12_n_0 ),
        .I1(\result_OBUF[21]_inst_i_13_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[19]_inst_i_14_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[19]_inst_i_15_n_0 ),
        .O(\result_OBUF[19]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF11141440)) 
    \result_OBUF[1]_inst_i_2 
       (.I0(\result_OBUF[27]_inst_i_9_1 ),
        .I1(\result_OBUF[0]_inst_i_9_0 [1]),
        .I2(JrPC[1]),
        .I3(\u_ALU_1/B_signed [1]),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .I5(\result_OBUF[1]_inst_i_4_n_0 ),
        .O(\result_OBUF[1]_inst_i_4_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA0008800)) 
    \result_OBUF[1]_inst_i_3 
       (.I0(\result_OBUF[3]_inst_i_6_n_0 ),
        .I1(\result_OBUF[1]_inst_i_5_n_0 ),
        .I2(\result_OBUF[2]_inst_i_9_n_0 ),
        .I3(\result_OBUF[31]_inst_i_10_n_0 ),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .I5(\result_OBUF[1]_inst_i_6_n_0 ),
        .O(\result_OBUF[1]_inst_i_6_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA080808)) 
    \result_OBUF[1]_inst_i_4 
       (.I0(\result_OBUF[3]_inst_i_7_n_0 ),
        .I1(\result_OBUF[0]_inst_i_11_n_0 ),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(\result_OBUF[2]_inst_i_6_n_0 ),
        .I4(\result_OBUF[31]_inst_i_10_n_0 ),
        .I5(\result_OBUF[28]_inst_i_7_n_0 ),
        .O(\result_OBUF[1]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \result_OBUF[1]_inst_i_5 
       (.I0(\result_OBUF[0]_inst_i_4_0 ),
        .I1(B0[0]),
        .I2(\result_OBUF[30]_inst_i_10_n_0 ),
        .I3(\u_ALU_1/A_or_Shift__41 [2]),
        .I4(\u_ALU_1/A_or_Shift__41 [1]),
        .O(\result_OBUF[1]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF008080)) 
    \result_OBUF[1]_inst_i_6 
       (.I0(B[1]),
        .I1(\result_OBUF[30]_inst_i_10_n_0 ),
        .I2(\result_OBUF[30]_inst_i_11_n_0 ),
        .I3(\result_OBUF[0]_inst_i_11_n_0 ),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .I5(\result_OBUF[31]_inst_i_13_n_0 ),
        .O(\result_OBUF[1]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAAAAAAAAA)) 
    \result_OBUF[20]_inst_i_1 
       (.I0(\result[20] ),
        .I1(\result[16]_0 ),
        .I2(douta[4]),
        .I3(\result_OBUF[20]_inst_i_3_n_0 ),
        .I4(\result_OBUF[20]_inst_i_4_n_0 ),
        .I5(\result[16]_1 ),
        .O(\result_OBUF[31]_inst_i_6 [5]));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \result_OBUF[20]_inst_i_10 
       (.I0(B0[14]),
        .I1(\result_OBUF[0]_inst_i_4_0 ),
        .I2(B0[6]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[20]_inst_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \result_OBUF[20]_inst_i_11 
       (.I0(B0[22]),
        .I1(\result_OBUF[0]_inst_i_4_0 ),
        .I2(B0[30]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[20]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000000003300B8B8)) 
    \result_OBUF[20]_inst_i_12 
       (.I0(B[24]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(B[20]),
        .I3(B[28]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[20]_inst_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hF000E020)) 
    \result_OBUF[20]_inst_i_13 
       (.I0(B0[24]),
        .I1(\u_ALU_1/A_or_Shift__41 [4]),
        .I2(\result_OBUF[0]_inst_i_4_0 ),
        .I3(B0[31]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .O(\result_OBUF[20]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFF000000B800B800)) 
    \result_OBUF[20]_inst_i_14 
       (.I0(B0[28]),
        .I1(\u_ALU_1/A_or_Shift__41 [3]),
        .I2(B0[20]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(B0[31]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[20]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    \result_OBUF[20]_inst_i_3 
       (.I0(\result[30] ),
        .I1(\result_OBUF[20]_inst_i_6_n_0 ),
        .I2(\result_OBUF[20]_inst_i_7_n_0 ),
        .I3(\result_OBUF[20]_inst_i_8_n_0 ),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .I5(\result_OBUF[31]_inst_i_13_n_0 ),
        .O(\result_OBUF[20]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \result_OBUF[20]_inst_i_4 
       (.I0(\result_OBUF[31]_inst_i_1_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(\result_OBUF[21]_inst_i_9_n_0 ),
        .I3(\result_OBUF[31]_inst_i_13_n_0 ),
        .I4(\result_OBUF[20]_inst_i_9_n_0 ),
        .I5(\result_OBUF[28]_inst_i_7_n_0 ),
        .O(\result_OBUF[20]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h556A6A80)) 
    \result_OBUF[20]_inst_i_5 
       (.I0(\result_OBUF[0]_inst_i_9_0 [1]),
        .I1(A0[20]),
        .I2(\pc_reg[1] ),
        .I3(\u_ALU_1/B_signed [20]),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[31]_inst_i_12_7 ));
  LUT4 #(
    .INIT(16'hC0A0)) 
    \result_OBUF[20]_inst_i_6 
       (.I0(\result_OBUF[19]_inst_i_7_n_0 ),
        .I1(\result_OBUF[21]_inst_i_8_n_0 ),
        .I2(\result_OBUF[31]_inst_i_10_n_0 ),
        .I3(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[20]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[20]_inst_i_7 
       (.I0(\result_OBUF[20]_inst_i_10_n_0 ),
        .I1(\result_OBUF[24]_inst_i_11_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[22]_inst_i_10_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[24]_inst_i_12_n_0 ),
        .O(\result_OBUF[20]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \result_OBUF[20]_inst_i_8 
       (.I0(\result_OBUF[30]_inst_i_10_n_0 ),
        .I1(B[26]),
        .I2(\u_ALU_1/A_or_Shift__41 [2]),
        .I3(\result_OBUF[20]_inst_i_11_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [1]),
        .I5(\result_OBUF[20]_inst_i_12_n_0 ),
        .O(\result_OBUF[20]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[20]_inst_i_9 
       (.I0(\result_OBUF[22]_inst_i_14_n_0 ),
        .I1(\result_OBUF[22]_inst_i_15_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[20]_inst_i_13_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[20]_inst_i_14_n_0 ),
        .O(\result_OBUF[20]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAAAAAAAAA)) 
    \result_OBUF[21]_inst_i_1 
       (.I0(\result[21] ),
        .I1(\result[16]_0 ),
        .I2(douta[5]),
        .I3(\result_OBUF[21]_inst_i_3_n_0 ),
        .I4(\result_OBUF[21]_inst_i_4_n_0 ),
        .I5(\result[16]_1 ),
        .O(\result_OBUF[31]_inst_i_6 [6]));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \result_OBUF[21]_inst_i_10 
       (.I0(B0[15]),
        .I1(\result_OBUF[0]_inst_i_4_0 ),
        .I2(B0[7]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[21]_inst_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h0000C088)) 
    \result_OBUF[21]_inst_i_11 
       (.I0(B0[21]),
        .I1(\result_OBUF[0]_inst_i_4_0 ),
        .I2(B0[29]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[21]_inst_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hF000E020)) 
    \result_OBUF[21]_inst_i_12 
       (.I0(B0[25]),
        .I1(\u_ALU_1/A_or_Shift__41 [4]),
        .I2(\result_OBUF[0]_inst_i_4_0 ),
        .I3(B0[31]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .O(\result_OBUF[21]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFF000000B800B800)) 
    \result_OBUF[21]_inst_i_13 
       (.I0(B0[29]),
        .I1(\u_ALU_1/A_or_Shift__41 [3]),
        .I2(B0[21]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(B0[31]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[21]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    \result_OBUF[21]_inst_i_3 
       (.I0(\result[30] ),
        .I1(\result_OBUF[21]_inst_i_6_n_0 ),
        .I2(\result_OBUF[21]_inst_i_7_n_0 ),
        .I3(\result_OBUF[21]_inst_i_8_n_0 ),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .I5(\result_OBUF[31]_inst_i_13_n_0 ),
        .O(\result_OBUF[21]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \result_OBUF[21]_inst_i_4 
       (.I0(\result_OBUF[31]_inst_i_1_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(\result_OBUF[22]_inst_i_9_n_0 ),
        .I3(\result_OBUF[31]_inst_i_13_n_0 ),
        .I4(\result_OBUF[21]_inst_i_9_n_0 ),
        .I5(\result_OBUF[28]_inst_i_7_n_0 ),
        .O(\result_OBUF[21]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h556A6A80)) 
    \result_OBUF[21]_inst_i_5 
       (.I0(\result_OBUF[0]_inst_i_9_0 [1]),
        .I1(A0[21]),
        .I2(\pc_reg[1] ),
        .I3(\u_ALU_1/B_signed [21]),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[31]_inst_i_12_8 ));
  LUT4 #(
    .INIT(16'hC0A0)) 
    \result_OBUF[21]_inst_i_6 
       (.I0(\result_OBUF[20]_inst_i_7_n_0 ),
        .I1(\result_OBUF[22]_inst_i_8_n_0 ),
        .I2(\result_OBUF[31]_inst_i_10_n_0 ),
        .I3(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[21]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[21]_inst_i_7 
       (.I0(\result_OBUF[21]_inst_i_10_n_0 ),
        .I1(\result_OBUF[25]_inst_i_19_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[23]_inst_i_10_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[28]_inst_i_16_n_0 ),
        .O(\result_OBUF[21]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hB888BBBBB8888888)) 
    \result_OBUF[21]_inst_i_8 
       (.I0(\result_OBUF[23]_inst_i_13_n_0 ),
        .I1(\u_ALU_1/A_or_Shift__41 [1]),
        .I2(\result_OBUF[30]_inst_i_10_n_0 ),
        .I3(B[25]),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[21]_inst_i_11_n_0 ),
        .O(\result_OBUF[21]_inst_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \result_OBUF[21]_inst_i_9 
       (.I0(\result_OBUF[23]_inst_i_14_n_0 ),
        .I1(\u_ALU_1/A_or_Shift__41 [1]),
        .I2(\result_OBUF[21]_inst_i_12_n_0 ),
        .I3(\u_ALU_1/A_or_Shift__41 [2]),
        .I4(\result_OBUF[21]_inst_i_13_n_0 ),
        .O(\result_OBUF[21]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \result_OBUF[22]_inst_i_10 
       (.I0(B0[0]),
        .I1(B0[16]),
        .I2(\result_OBUF[0]_inst_i_4_0 ),
        .I3(B0[8]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[22]_inst_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[22]_inst_i_11 
       (.I0(\result_OBUF[0]_inst_i_4_0 ),
        .I1(B0[28]),
        .O(B[28]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[22]_inst_i_12 
       (.I0(\result_OBUF[0]_inst_i_4_0 ),
        .I1(B0[24]),
        .O(B[24]));
  LUT6 #(
    .INIT(64'h000000003300B8B8)) 
    \result_OBUF[22]_inst_i_13 
       (.I0(B[26]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(B[22]),
        .I3(B[30]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[22]_inst_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hF000E020)) 
    \result_OBUF[22]_inst_i_14 
       (.I0(B0[26]),
        .I1(\u_ALU_1/A_or_Shift__41 [4]),
        .I2(\result_OBUF[0]_inst_i_4_0 ),
        .I3(B0[31]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .O(\result_OBUF[22]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFF000000B800B800)) 
    \result_OBUF[22]_inst_i_15 
       (.I0(B0[30]),
        .I1(\u_ALU_1/A_or_Shift__41 [3]),
        .I2(B0[22]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(B0[31]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[22]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    \result_OBUF[22]_inst_i_3 
       (.I0(\result[30] ),
        .I1(\result_OBUF[22]_inst_i_6_n_0 ),
        .I2(\result_OBUF[22]_inst_i_7_n_0 ),
        .I3(\result_OBUF[22]_inst_i_8_n_0 ),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .I5(\result_OBUF[31]_inst_i_13_n_0 ),
        .O(\result_OBUF[31]_inst_i_13_13 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \result_OBUF[22]_inst_i_4 
       (.I0(\result_OBUF[31]_inst_i_1_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(\result_OBUF[23]_inst_i_9_n_0 ),
        .I3(\result_OBUF[31]_inst_i_13_n_0 ),
        .I4(\result_OBUF[22]_inst_i_9_n_0 ),
        .I5(\result_OBUF[28]_inst_i_7_n_0 ),
        .O(\result_OBUF[28]_inst_i_7_1 ));
  LUT5 #(
    .INIT(32'h556A6A80)) 
    \result_OBUF[22]_inst_i_5 
       (.I0(\result_OBUF[0]_inst_i_9_0 [1]),
        .I1(A0[22]),
        .I2(\pc_reg[1] ),
        .I3(\u_ALU_1/B_signed [22]),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[31]_inst_i_12_9 ));
  LUT4 #(
    .INIT(16'hC0A0)) 
    \result_OBUF[22]_inst_i_6 
       (.I0(\result_OBUF[21]_inst_i_7_n_0 ),
        .I1(\result_OBUF[23]_inst_i_8_n_0 ),
        .I2(\result_OBUF[31]_inst_i_10_n_0 ),
        .I3(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[22]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[22]_inst_i_7 
       (.I0(\result_OBUF[22]_inst_i_10_n_0 ),
        .I1(\result_OBUF[24]_inst_i_12_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[24]_inst_i_11_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[29]_inst_i_13_n_0 ),
        .O(\result_OBUF[22]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \result_OBUF[22]_inst_i_8 
       (.I0(B[28]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(\result_OBUF[30]_inst_i_10_n_0 ),
        .I3(B[24]),
        .I4(\u_ALU_1/A_or_Shift__41 [1]),
        .I5(\result_OBUF[22]_inst_i_13_n_0 ),
        .O(\result_OBUF[22]_inst_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \result_OBUF[22]_inst_i_9 
       (.I0(\result_OBUF[24]_inst_i_10_n_0 ),
        .I1(\u_ALU_1/A_or_Shift__41 [1]),
        .I2(\result_OBUF[22]_inst_i_14_n_0 ),
        .I3(\u_ALU_1/A_or_Shift__41 [2]),
        .I4(\result_OBUF[22]_inst_i_15_n_0 ),
        .O(\result_OBUF[22]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \result_OBUF[23]_inst_i_10 
       (.I0(B0[1]),
        .I1(B0[17]),
        .I2(\result_OBUF[0]_inst_i_4_0 ),
        .I3(B0[9]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[23]_inst_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[23]_inst_i_11 
       (.I0(\result_OBUF[0]_inst_i_4_0 ),
        .I1(B0[29]),
        .O(B[29]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[23]_inst_i_12 
       (.I0(\result_OBUF[0]_inst_i_4_0 ),
        .I1(B0[25]),
        .O(B[25]));
  LUT6 #(
    .INIT(64'h000000003300B8B8)) 
    \result_OBUF[23]_inst_i_13 
       (.I0(B[27]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(B[23]),
        .I3(B__0),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[23]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFB800B8)) 
    \result_OBUF[23]_inst_i_14 
       (.I0(B[27]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(B[23]),
        .I3(\u_ALU_1/A_or_Shift__41 [4]),
        .I4(B__0),
        .I5(\u_ALU_1/A_or_Shift__41 [3]),
        .O(\result_OBUF[23]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    \result_OBUF[23]_inst_i_3 
       (.I0(\result[30] ),
        .I1(\result_OBUF[23]_inst_i_6_n_0 ),
        .I2(\result_OBUF[23]_inst_i_7_n_0 ),
        .I3(\result_OBUF[23]_inst_i_8_n_0 ),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .I5(\result_OBUF[31]_inst_i_13_n_0 ),
        .O(\result_OBUF[31]_inst_i_13_14 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \result_OBUF[23]_inst_i_4 
       (.I0(\result_OBUF[31]_inst_i_1_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(\result_OBUF[24]_inst_i_6_n_0 ),
        .I3(\result_OBUF[31]_inst_i_13_n_0 ),
        .I4(\result_OBUF[23]_inst_i_9_n_0 ),
        .I5(\result_OBUF[28]_inst_i_7_n_0 ),
        .O(\result_OBUF[28]_inst_i_7_2 ));
  LUT5 #(
    .INIT(32'h556A6A80)) 
    \result_OBUF[23]_inst_i_5 
       (.I0(\result_OBUF[0]_inst_i_9_0 [1]),
        .I1(A0[23]),
        .I2(\pc_reg[1] ),
        .I3(\u_ALU_1/B_signed [23]),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[31]_inst_i_12_10 ));
  LUT4 #(
    .INIT(16'hC0A0)) 
    \result_OBUF[23]_inst_i_6 
       (.I0(\result_OBUF[22]_inst_i_7_n_0 ),
        .I1(\result_OBUF[24]_inst_i_9_n_0 ),
        .I2(\result_OBUF[31]_inst_i_10_n_0 ),
        .I3(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[23]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[23]_inst_i_7 
       (.I0(\result_OBUF[23]_inst_i_10_n_0 ),
        .I1(\result_OBUF[28]_inst_i_16_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[25]_inst_i_19_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[30]_inst_i_15_n_0 ),
        .O(\result_OBUF[23]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \result_OBUF[23]_inst_i_8 
       (.I0(B[29]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(\result_OBUF[30]_inst_i_10_n_0 ),
        .I3(B[25]),
        .I4(\u_ALU_1/A_or_Shift__41 [1]),
        .I5(\result_OBUF[23]_inst_i_13_n_0 ),
        .O(\result_OBUF[23]_inst_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \result_OBUF[23]_inst_i_9 
       (.I0(\result_OBUF[25]_inst_i_18_n_0 ),
        .I1(\u_ALU_1/A_or_Shift__41 [1]),
        .I2(\result_OBUF[23]_inst_i_14_n_0 ),
        .O(\result_OBUF[23]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAAAAAAAAA)) 
    \result_OBUF[24]_inst_i_1 
       (.I0(\result[24] ),
        .I1(\result[16]_0 ),
        .I2(douta[8]),
        .I3(\result_OBUF[24]_inst_i_3_n_0 ),
        .I4(\result_OBUF[24]_inst_i_4_n_0 ),
        .I5(\result[16]_1 ),
        .O(\result_OBUF[31]_inst_i_6 [7]));
  LUT6 #(
    .INIT(64'hFFFF0000FFB800B8)) 
    \result_OBUF[24]_inst_i_10 
       (.I0(B[28]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(B[24]),
        .I3(\u_ALU_1/A_or_Shift__41 [4]),
        .I4(B__0),
        .I5(\u_ALU_1/A_or_Shift__41 [3]),
        .O(\result_OBUF[24]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \result_OBUF[24]_inst_i_11 
       (.I0(B0[2]),
        .I1(B0[18]),
        .I2(\result_OBUF[0]_inst_i_4_0 ),
        .I3(B0[10]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[24]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \result_OBUF[24]_inst_i_12 
       (.I0(B0[4]),
        .I1(B0[20]),
        .I2(\result_OBUF[0]_inst_i_4_0 ),
        .I3(B0[12]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[24]_inst_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[24]_inst_i_13 
       (.I0(\result_OBUF[0]_inst_i_4_0 ),
        .I1(B0[26]),
        .O(B[26]));
  LUT6 #(
    .INIT(64'h000B000800000000)) 
    \result_OBUF[24]_inst_i_14 
       (.I0(B0[28]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(\u_ALU_1/A_or_Shift__41 [4]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(B0[24]),
        .I5(\result_OBUF[0]_inst_i_4_0 ),
        .O(\result_OBUF[24]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \result_OBUF[24]_inst_i_3 
       (.I0(\result_OBUF[31]_inst_i_1_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(\result_OBUF[25]_inst_i_12_n_0 ),
        .I3(\result_OBUF[31]_inst_i_13_n_0 ),
        .I4(\result_OBUF[24]_inst_i_6_n_0 ),
        .I5(\result_OBUF[28]_inst_i_7_n_0 ),
        .O(\result_OBUF[24]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    \result_OBUF[24]_inst_i_4 
       (.I0(\result[30] ),
        .I1(\result_OBUF[24]_inst_i_7_n_0 ),
        .I2(\result_OBUF[24]_inst_i_8_n_0 ),
        .I3(\result_OBUF[24]_inst_i_9_n_0 ),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .I5(\result_OBUF[31]_inst_i_13_n_0 ),
        .O(\result_OBUF[24]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h556A6A80)) 
    \result_OBUF[24]_inst_i_5 
       (.I0(\result_OBUF[0]_inst_i_9_0 [1]),
        .I1(A0[24]),
        .I2(\pc_reg[1] ),
        .I3(\u_ALU_1/B_signed [24]),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[31]_inst_i_12_11 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \result_OBUF[24]_inst_i_6 
       (.I0(\result_OBUF[25]_inst_i_16_n_0 ),
        .I1(\u_ALU_1/A_or_Shift__41 [1]),
        .I2(\result_OBUF[24]_inst_i_10_n_0 ),
        .O(\result_OBUF[24]_inst_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hC0A0)) 
    \result_OBUF[24]_inst_i_7 
       (.I0(\result_OBUF[23]_inst_i_7_n_0 ),
        .I1(\result_OBUF[25]_inst_i_15_n_0 ),
        .I2(\result_OBUF[31]_inst_i_10_n_0 ),
        .I3(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[24]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[24]_inst_i_8 
       (.I0(\result_OBUF[24]_inst_i_11_n_0 ),
        .I1(\result_OBUF[29]_inst_i_13_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[24]_inst_i_12_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[31]_inst_i_29_n_0 ),
        .O(\result_OBUF[24]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \result_OBUF[24]_inst_i_9 
       (.I0(B[30]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(\result_OBUF[30]_inst_i_10_n_0 ),
        .I3(B[26]),
        .I4(\u_ALU_1/A_or_Shift__41 [1]),
        .I5(\result_OBUF[24]_inst_i_14_n_0 ),
        .O(\result_OBUF[24]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAAAAAAAAA)) 
    \result_OBUF[25]_inst_i_1 
       (.I0(\result[25] ),
        .I1(\result[16]_0 ),
        .I2(douta[9]),
        .I3(\result_OBUF[25]_inst_i_4_n_0 ),
        .I4(\result_OBUF[25]_inst_i_5_n_0 ),
        .I5(\result[16]_1 ),
        .O(\result_OBUF[31]_inst_i_6 [8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \result_OBUF[25]_inst_i_11 
       (.I0(\result_OBUF[28]_inst_i_14_n_0 ),
        .I1(\u_ALU_1/A_or_Shift__41 [1]),
        .I2(\result_OBUF[25]_inst_i_16_n_0 ),
        .O(\result_OBUF[25]_inst_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \result_OBUF[25]_inst_i_12 
       (.I0(\result_OBUF[25]_inst_i_17_n_0 ),
        .I1(\u_ALU_1/A_or_Shift__41 [1]),
        .I2(\result_OBUF[25]_inst_i_18_n_0 ),
        .O(\result_OBUF[25]_inst_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hC0A0)) 
    \result_OBUF[25]_inst_i_13 
       (.I0(\result_OBUF[24]_inst_i_8_n_0 ),
        .I1(\result_OBUF[26]_inst_i_7_n_0 ),
        .I2(\result_OBUF[31]_inst_i_10_n_0 ),
        .I3(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[25]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[25]_inst_i_14 
       (.I0(\result_OBUF[25]_inst_i_19_n_0 ),
        .I1(\result_OBUF[30]_inst_i_15_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[28]_inst_i_16_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[31]_inst_i_19_n_0 ),
        .O(\result_OBUF[25]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \result_OBUF[25]_inst_i_15 
       (.I0(B__0),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(\result_OBUF[30]_inst_i_10_n_0 ),
        .I3(B[27]),
        .I4(\u_ALU_1/A_or_Shift__41 [1]),
        .I5(\result_OBUF[25]_inst_i_21_n_0 ),
        .O(\result_OBUF[25]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFB800B8)) 
    \result_OBUF[25]_inst_i_16 
       (.I0(B[30]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(B[26]),
        .I3(\u_ALU_1/A_or_Shift__41 [4]),
        .I4(B__0),
        .I5(\u_ALU_1/A_or_Shift__41 [3]),
        .O(\result_OBUF[25]_inst_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFF000000FE000200)) 
    \result_OBUF[25]_inst_i_17 
       (.I0(B0[27]),
        .I1(\u_ALU_1/A_or_Shift__41 [4]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(B0[31]),
        .I5(\u_ALU_1/A_or_Shift__41 [2]),
        .O(\result_OBUF[25]_inst_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFB800B8)) 
    \result_OBUF[25]_inst_i_18 
       (.I0(B[29]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(B[25]),
        .I3(\u_ALU_1/A_or_Shift__41 [4]),
        .I4(B__0),
        .I5(\u_ALU_1/A_or_Shift__41 [3]),
        .O(\result_OBUF[25]_inst_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \result_OBUF[25]_inst_i_19 
       (.I0(B0[3]),
        .I1(B0[19]),
        .I2(\result_OBUF[0]_inst_i_4_0 ),
        .I3(B0[11]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[25]_inst_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[25]_inst_i_20 
       (.I0(\result_OBUF[0]_inst_i_4_0 ),
        .I1(B0[27]),
        .O(B[27]));
  LUT6 #(
    .INIT(64'h000B000800000000)) 
    \result_OBUF[25]_inst_i_21 
       (.I0(B0[29]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(\u_ALU_1/A_or_Shift__41 [4]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(B0[25]),
        .I5(\result_OBUF[0]_inst_i_4_0 ),
        .O(\result_OBUF[25]_inst_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \result_OBUF[25]_inst_i_4 
       (.I0(\result_OBUF[31]_inst_i_1_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(\result_OBUF[25]_inst_i_11_n_0 ),
        .I3(\result_OBUF[31]_inst_i_13_n_0 ),
        .I4(\result_OBUF[25]_inst_i_12_n_0 ),
        .I5(\result_OBUF[28]_inst_i_7_n_0 ),
        .O(\result_OBUF[25]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    \result_OBUF[25]_inst_i_5 
       (.I0(\result[30] ),
        .I1(\result_OBUF[25]_inst_i_13_n_0 ),
        .I2(\result_OBUF[25]_inst_i_14_n_0 ),
        .I3(\result_OBUF[25]_inst_i_15_n_0 ),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .I5(\result_OBUF[31]_inst_i_13_n_0 ),
        .O(\result_OBUF[25]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h556A6A80)) 
    \result_OBUF[25]_inst_i_8 
       (.I0(\result_OBUF[0]_inst_i_9_0 [1]),
        .I1(A0[25]),
        .I2(\pc_reg[1] ),
        .I3(\u_ALU_1/B_signed [25]),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[31]_inst_i_12_12 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_OBUF[25]_inst_i_9 
       (.I0(\result_OBUF[27]_inst_i_9_0 ),
        .I1(\result_OBUF[27]_inst_i_9_1 ),
        .O(\result_OBUF[27]_inst_i_5_0 ));
  LUT6 #(
    .INIT(64'hFF00F0F0AAAACCCC)) 
    \result_OBUF[26]_inst_i_1 
       (.I0(\result_OBUF[31]_inst_i_12_1 ),
        .I1(O[0]),
        .I2(\result[27] [0]),
        .I3(\result_OBUF[26]_inst_i_3_n_0 ),
        .I4(\result_OBUF[27]_inst_i_9_0 ),
        .I5(\result_OBUF[27]_inst_i_9_1 ),
        .O(\result_OBUF[31]_inst_i_6 [9]));
  LUT5 #(
    .INIT(32'h556A6A80)) 
    \result_OBUF[26]_inst_i_2 
       (.I0(\result_OBUF[0]_inst_i_9_0 [1]),
        .I1(A0[26]),
        .I2(\pc_reg[1] ),
        .I3(\u_ALU_1/B_signed [26]),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[31]_inst_i_12_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8F8F8F8F8)) 
    \result_OBUF[26]_inst_i_3 
       (.I0(\result[16]_0 ),
        .I1(douta[10]),
        .I2(\result_OBUF[26]_inst_i_4_n_0 ),
        .I3(\result_OBUF[26]_inst_i_5_n_0 ),
        .I4(\result_OBUF[26]_inst_i_6_n_0 ),
        .I5(\result[30] ),
        .O(\result_OBUF[26]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \result_OBUF[26]_inst_i_4 
       (.I0(\result_OBUF[31]_inst_i_1_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(\result_OBUF[27]_inst_i_10_n_0 ),
        .I3(\result_OBUF[31]_inst_i_13_n_0 ),
        .I4(\result_OBUF[25]_inst_i_11_n_0 ),
        .I5(\result_OBUF[28]_inst_i_7_n_0 ),
        .O(\result_OBUF[26]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0000F222)) 
    \result_OBUF[26]_inst_i_5 
       (.I0(\result_OBUF[27]_inst_i_11_n_0 ),
        .I1(\result_OBUF[31]_inst_i_13_n_0 ),
        .I2(\result_OBUF[25]_inst_i_14_n_0 ),
        .I3(\result_OBUF[31]_inst_i_10_n_0 ),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[26]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hF2220000)) 
    \result_OBUF[26]_inst_i_6 
       (.I0(\result_OBUF[26]_inst_i_7_n_0 ),
        .I1(\result_OBUF[31]_inst_i_13_n_0 ),
        .I2(\result_OBUF[27]_inst_i_12_n_0 ),
        .I3(\result_OBUF[31]_inst_i_10_n_0 ),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[26]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \result_OBUF[26]_inst_i_7 
       (.I0(B[30]),
        .I1(B[26]),
        .I2(\result_OBUF[30]_inst_i_10_n_0 ),
        .I3(B[28]),
        .I4(\u_ALU_1/A_or_Shift__41 [1]),
        .I5(\u_ALU_1/A_or_Shift__41 [2]),
        .O(\result_OBUF[26]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF00F0F0AAAACCCC)) 
    \result_OBUF[27]_inst_i_1 
       (.I0(\result_OBUF[27]_inst_i_2_n_0 ),
        .I1(O[1]),
        .I2(\result[27] [1]),
        .I3(\result_OBUF[27]_inst_i_3_n_0 ),
        .I4(\result_OBUF[27]_inst_i_9_0 ),
        .I5(\result_OBUF[27]_inst_i_9_1 ),
        .O(\result_OBUF[31]_inst_i_6 [10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \result_OBUF[27]_inst_i_10 
       (.I0(\result_OBUF[27]_inst_i_14_n_0 ),
        .I1(\u_ALU_1/A_or_Shift__41 [1]),
        .I2(\result_OBUF[25]_inst_i_17_n_0 ),
        .O(\result_OBUF[27]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[27]_inst_i_11 
       (.I0(\result_OBUF[24]_inst_i_12_n_0 ),
        .I1(\result_OBUF[31]_inst_i_29_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[29]_inst_i_13_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[31]_inst_i_27_n_0 ),
        .O(\result_OBUF[27]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \result_OBUF[27]_inst_i_12 
       (.I0(B__0),
        .I1(B[27]),
        .I2(\result_OBUF[30]_inst_i_10_n_0 ),
        .I3(B[29]),
        .I4(\u_ALU_1/A_or_Shift__41 [1]),
        .I5(\u_ALU_1/A_or_Shift__41 [2]),
        .O(\result_OBUF[27]_inst_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \result_OBUF[27]_inst_i_13 
       (.I0(douta[26]),
        .I1(douta[4]),
        .I2(douta[5]),
        .I3(douta[3]),
        .I4(douta[27]),
        .O(\result_OBUF[27]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFF000000FE000200)) 
    \result_OBUF[27]_inst_i_14 
       (.I0(B0[29]),
        .I1(\u_ALU_1/A_or_Shift__41 [4]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(B0[31]),
        .I5(\u_ALU_1/A_or_Shift__41 [2]),
        .O(\result_OBUF[27]_inst_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h556A6A80)) 
    \result_OBUF[27]_inst_i_2 
       (.I0(\result_OBUF[0]_inst_i_9_0 [1]),
        .I1(A0[27]),
        .I2(\pc_reg[1] ),
        .I3(\u_ALU_1/B_signed [27]),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[27]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8F8F8F8F8)) 
    \result_OBUF[27]_inst_i_3 
       (.I0(\result[16]_0 ),
        .I1(douta[11]),
        .I2(\result_OBUF[27]_inst_i_6_n_0 ),
        .I3(\result_OBUF[27]_inst_i_7_n_0 ),
        .I4(\result_OBUF[27]_inst_i_8_n_0 ),
        .I5(\result[30] ),
        .O(\result_OBUF[27]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \result_OBUF[27]_inst_i_4 
       (.I0(\result_OBUF[0]_inst_i_9_0 [2]),
        .I1(ALUop),
        .O(\result_OBUF[27]_inst_i_9_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \result_OBUF[27]_inst_i_5 
       (.I0(\result_OBUF[0]_inst_i_9_0 [2]),
        .I1(\result_OBUF[0]_inst_i_9_0 [1]),
        .I2(ALUop),
        .O(\result_OBUF[27]_inst_i_9_1 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \result_OBUF[27]_inst_i_6 
       (.I0(\result_OBUF[31]_inst_i_1_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(\result_OBUF[28]_inst_i_8_n_0 ),
        .I3(\result_OBUF[31]_inst_i_13_n_0 ),
        .I4(\result_OBUF[27]_inst_i_10_n_0 ),
        .I5(\result_OBUF[28]_inst_i_7_n_0 ),
        .O(\result_OBUF[27]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0000F222)) 
    \result_OBUF[27]_inst_i_7 
       (.I0(\result_OBUF[28]_inst_i_11_n_0 ),
        .I1(\result_OBUF[31]_inst_i_13_n_0 ),
        .I2(\result_OBUF[27]_inst_i_11_n_0 ),
        .I3(\result_OBUF[31]_inst_i_10_n_0 ),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[27]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hF2220000)) 
    \result_OBUF[27]_inst_i_8 
       (.I0(\result_OBUF[27]_inst_i_12_n_0 ),
        .I1(\result_OBUF[31]_inst_i_13_n_0 ),
        .I2(\result_OBUF[28]_inst_i_12_n_0 ),
        .I3(\result_OBUF[31]_inst_i_10_n_0 ),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[27]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAA2A0202)) 
    \result_OBUF[27]_inst_i_9 
       (.I0(\result_OBUF[27]_inst_i_13_n_0 ),
        .I1(douta[28]),
        .I2(douta[29]),
        .I3(douta[26]),
        .I4(douta[27]),
        .I5(\bbstub_douta[30] ),
        .O(ALUop));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[28]_inst_i_11 
       (.I0(\result_OBUF[28]_inst_i_16_n_0 ),
        .I1(\result_OBUF[31]_inst_i_19_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[30]_inst_i_15_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[31]_inst_i_16_n_0 ),
        .O(\result_OBUF[28]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00000000C0008800)) 
    \result_OBUF[28]_inst_i_12 
       (.I0(B0[28]),
        .I1(\result_OBUF[30]_inst_i_10_n_0 ),
        .I2(B0[30]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [1]),
        .I5(\u_ALU_1/A_or_Shift__41 [2]),
        .O(\result_OBUF[28]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFF000000FE000200)) 
    \result_OBUF[28]_inst_i_13 
       (.I0(B0[30]),
        .I1(\u_ALU_1/A_or_Shift__41 [4]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(B0[31]),
        .I5(\u_ALU_1/A_or_Shift__41 [2]),
        .O(\result_OBUF[28]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFF000000FE000200)) 
    \result_OBUF[28]_inst_i_14 
       (.I0(B0[28]),
        .I1(\u_ALU_1/A_or_Shift__41 [4]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(B0[31]),
        .I5(\u_ALU_1/A_or_Shift__41 [2]),
        .O(\result_OBUF[28]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0F0FFFE)) 
    \result_OBUF[28]_inst_i_15 
       (.I0(JrPC[29]),
        .I1(JrPC[28]),
        .I2(\result_OBUF[29]_inst_i_16_n_0 ),
        .I3(JrPC[25]),
        .I4(Sftmd),
        .I5(\result_OBUF[29]_inst_i_14_n_0 ),
        .O(\result_OBUF[28]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \result_OBUF[28]_inst_i_16 
       (.I0(B0[5]),
        .I1(B0[21]),
        .I2(\result_OBUF[0]_inst_i_4_0 ),
        .I3(B0[13]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[28]_inst_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFAE0000)) 
    \result_OBUF[28]_inst_i_3 
       (.I0(\result_OBUF[28]_inst_i_7_n_0 ),
        .I1(\result_OBUF[28]_inst_i_8_n_0 ),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(\result_OBUF[28]_inst_i_9_n_0 ),
        .I4(\result_OBUF[31]_inst_i_1_0 ),
        .I5(\result_OBUF[28]_inst_i_1_0 ),
        .O(\result_OBUF[28]_inst_i_10 ));
  LUT5 #(
    .INIT(32'h0000F222)) 
    \result_OBUF[28]_inst_i_4 
       (.I0(\result_OBUF[29]_inst_i_10_n_0 ),
        .I1(\result_OBUF[31]_inst_i_13_n_0 ),
        .I2(\result_OBUF[28]_inst_i_11_n_0 ),
        .I3(\result_OBUF[31]_inst_i_10_n_0 ),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[31]_inst_i_12_0 ));
  LUT5 #(
    .INIT(32'hF2220000)) 
    \result_OBUF[28]_inst_i_5 
       (.I0(\result_OBUF[28]_inst_i_12_n_0 ),
        .I1(\result_OBUF[31]_inst_i_13_n_0 ),
        .I2(\result_OBUF[29]_inst_i_9_n_0 ),
        .I3(\result_OBUF[31]_inst_i_10_n_0 ),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[31]_inst_i_12_13 ));
  LUT5 #(
    .INIT(32'h556A6A80)) 
    \result_OBUF[28]_inst_i_6 
       (.I0(\result_OBUF[0]_inst_i_9_0 [1]),
        .I1(A0[28]),
        .I2(\pc_reg[1] ),
        .I3(\u_ALU_1/B_signed [28]),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[31]_inst_i_12_14 ));
  LUT6 #(
    .INIT(64'hAAAAAAA0AAAAAAA2)) 
    \result_OBUF[28]_inst_i_7 
       (.I0(B__0),
        .I1(Sftmd),
        .I2(\result_OBUF[31]_inst_i_23_n_0 ),
        .I3(\result_OBUF[31]_inst_i_24_n_0 ),
        .I4(\result_OBUF[31]_inst_i_25_n_0 ),
        .I5(\result_OBUF[31]_inst_i_26_n_0 ),
        .O(\result_OBUF[28]_inst_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \result_OBUF[28]_inst_i_8 
       (.I0(\result_OBUF[28]_inst_i_13_n_0 ),
        .I1(\u_ALU_1/A_or_Shift__41 [1]),
        .I2(\result_OBUF[28]_inst_i_14_n_0 ),
        .O(\result_OBUF[28]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000A000800000000)) 
    \result_OBUF[28]_inst_i_9 
       (.I0(\u_ALU_1/A_or_Shift__41 [0]),
        .I1(\result_OBUF[31]_inst_i_26_n_0 ),
        .I2(\result_OBUF[28]_inst_i_15_n_0 ),
        .I3(\result_OBUF[31]_inst_i_23_n_0 ),
        .I4(Sftmd),
        .I5(\result_OBUF[29]_inst_i_11_n_0 ),
        .O(\result_OBUF[28]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEEEEEAAAAAAAA)) 
    \result_OBUF[29]_inst_i_1 
       (.I0(\result[29] ),
        .I1(\result_OBUF[29]_inst_i_3_n_0 ),
        .I2(\result_OBUF[29]_inst_i_4_n_0 ),
        .I3(\result_OBUF[29]_inst_i_5_n_0 ),
        .I4(\result[30] ),
        .I5(\result[16]_1 ),
        .O(\result_OBUF[31]_inst_i_6 [11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[29]_inst_i_10 
       (.I0(\result_OBUF[29]_inst_i_13_n_0 ),
        .I1(\result_OBUF[31]_inst_i_27_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[31]_inst_i_29_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[31]_inst_i_30_n_0 ),
        .O(\result_OBUF[29]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0004)) 
    \result_OBUF[29]_inst_i_11 
       (.I0(\u_ALU_1/A_or_Shift__41 [1]),
        .I1(B[29]),
        .I2(\u_ALU_1/A_or_Shift__41 [4]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(B__0),
        .I5(\u_ALU_1/A_or_Shift__41 [2]),
        .O(\result_OBUF[29]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \result_OBUF[29]_inst_i_12 
       (.I0(\result_OBUF[29]_inst_i_14_n_0 ),
        .I1(\result_OBUF[29]_inst_i_15_n_0 ),
        .I2(\result_OBUF[29]_inst_i_16_n_0 ),
        .I3(\result_OBUF[29]_inst_i_17_n_0 ),
        .I4(\result_OBUF[29]_inst_i_18_n_0 ),
        .I5(\result_OBUF[29]_inst_i_19_n_0 ),
        .O(\result_OBUF[29]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \result_OBUF[29]_inst_i_13 
       (.I0(B0[6]),
        .I1(B0[22]),
        .I2(\result_OBUF[0]_inst_i_4_0 ),
        .I3(B0[14]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[29]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h3FFF00002AAA0000)) 
    \result_OBUF[29]_inst_i_14 
       (.I0(A0[27]),
        .I1(\result_OBUF[31]_inst_i_40_n_0 ),
        .I2(\result_OBUF[31]_inst_i_41_n_0 ),
        .I3(\bbstub_douta[31] ),
        .I4(\pc_reg[1] ),
        .I5(A0[26]),
        .O(\result_OBUF[29]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h8888088888888888)) 
    \result_OBUF[29]_inst_i_15 
       (.I0(A0[25]),
        .I1(\pc_reg[1] ),
        .I2(\bbstub_douta[31] ),
        .I3(\result_OBUF[31]_inst_i_41_n_0 ),
        .I4(\bbstub_douta[5] ),
        .I5(\result_OBUF[31]_inst_i_46_n_0 ),
        .O(\result_OBUF[29]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h3FFF00002AAA0000)) 
    \result_OBUF[29]_inst_i_16 
       (.I0(A0[31]),
        .I1(\result_OBUF[31]_inst_i_40_n_0 ),
        .I2(\result_OBUF[31]_inst_i_41_n_0 ),
        .I3(\bbstub_douta[31] ),
        .I4(\pc_reg[1] ),
        .I5(A0[30]),
        .O(\result_OBUF[29]_inst_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h3FFF00002AAA0000)) 
    \result_OBUF[29]_inst_i_17 
       (.I0(A0[29]),
        .I1(\result_OBUF[31]_inst_i_40_n_0 ),
        .I2(\result_OBUF[31]_inst_i_41_n_0 ),
        .I3(\bbstub_douta[31] ),
        .I4(\pc_reg[1] ),
        .I5(A0[28]),
        .O(\result_OBUF[29]_inst_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h3FFF00002AAA0000)) 
    \result_OBUF[29]_inst_i_18 
       (.I0(A0[22]),
        .I1(\result_OBUF[31]_inst_i_40_n_0 ),
        .I2(\result_OBUF[31]_inst_i_41_n_0 ),
        .I3(\bbstub_douta[31] ),
        .I4(\pc_reg[1] ),
        .I5(A0[21]),
        .O(\result_OBUF[29]_inst_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h3FFF00002AAA0000)) 
    \result_OBUF[29]_inst_i_19 
       (.I0(A0[24]),
        .I1(\result_OBUF[31]_inst_i_40_n_0 ),
        .I2(\result_OBUF[31]_inst_i_41_n_0 ),
        .I3(\bbstub_douta[31] ),
        .I4(\pc_reg[1] ),
        .I5(A0[23]),
        .O(\result_OBUF[29]_inst_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEA00EA00EA00)) 
    \result_OBUF[29]_inst_i_3 
       (.I0(\result_OBUF[29]_inst_i_7_n_0 ),
        .I1(\result_OBUF[30]_inst_i_8_n_0 ),
        .I2(\result_OBUF[31]_inst_i_10_n_0 ),
        .I3(\result_OBUF[31]_inst_i_1_0 ),
        .I4(douta[13]),
        .I5(\result[16]_0 ),
        .O(\result_OBUF[29]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h808080800000FF00)) 
    \result_OBUF[29]_inst_i_4 
       (.I0(\result_OBUF[31]_inst_i_10_n_0 ),
        .I1(\result_OBUF[29]_inst_i_8_n_0 ),
        .I2(\result_OBUF[30]_inst_i_11_n_0 ),
        .I3(\result_OBUF[30]_inst_i_12_n_0 ),
        .I4(\result_OBUF[31]_inst_i_13_n_0 ),
        .I5(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[29]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h2222F000)) 
    \result_OBUF[29]_inst_i_5 
       (.I0(\result_OBUF[29]_inst_i_9_n_0 ),
        .I1(\result_OBUF[31]_inst_i_13_n_0 ),
        .I2(\result_OBUF[29]_inst_i_10_n_0 ),
        .I3(\result_OBUF[31]_inst_i_10_n_0 ),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[29]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h556A6A80)) 
    \result_OBUF[29]_inst_i_6 
       (.I0(\result_OBUF[0]_inst_i_9_0 [1]),
        .I1(A0[29]),
        .I2(\pc_reg[1] ),
        .I3(\u_ALU_1/B_signed [29]),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[31]_inst_i_12_15 ));
  LUT6 #(
    .INIT(64'hFF44FF4F00440040)) 
    \result_OBUF[29]_inst_i_7 
       (.I0(\u_ALU_1/A_or_Shift__41 [0]),
        .I1(\result_OBUF[29]_inst_i_11_n_0 ),
        .I2(\result_OBUF[31]_inst_i_26_n_0 ),
        .I3(\result_OBUF[29]_inst_i_12_n_0 ),
        .I4(Sftmd),
        .I5(B__0),
        .O(\result_OBUF[29]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \result_OBUF[29]_inst_i_8 
       (.I0(\u_ALU_1/A_or_Shift__41 [4]),
        .I1(\u_ALU_1/A_or_Shift__41 [3]),
        .I2(B0[30]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .O(\result_OBUF[29]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000C0008800)) 
    \result_OBUF[29]_inst_i_9 
       (.I0(B0[29]),
        .I1(\result_OBUF[30]_inst_i_10_n_0 ),
        .I2(B0[31]),
        .I3(\result_OBUF[0]_inst_i_4_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [1]),
        .I5(\u_ALU_1/A_or_Shift__41 [2]),
        .O(\result_OBUF[29]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEAEEEAEEEA)) 
    \result_OBUF[2]_inst_i_1 
       (.I0(\result[2] ),
        .I1(\result_OBUF[27]_inst_i_9_0 ),
        .I2(\result_OBUF[2]_inst_i_3_n_0 ),
        .I3(\result_OBUF[2]_inst_i_4_n_0 ),
        .I4(\result_OBUF[2]_inst_i_5_n_0 ),
        .I5(\result_OBUF[3]_inst_i_6_n_0 ),
        .O(\result_OBUF[31]_inst_i_6 [0]));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \result_OBUF[2]_inst_i_10 
       (.I0(B[2]),
        .I1(B[18]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[26]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .I5(B[10]),
        .O(\result_OBUF[2]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \result_OBUF[2]_inst_i_11 
       (.I0(\result_OBUF[0]_inst_i_4_0 ),
        .I1(B0[1]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(\u_ALU_1/A_or_Shift__41 [4]),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\u_ALU_1/A_or_Shift__41 [1]),
        .O(\result_OBUF[2]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \result_OBUF[2]_inst_i_3 
       (.I0(\result_OBUF[3]_inst_i_7_n_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(\result_OBUF[3]_inst_i_9_n_0 ),
        .I3(\result_OBUF[31]_inst_i_13_n_0 ),
        .I4(\result_OBUF[2]_inst_i_6_n_0 ),
        .I5(\result_OBUF[28]_inst_i_7_n_0 ),
        .O(\result_OBUF[2]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000001666E888)) 
    \result_OBUF[2]_inst_i_4 
       (.I0(\result_OBUF[0]_inst_i_9_0 [0]),
        .I1(\u_ALU_1/B_signed [2]),
        .I2(\pc_reg[1] ),
        .I3(A0[2]),
        .I4(\result_OBUF[0]_inst_i_9_0 [1]),
        .I5(\result_OBUF[27]_inst_i_9_1 ),
        .O(\result_OBUF[2]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \result_OBUF[2]_inst_i_5 
       (.I0(\result_OBUF[2]_inst_i_7_n_0 ),
        .I1(\result_OBUF[2]_inst_i_8_n_0 ),
        .I2(\result_OBUF[3]_inst_i_12_n_0 ),
        .I3(\result_OBUF[3]_inst_i_14_n_0 ),
        .I4(\result_OBUF[3]_inst_i_13_n_0 ),
        .I5(\result_OBUF[2]_inst_i_9_n_0 ),
        .O(\result_OBUF[2]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[2]_inst_i_6 
       (.I0(\result_OBUF[3]_inst_i_16_n_0 ),
        .I1(\result_OBUF[4]_inst_i_9_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[6]_inst_i_11_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[2]_inst_i_10_n_0 ),
        .O(\result_OBUF[2]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0011001000000000)) 
    \result_OBUF[2]_inst_i_7 
       (.I0(\result_OBUF[0]_inst_i_9_0 [0]),
        .I1(\u_ALU_1/A_or_Shift__41 [0]),
        .I2(Sftmd),
        .I3(\result_OBUF[29]_inst_i_12_n_0 ),
        .I4(\result_OBUF[31]_inst_i_26_n_0 ),
        .I5(\result_OBUF[3]_inst_i_19_n_0 ),
        .O(\result_OBUF[2]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0022002000000000)) 
    \result_OBUF[2]_inst_i_8 
       (.I0(\result_OBUF[2]_inst_i_11_n_0 ),
        .I1(\result_OBUF[0]_inst_i_9_0 [0]),
        .I2(Sftmd),
        .I3(\result_OBUF[29]_inst_i_12_n_0 ),
        .I4(\result_OBUF[31]_inst_i_26_n_0 ),
        .I5(\u_ALU_1/A_or_Shift__41 [0]),
        .O(\result_OBUF[2]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[2]_inst_i_9 
       (.I0(\result_OBUF[8]_inst_i_12_n_0 ),
        .I1(\result_OBUF[4]_inst_i_9_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[6]_inst_i_11_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[2]_inst_i_10_n_0 ),
        .O(\result_OBUF[2]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEEEEEAAAAAAAA)) 
    \result_OBUF[30]_inst_i_1 
       (.I0(\result[30]_0 ),
        .I1(\result_OBUF[30]_inst_i_3_n_0 ),
        .I2(\result_OBUF[30]_inst_i_4_n_0 ),
        .I3(\result_OBUF[30]_inst_i_5_n_0 ),
        .I4(\result[30] ),
        .I5(\result[16]_1 ),
        .O(\result_OBUF[31]_inst_i_6 [12]));
  LUT2 #(
    .INIT(4'h1)) 
    \result_OBUF[30]_inst_i_10 
       (.I0(\u_ALU_1/A_or_Shift__41 [3]),
        .I1(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[30]_inst_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_OBUF[30]_inst_i_11 
       (.I0(\u_ALU_1/A_or_Shift__41 [1]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .O(\result_OBUF[30]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[30]_inst_i_12 
       (.I0(\result_OBUF[30]_inst_i_15_n_0 ),
        .I1(\result_OBUF[31]_inst_i_16_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[31]_inst_i_19_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[31]_inst_i_21_n_0 ),
        .O(\result_OBUF[30]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hBFFF800080008000)) 
    \result_OBUF[30]_inst_i_13 
       (.I0(douta[10]),
        .I1(\result_OBUF[31]_inst_i_40_n_0 ),
        .I2(\result_OBUF[31]_inst_i_41_n_0 ),
        .I3(\bbstub_douta[31] ),
        .I4(\pc_reg[1] ),
        .I5(A0[4]),
        .O(\u_ALU_1/A_or_Shift__41 [4]));
  LUT6 #(
    .INIT(64'hBFFF800080008000)) 
    \result_OBUF[30]_inst_i_14 
       (.I0(douta[9]),
        .I1(\result_OBUF[31]_inst_i_40_n_0 ),
        .I2(\result_OBUF[31]_inst_i_41_n_0 ),
        .I3(\bbstub_douta[31] ),
        .I4(\pc_reg[1] ),
        .I5(A0[3]),
        .O(\u_ALU_1/A_or_Shift__41 [3]));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \result_OBUF[30]_inst_i_15 
       (.I0(B0[7]),
        .I1(B0[23]),
        .I2(\result_OBUF[0]_inst_i_4_0 ),
        .I3(B0[15]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[30]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hF8F88888FF888888)) 
    \result_OBUF[30]_inst_i_3 
       (.I0(\result[16]_0 ),
        .I1(douta[14]),
        .I2(B__0),
        .I3(\result_OBUF[30]_inst_i_8_n_0 ),
        .I4(\result_OBUF[31]_inst_i_1_0 ),
        .I5(\result_OBUF[31]_inst_i_13_n_0 ),
        .O(\result_OBUF[30]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000080800000FF00)) 
    \result_OBUF[30]_inst_i_4 
       (.I0(B[30]),
        .I1(\result_OBUF[30]_inst_i_10_n_0 ),
        .I2(\result_OBUF[30]_inst_i_11_n_0 ),
        .I3(\result_OBUF[31]_inst_i_11_n_0 ),
        .I4(\result_OBUF[31]_inst_i_13_n_0 ),
        .I5(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[30]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h80800000FF000000)) 
    \result_OBUF[30]_inst_i_5 
       (.I0(B__0),
        .I1(\result_OBUF[30]_inst_i_10_n_0 ),
        .I2(\result_OBUF[30]_inst_i_11_n_0 ),
        .I3(\result_OBUF[30]_inst_i_12_n_0 ),
        .I4(\result_OBUF[31]_inst_i_10_n_0 ),
        .I5(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[30]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h556A6A80)) 
    \result_OBUF[30]_inst_i_6 
       (.I0(\result_OBUF[0]_inst_i_9_0 [1]),
        .I1(A0[30]),
        .I2(\pc_reg[1] ),
        .I3(\u_ALU_1/B_signed [30]),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[31]_inst_i_12_16 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[30]_inst_i_7 
       (.I0(\result_OBUF[0]_inst_i_4_0 ),
        .I1(B0[31]),
        .O(B__0));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0004)) 
    \result_OBUF[30]_inst_i_8 
       (.I0(\u_ALU_1/A_or_Shift__41 [1]),
        .I1(B[30]),
        .I2(\u_ALU_1/A_or_Shift__41 [4]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(B__0),
        .I5(\u_ALU_1/A_or_Shift__41 [2]),
        .O(\result_OBUF[30]_inst_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[30]_inst_i_9 
       (.I0(\result_OBUF[0]_inst_i_4_0 ),
        .I1(B0[30]),
        .O(B[30]));
  LUT5 #(
    .INIT(32'hFEEEAAAA)) 
    \result_OBUF[31]_inst_i_1 
       (.I0(\result[31] ),
        .I1(\result_OBUF[31]_inst_i_3_n_0 ),
        .I2(\result_OBUF[31]_inst_i_4_n_0 ),
        .I3(\result[30] ),
        .I4(\result[16]_1 ),
        .O(\result_OBUF[31]_inst_i_6 [13]));
  LUT6 #(
    .INIT(64'h0003000200000000)) 
    \result_OBUF[31]_inst_i_10 
       (.I0(Sftmd),
        .I1(\result_OBUF[31]_inst_i_23_n_0 ),
        .I2(\result_OBUF[31]_inst_i_24_n_0 ),
        .I3(\result_OBUF[31]_inst_i_25_n_0 ),
        .I4(\result_OBUF[31]_inst_i_26_n_0 ),
        .I5(\u_ALU_1/A_or_Shift__41 [0]),
        .O(\result_OBUF[31]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \result_OBUF[31]_inst_i_11 
       (.I0(\result_OBUF[31]_inst_i_27_n_0 ),
        .I1(\result_OBUF[31]_inst_i_28_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[31]_inst_i_29_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[31]_inst_i_30_n_0 ),
        .O(\result_OBUF[31]_inst_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFEEEFEE)) 
    \result_OBUF[31]_inst_i_12 
       (.I0(douta[31]),
        .I1(douta[30]),
        .I2(douta[29]),
        .I3(\result_OBUF[31]_inst_i_31_n_0 ),
        .I4(douta[26]),
        .O(\result_OBUF[0]_inst_i_9_0 [0]));
  LUT6 #(
    .INIT(64'hFFFFFFFAFFFFFFFB)) 
    \result_OBUF[31]_inst_i_13 
       (.I0(\u_ALU_1/A_or_Shift__41 [0]),
        .I1(Sftmd),
        .I2(\result_OBUF[31]_inst_i_23_n_0 ),
        .I3(\result_OBUF[31]_inst_i_24_n_0 ),
        .I4(\result_OBUF[31]_inst_i_25_n_0 ),
        .I5(\result_OBUF[31]_inst_i_26_n_0 ),
        .O(\result_OBUF[31]_inst_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \result_OBUF[31]_inst_i_14 
       (.I0(\result_OBUF[0]_inst_i_4_0 ),
        .I1(B0[31]),
        .I2(\result_OBUF[30]_inst_i_10_n_0 ),
        .I3(\u_ALU_1/A_or_Shift__41 [2]),
        .I4(\u_ALU_1/A_or_Shift__41 [1]),
        .O(\result_OBUF[31]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAA00A8)) 
    \result_OBUF[31]_inst_i_15 
       (.I0(\result_OBUF[31]_inst_i_32_n_0 ),
        .I1(\result_OBUF[31]_inst_i_33_n_0 ),
        .I2(\result_OBUF[31]_inst_i_34_n_0 ),
        .I3(douta[29]),
        .I4(\result_OBUF[31]_inst_i_35_n_0 ),
        .I5(\bbstub_douta[30] ),
        .O(\result_OBUF[0]_inst_i_9_0 [1]));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \result_OBUF[31]_inst_i_16 
       (.I0(B[27]),
        .I1(B[11]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[3]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .I5(B[19]),
        .O(\result_OBUF[31]_inst_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \result_OBUF[31]_inst_i_17 
       (.I0(B__0),
        .I1(B[15]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[7]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .I5(B[23]),
        .O(\result_OBUF[31]_inst_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hBFFF800080008000)) 
    \result_OBUF[31]_inst_i_18 
       (.I0(douta[7]),
        .I1(\result_OBUF[31]_inst_i_40_n_0 ),
        .I2(\result_OBUF[31]_inst_i_41_n_0 ),
        .I3(\bbstub_douta[31] ),
        .I4(\pc_reg[1] ),
        .I5(A0[1]),
        .O(\u_ALU_1/A_or_Shift__41 [1]));
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
    .INIT(64'hBFFF800080008000)) 
    \result_OBUF[31]_inst_i_20 
       (.I0(douta[8]),
        .I1(\result_OBUF[31]_inst_i_40_n_0 ),
        .I2(\result_OBUF[31]_inst_i_41_n_0 ),
        .I3(\bbstub_douta[31] ),
        .I4(\pc_reg[1] ),
        .I5(A0[2]),
        .O(\u_ALU_1/A_or_Shift__41 [2]));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \result_OBUF[31]_inst_i_21 
       (.I0(B[29]),
        .I1(B[13]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[5]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .I5(B[21]),
        .O(\result_OBUF[31]_inst_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \result_OBUF[31]_inst_i_22 
       (.I0(\result_OBUF[31]_inst_i_46_n_0 ),
        .I1(\bbstub_douta[5] ),
        .I2(douta[29]),
        .I3(douta[3]),
        .I4(douta[2]),
        .I5(\bbstub_douta[31] ),
        .O(Sftmd));
  LUT6 #(
    .INIT(64'h0000FF000000FE00)) 
    \result_OBUF[31]_inst_i_23 
       (.I0(A0[23]),
        .I1(A0[24]),
        .I2(A0[21]),
        .I3(\pc_reg[1] ),
        .I4(Sftmd),
        .I5(A0[22]),
        .O(\result_OBUF[31]_inst_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF000000FE00)) 
    \result_OBUF[31]_inst_i_24 
       (.I0(A0[30]),
        .I1(A0[31]),
        .I2(A0[28]),
        .I3(\pc_reg[1] ),
        .I4(Sftmd),
        .I5(A0[29]),
        .O(\result_OBUF[31]_inst_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h0F000E00)) 
    \result_OBUF[31]_inst_i_25 
       (.I0(A0[26]),
        .I1(A0[27]),
        .I2(Sftmd),
        .I3(\pc_reg[1] ),
        .I4(A0[25]),
        .O(\result_OBUF[31]_inst_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \result_OBUF[31]_inst_i_26 
       (.I0(\result_OBUF[31]_inst_i_47_n_0 ),
        .I1(\result_OBUF[31]_inst_i_48_n_0 ),
        .I2(\result_OBUF[31]_inst_i_49_n_0 ),
        .I3(\result_OBUF[31]_inst_i_50_n_0 ),
        .O(\result_OBUF[31]_inst_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \result_OBUF[31]_inst_i_27 
       (.I0(B[26]),
        .I1(B[10]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[2]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .I5(B[18]),
        .O(\result_OBUF[31]_inst_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \result_OBUF[31]_inst_i_28 
       (.I0(B[30]),
        .I1(B[14]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[6]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .I5(B[22]),
        .O(\result_OBUF[31]_inst_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \result_OBUF[31]_inst_i_29 
       (.I0(B[24]),
        .I1(B[8]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[0]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .I5(B[16]),
        .O(\result_OBUF[31]_inst_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \result_OBUF[31]_inst_i_3 
       (.I0(\result_OBUF[0]_inst_i_4_0 ),
        .I1(B0[31]),
        .I2(\result_OBUF[31]_inst_i_1_0 ),
        .I3(douta[15]),
        .I4(\result[16]_0 ),
        .O(\result_OBUF[31]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \result_OBUF[31]_inst_i_30 
       (.I0(B[28]),
        .I1(B[12]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[4]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .I5(B[20]),
        .O(\result_OBUF[31]_inst_i_30_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \result_OBUF[31]_inst_i_31 
       (.I0(\result_OBUF[31]_inst_i_59_n_0 ),
        .I1(douta[28]),
        .I2(douta[26]),
        .I3(douta[27]),
        .I4(douta[4]),
        .O(\result_OBUF[31]_inst_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBF)) 
    \result_OBUF[31]_inst_i_32 
       (.I0(\result_OBUF[31]_inst_i_33_n_0 ),
        .I1(douta[1]),
        .I2(douta[0]),
        .I3(douta[4]),
        .I4(douta[5]),
        .I5(douta[3]),
        .O(\result_OBUF[31]_inst_i_32_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \result_OBUF[31]_inst_i_33 
       (.I0(douta[28]),
        .I1(douta[26]),
        .I2(douta[27]),
        .O(\result_OBUF[31]_inst_i_33_n_0 ));
  LUT5 #(
    .INIT(32'hFFBCFFFF)) 
    \result_OBUF[31]_inst_i_34 
       (.I0(douta[2]),
        .I1(douta[3]),
        .I2(douta[1]),
        .I3(douta[4]),
        .I4(douta[5]),
        .O(\result_OBUF[31]_inst_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \result_OBUF[31]_inst_i_35 
       (.I0(douta[28]),
        .I1(douta[27]),
        .I2(douta[26]),
        .O(\result_OBUF[31]_inst_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[31]_inst_i_36 
       (.I0(\result_OBUF[0]_inst_i_4_0 ),
        .I1(B0[11]),
        .O(B[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[31]_inst_i_37 
       (.I0(\result_OBUF[0]_inst_i_4_0 ),
        .I1(B0[19]),
        .O(B[19]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[31]_inst_i_38 
       (.I0(\result_OBUF[0]_inst_i_4_0 ),
        .I1(B0[15]),
        .O(B[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[31]_inst_i_39 
       (.I0(\result_OBUF[0]_inst_i_4_0 ),
        .I1(B0[23]),
        .O(B[23]));
  LUT6 #(
    .INIT(64'h00C0FFEA00C000EA)) 
    \result_OBUF[31]_inst_i_4 
       (.I0(\result_OBUF[31]_inst_i_9_n_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(\result_OBUF[31]_inst_i_11_n_0 ),
        .I3(\result_OBUF[0]_inst_i_9_0 [0]),
        .I4(\result_OBUF[31]_inst_i_13_n_0 ),
        .I5(\result_OBUF[31]_inst_i_14_n_0 ),
        .O(\result_OBUF[31]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h000D)) 
    \result_OBUF[31]_inst_i_40 
       (.I0(douta[0]),
        .I1(douta[1]),
        .I2(douta[5]),
        .I3(douta[4]),
        .O(\result_OBUF[31]_inst_i_40_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \result_OBUF[31]_inst_i_41 
       (.I0(douta[29]),
        .I1(douta[3]),
        .I2(douta[2]),
        .O(\result_OBUF[31]_inst_i_41_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[31]_inst_i_42 
       (.I0(\result_OBUF[0]_inst_i_4_0 ),
        .I1(B0[9]),
        .O(B[9]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[31]_inst_i_43 
       (.I0(\result_OBUF[0]_inst_i_4_0 ),
        .I1(B0[17]),
        .O(B[17]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[31]_inst_i_44 
       (.I0(\result_OBUF[0]_inst_i_4_0 ),
        .I1(B0[13]),
        .O(B[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[31]_inst_i_45 
       (.I0(\result_OBUF[0]_inst_i_4_0 ),
        .I1(B0[21]),
        .O(B[21]));
  LUT2 #(
    .INIT(4'hB)) 
    \result_OBUF[31]_inst_i_46 
       (.I0(douta[1]),
        .I1(douta[0]),
        .O(\result_OBUF[31]_inst_i_46_n_0 ));
  LUT5 #(
    .INIT(32'h0F0F0F1F)) 
    \result_OBUF[31]_inst_i_47 
       (.I0(A0[12]),
        .I1(A0[11]),
        .I2(\pc_reg[1] ),
        .I3(A0[10]),
        .I4(A0[9]),
        .O(\result_OBUF[31]_inst_i_47_n_0 ));
  LUT5 #(
    .INIT(32'h0F0F0F1F)) 
    \result_OBUF[31]_inst_i_48 
       (.I0(A0[6]),
        .I1(A0[5]),
        .I2(\pc_reg[1] ),
        .I3(A0[8]),
        .I4(A0[7]),
        .O(\result_OBUF[31]_inst_i_48_n_0 ));
  LUT5 #(
    .INIT(32'h0F0F0F1F)) 
    \result_OBUF[31]_inst_i_49 
       (.I0(A0[16]),
        .I1(A0[15]),
        .I2(\pc_reg[1] ),
        .I3(A0[14]),
        .I4(A0[13]),
        .O(\result_OBUF[31]_inst_i_49_n_0 ));
  LUT5 #(
    .INIT(32'h0F0F0F1F)) 
    \result_OBUF[31]_inst_i_50 
       (.I0(A0[20]),
        .I1(A0[19]),
        .I2(\pc_reg[1] ),
        .I3(A0[18]),
        .I4(A0[17]),
        .O(\result_OBUF[31]_inst_i_50_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[31]_inst_i_51 
       (.I0(\result_OBUF[0]_inst_i_4_0 ),
        .I1(B0[10]),
        .O(B[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[31]_inst_i_52 
       (.I0(\result_OBUF[0]_inst_i_4_0 ),
        .I1(B0[18]),
        .O(B[18]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[31]_inst_i_53 
       (.I0(\result_OBUF[0]_inst_i_4_0 ),
        .I1(B0[14]),
        .O(B[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[31]_inst_i_54 
       (.I0(\result_OBUF[0]_inst_i_4_0 ),
        .I1(B0[22]),
        .O(B[22]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[31]_inst_i_55 
       (.I0(\result_OBUF[0]_inst_i_4_0 ),
        .I1(B0[8]),
        .O(B[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[31]_inst_i_56 
       (.I0(\result_OBUF[0]_inst_i_4_0 ),
        .I1(B0[16]),
        .O(B[16]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[31]_inst_i_57 
       (.I0(\result_OBUF[0]_inst_i_4_0 ),
        .I1(B0[12]),
        .O(B[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[31]_inst_i_58 
       (.I0(\result_OBUF[0]_inst_i_4_0 ),
        .I1(B0[20]),
        .O(B[20]));
  LUT5 #(
    .INIT(32'hF8FAAFFA)) 
    \result_OBUF[31]_inst_i_59 
       (.I0(douta[3]),
        .I1(douta[2]),
        .I2(douta[0]),
        .I3(douta[1]),
        .I4(douta[5]),
        .O(\result_OBUF[31]_inst_i_59_n_0 ));
  LUT5 #(
    .INIT(32'h56686868)) 
    \result_OBUF[31]_inst_i_7 
       (.I0(\result_OBUF[0]_inst_i_9_0 [1]),
        .I1(\result_OBUF[0]_inst_i_9_0 [0]),
        .I2(\u_ALU_1/B_signed__0 ),
        .I3(\pc_reg[1] ),
        .I4(A0[31]),
        .O(register_reg_r1_0_31_30_31_1));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \result_OBUF[31]_inst_i_9 
       (.I0(\result_OBUF[31]_inst_i_16_n_0 ),
        .I1(\result_OBUF[31]_inst_i_17_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[31]_inst_i_19_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[31]_inst_i_21_n_0 ),
        .O(\result_OBUF[31]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEAEEEAEEEA)) 
    \result_OBUF[3]_inst_i_1 
       (.I0(\result[3] ),
        .I1(\result_OBUF[27]_inst_i_9_0 ),
        .I2(\result_OBUF[3]_inst_i_3_n_0 ),
        .I3(\result_OBUF[3]_inst_i_4_n_0 ),
        .I4(\result_OBUF[3]_inst_i_5_n_0 ),
        .I5(\result_OBUF[3]_inst_i_6_n_0 ),
        .O(\result_OBUF[31]_inst_i_6 [1]));
  LUT6 #(
    .INIT(64'h0504000000000000)) 
    \result_OBUF[3]_inst_i_10 
       (.I0(\result_OBUF[0]_inst_i_9_0 [0]),
        .I1(Sftmd),
        .I2(\result_OBUF[29]_inst_i_12_n_0 ),
        .I3(\result_OBUF[31]_inst_i_26_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [0]),
        .I5(\result_OBUF[3]_inst_i_19_n_0 ),
        .O(\result_OBUF[3]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0011001000000000)) 
    \result_OBUF[3]_inst_i_11 
       (.I0(\result_OBUF[0]_inst_i_9_0 [0]),
        .I1(\u_ALU_1/A_or_Shift__41 [0]),
        .I2(Sftmd),
        .I3(\result_OBUF[29]_inst_i_12_n_0 ),
        .I4(\result_OBUF[31]_inst_i_26_n_0 ),
        .I5(\result_OBUF[4]_inst_i_8_n_0 ),
        .O(\result_OBUF[3]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000A000800000000)) 
    \result_OBUF[3]_inst_i_12 
       (.I0(\u_ALU_1/A_or_Shift__41 [0]),
        .I1(\result_OBUF[31]_inst_i_26_n_0 ),
        .I2(\result_OBUF[28]_inst_i_15_n_0 ),
        .I3(\result_OBUF[31]_inst_i_23_n_0 ),
        .I4(Sftmd),
        .I5(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[3]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000A0008)) 
    \result_OBUF[3]_inst_i_13 
       (.I0(\result_OBUF[0]_inst_i_9_0 [0]),
        .I1(\result_OBUF[31]_inst_i_26_n_0 ),
        .I2(\result_OBUF[28]_inst_i_15_n_0 ),
        .I3(\result_OBUF[31]_inst_i_23_n_0 ),
        .I4(Sftmd),
        .I5(\u_ALU_1/A_or_Shift__41 [0]),
        .O(\result_OBUF[3]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[3]_inst_i_14 
       (.I0(\result_OBUF[9]_inst_i_12_n_0 ),
        .I1(\result_OBUF[5]_inst_i_9_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[7]_inst_i_11_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[3]_inst_i_18_n_0 ),
        .O(\result_OBUF[3]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \result_OBUF[3]_inst_i_15 
       (.I0(B[18]),
        .I1(B__0),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[26]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .I5(B[10]),
        .O(\result_OBUF[3]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \result_OBUF[3]_inst_i_16 
       (.I0(B[16]),
        .I1(B__0),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[24]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .I5(B[8]),
        .O(\result_OBUF[3]_inst_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \result_OBUF[3]_inst_i_17 
       (.I0(B[17]),
        .I1(B__0),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[25]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .I5(B[9]),
        .O(\result_OBUF[3]_inst_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \result_OBUF[3]_inst_i_18 
       (.I0(B[3]),
        .I1(B[19]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[27]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .I5(B[11]),
        .O(\result_OBUF[3]_inst_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000000003000202)) 
    \result_OBUF[3]_inst_i_19 
       (.I0(B[2]),
        .I1(\u_ALU_1/A_or_Shift__41 [4]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[0]),
        .I4(\u_ALU_1/A_or_Shift__41 [1]),
        .I5(\u_ALU_1/A_or_Shift__41 [2]),
        .O(\result_OBUF[3]_inst_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \result_OBUF[3]_inst_i_3 
       (.I0(\result_OBUF[3]_inst_i_7_n_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(\result_OBUF[3]_inst_i_8_n_0 ),
        .I3(\result_OBUF[31]_inst_i_13_n_0 ),
        .I4(\result_OBUF[3]_inst_i_9_n_0 ),
        .I5(\result_OBUF[28]_inst_i_7_n_0 ),
        .O(\result_OBUF[3]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000001666E888)) 
    \result_OBUF[3]_inst_i_4 
       (.I0(\result_OBUF[0]_inst_i_9_0 [0]),
        .I1(\u_ALU_1/B_signed [3]),
        .I2(\pc_reg[1] ),
        .I3(A0[3]),
        .I4(\result_OBUF[0]_inst_i_9_0 [1]),
        .I5(\result_OBUF[27]_inst_i_9_1 ),
        .O(\result_OBUF[3]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \result_OBUF[3]_inst_i_5 
       (.I0(\result_OBUF[3]_inst_i_10_n_0 ),
        .I1(\result_OBUF[3]_inst_i_11_n_0 ),
        .I2(\result_OBUF[3]_inst_i_12_n_0 ),
        .I3(\result_OBUF[4]_inst_i_7_n_0 ),
        .I4(\result_OBUF[3]_inst_i_13_n_0 ),
        .I5(\result_OBUF[3]_inst_i_14_n_0 ),
        .O(\result_OBUF[3]_inst_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[3]_inst_i_6 
       (.I0(\result[30] ),
        .I1(\result_OBUF[27]_inst_i_9_1 ),
        .O(\result_OBUF[3]_inst_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \result_OBUF[3]_inst_i_7 
       (.I0(\result_OBUF[0]_inst_i_9_0 [0]),
        .I1(ALUop),
        .I2(\result_OBUF[0]_inst_i_9_0 [1]),
        .I3(\result_OBUF[0]_inst_i_9_0 [2]),
        .O(\result_OBUF[3]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[3]_inst_i_8 
       (.I0(\result_OBUF[3]_inst_i_15_n_0 ),
        .I1(\result_OBUF[6]_inst_i_11_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[3]_inst_i_16_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[4]_inst_i_9_n_0 ),
        .O(\result_OBUF[3]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[3]_inst_i_9 
       (.I0(\result_OBUF[3]_inst_i_17_n_0 ),
        .I1(\result_OBUF[5]_inst_i_9_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[7]_inst_i_11_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[3]_inst_i_18_n_0 ),
        .O(\result_OBUF[3]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF11141440)) 
    \result_OBUF[4]_inst_i_2 
       (.I0(\result_OBUF[27]_inst_i_9_1 ),
        .I1(\result_OBUF[0]_inst_i_9_0 [1]),
        .I2(JrPC[4]),
        .I3(\u_ALU_1/B_signed [4]),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .I5(\result_OBUF[4]_inst_i_4_n_0 ),
        .O(\result_OBUF[4]_inst_i_4_0 ));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    \result_OBUF[4]_inst_i_3 
       (.I0(\result_OBUF[3]_inst_i_6_n_0 ),
        .I1(\result_OBUF[4]_inst_i_5_n_0 ),
        .I2(\result_OBUF[4]_inst_i_6_n_0 ),
        .I3(\result_OBUF[4]_inst_i_7_n_0 ),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .I5(\result_OBUF[31]_inst_i_13_n_0 ),
        .O(\result_OBUF[31]_inst_i_13_11 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \result_OBUF[4]_inst_i_4 
       (.I0(\result_OBUF[3]_inst_i_7_n_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(\result_OBUF[5]_inst_i_8_n_0 ),
        .I3(\result_OBUF[31]_inst_i_13_n_0 ),
        .I4(\result_OBUF[3]_inst_i_8_n_0 ),
        .I5(\result_OBUF[28]_inst_i_7_n_0 ),
        .O(\result_OBUF[4]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hC0A0)) 
    \result_OBUF[4]_inst_i_5 
       (.I0(\result_OBUF[4]_inst_i_8_n_0 ),
        .I1(\result_OBUF[5]_inst_i_7_n_0 ),
        .I2(\result_OBUF[31]_inst_i_10_n_0 ),
        .I3(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[4]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \result_OBUF[4]_inst_i_6 
       (.I0(B[0]),
        .I1(B[4]),
        .I2(\result_OBUF[30]_inst_i_10_n_0 ),
        .I3(B[2]),
        .I4(\u_ALU_1/A_or_Shift__41 [1]),
        .I5(\u_ALU_1/A_or_Shift__41 [2]),
        .O(\result_OBUF[4]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[4]_inst_i_7 
       (.I0(\result_OBUF[10]_inst_i_10_n_0 ),
        .I1(\result_OBUF[6]_inst_i_11_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[8]_inst_i_12_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[4]_inst_i_9_n_0 ),
        .O(\result_OBUF[4]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000003000202)) 
    \result_OBUF[4]_inst_i_8 
       (.I0(B[3]),
        .I1(\u_ALU_1/A_or_Shift__41 [4]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[1]),
        .I4(\u_ALU_1/A_or_Shift__41 [1]),
        .I5(\u_ALU_1/A_or_Shift__41 [2]),
        .O(\result_OBUF[4]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \result_OBUF[4]_inst_i_9 
       (.I0(B[4]),
        .I1(B[20]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[28]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .I5(B[12]),
        .O(\result_OBUF[4]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF11141440)) 
    \result_OBUF[5]_inst_i_2 
       (.I0(\result_OBUF[27]_inst_i_9_1 ),
        .I1(\result_OBUF[0]_inst_i_9_0 [1]),
        .I2(JrPC[5]),
        .I3(\u_ALU_1/B_signed [5]),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .I5(\result_OBUF[5]_inst_i_4_n_0 ),
        .O(\result_OBUF[5]_inst_i_4_0 ));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    \result_OBUF[5]_inst_i_3 
       (.I0(\result_OBUF[3]_inst_i_6_n_0 ),
        .I1(\result_OBUF[5]_inst_i_5_n_0 ),
        .I2(\result_OBUF[5]_inst_i_6_n_0 ),
        .I3(\result_OBUF[5]_inst_i_7_n_0 ),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .I5(\result_OBUF[31]_inst_i_13_n_0 ),
        .O(\result_OBUF[31]_inst_i_13_6 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \result_OBUF[5]_inst_i_4 
       (.I0(\result_OBUF[3]_inst_i_7_n_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(\result_OBUF[6]_inst_i_8_n_0 ),
        .I3(\result_OBUF[31]_inst_i_13_n_0 ),
        .I4(\result_OBUF[5]_inst_i_8_n_0 ),
        .I5(\result_OBUF[28]_inst_i_7_n_0 ),
        .O(\result_OBUF[5]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hC0A0)) 
    \result_OBUF[5]_inst_i_5 
       (.I0(\result_OBUF[4]_inst_i_6_n_0 ),
        .I1(\result_OBUF[6]_inst_i_7_n_0 ),
        .I2(\result_OBUF[31]_inst_i_10_n_0 ),
        .I3(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[5]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \result_OBUF[5]_inst_i_6 
       (.I0(B[1]),
        .I1(B[5]),
        .I2(\result_OBUF[30]_inst_i_10_n_0 ),
        .I3(B[3]),
        .I4(\u_ALU_1/A_or_Shift__41 [1]),
        .I5(\u_ALU_1/A_or_Shift__41 [2]),
        .O(\result_OBUF[5]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[5]_inst_i_7 
       (.I0(\result_OBUF[11]_inst_i_10_n_0 ),
        .I1(\result_OBUF[7]_inst_i_11_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[9]_inst_i_12_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[5]_inst_i_9_n_0 ),
        .O(\result_OBUF[5]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[5]_inst_i_8 
       (.I0(\result_OBUF[11]_inst_i_11_n_0 ),
        .I1(\result_OBUF[7]_inst_i_11_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[3]_inst_i_17_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[5]_inst_i_9_n_0 ),
        .O(\result_OBUF[5]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \result_OBUF[5]_inst_i_9 
       (.I0(B[5]),
        .I1(B[21]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[29]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .I5(B[13]),
        .O(\result_OBUF[5]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000B000800000000)) 
    \result_OBUF[6]_inst_i_10 
       (.I0(B0[2]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(\u_ALU_1/A_or_Shift__41 [4]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(B0[6]),
        .I5(\result_OBUF[0]_inst_i_4_0 ),
        .O(\result_OBUF[6]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \result_OBUF[6]_inst_i_11 
       (.I0(B[6]),
        .I1(B[22]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[30]),
        .I4(\u_ALU_1/A_or_Shift__41 [4]),
        .I5(B[14]),
        .O(\result_OBUF[6]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF11141440)) 
    \result_OBUF[6]_inst_i_2 
       (.I0(\result_OBUF[27]_inst_i_9_1 ),
        .I1(\result_OBUF[0]_inst_i_9_0 [1]),
        .I2(JrPC[6]),
        .I3(\u_ALU_1/B_signed [6]),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .I5(\result_OBUF[6]_inst_i_4_n_0 ),
        .O(\result_OBUF[6]_inst_i_4_0 ));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    \result_OBUF[6]_inst_i_3 
       (.I0(\result_OBUF[3]_inst_i_6_n_0 ),
        .I1(\result_OBUF[6]_inst_i_5_n_0 ),
        .I2(\result_OBUF[6]_inst_i_6_n_0 ),
        .I3(\result_OBUF[6]_inst_i_7_n_0 ),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .I5(\result_OBUF[31]_inst_i_13_n_0 ),
        .O(\result_OBUF[31]_inst_i_13_9 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \result_OBUF[6]_inst_i_4 
       (.I0(\result_OBUF[3]_inst_i_7_n_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(\result_OBUF[7]_inst_i_8_n_0 ),
        .I3(\result_OBUF[31]_inst_i_13_n_0 ),
        .I4(\result_OBUF[6]_inst_i_8_n_0 ),
        .I5(\result_OBUF[28]_inst_i_7_n_0 ),
        .O(\result_OBUF[6]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hC0A0)) 
    \result_OBUF[6]_inst_i_5 
       (.I0(\result_OBUF[5]_inst_i_6_n_0 ),
        .I1(\result_OBUF[7]_inst_i_7_n_0 ),
        .I2(\result_OBUF[31]_inst_i_10_n_0 ),
        .I3(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[6]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \result_OBUF[6]_inst_i_6 
       (.I0(B[0]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(\result_OBUF[30]_inst_i_10_n_0 ),
        .I3(B[4]),
        .I4(\u_ALU_1/A_or_Shift__41 [1]),
        .I5(\result_OBUF[6]_inst_i_10_n_0 ),
        .O(\result_OBUF[6]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[6]_inst_i_7 
       (.I0(\result_OBUF[12]_inst_i_10_n_0 ),
        .I1(\result_OBUF[8]_inst_i_12_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[10]_inst_i_10_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[6]_inst_i_11_n_0 ),
        .O(\result_OBUF[6]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[6]_inst_i_8 
       (.I0(\result_OBUF[12]_inst_i_11_n_0 ),
        .I1(\result_OBUF[3]_inst_i_16_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[3]_inst_i_15_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[6]_inst_i_11_n_0 ),
        .O(\result_OBUF[6]_inst_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[6]_inst_i_9 
       (.I0(\result_OBUF[0]_inst_i_4_0 ),
        .I1(B0[0]),
        .O(B[0]));
  LUT6 #(
    .INIT(64'h000B000800000000)) 
    \result_OBUF[7]_inst_i_10 
       (.I0(B0[3]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(\u_ALU_1/A_or_Shift__41 [4]),
        .I3(\u_ALU_1/A_or_Shift__41 [3]),
        .I4(B0[7]),
        .I5(\result_OBUF[0]_inst_i_4_0 ),
        .O(\result_OBUF[7]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFCFC0C0CFA0AFA0A)) 
    \result_OBUF[7]_inst_i_11 
       (.I0(B[7]),
        .I1(B[23]),
        .I2(\u_ALU_1/A_or_Shift__41 [3]),
        .I3(B[15]),
        .I4(B__0),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[7]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF11141440)) 
    \result_OBUF[7]_inst_i_2 
       (.I0(\result_OBUF[27]_inst_i_9_1 ),
        .I1(\result_OBUF[0]_inst_i_9_0 [1]),
        .I2(JrPC[7]),
        .I3(\u_ALU_1/B_signed [7]),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .I5(\result_OBUF[7]_inst_i_4_n_0 ),
        .O(\result_OBUF[7]_inst_i_4_0 ));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    \result_OBUF[7]_inst_i_3 
       (.I0(\result_OBUF[3]_inst_i_6_n_0 ),
        .I1(\result_OBUF[7]_inst_i_5_n_0 ),
        .I2(\result_OBUF[7]_inst_i_6_n_0 ),
        .I3(\result_OBUF[7]_inst_i_7_n_0 ),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .I5(\result_OBUF[31]_inst_i_13_n_0 ),
        .O(\result_OBUF[31]_inst_i_13_10 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \result_OBUF[7]_inst_i_4 
       (.I0(\result_OBUF[3]_inst_i_7_n_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(\result_OBUF[8]_inst_i_8_n_0 ),
        .I3(\result_OBUF[31]_inst_i_13_n_0 ),
        .I4(\result_OBUF[7]_inst_i_8_n_0 ),
        .I5(\result_OBUF[28]_inst_i_7_n_0 ),
        .O(\result_OBUF[7]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hC0A0)) 
    \result_OBUF[7]_inst_i_5 
       (.I0(\result_OBUF[6]_inst_i_6_n_0 ),
        .I1(\result_OBUF[8]_inst_i_7_n_0 ),
        .I2(\result_OBUF[31]_inst_i_10_n_0 ),
        .I3(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[7]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \result_OBUF[7]_inst_i_6 
       (.I0(B[1]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(\result_OBUF[30]_inst_i_10_n_0 ),
        .I3(B[5]),
        .I4(\u_ALU_1/A_or_Shift__41 [1]),
        .I5(\result_OBUF[7]_inst_i_10_n_0 ),
        .O(\result_OBUF[7]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[7]_inst_i_7 
       (.I0(\result_OBUF[13]_inst_i_10_n_0 ),
        .I1(\result_OBUF[9]_inst_i_12_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[11]_inst_i_10_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[7]_inst_i_11_n_0 ),
        .O(\result_OBUF[7]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[7]_inst_i_8 
       (.I0(\result_OBUF[13]_inst_i_11_n_0 ),
        .I1(\result_OBUF[3]_inst_i_17_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[11]_inst_i_11_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[7]_inst_i_11_n_0 ),
        .O(\result_OBUF[7]_inst_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[7]_inst_i_9 
       (.I0(\result_OBUF[0]_inst_i_4_0 ),
        .I1(B0[1]),
        .O(B[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[8]_inst_i_10 
       (.I0(\result_OBUF[0]_inst_i_4_0 ),
        .I1(B0[6]),
        .O(B[6]));
  LUT6 #(
    .INIT(64'h000000003300B8B8)) 
    \result_OBUF[8]_inst_i_11 
       (.I0(B[4]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(B[8]),
        .I3(B[0]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[8]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \result_OBUF[8]_inst_i_12 
       (.I0(B0[24]),
        .I1(B0[8]),
        .I2(\result_OBUF[0]_inst_i_4_0 ),
        .I3(B0[16]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[8]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF11141440)) 
    \result_OBUF[8]_inst_i_2 
       (.I0(\result_OBUF[27]_inst_i_9_1 ),
        .I1(\result_OBUF[0]_inst_i_9_0 [1]),
        .I2(JrPC[8]),
        .I3(\u_ALU_1/B_signed [8]),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .I5(\result_OBUF[8]_inst_i_4_n_0 ),
        .O(\result_OBUF[8]_inst_i_4_0 ));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    \result_OBUF[8]_inst_i_3 
       (.I0(\result_OBUF[3]_inst_i_6_n_0 ),
        .I1(\result_OBUF[8]_inst_i_5_n_0 ),
        .I2(\result_OBUF[8]_inst_i_6_n_0 ),
        .I3(\result_OBUF[8]_inst_i_7_n_0 ),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .I5(\result_OBUF[31]_inst_i_13_n_0 ),
        .O(\result_OBUF[31]_inst_i_13_5 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \result_OBUF[8]_inst_i_4 
       (.I0(\result_OBUF[3]_inst_i_7_n_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(\result_OBUF[9]_inst_i_8_n_0 ),
        .I3(\result_OBUF[31]_inst_i_13_n_0 ),
        .I4(\result_OBUF[8]_inst_i_8_n_0 ),
        .I5(\result_OBUF[28]_inst_i_7_n_0 ),
        .O(\result_OBUF[8]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hC0A0)) 
    \result_OBUF[8]_inst_i_5 
       (.I0(\result_OBUF[7]_inst_i_6_n_0 ),
        .I1(\result_OBUF[9]_inst_i_7_n_0 ),
        .I2(\result_OBUF[31]_inst_i_10_n_0 ),
        .I3(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[8]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \result_OBUF[8]_inst_i_6 
       (.I0(B[2]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(\result_OBUF[30]_inst_i_10_n_0 ),
        .I3(B[6]),
        .I4(\u_ALU_1/A_or_Shift__41 [1]),
        .I5(\result_OBUF[8]_inst_i_11_n_0 ),
        .O(\result_OBUF[8]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[8]_inst_i_7 
       (.I0(\result_OBUF[14]_inst_i_10_n_0 ),
        .I1(\result_OBUF[10]_inst_i_10_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[12]_inst_i_10_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[8]_inst_i_12_n_0 ),
        .O(\result_OBUF[8]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[8]_inst_i_8 
       (.I0(\result_OBUF[14]_inst_i_11_n_0 ),
        .I1(\result_OBUF[3]_inst_i_15_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[12]_inst_i_11_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[3]_inst_i_16_n_0 ),
        .O(\result_OBUF[8]_inst_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[8]_inst_i_9 
       (.I0(\result_OBUF[0]_inst_i_4_0 ),
        .I1(B0[2]),
        .O(B[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[9]_inst_i_10 
       (.I0(\result_OBUF[0]_inst_i_4_0 ),
        .I1(B0[7]),
        .O(B[7]));
  LUT6 #(
    .INIT(64'h000000003300B8B8)) 
    \result_OBUF[9]_inst_i_11 
       (.I0(B[5]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(B[9]),
        .I3(B[1]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[9]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A0F000C0C0)) 
    \result_OBUF[9]_inst_i_12 
       (.I0(B0[25]),
        .I1(B0[9]),
        .I2(\result_OBUF[0]_inst_i_4_0 ),
        .I3(B0[17]),
        .I4(\u_ALU_1/A_or_Shift__41 [3]),
        .I5(\u_ALU_1/A_or_Shift__41 [4]),
        .O(\result_OBUF[9]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF11141440)) 
    \result_OBUF[9]_inst_i_2 
       (.I0(\result_OBUF[27]_inst_i_9_1 ),
        .I1(\result_OBUF[0]_inst_i_9_0 [1]),
        .I2(JrPC[9]),
        .I3(\u_ALU_1/B_signed [9]),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .I5(\result_OBUF[9]_inst_i_4_n_0 ),
        .O(\result_OBUF[9]_inst_i_4_0 ));
  LUT6 #(
    .INIT(64'h88888888AA88A8A8)) 
    \result_OBUF[9]_inst_i_3 
       (.I0(\result_OBUF[3]_inst_i_6_n_0 ),
        .I1(\result_OBUF[9]_inst_i_5_n_0 ),
        .I2(\result_OBUF[9]_inst_i_6_n_0 ),
        .I3(\result_OBUF[9]_inst_i_7_n_0 ),
        .I4(\result_OBUF[0]_inst_i_9_0 [0]),
        .I5(\result_OBUF[31]_inst_i_13_n_0 ),
        .O(\result_OBUF[31]_inst_i_13_4 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80AA8080)) 
    \result_OBUF[9]_inst_i_4 
       (.I0(\result_OBUF[3]_inst_i_7_n_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(\result_OBUF[10]_inst_i_8_n_0 ),
        .I3(\result_OBUF[31]_inst_i_13_n_0 ),
        .I4(\result_OBUF[9]_inst_i_8_n_0 ),
        .I5(\result_OBUF[28]_inst_i_7_n_0 ),
        .O(\result_OBUF[9]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hC0A0)) 
    \result_OBUF[9]_inst_i_5 
       (.I0(\result_OBUF[8]_inst_i_6_n_0 ),
        .I1(\result_OBUF[10]_inst_i_7_n_0 ),
        .I2(\result_OBUF[31]_inst_i_10_n_0 ),
        .I3(\result_OBUF[0]_inst_i_9_0 [0]),
        .O(\result_OBUF[9]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \result_OBUF[9]_inst_i_6 
       (.I0(B[3]),
        .I1(\u_ALU_1/A_or_Shift__41 [2]),
        .I2(\result_OBUF[30]_inst_i_10_n_0 ),
        .I3(B[7]),
        .I4(\u_ALU_1/A_or_Shift__41 [1]),
        .I5(\result_OBUF[9]_inst_i_11_n_0 ),
        .O(\result_OBUF[9]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[9]_inst_i_7 
       (.I0(\result_OBUF[15]_inst_i_10_n_0 ),
        .I1(\result_OBUF[11]_inst_i_10_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[13]_inst_i_10_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[9]_inst_i_12_n_0 ),
        .O(\result_OBUF[9]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result_OBUF[9]_inst_i_8 
       (.I0(\result_OBUF[15]_inst_i_11_n_0 ),
        .I1(\result_OBUF[11]_inst_i_11_n_0 ),
        .I2(\u_ALU_1/A_or_Shift__41 [1]),
        .I3(\result_OBUF[13]_inst_i_11_n_0 ),
        .I4(\u_ALU_1/A_or_Shift__41 [2]),
        .I5(\result_OBUF[3]_inst_i_17_n_0 ),
        .O(\result_OBUF[9]_inst_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[9]_inst_i_9 
       (.I0(\result_OBUF[0]_inst_i_4_0 ),
        .I1(B0[3]),
        .O(B[3]));
endmodule

(* ORIG_REF_NAME = "bindec" *) 
module blk_mem_gen_0_bindec
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
module blk_mem_gen_0_blk_mem_gen_generic_cstr
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
  wire \ramloop[3].ram.r_n_2 ;
  wire \ramloop[3].ram.r_n_3 ;
  wire \ramloop[3].ram.r_n_4 ;
  wire \ramloop[3].ram.r_n_5 ;
  wire \ramloop[3].ram.r_n_6 ;
  wire \ramloop[3].ram.r_n_7 ;
  wire \ramloop[3].ram.r_n_8 ;
  wire \ramloop[4].ram.r_n_0 ;
  wire \ramloop[4].ram.r_n_1 ;
  wire \ramloop[4].ram.r_n_2 ;
  wire \ramloop[4].ram.r_n_3 ;
  wire \ramloop[4].ram.r_n_4 ;
  wire \ramloop[4].ram.r_n_5 ;
  wire \ramloop[4].ram.r_n_6 ;
  wire \ramloop[4].ram.r_n_7 ;
  wire \ramloop[4].ram.r_n_8 ;
  wire \ramloop[4].ram.r_n_9 ;
  wire \ramloop[5].ram.r_n_0 ;
  wire \ramloop[5].ram.r_n_1 ;
  wire \ramloop[5].ram.r_n_2 ;
  wire \ramloop[5].ram.r_n_3 ;
  wire \ramloop[5].ram.r_n_4 ;
  wire \ramloop[5].ram.r_n_5 ;
  wire \ramloop[5].ram.r_n_6 ;
  wire \ramloop[5].ram.r_n_7 ;
  wire \ramloop[5].ram.r_n_8 ;
  wire \ramloop[5].ram.r_n_9 ;
  wire \ramloop[6].ram.r_n_0 ;
  wire \ramloop[6].ram.r_n_1 ;
  wire \ramloop[6].ram.r_n_2 ;
  wire \ramloop[6].ram.r_n_3 ;
  wire \ramloop[6].ram.r_n_4 ;
  wire \ramloop[6].ram.r_n_5 ;
  wire \ramloop[6].ram.r_n_6 ;
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

  blk_mem_gen_0_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[13:12]),
        .ena_array({ena_array[3],ena_array[0]}));
  blk_mem_gen_0_blk_mem_gen_mux \has_mux_a.A 
       (.DOADO({\ramloop[13].ram.r_n_0 ,\ramloop[13].ram.r_n_1 ,\ramloop[13].ram.r_n_2 ,\ramloop[13].ram.r_n_3 ,\ramloop[13].ram.r_n_4 ,\ramloop[13].ram.r_n_5 ,\ramloop[13].ram.r_n_6 ,\ramloop[13].ram.r_n_7 }),
        .DOPADOP(\ramloop[13].ram.r_n_8 ),
        .addra(addra[13:12]),
        .clka(clka),
        .douta(douta[31:5]),
        .\douta[12] ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 }),
        .\douta[12]_0 ({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\ramloop[6].ram.r_n_2 ,\ramloop[6].ram.r_n_3 ,\ramloop[6].ram.r_n_4 ,\ramloop[6].ram.r_n_5 ,\ramloop[6].ram.r_n_6 ,\ramloop[6].ram.r_n_7 }),
        .\douta[12]_1 ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 ,\ramloop[3].ram.r_n_7 }),
        .\douta[12]_2 ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 }),
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
  blk_mem_gen_0_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[0]));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized9 \ramloop[10].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[10].ram.r_n_0 ,\ramloop[10].ram.r_n_1 ,\ramloop[10].ram.r_n_2 ,\ramloop[10].ram.r_n_3 ,\ramloop[10].ram.r_n_4 ,\ramloop[10].ram.r_n_5 ,\ramloop[10].ram.r_n_6 ,\ramloop[10].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[10].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[3]),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized10 \ramloop[11].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[11].ram.r_n_0 ,\ramloop[11].ram.r_n_1 ,\ramloop[11].ram.r_n_2 ,\ramloop[11].ram.r_n_3 ,\ramloop[11].ram.r_n_4 ,\ramloop[11].ram.r_n_5 ,\ramloop[11].ram.r_n_6 ,\ramloop[11].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[11].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[0]),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized11 \ramloop[12].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[12].ram.r_n_0 ,\ramloop[12].ram.r_n_1 ,\ramloop[12].ram.r_n_2 ,\ramloop[12].ram.r_n_3 ,\ramloop[12].ram.r_n_4 ,\ramloop[12].ram.r_n_5 ,\ramloop[12].ram.r_n_6 ,\ramloop[12].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[12].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\ramloop[4].ram.r_n_9 ),
        .addra(addra[11:0]),
        .clka(clka),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized12 \ramloop[13].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (\ramloop[5].ram.r_n_9 ),
        .DOADO({\ramloop[13].ram.r_n_0 ,\ramloop[13].ram.r_n_1 ,\ramloop[13].ram.r_n_2 ,\ramloop[13].ram.r_n_3 ,\ramloop[13].ram.r_n_4 ,\ramloop[13].ram.r_n_5 ,\ramloop[13].ram.r_n_6 ,\ramloop[13].ram.r_n_7 }),
        .DOPADOP(\ramloop[13].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized13 \ramloop[14].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[14].ram.r_n_0 ,\ramloop[14].ram.r_n_1 ,\ramloop[14].ram.r_n_2 ,\ramloop[14].ram.r_n_3 ,\ramloop[14].ram.r_n_4 ,\ramloop[14].ram.r_n_5 ,\ramloop[14].ram.r_n_6 ,\ramloop[14].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[14].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[3]),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[2:1]));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[4:3]));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 ,\ramloop[3].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[3].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[0]),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[4].ram.r_n_8 ),
        .addra(addra),
        .addra_12_sp_1(\ramloop[4].ram.r_n_9 ),
        .clka(clka),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[5].ram.r_n_8 ),
        .addra(addra),
        .addra_13_sp_1(\ramloop[5].ram.r_n_9 ),
        .clka(clka),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\ramloop[6].ram.r_n_2 ,\ramloop[6].ram.r_n_3 ,\ramloop[6].ram.r_n_4 ,\ramloop[6].ram.r_n_5 ,\ramloop[6].ram.r_n_6 ,\ramloop[6].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[6].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[3]),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized6 \ramloop[7].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[7].ram.r_n_0 ,\ramloop[7].ram.r_n_1 ,\ramloop[7].ram.r_n_2 ,\ramloop[7].ram.r_n_3 ,\ramloop[7].ram.r_n_4 ,\ramloop[7].ram.r_n_5 ,\ramloop[7].ram.r_n_6 ,\ramloop[7].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[7].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[0]),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized7 \ramloop[8].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[8].ram.r_n_0 ,\ramloop[8].ram.r_n_1 ,\ramloop[8].ram.r_n_2 ,\ramloop[8].ram.r_n_3 ,\ramloop[8].ram.r_n_4 ,\ramloop[8].ram.r_n_5 ,\ramloop[8].ram.r_n_6 ,\ramloop[8].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[8].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\ramloop[4].ram.r_n_9 ),
        .addra(addra[11:0]),
        .clka(clka),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
  blk_mem_gen_0_blk_mem_gen_prim_width__parameterized8 \ramloop[9].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[9].ram.r_n_0 ,\ramloop[9].ram.r_n_1 ,\ramloop[9].ram.r_n_2 ,\ramloop[9].ram.r_n_3 ,\ramloop[9].ram.r_n_4 ,\ramloop[9].ram.r_n_5 ,\ramloop[9].ram.r_n_6 ,\ramloop[9].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[9].ram.r_n_8 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\ramloop[5].ram.r_n_9 ),
        .addra(addra[11:0]),
        .clka(clka),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module blk_mem_gen_0_blk_mem_gen_mux
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
    \douta[10]_INST_0 
       (.I0(\douta[12] [5]),
        .I1(\douta[12]_0 [5]),
        .I2(\douta[12]_1 [5]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[12]_2 [5]),
        .O(douta[5]));
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
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[6]_INST_0 
       (.I0(\douta[12] [1]),
        .I1(\douta[12]_0 [1]),
        .I2(\douta[12]_1 [1]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[12]_2 [1]),
        .O(douta[1]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[7]_INST_0 
       (.I0(\douta[12] [2]),
        .I1(\douta[12]_0 [2]),
        .I2(\douta[12]_1 [2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[12]_2 [2]),
        .O(douta[2]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[8]_INST_0 
       (.I0(\douta[12] [3]),
        .I1(\douta[12]_0 [3]),
        .I2(\douta[12]_1 [3]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[12]_2 [3]),
        .O(douta[3]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[9]_INST_0 
       (.I0(\douta[12] [4]),
        .I1(\douta[12]_0 [4]),
        .I2(\douta[12]_1 [4]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[12]_2 [4]),
        .O(douta[4]));
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
module blk_mem_gen_0_blk_mem_gen_prim_width
   (douta,
    clka,
    addra);
  output [0:0]douta;
  input clka;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [0:0]douta;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized0
   (douta,
    clka,
    addra);
  output [1:0]douta;
  input clka;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [1:0]douta;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized1
   (douta,
    clka,
    addra);
  output [1:0]douta;
  input clka;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [1:0]douta;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized10
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

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized10 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized11
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

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized11 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .addra(addra),
        .clka(clka),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized12
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

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized12 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .DOADO(DOADO),
        .DOPADOP(DOPADOP),
        .addra(addra),
        .clka(clka),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized13
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

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized13 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized2
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

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized3
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

  assign addra_12_sp_1 = addra_12_sn_1;
  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .addra_12_sp_1(addra_12_sn_1),
        .clka(clka),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized4
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

  assign addra_13_sp_1 = addra_13_sn_1;
  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .addra_13_sp_1(addra_13_sn_1),
        .clka(clka),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized5
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

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized5 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized6
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

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized6 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized7
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

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized7 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .addra(addra),
        .clka(clka),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized8
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

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized8 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .addra(addra),
        .clka(clka),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width__parameterized9
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

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized9 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init
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

  (* BOX_TYPE = "PRIMITIVE" *) 
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
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000068AB2554),
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
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized0
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

  (* BOX_TYPE = "PRIMITIVE" *) 
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
    .INIT_00(256'h0000000000000000000000000000000000000000000000001B006C3D4F97E940),
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
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized1
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

  (* BOX_TYPE = "PRIMITIVE" *) 
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
    .INIT_00(256'h0000000000000000000000000000000000000000000000100300043C00140000),
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
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized10
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

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "REGCEAREGCE=NEW" *) 
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
    .INIT_00(256'h00282820420000002078726A6249410000000101010302010101010100010000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000040000),
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
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized11
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

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "REGCEAREGCE=NEW" *) 
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
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized12
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

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "REGCEAREGCE=NEW" *) 
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
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized13
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

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "REGCEAREGCE=NEW" *) 
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
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized2
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
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "REGCEAREGCE=NEW" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h00000000000000000000000000000000000000000000000000000000100638F8),
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
    .INIT_00(256'h000000FF000000000003000000FFFF040404800000818101C1C1814101814100),
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
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized3
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
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  assign addra_12_sp_1 = addra_12_sn_1;
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "REGCEAREGCE=NEW" *) 
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
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
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
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized4
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
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  assign addra_13_sp_1 = addra_13_sn_1;
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "REGCEAREGCE=NEW" *) 
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
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
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
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized5
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
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "REGCEAREGCE=NEW" *) 
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
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized6
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

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "REGCEAREGCE=NEW" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h00000000000000000000000000000000000000000000000000000000080603EA),
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
    .INIT_00(256'h0028002B280000002844444444C7C74E4A46BDB5B52DB1992020A00C04040C00),
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
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized7
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

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "REGCEAREGCE=NEW" *) 
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
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized8
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

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "REGCEAREGCE=NEW" *) 
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
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init__parameterized9
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

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "REGCEAREGCE=NEW" *) 
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
module blk_mem_gen_0_blk_mem_gen_top
   (douta,
    addra,
    clka);
  output [31:0]douta;
  input [13:0]addra;
  input clka;

  wire [13:0]addra;
  wire clka;
  wire [31:0]douta;

  blk_mem_gen_0_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
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

  blk_mem_gen_0_blk_mem_gen_v8_4_4_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_4_synth" *) 
module blk_mem_gen_0_blk_mem_gen_v8_4_4_synth
   (douta,
    addra,
    clka);
  output [31:0]douta;
  input [13:0]addra;
  input clka;

  wire [13:0]addra;
  wire clka;
  wire [31:0]douta;

  blk_mem_gen_0_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
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
