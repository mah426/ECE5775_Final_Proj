// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dut_pad (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        input_0_address0,
        input_0_ce0,
        input_0_q0,
        input_1_address0,
        input_1_ce0,
        input_1_q0,
        input_2_address0,
        input_2_ce0,
        input_2_q0,
        input_3_address0,
        input_3_ce0,
        input_3_q0,
        input_4_address0,
        input_4_ce0,
        input_4_q0,
        input_5_address0,
        input_5_ce0,
        input_5_q0,
        input_6_address0,
        input_6_ce0,
        input_6_q0,
        input_7_address0,
        input_7_ce0,
        input_7_q0,
        output_0_address0,
        output_0_ce0,
        output_0_we0,
        output_0_d0,
        output_1_address0,
        output_1_ce0,
        output_1_we0,
        output_1_d0,
        output_2_address0,
        output_2_ce0,
        output_2_we0,
        output_2_d0,
        output_3_address0,
        output_3_ce0,
        output_3_we0,
        output_3_d0,
        output_4_address0,
        output_4_ce0,
        output_4_we0,
        output_4_d0,
        output_5_address0,
        output_5_ce0,
        output_5_we0,
        output_5_d0,
        output_6_address0,
        output_6_ce0,
        output_6_we0,
        output_6_d0,
        output_7_address0,
        output_7_ce0,
        output_7_we0,
        output_7_d0,
        M,
        I
);

parameter    ap_ST_st1_fsm_0 = 24'b1;
parameter    ap_ST_st2_fsm_1 = 24'b10;
parameter    ap_ST_st3_fsm_2 = 24'b100;
parameter    ap_ST_st4_fsm_3 = 24'b1000;
parameter    ap_ST_st5_fsm_4 = 24'b10000;
parameter    ap_ST_st6_fsm_5 = 24'b100000;
parameter    ap_ST_st7_fsm_6 = 24'b1000000;
parameter    ap_ST_st8_fsm_7 = 24'b10000000;
parameter    ap_ST_st9_fsm_8 = 24'b100000000;
parameter    ap_ST_st10_fsm_9 = 24'b1000000000;
parameter    ap_ST_st11_fsm_10 = 24'b10000000000;
parameter    ap_ST_st12_fsm_11 = 24'b100000000000;
parameter    ap_ST_st13_fsm_12 = 24'b1000000000000;
parameter    ap_ST_st14_fsm_13 = 24'b10000000000000;
parameter    ap_ST_st15_fsm_14 = 24'b100000000000000;
parameter    ap_ST_st16_fsm_15 = 24'b1000000000000000;
parameter    ap_ST_st17_fsm_16 = 24'b10000000000000000;
parameter    ap_ST_st18_fsm_17 = 24'b100000000000000000;
parameter    ap_ST_st19_fsm_18 = 24'b1000000000000000000;
parameter    ap_ST_st20_fsm_19 = 24'b10000000000000000000;
parameter    ap_ST_st21_fsm_20 = 24'b100000000000000000000;
parameter    ap_ST_st22_fsm_21 = 24'b1000000000000000000000;
parameter    ap_ST_st23_fsm_22 = 24'b10000000000000000000000;
parameter    ap_ST_st24_fsm_23 = 24'b100000000000000000000000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv32_6 = 32'b110;
parameter    ap_const_lv32_7 = 32'b111;
parameter    ap_const_lv32_15 = 32'b10101;
parameter    ap_const_lv32_16 = 32'b10110;
parameter    ap_const_lv13_0 = 13'b0000000000000;
parameter    ap_const_lv27_0 = 27'b000000000000000000000000000;
parameter    ap_const_lv5_0 = 5'b00000;
parameter    ap_const_lv8_0 = 8'b00000000;
parameter    ap_const_lv32_17 = 32'b10111;
parameter    ap_const_lv4_6 = 4'b110;
parameter    ap_const_lv13_6 = 13'b110;
parameter    ap_const_lv4_5 = 4'b101;
parameter    ap_const_lv13_5 = 13'b101;
parameter    ap_const_lv4_4 = 4'b100;
parameter    ap_const_lv13_4 = 13'b100;
parameter    ap_const_lv4_3 = 4'b11;
parameter    ap_const_lv13_3 = 13'b11;
parameter    ap_const_lv4_2 = 4'b10;
parameter    ap_const_lv13_2 = 13'b10;
parameter    ap_const_lv4_1 = 4'b1;
parameter    ap_const_lv13_1 = 13'b1;
parameter    ap_const_lv4_0 = 4'b0000;
parameter    ap_const_lv5_2 = 5'b10;
parameter    ap_const_lv13_1440 = 13'b1010001000000;
parameter    ap_const_lv27_3292 = 27'b11001010010010;
parameter    ap_const_lv32_1A = 32'b11010;
parameter    ap_const_lv13_288 = 13'b1010001000;
parameter    ap_const_lv5_1 = 5'b1;
parameter    ap_const_lv32_19 = 32'b11001;
parameter    ap_const_lv12_288 = 12'b1010001000;
parameter    ap_const_lv32_1B = 32'b11011;
parameter    ap_const_lv28_3292 = 28'b11001010010010;
parameter    ap_const_lv26_1949 = 26'b1100101001001;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] input_0_address0;
output   input_0_ce0;
input  [0:0] input_0_q0;
output  [9:0] input_1_address0;
output   input_1_ce0;
input  [0:0] input_1_q0;
output  [9:0] input_2_address0;
output   input_2_ce0;
input  [0:0] input_2_q0;
output  [9:0] input_3_address0;
output   input_3_ce0;
input  [0:0] input_3_q0;
output  [9:0] input_4_address0;
output   input_4_ce0;
input  [0:0] input_4_q0;
output  [9:0] input_5_address0;
output   input_5_ce0;
input  [0:0] input_5_q0;
output  [9:0] input_6_address0;
output   input_6_ce0;
input  [0:0] input_6_q0;
output  [9:0] input_7_address0;
output   input_7_ce0;
input  [0:0] input_7_q0;
output  [9:0] output_0_address0;
output   output_0_ce0;
output   output_0_we0;
output  [0:0] output_0_d0;
output  [9:0] output_1_address0;
output   output_1_ce0;
output   output_1_we0;
output  [0:0] output_1_d0;
output  [9:0] output_2_address0;
output   output_2_ce0;
output   output_2_we0;
output  [0:0] output_2_d0;
output  [9:0] output_3_address0;
output   output_3_ce0;
output   output_3_we0;
output  [0:0] output_3_d0;
output  [9:0] output_4_address0;
output   output_4_ce0;
output   output_4_we0;
output  [0:0] output_4_d0;
output  [9:0] output_5_address0;
output   output_5_ce0;
output   output_5_we0;
output  [0:0] output_5_d0;
output  [9:0] output_6_address0;
output   output_6_ce0;
output   output_6_we0;
output  [0:0] output_6_d0;
output  [9:0] output_7_address0;
output   output_7_ce0;
output   output_7_we0;
output  [0:0] output_7_d0;
input  [6:0] M;
input  [5:0] I;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg input_0_ce0;
reg input_1_ce0;
reg input_2_ce0;
reg input_3_ce0;
reg input_4_ce0;
reg input_5_ce0;
reg input_6_ce0;
reg input_7_ce0;
reg[9:0] output_0_address0;
reg output_0_ce0;
reg output_0_we0;
reg[0:0] output_0_d0;
reg[9:0] output_1_address0;
reg output_1_ce0;
reg output_1_we0;
reg[0:0] output_1_d0;
reg[9:0] output_2_address0;
reg output_2_ce0;
reg output_2_we0;
reg[0:0] output_2_d0;
reg[9:0] output_3_address0;
reg output_3_ce0;
reg output_3_we0;
reg[0:0] output_3_d0;
reg[9:0] output_4_address0;
reg output_4_ce0;
reg output_4_we0;
reg[0:0] output_4_d0;
reg[9:0] output_5_address0;
reg output_5_ce0;
reg output_5_we0;
reg[0:0] output_5_d0;
reg[9:0] output_6_address0;
reg output_6_ce0;
reg output_6_we0;
reg[0:0] output_6_d0;
reg[9:0] output_7_address0;
reg output_7_ce0;
reg output_7_we0;
reg[0:0] output_7_d0;

