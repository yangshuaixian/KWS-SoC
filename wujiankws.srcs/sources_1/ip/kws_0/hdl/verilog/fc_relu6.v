// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fc_relu6 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        in_stream_V_dout,
        in_stream_V_empty_n,
        in_stream_V_read,
        out_stream_V_din,
        out_stream_V_full_n,
        out_stream_V_write,
        fc_bias1_address0,
        fc_bias1_ce0,
        fc_bias1_q0,
        fc_weights1_address0,
        fc_weights1_ce0,
        fc_weights1_q0
);

parameter    ap_ST_fsm_state1 = 13'd1;
parameter    ap_ST_fsm_pp0_stage0 = 13'd2;
parameter    ap_ST_fsm_state4 = 13'd4;
parameter    ap_ST_fsm_state5 = 13'd8;
parameter    ap_ST_fsm_state6 = 13'd16;
parameter    ap_ST_fsm_pp2_stage0 = 13'd32;
parameter    ap_ST_fsm_pp2_stage1 = 13'd64;
parameter    ap_ST_fsm_pp2_stage2 = 13'd128;
parameter    ap_ST_fsm_pp2_stage3 = 13'd256;
parameter    ap_ST_fsm_pp2_stage4 = 13'd512;
parameter    ap_ST_fsm_state23 = 13'd1024;
parameter    ap_ST_fsm_pp3_stage0 = 13'd2048;
parameter    ap_ST_fsm_state26 = 13'd4096;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] in_stream_V_dout;
input   in_stream_V_empty_n;
output   in_stream_V_read;
output  [31:0] out_stream_V_din;
input   out_stream_V_full_n;
output   out_stream_V_write;
output  [5:0] fc_bias1_address0;
output   fc_bias1_ce0;
input  [31:0] fc_bias1_q0;
output  [11:0] fc_weights1_address0;
output   fc_weights1_ce0;
input  [31:0] fc_weights1_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg in_stream_V_read;
reg out_stream_V_write;
reg fc_bias1_ce0;
reg fc_weights1_ce0;

