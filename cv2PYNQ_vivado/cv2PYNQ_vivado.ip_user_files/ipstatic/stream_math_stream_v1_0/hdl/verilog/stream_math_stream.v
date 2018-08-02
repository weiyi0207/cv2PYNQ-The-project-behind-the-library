// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.1
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="stream_math_stream,hls_ip_2016_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=8.750000,HLS_SYN_LAT=-1,HLS_SYN_TPT=-1,HLS_SYN_MEM=0,HLS_SYN_DSP=2,HLS_SYN_FF=489,HLS_SYN_LUT=880}" *)

module stream_math_stream (
        s_axi_CONTROL_BUS_AWVALID,
        s_axi_CONTROL_BUS_AWREADY,
        s_axi_CONTROL_BUS_AWADDR,
        s_axi_CONTROL_BUS_WVALID,
        s_axi_CONTROL_BUS_WREADY,
        s_axi_CONTROL_BUS_WDATA,
        s_axi_CONTROL_BUS_WSTRB,
        s_axi_CONTROL_BUS_ARVALID,
        s_axi_CONTROL_BUS_ARREADY,
        s_axi_CONTROL_BUS_ARADDR,
        s_axi_CONTROL_BUS_RVALID,
        s_axi_CONTROL_BUS_RREADY,
        s_axi_CONTROL_BUS_RDATA,
        s_axi_CONTROL_BUS_RRESP,
        s_axi_CONTROL_BUS_BVALID,
        s_axi_CONTROL_BUS_BREADY,
        s_axi_CONTROL_BUS_BRESP,
        ap_clk,
        ap_rst_n,
        in_stream_TDATA,
        in_stream_TUSER,
        in_stream_TLAST,
        out_stream_TDATA,
        out_stream_TUSER,
        out_stream_TLAST,
        in_stream_TVALID,
        in_stream_TREADY,
        out_stream_TVALID,
        out_stream_TREADY
);

parameter    C_S_AXI_CONTROL_BUS_DATA_WIDTH = 32;
parameter    ap_const_int64_8 = 8;
parameter    C_S_AXI_CONTROL_BUS_ADDR_WIDTH = 6;
parameter    C_S_AXI_DATA_WIDTH = 32;
parameter    C_S_AXI_ADDR_WIDTH = 32;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_B = 32'b1011;

parameter C_S_AXI_CONTROL_BUS_WSTRB_WIDTH = (C_S_AXI_CONTROL_BUS_DATA_WIDTH / ap_const_int64_8);
parameter C_S_AXI_WSTRB_WIDTH = (C_S_AXI_DATA_WIDTH / ap_const_int64_8);

input   s_axi_CONTROL_BUS_AWVALID;
output   s_axi_CONTROL_BUS_AWREADY;
input  [C_S_AXI_CONTROL_BUS_ADDR_WIDTH - 1 : 0] s_axi_CONTROL_BUS_AWADDR;
input   s_axi_CONTROL_BUS_WVALID;
output   s_axi_CONTROL_BUS_WREADY;
input  [C_S_AXI_CONTROL_BUS_DATA_WIDTH - 1 : 0] s_axi_CONTROL_BUS_WDATA;
input  [C_S_AXI_CONTROL_BUS_WSTRB_WIDTH - 1 : 0] s_axi_CONTROL_BUS_WSTRB;
input   s_axi_CONTROL_BUS_ARVALID;
output   s_axi_CONTROL_BUS_ARREADY;
input  [C_S_AXI_CONTROL_BUS_ADDR_WIDTH - 1 : 0] s_axi_CONTROL_BUS_ARADDR;
output   s_axi_CONTROL_BUS_RVALID;
input   s_axi_CONTROL_BUS_RREADY;
output  [C_S_AXI_CONTROL_BUS_DATA_WIDTH - 1 : 0] s_axi_CONTROL_BUS_RDATA;
output  [1:0] s_axi_CONTROL_BUS_RRESP;
output   s_axi_CONTROL_BUS_BVALID;
input   s_axi_CONTROL_BUS_BREADY;
output  [1:0] s_axi_CONTROL_BUS_BRESP;
input   ap_clk;
input   ap_rst_n;
input  [31:0] in_stream_TDATA;
input  [0:0] in_stream_TUSER;
input  [0:0] in_stream_TLAST;
output  [31:0] out_stream_TDATA;
output  [0:0] out_stream_TUSER;
output  [0:0] out_stream_TLAST;
input   in_stream_TVALID;
output   in_stream_TREADY;
output   out_stream_TVALID;
input   out_stream_TREADY;