(* fsm_encoding = "none" *) reg   [23:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_41;
wire   [12:0] tmp_cast5_cast_fu_501_p1;
reg   [12:0] tmp_cast5_cast_reg_809;
wire   [8:0] tmp_cast_cast_fu_505_p1;
reg   [8:0] tmp_cast_cast_reg_814;
wire   [12:0] i_1_fu_515_p2;
reg   [12:0] i_1_reg_822;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_170;
wire   [26:0] next_mul_fu_521_p2;
reg   [26:0] next_mul_reg_827;
wire   [0:0] exitcond1_fu_509_p2;
wire   [5:0] tmp_8_fu_549_p1;
reg   [5:0] tmp_8_reg_835;
wire   [7:0] I_cast6_fu_552_p1;
reg   [7:0] I_cast6_reg_840;
wire   [11:0] I_cast_fu_555_p1;
reg   [11:0] I_cast_reg_845;
wire   [12:0] idx_urem_fu_570_p3;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_193;
wire   [7:0] next_mul8_fu_578_p2;
reg   [7:0] next_mul8_reg_855;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_202;
wire   [4:0] m_1_fu_596_p2;
reg   [4:0] m_1_reg_863;
wire   [8:0] tmp_4_fu_602_p2;
reg   [8:0] tmp_4_reg_868;
wire   [0:0] tmp_2_fu_591_p2;
wire   [11:0] x_cast2_fu_607_p1;
reg   [11:0] x_cast2_reg_873;
reg    ap_sig_cseq_ST_st5_fsm_4;
reg    ap_sig_219;
wire   [4:0] x_1_fu_620_p2;
reg   [4:0] x_1_reg_881;
wire   [12:0] tmp_6_cast_fu_626_p1;
reg   [12:0] tmp_6_cast_reg_886;
wire   [0:0] tmp_5_fu_615_p2;
wire   [4:0] y_1_fu_643_p2;
reg   [4:0] y_1_reg_894;
reg    ap_sig_cseq_ST_st6_fsm_5;
reg    ap_sig_236;
wire   [11:0] tmp2_fu_659_p2;
reg   [11:0] tmp2_reg_899;
wire   [0:0] exitcond_fu_638_p2;
wire   [8:0] tmp9_fu_668_p2;
reg   [8:0] tmp9_reg_904;
wire   [11:0] i_index_fu_673_p2;
reg    ap_sig_cseq_ST_st7_fsm_6;
reg    ap_sig_252;
wire   [12:0] o_index_fu_685_p2;
reg   [12:0] o_index_reg_914;
reg   [3:0] tmp_11_reg_920;
reg   [4:0] tmp_12_reg_925;
reg    ap_sig_cseq_ST_st8_fsm_7;
reg    ap_sig_265;
reg    ap_sig_cseq_ST_st22_fsm_21;
reg    ap_sig_274;
wire   [0:0] tmp_6_fu_745_p10;
reg   [0:0] tmp_6_reg_970;
reg    ap_sig_cseq_ST_st23_fsm_22;
reg    ap_sig_297;
reg   [12:0] i_reg_412;
reg   [26:0] phi_mul_reg_423;
reg   [12:0] phi_urem_reg_434;
reg   [4:0] m_reg_446;
reg   [7:0] phi_mul7_reg_457;
reg   [4:0] x_reg_469;
reg   [4:0] y_reg_480;
reg    ap_sig_cseq_ST_st24_fsm_23;
reg    ap_sig_325;
wire   [63:0] newIndex2_fu_537_p1;
wire   [63:0] newIndex3_fu_726_p1;
wire   [63:0] newIndex5_fu_770_p1;
wire   [3:0] tmp_9_fu_527_p4;
wire  signed [12:0] arrayNo2_fu_767_p1;
wire   [4:0] tmp_3_fu_491_p1;
wire   [4:0] tmp_s_fu_495_p2;
wire   [12:0] next_urem_fu_558_p2;
wire   [0:0] tmp_10_fu_564_p2;
wire   [5:0] m_cast_fu_587_p1;
wire   [4:0] tmp_4_fu_602_p0;
wire   [4:0] tmp_4_fu_602_p1;
wire   [5:0] x_cast_fu_611_p1;
wire   [5:0] y_cast_fu_634_p1;
wire   [7:0] y_cast1_fu_630_p1;
wire   [7:0] tmp_fu_649_p2;
wire   [5:0] tmp2_fu_659_p0;
wire   [7:0] tmp2_fu_659_p1;
wire   [8:0] y_1_cast_fu_664_p1;
wire   [4:0] tmp1_fu_680_p0;
wire   [8:0] tmp1_fu_680_p1;
wire   [12:0] tmp1_fu_680_p2;
wire   [25:0] mul5_fu_789_p2;
wire   [10:0] grp_fu_703_p1;
wire   [27:0] mul2_fu_782_p2;
wire   [10:0] grp_fu_721_p1;
wire   [11:0] grp_fu_703_p2;
wire  signed [11:0] arrayNo_fu_738_p1;
wire   [31:0] tmp_6_fu_745_p9;
wire   [12:0] grp_fu_721_p2;
wire   [12:0] mul2_fu_782_p0;
wire   [14:0] mul2_fu_782_p1;
wire   [11:0] mul5_fu_789_p0;
wire   [13:0] mul5_fu_789_p1;
reg    grp_fu_703_ap_start;
wire    grp_fu_703_ap_done;
reg    grp_fu_721_ap_start;
wire    grp_fu_721_ap_done;
reg   [23:0] ap_NS_fsm;
wire   [27:0] mul2_fu_782_p00;
wire   [25:0] mul5_fu_789_p00;
wire   [12:0] tmp1_fu_680_p10;
wire   [11:0] tmp2_fu_659_p10;
wire   [8:0] tmp_4_fu_602_p00;

// power-on initialization
initial begin
#0 ap_CS_fsm = 24'b1;
end

dut_urem_12ns_11ns_12_16_seq #(
    .ID( 1 ),
    .NUM_STAGE( 16 ),
    .din0_WIDTH( 12 ),
    .din1_WIDTH( 11 ),
    .dout_WIDTH( 12 ))
