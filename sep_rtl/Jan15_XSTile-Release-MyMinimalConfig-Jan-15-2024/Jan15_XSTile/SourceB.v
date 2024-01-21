module SourceB(
  input         clock,
  input         reset,
  input         io_sourceB_ready,
  output        io_sourceB_valid,
  output [2:0]  io_sourceB_bits_opcode,
  output [1:0]  io_sourceB_bits_param,
  output [35:0] io_sourceB_bits_address,
  output        io_task_ready,
  input         io_task_valid,
  input  [21:0] io_task_bits_tag,
  input  [6:0]  io_task_bits_set,
  input  [2:0]  io_task_bits_opcode,
  input  [1:0]  io_task_bits_param,
  input         io_grantStatus_0_valid,
  input  [6:0]  io_grantStatus_0_set,
  input  [21:0] io_grantStatus_0_tag,
  input         io_grantStatus_1_valid,
  input  [6:0]  io_grantStatus_1_set,
  input  [21:0] io_grantStatus_1_tag,
  input         io_grantStatus_2_valid,
  input  [6:0]  io_grantStatus_2_set,
  input  [21:0] io_grantStatus_2_tag,
  input         io_grantStatus_3_valid,
  input  [6:0]  io_grantStatus_3_set,
  input  [21:0] io_grantStatus_3_tag,
  input         io_grantStatus_4_valid,
  input  [6:0]  io_grantStatus_4_set,
  input  [21:0] io_grantStatus_4_tag,
  input         io_grantStatus_5_valid,
  input  [6:0]  io_grantStatus_5_set,
  input  [21:0] io_grantStatus_5_tag,
  input         io_grantStatus_6_valid,
  input  [6:0]  io_grantStatus_6_set,
  input  [21:0] io_grantStatus_6_tag,
  input         io_grantStatus_7_valid,
  input  [6:0]  io_grantStatus_7_set,
  input  [21:0] io_grantStatus_7_tag,
  input         io_grantStatus_8_valid,
  input  [6:0]  io_grantStatus_8_set,
  input  [21:0] io_grantStatus_8_tag,
  input         io_grantStatus_9_valid,
  input  [6:0]  io_grantStatus_9_set,
  input  [21:0] io_grantStatus_9_tag,
  input         io_grantStatus_10_valid,
  input  [6:0]  io_grantStatus_10_set,
  input  [21:0] io_grantStatus_10_tag,
  input         io_grantStatus_11_valid,
  input  [6:0]  io_grantStatus_11_set,
  input  [21:0] io_grantStatus_11_tag,
  input         io_grantStatus_12_valid,
  input  [6:0]  io_grantStatus_12_set,
  input  [21:0] io_grantStatus_12_tag,
  input         io_grantStatus_13_valid,
  input  [6:0]  io_grantStatus_13_set,
  input  [21:0] io_grantStatus_13_tag,
  input         io_grantStatus_14_valid,
  input  [6:0]  io_grantStatus_14_set,
  input  [21:0] io_grantStatus_14_tag,
  input         io_grantStatus_15_valid,
  input  [6:0]  io_grantStatus_15_set,
  input  [21:0] io_grantStatus_15_tag
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
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
`endif // RANDOMIZE_REG_INIT
  wire  issueArb_clock; // @[SourceB.scala 97:24]
  wire  issueArb_reset; // @[SourceB.scala 97:24]
  wire  issueArb_io_in_0_ready; // @[SourceB.scala 97:24]
  wire  issueArb_io_in_0_valid; // @[SourceB.scala 97:24]
  wire [21:0] issueArb_io_in_0_bits_tag; // @[SourceB.scala 97:24]
  wire [6:0] issueArb_io_in_0_bits_set; // @[SourceB.scala 97:24]
  wire [2:0] issueArb_io_in_0_bits_opcode; // @[SourceB.scala 97:24]
  wire [1:0] issueArb_io_in_0_bits_param; // @[SourceB.scala 97:24]
  wire  issueArb_io_in_1_ready; // @[SourceB.scala 97:24]
  wire  issueArb_io_in_1_valid; // @[SourceB.scala 97:24]
  wire [21:0] issueArb_io_in_1_bits_tag; // @[SourceB.scala 97:24]
  wire [6:0] issueArb_io_in_1_bits_set; // @[SourceB.scala 97:24]
  wire [2:0] issueArb_io_in_1_bits_opcode; // @[SourceB.scala 97:24]
  wire [1:0] issueArb_io_in_1_bits_param; // @[SourceB.scala 97:24]
  wire  issueArb_io_in_2_ready; // @[SourceB.scala 97:24]
  wire  issueArb_io_in_2_valid; // @[SourceB.scala 97:24]
  wire [21:0] issueArb_io_in_2_bits_tag; // @[SourceB.scala 97:24]
  wire [6:0] issueArb_io_in_2_bits_set; // @[SourceB.scala 97:24]
  wire [2:0] issueArb_io_in_2_bits_opcode; // @[SourceB.scala 97:24]
  wire [1:0] issueArb_io_in_2_bits_param; // @[SourceB.scala 97:24]
  wire  issueArb_io_in_3_ready; // @[SourceB.scala 97:24]
  wire  issueArb_io_in_3_valid; // @[SourceB.scala 97:24]
  wire [21:0] issueArb_io_in_3_bits_tag; // @[SourceB.scala 97:24]
  wire [6:0] issueArb_io_in_3_bits_set; // @[SourceB.scala 97:24]
  wire [2:0] issueArb_io_in_3_bits_opcode; // @[SourceB.scala 97:24]
  wire [1:0] issueArb_io_in_3_bits_param; // @[SourceB.scala 97:24]
  wire  issueArb_io_out_ready; // @[SourceB.scala 97:24]
  wire  issueArb_io_out_valid; // @[SourceB.scala 97:24]
  wire [21:0] issueArb_io_out_bits_tag; // @[SourceB.scala 97:24]
  wire [6:0] issueArb_io_out_bits_set; // @[SourceB.scala 97:24]
  wire [2:0] issueArb_io_out_bits_opcode; // @[SourceB.scala 97:24]
  wire [1:0] issueArb_io_out_bits_param; // @[SourceB.scala 97:24]
  reg  probes_0_valid; // @[SourceB.scala 66:24]
  reg  probes_0_rdy; // @[SourceB.scala 66:24]
  reg [4:0] probes_0_waitG; // @[SourceB.scala 66:24]
  reg [21:0] probes_0_task_tag; // @[SourceB.scala 66:24]
  reg [6:0] probes_0_task_set; // @[SourceB.scala 66:24]
  reg [2:0] probes_0_task_opcode; // @[SourceB.scala 66:24]
  reg [1:0] probes_0_task_param; // @[SourceB.scala 66:24]
  reg  probes_1_valid; // @[SourceB.scala 66:24]
  reg  probes_1_rdy; // @[SourceB.scala 66:24]
  reg [4:0] probes_1_waitG; // @[SourceB.scala 66:24]
  reg [21:0] probes_1_task_tag; // @[SourceB.scala 66:24]
  reg [6:0] probes_1_task_set; // @[SourceB.scala 66:24]
  reg [2:0] probes_1_task_opcode; // @[SourceB.scala 66:24]
  reg [1:0] probes_1_task_param; // @[SourceB.scala 66:24]
  reg  probes_2_valid; // @[SourceB.scala 66:24]
  reg  probes_2_rdy; // @[SourceB.scala 66:24]
  reg [4:0] probes_2_waitG; // @[SourceB.scala 66:24]
  reg [21:0] probes_2_task_tag; // @[SourceB.scala 66:24]
  reg [6:0] probes_2_task_set; // @[SourceB.scala 66:24]
  reg [2:0] probes_2_task_opcode; // @[SourceB.scala 66:24]
  reg [1:0] probes_2_task_param; // @[SourceB.scala 66:24]
  reg  probes_3_valid; // @[SourceB.scala 66:24]
  reg  probes_3_rdy; // @[SourceB.scala 66:24]
  reg [4:0] probes_3_waitG; // @[SourceB.scala 66:24]
  reg [21:0] probes_3_task_tag; // @[SourceB.scala 66:24]
  reg [6:0] probes_3_task_set; // @[SourceB.scala 66:24]
  reg [2:0] probes_3_task_opcode; // @[SourceB.scala 66:24]
  reg [1:0] probes_3_task_param; // @[SourceB.scala 66:24]
  wire [3:0] _full_T = {probes_0_valid,probes_1_valid,probes_2_valid,probes_3_valid}; // @[Cat.scala 31:58]
  wire  full = &_full_T; // @[SourceB.scala 71:40]
  wire  conflictMask_0 = io_grantStatus_0_valid & io_grantStatus_0_set == io_task_bits_set & io_grantStatus_0_tag ==
    io_task_bits_tag; // @[SourceB.scala 76:43]
  wire  conflictMask_1 = io_grantStatus_1_valid & io_grantStatus_1_set == io_task_bits_set & io_grantStatus_1_tag ==
    io_task_bits_tag; // @[SourceB.scala 76:43]
  wire  conflictMask_2 = io_grantStatus_2_valid & io_grantStatus_2_set == io_task_bits_set & io_grantStatus_2_tag ==
    io_task_bits_tag; // @[SourceB.scala 76:43]
  wire  conflictMask_3 = io_grantStatus_3_valid & io_grantStatus_3_set == io_task_bits_set & io_grantStatus_3_tag ==
    io_task_bits_tag; // @[SourceB.scala 76:43]
  wire  conflictMask_4 = io_grantStatus_4_valid & io_grantStatus_4_set == io_task_bits_set & io_grantStatus_4_tag ==
    io_task_bits_tag; // @[SourceB.scala 76:43]
  wire  conflictMask_5 = io_grantStatus_5_valid & io_grantStatus_5_set == io_task_bits_set & io_grantStatus_5_tag ==
    io_task_bits_tag; // @[SourceB.scala 76:43]
  wire  conflictMask_6 = io_grantStatus_6_valid & io_grantStatus_6_set == io_task_bits_set & io_grantStatus_6_tag ==
    io_task_bits_tag; // @[SourceB.scala 76:43]
  wire  conflictMask_7 = io_grantStatus_7_valid & io_grantStatus_7_set == io_task_bits_set & io_grantStatus_7_tag ==
    io_task_bits_tag; // @[SourceB.scala 76:43]
  wire  conflictMask_8 = io_grantStatus_8_valid & io_grantStatus_8_set == io_task_bits_set & io_grantStatus_8_tag ==
    io_task_bits_tag; // @[SourceB.scala 76:43]
  wire  conflictMask_9 = io_grantStatus_9_valid & io_grantStatus_9_set == io_task_bits_set & io_grantStatus_9_tag ==
    io_task_bits_tag; // @[SourceB.scala 76:43]
  wire  conflictMask_10 = io_grantStatus_10_valid & io_grantStatus_10_set == io_task_bits_set & io_grantStatus_10_tag
     == io_task_bits_tag; // @[SourceB.scala 76:43]
  wire  conflictMask_11 = io_grantStatus_11_valid & io_grantStatus_11_set == io_task_bits_set & io_grantStatus_11_tag
     == io_task_bits_tag; // @[SourceB.scala 76:43]
  wire  conflictMask_12 = io_grantStatus_12_valid & io_grantStatus_12_set == io_task_bits_set & io_grantStatus_12_tag
     == io_task_bits_tag; // @[SourceB.scala 76:43]
  wire  conflictMask_13 = io_grantStatus_13_valid & io_grantStatus_13_set == io_task_bits_set & io_grantStatus_13_tag
     == io_task_bits_tag; // @[SourceB.scala 76:43]
  wire  conflictMask_14 = io_grantStatus_14_valid & io_grantStatus_14_set == io_task_bits_set & io_grantStatus_14_tag
     == io_task_bits_tag; // @[SourceB.scala 76:43]
  wire  conflictMask_15 = io_grantStatus_15_valid & io_grantStatus_15_set == io_task_bits_set & io_grantStatus_15_tag
     == io_task_bits_tag; // @[SourceB.scala 76:43]
  wire [7:0] conflict_lo = {conflictMask_8,conflictMask_9,conflictMask_10,conflictMask_11,conflictMask_12,
    conflictMask_13,conflictMask_14,conflictMask_15}; // @[Cat.scala 31:58]
  wire [15:0] _conflict_T = {conflictMask_0,conflictMask_1,conflictMask_2,conflictMask_3,conflictMask_4,conflictMask_5,
    conflictMask_6,conflictMask_7,conflict_lo}; // @[Cat.scala 31:58]
  wire  conflict = |_conflict_T; // @[SourceB.scala 78:40]
  wire  _io_task_ready_T = ~full; // @[SourceB.scala 83:22]
  wire  _insertIdx_T = ~probes_0_valid; // @[SourceB.scala 85:46]
  wire  _insertIdx_T_1 = ~probes_1_valid; // @[SourceB.scala 85:46]
  wire  _insertIdx_T_2 = ~probes_2_valid; // @[SourceB.scala 85:46]
  wire [1:0] _insertIdx_T_4 = _insertIdx_T_2 ? 2'h2 : 2'h3; // @[Mux.scala 47:70]
  wire [1:0] _insertIdx_T_5 = _insertIdx_T_1 ? 2'h1 : _insertIdx_T_4; // @[Mux.scala 47:70]
  wire [1:0] insertIdx = _insertIdx_T ? 2'h0 : _insertIdx_T_5; // @[Mux.scala 47:70]
  wire  alloc = _io_task_ready_T & io_task_valid; // @[SourceB.scala 86:25]
  wire  _GEN_0 = 2'h0 == insertIdx | probes_0_valid; // @[SourceB.scala 89:{13,13} 66:24]
  wire  _GEN_1 = 2'h1 == insertIdx | probes_1_valid; // @[SourceB.scala 89:{13,13} 66:24]
  wire  _GEN_2 = 2'h2 == insertIdx | probes_2_valid; // @[SourceB.scala 89:{13,13} 66:24]
  wire  _GEN_3 = 2'h3 == insertIdx | probes_3_valid; // @[SourceB.scala 89:{13,13} 66:24]
  wire  _GEN_4 = 2'h0 == insertIdx ? ~conflict : probes_0_rdy; // @[SourceB.scala 90:{13,13} 66:24]
  wire  _GEN_5 = 2'h1 == insertIdx ? ~conflict : probes_1_rdy; // @[SourceB.scala 90:{13,13} 66:24]
  wire  _GEN_6 = 2'h2 == insertIdx ? ~conflict : probes_2_rdy; // @[SourceB.scala 90:{13,13} 66:24]
  wire  _GEN_7 = 2'h3 == insertIdx ? ~conflict : probes_3_rdy; // @[SourceB.scala 90:{13,13} 66:24]
  wire [7:0] probes_waitG_lo = {conflictMask_7,conflictMask_6,conflictMask_5,conflictMask_4,conflictMask_3,
    conflictMask_2,conflictMask_1,conflictMask_0}; // @[Cat.scala 31:58]
  wire [15:0] _probes_waitG_T = {conflictMask_15,conflictMask_14,conflictMask_13,conflictMask_12,conflictMask_11,
    conflictMask_10,conflictMask_9,conflictMask_8,probes_waitG_lo}; // @[Cat.scala 31:58]
  wire [7:0] probes_waitG_hi_1 = _probes_waitG_T[15:8]; // @[OneHot.scala 30:18]
  wire [7:0] probes_waitG_lo_1 = _probes_waitG_T[7:0]; // @[OneHot.scala 31:18]
  wire  _probes_waitG_T_1 = |probes_waitG_hi_1; // @[OneHot.scala 32:14]
  wire [7:0] _probes_waitG_T_2 = probes_waitG_hi_1 | probes_waitG_lo_1; // @[OneHot.scala 32:28]
  wire [3:0] probes_waitG_hi_2 = _probes_waitG_T_2[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] probes_waitG_lo_2 = _probes_waitG_T_2[3:0]; // @[OneHot.scala 31:18]
  wire  _probes_waitG_T_3 = |probes_waitG_hi_2; // @[OneHot.scala 32:14]
  wire [3:0] _probes_waitG_T_4 = probes_waitG_hi_2 | probes_waitG_lo_2; // @[OneHot.scala 32:28]
  wire [1:0] probes_waitG_hi_3 = _probes_waitG_T_4[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] probes_waitG_lo_3 = _probes_waitG_T_4[1:0]; // @[OneHot.scala 31:18]
  wire  _probes_waitG_T_5 = |probes_waitG_hi_3; // @[OneHot.scala 32:14]
  wire [1:0] _probes_waitG_T_6 = probes_waitG_hi_3 | probes_waitG_lo_3; // @[OneHot.scala 32:28]
  wire [3:0] _probes_waitG_T_10 = {_probes_waitG_T_1,_probes_waitG_T_3,_probes_waitG_T_5,_probes_waitG_T_6[1]}; // @[Cat.scala 31:58]
  wire [4:0] _probes_insertIdx_waitG = {{1'd0}, _probes_waitG_T_10}; // @[SourceB.scala 91:{13,13}]
  wire  _GEN_36 = alloc ? _GEN_4 : probes_0_rdy; // @[SourceB.scala 87:15 66:24]
  wire  _GEN_37 = alloc ? _GEN_5 : probes_1_rdy; // @[SourceB.scala 87:15 66:24]
  wire  _GEN_38 = alloc ? _GEN_6 : probes_2_rdy; // @[SourceB.scala 87:15 66:24]
  wire  _GEN_39 = alloc ? _GEN_7 : probes_3_rdy; // @[SourceB.scala 87:15 66:24]
  wire  _T_34 = issueArb_io_in_0_ready & issueArb_io_in_0_valid; // @[Decoupled.scala 50:35]
  wire  _T_35 = issueArb_io_in_1_ready & issueArb_io_in_1_valid; // @[Decoupled.scala 50:35]
  wire  _T_36 = issueArb_io_in_2_ready & issueArb_io_in_2_valid; // @[Decoupled.scala 50:35]
  wire  _T_37 = issueArb_io_in_3_ready & issueArb_io_in_3_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_69 = 4'h1 == probes_0_waitG[3:0] ? io_grantStatus_1_valid : io_grantStatus_0_valid; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_70 = 4'h2 == probes_0_waitG[3:0] ? io_grantStatus_2_valid : _GEN_69; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_71 = 4'h3 == probes_0_waitG[3:0] ? io_grantStatus_3_valid : _GEN_70; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_72 = 4'h4 == probes_0_waitG[3:0] ? io_grantStatus_4_valid : _GEN_71; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_73 = 4'h5 == probes_0_waitG[3:0] ? io_grantStatus_5_valid : _GEN_72; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_74 = 4'h6 == probes_0_waitG[3:0] ? io_grantStatus_6_valid : _GEN_73; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_75 = 4'h7 == probes_0_waitG[3:0] ? io_grantStatus_7_valid : _GEN_74; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_76 = 4'h8 == probes_0_waitG[3:0] ? io_grantStatus_8_valid : _GEN_75; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_77 = 4'h9 == probes_0_waitG[3:0] ? io_grantStatus_9_valid : _GEN_76; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_78 = 4'ha == probes_0_waitG[3:0] ? io_grantStatus_10_valid : _GEN_77; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_79 = 4'hb == probes_0_waitG[3:0] ? io_grantStatus_11_valid : _GEN_78; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_80 = 4'hc == probes_0_waitG[3:0] ? io_grantStatus_12_valid : _GEN_79; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_81 = 4'hd == probes_0_waitG[3:0] ? io_grantStatus_13_valid : _GEN_80; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_82 = 4'he == probes_0_waitG[3:0] ? io_grantStatus_14_valid : _GEN_81; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_83 = 4'hf == probes_0_waitG[3:0] ? io_grantStatus_15_valid : _GEN_82; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_86 = 4'h1 == probes_1_waitG[3:0] ? io_grantStatus_1_valid : io_grantStatus_0_valid; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_87 = 4'h2 == probes_1_waitG[3:0] ? io_grantStatus_2_valid : _GEN_86; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_88 = 4'h3 == probes_1_waitG[3:0] ? io_grantStatus_3_valid : _GEN_87; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_89 = 4'h4 == probes_1_waitG[3:0] ? io_grantStatus_4_valid : _GEN_88; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_90 = 4'h5 == probes_1_waitG[3:0] ? io_grantStatus_5_valid : _GEN_89; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_91 = 4'h6 == probes_1_waitG[3:0] ? io_grantStatus_6_valid : _GEN_90; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_92 = 4'h7 == probes_1_waitG[3:0] ? io_grantStatus_7_valid : _GEN_91; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_93 = 4'h8 == probes_1_waitG[3:0] ? io_grantStatus_8_valid : _GEN_92; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_94 = 4'h9 == probes_1_waitG[3:0] ? io_grantStatus_9_valid : _GEN_93; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_95 = 4'ha == probes_1_waitG[3:0] ? io_grantStatus_10_valid : _GEN_94; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_96 = 4'hb == probes_1_waitG[3:0] ? io_grantStatus_11_valid : _GEN_95; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_97 = 4'hc == probes_1_waitG[3:0] ? io_grantStatus_12_valid : _GEN_96; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_98 = 4'hd == probes_1_waitG[3:0] ? io_grantStatus_13_valid : _GEN_97; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_99 = 4'he == probes_1_waitG[3:0] ? io_grantStatus_14_valid : _GEN_98; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_100 = 4'hf == probes_1_waitG[3:0] ? io_grantStatus_15_valid : _GEN_99; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_103 = 4'h1 == probes_2_waitG[3:0] ? io_grantStatus_1_valid : io_grantStatus_0_valid; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_104 = 4'h2 == probes_2_waitG[3:0] ? io_grantStatus_2_valid : _GEN_103; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_105 = 4'h3 == probes_2_waitG[3:0] ? io_grantStatus_3_valid : _GEN_104; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_106 = 4'h4 == probes_2_waitG[3:0] ? io_grantStatus_4_valid : _GEN_105; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_107 = 4'h5 == probes_2_waitG[3:0] ? io_grantStatus_5_valid : _GEN_106; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_108 = 4'h6 == probes_2_waitG[3:0] ? io_grantStatus_6_valid : _GEN_107; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_109 = 4'h7 == probes_2_waitG[3:0] ? io_grantStatus_7_valid : _GEN_108; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_110 = 4'h8 == probes_2_waitG[3:0] ? io_grantStatus_8_valid : _GEN_109; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_111 = 4'h9 == probes_2_waitG[3:0] ? io_grantStatus_9_valid : _GEN_110; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_112 = 4'ha == probes_2_waitG[3:0] ? io_grantStatus_10_valid : _GEN_111; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_113 = 4'hb == probes_2_waitG[3:0] ? io_grantStatus_11_valid : _GEN_112; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_114 = 4'hc == probes_2_waitG[3:0] ? io_grantStatus_12_valid : _GEN_113; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_115 = 4'hd == probes_2_waitG[3:0] ? io_grantStatus_13_valid : _GEN_114; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_116 = 4'he == probes_2_waitG[3:0] ? io_grantStatus_14_valid : _GEN_115; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_117 = 4'hf == probes_2_waitG[3:0] ? io_grantStatus_15_valid : _GEN_116; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_120 = 4'h1 == probes_3_waitG[3:0] ? io_grantStatus_1_valid : io_grantStatus_0_valid; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_121 = 4'h2 == probes_3_waitG[3:0] ? io_grantStatus_2_valid : _GEN_120; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_122 = 4'h3 == probes_3_waitG[3:0] ? io_grantStatus_3_valid : _GEN_121; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_123 = 4'h4 == probes_3_waitG[3:0] ? io_grantStatus_4_valid : _GEN_122; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_124 = 4'h5 == probes_3_waitG[3:0] ? io_grantStatus_5_valid : _GEN_123; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_125 = 4'h6 == probes_3_waitG[3:0] ? io_grantStatus_6_valid : _GEN_124; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_126 = 4'h7 == probes_3_waitG[3:0] ? io_grantStatus_7_valid : _GEN_125; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_127 = 4'h8 == probes_3_waitG[3:0] ? io_grantStatus_8_valid : _GEN_126; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_128 = 4'h9 == probes_3_waitG[3:0] ? io_grantStatus_9_valid : _GEN_127; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_129 = 4'ha == probes_3_waitG[3:0] ? io_grantStatus_10_valid : _GEN_128; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_130 = 4'hb == probes_3_waitG[3:0] ? io_grantStatus_11_valid : _GEN_129; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_131 = 4'hc == probes_3_waitG[3:0] ? io_grantStatus_12_valid : _GEN_130; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_132 = 4'hd == probes_3_waitG[3:0] ? io_grantStatus_13_valid : _GEN_131; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_133 = 4'he == probes_3_waitG[3:0] ? io_grantStatus_14_valid : _GEN_132; // @[SourceB.scala 111:{21,21}]
  wire  _GEN_134 = 4'hf == probes_3_waitG[3:0] ? io_grantStatus_15_valid : _GEN_133; // @[SourceB.scala 111:{21,21}]
  wire [34:0] _io_sourceB_bits_baddress_T = {issueArb_io_out_bits_tag,issueArb_io_out_bits_set,6'h0}; // @[Cat.scala 31:58]
  FastArbiter_2 issueArb ( // @[SourceB.scala 97:24]
    .clock(issueArb_clock),
    .reset(issueArb_reset),
    .io_in_0_ready(issueArb_io_in_0_ready),
    .io_in_0_valid(issueArb_io_in_0_valid),
    .io_in_0_bits_tag(issueArb_io_in_0_bits_tag),
    .io_in_0_bits_set(issueArb_io_in_0_bits_set),
    .io_in_0_bits_opcode(issueArb_io_in_0_bits_opcode),
    .io_in_0_bits_param(issueArb_io_in_0_bits_param),
    .io_in_1_ready(issueArb_io_in_1_ready),
    .io_in_1_valid(issueArb_io_in_1_valid),
    .io_in_1_bits_tag(issueArb_io_in_1_bits_tag),
    .io_in_1_bits_set(issueArb_io_in_1_bits_set),
    .io_in_1_bits_opcode(issueArb_io_in_1_bits_opcode),
    .io_in_1_bits_param(issueArb_io_in_1_bits_param),
    .io_in_2_ready(issueArb_io_in_2_ready),
    .io_in_2_valid(issueArb_io_in_2_valid),
    .io_in_2_bits_tag(issueArb_io_in_2_bits_tag),
    .io_in_2_bits_set(issueArb_io_in_2_bits_set),
    .io_in_2_bits_opcode(issueArb_io_in_2_bits_opcode),
    .io_in_2_bits_param(issueArb_io_in_2_bits_param),
    .io_in_3_ready(issueArb_io_in_3_ready),
    .io_in_3_valid(issueArb_io_in_3_valid),
    .io_in_3_bits_tag(issueArb_io_in_3_bits_tag),
    .io_in_3_bits_set(issueArb_io_in_3_bits_set),
    .io_in_3_bits_opcode(issueArb_io_in_3_bits_opcode),
    .io_in_3_bits_param(issueArb_io_in_3_bits_param),
    .io_out_ready(issueArb_io_out_ready),
    .io_out_valid(issueArb_io_out_valid),
    .io_out_bits_tag(issueArb_io_out_bits_tag),
    .io_out_bits_set(issueArb_io_out_bits_set),
    .io_out_bits_opcode(issueArb_io_out_bits_opcode),
    .io_out_bits_param(issueArb_io_out_bits_param)
  );
  assign io_sourceB_valid = issueArb_io_out_valid; // @[SourceB.scala 117:20]
  assign io_sourceB_bits_opcode = issueArb_io_out_bits_opcode; // @[SourceB.scala 51:17 52:15]
  assign io_sourceB_bits_param = issueArb_io_out_bits_param; // @[SourceB.scala 51:17 53:15]
  assign io_sourceB_bits_address = {{1'd0}, _io_sourceB_bits_baddress_T}; // @[SourceB.scala 51:17 56:15]
  assign io_task_ready = ~full; // @[SourceB.scala 83:22]
  assign issueArb_clock = clock;
  assign issueArb_reset = reset;
  assign issueArb_io_in_0_valid = probes_0_valid & probes_0_rdy; // @[SourceB.scala 100:26]
  assign issueArb_io_in_0_bits_tag = probes_0_task_tag; // @[SourceB.scala 101:15]
  assign issueArb_io_in_0_bits_set = probes_0_task_set; // @[SourceB.scala 101:15]
  assign issueArb_io_in_0_bits_opcode = probes_0_task_opcode; // @[SourceB.scala 101:15]
  assign issueArb_io_in_0_bits_param = probes_0_task_param; // @[SourceB.scala 101:15]
  assign issueArb_io_in_1_valid = probes_1_valid & probes_1_rdy; // @[SourceB.scala 100:26]
  assign issueArb_io_in_1_bits_tag = probes_1_task_tag; // @[SourceB.scala 101:15]
  assign issueArb_io_in_1_bits_set = probes_1_task_set; // @[SourceB.scala 101:15]
  assign issueArb_io_in_1_bits_opcode = probes_1_task_opcode; // @[SourceB.scala 101:15]
  assign issueArb_io_in_1_bits_param = probes_1_task_param; // @[SourceB.scala 101:15]
  assign issueArb_io_in_2_valid = probes_2_valid & probes_2_rdy; // @[SourceB.scala 100:26]
  assign issueArb_io_in_2_bits_tag = probes_2_task_tag; // @[SourceB.scala 101:15]
  assign issueArb_io_in_2_bits_set = probes_2_task_set; // @[SourceB.scala 101:15]
  assign issueArb_io_in_2_bits_opcode = probes_2_task_opcode; // @[SourceB.scala 101:15]
  assign issueArb_io_in_2_bits_param = probes_2_task_param; // @[SourceB.scala 101:15]
  assign issueArb_io_in_3_valid = probes_3_valid & probes_3_rdy; // @[SourceB.scala 100:26]
  assign issueArb_io_in_3_bits_tag = probes_3_task_tag; // @[SourceB.scala 101:15]
  assign issueArb_io_in_3_bits_set = probes_3_task_set; // @[SourceB.scala 101:15]
  assign issueArb_io_in_3_bits_opcode = probes_3_task_opcode; // @[SourceB.scala 101:15]
  assign issueArb_io_in_3_bits_param = probes_3_task_param; // @[SourceB.scala 101:15]
  assign issueArb_io_out_ready = io_sourceB_ready; // @[SourceB.scala 106:25]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SourceB.scala 102:20]
      probes_0_valid <= 1'h0; // @[SourceB.scala 103:17]
    end else if (_T_34) begin // @[SourceB.scala 87:15]
      probes_0_valid <= 1'h0;
    end else if (alloc) begin // @[SourceB.scala 66:24]
      probes_0_valid <= _GEN_0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SourceB.scala 111:53]
      probes_0_rdy <= 1'h0; // @[SourceB.scala 112:13]
    end else begin
      probes_0_rdy <= probes_0_valid & ~_GEN_83 | _GEN_36;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SourceB.scala 87:15]
      probes_0_waitG <= 5'h0; // @[SourceB.scala 91:{13,13} 66:24]
    end else if (alloc) begin // @[SourceB.scala 66:24]
      if (2'h0 == insertIdx) begin
        probes_0_waitG <= _probes_insertIdx_waitG;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SourceB.scala 87:15]
      probes_0_task_tag <= 22'h0; // @[SourceB.scala 92:{13,13} 66:24]
    end else if (alloc) begin // @[SourceB.scala 66:24]
      if (2'h0 == insertIdx) begin
        probes_0_task_tag <= io_task_bits_tag;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SourceB.scala 87:15]
      probes_0_task_set <= 7'h0; // @[SourceB.scala 92:{13,13} 66:24]
    end else if (alloc) begin // @[SourceB.scala 66:24]
      if (2'h0 == insertIdx) begin
        probes_0_task_set <= io_task_bits_set;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SourceB.scala 87:15]
      probes_0_task_opcode <= 3'h0; // @[SourceB.scala 92:{13,13} 66:24]
    end else if (alloc) begin // @[SourceB.scala 66:24]
      if (2'h0 == insertIdx) begin
        probes_0_task_opcode <= io_task_bits_opcode;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SourceB.scala 87:15]
      probes_0_task_param <= 2'h0; // @[SourceB.scala 92:{13,13} 66:24]
    end else if (alloc) begin // @[SourceB.scala 66:24]
      if (2'h0 == insertIdx) begin
        probes_0_task_param <= io_task_bits_param;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SourceB.scala 102:20]
      probes_1_valid <= 1'h0; // @[SourceB.scala 103:17]
    end else if (_T_35) begin // @[SourceB.scala 87:15]
      probes_1_valid <= 1'h0;
    end else if (alloc) begin // @[SourceB.scala 66:24]
      probes_1_valid <= _GEN_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SourceB.scala 111:53]
      probes_1_rdy <= 1'h0; // @[SourceB.scala 112:13]
    end else begin
      probes_1_rdy <= probes_1_valid & ~_GEN_100 | _GEN_37;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SourceB.scala 87:15]
      probes_1_waitG <= 5'h0; // @[SourceB.scala 91:{13,13} 66:24]
    end else if (alloc) begin // @[SourceB.scala 66:24]
      if (2'h1 == insertIdx) begin
        probes_1_waitG <= _probes_insertIdx_waitG;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SourceB.scala 87:15]
      probes_1_task_tag <= 22'h0; // @[SourceB.scala 92:{13,13} 66:24]
    end else if (alloc) begin // @[SourceB.scala 66:24]
      if (2'h1 == insertIdx) begin
        probes_1_task_tag <= io_task_bits_tag;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SourceB.scala 87:15]
      probes_1_task_set <= 7'h0; // @[SourceB.scala 92:{13,13} 66:24]
    end else if (alloc) begin // @[SourceB.scala 66:24]
      if (2'h1 == insertIdx) begin
        probes_1_task_set <= io_task_bits_set;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SourceB.scala 87:15]
      probes_1_task_opcode <= 3'h0; // @[SourceB.scala 92:{13,13} 66:24]
    end else if (alloc) begin // @[SourceB.scala 66:24]
      if (2'h1 == insertIdx) begin
        probes_1_task_opcode <= io_task_bits_opcode;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SourceB.scala 87:15]
      probes_1_task_param <= 2'h0; // @[SourceB.scala 92:{13,13} 66:24]
    end else if (alloc) begin // @[SourceB.scala 66:24]
      if (2'h1 == insertIdx) begin
        probes_1_task_param <= io_task_bits_param;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SourceB.scala 102:20]
      probes_2_valid <= 1'h0; // @[SourceB.scala 103:17]
    end else if (_T_36) begin // @[SourceB.scala 87:15]
      probes_2_valid <= 1'h0;
    end else if (alloc) begin // @[SourceB.scala 66:24]
      probes_2_valid <= _GEN_2;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SourceB.scala 111:53]
      probes_2_rdy <= 1'h0; // @[SourceB.scala 112:13]
    end else begin
      probes_2_rdy <= probes_2_valid & ~_GEN_117 | _GEN_38;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SourceB.scala 87:15]
      probes_2_waitG <= 5'h0; // @[SourceB.scala 91:{13,13} 66:24]
    end else if (alloc) begin // @[SourceB.scala 66:24]
      if (2'h2 == insertIdx) begin
        probes_2_waitG <= _probes_insertIdx_waitG;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SourceB.scala 87:15]
      probes_2_task_tag <= 22'h0; // @[SourceB.scala 92:{13,13} 66:24]
    end else if (alloc) begin // @[SourceB.scala 66:24]
      if (2'h2 == insertIdx) begin
        probes_2_task_tag <= io_task_bits_tag;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SourceB.scala 87:15]
      probes_2_task_set <= 7'h0; // @[SourceB.scala 92:{13,13} 66:24]
    end else if (alloc) begin // @[SourceB.scala 66:24]
      if (2'h2 == insertIdx) begin
        probes_2_task_set <= io_task_bits_set;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SourceB.scala 87:15]
      probes_2_task_opcode <= 3'h0; // @[SourceB.scala 92:{13,13} 66:24]
    end else if (alloc) begin // @[SourceB.scala 66:24]
      if (2'h2 == insertIdx) begin
        probes_2_task_opcode <= io_task_bits_opcode;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SourceB.scala 87:15]
      probes_2_task_param <= 2'h0; // @[SourceB.scala 92:{13,13} 66:24]
    end else if (alloc) begin // @[SourceB.scala 66:24]
      if (2'h2 == insertIdx) begin
        probes_2_task_param <= io_task_bits_param;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SourceB.scala 102:20]
      probes_3_valid <= 1'h0; // @[SourceB.scala 103:17]
    end else if (_T_37) begin // @[SourceB.scala 87:15]
      probes_3_valid <= 1'h0;
    end else if (alloc) begin // @[SourceB.scala 66:24]
      probes_3_valid <= _GEN_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SourceB.scala 111:53]
      probes_3_rdy <= 1'h0; // @[SourceB.scala 112:13]
    end else begin
      probes_3_rdy <= probes_3_valid & ~_GEN_134 | _GEN_39;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SourceB.scala 87:15]
      probes_3_waitG <= 5'h0; // @[SourceB.scala 91:{13,13} 66:24]
    end else if (alloc) begin // @[SourceB.scala 66:24]
      if (2'h3 == insertIdx) begin
        probes_3_waitG <= _probes_insertIdx_waitG;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SourceB.scala 87:15]
      probes_3_task_tag <= 22'h0; // @[SourceB.scala 92:{13,13} 66:24]
    end else if (alloc) begin // @[SourceB.scala 66:24]
      if (2'h3 == insertIdx) begin
        probes_3_task_tag <= io_task_bits_tag;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SourceB.scala 87:15]
      probes_3_task_set <= 7'h0; // @[SourceB.scala 92:{13,13} 66:24]
    end else if (alloc) begin // @[SourceB.scala 66:24]
      if (2'h3 == insertIdx) begin
        probes_3_task_set <= io_task_bits_set;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SourceB.scala 87:15]
      probes_3_task_opcode <= 3'h0; // @[SourceB.scala 92:{13,13} 66:24]
    end else if (alloc) begin // @[SourceB.scala 66:24]
      if (2'h3 == insertIdx) begin
        probes_3_task_opcode <= io_task_bits_opcode;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SourceB.scala 87:15]
      probes_3_task_param <= 2'h0; // @[SourceB.scala 92:{13,13} 66:24]
    end else if (alloc) begin // @[SourceB.scala 66:24]
      if (2'h3 == insertIdx) begin
        probes_3_task_param <= io_task_bits_param;
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
  _RAND_0 = {1{`RANDOM}};
  probes_0_valid = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  probes_0_rdy = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  probes_0_waitG = _RAND_2[4:0];
  _RAND_3 = {1{`RANDOM}};
  probes_0_task_tag = _RAND_3[21:0];
  _RAND_4 = {1{`RANDOM}};
  probes_0_task_set = _RAND_4[6:0];
  _RAND_5 = {1{`RANDOM}};
  probes_0_task_opcode = _RAND_5[2:0];
  _RAND_6 = {1{`RANDOM}};
  probes_0_task_param = _RAND_6[1:0];
  _RAND_7 = {1{`RANDOM}};
  probes_1_valid = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  probes_1_rdy = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  probes_1_waitG = _RAND_9[4:0];
  _RAND_10 = {1{`RANDOM}};
  probes_1_task_tag = _RAND_10[21:0];
  _RAND_11 = {1{`RANDOM}};
  probes_1_task_set = _RAND_11[6:0];
  _RAND_12 = {1{`RANDOM}};
  probes_1_task_opcode = _RAND_12[2:0];
  _RAND_13 = {1{`RANDOM}};
  probes_1_task_param = _RAND_13[1:0];
  _RAND_14 = {1{`RANDOM}};
  probes_2_valid = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  probes_2_rdy = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  probes_2_waitG = _RAND_16[4:0];
  _RAND_17 = {1{`RANDOM}};
  probes_2_task_tag = _RAND_17[21:0];
  _RAND_18 = {1{`RANDOM}};
  probes_2_task_set = _RAND_18[6:0];
  _RAND_19 = {1{`RANDOM}};
  probes_2_task_opcode = _RAND_19[2:0];
  _RAND_20 = {1{`RANDOM}};
  probes_2_task_param = _RAND_20[1:0];
  _RAND_21 = {1{`RANDOM}};
  probes_3_valid = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  probes_3_rdy = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  probes_3_waitG = _RAND_23[4:0];
  _RAND_24 = {1{`RANDOM}};
  probes_3_task_tag = _RAND_24[21:0];
  _RAND_25 = {1{`RANDOM}};
  probes_3_task_set = _RAND_25[6:0];
  _RAND_26 = {1{`RANDOM}};
  probes_3_task_opcode = _RAND_26[2:0];
  _RAND_27 = {1{`RANDOM}};
  probes_3_task_param = _RAND_27[1:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    probes_0_valid = 1'h0;
  end
  if (reset) begin
    probes_0_rdy = 1'h0;
  end
  if (reset) begin
    probes_0_waitG = 5'h0;
  end
  if (reset) begin
    probes_0_task_tag = 22'h0;
  end
  if (reset) begin
    probes_0_task_set = 7'h0;
  end
  if (reset) begin
    probes_0_task_opcode = 3'h0;
  end
  if (reset) begin
    probes_0_task_param = 2'h0;
  end
  if (reset) begin
    probes_1_valid = 1'h0;
  end
  if (reset) begin
    probes_1_rdy = 1'h0;
  end
  if (reset) begin
    probes_1_waitG = 5'h0;
  end
  if (reset) begin
    probes_1_task_tag = 22'h0;
  end
  if (reset) begin
    probes_1_task_set = 7'h0;
  end
  if (reset) begin
    probes_1_task_opcode = 3'h0;
  end
  if (reset) begin
    probes_1_task_param = 2'h0;
  end
  if (reset) begin
    probes_2_valid = 1'h0;
  end
  if (reset) begin
    probes_2_rdy = 1'h0;
  end
  if (reset) begin
    probes_2_waitG = 5'h0;
  end
  if (reset) begin
    probes_2_task_tag = 22'h0;
  end
  if (reset) begin
    probes_2_task_set = 7'h0;
  end
  if (reset) begin
    probes_2_task_opcode = 3'h0;
  end
  if (reset) begin
    probes_2_task_param = 2'h0;
  end
  if (reset) begin
    probes_3_valid = 1'h0;
  end
  if (reset) begin
    probes_3_rdy = 1'h0;
  end
  if (reset) begin
    probes_3_waitG = 5'h0;
  end
  if (reset) begin
    probes_3_task_tag = 22'h0;
  end
  if (reset) begin
    probes_3_task_set = 7'h0;
  end
  if (reset) begin
    probes_3_task_opcode = 3'h0;
  end
  if (reset) begin
    probes_3_task_param = 2'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