reg    ap_rst_n_inv;
wire   [31:0] rows;
wire   [31:0] cols;
wire   [31:0] channels;
wire    stream_math_stream_stream_math_stream_entry3_U0_ap_start;
wire    stream_math_stream_stream_math_stream_entry3_U0_ap_done;
wire    stream_math_stream_stream_math_stream_entry3_U0_ap_continue;
wire    stream_math_stream_stream_math_stream_entry3_U0_ap_idle;
wire    stream_math_stream_stream_math_stream_entry3_U0_ap_ready;
wire   [10:0] stream_math_stream_stream_math_stream_entry3_U0_rows_cast;
wire   [10:0] stream_math_stream_stream_math_stream_entry3_U0_cols_cast;
wire   [10:0] stream_math_stream_stream_math_stream_entry3_U0_rows_cast_out_din;
wire    stream_math_stream_stream_math_stream_entry3_U0_rows_cast_out_write;
wire   [10:0] stream_math_stream_stream_math_stream_entry3_U0_cols_cast_out_din;
wire    stream_math_stream_stream_math_stream_entry3_U0_cols_cast_out_write;
wire   [31:0] stream_math_stream_stream_math_stream_entry3_U0_channels_out_din;
wire    stream_math_stream_stream_math_stream_entry3_U0_channels_out_write;
reg    stream_math_stream_stream_math_stream_entry25_U0_ap_start;
wire    stream_math_stream_stream_math_stream_entry25_U0_ap_done;
wire    stream_math_stream_stream_math_stream_entry25_U0_ap_continue;
wire    stream_math_stream_stream_math_stream_entry25_U0_ap_idle;
wire    stream_math_stream_stream_math_stream_entry25_U0_ap_ready;
wire    stream_math_stream_stream_math_stream_entry25_U0_rows_read;
wire    stream_math_stream_stream_math_stream_entry25_U0_channels_read;
wire    stream_math_stream_stream_math_stream_entry25_U0_cols_read;
wire   [10:0] stream_math_stream_stream_math_stream_entry25_U0_rows_out_din;
wire    stream_math_stream_stream_math_stream_entry25_U0_rows_out_write;
wire   [31:0] stream_math_stream_stream_math_stream_entry25_U0_channels_out_din;
wire    stream_math_stream_stream_math_stream_entry25_U0_channels_out_write;
wire   [10:0] stream_math_stream_stream_math_stream_entry25_U0_cols_out_din;
wire    stream_math_stream_stream_math_stream_entry25_U0_cols_out_write;
wire    stream_math_stream_Loop_1_proc_U0_ap_start;
wire    stream_math_stream_Loop_1_proc_U0_ap_done;
wire    stream_math_stream_Loop_1_proc_U0_ap_continue;
wire    stream_math_stream_Loop_1_proc_U0_ap_idle;
wire    stream_math_stream_Loop_1_proc_U0_ap_ready;
wire    stream_math_stream_Loop_1_proc_U0_in_stream_TREADY;
wire   [7:0] stream_math_stream_Loop_1_proc_U0_g_img_data_stream_0_V_din;
wire    stream_math_stream_Loop_1_proc_U0_g_img_data_stream_0_V_write;
reg    stream_math_stream_Block_proc_U0_ap_start;
wire    stream_math_stream_Block_proc_U0_ap_done;
reg    stream_math_stream_Block_proc_U0_ap_continue;
wire    stream_math_stream_Block_proc_U0_ap_idle;
wire    stream_math_stream_Block_proc_U0_ap_ready;
wire    stream_math_stream_Block_proc_U0_channels_read;
wire    stream_math_stream_Block_proc_U0_cols_read;
wire    stream_math_stream_Block_proc_U0_rows_read;
wire   [10:0] stream_math_stream_Block_proc_U0_rows_out_din;
wire    stream_math_stream_Block_proc_U0_rows_out_write;
wire   [30:0] stream_math_stream_Block_proc_U0_ap_return_0;
wire   [10:0] stream_math_stream_Block_proc_U0_ap_return_1;
wire   [30:0] stream_math_stream_Block_proc_U0_ap_return_2;
wire    newret_full_n;
reg    ap_reg_newret_full_n;
reg    ap_sig_newret_full_n;
reg    ap_chn_write_stream_math_stream_Block_proc_U0_newret;
wire    newret3_full_n;
reg    ap_reg_newret3_full_n;
reg    ap_sig_newret3_full_n;
reg    ap_chn_write_stream_math_stream_Block_proc_U0_newret3;
wire    newret1_full_n;
reg    ap_reg_newret1_full_n;
reg    ap_sig_newret1_full_n;
reg    ap_chn_write_stream_math_stream_Block_proc_U0_newret1;
wire    stream_math_stream_Loop_2_proc1_U0_ap_start;
wire    stream_math_stream_Loop_2_proc1_U0_ap_done;
wire    stream_math_stream_Loop_2_proc1_U0_ap_continue;
wire    stream_math_stream_Loop_2_proc1_U0_ap_idle;
wire    stream_math_stream_Loop_2_proc1_U0_ap_ready;
wire    stream_math_stream_Loop_2_proc1_U0_rows_read;
wire   [31:0] stream_math_stream_Loop_2_proc1_U0_out_stream_TDATA;
wire    stream_math_stream_Loop_2_proc1_U0_out_stream_TVALID;
wire    stream_math_stream_Loop_2_proc1_U0_g_img_data_stream_0_V_read;
wire   [0:0] stream_math_stream_Loop_2_proc1_U0_out_stream_TUSER;
wire   [0:0] stream_math_stream_Loop_2_proc1_U0_out_stream_TLAST;
wire    ap_sig_hs_continue;
wire    rows_cast_channel_full_n;
wire   [10:0] rows_cast_channel_dout;
wire    rows_cast_channel_empty_n;
wire    cols_cast_channel_full_n;
wire   [10:0] cols_cast_channel_dout;
wire    cols_cast_channel_empty_n;
wire    channels_channel5_full_n;
wire   [31:0] channels_channel5_dout;
wire    channels_channel5_empty_n;
wire    rows_channel_full_n;
wire   [10:0] rows_channel_dout;
wire    rows_channel_empty_n;
wire    channels_channel_full_n;
wire   [31:0] channels_channel_dout;
wire    channels_channel_empty_n;
wire    cols_channel_full_n;
wire   [10:0] cols_channel_dout;
wire    cols_channel_empty_n;
wire    g_img_data_stream_0_V_full_n;
wire   [7:0] g_img_data_stream_0_V_dout;
wire    g_img_data_stream_0_V_empty_n;
wire    rows_channel33_full_n;
wire   [10:0] rows_channel33_dout;
wire    rows_channel33_empty_n;
wire   [30:0] newret_dout;
wire    newret_empty_n;
wire   [10:0] newret1_dout;
wire    newret1_empty_n;
wire   [30:0] newret3_dout;
wire    newret3_empty_n;

