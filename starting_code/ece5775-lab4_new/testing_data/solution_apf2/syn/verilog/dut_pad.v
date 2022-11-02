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
        output_0_address0,
        output_0_ce0,
        output_0_we0,
        output_0_d0,
        output_1_address0,
        output_1_ce0,
        output_1_we0,
        output_1_d0,
        M,
        I
);

parameter    ap_ST_st1_fsm_0 = 23'b1;
parameter    ap_ST_st2_fsm_1 = 23'b10;
parameter    ap_ST_st3_fsm_2 = 23'b100;
parameter    ap_ST_st4_fsm_3 = 23'b1000;
parameter    ap_ST_st5_fsm_4 = 23'b10000;
parameter    ap_ST_st6_fsm_5 = 23'b100000;
parameter    ap_ST_st7_fsm_6 = 23'b1000000;
parameter    ap_ST_st8_fsm_7 = 23'b10000000;
parameter    ap_ST_st9_fsm_8 = 23'b100000000;
parameter    ap_ST_st10_fsm_9 = 23'b1000000000;
parameter    ap_ST_st11_fsm_10 = 23'b10000000000;
parameter    ap_ST_st12_fsm_11 = 23'b100000000000;
parameter    ap_ST_st13_fsm_12 = 23'b1000000000000;
parameter    ap_ST_st14_fsm_13 = 23'b10000000000000;
parameter    ap_ST_st15_fsm_14 = 23'b100000000000000;
parameter    ap_ST_st16_fsm_15 = 23'b1000000000000000;
parameter    ap_ST_st17_fsm_16 = 23'b10000000000000000;
parameter    ap_ST_st18_fsm_17 = 23'b100000000000000000;
parameter    ap_ST_st19_fsm_18 = 23'b1000000000000000000;
parameter    ap_ST_st20_fsm_19 = 23'b10000000000000000000;
parameter    ap_ST_st21_fsm_20 = 23'b100000000000000000000;
parameter    ap_ST_st22_fsm_21 = 23'b1000000000000000000000;
parameter    ap_ST_st23_fsm_22 = 23'b10000000000000000000000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv32_6 = 32'b110;
parameter    ap_const_lv13_0 = 13'b0000000000000;
parameter    ap_const_lv5_0 = 5'b00000;
parameter    ap_const_lv8_0 = 8'b00000000;
parameter    ap_const_lv32_16 = 32'b10110;
parameter    ap_const_lv5_2 = 5'b10;
parameter    ap_const_lv13_1440 = 13'b1010001000000;
parameter    ap_const_lv13_1 = 13'b1;
parameter    ap_const_lv13_A20 = 13'b101000100000;
parameter    ap_const_lv13_15E0 = 13'b1010111100000;
parameter    ap_const_lv5_1 = 5'b1;
parameter    ap_const_lv12_A20 = 12'b101000100000;
parameter    ap_const_lv12_5E0 = 12'b10111100000;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] input_0_address0;
output   input_0_ce0;
input  [0:0] input_0_q0;
output  [11:0] input_1_address0;
output   input_1_ce0;
input  [0:0] input_1_q0;
output  [11:0] output_0_address0;
output   output_0_ce0;
output   output_0_we0;
output  [0:0] output_0_d0;
output  [11:0] output_1_address0;
output   output_1_ce0;
output   output_1_we0;
output  [0:0] output_1_d0;
input  [6:0] M;
input  [5:0] I;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg input_0_ce0;
reg input_1_ce0;
reg[11:0] output_0_address0;
reg output_0_ce0;
reg output_0_we0;
reg[0:0] output_0_d0;
reg[11:0] output_1_address0;
reg output_1_ce0;
reg output_1_we0;
reg[0:0] output_1_d0;