(* fsm_encoding = "none" *) reg   [12:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [5:0] x_address0;
reg    x_ce0;
reg    x_we0;
wire   [31:0] x_q0;
reg   [5:0] y_address0;
reg    y_ce0;
reg    y_we0;
reg   [31:0] y_d0;
wire   [31:0] y_q0;
reg    in_stream_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln25_reg_516;
reg    out_stream_V_blk_n;
wire    ap_CS_fsm_pp3_stage0;
reg    ap_enable_reg_pp3_iter1;
wire    ap_block_pp3_stage0;
reg   [0:0] icmp_ln50_reg_630;
reg   [5:0] i_0_reg_210;
reg   [11:0] indvar_flatten_reg_233;
reg   [6:0] om1_0_reg_244;
reg   [5:0] im_0_reg_255;
reg   [6:0] om2_0_reg_266;
wire   [0:0] icmp_ln25_fu_299_p2;
wire    ap_block_state2_pp0_stage0_iter0;
reg    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire   [5:0] i_fu_305_p2;
reg   [5:0] i_reg_520;
reg    ap_enable_reg_pp0_iter0;
wire   [6:0] om_fu_322_p2;
wire    ap_CS_fsm_state5;
wire   [0:0] icmp_ln37_fu_333_p2;
reg   [0:0] icmp_ln37_reg_533;
wire    ap_CS_fsm_pp2_stage0;
wire    ap_block_state7_pp2_stage0_iter0;
wire    ap_block_state12_pp2_stage0_iter1;
wire    ap_block_state17_pp2_stage0_iter2;
wire    ap_block_state22_pp2_stage0_iter3;
wire    ap_block_pp2_stage0_11001;
reg   [0:0] icmp_ln37_reg_533_pp2_iter1_reg;
wire   [11:0] add_ln37_fu_339_p2;
reg   [11:0] add_ln37_reg_537;
reg    ap_enable_reg_pp2_iter0;
wire   [5:0] select_ln40_fu_357_p3;
reg   [5:0] select_ln40_reg_542;
wire   [6:0] select_ln40_1_fu_365_p3;
reg   [6:0] select_ln40_1_reg_547;
wire    ap_CS_fsm_pp2_stage1;
wire    ap_block_state8_pp2_stage1_iter0;
wire    ap_block_state13_pp2_stage1_iter1;
wire    ap_block_state18_pp2_stage1_iter2;
wire    ap_block_pp2_stage1_11001;
wire   [63:0] zext_ln40_fu_405_p1;
reg   [63:0] zext_ln40_reg_573;
wire    ap_CS_fsm_pp2_stage4;
wire    ap_block_state11_pp2_stage4_iter0;
wire    ap_block_state16_pp2_stage4_iter1;
wire    ap_block_state21_pp2_stage4_iter2;
wire    ap_block_pp2_stage4_11001;
wire   [31:0] grp_fu_287_p2;
reg   [31:0] y_i_reg_578;
reg   [5:0] y_addr_1_reg_583;
reg   [5:0] y_addr_1_reg_583_pp2_iter1_reg;
reg   [5:0] y_addr_1_reg_583_pp2_iter2_reg;
wire   [5:0] im_fu_409_p2;
reg   [5:0] im_reg_588;
reg    ap_enable_reg_pp2_iter1;
wire   [0:0] icmp_ln38_1_fu_414_p2;
reg   [0:0] icmp_ln38_1_reg_599;
reg   [0:0] icmp_ln38_1_reg_599_pp2_iter2_reg;
reg   [31:0] fc_bias1_load_reg_608;
wire   [31:0] grp_fu_277_p2;
reg   [31:0] tmp_104_reg_613;
wire    ap_CS_fsm_pp2_stage3;
wire    ap_block_state10_pp2_stage3_iter0;
wire    ap_block_state15_pp2_stage3_iter1;
wire    ap_block_state20_pp2_stage3_iter2;
wire    ap_block_pp2_stage3_11001;
wire   [31:0] grp_fu_283_p2;
reg   [31:0] in_var_assign_reg_618;
wire    ap_CS_fsm_pp2_stage2;
wire    ap_block_state9_pp2_stage2_iter0;
wire    ap_block_state14_pp2_stage2_iter1;
wire    ap_block_state19_pp2_stage2_iter2;
wire    ap_block_pp2_stage2_11001;
wire   [0:0] grp_fu_293_p2;
reg   [0:0] tmp_226_reg_625;
reg    ap_enable_reg_pp2_iter2;
wire   [0:0] icmp_ln50_fu_499_p2;
wire    ap_block_state24_pp3_stage0_iter0;
reg    ap_block_state25_pp3_stage0_iter1;
reg    ap_block_pp3_stage0_11001;
wire   [6:0] om_5_fu_505_p2;
reg    ap_enable_reg_pp3_iter0;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
wire    ap_CS_fsm_state6;
wire    ap_block_pp2_stage0_subdone;
reg    ap_condition_pp2_exit_iter0_state7;
wire    ap_block_pp2_stage4_subdone;
reg    ap_enable_reg_pp2_iter3;
wire    ap_CS_fsm_state23;
reg    ap_block_pp3_stage0_subdone;
reg    ap_condition_pp3_exit_iter0_state24;
reg   [5:0] ap_phi_mux_i_0_phi_fu_214_p4;
reg   [6:0] om_0_reg_222;
wire   [0:0] icmp_ln31_fu_316_p2;
wire    ap_CS_fsm_state4;
reg   [11:0] ap_phi_mux_indvar_flatten_phi_fu_237_p4;
wire    ap_block_pp2_stage0;
reg   [6:0] ap_phi_mux_om1_0_phi_fu_248_p4;
reg   [5:0] ap_phi_mux_im_0_phi_fu_259_p4;
wire   [63:0] zext_ln28_fu_311_p1;
wire   [63:0] zext_ln33_fu_328_p1;
wire   [63:0] zext_ln40_3_fu_400_p1;
wire   [63:0] zext_ln40_1_fu_377_p1;
wire    ap_block_pp2_stage4;
wire   [63:0] zext_ln52_fu_511_p1;
reg    ap_block_pp3_stage0_01001;
wire    ap_block_pp2_stage3;
wire   [31:0] select_ln238_17_fu_491_p3;
wire    ap_block_pp2_stage1;
reg   [31:0] grp_fu_293_p1;
wire   [0:0] icmp_ln38_fu_351_p2;
wire   [6:0] om_4_fu_345_p2;
wire   [11:0] tmp_264_fu_382_p3;
wire   [12:0] zext_ln38_fu_373_p1;
wire   [12:0] zext_ln40_2_fu_390_p1;
wire   [12:0] add_ln40_fu_394_p2;
wire   [31:0] bitcast_ln236_fu_419_p1;
wire   [7:0] tmp_225_fu_422_p4;
wire   [22:0] trunc_ln236_fu_432_p1;
wire   [0:0] icmp_ln236_17_fu_442_p2;
wire   [0:0] icmp_ln236_fu_436_p2;
wire   [0:0] or_ln236_fu_448_p2;
wire   [0:0] and_ln236_fu_454_p2;
wire   [0:0] and_ln238_fu_459_p2;
wire   [0:0] xor_ln236_fu_465_p2;
wire   [0:0] and_ln238_17_fu_471_p2;
wire   [0:0] or_ln238_fu_485_p2;
wire   [31:0] select_ln238_fu_477_p3;
reg   [4:0] grp_fu_293_opcode;
wire    ap_block_pp2_stage3_00001;
wire    ap_block_pp2_stage4_00001;
wire    ap_CS_fsm_state26;
reg   [12:0] ap_NS_fsm;
wire    ap_block_pp2_stage1_subdone;
wire    ap_block_pp2_stage2_subdone;
wire    ap_block_pp2_stage3_subdone;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_idle_pp2;
wire    ap_enable_pp2;
reg    ap_idle_pp3;
wire    ap_enable_pp3;

// power-on initialization
initial begin
#0 ap_CS_fsm = 13'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp3_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp2_iter0 = 1'b0;
#0 ap_enable_reg_pp2_iter1 = 1'b0;
#0 ap_enable_reg_pp2_iter2 = 1'b0;
#0 ap_enable_reg_pp3_iter0 = 1'b0;
#0 ap_enable_reg_pp2_iter3 = 1'b0;
end

fc_relu6_x #(
    .DataWidth( 32 ),
    .AddressRange( 40 ),
    .AddressWidth( 6 ))
