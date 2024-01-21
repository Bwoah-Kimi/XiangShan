module LqPAddrModule(
  input         clock,
  input         io_wen_0,
  input         io_wen_1,
  input  [3:0]  io_waddr_0,
  input  [3:0]  io_waddr_1,
  input  [35:0] io_wdata_0,
  input  [35:0] io_wdata_1,
  input  [35:0] io_releaseMdata_1,
  output        io_releaseMmask_1_0,
  output        io_releaseMmask_1_1,
  output        io_releaseMmask_1_2,
  output        io_releaseMmask_1_3,
  output        io_releaseMmask_1_4,
  output        io_releaseMmask_1_5,
  output        io_releaseMmask_1_6,
  output        io_releaseMmask_1_7,
  output        io_releaseMmask_1_8,
  output        io_releaseMmask_1_9,
  output        io_releaseMmask_1_10,
  output        io_releaseMmask_1_11,
  output        io_releaseMmask_1_12,
  output        io_releaseMmask_1_13,
  output        io_releaseMmask_1_14,
  output        io_releaseMmask_1_15,
  input  [35:0] io_releaseViolationMdata_0,
  input  [35:0] io_releaseViolationMdata_1,
  output        io_releaseViolationMmask_0_0,
  output        io_releaseViolationMmask_0_1,
  output        io_releaseViolationMmask_0_2,
  output        io_releaseViolationMmask_0_3,
  output        io_releaseViolationMmask_0_4,
  output        io_releaseViolationMmask_0_5,
  output        io_releaseViolationMmask_0_6,
  output        io_releaseViolationMmask_0_7,
  output        io_releaseViolationMmask_0_8,
  output        io_releaseViolationMmask_0_9,
  output        io_releaseViolationMmask_0_10,
  output        io_releaseViolationMmask_0_11,
  output        io_releaseViolationMmask_0_12,
  output        io_releaseViolationMmask_0_13,
  output        io_releaseViolationMmask_0_14,
  output        io_releaseViolationMmask_0_15,
  output        io_releaseViolationMmask_1_0,
  output        io_releaseViolationMmask_1_1,
  output        io_releaseViolationMmask_1_2,
  output        io_releaseViolationMmask_1_3,
  output        io_releaseViolationMmask_1_4,
  output        io_releaseViolationMmask_1_5,
  output        io_releaseViolationMmask_1_6,
  output        io_releaseViolationMmask_1_7,
  output        io_releaseViolationMmask_1_8,
  output        io_releaseViolationMmask_1_9,
  output        io_releaseViolationMmask_1_10,
  output        io_releaseViolationMmask_1_11,
  output        io_releaseViolationMmask_1_12,
  output        io_releaseViolationMmask_1_13,
  output        io_releaseViolationMmask_1_14,
  output        io_releaseViolationMmask_1_15
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [63:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [63:0] _RAND_9;
  reg [63:0] _RAND_10;
  reg [63:0] _RAND_11;
  reg [63:0] _RAND_12;
  reg [63:0] _RAND_13;
  reg [63:0] _RAND_14;
  reg [63:0] _RAND_15;
`endif // RANDOMIZE_REG_INIT
  wire  sx_bankWriteAddrDec_delay_clock; // @[Hold.scala 97:23]
  wire [3:0] sx_bankWriteAddrDec_delay_io_in; // @[Hold.scala 97:23]
  wire [3:0] sx_bankWriteAddrDec_delay_io_out; // @[Hold.scala 97:23]
  wire  sx_bankWriteAddrDec_delay_1_clock; // @[Hold.scala 97:23]
  wire [3:0] sx_bankWriteAddrDec_delay_1_io_in; // @[Hold.scala 97:23]
  wire [3:0] sx_bankWriteAddrDec_delay_1_io_out; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_clock; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_io_in; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_io_out; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_1_clock; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_1_io_in; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_1_io_out; // @[Hold.scala 97:23]
  wire  sx_writeData_delay_clock; // @[Hold.scala 97:23]
  wire [35:0] sx_writeData_delay_io_in; // @[Hold.scala 97:23]
  wire [35:0] sx_writeData_delay_io_out; // @[Hold.scala 97:23]
  wire  sx_writeData_delay_1_clock; // @[Hold.scala 97:23]
  wire [35:0] sx_writeData_delay_1_io_in; // @[Hold.scala 97:23]
  wire [35:0] sx_writeData_delay_1_io_out; // @[Hold.scala 97:23]
  wire  sx_bankWriteAddrDec_delay_2_clock; // @[Hold.scala 97:23]
  wire [3:0] sx_bankWriteAddrDec_delay_2_io_in; // @[Hold.scala 97:23]
  wire [3:0] sx_bankWriteAddrDec_delay_2_io_out; // @[Hold.scala 97:23]
  wire  sx_bankWriteAddrDec_delay_3_clock; // @[Hold.scala 97:23]
  wire [3:0] sx_bankWriteAddrDec_delay_3_io_in; // @[Hold.scala 97:23]
  wire [3:0] sx_bankWriteAddrDec_delay_3_io_out; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_2_clock; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_2_io_in; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_2_io_out; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_3_clock; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_3_io_in; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_3_io_out; // @[Hold.scala 97:23]
  wire  sx_writeData_delay_2_clock; // @[Hold.scala 97:23]
  wire [35:0] sx_writeData_delay_2_io_in; // @[Hold.scala 97:23]
  wire [35:0] sx_writeData_delay_2_io_out; // @[Hold.scala 97:23]
  wire  sx_writeData_delay_3_clock; // @[Hold.scala 97:23]
  wire [35:0] sx_writeData_delay_3_io_in; // @[Hold.scala 97:23]
  wire [35:0] sx_writeData_delay_3_io_out; // @[Hold.scala 97:23]
  wire  sx_bankWriteAddrDec_delay_4_clock; // @[Hold.scala 97:23]
  wire [3:0] sx_bankWriteAddrDec_delay_4_io_in; // @[Hold.scala 97:23]
  wire [3:0] sx_bankWriteAddrDec_delay_4_io_out; // @[Hold.scala 97:23]
  wire  sx_bankWriteAddrDec_delay_5_clock; // @[Hold.scala 97:23]
  wire [3:0] sx_bankWriteAddrDec_delay_5_io_in; // @[Hold.scala 97:23]
  wire [3:0] sx_bankWriteAddrDec_delay_5_io_out; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_4_clock; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_4_io_in; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_4_io_out; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_5_clock; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_5_io_in; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_5_io_out; // @[Hold.scala 97:23]
  wire  sx_writeData_delay_4_clock; // @[Hold.scala 97:23]
  wire [35:0] sx_writeData_delay_4_io_in; // @[Hold.scala 97:23]
  wire [35:0] sx_writeData_delay_4_io_out; // @[Hold.scala 97:23]
  wire  sx_writeData_delay_5_clock; // @[Hold.scala 97:23]
  wire [35:0] sx_writeData_delay_5_io_in; // @[Hold.scala 97:23]
  wire [35:0] sx_writeData_delay_5_io_out; // @[Hold.scala 97:23]
  wire  sx_bankWriteAddrDec_delay_6_clock; // @[Hold.scala 97:23]
  wire [3:0] sx_bankWriteAddrDec_delay_6_io_in; // @[Hold.scala 97:23]
  wire [3:0] sx_bankWriteAddrDec_delay_6_io_out; // @[Hold.scala 97:23]
  wire  sx_bankWriteAddrDec_delay_7_clock; // @[Hold.scala 97:23]
  wire [3:0] sx_bankWriteAddrDec_delay_7_io_in; // @[Hold.scala 97:23]
  wire [3:0] sx_bankWriteAddrDec_delay_7_io_out; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_6_clock; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_6_io_in; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_6_io_out; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_7_clock; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_7_io_in; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_7_io_out; // @[Hold.scala 97:23]
  wire  sx_writeData_delay_6_clock; // @[Hold.scala 97:23]
  wire [35:0] sx_writeData_delay_6_io_in; // @[Hold.scala 97:23]
  wire [35:0] sx_writeData_delay_6_io_out; // @[Hold.scala 97:23]
  wire  sx_writeData_delay_7_clock; // @[Hold.scala 97:23]
  wire [35:0] sx_writeData_delay_7_io_in; // @[Hold.scala 97:23]
  wire [35:0] sx_writeData_delay_7_io_out; // @[Hold.scala 97:23]
  reg [35:0] data_0; // @[LoadQueueData.scala 58:17]
  reg [35:0] data_1; // @[LoadQueueData.scala 58:17]
  reg [35:0] data_2; // @[LoadQueueData.scala 58:17]
  reg [35:0] data_3; // @[LoadQueueData.scala 58:17]
  reg [35:0] data_4; // @[LoadQueueData.scala 58:17]
  reg [35:0] data_5; // @[LoadQueueData.scala 58:17]
  reg [35:0] data_6; // @[LoadQueueData.scala 58:17]
  reg [35:0] data_7; // @[LoadQueueData.scala 58:17]
  reg [35:0] data_8; // @[LoadQueueData.scala 58:17]
  reg [35:0] data_9; // @[LoadQueueData.scala 58:17]
  reg [35:0] data_10; // @[LoadQueueData.scala 58:17]
  reg [35:0] data_11; // @[LoadQueueData.scala 58:17]
  reg [35:0] data_12; // @[LoadQueueData.scala 58:17]
  reg [35:0] data_13; // @[LoadQueueData.scala 58:17]
  reg [35:0] data_14; // @[LoadQueueData.scala 58:17]
  reg [35:0] data_15; // @[LoadQueueData.scala 58:17]
  wire [15:0] writeAddrDec_0 = 16'h1 << io_waddr_0; // @[OneHot.scala 57:35]
  wire [15:0] writeAddrDec_1 = 16'h1 << io_waddr_1; // @[OneHot.scala 57:35]
  wire [3:0] s0_bankWriteAddrDec0_0 = writeAddrDec_0[3:0]; // @[LoadQueueData.scala 67:7]
  wire [3:0] s0_bankWriteAddrDec0_1 = writeAddrDec_1[3:0]; // @[LoadQueueData.scala 67:7]
  wire  sx_entryWriteEnVec0_0_0 = sx_bankWriteEn_delay_io_out & sx_bankWriteAddrDec_delay_io_out[0]; // @[LoadQueueData.scala 97:86]
  wire  sx_entryWriteEnVec0_0_1 = sx_bankWriteEn_delay_1_io_out & sx_bankWriteAddrDec_delay_1_io_out[0]; // @[LoadQueueData.scala 97:86]
  wire [1:0] _sx_entryWriteEn_T = {sx_entryWriteEnVec0_0_1,sx_entryWriteEnVec0_0_0}; // @[LoadQueueData.scala 98:57]
  wire  sx_entryWriteEn0_0 = |_sx_entryWriteEn_T; // @[LoadQueueData.scala 98:64]
  wire [35:0] _sx_entryWriteData_T = sx_entryWriteEnVec0_0_0 ? sx_writeData_delay_io_out : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _sx_entryWriteData_T_1 = sx_entryWriteEnVec0_0_1 ? sx_writeData_delay_1_io_out : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] sx_entryWriteData0_0 = _sx_entryWriteData_T | _sx_entryWriteData_T_1; // @[Mux.scala 27:73]
  wire  sx_entryWriteEnVec0_1_0 = sx_bankWriteEn_delay_io_out & sx_bankWriteAddrDec_delay_io_out[1]; // @[LoadQueueData.scala 97:86]
  wire  sx_entryWriteEnVec0_1_1 = sx_bankWriteEn_delay_1_io_out & sx_bankWriteAddrDec_delay_1_io_out[1]; // @[LoadQueueData.scala 97:86]
  wire [1:0] _sx_entryWriteEn_T_1 = {sx_entryWriteEnVec0_1_1,sx_entryWriteEnVec0_1_0}; // @[LoadQueueData.scala 98:57]
  wire  sx_entryWriteEn0_1 = |_sx_entryWriteEn_T_1; // @[LoadQueueData.scala 98:64]
  wire [35:0] _sx_entryWriteData_T_3 = sx_entryWriteEnVec0_1_0 ? sx_writeData_delay_io_out : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _sx_entryWriteData_T_4 = sx_entryWriteEnVec0_1_1 ? sx_writeData_delay_1_io_out : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] sx_entryWriteData0_1 = _sx_entryWriteData_T_3 | _sx_entryWriteData_T_4; // @[Mux.scala 27:73]
  wire  sx_entryWriteEnVec0_2_0 = sx_bankWriteEn_delay_io_out & sx_bankWriteAddrDec_delay_io_out[2]; // @[LoadQueueData.scala 97:86]
  wire  sx_entryWriteEnVec0_2_1 = sx_bankWriteEn_delay_1_io_out & sx_bankWriteAddrDec_delay_1_io_out[2]; // @[LoadQueueData.scala 97:86]
  wire [1:0] _sx_entryWriteEn_T_2 = {sx_entryWriteEnVec0_2_1,sx_entryWriteEnVec0_2_0}; // @[LoadQueueData.scala 98:57]
  wire  sx_entryWriteEn0_2 = |_sx_entryWriteEn_T_2; // @[LoadQueueData.scala 98:64]
  wire [35:0] _sx_entryWriteData_T_6 = sx_entryWriteEnVec0_2_0 ? sx_writeData_delay_io_out : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _sx_entryWriteData_T_7 = sx_entryWriteEnVec0_2_1 ? sx_writeData_delay_1_io_out : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] sx_entryWriteData0_2 = _sx_entryWriteData_T_6 | _sx_entryWriteData_T_7; // @[Mux.scala 27:73]
  wire  sx_entryWriteEnVec0_3_0 = sx_bankWriteEn_delay_io_out & sx_bankWriteAddrDec_delay_io_out[3]; // @[LoadQueueData.scala 97:86]
  wire  sx_entryWriteEnVec0_3_1 = sx_bankWriteEn_delay_1_io_out & sx_bankWriteAddrDec_delay_1_io_out[3]; // @[LoadQueueData.scala 97:86]
  wire [1:0] _sx_entryWriteEn_T_3 = {sx_entryWriteEnVec0_3_1,sx_entryWriteEnVec0_3_0}; // @[LoadQueueData.scala 98:57]
  wire  sx_entryWriteEn0_3 = |_sx_entryWriteEn_T_3; // @[LoadQueueData.scala 98:64]
  wire [35:0] _sx_entryWriteData_T_9 = sx_entryWriteEnVec0_3_0 ? sx_writeData_delay_io_out : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _sx_entryWriteData_T_10 = sx_entryWriteEnVec0_3_1 ? sx_writeData_delay_1_io_out : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] sx_entryWriteData0_3 = _sx_entryWriteData_T_9 | _sx_entryWriteData_T_10; // @[Mux.scala 27:73]
  wire [3:0] s0_bankWriteAddrDec1_0 = writeAddrDec_0[7:4]; // @[LoadQueueData.scala 67:7]
  wire [3:0] s0_bankWriteAddrDec1_1 = writeAddrDec_1[7:4]; // @[LoadQueueData.scala 67:7]
  wire  sx_entryWriteEnVec1_0_0 = sx_bankWriteEn_delay_2_io_out & sx_bankWriteAddrDec_delay_2_io_out[0]; // @[LoadQueueData.scala 97:86]
  wire  sx_entryWriteEnVec1_0_1 = sx_bankWriteEn_delay_3_io_out & sx_bankWriteAddrDec_delay_3_io_out[0]; // @[LoadQueueData.scala 97:86]
  wire [1:0] _sx_entryWriteEn_T_4 = {sx_entryWriteEnVec1_0_1,sx_entryWriteEnVec1_0_0}; // @[LoadQueueData.scala 98:57]
  wire  sx_entryWriteEn1_0 = |_sx_entryWriteEn_T_4; // @[LoadQueueData.scala 98:64]
  wire [35:0] _sx_entryWriteData_T_12 = sx_entryWriteEnVec1_0_0 ? sx_writeData_delay_2_io_out : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _sx_entryWriteData_T_13 = sx_entryWriteEnVec1_0_1 ? sx_writeData_delay_3_io_out : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] sx_entryWriteData1_0 = _sx_entryWriteData_T_12 | _sx_entryWriteData_T_13; // @[Mux.scala 27:73]
  wire  sx_entryWriteEnVec1_1_0 = sx_bankWriteEn_delay_2_io_out & sx_bankWriteAddrDec_delay_2_io_out[1]; // @[LoadQueueData.scala 97:86]
  wire  sx_entryWriteEnVec1_1_1 = sx_bankWriteEn_delay_3_io_out & sx_bankWriteAddrDec_delay_3_io_out[1]; // @[LoadQueueData.scala 97:86]
  wire [1:0] _sx_entryWriteEn_T_5 = {sx_entryWriteEnVec1_1_1,sx_entryWriteEnVec1_1_0}; // @[LoadQueueData.scala 98:57]
  wire  sx_entryWriteEn1_1 = |_sx_entryWriteEn_T_5; // @[LoadQueueData.scala 98:64]
  wire [35:0] _sx_entryWriteData_T_15 = sx_entryWriteEnVec1_1_0 ? sx_writeData_delay_2_io_out : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _sx_entryWriteData_T_16 = sx_entryWriteEnVec1_1_1 ? sx_writeData_delay_3_io_out : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] sx_entryWriteData1_1 = _sx_entryWriteData_T_15 | _sx_entryWriteData_T_16; // @[Mux.scala 27:73]
  wire  sx_entryWriteEnVec1_2_0 = sx_bankWriteEn_delay_2_io_out & sx_bankWriteAddrDec_delay_2_io_out[2]; // @[LoadQueueData.scala 97:86]
  wire  sx_entryWriteEnVec1_2_1 = sx_bankWriteEn_delay_3_io_out & sx_bankWriteAddrDec_delay_3_io_out[2]; // @[LoadQueueData.scala 97:86]
  wire [1:0] _sx_entryWriteEn_T_6 = {sx_entryWriteEnVec1_2_1,sx_entryWriteEnVec1_2_0}; // @[LoadQueueData.scala 98:57]
  wire  sx_entryWriteEn1_2 = |_sx_entryWriteEn_T_6; // @[LoadQueueData.scala 98:64]
  wire [35:0] _sx_entryWriteData_T_18 = sx_entryWriteEnVec1_2_0 ? sx_writeData_delay_2_io_out : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _sx_entryWriteData_T_19 = sx_entryWriteEnVec1_2_1 ? sx_writeData_delay_3_io_out : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] sx_entryWriteData1_2 = _sx_entryWriteData_T_18 | _sx_entryWriteData_T_19; // @[Mux.scala 27:73]
  wire  sx_entryWriteEnVec1_3_0 = sx_bankWriteEn_delay_2_io_out & sx_bankWriteAddrDec_delay_2_io_out[3]; // @[LoadQueueData.scala 97:86]
  wire  sx_entryWriteEnVec1_3_1 = sx_bankWriteEn_delay_3_io_out & sx_bankWriteAddrDec_delay_3_io_out[3]; // @[LoadQueueData.scala 97:86]
  wire [1:0] _sx_entryWriteEn_T_7 = {sx_entryWriteEnVec1_3_1,sx_entryWriteEnVec1_3_0}; // @[LoadQueueData.scala 98:57]
  wire  sx_entryWriteEn1_3 = |_sx_entryWriteEn_T_7; // @[LoadQueueData.scala 98:64]
  wire [35:0] _sx_entryWriteData_T_21 = sx_entryWriteEnVec1_3_0 ? sx_writeData_delay_2_io_out : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _sx_entryWriteData_T_22 = sx_entryWriteEnVec1_3_1 ? sx_writeData_delay_3_io_out : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] sx_entryWriteData1_3 = _sx_entryWriteData_T_21 | _sx_entryWriteData_T_22; // @[Mux.scala 27:73]
  wire [3:0] s0_bankWriteAddrDec2_0 = writeAddrDec_0[11:8]; // @[LoadQueueData.scala 67:7]
  wire [3:0] s0_bankWriteAddrDec2_1 = writeAddrDec_1[11:8]; // @[LoadQueueData.scala 67:7]
  wire  sx_entryWriteEnVec2_0_0 = sx_bankWriteEn_delay_4_io_out & sx_bankWriteAddrDec_delay_4_io_out[0]; // @[LoadQueueData.scala 97:86]
  wire  sx_entryWriteEnVec2_0_1 = sx_bankWriteEn_delay_5_io_out & sx_bankWriteAddrDec_delay_5_io_out[0]; // @[LoadQueueData.scala 97:86]
  wire [1:0] _sx_entryWriteEn_T_8 = {sx_entryWriteEnVec2_0_1,sx_entryWriteEnVec2_0_0}; // @[LoadQueueData.scala 98:57]
  wire  sx_entryWriteEn2_0 = |_sx_entryWriteEn_T_8; // @[LoadQueueData.scala 98:64]
  wire [35:0] _sx_entryWriteData_T_24 = sx_entryWriteEnVec2_0_0 ? sx_writeData_delay_4_io_out : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _sx_entryWriteData_T_25 = sx_entryWriteEnVec2_0_1 ? sx_writeData_delay_5_io_out : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] sx_entryWriteData2_0 = _sx_entryWriteData_T_24 | _sx_entryWriteData_T_25; // @[Mux.scala 27:73]
  wire  sx_entryWriteEnVec2_1_0 = sx_bankWriteEn_delay_4_io_out & sx_bankWriteAddrDec_delay_4_io_out[1]; // @[LoadQueueData.scala 97:86]
  wire  sx_entryWriteEnVec2_1_1 = sx_bankWriteEn_delay_5_io_out & sx_bankWriteAddrDec_delay_5_io_out[1]; // @[LoadQueueData.scala 97:86]
  wire [1:0] _sx_entryWriteEn_T_9 = {sx_entryWriteEnVec2_1_1,sx_entryWriteEnVec2_1_0}; // @[LoadQueueData.scala 98:57]
  wire  sx_entryWriteEn2_1 = |_sx_entryWriteEn_T_9; // @[LoadQueueData.scala 98:64]
  wire [35:0] _sx_entryWriteData_T_27 = sx_entryWriteEnVec2_1_0 ? sx_writeData_delay_4_io_out : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _sx_entryWriteData_T_28 = sx_entryWriteEnVec2_1_1 ? sx_writeData_delay_5_io_out : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] sx_entryWriteData2_1 = _sx_entryWriteData_T_27 | _sx_entryWriteData_T_28; // @[Mux.scala 27:73]
  wire  sx_entryWriteEnVec2_2_0 = sx_bankWriteEn_delay_4_io_out & sx_bankWriteAddrDec_delay_4_io_out[2]; // @[LoadQueueData.scala 97:86]
  wire  sx_entryWriteEnVec2_2_1 = sx_bankWriteEn_delay_5_io_out & sx_bankWriteAddrDec_delay_5_io_out[2]; // @[LoadQueueData.scala 97:86]
  wire [1:0] _sx_entryWriteEn_T_10 = {sx_entryWriteEnVec2_2_1,sx_entryWriteEnVec2_2_0}; // @[LoadQueueData.scala 98:57]
  wire  sx_entryWriteEn2_2 = |_sx_entryWriteEn_T_10; // @[LoadQueueData.scala 98:64]
  wire [35:0] _sx_entryWriteData_T_30 = sx_entryWriteEnVec2_2_0 ? sx_writeData_delay_4_io_out : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _sx_entryWriteData_T_31 = sx_entryWriteEnVec2_2_1 ? sx_writeData_delay_5_io_out : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] sx_entryWriteData2_2 = _sx_entryWriteData_T_30 | _sx_entryWriteData_T_31; // @[Mux.scala 27:73]
  wire  sx_entryWriteEnVec2_3_0 = sx_bankWriteEn_delay_4_io_out & sx_bankWriteAddrDec_delay_4_io_out[3]; // @[LoadQueueData.scala 97:86]
  wire  sx_entryWriteEnVec2_3_1 = sx_bankWriteEn_delay_5_io_out & sx_bankWriteAddrDec_delay_5_io_out[3]; // @[LoadQueueData.scala 97:86]
  wire [1:0] _sx_entryWriteEn_T_11 = {sx_entryWriteEnVec2_3_1,sx_entryWriteEnVec2_3_0}; // @[LoadQueueData.scala 98:57]
  wire  sx_entryWriteEn2_3 = |_sx_entryWriteEn_T_11; // @[LoadQueueData.scala 98:64]
  wire [35:0] _sx_entryWriteData_T_33 = sx_entryWriteEnVec2_3_0 ? sx_writeData_delay_4_io_out : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _sx_entryWriteData_T_34 = sx_entryWriteEnVec2_3_1 ? sx_writeData_delay_5_io_out : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] sx_entryWriteData2_3 = _sx_entryWriteData_T_33 | _sx_entryWriteData_T_34; // @[Mux.scala 27:73]
  wire [3:0] s0_bankWriteAddrDec3_0 = writeAddrDec_0[15:12]; // @[LoadQueueData.scala 67:7]
  wire [3:0] s0_bankWriteAddrDec3_1 = writeAddrDec_1[15:12]; // @[LoadQueueData.scala 67:7]
  wire  sx_entryWriteEnVec3_0_0 = sx_bankWriteEn_delay_6_io_out & sx_bankWriteAddrDec_delay_6_io_out[0]; // @[LoadQueueData.scala 97:86]
  wire  sx_entryWriteEnVec3_0_1 = sx_bankWriteEn_delay_7_io_out & sx_bankWriteAddrDec_delay_7_io_out[0]; // @[LoadQueueData.scala 97:86]
  wire [1:0] _sx_entryWriteEn_T_12 = {sx_entryWriteEnVec3_0_1,sx_entryWriteEnVec3_0_0}; // @[LoadQueueData.scala 98:57]
  wire  sx_entryWriteEn3_0 = |_sx_entryWriteEn_T_12; // @[LoadQueueData.scala 98:64]
  wire [35:0] _sx_entryWriteData_T_36 = sx_entryWriteEnVec3_0_0 ? sx_writeData_delay_6_io_out : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _sx_entryWriteData_T_37 = sx_entryWriteEnVec3_0_1 ? sx_writeData_delay_7_io_out : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] sx_entryWriteData3_0 = _sx_entryWriteData_T_36 | _sx_entryWriteData_T_37; // @[Mux.scala 27:73]
  wire  sx_entryWriteEnVec3_1_0 = sx_bankWriteEn_delay_6_io_out & sx_bankWriteAddrDec_delay_6_io_out[1]; // @[LoadQueueData.scala 97:86]
  wire  sx_entryWriteEnVec3_1_1 = sx_bankWriteEn_delay_7_io_out & sx_bankWriteAddrDec_delay_7_io_out[1]; // @[LoadQueueData.scala 97:86]
  wire [1:0] _sx_entryWriteEn_T_13 = {sx_entryWriteEnVec3_1_1,sx_entryWriteEnVec3_1_0}; // @[LoadQueueData.scala 98:57]
  wire  sx_entryWriteEn3_1 = |_sx_entryWriteEn_T_13; // @[LoadQueueData.scala 98:64]
  wire [35:0] _sx_entryWriteData_T_39 = sx_entryWriteEnVec3_1_0 ? sx_writeData_delay_6_io_out : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _sx_entryWriteData_T_40 = sx_entryWriteEnVec3_1_1 ? sx_writeData_delay_7_io_out : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] sx_entryWriteData3_1 = _sx_entryWriteData_T_39 | _sx_entryWriteData_T_40; // @[Mux.scala 27:73]
  wire  sx_entryWriteEnVec3_2_0 = sx_bankWriteEn_delay_6_io_out & sx_bankWriteAddrDec_delay_6_io_out[2]; // @[LoadQueueData.scala 97:86]
  wire  sx_entryWriteEnVec3_2_1 = sx_bankWriteEn_delay_7_io_out & sx_bankWriteAddrDec_delay_7_io_out[2]; // @[LoadQueueData.scala 97:86]
  wire [1:0] _sx_entryWriteEn_T_14 = {sx_entryWriteEnVec3_2_1,sx_entryWriteEnVec3_2_0}; // @[LoadQueueData.scala 98:57]
  wire  sx_entryWriteEn3_2 = |_sx_entryWriteEn_T_14; // @[LoadQueueData.scala 98:64]
  wire [35:0] _sx_entryWriteData_T_42 = sx_entryWriteEnVec3_2_0 ? sx_writeData_delay_6_io_out : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _sx_entryWriteData_T_43 = sx_entryWriteEnVec3_2_1 ? sx_writeData_delay_7_io_out : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] sx_entryWriteData3_2 = _sx_entryWriteData_T_42 | _sx_entryWriteData_T_43; // @[Mux.scala 27:73]
  wire  sx_entryWriteEnVec3_3_0 = sx_bankWriteEn_delay_6_io_out & sx_bankWriteAddrDec_delay_6_io_out[3]; // @[LoadQueueData.scala 97:86]
  wire  sx_entryWriteEnVec3_3_1 = sx_bankWriteEn_delay_7_io_out & sx_bankWriteAddrDec_delay_7_io_out[3]; // @[LoadQueueData.scala 97:86]
  wire [1:0] _sx_entryWriteEn_T_15 = {sx_entryWriteEnVec3_3_1,sx_entryWriteEnVec3_3_0}; // @[LoadQueueData.scala 98:57]
  wire  sx_entryWriteEn3_3 = |_sx_entryWriteEn_T_15; // @[LoadQueueData.scala 98:64]
  wire [35:0] _sx_entryWriteData_T_45 = sx_entryWriteEnVec3_3_0 ? sx_writeData_delay_6_io_out : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _sx_entryWriteData_T_46 = sx_entryWriteEnVec3_3_1 ? sx_writeData_delay_7_io_out : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] sx_entryWriteData3_3 = _sx_entryWriteData_T_45 | _sx_entryWriteData_T_46; // @[Mux.scala 27:73]
  DelayN_35 sx_bankWriteAddrDec_delay ( // @[Hold.scala 97:23]
    .clock(sx_bankWriteAddrDec_delay_clock),
    .io_in(sx_bankWriteAddrDec_delay_io_in),
    .io_out(sx_bankWriteAddrDec_delay_io_out)
  );
  DelayN_35 sx_bankWriteAddrDec_delay_1 ( // @[Hold.scala 97:23]
    .clock(sx_bankWriteAddrDec_delay_1_clock),
    .io_in(sx_bankWriteAddrDec_delay_1_io_in),
    .io_out(sx_bankWriteAddrDec_delay_1_io_out)
  );
  DelayN_37 sx_bankWriteEn_delay ( // @[Hold.scala 97:23]
    .clock(sx_bankWriteEn_delay_clock),
    .io_in(sx_bankWriteEn_delay_io_in),
    .io_out(sx_bankWriteEn_delay_io_out)
  );
  DelayN_37 sx_bankWriteEn_delay_1 ( // @[Hold.scala 97:23]
    .clock(sx_bankWriteEn_delay_1_clock),
    .io_in(sx_bankWriteEn_delay_1_io_in),
    .io_out(sx_bankWriteEn_delay_1_io_out)
  );
  DelayN_39 sx_writeData_delay ( // @[Hold.scala 97:23]
    .clock(sx_writeData_delay_clock),
    .io_in(sx_writeData_delay_io_in),
    .io_out(sx_writeData_delay_io_out)
  );
  DelayN_39 sx_writeData_delay_1 ( // @[Hold.scala 97:23]
    .clock(sx_writeData_delay_1_clock),
    .io_in(sx_writeData_delay_1_io_in),
    .io_out(sx_writeData_delay_1_io_out)
  );
  DelayN_35 sx_bankWriteAddrDec_delay_2 ( // @[Hold.scala 97:23]
    .clock(sx_bankWriteAddrDec_delay_2_clock),
    .io_in(sx_bankWriteAddrDec_delay_2_io_in),
    .io_out(sx_bankWriteAddrDec_delay_2_io_out)
  );
  DelayN_35 sx_bankWriteAddrDec_delay_3 ( // @[Hold.scala 97:23]
    .clock(sx_bankWriteAddrDec_delay_3_clock),
    .io_in(sx_bankWriteAddrDec_delay_3_io_in),
    .io_out(sx_bankWriteAddrDec_delay_3_io_out)
  );
  DelayN_37 sx_bankWriteEn_delay_2 ( // @[Hold.scala 97:23]
    .clock(sx_bankWriteEn_delay_2_clock),
    .io_in(sx_bankWriteEn_delay_2_io_in),
    .io_out(sx_bankWriteEn_delay_2_io_out)
  );
  DelayN_37 sx_bankWriteEn_delay_3 ( // @[Hold.scala 97:23]
    .clock(sx_bankWriteEn_delay_3_clock),
    .io_in(sx_bankWriteEn_delay_3_io_in),
    .io_out(sx_bankWriteEn_delay_3_io_out)
  );
  DelayN_39 sx_writeData_delay_2 ( // @[Hold.scala 97:23]
    .clock(sx_writeData_delay_2_clock),
    .io_in(sx_writeData_delay_2_io_in),
    .io_out(sx_writeData_delay_2_io_out)
  );
  DelayN_39 sx_writeData_delay_3 ( // @[Hold.scala 97:23]
    .clock(sx_writeData_delay_3_clock),
    .io_in(sx_writeData_delay_3_io_in),
    .io_out(sx_writeData_delay_3_io_out)
  );
  DelayN_35 sx_bankWriteAddrDec_delay_4 ( // @[Hold.scala 97:23]
    .clock(sx_bankWriteAddrDec_delay_4_clock),
    .io_in(sx_bankWriteAddrDec_delay_4_io_in),
    .io_out(sx_bankWriteAddrDec_delay_4_io_out)
  );
  DelayN_35 sx_bankWriteAddrDec_delay_5 ( // @[Hold.scala 97:23]
    .clock(sx_bankWriteAddrDec_delay_5_clock),
    .io_in(sx_bankWriteAddrDec_delay_5_io_in),
    .io_out(sx_bankWriteAddrDec_delay_5_io_out)
  );
  DelayN_37 sx_bankWriteEn_delay_4 ( // @[Hold.scala 97:23]
    .clock(sx_bankWriteEn_delay_4_clock),
    .io_in(sx_bankWriteEn_delay_4_io_in),
    .io_out(sx_bankWriteEn_delay_4_io_out)
  );
  DelayN_37 sx_bankWriteEn_delay_5 ( // @[Hold.scala 97:23]
    .clock(sx_bankWriteEn_delay_5_clock),
    .io_in(sx_bankWriteEn_delay_5_io_in),
    .io_out(sx_bankWriteEn_delay_5_io_out)
  );
  DelayN_39 sx_writeData_delay_4 ( // @[Hold.scala 97:23]
    .clock(sx_writeData_delay_4_clock),
    .io_in(sx_writeData_delay_4_io_in),
    .io_out(sx_writeData_delay_4_io_out)
  );
  DelayN_39 sx_writeData_delay_5 ( // @[Hold.scala 97:23]
    .clock(sx_writeData_delay_5_clock),
    .io_in(sx_writeData_delay_5_io_in),
    .io_out(sx_writeData_delay_5_io_out)
  );
  DelayN_35 sx_bankWriteAddrDec_delay_6 ( // @[Hold.scala 97:23]
    .clock(sx_bankWriteAddrDec_delay_6_clock),
    .io_in(sx_bankWriteAddrDec_delay_6_io_in),
    .io_out(sx_bankWriteAddrDec_delay_6_io_out)
  );
  DelayN_35 sx_bankWriteAddrDec_delay_7 ( // @[Hold.scala 97:23]
    .clock(sx_bankWriteAddrDec_delay_7_clock),
    .io_in(sx_bankWriteAddrDec_delay_7_io_in),
    .io_out(sx_bankWriteAddrDec_delay_7_io_out)
  );
  DelayN_37 sx_bankWriteEn_delay_6 ( // @[Hold.scala 97:23]
    .clock(sx_bankWriteEn_delay_6_clock),
    .io_in(sx_bankWriteEn_delay_6_io_in),
    .io_out(sx_bankWriteEn_delay_6_io_out)
  );
  DelayN_37 sx_bankWriteEn_delay_7 ( // @[Hold.scala 97:23]
    .clock(sx_bankWriteEn_delay_7_clock),
    .io_in(sx_bankWriteEn_delay_7_io_in),
    .io_out(sx_bankWriteEn_delay_7_io_out)
  );
  DelayN_39 sx_writeData_delay_6 ( // @[Hold.scala 97:23]
    .clock(sx_writeData_delay_6_clock),
    .io_in(sx_writeData_delay_6_io_in),
    .io_out(sx_writeData_delay_6_io_out)
  );
  DelayN_39 sx_writeData_delay_7 ( // @[Hold.scala 97:23]
    .clock(sx_writeData_delay_7_clock),
    .io_in(sx_writeData_delay_7_io_in),
    .io_out(sx_writeData_delay_7_io_out)
  );
  assign io_releaseMmask_1_0 = io_releaseMdata_1[35:6] == data_0[35:6]; // @[LoadQueueData.scala 150:82]
  assign io_releaseMmask_1_1 = io_releaseMdata_1[35:6] == data_1[35:6]; // @[LoadQueueData.scala 150:82]
  assign io_releaseMmask_1_2 = io_releaseMdata_1[35:6] == data_2[35:6]; // @[LoadQueueData.scala 150:82]
  assign io_releaseMmask_1_3 = io_releaseMdata_1[35:6] == data_3[35:6]; // @[LoadQueueData.scala 150:82]
  assign io_releaseMmask_1_4 = io_releaseMdata_1[35:6] == data_4[35:6]; // @[LoadQueueData.scala 150:82]
  assign io_releaseMmask_1_5 = io_releaseMdata_1[35:6] == data_5[35:6]; // @[LoadQueueData.scala 150:82]
  assign io_releaseMmask_1_6 = io_releaseMdata_1[35:6] == data_6[35:6]; // @[LoadQueueData.scala 150:82]
  assign io_releaseMmask_1_7 = io_releaseMdata_1[35:6] == data_7[35:6]; // @[LoadQueueData.scala 150:82]
  assign io_releaseMmask_1_8 = io_releaseMdata_1[35:6] == data_8[35:6]; // @[LoadQueueData.scala 150:82]
  assign io_releaseMmask_1_9 = io_releaseMdata_1[35:6] == data_9[35:6]; // @[LoadQueueData.scala 150:82]
  assign io_releaseMmask_1_10 = io_releaseMdata_1[35:6] == data_10[35:6]; // @[LoadQueueData.scala 150:82]
  assign io_releaseMmask_1_11 = io_releaseMdata_1[35:6] == data_11[35:6]; // @[LoadQueueData.scala 150:82]
  assign io_releaseMmask_1_12 = io_releaseMdata_1[35:6] == data_12[35:6]; // @[LoadQueueData.scala 150:82]
  assign io_releaseMmask_1_13 = io_releaseMdata_1[35:6] == data_13[35:6]; // @[LoadQueueData.scala 150:82]
  assign io_releaseMmask_1_14 = io_releaseMdata_1[35:6] == data_14[35:6]; // @[LoadQueueData.scala 150:82]
  assign io_releaseMmask_1_15 = io_releaseMdata_1[35:6] == data_15[35:6]; // @[LoadQueueData.scala 150:82]
  assign io_releaseViolationMmask_0_0 = io_releaseViolationMdata_0[35:6] == data_0[35:6]; // @[LoadQueueData.scala 142:100]
  assign io_releaseViolationMmask_0_1 = io_releaseViolationMdata_0[35:6] == data_1[35:6]; // @[LoadQueueData.scala 142:100]
  assign io_releaseViolationMmask_0_2 = io_releaseViolationMdata_0[35:6] == data_2[35:6]; // @[LoadQueueData.scala 142:100]
  assign io_releaseViolationMmask_0_3 = io_releaseViolationMdata_0[35:6] == data_3[35:6]; // @[LoadQueueData.scala 142:100]
  assign io_releaseViolationMmask_0_4 = io_releaseViolationMdata_0[35:6] == data_4[35:6]; // @[LoadQueueData.scala 142:100]
  assign io_releaseViolationMmask_0_5 = io_releaseViolationMdata_0[35:6] == data_5[35:6]; // @[LoadQueueData.scala 142:100]
  assign io_releaseViolationMmask_0_6 = io_releaseViolationMdata_0[35:6] == data_6[35:6]; // @[LoadQueueData.scala 142:100]
  assign io_releaseViolationMmask_0_7 = io_releaseViolationMdata_0[35:6] == data_7[35:6]; // @[LoadQueueData.scala 142:100]
  assign io_releaseViolationMmask_0_8 = io_releaseViolationMdata_0[35:6] == data_8[35:6]; // @[LoadQueueData.scala 142:100]
  assign io_releaseViolationMmask_0_9 = io_releaseViolationMdata_0[35:6] == data_9[35:6]; // @[LoadQueueData.scala 142:100]
  assign io_releaseViolationMmask_0_10 = io_releaseViolationMdata_0[35:6] == data_10[35:6]; // @[LoadQueueData.scala 142:100]
  assign io_releaseViolationMmask_0_11 = io_releaseViolationMdata_0[35:6] == data_11[35:6]; // @[LoadQueueData.scala 142:100]
  assign io_releaseViolationMmask_0_12 = io_releaseViolationMdata_0[35:6] == data_12[35:6]; // @[LoadQueueData.scala 142:100]
  assign io_releaseViolationMmask_0_13 = io_releaseViolationMdata_0[35:6] == data_13[35:6]; // @[LoadQueueData.scala 142:100]
  assign io_releaseViolationMmask_0_14 = io_releaseViolationMdata_0[35:6] == data_14[35:6]; // @[LoadQueueData.scala 142:100]
  assign io_releaseViolationMmask_0_15 = io_releaseViolationMdata_0[35:6] == data_15[35:6]; // @[LoadQueueData.scala 142:100]
  assign io_releaseViolationMmask_1_0 = io_releaseViolationMdata_1[35:6] == data_0[35:6]; // @[LoadQueueData.scala 142:100]
  assign io_releaseViolationMmask_1_1 = io_releaseViolationMdata_1[35:6] == data_1[35:6]; // @[LoadQueueData.scala 142:100]
  assign io_releaseViolationMmask_1_2 = io_releaseViolationMdata_1[35:6] == data_2[35:6]; // @[LoadQueueData.scala 142:100]
  assign io_releaseViolationMmask_1_3 = io_releaseViolationMdata_1[35:6] == data_3[35:6]; // @[LoadQueueData.scala 142:100]
  assign io_releaseViolationMmask_1_4 = io_releaseViolationMdata_1[35:6] == data_4[35:6]; // @[LoadQueueData.scala 142:100]
  assign io_releaseViolationMmask_1_5 = io_releaseViolationMdata_1[35:6] == data_5[35:6]; // @[LoadQueueData.scala 142:100]
  assign io_releaseViolationMmask_1_6 = io_releaseViolationMdata_1[35:6] == data_6[35:6]; // @[LoadQueueData.scala 142:100]
  assign io_releaseViolationMmask_1_7 = io_releaseViolationMdata_1[35:6] == data_7[35:6]; // @[LoadQueueData.scala 142:100]
  assign io_releaseViolationMmask_1_8 = io_releaseViolationMdata_1[35:6] == data_8[35:6]; // @[LoadQueueData.scala 142:100]
  assign io_releaseViolationMmask_1_9 = io_releaseViolationMdata_1[35:6] == data_9[35:6]; // @[LoadQueueData.scala 142:100]
  assign io_releaseViolationMmask_1_10 = io_releaseViolationMdata_1[35:6] == data_10[35:6]; // @[LoadQueueData.scala 142:100]
  assign io_releaseViolationMmask_1_11 = io_releaseViolationMdata_1[35:6] == data_11[35:6]; // @[LoadQueueData.scala 142:100]
  assign io_releaseViolationMmask_1_12 = io_releaseViolationMdata_1[35:6] == data_12[35:6]; // @[LoadQueueData.scala 142:100]
  assign io_releaseViolationMmask_1_13 = io_releaseViolationMdata_1[35:6] == data_13[35:6]; // @[LoadQueueData.scala 142:100]
  assign io_releaseViolationMmask_1_14 = io_releaseViolationMdata_1[35:6] == data_14[35:6]; // @[LoadQueueData.scala 142:100]
  assign io_releaseViolationMmask_1_15 = io_releaseViolationMdata_1[35:6] == data_15[35:6]; // @[LoadQueueData.scala 142:100]
  assign sx_bankWriteAddrDec_delay_clock = clock;
  assign sx_bankWriteAddrDec_delay_io_in = writeAddrDec_0[3:0]; // @[LoadQueueData.scala 67:7]
  assign sx_bankWriteAddrDec_delay_1_clock = clock;
  assign sx_bankWriteAddrDec_delay_1_io_in = writeAddrDec_1[3:0]; // @[LoadQueueData.scala 67:7]
  assign sx_bankWriteEn_delay_clock = clock;
  assign sx_bankWriteEn_delay_io_in = io_wen_0 & |s0_bankWriteAddrDec0_0; // @[LoadQueueData.scala 73:72]
  assign sx_bankWriteEn_delay_1_clock = clock;
  assign sx_bankWriteEn_delay_1_io_in = io_wen_1 & |s0_bankWriteAddrDec0_1; // @[LoadQueueData.scala 73:72]
  assign sx_writeData_delay_clock = clock;
  assign sx_writeData_delay_io_in = io_wdata_0; // @[Hold.scala 98:17]
  assign sx_writeData_delay_1_clock = clock;
  assign sx_writeData_delay_1_io_in = io_wdata_1; // @[Hold.scala 98:17]
  assign sx_bankWriteAddrDec_delay_2_clock = clock;
  assign sx_bankWriteAddrDec_delay_2_io_in = writeAddrDec_0[7:4]; // @[LoadQueueData.scala 67:7]
  assign sx_bankWriteAddrDec_delay_3_clock = clock;
  assign sx_bankWriteAddrDec_delay_3_io_in = writeAddrDec_1[7:4]; // @[LoadQueueData.scala 67:7]
  assign sx_bankWriteEn_delay_2_clock = clock;
  assign sx_bankWriteEn_delay_2_io_in = io_wen_0 & |s0_bankWriteAddrDec1_0; // @[LoadQueueData.scala 73:72]
  assign sx_bankWriteEn_delay_3_clock = clock;
  assign sx_bankWriteEn_delay_3_io_in = io_wen_1 & |s0_bankWriteAddrDec1_1; // @[LoadQueueData.scala 73:72]
  assign sx_writeData_delay_2_clock = clock;
  assign sx_writeData_delay_2_io_in = io_wdata_0; // @[Hold.scala 98:17]
  assign sx_writeData_delay_3_clock = clock;
  assign sx_writeData_delay_3_io_in = io_wdata_1; // @[Hold.scala 98:17]
  assign sx_bankWriteAddrDec_delay_4_clock = clock;
  assign sx_bankWriteAddrDec_delay_4_io_in = writeAddrDec_0[11:8]; // @[LoadQueueData.scala 67:7]
  assign sx_bankWriteAddrDec_delay_5_clock = clock;
  assign sx_bankWriteAddrDec_delay_5_io_in = writeAddrDec_1[11:8]; // @[LoadQueueData.scala 67:7]
  assign sx_bankWriteEn_delay_4_clock = clock;
  assign sx_bankWriteEn_delay_4_io_in = io_wen_0 & |s0_bankWriteAddrDec2_0; // @[LoadQueueData.scala 73:72]
  assign sx_bankWriteEn_delay_5_clock = clock;
  assign sx_bankWriteEn_delay_5_io_in = io_wen_1 & |s0_bankWriteAddrDec2_1; // @[LoadQueueData.scala 73:72]
  assign sx_writeData_delay_4_clock = clock;
  assign sx_writeData_delay_4_io_in = io_wdata_0; // @[Hold.scala 98:17]
  assign sx_writeData_delay_5_clock = clock;
  assign sx_writeData_delay_5_io_in = io_wdata_1; // @[Hold.scala 98:17]
  assign sx_bankWriteAddrDec_delay_6_clock = clock;
  assign sx_bankWriteAddrDec_delay_6_io_in = writeAddrDec_0[15:12]; // @[LoadQueueData.scala 67:7]
  assign sx_bankWriteAddrDec_delay_7_clock = clock;
  assign sx_bankWriteAddrDec_delay_7_io_in = writeAddrDec_1[15:12]; // @[LoadQueueData.scala 67:7]
  assign sx_bankWriteEn_delay_6_clock = clock;
  assign sx_bankWriteEn_delay_6_io_in = io_wen_0 & |s0_bankWriteAddrDec3_0; // @[LoadQueueData.scala 73:72]
  assign sx_bankWriteEn_delay_7_clock = clock;
  assign sx_bankWriteEn_delay_7_io_in = io_wen_1 & |s0_bankWriteAddrDec3_1; // @[LoadQueueData.scala 73:72]
  assign sx_writeData_delay_6_clock = clock;
  assign sx_writeData_delay_6_io_in = io_wdata_0; // @[Hold.scala 98:17]
  assign sx_writeData_delay_7_clock = clock;
  assign sx_writeData_delay_7_io_in = io_wdata_1; // @[Hold.scala 98:17]
  always @(posedge clock) begin
    if (sx_entryWriteEn0_0) begin // @[LoadQueueData.scala 100:30]
      data_0 <= sx_entryWriteData0_0; // @[LoadQueueData.scala 101:46]
    end
    if (sx_entryWriteEn0_1) begin // @[LoadQueueData.scala 100:30]
      data_1 <= sx_entryWriteData0_1; // @[LoadQueueData.scala 101:46]
    end
    if (sx_entryWriteEn0_2) begin // @[LoadQueueData.scala 100:30]
      data_2 <= sx_entryWriteData0_2; // @[LoadQueueData.scala 101:46]
    end
    if (sx_entryWriteEn0_3) begin // @[LoadQueueData.scala 100:30]
      data_3 <= sx_entryWriteData0_3; // @[LoadQueueData.scala 101:46]
    end
    if (sx_entryWriteEn1_0) begin // @[LoadQueueData.scala 100:30]
      data_4 <= sx_entryWriteData1_0; // @[LoadQueueData.scala 101:46]
    end
    if (sx_entryWriteEn1_1) begin // @[LoadQueueData.scala 100:30]
      data_5 <= sx_entryWriteData1_1; // @[LoadQueueData.scala 101:46]
    end
    if (sx_entryWriteEn1_2) begin // @[LoadQueueData.scala 100:30]
      data_6 <= sx_entryWriteData1_2; // @[LoadQueueData.scala 101:46]
    end
    if (sx_entryWriteEn1_3) begin // @[LoadQueueData.scala 100:30]
      data_7 <= sx_entryWriteData1_3; // @[LoadQueueData.scala 101:46]
    end
    if (sx_entryWriteEn2_0) begin // @[LoadQueueData.scala 100:30]
      data_8 <= sx_entryWriteData2_0; // @[LoadQueueData.scala 101:46]
    end
    if (sx_entryWriteEn2_1) begin // @[LoadQueueData.scala 100:30]
      data_9 <= sx_entryWriteData2_1; // @[LoadQueueData.scala 101:46]
    end
    if (sx_entryWriteEn2_2) begin // @[LoadQueueData.scala 100:30]
      data_10 <= sx_entryWriteData2_2; // @[LoadQueueData.scala 101:46]
    end
    if (sx_entryWriteEn2_3) begin // @[LoadQueueData.scala 100:30]
      data_11 <= sx_entryWriteData2_3; // @[LoadQueueData.scala 101:46]
    end
    if (sx_entryWriteEn3_0) begin // @[LoadQueueData.scala 100:30]
      data_12 <= sx_entryWriteData3_0; // @[LoadQueueData.scala 101:46]
    end
    if (sx_entryWriteEn3_1) begin // @[LoadQueueData.scala 100:30]
      data_13 <= sx_entryWriteData3_1; // @[LoadQueueData.scala 101:46]
    end
    if (sx_entryWriteEn3_2) begin // @[LoadQueueData.scala 100:30]
      data_14 <= sx_entryWriteData3_2; // @[LoadQueueData.scala 101:46]
    end
    if (sx_entryWriteEn3_3) begin // @[LoadQueueData.scala 100:30]
      data_15 <= sx_entryWriteData3_3; // @[LoadQueueData.scala 101:46]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {2{`RANDOM}};
  data_0 = _RAND_0[35:0];
  _RAND_1 = {2{`RANDOM}};
  data_1 = _RAND_1[35:0];
  _RAND_2 = {2{`RANDOM}};
  data_2 = _RAND_2[35:0];
  _RAND_3 = {2{`RANDOM}};
  data_3 = _RAND_3[35:0];
  _RAND_4 = {2{`RANDOM}};
  data_4 = _RAND_4[35:0];
  _RAND_5 = {2{`RANDOM}};
  data_5 = _RAND_5[35:0];
  _RAND_6 = {2{`RANDOM}};
  data_6 = _RAND_6[35:0];
  _RAND_7 = {2{`RANDOM}};
  data_7 = _RAND_7[35:0];
  _RAND_8 = {2{`RANDOM}};
  data_8 = _RAND_8[35:0];
  _RAND_9 = {2{`RANDOM}};
  data_9 = _RAND_9[35:0];
  _RAND_10 = {2{`RANDOM}};
  data_10 = _RAND_10[35:0];
  _RAND_11 = {2{`RANDOM}};
  data_11 = _RAND_11[35:0];
  _RAND_12 = {2{`RANDOM}};
  data_12 = _RAND_12[35:0];
  _RAND_13 = {2{`RANDOM}};
  data_13 = _RAND_13[35:0];
  _RAND_14 = {2{`RANDOM}};
  data_14 = _RAND_14[35:0];
  _RAND_15 = {2{`RANDOM}};
  data_15 = _RAND_15[35:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

