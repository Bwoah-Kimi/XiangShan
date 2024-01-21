module BankedDataArray(
  input         clock,
  output        io_read_0_ready,
  input         io_read_0_valid,
  input  [7:0]  io_read_0_bits_way_en,
  input  [35:0] io_read_0_bits_addr,
  input  [7:0]  io_read_0_bits_bankMask,
  output        io_read_1_ready,
  input         io_read_1_valid,
  input  [7:0]  io_read_1_bits_way_en,
  input  [35:0] io_read_1_bits_addr,
  input  [7:0]  io_read_1_bits_bankMask,
  input         io_readline_intend,
  output        io_readline_ready,
  input         io_readline_valid,
  input  [7:0]  io_readline_bits_way_en,
  input  [35:0] io_readline_bits_addr,
  input         io_write_valid,
  input  [7:0]  io_write_bits_wmask,
  input  [63:0] io_write_bits_data_0,
  input  [63:0] io_write_bits_data_1,
  input  [63:0] io_write_bits_data_2,
  input  [63:0] io_write_bits_data_3,
  input  [63:0] io_write_bits_data_4,
  input  [63:0] io_write_bits_data_5,
  input  [63:0] io_write_bits_data_6,
  input  [63:0] io_write_bits_data_7,
  input         io_write_dup_0_valid,
  input  [7:0]  io_write_dup_0_bits_way_en,
  input  [35:0] io_write_dup_0_bits_addr,
  input         io_write_dup_1_valid,
  input  [7:0]  io_write_dup_1_bits_way_en,
  input  [35:0] io_write_dup_1_bits_addr,
  input         io_write_dup_2_valid,
  input  [7:0]  io_write_dup_2_bits_way_en,
  input  [35:0] io_write_dup_2_bits_addr,
  input         io_write_dup_3_valid,
  input  [7:0]  io_write_dup_3_bits_way_en,
  input  [35:0] io_write_dup_3_bits_addr,
  input         io_write_dup_4_valid,
  input  [7:0]  io_write_dup_4_bits_way_en,
  input  [35:0] io_write_dup_4_bits_addr,
  input         io_write_dup_5_valid,
  input  [7:0]  io_write_dup_5_bits_way_en,
  input  [35:0] io_write_dup_5_bits_addr,
  input         io_write_dup_6_valid,
  input  [7:0]  io_write_dup_6_bits_way_en,
  input  [35:0] io_write_dup_6_bits_addr,
  input         io_write_dup_7_valid,
  input  [7:0]  io_write_dup_7_bits_way_en,
  input  [35:0] io_write_dup_7_bits_addr,
  output [63:0] io_readline_resp_0_raw_data,
  output        io_readline_resp_0_error_delayed,
  output [63:0] io_readline_resp_1_raw_data,
  output        io_readline_resp_1_error_delayed,
  output [63:0] io_readline_resp_2_raw_data,
  output        io_readline_resp_2_error_delayed,
  output [63:0] io_readline_resp_3_raw_data,
  output        io_readline_resp_3_error_delayed,
  output [63:0] io_readline_resp_4_raw_data,
  output        io_readline_resp_4_error_delayed,
  output [63:0] io_readline_resp_5_raw_data,
  output        io_readline_resp_5_error_delayed,
  output [63:0] io_readline_resp_6_raw_data,
  output        io_readline_resp_6_error_delayed,
  output [63:0] io_readline_resp_7_raw_data,
  output        io_readline_resp_7_error_delayed,
  output        io_readline_error_delayed,
  output [63:0] io_read_resp_delayed_0_0_raw_data,
  output [63:0] io_read_resp_delayed_1_0_raw_data,
  output        io_read_error_delayed_0_0,
  output        io_read_error_delayed_1_0,
  output        io_bank_conflict_slow_0,
  output        io_bank_conflict_slow_1,
  output        io_disable_ld_fast_wakeup_0,
  output        io_disable_ld_fast_wakeup_1,
  input         io_cacheOp_req_valid,
  input  [63:0] io_cacheOp_req_bits_wayNum,
  input  [63:0] io_cacheOp_req_bits_index,
  input  [63:0] io_cacheOp_req_bits_write_data_vec_0,
  input  [63:0] io_cacheOp_req_bits_write_data_vec_1,
  input  [63:0] io_cacheOp_req_bits_write_data_vec_2,
  input  [63:0] io_cacheOp_req_bits_write_data_vec_3,
  input  [63:0] io_cacheOp_req_bits_write_data_vec_4,
  input  [63:0] io_cacheOp_req_bits_write_data_vec_5,
  input  [63:0] io_cacheOp_req_bits_write_data_vec_6,
  input  [63:0] io_cacheOp_req_bits_write_data_vec_7,
  input  [63:0] io_cacheOp_req_bits_write_data_ecc,
  input  [63:0] io_cacheOp_req_bits_bank_num,
  output        io_cacheOp_resp_valid,
  output [63:0] io_cacheOp_resp_bits_read_data_vec_0,
  output [63:0] io_cacheOp_resp_bits_read_data_vec_1,
  output [63:0] io_cacheOp_resp_bits_read_data_vec_2,
  output [63:0] io_cacheOp_resp_bits_read_data_vec_3,
  output [63:0] io_cacheOp_resp_bits_read_data_vec_4,
  output [63:0] io_cacheOp_resp_bits_read_data_vec_5,
  output [63:0] io_cacheOp_resp_bits_read_data_vec_6,
  output [63:0] io_cacheOp_resp_bits_read_data_vec_7,
  output [63:0] io_cacheOp_resp_bits_read_data_ecc,
  input         io_cacheOp_req_dup_0_valid,
  input         io_cacheOp_req_dup_1_valid,
  input         io_cacheOp_req_dup_2_valid,
  input         io_cacheOp_req_dup_3_valid,
  input         io_cacheOp_req_dup_4_valid,
  input         io_cacheOp_req_dup_5_valid,
  input         io_cacheOp_req_dup_6_valid,
  input         io_cacheOp_req_dup_7_valid,
  input         io_cacheOp_req_dup_8_valid,
  input         io_cacheOp_req_dup_9_valid,
  input         io_cacheOp_req_dup_10_valid,
  input         io_cacheOp_req_dup_11_valid,
  input         io_cacheOp_req_dup_12_valid,
  input         io_cacheOp_req_dup_13_valid,
  input         io_cacheOp_req_dup_14_valid,
  input         io_cacheOp_req_dup_15_valid,
  input  [63:0] io_cacheOp_req_bits_opCode_dup_0,
  input  [63:0] io_cacheOp_req_bits_opCode_dup_1,
  input  [63:0] io_cacheOp_req_bits_opCode_dup_2,
  input  [63:0] io_cacheOp_req_bits_opCode_dup_3,
  input  [63:0] io_cacheOp_req_bits_opCode_dup_4,
  input  [63:0] io_cacheOp_req_bits_opCode_dup_5,
  input  [63:0] io_cacheOp_req_bits_opCode_dup_6,
  input  [63:0] io_cacheOp_req_bits_opCode_dup_7,
  input  [63:0] io_cacheOp_req_bits_opCode_dup_8,
  input  [63:0] io_cacheOp_req_bits_opCode_dup_9,
  input  [63:0] io_cacheOp_req_bits_opCode_dup_10,
  input  [63:0] io_cacheOp_req_bits_opCode_dup_11,
  input  [63:0] io_cacheOp_req_bits_opCode_dup_12,
  input  [63:0] io_cacheOp_req_bits_opCode_dup_13,
  input  [63:0] io_cacheOp_req_bits_opCode_dup_14,
  input  [63:0] io_cacheOp_req_bits_opCode_dup_15
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [63:0] _RAND_7;
  reg [63:0] _RAND_8;
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
  reg [95:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [95:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [95:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [95:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [95:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
  reg [95:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_85;
  reg [31:0] _RAND_86;
  reg [31:0] _RAND_87;
  reg [31:0] _RAND_88;
  reg [95:0] _RAND_89;
  reg [31:0] _RAND_90;
  reg [31:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [31:0] _RAND_93;
  reg [31:0] _RAND_94;
  reg [31:0] _RAND_95;
  reg [95:0] _RAND_96;
  reg [63:0] _RAND_97;
  reg [63:0] _RAND_98;
  reg [63:0] _RAND_99;
  reg [63:0] _RAND_100;
  reg [63:0] _RAND_101;
  reg [63:0] _RAND_102;
  reg [63:0] _RAND_103;
  reg [63:0] _RAND_104;
  reg [31:0] _RAND_105;
  reg [31:0] _RAND_106;
  reg [31:0] _RAND_107;
  reg [31:0] _RAND_108;
  reg [31:0] _RAND_109;
  reg [31:0] _RAND_110;
  reg [31:0] _RAND_111;
  reg [31:0] _RAND_112;
  reg [31:0] _RAND_113;
  reg [31:0] _RAND_114;
  reg [31:0] _RAND_115;
  reg [31:0] _RAND_116;
  reg [31:0] _RAND_117;
  reg [31:0] _RAND_118;
  reg [31:0] _RAND_119;
  reg [31:0] _RAND_120;
  reg [31:0] _RAND_121;
  reg [31:0] _RAND_122;
  reg [31:0] _RAND_123;
  reg [31:0] _RAND_124;
  reg [31:0] _RAND_125;
  reg [31:0] _RAND_126;
  reg [31:0] _RAND_127;
  reg [31:0] _RAND_128;
  reg [31:0] _RAND_129;
  reg [31:0] _RAND_130;
  reg [31:0] _RAND_131;
  reg [31:0] _RAND_132;
  reg [31:0] _RAND_133;
  reg [63:0] _RAND_134;
`endif // RANDOMIZE_REG_INIT
  wire  data_banks_0_0_clock; // @[BankedDataArray.scala 669:82]
  wire  data_banks_0_0_io_wen; // @[BankedDataArray.scala 669:82]
  wire [5:0] data_banks_0_0_io_waddr; // @[BankedDataArray.scala 669:82]
  wire [7:0] data_banks_0_0_io_wway_en; // @[BankedDataArray.scala 669:82]
  wire [63:0] data_banks_0_0_io_wdata; // @[BankedDataArray.scala 669:82]
  wire  data_banks_0_0_io_ren; // @[BankedDataArray.scala 669:82]
  wire [5:0] data_banks_0_0_io_raddr; // @[BankedDataArray.scala 669:82]
  wire [7:0] data_banks_0_0_io_rway_en; // @[BankedDataArray.scala 669:82]
  wire [63:0] data_banks_0_0_io_rdata; // @[BankedDataArray.scala 669:82]
  wire  data_banks_0_1_clock; // @[BankedDataArray.scala 669:82]
  wire  data_banks_0_1_io_wen; // @[BankedDataArray.scala 669:82]
  wire [5:0] data_banks_0_1_io_waddr; // @[BankedDataArray.scala 669:82]
  wire [7:0] data_banks_0_1_io_wway_en; // @[BankedDataArray.scala 669:82]
  wire [63:0] data_banks_0_1_io_wdata; // @[BankedDataArray.scala 669:82]
  wire  data_banks_0_1_io_ren; // @[BankedDataArray.scala 669:82]
  wire [5:0] data_banks_0_1_io_raddr; // @[BankedDataArray.scala 669:82]
  wire [7:0] data_banks_0_1_io_rway_en; // @[BankedDataArray.scala 669:82]
  wire [63:0] data_banks_0_1_io_rdata; // @[BankedDataArray.scala 669:82]
  wire  data_banks_0_2_clock; // @[BankedDataArray.scala 669:82]
  wire  data_banks_0_2_io_wen; // @[BankedDataArray.scala 669:82]
  wire [5:0] data_banks_0_2_io_waddr; // @[BankedDataArray.scala 669:82]
  wire [7:0] data_banks_0_2_io_wway_en; // @[BankedDataArray.scala 669:82]
  wire [63:0] data_banks_0_2_io_wdata; // @[BankedDataArray.scala 669:82]
  wire  data_banks_0_2_io_ren; // @[BankedDataArray.scala 669:82]
  wire [5:0] data_banks_0_2_io_raddr; // @[BankedDataArray.scala 669:82]
  wire [7:0] data_banks_0_2_io_rway_en; // @[BankedDataArray.scala 669:82]
  wire [63:0] data_banks_0_2_io_rdata; // @[BankedDataArray.scala 669:82]
  wire  data_banks_0_3_clock; // @[BankedDataArray.scala 669:82]
  wire  data_banks_0_3_io_wen; // @[BankedDataArray.scala 669:82]
  wire [5:0] data_banks_0_3_io_waddr; // @[BankedDataArray.scala 669:82]
  wire [7:0] data_banks_0_3_io_wway_en; // @[BankedDataArray.scala 669:82]
  wire [63:0] data_banks_0_3_io_wdata; // @[BankedDataArray.scala 669:82]
  wire  data_banks_0_3_io_ren; // @[BankedDataArray.scala 669:82]
  wire [5:0] data_banks_0_3_io_raddr; // @[BankedDataArray.scala 669:82]
  wire [7:0] data_banks_0_3_io_rway_en; // @[BankedDataArray.scala 669:82]
  wire [63:0] data_banks_0_3_io_rdata; // @[BankedDataArray.scala 669:82]
  wire  data_banks_0_4_clock; // @[BankedDataArray.scala 669:82]
  wire  data_banks_0_4_io_wen; // @[BankedDataArray.scala 669:82]
  wire [5:0] data_banks_0_4_io_waddr; // @[BankedDataArray.scala 669:82]
  wire [7:0] data_banks_0_4_io_wway_en; // @[BankedDataArray.scala 669:82]
  wire [63:0] data_banks_0_4_io_wdata; // @[BankedDataArray.scala 669:82]
  wire  data_banks_0_4_io_ren; // @[BankedDataArray.scala 669:82]
  wire [5:0] data_banks_0_4_io_raddr; // @[BankedDataArray.scala 669:82]
  wire [7:0] data_banks_0_4_io_rway_en; // @[BankedDataArray.scala 669:82]
  wire [63:0] data_banks_0_4_io_rdata; // @[BankedDataArray.scala 669:82]
  wire  data_banks_0_5_clock; // @[BankedDataArray.scala 669:82]
  wire  data_banks_0_5_io_wen; // @[BankedDataArray.scala 669:82]
  wire [5:0] data_banks_0_5_io_waddr; // @[BankedDataArray.scala 669:82]
  wire [7:0] data_banks_0_5_io_wway_en; // @[BankedDataArray.scala 669:82]
  wire [63:0] data_banks_0_5_io_wdata; // @[BankedDataArray.scala 669:82]
  wire  data_banks_0_5_io_ren; // @[BankedDataArray.scala 669:82]
  wire [5:0] data_banks_0_5_io_raddr; // @[BankedDataArray.scala 669:82]
  wire [7:0] data_banks_0_5_io_rway_en; // @[BankedDataArray.scala 669:82]
  wire [63:0] data_banks_0_5_io_rdata; // @[BankedDataArray.scala 669:82]
  wire  data_banks_0_6_clock; // @[BankedDataArray.scala 669:82]
  wire  data_banks_0_6_io_wen; // @[BankedDataArray.scala 669:82]
  wire [5:0] data_banks_0_6_io_waddr; // @[BankedDataArray.scala 669:82]
  wire [7:0] data_banks_0_6_io_wway_en; // @[BankedDataArray.scala 669:82]
  wire [63:0] data_banks_0_6_io_wdata; // @[BankedDataArray.scala 669:82]
  wire  data_banks_0_6_io_ren; // @[BankedDataArray.scala 669:82]
  wire [5:0] data_banks_0_6_io_raddr; // @[BankedDataArray.scala 669:82]
  wire [7:0] data_banks_0_6_io_rway_en; // @[BankedDataArray.scala 669:82]
  wire [63:0] data_banks_0_6_io_rdata; // @[BankedDataArray.scala 669:82]
  wire  data_banks_0_7_clock; // @[BankedDataArray.scala 669:82]
  wire  data_banks_0_7_io_wen; // @[BankedDataArray.scala 669:82]
  wire [5:0] data_banks_0_7_io_waddr; // @[BankedDataArray.scala 669:82]
  wire [7:0] data_banks_0_7_io_wway_en; // @[BankedDataArray.scala 669:82]
  wire [63:0] data_banks_0_7_io_wdata; // @[BankedDataArray.scala 669:82]
  wire  data_banks_0_7_io_ren; // @[BankedDataArray.scala 669:82]
  wire [5:0] data_banks_0_7_io_raddr; // @[BankedDataArray.scala 669:82]
  wire [7:0] data_banks_0_7_io_rway_en; // @[BankedDataArray.scala 669:82]
  wire [63:0] data_banks_0_7_io_rdata; // @[BankedDataArray.scala 669:82]
  wire  ecc_banks_0_0_clock; // @[BankedDataArray.scala 670:72]
  wire  ecc_banks_0_0_io_rreq_valid; // @[BankedDataArray.scala 670:72]
  wire [5:0] ecc_banks_0_0_io_rreq_bits_setIdx; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_0_io_rresp_data_0; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_0_io_rresp_data_1; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_0_io_rresp_data_2; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_0_io_rresp_data_3; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_0_io_rresp_data_4; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_0_io_rresp_data_5; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_0_io_rresp_data_6; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_0_io_rresp_data_7; // @[BankedDataArray.scala 670:72]
  wire  ecc_banks_0_0_io_wreq_valid; // @[BankedDataArray.scala 670:72]
  wire [5:0] ecc_banks_0_0_io_wreq_bits_setIdx; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_0_io_wreq_bits_data_0; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_0_io_wreq_bits_data_1; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_0_io_wreq_bits_data_2; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_0_io_wreq_bits_data_3; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_0_io_wreq_bits_data_4; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_0_io_wreq_bits_data_5; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_0_io_wreq_bits_data_6; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_0_io_wreq_bits_data_7; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_0_io_wreq_bits_waymask; // @[BankedDataArray.scala 670:72]
  wire  ecc_banks_0_1_clock; // @[BankedDataArray.scala 670:72]
  wire  ecc_banks_0_1_io_rreq_valid; // @[BankedDataArray.scala 670:72]
  wire [5:0] ecc_banks_0_1_io_rreq_bits_setIdx; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_1_io_rresp_data_0; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_1_io_rresp_data_1; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_1_io_rresp_data_2; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_1_io_rresp_data_3; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_1_io_rresp_data_4; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_1_io_rresp_data_5; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_1_io_rresp_data_6; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_1_io_rresp_data_7; // @[BankedDataArray.scala 670:72]
  wire  ecc_banks_0_1_io_wreq_valid; // @[BankedDataArray.scala 670:72]
  wire [5:0] ecc_banks_0_1_io_wreq_bits_setIdx; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_1_io_wreq_bits_data_0; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_1_io_wreq_bits_data_1; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_1_io_wreq_bits_data_2; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_1_io_wreq_bits_data_3; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_1_io_wreq_bits_data_4; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_1_io_wreq_bits_data_5; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_1_io_wreq_bits_data_6; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_1_io_wreq_bits_data_7; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_1_io_wreq_bits_waymask; // @[BankedDataArray.scala 670:72]
  wire  ecc_banks_0_2_clock; // @[BankedDataArray.scala 670:72]
  wire  ecc_banks_0_2_io_rreq_valid; // @[BankedDataArray.scala 670:72]
  wire [5:0] ecc_banks_0_2_io_rreq_bits_setIdx; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_2_io_rresp_data_0; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_2_io_rresp_data_1; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_2_io_rresp_data_2; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_2_io_rresp_data_3; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_2_io_rresp_data_4; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_2_io_rresp_data_5; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_2_io_rresp_data_6; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_2_io_rresp_data_7; // @[BankedDataArray.scala 670:72]
  wire  ecc_banks_0_2_io_wreq_valid; // @[BankedDataArray.scala 670:72]
  wire [5:0] ecc_banks_0_2_io_wreq_bits_setIdx; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_2_io_wreq_bits_data_0; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_2_io_wreq_bits_data_1; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_2_io_wreq_bits_data_2; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_2_io_wreq_bits_data_3; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_2_io_wreq_bits_data_4; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_2_io_wreq_bits_data_5; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_2_io_wreq_bits_data_6; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_2_io_wreq_bits_data_7; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_2_io_wreq_bits_waymask; // @[BankedDataArray.scala 670:72]
  wire  ecc_banks_0_3_clock; // @[BankedDataArray.scala 670:72]
  wire  ecc_banks_0_3_io_rreq_valid; // @[BankedDataArray.scala 670:72]
  wire [5:0] ecc_banks_0_3_io_rreq_bits_setIdx; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_3_io_rresp_data_0; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_3_io_rresp_data_1; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_3_io_rresp_data_2; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_3_io_rresp_data_3; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_3_io_rresp_data_4; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_3_io_rresp_data_5; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_3_io_rresp_data_6; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_3_io_rresp_data_7; // @[BankedDataArray.scala 670:72]
  wire  ecc_banks_0_3_io_wreq_valid; // @[BankedDataArray.scala 670:72]
  wire [5:0] ecc_banks_0_3_io_wreq_bits_setIdx; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_3_io_wreq_bits_data_0; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_3_io_wreq_bits_data_1; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_3_io_wreq_bits_data_2; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_3_io_wreq_bits_data_3; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_3_io_wreq_bits_data_4; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_3_io_wreq_bits_data_5; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_3_io_wreq_bits_data_6; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_3_io_wreq_bits_data_7; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_3_io_wreq_bits_waymask; // @[BankedDataArray.scala 670:72]
  wire  ecc_banks_0_4_clock; // @[BankedDataArray.scala 670:72]
  wire  ecc_banks_0_4_io_rreq_valid; // @[BankedDataArray.scala 670:72]
  wire [5:0] ecc_banks_0_4_io_rreq_bits_setIdx; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_4_io_rresp_data_0; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_4_io_rresp_data_1; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_4_io_rresp_data_2; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_4_io_rresp_data_3; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_4_io_rresp_data_4; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_4_io_rresp_data_5; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_4_io_rresp_data_6; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_4_io_rresp_data_7; // @[BankedDataArray.scala 670:72]
  wire  ecc_banks_0_4_io_wreq_valid; // @[BankedDataArray.scala 670:72]
  wire [5:0] ecc_banks_0_4_io_wreq_bits_setIdx; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_4_io_wreq_bits_data_0; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_4_io_wreq_bits_data_1; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_4_io_wreq_bits_data_2; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_4_io_wreq_bits_data_3; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_4_io_wreq_bits_data_4; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_4_io_wreq_bits_data_5; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_4_io_wreq_bits_data_6; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_4_io_wreq_bits_data_7; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_4_io_wreq_bits_waymask; // @[BankedDataArray.scala 670:72]
  wire  ecc_banks_0_5_clock; // @[BankedDataArray.scala 670:72]
  wire  ecc_banks_0_5_io_rreq_valid; // @[BankedDataArray.scala 670:72]
  wire [5:0] ecc_banks_0_5_io_rreq_bits_setIdx; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_5_io_rresp_data_0; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_5_io_rresp_data_1; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_5_io_rresp_data_2; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_5_io_rresp_data_3; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_5_io_rresp_data_4; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_5_io_rresp_data_5; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_5_io_rresp_data_6; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_5_io_rresp_data_7; // @[BankedDataArray.scala 670:72]
  wire  ecc_banks_0_5_io_wreq_valid; // @[BankedDataArray.scala 670:72]
  wire [5:0] ecc_banks_0_5_io_wreq_bits_setIdx; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_5_io_wreq_bits_data_0; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_5_io_wreq_bits_data_1; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_5_io_wreq_bits_data_2; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_5_io_wreq_bits_data_3; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_5_io_wreq_bits_data_4; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_5_io_wreq_bits_data_5; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_5_io_wreq_bits_data_6; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_5_io_wreq_bits_data_7; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_5_io_wreq_bits_waymask; // @[BankedDataArray.scala 670:72]
  wire  ecc_banks_0_6_clock; // @[BankedDataArray.scala 670:72]
  wire  ecc_banks_0_6_io_rreq_valid; // @[BankedDataArray.scala 670:72]
  wire [5:0] ecc_banks_0_6_io_rreq_bits_setIdx; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_6_io_rresp_data_0; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_6_io_rresp_data_1; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_6_io_rresp_data_2; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_6_io_rresp_data_3; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_6_io_rresp_data_4; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_6_io_rresp_data_5; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_6_io_rresp_data_6; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_6_io_rresp_data_7; // @[BankedDataArray.scala 670:72]
  wire  ecc_banks_0_6_io_wreq_valid; // @[BankedDataArray.scala 670:72]
  wire [5:0] ecc_banks_0_6_io_wreq_bits_setIdx; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_6_io_wreq_bits_data_0; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_6_io_wreq_bits_data_1; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_6_io_wreq_bits_data_2; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_6_io_wreq_bits_data_3; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_6_io_wreq_bits_data_4; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_6_io_wreq_bits_data_5; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_6_io_wreq_bits_data_6; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_6_io_wreq_bits_data_7; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_6_io_wreq_bits_waymask; // @[BankedDataArray.scala 670:72]
  wire  ecc_banks_0_7_clock; // @[BankedDataArray.scala 670:72]
  wire  ecc_banks_0_7_io_rreq_valid; // @[BankedDataArray.scala 670:72]
  wire [5:0] ecc_banks_0_7_io_rreq_bits_setIdx; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_7_io_rresp_data_0; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_7_io_rresp_data_1; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_7_io_rresp_data_2; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_7_io_rresp_data_3; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_7_io_rresp_data_4; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_7_io_rresp_data_5; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_7_io_rresp_data_6; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_7_io_rresp_data_7; // @[BankedDataArray.scala 670:72]
  wire  ecc_banks_0_7_io_wreq_valid; // @[BankedDataArray.scala 670:72]
  wire [5:0] ecc_banks_0_7_io_wreq_bits_setIdx; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_7_io_wreq_bits_data_0; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_7_io_wreq_bits_data_1; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_7_io_wreq_bits_data_2; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_7_io_wreq_bits_data_3; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_7_io_wreq_bits_data_4; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_7_io_wreq_bits_data_5; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_7_io_wreq_bits_data_6; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_7_io_wreq_bits_data_7; // @[BankedDataArray.scala 670:72]
  wire [7:0] ecc_banks_0_7_io_wreq_bits_waymask; // @[BankedDataArray.scala 670:72]
  wire [5:0] line_set_addr = io_readline_bits_addr[11:6]; // @[DCacheWrapper.scala 214:9]
  reg [7:0] write_bank_mask_reg; // @[BankedDataArray.scala 692:36]
  reg [63:0] write_data_reg_0; // @[BankedDataArray.scala 693:31]
  reg [63:0] write_data_reg_1; // @[BankedDataArray.scala 693:31]
  reg [63:0] write_data_reg_2; // @[BankedDataArray.scala 693:31]
  reg [63:0] write_data_reg_3; // @[BankedDataArray.scala 693:31]
  reg [63:0] write_data_reg_4; // @[BankedDataArray.scala 693:31]
  reg [63:0] write_data_reg_5; // @[BankedDataArray.scala 693:31]
  reg [63:0] write_data_reg_6; // @[BankedDataArray.scala 693:31]
  reg [63:0] write_data_reg_7; // @[BankedDataArray.scala 693:31]
  reg  write_valid_reg; // @[BankedDataArray.scala 694:32]
  reg  write_valid_dup_reg_0; // @[BankedDataArray.scala 695:58]
  reg  write_valid_dup_reg_1; // @[BankedDataArray.scala 695:58]
  reg  write_valid_dup_reg_2; // @[BankedDataArray.scala 695:58]
  reg  write_valid_dup_reg_3; // @[BankedDataArray.scala 695:58]
  reg  write_valid_dup_reg_4; // @[BankedDataArray.scala 695:58]
  reg  write_valid_dup_reg_5; // @[BankedDataArray.scala 695:58]
  reg  write_valid_dup_reg_6; // @[BankedDataArray.scala 695:58]
  reg  write_valid_dup_reg_7; // @[BankedDataArray.scala 695:58]
  reg [7:0] write_wayen_dup_reg_0; // @[BankedDataArray.scala 696:58]
  reg [7:0] write_wayen_dup_reg_1; // @[BankedDataArray.scala 696:58]
  reg [7:0] write_wayen_dup_reg_2; // @[BankedDataArray.scala 696:58]
  reg [7:0] write_wayen_dup_reg_3; // @[BankedDataArray.scala 696:58]
  reg [7:0] write_wayen_dup_reg_4; // @[BankedDataArray.scala 696:58]
  reg [7:0] write_wayen_dup_reg_5; // @[BankedDataArray.scala 696:58]
  reg [7:0] write_wayen_dup_reg_6; // @[BankedDataArray.scala 696:58]
  reg [7:0] write_wayen_dup_reg_7; // @[BankedDataArray.scala 696:58]
  reg [5:0] write_set_addr_dup_reg_0; // @[BankedDataArray.scala 697:61]
  reg [5:0] write_set_addr_dup_reg_1; // @[BankedDataArray.scala 697:61]
  reg [5:0] write_set_addr_dup_reg_2; // @[BankedDataArray.scala 697:61]
  reg [5:0] write_set_addr_dup_reg_3; // @[BankedDataArray.scala 697:61]
  reg [5:0] write_set_addr_dup_reg_4; // @[BankedDataArray.scala 697:61]
  reg [5:0] write_set_addr_dup_reg_5; // @[BankedDataArray.scala 697:61]
  reg [5:0] write_set_addr_dup_reg_6; // @[BankedDataArray.scala 697:61]
  reg [5:0] write_set_addr_dup_reg_7; // @[BankedDataArray.scala 697:61]
  wire [3:0] bank_addrs_0_0 = {{1'd0}, io_read_0_bits_addr[5:3]}; // @[BankedDataArray.scala 684:24 706:32]
  wire [5:0] set_addrs_0 = io_read_0_bits_addr[11:6]; // @[DCacheWrapper.scala 214:9]
  reg [5:0] set_addrs_reg_0_REG; // @[BankedDataArray.scala 709:42]
  reg [7:0] way_en_reg_0_REG; // @[BankedDataArray.scala 714:39]
  wire [3:0] bank_addrs_1_0 = {{1'd0}, io_read_1_bits_addr[5:3]}; // @[BankedDataArray.scala 684:24 706:32]
  wire [5:0] set_addrs_1 = io_read_1_bits_addr[11:6]; // @[DCacheWrapper.scala 214:9]
  reg [5:0] set_addrs_reg_1_REG; // @[BankedDataArray.scala 709:42]
  reg [7:0] way_en_reg_1_REG; // @[BankedDataArray.scala 714:39]
  wire  _rr_bank_conflict_T_5 = io_read_0_valid & io_read_1_valid; // @[BankedDataArray.scala 719:22]
  wire [7:0] _rr_bank_conflict_T_8 = io_read_0_bits_bankMask & io_read_1_bits_bankMask; // @[BankedDataArray.scala 721:31]
  wire  _rr_bank_conflict_T_9 = _rr_bank_conflict_T_8 != 8'h0; // @[BankedDataArray.scala 721:59]
  wire  rr_bank_conflict_0_1 = _rr_bank_conflict_T_5 & _rr_bank_conflict_T_9; // @[BankedDataArray.scala 720:35]
  wire  rrl_bank_conflict_0 = io_read_0_valid & io_readline_valid; // @[BankedDataArray.scala 728:35]
  wire  rrl_bank_conflict_intend_0 = io_read_0_valid & io_readline_intend; // @[BankedDataArray.scala 729:42]
  wire  rrl_bank_conflict_1 = io_read_1_valid & io_readline_valid; // @[BankedDataArray.scala 728:35]
  wire  rrl_bank_conflict_intend_1 = io_read_1_valid & io_readline_intend; // @[BankedDataArray.scala 729:42]
  wire  _wr_bank_conflict_T = io_read_0_valid & write_valid_reg; // @[BankedDataArray.scala 732:22]
  wire [7:0] _wr_bank_conflict_T_3 = write_bank_mask_reg >> bank_addrs_0_0; // @[BankedDataArray.scala 735:25]
  wire  wr_bank_conflict_0 = _wr_bank_conflict_T & _wr_bank_conflict_T_3[0]; // @[BankedDataArray.scala 734:50]
  wire  _wr_bank_conflict_T_9 = io_read_1_valid & write_valid_reg; // @[BankedDataArray.scala 732:22]
  wire [7:0] _wr_bank_conflict_T_12 = write_bank_mask_reg >> bank_addrs_1_0; // @[BankedDataArray.scala 735:25]
  wire  wr_bank_conflict_1 = _wr_bank_conflict_T_9 & _wr_bank_conflict_T_12[0]; // @[BankedDataArray.scala 734:50]
  wire  wrl_bank_conflict = io_readline_valid & write_valid_reg; // @[BankedDataArray.scala 737:45]
  reg  real_other_bank_conflict_reg; // @[BankedDataArray.scala 745:47]
  reg  real_other_bank_conflict_reg_1; // @[BankedDataArray.scala 745:47]
  reg  real_rr_bank_conflict_reg_REG; // @[BankedDataArray.scala 747:14]
  wire  _real_rr_bank_conflict_reg_T_2 = way_en_reg_0_REG != way_en_reg_1_REG | set_addrs_reg_0_REG !=
    set_addrs_reg_1_REG; // @[BankedDataArray.scala 748:40]
  wire  real_rr_bank_conflict_reg = real_rr_bank_conflict_reg_REG & _real_rr_bank_conflict_reg_T_2; // @[BankedDataArray.scala 747:39]
  wire  bank_addr_matchs__0 = io_read_0_valid & bank_addrs_0_0 == 4'h0; // @[BankedDataArray.scala 790:58]
  wire  bank_addr_matchs__1 = io_read_1_valid & bank_addrs_1_0 == 4'h0; // @[BankedDataArray.scala 790:58]
  wire [7:0] _bank_way_en_T = bank_addr_matchs__0 ? io_read_0_bits_way_en : io_read_1_bits_way_en; // @[Mux.scala 47:70]
  wire [7:0] bank_way_en = io_readline_valid ? io_readline_bits_way_en : _bank_way_en_T; // @[BankedDataArray.scala 798:28]
  reg  bank_way_en_reg_REG; // @[BankedDataArray.scala 803:40]
  reg [7:0] bank_way_en_reg_REG_1; // @[BankedDataArray.scala 804:16]
  reg  bank_way_en_reg_REG_2; // @[BankedDataArray.scala 805:65]
  reg [7:0] bank_way_en_reg_REG_3; // @[BankedDataArray.scala 805:97]
  reg [7:0] bank_way_en_reg_REG_5; // @[BankedDataArray.scala 805:97]
  wire [7:0] _bank_way_en_reg_T = bank_way_en_reg_REG_2 ? bank_way_en_reg_REG_3 : bank_way_en_reg_REG_5; // @[Mux.scala 47:70]
  wire [7:0] bank_way_en_reg = bank_way_en_reg_REG ? bank_way_en_reg_REG_1 : _bank_way_en_reg_T; // @[BankedDataArray.scala 803:32]
  wire [5:0] _bank_set_addr_T = bank_addr_matchs__0 ? set_addrs_0 : set_addrs_1; // @[Mux.scala 47:70]
  wire [5:0] bank_set_addr = io_readline_valid ? line_set_addr : _bank_set_addr_T; // @[BankedDataArray.scala 807:30]
  wire [1:0] _read_enable_T = {bank_addr_matchs__1,bank_addr_matchs__0}; // @[BankedDataArray.scala 812:42]
  wire  read_enable = |_read_enable_T | io_readline_valid; // @[BankedDataArray.scala 812:53]
  wire [7:0] _bank_result_0_0_ecc_T_8 = bank_way_en_reg[0] ? ecc_banks_0_0_io_rresp_data_0 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_0_ecc_T_9 = bank_way_en_reg[1] ? ecc_banks_0_0_io_rresp_data_1 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_0_ecc_T_10 = bank_way_en_reg[2] ? ecc_banks_0_0_io_rresp_data_2 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_0_ecc_T_11 = bank_way_en_reg[3] ? ecc_banks_0_0_io_rresp_data_3 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_0_ecc_T_12 = bank_way_en_reg[4] ? ecc_banks_0_0_io_rresp_data_4 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_0_ecc_T_13 = bank_way_en_reg[5] ? ecc_banks_0_0_io_rresp_data_5 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_0_ecc_T_14 = bank_way_en_reg[6] ? ecc_banks_0_0_io_rresp_data_6 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_0_ecc_T_15 = bank_way_en_reg[7] ? ecc_banks_0_0_io_rresp_data_7 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_0_ecc_T_16 = _bank_result_0_0_ecc_T_8 | _bank_result_0_0_ecc_T_9; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_0_ecc_T_17 = _bank_result_0_0_ecc_T_16 | _bank_result_0_0_ecc_T_10; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_0_ecc_T_18 = _bank_result_0_0_ecc_T_17 | _bank_result_0_0_ecc_T_11; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_0_ecc_T_19 = _bank_result_0_0_ecc_T_18 | _bank_result_0_0_ecc_T_12; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_0_ecc_T_20 = _bank_result_0_0_ecc_T_19 | _bank_result_0_0_ecc_T_13; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_0_ecc_T_21 = _bank_result_0_0_ecc_T_20 | _bank_result_0_0_ecc_T_14; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_0_ecc_WIRE = _bank_result_0_0_ecc_T_21 | _bank_result_0_0_ecc_T_15; // @[Mux.scala 27:73]
  wire [7:0] bank_result_0_0_ecc = _bank_result_0_0_ecc_T_21 | _bank_result_0_0_ecc_T_15; // @[Mux.scala 27:73]
  wire [63:0] bank_result_0_0_raw_data = data_banks_0_0_io_rdata; // @[BankedDataArray.scala 769:25 819:51]
  wire [71:0] ecc_data = {_bank_result_0_0_ecc_WIRE,bank_result_0_0_raw_data}; // @[Cat.scala 31:58]
  reg  ecc_data_delayed_REG; // @[BankedDataArray.scala 830:57]
  reg [71:0] ecc_data_delayed; // @[Reg.scala 16:16]
  wire [70:0] _bank_result_0_0_error_delayed_syndromeUInt_T = 71'h1ab55555556aaad5b & ecc_data_delayed[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_0_error_delayed_syndromeUInt_T_2 = 71'h2cd9999999b33366d & ecc_data_delayed[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_0_error_delayed_syndromeUInt_T_4 = 71'h4f1e1e1e1e3c3c78e & ecc_data_delayed[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_0_error_delayed_syndromeUInt_T_6 = 71'h801fe01fe03fc07f0 & ecc_data_delayed[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_0_error_delayed_syndromeUInt_T_8 = 71'h1001fffe0003fff800 & ecc_data_delayed[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_0_error_delayed_syndromeUInt_T_10 = 71'h2001fffffffc000000 & ecc_data_delayed[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_0_error_delayed_syndromeUInt_T_12 = 71'h40fe00000000000000 & ecc_data_delayed[70:0]; // @[ECC.scala 156:66]
  wire [6:0] bank_result_0_0_error_delayed_syndromeUInt = {^_bank_result_0_0_error_delayed_syndromeUInt_T_12,^
    _bank_result_0_0_error_delayed_syndromeUInt_T_10,^_bank_result_0_0_error_delayed_syndromeUInt_T_8,^
    _bank_result_0_0_error_delayed_syndromeUInt_T_6,^_bank_result_0_0_error_delayed_syndromeUInt_T_4,^
    _bank_result_0_0_error_delayed_syndromeUInt_T_2,^_bank_result_0_0_error_delayed_syndromeUInt_T}; // @[ECC.scala 156:78]
  wire  bank_result_0_0_error_delayed_correctable = |bank_result_0_0_error_delayed_syndromeUInt; // @[ECC.scala 163:36]
  wire  bank_result_0_0_error_delayed_uncorrectable_1 = ^ecc_data_delayed; // @[ECC.scala 87:27]
  wire  bank_result_0_0_error_delayed_uncorrectable_2 = ~bank_result_0_0_error_delayed_uncorrectable_1 &
    bank_result_0_0_error_delayed_correctable; // @[ECC.scala 195:47]
  wire  bank_addr_matchs_1_0 = io_read_0_valid & bank_addrs_0_0 == 4'h1; // @[BankedDataArray.scala 790:58]
  wire  bank_addr_matchs_1_1 = io_read_1_valid & bank_addrs_1_0 == 4'h1; // @[BankedDataArray.scala 790:58]
  wire [7:0] _bank_way_en_T_1 = bank_addr_matchs_1_0 ? io_read_0_bits_way_en : io_read_1_bits_way_en; // @[Mux.scala 47:70]
  wire [7:0] bank_way_en_1 = io_readline_valid ? io_readline_bits_way_en : _bank_way_en_T_1; // @[BankedDataArray.scala 798:28]
  reg  bank_way_en_reg_REG_6; // @[BankedDataArray.scala 803:40]
  reg [7:0] bank_way_en_reg_REG_7; // @[BankedDataArray.scala 804:16]
  reg  bank_way_en_reg_REG_8; // @[BankedDataArray.scala 805:65]
  reg [7:0] bank_way_en_reg_REG_9; // @[BankedDataArray.scala 805:97]
  reg [7:0] bank_way_en_reg_REG_11; // @[BankedDataArray.scala 805:97]
  wire [7:0] _bank_way_en_reg_T_1 = bank_way_en_reg_REG_8 ? bank_way_en_reg_REG_9 : bank_way_en_reg_REG_11; // @[Mux.scala 47:70]
  wire [7:0] bank_way_en_reg_1 = bank_way_en_reg_REG_6 ? bank_way_en_reg_REG_7 : _bank_way_en_reg_T_1; // @[BankedDataArray.scala 803:32]
  wire [5:0] _bank_set_addr_T_1 = bank_addr_matchs_1_0 ? set_addrs_0 : set_addrs_1; // @[Mux.scala 47:70]
  wire [5:0] bank_set_addr_1 = io_readline_valid ? line_set_addr : _bank_set_addr_T_1; // @[BankedDataArray.scala 807:30]
  wire [1:0] _read_enable_T_2 = {bank_addr_matchs_1_1,bank_addr_matchs_1_0}; // @[BankedDataArray.scala 812:42]
  wire  read_enable_1 = |_read_enable_T_2 | io_readline_valid; // @[BankedDataArray.scala 812:53]
  wire [7:0] _bank_result_0_1_ecc_T_8 = bank_way_en_reg_1[0] ? ecc_banks_0_1_io_rresp_data_0 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_1_ecc_T_9 = bank_way_en_reg_1[1] ? ecc_banks_0_1_io_rresp_data_1 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_1_ecc_T_10 = bank_way_en_reg_1[2] ? ecc_banks_0_1_io_rresp_data_2 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_1_ecc_T_11 = bank_way_en_reg_1[3] ? ecc_banks_0_1_io_rresp_data_3 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_1_ecc_T_12 = bank_way_en_reg_1[4] ? ecc_banks_0_1_io_rresp_data_4 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_1_ecc_T_13 = bank_way_en_reg_1[5] ? ecc_banks_0_1_io_rresp_data_5 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_1_ecc_T_14 = bank_way_en_reg_1[6] ? ecc_banks_0_1_io_rresp_data_6 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_1_ecc_T_15 = bank_way_en_reg_1[7] ? ecc_banks_0_1_io_rresp_data_7 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_1_ecc_T_16 = _bank_result_0_1_ecc_T_8 | _bank_result_0_1_ecc_T_9; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_1_ecc_T_17 = _bank_result_0_1_ecc_T_16 | _bank_result_0_1_ecc_T_10; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_1_ecc_T_18 = _bank_result_0_1_ecc_T_17 | _bank_result_0_1_ecc_T_11; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_1_ecc_T_19 = _bank_result_0_1_ecc_T_18 | _bank_result_0_1_ecc_T_12; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_1_ecc_T_20 = _bank_result_0_1_ecc_T_19 | _bank_result_0_1_ecc_T_13; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_1_ecc_T_21 = _bank_result_0_1_ecc_T_20 | _bank_result_0_1_ecc_T_14; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_1_ecc_WIRE = _bank_result_0_1_ecc_T_21 | _bank_result_0_1_ecc_T_15; // @[Mux.scala 27:73]
  wire [7:0] bank_result_0_1_ecc = _bank_result_0_1_ecc_T_21 | _bank_result_0_1_ecc_T_15; // @[Mux.scala 27:73]
  wire [63:0] bank_result_0_1_raw_data = data_banks_0_1_io_rdata; // @[BankedDataArray.scala 769:25 819:51]
  wire [71:0] ecc_data_1 = {_bank_result_0_1_ecc_WIRE,bank_result_0_1_raw_data}; // @[Cat.scala 31:58]
  reg  ecc_data_delayed_REG_1; // @[BankedDataArray.scala 830:57]
  reg [71:0] ecc_data_delayed_1; // @[Reg.scala 16:16]
  wire [70:0] _bank_result_0_1_error_delayed_syndromeUInt_T = 71'h1ab55555556aaad5b & ecc_data_delayed_1[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_1_error_delayed_syndromeUInt_T_2 = 71'h2cd9999999b33366d & ecc_data_delayed_1[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_1_error_delayed_syndromeUInt_T_4 = 71'h4f1e1e1e1e3c3c78e & ecc_data_delayed_1[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_1_error_delayed_syndromeUInt_T_6 = 71'h801fe01fe03fc07f0 & ecc_data_delayed_1[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_1_error_delayed_syndromeUInt_T_8 = 71'h1001fffe0003fff800 & ecc_data_delayed_1[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_1_error_delayed_syndromeUInt_T_10 = 71'h2001fffffffc000000 & ecc_data_delayed_1[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_1_error_delayed_syndromeUInt_T_12 = 71'h40fe00000000000000 & ecc_data_delayed_1[70:0]; // @[ECC.scala 156:66]
  wire [6:0] bank_result_0_1_error_delayed_syndromeUInt = {^_bank_result_0_1_error_delayed_syndromeUInt_T_12,^
    _bank_result_0_1_error_delayed_syndromeUInt_T_10,^_bank_result_0_1_error_delayed_syndromeUInt_T_8,^
    _bank_result_0_1_error_delayed_syndromeUInt_T_6,^_bank_result_0_1_error_delayed_syndromeUInt_T_4,^
    _bank_result_0_1_error_delayed_syndromeUInt_T_2,^_bank_result_0_1_error_delayed_syndromeUInt_T}; // @[ECC.scala 156:78]
  wire  bank_result_0_1_error_delayed_correctable = |bank_result_0_1_error_delayed_syndromeUInt; // @[ECC.scala 163:36]
  wire  bank_result_0_1_error_delayed_uncorrectable_1 = ^ecc_data_delayed_1; // @[ECC.scala 87:27]
  wire  bank_result_0_1_error_delayed_uncorrectable_2 = ~bank_result_0_1_error_delayed_uncorrectable_1 &
    bank_result_0_1_error_delayed_correctable; // @[ECC.scala 195:47]
  wire  bank_addr_matchs_2_0 = io_read_0_valid & bank_addrs_0_0 == 4'h2; // @[BankedDataArray.scala 790:58]
  wire  bank_addr_matchs_2_1 = io_read_1_valid & bank_addrs_1_0 == 4'h2; // @[BankedDataArray.scala 790:58]
  wire [7:0] _bank_way_en_T_2 = bank_addr_matchs_2_0 ? io_read_0_bits_way_en : io_read_1_bits_way_en; // @[Mux.scala 47:70]
  wire [7:0] bank_way_en_2 = io_readline_valid ? io_readline_bits_way_en : _bank_way_en_T_2; // @[BankedDataArray.scala 798:28]
  reg  bank_way_en_reg_REG_12; // @[BankedDataArray.scala 803:40]
  reg [7:0] bank_way_en_reg_REG_13; // @[BankedDataArray.scala 804:16]
  reg  bank_way_en_reg_REG_14; // @[BankedDataArray.scala 805:65]
  reg [7:0] bank_way_en_reg_REG_15; // @[BankedDataArray.scala 805:97]
  reg [7:0] bank_way_en_reg_REG_17; // @[BankedDataArray.scala 805:97]
  wire [7:0] _bank_way_en_reg_T_2 = bank_way_en_reg_REG_14 ? bank_way_en_reg_REG_15 : bank_way_en_reg_REG_17; // @[Mux.scala 47:70]
  wire [7:0] bank_way_en_reg_2 = bank_way_en_reg_REG_12 ? bank_way_en_reg_REG_13 : _bank_way_en_reg_T_2; // @[BankedDataArray.scala 803:32]
  wire [5:0] _bank_set_addr_T_2 = bank_addr_matchs_2_0 ? set_addrs_0 : set_addrs_1; // @[Mux.scala 47:70]
  wire [5:0] bank_set_addr_2 = io_readline_valid ? line_set_addr : _bank_set_addr_T_2; // @[BankedDataArray.scala 807:30]
  wire [1:0] _read_enable_T_4 = {bank_addr_matchs_2_1,bank_addr_matchs_2_0}; // @[BankedDataArray.scala 812:42]
  wire  read_enable_2 = |_read_enable_T_4 | io_readline_valid; // @[BankedDataArray.scala 812:53]
  wire [7:0] _bank_result_0_2_ecc_T_8 = bank_way_en_reg_2[0] ? ecc_banks_0_2_io_rresp_data_0 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_2_ecc_T_9 = bank_way_en_reg_2[1] ? ecc_banks_0_2_io_rresp_data_1 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_2_ecc_T_10 = bank_way_en_reg_2[2] ? ecc_banks_0_2_io_rresp_data_2 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_2_ecc_T_11 = bank_way_en_reg_2[3] ? ecc_banks_0_2_io_rresp_data_3 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_2_ecc_T_12 = bank_way_en_reg_2[4] ? ecc_banks_0_2_io_rresp_data_4 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_2_ecc_T_13 = bank_way_en_reg_2[5] ? ecc_banks_0_2_io_rresp_data_5 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_2_ecc_T_14 = bank_way_en_reg_2[6] ? ecc_banks_0_2_io_rresp_data_6 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_2_ecc_T_15 = bank_way_en_reg_2[7] ? ecc_banks_0_2_io_rresp_data_7 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_2_ecc_T_16 = _bank_result_0_2_ecc_T_8 | _bank_result_0_2_ecc_T_9; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_2_ecc_T_17 = _bank_result_0_2_ecc_T_16 | _bank_result_0_2_ecc_T_10; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_2_ecc_T_18 = _bank_result_0_2_ecc_T_17 | _bank_result_0_2_ecc_T_11; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_2_ecc_T_19 = _bank_result_0_2_ecc_T_18 | _bank_result_0_2_ecc_T_12; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_2_ecc_T_20 = _bank_result_0_2_ecc_T_19 | _bank_result_0_2_ecc_T_13; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_2_ecc_T_21 = _bank_result_0_2_ecc_T_20 | _bank_result_0_2_ecc_T_14; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_2_ecc_WIRE = _bank_result_0_2_ecc_T_21 | _bank_result_0_2_ecc_T_15; // @[Mux.scala 27:73]
  wire [7:0] bank_result_0_2_ecc = _bank_result_0_2_ecc_T_21 | _bank_result_0_2_ecc_T_15; // @[Mux.scala 27:73]
  wire [63:0] bank_result_0_2_raw_data = data_banks_0_2_io_rdata; // @[BankedDataArray.scala 769:25 819:51]
  wire [71:0] ecc_data_2 = {_bank_result_0_2_ecc_WIRE,bank_result_0_2_raw_data}; // @[Cat.scala 31:58]
  reg  ecc_data_delayed_REG_2; // @[BankedDataArray.scala 830:57]
  reg [71:0] ecc_data_delayed_2; // @[Reg.scala 16:16]
  wire [70:0] _bank_result_0_2_error_delayed_syndromeUInt_T = 71'h1ab55555556aaad5b & ecc_data_delayed_2[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_2_error_delayed_syndromeUInt_T_2 = 71'h2cd9999999b33366d & ecc_data_delayed_2[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_2_error_delayed_syndromeUInt_T_4 = 71'h4f1e1e1e1e3c3c78e & ecc_data_delayed_2[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_2_error_delayed_syndromeUInt_T_6 = 71'h801fe01fe03fc07f0 & ecc_data_delayed_2[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_2_error_delayed_syndromeUInt_T_8 = 71'h1001fffe0003fff800 & ecc_data_delayed_2[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_2_error_delayed_syndromeUInt_T_10 = 71'h2001fffffffc000000 & ecc_data_delayed_2[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_2_error_delayed_syndromeUInt_T_12 = 71'h40fe00000000000000 & ecc_data_delayed_2[70:0]; // @[ECC.scala 156:66]
  wire [6:0] bank_result_0_2_error_delayed_syndromeUInt = {^_bank_result_0_2_error_delayed_syndromeUInt_T_12,^
    _bank_result_0_2_error_delayed_syndromeUInt_T_10,^_bank_result_0_2_error_delayed_syndromeUInt_T_8,^
    _bank_result_0_2_error_delayed_syndromeUInt_T_6,^_bank_result_0_2_error_delayed_syndromeUInt_T_4,^
    _bank_result_0_2_error_delayed_syndromeUInt_T_2,^_bank_result_0_2_error_delayed_syndromeUInt_T}; // @[ECC.scala 156:78]
  wire  bank_result_0_2_error_delayed_correctable = |bank_result_0_2_error_delayed_syndromeUInt; // @[ECC.scala 163:36]
  wire  bank_result_0_2_error_delayed_uncorrectable_1 = ^ecc_data_delayed_2; // @[ECC.scala 87:27]
  wire  bank_result_0_2_error_delayed_uncorrectable_2 = ~bank_result_0_2_error_delayed_uncorrectable_1 &
    bank_result_0_2_error_delayed_correctable; // @[ECC.scala 195:47]
  wire  bank_addr_matchs_3_0 = io_read_0_valid & bank_addrs_0_0 == 4'h3; // @[BankedDataArray.scala 790:58]
  wire  bank_addr_matchs_3_1 = io_read_1_valid & bank_addrs_1_0 == 4'h3; // @[BankedDataArray.scala 790:58]
  wire [7:0] _bank_way_en_T_3 = bank_addr_matchs_3_0 ? io_read_0_bits_way_en : io_read_1_bits_way_en; // @[Mux.scala 47:70]
  wire [7:0] bank_way_en_3 = io_readline_valid ? io_readline_bits_way_en : _bank_way_en_T_3; // @[BankedDataArray.scala 798:28]
  reg  bank_way_en_reg_REG_18; // @[BankedDataArray.scala 803:40]
  reg [7:0] bank_way_en_reg_REG_19; // @[BankedDataArray.scala 804:16]
  reg  bank_way_en_reg_REG_20; // @[BankedDataArray.scala 805:65]
  reg [7:0] bank_way_en_reg_REG_21; // @[BankedDataArray.scala 805:97]
  reg [7:0] bank_way_en_reg_REG_23; // @[BankedDataArray.scala 805:97]
  wire [7:0] _bank_way_en_reg_T_3 = bank_way_en_reg_REG_20 ? bank_way_en_reg_REG_21 : bank_way_en_reg_REG_23; // @[Mux.scala 47:70]
  wire [7:0] bank_way_en_reg_3 = bank_way_en_reg_REG_18 ? bank_way_en_reg_REG_19 : _bank_way_en_reg_T_3; // @[BankedDataArray.scala 803:32]
  wire [5:0] _bank_set_addr_T_3 = bank_addr_matchs_3_0 ? set_addrs_0 : set_addrs_1; // @[Mux.scala 47:70]
  wire [5:0] bank_set_addr_3 = io_readline_valid ? line_set_addr : _bank_set_addr_T_3; // @[BankedDataArray.scala 807:30]
  wire [1:0] _read_enable_T_6 = {bank_addr_matchs_3_1,bank_addr_matchs_3_0}; // @[BankedDataArray.scala 812:42]
  wire  read_enable_3 = |_read_enable_T_6 | io_readline_valid; // @[BankedDataArray.scala 812:53]
  wire [7:0] _bank_result_0_3_ecc_T_8 = bank_way_en_reg_3[0] ? ecc_banks_0_3_io_rresp_data_0 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_3_ecc_T_9 = bank_way_en_reg_3[1] ? ecc_banks_0_3_io_rresp_data_1 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_3_ecc_T_10 = bank_way_en_reg_3[2] ? ecc_banks_0_3_io_rresp_data_2 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_3_ecc_T_11 = bank_way_en_reg_3[3] ? ecc_banks_0_3_io_rresp_data_3 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_3_ecc_T_12 = bank_way_en_reg_3[4] ? ecc_banks_0_3_io_rresp_data_4 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_3_ecc_T_13 = bank_way_en_reg_3[5] ? ecc_banks_0_3_io_rresp_data_5 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_3_ecc_T_14 = bank_way_en_reg_3[6] ? ecc_banks_0_3_io_rresp_data_6 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_3_ecc_T_15 = bank_way_en_reg_3[7] ? ecc_banks_0_3_io_rresp_data_7 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_3_ecc_T_16 = _bank_result_0_3_ecc_T_8 | _bank_result_0_3_ecc_T_9; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_3_ecc_T_17 = _bank_result_0_3_ecc_T_16 | _bank_result_0_3_ecc_T_10; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_3_ecc_T_18 = _bank_result_0_3_ecc_T_17 | _bank_result_0_3_ecc_T_11; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_3_ecc_T_19 = _bank_result_0_3_ecc_T_18 | _bank_result_0_3_ecc_T_12; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_3_ecc_T_20 = _bank_result_0_3_ecc_T_19 | _bank_result_0_3_ecc_T_13; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_3_ecc_T_21 = _bank_result_0_3_ecc_T_20 | _bank_result_0_3_ecc_T_14; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_3_ecc_WIRE = _bank_result_0_3_ecc_T_21 | _bank_result_0_3_ecc_T_15; // @[Mux.scala 27:73]
  wire [7:0] bank_result_0_3_ecc = _bank_result_0_3_ecc_T_21 | _bank_result_0_3_ecc_T_15; // @[Mux.scala 27:73]
  wire [63:0] bank_result_0_3_raw_data = data_banks_0_3_io_rdata; // @[BankedDataArray.scala 769:25 819:51]
  wire [71:0] ecc_data_3 = {_bank_result_0_3_ecc_WIRE,bank_result_0_3_raw_data}; // @[Cat.scala 31:58]
  reg  ecc_data_delayed_REG_3; // @[BankedDataArray.scala 830:57]
  reg [71:0] ecc_data_delayed_3; // @[Reg.scala 16:16]
  wire [70:0] _bank_result_0_3_error_delayed_syndromeUInt_T = 71'h1ab55555556aaad5b & ecc_data_delayed_3[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_3_error_delayed_syndromeUInt_T_2 = 71'h2cd9999999b33366d & ecc_data_delayed_3[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_3_error_delayed_syndromeUInt_T_4 = 71'h4f1e1e1e1e3c3c78e & ecc_data_delayed_3[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_3_error_delayed_syndromeUInt_T_6 = 71'h801fe01fe03fc07f0 & ecc_data_delayed_3[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_3_error_delayed_syndromeUInt_T_8 = 71'h1001fffe0003fff800 & ecc_data_delayed_3[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_3_error_delayed_syndromeUInt_T_10 = 71'h2001fffffffc000000 & ecc_data_delayed_3[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_3_error_delayed_syndromeUInt_T_12 = 71'h40fe00000000000000 & ecc_data_delayed_3[70:0]; // @[ECC.scala 156:66]
  wire [6:0] bank_result_0_3_error_delayed_syndromeUInt = {^_bank_result_0_3_error_delayed_syndromeUInt_T_12,^
    _bank_result_0_3_error_delayed_syndromeUInt_T_10,^_bank_result_0_3_error_delayed_syndromeUInt_T_8,^
    _bank_result_0_3_error_delayed_syndromeUInt_T_6,^_bank_result_0_3_error_delayed_syndromeUInt_T_4,^
    _bank_result_0_3_error_delayed_syndromeUInt_T_2,^_bank_result_0_3_error_delayed_syndromeUInt_T}; // @[ECC.scala 156:78]
  wire  bank_result_0_3_error_delayed_correctable = |bank_result_0_3_error_delayed_syndromeUInt; // @[ECC.scala 163:36]
  wire  bank_result_0_3_error_delayed_uncorrectable_1 = ^ecc_data_delayed_3; // @[ECC.scala 87:27]
  wire  bank_result_0_3_error_delayed_uncorrectable_2 = ~bank_result_0_3_error_delayed_uncorrectable_1 &
    bank_result_0_3_error_delayed_correctable; // @[ECC.scala 195:47]
  wire  bank_addr_matchs_4_0 = io_read_0_valid & bank_addrs_0_0 == 4'h4; // @[BankedDataArray.scala 790:58]
  wire  bank_addr_matchs_4_1 = io_read_1_valid & bank_addrs_1_0 == 4'h4; // @[BankedDataArray.scala 790:58]
  wire [7:0] _bank_way_en_T_4 = bank_addr_matchs_4_0 ? io_read_0_bits_way_en : io_read_1_bits_way_en; // @[Mux.scala 47:70]
  wire [7:0] bank_way_en_4 = io_readline_valid ? io_readline_bits_way_en : _bank_way_en_T_4; // @[BankedDataArray.scala 798:28]
  reg  bank_way_en_reg_REG_24; // @[BankedDataArray.scala 803:40]
  reg [7:0] bank_way_en_reg_REG_25; // @[BankedDataArray.scala 804:16]
  reg  bank_way_en_reg_REG_26; // @[BankedDataArray.scala 805:65]
  reg [7:0] bank_way_en_reg_REG_27; // @[BankedDataArray.scala 805:97]
  reg [7:0] bank_way_en_reg_REG_29; // @[BankedDataArray.scala 805:97]
  wire [7:0] _bank_way_en_reg_T_4 = bank_way_en_reg_REG_26 ? bank_way_en_reg_REG_27 : bank_way_en_reg_REG_29; // @[Mux.scala 47:70]
  wire [7:0] bank_way_en_reg_4 = bank_way_en_reg_REG_24 ? bank_way_en_reg_REG_25 : _bank_way_en_reg_T_4; // @[BankedDataArray.scala 803:32]
  wire [5:0] _bank_set_addr_T_4 = bank_addr_matchs_4_0 ? set_addrs_0 : set_addrs_1; // @[Mux.scala 47:70]
  wire [5:0] bank_set_addr_4 = io_readline_valid ? line_set_addr : _bank_set_addr_T_4; // @[BankedDataArray.scala 807:30]
  wire [1:0] _read_enable_T_8 = {bank_addr_matchs_4_1,bank_addr_matchs_4_0}; // @[BankedDataArray.scala 812:42]
  wire  read_enable_4 = |_read_enable_T_8 | io_readline_valid; // @[BankedDataArray.scala 812:53]
  wire [7:0] _bank_result_0_4_ecc_T_8 = bank_way_en_reg_4[0] ? ecc_banks_0_4_io_rresp_data_0 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_4_ecc_T_9 = bank_way_en_reg_4[1] ? ecc_banks_0_4_io_rresp_data_1 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_4_ecc_T_10 = bank_way_en_reg_4[2] ? ecc_banks_0_4_io_rresp_data_2 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_4_ecc_T_11 = bank_way_en_reg_4[3] ? ecc_banks_0_4_io_rresp_data_3 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_4_ecc_T_12 = bank_way_en_reg_4[4] ? ecc_banks_0_4_io_rresp_data_4 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_4_ecc_T_13 = bank_way_en_reg_4[5] ? ecc_banks_0_4_io_rresp_data_5 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_4_ecc_T_14 = bank_way_en_reg_4[6] ? ecc_banks_0_4_io_rresp_data_6 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_4_ecc_T_15 = bank_way_en_reg_4[7] ? ecc_banks_0_4_io_rresp_data_7 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_4_ecc_T_16 = _bank_result_0_4_ecc_T_8 | _bank_result_0_4_ecc_T_9; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_4_ecc_T_17 = _bank_result_0_4_ecc_T_16 | _bank_result_0_4_ecc_T_10; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_4_ecc_T_18 = _bank_result_0_4_ecc_T_17 | _bank_result_0_4_ecc_T_11; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_4_ecc_T_19 = _bank_result_0_4_ecc_T_18 | _bank_result_0_4_ecc_T_12; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_4_ecc_T_20 = _bank_result_0_4_ecc_T_19 | _bank_result_0_4_ecc_T_13; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_4_ecc_T_21 = _bank_result_0_4_ecc_T_20 | _bank_result_0_4_ecc_T_14; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_4_ecc_WIRE = _bank_result_0_4_ecc_T_21 | _bank_result_0_4_ecc_T_15; // @[Mux.scala 27:73]
  wire [7:0] bank_result_0_4_ecc = _bank_result_0_4_ecc_T_21 | _bank_result_0_4_ecc_T_15; // @[Mux.scala 27:73]
  wire [63:0] bank_result_0_4_raw_data = data_banks_0_4_io_rdata; // @[BankedDataArray.scala 769:25 819:51]
  wire [71:0] ecc_data_4 = {_bank_result_0_4_ecc_WIRE,bank_result_0_4_raw_data}; // @[Cat.scala 31:58]
  reg  ecc_data_delayed_REG_4; // @[BankedDataArray.scala 830:57]
  reg [71:0] ecc_data_delayed_4; // @[Reg.scala 16:16]
  wire [70:0] _bank_result_0_4_error_delayed_syndromeUInt_T = 71'h1ab55555556aaad5b & ecc_data_delayed_4[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_4_error_delayed_syndromeUInt_T_2 = 71'h2cd9999999b33366d & ecc_data_delayed_4[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_4_error_delayed_syndromeUInt_T_4 = 71'h4f1e1e1e1e3c3c78e & ecc_data_delayed_4[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_4_error_delayed_syndromeUInt_T_6 = 71'h801fe01fe03fc07f0 & ecc_data_delayed_4[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_4_error_delayed_syndromeUInt_T_8 = 71'h1001fffe0003fff800 & ecc_data_delayed_4[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_4_error_delayed_syndromeUInt_T_10 = 71'h2001fffffffc000000 & ecc_data_delayed_4[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_4_error_delayed_syndromeUInt_T_12 = 71'h40fe00000000000000 & ecc_data_delayed_4[70:0]; // @[ECC.scala 156:66]
  wire [6:0] bank_result_0_4_error_delayed_syndromeUInt = {^_bank_result_0_4_error_delayed_syndromeUInt_T_12,^
    _bank_result_0_4_error_delayed_syndromeUInt_T_10,^_bank_result_0_4_error_delayed_syndromeUInt_T_8,^
    _bank_result_0_4_error_delayed_syndromeUInt_T_6,^_bank_result_0_4_error_delayed_syndromeUInt_T_4,^
    _bank_result_0_4_error_delayed_syndromeUInt_T_2,^_bank_result_0_4_error_delayed_syndromeUInt_T}; // @[ECC.scala 156:78]
  wire  bank_result_0_4_error_delayed_correctable = |bank_result_0_4_error_delayed_syndromeUInt; // @[ECC.scala 163:36]
  wire  bank_result_0_4_error_delayed_uncorrectable_1 = ^ecc_data_delayed_4; // @[ECC.scala 87:27]
  wire  bank_result_0_4_error_delayed_uncorrectable_2 = ~bank_result_0_4_error_delayed_uncorrectable_1 &
    bank_result_0_4_error_delayed_correctable; // @[ECC.scala 195:47]
  wire  bank_addr_matchs_5_0 = io_read_0_valid & bank_addrs_0_0 == 4'h5; // @[BankedDataArray.scala 790:58]
  wire  bank_addr_matchs_5_1 = io_read_1_valid & bank_addrs_1_0 == 4'h5; // @[BankedDataArray.scala 790:58]
  wire [7:0] _bank_way_en_T_5 = bank_addr_matchs_5_0 ? io_read_0_bits_way_en : io_read_1_bits_way_en; // @[Mux.scala 47:70]
  wire [7:0] bank_way_en_5 = io_readline_valid ? io_readline_bits_way_en : _bank_way_en_T_5; // @[BankedDataArray.scala 798:28]
  reg  bank_way_en_reg_REG_30; // @[BankedDataArray.scala 803:40]
  reg [7:0] bank_way_en_reg_REG_31; // @[BankedDataArray.scala 804:16]
  reg  bank_way_en_reg_REG_32; // @[BankedDataArray.scala 805:65]
  reg [7:0] bank_way_en_reg_REG_33; // @[BankedDataArray.scala 805:97]
  reg [7:0] bank_way_en_reg_REG_35; // @[BankedDataArray.scala 805:97]
  wire [7:0] _bank_way_en_reg_T_5 = bank_way_en_reg_REG_32 ? bank_way_en_reg_REG_33 : bank_way_en_reg_REG_35; // @[Mux.scala 47:70]
  wire [7:0] bank_way_en_reg_5 = bank_way_en_reg_REG_30 ? bank_way_en_reg_REG_31 : _bank_way_en_reg_T_5; // @[BankedDataArray.scala 803:32]
  wire [5:0] _bank_set_addr_T_5 = bank_addr_matchs_5_0 ? set_addrs_0 : set_addrs_1; // @[Mux.scala 47:70]
  wire [5:0] bank_set_addr_5 = io_readline_valid ? line_set_addr : _bank_set_addr_T_5; // @[BankedDataArray.scala 807:30]
  wire [1:0] _read_enable_T_10 = {bank_addr_matchs_5_1,bank_addr_matchs_5_0}; // @[BankedDataArray.scala 812:42]
  wire  read_enable_5 = |_read_enable_T_10 | io_readline_valid; // @[BankedDataArray.scala 812:53]
  wire [7:0] _bank_result_0_5_ecc_T_8 = bank_way_en_reg_5[0] ? ecc_banks_0_5_io_rresp_data_0 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_5_ecc_T_9 = bank_way_en_reg_5[1] ? ecc_banks_0_5_io_rresp_data_1 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_5_ecc_T_10 = bank_way_en_reg_5[2] ? ecc_banks_0_5_io_rresp_data_2 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_5_ecc_T_11 = bank_way_en_reg_5[3] ? ecc_banks_0_5_io_rresp_data_3 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_5_ecc_T_12 = bank_way_en_reg_5[4] ? ecc_banks_0_5_io_rresp_data_4 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_5_ecc_T_13 = bank_way_en_reg_5[5] ? ecc_banks_0_5_io_rresp_data_5 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_5_ecc_T_14 = bank_way_en_reg_5[6] ? ecc_banks_0_5_io_rresp_data_6 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_5_ecc_T_15 = bank_way_en_reg_5[7] ? ecc_banks_0_5_io_rresp_data_7 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_5_ecc_T_16 = _bank_result_0_5_ecc_T_8 | _bank_result_0_5_ecc_T_9; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_5_ecc_T_17 = _bank_result_0_5_ecc_T_16 | _bank_result_0_5_ecc_T_10; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_5_ecc_T_18 = _bank_result_0_5_ecc_T_17 | _bank_result_0_5_ecc_T_11; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_5_ecc_T_19 = _bank_result_0_5_ecc_T_18 | _bank_result_0_5_ecc_T_12; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_5_ecc_T_20 = _bank_result_0_5_ecc_T_19 | _bank_result_0_5_ecc_T_13; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_5_ecc_T_21 = _bank_result_0_5_ecc_T_20 | _bank_result_0_5_ecc_T_14; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_5_ecc_WIRE = _bank_result_0_5_ecc_T_21 | _bank_result_0_5_ecc_T_15; // @[Mux.scala 27:73]
  wire [7:0] bank_result_0_5_ecc = _bank_result_0_5_ecc_T_21 | _bank_result_0_5_ecc_T_15; // @[Mux.scala 27:73]
  wire [63:0] bank_result_0_5_raw_data = data_banks_0_5_io_rdata; // @[BankedDataArray.scala 769:25 819:51]
  wire [71:0] ecc_data_5 = {_bank_result_0_5_ecc_WIRE,bank_result_0_5_raw_data}; // @[Cat.scala 31:58]
  reg  ecc_data_delayed_REG_5; // @[BankedDataArray.scala 830:57]
  reg [71:0] ecc_data_delayed_5; // @[Reg.scala 16:16]
  wire [70:0] _bank_result_0_5_error_delayed_syndromeUInt_T = 71'h1ab55555556aaad5b & ecc_data_delayed_5[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_5_error_delayed_syndromeUInt_T_2 = 71'h2cd9999999b33366d & ecc_data_delayed_5[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_5_error_delayed_syndromeUInt_T_4 = 71'h4f1e1e1e1e3c3c78e & ecc_data_delayed_5[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_5_error_delayed_syndromeUInt_T_6 = 71'h801fe01fe03fc07f0 & ecc_data_delayed_5[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_5_error_delayed_syndromeUInt_T_8 = 71'h1001fffe0003fff800 & ecc_data_delayed_5[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_5_error_delayed_syndromeUInt_T_10 = 71'h2001fffffffc000000 & ecc_data_delayed_5[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_5_error_delayed_syndromeUInt_T_12 = 71'h40fe00000000000000 & ecc_data_delayed_5[70:0]; // @[ECC.scala 156:66]
  wire [6:0] bank_result_0_5_error_delayed_syndromeUInt = {^_bank_result_0_5_error_delayed_syndromeUInt_T_12,^
    _bank_result_0_5_error_delayed_syndromeUInt_T_10,^_bank_result_0_5_error_delayed_syndromeUInt_T_8,^
    _bank_result_0_5_error_delayed_syndromeUInt_T_6,^_bank_result_0_5_error_delayed_syndromeUInt_T_4,^
    _bank_result_0_5_error_delayed_syndromeUInt_T_2,^_bank_result_0_5_error_delayed_syndromeUInt_T}; // @[ECC.scala 156:78]
  wire  bank_result_0_5_error_delayed_correctable = |bank_result_0_5_error_delayed_syndromeUInt; // @[ECC.scala 163:36]
  wire  bank_result_0_5_error_delayed_uncorrectable_1 = ^ecc_data_delayed_5; // @[ECC.scala 87:27]
  wire  bank_result_0_5_error_delayed_uncorrectable_2 = ~bank_result_0_5_error_delayed_uncorrectable_1 &
    bank_result_0_5_error_delayed_correctable; // @[ECC.scala 195:47]
  wire  bank_addr_matchs_6_0 = io_read_0_valid & bank_addrs_0_0 == 4'h6; // @[BankedDataArray.scala 790:58]
  wire  bank_addr_matchs_6_1 = io_read_1_valid & bank_addrs_1_0 == 4'h6; // @[BankedDataArray.scala 790:58]
  wire [7:0] _bank_way_en_T_6 = bank_addr_matchs_6_0 ? io_read_0_bits_way_en : io_read_1_bits_way_en; // @[Mux.scala 47:70]
  wire [7:0] bank_way_en_6 = io_readline_valid ? io_readline_bits_way_en : _bank_way_en_T_6; // @[BankedDataArray.scala 798:28]
  reg  bank_way_en_reg_REG_36; // @[BankedDataArray.scala 803:40]
  reg [7:0] bank_way_en_reg_REG_37; // @[BankedDataArray.scala 804:16]
  reg  bank_way_en_reg_REG_38; // @[BankedDataArray.scala 805:65]
  reg [7:0] bank_way_en_reg_REG_39; // @[BankedDataArray.scala 805:97]
  reg [7:0] bank_way_en_reg_REG_41; // @[BankedDataArray.scala 805:97]
  wire [7:0] _bank_way_en_reg_T_6 = bank_way_en_reg_REG_38 ? bank_way_en_reg_REG_39 : bank_way_en_reg_REG_41; // @[Mux.scala 47:70]
  wire [7:0] bank_way_en_reg_6 = bank_way_en_reg_REG_36 ? bank_way_en_reg_REG_37 : _bank_way_en_reg_T_6; // @[BankedDataArray.scala 803:32]
  wire [5:0] _bank_set_addr_T_6 = bank_addr_matchs_6_0 ? set_addrs_0 : set_addrs_1; // @[Mux.scala 47:70]
  wire [5:0] bank_set_addr_6 = io_readline_valid ? line_set_addr : _bank_set_addr_T_6; // @[BankedDataArray.scala 807:30]
  wire [1:0] _read_enable_T_12 = {bank_addr_matchs_6_1,bank_addr_matchs_6_0}; // @[BankedDataArray.scala 812:42]
  wire  read_enable_6 = |_read_enable_T_12 | io_readline_valid; // @[BankedDataArray.scala 812:53]
  wire [7:0] _bank_result_0_6_ecc_T_8 = bank_way_en_reg_6[0] ? ecc_banks_0_6_io_rresp_data_0 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_6_ecc_T_9 = bank_way_en_reg_6[1] ? ecc_banks_0_6_io_rresp_data_1 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_6_ecc_T_10 = bank_way_en_reg_6[2] ? ecc_banks_0_6_io_rresp_data_2 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_6_ecc_T_11 = bank_way_en_reg_6[3] ? ecc_banks_0_6_io_rresp_data_3 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_6_ecc_T_12 = bank_way_en_reg_6[4] ? ecc_banks_0_6_io_rresp_data_4 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_6_ecc_T_13 = bank_way_en_reg_6[5] ? ecc_banks_0_6_io_rresp_data_5 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_6_ecc_T_14 = bank_way_en_reg_6[6] ? ecc_banks_0_6_io_rresp_data_6 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_6_ecc_T_15 = bank_way_en_reg_6[7] ? ecc_banks_0_6_io_rresp_data_7 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_6_ecc_T_16 = _bank_result_0_6_ecc_T_8 | _bank_result_0_6_ecc_T_9; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_6_ecc_T_17 = _bank_result_0_6_ecc_T_16 | _bank_result_0_6_ecc_T_10; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_6_ecc_T_18 = _bank_result_0_6_ecc_T_17 | _bank_result_0_6_ecc_T_11; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_6_ecc_T_19 = _bank_result_0_6_ecc_T_18 | _bank_result_0_6_ecc_T_12; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_6_ecc_T_20 = _bank_result_0_6_ecc_T_19 | _bank_result_0_6_ecc_T_13; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_6_ecc_T_21 = _bank_result_0_6_ecc_T_20 | _bank_result_0_6_ecc_T_14; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_6_ecc_WIRE = _bank_result_0_6_ecc_T_21 | _bank_result_0_6_ecc_T_15; // @[Mux.scala 27:73]
  wire [7:0] bank_result_0_6_ecc = _bank_result_0_6_ecc_T_21 | _bank_result_0_6_ecc_T_15; // @[Mux.scala 27:73]
  wire [63:0] bank_result_0_6_raw_data = data_banks_0_6_io_rdata; // @[BankedDataArray.scala 769:25 819:51]
  wire [71:0] ecc_data_6 = {_bank_result_0_6_ecc_WIRE,bank_result_0_6_raw_data}; // @[Cat.scala 31:58]
  reg  ecc_data_delayed_REG_6; // @[BankedDataArray.scala 830:57]
  reg [71:0] ecc_data_delayed_6; // @[Reg.scala 16:16]
  wire [70:0] _bank_result_0_6_error_delayed_syndromeUInt_T = 71'h1ab55555556aaad5b & ecc_data_delayed_6[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_6_error_delayed_syndromeUInt_T_2 = 71'h2cd9999999b33366d & ecc_data_delayed_6[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_6_error_delayed_syndromeUInt_T_4 = 71'h4f1e1e1e1e3c3c78e & ecc_data_delayed_6[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_6_error_delayed_syndromeUInt_T_6 = 71'h801fe01fe03fc07f0 & ecc_data_delayed_6[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_6_error_delayed_syndromeUInt_T_8 = 71'h1001fffe0003fff800 & ecc_data_delayed_6[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_6_error_delayed_syndromeUInt_T_10 = 71'h2001fffffffc000000 & ecc_data_delayed_6[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_6_error_delayed_syndromeUInt_T_12 = 71'h40fe00000000000000 & ecc_data_delayed_6[70:0]; // @[ECC.scala 156:66]
  wire [6:0] bank_result_0_6_error_delayed_syndromeUInt = {^_bank_result_0_6_error_delayed_syndromeUInt_T_12,^
    _bank_result_0_6_error_delayed_syndromeUInt_T_10,^_bank_result_0_6_error_delayed_syndromeUInt_T_8,^
    _bank_result_0_6_error_delayed_syndromeUInt_T_6,^_bank_result_0_6_error_delayed_syndromeUInt_T_4,^
    _bank_result_0_6_error_delayed_syndromeUInt_T_2,^_bank_result_0_6_error_delayed_syndromeUInt_T}; // @[ECC.scala 156:78]
  wire  bank_result_0_6_error_delayed_correctable = |bank_result_0_6_error_delayed_syndromeUInt; // @[ECC.scala 163:36]
  wire  bank_result_0_6_error_delayed_uncorrectable_1 = ^ecc_data_delayed_6; // @[ECC.scala 87:27]
  wire  bank_result_0_6_error_delayed_uncorrectable_2 = ~bank_result_0_6_error_delayed_uncorrectable_1 &
    bank_result_0_6_error_delayed_correctable; // @[ECC.scala 195:47]
  wire  bank_addr_matchs_7_0 = io_read_0_valid & bank_addrs_0_0 == 4'h7; // @[BankedDataArray.scala 790:58]
  wire  bank_addr_matchs_7_1 = io_read_1_valid & bank_addrs_1_0 == 4'h7; // @[BankedDataArray.scala 790:58]
  wire [7:0] _bank_way_en_T_7 = bank_addr_matchs_7_0 ? io_read_0_bits_way_en : io_read_1_bits_way_en; // @[Mux.scala 47:70]
  wire [7:0] bank_way_en_7 = io_readline_valid ? io_readline_bits_way_en : _bank_way_en_T_7; // @[BankedDataArray.scala 798:28]
  reg  bank_way_en_reg_REG_42; // @[BankedDataArray.scala 803:40]
  reg [7:0] bank_way_en_reg_REG_43; // @[BankedDataArray.scala 804:16]
  reg  bank_way_en_reg_REG_44; // @[BankedDataArray.scala 805:65]
  reg [7:0] bank_way_en_reg_REG_45; // @[BankedDataArray.scala 805:97]
  reg [7:0] bank_way_en_reg_REG_47; // @[BankedDataArray.scala 805:97]
  wire [7:0] _bank_way_en_reg_T_7 = bank_way_en_reg_REG_44 ? bank_way_en_reg_REG_45 : bank_way_en_reg_REG_47; // @[Mux.scala 47:70]
  wire [7:0] bank_way_en_reg_7 = bank_way_en_reg_REG_42 ? bank_way_en_reg_REG_43 : _bank_way_en_reg_T_7; // @[BankedDataArray.scala 803:32]
  wire [5:0] _bank_set_addr_T_7 = bank_addr_matchs_7_0 ? set_addrs_0 : set_addrs_1; // @[Mux.scala 47:70]
  wire [5:0] bank_set_addr_7 = io_readline_valid ? line_set_addr : _bank_set_addr_T_7; // @[BankedDataArray.scala 807:30]
  wire [1:0] _read_enable_T_14 = {bank_addr_matchs_7_1,bank_addr_matchs_7_0}; // @[BankedDataArray.scala 812:42]
  wire  read_enable_7 = |_read_enable_T_14 | io_readline_valid; // @[BankedDataArray.scala 812:53]
  wire [7:0] _bank_result_0_7_ecc_T_8 = bank_way_en_reg_7[0] ? ecc_banks_0_7_io_rresp_data_0 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_7_ecc_T_9 = bank_way_en_reg_7[1] ? ecc_banks_0_7_io_rresp_data_1 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_7_ecc_T_10 = bank_way_en_reg_7[2] ? ecc_banks_0_7_io_rresp_data_2 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_7_ecc_T_11 = bank_way_en_reg_7[3] ? ecc_banks_0_7_io_rresp_data_3 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_7_ecc_T_12 = bank_way_en_reg_7[4] ? ecc_banks_0_7_io_rresp_data_4 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_7_ecc_T_13 = bank_way_en_reg_7[5] ? ecc_banks_0_7_io_rresp_data_5 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_7_ecc_T_14 = bank_way_en_reg_7[6] ? ecc_banks_0_7_io_rresp_data_6 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_7_ecc_T_15 = bank_way_en_reg_7[7] ? ecc_banks_0_7_io_rresp_data_7 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_7_ecc_T_16 = _bank_result_0_7_ecc_T_8 | _bank_result_0_7_ecc_T_9; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_7_ecc_T_17 = _bank_result_0_7_ecc_T_16 | _bank_result_0_7_ecc_T_10; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_7_ecc_T_18 = _bank_result_0_7_ecc_T_17 | _bank_result_0_7_ecc_T_11; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_7_ecc_T_19 = _bank_result_0_7_ecc_T_18 | _bank_result_0_7_ecc_T_12; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_7_ecc_T_20 = _bank_result_0_7_ecc_T_19 | _bank_result_0_7_ecc_T_13; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_7_ecc_T_21 = _bank_result_0_7_ecc_T_20 | _bank_result_0_7_ecc_T_14; // @[Mux.scala 27:73]
  wire [7:0] _bank_result_0_7_ecc_WIRE = _bank_result_0_7_ecc_T_21 | _bank_result_0_7_ecc_T_15; // @[Mux.scala 27:73]
  wire [7:0] bank_result_0_7_ecc = _bank_result_0_7_ecc_T_21 | _bank_result_0_7_ecc_T_15; // @[Mux.scala 27:73]
  wire [63:0] bank_result_0_7_raw_data = data_banks_0_7_io_rdata; // @[BankedDataArray.scala 769:25 819:51]
  wire [71:0] ecc_data_7 = {_bank_result_0_7_ecc_WIRE,bank_result_0_7_raw_data}; // @[Cat.scala 31:58]
  reg  ecc_data_delayed_REG_7; // @[BankedDataArray.scala 830:57]
  reg [71:0] ecc_data_delayed_7; // @[Reg.scala 16:16]
  wire [70:0] _bank_result_0_7_error_delayed_syndromeUInt_T = 71'h1ab55555556aaad5b & ecc_data_delayed_7[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_7_error_delayed_syndromeUInt_T_2 = 71'h2cd9999999b33366d & ecc_data_delayed_7[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_7_error_delayed_syndromeUInt_T_4 = 71'h4f1e1e1e1e3c3c78e & ecc_data_delayed_7[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_7_error_delayed_syndromeUInt_T_6 = 71'h801fe01fe03fc07f0 & ecc_data_delayed_7[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_7_error_delayed_syndromeUInt_T_8 = 71'h1001fffe0003fff800 & ecc_data_delayed_7[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_7_error_delayed_syndromeUInt_T_10 = 71'h2001fffffffc000000 & ecc_data_delayed_7[70:0]; // @[ECC.scala 156:66]
  wire [70:0] _bank_result_0_7_error_delayed_syndromeUInt_T_12 = 71'h40fe00000000000000 & ecc_data_delayed_7[70:0]; // @[ECC.scala 156:66]
  wire [6:0] bank_result_0_7_error_delayed_syndromeUInt = {^_bank_result_0_7_error_delayed_syndromeUInt_T_12,^
    _bank_result_0_7_error_delayed_syndromeUInt_T_10,^_bank_result_0_7_error_delayed_syndromeUInt_T_8,^
    _bank_result_0_7_error_delayed_syndromeUInt_T_6,^_bank_result_0_7_error_delayed_syndromeUInt_T_4,^
    _bank_result_0_7_error_delayed_syndromeUInt_T_2,^_bank_result_0_7_error_delayed_syndromeUInt_T}; // @[ECC.scala 156:78]
  wire  bank_result_0_7_error_delayed_correctable = |bank_result_0_7_error_delayed_syndromeUInt; // @[ECC.scala 163:36]
  wire  bank_result_0_7_error_delayed_uncorrectable_1 = ^ecc_data_delayed_7; // @[ECC.scala 87:27]
  wire  bank_result_0_7_error_delayed_uncorrectable_2 = ~bank_result_0_7_error_delayed_uncorrectable_1 &
    bank_result_0_7_error_delayed_correctable; // @[ECC.scala 195:47]
  reg [63:0] bank_result_delayed_0_0_raw_data; // @[BankedDataArray.scala 846:36]
  reg [63:0] bank_result_delayed_0_1_raw_data; // @[BankedDataArray.scala 846:36]
  reg [63:0] bank_result_delayed_0_2_raw_data; // @[BankedDataArray.scala 846:36]
  reg [63:0] bank_result_delayed_0_3_raw_data; // @[BankedDataArray.scala 846:36]
  reg [63:0] bank_result_delayed_0_4_raw_data; // @[BankedDataArray.scala 846:36]
  reg [63:0] bank_result_delayed_0_5_raw_data; // @[BankedDataArray.scala 846:36]
  reg [63:0] bank_result_delayed_0_6_raw_data; // @[BankedDataArray.scala 846:36]
  reg [63:0] bank_result_delayed_0_7_raw_data; // @[BankedDataArray.scala 846:36]
  reg  rr_read_fire_REG; // @[BankedDataArray.scala 848:39]
  reg  rr_read_fire; // @[BankedDataArray.scala 848:31]
  reg [3:0] rr_bank_addr_REG__0; // @[BankedDataArray.scala 850:39]
  reg [3:0] rr_bank_addr__0; // @[BankedDataArray.scala 850:31]
  wire [63:0] _GEN_17 = 3'h1 == rr_bank_addr__0[2:0] ? bank_result_delayed_0_1_raw_data :
    bank_result_delayed_0_0_raw_data; // @[BankedDataArray.scala 853:{34,34}]
  wire [63:0] _GEN_18 = 3'h2 == rr_bank_addr__0[2:0] ? bank_result_delayed_0_2_raw_data : _GEN_17; // @[BankedDataArray.scala 853:{34,34}]
  wire [63:0] _GEN_19 = 3'h3 == rr_bank_addr__0[2:0] ? bank_result_delayed_0_3_raw_data : _GEN_18; // @[BankedDataArray.scala 853:{34,34}]
  wire [63:0] _GEN_20 = 3'h4 == rr_bank_addr__0[2:0] ? bank_result_delayed_0_4_raw_data : _GEN_19; // @[BankedDataArray.scala 853:{34,34}]
  wire [63:0] _GEN_21 = 3'h5 == rr_bank_addr__0[2:0] ? bank_result_delayed_0_5_raw_data : _GEN_20; // @[BankedDataArray.scala 853:{34,34}]
  wire [63:0] _GEN_22 = 3'h6 == rr_bank_addr__0[2:0] ? bank_result_delayed_0_6_raw_data : _GEN_21; // @[BankedDataArray.scala 853:{34,34}]
  wire  bank_result_0_0_error_delayed = bank_result_0_0_error_delayed_uncorrectable_1 |
    bank_result_0_0_error_delayed_uncorrectable_2; // @[ECC.scala 31:27]
  wire  read_bank_error_delayed_0_0 = bank_result_0_0_error_delayed; // @[BankedDataArray.scala 771:37 832:54]
  wire  bank_result_0_1_error_delayed = bank_result_0_1_error_delayed_uncorrectable_1 |
    bank_result_0_1_error_delayed_uncorrectable_2; // @[ECC.scala 31:27]
  wire  read_bank_error_delayed_0_1 = bank_result_0_1_error_delayed; // @[BankedDataArray.scala 771:37 832:54]
  wire  _GEN_33 = 3'h1 == rr_bank_addr__0[2:0] ? read_bank_error_delayed_0_1 : read_bank_error_delayed_0_0; // @[BankedDataArray.scala 855:{51,51}]
  wire  bank_result_0_2_error_delayed = bank_result_0_2_error_delayed_uncorrectable_1 |
    bank_result_0_2_error_delayed_uncorrectable_2; // @[ECC.scala 31:27]
  wire  read_bank_error_delayed_0_2 = bank_result_0_2_error_delayed; // @[BankedDataArray.scala 771:37 832:54]
  wire  _GEN_34 = 3'h2 == rr_bank_addr__0[2:0] ? read_bank_error_delayed_0_2 : _GEN_33; // @[BankedDataArray.scala 855:{51,51}]
  wire  bank_result_0_3_error_delayed = bank_result_0_3_error_delayed_uncorrectable_1 |
    bank_result_0_3_error_delayed_uncorrectable_2; // @[ECC.scala 31:27]
  wire  read_bank_error_delayed_0_3 = bank_result_0_3_error_delayed; // @[BankedDataArray.scala 771:37 832:54]
  wire  _GEN_35 = 3'h3 == rr_bank_addr__0[2:0] ? read_bank_error_delayed_0_3 : _GEN_34; // @[BankedDataArray.scala 855:{51,51}]
  wire  bank_result_0_4_error_delayed = bank_result_0_4_error_delayed_uncorrectable_1 |
    bank_result_0_4_error_delayed_uncorrectable_2; // @[ECC.scala 31:27]
  wire  read_bank_error_delayed_0_4 = bank_result_0_4_error_delayed; // @[BankedDataArray.scala 771:37 832:54]
  wire  _GEN_36 = 3'h4 == rr_bank_addr__0[2:0] ? read_bank_error_delayed_0_4 : _GEN_35; // @[BankedDataArray.scala 855:{51,51}]
  wire  bank_result_0_5_error_delayed = bank_result_0_5_error_delayed_uncorrectable_1 |
    bank_result_0_5_error_delayed_uncorrectable_2; // @[ECC.scala 31:27]
  wire  read_bank_error_delayed_0_5 = bank_result_0_5_error_delayed; // @[BankedDataArray.scala 771:37 832:54]
  wire  _GEN_37 = 3'h5 == rr_bank_addr__0[2:0] ? read_bank_error_delayed_0_5 : _GEN_36; // @[BankedDataArray.scala 855:{51,51}]
  wire  bank_result_0_6_error_delayed = bank_result_0_6_error_delayed_uncorrectable_1 |
    bank_result_0_6_error_delayed_uncorrectable_2; // @[ECC.scala 31:27]
  wire  read_bank_error_delayed_0_6 = bank_result_0_6_error_delayed; // @[BankedDataArray.scala 771:37 832:54]
  wire  _GEN_38 = 3'h6 == rr_bank_addr__0[2:0] ? read_bank_error_delayed_0_6 : _GEN_37; // @[BankedDataArray.scala 855:{51,51}]
  wire  bank_result_0_7_error_delayed = bank_result_0_7_error_delayed_uncorrectable_1 |
    bank_result_0_7_error_delayed_uncorrectable_2; // @[ECC.scala 31:27]
  wire  read_bank_error_delayed_0_7 = bank_result_0_7_error_delayed; // @[BankedDataArray.scala 771:37 832:54]
  wire  _GEN_39 = 3'h7 == rr_bank_addr__0[2:0] ? read_bank_error_delayed_0_7 : _GEN_38; // @[BankedDataArray.scala 855:{51,51}]
  reg  io_read_error_delayed_0_0_REG; // @[BankedDataArray.scala 855:119]
  reg  rr_read_fire_REG_1; // @[BankedDataArray.scala 848:39]
  reg  rr_read_fire_1; // @[BankedDataArray.scala 848:31]
  reg [3:0] rr_bank_addr_REG_1_0; // @[BankedDataArray.scala 850:39]
  reg [3:0] rr_bank_addr_1_0; // @[BankedDataArray.scala 850:31]
  wire [63:0] _GEN_81 = 3'h1 == rr_bank_addr_1_0[2:0] ? bank_result_delayed_0_1_raw_data :
    bank_result_delayed_0_0_raw_data; // @[BankedDataArray.scala 853:{34,34}]
  wire [63:0] _GEN_82 = 3'h2 == rr_bank_addr_1_0[2:0] ? bank_result_delayed_0_2_raw_data : _GEN_81; // @[BankedDataArray.scala 853:{34,34}]
  wire [63:0] _GEN_83 = 3'h3 == rr_bank_addr_1_0[2:0] ? bank_result_delayed_0_3_raw_data : _GEN_82; // @[BankedDataArray.scala 853:{34,34}]
  wire [63:0] _GEN_84 = 3'h4 == rr_bank_addr_1_0[2:0] ? bank_result_delayed_0_4_raw_data : _GEN_83; // @[BankedDataArray.scala 853:{34,34}]
  wire [63:0] _GEN_85 = 3'h5 == rr_bank_addr_1_0[2:0] ? bank_result_delayed_0_5_raw_data : _GEN_84; // @[BankedDataArray.scala 853:{34,34}]
  wire [63:0] _GEN_86 = 3'h6 == rr_bank_addr_1_0[2:0] ? bank_result_delayed_0_6_raw_data : _GEN_85; // @[BankedDataArray.scala 853:{34,34}]
  wire  _GEN_97 = 3'h1 == rr_bank_addr_1_0[2:0] ? read_bank_error_delayed_0_1 : read_bank_error_delayed_0_0; // @[BankedDataArray.scala 855:{51,51}]
  wire  _GEN_98 = 3'h2 == rr_bank_addr_1_0[2:0] ? read_bank_error_delayed_0_2 : _GEN_97; // @[BankedDataArray.scala 855:{51,51}]
  wire  _GEN_99 = 3'h3 == rr_bank_addr_1_0[2:0] ? read_bank_error_delayed_0_3 : _GEN_98; // @[BankedDataArray.scala 855:{51,51}]
  wire  _GEN_100 = 3'h4 == rr_bank_addr_1_0[2:0] ? read_bank_error_delayed_0_4 : _GEN_99; // @[BankedDataArray.scala 855:{51,51}]
  wire  _GEN_101 = 3'h5 == rr_bank_addr_1_0[2:0] ? read_bank_error_delayed_0_5 : _GEN_100; // @[BankedDataArray.scala 855:{51,51}]
  wire  _GEN_102 = 3'h6 == rr_bank_addr_1_0[2:0] ? read_bank_error_delayed_0_6 : _GEN_101; // @[BankedDataArray.scala 855:{51,51}]
  wire  _GEN_103 = 3'h7 == rr_bank_addr_1_0[2:0] ? read_bank_error_delayed_0_7 : _GEN_102; // @[BankedDataArray.scala 855:{51,51}]
  reg  io_read_error_delayed_1_0_REG; // @[BankedDataArray.scala 855:119]
  reg  io_readline_error_delayed_REG; // @[BankedDataArray.scala 861:47]
  reg  io_readline_error_delayed_REG_1; // @[BankedDataArray.scala 861:39]
  wire [7:0] _io_readline_error_delayed_T_1 = {io_readline_resp_7_error_delayed,io_readline_resp_6_error_delayed,
    io_readline_resp_5_error_delayed,io_readline_resp_4_error_delayed,io_readline_resp_3_error_delayed,
    io_readline_resp_2_error_delayed,io_readline_resp_1_error_delayed,io_readline_resp_0_error_delayed}; // @[BankedDataArray.scala 862:86]
  wire  _io_readline_error_delayed_T_2 = |_io_readline_error_delayed_T_1; // @[BankedDataArray.scala 862:89]
  wire  wen_reg = write_bank_mask_reg[0] & write_valid_dup_reg_0; // @[BankedDataArray.scala 868:53]
  wire [63:0] _x14_syndromeUInt_T = 64'hab55555556aaad5b & io_write_bits_data_0; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_1 = ^_x14_syndromeUInt_T; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_3 = 64'hcd9999999b33366d & io_write_bits_data_0; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_4 = ^_x14_syndromeUInt_T_3; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_6 = 64'hf1e1e1e1e3c3c78e & io_write_bits_data_0; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_7 = ^_x14_syndromeUInt_T_6; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_9 = 64'h1fe01fe03fc07f0 & io_write_bits_data_0; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_10 = ^_x14_syndromeUInt_T_9; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_12 = 64'h1fffe0003fff800 & io_write_bits_data_0; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_13 = ^_x14_syndromeUInt_T_12; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_15 = 64'h1fffffffc000000 & io_write_bits_data_0; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_16 = ^_x14_syndromeUInt_T_15; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_18 = 64'hfe00000000000000 & io_write_bits_data_0; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_19 = ^_x14_syndromeUInt_T_18; // @[ECC.scala 147:79]
  wire [70:0] _x14_T = {_x14_syndromeUInt_T_19,_x14_syndromeUInt_T_16,_x14_syndromeUInt_T_13,_x14_syndromeUInt_T_10,
    _x14_syndromeUInt_T_7,_x14_syndromeUInt_T_4,_x14_syndromeUInt_T_1,io_write_bits_data_0}; // @[Cat.scala 31:58]
  wire  _x14_T_1 = ^_x14_T; // @[ECC.scala 81:55]
  wire [71:0] _x14_T_3 = {_x14_T_1,_x14_syndromeUInt_T_19,_x14_syndromeUInt_T_16,_x14_syndromeUInt_T_13,
    _x14_syndromeUInt_T_10,_x14_syndromeUInt_T_7,_x14_syndromeUInt_T_4,_x14_syndromeUInt_T_1,io_write_bits_data_0}; // @[Cat.scala 31:58]
  reg [7:0] x14; // @[BankedDataArray.scala 882:23]
  wire  wen_reg_1 = write_bank_mask_reg[1] & write_valid_dup_reg_1; // @[BankedDataArray.scala 868:53]
  wire [63:0] _x14_syndromeUInt_T_21 = 64'hab55555556aaad5b & io_write_bits_data_1; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_22 = ^_x14_syndromeUInt_T_21; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_24 = 64'hcd9999999b33366d & io_write_bits_data_1; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_25 = ^_x14_syndromeUInt_T_24; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_27 = 64'hf1e1e1e1e3c3c78e & io_write_bits_data_1; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_28 = ^_x14_syndromeUInt_T_27; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_30 = 64'h1fe01fe03fc07f0 & io_write_bits_data_1; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_31 = ^_x14_syndromeUInt_T_30; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_33 = 64'h1fffe0003fff800 & io_write_bits_data_1; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_34 = ^_x14_syndromeUInt_T_33; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_36 = 64'h1fffffffc000000 & io_write_bits_data_1; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_37 = ^_x14_syndromeUInt_T_36; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_39 = 64'hfe00000000000000 & io_write_bits_data_1; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_40 = ^_x14_syndromeUInt_T_39; // @[ECC.scala 147:79]
  wire [70:0] _x14_T_6 = {_x14_syndromeUInt_T_40,_x14_syndromeUInt_T_37,_x14_syndromeUInt_T_34,_x14_syndromeUInt_T_31,
    _x14_syndromeUInt_T_28,_x14_syndromeUInt_T_25,_x14_syndromeUInt_T_22,io_write_bits_data_1}; // @[Cat.scala 31:58]
  wire  _x14_T_7 = ^_x14_T_6; // @[ECC.scala 81:55]
  wire [71:0] _x14_T_9 = {_x14_T_7,_x14_syndromeUInt_T_40,_x14_syndromeUInt_T_37,_x14_syndromeUInt_T_34,
    _x14_syndromeUInt_T_31,_x14_syndromeUInt_T_28,_x14_syndromeUInt_T_25,_x14_syndromeUInt_T_22,io_write_bits_data_1}; // @[Cat.scala 31:58]
  reg [7:0] x14_1; // @[BankedDataArray.scala 882:23]
  wire  wen_reg_2 = write_bank_mask_reg[2] & write_valid_dup_reg_2; // @[BankedDataArray.scala 868:53]
  wire [63:0] _x14_syndromeUInt_T_42 = 64'hab55555556aaad5b & io_write_bits_data_2; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_43 = ^_x14_syndromeUInt_T_42; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_45 = 64'hcd9999999b33366d & io_write_bits_data_2; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_46 = ^_x14_syndromeUInt_T_45; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_48 = 64'hf1e1e1e1e3c3c78e & io_write_bits_data_2; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_49 = ^_x14_syndromeUInt_T_48; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_51 = 64'h1fe01fe03fc07f0 & io_write_bits_data_2; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_52 = ^_x14_syndromeUInt_T_51; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_54 = 64'h1fffe0003fff800 & io_write_bits_data_2; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_55 = ^_x14_syndromeUInt_T_54; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_57 = 64'h1fffffffc000000 & io_write_bits_data_2; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_58 = ^_x14_syndromeUInt_T_57; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_60 = 64'hfe00000000000000 & io_write_bits_data_2; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_61 = ^_x14_syndromeUInt_T_60; // @[ECC.scala 147:79]
  wire [70:0] _x14_T_12 = {_x14_syndromeUInt_T_61,_x14_syndromeUInt_T_58,_x14_syndromeUInt_T_55,_x14_syndromeUInt_T_52,
    _x14_syndromeUInt_T_49,_x14_syndromeUInt_T_46,_x14_syndromeUInt_T_43,io_write_bits_data_2}; // @[Cat.scala 31:58]
  wire  _x14_T_13 = ^_x14_T_12; // @[ECC.scala 81:55]
  wire [71:0] _x14_T_15 = {_x14_T_13,_x14_syndromeUInt_T_61,_x14_syndromeUInt_T_58,_x14_syndromeUInt_T_55,
    _x14_syndromeUInt_T_52,_x14_syndromeUInt_T_49,_x14_syndromeUInt_T_46,_x14_syndromeUInt_T_43,io_write_bits_data_2}; // @[Cat.scala 31:58]
  reg [7:0] x14_2; // @[BankedDataArray.scala 882:23]
  wire  wen_reg_3 = write_bank_mask_reg[3] & write_valid_dup_reg_3; // @[BankedDataArray.scala 868:53]
  wire [63:0] _x14_syndromeUInt_T_63 = 64'hab55555556aaad5b & io_write_bits_data_3; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_64 = ^_x14_syndromeUInt_T_63; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_66 = 64'hcd9999999b33366d & io_write_bits_data_3; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_67 = ^_x14_syndromeUInt_T_66; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_69 = 64'hf1e1e1e1e3c3c78e & io_write_bits_data_3; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_70 = ^_x14_syndromeUInt_T_69; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_72 = 64'h1fe01fe03fc07f0 & io_write_bits_data_3; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_73 = ^_x14_syndromeUInt_T_72; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_75 = 64'h1fffe0003fff800 & io_write_bits_data_3; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_76 = ^_x14_syndromeUInt_T_75; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_78 = 64'h1fffffffc000000 & io_write_bits_data_3; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_79 = ^_x14_syndromeUInt_T_78; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_81 = 64'hfe00000000000000 & io_write_bits_data_3; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_82 = ^_x14_syndromeUInt_T_81; // @[ECC.scala 147:79]
  wire [70:0] _x14_T_18 = {_x14_syndromeUInt_T_82,_x14_syndromeUInt_T_79,_x14_syndromeUInt_T_76,_x14_syndromeUInt_T_73,
    _x14_syndromeUInt_T_70,_x14_syndromeUInt_T_67,_x14_syndromeUInt_T_64,io_write_bits_data_3}; // @[Cat.scala 31:58]
  wire  _x14_T_19 = ^_x14_T_18; // @[ECC.scala 81:55]
  wire [71:0] _x14_T_21 = {_x14_T_19,_x14_syndromeUInt_T_82,_x14_syndromeUInt_T_79,_x14_syndromeUInt_T_76,
    _x14_syndromeUInt_T_73,_x14_syndromeUInt_T_70,_x14_syndromeUInt_T_67,_x14_syndromeUInt_T_64,io_write_bits_data_3}; // @[Cat.scala 31:58]
  reg [7:0] x14_3; // @[BankedDataArray.scala 882:23]
  wire  wen_reg_4 = write_bank_mask_reg[4] & write_valid_dup_reg_4; // @[BankedDataArray.scala 868:53]
  wire [63:0] _x14_syndromeUInt_T_84 = 64'hab55555556aaad5b & io_write_bits_data_4; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_85 = ^_x14_syndromeUInt_T_84; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_87 = 64'hcd9999999b33366d & io_write_bits_data_4; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_88 = ^_x14_syndromeUInt_T_87; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_90 = 64'hf1e1e1e1e3c3c78e & io_write_bits_data_4; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_91 = ^_x14_syndromeUInt_T_90; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_93 = 64'h1fe01fe03fc07f0 & io_write_bits_data_4; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_94 = ^_x14_syndromeUInt_T_93; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_96 = 64'h1fffe0003fff800 & io_write_bits_data_4; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_97 = ^_x14_syndromeUInt_T_96; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_99 = 64'h1fffffffc000000 & io_write_bits_data_4; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_100 = ^_x14_syndromeUInt_T_99; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_102 = 64'hfe00000000000000 & io_write_bits_data_4; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_103 = ^_x14_syndromeUInt_T_102; // @[ECC.scala 147:79]
  wire [70:0] _x14_T_24 = {_x14_syndromeUInt_T_103,_x14_syndromeUInt_T_100,_x14_syndromeUInt_T_97,_x14_syndromeUInt_T_94
    ,_x14_syndromeUInt_T_91,_x14_syndromeUInt_T_88,_x14_syndromeUInt_T_85,io_write_bits_data_4}; // @[Cat.scala 31:58]
  wire  _x14_T_25 = ^_x14_T_24; // @[ECC.scala 81:55]
  wire [71:0] _x14_T_27 = {_x14_T_25,_x14_syndromeUInt_T_103,_x14_syndromeUInt_T_100,_x14_syndromeUInt_T_97,
    _x14_syndromeUInt_T_94,_x14_syndromeUInt_T_91,_x14_syndromeUInt_T_88,_x14_syndromeUInt_T_85,io_write_bits_data_4}; // @[Cat.scala 31:58]
  reg [7:0] x14_4; // @[BankedDataArray.scala 882:23]
  wire  wen_reg_5 = write_bank_mask_reg[5] & write_valid_dup_reg_5; // @[BankedDataArray.scala 868:53]
  wire [63:0] _x14_syndromeUInt_T_105 = 64'hab55555556aaad5b & io_write_bits_data_5; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_106 = ^_x14_syndromeUInt_T_105; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_108 = 64'hcd9999999b33366d & io_write_bits_data_5; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_109 = ^_x14_syndromeUInt_T_108; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_111 = 64'hf1e1e1e1e3c3c78e & io_write_bits_data_5; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_112 = ^_x14_syndromeUInt_T_111; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_114 = 64'h1fe01fe03fc07f0 & io_write_bits_data_5; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_115 = ^_x14_syndromeUInt_T_114; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_117 = 64'h1fffe0003fff800 & io_write_bits_data_5; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_118 = ^_x14_syndromeUInt_T_117; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_120 = 64'h1fffffffc000000 & io_write_bits_data_5; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_121 = ^_x14_syndromeUInt_T_120; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_123 = 64'hfe00000000000000 & io_write_bits_data_5; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_124 = ^_x14_syndromeUInt_T_123; // @[ECC.scala 147:79]
  wire [70:0] _x14_T_30 = {_x14_syndromeUInt_T_124,_x14_syndromeUInt_T_121,_x14_syndromeUInt_T_118,
    _x14_syndromeUInt_T_115,_x14_syndromeUInt_T_112,_x14_syndromeUInt_T_109,_x14_syndromeUInt_T_106,io_write_bits_data_5
    }; // @[Cat.scala 31:58]
  wire  _x14_T_31 = ^_x14_T_30; // @[ECC.scala 81:55]
  wire [71:0] _x14_T_33 = {_x14_T_31,_x14_syndromeUInt_T_124,_x14_syndromeUInt_T_121,_x14_syndromeUInt_T_118,
    _x14_syndromeUInt_T_115,_x14_syndromeUInt_T_112,_x14_syndromeUInt_T_109,_x14_syndromeUInt_T_106,io_write_bits_data_5
    }; // @[Cat.scala 31:58]
  reg [7:0] x14_5; // @[BankedDataArray.scala 882:23]
  wire  wen_reg_6 = write_bank_mask_reg[6] & write_valid_dup_reg_6; // @[BankedDataArray.scala 868:53]
  wire [63:0] _x14_syndromeUInt_T_126 = 64'hab55555556aaad5b & io_write_bits_data_6; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_127 = ^_x14_syndromeUInt_T_126; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_129 = 64'hcd9999999b33366d & io_write_bits_data_6; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_130 = ^_x14_syndromeUInt_T_129; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_132 = 64'hf1e1e1e1e3c3c78e & io_write_bits_data_6; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_133 = ^_x14_syndromeUInt_T_132; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_135 = 64'h1fe01fe03fc07f0 & io_write_bits_data_6; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_136 = ^_x14_syndromeUInt_T_135; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_138 = 64'h1fffe0003fff800 & io_write_bits_data_6; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_139 = ^_x14_syndromeUInt_T_138; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_141 = 64'h1fffffffc000000 & io_write_bits_data_6; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_142 = ^_x14_syndromeUInt_T_141; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_144 = 64'hfe00000000000000 & io_write_bits_data_6; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_145 = ^_x14_syndromeUInt_T_144; // @[ECC.scala 147:79]
  wire [70:0] _x14_T_36 = {_x14_syndromeUInt_T_145,_x14_syndromeUInt_T_142,_x14_syndromeUInt_T_139,
    _x14_syndromeUInt_T_136,_x14_syndromeUInt_T_133,_x14_syndromeUInt_T_130,_x14_syndromeUInt_T_127,io_write_bits_data_6
    }; // @[Cat.scala 31:58]
  wire  _x14_T_37 = ^_x14_T_36; // @[ECC.scala 81:55]
  wire [71:0] _x14_T_39 = {_x14_T_37,_x14_syndromeUInt_T_145,_x14_syndromeUInt_T_142,_x14_syndromeUInt_T_139,
    _x14_syndromeUInt_T_136,_x14_syndromeUInt_T_133,_x14_syndromeUInt_T_130,_x14_syndromeUInt_T_127,io_write_bits_data_6
    }; // @[Cat.scala 31:58]
  reg [7:0] x14_6; // @[BankedDataArray.scala 882:23]
  wire  wen_reg_7 = write_bank_mask_reg[7] & write_valid_dup_reg_7; // @[BankedDataArray.scala 868:53]
  wire [63:0] _x14_syndromeUInt_T_147 = 64'hab55555556aaad5b & io_write_bits_data_7; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_148 = ^_x14_syndromeUInt_T_147; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_150 = 64'hcd9999999b33366d & io_write_bits_data_7; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_151 = ^_x14_syndromeUInt_T_150; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_153 = 64'hf1e1e1e1e3c3c78e & io_write_bits_data_7; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_154 = ^_x14_syndromeUInt_T_153; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_156 = 64'h1fe01fe03fc07f0 & io_write_bits_data_7; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_157 = ^_x14_syndromeUInt_T_156; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_159 = 64'h1fffe0003fff800 & io_write_bits_data_7; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_160 = ^_x14_syndromeUInt_T_159; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_162 = 64'h1fffffffc000000 & io_write_bits_data_7; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_163 = ^_x14_syndromeUInt_T_162; // @[ECC.scala 147:79]
  wire [63:0] _x14_syndromeUInt_T_165 = 64'hfe00000000000000 & io_write_bits_data_7; // @[ECC.scala 147:74]
  wire  _x14_syndromeUInt_T_166 = ^_x14_syndromeUInt_T_165; // @[ECC.scala 147:79]
  wire [70:0] _x14_T_42 = {_x14_syndromeUInt_T_166,_x14_syndromeUInt_T_163,_x14_syndromeUInt_T_160,
    _x14_syndromeUInt_T_157,_x14_syndromeUInt_T_154,_x14_syndromeUInt_T_151,_x14_syndromeUInt_T_148,io_write_bits_data_7
    }; // @[Cat.scala 31:58]
  wire  _x14_T_43 = ^_x14_T_42; // @[ECC.scala 81:55]
  wire [71:0] _x14_T_45 = {_x14_T_43,_x14_syndromeUInt_T_166,_x14_syndromeUInt_T_163,_x14_syndromeUInt_T_160,
    _x14_syndromeUInt_T_157,_x14_syndromeUInt_T_154,_x14_syndromeUInt_T_151,_x14_syndromeUInt_T_148,io_write_bits_data_7
    }; // @[Cat.scala 31:58]
  reg [7:0] x14_7; // @[BankedDataArray.scala 882:23]
  wire [5:0] cacheOpSetAddr = io_cacheOp_req_bits_index[5:0]; // @[DCacheWrapper.scala 199:8]
  wire [31:0] cacheOpWayMask = 32'h1 << io_cacheOp_req_bits_wayNum[4:0]; // @[OneHot.scala 57:35]
  wire  _T_118 = io_cacheOp_req_bits_opCode_dup_0 == 64'h3; // @[CacheInstruction.scala 95:54]
  wire [31:0] _GEN_137 = io_cacheOp_req_dup_0_valid & _T_118 ? cacheOpWayMask : {{24'd0}, bank_way_en}; // @[BankedDataArray.scala 912:116 817:29 915:31]
  wire [31:0] _GEN_141 = io_cacheOp_req_dup_0_valid & _T_118 ? cacheOpWayMask : {{24'd0}, bank_way_en_1}; // @[BankedDataArray.scala 912:116 817:29 915:31]
  wire  _T_122 = io_cacheOp_req_bits_opCode_dup_1 == 64'h3; // @[CacheInstruction.scala 95:54]
  wire [31:0] _GEN_145 = io_cacheOp_req_dup_1_valid & _T_122 ? cacheOpWayMask : {{24'd0}, bank_way_en_2}; // @[BankedDataArray.scala 912:116 817:29 915:31]
  wire [31:0] _GEN_149 = io_cacheOp_req_dup_1_valid & _T_122 ? cacheOpWayMask : {{24'd0}, bank_way_en_3}; // @[BankedDataArray.scala 912:116 817:29 915:31]
  wire  _T_126 = io_cacheOp_req_bits_opCode_dup_2 == 64'h3; // @[CacheInstruction.scala 95:54]
  wire [31:0] _GEN_153 = io_cacheOp_req_dup_2_valid & _T_126 ? cacheOpWayMask : {{24'd0}, bank_way_en_4}; // @[BankedDataArray.scala 912:116 817:29 915:31]
  wire [31:0] _GEN_157 = io_cacheOp_req_dup_2_valid & _T_126 ? cacheOpWayMask : {{24'd0}, bank_way_en_5}; // @[BankedDataArray.scala 912:116 817:29 915:31]
  wire  _T_130 = io_cacheOp_req_bits_opCode_dup_3 == 64'h3; // @[CacheInstruction.scala 95:54]
  wire [31:0] _GEN_161 = io_cacheOp_req_dup_3_valid & _T_130 ? cacheOpWayMask : {{24'd0}, bank_way_en_6}; // @[BankedDataArray.scala 912:116 817:29 915:31]
  wire [31:0] _GEN_165 = io_cacheOp_req_dup_3_valid & _T_130 ? cacheOpWayMask : {{24'd0}, bank_way_en_7}; // @[BankedDataArray.scala 912:116 817:29 915:31]
  wire  _GEN_167 = io_cacheOp_req_dup_3_valid & _T_130 | (io_cacheOp_req_dup_3_valid & _T_130 | (
    io_cacheOp_req_dup_2_valid & _T_126 | (io_cacheOp_req_dup_2_valid & _T_126 | (io_cacheOp_req_dup_1_valid & _T_122 |
    (io_cacheOp_req_dup_1_valid & _T_122 | (io_cacheOp_req_dup_0_valid & _T_118 | io_cacheOp_req_dup_0_valid & _T_118)))
    ))); // @[BankedDataArray.scala 912:116 917:27]
  wire  _T_134 = io_cacheOp_req_bits_opCode_dup_4 == 64'h1; // @[CacheInstruction.scala 93:54]
  wire  _T_138 = io_cacheOp_req_bits_opCode_dup_5 == 64'h1; // @[CacheInstruction.scala 93:54]
  wire  _T_142 = io_cacheOp_req_bits_opCode_dup_6 == 64'h1; // @[CacheInstruction.scala 93:54]
  wire  _T_146 = io_cacheOp_req_bits_opCode_dup_7 == 64'h1; // @[CacheInstruction.scala 93:54]
  wire  _GEN_191 = io_cacheOp_req_dup_7_valid & _T_146 | (io_cacheOp_req_dup_7_valid & _T_146 | (
    io_cacheOp_req_dup_6_valid & _T_142 | (io_cacheOp_req_dup_6_valid & _T_142 | (io_cacheOp_req_dup_5_valid & _T_138 |
    (io_cacheOp_req_dup_5_valid & _T_138 | (io_cacheOp_req_dup_4_valid & _T_134 | (io_cacheOp_req_dup_4_valid & _T_134
     | _GEN_167))))))); // @[BankedDataArray.scala 923:119 927:27]
  wire  _T_150 = io_cacheOp_req_bits_opCode_dup_8 == 64'h7; // @[CacheInstruction.scala 99:54]
  wire [31:0] _GEN_193 = io_cacheOp_req_dup_8_valid & _T_150 ? cacheOpWayMask : {{24'd0}, write_wayen_dup_reg_0}; // @[BankedDataArray.scala 933:117 873:29 936:31]
  wire [31:0] _GEN_198 = io_cacheOp_req_dup_8_valid & _T_150 ? cacheOpWayMask : {{24'd0}, write_wayen_dup_reg_1}; // @[BankedDataArray.scala 933:117 873:29 936:31]
  wire  _T_154 = io_cacheOp_req_bits_opCode_dup_9 == 64'h7; // @[CacheInstruction.scala 99:54]
  wire [31:0] _GEN_203 = io_cacheOp_req_dup_9_valid & _T_154 ? cacheOpWayMask : {{24'd0}, write_wayen_dup_reg_2}; // @[BankedDataArray.scala 933:117 873:29 936:31]
  wire [31:0] _GEN_208 = io_cacheOp_req_dup_9_valid & _T_154 ? cacheOpWayMask : {{24'd0}, write_wayen_dup_reg_3}; // @[BankedDataArray.scala 933:117 873:29 936:31]
  wire  _T_158 = io_cacheOp_req_bits_opCode_dup_10 == 64'h7; // @[CacheInstruction.scala 99:54]
  wire [31:0] _GEN_213 = io_cacheOp_req_dup_10_valid & _T_158 ? cacheOpWayMask : {{24'd0}, write_wayen_dup_reg_4}; // @[BankedDataArray.scala 933:117 873:29 936:31]
  wire [31:0] _GEN_218 = io_cacheOp_req_dup_10_valid & _T_158 ? cacheOpWayMask : {{24'd0}, write_wayen_dup_reg_5}; // @[BankedDataArray.scala 933:117 873:29 936:31]
  wire  _T_162 = io_cacheOp_req_bits_opCode_dup_11 == 64'h7; // @[CacheInstruction.scala 99:54]
  wire [31:0] _GEN_223 = io_cacheOp_req_dup_11_valid & _T_162 ? cacheOpWayMask : {{24'd0}, write_wayen_dup_reg_6}; // @[BankedDataArray.scala 933:117 873:29 936:31]
  wire [31:0] _GEN_228 = io_cacheOp_req_dup_11_valid & _T_162 ? cacheOpWayMask : {{24'd0}, write_wayen_dup_reg_7}; // @[BankedDataArray.scala 933:117 873:29 936:31]
  wire  _GEN_231 = io_cacheOp_req_dup_11_valid & _T_162 | (io_cacheOp_req_dup_11_valid & _T_162 | (
    io_cacheOp_req_dup_10_valid & _T_158 | (io_cacheOp_req_dup_10_valid & _T_158 | (io_cacheOp_req_dup_9_valid & _T_154
     | (io_cacheOp_req_dup_9_valid & _T_154 | (io_cacheOp_req_dup_8_valid & _T_150 | (io_cacheOp_req_dup_8_valid &
    _T_150 | _GEN_191))))))); // @[BankedDataArray.scala 933:117 939:27]
  wire  _T_166 = io_cacheOp_req_bits_opCode_dup_12 == 64'h5; // @[CacheInstruction.scala 97:54]
  wire [63:0] _GEN_234 = io_cacheOp_req_dup_12_valid & _T_166 ? io_cacheOp_req_bits_write_data_ecc : {{56'd0}, x14}; // @[BankedDataArray.scala 945:120 SRAMTemplate.scala 53:{15,15}]
  wire [31:0] _GEN_242 = io_cacheOp_req_dup_12_valid & _T_166 ? cacheOpWayMask : {{24'd0}, write_wayen_dup_reg_0}; // @[BankedDataArray.scala 945:120 SRAMTemplate.scala 54:{24,24}]
  wire [63:0] _GEN_246 = io_cacheOp_req_dup_12_valid & _T_166 ? io_cacheOp_req_bits_write_data_ecc : {{56'd0}, x14_1}; // @[BankedDataArray.scala 945:120 SRAMTemplate.scala 53:{15,15}]
  wire [31:0] _GEN_254 = io_cacheOp_req_dup_12_valid & _T_166 ? cacheOpWayMask : {{24'd0}, write_wayen_dup_reg_1}; // @[BankedDataArray.scala 945:120 SRAMTemplate.scala 54:{24,24}]
  wire  _T_170 = io_cacheOp_req_bits_opCode_dup_13 == 64'h5; // @[CacheInstruction.scala 97:54]
  wire [63:0] _GEN_258 = io_cacheOp_req_dup_13_valid & _T_170 ? io_cacheOp_req_bits_write_data_ecc : {{56'd0}, x14_2}; // @[BankedDataArray.scala 945:120 SRAMTemplate.scala 53:{15,15}]
  wire [31:0] _GEN_266 = io_cacheOp_req_dup_13_valid & _T_170 ? cacheOpWayMask : {{24'd0}, write_wayen_dup_reg_2}; // @[BankedDataArray.scala 945:120 SRAMTemplate.scala 54:{24,24}]
  wire [63:0] _GEN_270 = io_cacheOp_req_dup_13_valid & _T_170 ? io_cacheOp_req_bits_write_data_ecc : {{56'd0}, x14_3}; // @[BankedDataArray.scala 945:120 SRAMTemplate.scala 53:{15,15}]
  wire [31:0] _GEN_278 = io_cacheOp_req_dup_13_valid & _T_170 ? cacheOpWayMask : {{24'd0}, write_wayen_dup_reg_3}; // @[BankedDataArray.scala 945:120 SRAMTemplate.scala 54:{24,24}]
  wire  _T_174 = io_cacheOp_req_bits_opCode_dup_14 == 64'h5; // @[CacheInstruction.scala 97:54]
  wire [63:0] _GEN_282 = io_cacheOp_req_dup_14_valid & _T_174 ? io_cacheOp_req_bits_write_data_ecc : {{56'd0}, x14_4}; // @[BankedDataArray.scala 945:120 SRAMTemplate.scala 53:{15,15}]
  wire [31:0] _GEN_290 = io_cacheOp_req_dup_14_valid & _T_174 ? cacheOpWayMask : {{24'd0}, write_wayen_dup_reg_4}; // @[BankedDataArray.scala 945:120 SRAMTemplate.scala 54:{24,24}]
  wire [63:0] _GEN_294 = io_cacheOp_req_dup_14_valid & _T_174 ? io_cacheOp_req_bits_write_data_ecc : {{56'd0}, x14_5}; // @[BankedDataArray.scala 945:120 SRAMTemplate.scala 53:{15,15}]
  wire [31:0] _GEN_302 = io_cacheOp_req_dup_14_valid & _T_174 ? cacheOpWayMask : {{24'd0}, write_wayen_dup_reg_5}; // @[BankedDataArray.scala 945:120 SRAMTemplate.scala 54:{24,24}]
  wire  _T_178 = io_cacheOp_req_bits_opCode_dup_15 == 64'h5; // @[CacheInstruction.scala 97:54]
  wire [63:0] _GEN_306 = io_cacheOp_req_dup_15_valid & _T_178 ? io_cacheOp_req_bits_write_data_ecc : {{56'd0}, x14_6}; // @[BankedDataArray.scala 945:120 SRAMTemplate.scala 53:{15,15}]
  wire [31:0] _GEN_314 = io_cacheOp_req_dup_15_valid & _T_178 ? cacheOpWayMask : {{24'd0}, write_wayen_dup_reg_6}; // @[BankedDataArray.scala 945:120 SRAMTemplate.scala 54:{24,24}]
  wire [63:0] _GEN_318 = io_cacheOp_req_dup_15_valid & _T_178 ? io_cacheOp_req_bits_write_data_ecc : {{56'd0}, x14_7}; // @[BankedDataArray.scala 945:120 SRAMTemplate.scala 53:{15,15}]
  wire [31:0] _GEN_326 = io_cacheOp_req_dup_15_valid & _T_178 ? cacheOpWayMask : {{24'd0}, write_wayen_dup_reg_7}; // @[BankedDataArray.scala 945:120 SRAMTemplate.scala 54:{24,24}]
  wire  cacheOpShouldResp = io_cacheOp_req_dup_15_valid & _T_178 | (io_cacheOp_req_dup_15_valid & _T_178 | (
    io_cacheOp_req_dup_14_valid & _T_174 | (io_cacheOp_req_dup_14_valid & _T_174 | (io_cacheOp_req_dup_13_valid & _T_170
     | (io_cacheOp_req_dup_13_valid & _T_170 | (io_cacheOp_req_dup_12_valid & _T_166 | (io_cacheOp_req_dup_12_valid &
    _T_166 | _GEN_231))))))); // @[BankedDataArray.scala 945:120 953:27]
  reg  io_cacheOp_resp_valid_REG; // @[BankedDataArray.scala 958:35]
  reg [31:0] eccReadResult_0_REG; // @[BankedDataArray.scala 961:47]
  wire [7:0] ecc_result_0_0_0 = ecc_banks_0_0_io_rresp_data_0; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_0_T_8 = eccReadResult_0_REG[0] ? ecc_result_0_0_0 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_0_1 = ecc_banks_0_0_io_rresp_data_1; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_0_T_9 = eccReadResult_0_REG[1] ? ecc_result_0_0_1 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_0_2 = ecc_banks_0_0_io_rresp_data_2; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_0_T_10 = eccReadResult_0_REG[2] ? ecc_result_0_0_2 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_0_3 = ecc_banks_0_0_io_rresp_data_3; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_0_T_11 = eccReadResult_0_REG[3] ? ecc_result_0_0_3 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_0_4 = ecc_banks_0_0_io_rresp_data_4; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_0_T_12 = eccReadResult_0_REG[4] ? ecc_result_0_0_4 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_0_5 = ecc_banks_0_0_io_rresp_data_5; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_0_T_13 = eccReadResult_0_REG[5] ? ecc_result_0_0_5 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_0_6 = ecc_banks_0_0_io_rresp_data_6; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_0_T_14 = eccReadResult_0_REG[6] ? ecc_result_0_0_6 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_0_7 = ecc_banks_0_0_io_rresp_data_7; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_0_T_15 = eccReadResult_0_REG[7] ? ecc_result_0_0_7 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_0_T_16 = _eccReadResult_0_T_8 | _eccReadResult_0_T_9; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_0_T_17 = _eccReadResult_0_T_16 | _eccReadResult_0_T_10; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_0_T_18 = _eccReadResult_0_T_17 | _eccReadResult_0_T_11; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_0_T_19 = _eccReadResult_0_T_18 | _eccReadResult_0_T_12; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_0_T_20 = _eccReadResult_0_T_19 | _eccReadResult_0_T_13; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_0_T_21 = _eccReadResult_0_T_20 | _eccReadResult_0_T_14; // @[Mux.scala 27:73]
  wire [7:0] eccReadResult_0 = _eccReadResult_0_T_21 | _eccReadResult_0_T_15; // @[Mux.scala 27:73]
  reg [31:0] eccReadResult_1_REG; // @[BankedDataArray.scala 961:47]
  wire [7:0] ecc_result_0_1_0 = ecc_banks_0_1_io_rresp_data_0; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_1_T_8 = eccReadResult_1_REG[0] ? ecc_result_0_1_0 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_1_1 = ecc_banks_0_1_io_rresp_data_1; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_1_T_9 = eccReadResult_1_REG[1] ? ecc_result_0_1_1 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_1_2 = ecc_banks_0_1_io_rresp_data_2; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_1_T_10 = eccReadResult_1_REG[2] ? ecc_result_0_1_2 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_1_3 = ecc_banks_0_1_io_rresp_data_3; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_1_T_11 = eccReadResult_1_REG[3] ? ecc_result_0_1_3 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_1_4 = ecc_banks_0_1_io_rresp_data_4; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_1_T_12 = eccReadResult_1_REG[4] ? ecc_result_0_1_4 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_1_5 = ecc_banks_0_1_io_rresp_data_5; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_1_T_13 = eccReadResult_1_REG[5] ? ecc_result_0_1_5 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_1_6 = ecc_banks_0_1_io_rresp_data_6; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_1_T_14 = eccReadResult_1_REG[6] ? ecc_result_0_1_6 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_1_7 = ecc_banks_0_1_io_rresp_data_7; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_1_T_15 = eccReadResult_1_REG[7] ? ecc_result_0_1_7 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_1_T_16 = _eccReadResult_1_T_8 | _eccReadResult_1_T_9; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_1_T_17 = _eccReadResult_1_T_16 | _eccReadResult_1_T_10; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_1_T_18 = _eccReadResult_1_T_17 | _eccReadResult_1_T_11; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_1_T_19 = _eccReadResult_1_T_18 | _eccReadResult_1_T_12; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_1_T_20 = _eccReadResult_1_T_19 | _eccReadResult_1_T_13; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_1_T_21 = _eccReadResult_1_T_20 | _eccReadResult_1_T_14; // @[Mux.scala 27:73]
  wire [7:0] eccReadResult_1 = _eccReadResult_1_T_21 | _eccReadResult_1_T_15; // @[Mux.scala 27:73]
  reg [31:0] eccReadResult_2_REG; // @[BankedDataArray.scala 961:47]
  wire [7:0] ecc_result_0_2_0 = ecc_banks_0_2_io_rresp_data_0; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_2_T_8 = eccReadResult_2_REG[0] ? ecc_result_0_2_0 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_2_1 = ecc_banks_0_2_io_rresp_data_1; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_2_T_9 = eccReadResult_2_REG[1] ? ecc_result_0_2_1 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_2_2 = ecc_banks_0_2_io_rresp_data_2; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_2_T_10 = eccReadResult_2_REG[2] ? ecc_result_0_2_2 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_2_3 = ecc_banks_0_2_io_rresp_data_3; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_2_T_11 = eccReadResult_2_REG[3] ? ecc_result_0_2_3 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_2_4 = ecc_banks_0_2_io_rresp_data_4; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_2_T_12 = eccReadResult_2_REG[4] ? ecc_result_0_2_4 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_2_5 = ecc_banks_0_2_io_rresp_data_5; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_2_T_13 = eccReadResult_2_REG[5] ? ecc_result_0_2_5 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_2_6 = ecc_banks_0_2_io_rresp_data_6; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_2_T_14 = eccReadResult_2_REG[6] ? ecc_result_0_2_6 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_2_7 = ecc_banks_0_2_io_rresp_data_7; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_2_T_15 = eccReadResult_2_REG[7] ? ecc_result_0_2_7 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_2_T_16 = _eccReadResult_2_T_8 | _eccReadResult_2_T_9; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_2_T_17 = _eccReadResult_2_T_16 | _eccReadResult_2_T_10; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_2_T_18 = _eccReadResult_2_T_17 | _eccReadResult_2_T_11; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_2_T_19 = _eccReadResult_2_T_18 | _eccReadResult_2_T_12; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_2_T_20 = _eccReadResult_2_T_19 | _eccReadResult_2_T_13; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_2_T_21 = _eccReadResult_2_T_20 | _eccReadResult_2_T_14; // @[Mux.scala 27:73]
  wire [7:0] eccReadResult_2 = _eccReadResult_2_T_21 | _eccReadResult_2_T_15; // @[Mux.scala 27:73]
  reg [31:0] eccReadResult_3_REG; // @[BankedDataArray.scala 961:47]
  wire [7:0] ecc_result_0_3_0 = ecc_banks_0_3_io_rresp_data_0; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_3_T_8 = eccReadResult_3_REG[0] ? ecc_result_0_3_0 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_3_1 = ecc_banks_0_3_io_rresp_data_1; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_3_T_9 = eccReadResult_3_REG[1] ? ecc_result_0_3_1 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_3_2 = ecc_banks_0_3_io_rresp_data_2; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_3_T_10 = eccReadResult_3_REG[2] ? ecc_result_0_3_2 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_3_3 = ecc_banks_0_3_io_rresp_data_3; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_3_T_11 = eccReadResult_3_REG[3] ? ecc_result_0_3_3 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_3_4 = ecc_banks_0_3_io_rresp_data_4; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_3_T_12 = eccReadResult_3_REG[4] ? ecc_result_0_3_4 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_3_5 = ecc_banks_0_3_io_rresp_data_5; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_3_T_13 = eccReadResult_3_REG[5] ? ecc_result_0_3_5 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_3_6 = ecc_banks_0_3_io_rresp_data_6; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_3_T_14 = eccReadResult_3_REG[6] ? ecc_result_0_3_6 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_3_7 = ecc_banks_0_3_io_rresp_data_7; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_3_T_15 = eccReadResult_3_REG[7] ? ecc_result_0_3_7 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_3_T_16 = _eccReadResult_3_T_8 | _eccReadResult_3_T_9; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_3_T_17 = _eccReadResult_3_T_16 | _eccReadResult_3_T_10; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_3_T_18 = _eccReadResult_3_T_17 | _eccReadResult_3_T_11; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_3_T_19 = _eccReadResult_3_T_18 | _eccReadResult_3_T_12; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_3_T_20 = _eccReadResult_3_T_19 | _eccReadResult_3_T_13; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_3_T_21 = _eccReadResult_3_T_20 | _eccReadResult_3_T_14; // @[Mux.scala 27:73]
  wire [7:0] eccReadResult_3 = _eccReadResult_3_T_21 | _eccReadResult_3_T_15; // @[Mux.scala 27:73]
  reg [31:0] eccReadResult_4_REG; // @[BankedDataArray.scala 961:47]
  wire [7:0] ecc_result_0_4_0 = ecc_banks_0_4_io_rresp_data_0; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_4_T_8 = eccReadResult_4_REG[0] ? ecc_result_0_4_0 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_4_1 = ecc_banks_0_4_io_rresp_data_1; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_4_T_9 = eccReadResult_4_REG[1] ? ecc_result_0_4_1 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_4_2 = ecc_banks_0_4_io_rresp_data_2; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_4_T_10 = eccReadResult_4_REG[2] ? ecc_result_0_4_2 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_4_3 = ecc_banks_0_4_io_rresp_data_3; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_4_T_11 = eccReadResult_4_REG[3] ? ecc_result_0_4_3 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_4_4 = ecc_banks_0_4_io_rresp_data_4; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_4_T_12 = eccReadResult_4_REG[4] ? ecc_result_0_4_4 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_4_5 = ecc_banks_0_4_io_rresp_data_5; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_4_T_13 = eccReadResult_4_REG[5] ? ecc_result_0_4_5 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_4_6 = ecc_banks_0_4_io_rresp_data_6; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_4_T_14 = eccReadResult_4_REG[6] ? ecc_result_0_4_6 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_4_7 = ecc_banks_0_4_io_rresp_data_7; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_4_T_15 = eccReadResult_4_REG[7] ? ecc_result_0_4_7 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_4_T_16 = _eccReadResult_4_T_8 | _eccReadResult_4_T_9; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_4_T_17 = _eccReadResult_4_T_16 | _eccReadResult_4_T_10; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_4_T_18 = _eccReadResult_4_T_17 | _eccReadResult_4_T_11; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_4_T_19 = _eccReadResult_4_T_18 | _eccReadResult_4_T_12; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_4_T_20 = _eccReadResult_4_T_19 | _eccReadResult_4_T_13; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_4_T_21 = _eccReadResult_4_T_20 | _eccReadResult_4_T_14; // @[Mux.scala 27:73]
  wire [7:0] eccReadResult_4 = _eccReadResult_4_T_21 | _eccReadResult_4_T_15; // @[Mux.scala 27:73]
  reg [31:0] eccReadResult_5_REG; // @[BankedDataArray.scala 961:47]
  wire [7:0] ecc_result_0_5_0 = ecc_banks_0_5_io_rresp_data_0; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_5_T_8 = eccReadResult_5_REG[0] ? ecc_result_0_5_0 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_5_1 = ecc_banks_0_5_io_rresp_data_1; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_5_T_9 = eccReadResult_5_REG[1] ? ecc_result_0_5_1 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_5_2 = ecc_banks_0_5_io_rresp_data_2; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_5_T_10 = eccReadResult_5_REG[2] ? ecc_result_0_5_2 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_5_3 = ecc_banks_0_5_io_rresp_data_3; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_5_T_11 = eccReadResult_5_REG[3] ? ecc_result_0_5_3 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_5_4 = ecc_banks_0_5_io_rresp_data_4; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_5_T_12 = eccReadResult_5_REG[4] ? ecc_result_0_5_4 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_5_5 = ecc_banks_0_5_io_rresp_data_5; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_5_T_13 = eccReadResult_5_REG[5] ? ecc_result_0_5_5 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_5_6 = ecc_banks_0_5_io_rresp_data_6; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_5_T_14 = eccReadResult_5_REG[6] ? ecc_result_0_5_6 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_5_7 = ecc_banks_0_5_io_rresp_data_7; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_5_T_15 = eccReadResult_5_REG[7] ? ecc_result_0_5_7 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_5_T_16 = _eccReadResult_5_T_8 | _eccReadResult_5_T_9; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_5_T_17 = _eccReadResult_5_T_16 | _eccReadResult_5_T_10; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_5_T_18 = _eccReadResult_5_T_17 | _eccReadResult_5_T_11; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_5_T_19 = _eccReadResult_5_T_18 | _eccReadResult_5_T_12; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_5_T_20 = _eccReadResult_5_T_19 | _eccReadResult_5_T_13; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_5_T_21 = _eccReadResult_5_T_20 | _eccReadResult_5_T_14; // @[Mux.scala 27:73]
  wire [7:0] eccReadResult_5 = _eccReadResult_5_T_21 | _eccReadResult_5_T_15; // @[Mux.scala 27:73]
  reg [31:0] eccReadResult_6_REG; // @[BankedDataArray.scala 961:47]
  wire [7:0] ecc_result_0_6_0 = ecc_banks_0_6_io_rresp_data_0; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_6_T_8 = eccReadResult_6_REG[0] ? ecc_result_0_6_0 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_6_1 = ecc_banks_0_6_io_rresp_data_1; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_6_T_9 = eccReadResult_6_REG[1] ? ecc_result_0_6_1 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_6_2 = ecc_banks_0_6_io_rresp_data_2; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_6_T_10 = eccReadResult_6_REG[2] ? ecc_result_0_6_2 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_6_3 = ecc_banks_0_6_io_rresp_data_3; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_6_T_11 = eccReadResult_6_REG[3] ? ecc_result_0_6_3 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_6_4 = ecc_banks_0_6_io_rresp_data_4; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_6_T_12 = eccReadResult_6_REG[4] ? ecc_result_0_6_4 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_6_5 = ecc_banks_0_6_io_rresp_data_5; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_6_T_13 = eccReadResult_6_REG[5] ? ecc_result_0_6_5 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_6_6 = ecc_banks_0_6_io_rresp_data_6; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_6_T_14 = eccReadResult_6_REG[6] ? ecc_result_0_6_6 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_6_7 = ecc_banks_0_6_io_rresp_data_7; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_6_T_15 = eccReadResult_6_REG[7] ? ecc_result_0_6_7 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_6_T_16 = _eccReadResult_6_T_8 | _eccReadResult_6_T_9; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_6_T_17 = _eccReadResult_6_T_16 | _eccReadResult_6_T_10; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_6_T_18 = _eccReadResult_6_T_17 | _eccReadResult_6_T_11; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_6_T_19 = _eccReadResult_6_T_18 | _eccReadResult_6_T_12; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_6_T_20 = _eccReadResult_6_T_19 | _eccReadResult_6_T_13; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_6_T_21 = _eccReadResult_6_T_20 | _eccReadResult_6_T_14; // @[Mux.scala 27:73]
  wire [7:0] eccReadResult_6 = _eccReadResult_6_T_21 | _eccReadResult_6_T_15; // @[Mux.scala 27:73]
  reg [31:0] eccReadResult_7_REG; // @[BankedDataArray.scala 961:47]
  wire [7:0] ecc_result_0_7_0 = ecc_banks_0_7_io_rresp_data_0; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_7_T_8 = eccReadResult_7_REG[0] ? ecc_result_0_7_0 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_7_1 = ecc_banks_0_7_io_rresp_data_1; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_7_T_9 = eccReadResult_7_REG[1] ? ecc_result_0_7_1 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_7_2 = ecc_banks_0_7_io_rresp_data_2; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_7_T_10 = eccReadResult_7_REG[2] ? ecc_result_0_7_2 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_7_3 = ecc_banks_0_7_io_rresp_data_3; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_7_T_11 = eccReadResult_7_REG[3] ? ecc_result_0_7_3 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_7_4 = ecc_banks_0_7_io_rresp_data_4; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_7_T_12 = eccReadResult_7_REG[4] ? ecc_result_0_7_4 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_7_5 = ecc_banks_0_7_io_rresp_data_5; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_7_T_13 = eccReadResult_7_REG[5] ? ecc_result_0_7_5 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_7_6 = ecc_banks_0_7_io_rresp_data_6; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_7_T_14 = eccReadResult_7_REG[6] ? ecc_result_0_7_6 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] ecc_result_0_7_7 = ecc_banks_0_7_io_rresp_data_7; // @[BankedDataArray.scala 770:24 825:41]
  wire [7:0] _eccReadResult_7_T_15 = eccReadResult_7_REG[7] ? ecc_result_0_7_7 : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_7_T_16 = _eccReadResult_7_T_8 | _eccReadResult_7_T_9; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_7_T_17 = _eccReadResult_7_T_16 | _eccReadResult_7_T_10; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_7_T_18 = _eccReadResult_7_T_17 | _eccReadResult_7_T_11; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_7_T_19 = _eccReadResult_7_T_18 | _eccReadResult_7_T_12; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_7_T_20 = _eccReadResult_7_T_19 | _eccReadResult_7_T_13; // @[Mux.scala 27:73]
  wire [7:0] _eccReadResult_7_T_21 = _eccReadResult_7_T_20 | _eccReadResult_7_T_14; // @[Mux.scala 27:73]
  wire [7:0] eccReadResult_7 = _eccReadResult_7_T_21 | _eccReadResult_7_T_15; // @[Mux.scala 27:73]
  reg [63:0] io_cacheOp_resp_bits_read_data_ecc_REG; // @[BankedDataArray.scala 965:26]
  wire [7:0] _GEN_329 = 3'h1 == io_cacheOp_resp_bits_read_data_ecc_REG[2:0] ? eccReadResult_1 : eccReadResult_0; // @[BankedDataArray.scala 964:{44,44}]
  wire [7:0] _GEN_330 = 3'h2 == io_cacheOp_resp_bits_read_data_ecc_REG[2:0] ? eccReadResult_2 : _GEN_329; // @[BankedDataArray.scala 964:{44,44}]
  wire [7:0] _GEN_331 = 3'h3 == io_cacheOp_resp_bits_read_data_ecc_REG[2:0] ? eccReadResult_3 : _GEN_330; // @[BankedDataArray.scala 964:{44,44}]
  wire [7:0] _GEN_332 = 3'h4 == io_cacheOp_resp_bits_read_data_ecc_REG[2:0] ? eccReadResult_4 : _GEN_331; // @[BankedDataArray.scala 964:{44,44}]
  wire [7:0] _GEN_333 = 3'h5 == io_cacheOp_resp_bits_read_data_ecc_REG[2:0] ? eccReadResult_5 : _GEN_332; // @[BankedDataArray.scala 964:{44,44}]
  wire [7:0] _GEN_334 = 3'h6 == io_cacheOp_resp_bits_read_data_ecc_REG[2:0] ? eccReadResult_6 : _GEN_333; // @[BankedDataArray.scala 964:{44,44}]
  wire [7:0] _GEN_335 = 3'h7 == io_cacheOp_resp_bits_read_data_ecc_REG[2:0] ? eccReadResult_7 : _GEN_334; // @[BankedDataArray.scala 964:{44,44}]
  wire [7:0] _io_cacheOp_resp_bits_read_data_ecc_T_2 = io_cacheOp_resp_valid ? _GEN_335 : 8'h0; // @[BankedDataArray.scala 964:44]
  DataSRAMBank data_banks_0_0 ( // @[BankedDataArray.scala 669:82]
    .clock(data_banks_0_0_clock),
    .io_wen(data_banks_0_0_io_wen),
    .io_waddr(data_banks_0_0_io_waddr),
    .io_wway_en(data_banks_0_0_io_wway_en),
    .io_wdata(data_banks_0_0_io_wdata),
    .io_ren(data_banks_0_0_io_ren),
    .io_raddr(data_banks_0_0_io_raddr),
    .io_rway_en(data_banks_0_0_io_rway_en),
    .io_rdata(data_banks_0_0_io_rdata)
  );
  DataSRAMBank data_banks_0_1 ( // @[BankedDataArray.scala 669:82]
    .clock(data_banks_0_1_clock),
    .io_wen(data_banks_0_1_io_wen),
    .io_waddr(data_banks_0_1_io_waddr),
    .io_wway_en(data_banks_0_1_io_wway_en),
    .io_wdata(data_banks_0_1_io_wdata),
    .io_ren(data_banks_0_1_io_ren),
    .io_raddr(data_banks_0_1_io_raddr),
    .io_rway_en(data_banks_0_1_io_rway_en),
    .io_rdata(data_banks_0_1_io_rdata)
  );
  DataSRAMBank data_banks_0_2 ( // @[BankedDataArray.scala 669:82]
    .clock(data_banks_0_2_clock),
    .io_wen(data_banks_0_2_io_wen),
    .io_waddr(data_banks_0_2_io_waddr),
    .io_wway_en(data_banks_0_2_io_wway_en),
    .io_wdata(data_banks_0_2_io_wdata),
    .io_ren(data_banks_0_2_io_ren),
    .io_raddr(data_banks_0_2_io_raddr),
    .io_rway_en(data_banks_0_2_io_rway_en),
    .io_rdata(data_banks_0_2_io_rdata)
  );
  DataSRAMBank data_banks_0_3 ( // @[BankedDataArray.scala 669:82]
    .clock(data_banks_0_3_clock),
    .io_wen(data_banks_0_3_io_wen),
    .io_waddr(data_banks_0_3_io_waddr),
    .io_wway_en(data_banks_0_3_io_wway_en),
    .io_wdata(data_banks_0_3_io_wdata),
    .io_ren(data_banks_0_3_io_ren),
    .io_raddr(data_banks_0_3_io_raddr),
    .io_rway_en(data_banks_0_3_io_rway_en),
    .io_rdata(data_banks_0_3_io_rdata)
  );
  DataSRAMBank data_banks_0_4 ( // @[BankedDataArray.scala 669:82]
    .clock(data_banks_0_4_clock),
    .io_wen(data_banks_0_4_io_wen),
    .io_waddr(data_banks_0_4_io_waddr),
    .io_wway_en(data_banks_0_4_io_wway_en),
    .io_wdata(data_banks_0_4_io_wdata),
    .io_ren(data_banks_0_4_io_ren),
    .io_raddr(data_banks_0_4_io_raddr),
    .io_rway_en(data_banks_0_4_io_rway_en),
    .io_rdata(data_banks_0_4_io_rdata)
  );
  DataSRAMBank data_banks_0_5 ( // @[BankedDataArray.scala 669:82]
    .clock(data_banks_0_5_clock),
    .io_wen(data_banks_0_5_io_wen),
    .io_waddr(data_banks_0_5_io_waddr),
    .io_wway_en(data_banks_0_5_io_wway_en),
    .io_wdata(data_banks_0_5_io_wdata),
    .io_ren(data_banks_0_5_io_ren),
    .io_raddr(data_banks_0_5_io_raddr),
    .io_rway_en(data_banks_0_5_io_rway_en),
    .io_rdata(data_banks_0_5_io_rdata)
  );
  DataSRAMBank data_banks_0_6 ( // @[BankedDataArray.scala 669:82]
    .clock(data_banks_0_6_clock),
    .io_wen(data_banks_0_6_io_wen),
    .io_waddr(data_banks_0_6_io_waddr),
    .io_wway_en(data_banks_0_6_io_wway_en),
    .io_wdata(data_banks_0_6_io_wdata),
    .io_ren(data_banks_0_6_io_ren),
    .io_raddr(data_banks_0_6_io_raddr),
    .io_rway_en(data_banks_0_6_io_rway_en),
    .io_rdata(data_banks_0_6_io_rdata)
  );
  DataSRAMBank data_banks_0_7 ( // @[BankedDataArray.scala 669:82]
    .clock(data_banks_0_7_clock),
    .io_wen(data_banks_0_7_io_wen),
    .io_waddr(data_banks_0_7_io_waddr),
    .io_wway_en(data_banks_0_7_io_wway_en),
    .io_wdata(data_banks_0_7_io_wdata),
    .io_ren(data_banks_0_7_io_ren),
    .io_raddr(data_banks_0_7_io_raddr),
    .io_rway_en(data_banks_0_7_io_rway_en),
    .io_rdata(data_banks_0_7_io_rdata)
  );
  SRAMTemplate_136 ecc_banks_0_0 ( // @[BankedDataArray.scala 670:72]
    .clock(ecc_banks_0_0_clock),
    .io_rreq_valid(ecc_banks_0_0_io_rreq_valid),
    .io_rreq_bits_setIdx(ecc_banks_0_0_io_rreq_bits_setIdx),
    .io_rresp_data_0(ecc_banks_0_0_io_rresp_data_0),
    .io_rresp_data_1(ecc_banks_0_0_io_rresp_data_1),
    .io_rresp_data_2(ecc_banks_0_0_io_rresp_data_2),
    .io_rresp_data_3(ecc_banks_0_0_io_rresp_data_3),
    .io_rresp_data_4(ecc_banks_0_0_io_rresp_data_4),
    .io_rresp_data_5(ecc_banks_0_0_io_rresp_data_5),
    .io_rresp_data_6(ecc_banks_0_0_io_rresp_data_6),
    .io_rresp_data_7(ecc_banks_0_0_io_rresp_data_7),
    .io_wreq_valid(ecc_banks_0_0_io_wreq_valid),
    .io_wreq_bits_setIdx(ecc_banks_0_0_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(ecc_banks_0_0_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(ecc_banks_0_0_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(ecc_banks_0_0_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(ecc_banks_0_0_io_wreq_bits_data_3),
    .io_wreq_bits_data_4(ecc_banks_0_0_io_wreq_bits_data_4),
    .io_wreq_bits_data_5(ecc_banks_0_0_io_wreq_bits_data_5),
    .io_wreq_bits_data_6(ecc_banks_0_0_io_wreq_bits_data_6),
    .io_wreq_bits_data_7(ecc_banks_0_0_io_wreq_bits_data_7),
    .io_wreq_bits_waymask(ecc_banks_0_0_io_wreq_bits_waymask)
  );
  SRAMTemplate_136 ecc_banks_0_1 ( // @[BankedDataArray.scala 670:72]
    .clock(ecc_banks_0_1_clock),
    .io_rreq_valid(ecc_banks_0_1_io_rreq_valid),
    .io_rreq_bits_setIdx(ecc_banks_0_1_io_rreq_bits_setIdx),
    .io_rresp_data_0(ecc_banks_0_1_io_rresp_data_0),
    .io_rresp_data_1(ecc_banks_0_1_io_rresp_data_1),
    .io_rresp_data_2(ecc_banks_0_1_io_rresp_data_2),
    .io_rresp_data_3(ecc_banks_0_1_io_rresp_data_3),
    .io_rresp_data_4(ecc_banks_0_1_io_rresp_data_4),
    .io_rresp_data_5(ecc_banks_0_1_io_rresp_data_5),
    .io_rresp_data_6(ecc_banks_0_1_io_rresp_data_6),
    .io_rresp_data_7(ecc_banks_0_1_io_rresp_data_7),
    .io_wreq_valid(ecc_banks_0_1_io_wreq_valid),
    .io_wreq_bits_setIdx(ecc_banks_0_1_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(ecc_banks_0_1_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(ecc_banks_0_1_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(ecc_banks_0_1_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(ecc_banks_0_1_io_wreq_bits_data_3),
    .io_wreq_bits_data_4(ecc_banks_0_1_io_wreq_bits_data_4),
    .io_wreq_bits_data_5(ecc_banks_0_1_io_wreq_bits_data_5),
    .io_wreq_bits_data_6(ecc_banks_0_1_io_wreq_bits_data_6),
    .io_wreq_bits_data_7(ecc_banks_0_1_io_wreq_bits_data_7),
    .io_wreq_bits_waymask(ecc_banks_0_1_io_wreq_bits_waymask)
  );
  SRAMTemplate_136 ecc_banks_0_2 ( // @[BankedDataArray.scala 670:72]
    .clock(ecc_banks_0_2_clock),
    .io_rreq_valid(ecc_banks_0_2_io_rreq_valid),
    .io_rreq_bits_setIdx(ecc_banks_0_2_io_rreq_bits_setIdx),
    .io_rresp_data_0(ecc_banks_0_2_io_rresp_data_0),
    .io_rresp_data_1(ecc_banks_0_2_io_rresp_data_1),
    .io_rresp_data_2(ecc_banks_0_2_io_rresp_data_2),
    .io_rresp_data_3(ecc_banks_0_2_io_rresp_data_3),
    .io_rresp_data_4(ecc_banks_0_2_io_rresp_data_4),
    .io_rresp_data_5(ecc_banks_0_2_io_rresp_data_5),
    .io_rresp_data_6(ecc_banks_0_2_io_rresp_data_6),
    .io_rresp_data_7(ecc_banks_0_2_io_rresp_data_7),
    .io_wreq_valid(ecc_banks_0_2_io_wreq_valid),
    .io_wreq_bits_setIdx(ecc_banks_0_2_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(ecc_banks_0_2_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(ecc_banks_0_2_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(ecc_banks_0_2_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(ecc_banks_0_2_io_wreq_bits_data_3),
    .io_wreq_bits_data_4(ecc_banks_0_2_io_wreq_bits_data_4),
    .io_wreq_bits_data_5(ecc_banks_0_2_io_wreq_bits_data_5),
    .io_wreq_bits_data_6(ecc_banks_0_2_io_wreq_bits_data_6),
    .io_wreq_bits_data_7(ecc_banks_0_2_io_wreq_bits_data_7),
    .io_wreq_bits_waymask(ecc_banks_0_2_io_wreq_bits_waymask)
  );
  SRAMTemplate_136 ecc_banks_0_3 ( // @[BankedDataArray.scala 670:72]
    .clock(ecc_banks_0_3_clock),
    .io_rreq_valid(ecc_banks_0_3_io_rreq_valid),
    .io_rreq_bits_setIdx(ecc_banks_0_3_io_rreq_bits_setIdx),
    .io_rresp_data_0(ecc_banks_0_3_io_rresp_data_0),
    .io_rresp_data_1(ecc_banks_0_3_io_rresp_data_1),
    .io_rresp_data_2(ecc_banks_0_3_io_rresp_data_2),
    .io_rresp_data_3(ecc_banks_0_3_io_rresp_data_3),
    .io_rresp_data_4(ecc_banks_0_3_io_rresp_data_4),
    .io_rresp_data_5(ecc_banks_0_3_io_rresp_data_5),
    .io_rresp_data_6(ecc_banks_0_3_io_rresp_data_6),
    .io_rresp_data_7(ecc_banks_0_3_io_rresp_data_7),
    .io_wreq_valid(ecc_banks_0_3_io_wreq_valid),
    .io_wreq_bits_setIdx(ecc_banks_0_3_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(ecc_banks_0_3_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(ecc_banks_0_3_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(ecc_banks_0_3_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(ecc_banks_0_3_io_wreq_bits_data_3),
    .io_wreq_bits_data_4(ecc_banks_0_3_io_wreq_bits_data_4),
    .io_wreq_bits_data_5(ecc_banks_0_3_io_wreq_bits_data_5),
    .io_wreq_bits_data_6(ecc_banks_0_3_io_wreq_bits_data_6),
    .io_wreq_bits_data_7(ecc_banks_0_3_io_wreq_bits_data_7),
    .io_wreq_bits_waymask(ecc_banks_0_3_io_wreq_bits_waymask)
  );
  SRAMTemplate_136 ecc_banks_0_4 ( // @[BankedDataArray.scala 670:72]
    .clock(ecc_banks_0_4_clock),
    .io_rreq_valid(ecc_banks_0_4_io_rreq_valid),
    .io_rreq_bits_setIdx(ecc_banks_0_4_io_rreq_bits_setIdx),
    .io_rresp_data_0(ecc_banks_0_4_io_rresp_data_0),
    .io_rresp_data_1(ecc_banks_0_4_io_rresp_data_1),
    .io_rresp_data_2(ecc_banks_0_4_io_rresp_data_2),
    .io_rresp_data_3(ecc_banks_0_4_io_rresp_data_3),
    .io_rresp_data_4(ecc_banks_0_4_io_rresp_data_4),
    .io_rresp_data_5(ecc_banks_0_4_io_rresp_data_5),
    .io_rresp_data_6(ecc_banks_0_4_io_rresp_data_6),
    .io_rresp_data_7(ecc_banks_0_4_io_rresp_data_7),
    .io_wreq_valid(ecc_banks_0_4_io_wreq_valid),
    .io_wreq_bits_setIdx(ecc_banks_0_4_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(ecc_banks_0_4_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(ecc_banks_0_4_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(ecc_banks_0_4_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(ecc_banks_0_4_io_wreq_bits_data_3),
    .io_wreq_bits_data_4(ecc_banks_0_4_io_wreq_bits_data_4),
    .io_wreq_bits_data_5(ecc_banks_0_4_io_wreq_bits_data_5),
    .io_wreq_bits_data_6(ecc_banks_0_4_io_wreq_bits_data_6),
    .io_wreq_bits_data_7(ecc_banks_0_4_io_wreq_bits_data_7),
    .io_wreq_bits_waymask(ecc_banks_0_4_io_wreq_bits_waymask)
  );
  SRAMTemplate_136 ecc_banks_0_5 ( // @[BankedDataArray.scala 670:72]
    .clock(ecc_banks_0_5_clock),
    .io_rreq_valid(ecc_banks_0_5_io_rreq_valid),
    .io_rreq_bits_setIdx(ecc_banks_0_5_io_rreq_bits_setIdx),
    .io_rresp_data_0(ecc_banks_0_5_io_rresp_data_0),
    .io_rresp_data_1(ecc_banks_0_5_io_rresp_data_1),
    .io_rresp_data_2(ecc_banks_0_5_io_rresp_data_2),
    .io_rresp_data_3(ecc_banks_0_5_io_rresp_data_3),
    .io_rresp_data_4(ecc_banks_0_5_io_rresp_data_4),
    .io_rresp_data_5(ecc_banks_0_5_io_rresp_data_5),
    .io_rresp_data_6(ecc_banks_0_5_io_rresp_data_6),
    .io_rresp_data_7(ecc_banks_0_5_io_rresp_data_7),
    .io_wreq_valid(ecc_banks_0_5_io_wreq_valid),
    .io_wreq_bits_setIdx(ecc_banks_0_5_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(ecc_banks_0_5_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(ecc_banks_0_5_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(ecc_banks_0_5_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(ecc_banks_0_5_io_wreq_bits_data_3),
    .io_wreq_bits_data_4(ecc_banks_0_5_io_wreq_bits_data_4),
    .io_wreq_bits_data_5(ecc_banks_0_5_io_wreq_bits_data_5),
    .io_wreq_bits_data_6(ecc_banks_0_5_io_wreq_bits_data_6),
    .io_wreq_bits_data_7(ecc_banks_0_5_io_wreq_bits_data_7),
    .io_wreq_bits_waymask(ecc_banks_0_5_io_wreq_bits_waymask)
  );
  SRAMTemplate_136 ecc_banks_0_6 ( // @[BankedDataArray.scala 670:72]
    .clock(ecc_banks_0_6_clock),
    .io_rreq_valid(ecc_banks_0_6_io_rreq_valid),
    .io_rreq_bits_setIdx(ecc_banks_0_6_io_rreq_bits_setIdx),
    .io_rresp_data_0(ecc_banks_0_6_io_rresp_data_0),
    .io_rresp_data_1(ecc_banks_0_6_io_rresp_data_1),
    .io_rresp_data_2(ecc_banks_0_6_io_rresp_data_2),
    .io_rresp_data_3(ecc_banks_0_6_io_rresp_data_3),
    .io_rresp_data_4(ecc_banks_0_6_io_rresp_data_4),
    .io_rresp_data_5(ecc_banks_0_6_io_rresp_data_5),
    .io_rresp_data_6(ecc_banks_0_6_io_rresp_data_6),
    .io_rresp_data_7(ecc_banks_0_6_io_rresp_data_7),
    .io_wreq_valid(ecc_banks_0_6_io_wreq_valid),
    .io_wreq_bits_setIdx(ecc_banks_0_6_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(ecc_banks_0_6_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(ecc_banks_0_6_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(ecc_banks_0_6_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(ecc_banks_0_6_io_wreq_bits_data_3),
    .io_wreq_bits_data_4(ecc_banks_0_6_io_wreq_bits_data_4),
    .io_wreq_bits_data_5(ecc_banks_0_6_io_wreq_bits_data_5),
    .io_wreq_bits_data_6(ecc_banks_0_6_io_wreq_bits_data_6),
    .io_wreq_bits_data_7(ecc_banks_0_6_io_wreq_bits_data_7),
    .io_wreq_bits_waymask(ecc_banks_0_6_io_wreq_bits_waymask)
  );
  SRAMTemplate_136 ecc_banks_0_7 ( // @[BankedDataArray.scala 670:72]
    .clock(ecc_banks_0_7_clock),
    .io_rreq_valid(ecc_banks_0_7_io_rreq_valid),
    .io_rreq_bits_setIdx(ecc_banks_0_7_io_rreq_bits_setIdx),
    .io_rresp_data_0(ecc_banks_0_7_io_rresp_data_0),
    .io_rresp_data_1(ecc_banks_0_7_io_rresp_data_1),
    .io_rresp_data_2(ecc_banks_0_7_io_rresp_data_2),
    .io_rresp_data_3(ecc_banks_0_7_io_rresp_data_3),
    .io_rresp_data_4(ecc_banks_0_7_io_rresp_data_4),
    .io_rresp_data_5(ecc_banks_0_7_io_rresp_data_5),
    .io_rresp_data_6(ecc_banks_0_7_io_rresp_data_6),
    .io_rresp_data_7(ecc_banks_0_7_io_rresp_data_7),
    .io_wreq_valid(ecc_banks_0_7_io_wreq_valid),
    .io_wreq_bits_setIdx(ecc_banks_0_7_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(ecc_banks_0_7_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(ecc_banks_0_7_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(ecc_banks_0_7_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(ecc_banks_0_7_io_wreq_bits_data_3),
    .io_wreq_bits_data_4(ecc_banks_0_7_io_wreq_bits_data_4),
    .io_wreq_bits_data_5(ecc_banks_0_7_io_wreq_bits_data_5),
    .io_wreq_bits_data_6(ecc_banks_0_7_io_wreq_bits_data_6),
    .io_wreq_bits_data_7(ecc_banks_0_7_io_wreq_bits_data_7),
    .io_wreq_bits_waymask(ecc_banks_0_7_io_wreq_bits_waymask)
  );
  assign io_read_0_ready = ~wr_bank_conflict_0; // @[BankedDataArray.scala 740:53]
  assign io_read_1_ready = ~wr_bank_conflict_1; // @[BankedDataArray.scala 740:53]
  assign io_readline_ready = ~wrl_bank_conflict; // @[BankedDataArray.scala 739:24]
  assign io_readline_resp_0_raw_data = bank_result_0_0_raw_data; // @[BankedDataArray.scala 860:20]
  assign io_readline_resp_0_error_delayed = bank_result_0_0_error_delayed; // @[BankedDataArray.scala 860:20]
  assign io_readline_resp_1_raw_data = bank_result_0_1_raw_data; // @[BankedDataArray.scala 860:20]
  assign io_readline_resp_1_error_delayed = bank_result_0_1_error_delayed; // @[BankedDataArray.scala 860:20]
  assign io_readline_resp_2_raw_data = bank_result_0_2_raw_data; // @[BankedDataArray.scala 860:20]
  assign io_readline_resp_2_error_delayed = bank_result_0_2_error_delayed; // @[BankedDataArray.scala 860:20]
  assign io_readline_resp_3_raw_data = bank_result_0_3_raw_data; // @[BankedDataArray.scala 860:20]
  assign io_readline_resp_3_error_delayed = bank_result_0_3_error_delayed; // @[BankedDataArray.scala 860:20]
  assign io_readline_resp_4_raw_data = bank_result_0_4_raw_data; // @[BankedDataArray.scala 860:20]
  assign io_readline_resp_4_error_delayed = bank_result_0_4_error_delayed; // @[BankedDataArray.scala 860:20]
  assign io_readline_resp_5_raw_data = bank_result_0_5_raw_data; // @[BankedDataArray.scala 860:20]
  assign io_readline_resp_5_error_delayed = bank_result_0_5_error_delayed; // @[BankedDataArray.scala 860:20]
  assign io_readline_resp_6_raw_data = bank_result_0_6_raw_data; // @[BankedDataArray.scala 860:20]
  assign io_readline_resp_6_error_delayed = bank_result_0_6_error_delayed; // @[BankedDataArray.scala 860:20]
  assign io_readline_resp_7_raw_data = bank_result_0_7_raw_data; // @[BankedDataArray.scala 860:20]
  assign io_readline_resp_7_error_delayed = bank_result_0_7_error_delayed; // @[BankedDataArray.scala 860:20]
  assign io_readline_error_delayed = io_readline_error_delayed_REG_1 & _io_readline_error_delayed_T_2; // @[BankedDataArray.scala 861:69]
  assign io_read_resp_delayed_0_0_raw_data = 3'h7 == rr_bank_addr__0[2:0] ? bank_result_delayed_0_7_raw_data : _GEN_22; // @[BankedDataArray.scala 853:{34,34}]
  assign io_read_resp_delayed_1_0_raw_data = 3'h7 == rr_bank_addr_1_0[2:0] ? bank_result_delayed_0_7_raw_data : _GEN_86; // @[BankedDataArray.scala 853:{34,34}]
  assign io_read_error_delayed_0_0 = rr_read_fire & _GEN_39 & ~io_read_error_delayed_0_0_REG; // @[BankedDataArray.scala 855:108]
  assign io_read_error_delayed_1_0 = rr_read_fire_1 & _GEN_103 & ~io_read_error_delayed_1_0_REG; // @[BankedDataArray.scala 855:108]
  assign io_bank_conflict_slow_0 = real_other_bank_conflict_reg; // @[BankedDataArray.scala 750:62]
  assign io_bank_conflict_slow_1 = real_other_bank_conflict_reg_1 | real_rr_bank_conflict_reg; // @[BankedDataArray.scala 750:62]
  assign io_disable_ld_fast_wakeup_0 = wr_bank_conflict_0 | rrl_bank_conflict_intend_0; // @[BankedDataArray.scala 753:57]
  assign io_disable_ld_fast_wakeup_1 = wr_bank_conflict_1 | rrl_bank_conflict_intend_1 | rr_bank_conflict_0_1; // @[BankedDataArray.scala 753:88]
  assign io_cacheOp_resp_valid = io_cacheOp_resp_valid_REG; // @[BankedDataArray.scala 958:25]
  assign io_cacheOp_resp_bits_read_data_vec_0 = bank_result_0_0_raw_data; // @[BankedDataArray.scala 960:52]
  assign io_cacheOp_resp_bits_read_data_vec_1 = bank_result_0_1_raw_data; // @[BankedDataArray.scala 960:52]
  assign io_cacheOp_resp_bits_read_data_vec_2 = bank_result_0_2_raw_data; // @[BankedDataArray.scala 960:52]
  assign io_cacheOp_resp_bits_read_data_vec_3 = bank_result_0_3_raw_data; // @[BankedDataArray.scala 960:52]
  assign io_cacheOp_resp_bits_read_data_vec_4 = bank_result_0_4_raw_data; // @[BankedDataArray.scala 960:52]
  assign io_cacheOp_resp_bits_read_data_vec_5 = bank_result_0_5_raw_data; // @[BankedDataArray.scala 960:52]
  assign io_cacheOp_resp_bits_read_data_vec_6 = bank_result_0_6_raw_data; // @[BankedDataArray.scala 960:52]
  assign io_cacheOp_resp_bits_read_data_vec_7 = bank_result_0_7_raw_data; // @[BankedDataArray.scala 960:52]
  assign io_cacheOp_resp_bits_read_data_ecc = {{56'd0}, _io_cacheOp_resp_bits_read_data_ecc_T_2}; // @[BankedDataArray.scala 964:38]
  assign data_banks_0_0_clock = clock;
  assign data_banks_0_0_io_wen = io_cacheOp_req_dup_8_valid & _T_150 | wen_reg; // @[BankedDataArray.scala 933:117 872:25 935:27]
  assign data_banks_0_0_io_waddr = io_cacheOp_req_dup_8_valid & _T_150 ? cacheOpSetAddr : write_set_addr_dup_reg_0; // @[BankedDataArray.scala 933:117 874:27 937:29]
  assign data_banks_0_0_io_wway_en = _GEN_193[7:0];
  assign data_banks_0_0_io_wdata = io_cacheOp_req_dup_8_valid & _T_150 ? io_cacheOp_req_bits_write_data_vec_0 :
    write_data_reg_0; // @[BankedDataArray.scala 933:117 875:27 938:29]
  assign data_banks_0_0_io_ren = io_cacheOp_req_dup_0_valid & _T_118 | read_enable; // @[BankedDataArray.scala 912:116 816:25 914:27]
  assign data_banks_0_0_io_raddr = io_cacheOp_req_dup_0_valid & _T_118 ? cacheOpSetAddr : bank_set_addr; // @[BankedDataArray.scala 912:116 818:27 916:29]
  assign data_banks_0_0_io_rway_en = _GEN_137[7:0];
  assign data_banks_0_1_clock = clock;
  assign data_banks_0_1_io_wen = io_cacheOp_req_dup_8_valid & _T_150 | wen_reg_1; // @[BankedDataArray.scala 933:117 872:25 935:27]
  assign data_banks_0_1_io_waddr = io_cacheOp_req_dup_8_valid & _T_150 ? cacheOpSetAddr : write_set_addr_dup_reg_1; // @[BankedDataArray.scala 933:117 874:27 937:29]
  assign data_banks_0_1_io_wway_en = _GEN_198[7:0];
  assign data_banks_0_1_io_wdata = io_cacheOp_req_dup_8_valid & _T_150 ? io_cacheOp_req_bits_write_data_vec_1 :
    write_data_reg_1; // @[BankedDataArray.scala 933:117 875:27 938:29]
  assign data_banks_0_1_io_ren = io_cacheOp_req_dup_0_valid & _T_118 | read_enable_1; // @[BankedDataArray.scala 912:116 816:25 914:27]
  assign data_banks_0_1_io_raddr = io_cacheOp_req_dup_0_valid & _T_118 ? cacheOpSetAddr : bank_set_addr_1; // @[BankedDataArray.scala 912:116 818:27 916:29]
  assign data_banks_0_1_io_rway_en = _GEN_141[7:0];
  assign data_banks_0_2_clock = clock;
  assign data_banks_0_2_io_wen = io_cacheOp_req_dup_9_valid & _T_154 | wen_reg_2; // @[BankedDataArray.scala 933:117 872:25 935:27]
  assign data_banks_0_2_io_waddr = io_cacheOp_req_dup_9_valid & _T_154 ? cacheOpSetAddr : write_set_addr_dup_reg_2; // @[BankedDataArray.scala 933:117 874:27 937:29]
  assign data_banks_0_2_io_wway_en = _GEN_203[7:0];
  assign data_banks_0_2_io_wdata = io_cacheOp_req_dup_9_valid & _T_154 ? io_cacheOp_req_bits_write_data_vec_2 :
    write_data_reg_2; // @[BankedDataArray.scala 933:117 875:27 938:29]
  assign data_banks_0_2_io_ren = io_cacheOp_req_dup_1_valid & _T_122 | read_enable_2; // @[BankedDataArray.scala 912:116 816:25 914:27]
  assign data_banks_0_2_io_raddr = io_cacheOp_req_dup_1_valid & _T_122 ? cacheOpSetAddr : bank_set_addr_2; // @[BankedDataArray.scala 912:116 818:27 916:29]
  assign data_banks_0_2_io_rway_en = _GEN_145[7:0];
  assign data_banks_0_3_clock = clock;
  assign data_banks_0_3_io_wen = io_cacheOp_req_dup_9_valid & _T_154 | wen_reg_3; // @[BankedDataArray.scala 933:117 872:25 935:27]
  assign data_banks_0_3_io_waddr = io_cacheOp_req_dup_9_valid & _T_154 ? cacheOpSetAddr : write_set_addr_dup_reg_3; // @[BankedDataArray.scala 933:117 874:27 937:29]
  assign data_banks_0_3_io_wway_en = _GEN_208[7:0];
  assign data_banks_0_3_io_wdata = io_cacheOp_req_dup_9_valid & _T_154 ? io_cacheOp_req_bits_write_data_vec_3 :
    write_data_reg_3; // @[BankedDataArray.scala 933:117 875:27 938:29]
  assign data_banks_0_3_io_ren = io_cacheOp_req_dup_1_valid & _T_122 | read_enable_3; // @[BankedDataArray.scala 912:116 816:25 914:27]
  assign data_banks_0_3_io_raddr = io_cacheOp_req_dup_1_valid & _T_122 ? cacheOpSetAddr : bank_set_addr_3; // @[BankedDataArray.scala 912:116 818:27 916:29]
  assign data_banks_0_3_io_rway_en = _GEN_149[7:0];
  assign data_banks_0_4_clock = clock;
  assign data_banks_0_4_io_wen = io_cacheOp_req_dup_10_valid & _T_158 | wen_reg_4; // @[BankedDataArray.scala 933:117 872:25 935:27]
  assign data_banks_0_4_io_waddr = io_cacheOp_req_dup_10_valid & _T_158 ? cacheOpSetAddr : write_set_addr_dup_reg_4; // @[BankedDataArray.scala 933:117 874:27 937:29]
  assign data_banks_0_4_io_wway_en = _GEN_213[7:0];
  assign data_banks_0_4_io_wdata = io_cacheOp_req_dup_10_valid & _T_158 ? io_cacheOp_req_bits_write_data_vec_4 :
    write_data_reg_4; // @[BankedDataArray.scala 933:117 875:27 938:29]
  assign data_banks_0_4_io_ren = io_cacheOp_req_dup_2_valid & _T_126 | read_enable_4; // @[BankedDataArray.scala 912:116 816:25 914:27]
  assign data_banks_0_4_io_raddr = io_cacheOp_req_dup_2_valid & _T_126 ? cacheOpSetAddr : bank_set_addr_4; // @[BankedDataArray.scala 912:116 818:27 916:29]
  assign data_banks_0_4_io_rway_en = _GEN_153[7:0];
  assign data_banks_0_5_clock = clock;
  assign data_banks_0_5_io_wen = io_cacheOp_req_dup_10_valid & _T_158 | wen_reg_5; // @[BankedDataArray.scala 933:117 872:25 935:27]
  assign data_banks_0_5_io_waddr = io_cacheOp_req_dup_10_valid & _T_158 ? cacheOpSetAddr : write_set_addr_dup_reg_5; // @[BankedDataArray.scala 933:117 874:27 937:29]
  assign data_banks_0_5_io_wway_en = _GEN_218[7:0];
  assign data_banks_0_5_io_wdata = io_cacheOp_req_dup_10_valid & _T_158 ? io_cacheOp_req_bits_write_data_vec_5 :
    write_data_reg_5; // @[BankedDataArray.scala 933:117 875:27 938:29]
  assign data_banks_0_5_io_ren = io_cacheOp_req_dup_2_valid & _T_126 | read_enable_5; // @[BankedDataArray.scala 912:116 816:25 914:27]
  assign data_banks_0_5_io_raddr = io_cacheOp_req_dup_2_valid & _T_126 ? cacheOpSetAddr : bank_set_addr_5; // @[BankedDataArray.scala 912:116 818:27 916:29]
  assign data_banks_0_5_io_rway_en = _GEN_157[7:0];
  assign data_banks_0_6_clock = clock;
  assign data_banks_0_6_io_wen = io_cacheOp_req_dup_11_valid & _T_162 | wen_reg_6; // @[BankedDataArray.scala 933:117 872:25 935:27]
  assign data_banks_0_6_io_waddr = io_cacheOp_req_dup_11_valid & _T_162 ? cacheOpSetAddr : write_set_addr_dup_reg_6; // @[BankedDataArray.scala 933:117 874:27 937:29]
  assign data_banks_0_6_io_wway_en = _GEN_223[7:0];
  assign data_banks_0_6_io_wdata = io_cacheOp_req_dup_11_valid & _T_162 ? io_cacheOp_req_bits_write_data_vec_6 :
    write_data_reg_6; // @[BankedDataArray.scala 933:117 875:27 938:29]
  assign data_banks_0_6_io_ren = io_cacheOp_req_dup_3_valid & _T_130 | read_enable_6; // @[BankedDataArray.scala 912:116 816:25 914:27]
  assign data_banks_0_6_io_raddr = io_cacheOp_req_dup_3_valid & _T_130 ? cacheOpSetAddr : bank_set_addr_6; // @[BankedDataArray.scala 912:116 818:27 916:29]
  assign data_banks_0_6_io_rway_en = _GEN_161[7:0];
  assign data_banks_0_7_clock = clock;
  assign data_banks_0_7_io_wen = io_cacheOp_req_dup_11_valid & _T_162 | wen_reg_7; // @[BankedDataArray.scala 933:117 872:25 935:27]
  assign data_banks_0_7_io_waddr = io_cacheOp_req_dup_11_valid & _T_162 ? cacheOpSetAddr : write_set_addr_dup_reg_7; // @[BankedDataArray.scala 933:117 874:27 937:29]
  assign data_banks_0_7_io_wway_en = _GEN_228[7:0];
  assign data_banks_0_7_io_wdata = io_cacheOp_req_dup_11_valid & _T_162 ? io_cacheOp_req_bits_write_data_vec_7 :
    write_data_reg_7; // @[BankedDataArray.scala 933:117 875:27 938:29]
  assign data_banks_0_7_io_ren = io_cacheOp_req_dup_3_valid & _T_130 | read_enable_7; // @[BankedDataArray.scala 912:116 816:25 914:27]
  assign data_banks_0_7_io_raddr = io_cacheOp_req_dup_3_valid & _T_130 ? cacheOpSetAddr : bank_set_addr_7; // @[BankedDataArray.scala 912:116 818:27 916:29]
  assign data_banks_0_7_io_rway_en = _GEN_165[7:0];
  assign ecc_banks_0_0_clock = clock;
  assign ecc_banks_0_0_io_rreq_valid = io_cacheOp_req_dup_4_valid & _T_134 | read_enable; // @[BankedDataArray.scala 923:119 823:31 925:33]
  assign ecc_banks_0_0_io_rreq_bits_setIdx = io_cacheOp_req_dup_4_valid & _T_134 ? cacheOpSetAddr : bank_set_addr; // @[BankedDataArray.scala 923:119 926:39 SRAMTemplate.scala 42:17]
  assign ecc_banks_0_0_io_wreq_valid = io_cacheOp_req_dup_12_valid & _T_166 | wen_reg; // @[BankedDataArray.scala 945:120 879:31 947:33]
  assign ecc_banks_0_0_io_wreq_bits_setIdx = io_cacheOp_req_dup_12_valid & _T_166 ? cacheOpSetAddr :
    write_set_addr_dup_reg_0; // @[BankedDataArray.scala 945:120 SRAMTemplate.scala 42:{17,17}]
  assign ecc_banks_0_0_io_wreq_bits_data_0 = _GEN_234[7:0];
  assign ecc_banks_0_0_io_wreq_bits_data_1 = _GEN_234[7:0];
  assign ecc_banks_0_0_io_wreq_bits_data_2 = _GEN_234[7:0];
  assign ecc_banks_0_0_io_wreq_bits_data_3 = _GEN_234[7:0];
  assign ecc_banks_0_0_io_wreq_bits_data_4 = _GEN_234[7:0];
  assign ecc_banks_0_0_io_wreq_bits_data_5 = _GEN_234[7:0];
  assign ecc_banks_0_0_io_wreq_bits_data_6 = _GEN_234[7:0];
  assign ecc_banks_0_0_io_wreq_bits_data_7 = _GEN_234[7:0];
  assign ecc_banks_0_0_io_wreq_bits_waymask = _GEN_242[7:0];
  assign ecc_banks_0_1_clock = clock;
  assign ecc_banks_0_1_io_rreq_valid = io_cacheOp_req_dup_4_valid & _T_134 | read_enable_1; // @[BankedDataArray.scala 923:119 823:31 925:33]
  assign ecc_banks_0_1_io_rreq_bits_setIdx = io_cacheOp_req_dup_4_valid & _T_134 ? cacheOpSetAddr : bank_set_addr_1; // @[BankedDataArray.scala 923:119 926:39 SRAMTemplate.scala 42:17]
  assign ecc_banks_0_1_io_wreq_valid = io_cacheOp_req_dup_12_valid & _T_166 | wen_reg_1; // @[BankedDataArray.scala 945:120 879:31 947:33]
  assign ecc_banks_0_1_io_wreq_bits_setIdx = io_cacheOp_req_dup_12_valid & _T_166 ? cacheOpSetAddr :
    write_set_addr_dup_reg_1; // @[BankedDataArray.scala 945:120 SRAMTemplate.scala 42:{17,17}]
  assign ecc_banks_0_1_io_wreq_bits_data_0 = _GEN_246[7:0];
  assign ecc_banks_0_1_io_wreq_bits_data_1 = _GEN_246[7:0];
  assign ecc_banks_0_1_io_wreq_bits_data_2 = _GEN_246[7:0];
  assign ecc_banks_0_1_io_wreq_bits_data_3 = _GEN_246[7:0];
  assign ecc_banks_0_1_io_wreq_bits_data_4 = _GEN_246[7:0];
  assign ecc_banks_0_1_io_wreq_bits_data_5 = _GEN_246[7:0];
  assign ecc_banks_0_1_io_wreq_bits_data_6 = _GEN_246[7:0];
  assign ecc_banks_0_1_io_wreq_bits_data_7 = _GEN_246[7:0];
  assign ecc_banks_0_1_io_wreq_bits_waymask = _GEN_254[7:0];
  assign ecc_banks_0_2_clock = clock;
  assign ecc_banks_0_2_io_rreq_valid = io_cacheOp_req_dup_5_valid & _T_138 | read_enable_2; // @[BankedDataArray.scala 923:119 823:31 925:33]
  assign ecc_banks_0_2_io_rreq_bits_setIdx = io_cacheOp_req_dup_5_valid & _T_138 ? cacheOpSetAddr : bank_set_addr_2; // @[BankedDataArray.scala 923:119 926:39 SRAMTemplate.scala 42:17]
  assign ecc_banks_0_2_io_wreq_valid = io_cacheOp_req_dup_13_valid & _T_170 | wen_reg_2; // @[BankedDataArray.scala 945:120 879:31 947:33]
  assign ecc_banks_0_2_io_wreq_bits_setIdx = io_cacheOp_req_dup_13_valid & _T_170 ? cacheOpSetAddr :
    write_set_addr_dup_reg_2; // @[BankedDataArray.scala 945:120 SRAMTemplate.scala 42:{17,17}]
  assign ecc_banks_0_2_io_wreq_bits_data_0 = _GEN_258[7:0];
  assign ecc_banks_0_2_io_wreq_bits_data_1 = _GEN_258[7:0];
  assign ecc_banks_0_2_io_wreq_bits_data_2 = _GEN_258[7:0];
  assign ecc_banks_0_2_io_wreq_bits_data_3 = _GEN_258[7:0];
  assign ecc_banks_0_2_io_wreq_bits_data_4 = _GEN_258[7:0];
  assign ecc_banks_0_2_io_wreq_bits_data_5 = _GEN_258[7:0];
  assign ecc_banks_0_2_io_wreq_bits_data_6 = _GEN_258[7:0];
  assign ecc_banks_0_2_io_wreq_bits_data_7 = _GEN_258[7:0];
  assign ecc_banks_0_2_io_wreq_bits_waymask = _GEN_266[7:0];
  assign ecc_banks_0_3_clock = clock;
  assign ecc_banks_0_3_io_rreq_valid = io_cacheOp_req_dup_5_valid & _T_138 | read_enable_3; // @[BankedDataArray.scala 923:119 823:31 925:33]
  assign ecc_banks_0_3_io_rreq_bits_setIdx = io_cacheOp_req_dup_5_valid & _T_138 ? cacheOpSetAddr : bank_set_addr_3; // @[BankedDataArray.scala 923:119 926:39 SRAMTemplate.scala 42:17]
  assign ecc_banks_0_3_io_wreq_valid = io_cacheOp_req_dup_13_valid & _T_170 | wen_reg_3; // @[BankedDataArray.scala 945:120 879:31 947:33]
  assign ecc_banks_0_3_io_wreq_bits_setIdx = io_cacheOp_req_dup_13_valid & _T_170 ? cacheOpSetAddr :
    write_set_addr_dup_reg_3; // @[BankedDataArray.scala 945:120 SRAMTemplate.scala 42:{17,17}]
  assign ecc_banks_0_3_io_wreq_bits_data_0 = _GEN_270[7:0];
  assign ecc_banks_0_3_io_wreq_bits_data_1 = _GEN_270[7:0];
  assign ecc_banks_0_3_io_wreq_bits_data_2 = _GEN_270[7:0];
  assign ecc_banks_0_3_io_wreq_bits_data_3 = _GEN_270[7:0];
  assign ecc_banks_0_3_io_wreq_bits_data_4 = _GEN_270[7:0];
  assign ecc_banks_0_3_io_wreq_bits_data_5 = _GEN_270[7:0];
  assign ecc_banks_0_3_io_wreq_bits_data_6 = _GEN_270[7:0];
  assign ecc_banks_0_3_io_wreq_bits_data_7 = _GEN_270[7:0];
  assign ecc_banks_0_3_io_wreq_bits_waymask = _GEN_278[7:0];
  assign ecc_banks_0_4_clock = clock;
  assign ecc_banks_0_4_io_rreq_valid = io_cacheOp_req_dup_6_valid & _T_142 | read_enable_4; // @[BankedDataArray.scala 923:119 823:31 925:33]
  assign ecc_banks_0_4_io_rreq_bits_setIdx = io_cacheOp_req_dup_6_valid & _T_142 ? cacheOpSetAddr : bank_set_addr_4; // @[BankedDataArray.scala 923:119 926:39 SRAMTemplate.scala 42:17]
  assign ecc_banks_0_4_io_wreq_valid = io_cacheOp_req_dup_14_valid & _T_174 | wen_reg_4; // @[BankedDataArray.scala 945:120 879:31 947:33]
  assign ecc_banks_0_4_io_wreq_bits_setIdx = io_cacheOp_req_dup_14_valid & _T_174 ? cacheOpSetAddr :
    write_set_addr_dup_reg_4; // @[BankedDataArray.scala 945:120 SRAMTemplate.scala 42:{17,17}]
  assign ecc_banks_0_4_io_wreq_bits_data_0 = _GEN_282[7:0];
  assign ecc_banks_0_4_io_wreq_bits_data_1 = _GEN_282[7:0];
  assign ecc_banks_0_4_io_wreq_bits_data_2 = _GEN_282[7:0];
  assign ecc_banks_0_4_io_wreq_bits_data_3 = _GEN_282[7:0];
  assign ecc_banks_0_4_io_wreq_bits_data_4 = _GEN_282[7:0];
  assign ecc_banks_0_4_io_wreq_bits_data_5 = _GEN_282[7:0];
  assign ecc_banks_0_4_io_wreq_bits_data_6 = _GEN_282[7:0];
  assign ecc_banks_0_4_io_wreq_bits_data_7 = _GEN_282[7:0];
  assign ecc_banks_0_4_io_wreq_bits_waymask = _GEN_290[7:0];
  assign ecc_banks_0_5_clock = clock;
  assign ecc_banks_0_5_io_rreq_valid = io_cacheOp_req_dup_6_valid & _T_142 | read_enable_5; // @[BankedDataArray.scala 923:119 823:31 925:33]
  assign ecc_banks_0_5_io_rreq_bits_setIdx = io_cacheOp_req_dup_6_valid & _T_142 ? cacheOpSetAddr : bank_set_addr_5; // @[BankedDataArray.scala 923:119 926:39 SRAMTemplate.scala 42:17]
  assign ecc_banks_0_5_io_wreq_valid = io_cacheOp_req_dup_14_valid & _T_174 | wen_reg_5; // @[BankedDataArray.scala 945:120 879:31 947:33]
  assign ecc_banks_0_5_io_wreq_bits_setIdx = io_cacheOp_req_dup_14_valid & _T_174 ? cacheOpSetAddr :
    write_set_addr_dup_reg_5; // @[BankedDataArray.scala 945:120 SRAMTemplate.scala 42:{17,17}]
  assign ecc_banks_0_5_io_wreq_bits_data_0 = _GEN_294[7:0];
  assign ecc_banks_0_5_io_wreq_bits_data_1 = _GEN_294[7:0];
  assign ecc_banks_0_5_io_wreq_bits_data_2 = _GEN_294[7:0];
  assign ecc_banks_0_5_io_wreq_bits_data_3 = _GEN_294[7:0];
  assign ecc_banks_0_5_io_wreq_bits_data_4 = _GEN_294[7:0];
  assign ecc_banks_0_5_io_wreq_bits_data_5 = _GEN_294[7:0];
  assign ecc_banks_0_5_io_wreq_bits_data_6 = _GEN_294[7:0];
  assign ecc_banks_0_5_io_wreq_bits_data_7 = _GEN_294[7:0];
  assign ecc_banks_0_5_io_wreq_bits_waymask = _GEN_302[7:0];
  assign ecc_banks_0_6_clock = clock;
  assign ecc_banks_0_6_io_rreq_valid = io_cacheOp_req_dup_7_valid & _T_146 | read_enable_6; // @[BankedDataArray.scala 923:119 823:31 925:33]
  assign ecc_banks_0_6_io_rreq_bits_setIdx = io_cacheOp_req_dup_7_valid & _T_146 ? cacheOpSetAddr : bank_set_addr_6; // @[BankedDataArray.scala 923:119 926:39 SRAMTemplate.scala 42:17]
  assign ecc_banks_0_6_io_wreq_valid = io_cacheOp_req_dup_15_valid & _T_178 | wen_reg_6; // @[BankedDataArray.scala 945:120 879:31 947:33]
  assign ecc_banks_0_6_io_wreq_bits_setIdx = io_cacheOp_req_dup_15_valid & _T_178 ? cacheOpSetAddr :
    write_set_addr_dup_reg_6; // @[BankedDataArray.scala 945:120 SRAMTemplate.scala 42:{17,17}]
  assign ecc_banks_0_6_io_wreq_bits_data_0 = _GEN_306[7:0];
  assign ecc_banks_0_6_io_wreq_bits_data_1 = _GEN_306[7:0];
  assign ecc_banks_0_6_io_wreq_bits_data_2 = _GEN_306[7:0];
  assign ecc_banks_0_6_io_wreq_bits_data_3 = _GEN_306[7:0];
  assign ecc_banks_0_6_io_wreq_bits_data_4 = _GEN_306[7:0];
  assign ecc_banks_0_6_io_wreq_bits_data_5 = _GEN_306[7:0];
  assign ecc_banks_0_6_io_wreq_bits_data_6 = _GEN_306[7:0];
  assign ecc_banks_0_6_io_wreq_bits_data_7 = _GEN_306[7:0];
  assign ecc_banks_0_6_io_wreq_bits_waymask = _GEN_314[7:0];
  assign ecc_banks_0_7_clock = clock;
  assign ecc_banks_0_7_io_rreq_valid = io_cacheOp_req_dup_7_valid & _T_146 | read_enable_7; // @[BankedDataArray.scala 923:119 823:31 925:33]
  assign ecc_banks_0_7_io_rreq_bits_setIdx = io_cacheOp_req_dup_7_valid & _T_146 ? cacheOpSetAddr : bank_set_addr_7; // @[BankedDataArray.scala 923:119 926:39 SRAMTemplate.scala 42:17]
  assign ecc_banks_0_7_io_wreq_valid = io_cacheOp_req_dup_15_valid & _T_178 | wen_reg_7; // @[BankedDataArray.scala 945:120 879:31 947:33]
  assign ecc_banks_0_7_io_wreq_bits_setIdx = io_cacheOp_req_dup_15_valid & _T_178 ? cacheOpSetAddr :
    write_set_addr_dup_reg_7; // @[BankedDataArray.scala 945:120 SRAMTemplate.scala 42:{17,17}]
  assign ecc_banks_0_7_io_wreq_bits_data_0 = _GEN_318[7:0];
  assign ecc_banks_0_7_io_wreq_bits_data_1 = _GEN_318[7:0];
  assign ecc_banks_0_7_io_wreq_bits_data_2 = _GEN_318[7:0];
  assign ecc_banks_0_7_io_wreq_bits_data_3 = _GEN_318[7:0];
  assign ecc_banks_0_7_io_wreq_bits_data_4 = _GEN_318[7:0];
  assign ecc_banks_0_7_io_wreq_bits_data_5 = _GEN_318[7:0];
  assign ecc_banks_0_7_io_wreq_bits_data_6 = _GEN_318[7:0];
  assign ecc_banks_0_7_io_wreq_bits_data_7 = _GEN_318[7:0];
  assign ecc_banks_0_7_io_wreq_bits_waymask = _GEN_326[7:0];
  always @(posedge clock) begin
    write_bank_mask_reg <= io_write_bits_wmask; // @[BankedDataArray.scala 692:36]
    write_data_reg_0 <= io_write_bits_data_0; // @[BankedDataArray.scala 693:31]
    write_data_reg_1 <= io_write_bits_data_1; // @[BankedDataArray.scala 693:31]
    write_data_reg_2 <= io_write_bits_data_2; // @[BankedDataArray.scala 693:31]
    write_data_reg_3 <= io_write_bits_data_3; // @[BankedDataArray.scala 693:31]
    write_data_reg_4 <= io_write_bits_data_4; // @[BankedDataArray.scala 693:31]
    write_data_reg_5 <= io_write_bits_data_5; // @[BankedDataArray.scala 693:31]
    write_data_reg_6 <= io_write_bits_data_6; // @[BankedDataArray.scala 693:31]
    write_data_reg_7 <= io_write_bits_data_7; // @[BankedDataArray.scala 693:31]
    write_valid_reg <= io_write_valid; // @[BankedDataArray.scala 694:32]
    write_valid_dup_reg_0 <= io_write_dup_0_valid; // @[BankedDataArray.scala 695:58]
    write_valid_dup_reg_1 <= io_write_dup_1_valid; // @[BankedDataArray.scala 695:58]
    write_valid_dup_reg_2 <= io_write_dup_2_valid; // @[BankedDataArray.scala 695:58]
    write_valid_dup_reg_3 <= io_write_dup_3_valid; // @[BankedDataArray.scala 695:58]
    write_valid_dup_reg_4 <= io_write_dup_4_valid; // @[BankedDataArray.scala 695:58]
    write_valid_dup_reg_5 <= io_write_dup_5_valid; // @[BankedDataArray.scala 695:58]
    write_valid_dup_reg_6 <= io_write_dup_6_valid; // @[BankedDataArray.scala 695:58]
    write_valid_dup_reg_7 <= io_write_dup_7_valid; // @[BankedDataArray.scala 695:58]
    write_wayen_dup_reg_0 <= io_write_dup_0_bits_way_en; // @[BankedDataArray.scala 696:58]
    write_wayen_dup_reg_1 <= io_write_dup_1_bits_way_en; // @[BankedDataArray.scala 696:58]
    write_wayen_dup_reg_2 <= io_write_dup_2_bits_way_en; // @[BankedDataArray.scala 696:58]
    write_wayen_dup_reg_3 <= io_write_dup_3_bits_way_en; // @[BankedDataArray.scala 696:58]
    write_wayen_dup_reg_4 <= io_write_dup_4_bits_way_en; // @[BankedDataArray.scala 696:58]
    write_wayen_dup_reg_5 <= io_write_dup_5_bits_way_en; // @[BankedDataArray.scala 696:58]
    write_wayen_dup_reg_6 <= io_write_dup_6_bits_way_en; // @[BankedDataArray.scala 696:58]
    write_wayen_dup_reg_7 <= io_write_dup_7_bits_way_en; // @[BankedDataArray.scala 696:58]
    write_set_addr_dup_reg_0 <= io_write_dup_0_bits_addr[11:6]; // @[DCacheWrapper.scala 214:9]
    write_set_addr_dup_reg_1 <= io_write_dup_1_bits_addr[11:6]; // @[DCacheWrapper.scala 214:9]
    write_set_addr_dup_reg_2 <= io_write_dup_2_bits_addr[11:6]; // @[DCacheWrapper.scala 214:9]
    write_set_addr_dup_reg_3 <= io_write_dup_3_bits_addr[11:6]; // @[DCacheWrapper.scala 214:9]
    write_set_addr_dup_reg_4 <= io_write_dup_4_bits_addr[11:6]; // @[DCacheWrapper.scala 214:9]
    write_set_addr_dup_reg_5 <= io_write_dup_5_bits_addr[11:6]; // @[DCacheWrapper.scala 214:9]
    write_set_addr_dup_reg_6 <= io_write_dup_6_bits_addr[11:6]; // @[DCacheWrapper.scala 214:9]
    write_set_addr_dup_reg_7 <= io_write_dup_7_bits_addr[11:6]; // @[DCacheWrapper.scala 214:9]
    set_addrs_reg_0_REG <= io_read_0_bits_addr[11:6]; // @[DCacheWrapper.scala 214:9]
    way_en_reg_0_REG <= io_read_0_bits_way_en; // @[BankedDataArray.scala 714:39]
    set_addrs_reg_1_REG <= io_read_1_bits_addr[11:6]; // @[DCacheWrapper.scala 214:9]
    way_en_reg_1_REG <= io_read_1_bits_way_en; // @[BankedDataArray.scala 714:39]
    real_other_bank_conflict_reg <= wr_bank_conflict_0 | rrl_bank_conflict_0; // @[BankedDataArray.scala 745:68]
    real_other_bank_conflict_reg_1 <= wr_bank_conflict_1 | rrl_bank_conflict_1; // @[BankedDataArray.scala 745:68]
    real_rr_bank_conflict_reg_REG <= _rr_bank_conflict_T_5 & _rr_bank_conflict_T_9; // @[BankedDataArray.scala 720:35]
    bank_way_en_reg_REG <= io_readline_valid; // @[BankedDataArray.scala 796:45]
    bank_way_en_reg_REG_1 <= io_readline_bits_way_en; // @[BankedDataArray.scala 804:16]
    bank_way_en_reg_REG_2 <= io_read_0_valid & bank_addrs_0_0 == 4'h0; // @[BankedDataArray.scala 790:58]
    bank_way_en_reg_REG_3 <= io_read_0_bits_way_en; // @[BankedDataArray.scala 681:20 713:25]
    bank_way_en_reg_REG_5 <= io_read_1_bits_way_en; // @[BankedDataArray.scala 681:20 713:25]
    ecc_data_delayed_REG <= |_read_enable_T | io_readline_valid; // @[BankedDataArray.scala 812:53]
    if (ecc_data_delayed_REG) begin // @[Reg.scala 17:18]
      ecc_data_delayed <= ecc_data; // @[Reg.scala 17:22]
    end
    bank_way_en_reg_REG_6 <= io_readline_valid; // @[BankedDataArray.scala 796:45]
    bank_way_en_reg_REG_7 <= io_readline_bits_way_en; // @[BankedDataArray.scala 804:16]
    bank_way_en_reg_REG_8 <= io_read_0_valid & bank_addrs_0_0 == 4'h1; // @[BankedDataArray.scala 790:58]
    bank_way_en_reg_REG_9 <= io_read_0_bits_way_en; // @[BankedDataArray.scala 681:20 713:25]
    bank_way_en_reg_REG_11 <= io_read_1_bits_way_en; // @[BankedDataArray.scala 681:20 713:25]
    ecc_data_delayed_REG_1 <= |_read_enable_T_2 | io_readline_valid; // @[BankedDataArray.scala 812:53]
    if (ecc_data_delayed_REG_1) begin // @[Reg.scala 17:18]
      ecc_data_delayed_1 <= ecc_data_1; // @[Reg.scala 17:22]
    end
    bank_way_en_reg_REG_12 <= io_readline_valid; // @[BankedDataArray.scala 796:45]
    bank_way_en_reg_REG_13 <= io_readline_bits_way_en; // @[BankedDataArray.scala 804:16]
    bank_way_en_reg_REG_14 <= io_read_0_valid & bank_addrs_0_0 == 4'h2; // @[BankedDataArray.scala 790:58]
    bank_way_en_reg_REG_15 <= io_read_0_bits_way_en; // @[BankedDataArray.scala 681:20 713:25]
    bank_way_en_reg_REG_17 <= io_read_1_bits_way_en; // @[BankedDataArray.scala 681:20 713:25]
    ecc_data_delayed_REG_2 <= |_read_enable_T_4 | io_readline_valid; // @[BankedDataArray.scala 812:53]
    if (ecc_data_delayed_REG_2) begin // @[Reg.scala 17:18]
      ecc_data_delayed_2 <= ecc_data_2; // @[Reg.scala 17:22]
    end
    bank_way_en_reg_REG_18 <= io_readline_valid; // @[BankedDataArray.scala 796:45]
    bank_way_en_reg_REG_19 <= io_readline_bits_way_en; // @[BankedDataArray.scala 804:16]
    bank_way_en_reg_REG_20 <= io_read_0_valid & bank_addrs_0_0 == 4'h3; // @[BankedDataArray.scala 790:58]
    bank_way_en_reg_REG_21 <= io_read_0_bits_way_en; // @[BankedDataArray.scala 681:20 713:25]
    bank_way_en_reg_REG_23 <= io_read_1_bits_way_en; // @[BankedDataArray.scala 681:20 713:25]
    ecc_data_delayed_REG_3 <= |_read_enable_T_6 | io_readline_valid; // @[BankedDataArray.scala 812:53]
    if (ecc_data_delayed_REG_3) begin // @[Reg.scala 17:18]
      ecc_data_delayed_3 <= ecc_data_3; // @[Reg.scala 17:22]
    end
    bank_way_en_reg_REG_24 <= io_readline_valid; // @[BankedDataArray.scala 796:45]
    bank_way_en_reg_REG_25 <= io_readline_bits_way_en; // @[BankedDataArray.scala 804:16]
    bank_way_en_reg_REG_26 <= io_read_0_valid & bank_addrs_0_0 == 4'h4; // @[BankedDataArray.scala 790:58]
    bank_way_en_reg_REG_27 <= io_read_0_bits_way_en; // @[BankedDataArray.scala 681:20 713:25]
    bank_way_en_reg_REG_29 <= io_read_1_bits_way_en; // @[BankedDataArray.scala 681:20 713:25]
    ecc_data_delayed_REG_4 <= |_read_enable_T_8 | io_readline_valid; // @[BankedDataArray.scala 812:53]
    if (ecc_data_delayed_REG_4) begin // @[Reg.scala 17:18]
      ecc_data_delayed_4 <= ecc_data_4; // @[Reg.scala 17:22]
    end
    bank_way_en_reg_REG_30 <= io_readline_valid; // @[BankedDataArray.scala 796:45]
    bank_way_en_reg_REG_31 <= io_readline_bits_way_en; // @[BankedDataArray.scala 804:16]
    bank_way_en_reg_REG_32 <= io_read_0_valid & bank_addrs_0_0 == 4'h5; // @[BankedDataArray.scala 790:58]
    bank_way_en_reg_REG_33 <= io_read_0_bits_way_en; // @[BankedDataArray.scala 681:20 713:25]
    bank_way_en_reg_REG_35 <= io_read_1_bits_way_en; // @[BankedDataArray.scala 681:20 713:25]
    ecc_data_delayed_REG_5 <= |_read_enable_T_10 | io_readline_valid; // @[BankedDataArray.scala 812:53]
    if (ecc_data_delayed_REG_5) begin // @[Reg.scala 17:18]
      ecc_data_delayed_5 <= ecc_data_5; // @[Reg.scala 17:22]
    end
    bank_way_en_reg_REG_36 <= io_readline_valid; // @[BankedDataArray.scala 796:45]
    bank_way_en_reg_REG_37 <= io_readline_bits_way_en; // @[BankedDataArray.scala 804:16]
    bank_way_en_reg_REG_38 <= io_read_0_valid & bank_addrs_0_0 == 4'h6; // @[BankedDataArray.scala 790:58]
    bank_way_en_reg_REG_39 <= io_read_0_bits_way_en; // @[BankedDataArray.scala 681:20 713:25]
    bank_way_en_reg_REG_41 <= io_read_1_bits_way_en; // @[BankedDataArray.scala 681:20 713:25]
    ecc_data_delayed_REG_6 <= |_read_enable_T_12 | io_readline_valid; // @[BankedDataArray.scala 812:53]
    if (ecc_data_delayed_REG_6) begin // @[Reg.scala 17:18]
      ecc_data_delayed_6 <= ecc_data_6; // @[Reg.scala 17:22]
    end
    bank_way_en_reg_REG_42 <= io_readline_valid; // @[BankedDataArray.scala 796:45]
    bank_way_en_reg_REG_43 <= io_readline_bits_way_en; // @[BankedDataArray.scala 804:16]
    bank_way_en_reg_REG_44 <= io_read_0_valid & bank_addrs_0_0 == 4'h7; // @[BankedDataArray.scala 790:58]
    bank_way_en_reg_REG_45 <= io_read_0_bits_way_en; // @[BankedDataArray.scala 681:20 713:25]
    bank_way_en_reg_REG_47 <= io_read_1_bits_way_en; // @[BankedDataArray.scala 681:20 713:25]
    ecc_data_delayed_REG_7 <= |_read_enable_T_14 | io_readline_valid; // @[BankedDataArray.scala 812:53]
    if (ecc_data_delayed_REG_7) begin // @[Reg.scala 17:18]
      ecc_data_delayed_7 <= ecc_data_7; // @[Reg.scala 17:22]
    end
    bank_result_delayed_0_0_raw_data <= bank_result_0_0_raw_data; // @[BankedDataArray.scala 846:36]
    bank_result_delayed_0_1_raw_data <= bank_result_0_1_raw_data; // @[BankedDataArray.scala 846:36]
    bank_result_delayed_0_2_raw_data <= bank_result_0_2_raw_data; // @[BankedDataArray.scala 846:36]
    bank_result_delayed_0_3_raw_data <= bank_result_0_3_raw_data; // @[BankedDataArray.scala 846:36]
    bank_result_delayed_0_4_raw_data <= bank_result_0_4_raw_data; // @[BankedDataArray.scala 846:36]
    bank_result_delayed_0_5_raw_data <= bank_result_0_5_raw_data; // @[BankedDataArray.scala 846:36]
    bank_result_delayed_0_6_raw_data <= bank_result_0_6_raw_data; // @[BankedDataArray.scala 846:36]
    bank_result_delayed_0_7_raw_data <= bank_result_0_7_raw_data; // @[BankedDataArray.scala 846:36]
    rr_read_fire_REG <= io_read_0_ready & io_read_0_valid; // @[Decoupled.scala 50:35]
    rr_read_fire <= rr_read_fire_REG; // @[BankedDataArray.scala 848:31]
    rr_bank_addr_REG__0 <= {{1'd0}, io_read_0_bits_addr[5:3]}; // @[BankedDataArray.scala 684:24 706:32]
    rr_bank_addr__0 <= rr_bank_addr_REG__0; // @[BankedDataArray.scala 850:31]
    io_read_error_delayed_0_0_REG <= io_bank_conflict_slow_0; // @[BankedDataArray.scala 855:119]
    rr_read_fire_REG_1 <= io_read_1_ready & io_read_1_valid; // @[Decoupled.scala 50:35]
    rr_read_fire_1 <= rr_read_fire_REG_1; // @[BankedDataArray.scala 848:31]
    rr_bank_addr_REG_1_0 <= {{1'd0}, io_read_1_bits_addr[5:3]}; // @[BankedDataArray.scala 684:24 706:32]
    rr_bank_addr_1_0 <= rr_bank_addr_REG_1_0; // @[BankedDataArray.scala 850:31]
    io_read_error_delayed_1_0_REG <= io_bank_conflict_slow_1; // @[BankedDataArray.scala 855:119]
    io_readline_error_delayed_REG <= io_readline_ready & io_readline_valid; // @[Decoupled.scala 50:35]
    io_readline_error_delayed_REG_1 <= io_readline_error_delayed_REG; // @[BankedDataArray.scala 861:39]
    x14 <= _x14_T_3[71:64]; // @[BankedDataArray.scala 272:12]
    x14_1 <= _x14_T_9[71:64]; // @[BankedDataArray.scala 272:12]
    x14_2 <= _x14_T_15[71:64]; // @[BankedDataArray.scala 272:12]
    x14_3 <= _x14_T_21[71:64]; // @[BankedDataArray.scala 272:12]
    x14_4 <= _x14_T_27[71:64]; // @[BankedDataArray.scala 272:12]
    x14_5 <= _x14_T_33[71:64]; // @[BankedDataArray.scala 272:12]
    x14_6 <= _x14_T_39[71:64]; // @[BankedDataArray.scala 272:12]
    x14_7 <= _x14_T_45[71:64]; // @[BankedDataArray.scala 272:12]
    io_cacheOp_resp_valid_REG <= io_cacheOp_req_valid & cacheOpShouldResp; // @[BankedDataArray.scala 958:57]
    eccReadResult_0_REG <= 32'h1 << io_cacheOp_req_bits_wayNum[4:0]; // @[OneHot.scala 57:35]
    eccReadResult_1_REG <= 32'h1 << io_cacheOp_req_bits_wayNum[4:0]; // @[OneHot.scala 57:35]
    eccReadResult_2_REG <= 32'h1 << io_cacheOp_req_bits_wayNum[4:0]; // @[OneHot.scala 57:35]
    eccReadResult_3_REG <= 32'h1 << io_cacheOp_req_bits_wayNum[4:0]; // @[OneHot.scala 57:35]
    eccReadResult_4_REG <= 32'h1 << io_cacheOp_req_bits_wayNum[4:0]; // @[OneHot.scala 57:35]
    eccReadResult_5_REG <= 32'h1 << io_cacheOp_req_bits_wayNum[4:0]; // @[OneHot.scala 57:35]
    eccReadResult_6_REG <= 32'h1 << io_cacheOp_req_bits_wayNum[4:0]; // @[OneHot.scala 57:35]
    eccReadResult_7_REG <= 32'h1 << io_cacheOp_req_bits_wayNum[4:0]; // @[OneHot.scala 57:35]
    io_cacheOp_resp_bits_read_data_ecc_REG <= io_cacheOp_req_bits_bank_num; // @[BankedDataArray.scala 965:26]
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
  write_bank_mask_reg = _RAND_0[7:0];
  _RAND_1 = {2{`RANDOM}};
  write_data_reg_0 = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  write_data_reg_1 = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  write_data_reg_2 = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  write_data_reg_3 = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  write_data_reg_4 = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  write_data_reg_5 = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  write_data_reg_6 = _RAND_7[63:0];
  _RAND_8 = {2{`RANDOM}};
  write_data_reg_7 = _RAND_8[63:0];
  _RAND_9 = {1{`RANDOM}};
  write_valid_reg = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  write_valid_dup_reg_0 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  write_valid_dup_reg_1 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  write_valid_dup_reg_2 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  write_valid_dup_reg_3 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  write_valid_dup_reg_4 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  write_valid_dup_reg_5 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  write_valid_dup_reg_6 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  write_valid_dup_reg_7 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  write_wayen_dup_reg_0 = _RAND_18[7:0];
  _RAND_19 = {1{`RANDOM}};
  write_wayen_dup_reg_1 = _RAND_19[7:0];
  _RAND_20 = {1{`RANDOM}};
  write_wayen_dup_reg_2 = _RAND_20[7:0];
  _RAND_21 = {1{`RANDOM}};
  write_wayen_dup_reg_3 = _RAND_21[7:0];
  _RAND_22 = {1{`RANDOM}};
  write_wayen_dup_reg_4 = _RAND_22[7:0];
  _RAND_23 = {1{`RANDOM}};
  write_wayen_dup_reg_5 = _RAND_23[7:0];
  _RAND_24 = {1{`RANDOM}};
  write_wayen_dup_reg_6 = _RAND_24[7:0];
  _RAND_25 = {1{`RANDOM}};
  write_wayen_dup_reg_7 = _RAND_25[7:0];
  _RAND_26 = {1{`RANDOM}};
  write_set_addr_dup_reg_0 = _RAND_26[5:0];
  _RAND_27 = {1{`RANDOM}};
  write_set_addr_dup_reg_1 = _RAND_27[5:0];
  _RAND_28 = {1{`RANDOM}};
  write_set_addr_dup_reg_2 = _RAND_28[5:0];
  _RAND_29 = {1{`RANDOM}};
  write_set_addr_dup_reg_3 = _RAND_29[5:0];
  _RAND_30 = {1{`RANDOM}};
  write_set_addr_dup_reg_4 = _RAND_30[5:0];
  _RAND_31 = {1{`RANDOM}};
  write_set_addr_dup_reg_5 = _RAND_31[5:0];
  _RAND_32 = {1{`RANDOM}};
  write_set_addr_dup_reg_6 = _RAND_32[5:0];
  _RAND_33 = {1{`RANDOM}};
  write_set_addr_dup_reg_7 = _RAND_33[5:0];
  _RAND_34 = {1{`RANDOM}};
  set_addrs_reg_0_REG = _RAND_34[5:0];
  _RAND_35 = {1{`RANDOM}};
  way_en_reg_0_REG = _RAND_35[7:0];
  _RAND_36 = {1{`RANDOM}};
  set_addrs_reg_1_REG = _RAND_36[5:0];
  _RAND_37 = {1{`RANDOM}};
  way_en_reg_1_REG = _RAND_37[7:0];
  _RAND_38 = {1{`RANDOM}};
  real_other_bank_conflict_reg = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  real_other_bank_conflict_reg_1 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  real_rr_bank_conflict_reg_REG = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  bank_way_en_reg_REG = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  bank_way_en_reg_REG_1 = _RAND_42[7:0];
  _RAND_43 = {1{`RANDOM}};
  bank_way_en_reg_REG_2 = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  bank_way_en_reg_REG_3 = _RAND_44[7:0];
  _RAND_45 = {1{`RANDOM}};
  bank_way_en_reg_REG_5 = _RAND_45[7:0];
  _RAND_46 = {1{`RANDOM}};
  ecc_data_delayed_REG = _RAND_46[0:0];
  _RAND_47 = {3{`RANDOM}};
  ecc_data_delayed = _RAND_47[71:0];
  _RAND_48 = {1{`RANDOM}};
  bank_way_en_reg_REG_6 = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  bank_way_en_reg_REG_7 = _RAND_49[7:0];
  _RAND_50 = {1{`RANDOM}};
  bank_way_en_reg_REG_8 = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  bank_way_en_reg_REG_9 = _RAND_51[7:0];
  _RAND_52 = {1{`RANDOM}};
  bank_way_en_reg_REG_11 = _RAND_52[7:0];
  _RAND_53 = {1{`RANDOM}};
  ecc_data_delayed_REG_1 = _RAND_53[0:0];
  _RAND_54 = {3{`RANDOM}};
  ecc_data_delayed_1 = _RAND_54[71:0];
  _RAND_55 = {1{`RANDOM}};
  bank_way_en_reg_REG_12 = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  bank_way_en_reg_REG_13 = _RAND_56[7:0];
  _RAND_57 = {1{`RANDOM}};
  bank_way_en_reg_REG_14 = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  bank_way_en_reg_REG_15 = _RAND_58[7:0];
  _RAND_59 = {1{`RANDOM}};
  bank_way_en_reg_REG_17 = _RAND_59[7:0];
  _RAND_60 = {1{`RANDOM}};
  ecc_data_delayed_REG_2 = _RAND_60[0:0];
  _RAND_61 = {3{`RANDOM}};
  ecc_data_delayed_2 = _RAND_61[71:0];
  _RAND_62 = {1{`RANDOM}};
  bank_way_en_reg_REG_18 = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  bank_way_en_reg_REG_19 = _RAND_63[7:0];
  _RAND_64 = {1{`RANDOM}};
  bank_way_en_reg_REG_20 = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  bank_way_en_reg_REG_21 = _RAND_65[7:0];
  _RAND_66 = {1{`RANDOM}};
  bank_way_en_reg_REG_23 = _RAND_66[7:0];
  _RAND_67 = {1{`RANDOM}};
  ecc_data_delayed_REG_3 = _RAND_67[0:0];
  _RAND_68 = {3{`RANDOM}};
  ecc_data_delayed_3 = _RAND_68[71:0];
  _RAND_69 = {1{`RANDOM}};
  bank_way_en_reg_REG_24 = _RAND_69[0:0];
  _RAND_70 = {1{`RANDOM}};
  bank_way_en_reg_REG_25 = _RAND_70[7:0];
  _RAND_71 = {1{`RANDOM}};
  bank_way_en_reg_REG_26 = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  bank_way_en_reg_REG_27 = _RAND_72[7:0];
  _RAND_73 = {1{`RANDOM}};
  bank_way_en_reg_REG_29 = _RAND_73[7:0];
  _RAND_74 = {1{`RANDOM}};
  ecc_data_delayed_REG_4 = _RAND_74[0:0];
  _RAND_75 = {3{`RANDOM}};
  ecc_data_delayed_4 = _RAND_75[71:0];
  _RAND_76 = {1{`RANDOM}};
  bank_way_en_reg_REG_30 = _RAND_76[0:0];
  _RAND_77 = {1{`RANDOM}};
  bank_way_en_reg_REG_31 = _RAND_77[7:0];
  _RAND_78 = {1{`RANDOM}};
  bank_way_en_reg_REG_32 = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  bank_way_en_reg_REG_33 = _RAND_79[7:0];
  _RAND_80 = {1{`RANDOM}};
  bank_way_en_reg_REG_35 = _RAND_80[7:0];
  _RAND_81 = {1{`RANDOM}};
  ecc_data_delayed_REG_5 = _RAND_81[0:0];
  _RAND_82 = {3{`RANDOM}};
  ecc_data_delayed_5 = _RAND_82[71:0];
  _RAND_83 = {1{`RANDOM}};
  bank_way_en_reg_REG_36 = _RAND_83[0:0];
  _RAND_84 = {1{`RANDOM}};
  bank_way_en_reg_REG_37 = _RAND_84[7:0];
  _RAND_85 = {1{`RANDOM}};
  bank_way_en_reg_REG_38 = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  bank_way_en_reg_REG_39 = _RAND_86[7:0];
  _RAND_87 = {1{`RANDOM}};
  bank_way_en_reg_REG_41 = _RAND_87[7:0];
  _RAND_88 = {1{`RANDOM}};
  ecc_data_delayed_REG_6 = _RAND_88[0:0];
  _RAND_89 = {3{`RANDOM}};
  ecc_data_delayed_6 = _RAND_89[71:0];
  _RAND_90 = {1{`RANDOM}};
  bank_way_en_reg_REG_42 = _RAND_90[0:0];
  _RAND_91 = {1{`RANDOM}};
  bank_way_en_reg_REG_43 = _RAND_91[7:0];
  _RAND_92 = {1{`RANDOM}};
  bank_way_en_reg_REG_44 = _RAND_92[0:0];
  _RAND_93 = {1{`RANDOM}};
  bank_way_en_reg_REG_45 = _RAND_93[7:0];
  _RAND_94 = {1{`RANDOM}};
  bank_way_en_reg_REG_47 = _RAND_94[7:0];
  _RAND_95 = {1{`RANDOM}};
  ecc_data_delayed_REG_7 = _RAND_95[0:0];
  _RAND_96 = {3{`RANDOM}};
  ecc_data_delayed_7 = _RAND_96[71:0];
  _RAND_97 = {2{`RANDOM}};
  bank_result_delayed_0_0_raw_data = _RAND_97[63:0];
  _RAND_98 = {2{`RANDOM}};
  bank_result_delayed_0_1_raw_data = _RAND_98[63:0];
  _RAND_99 = {2{`RANDOM}};
  bank_result_delayed_0_2_raw_data = _RAND_99[63:0];
  _RAND_100 = {2{`RANDOM}};
  bank_result_delayed_0_3_raw_data = _RAND_100[63:0];
  _RAND_101 = {2{`RANDOM}};
  bank_result_delayed_0_4_raw_data = _RAND_101[63:0];
  _RAND_102 = {2{`RANDOM}};
  bank_result_delayed_0_5_raw_data = _RAND_102[63:0];
  _RAND_103 = {2{`RANDOM}};
  bank_result_delayed_0_6_raw_data = _RAND_103[63:0];
  _RAND_104 = {2{`RANDOM}};
  bank_result_delayed_0_7_raw_data = _RAND_104[63:0];
  _RAND_105 = {1{`RANDOM}};
  rr_read_fire_REG = _RAND_105[0:0];
  _RAND_106 = {1{`RANDOM}};
  rr_read_fire = _RAND_106[0:0];
  _RAND_107 = {1{`RANDOM}};
  rr_bank_addr_REG__0 = _RAND_107[3:0];
  _RAND_108 = {1{`RANDOM}};
  rr_bank_addr__0 = _RAND_108[3:0];
  _RAND_109 = {1{`RANDOM}};
  io_read_error_delayed_0_0_REG = _RAND_109[0:0];
  _RAND_110 = {1{`RANDOM}};
  rr_read_fire_REG_1 = _RAND_110[0:0];
  _RAND_111 = {1{`RANDOM}};
  rr_read_fire_1 = _RAND_111[0:0];
  _RAND_112 = {1{`RANDOM}};
  rr_bank_addr_REG_1_0 = _RAND_112[3:0];
  _RAND_113 = {1{`RANDOM}};
  rr_bank_addr_1_0 = _RAND_113[3:0];
  _RAND_114 = {1{`RANDOM}};
  io_read_error_delayed_1_0_REG = _RAND_114[0:0];
  _RAND_115 = {1{`RANDOM}};
  io_readline_error_delayed_REG = _RAND_115[0:0];
  _RAND_116 = {1{`RANDOM}};
  io_readline_error_delayed_REG_1 = _RAND_116[0:0];
  _RAND_117 = {1{`RANDOM}};
  x14 = _RAND_117[7:0];
  _RAND_118 = {1{`RANDOM}};
  x14_1 = _RAND_118[7:0];
  _RAND_119 = {1{`RANDOM}};
  x14_2 = _RAND_119[7:0];
  _RAND_120 = {1{`RANDOM}};
  x14_3 = _RAND_120[7:0];
  _RAND_121 = {1{`RANDOM}};
  x14_4 = _RAND_121[7:0];
  _RAND_122 = {1{`RANDOM}};
  x14_5 = _RAND_122[7:0];
  _RAND_123 = {1{`RANDOM}};
  x14_6 = _RAND_123[7:0];
  _RAND_124 = {1{`RANDOM}};
  x14_7 = _RAND_124[7:0];
  _RAND_125 = {1{`RANDOM}};
  io_cacheOp_resp_valid_REG = _RAND_125[0:0];
  _RAND_126 = {1{`RANDOM}};
  eccReadResult_0_REG = _RAND_126[31:0];
  _RAND_127 = {1{`RANDOM}};
  eccReadResult_1_REG = _RAND_127[31:0];
  _RAND_128 = {1{`RANDOM}};
  eccReadResult_2_REG = _RAND_128[31:0];
  _RAND_129 = {1{`RANDOM}};
  eccReadResult_3_REG = _RAND_129[31:0];
  _RAND_130 = {1{`RANDOM}};
  eccReadResult_4_REG = _RAND_130[31:0];
  _RAND_131 = {1{`RANDOM}};
  eccReadResult_5_REG = _RAND_131[31:0];
  _RAND_132 = {1{`RANDOM}};
  eccReadResult_6_REG = _RAND_132[31:0];
  _RAND_133 = {1{`RANDOM}};
  eccReadResult_7_REG = _RAND_133[31:0];
  _RAND_134 = {2{`RANDOM}};
  io_cacheOp_resp_bits_read_data_ecc_REG = _RAND_134[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