(* fsm_encoding = "none" *) reg   [22:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_40;
wire   [12:0] tmp_cast5_cast_fu_210_p1;
reg   [12:0] tmp_cast5_cast_reg_439;
wire   [8:0] tmp_cast_cast_fu_214_p1;
reg   [8:0] tmp_cast_cast_reg_444;
wire   [12:0] i_1_fu_224_p2;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_91;
wire   [5:0] tmp_3_fu_256_p1;
reg   [5:0] tmp_3_reg_460;
wire   [0:0] exitcond1_fu_218_p2;
wire   [7:0] I_cast6_fu_259_p1;
reg   [7:0] I_cast6_reg_465;
wire   [11:0] I_cast_fu_262_p1;
reg   [11:0] I_cast_reg_470;
wire   [7:0] next_mul_fu_265_p2;
reg   [7:0] next_mul_reg_475;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_111;
wire   [4:0] m_1_fu_283_p2;
reg   [4:0] m_1_reg_483;
wire   [8:0] tmp_4_fu_289_p2;
reg   [8:0] tmp_4_reg_488;
wire   [0:0] tmp_2_fu_278_p2;
wire   [11:0] x_cast2_fu_294_p1;
reg   [11:0] x_cast2_reg_493;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_128;
wire   [4:0] x_1_fu_307_p2;
reg   [4:0] x_1_reg_501;
wire   [12:0] tmp_6_cast_fu_313_p1;
reg   [12:0] tmp_6_cast_reg_506;
wire   [0:0] tmp_5_fu_302_p2;
wire   [4:0] y_1_fu_330_p2;
reg   [4:0] y_1_reg_514;
reg    ap_sig_cseq_ST_st5_fsm_4;
reg    ap_sig_145;
wire   [11:0] tmp2_fu_346_p2;
reg   [11:0] tmp2_reg_519;
wire   [0:0] exitcond_fu_325_p2;
wire   [8:0] tmp9_fu_355_p2;
reg   [8:0] tmp9_reg_524;
wire   [12:0] o_index_fu_372_p2;
reg   [12:0] o_index_reg_529;
reg    ap_sig_cseq_ST_st6_fsm_5;
reg    ap_sig_161;
wire   [0:0] tmp_11_fu_377_p2;
reg   [0:0] tmp_11_reg_535;
wire   [0:0] input_load_phi_fu_403_p3;
reg   [0:0] input_load_phi_reg_550;
reg    ap_sig_cseq_ST_st7_fsm_6;
reg    ap_sig_176;
wire   [0:0] tmp_6_fu_415_p2;
reg   [0:0] tmp_6_reg_556;
reg   [12:0] i_reg_144;
reg   [4:0] m_reg_155;
reg   [7:0] phi_mul_reg_166;
reg   [4:0] x_reg_178;
reg   [4:0] y_reg_189;
reg    ap_sig_cseq_ST_st23_fsm_22;
reg    ap_sig_202;
wire   [63:0] newIndex2_fu_250_p1;
wire   [63:0] newIndex3_fu_397_p1;
wire   [63:0] newIndex4_fu_420_p1;
wire   [0:0] tmp_9_fu_230_p2;
wire   [4:0] tmp_1_fu_200_p1;
wire   [4:0] tmp_s_fu_204_p2;
wire   [12:0] tmp_10_fu_236_p2;
wire   [12:0] newIndex1_fu_242_p3;
wire   [5:0] m_cast_fu_274_p1;
wire   [4:0] tmp_4_fu_289_p0;
wire   [4:0] tmp_4_fu_289_p1;
wire   [5:0] x_cast_fu_298_p1;
wire   [5:0] y_cast_fu_321_p1;
wire   [7:0] y_cast1_fu_317_p1;
wire   [7:0] tmp_fu_336_p2;
wire   [7:0] tmp2_fu_346_p0;
wire   [5:0] tmp2_fu_346_p1;
wire   [8:0] y_1_cast_fu_351_p1;
wire   [8:0] tmp1_fu_367_p0;
wire   [4:0] tmp1_fu_367_p1;
wire   [12:0] tmp1_fu_367_p2;
wire   [11:0] i_index_fu_360_p2;
wire   [11:0] tmp_12_fu_383_p2;
wire   [11:0] newIndex_fu_389_p3;
wire   [12:0] grp_fu_410_p2;
reg    grp_fu_410_ap_start;
wire    grp_fu_410_ap_done;
reg   [22:0] ap_NS_fsm;
wire   [12:0] tmp1_fu_367_p00;
wire   [11:0] tmp2_fu_346_p00;
wire   [8:0] tmp_4_fu_289_p00;

// power-on initialization
initial begin
#0 ap_CS_fsm = 23'b1;
end

dut_urem_13ns_13ns_13_17_seq #(
    .ID( 1 ),
    .NUM_STAGE( 17 ),
    .din0_WIDTH( 13 ),
    .din1_WIDTH( 13 ),
    .dout_WIDTH( 13 ))