dut_urem_12ns_11ns_12_16_seq_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .start(grp_fu_703_ap_start),
    .done(grp_fu_703_ap_done),
    .din0(i_index_fu_673_p2),
    .din1(grp_fu_703_p1),
    .ce(1'b1),
    .dout(grp_fu_703_p2)
);

dut_urem_13ns_11ns_13_17_seq #(
    .ID( 1 ),
    .NUM_STAGE( 17 ),
    .din0_WIDTH( 13 ),
    .din1_WIDTH( 11 ),
    .dout_WIDTH( 13 ))
dut_urem_13ns_11ns_13_17_seq_U2(
    .clk(ap_clk),
    .reset(ap_rst),
    .start(grp_fu_721_ap_start),
    .done(grp_fu_721_ap_done),
    .din0(o_index_reg_914),
    .din1(grp_fu_721_p1),
    .ce(1'b1),
    .dout(grp_fu_721_p2)
);

dut_mux_8to1_sel32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din1_WIDTH( 1 ),
    .din2_WIDTH( 1 ),
    .din3_WIDTH( 1 ),
    .din4_WIDTH( 1 ),
    .din5_WIDTH( 1 ),
    .din6_WIDTH( 1 ),
    .din7_WIDTH( 1 ),
    .din8_WIDTH( 1 ),
    .din9_WIDTH( 32 ),
    .dout_WIDTH( 1 ))
