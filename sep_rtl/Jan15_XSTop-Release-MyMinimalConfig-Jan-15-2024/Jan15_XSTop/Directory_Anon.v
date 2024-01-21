module Directory_Anon(
  input         clock,
  input         reset,
  output        io_read_ready,
  input         io_read_valid,
  input  [21:0] io_read_bits_tag,
  input  [7:0]  io_read_bits_set,
  input  [2:0]  io_read_bits_replacerInfo_channel,
  input  [2:0]  io_read_bits_replacerInfo_opcode,
  output        io_resp_valid,
  output        io_resp_bits_hit,
  output [2:0]  io_resp_bits_way,
  output [21:0] io_resp_bits_tag,
  output        io_resp_bits_dir_dirty,
  output [1:0]  io_resp_bits_dir_state,
  output [1:0]  io_resp_bits_dir_clientStates_0,
  output        io_tag_wready,
  input         io_tag_wvalid,
  input  [21:0] io_tag_wtag,
  input  [7:0]  io_tag_wset,
  input  [2:0]  io_tag_wway,
  input         io_dir_wvalid,
  input  [7:0]  io_dir_wset,
  input  [2:0]  io_dir_wway,
  input         io_dir_wdir_dirty,
  input  [1:0]  io_dir_wdir_state,
  input  [1:0]  io_dir_wdir_clientStates_0
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
`endif // RANDOMIZE_REG_INIT
  wire  metaArray_clock; // @[BaseDirectory.scala 107:25]
  wire  metaArray_io_rreq_valid; // @[BaseDirectory.scala 107:25]
  wire [7:0] metaArray_io_rreq_bits_setIdx; // @[BaseDirectory.scala 107:25]
  wire  metaArray_io_rresp_data_0_dirty; // @[BaseDirectory.scala 107:25]
  wire [1:0] metaArray_io_rresp_data_0_state; // @[BaseDirectory.scala 107:25]
  wire [1:0] metaArray_io_rresp_data_0_clientStates_0; // @[BaseDirectory.scala 107:25]
  wire  metaArray_io_rresp_data_1_dirty; // @[BaseDirectory.scala 107:25]
  wire [1:0] metaArray_io_rresp_data_1_state; // @[BaseDirectory.scala 107:25]
  wire [1:0] metaArray_io_rresp_data_1_clientStates_0; // @[BaseDirectory.scala 107:25]
  wire  metaArray_io_rresp_data_2_dirty; // @[BaseDirectory.scala 107:25]
  wire [1:0] metaArray_io_rresp_data_2_state; // @[BaseDirectory.scala 107:25]
  wire [1:0] metaArray_io_rresp_data_2_clientStates_0; // @[BaseDirectory.scala 107:25]
  wire  metaArray_io_rresp_data_3_dirty; // @[BaseDirectory.scala 107:25]
  wire [1:0] metaArray_io_rresp_data_3_state; // @[BaseDirectory.scala 107:25]
  wire [1:0] metaArray_io_rresp_data_3_clientStates_0; // @[BaseDirectory.scala 107:25]
  wire  metaArray_io_rresp_data_4_dirty; // @[BaseDirectory.scala 107:25]
  wire [1:0] metaArray_io_rresp_data_4_state; // @[BaseDirectory.scala 107:25]
  wire [1:0] metaArray_io_rresp_data_4_clientStates_0; // @[BaseDirectory.scala 107:25]
  wire  metaArray_io_rresp_data_5_dirty; // @[BaseDirectory.scala 107:25]
  wire [1:0] metaArray_io_rresp_data_5_state; // @[BaseDirectory.scala 107:25]
  wire [1:0] metaArray_io_rresp_data_5_clientStates_0; // @[BaseDirectory.scala 107:25]
  wire  metaArray_io_rresp_data_6_dirty; // @[BaseDirectory.scala 107:25]
  wire [1:0] metaArray_io_rresp_data_6_state; // @[BaseDirectory.scala 107:25]
  wire [1:0] metaArray_io_rresp_data_6_clientStates_0; // @[BaseDirectory.scala 107:25]
  wire  metaArray_io_rresp_data_7_dirty; // @[BaseDirectory.scala 107:25]
  wire [1:0] metaArray_io_rresp_data_7_state; // @[BaseDirectory.scala 107:25]
  wire [1:0] metaArray_io_rresp_data_7_clientStates_0; // @[BaseDirectory.scala 107:25]
  wire  metaArray_io_wreq_valid; // @[BaseDirectory.scala 107:25]
  wire [7:0] metaArray_io_wreq_bits_setIdx; // @[BaseDirectory.scala 107:25]
  wire  metaArray_io_wreq_bits_data_0_dirty; // @[BaseDirectory.scala 107:25]
  wire [1:0] metaArray_io_wreq_bits_data_0_state; // @[BaseDirectory.scala 107:25]
  wire [1:0] metaArray_io_wreq_bits_data_0_clientStates_0; // @[BaseDirectory.scala 107:25]
  wire  metaArray_io_wreq_bits_data_1_dirty; // @[BaseDirectory.scala 107:25]
  wire [1:0] metaArray_io_wreq_bits_data_1_state; // @[BaseDirectory.scala 107:25]
  wire [1:0] metaArray_io_wreq_bits_data_1_clientStates_0; // @[BaseDirectory.scala 107:25]
  wire  metaArray_io_wreq_bits_data_2_dirty; // @[BaseDirectory.scala 107:25]
  wire [1:0] metaArray_io_wreq_bits_data_2_state; // @[BaseDirectory.scala 107:25]
  wire [1:0] metaArray_io_wreq_bits_data_2_clientStates_0; // @[BaseDirectory.scala 107:25]
  wire  metaArray_io_wreq_bits_data_3_dirty; // @[BaseDirectory.scala 107:25]
  wire [1:0] metaArray_io_wreq_bits_data_3_state; // @[BaseDirectory.scala 107:25]
  wire [1:0] metaArray_io_wreq_bits_data_3_clientStates_0; // @[BaseDirectory.scala 107:25]
  wire  metaArray_io_wreq_bits_data_4_dirty; // @[BaseDirectory.scala 107:25]
  wire [1:0] metaArray_io_wreq_bits_data_4_state; // @[BaseDirectory.scala 107:25]
  wire [1:0] metaArray_io_wreq_bits_data_4_clientStates_0; // @[BaseDirectory.scala 107:25]
  wire  metaArray_io_wreq_bits_data_5_dirty; // @[BaseDirectory.scala 107:25]
  wire [1:0] metaArray_io_wreq_bits_data_5_state; // @[BaseDirectory.scala 107:25]
  wire [1:0] metaArray_io_wreq_bits_data_5_clientStates_0; // @[BaseDirectory.scala 107:25]
  wire  metaArray_io_wreq_bits_data_6_dirty; // @[BaseDirectory.scala 107:25]
  wire [1:0] metaArray_io_wreq_bits_data_6_state; // @[BaseDirectory.scala 107:25]
  wire [1:0] metaArray_io_wreq_bits_data_6_clientStates_0; // @[BaseDirectory.scala 107:25]
  wire  metaArray_io_wreq_bits_data_7_dirty; // @[BaseDirectory.scala 107:25]
  wire [1:0] metaArray_io_wreq_bits_data_7_state; // @[BaseDirectory.scala 107:25]
  wire [1:0] metaArray_io_wreq_bits_data_7_clientStates_0; // @[BaseDirectory.scala 107:25]
  wire [7:0] metaArray_io_wreq_bits_waymask; // @[BaseDirectory.scala 107:25]
  wire  clkGate_TE; // @[BaseDirectory.scala 109:23]
  wire  clkGate_E; // @[BaseDirectory.scala 109:23]
  wire  clkGate_CK; // @[BaseDirectory.scala 109:23]
  wire  clkGate_Q; // @[BaseDirectory.scala 109:23]
  wire  tagArray_clock; // @[BaseDirectory.scala 131:24]
  wire  tagArray_io_rreq_valid; // @[BaseDirectory.scala 131:24]
  wire [7:0] tagArray_io_rreq_bits_setIdx; // @[BaseDirectory.scala 131:24]
  wire [21:0] tagArray_io_rresp_data_0; // @[BaseDirectory.scala 131:24]
  wire [21:0] tagArray_io_rresp_data_1; // @[BaseDirectory.scala 131:24]
  wire [21:0] tagArray_io_rresp_data_2; // @[BaseDirectory.scala 131:24]
  wire [21:0] tagArray_io_rresp_data_3; // @[BaseDirectory.scala 131:24]
  wire [21:0] tagArray_io_rresp_data_4; // @[BaseDirectory.scala 131:24]
  wire [21:0] tagArray_io_rresp_data_5; // @[BaseDirectory.scala 131:24]
  wire [21:0] tagArray_io_rresp_data_6; // @[BaseDirectory.scala 131:24]
  wire [21:0] tagArray_io_rresp_data_7; // @[BaseDirectory.scala 131:24]
  wire  tagArray_io_wreq_valid; // @[BaseDirectory.scala 131:24]
  wire [7:0] tagArray_io_wreq_bits_setIdx; // @[BaseDirectory.scala 131:24]
  wire [21:0] tagArray_io_wreq_bits_data_0; // @[BaseDirectory.scala 131:24]
  wire [21:0] tagArray_io_wreq_bits_data_1; // @[BaseDirectory.scala 131:24]
  wire [21:0] tagArray_io_wreq_bits_data_2; // @[BaseDirectory.scala 131:24]
  wire [21:0] tagArray_io_wreq_bits_data_3; // @[BaseDirectory.scala 131:24]
  wire [21:0] tagArray_io_wreq_bits_data_4; // @[BaseDirectory.scala 131:24]
  wire [21:0] tagArray_io_wreq_bits_data_5; // @[BaseDirectory.scala 131:24]
  wire [21:0] tagArray_io_wreq_bits_data_6; // @[BaseDirectory.scala 131:24]
  wire [21:0] tagArray_io_wreq_bits_data_7; // @[BaseDirectory.scala 131:24]
  wire [7:0] tagArray_io_wreq_bits_waymask; // @[BaseDirectory.scala 131:24]
  wire  repl_state_replacer_sram_clock; // @[BaseDirectory.scala 179:31]
  wire  repl_state_replacer_sram_reset; // @[BaseDirectory.scala 179:31]
  wire  repl_state_replacer_sram_io_rreq_valid; // @[BaseDirectory.scala 179:31]
  wire [7:0] repl_state_replacer_sram_io_rreq_bits_setIdx; // @[BaseDirectory.scala 179:31]
  wire [6:0] repl_state_replacer_sram_io_rresp_data_0; // @[BaseDirectory.scala 179:31]
  wire  repl_state_replacer_sram_io_wreq_valid; // @[BaseDirectory.scala 179:31]
  wire [7:0] repl_state_replacer_sram_io_wreq_bits_setIdx; // @[BaseDirectory.scala 179:31]
  wire [6:0] repl_state_replacer_sram_io_wreq_bits_data_0; // @[BaseDirectory.scala 179:31]
  reg  resetFinish; // @[BaseDirectory.scala 105:28]
  reg [7:0] resetIdx; // @[BaseDirectory.scala 106:25]
  reg  clk_en; // @[BaseDirectory.scala 110:23]
  reg  replacer_wen; // @[BaseDirectory.scala 119:29]
  wire  _T_2 = io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
  reg [21:0] reqReg_tag; // @[Reg.scala 16:16]
  reg [7:0] reqReg_set; // @[Reg.scala 16:16]
  reg [2:0] reqReg_replacerInfo_channel; // @[Reg.scala 16:16]
  reg [2:0] reqReg_replacerInfo_opcode; // @[Reg.scala 16:16]
  reg  reqValidReg; // @[BaseDirectory.scala 162:28]
  reg  repl_state_repl_state_hold_REG; // @[BaseDirectory.scala 182:55]
  reg [6:0] repl_state_repl_state_hold_r; // @[Reg.scala 28:20]
  wire [6:0] _GEN_7 = repl_state_repl_state_hold_REG ? repl_state_replacer_sram_io_rresp_data_0 :
    repl_state_repl_state_hold_r; // @[Reg.scala 29:18 28:20 29:22]
  wire [21:0] tagRead_0 = tagArray_io_rresp_data_0; // @[BaseDirectory.scala 129:21 154:11]
  wire  tagMatchVec_0 = tagRead_0 == reqReg_tag; // @[BaseDirectory.scala 190:51]
  wire  metaValidVec_0 = metaArray_io_rresp_data_0_state != 2'h0; // @[Directory.scala 198:54]
  wire  hitVec_0 = tagMatchVec_0 & metaValidVec_0; // @[BaseDirectory.scala 192:60]
  wire [21:0] tagRead_1 = tagArray_io_rresp_data_1; // @[BaseDirectory.scala 129:21 154:11]
  wire  tagMatchVec_1 = tagRead_1 == reqReg_tag; // @[BaseDirectory.scala 190:51]
  wire  metaValidVec_1 = metaArray_io_rresp_data_1_state != 2'h0; // @[Directory.scala 198:54]
  wire  hitVec_1 = tagMatchVec_1 & metaValidVec_1; // @[BaseDirectory.scala 192:60]
  wire [21:0] tagRead_2 = tagArray_io_rresp_data_2; // @[BaseDirectory.scala 129:21 154:11]
  wire  tagMatchVec_2 = tagRead_2 == reqReg_tag; // @[BaseDirectory.scala 190:51]
  wire  metaValidVec_2 = metaArray_io_rresp_data_2_state != 2'h0; // @[Directory.scala 198:54]
  wire  hitVec_2 = tagMatchVec_2 & metaValidVec_2; // @[BaseDirectory.scala 192:60]
  wire [21:0] tagRead_3 = tagArray_io_rresp_data_3; // @[BaseDirectory.scala 129:21 154:11]
  wire  tagMatchVec_3 = tagRead_3 == reqReg_tag; // @[BaseDirectory.scala 190:51]
  wire  metaValidVec_3 = metaArray_io_rresp_data_3_state != 2'h0; // @[Directory.scala 198:54]
  wire  hitVec_3 = tagMatchVec_3 & metaValidVec_3; // @[BaseDirectory.scala 192:60]
  wire [21:0] tagRead_4 = tagArray_io_rresp_data_4; // @[BaseDirectory.scala 129:21 154:11]
  wire  tagMatchVec_4 = tagRead_4 == reqReg_tag; // @[BaseDirectory.scala 190:51]
  wire  metaValidVec_4 = metaArray_io_rresp_data_4_state != 2'h0; // @[Directory.scala 198:54]
  wire  hitVec_4 = tagMatchVec_4 & metaValidVec_4; // @[BaseDirectory.scala 192:60]
  wire [21:0] tagRead_5 = tagArray_io_rresp_data_5; // @[BaseDirectory.scala 129:21 154:11]
  wire  tagMatchVec_5 = tagRead_5 == reqReg_tag; // @[BaseDirectory.scala 190:51]
  wire  metaValidVec_5 = metaArray_io_rresp_data_5_state != 2'h0; // @[Directory.scala 198:54]
  wire  hitVec_5 = tagMatchVec_5 & metaValidVec_5; // @[BaseDirectory.scala 192:60]
  wire [21:0] tagRead_6 = tagArray_io_rresp_data_6; // @[BaseDirectory.scala 129:21 154:11]
  wire  tagMatchVec_6 = tagRead_6 == reqReg_tag; // @[BaseDirectory.scala 190:51]
  wire  metaValidVec_6 = metaArray_io_rresp_data_6_state != 2'h0; // @[Directory.scala 198:54]
  wire  hitVec_6 = tagMatchVec_6 & metaValidVec_6; // @[BaseDirectory.scala 192:60]
  wire [21:0] tagRead_7 = tagArray_io_rresp_data_7; // @[BaseDirectory.scala 129:21 154:11]
  wire  tagMatchVec_7 = tagRead_7 == reqReg_tag; // @[BaseDirectory.scala 190:51]
  wire  metaValidVec_7 = metaArray_io_rresp_data_7_state != 2'h0; // @[Directory.scala 198:54]
  wire  hitVec_7 = tagMatchVec_7 & metaValidVec_7; // @[BaseDirectory.scala 192:60]
  wire [7:0] _hit_s1_T = {hitVec_0,hitVec_1,hitVec_2,hitVec_3,hitVec_4,hitVec_5,hitVec_6,hitVec_7}; // @[Cat.scala 31:58]
  wire  hit_s1 = |_hit_s1_T; // @[BaseDirectory.scala 203:28]
  wire [7:0] _hitWay_T = {hitVec_7,hitVec_6,hitVec_5,hitVec_4,hitVec_3,hitVec_2,hitVec_1,hitVec_0}; // @[Cat.scala 31:58]
  wire [3:0] hitWay_hi_1 = _hitWay_T[7:4]; // @[OneHot.scala 30:18]
  wire  _hitWay_T_1 = |hitWay_hi_1; // @[OneHot.scala 32:14]
  wire [3:0] hitWay_lo_1 = _hitWay_T[3:0]; // @[OneHot.scala 31:18]
  wire [3:0] _hitWay_T_2 = hitWay_hi_1 | hitWay_lo_1; // @[OneHot.scala 32:28]
  wire [1:0] hitWay_hi_2 = _hitWay_T_2[3:2]; // @[OneHot.scala 30:18]
  wire  _hitWay_T_3 = |hitWay_hi_2; // @[OneHot.scala 32:14]
  wire [1:0] hitWay_lo_2 = _hitWay_T_2[1:0]; // @[OneHot.scala 31:18]
  wire [1:0] _hitWay_T_4 = hitWay_hi_2 | hitWay_lo_2; // @[OneHot.scala 32:28]
  wire [2:0] hitWay = {_hitWay_T_1,_hitWay_T_3,_hitWay_T_4[1]}; // @[Cat.scala 31:58]
  wire  invalid_vec_0 = metaArray_io_rresp_data_0_state == 2'h0; // @[Directory.scala 201:43]
  wire  invalid_vec_1 = metaArray_io_rresp_data_1_state == 2'h0; // @[Directory.scala 201:43]
  wire  invalid_vec_2 = metaArray_io_rresp_data_2_state == 2'h0; // @[Directory.scala 201:43]
  wire  invalid_vec_3 = metaArray_io_rresp_data_3_state == 2'h0; // @[Directory.scala 201:43]
  wire  invalid_vec_4 = metaArray_io_rresp_data_4_state == 2'h0; // @[Directory.scala 201:43]
  wire  invalid_vec_5 = metaArray_io_rresp_data_5_state == 2'h0; // @[Directory.scala 201:43]
  wire  invalid_vec_6 = metaArray_io_rresp_data_6_state == 2'h0; // @[Directory.scala 201:43]
  wire  invalid_vec_7 = metaArray_io_rresp_data_7_state == 2'h0; // @[Directory.scala 201:43]
  wire [7:0] _has_invalid_way_T = {invalid_vec_0,invalid_vec_1,invalid_vec_2,invalid_vec_3,invalid_vec_4,invalid_vec_5,
    invalid_vec_6,invalid_vec_7}; // @[Cat.scala 31:58]
  wire  has_invalid_way = |_has_invalid_way_T; // @[Directory.scala 202:47]
  wire  trunk_vec_0 = metaArray_io_rresp_data_0_state == 2'h2; // @[Directory.scala 206:41]
  wire  trunk_vec_1 = metaArray_io_rresp_data_1_state == 2'h2; // @[Directory.scala 206:41]
  wire  trunk_vec_2 = metaArray_io_rresp_data_2_state == 2'h2; // @[Directory.scala 206:41]
  wire  trunk_vec_3 = metaArray_io_rresp_data_3_state == 2'h2; // @[Directory.scala 206:41]
  wire  trunk_vec_4 = metaArray_io_rresp_data_4_state == 2'h2; // @[Directory.scala 206:41]
  wire  trunk_vec_5 = metaArray_io_rresp_data_5_state == 2'h2; // @[Directory.scala 206:41]
  wire  trunk_vec_6 = metaArray_io_rresp_data_6_state == 2'h2; // @[Directory.scala 206:41]
  wire  trunk_vec_7 = metaArray_io_rresp_data_7_state == 2'h2; // @[Directory.scala 206:41]
  wire [7:0] _has_trunk_way_T = {trunk_vec_0,trunk_vec_1,trunk_vec_2,trunk_vec_3,trunk_vec_4,trunk_vec_5,trunk_vec_6,
    trunk_vec_7}; // @[Cat.scala 31:58]
  wire  has_trunk_way = |_has_trunk_way_T; // @[Directory.scala 207:43]
  wire  inv = has_invalid_way | has_trunk_way; // @[Directory.scala 211:23]
  wire [2:0] _invalid_way_T_1 = invalid_vec_0 ? 3'h0 : 3'h1; // @[ParallelMux.scala 90:77]
  wire [2:0] _invalid_way_T_3 = invalid_vec_2 ? 3'h2 : 3'h3; // @[ParallelMux.scala 90:77]
  wire [2:0] _invalid_way_T_5 = invalid_vec_0 | invalid_vec_1 ? _invalid_way_T_1 : _invalid_way_T_3; // @[ParallelMux.scala 90:77]
  wire [2:0] _invalid_way_T_7 = invalid_vec_4 ? 3'h4 : 3'h5; // @[ParallelMux.scala 90:77]
  wire [2:0] _invalid_way_T_9 = invalid_vec_6 ? 3'h6 : 3'h7; // @[ParallelMux.scala 90:77]
  wire [2:0] _invalid_way_T_11 = invalid_vec_4 | invalid_vec_5 ? _invalid_way_T_7 : _invalid_way_T_9; // @[ParallelMux.scala 90:77]
  wire [2:0] invalid_way = invalid_vec_0 | invalid_vec_1 | (invalid_vec_2 | invalid_vec_3) ? _invalid_way_T_5 :
    _invalid_way_T_11; // @[ParallelMux.scala 90:77]
  wire  replaceWay_left_subtree_older = _GEN_7[6]; // @[Replacement.scala 243:38]
  wire [2:0] replaceWay_left_subtree_state = _GEN_7[5:3]; // @[package.scala 154:13]
  wire  replaceWay_left_subtree_older_1 = replaceWay_left_subtree_state[2]; // @[Replacement.scala 243:38]
  wire  replaceWay_left_subtree_state_1 = replaceWay_left_subtree_state[1]; // @[package.scala 154:13]
  wire  replaceWay_right_subtree_state_1 = replaceWay_left_subtree_state[0]; // @[Replacement.scala 245:38]
  wire  _replaceWay_T_2 = replaceWay_left_subtree_older_1 ? replaceWay_left_subtree_state_1 :
    replaceWay_right_subtree_state_1; // @[Replacement.scala 250:16]
  wire [1:0] _replaceWay_T_3 = {replaceWay_left_subtree_older_1,_replaceWay_T_2}; // @[Cat.scala 31:58]
  wire [2:0] replaceWay_right_subtree_state = _GEN_7[2:0]; // @[Replacement.scala 245:38]
  wire  replaceWay_left_subtree_older_2 = replaceWay_right_subtree_state[2]; // @[Replacement.scala 243:38]
  wire  replaceWay_left_subtree_state_2 = replaceWay_right_subtree_state[1]; // @[package.scala 154:13]
  wire  replaceWay_right_subtree_state_2 = replaceWay_right_subtree_state[0]; // @[Replacement.scala 245:38]
  wire  _replaceWay_T_6 = replaceWay_left_subtree_older_2 ? replaceWay_left_subtree_state_2 :
    replaceWay_right_subtree_state_2; // @[Replacement.scala 250:16]
  wire [1:0] _replaceWay_T_7 = {replaceWay_left_subtree_older_2,_replaceWay_T_6}; // @[Cat.scala 31:58]
  wire [1:0] _replaceWay_T_8 = replaceWay_left_subtree_older ? _replaceWay_T_3 : _replaceWay_T_7; // @[Replacement.scala 250:16]
  wire [2:0] replaceWay = {replaceWay_left_subtree_older,_replaceWay_T_8}; // @[Cat.scala 31:58]
  wire [1:0] _repl_way_is_trunk_WIRE_7_state = metaArray_io_rresp_data_7_state; // @[Directory.scala 209:{36,36}]
  wire [1:0] _repl_way_is_trunk_WIRE_6_state = metaArray_io_rresp_data_6_state; // @[Directory.scala 209:{36,36}]
  wire [1:0] _repl_way_is_trunk_WIRE_5_state = metaArray_io_rresp_data_5_state; // @[Directory.scala 209:{36,36}]
  wire [1:0] _repl_way_is_trunk_WIRE_4_state = metaArray_io_rresp_data_4_state; // @[Directory.scala 209:{36,36}]
  wire [1:0] _repl_way_is_trunk_WIRE_3_state = metaArray_io_rresp_data_3_state; // @[Directory.scala 209:{36,36}]
  wire [1:0] _repl_way_is_trunk_WIRE_2_state = metaArray_io_rresp_data_2_state; // @[Directory.scala 209:{36,36}]
  wire [1:0] _repl_way_is_trunk_WIRE_1_state = metaArray_io_rresp_data_1_state; // @[Directory.scala 209:{36,36}]
  wire [1:0] _repl_way_is_trunk_WIRE_0_state = metaArray_io_rresp_data_0_state; // @[Directory.scala 209:{36,36}]
  wire [1:0] _GEN_9 = 3'h1 == replaceWay ? _repl_way_is_trunk_WIRE_1_state : _repl_way_is_trunk_WIRE_0_state; // @[Directory.scala 209:{58,58}]
  wire [1:0] _GEN_10 = 3'h2 == replaceWay ? _repl_way_is_trunk_WIRE_2_state : _GEN_9; // @[Directory.scala 209:{58,58}]
  wire [1:0] _GEN_11 = 3'h3 == replaceWay ? _repl_way_is_trunk_WIRE_3_state : _GEN_10; // @[Directory.scala 209:{58,58}]
  wire [1:0] _GEN_12 = 3'h4 == replaceWay ? _repl_way_is_trunk_WIRE_4_state : _GEN_11; // @[Directory.scala 209:{58,58}]
  wire [1:0] _GEN_13 = 3'h5 == replaceWay ? _repl_way_is_trunk_WIRE_5_state : _GEN_12; // @[Directory.scala 209:{58,58}]
  wire [1:0] _GEN_14 = 3'h6 == replaceWay ? _repl_way_is_trunk_WIRE_6_state : _GEN_13; // @[Directory.scala 209:{58,58}]
  wire [1:0] _GEN_15 = 3'h7 == replaceWay ? _repl_way_is_trunk_WIRE_7_state : _GEN_14; // @[Directory.scala 209:{58,58}]
  wire  repl_way_is_trunk = _GEN_15 == 2'h2; // @[Directory.scala 209:58]
  wire [2:0] _trunk_way_T_1 = trunk_vec_0 ? 3'h0 : 3'h1; // @[ParallelMux.scala 90:77]
  wire [2:0] _trunk_way_T_3 = trunk_vec_2 ? 3'h2 : 3'h3; // @[ParallelMux.scala 90:77]
  wire [2:0] _trunk_way_T_5 = trunk_vec_0 | trunk_vec_1 ? _trunk_way_T_1 : _trunk_way_T_3; // @[ParallelMux.scala 90:77]
  wire [2:0] _trunk_way_T_7 = trunk_vec_4 ? 3'h4 : 3'h5; // @[ParallelMux.scala 90:77]
  wire [2:0] _trunk_way_T_9 = trunk_vec_6 ? 3'h6 : 3'h7; // @[ParallelMux.scala 90:77]
  wire [2:0] _trunk_way_T_11 = trunk_vec_4 | trunk_vec_5 ? _trunk_way_T_7 : _trunk_way_T_9; // @[ParallelMux.scala 90:77]
  wire [2:0] trunk_way = trunk_vec_0 | trunk_vec_1 | (trunk_vec_2 | trunk_vec_3) ? _trunk_way_T_5 : _trunk_way_T_11; // @[ParallelMux.scala 90:77]
  wire [2:0] _T_3 = repl_way_is_trunk ? replaceWay : trunk_way; // @[Directory.scala 212:44]
  wire [2:0] invalidWay = has_invalid_way ? invalid_way : _T_3; // @[Directory.scala 212:10]
  wire [2:0] chosenWay = inv ? invalidWay : replaceWay; // @[BaseDirectory.scala 196:22]
  wire [2:0] way_s1 = hit_s1 ? hitWay : chosenWay; // @[BaseDirectory.scala 204:48]
  wire  repl_state_next_state_set_left_older = ~way_s1[2]; // @[Replacement.scala 196:33]
  wire  repl_state_next_state_set_left_older_1 = ~way_s1[1]; // @[Replacement.scala 196:33]
  wire  _repl_state_next_state_T_3 = ~way_s1[0]; // @[Replacement.scala 218:7]
  wire  _repl_state_next_state_T_4 = repl_state_next_state_set_left_older_1 ? replaceWay_left_subtree_state_1 :
    _repl_state_next_state_T_3; // @[Replacement.scala 203:16]
  wire  _repl_state_next_state_T_8 = repl_state_next_state_set_left_older_1 ? _repl_state_next_state_T_3 :
    replaceWay_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _repl_state_next_state_T_9 = {repl_state_next_state_set_left_older_1,_repl_state_next_state_T_4,
    _repl_state_next_state_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _repl_state_next_state_T_10 = repl_state_next_state_set_left_older ? replaceWay_left_subtree_state :
    _repl_state_next_state_T_9; // @[Replacement.scala 203:16]
  wire  _repl_state_next_state_T_15 = repl_state_next_state_set_left_older_1 ? replaceWay_left_subtree_state_2 :
    _repl_state_next_state_T_3; // @[Replacement.scala 203:16]
  wire  _repl_state_next_state_T_19 = repl_state_next_state_set_left_older_1 ? _repl_state_next_state_T_3 :
    replaceWay_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _repl_state_next_state_T_20 = {repl_state_next_state_set_left_older_1,_repl_state_next_state_T_15,
    _repl_state_next_state_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _repl_state_next_state_T_21 = repl_state_next_state_set_left_older ? _repl_state_next_state_T_20 :
    replaceWay_right_subtree_state; // @[Replacement.scala 206:16]
  wire [3:0] repl_state_next_state_hi_2 = {repl_state_next_state_set_left_older,_repl_state_next_state_T_10}; // @[Cat.scala 31:58]
  reg [6:0] repl_state_REG; // @[BaseDirectory.scala 184:45]
  reg [7:0] repl_state_REG_1; // @[BaseDirectory.scala 184:66]
  reg  hit_s2; // @[Reg.scala 28:20]
  reg [2:0] way_s2; // @[Reg.scala 28:20]
  reg  metaAll_s2_0_dirty; // @[Reg.scala 16:16]
  reg [1:0] metaAll_s2_0_state; // @[Reg.scala 16:16]
  reg [1:0] metaAll_s2_0_clientStates_0; // @[Reg.scala 16:16]
  reg  metaAll_s2_1_dirty; // @[Reg.scala 16:16]
  reg [1:0] metaAll_s2_1_state; // @[Reg.scala 16:16]
  reg [1:0] metaAll_s2_1_clientStates_0; // @[Reg.scala 16:16]
  reg  metaAll_s2_2_dirty; // @[Reg.scala 16:16]
  reg [1:0] metaAll_s2_2_state; // @[Reg.scala 16:16]
  reg [1:0] metaAll_s2_2_clientStates_0; // @[Reg.scala 16:16]
  reg  metaAll_s2_3_dirty; // @[Reg.scala 16:16]
  reg [1:0] metaAll_s2_3_state; // @[Reg.scala 16:16]
  reg [1:0] metaAll_s2_3_clientStates_0; // @[Reg.scala 16:16]
  reg  metaAll_s2_4_dirty; // @[Reg.scala 16:16]
  reg [1:0] metaAll_s2_4_state; // @[Reg.scala 16:16]
  reg [1:0] metaAll_s2_4_clientStates_0; // @[Reg.scala 16:16]
  reg  metaAll_s2_5_dirty; // @[Reg.scala 16:16]
  reg [1:0] metaAll_s2_5_state; // @[Reg.scala 16:16]
  reg [1:0] metaAll_s2_5_clientStates_0; // @[Reg.scala 16:16]
  reg  metaAll_s2_6_dirty; // @[Reg.scala 16:16]
  reg [1:0] metaAll_s2_6_state; // @[Reg.scala 16:16]
  reg [1:0] metaAll_s2_6_clientStates_0; // @[Reg.scala 16:16]
  reg  metaAll_s2_7_dirty; // @[Reg.scala 16:16]
  reg [1:0] metaAll_s2_7_state; // @[Reg.scala 16:16]
  reg [1:0] metaAll_s2_7_clientStates_0; // @[Reg.scala 16:16]
  reg [21:0] tagAll_s2_0; // @[Reg.scala 16:16]
  reg [21:0] tagAll_s2_1; // @[Reg.scala 16:16]
  reg [21:0] tagAll_s2_2; // @[Reg.scala 16:16]
  reg [21:0] tagAll_s2_3; // @[Reg.scala 16:16]
  reg [21:0] tagAll_s2_4; // @[Reg.scala 16:16]
  reg [21:0] tagAll_s2_5; // @[Reg.scala 16:16]
  reg [21:0] tagAll_s2_6; // @[Reg.scala 16:16]
  reg [21:0] tagAll_s2_7; // @[Reg.scala 16:16]
  wire  _GEN_59 = 3'h1 == way_s2 ? metaAll_s2_1_dirty : metaAll_s2_0_dirty; // @[BaseDirectory.scala 219:{20,20}]
  wire  _GEN_60 = 3'h2 == way_s2 ? metaAll_s2_2_dirty : _GEN_59; // @[BaseDirectory.scala 219:{20,20}]
  wire  _GEN_61 = 3'h3 == way_s2 ? metaAll_s2_3_dirty : _GEN_60; // @[BaseDirectory.scala 219:{20,20}]
  wire  _GEN_62 = 3'h4 == way_s2 ? metaAll_s2_4_dirty : _GEN_61; // @[BaseDirectory.scala 219:{20,20}]
  wire  _GEN_63 = 3'h5 == way_s2 ? metaAll_s2_5_dirty : _GEN_62; // @[BaseDirectory.scala 219:{20,20}]
  wire  _GEN_64 = 3'h6 == way_s2 ? metaAll_s2_6_dirty : _GEN_63; // @[BaseDirectory.scala 219:{20,20}]
  wire [1:0] _GEN_67 = 3'h1 == way_s2 ? metaAll_s2_1_state : metaAll_s2_0_state; // @[BaseDirectory.scala 219:{20,20}]
  wire [1:0] _GEN_68 = 3'h2 == way_s2 ? metaAll_s2_2_state : _GEN_67; // @[BaseDirectory.scala 219:{20,20}]
  wire [1:0] _GEN_69 = 3'h3 == way_s2 ? metaAll_s2_3_state : _GEN_68; // @[BaseDirectory.scala 219:{20,20}]
  wire [1:0] _GEN_70 = 3'h4 == way_s2 ? metaAll_s2_4_state : _GEN_69; // @[BaseDirectory.scala 219:{20,20}]
  wire [1:0] _GEN_71 = 3'h5 == way_s2 ? metaAll_s2_5_state : _GEN_70; // @[BaseDirectory.scala 219:{20,20}]
  wire [1:0] _GEN_72 = 3'h6 == way_s2 ? metaAll_s2_6_state : _GEN_71; // @[BaseDirectory.scala 219:{20,20}]
  wire [1:0] _GEN_75 = 3'h1 == way_s2 ? metaAll_s2_1_clientStates_0 : metaAll_s2_0_clientStates_0; // @[BaseDirectory.scala 219:{20,20}]
  wire [1:0] _GEN_76 = 3'h2 == way_s2 ? metaAll_s2_2_clientStates_0 : _GEN_75; // @[BaseDirectory.scala 219:{20,20}]
  wire [1:0] _GEN_77 = 3'h3 == way_s2 ? metaAll_s2_3_clientStates_0 : _GEN_76; // @[BaseDirectory.scala 219:{20,20}]
  wire [1:0] _GEN_78 = 3'h4 == way_s2 ? metaAll_s2_4_clientStates_0 : _GEN_77; // @[BaseDirectory.scala 219:{20,20}]
  wire [1:0] _GEN_79 = 3'h5 == way_s2 ? metaAll_s2_5_clientStates_0 : _GEN_78; // @[BaseDirectory.scala 219:{20,20}]
  wire [1:0] _GEN_80 = 3'h6 == way_s2 ? metaAll_s2_6_clientStates_0 : _GEN_79; // @[BaseDirectory.scala 219:{20,20}]
  wire [21:0] _GEN_83 = 3'h1 == way_s2 ? tagAll_s2_1 : tagAll_s2_0; // @[BaseDirectory.scala 220:{20,20}]
  wire [21:0] _GEN_84 = 3'h2 == way_s2 ? tagAll_s2_2 : _GEN_83; // @[BaseDirectory.scala 220:{20,20}]
  wire [21:0] _GEN_85 = 3'h3 == way_s2 ? tagAll_s2_3 : _GEN_84; // @[BaseDirectory.scala 220:{20,20}]
  wire [21:0] _GEN_86 = 3'h4 == way_s2 ? tagAll_s2_4 : _GEN_85; // @[BaseDirectory.scala 220:{20,20}]
  wire [21:0] _GEN_87 = 3'h5 == way_s2 ? tagAll_s2_5 : _GEN_86; // @[BaseDirectory.scala 220:{20,20}]
  wire [21:0] _GEN_88 = 3'h6 == way_s2 ? tagAll_s2_6 : _GEN_87; // @[BaseDirectory.scala 220:{20,20}]
  wire  _T_4 = ~resetFinish; // @[BaseDirectory.scala 224:5]
  wire [7:0] _T_8 = 8'h1 << io_dir_wway; // @[OneHot.scala 57:35]
  wire [7:0] _resetIdx_T_1 = resetIdx - 8'h1; // @[BaseDirectory.scala 236:26]
  wire  update_release_update = reqReg_replacerInfo_channel[2] & reqReg_replacerInfo_opcode == 3'h7; // @[Directory.scala 105:42]
  wire  update_prefetch_update = reqReg_replacerInfo_channel[0] & reqReg_replacerInfo_opcode == 3'h5; // @[Directory.scala 106:43]
  wire  update = update_release_update | update_prefetch_update; // @[Directory.scala 107:20]
  SRAMTemplate_298 metaArray ( // @[BaseDirectory.scala 107:25]
    .clock(metaArray_clock),
    .io_rreq_valid(metaArray_io_rreq_valid),
    .io_rreq_bits_setIdx(metaArray_io_rreq_bits_setIdx),
    .io_rresp_data_0_dirty(metaArray_io_rresp_data_0_dirty),
    .io_rresp_data_0_state(metaArray_io_rresp_data_0_state),
    .io_rresp_data_0_clientStates_0(metaArray_io_rresp_data_0_clientStates_0),
    .io_rresp_data_1_dirty(metaArray_io_rresp_data_1_dirty),
    .io_rresp_data_1_state(metaArray_io_rresp_data_1_state),
    .io_rresp_data_1_clientStates_0(metaArray_io_rresp_data_1_clientStates_0),
    .io_rresp_data_2_dirty(metaArray_io_rresp_data_2_dirty),
    .io_rresp_data_2_state(metaArray_io_rresp_data_2_state),
    .io_rresp_data_2_clientStates_0(metaArray_io_rresp_data_2_clientStates_0),
    .io_rresp_data_3_dirty(metaArray_io_rresp_data_3_dirty),
    .io_rresp_data_3_state(metaArray_io_rresp_data_3_state),
    .io_rresp_data_3_clientStates_0(metaArray_io_rresp_data_3_clientStates_0),
    .io_rresp_data_4_dirty(metaArray_io_rresp_data_4_dirty),
    .io_rresp_data_4_state(metaArray_io_rresp_data_4_state),
    .io_rresp_data_4_clientStates_0(metaArray_io_rresp_data_4_clientStates_0),
    .io_rresp_data_5_dirty(metaArray_io_rresp_data_5_dirty),
    .io_rresp_data_5_state(metaArray_io_rresp_data_5_state),
    .io_rresp_data_5_clientStates_0(metaArray_io_rresp_data_5_clientStates_0),
    .io_rresp_data_6_dirty(metaArray_io_rresp_data_6_dirty),
    .io_rresp_data_6_state(metaArray_io_rresp_data_6_state),
    .io_rresp_data_6_clientStates_0(metaArray_io_rresp_data_6_clientStates_0),
    .io_rresp_data_7_dirty(metaArray_io_rresp_data_7_dirty),
    .io_rresp_data_7_state(metaArray_io_rresp_data_7_state),
    .io_rresp_data_7_clientStates_0(metaArray_io_rresp_data_7_clientStates_0),
    .io_wreq_valid(metaArray_io_wreq_valid),
    .io_wreq_bits_setIdx(metaArray_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0_dirty(metaArray_io_wreq_bits_data_0_dirty),
    .io_wreq_bits_data_0_state(metaArray_io_wreq_bits_data_0_state),
    .io_wreq_bits_data_0_clientStates_0(metaArray_io_wreq_bits_data_0_clientStates_0),
    .io_wreq_bits_data_1_dirty(metaArray_io_wreq_bits_data_1_dirty),
    .io_wreq_bits_data_1_state(metaArray_io_wreq_bits_data_1_state),
    .io_wreq_bits_data_1_clientStates_0(metaArray_io_wreq_bits_data_1_clientStates_0),
    .io_wreq_bits_data_2_dirty(metaArray_io_wreq_bits_data_2_dirty),
    .io_wreq_bits_data_2_state(metaArray_io_wreq_bits_data_2_state),
    .io_wreq_bits_data_2_clientStates_0(metaArray_io_wreq_bits_data_2_clientStates_0),
    .io_wreq_bits_data_3_dirty(metaArray_io_wreq_bits_data_3_dirty),
    .io_wreq_bits_data_3_state(metaArray_io_wreq_bits_data_3_state),
    .io_wreq_bits_data_3_clientStates_0(metaArray_io_wreq_bits_data_3_clientStates_0),
    .io_wreq_bits_data_4_dirty(metaArray_io_wreq_bits_data_4_dirty),
    .io_wreq_bits_data_4_state(metaArray_io_wreq_bits_data_4_state),
    .io_wreq_bits_data_4_clientStates_0(metaArray_io_wreq_bits_data_4_clientStates_0),
    .io_wreq_bits_data_5_dirty(metaArray_io_wreq_bits_data_5_dirty),
    .io_wreq_bits_data_5_state(metaArray_io_wreq_bits_data_5_state),
    .io_wreq_bits_data_5_clientStates_0(metaArray_io_wreq_bits_data_5_clientStates_0),
    .io_wreq_bits_data_6_dirty(metaArray_io_wreq_bits_data_6_dirty),
    .io_wreq_bits_data_6_state(metaArray_io_wreq_bits_data_6_state),
    .io_wreq_bits_data_6_clientStates_0(metaArray_io_wreq_bits_data_6_clientStates_0),
    .io_wreq_bits_data_7_dirty(metaArray_io_wreq_bits_data_7_dirty),
    .io_wreq_bits_data_7_state(metaArray_io_wreq_bits_data_7_state),
    .io_wreq_bits_data_7_clientStates_0(metaArray_io_wreq_bits_data_7_clientStates_0),
    .io_wreq_bits_waymask(metaArray_io_wreq_bits_waymask)
  );
  STD_CLKGT_func clkGate ( // @[BaseDirectory.scala 109:23]
    .TE(clkGate_TE),
    .E(clkGate_E),
    .CK(clkGate_CK),
    .Q(clkGate_Q)
  );
  SRAMTemplate_297 tagArray ( // @[BaseDirectory.scala 131:24]
    .clock(tagArray_clock),
    .io_rreq_valid(tagArray_io_rreq_valid),
    .io_rreq_bits_setIdx(tagArray_io_rreq_bits_setIdx),
    .io_rresp_data_0(tagArray_io_rresp_data_0),
    .io_rresp_data_1(tagArray_io_rresp_data_1),
    .io_rresp_data_2(tagArray_io_rresp_data_2),
    .io_rresp_data_3(tagArray_io_rresp_data_3),
    .io_rresp_data_4(tagArray_io_rresp_data_4),
    .io_rresp_data_5(tagArray_io_rresp_data_5),
    .io_rresp_data_6(tagArray_io_rresp_data_6),
    .io_rresp_data_7(tagArray_io_rresp_data_7),
    .io_wreq_valid(tagArray_io_wreq_valid),
    .io_wreq_bits_setIdx(tagArray_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(tagArray_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(tagArray_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(tagArray_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(tagArray_io_wreq_bits_data_3),
    .io_wreq_bits_data_4(tagArray_io_wreq_bits_data_4),
    .io_wreq_bits_data_5(tagArray_io_wreq_bits_data_5),
    .io_wreq_bits_data_6(tagArray_io_wreq_bits_data_6),
    .io_wreq_bits_data_7(tagArray_io_wreq_bits_data_7),
    .io_wreq_bits_waymask(tagArray_io_wreq_bits_waymask)
  );
  SRAMTemplate_300 repl_state_replacer_sram ( // @[BaseDirectory.scala 179:31]
    .clock(repl_state_replacer_sram_clock),
    .reset(repl_state_replacer_sram_reset),
    .io_rreq_valid(repl_state_replacer_sram_io_rreq_valid),
    .io_rreq_bits_setIdx(repl_state_replacer_sram_io_rreq_bits_setIdx),
    .io_rresp_data_0(repl_state_replacer_sram_io_rresp_data_0),
    .io_wreq_valid(repl_state_replacer_sram_io_wreq_valid),
    .io_wreq_bits_setIdx(repl_state_replacer_sram_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(repl_state_replacer_sram_io_wreq_bits_data_0)
  );
  assign io_read_ready = ~io_tag_wvalid & ~io_dir_wvalid & ~replacer_wen & resetFinish; // @[BaseDirectory.scala 122:58]
  assign io_resp_valid = reqValidReg; // @[BaseDirectory.scala 188:17]
  assign io_resp_bits_hit = hit_s2; // @[BaseDirectory.scala 217:20]
  assign io_resp_bits_way = way_s2; // @[BaseDirectory.scala 218:20]
  assign io_resp_bits_tag = 3'h7 == way_s2 ? tagAll_s2_7 : _GEN_88; // @[BaseDirectory.scala 220:{20,20}]
  assign io_resp_bits_dir_dirty = 3'h7 == way_s2 ? metaAll_s2_7_dirty : _GEN_64; // @[BaseDirectory.scala 219:{20,20}]
  assign io_resp_bits_dir_state = 3'h7 == way_s2 ? metaAll_s2_7_state : _GEN_72; // @[BaseDirectory.scala 219:{20,20}]
  assign io_resp_bits_dir_clientStates_0 = 3'h7 == way_s2 ? metaAll_s2_7_clientStates_0 : _GEN_80; // @[BaseDirectory.scala 219:{20,20}]
  assign io_tag_wready = 1'h1; // @[BaseDirectory.scala 120:18]
  assign metaArray_clock = clock;
  assign metaArray_io_rreq_valid = io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
  assign metaArray_io_rreq_bits_setIdx = io_read_bits_set; // @[SRAMTemplate.scala 49:17]
  assign metaArray_io_wreq_valid = ~resetFinish | io_dir_wvalid; // @[BaseDirectory.scala 224:18]
  assign metaArray_io_wreq_bits_setIdx = resetFinish ? io_dir_wset : resetIdx; // @[BaseDirectory.scala 226:8]
  assign metaArray_io_wreq_bits_data_0_dirty = resetFinish & io_dir_wdir_dirty; // @[BaseDirectory.scala 225:8]
  assign metaArray_io_wreq_bits_data_0_state = resetFinish ? io_dir_wdir_state : 2'h0; // @[BaseDirectory.scala 225:8]
  assign metaArray_io_wreq_bits_data_0_clientStates_0 = resetFinish ? io_dir_wdir_clientStates_0 : 2'h0; // @[BaseDirectory.scala 225:8]
  assign metaArray_io_wreq_bits_data_1_dirty = resetFinish & io_dir_wdir_dirty; // @[BaseDirectory.scala 225:8]
  assign metaArray_io_wreq_bits_data_1_state = resetFinish ? io_dir_wdir_state : 2'h0; // @[BaseDirectory.scala 225:8]
  assign metaArray_io_wreq_bits_data_1_clientStates_0 = resetFinish ? io_dir_wdir_clientStates_0 : 2'h0; // @[BaseDirectory.scala 225:8]
  assign metaArray_io_wreq_bits_data_2_dirty = resetFinish & io_dir_wdir_dirty; // @[BaseDirectory.scala 225:8]
  assign metaArray_io_wreq_bits_data_2_state = resetFinish ? io_dir_wdir_state : 2'h0; // @[BaseDirectory.scala 225:8]
  assign metaArray_io_wreq_bits_data_2_clientStates_0 = resetFinish ? io_dir_wdir_clientStates_0 : 2'h0; // @[BaseDirectory.scala 225:8]
  assign metaArray_io_wreq_bits_data_3_dirty = resetFinish & io_dir_wdir_dirty; // @[BaseDirectory.scala 225:8]
  assign metaArray_io_wreq_bits_data_3_state = resetFinish ? io_dir_wdir_state : 2'h0; // @[BaseDirectory.scala 225:8]
  assign metaArray_io_wreq_bits_data_3_clientStates_0 = resetFinish ? io_dir_wdir_clientStates_0 : 2'h0; // @[BaseDirectory.scala 225:8]
  assign metaArray_io_wreq_bits_data_4_dirty = resetFinish & io_dir_wdir_dirty; // @[BaseDirectory.scala 225:8]
  assign metaArray_io_wreq_bits_data_4_state = resetFinish ? io_dir_wdir_state : 2'h0; // @[BaseDirectory.scala 225:8]
  assign metaArray_io_wreq_bits_data_4_clientStates_0 = resetFinish ? io_dir_wdir_clientStates_0 : 2'h0; // @[BaseDirectory.scala 225:8]
  assign metaArray_io_wreq_bits_data_5_dirty = resetFinish & io_dir_wdir_dirty; // @[BaseDirectory.scala 225:8]
  assign metaArray_io_wreq_bits_data_5_state = resetFinish ? io_dir_wdir_state : 2'h0; // @[BaseDirectory.scala 225:8]
  assign metaArray_io_wreq_bits_data_5_clientStates_0 = resetFinish ? io_dir_wdir_clientStates_0 : 2'h0; // @[BaseDirectory.scala 225:8]
  assign metaArray_io_wreq_bits_data_6_dirty = resetFinish & io_dir_wdir_dirty; // @[BaseDirectory.scala 225:8]
  assign metaArray_io_wreq_bits_data_6_state = resetFinish ? io_dir_wdir_state : 2'h0; // @[BaseDirectory.scala 225:8]
  assign metaArray_io_wreq_bits_data_6_clientStates_0 = resetFinish ? io_dir_wdir_clientStates_0 : 2'h0; // @[BaseDirectory.scala 225:8]
  assign metaArray_io_wreq_bits_data_7_dirty = resetFinish & io_dir_wdir_dirty; // @[BaseDirectory.scala 225:8]
  assign metaArray_io_wreq_bits_data_7_state = resetFinish ? io_dir_wdir_state : 2'h0; // @[BaseDirectory.scala 225:8]
  assign metaArray_io_wreq_bits_data_7_clientStates_0 = resetFinish ? io_dir_wdir_clientStates_0 : 2'h0; // @[BaseDirectory.scala 225:8]
  assign metaArray_io_wreq_bits_waymask = resetFinish ? _T_8 : 8'hff; // @[BaseDirectory.scala 227:8]
  assign clkGate_TE = 1'h0; // @[BaseDirectory.scala 112:17]
  assign clkGate_E = clk_en; // @[BaseDirectory.scala 113:16]
  assign clkGate_CK = clock; // @[BaseDirectory.scala 114:17]
  assign tagArray_clock = clock;
  assign tagArray_io_rreq_valid = io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
  assign tagArray_io_rreq_bits_setIdx = io_read_bits_set; // @[SRAMTemplate.scala 49:17]
  assign tagArray_io_wreq_valid = io_tag_wready & io_tag_wvalid; // @[Decoupled.scala 50:35]
  assign tagArray_io_wreq_bits_setIdx = io_tag_wset; // @[SRAMTemplate.scala 49:17]
  assign tagArray_io_wreq_bits_data_0 = io_tag_wtag; // @[SRAMTemplate.scala 95:{25,25}]
  assign tagArray_io_wreq_bits_data_1 = io_tag_wtag; // @[SRAMTemplate.scala 95:{25,25}]
  assign tagArray_io_wreq_bits_data_2 = io_tag_wtag; // @[SRAMTemplate.scala 95:{25,25}]
  assign tagArray_io_wreq_bits_data_3 = io_tag_wtag; // @[SRAMTemplate.scala 95:{25,25}]
  assign tagArray_io_wreq_bits_data_4 = io_tag_wtag; // @[SRAMTemplate.scala 95:{25,25}]
  assign tagArray_io_wreq_bits_data_5 = io_tag_wtag; // @[SRAMTemplate.scala 95:{25,25}]
  assign tagArray_io_wreq_bits_data_6 = io_tag_wtag; // @[SRAMTemplate.scala 95:{25,25}]
  assign tagArray_io_wreq_bits_data_7 = io_tag_wtag; // @[SRAMTemplate.scala 95:{25,25}]
  assign tagArray_io_wreq_bits_waymask = 8'h1 << io_tag_wway; // @[OneHot.scala 57:35]
  assign repl_state_replacer_sram_clock = clock;
  assign repl_state_replacer_sram_reset = reset;
  assign repl_state_replacer_sram_io_rreq_valid = io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
  assign repl_state_replacer_sram_io_rreq_bits_setIdx = io_read_bits_set; // @[SRAMTemplate.scala 49:17]
  assign repl_state_replacer_sram_io_wreq_valid = replacer_wen; // @[SRAMTemplate.scala 91:20]
  assign repl_state_replacer_sram_io_wreq_bits_setIdx = repl_state_REG_1; // @[SRAMTemplate.scala 49:17]
  assign repl_state_replacer_sram_io_wreq_bits_data_0 = repl_state_REG; // @[SRAMTemplate.scala 95:{25,25}]
  always @(posedge clock) begin
    if (_T_2) begin // @[Reg.scala 17:18]
      reqReg_tag <= io_read_bits_tag; // @[Reg.scala 17:22]
    end
    if (_T_2) begin // @[Reg.scala 17:18]
      reqReg_set <= io_read_bits_set; // @[Reg.scala 17:22]
    end
    if (_T_2) begin // @[Reg.scala 17:18]
      reqReg_replacerInfo_channel <= io_read_bits_replacerInfo_channel; // @[Reg.scala 17:22]
    end
    if (_T_2) begin // @[Reg.scala 17:18]
      reqReg_replacerInfo_opcode <= io_read_bits_replacerInfo_opcode; // @[Reg.scala 17:22]
    end
    repl_state_REG <= {repl_state_next_state_hi_2,_repl_state_next_state_T_21}; // @[Cat.scala 31:58]
    repl_state_REG_1 <= reqReg_set; // @[BaseDirectory.scala 184:66]
    if (reqValidReg) begin // @[Reg.scala 17:18]
      metaAll_s2_0_dirty <= metaArray_io_rresp_data_0_dirty; // @[Reg.scala 17:22]
    end
    if (reqValidReg) begin // @[Reg.scala 17:18]
      metaAll_s2_0_state <= metaArray_io_rresp_data_0_state; // @[Reg.scala 17:22]
    end
    if (reqValidReg) begin // @[Reg.scala 17:18]
      metaAll_s2_0_clientStates_0 <= metaArray_io_rresp_data_0_clientStates_0; // @[Reg.scala 17:22]
    end
    if (reqValidReg) begin // @[Reg.scala 17:18]
      metaAll_s2_1_dirty <= metaArray_io_rresp_data_1_dirty; // @[Reg.scala 17:22]
    end
    if (reqValidReg) begin // @[Reg.scala 17:18]
      metaAll_s2_1_state <= metaArray_io_rresp_data_1_state; // @[Reg.scala 17:22]
    end
    if (reqValidReg) begin // @[Reg.scala 17:18]
      metaAll_s2_1_clientStates_0 <= metaArray_io_rresp_data_1_clientStates_0; // @[Reg.scala 17:22]
    end
    if (reqValidReg) begin // @[Reg.scala 17:18]
      metaAll_s2_2_dirty <= metaArray_io_rresp_data_2_dirty; // @[Reg.scala 17:22]
    end
    if (reqValidReg) begin // @[Reg.scala 17:18]
      metaAll_s2_2_state <= metaArray_io_rresp_data_2_state; // @[Reg.scala 17:22]
    end
    if (reqValidReg) begin // @[Reg.scala 17:18]
      metaAll_s2_2_clientStates_0 <= metaArray_io_rresp_data_2_clientStates_0; // @[Reg.scala 17:22]
    end
    if (reqValidReg) begin // @[Reg.scala 17:18]
      metaAll_s2_3_dirty <= metaArray_io_rresp_data_3_dirty; // @[Reg.scala 17:22]
    end
    if (reqValidReg) begin // @[Reg.scala 17:18]
      metaAll_s2_3_state <= metaArray_io_rresp_data_3_state; // @[Reg.scala 17:22]
    end
    if (reqValidReg) begin // @[Reg.scala 17:18]
      metaAll_s2_3_clientStates_0 <= metaArray_io_rresp_data_3_clientStates_0; // @[Reg.scala 17:22]
    end
    if (reqValidReg) begin // @[Reg.scala 17:18]
      metaAll_s2_4_dirty <= metaArray_io_rresp_data_4_dirty; // @[Reg.scala 17:22]
    end
    if (reqValidReg) begin // @[Reg.scala 17:18]
      metaAll_s2_4_state <= metaArray_io_rresp_data_4_state; // @[Reg.scala 17:22]
    end
    if (reqValidReg) begin // @[Reg.scala 17:18]
      metaAll_s2_4_clientStates_0 <= metaArray_io_rresp_data_4_clientStates_0; // @[Reg.scala 17:22]
    end
    if (reqValidReg) begin // @[Reg.scala 17:18]
      metaAll_s2_5_dirty <= metaArray_io_rresp_data_5_dirty; // @[Reg.scala 17:22]
    end
    if (reqValidReg) begin // @[Reg.scala 17:18]
      metaAll_s2_5_state <= metaArray_io_rresp_data_5_state; // @[Reg.scala 17:22]
    end
    if (reqValidReg) begin // @[Reg.scala 17:18]
      metaAll_s2_5_clientStates_0 <= metaArray_io_rresp_data_5_clientStates_0; // @[Reg.scala 17:22]
    end
    if (reqValidReg) begin // @[Reg.scala 17:18]
      metaAll_s2_6_dirty <= metaArray_io_rresp_data_6_dirty; // @[Reg.scala 17:22]
    end
    if (reqValidReg) begin // @[Reg.scala 17:18]
      metaAll_s2_6_state <= metaArray_io_rresp_data_6_state; // @[Reg.scala 17:22]
    end
    if (reqValidReg) begin // @[Reg.scala 17:18]
      metaAll_s2_6_clientStates_0 <= metaArray_io_rresp_data_6_clientStates_0; // @[Reg.scala 17:22]
    end
    if (reqValidReg) begin // @[Reg.scala 17:18]
      metaAll_s2_7_dirty <= metaArray_io_rresp_data_7_dirty; // @[Reg.scala 17:22]
    end
    if (reqValidReg) begin // @[Reg.scala 17:18]
      metaAll_s2_7_state <= metaArray_io_rresp_data_7_state; // @[Reg.scala 17:22]
    end
    if (reqValidReg) begin // @[Reg.scala 17:18]
      metaAll_s2_7_clientStates_0 <= metaArray_io_rresp_data_7_clientStates_0; // @[Reg.scala 17:22]
    end
    if (reqValidReg) begin // @[Reg.scala 17:18]
      tagAll_s2_0 <= tagRead_0; // @[Reg.scala 17:22]
    end
    if (reqValidReg) begin // @[Reg.scala 17:18]
      tagAll_s2_1 <= tagRead_1; // @[Reg.scala 17:22]
    end
    if (reqValidReg) begin // @[Reg.scala 17:18]
      tagAll_s2_2 <= tagRead_2; // @[Reg.scala 17:22]
    end
    if (reqValidReg) begin // @[Reg.scala 17:18]
      tagAll_s2_3 <= tagRead_3; // @[Reg.scala 17:22]
    end
    if (reqValidReg) begin // @[Reg.scala 17:18]
      tagAll_s2_4 <= tagRead_4; // @[Reg.scala 17:22]
    end
    if (reqValidReg) begin // @[Reg.scala 17:18]
      tagAll_s2_5 <= tagRead_5; // @[Reg.scala 17:22]
    end
    if (reqValidReg) begin // @[Reg.scala 17:18]
      tagAll_s2_6 <= tagRead_6; // @[Reg.scala 17:22]
    end
    if (reqValidReg) begin // @[Reg.scala 17:18]
      tagAll_s2_7 <= tagRead_7; // @[Reg.scala 17:22]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[BaseDirectory.scala 232:39]
      resetFinish <= 1'h0; // @[BaseDirectory.scala 233:17]
    end else begin
      resetFinish <= resetIdx == 8'h0 | resetFinish; // @[BaseDirectory.scala 105:28]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[BaseDirectory.scala 235:35]
      resetIdx <= 8'hff; // @[BaseDirectory.scala 236:14]
    end else if (_T_4) begin // @[BaseDirectory.scala 106:25]
      resetIdx <= _resetIdx_T_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[BaseDirectory.scala 111:13]
      clk_en <= 1'h0;
    end else begin
      clk_en <= ~clk_en;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[BaseDirectory.scala 273:20]
      replacer_wen <= 1'h0;
    end else begin
      replacer_wen <= reqValidReg & update;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Decoupled.scala 50:35]
      reqValidReg <= 1'h0;
    end else begin
      reqValidReg <= io_read_ready & io_read_valid;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Decoupled.scala 50:35]
      repl_state_repl_state_hold_REG <= 1'h0;
    end else begin
      repl_state_repl_state_hold_REG <= io_read_ready & io_read_valid;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      repl_state_repl_state_hold_r <= 7'h0; // @[Reg.scala 29:22]
    end else if (repl_state_repl_state_hold_REG) begin // @[Reg.scala 28:20]
      repl_state_repl_state_hold_r <= repl_state_replacer_sram_io_rresp_data_0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      hit_s2 <= 1'h0; // @[Reg.scala 29:22]
    end else if (reqValidReg) begin // @[Reg.scala 28:20]
      hit_s2 <= hit_s1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      way_s2 <= 3'h0; // @[BaseDirectory.scala 196:22 204:48 Directory.scala 212:10]
    end else if (reqValidReg) begin // @[Reg.scala 28:20]
      if (hit_s1) begin
        way_s2 <= hitWay;
      end else if (inv) begin
        if (has_invalid_way) begin
          way_s2 <= invalid_way;
        end else begin
          way_s2 <= _T_3;
        end
      end else begin
        way_s2 <= replaceWay;
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
  resetFinish = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  resetIdx = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  clk_en = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  replacer_wen = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  reqReg_tag = _RAND_4[21:0];
  _RAND_5 = {1{`RANDOM}};
  reqReg_set = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  reqReg_replacerInfo_channel = _RAND_6[2:0];
  _RAND_7 = {1{`RANDOM}};
  reqReg_replacerInfo_opcode = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  reqValidReg = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  repl_state_repl_state_hold_REG = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  repl_state_repl_state_hold_r = _RAND_10[6:0];
  _RAND_11 = {1{`RANDOM}};
  repl_state_REG = _RAND_11[6:0];
  _RAND_12 = {1{`RANDOM}};
  repl_state_REG_1 = _RAND_12[7:0];
  _RAND_13 = {1{`RANDOM}};
  hit_s2 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  way_s2 = _RAND_14[2:0];
  _RAND_15 = {1{`RANDOM}};
  metaAll_s2_0_dirty = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  metaAll_s2_0_state = _RAND_16[1:0];
  _RAND_17 = {1{`RANDOM}};
  metaAll_s2_0_clientStates_0 = _RAND_17[1:0];
  _RAND_18 = {1{`RANDOM}};
  metaAll_s2_1_dirty = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  metaAll_s2_1_state = _RAND_19[1:0];
  _RAND_20 = {1{`RANDOM}};
  metaAll_s2_1_clientStates_0 = _RAND_20[1:0];
  _RAND_21 = {1{`RANDOM}};
  metaAll_s2_2_dirty = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  metaAll_s2_2_state = _RAND_22[1:0];
  _RAND_23 = {1{`RANDOM}};
  metaAll_s2_2_clientStates_0 = _RAND_23[1:0];
  _RAND_24 = {1{`RANDOM}};
  metaAll_s2_3_dirty = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  metaAll_s2_3_state = _RAND_25[1:0];
  _RAND_26 = {1{`RANDOM}};
  metaAll_s2_3_clientStates_0 = _RAND_26[1:0];
  _RAND_27 = {1{`RANDOM}};
  metaAll_s2_4_dirty = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  metaAll_s2_4_state = _RAND_28[1:0];
  _RAND_29 = {1{`RANDOM}};
  metaAll_s2_4_clientStates_0 = _RAND_29[1:0];
  _RAND_30 = {1{`RANDOM}};
  metaAll_s2_5_dirty = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  metaAll_s2_5_state = _RAND_31[1:0];
  _RAND_32 = {1{`RANDOM}};
  metaAll_s2_5_clientStates_0 = _RAND_32[1:0];
  _RAND_33 = {1{`RANDOM}};
  metaAll_s2_6_dirty = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  metaAll_s2_6_state = _RAND_34[1:0];
  _RAND_35 = {1{`RANDOM}};
  metaAll_s2_6_clientStates_0 = _RAND_35[1:0];
  _RAND_36 = {1{`RANDOM}};
  metaAll_s2_7_dirty = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  metaAll_s2_7_state = _RAND_37[1:0];
  _RAND_38 = {1{`RANDOM}};
  metaAll_s2_7_clientStates_0 = _RAND_38[1:0];
  _RAND_39 = {1{`RANDOM}};
  tagAll_s2_0 = _RAND_39[21:0];
  _RAND_40 = {1{`RANDOM}};
  tagAll_s2_1 = _RAND_40[21:0];
  _RAND_41 = {1{`RANDOM}};
  tagAll_s2_2 = _RAND_41[21:0];
  _RAND_42 = {1{`RANDOM}};
  tagAll_s2_3 = _RAND_42[21:0];
  _RAND_43 = {1{`RANDOM}};
  tagAll_s2_4 = _RAND_43[21:0];
  _RAND_44 = {1{`RANDOM}};
  tagAll_s2_5 = _RAND_44[21:0];
  _RAND_45 = {1{`RANDOM}};
  tagAll_s2_6 = _RAND_45[21:0];
  _RAND_46 = {1{`RANDOM}};
  tagAll_s2_7 = _RAND_46[21:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    resetFinish = 1'h0;
  end
  if (reset) begin
    resetIdx = 8'hff;
  end
  if (reset) begin
    clk_en = 1'h0;
  end
  if (reset) begin
    replacer_wen = 1'h0;
  end
  if (reset) begin
    reqValidReg = 1'h0;
  end
  if (reset) begin
    repl_state_repl_state_hold_REG = 1'h0;
  end
  if (reset) begin
    repl_state_repl_state_hold_r = 7'h0;
  end
  if (reset) begin
    hit_s2 = 1'h0;
  end
  if (reset) begin
    way_s2 = 3'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