// power-on initialization
initial begin
#0 stream_math_stream_stream_math_stream_entry25_U0_ap_start = 1'b0;
#0 stream_math_stream_Block_proc_U0_ap_start = 1'b0;
#0 ap_reg_newret_full_n = 1'b0;
#0 ap_reg_newret3_full_n = 1'b0;
#0 ap_reg_newret1_full_n = 1'b0;
end

stream_math_stream_CONTROL_BUS_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_CONTROL_BUS_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_CONTROL_BUS_DATA_WIDTH ))
stream_math_stream_CONTROL_BUS_s_axi_U(
    .AWVALID(s_axi_CONTROL_BUS_AWVALID),
    .AWREADY(s_axi_CONTROL_BUS_AWREADY),
    .AWADDR(s_axi_CONTROL_BUS_AWADDR),
    .WVALID(s_axi_CONTROL_BUS_WVALID),
    .WREADY(s_axi_CONTROL_BUS_WREADY),
    .WDATA(s_axi_CONTROL_BUS_WDATA),
    .WSTRB(s_axi_CONTROL_BUS_WSTRB),
    .ARVALID(s_axi_CONTROL_BUS_ARVALID),
    .ARREADY(s_axi_CONTROL_BUS_ARREADY),
    .ARADDR(s_axi_CONTROL_BUS_ARADDR),
    .RVALID(s_axi_CONTROL_BUS_RVALID),
    .RREADY(s_axi_CONTROL_BUS_RREADY),
    .RDATA(s_axi_CONTROL_BUS_RDATA),
    .RRESP(s_axi_CONTROL_BUS_RRESP),
    .BVALID(s_axi_CONTROL_BUS_BVALID),
    .BREADY(s_axi_CONTROL_BUS_BREADY),
    .BRESP(s_axi_CONTROL_BUS_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .rows(rows),
    .cols(cols),
    .channels(channels)
);

stream_math_stream_stream_math_stream_entry3 stream_math_stream_stream_math_stream_entry3_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(stream_math_stream_stream_math_stream_entry3_U0_ap_start),
    .ap_done(stream_math_stream_stream_math_stream_entry3_U0_ap_done),
    .ap_continue(stream_math_stream_stream_math_stream_entry3_U0_ap_continue),
    .ap_idle(stream_math_stream_stream_math_stream_entry3_U0_ap_idle),
    .ap_ready(stream_math_stream_stream_math_stream_entry3_U0_ap_ready),
    .rows_cast(stream_math_stream_stream_math_stream_entry3_U0_rows_cast),
    .cols_cast(stream_math_stream_stream_math_stream_entry3_U0_cols_cast),
    .channels(channels),
    .rows_cast_out_din(stream_math_stream_stream_math_stream_entry3_U0_rows_cast_out_din),
    .rows_cast_out_full_n(rows_cast_channel_full_n),
    .rows_cast_out_write(stream_math_stream_stream_math_stream_entry3_U0_rows_cast_out_write),
    .cols_cast_out_din(stream_math_stream_stream_math_stream_entry3_U0_cols_cast_out_din),
    .cols_cast_out_full_n(cols_cast_channel_full_n),
    .cols_cast_out_write(stream_math_stream_stream_math_stream_entry3_U0_cols_cast_out_write),
    .channels_out_din(stream_math_stream_stream_math_stream_entry3_U0_channels_out_din),
    .channels_out_full_n(channels_channel5_full_n),
    .channels_out_write(stream_math_stream_stream_math_stream_entry3_U0_channels_out_write)
);

