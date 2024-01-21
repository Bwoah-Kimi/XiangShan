module SRT16DividerDataModule(
  input         clock,
  input         reset,
  input  [63:0] io_src_0,
  input  [63:0] io_src_1,
  input         io_valid,
  input         io_sign,
  input         io_kill_w,
  input         io_kill_r,
  input         io_isHi,
  input         io_isW,
  output        io_in_ready,
  output        io_out_valid,
  output [63:0] io_out_data,
  input         io_out_ready
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [63:0] _RAND_9;
  reg [63:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [63:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [63:0] _RAND_14;
  reg [63:0] _RAND_15;
  reg [63:0] _RAND_16;
  reg [63:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [95:0] _RAND_19;
  reg [95:0] _RAND_20;
  reg [95:0] _RAND_21;
  reg [95:0] _RAND_22;
  reg [95:0] _RAND_23;
  reg [95:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [95:0] _RAND_65;
  reg [95:0] _RAND_66;
  reg [63:0] _RAND_67;
  reg [63:0] _RAND_68;
`endif // RANDOMIZE_REG_INIT
  wire [9:0] signs_csa_sel_0_io_in_0; // @[SRT16Divider.scala 282:21]
  wire [9:0] signs_csa_sel_0_io_in_1; // @[SRT16Divider.scala 282:21]
  wire [9:0] signs_csa_sel_0_io_in_2; // @[SRT16Divider.scala 282:21]
  wire [9:0] signs_csa_sel_0_io_out_0; // @[SRT16Divider.scala 282:21]
  wire [9:0] signs_csa_sel_0_io_out_1; // @[SRT16Divider.scala 282:21]
  wire [9:0] signs_csa_sel_1_io_in_0; // @[SRT16Divider.scala 282:21]
  wire [9:0] signs_csa_sel_1_io_in_1; // @[SRT16Divider.scala 282:21]
  wire [9:0] signs_csa_sel_1_io_in_2; // @[SRT16Divider.scala 282:21]
  wire [9:0] signs_csa_sel_1_io_out_0; // @[SRT16Divider.scala 282:21]
  wire [9:0] signs_csa_sel_1_io_out_1; // @[SRT16Divider.scala 282:21]
  wire [9:0] signs_csa_sel_2_io_in_0; // @[SRT16Divider.scala 282:21]
  wire [9:0] signs_csa_sel_2_io_in_1; // @[SRT16Divider.scala 282:21]
  wire [9:0] signs_csa_sel_2_io_in_2; // @[SRT16Divider.scala 282:21]
  wire [9:0] signs_csa_sel_2_io_out_0; // @[SRT16Divider.scala 282:21]
  wire [9:0] signs_csa_sel_2_io_out_1; // @[SRT16Divider.scala 282:21]
  wire [9:0] signs_csa_sel_3_io_in_0; // @[SRT16Divider.scala 282:21]
  wire [9:0] signs_csa_sel_3_io_in_1; // @[SRT16Divider.scala 282:21]
  wire [9:0] signs_csa_sel_3_io_in_2; // @[SRT16Divider.scala 282:21]
  wire [9:0] signs_csa_sel_3_io_out_0; // @[SRT16Divider.scala 282:21]
  wire [9:0] signs_csa_sel_3_io_out_1; // @[SRT16Divider.scala 282:21]
  wire [67:0] csa_sel_wide_1_io_in_0; // @[SRT16Divider.scala 290:24]
  wire [67:0] csa_sel_wide_1_io_in_1; // @[SRT16Divider.scala 290:24]
  wire [67:0] csa_sel_wide_1_io_in_2; // @[SRT16Divider.scala 290:24]
  wire [67:0] csa_sel_wide_1_io_out_0; // @[SRT16Divider.scala 290:24]
  wire [67:0] csa_sel_wide_1_io_out_1; // @[SRT16Divider.scala 290:24]
  wire [67:0] csa_sel_wide_2_io_in_0; // @[SRT16Divider.scala 291:24]
  wire [67:0] csa_sel_wide_2_io_in_1; // @[SRT16Divider.scala 291:24]
  wire [67:0] csa_sel_wide_2_io_in_2; // @[SRT16Divider.scala 291:24]
  wire [67:0] csa_sel_wide_2_io_out_0; // @[SRT16Divider.scala 291:24]
  wire [67:0] csa_sel_wide_2_io_out_1; // @[SRT16Divider.scala 291:24]
  wire [12:0] csa_spec_0_io_in_0; // @[SRT16Divider.scala 304:24]
  wire [12:0] csa_spec_0_io_in_1; // @[SRT16Divider.scala 304:24]
  wire [12:0] csa_spec_0_io_in_2; // @[SRT16Divider.scala 304:24]
  wire [12:0] csa_spec_0_io_out_0; // @[SRT16Divider.scala 304:24]
  wire [12:0] csa_spec_0_io_out_1; // @[SRT16Divider.scala 304:24]
  wire [12:0] signs2_csa_spec_0_0_io_in_0; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_0_0_io_in_1; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_0_0_io_in_2; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_0_0_io_out_0; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_0_0_io_out_1; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_0_1_io_in_0; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_0_1_io_in_1; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_0_1_io_in_2; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_0_1_io_out_0; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_0_1_io_out_1; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_0_2_io_in_0; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_0_2_io_in_1; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_0_2_io_in_2; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_0_2_io_out_0; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_0_2_io_out_1; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_0_3_io_in_0; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_0_3_io_in_1; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_0_3_io_in_2; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_0_3_io_out_0; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_0_3_io_out_1; // @[SRT16Divider.scala 309:26]
  wire [12:0] csa_spec_1_io_in_0; // @[SRT16Divider.scala 304:24]
  wire [12:0] csa_spec_1_io_in_1; // @[SRT16Divider.scala 304:24]
  wire [12:0] csa_spec_1_io_in_2; // @[SRT16Divider.scala 304:24]
  wire [12:0] csa_spec_1_io_out_0; // @[SRT16Divider.scala 304:24]
  wire [12:0] csa_spec_1_io_out_1; // @[SRT16Divider.scala 304:24]
  wire [12:0] signs2_csa_spec_1_0_io_in_0; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_1_0_io_in_1; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_1_0_io_in_2; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_1_0_io_out_0; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_1_0_io_out_1; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_1_1_io_in_0; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_1_1_io_in_1; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_1_1_io_in_2; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_1_1_io_out_0; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_1_1_io_out_1; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_1_2_io_in_0; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_1_2_io_in_1; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_1_2_io_in_2; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_1_2_io_out_0; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_1_2_io_out_1; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_1_3_io_in_0; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_1_3_io_in_1; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_1_3_io_in_2; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_1_3_io_out_0; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_1_3_io_out_1; // @[SRT16Divider.scala 309:26]
  wire [12:0] csa_spec_2_io_in_0; // @[SRT16Divider.scala 304:24]
  wire [12:0] csa_spec_2_io_in_1; // @[SRT16Divider.scala 304:24]
  wire [12:0] csa_spec_2_io_in_2; // @[SRT16Divider.scala 304:24]
  wire [12:0] csa_spec_2_io_out_0; // @[SRT16Divider.scala 304:24]
  wire [12:0] csa_spec_2_io_out_1; // @[SRT16Divider.scala 304:24]
  wire [12:0] signs2_csa_spec_2_0_io_in_0; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_2_0_io_in_1; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_2_0_io_in_2; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_2_0_io_out_0; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_2_0_io_out_1; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_2_1_io_in_0; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_2_1_io_in_1; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_2_1_io_in_2; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_2_1_io_out_0; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_2_1_io_out_1; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_2_2_io_in_0; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_2_2_io_in_1; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_2_2_io_in_2; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_2_2_io_out_0; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_2_2_io_out_1; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_2_3_io_in_0; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_2_3_io_in_1; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_2_3_io_in_2; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_2_3_io_out_0; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_2_3_io_out_1; // @[SRT16Divider.scala 309:26]
  wire [12:0] csa_spec_3_io_in_0; // @[SRT16Divider.scala 304:24]
  wire [12:0] csa_spec_3_io_in_1; // @[SRT16Divider.scala 304:24]
  wire [12:0] csa_spec_3_io_in_2; // @[SRT16Divider.scala 304:24]
  wire [12:0] csa_spec_3_io_out_0; // @[SRT16Divider.scala 304:24]
  wire [12:0] csa_spec_3_io_out_1; // @[SRT16Divider.scala 304:24]
  wire [12:0] signs2_csa_spec_3_0_io_in_0; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_3_0_io_in_1; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_3_0_io_in_2; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_3_0_io_out_0; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_3_0_io_out_1; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_3_1_io_in_0; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_3_1_io_in_1; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_3_1_io_in_2; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_3_1_io_out_0; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_3_1_io_out_1; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_3_2_io_in_0; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_3_2_io_in_1; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_3_2_io_in_2; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_3_2_io_out_0; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_3_2_io_out_1; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_3_3_io_in_0; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_3_3_io_in_1; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_3_3_io_in_2; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_3_3_io_out_0; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_3_3_io_out_1; // @[SRT16Divider.scala 309:26]
  wire [12:0] csa_spec_4_io_in_0; // @[SRT16Divider.scala 304:24]
  wire [12:0] csa_spec_4_io_in_1; // @[SRT16Divider.scala 304:24]
  wire [12:0] csa_spec_4_io_in_2; // @[SRT16Divider.scala 304:24]
  wire [12:0] csa_spec_4_io_out_0; // @[SRT16Divider.scala 304:24]
  wire [12:0] csa_spec_4_io_out_1; // @[SRT16Divider.scala 304:24]
  wire [12:0] signs2_csa_spec_4_0_io_in_0; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_4_0_io_in_1; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_4_0_io_in_2; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_4_0_io_out_0; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_4_0_io_out_1; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_4_1_io_in_0; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_4_1_io_in_1; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_4_1_io_in_2; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_4_1_io_out_0; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_4_1_io_out_1; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_4_2_io_in_0; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_4_2_io_in_1; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_4_2_io_in_2; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_4_2_io_out_0; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_4_2_io_out_1; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_4_3_io_in_0; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_4_3_io_in_1; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_4_3_io_in_2; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_4_3_io_out_0; // @[SRT16Divider.scala 309:26]
  wire [12:0] signs2_csa_spec_4_3_io_out_1; // @[SRT16Divider.scala 309:26]
  wire [5:0] rightShifter_io_shiftNum; // @[SRT16Divider.scala 379:28]
  wire [63:0] rightShifter_io_in; // @[SRT16Divider.scala 379:28]
  wire  rightShifter_io_msb; // @[SRT16Divider.scala 379:28]
  wire [63:0] rightShifter_io_out; // @[SRT16Divider.scala 379:28]
  wire  in_fire = io_valid & io_in_ready; // @[SRT16Divider.scala 47:23]
  wire  out_fire = io_out_ready & io_out_valid; // @[SRT16Divider.scala 48:31]
  reg [6:0] state; // @[SRT16Divider.scala 54:22]
  wire [6:0] _quotIterReg_T = {{2'd0}, state[6:2]}; // @[SRT16Divider.scala 76:46]
  wire [6:0] _quotIterReg_T_2 = {{3'd0}, state[6:3]}; // @[SRT16Divider.scala 76:63]
  wire  _quotIterReg_T_4 = _quotIterReg_T[0] | _quotIterReg_T_2[0]; // @[SRT16Divider.scala 76:56]
  wire [6:0] _quotIterReg_T_5 = {{4'd0}, state[6:4]}; // @[SRT16Divider.scala 76:79]
  wire  _quotIterReg_T_7 = _quotIterReg_T[0] | _quotIterReg_T_2[0] | _quotIterReg_T_5[0]; // @[SRT16Divider.scala 76:72]
  reg [63:0] quotIterReg; // @[Reg.scala 16:16]
  reg [6:0] dLZCReg; // @[Reg.scala 16:16]
  wire [6:0] _lzcRegDiff_T_1 = {1'h0,dLZCReg[5:0]}; // @[Cat.scala 31:58]
  reg [6:0] aLZCReg; // @[Reg.scala 16:16]
  wire [6:0] _lzcRegDiff_T_3 = {1'h0,aLZCReg[5:0]}; // @[Cat.scala 31:58]
  wire [6:0] lzcRegDiff = _lzcRegDiff_T_1 - _lzcRegDiff_T_3; // @[SRT16Divider.scala 140:61]
  wire  oddIter = lzcRegDiff[1] ^ lzcRegDiff[0]; // @[SRT16Divider.scala 167:31]
  reg [3:0] iterNumReg; // @[Reg.scala 16:16]
  wire  finalIter = iterNumReg == 4'h0; // @[SRT16Divider.scala 171:27]
  wire  _quotIterNext_T_1 = ~oddIter & finalIter; // @[SRT16Divider.scala 346:32]
  reg [4:0] qPrevReg; // @[Reg.scala 16:16]
  wire [4:0] _quotHalfIter_quotNext_T = {{4'd0}, qPrevReg[4]}; // @[SRT16Divider.scala 329:6]
  wire [65:0] _quotHalfIter_quotNext_T_2 = {quotIterReg, 2'h0}; // @[SRT16Divider.scala 329:28]
  wire [65:0] _quotHalfIter_quotNext_T_3 = _quotHalfIter_quotNext_T_2 | 66'h2; // @[SRT16Divider.scala 329:33]
  wire [65:0] _quotHalfIter_quotNext_T_20 = _quotHalfIter_quotNext_T[0] ? _quotHalfIter_quotNext_T_3 : 66'h0; // @[Mux.scala 27:73]
  wire [4:0] _quotHalfIter_quotNext_T_4 = {{3'd0}, qPrevReg[4:3]}; // @[SRT16Divider.scala 330:6]
  wire [65:0] _quotHalfIter_quotNext_T_7 = _quotHalfIter_quotNext_T_2 | 66'h1; // @[SRT16Divider.scala 330:33]
  wire [65:0] _quotHalfIter_quotNext_T_21 = _quotHalfIter_quotNext_T_4[0] ? _quotHalfIter_quotNext_T_7 : 66'h0; // @[Mux.scala 27:73]
  wire [65:0] _quotHalfIter_quotNext_T_25 = _quotHalfIter_quotNext_T_20 | _quotHalfIter_quotNext_T_21; // @[Mux.scala 27:73]
  wire [4:0] _quotHalfIter_quotNext_T_8 = {{2'd0}, qPrevReg[4:2]}; // @[SRT16Divider.scala 331:6]
  wire [65:0] _quotHalfIter_quotNext_T_22 = _quotHalfIter_quotNext_T_8[0] ? _quotHalfIter_quotNext_T_2 : 66'h0; // @[Mux.scala 27:73]
  wire [65:0] _quotHalfIter_quotNext_T_26 = _quotHalfIter_quotNext_T_25 | _quotHalfIter_quotNext_T_22; // @[Mux.scala 27:73]
  wire [4:0] _quotHalfIter_quotNext_T_12 = {{1'd0}, qPrevReg[4:1]}; // @[SRT16Divider.scala 332:6]
  reg [63:0] quotM1IterReg; // @[Reg.scala 16:16]
  wire [65:0] _quotHalfIter_quotNext_T_14 = {quotM1IterReg, 2'h0}; // @[SRT16Divider.scala 332:30]
  wire [65:0] _quotHalfIter_quotNext_T_15 = _quotHalfIter_quotNext_T_14 | 66'h3; // @[SRT16Divider.scala 332:35]
  wire [65:0] _quotHalfIter_quotNext_T_23 = _quotHalfIter_quotNext_T_12[0] ? _quotHalfIter_quotNext_T_15 : 66'h0; // @[Mux.scala 27:73]
  wire [65:0] _quotHalfIter_quotNext_T_27 = _quotHalfIter_quotNext_T_26 | _quotHalfIter_quotNext_T_23; // @[Mux.scala 27:73]
  wire [65:0] _quotHalfIter_quotNext_T_19 = _quotHalfIter_quotNext_T_14 | 66'h2; // @[SRT16Divider.scala 333:35]
  wire [65:0] _quotHalfIter_quotNext_T_24 = qPrevReg[0] ? _quotHalfIter_quotNext_T_19 : 66'h0; // @[Mux.scala 27:73]
  wire [65:0] quotHalfIter_quotNext = _quotHalfIter_quotNext_T_27 | _quotHalfIter_quotNext_T_24; // @[Mux.scala 27:73]
  wire [63:0] quotHalfIter = quotHalfIter_quotNext[63:0]; // @[SRT16Divider.scala 342:14]
  wire [9:0] _signs_T_16 = {signs_csa_sel_3_io_out_1[8:0], 1'h0}; // @[SRT16Divider.scala 287:45]
  wire [9:0] _signs_T_18 = signs_csa_sel_3_io_out_0 + _signs_T_16; // @[SRT16Divider.scala 287:22]
  wire  signs_3 = _signs_T_18[9]; // @[SRT16Divider.scala 287:51]
  wire [9:0] _signs_T_11 = {signs_csa_sel_2_io_out_1[8:0], 1'h0}; // @[SRT16Divider.scala 287:45]
  wire [9:0] _signs_T_13 = signs_csa_sel_2_io_out_0 + _signs_T_11; // @[SRT16Divider.scala 287:22]
  wire  signs_2 = _signs_T_13[9]; // @[SRT16Divider.scala 287:51]
  wire [9:0] _signs_T_6 = {signs_csa_sel_1_io_out_1[8:0], 1'h0}; // @[SRT16Divider.scala 287:45]
  wire [9:0] _signs_T_8 = signs_csa_sel_1_io_out_0 + _signs_T_6; // @[SRT16Divider.scala 287:22]
  wire  signs_1 = _signs_T_8[9]; // @[SRT16Divider.scala 287:51]
  wire [9:0] _signs_T_1 = {signs_csa_sel_0_io_out_1[8:0], 1'h0}; // @[SRT16Divider.scala 287:45]
  wire [9:0] _signs_T_3 = signs_csa_sel_0_io_out_0 + _signs_T_1; // @[SRT16Divider.scala 287:22]
  wire  signs_0 = _signs_T_3[9]; // @[SRT16Divider.scala 287:51]
  wire [3:0] _qNext_T = {signs_3,signs_2,signs_1,signs_0}; // @[SRT16Divider.scala 289:29]
  wire  _qNext_sel_q_4_T_3 = ~_qNext_T[2]; // @[SRT16Divider.scala 277:38]
  wire  _qNext_sel_q_4_T_6 = ~_qNext_T[1]; // @[SRT16Divider.scala 277:51]
  wire  qNext_sel_q_4 = ~_qNext_T[3] & ~_qNext_T[2] & ~_qNext_T[1]; // @[SRT16Divider.scala 277:48]
  wire  qNext_sel_q_3 = _qNext_T[3] & _qNext_sel_q_4_T_3 & _qNext_sel_q_4_T_6; // @[SRT16Divider.scala 276:47]
  wire  qNext_sel_q_2 = _qNext_T[2] & _qNext_sel_q_4_T_6; // @[SRT16Divider.scala 275:30]
  wire  qNext_sel_q_1 = ~_qNext_T[0] & _qNext_T[1] & _qNext_T[2]; // @[SRT16Divider.scala 274:47]
  wire  qNext_sel_q_0 = _qNext_T[0] & _qNext_T[1] & _qNext_T[2]; // @[SRT16Divider.scala 273:46]
  wire [4:0] qNext = {qNext_sel_q_4,qNext_sel_q_3,qNext_sel_q_2,qNext_sel_q_1,qNext_sel_q_0}; // @[SRT16Divider.scala 278:10]
  wire [4:0] _quotIterNext_quotNext_T = {{4'd0}, qNext[4]}; // @[SRT16Divider.scala 329:6]
  wire [65:0] _quotIterNext_quotNext_T_2 = {quotHalfIter, 2'h0}; // @[SRT16Divider.scala 329:28]
  wire [65:0] _quotIterNext_quotNext_T_3 = _quotIterNext_quotNext_T_2 | 66'h2; // @[SRT16Divider.scala 329:33]
  wire [65:0] _quotIterNext_quotNext_T_20 = _quotIterNext_quotNext_T[0] ? _quotIterNext_quotNext_T_3 : 66'h0; // @[Mux.scala 27:73]
  wire [4:0] _quotIterNext_quotNext_T_4 = {{3'd0}, qNext[4:3]}; // @[SRT16Divider.scala 330:6]
  wire [65:0] _quotIterNext_quotNext_T_7 = _quotIterNext_quotNext_T_2 | 66'h1; // @[SRT16Divider.scala 330:33]
  wire [65:0] _quotIterNext_quotNext_T_21 = _quotIterNext_quotNext_T_4[0] ? _quotIterNext_quotNext_T_7 : 66'h0; // @[Mux.scala 27:73]
  wire [65:0] _quotIterNext_quotNext_T_25 = _quotIterNext_quotNext_T_20 | _quotIterNext_quotNext_T_21; // @[Mux.scala 27:73]
  wire [4:0] _quotIterNext_quotNext_T_8 = {{2'd0}, qNext[4:2]}; // @[SRT16Divider.scala 331:6]
  wire [65:0] _quotIterNext_quotNext_T_22 = _quotIterNext_quotNext_T_8[0] ? _quotIterNext_quotNext_T_2 : 66'h0; // @[Mux.scala 27:73]
  wire [65:0] _quotIterNext_quotNext_T_26 = _quotIterNext_quotNext_T_25 | _quotIterNext_quotNext_T_22; // @[Mux.scala 27:73]
  wire [4:0] _quotIterNext_quotNext_T_12 = {{1'd0}, qNext[4:1]}; // @[SRT16Divider.scala 332:6]
  wire [65:0] _quotM1HalfIter_quotM1Next_T_20 = _quotHalfIter_quotNext_T[0] ? _quotHalfIter_quotNext_T_7 : 66'h0; // @[Mux.scala 27:73]
  wire [65:0] _quotM1HalfIter_quotM1Next_T_21 = _quotHalfIter_quotNext_T_4[0] ? _quotHalfIter_quotNext_T_2 : 66'h0; // @[Mux.scala 27:73]
  wire [65:0] _quotM1HalfIter_quotM1Next_T_25 = _quotM1HalfIter_quotM1Next_T_20 | _quotM1HalfIter_quotM1Next_T_21; // @[Mux.scala 27:73]
  wire [65:0] _quotM1HalfIter_quotM1Next_T_22 = _quotHalfIter_quotNext_T_8[0] ? _quotHalfIter_quotNext_T_15 : 66'h0; // @[Mux.scala 27:73]
  wire [65:0] _quotM1HalfIter_quotM1Next_T_26 = _quotM1HalfIter_quotM1Next_T_25 | _quotM1HalfIter_quotM1Next_T_22; // @[Mux.scala 27:73]
  wire [65:0] _quotM1HalfIter_quotM1Next_T_23 = _quotHalfIter_quotNext_T_12[0] ? _quotHalfIter_quotNext_T_19 : 66'h0; // @[Mux.scala 27:73]
  wire [65:0] _quotM1HalfIter_quotM1Next_T_27 = _quotM1HalfIter_quotM1Next_T_26 | _quotM1HalfIter_quotM1Next_T_23; // @[Mux.scala 27:73]
  wire [65:0] _quotM1HalfIter_quotM1Next_T_19 = _quotHalfIter_quotNext_T_14 | 66'h1; // @[SRT16Divider.scala 340:35]
  wire [65:0] _quotM1HalfIter_quotM1Next_T_24 = qPrevReg[0] ? _quotM1HalfIter_quotM1Next_T_19 : 66'h0; // @[Mux.scala 27:73]
  wire [65:0] quotM1HalfIter_quotM1Next = _quotM1HalfIter_quotM1Next_T_27 | _quotM1HalfIter_quotM1Next_T_24; // @[Mux.scala 27:73]
  wire [63:0] quotM1HalfIter = quotM1HalfIter_quotM1Next[63:0]; // @[SRT16Divider.scala 342:36]
  wire [65:0] _quotIterNext_quotNext_T_14 = {quotM1HalfIter, 2'h0}; // @[SRT16Divider.scala 332:30]
  wire [65:0] _quotIterNext_quotNext_T_15 = _quotIterNext_quotNext_T_14 | 66'h3; // @[SRT16Divider.scala 332:35]
  wire [65:0] _quotIterNext_quotNext_T_23 = _quotIterNext_quotNext_T_12[0] ? _quotIterNext_quotNext_T_15 : 66'h0; // @[Mux.scala 27:73]
  wire [65:0] _quotIterNext_quotNext_T_27 = _quotIterNext_quotNext_T_26 | _quotIterNext_quotNext_T_23; // @[Mux.scala 27:73]
  wire [65:0] _quotIterNext_quotNext_T_19 = _quotIterNext_quotNext_T_14 | 66'h2; // @[SRT16Divider.scala 333:35]
  wire [65:0] _quotIterNext_quotNext_T_24 = qNext[0] ? _quotIterNext_quotNext_T_19 : 66'h0; // @[Mux.scala 27:73]
  wire [65:0] quotIterNext_quotNext = _quotIterNext_quotNext_T_27 | _quotIterNext_quotNext_T_24; // @[Mux.scala 27:73]
  reg  quotSignReg; // @[Reg.scala 16:16]
  wire [63:0] _aInverter_T_2 = state[0] ? io_src_0 : quotIterReg; // @[SRT16Divider.scala 102:20]
  wire [63:0] aInverter = 64'h0 - _aInverter_T_2; // @[SRT16Divider.scala 102:16]
  wire [65:0] _quotM1IterNext_quotM1Next_T_20 = _quotIterNext_quotNext_T[0] ? _quotIterNext_quotNext_T_7 : 66'h0; // @[Mux.scala 27:73]
  wire [65:0] _quotM1IterNext_quotM1Next_T_21 = _quotIterNext_quotNext_T_4[0] ? _quotIterNext_quotNext_T_2 : 66'h0; // @[Mux.scala 27:73]
  wire [65:0] _quotM1IterNext_quotM1Next_T_25 = _quotM1IterNext_quotM1Next_T_20 | _quotM1IterNext_quotM1Next_T_21; // @[Mux.scala 27:73]
  wire [65:0] _quotM1IterNext_quotM1Next_T_22 = _quotIterNext_quotNext_T_8[0] ? _quotIterNext_quotNext_T_15 : 66'h0; // @[Mux.scala 27:73]
  wire [65:0] _quotM1IterNext_quotM1Next_T_26 = _quotM1IterNext_quotM1Next_T_25 | _quotM1IterNext_quotM1Next_T_22; // @[Mux.scala 27:73]
  wire [65:0] _quotM1IterNext_quotM1Next_T_23 = _quotIterNext_quotNext_T_12[0] ? _quotIterNext_quotNext_T_19 : 66'h0; // @[Mux.scala 27:73]
  wire [65:0] _quotM1IterNext_quotM1Next_T_27 = _quotM1IterNext_quotM1Next_T_26 | _quotM1IterNext_quotM1Next_T_23; // @[Mux.scala 27:73]
  wire [65:0] _quotM1IterNext_quotM1Next_T_19 = _quotIterNext_quotNext_T_14 | 66'h1; // @[SRT16Divider.scala 340:35]
  wire [65:0] _quotM1IterNext_quotM1Next_T_24 = qNext[0] ? _quotM1IterNext_quotM1Next_T_19 : 66'h0; // @[Mux.scala 27:73]
  wire [65:0] quotM1IterNext_quotM1Next = _quotM1IterNext_quotM1Next_T_27 | _quotM1IterNext_quotM1Next_T_24; // @[Mux.scala 27:73]
  wire [63:0] _dInverter_T_2 = state[0] ? io_src_1 : quotM1IterReg; // @[SRT16Divider.scala 103:20]
  wire [63:0] dInverter = 64'h0 - _dInverter_T_2; // @[SRT16Divider.scala 103:16]
  reg  specialReg; // @[Reg.scala 16:16]
  reg [63:0] dAbsReg; // @[Reg.scala 16:16]
  wire [5:0] _dLZC_T_65 = dAbsReg[1] ? 6'h3e : 6'h3f; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_66 = dAbsReg[2] ? 6'h3d : _dLZC_T_65; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_67 = dAbsReg[3] ? 6'h3c : _dLZC_T_66; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_68 = dAbsReg[4] ? 6'h3b : _dLZC_T_67; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_69 = dAbsReg[5] ? 6'h3a : _dLZC_T_68; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_70 = dAbsReg[6] ? 6'h39 : _dLZC_T_69; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_71 = dAbsReg[7] ? 6'h38 : _dLZC_T_70; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_72 = dAbsReg[8] ? 6'h37 : _dLZC_T_71; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_73 = dAbsReg[9] ? 6'h36 : _dLZC_T_72; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_74 = dAbsReg[10] ? 6'h35 : _dLZC_T_73; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_75 = dAbsReg[11] ? 6'h34 : _dLZC_T_74; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_76 = dAbsReg[12] ? 6'h33 : _dLZC_T_75; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_77 = dAbsReg[13] ? 6'h32 : _dLZC_T_76; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_78 = dAbsReg[14] ? 6'h31 : _dLZC_T_77; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_79 = dAbsReg[15] ? 6'h30 : _dLZC_T_78; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_80 = dAbsReg[16] ? 6'h2f : _dLZC_T_79; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_81 = dAbsReg[17] ? 6'h2e : _dLZC_T_80; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_82 = dAbsReg[18] ? 6'h2d : _dLZC_T_81; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_83 = dAbsReg[19] ? 6'h2c : _dLZC_T_82; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_84 = dAbsReg[20] ? 6'h2b : _dLZC_T_83; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_85 = dAbsReg[21] ? 6'h2a : _dLZC_T_84; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_86 = dAbsReg[22] ? 6'h29 : _dLZC_T_85; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_87 = dAbsReg[23] ? 6'h28 : _dLZC_T_86; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_88 = dAbsReg[24] ? 6'h27 : _dLZC_T_87; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_89 = dAbsReg[25] ? 6'h26 : _dLZC_T_88; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_90 = dAbsReg[26] ? 6'h25 : _dLZC_T_89; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_91 = dAbsReg[27] ? 6'h24 : _dLZC_T_90; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_92 = dAbsReg[28] ? 6'h23 : _dLZC_T_91; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_93 = dAbsReg[29] ? 6'h22 : _dLZC_T_92; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_94 = dAbsReg[30] ? 6'h21 : _dLZC_T_93; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_95 = dAbsReg[31] ? 6'h20 : _dLZC_T_94; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_96 = dAbsReg[32] ? 6'h1f : _dLZC_T_95; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_97 = dAbsReg[33] ? 6'h1e : _dLZC_T_96; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_98 = dAbsReg[34] ? 6'h1d : _dLZC_T_97; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_99 = dAbsReg[35] ? 6'h1c : _dLZC_T_98; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_100 = dAbsReg[36] ? 6'h1b : _dLZC_T_99; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_101 = dAbsReg[37] ? 6'h1a : _dLZC_T_100; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_102 = dAbsReg[38] ? 6'h19 : _dLZC_T_101; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_103 = dAbsReg[39] ? 6'h18 : _dLZC_T_102; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_104 = dAbsReg[40] ? 6'h17 : _dLZC_T_103; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_105 = dAbsReg[41] ? 6'h16 : _dLZC_T_104; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_106 = dAbsReg[42] ? 6'h15 : _dLZC_T_105; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_107 = dAbsReg[43] ? 6'h14 : _dLZC_T_106; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_108 = dAbsReg[44] ? 6'h13 : _dLZC_T_107; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_109 = dAbsReg[45] ? 6'h12 : _dLZC_T_108; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_110 = dAbsReg[46] ? 6'h11 : _dLZC_T_109; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_111 = dAbsReg[47] ? 6'h10 : _dLZC_T_110; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_112 = dAbsReg[48] ? 6'hf : _dLZC_T_111; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_113 = dAbsReg[49] ? 6'he : _dLZC_T_112; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_114 = dAbsReg[50] ? 6'hd : _dLZC_T_113; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_115 = dAbsReg[51] ? 6'hc : _dLZC_T_114; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_116 = dAbsReg[52] ? 6'hb : _dLZC_T_115; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_117 = dAbsReg[53] ? 6'ha : _dLZC_T_116; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_118 = dAbsReg[54] ? 6'h9 : _dLZC_T_117; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_119 = dAbsReg[55] ? 6'h8 : _dLZC_T_118; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_120 = dAbsReg[56] ? 6'h7 : _dLZC_T_119; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_121 = dAbsReg[57] ? 6'h6 : _dLZC_T_120; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_122 = dAbsReg[58] ? 6'h5 : _dLZC_T_121; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_123 = dAbsReg[59] ? 6'h4 : _dLZC_T_122; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_124 = dAbsReg[60] ? 6'h3 : _dLZC_T_123; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_125 = dAbsReg[61] ? 6'h2 : _dLZC_T_124; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_126 = dAbsReg[62] ? 6'h1 : _dLZC_T_125; // @[Mux.scala 47:70]
  wire [5:0] _dLZC_T_127 = dAbsReg[63] ? 6'h0 : _dLZC_T_126; // @[Mux.scala 47:70]
  wire [6:0] dLZC = {{1'd0}, _dLZC_T_127}; // @[SRT16Divider.scala 62:18 135:8]
  wire  dIsOne = &dLZC[5:0]; // @[SRT16Divider.scala 146:43]
  reg [63:0] dNormReg; // @[Reg.scala 16:16]
  wire  dIsZero = ~(|dNormReg); // @[SRT16Divider.scala 147:17]
  reg  aTooSmall; // @[Reg.scala 16:16]
  wire  special = dIsOne | dIsZero | aTooSmall; // @[SRT16Divider.scala 150:31]
  reg [63:0] aReg; // @[Reg.scala 16:16]
  wire [6:0] _T_5 = {{1'd0}, state[6:1]}; // @[SRT16Divider.scala 85:20]
  wire [6:0] _state_T_10 = special ? 7'h20 : 7'h8; // @[SRT16Divider.scala 88:17]
  wire [6:0] _state_T_15 = finalIter ? 7'h10 : 7'h8; // @[SRT16Divider.scala 90:17]
  wire [6:0] _T_13 = {{5'd0}, state[6:5]}; // @[SRT16Divider.scala 93:20]
  wire [6:0] _T_16 = {{6'd0}, state[6]}; // @[SRT16Divider.scala 95:20]
  wire [6:0] _GEN_4 = _T_16[0] ? 7'h1 : state; // @[SRT16Divider.scala 95:32 96:11 98:11]
  wire [6:0] _GEN_5 = _T_13[0] & out_fire ? 7'h40 : _GEN_4; // @[SRT16Divider.scala 93:44 94:11]
  wire [6:0] _GEN_6 = _quotIterReg_T_5[0] ? 7'h20 : _GEN_5; // @[SRT16Divider.scala 91:32 92:11]
  wire [6:0] _GEN_7 = _quotIterReg_T_2[0] ? _state_T_15 : _GEN_6; // @[SRT16Divider.scala 89:30 90:11]
  wire  aSign = io_sign & io_src_0[63]; // @[SRT16Divider.scala 105:23]
  wire  dSign = io_sign & io_src_1[63]; // @[SRT16Divider.scala 106:23]
  reg  dSignReg; // @[Reg.scala 16:16]
  reg [63:0] aAbsReg; // @[Reg.scala 16:16]
  wire [5:0] _aLZC_T_65 = aAbsReg[1] ? 6'h3e : 6'h3f; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_66 = aAbsReg[2] ? 6'h3d : _aLZC_T_65; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_67 = aAbsReg[3] ? 6'h3c : _aLZC_T_66; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_68 = aAbsReg[4] ? 6'h3b : _aLZC_T_67; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_69 = aAbsReg[5] ? 6'h3a : _aLZC_T_68; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_70 = aAbsReg[6] ? 6'h39 : _aLZC_T_69; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_71 = aAbsReg[7] ? 6'h38 : _aLZC_T_70; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_72 = aAbsReg[8] ? 6'h37 : _aLZC_T_71; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_73 = aAbsReg[9] ? 6'h36 : _aLZC_T_72; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_74 = aAbsReg[10] ? 6'h35 : _aLZC_T_73; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_75 = aAbsReg[11] ? 6'h34 : _aLZC_T_74; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_76 = aAbsReg[12] ? 6'h33 : _aLZC_T_75; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_77 = aAbsReg[13] ? 6'h32 : _aLZC_T_76; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_78 = aAbsReg[14] ? 6'h31 : _aLZC_T_77; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_79 = aAbsReg[15] ? 6'h30 : _aLZC_T_78; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_80 = aAbsReg[16] ? 6'h2f : _aLZC_T_79; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_81 = aAbsReg[17] ? 6'h2e : _aLZC_T_80; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_82 = aAbsReg[18] ? 6'h2d : _aLZC_T_81; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_83 = aAbsReg[19] ? 6'h2c : _aLZC_T_82; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_84 = aAbsReg[20] ? 6'h2b : _aLZC_T_83; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_85 = aAbsReg[21] ? 6'h2a : _aLZC_T_84; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_86 = aAbsReg[22] ? 6'h29 : _aLZC_T_85; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_87 = aAbsReg[23] ? 6'h28 : _aLZC_T_86; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_88 = aAbsReg[24] ? 6'h27 : _aLZC_T_87; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_89 = aAbsReg[25] ? 6'h26 : _aLZC_T_88; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_90 = aAbsReg[26] ? 6'h25 : _aLZC_T_89; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_91 = aAbsReg[27] ? 6'h24 : _aLZC_T_90; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_92 = aAbsReg[28] ? 6'h23 : _aLZC_T_91; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_93 = aAbsReg[29] ? 6'h22 : _aLZC_T_92; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_94 = aAbsReg[30] ? 6'h21 : _aLZC_T_93; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_95 = aAbsReg[31] ? 6'h20 : _aLZC_T_94; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_96 = aAbsReg[32] ? 6'h1f : _aLZC_T_95; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_97 = aAbsReg[33] ? 6'h1e : _aLZC_T_96; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_98 = aAbsReg[34] ? 6'h1d : _aLZC_T_97; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_99 = aAbsReg[35] ? 6'h1c : _aLZC_T_98; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_100 = aAbsReg[36] ? 6'h1b : _aLZC_T_99; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_101 = aAbsReg[37] ? 6'h1a : _aLZC_T_100; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_102 = aAbsReg[38] ? 6'h19 : _aLZC_T_101; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_103 = aAbsReg[39] ? 6'h18 : _aLZC_T_102; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_104 = aAbsReg[40] ? 6'h17 : _aLZC_T_103; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_105 = aAbsReg[41] ? 6'h16 : _aLZC_T_104; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_106 = aAbsReg[42] ? 6'h15 : _aLZC_T_105; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_107 = aAbsReg[43] ? 6'h14 : _aLZC_T_106; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_108 = aAbsReg[44] ? 6'h13 : _aLZC_T_107; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_109 = aAbsReg[45] ? 6'h12 : _aLZC_T_108; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_110 = aAbsReg[46] ? 6'h11 : _aLZC_T_109; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_111 = aAbsReg[47] ? 6'h10 : _aLZC_T_110; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_112 = aAbsReg[48] ? 6'hf : _aLZC_T_111; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_113 = aAbsReg[49] ? 6'he : _aLZC_T_112; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_114 = aAbsReg[50] ? 6'hd : _aLZC_T_113; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_115 = aAbsReg[51] ? 6'hc : _aLZC_T_114; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_116 = aAbsReg[52] ? 6'hb : _aLZC_T_115; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_117 = aAbsReg[53] ? 6'ha : _aLZC_T_116; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_118 = aAbsReg[54] ? 6'h9 : _aLZC_T_117; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_119 = aAbsReg[55] ? 6'h8 : _aLZC_T_118; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_120 = aAbsReg[56] ? 6'h7 : _aLZC_T_119; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_121 = aAbsReg[57] ? 6'h6 : _aLZC_T_120; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_122 = aAbsReg[58] ? 6'h5 : _aLZC_T_121; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_123 = aAbsReg[59] ? 6'h4 : _aLZC_T_122; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_124 = aAbsReg[60] ? 6'h3 : _aLZC_T_123; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_125 = aAbsReg[61] ? 6'h2 : _aLZC_T_124; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_126 = aAbsReg[62] ? 6'h1 : _aLZC_T_125; // @[Mux.scala 47:70]
  wire [5:0] _aLZC_T_127 = aAbsReg[63] ? 6'h0 : _aLZC_T_126; // @[Mux.scala 47:70]
  wire [6:0] aLZC = {{1'd0}, _aLZC_T_127}; // @[SRT16Divider.scala 61:18 134:8]
  wire [126:0] _GEN_0 = {{63'd0}, aAbsReg}; // @[SRT16Divider.scala 114:36]
  wire [126:0] _aNorm_T_2 = _GEN_0 << aLZC[5:0]; // @[SRT16Divider.scala 114:36]
  wire [63:0] aNorm = _aNorm_T_2[63:0]; // @[SRT16Divider.scala 114:62]
  wire [126:0] _GEN_1 = {{63'd0}, dAbsReg}; // @[SRT16Divider.scala 115:36]
  wire [126:0] _dNorm_T_2 = _GEN_1 << dLZC[5:0]; // @[SRT16Divider.scala 115:36]
  wire [63:0] dNorm = _dNorm_T_2[63:0]; // @[SRT16Divider.scala 115:62]
  reg [63:0] aNormReg; // @[Reg.scala 16:16]
  wire [6:0] _lzcWireDiff_T_1 = {1'h0,dLZC[5:0]}; // @[Cat.scala 31:58]
  wire [6:0] _lzcWireDiff_T_3 = {1'h0,aLZC[5:0]}; // @[Cat.scala 31:58]
  wire [6:0] lzcWireDiff = _lzcWireDiff_T_1 - _lzcWireDiff_T_3; // @[SRT16Divider.scala 139:59]
  wire  _aTooSmall_T_2 = aLZC[6] | lzcWireDiff[6]; // @[SRT16Divider.scala 149:45]
  wire [63:0] _quotSpecial_T_2 = 64'h0 - aReg; // @[SRT16Divider.scala 154:45]
  reg [63:0] quotSpecialReg; // @[Reg.scala 16:16]
  reg [63:0] remSpecialReg; // @[Reg.scala 16:16]
  wire  _quotSignReg_T_3 = in_fire | _quotIterReg_T[0] & dIsZero; // @[SRT16Divider.scala 163:49]
  reg  rSignReg; // @[Reg.scala 16:16]
  wire [6:0] _iterNum_T_3 = lzcRegDiff + 7'h1; // @[SRT16Divider.scala 170:46]
  wire [3:0] _iterNum_T_6 = iterNumReg - 4'h1; // @[SRT16Divider.scala 170:70]
  wire [4:0] _iterNum_T_7 = _quotIterReg_T[0] ? _iterNum_T_3[6:2] : {{1'd0}, _iterNum_T_6}; // @[SRT16Divider.scala 170:17]
  wire [3:0] iterNum = _iterNum_T_7[3:0]; // @[SRT16Divider.scala 168:21 170:11]
  wire [64:0] _rSumInit_T = {1'h0,aNormReg}; // @[Cat.scala 31:58]
  wire [64:0] _rSumInit_T_1 = {aNormReg,1'h0}; // @[Cat.scala 31:58]
  wire [64:0] _rSumInit_T_2 = lzcRegDiff[0] ? _rSumInit_T : _rSumInit_T_1; // @[SRT16Divider.scala 173:35]
  wire [67:0] rSumInit = {3'h0,_rSumInit_T_2}; // @[Cat.scala 31:58]
  wire [4:0] rSumInitTrunc = {1'h0,rSumInit[64:61]}; // @[Cat.scala 31:58]
  wire [4:0] _mInitPos1_T_6 = 3'h3 == dNormReg[62:60] ? 5'h6 : 5'h4; // @[Mux.scala 81:58]
  wire [4:0] _mInitPos1_T_8 = 3'h4 == dNormReg[62:60] ? 5'h6 : _mInitPos1_T_6; // @[Mux.scala 81:58]
  wire [4:0] _mInitPos1_T_10 = 3'h5 == dNormReg[62:60] ? 5'h6 : _mInitPos1_T_8; // @[Mux.scala 81:58]
  wire [4:0] _mInitPos1_T_12 = 3'h6 == dNormReg[62:60] ? 5'h6 : _mInitPos1_T_10; // @[Mux.scala 81:58]
  wire [4:0] mInitPos1 = 3'h7 == dNormReg[62:60] ? 5'h8 : _mInitPos1_T_12; // @[Mux.scala 81:58]
  wire [4:0] _mInitPos2_T_2 = 3'h1 == dNormReg[62:60] ? 5'he : 5'hc; // @[Mux.scala 81:58]
  wire [4:0] _mInitPos2_T_4 = 3'h2 == dNormReg[62:60] ? 5'hf : _mInitPos2_T_2; // @[Mux.scala 81:58]
  wire [4:0] _mInitPos2_T_6 = 3'h3 == dNormReg[62:60] ? 5'h10 : _mInitPos2_T_4; // @[Mux.scala 81:58]
  wire [4:0] _mInitPos2_T_8 = 3'h4 == dNormReg[62:60] ? 5'h12 : _mInitPos2_T_6; // @[Mux.scala 81:58]
  wire [4:0] _mInitPos2_T_10 = 3'h5 == dNormReg[62:60] ? 5'h14 : _mInitPos2_T_8; // @[Mux.scala 81:58]
  wire [4:0] _mInitPos2_T_12 = 3'h6 == dNormReg[62:60] ? 5'h16 : _mInitPos2_T_10; // @[Mux.scala 81:58]
  wire [4:0] mInitPos2 = 3'h7 == dNormReg[62:60] ? 5'h16 : _mInitPos2_T_12; // @[Mux.scala 81:58]
  wire  initCmpPos1 = rSumInitTrunc >= mInitPos1; // @[SRT16Divider.scala 201:35]
  wire  initCmpPos2 = rSumInitTrunc >= mInitPos2; // @[SRT16Divider.scala 202:35]
  wire [64:0] dPos = {1'h0,dNormReg}; // @[Cat.scala 31:58]
  wire [64:0] dNeg = 65'h0 - dPos; // @[SRT16Divider.scala 208:14]
  wire [12:0] _signs2_T_16 = {signs2_csa_spec_0_3_io_out_1[11:0], 1'h0}; // @[SRT16Divider.scala 313:50]
  wire [12:0] _signs2_T_18 = signs2_csa_spec_0_3_io_out_0 + _signs2_T_16; // @[SRT16Divider.scala 313:25]
  wire  signs2__3 = _signs2_T_18[12]; // @[SRT16Divider.scala 313:56]
  wire [12:0] _signs2_T_11 = {signs2_csa_spec_0_2_io_out_1[11:0], 1'h0}; // @[SRT16Divider.scala 313:50]
  wire [12:0] _signs2_T_13 = signs2_csa_spec_0_2_io_out_0 + _signs2_T_11; // @[SRT16Divider.scala 313:25]
  wire  signs2__2 = _signs2_T_13[12]; // @[SRT16Divider.scala 313:56]
  wire [12:0] _signs2_T_6 = {signs2_csa_spec_0_1_io_out_1[11:0], 1'h0}; // @[SRT16Divider.scala 313:50]
  wire [12:0] _signs2_T_8 = signs2_csa_spec_0_1_io_out_0 + _signs2_T_6; // @[SRT16Divider.scala 313:25]
  wire  signs2__1 = _signs2_T_8[12]; // @[SRT16Divider.scala 313:56]
  wire [12:0] _signs2_T_1 = {signs2_csa_spec_0_0_io_out_1[11:0], 1'h0}; // @[SRT16Divider.scala 313:50]
  wire [12:0] _signs2_T_3 = signs2_csa_spec_0_0_io_out_0 + _signs2_T_1; // @[SRT16Divider.scala 313:25]
  wire  signs2__0 = _signs2_T_3[12]; // @[SRT16Divider.scala 313:56]
  wire [3:0] _qVec2_T = {signs2__3,signs2__2,signs2__1,signs2__0}; // @[SRT16Divider.scala 315:37]
  wire  _qVec2_spec_q_0_4_T_3 = ~_qVec2_T[2]; // @[SRT16Divider.scala 277:38]
  wire  _qVec2_spec_q_0_4_T_6 = ~_qVec2_T[1]; // @[SRT16Divider.scala 277:51]
  wire  qVec2_spec_q_0_4 = ~_qVec2_T[3] & ~_qVec2_T[2] & ~_qVec2_T[1]; // @[SRT16Divider.scala 277:48]
  wire  qVec2_spec_q_0_3 = _qVec2_T[3] & _qVec2_spec_q_0_4_T_3 & _qVec2_spec_q_0_4_T_6; // @[SRT16Divider.scala 276:47]
  wire  qVec2_spec_q_0_2 = _qVec2_T[2] & _qVec2_spec_q_0_4_T_6; // @[SRT16Divider.scala 275:30]
  wire  qVec2_spec_q_0_1 = ~_qVec2_T[0] & _qVec2_T[1] & _qVec2_T[2]; // @[SRT16Divider.scala 274:47]
  wire  qVec2_spec_q_0_0 = _qVec2_T[0] & _qVec2_T[1] & _qVec2_T[2]; // @[SRT16Divider.scala 273:46]
  wire [4:0] qVec2 = {qVec2_spec_q_0_4,qVec2_spec_q_0_3,qVec2_spec_q_0_2,qVec2_spec_q_0_1,qVec2_spec_q_0_0}; // @[SRT16Divider.scala 278:10]
  wire [4:0] _qNext2_T_5 = qNext[0] ? qVec2 : 5'h0; // @[Mux.scala 27:73]
  wire [12:0] _signs2_T_36 = {signs2_csa_spec_1_3_io_out_1[11:0], 1'h0}; // @[SRT16Divider.scala 313:50]
  wire [12:0] _signs2_T_38 = signs2_csa_spec_1_3_io_out_0 + _signs2_T_36; // @[SRT16Divider.scala 313:25]
  wire  signs2_1_3 = _signs2_T_38[12]; // @[SRT16Divider.scala 313:56]
  wire [12:0] _signs2_T_31 = {signs2_csa_spec_1_2_io_out_1[11:0], 1'h0}; // @[SRT16Divider.scala 313:50]
  wire [12:0] _signs2_T_33 = signs2_csa_spec_1_2_io_out_0 + _signs2_T_31; // @[SRT16Divider.scala 313:25]
  wire  signs2_1_2 = _signs2_T_33[12]; // @[SRT16Divider.scala 313:56]
  wire [12:0] _signs2_T_26 = {signs2_csa_spec_1_1_io_out_1[11:0], 1'h0}; // @[SRT16Divider.scala 313:50]
  wire [12:0] _signs2_T_28 = signs2_csa_spec_1_1_io_out_0 + _signs2_T_26; // @[SRT16Divider.scala 313:25]
  wire  signs2_1_1 = _signs2_T_28[12]; // @[SRT16Divider.scala 313:56]
  wire [12:0] _signs2_T_21 = {signs2_csa_spec_1_0_io_out_1[11:0], 1'h0}; // @[SRT16Divider.scala 313:50]
  wire [12:0] _signs2_T_23 = signs2_csa_spec_1_0_io_out_0 + _signs2_T_21; // @[SRT16Divider.scala 313:25]
  wire  signs2_1_0 = _signs2_T_23[12]; // @[SRT16Divider.scala 313:56]
  wire [3:0] _qVec2_T_1 = {signs2_1_3,signs2_1_2,signs2_1_1,signs2_1_0}; // @[SRT16Divider.scala 315:37]
  wire  _qVec2_spec_q_1_4_T_3 = ~_qVec2_T_1[2]; // @[SRT16Divider.scala 277:38]
  wire  _qVec2_spec_q_1_4_T_6 = ~_qVec2_T_1[1]; // @[SRT16Divider.scala 277:51]
  wire  qVec2_spec_q_1_4 = ~_qVec2_T_1[3] & ~_qVec2_T_1[2] & ~_qVec2_T_1[1]; // @[SRT16Divider.scala 277:48]
  wire  qVec2_spec_q_1_3 = _qVec2_T_1[3] & _qVec2_spec_q_1_4_T_3 & _qVec2_spec_q_1_4_T_6; // @[SRT16Divider.scala 276:47]
  wire  qVec2_spec_q_1_2 = _qVec2_T_1[2] & _qVec2_spec_q_1_4_T_6; // @[SRT16Divider.scala 275:30]
  wire  qVec2_spec_q_1_1 = ~_qVec2_T_1[0] & _qVec2_T_1[1] & _qVec2_T_1[2]; // @[SRT16Divider.scala 274:47]
  wire  qVec2_spec_q_1_0 = _qVec2_T_1[0] & _qVec2_T_1[1] & _qVec2_T_1[2]; // @[SRT16Divider.scala 273:46]
  wire [4:0] qVec2_1 = {qVec2_spec_q_1_4,qVec2_spec_q_1_3,qVec2_spec_q_1_2,qVec2_spec_q_1_1,qVec2_spec_q_1_0}; // @[SRT16Divider.scala 278:10]
  wire [4:0] _qNext2_T_6 = qNext[1] ? qVec2_1 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _qNext2_T_10 = _qNext2_T_5 | _qNext2_T_6; // @[Mux.scala 27:73]
  wire [12:0] _signs2_T_56 = {signs2_csa_spec_2_3_io_out_1[11:0], 1'h0}; // @[SRT16Divider.scala 313:50]
  wire [12:0] _signs2_T_58 = signs2_csa_spec_2_3_io_out_0 + _signs2_T_56; // @[SRT16Divider.scala 313:25]
  wire  signs2_2_3 = _signs2_T_58[12]; // @[SRT16Divider.scala 313:56]
  wire [12:0] _signs2_T_51 = {signs2_csa_spec_2_2_io_out_1[11:0], 1'h0}; // @[SRT16Divider.scala 313:50]
  wire [12:0] _signs2_T_53 = signs2_csa_spec_2_2_io_out_0 + _signs2_T_51; // @[SRT16Divider.scala 313:25]
  wire  signs2_2_2 = _signs2_T_53[12]; // @[SRT16Divider.scala 313:56]
  wire [12:0] _signs2_T_46 = {signs2_csa_spec_2_1_io_out_1[11:0], 1'h0}; // @[SRT16Divider.scala 313:50]
  wire [12:0] _signs2_T_48 = signs2_csa_spec_2_1_io_out_0 + _signs2_T_46; // @[SRT16Divider.scala 313:25]
  wire  signs2_2_1 = _signs2_T_48[12]; // @[SRT16Divider.scala 313:56]
  wire [12:0] _signs2_T_41 = {signs2_csa_spec_2_0_io_out_1[11:0], 1'h0}; // @[SRT16Divider.scala 313:50]
  wire [12:0] _signs2_T_43 = signs2_csa_spec_2_0_io_out_0 + _signs2_T_41; // @[SRT16Divider.scala 313:25]
  wire  signs2_2_0 = _signs2_T_43[12]; // @[SRT16Divider.scala 313:56]
  wire [3:0] _qVec2_T_2 = {signs2_2_3,signs2_2_2,signs2_2_1,signs2_2_0}; // @[SRT16Divider.scala 315:37]
  wire  _qVec2_spec_q_2_4_T_3 = ~_qVec2_T_2[2]; // @[SRT16Divider.scala 277:38]
  wire  _qVec2_spec_q_2_4_T_6 = ~_qVec2_T_2[1]; // @[SRT16Divider.scala 277:51]
  wire  qVec2_spec_q_2_4 = ~_qVec2_T_2[3] & ~_qVec2_T_2[2] & ~_qVec2_T_2[1]; // @[SRT16Divider.scala 277:48]
  wire  qVec2_spec_q_2_3 = _qVec2_T_2[3] & _qVec2_spec_q_2_4_T_3 & _qVec2_spec_q_2_4_T_6; // @[SRT16Divider.scala 276:47]
  wire  qVec2_spec_q_2_2 = _qVec2_T_2[2] & _qVec2_spec_q_2_4_T_6; // @[SRT16Divider.scala 275:30]
  wire  qVec2_spec_q_2_1 = ~_qVec2_T_2[0] & _qVec2_T_2[1] & _qVec2_T_2[2]; // @[SRT16Divider.scala 274:47]
  wire  qVec2_spec_q_2_0 = _qVec2_T_2[0] & _qVec2_T_2[1] & _qVec2_T_2[2]; // @[SRT16Divider.scala 273:46]
  wire [4:0] qVec2_2 = {qVec2_spec_q_2_4,qVec2_spec_q_2_3,qVec2_spec_q_2_2,qVec2_spec_q_2_1,qVec2_spec_q_2_0}; // @[SRT16Divider.scala 278:10]
  wire [4:0] _qNext2_T_7 = qNext[2] ? qVec2_2 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _qNext2_T_11 = _qNext2_T_10 | _qNext2_T_7; // @[Mux.scala 27:73]
  wire [12:0] _signs2_T_76 = {signs2_csa_spec_3_3_io_out_1[11:0], 1'h0}; // @[SRT16Divider.scala 313:50]
  wire [12:0] _signs2_T_78 = signs2_csa_spec_3_3_io_out_0 + _signs2_T_76; // @[SRT16Divider.scala 313:25]
  wire  signs2_3_3 = _signs2_T_78[12]; // @[SRT16Divider.scala 313:56]
  wire [12:0] _signs2_T_71 = {signs2_csa_spec_3_2_io_out_1[11:0], 1'h0}; // @[SRT16Divider.scala 313:50]
  wire [12:0] _signs2_T_73 = signs2_csa_spec_3_2_io_out_0 + _signs2_T_71; // @[SRT16Divider.scala 313:25]
  wire  signs2_3_2 = _signs2_T_73[12]; // @[SRT16Divider.scala 313:56]
  wire [12:0] _signs2_T_66 = {signs2_csa_spec_3_1_io_out_1[11:0], 1'h0}; // @[SRT16Divider.scala 313:50]
  wire [12:0] _signs2_T_68 = signs2_csa_spec_3_1_io_out_0 + _signs2_T_66; // @[SRT16Divider.scala 313:25]
  wire  signs2_3_1 = _signs2_T_68[12]; // @[SRT16Divider.scala 313:56]
  wire [12:0] _signs2_T_61 = {signs2_csa_spec_3_0_io_out_1[11:0], 1'h0}; // @[SRT16Divider.scala 313:50]
  wire [12:0] _signs2_T_63 = signs2_csa_spec_3_0_io_out_0 + _signs2_T_61; // @[SRT16Divider.scala 313:25]
  wire  signs2_3_0 = _signs2_T_63[12]; // @[SRT16Divider.scala 313:56]
  wire [3:0] _qVec2_T_3 = {signs2_3_3,signs2_3_2,signs2_3_1,signs2_3_0}; // @[SRT16Divider.scala 315:37]
  wire  _qVec2_spec_q_3_4_T_3 = ~_qVec2_T_3[2]; // @[SRT16Divider.scala 277:38]
  wire  _qVec2_spec_q_3_4_T_6 = ~_qVec2_T_3[1]; // @[SRT16Divider.scala 277:51]
  wire  qVec2_spec_q_3_4 = ~_qVec2_T_3[3] & ~_qVec2_T_3[2] & ~_qVec2_T_3[1]; // @[SRT16Divider.scala 277:48]
  wire  qVec2_spec_q_3_3 = _qVec2_T_3[3] & _qVec2_spec_q_3_4_T_3 & _qVec2_spec_q_3_4_T_6; // @[SRT16Divider.scala 276:47]
  wire  qVec2_spec_q_3_2 = _qVec2_T_3[2] & _qVec2_spec_q_3_4_T_6; // @[SRT16Divider.scala 275:30]
  wire  qVec2_spec_q_3_1 = ~_qVec2_T_3[0] & _qVec2_T_3[1] & _qVec2_T_3[2]; // @[SRT16Divider.scala 274:47]
  wire  qVec2_spec_q_3_0 = _qVec2_T_3[0] & _qVec2_T_3[1] & _qVec2_T_3[2]; // @[SRT16Divider.scala 273:46]
  wire [4:0] qVec2_3 = {qVec2_spec_q_3_4,qVec2_spec_q_3_3,qVec2_spec_q_3_2,qVec2_spec_q_3_1,qVec2_spec_q_3_0}; // @[SRT16Divider.scala 278:10]
  wire [4:0] _qNext2_T_8 = qNext[3] ? qVec2_3 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _qNext2_T_12 = _qNext2_T_11 | _qNext2_T_8; // @[Mux.scala 27:73]
  wire [12:0] _signs2_T_96 = {signs2_csa_spec_4_3_io_out_1[11:0], 1'h0}; // @[SRT16Divider.scala 313:50]
  wire [12:0] _signs2_T_98 = signs2_csa_spec_4_3_io_out_0 + _signs2_T_96; // @[SRT16Divider.scala 313:25]
  wire  signs2_4_3 = _signs2_T_98[12]; // @[SRT16Divider.scala 313:56]
  wire [12:0] _signs2_T_91 = {signs2_csa_spec_4_2_io_out_1[11:0], 1'h0}; // @[SRT16Divider.scala 313:50]
  wire [12:0] _signs2_T_93 = signs2_csa_spec_4_2_io_out_0 + _signs2_T_91; // @[SRT16Divider.scala 313:25]
  wire  signs2_4_2 = _signs2_T_93[12]; // @[SRT16Divider.scala 313:56]
  wire [12:0] _signs2_T_86 = {signs2_csa_spec_4_1_io_out_1[11:0], 1'h0}; // @[SRT16Divider.scala 313:50]
  wire [12:0] _signs2_T_88 = signs2_csa_spec_4_1_io_out_0 + _signs2_T_86; // @[SRT16Divider.scala 313:25]
  wire  signs2_4_1 = _signs2_T_88[12]; // @[SRT16Divider.scala 313:56]
  wire [12:0] _signs2_T_81 = {signs2_csa_spec_4_0_io_out_1[11:0], 1'h0}; // @[SRT16Divider.scala 313:50]
  wire [12:0] _signs2_T_83 = signs2_csa_spec_4_0_io_out_0 + _signs2_T_81; // @[SRT16Divider.scala 313:25]
  wire  signs2_4_0 = _signs2_T_83[12]; // @[SRT16Divider.scala 313:56]
  wire [3:0] _qVec2_T_4 = {signs2_4_3,signs2_4_2,signs2_4_1,signs2_4_0}; // @[SRT16Divider.scala 315:37]
  wire  _qVec2_spec_q_4_4_T_3 = ~_qVec2_T_4[2]; // @[SRT16Divider.scala 277:38]
  wire  _qVec2_spec_q_4_4_T_6 = ~_qVec2_T_4[1]; // @[SRT16Divider.scala 277:51]
  wire  qVec2_spec_q_4_4 = ~_qVec2_T_4[3] & ~_qVec2_T_4[2] & ~_qVec2_T_4[1]; // @[SRT16Divider.scala 277:48]
  wire  qVec2_spec_q_4_3 = _qVec2_T_4[3] & _qVec2_spec_q_4_4_T_3 & _qVec2_spec_q_4_4_T_6; // @[SRT16Divider.scala 276:47]
  wire  qVec2_spec_q_4_2 = _qVec2_T_4[2] & _qVec2_spec_q_4_4_T_6; // @[SRT16Divider.scala 275:30]
  wire  qVec2_spec_q_4_1 = ~_qVec2_T_4[0] & _qVec2_T_4[1] & _qVec2_T_4[2]; // @[SRT16Divider.scala 274:47]
  wire  qVec2_spec_q_4_0 = _qVec2_T_4[0] & _qVec2_T_4[1] & _qVec2_T_4[2]; // @[SRT16Divider.scala 273:46]
  wire [4:0] qVec2_4 = {qVec2_spec_q_4_4,qVec2_spec_q_4_3,qVec2_spec_q_4_2,qVec2_spec_q_4_1,qVec2_spec_q_4_0}; // @[SRT16Divider.scala 278:10]
  wire [4:0] _qNext2_T_9 = qNext[4] ? qVec2_4 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] qNext2 = _qNext2_T_12 | _qNext2_T_9; // @[Mux.scala 27:73]
  reg [67:0] rSumReg; // @[Reg.scala 16:16]
  wire [68:0] _rCarryIter_T_2 = {csa_sel_wide_1_io_out_1, 1'h0}; // @[SRT16Divider.scala 299:63]
  wire [68:0] _rCarryIter_T_4 = {csa_sel_wide_2_io_out_1, 1'h0}; // @[SRT16Divider.scala 299:104]
  reg [67:0] rCarryReg; // @[Reg.scala 16:16]
  wire [6:0] _T_20 = 3'h1 == dNormReg[62:60] ? 7'h1e : 7'h1a; // @[Mux.scala 81:58]
  wire [6:0] _T_22 = 3'h2 == dNormReg[62:60] ? 7'h20 : _T_20; // @[Mux.scala 81:58]
  wire [6:0] _T_24 = 3'h3 == dNormReg[62:60] ? 7'h24 : _T_22; // @[Mux.scala 81:58]
  wire [6:0] _T_26 = 3'h4 == dNormReg[62:60] ? 7'h26 : _T_24; // @[Mux.scala 81:58]
  wire [6:0] _T_28 = 3'h5 == dNormReg[62:60] ? 7'h2a : _T_26; // @[Mux.scala 81:58]
  wire [6:0] _T_30 = 3'h6 == dNormReg[62:60] ? 7'h2c : _T_28; // @[Mux.scala 81:58]
  wire [6:0] _T_32 = 3'h7 == dNormReg[62:60] ? 7'h30 : _T_30; // @[Mux.scala 81:58]
  wire  signBit = _T_32[6]; // @[BitUtils.scala 80:20]
  wire [3:0] _T_34 = signBit ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [11:0] mNeg_0 = {_T_34,_T_32,1'h0}; // @[Cat.scala 31:58]
  wire [6:0] _T_39 = 3'h1 == dNormReg[62:60] ? 7'h6 : 7'h4; // @[Mux.scala 81:58]
  wire [6:0] _T_41 = 3'h2 == dNormReg[62:60] ? 7'h6 : _T_39; // @[Mux.scala 81:58]
  wire [6:0] _T_43 = 3'h3 == dNormReg[62:60] ? 7'h6 : _T_41; // @[Mux.scala 81:58]
  wire [6:0] _T_45 = 3'h4 == dNormReg[62:60] ? 7'h8 : _T_43; // @[Mux.scala 81:58]
  wire [6:0] _T_47 = 3'h5 == dNormReg[62:60] ? 7'h8 : _T_45; // @[Mux.scala 81:58]
  wire [6:0] _T_49 = 3'h6 == dNormReg[62:60] ? 7'h8 : _T_47; // @[Mux.scala 81:58]
  wire [6:0] _T_51 = 3'h7 == dNormReg[62:60] ? 7'h8 : _T_49; // @[Mux.scala 81:58]
  wire  signBit_1 = _T_51[6]; // @[BitUtils.scala 80:20]
  wire [2:0] _T_53 = signBit_1 ? 3'h7 : 3'h0; // @[Bitwise.scala 74:12]
  wire [11:0] mNeg_1 = {_T_53,_T_51,2'h0}; // @[Cat.scala 31:58]
  wire [6:0] _T_58 = 3'h1 == dNormReg[62:60] ? 7'h7c : 7'h7d; // @[Mux.scala 81:58]
  wire [6:0] _T_60 = 3'h2 == dNormReg[62:60] ? 7'h7c : _T_58; // @[Mux.scala 81:58]
  wire [6:0] _T_62 = 3'h3 == dNormReg[62:60] ? 7'h7c : _T_60; // @[Mux.scala 81:58]
  wire [6:0] _T_64 = 3'h4 == dNormReg[62:60] ? 7'h7b : _T_62; // @[Mux.scala 81:58]
  wire [6:0] _T_66 = 3'h5 == dNormReg[62:60] ? 7'h7a : _T_64; // @[Mux.scala 81:58]
  wire [6:0] _T_68 = 3'h6 == dNormReg[62:60] ? 7'h7a : _T_66; // @[Mux.scala 81:58]
  wire [6:0] _T_70 = 3'h7 == dNormReg[62:60] ? 7'h7a : _T_68; // @[Mux.scala 81:58]
  wire  signBit_2 = _T_70[6]; // @[BitUtils.scala 80:20]
  wire [2:0] _T_72 = signBit_2 ? 3'h7 : 3'h0; // @[Bitwise.scala 74:12]
  wire [11:0] mNeg_2 = {_T_72,_T_70,2'h0}; // @[Cat.scala 31:58]
  wire [6:0] _T_77 = 3'h1 == dNormReg[62:60] ? 7'h64 : 7'h68; // @[Mux.scala 81:58]
  wire [6:0] _T_79 = 3'h2 == dNormReg[62:60] ? 7'h62 : _T_77; // @[Mux.scala 81:58]
  wire [6:0] _T_81 = 3'h3 == dNormReg[62:60] ? 7'h5e : _T_79; // @[Mux.scala 81:58]
  wire [6:0] _T_83 = 3'h4 == dNormReg[62:60] ? 7'h5c : _T_81; // @[Mux.scala 81:58]
  wire [6:0] _T_85 = 3'h5 == dNormReg[62:60] ? 7'h58 : _T_83; // @[Mux.scala 81:58]
  wire [6:0] _T_87 = 3'h6 == dNormReg[62:60] ? 7'h56 : _T_85; // @[Mux.scala 81:58]
  wire [6:0] _T_89 = 3'h7 == dNormReg[62:60] ? 7'h52 : _T_87; // @[Mux.scala 81:58]
  wire  signBit_3 = _T_89[6]; // @[BitUtils.scala 80:20]
  wire [3:0] _T_91 = signBit_3 ? 4'hf : 4'h0; // @[Bitwise.scala 74:12]
  wire [11:0] mNeg_3 = {_T_91,_T_89,1'h0}; // @[Cat.scala 31:58]
  wire  signBit_4 = dPos[64]; // @[BitUtils.scala 80:20]
  wire [67:0] udNeg_0 = {signBit_4,1'h0,dNormReg,2'h0}; // @[Cat.scala 31:58]
  wire [1:0] _T_97 = signBit_4 ? 2'h3 : 2'h0; // @[Bitwise.scala 74:12]
  wire [67:0] udNeg_1 = {_T_97,1'h0,dNormReg,1'h0}; // @[Cat.scala 31:58]
  wire  signBit_6 = dNeg[64]; // @[BitUtils.scala 80:20]
  wire [1:0] _T_101 = signBit_6 ? 2'h3 : 2'h0; // @[Bitwise.scala 74:12]
  wire [67:0] udNeg_3 = {_T_101,dNeg,1'h0}; // @[Cat.scala 31:58]
  wire [67:0] udNeg_4 = {signBit_6,dNeg,2'h0}; // @[Cat.scala 31:58]
  wire [9:0] rudNeg_0 = udNeg_0[66:57]; // @[SRT16Divider.scala 255:50]
  wire [9:0] rudNeg_1 = udNeg_1[66:57]; // @[SRT16Divider.scala 255:50]
  wire [9:0] rudNeg_3 = udNeg_3[66:57]; // @[SRT16Divider.scala 255:50]
  wire [9:0] rudNeg_4 = udNeg_4[66:57]; // @[SRT16Divider.scala 255:50]
  wire [11:0] r2udNeg_0 = udNeg_0[66:55]; // @[SRT16Divider.scala 256:51]
  wire [11:0] r2udNeg_1 = udNeg_1[66:55]; // @[SRT16Divider.scala 256:51]
  wire [11:0] r2udNeg_3 = udNeg_3[66:55]; // @[SRT16Divider.scala 256:51]
  wire [11:0] r2udNeg_4 = udNeg_4[66:55]; // @[SRT16Divider.scala 256:51]
  wire  signBit_8 = rudNeg_0[9]; // @[BitUtils.scala 80:20]
  wire [9:0] _T_117 = {signBit_8,rudNeg_0[9:1]}; // @[Cat.scala 31:58]
  wire [9:0] rudPmNeg_0_0 = _T_117 + mNeg_0[10:1]; // @[SRT16Divider.scala 258:103]
  wire [9:0] rudPmNeg_0_1 = _T_117 + mNeg_1[10:1]; // @[SRT16Divider.scala 258:103]
  wire [9:0] rudPmNeg_0_2 = _T_117 + mNeg_2[10:1]; // @[SRT16Divider.scala 258:103]
  wire [9:0] rudPmNeg_0_3 = _T_117 + mNeg_3[10:1]; // @[SRT16Divider.scala 258:103]
  wire  signBit_12 = rudNeg_1[9]; // @[BitUtils.scala 80:20]
  wire [9:0] _T_137 = {signBit_12,rudNeg_1[9:1]}; // @[Cat.scala 31:58]
  wire [9:0] rudPmNeg_1_0 = _T_137 + mNeg_0[10:1]; // @[SRT16Divider.scala 258:103]
  wire [9:0] rudPmNeg_1_1 = _T_137 + mNeg_1[10:1]; // @[SRT16Divider.scala 258:103]
  wire [9:0] rudPmNeg_1_2 = _T_137 + mNeg_2[10:1]; // @[SRT16Divider.scala 258:103]
  wire [9:0] rudPmNeg_1_3 = _T_137 + mNeg_3[10:1]; // @[SRT16Divider.scala 258:103]
  wire [10:0] _T_159 = {{1'd0}, mNeg_0[10:1]}; // @[SRT16Divider.scala 258:103]
  wire [9:0] rudPmNeg_2_0 = _T_159[9:0]; // @[SRT16Divider.scala 258:103]
  wire [10:0] _T_164 = {{1'd0}, mNeg_1[10:1]}; // @[SRT16Divider.scala 258:103]
  wire [9:0] rudPmNeg_2_1 = _T_164[9:0]; // @[SRT16Divider.scala 258:103]
  wire [10:0] _T_169 = {{1'd0}, mNeg_2[10:1]}; // @[SRT16Divider.scala 258:103]
  wire [9:0] rudPmNeg_2_2 = _T_169[9:0]; // @[SRT16Divider.scala 258:103]
  wire [10:0] _T_174 = {{1'd0}, mNeg_3[10:1]}; // @[SRT16Divider.scala 258:103]
  wire [9:0] rudPmNeg_2_3 = _T_174[9:0]; // @[SRT16Divider.scala 258:103]
  wire  signBit_20 = rudNeg_3[9]; // @[BitUtils.scala 80:20]
  wire [9:0] _T_177 = {signBit_20,rudNeg_3[9:1]}; // @[Cat.scala 31:58]
  wire [9:0] rudPmNeg_3_0 = _T_177 + mNeg_0[10:1]; // @[SRT16Divider.scala 258:103]
  wire [9:0] rudPmNeg_3_1 = _T_177 + mNeg_1[10:1]; // @[SRT16Divider.scala 258:103]
  wire [9:0] rudPmNeg_3_2 = _T_177 + mNeg_2[10:1]; // @[SRT16Divider.scala 258:103]
  wire [9:0] rudPmNeg_3_3 = _T_177 + mNeg_3[10:1]; // @[SRT16Divider.scala 258:103]
  wire  signBit_24 = rudNeg_4[9]; // @[BitUtils.scala 80:20]
  wire [9:0] _T_197 = {signBit_24,rudNeg_4[9:1]}; // @[Cat.scala 31:58]
  wire [9:0] rudPmNeg_4_0 = _T_197 + mNeg_0[10:1]; // @[SRT16Divider.scala 258:103]
  wire [9:0] rudPmNeg_4_1 = _T_197 + mNeg_1[10:1]; // @[SRT16Divider.scala 258:103]
  wire [9:0] rudPmNeg_4_2 = _T_197 + mNeg_2[10:1]; // @[SRT16Divider.scala 258:103]
  wire [9:0] rudPmNeg_4_3 = _T_197 + mNeg_3[10:1]; // @[SRT16Divider.scala 258:103]
  wire  signBit_28 = r2udNeg_0[11]; // @[BitUtils.scala 80:20]
  wire [12:0] _T_216 = {signBit_28,r2udNeg_0}; // @[Cat.scala 31:58]
  wire  signBit_29 = mNeg_0[11]; // @[BitUtils.scala 80:20]
  wire [12:0] _T_217 = {signBit_29,_T_34,_T_32,1'h0}; // @[Cat.scala 31:58]
  wire [12:0] r2udPmNeg_0_0 = _T_216 + _T_217; // @[SRT16Divider.scala 259:99]
  wire  signBit_31 = mNeg_1[11]; // @[BitUtils.scala 80:20]
  wire [12:0] _T_221 = {signBit_31,_T_53,_T_51,2'h0}; // @[Cat.scala 31:58]
  wire [12:0] r2udPmNeg_0_1 = _T_216 + _T_221; // @[SRT16Divider.scala 259:99]
  wire  signBit_33 = mNeg_2[11]; // @[BitUtils.scala 80:20]
  wire [12:0] _T_225 = {signBit_33,_T_72,_T_70,2'h0}; // @[Cat.scala 31:58]
  wire [12:0] r2udPmNeg_0_2 = _T_216 + _T_225; // @[SRT16Divider.scala 259:99]
  wire  signBit_35 = mNeg_3[11]; // @[BitUtils.scala 80:20]
  wire [12:0] _T_229 = {signBit_35,_T_91,_T_89,1'h0}; // @[Cat.scala 31:58]
  wire [12:0] r2udPmNeg_0_3 = _T_216 + _T_229; // @[SRT16Divider.scala 259:99]
  wire  signBit_36 = r2udNeg_1[11]; // @[BitUtils.scala 80:20]
  wire [12:0] _T_232 = {signBit_36,r2udNeg_1}; // @[Cat.scala 31:58]
  wire [12:0] r2udPmNeg_1_0 = _T_232 + _T_217; // @[SRT16Divider.scala 259:99]
  wire [12:0] r2udPmNeg_1_1 = _T_232 + _T_221; // @[SRT16Divider.scala 259:99]
  wire [12:0] r2udPmNeg_1_2 = _T_232 + _T_225; // @[SRT16Divider.scala 259:99]
  wire [12:0] r2udPmNeg_1_3 = _T_232 + _T_229; // @[SRT16Divider.scala 259:99]
  wire [13:0] _T_250 = {{1'd0}, _T_217}; // @[SRT16Divider.scala 259:99]
  wire [12:0] r2udPmNeg_2_0 = _T_250[12:0]; // @[SRT16Divider.scala 259:99]
  wire [13:0] _T_254 = {{1'd0}, _T_221}; // @[SRT16Divider.scala 259:99]
  wire [12:0] r2udPmNeg_2_1 = _T_254[12:0]; // @[SRT16Divider.scala 259:99]
  wire [13:0] _T_258 = {{1'd0}, _T_225}; // @[SRT16Divider.scala 259:99]
  wire [12:0] r2udPmNeg_2_2 = _T_258[12:0]; // @[SRT16Divider.scala 259:99]
  wire [13:0] _T_262 = {{1'd0}, _T_229}; // @[SRT16Divider.scala 259:99]
  wire [12:0] r2udPmNeg_2_3 = _T_262[12:0]; // @[SRT16Divider.scala 259:99]
  wire  signBit_52 = r2udNeg_3[11]; // @[BitUtils.scala 80:20]
  wire [12:0] _T_264 = {signBit_52,r2udNeg_3}; // @[Cat.scala 31:58]
  wire [12:0] r2udPmNeg_3_0 = _T_264 + _T_217; // @[SRT16Divider.scala 259:99]
  wire [12:0] r2udPmNeg_3_1 = _T_264 + _T_221; // @[SRT16Divider.scala 259:99]
  wire [12:0] r2udPmNeg_3_2 = _T_264 + _T_225; // @[SRT16Divider.scala 259:99]
  wire [12:0] r2udPmNeg_3_3 = _T_264 + _T_229; // @[SRT16Divider.scala 259:99]
  wire  signBit_60 = r2udNeg_4[11]; // @[BitUtils.scala 80:20]
  wire [12:0] _T_280 = {signBit_60,r2udNeg_4}; // @[Cat.scala 31:58]
  wire [12:0] r2udPmNeg_4_0 = _T_280 + _T_217; // @[SRT16Divider.scala 259:99]
  wire [12:0] r2udPmNeg_4_1 = _T_280 + _T_221; // @[SRT16Divider.scala 259:99]
  wire [12:0] r2udPmNeg_4_2 = _T_280 + _T_225; // @[SRT16Divider.scala 259:99]
  wire [12:0] r2udPmNeg_4_3 = _T_280 + _T_229; // @[SRT16Divider.scala 259:99]
  reg [67:0] udNegReg_0; // @[Reg.scala 16:16]
  reg [67:0] udNegReg_1; // @[Reg.scala 16:16]
  reg [67:0] udNegReg_3; // @[Reg.scala 16:16]
  reg [67:0] udNegReg_4; // @[Reg.scala 16:16]
  reg [9:0] rudPmNegReg_0_0; // @[Reg.scala 16:16]
  reg [9:0] rudPmNegReg_0_1; // @[Reg.scala 16:16]
  reg [9:0] rudPmNegReg_0_2; // @[Reg.scala 16:16]
  reg [9:0] rudPmNegReg_0_3; // @[Reg.scala 16:16]
  reg [9:0] rudPmNegReg_1_0; // @[Reg.scala 16:16]
  reg [9:0] rudPmNegReg_1_1; // @[Reg.scala 16:16]
  reg [9:0] rudPmNegReg_1_2; // @[Reg.scala 16:16]
  reg [9:0] rudPmNegReg_1_3; // @[Reg.scala 16:16]
  reg [9:0] rudPmNegReg_2_0; // @[Reg.scala 16:16]
  reg [9:0] rudPmNegReg_2_1; // @[Reg.scala 16:16]
  reg [9:0] rudPmNegReg_2_2; // @[Reg.scala 16:16]
  reg [9:0] rudPmNegReg_2_3; // @[Reg.scala 16:16]
  reg [9:0] rudPmNegReg_3_0; // @[Reg.scala 16:16]
  reg [9:0] rudPmNegReg_3_1; // @[Reg.scala 16:16]
  reg [9:0] rudPmNegReg_3_2; // @[Reg.scala 16:16]
  reg [9:0] rudPmNegReg_3_3; // @[Reg.scala 16:16]
  reg [9:0] rudPmNegReg_4_0; // @[Reg.scala 16:16]
  reg [9:0] rudPmNegReg_4_1; // @[Reg.scala 16:16]
  reg [9:0] rudPmNegReg_4_2; // @[Reg.scala 16:16]
  reg [9:0] rudPmNegReg_4_3; // @[Reg.scala 16:16]
  reg [12:0] r2udPmNegReg_0_0; // @[Reg.scala 16:16]
  reg [12:0] r2udPmNegReg_0_1; // @[Reg.scala 16:16]
  reg [12:0] r2udPmNegReg_0_2; // @[Reg.scala 16:16]
  reg [12:0] r2udPmNegReg_0_3; // @[Reg.scala 16:16]
  reg [12:0] r2udPmNegReg_1_0; // @[Reg.scala 16:16]
  reg [12:0] r2udPmNegReg_1_1; // @[Reg.scala 16:16]
  reg [12:0] r2udPmNegReg_1_2; // @[Reg.scala 16:16]
  reg [12:0] r2udPmNegReg_1_3; // @[Reg.scala 16:16]
  reg [12:0] r2udPmNegReg_2_0; // @[Reg.scala 16:16]
  reg [12:0] r2udPmNegReg_2_1; // @[Reg.scala 16:16]
  reg [12:0] r2udPmNegReg_2_2; // @[Reg.scala 16:16]
  reg [12:0] r2udPmNegReg_2_3; // @[Reg.scala 16:16]
  reg [12:0] r2udPmNegReg_3_0; // @[Reg.scala 16:16]
  reg [12:0] r2udPmNegReg_3_1; // @[Reg.scala 16:16]
  reg [12:0] r2udPmNegReg_3_2; // @[Reg.scala 16:16]
  reg [12:0] r2udPmNegReg_3_3; // @[Reg.scala 16:16]
  reg [12:0] r2udPmNegReg_4_0; // @[Reg.scala 16:16]
  reg [12:0] r2udPmNegReg_4_1; // @[Reg.scala 16:16]
  reg [12:0] r2udPmNegReg_4_2; // @[Reg.scala 16:16]
  reg [12:0] r2udPmNegReg_4_3; // @[Reg.scala 16:16]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_5 = qPrevReg[0] ? rudPmNegReg_0_0 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_6 = qPrevReg[1] ? rudPmNegReg_1_0 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_7 = qPrevReg[2] ? rudPmNegReg_2_0 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_8 = qPrevReg[3] ? rudPmNegReg_3_0 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_9 = qPrevReg[4] ? rudPmNegReg_4_0 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_10 = _signs_csa_sel_0_io_in_2_T_5 | _signs_csa_sel_0_io_in_2_T_6; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_11 = _signs_csa_sel_0_io_in_2_T_10 | _signs_csa_sel_0_io_in_2_T_7; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_12 = _signs_csa_sel_0_io_in_2_T_11 | _signs_csa_sel_0_io_in_2_T_8; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_14 = qPrevReg[0] ? rudPmNegReg_0_1 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_15 = qPrevReg[1] ? rudPmNegReg_1_1 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_16 = qPrevReg[2] ? rudPmNegReg_2_1 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_17 = qPrevReg[3] ? rudPmNegReg_3_1 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_18 = qPrevReg[4] ? rudPmNegReg_4_1 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_19 = _signs_csa_sel_0_io_in_2_T_14 | _signs_csa_sel_0_io_in_2_T_15; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_20 = _signs_csa_sel_0_io_in_2_T_19 | _signs_csa_sel_0_io_in_2_T_16; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_21 = _signs_csa_sel_0_io_in_2_T_20 | _signs_csa_sel_0_io_in_2_T_17; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_23 = qPrevReg[0] ? rudPmNegReg_0_2 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_24 = qPrevReg[1] ? rudPmNegReg_1_2 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_25 = qPrevReg[2] ? rudPmNegReg_2_2 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_26 = qPrevReg[3] ? rudPmNegReg_3_2 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_27 = qPrevReg[4] ? rudPmNegReg_4_2 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_28 = _signs_csa_sel_0_io_in_2_T_23 | _signs_csa_sel_0_io_in_2_T_24; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_29 = _signs_csa_sel_0_io_in_2_T_28 | _signs_csa_sel_0_io_in_2_T_25; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_30 = _signs_csa_sel_0_io_in_2_T_29 | _signs_csa_sel_0_io_in_2_T_26; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_32 = qPrevReg[0] ? rudPmNegReg_0_3 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_33 = qPrevReg[1] ? rudPmNegReg_1_3 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_34 = qPrevReg[2] ? rudPmNegReg_2_3 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_35 = qPrevReg[3] ? rudPmNegReg_3_3 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_36 = qPrevReg[4] ? rudPmNegReg_4_3 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_37 = _signs_csa_sel_0_io_in_2_T_32 | _signs_csa_sel_0_io_in_2_T_33; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_38 = _signs_csa_sel_0_io_in_2_T_37 | _signs_csa_sel_0_io_in_2_T_34; // @[Mux.scala 27:73]
  wire [9:0] _signs_csa_sel_0_io_in_2_T_39 = _signs_csa_sel_0_io_in_2_T_38 | _signs_csa_sel_0_io_in_2_T_35; // @[Mux.scala 27:73]
  wire [69:0] _csa_sel_wide_1_io_in_0_T = {rSumReg, 2'h0}; // @[SRT16Divider.scala 292:32]
  wire [69:0] _csa_sel_wide_1_io_in_1_T = {rCarryReg, 2'h0}; // @[SRT16Divider.scala 293:34]
  wire [67:0] _csa_sel_wide_1_io_in_2_T_5 = qPrevReg[0] ? udNegReg_0 : 68'h0; // @[Mux.scala 27:73]
  wire [67:0] _csa_sel_wide_1_io_in_2_T_6 = qPrevReg[1] ? udNegReg_1 : 68'h0; // @[Mux.scala 27:73]
  wire [67:0] _csa_sel_wide_1_io_in_2_T_8 = qPrevReg[3] ? udNegReg_3 : 68'h0; // @[Mux.scala 27:73]
  wire [67:0] _csa_sel_wide_1_io_in_2_T_9 = qPrevReg[4] ? udNegReg_4 : 68'h0; // @[Mux.scala 27:73]
  wire [67:0] _csa_sel_wide_1_io_in_2_T_10 = _csa_sel_wide_1_io_in_2_T_5 | _csa_sel_wide_1_io_in_2_T_6; // @[Mux.scala 27:73]
  wire [67:0] _csa_sel_wide_1_io_in_2_T_12 = _csa_sel_wide_1_io_in_2_T_10 | _csa_sel_wide_1_io_in_2_T_8; // @[Mux.scala 27:73]
  wire [67:0] _csa_sel_wide_1_io_in_2_T_13 = _csa_sel_wide_1_io_in_2_T_12 | _csa_sel_wide_1_io_in_2_T_9; // @[Mux.scala 27:73]
  wire [69:0] _csa_sel_wide_1_io_in_2_T_14 = {_csa_sel_wide_1_io_in_2_T_13, 2'h0}; // @[SRT16Divider.scala 294:56]
  wire [69:0] _csa_sel_wide_2_io_in_0_T = {csa_sel_wide_1_io_out_0, 2'h0}; // @[SRT16Divider.scala 295:43]
  wire [69:0] _csa_sel_wide_2_io_in_1_T_2 = {_rCarryIter_T_2[67:0], 2'h0}; // @[SRT16Divider.scala 296:64]
  wire [67:0] _csa_sel_wide_2_io_in_2_T_5 = qNext[0] ? udNegReg_0 : 68'h0; // @[Mux.scala 27:73]
  wire [67:0] _csa_sel_wide_2_io_in_2_T_6 = qNext[1] ? udNegReg_1 : 68'h0; // @[Mux.scala 27:73]
  wire [67:0] _csa_sel_wide_2_io_in_2_T_8 = qNext[3] ? udNegReg_3 : 68'h0; // @[Mux.scala 27:73]
  wire [67:0] _csa_sel_wide_2_io_in_2_T_9 = qNext[4] ? udNegReg_4 : 68'h0; // @[Mux.scala 27:73]
  wire [67:0] _csa_sel_wide_2_io_in_2_T_10 = _csa_sel_wide_2_io_in_2_T_5 | _csa_sel_wide_2_io_in_2_T_6; // @[Mux.scala 27:73]
  wire [67:0] _csa_sel_wide_2_io_in_2_T_12 = _csa_sel_wide_2_io_in_2_T_10 | _csa_sel_wide_2_io_in_2_T_8; // @[Mux.scala 27:73]
  wire [67:0] _csa_sel_wide_2_io_in_2_T_13 = _csa_sel_wide_2_io_in_2_T_12 | _csa_sel_wide_2_io_in_2_T_9; // @[Mux.scala 27:73]
  wire [69:0] _csa_sel_wide_2_io_in_2_T_14 = {_csa_sel_wide_2_io_in_2_T_13, 2'h0}; // @[SRT16Divider.scala 297:53]
  wire  csa_spec_0_io_in_2_signBit = udNegReg_0[66]; // @[BitUtils.scala 80:20]
  wire [2:0] _csa_spec_0_io_in_2_T_2 = csa_spec_0_io_in_2_signBit ? 3'h7 : 3'h0; // @[Bitwise.scala 74:12]
  wire [13:0] _signs2_csa_spec_0_0_io_in_1_T = {csa_spec_0_io_out_1, 1'h0}; // @[SRT16Divider.scala 311:42]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_5 = qPrevReg[0] ? r2udPmNegReg_0_0 : 13'h0; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_6 = qPrevReg[1] ? r2udPmNegReg_1_0 : 13'h0; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_7 = qPrevReg[2] ? r2udPmNegReg_2_0 : 13'h0; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_8 = qPrevReg[3] ? r2udPmNegReg_3_0 : 13'h0; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_9 = qPrevReg[4] ? r2udPmNegReg_4_0 : 13'h0; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_10 = _signs2_csa_spec_0_0_io_in_2_T_5 | _signs2_csa_spec_0_0_io_in_2_T_6; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_11 = _signs2_csa_spec_0_0_io_in_2_T_10 | _signs2_csa_spec_0_0_io_in_2_T_7; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_12 = _signs2_csa_spec_0_0_io_in_2_T_11 | _signs2_csa_spec_0_0_io_in_2_T_8; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_14 = qPrevReg[0] ? r2udPmNegReg_0_1 : 13'h0; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_15 = qPrevReg[1] ? r2udPmNegReg_1_1 : 13'h0; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_16 = qPrevReg[2] ? r2udPmNegReg_2_1 : 13'h0; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_17 = qPrevReg[3] ? r2udPmNegReg_3_1 : 13'h0; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_18 = qPrevReg[4] ? r2udPmNegReg_4_1 : 13'h0; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_19 = _signs2_csa_spec_0_0_io_in_2_T_14 | _signs2_csa_spec_0_0_io_in_2_T_15; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_20 = _signs2_csa_spec_0_0_io_in_2_T_19 | _signs2_csa_spec_0_0_io_in_2_T_16; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_21 = _signs2_csa_spec_0_0_io_in_2_T_20 | _signs2_csa_spec_0_0_io_in_2_T_17; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_23 = qPrevReg[0] ? r2udPmNegReg_0_2 : 13'h0; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_24 = qPrevReg[1] ? r2udPmNegReg_1_2 : 13'h0; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_25 = qPrevReg[2] ? r2udPmNegReg_2_2 : 13'h0; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_26 = qPrevReg[3] ? r2udPmNegReg_3_2 : 13'h0; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_27 = qPrevReg[4] ? r2udPmNegReg_4_2 : 13'h0; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_28 = _signs2_csa_spec_0_0_io_in_2_T_23 | _signs2_csa_spec_0_0_io_in_2_T_24; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_29 = _signs2_csa_spec_0_0_io_in_2_T_28 | _signs2_csa_spec_0_0_io_in_2_T_25; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_30 = _signs2_csa_spec_0_0_io_in_2_T_29 | _signs2_csa_spec_0_0_io_in_2_T_26; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_32 = qPrevReg[0] ? r2udPmNegReg_0_3 : 13'h0; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_33 = qPrevReg[1] ? r2udPmNegReg_1_3 : 13'h0; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_34 = qPrevReg[2] ? r2udPmNegReg_2_3 : 13'h0; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_35 = qPrevReg[3] ? r2udPmNegReg_3_3 : 13'h0; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_36 = qPrevReg[4] ? r2udPmNegReg_4_3 : 13'h0; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_37 = _signs2_csa_spec_0_0_io_in_2_T_32 | _signs2_csa_spec_0_0_io_in_2_T_33; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_38 = _signs2_csa_spec_0_0_io_in_2_T_37 | _signs2_csa_spec_0_0_io_in_2_T_34; // @[Mux.scala 27:73]
  wire [12:0] _signs2_csa_spec_0_0_io_in_2_T_39 = _signs2_csa_spec_0_0_io_in_2_T_38 | _signs2_csa_spec_0_0_io_in_2_T_35; // @[Mux.scala 27:73]
  wire  csa_spec_1_io_in_2_signBit = udNegReg_1[66]; // @[BitUtils.scala 80:20]
  wire [2:0] _csa_spec_1_io_in_2_T_2 = csa_spec_1_io_in_2_signBit ? 3'h7 : 3'h0; // @[Bitwise.scala 74:12]
  wire [13:0] _signs2_csa_spec_1_0_io_in_1_T = {csa_spec_1_io_out_1, 1'h0}; // @[SRT16Divider.scala 311:42]
  wire [13:0] _signs2_csa_spec_2_0_io_in_1_T = {csa_spec_2_io_out_1, 1'h0}; // @[SRT16Divider.scala 311:42]
  wire  csa_spec_3_io_in_2_signBit = udNegReg_3[66]; // @[BitUtils.scala 80:20]
  wire [2:0] _csa_spec_3_io_in_2_T_2 = csa_spec_3_io_in_2_signBit ? 3'h7 : 3'h0; // @[Bitwise.scala 74:12]
  wire [13:0] _signs2_csa_spec_3_0_io_in_1_T = {csa_spec_3_io_out_1, 1'h0}; // @[SRT16Divider.scala 311:42]
  wire  csa_spec_4_io_in_2_signBit = udNegReg_4[66]; // @[BitUtils.scala 80:20]
  wire [2:0] _csa_spec_4_io_in_2_T_2 = csa_spec_4_io_in_2_signBit ? 3'h7 : 3'h0; // @[Bitwise.scala 74:12]
  wire [13:0] _signs2_csa_spec_4_0_io_in_1_T = {csa_spec_4_io_out_1, 1'h0}; // @[SRT16Divider.scala 311:42]
  wire [67:0] _rNext_T = ~rSumReg; // @[SRT16Divider.scala 364:14]
  wire [67:0] _rNext_T_1 = ~rCarryReg; // @[SRT16Divider.scala 364:25]
  wire [67:0] _rNext_T_3 = _rNext_T + _rNext_T_1; // @[SRT16Divider.scala 364:23]
  wire [67:0] _rNext_T_5 = _rNext_T_3 + 68'h2; // @[SRT16Divider.scala 364:36]
  wire [67:0] _rNextPd_T_4 = {1'h0,dNormReg,3'h0}; // @[Cat.scala 31:58]
  wire [67:0] _rNextPd_T_5 = ~_rNextPd_T_4; // @[SRT16Divider.scala 365:40]
  wire [67:0] _rNextPd_T_7 = _rNext_T_3 + _rNextPd_T_5; // @[SRT16Divider.scala 365:38]
  wire [67:0] _rNextPd_T_9 = _rNextPd_T_7 + 68'h3; // @[SRT16Divider.scala 365:75]
  wire [67:0] _rNext_T_7 = rSumReg + rCarryReg; // @[SRT16Divider.scala 367:22]
  wire [67:0] _rNextPd_T_14 = _rNext_T_7 + _rNextPd_T_4; // @[SRT16Divider.scala 368:36]
  wire [67:0] rNext = rSignReg ? _rNext_T_5 : _rNext_T_7; // @[SRT16Divider.scala 363:18 364:11 367:11]
  wire [67:0] rNextPd = rSignReg ? _rNextPd_T_9 : _rNextPd_T_14; // @[SRT16Divider.scala 363:18 365:13 368:13]
  reg [64:0] r; // @[Reg.scala 16:16]
  reg [64:0] rNextPdReg; // @[Reg.scala 16:16]
  wire  _rIsZero_T = |r; // @[SRT16Divider.scala 376:24]
  wire  needCorr = rSignReg ? ~r[64] & _rIsZero_T : r[64]; // @[SRT16Divider.scala 377:21]
  wire [64:0] rPreShifted = needCorr ? rNextPdReg : r; // @[SRT16Divider.scala 378:24]
  reg [63:0] rFinal; // @[Reg.scala 16:16]
  reg [63:0] qFinal; // @[Reg.scala 16:16]
  wire [63:0] res = io_isHi ? rFinal : qFinal; // @[SRT16Divider.scala 386:16]
  wire  io_out_data_signBit = res[31]; // @[BitUtils.scala 80:20]
  wire [31:0] _io_out_data_T_2 = io_out_data_signBit ? 32'hffffffff : 32'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _io_out_data_T_3 = {_io_out_data_T_2,res[31:0]}; // @[Cat.scala 31:58]
  CSA3_2_1978 signs_csa_sel_0 ( // @[SRT16Divider.scala 282:21]
    .io_in_0(signs_csa_sel_0_io_in_0),
    .io_in_1(signs_csa_sel_0_io_in_1),
    .io_in_2(signs_csa_sel_0_io_in_2),
    .io_out_0(signs_csa_sel_0_io_out_0),
    .io_out_1(signs_csa_sel_0_io_out_1)
  );
  CSA3_2_1978 signs_csa_sel_1 ( // @[SRT16Divider.scala 282:21]
    .io_in_0(signs_csa_sel_1_io_in_0),
    .io_in_1(signs_csa_sel_1_io_in_1),
    .io_in_2(signs_csa_sel_1_io_in_2),
    .io_out_0(signs_csa_sel_1_io_out_0),
    .io_out_1(signs_csa_sel_1_io_out_1)
  );
  CSA3_2_1978 signs_csa_sel_2 ( // @[SRT16Divider.scala 282:21]
    .io_in_0(signs_csa_sel_2_io_in_0),
    .io_in_1(signs_csa_sel_2_io_in_1),
    .io_in_2(signs_csa_sel_2_io_in_2),
    .io_out_0(signs_csa_sel_2_io_out_0),
    .io_out_1(signs_csa_sel_2_io_out_1)
  );
  CSA3_2_1978 signs_csa_sel_3 ( // @[SRT16Divider.scala 282:21]
    .io_in_0(signs_csa_sel_3_io_in_0),
    .io_in_1(signs_csa_sel_3_io_in_1),
    .io_in_2(signs_csa_sel_3_io_in_2),
    .io_out_0(signs_csa_sel_3_io_out_0),
    .io_out_1(signs_csa_sel_3_io_out_1)
  );
  CSA3_2_1982 csa_sel_wide_1 ( // @[SRT16Divider.scala 290:24]
    .io_in_0(csa_sel_wide_1_io_in_0),
    .io_in_1(csa_sel_wide_1_io_in_1),
    .io_in_2(csa_sel_wide_1_io_in_2),
    .io_out_0(csa_sel_wide_1_io_out_0),
    .io_out_1(csa_sel_wide_1_io_out_1)
  );
  CSA3_2_1982 csa_sel_wide_2 ( // @[SRT16Divider.scala 291:24]
    .io_in_0(csa_sel_wide_2_io_in_0),
    .io_in_1(csa_sel_wide_2_io_in_1),
    .io_in_2(csa_sel_wide_2_io_in_2),
    .io_out_0(csa_sel_wide_2_io_out_0),
    .io_out_1(csa_sel_wide_2_io_out_1)
  );
  CSA3_2_1984 csa_spec_0 ( // @[SRT16Divider.scala 304:24]
    .io_in_0(csa_spec_0_io_in_0),
    .io_in_1(csa_spec_0_io_in_1),
    .io_in_2(csa_spec_0_io_in_2),
    .io_out_0(csa_spec_0_io_out_0),
    .io_out_1(csa_spec_0_io_out_1)
  );
  CSA3_2_1984 signs2_csa_spec_0_0 ( // @[SRT16Divider.scala 309:26]
    .io_in_0(signs2_csa_spec_0_0_io_in_0),
    .io_in_1(signs2_csa_spec_0_0_io_in_1),
    .io_in_2(signs2_csa_spec_0_0_io_in_2),
    .io_out_0(signs2_csa_spec_0_0_io_out_0),
    .io_out_1(signs2_csa_spec_0_0_io_out_1)
  );
  CSA3_2_1984 signs2_csa_spec_0_1 ( // @[SRT16Divider.scala 309:26]
    .io_in_0(signs2_csa_spec_0_1_io_in_0),
    .io_in_1(signs2_csa_spec_0_1_io_in_1),
    .io_in_2(signs2_csa_spec_0_1_io_in_2),
    .io_out_0(signs2_csa_spec_0_1_io_out_0),
    .io_out_1(signs2_csa_spec_0_1_io_out_1)
  );
  CSA3_2_1984 signs2_csa_spec_0_2 ( // @[SRT16Divider.scala 309:26]
    .io_in_0(signs2_csa_spec_0_2_io_in_0),
    .io_in_1(signs2_csa_spec_0_2_io_in_1),
    .io_in_2(signs2_csa_spec_0_2_io_in_2),
    .io_out_0(signs2_csa_spec_0_2_io_out_0),
    .io_out_1(signs2_csa_spec_0_2_io_out_1)
  );
  CSA3_2_1984 signs2_csa_spec_0_3 ( // @[SRT16Divider.scala 309:26]
    .io_in_0(signs2_csa_spec_0_3_io_in_0),
    .io_in_1(signs2_csa_spec_0_3_io_in_1),
    .io_in_2(signs2_csa_spec_0_3_io_in_2),
    .io_out_0(signs2_csa_spec_0_3_io_out_0),
    .io_out_1(signs2_csa_spec_0_3_io_out_1)
  );
  CSA3_2_1984 csa_spec_1 ( // @[SRT16Divider.scala 304:24]
    .io_in_0(csa_spec_1_io_in_0),
    .io_in_1(csa_spec_1_io_in_1),
    .io_in_2(csa_spec_1_io_in_2),
    .io_out_0(csa_spec_1_io_out_0),
    .io_out_1(csa_spec_1_io_out_1)
  );
  CSA3_2_1984 signs2_csa_spec_1_0 ( // @[SRT16Divider.scala 309:26]
    .io_in_0(signs2_csa_spec_1_0_io_in_0),
    .io_in_1(signs2_csa_spec_1_0_io_in_1),
    .io_in_2(signs2_csa_spec_1_0_io_in_2),
    .io_out_0(signs2_csa_spec_1_0_io_out_0),
    .io_out_1(signs2_csa_spec_1_0_io_out_1)
  );
  CSA3_2_1984 signs2_csa_spec_1_1 ( // @[SRT16Divider.scala 309:26]
    .io_in_0(signs2_csa_spec_1_1_io_in_0),
    .io_in_1(signs2_csa_spec_1_1_io_in_1),
    .io_in_2(signs2_csa_spec_1_1_io_in_2),
    .io_out_0(signs2_csa_spec_1_1_io_out_0),
    .io_out_1(signs2_csa_spec_1_1_io_out_1)
  );
  CSA3_2_1984 signs2_csa_spec_1_2 ( // @[SRT16Divider.scala 309:26]
    .io_in_0(signs2_csa_spec_1_2_io_in_0),
    .io_in_1(signs2_csa_spec_1_2_io_in_1),
    .io_in_2(signs2_csa_spec_1_2_io_in_2),
    .io_out_0(signs2_csa_spec_1_2_io_out_0),
    .io_out_1(signs2_csa_spec_1_2_io_out_1)
  );
  CSA3_2_1984 signs2_csa_spec_1_3 ( // @[SRT16Divider.scala 309:26]
    .io_in_0(signs2_csa_spec_1_3_io_in_0),
    .io_in_1(signs2_csa_spec_1_3_io_in_1),
    .io_in_2(signs2_csa_spec_1_3_io_in_2),
    .io_out_0(signs2_csa_spec_1_3_io_out_0),
    .io_out_1(signs2_csa_spec_1_3_io_out_1)
  );
  CSA3_2_1984 csa_spec_2 ( // @[SRT16Divider.scala 304:24]
    .io_in_0(csa_spec_2_io_in_0),
    .io_in_1(csa_spec_2_io_in_1),
    .io_in_2(csa_spec_2_io_in_2),
    .io_out_0(csa_spec_2_io_out_0),
    .io_out_1(csa_spec_2_io_out_1)
  );
  CSA3_2_1984 signs2_csa_spec_2_0 ( // @[SRT16Divider.scala 309:26]
    .io_in_0(signs2_csa_spec_2_0_io_in_0),
    .io_in_1(signs2_csa_spec_2_0_io_in_1),
    .io_in_2(signs2_csa_spec_2_0_io_in_2),
    .io_out_0(signs2_csa_spec_2_0_io_out_0),
    .io_out_1(signs2_csa_spec_2_0_io_out_1)
  );
  CSA3_2_1984 signs2_csa_spec_2_1 ( // @[SRT16Divider.scala 309:26]
    .io_in_0(signs2_csa_spec_2_1_io_in_0),
    .io_in_1(signs2_csa_spec_2_1_io_in_1),
    .io_in_2(signs2_csa_spec_2_1_io_in_2),
    .io_out_0(signs2_csa_spec_2_1_io_out_0),
    .io_out_1(signs2_csa_spec_2_1_io_out_1)
  );
  CSA3_2_1984 signs2_csa_spec_2_2 ( // @[SRT16Divider.scala 309:26]
    .io_in_0(signs2_csa_spec_2_2_io_in_0),
    .io_in_1(signs2_csa_spec_2_2_io_in_1),
    .io_in_2(signs2_csa_spec_2_2_io_in_2),
    .io_out_0(signs2_csa_spec_2_2_io_out_0),
    .io_out_1(signs2_csa_spec_2_2_io_out_1)
  );
  CSA3_2_1984 signs2_csa_spec_2_3 ( // @[SRT16Divider.scala 309:26]
    .io_in_0(signs2_csa_spec_2_3_io_in_0),
    .io_in_1(signs2_csa_spec_2_3_io_in_1),
    .io_in_2(signs2_csa_spec_2_3_io_in_2),
    .io_out_0(signs2_csa_spec_2_3_io_out_0),
    .io_out_1(signs2_csa_spec_2_3_io_out_1)
  );
  CSA3_2_1984 csa_spec_3 ( // @[SRT16Divider.scala 304:24]
    .io_in_0(csa_spec_3_io_in_0),
    .io_in_1(csa_spec_3_io_in_1),
    .io_in_2(csa_spec_3_io_in_2),
    .io_out_0(csa_spec_3_io_out_0),
    .io_out_1(csa_spec_3_io_out_1)
  );
  CSA3_2_1984 signs2_csa_spec_3_0 ( // @[SRT16Divider.scala 309:26]
    .io_in_0(signs2_csa_spec_3_0_io_in_0),
    .io_in_1(signs2_csa_spec_3_0_io_in_1),
    .io_in_2(signs2_csa_spec_3_0_io_in_2),
    .io_out_0(signs2_csa_spec_3_0_io_out_0),
    .io_out_1(signs2_csa_spec_3_0_io_out_1)
  );
  CSA3_2_1984 signs2_csa_spec_3_1 ( // @[SRT16Divider.scala 309:26]
    .io_in_0(signs2_csa_spec_3_1_io_in_0),
    .io_in_1(signs2_csa_spec_3_1_io_in_1),
    .io_in_2(signs2_csa_spec_3_1_io_in_2),
    .io_out_0(signs2_csa_spec_3_1_io_out_0),
    .io_out_1(signs2_csa_spec_3_1_io_out_1)
  );
  CSA3_2_1984 signs2_csa_spec_3_2 ( // @[SRT16Divider.scala 309:26]
    .io_in_0(signs2_csa_spec_3_2_io_in_0),
    .io_in_1(signs2_csa_spec_3_2_io_in_1),
    .io_in_2(signs2_csa_spec_3_2_io_in_2),
    .io_out_0(signs2_csa_spec_3_2_io_out_0),
    .io_out_1(signs2_csa_spec_3_2_io_out_1)
  );
  CSA3_2_1984 signs2_csa_spec_3_3 ( // @[SRT16Divider.scala 309:26]
    .io_in_0(signs2_csa_spec_3_3_io_in_0),
    .io_in_1(signs2_csa_spec_3_3_io_in_1),
    .io_in_2(signs2_csa_spec_3_3_io_in_2),
    .io_out_0(signs2_csa_spec_3_3_io_out_0),
    .io_out_1(signs2_csa_spec_3_3_io_out_1)
  );
  CSA3_2_1984 csa_spec_4 ( // @[SRT16Divider.scala 304:24]
    .io_in_0(csa_spec_4_io_in_0),
    .io_in_1(csa_spec_4_io_in_1),
    .io_in_2(csa_spec_4_io_in_2),
    .io_out_0(csa_spec_4_io_out_0),
    .io_out_1(csa_spec_4_io_out_1)
  );
  CSA3_2_1984 signs2_csa_spec_4_0 ( // @[SRT16Divider.scala 309:26]
    .io_in_0(signs2_csa_spec_4_0_io_in_0),
    .io_in_1(signs2_csa_spec_4_0_io_in_1),
    .io_in_2(signs2_csa_spec_4_0_io_in_2),
    .io_out_0(signs2_csa_spec_4_0_io_out_0),
    .io_out_1(signs2_csa_spec_4_0_io_out_1)
  );
  CSA3_2_1984 signs2_csa_spec_4_1 ( // @[SRT16Divider.scala 309:26]
    .io_in_0(signs2_csa_spec_4_1_io_in_0),
    .io_in_1(signs2_csa_spec_4_1_io_in_1),
    .io_in_2(signs2_csa_spec_4_1_io_in_2),
    .io_out_0(signs2_csa_spec_4_1_io_out_0),
    .io_out_1(signs2_csa_spec_4_1_io_out_1)
  );
  CSA3_2_1984 signs2_csa_spec_4_2 ( // @[SRT16Divider.scala 309:26]
    .io_in_0(signs2_csa_spec_4_2_io_in_0),
    .io_in_1(signs2_csa_spec_4_2_io_in_1),
    .io_in_2(signs2_csa_spec_4_2_io_in_2),
    .io_out_0(signs2_csa_spec_4_2_io_out_0),
    .io_out_1(signs2_csa_spec_4_2_io_out_1)
  );
  CSA3_2_1984 signs2_csa_spec_4_3 ( // @[SRT16Divider.scala 309:26]
    .io_in_0(signs2_csa_spec_4_3_io_in_0),
    .io_in_1(signs2_csa_spec_4_3_io_in_1),
    .io_in_2(signs2_csa_spec_4_3_io_in_2),
    .io_out_0(signs2_csa_spec_4_3_io_out_0),
    .io_out_1(signs2_csa_spec_4_3_io_out_1)
  );
  RightShifter rightShifter ( // @[SRT16Divider.scala 379:28]
    .io_shiftNum(rightShifter_io_shiftNum),
    .io_in(rightShifter_io_in),
    .io_msb(rightShifter_io_msb),
    .io_out(rightShifter_io_out)
  );
  assign io_in_ready = state[0]; // @[SRT16Divider.scala 391:23]
  assign io_out_valid = _T_13[0]; // @[SRT16Divider.scala 392:24]
  assign io_out_data = io_isW ? _io_out_data_T_3 : res; // @[SRT16Divider.scala 387:21]
  assign signs_csa_sel_0_io_in_0 = rSumReg[67:58]; // @[SRT16Divider.scala 263:18]
  assign signs_csa_sel_0_io_in_1 = rCarryReg[67:58]; // @[SRT16Divider.scala 264:20]
  assign signs_csa_sel_0_io_in_2 = _signs_csa_sel_0_io_in_2_T_12 | _signs_csa_sel_0_io_in_2_T_9; // @[Mux.scala 27:73]
  assign signs_csa_sel_1_io_in_0 = rSumReg[67:58]; // @[SRT16Divider.scala 263:18]
  assign signs_csa_sel_1_io_in_1 = rCarryReg[67:58]; // @[SRT16Divider.scala 264:20]
  assign signs_csa_sel_1_io_in_2 = _signs_csa_sel_0_io_in_2_T_21 | _signs_csa_sel_0_io_in_2_T_18; // @[Mux.scala 27:73]
  assign signs_csa_sel_2_io_in_0 = rSumReg[67:58]; // @[SRT16Divider.scala 263:18]
  assign signs_csa_sel_2_io_in_1 = rCarryReg[67:58]; // @[SRT16Divider.scala 264:20]
  assign signs_csa_sel_2_io_in_2 = _signs_csa_sel_0_io_in_2_T_30 | _signs_csa_sel_0_io_in_2_T_27; // @[Mux.scala 27:73]
  assign signs_csa_sel_3_io_in_0 = rSumReg[67:58]; // @[SRT16Divider.scala 263:18]
  assign signs_csa_sel_3_io_in_1 = rCarryReg[67:58]; // @[SRT16Divider.scala 264:20]
  assign signs_csa_sel_3_io_in_2 = _signs_csa_sel_0_io_in_2_T_39 | _signs_csa_sel_0_io_in_2_T_36; // @[Mux.scala 27:73]
  assign csa_sel_wide_1_io_in_0 = _csa_sel_wide_1_io_in_0_T[67:0]; // @[SRT16Divider.scala 292:21]
  assign csa_sel_wide_1_io_in_1 = _csa_sel_wide_1_io_in_1_T[67:0]; // @[SRT16Divider.scala 293:21]
  assign csa_sel_wide_1_io_in_2 = _csa_sel_wide_1_io_in_2_T_14[67:0]; // @[SRT16Divider.scala 294:21]
  assign csa_sel_wide_2_io_in_0 = _csa_sel_wide_2_io_in_0_T[67:0]; // @[SRT16Divider.scala 295:21]
  assign csa_sel_wide_2_io_in_1 = _csa_sel_wide_2_io_in_1_T_2[67:0]; // @[SRT16Divider.scala 296:21]
  assign csa_sel_wide_2_io_in_2 = _csa_sel_wide_2_io_in_2_T_14[67:0]; // @[SRT16Divider.scala 297:21]
  assign csa_spec_0_io_in_0 = rSumReg[67:55]; // @[SRT16Divider.scala 260:18]
  assign csa_spec_0_io_in_1 = rCarryReg[67:55]; // @[SRT16Divider.scala 261:20]
  assign csa_spec_0_io_in_2 = {_csa_spec_0_io_in_2_T_2,udNegReg_0[66:57]}; // @[Cat.scala 31:58]
  assign signs2_csa_spec_0_0_io_in_0 = csa_spec_0_io_out_0; // @[SRT16Divider.scala 310:23]
  assign signs2_csa_spec_0_0_io_in_1 = _signs2_csa_spec_0_0_io_in_1_T[12:0]; // @[SRT16Divider.scala 311:47]
  assign signs2_csa_spec_0_0_io_in_2 = _signs2_csa_spec_0_0_io_in_2_T_12 | _signs2_csa_spec_0_0_io_in_2_T_9; // @[Mux.scala 27:73]
  assign signs2_csa_spec_0_1_io_in_0 = csa_spec_0_io_out_0; // @[SRT16Divider.scala 310:23]
  assign signs2_csa_spec_0_1_io_in_1 = _signs2_csa_spec_0_0_io_in_1_T[12:0]; // @[SRT16Divider.scala 311:47]
  assign signs2_csa_spec_0_1_io_in_2 = _signs2_csa_spec_0_0_io_in_2_T_21 | _signs2_csa_spec_0_0_io_in_2_T_18; // @[Mux.scala 27:73]
  assign signs2_csa_spec_0_2_io_in_0 = csa_spec_0_io_out_0; // @[SRT16Divider.scala 310:23]
  assign signs2_csa_spec_0_2_io_in_1 = _signs2_csa_spec_0_0_io_in_1_T[12:0]; // @[SRT16Divider.scala 311:47]
  assign signs2_csa_spec_0_2_io_in_2 = _signs2_csa_spec_0_0_io_in_2_T_30 | _signs2_csa_spec_0_0_io_in_2_T_27; // @[Mux.scala 27:73]
  assign signs2_csa_spec_0_3_io_in_0 = csa_spec_0_io_out_0; // @[SRT16Divider.scala 310:23]
  assign signs2_csa_spec_0_3_io_in_1 = _signs2_csa_spec_0_0_io_in_1_T[12:0]; // @[SRT16Divider.scala 311:47]
  assign signs2_csa_spec_0_3_io_in_2 = _signs2_csa_spec_0_0_io_in_2_T_39 | _signs2_csa_spec_0_0_io_in_2_T_36; // @[Mux.scala 27:73]
  assign csa_spec_1_io_in_0 = rSumReg[67:55]; // @[SRT16Divider.scala 260:18]
  assign csa_spec_1_io_in_1 = rCarryReg[67:55]; // @[SRT16Divider.scala 261:20]
  assign csa_spec_1_io_in_2 = {_csa_spec_1_io_in_2_T_2,udNegReg_1[66:57]}; // @[Cat.scala 31:58]
  assign signs2_csa_spec_1_0_io_in_0 = csa_spec_1_io_out_0; // @[SRT16Divider.scala 310:23]
  assign signs2_csa_spec_1_0_io_in_1 = _signs2_csa_spec_1_0_io_in_1_T[12:0]; // @[SRT16Divider.scala 311:47]
  assign signs2_csa_spec_1_0_io_in_2 = _signs2_csa_spec_0_0_io_in_2_T_12 | _signs2_csa_spec_0_0_io_in_2_T_9; // @[Mux.scala 27:73]
  assign signs2_csa_spec_1_1_io_in_0 = csa_spec_1_io_out_0; // @[SRT16Divider.scala 310:23]
  assign signs2_csa_spec_1_1_io_in_1 = _signs2_csa_spec_1_0_io_in_1_T[12:0]; // @[SRT16Divider.scala 311:47]
  assign signs2_csa_spec_1_1_io_in_2 = _signs2_csa_spec_0_0_io_in_2_T_21 | _signs2_csa_spec_0_0_io_in_2_T_18; // @[Mux.scala 27:73]
  assign signs2_csa_spec_1_2_io_in_0 = csa_spec_1_io_out_0; // @[SRT16Divider.scala 310:23]
  assign signs2_csa_spec_1_2_io_in_1 = _signs2_csa_spec_1_0_io_in_1_T[12:0]; // @[SRT16Divider.scala 311:47]
  assign signs2_csa_spec_1_2_io_in_2 = _signs2_csa_spec_0_0_io_in_2_T_30 | _signs2_csa_spec_0_0_io_in_2_T_27; // @[Mux.scala 27:73]
  assign signs2_csa_spec_1_3_io_in_0 = csa_spec_1_io_out_0; // @[SRT16Divider.scala 310:23]
  assign signs2_csa_spec_1_3_io_in_1 = _signs2_csa_spec_1_0_io_in_1_T[12:0]; // @[SRT16Divider.scala 311:47]
  assign signs2_csa_spec_1_3_io_in_2 = _signs2_csa_spec_0_0_io_in_2_T_39 | _signs2_csa_spec_0_0_io_in_2_T_36; // @[Mux.scala 27:73]
  assign csa_spec_2_io_in_0 = rSumReg[67:55]; // @[SRT16Divider.scala 260:18]
  assign csa_spec_2_io_in_1 = rCarryReg[67:55]; // @[SRT16Divider.scala 261:20]
  assign csa_spec_2_io_in_2 = 13'h0; // @[Cat.scala 31:58]
  assign signs2_csa_spec_2_0_io_in_0 = csa_spec_2_io_out_0; // @[SRT16Divider.scala 310:23]
  assign signs2_csa_spec_2_0_io_in_1 = _signs2_csa_spec_2_0_io_in_1_T[12:0]; // @[SRT16Divider.scala 311:47]
  assign signs2_csa_spec_2_0_io_in_2 = _signs2_csa_spec_0_0_io_in_2_T_12 | _signs2_csa_spec_0_0_io_in_2_T_9; // @[Mux.scala 27:73]
  assign signs2_csa_spec_2_1_io_in_0 = csa_spec_2_io_out_0; // @[SRT16Divider.scala 310:23]
  assign signs2_csa_spec_2_1_io_in_1 = _signs2_csa_spec_2_0_io_in_1_T[12:0]; // @[SRT16Divider.scala 311:47]
  assign signs2_csa_spec_2_1_io_in_2 = _signs2_csa_spec_0_0_io_in_2_T_21 | _signs2_csa_spec_0_0_io_in_2_T_18; // @[Mux.scala 27:73]
  assign signs2_csa_spec_2_2_io_in_0 = csa_spec_2_io_out_0; // @[SRT16Divider.scala 310:23]
  assign signs2_csa_spec_2_2_io_in_1 = _signs2_csa_spec_2_0_io_in_1_T[12:0]; // @[SRT16Divider.scala 311:47]
  assign signs2_csa_spec_2_2_io_in_2 = _signs2_csa_spec_0_0_io_in_2_T_30 | _signs2_csa_spec_0_0_io_in_2_T_27; // @[Mux.scala 27:73]
  assign signs2_csa_spec_2_3_io_in_0 = csa_spec_2_io_out_0; // @[SRT16Divider.scala 310:23]
  assign signs2_csa_spec_2_3_io_in_1 = _signs2_csa_spec_2_0_io_in_1_T[12:0]; // @[SRT16Divider.scala 311:47]
  assign signs2_csa_spec_2_3_io_in_2 = _signs2_csa_spec_0_0_io_in_2_T_39 | _signs2_csa_spec_0_0_io_in_2_T_36; // @[Mux.scala 27:73]
  assign csa_spec_3_io_in_0 = rSumReg[67:55]; // @[SRT16Divider.scala 260:18]
  assign csa_spec_3_io_in_1 = rCarryReg[67:55]; // @[SRT16Divider.scala 261:20]
  assign csa_spec_3_io_in_2 = {_csa_spec_3_io_in_2_T_2,udNegReg_3[66:57]}; // @[Cat.scala 31:58]
  assign signs2_csa_spec_3_0_io_in_0 = csa_spec_3_io_out_0; // @[SRT16Divider.scala 310:23]
  assign signs2_csa_spec_3_0_io_in_1 = _signs2_csa_spec_3_0_io_in_1_T[12:0]; // @[SRT16Divider.scala 311:47]
  assign signs2_csa_spec_3_0_io_in_2 = _signs2_csa_spec_0_0_io_in_2_T_12 | _signs2_csa_spec_0_0_io_in_2_T_9; // @[Mux.scala 27:73]
  assign signs2_csa_spec_3_1_io_in_0 = csa_spec_3_io_out_0; // @[SRT16Divider.scala 310:23]
  assign signs2_csa_spec_3_1_io_in_1 = _signs2_csa_spec_3_0_io_in_1_T[12:0]; // @[SRT16Divider.scala 311:47]
  assign signs2_csa_spec_3_1_io_in_2 = _signs2_csa_spec_0_0_io_in_2_T_21 | _signs2_csa_spec_0_0_io_in_2_T_18; // @[Mux.scala 27:73]
  assign signs2_csa_spec_3_2_io_in_0 = csa_spec_3_io_out_0; // @[SRT16Divider.scala 310:23]
  assign signs2_csa_spec_3_2_io_in_1 = _signs2_csa_spec_3_0_io_in_1_T[12:0]; // @[SRT16Divider.scala 311:47]
  assign signs2_csa_spec_3_2_io_in_2 = _signs2_csa_spec_0_0_io_in_2_T_30 | _signs2_csa_spec_0_0_io_in_2_T_27; // @[Mux.scala 27:73]
  assign signs2_csa_spec_3_3_io_in_0 = csa_spec_3_io_out_0; // @[SRT16Divider.scala 310:23]
  assign signs2_csa_spec_3_3_io_in_1 = _signs2_csa_spec_3_0_io_in_1_T[12:0]; // @[SRT16Divider.scala 311:47]
  assign signs2_csa_spec_3_3_io_in_2 = _signs2_csa_spec_0_0_io_in_2_T_39 | _signs2_csa_spec_0_0_io_in_2_T_36; // @[Mux.scala 27:73]
  assign csa_spec_4_io_in_0 = rSumReg[67:55]; // @[SRT16Divider.scala 260:18]
  assign csa_spec_4_io_in_1 = rCarryReg[67:55]; // @[SRT16Divider.scala 261:20]
  assign csa_spec_4_io_in_2 = {_csa_spec_4_io_in_2_T_2,udNegReg_4[66:57]}; // @[Cat.scala 31:58]
  assign signs2_csa_spec_4_0_io_in_0 = csa_spec_4_io_out_0; // @[SRT16Divider.scala 310:23]
  assign signs2_csa_spec_4_0_io_in_1 = _signs2_csa_spec_4_0_io_in_1_T[12:0]; // @[SRT16Divider.scala 311:47]
  assign signs2_csa_spec_4_0_io_in_2 = _signs2_csa_spec_0_0_io_in_2_T_12 | _signs2_csa_spec_0_0_io_in_2_T_9; // @[Mux.scala 27:73]
  assign signs2_csa_spec_4_1_io_in_0 = csa_spec_4_io_out_0; // @[SRT16Divider.scala 310:23]
  assign signs2_csa_spec_4_1_io_in_1 = _signs2_csa_spec_4_0_io_in_1_T[12:0]; // @[SRT16Divider.scala 311:47]
  assign signs2_csa_spec_4_1_io_in_2 = _signs2_csa_spec_0_0_io_in_2_T_21 | _signs2_csa_spec_0_0_io_in_2_T_18; // @[Mux.scala 27:73]
  assign signs2_csa_spec_4_2_io_in_0 = csa_spec_4_io_out_0; // @[SRT16Divider.scala 310:23]
  assign signs2_csa_spec_4_2_io_in_1 = _signs2_csa_spec_4_0_io_in_1_T[12:0]; // @[SRT16Divider.scala 311:47]
  assign signs2_csa_spec_4_2_io_in_2 = _signs2_csa_spec_0_0_io_in_2_T_30 | _signs2_csa_spec_0_0_io_in_2_T_27; // @[Mux.scala 27:73]
  assign signs2_csa_spec_4_3_io_in_0 = csa_spec_4_io_out_0; // @[SRT16Divider.scala 310:23]
  assign signs2_csa_spec_4_3_io_in_1 = _signs2_csa_spec_4_0_io_in_1_T[12:0]; // @[SRT16Divider.scala 311:47]
  assign signs2_csa_spec_4_3_io_in_2 = _signs2_csa_spec_0_0_io_in_2_T_39 | _signs2_csa_spec_0_0_io_in_2_T_36; // @[Mux.scala 27:73]
  assign rightShifter_io_shiftNum = dLZCReg[5:0]; // @[SRT16Divider.scala 381:28]
  assign rightShifter_io_in = rPreShifted[63:0]; // @[SRT16Divider.scala 380:22]
  assign rightShifter_io_msb = ~(|rPreShifted) ? 1'h0 : rSignReg; // @[SRT16Divider.scala 382:29]
  always @(posedge clock) begin
    if (_quotIterReg_T_7) begin // @[Reg.scala 17:18]
      if (_quotIterReg_T_2[0]) begin // @[SRT16Divider.scala 355:18]
        if (~oddIter & finalIter) begin // @[SRT16Divider.scala 346:22]
          quotIterReg <= quotHalfIter;
        end else begin
          quotIterReg <= quotIterNext_quotNext[63:0];
        end
      end else if (_quotIterReg_T[0]) begin // @[SRT16Divider.scala 356:24]
        quotIterReg <= 64'h0;
      end else if (quotSignReg) begin // @[SRT16Divider.scala 357:26]
        quotIterReg <= aInverter;
      end
    end
    if (_T_5[0]) begin // @[Reg.scala 17:18]
      dLZCReg <= dLZC; // @[Reg.scala 17:22]
    end
    if (_T_5[0]) begin // @[Reg.scala 17:18]
      aLZCReg <= aLZC; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T_4) begin // @[Reg.scala 17:18]
      iterNumReg <= iterNum; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T_4) begin // @[Reg.scala 17:18]
      if (_quotIterReg_T[0]) begin // @[SRT16Divider.scala 237:31]
        if (initCmpPos2) begin // @[SRT16Divider.scala 203:18]
          qPrevReg <= 5'h10;
        end else if (initCmpPos1) begin // @[SRT16Divider.scala 203:60]
          qPrevReg <= 5'h8;
        end else begin
          qPrevReg <= 5'h4;
        end
      end else begin
        qPrevReg <= qNext2;
      end
    end
    if (_quotIterReg_T_7) begin // @[Reg.scala 17:18]
      if (_quotIterReg_T_2[0]) begin // @[SRT16Divider.scala 358:20]
        if (_quotIterNext_T_1) begin // @[SRT16Divider.scala 347:24]
          quotM1IterReg <= quotM1HalfIter;
        end else begin
          quotM1IterReg <= quotM1IterNext_quotM1Next[63:0];
        end
      end else if (_quotIterReg_T[0]) begin // @[SRT16Divider.scala 359:26]
        quotM1IterReg <= 64'h0;
      end else if (quotSignReg) begin // @[SRT16Divider.scala 360:28]
        quotM1IterReg <= dInverter;
      end
    end
    if (_quotSignReg_T_3) begin // @[Reg.scala 17:18]
      if (state[0]) begin // @[SRT16Divider.scala 161:21]
        quotSignReg <= aSign ^ dSign;
      end else begin
        quotSignReg <= 1'h1;
      end
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      specialReg <= special; // @[Reg.scala 17:22]
    end
    if (in_fire) begin // @[Reg.scala 17:18]
      if (dSign) begin // @[SRT16Divider.scala 110:17]
        dAbsReg <= dInverter;
      end else begin
        dAbsReg <= io_src_1;
      end
    end
    if (_T_5[0]) begin // @[Reg.scala 17:18]
      dNormReg <= dNorm; // @[Reg.scala 17:22]
    end
    if (_T_5[0]) begin // @[Reg.scala 17:18]
      aTooSmall <= _aTooSmall_T_2; // @[Reg.scala 17:22]
    end
    if (in_fire) begin // @[Reg.scala 17:18]
      aReg <= io_src_0; // @[Reg.scala 17:22]
    end
    if (in_fire) begin // @[Reg.scala 17:18]
      dSignReg <= dSign; // @[Reg.scala 17:22]
    end
    if (in_fire) begin // @[Reg.scala 17:18]
      if (aSign) begin // @[SRT16Divider.scala 109:17]
        aAbsReg <= aInverter;
      end else begin
        aAbsReg <= io_src_0;
      end
    end
    if (_T_5[0]) begin // @[Reg.scala 17:18]
      aNormReg <= aNorm; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      if (dIsZero) begin // @[SRT16Divider.scala 152:24]
        quotSpecialReg <= 64'hffffffffffffffff;
      end else if (aTooSmall) begin // @[SRT16Divider.scala 153:32]
        quotSpecialReg <= 64'h0;
      end else if (dSignReg) begin // @[SRT16Divider.scala 154:34]
        quotSpecialReg <= _quotSpecial_T_2;
      end else begin
        quotSpecialReg <= aReg;
      end
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      if (dIsZero | aTooSmall) begin // @[SRT16Divider.scala 156:23]
        remSpecialReg <= aReg;
      end else begin
        remSpecialReg <= 64'h0;
      end
    end
    if (in_fire) begin // @[Reg.scala 17:18]
      rSignReg <= aSign; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T_4) begin // @[Reg.scala 17:18]
      if (_quotIterReg_T[0]) begin // @[SRT16Divider.scala 238:30]
        rSumReg <= rSumInit;
      end else if (_quotIterNext_T_1) begin // @[SRT16Divider.scala 298:18]
        rSumReg <= csa_sel_wide_1_io_out_0;
      end else begin
        rSumReg <= csa_sel_wide_2_io_out_0;
      end
    end
    if (_quotIterReg_T_4) begin // @[Reg.scala 17:18]
      if (_quotIterReg_T[0]) begin // @[SRT16Divider.scala 239:32]
        rCarryReg <= 68'h0;
      end else if (_quotIterNext_T_1) begin // @[SRT16Divider.scala 299:20]
        rCarryReg <= _rCarryIter_T_2[67:0];
      end else begin
        rCarryReg <= _rCarryIter_T_4[67:0];
      end
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      udNegReg_0 <= udNeg_0; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      udNegReg_1 <= udNeg_1; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      udNegReg_3 <= udNeg_3; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      udNegReg_4 <= udNeg_4; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      rudPmNegReg_0_0 <= rudPmNeg_0_0; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      rudPmNegReg_0_1 <= rudPmNeg_0_1; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      rudPmNegReg_0_2 <= rudPmNeg_0_2; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      rudPmNegReg_0_3 <= rudPmNeg_0_3; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      rudPmNegReg_1_0 <= rudPmNeg_1_0; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      rudPmNegReg_1_1 <= rudPmNeg_1_1; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      rudPmNegReg_1_2 <= rudPmNeg_1_2; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      rudPmNegReg_1_3 <= rudPmNeg_1_3; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      rudPmNegReg_2_0 <= rudPmNeg_2_0; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      rudPmNegReg_2_1 <= rudPmNeg_2_1; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      rudPmNegReg_2_2 <= rudPmNeg_2_2; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      rudPmNegReg_2_3 <= rudPmNeg_2_3; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      rudPmNegReg_3_0 <= rudPmNeg_3_0; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      rudPmNegReg_3_1 <= rudPmNeg_3_1; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      rudPmNegReg_3_2 <= rudPmNeg_3_2; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      rudPmNegReg_3_3 <= rudPmNeg_3_3; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      rudPmNegReg_4_0 <= rudPmNeg_4_0; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      rudPmNegReg_4_1 <= rudPmNeg_4_1; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      rudPmNegReg_4_2 <= rudPmNeg_4_2; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      rudPmNegReg_4_3 <= rudPmNeg_4_3; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      r2udPmNegReg_0_0 <= r2udPmNeg_0_0; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      r2udPmNegReg_0_1 <= r2udPmNeg_0_1; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      r2udPmNegReg_0_2 <= r2udPmNeg_0_2; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      r2udPmNegReg_0_3 <= r2udPmNeg_0_3; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      r2udPmNegReg_1_0 <= r2udPmNeg_1_0; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      r2udPmNegReg_1_1 <= r2udPmNeg_1_1; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      r2udPmNegReg_1_2 <= r2udPmNeg_1_2; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      r2udPmNegReg_1_3 <= r2udPmNeg_1_3; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      r2udPmNegReg_2_0 <= r2udPmNeg_2_0; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      r2udPmNegReg_2_1 <= r2udPmNeg_2_1; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      r2udPmNegReg_2_2 <= r2udPmNeg_2_2; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      r2udPmNegReg_2_3 <= r2udPmNeg_2_3; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      r2udPmNegReg_3_0 <= r2udPmNeg_3_0; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      r2udPmNegReg_3_1 <= r2udPmNeg_3_1; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      r2udPmNegReg_3_2 <= r2udPmNeg_3_2; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      r2udPmNegReg_3_3 <= r2udPmNeg_3_3; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      r2udPmNegReg_4_0 <= r2udPmNeg_4_0; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      r2udPmNegReg_4_1 <= r2udPmNeg_4_1; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      r2udPmNegReg_4_2 <= r2udPmNeg_4_2; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T[0]) begin // @[Reg.scala 17:18]
      r2udPmNegReg_4_3 <= r2udPmNeg_4_3; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T_5[0]) begin // @[Reg.scala 17:18]
      r <= rNext[67:3]; // @[Reg.scala 17:22]
    end
    if (_quotIterReg_T_5[0]) begin // @[Reg.scala 17:18]
      rNextPdReg <= rNextPd[67:3]; // @[Reg.scala 17:22]
    end
    if (_T_13[0]) begin // @[Reg.scala 17:18]
      if (specialReg) begin // @[SRT16Divider.scala 384:29]
        rFinal <= remSpecialReg;
      end else begin
        rFinal <= rightShifter_io_out;
      end
    end
    if (_T_13[0]) begin // @[Reg.scala 17:18]
      if (specialReg) begin // @[SRT16Divider.scala 385:29]
        qFinal <= quotSpecialReg;
      end else if (needCorr) begin // @[SRT16Divider.scala 385:61]
        qFinal <= quotM1IterReg;
      end else begin
        qFinal <= quotIterReg;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SRT16Divider.scala 81:16]
      state <= 7'h1; // @[SRT16Divider.scala 82:11]
    end else if (io_kill_r) begin // @[SRT16Divider.scala 83:52]
      state <= 7'h1; // @[SRT16Divider.scala 84:11]
    end else if (state[0] & in_fire & ~io_kill_w) begin // @[SRT16Divider.scala 85:31]
      state <= 7'h2; // @[SRT16Divider.scala 86:11]
    end else if (_T_5[0]) begin // @[SRT16Divider.scala 87:31]
      state <= 7'h4; // @[SRT16Divider.scala 88:11]
    end else if (_quotIterReg_T[0]) begin
      state <= _state_T_10;
    end else begin
      state <= _GEN_7;
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
  _RAND_0 = {1{`RANDOM}};
  state = _RAND_0[6:0];
  _RAND_1 = {2{`RANDOM}};
  quotIterReg = _RAND_1[63:0];
  _RAND_2 = {1{`RANDOM}};
  dLZCReg = _RAND_2[6:0];
  _RAND_3 = {1{`RANDOM}};
  aLZCReg = _RAND_3[6:0];
  _RAND_4 = {1{`RANDOM}};
  iterNumReg = _RAND_4[3:0];
  _RAND_5 = {1{`RANDOM}};
  qPrevReg = _RAND_5[4:0];
  _RAND_6 = {2{`RANDOM}};
  quotM1IterReg = _RAND_6[63:0];
  _RAND_7 = {1{`RANDOM}};
  quotSignReg = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  specialReg = _RAND_8[0:0];
  _RAND_9 = {2{`RANDOM}};
  dAbsReg = _RAND_9[63:0];
  _RAND_10 = {2{`RANDOM}};
  dNormReg = _RAND_10[63:0];
  _RAND_11 = {1{`RANDOM}};
  aTooSmall = _RAND_11[0:0];
  _RAND_12 = {2{`RANDOM}};
  aReg = _RAND_12[63:0];
  _RAND_13 = {1{`RANDOM}};
  dSignReg = _RAND_13[0:0];
  _RAND_14 = {2{`RANDOM}};
  aAbsReg = _RAND_14[63:0];
  _RAND_15 = {2{`RANDOM}};
  aNormReg = _RAND_15[63:0];
  _RAND_16 = {2{`RANDOM}};
  quotSpecialReg = _RAND_16[63:0];
  _RAND_17 = {2{`RANDOM}};
  remSpecialReg = _RAND_17[63:0];
  _RAND_18 = {1{`RANDOM}};
  rSignReg = _RAND_18[0:0];
  _RAND_19 = {3{`RANDOM}};
  rSumReg = _RAND_19[67:0];
  _RAND_20 = {3{`RANDOM}};
  rCarryReg = _RAND_20[67:0];
  _RAND_21 = {3{`RANDOM}};
  udNegReg_0 = _RAND_21[67:0];
  _RAND_22 = {3{`RANDOM}};
  udNegReg_1 = _RAND_22[67:0];
  _RAND_23 = {3{`RANDOM}};
  udNegReg_3 = _RAND_23[67:0];
  _RAND_24 = {3{`RANDOM}};
  udNegReg_4 = _RAND_24[67:0];
  _RAND_25 = {1{`RANDOM}};
  rudPmNegReg_0_0 = _RAND_25[9:0];
  _RAND_26 = {1{`RANDOM}};
  rudPmNegReg_0_1 = _RAND_26[9:0];
  _RAND_27 = {1{`RANDOM}};
  rudPmNegReg_0_2 = _RAND_27[9:0];
  _RAND_28 = {1{`RANDOM}};
  rudPmNegReg_0_3 = _RAND_28[9:0];
  _RAND_29 = {1{`RANDOM}};
  rudPmNegReg_1_0 = _RAND_29[9:0];
  _RAND_30 = {1{`RANDOM}};
  rudPmNegReg_1_1 = _RAND_30[9:0];
  _RAND_31 = {1{`RANDOM}};
  rudPmNegReg_1_2 = _RAND_31[9:0];
  _RAND_32 = {1{`RANDOM}};
  rudPmNegReg_1_3 = _RAND_32[9:0];
  _RAND_33 = {1{`RANDOM}};
  rudPmNegReg_2_0 = _RAND_33[9:0];
  _RAND_34 = {1{`RANDOM}};
  rudPmNegReg_2_1 = _RAND_34[9:0];
  _RAND_35 = {1{`RANDOM}};
  rudPmNegReg_2_2 = _RAND_35[9:0];
  _RAND_36 = {1{`RANDOM}};
  rudPmNegReg_2_3 = _RAND_36[9:0];
  _RAND_37 = {1{`RANDOM}};
  rudPmNegReg_3_0 = _RAND_37[9:0];
  _RAND_38 = {1{`RANDOM}};
  rudPmNegReg_3_1 = _RAND_38[9:0];
  _RAND_39 = {1{`RANDOM}};
  rudPmNegReg_3_2 = _RAND_39[9:0];
  _RAND_40 = {1{`RANDOM}};
  rudPmNegReg_3_3 = _RAND_40[9:0];
  _RAND_41 = {1{`RANDOM}};
  rudPmNegReg_4_0 = _RAND_41[9:0];
  _RAND_42 = {1{`RANDOM}};
  rudPmNegReg_4_1 = _RAND_42[9:0];
  _RAND_43 = {1{`RANDOM}};
  rudPmNegReg_4_2 = _RAND_43[9:0];
  _RAND_44 = {1{`RANDOM}};
  rudPmNegReg_4_3 = _RAND_44[9:0];
  _RAND_45 = {1{`RANDOM}};
  r2udPmNegReg_0_0 = _RAND_45[12:0];
  _RAND_46 = {1{`RANDOM}};
  r2udPmNegReg_0_1 = _RAND_46[12:0];
  _RAND_47 = {1{`RANDOM}};
  r2udPmNegReg_0_2 = _RAND_47[12:0];
  _RAND_48 = {1{`RANDOM}};
  r2udPmNegReg_0_3 = _RAND_48[12:0];
  _RAND_49 = {1{`RANDOM}};
  r2udPmNegReg_1_0 = _RAND_49[12:0];
  _RAND_50 = {1{`RANDOM}};
  r2udPmNegReg_1_1 = _RAND_50[12:0];
  _RAND_51 = {1{`RANDOM}};
  r2udPmNegReg_1_2 = _RAND_51[12:0];
  _RAND_52 = {1{`RANDOM}};
  r2udPmNegReg_1_3 = _RAND_52[12:0];
  _RAND_53 = {1{`RANDOM}};
  r2udPmNegReg_2_0 = _RAND_53[12:0];
  _RAND_54 = {1{`RANDOM}};
  r2udPmNegReg_2_1 = _RAND_54[12:0];
  _RAND_55 = {1{`RANDOM}};
  r2udPmNegReg_2_2 = _RAND_55[12:0];
  _RAND_56 = {1{`RANDOM}};
  r2udPmNegReg_2_3 = _RAND_56[12:0];
  _RAND_57 = {1{`RANDOM}};
  r2udPmNegReg_3_0 = _RAND_57[12:0];
  _RAND_58 = {1{`RANDOM}};
  r2udPmNegReg_3_1 = _RAND_58[12:0];
  _RAND_59 = {1{`RANDOM}};
  r2udPmNegReg_3_2 = _RAND_59[12:0];
  _RAND_60 = {1{`RANDOM}};
  r2udPmNegReg_3_3 = _RAND_60[12:0];
  _RAND_61 = {1{`RANDOM}};
  r2udPmNegReg_4_0 = _RAND_61[12:0];
  _RAND_62 = {1{`RANDOM}};
  r2udPmNegReg_4_1 = _RAND_62[12:0];
  _RAND_63 = {1{`RANDOM}};
  r2udPmNegReg_4_2 = _RAND_63[12:0];
  _RAND_64 = {1{`RANDOM}};
  r2udPmNegReg_4_3 = _RAND_64[12:0];
  _RAND_65 = {3{`RANDOM}};
  r = _RAND_65[64:0];
  _RAND_66 = {3{`RANDOM}};
  rNextPdReg = _RAND_66[64:0];
  _RAND_67 = {2{`RANDOM}};
  rFinal = _RAND_67[63:0];
  _RAND_68 = {2{`RANDOM}};
  qFinal = _RAND_68[63:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    state = 7'h1;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

