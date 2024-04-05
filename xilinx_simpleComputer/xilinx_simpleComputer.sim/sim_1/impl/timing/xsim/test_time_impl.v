// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2.2 (lin64) Build 4126759 Thu Feb  8 23:52:05 MST 2024
// Date        : Thu Apr  4 21:35:15 2024
// Host        : jubu running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/juan/github/simpleComputer/xilinx_simpleComputer/xilinx_simpleComputer.sim/sim_1/impl/timing/xsim/test_time_impl.v
// Design      : processor
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module IBUF_UNIQ_BASE_
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD1
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD10
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD11
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD12
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD2
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD3
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD4
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD5
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD6
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD7
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD8
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD9
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module pc
   (Q,
    instr_IBUF,
    clk,
    AR);
  output [7:0]Q;
  input [2:0]instr_IBUF;
  input clk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [7:0]Q;
  wire clk;
  wire \cnt[7]_i_3_n_0 ;
  wire id_pc_en;
  wire [2:0]instr_IBUF;
  wire [7:0]p_0_in;

  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(Q[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cnt[5]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[6]_i_1 
       (.I0(\cnt[7]_i_3_n_0 ),
        .I1(Q[6]),
        .O(p_0_in[6]));
  LUT3 #(
    .INIT(8'hFD)) 
    \cnt[7]_i_1 
       (.I0(instr_IBUF[0]),
        .I1(instr_IBUF[2]),
        .I2(instr_IBUF[1]),
        .O(id_pc_en));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[7]_i_2 
       (.I0(\cnt[7]_i_3_n_0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cnt[7]_i_3 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\cnt[7]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk),
        .CE(id_pc_en),
        .CLR(AR),
        .D(p_0_in[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk),
        .CE(id_pc_en),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk),
        .CE(id_pc_en),
        .CLR(AR),
        .D(p_0_in[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clk),
        .CE(id_pc_en),
        .CLR(AR),
        .D(p_0_in[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(clk),
        .CE(id_pc_en),
        .CLR(AR),
        .D(p_0_in[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(clk),
        .CE(id_pc_en),
        .CLR(AR),
        .D(p_0_in[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(clk),
        .CE(id_pc_en),
        .CLR(AR),
        .D(p_0_in[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(clk),
        .CE(id_pc_en),
        .CLR(AR),
        .D(p_0_in[7]),
        .Q(Q[7]));
endmodule

(* ECO_CHECKSUM = "4acdba3b" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module processor
   (clk,
    rst,
    instr,
    instr_addr,
    mem_wr,
    mem_addr,
    mem_data_in,
    mem_data_out);
  input clk;
  input rst;
  input [10:0]instr;
  output [7:0]instr_addr;
  output mem_wr;
  output [7:0]mem_addr;
  input [31:0]mem_data_in;
  output [31:0]mem_data_out;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [10:0]instr;
  wire [10:8]instr_IBUF;
  wire [7:0]instr_addr;
  wire [7:0]instr_addr_OBUF;
  wire [7:0]mem_addr;
  wire [7:0]mem_addr_OBUF;
  wire [31:0]mem_data_out;
  wire mem_wr;
  wire mem_wr_OBUF;
  wire rst;
  wire rst_IBUF;

initial begin
 $sdf_annotate("test_time_impl.sdf",,,,"tool_control");
end
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .STARTUP_SYNC("FALSE")) 
    clk_IBUF_BUFG_inst
       (.CE(1'b1),
        .I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF_UNIQ_BASE_ clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF_HD1 \instr_IBUF[0]_inst 
       (.I(instr[0]),
        .O(mem_addr_OBUF[0]));
  IBUF_HD2 \instr_IBUF[10]_inst 
       (.I(instr[10]),
        .O(instr_IBUF[10]));
  IBUF_HD3 \instr_IBUF[1]_inst 
       (.I(instr[1]),
        .O(mem_addr_OBUF[1]));
  IBUF_HD4 \instr_IBUF[2]_inst 
       (.I(instr[2]),
        .O(mem_addr_OBUF[2]));
  IBUF_HD5 \instr_IBUF[3]_inst 
       (.I(instr[3]),
        .O(mem_addr_OBUF[3]));
  IBUF_HD6 \instr_IBUF[4]_inst 
       (.I(instr[4]),
        .O(mem_addr_OBUF[4]));
  IBUF_HD7 \instr_IBUF[5]_inst 
       (.I(instr[5]),
        .O(mem_addr_OBUF[5]));
  IBUF_HD8 \instr_IBUF[6]_inst 
       (.I(instr[6]),
        .O(mem_addr_OBUF[6]));
  IBUF_HD9 \instr_IBUF[7]_inst 
       (.I(instr[7]),
        .O(mem_addr_OBUF[7]));
  IBUF_HD10 \instr_IBUF[8]_inst 
       (.I(instr[8]),
        .O(instr_IBUF[8]));
  IBUF_HD11 \instr_IBUF[9]_inst 
       (.I(instr[9]),
        .O(instr_IBUF[9]));
  OBUF \instr_addr_OBUF[0]_inst 
       (.I(instr_addr_OBUF[0]),
        .O(instr_addr[0]));
  OBUF \instr_addr_OBUF[1]_inst 
       (.I(instr_addr_OBUF[1]),
        .O(instr_addr[1]));
  OBUF \instr_addr_OBUF[2]_inst 
       (.I(instr_addr_OBUF[2]),
        .O(instr_addr[2]));
  OBUF \instr_addr_OBUF[3]_inst 
       (.I(instr_addr_OBUF[3]),
        .O(instr_addr[3]));
  OBUF \instr_addr_OBUF[4]_inst 
       (.I(instr_addr_OBUF[4]),
        .O(instr_addr[4]));
  OBUF \instr_addr_OBUF[5]_inst 
       (.I(instr_addr_OBUF[5]),
        .O(instr_addr[5]));
  OBUF \instr_addr_OBUF[6]_inst 
       (.I(instr_addr_OBUF[6]),
        .O(instr_addr[6]));
  OBUF \instr_addr_OBUF[7]_inst 
       (.I(instr_addr_OBUF[7]),
        .O(instr_addr[7]));
  OBUF \mem_addr_OBUF[0]_inst 
       (.I(mem_addr_OBUF[0]),
        .O(mem_addr[0]));
  OBUF \mem_addr_OBUF[1]_inst 
       (.I(mem_addr_OBUF[1]),
        .O(mem_addr[1]));
  OBUF \mem_addr_OBUF[2]_inst 
       (.I(mem_addr_OBUF[2]),
        .O(mem_addr[2]));
  OBUF \mem_addr_OBUF[3]_inst 
       (.I(mem_addr_OBUF[3]),
        .O(mem_addr[3]));
  OBUF \mem_addr_OBUF[4]_inst 
       (.I(mem_addr_OBUF[4]),
        .O(mem_addr[4]));
  OBUF \mem_addr_OBUF[5]_inst 
       (.I(mem_addr_OBUF[5]),
        .O(mem_addr[5]));
  OBUF \mem_addr_OBUF[6]_inst 
       (.I(mem_addr_OBUF[6]),
        .O(mem_addr[6]));
  OBUF \mem_addr_OBUF[7]_inst 
       (.I(mem_addr_OBUF[7]),
        .O(mem_addr[7]));
  OBUF \mem_data_out_OBUF[0]_inst 
       (.I(1'b0),
        .O(mem_data_out[0]));
  OBUF \mem_data_out_OBUF[10]_inst 
       (.I(1'b0),
        .O(mem_data_out[10]));
  OBUF \mem_data_out_OBUF[11]_inst 
       (.I(1'b0),
        .O(mem_data_out[11]));
  OBUF \mem_data_out_OBUF[12]_inst 
       (.I(1'b0),
        .O(mem_data_out[12]));
  OBUF \mem_data_out_OBUF[13]_inst 
       (.I(1'b0),
        .O(mem_data_out[13]));
  OBUF \mem_data_out_OBUF[14]_inst 
       (.I(1'b0),
        .O(mem_data_out[14]));
  OBUF \mem_data_out_OBUF[15]_inst 
       (.I(1'b0),
        .O(mem_data_out[15]));
  OBUF \mem_data_out_OBUF[16]_inst 
       (.I(1'b0),
        .O(mem_data_out[16]));
  OBUF \mem_data_out_OBUF[17]_inst 
       (.I(1'b0),
        .O(mem_data_out[17]));
  OBUF \mem_data_out_OBUF[18]_inst 
       (.I(1'b0),
        .O(mem_data_out[18]));
  OBUF \mem_data_out_OBUF[19]_inst 
       (.I(1'b0),
        .O(mem_data_out[19]));
  OBUF \mem_data_out_OBUF[1]_inst 
       (.I(1'b0),
        .O(mem_data_out[1]));
  OBUF \mem_data_out_OBUF[20]_inst 
       (.I(1'b0),
        .O(mem_data_out[20]));
  OBUF \mem_data_out_OBUF[21]_inst 
       (.I(1'b0),
        .O(mem_data_out[21]));
  OBUF \mem_data_out_OBUF[22]_inst 
       (.I(1'b0),
        .O(mem_data_out[22]));
  OBUF \mem_data_out_OBUF[23]_inst 
       (.I(1'b0),
        .O(mem_data_out[23]));
  OBUF \mem_data_out_OBUF[24]_inst 
       (.I(1'b0),
        .O(mem_data_out[24]));
  OBUF \mem_data_out_OBUF[25]_inst 
       (.I(1'b0),
        .O(mem_data_out[25]));
  OBUF \mem_data_out_OBUF[26]_inst 
       (.I(1'b0),
        .O(mem_data_out[26]));
  OBUF \mem_data_out_OBUF[27]_inst 
       (.I(1'b0),
        .O(mem_data_out[27]));
  OBUF \mem_data_out_OBUF[28]_inst 
       (.I(1'b0),
        .O(mem_data_out[28]));
  OBUF \mem_data_out_OBUF[29]_inst 
       (.I(1'b0),
        .O(mem_data_out[29]));
  OBUF \mem_data_out_OBUF[2]_inst 
       (.I(1'b0),
        .O(mem_data_out[2]));
  OBUF \mem_data_out_OBUF[30]_inst 
       (.I(1'b0),
        .O(mem_data_out[30]));
  OBUF \mem_data_out_OBUF[31]_inst 
       (.I(1'b0),
        .O(mem_data_out[31]));
  OBUF \mem_data_out_OBUF[3]_inst 
       (.I(1'b0),
        .O(mem_data_out[3]));
  OBUF \mem_data_out_OBUF[4]_inst 
       (.I(1'b0),
        .O(mem_data_out[4]));
  OBUF \mem_data_out_OBUF[5]_inst 
       (.I(1'b0),
        .O(mem_data_out[5]));
  OBUF \mem_data_out_OBUF[6]_inst 
       (.I(1'b0),
        .O(mem_data_out[6]));
  OBUF \mem_data_out_OBUF[7]_inst 
       (.I(1'b0),
        .O(mem_data_out[7]));
  OBUF \mem_data_out_OBUF[8]_inst 
       (.I(1'b0),
        .O(mem_data_out[8]));
  OBUF \mem_data_out_OBUF[9]_inst 
       (.I(1'b0),
        .O(mem_data_out[9]));
  OBUF mem_wr_OBUF_inst
       (.I(mem_wr_OBUF),
        .O(mem_wr));
  LUT2 #(
    .INIT(4'h8)) 
    mem_wr_OBUF_inst_i_1
       (.I0(instr_IBUF[8]),
        .I1(instr_IBUF[9]),
        .O(mem_wr_OBUF));
  pc pc
       (.AR(rst_IBUF),
        .Q(instr_addr_OBUF),
        .clk(clk_IBUF_BUFG),
        .instr_IBUF(instr_IBUF));
  IBUF_HD12 rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
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