stream_math_stream_stream_math_stream_entry25 stream_math_stream_stream_math_stream_entry25_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(stream_math_stream_stream_math_stream_entry25_U0_ap_start),
    .ap_done(stream_math_stream_stream_math_stream_entry25_U0_ap_done),
    .ap_continue(stream_math_stream_stream_math_stream_entry25_U0_ap_continue),
    .ap_idle(stream_math_stream_stream_math_stream_entry25_U0_ap_idle),
    .ap_ready(stream_math_stream_stream_math_stream_entry25_U0_ap_ready),
    .rows_dout(rows_cast_channel_dout),
    .rows_empty_n(rows_cast_channel_empty_n),
    .rows_read(stream_math_stream_stream_math_stream_entry25_U0_rows_read),
    .channels_dout(channels_channel5_dout),
    .channels_empty_n(channels_channel5_empty_n),
    .channels_read(stream_math_stream_stream_math_stream_entry25_U0_channels_read),
    .cols_dout(cols_cast_channel_dout),
    .cols_empty_n(cols_cast_channel_empty_n),
    .cols_read(stream_math_stream_stream_math_stream_entry25_U0_cols_read),
    .rows_out_din(stream_math_stream_stream_math_stream_entry25_U0_rows_out_din),
    .rows_out_full_n(rows_channel_full_n),
    .rows_out_write(stream_math_stream_stream_math_stream_entry25_U0_rows_out_write),
    .channels_out_din(stream_math_stream_stream_math_stream_entry25_U0_channels_out_din),
    .channels_out_full_n(channels_channel_full_n),
    .channels_out_write(stream_math_stream_stream_math_stream_entry25_U0_channels_out_write),
    .cols_out_din(stream_math_stream_stream_math_stream_entry25_U0_cols_out_din),
    .cols_out_full_n(cols_channel_full_n),
    .cols_out_write(stream_math_stream_stream_math_stream_entry25_U0_cols_out_write)
);