dut_mux_8to1_sel32_1_1_U3(
    .din1(input_0_q0),
    .din2(input_1_q0),
    .din3(input_2_q0),
    .din4(input_3_q0),
    .din5(input_4_q0),
    .din6(input_5_q0),
    .din7(input_6_q0),
    .din8(input_7_q0),
    .din9(tmp_6_fu_745_p9),
    .dout(tmp_6_fu_745_p10)
);

dut_mul_mul_13ns_15ns_28_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 13 ),
    .din1_WIDTH( 15 ),
    .dout_WIDTH( 28 ))
dut_mul_mul_13ns_15ns_28_1_U4(
    .din0(mul2_fu_782_p0),
    .din1(mul2_fu_782_p1),
    .dout(mul2_fu_782_p2)
);

dut_mul_mul_12ns_14ns_26_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 12 ),
    .din1_WIDTH( 14 ),
    .dout_WIDTH( 26 ))
dut_mul_mul_12ns_14ns_26_1_U5(
    .din0(mul5_fu_789_p0),
    .din1(mul5_fu_789_p1),
    .dout(mul5_fu_789_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        i_reg_412 <= i_1_reg_822;
    end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        i_reg_412 <= ap_const_lv13_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond1_fu_509_p2 == 1'b0))) begin
        m_reg_446 <= ap_const_lv5_0;
    end else if (((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & (1'b0 == tmp_5_fu_615_p2))) begin
        m_reg_446 <= m_1_reg_863;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond1_fu_509_p2 == 1'b0))) begin
        phi_mul7_reg_457 <= ap_const_lv8_0;
    end else if (((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & (1'b0 == tmp_5_fu_615_p2))) begin
        phi_mul7_reg_457 <= next_mul8_reg_855;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        phi_mul_reg_423 <= next_mul_reg_827;
    end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        phi_mul_reg_423 <= ap_const_lv27_0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        phi_urem_reg_434 <= idx_urem_fu_570_p3;
    end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        phi_urem_reg_434 <= ap_const_lv13_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st6_fsm_5) & ~(1'b0 == exitcond_fu_638_p2))) begin
        x_reg_469 <= x_1_reg_881;
    end else if (((1'b1 == ap_sig_cseq_ST_st4_fsm_3) & ~(1'b0 == tmp_2_fu_591_p2))) begin
        x_reg_469 <= ap_const_lv5_0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st24_fsm_23)) begin
        y_reg_480 <= y_1_reg_894;
    end else if (((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & ~(1'b0 == tmp_5_fu_615_p2))) begin
        y_reg_480 <= ap_const_lv5_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond1_fu_509_p2 == 1'b0))) begin
        I_cast6_reg_840[5 : 0] <= I_cast6_fu_552_p1[5 : 0];
        I_cast_reg_845[5 : 0] <= I_cast_fu_555_p1[5 : 0];
        tmp_8_reg_835 <= tmp_8_fu_549_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        i_1_reg_822 <= i_1_fu_515_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        m_1_reg_863 <= m_1_fu_596_p2;
        next_mul8_reg_855 <= next_mul8_fu_578_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond1_fu_509_p2 == 1'b0))) begin
        next_mul_reg_827 <= next_mul_fu_521_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st7_fsm_6)) begin
        o_index_reg_914 <= o_index_fu_685_p2;
        tmp_11_reg_920 <= {{mul5_fu_789_p2[ap_const_lv32_19 : ap_const_lv32_16]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st6_fsm_5) & (1'b0 == exitcond_fu_638_p2))) begin
        tmp2_reg_899 <= tmp2_fu_659_p2;
        tmp9_reg_904 <= tmp9_fu_668_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st8_fsm_7)) begin
        tmp_12_reg_925 <= {{mul2_fu_782_p2[ap_const_lv32_1B : ap_const_lv32_17]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st4_fsm_3) & ~(1'b0 == tmp_2_fu_591_p2))) begin
        tmp_4_reg_868 <= tmp_4_fu_602_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & ~(1'b0 == tmp_5_fu_615_p2))) begin
        tmp_6_cast_reg_886[4 : 0] <= tmp_6_cast_fu_626_p1[4 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st23_fsm_22)) begin
        tmp_6_reg_970 <= tmp_6_fu_745_p10;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        tmp_cast5_cast_reg_809[4 : 0] <= tmp_cast5_cast_fu_501_p1[4 : 0];
        tmp_cast_cast_reg_814[4 : 0] <= tmp_cast_cast_fu_505_p1[4 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        x_1_reg_881 <= x_1_fu_620_p2;
        x_cast2_reg_873[4 : 0] <= x_cast2_fu_607_p1[4 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        y_1_reg_894 <= y_1_fu_643_p2;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0)) | ((1'b1 == ap_sig_cseq_ST_st4_fsm_3) & (1'b0 == tmp_2_fu_591_p2)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st4_fsm_3) & (1'b0 == tmp_2_fu_591_p2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_41) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_274) begin
        ap_sig_cseq_ST_st22_fsm_21 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st22_fsm_21 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_297) begin
        ap_sig_cseq_ST_st23_fsm_22 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st23_fsm_22 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_325) begin
        ap_sig_cseq_ST_st24_fsm_23 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st24_fsm_23 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_170) begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_193) begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_202) begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_219) begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_236) begin
        ap_sig_cseq_ST_st6_fsm_5 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st6_fsm_5 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_252) begin
        ap_sig_cseq_ST_st7_fsm_6 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st7_fsm_6 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_265) begin
        ap_sig_cseq_ST_st8_fsm_7 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st8_fsm_7 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st7_fsm_6)) begin
        grp_fu_703_ap_start = 1'b1;
    end else begin
        grp_fu_703_ap_start = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st8_fsm_7)) begin
        grp_fu_721_ap_start = 1'b1;
    end else begin
        grp_fu_721_ap_start = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st22_fsm_21)) begin
        input_0_ce0 = 1'b1;
    end else begin
        input_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st22_fsm_21)) begin
        input_1_ce0 = 1'b1;
    end else begin
        input_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st22_fsm_21)) begin
        input_2_ce0 = 1'b1;
    end else begin
        input_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st22_fsm_21)) begin
        input_3_ce0 = 1'b1;
    end else begin
        input_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st22_fsm_21)) begin
        input_4_ce0 = 1'b1;
    end else begin
        input_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st22_fsm_21)) begin
        input_5_ce0 = 1'b1;
    end else begin
        input_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st22_fsm_21)) begin
        input_6_ce0 = 1'b1;
    end else begin
        input_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st22_fsm_21)) begin
        input_7_ce0 = 1'b1;
    end else begin
        input_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st24_fsm_23)) begin
        output_0_address0 = newIndex5_fu_770_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        output_0_address0 = newIndex2_fu_537_p1;
    end else begin
        output_0_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) | (1'b1 == ap_sig_cseq_ST_st24_fsm_23))) begin
        output_0_ce0 = 1'b1;
    end else begin
        output_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st24_fsm_23)) begin
        output_0_d0 = tmp_6_reg_970;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        output_0_d0 = 1'b0;
    end else begin
        output_0_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond1_fu_509_p2 == 1'b0) & (tmp_9_fu_527_p4 == ap_const_lv4_0)) | ((1'b1 == ap_sig_cseq_ST_st24_fsm_23) & (ap_const_lv13_0 == arrayNo2_fu_767_p1)))) begin
        output_0_we0 = 1'b1;
    end else begin
        output_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st24_fsm_23)) begin
        output_1_address0 = newIndex5_fu_770_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        output_1_address0 = newIndex2_fu_537_p1;
    end else begin
        output_1_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) | (1'b1 == ap_sig_cseq_ST_st24_fsm_23))) begin
        output_1_ce0 = 1'b1;
    end else begin
        output_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st24_fsm_23)) begin
        output_1_d0 = tmp_6_reg_970;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        output_1_d0 = 1'b0;
    end else begin
        output_1_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond1_fu_509_p2 == 1'b0) & (tmp_9_fu_527_p4 == ap_const_lv4_1)) | ((1'b1 == ap_sig_cseq_ST_st24_fsm_23) & (arrayNo2_fu_767_p1 == ap_const_lv13_1)))) begin
        output_1_we0 = 1'b1;
    end else begin
        output_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st24_fsm_23)) begin
        output_2_address0 = newIndex5_fu_770_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        output_2_address0 = newIndex2_fu_537_p1;
    end else begin
        output_2_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) | (1'b1 == ap_sig_cseq_ST_st24_fsm_23))) begin
        output_2_ce0 = 1'b1;
    end else begin
        output_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st24_fsm_23)) begin
        output_2_d0 = tmp_6_reg_970;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        output_2_d0 = 1'b0;
    end else begin
        output_2_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond1_fu_509_p2 == 1'b0) & (tmp_9_fu_527_p4 == ap_const_lv4_2)) | ((1'b1 == ap_sig_cseq_ST_st24_fsm_23) & (arrayNo2_fu_767_p1 == ap_const_lv13_2)))) begin
        output_2_we0 = 1'b1;
    end else begin
        output_2_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st24_fsm_23)) begin
        output_3_address0 = newIndex5_fu_770_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        output_3_address0 = newIndex2_fu_537_p1;
    end else begin
        output_3_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) | (1'b1 == ap_sig_cseq_ST_st24_fsm_23))) begin
        output_3_ce0 = 1'b1;
    end else begin
        output_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st24_fsm_23)) begin
        output_3_d0 = tmp_6_reg_970;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        output_3_d0 = 1'b0;
    end else begin
        output_3_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond1_fu_509_p2 == 1'b0) & (tmp_9_fu_527_p4 == ap_const_lv4_3)) | ((1'b1 == ap_sig_cseq_ST_st24_fsm_23) & (arrayNo2_fu_767_p1 == ap_const_lv13_3)))) begin
        output_3_we0 = 1'b1;
    end else begin
        output_3_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st24_fsm_23)) begin
        output_4_address0 = newIndex5_fu_770_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        output_4_address0 = newIndex2_fu_537_p1;
    end else begin
        output_4_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) | (1'b1 == ap_sig_cseq_ST_st24_fsm_23))) begin
        output_4_ce0 = 1'b1;
    end else begin
        output_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st24_fsm_23)) begin
        output_4_d0 = tmp_6_reg_970;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        output_4_d0 = 1'b0;
    end else begin
        output_4_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond1_fu_509_p2 == 1'b0) & (tmp_9_fu_527_p4 == ap_const_lv4_4)) | ((1'b1 == ap_sig_cseq_ST_st24_fsm_23) & (arrayNo2_fu_767_p1 == ap_const_lv13_4)))) begin
        output_4_we0 = 1'b1;
    end else begin
        output_4_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st24_fsm_23)) begin
        output_5_address0 = newIndex5_fu_770_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        output_5_address0 = newIndex2_fu_537_p1;
    end else begin
        output_5_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) | (1'b1 == ap_sig_cseq_ST_st24_fsm_23))) begin
        output_5_ce0 = 1'b1;
    end else begin
        output_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st24_fsm_23)) begin
        output_5_d0 = tmp_6_reg_970;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        output_5_d0 = 1'b0;
    end else begin
        output_5_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond1_fu_509_p2 == 1'b0) & (tmp_9_fu_527_p4 == ap_const_lv4_5)) | ((1'b1 == ap_sig_cseq_ST_st24_fsm_23) & (arrayNo2_fu_767_p1 == ap_const_lv13_5)))) begin
        output_5_we0 = 1'b1;
    end else begin
        output_5_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st24_fsm_23)) begin
        output_6_address0 = newIndex5_fu_770_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        output_6_address0 = newIndex2_fu_537_p1;
    end else begin
        output_6_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) | (1'b1 == ap_sig_cseq_ST_st24_fsm_23))) begin
        output_6_ce0 = 1'b1;
    end else begin
        output_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st24_fsm_23)) begin
        output_6_d0 = tmp_6_reg_970;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        output_6_d0 = 1'b0;
    end else begin
        output_6_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond1_fu_509_p2 == 1'b0) & (tmp_9_fu_527_p4 == ap_const_lv4_6)) | ((1'b1 == ap_sig_cseq_ST_st24_fsm_23) & (arrayNo2_fu_767_p1 == ap_const_lv13_6)))) begin
        output_6_we0 = 1'b1;
    end else begin
        output_6_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st24_fsm_23)) begin
        output_7_address0 = newIndex5_fu_770_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        output_7_address0 = newIndex2_fu_537_p1;
    end else begin
        output_7_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) | (1'b1 == ap_sig_cseq_ST_st24_fsm_23))) begin
        output_7_ce0 = 1'b1;
    end else begin
        output_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st24_fsm_23)) begin
        output_7_d0 = tmp_6_reg_970;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        output_7_d0 = 1'b0;
    end else begin
        output_7_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond1_fu_509_p2 == 1'b0) & ~(tmp_9_fu_527_p4 == ap_const_lv4_0) & ~(tmp_9_fu_527_p4 == ap_const_lv4_1) & ~(tmp_9_fu_527_p4 == ap_const_lv4_2) & ~(tmp_9_fu_527_p4 == ap_const_lv4_3) & ~(tmp_9_fu_527_p4 == ap_const_lv4_4) & ~(tmp_9_fu_527_p4 == ap_const_lv4_5) & ~(tmp_9_fu_527_p4 == ap_const_lv4_6)) | ((1'b1 == ap_sig_cseq_ST_st24_fsm_23) & ~(ap_const_lv13_0 == arrayNo2_fu_767_p1) & ~(arrayNo2_fu_767_p1 == ap_const_lv13_1) & ~(arrayNo2_fu_767_p1 == ap_const_lv13_2) & ~(arrayNo2_fu_767_p1 == ap_const_lv13_3) & ~(arrayNo2_fu_767_p1 == ap_const_lv13_4) & ~(arrayNo2_fu_767_p1 == ap_const_lv13_5) & ~(arrayNo2_fu_767_p1 == ap_const_lv13_6)))) begin
        output_7_we0 = 1'b1;
    end else begin
        output_7_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : begin
            if (~(ap_start == 1'b0)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : begin
            if (~(exitcond1_fu_509_p2 == 1'b0)) begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        end
        ap_ST_st3_fsm_2 : begin
            ap_NS_fsm = ap_ST_st2_fsm_1;
        end
        ap_ST_st4_fsm_3 : begin
            if ((1'b0 == tmp_2_fu_591_p2)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
            end
        end
        ap_ST_st5_fsm_4 : begin
            if ((1'b0 == tmp_5_fu_615_p2)) begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_st6_fsm_5;
            end
        end
        ap_ST_st6_fsm_5 : begin
            if (~(1'b0 == exitcond_fu_638_p2)) begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
            end else begin
                ap_NS_fsm = ap_ST_st7_fsm_6;
            end
        end
        ap_ST_st7_fsm_6 : begin
            ap_NS_fsm = ap_ST_st8_fsm_7;
        end
        ap_ST_st8_fsm_7 : begin
            ap_NS_fsm = ap_ST_st9_fsm_8;
        end
        ap_ST_st9_fsm_8 : begin
            ap_NS_fsm = ap_ST_st10_fsm_9;
        end
        ap_ST_st10_fsm_9 : begin
            ap_NS_fsm = ap_ST_st11_fsm_10;
        end
        ap_ST_st11_fsm_10 : begin
            ap_NS_fsm = ap_ST_st12_fsm_11;
        end
        ap_ST_st12_fsm_11 : begin
            ap_NS_fsm = ap_ST_st13_fsm_12;
        end
        ap_ST_st13_fsm_12 : begin
            ap_NS_fsm = ap_ST_st14_fsm_13;
        end
        ap_ST_st14_fsm_13 : begin
            ap_NS_fsm = ap_ST_st15_fsm_14;
        end
        ap_ST_st15_fsm_14 : begin
            ap_NS_fsm = ap_ST_st16_fsm_15;
        end
        ap_ST_st16_fsm_15 : begin
            ap_NS_fsm = ap_ST_st17_fsm_16;
        end
        ap_ST_st17_fsm_16 : begin
            ap_NS_fsm = ap_ST_st18_fsm_17;
        end
        ap_ST_st18_fsm_17 : begin
            ap_NS_fsm = ap_ST_st19_fsm_18;
        end
        ap_ST_st19_fsm_18 : begin
            ap_NS_fsm = ap_ST_st20_fsm_19;
        end
        ap_ST_st20_fsm_19 : begin
            ap_NS_fsm = ap_ST_st21_fsm_20;
        end
        ap_ST_st21_fsm_20 : begin
            ap_NS_fsm = ap_ST_st22_fsm_21;
        end
        ap_ST_st22_fsm_21 : begin
            ap_NS_fsm = ap_ST_st23_fsm_22;
        end
        ap_ST_st23_fsm_22 : begin
            ap_NS_fsm = ap_ST_st24_fsm_23;
        end
        ap_ST_st24_fsm_23 : begin
            ap_NS_fsm = ap_ST_st6_fsm_5;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign I_cast6_fu_552_p1 = I;

assign I_cast_fu_555_p1 = I;

always @ (*) begin
    ap_sig_170 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

always @ (*) begin
    ap_sig_193 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

always @ (*) begin
    ap_sig_202 = (1'b1 == ap_CS_fsm[ap_const_lv32_3]);
end

always @ (*) begin
    ap_sig_219 = (1'b1 == ap_CS_fsm[ap_const_lv32_4]);
end

always @ (*) begin
    ap_sig_236 = (1'b1 == ap_CS_fsm[ap_const_lv32_5]);
end

always @ (*) begin
    ap_sig_252 = (1'b1 == ap_CS_fsm[ap_const_lv32_6]);
end

always @ (*) begin
    ap_sig_265 = (1'b1 == ap_CS_fsm[ap_const_lv32_7]);
end

always @ (*) begin
    ap_sig_274 = (1'b1 == ap_CS_fsm[ap_const_lv32_15]);
end

always @ (*) begin
    ap_sig_297 = (1'b1 == ap_CS_fsm[ap_const_lv32_16]);
end

always @ (*) begin
    ap_sig_325 = (1'b1 == ap_CS_fsm[ap_const_lv32_17]);
end

always @ (*) begin
    ap_sig_41 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

assign arrayNo2_fu_767_p1 = $signed(tmp_12_reg_925);

assign arrayNo_fu_738_p1 = $signed(tmp_11_reg_920);

assign exitcond1_fu_509_p2 = ((i_reg_412 == ap_const_lv13_1440) ? 1'b1 : 1'b0);

assign exitcond_fu_638_p2 = ((y_cast_fu_634_p1 == I) ? 1'b1 : 1'b0);

assign grp_fu_703_p1 = ap_const_lv12_288;

assign grp_fu_721_p1 = ap_const_lv13_288;

assign i_1_fu_515_p2 = (i_reg_412 + ap_const_lv13_1);

assign i_index_fu_673_p2 = (x_cast2_reg_873 + tmp2_reg_899);

assign idx_urem_fu_570_p3 = ((tmp_10_fu_564_p2[0:0] === 1'b1) ? next_urem_fu_558_p2 : ap_const_lv13_0);

assign input_0_address0 = newIndex3_fu_726_p1;

assign input_1_address0 = newIndex3_fu_726_p1;

assign input_2_address0 = newIndex3_fu_726_p1;

assign input_3_address0 = newIndex3_fu_726_p1;

assign input_4_address0 = newIndex3_fu_726_p1;

assign input_5_address0 = newIndex3_fu_726_p1;

assign input_6_address0 = newIndex3_fu_726_p1;

assign input_7_address0 = newIndex3_fu_726_p1;

assign m_1_fu_596_p2 = (m_reg_446 + ap_const_lv5_1);

assign m_cast_fu_587_p1 = m_reg_446;

assign mul2_fu_782_p0 = mul2_fu_782_p00;

assign mul2_fu_782_p00 = o_index_reg_914;

assign mul2_fu_782_p1 = ap_const_lv28_3292;

assign mul5_fu_789_p0 = mul5_fu_789_p00;

assign mul5_fu_789_p00 = i_index_fu_673_p2;

assign mul5_fu_789_p1 = ap_const_lv26_1949;

assign newIndex2_fu_537_p1 = phi_urem_reg_434;

assign newIndex3_fu_726_p1 = grp_fu_703_p2;

assign newIndex5_fu_770_p1 = grp_fu_721_p2;

assign next_mul8_fu_578_p2 = (phi_mul7_reg_457 + I_cast6_reg_840);

assign next_mul_fu_521_p2 = (phi_mul_reg_423 + ap_const_lv27_3292);

assign next_urem_fu_558_p2 = (phi_urem_reg_434 + ap_const_lv13_1);

assign o_index_fu_685_p2 = (tmp1_fu_680_p2 + tmp_6_cast_reg_886);

assign tmp1_fu_680_p0 = tmp_cast5_cast_reg_809;

assign tmp1_fu_680_p1 = tmp1_fu_680_p10;

assign tmp1_fu_680_p10 = tmp9_reg_904;

assign tmp1_fu_680_p2 = (tmp1_fu_680_p0 * tmp1_fu_680_p1);

assign tmp2_fu_659_p0 = I_cast_reg_845;

assign tmp2_fu_659_p1 = tmp2_fu_659_p10;

assign tmp2_fu_659_p10 = tmp_fu_649_p2;

assign tmp2_fu_659_p2 = (tmp2_fu_659_p0 * tmp2_fu_659_p1);

assign tmp9_fu_668_p2 = (tmp_4_reg_868 + y_1_cast_fu_664_p1);

assign tmp_10_fu_564_p2 = ((next_urem_fu_558_p2 < ap_const_lv13_288) ? 1'b1 : 1'b0);

assign tmp_2_fu_591_p2 = (($signed(m_cast_fu_587_p1) < $signed(tmp_8_reg_835)) ? 1'b1 : 1'b0);

assign tmp_3_fu_491_p1 = I[4:0];

assign tmp_4_fu_602_p0 = tmp_4_fu_602_p00;

assign tmp_4_fu_602_p00 = m_reg_446;

assign tmp_4_fu_602_p1 = tmp_cast_cast_reg_814;

assign tmp_4_fu_602_p2 = (tmp_4_fu_602_p0 * tmp_4_fu_602_p1);

assign tmp_5_fu_615_p2 = (($signed(x_cast_fu_611_p1) < $signed(I)) ? 1'b1 : 1'b0);

assign tmp_6_cast_fu_626_p1 = x_1_fu_620_p2;

assign tmp_6_fu_745_p9 = $unsigned(arrayNo_fu_738_p1);

assign tmp_8_fu_549_p1 = M[5:0];

assign tmp_9_fu_527_p4 = {{phi_mul_reg_423[ap_const_lv32_1A : ap_const_lv32_17]}};

assign tmp_cast5_cast_fu_501_p1 = tmp_s_fu_495_p2;

assign tmp_cast_cast_fu_505_p1 = tmp_s_fu_495_p2;

assign tmp_fu_649_p2 = (phi_mul7_reg_457 + y_cast1_fu_630_p1);

assign tmp_s_fu_495_p2 = (ap_const_lv5_2 + tmp_3_fu_491_p1);

assign x_1_fu_620_p2 = (x_reg_469 + ap_const_lv5_1);

assign x_cast2_fu_607_p1 = x_reg_469;

assign x_cast_fu_611_p1 = x_reg_469;

assign y_1_cast_fu_664_p1 = y_1_fu_643_p2;

assign y_1_fu_643_p2 = (y_reg_480 + ap_const_lv5_1);

assign y_cast1_fu_630_p1 = y_reg_480;

assign y_cast_fu_634_p1 = y_reg_480;

always @ (posedge ap_clk) begin
    tmp_cast5_cast_reg_809[12:5] <= 8'b00000000;
    tmp_cast_cast_reg_814[8:5] <= 4'b0000;
    I_cast6_reg_840[7:6] <= 2'b00;
    I_cast_reg_845[11:6] <= 6'b000000;
    x_cast2_reg_873[11:5] <= 7'b0000000;
    tmp_6_cast_reg_886[12:5] <= 8'b00000000;
end

endmodule //dut_pad
