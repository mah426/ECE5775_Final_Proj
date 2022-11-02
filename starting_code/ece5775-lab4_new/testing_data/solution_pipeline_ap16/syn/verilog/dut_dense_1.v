// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dut_dense_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        input_r_address0,
        input_r_ce0,
        input_r_q0,
        input1_address0,
        input1_ce0,
        input1_q0,
        input2_address0,
        input2_ce0,
        input2_q0,
        input3_address0,
        input3_ce0,
        input3_q0,
        input4_address0,
        input4_ce0,
        input4_q0,
        input5_address0,
        input5_ce0,
        input5_q0,
        input6_address0,
        input6_ce0,
        input6_q0,
        input7_address0,
        input7_ce0,
        input7_q0,
        input8_address0,
        input8_ce0,
        input8_q0,
        input9_address0,
        input9_ce0,
        input9_q0,
        input10_address0,
        input10_ce0,
        input10_q0,
        input11_address0,
        input11_ce0,
        input11_q0,
        input12_address0,
        input12_ce0,
        input12_q0,
        input13_address0,
        input13_ce0,
        input13_q0,
        input14_address0,
        input14_ce0,
        input14_q0,
        input15_address0,
        input15_ce0,
        input15_q0,
        output_r_address0,
        output_r_ce0,
        output_r_we0,
        output_r_d0
);

parameter    ap_ST_st1_fsm_0 = 9'b1;
parameter    ap_ST_st2_fsm_1 = 9'b10;
parameter    ap_ST_st3_fsm_2 = 9'b100;
parameter    ap_ST_pp0_stg0_fsm_3 = 9'b1000;
parameter    ap_ST_pp0_stg1_fsm_4 = 9'b10000;
parameter    ap_ST_pp0_stg2_fsm_5 = 9'b100000;
parameter    ap_ST_pp0_stg3_fsm_6 = 9'b1000000;
parameter    ap_ST_pp0_stg4_fsm_7 = 9'b10000000;
parameter    ap_ST_st37_fsm_8 = 9'b100000000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv32_7 = 32'b111;
parameter    ap_const_lv9_0 = 9'b000000000;
parameter    ap_const_lv32_8 = 32'b1000;
parameter    ap_const_lv32_6 = 32'b110;
parameter    ap_const_lv10_0 = 10'b0000000000;
parameter    ap_const_lv20_0 = 20'b00000000000000000000;
parameter    ap_const_lv32_C4000000 = 32'b11000100000000000000000000000000;
parameter    ap_const_lv32_40000000 = 32'b1000000000000000000000000000000;
parameter    ap_const_lv32_3D800000 = 32'b111101100000000000000000000000;
parameter    ap_const_lv9_100 = 9'b100000000;
parameter    ap_const_lv9_1 = 9'b1;
parameter    ap_const_lv10_200 = 10'b1000000000;
parameter    ap_const_lv10_1 = 10'b1;
parameter    ap_const_lv8_0 = 8'b00000000;
parameter    ap_const_lv20_653 = 20'b11001010011;
parameter    ap_const_lv32_13 = 32'b10011;
parameter    ap_const_lv10_144 = 10'b101000100;
parameter    ap_const_lv10_2BC = 10'b1010111100;
parameter    ap_const_lv32_17 = 32'b10111;
parameter    ap_const_lv32_1E = 32'b11110;
parameter    ap_const_lv8_FF = 8'b11111111;
parameter    ap_const_lv23_0 = 23'b00000000000000000000000;
parameter    ap_const_lv5_2 = 5'b10;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] input_r_address0;
output   input_r_ce0;
input  [0:0] input_r_q0;
output  [8:0] input1_address0;
output   input1_ce0;
input  [0:0] input1_q0;
output  [8:0] input2_address0;
output   input2_ce0;
input  [0:0] input2_q0;
output  [8:0] input3_address0;
output   input3_ce0;
input  [0:0] input3_q0;
output  [8:0] input4_address0;
output   input4_ce0;
input  [0:0] input4_q0;
output  [8:0] input5_address0;
output   input5_ce0;
input  [0:0] input5_q0;
output  [8:0] input6_address0;
output   input6_ce0;
input  [0:0] input6_q0;
output  [8:0] input7_address0;
output   input7_ce0;
input  [0:0] input7_q0;
output  [8:0] input8_address0;
output   input8_ce0;
input  [0:0] input8_q0;
output  [8:0] input9_address0;
output   input9_ce0;
input  [0:0] input9_q0;
output  [8:0] input10_address0;
output   input10_ce0;
input  [0:0] input10_q0;
output  [8:0] input11_address0;
output   input11_ce0;
input  [0:0] input11_q0;
output  [8:0] input12_address0;
output   input12_ce0;
input  [0:0] input12_q0;
output  [8:0] input13_address0;
output   input13_ce0;
input  [0:0] input13_q0;
output  [8:0] input14_address0;
output   input14_ce0;
input  [0:0] input14_q0;
output  [8:0] input15_address0;
output   input15_ce0;
input  [0:0] input15_q0;
output  [8:0] output_r_address0;
output   output_r_ce0;
output   output_r_we0;
output  [0:0] output_r_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg input_r_ce0;
reg input1_ce0;
reg input2_ce0;
reg input3_ce0;
reg input4_ce0;
reg input5_ce0;
reg input6_ce0;
reg input7_ce0;
reg input8_ce0;
reg input9_ce0;
reg input10_ce0;
reg input11_ce0;
reg input12_ce0;
reg input13_ce0;
reg input14_ce0;
reg input15_ce0;
reg output_r_ce0;
reg output_r_we0;