stream_math_stream_Loop_1_proc stream_math_stream_Loop_1_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(stream_math_stream_Loop_1_proc_U0_ap_start),
    .ap_done(stream_math_stream_Loop_1_proc_U0_ap_done),
    .ap_continue(stream_math_stream_Loop_1_proc_U0_ap_continue),
    .ap_idle(stream_math_stream_Loop_1_proc_U0_ap_idle),
    .ap_ready(stream_math_stream_Loop_1_proc_U0_ap_ready),
    .in_stream_TDATA(in_stream_TDATA),
    .in_stream_TVALID(in_stream_TVALID),
    .in_stream_TREADY(stream_math_stream_Loop_1_proc_U0_in_stream_TREADY),
    .g_img_data_stream_0_V_din(stream_math_stream_Loop_1_proc_U0_g_img_data_stream_0_V_din),
    .g_img_data_stream_0_V_full_n(g_img_data_stream_0_V_full_n),
    .g_img_data_stream_0_V_write(stream_math_stream_Loop_1_proc_U0_g_img_data_stream_0_V_write),
    .in_stream_TLAST(in_stream_TLAST)
);

stream_math_stream_Block_proc stream_math_stream_Block_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(stream_math_stream_Block_proc_U0_ap_start),
    .ap_done(stream_math_stream_Block_proc_U0_ap_done),
    .ap_continue(stream_math_stream_Block_proc_U0_ap_continue),
    .ap_idle(stream_math_stream_Block_proc_U0_ap_idle),
    .ap_ready(stream_math_stream_Block_proc_U0_ap_ready),
    .channels_dout(channels_channel_dout),
    .channels_empty_n(channels_channel_empty_n),
    .channels_read(stream_math_stream_Block_proc_U0_channels_read),
    .cols_dout(cols_channel_dout),
    .cols_empty_n(cols_channel_empty_n),
    .cols_read(stream_math_stream_Block_proc_U0_cols_read),
    .rows_dout(rows_channel_dout),
    .rows_empty_n(rows_channel_empty_n),
    .rows_read(stream_math_stream_Block_proc_U0_rows_read),
    .rows_out_din(stream_math_stream_Block_proc_U0_rows_out_din),
    .rows_out_full_n(rows_channel33_full_n),
    .rows_out_write(stream_math_stream_Block_proc_U0_rows_out_write),
    .ap_return_0(stream_math_stream_Block_proc_U0_ap_return_0),
    .ap_return_1(stream_math_stream_Block_proc_U0_ap_return_1),
    .ap_return_2(stream_math_stream_Block_proc_U0_ap_return_2)
);

