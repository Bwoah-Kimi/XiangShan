module FrontendTrigger(
  input         clock,
  input         reset,
  input         io_frontendTrigger_t_valid,
  input  [1:0]  io_frontendTrigger_t_bits_addr,
  input  [1:0]  io_frontendTrigger_t_bits_tdata_matchType,
  input         io_frontendTrigger_t_bits_tdata_select,
  input         io_frontendTrigger_t_bits_tdata_timing,
  input         io_frontendTrigger_t_bits_tdata_chain,
  input  [63:0] io_frontendTrigger_t_bits_tdata_tdata2,
  input         io_csrTriggerEnable_0,
  input         io_csrTriggerEnable_1,
  input         io_csrTriggerEnable_2,
  input         io_csrTriggerEnable_3,
  output        io_triggered_0_frontendHit_0,
  output        io_triggered_0_frontendHit_1,
  output        io_triggered_0_frontendHit_2,
  output        io_triggered_0_frontendHit_3,
  output        io_triggered_0_backendEn_0,
  output        io_triggered_0_backendEn_1,
  output        io_triggered_1_frontendHit_0,
  output        io_triggered_1_frontendHit_1,
  output        io_triggered_1_frontendHit_2,
  output        io_triggered_1_frontendHit_3,
  output        io_triggered_1_backendEn_0,
  output        io_triggered_1_backendEn_1,
  output        io_triggered_2_frontendHit_0,
  output        io_triggered_2_frontendHit_1,
  output        io_triggered_2_frontendHit_2,
  output        io_triggered_2_frontendHit_3,
  output        io_triggered_2_backendEn_0,
  output        io_triggered_2_backendEn_1,
  output        io_triggered_3_frontendHit_0,
  output        io_triggered_3_frontendHit_1,
  output        io_triggered_3_frontendHit_2,
  output        io_triggered_3_frontendHit_3,
  output        io_triggered_3_backendEn_0,
  output        io_triggered_3_backendEn_1,
  output        io_triggered_4_frontendHit_0,
  output        io_triggered_4_frontendHit_1,
  output        io_triggered_4_frontendHit_2,
  output        io_triggered_4_frontendHit_3,
  output        io_triggered_4_backendEn_0,
  output        io_triggered_4_backendEn_1,
  output        io_triggered_5_frontendHit_0,
  output        io_triggered_5_frontendHit_1,
  output        io_triggered_5_frontendHit_2,
  output        io_triggered_5_frontendHit_3,
  output        io_triggered_5_backendEn_0,
  output        io_triggered_5_backendEn_1,
  output        io_triggered_6_frontendHit_0,
  output        io_triggered_6_frontendHit_1,
  output        io_triggered_6_frontendHit_2,
  output        io_triggered_6_frontendHit_3,
  output        io_triggered_6_backendEn_0,
  output        io_triggered_6_backendEn_1,
  output        io_triggered_7_frontendHit_0,
  output        io_triggered_7_frontendHit_1,
  output        io_triggered_7_frontendHit_2,
  output        io_triggered_7_frontendHit_3,
  output        io_triggered_7_backendEn_0,
  output        io_triggered_7_backendEn_1,
  input         io_pds_0_isRVC,
  input         io_pds_1_isRVC,
  input         io_pds_2_isRVC,
  input         io_pds_3_isRVC,
  input         io_pds_4_isRVC,
  input         io_pds_5_isRVC,
  input         io_pds_6_isRVC,
  input         io_pds_7_isRVC,
  input  [38:0] io_pc_0,
  input  [38:0] io_pc_1,
  input  [38:0] io_pc_2,
  input  [38:0] io_pc_3,
  input  [38:0] io_pc_4,
  input  [38:0] io_pc_5,
  input  [38:0] io_pc_6,
  input  [38:0] io_pc_7,
  input  [15:0] io_data_0,
  input  [15:0] io_data_1,
  input  [15:0] io_data_2,
  input  [15:0] io_data_3,
  input  [15:0] io_data_4,
  input  [15:0] io_data_5,
  input  [15:0] io_data_6,
  input  [15:0] io_data_7,
  input  [15:0] io_data_8
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [63:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [63:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
`endif // RANDOMIZE_REG_INIT
  wire [31:0] rawInsts_0 = {io_data_1,io_data_0}; // @[Cat.scala 31:58]
  wire [31:0] rawInsts_1 = {io_data_2,io_data_1}; // @[Cat.scala 31:58]
  wire [31:0] rawInsts_2 = {io_data_3,io_data_2}; // @[Cat.scala 31:58]
  wire [31:0] rawInsts_3 = {io_data_4,io_data_3}; // @[Cat.scala 31:58]
  wire [31:0] rawInsts_4 = {io_data_5,io_data_4}; // @[Cat.scala 31:58]
  wire [31:0] rawInsts_5 = {io_data_6,io_data_5}; // @[Cat.scala 31:58]
  wire [31:0] rawInsts_6 = {io_data_7,io_data_6}; // @[Cat.scala 31:58]
  wire [31:0] rawInsts_7 = {io_data_8,io_data_7}; // @[Cat.scala 31:58]
  reg [1:0] tdata_0_matchType; // @[PreDecode.scala 298:22]
  reg  tdata_0_select; // @[PreDecode.scala 298:22]
  reg  tdata_0_timing; // @[PreDecode.scala 298:22]
  reg  tdata_0_chain; // @[PreDecode.scala 298:22]
  reg [63:0] tdata_0_tdata2; // @[PreDecode.scala 298:22]
  reg [1:0] tdata_1_matchType; // @[PreDecode.scala 298:22]
  reg  tdata_1_select; // @[PreDecode.scala 298:22]
  reg  tdata_1_timing; // @[PreDecode.scala 298:22]
  reg [63:0] tdata_1_tdata2; // @[PreDecode.scala 298:22]
  reg [1:0] tdata_2_matchType; // @[PreDecode.scala 298:22]
  reg  tdata_2_select; // @[PreDecode.scala 298:22]
  reg  tdata_2_chain; // @[PreDecode.scala 298:22]
  reg [63:0] tdata_2_tdata2; // @[PreDecode.scala 298:22]
  reg [1:0] tdata_3_matchType; // @[PreDecode.scala 298:22]
  reg  tdata_3_select; // @[PreDecode.scala 298:22]
  reg  tdata_3_chain; // @[PreDecode.scala 298:22]
  reg [63:0] tdata_3_tdata2; // @[PreDecode.scala 298:22]
  reg  triggerEnable_0; // @[PreDecode.scala 303:30]
  reg  triggerEnable_1; // @[PreDecode.scala 303:30]
  reg  triggerEnable_2; // @[PreDecode.scala 303:30]
  reg  triggerEnable_3; // @[PreDecode.scala 303:30]
  wire [31:0] _triggerHitVec_0_T_1 = io_pds_0_isRVC ? {{16'd0}, rawInsts_0[15:0]} : rawInsts_0; // @[PreDecode.scala 316:62]
  wire [63:0] _GEN_64 = {{32'd0}, _triggerHitVec_0_T_1}; // @[Trigger.scala 27:24]
  wire  triggerHitVec_0_equal = _GEN_64 == tdata_0_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_0_greater = _GEN_64 >= tdata_0_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_0_less = _GEN_64 <= tdata_0_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_0_res_T_3 = 2'h2 == tdata_0_matchType ? triggerHitVec_0_greater : 2'h0 == tdata_0_matchType &
    triggerHitVec_0_equal; // @[Mux.scala 81:58]
  wire  triggerHitVec_0_res = 2'h3 == tdata_0_matchType ? triggerHitVec_0_less : _triggerHitVec_0_res_T_3; // @[Mux.scala 81:58]
  wire  _triggerHitVec_0_T_2 = triggerHitVec_0_res & triggerEnable_0; // @[Trigger.scala 34:9]
  wire [63:0] _GEN_67 = {{25'd0}, io_pc_0}; // @[Trigger.scala 27:24]
  wire  triggerHitVec_0_equal_1 = _GEN_67 == tdata_0_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_0_greater_1 = _GEN_67 >= tdata_0_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_0_less_1 = _GEN_67 <= tdata_0_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_0_res_T_8 = 2'h2 == tdata_0_matchType ? triggerHitVec_0_greater_1 : 2'h0 == tdata_0_matchType &
    triggerHitVec_0_equal_1; // @[Mux.scala 81:58]
  wire  triggerHitVec_0_res_1 = 2'h3 == tdata_0_matchType ? triggerHitVec_0_less_1 : _triggerHitVec_0_res_T_8; // @[Mux.scala 81:58]
  wire  _triggerHitVec_0_T_3 = triggerHitVec_0_res_1 & triggerEnable_0; // @[Trigger.scala 34:9]
  wire  triggerHitVec__0 = tdata_0_select ? _triggerHitVec_0_T_2 : _triggerHitVec_0_T_3; // @[PreDecode.scala 316:30]
  wire  triggerHitVec_1_equal = _GEN_64 == tdata_1_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_1_greater = _GEN_64 >= tdata_1_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_1_less = _GEN_64 <= tdata_1_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_1_res_T_3 = 2'h2 == tdata_1_matchType ? triggerHitVec_1_greater : 2'h0 == tdata_1_matchType &
    triggerHitVec_1_equal; // @[Mux.scala 81:58]
  wire  triggerHitVec_1_res = 2'h3 == tdata_1_matchType ? triggerHitVec_1_less : _triggerHitVec_1_res_T_3; // @[Mux.scala 81:58]
  wire  _triggerHitVec_1_T_2 = triggerHitVec_1_res & triggerEnable_1; // @[Trigger.scala 34:9]
  wire  triggerHitVec_1_equal_1 = _GEN_67 == tdata_1_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_1_greater_1 = _GEN_67 >= tdata_1_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_1_less_1 = _GEN_67 <= tdata_1_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_1_res_T_8 = 2'h2 == tdata_1_matchType ? triggerHitVec_1_greater_1 : 2'h0 == tdata_1_matchType &
    triggerHitVec_1_equal_1; // @[Mux.scala 81:58]
  wire  triggerHitVec_1_res_1 = 2'h3 == tdata_1_matchType ? triggerHitVec_1_less_1 : _triggerHitVec_1_res_T_8; // @[Mux.scala 81:58]
  wire  _triggerHitVec_1_T_3 = triggerHitVec_1_res_1 & triggerEnable_1; // @[Trigger.scala 34:9]
  wire  triggerHitVec__1 = tdata_1_select ? _triggerHitVec_1_T_2 : _triggerHitVec_1_T_3; // @[PreDecode.scala 316:30]
  wire  triggerHitVec_2_equal = _GEN_64 == tdata_2_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_2_greater = _GEN_64 >= tdata_2_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_2_less = _GEN_64 <= tdata_2_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_2_res_T_3 = 2'h2 == tdata_2_matchType ? triggerHitVec_2_greater : 2'h0 == tdata_2_matchType &
    triggerHitVec_2_equal; // @[Mux.scala 81:58]
  wire  triggerHitVec_2_res = 2'h3 == tdata_2_matchType ? triggerHitVec_2_less : _triggerHitVec_2_res_T_3; // @[Mux.scala 81:58]
  wire  _triggerHitVec_2_T_2 = triggerHitVec_2_res & triggerEnable_2; // @[Trigger.scala 34:9]
  wire  triggerHitVec_2_equal_1 = _GEN_67 == tdata_2_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_2_greater_1 = _GEN_67 >= tdata_2_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_2_less_1 = _GEN_67 <= tdata_2_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_2_res_T_8 = 2'h2 == tdata_2_matchType ? triggerHitVec_2_greater_1 : 2'h0 == tdata_2_matchType &
    triggerHitVec_2_equal_1; // @[Mux.scala 81:58]
  wire  triggerHitVec_2_res_1 = 2'h3 == tdata_2_matchType ? triggerHitVec_2_less_1 : _triggerHitVec_2_res_T_8; // @[Mux.scala 81:58]
  wire  _triggerHitVec_2_T_3 = triggerHitVec_2_res_1 & triggerEnable_2; // @[Trigger.scala 34:9]
  wire  triggerHitVec__2 = tdata_2_select ? _triggerHitVec_2_T_2 : _triggerHitVec_2_T_3; // @[PreDecode.scala 316:30]
  wire  triggerHitVec_3_equal = _GEN_64 == tdata_3_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_3_greater = _GEN_64 >= tdata_3_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_3_less = _GEN_64 <= tdata_3_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_3_res_T_3 = 2'h2 == tdata_3_matchType ? triggerHitVec_3_greater : 2'h0 == tdata_3_matchType &
    triggerHitVec_3_equal; // @[Mux.scala 81:58]
  wire  triggerHitVec_3_res = 2'h3 == tdata_3_matchType ? triggerHitVec_3_less : _triggerHitVec_3_res_T_3; // @[Mux.scala 81:58]
  wire  _triggerHitVec_3_T_2 = triggerHitVec_3_res & triggerEnable_3; // @[Trigger.scala 34:9]
  wire  triggerHitVec_3_equal_1 = _GEN_67 == tdata_3_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_3_greater_1 = _GEN_67 >= tdata_3_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_3_less_1 = _GEN_67 <= tdata_3_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_3_res_T_8 = 2'h2 == tdata_3_matchType ? triggerHitVec_3_greater_1 : 2'h0 == tdata_3_matchType &
    triggerHitVec_3_equal_1; // @[Mux.scala 81:58]
  wire  triggerHitVec_3_res_1 = 2'h3 == tdata_3_matchType ? triggerHitVec_3_less_1 : _triggerHitVec_3_res_T_8; // @[Mux.scala 81:58]
  wire  _triggerHitVec_3_T_3 = triggerHitVec_3_res_1 & triggerEnable_3; // @[Trigger.scala 34:9]
  wire  triggerHitVec__3 = tdata_3_select ? _triggerHitVec_3_T_2 : _triggerHitVec_3_T_3; // @[PreDecode.scala 316:30]
  wire  _io_triggered_0_frontendHit_0_T_2 = triggerHitVec__0 & triggerHitVec__1 & tdata_0_timing == tdata_1_timing; // @[PreDecode.scala 324:78]
  wire [31:0] _triggerHitVec_0_T_6 = io_pds_1_isRVC ? {{16'd0}, rawInsts_1[15:0]} : rawInsts_1; // @[PreDecode.scala 316:62]
  wire [63:0] _GEN_88 = {{32'd0}, _triggerHitVec_0_T_6}; // @[Trigger.scala 27:24]
  wire  triggerHitVec_0_equal_2 = _GEN_88 == tdata_0_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_0_greater_2 = _GEN_88 >= tdata_0_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_0_less_2 = _GEN_88 <= tdata_0_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_0_res_T_13 = 2'h2 == tdata_0_matchType ? triggerHitVec_0_greater_2 : 2'h0 == tdata_0_matchType &
    triggerHitVec_0_equal_2; // @[Mux.scala 81:58]
  wire  triggerHitVec_0_res_2 = 2'h3 == tdata_0_matchType ? triggerHitVec_0_less_2 : _triggerHitVec_0_res_T_13; // @[Mux.scala 81:58]
  wire  _triggerHitVec_0_T_7 = triggerHitVec_0_res_2 & triggerEnable_0; // @[Trigger.scala 34:9]
  wire [63:0] _GEN_91 = {{25'd0}, io_pc_1}; // @[Trigger.scala 27:24]
  wire  triggerHitVec_0_equal_3 = _GEN_91 == tdata_0_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_0_greater_3 = _GEN_91 >= tdata_0_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_0_less_3 = _GEN_91 <= tdata_0_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_0_res_T_18 = 2'h2 == tdata_0_matchType ? triggerHitVec_0_greater_3 : 2'h0 == tdata_0_matchType &
    triggerHitVec_0_equal_3; // @[Mux.scala 81:58]
  wire  triggerHitVec_0_res_3 = 2'h3 == tdata_0_matchType ? triggerHitVec_0_less_3 : _triggerHitVec_0_res_T_18; // @[Mux.scala 81:58]
  wire  _triggerHitVec_0_T_8 = triggerHitVec_0_res_3 & triggerEnable_0; // @[Trigger.scala 34:9]
  wire  triggerHitVec_1_0 = tdata_0_select ? _triggerHitVec_0_T_7 : _triggerHitVec_0_T_8; // @[PreDecode.scala 316:30]
  wire  triggerHitVec_1_equal_2 = _GEN_88 == tdata_1_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_1_greater_2 = _GEN_88 >= tdata_1_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_1_less_2 = _GEN_88 <= tdata_1_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_1_res_T_13 = 2'h2 == tdata_1_matchType ? triggerHitVec_1_greater_2 : 2'h0 == tdata_1_matchType &
    triggerHitVec_1_equal_2; // @[Mux.scala 81:58]
  wire  triggerHitVec_1_res_2 = 2'h3 == tdata_1_matchType ? triggerHitVec_1_less_2 : _triggerHitVec_1_res_T_13; // @[Mux.scala 81:58]
  wire  _triggerHitVec_1_T_7 = triggerHitVec_1_res_2 & triggerEnable_1; // @[Trigger.scala 34:9]
  wire  triggerHitVec_1_equal_3 = _GEN_91 == tdata_1_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_1_greater_3 = _GEN_91 >= tdata_1_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_1_less_3 = _GEN_91 <= tdata_1_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_1_res_T_18 = 2'h2 == tdata_1_matchType ? triggerHitVec_1_greater_3 : 2'h0 == tdata_1_matchType &
    triggerHitVec_1_equal_3; // @[Mux.scala 81:58]
  wire  triggerHitVec_1_res_3 = 2'h3 == tdata_1_matchType ? triggerHitVec_1_less_3 : _triggerHitVec_1_res_T_18; // @[Mux.scala 81:58]
  wire  _triggerHitVec_1_T_8 = triggerHitVec_1_res_3 & triggerEnable_1; // @[Trigger.scala 34:9]
  wire  triggerHitVec_1_1 = tdata_1_select ? _triggerHitVec_1_T_7 : _triggerHitVec_1_T_8; // @[PreDecode.scala 316:30]
  wire  triggerHitVec_2_equal_2 = _GEN_88 == tdata_2_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_2_greater_2 = _GEN_88 >= tdata_2_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_2_less_2 = _GEN_88 <= tdata_2_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_2_res_T_13 = 2'h2 == tdata_2_matchType ? triggerHitVec_2_greater_2 : 2'h0 == tdata_2_matchType &
    triggerHitVec_2_equal_2; // @[Mux.scala 81:58]
  wire  triggerHitVec_2_res_2 = 2'h3 == tdata_2_matchType ? triggerHitVec_2_less_2 : _triggerHitVec_2_res_T_13; // @[Mux.scala 81:58]
  wire  _triggerHitVec_2_T_7 = triggerHitVec_2_res_2 & triggerEnable_2; // @[Trigger.scala 34:9]
  wire  triggerHitVec_2_equal_3 = _GEN_91 == tdata_2_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_2_greater_3 = _GEN_91 >= tdata_2_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_2_less_3 = _GEN_91 <= tdata_2_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_2_res_T_18 = 2'h2 == tdata_2_matchType ? triggerHitVec_2_greater_3 : 2'h0 == tdata_2_matchType &
    triggerHitVec_2_equal_3; // @[Mux.scala 81:58]
  wire  triggerHitVec_2_res_3 = 2'h3 == tdata_2_matchType ? triggerHitVec_2_less_3 : _triggerHitVec_2_res_T_18; // @[Mux.scala 81:58]
  wire  _triggerHitVec_2_T_8 = triggerHitVec_2_res_3 & triggerEnable_2; // @[Trigger.scala 34:9]
  wire  triggerHitVec_1_2 = tdata_2_select ? _triggerHitVec_2_T_7 : _triggerHitVec_2_T_8; // @[PreDecode.scala 316:30]
  wire  triggerHitVec_3_equal_2 = _GEN_88 == tdata_3_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_3_greater_2 = _GEN_88 >= tdata_3_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_3_less_2 = _GEN_88 <= tdata_3_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_3_res_T_13 = 2'h2 == tdata_3_matchType ? triggerHitVec_3_greater_2 : 2'h0 == tdata_3_matchType &
    triggerHitVec_3_equal_2; // @[Mux.scala 81:58]
  wire  triggerHitVec_3_res_2 = 2'h3 == tdata_3_matchType ? triggerHitVec_3_less_2 : _triggerHitVec_3_res_T_13; // @[Mux.scala 81:58]
  wire  _triggerHitVec_3_T_7 = triggerHitVec_3_res_2 & triggerEnable_3; // @[Trigger.scala 34:9]
  wire  triggerHitVec_3_equal_3 = _GEN_91 == tdata_3_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_3_greater_3 = _GEN_91 >= tdata_3_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_3_less_3 = _GEN_91 <= tdata_3_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_3_res_T_18 = 2'h2 == tdata_3_matchType ? triggerHitVec_3_greater_3 : 2'h0 == tdata_3_matchType &
    triggerHitVec_3_equal_3; // @[Mux.scala 81:58]
  wire  triggerHitVec_3_res_3 = 2'h3 == tdata_3_matchType ? triggerHitVec_3_less_3 : _triggerHitVec_3_res_T_18; // @[Mux.scala 81:58]
  wire  _triggerHitVec_3_T_8 = triggerHitVec_3_res_3 & triggerEnable_3; // @[Trigger.scala 34:9]
  wire  triggerHitVec_1_3 = tdata_3_select ? _triggerHitVec_3_T_7 : _triggerHitVec_3_T_8; // @[PreDecode.scala 316:30]
  wire  _io_triggered_1_frontendHit_0_T_2 = triggerHitVec_1_0 & triggerHitVec_1_1 & tdata_0_timing == tdata_1_timing; // @[PreDecode.scala 324:78]
  wire [31:0] _triggerHitVec_0_T_11 = io_pds_2_isRVC ? {{16'd0}, rawInsts_2[15:0]} : rawInsts_2; // @[PreDecode.scala 316:62]
  wire [63:0] _GEN_112 = {{32'd0}, _triggerHitVec_0_T_11}; // @[Trigger.scala 27:24]
  wire  triggerHitVec_0_equal_4 = _GEN_112 == tdata_0_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_0_greater_4 = _GEN_112 >= tdata_0_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_0_less_4 = _GEN_112 <= tdata_0_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_0_res_T_23 = 2'h2 == tdata_0_matchType ? triggerHitVec_0_greater_4 : 2'h0 == tdata_0_matchType &
    triggerHitVec_0_equal_4; // @[Mux.scala 81:58]
  wire  triggerHitVec_0_res_4 = 2'h3 == tdata_0_matchType ? triggerHitVec_0_less_4 : _triggerHitVec_0_res_T_23; // @[Mux.scala 81:58]
  wire  _triggerHitVec_0_T_12 = triggerHitVec_0_res_4 & triggerEnable_0; // @[Trigger.scala 34:9]
  wire [63:0] _GEN_115 = {{25'd0}, io_pc_2}; // @[Trigger.scala 27:24]
  wire  triggerHitVec_0_equal_5 = _GEN_115 == tdata_0_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_0_greater_5 = _GEN_115 >= tdata_0_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_0_less_5 = _GEN_115 <= tdata_0_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_0_res_T_28 = 2'h2 == tdata_0_matchType ? triggerHitVec_0_greater_5 : 2'h0 == tdata_0_matchType &
    triggerHitVec_0_equal_5; // @[Mux.scala 81:58]
  wire  triggerHitVec_0_res_5 = 2'h3 == tdata_0_matchType ? triggerHitVec_0_less_5 : _triggerHitVec_0_res_T_28; // @[Mux.scala 81:58]
  wire  _triggerHitVec_0_T_13 = triggerHitVec_0_res_5 & triggerEnable_0; // @[Trigger.scala 34:9]
  wire  triggerHitVec_2_0 = tdata_0_select ? _triggerHitVec_0_T_12 : _triggerHitVec_0_T_13; // @[PreDecode.scala 316:30]
  wire  triggerHitVec_1_equal_4 = _GEN_112 == tdata_1_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_1_greater_4 = _GEN_112 >= tdata_1_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_1_less_4 = _GEN_112 <= tdata_1_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_1_res_T_23 = 2'h2 == tdata_1_matchType ? triggerHitVec_1_greater_4 : 2'h0 == tdata_1_matchType &
    triggerHitVec_1_equal_4; // @[Mux.scala 81:58]
  wire  triggerHitVec_1_res_4 = 2'h3 == tdata_1_matchType ? triggerHitVec_1_less_4 : _triggerHitVec_1_res_T_23; // @[Mux.scala 81:58]
  wire  _triggerHitVec_1_T_12 = triggerHitVec_1_res_4 & triggerEnable_1; // @[Trigger.scala 34:9]
  wire  triggerHitVec_1_equal_5 = _GEN_115 == tdata_1_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_1_greater_5 = _GEN_115 >= tdata_1_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_1_less_5 = _GEN_115 <= tdata_1_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_1_res_T_28 = 2'h2 == tdata_1_matchType ? triggerHitVec_1_greater_5 : 2'h0 == tdata_1_matchType &
    triggerHitVec_1_equal_5; // @[Mux.scala 81:58]
  wire  triggerHitVec_1_res_5 = 2'h3 == tdata_1_matchType ? triggerHitVec_1_less_5 : _triggerHitVec_1_res_T_28; // @[Mux.scala 81:58]
  wire  _triggerHitVec_1_T_13 = triggerHitVec_1_res_5 & triggerEnable_1; // @[Trigger.scala 34:9]
  wire  triggerHitVec_2_1 = tdata_1_select ? _triggerHitVec_1_T_12 : _triggerHitVec_1_T_13; // @[PreDecode.scala 316:30]
  wire  triggerHitVec_2_equal_4 = _GEN_112 == tdata_2_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_2_greater_4 = _GEN_112 >= tdata_2_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_2_less_4 = _GEN_112 <= tdata_2_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_2_res_T_23 = 2'h2 == tdata_2_matchType ? triggerHitVec_2_greater_4 : 2'h0 == tdata_2_matchType &
    triggerHitVec_2_equal_4; // @[Mux.scala 81:58]
  wire  triggerHitVec_2_res_4 = 2'h3 == tdata_2_matchType ? triggerHitVec_2_less_4 : _triggerHitVec_2_res_T_23; // @[Mux.scala 81:58]
  wire  _triggerHitVec_2_T_12 = triggerHitVec_2_res_4 & triggerEnable_2; // @[Trigger.scala 34:9]
  wire  triggerHitVec_2_equal_5 = _GEN_115 == tdata_2_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_2_greater_5 = _GEN_115 >= tdata_2_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_2_less_5 = _GEN_115 <= tdata_2_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_2_res_T_28 = 2'h2 == tdata_2_matchType ? triggerHitVec_2_greater_5 : 2'h0 == tdata_2_matchType &
    triggerHitVec_2_equal_5; // @[Mux.scala 81:58]
  wire  triggerHitVec_2_res_5 = 2'h3 == tdata_2_matchType ? triggerHitVec_2_less_5 : _triggerHitVec_2_res_T_28; // @[Mux.scala 81:58]
  wire  _triggerHitVec_2_T_13 = triggerHitVec_2_res_5 & triggerEnable_2; // @[Trigger.scala 34:9]
  wire  triggerHitVec_2_2 = tdata_2_select ? _triggerHitVec_2_T_12 : _triggerHitVec_2_T_13; // @[PreDecode.scala 316:30]
  wire  triggerHitVec_3_equal_4 = _GEN_112 == tdata_3_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_3_greater_4 = _GEN_112 >= tdata_3_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_3_less_4 = _GEN_112 <= tdata_3_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_3_res_T_23 = 2'h2 == tdata_3_matchType ? triggerHitVec_3_greater_4 : 2'h0 == tdata_3_matchType &
    triggerHitVec_3_equal_4; // @[Mux.scala 81:58]
  wire  triggerHitVec_3_res_4 = 2'h3 == tdata_3_matchType ? triggerHitVec_3_less_4 : _triggerHitVec_3_res_T_23; // @[Mux.scala 81:58]
  wire  _triggerHitVec_3_T_12 = triggerHitVec_3_res_4 & triggerEnable_3; // @[Trigger.scala 34:9]
  wire  triggerHitVec_3_equal_5 = _GEN_115 == tdata_3_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_3_greater_5 = _GEN_115 >= tdata_3_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_3_less_5 = _GEN_115 <= tdata_3_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_3_res_T_28 = 2'h2 == tdata_3_matchType ? triggerHitVec_3_greater_5 : 2'h0 == tdata_3_matchType &
    triggerHitVec_3_equal_5; // @[Mux.scala 81:58]
  wire  triggerHitVec_3_res_5 = 2'h3 == tdata_3_matchType ? triggerHitVec_3_less_5 : _triggerHitVec_3_res_T_28; // @[Mux.scala 81:58]
  wire  _triggerHitVec_3_T_13 = triggerHitVec_3_res_5 & triggerEnable_3; // @[Trigger.scala 34:9]
  wire  triggerHitVec_2_3 = tdata_3_select ? _triggerHitVec_3_T_12 : _triggerHitVec_3_T_13; // @[PreDecode.scala 316:30]
  wire  _io_triggered_2_frontendHit_0_T_2 = triggerHitVec_2_0 & triggerHitVec_2_1 & tdata_0_timing == tdata_1_timing; // @[PreDecode.scala 324:78]
  wire [31:0] _triggerHitVec_0_T_16 = io_pds_3_isRVC ? {{16'd0}, rawInsts_3[15:0]} : rawInsts_3; // @[PreDecode.scala 316:62]
  wire [63:0] _GEN_136 = {{32'd0}, _triggerHitVec_0_T_16}; // @[Trigger.scala 27:24]
  wire  triggerHitVec_0_equal_6 = _GEN_136 == tdata_0_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_0_greater_6 = _GEN_136 >= tdata_0_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_0_less_6 = _GEN_136 <= tdata_0_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_0_res_T_33 = 2'h2 == tdata_0_matchType ? triggerHitVec_0_greater_6 : 2'h0 == tdata_0_matchType &
    triggerHitVec_0_equal_6; // @[Mux.scala 81:58]
  wire  triggerHitVec_0_res_6 = 2'h3 == tdata_0_matchType ? triggerHitVec_0_less_6 : _triggerHitVec_0_res_T_33; // @[Mux.scala 81:58]
  wire  _triggerHitVec_0_T_17 = triggerHitVec_0_res_6 & triggerEnable_0; // @[Trigger.scala 34:9]
  wire [63:0] _GEN_139 = {{25'd0}, io_pc_3}; // @[Trigger.scala 27:24]
  wire  triggerHitVec_0_equal_7 = _GEN_139 == tdata_0_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_0_greater_7 = _GEN_139 >= tdata_0_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_0_less_7 = _GEN_139 <= tdata_0_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_0_res_T_38 = 2'h2 == tdata_0_matchType ? triggerHitVec_0_greater_7 : 2'h0 == tdata_0_matchType &
    triggerHitVec_0_equal_7; // @[Mux.scala 81:58]
  wire  triggerHitVec_0_res_7 = 2'h3 == tdata_0_matchType ? triggerHitVec_0_less_7 : _triggerHitVec_0_res_T_38; // @[Mux.scala 81:58]
  wire  _triggerHitVec_0_T_18 = triggerHitVec_0_res_7 & triggerEnable_0; // @[Trigger.scala 34:9]
  wire  triggerHitVec_3_0 = tdata_0_select ? _triggerHitVec_0_T_17 : _triggerHitVec_0_T_18; // @[PreDecode.scala 316:30]
  wire  triggerHitVec_1_equal_6 = _GEN_136 == tdata_1_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_1_greater_6 = _GEN_136 >= tdata_1_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_1_less_6 = _GEN_136 <= tdata_1_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_1_res_T_33 = 2'h2 == tdata_1_matchType ? triggerHitVec_1_greater_6 : 2'h0 == tdata_1_matchType &
    triggerHitVec_1_equal_6; // @[Mux.scala 81:58]
  wire  triggerHitVec_1_res_6 = 2'h3 == tdata_1_matchType ? triggerHitVec_1_less_6 : _triggerHitVec_1_res_T_33; // @[Mux.scala 81:58]
  wire  _triggerHitVec_1_T_17 = triggerHitVec_1_res_6 & triggerEnable_1; // @[Trigger.scala 34:9]
  wire  triggerHitVec_1_equal_7 = _GEN_139 == tdata_1_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_1_greater_7 = _GEN_139 >= tdata_1_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_1_less_7 = _GEN_139 <= tdata_1_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_1_res_T_38 = 2'h2 == tdata_1_matchType ? triggerHitVec_1_greater_7 : 2'h0 == tdata_1_matchType &
    triggerHitVec_1_equal_7; // @[Mux.scala 81:58]
  wire  triggerHitVec_1_res_7 = 2'h3 == tdata_1_matchType ? triggerHitVec_1_less_7 : _triggerHitVec_1_res_T_38; // @[Mux.scala 81:58]
  wire  _triggerHitVec_1_T_18 = triggerHitVec_1_res_7 & triggerEnable_1; // @[Trigger.scala 34:9]
  wire  triggerHitVec_3_1 = tdata_1_select ? _triggerHitVec_1_T_17 : _triggerHitVec_1_T_18; // @[PreDecode.scala 316:30]
  wire  triggerHitVec_2_equal_6 = _GEN_136 == tdata_2_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_2_greater_6 = _GEN_136 >= tdata_2_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_2_less_6 = _GEN_136 <= tdata_2_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_2_res_T_33 = 2'h2 == tdata_2_matchType ? triggerHitVec_2_greater_6 : 2'h0 == tdata_2_matchType &
    triggerHitVec_2_equal_6; // @[Mux.scala 81:58]
  wire  triggerHitVec_2_res_6 = 2'h3 == tdata_2_matchType ? triggerHitVec_2_less_6 : _triggerHitVec_2_res_T_33; // @[Mux.scala 81:58]
  wire  _triggerHitVec_2_T_17 = triggerHitVec_2_res_6 & triggerEnable_2; // @[Trigger.scala 34:9]
  wire  triggerHitVec_2_equal_7 = _GEN_139 == tdata_2_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_2_greater_7 = _GEN_139 >= tdata_2_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_2_less_7 = _GEN_139 <= tdata_2_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_2_res_T_38 = 2'h2 == tdata_2_matchType ? triggerHitVec_2_greater_7 : 2'h0 == tdata_2_matchType &
    triggerHitVec_2_equal_7; // @[Mux.scala 81:58]
  wire  triggerHitVec_2_res_7 = 2'h3 == tdata_2_matchType ? triggerHitVec_2_less_7 : _triggerHitVec_2_res_T_38; // @[Mux.scala 81:58]
  wire  _triggerHitVec_2_T_18 = triggerHitVec_2_res_7 & triggerEnable_2; // @[Trigger.scala 34:9]
  wire  triggerHitVec_3_2 = tdata_2_select ? _triggerHitVec_2_T_17 : _triggerHitVec_2_T_18; // @[PreDecode.scala 316:30]
  wire  triggerHitVec_3_equal_6 = _GEN_136 == tdata_3_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_3_greater_6 = _GEN_136 >= tdata_3_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_3_less_6 = _GEN_136 <= tdata_3_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_3_res_T_33 = 2'h2 == tdata_3_matchType ? triggerHitVec_3_greater_6 : 2'h0 == tdata_3_matchType &
    triggerHitVec_3_equal_6; // @[Mux.scala 81:58]
  wire  triggerHitVec_3_res_6 = 2'h3 == tdata_3_matchType ? triggerHitVec_3_less_6 : _triggerHitVec_3_res_T_33; // @[Mux.scala 81:58]
  wire  _triggerHitVec_3_T_17 = triggerHitVec_3_res_6 & triggerEnable_3; // @[Trigger.scala 34:9]
  wire  triggerHitVec_3_equal_7 = _GEN_139 == tdata_3_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_3_greater_7 = _GEN_139 >= tdata_3_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_3_less_7 = _GEN_139 <= tdata_3_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_3_res_T_38 = 2'h2 == tdata_3_matchType ? triggerHitVec_3_greater_7 : 2'h0 == tdata_3_matchType &
    triggerHitVec_3_equal_7; // @[Mux.scala 81:58]
  wire  triggerHitVec_3_res_7 = 2'h3 == tdata_3_matchType ? triggerHitVec_3_less_7 : _triggerHitVec_3_res_T_38; // @[Mux.scala 81:58]
  wire  _triggerHitVec_3_T_18 = triggerHitVec_3_res_7 & triggerEnable_3; // @[Trigger.scala 34:9]
  wire  triggerHitVec_3_3 = tdata_3_select ? _triggerHitVec_3_T_17 : _triggerHitVec_3_T_18; // @[PreDecode.scala 316:30]
  wire  _io_triggered_3_frontendHit_0_T_2 = triggerHitVec_3_0 & triggerHitVec_3_1 & tdata_0_timing == tdata_1_timing; // @[PreDecode.scala 324:78]
  wire [31:0] _triggerHitVec_0_T_21 = io_pds_4_isRVC ? {{16'd0}, rawInsts_4[15:0]} : rawInsts_4; // @[PreDecode.scala 316:62]
  wire [63:0] _GEN_160 = {{32'd0}, _triggerHitVec_0_T_21}; // @[Trigger.scala 27:24]
  wire  triggerHitVec_0_equal_8 = _GEN_160 == tdata_0_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_0_greater_8 = _GEN_160 >= tdata_0_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_0_less_8 = _GEN_160 <= tdata_0_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_0_res_T_43 = 2'h2 == tdata_0_matchType ? triggerHitVec_0_greater_8 : 2'h0 == tdata_0_matchType &
    triggerHitVec_0_equal_8; // @[Mux.scala 81:58]
  wire  triggerHitVec_0_res_8 = 2'h3 == tdata_0_matchType ? triggerHitVec_0_less_8 : _triggerHitVec_0_res_T_43; // @[Mux.scala 81:58]
  wire  _triggerHitVec_0_T_22 = triggerHitVec_0_res_8 & triggerEnable_0; // @[Trigger.scala 34:9]
  wire [63:0] _GEN_163 = {{25'd0}, io_pc_4}; // @[Trigger.scala 27:24]
  wire  triggerHitVec_0_equal_9 = _GEN_163 == tdata_0_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_0_greater_9 = _GEN_163 >= tdata_0_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_0_less_9 = _GEN_163 <= tdata_0_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_0_res_T_48 = 2'h2 == tdata_0_matchType ? triggerHitVec_0_greater_9 : 2'h0 == tdata_0_matchType &
    triggerHitVec_0_equal_9; // @[Mux.scala 81:58]
  wire  triggerHitVec_0_res_9 = 2'h3 == tdata_0_matchType ? triggerHitVec_0_less_9 : _triggerHitVec_0_res_T_48; // @[Mux.scala 81:58]
  wire  _triggerHitVec_0_T_23 = triggerHitVec_0_res_9 & triggerEnable_0; // @[Trigger.scala 34:9]
  wire  triggerHitVec_4_0 = tdata_0_select ? _triggerHitVec_0_T_22 : _triggerHitVec_0_T_23; // @[PreDecode.scala 316:30]
  wire  triggerHitVec_1_equal_8 = _GEN_160 == tdata_1_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_1_greater_8 = _GEN_160 >= tdata_1_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_1_less_8 = _GEN_160 <= tdata_1_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_1_res_T_43 = 2'h2 == tdata_1_matchType ? triggerHitVec_1_greater_8 : 2'h0 == tdata_1_matchType &
    triggerHitVec_1_equal_8; // @[Mux.scala 81:58]
  wire  triggerHitVec_1_res_8 = 2'h3 == tdata_1_matchType ? triggerHitVec_1_less_8 : _triggerHitVec_1_res_T_43; // @[Mux.scala 81:58]
  wire  _triggerHitVec_1_T_22 = triggerHitVec_1_res_8 & triggerEnable_1; // @[Trigger.scala 34:9]
  wire  triggerHitVec_1_equal_9 = _GEN_163 == tdata_1_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_1_greater_9 = _GEN_163 >= tdata_1_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_1_less_9 = _GEN_163 <= tdata_1_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_1_res_T_48 = 2'h2 == tdata_1_matchType ? triggerHitVec_1_greater_9 : 2'h0 == tdata_1_matchType &
    triggerHitVec_1_equal_9; // @[Mux.scala 81:58]
  wire  triggerHitVec_1_res_9 = 2'h3 == tdata_1_matchType ? triggerHitVec_1_less_9 : _triggerHitVec_1_res_T_48; // @[Mux.scala 81:58]
  wire  _triggerHitVec_1_T_23 = triggerHitVec_1_res_9 & triggerEnable_1; // @[Trigger.scala 34:9]
  wire  triggerHitVec_4_1 = tdata_1_select ? _triggerHitVec_1_T_22 : _triggerHitVec_1_T_23; // @[PreDecode.scala 316:30]
  wire  triggerHitVec_2_equal_8 = _GEN_160 == tdata_2_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_2_greater_8 = _GEN_160 >= tdata_2_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_2_less_8 = _GEN_160 <= tdata_2_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_2_res_T_43 = 2'h2 == tdata_2_matchType ? triggerHitVec_2_greater_8 : 2'h0 == tdata_2_matchType &
    triggerHitVec_2_equal_8; // @[Mux.scala 81:58]
  wire  triggerHitVec_2_res_8 = 2'h3 == tdata_2_matchType ? triggerHitVec_2_less_8 : _triggerHitVec_2_res_T_43; // @[Mux.scala 81:58]
  wire  _triggerHitVec_2_T_22 = triggerHitVec_2_res_8 & triggerEnable_2; // @[Trigger.scala 34:9]
  wire  triggerHitVec_2_equal_9 = _GEN_163 == tdata_2_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_2_greater_9 = _GEN_163 >= tdata_2_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_2_less_9 = _GEN_163 <= tdata_2_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_2_res_T_48 = 2'h2 == tdata_2_matchType ? triggerHitVec_2_greater_9 : 2'h0 == tdata_2_matchType &
    triggerHitVec_2_equal_9; // @[Mux.scala 81:58]
  wire  triggerHitVec_2_res_9 = 2'h3 == tdata_2_matchType ? triggerHitVec_2_less_9 : _triggerHitVec_2_res_T_48; // @[Mux.scala 81:58]
  wire  _triggerHitVec_2_T_23 = triggerHitVec_2_res_9 & triggerEnable_2; // @[Trigger.scala 34:9]
  wire  triggerHitVec_4_2 = tdata_2_select ? _triggerHitVec_2_T_22 : _triggerHitVec_2_T_23; // @[PreDecode.scala 316:30]
  wire  triggerHitVec_3_equal_8 = _GEN_160 == tdata_3_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_3_greater_8 = _GEN_160 >= tdata_3_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_3_less_8 = _GEN_160 <= tdata_3_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_3_res_T_43 = 2'h2 == tdata_3_matchType ? triggerHitVec_3_greater_8 : 2'h0 == tdata_3_matchType &
    triggerHitVec_3_equal_8; // @[Mux.scala 81:58]
  wire  triggerHitVec_3_res_8 = 2'h3 == tdata_3_matchType ? triggerHitVec_3_less_8 : _triggerHitVec_3_res_T_43; // @[Mux.scala 81:58]
  wire  _triggerHitVec_3_T_22 = triggerHitVec_3_res_8 & triggerEnable_3; // @[Trigger.scala 34:9]
  wire  triggerHitVec_3_equal_9 = _GEN_163 == tdata_3_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_3_greater_9 = _GEN_163 >= tdata_3_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_3_less_9 = _GEN_163 <= tdata_3_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_3_res_T_48 = 2'h2 == tdata_3_matchType ? triggerHitVec_3_greater_9 : 2'h0 == tdata_3_matchType &
    triggerHitVec_3_equal_9; // @[Mux.scala 81:58]
  wire  triggerHitVec_3_res_9 = 2'h3 == tdata_3_matchType ? triggerHitVec_3_less_9 : _triggerHitVec_3_res_T_48; // @[Mux.scala 81:58]
  wire  _triggerHitVec_3_T_23 = triggerHitVec_3_res_9 & triggerEnable_3; // @[Trigger.scala 34:9]
  wire  triggerHitVec_4_3 = tdata_3_select ? _triggerHitVec_3_T_22 : _triggerHitVec_3_T_23; // @[PreDecode.scala 316:30]
  wire  _io_triggered_4_frontendHit_0_T_2 = triggerHitVec_4_0 & triggerHitVec_4_1 & tdata_0_timing == tdata_1_timing; // @[PreDecode.scala 324:78]
  wire [31:0] _triggerHitVec_0_T_26 = io_pds_5_isRVC ? {{16'd0}, rawInsts_5[15:0]} : rawInsts_5; // @[PreDecode.scala 316:62]
  wire [63:0] _GEN_184 = {{32'd0}, _triggerHitVec_0_T_26}; // @[Trigger.scala 27:24]
  wire  triggerHitVec_0_equal_10 = _GEN_184 == tdata_0_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_0_greater_10 = _GEN_184 >= tdata_0_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_0_less_10 = _GEN_184 <= tdata_0_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_0_res_T_53 = 2'h2 == tdata_0_matchType ? triggerHitVec_0_greater_10 : 2'h0 == tdata_0_matchType
     & triggerHitVec_0_equal_10; // @[Mux.scala 81:58]
  wire  triggerHitVec_0_res_10 = 2'h3 == tdata_0_matchType ? triggerHitVec_0_less_10 : _triggerHitVec_0_res_T_53; // @[Mux.scala 81:58]
  wire  _triggerHitVec_0_T_27 = triggerHitVec_0_res_10 & triggerEnable_0; // @[Trigger.scala 34:9]
  wire [63:0] _GEN_187 = {{25'd0}, io_pc_5}; // @[Trigger.scala 27:24]
  wire  triggerHitVec_0_equal_11 = _GEN_187 == tdata_0_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_0_greater_11 = _GEN_187 >= tdata_0_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_0_less_11 = _GEN_187 <= tdata_0_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_0_res_T_58 = 2'h2 == tdata_0_matchType ? triggerHitVec_0_greater_11 : 2'h0 == tdata_0_matchType
     & triggerHitVec_0_equal_11; // @[Mux.scala 81:58]
  wire  triggerHitVec_0_res_11 = 2'h3 == tdata_0_matchType ? triggerHitVec_0_less_11 : _triggerHitVec_0_res_T_58; // @[Mux.scala 81:58]
  wire  _triggerHitVec_0_T_28 = triggerHitVec_0_res_11 & triggerEnable_0; // @[Trigger.scala 34:9]
  wire  triggerHitVec_5_0 = tdata_0_select ? _triggerHitVec_0_T_27 : _triggerHitVec_0_T_28; // @[PreDecode.scala 316:30]
  wire  triggerHitVec_1_equal_10 = _GEN_184 == tdata_1_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_1_greater_10 = _GEN_184 >= tdata_1_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_1_less_10 = _GEN_184 <= tdata_1_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_1_res_T_53 = 2'h2 == tdata_1_matchType ? triggerHitVec_1_greater_10 : 2'h0 == tdata_1_matchType
     & triggerHitVec_1_equal_10; // @[Mux.scala 81:58]
  wire  triggerHitVec_1_res_10 = 2'h3 == tdata_1_matchType ? triggerHitVec_1_less_10 : _triggerHitVec_1_res_T_53; // @[Mux.scala 81:58]
  wire  _triggerHitVec_1_T_27 = triggerHitVec_1_res_10 & triggerEnable_1; // @[Trigger.scala 34:9]
  wire  triggerHitVec_1_equal_11 = _GEN_187 == tdata_1_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_1_greater_11 = _GEN_187 >= tdata_1_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_1_less_11 = _GEN_187 <= tdata_1_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_1_res_T_58 = 2'h2 == tdata_1_matchType ? triggerHitVec_1_greater_11 : 2'h0 == tdata_1_matchType
     & triggerHitVec_1_equal_11; // @[Mux.scala 81:58]
  wire  triggerHitVec_1_res_11 = 2'h3 == tdata_1_matchType ? triggerHitVec_1_less_11 : _triggerHitVec_1_res_T_58; // @[Mux.scala 81:58]
  wire  _triggerHitVec_1_T_28 = triggerHitVec_1_res_11 & triggerEnable_1; // @[Trigger.scala 34:9]
  wire  triggerHitVec_5_1 = tdata_1_select ? _triggerHitVec_1_T_27 : _triggerHitVec_1_T_28; // @[PreDecode.scala 316:30]
  wire  triggerHitVec_2_equal_10 = _GEN_184 == tdata_2_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_2_greater_10 = _GEN_184 >= tdata_2_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_2_less_10 = _GEN_184 <= tdata_2_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_2_res_T_53 = 2'h2 == tdata_2_matchType ? triggerHitVec_2_greater_10 : 2'h0 == tdata_2_matchType
     & triggerHitVec_2_equal_10; // @[Mux.scala 81:58]
  wire  triggerHitVec_2_res_10 = 2'h3 == tdata_2_matchType ? triggerHitVec_2_less_10 : _triggerHitVec_2_res_T_53; // @[Mux.scala 81:58]
  wire  _triggerHitVec_2_T_27 = triggerHitVec_2_res_10 & triggerEnable_2; // @[Trigger.scala 34:9]
  wire  triggerHitVec_2_equal_11 = _GEN_187 == tdata_2_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_2_greater_11 = _GEN_187 >= tdata_2_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_2_less_11 = _GEN_187 <= tdata_2_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_2_res_T_58 = 2'h2 == tdata_2_matchType ? triggerHitVec_2_greater_11 : 2'h0 == tdata_2_matchType
     & triggerHitVec_2_equal_11; // @[Mux.scala 81:58]
  wire  triggerHitVec_2_res_11 = 2'h3 == tdata_2_matchType ? triggerHitVec_2_less_11 : _triggerHitVec_2_res_T_58; // @[Mux.scala 81:58]
  wire  _triggerHitVec_2_T_28 = triggerHitVec_2_res_11 & triggerEnable_2; // @[Trigger.scala 34:9]
  wire  triggerHitVec_5_2 = tdata_2_select ? _triggerHitVec_2_T_27 : _triggerHitVec_2_T_28; // @[PreDecode.scala 316:30]
  wire  triggerHitVec_3_equal_10 = _GEN_184 == tdata_3_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_3_greater_10 = _GEN_184 >= tdata_3_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_3_less_10 = _GEN_184 <= tdata_3_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_3_res_T_53 = 2'h2 == tdata_3_matchType ? triggerHitVec_3_greater_10 : 2'h0 == tdata_3_matchType
     & triggerHitVec_3_equal_10; // @[Mux.scala 81:58]
  wire  triggerHitVec_3_res_10 = 2'h3 == tdata_3_matchType ? triggerHitVec_3_less_10 : _triggerHitVec_3_res_T_53; // @[Mux.scala 81:58]
  wire  _triggerHitVec_3_T_27 = triggerHitVec_3_res_10 & triggerEnable_3; // @[Trigger.scala 34:9]
  wire  triggerHitVec_3_equal_11 = _GEN_187 == tdata_3_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_3_greater_11 = _GEN_187 >= tdata_3_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_3_less_11 = _GEN_187 <= tdata_3_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_3_res_T_58 = 2'h2 == tdata_3_matchType ? triggerHitVec_3_greater_11 : 2'h0 == tdata_3_matchType
     & triggerHitVec_3_equal_11; // @[Mux.scala 81:58]
  wire  triggerHitVec_3_res_11 = 2'h3 == tdata_3_matchType ? triggerHitVec_3_less_11 : _triggerHitVec_3_res_T_58; // @[Mux.scala 81:58]
  wire  _triggerHitVec_3_T_28 = triggerHitVec_3_res_11 & triggerEnable_3; // @[Trigger.scala 34:9]
  wire  triggerHitVec_5_3 = tdata_3_select ? _triggerHitVec_3_T_27 : _triggerHitVec_3_T_28; // @[PreDecode.scala 316:30]
  wire  _io_triggered_5_frontendHit_0_T_2 = triggerHitVec_5_0 & triggerHitVec_5_1 & tdata_0_timing == tdata_1_timing; // @[PreDecode.scala 324:78]
  wire [31:0] _triggerHitVec_0_T_31 = io_pds_6_isRVC ? {{16'd0}, rawInsts_6[15:0]} : rawInsts_6; // @[PreDecode.scala 316:62]
  wire [63:0] _GEN_208 = {{32'd0}, _triggerHitVec_0_T_31}; // @[Trigger.scala 27:24]
  wire  triggerHitVec_0_equal_12 = _GEN_208 == tdata_0_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_0_greater_12 = _GEN_208 >= tdata_0_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_0_less_12 = _GEN_208 <= tdata_0_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_0_res_T_63 = 2'h2 == tdata_0_matchType ? triggerHitVec_0_greater_12 : 2'h0 == tdata_0_matchType
     & triggerHitVec_0_equal_12; // @[Mux.scala 81:58]
  wire  triggerHitVec_0_res_12 = 2'h3 == tdata_0_matchType ? triggerHitVec_0_less_12 : _triggerHitVec_0_res_T_63; // @[Mux.scala 81:58]
  wire  _triggerHitVec_0_T_32 = triggerHitVec_0_res_12 & triggerEnable_0; // @[Trigger.scala 34:9]
  wire [63:0] _GEN_211 = {{25'd0}, io_pc_6}; // @[Trigger.scala 27:24]
  wire  triggerHitVec_0_equal_13 = _GEN_211 == tdata_0_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_0_greater_13 = _GEN_211 >= tdata_0_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_0_less_13 = _GEN_211 <= tdata_0_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_0_res_T_68 = 2'h2 == tdata_0_matchType ? triggerHitVec_0_greater_13 : 2'h0 == tdata_0_matchType
     & triggerHitVec_0_equal_13; // @[Mux.scala 81:58]
  wire  triggerHitVec_0_res_13 = 2'h3 == tdata_0_matchType ? triggerHitVec_0_less_13 : _triggerHitVec_0_res_T_68; // @[Mux.scala 81:58]
  wire  _triggerHitVec_0_T_33 = triggerHitVec_0_res_13 & triggerEnable_0; // @[Trigger.scala 34:9]
  wire  triggerHitVec_6_0 = tdata_0_select ? _triggerHitVec_0_T_32 : _triggerHitVec_0_T_33; // @[PreDecode.scala 316:30]
  wire  triggerHitVec_1_equal_12 = _GEN_208 == tdata_1_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_1_greater_12 = _GEN_208 >= tdata_1_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_1_less_12 = _GEN_208 <= tdata_1_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_1_res_T_63 = 2'h2 == tdata_1_matchType ? triggerHitVec_1_greater_12 : 2'h0 == tdata_1_matchType
     & triggerHitVec_1_equal_12; // @[Mux.scala 81:58]
  wire  triggerHitVec_1_res_12 = 2'h3 == tdata_1_matchType ? triggerHitVec_1_less_12 : _triggerHitVec_1_res_T_63; // @[Mux.scala 81:58]
  wire  _triggerHitVec_1_T_32 = triggerHitVec_1_res_12 & triggerEnable_1; // @[Trigger.scala 34:9]
  wire  triggerHitVec_1_equal_13 = _GEN_211 == tdata_1_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_1_greater_13 = _GEN_211 >= tdata_1_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_1_less_13 = _GEN_211 <= tdata_1_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_1_res_T_68 = 2'h2 == tdata_1_matchType ? triggerHitVec_1_greater_13 : 2'h0 == tdata_1_matchType
     & triggerHitVec_1_equal_13; // @[Mux.scala 81:58]
  wire  triggerHitVec_1_res_13 = 2'h3 == tdata_1_matchType ? triggerHitVec_1_less_13 : _triggerHitVec_1_res_T_68; // @[Mux.scala 81:58]
  wire  _triggerHitVec_1_T_33 = triggerHitVec_1_res_13 & triggerEnable_1; // @[Trigger.scala 34:9]
  wire  triggerHitVec_6_1 = tdata_1_select ? _triggerHitVec_1_T_32 : _triggerHitVec_1_T_33; // @[PreDecode.scala 316:30]
  wire  triggerHitVec_2_equal_12 = _GEN_208 == tdata_2_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_2_greater_12 = _GEN_208 >= tdata_2_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_2_less_12 = _GEN_208 <= tdata_2_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_2_res_T_63 = 2'h2 == tdata_2_matchType ? triggerHitVec_2_greater_12 : 2'h0 == tdata_2_matchType
     & triggerHitVec_2_equal_12; // @[Mux.scala 81:58]
  wire  triggerHitVec_2_res_12 = 2'h3 == tdata_2_matchType ? triggerHitVec_2_less_12 : _triggerHitVec_2_res_T_63; // @[Mux.scala 81:58]
  wire  _triggerHitVec_2_T_32 = triggerHitVec_2_res_12 & triggerEnable_2; // @[Trigger.scala 34:9]
  wire  triggerHitVec_2_equal_13 = _GEN_211 == tdata_2_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_2_greater_13 = _GEN_211 >= tdata_2_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_2_less_13 = _GEN_211 <= tdata_2_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_2_res_T_68 = 2'h2 == tdata_2_matchType ? triggerHitVec_2_greater_13 : 2'h0 == tdata_2_matchType
     & triggerHitVec_2_equal_13; // @[Mux.scala 81:58]
  wire  triggerHitVec_2_res_13 = 2'h3 == tdata_2_matchType ? triggerHitVec_2_less_13 : _triggerHitVec_2_res_T_68; // @[Mux.scala 81:58]
  wire  _triggerHitVec_2_T_33 = triggerHitVec_2_res_13 & triggerEnable_2; // @[Trigger.scala 34:9]
  wire  triggerHitVec_6_2 = tdata_2_select ? _triggerHitVec_2_T_32 : _triggerHitVec_2_T_33; // @[PreDecode.scala 316:30]
  wire  triggerHitVec_3_equal_12 = _GEN_208 == tdata_3_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_3_greater_12 = _GEN_208 >= tdata_3_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_3_less_12 = _GEN_208 <= tdata_3_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_3_res_T_63 = 2'h2 == tdata_3_matchType ? triggerHitVec_3_greater_12 : 2'h0 == tdata_3_matchType
     & triggerHitVec_3_equal_12; // @[Mux.scala 81:58]
  wire  triggerHitVec_3_res_12 = 2'h3 == tdata_3_matchType ? triggerHitVec_3_less_12 : _triggerHitVec_3_res_T_63; // @[Mux.scala 81:58]
  wire  _triggerHitVec_3_T_32 = triggerHitVec_3_res_12 & triggerEnable_3; // @[Trigger.scala 34:9]
  wire  triggerHitVec_3_equal_13 = _GEN_211 == tdata_3_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_3_greater_13 = _GEN_211 >= tdata_3_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_3_less_13 = _GEN_211 <= tdata_3_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_3_res_T_68 = 2'h2 == tdata_3_matchType ? triggerHitVec_3_greater_13 : 2'h0 == tdata_3_matchType
     & triggerHitVec_3_equal_13; // @[Mux.scala 81:58]
  wire  triggerHitVec_3_res_13 = 2'h3 == tdata_3_matchType ? triggerHitVec_3_less_13 : _triggerHitVec_3_res_T_68; // @[Mux.scala 81:58]
  wire  _triggerHitVec_3_T_33 = triggerHitVec_3_res_13 & triggerEnable_3; // @[Trigger.scala 34:9]
  wire  triggerHitVec_6_3 = tdata_3_select ? _triggerHitVec_3_T_32 : _triggerHitVec_3_T_33; // @[PreDecode.scala 316:30]
  wire  _io_triggered_6_frontendHit_0_T_2 = triggerHitVec_6_0 & triggerHitVec_6_1 & tdata_0_timing == tdata_1_timing; // @[PreDecode.scala 324:78]
  wire [31:0] _triggerHitVec_0_T_36 = io_pds_7_isRVC ? {{16'd0}, rawInsts_7[15:0]} : rawInsts_7; // @[PreDecode.scala 316:62]
  wire [63:0] _GEN_232 = {{32'd0}, _triggerHitVec_0_T_36}; // @[Trigger.scala 27:24]
  wire  triggerHitVec_0_equal_14 = _GEN_232 == tdata_0_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_0_greater_14 = _GEN_232 >= tdata_0_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_0_less_14 = _GEN_232 <= tdata_0_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_0_res_T_73 = 2'h2 == tdata_0_matchType ? triggerHitVec_0_greater_14 : 2'h0 == tdata_0_matchType
     & triggerHitVec_0_equal_14; // @[Mux.scala 81:58]
  wire  triggerHitVec_0_res_14 = 2'h3 == tdata_0_matchType ? triggerHitVec_0_less_14 : _triggerHitVec_0_res_T_73; // @[Mux.scala 81:58]
  wire  _triggerHitVec_0_T_37 = triggerHitVec_0_res_14 & triggerEnable_0; // @[Trigger.scala 34:9]
  wire [63:0] _GEN_235 = {{25'd0}, io_pc_7}; // @[Trigger.scala 27:24]
  wire  triggerHitVec_0_equal_15 = _GEN_235 == tdata_0_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_0_greater_15 = _GEN_235 >= tdata_0_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_0_less_15 = _GEN_235 <= tdata_0_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_0_res_T_78 = 2'h2 == tdata_0_matchType ? triggerHitVec_0_greater_15 : 2'h0 == tdata_0_matchType
     & triggerHitVec_0_equal_15; // @[Mux.scala 81:58]
  wire  triggerHitVec_0_res_15 = 2'h3 == tdata_0_matchType ? triggerHitVec_0_less_15 : _triggerHitVec_0_res_T_78; // @[Mux.scala 81:58]
  wire  _triggerHitVec_0_T_38 = triggerHitVec_0_res_15 & triggerEnable_0; // @[Trigger.scala 34:9]
  wire  triggerHitVec_7_0 = tdata_0_select ? _triggerHitVec_0_T_37 : _triggerHitVec_0_T_38; // @[PreDecode.scala 316:30]
  wire  triggerHitVec_1_equal_14 = _GEN_232 == tdata_1_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_1_greater_14 = _GEN_232 >= tdata_1_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_1_less_14 = _GEN_232 <= tdata_1_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_1_res_T_73 = 2'h2 == tdata_1_matchType ? triggerHitVec_1_greater_14 : 2'h0 == tdata_1_matchType
     & triggerHitVec_1_equal_14; // @[Mux.scala 81:58]
  wire  triggerHitVec_1_res_14 = 2'h3 == tdata_1_matchType ? triggerHitVec_1_less_14 : _triggerHitVec_1_res_T_73; // @[Mux.scala 81:58]
  wire  _triggerHitVec_1_T_37 = triggerHitVec_1_res_14 & triggerEnable_1; // @[Trigger.scala 34:9]
  wire  triggerHitVec_1_equal_15 = _GEN_235 == tdata_1_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_1_greater_15 = _GEN_235 >= tdata_1_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_1_less_15 = _GEN_235 <= tdata_1_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_1_res_T_78 = 2'h2 == tdata_1_matchType ? triggerHitVec_1_greater_15 : 2'h0 == tdata_1_matchType
     & triggerHitVec_1_equal_15; // @[Mux.scala 81:58]
  wire  triggerHitVec_1_res_15 = 2'h3 == tdata_1_matchType ? triggerHitVec_1_less_15 : _triggerHitVec_1_res_T_78; // @[Mux.scala 81:58]
  wire  _triggerHitVec_1_T_38 = triggerHitVec_1_res_15 & triggerEnable_1; // @[Trigger.scala 34:9]
  wire  triggerHitVec_7_1 = tdata_1_select ? _triggerHitVec_1_T_37 : _triggerHitVec_1_T_38; // @[PreDecode.scala 316:30]
  wire  triggerHitVec_2_equal_14 = _GEN_232 == tdata_2_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_2_greater_14 = _GEN_232 >= tdata_2_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_2_less_14 = _GEN_232 <= tdata_2_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_2_res_T_73 = 2'h2 == tdata_2_matchType ? triggerHitVec_2_greater_14 : 2'h0 == tdata_2_matchType
     & triggerHitVec_2_equal_14; // @[Mux.scala 81:58]
  wire  triggerHitVec_2_res_14 = 2'h3 == tdata_2_matchType ? triggerHitVec_2_less_14 : _triggerHitVec_2_res_T_73; // @[Mux.scala 81:58]
  wire  _triggerHitVec_2_T_37 = triggerHitVec_2_res_14 & triggerEnable_2; // @[Trigger.scala 34:9]
  wire  triggerHitVec_2_equal_15 = _GEN_235 == tdata_2_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_2_greater_15 = _GEN_235 >= tdata_2_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_2_less_15 = _GEN_235 <= tdata_2_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_2_res_T_78 = 2'h2 == tdata_2_matchType ? triggerHitVec_2_greater_15 : 2'h0 == tdata_2_matchType
     & triggerHitVec_2_equal_15; // @[Mux.scala 81:58]
  wire  triggerHitVec_2_res_15 = 2'h3 == tdata_2_matchType ? triggerHitVec_2_less_15 : _triggerHitVec_2_res_T_78; // @[Mux.scala 81:58]
  wire  _triggerHitVec_2_T_38 = triggerHitVec_2_res_15 & triggerEnable_2; // @[Trigger.scala 34:9]
  wire  triggerHitVec_7_2 = tdata_2_select ? _triggerHitVec_2_T_37 : _triggerHitVec_2_T_38; // @[PreDecode.scala 316:30]
  wire  triggerHitVec_3_equal_14 = _GEN_232 == tdata_3_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_3_greater_14 = _GEN_232 >= tdata_3_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_3_less_14 = _GEN_232 <= tdata_3_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_3_res_T_73 = 2'h2 == tdata_3_matchType ? triggerHitVec_3_greater_14 : 2'h0 == tdata_3_matchType
     & triggerHitVec_3_equal_14; // @[Mux.scala 81:58]
  wire  triggerHitVec_3_res_14 = 2'h3 == tdata_3_matchType ? triggerHitVec_3_less_14 : _triggerHitVec_3_res_T_73; // @[Mux.scala 81:58]
  wire  _triggerHitVec_3_T_37 = triggerHitVec_3_res_14 & triggerEnable_3; // @[Trigger.scala 34:9]
  wire  triggerHitVec_3_equal_15 = _GEN_235 == tdata_3_tdata2; // @[Trigger.scala 27:24]
  wire  triggerHitVec_3_greater_15 = _GEN_235 >= tdata_3_tdata2; // @[Trigger.scala 28:26]
  wire  triggerHitVec_3_less_15 = _GEN_235 <= tdata_3_tdata2; // @[Trigger.scala 29:23]
  wire  _triggerHitVec_3_res_T_78 = 2'h2 == tdata_3_matchType ? triggerHitVec_3_greater_15 : 2'h0 == tdata_3_matchType
     & triggerHitVec_3_equal_15; // @[Mux.scala 81:58]
  wire  triggerHitVec_3_res_15 = 2'h3 == tdata_3_matchType ? triggerHitVec_3_less_15 : _triggerHitVec_3_res_T_78; // @[Mux.scala 81:58]
  wire  _triggerHitVec_3_T_38 = triggerHitVec_3_res_15 & triggerEnable_3; // @[Trigger.scala 34:9]
  wire  triggerHitVec_7_3 = tdata_3_select ? _triggerHitVec_3_T_37 : _triggerHitVec_3_T_38; // @[PreDecode.scala 316:30]
  wire  _io_triggered_7_frontendHit_0_T_2 = triggerHitVec_7_0 & triggerHitVec_7_1 & tdata_0_timing == tdata_1_timing; // @[PreDecode.scala 324:78]
  assign io_triggered_0_frontendHit_0 = tdata_0_chain ? triggerHitVec__0 & triggerHitVec__1 & tdata_0_timing ==
    tdata_1_timing : triggerHitVec__0; // @[PreDecode.scala 323:22 321:33 324:38]
  assign io_triggered_0_frontendHit_1 = tdata_0_chain ? _io_triggered_0_frontendHit_0_T_2 : triggerHitVec__1; // @[PreDecode.scala 323:22 321:33 325:38]
  assign io_triggered_0_frontendHit_2 = ~tdata_2_chain & triggerHitVec__2; // @[PreDecode.scala 329:61]
  assign io_triggered_0_frontendHit_3 = ~tdata_3_chain & triggerHitVec__3; // @[PreDecode.scala 329:61]
  assign io_triggered_0_backendEn_0 = tdata_2_chain ? triggerHitVec__2 : 1'h1; // @[PreDecode.scala 328:42]
  assign io_triggered_0_backendEn_1 = tdata_3_chain ? triggerHitVec__3 : 1'h1; // @[PreDecode.scala 328:42]
  assign io_triggered_1_frontendHit_0 = tdata_0_chain ? triggerHitVec_1_0 & triggerHitVec_1_1 & tdata_0_timing ==
    tdata_1_timing : triggerHitVec_1_0; // @[PreDecode.scala 323:22 321:33 324:38]
  assign io_triggered_1_frontendHit_1 = tdata_0_chain ? _io_triggered_1_frontendHit_0_T_2 : triggerHitVec_1_1; // @[PreDecode.scala 323:22 321:33 325:38]
  assign io_triggered_1_frontendHit_2 = ~tdata_2_chain & triggerHitVec_1_2; // @[PreDecode.scala 329:61]
  assign io_triggered_1_frontendHit_3 = ~tdata_3_chain & triggerHitVec_1_3; // @[PreDecode.scala 329:61]
  assign io_triggered_1_backendEn_0 = tdata_2_chain ? triggerHitVec_1_2 : 1'h1; // @[PreDecode.scala 328:42]
  assign io_triggered_1_backendEn_1 = tdata_3_chain ? triggerHitVec_1_3 : 1'h1; // @[PreDecode.scala 328:42]
  assign io_triggered_2_frontendHit_0 = tdata_0_chain ? triggerHitVec_2_0 & triggerHitVec_2_1 & tdata_0_timing ==
    tdata_1_timing : triggerHitVec_2_0; // @[PreDecode.scala 323:22 321:33 324:38]
  assign io_triggered_2_frontendHit_1 = tdata_0_chain ? _io_triggered_2_frontendHit_0_T_2 : triggerHitVec_2_1; // @[PreDecode.scala 323:22 321:33 325:38]
  assign io_triggered_2_frontendHit_2 = ~tdata_2_chain & triggerHitVec_2_2; // @[PreDecode.scala 329:61]
  assign io_triggered_2_frontendHit_3 = ~tdata_3_chain & triggerHitVec_2_3; // @[PreDecode.scala 329:61]
  assign io_triggered_2_backendEn_0 = tdata_2_chain ? triggerHitVec_2_2 : 1'h1; // @[PreDecode.scala 328:42]
  assign io_triggered_2_backendEn_1 = tdata_3_chain ? triggerHitVec_2_3 : 1'h1; // @[PreDecode.scala 328:42]
  assign io_triggered_3_frontendHit_0 = tdata_0_chain ? triggerHitVec_3_0 & triggerHitVec_3_1 & tdata_0_timing ==
    tdata_1_timing : triggerHitVec_3_0; // @[PreDecode.scala 323:22 321:33 324:38]
  assign io_triggered_3_frontendHit_1 = tdata_0_chain ? _io_triggered_3_frontendHit_0_T_2 : triggerHitVec_3_1; // @[PreDecode.scala 323:22 321:33 325:38]
  assign io_triggered_3_frontendHit_2 = ~tdata_2_chain & triggerHitVec_3_2; // @[PreDecode.scala 329:61]
  assign io_triggered_3_frontendHit_3 = ~tdata_3_chain & triggerHitVec_3_3; // @[PreDecode.scala 329:61]
  assign io_triggered_3_backendEn_0 = tdata_2_chain ? triggerHitVec_3_2 : 1'h1; // @[PreDecode.scala 328:42]
  assign io_triggered_3_backendEn_1 = tdata_3_chain ? triggerHitVec_3_3 : 1'h1; // @[PreDecode.scala 328:42]
  assign io_triggered_4_frontendHit_0 = tdata_0_chain ? triggerHitVec_4_0 & triggerHitVec_4_1 & tdata_0_timing ==
    tdata_1_timing : triggerHitVec_4_0; // @[PreDecode.scala 323:22 321:33 324:38]
  assign io_triggered_4_frontendHit_1 = tdata_0_chain ? _io_triggered_4_frontendHit_0_T_2 : triggerHitVec_4_1; // @[PreDecode.scala 323:22 321:33 325:38]
  assign io_triggered_4_frontendHit_2 = ~tdata_2_chain & triggerHitVec_4_2; // @[PreDecode.scala 329:61]
  assign io_triggered_4_frontendHit_3 = ~tdata_3_chain & triggerHitVec_4_3; // @[PreDecode.scala 329:61]
  assign io_triggered_4_backendEn_0 = tdata_2_chain ? triggerHitVec_4_2 : 1'h1; // @[PreDecode.scala 328:42]
  assign io_triggered_4_backendEn_1 = tdata_3_chain ? triggerHitVec_4_3 : 1'h1; // @[PreDecode.scala 328:42]
  assign io_triggered_5_frontendHit_0 = tdata_0_chain ? triggerHitVec_5_0 & triggerHitVec_5_1 & tdata_0_timing ==
    tdata_1_timing : triggerHitVec_5_0; // @[PreDecode.scala 323:22 321:33 324:38]
  assign io_triggered_5_frontendHit_1 = tdata_0_chain ? _io_triggered_5_frontendHit_0_T_2 : triggerHitVec_5_1; // @[PreDecode.scala 323:22 321:33 325:38]
  assign io_triggered_5_frontendHit_2 = ~tdata_2_chain & triggerHitVec_5_2; // @[PreDecode.scala 329:61]
  assign io_triggered_5_frontendHit_3 = ~tdata_3_chain & triggerHitVec_5_3; // @[PreDecode.scala 329:61]
  assign io_triggered_5_backendEn_0 = tdata_2_chain ? triggerHitVec_5_2 : 1'h1; // @[PreDecode.scala 328:42]
  assign io_triggered_5_backendEn_1 = tdata_3_chain ? triggerHitVec_5_3 : 1'h1; // @[PreDecode.scala 328:42]
  assign io_triggered_6_frontendHit_0 = tdata_0_chain ? triggerHitVec_6_0 & triggerHitVec_6_1 & tdata_0_timing ==
    tdata_1_timing : triggerHitVec_6_0; // @[PreDecode.scala 323:22 321:33 324:38]
  assign io_triggered_6_frontendHit_1 = tdata_0_chain ? _io_triggered_6_frontendHit_0_T_2 : triggerHitVec_6_1; // @[PreDecode.scala 323:22 321:33 325:38]
  assign io_triggered_6_frontendHit_2 = ~tdata_2_chain & triggerHitVec_6_2; // @[PreDecode.scala 329:61]
  assign io_triggered_6_frontendHit_3 = ~tdata_3_chain & triggerHitVec_6_3; // @[PreDecode.scala 329:61]
  assign io_triggered_6_backendEn_0 = tdata_2_chain ? triggerHitVec_6_2 : 1'h1; // @[PreDecode.scala 328:42]
  assign io_triggered_6_backendEn_1 = tdata_3_chain ? triggerHitVec_6_3 : 1'h1; // @[PreDecode.scala 328:42]
  assign io_triggered_7_frontendHit_0 = tdata_0_chain ? triggerHitVec_7_0 & triggerHitVec_7_1 & tdata_0_timing ==
    tdata_1_timing : triggerHitVec_7_0; // @[PreDecode.scala 323:22 321:33 324:38]
  assign io_triggered_7_frontendHit_1 = tdata_0_chain ? _io_triggered_7_frontendHit_0_T_2 : triggerHitVec_7_1; // @[PreDecode.scala 323:22 321:33 325:38]
  assign io_triggered_7_frontendHit_2 = ~tdata_2_chain & triggerHitVec_7_2; // @[PreDecode.scala 329:61]
  assign io_triggered_7_frontendHit_3 = ~tdata_3_chain & triggerHitVec_7_3; // @[PreDecode.scala 329:61]
  assign io_triggered_7_backendEn_0 = tdata_2_chain ? triggerHitVec_7_2 : 1'h1; // @[PreDecode.scala 328:42]
  assign io_triggered_7_backendEn_1 = tdata_3_chain ? triggerHitVec_7_3 : 1'h1; // @[PreDecode.scala 328:42]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PreDecode.scala 299:36]
      tdata_0_matchType <= 2'h0; // @[PreDecode.scala 298:22 300:{43,43}]
    end else if (io_frontendTrigger_t_valid) begin // @[PreDecode.scala 298:22]
      if (2'h0 == io_frontendTrigger_t_bits_addr) begin
        tdata_0_matchType <= io_frontendTrigger_t_bits_tdata_matchType;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PreDecode.scala 299:36]
      tdata_0_select <= 1'h0; // @[PreDecode.scala 298:22 300:{43,43}]
    end else if (io_frontendTrigger_t_valid) begin // @[PreDecode.scala 298:22]
      if (2'h0 == io_frontendTrigger_t_bits_addr) begin
        tdata_0_select <= io_frontendTrigger_t_bits_tdata_select;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PreDecode.scala 299:36]
      tdata_0_timing <= 1'h0; // @[PreDecode.scala 298:22 300:{43,43}]
    end else if (io_frontendTrigger_t_valid) begin // @[PreDecode.scala 298:22]
      if (2'h0 == io_frontendTrigger_t_bits_addr) begin
        tdata_0_timing <= io_frontendTrigger_t_bits_tdata_timing;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PreDecode.scala 299:36]
      tdata_0_chain <= 1'h0; // @[PreDecode.scala 298:22 300:{43,43}]
    end else if (io_frontendTrigger_t_valid) begin // @[PreDecode.scala 298:22]
      if (2'h0 == io_frontendTrigger_t_bits_addr) begin
        tdata_0_chain <= io_frontendTrigger_t_bits_tdata_chain;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PreDecode.scala 299:36]
      tdata_0_tdata2 <= 64'h0; // @[PreDecode.scala 298:22 300:{43,43}]
    end else if (io_frontendTrigger_t_valid) begin // @[PreDecode.scala 298:22]
      if (2'h0 == io_frontendTrigger_t_bits_addr) begin
        tdata_0_tdata2 <= io_frontendTrigger_t_bits_tdata_tdata2;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PreDecode.scala 299:36]
      tdata_1_matchType <= 2'h0; // @[PreDecode.scala 298:22 300:{43,43}]
    end else if (io_frontendTrigger_t_valid) begin // @[PreDecode.scala 298:22]
      if (2'h1 == io_frontendTrigger_t_bits_addr) begin
        tdata_1_matchType <= io_frontendTrigger_t_bits_tdata_matchType;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PreDecode.scala 299:36]
      tdata_1_select <= 1'h0; // @[PreDecode.scala 298:22 300:{43,43}]
    end else if (io_frontendTrigger_t_valid) begin // @[PreDecode.scala 298:22]
      if (2'h1 == io_frontendTrigger_t_bits_addr) begin
        tdata_1_select <= io_frontendTrigger_t_bits_tdata_select;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PreDecode.scala 299:36]
      tdata_1_timing <= 1'h0; // @[PreDecode.scala 298:22 300:{43,43}]
    end else if (io_frontendTrigger_t_valid) begin // @[PreDecode.scala 298:22]
      if (2'h1 == io_frontendTrigger_t_bits_addr) begin
        tdata_1_timing <= io_frontendTrigger_t_bits_tdata_timing;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PreDecode.scala 299:36]
      tdata_1_tdata2 <= 64'h0; // @[PreDecode.scala 298:22 300:{43,43}]
    end else if (io_frontendTrigger_t_valid) begin // @[PreDecode.scala 298:22]
      if (2'h1 == io_frontendTrigger_t_bits_addr) begin
        tdata_1_tdata2 <= io_frontendTrigger_t_bits_tdata_tdata2;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PreDecode.scala 299:36]
      tdata_2_matchType <= 2'h0; // @[PreDecode.scala 298:22 300:{43,43}]
    end else if (io_frontendTrigger_t_valid) begin // @[PreDecode.scala 298:22]
      if (2'h2 == io_frontendTrigger_t_bits_addr) begin
        tdata_2_matchType <= io_frontendTrigger_t_bits_tdata_matchType;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PreDecode.scala 299:36]
      tdata_2_select <= 1'h0; // @[PreDecode.scala 298:22 300:{43,43}]
    end else if (io_frontendTrigger_t_valid) begin // @[PreDecode.scala 298:22]
      if (2'h2 == io_frontendTrigger_t_bits_addr) begin
        tdata_2_select <= io_frontendTrigger_t_bits_tdata_select;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PreDecode.scala 299:36]
      tdata_2_chain <= 1'h0; // @[PreDecode.scala 298:22 300:{43,43}]
    end else if (io_frontendTrigger_t_valid) begin // @[PreDecode.scala 298:22]
      if (2'h2 == io_frontendTrigger_t_bits_addr) begin
        tdata_2_chain <= io_frontendTrigger_t_bits_tdata_chain;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PreDecode.scala 299:36]
      tdata_2_tdata2 <= 64'h0; // @[PreDecode.scala 298:22 300:{43,43}]
    end else if (io_frontendTrigger_t_valid) begin // @[PreDecode.scala 298:22]
      if (2'h2 == io_frontendTrigger_t_bits_addr) begin
        tdata_2_tdata2 <= io_frontendTrigger_t_bits_tdata_tdata2;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PreDecode.scala 299:36]
      tdata_3_matchType <= 2'h0; // @[PreDecode.scala 298:22 300:{43,43}]
    end else if (io_frontendTrigger_t_valid) begin // @[PreDecode.scala 298:22]
      if (2'h3 == io_frontendTrigger_t_bits_addr) begin
        tdata_3_matchType <= io_frontendTrigger_t_bits_tdata_matchType;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PreDecode.scala 299:36]
      tdata_3_select <= 1'h0; // @[PreDecode.scala 298:22 300:{43,43}]
    end else if (io_frontendTrigger_t_valid) begin // @[PreDecode.scala 298:22]
      if (2'h3 == io_frontendTrigger_t_bits_addr) begin
        tdata_3_select <= io_frontendTrigger_t_bits_tdata_select;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PreDecode.scala 299:36]
      tdata_3_chain <= 1'h0; // @[PreDecode.scala 298:22 300:{43,43}]
    end else if (io_frontendTrigger_t_valid) begin // @[PreDecode.scala 298:22]
      if (2'h3 == io_frontendTrigger_t_bits_addr) begin
        tdata_3_chain <= io_frontendTrigger_t_bits_tdata_chain;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PreDecode.scala 299:36]
      tdata_3_tdata2 <= 64'h0; // @[PreDecode.scala 298:22 300:{43,43}]
    end else if (io_frontendTrigger_t_valid) begin // @[PreDecode.scala 298:22]
      if (2'h3 == io_frontendTrigger_t_bits_addr) begin
        tdata_3_tdata2 <= io_frontendTrigger_t_bits_tdata_tdata2;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PreDecode.scala 303:30]
      triggerEnable_0 <= 1'h0; // @[PreDecode.scala 303:30]
    end else begin
      triggerEnable_0 <= io_csrTriggerEnable_0; // @[PreDecode.scala 304:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PreDecode.scala 303:30]
      triggerEnable_1 <= 1'h0; // @[PreDecode.scala 303:30]
    end else begin
      triggerEnable_1 <= io_csrTriggerEnable_1; // @[PreDecode.scala 304:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PreDecode.scala 303:30]
      triggerEnable_2 <= 1'h0; // @[PreDecode.scala 303:30]
    end else begin
      triggerEnable_2 <= io_csrTriggerEnable_2; // @[PreDecode.scala 304:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PreDecode.scala 303:30]
      triggerEnable_3 <= 1'h0; // @[PreDecode.scala 303:30]
    end else begin
      triggerEnable_3 <= io_csrTriggerEnable_3; // @[PreDecode.scala 304:17]
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
  tdata_0_matchType = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  tdata_0_select = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  tdata_0_timing = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  tdata_0_chain = _RAND_3[0:0];
  _RAND_4 = {2{`RANDOM}};
  tdata_0_tdata2 = _RAND_4[63:0];
  _RAND_5 = {1{`RANDOM}};
  tdata_1_matchType = _RAND_5[1:0];
  _RAND_6 = {1{`RANDOM}};
  tdata_1_select = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  tdata_1_timing = _RAND_7[0:0];
  _RAND_8 = {2{`RANDOM}};
  tdata_1_tdata2 = _RAND_8[63:0];
  _RAND_9 = {1{`RANDOM}};
  tdata_2_matchType = _RAND_9[1:0];
  _RAND_10 = {1{`RANDOM}};
  tdata_2_select = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  tdata_2_chain = _RAND_11[0:0];
  _RAND_12 = {2{`RANDOM}};
  tdata_2_tdata2 = _RAND_12[63:0];
  _RAND_13 = {1{`RANDOM}};
  tdata_3_matchType = _RAND_13[1:0];
  _RAND_14 = {1{`RANDOM}};
  tdata_3_select = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  tdata_3_chain = _RAND_15[0:0];
  _RAND_16 = {2{`RANDOM}};
  tdata_3_tdata2 = _RAND_16[63:0];
  _RAND_17 = {1{`RANDOM}};
  triggerEnable_0 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  triggerEnable_1 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  triggerEnable_2 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  triggerEnable_3 = _RAND_20[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    tdata_0_matchType = 2'h0;
  end
  if (reset) begin
    tdata_0_select = 1'h0;
  end
  if (reset) begin
    tdata_0_timing = 1'h0;
  end
  if (reset) begin
    tdata_0_chain = 1'h0;
  end
  if (reset) begin
    tdata_0_tdata2 = 64'h0;
  end
  if (reset) begin
    tdata_1_matchType = 2'h0;
  end
  if (reset) begin
    tdata_1_select = 1'h0;
  end
  if (reset) begin
    tdata_1_timing = 1'h0;
  end
  if (reset) begin
    tdata_1_tdata2 = 64'h0;
  end
  if (reset) begin
    tdata_2_matchType = 2'h0;
  end
  if (reset) begin
    tdata_2_select = 1'h0;
  end
  if (reset) begin
    tdata_2_chain = 1'h0;
  end
  if (reset) begin
    tdata_2_tdata2 = 64'h0;
  end
  if (reset) begin
    tdata_3_matchType = 2'h0;
  end
  if (reset) begin
    tdata_3_select = 1'h0;
  end
  if (reset) begin
    tdata_3_chain = 1'h0;
  end
  if (reset) begin
    tdata_3_tdata2 = 64'h0;
  end
  if (reset) begin
    triggerEnable_0 = 1'h0;
  end
  if (reset) begin
    triggerEnable_1 = 1'h0;
  end
  if (reset) begin
    triggerEnable_2 = 1'h0;
  end
  if (reset) begin
    triggerEnable_3 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