x_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(x_address0),
    .ce0(x_ce0),
    .we0(x_we0),
    .d0(in_stream_V_dout),
    .q0(x_q0)
);

fc_relu6_y #(
    .DataWidth( 32 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
y_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(y_address0),
    .ce0(y_ce0),
    .we0(y_we0),
    .d0(y_d0),
    .q0(y_q0)
);

kws_fadd_32ns_32ndEe #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
kws_fadd_32ns_32ndEe_U107(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(y_q0),
    .din1(y_i_reg_578),
    .ce(1'b1),
    .dout(grp_fu_277_p2)
);

kws_fadd_32ns_32nbkb #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
kws_fadd_32ns_32nbkb_U108(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(tmp_104_reg_613),
    .din1(fc_bias1_load_reg_608),
    .ce(1'b1),
    .dout(grp_fu_283_p2)
);

kws_fmul_32ns_32ncud #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
kws_fmul_32ns_32ncud_U109(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(x_q0),
    .din1(fc_weights1_q0),
    .ce(1'b1),
    .dout(grp_fu_287_p2)
);

kws_fcmp_32ns_32neOg #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 1 ))
kws_fcmp_32ns_32neOg_U110(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(in_var_assign_reg_618),
    .din1(grp_fu_293_p1),
    .ce(1'b1),
    .opcode(grp_fu_293_opcode),
    .dout(grp_fu_293_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp2_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp2_stage0_subdone) & (1'b1 == ap_condition_pp2_exit_iter0_state7) & (1'b1 == ap_CS_fsm_pp2_stage0))) begin
            ap_enable_reg_pp2_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state6)) begin
            ap_enable_reg_pp2_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp2_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp2_stage4_subdone) & (1'b1 == ap_CS_fsm_pp2_stage4))) begin
            ap_enable_reg_pp2_iter1 <= ap_enable_reg_pp2_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp2_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp2_stage4_subdone) & (1'b1 == ap_CS_fsm_pp2_stage4))) begin
            ap_enable_reg_pp2_iter2 <= ap_enable_reg_pp2_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp2_iter3 <= 1'b0;
    end else begin
        if ((((1'b0 == ap_block_pp2_stage4_subdone) & (1'b1 == ap_CS_fsm_pp2_stage4)) | ((1'b0 == ap_block_pp2_stage0_subdone) & (1'b1 == ap_CS_fsm_pp2_stage0)))) begin
            ap_enable_reg_pp2_iter3 <= ap_enable_reg_pp2_iter2;
        end else if ((1'b1 == ap_CS_fsm_state6)) begin
            ap_enable_reg_pp2_iter3 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp3_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp3_stage0_subdone) & (1'b1 == ap_CS_fsm_pp3_stage0) & (1'b1 == ap_condition_pp3_exit_iter0_state24))) begin
            ap_enable_reg_pp3_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state23)) begin
            ap_enable_reg_pp3_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp3_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp3_stage0_subdone) & (1'b1 == ap_condition_pp3_exit_iter0_state24))) begin
            ap_enable_reg_pp3_iter1 <= (1'b1 ^ ap_condition_pp3_exit_iter0_state24);
        end else if ((1'b0 == ap_block_pp3_stage0_subdone)) begin
            ap_enable_reg_pp3_iter1 <= ap_enable_reg_pp3_iter0;
        end else if ((1'b1 == ap_CS_fsm_state23)) begin
            ap_enable_reg_pp3_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln25_reg_516 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_0_reg_210 <= i_reg_520;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_0_reg_210 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        im_0_reg_255 <= 6'd0;
    end else if (((icmp_ln37_reg_533 == 1'd0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0) & (1'b0 == ap_block_pp2_stage0_11001))) begin
        im_0_reg_255 <= im_reg_588;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        indvar_flatten_reg_233 <= 12'd0;
    end else if (((icmp_ln37_reg_533 == 1'd0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0) & (1'b0 == ap_block_pp2_stage0_11001))) begin
        indvar_flatten_reg_233 <= add_ln37_reg_537;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        om1_0_reg_244 <= 7'd0;
    end else if (((icmp_ln37_reg_533 == 1'd0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0) & (1'b0 == ap_block_pp2_stage0_11001))) begin
        om1_0_reg_244 <= select_ln40_1_reg_547;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        om2_0_reg_266 <= 7'd0;
    end else if (((icmp_ln50_fu_499_p2 == 1'd0) & (1'b0 == ap_block_pp3_stage0_11001) & (1'b1 == ap_CS_fsm_pp3_stage0) & (ap_enable_reg_pp3_iter0 == 1'b1))) begin
        om2_0_reg_266 <= om_5_fu_505_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        om_0_reg_222 <= 7'd0;
    end else if (((icmp_ln31_fu_316_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        om_0_reg_222 <= om_fu_322_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp2_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0) & (1'b0 == ap_block_pp2_stage0_11001))) begin
        add_ln37_reg_537 <= add_ln37_fu_339_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln38_1_reg_599 == 1'd1) & (1'b1 == ap_CS_fsm_pp2_stage1) & (1'b0 == ap_block_pp2_stage1_11001))) begin
        fc_bias1_load_reg_608 <= fc_bias1_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_reg_520 <= i_fu_305_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln25_reg_516 <= icmp_ln25_fu_299_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp2_stage0) & (1'b0 == ap_block_pp2_stage0_11001))) begin
        icmp_ln37_reg_533 <= icmp_ln37_fu_333_p2;
        icmp_ln37_reg_533_pp2_iter1_reg <= icmp_ln37_reg_533;
        icmp_ln38_1_reg_599_pp2_iter2_reg <= icmp_ln38_1_reg_599;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln37_reg_533 == 1'd0) & (1'b1 == ap_CS_fsm_pp2_stage0) & (1'b0 == ap_block_pp2_stage0_11001))) begin
        icmp_ln38_1_reg_599 <= icmp_ln38_1_fu_414_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp3_stage0_11001) & (1'b1 == ap_CS_fsm_pp3_stage0))) begin
        icmp_ln50_reg_630 <= icmp_ln50_fu_499_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln37_reg_533 == 1'd0) & (1'b0 == ap_block_pp2_stage4_11001) & (1'b1 == ap_CS_fsm_pp2_stage4) & (ap_enable_reg_pp2_iter0 == 1'b1))) begin
        im_reg_588 <= im_fu_409_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp2_stage2_11001) & (icmp_ln38_1_reg_599_pp2_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp2_stage2))) begin
        in_var_assign_reg_618 <= grp_fu_283_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln37_fu_333_p2 == 1'd0) & (ap_enable_reg_pp2_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0) & (1'b0 == ap_block_pp2_stage0_11001))) begin
        select_ln40_1_reg_547 <= select_ln40_1_fu_365_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln37_fu_333_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp2_stage0) & (1'b0 == ap_block_pp2_stage0_11001))) begin
        select_ln40_reg_542 <= select_ln40_fu_357_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln37_reg_533_pp2_iter1_reg == 1'd0) & (1'b0 == ap_block_pp2_stage3_11001) & (1'b1 == ap_CS_fsm_pp2_stage3))) begin
        tmp_104_reg_613 <= grp_fu_277_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln38_1_reg_599_pp2_iter2_reg == 1'd1) & (1'b0 == ap_block_pp2_stage4_11001) & (ap_enable_reg_pp2_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage4))) begin
        tmp_226_reg_625 <= grp_fu_293_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln37_reg_533 == 1'd0) & (1'b0 == ap_block_pp2_stage4_11001) & (1'b1 == ap_CS_fsm_pp2_stage4))) begin
        y_addr_1_reg_583 <= zext_ln40_fu_405_p1;
        y_i_reg_578 <= grp_fu_287_p2;
        zext_ln40_reg_573[6 : 0] <= zext_ln40_fu_405_p1[6 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp2_stage4_11001) & (1'b1 == ap_CS_fsm_pp2_stage4))) begin
        y_addr_1_reg_583_pp2_iter1_reg <= y_addr_1_reg_583;
        y_addr_1_reg_583_pp2_iter2_reg <= y_addr_1_reg_583_pp2_iter1_reg;
    end
end

always @ (*) begin
    if ((icmp_ln25_fu_299_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln37_fu_333_p2 == 1'd1)) begin
        ap_condition_pp2_exit_iter0_state7 = 1'b1;
    end else begin
        ap_condition_pp2_exit_iter0_state7 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln50_fu_499_p2 == 1'd1)) begin
        ap_condition_pp3_exit_iter0_state24 = 1'b1;
    end else begin
        ap_condition_pp3_exit_iter0_state24 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state26) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp2_iter3 == 1'b0) & (ap_enable_reg_pp2_iter2 == 1'b0) & (ap_enable_reg_pp2_iter1 == 1'b0) & (ap_enable_reg_pp2_iter0 == 1'b0))) begin
        ap_idle_pp2 = 1'b1;
    end else begin
        ap_idle_pp2 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp3_iter1 == 1'b0) & (ap_enable_reg_pp3_iter0 == 1'b0))) begin
        ap_idle_pp3 = 1'b1;
    end else begin
        ap_idle_pp3 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln25_reg_516 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_i_0_phi_fu_214_p4 = i_reg_520;
    end else begin
        ap_phi_mux_i_0_phi_fu_214_p4 = i_0_reg_210;
    end
