// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="dut,hls_ip_2016_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=9.789400,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=220,HLS_SYN_DSP=17,HLS_SYN_FF=2447,HLS_SYN_LUT=3993}" *)

module dut (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        strm_in_V_dout,
        strm_in_V_empty_n,
        strm_in_V_read,
        strm_out_V_din,
        strm_out_V_full_n,
        strm_out_V_write
);

parameter    ap_ST_st1_fsm_0 = 10'b1;
parameter    ap_ST_st2_fsm_1 = 10'b10;
parameter    ap_ST_st3_fsm_2 = 10'b100;
parameter    ap_ST_st4_fsm_3 = 10'b1000;
parameter    ap_ST_st5_fsm_4 = 10'b10000;
parameter    ap_ST_st6_fsm_5 = 10'b100000;
parameter    ap_ST_st7_fsm_6 = 10'b1000000;
parameter    ap_ST_st8_fsm_7 = 10'b10000000;
parameter    ap_ST_st9_fsm_8 = 10'b100000000;
parameter    ap_ST_st10_fsm_9 = 10'b1000000000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_9 = 32'b1001;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_8 = 32'b1000;
parameter    ap_const_lv12_0 = 12'b000000000000;
parameter    ap_const_lv12_C00 = 12'b110000000000;
parameter    ap_const_lv12_1 = 12'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] strm_in_V_dout;
input   strm_in_V_empty_n;
output   strm_in_V_read;
output  [31:0] strm_out_V_din;
input   strm_out_V_full_n;
output   strm_out_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg strm_in_V_read;
reg strm_out_V_write;

(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_25;
reg    strm_in_V_blk_n;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_46;
wire   [0:0] exitcond_fu_132_p2;
reg    strm_out_V_blk_n;
reg    ap_sig_cseq_ST_st10_fsm_9;
reg    ap_sig_58;
wire   [11:0] i_1_fu_138_p2;
reg    ap_sig_64;
wire   [0:0] grp_dut_mlp_xcel_fu_110_ap_return;
reg   [0:0] p_0_reg_161;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_74;
wire    grp_dut_mlp_xcel_fu_110_ap_done;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_87;
wire   [31:0] grp_fu_129_p1;
reg   [31:0] output_reg_171;
reg    ap_sig_cseq_ST_st9_fsm_8;
reg    ap_sig_96;
reg   [12:0] input_address0;
reg    input_ce0;
reg    input_we0;
wire   [31:0] input_q0;
wire    grp_dut_mlp_xcel_fu_110_ap_start;
wire    grp_dut_mlp_xcel_fu_110_ap_idle;
wire    grp_dut_mlp_xcel_fu_110_ap_ready;
wire   [12:0] grp_dut_mlp_xcel_fu_110_input_r_address0;
wire    grp_dut_mlp_xcel_fu_110_input_r_ce0;
reg   [11:0] i_reg_99;
reg    ap_reg_grp_dut_mlp_xcel_fu_110_ap_start;
wire   [63:0] tmp_s_fu_144_p1;
wire   [31:0] grp_fu_129_p0;
reg   [9:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 10'b1;
#0 ap_reg_grp_dut_mlp_xcel_fu_110_ap_start = 1'b0;
end

dut_mlp_xcel_mem_conv1 #(
    .DataWidth( 32 ),
    .AddressRange( 4704 ),
    .AddressWidth( 13 ))
input_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(input_address0),
    .ce0(input_ce0),
    .we0(input_we0),
    .d0(strm_in_V_dout),
    .q0(input_q0)
);

dut_mlp_xcel grp_dut_mlp_xcel_fu_110(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_dut_mlp_xcel_fu_110_ap_start),
    .ap_done(grp_dut_mlp_xcel_fu_110_ap_done),
    .ap_idle(grp_dut_mlp_xcel_fu_110_ap_idle),
    .ap_ready(grp_dut_mlp_xcel_fu_110_ap_ready),
    .input_r_address0(grp_dut_mlp_xcel_fu_110_input_r_address0),
    .input_r_ce0(grp_dut_mlp_xcel_fu_110_input_r_ce0),
    .input_r_q0(input_q0),
    .ap_return(grp_dut_mlp_xcel_fu_110_ap_return)
);