stream_math_stream_Loop_2_proc1 stream_math_stream_Loop_2_proc1_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(stream_math_stream_Loop_2_proc1_U0_ap_start),
    .ap_done(stream_math_stream_Loop_2_proc1_U0_ap_done),
    .ap_continue(stream_math_stream_Loop_2_proc1_U0_ap_continue),
    .ap_idle(stream_math_stream_Loop_2_proc1_U0_ap_idle),
    .ap_ready(stream_math_stream_Loop_2_proc1_U0_ap_ready),
    .rows_dout(rows_channel33_dout),
    .rows_empty_n(rows_channel33_empty_n),
    .rows_read(stream_math_stream_Loop_2_proc1_U0_rows_read),
    .out_stream_TDATA(stream_math_stream_Loop_2_proc1_U0_out_stream_TDATA),
    .out_stream_TVALID(stream_math_stream_Loop_2_proc1_U0_out_stream_TVALID),
    .out_stream_TREADY(out_stream_TREADY),
    .p_read(newret_dout),
    .p_read1(newret1_dout),
    .g_img_data_stream_0_V_dout(g_img_data_stream_0_V_dout),
    .g_img_data_stream_0_V_empty_n(g_img_data_stream_0_V_empty_n),
    .g_img_data_stream_0_V_read(stream_math_stream_Loop_2_proc1_U0_g_img_data_stream_0_V_read),
    .out_stream_TUSER(stream_math_stream_Loop_2_proc1_U0_out_stream_TUSER),
    .p_read2(newret3_dout),
    .out_stream_TLAST(stream_math_stream_Loop_2_proc1_U0_out_stream_TLAST)
);

FIFO_stream_math_stream_rows_cast_channel rows_cast_channel_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(stream_math_stream_stream_math_stream_entry3_U0_rows_cast_out_din),
    .if_full_n(rows_cast_channel_full_n),
    .if_write(stream_math_stream_stream_math_stream_entry3_U0_rows_cast_out_write),
    .if_dout(rows_cast_channel_dout),
    .if_empty_n(rows_cast_channel_empty_n),
    .if_read(stream_math_stream_stream_math_stream_entry25_U0_rows_read)
);

FIFO_stream_math_stream_cols_cast_channel cols_cast_channel_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(stream_math_stream_stream_math_stream_entry3_U0_cols_cast_out_din),
    .if_full_n(cols_cast_channel_full_n),
    .if_write(stream_math_stream_stream_math_stream_entry3_U0_cols_cast_out_write),
    .if_dout(cols_cast_channel_dout),
    .if_empty_n(cols_cast_channel_empty_n),
    .if_read(stream_math_stream_stream_math_stream_entry25_U0_cols_read)
);

FIFO_stream_math_stream_channels_channel5 channels_channel5_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(stream_math_stream_stream_math_stream_entry3_U0_channels_out_din),
    .if_full_n(channels_channel5_full_n),
    .if_write(stream_math_stream_stream_math_stream_entry3_U0_channels_out_write),
    .if_dout(channels_channel5_dout),
    .if_empty_n(channels_channel5_empty_n),
    .if_read(stream_math_stream_stream_math_stream_entry25_U0_channels_read)
);

FIFO_stream_math_stream_rows_channel rows_channel_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(stream_math_stream_stream_math_stream_entry25_U0_rows_out_din),
    .if_full_n(rows_channel_full_n),
    .if_write(stream_math_stream_stream_math_stream_entry25_U0_rows_out_write),
    .if_dout(rows_channel_dout),
    .if_empty_n(rows_channel_empty_n),
    .if_read(stream_math_stream_Block_proc_U0_rows_read)
);

FIFO_stream_math_stream_channels_channel channels_channel_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(stream_math_stream_stream_math_stream_entry25_U0_channels_out_din),
    .if_full_n(channels_channel_full_n),
    .if_write(stream_math_stream_stream_math_stream_entry25_U0_channels_out_write),
    .if_dout(channels_channel_dout),
    .if_empty_n(channels_channel_empty_n),
    .if_read(stream_math_stream_Block_proc_U0_channels_read)
);

