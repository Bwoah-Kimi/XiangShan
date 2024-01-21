module AsyncRawDataModuleTemplate_4(
  input         clock,
  input  [7:0]  io_rvec_0,
  input  [7:0]  io_rvec_1,
  output [63:0] io_rdata_0,
  output [63:0] io_rdata_1,
  input         io_wen_0,
  input         io_wen_1,
  input         io_wen_2,
  input         io_wen_3,
  input         io_wen_4,
  input         io_wen_5,
  input  [7:0]  io_wvec_0,
  input  [7:0]  io_wvec_1,
  input  [7:0]  io_wvec_2,
  input  [7:0]  io_wvec_3,
  input  [7:0]  io_wvec_4,
  input  [7:0]  io_wvec_5,
  input  [63:0] io_wdata_0,
  input  [63:0] io_wdata_1,
  input  [63:0] io_wdata_2,
  input  [63:0] io_wdata_3,
  input  [63:0] io_wdata_4,
  input  [63:0] io_wdata_5
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
`endif // RANDOMIZE_REG_INIT
  reg [63:0] data_0; // @[DataModuleTemplate.scala 38:17]
  reg [63:0] data_1; // @[DataModuleTemplate.scala 38:17]
  reg [63:0] data_2; // @[DataModuleTemplate.scala 38:17]
  reg [63:0] data_3; // @[DataModuleTemplate.scala 38:17]
  reg [63:0] data_4; // @[DataModuleTemplate.scala 38:17]
  reg [63:0] data_5; // @[DataModuleTemplate.scala 38:17]
  reg [63:0] data_6; // @[DataModuleTemplate.scala 38:17]
  reg [63:0] data_7; // @[DataModuleTemplate.scala 38:17]
  wire [63:0] _io_rdata_0_T_8 = io_rvec_0[0] ? data_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_9 = io_rvec_0[1] ? data_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_10 = io_rvec_0[2] ? data_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_11 = io_rvec_0[3] ? data_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_12 = io_rvec_0[4] ? data_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_13 = io_rvec_0[5] ? data_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_14 = io_rvec_0[6] ? data_6 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_15 = io_rvec_0[7] ? data_7 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_16 = _io_rdata_0_T_8 | _io_rdata_0_T_9; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_17 = _io_rdata_0_T_16 | _io_rdata_0_T_10; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_18 = _io_rdata_0_T_17 | _io_rdata_0_T_11; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_19 = _io_rdata_0_T_18 | _io_rdata_0_T_12; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_20 = _io_rdata_0_T_19 | _io_rdata_0_T_13; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_21 = _io_rdata_0_T_20 | _io_rdata_0_T_14; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_8 = io_rvec_1[0] ? data_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_9 = io_rvec_1[1] ? data_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_10 = io_rvec_1[2] ? data_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_11 = io_rvec_1[3] ? data_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_12 = io_rvec_1[4] ? data_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_13 = io_rvec_1[5] ? data_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_14 = io_rvec_1[6] ? data_6 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_15 = io_rvec_1[7] ? data_7 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_16 = _io_rdata_1_T_8 | _io_rdata_1_T_9; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_17 = _io_rdata_1_T_16 | _io_rdata_1_T_10; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_18 = _io_rdata_1_T_17 | _io_rdata_1_T_11; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_19 = _io_rdata_1_T_18 | _io_rdata_1_T_12; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_20 = _io_rdata_1_T_19 | _io_rdata_1_T_13; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_21 = _io_rdata_1_T_20 | _io_rdata_1_T_14; // @[Mux.scala 27:73]
  wire  w__0 = io_wen_0 & io_wvec_0[0]; // @[DataModuleTemplate.scala 67:56]
  wire  w__1 = io_wen_1 & io_wvec_1[0]; // @[DataModuleTemplate.scala 67:56]
  wire  w__2 = io_wen_2 & io_wvec_2[0]; // @[DataModuleTemplate.scala 67:56]
  wire  w__3 = io_wen_3 & io_wvec_3[0]; // @[DataModuleTemplate.scala 67:56]
  wire  w__4 = io_wen_4 & io_wvec_4[0]; // @[DataModuleTemplate.scala 67:56]
  wire  w__5 = io_wen_5 & io_wvec_5[0]; // @[DataModuleTemplate.scala 67:56]
  wire [5:0] _T_66 = {w__5,w__4,w__3,w__2,w__1,w__0}; // @[DataModuleTemplate.scala 69:13]
  wire [63:0] _data_0_T = w__0 ? io_wdata_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_0_T_1 = w__1 ? io_wdata_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_0_T_2 = w__2 ? io_wdata_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_0_T_3 = w__3 ? io_wdata_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_0_T_4 = w__4 ? io_wdata_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_0_T_5 = w__5 ? io_wdata_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_0_T_6 = _data_0_T | _data_0_T_1; // @[Mux.scala 27:73]
  wire [63:0] _data_0_T_7 = _data_0_T_6 | _data_0_T_2; // @[Mux.scala 27:73]
  wire [63:0] _data_0_T_8 = _data_0_T_7 | _data_0_T_3; // @[Mux.scala 27:73]
  wire [63:0] _data_0_T_9 = _data_0_T_8 | _data_0_T_4; // @[Mux.scala 27:73]
  wire [63:0] _data_0_T_10 = _data_0_T_9 | _data_0_T_5; // @[Mux.scala 27:73]
  wire  w_1_0 = io_wen_0 & io_wvec_0[1]; // @[DataModuleTemplate.scala 67:56]
  wire  w_1_1 = io_wen_1 & io_wvec_1[1]; // @[DataModuleTemplate.scala 67:56]
  wire  w_1_2 = io_wen_2 & io_wvec_2[1]; // @[DataModuleTemplate.scala 67:56]
  wire  w_1_3 = io_wen_3 & io_wvec_3[1]; // @[DataModuleTemplate.scala 67:56]
  wire  w_1_4 = io_wen_4 & io_wvec_4[1]; // @[DataModuleTemplate.scala 67:56]
  wire  w_1_5 = io_wen_5 & io_wvec_5[1]; // @[DataModuleTemplate.scala 67:56]
  wire [5:0] _T_82 = {w_1_5,w_1_4,w_1_3,w_1_2,w_1_1,w_1_0}; // @[DataModuleTemplate.scala 69:13]
  wire [63:0] _data_1_T = w_1_0 ? io_wdata_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_1_T_1 = w_1_1 ? io_wdata_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_1_T_2 = w_1_2 ? io_wdata_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_1_T_3 = w_1_3 ? io_wdata_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_1_T_4 = w_1_4 ? io_wdata_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_1_T_5 = w_1_5 ? io_wdata_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_1_T_6 = _data_1_T | _data_1_T_1; // @[Mux.scala 27:73]
  wire [63:0] _data_1_T_7 = _data_1_T_6 | _data_1_T_2; // @[Mux.scala 27:73]
  wire [63:0] _data_1_T_8 = _data_1_T_7 | _data_1_T_3; // @[Mux.scala 27:73]
  wire [63:0] _data_1_T_9 = _data_1_T_8 | _data_1_T_4; // @[Mux.scala 27:73]
  wire [63:0] _data_1_T_10 = _data_1_T_9 | _data_1_T_5; // @[Mux.scala 27:73]
  wire  w_2_0 = io_wen_0 & io_wvec_0[2]; // @[DataModuleTemplate.scala 67:56]
  wire  w_2_1 = io_wen_1 & io_wvec_1[2]; // @[DataModuleTemplate.scala 67:56]
  wire  w_2_2 = io_wen_2 & io_wvec_2[2]; // @[DataModuleTemplate.scala 67:56]
  wire  w_2_3 = io_wen_3 & io_wvec_3[2]; // @[DataModuleTemplate.scala 67:56]
  wire  w_2_4 = io_wen_4 & io_wvec_4[2]; // @[DataModuleTemplate.scala 67:56]
  wire  w_2_5 = io_wen_5 & io_wvec_5[2]; // @[DataModuleTemplate.scala 67:56]
  wire [5:0] _T_98 = {w_2_5,w_2_4,w_2_3,w_2_2,w_2_1,w_2_0}; // @[DataModuleTemplate.scala 69:13]
  wire [63:0] _data_2_T = w_2_0 ? io_wdata_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_2_T_1 = w_2_1 ? io_wdata_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_2_T_2 = w_2_2 ? io_wdata_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_2_T_3 = w_2_3 ? io_wdata_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_2_T_4 = w_2_4 ? io_wdata_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_2_T_5 = w_2_5 ? io_wdata_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_2_T_6 = _data_2_T | _data_2_T_1; // @[Mux.scala 27:73]
  wire [63:0] _data_2_T_7 = _data_2_T_6 | _data_2_T_2; // @[Mux.scala 27:73]
  wire [63:0] _data_2_T_8 = _data_2_T_7 | _data_2_T_3; // @[Mux.scala 27:73]
  wire [63:0] _data_2_T_9 = _data_2_T_8 | _data_2_T_4; // @[Mux.scala 27:73]
  wire [63:0] _data_2_T_10 = _data_2_T_9 | _data_2_T_5; // @[Mux.scala 27:73]
  wire  w_3_0 = io_wen_0 & io_wvec_0[3]; // @[DataModuleTemplate.scala 67:56]
  wire  w_3_1 = io_wen_1 & io_wvec_1[3]; // @[DataModuleTemplate.scala 67:56]
  wire  w_3_2 = io_wen_2 & io_wvec_2[3]; // @[DataModuleTemplate.scala 67:56]
  wire  w_3_3 = io_wen_3 & io_wvec_3[3]; // @[DataModuleTemplate.scala 67:56]
  wire  w_3_4 = io_wen_4 & io_wvec_4[3]; // @[DataModuleTemplate.scala 67:56]
  wire  w_3_5 = io_wen_5 & io_wvec_5[3]; // @[DataModuleTemplate.scala 67:56]
  wire [5:0] _T_114 = {w_3_5,w_3_4,w_3_3,w_3_2,w_3_1,w_3_0}; // @[DataModuleTemplate.scala 69:13]
  wire [63:0] _data_3_T = w_3_0 ? io_wdata_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_3_T_1 = w_3_1 ? io_wdata_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_3_T_2 = w_3_2 ? io_wdata_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_3_T_3 = w_3_3 ? io_wdata_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_3_T_4 = w_3_4 ? io_wdata_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_3_T_5 = w_3_5 ? io_wdata_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_3_T_6 = _data_3_T | _data_3_T_1; // @[Mux.scala 27:73]
  wire [63:0] _data_3_T_7 = _data_3_T_6 | _data_3_T_2; // @[Mux.scala 27:73]
  wire [63:0] _data_3_T_8 = _data_3_T_7 | _data_3_T_3; // @[Mux.scala 27:73]
  wire [63:0] _data_3_T_9 = _data_3_T_8 | _data_3_T_4; // @[Mux.scala 27:73]
  wire [63:0] _data_3_T_10 = _data_3_T_9 | _data_3_T_5; // @[Mux.scala 27:73]
  wire  w_4_0 = io_wen_0 & io_wvec_0[4]; // @[DataModuleTemplate.scala 67:56]
  wire  w_4_1 = io_wen_1 & io_wvec_1[4]; // @[DataModuleTemplate.scala 67:56]
  wire  w_4_2 = io_wen_2 & io_wvec_2[4]; // @[DataModuleTemplate.scala 67:56]
  wire  w_4_3 = io_wen_3 & io_wvec_3[4]; // @[DataModuleTemplate.scala 67:56]
  wire  w_4_4 = io_wen_4 & io_wvec_4[4]; // @[DataModuleTemplate.scala 67:56]
  wire  w_4_5 = io_wen_5 & io_wvec_5[4]; // @[DataModuleTemplate.scala 67:56]
  wire [5:0] _T_130 = {w_4_5,w_4_4,w_4_3,w_4_2,w_4_1,w_4_0}; // @[DataModuleTemplate.scala 69:13]
  wire [63:0] _data_4_T = w_4_0 ? io_wdata_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_4_T_1 = w_4_1 ? io_wdata_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_4_T_2 = w_4_2 ? io_wdata_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_4_T_3 = w_4_3 ? io_wdata_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_4_T_4 = w_4_4 ? io_wdata_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_4_T_5 = w_4_5 ? io_wdata_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_4_T_6 = _data_4_T | _data_4_T_1; // @[Mux.scala 27:73]
  wire [63:0] _data_4_T_7 = _data_4_T_6 | _data_4_T_2; // @[Mux.scala 27:73]
  wire [63:0] _data_4_T_8 = _data_4_T_7 | _data_4_T_3; // @[Mux.scala 27:73]
  wire [63:0] _data_4_T_9 = _data_4_T_8 | _data_4_T_4; // @[Mux.scala 27:73]
  wire [63:0] _data_4_T_10 = _data_4_T_9 | _data_4_T_5; // @[Mux.scala 27:73]
  wire  w_5_0 = io_wen_0 & io_wvec_0[5]; // @[DataModuleTemplate.scala 67:56]
  wire  w_5_1 = io_wen_1 & io_wvec_1[5]; // @[DataModuleTemplate.scala 67:56]
  wire  w_5_2 = io_wen_2 & io_wvec_2[5]; // @[DataModuleTemplate.scala 67:56]
  wire  w_5_3 = io_wen_3 & io_wvec_3[5]; // @[DataModuleTemplate.scala 67:56]
  wire  w_5_4 = io_wen_4 & io_wvec_4[5]; // @[DataModuleTemplate.scala 67:56]
  wire  w_5_5 = io_wen_5 & io_wvec_5[5]; // @[DataModuleTemplate.scala 67:56]
  wire [5:0] _T_146 = {w_5_5,w_5_4,w_5_3,w_5_2,w_5_1,w_5_0}; // @[DataModuleTemplate.scala 69:13]
  wire [63:0] _data_5_T = w_5_0 ? io_wdata_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_5_T_1 = w_5_1 ? io_wdata_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_5_T_2 = w_5_2 ? io_wdata_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_5_T_3 = w_5_3 ? io_wdata_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_5_T_4 = w_5_4 ? io_wdata_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_5_T_5 = w_5_5 ? io_wdata_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_5_T_6 = _data_5_T | _data_5_T_1; // @[Mux.scala 27:73]
  wire [63:0] _data_5_T_7 = _data_5_T_6 | _data_5_T_2; // @[Mux.scala 27:73]
  wire [63:0] _data_5_T_8 = _data_5_T_7 | _data_5_T_3; // @[Mux.scala 27:73]
  wire [63:0] _data_5_T_9 = _data_5_T_8 | _data_5_T_4; // @[Mux.scala 27:73]
  wire [63:0] _data_5_T_10 = _data_5_T_9 | _data_5_T_5; // @[Mux.scala 27:73]
  wire  w_6_0 = io_wen_0 & io_wvec_0[6]; // @[DataModuleTemplate.scala 67:56]
  wire  w_6_1 = io_wen_1 & io_wvec_1[6]; // @[DataModuleTemplate.scala 67:56]
  wire  w_6_2 = io_wen_2 & io_wvec_2[6]; // @[DataModuleTemplate.scala 67:56]
  wire  w_6_3 = io_wen_3 & io_wvec_3[6]; // @[DataModuleTemplate.scala 67:56]
  wire  w_6_4 = io_wen_4 & io_wvec_4[6]; // @[DataModuleTemplate.scala 67:56]
  wire  w_6_5 = io_wen_5 & io_wvec_5[6]; // @[DataModuleTemplate.scala 67:56]
  wire [5:0] _T_162 = {w_6_5,w_6_4,w_6_3,w_6_2,w_6_1,w_6_0}; // @[DataModuleTemplate.scala 69:13]
  wire [63:0] _data_6_T = w_6_0 ? io_wdata_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_6_T_1 = w_6_1 ? io_wdata_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_6_T_2 = w_6_2 ? io_wdata_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_6_T_3 = w_6_3 ? io_wdata_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_6_T_4 = w_6_4 ? io_wdata_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_6_T_5 = w_6_5 ? io_wdata_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_6_T_6 = _data_6_T | _data_6_T_1; // @[Mux.scala 27:73]
  wire [63:0] _data_6_T_7 = _data_6_T_6 | _data_6_T_2; // @[Mux.scala 27:73]
  wire [63:0] _data_6_T_8 = _data_6_T_7 | _data_6_T_3; // @[Mux.scala 27:73]
  wire [63:0] _data_6_T_9 = _data_6_T_8 | _data_6_T_4; // @[Mux.scala 27:73]
  wire [63:0] _data_6_T_10 = _data_6_T_9 | _data_6_T_5; // @[Mux.scala 27:73]
  wire  w_7_0 = io_wen_0 & io_wvec_0[7]; // @[DataModuleTemplate.scala 67:56]
  wire  w_7_1 = io_wen_1 & io_wvec_1[7]; // @[DataModuleTemplate.scala 67:56]
  wire  w_7_2 = io_wen_2 & io_wvec_2[7]; // @[DataModuleTemplate.scala 67:56]
  wire  w_7_3 = io_wen_3 & io_wvec_3[7]; // @[DataModuleTemplate.scala 67:56]
  wire  w_7_4 = io_wen_4 & io_wvec_4[7]; // @[DataModuleTemplate.scala 67:56]
  wire  w_7_5 = io_wen_5 & io_wvec_5[7]; // @[DataModuleTemplate.scala 67:56]
  wire [5:0] _T_178 = {w_7_5,w_7_4,w_7_3,w_7_2,w_7_1,w_7_0}; // @[DataModuleTemplate.scala 69:13]
  wire [63:0] _data_7_T = w_7_0 ? io_wdata_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_7_T_1 = w_7_1 ? io_wdata_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_7_T_2 = w_7_2 ? io_wdata_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_7_T_3 = w_7_3 ? io_wdata_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_7_T_4 = w_7_4 ? io_wdata_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_7_T_5 = w_7_5 ? io_wdata_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_7_T_6 = _data_7_T | _data_7_T_1; // @[Mux.scala 27:73]
  wire [63:0] _data_7_T_7 = _data_7_T_6 | _data_7_T_2; // @[Mux.scala 27:73]
  wire [63:0] _data_7_T_8 = _data_7_T_7 | _data_7_T_3; // @[Mux.scala 27:73]
  wire [63:0] _data_7_T_9 = _data_7_T_8 | _data_7_T_4; // @[Mux.scala 27:73]
  wire [63:0] _data_7_T_10 = _data_7_T_9 | _data_7_T_5; // @[Mux.scala 27:73]
  assign io_rdata_0 = _io_rdata_0_T_21 | _io_rdata_0_T_15; // @[Mux.scala 27:73]
  assign io_rdata_1 = _io_rdata_1_T_21 | _io_rdata_1_T_15; // @[Mux.scala 27:73]
  always @(posedge clock) begin
    if (|_T_66) begin // @[DataModuleTemplate.scala 69:25]
      data_0 <= _data_0_T_10; // @[DataModuleTemplate.scala 70:15]
    end
    if (|_T_82) begin // @[DataModuleTemplate.scala 69:25]
      data_1 <= _data_1_T_10; // @[DataModuleTemplate.scala 70:15]
    end
    if (|_T_98) begin // @[DataModuleTemplate.scala 69:25]
      data_2 <= _data_2_T_10; // @[DataModuleTemplate.scala 70:15]
    end
    if (|_T_114) begin // @[DataModuleTemplate.scala 69:25]
      data_3 <= _data_3_T_10; // @[DataModuleTemplate.scala 70:15]
    end
    if (|_T_130) begin // @[DataModuleTemplate.scala 69:25]
      data_4 <= _data_4_T_10; // @[DataModuleTemplate.scala 70:15]
    end
    if (|_T_146) begin // @[DataModuleTemplate.scala 69:25]
      data_5 <= _data_5_T_10; // @[DataModuleTemplate.scala 70:15]
    end
    if (|_T_162) begin // @[DataModuleTemplate.scala 69:25]
      data_6 <= _data_6_T_10; // @[DataModuleTemplate.scala 70:15]
    end
    if (|_T_178) begin // @[DataModuleTemplate.scala 69:25]
      data_7 <= _data_7_T_10; // @[DataModuleTemplate.scala 70:15]
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
  data_0 = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  data_1 = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  data_2 = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  data_3 = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  data_4 = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  data_5 = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  data_6 = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  data_7 = _RAND_7[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

