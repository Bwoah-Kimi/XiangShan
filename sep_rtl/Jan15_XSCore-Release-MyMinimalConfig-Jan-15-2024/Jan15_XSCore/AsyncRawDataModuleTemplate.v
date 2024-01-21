module AsyncRawDataModuleTemplate(
  input         clock,
  input  [15:0] io_rvec_0,
  input  [15:0] io_rvec_1,
  input  [15:0] io_rvec_2,
  output [63:0] io_rdata_0,
  output [63:0] io_rdata_1,
  output [63:0] io_rdata_2,
  input         io_wen_0,
  input         io_wen_1,
  input         io_wen_2,
  input         io_wen_3,
  input         io_wen_4,
  input         io_wen_5,
  input         io_wen_6,
  input  [15:0] io_wvec_0,
  input  [15:0] io_wvec_1,
  input  [15:0] io_wvec_2,
  input  [15:0] io_wvec_3,
  input  [15:0] io_wvec_4,
  input  [15:0] io_wvec_5,
  input  [15:0] io_wvec_6,
  input  [63:0] io_wdata_0,
  input  [63:0] io_wdata_1,
  input  [63:0] io_wdata_2,
  input  [63:0] io_wdata_3,
  input  [63:0] io_wdata_4,
  input  [63:0] io_wdata_5,
  input  [63:0] io_wdata_6
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
  reg [63:0] data_0; // @[DataModuleTemplate.scala 38:17]
  reg [63:0] data_1; // @[DataModuleTemplate.scala 38:17]
  reg [63:0] data_2; // @[DataModuleTemplate.scala 38:17]
  reg [63:0] data_3; // @[DataModuleTemplate.scala 38:17]
  reg [63:0] data_4; // @[DataModuleTemplate.scala 38:17]
  reg [63:0] data_5; // @[DataModuleTemplate.scala 38:17]
  reg [63:0] data_6; // @[DataModuleTemplate.scala 38:17]
  reg [63:0] data_7; // @[DataModuleTemplate.scala 38:17]
  reg [63:0] data_8; // @[DataModuleTemplate.scala 38:17]
  reg [63:0] data_9; // @[DataModuleTemplate.scala 38:17]
  reg [63:0] data_10; // @[DataModuleTemplate.scala 38:17]
  reg [63:0] data_11; // @[DataModuleTemplate.scala 38:17]
  reg [63:0] data_12; // @[DataModuleTemplate.scala 38:17]
  reg [63:0] data_13; // @[DataModuleTemplate.scala 38:17]
  reg [63:0] data_14; // @[DataModuleTemplate.scala 38:17]
  reg [63:0] data_15; // @[DataModuleTemplate.scala 38:17]
  wire [63:0] _io_rdata_0_T_16 = io_rvec_0[0] ? data_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_17 = io_rvec_0[1] ? data_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_18 = io_rvec_0[2] ? data_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_19 = io_rvec_0[3] ? data_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_20 = io_rvec_0[4] ? data_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_21 = io_rvec_0[5] ? data_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_22 = io_rvec_0[6] ? data_6 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_23 = io_rvec_0[7] ? data_7 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_24 = io_rvec_0[8] ? data_8 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_25 = io_rvec_0[9] ? data_9 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_26 = io_rvec_0[10] ? data_10 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_27 = io_rvec_0[11] ? data_11 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_28 = io_rvec_0[12] ? data_12 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_29 = io_rvec_0[13] ? data_13 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_30 = io_rvec_0[14] ? data_14 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_31 = io_rvec_0[15] ? data_15 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_32 = _io_rdata_0_T_16 | _io_rdata_0_T_17; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_33 = _io_rdata_0_T_32 | _io_rdata_0_T_18; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_34 = _io_rdata_0_T_33 | _io_rdata_0_T_19; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_35 = _io_rdata_0_T_34 | _io_rdata_0_T_20; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_36 = _io_rdata_0_T_35 | _io_rdata_0_T_21; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_37 = _io_rdata_0_T_36 | _io_rdata_0_T_22; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_38 = _io_rdata_0_T_37 | _io_rdata_0_T_23; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_39 = _io_rdata_0_T_38 | _io_rdata_0_T_24; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_40 = _io_rdata_0_T_39 | _io_rdata_0_T_25; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_41 = _io_rdata_0_T_40 | _io_rdata_0_T_26; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_42 = _io_rdata_0_T_41 | _io_rdata_0_T_27; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_43 = _io_rdata_0_T_42 | _io_rdata_0_T_28; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_44 = _io_rdata_0_T_43 | _io_rdata_0_T_29; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_0_T_45 = _io_rdata_0_T_44 | _io_rdata_0_T_30; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_16 = io_rvec_1[0] ? data_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_17 = io_rvec_1[1] ? data_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_18 = io_rvec_1[2] ? data_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_19 = io_rvec_1[3] ? data_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_20 = io_rvec_1[4] ? data_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_21 = io_rvec_1[5] ? data_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_22 = io_rvec_1[6] ? data_6 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_23 = io_rvec_1[7] ? data_7 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_24 = io_rvec_1[8] ? data_8 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_25 = io_rvec_1[9] ? data_9 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_26 = io_rvec_1[10] ? data_10 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_27 = io_rvec_1[11] ? data_11 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_28 = io_rvec_1[12] ? data_12 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_29 = io_rvec_1[13] ? data_13 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_30 = io_rvec_1[14] ? data_14 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_31 = io_rvec_1[15] ? data_15 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_32 = _io_rdata_1_T_16 | _io_rdata_1_T_17; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_33 = _io_rdata_1_T_32 | _io_rdata_1_T_18; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_34 = _io_rdata_1_T_33 | _io_rdata_1_T_19; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_35 = _io_rdata_1_T_34 | _io_rdata_1_T_20; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_36 = _io_rdata_1_T_35 | _io_rdata_1_T_21; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_37 = _io_rdata_1_T_36 | _io_rdata_1_T_22; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_38 = _io_rdata_1_T_37 | _io_rdata_1_T_23; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_39 = _io_rdata_1_T_38 | _io_rdata_1_T_24; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_40 = _io_rdata_1_T_39 | _io_rdata_1_T_25; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_41 = _io_rdata_1_T_40 | _io_rdata_1_T_26; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_42 = _io_rdata_1_T_41 | _io_rdata_1_T_27; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_43 = _io_rdata_1_T_42 | _io_rdata_1_T_28; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_44 = _io_rdata_1_T_43 | _io_rdata_1_T_29; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_1_T_45 = _io_rdata_1_T_44 | _io_rdata_1_T_30; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_2_T_16 = io_rvec_2[0] ? data_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_2_T_17 = io_rvec_2[1] ? data_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_2_T_18 = io_rvec_2[2] ? data_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_2_T_19 = io_rvec_2[3] ? data_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_2_T_20 = io_rvec_2[4] ? data_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_2_T_21 = io_rvec_2[5] ? data_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_2_T_22 = io_rvec_2[6] ? data_6 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_2_T_23 = io_rvec_2[7] ? data_7 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_2_T_24 = io_rvec_2[8] ? data_8 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_2_T_25 = io_rvec_2[9] ? data_9 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_2_T_26 = io_rvec_2[10] ? data_10 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_2_T_27 = io_rvec_2[11] ? data_11 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_2_T_28 = io_rvec_2[12] ? data_12 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_2_T_29 = io_rvec_2[13] ? data_13 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_2_T_30 = io_rvec_2[14] ? data_14 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_2_T_31 = io_rvec_2[15] ? data_15 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_2_T_32 = _io_rdata_2_T_16 | _io_rdata_2_T_17; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_2_T_33 = _io_rdata_2_T_32 | _io_rdata_2_T_18; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_2_T_34 = _io_rdata_2_T_33 | _io_rdata_2_T_19; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_2_T_35 = _io_rdata_2_T_34 | _io_rdata_2_T_20; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_2_T_36 = _io_rdata_2_T_35 | _io_rdata_2_T_21; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_2_T_37 = _io_rdata_2_T_36 | _io_rdata_2_T_22; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_2_T_38 = _io_rdata_2_T_37 | _io_rdata_2_T_23; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_2_T_39 = _io_rdata_2_T_38 | _io_rdata_2_T_24; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_2_T_40 = _io_rdata_2_T_39 | _io_rdata_2_T_25; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_2_T_41 = _io_rdata_2_T_40 | _io_rdata_2_T_26; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_2_T_42 = _io_rdata_2_T_41 | _io_rdata_2_T_27; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_2_T_43 = _io_rdata_2_T_42 | _io_rdata_2_T_28; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_2_T_44 = _io_rdata_2_T_43 | _io_rdata_2_T_29; // @[Mux.scala 27:73]
  wire [63:0] _io_rdata_2_T_45 = _io_rdata_2_T_44 | _io_rdata_2_T_30; // @[Mux.scala 27:73]
  wire  w__0 = io_wen_0 & io_wvec_0[0]; // @[DataModuleTemplate.scala 67:56]
  wire  w__1 = io_wen_1 & io_wvec_1[0]; // @[DataModuleTemplate.scala 67:56]
  wire  w__2 = io_wen_2 & io_wvec_2[0]; // @[DataModuleTemplate.scala 67:56]
  wire  w__3 = io_wen_3 & io_wvec_3[0]; // @[DataModuleTemplate.scala 67:56]
  wire  w__4 = io_wen_4 & io_wvec_4[0]; // @[DataModuleTemplate.scala 67:56]
  wire  w__5 = io_wen_5 & io_wvec_5[0]; // @[DataModuleTemplate.scala 67:56]
  wire  w__6 = io_wen_6 & io_wvec_6[0]; // @[DataModuleTemplate.scala 67:56]
  wire [6:0] _T_166 = {w__6,w__5,w__4,w__3,w__2,w__1,w__0}; // @[DataModuleTemplate.scala 69:13]
  wire [63:0] _data_0_T = w__0 ? io_wdata_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_0_T_1 = w__1 ? io_wdata_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_0_T_2 = w__2 ? io_wdata_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_0_T_3 = w__3 ? io_wdata_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_0_T_4 = w__4 ? io_wdata_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_0_T_5 = w__5 ? io_wdata_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_0_T_6 = w__6 ? io_wdata_6 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_0_T_7 = _data_0_T | _data_0_T_1; // @[Mux.scala 27:73]
  wire [63:0] _data_0_T_8 = _data_0_T_7 | _data_0_T_2; // @[Mux.scala 27:73]
  wire [63:0] _data_0_T_9 = _data_0_T_8 | _data_0_T_3; // @[Mux.scala 27:73]
  wire [63:0] _data_0_T_10 = _data_0_T_9 | _data_0_T_4; // @[Mux.scala 27:73]
  wire [63:0] _data_0_T_11 = _data_0_T_10 | _data_0_T_5; // @[Mux.scala 27:73]
  wire [63:0] _data_0_T_12 = _data_0_T_11 | _data_0_T_6; // @[Mux.scala 27:73]
  wire  w_1_0 = io_wen_0 & io_wvec_0[1]; // @[DataModuleTemplate.scala 67:56]
  wire  w_1_1 = io_wen_1 & io_wvec_1[1]; // @[DataModuleTemplate.scala 67:56]
  wire  w_1_2 = io_wen_2 & io_wvec_2[1]; // @[DataModuleTemplate.scala 67:56]
  wire  w_1_3 = io_wen_3 & io_wvec_3[1]; // @[DataModuleTemplate.scala 67:56]
  wire  w_1_4 = io_wen_4 & io_wvec_4[1]; // @[DataModuleTemplate.scala 67:56]
  wire  w_1_5 = io_wen_5 & io_wvec_5[1]; // @[DataModuleTemplate.scala 67:56]
  wire  w_1_6 = io_wen_6 & io_wvec_6[1]; // @[DataModuleTemplate.scala 67:56]
  wire [6:0] _T_184 = {w_1_6,w_1_5,w_1_4,w_1_3,w_1_2,w_1_1,w_1_0}; // @[DataModuleTemplate.scala 69:13]
  wire [63:0] _data_1_T = w_1_0 ? io_wdata_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_1_T_1 = w_1_1 ? io_wdata_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_1_T_2 = w_1_2 ? io_wdata_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_1_T_3 = w_1_3 ? io_wdata_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_1_T_4 = w_1_4 ? io_wdata_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_1_T_5 = w_1_5 ? io_wdata_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_1_T_6 = w_1_6 ? io_wdata_6 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_1_T_7 = _data_1_T | _data_1_T_1; // @[Mux.scala 27:73]
  wire [63:0] _data_1_T_8 = _data_1_T_7 | _data_1_T_2; // @[Mux.scala 27:73]
  wire [63:0] _data_1_T_9 = _data_1_T_8 | _data_1_T_3; // @[Mux.scala 27:73]
  wire [63:0] _data_1_T_10 = _data_1_T_9 | _data_1_T_4; // @[Mux.scala 27:73]
  wire [63:0] _data_1_T_11 = _data_1_T_10 | _data_1_T_5; // @[Mux.scala 27:73]
  wire [63:0] _data_1_T_12 = _data_1_T_11 | _data_1_T_6; // @[Mux.scala 27:73]
  wire  w_2_0 = io_wen_0 & io_wvec_0[2]; // @[DataModuleTemplate.scala 67:56]
  wire  w_2_1 = io_wen_1 & io_wvec_1[2]; // @[DataModuleTemplate.scala 67:56]
  wire  w_2_2 = io_wen_2 & io_wvec_2[2]; // @[DataModuleTemplate.scala 67:56]
  wire  w_2_3 = io_wen_3 & io_wvec_3[2]; // @[DataModuleTemplate.scala 67:56]
  wire  w_2_4 = io_wen_4 & io_wvec_4[2]; // @[DataModuleTemplate.scala 67:56]
  wire  w_2_5 = io_wen_5 & io_wvec_5[2]; // @[DataModuleTemplate.scala 67:56]
  wire  w_2_6 = io_wen_6 & io_wvec_6[2]; // @[DataModuleTemplate.scala 67:56]
  wire [6:0] _T_202 = {w_2_6,w_2_5,w_2_4,w_2_3,w_2_2,w_2_1,w_2_0}; // @[DataModuleTemplate.scala 69:13]
  wire [63:0] _data_2_T = w_2_0 ? io_wdata_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_2_T_1 = w_2_1 ? io_wdata_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_2_T_2 = w_2_2 ? io_wdata_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_2_T_3 = w_2_3 ? io_wdata_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_2_T_4 = w_2_4 ? io_wdata_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_2_T_5 = w_2_5 ? io_wdata_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_2_T_6 = w_2_6 ? io_wdata_6 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_2_T_7 = _data_2_T | _data_2_T_1; // @[Mux.scala 27:73]
  wire [63:0] _data_2_T_8 = _data_2_T_7 | _data_2_T_2; // @[Mux.scala 27:73]
  wire [63:0] _data_2_T_9 = _data_2_T_8 | _data_2_T_3; // @[Mux.scala 27:73]
  wire [63:0] _data_2_T_10 = _data_2_T_9 | _data_2_T_4; // @[Mux.scala 27:73]
  wire [63:0] _data_2_T_11 = _data_2_T_10 | _data_2_T_5; // @[Mux.scala 27:73]
  wire [63:0] _data_2_T_12 = _data_2_T_11 | _data_2_T_6; // @[Mux.scala 27:73]
  wire  w_3_0 = io_wen_0 & io_wvec_0[3]; // @[DataModuleTemplate.scala 67:56]
  wire  w_3_1 = io_wen_1 & io_wvec_1[3]; // @[DataModuleTemplate.scala 67:56]
  wire  w_3_2 = io_wen_2 & io_wvec_2[3]; // @[DataModuleTemplate.scala 67:56]
  wire  w_3_3 = io_wen_3 & io_wvec_3[3]; // @[DataModuleTemplate.scala 67:56]
  wire  w_3_4 = io_wen_4 & io_wvec_4[3]; // @[DataModuleTemplate.scala 67:56]
  wire  w_3_5 = io_wen_5 & io_wvec_5[3]; // @[DataModuleTemplate.scala 67:56]
  wire  w_3_6 = io_wen_6 & io_wvec_6[3]; // @[DataModuleTemplate.scala 67:56]
  wire [6:0] _T_220 = {w_3_6,w_3_5,w_3_4,w_3_3,w_3_2,w_3_1,w_3_0}; // @[DataModuleTemplate.scala 69:13]
  wire [63:0] _data_3_T = w_3_0 ? io_wdata_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_3_T_1 = w_3_1 ? io_wdata_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_3_T_2 = w_3_2 ? io_wdata_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_3_T_3 = w_3_3 ? io_wdata_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_3_T_4 = w_3_4 ? io_wdata_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_3_T_5 = w_3_5 ? io_wdata_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_3_T_6 = w_3_6 ? io_wdata_6 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_3_T_7 = _data_3_T | _data_3_T_1; // @[Mux.scala 27:73]
  wire [63:0] _data_3_T_8 = _data_3_T_7 | _data_3_T_2; // @[Mux.scala 27:73]
  wire [63:0] _data_3_T_9 = _data_3_T_8 | _data_3_T_3; // @[Mux.scala 27:73]
  wire [63:0] _data_3_T_10 = _data_3_T_9 | _data_3_T_4; // @[Mux.scala 27:73]
  wire [63:0] _data_3_T_11 = _data_3_T_10 | _data_3_T_5; // @[Mux.scala 27:73]
  wire [63:0] _data_3_T_12 = _data_3_T_11 | _data_3_T_6; // @[Mux.scala 27:73]
  wire  w_4_0 = io_wen_0 & io_wvec_0[4]; // @[DataModuleTemplate.scala 67:56]
  wire  w_4_1 = io_wen_1 & io_wvec_1[4]; // @[DataModuleTemplate.scala 67:56]
  wire  w_4_2 = io_wen_2 & io_wvec_2[4]; // @[DataModuleTemplate.scala 67:56]
  wire  w_4_3 = io_wen_3 & io_wvec_3[4]; // @[DataModuleTemplate.scala 67:56]
  wire  w_4_4 = io_wen_4 & io_wvec_4[4]; // @[DataModuleTemplate.scala 67:56]
  wire  w_4_5 = io_wen_5 & io_wvec_5[4]; // @[DataModuleTemplate.scala 67:56]
  wire  w_4_6 = io_wen_6 & io_wvec_6[4]; // @[DataModuleTemplate.scala 67:56]
  wire [6:0] _T_238 = {w_4_6,w_4_5,w_4_4,w_4_3,w_4_2,w_4_1,w_4_0}; // @[DataModuleTemplate.scala 69:13]
  wire [63:0] _data_4_T = w_4_0 ? io_wdata_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_4_T_1 = w_4_1 ? io_wdata_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_4_T_2 = w_4_2 ? io_wdata_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_4_T_3 = w_4_3 ? io_wdata_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_4_T_4 = w_4_4 ? io_wdata_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_4_T_5 = w_4_5 ? io_wdata_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_4_T_6 = w_4_6 ? io_wdata_6 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_4_T_7 = _data_4_T | _data_4_T_1; // @[Mux.scala 27:73]
  wire [63:0] _data_4_T_8 = _data_4_T_7 | _data_4_T_2; // @[Mux.scala 27:73]
  wire [63:0] _data_4_T_9 = _data_4_T_8 | _data_4_T_3; // @[Mux.scala 27:73]
  wire [63:0] _data_4_T_10 = _data_4_T_9 | _data_4_T_4; // @[Mux.scala 27:73]
  wire [63:0] _data_4_T_11 = _data_4_T_10 | _data_4_T_5; // @[Mux.scala 27:73]
  wire [63:0] _data_4_T_12 = _data_4_T_11 | _data_4_T_6; // @[Mux.scala 27:73]
  wire  w_5_0 = io_wen_0 & io_wvec_0[5]; // @[DataModuleTemplate.scala 67:56]
  wire  w_5_1 = io_wen_1 & io_wvec_1[5]; // @[DataModuleTemplate.scala 67:56]
  wire  w_5_2 = io_wen_2 & io_wvec_2[5]; // @[DataModuleTemplate.scala 67:56]
  wire  w_5_3 = io_wen_3 & io_wvec_3[5]; // @[DataModuleTemplate.scala 67:56]
  wire  w_5_4 = io_wen_4 & io_wvec_4[5]; // @[DataModuleTemplate.scala 67:56]
  wire  w_5_5 = io_wen_5 & io_wvec_5[5]; // @[DataModuleTemplate.scala 67:56]
  wire  w_5_6 = io_wen_6 & io_wvec_6[5]; // @[DataModuleTemplate.scala 67:56]
  wire [6:0] _T_256 = {w_5_6,w_5_5,w_5_4,w_5_3,w_5_2,w_5_1,w_5_0}; // @[DataModuleTemplate.scala 69:13]
  wire [63:0] _data_5_T = w_5_0 ? io_wdata_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_5_T_1 = w_5_1 ? io_wdata_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_5_T_2 = w_5_2 ? io_wdata_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_5_T_3 = w_5_3 ? io_wdata_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_5_T_4 = w_5_4 ? io_wdata_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_5_T_5 = w_5_5 ? io_wdata_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_5_T_6 = w_5_6 ? io_wdata_6 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_5_T_7 = _data_5_T | _data_5_T_1; // @[Mux.scala 27:73]
  wire [63:0] _data_5_T_8 = _data_5_T_7 | _data_5_T_2; // @[Mux.scala 27:73]
  wire [63:0] _data_5_T_9 = _data_5_T_8 | _data_5_T_3; // @[Mux.scala 27:73]
  wire [63:0] _data_5_T_10 = _data_5_T_9 | _data_5_T_4; // @[Mux.scala 27:73]
  wire [63:0] _data_5_T_11 = _data_5_T_10 | _data_5_T_5; // @[Mux.scala 27:73]
  wire [63:0] _data_5_T_12 = _data_5_T_11 | _data_5_T_6; // @[Mux.scala 27:73]
  wire  w_6_0 = io_wen_0 & io_wvec_0[6]; // @[DataModuleTemplate.scala 67:56]
  wire  w_6_1 = io_wen_1 & io_wvec_1[6]; // @[DataModuleTemplate.scala 67:56]
  wire  w_6_2 = io_wen_2 & io_wvec_2[6]; // @[DataModuleTemplate.scala 67:56]
  wire  w_6_3 = io_wen_3 & io_wvec_3[6]; // @[DataModuleTemplate.scala 67:56]
  wire  w_6_4 = io_wen_4 & io_wvec_4[6]; // @[DataModuleTemplate.scala 67:56]
  wire  w_6_5 = io_wen_5 & io_wvec_5[6]; // @[DataModuleTemplate.scala 67:56]
  wire  w_6_6 = io_wen_6 & io_wvec_6[6]; // @[DataModuleTemplate.scala 67:56]
  wire [6:0] _T_274 = {w_6_6,w_6_5,w_6_4,w_6_3,w_6_2,w_6_1,w_6_0}; // @[DataModuleTemplate.scala 69:13]
  wire [63:0] _data_6_T = w_6_0 ? io_wdata_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_6_T_1 = w_6_1 ? io_wdata_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_6_T_2 = w_6_2 ? io_wdata_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_6_T_3 = w_6_3 ? io_wdata_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_6_T_4 = w_6_4 ? io_wdata_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_6_T_5 = w_6_5 ? io_wdata_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_6_T_6 = w_6_6 ? io_wdata_6 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_6_T_7 = _data_6_T | _data_6_T_1; // @[Mux.scala 27:73]
  wire [63:0] _data_6_T_8 = _data_6_T_7 | _data_6_T_2; // @[Mux.scala 27:73]
  wire [63:0] _data_6_T_9 = _data_6_T_8 | _data_6_T_3; // @[Mux.scala 27:73]
  wire [63:0] _data_6_T_10 = _data_6_T_9 | _data_6_T_4; // @[Mux.scala 27:73]
  wire [63:0] _data_6_T_11 = _data_6_T_10 | _data_6_T_5; // @[Mux.scala 27:73]
  wire [63:0] _data_6_T_12 = _data_6_T_11 | _data_6_T_6; // @[Mux.scala 27:73]
  wire  w_7_0 = io_wen_0 & io_wvec_0[7]; // @[DataModuleTemplate.scala 67:56]
  wire  w_7_1 = io_wen_1 & io_wvec_1[7]; // @[DataModuleTemplate.scala 67:56]
  wire  w_7_2 = io_wen_2 & io_wvec_2[7]; // @[DataModuleTemplate.scala 67:56]
  wire  w_7_3 = io_wen_3 & io_wvec_3[7]; // @[DataModuleTemplate.scala 67:56]
  wire  w_7_4 = io_wen_4 & io_wvec_4[7]; // @[DataModuleTemplate.scala 67:56]
  wire  w_7_5 = io_wen_5 & io_wvec_5[7]; // @[DataModuleTemplate.scala 67:56]
  wire  w_7_6 = io_wen_6 & io_wvec_6[7]; // @[DataModuleTemplate.scala 67:56]
  wire [6:0] _T_292 = {w_7_6,w_7_5,w_7_4,w_7_3,w_7_2,w_7_1,w_7_0}; // @[DataModuleTemplate.scala 69:13]
  wire [63:0] _data_7_T = w_7_0 ? io_wdata_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_7_T_1 = w_7_1 ? io_wdata_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_7_T_2 = w_7_2 ? io_wdata_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_7_T_3 = w_7_3 ? io_wdata_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_7_T_4 = w_7_4 ? io_wdata_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_7_T_5 = w_7_5 ? io_wdata_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_7_T_6 = w_7_6 ? io_wdata_6 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_7_T_7 = _data_7_T | _data_7_T_1; // @[Mux.scala 27:73]
  wire [63:0] _data_7_T_8 = _data_7_T_7 | _data_7_T_2; // @[Mux.scala 27:73]
  wire [63:0] _data_7_T_9 = _data_7_T_8 | _data_7_T_3; // @[Mux.scala 27:73]
  wire [63:0] _data_7_T_10 = _data_7_T_9 | _data_7_T_4; // @[Mux.scala 27:73]
  wire [63:0] _data_7_T_11 = _data_7_T_10 | _data_7_T_5; // @[Mux.scala 27:73]
  wire [63:0] _data_7_T_12 = _data_7_T_11 | _data_7_T_6; // @[Mux.scala 27:73]
  wire  w_8_0 = io_wen_0 & io_wvec_0[8]; // @[DataModuleTemplate.scala 67:56]
  wire  w_8_1 = io_wen_1 & io_wvec_1[8]; // @[DataModuleTemplate.scala 67:56]
  wire  w_8_2 = io_wen_2 & io_wvec_2[8]; // @[DataModuleTemplate.scala 67:56]
  wire  w_8_3 = io_wen_3 & io_wvec_3[8]; // @[DataModuleTemplate.scala 67:56]
  wire  w_8_4 = io_wen_4 & io_wvec_4[8]; // @[DataModuleTemplate.scala 67:56]
  wire  w_8_5 = io_wen_5 & io_wvec_5[8]; // @[DataModuleTemplate.scala 67:56]
  wire  w_8_6 = io_wen_6 & io_wvec_6[8]; // @[DataModuleTemplate.scala 67:56]
  wire [6:0] _T_310 = {w_8_6,w_8_5,w_8_4,w_8_3,w_8_2,w_8_1,w_8_0}; // @[DataModuleTemplate.scala 69:13]
  wire [63:0] _data_8_T = w_8_0 ? io_wdata_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_8_T_1 = w_8_1 ? io_wdata_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_8_T_2 = w_8_2 ? io_wdata_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_8_T_3 = w_8_3 ? io_wdata_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_8_T_4 = w_8_4 ? io_wdata_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_8_T_5 = w_8_5 ? io_wdata_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_8_T_6 = w_8_6 ? io_wdata_6 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_8_T_7 = _data_8_T | _data_8_T_1; // @[Mux.scala 27:73]
  wire [63:0] _data_8_T_8 = _data_8_T_7 | _data_8_T_2; // @[Mux.scala 27:73]
  wire [63:0] _data_8_T_9 = _data_8_T_8 | _data_8_T_3; // @[Mux.scala 27:73]
  wire [63:0] _data_8_T_10 = _data_8_T_9 | _data_8_T_4; // @[Mux.scala 27:73]
  wire [63:0] _data_8_T_11 = _data_8_T_10 | _data_8_T_5; // @[Mux.scala 27:73]
  wire [63:0] _data_8_T_12 = _data_8_T_11 | _data_8_T_6; // @[Mux.scala 27:73]
  wire  w_9_0 = io_wen_0 & io_wvec_0[9]; // @[DataModuleTemplate.scala 67:56]
  wire  w_9_1 = io_wen_1 & io_wvec_1[9]; // @[DataModuleTemplate.scala 67:56]
  wire  w_9_2 = io_wen_2 & io_wvec_2[9]; // @[DataModuleTemplate.scala 67:56]
  wire  w_9_3 = io_wen_3 & io_wvec_3[9]; // @[DataModuleTemplate.scala 67:56]
  wire  w_9_4 = io_wen_4 & io_wvec_4[9]; // @[DataModuleTemplate.scala 67:56]
  wire  w_9_5 = io_wen_5 & io_wvec_5[9]; // @[DataModuleTemplate.scala 67:56]
  wire  w_9_6 = io_wen_6 & io_wvec_6[9]; // @[DataModuleTemplate.scala 67:56]
  wire [6:0] _T_328 = {w_9_6,w_9_5,w_9_4,w_9_3,w_9_2,w_9_1,w_9_0}; // @[DataModuleTemplate.scala 69:13]
  wire [63:0] _data_9_T = w_9_0 ? io_wdata_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_9_T_1 = w_9_1 ? io_wdata_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_9_T_2 = w_9_2 ? io_wdata_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_9_T_3 = w_9_3 ? io_wdata_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_9_T_4 = w_9_4 ? io_wdata_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_9_T_5 = w_9_5 ? io_wdata_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_9_T_6 = w_9_6 ? io_wdata_6 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_9_T_7 = _data_9_T | _data_9_T_1; // @[Mux.scala 27:73]
  wire [63:0] _data_9_T_8 = _data_9_T_7 | _data_9_T_2; // @[Mux.scala 27:73]
  wire [63:0] _data_9_T_9 = _data_9_T_8 | _data_9_T_3; // @[Mux.scala 27:73]
  wire [63:0] _data_9_T_10 = _data_9_T_9 | _data_9_T_4; // @[Mux.scala 27:73]
  wire [63:0] _data_9_T_11 = _data_9_T_10 | _data_9_T_5; // @[Mux.scala 27:73]
  wire [63:0] _data_9_T_12 = _data_9_T_11 | _data_9_T_6; // @[Mux.scala 27:73]
  wire  w_10_0 = io_wen_0 & io_wvec_0[10]; // @[DataModuleTemplate.scala 67:56]
  wire  w_10_1 = io_wen_1 & io_wvec_1[10]; // @[DataModuleTemplate.scala 67:56]
  wire  w_10_2 = io_wen_2 & io_wvec_2[10]; // @[DataModuleTemplate.scala 67:56]
  wire  w_10_3 = io_wen_3 & io_wvec_3[10]; // @[DataModuleTemplate.scala 67:56]
  wire  w_10_4 = io_wen_4 & io_wvec_4[10]; // @[DataModuleTemplate.scala 67:56]
  wire  w_10_5 = io_wen_5 & io_wvec_5[10]; // @[DataModuleTemplate.scala 67:56]
  wire  w_10_6 = io_wen_6 & io_wvec_6[10]; // @[DataModuleTemplate.scala 67:56]
  wire [6:0] _T_346 = {w_10_6,w_10_5,w_10_4,w_10_3,w_10_2,w_10_1,w_10_0}; // @[DataModuleTemplate.scala 69:13]
  wire [63:0] _data_10_T = w_10_0 ? io_wdata_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_10_T_1 = w_10_1 ? io_wdata_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_10_T_2 = w_10_2 ? io_wdata_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_10_T_3 = w_10_3 ? io_wdata_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_10_T_4 = w_10_4 ? io_wdata_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_10_T_5 = w_10_5 ? io_wdata_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_10_T_6 = w_10_6 ? io_wdata_6 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_10_T_7 = _data_10_T | _data_10_T_1; // @[Mux.scala 27:73]
  wire [63:0] _data_10_T_8 = _data_10_T_7 | _data_10_T_2; // @[Mux.scala 27:73]
  wire [63:0] _data_10_T_9 = _data_10_T_8 | _data_10_T_3; // @[Mux.scala 27:73]
  wire [63:0] _data_10_T_10 = _data_10_T_9 | _data_10_T_4; // @[Mux.scala 27:73]
  wire [63:0] _data_10_T_11 = _data_10_T_10 | _data_10_T_5; // @[Mux.scala 27:73]
  wire [63:0] _data_10_T_12 = _data_10_T_11 | _data_10_T_6; // @[Mux.scala 27:73]
  wire  w_11_0 = io_wen_0 & io_wvec_0[11]; // @[DataModuleTemplate.scala 67:56]
  wire  w_11_1 = io_wen_1 & io_wvec_1[11]; // @[DataModuleTemplate.scala 67:56]
  wire  w_11_2 = io_wen_2 & io_wvec_2[11]; // @[DataModuleTemplate.scala 67:56]
  wire  w_11_3 = io_wen_3 & io_wvec_3[11]; // @[DataModuleTemplate.scala 67:56]
  wire  w_11_4 = io_wen_4 & io_wvec_4[11]; // @[DataModuleTemplate.scala 67:56]
  wire  w_11_5 = io_wen_5 & io_wvec_5[11]; // @[DataModuleTemplate.scala 67:56]
  wire  w_11_6 = io_wen_6 & io_wvec_6[11]; // @[DataModuleTemplate.scala 67:56]
  wire [6:0] _T_364 = {w_11_6,w_11_5,w_11_4,w_11_3,w_11_2,w_11_1,w_11_0}; // @[DataModuleTemplate.scala 69:13]
  wire [63:0] _data_11_T = w_11_0 ? io_wdata_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_11_T_1 = w_11_1 ? io_wdata_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_11_T_2 = w_11_2 ? io_wdata_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_11_T_3 = w_11_3 ? io_wdata_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_11_T_4 = w_11_4 ? io_wdata_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_11_T_5 = w_11_5 ? io_wdata_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_11_T_6 = w_11_6 ? io_wdata_6 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_11_T_7 = _data_11_T | _data_11_T_1; // @[Mux.scala 27:73]
  wire [63:0] _data_11_T_8 = _data_11_T_7 | _data_11_T_2; // @[Mux.scala 27:73]
  wire [63:0] _data_11_T_9 = _data_11_T_8 | _data_11_T_3; // @[Mux.scala 27:73]
  wire [63:0] _data_11_T_10 = _data_11_T_9 | _data_11_T_4; // @[Mux.scala 27:73]
  wire [63:0] _data_11_T_11 = _data_11_T_10 | _data_11_T_5; // @[Mux.scala 27:73]
  wire [63:0] _data_11_T_12 = _data_11_T_11 | _data_11_T_6; // @[Mux.scala 27:73]
  wire  w_12_0 = io_wen_0 & io_wvec_0[12]; // @[DataModuleTemplate.scala 67:56]
  wire  w_12_1 = io_wen_1 & io_wvec_1[12]; // @[DataModuleTemplate.scala 67:56]
  wire  w_12_2 = io_wen_2 & io_wvec_2[12]; // @[DataModuleTemplate.scala 67:56]
  wire  w_12_3 = io_wen_3 & io_wvec_3[12]; // @[DataModuleTemplate.scala 67:56]
  wire  w_12_4 = io_wen_4 & io_wvec_4[12]; // @[DataModuleTemplate.scala 67:56]
  wire  w_12_5 = io_wen_5 & io_wvec_5[12]; // @[DataModuleTemplate.scala 67:56]
  wire  w_12_6 = io_wen_6 & io_wvec_6[12]; // @[DataModuleTemplate.scala 67:56]
  wire [6:0] _T_382 = {w_12_6,w_12_5,w_12_4,w_12_3,w_12_2,w_12_1,w_12_0}; // @[DataModuleTemplate.scala 69:13]
  wire [63:0] _data_12_T = w_12_0 ? io_wdata_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_12_T_1 = w_12_1 ? io_wdata_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_12_T_2 = w_12_2 ? io_wdata_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_12_T_3 = w_12_3 ? io_wdata_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_12_T_4 = w_12_4 ? io_wdata_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_12_T_5 = w_12_5 ? io_wdata_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_12_T_6 = w_12_6 ? io_wdata_6 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_12_T_7 = _data_12_T | _data_12_T_1; // @[Mux.scala 27:73]
  wire [63:0] _data_12_T_8 = _data_12_T_7 | _data_12_T_2; // @[Mux.scala 27:73]
  wire [63:0] _data_12_T_9 = _data_12_T_8 | _data_12_T_3; // @[Mux.scala 27:73]
  wire [63:0] _data_12_T_10 = _data_12_T_9 | _data_12_T_4; // @[Mux.scala 27:73]
  wire [63:0] _data_12_T_11 = _data_12_T_10 | _data_12_T_5; // @[Mux.scala 27:73]
  wire [63:0] _data_12_T_12 = _data_12_T_11 | _data_12_T_6; // @[Mux.scala 27:73]
  wire  w_13_0 = io_wen_0 & io_wvec_0[13]; // @[DataModuleTemplate.scala 67:56]
  wire  w_13_1 = io_wen_1 & io_wvec_1[13]; // @[DataModuleTemplate.scala 67:56]
  wire  w_13_2 = io_wen_2 & io_wvec_2[13]; // @[DataModuleTemplate.scala 67:56]
  wire  w_13_3 = io_wen_3 & io_wvec_3[13]; // @[DataModuleTemplate.scala 67:56]
  wire  w_13_4 = io_wen_4 & io_wvec_4[13]; // @[DataModuleTemplate.scala 67:56]
  wire  w_13_5 = io_wen_5 & io_wvec_5[13]; // @[DataModuleTemplate.scala 67:56]
  wire  w_13_6 = io_wen_6 & io_wvec_6[13]; // @[DataModuleTemplate.scala 67:56]
  wire [6:0] _T_400 = {w_13_6,w_13_5,w_13_4,w_13_3,w_13_2,w_13_1,w_13_0}; // @[DataModuleTemplate.scala 69:13]
  wire [63:0] _data_13_T = w_13_0 ? io_wdata_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_13_T_1 = w_13_1 ? io_wdata_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_13_T_2 = w_13_2 ? io_wdata_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_13_T_3 = w_13_3 ? io_wdata_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_13_T_4 = w_13_4 ? io_wdata_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_13_T_5 = w_13_5 ? io_wdata_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_13_T_6 = w_13_6 ? io_wdata_6 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_13_T_7 = _data_13_T | _data_13_T_1; // @[Mux.scala 27:73]
  wire [63:0] _data_13_T_8 = _data_13_T_7 | _data_13_T_2; // @[Mux.scala 27:73]
  wire [63:0] _data_13_T_9 = _data_13_T_8 | _data_13_T_3; // @[Mux.scala 27:73]
  wire [63:0] _data_13_T_10 = _data_13_T_9 | _data_13_T_4; // @[Mux.scala 27:73]
  wire [63:0] _data_13_T_11 = _data_13_T_10 | _data_13_T_5; // @[Mux.scala 27:73]
  wire [63:0] _data_13_T_12 = _data_13_T_11 | _data_13_T_6; // @[Mux.scala 27:73]
  wire  w_14_0 = io_wen_0 & io_wvec_0[14]; // @[DataModuleTemplate.scala 67:56]
  wire  w_14_1 = io_wen_1 & io_wvec_1[14]; // @[DataModuleTemplate.scala 67:56]
  wire  w_14_2 = io_wen_2 & io_wvec_2[14]; // @[DataModuleTemplate.scala 67:56]
  wire  w_14_3 = io_wen_3 & io_wvec_3[14]; // @[DataModuleTemplate.scala 67:56]
  wire  w_14_4 = io_wen_4 & io_wvec_4[14]; // @[DataModuleTemplate.scala 67:56]
  wire  w_14_5 = io_wen_5 & io_wvec_5[14]; // @[DataModuleTemplate.scala 67:56]
  wire  w_14_6 = io_wen_6 & io_wvec_6[14]; // @[DataModuleTemplate.scala 67:56]
  wire [6:0] _T_418 = {w_14_6,w_14_5,w_14_4,w_14_3,w_14_2,w_14_1,w_14_0}; // @[DataModuleTemplate.scala 69:13]
  wire [63:0] _data_14_T = w_14_0 ? io_wdata_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_14_T_1 = w_14_1 ? io_wdata_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_14_T_2 = w_14_2 ? io_wdata_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_14_T_3 = w_14_3 ? io_wdata_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_14_T_4 = w_14_4 ? io_wdata_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_14_T_5 = w_14_5 ? io_wdata_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_14_T_6 = w_14_6 ? io_wdata_6 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_14_T_7 = _data_14_T | _data_14_T_1; // @[Mux.scala 27:73]
  wire [63:0] _data_14_T_8 = _data_14_T_7 | _data_14_T_2; // @[Mux.scala 27:73]
  wire [63:0] _data_14_T_9 = _data_14_T_8 | _data_14_T_3; // @[Mux.scala 27:73]
  wire [63:0] _data_14_T_10 = _data_14_T_9 | _data_14_T_4; // @[Mux.scala 27:73]
  wire [63:0] _data_14_T_11 = _data_14_T_10 | _data_14_T_5; // @[Mux.scala 27:73]
  wire [63:0] _data_14_T_12 = _data_14_T_11 | _data_14_T_6; // @[Mux.scala 27:73]
  wire  w_15_0 = io_wen_0 & io_wvec_0[15]; // @[DataModuleTemplate.scala 67:56]
  wire  w_15_1 = io_wen_1 & io_wvec_1[15]; // @[DataModuleTemplate.scala 67:56]
  wire  w_15_2 = io_wen_2 & io_wvec_2[15]; // @[DataModuleTemplate.scala 67:56]
  wire  w_15_3 = io_wen_3 & io_wvec_3[15]; // @[DataModuleTemplate.scala 67:56]
  wire  w_15_4 = io_wen_4 & io_wvec_4[15]; // @[DataModuleTemplate.scala 67:56]
  wire  w_15_5 = io_wen_5 & io_wvec_5[15]; // @[DataModuleTemplate.scala 67:56]
  wire  w_15_6 = io_wen_6 & io_wvec_6[15]; // @[DataModuleTemplate.scala 67:56]
  wire [6:0] _T_436 = {w_15_6,w_15_5,w_15_4,w_15_3,w_15_2,w_15_1,w_15_0}; // @[DataModuleTemplate.scala 69:13]
  wire [63:0] _data_15_T = w_15_0 ? io_wdata_0 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_15_T_1 = w_15_1 ? io_wdata_1 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_15_T_2 = w_15_2 ? io_wdata_2 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_15_T_3 = w_15_3 ? io_wdata_3 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_15_T_4 = w_15_4 ? io_wdata_4 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_15_T_5 = w_15_5 ? io_wdata_5 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_15_T_6 = w_15_6 ? io_wdata_6 : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _data_15_T_7 = _data_15_T | _data_15_T_1; // @[Mux.scala 27:73]
  wire [63:0] _data_15_T_8 = _data_15_T_7 | _data_15_T_2; // @[Mux.scala 27:73]
  wire [63:0] _data_15_T_9 = _data_15_T_8 | _data_15_T_3; // @[Mux.scala 27:73]
  wire [63:0] _data_15_T_10 = _data_15_T_9 | _data_15_T_4; // @[Mux.scala 27:73]
  wire [63:0] _data_15_T_11 = _data_15_T_10 | _data_15_T_5; // @[Mux.scala 27:73]
  wire [63:0] _data_15_T_12 = _data_15_T_11 | _data_15_T_6; // @[Mux.scala 27:73]
  assign io_rdata_0 = _io_rdata_0_T_45 | _io_rdata_0_T_31; // @[Mux.scala 27:73]
  assign io_rdata_1 = _io_rdata_1_T_45 | _io_rdata_1_T_31; // @[Mux.scala 27:73]
  assign io_rdata_2 = _io_rdata_2_T_45 | _io_rdata_2_T_31; // @[Mux.scala 27:73]
  always @(posedge clock) begin
    if (|_T_166) begin // @[DataModuleTemplate.scala 69:25]
      data_0 <= _data_0_T_12; // @[DataModuleTemplate.scala 70:15]
    end
    if (|_T_184) begin // @[DataModuleTemplate.scala 69:25]
      data_1 <= _data_1_T_12; // @[DataModuleTemplate.scala 70:15]
    end
    if (|_T_202) begin // @[DataModuleTemplate.scala 69:25]
      data_2 <= _data_2_T_12; // @[DataModuleTemplate.scala 70:15]
    end
    if (|_T_220) begin // @[DataModuleTemplate.scala 69:25]
      data_3 <= _data_3_T_12; // @[DataModuleTemplate.scala 70:15]
    end
    if (|_T_238) begin // @[DataModuleTemplate.scala 69:25]
      data_4 <= _data_4_T_12; // @[DataModuleTemplate.scala 70:15]
    end
    if (|_T_256) begin // @[DataModuleTemplate.scala 69:25]
      data_5 <= _data_5_T_12; // @[DataModuleTemplate.scala 70:15]
    end
    if (|_T_274) begin // @[DataModuleTemplate.scala 69:25]
      data_6 <= _data_6_T_12; // @[DataModuleTemplate.scala 70:15]
    end
    if (|_T_292) begin // @[DataModuleTemplate.scala 69:25]
      data_7 <= _data_7_T_12; // @[DataModuleTemplate.scala 70:15]
    end
    if (|_T_310) begin // @[DataModuleTemplate.scala 69:25]
      data_8 <= _data_8_T_12; // @[DataModuleTemplate.scala 70:15]
    end
    if (|_T_328) begin // @[DataModuleTemplate.scala 69:25]
      data_9 <= _data_9_T_12; // @[DataModuleTemplate.scala 70:15]
    end
    if (|_T_346) begin // @[DataModuleTemplate.scala 69:25]
      data_10 <= _data_10_T_12; // @[DataModuleTemplate.scala 70:15]
    end
    if (|_T_364) begin // @[DataModuleTemplate.scala 69:25]
      data_11 <= _data_11_T_12; // @[DataModuleTemplate.scala 70:15]
    end
    if (|_T_382) begin // @[DataModuleTemplate.scala 69:25]
      data_12 <= _data_12_T_12; // @[DataModuleTemplate.scala 70:15]
    end
    if (|_T_400) begin // @[DataModuleTemplate.scala 69:25]
      data_13 <= _data_13_T_12; // @[DataModuleTemplate.scala 70:15]
    end
    if (|_T_418) begin // @[DataModuleTemplate.scala 69:25]
      data_14 <= _data_14_T_12; // @[DataModuleTemplate.scala 70:15]
    end
    if (|_T_436) begin // @[DataModuleTemplate.scala 69:25]
      data_15 <= _data_15_T_12; // @[DataModuleTemplate.scala 70:15]
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
  _RAND_8 = {2{`RANDOM}};
  data_8 = _RAND_8[63:0];
  _RAND_9 = {2{`RANDOM}};
  data_9 = _RAND_9[63:0];
  _RAND_10 = {2{`RANDOM}};
  data_10 = _RAND_10[63:0];
  _RAND_11 = {2{`RANDOM}};
  data_11 = _RAND_11[63:0];
  _RAND_12 = {2{`RANDOM}};
  data_12 = _RAND_12[63:0];
  _RAND_13 = {2{`RANDOM}};
  data_13 = _RAND_13[63:0];
  _RAND_14 = {2{`RANDOM}};
  data_14 = _RAND_14[63:0];
  _RAND_15 = {2{`RANDOM}};
  data_15 = _RAND_15[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

