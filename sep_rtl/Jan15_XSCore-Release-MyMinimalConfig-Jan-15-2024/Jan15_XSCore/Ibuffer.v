module Ibuffer(
  input         clock,
  input         reset,
  input         io_flush,
  input         io_ControlRedirect,
  input         io_ControlBTBMissBubble,
  input         io_TAGEMissBubble,
  input         io_SCMissBubble,
  input         io_ITTAGEMissBubble,
  input         io_RASMissBubble,
  input         io_MemVioRedirect,
  output        io_in_ready,
  input         io_in_valid,
  input  [31:0] io_in_bits_instrs_0,
  input  [31:0] io_in_bits_instrs_1,
  input  [31:0] io_in_bits_instrs_2,
  input  [31:0] io_in_bits_instrs_3,
  input  [31:0] io_in_bits_instrs_4,
  input  [31:0] io_in_bits_instrs_5,
  input  [31:0] io_in_bits_instrs_6,
  input  [31:0] io_in_bits_instrs_7,
  input  [7:0]  io_in_bits_valid,
  input  [7:0]  io_in_bits_enqEnable,
  input         io_in_bits_pd_0_isRVC,
  input  [1:0]  io_in_bits_pd_0_brType,
  input         io_in_bits_pd_0_isCall,
  input         io_in_bits_pd_0_isRet,
  input         io_in_bits_pd_1_isRVC,
  input  [1:0]  io_in_bits_pd_1_brType,
  input         io_in_bits_pd_1_isCall,
  input         io_in_bits_pd_1_isRet,
  input         io_in_bits_pd_2_isRVC,
  input  [1:0]  io_in_bits_pd_2_brType,
  input         io_in_bits_pd_2_isCall,
  input         io_in_bits_pd_2_isRet,
  input         io_in_bits_pd_3_isRVC,
  input  [1:0]  io_in_bits_pd_3_brType,
  input         io_in_bits_pd_3_isCall,
  input         io_in_bits_pd_3_isRet,
  input         io_in_bits_pd_4_isRVC,
  input  [1:0]  io_in_bits_pd_4_brType,
  input         io_in_bits_pd_4_isCall,
  input         io_in_bits_pd_4_isRet,
  input         io_in_bits_pd_5_isRVC,
  input  [1:0]  io_in_bits_pd_5_brType,
  input         io_in_bits_pd_5_isCall,
  input         io_in_bits_pd_5_isRet,
  input         io_in_bits_pd_6_isRVC,
  input  [1:0]  io_in_bits_pd_6_brType,
  input         io_in_bits_pd_6_isCall,
  input         io_in_bits_pd_6_isRet,
  input         io_in_bits_pd_7_isRVC,
  input  [1:0]  io_in_bits_pd_7_brType,
  input         io_in_bits_pd_7_isCall,
  input         io_in_bits_pd_7_isRet,
  input  [9:0]  io_in_bits_foldpc_0,
  input  [9:0]  io_in_bits_foldpc_1,
  input  [9:0]  io_in_bits_foldpc_2,
  input  [9:0]  io_in_bits_foldpc_3,
  input  [9:0]  io_in_bits_foldpc_4,
  input  [9:0]  io_in_bits_foldpc_5,
  input  [9:0]  io_in_bits_foldpc_6,
  input  [9:0]  io_in_bits_foldpc_7,
  input         io_in_bits_ftqPtr_flag,
  input  [2:0]  io_in_bits_ftqPtr_value,
  input         io_in_bits_ftqOffset_0_valid,
  input         io_in_bits_ftqOffset_1_valid,
  input         io_in_bits_ftqOffset_2_valid,
  input         io_in_bits_ftqOffset_3_valid,
  input         io_in_bits_ftqOffset_4_valid,
  input         io_in_bits_ftqOffset_5_valid,
  input         io_in_bits_ftqOffset_6_valid,
  input         io_in_bits_ftqOffset_7_valid,
  input         io_in_bits_ipf_0,
  input         io_in_bits_ipf_1,
  input         io_in_bits_ipf_2,
  input         io_in_bits_ipf_3,
  input         io_in_bits_ipf_4,
  input         io_in_bits_ipf_5,
  input         io_in_bits_ipf_6,
  input         io_in_bits_ipf_7,
  input         io_in_bits_acf_0,
  input         io_in_bits_acf_1,
  input         io_in_bits_acf_2,
  input         io_in_bits_acf_3,
  input         io_in_bits_acf_4,
  input         io_in_bits_acf_5,
  input         io_in_bits_acf_6,
  input         io_in_bits_acf_7,
  input         io_in_bits_crossPageIPFFix_0,
  input         io_in_bits_crossPageIPFFix_1,
  input         io_in_bits_crossPageIPFFix_2,
  input         io_in_bits_crossPageIPFFix_3,
  input         io_in_bits_crossPageIPFFix_4,
  input         io_in_bits_crossPageIPFFix_5,
  input         io_in_bits_crossPageIPFFix_6,
  input         io_in_bits_crossPageIPFFix_7,
  input         io_in_bits_triggered_0_frontendHit_0,
  input         io_in_bits_triggered_0_frontendHit_1,
  input         io_in_bits_triggered_0_frontendHit_2,
  input         io_in_bits_triggered_0_frontendHit_3,
  input         io_in_bits_triggered_0_backendEn_0,
  input         io_in_bits_triggered_0_backendEn_1,
  input         io_in_bits_triggered_1_frontendHit_0,
  input         io_in_bits_triggered_1_frontendHit_1,
  input         io_in_bits_triggered_1_frontendHit_2,
  input         io_in_bits_triggered_1_frontendHit_3,
  input         io_in_bits_triggered_1_backendEn_0,
  input         io_in_bits_triggered_1_backendEn_1,
  input         io_in_bits_triggered_2_frontendHit_0,
  input         io_in_bits_triggered_2_frontendHit_1,
  input         io_in_bits_triggered_2_frontendHit_2,
  input         io_in_bits_triggered_2_frontendHit_3,
  input         io_in_bits_triggered_2_backendEn_0,
  input         io_in_bits_triggered_2_backendEn_1,
  input         io_in_bits_triggered_3_frontendHit_0,
  input         io_in_bits_triggered_3_frontendHit_1,
  input         io_in_bits_triggered_3_frontendHit_2,
  input         io_in_bits_triggered_3_frontendHit_3,
  input         io_in_bits_triggered_3_backendEn_0,
  input         io_in_bits_triggered_3_backendEn_1,
  input         io_in_bits_triggered_4_frontendHit_0,
  input         io_in_bits_triggered_4_frontendHit_1,
  input         io_in_bits_triggered_4_frontendHit_2,
  input         io_in_bits_triggered_4_frontendHit_3,
  input         io_in_bits_triggered_4_backendEn_0,
  input         io_in_bits_triggered_4_backendEn_1,
  input         io_in_bits_triggered_5_frontendHit_0,
  input         io_in_bits_triggered_5_frontendHit_1,
  input         io_in_bits_triggered_5_frontendHit_2,
  input         io_in_bits_triggered_5_frontendHit_3,
  input         io_in_bits_triggered_5_backendEn_0,
  input         io_in_bits_triggered_5_backendEn_1,
  input         io_in_bits_triggered_6_frontendHit_0,
  input         io_in_bits_triggered_6_frontendHit_1,
  input         io_in_bits_triggered_6_frontendHit_2,
  input         io_in_bits_triggered_6_frontendHit_3,
  input         io_in_bits_triggered_6_backendEn_0,
  input         io_in_bits_triggered_6_backendEn_1,
  input         io_in_bits_triggered_7_frontendHit_0,
  input         io_in_bits_triggered_7_frontendHit_1,
  input         io_in_bits_triggered_7_frontendHit_2,
  input         io_in_bits_triggered_7_frontendHit_3,
  input         io_in_bits_triggered_7_backendEn_0,
  input         io_in_bits_triggered_7_backendEn_1,
  input         io_in_bits_topdown_info_reasons_0,
  input         io_in_bits_topdown_info_reasons_1,
  input         io_in_bits_topdown_info_reasons_2,
  input         io_in_bits_topdown_info_reasons_3,
  input         io_in_bits_topdown_info_reasons_4,
  input         io_in_bits_topdown_info_reasons_5,
  input         io_in_bits_topdown_info_reasons_6,
  input         io_in_bits_topdown_info_reasons_7,
  input         io_in_bits_topdown_info_reasons_8,
  input         io_in_bits_topdown_info_reasons_9,
  input         io_in_bits_topdown_info_reasons_10,
  input         io_in_bits_topdown_info_reasons_11,
  input         io_in_bits_topdown_info_reasons_12,
  input         io_in_bits_topdown_info_reasons_13,
  input         io_in_bits_topdown_info_reasons_14,
  input         io_in_bits_topdown_info_reasons_15,
  input         io_in_bits_topdown_info_reasons_16,
  input         io_in_bits_topdown_info_reasons_17,
  input         io_in_bits_topdown_info_reasons_18,
  input         io_in_bits_topdown_info_reasons_19,
  input         io_in_bits_topdown_info_reasons_20,
  input         io_in_bits_topdown_info_reasons_21,
  input         io_in_bits_topdown_info_reasons_22,
  input         io_in_bits_topdown_info_reasons_23,
  input         io_in_bits_topdown_info_reasons_24,
  input         io_in_bits_topdown_info_reasons_25,
  input         io_in_bits_topdown_info_reasons_26,
  input         io_in_bits_topdown_info_reasons_27,
  input         io_in_bits_topdown_info_reasons_28,
  input         io_in_bits_topdown_info_reasons_29,
  input         io_in_bits_topdown_info_reasons_30,
  input         io_in_bits_topdown_info_reasons_31,
  input         io_in_bits_topdown_info_reasons_32,
  input         io_in_bits_topdown_info_reasons_33,
  input         io_in_bits_topdown_info_reasons_34,
  input         io_in_bits_topdown_info_reasons_35,
  input         io_in_bits_topdown_info_reasons_36,
  input  [2:0]  io_in_bits_topdown_info_stallWidth,
  input         io_out_0_ready,
  output        io_out_0_valid,
  output [31:0] io_out_0_bits_instr,
  output [9:0]  io_out_0_bits_foldpc,
  output        io_out_0_bits_exceptionVec_1,
  output        io_out_0_bits_exceptionVec_12,
  output        io_out_0_bits_trigger_frontendHit_0,
  output        io_out_0_bits_trigger_frontendHit_1,
  output        io_out_0_bits_trigger_frontendHit_2,
  output        io_out_0_bits_trigger_frontendHit_3,
  output        io_out_0_bits_trigger_backendEn_0,
  output        io_out_0_bits_trigger_backendEn_1,
  output        io_out_0_bits_pd_isRVC,
  output [1:0]  io_out_0_bits_pd_brType,
  output        io_out_0_bits_pd_isCall,
  output        io_out_0_bits_pd_isRet,
  output        io_out_0_bits_pred_taken,
  output        io_out_0_bits_crossPageIPFFix,
  output        io_out_0_bits_ftqPtr_flag,
  output [2:0]  io_out_0_bits_ftqPtr_value,
  output [2:0]  io_out_0_bits_ftqOffset,
  input         io_out_1_ready,
  output        io_out_1_valid,
  output [31:0] io_out_1_bits_instr,
  output [9:0]  io_out_1_bits_foldpc,
  output        io_out_1_bits_exceptionVec_1,
  output        io_out_1_bits_exceptionVec_12,
  output        io_out_1_bits_trigger_frontendHit_0,
  output        io_out_1_bits_trigger_frontendHit_1,
  output        io_out_1_bits_trigger_frontendHit_2,
  output        io_out_1_bits_trigger_frontendHit_3,
  output        io_out_1_bits_trigger_backendEn_0,
  output        io_out_1_bits_trigger_backendEn_1,
  output        io_out_1_bits_pd_isRVC,
  output [1:0]  io_out_1_bits_pd_brType,
  output        io_out_1_bits_pd_isCall,
  output        io_out_1_bits_pd_isRet,
  output        io_out_1_bits_pred_taken,
  output        io_out_1_bits_crossPageIPFFix,
  output        io_out_1_bits_ftqPtr_flag,
  output [2:0]  io_out_1_bits_ftqPtr_value,
  output [2:0]  io_out_1_bits_ftqOffset,
  output [5:0]  io_stallReason_reason_0,
  output [5:0]  io_stallReason_reason_1,
  input         io_stallReason_backReason_valid,
  input  [5:0]  io_stallReason_backReason_bits,
  output [5:0]  io_perf_0_value,
  output [5:0]  io_perf_1_value,
  output [5:0]  io_perf_2_value,
  output [5:0]  io_perf_3_value,
  output [5:0]  io_perf_4_value,
  output [5:0]  io_perf_5_value,
  output [5:0]  io_perf_6_value,
  output [5:0]  io_perf_7_value
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
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_85;
  reg [31:0] _RAND_86;
  reg [31:0] _RAND_87;
  reg [31:0] _RAND_88;
`endif // RANDOMIZE_REG_INIT
  wire  ibuf_clock; // @[Ibuffer.scala 133:20]
  wire [3:0] ibuf_io_raddr_0; // @[Ibuffer.scala 133:20]
  wire [3:0] ibuf_io_raddr_1; // @[Ibuffer.scala 133:20]
  wire [3:0] ibuf_io_raddr_2; // @[Ibuffer.scala 133:20]
  wire [3:0] ibuf_io_raddr_3; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_rdata_0_pd_isRVC; // @[Ibuffer.scala 133:20]
  wire [1:0] ibuf_io_rdata_0_pd_brType; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_rdata_0_pd_isCall; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_rdata_0_pd_isRet; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_rdata_0_pred_taken; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_rdata_0_ftqPtr_flag; // @[Ibuffer.scala 133:20]
  wire [2:0] ibuf_io_rdata_0_ftqPtr_value; // @[Ibuffer.scala 133:20]
  wire [2:0] ibuf_io_rdata_0_ftqOffset; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_rdata_0_crossPageIPFFix; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_rdata_0_triggered_frontendHit_0; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_rdata_0_triggered_frontendHit_1; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_rdata_0_triggered_frontendHit_2; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_rdata_0_triggered_frontendHit_3; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_rdata_0_triggered_backendEn_0; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_rdata_0_triggered_backendEn_1; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_rdata_1_pd_isRVC; // @[Ibuffer.scala 133:20]
  wire [1:0] ibuf_io_rdata_1_pd_brType; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_rdata_1_pd_isCall; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_rdata_1_pd_isRet; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_rdata_1_pred_taken; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_rdata_1_ftqPtr_flag; // @[Ibuffer.scala 133:20]
  wire [2:0] ibuf_io_rdata_1_ftqPtr_value; // @[Ibuffer.scala 133:20]
  wire [2:0] ibuf_io_rdata_1_ftqOffset; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_rdata_1_crossPageIPFFix; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_rdata_1_triggered_frontendHit_0; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_rdata_1_triggered_frontendHit_1; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_rdata_1_triggered_frontendHit_2; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_rdata_1_triggered_frontendHit_3; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_rdata_1_triggered_backendEn_0; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_rdata_1_triggered_backendEn_1; // @[Ibuffer.scala 133:20]
  wire [31:0] ibuf_io_rdata_2_inst; // @[Ibuffer.scala 133:20]
  wire [9:0] ibuf_io_rdata_2_foldpc; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_rdata_2_ipf; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_rdata_2_acf; // @[Ibuffer.scala 133:20]
  wire [31:0] ibuf_io_rdata_3_inst; // @[Ibuffer.scala 133:20]
  wire [9:0] ibuf_io_rdata_3_foldpc; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_rdata_3_ipf; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_rdata_3_acf; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wen_0; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wen_1; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wen_2; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wen_3; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wen_4; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wen_5; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wen_6; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wen_7; // @[Ibuffer.scala 133:20]
  wire [3:0] ibuf_io_waddr_0; // @[Ibuffer.scala 133:20]
  wire [3:0] ibuf_io_waddr_1; // @[Ibuffer.scala 133:20]
  wire [3:0] ibuf_io_waddr_2; // @[Ibuffer.scala 133:20]
  wire [3:0] ibuf_io_waddr_3; // @[Ibuffer.scala 133:20]
  wire [3:0] ibuf_io_waddr_4; // @[Ibuffer.scala 133:20]
  wire [3:0] ibuf_io_waddr_5; // @[Ibuffer.scala 133:20]
  wire [3:0] ibuf_io_waddr_6; // @[Ibuffer.scala 133:20]
  wire [3:0] ibuf_io_waddr_7; // @[Ibuffer.scala 133:20]
  wire [31:0] ibuf_io_wdata_0_inst; // @[Ibuffer.scala 133:20]
  wire [9:0] ibuf_io_wdata_0_foldpc; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_0_pd_isRVC; // @[Ibuffer.scala 133:20]
  wire [1:0] ibuf_io_wdata_0_pd_brType; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_0_pd_isCall; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_0_pd_isRet; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_0_pred_taken; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_0_ftqPtr_flag; // @[Ibuffer.scala 133:20]
  wire [2:0] ibuf_io_wdata_0_ftqPtr_value; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_0_ipf; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_0_acf; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_0_crossPageIPFFix; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_0_triggered_frontendHit_0; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_0_triggered_frontendHit_1; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_0_triggered_frontendHit_2; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_0_triggered_frontendHit_3; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_0_triggered_backendEn_0; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_0_triggered_backendEn_1; // @[Ibuffer.scala 133:20]
  wire [31:0] ibuf_io_wdata_1_inst; // @[Ibuffer.scala 133:20]
  wire [9:0] ibuf_io_wdata_1_foldpc; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_1_pd_isRVC; // @[Ibuffer.scala 133:20]
  wire [1:0] ibuf_io_wdata_1_pd_brType; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_1_pd_isCall; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_1_pd_isRet; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_1_pred_taken; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_1_ftqPtr_flag; // @[Ibuffer.scala 133:20]
  wire [2:0] ibuf_io_wdata_1_ftqPtr_value; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_1_ipf; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_1_acf; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_1_crossPageIPFFix; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_1_triggered_frontendHit_0; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_1_triggered_frontendHit_1; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_1_triggered_frontendHit_2; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_1_triggered_frontendHit_3; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_1_triggered_backendEn_0; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_1_triggered_backendEn_1; // @[Ibuffer.scala 133:20]
  wire [31:0] ibuf_io_wdata_2_inst; // @[Ibuffer.scala 133:20]
  wire [9:0] ibuf_io_wdata_2_foldpc; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_2_pd_isRVC; // @[Ibuffer.scala 133:20]
  wire [1:0] ibuf_io_wdata_2_pd_brType; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_2_pd_isCall; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_2_pd_isRet; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_2_pred_taken; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_2_ftqPtr_flag; // @[Ibuffer.scala 133:20]
  wire [2:0] ibuf_io_wdata_2_ftqPtr_value; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_2_ipf; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_2_acf; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_2_crossPageIPFFix; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_2_triggered_frontendHit_0; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_2_triggered_frontendHit_1; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_2_triggered_frontendHit_2; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_2_triggered_frontendHit_3; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_2_triggered_backendEn_0; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_2_triggered_backendEn_1; // @[Ibuffer.scala 133:20]
  wire [31:0] ibuf_io_wdata_3_inst; // @[Ibuffer.scala 133:20]
  wire [9:0] ibuf_io_wdata_3_foldpc; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_3_pd_isRVC; // @[Ibuffer.scala 133:20]
  wire [1:0] ibuf_io_wdata_3_pd_brType; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_3_pd_isCall; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_3_pd_isRet; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_3_pred_taken; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_3_ftqPtr_flag; // @[Ibuffer.scala 133:20]
  wire [2:0] ibuf_io_wdata_3_ftqPtr_value; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_3_ipf; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_3_acf; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_3_crossPageIPFFix; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_3_triggered_frontendHit_0; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_3_triggered_frontendHit_1; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_3_triggered_frontendHit_2; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_3_triggered_frontendHit_3; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_3_triggered_backendEn_0; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_3_triggered_backendEn_1; // @[Ibuffer.scala 133:20]
  wire [31:0] ibuf_io_wdata_4_inst; // @[Ibuffer.scala 133:20]
  wire [9:0] ibuf_io_wdata_4_foldpc; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_4_pd_isRVC; // @[Ibuffer.scala 133:20]
  wire [1:0] ibuf_io_wdata_4_pd_brType; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_4_pd_isCall; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_4_pd_isRet; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_4_pred_taken; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_4_ftqPtr_flag; // @[Ibuffer.scala 133:20]
  wire [2:0] ibuf_io_wdata_4_ftqPtr_value; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_4_ipf; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_4_acf; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_4_crossPageIPFFix; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_4_triggered_frontendHit_0; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_4_triggered_frontendHit_1; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_4_triggered_frontendHit_2; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_4_triggered_frontendHit_3; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_4_triggered_backendEn_0; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_4_triggered_backendEn_1; // @[Ibuffer.scala 133:20]
  wire [31:0] ibuf_io_wdata_5_inst; // @[Ibuffer.scala 133:20]
  wire [9:0] ibuf_io_wdata_5_foldpc; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_5_pd_isRVC; // @[Ibuffer.scala 133:20]
  wire [1:0] ibuf_io_wdata_5_pd_brType; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_5_pd_isCall; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_5_pd_isRet; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_5_pred_taken; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_5_ftqPtr_flag; // @[Ibuffer.scala 133:20]
  wire [2:0] ibuf_io_wdata_5_ftqPtr_value; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_5_ipf; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_5_acf; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_5_crossPageIPFFix; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_5_triggered_frontendHit_0; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_5_triggered_frontendHit_1; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_5_triggered_frontendHit_2; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_5_triggered_frontendHit_3; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_5_triggered_backendEn_0; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_5_triggered_backendEn_1; // @[Ibuffer.scala 133:20]
  wire [31:0] ibuf_io_wdata_6_inst; // @[Ibuffer.scala 133:20]
  wire [9:0] ibuf_io_wdata_6_foldpc; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_6_pd_isRVC; // @[Ibuffer.scala 133:20]
  wire [1:0] ibuf_io_wdata_6_pd_brType; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_6_pd_isCall; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_6_pd_isRet; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_6_pred_taken; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_6_ftqPtr_flag; // @[Ibuffer.scala 133:20]
  wire [2:0] ibuf_io_wdata_6_ftqPtr_value; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_6_ipf; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_6_acf; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_6_crossPageIPFFix; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_6_triggered_frontendHit_0; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_6_triggered_frontendHit_1; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_6_triggered_frontendHit_2; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_6_triggered_frontendHit_3; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_6_triggered_backendEn_0; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_6_triggered_backendEn_1; // @[Ibuffer.scala 133:20]
  wire [31:0] ibuf_io_wdata_7_inst; // @[Ibuffer.scala 133:20]
  wire [9:0] ibuf_io_wdata_7_foldpc; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_7_pd_isRVC; // @[Ibuffer.scala 133:20]
  wire [1:0] ibuf_io_wdata_7_pd_brType; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_7_pd_isCall; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_7_pd_isRet; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_7_pred_taken; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_7_ftqPtr_flag; // @[Ibuffer.scala 133:20]
  wire [2:0] ibuf_io_wdata_7_ftqPtr_value; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_7_ipf; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_7_acf; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_7_crossPageIPFFix; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_7_triggered_frontendHit_0; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_7_triggered_frontendHit_1; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_7_triggered_frontendHit_2; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_7_triggered_frontendHit_3; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_7_triggered_backendEn_0; // @[Ibuffer.scala 133:20]
  wire  ibuf_io_wdata_7_triggered_backendEn_1; // @[Ibuffer.scala 133:20]
  reg  topdown_stage_reasons_0; // @[Ibuffer.scala 102:30]
  reg  topdown_stage_reasons_1; // @[Ibuffer.scala 102:30]
  reg  topdown_stage_reasons_2; // @[Ibuffer.scala 102:30]
  reg  topdown_stage_reasons_3; // @[Ibuffer.scala 102:30]
  reg  topdown_stage_reasons_4; // @[Ibuffer.scala 102:30]
  reg  topdown_stage_reasons_5; // @[Ibuffer.scala 102:30]
  reg  topdown_stage_reasons_6; // @[Ibuffer.scala 102:30]
  reg  topdown_stage_reasons_7; // @[Ibuffer.scala 102:30]
  reg  topdown_stage_reasons_8; // @[Ibuffer.scala 102:30]
  reg  topdown_stage_reasons_9; // @[Ibuffer.scala 102:30]
  reg  topdown_stage_reasons_10; // @[Ibuffer.scala 102:30]
  reg  topdown_stage_reasons_11; // @[Ibuffer.scala 102:30]
  reg  topdown_stage_reasons_12; // @[Ibuffer.scala 102:30]
  reg  topdown_stage_reasons_13; // @[Ibuffer.scala 102:30]
  reg  topdown_stage_reasons_14; // @[Ibuffer.scala 102:30]
  reg  topdown_stage_reasons_15; // @[Ibuffer.scala 102:30]
  reg  topdown_stage_reasons_16; // @[Ibuffer.scala 102:30]
  reg  topdown_stage_reasons_17; // @[Ibuffer.scala 102:30]
  reg  topdown_stage_reasons_18; // @[Ibuffer.scala 102:30]
  reg  topdown_stage_reasons_19; // @[Ibuffer.scala 102:30]
  reg  topdown_stage_reasons_20; // @[Ibuffer.scala 102:30]
  reg  topdown_stage_reasons_21; // @[Ibuffer.scala 102:30]
  reg  topdown_stage_reasons_22; // @[Ibuffer.scala 102:30]
  reg  topdown_stage_reasons_23; // @[Ibuffer.scala 102:30]
  reg  topdown_stage_reasons_24; // @[Ibuffer.scala 102:30]
  reg  topdown_stage_reasons_25; // @[Ibuffer.scala 102:30]
  reg  topdown_stage_reasons_26; // @[Ibuffer.scala 102:30]
  reg  topdown_stage_reasons_27; // @[Ibuffer.scala 102:30]
  reg  topdown_stage_reasons_28; // @[Ibuffer.scala 102:30]
  reg  topdown_stage_reasons_29; // @[Ibuffer.scala 102:30]
  reg  topdown_stage_reasons_30; // @[Ibuffer.scala 102:30]
  reg  topdown_stage_reasons_31; // @[Ibuffer.scala 102:30]
  reg  topdown_stage_reasons_32; // @[Ibuffer.scala 102:30]
  reg  topdown_stage_reasons_33; // @[Ibuffer.scala 102:30]
  reg  topdown_stage_reasons_34; // @[Ibuffer.scala 102:30]
  reg  topdown_stage_reasons_35; // @[Ibuffer.scala 102:30]
  reg  topdown_stage_reasons_36; // @[Ibuffer.scala 102:30]
  reg [2:0] topdown_stage_stallWidth; // @[Ibuffer.scala 102:30]
  wire  _GEN_0 = io_RASMissBubble | io_in_bits_topdown_info_reasons_6; // @[Ibuffer.scala 104:17 115:38 116:65]
  wire  _GEN_1 = io_ITTAGEMissBubble | io_in_bits_topdown_info_reasons_5; // @[Ibuffer.scala 104:17 113:41 114:68]
  wire  _GEN_2 = io_ITTAGEMissBubble ? io_in_bits_topdown_info_reasons_6 : _GEN_0; // @[Ibuffer.scala 104:17 113:41]
  wire  _GEN_3 = io_SCMissBubble | io_in_bits_topdown_info_reasons_4; // @[Ibuffer.scala 104:17 111:37 112:64]
  wire  _GEN_4 = io_SCMissBubble ? io_in_bits_topdown_info_reasons_5 : _GEN_1; // @[Ibuffer.scala 104:17 111:37]
  wire  _GEN_5 = io_SCMissBubble ? io_in_bits_topdown_info_reasons_6 : _GEN_2; // @[Ibuffer.scala 104:17 111:37]
  wire  _GEN_6 = io_TAGEMissBubble | io_in_bits_topdown_info_reasons_3; // @[Ibuffer.scala 104:17 109:39 110:66]
  wire  _GEN_10 = io_ControlBTBMissBubble | io_in_bits_topdown_info_reasons_12; // @[Ibuffer.scala 104:17 107:38 108:65]
  wire  _GEN_15 = io_MemVioRedirect | io_in_bits_topdown_info_reasons_7; // @[Ibuffer.scala 104:17 118:37 119:70]
  wire [5:0] _matchBubble_T = topdown_stage_reasons_1 ? 6'h23 : 6'h24; // @[Mux.scala 47:70]
  wire [5:0] _matchBubble_T_1 = topdown_stage_reasons_2 ? 6'h22 : _matchBubble_T; // @[Mux.scala 47:70]
  wire [5:0] _matchBubble_T_2 = topdown_stage_reasons_3 ? 6'h21 : _matchBubble_T_1; // @[Mux.scala 47:70]
  wire [5:0] _matchBubble_T_3 = topdown_stage_reasons_4 ? 6'h20 : _matchBubble_T_2; // @[Mux.scala 47:70]
  wire [5:0] _matchBubble_T_4 = topdown_stage_reasons_5 ? 6'h1f : _matchBubble_T_3; // @[Mux.scala 47:70]
  wire [5:0] _matchBubble_T_5 = topdown_stage_reasons_6 ? 6'h1e : _matchBubble_T_4; // @[Mux.scala 47:70]
  wire [5:0] _matchBubble_T_6 = topdown_stage_reasons_7 ? 6'h1d : _matchBubble_T_5; // @[Mux.scala 47:70]
  wire [5:0] _matchBubble_T_7 = topdown_stage_reasons_8 ? 6'h1c : _matchBubble_T_6; // @[Mux.scala 47:70]
  wire [5:0] _matchBubble_T_8 = topdown_stage_reasons_9 ? 6'h1b : _matchBubble_T_7; // @[Mux.scala 47:70]
  wire [5:0] _matchBubble_T_9 = topdown_stage_reasons_10 ? 6'h1a : _matchBubble_T_8; // @[Mux.scala 47:70]
  wire [5:0] _matchBubble_T_10 = topdown_stage_reasons_11 ? 6'h19 : _matchBubble_T_9; // @[Mux.scala 47:70]
  wire [5:0] _matchBubble_T_11 = topdown_stage_reasons_12 ? 6'h18 : _matchBubble_T_10; // @[Mux.scala 47:70]
  wire [5:0] _matchBubble_T_12 = topdown_stage_reasons_13 ? 6'h17 : _matchBubble_T_11; // @[Mux.scala 47:70]
  wire [5:0] _matchBubble_T_13 = topdown_stage_reasons_14 ? 6'h16 : _matchBubble_T_12; // @[Mux.scala 47:70]
  wire [5:0] _matchBubble_T_14 = topdown_stage_reasons_15 ? 6'h15 : _matchBubble_T_13; // @[Mux.scala 47:70]
  wire [5:0] _matchBubble_T_15 = topdown_stage_reasons_16 ? 6'h14 : _matchBubble_T_14; // @[Mux.scala 47:70]
  wire [5:0] _matchBubble_T_16 = topdown_stage_reasons_17 ? 6'h13 : _matchBubble_T_15; // @[Mux.scala 47:70]
  wire [5:0] _matchBubble_T_17 = topdown_stage_reasons_18 ? 6'h12 : _matchBubble_T_16; // @[Mux.scala 47:70]
  wire [5:0] _matchBubble_T_18 = topdown_stage_reasons_19 ? 6'h11 : _matchBubble_T_17; // @[Mux.scala 47:70]
  wire [5:0] _matchBubble_T_19 = topdown_stage_reasons_20 ? 6'h10 : _matchBubble_T_18; // @[Mux.scala 47:70]
  wire [5:0] _matchBubble_T_20 = topdown_stage_reasons_21 ? 6'hf : _matchBubble_T_19; // @[Mux.scala 47:70]
  wire [5:0] _matchBubble_T_21 = topdown_stage_reasons_22 ? 6'he : _matchBubble_T_20; // @[Mux.scala 47:70]
  wire [5:0] _matchBubble_T_22 = topdown_stage_reasons_23 ? 6'hd : _matchBubble_T_21; // @[Mux.scala 47:70]
  wire [5:0] _matchBubble_T_23 = topdown_stage_reasons_24 ? 6'hc : _matchBubble_T_22; // @[Mux.scala 47:70]
  wire [5:0] _matchBubble_T_24 = topdown_stage_reasons_25 ? 6'hb : _matchBubble_T_23; // @[Mux.scala 47:70]
  wire [5:0] _matchBubble_T_25 = topdown_stage_reasons_26 ? 6'ha : _matchBubble_T_24; // @[Mux.scala 47:70]
  wire [5:0] _matchBubble_T_26 = topdown_stage_reasons_27 ? 6'h9 : _matchBubble_T_25; // @[Mux.scala 47:70]
  wire [5:0] _matchBubble_T_27 = topdown_stage_reasons_28 ? 6'h8 : _matchBubble_T_26; // @[Mux.scala 47:70]
  wire [5:0] _matchBubble_T_28 = topdown_stage_reasons_29 ? 6'h7 : _matchBubble_T_27; // @[Mux.scala 47:70]
  wire [5:0] _matchBubble_T_29 = topdown_stage_reasons_30 ? 6'h6 : _matchBubble_T_28; // @[Mux.scala 47:70]
  wire [5:0] _matchBubble_T_30 = topdown_stage_reasons_31 ? 6'h5 : _matchBubble_T_29; // @[Mux.scala 47:70]
  wire [5:0] _matchBubble_T_31 = topdown_stage_reasons_32 ? 6'h4 : _matchBubble_T_30; // @[Mux.scala 47:70]
  wire [5:0] _matchBubble_T_32 = topdown_stage_reasons_33 ? 6'h3 : _matchBubble_T_31; // @[Mux.scala 47:70]
  wire [5:0] _matchBubble_T_33 = topdown_stage_reasons_34 ? 6'h2 : _matchBubble_T_32; // @[Mux.scala 47:70]
  wire [5:0] _matchBubble_T_34 = topdown_stage_reasons_35 ? 6'h1 : _matchBubble_T_33; // @[Mux.scala 47:70]
  wire [5:0] _matchBubble_T_35 = topdown_stage_reasons_36 ? 6'h0 : _matchBubble_T_34; // @[Mux.scala 47:70]
  wire [5:0] matchBubble = 6'h24 - _matchBubble_T_35; // @[Ibuffer.scala 129:61]
  reg  deqPtrVec_0_flag; // @[Ibuffer.scala 135:26]
  reg [3:0] deqPtrVec_0_value; // @[Ibuffer.scala 135:26]
  reg  deqPtrVec_1_flag; // @[Ibuffer.scala 135:26]
  reg [3:0] deqPtrVec_1_value; // @[Ibuffer.scala 135:26]
  reg  deqPtrVec_2_flag; // @[Ibuffer.scala 135:26]
  reg [3:0] deqPtrVec_2_value; // @[Ibuffer.scala 135:26]
  reg  deqPtrVec_3_flag; // @[Ibuffer.scala 135:26]
  reg [3:0] deqPtrVec_3_value; // @[Ibuffer.scala 135:26]
  reg  enqPtrVec_0_flag; // @[Ibuffer.scala 140:26]
  reg [3:0] enqPtrVec_0_value; // @[Ibuffer.scala 140:26]
  reg  enqPtrVec_1_flag; // @[Ibuffer.scala 140:26]
  reg [3:0] enqPtrVec_1_value; // @[Ibuffer.scala 140:26]
  reg  enqPtrVec_2_flag; // @[Ibuffer.scala 140:26]
  reg [3:0] enqPtrVec_2_value; // @[Ibuffer.scala 140:26]
  reg  enqPtrVec_3_flag; // @[Ibuffer.scala 140:26]
  reg [3:0] enqPtrVec_3_value; // @[Ibuffer.scala 140:26]
  reg  enqPtrVec_4_flag; // @[Ibuffer.scala 140:26]
  reg [3:0] enqPtrVec_4_value; // @[Ibuffer.scala 140:26]
  reg  enqPtrVec_5_flag; // @[Ibuffer.scala 140:26]
  reg [3:0] enqPtrVec_5_value; // @[Ibuffer.scala 140:26]
  reg  enqPtrVec_6_flag; // @[Ibuffer.scala 140:26]
  reg [3:0] enqPtrVec_6_value; // @[Ibuffer.scala 140:26]
  reg  enqPtrVec_7_flag; // @[Ibuffer.scala 140:26]
  reg [3:0] enqPtrVec_7_value; // @[Ibuffer.scala 140:26]
  wire [3:0] _validEntries_T_2 = enqPtrVec_0_value - deqPtrVec_0_value; // @[CircularQueuePtr.scala 105:21]
  wire [4:0] _GEN_363 = {{1'd0}, enqPtrVec_0_value}; // @[CircularQueuePtr.scala 106:25]
  wire [4:0] _validEntries_T_4 = 5'h10 + _GEN_363; // @[CircularQueuePtr.scala 106:25]
  wire [4:0] _GEN_364 = {{1'd0}, deqPtrVec_0_value}; // @[CircularQueuePtr.scala 106:41]
  wire [4:0] _validEntries_T_6 = _validEntries_T_4 - _GEN_364; // @[CircularQueuePtr.scala 106:41]
  wire [4:0] validEntries = enqPtrVec_0_flag == deqPtrVec_0_flag ? {{1'd0}, _validEntries_T_2} : _validEntries_T_6; // @[CircularQueuePtr.scala 104:8]
  reg  allowEnq; // @[Ibuffer.scala 144:25]
  wire  _numEnq_T = io_in_ready & io_in_valid; // @[Decoupled.scala 50:35]
  wire [1:0] _numEnq_T_9 = io_in_bits_valid[0] + io_in_bits_valid[1]; // @[Bitwise.scala 48:55]
  wire [1:0] _numEnq_T_11 = io_in_bits_valid[2] + io_in_bits_valid[3]; // @[Bitwise.scala 48:55]
  wire [2:0] _numEnq_T_13 = _numEnq_T_9 + _numEnq_T_11; // @[Bitwise.scala 48:55]
  wire [1:0] _numEnq_T_15 = io_in_bits_valid[4] + io_in_bits_valid[5]; // @[Bitwise.scala 48:55]
  wire [1:0] _numEnq_T_17 = io_in_bits_valid[6] + io_in_bits_valid[7]; // @[Bitwise.scala 48:55]
  wire [2:0] _numEnq_T_19 = _numEnq_T_15 + _numEnq_T_17; // @[Bitwise.scala 48:55]
  wire [3:0] _numEnq_T_21 = _numEnq_T_13 + _numEnq_T_19; // @[Bitwise.scala 48:55]
  wire [3:0] numEnq = _numEnq_T ? _numEnq_T_21 : 4'h0; // @[Ibuffer.scala 146:19]
  wire  _numTryDeq_T = validEntries >= 5'h2; // @[Ibuffer.scala 147:36]
  wire [4:0] numTryDeq = validEntries >= 5'h2 ? 5'h2 : validEntries; // @[Ibuffer.scala 147:22]
  wire [4:0] _new_ptr_T = {deqPtrVec_0_flag,deqPtrVec_0_value}; // @[Cat.scala 31:58]
  wire [4:0] _new_ptr_T_2 = _new_ptr_T + numTryDeq; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] new_ptr_value = _new_ptr_T_2[3:0]; // @[CircularQueuePtr.scala 39:59]
  wire  new_ptr_flag = _new_ptr_T_2[4]; // @[CircularQueuePtr.scala 39:59]
  wire [4:0] _new_ptr_T_5 = {deqPtrVec_1_flag,deqPtrVec_1_value}; // @[Cat.scala 31:58]
  wire [4:0] _new_ptr_T_7 = _new_ptr_T_5 + numTryDeq; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] new_ptr_1_value = _new_ptr_T_7[3:0]; // @[CircularQueuePtr.scala 39:59]
  wire  new_ptr_1_flag = _new_ptr_T_7[4]; // @[CircularQueuePtr.scala 39:59]
  wire [4:0] _new_ptr_T_10 = {deqPtrVec_2_flag,deqPtrVec_2_value}; // @[Cat.scala 31:58]
  wire [4:0] _new_ptr_T_12 = _new_ptr_T_10 + numTryDeq; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] new_ptr_2_value = _new_ptr_T_12[3:0]; // @[CircularQueuePtr.scala 39:59]
  wire  new_ptr_2_flag = _new_ptr_T_12[4]; // @[CircularQueuePtr.scala 39:59]
  wire [4:0] _new_ptr_T_15 = {deqPtrVec_3_flag,deqPtrVec_3_value}; // @[Cat.scala 31:58]
  wire [4:0] _new_ptr_T_17 = _new_ptr_T_15 + numTryDeq; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] new_ptr_3_value = _new_ptr_T_17[3:0]; // @[CircularQueuePtr.scala 39:59]
  wire  new_ptr_3_flag = _new_ptr_T_17[4]; // @[CircularQueuePtr.scala 39:59]
  wire [4:0] _GEN_365 = {{1'd0}, numEnq}; // @[Ibuffer.scala 151:34]
  wire [5:0] numAfterEnq = validEntries + _GEN_365; // @[Ibuffer.scala 151:34]
  wire [5:0] _GEN_366 = {{1'd0}, numTryDeq}; // @[Ibuffer.scala 152:59]
  wire [5:0] _nextValidEntries_T_1 = numAfterEnq - _GEN_366; // @[Ibuffer.scala 152:59]
  wire [5:0] nextValidEntries = io_out_0_ready ? _nextValidEntries_T_1 : numAfterEnq; // @[Ibuffer.scala 152:29]
  wire [1:0] _enqOffset_T_32 = io_in_bits_valid[1] + io_in_bits_valid[2]; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_367 = {{1'd0}, io_in_bits_valid[0]}; // @[Bitwise.scala 48:55]
  wire [2:0] _enqOffset_T_34 = _GEN_367 + _enqOffset_T_32; // @[Bitwise.scala 48:55]
  wire [1:0] enqOffset_3 = _enqOffset_T_34[1:0]; // @[Bitwise.scala 48:55]
  wire [1:0] _enqOffset_T_58 = io_in_bits_valid[3] + io_in_bits_valid[4]; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_368 = {{1'd0}, io_in_bits_valid[2]}; // @[Bitwise.scala 48:55]
  wire [2:0] _enqOffset_T_60 = _GEN_368 + _enqOffset_T_58; // @[Bitwise.scala 48:55]
  wire [2:0] enqOffset_5 = _numEnq_T_9 + _enqOffset_T_60[1:0]; // @[Bitwise.scala 48:55]
  wire [1:0] _GEN_370 = {{1'd0}, io_in_bits_valid[3]}; // @[Bitwise.scala 48:55]
  wire [2:0] _enqOffset_T_77 = _GEN_370 + _numEnq_T_15; // @[Bitwise.scala 48:55]
  wire [2:0] enqOffset_6 = enqOffset_3 + _enqOffset_T_77[1:0]; // @[Bitwise.scala 48:55]
  wire [1:0] _enqOffset_T_94 = io_in_bits_valid[5] + io_in_bits_valid[6]; // @[Bitwise.scala 48:55]
  wire [2:0] _enqOffset_T_96 = _enqOffset_T_58 + _enqOffset_T_94; // @[Bitwise.scala 48:55]
  wire [2:0] _GEN_372 = {{1'd0}, enqOffset_3}; // @[Bitwise.scala 48:55]
  wire [3:0] _enqOffset_T_98 = _GEN_372 + _enqOffset_T_96; // @[Bitwise.scala 48:55]
  wire [2:0] enqOffset_7 = _enqOffset_T_98[2:0]; // @[Bitwise.scala 48:55]
  wire  _ibuf_io_wen_0_T_3 = ~io_flush; // @[Ibuffer.scala 163:66]
  wire [3:0] _GEN_32 = io_in_bits_valid[0] ? enqPtrVec_1_value : enqPtrVec_0_value; // @[Ibuffer.scala 161:{22,22}]
  wire [3:0] _GEN_33 = 2'h2 == _GEN_367 ? enqPtrVec_2_value : _GEN_32; // @[Ibuffer.scala 161:{22,22}]
  wire [3:0] _GEN_34 = 2'h3 == _GEN_367 ? enqPtrVec_3_value : _GEN_33; // @[Ibuffer.scala 161:{22,22}]
  wire [2:0] _GEN_375 = {{2'd0}, io_in_bits_valid[0]}; // @[Ibuffer.scala 161:{22,22}]
  wire [3:0] _GEN_35 = 3'h4 == _GEN_375 ? enqPtrVec_4_value : _GEN_34; // @[Ibuffer.scala 161:{22,22}]
  wire [3:0] _GEN_36 = 3'h5 == _GEN_375 ? enqPtrVec_5_value : _GEN_35; // @[Ibuffer.scala 161:{22,22}]
  wire [3:0] _GEN_37 = 3'h6 == _GEN_375 ? enqPtrVec_6_value : _GEN_36; // @[Ibuffer.scala 161:{22,22}]
  wire [3:0] _GEN_40 = 2'h1 == _numEnq_T_9 ? enqPtrVec_1_value : enqPtrVec_0_value; // @[Ibuffer.scala 161:{22,22}]
  wire [3:0] _GEN_41 = 2'h2 == _numEnq_T_9 ? enqPtrVec_2_value : _GEN_40; // @[Ibuffer.scala 161:{22,22}]
  wire [3:0] _GEN_42 = 2'h3 == _numEnq_T_9 ? enqPtrVec_3_value : _GEN_41; // @[Ibuffer.scala 161:{22,22}]
  wire [2:0] _GEN_379 = {{1'd0}, _numEnq_T_9}; // @[Ibuffer.scala 161:{22,22}]
  wire [3:0] _GEN_43 = 3'h4 == _GEN_379 ? enqPtrVec_4_value : _GEN_42; // @[Ibuffer.scala 161:{22,22}]
  wire [3:0] _GEN_44 = 3'h5 == _GEN_379 ? enqPtrVec_5_value : _GEN_43; // @[Ibuffer.scala 161:{22,22}]
  wire [3:0] _GEN_45 = 3'h6 == _GEN_379 ? enqPtrVec_6_value : _GEN_44; // @[Ibuffer.scala 161:{22,22}]
  wire [3:0] _GEN_48 = 2'h1 == enqOffset_3 ? enqPtrVec_1_value : enqPtrVec_0_value; // @[Ibuffer.scala 161:{22,22}]
  wire [3:0] _GEN_49 = 2'h2 == enqOffset_3 ? enqPtrVec_2_value : _GEN_48; // @[Ibuffer.scala 161:{22,22}]
  wire [3:0] _GEN_50 = 2'h3 == enqOffset_3 ? enqPtrVec_3_value : _GEN_49; // @[Ibuffer.scala 161:{22,22}]
  wire [3:0] _GEN_51 = 3'h4 == _GEN_372 ? enqPtrVec_4_value : _GEN_50; // @[Ibuffer.scala 161:{22,22}]
  wire [3:0] _GEN_52 = 3'h5 == _GEN_372 ? enqPtrVec_5_value : _GEN_51; // @[Ibuffer.scala 161:{22,22}]
  wire [3:0] _GEN_53 = 3'h6 == _GEN_372 ? enqPtrVec_6_value : _GEN_52; // @[Ibuffer.scala 161:{22,22}]
  wire [3:0] _GEN_56 = 3'h1 == _numEnq_T_13 ? enqPtrVec_1_value : enqPtrVec_0_value; // @[Ibuffer.scala 161:{22,22}]
  wire [3:0] _GEN_57 = 3'h2 == _numEnq_T_13 ? enqPtrVec_2_value : _GEN_56; // @[Ibuffer.scala 161:{22,22}]
  wire [3:0] _GEN_58 = 3'h3 == _numEnq_T_13 ? enqPtrVec_3_value : _GEN_57; // @[Ibuffer.scala 161:{22,22}]
  wire [3:0] _GEN_59 = 3'h4 == _numEnq_T_13 ? enqPtrVec_4_value : _GEN_58; // @[Ibuffer.scala 161:{22,22}]
  wire [3:0] _GEN_60 = 3'h5 == _numEnq_T_13 ? enqPtrVec_5_value : _GEN_59; // @[Ibuffer.scala 161:{22,22}]
  wire [3:0] _GEN_61 = 3'h6 == _numEnq_T_13 ? enqPtrVec_6_value : _GEN_60; // @[Ibuffer.scala 161:{22,22}]
  wire [3:0] _GEN_64 = 3'h1 == enqOffset_5 ? enqPtrVec_1_value : enqPtrVec_0_value; // @[Ibuffer.scala 161:{22,22}]
  wire [3:0] _GEN_65 = 3'h2 == enqOffset_5 ? enqPtrVec_2_value : _GEN_64; // @[Ibuffer.scala 161:{22,22}]
  wire [3:0] _GEN_66 = 3'h3 == enqOffset_5 ? enqPtrVec_3_value : _GEN_65; // @[Ibuffer.scala 161:{22,22}]
  wire [3:0] _GEN_67 = 3'h4 == enqOffset_5 ? enqPtrVec_4_value : _GEN_66; // @[Ibuffer.scala 161:{22,22}]
  wire [3:0] _GEN_68 = 3'h5 == enqOffset_5 ? enqPtrVec_5_value : _GEN_67; // @[Ibuffer.scala 161:{22,22}]
  wire [3:0] _GEN_69 = 3'h6 == enqOffset_5 ? enqPtrVec_6_value : _GEN_68; // @[Ibuffer.scala 161:{22,22}]
  wire [3:0] _GEN_72 = 3'h1 == enqOffset_6 ? enqPtrVec_1_value : enqPtrVec_0_value; // @[Ibuffer.scala 161:{22,22}]
  wire [3:0] _GEN_73 = 3'h2 == enqOffset_6 ? enqPtrVec_2_value : _GEN_72; // @[Ibuffer.scala 161:{22,22}]
  wire [3:0] _GEN_74 = 3'h3 == enqOffset_6 ? enqPtrVec_3_value : _GEN_73; // @[Ibuffer.scala 161:{22,22}]
  wire [3:0] _GEN_75 = 3'h4 == enqOffset_6 ? enqPtrVec_4_value : _GEN_74; // @[Ibuffer.scala 161:{22,22}]
  wire [3:0] _GEN_76 = 3'h5 == enqOffset_6 ? enqPtrVec_5_value : _GEN_75; // @[Ibuffer.scala 161:{22,22}]
  wire [3:0] _GEN_77 = 3'h6 == enqOffset_6 ? enqPtrVec_6_value : _GEN_76; // @[Ibuffer.scala 161:{22,22}]
  wire [3:0] _GEN_80 = 3'h1 == enqOffset_7 ? enqPtrVec_1_value : enqPtrVec_0_value; // @[Ibuffer.scala 161:{22,22}]
  wire [3:0] _GEN_81 = 3'h2 == enqOffset_7 ? enqPtrVec_2_value : _GEN_80; // @[Ibuffer.scala 161:{22,22}]
  wire [3:0] _GEN_82 = 3'h3 == enqOffset_7 ? enqPtrVec_3_value : _GEN_81; // @[Ibuffer.scala 161:{22,22}]
  wire [3:0] _GEN_83 = 3'h4 == enqOffset_7 ? enqPtrVec_4_value : _GEN_82; // @[Ibuffer.scala 161:{22,22}]
  wire [3:0] _GEN_84 = 3'h5 == enqOffset_7 ? enqPtrVec_5_value : _GEN_83; // @[Ibuffer.scala 161:{22,22}]
  wire [3:0] _GEN_85 = 3'h6 == enqOffset_7 ? enqPtrVec_6_value : _GEN_84; // @[Ibuffer.scala 161:{22,22}]
  wire [1:0] _T_12 = io_in_bits_enqEnable[0] + io_in_bits_enqEnable[1]; // @[Bitwise.scala 48:55]
  wire [1:0] _T_14 = io_in_bits_enqEnable[2] + io_in_bits_enqEnable[3]; // @[Bitwise.scala 48:55]
  wire [2:0] _T_16 = _T_12 + _T_14; // @[Bitwise.scala 48:55]
  wire [1:0] _T_18 = io_in_bits_enqEnable[4] + io_in_bits_enqEnable[5]; // @[Bitwise.scala 48:55]
  wire [1:0] _T_20 = io_in_bits_enqEnable[6] + io_in_bits_enqEnable[7]; // @[Bitwise.scala 48:55]
  wire [2:0] _T_22 = _T_18 + _T_20; // @[Bitwise.scala 48:55]
  wire [3:0] _T_24 = _T_16 + _T_22; // @[Bitwise.scala 48:55]
  wire [4:0] _new_ptr_T_20 = {enqPtrVec_0_flag,enqPtrVec_0_value}; // @[Cat.scala 31:58]
  wire [4:0] _GEN_387 = {{1'd0}, _T_24}; // @[CircularQueuePtr.scala 39:46]
  wire [4:0] _new_ptr_T_22 = _new_ptr_T_20 + _GEN_387; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] new_ptr_4_value = _new_ptr_T_22[3:0]; // @[CircularQueuePtr.scala 39:59]
  wire  new_ptr_4_flag = _new_ptr_T_22[4]; // @[CircularQueuePtr.scala 39:59]
  wire [4:0] _new_ptr_T_25 = {enqPtrVec_1_flag,enqPtrVec_1_value}; // @[Cat.scala 31:58]
  wire [4:0] _new_ptr_T_27 = _new_ptr_T_25 + _GEN_387; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] new_ptr_5_value = _new_ptr_T_27[3:0]; // @[CircularQueuePtr.scala 39:59]
  wire  new_ptr_5_flag = _new_ptr_T_27[4]; // @[CircularQueuePtr.scala 39:59]
  wire [4:0] _new_ptr_T_30 = {enqPtrVec_2_flag,enqPtrVec_2_value}; // @[Cat.scala 31:58]
  wire [4:0] _new_ptr_T_32 = _new_ptr_T_30 + _GEN_387; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] new_ptr_6_value = _new_ptr_T_32[3:0]; // @[CircularQueuePtr.scala 39:59]
  wire  new_ptr_6_flag = _new_ptr_T_32[4]; // @[CircularQueuePtr.scala 39:59]
  wire [4:0] _new_ptr_T_35 = {enqPtrVec_3_flag,enqPtrVec_3_value}; // @[Cat.scala 31:58]
  wire [4:0] _new_ptr_T_37 = _new_ptr_T_35 + _GEN_387; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] new_ptr_7_value = _new_ptr_T_37[3:0]; // @[CircularQueuePtr.scala 39:59]
  wire  new_ptr_7_flag = _new_ptr_T_37[4]; // @[CircularQueuePtr.scala 39:59]
  wire [4:0] _new_ptr_T_40 = {enqPtrVec_4_flag,enqPtrVec_4_value}; // @[Cat.scala 31:58]
  wire [4:0] _new_ptr_T_42 = _new_ptr_T_40 + _GEN_387; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] new_ptr_8_value = _new_ptr_T_42[3:0]; // @[CircularQueuePtr.scala 39:59]
  wire  new_ptr_8_flag = _new_ptr_T_42[4]; // @[CircularQueuePtr.scala 39:59]
  wire [4:0] _new_ptr_T_45 = {enqPtrVec_5_flag,enqPtrVec_5_value}; // @[Cat.scala 31:58]
  wire [4:0] _new_ptr_T_47 = _new_ptr_T_45 + _GEN_387; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] new_ptr_9_value = _new_ptr_T_47[3:0]; // @[CircularQueuePtr.scala 39:59]
  wire  new_ptr_9_flag = _new_ptr_T_47[4]; // @[CircularQueuePtr.scala 39:59]
  wire [4:0] _new_ptr_T_50 = {enqPtrVec_6_flag,enqPtrVec_6_value}; // @[Cat.scala 31:58]
  wire [4:0] _new_ptr_T_52 = _new_ptr_T_50 + _GEN_387; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] new_ptr_10_value = _new_ptr_T_52[3:0]; // @[CircularQueuePtr.scala 39:59]
  wire  new_ptr_10_flag = _new_ptr_T_52[4]; // @[CircularQueuePtr.scala 39:59]
  wire [4:0] _new_ptr_T_55 = {enqPtrVec_7_flag,enqPtrVec_7_value}; // @[Cat.scala 31:58]
  wire [4:0] _new_ptr_T_57 = _new_ptr_T_55 + _GEN_387; // @[CircularQueuePtr.scala 39:46]
  wire [3:0] new_ptr_11_value = _new_ptr_T_57[3:0]; // @[CircularQueuePtr.scala 39:59]
  wire  new_ptr_11_flag = _new_ptr_T_57[4]; // @[CircularQueuePtr.scala 39:59]
  wire [1:0] _validVec_T_2 = 2'h1 << validEntries[0]; // @[OneHot.scala 57:35]
  wire [1:0] _validVec_T_5 = _validVec_T_2 - 2'h1; // @[BitUtils.scala 180:75]
  wire [1:0] validVec = _numTryDeq_T ? 2'h3 : _validVec_T_5; // @[Ibuffer.scala 171:21]
  wire [1:0] deqValidCount = validVec[0] + validVec[1]; // @[Bitwise.scala 48:55]
  wire [1:0] deqWasteCount = 2'h2 - deqValidCount; // @[Ibuffer.scala 176:37]
  wire  _T_180 = 2'h0 < deqWasteCount; // @[Ibuffer.scala 181:15]
  wire [5:0] _GEN_103 = 2'h0 < deqWasteCount ? matchBubble : 6'h0; // @[Ibuffer.scala 179:31 181:32 182:50]
  wire  _T_181 = 2'h1 < deqWasteCount; // @[Ibuffer.scala 181:15]
  wire [5:0] _GEN_104 = 2'h1 < deqWasteCount ? matchBubble : 6'h0; // @[Ibuffer.scala 179:31 181:32 182:50]
  wire [8:0] lo_lo = {topdown_stage_reasons_8,topdown_stage_reasons_7,topdown_stage_reasons_6,topdown_stage_reasons_5,
    topdown_stage_reasons_4,topdown_stage_reasons_3,topdown_stage_reasons_2,topdown_stage_reasons_1,
    topdown_stage_reasons_0}; // @[Ibuffer.scala 186:68]
  wire [17:0] lo = {topdown_stage_reasons_17,topdown_stage_reasons_16,topdown_stage_reasons_15,topdown_stage_reasons_14,
    topdown_stage_reasons_13,topdown_stage_reasons_12,topdown_stage_reasons_11,topdown_stage_reasons_10,
    topdown_stage_reasons_9,lo_lo}; // @[Ibuffer.scala 186:68]
  wire [9:0] hi_hi = {topdown_stage_reasons_36,topdown_stage_reasons_35,topdown_stage_reasons_34,
    topdown_stage_reasons_33,topdown_stage_reasons_32,topdown_stage_reasons_31,topdown_stage_reasons_30,
    topdown_stage_reasons_29,topdown_stage_reasons_28,topdown_stage_reasons_27}; // @[Ibuffer.scala 186:68]
  wire [18:0] hi = {hi_hi,topdown_stage_reasons_26,topdown_stage_reasons_25,topdown_stage_reasons_24,
    topdown_stage_reasons_23,topdown_stage_reasons_22,topdown_stage_reasons_21,topdown_stage_reasons_20,
    topdown_stage_reasons_19,topdown_stage_reasons_18}; // @[Ibuffer.scala 186:68]
  wire [36:0] _T_183 = {hi,lo}; // @[Ibuffer.scala 186:68]
  wire [5:0] _GEN_105 = _T_180 ? 6'hd : _GEN_103; // @[Ibuffer.scala 190:38 191:56]
  wire [5:0] _GEN_106 = _T_181 ? 6'hd : _GEN_104; // @[Ibuffer.scala 190:38 191:56]
  wire [5:0] _GEN_107 = ~(deqWasteCount == 2'h2 | |_T_183) ? _GEN_105 : _GEN_103; // @[Ibuffer.scala 186:81]
  wire [5:0] _GEN_108 = ~(deqWasteCount == 2'h2 | |_T_183) ? _GEN_106 : _GEN_104; // @[Ibuffer.scala 186:81]
  reg [31:0] deqData_0_inst; // @[Ibuffer.scala 201:20]
  reg [9:0] deqData_0_foldpc; // @[Ibuffer.scala 201:20]
  reg  deqData_0_ipf; // @[Ibuffer.scala 201:20]
  reg  deqData_0_acf; // @[Ibuffer.scala 201:20]
  reg [31:0] deqData_1_inst; // @[Ibuffer.scala 201:20]
  reg [9:0] deqData_1_foldpc; // @[Ibuffer.scala 201:20]
  reg  deqData_1_ipf; // @[Ibuffer.scala 201:20]
  reg  deqData_1_acf; // @[Ibuffer.scala 201:20]
  wire  _T_189 = io_out_0_ready & io_out_0_valid; // @[Decoupled.scala 50:35]
  wire  _T_192 = io_out_1_ready & io_out_1_valid; // @[Decoupled.scala 50:35]
  wire  matrix_0_0 = enqPtrVec_0_value == deqPtrVec_0_value; // @[CircularQueuePtr.scala 120:48]
  wire  matrix_0_1 = enqPtrVec_1_value == deqPtrVec_0_value; // @[CircularQueuePtr.scala 120:48]
  wire  matrix_0_2 = enqPtrVec_2_value == deqPtrVec_0_value; // @[CircularQueuePtr.scala 120:48]
  wire  matrix_0_3 = enqPtrVec_3_value == deqPtrVec_0_value; // @[CircularQueuePtr.scala 120:48]
  wire  matrix_0_4 = enqPtrVec_4_value == deqPtrVec_0_value; // @[CircularQueuePtr.scala 120:48]
  wire  matrix_0_5 = enqPtrVec_5_value == deqPtrVec_0_value; // @[CircularQueuePtr.scala 120:48]
  wire  matrix_0_6 = enqPtrVec_6_value == deqPtrVec_0_value; // @[CircularQueuePtr.scala 120:48]
  wire  matrix_0_7 = enqPtrVec_7_value == deqPtrVec_0_value; // @[CircularQueuePtr.scala 120:48]
  wire  matrix_1_0 = enqPtrVec_0_value == deqPtrVec_1_value; // @[CircularQueuePtr.scala 120:48]
  wire  matrix_2_0 = enqPtrVec_0_value == deqPtrVec_2_value; // @[CircularQueuePtr.scala 120:48]
  wire  matrix_3_0 = enqPtrVec_0_value == deqPtrVec_3_value; // @[CircularQueuePtr.scala 120:48]
  wire  enqBypassEnVec_0 = io_in_bits_valid[0] & matrix_0_0; // @[Ibuffer.scala 217:88]
  wire  _GEN_112 = io_in_bits_valid[0] ? matrix_0_1 : matrix_0_0; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_113 = 2'h2 == _GEN_367 ? matrix_0_2 : _GEN_112; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_114 = 2'h3 == _GEN_367 ? matrix_0_3 : _GEN_113; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_115 = 3'h4 == _GEN_375 ? matrix_0_4 : _GEN_114; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_116 = 3'h5 == _GEN_375 ? matrix_0_5 : _GEN_115; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_117 = 3'h6 == _GEN_375 ? matrix_0_6 : _GEN_116; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_118 = 3'h7 == _GEN_375 ? matrix_0_7 : _GEN_117; // @[Ibuffer.scala 217:{88,88}]
  wire  enqBypassEnVec_1 = io_in_bits_valid[1] & _GEN_118; // @[Ibuffer.scala 217:88]
  wire  _GEN_120 = 2'h1 == _numEnq_T_9 ? matrix_0_1 : matrix_0_0; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_121 = 2'h2 == _numEnq_T_9 ? matrix_0_2 : _GEN_120; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_122 = 2'h3 == _numEnq_T_9 ? matrix_0_3 : _GEN_121; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_123 = 3'h4 == _GEN_379 ? matrix_0_4 : _GEN_122; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_124 = 3'h5 == _GEN_379 ? matrix_0_5 : _GEN_123; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_125 = 3'h6 == _GEN_379 ? matrix_0_6 : _GEN_124; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_126 = 3'h7 == _GEN_379 ? matrix_0_7 : _GEN_125; // @[Ibuffer.scala 217:{88,88}]
  wire  enqBypassEnVec_2 = io_in_bits_valid[2] & _GEN_126; // @[Ibuffer.scala 217:88]
  wire  _GEN_128 = 2'h1 == enqOffset_3 ? matrix_0_1 : matrix_0_0; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_129 = 2'h2 == enqOffset_3 ? matrix_0_2 : _GEN_128; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_130 = 2'h3 == enqOffset_3 ? matrix_0_3 : _GEN_129; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_131 = 3'h4 == _GEN_372 ? matrix_0_4 : _GEN_130; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_132 = 3'h5 == _GEN_372 ? matrix_0_5 : _GEN_131; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_133 = 3'h6 == _GEN_372 ? matrix_0_6 : _GEN_132; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_134 = 3'h7 == _GEN_372 ? matrix_0_7 : _GEN_133; // @[Ibuffer.scala 217:{88,88}]
  wire  enqBypassEnVec_3 = io_in_bits_valid[3] & _GEN_134; // @[Ibuffer.scala 217:88]
  wire  _GEN_136 = 3'h1 == _numEnq_T_13 ? matrix_0_1 : matrix_0_0; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_137 = 3'h2 == _numEnq_T_13 ? matrix_0_2 : _GEN_136; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_138 = 3'h3 == _numEnq_T_13 ? matrix_0_3 : _GEN_137; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_139 = 3'h4 == _numEnq_T_13 ? matrix_0_4 : _GEN_138; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_140 = 3'h5 == _numEnq_T_13 ? matrix_0_5 : _GEN_139; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_141 = 3'h6 == _numEnq_T_13 ? matrix_0_6 : _GEN_140; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_142 = 3'h7 == _numEnq_T_13 ? matrix_0_7 : _GEN_141; // @[Ibuffer.scala 217:{88,88}]
  wire  enqBypassEnVec_4 = io_in_bits_valid[4] & _GEN_142; // @[Ibuffer.scala 217:88]
  wire  _GEN_144 = 3'h1 == enqOffset_5 ? matrix_0_1 : matrix_0_0; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_145 = 3'h2 == enqOffset_5 ? matrix_0_2 : _GEN_144; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_146 = 3'h3 == enqOffset_5 ? matrix_0_3 : _GEN_145; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_147 = 3'h4 == enqOffset_5 ? matrix_0_4 : _GEN_146; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_148 = 3'h5 == enqOffset_5 ? matrix_0_5 : _GEN_147; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_149 = 3'h6 == enqOffset_5 ? matrix_0_6 : _GEN_148; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_150 = 3'h7 == enqOffset_5 ? matrix_0_7 : _GEN_149; // @[Ibuffer.scala 217:{88,88}]
  wire  enqBypassEnVec_5 = io_in_bits_valid[5] & _GEN_150; // @[Ibuffer.scala 217:88]
  wire  _GEN_152 = 3'h1 == enqOffset_6 ? matrix_0_1 : matrix_0_0; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_153 = 3'h2 == enqOffset_6 ? matrix_0_2 : _GEN_152; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_154 = 3'h3 == enqOffset_6 ? matrix_0_3 : _GEN_153; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_155 = 3'h4 == enqOffset_6 ? matrix_0_4 : _GEN_154; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_156 = 3'h5 == enqOffset_6 ? matrix_0_5 : _GEN_155; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_157 = 3'h6 == enqOffset_6 ? matrix_0_6 : _GEN_156; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_158 = 3'h7 == enqOffset_6 ? matrix_0_7 : _GEN_157; // @[Ibuffer.scala 217:{88,88}]
  wire  enqBypassEnVec_6 = io_in_bits_valid[6] & _GEN_158; // @[Ibuffer.scala 217:88]
  wire  _GEN_160 = 3'h1 == enqOffset_7 ? matrix_0_1 : matrix_0_0; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_161 = 3'h2 == enqOffset_7 ? matrix_0_2 : _GEN_160; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_162 = 3'h3 == enqOffset_7 ? matrix_0_3 : _GEN_161; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_163 = 3'h4 == enqOffset_7 ? matrix_0_4 : _GEN_162; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_164 = 3'h5 == enqOffset_7 ? matrix_0_5 : _GEN_163; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_165 = 3'h6 == enqOffset_7 ? matrix_0_6 : _GEN_164; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_166 = 3'h7 == enqOffset_7 ? matrix_0_7 : _GEN_165; // @[Ibuffer.scala 217:{88,88}]
  wire  enqBypassEnVec_7 = io_in_bits_valid[7] & _GEN_166; // @[Ibuffer.scala 217:88]
  wire [7:0] _enqBypassEn_T_1 = {enqBypassEnVec_7,enqBypassEnVec_6,enqBypassEnVec_5,enqBypassEnVec_4,enqBypassEnVec_3,
    enqBypassEnVec_2,enqBypassEnVec_1,enqBypassEnVec_0}; // @[Ibuffer.scala 218:61]
  wire  enqBypassEn = _numEnq_T & |_enqBypassEn_T_1; // @[Ibuffer.scala 218:34]
  wire  enqBypassData_acf = enqBypassEnVec_0 & io_in_bits_acf_0 | enqBypassEnVec_1 & io_in_bits_acf_1 | enqBypassEnVec_2
     & io_in_bits_acf_2 | enqBypassEnVec_3 & io_in_bits_acf_3 | enqBypassEnVec_4 & io_in_bits_acf_4 | enqBypassEnVec_5
     & io_in_bits_acf_5 | enqBypassEnVec_6 & io_in_bits_acf_6 | enqBypassEnVec_7 & io_in_bits_acf_7; // @[Mux.scala 27:73]
  wire  enqBypassData_ipf = enqBypassEnVec_0 & io_in_bits_ipf_0 | enqBypassEnVec_1 & io_in_bits_ipf_1 | enqBypassEnVec_2
     & io_in_bits_ipf_2 | enqBypassEnVec_3 & io_in_bits_ipf_3 | enqBypassEnVec_4 & io_in_bits_ipf_4 | enqBypassEnVec_5
     & io_in_bits_ipf_5 | enqBypassEnVec_6 & io_in_bits_ipf_6 | enqBypassEnVec_7 & io_in_bits_ipf_7; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_360 = enqBypassEnVec_0 ? io_in_bits_foldpc_0 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_361 = enqBypassEnVec_1 ? io_in_bits_foldpc_1 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_362 = enqBypassEnVec_2 ? io_in_bits_foldpc_2 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_363 = enqBypassEnVec_3 ? io_in_bits_foldpc_3 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_364 = enqBypassEnVec_4 ? io_in_bits_foldpc_4 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_365 = enqBypassEnVec_5 ? io_in_bits_foldpc_5 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_366 = enqBypassEnVec_6 ? io_in_bits_foldpc_6 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_367 = enqBypassEnVec_7 ? io_in_bits_foldpc_7 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_368 = _enqBypassData_T_360 | _enqBypassData_T_361; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_369 = _enqBypassData_T_368 | _enqBypassData_T_362; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_370 = _enqBypassData_T_369 | _enqBypassData_T_363; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_371 = _enqBypassData_T_370 | _enqBypassData_T_364; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_372 = _enqBypassData_T_371 | _enqBypassData_T_365; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_373 = _enqBypassData_T_372 | _enqBypassData_T_366; // @[Mux.scala 27:73]
  wire [9:0] enqBypassData_foldpc = _enqBypassData_T_373 | _enqBypassData_T_367; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_390 = enqBypassEnVec_0 ? io_in_bits_instrs_0 : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_391 = enqBypassEnVec_1 ? io_in_bits_instrs_1 : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_392 = enqBypassEnVec_2 ? io_in_bits_instrs_2 : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_393 = enqBypassEnVec_3 ? io_in_bits_instrs_3 : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_394 = enqBypassEnVec_4 ? io_in_bits_instrs_4 : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_395 = enqBypassEnVec_5 ? io_in_bits_instrs_5 : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_396 = enqBypassEnVec_6 ? io_in_bits_instrs_6 : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_397 = enqBypassEnVec_7 ? io_in_bits_instrs_7 : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_398 = _enqBypassData_T_390 | _enqBypassData_T_391; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_399 = _enqBypassData_T_398 | _enqBypassData_T_392; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_400 = _enqBypassData_T_399 | _enqBypassData_T_393; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_401 = _enqBypassData_T_400 | _enqBypassData_T_394; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_402 = _enqBypassData_T_401 | _enqBypassData_T_395; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_403 = _enqBypassData_T_402 | _enqBypassData_T_396; // @[Mux.scala 27:73]
  wire [31:0] enqBypassData_inst = _enqBypassData_T_403 | _enqBypassData_T_397; // @[Mux.scala 27:73]
  wire  enqBypassEnVec_0_1 = io_in_bits_valid[0] & matrix_1_0; // @[Ibuffer.scala 217:88]
  wire  _GEN_168 = io_in_bits_valid[0] ? matrix_0_0 : matrix_1_0; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_169 = 2'h2 == _GEN_367 ? matrix_0_1 : _GEN_168; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_170 = 2'h3 == _GEN_367 ? matrix_0_2 : _GEN_169; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_171 = 3'h4 == _GEN_375 ? matrix_0_3 : _GEN_170; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_172 = 3'h5 == _GEN_375 ? matrix_0_4 : _GEN_171; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_173 = 3'h6 == _GEN_375 ? matrix_0_5 : _GEN_172; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_174 = 3'h7 == _GEN_375 ? matrix_0_6 : _GEN_173; // @[Ibuffer.scala 217:{88,88}]
  wire  enqBypassEnVec_1_1 = io_in_bits_valid[1] & _GEN_174; // @[Ibuffer.scala 217:88]
  wire  _GEN_176 = 2'h1 == _numEnq_T_9 ? matrix_0_0 : matrix_1_0; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_177 = 2'h2 == _numEnq_T_9 ? matrix_0_1 : _GEN_176; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_178 = 2'h3 == _numEnq_T_9 ? matrix_0_2 : _GEN_177; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_179 = 3'h4 == _GEN_379 ? matrix_0_3 : _GEN_178; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_180 = 3'h5 == _GEN_379 ? matrix_0_4 : _GEN_179; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_181 = 3'h6 == _GEN_379 ? matrix_0_5 : _GEN_180; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_182 = 3'h7 == _GEN_379 ? matrix_0_6 : _GEN_181; // @[Ibuffer.scala 217:{88,88}]
  wire  enqBypassEnVec_2_1 = io_in_bits_valid[2] & _GEN_182; // @[Ibuffer.scala 217:88]
  wire  _GEN_184 = 2'h1 == enqOffset_3 ? matrix_0_0 : matrix_1_0; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_185 = 2'h2 == enqOffset_3 ? matrix_0_1 : _GEN_184; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_186 = 2'h3 == enqOffset_3 ? matrix_0_2 : _GEN_185; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_187 = 3'h4 == _GEN_372 ? matrix_0_3 : _GEN_186; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_188 = 3'h5 == _GEN_372 ? matrix_0_4 : _GEN_187; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_189 = 3'h6 == _GEN_372 ? matrix_0_5 : _GEN_188; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_190 = 3'h7 == _GEN_372 ? matrix_0_6 : _GEN_189; // @[Ibuffer.scala 217:{88,88}]
  wire  enqBypassEnVec_3_1 = io_in_bits_valid[3] & _GEN_190; // @[Ibuffer.scala 217:88]
  wire  _GEN_192 = 3'h1 == _numEnq_T_13 ? matrix_0_0 : matrix_1_0; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_193 = 3'h2 == _numEnq_T_13 ? matrix_0_1 : _GEN_192; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_194 = 3'h3 == _numEnq_T_13 ? matrix_0_2 : _GEN_193; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_195 = 3'h4 == _numEnq_T_13 ? matrix_0_3 : _GEN_194; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_196 = 3'h5 == _numEnq_T_13 ? matrix_0_4 : _GEN_195; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_197 = 3'h6 == _numEnq_T_13 ? matrix_0_5 : _GEN_196; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_198 = 3'h7 == _numEnq_T_13 ? matrix_0_6 : _GEN_197; // @[Ibuffer.scala 217:{88,88}]
  wire  enqBypassEnVec_4_1 = io_in_bits_valid[4] & _GEN_198; // @[Ibuffer.scala 217:88]
  wire  _GEN_200 = 3'h1 == enqOffset_5 ? matrix_0_0 : matrix_1_0; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_201 = 3'h2 == enqOffset_5 ? matrix_0_1 : _GEN_200; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_202 = 3'h3 == enqOffset_5 ? matrix_0_2 : _GEN_201; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_203 = 3'h4 == enqOffset_5 ? matrix_0_3 : _GEN_202; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_204 = 3'h5 == enqOffset_5 ? matrix_0_4 : _GEN_203; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_205 = 3'h6 == enqOffset_5 ? matrix_0_5 : _GEN_204; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_206 = 3'h7 == enqOffset_5 ? matrix_0_6 : _GEN_205; // @[Ibuffer.scala 217:{88,88}]
  wire  enqBypassEnVec_5_1 = io_in_bits_valid[5] & _GEN_206; // @[Ibuffer.scala 217:88]
  wire  _GEN_208 = 3'h1 == enqOffset_6 ? matrix_0_0 : matrix_1_0; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_209 = 3'h2 == enqOffset_6 ? matrix_0_1 : _GEN_208; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_210 = 3'h3 == enqOffset_6 ? matrix_0_2 : _GEN_209; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_211 = 3'h4 == enqOffset_6 ? matrix_0_3 : _GEN_210; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_212 = 3'h5 == enqOffset_6 ? matrix_0_4 : _GEN_211; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_213 = 3'h6 == enqOffset_6 ? matrix_0_5 : _GEN_212; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_214 = 3'h7 == enqOffset_6 ? matrix_0_6 : _GEN_213; // @[Ibuffer.scala 217:{88,88}]
  wire  enqBypassEnVec_6_1 = io_in_bits_valid[6] & _GEN_214; // @[Ibuffer.scala 217:88]
  wire  _GEN_216 = 3'h1 == enqOffset_7 ? matrix_0_0 : matrix_1_0; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_217 = 3'h2 == enqOffset_7 ? matrix_0_1 : _GEN_216; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_218 = 3'h3 == enqOffset_7 ? matrix_0_2 : _GEN_217; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_219 = 3'h4 == enqOffset_7 ? matrix_0_3 : _GEN_218; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_220 = 3'h5 == enqOffset_7 ? matrix_0_4 : _GEN_219; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_221 = 3'h6 == enqOffset_7 ? matrix_0_5 : _GEN_220; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_222 = 3'h7 == enqOffset_7 ? matrix_0_6 : _GEN_221; // @[Ibuffer.scala 217:{88,88}]
  wire  enqBypassEnVec_7_1 = io_in_bits_valid[7] & _GEN_222; // @[Ibuffer.scala 217:88]
  wire [7:0] _enqBypassEn_T_4 = {enqBypassEnVec_7_1,enqBypassEnVec_6_1,enqBypassEnVec_5_1,enqBypassEnVec_4_1,
    enqBypassEnVec_3_1,enqBypassEnVec_2_1,enqBypassEnVec_1_1,enqBypassEnVec_0_1}; // @[Ibuffer.scala 218:61]
  wire  enqBypassEn_1 = _numEnq_T & |_enqBypassEn_T_4; // @[Ibuffer.scala 218:34]
  wire  enqBypassData_1_acf = enqBypassEnVec_0_1 & io_in_bits_acf_0 | enqBypassEnVec_1_1 & io_in_bits_acf_1 |
    enqBypassEnVec_2_1 & io_in_bits_acf_2 | enqBypassEnVec_3_1 & io_in_bits_acf_3 | enqBypassEnVec_4_1 &
    io_in_bits_acf_4 | enqBypassEnVec_5_1 & io_in_bits_acf_5 | enqBypassEnVec_6_1 & io_in_bits_acf_6 |
    enqBypassEnVec_7_1 & io_in_bits_acf_7; // @[Mux.scala 27:73]
  wire  enqBypassData_1_ipf = enqBypassEnVec_0_1 & io_in_bits_ipf_0 | enqBypassEnVec_1_1 & io_in_bits_ipf_1 |
    enqBypassEnVec_2_1 & io_in_bits_ipf_2 | enqBypassEnVec_3_1 & io_in_bits_ipf_3 | enqBypassEnVec_4_1 &
    io_in_bits_ipf_4 | enqBypassEnVec_5_1 & io_in_bits_ipf_5 | enqBypassEnVec_6_1 & io_in_bits_ipf_6 |
    enqBypassEnVec_7_1 & io_in_bits_ipf_7; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_765 = enqBypassEnVec_0_1 ? io_in_bits_foldpc_0 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_766 = enqBypassEnVec_1_1 ? io_in_bits_foldpc_1 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_767 = enqBypassEnVec_2_1 ? io_in_bits_foldpc_2 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_768 = enqBypassEnVec_3_1 ? io_in_bits_foldpc_3 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_769 = enqBypassEnVec_4_1 ? io_in_bits_foldpc_4 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_770 = enqBypassEnVec_5_1 ? io_in_bits_foldpc_5 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_771 = enqBypassEnVec_6_1 ? io_in_bits_foldpc_6 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_772 = enqBypassEnVec_7_1 ? io_in_bits_foldpc_7 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_773 = _enqBypassData_T_765 | _enqBypassData_T_766; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_774 = _enqBypassData_T_773 | _enqBypassData_T_767; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_775 = _enqBypassData_T_774 | _enqBypassData_T_768; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_776 = _enqBypassData_T_775 | _enqBypassData_T_769; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_777 = _enqBypassData_T_776 | _enqBypassData_T_770; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_778 = _enqBypassData_T_777 | _enqBypassData_T_771; // @[Mux.scala 27:73]
  wire [9:0] enqBypassData_1_foldpc = _enqBypassData_T_778 | _enqBypassData_T_772; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_795 = enqBypassEnVec_0_1 ? io_in_bits_instrs_0 : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_796 = enqBypassEnVec_1_1 ? io_in_bits_instrs_1 : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_797 = enqBypassEnVec_2_1 ? io_in_bits_instrs_2 : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_798 = enqBypassEnVec_3_1 ? io_in_bits_instrs_3 : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_799 = enqBypassEnVec_4_1 ? io_in_bits_instrs_4 : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_800 = enqBypassEnVec_5_1 ? io_in_bits_instrs_5 : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_801 = enqBypassEnVec_6_1 ? io_in_bits_instrs_6 : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_802 = enqBypassEnVec_7_1 ? io_in_bits_instrs_7 : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_803 = _enqBypassData_T_795 | _enqBypassData_T_796; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_804 = _enqBypassData_T_803 | _enqBypassData_T_797; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_805 = _enqBypassData_T_804 | _enqBypassData_T_798; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_806 = _enqBypassData_T_805 | _enqBypassData_T_799; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_807 = _enqBypassData_T_806 | _enqBypassData_T_800; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_808 = _enqBypassData_T_807 | _enqBypassData_T_801; // @[Mux.scala 27:73]
  wire [31:0] enqBypassData_1_inst = _enqBypassData_T_808 | _enqBypassData_T_802; // @[Mux.scala 27:73]
  wire  enqBypassEnVec_0_2 = io_in_bits_valid[0] & matrix_2_0; // @[Ibuffer.scala 217:88]
  wire  _GEN_224 = io_in_bits_valid[0] ? matrix_1_0 : matrix_2_0; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_225 = 2'h2 == _GEN_367 ? matrix_0_0 : _GEN_224; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_226 = 2'h3 == _GEN_367 ? matrix_0_1 : _GEN_225; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_227 = 3'h4 == _GEN_375 ? matrix_0_2 : _GEN_226; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_228 = 3'h5 == _GEN_375 ? matrix_0_3 : _GEN_227; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_229 = 3'h6 == _GEN_375 ? matrix_0_4 : _GEN_228; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_230 = 3'h7 == _GEN_375 ? matrix_0_5 : _GEN_229; // @[Ibuffer.scala 217:{88,88}]
  wire  enqBypassEnVec_1_2 = io_in_bits_valid[1] & _GEN_230; // @[Ibuffer.scala 217:88]
  wire  _GEN_232 = 2'h1 == _numEnq_T_9 ? matrix_1_0 : matrix_2_0; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_233 = 2'h2 == _numEnq_T_9 ? matrix_0_0 : _GEN_232; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_234 = 2'h3 == _numEnq_T_9 ? matrix_0_1 : _GEN_233; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_235 = 3'h4 == _GEN_379 ? matrix_0_2 : _GEN_234; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_236 = 3'h5 == _GEN_379 ? matrix_0_3 : _GEN_235; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_237 = 3'h6 == _GEN_379 ? matrix_0_4 : _GEN_236; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_238 = 3'h7 == _GEN_379 ? matrix_0_5 : _GEN_237; // @[Ibuffer.scala 217:{88,88}]
  wire  enqBypassEnVec_2_2 = io_in_bits_valid[2] & _GEN_238; // @[Ibuffer.scala 217:88]
  wire  _GEN_240 = 2'h1 == enqOffset_3 ? matrix_1_0 : matrix_2_0; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_241 = 2'h2 == enqOffset_3 ? matrix_0_0 : _GEN_240; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_242 = 2'h3 == enqOffset_3 ? matrix_0_1 : _GEN_241; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_243 = 3'h4 == _GEN_372 ? matrix_0_2 : _GEN_242; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_244 = 3'h5 == _GEN_372 ? matrix_0_3 : _GEN_243; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_245 = 3'h6 == _GEN_372 ? matrix_0_4 : _GEN_244; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_246 = 3'h7 == _GEN_372 ? matrix_0_5 : _GEN_245; // @[Ibuffer.scala 217:{88,88}]
  wire  enqBypassEnVec_3_2 = io_in_bits_valid[3] & _GEN_246; // @[Ibuffer.scala 217:88]
  wire  _GEN_248 = 3'h1 == _numEnq_T_13 ? matrix_1_0 : matrix_2_0; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_249 = 3'h2 == _numEnq_T_13 ? matrix_0_0 : _GEN_248; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_250 = 3'h3 == _numEnq_T_13 ? matrix_0_1 : _GEN_249; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_251 = 3'h4 == _numEnq_T_13 ? matrix_0_2 : _GEN_250; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_252 = 3'h5 == _numEnq_T_13 ? matrix_0_3 : _GEN_251; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_253 = 3'h6 == _numEnq_T_13 ? matrix_0_4 : _GEN_252; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_254 = 3'h7 == _numEnq_T_13 ? matrix_0_5 : _GEN_253; // @[Ibuffer.scala 217:{88,88}]
  wire  enqBypassEnVec_4_2 = io_in_bits_valid[4] & _GEN_254; // @[Ibuffer.scala 217:88]
  wire  _GEN_256 = 3'h1 == enqOffset_5 ? matrix_1_0 : matrix_2_0; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_257 = 3'h2 == enqOffset_5 ? matrix_0_0 : _GEN_256; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_258 = 3'h3 == enqOffset_5 ? matrix_0_1 : _GEN_257; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_259 = 3'h4 == enqOffset_5 ? matrix_0_2 : _GEN_258; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_260 = 3'h5 == enqOffset_5 ? matrix_0_3 : _GEN_259; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_261 = 3'h6 == enqOffset_5 ? matrix_0_4 : _GEN_260; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_262 = 3'h7 == enqOffset_5 ? matrix_0_5 : _GEN_261; // @[Ibuffer.scala 217:{88,88}]
  wire  enqBypassEnVec_5_2 = io_in_bits_valid[5] & _GEN_262; // @[Ibuffer.scala 217:88]
  wire  _GEN_264 = 3'h1 == enqOffset_6 ? matrix_1_0 : matrix_2_0; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_265 = 3'h2 == enqOffset_6 ? matrix_0_0 : _GEN_264; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_266 = 3'h3 == enqOffset_6 ? matrix_0_1 : _GEN_265; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_267 = 3'h4 == enqOffset_6 ? matrix_0_2 : _GEN_266; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_268 = 3'h5 == enqOffset_6 ? matrix_0_3 : _GEN_267; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_269 = 3'h6 == enqOffset_6 ? matrix_0_4 : _GEN_268; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_270 = 3'h7 == enqOffset_6 ? matrix_0_5 : _GEN_269; // @[Ibuffer.scala 217:{88,88}]
  wire  enqBypassEnVec_6_2 = io_in_bits_valid[6] & _GEN_270; // @[Ibuffer.scala 217:88]
  wire  _GEN_272 = 3'h1 == enqOffset_7 ? matrix_1_0 : matrix_2_0; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_273 = 3'h2 == enqOffset_7 ? matrix_0_0 : _GEN_272; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_274 = 3'h3 == enqOffset_7 ? matrix_0_1 : _GEN_273; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_275 = 3'h4 == enqOffset_7 ? matrix_0_2 : _GEN_274; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_276 = 3'h5 == enqOffset_7 ? matrix_0_3 : _GEN_275; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_277 = 3'h6 == enqOffset_7 ? matrix_0_4 : _GEN_276; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_278 = 3'h7 == enqOffset_7 ? matrix_0_5 : _GEN_277; // @[Ibuffer.scala 217:{88,88}]
  wire  enqBypassEnVec_7_2 = io_in_bits_valid[7] & _GEN_278; // @[Ibuffer.scala 217:88]
  wire [7:0] _enqBypassEn_T_7 = {enqBypassEnVec_7_2,enqBypassEnVec_6_2,enqBypassEnVec_5_2,enqBypassEnVec_4_2,
    enqBypassEnVec_3_2,enqBypassEnVec_2_2,enqBypassEnVec_1_2,enqBypassEnVec_0_2}; // @[Ibuffer.scala 218:61]
  wire  enqBypassEn_2 = _numEnq_T & |_enqBypassEn_T_7; // @[Ibuffer.scala 218:34]
  wire  enqBypassData_2_acf = enqBypassEnVec_0_2 & io_in_bits_acf_0 | enqBypassEnVec_1_2 & io_in_bits_acf_1 |
    enqBypassEnVec_2_2 & io_in_bits_acf_2 | enqBypassEnVec_3_2 & io_in_bits_acf_3 | enqBypassEnVec_4_2 &
    io_in_bits_acf_4 | enqBypassEnVec_5_2 & io_in_bits_acf_5 | enqBypassEnVec_6_2 & io_in_bits_acf_6 |
    enqBypassEnVec_7_2 & io_in_bits_acf_7; // @[Mux.scala 27:73]
  wire  enqBypassData_2_ipf = enqBypassEnVec_0_2 & io_in_bits_ipf_0 | enqBypassEnVec_1_2 & io_in_bits_ipf_1 |
    enqBypassEnVec_2_2 & io_in_bits_ipf_2 | enqBypassEnVec_3_2 & io_in_bits_ipf_3 | enqBypassEnVec_4_2 &
    io_in_bits_ipf_4 | enqBypassEnVec_5_2 & io_in_bits_ipf_5 | enqBypassEnVec_6_2 & io_in_bits_ipf_6 |
    enqBypassEnVec_7_2 & io_in_bits_ipf_7; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_1170 = enqBypassEnVec_0_2 ? io_in_bits_foldpc_0 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_1171 = enqBypassEnVec_1_2 ? io_in_bits_foldpc_1 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_1172 = enqBypassEnVec_2_2 ? io_in_bits_foldpc_2 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_1173 = enqBypassEnVec_3_2 ? io_in_bits_foldpc_3 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_1174 = enqBypassEnVec_4_2 ? io_in_bits_foldpc_4 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_1175 = enqBypassEnVec_5_2 ? io_in_bits_foldpc_5 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_1176 = enqBypassEnVec_6_2 ? io_in_bits_foldpc_6 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_1177 = enqBypassEnVec_7_2 ? io_in_bits_foldpc_7 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_1178 = _enqBypassData_T_1170 | _enqBypassData_T_1171; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_1179 = _enqBypassData_T_1178 | _enqBypassData_T_1172; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_1180 = _enqBypassData_T_1179 | _enqBypassData_T_1173; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_1181 = _enqBypassData_T_1180 | _enqBypassData_T_1174; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_1182 = _enqBypassData_T_1181 | _enqBypassData_T_1175; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_1183 = _enqBypassData_T_1182 | _enqBypassData_T_1176; // @[Mux.scala 27:73]
  wire [9:0] enqBypassData_2_foldpc = _enqBypassData_T_1183 | _enqBypassData_T_1177; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_1200 = enqBypassEnVec_0_2 ? io_in_bits_instrs_0 : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_1201 = enqBypassEnVec_1_2 ? io_in_bits_instrs_1 : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_1202 = enqBypassEnVec_2_2 ? io_in_bits_instrs_2 : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_1203 = enqBypassEnVec_3_2 ? io_in_bits_instrs_3 : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_1204 = enqBypassEnVec_4_2 ? io_in_bits_instrs_4 : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_1205 = enqBypassEnVec_5_2 ? io_in_bits_instrs_5 : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_1206 = enqBypassEnVec_6_2 ? io_in_bits_instrs_6 : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_1207 = enqBypassEnVec_7_2 ? io_in_bits_instrs_7 : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_1208 = _enqBypassData_T_1200 | _enqBypassData_T_1201; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_1209 = _enqBypassData_T_1208 | _enqBypassData_T_1202; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_1210 = _enqBypassData_T_1209 | _enqBypassData_T_1203; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_1211 = _enqBypassData_T_1210 | _enqBypassData_T_1204; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_1212 = _enqBypassData_T_1211 | _enqBypassData_T_1205; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_1213 = _enqBypassData_T_1212 | _enqBypassData_T_1206; // @[Mux.scala 27:73]
  wire [31:0] enqBypassData_2_inst = _enqBypassData_T_1213 | _enqBypassData_T_1207; // @[Mux.scala 27:73]
  wire  enqBypassEnVec_0_3 = io_in_bits_valid[0] & matrix_3_0; // @[Ibuffer.scala 217:88]
  wire  _GEN_280 = io_in_bits_valid[0] ? matrix_2_0 : matrix_3_0; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_281 = 2'h2 == _GEN_367 ? matrix_1_0 : _GEN_280; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_282 = 2'h3 == _GEN_367 ? matrix_0_0 : _GEN_281; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_283 = 3'h4 == _GEN_375 ? matrix_0_1 : _GEN_282; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_284 = 3'h5 == _GEN_375 ? matrix_0_2 : _GEN_283; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_285 = 3'h6 == _GEN_375 ? matrix_0_3 : _GEN_284; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_286 = 3'h7 == _GEN_375 ? matrix_0_4 : _GEN_285; // @[Ibuffer.scala 217:{88,88}]
  wire  enqBypassEnVec_1_3 = io_in_bits_valid[1] & _GEN_286; // @[Ibuffer.scala 217:88]
  wire  _GEN_288 = 2'h1 == _numEnq_T_9 ? matrix_2_0 : matrix_3_0; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_289 = 2'h2 == _numEnq_T_9 ? matrix_1_0 : _GEN_288; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_290 = 2'h3 == _numEnq_T_9 ? matrix_0_0 : _GEN_289; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_291 = 3'h4 == _GEN_379 ? matrix_0_1 : _GEN_290; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_292 = 3'h5 == _GEN_379 ? matrix_0_2 : _GEN_291; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_293 = 3'h6 == _GEN_379 ? matrix_0_3 : _GEN_292; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_294 = 3'h7 == _GEN_379 ? matrix_0_4 : _GEN_293; // @[Ibuffer.scala 217:{88,88}]
  wire  enqBypassEnVec_2_3 = io_in_bits_valid[2] & _GEN_294; // @[Ibuffer.scala 217:88]
  wire  _GEN_296 = 2'h1 == enqOffset_3 ? matrix_2_0 : matrix_3_0; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_297 = 2'h2 == enqOffset_3 ? matrix_1_0 : _GEN_296; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_298 = 2'h3 == enqOffset_3 ? matrix_0_0 : _GEN_297; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_299 = 3'h4 == _GEN_372 ? matrix_0_1 : _GEN_298; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_300 = 3'h5 == _GEN_372 ? matrix_0_2 : _GEN_299; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_301 = 3'h6 == _GEN_372 ? matrix_0_3 : _GEN_300; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_302 = 3'h7 == _GEN_372 ? matrix_0_4 : _GEN_301; // @[Ibuffer.scala 217:{88,88}]
  wire  enqBypassEnVec_3_3 = io_in_bits_valid[3] & _GEN_302; // @[Ibuffer.scala 217:88]
  wire  _GEN_304 = 3'h1 == _numEnq_T_13 ? matrix_2_0 : matrix_3_0; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_305 = 3'h2 == _numEnq_T_13 ? matrix_1_0 : _GEN_304; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_306 = 3'h3 == _numEnq_T_13 ? matrix_0_0 : _GEN_305; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_307 = 3'h4 == _numEnq_T_13 ? matrix_0_1 : _GEN_306; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_308 = 3'h5 == _numEnq_T_13 ? matrix_0_2 : _GEN_307; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_309 = 3'h6 == _numEnq_T_13 ? matrix_0_3 : _GEN_308; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_310 = 3'h7 == _numEnq_T_13 ? matrix_0_4 : _GEN_309; // @[Ibuffer.scala 217:{88,88}]
  wire  enqBypassEnVec_4_3 = io_in_bits_valid[4] & _GEN_310; // @[Ibuffer.scala 217:88]
  wire  _GEN_312 = 3'h1 == enqOffset_5 ? matrix_2_0 : matrix_3_0; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_313 = 3'h2 == enqOffset_5 ? matrix_1_0 : _GEN_312; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_314 = 3'h3 == enqOffset_5 ? matrix_0_0 : _GEN_313; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_315 = 3'h4 == enqOffset_5 ? matrix_0_1 : _GEN_314; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_316 = 3'h5 == enqOffset_5 ? matrix_0_2 : _GEN_315; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_317 = 3'h6 == enqOffset_5 ? matrix_0_3 : _GEN_316; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_318 = 3'h7 == enqOffset_5 ? matrix_0_4 : _GEN_317; // @[Ibuffer.scala 217:{88,88}]
  wire  enqBypassEnVec_5_3 = io_in_bits_valid[5] & _GEN_318; // @[Ibuffer.scala 217:88]
  wire  _GEN_320 = 3'h1 == enqOffset_6 ? matrix_2_0 : matrix_3_0; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_321 = 3'h2 == enqOffset_6 ? matrix_1_0 : _GEN_320; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_322 = 3'h3 == enqOffset_6 ? matrix_0_0 : _GEN_321; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_323 = 3'h4 == enqOffset_6 ? matrix_0_1 : _GEN_322; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_324 = 3'h5 == enqOffset_6 ? matrix_0_2 : _GEN_323; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_325 = 3'h6 == enqOffset_6 ? matrix_0_3 : _GEN_324; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_326 = 3'h7 == enqOffset_6 ? matrix_0_4 : _GEN_325; // @[Ibuffer.scala 217:{88,88}]
  wire  enqBypassEnVec_6_3 = io_in_bits_valid[6] & _GEN_326; // @[Ibuffer.scala 217:88]
  wire  _GEN_328 = 3'h1 == enqOffset_7 ? matrix_2_0 : matrix_3_0; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_329 = 3'h2 == enqOffset_7 ? matrix_1_0 : _GEN_328; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_330 = 3'h3 == enqOffset_7 ? matrix_0_0 : _GEN_329; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_331 = 3'h4 == enqOffset_7 ? matrix_0_1 : _GEN_330; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_332 = 3'h5 == enqOffset_7 ? matrix_0_2 : _GEN_331; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_333 = 3'h6 == enqOffset_7 ? matrix_0_3 : _GEN_332; // @[Ibuffer.scala 217:{88,88}]
  wire  _GEN_334 = 3'h7 == enqOffset_7 ? matrix_0_4 : _GEN_333; // @[Ibuffer.scala 217:{88,88}]
  wire  enqBypassEnVec_7_3 = io_in_bits_valid[7] & _GEN_334; // @[Ibuffer.scala 217:88]
  wire [7:0] _enqBypassEn_T_10 = {enqBypassEnVec_7_3,enqBypassEnVec_6_3,enqBypassEnVec_5_3,enqBypassEnVec_4_3,
    enqBypassEnVec_3_3,enqBypassEnVec_2_3,enqBypassEnVec_1_3,enqBypassEnVec_0_3}; // @[Ibuffer.scala 218:61]
  wire  enqBypassEn_3 = _numEnq_T & |_enqBypassEn_T_10; // @[Ibuffer.scala 218:34]
  wire  enqBypassData_3_acf = enqBypassEnVec_0_3 & io_in_bits_acf_0 | enqBypassEnVec_1_3 & io_in_bits_acf_1 |
    enqBypassEnVec_2_3 & io_in_bits_acf_2 | enqBypassEnVec_3_3 & io_in_bits_acf_3 | enqBypassEnVec_4_3 &
    io_in_bits_acf_4 | enqBypassEnVec_5_3 & io_in_bits_acf_5 | enqBypassEnVec_6_3 & io_in_bits_acf_6 |
    enqBypassEnVec_7_3 & io_in_bits_acf_7; // @[Mux.scala 27:73]
  wire  enqBypassData_3_ipf = enqBypassEnVec_0_3 & io_in_bits_ipf_0 | enqBypassEnVec_1_3 & io_in_bits_ipf_1 |
    enqBypassEnVec_2_3 & io_in_bits_ipf_2 | enqBypassEnVec_3_3 & io_in_bits_ipf_3 | enqBypassEnVec_4_3 &
    io_in_bits_ipf_4 | enqBypassEnVec_5_3 & io_in_bits_ipf_5 | enqBypassEnVec_6_3 & io_in_bits_ipf_6 |
    enqBypassEnVec_7_3 & io_in_bits_ipf_7; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_1575 = enqBypassEnVec_0_3 ? io_in_bits_foldpc_0 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_1576 = enqBypassEnVec_1_3 ? io_in_bits_foldpc_1 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_1577 = enqBypassEnVec_2_3 ? io_in_bits_foldpc_2 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_1578 = enqBypassEnVec_3_3 ? io_in_bits_foldpc_3 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_1579 = enqBypassEnVec_4_3 ? io_in_bits_foldpc_4 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_1580 = enqBypassEnVec_5_3 ? io_in_bits_foldpc_5 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_1581 = enqBypassEnVec_6_3 ? io_in_bits_foldpc_6 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_1582 = enqBypassEnVec_7_3 ? io_in_bits_foldpc_7 : 10'h0; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_1583 = _enqBypassData_T_1575 | _enqBypassData_T_1576; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_1584 = _enqBypassData_T_1583 | _enqBypassData_T_1577; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_1585 = _enqBypassData_T_1584 | _enqBypassData_T_1578; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_1586 = _enqBypassData_T_1585 | _enqBypassData_T_1579; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_1587 = _enqBypassData_T_1586 | _enqBypassData_T_1580; // @[Mux.scala 27:73]
  wire [9:0] _enqBypassData_T_1588 = _enqBypassData_T_1587 | _enqBypassData_T_1581; // @[Mux.scala 27:73]
  wire [9:0] enqBypassData_3_foldpc = _enqBypassData_T_1588 | _enqBypassData_T_1582; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_1605 = enqBypassEnVec_0_3 ? io_in_bits_instrs_0 : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_1606 = enqBypassEnVec_1_3 ? io_in_bits_instrs_1 : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_1607 = enqBypassEnVec_2_3 ? io_in_bits_instrs_2 : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_1608 = enqBypassEnVec_3_3 ? io_in_bits_instrs_3 : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_1609 = enqBypassEnVec_4_3 ? io_in_bits_instrs_4 : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_1610 = enqBypassEnVec_5_3 ? io_in_bits_instrs_5 : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_1611 = enqBypassEnVec_6_3 ? io_in_bits_instrs_6 : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_1612 = enqBypassEnVec_7_3 ? io_in_bits_instrs_7 : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_1613 = _enqBypassData_T_1605 | _enqBypassData_T_1606; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_1614 = _enqBypassData_T_1613 | _enqBypassData_T_1607; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_1615 = _enqBypassData_T_1614 | _enqBypassData_T_1608; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_1616 = _enqBypassData_T_1615 | _enqBypassData_T_1609; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_1617 = _enqBypassData_T_1616 | _enqBypassData_T_1610; // @[Mux.scala 27:73]
  wire [31:0] _enqBypassData_T_1618 = _enqBypassData_T_1617 | _enqBypassData_T_1611; // @[Mux.scala 27:73]
  wire [31:0] enqBypassData_3_inst = _enqBypassData_T_1618 | _enqBypassData_T_1612; // @[Mux.scala 27:73]
  wire  deqEnable_n_0 = ~_T_189; // @[Ibuffer.scala 223:37]
  wire  deqEnable_n_1 = ~_T_192; // @[Ibuffer.scala 223:37]
  reg  afterInit; // @[Ibuffer.scala 259:26]
  reg  headBubble; // @[Ibuffer.scala 260:27]
  wire  _GEN_361 = validEntries != 5'h0 ? 1'h0 : headBubble; // @[Ibuffer.scala 264:37 265:16 260:27]
  wire  _T_217 = io_out_0_ready & ~io_out_0_valid; // @[Ibuffer.scala 301:83]
  wire  _T_219 = io_out_1_ready & ~io_out_1_valid; // @[Ibuffer.scala 301:83]
  reg  io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_3_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_4_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_4_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_5_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_5_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg  io_perf_6_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_6_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [1:0] io_perf_7_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [1:0] io_perf_7_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  SyncDataModuleTemplate__16entry ibuf ( // @[Ibuffer.scala 133:20]
    .clock(ibuf_clock),
    .io_raddr_0(ibuf_io_raddr_0),
    .io_raddr_1(ibuf_io_raddr_1),
    .io_raddr_2(ibuf_io_raddr_2),
    .io_raddr_3(ibuf_io_raddr_3),
    .io_rdata_0_pd_isRVC(ibuf_io_rdata_0_pd_isRVC),
    .io_rdata_0_pd_brType(ibuf_io_rdata_0_pd_brType),
    .io_rdata_0_pd_isCall(ibuf_io_rdata_0_pd_isCall),
    .io_rdata_0_pd_isRet(ibuf_io_rdata_0_pd_isRet),
    .io_rdata_0_pred_taken(ibuf_io_rdata_0_pred_taken),
    .io_rdata_0_ftqPtr_flag(ibuf_io_rdata_0_ftqPtr_flag),
    .io_rdata_0_ftqPtr_value(ibuf_io_rdata_0_ftqPtr_value),
    .io_rdata_0_ftqOffset(ibuf_io_rdata_0_ftqOffset),
    .io_rdata_0_crossPageIPFFix(ibuf_io_rdata_0_crossPageIPFFix),
    .io_rdata_0_triggered_frontendHit_0(ibuf_io_rdata_0_triggered_frontendHit_0),
    .io_rdata_0_triggered_frontendHit_1(ibuf_io_rdata_0_triggered_frontendHit_1),
    .io_rdata_0_triggered_frontendHit_2(ibuf_io_rdata_0_triggered_frontendHit_2),
    .io_rdata_0_triggered_frontendHit_3(ibuf_io_rdata_0_triggered_frontendHit_3),
    .io_rdata_0_triggered_backendEn_0(ibuf_io_rdata_0_triggered_backendEn_0),
    .io_rdata_0_triggered_backendEn_1(ibuf_io_rdata_0_triggered_backendEn_1),
    .io_rdata_1_pd_isRVC(ibuf_io_rdata_1_pd_isRVC),
    .io_rdata_1_pd_brType(ibuf_io_rdata_1_pd_brType),
    .io_rdata_1_pd_isCall(ibuf_io_rdata_1_pd_isCall),
    .io_rdata_1_pd_isRet(ibuf_io_rdata_1_pd_isRet),
    .io_rdata_1_pred_taken(ibuf_io_rdata_1_pred_taken),
    .io_rdata_1_ftqPtr_flag(ibuf_io_rdata_1_ftqPtr_flag),
    .io_rdata_1_ftqPtr_value(ibuf_io_rdata_1_ftqPtr_value),
    .io_rdata_1_ftqOffset(ibuf_io_rdata_1_ftqOffset),
    .io_rdata_1_crossPageIPFFix(ibuf_io_rdata_1_crossPageIPFFix),
    .io_rdata_1_triggered_frontendHit_0(ibuf_io_rdata_1_triggered_frontendHit_0),
    .io_rdata_1_triggered_frontendHit_1(ibuf_io_rdata_1_triggered_frontendHit_1),
    .io_rdata_1_triggered_frontendHit_2(ibuf_io_rdata_1_triggered_frontendHit_2),
    .io_rdata_1_triggered_frontendHit_3(ibuf_io_rdata_1_triggered_frontendHit_3),
    .io_rdata_1_triggered_backendEn_0(ibuf_io_rdata_1_triggered_backendEn_0),
    .io_rdata_1_triggered_backendEn_1(ibuf_io_rdata_1_triggered_backendEn_1),
    .io_rdata_2_inst(ibuf_io_rdata_2_inst),
    .io_rdata_2_foldpc(ibuf_io_rdata_2_foldpc),
    .io_rdata_2_ipf(ibuf_io_rdata_2_ipf),
    .io_rdata_2_acf(ibuf_io_rdata_2_acf),
    .io_rdata_3_inst(ibuf_io_rdata_3_inst),
    .io_rdata_3_foldpc(ibuf_io_rdata_3_foldpc),
    .io_rdata_3_ipf(ibuf_io_rdata_3_ipf),
    .io_rdata_3_acf(ibuf_io_rdata_3_acf),
    .io_wen_0(ibuf_io_wen_0),
    .io_wen_1(ibuf_io_wen_1),
    .io_wen_2(ibuf_io_wen_2),
    .io_wen_3(ibuf_io_wen_3),
    .io_wen_4(ibuf_io_wen_4),
    .io_wen_5(ibuf_io_wen_5),
    .io_wen_6(ibuf_io_wen_6),
    .io_wen_7(ibuf_io_wen_7),
    .io_waddr_0(ibuf_io_waddr_0),
    .io_waddr_1(ibuf_io_waddr_1),
    .io_waddr_2(ibuf_io_waddr_2),
    .io_waddr_3(ibuf_io_waddr_3),
    .io_waddr_4(ibuf_io_waddr_4),
    .io_waddr_5(ibuf_io_waddr_5),
    .io_waddr_6(ibuf_io_waddr_6),
    .io_waddr_7(ibuf_io_waddr_7),
    .io_wdata_0_inst(ibuf_io_wdata_0_inst),
    .io_wdata_0_foldpc(ibuf_io_wdata_0_foldpc),
    .io_wdata_0_pd_isRVC(ibuf_io_wdata_0_pd_isRVC),
    .io_wdata_0_pd_brType(ibuf_io_wdata_0_pd_brType),
    .io_wdata_0_pd_isCall(ibuf_io_wdata_0_pd_isCall),
    .io_wdata_0_pd_isRet(ibuf_io_wdata_0_pd_isRet),
    .io_wdata_0_pred_taken(ibuf_io_wdata_0_pred_taken),
    .io_wdata_0_ftqPtr_flag(ibuf_io_wdata_0_ftqPtr_flag),
    .io_wdata_0_ftqPtr_value(ibuf_io_wdata_0_ftqPtr_value),
    .io_wdata_0_ipf(ibuf_io_wdata_0_ipf),
    .io_wdata_0_acf(ibuf_io_wdata_0_acf),
    .io_wdata_0_crossPageIPFFix(ibuf_io_wdata_0_crossPageIPFFix),
    .io_wdata_0_triggered_frontendHit_0(ibuf_io_wdata_0_triggered_frontendHit_0),
    .io_wdata_0_triggered_frontendHit_1(ibuf_io_wdata_0_triggered_frontendHit_1),
    .io_wdata_0_triggered_frontendHit_2(ibuf_io_wdata_0_triggered_frontendHit_2),
    .io_wdata_0_triggered_frontendHit_3(ibuf_io_wdata_0_triggered_frontendHit_3),
    .io_wdata_0_triggered_backendEn_0(ibuf_io_wdata_0_triggered_backendEn_0),
    .io_wdata_0_triggered_backendEn_1(ibuf_io_wdata_0_triggered_backendEn_1),
    .io_wdata_1_inst(ibuf_io_wdata_1_inst),
    .io_wdata_1_foldpc(ibuf_io_wdata_1_foldpc),
    .io_wdata_1_pd_isRVC(ibuf_io_wdata_1_pd_isRVC),
    .io_wdata_1_pd_brType(ibuf_io_wdata_1_pd_brType),
    .io_wdata_1_pd_isCall(ibuf_io_wdata_1_pd_isCall),
    .io_wdata_1_pd_isRet(ibuf_io_wdata_1_pd_isRet),
    .io_wdata_1_pred_taken(ibuf_io_wdata_1_pred_taken),
    .io_wdata_1_ftqPtr_flag(ibuf_io_wdata_1_ftqPtr_flag),
    .io_wdata_1_ftqPtr_value(ibuf_io_wdata_1_ftqPtr_value),
    .io_wdata_1_ipf(ibuf_io_wdata_1_ipf),
    .io_wdata_1_acf(ibuf_io_wdata_1_acf),
    .io_wdata_1_crossPageIPFFix(ibuf_io_wdata_1_crossPageIPFFix),
    .io_wdata_1_triggered_frontendHit_0(ibuf_io_wdata_1_triggered_frontendHit_0),
    .io_wdata_1_triggered_frontendHit_1(ibuf_io_wdata_1_triggered_frontendHit_1),
    .io_wdata_1_triggered_frontendHit_2(ibuf_io_wdata_1_triggered_frontendHit_2),
    .io_wdata_1_triggered_frontendHit_3(ibuf_io_wdata_1_triggered_frontendHit_3),
    .io_wdata_1_triggered_backendEn_0(ibuf_io_wdata_1_triggered_backendEn_0),
    .io_wdata_1_triggered_backendEn_1(ibuf_io_wdata_1_triggered_backendEn_1),
    .io_wdata_2_inst(ibuf_io_wdata_2_inst),
    .io_wdata_2_foldpc(ibuf_io_wdata_2_foldpc),
    .io_wdata_2_pd_isRVC(ibuf_io_wdata_2_pd_isRVC),
    .io_wdata_2_pd_brType(ibuf_io_wdata_2_pd_brType),
    .io_wdata_2_pd_isCall(ibuf_io_wdata_2_pd_isCall),
    .io_wdata_2_pd_isRet(ibuf_io_wdata_2_pd_isRet),
    .io_wdata_2_pred_taken(ibuf_io_wdata_2_pred_taken),
    .io_wdata_2_ftqPtr_flag(ibuf_io_wdata_2_ftqPtr_flag),
    .io_wdata_2_ftqPtr_value(ibuf_io_wdata_2_ftqPtr_value),
    .io_wdata_2_ipf(ibuf_io_wdata_2_ipf),
    .io_wdata_2_acf(ibuf_io_wdata_2_acf),
    .io_wdata_2_crossPageIPFFix(ibuf_io_wdata_2_crossPageIPFFix),
    .io_wdata_2_triggered_frontendHit_0(ibuf_io_wdata_2_triggered_frontendHit_0),
    .io_wdata_2_triggered_frontendHit_1(ibuf_io_wdata_2_triggered_frontendHit_1),
    .io_wdata_2_triggered_frontendHit_2(ibuf_io_wdata_2_triggered_frontendHit_2),
    .io_wdata_2_triggered_frontendHit_3(ibuf_io_wdata_2_triggered_frontendHit_3),
    .io_wdata_2_triggered_backendEn_0(ibuf_io_wdata_2_triggered_backendEn_0),
    .io_wdata_2_triggered_backendEn_1(ibuf_io_wdata_2_triggered_backendEn_1),
    .io_wdata_3_inst(ibuf_io_wdata_3_inst),
    .io_wdata_3_foldpc(ibuf_io_wdata_3_foldpc),
    .io_wdata_3_pd_isRVC(ibuf_io_wdata_3_pd_isRVC),
    .io_wdata_3_pd_brType(ibuf_io_wdata_3_pd_brType),
    .io_wdata_3_pd_isCall(ibuf_io_wdata_3_pd_isCall),
    .io_wdata_3_pd_isRet(ibuf_io_wdata_3_pd_isRet),
    .io_wdata_3_pred_taken(ibuf_io_wdata_3_pred_taken),
    .io_wdata_3_ftqPtr_flag(ibuf_io_wdata_3_ftqPtr_flag),
    .io_wdata_3_ftqPtr_value(ibuf_io_wdata_3_ftqPtr_value),
    .io_wdata_3_ipf(ibuf_io_wdata_3_ipf),
    .io_wdata_3_acf(ibuf_io_wdata_3_acf),
    .io_wdata_3_crossPageIPFFix(ibuf_io_wdata_3_crossPageIPFFix),
    .io_wdata_3_triggered_frontendHit_0(ibuf_io_wdata_3_triggered_frontendHit_0),
    .io_wdata_3_triggered_frontendHit_1(ibuf_io_wdata_3_triggered_frontendHit_1),
    .io_wdata_3_triggered_frontendHit_2(ibuf_io_wdata_3_triggered_frontendHit_2),
    .io_wdata_3_triggered_frontendHit_3(ibuf_io_wdata_3_triggered_frontendHit_3),
    .io_wdata_3_triggered_backendEn_0(ibuf_io_wdata_3_triggered_backendEn_0),
    .io_wdata_3_triggered_backendEn_1(ibuf_io_wdata_3_triggered_backendEn_1),
    .io_wdata_4_inst(ibuf_io_wdata_4_inst),
    .io_wdata_4_foldpc(ibuf_io_wdata_4_foldpc),
    .io_wdata_4_pd_isRVC(ibuf_io_wdata_4_pd_isRVC),
    .io_wdata_4_pd_brType(ibuf_io_wdata_4_pd_brType),
    .io_wdata_4_pd_isCall(ibuf_io_wdata_4_pd_isCall),
    .io_wdata_4_pd_isRet(ibuf_io_wdata_4_pd_isRet),
    .io_wdata_4_pred_taken(ibuf_io_wdata_4_pred_taken),
    .io_wdata_4_ftqPtr_flag(ibuf_io_wdata_4_ftqPtr_flag),
    .io_wdata_4_ftqPtr_value(ibuf_io_wdata_4_ftqPtr_value),
    .io_wdata_4_ipf(ibuf_io_wdata_4_ipf),
    .io_wdata_4_acf(ibuf_io_wdata_4_acf),
    .io_wdata_4_crossPageIPFFix(ibuf_io_wdata_4_crossPageIPFFix),
    .io_wdata_4_triggered_frontendHit_0(ibuf_io_wdata_4_triggered_frontendHit_0),
    .io_wdata_4_triggered_frontendHit_1(ibuf_io_wdata_4_triggered_frontendHit_1),
    .io_wdata_4_triggered_frontendHit_2(ibuf_io_wdata_4_triggered_frontendHit_2),
    .io_wdata_4_triggered_frontendHit_3(ibuf_io_wdata_4_triggered_frontendHit_3),
    .io_wdata_4_triggered_backendEn_0(ibuf_io_wdata_4_triggered_backendEn_0),
    .io_wdata_4_triggered_backendEn_1(ibuf_io_wdata_4_triggered_backendEn_1),
    .io_wdata_5_inst(ibuf_io_wdata_5_inst),
    .io_wdata_5_foldpc(ibuf_io_wdata_5_foldpc),
    .io_wdata_5_pd_isRVC(ibuf_io_wdata_5_pd_isRVC),
    .io_wdata_5_pd_brType(ibuf_io_wdata_5_pd_brType),
    .io_wdata_5_pd_isCall(ibuf_io_wdata_5_pd_isCall),
    .io_wdata_5_pd_isRet(ibuf_io_wdata_5_pd_isRet),
    .io_wdata_5_pred_taken(ibuf_io_wdata_5_pred_taken),
    .io_wdata_5_ftqPtr_flag(ibuf_io_wdata_5_ftqPtr_flag),
    .io_wdata_5_ftqPtr_value(ibuf_io_wdata_5_ftqPtr_value),
    .io_wdata_5_ipf(ibuf_io_wdata_5_ipf),
    .io_wdata_5_acf(ibuf_io_wdata_5_acf),
    .io_wdata_5_crossPageIPFFix(ibuf_io_wdata_5_crossPageIPFFix),
    .io_wdata_5_triggered_frontendHit_0(ibuf_io_wdata_5_triggered_frontendHit_0),
    .io_wdata_5_triggered_frontendHit_1(ibuf_io_wdata_5_triggered_frontendHit_1),
    .io_wdata_5_triggered_frontendHit_2(ibuf_io_wdata_5_triggered_frontendHit_2),
    .io_wdata_5_triggered_frontendHit_3(ibuf_io_wdata_5_triggered_frontendHit_3),
    .io_wdata_5_triggered_backendEn_0(ibuf_io_wdata_5_triggered_backendEn_0),
    .io_wdata_5_triggered_backendEn_1(ibuf_io_wdata_5_triggered_backendEn_1),
    .io_wdata_6_inst(ibuf_io_wdata_6_inst),
    .io_wdata_6_foldpc(ibuf_io_wdata_6_foldpc),
    .io_wdata_6_pd_isRVC(ibuf_io_wdata_6_pd_isRVC),
    .io_wdata_6_pd_brType(ibuf_io_wdata_6_pd_brType),
    .io_wdata_6_pd_isCall(ibuf_io_wdata_6_pd_isCall),
    .io_wdata_6_pd_isRet(ibuf_io_wdata_6_pd_isRet),
    .io_wdata_6_pred_taken(ibuf_io_wdata_6_pred_taken),
    .io_wdata_6_ftqPtr_flag(ibuf_io_wdata_6_ftqPtr_flag),
    .io_wdata_6_ftqPtr_value(ibuf_io_wdata_6_ftqPtr_value),
    .io_wdata_6_ipf(ibuf_io_wdata_6_ipf),
    .io_wdata_6_acf(ibuf_io_wdata_6_acf),
    .io_wdata_6_crossPageIPFFix(ibuf_io_wdata_6_crossPageIPFFix),
    .io_wdata_6_triggered_frontendHit_0(ibuf_io_wdata_6_triggered_frontendHit_0),
    .io_wdata_6_triggered_frontendHit_1(ibuf_io_wdata_6_triggered_frontendHit_1),
    .io_wdata_6_triggered_frontendHit_2(ibuf_io_wdata_6_triggered_frontendHit_2),
    .io_wdata_6_triggered_frontendHit_3(ibuf_io_wdata_6_triggered_frontendHit_3),
    .io_wdata_6_triggered_backendEn_0(ibuf_io_wdata_6_triggered_backendEn_0),
    .io_wdata_6_triggered_backendEn_1(ibuf_io_wdata_6_triggered_backendEn_1),
    .io_wdata_7_inst(ibuf_io_wdata_7_inst),
    .io_wdata_7_foldpc(ibuf_io_wdata_7_foldpc),
    .io_wdata_7_pd_isRVC(ibuf_io_wdata_7_pd_isRVC),
    .io_wdata_7_pd_brType(ibuf_io_wdata_7_pd_brType),
    .io_wdata_7_pd_isCall(ibuf_io_wdata_7_pd_isCall),
    .io_wdata_7_pd_isRet(ibuf_io_wdata_7_pd_isRet),
    .io_wdata_7_pred_taken(ibuf_io_wdata_7_pred_taken),
    .io_wdata_7_ftqPtr_flag(ibuf_io_wdata_7_ftqPtr_flag),
    .io_wdata_7_ftqPtr_value(ibuf_io_wdata_7_ftqPtr_value),
    .io_wdata_7_ipf(ibuf_io_wdata_7_ipf),
    .io_wdata_7_acf(ibuf_io_wdata_7_acf),
    .io_wdata_7_crossPageIPFFix(ibuf_io_wdata_7_crossPageIPFFix),
    .io_wdata_7_triggered_frontendHit_0(ibuf_io_wdata_7_triggered_frontendHit_0),
    .io_wdata_7_triggered_frontendHit_1(ibuf_io_wdata_7_triggered_frontendHit_1),
    .io_wdata_7_triggered_frontendHit_2(ibuf_io_wdata_7_triggered_frontendHit_2),
    .io_wdata_7_triggered_frontendHit_3(ibuf_io_wdata_7_triggered_frontendHit_3),
    .io_wdata_7_triggered_backendEn_0(ibuf_io_wdata_7_triggered_backendEn_0),
    .io_wdata_7_triggered_backendEn_1(ibuf_io_wdata_7_triggered_backendEn_1)
  );
  assign io_in_ready = allowEnq; // @[Ibuffer.scala 156:15]
  assign io_out_0_valid = validVec[0]; // @[Ibuffer.scala 203:32]
  assign io_out_0_bits_instr = deqData_0_inst; // @[Ibuffer.scala 76:18 77:14]
  assign io_out_0_bits_foldpc = deqData_0_foldpc; // @[Ibuffer.scala 76:18 79:15]
  assign io_out_0_bits_exceptionVec_1 = deqData_0_acf; // @[Ibuffer.scala 76:18 82:39]
  assign io_out_0_bits_exceptionVec_12 = deqData_0_ipf; // @[Ibuffer.scala 76:18 81:37]
  assign io_out_0_bits_trigger_frontendHit_0 = ibuf_io_rdata_0_triggered_frontendHit_0; // @[Ibuffer.scala 76:18 83:16]
  assign io_out_0_bits_trigger_frontendHit_1 = ibuf_io_rdata_0_triggered_frontendHit_1; // @[Ibuffer.scala 76:18 83:16]
  assign io_out_0_bits_trigger_frontendHit_2 = ibuf_io_rdata_0_triggered_frontendHit_2; // @[Ibuffer.scala 76:18 83:16]
  assign io_out_0_bits_trigger_frontendHit_3 = ibuf_io_rdata_0_triggered_frontendHit_3; // @[Ibuffer.scala 76:18 83:16]
  assign io_out_0_bits_trigger_backendEn_0 = ibuf_io_rdata_0_triggered_backendEn_0; // @[Ibuffer.scala 76:18 83:16]
  assign io_out_0_bits_trigger_backendEn_1 = ibuf_io_rdata_0_triggered_backendEn_1; // @[Ibuffer.scala 76:18 83:16]
  assign io_out_0_bits_pd_isRVC = ibuf_io_rdata_0_pd_isRVC; // @[Ibuffer.scala 76:18 84:11]
  assign io_out_0_bits_pd_brType = ibuf_io_rdata_0_pd_brType; // @[Ibuffer.scala 76:18 84:11]
  assign io_out_0_bits_pd_isCall = ibuf_io_rdata_0_pd_isCall; // @[Ibuffer.scala 76:18 84:11]
  assign io_out_0_bits_pd_isRet = ibuf_io_rdata_0_pd_isRet; // @[Ibuffer.scala 76:18 84:11]
  assign io_out_0_bits_pred_taken = ibuf_io_rdata_0_pred_taken; // @[Ibuffer.scala 76:18 85:19]
  assign io_out_0_bits_crossPageIPFFix = ibuf_io_rdata_0_crossPageIPFFix; // @[Ibuffer.scala 76:18 86:24]
  assign io_out_0_bits_ftqPtr_flag = ibuf_io_rdata_0_ftqPtr_flag; // @[Ibuffer.scala 76:18 92:15]
  assign io_out_0_bits_ftqPtr_value = ibuf_io_rdata_0_ftqPtr_value; // @[Ibuffer.scala 76:18 92:15]
  assign io_out_0_bits_ftqOffset = ibuf_io_rdata_0_ftqOffset; // @[Ibuffer.scala 76:18 93:18]
  assign io_out_1_valid = validVec[1]; // @[Ibuffer.scala 203:32]
  assign io_out_1_bits_instr = deqData_1_inst; // @[Ibuffer.scala 76:18 77:14]
  assign io_out_1_bits_foldpc = deqData_1_foldpc; // @[Ibuffer.scala 76:18 79:15]
  assign io_out_1_bits_exceptionVec_1 = deqData_1_acf; // @[Ibuffer.scala 76:18 82:39]
  assign io_out_1_bits_exceptionVec_12 = deqData_1_ipf; // @[Ibuffer.scala 76:18 81:37]
  assign io_out_1_bits_trigger_frontendHit_0 = ibuf_io_rdata_1_triggered_frontendHit_0; // @[Ibuffer.scala 76:18 83:16]
  assign io_out_1_bits_trigger_frontendHit_1 = ibuf_io_rdata_1_triggered_frontendHit_1; // @[Ibuffer.scala 76:18 83:16]
  assign io_out_1_bits_trigger_frontendHit_2 = ibuf_io_rdata_1_triggered_frontendHit_2; // @[Ibuffer.scala 76:18 83:16]
  assign io_out_1_bits_trigger_frontendHit_3 = ibuf_io_rdata_1_triggered_frontendHit_3; // @[Ibuffer.scala 76:18 83:16]
  assign io_out_1_bits_trigger_backendEn_0 = ibuf_io_rdata_1_triggered_backendEn_0; // @[Ibuffer.scala 76:18 83:16]
  assign io_out_1_bits_trigger_backendEn_1 = ibuf_io_rdata_1_triggered_backendEn_1; // @[Ibuffer.scala 76:18 83:16]
  assign io_out_1_bits_pd_isRVC = ibuf_io_rdata_1_pd_isRVC; // @[Ibuffer.scala 76:18 84:11]
  assign io_out_1_bits_pd_brType = ibuf_io_rdata_1_pd_brType; // @[Ibuffer.scala 76:18 84:11]
  assign io_out_1_bits_pd_isCall = ibuf_io_rdata_1_pd_isCall; // @[Ibuffer.scala 76:18 84:11]
  assign io_out_1_bits_pd_isRet = ibuf_io_rdata_1_pd_isRet; // @[Ibuffer.scala 76:18 84:11]
  assign io_out_1_bits_pred_taken = ibuf_io_rdata_1_pred_taken; // @[Ibuffer.scala 76:18 85:19]
  assign io_out_1_bits_crossPageIPFFix = ibuf_io_rdata_1_crossPageIPFFix; // @[Ibuffer.scala 76:18 86:24]
  assign io_out_1_bits_ftqPtr_flag = ibuf_io_rdata_1_ftqPtr_flag; // @[Ibuffer.scala 76:18 92:15]
  assign io_out_1_bits_ftqPtr_value = ibuf_io_rdata_1_ftqPtr_value; // @[Ibuffer.scala 76:18 92:15]
  assign io_out_1_bits_ftqOffset = ibuf_io_rdata_1_ftqOffset; // @[Ibuffer.scala 76:18 93:18]
  assign io_stallReason_reason_0 = io_stallReason_backReason_valid ? io_stallReason_backReason_bits : _GEN_108; // @[Ibuffer.scala 196:42 197:33]
  assign io_stallReason_reason_1 = io_stallReason_backReason_valid ? io_stallReason_backReason_bits : _GEN_107; // @[Ibuffer.scala 196:42 197:33]
  assign io_perf_0_value = {{5'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_1_value = {{5'd0}, io_perf_1_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_2_value = {{5'd0}, io_perf_2_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_3_value = {{5'd0}, io_perf_3_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_4_value = {{5'd0}, io_perf_4_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_5_value = {{5'd0}, io_perf_5_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_6_value = {{5'd0}, io_perf_6_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_7_value = {{4'd0}, io_perf_7_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign ibuf_clock = clock;
  assign ibuf_io_raddr_0 = io_out_0_ready ? new_ptr_value : deqPtrVec_0_value; // @[Ibuffer.scala 149:23]
  assign ibuf_io_raddr_1 = io_out_0_ready ? new_ptr_1_value : deqPtrVec_1_value; // @[Ibuffer.scala 149:23]
  assign ibuf_io_raddr_2 = io_out_0_ready ? new_ptr_2_value : deqPtrVec_2_value; // @[Ibuffer.scala 149:23]
  assign ibuf_io_raddr_3 = io_out_0_ready ? new_ptr_3_value : deqPtrVec_3_value; // @[Ibuffer.scala 149:23]
  assign ibuf_io_wen_0 = io_in_bits_enqEnable[0] & _numEnq_T & ~io_flush; // @[Ibuffer.scala 163:63]
  assign ibuf_io_wen_1 = io_in_bits_enqEnable[1] & _numEnq_T & ~io_flush; // @[Ibuffer.scala 163:63]
  assign ibuf_io_wen_2 = io_in_bits_enqEnable[2] & _numEnq_T & ~io_flush; // @[Ibuffer.scala 163:63]
  assign ibuf_io_wen_3 = io_in_bits_enqEnable[3] & _numEnq_T & ~io_flush; // @[Ibuffer.scala 163:63]
  assign ibuf_io_wen_4 = io_in_bits_enqEnable[4] & _numEnq_T & ~io_flush; // @[Ibuffer.scala 163:63]
  assign ibuf_io_wen_5 = io_in_bits_enqEnable[5] & _numEnq_T & ~io_flush; // @[Ibuffer.scala 163:63]
  assign ibuf_io_wen_6 = io_in_bits_enqEnable[6] & _numEnq_T & ~io_flush; // @[Ibuffer.scala 163:63]
  assign ibuf_io_wen_7 = io_in_bits_enqEnable[7] & _numEnq_T & ~io_flush; // @[Ibuffer.scala 163:63]
  assign ibuf_io_waddr_0 = enqPtrVec_0_value; // @[Ibuffer.scala 161:22]
  assign ibuf_io_waddr_1 = 3'h7 == _GEN_375 ? enqPtrVec_7_value : _GEN_37; // @[Ibuffer.scala 161:{22,22}]
  assign ibuf_io_waddr_2 = 3'h7 == _GEN_379 ? enqPtrVec_7_value : _GEN_45; // @[Ibuffer.scala 161:{22,22}]
  assign ibuf_io_waddr_3 = 3'h7 == _GEN_372 ? enqPtrVec_7_value : _GEN_53; // @[Ibuffer.scala 161:{22,22}]
  assign ibuf_io_waddr_4 = 3'h7 == _numEnq_T_13 ? enqPtrVec_7_value : _GEN_61; // @[Ibuffer.scala 161:{22,22}]
  assign ibuf_io_waddr_5 = 3'h7 == enqOffset_5 ? enqPtrVec_7_value : _GEN_69; // @[Ibuffer.scala 161:{22,22}]
  assign ibuf_io_waddr_6 = 3'h7 == enqOffset_6 ? enqPtrVec_7_value : _GEN_77; // @[Ibuffer.scala 161:{22,22}]
  assign ibuf_io_waddr_7 = 3'h7 == enqOffset_7 ? enqPtrVec_7_value : _GEN_85; // @[Ibuffer.scala 161:{22,22}]
  assign ibuf_io_wdata_0_inst = io_in_bits_instrs_0; // @[Ibuffer.scala 159:53 61:12]
  assign ibuf_io_wdata_0_foldpc = io_in_bits_foldpc_0; // @[Ibuffer.scala 159:53 63:12]
  assign ibuf_io_wdata_0_pd_isRVC = io_in_bits_pd_0_isRVC; // @[Ibuffer.scala 159:53 64:12]
  assign ibuf_io_wdata_0_pd_brType = io_in_bits_pd_0_brType; // @[Ibuffer.scala 159:53 64:12]
  assign ibuf_io_wdata_0_pd_isCall = io_in_bits_pd_0_isCall; // @[Ibuffer.scala 159:53 64:12]
  assign ibuf_io_wdata_0_pd_isRet = io_in_bits_pd_0_isRet; // @[Ibuffer.scala 159:53 64:12]
  assign ibuf_io_wdata_0_pred_taken = io_in_bits_ftqOffset_0_valid; // @[Ibuffer.scala 159:53 65:16]
  assign ibuf_io_wdata_0_ftqPtr_flag = io_in_bits_ftqPtr_flag; // @[Ibuffer.scala 159:53 66:12]
  assign ibuf_io_wdata_0_ftqPtr_value = io_in_bits_ftqPtr_value; // @[Ibuffer.scala 159:53 66:12]
  assign ibuf_io_wdata_0_ipf = io_in_bits_ipf_0; // @[Ibuffer.scala 159:53 68:9]
  assign ibuf_io_wdata_0_acf = io_in_bits_acf_0; // @[Ibuffer.scala 159:53 69:9]
  assign ibuf_io_wdata_0_crossPageIPFFix = io_in_bits_crossPageIPFFix_0; // @[Ibuffer.scala 159:53 70:21]
  assign ibuf_io_wdata_0_triggered_frontendHit_0 = io_in_bits_triggered_0_frontendHit_0; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_0_triggered_frontendHit_1 = io_in_bits_triggered_0_frontendHit_1; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_0_triggered_frontendHit_2 = io_in_bits_triggered_0_frontendHit_2; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_0_triggered_frontendHit_3 = io_in_bits_triggered_0_frontendHit_3; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_0_triggered_backendEn_0 = io_in_bits_triggered_0_backendEn_0; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_0_triggered_backendEn_1 = io_in_bits_triggered_0_backendEn_1; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_1_inst = io_in_bits_instrs_1; // @[Ibuffer.scala 159:53 61:12]
  assign ibuf_io_wdata_1_foldpc = io_in_bits_foldpc_1; // @[Ibuffer.scala 159:53 63:12]
  assign ibuf_io_wdata_1_pd_isRVC = io_in_bits_pd_1_isRVC; // @[Ibuffer.scala 159:53 64:12]
  assign ibuf_io_wdata_1_pd_brType = io_in_bits_pd_1_brType; // @[Ibuffer.scala 159:53 64:12]
  assign ibuf_io_wdata_1_pd_isCall = io_in_bits_pd_1_isCall; // @[Ibuffer.scala 159:53 64:12]
  assign ibuf_io_wdata_1_pd_isRet = io_in_bits_pd_1_isRet; // @[Ibuffer.scala 159:53 64:12]
  assign ibuf_io_wdata_1_pred_taken = io_in_bits_ftqOffset_1_valid; // @[Ibuffer.scala 159:53 65:16]
  assign ibuf_io_wdata_1_ftqPtr_flag = io_in_bits_ftqPtr_flag; // @[Ibuffer.scala 159:53 66:12]
  assign ibuf_io_wdata_1_ftqPtr_value = io_in_bits_ftqPtr_value; // @[Ibuffer.scala 159:53 66:12]
  assign ibuf_io_wdata_1_ipf = io_in_bits_ipf_1; // @[Ibuffer.scala 159:53 68:9]
  assign ibuf_io_wdata_1_acf = io_in_bits_acf_1; // @[Ibuffer.scala 159:53 69:9]
  assign ibuf_io_wdata_1_crossPageIPFFix = io_in_bits_crossPageIPFFix_1; // @[Ibuffer.scala 159:53 70:21]
  assign ibuf_io_wdata_1_triggered_frontendHit_0 = io_in_bits_triggered_1_frontendHit_0; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_1_triggered_frontendHit_1 = io_in_bits_triggered_1_frontendHit_1; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_1_triggered_frontendHit_2 = io_in_bits_triggered_1_frontendHit_2; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_1_triggered_frontendHit_3 = io_in_bits_triggered_1_frontendHit_3; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_1_triggered_backendEn_0 = io_in_bits_triggered_1_backendEn_0; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_1_triggered_backendEn_1 = io_in_bits_triggered_1_backendEn_1; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_2_inst = io_in_bits_instrs_2; // @[Ibuffer.scala 159:53 61:12]
  assign ibuf_io_wdata_2_foldpc = io_in_bits_foldpc_2; // @[Ibuffer.scala 159:53 63:12]
  assign ibuf_io_wdata_2_pd_isRVC = io_in_bits_pd_2_isRVC; // @[Ibuffer.scala 159:53 64:12]
  assign ibuf_io_wdata_2_pd_brType = io_in_bits_pd_2_brType; // @[Ibuffer.scala 159:53 64:12]
  assign ibuf_io_wdata_2_pd_isCall = io_in_bits_pd_2_isCall; // @[Ibuffer.scala 159:53 64:12]
  assign ibuf_io_wdata_2_pd_isRet = io_in_bits_pd_2_isRet; // @[Ibuffer.scala 159:53 64:12]
  assign ibuf_io_wdata_2_pred_taken = io_in_bits_ftqOffset_2_valid; // @[Ibuffer.scala 159:53 65:16]
  assign ibuf_io_wdata_2_ftqPtr_flag = io_in_bits_ftqPtr_flag; // @[Ibuffer.scala 159:53 66:12]
  assign ibuf_io_wdata_2_ftqPtr_value = io_in_bits_ftqPtr_value; // @[Ibuffer.scala 159:53 66:12]
  assign ibuf_io_wdata_2_ipf = io_in_bits_ipf_2; // @[Ibuffer.scala 159:53 68:9]
  assign ibuf_io_wdata_2_acf = io_in_bits_acf_2; // @[Ibuffer.scala 159:53 69:9]
  assign ibuf_io_wdata_2_crossPageIPFFix = io_in_bits_crossPageIPFFix_2; // @[Ibuffer.scala 159:53 70:21]
  assign ibuf_io_wdata_2_triggered_frontendHit_0 = io_in_bits_triggered_2_frontendHit_0; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_2_triggered_frontendHit_1 = io_in_bits_triggered_2_frontendHit_1; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_2_triggered_frontendHit_2 = io_in_bits_triggered_2_frontendHit_2; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_2_triggered_frontendHit_3 = io_in_bits_triggered_2_frontendHit_3; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_2_triggered_backendEn_0 = io_in_bits_triggered_2_backendEn_0; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_2_triggered_backendEn_1 = io_in_bits_triggered_2_backendEn_1; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_3_inst = io_in_bits_instrs_3; // @[Ibuffer.scala 159:53 61:12]
  assign ibuf_io_wdata_3_foldpc = io_in_bits_foldpc_3; // @[Ibuffer.scala 159:53 63:12]
  assign ibuf_io_wdata_3_pd_isRVC = io_in_bits_pd_3_isRVC; // @[Ibuffer.scala 159:53 64:12]
  assign ibuf_io_wdata_3_pd_brType = io_in_bits_pd_3_brType; // @[Ibuffer.scala 159:53 64:12]
  assign ibuf_io_wdata_3_pd_isCall = io_in_bits_pd_3_isCall; // @[Ibuffer.scala 159:53 64:12]
  assign ibuf_io_wdata_3_pd_isRet = io_in_bits_pd_3_isRet; // @[Ibuffer.scala 159:53 64:12]
  assign ibuf_io_wdata_3_pred_taken = io_in_bits_ftqOffset_3_valid; // @[Ibuffer.scala 159:53 65:16]
  assign ibuf_io_wdata_3_ftqPtr_flag = io_in_bits_ftqPtr_flag; // @[Ibuffer.scala 159:53 66:12]
  assign ibuf_io_wdata_3_ftqPtr_value = io_in_bits_ftqPtr_value; // @[Ibuffer.scala 159:53 66:12]
  assign ibuf_io_wdata_3_ipf = io_in_bits_ipf_3; // @[Ibuffer.scala 159:53 68:9]
  assign ibuf_io_wdata_3_acf = io_in_bits_acf_3; // @[Ibuffer.scala 159:53 69:9]
  assign ibuf_io_wdata_3_crossPageIPFFix = io_in_bits_crossPageIPFFix_3; // @[Ibuffer.scala 159:53 70:21]
  assign ibuf_io_wdata_3_triggered_frontendHit_0 = io_in_bits_triggered_3_frontendHit_0; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_3_triggered_frontendHit_1 = io_in_bits_triggered_3_frontendHit_1; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_3_triggered_frontendHit_2 = io_in_bits_triggered_3_frontendHit_2; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_3_triggered_frontendHit_3 = io_in_bits_triggered_3_frontendHit_3; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_3_triggered_backendEn_0 = io_in_bits_triggered_3_backendEn_0; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_3_triggered_backendEn_1 = io_in_bits_triggered_3_backendEn_1; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_4_inst = io_in_bits_instrs_4; // @[Ibuffer.scala 159:53 61:12]
  assign ibuf_io_wdata_4_foldpc = io_in_bits_foldpc_4; // @[Ibuffer.scala 159:53 63:12]
  assign ibuf_io_wdata_4_pd_isRVC = io_in_bits_pd_4_isRVC; // @[Ibuffer.scala 159:53 64:12]
  assign ibuf_io_wdata_4_pd_brType = io_in_bits_pd_4_brType; // @[Ibuffer.scala 159:53 64:12]
  assign ibuf_io_wdata_4_pd_isCall = io_in_bits_pd_4_isCall; // @[Ibuffer.scala 159:53 64:12]
  assign ibuf_io_wdata_4_pd_isRet = io_in_bits_pd_4_isRet; // @[Ibuffer.scala 159:53 64:12]
  assign ibuf_io_wdata_4_pred_taken = io_in_bits_ftqOffset_4_valid; // @[Ibuffer.scala 159:53 65:16]
  assign ibuf_io_wdata_4_ftqPtr_flag = io_in_bits_ftqPtr_flag; // @[Ibuffer.scala 159:53 66:12]
  assign ibuf_io_wdata_4_ftqPtr_value = io_in_bits_ftqPtr_value; // @[Ibuffer.scala 159:53 66:12]
  assign ibuf_io_wdata_4_ipf = io_in_bits_ipf_4; // @[Ibuffer.scala 159:53 68:9]
  assign ibuf_io_wdata_4_acf = io_in_bits_acf_4; // @[Ibuffer.scala 159:53 69:9]
  assign ibuf_io_wdata_4_crossPageIPFFix = io_in_bits_crossPageIPFFix_4; // @[Ibuffer.scala 159:53 70:21]
  assign ibuf_io_wdata_4_triggered_frontendHit_0 = io_in_bits_triggered_4_frontendHit_0; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_4_triggered_frontendHit_1 = io_in_bits_triggered_4_frontendHit_1; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_4_triggered_frontendHit_2 = io_in_bits_triggered_4_frontendHit_2; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_4_triggered_frontendHit_3 = io_in_bits_triggered_4_frontendHit_3; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_4_triggered_backendEn_0 = io_in_bits_triggered_4_backendEn_0; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_4_triggered_backendEn_1 = io_in_bits_triggered_4_backendEn_1; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_5_inst = io_in_bits_instrs_5; // @[Ibuffer.scala 159:53 61:12]
  assign ibuf_io_wdata_5_foldpc = io_in_bits_foldpc_5; // @[Ibuffer.scala 159:53 63:12]
  assign ibuf_io_wdata_5_pd_isRVC = io_in_bits_pd_5_isRVC; // @[Ibuffer.scala 159:53 64:12]
  assign ibuf_io_wdata_5_pd_brType = io_in_bits_pd_5_brType; // @[Ibuffer.scala 159:53 64:12]
  assign ibuf_io_wdata_5_pd_isCall = io_in_bits_pd_5_isCall; // @[Ibuffer.scala 159:53 64:12]
  assign ibuf_io_wdata_5_pd_isRet = io_in_bits_pd_5_isRet; // @[Ibuffer.scala 159:53 64:12]
  assign ibuf_io_wdata_5_pred_taken = io_in_bits_ftqOffset_5_valid; // @[Ibuffer.scala 159:53 65:16]
  assign ibuf_io_wdata_5_ftqPtr_flag = io_in_bits_ftqPtr_flag; // @[Ibuffer.scala 159:53 66:12]
  assign ibuf_io_wdata_5_ftqPtr_value = io_in_bits_ftqPtr_value; // @[Ibuffer.scala 159:53 66:12]
  assign ibuf_io_wdata_5_ipf = io_in_bits_ipf_5; // @[Ibuffer.scala 159:53 68:9]
  assign ibuf_io_wdata_5_acf = io_in_bits_acf_5; // @[Ibuffer.scala 159:53 69:9]
  assign ibuf_io_wdata_5_crossPageIPFFix = io_in_bits_crossPageIPFFix_5; // @[Ibuffer.scala 159:53 70:21]
  assign ibuf_io_wdata_5_triggered_frontendHit_0 = io_in_bits_triggered_5_frontendHit_0; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_5_triggered_frontendHit_1 = io_in_bits_triggered_5_frontendHit_1; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_5_triggered_frontendHit_2 = io_in_bits_triggered_5_frontendHit_2; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_5_triggered_frontendHit_3 = io_in_bits_triggered_5_frontendHit_3; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_5_triggered_backendEn_0 = io_in_bits_triggered_5_backendEn_0; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_5_triggered_backendEn_1 = io_in_bits_triggered_5_backendEn_1; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_6_inst = io_in_bits_instrs_6; // @[Ibuffer.scala 159:53 61:12]
  assign ibuf_io_wdata_6_foldpc = io_in_bits_foldpc_6; // @[Ibuffer.scala 159:53 63:12]
  assign ibuf_io_wdata_6_pd_isRVC = io_in_bits_pd_6_isRVC; // @[Ibuffer.scala 159:53 64:12]
  assign ibuf_io_wdata_6_pd_brType = io_in_bits_pd_6_brType; // @[Ibuffer.scala 159:53 64:12]
  assign ibuf_io_wdata_6_pd_isCall = io_in_bits_pd_6_isCall; // @[Ibuffer.scala 159:53 64:12]
  assign ibuf_io_wdata_6_pd_isRet = io_in_bits_pd_6_isRet; // @[Ibuffer.scala 159:53 64:12]
  assign ibuf_io_wdata_6_pred_taken = io_in_bits_ftqOffset_6_valid; // @[Ibuffer.scala 159:53 65:16]
  assign ibuf_io_wdata_6_ftqPtr_flag = io_in_bits_ftqPtr_flag; // @[Ibuffer.scala 159:53 66:12]
  assign ibuf_io_wdata_6_ftqPtr_value = io_in_bits_ftqPtr_value; // @[Ibuffer.scala 159:53 66:12]
  assign ibuf_io_wdata_6_ipf = io_in_bits_ipf_6; // @[Ibuffer.scala 159:53 68:9]
  assign ibuf_io_wdata_6_acf = io_in_bits_acf_6; // @[Ibuffer.scala 159:53 69:9]
  assign ibuf_io_wdata_6_crossPageIPFFix = io_in_bits_crossPageIPFFix_6; // @[Ibuffer.scala 159:53 70:21]
  assign ibuf_io_wdata_6_triggered_frontendHit_0 = io_in_bits_triggered_6_frontendHit_0; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_6_triggered_frontendHit_1 = io_in_bits_triggered_6_frontendHit_1; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_6_triggered_frontendHit_2 = io_in_bits_triggered_6_frontendHit_2; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_6_triggered_frontendHit_3 = io_in_bits_triggered_6_frontendHit_3; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_6_triggered_backendEn_0 = io_in_bits_triggered_6_backendEn_0; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_6_triggered_backendEn_1 = io_in_bits_triggered_6_backendEn_1; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_7_inst = io_in_bits_instrs_7; // @[Ibuffer.scala 159:53 61:12]
  assign ibuf_io_wdata_7_foldpc = io_in_bits_foldpc_7; // @[Ibuffer.scala 159:53 63:12]
  assign ibuf_io_wdata_7_pd_isRVC = io_in_bits_pd_7_isRVC; // @[Ibuffer.scala 159:53 64:12]
  assign ibuf_io_wdata_7_pd_brType = io_in_bits_pd_7_brType; // @[Ibuffer.scala 159:53 64:12]
  assign ibuf_io_wdata_7_pd_isCall = io_in_bits_pd_7_isCall; // @[Ibuffer.scala 159:53 64:12]
  assign ibuf_io_wdata_7_pd_isRet = io_in_bits_pd_7_isRet; // @[Ibuffer.scala 159:53 64:12]
  assign ibuf_io_wdata_7_pred_taken = io_in_bits_ftqOffset_7_valid; // @[Ibuffer.scala 159:53 65:16]
  assign ibuf_io_wdata_7_ftqPtr_flag = io_in_bits_ftqPtr_flag; // @[Ibuffer.scala 159:53 66:12]
  assign ibuf_io_wdata_7_ftqPtr_value = io_in_bits_ftqPtr_value; // @[Ibuffer.scala 159:53 66:12]
  assign ibuf_io_wdata_7_ipf = io_in_bits_ipf_7; // @[Ibuffer.scala 159:53 68:9]
  assign ibuf_io_wdata_7_acf = io_in_bits_acf_7; // @[Ibuffer.scala 159:53 69:9]
  assign ibuf_io_wdata_7_crossPageIPFFix = io_in_bits_crossPageIPFFix_7; // @[Ibuffer.scala 159:53 70:21]
  assign ibuf_io_wdata_7_triggered_frontendHit_0 = io_in_bits_triggered_7_frontendHit_0; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_7_triggered_frontendHit_1 = io_in_bits_triggered_7_frontendHit_1; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_7_triggered_frontendHit_2 = io_in_bits_triggered_7_frontendHit_2; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_7_triggered_frontendHit_3 = io_in_bits_triggered_7_frontendHit_3; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_7_triggered_backendEn_0 = io_in_bits_triggered_7_backendEn_0; // @[Ibuffer.scala 159:53 71:15]
  assign ibuf_io_wdata_7_triggered_backendEn_1 = io_in_bits_triggered_7_backendEn_1; // @[Ibuffer.scala 159:53 71:15]
  always @(posedge clock) begin
    if (deqEnable_n_0) begin // @[ParallelMux.scala 90:77]
      if (enqBypassEn) begin // @[Ibuffer.scala 221:27]
        deqData_0_inst <= enqBypassData_inst;
      end
    end else if (deqEnable_n_1) begin // @[ParallelMux.scala 90:77]
      if (enqBypassEn_1) begin // @[Ibuffer.scala 221:27]
        deqData_0_inst <= enqBypassData_1_inst;
      end else begin
        deqData_0_inst <= deqData_1_inst;
      end
    end else if (enqBypassEn_2) begin // @[Ibuffer.scala 221:27]
      deqData_0_inst <= enqBypassData_2_inst;
    end else begin
      deqData_0_inst <= ibuf_io_rdata_2_inst;
    end
    if (deqEnable_n_0) begin // @[ParallelMux.scala 90:77]
      if (enqBypassEn) begin // @[Ibuffer.scala 221:27]
        deqData_0_foldpc <= enqBypassData_foldpc;
      end
    end else if (deqEnable_n_1) begin // @[ParallelMux.scala 90:77]
      if (enqBypassEn_1) begin // @[Ibuffer.scala 221:27]
        deqData_0_foldpc <= enqBypassData_1_foldpc;
      end else begin
        deqData_0_foldpc <= deqData_1_foldpc;
      end
    end else if (enqBypassEn_2) begin // @[Ibuffer.scala 221:27]
      deqData_0_foldpc <= enqBypassData_2_foldpc;
    end else begin
      deqData_0_foldpc <= ibuf_io_rdata_2_foldpc;
    end
    if (deqEnable_n_0) begin // @[ParallelMux.scala 90:77]
      if (enqBypassEn) begin // @[Ibuffer.scala 221:27]
        deqData_0_ipf <= enqBypassData_ipf;
      end
    end else if (deqEnable_n_1) begin // @[ParallelMux.scala 90:77]
      if (enqBypassEn_1) begin // @[Ibuffer.scala 221:27]
        deqData_0_ipf <= enqBypassData_1_ipf;
      end else begin
        deqData_0_ipf <= deqData_1_ipf;
      end
    end else if (enqBypassEn_2) begin // @[Ibuffer.scala 221:27]
      deqData_0_ipf <= enqBypassData_2_ipf;
    end else begin
      deqData_0_ipf <= ibuf_io_rdata_2_ipf;
    end
    if (deqEnable_n_0) begin // @[ParallelMux.scala 90:77]
      if (enqBypassEn) begin // @[Ibuffer.scala 221:27]
        deqData_0_acf <= enqBypassData_acf;
      end
    end else if (deqEnable_n_1) begin // @[ParallelMux.scala 90:77]
      if (enqBypassEn_1) begin // @[Ibuffer.scala 221:27]
        deqData_0_acf <= enqBypassData_1_acf;
      end else begin
        deqData_0_acf <= deqData_1_acf;
      end
    end else if (enqBypassEn_2) begin // @[Ibuffer.scala 221:27]
      deqData_0_acf <= enqBypassData_2_acf;
    end else begin
      deqData_0_acf <= ibuf_io_rdata_2_acf;
    end
    if (deqEnable_n_0) begin // @[ParallelMux.scala 90:77]
      if (enqBypassEn_1) begin // @[Ibuffer.scala 221:27]
        deqData_1_inst <= enqBypassData_1_inst;
      end
    end else if (deqEnable_n_1) begin // @[ParallelMux.scala 90:77]
      if (enqBypassEn_2) begin // @[Ibuffer.scala 221:27]
        deqData_1_inst <= enqBypassData_2_inst;
      end else begin
        deqData_1_inst <= ibuf_io_rdata_2_inst;
      end
    end else if (enqBypassEn_3) begin // @[Ibuffer.scala 221:27]
      deqData_1_inst <= enqBypassData_3_inst;
    end else begin
      deqData_1_inst <= ibuf_io_rdata_3_inst;
    end
    if (deqEnable_n_0) begin // @[ParallelMux.scala 90:77]
      if (enqBypassEn_1) begin // @[Ibuffer.scala 221:27]
        deqData_1_foldpc <= enqBypassData_1_foldpc;
      end
    end else if (deqEnable_n_1) begin // @[ParallelMux.scala 90:77]
      if (enqBypassEn_2) begin // @[Ibuffer.scala 221:27]
        deqData_1_foldpc <= enqBypassData_2_foldpc;
      end else begin
        deqData_1_foldpc <= ibuf_io_rdata_2_foldpc;
      end
    end else if (enqBypassEn_3) begin // @[Ibuffer.scala 221:27]
      deqData_1_foldpc <= enqBypassData_3_foldpc;
    end else begin
      deqData_1_foldpc <= ibuf_io_rdata_3_foldpc;
    end
    if (deqEnable_n_0) begin // @[ParallelMux.scala 90:77]
      if (enqBypassEn_1) begin // @[Ibuffer.scala 221:27]
        deqData_1_ipf <= enqBypassData_1_ipf;
      end
    end else if (deqEnable_n_1) begin // @[ParallelMux.scala 90:77]
      if (enqBypassEn_2) begin // @[Ibuffer.scala 221:27]
        deqData_1_ipf <= enqBypassData_2_ipf;
      end else begin
        deqData_1_ipf <= ibuf_io_rdata_2_ipf;
      end
    end else if (enqBypassEn_3) begin // @[Ibuffer.scala 221:27]
      deqData_1_ipf <= enqBypassData_3_ipf;
    end else begin
      deqData_1_ipf <= ibuf_io_rdata_3_ipf;
    end
    if (deqEnable_n_0) begin // @[ParallelMux.scala 90:77]
      if (enqBypassEn_1) begin // @[Ibuffer.scala 221:27]
        deqData_1_acf <= enqBypassData_1_acf;
      end
    end else if (deqEnable_n_1) begin // @[ParallelMux.scala 90:77]
      if (enqBypassEn_2) begin // @[Ibuffer.scala 221:27]
        deqData_1_acf <= enqBypassData_2_acf;
      end else begin
        deqData_1_acf <= ibuf_io_rdata_2_acf;
      end
    end else if (enqBypassEn_3) begin // @[Ibuffer.scala 221:27]
      deqData_1_acf <= enqBypassData_3_acf;
    end else begin
      deqData_1_acf <= ibuf_io_rdata_3_acf;
    end
    io_perf_0_value_REG <= io_flush; // @[PerfCounterUtils.scala 295:35]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_1_value_REG <= afterInit & validEntries == 5'h0 & ~headBubble; // @[Ibuffer.scala 267:57]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_2_value_REG <= validEntries > 5'h0 & validEntries < 5'h4; // @[Ibuffer.scala 296:64]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_3_value_REG <= validEntries >= 5'h4 & validEntries < 5'h8; // @[Ibuffer.scala 297:64]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_4_value_REG <= validEntries >= 5'h8 & validEntries < 5'hc; // @[Ibuffer.scala 298:64]
    io_perf_4_value_REG_1 <= io_perf_4_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_5_value_REG <= validEntries >= 5'hc & validEntries < 5'h10; // @[Ibuffer.scala 299:64]
    io_perf_5_value_REG_1 <= io_perf_5_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_6_value_REG <= &validEntries; // @[Ibuffer.scala 300:41]
    io_perf_6_value_REG_1 <= io_perf_6_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_7_value_REG <= _T_217 + _T_219; // @[Bitwise.scala 48:55]
    io_perf_7_value_REG_1 <= io_perf_7_value_REG; // @[PerfCounterUtils.scala 295:27]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 102:30]
      topdown_stage_reasons_0 <= 1'h0; // @[Ibuffer.scala 102:30]
    end else begin
      topdown_stage_reasons_0 <= io_in_bits_topdown_info_reasons_0; // @[Ibuffer.scala 104:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 102:30]
      topdown_stage_reasons_1 <= 1'h0; // @[Ibuffer.scala 102:30]
    end else begin
      topdown_stage_reasons_1 <= io_in_bits_topdown_info_reasons_1; // @[Ibuffer.scala 104:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 102:30]
      topdown_stage_reasons_2 <= 1'h0; // @[Ibuffer.scala 102:30]
    end else begin
      topdown_stage_reasons_2 <= io_in_bits_topdown_info_reasons_2; // @[Ibuffer.scala 104:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 105:19]
      topdown_stage_reasons_3 <= 1'h0; // @[Ibuffer.scala 104:{17,17} 106:31 107:38]
    end else if (io_flush) begin // @[Ibuffer.scala 104:17]
      if (io_ControlRedirect) begin
        if (io_ControlBTBMissBubble) begin
          topdown_stage_reasons_3 <= io_in_bits_topdown_info_reasons_3;
        end else begin
          topdown_stage_reasons_3 <= _GEN_6;
        end
      end else begin
        topdown_stage_reasons_3 <= io_in_bits_topdown_info_reasons_3;
      end
    end else begin
      topdown_stage_reasons_3 <= io_in_bits_topdown_info_reasons_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 105:19]
      topdown_stage_reasons_4 <= 1'h0; // @[Ibuffer.scala 104:{17,17,17} 106:31 107:38 109:39]
    end else if (io_flush) begin // @[Ibuffer.scala 104:17]
      if (io_ControlRedirect) begin
        if (io_ControlBTBMissBubble) begin
          topdown_stage_reasons_4 <= io_in_bits_topdown_info_reasons_4;
        end else if (io_TAGEMissBubble) begin
          topdown_stage_reasons_4 <= io_in_bits_topdown_info_reasons_4;
        end else begin
          topdown_stage_reasons_4 <= _GEN_3;
        end
      end else begin
        topdown_stage_reasons_4 <= io_in_bits_topdown_info_reasons_4;
      end
    end else begin
      topdown_stage_reasons_4 <= io_in_bits_topdown_info_reasons_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 105:19]
      topdown_stage_reasons_5 <= 1'h0; // @[Ibuffer.scala 104:{17,17,17} 106:31 107:38 109:39]
    end else if (io_flush) begin // @[Ibuffer.scala 104:17]
      if (io_ControlRedirect) begin
        if (io_ControlBTBMissBubble) begin
          topdown_stage_reasons_5 <= io_in_bits_topdown_info_reasons_5;
        end else if (io_TAGEMissBubble) begin
          topdown_stage_reasons_5 <= io_in_bits_topdown_info_reasons_5;
        end else begin
          topdown_stage_reasons_5 <= _GEN_4;
        end
      end else begin
        topdown_stage_reasons_5 <= io_in_bits_topdown_info_reasons_5;
      end
    end else begin
      topdown_stage_reasons_5 <= io_in_bits_topdown_info_reasons_5;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 105:19]
      topdown_stage_reasons_6 <= 1'h0; // @[Ibuffer.scala 104:{17,17,17} 106:31 107:38 109:39]
    end else if (io_flush) begin // @[Ibuffer.scala 104:17]
      if (io_ControlRedirect) begin
        if (io_ControlBTBMissBubble) begin
          topdown_stage_reasons_6 <= io_in_bits_topdown_info_reasons_6;
        end else if (io_TAGEMissBubble) begin
          topdown_stage_reasons_6 <= io_in_bits_topdown_info_reasons_6;
        end else begin
          topdown_stage_reasons_6 <= _GEN_5;
        end
      end else begin
        topdown_stage_reasons_6 <= io_in_bits_topdown_info_reasons_6;
      end
    end else begin
      topdown_stage_reasons_6 <= io_in_bits_topdown_info_reasons_6;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 105:19]
      topdown_stage_reasons_7 <= 1'h0; // @[Ibuffer.scala 104:17 106:31]
    end else if (io_flush) begin // @[Ibuffer.scala 104:17]
      if (io_ControlRedirect) begin
        topdown_stage_reasons_7 <= io_in_bits_topdown_info_reasons_7;
      end else begin
        topdown_stage_reasons_7 <= _GEN_15;
      end
    end else begin
      topdown_stage_reasons_7 <= io_in_bits_topdown_info_reasons_7;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 105:19]
      topdown_stage_reasons_8 <= 1'h0; // @[Ibuffer.scala 104:{17,17} 106:31 118:37 121:69]
    end else if (io_flush) begin // @[Ibuffer.scala 104:17]
      if (io_ControlRedirect) begin
        topdown_stage_reasons_8 <= io_in_bits_topdown_info_reasons_8;
      end else if (io_MemVioRedirect) begin
        topdown_stage_reasons_8 <= io_in_bits_topdown_info_reasons_8;
      end else begin
        topdown_stage_reasons_8 <= 1'h1;
      end
    end else begin
      topdown_stage_reasons_8 <= io_in_bits_topdown_info_reasons_8;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 102:30]
      topdown_stage_reasons_9 <= 1'h0; // @[Ibuffer.scala 102:30]
    end else begin
      topdown_stage_reasons_9 <= io_in_bits_topdown_info_reasons_9; // @[Ibuffer.scala 104:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 102:30]
      topdown_stage_reasons_10 <= 1'h0; // @[Ibuffer.scala 102:30]
    end else begin
      topdown_stage_reasons_10 <= io_in_bits_topdown_info_reasons_10; // @[Ibuffer.scala 104:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 102:30]
      topdown_stage_reasons_11 <= 1'h0; // @[Ibuffer.scala 102:30]
    end else begin
      topdown_stage_reasons_11 <= io_in_bits_topdown_info_reasons_11; // @[Ibuffer.scala 104:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 105:19]
      topdown_stage_reasons_12 <= 1'h0; // @[Ibuffer.scala 104:17 106:31]
    end else if (io_flush) begin // @[Ibuffer.scala 104:17]
      if (io_ControlRedirect) begin
        topdown_stage_reasons_12 <= _GEN_10;
      end else begin
        topdown_stage_reasons_12 <= io_in_bits_topdown_info_reasons_12;
      end
    end else begin
      topdown_stage_reasons_12 <= io_in_bits_topdown_info_reasons_12;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 102:30]
      topdown_stage_reasons_13 <= 1'h0; // @[Ibuffer.scala 102:30]
    end else begin
      topdown_stage_reasons_13 <= io_in_bits_topdown_info_reasons_13; // @[Ibuffer.scala 104:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 102:30]
      topdown_stage_reasons_14 <= 1'h0; // @[Ibuffer.scala 102:30]
    end else begin
      topdown_stage_reasons_14 <= io_in_bits_topdown_info_reasons_14; // @[Ibuffer.scala 104:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 102:30]
      topdown_stage_reasons_15 <= 1'h0; // @[Ibuffer.scala 102:30]
    end else begin
      topdown_stage_reasons_15 <= io_in_bits_topdown_info_reasons_15; // @[Ibuffer.scala 104:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 102:30]
      topdown_stage_reasons_16 <= 1'h0; // @[Ibuffer.scala 102:30]
    end else begin
      topdown_stage_reasons_16 <= io_in_bits_topdown_info_reasons_16; // @[Ibuffer.scala 104:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 102:30]
      topdown_stage_reasons_17 <= 1'h0; // @[Ibuffer.scala 102:30]
    end else begin
      topdown_stage_reasons_17 <= io_in_bits_topdown_info_reasons_17; // @[Ibuffer.scala 104:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 102:30]
      topdown_stage_reasons_18 <= 1'h0; // @[Ibuffer.scala 102:30]
    end else begin
      topdown_stage_reasons_18 <= io_in_bits_topdown_info_reasons_18; // @[Ibuffer.scala 104:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 102:30]
      topdown_stage_reasons_19 <= 1'h0; // @[Ibuffer.scala 102:30]
    end else begin
      topdown_stage_reasons_19 <= io_in_bits_topdown_info_reasons_19; // @[Ibuffer.scala 104:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 102:30]
      topdown_stage_reasons_20 <= 1'h0; // @[Ibuffer.scala 102:30]
    end else begin
      topdown_stage_reasons_20 <= io_in_bits_topdown_info_reasons_20; // @[Ibuffer.scala 104:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 102:30]
      topdown_stage_reasons_21 <= 1'h0; // @[Ibuffer.scala 102:30]
    end else begin
      topdown_stage_reasons_21 <= io_in_bits_topdown_info_reasons_21; // @[Ibuffer.scala 104:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 102:30]
      topdown_stage_reasons_22 <= 1'h0; // @[Ibuffer.scala 102:30]
    end else begin
      topdown_stage_reasons_22 <= io_in_bits_topdown_info_reasons_22; // @[Ibuffer.scala 104:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 102:30]
      topdown_stage_reasons_23 <= 1'h0; // @[Ibuffer.scala 102:30]
    end else begin
      topdown_stage_reasons_23 <= io_in_bits_topdown_info_reasons_23; // @[Ibuffer.scala 104:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 102:30]
      topdown_stage_reasons_24 <= 1'h0; // @[Ibuffer.scala 102:30]
    end else begin
      topdown_stage_reasons_24 <= io_in_bits_topdown_info_reasons_24; // @[Ibuffer.scala 104:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 102:30]
      topdown_stage_reasons_25 <= 1'h0; // @[Ibuffer.scala 102:30]
    end else begin
      topdown_stage_reasons_25 <= io_in_bits_topdown_info_reasons_25; // @[Ibuffer.scala 104:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 102:30]
      topdown_stage_reasons_26 <= 1'h0; // @[Ibuffer.scala 102:30]
    end else begin
      topdown_stage_reasons_26 <= io_in_bits_topdown_info_reasons_26; // @[Ibuffer.scala 104:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 102:30]
      topdown_stage_reasons_27 <= 1'h0; // @[Ibuffer.scala 102:30]
    end else begin
      topdown_stage_reasons_27 <= io_in_bits_topdown_info_reasons_27; // @[Ibuffer.scala 104:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 102:30]
      topdown_stage_reasons_28 <= 1'h0; // @[Ibuffer.scala 102:30]
    end else begin
      topdown_stage_reasons_28 <= io_in_bits_topdown_info_reasons_28; // @[Ibuffer.scala 104:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 102:30]
      topdown_stage_reasons_29 <= 1'h0; // @[Ibuffer.scala 102:30]
    end else begin
      topdown_stage_reasons_29 <= io_in_bits_topdown_info_reasons_29; // @[Ibuffer.scala 104:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 102:30]
      topdown_stage_reasons_30 <= 1'h0; // @[Ibuffer.scala 102:30]
    end else begin
      topdown_stage_reasons_30 <= io_in_bits_topdown_info_reasons_30; // @[Ibuffer.scala 104:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 102:30]
      topdown_stage_reasons_31 <= 1'h0; // @[Ibuffer.scala 102:30]
    end else begin
      topdown_stage_reasons_31 <= io_in_bits_topdown_info_reasons_31; // @[Ibuffer.scala 104:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 102:30]
      topdown_stage_reasons_32 <= 1'h0; // @[Ibuffer.scala 102:30]
    end else begin
      topdown_stage_reasons_32 <= io_in_bits_topdown_info_reasons_32; // @[Ibuffer.scala 104:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 102:30]
      topdown_stage_reasons_33 <= 1'h0; // @[Ibuffer.scala 102:30]
    end else begin
      topdown_stage_reasons_33 <= io_in_bits_topdown_info_reasons_33; // @[Ibuffer.scala 104:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 102:30]
      topdown_stage_reasons_34 <= 1'h0; // @[Ibuffer.scala 102:30]
    end else begin
      topdown_stage_reasons_34 <= io_in_bits_topdown_info_reasons_34; // @[Ibuffer.scala 104:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 102:30]
      topdown_stage_reasons_35 <= 1'h0; // @[Ibuffer.scala 102:30]
    end else begin
      topdown_stage_reasons_35 <= io_in_bits_topdown_info_reasons_35; // @[Ibuffer.scala 104:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 102:30]
      topdown_stage_reasons_36 <= 1'h0; // @[Ibuffer.scala 102:30]
    end else begin
      topdown_stage_reasons_36 <= io_in_bits_topdown_info_reasons_36; // @[Ibuffer.scala 104:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 102:30]
      topdown_stage_stallWidth <= 3'h0; // @[Ibuffer.scala 102:30]
    end else begin
      topdown_stage_stallWidth <= io_in_bits_topdown_info_stallWidth; // @[Ibuffer.scala 104:17]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 230:19]
      deqPtrVec_0_flag <= 1'h0; // @[Ibuffer.scala 232:15]
    end else if (io_flush) begin // @[Ibuffer.scala 149:23]
      deqPtrVec_0_flag <= 1'h0;
    end else if (io_out_0_ready) begin
      deqPtrVec_0_flag <= new_ptr_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 230:19]
      deqPtrVec_0_value <= 4'h0; // @[Ibuffer.scala 232:15]
    end else if (io_flush) begin // @[Ibuffer.scala 149:23]
      deqPtrVec_0_value <= 4'h0;
    end else if (io_out_0_ready) begin
      deqPtrVec_0_value <= new_ptr_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 230:19]
      deqPtrVec_1_flag <= 1'h0; // @[Ibuffer.scala 232:15]
    end else if (io_flush) begin // @[Ibuffer.scala 149:23]
      deqPtrVec_1_flag <= 1'h0;
    end else if (io_out_0_ready) begin
      deqPtrVec_1_flag <= new_ptr_1_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 230:19]
      deqPtrVec_1_value <= 4'h1; // @[Ibuffer.scala 232:15]
    end else if (io_flush) begin // @[Ibuffer.scala 149:23]
      deqPtrVec_1_value <= 4'h1;
    end else if (io_out_0_ready) begin
      deqPtrVec_1_value <= new_ptr_1_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 230:19]
      deqPtrVec_2_flag <= 1'h0; // @[Ibuffer.scala 232:15]
    end else if (io_flush) begin // @[Ibuffer.scala 149:23]
      deqPtrVec_2_flag <= 1'h0;
    end else if (io_out_0_ready) begin
      deqPtrVec_2_flag <= new_ptr_2_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 230:19]
      deqPtrVec_2_value <= 4'h2; // @[Ibuffer.scala 232:15]
    end else if (io_flush) begin // @[Ibuffer.scala 149:23]
      deqPtrVec_2_value <= 4'h2;
    end else if (io_out_0_ready) begin
      deqPtrVec_2_value <= new_ptr_2_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 230:19]
      deqPtrVec_3_flag <= 1'h0; // @[Ibuffer.scala 232:15]
    end else if (io_flush) begin // @[Ibuffer.scala 149:23]
      deqPtrVec_3_flag <= 1'h0;
    end else if (io_out_0_ready) begin
      deqPtrVec_3_flag <= new_ptr_3_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 230:19]
      deqPtrVec_3_value <= 4'h3; // @[Ibuffer.scala 232:15]
    end else if (io_flush) begin // @[Ibuffer.scala 149:23]
      deqPtrVec_3_value <= 4'h3;
    end else if (io_out_0_ready) begin
      deqPtrVec_3_value <= new_ptr_3_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 230:19]
      enqPtrVec_0_flag <= 1'h0; // @[Ibuffer.scala 233:15]
    end else if (io_flush) begin // @[Ibuffer.scala 166:34]
      enqPtrVec_0_flag <= 1'h0; // @[Ibuffer.scala 167:15]
    end else if (_numEnq_T & _ibuf_io_wen_0_T_3) begin // @[Ibuffer.scala 140:26]
      enqPtrVec_0_flag <= new_ptr_4_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 230:19]
      enqPtrVec_0_value <= 4'h0; // @[Ibuffer.scala 233:15]
    end else if (io_flush) begin // @[Ibuffer.scala 166:34]
      enqPtrVec_0_value <= 4'h0; // @[Ibuffer.scala 167:15]
    end else if (_numEnq_T & _ibuf_io_wen_0_T_3) begin // @[Ibuffer.scala 140:26]
      enqPtrVec_0_value <= new_ptr_4_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 230:19]
      enqPtrVec_1_flag <= 1'h0; // @[Ibuffer.scala 233:15]
    end else if (io_flush) begin // @[Ibuffer.scala 166:34]
      enqPtrVec_1_flag <= 1'h0; // @[Ibuffer.scala 167:15]
    end else if (_numEnq_T & _ibuf_io_wen_0_T_3) begin // @[Ibuffer.scala 140:26]
      enqPtrVec_1_flag <= new_ptr_5_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 230:19]
      enqPtrVec_1_value <= 4'h1; // @[Ibuffer.scala 233:15]
    end else if (io_flush) begin // @[Ibuffer.scala 166:34]
      enqPtrVec_1_value <= 4'h1; // @[Ibuffer.scala 167:15]
    end else if (_numEnq_T & _ibuf_io_wen_0_T_3) begin // @[Ibuffer.scala 140:26]
      enqPtrVec_1_value <= new_ptr_5_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 230:19]
      enqPtrVec_2_flag <= 1'h0; // @[Ibuffer.scala 233:15]
    end else if (io_flush) begin // @[Ibuffer.scala 166:34]
      enqPtrVec_2_flag <= 1'h0; // @[Ibuffer.scala 167:15]
    end else if (_numEnq_T & _ibuf_io_wen_0_T_3) begin // @[Ibuffer.scala 140:26]
      enqPtrVec_2_flag <= new_ptr_6_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 230:19]
      enqPtrVec_2_value <= 4'h2; // @[Ibuffer.scala 233:15]
    end else if (io_flush) begin // @[Ibuffer.scala 166:34]
      enqPtrVec_2_value <= 4'h2; // @[Ibuffer.scala 167:15]
    end else if (_numEnq_T & _ibuf_io_wen_0_T_3) begin // @[Ibuffer.scala 140:26]
      enqPtrVec_2_value <= new_ptr_6_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 230:19]
      enqPtrVec_3_flag <= 1'h0; // @[Ibuffer.scala 233:15]
    end else if (io_flush) begin // @[Ibuffer.scala 166:34]
      enqPtrVec_3_flag <= 1'h0; // @[Ibuffer.scala 167:15]
    end else if (_numEnq_T & _ibuf_io_wen_0_T_3) begin // @[Ibuffer.scala 140:26]
      enqPtrVec_3_flag <= new_ptr_7_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 230:19]
      enqPtrVec_3_value <= 4'h3; // @[Ibuffer.scala 233:15]
    end else if (io_flush) begin // @[Ibuffer.scala 166:34]
      enqPtrVec_3_value <= 4'h3; // @[Ibuffer.scala 167:15]
    end else if (_numEnq_T & _ibuf_io_wen_0_T_3) begin // @[Ibuffer.scala 140:26]
      enqPtrVec_3_value <= new_ptr_7_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 230:19]
      enqPtrVec_4_flag <= 1'h0; // @[Ibuffer.scala 233:15]
    end else if (io_flush) begin // @[Ibuffer.scala 166:34]
      enqPtrVec_4_flag <= 1'h0; // @[Ibuffer.scala 167:15]
    end else if (_numEnq_T & _ibuf_io_wen_0_T_3) begin // @[Ibuffer.scala 140:26]
      enqPtrVec_4_flag <= new_ptr_8_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 230:19]
      enqPtrVec_4_value <= 4'h4; // @[Ibuffer.scala 233:15]
    end else if (io_flush) begin // @[Ibuffer.scala 166:34]
      enqPtrVec_4_value <= 4'h4; // @[Ibuffer.scala 167:15]
    end else if (_numEnq_T & _ibuf_io_wen_0_T_3) begin // @[Ibuffer.scala 140:26]
      enqPtrVec_4_value <= new_ptr_8_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 230:19]
      enqPtrVec_5_flag <= 1'h0; // @[Ibuffer.scala 233:15]
    end else if (io_flush) begin // @[Ibuffer.scala 166:34]
      enqPtrVec_5_flag <= 1'h0; // @[Ibuffer.scala 167:15]
    end else if (_numEnq_T & _ibuf_io_wen_0_T_3) begin // @[Ibuffer.scala 140:26]
      enqPtrVec_5_flag <= new_ptr_9_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 230:19]
      enqPtrVec_5_value <= 4'h5; // @[Ibuffer.scala 233:15]
    end else if (io_flush) begin // @[Ibuffer.scala 166:34]
      enqPtrVec_5_value <= 4'h5; // @[Ibuffer.scala 167:15]
    end else if (_numEnq_T & _ibuf_io_wen_0_T_3) begin // @[Ibuffer.scala 140:26]
      enqPtrVec_5_value <= new_ptr_9_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 230:19]
      enqPtrVec_6_flag <= 1'h0; // @[Ibuffer.scala 233:15]
    end else if (io_flush) begin // @[Ibuffer.scala 166:34]
      enqPtrVec_6_flag <= 1'h0; // @[Ibuffer.scala 167:15]
    end else if (_numEnq_T & _ibuf_io_wen_0_T_3) begin // @[Ibuffer.scala 140:26]
      enqPtrVec_6_flag <= new_ptr_10_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 230:19]
      enqPtrVec_6_value <= 4'h6; // @[Ibuffer.scala 233:15]
    end else if (io_flush) begin // @[Ibuffer.scala 166:34]
      enqPtrVec_6_value <= 4'h6; // @[Ibuffer.scala 167:15]
    end else if (_numEnq_T & _ibuf_io_wen_0_T_3) begin // @[Ibuffer.scala 140:26]
      enqPtrVec_6_value <= new_ptr_10_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 230:19]
      enqPtrVec_7_flag <= 1'h0; // @[Ibuffer.scala 233:15]
    end else if (io_flush) begin // @[Ibuffer.scala 166:34]
      enqPtrVec_7_flag <= 1'h0; // @[Ibuffer.scala 167:15]
    end else if (_numEnq_T & _ibuf_io_wen_0_T_3) begin // @[Ibuffer.scala 140:26]
      enqPtrVec_7_flag <= new_ptr_11_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 230:19]
      enqPtrVec_7_value <= 4'h7; // @[Ibuffer.scala 233:15]
    end else if (io_flush) begin // @[Ibuffer.scala 166:34]
      enqPtrVec_7_value <= 4'h7; // @[Ibuffer.scala 167:15]
    end else if (_numEnq_T & _ibuf_io_wen_0_T_3) begin // @[Ibuffer.scala 140:26]
      enqPtrVec_7_value <= new_ptr_11_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 230:19]
      allowEnq <= 1'h1; // @[Ibuffer.scala 231:14]
    end else begin
      allowEnq <= io_flush | 6'h8 >= nextValidEntries; // @[Ibuffer.scala 153:12]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 261:21]
      afterInit <= 1'h0; // @[Ibuffer.scala 261:33]
    end else begin
      afterInit <= _numEnq_T | afterInit; // @[Ibuffer.scala 259:26]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Ibuffer.scala 262:19]
      headBubble <= 1'h0; // @[Ibuffer.scala 263:16]
    end else begin
      headBubble <= io_flush | _GEN_361;
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
  topdown_stage_reasons_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  topdown_stage_reasons_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  topdown_stage_reasons_2 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  topdown_stage_reasons_3 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  topdown_stage_reasons_4 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  topdown_stage_reasons_5 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  topdown_stage_reasons_6 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  topdown_stage_reasons_7 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  topdown_stage_reasons_8 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  topdown_stage_reasons_9 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  topdown_stage_reasons_10 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  topdown_stage_reasons_11 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  topdown_stage_reasons_12 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  topdown_stage_reasons_13 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  topdown_stage_reasons_14 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  topdown_stage_reasons_15 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  topdown_stage_reasons_16 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  topdown_stage_reasons_17 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  topdown_stage_reasons_18 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  topdown_stage_reasons_19 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  topdown_stage_reasons_20 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  topdown_stage_reasons_21 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  topdown_stage_reasons_22 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  topdown_stage_reasons_23 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  topdown_stage_reasons_24 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  topdown_stage_reasons_25 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  topdown_stage_reasons_26 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  topdown_stage_reasons_27 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  topdown_stage_reasons_28 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  topdown_stage_reasons_29 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  topdown_stage_reasons_30 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  topdown_stage_reasons_31 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  topdown_stage_reasons_32 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  topdown_stage_reasons_33 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  topdown_stage_reasons_34 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  topdown_stage_reasons_35 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  topdown_stage_reasons_36 = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  topdown_stage_stallWidth = _RAND_37[2:0];
  _RAND_38 = {1{`RANDOM}};
  deqPtrVec_0_flag = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  deqPtrVec_0_value = _RAND_39[3:0];
  _RAND_40 = {1{`RANDOM}};
  deqPtrVec_1_flag = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  deqPtrVec_1_value = _RAND_41[3:0];
  _RAND_42 = {1{`RANDOM}};
  deqPtrVec_2_flag = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  deqPtrVec_2_value = _RAND_43[3:0];
  _RAND_44 = {1{`RANDOM}};
  deqPtrVec_3_flag = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  deqPtrVec_3_value = _RAND_45[3:0];
  _RAND_46 = {1{`RANDOM}};
  enqPtrVec_0_flag = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  enqPtrVec_0_value = _RAND_47[3:0];
  _RAND_48 = {1{`RANDOM}};
  enqPtrVec_1_flag = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  enqPtrVec_1_value = _RAND_49[3:0];
  _RAND_50 = {1{`RANDOM}};
  enqPtrVec_2_flag = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  enqPtrVec_2_value = _RAND_51[3:0];
  _RAND_52 = {1{`RANDOM}};
  enqPtrVec_3_flag = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  enqPtrVec_3_value = _RAND_53[3:0];
  _RAND_54 = {1{`RANDOM}};
  enqPtrVec_4_flag = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  enqPtrVec_4_value = _RAND_55[3:0];
  _RAND_56 = {1{`RANDOM}};
  enqPtrVec_5_flag = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  enqPtrVec_5_value = _RAND_57[3:0];
  _RAND_58 = {1{`RANDOM}};
  enqPtrVec_6_flag = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  enqPtrVec_6_value = _RAND_59[3:0];
  _RAND_60 = {1{`RANDOM}};
  enqPtrVec_7_flag = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  enqPtrVec_7_value = _RAND_61[3:0];
  _RAND_62 = {1{`RANDOM}};
  allowEnq = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  deqData_0_inst = _RAND_63[31:0];
  _RAND_64 = {1{`RANDOM}};
  deqData_0_foldpc = _RAND_64[9:0];
  _RAND_65 = {1{`RANDOM}};
  deqData_0_ipf = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  deqData_0_acf = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  deqData_1_inst = _RAND_67[31:0];
  _RAND_68 = {1{`RANDOM}};
  deqData_1_foldpc = _RAND_68[9:0];
  _RAND_69 = {1{`RANDOM}};
  deqData_1_ipf = _RAND_69[0:0];
  _RAND_70 = {1{`RANDOM}};
  deqData_1_acf = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  afterInit = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  headBubble = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_76[0:0];
  _RAND_77 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_77[0:0];
  _RAND_78 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_79[0:0];
  _RAND_80 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_80[0:0];
  _RAND_81 = {1{`RANDOM}};
  io_perf_4_value_REG = _RAND_81[0:0];
  _RAND_82 = {1{`RANDOM}};
  io_perf_4_value_REG_1 = _RAND_82[0:0];
  _RAND_83 = {1{`RANDOM}};
  io_perf_5_value_REG = _RAND_83[0:0];
  _RAND_84 = {1{`RANDOM}};
  io_perf_5_value_REG_1 = _RAND_84[0:0];
  _RAND_85 = {1{`RANDOM}};
  io_perf_6_value_REG = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  io_perf_6_value_REG_1 = _RAND_86[0:0];
  _RAND_87 = {1{`RANDOM}};
  io_perf_7_value_REG = _RAND_87[1:0];
  _RAND_88 = {1{`RANDOM}};
  io_perf_7_value_REG_1 = _RAND_88[1:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    topdown_stage_reasons_0 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_1 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_2 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_3 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_4 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_5 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_6 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_7 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_8 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_9 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_10 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_11 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_12 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_13 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_14 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_15 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_16 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_17 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_18 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_19 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_20 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_21 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_22 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_23 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_24 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_25 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_26 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_27 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_28 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_29 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_30 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_31 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_32 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_33 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_34 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_35 = 1'h0;
  end
  if (reset) begin
    topdown_stage_reasons_36 = 1'h0;
  end
  if (reset) begin
    topdown_stage_stallWidth = 3'h0;
  end
  if (reset) begin
    deqPtrVec_0_flag = 1'h0;
  end
  if (reset) begin
    deqPtrVec_0_value = 4'h0;
  end
  if (reset) begin
    deqPtrVec_1_flag = 1'h0;
  end
  if (reset) begin
    deqPtrVec_1_value = 4'h1;
  end
  if (reset) begin
    deqPtrVec_2_flag = 1'h0;
  end
  if (reset) begin
    deqPtrVec_2_value = 4'h2;
  end
  if (reset) begin
    deqPtrVec_3_flag = 1'h0;
  end
  if (reset) begin
    deqPtrVec_3_value = 4'h3;
  end
  if (reset) begin
    enqPtrVec_0_flag = 1'h0;
  end
  if (reset) begin
    enqPtrVec_0_value = 4'h0;
  end
  if (reset) begin
    enqPtrVec_1_flag = 1'h0;
  end
  if (reset) begin
    enqPtrVec_1_value = 4'h1;
  end
  if (reset) begin
    enqPtrVec_2_flag = 1'h0;
  end
  if (reset) begin
    enqPtrVec_2_value = 4'h2;
  end
  if (reset) begin
    enqPtrVec_3_flag = 1'h0;
  end
  if (reset) begin
    enqPtrVec_3_value = 4'h3;
  end
  if (reset) begin
    enqPtrVec_4_flag = 1'h0;
  end
  if (reset) begin
    enqPtrVec_4_value = 4'h4;
  end
  if (reset) begin
    enqPtrVec_5_flag = 1'h0;
  end
  if (reset) begin
    enqPtrVec_5_value = 4'h5;
  end
  if (reset) begin
    enqPtrVec_6_flag = 1'h0;
  end
  if (reset) begin
    enqPtrVec_6_value = 4'h6;
  end
  if (reset) begin
    enqPtrVec_7_flag = 1'h0;
  end
  if (reset) begin
    enqPtrVec_7_value = 4'h7;
  end
  if (reset) begin
    allowEnq = 1'h1;
  end
  if (reset) begin
    afterInit = 1'h0;
  end
  if (reset) begin
    headBubble = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