dut_uitofp_32ns_32_6 #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
dut_uitofp_32ns_32_6_U27(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_129_p0),
    .ce(1'b1),
    .dout(grp_fu_129_p1)
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
        ap_reg_grp_dut_mlp_xcel_fu_110_ap_start <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~ap_sig_64 & ~(exitcond_fu_132_p2 == 1'b0))) begin
            ap_reg_grp_dut_mlp_xcel_fu_110_ap_start <= 1'b1;
        end else if ((1'b1 == grp_dut_mlp_xcel_fu_110_ap_ready)) begin
            ap_reg_grp_dut_mlp_xcel_fu_110_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond_fu_132_p2 == 1'b0) & ~ap_sig_64)) begin
        i_reg_99 <= i_1_fu_138_p2;
    end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        i_reg_99 <= ap_const_lv12_0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st9_fsm_8)) begin
        output_reg_171 <= grp_fu_129_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(1'b0 == grp_dut_mlp_xcel_fu_110_ap_done))) begin
        p_0_reg_161 <= grp_dut_mlp_xcel_fu_110_ap_return;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st10_fsm_9) & ~(strm_out_V_full_n == 1'b0))) begin
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
    if (((1'b1 == ap_sig_cseq_ST_st10_fsm_9) & ~(strm_out_V_full_n == 1'b0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_58) begin
        ap_sig_cseq_ST_st10_fsm_9 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st10_fsm_9 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_25) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_46) begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_74) begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_87) begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_96) begin
        ap_sig_cseq_ST_st9_fsm_8 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st9_fsm_8 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond_fu_132_p2 == 1'b0))) begin
        input_address0 = tmp_s_fu_144_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        input_address0 = grp_dut_mlp_xcel_fu_110_input_r_address0;
    end else begin
        input_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond_fu_132_p2 == 1'b0) & ~ap_sig_64)) begin
        input_ce0 = 1'b1;
    end else if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        input_ce0 = grp_dut_mlp_xcel_fu_110_input_r_ce0;
    end else begin
        input_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond_fu_132_p2 == 1'b0) & ~ap_sig_64)) begin
        input_we0 = 1'b1;
    end else begin
        input_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond_fu_132_p2 == 1'b0))) begin
        strm_in_V_blk_n = strm_in_V_empty_n;
    end else begin
        strm_in_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond_fu_132_p2 == 1'b0) & ~ap_sig_64)) begin
        strm_in_V_read = 1'b1;
    end else begin
        strm_in_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st10_fsm_9)) begin
        strm_out_V_blk_n = strm_out_V_full_n;
    end else begin
        strm_out_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st10_fsm_9) & ~(strm_out_V_full_n == 1'b0))) begin
        strm_out_V_write = 1'b1;
    end else begin
        strm_out_V_write = 1'b0;
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
            if (((exitcond_fu_132_p2 == 1'b0) & ~ap_sig_64)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else if ((~ap_sig_64 & ~(exitcond_fu_132_p2 == 1'b0))) begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end else begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end
        end
        ap_ST_st3_fsm_2 : begin
            if (~(1'b0 == grp_dut_mlp_xcel_fu_110_ap_done)) begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        end
        ap_ST_st4_fsm_3 : begin
            ap_NS_fsm = ap_ST_st5_fsm_4;
        end
        ap_ST_st5_fsm_4 : begin
            ap_NS_fsm = ap_ST_st6_fsm_5;
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
            if (~(strm_out_V_full_n == 1'b0)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st10_fsm_9;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

always @ (*) begin
    ap_sig_25 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_46 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

always @ (*) begin
    ap_sig_58 = (1'b1 == ap_CS_fsm[ap_const_lv32_9]);
end

always @ (*) begin
    ap_sig_64 = ((exitcond_fu_132_p2 == 1'b0) & (strm_in_V_empty_n == 1'b0));
end

always @ (*) begin
    ap_sig_74 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

always @ (*) begin
    ap_sig_87 = (1'b1 == ap_CS_fsm[ap_const_lv32_3]);
end

always @ (*) begin
    ap_sig_96 = (1'b1 == ap_CS_fsm[ap_const_lv32_8]);
end

assign exitcond_fu_132_p2 = ((i_reg_99 == ap_const_lv12_C00) ? 1'b1 : 1'b0);

assign grp_dut_mlp_xcel_fu_110_ap_start = ap_reg_grp_dut_mlp_xcel_fu_110_ap_start;

assign grp_fu_129_p0 = p_0_reg_161;

assign i_1_fu_138_p2 = (i_reg_99 + ap_const_lv12_1);

assign strm_out_V_din = output_reg_171;

assign tmp_s_fu_144_p1 = i_reg_99;

endmodule //dut
