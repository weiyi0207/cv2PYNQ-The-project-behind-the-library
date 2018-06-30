// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

// CONTROL_BUS
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x14 : Data signal of rows_V
//        bit 31~0 - rows_V[31:0] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of cols_V
//        bit 31~0 - cols_V[31:0] (Read/Write)
// 0x20 : reserved
// 0x24 : Data signal of channels_V
//        bit 31~0 - channels_V[31:0] (Read/Write)
// 0x28 : reserved
// 0x2c : Data signal of mode_V
//        bit 31~0 - mode_V[31:0] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of r11_V
//        bit 31~0 - r11_V[31:0] (Read/Write)
// 0x38 : reserved
// 0x3c : Data signal of r12_V
//        bit 31~0 - r12_V[31:0] (Read/Write)
// 0x40 : reserved
// 0x44 : Data signal of r13_V
//        bit 31~0 - r13_V[31:0] (Read/Write)
// 0x48 : reserved
// 0x4c : Data signal of r21_V
//        bit 31~0 - r21_V[31:0] (Read/Write)
// 0x50 : reserved
// 0x54 : Data signal of r22_V
//        bit 31~0 - r22_V[31:0] (Read/Write)
// 0x58 : reserved
// 0x5c : Data signal of r23_V
//        bit 31~0 - r23_V[31:0] (Read/Write)
// 0x60 : reserved
// 0x64 : Data signal of r31_V
//        bit 31~0 - r31_V[31:0] (Read/Write)
// 0x68 : reserved
// 0x6c : Data signal of r32_V
//        bit 31~0 - r32_V[31:0] (Read/Write)
// 0x70 : reserved
// 0x74 : Data signal of r33_V
//        bit 31~0 - r33_V[31:0] (Read/Write)
// 0x78 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XFILTER2D_F_CONTROL_BUS_ADDR_AP_CTRL         0x00
#define XFILTER2D_F_CONTROL_BUS_ADDR_GIE             0x04
#define XFILTER2D_F_CONTROL_BUS_ADDR_IER             0x08
#define XFILTER2D_F_CONTROL_BUS_ADDR_ISR             0x0c
#define XFILTER2D_F_CONTROL_BUS_ADDR_ROWS_V_DATA     0x14
#define XFILTER2D_F_CONTROL_BUS_BITS_ROWS_V_DATA     32
#define XFILTER2D_F_CONTROL_BUS_ADDR_COLS_V_DATA     0x1c
#define XFILTER2D_F_CONTROL_BUS_BITS_COLS_V_DATA     32
#define XFILTER2D_F_CONTROL_BUS_ADDR_CHANNELS_V_DATA 0x24
#define XFILTER2D_F_CONTROL_BUS_BITS_CHANNELS_V_DATA 32
#define XFILTER2D_F_CONTROL_BUS_ADDR_MODE_V_DATA     0x2c
#define XFILTER2D_F_CONTROL_BUS_BITS_MODE_V_DATA     32
#define XFILTER2D_F_CONTROL_BUS_ADDR_R11_V_DATA      0x34
#define XFILTER2D_F_CONTROL_BUS_BITS_R11_V_DATA      32
#define XFILTER2D_F_CONTROL_BUS_ADDR_R12_V_DATA      0x3c
#define XFILTER2D_F_CONTROL_BUS_BITS_R12_V_DATA      32
#define XFILTER2D_F_CONTROL_BUS_ADDR_R13_V_DATA      0x44
#define XFILTER2D_F_CONTROL_BUS_BITS_R13_V_DATA      32
#define XFILTER2D_F_CONTROL_BUS_ADDR_R21_V_DATA      0x4c
#define XFILTER2D_F_CONTROL_BUS_BITS_R21_V_DATA      32
#define XFILTER2D_F_CONTROL_BUS_ADDR_R22_V_DATA      0x54
#define XFILTER2D_F_CONTROL_BUS_BITS_R22_V_DATA      32
#define XFILTER2D_F_CONTROL_BUS_ADDR_R23_V_DATA      0x5c
#define XFILTER2D_F_CONTROL_BUS_BITS_R23_V_DATA      32
#define XFILTER2D_F_CONTROL_BUS_ADDR_R31_V_DATA      0x64
#define XFILTER2D_F_CONTROL_BUS_BITS_R31_V_DATA      32
#define XFILTER2D_F_CONTROL_BUS_ADDR_R32_V_DATA      0x6c
#define XFILTER2D_F_CONTROL_BUS_BITS_R32_V_DATA      32
#define XFILTER2D_F_CONTROL_BUS_ADDR_R33_V_DATA      0x74
#define XFILTER2D_F_CONTROL_BUS_BITS_R33_V_DATA      32
