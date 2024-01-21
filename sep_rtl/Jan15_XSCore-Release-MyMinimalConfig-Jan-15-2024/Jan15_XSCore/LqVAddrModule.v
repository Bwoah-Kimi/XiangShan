module LqVAddrModule(
  input         clock,
  input         io_ren_0,
  input         io_ren_1,
  input  [2:0]  io_raddr_0,
  input  [2:0]  io_raddr_1,
  output [38:0] io_rdata_0,
  output [38:0] io_rdata_1,
  input         io_wen_0,
  input         io_wen_1,
  input  [2:0]  io_waddr_0,
  input  [2:0]  io_waddr_1,
  input  [38:0] io_wdata_0,
  input  [38:0] io_wdata_1
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
`endif // RANDOMIZE_REG_INIT
  wire  sx_bankWriteAddrDec_delay_clock; // @[Hold.scala 97:23]
  wire [1:0] sx_bankWriteAddrDec_delay_io_in; // @[Hold.scala 97:23]
  wire [1:0] sx_bankWriteAddrDec_delay_io_out; // @[Hold.scala 97:23]
  wire  sx_bankWriteAddrDec_delay_1_clock; // @[Hold.scala 97:23]
  wire [1:0] sx_bankWriteAddrDec_delay_1_io_in; // @[Hold.scala 97:23]
  wire [1:0] sx_bankWriteAddrDec_delay_1_io_out; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_clock; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_io_in; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_io_out; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_1_clock; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_1_io_in; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_1_io_out; // @[Hold.scala 97:23]
  wire  sx_writeData_delay_clock; // @[Hold.scala 97:23]
  wire [38:0] sx_writeData_delay_io_in; // @[Hold.scala 97:23]
  wire [38:0] sx_writeData_delay_io_out; // @[Hold.scala 97:23]
  wire  sx_writeData_delay_1_clock; // @[Hold.scala 97:23]
  wire [38:0] sx_writeData_delay_1_io_in; // @[Hold.scala 97:23]
  wire [38:0] sx_writeData_delay_1_io_out; // @[Hold.scala 97:23]
  wire  sx_bankWriteAddrDec_delay_2_clock; // @[Hold.scala 97:23]
  wire [1:0] sx_bankWriteAddrDec_delay_2_io_in; // @[Hold.scala 97:23]
  wire [1:0] sx_bankWriteAddrDec_delay_2_io_out; // @[Hold.scala 97:23]
  wire  sx_bankWriteAddrDec_delay_3_clock; // @[Hold.scala 97:23]
  wire [1:0] sx_bankWriteAddrDec_delay_3_io_in; // @[Hold.scala 97:23]
  wire [1:0] sx_bankWriteAddrDec_delay_3_io_out; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_2_clock; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_2_io_in; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_2_io_out; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_3_clock; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_3_io_in; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_3_io_out; // @[Hold.scala 97:23]
  wire  sx_writeData_delay_2_clock; // @[Hold.scala 97:23]
  wire [38:0] sx_writeData_delay_2_io_in; // @[Hold.scala 97:23]
  wire [38:0] sx_writeData_delay_2_io_out; // @[Hold.scala 97:23]
  wire  sx_writeData_delay_3_clock; // @[Hold.scala 97:23]
  wire [38:0] sx_writeData_delay_3_io_in; // @[Hold.scala 97:23]
  wire [38:0] sx_writeData_delay_3_io_out; // @[Hold.scala 97:23]
  wire  sx_bankWriteAddrDec_delay_4_clock; // @[Hold.scala 97:23]
  wire [1:0] sx_bankWriteAddrDec_delay_4_io_in; // @[Hold.scala 97:23]
  wire [1:0] sx_bankWriteAddrDec_delay_4_io_out; // @[Hold.scala 97:23]
  wire  sx_bankWriteAddrDec_delay_5_clock; // @[Hold.scala 97:23]
  wire [1:0] sx_bankWriteAddrDec_delay_5_io_in; // @[Hold.scala 97:23]
  wire [1:0] sx_bankWriteAddrDec_delay_5_io_out; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_4_clock; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_4_io_in; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_4_io_out; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_5_clock; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_5_io_in; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_5_io_out; // @[Hold.scala 97:23]
  wire  sx_writeData_delay_4_clock; // @[Hold.scala 97:23]
  wire [38:0] sx_writeData_delay_4_io_in; // @[Hold.scala 97:23]
  wire [38:0] sx_writeData_delay_4_io_out; // @[Hold.scala 97:23]
  wire  sx_writeData_delay_5_clock; // @[Hold.scala 97:23]
  wire [38:0] sx_writeData_delay_5_io_in; // @[Hold.scala 97:23]
  wire [38:0] sx_writeData_delay_5_io_out; // @[Hold.scala 97:23]
  wire  sx_bankWriteAddrDec_delay_6_clock; // @[Hold.scala 97:23]
  wire [1:0] sx_bankWriteAddrDec_delay_6_io_in; // @[Hold.scala 97:23]
  wire [1:0] sx_bankWriteAddrDec_delay_6_io_out; // @[Hold.scala 97:23]
  wire  sx_bankWriteAddrDec_delay_7_clock; // @[Hold.scala 97:23]
  wire [1:0] sx_bankWriteAddrDec_delay_7_io_in; // @[Hold.scala 97:23]
  wire [1:0] sx_bankWriteAddrDec_delay_7_io_out; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_6_clock; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_6_io_in; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_6_io_out; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_7_clock; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_7_io_in; // @[Hold.scala 97:23]
  wire  sx_bankWriteEn_delay_7_io_out; // @[Hold.scala 97:23]
  wire  sx_writeData_delay_6_clock; // @[Hold.scala 97:23]
  wire [38:0] sx_writeData_delay_6_io_in; // @[Hold.scala 97:23]
  wire [38:0] sx_writeData_delay_6_io_out; // @[Hold.scala 97:23]
  wire  sx_writeData_delay_7_clock; // @[Hold.scala 97:23]
  wire [38:0] sx_writeData_delay_7_io_in; // @[Hold.scala 97:23]
  wire [38:0] sx_writeData_delay_7_io_out; // @[Hold.scala 97:23]
  reg [38:0] data_0; // @[LoadQueueData.scala 58:17]
  reg [38:0] data_1; // @[LoadQueueData.scala 58:17]
  reg [38:0] data_2; // @[LoadQueueData.scala 58:17]
  reg [38:0] data_3; // @[LoadQueueData.scala 58:17]
  reg [38:0] data_4; // @[LoadQueueData.scala 58:17]
  reg [38:0] data_5; // @[LoadQueueData.scala 58:17]
  reg [38:0] data_6; // @[LoadQueueData.scala 58:17]
  reg [38:0] data_7; // @[LoadQueueData.scala 58:17]
  reg [38:0] io_rdata_0_r; // @[Reg.scala 16:16]
  wire [38:0] _GEN_1 = 3'h1 == io_raddr_0 ? data_1 : data_0; // @[Reg.scala 17:{22,22}]
  wire [38:0] _GEN_2 = 3'h2 == io_raddr_0 ? data_2 : _GEN_1; // @[Reg.scala 17:{22,22}]
  wire [38:0] _GEN_3 = 3'h3 == io_raddr_0 ? data_3 : _GEN_2; // @[Reg.scala 17:{22,22}]
  wire [38:0] _GEN_4 = 3'h4 == io_raddr_0 ? data_4 : _GEN_3; // @[Reg.scala 17:{22,22}]
  reg [38:0] io_rdata_1_r; // @[Reg.scala 16:16]
  wire [38:0] _GEN_10 = 3'h1 == io_raddr_1 ? data_1 : data_0; // @[Reg.scala 17:{22,22}]
  wire [38:0] _GEN_11 = 3'h2 == io_raddr_1 ? data_2 : _GEN_10; // @[Reg.scala 17:{22,22}]
  wire [38:0] _GEN_12 = 3'h3 == io_raddr_1 ? data_3 : _GEN_11; // @[Reg.scala 17:{22,22}]
  wire [38:0] _GEN_13 = 3'h4 == io_raddr_1 ? data_4 : _GEN_12; // @[Reg.scala 17:{22,22}]
  wire [7:0] writeAddrDec_0 = 8'h1 << io_waddr_0; // @[OneHot.scala 57:35]
  wire [7:0] writeAddrDec_1 = 8'h1 << io_waddr_1; // @[OneHot.scala 57:35]
  wire [1:0] s0_bankWriteAddrDec0_0 = writeAddrDec_0[1:0]; // @[LoadQueueData.scala 67:7]
  wire [1:0] s0_bankWriteAddrDec0_1 = writeAddrDec_1[1:0]; // @[LoadQueueData.scala 67:7]
  wire  sx_entryWriteEnVec0_0_0 = sx_bankWriteEn_delay_io_out & sx_bankWriteAddrDec_delay_io_out[0]; // @[LoadQueueData.scala 97:86]
  wire  sx_entryWriteEnVec0_0_1 = sx_bankWriteEn_delay_1_io_out & sx_bankWriteAddrDec_delay_1_io_out[0]; // @[LoadQueueData.scala 97:86]
  wire [1:0] _sx_entryWriteEn_T = {sx_entryWriteEnVec0_0_1,sx_entryWriteEnVec0_0_0}; // @[LoadQueueData.scala 98:57]
  wire  sx_entryWriteEn0_0 = |_sx_entryWriteEn_T; // @[LoadQueueData.scala 98:64]
  wire [38:0] _sx_entryWriteData_T = sx_entryWriteEnVec0_0_0 ? sx_writeData_delay_io_out : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _sx_entryWriteData_T_1 = sx_entryWriteEnVec0_0_1 ? sx_writeData_delay_1_io_out : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] sx_entryWriteData0_0 = _sx_entryWriteData_T | _sx_entryWriteData_T_1; // @[Mux.scala 27:73]
  wire  sx_entryWriteEnVec0_1_0 = sx_bankWriteEn_delay_io_out & sx_bankWriteAddrDec_delay_io_out[1]; // @[LoadQueueData.scala 97:86]
  wire  sx_entryWriteEnVec0_1_1 = sx_bankWriteEn_delay_1_io_out & sx_bankWriteAddrDec_delay_1_io_out[1]; // @[LoadQueueData.scala 97:86]
  wire [1:0] _sx_entryWriteEn_T_1 = {sx_entryWriteEnVec0_1_1,sx_entryWriteEnVec0_1_0}; // @[LoadQueueData.scala 98:57]
  wire  sx_entryWriteEn0_1 = |_sx_entryWriteEn_T_1; // @[LoadQueueData.scala 98:64]
  wire [38:0] _sx_entryWriteData_T_3 = sx_entryWriteEnVec0_1_0 ? sx_writeData_delay_io_out : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _sx_entryWriteData_T_4 = sx_entryWriteEnVec0_1_1 ? sx_writeData_delay_1_io_out : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] sx_entryWriteData0_1 = _sx_entryWriteData_T_3 | _sx_entryWriteData_T_4; // @[Mux.scala 27:73]
  wire [1:0] s0_bankWriteAddrDec1_0 = writeAddrDec_0[3:2]; // @[LoadQueueData.scala 67:7]
  wire [1:0] s0_bankWriteAddrDec1_1 = writeAddrDec_1[3:2]; // @[LoadQueueData.scala 67:7]
  wire  sx_entryWriteEnVec1_0_0 = sx_bankWriteEn_delay_2_io_out & sx_bankWriteAddrDec_delay_2_io_out[0]; // @[LoadQueueData.scala 97:86]
  wire  sx_entryWriteEnVec1_0_1 = sx_bankWriteEn_delay_3_io_out & sx_bankWriteAddrDec_delay_3_io_out[0]; // @[LoadQueueData.scala 97:86]
  wire [1:0] _sx_entryWriteEn_T_2 = {sx_entryWriteEnVec1_0_1,sx_entryWriteEnVec1_0_0}; // @[LoadQueueData.scala 98:57]
  wire  sx_entryWriteEn1_0 = |_sx_entryWriteEn_T_2; // @[LoadQueueData.scala 98:64]
  wire [38:0] _sx_entryWriteData_T_6 = sx_entryWriteEnVec1_0_0 ? sx_writeData_delay_2_io_out : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _sx_entryWriteData_T_7 = sx_entryWriteEnVec1_0_1 ? sx_writeData_delay_3_io_out : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] sx_entryWriteData1_0 = _sx_entryWriteData_T_6 | _sx_entryWriteData_T_7; // @[Mux.scala 27:73]
  wire  sx_entryWriteEnVec1_1_0 = sx_bankWriteEn_delay_2_io_out & sx_bankWriteAddrDec_delay_2_io_out[1]; // @[LoadQueueData.scala 97:86]
  wire  sx_entryWriteEnVec1_1_1 = sx_bankWriteEn_delay_3_io_out & sx_bankWriteAddrDec_delay_3_io_out[1]; // @[LoadQueueData.scala 97:86]
  wire [1:0] _sx_entryWriteEn_T_3 = {sx_entryWriteEnVec1_1_1,sx_entryWriteEnVec1_1_0}; // @[LoadQueueData.scala 98:57]
  wire  sx_entryWriteEn1_1 = |_sx_entryWriteEn_T_3; // @[LoadQueueData.scala 98:64]
  wire [38:0] _sx_entryWriteData_T_9 = sx_entryWriteEnVec1_1_0 ? sx_writeData_delay_2_io_out : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _sx_entryWriteData_T_10 = sx_entryWriteEnVec1_1_1 ? sx_writeData_delay_3_io_out : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] sx_entryWriteData1_1 = _sx_entryWriteData_T_9 | _sx_entryWriteData_T_10; // @[Mux.scala 27:73]
  wire [1:0] s0_bankWriteAddrDec2_0 = writeAddrDec_0[5:4]; // @[LoadQueueData.scala 67:7]
  wire [1:0] s0_bankWriteAddrDec2_1 = writeAddrDec_1[5:4]; // @[LoadQueueData.scala 67:7]
  wire  sx_entryWriteEnVec2_0_0 = sx_bankWriteEn_delay_4_io_out & sx_bankWriteAddrDec_delay_4_io_out[0]; // @[LoadQueueData.scala 97:86]
  wire  sx_entryWriteEnVec2_0_1 = sx_bankWriteEn_delay_5_io_out & sx_bankWriteAddrDec_delay_5_io_out[0]; // @[LoadQueueData.scala 97:86]
  wire [1:0] _sx_entryWriteEn_T_4 = {sx_entryWriteEnVec2_0_1,sx_entryWriteEnVec2_0_0}; // @[LoadQueueData.scala 98:57]
  wire  sx_entryWriteEn2_0 = |_sx_entryWriteEn_T_4; // @[LoadQueueData.scala 98:64]
  wire [38:0] _sx_entryWriteData_T_12 = sx_entryWriteEnVec2_0_0 ? sx_writeData_delay_4_io_out : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _sx_entryWriteData_T_13 = sx_entryWriteEnVec2_0_1 ? sx_writeData_delay_5_io_out : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] sx_entryWriteData2_0 = _sx_entryWriteData_T_12 | _sx_entryWriteData_T_13; // @[Mux.scala 27:73]
  wire  sx_entryWriteEnVec2_1_0 = sx_bankWriteEn_delay_4_io_out & sx_bankWriteAddrDec_delay_4_io_out[1]; // @[LoadQueueData.scala 97:86]
  wire  sx_entryWriteEnVec2_1_1 = sx_bankWriteEn_delay_5_io_out & sx_bankWriteAddrDec_delay_5_io_out[1]; // @[LoadQueueData.scala 97:86]
  wire [1:0] _sx_entryWriteEn_T_5 = {sx_entryWriteEnVec2_1_1,sx_entryWriteEnVec2_1_0}; // @[LoadQueueData.scala 98:57]
  wire  sx_entryWriteEn2_1 = |_sx_entryWriteEn_T_5; // @[LoadQueueData.scala 98:64]
  wire [38:0] _sx_entryWriteData_T_15 = sx_entryWriteEnVec2_1_0 ? sx_writeData_delay_4_io_out : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _sx_entryWriteData_T_16 = sx_entryWriteEnVec2_1_1 ? sx_writeData_delay_5_io_out : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] sx_entryWriteData2_1 = _sx_entryWriteData_T_15 | _sx_entryWriteData_T_16; // @[Mux.scala 27:73]
  wire [1:0] s0_bankWriteAddrDec3_0 = writeAddrDec_0[7:6]; // @[LoadQueueData.scala 67:7]
  wire [1:0] s0_bankWriteAddrDec3_1 = writeAddrDec_1[7:6]; // @[LoadQueueData.scala 67:7]
  wire  sx_entryWriteEnVec3_0_0 = sx_bankWriteEn_delay_6_io_out & sx_bankWriteAddrDec_delay_6_io_out[0]; // @[LoadQueueData.scala 97:86]
  wire  sx_entryWriteEnVec3_0_1 = sx_bankWriteEn_delay_7_io_out & sx_bankWriteAddrDec_delay_7_io_out[0]; // @[LoadQueueData.scala 97:86]
  wire [1:0] _sx_entryWriteEn_T_6 = {sx_entryWriteEnVec3_0_1,sx_entryWriteEnVec3_0_0}; // @[LoadQueueData.scala 98:57]
  wire  sx_entryWriteEn3_0 = |_sx_entryWriteEn_T_6; // @[LoadQueueData.scala 98:64]
  wire [38:0] _sx_entryWriteData_T_18 = sx_entryWriteEnVec3_0_0 ? sx_writeData_delay_6_io_out : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _sx_entryWriteData_T_19 = sx_entryWriteEnVec3_0_1 ? sx_writeData_delay_7_io_out : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] sx_entryWriteData3_0 = _sx_entryWriteData_T_18 | _sx_entryWriteData_T_19; // @[Mux.scala 27:73]
  wire  sx_entryWriteEnVec3_1_0 = sx_bankWriteEn_delay_6_io_out & sx_bankWriteAddrDec_delay_6_io_out[1]; // @[LoadQueueData.scala 97:86]
  wire  sx_entryWriteEnVec3_1_1 = sx_bankWriteEn_delay_7_io_out & sx_bankWriteAddrDec_delay_7_io_out[1]; // @[LoadQueueData.scala 97:86]
  wire [1:0] _sx_entryWriteEn_T_7 = {sx_entryWriteEnVec3_1_1,sx_entryWriteEnVec3_1_0}; // @[LoadQueueData.scala 98:57]
  wire  sx_entryWriteEn3_1 = |_sx_entryWriteEn_T_7; // @[LoadQueueData.scala 98:64]
  wire [38:0] _sx_entryWriteData_T_21 = sx_entryWriteEnVec3_1_0 ? sx_writeData_delay_6_io_out : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] _sx_entryWriteData_T_22 = sx_entryWriteEnVec3_1_1 ? sx_writeData_delay_7_io_out : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] sx_entryWriteData3_1 = _sx_entryWriteData_T_21 | _sx_entryWriteData_T_22; // @[Mux.scala 27:73]
  DelayN_113 sx_bankWriteAddrDec_delay ( // @[Hold.scala 97:23]
    .clock(sx_bankWriteAddrDec_delay_clock),
    .io_in(sx_bankWriteAddrDec_delay_io_in),
    .io_out(sx_bankWriteAddrDec_delay_io_out)
  );
  DelayN_113 sx_bankWriteAddrDec_delay_1 ( // @[Hold.scala 97:23]
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
  DelayN_117 sx_writeData_delay ( // @[Hold.scala 97:23]
    .clock(sx_writeData_delay_clock),
    .io_in(sx_writeData_delay_io_in),
    .io_out(sx_writeData_delay_io_out)
  );
  DelayN_117 sx_writeData_delay_1 ( // @[Hold.scala 97:23]
    .clock(sx_writeData_delay_1_clock),
    .io_in(sx_writeData_delay_1_io_in),
    .io_out(sx_writeData_delay_1_io_out)
  );
  DelayN_113 sx_bankWriteAddrDec_delay_2 ( // @[Hold.scala 97:23]
    .clock(sx_bankWriteAddrDec_delay_2_clock),
    .io_in(sx_bankWriteAddrDec_delay_2_io_in),
    .io_out(sx_bankWriteAddrDec_delay_2_io_out)
  );
  DelayN_113 sx_bankWriteAddrDec_delay_3 ( // @[Hold.scala 97:23]
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
  DelayN_117 sx_writeData_delay_2 ( // @[Hold.scala 97:23]
    .clock(sx_writeData_delay_2_clock),
    .io_in(sx_writeData_delay_2_io_in),
    .io_out(sx_writeData_delay_2_io_out)
  );
  DelayN_117 sx_writeData_delay_3 ( // @[Hold.scala 97:23]
    .clock(sx_writeData_delay_3_clock),
    .io_in(sx_writeData_delay_3_io_in),
    .io_out(sx_writeData_delay_3_io_out)
  );
  DelayN_113 sx_bankWriteAddrDec_delay_4 ( // @[Hold.scala 97:23]
    .clock(sx_bankWriteAddrDec_delay_4_clock),
    .io_in(sx_bankWriteAddrDec_delay_4_io_in),
    .io_out(sx_bankWriteAddrDec_delay_4_io_out)
  );
  DelayN_113 sx_bankWriteAddrDec_delay_5 ( // @[Hold.scala 97:23]
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
  DelayN_117 sx_writeData_delay_4 ( // @[Hold.scala 97:23]
    .clock(sx_writeData_delay_4_clock),
    .io_in(sx_writeData_delay_4_io_in),
    .io_out(sx_writeData_delay_4_io_out)
  );
  DelayN_117 sx_writeData_delay_5 ( // @[Hold.scala 97:23]
    .clock(sx_writeData_delay_5_clock),
    .io_in(sx_writeData_delay_5_io_in),
    .io_out(sx_writeData_delay_5_io_out)
  );
  DelayN_113 sx_bankWriteAddrDec_delay_6 ( // @[Hold.scala 97:23]
    .clock(sx_bankWriteAddrDec_delay_6_clock),
    .io_in(sx_bankWriteAddrDec_delay_6_io_in),
    .io_out(sx_bankWriteAddrDec_delay_6_io_out)
  );
  DelayN_113 sx_bankWriteAddrDec_delay_7 ( // @[Hold.scala 97:23]
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
  DelayN_117 sx_writeData_delay_6 ( // @[Hold.scala 97:23]
    .clock(sx_writeData_delay_6_clock),
    .io_in(sx_writeData_delay_6_io_in),
    .io_out(sx_writeData_delay_6_io_out)
  );
  DelayN_117 sx_writeData_delay_7 ( // @[Hold.scala 97:23]
    .clock(sx_writeData_delay_7_clock),
    .io_in(sx_writeData_delay_7_io_in),
    .io_out(sx_writeData_delay_7_io_out)
  );
  assign io_rdata_0 = io_rdata_0_r; // @[LoadQueueData.scala 61:17]
  assign io_rdata_1 = io_rdata_1_r; // @[LoadQueueData.scala 61:17]
  assign sx_bankWriteAddrDec_delay_clock = clock;
  assign sx_bankWriteAddrDec_delay_io_in = writeAddrDec_0[1:0]; // @[LoadQueueData.scala 67:7]
  assign sx_bankWriteAddrDec_delay_1_clock = clock;
  assign sx_bankWriteAddrDec_delay_1_io_in = writeAddrDec_1[1:0]; // @[LoadQueueData.scala 67:7]
  assign sx_bankWriteEn_delay_clock = clock;
  assign sx_bankWriteEn_delay_io_in = io_wen_0 & |s0_bankWriteAddrDec0_0; // @[LoadQueueData.scala 73:72]
  assign sx_bankWriteEn_delay_1_clock = clock;
  assign sx_bankWriteEn_delay_1_io_in = io_wen_1 & |s0_bankWriteAddrDec0_1; // @[LoadQueueData.scala 73:72]
  assign sx_writeData_delay_clock = clock;
  assign sx_writeData_delay_io_in = io_wdata_0; // @[Hold.scala 98:17]
  assign sx_writeData_delay_1_clock = clock;
  assign sx_writeData_delay_1_io_in = io_wdata_1; // @[Hold.scala 98:17]
  assign sx_bankWriteAddrDec_delay_2_clock = clock;
  assign sx_bankWriteAddrDec_delay_2_io_in = writeAddrDec_0[3:2]; // @[LoadQueueData.scala 67:7]
  assign sx_bankWriteAddrDec_delay_3_clock = clock;
  assign sx_bankWriteAddrDec_delay_3_io_in = writeAddrDec_1[3:2]; // @[LoadQueueData.scala 67:7]
  assign sx_bankWriteEn_delay_2_clock = clock;
  assign sx_bankWriteEn_delay_2_io_in = io_wen_0 & |s0_bankWriteAddrDec1_0; // @[LoadQueueData.scala 73:72]
  assign sx_bankWriteEn_delay_3_clock = clock;
  assign sx_bankWriteEn_delay_3_io_in = io_wen_1 & |s0_bankWriteAddrDec1_1; // @[LoadQueueData.scala 73:72]
  assign sx_writeData_delay_2_clock = clock;
  assign sx_writeData_delay_2_io_in = io_wdata_0; // @[Hold.scala 98:17]
  assign sx_writeData_delay_3_clock = clock;
  assign sx_writeData_delay_3_io_in = io_wdata_1; // @[Hold.scala 98:17]
  assign sx_bankWriteAddrDec_delay_4_clock = clock;
  assign sx_bankWriteAddrDec_delay_4_io_in = writeAddrDec_0[5:4]; // @[LoadQueueData.scala 67:7]
  assign sx_bankWriteAddrDec_delay_5_clock = clock;
  assign sx_bankWriteAddrDec_delay_5_io_in = writeAddrDec_1[5:4]; // @[LoadQueueData.scala 67:7]
  assign sx_bankWriteEn_delay_4_clock = clock;
  assign sx_bankWriteEn_delay_4_io_in = io_wen_0 & |s0_bankWriteAddrDec2_0; // @[LoadQueueData.scala 73:72]
  assign sx_bankWriteEn_delay_5_clock = clock;
  assign sx_bankWriteEn_delay_5_io_in = io_wen_1 & |s0_bankWriteAddrDec2_1; // @[LoadQueueData.scala 73:72]
  assign sx_writeData_delay_4_clock = clock;
  assign sx_writeData_delay_4_io_in = io_wdata_0; // @[Hold.scala 98:17]
  assign sx_writeData_delay_5_clock = clock;
  assign sx_writeData_delay_5_io_in = io_wdata_1; // @[Hold.scala 98:17]
  assign sx_bankWriteAddrDec_delay_6_clock = clock;
  assign sx_bankWriteAddrDec_delay_6_io_in = writeAddrDec_0[7:6]; // @[LoadQueueData.scala 67:7]
  assign sx_bankWriteAddrDec_delay_7_clock = clock;
  assign sx_bankWriteAddrDec_delay_7_io_in = writeAddrDec_1[7:6]; // @[LoadQueueData.scala 67:7]
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
    if (sx_entryWriteEn1_0) begin // @[LoadQueueData.scala 100:30]
      data_2 <= sx_entryWriteData1_0; // @[LoadQueueData.scala 101:46]
    end
    if (sx_entryWriteEn1_1) begin // @[LoadQueueData.scala 100:30]
      data_3 <= sx_entryWriteData1_1; // @[LoadQueueData.scala 101:46]
    end
    if (sx_entryWriteEn2_0) begin // @[LoadQueueData.scala 100:30]
      data_4 <= sx_entryWriteData2_0; // @[LoadQueueData.scala 101:46]
    end
    if (sx_entryWriteEn2_1) begin // @[LoadQueueData.scala 100:30]
      data_5 <= sx_entryWriteData2_1; // @[LoadQueueData.scala 101:46]
    end
    if (sx_entryWriteEn3_0) begin // @[LoadQueueData.scala 100:30]
      data_6 <= sx_entryWriteData3_0; // @[LoadQueueData.scala 101:46]
    end
    if (sx_entryWriteEn3_1) begin // @[LoadQueueData.scala 100:30]
      data_7 <= sx_entryWriteData3_1; // @[LoadQueueData.scala 101:46]
    end
    if (io_ren_0) begin // @[Reg.scala 17:18]
      if (3'h7 == io_raddr_0) begin // @[Reg.scala 17:22]
        io_rdata_0_r <= data_7; // @[Reg.scala 17:22]
      end else if (3'h6 == io_raddr_0) begin // @[Reg.scala 17:22]
        io_rdata_0_r <= data_6; // @[Reg.scala 17:22]
      end else if (3'h5 == io_raddr_0) begin // @[Reg.scala 17:22]
        io_rdata_0_r <= data_5; // @[Reg.scala 17:22]
      end else begin
        io_rdata_0_r <= _GEN_4;
      end
    end
    if (io_ren_1) begin // @[Reg.scala 17:18]
      if (3'h7 == io_raddr_1) begin // @[Reg.scala 17:22]
        io_rdata_1_r <= data_7; // @[Reg.scala 17:22]
      end else if (3'h6 == io_raddr_1) begin // @[Reg.scala 17:22]
        io_rdata_1_r <= data_6; // @[Reg.scala 17:22]
      end else if (3'h5 == io_raddr_1) begin // @[Reg.scala 17:22]
        io_rdata_1_r <= data_5; // @[Reg.scala 17:22]
      end else begin
        io_rdata_1_r <= _GEN_13;
      end
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
  data_0 = _RAND_0[38:0];
  _RAND_1 = {2{`RANDOM}};
  data_1 = _RAND_1[38:0];
  _RAND_2 = {2{`RANDOM}};
  data_2 = _RAND_2[38:0];
  _RAND_3 = {2{`RANDOM}};
  data_3 = _RAND_3[38:0];
  _RAND_4 = {2{`RANDOM}};
  data_4 = _RAND_4[38:0];
  _RAND_5 = {2{`RANDOM}};
  data_5 = _RAND_5[38:0];
  _RAND_6 = {2{`RANDOM}};
  data_6 = _RAND_6[38:0];
  _RAND_7 = {2{`RANDOM}};
  data_7 = _RAND_7[38:0];
  _RAND_8 = {2{`RANDOM}};
  io_rdata_0_r = _RAND_8[38:0];
  _RAND_9 = {2{`RANDOM}};
  io_rdata_1_r = _RAND_9[38:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