dut_urem_13ns_13ns_13_17_seq_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .start(grp_fu_410_ap_start),
    .done(grp_fu_410_ap_done),
    .din0(o_index_reg_529),
    .din1(ap_const_lv13_A20),
    .ce(1'b1),
    .dout(grp_fu_410_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond1_fu_218_p2 == 1'b0))) begin
        i_reg_144 <= i_1_fu_224_p2;
    end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        i_reg_144 <= ap_const_lv13_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond1_fu_218_p2 == 1'b0))) begin
        m_reg_155 <= ap_const_lv5_0;
    end else if (((1'b1 == ap_sig_cseq_ST_st4_fsm_3) & (1'b0 == tmp_5_fu_302_p2))) begin
        m_reg_155 <= m_1_reg_483;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond1_fu_218_p2 == 1'b0))) begin
        phi_mul_reg_166 <= ap_const_lv8_0;
    end else if (((1'b1 == ap_sig_cseq_ST_st4_fsm_3) & (1'b0 == tmp_5_fu_302_p2))) begin
        phi_mul_reg_166 <= next_mul_reg_475;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & ~(1'b0 == exitcond_fu_325_p2))) begin
        x_reg_178 <= x_1_reg_501;
    end else if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(1'b0 == tmp_2_fu_278_p2))) begin
        x_reg_178 <= ap_const_lv5_0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st23_fsm_22)) begin
        y_reg_189 <= y_1_reg_514;
    end else if (((1'b1 == ap_sig_cseq_ST_st4_fsm_3) & ~(1'b0 == tmp_5_fu_302_p2))) begin
        y_reg_189 <= ap_const_lv5_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond1_fu_218_p2 == 1'b0))) begin
        I_cast6_reg_465[5 : 0] <= I_cast6_fu_259_p1[5 : 0];
        I_cast_reg_470[5 : 0] <= I_cast_fu_262_p1[5 : 0];
        tmp_3_reg_460 <= tmp_3_fu_256_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st7_fsm_6)) begin
        input_load_phi_reg_550 <= input_load_phi_fu_403_p3;
        tmp_6_reg_556 <= tmp_6_fu_415_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        m_1_reg_483 <= m_1_fu_283_p2;
        next_mul_reg_475 <= next_mul_fu_265_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        o_index_reg_529 <= o_index_fu_372_p2;
        tmp_11_reg_535 <= tmp_11_fu_377_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & (1'b0 == exitcond_fu_325_p2))) begin
        tmp2_reg_519 <= tmp2_fu_346_p2;
        tmp9_reg_524 <= tmp9_fu_355_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(1'b0 == tmp_2_fu_278_p2))) begin
        tmp_4_reg_488 <= tmp_4_fu_289_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st4_fsm_3) & ~(1'b0 == tmp_5_fu_302_p2))) begin
        tmp_6_cast_reg_506[4 : 0] <= tmp_6_cast_fu_313_p1[4 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        tmp_cast5_cast_reg_439[4 : 0] <= tmp_cast5_cast_fu_210_p1[4 : 0];
        tmp_cast_cast_reg_444[4 : 0] <= tmp_cast_cast_fu_214_p1[4 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        x_1_reg_501 <= x_1_fu_307_p2;
        x_cast2_reg_493[4 : 0] <= x_cast2_fu_294_p1[4 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        y_1_reg_514 <= y_1_fu_330_p2;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0)) | ((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & (1'b0 == tmp_2_fu_278_p2)))) begin
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
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & (1'b0 == tmp_2_fu_278_p2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_40) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_202) begin
        ap_sig_cseq_ST_st23_fsm_22 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st23_fsm_22 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_91) begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_111) begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_128) begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_145) begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_161) begin
        ap_sig_cseq_ST_st6_fsm_5 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st6_fsm_5 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_176) begin
        ap_sig_cseq_ST_st7_fsm_6 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st7_fsm_6 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st7_fsm_6)) begin
        grp_fu_410_ap_start = 1'b1;
    end else begin
        grp_fu_410_ap_start = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        input_0_ce0 = 1'b1;
    end else begin
        input_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        input_1_ce0 = 1'b1;
    end else begin
        input_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st23_fsm_22)) begin
        output_0_address0 = newIndex4_fu_420_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        output_0_address0 = newIndex2_fu_250_p1;
    end else begin
        output_0_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) | (1'b1 == ap_sig_cseq_ST_st23_fsm_22))) begin
        output_0_ce0 = 1'b1;
    end else begin
        output_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st23_fsm_22)) begin
        output_0_d0 = input_load_phi_reg_550;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        output_0_d0 = 1'b0;
    end else begin
        output_0_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond1_fu_218_p2 == 1'b0) & ~(1'b0 == tmp_9_fu_230_p2)) | ((1'b1 == ap_sig_cseq_ST_st23_fsm_22) & ~(1'b0 == tmp_6_reg_556)))) begin
        output_0_we0 = 1'b1;
    end else begin
        output_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st23_fsm_22)) begin
        output_1_address0 = newIndex4_fu_420_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        output_1_address0 = newIndex2_fu_250_p1;
    end else begin
        output_1_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) | (1'b1 == ap_sig_cseq_ST_st23_fsm_22))) begin
        output_1_ce0 = 1'b1;
    end else begin
        output_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st23_fsm_22)) begin
        output_1_d0 = input_load_phi_reg_550;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        output_1_d0 = 1'b0;
    end else begin
        output_1_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond1_fu_218_p2 == 1'b0) & (1'b0 == tmp_9_fu_230_p2)) | ((1'b1 == ap_sig_cseq_ST_st23_fsm_22) & (1'b0 == tmp_6_reg_556)))) begin
        output_1_we0 = 1'b1;
    end else begin
        output_1_we0 = 1'b0;
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
            if (~(exitcond1_fu_218_p2 == 1'b0)) begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end else begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end
        end
        ap_ST_st3_fsm_2 : begin
            if ((1'b0 == tmp_2_fu_278_p2)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end
        end
        ap_ST_st4_fsm_3 : begin
            if ((1'b0 == tmp_5_fu_302_p2)) begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end else begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
            end
        end
        ap_ST_st5_fsm_4 : begin
            if (~(1'b0 == exitcond_fu_325_p2)) begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_st6_fsm_5;
            end
        end
        ap_ST_st6_fsm_5 : begin
            ap_NS_fsm = ap_ST_st7_fsm_6;
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
            ap_NS_fsm = ap_ST_st5_fsm_4;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign I_cast6_fu_259_p1 = I;

assign I_cast_fu_262_p1 = I;

always @ (*) begin
    ap_sig_111 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

always @ (*) begin
    ap_sig_128 = (1'b1 == ap_CS_fsm[ap_const_lv32_3]);
end

always @ (*) begin
    ap_sig_145 = (1'b1 == ap_CS_fsm[ap_const_lv32_4]);
end

always @ (*) begin
    ap_sig_161 = (1'b1 == ap_CS_fsm[ap_const_lv32_5]);
end

always @ (*) begin
    ap_sig_176 = (1'b1 == ap_CS_fsm[ap_const_lv32_6]);
end

always @ (*) begin
    ap_sig_202 = (1'b1 == ap_CS_fsm[ap_const_lv32_16]);
end

always @ (*) begin
    ap_sig_40 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_91 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

assign exitcond1_fu_218_p2 = ((i_reg_144 == ap_const_lv13_1440) ? 1'b1 : 1'b0);

assign exitcond_fu_325_p2 = ((y_cast_fu_321_p1 == I) ? 1'b1 : 1'b0);

assign i_1_fu_224_p2 = (i_reg_144 + ap_const_lv13_1);

assign i_index_fu_360_p2 = (tmp2_reg_519 + x_cast2_reg_493);

assign input_0_address0 = newIndex3_fu_397_p1;

assign input_1_address0 = newIndex3_fu_397_p1;

assign input_load_phi_fu_403_p3 = ((tmp_11_reg_535[0:0] === 1'b1) ? input_0_q0 : input_1_q0);

assign m_1_fu_283_p2 = (m_reg_155 + ap_const_lv5_1);

assign m_cast_fu_274_p1 = m_reg_155;

assign newIndex1_fu_242_p3 = ((tmp_9_fu_230_p2[0:0] === 1'b1) ? i_reg_144 : tmp_10_fu_236_p2);

assign newIndex2_fu_250_p1 = newIndex1_fu_242_p3;

assign newIndex3_fu_397_p1 = newIndex_fu_389_p3;

assign newIndex4_fu_420_p1 = grp_fu_410_p2;

assign newIndex_fu_389_p3 = ((tmp_11_fu_377_p2[0:0] === 1'b1) ? i_index_fu_360_p2 : tmp_12_fu_383_p2);

assign next_mul_fu_265_p2 = (phi_mul_reg_166 + I_cast6_reg_465);

assign o_index_fu_372_p2 = (tmp_6_cast_reg_506 + tmp1_fu_367_p2);

assign tmp1_fu_367_p0 = tmp1_fu_367_p00;

assign tmp1_fu_367_p00 = tmp9_reg_524;

assign tmp1_fu_367_p1 = tmp_cast5_cast_reg_439;

assign tmp1_fu_367_p2 = (tmp1_fu_367_p0 * tmp1_fu_367_p1);

assign tmp2_fu_346_p0 = tmp2_fu_346_p00;

assign tmp2_fu_346_p00 = tmp_fu_336_p2;

assign tmp2_fu_346_p1 = I_cast_reg_470;

assign tmp2_fu_346_p2 = (tmp2_fu_346_p0 * tmp2_fu_346_p1);

assign tmp9_fu_355_p2 = (y_1_cast_fu_351_p1 + tmp_4_reg_488);

assign tmp_10_fu_236_p2 = ($signed(i_reg_144) + $signed(ap_const_lv13_15E0));

assign tmp_11_fu_377_p2 = ((i_index_fu_360_p2 < ap_const_lv12_A20) ? 1'b1 : 1'b0);

assign tmp_12_fu_383_p2 = (i_index_fu_360_p2 + ap_const_lv12_5E0);

assign tmp_1_fu_200_p1 = I[4:0];

assign tmp_2_fu_278_p2 = (($signed(m_cast_fu_274_p1) < $signed(tmp_3_reg_460)) ? 1'b1 : 1'b0);

assign tmp_3_fu_256_p1 = M[5:0];

assign tmp_4_fu_289_p0 = tmp_4_fu_289_p00;

assign tmp_4_fu_289_p00 = m_reg_155;

assign tmp_4_fu_289_p1 = tmp_cast_cast_reg_444;

assign tmp_4_fu_289_p2 = (tmp_4_fu_289_p0 * tmp_4_fu_289_p1);

assign tmp_5_fu_302_p2 = (($signed(x_cast_fu_298_p1) < $signed(I)) ? 1'b1 : 1'b0);

assign tmp_6_cast_fu_313_p1 = x_1_fu_307_p2;

assign tmp_6_fu_415_p2 = ((o_index_reg_529 < ap_const_lv13_A20) ? 1'b1 : 1'b0);

assign tmp_9_fu_230_p2 = ((i_reg_144 < ap_const_lv13_A20) ? 1'b1 : 1'b0);

assign tmp_cast5_cast_fu_210_p1 = tmp_s_fu_204_p2;

assign tmp_cast_cast_fu_214_p1 = tmp_s_fu_204_p2;

assign tmp_fu_336_p2 = (y_cast1_fu_317_p1 + phi_mul_reg_166);

assign tmp_s_fu_204_p2 = (ap_const_lv5_2 + tmp_1_fu_200_p1);

assign x_1_fu_307_p2 = (x_reg_178 + ap_const_lv5_1);

assign x_cast2_fu_294_p1 = x_reg_178;

assign x_cast_fu_298_p1 = x_reg_178;

assign y_1_cast_fu_351_p1 = y_1_fu_330_p2;

assign y_1_fu_330_p2 = (y_reg_189 + ap_const_lv5_1);

assign y_cast1_fu_317_p1 = y_reg_189;

assign y_cast_fu_321_p1 = y_reg_189;

always @ (posedge ap_clk) begin
    tmp_cast5_cast_reg_439[12:5] <= 8'b00000000;
    tmp_cast_cast_reg_444[8:5] <= 4'b0000;
    I_cast6_reg_465[7:6] <= 2'b00;
    I_cast_reg_470[11:6] <= 6'b000000;
    x_cast2_reg_493[11:5] <= 7'b0000000;
    tmp_6_cast_reg_506[12:5] <= 8'b00000000;
end

endmodule //dut_pad