(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_26;
wire   [7:0] b_fc1_address0;
reg    b_fc1_ce0;
wire   [31:0] b_fc1_q0;
wire   [16:0] w_fc1_address0;
reg    w_fc1_ce0;
wire   [0:0] w_fc1_q0;
reg   [31:0] one_out_reg_355;
reg   [9:0] m_reg_367;
reg   [19:0] phi_mul_reg_378;
wire   [31:0] grp_fu_389_p2;
reg   [31:0] reg_409;
reg    ap_sig_cseq_ST_pp0_stg1_fsm_4;
reg    ap_sig_161;
reg    ap_reg_ppiten_pp0_it4;
reg    ap_reg_ppiten_pp0_it0;
reg    ap_reg_ppiten_pp0_it1;
reg    ap_reg_ppiten_pp0_it2;
reg    ap_reg_ppiten_pp0_it3;
reg    ap_reg_ppiten_pp0_it5;
reg    ap_reg_ppiten_pp0_it6;
reg   [0:0] ifzero_reg_762;
reg   [0:0] ap_reg_ppstg_ifzero_reg_762_pp0_iter4;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_3;
reg    ap_sig_189;
reg   [0:0] ap_reg_ppstg_ifzero_reg_762_pp0_iter5;
wire   [8:0] n_1_fu_421_p2;
reg   [8:0] n_1_reg_633;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_204;
wire   [0:0] exitcond1_fu_415_p2;
reg   [8:0] output_addr_reg_643;
wire   [16:0] n_cast4_fu_433_p1;
reg   [16:0] n_cast4_reg_648;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_220;
reg   [31:0] b_fc1_load_reg_653;
wire   [0:0] exitcond_fu_437_p2;
reg   [0:0] exitcond_reg_658;
reg   [0:0] ap_reg_ppstg_exitcond_reg_658_pp0_iter1;
reg   [0:0] ap_reg_ppstg_exitcond_reg_658_pp0_iter2;
wire   [9:0] m_3_fu_443_p2;
reg   [9:0] m_3_reg_662;
wire   [19:0] next_mul_fu_466_p2;
reg   [19:0] next_mul_reg_667;
reg   [0:0] tmp_25_reg_672;
wire   [0:0] ifzero_fu_525_p2;
reg   [0:0] ap_reg_ppstg_ifzero_reg_762_pp0_iter1;
reg   [0:0] ap_reg_ppstg_ifzero_reg_762_pp0_iter2;
reg   [0:0] ap_reg_ppstg_ifzero_reg_762_pp0_iter3;
reg   [0:0] ap_reg_ppstg_ifzero_reg_762_pp0_iter6;
wire   [0:0] tmp_11_fu_578_p2;
reg   [0:0] tmp_11_reg_766;
reg    ap_sig_cseq_ST_pp0_stg2_fsm_5;
reg    ap_sig_293;
wire   [31:0] grp_fu_401_p1;
reg   [31:0] tmp_13_reg_776;
reg   [31:0] one_out_1_reg_781;
wire   [31:0] grp_fu_395_p2;
reg   [31:0] tmp_8_reg_787;
reg   [31:0] one_out_2_reg_792;
wire   [0:0] tmp_18_fu_624_p2;
reg   [0:0] tmp_18_reg_797;
reg    ap_sig_cseq_ST_pp0_stg4_fsm_7;
reg    ap_sig_325;
reg   [8:0] n_reg_343;
reg    ap_sig_cseq_ST_st37_fsm_8;
reg    ap_sig_342;
reg   [31:0] one_out_phi_fu_359_p4;
reg    ap_sig_cseq_ST_pp0_stg3_fsm_6;
reg    ap_sig_350;
reg   [9:0] m_phi_fu_371_p4;
reg   [19:0] phi_mul_phi_fu_382_p4;
wire   [63:0] tmp_4_fu_427_p1;
wire   [63:0] newIndex8_fu_500_p1;
wire   [63:0] tmp_10_fu_520_p1;
reg   [31:0] grp_fu_389_p0;
reg   [31:0] grp_fu_389_p1;
reg   [31:0] grp_fu_395_p0;
reg   [31:0] grp_fu_395_p1;
wire   [31:0] grp_fu_401_p0;
wire   [8:0] tmp_22_fu_449_p1;
wire   [16:0] tmp_9_fu_453_p3;
wire   [0:0] tmp_6_fu_480_p2;
wire   [9:0] tmp_7_fu_486_p2;
wire   [9:0] newIndex_fu_492_p3;
wire   [16:0] w_index_fu_461_p2;
wire   [31:0] tmp_15_fu_534_p17;
wire   [0:0] tmp_15_fu_534_p18;
wire   [0:0] tmp1_fu_572_p2;
wire   [31:0] biased_to_int_fu_588_p1;
wire   [7:0] tmp_fu_592_p4;
wire   [22:0] tmp_26_fu_602_p1;
wire   [0:0] notrhs_fu_612_p2;
wire   [0:0] notlhs_fu_606_p2;
wire   [0:0] tmp_16_fu_618_p2;
wire   [0:0] tmp_17_fu_404_p2;
reg   [8:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 9'b1;
#0 ap_reg_ppiten_pp0_it4 = 1'b0;
#0 ap_reg_ppiten_pp0_it0 = 1'b0;
#0 ap_reg_ppiten_pp0_it1 = 1'b0;
#0 ap_reg_ppiten_pp0_it2 = 1'b0;
#0 ap_reg_ppiten_pp0_it3 = 1'b0;
#0 ap_reg_ppiten_pp0_it5 = 1'b0;
#0 ap_reg_ppiten_pp0_it6 = 1'b0;
end

dut_dense_1_b_fc1 #(
    .DataWidth( 32 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
b_fc1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(b_fc1_address0),
    .ce0(b_fc1_ce0),
    .q0(b_fc1_q0)
);

dut_dense_1_w_fc1 #(
    .DataWidth( 1 ),
    .AddressRange( 131072 ),
    .AddressWidth( 17 ))
w_fc1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(w_fc1_address0),
    .ce0(w_fc1_ce0),
    .q0(w_fc1_q0)
);