end

always @ (*) begin
    if (((icmp_ln37_reg_533 == 1'd0) & (1'b0 == ap_block_pp2_stage0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0))) begin
        ap_phi_mux_im_0_phi_fu_259_p4 = im_reg_588;
    end else begin
        ap_phi_mux_im_0_phi_fu_259_p4 = im_0_reg_255;
    end
end

always @ (*) begin
    if (((icmp_ln37_reg_533 == 1'd0) & (1'b0 == ap_block_pp2_stage0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0))) begin
        ap_phi_mux_indvar_flatten_phi_fu_237_p4 = add_ln37_reg_537;
    end else begin
        ap_phi_mux_indvar_flatten_phi_fu_237_p4 = indvar_flatten_reg_233;
    end
end

always @ (*) begin
    if (((icmp_ln37_reg_533 == 1'd0) & (1'b0 == ap_block_pp2_stage0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0))) begin
        ap_phi_mux_om1_0_phi_fu_248_p4 = select_ln40_1_reg_547;
    end else begin
        ap_phi_mux_om1_0_phi_fu_248_p4 = om1_0_reg_244;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0) & (1'b0 == ap_block_pp2_stage0_11001))) begin
        fc_bias1_ce0 = 1'b1;
    end else begin
        fc_bias1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp2_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0) & (1'b0 == ap_block_pp2_stage0_11001))) begin
        fc_weights1_ce0 = 1'b1;
    end else begin
        fc_weights1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln38_1_reg_599_pp2_iter2_reg == 1'd1) & (ap_enable_reg_pp2_iter2 == 1'b1))) begin
        if (((1'b0 == ap_block_pp2_stage4_00001) & (1'b1 == ap_CS_fsm_pp2_stage4))) begin
            grp_fu_293_opcode = 5'd2;
        end else if (((1'b0 == ap_block_pp2_stage3_00001) & (1'b1 == ap_CS_fsm_pp2_stage3))) begin
            grp_fu_293_opcode = 5'd4;
        end else begin
            grp_fu_293_opcode = 'bx;
        end
    end else begin
        grp_fu_293_opcode = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp2_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp2_stage4) & (1'b1 == ap_CS_fsm_pp2_stage4))) begin
            grp_fu_293_p1 = 32'd1086324736;
        end else if (((1'b0 == ap_block_pp2_stage3) & (1'b1 == ap_CS_fsm_pp2_stage3))) begin
            grp_fu_293_p1 = 32'd0;
        end else begin
            grp_fu_293_p1 = 'bx;
        end
    end else begin
        grp_fu_293_p1 = 'bx;
    end
end

always @ (*) begin
    if (((icmp_ln25_reg_516 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        in_stream_V_blk_n = in_stream_V_empty_n;
    end else begin
        in_stream_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln25_reg_516 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        in_stream_V_read = 1'b1;
    end else begin
        in_stream_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln50_reg_630 == 1'd0) & (ap_enable_reg_pp3_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp3_stage0) & (1'b0 == ap_block_pp3_stage0))) begin
        out_stream_V_blk_n = out_stream_V_full_n;
    end else begin
        out_stream_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln50_reg_630 == 1'd0) & (1'b0 == ap_block_pp3_stage0_11001) & (ap_enable_reg_pp3_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp3_stage0))) begin
        out_stream_V_write = 1'b1;
    end else begin
        out_stream_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp2_stage0) & (ap_enable_reg_pp2_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0))) begin
        x_address0 = zext_ln40_1_fu_377_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_address0 = zext_ln28_fu_311_p1;
    end else begin
        x_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp2_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0) & (1'b0 == ap_block_pp2_stage0_11001)))) begin
        x_ce0 = 1'b1;
    end else begin
        x_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln25_reg_516 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        x_we0 = 1'b1;
    end else begin
        x_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp3_stage0) & (ap_enable_reg_pp3_iter0 == 1'b1) & (1'b0 == ap_block_pp3_stage0))) begin
        y_address0 = zext_ln52_fu_511_p1;
    end else if (((1'b0 == ap_block_pp2_stage0) & (ap_enable_reg_pp2_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0))) begin
        y_address0 = y_addr_1_reg_583_pp2_iter2_reg;
    end else if (((1'b0 == ap_block_pp2_stage3) & (1'b1 == ap_CS_fsm_pp2_stage3) & (ap_enable_reg_pp2_iter1 == 1'b1))) begin
        y_address0 = y_addr_1_reg_583;
    end else if (((1'b0 == ap_block_pp2_stage4) & (1'b1 == ap_CS_fsm_pp2_stage4) & (ap_enable_reg_pp2_iter0 == 1'b1))) begin
        y_address0 = zext_ln40_fu_405_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        y_address0 = zext_ln33_fu_328_p1;
    end else begin
        y_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | ((1'b0 == ap_block_pp3_stage0_11001) & (1'b1 == ap_CS_fsm_pp3_stage0) & (ap_enable_reg_pp3_iter0 == 1'b1)) | ((1'b0 == ap_block_pp2_stage3_11001) & (1'b1 == ap_CS_fsm_pp2_stage3) & (ap_enable_reg_pp2_iter1 == 1'b1)) | ((1'b0 == ap_block_pp2_stage4_11001) & (1'b1 == ap_CS_fsm_pp2_stage4) & (ap_enable_reg_pp2_iter0 == 1'b1)) | ((ap_enable_reg_pp2_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0) & (1'b0 == ap_block_pp2_stage0_11001)))) begin
        y_ce0 = 1'b1;
    end else begin
        y_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp2_stage0) & (ap_enable_reg_pp2_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0))) begin
        y_d0 = select_ln238_17_fu_491_p3;
    end else if (((1'b0 == ap_block_pp2_stage3) & (1'b1 == ap_CS_fsm_pp2_stage3) & (ap_enable_reg_pp2_iter1 == 1'b1))) begin
        y_d0 = grp_fu_277_p2;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        y_d0 = 32'd0;
    end else begin
        y_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln37_reg_533_pp2_iter1_reg == 1'd0) & (1'b0 == ap_block_pp2_stage3_11001) & (1'b1 == ap_CS_fsm_pp2_stage3) & (ap_enable_reg_pp2_iter1 == 1'b1)) | ((icmp_ln38_1_reg_599_pp2_iter2_reg == 1'd1) & (ap_enable_reg_pp2_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0) & (1'b0 == ap_block_pp2_stage0_11001)) | ((icmp_ln31_fu_316_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        y_we0 = 1'b1;
    end else begin
        y_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln25_fu_299_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln25_fu_299_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((icmp_ln31_fu_316_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_pp2_stage0;
        end
        ap_ST_fsm_pp2_stage0 : begin
            if ((~((1'b0 == ap_block_pp2_stage0_subdone) & (ap_enable_reg_pp2_iter1 == 1'b0) & (ap_enable_reg_pp2_iter0 == 1'b1) & (icmp_ln37_fu_333_p2 == 1'd1)) & ~((1'b0 == ap_block_pp2_stage0_subdone) & (ap_enable_reg_pp2_iter2 == 1'b0) & (ap_enable_reg_pp2_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0)) & (1'b0 == ap_block_pp2_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp2_stage1;
            end else if ((((1'b0 == ap_block_pp2_stage0_subdone) & (ap_enable_reg_pp2_iter1 == 1'b0) & (ap_enable_reg_pp2_iter0 == 1'b1) & (icmp_ln37_fu_333_p2 == 1'd1)) | ((1'b0 == ap_block_pp2_stage0_subdone) & (ap_enable_reg_pp2_iter2 == 1'b0) & (ap_enable_reg_pp2_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0)))) begin
                ap_NS_fsm = ap_ST_fsm_state23;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp2_stage0;
            end
        end
        ap_ST_fsm_pp2_stage1 : begin
            if ((1'b0 == ap_block_pp2_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp2_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp2_stage1;
            end
        end
        ap_ST_fsm_pp2_stage2 : begin
            if ((1'b0 == ap_block_pp2_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp2_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp2_stage2;
            end
        end
        ap_ST_fsm_pp2_stage3 : begin
            if ((1'b0 == ap_block_pp2_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp2_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp2_stage3;
            end
        end
        ap_ST_fsm_pp2_stage4 : begin
            if ((1'b0 == ap_block_pp2_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp2_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp2_stage4;
            end
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_pp3_stage0;
        end
        ap_ST_fsm_pp3_stage0 : begin
            if (~((1'b0 == ap_block_pp3_stage0_subdone) & (icmp_ln50_fu_499_p2 == 1'd1) & (ap_enable_reg_pp3_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp3_stage0;
            end else if (((1'b0 == ap_block_pp3_stage0_subdone) & (icmp_ln50_fu_499_p2 == 1'd1) & (ap_enable_reg_pp3_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state26;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp3_stage0;
            end
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln37_fu_339_p2 = (ap_phi_mux_indvar_flatten_phi_fu_237_p4 + 12'd1);

assign add_ln40_fu_394_p2 = (zext_ln38_fu_373_p1 + zext_ln40_2_fu_390_p1);

assign and_ln236_fu_454_p2 = (tmp_226_reg_625 & or_ln236_fu_448_p2);

assign and_ln238_17_fu_471_p2 = (xor_ln236_fu_465_p2 & and_ln238_fu_459_p2);

assign and_ln238_fu_459_p2 = (or_ln236_fu_448_p2 & grp_fu_293_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp2_stage0 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_pp2_stage1 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_pp2_stage2 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_pp2_stage3 = ap_CS_fsm[32'd8];

assign ap_CS_fsm_pp2_stage4 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_pp3_stage0 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state23 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state26 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd4];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((icmp_ln25_reg_516 == 1'd0) & (in_stream_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((icmp_ln25_reg_516 == 1'd0) & (in_stream_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_block_pp2_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp2_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp2_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp2_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp2_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp2_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp2_stage2_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp2_stage2_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp2_stage3 = ~(1'b1 == 1'b1);

assign ap_block_pp2_stage3_00001 = ~(1'b1 == 1'b1);

assign ap_block_pp2_stage3_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp2_stage3_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp2_stage4 = ~(1'b1 == 1'b1);

assign ap_block_pp2_stage4_00001 = ~(1'b1 == 1'b1);

assign ap_block_pp2_stage4_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp2_stage4_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp3_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp3_stage0_01001 = ((icmp_ln50_reg_630 == 1'd0) & (out_stream_V_full_n == 1'b0) & (ap_enable_reg_pp3_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp3_stage0_11001 = ((icmp_ln50_reg_630 == 1'd0) & (out_stream_V_full_n == 1'b0) & (ap_enable_reg_pp3_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp3_stage0_subdone = ((icmp_ln50_reg_630 == 1'd0) & (out_stream_V_full_n == 1'b0) & (ap_enable_reg_pp3_iter1 == 1'b1));
end

assign ap_block_state10_pp2_stage3_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp2_stage4_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp2_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp2_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp2_stage2_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp2_stage3_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp2_stage4_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp2_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp2_stage1_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp2_stage2_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state20_pp2_stage3_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp2_stage4_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state22_pp2_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state24_pp3_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state25_pp3_stage0_iter1 = ((icmp_ln50_reg_630 == 1'd0) & (out_stream_V_full_n == 1'b0));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = ((icmp_ln25_reg_516 == 1'd0) & (in_stream_V_empty_n == 1'b0));
end

assign ap_block_state7_pp2_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp2_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp2_stage2_iter0 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_pp2 = (ap_idle_pp2 ^ 1'b1);

assign ap_enable_pp3 = (ap_idle_pp3 ^ 1'b1);

assign bitcast_ln236_fu_419_p1 = in_var_assign_reg_618;

assign fc_bias1_address0 = zext_ln40_reg_573;

assign fc_weights1_address0 = zext_ln40_3_fu_400_p1;

assign i_fu_305_p2 = (ap_phi_mux_i_0_phi_fu_214_p4 + 6'd1);

assign icmp_ln236_17_fu_442_p2 = ((trunc_ln236_fu_432_p1 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln236_fu_436_p2 = ((tmp_225_fu_422_p4 != 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln25_fu_299_p2 = ((ap_phi_mux_i_0_phi_fu_214_p4 == 6'd40) ? 1'b1 : 1'b0);

assign icmp_ln31_fu_316_p2 = ((om_0_reg_222 == 7'd64) ? 1'b1 : 1'b0);

assign icmp_ln37_fu_333_p2 = ((ap_phi_mux_indvar_flatten_phi_fu_237_p4 == 12'd2560) ? 1'b1 : 1'b0);

assign icmp_ln38_1_fu_414_p2 = ((im_reg_588 == 6'd40) ? 1'b1 : 1'b0);

assign icmp_ln38_fu_351_p2 = ((ap_phi_mux_im_0_phi_fu_259_p4 == 6'd40) ? 1'b1 : 1'b0);

assign icmp_ln50_fu_499_p2 = ((om2_0_reg_266 == 7'd64) ? 1'b1 : 1'b0);

assign im_fu_409_p2 = (select_ln40_reg_542 + 6'd1);

assign om_4_fu_345_p2 = (ap_phi_mux_om1_0_phi_fu_248_p4 + 7'd1);

assign om_5_fu_505_p2 = (om2_0_reg_266 + 7'd1);

assign om_fu_322_p2 = (om_0_reg_222 + 7'd1);

assign or_ln236_fu_448_p2 = (icmp_ln236_fu_436_p2 | icmp_ln236_17_fu_442_p2);

assign or_ln238_fu_485_p2 = (and_ln238_17_fu_471_p2 | and_ln236_fu_454_p2);

assign out_stream_V_din = y_q0;

assign select_ln238_17_fu_491_p3 = ((or_ln238_fu_485_p2[0:0] === 1'b1) ? select_ln238_fu_477_p3 : in_var_assign_reg_618);

assign select_ln238_fu_477_p3 = ((and_ln238_17_fu_471_p2[0:0] === 1'b1) ? 32'd1086324736 : 32'd0);

assign select_ln40_1_fu_365_p3 = ((icmp_ln38_fu_351_p2[0:0] === 1'b1) ? om_4_fu_345_p2 : ap_phi_mux_om1_0_phi_fu_248_p4);

assign select_ln40_fu_357_p3 = ((icmp_ln38_fu_351_p2[0:0] === 1'b1) ? 6'd0 : ap_phi_mux_im_0_phi_fu_259_p4);

assign tmp_225_fu_422_p4 = {{bitcast_ln236_fu_419_p1[30:23]}};

assign tmp_264_fu_382_p3 = {{select_ln40_fu_357_p3}, {6'd0}};

assign trunc_ln236_fu_432_p1 = bitcast_ln236_fu_419_p1[22:0];

assign xor_ln236_fu_465_p2 = (1'd1 ^ and_ln236_fu_454_p2);

assign zext_ln28_fu_311_p1 = i_0_reg_210;

assign zext_ln33_fu_328_p1 = om_0_reg_222;

assign zext_ln38_fu_373_p1 = select_ln40_1_fu_365_p3;

assign zext_ln40_1_fu_377_p1 = select_ln40_fu_357_p3;

assign zext_ln40_2_fu_390_p1 = tmp_264_fu_382_p3;

assign zext_ln40_3_fu_400_p1 = add_ln40_fu_394_p2;

assign zext_ln40_fu_405_p1 = select_ln40_1_reg_547;

assign zext_ln52_fu_511_p1 = om2_0_reg_266;

always @ (posedge ap_clk) begin
    zext_ln40_reg_573[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
end

endmodule //fc_relu6
