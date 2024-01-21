module PredChecker(
  input         clock,
  input         io_in_ftqOffset_valid,
  input  [2:0]  io_in_ftqOffset_bits,
  input  [63:0] io_in_jumpOffset_0,
  input  [63:0] io_in_jumpOffset_1,
  input  [63:0] io_in_jumpOffset_2,
  input  [63:0] io_in_jumpOffset_3,
  input  [63:0] io_in_jumpOffset_4,
  input  [63:0] io_in_jumpOffset_5,
  input  [63:0] io_in_jumpOffset_6,
  input  [63:0] io_in_jumpOffset_7,
  input  [38:0] io_in_target,
  input         io_in_instrRange_0,
  input         io_in_instrRange_1,
  input         io_in_instrRange_2,
  input         io_in_instrRange_3,
  input         io_in_instrRange_4,
  input         io_in_instrRange_5,
  input         io_in_instrRange_6,
  input         io_in_instrRange_7,
  input         io_in_instrValid_0,
  input         io_in_instrValid_1,
  input         io_in_instrValid_2,
  input         io_in_instrValid_3,
  input         io_in_instrValid_4,
  input         io_in_instrValid_5,
  input         io_in_instrValid_6,
  input         io_in_instrValid_7,
  input         io_in_pds_0_isRVC,
  input  [1:0]  io_in_pds_0_brType,
  input         io_in_pds_0_isRet,
  input         io_in_pds_1_isRVC,
  input  [1:0]  io_in_pds_1_brType,
  input         io_in_pds_1_isRet,
  input         io_in_pds_2_isRVC,
  input  [1:0]  io_in_pds_2_brType,
  input         io_in_pds_2_isRet,
  input         io_in_pds_3_isRVC,
  input  [1:0]  io_in_pds_3_brType,
  input         io_in_pds_3_isRet,
  input         io_in_pds_4_isRVC,
  input  [1:0]  io_in_pds_4_brType,
  input         io_in_pds_4_isRet,
  input         io_in_pds_5_isRVC,
  input  [1:0]  io_in_pds_5_brType,
  input         io_in_pds_5_isRet,
  input         io_in_pds_6_isRVC,
  input  [1:0]  io_in_pds_6_brType,
  input         io_in_pds_6_isRet,
  input         io_in_pds_7_isRVC,
  input  [1:0]  io_in_pds_7_brType,
  input         io_in_pds_7_isRet,
  input  [38:0] io_in_pc_0,
  input  [38:0] io_in_pc_1,
  input  [38:0] io_in_pc_2,
  input  [38:0] io_in_pc_3,
  input  [38:0] io_in_pc_4,
  input  [38:0] io_in_pc_5,
  input  [38:0] io_in_pc_6,
  input  [38:0] io_in_pc_7,
  output        io_out_stage1Out_fixedRange_0,
  output        io_out_stage1Out_fixedRange_1,
  output        io_out_stage1Out_fixedRange_2,
  output        io_out_stage1Out_fixedRange_3,
  output        io_out_stage1Out_fixedRange_4,
  output        io_out_stage1Out_fixedRange_5,
  output        io_out_stage1Out_fixedRange_6,
  output        io_out_stage1Out_fixedRange_7,
  output        io_out_stage1Out_fixedTaken_0,
  output        io_out_stage1Out_fixedTaken_1,
  output        io_out_stage1Out_fixedTaken_2,
  output        io_out_stage1Out_fixedTaken_3,
  output        io_out_stage1Out_fixedTaken_4,
  output        io_out_stage1Out_fixedTaken_5,
  output        io_out_stage1Out_fixedTaken_6,
  output        io_out_stage1Out_fixedTaken_7,
  output [38:0] io_out_stage2Out_fixedTarget_0,
  output [38:0] io_out_stage2Out_fixedTarget_1,
  output [38:0] io_out_stage2Out_fixedTarget_2,
  output [38:0] io_out_stage2Out_fixedTarget_3,
  output [38:0] io_out_stage2Out_fixedTarget_4,
  output [38:0] io_out_stage2Out_fixedTarget_5,
  output [38:0] io_out_stage2Out_fixedTarget_6,
  output [38:0] io_out_stage2Out_fixedTarget_7,
  output [38:0] io_out_stage2Out_jalTarget_0,
  output [38:0] io_out_stage2Out_jalTarget_1,
  output [38:0] io_out_stage2Out_jalTarget_2,
  output [38:0] io_out_stage2Out_jalTarget_3,
  output [38:0] io_out_stage2Out_jalTarget_4,
  output [38:0] io_out_stage2Out_jalTarget_5,
  output [38:0] io_out_stage2Out_jalTarget_6,
  output [38:0] io_out_stage2Out_jalTarget_7,
  output        io_out_stage2Out_fixedMissPred_0,
  output        io_out_stage2Out_fixedMissPred_1,
  output        io_out_stage2Out_fixedMissPred_2,
  output        io_out_stage2Out_fixedMissPred_3,
  output        io_out_stage2Out_fixedMissPred_4,
  output        io_out_stage2Out_fixedMissPred_5,
  output        io_out_stage2Out_fixedMissPred_6,
  output        io_out_stage2Out_fixedMissPred_7
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [63:0] _RAND_11;
  reg [63:0] _RAND_12;
  reg [63:0] _RAND_13;
  reg [63:0] _RAND_14;
  reg [63:0] _RAND_15;
  reg [63:0] _RAND_16;
  reg [63:0] _RAND_17;
  reg [63:0] _RAND_18;
  reg [63:0] _RAND_19;
  reg [63:0] _RAND_20;
  reg [63:0] _RAND_21;
  reg [63:0] _RAND_22;
  reg [63:0] _RAND_23;
  reg [63:0] _RAND_24;
  reg [63:0] _RAND_25;
  reg [63:0] _RAND_26;
  reg [63:0] _RAND_27;
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
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
`endif // RANDOMIZE_REG_INIT
  wire  _T = io_in_pds_0_brType == 2'h2; // @[PreDecode.scala 77:24]
  wire  _T_5 = ~io_in_ftqOffset_valid; // @[PreDecode.scala 233:148]
  wire  _T_6 = io_in_ftqOffset_bits > 3'h0 & io_in_ftqOffset_valid | ~io_in_ftqOffset_valid; // @[PreDecode.scala 233:145]
  wire  jalFaultVec_0 = _T & io_in_instrRange_0 & io_in_instrValid_0 & (io_in_ftqOffset_bits > 3'h0 &
    io_in_ftqOffset_valid | ~io_in_ftqOffset_valid); // @[PreDecode.scala 233:113]
  wire  _T_8 = io_in_pds_1_brType == 2'h2; // @[PreDecode.scala 77:24]
  wire  _T_14 = io_in_ftqOffset_bits > 3'h1 & io_in_ftqOffset_valid | ~io_in_ftqOffset_valid; // @[PreDecode.scala 233:145]
  wire  jalFaultVec_1 = _T_8 & io_in_instrRange_1 & io_in_instrValid_1 & (io_in_ftqOffset_bits > 3'h1 &
    io_in_ftqOffset_valid | ~io_in_ftqOffset_valid); // @[PreDecode.scala 233:113]
  wire  _T_16 = io_in_pds_2_brType == 2'h2; // @[PreDecode.scala 77:24]
  wire  _T_22 = io_in_ftqOffset_bits > 3'h2 & io_in_ftqOffset_valid | ~io_in_ftqOffset_valid; // @[PreDecode.scala 233:145]
  wire  jalFaultVec_2 = _T_16 & io_in_instrRange_2 & io_in_instrValid_2 & (io_in_ftqOffset_bits > 3'h2 &
    io_in_ftqOffset_valid | ~io_in_ftqOffset_valid); // @[PreDecode.scala 233:113]
  wire  _T_24 = io_in_pds_3_brType == 2'h2; // @[PreDecode.scala 77:24]
  wire  _T_30 = io_in_ftqOffset_bits > 3'h3 & io_in_ftqOffset_valid | ~io_in_ftqOffset_valid; // @[PreDecode.scala 233:145]
  wire  jalFaultVec_3 = _T_24 & io_in_instrRange_3 & io_in_instrValid_3 & (io_in_ftqOffset_bits > 3'h3 &
    io_in_ftqOffset_valid | ~io_in_ftqOffset_valid); // @[PreDecode.scala 233:113]
  wire  _T_32 = io_in_pds_4_brType == 2'h2; // @[PreDecode.scala 77:24]
  wire  _T_38 = io_in_ftqOffset_bits > 3'h4 & io_in_ftqOffset_valid | ~io_in_ftqOffset_valid; // @[PreDecode.scala 233:145]
  wire  jalFaultVec_4 = _T_32 & io_in_instrRange_4 & io_in_instrValid_4 & (io_in_ftqOffset_bits > 3'h4 &
    io_in_ftqOffset_valid | ~io_in_ftqOffset_valid); // @[PreDecode.scala 233:113]
  wire  _T_40 = io_in_pds_5_brType == 2'h2; // @[PreDecode.scala 77:24]
  wire  _T_46 = io_in_ftqOffset_bits > 3'h5 & io_in_ftqOffset_valid | ~io_in_ftqOffset_valid; // @[PreDecode.scala 233:145]
  wire  jalFaultVec_5 = _T_40 & io_in_instrRange_5 & io_in_instrValid_5 & (io_in_ftqOffset_bits > 3'h5 &
    io_in_ftqOffset_valid | ~io_in_ftqOffset_valid); // @[PreDecode.scala 233:113]
  wire  _T_48 = io_in_pds_6_brType == 2'h2; // @[PreDecode.scala 77:24]
  wire  _T_54 = io_in_ftqOffset_bits > 3'h6 & io_in_ftqOffset_valid | ~io_in_ftqOffset_valid; // @[PreDecode.scala 233:145]
  wire  jalFaultVec_6 = _T_48 & io_in_instrRange_6 & io_in_instrValid_6 & (io_in_ftqOffset_bits > 3'h6 &
    io_in_ftqOffset_valid | ~io_in_ftqOffset_valid); // @[PreDecode.scala 233:113]
  wire  _T_56 = io_in_pds_7_brType == 2'h2; // @[PreDecode.scala 77:24]
  wire  jalFaultVec_7 = _T_56 & io_in_instrRange_7 & io_in_instrValid_7 & ~io_in_ftqOffset_valid; // @[PreDecode.scala 233:113]
  wire  retFaultVec_0 = io_in_pds_0_isRet & io_in_instrRange_0 & io_in_instrValid_0 & _T_6; // @[PreDecode.scala 234:113]
  wire  retFaultVec_1 = io_in_pds_1_isRet & io_in_instrRange_1 & io_in_instrValid_1 & _T_14; // @[PreDecode.scala 234:113]
  wire  retFaultVec_2 = io_in_pds_2_isRet & io_in_instrRange_2 & io_in_instrValid_2 & _T_22; // @[PreDecode.scala 234:113]
  wire  retFaultVec_3 = io_in_pds_3_isRet & io_in_instrRange_3 & io_in_instrValid_3 & _T_30; // @[PreDecode.scala 234:113]
  wire  retFaultVec_4 = io_in_pds_4_isRet & io_in_instrRange_4 & io_in_instrValid_4 & _T_38; // @[PreDecode.scala 234:113]
  wire  retFaultVec_5 = io_in_pds_5_isRet & io_in_instrRange_5 & io_in_instrValid_5 & _T_46; // @[PreDecode.scala 234:113]
  wire  retFaultVec_6 = io_in_pds_6_isRet & io_in_instrRange_6 & io_in_instrValid_6 & _T_54; // @[PreDecode.scala 234:113]
  wire  retFaultVec_7 = io_in_pds_7_isRet & io_in_instrRange_7 & io_in_instrValid_7 & _T_5; // @[PreDecode.scala 234:113]
  wire  remaskFault_0 = jalFaultVec_0 | retFaultVec_0; // @[PreDecode.scala 235:81]
  wire  remaskFault_1 = jalFaultVec_1 | retFaultVec_1; // @[PreDecode.scala 235:81]
  wire  remaskFault_2 = jalFaultVec_2 | retFaultVec_2; // @[PreDecode.scala 235:81]
  wire  remaskFault_3 = jalFaultVec_3 | retFaultVec_3; // @[PreDecode.scala 235:81]
  wire  remaskFault_4 = jalFaultVec_4 | retFaultVec_4; // @[PreDecode.scala 235:81]
  wire  remaskFault_5 = jalFaultVec_5 | retFaultVec_5; // @[PreDecode.scala 235:81]
  wire  remaskFault_6 = jalFaultVec_6 | retFaultVec_6; // @[PreDecode.scala 235:81]
  wire  remaskFault_7 = jalFaultVec_7 | retFaultVec_7; // @[PreDecode.scala 235:81]
  wire [7:0] _remaskIdx_T = {remaskFault_7,remaskFault_6,remaskFault_5,remaskFault_4,remaskFault_3,remaskFault_2,
    remaskFault_1,remaskFault_0}; // @[PreDecode.scala 236:62]
  wire  _remaskIdx_T_10 = _remaskIdx_T[0] ? 1'h0 : 1'h1; // @[ParallelMux.scala 90:77]
  wire [1:0] _remaskIdx_T_12 = _remaskIdx_T[2] ? 2'h2 : 2'h3; // @[ParallelMux.scala 90:77]
  wire [1:0] _remaskIdx_T_14 = _remaskIdx_T[0] | _remaskIdx_T[1] ? {{1'd0}, _remaskIdx_T_10} : _remaskIdx_T_12; // @[ParallelMux.scala 90:77]
  wire [2:0] _remaskIdx_T_16 = _remaskIdx_T[4] ? 3'h4 : 3'h5; // @[ParallelMux.scala 90:77]
  wire [2:0] _remaskIdx_T_18 = _remaskIdx_T[6] ? 3'h6 : 3'h7; // @[ParallelMux.scala 90:77]
  wire [2:0] _remaskIdx_T_20 = _remaskIdx_T[4] | _remaskIdx_T[5] ? _remaskIdx_T_16 : _remaskIdx_T_18; // @[ParallelMux.scala 90:77]
  wire [2:0] remaskIdx = _remaskIdx_T[0] | _remaskIdx_T[1] | (_remaskIdx_T[2] | _remaskIdx_T[3]) ? {{1'd0},
    _remaskIdx_T_14} : _remaskIdx_T_20; // @[ParallelMux.scala 90:77]
  wire  needRemask = remaskFault_0 | remaskFault_1 | (remaskFault_2 | remaskFault_3) | (remaskFault_4 | remaskFault_5 |
    (remaskFault_6 | remaskFault_7)); // @[ParallelMux.scala 36:53]
  wire [7:0] _fixedRange_T = {io_in_instrRange_7,io_in_instrRange_6,io_in_instrRange_5,io_in_instrRange_4,
    io_in_instrRange_3,io_in_instrRange_2,io_in_instrRange_1,io_in_instrRange_0}; // @[PreDecode.scala 238:37]
  wire  _fixedRange_T_1 = ~needRemask; // @[PreDecode.scala 238:66]
  wire [7:0] _fixedRange_T_3 = _fixedRange_T_1 ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [2:0] _fixedRange_T_5 = ~remaskIdx; // @[PreDecode.scala 238:113]
  wire [7:0] _fixedRange_T_6 = 8'hff >> _fixedRange_T_5; // @[PreDecode.scala 238:110]
  wire [7:0] _fixedRange_T_7 = _fixedRange_T_3 | _fixedRange_T_6; // @[PreDecode.scala 238:79]
  wire [7:0] fixedRange = _fixedRange_T & _fixedRange_T_7; // @[PreDecode.scala 238:44]
  wire  _T_134 = io_in_pds_0_brType == 2'h0; // @[PreDecode.scala 79:24]
  wire  _T_145 = io_in_pds_1_brType == 2'h0; // @[PreDecode.scala 79:24]
  wire  _T_156 = io_in_pds_2_brType == 2'h0; // @[PreDecode.scala 79:24]
  wire  _T_167 = io_in_pds_3_brType == 2'h0; // @[PreDecode.scala 79:24]
  wire  _T_178 = io_in_pds_4_brType == 2'h0; // @[PreDecode.scala 79:24]
  wire  _T_189 = io_in_pds_5_brType == 2'h0; // @[PreDecode.scala 79:24]
  wire  _T_200 = io_in_pds_6_brType == 2'h0; // @[PreDecode.scala 79:24]
  wire  _T_211 = io_in_pds_7_brType == 2'h0; // @[PreDecode.scala 79:24]
  wire  _T_218 = 3'h0 == io_in_ftqOffset_bits; // @[PreDecode.scala 245:101]
  wire  _T_225 = 3'h1 == io_in_ftqOffset_bits; // @[PreDecode.scala 245:101]
  wire  _T_232 = 3'h2 == io_in_ftqOffset_bits; // @[PreDecode.scala 245:101]
  wire  _T_239 = 3'h3 == io_in_ftqOffset_bits; // @[PreDecode.scala 245:101]
  wire  _T_246 = 3'h4 == io_in_ftqOffset_bits; // @[PreDecode.scala 245:101]
  wire  _T_253 = 3'h5 == io_in_ftqOffset_bits; // @[PreDecode.scala 245:101]
  wire  _T_260 = 3'h6 == io_in_ftqOffset_bits; // @[PreDecode.scala 245:101]
  wire  _T_267 = 3'h7 == io_in_ftqOffset_bits; // @[PreDecode.scala 245:101]
  wire  _T_273 = ~io_in_instrValid_0; // @[PreDecode.scala 246:80]
  wire  _T_279 = ~io_in_instrValid_1; // @[PreDecode.scala 246:80]
  wire  _T_285 = ~io_in_instrValid_2; // @[PreDecode.scala 246:80]
  wire  _T_291 = ~io_in_instrValid_3; // @[PreDecode.scala 246:80]
  wire  _T_297 = ~io_in_instrValid_4; // @[PreDecode.scala 246:80]
  wire  _T_303 = ~io_in_instrValid_5; // @[PreDecode.scala 246:80]
  wire  _T_309 = ~io_in_instrValid_6; // @[PreDecode.scala 246:80]
  wire  _T_315 = ~io_in_instrValid_7; // @[PreDecode.scala 246:80]
  wire [63:0] _GEN_0 = {{25'd0}, io_in_pc_0}; // @[PreDecode.scala 248:80]
  wire [63:0] _jumpTargets_T_1 = _GEN_0 + io_in_jumpOffset_0; // @[PreDecode.scala 248:80]
  wire [63:0] _GEN_1 = {{25'd0}, io_in_pc_1}; // @[PreDecode.scala 248:80]
  wire [63:0] _jumpTargets_T_3 = _GEN_1 + io_in_jumpOffset_1; // @[PreDecode.scala 248:80]
  wire [63:0] _GEN_2 = {{25'd0}, io_in_pc_2}; // @[PreDecode.scala 248:80]
  wire [63:0] _jumpTargets_T_5 = _GEN_2 + io_in_jumpOffset_2; // @[PreDecode.scala 248:80]
  wire [63:0] _GEN_3 = {{25'd0}, io_in_pc_3}; // @[PreDecode.scala 248:80]
  wire [63:0] _jumpTargets_T_7 = _GEN_3 + io_in_jumpOffset_3; // @[PreDecode.scala 248:80]
  wire [63:0] _GEN_4 = {{25'd0}, io_in_pc_4}; // @[PreDecode.scala 248:80]
  wire [63:0] _jumpTargets_T_9 = _GEN_4 + io_in_jumpOffset_4; // @[PreDecode.scala 248:80]
  wire [63:0] _GEN_5 = {{25'd0}, io_in_pc_5}; // @[PreDecode.scala 248:80]
  wire [63:0] _jumpTargets_T_11 = _GEN_5 + io_in_jumpOffset_5; // @[PreDecode.scala 248:80]
  wire [63:0] _GEN_6 = {{25'd0}, io_in_pc_6}; // @[PreDecode.scala 248:80]
  wire [63:0] _jumpTargets_T_13 = _GEN_6 + io_in_jumpOffset_6; // @[PreDecode.scala 248:80]
  wire [63:0] _GEN_7 = {{25'd0}, io_in_pc_7}; // @[PreDecode.scala 248:80]
  wire [63:0] _jumpTargets_T_15 = _GEN_7 + io_in_jumpOffset_7; // @[PreDecode.scala 248:80]
  wire [2:0] _seqTargets_T_2 = io_in_pds_0_isRVC | _T_273 ? 3'h2 : 3'h4; // @[PreDecode.scala 249:71]
  wire [38:0] _GEN_8 = {{36'd0}, _seqTargets_T_2}; // @[PreDecode.scala 249:66]
  wire [2:0] _seqTargets_T_7 = io_in_pds_1_isRVC | _T_279 ? 3'h2 : 3'h4; // @[PreDecode.scala 249:71]
  wire [38:0] _GEN_9 = {{36'd0}, _seqTargets_T_7}; // @[PreDecode.scala 249:66]
  wire [2:0] _seqTargets_T_12 = io_in_pds_2_isRVC | _T_285 ? 3'h2 : 3'h4; // @[PreDecode.scala 249:71]
  wire [38:0] _GEN_10 = {{36'd0}, _seqTargets_T_12}; // @[PreDecode.scala 249:66]
  wire [2:0] _seqTargets_T_17 = io_in_pds_3_isRVC | _T_291 ? 3'h2 : 3'h4; // @[PreDecode.scala 249:71]
  wire [38:0] _GEN_11 = {{36'd0}, _seqTargets_T_17}; // @[PreDecode.scala 249:66]
  wire [2:0] _seqTargets_T_22 = io_in_pds_4_isRVC | _T_297 ? 3'h2 : 3'h4; // @[PreDecode.scala 249:71]
  wire [38:0] _GEN_12 = {{36'd0}, _seqTargets_T_22}; // @[PreDecode.scala 249:66]
  wire [2:0] _seqTargets_T_27 = io_in_pds_5_isRVC | _T_303 ? 3'h2 : 3'h4; // @[PreDecode.scala 249:71]
  wire [38:0] _GEN_13 = {{36'd0}, _seqTargets_T_27}; // @[PreDecode.scala 249:66]
  wire [2:0] _seqTargets_T_32 = io_in_pds_6_isRVC | _T_309 ? 3'h2 : 3'h4; // @[PreDecode.scala 249:71]
  wire [38:0] _GEN_14 = {{36'd0}, _seqTargets_T_32}; // @[PreDecode.scala 249:66]
  wire [2:0] _seqTargets_T_37 = io_in_pds_7_isRVC | _T_315 ? 3'h2 : 3'h4; // @[PreDecode.scala 249:71]
  wire [38:0] _GEN_15 = {{36'd0}, _seqTargets_T_37}; // @[PreDecode.scala 249:66]
  reg [7:0] fixedRangeNext; // @[PreDecode.scala 253:31]
  reg  instrValidNext_0; // @[PreDecode.scala 254:31]
  reg  instrValidNext_1; // @[PreDecode.scala 254:31]
  reg  instrValidNext_2; // @[PreDecode.scala 254:31]
  reg  instrValidNext_3; // @[PreDecode.scala 254:31]
  reg  instrValidNext_4; // @[PreDecode.scala 254:31]
  reg  instrValidNext_5; // @[PreDecode.scala 254:31]
  reg  instrValidNext_6; // @[PreDecode.scala 254:31]
  reg  instrValidNext_7; // @[PreDecode.scala 254:31]
  reg [2:0] takenIdxNext; // @[PreDecode.scala 255:31]
  reg  predTakenNext; // @[PreDecode.scala 256:31]
  reg [38:0] predTargetNext; // @[PreDecode.scala 257:31]
  reg [38:0] jumpTargetsNext_0; // @[PreDecode.scala 258:32]
  reg [38:0] jumpTargetsNext_1; // @[PreDecode.scala 258:32]
  reg [38:0] jumpTargetsNext_2; // @[PreDecode.scala 258:32]
  reg [38:0] jumpTargetsNext_3; // @[PreDecode.scala 258:32]
  reg [38:0] jumpTargetsNext_4; // @[PreDecode.scala 258:32]
  reg [38:0] jumpTargetsNext_5; // @[PreDecode.scala 258:32]
  reg [38:0] jumpTargetsNext_6; // @[PreDecode.scala 258:32]
  reg [38:0] jumpTargetsNext_7; // @[PreDecode.scala 258:32]
  reg [38:0] seqTargetsNext_0; // @[PreDecode.scala 259:31]
  reg [38:0] seqTargetsNext_1; // @[PreDecode.scala 259:31]
  reg [38:0] seqTargetsNext_2; // @[PreDecode.scala 259:31]
  reg [38:0] seqTargetsNext_3; // @[PreDecode.scala 259:31]
  reg [38:0] seqTargetsNext_4; // @[PreDecode.scala 259:31]
  reg [38:0] seqTargetsNext_5; // @[PreDecode.scala 259:31]
  reg [38:0] seqTargetsNext_6; // @[PreDecode.scala 259:31]
  reg [38:0] seqTargetsNext_7; // @[PreDecode.scala 259:31]
  reg [1:0] pdsNext_0_brType; // @[PreDecode.scala 260:24]
  reg [1:0] pdsNext_1_brType; // @[PreDecode.scala 260:24]
  reg [1:0] pdsNext_2_brType; // @[PreDecode.scala 260:24]
  reg [1:0] pdsNext_3_brType; // @[PreDecode.scala 260:24]
  reg [1:0] pdsNext_4_brType; // @[PreDecode.scala 260:24]
  reg [1:0] pdsNext_5_brType; // @[PreDecode.scala 260:24]
  reg [1:0] pdsNext_6_brType; // @[PreDecode.scala 260:24]
  reg [1:0] pdsNext_7_brType; // @[PreDecode.scala 260:24]
  reg  jalFaultVecNext_0; // @[PreDecode.scala 261:32]
  reg  jalFaultVecNext_1; // @[PreDecode.scala 261:32]
  reg  jalFaultVecNext_2; // @[PreDecode.scala 261:32]
  reg  jalFaultVecNext_3; // @[PreDecode.scala 261:32]
  reg  jalFaultVecNext_4; // @[PreDecode.scala 261:32]
  reg  jalFaultVecNext_5; // @[PreDecode.scala 261:32]
  reg  jalFaultVecNext_6; // @[PreDecode.scala 261:32]
  reg  jalFaultVecNext_7; // @[PreDecode.scala 261:32]
  reg  retFaultVecNext_0; // @[PreDecode.scala 262:32]
  reg  retFaultVecNext_1; // @[PreDecode.scala 262:32]
  reg  retFaultVecNext_2; // @[PreDecode.scala 262:32]
  reg  retFaultVecNext_3; // @[PreDecode.scala 262:32]
  reg  retFaultVecNext_4; // @[PreDecode.scala 262:32]
  reg  retFaultVecNext_5; // @[PreDecode.scala 262:32]
  reg  retFaultVecNext_6; // @[PreDecode.scala 262:32]
  reg  retFaultVecNext_7; // @[PreDecode.scala 262:32]
  reg  notCFITakenNext_0; // @[PreDecode.scala 263:32]
  reg  notCFITakenNext_1; // @[PreDecode.scala 263:32]
  reg  notCFITakenNext_2; // @[PreDecode.scala 263:32]
  reg  notCFITakenNext_3; // @[PreDecode.scala 263:32]
  reg  notCFITakenNext_4; // @[PreDecode.scala 263:32]
  reg  notCFITakenNext_5; // @[PreDecode.scala 263:32]
  reg  notCFITakenNext_6; // @[PreDecode.scala 263:32]
  reg  notCFITakenNext_7; // @[PreDecode.scala 263:32]
  reg  invalidTakenNext_0; // @[PreDecode.scala 264:33]
  reg  invalidTakenNext_1; // @[PreDecode.scala 264:33]
  reg  invalidTakenNext_2; // @[PreDecode.scala 264:33]
  reg  invalidTakenNext_3; // @[PreDecode.scala 264:33]
  reg  invalidTakenNext_4; // @[PreDecode.scala 264:33]
  reg  invalidTakenNext_5; // @[PreDecode.scala 264:33]
  reg  invalidTakenNext_6; // @[PreDecode.scala 264:33]
  reg  invalidTakenNext_7; // @[PreDecode.scala 264:33]
  wire  _T_322 = pdsNext_0_brType == 2'h2; // @[PreDecode.scala 77:24]
  wire  _T_323 = pdsNext_0_brType == 2'h1; // @[PreDecode.scala 76:24]
  wire  targetFault_0 = fixedRangeNext[0] & instrValidNext_0 & (_T_322 | _T_323) & takenIdxNext == 3'h0 & predTakenNext
     & predTargetNext != jumpTargetsNext_0; // @[PreDecode.scala 266:176]
  wire  _T_333 = pdsNext_1_brType == 2'h2; // @[PreDecode.scala 77:24]
  wire  _T_334 = pdsNext_1_brType == 2'h1; // @[PreDecode.scala 76:24]
  wire  targetFault_1 = fixedRangeNext[1] & instrValidNext_1 & (_T_333 | _T_334) & takenIdxNext == 3'h1 & predTakenNext
     & predTargetNext != jumpTargetsNext_1; // @[PreDecode.scala 266:176]
  wire  _T_344 = pdsNext_2_brType == 2'h2; // @[PreDecode.scala 77:24]
  wire  _T_345 = pdsNext_2_brType == 2'h1; // @[PreDecode.scala 76:24]
  wire  targetFault_2 = fixedRangeNext[2] & instrValidNext_2 & (_T_344 | _T_345) & takenIdxNext == 3'h2 & predTakenNext
     & predTargetNext != jumpTargetsNext_2; // @[PreDecode.scala 266:176]
  wire  _T_355 = pdsNext_3_brType == 2'h2; // @[PreDecode.scala 77:24]
  wire  _T_356 = pdsNext_3_brType == 2'h1; // @[PreDecode.scala 76:24]
  wire  targetFault_3 = fixedRangeNext[3] & instrValidNext_3 & (_T_355 | _T_356) & takenIdxNext == 3'h3 & predTakenNext
     & predTargetNext != jumpTargetsNext_3; // @[PreDecode.scala 266:176]
  wire  _T_366 = pdsNext_4_brType == 2'h2; // @[PreDecode.scala 77:24]
  wire  _T_367 = pdsNext_4_brType == 2'h1; // @[PreDecode.scala 76:24]
  wire  targetFault_4 = fixedRangeNext[4] & instrValidNext_4 & (_T_366 | _T_367) & takenIdxNext == 3'h4 & predTakenNext
     & predTargetNext != jumpTargetsNext_4; // @[PreDecode.scala 266:176]
  wire  _T_377 = pdsNext_5_brType == 2'h2; // @[PreDecode.scala 77:24]
  wire  _T_378 = pdsNext_5_brType == 2'h1; // @[PreDecode.scala 76:24]
  wire  targetFault_5 = fixedRangeNext[5] & instrValidNext_5 & (_T_377 | _T_378) & takenIdxNext == 3'h5 & predTakenNext
     & predTargetNext != jumpTargetsNext_5; // @[PreDecode.scala 266:176]
  wire  _T_388 = pdsNext_6_brType == 2'h2; // @[PreDecode.scala 77:24]
  wire  _T_389 = pdsNext_6_brType == 2'h1; // @[PreDecode.scala 76:24]
  wire  targetFault_6 = fixedRangeNext[6] & instrValidNext_6 & (_T_388 | _T_389) & takenIdxNext == 3'h6 & predTakenNext
     & predTargetNext != jumpTargetsNext_6; // @[PreDecode.scala 266:176]
  wire  _T_399 = pdsNext_7_brType == 2'h2; // @[PreDecode.scala 77:24]
  wire  _T_400 = pdsNext_7_brType == 2'h1; // @[PreDecode.scala 76:24]
  wire  targetFault_7 = fixedRangeNext[7] & instrValidNext_7 & (_T_399 | _T_400) & takenIdxNext == 3'h7 & predTakenNext
     & predTargetNext != jumpTargetsNext_7; // @[PreDecode.scala 266:176]
  assign io_out_stage1Out_fixedRange_0 = fixedRange[0]; // @[PreDecode.scala 240:53]
  assign io_out_stage1Out_fixedRange_1 = fixedRange[1]; // @[PreDecode.scala 240:53]
  assign io_out_stage1Out_fixedRange_2 = fixedRange[2]; // @[PreDecode.scala 240:53]
  assign io_out_stage1Out_fixedRange_3 = fixedRange[3]; // @[PreDecode.scala 240:53]
  assign io_out_stage1Out_fixedRange_4 = fixedRange[4]; // @[PreDecode.scala 240:53]
  assign io_out_stage1Out_fixedRange_5 = fixedRange[5]; // @[PreDecode.scala 240:53]
  assign io_out_stage1Out_fixedRange_6 = fixedRange[6]; // @[PreDecode.scala 240:53]
  assign io_out_stage1Out_fixedRange_7 = fixedRange[7]; // @[PreDecode.scala 240:53]
  assign io_out_stage1Out_fixedTaken_0 = io_in_instrValid_0 & fixedRange[0] & (io_in_pds_0_isRet | _T |
    io_in_ftqOffset_bits == 3'h0 & io_in_ftqOffset_valid & ~_T_134); // @[PreDecode.scala 242:110]
  assign io_out_stage1Out_fixedTaken_1 = io_in_instrValid_1 & fixedRange[1] & (io_in_pds_1_isRet | _T_8 |
    io_in_ftqOffset_bits == 3'h1 & io_in_ftqOffset_valid & ~_T_145); // @[PreDecode.scala 242:110]
  assign io_out_stage1Out_fixedTaken_2 = io_in_instrValid_2 & fixedRange[2] & (io_in_pds_2_isRet | _T_16 |
    io_in_ftqOffset_bits == 3'h2 & io_in_ftqOffset_valid & ~_T_156); // @[PreDecode.scala 242:110]
  assign io_out_stage1Out_fixedTaken_3 = io_in_instrValid_3 & fixedRange[3] & (io_in_pds_3_isRet | _T_24 |
    io_in_ftqOffset_bits == 3'h3 & io_in_ftqOffset_valid & ~_T_167); // @[PreDecode.scala 242:110]
  assign io_out_stage1Out_fixedTaken_4 = io_in_instrValid_4 & fixedRange[4] & (io_in_pds_4_isRet | _T_32 |
    io_in_ftqOffset_bits == 3'h4 & io_in_ftqOffset_valid & ~_T_178); // @[PreDecode.scala 242:110]
  assign io_out_stage1Out_fixedTaken_5 = io_in_instrValid_5 & fixedRange[5] & (io_in_pds_5_isRet | _T_40 |
    io_in_ftqOffset_bits == 3'h5 & io_in_ftqOffset_valid & ~_T_189); // @[PreDecode.scala 242:110]
  assign io_out_stage1Out_fixedTaken_6 = io_in_instrValid_6 & fixedRange[6] & (io_in_pds_6_isRet | _T_48 |
    io_in_ftqOffset_bits == 3'h6 & io_in_ftqOffset_valid & ~_T_200); // @[PreDecode.scala 242:110]
  assign io_out_stage1Out_fixedTaken_7 = io_in_instrValid_7 & fixedRange[7] & (io_in_pds_7_isRet | _T_56 |
    io_in_ftqOffset_bits == 3'h7 & io_in_ftqOffset_valid & ~_T_211); // @[PreDecode.scala 242:110]
  assign io_out_stage2Out_fixedTarget_0 = jalFaultVecNext_0 | targetFault_0 ? jumpTargetsNext_0 : seqTargetsNext_0; // @[PreDecode.scala 276:81]
  assign io_out_stage2Out_fixedTarget_1 = jalFaultVecNext_1 | targetFault_1 ? jumpTargetsNext_1 : seqTargetsNext_1; // @[PreDecode.scala 276:81]
  assign io_out_stage2Out_fixedTarget_2 = jalFaultVecNext_2 | targetFault_2 ? jumpTargetsNext_2 : seqTargetsNext_2; // @[PreDecode.scala 276:81]
  assign io_out_stage2Out_fixedTarget_3 = jalFaultVecNext_3 | targetFault_3 ? jumpTargetsNext_3 : seqTargetsNext_3; // @[PreDecode.scala 276:81]
  assign io_out_stage2Out_fixedTarget_4 = jalFaultVecNext_4 | targetFault_4 ? jumpTargetsNext_4 : seqTargetsNext_4; // @[PreDecode.scala 276:81]
  assign io_out_stage2Out_fixedTarget_5 = jalFaultVecNext_5 | targetFault_5 ? jumpTargetsNext_5 : seqTargetsNext_5; // @[PreDecode.scala 276:81]
  assign io_out_stage2Out_fixedTarget_6 = jalFaultVecNext_6 | targetFault_6 ? jumpTargetsNext_6 : seqTargetsNext_6; // @[PreDecode.scala 276:81]
  assign io_out_stage2Out_fixedTarget_7 = jalFaultVecNext_7 | targetFault_7 ? jumpTargetsNext_7 : seqTargetsNext_7; // @[PreDecode.scala 276:81]
  assign io_out_stage2Out_jalTarget_0 = jumpTargetsNext_0; // @[PreDecode.scala 277:73]
  assign io_out_stage2Out_jalTarget_1 = jumpTargetsNext_1; // @[PreDecode.scala 277:73]
  assign io_out_stage2Out_jalTarget_2 = jumpTargetsNext_2; // @[PreDecode.scala 277:73]
  assign io_out_stage2Out_jalTarget_3 = jumpTargetsNext_3; // @[PreDecode.scala 277:73]
  assign io_out_stage2Out_jalTarget_4 = jumpTargetsNext_4; // @[PreDecode.scala 277:73]
  assign io_out_stage2Out_jalTarget_5 = jumpTargetsNext_5; // @[PreDecode.scala 277:73]
  assign io_out_stage2Out_jalTarget_6 = jumpTargetsNext_6; // @[PreDecode.scala 277:73]
  assign io_out_stage2Out_jalTarget_7 = jumpTargetsNext_7; // @[PreDecode.scala 277:73]
  assign io_out_stage2Out_fixedMissPred_0 = jalFaultVecNext_0 | retFaultVecNext_0 | notCFITakenNext_0 |
    invalidTakenNext_0 | targetFault_0; // @[PreDecode.scala 275:171]
  assign io_out_stage2Out_fixedMissPred_1 = jalFaultVecNext_1 | retFaultVecNext_1 | notCFITakenNext_1 |
    invalidTakenNext_1 | targetFault_1; // @[PreDecode.scala 275:171]
  assign io_out_stage2Out_fixedMissPred_2 = jalFaultVecNext_2 | retFaultVecNext_2 | notCFITakenNext_2 |
    invalidTakenNext_2 | targetFault_2; // @[PreDecode.scala 275:171]
  assign io_out_stage2Out_fixedMissPred_3 = jalFaultVecNext_3 | retFaultVecNext_3 | notCFITakenNext_3 |
    invalidTakenNext_3 | targetFault_3; // @[PreDecode.scala 275:171]
  assign io_out_stage2Out_fixedMissPred_4 = jalFaultVecNext_4 | retFaultVecNext_4 | notCFITakenNext_4 |
    invalidTakenNext_4 | targetFault_4; // @[PreDecode.scala 275:171]
  assign io_out_stage2Out_fixedMissPred_5 = jalFaultVecNext_5 | retFaultVecNext_5 | notCFITakenNext_5 |
    invalidTakenNext_5 | targetFault_5; // @[PreDecode.scala 275:171]
  assign io_out_stage2Out_fixedMissPred_6 = jalFaultVecNext_6 | retFaultVecNext_6 | notCFITakenNext_6 |
    invalidTakenNext_6 | targetFault_6; // @[PreDecode.scala 275:171]
  assign io_out_stage2Out_fixedMissPred_7 = jalFaultVecNext_7 | retFaultVecNext_7 | notCFITakenNext_7 |
    invalidTakenNext_7 | targetFault_7; // @[PreDecode.scala 275:171]
  always @(posedge clock) begin
    fixedRangeNext <= _fixedRange_T & _fixedRange_T_7; // @[PreDecode.scala 238:44]
    instrValidNext_0 <= io_in_instrValid_0; // @[PreDecode.scala 254:31]
    instrValidNext_1 <= io_in_instrValid_1; // @[PreDecode.scala 254:31]
    instrValidNext_2 <= io_in_instrValid_2; // @[PreDecode.scala 254:31]
    instrValidNext_3 <= io_in_instrValid_3; // @[PreDecode.scala 254:31]
    instrValidNext_4 <= io_in_instrValid_4; // @[PreDecode.scala 254:31]
    instrValidNext_5 <= io_in_instrValid_5; // @[PreDecode.scala 254:31]
    instrValidNext_6 <= io_in_instrValid_6; // @[PreDecode.scala 254:31]
    instrValidNext_7 <= io_in_instrValid_7; // @[PreDecode.scala 254:31]
    takenIdxNext <= io_in_ftqOffset_bits; // @[PreDecode.scala 255:31]
    predTakenNext <= io_in_ftqOffset_valid; // @[PreDecode.scala 256:31]
    predTargetNext <= io_in_target; // @[PreDecode.scala 257:31]
    jumpTargetsNext_0 <= _jumpTargets_T_1[38:0]; // @[PreDecode.scala 248:{105,105}]
    jumpTargetsNext_1 <= _jumpTargets_T_3[38:0]; // @[PreDecode.scala 248:{105,105}]
    jumpTargetsNext_2 <= _jumpTargets_T_5[38:0]; // @[PreDecode.scala 248:{105,105}]
    jumpTargetsNext_3 <= _jumpTargets_T_7[38:0]; // @[PreDecode.scala 248:{105,105}]
    jumpTargetsNext_4 <= _jumpTargets_T_9[38:0]; // @[PreDecode.scala 248:{105,105}]
    jumpTargetsNext_5 <= _jumpTargets_T_11[38:0]; // @[PreDecode.scala 248:{105,105}]
    jumpTargetsNext_6 <= _jumpTargets_T_13[38:0]; // @[PreDecode.scala 248:{105,105}]
    jumpTargetsNext_7 <= _jumpTargets_T_15[38:0]; // @[PreDecode.scala 248:{105,105}]
    seqTargetsNext_0 <= io_in_pc_0 + _GEN_8; // @[PreDecode.scala 249:66]
    seqTargetsNext_1 <= io_in_pc_1 + _GEN_9; // @[PreDecode.scala 249:66]
    seqTargetsNext_2 <= io_in_pc_2 + _GEN_10; // @[PreDecode.scala 249:66]
    seqTargetsNext_3 <= io_in_pc_3 + _GEN_11; // @[PreDecode.scala 249:66]
    seqTargetsNext_4 <= io_in_pc_4 + _GEN_12; // @[PreDecode.scala 249:66]
    seqTargetsNext_5 <= io_in_pc_5 + _GEN_13; // @[PreDecode.scala 249:66]
    seqTargetsNext_6 <= io_in_pc_6 + _GEN_14; // @[PreDecode.scala 249:66]
    seqTargetsNext_7 <= io_in_pc_7 + _GEN_15; // @[PreDecode.scala 249:66]
    pdsNext_0_brType <= io_in_pds_0_brType; // @[PreDecode.scala 260:24]
    pdsNext_1_brType <= io_in_pds_1_brType; // @[PreDecode.scala 260:24]
    pdsNext_2_brType <= io_in_pds_2_brType; // @[PreDecode.scala 260:24]
    pdsNext_3_brType <= io_in_pds_3_brType; // @[PreDecode.scala 260:24]
    pdsNext_4_brType <= io_in_pds_4_brType; // @[PreDecode.scala 260:24]
    pdsNext_5_brType <= io_in_pds_5_brType; // @[PreDecode.scala 260:24]
    pdsNext_6_brType <= io_in_pds_6_brType; // @[PreDecode.scala 260:24]
    pdsNext_7_brType <= io_in_pds_7_brType; // @[PreDecode.scala 260:24]
    jalFaultVecNext_0 <= _T & io_in_instrRange_0 & io_in_instrValid_0 & (io_in_ftqOffset_bits > 3'h0 &
      io_in_ftqOffset_valid | ~io_in_ftqOffset_valid); // @[PreDecode.scala 233:113]
    jalFaultVecNext_1 <= _T_8 & io_in_instrRange_1 & io_in_instrValid_1 & (io_in_ftqOffset_bits > 3'h1 &
      io_in_ftqOffset_valid | ~io_in_ftqOffset_valid); // @[PreDecode.scala 233:113]
    jalFaultVecNext_2 <= _T_16 & io_in_instrRange_2 & io_in_instrValid_2 & (io_in_ftqOffset_bits > 3'h2 &
      io_in_ftqOffset_valid | ~io_in_ftqOffset_valid); // @[PreDecode.scala 233:113]
    jalFaultVecNext_3 <= _T_24 & io_in_instrRange_3 & io_in_instrValid_3 & (io_in_ftqOffset_bits > 3'h3 &
      io_in_ftqOffset_valid | ~io_in_ftqOffset_valid); // @[PreDecode.scala 233:113]
    jalFaultVecNext_4 <= _T_32 & io_in_instrRange_4 & io_in_instrValid_4 & (io_in_ftqOffset_bits > 3'h4 &
      io_in_ftqOffset_valid | ~io_in_ftqOffset_valid); // @[PreDecode.scala 233:113]
    jalFaultVecNext_5 <= _T_40 & io_in_instrRange_5 & io_in_instrValid_5 & (io_in_ftqOffset_bits > 3'h5 &
      io_in_ftqOffset_valid | ~io_in_ftqOffset_valid); // @[PreDecode.scala 233:113]
    jalFaultVecNext_6 <= _T_48 & io_in_instrRange_6 & io_in_instrValid_6 & (io_in_ftqOffset_bits > 3'h6 &
      io_in_ftqOffset_valid | ~io_in_ftqOffset_valid); // @[PreDecode.scala 233:113]
    jalFaultVecNext_7 <= _T_56 & io_in_instrRange_7 & io_in_instrValid_7 & ~io_in_ftqOffset_valid; // @[PreDecode.scala 233:113]
    retFaultVecNext_0 <= io_in_pds_0_isRet & io_in_instrRange_0 & io_in_instrValid_0 & _T_6; // @[PreDecode.scala 234:113]
    retFaultVecNext_1 <= io_in_pds_1_isRet & io_in_instrRange_1 & io_in_instrValid_1 & _T_14; // @[PreDecode.scala 234:113]
    retFaultVecNext_2 <= io_in_pds_2_isRet & io_in_instrRange_2 & io_in_instrValid_2 & _T_22; // @[PreDecode.scala 234:113]
    retFaultVecNext_3 <= io_in_pds_3_isRet & io_in_instrRange_3 & io_in_instrValid_3 & _T_30; // @[PreDecode.scala 234:113]
    retFaultVecNext_4 <= io_in_pds_4_isRet & io_in_instrRange_4 & io_in_instrValid_4 & _T_38; // @[PreDecode.scala 234:113]
    retFaultVecNext_5 <= io_in_pds_5_isRet & io_in_instrRange_5 & io_in_instrValid_5 & _T_46; // @[PreDecode.scala 234:113]
    retFaultVecNext_6 <= io_in_pds_6_isRet & io_in_instrRange_6 & io_in_instrValid_6 & _T_54; // @[PreDecode.scala 234:113]
    retFaultVecNext_7 <= io_in_pds_7_isRet & io_in_instrRange_7 & io_in_instrValid_7 & _T_5; // @[PreDecode.scala 234:113]
    notCFITakenNext_0 <= fixedRange[0] & io_in_instrValid_0 & 3'h0 == io_in_ftqOffset_bits & _T_134 &
      io_in_ftqOffset_valid; // @[PreDecode.scala 245:127]
    notCFITakenNext_1 <= fixedRange[1] & io_in_instrValid_1 & 3'h1 == io_in_ftqOffset_bits & _T_145 &
      io_in_ftqOffset_valid; // @[PreDecode.scala 245:127]
    notCFITakenNext_2 <= fixedRange[2] & io_in_instrValid_2 & 3'h2 == io_in_ftqOffset_bits & _T_156 &
      io_in_ftqOffset_valid; // @[PreDecode.scala 245:127]
    notCFITakenNext_3 <= fixedRange[3] & io_in_instrValid_3 & 3'h3 == io_in_ftqOffset_bits & _T_167 &
      io_in_ftqOffset_valid; // @[PreDecode.scala 245:127]
    notCFITakenNext_4 <= fixedRange[4] & io_in_instrValid_4 & 3'h4 == io_in_ftqOffset_bits & _T_178 &
      io_in_ftqOffset_valid; // @[PreDecode.scala 245:127]
    notCFITakenNext_5 <= fixedRange[5] & io_in_instrValid_5 & 3'h5 == io_in_ftqOffset_bits & _T_189 &
      io_in_ftqOffset_valid; // @[PreDecode.scala 245:127]
    notCFITakenNext_6 <= fixedRange[6] & io_in_instrValid_6 & 3'h6 == io_in_ftqOffset_bits & _T_200 &
      io_in_ftqOffset_valid; // @[PreDecode.scala 245:127]
    notCFITakenNext_7 <= fixedRange[7] & io_in_instrValid_7 & 3'h7 == io_in_ftqOffset_bits & _T_211 &
      io_in_ftqOffset_valid; // @[PreDecode.scala 245:127]
    invalidTakenNext_0 <= fixedRange[0] & ~io_in_instrValid_0 & _T_218 & io_in_ftqOffset_valid; // @[PreDecode.scala 246:117]
    invalidTakenNext_1 <= fixedRange[1] & ~io_in_instrValid_1 & _T_225 & io_in_ftqOffset_valid; // @[PreDecode.scala 246:117]
    invalidTakenNext_2 <= fixedRange[2] & ~io_in_instrValid_2 & _T_232 & io_in_ftqOffset_valid; // @[PreDecode.scala 246:117]
    invalidTakenNext_3 <= fixedRange[3] & ~io_in_instrValid_3 & _T_239 & io_in_ftqOffset_valid; // @[PreDecode.scala 246:117]
    invalidTakenNext_4 <= fixedRange[4] & ~io_in_instrValid_4 & _T_246 & io_in_ftqOffset_valid; // @[PreDecode.scala 246:117]
    invalidTakenNext_5 <= fixedRange[5] & ~io_in_instrValid_5 & _T_253 & io_in_ftqOffset_valid; // @[PreDecode.scala 246:117]
    invalidTakenNext_6 <= fixedRange[6] & ~io_in_instrValid_6 & _T_260 & io_in_ftqOffset_valid; // @[PreDecode.scala 246:117]
    invalidTakenNext_7 <= fixedRange[7] & ~io_in_instrValid_7 & _T_267 & io_in_ftqOffset_valid; // @[PreDecode.scala 246:117]
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
  fixedRangeNext = _RAND_0[7:0];
  _RAND_1 = {1{`RANDOM}};
  instrValidNext_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  instrValidNext_1 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  instrValidNext_2 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  instrValidNext_3 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  instrValidNext_4 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  instrValidNext_5 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  instrValidNext_6 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  instrValidNext_7 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  takenIdxNext = _RAND_9[2:0];
  _RAND_10 = {1{`RANDOM}};
  predTakenNext = _RAND_10[0:0];
  _RAND_11 = {2{`RANDOM}};
  predTargetNext = _RAND_11[38:0];
  _RAND_12 = {2{`RANDOM}};
  jumpTargetsNext_0 = _RAND_12[38:0];
  _RAND_13 = {2{`RANDOM}};
  jumpTargetsNext_1 = _RAND_13[38:0];
  _RAND_14 = {2{`RANDOM}};
  jumpTargetsNext_2 = _RAND_14[38:0];
  _RAND_15 = {2{`RANDOM}};
  jumpTargetsNext_3 = _RAND_15[38:0];
  _RAND_16 = {2{`RANDOM}};
  jumpTargetsNext_4 = _RAND_16[38:0];
  _RAND_17 = {2{`RANDOM}};
  jumpTargetsNext_5 = _RAND_17[38:0];
  _RAND_18 = {2{`RANDOM}};
  jumpTargetsNext_6 = _RAND_18[38:0];
  _RAND_19 = {2{`RANDOM}};
  jumpTargetsNext_7 = _RAND_19[38:0];
  _RAND_20 = {2{`RANDOM}};
  seqTargetsNext_0 = _RAND_20[38:0];
  _RAND_21 = {2{`RANDOM}};
  seqTargetsNext_1 = _RAND_21[38:0];
  _RAND_22 = {2{`RANDOM}};
  seqTargetsNext_2 = _RAND_22[38:0];
  _RAND_23 = {2{`RANDOM}};
  seqTargetsNext_3 = _RAND_23[38:0];
  _RAND_24 = {2{`RANDOM}};
  seqTargetsNext_4 = _RAND_24[38:0];
  _RAND_25 = {2{`RANDOM}};
  seqTargetsNext_5 = _RAND_25[38:0];
  _RAND_26 = {2{`RANDOM}};
  seqTargetsNext_6 = _RAND_26[38:0];
  _RAND_27 = {2{`RANDOM}};
  seqTargetsNext_7 = _RAND_27[38:0];
  _RAND_28 = {1{`RANDOM}};
  pdsNext_0_brType = _RAND_28[1:0];
  _RAND_29 = {1{`RANDOM}};
  pdsNext_1_brType = _RAND_29[1:0];
  _RAND_30 = {1{`RANDOM}};
  pdsNext_2_brType = _RAND_30[1:0];
  _RAND_31 = {1{`RANDOM}};
  pdsNext_3_brType = _RAND_31[1:0];
  _RAND_32 = {1{`RANDOM}};
  pdsNext_4_brType = _RAND_32[1:0];
  _RAND_33 = {1{`RANDOM}};
  pdsNext_5_brType = _RAND_33[1:0];
  _RAND_34 = {1{`RANDOM}};
  pdsNext_6_brType = _RAND_34[1:0];
  _RAND_35 = {1{`RANDOM}};
  pdsNext_7_brType = _RAND_35[1:0];
  _RAND_36 = {1{`RANDOM}};
  jalFaultVecNext_0 = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  jalFaultVecNext_1 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  jalFaultVecNext_2 = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  jalFaultVecNext_3 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  jalFaultVecNext_4 = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  jalFaultVecNext_5 = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  jalFaultVecNext_6 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  jalFaultVecNext_7 = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  retFaultVecNext_0 = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  retFaultVecNext_1 = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  retFaultVecNext_2 = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  retFaultVecNext_3 = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  retFaultVecNext_4 = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  retFaultVecNext_5 = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  retFaultVecNext_6 = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  retFaultVecNext_7 = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  notCFITakenNext_0 = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  notCFITakenNext_1 = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  notCFITakenNext_2 = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  notCFITakenNext_3 = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  notCFITakenNext_4 = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  notCFITakenNext_5 = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  notCFITakenNext_6 = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  notCFITakenNext_7 = _RAND_59[0:0];
  _RAND_60 = {1{`RANDOM}};
  invalidTakenNext_0 = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  invalidTakenNext_1 = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  invalidTakenNext_2 = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  invalidTakenNext_3 = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  invalidTakenNext_4 = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  invalidTakenNext_5 = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  invalidTakenNext_6 = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  invalidTakenNext_7 = _RAND_67[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