dut_fadd_32ns_32ns_32_5_full_dsp #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
dut_fadd_32ns_32ns_32_5_full_dsp_U176(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_389_p0),
    .din1(grp_fu_389_p1),
    .ce(1'b1),
    .dout(grp_fu_389_p2)
);

dut_fmul_32ns_32ns_32_4_max_dsp #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
dut_fmul_32ns_32ns_32_4_max_dsp_U177(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_395_p0),
    .din1(grp_fu_395_p1),
    .ce(1'b1),
    .dout(grp_fu_395_p2)
);

dut_sitofp_32ns_32_6 #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
dut_sitofp_32ns_32_6_U178(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_401_p0),
    .ce(1'b1),
    .dout(grp_fu_401_p1)
);

dut_fcmp_32ns_32ns_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 1 ))
dut_fcmp_32ns_32ns_1_1_U179(
    .din0(reg_409),
    .din1(ap_const_lv32_0),
    .opcode(ap_const_lv5_2),
    .dout(tmp_17_fu_404_p2)
);

dut_mux_16to1_sel32_1_1 #(
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
    .din9_WIDTH( 1 ),
    .din10_WIDTH( 1 ),
    .din11_WIDTH( 1 ),
    .din12_WIDTH( 1 ),
    .din13_WIDTH( 1 ),
    .din14_WIDTH( 1 ),
    .din15_WIDTH( 1 ),
    .din16_WIDTH( 1 ),
    .din17_WIDTH( 32 ),
    .dout_WIDTH( 1 ))