FIFO_stream_math_stream_cols_channel cols_channel_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(stream_math_stream_stream_math_stream_entry25_U0_cols_out_din),
    .if_full_n(cols_channel_full_n),
    .if_write(stream_math_stream_stream_math_stream_entry25_U0_cols_out_write),
    .if_dout(cols_channel_dout),
    .if_empty_n(cols_channel_empty_n),
    .if_read(stream_math_stream_Block_proc_U0_cols_read)
);

FIFO_stream_math_stream_g_img_data_stream_0_V g_img_data_stream_0_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(stream_math_stream_Loop_1_proc_U0_g_img_data_stream_0_V_din),
    .if_full_n(g_img_data_stream_0_V_full_n),
    .if_write(stream_math_stream_Loop_1_proc_U0_g_img_data_stream_0_V_write),
    .if_dout(g_img_data_stream_0_V_dout),
    .if_empty_n(g_img_data_stream_0_V_empty_n),
    .if_read(stream_math_stream_Loop_2_proc1_U0_g_img_data_stream_0_V_read)
);

FIFO_stream_math_stream_rows_channel33 rows_channel33_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(stream_math_stream_Block_proc_U0_rows_out_din),
    .if_full_n(rows_channel33_full_n),
    .if_write(stream_math_stream_Block_proc_U0_rows_out_write),
    .if_dout(rows_channel33_dout),
    .if_empty_n(rows_channel33_empty_n),
    .if_read(stream_math_stream_Loop_2_proc1_U0_rows_read)
);

FIFO_stream_math_stream_newret newret_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(stream_math_stream_Block_proc_U0_ap_return_0),
    .if_full_n(newret_full_n),
    .if_write(ap_chn_write_stream_math_stream_Block_proc_U0_newret),
    .if_dout(newret_dout),
    .if_empty_n(newret_empty_n),
    .if_read(stream_math_stream_Loop_2_proc1_U0_ap_ready)
);

FIFO_stream_math_stream_newret1 newret1_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(stream_math_stream_Block_proc_U0_ap_return_1),
    .if_full_n(newret1_full_n),
    .if_write(ap_chn_write_stream_math_stream_Block_proc_U0_newret1),
    .if_dout(newret1_dout),
    .if_empty_n(newret1_empty_n),
    .if_read(stream_math_stream_Loop_2_proc1_U0_ap_ready)
);

FIFO_stream_math_stream_newret3 newret3_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(stream_math_stream_Block_proc_U0_ap_return_2),
    .if_full_n(newret3_full_n),
    .if_write(ap_chn_write_stream_math_stream_Block_proc_U0_newret3),
    .if_dout(newret3_dout),
    .if_empty_n(newret3_empty_n),
    .if_read(stream_math_stream_Loop_2_proc1_U0_ap_ready)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_reg_newret1_full_n <= 1'b0;
    end else begin
        if (((1'b1 == stream_math_stream_Block_proc_U0_ap_done) & (1'b1 == stream_math_stream_Block_proc_U0_ap_continue))) begin
            ap_reg_newret1_full_n <= 1'b0;
        end else if (((1'b1 == stream_math_stream_Block_proc_U0_ap_done) & (1'b1 == newret1_full_n))) begin
            ap_reg_newret1_full_n <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_reg_newret3_full_n <= 1'b0;
    end else begin
        if (((1'b1 == stream_math_stream_Block_proc_U0_ap_done) & (1'b1 == stream_math_stream_Block_proc_U0_ap_continue))) begin
            ap_reg_newret3_full_n <= 1'b0;
        end else if (((1'b1 == stream_math_stream_Block_proc_U0_ap_done) & (1'b1 == newret3_full_n))) begin
            ap_reg_newret3_full_n <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_reg_newret_full_n <= 1'b0;
    end else begin
        if (((1'b1 == stream_math_stream_Block_proc_U0_ap_done) & (1'b1 == stream_math_stream_Block_proc_U0_ap_continue))) begin
            ap_reg_newret_full_n <= 1'b0;
        end else if (((1'b1 == stream_math_stream_Block_proc_U0_ap_done) & (1'b1 == newret_full_n))) begin
            ap_reg_newret_full_n <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        stream_math_stream_Block_proc_U0_ap_start <= 1'b0;
    end else begin
        stream_math_stream_Block_proc_U0_ap_start <= 1'b1;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        stream_math_stream_stream_math_stream_entry25_U0_ap_start <= 1'b0;
    end else begin
        stream_math_stream_stream_math_stream_entry25_U0_ap_start <= 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_reg_newret_full_n)) begin
        ap_chn_write_stream_math_stream_Block_proc_U0_newret = 1'b0;
    end else begin
        ap_chn_write_stream_math_stream_Block_proc_U0_newret = stream_math_stream_Block_proc_U0_ap_done;
    end