dut_mux_16to1_sel32_1_1_U180(
    .din1(input_r_q0),
    .din2(input1_q0),
    .din3(input2_q0),
    .din4(input3_q0),
    .din5(input4_q0),
    .din6(input5_q0),
    .din7(input6_q0),
    .din8(input7_q0),
    .din9(input8_q0),
    .din10(input9_q0),
    .din11(input10_q0),
    .din12(input11_q0),
    .din13(input12_q0),
    .din14(input13_q0),
    .din15(input14_q0),
    .din16(input15_q0),
    .din17(tmp_15_fu_534_p17),
    .dout(tmp_15_fu_534_p18)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3) & ~(1'b0 == exitcond_fu_437_p2))) begin
            ap_reg_ppiten_pp0_it0 <= 1'b0;
        end else if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
            ap_reg_ppiten_pp0_it0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= 1'b0;
    end else begin
        if (((1'b0 == exitcond_reg_658) & (1'b1 == ap_sig_cseq_ST_pp0_stg4_fsm_7))) begin
            ap_reg_ppiten_pp0_it1 <= 1'b1;
        end else if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) | ((1'b1 == ap_sig_cseq_ST_pp0_stg4_fsm_7) & ~(1'b0 == exitcond_reg_658)))) begin
            ap_reg_ppiten_pp0_it1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it2 <= 1'b0;
    end else begin
        if ((1'b1 == ap_sig_cseq_ST_pp0_stg4_fsm_7)) begin
            ap_reg_ppiten_pp0_it2 <= ap_reg_ppiten_pp0_it1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it3 <= 1'b0;
    end else begin
        if ((1'b1 == ap_sig_cseq_ST_pp0_stg4_fsm_7)) begin
            ap_reg_ppiten_pp0_it3 <= ap_reg_ppiten_pp0_it2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it4 <= 1'b0;
    end else begin
        if ((1'b1 == ap_sig_cseq_ST_pp0_stg4_fsm_7)) begin
            ap_reg_ppiten_pp0_it4 <= ap_reg_ppiten_pp0_it3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it5 <= 1'b0;
    end else begin
        if ((1'b1 == ap_sig_cseq_ST_pp0_stg4_fsm_7)) begin
            ap_reg_ppiten_pp0_it5 <= ap_reg_ppiten_pp0_it4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it6 <= 1'b0;
    end else begin
        if ((1'b1 == ap_sig_cseq_ST_pp0_stg4_fsm_7)) begin
            ap_reg_ppiten_pp0_it6 <= ap_reg_ppiten_pp0_it5;
        end else if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
            ap_reg_ppiten_pp0_it6 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it1) & (1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3) & (1'b0 == exitcond_reg_658))) begin
        m_reg_367 <= m_3_reg_662;
    end else if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        m_reg_367 <= ap_const_lv10_0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st37_fsm_8)) begin
        n_reg_343 <= n_1_reg_633;
    end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        n_reg_343 <= ap_const_lv9_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it2) & (1'b0 == ap_reg_ppstg_exitcond_reg_658_pp0_iter2) & (1'b1 == ap_sig_cseq_ST_pp0_stg3_fsm_6))) begin
        one_out_reg_355 <= one_out_1_reg_781;
    end else if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        one_out_reg_355 <= ap_const_lv32_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it1) & (1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3) & (1'b0 == exitcond_reg_658))) begin
        phi_mul_reg_378 <= next_mul_reg_667;
    end else if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        phi_mul_reg_378 <= ap_const_lv20_0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3)) begin
        ap_reg_ppstg_exitcond_reg_658_pp0_iter1 <= exitcond_reg_658;
        ap_reg_ppstg_exitcond_reg_658_pp0_iter2 <= ap_reg_ppstg_exitcond_reg_658_pp0_iter1;
        ap_reg_ppstg_ifzero_reg_762_pp0_iter1 <= ifzero_reg_762;
        ap_reg_ppstg_ifzero_reg_762_pp0_iter2 <= ap_reg_ppstg_ifzero_reg_762_pp0_iter1;
        ap_reg_ppstg_ifzero_reg_762_pp0_iter3 <= ap_reg_ppstg_ifzero_reg_762_pp0_iter2;
        ap_reg_ppstg_ifzero_reg_762_pp0_iter4 <= ap_reg_ppstg_ifzero_reg_762_pp0_iter3;
        ap_reg_ppstg_ifzero_reg_762_pp0_iter5 <= ap_reg_ppstg_ifzero_reg_762_pp0_iter4;
        ap_reg_ppstg_ifzero_reg_762_pp0_iter6 <= ap_reg_ppstg_ifzero_reg_762_pp0_iter5;
        exitcond_reg_658 <= exitcond_fu_437_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        b_fc1_load_reg_653 <= b_fc1_q0;
        n_cast4_reg_648[8 : 0] <= n_cast4_fu_433_p1[8 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3) & (1'b0 == exitcond_fu_437_p2))) begin
        ifzero_reg_762 <= ifzero_fu_525_p2;
        tmp_25_reg_672 <= phi_mul_phi_fu_382_p4[ap_const_lv32_13];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it0) & (1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3))) begin
        m_3_reg_662 <= m_3_fu_443_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        n_1_reg_633 <= n_1_fu_421_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it0) & (1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3) & (1'b0 == exitcond_fu_437_p2))) begin
        next_mul_reg_667 <= next_mul_fu_466_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it2) & (1'b1 == ap_sig_cseq_ST_pp0_stg2_fsm_5) & (1'b0 == ap_reg_ppstg_exitcond_reg_658_pp0_iter2))) begin
        one_out_1_reg_781 <= grp_fu_389_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it5) & ~(ap_reg_ppstg_ifzero_reg_762_pp0_iter4 == 1'b0) & (1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3))) begin
        one_out_2_reg_792 <= grp_fu_395_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (1'b0 == exitcond1_fu_415_p2))) begin
        output_addr_reg_643 <= tmp_4_fu_427_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_sig_cseq_ST_pp0_stg1_fsm_4) & (1'b1 == ap_reg_ppiten_pp0_it4) & ~(ap_reg_ppstg_ifzero_reg_762_pp0_iter4 == 1'b0)) | ((1'b1 == ap_reg_ppiten_pp0_it6) & (1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3) & ~(1'b0 == ap_reg_ppstg_ifzero_reg_762_pp0_iter5)))) begin
        reg_409 <= grp_fu_389_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg1_fsm_4) & (1'b0 == exitcond_reg_658))) begin
        tmp_11_reg_766 <= tmp_11_fu_578_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg2_fsm_5) & (1'b0 == ap_reg_ppstg_exitcond_reg_658_pp0_iter1))) begin
        tmp_13_reg_776 <= grp_fu_401_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg1_fsm_4) & ~(1'b0 == ap_reg_ppstg_ifzero_reg_762_pp0_iter6))) begin
        tmp_18_reg_797 <= tmp_18_fu_624_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg1_fsm_4) & (1'b1 == ap_reg_ppiten_pp0_it3) & ~(1'b0 == ap_reg_ppstg_ifzero_reg_762_pp0_iter3))) begin
        tmp_8_reg_787 <= grp_fu_395_p2;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0)) | ((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(1'b0 == exitcond1_fu_415_p2)))) begin
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
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(1'b0 == exitcond1_fu_415_p2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_189) begin
        ap_sig_cseq_ST_pp0_stg0_fsm_3 = 1'b1;
    end else begin
        ap_sig_cseq_ST_pp0_stg0_fsm_3 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_161) begin
        ap_sig_cseq_ST_pp0_stg1_fsm_4 = 1'b1;
    end else begin
        ap_sig_cseq_ST_pp0_stg1_fsm_4 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_293) begin
        ap_sig_cseq_ST_pp0_stg2_fsm_5 = 1'b1;
    end else begin
        ap_sig_cseq_ST_pp0_stg2_fsm_5 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_350) begin
        ap_sig_cseq_ST_pp0_stg3_fsm_6 = 1'b1;
    end else begin
        ap_sig_cseq_ST_pp0_stg3_fsm_6 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_325) begin
        ap_sig_cseq_ST_pp0_stg4_fsm_7 = 1'b1;
    end else begin
        ap_sig_cseq_ST_pp0_stg4_fsm_7 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_26) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_204) begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_342) begin
        ap_sig_cseq_ST_st37_fsm_8 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st37_fsm_8 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_220) begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        b_fc1_ce0 = 1'b1;
    end else begin
        b_fc1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg1_fsm_4) & (1'b1 == ap_reg_ppiten_pp0_it5))) begin
        grp_fu_389_p0 = one_out_2_reg_792;
    end else if (((1'b1 == ap_reg_ppiten_pp0_it3) & (1'b1 == ap_sig_cseq_ST_pp0_stg2_fsm_5))) begin
        grp_fu_389_p0 = tmp_8_reg_787;
    end else if (((1'b1 == ap_reg_ppiten_pp0_it1) & (1'b1 == ap_sig_cseq_ST_pp0_stg3_fsm_6))) begin
        grp_fu_389_p0 = one_out_phi_fu_359_p4;
    end else begin
        grp_fu_389_p0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg1_fsm_4) & (1'b1 == ap_reg_ppiten_pp0_it5))) begin
        grp_fu_389_p1 = b_fc1_load_reg_653;
    end else if (((1'b1 == ap_reg_ppiten_pp0_it3) & (1'b1 == ap_sig_cseq_ST_pp0_stg2_fsm_5))) begin
        grp_fu_389_p1 = ap_const_lv32_C4000000;
    end else if (((1'b1 == ap_reg_ppiten_pp0_it1) & (1'b1 == ap_sig_cseq_ST_pp0_stg3_fsm_6))) begin
        grp_fu_389_p1 = tmp_13_reg_776;
    end else begin
        grp_fu_389_p1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it4) & (1'b1 == ap_sig_cseq_ST_pp0_stg2_fsm_5))) begin
        grp_fu_395_p0 = reg_409;
    end else if (((1'b1 == ap_reg_ppiten_pp0_it2) & (1'b1 == ap_sig_cseq_ST_pp0_stg3_fsm_6))) begin
        grp_fu_395_p0 = one_out_1_reg_781;
    end else begin
        grp_fu_395_p0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it4) & (1'b1 == ap_sig_cseq_ST_pp0_stg2_fsm_5))) begin
        grp_fu_395_p1 = ap_const_lv32_3D800000;
    end else if (((1'b1 == ap_reg_ppiten_pp0_it2) & (1'b1 == ap_sig_cseq_ST_pp0_stg3_fsm_6))) begin
        grp_fu_395_p1 = ap_const_lv32_40000000;
    end else begin
        grp_fu_395_p1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it0) & (1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3))) begin
        input10_ce0 = 1'b1;
    end else begin
        input10_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it0) & (1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3))) begin
        input11_ce0 = 1'b1;
    end else begin
        input11_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it0) & (1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3))) begin
        input12_ce0 = 1'b1;
    end else begin
        input12_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it0) & (1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3))) begin
        input13_ce0 = 1'b1;
    end else begin
        input13_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it0) & (1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3))) begin
        input14_ce0 = 1'b1;
    end else begin
        input14_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it0) & (1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3))) begin
        input15_ce0 = 1'b1;
    end else begin
        input15_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it0) & (1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3))) begin
        input1_ce0 = 1'b1;
    end else begin
        input1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it0) & (1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3))) begin
        input2_ce0 = 1'b1;
    end else begin
        input2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it0) & (1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3))) begin
        input3_ce0 = 1'b1;
    end else begin
        input3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it0) & (1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3))) begin
        input4_ce0 = 1'b1;
    end else begin
        input4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it0) & (1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3))) begin
        input5_ce0 = 1'b1;
    end else begin
        input5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it0) & (1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3))) begin
        input6_ce0 = 1'b1;
    end else begin
        input6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it0) & (1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3))) begin
        input7_ce0 = 1'b1;
    end else begin
        input7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it0) & (1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3))) begin
        input8_ce0 = 1'b1;
    end else begin
        input8_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it0) & (1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3))) begin
        input9_ce0 = 1'b1;
    end else begin
        input9_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it0) & (1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3))) begin
        input_r_ce0 = 1'b1;
    end else begin
        input_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it1) & (1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3) & (1'b0 == exitcond_reg_658))) begin
        m_phi_fu_371_p4 = m_3_reg_662;
    end else begin
        m_phi_fu_371_p4 = m_reg_367;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it2) & (1'b0 == ap_reg_ppstg_exitcond_reg_658_pp0_iter2) & (1'b1 == ap_sig_cseq_ST_pp0_stg3_fsm_6))) begin
        one_out_phi_fu_359_p4 = one_out_1_reg_781;
    end else begin
        one_out_phi_fu_359_p4 = one_out_reg_355;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it6) & (1'b1 == ap_sig_cseq_ST_pp0_stg2_fsm_5))) begin
        output_r_ce0 = 1'b1;
    end else begin
        output_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it6) & (1'b1 == ap_sig_cseq_ST_pp0_stg2_fsm_5) & ~(1'b0 == ap_reg_ppstg_ifzero_reg_762_pp0_iter6))) begin
        output_r_we0 = 1'b1;
    end else begin
        output_r_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it1) & (1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3) & (1'b0 == exitcond_reg_658))) begin
        phi_mul_phi_fu_382_p4 = next_mul_reg_667;
    end else begin
        phi_mul_phi_fu_382_p4 = phi_mul_reg_378;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it0) & (1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_3))) begin
        w_fc1_ce0 = 1'b1;
    end else begin
        w_fc1_ce0 = 1'b0;
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
            if (~(1'b0 == exitcond1_fu_415_p2)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        end
        ap_ST_st3_fsm_2 : begin
            ap_NS_fsm = ap_ST_pp0_stg0_fsm_3;
        end
        ap_ST_pp0_stg0_fsm_3 : begin
            if (~((1'b1 == ap_reg_ppiten_pp0_it0) & ~(1'b0 == exitcond_fu_437_p2) & ~(1'b1 == ap_reg_ppiten_pp0_it1))) begin
                ap_NS_fsm = ap_ST_pp0_stg1_fsm_4;
            end else begin
                ap_NS_fsm = ap_ST_st37_fsm_8;
            end
        end
        ap_ST_pp0_stg1_fsm_4 : begin
            ap_NS_fsm = ap_ST_pp0_stg2_fsm_5;
        end
        ap_ST_pp0_stg2_fsm_5 : begin
            if (~((1'b1 == ap_reg_ppiten_pp0_it6) & (1'b1 == ap_sig_cseq_ST_pp0_stg2_fsm_5) & ~(1'b1 == ap_reg_ppiten_pp0_it5))) begin
                ap_NS_fsm = ap_ST_pp0_stg3_fsm_6;
            end else begin
                ap_NS_fsm = ap_ST_st37_fsm_8;
            end
        end
        ap_ST_pp0_stg3_fsm_6 : begin
            ap_NS_fsm = ap_ST_pp0_stg4_fsm_7;
        end
        ap_ST_pp0_stg4_fsm_7 : begin
            ap_NS_fsm = ap_ST_pp0_stg0_fsm_3;
        end
        ap_ST_st37_fsm_8 : begin
            ap_NS_fsm = ap_ST_st2_fsm_1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

always @ (*) begin
    ap_sig_161 = (1'b1 == ap_CS_fsm[ap_const_lv32_4]);
end

always @ (*) begin
    ap_sig_189 = (1'b1 == ap_CS_fsm[ap_const_lv32_3]);
end

always @ (*) begin
    ap_sig_204 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

always @ (*) begin
    ap_sig_220 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

always @ (*) begin
    ap_sig_26 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_293 = (1'b1 == ap_CS_fsm[ap_const_lv32_5]);
end

always @ (*) begin
    ap_sig_325 = (1'b1 == ap_CS_fsm[ap_const_lv32_7]);
end

always @ (*) begin
    ap_sig_342 = (1'b1 == ap_CS_fsm[ap_const_lv32_8]);
end

always @ (*) begin
    ap_sig_350 = (1'b1 == ap_CS_fsm[ap_const_lv32_6]);
end

assign b_fc1_address0 = tmp_4_fu_427_p1;

assign biased_to_int_fu_588_p1 = reg_409;

assign exitcond1_fu_415_p2 = ((n_reg_343 == ap_const_lv9_100) ? 1'b1 : 1'b0);

assign exitcond_fu_437_p2 = ((m_phi_fu_371_p4 == ap_const_lv10_200) ? 1'b1 : 1'b0);

assign grp_fu_401_p0 = tmp_11_reg_766;

assign ifzero_fu_525_p2 = ((m_3_fu_443_p2 == ap_const_lv10_200) ? 1'b1 : 1'b0);

assign input10_address0 = newIndex8_fu_500_p1;

assign input11_address0 = newIndex8_fu_500_p1;

assign input12_address0 = newIndex8_fu_500_p1;

assign input13_address0 = newIndex8_fu_500_p1;

assign input14_address0 = newIndex8_fu_500_p1;

assign input15_address0 = newIndex8_fu_500_p1;

assign input1_address0 = newIndex8_fu_500_p1;

assign input2_address0 = newIndex8_fu_500_p1;

assign input3_address0 = newIndex8_fu_500_p1;

assign input4_address0 = newIndex8_fu_500_p1;

assign input5_address0 = newIndex8_fu_500_p1;

assign input6_address0 = newIndex8_fu_500_p1;

assign input7_address0 = newIndex8_fu_500_p1;

assign input8_address0 = newIndex8_fu_500_p1;

assign input9_address0 = newIndex8_fu_500_p1;

assign input_r_address0 = newIndex8_fu_500_p1;

assign m_3_fu_443_p2 = (m_phi_fu_371_p4 + ap_const_lv10_1);

assign n_1_fu_421_p2 = (n_reg_343 + ap_const_lv9_1);

assign n_cast4_fu_433_p1 = n_reg_343;

assign newIndex8_fu_500_p1 = newIndex_fu_492_p3;

assign newIndex_fu_492_p3 = ((tmp_6_fu_480_p2[0:0] === 1'b1) ? m_phi_fu_371_p4 : tmp_7_fu_486_p2);

assign next_mul_fu_466_p2 = (ap_const_lv20_653 + phi_mul_phi_fu_382_p4);

assign notlhs_fu_606_p2 = ((tmp_fu_592_p4 != ap_const_lv8_FF) ? 1'b1 : 1'b0);

assign notrhs_fu_612_p2 = ((tmp_26_fu_602_p1 == ap_const_lv23_0) ? 1'b1 : 1'b0);

assign output_r_address0 = output_addr_reg_643;

assign output_r_d0 = tmp_18_reg_797;

assign tmp1_fu_572_p2 = (tmp_15_fu_534_p18 ^ 1'b1);

assign tmp_10_fu_520_p1 = w_index_fu_461_p2;

assign tmp_11_fu_578_p2 = (w_fc1_q0 ^ tmp1_fu_572_p2);

assign tmp_15_fu_534_p17 = tmp_25_reg_672;

assign tmp_16_fu_618_p2 = (notrhs_fu_612_p2 | notlhs_fu_606_p2);

assign tmp_18_fu_624_p2 = (tmp_16_fu_618_p2 & tmp_17_fu_404_p2);

assign tmp_22_fu_449_p1 = m_phi_fu_371_p4[8:0];

assign tmp_26_fu_602_p1 = biased_to_int_fu_588_p1[22:0];

assign tmp_4_fu_427_p1 = n_reg_343;

assign tmp_6_fu_480_p2 = ((m_phi_fu_371_p4 < ap_const_lv10_144) ? 1'b1 : 1'b0);

assign tmp_7_fu_486_p2 = ($signed(ap_const_lv10_2BC) + $signed(m_phi_fu_371_p4));

assign tmp_9_fu_453_p3 = {{tmp_22_fu_449_p1}, {ap_const_lv8_0}};

assign tmp_fu_592_p4 = {{biased_to_int_fu_588_p1[ap_const_lv32_1E : ap_const_lv32_17]}};

assign w_fc1_address0 = tmp_10_fu_520_p1;

assign w_index_fu_461_p2 = (tmp_9_fu_453_p3 + n_cast4_reg_648);

always @ (posedge ap_clk) begin
    n_cast4_reg_648[16:9] <= 8'b00000000;
end

endmodule //dut_dense_1