end

always @ (*) begin
    if ((1'b1 == ap_reg_newret1_full_n)) begin
        ap_chn_write_stream_math_stream_Block_proc_U0_newret1 = 1'b0;
    end else begin
        ap_chn_write_stream_math_stream_Block_proc_U0_newret1 = stream_math_stream_Block_proc_U0_ap_done;
    end
end

always @ (*) begin
    if ((1'b1 == ap_reg_newret3_full_n)) begin
        ap_chn_write_stream_math_stream_Block_proc_U0_newret3 = 1'b0;
    end else begin
        ap_chn_write_stream_math_stream_Block_proc_U0_newret3 = stream_math_stream_Block_proc_U0_ap_done;
    end
end

always @ (*) begin
    if ((1'b0 == ap_reg_newret1_full_n)) begin
        ap_sig_newret1_full_n = newret1_full_n;
    end else begin
        ap_sig_newret1_full_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b0 == ap_reg_newret3_full_n)) begin
        ap_sig_newret3_full_n = newret3_full_n;
    end else begin
        ap_sig_newret3_full_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b0 == ap_reg_newret_full_n)) begin
        ap_sig_newret_full_n = newret_full_n;
    end else begin
        ap_sig_newret_full_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_newret_full_n) & (1'b1 == ap_sig_newret3_full_n) & (1'b1 == ap_sig_newret1_full_n))) begin
        stream_math_stream_Block_proc_U0_ap_continue = 1'b1;
    end else begin
        stream_math_stream_Block_proc_U0_ap_continue = 1'b0;
    end
end

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ap_sig_hs_continue = 1'b0;

assign in_stream_TREADY = stream_math_stream_Loop_1_proc_U0_in_stream_TREADY;

assign out_stream_TDATA = stream_math_stream_Loop_2_proc1_U0_out_stream_TDATA;

assign out_stream_TLAST = stream_math_stream_Loop_2_proc1_U0_out_stream_TLAST;

assign out_stream_TUSER = stream_math_stream_Loop_2_proc1_U0_out_stream_TUSER;

assign out_stream_TVALID = stream_math_stream_Loop_2_proc1_U0_out_stream_TVALID;

assign stream_math_stream_Loop_1_proc_U0_ap_continue = 1'b1;

assign stream_math_stream_Loop_1_proc_U0_ap_start = 1'b1;

assign stream_math_stream_Loop_2_proc1_U0_ap_continue = 1'b1;

assign stream_math_stream_Loop_2_proc1_U0_ap_start = (newret_empty_n & newret1_empty_n & newret3_empty_n);

assign stream_math_stream_stream_math_stream_entry25_U0_ap_continue = 1'b1;

assign stream_math_stream_stream_math_stream_entry3_U0_ap_continue = 1'b1;

assign stream_math_stream_stream_math_stream_entry3_U0_ap_start = 1'b1;

assign stream_math_stream_stream_math_stream_entry3_U0_cols_cast = {{cols[(ap_const_lv32_B - 32'd1) : ap_const_lv32_0]}};

assign stream_math_stream_stream_math_stream_entry3_U0_rows_cast = {{rows[(ap_const_lv32_B - 32'd1) : ap_const_lv32_0]}};

endmodule //stream_math_stream