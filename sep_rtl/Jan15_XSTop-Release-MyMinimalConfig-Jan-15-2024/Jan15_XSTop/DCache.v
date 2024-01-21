module DCache(
  input          clock,
  input          reset,
  input          auto_client_out_a_ready,
  output         auto_client_out_a_valid,
  output [2:0]   auto_client_out_a_bits_opcode,
  output [2:0]   auto_client_out_a_bits_param,
  output [2:0]   auto_client_out_a_bits_size,
  output [3:0]   auto_client_out_a_bits_source,
  output [35:0]  auto_client_out_a_bits_address,
  output [32:0]  auto_client_out_a_bits_user_vaddr,
  output [3:0]   auto_client_out_a_bits_user_reqSource,
  output         auto_client_out_a_bits_user_needHint,
  output [31:0]  auto_client_out_a_bits_mask,
  output         auto_client_out_bready,
  input          auto_client_out_bvalid,
  input  [1:0]   auto_client_out_bparam,
  input  [35:0]  auto_client_out_baddress,
  input  [255:0] auto_client_out_bdata,
  input          auto_client_out_c_ready,
  output         auto_client_out_c_valid,
  output [2:0]   auto_client_out_c_bits_opcode,
  output [2:0]   auto_client_out_c_bits_param,
  output [2:0]   auto_client_out_c_bits_size,
  output [3:0]   auto_client_out_c_bits_source,
  output [35:0]  auto_client_out_c_bits_address,
  output [255:0] auto_client_out_c_bits_data,
  output         auto_client_out_d_ready,
  input          auto_client_out_d_valid,
  input  [2:0]   auto_client_out_d_bits_opcode,
  input  [1:0]   auto_client_out_d_bits_param,
  input  [2:0]   auto_client_out_d_bits_size,
  input  [3:0]   auto_client_out_d_bits_source,
  input  [8:0]   auto_client_out_d_bits_sink,
  input          auto_client_out_d_bits_denied,
  input  [255:0] auto_client_out_d_bits_data,
  input          auto_client_out_d_bits_corrupt,
  input          auto_client_out_e_ready,
  output         auto_client_out_e_valid,
  output [8:0]   auto_client_out_e_bits_sink,
  input          io_l2_pf_store_only,
  output         io_lsu_load_0_req_ready,
  input          io_lsu_load_0_req_valid,
  input  [4:0]   io_lsu_load_0_req_bits_cmd,
  input  [38:0]  io_lsu_load_0_req_bits_vaddr,
  input  [3:0]   io_lsu_load_0_req_bits_instrtype,
  output [127:0] io_lsu_load_0_resp_bits_data_delayed,
  output         io_lsu_load_0_resp_bits_miss,
  output         io_lsu_load_0_resp_bits_tag_error,
  output [1:0]   io_lsu_load_0_resp_bits_mshr_id,
  output         io_lsu_load_0_resp_bits_handled,
  output         io_lsu_load_0_resp_bits_error_delayed,
  input          io_lsu_load_0_s1_kill,
  input          io_lsu_load_0_s2_kill,
  input  [35:0]  io_lsu_load_0_s1_paddr_dup_lsu,
  input  [35:0]  io_lsu_load_0_s1_paddr_dup_dcache,
  output         io_lsu_load_0_s1_disable_fast_wakeup,
  output         io_lsu_load_0_s2_bank_conflict,
  output         io_lsu_load_0_s2_mq_nack,
  output         io_lsu_load_1_req_ready,
  input          io_lsu_load_1_req_valid,
  input  [4:0]   io_lsu_load_1_req_bits_cmd,
  input  [38:0]  io_lsu_load_1_req_bits_vaddr,
  input  [3:0]   io_lsu_load_1_req_bits_instrtype,
  output [127:0] io_lsu_load_1_resp_bits_data_delayed,
  output         io_lsu_load_1_resp_bits_miss,
  output         io_lsu_load_1_resp_bits_tag_error,
  output [1:0]   io_lsu_load_1_resp_bits_mshr_id,
  output         io_lsu_load_1_resp_bits_handled,
  output         io_lsu_load_1_resp_bits_error_delayed,
  input          io_lsu_load_1_s1_kill,
  input          io_lsu_load_1_s2_kill,
  input  [35:0]  io_lsu_load_1_s1_paddr_dup_lsu,
  input  [35:0]  io_lsu_load_1_s1_paddr_dup_dcache,
  output         io_lsu_load_1_s1_disable_fast_wakeup,
  output         io_lsu_load_1_s2_bank_conflict,
  output         io_lsu_load_1_s2_mq_nack,
  output         io_lsu_tl_d_channel_valid,
  output [1:0]   io_lsu_tl_d_channel_mshrid,
  output         io_lsu_store_req_ready,
  input          io_lsu_store_req_valid,
  input  [38:0]  io_lsu_store_req_bits_vaddr,
  input  [35:0]  io_lsu_store_req_bits_addr,
  input  [511:0] io_lsu_store_req_bits_data,
  input  [63:0]  io_lsu_store_req_bits_mask,
  input  [3:0]   io_lsu_store_req_bits_id,
  output         io_lsu_store_main_pipe_hit_resp_valid,
  output [3:0]   io_lsu_store_main_pipe_hit_resp_bits_id,
  output         io_lsu_store_refill_hit_resp_valid,
  output [3:0]   io_lsu_store_refill_hit_resp_bits_id,
  output         io_lsu_store_replay_resp_valid,
  output [3:0]   io_lsu_store_replay_resp_bits_id,
  output         io_lsu_atomics_req_ready,
  input          io_lsu_atomics_req_valid,
  input  [4:0]   io_lsu_atomics_req_bits_cmd,
  input  [38:0]  io_lsu_atomics_req_bits_vaddr,
  input  [35:0]  io_lsu_atomics_req_bits_addr,
  input  [2:0]   io_lsu_atomics_req_bits_word_idx,
  input  [63:0]  io_lsu_atomics_req_bits_amo_data,
  input  [7:0]   io_lsu_atomics_req_bits_amo_mask,
  output         io_lsu_atomics_resp_valid,
  output [63:0]  io_lsu_atomics_resp_bits_data,
  output         io_lsu_atomics_resp_bits_miss,
  output         io_lsu_atomics_resp_bits_replay,
  output         io_lsu_atomics_resp_bits_error,
  output [3:0]   io_lsu_atomics_resp_bits_id,
  output         io_lsu_atomics_block_lr,
  output         io_lsu_release_valid,
  output [35:0]  io_lsu_release_bits_paddr,
  output         io_lsu_forward_D_0_valid,
  output [255:0] io_lsu_forward_D_0_data,
  output [1:0]   io_lsu_forward_D_0_mshrid,
  output         io_lsu_forward_D_0_last,
  output         io_lsu_forward_D_1_valid,
  output [255:0] io_lsu_forward_D_1_data,
  output [1:0]   io_lsu_forward_D_1_mshrid,
  output         io_lsu_forward_D_1_last,
  input          io_lsu_forward_mshr_0_valid,
  input  [1:0]   io_lsu_forward_mshr_0_mshrid,
  input  [35:0]  io_lsu_forward_mshr_0_paddr,
  output         io_lsu_forward_mshr_0_forward_mshr,
  output [7:0]   io_lsu_forward_mshr_0_forwardData_0,
  output [7:0]   io_lsu_forward_mshr_0_forwardData_1,
  output [7:0]   io_lsu_forward_mshr_0_forwardData_2,
  output [7:0]   io_lsu_forward_mshr_0_forwardData_3,
  output [7:0]   io_lsu_forward_mshr_0_forwardData_4,
  output [7:0]   io_lsu_forward_mshr_0_forwardData_5,
  output [7:0]   io_lsu_forward_mshr_0_forwardData_6,
  output [7:0]   io_lsu_forward_mshr_0_forwardData_7,
  output [7:0]   io_lsu_forward_mshr_0_forwardData_8,
  output [7:0]   io_lsu_forward_mshr_0_forwardData_9,
  output [7:0]   io_lsu_forward_mshr_0_forwardData_10,
  output [7:0]   io_lsu_forward_mshr_0_forwardData_11,
  output [7:0]   io_lsu_forward_mshr_0_forwardData_12,
  output [7:0]   io_lsu_forward_mshr_0_forwardData_13,
  output [7:0]   io_lsu_forward_mshr_0_forwardData_14,
  output [7:0]   io_lsu_forward_mshr_0_forwardData_15,
  output         io_lsu_forward_mshr_0_forward_result_valid,
  input          io_lsu_forward_mshr_1_valid,
  input  [1:0]   io_lsu_forward_mshr_1_mshrid,
  input  [35:0]  io_lsu_forward_mshr_1_paddr,
  output         io_lsu_forward_mshr_1_forward_mshr,
  output [7:0]   io_lsu_forward_mshr_1_forwardData_0,
  output [7:0]   io_lsu_forward_mshr_1_forwardData_1,
  output [7:0]   io_lsu_forward_mshr_1_forwardData_2,
  output [7:0]   io_lsu_forward_mshr_1_forwardData_3,
  output [7:0]   io_lsu_forward_mshr_1_forwardData_4,
  output [7:0]   io_lsu_forward_mshr_1_forwardData_5,
  output [7:0]   io_lsu_forward_mshr_1_forwardData_6,
  output [7:0]   io_lsu_forward_mshr_1_forwardData_7,
  output [7:0]   io_lsu_forward_mshr_1_forwardData_8,
  output [7:0]   io_lsu_forward_mshr_1_forwardData_9,
  output [7:0]   io_lsu_forward_mshr_1_forwardData_10,
  output [7:0]   io_lsu_forward_mshr_1_forwardData_11,
  output [7:0]   io_lsu_forward_mshr_1_forwardData_12,
  output [7:0]   io_lsu_forward_mshr_1_forwardData_13,
  output [7:0]   io_lsu_forward_mshr_1_forwardData_14,
  output [7:0]   io_lsu_forward_mshr_1_forwardData_15,
  output         io_lsu_forward_mshr_1_forward_result_valid,
  input          io_csr_distribute_csr_wvalid,
  input  [11:0]  io_csr_distribute_csr_waddr,
  input  [63:0]  io_csr_distribute_csr_wdata,
  output         io_csr_update_wvalid,
  output [11:0]  io_csr_update_waddr,
  output [63:0]  io_csr_update_wdata,
  output         io_error_source_tag,
  output         io_error_source_data,
  output         io_error_source_l2,
  output         io_error_opType_fetch,
  output         io_error_opType_load,
  output         io_error_opType_store,
  output         io_error_opType_probe,
  output         io_error_opType_release,
  output         io_error_opType_atom,
  output [35:0]  io_error_paddr,
  output         io_error_report_to_beu,
  output         io_error_valid,
  input          io_lqEmpty,
  output [5:0]   io_perf_0_value,
  output [5:0]   io_perf_1_value,
  output [5:0]   io_perf_2_value,
  output [5:0]   io_perf_3_value,
  output [5:0]   io_perf_4_value,
  output [5:0]   io_perf_5_value,
  output [5:0]   io_perf_6_value,
  output [5:0]   io_perf_7_value,
  output [5:0]   io_perf_8_value,
  output [5:0]   io_perf_9_value,
  output [5:0]   io_perf_10_value,
  output [5:0]   io_perf_11_value,
  output [5:0]   io_perf_12_value,
  output [5:0]   io_perf_13_value,
  output [5:0]   io_perf_14_value,
  output [5:0]   io_perf_15_value,
  output [5:0]   io_perf_16_value,
  output [5:0]   io_perf_17_value,
  output [5:0]   io_perf_22_value,
  input          sourceVaddr_valid,
  input  [38:0]  sourceVaddr_bits
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [63:0] _RAND_12;
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
  reg [63:0] _RAND_23;
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
  reg [63:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [63:0] _RAND_40;
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
  reg [63:0] _RAND_54;
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
  reg [31:0] _RAND_89;
  reg [31:0] _RAND_90;
  reg [31:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [31:0] _RAND_93;
  reg [31:0] _RAND_94;
  reg [31:0] _RAND_95;
  reg [31:0] _RAND_96;
  reg [31:0] _RAND_97;
  reg [31:0] _RAND_98;
  reg [31:0] _RAND_99;
  reg [31:0] _RAND_100;
  reg [31:0] _RAND_101;
  reg [31:0] _RAND_102;
  reg [31:0] _RAND_103;
  reg [31:0] _RAND_104;
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
  reg [31:0] _RAND_134;
  reg [31:0] _RAND_135;
  reg [31:0] _RAND_136;
  reg [31:0] _RAND_137;
  reg [31:0] _RAND_138;
  reg [31:0] _RAND_139;
  reg [31:0] _RAND_140;
  reg [31:0] _RAND_141;
  reg [31:0] _RAND_142;
  reg [31:0] _RAND_143;
  reg [31:0] _RAND_144;
  reg [31:0] _RAND_145;
  reg [31:0] _RAND_146;
  reg [31:0] _RAND_147;
  reg [31:0] _RAND_148;
  reg [31:0] _RAND_149;
  reg [31:0] _RAND_150;
  reg [31:0] _RAND_151;
  reg [31:0] _RAND_152;
  reg [31:0] _RAND_153;
  reg [31:0] _RAND_154;
  reg [31:0] _RAND_155;
  reg [31:0] _RAND_156;
`endif // RANDOMIZE_REG_INIT
  wire  bankedDataArray_clock; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_read_0_ready; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_read_0_valid; // @[DCacheWrapper.scala 811:84]
  wire [7:0] bankedDataArray_io_read_0_bits_way_en; // @[DCacheWrapper.scala 811:84]
  wire [35:0] bankedDataArray_io_read_0_bits_addr; // @[DCacheWrapper.scala 811:84]
  wire [7:0] bankedDataArray_io_read_0_bits_bankMask; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_read_1_ready; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_read_1_valid; // @[DCacheWrapper.scala 811:84]
  wire [7:0] bankedDataArray_io_read_1_bits_way_en; // @[DCacheWrapper.scala 811:84]
  wire [35:0] bankedDataArray_io_read_1_bits_addr; // @[DCacheWrapper.scala 811:84]
  wire [7:0] bankedDataArray_io_read_1_bits_bankMask; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_readline_intend; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_readline_ready; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_readline_valid; // @[DCacheWrapper.scala 811:84]
  wire [7:0] bankedDataArray_io_readline_bits_way_en; // @[DCacheWrapper.scala 811:84]
  wire [35:0] bankedDataArray_io_readline_bits_addr; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_write_valid; // @[DCacheWrapper.scala 811:84]
  wire [7:0] bankedDataArray_io_write_bits_wmask; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_write_bits_data_0; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_write_bits_data_1; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_write_bits_data_2; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_write_bits_data_3; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_write_bits_data_4; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_write_bits_data_5; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_write_bits_data_6; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_write_bits_data_7; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_write_dup_0_valid; // @[DCacheWrapper.scala 811:84]
  wire [7:0] bankedDataArray_io_write_dup_0_bits_way_en; // @[DCacheWrapper.scala 811:84]
  wire [35:0] bankedDataArray_io_write_dup_0_bits_addr; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_write_dup_1_valid; // @[DCacheWrapper.scala 811:84]
  wire [7:0] bankedDataArray_io_write_dup_1_bits_way_en; // @[DCacheWrapper.scala 811:84]
  wire [35:0] bankedDataArray_io_write_dup_1_bits_addr; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_write_dup_2_valid; // @[DCacheWrapper.scala 811:84]
  wire [7:0] bankedDataArray_io_write_dup_2_bits_way_en; // @[DCacheWrapper.scala 811:84]
  wire [35:0] bankedDataArray_io_write_dup_2_bits_addr; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_write_dup_3_valid; // @[DCacheWrapper.scala 811:84]
  wire [7:0] bankedDataArray_io_write_dup_3_bits_way_en; // @[DCacheWrapper.scala 811:84]
  wire [35:0] bankedDataArray_io_write_dup_3_bits_addr; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_write_dup_4_valid; // @[DCacheWrapper.scala 811:84]
  wire [7:0] bankedDataArray_io_write_dup_4_bits_way_en; // @[DCacheWrapper.scala 811:84]
  wire [35:0] bankedDataArray_io_write_dup_4_bits_addr; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_write_dup_5_valid; // @[DCacheWrapper.scala 811:84]
  wire [7:0] bankedDataArray_io_write_dup_5_bits_way_en; // @[DCacheWrapper.scala 811:84]
  wire [35:0] bankedDataArray_io_write_dup_5_bits_addr; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_write_dup_6_valid; // @[DCacheWrapper.scala 811:84]
  wire [7:0] bankedDataArray_io_write_dup_6_bits_way_en; // @[DCacheWrapper.scala 811:84]
  wire [35:0] bankedDataArray_io_write_dup_6_bits_addr; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_write_dup_7_valid; // @[DCacheWrapper.scala 811:84]
  wire [7:0] bankedDataArray_io_write_dup_7_bits_way_en; // @[DCacheWrapper.scala 811:84]
  wire [35:0] bankedDataArray_io_write_dup_7_bits_addr; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_readline_resp_0_raw_data; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_readline_resp_0_error_delayed; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_readline_resp_1_raw_data; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_readline_resp_1_error_delayed; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_readline_resp_2_raw_data; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_readline_resp_2_error_delayed; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_readline_resp_3_raw_data; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_readline_resp_3_error_delayed; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_readline_resp_4_raw_data; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_readline_resp_4_error_delayed; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_readline_resp_5_raw_data; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_readline_resp_5_error_delayed; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_readline_resp_6_raw_data; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_readline_resp_6_error_delayed; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_readline_resp_7_raw_data; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_readline_resp_7_error_delayed; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_readline_error_delayed; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_read_resp_delayed_0_0_raw_data; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_read_resp_delayed_1_0_raw_data; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_read_error_delayed_0_0; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_read_error_delayed_1_0; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_bank_conflict_slow_0; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_bank_conflict_slow_1; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_disable_ld_fast_wakeup_0; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_disable_ld_fast_wakeup_1; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_cacheOp_req_valid; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_cacheOp_req_bits_wayNum; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_cacheOp_req_bits_index; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_cacheOp_req_bits_write_data_vec_0; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_cacheOp_req_bits_write_data_vec_1; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_cacheOp_req_bits_write_data_vec_2; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_cacheOp_req_bits_write_data_vec_3; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_cacheOp_req_bits_write_data_vec_4; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_cacheOp_req_bits_write_data_vec_5; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_cacheOp_req_bits_write_data_vec_6; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_cacheOp_req_bits_write_data_vec_7; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_cacheOp_req_bits_write_data_ecc; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_cacheOp_req_bits_bank_num; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_cacheOp_resp_valid; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_cacheOp_resp_bits_read_data_vec_0; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_cacheOp_resp_bits_read_data_vec_1; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_cacheOp_resp_bits_read_data_vec_2; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_cacheOp_resp_bits_read_data_vec_3; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_cacheOp_resp_bits_read_data_vec_4; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_cacheOp_resp_bits_read_data_vec_5; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_cacheOp_resp_bits_read_data_vec_6; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_cacheOp_resp_bits_read_data_vec_7; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_cacheOp_resp_bits_read_data_ecc; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_cacheOp_req_dup_0_valid; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_cacheOp_req_dup_1_valid; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_cacheOp_req_dup_2_valid; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_cacheOp_req_dup_3_valid; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_cacheOp_req_dup_4_valid; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_cacheOp_req_dup_5_valid; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_cacheOp_req_dup_6_valid; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_cacheOp_req_dup_7_valid; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_cacheOp_req_dup_8_valid; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_cacheOp_req_dup_9_valid; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_cacheOp_req_dup_10_valid; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_cacheOp_req_dup_11_valid; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_cacheOp_req_dup_12_valid; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_cacheOp_req_dup_13_valid; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_cacheOp_req_dup_14_valid; // @[DCacheWrapper.scala 811:84]
  wire  bankedDataArray_io_cacheOp_req_dup_15_valid; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_cacheOp_req_bits_opCode_dup_0; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_cacheOp_req_bits_opCode_dup_1; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_cacheOp_req_bits_opCode_dup_2; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_cacheOp_req_bits_opCode_dup_3; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_cacheOp_req_bits_opCode_dup_4; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_cacheOp_req_bits_opCode_dup_5; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_cacheOp_req_bits_opCode_dup_6; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_cacheOp_req_bits_opCode_dup_7; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_cacheOp_req_bits_opCode_dup_8; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_cacheOp_req_bits_opCode_dup_9; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_cacheOp_req_bits_opCode_dup_10; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_cacheOp_req_bits_opCode_dup_11; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_cacheOp_req_bits_opCode_dup_12; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_cacheOp_req_bits_opCode_dup_13; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_cacheOp_req_bits_opCode_dup_14; // @[DCacheWrapper.scala 811:84]
  wire [63:0] bankedDataArray_io_cacheOp_req_bits_opCode_dup_15; // @[DCacheWrapper.scala 811:84]
  wire  metaArray_clock; // @[DCacheWrapper.scala 812:25]
  wire  metaArray_reset; // @[DCacheWrapper.scala 812:25]
  wire  metaArray_io_read_0_valid; // @[DCacheWrapper.scala 812:25]
  wire [5:0] metaArray_io_read_0_bits_idx; // @[DCacheWrapper.scala 812:25]
  wire  metaArray_io_read_1_valid; // @[DCacheWrapper.scala 812:25]
  wire [5:0] metaArray_io_read_1_bits_idx; // @[DCacheWrapper.scala 812:25]
  wire  metaArray_io_read_2_valid; // @[DCacheWrapper.scala 812:25]
  wire [5:0] metaArray_io_read_2_bits_idx; // @[DCacheWrapper.scala 812:25]
  wire [1:0] metaArray_io_resp_0_0_coh_state; // @[DCacheWrapper.scala 812:25]
  wire [1:0] metaArray_io_resp_0_1_coh_state; // @[DCacheWrapper.scala 812:25]
  wire [1:0] metaArray_io_resp_0_2_coh_state; // @[DCacheWrapper.scala 812:25]
  wire [1:0] metaArray_io_resp_0_3_coh_state; // @[DCacheWrapper.scala 812:25]
  wire [1:0] metaArray_io_resp_0_4_coh_state; // @[DCacheWrapper.scala 812:25]
  wire [1:0] metaArray_io_resp_0_5_coh_state; // @[DCacheWrapper.scala 812:25]
  wire [1:0] metaArray_io_resp_0_6_coh_state; // @[DCacheWrapper.scala 812:25]
  wire [1:0] metaArray_io_resp_0_7_coh_state; // @[DCacheWrapper.scala 812:25]
  wire [1:0] metaArray_io_resp_1_0_coh_state; // @[DCacheWrapper.scala 812:25]
  wire [1:0] metaArray_io_resp_1_1_coh_state; // @[DCacheWrapper.scala 812:25]
  wire [1:0] metaArray_io_resp_1_2_coh_state; // @[DCacheWrapper.scala 812:25]
  wire [1:0] metaArray_io_resp_1_3_coh_state; // @[DCacheWrapper.scala 812:25]
  wire [1:0] metaArray_io_resp_1_4_coh_state; // @[DCacheWrapper.scala 812:25]
  wire [1:0] metaArray_io_resp_1_5_coh_state; // @[DCacheWrapper.scala 812:25]
  wire [1:0] metaArray_io_resp_1_6_coh_state; // @[DCacheWrapper.scala 812:25]
  wire [1:0] metaArray_io_resp_1_7_coh_state; // @[DCacheWrapper.scala 812:25]
  wire [1:0] metaArray_io_resp_2_0_coh_state; // @[DCacheWrapper.scala 812:25]
  wire [1:0] metaArray_io_resp_2_1_coh_state; // @[DCacheWrapper.scala 812:25]
  wire [1:0] metaArray_io_resp_2_2_coh_state; // @[DCacheWrapper.scala 812:25]
  wire [1:0] metaArray_io_resp_2_3_coh_state; // @[DCacheWrapper.scala 812:25]
  wire [1:0] metaArray_io_resp_2_4_coh_state; // @[DCacheWrapper.scala 812:25]
  wire [1:0] metaArray_io_resp_2_5_coh_state; // @[DCacheWrapper.scala 812:25]
  wire [1:0] metaArray_io_resp_2_6_coh_state; // @[DCacheWrapper.scala 812:25]
  wire [1:0] metaArray_io_resp_2_7_coh_state; // @[DCacheWrapper.scala 812:25]
  wire  metaArray_io_write_0_valid; // @[DCacheWrapper.scala 812:25]
  wire [5:0] metaArray_io_write_0_bits_idx; // @[DCacheWrapper.scala 812:25]
  wire [7:0] metaArray_io_write_0_bits_way_en; // @[DCacheWrapper.scala 812:25]
  wire [1:0] metaArray_io_write_0_bits_meta_coh_state; // @[DCacheWrapper.scala 812:25]
  wire  metaArray_io_write_1_valid; // @[DCacheWrapper.scala 812:25]
  wire [5:0] metaArray_io_write_1_bits_idx; // @[DCacheWrapper.scala 812:25]
  wire [7:0] metaArray_io_write_1_bits_way_en; // @[DCacheWrapper.scala 812:25]
  wire [1:0] metaArray_io_write_1_bits_meta_coh_state; // @[DCacheWrapper.scala 812:25]
  wire  errorArray_clock; // @[DCacheWrapper.scala 813:26]
  wire  errorArray_reset; // @[DCacheWrapper.scala 813:26]
  wire  errorArray_io_read_0_valid; // @[DCacheWrapper.scala 813:26]
  wire [5:0] errorArray_io_read_0_bits_idx; // @[DCacheWrapper.scala 813:26]
  wire  errorArray_io_read_1_valid; // @[DCacheWrapper.scala 813:26]
  wire [5:0] errorArray_io_read_1_bits_idx; // @[DCacheWrapper.scala 813:26]
  wire  errorArray_io_read_2_valid; // @[DCacheWrapper.scala 813:26]
  wire [5:0] errorArray_io_read_2_bits_idx; // @[DCacheWrapper.scala 813:26]
  wire  errorArray_io_resp_0_0; // @[DCacheWrapper.scala 813:26]
  wire  errorArray_io_resp_0_1; // @[DCacheWrapper.scala 813:26]
  wire  errorArray_io_resp_0_2; // @[DCacheWrapper.scala 813:26]
  wire  errorArray_io_resp_0_3; // @[DCacheWrapper.scala 813:26]
  wire  errorArray_io_resp_0_4; // @[DCacheWrapper.scala 813:26]
  wire  errorArray_io_resp_0_5; // @[DCacheWrapper.scala 813:26]
  wire  errorArray_io_resp_0_6; // @[DCacheWrapper.scala 813:26]
  wire  errorArray_io_resp_0_7; // @[DCacheWrapper.scala 813:26]
  wire  errorArray_io_resp_1_0; // @[DCacheWrapper.scala 813:26]
  wire  errorArray_io_resp_1_1; // @[DCacheWrapper.scala 813:26]
  wire  errorArray_io_resp_1_2; // @[DCacheWrapper.scala 813:26]
  wire  errorArray_io_resp_1_3; // @[DCacheWrapper.scala 813:26]
  wire  errorArray_io_resp_1_4; // @[DCacheWrapper.scala 813:26]
  wire  errorArray_io_resp_1_5; // @[DCacheWrapper.scala 813:26]
  wire  errorArray_io_resp_1_6; // @[DCacheWrapper.scala 813:26]
  wire  errorArray_io_resp_1_7; // @[DCacheWrapper.scala 813:26]
  wire  errorArray_io_resp_2_0; // @[DCacheWrapper.scala 813:26]
  wire  errorArray_io_resp_2_1; // @[DCacheWrapper.scala 813:26]
  wire  errorArray_io_resp_2_2; // @[DCacheWrapper.scala 813:26]
  wire  errorArray_io_resp_2_3; // @[DCacheWrapper.scala 813:26]
  wire  errorArray_io_resp_2_4; // @[DCacheWrapper.scala 813:26]
  wire  errorArray_io_resp_2_5; // @[DCacheWrapper.scala 813:26]
  wire  errorArray_io_resp_2_6; // @[DCacheWrapper.scala 813:26]
  wire  errorArray_io_resp_2_7; // @[DCacheWrapper.scala 813:26]
  wire  errorArray_io_write_0_valid; // @[DCacheWrapper.scala 813:26]
  wire [5:0] errorArray_io_write_0_bits_idx; // @[DCacheWrapper.scala 813:26]
  wire [7:0] errorArray_io_write_0_bits_way_en; // @[DCacheWrapper.scala 813:26]
  wire  errorArray_io_write_0_bits_flag; // @[DCacheWrapper.scala 813:26]
  wire  errorArray_io_write_1_valid; // @[DCacheWrapper.scala 813:26]
  wire [5:0] errorArray_io_write_1_bits_idx; // @[DCacheWrapper.scala 813:26]
  wire [7:0] errorArray_io_write_1_bits_way_en; // @[DCacheWrapper.scala 813:26]
  wire  errorArray_io_write_1_bits_flag; // @[DCacheWrapper.scala 813:26]
  wire  tagArray_clock; // @[DCacheWrapper.scala 816:24]
  wire  tagArray_reset; // @[DCacheWrapper.scala 816:24]
  wire  tagArray_io_read_0_valid; // @[DCacheWrapper.scala 816:24]
  wire [5:0] tagArray_io_read_0_bits_idx; // @[DCacheWrapper.scala 816:24]
  wire  tagArray_io_read_1_valid; // @[DCacheWrapper.scala 816:24]
  wire [5:0] tagArray_io_read_1_bits_idx; // @[DCacheWrapper.scala 816:24]
  wire  tagArray_io_read_2_ready; // @[DCacheWrapper.scala 816:24]
  wire  tagArray_io_read_2_valid; // @[DCacheWrapper.scala 816:24]
  wire [5:0] tagArray_io_read_2_bits_idx; // @[DCacheWrapper.scala 816:24]
  wire [29:0] tagArray_io_resp_0_0; // @[DCacheWrapper.scala 816:24]
  wire [29:0] tagArray_io_resp_0_1; // @[DCacheWrapper.scala 816:24]
  wire [29:0] tagArray_io_resp_0_2; // @[DCacheWrapper.scala 816:24]
  wire [29:0] tagArray_io_resp_0_3; // @[DCacheWrapper.scala 816:24]
  wire [29:0] tagArray_io_resp_0_4; // @[DCacheWrapper.scala 816:24]
  wire [29:0] tagArray_io_resp_0_5; // @[DCacheWrapper.scala 816:24]
  wire [29:0] tagArray_io_resp_0_6; // @[DCacheWrapper.scala 816:24]
  wire [29:0] tagArray_io_resp_0_7; // @[DCacheWrapper.scala 816:24]
  wire [29:0] tagArray_io_resp_1_0; // @[DCacheWrapper.scala 816:24]
  wire [29:0] tagArray_io_resp_1_1; // @[DCacheWrapper.scala 816:24]
  wire [29:0] tagArray_io_resp_1_2; // @[DCacheWrapper.scala 816:24]
  wire [29:0] tagArray_io_resp_1_3; // @[DCacheWrapper.scala 816:24]
  wire [29:0] tagArray_io_resp_1_4; // @[DCacheWrapper.scala 816:24]
  wire [29:0] tagArray_io_resp_1_5; // @[DCacheWrapper.scala 816:24]
  wire [29:0] tagArray_io_resp_1_6; // @[DCacheWrapper.scala 816:24]
  wire [29:0] tagArray_io_resp_1_7; // @[DCacheWrapper.scala 816:24]
  wire [29:0] tagArray_io_resp_2_0; // @[DCacheWrapper.scala 816:24]
  wire [29:0] tagArray_io_resp_2_1; // @[DCacheWrapper.scala 816:24]
  wire [29:0] tagArray_io_resp_2_2; // @[DCacheWrapper.scala 816:24]
  wire [29:0] tagArray_io_resp_2_3; // @[DCacheWrapper.scala 816:24]
  wire [29:0] tagArray_io_resp_2_4; // @[DCacheWrapper.scala 816:24]
  wire [29:0] tagArray_io_resp_2_5; // @[DCacheWrapper.scala 816:24]
  wire [29:0] tagArray_io_resp_2_6; // @[DCacheWrapper.scala 816:24]
  wire [29:0] tagArray_io_resp_2_7; // @[DCacheWrapper.scala 816:24]
  wire  tagArray_io_write_valid; // @[DCacheWrapper.scala 816:24]
  wire [5:0] tagArray_io_write_bits_idx; // @[DCacheWrapper.scala 816:24]
  wire [7:0] tagArray_io_write_bits_way_en; // @[DCacheWrapper.scala 816:24]
  wire [23:0] tagArray_io_write_bits_tag; // @[DCacheWrapper.scala 816:24]
  wire  tagArray_io_cacheOp_req_valid; // @[DCacheWrapper.scala 816:24]
  wire [63:0] tagArray_io_cacheOp_req_bits_wayNum; // @[DCacheWrapper.scala 816:24]
  wire [63:0] tagArray_io_cacheOp_req_bits_index; // @[DCacheWrapper.scala 816:24]
  wire [63:0] tagArray_io_cacheOp_req_bits_write_tag_low; // @[DCacheWrapper.scala 816:24]
  wire [63:0] tagArray_io_cacheOp_req_bits_write_tag_ecc; // @[DCacheWrapper.scala 816:24]
  wire  tagArray_io_cacheOp_resp_valid; // @[DCacheWrapper.scala 816:24]
  wire [63:0] tagArray_io_cacheOp_resp_bits_read_tag_low; // @[DCacheWrapper.scala 816:24]
  wire [63:0] tagArray_io_cacheOp_resp_bits_read_tag_ecc; // @[DCacheWrapper.scala 816:24]
  wire  tagArray_io_cacheOp_req_dup_0_valid; // @[DCacheWrapper.scala 816:24]
  wire  tagArray_io_cacheOp_req_dup_1_valid; // @[DCacheWrapper.scala 816:24]
  wire  tagArray_io_cacheOp_req_dup_2_valid; // @[DCacheWrapper.scala 816:24]
  wire  tagArray_io_cacheOp_req_dup_3_valid; // @[DCacheWrapper.scala 816:24]
  wire  tagArray_io_cacheOp_req_dup_4_valid; // @[DCacheWrapper.scala 816:24]
  wire  tagArray_io_cacheOp_req_dup_5_valid; // @[DCacheWrapper.scala 816:24]
  wire  tagArray_io_cacheOp_req_dup_6_valid; // @[DCacheWrapper.scala 816:24]
  wire  tagArray_io_cacheOp_req_dup_7_valid; // @[DCacheWrapper.scala 816:24]
  wire  tagArray_io_cacheOp_req_dup_8_valid; // @[DCacheWrapper.scala 816:24]
  wire  tagArray_io_cacheOp_req_dup_9_valid; // @[DCacheWrapper.scala 816:24]
  wire  tagArray_io_cacheOp_req_dup_10_valid; // @[DCacheWrapper.scala 816:24]
  wire  tagArray_io_cacheOp_req_dup_11_valid; // @[DCacheWrapper.scala 816:24]
  wire [63:0] tagArray_io_cacheOp_req_bits_opCode_dup_0; // @[DCacheWrapper.scala 816:24]
  wire [63:0] tagArray_io_cacheOp_req_bits_opCode_dup_1; // @[DCacheWrapper.scala 816:24]
  wire [63:0] tagArray_io_cacheOp_req_bits_opCode_dup_2; // @[DCacheWrapper.scala 816:24]
  wire [63:0] tagArray_io_cacheOp_req_bits_opCode_dup_3; // @[DCacheWrapper.scala 816:24]
  wire [63:0] tagArray_io_cacheOp_req_bits_opCode_dup_4; // @[DCacheWrapper.scala 816:24]
  wire [63:0] tagArray_io_cacheOp_req_bits_opCode_dup_5; // @[DCacheWrapper.scala 816:24]
  wire [63:0] tagArray_io_cacheOp_req_bits_opCode_dup_6; // @[DCacheWrapper.scala 816:24]
  wire [63:0] tagArray_io_cacheOp_req_bits_opCode_dup_7; // @[DCacheWrapper.scala 816:24]
  wire [63:0] tagArray_io_cacheOp_req_bits_opCode_dup_8; // @[DCacheWrapper.scala 816:24]
  wire [63:0] tagArray_io_cacheOp_req_bits_opCode_dup_9; // @[DCacheWrapper.scala 816:24]
  wire [63:0] tagArray_io_cacheOp_req_bits_opCode_dup_10; // @[DCacheWrapper.scala 816:24]
  wire [63:0] tagArray_io_cacheOp_req_bits_opCode_dup_11; // @[DCacheWrapper.scala 816:24]
  wire  ldu_0_clock; // @[DCacheWrapper.scala 825:58]
  wire  ldu_0_reset; // @[DCacheWrapper.scala 825:58]
  wire  ldu_0_io_lsu_req_ready; // @[DCacheWrapper.scala 825:58]
  wire  ldu_0_io_lsu_req_valid; // @[DCacheWrapper.scala 825:58]
  wire [4:0] ldu_0_io_lsu_req_bits_cmd; // @[DCacheWrapper.scala 825:58]
  wire [38:0] ldu_0_io_lsu_req_bits_vaddr; // @[DCacheWrapper.scala 825:58]
  wire [3:0] ldu_0_io_lsu_req_bits_instrtype; // @[DCacheWrapper.scala 825:58]
  wire  ldu_0_io_lsu_resp_valid; // @[DCacheWrapper.scala 825:58]
  wire [127:0] ldu_0_io_lsu_resp_bits_data_delayed; // @[DCacheWrapper.scala 825:58]
  wire  ldu_0_io_lsu_resp_bits_miss; // @[DCacheWrapper.scala 825:58]
  wire  ldu_0_io_lsu_resp_bits_tag_error; // @[DCacheWrapper.scala 825:58]
  wire [1:0] ldu_0_io_lsu_resp_bits_mshr_id; // @[DCacheWrapper.scala 825:58]
  wire  ldu_0_io_lsu_resp_bits_handled; // @[DCacheWrapper.scala 825:58]
  wire  ldu_0_io_lsu_resp_bits_error_delayed; // @[DCacheWrapper.scala 825:58]
  wire  ldu_0_io_lsu_s1_kill; // @[DCacheWrapper.scala 825:58]
  wire  ldu_0_io_lsu_s2_kill; // @[DCacheWrapper.scala 825:58]
  wire [35:0] ldu_0_io_lsu_s1_paddr_dup_lsu; // @[DCacheWrapper.scala 825:58]
  wire [35:0] ldu_0_io_lsu_s1_paddr_dup_dcache; // @[DCacheWrapper.scala 825:58]
  wire  ldu_0_io_lsu_s1_disable_fast_wakeup; // @[DCacheWrapper.scala 825:58]
  wire  ldu_0_io_lsu_s2_bank_conflict; // @[DCacheWrapper.scala 825:58]
  wire  ldu_0_io_lsu_s2_mq_nack; // @[DCacheWrapper.scala 825:58]
  wire  ldu_0_io_meta_read_valid; // @[DCacheWrapper.scala 825:58]
  wire [5:0] ldu_0_io_meta_read_bits_idx; // @[DCacheWrapper.scala 825:58]
  wire [1:0] ldu_0_io_meta_resp_0_coh_state; // @[DCacheWrapper.scala 825:58]
  wire [1:0] ldu_0_io_meta_resp_1_coh_state; // @[DCacheWrapper.scala 825:58]
  wire [1:0] ldu_0_io_meta_resp_2_coh_state; // @[DCacheWrapper.scala 825:58]
  wire [1:0] ldu_0_io_meta_resp_3_coh_state; // @[DCacheWrapper.scala 825:58]
  wire [1:0] ldu_0_io_meta_resp_4_coh_state; // @[DCacheWrapper.scala 825:58]
  wire [1:0] ldu_0_io_meta_resp_5_coh_state; // @[DCacheWrapper.scala 825:58]
  wire [1:0] ldu_0_io_meta_resp_6_coh_state; // @[DCacheWrapper.scala 825:58]
  wire [1:0] ldu_0_io_meta_resp_7_coh_state; // @[DCacheWrapper.scala 825:58]
  wire  ldu_0_io_extra_meta_resp_0_error; // @[DCacheWrapper.scala 825:58]
  wire  ldu_0_io_extra_meta_resp_1_error; // @[DCacheWrapper.scala 825:58]
  wire  ldu_0_io_extra_meta_resp_2_error; // @[DCacheWrapper.scala 825:58]
  wire  ldu_0_io_extra_meta_resp_3_error; // @[DCacheWrapper.scala 825:58]
  wire  ldu_0_io_extra_meta_resp_4_error; // @[DCacheWrapper.scala 825:58]
  wire  ldu_0_io_extra_meta_resp_5_error; // @[DCacheWrapper.scala 825:58]
  wire  ldu_0_io_extra_meta_resp_6_error; // @[DCacheWrapper.scala 825:58]
  wire  ldu_0_io_extra_meta_resp_7_error; // @[DCacheWrapper.scala 825:58]
  wire  ldu_0_io_tag_read_ready; // @[DCacheWrapper.scala 825:58]
  wire  ldu_0_io_tag_read_valid; // @[DCacheWrapper.scala 825:58]
  wire [5:0] ldu_0_io_tag_read_bits_idx; // @[DCacheWrapper.scala 825:58]
  wire [29:0] ldu_0_io_tag_resp_0; // @[DCacheWrapper.scala 825:58]
  wire [29:0] ldu_0_io_tag_resp_1; // @[DCacheWrapper.scala 825:58]
  wire [29:0] ldu_0_io_tag_resp_2; // @[DCacheWrapper.scala 825:58]
  wire [29:0] ldu_0_io_tag_resp_3; // @[DCacheWrapper.scala 825:58]
  wire [29:0] ldu_0_io_tag_resp_4; // @[DCacheWrapper.scala 825:58]
  wire [29:0] ldu_0_io_tag_resp_5; // @[DCacheWrapper.scala 825:58]
  wire [29:0] ldu_0_io_tag_resp_6; // @[DCacheWrapper.scala 825:58]
  wire [29:0] ldu_0_io_tag_resp_7; // @[DCacheWrapper.scala 825:58]
  wire  ldu_0_io_banked_data_read_ready; // @[DCacheWrapper.scala 825:58]
  wire  ldu_0_io_banked_data_read_valid; // @[DCacheWrapper.scala 825:58]
  wire [7:0] ldu_0_io_banked_data_read_bits_way_en; // @[DCacheWrapper.scala 825:58]
  wire [35:0] ldu_0_io_banked_data_read_bits_addr; // @[DCacheWrapper.scala 825:58]
  wire [7:0] ldu_0_io_banked_data_read_bits_bankMask; // @[DCacheWrapper.scala 825:58]
  wire [63:0] ldu_0_io_banked_data_resp_0_raw_data; // @[DCacheWrapper.scala 825:58]
  wire  ldu_0_io_read_error_delayed_0; // @[DCacheWrapper.scala 825:58]
  wire  ldu_0_io_bank_conflict_slow; // @[DCacheWrapper.scala 825:58]
  wire  ldu_0_io_miss_req_ready; // @[DCacheWrapper.scala 825:58]
  wire  ldu_0_io_miss_req_valid; // @[DCacheWrapper.scala 825:58]
  wire [3:0] ldu_0_io_miss_req_bits_source; // @[DCacheWrapper.scala 825:58]
  wire [4:0] ldu_0_io_miss_req_bits_cmd; // @[DCacheWrapper.scala 825:58]
  wire [35:0] ldu_0_io_miss_req_bits_addr; // @[DCacheWrapper.scala 825:58]
  wire [38:0] ldu_0_io_miss_req_bits_vaddr; // @[DCacheWrapper.scala 825:58]
  wire [7:0] ldu_0_io_miss_req_bits_way_en; // @[DCacheWrapper.scala 825:58]
  wire [1:0] ldu_0_io_miss_req_bits_req_coh_state; // @[DCacheWrapper.scala 825:58]
  wire [1:0] ldu_0_io_miss_req_bits_replace_coh_state; // @[DCacheWrapper.scala 825:58]
  wire [23:0] ldu_0_io_miss_req_bits_replace_tag; // @[DCacheWrapper.scala 825:58]
  wire  ldu_0_io_miss_req_bits_cancel; // @[DCacheWrapper.scala 825:58]
  wire [1:0] ldu_0_io_miss_resp_id; // @[DCacheWrapper.scala 825:58]
  wire  ldu_0_io_miss_resp_handled; // @[DCacheWrapper.scala 825:58]
  wire  ldu_0_io_miss_resp_merged; // @[DCacheWrapper.scala 825:58]
  wire [7:0] ldu_0_io_miss_resp_repl_way_en; // @[DCacheWrapper.scala 825:58]
  wire  ldu_0_io_replace_access_valid; // @[DCacheWrapper.scala 825:58]
  wire [5:0] ldu_0_io_replace_access_bits_set; // @[DCacheWrapper.scala 825:58]
  wire [2:0] ldu_0_io_replace_access_bits_way; // @[DCacheWrapper.scala 825:58]
  wire [5:0] ldu_0_io_replace_way_set_bits; // @[DCacheWrapper.scala 825:58]
  wire [2:0] ldu_0_io_replace_way_way; // @[DCacheWrapper.scala 825:58]
  wire  ldu_0_io_disable_ld_fast_wakeup; // @[DCacheWrapper.scala 825:58]
  wire  ldu_0_io_error_source_tag; // @[DCacheWrapper.scala 825:58]
  wire  ldu_0_io_error_source_data; // @[DCacheWrapper.scala 825:58]
  wire  ldu_0_io_error_source_l2; // @[DCacheWrapper.scala 825:58]
  wire [35:0] ldu_0_io_error_paddr; // @[DCacheWrapper.scala 825:58]
  wire  ldu_0_io_error_report_to_beu; // @[DCacheWrapper.scala 825:58]
  wire  ldu_0_io_error_valid; // @[DCacheWrapper.scala 825:58]
  wire  ldu_0_io_mq_enq_cancel; // @[DCacheWrapper.scala 825:58]
  wire [5:0] ldu_0_io_perf_0_value; // @[DCacheWrapper.scala 825:58]
  wire  ldu_1_clock; // @[DCacheWrapper.scala 825:58]
  wire  ldu_1_reset; // @[DCacheWrapper.scala 825:58]
  wire  ldu_1_io_lsu_req_ready; // @[DCacheWrapper.scala 825:58]
  wire  ldu_1_io_lsu_req_valid; // @[DCacheWrapper.scala 825:58]
  wire [4:0] ldu_1_io_lsu_req_bits_cmd; // @[DCacheWrapper.scala 825:58]
  wire [38:0] ldu_1_io_lsu_req_bits_vaddr; // @[DCacheWrapper.scala 825:58]
  wire [3:0] ldu_1_io_lsu_req_bits_instrtype; // @[DCacheWrapper.scala 825:58]
  wire  ldu_1_io_lsu_resp_valid; // @[DCacheWrapper.scala 825:58]
  wire [127:0] ldu_1_io_lsu_resp_bits_data_delayed; // @[DCacheWrapper.scala 825:58]
  wire  ldu_1_io_lsu_resp_bits_miss; // @[DCacheWrapper.scala 825:58]
  wire  ldu_1_io_lsu_resp_bits_tag_error; // @[DCacheWrapper.scala 825:58]
  wire [1:0] ldu_1_io_lsu_resp_bits_mshr_id; // @[DCacheWrapper.scala 825:58]
  wire  ldu_1_io_lsu_resp_bits_handled; // @[DCacheWrapper.scala 825:58]
  wire  ldu_1_io_lsu_resp_bits_error_delayed; // @[DCacheWrapper.scala 825:58]
  wire  ldu_1_io_lsu_s1_kill; // @[DCacheWrapper.scala 825:58]
  wire  ldu_1_io_lsu_s2_kill; // @[DCacheWrapper.scala 825:58]
  wire [35:0] ldu_1_io_lsu_s1_paddr_dup_lsu; // @[DCacheWrapper.scala 825:58]
  wire [35:0] ldu_1_io_lsu_s1_paddr_dup_dcache; // @[DCacheWrapper.scala 825:58]
  wire  ldu_1_io_lsu_s1_disable_fast_wakeup; // @[DCacheWrapper.scala 825:58]
  wire  ldu_1_io_lsu_s2_bank_conflict; // @[DCacheWrapper.scala 825:58]
  wire  ldu_1_io_lsu_s2_mq_nack; // @[DCacheWrapper.scala 825:58]
  wire  ldu_1_io_meta_read_valid; // @[DCacheWrapper.scala 825:58]
  wire [5:0] ldu_1_io_meta_read_bits_idx; // @[DCacheWrapper.scala 825:58]
  wire [1:0] ldu_1_io_meta_resp_0_coh_state; // @[DCacheWrapper.scala 825:58]
  wire [1:0] ldu_1_io_meta_resp_1_coh_state; // @[DCacheWrapper.scala 825:58]
  wire [1:0] ldu_1_io_meta_resp_2_coh_state; // @[DCacheWrapper.scala 825:58]
  wire [1:0] ldu_1_io_meta_resp_3_coh_state; // @[DCacheWrapper.scala 825:58]
  wire [1:0] ldu_1_io_meta_resp_4_coh_state; // @[DCacheWrapper.scala 825:58]
  wire [1:0] ldu_1_io_meta_resp_5_coh_state; // @[DCacheWrapper.scala 825:58]
  wire [1:0] ldu_1_io_meta_resp_6_coh_state; // @[DCacheWrapper.scala 825:58]
  wire [1:0] ldu_1_io_meta_resp_7_coh_state; // @[DCacheWrapper.scala 825:58]
  wire  ldu_1_io_extra_meta_resp_0_error; // @[DCacheWrapper.scala 825:58]
  wire  ldu_1_io_extra_meta_resp_1_error; // @[DCacheWrapper.scala 825:58]
  wire  ldu_1_io_extra_meta_resp_2_error; // @[DCacheWrapper.scala 825:58]
  wire  ldu_1_io_extra_meta_resp_3_error; // @[DCacheWrapper.scala 825:58]
  wire  ldu_1_io_extra_meta_resp_4_error; // @[DCacheWrapper.scala 825:58]
  wire  ldu_1_io_extra_meta_resp_5_error; // @[DCacheWrapper.scala 825:58]
  wire  ldu_1_io_extra_meta_resp_6_error; // @[DCacheWrapper.scala 825:58]
  wire  ldu_1_io_extra_meta_resp_7_error; // @[DCacheWrapper.scala 825:58]
  wire  ldu_1_io_tag_read_ready; // @[DCacheWrapper.scala 825:58]
  wire  ldu_1_io_tag_read_valid; // @[DCacheWrapper.scala 825:58]
  wire [5:0] ldu_1_io_tag_read_bits_idx; // @[DCacheWrapper.scala 825:58]
  wire [29:0] ldu_1_io_tag_resp_0; // @[DCacheWrapper.scala 825:58]
  wire [29:0] ldu_1_io_tag_resp_1; // @[DCacheWrapper.scala 825:58]
  wire [29:0] ldu_1_io_tag_resp_2; // @[DCacheWrapper.scala 825:58]
  wire [29:0] ldu_1_io_tag_resp_3; // @[DCacheWrapper.scala 825:58]
  wire [29:0] ldu_1_io_tag_resp_4; // @[DCacheWrapper.scala 825:58]
  wire [29:0] ldu_1_io_tag_resp_5; // @[DCacheWrapper.scala 825:58]
  wire [29:0] ldu_1_io_tag_resp_6; // @[DCacheWrapper.scala 825:58]
  wire [29:0] ldu_1_io_tag_resp_7; // @[DCacheWrapper.scala 825:58]
  wire  ldu_1_io_banked_data_read_ready; // @[DCacheWrapper.scala 825:58]
  wire  ldu_1_io_banked_data_read_valid; // @[DCacheWrapper.scala 825:58]
  wire [7:0] ldu_1_io_banked_data_read_bits_way_en; // @[DCacheWrapper.scala 825:58]
  wire [35:0] ldu_1_io_banked_data_read_bits_addr; // @[DCacheWrapper.scala 825:58]
  wire [7:0] ldu_1_io_banked_data_read_bits_bankMask; // @[DCacheWrapper.scala 825:58]
  wire [63:0] ldu_1_io_banked_data_resp_0_raw_data; // @[DCacheWrapper.scala 825:58]
  wire  ldu_1_io_read_error_delayed_0; // @[DCacheWrapper.scala 825:58]
  wire  ldu_1_io_bank_conflict_slow; // @[DCacheWrapper.scala 825:58]
  wire  ldu_1_io_miss_req_ready; // @[DCacheWrapper.scala 825:58]
  wire  ldu_1_io_miss_req_valid; // @[DCacheWrapper.scala 825:58]
  wire [3:0] ldu_1_io_miss_req_bits_source; // @[DCacheWrapper.scala 825:58]
  wire [4:0] ldu_1_io_miss_req_bits_cmd; // @[DCacheWrapper.scala 825:58]
  wire [35:0] ldu_1_io_miss_req_bits_addr; // @[DCacheWrapper.scala 825:58]
  wire [38:0] ldu_1_io_miss_req_bits_vaddr; // @[DCacheWrapper.scala 825:58]
  wire [7:0] ldu_1_io_miss_req_bits_way_en; // @[DCacheWrapper.scala 825:58]
  wire [1:0] ldu_1_io_miss_req_bits_req_coh_state; // @[DCacheWrapper.scala 825:58]
  wire [1:0] ldu_1_io_miss_req_bits_replace_coh_state; // @[DCacheWrapper.scala 825:58]
  wire [23:0] ldu_1_io_miss_req_bits_replace_tag; // @[DCacheWrapper.scala 825:58]
  wire  ldu_1_io_miss_req_bits_cancel; // @[DCacheWrapper.scala 825:58]
  wire [1:0] ldu_1_io_miss_resp_id; // @[DCacheWrapper.scala 825:58]
  wire  ldu_1_io_miss_resp_handled; // @[DCacheWrapper.scala 825:58]
  wire  ldu_1_io_miss_resp_merged; // @[DCacheWrapper.scala 825:58]
  wire [7:0] ldu_1_io_miss_resp_repl_way_en; // @[DCacheWrapper.scala 825:58]
  wire  ldu_1_io_replace_access_valid; // @[DCacheWrapper.scala 825:58]
  wire [5:0] ldu_1_io_replace_access_bits_set; // @[DCacheWrapper.scala 825:58]
  wire [2:0] ldu_1_io_replace_access_bits_way; // @[DCacheWrapper.scala 825:58]
  wire [5:0] ldu_1_io_replace_way_set_bits; // @[DCacheWrapper.scala 825:58]
  wire [2:0] ldu_1_io_replace_way_way; // @[DCacheWrapper.scala 825:58]
  wire  ldu_1_io_disable_ld_fast_wakeup; // @[DCacheWrapper.scala 825:58]
  wire  ldu_1_io_error_source_tag; // @[DCacheWrapper.scala 825:58]
  wire  ldu_1_io_error_source_data; // @[DCacheWrapper.scala 825:58]
  wire  ldu_1_io_error_source_l2; // @[DCacheWrapper.scala 825:58]
  wire [35:0] ldu_1_io_error_paddr; // @[DCacheWrapper.scala 825:58]
  wire  ldu_1_io_error_report_to_beu; // @[DCacheWrapper.scala 825:58]
  wire  ldu_1_io_error_valid; // @[DCacheWrapper.scala 825:58]
  wire  ldu_1_io_mq_enq_cancel; // @[DCacheWrapper.scala 825:58]
  wire [5:0] ldu_1_io_perf_0_value; // @[DCacheWrapper.scala 825:58]
  wire  mainPipe_clock; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_reset; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_probe_req_ready; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_probe_req_valid; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_probe_req_bits_miss; // @[DCacheWrapper.scala 827:28]
  wire [1:0] mainPipe_io_probe_req_bits_miss_id; // @[DCacheWrapper.scala 827:28]
  wire [1:0] mainPipe_io_probe_req_bits_miss_param; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_probe_req_bits_miss_dirty; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_probe_req_bits_miss_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_probe_req_bits_probe; // @[DCacheWrapper.scala 827:28]
  wire [1:0] mainPipe_io_probe_req_bits_probe_param; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_probe_req_bits_probe_need_data; // @[DCacheWrapper.scala 827:28]
  wire [3:0] mainPipe_io_probe_req_bits_source; // @[DCacheWrapper.scala 827:28]
  wire [4:0] mainPipe_io_probe_req_bits_cmd; // @[DCacheWrapper.scala 827:28]
  wire [38:0] mainPipe_io_probe_req_bits_vaddr; // @[DCacheWrapper.scala 827:28]
  wire [35:0] mainPipe_io_probe_req_bits_addr; // @[DCacheWrapper.scala 827:28]
  wire [511:0] mainPipe_io_probe_req_bits_store_data; // @[DCacheWrapper.scala 827:28]
  wire [63:0] mainPipe_io_probe_req_bits_store_mask; // @[DCacheWrapper.scala 827:28]
  wire [2:0] mainPipe_io_probe_req_bits_word_idx; // @[DCacheWrapper.scala 827:28]
  wire [63:0] mainPipe_io_probe_req_bits_amo_data; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_probe_req_bits_amo_mask; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_probe_req_bits_error; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_probe_req_bits_replace; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_probe_req_bits_replace_way_en; // @[DCacheWrapper.scala 827:28]
  wire [3:0] mainPipe_io_probe_req_bits_id; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_miss_req_ready; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_miss_req_valid; // @[DCacheWrapper.scala 827:28]
  wire [3:0] mainPipe_io_miss_req_bits_source; // @[DCacheWrapper.scala 827:28]
  wire [4:0] mainPipe_io_miss_req_bits_cmd; // @[DCacheWrapper.scala 827:28]
  wire [35:0] mainPipe_io_miss_req_bits_addr; // @[DCacheWrapper.scala 827:28]
  wire [38:0] mainPipe_io_miss_req_bits_vaddr; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_miss_req_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire [2:0] mainPipe_io_miss_req_bits_word_idx; // @[DCacheWrapper.scala 827:28]
  wire [63:0] mainPipe_io_miss_req_bits_amo_data; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_miss_req_bits_amo_mask; // @[DCacheWrapper.scala 827:28]
  wire [1:0] mainPipe_io_miss_req_bits_req_coh_state; // @[DCacheWrapper.scala 827:28]
  wire [1:0] mainPipe_io_miss_req_bits_replace_coh_state; // @[DCacheWrapper.scala 827:28]
  wire [23:0] mainPipe_io_miss_req_bits_replace_tag; // @[DCacheWrapper.scala 827:28]
  wire [3:0] mainPipe_io_miss_req_bits_id; // @[DCacheWrapper.scala 827:28]
  wire [511:0] mainPipe_io_miss_req_bits_store_data; // @[DCacheWrapper.scala 827:28]
  wire [63:0] mainPipe_io_miss_req_bits_store_mask; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_miss_resp_merged; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_miss_resp_repl_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_store_req_ready; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_store_req_valid; // @[DCacheWrapper.scala 827:28]
  wire [38:0] mainPipe_io_store_req_bits_vaddr; // @[DCacheWrapper.scala 827:28]
  wire [35:0] mainPipe_io_store_req_bits_addr; // @[DCacheWrapper.scala 827:28]
  wire [511:0] mainPipe_io_store_req_bits_data; // @[DCacheWrapper.scala 827:28]
  wire [63:0] mainPipe_io_store_req_bits_mask; // @[DCacheWrapper.scala 827:28]
  wire [3:0] mainPipe_io_store_req_bits_id; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_store_replay_resp_valid; // @[DCacheWrapper.scala 827:28]
  wire [3:0] mainPipe_io_store_replay_resp_bits_id; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_store_hit_resp_valid; // @[DCacheWrapper.scala 827:28]
  wire [3:0] mainPipe_io_store_hit_resp_bits_id; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_release_update_valid; // @[DCacheWrapper.scala 827:28]
  wire [35:0] mainPipe_io_release_update_bits_addr; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_release_update_bits_mask; // @[DCacheWrapper.scala 827:28]
  wire [511:0] mainPipe_io_release_update_bits_data; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_atomic_req_ready; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_atomic_req_valid; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_atomic_req_bits_miss; // @[DCacheWrapper.scala 827:28]
  wire [1:0] mainPipe_io_atomic_req_bits_miss_id; // @[DCacheWrapper.scala 827:28]
  wire [1:0] mainPipe_io_atomic_req_bits_miss_param; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_atomic_req_bits_miss_dirty; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_atomic_req_bits_miss_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_atomic_req_bits_probe; // @[DCacheWrapper.scala 827:28]
  wire [1:0] mainPipe_io_atomic_req_bits_probe_param; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_atomic_req_bits_probe_need_data; // @[DCacheWrapper.scala 827:28]
  wire [3:0] mainPipe_io_atomic_req_bits_source; // @[DCacheWrapper.scala 827:28]
  wire [4:0] mainPipe_io_atomic_req_bits_cmd; // @[DCacheWrapper.scala 827:28]
  wire [38:0] mainPipe_io_atomic_req_bits_vaddr; // @[DCacheWrapper.scala 827:28]
  wire [35:0] mainPipe_io_atomic_req_bits_addr; // @[DCacheWrapper.scala 827:28]
  wire [511:0] mainPipe_io_atomic_req_bits_store_data; // @[DCacheWrapper.scala 827:28]
  wire [63:0] mainPipe_io_atomic_req_bits_store_mask; // @[DCacheWrapper.scala 827:28]
  wire [2:0] mainPipe_io_atomic_req_bits_word_idx; // @[DCacheWrapper.scala 827:28]
  wire [63:0] mainPipe_io_atomic_req_bits_amo_data; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_atomic_req_bits_amo_mask; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_atomic_req_bits_error; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_atomic_req_bits_replace; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_atomic_req_bits_replace_way_en; // @[DCacheWrapper.scala 827:28]
  wire [3:0] mainPipe_io_atomic_req_bits_id; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_atomic_resp_valid; // @[DCacheWrapper.scala 827:28]
  wire [63:0] mainPipe_io_atomic_resp_bits_data; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_atomic_resp_bits_miss; // @[DCacheWrapper.scala 827:28]
  wire [1:0] mainPipe_io_atomic_resp_bits_miss_id; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_atomic_resp_bits_replay; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_atomic_resp_bits_error; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_atomic_resp_bits_ack_miss_queue; // @[DCacheWrapper.scala 827:28]
  wire [3:0] mainPipe_io_atomic_resp_bits_id; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_replace_req_ready; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_replace_req_valid; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_replace_req_bits_miss; // @[DCacheWrapper.scala 827:28]
  wire [1:0] mainPipe_io_replace_req_bits_miss_id; // @[DCacheWrapper.scala 827:28]
  wire [1:0] mainPipe_io_replace_req_bits_miss_param; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_replace_req_bits_miss_dirty; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_replace_req_bits_miss_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_replace_req_bits_probe; // @[DCacheWrapper.scala 827:28]
  wire [1:0] mainPipe_io_replace_req_bits_probe_param; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_replace_req_bits_probe_need_data; // @[DCacheWrapper.scala 827:28]
  wire [3:0] mainPipe_io_replace_req_bits_source; // @[DCacheWrapper.scala 827:28]
  wire [4:0] mainPipe_io_replace_req_bits_cmd; // @[DCacheWrapper.scala 827:28]
  wire [38:0] mainPipe_io_replace_req_bits_vaddr; // @[DCacheWrapper.scala 827:28]
  wire [35:0] mainPipe_io_replace_req_bits_addr; // @[DCacheWrapper.scala 827:28]
  wire [511:0] mainPipe_io_replace_req_bits_store_data; // @[DCacheWrapper.scala 827:28]
  wire [63:0] mainPipe_io_replace_req_bits_store_mask; // @[DCacheWrapper.scala 827:28]
  wire [2:0] mainPipe_io_replace_req_bits_word_idx; // @[DCacheWrapper.scala 827:28]
  wire [63:0] mainPipe_io_replace_req_bits_amo_data; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_replace_req_bits_amo_mask; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_replace_req_bits_error; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_replace_req_bits_replace; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_replace_req_bits_replace_way_en; // @[DCacheWrapper.scala 827:28]
  wire [3:0] mainPipe_io_replace_req_bits_id; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_replace_resp_valid; // @[DCacheWrapper.scala 827:28]
  wire [1:0] mainPipe_io_replace_resp_bits; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_wb_ready; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_wb_valid; // @[DCacheWrapper.scala 827:28]
  wire [2:0] mainPipe_io_wb_bits_param; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_wb_bits_voluntary; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_wb_bits_hasData; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_wb_bits_delay_release; // @[DCacheWrapper.scala 827:28]
  wire [1:0] mainPipe_io_wb_bits_miss_id; // @[DCacheWrapper.scala 827:28]
  wire [35:0] mainPipe_io_wb_bits_addr; // @[DCacheWrapper.scala 827:28]
  wire [511:0] mainPipe_io_wb_bits_data; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_wb_ready_dup_0; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_wb_ready_dup_1; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_wb_ready_dup_2; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_wb_ready_dup_3; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_wb_ready_dup_4; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_wb_ready_dup_5; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_wb_ready_dup_6; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_wb_ready_dup_7; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_wb_ready_dup_8; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_wb_ready_dup_9; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_wb_ready_dup_10; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_wb_ready_dup_11; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_probe_ttob_check_req_valid; // @[DCacheWrapper.scala 827:28]
  wire [35:0] mainPipe_io_probe_ttob_check_req_bits_addr; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_probe_ttob_check_resp_bits_toN; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_data_read_intend; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_data_readline_ready; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_data_readline_valid; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_data_readline_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire [35:0] mainPipe_io_data_readline_bits_addr; // @[DCacheWrapper.scala 827:28]
  wire [63:0] mainPipe_io_data_resp_0_raw_data; // @[DCacheWrapper.scala 827:28]
  wire [63:0] mainPipe_io_data_resp_1_raw_data; // @[DCacheWrapper.scala 827:28]
  wire [63:0] mainPipe_io_data_resp_2_raw_data; // @[DCacheWrapper.scala 827:28]
  wire [63:0] mainPipe_io_data_resp_3_raw_data; // @[DCacheWrapper.scala 827:28]
  wire [63:0] mainPipe_io_data_resp_4_raw_data; // @[DCacheWrapper.scala 827:28]
  wire [63:0] mainPipe_io_data_resp_5_raw_data; // @[DCacheWrapper.scala 827:28]
  wire [63:0] mainPipe_io_data_resp_6_raw_data; // @[DCacheWrapper.scala 827:28]
  wire [63:0] mainPipe_io_data_resp_7_raw_data; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_readline_error_delayed; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_data_write_ready; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_data_write_valid; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_data_write_bits_wmask; // @[DCacheWrapper.scala 827:28]
  wire [63:0] mainPipe_io_data_write_bits_data_0; // @[DCacheWrapper.scala 827:28]
  wire [63:0] mainPipe_io_data_write_bits_data_1; // @[DCacheWrapper.scala 827:28]
  wire [63:0] mainPipe_io_data_write_bits_data_2; // @[DCacheWrapper.scala 827:28]
  wire [63:0] mainPipe_io_data_write_bits_data_3; // @[DCacheWrapper.scala 827:28]
  wire [63:0] mainPipe_io_data_write_bits_data_4; // @[DCacheWrapper.scala 827:28]
  wire [63:0] mainPipe_io_data_write_bits_data_5; // @[DCacheWrapper.scala 827:28]
  wire [63:0] mainPipe_io_data_write_bits_data_6; // @[DCacheWrapper.scala 827:28]
  wire [63:0] mainPipe_io_data_write_bits_data_7; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_data_write_dup_0_valid; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_data_write_dup_0_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire [35:0] mainPipe_io_data_write_dup_0_bits_addr; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_data_write_dup_1_valid; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_data_write_dup_1_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire [35:0] mainPipe_io_data_write_dup_1_bits_addr; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_data_write_dup_2_valid; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_data_write_dup_2_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire [35:0] mainPipe_io_data_write_dup_2_bits_addr; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_data_write_dup_3_valid; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_data_write_dup_3_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire [35:0] mainPipe_io_data_write_dup_3_bits_addr; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_data_write_dup_4_valid; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_data_write_dup_4_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire [35:0] mainPipe_io_data_write_dup_4_bits_addr; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_data_write_dup_5_valid; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_data_write_dup_5_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire [35:0] mainPipe_io_data_write_dup_5_bits_addr; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_data_write_dup_6_valid; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_data_write_dup_6_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire [35:0] mainPipe_io_data_write_dup_6_bits_addr; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_data_write_dup_7_valid; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_data_write_dup_7_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire [35:0] mainPipe_io_data_write_dup_7_bits_addr; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_data_write_ready_dup_0; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_data_write_ready_dup_1; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_data_write_ready_dup_2; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_data_write_ready_dup_3; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_data_write_ready_dup_4; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_data_write_ready_dup_5; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_data_write_ready_dup_6; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_data_write_ready_dup_7; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_data_write_ready_dup_8; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_data_write_ready_dup_9; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_data_write_ready_dup_10; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_data_write_ready_dup_11; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_meta_read_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_meta_read_bits_idx; // @[DCacheWrapper.scala 827:28]
  wire [1:0] mainPipe_io_meta_resp_0_coh_state; // @[DCacheWrapper.scala 827:28]
  wire [1:0] mainPipe_io_meta_resp_1_coh_state; // @[DCacheWrapper.scala 827:28]
  wire [1:0] mainPipe_io_meta_resp_2_coh_state; // @[DCacheWrapper.scala 827:28]
  wire [1:0] mainPipe_io_meta_resp_3_coh_state; // @[DCacheWrapper.scala 827:28]
  wire [1:0] mainPipe_io_meta_resp_4_coh_state; // @[DCacheWrapper.scala 827:28]
  wire [1:0] mainPipe_io_meta_resp_5_coh_state; // @[DCacheWrapper.scala 827:28]
  wire [1:0] mainPipe_io_meta_resp_6_coh_state; // @[DCacheWrapper.scala 827:28]
  wire [1:0] mainPipe_io_meta_resp_7_coh_state; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_meta_write_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_meta_write_bits_idx; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_meta_write_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire [1:0] mainPipe_io_meta_write_bits_meta_coh_state; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_extra_meta_resp_0_error; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_extra_meta_resp_1_error; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_extra_meta_resp_2_error; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_extra_meta_resp_3_error; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_extra_meta_resp_4_error; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_extra_meta_resp_5_error; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_extra_meta_resp_6_error; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_extra_meta_resp_7_error; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_error_flag_write_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_error_flag_write_bits_idx; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_error_flag_write_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_error_flag_write_bits_flag; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_tag_read_ready; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_tag_read_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_tag_read_bits_idx; // @[DCacheWrapper.scala 827:28]
  wire [29:0] mainPipe_io_tag_resp_0; // @[DCacheWrapper.scala 827:28]
  wire [29:0] mainPipe_io_tag_resp_1; // @[DCacheWrapper.scala 827:28]
  wire [29:0] mainPipe_io_tag_resp_2; // @[DCacheWrapper.scala 827:28]
  wire [29:0] mainPipe_io_tag_resp_3; // @[DCacheWrapper.scala 827:28]
  wire [29:0] mainPipe_io_tag_resp_4; // @[DCacheWrapper.scala 827:28]
  wire [29:0] mainPipe_io_tag_resp_5; // @[DCacheWrapper.scala 827:28]
  wire [29:0] mainPipe_io_tag_resp_6; // @[DCacheWrapper.scala 827:28]
  wire [29:0] mainPipe_io_tag_resp_7; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_tag_write_ready; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_tag_write_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_tag_write_bits_idx; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_tag_write_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire [23:0] mainPipe_io_tag_write_bits_tag; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_tag_write_ready_dup_0; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_tag_write_ready_dup_1; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_tag_write_ready_dup_2; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_tag_write_ready_dup_3; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_tag_write_ready_dup_4; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_tag_write_ready_dup_5; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_tag_write_ready_dup_6; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_tag_write_ready_dup_7; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_tag_write_ready_dup_8; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_tag_write_ready_dup_9; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_tag_write_ready_dup_10; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_tag_write_ready_dup_11; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_tag_write_intend; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_replace_access_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_replace_access_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [2:0] mainPipe_io_replace_access_bits_way; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_replace_way_set_bits; // @[DCacheWrapper.scala 827:28]
  wire [2:0] mainPipe_io_replace_way_way; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_s1_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_s1_bits_set; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_s2_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_s2_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_s2_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_s3_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_s3_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_s3_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_0_s1_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_0_s1_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_0_s1_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_0_s2_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_0_s2_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_0_s2_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_0_s3_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_0_s3_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_0_s3_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_1_s1_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_1_s1_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_1_s1_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_1_s2_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_1_s2_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_1_s2_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_1_s3_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_1_s3_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_1_s3_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_2_s1_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_2_s1_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_2_s1_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_2_s2_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_2_s2_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_2_s2_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_2_s3_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_2_s3_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_2_s3_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_3_s1_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_3_s1_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_3_s1_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_3_s2_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_3_s2_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_3_s2_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_3_s3_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_3_s3_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_3_s3_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_4_s1_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_4_s1_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_4_s1_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_4_s2_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_4_s2_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_4_s2_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_4_s3_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_4_s3_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_4_s3_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_5_s1_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_5_s1_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_5_s1_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_5_s2_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_5_s2_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_5_s2_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_5_s3_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_5_s3_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_5_s3_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_6_s1_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_6_s1_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_6_s1_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_6_s2_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_6_s2_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_6_s2_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_6_s3_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_6_s3_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_6_s3_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_7_s1_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_7_s1_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_7_s1_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_7_s2_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_7_s2_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_7_s2_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_7_s3_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_7_s3_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_7_s3_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_8_s1_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_8_s1_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_8_s1_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_8_s2_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_8_s2_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_8_s2_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_8_s3_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_8_s3_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_8_s3_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_9_s1_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_9_s1_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_9_s1_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_9_s2_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_9_s2_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_9_s2_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_9_s3_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_9_s3_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_9_s3_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_10_s1_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_10_s1_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_10_s1_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_10_s2_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_10_s2_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_10_s2_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_10_s3_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_10_s3_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_10_s3_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_11_s1_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_11_s1_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_11_s1_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_11_s2_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_11_s2_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_11_s2_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_11_s3_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_11_s3_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_11_s3_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_12_s1_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_12_s1_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_12_s1_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_12_s2_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_12_s2_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_12_s2_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_12_s3_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_12_s3_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_12_s3_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_13_s1_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_13_s1_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_13_s1_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_13_s2_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_13_s2_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_13_s2_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_13_s3_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_13_s3_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_13_s3_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_14_s1_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_14_s1_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_14_s1_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_14_s2_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_14_s2_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_14_s2_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_14_s3_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_14_s3_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_14_s3_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_15_s1_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_15_s1_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_15_s1_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_15_s2_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_15_s2_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_15_s2_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_15_s3_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_15_s3_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_15_s3_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_16_s1_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_16_s1_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_16_s1_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_16_s2_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_16_s2_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_16_s2_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_16_s3_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_16_s3_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_16_s3_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_17_s1_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_17_s1_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_17_s1_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_17_s2_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_17_s2_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_17_s2_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_17_s3_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_17_s3_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_17_s3_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_18_s1_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_18_s1_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_18_s1_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_18_s2_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_18_s2_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_18_s2_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_18_s3_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_18_s3_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_18_s3_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_19_s1_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_19_s1_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_19_s1_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_19_s2_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_19_s2_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_19_s2_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_19_s3_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_19_s3_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_19_s3_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_20_s1_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_20_s1_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_20_s1_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_20_s2_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_20_s2_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_20_s2_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_20_s3_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_20_s3_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_20_s3_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_21_s1_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_21_s1_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_21_s1_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_21_s2_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_21_s2_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_21_s2_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_21_s3_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_21_s3_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_21_s3_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_22_s1_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_22_s1_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_22_s1_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_22_s2_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_22_s2_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_22_s2_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_22_s3_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_22_s3_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_22_s3_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_23_s1_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_23_s1_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_23_s1_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_23_s2_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_23_s2_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_23_s2_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_status_dup_23_s3_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_status_dup_23_s3_bits_set; // @[DCacheWrapper.scala 827:28]
  wire [7:0] mainPipe_io_status_dup_23_s3_bits_way_en; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_lrsc_locked_block_valid; // @[DCacheWrapper.scala 827:28]
  wire [35:0] mainPipe_io_lrsc_locked_block_bits; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_invalid_resv_set; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_update_resv_set; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_block_lr; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_error_source_tag; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_error_source_data; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_error_source_l2; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_error_opType_store; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_error_opType_probe; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_error_opType_release; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_error_opType_atom; // @[DCacheWrapper.scala 827:28]
  wire [35:0] mainPipe_io_error_paddr; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_error_report_to_beu; // @[DCacheWrapper.scala 827:28]
  wire  mainPipe_io_error_valid; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_perf_0_value; // @[DCacheWrapper.scala 827:28]
  wire [5:0] mainPipe_io_perf_1_value; // @[DCacheWrapper.scala 827:28]
  wire  refillPipe_io_req_ready; // @[DCacheWrapper.scala 828:28]
  wire  refillPipe_io_req_valid; // @[DCacheWrapper.scala 828:28]
  wire [3:0] refillPipe_io_req_bits_source; // @[DCacheWrapper.scala 828:28]
  wire [35:0] refillPipe_io_req_bits_addr; // @[DCacheWrapper.scala 828:28]
  wire [1:0] refillPipe_io_req_bits_miss_id; // @[DCacheWrapper.scala 828:28]
  wire [3:0] refillPipe_io_req_bits_id; // @[DCacheWrapper.scala 828:28]
  wire  refillPipe_io_req_bits_error; // @[DCacheWrapper.scala 828:28]
  wire [7:0] refillPipe_io_req_bits_wmask; // @[DCacheWrapper.scala 828:28]
  wire [63:0] refillPipe_io_req_bits_data_0; // @[DCacheWrapper.scala 828:28]
  wire [63:0] refillPipe_io_req_bits_data_1; // @[DCacheWrapper.scala 828:28]
  wire [63:0] refillPipe_io_req_bits_data_2; // @[DCacheWrapper.scala 828:28]
  wire [63:0] refillPipe_io_req_bits_data_3; // @[DCacheWrapper.scala 828:28]
  wire [63:0] refillPipe_io_req_bits_data_4; // @[DCacheWrapper.scala 828:28]
  wire [63:0] refillPipe_io_req_bits_data_5; // @[DCacheWrapper.scala 828:28]
  wire [63:0] refillPipe_io_req_bits_data_6; // @[DCacheWrapper.scala 828:28]
  wire [63:0] refillPipe_io_req_bits_data_7; // @[DCacheWrapper.scala 828:28]
  wire [1:0] refillPipe_io_req_bits_meta_coh_state; // @[DCacheWrapper.scala 828:28]
  wire  refillPipe_io_req_dup_for_data_w0_valid; // @[DCacheWrapper.scala 828:28]
  wire [35:0] refillPipe_io_req_dup_for_data_w0_bits_addr; // @[DCacheWrapper.scala 828:28]
  wire [7:0] refillPipe_io_req_dup_for_data_w0_bits_way_en; // @[DCacheWrapper.scala 828:28]
  wire [1:0] refillPipe_io_req_dup_for_data_w0_bits_alias; // @[DCacheWrapper.scala 828:28]
  wire  refillPipe_io_req_dup_for_data_w1_valid; // @[DCacheWrapper.scala 828:28]
  wire [35:0] refillPipe_io_req_dup_for_data_w1_bits_addr; // @[DCacheWrapper.scala 828:28]
  wire [7:0] refillPipe_io_req_dup_for_data_w1_bits_way_en; // @[DCacheWrapper.scala 828:28]
  wire [1:0] refillPipe_io_req_dup_for_data_w1_bits_alias; // @[DCacheWrapper.scala 828:28]
  wire  refillPipe_io_req_dup_for_data_w2_valid; // @[DCacheWrapper.scala 828:28]
  wire [35:0] refillPipe_io_req_dup_for_data_w2_bits_addr; // @[DCacheWrapper.scala 828:28]
  wire [7:0] refillPipe_io_req_dup_for_data_w2_bits_way_en; // @[DCacheWrapper.scala 828:28]
  wire [1:0] refillPipe_io_req_dup_for_data_w2_bits_alias; // @[DCacheWrapper.scala 828:28]
  wire  refillPipe_io_req_dup_for_data_w3_valid; // @[DCacheWrapper.scala 828:28]
  wire [35:0] refillPipe_io_req_dup_for_data_w3_bits_addr; // @[DCacheWrapper.scala 828:28]
  wire [7:0] refillPipe_io_req_dup_for_data_w3_bits_way_en; // @[DCacheWrapper.scala 828:28]
  wire [1:0] refillPipe_io_req_dup_for_data_w3_bits_alias; // @[DCacheWrapper.scala 828:28]
  wire  refillPipe_io_req_dup_for_data_w4_valid; // @[DCacheWrapper.scala 828:28]
  wire [35:0] refillPipe_io_req_dup_for_data_w4_bits_addr; // @[DCacheWrapper.scala 828:28]
  wire [7:0] refillPipe_io_req_dup_for_data_w4_bits_way_en; // @[DCacheWrapper.scala 828:28]
  wire [1:0] refillPipe_io_req_dup_for_data_w4_bits_alias; // @[DCacheWrapper.scala 828:28]
  wire  refillPipe_io_req_dup_for_data_w5_valid; // @[DCacheWrapper.scala 828:28]
  wire [35:0] refillPipe_io_req_dup_for_data_w5_bits_addr; // @[DCacheWrapper.scala 828:28]
  wire [7:0] refillPipe_io_req_dup_for_data_w5_bits_way_en; // @[DCacheWrapper.scala 828:28]
  wire [1:0] refillPipe_io_req_dup_for_data_w5_bits_alias; // @[DCacheWrapper.scala 828:28]
  wire  refillPipe_io_req_dup_for_data_w6_valid; // @[DCacheWrapper.scala 828:28]
  wire [35:0] refillPipe_io_req_dup_for_data_w6_bits_addr; // @[DCacheWrapper.scala 828:28]
  wire [7:0] refillPipe_io_req_dup_for_data_w6_bits_way_en; // @[DCacheWrapper.scala 828:28]
  wire [1:0] refillPipe_io_req_dup_for_data_w6_bits_alias; // @[DCacheWrapper.scala 828:28]
  wire  refillPipe_io_req_dup_for_data_w7_valid; // @[DCacheWrapper.scala 828:28]
  wire [35:0] refillPipe_io_req_dup_for_data_w7_bits_addr; // @[DCacheWrapper.scala 828:28]
  wire [7:0] refillPipe_io_req_dup_for_data_w7_bits_way_en; // @[DCacheWrapper.scala 828:28]
  wire [1:0] refillPipe_io_req_dup_for_data_w7_bits_alias; // @[DCacheWrapper.scala 828:28]
  wire  refillPipe_io_req_dup_for_meta_wvalid; // @[DCacheWrapper.scala 828:28]
  wire [35:0] refillPipe_io_req_dup_for_meta_waddr; // @[DCacheWrapper.scala 828:28]
  wire [7:0] refillPipe_io_req_dup_for_meta_wway_en; // @[DCacheWrapper.scala 828:28]
  wire [1:0] refillPipe_io_req_dup_for_meta_walias; // @[DCacheWrapper.scala 828:28]
  wire  refillPipe_io_req_dup_for_tag_wvalid; // @[DCacheWrapper.scala 828:28]
  wire [35:0] refillPipe_io_req_dup_for_tag_waddr; // @[DCacheWrapper.scala 828:28]
  wire [7:0] refillPipe_io_req_dup_for_tag_wway_en; // @[DCacheWrapper.scala 828:28]
  wire [1:0] refillPipe_io_req_dup_for_tag_walias; // @[DCacheWrapper.scala 828:28]
  wire  refillPipe_io_req_dup_for_err_wvalid; // @[DCacheWrapper.scala 828:28]
  wire [35:0] refillPipe_io_req_dup_for_err_waddr; // @[DCacheWrapper.scala 828:28]
  wire [7:0] refillPipe_io_req_dup_for_err_wway_en; // @[DCacheWrapper.scala 828:28]
  wire [1:0] refillPipe_io_req_dup_for_err_walias; // @[DCacheWrapper.scala 828:28]
  wire  refillPipe_io_resp_valid; // @[DCacheWrapper.scala 828:28]
  wire [1:0] refillPipe_io_resp_bits; // @[DCacheWrapper.scala 828:28]
  wire  refillPipe_io_data_write_valid; // @[DCacheWrapper.scala 828:28]
  wire [7:0] refillPipe_io_data_write_bits_wmask; // @[DCacheWrapper.scala 828:28]
  wire [63:0] refillPipe_io_data_write_bits_data_0; // @[DCacheWrapper.scala 828:28]
  wire [63:0] refillPipe_io_data_write_bits_data_1; // @[DCacheWrapper.scala 828:28]
  wire [63:0] refillPipe_io_data_write_bits_data_2; // @[DCacheWrapper.scala 828:28]
  wire [63:0] refillPipe_io_data_write_bits_data_3; // @[DCacheWrapper.scala 828:28]
  wire [63:0] refillPipe_io_data_write_bits_data_4; // @[DCacheWrapper.scala 828:28]
  wire [63:0] refillPipe_io_data_write_bits_data_5; // @[DCacheWrapper.scala 828:28]
  wire [63:0] refillPipe_io_data_write_bits_data_6; // @[DCacheWrapper.scala 828:28]
  wire [63:0] refillPipe_io_data_write_bits_data_7; // @[DCacheWrapper.scala 828:28]
  wire  refillPipe_io_data_write_dup_0_valid; // @[DCacheWrapper.scala 828:28]
  wire [7:0] refillPipe_io_data_write_dup_0_bits_way_en; // @[DCacheWrapper.scala 828:28]
  wire [35:0] refillPipe_io_data_write_dup_0_bits_addr; // @[DCacheWrapper.scala 828:28]
  wire  refillPipe_io_data_write_dup_1_valid; // @[DCacheWrapper.scala 828:28]
  wire [7:0] refillPipe_io_data_write_dup_1_bits_way_en; // @[DCacheWrapper.scala 828:28]
  wire [35:0] refillPipe_io_data_write_dup_1_bits_addr; // @[DCacheWrapper.scala 828:28]
  wire  refillPipe_io_data_write_dup_2_valid; // @[DCacheWrapper.scala 828:28]
  wire [7:0] refillPipe_io_data_write_dup_2_bits_way_en; // @[DCacheWrapper.scala 828:28]
  wire [35:0] refillPipe_io_data_write_dup_2_bits_addr; // @[DCacheWrapper.scala 828:28]
  wire  refillPipe_io_data_write_dup_3_valid; // @[DCacheWrapper.scala 828:28]
  wire [7:0] refillPipe_io_data_write_dup_3_bits_way_en; // @[DCacheWrapper.scala 828:28]
  wire [35:0] refillPipe_io_data_write_dup_3_bits_addr; // @[DCacheWrapper.scala 828:28]
  wire  refillPipe_io_data_write_dup_4_valid; // @[DCacheWrapper.scala 828:28]
  wire [7:0] refillPipe_io_data_write_dup_4_bits_way_en; // @[DCacheWrapper.scala 828:28]
  wire [35:0] refillPipe_io_data_write_dup_4_bits_addr; // @[DCacheWrapper.scala 828:28]
  wire  refillPipe_io_data_write_dup_5_valid; // @[DCacheWrapper.scala 828:28]
  wire [7:0] refillPipe_io_data_write_dup_5_bits_way_en; // @[DCacheWrapper.scala 828:28]
  wire [35:0] refillPipe_io_data_write_dup_5_bits_addr; // @[DCacheWrapper.scala 828:28]
  wire  refillPipe_io_data_write_dup_6_valid; // @[DCacheWrapper.scala 828:28]
  wire [7:0] refillPipe_io_data_write_dup_6_bits_way_en; // @[DCacheWrapper.scala 828:28]
  wire [35:0] refillPipe_io_data_write_dup_6_bits_addr; // @[DCacheWrapper.scala 828:28]
  wire  refillPipe_io_data_write_dup_7_valid; // @[DCacheWrapper.scala 828:28]
  wire [7:0] refillPipe_io_data_write_dup_7_bits_way_en; // @[DCacheWrapper.scala 828:28]
  wire [35:0] refillPipe_io_data_write_dup_7_bits_addr; // @[DCacheWrapper.scala 828:28]
  wire  refillPipe_io_meta_write_valid; // @[DCacheWrapper.scala 828:28]
  wire [5:0] refillPipe_io_meta_write_bits_idx; // @[DCacheWrapper.scala 828:28]
  wire [7:0] refillPipe_io_meta_write_bits_way_en; // @[DCacheWrapper.scala 828:28]
  wire [1:0] refillPipe_io_meta_write_bits_meta_coh_state; // @[DCacheWrapper.scala 828:28]
  wire  refillPipe_io_error_flag_write_valid; // @[DCacheWrapper.scala 828:28]
  wire [5:0] refillPipe_io_error_flag_write_bits_idx; // @[DCacheWrapper.scala 828:28]
  wire [7:0] refillPipe_io_error_flag_write_bits_way_en; // @[DCacheWrapper.scala 828:28]
  wire  refillPipe_io_error_flag_write_bits_flag; // @[DCacheWrapper.scala 828:28]
  wire  refillPipe_io_tag_write_valid; // @[DCacheWrapper.scala 828:28]
  wire [5:0] refillPipe_io_tag_write_bits_idx; // @[DCacheWrapper.scala 828:28]
  wire [7:0] refillPipe_io_tag_write_bits_way_en; // @[DCacheWrapper.scala 828:28]
  wire [23:0] refillPipe_io_tag_write_bits_tag; // @[DCacheWrapper.scala 828:28]
  wire  refillPipe_io_store_resp_valid; // @[DCacheWrapper.scala 828:28]
  wire [3:0] refillPipe_io_store_resp_bits_id; // @[DCacheWrapper.scala 828:28]
  wire  refillPipe_io_release_wakeup_valid; // @[DCacheWrapper.scala 828:28]
  wire [1:0] refillPipe_io_release_wakeup_bits; // @[DCacheWrapper.scala 828:28]
  wire  missQueue_clock; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_reset; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_req_ready; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_req_valid; // @[DCacheWrapper.scala 829:28]
  wire [3:0] missQueue_io_req_bits_source; // @[DCacheWrapper.scala 829:28]
  wire [4:0] missQueue_io_req_bits_cmd; // @[DCacheWrapper.scala 829:28]
  wire [35:0] missQueue_io_req_bits_addr; // @[DCacheWrapper.scala 829:28]
  wire [38:0] missQueue_io_req_bits_vaddr; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_req_bits_way_en; // @[DCacheWrapper.scala 829:28]
  wire [2:0] missQueue_io_req_bits_word_idx; // @[DCacheWrapper.scala 829:28]
  wire [63:0] missQueue_io_req_bits_amo_data; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_req_bits_amo_mask; // @[DCacheWrapper.scala 829:28]
  wire [1:0] missQueue_io_req_bits_req_coh_state; // @[DCacheWrapper.scala 829:28]
  wire [1:0] missQueue_io_req_bits_replace_coh_state; // @[DCacheWrapper.scala 829:28]
  wire [23:0] missQueue_io_req_bits_replace_tag; // @[DCacheWrapper.scala 829:28]
  wire [3:0] missQueue_io_req_bits_id; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_req_bits_cancel; // @[DCacheWrapper.scala 829:28]
  wire [511:0] missQueue_io_req_bits_store_data; // @[DCacheWrapper.scala 829:28]
  wire [63:0] missQueue_io_req_bits_store_mask; // @[DCacheWrapper.scala 829:28]
  wire [1:0] missQueue_io_resp_id; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_resp_handled; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_resp_merged; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_resp_repl_way_en; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_mem_acquire_ready; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_mem_acquire_valid; // @[DCacheWrapper.scala 829:28]
  wire [2:0] missQueue_io_mem_acquire_bits_opcode; // @[DCacheWrapper.scala 829:28]
  wire [2:0] missQueue_io_mem_acquire_bits_param; // @[DCacheWrapper.scala 829:28]
  wire [2:0] missQueue_io_mem_acquire_bits_size; // @[DCacheWrapper.scala 829:28]
  wire [3:0] missQueue_io_mem_acquire_bits_source; // @[DCacheWrapper.scala 829:28]
  wire [35:0] missQueue_io_mem_acquire_bits_address; // @[DCacheWrapper.scala 829:28]
  wire [32:0] missQueue_io_mem_acquire_bits_user_vaddr; // @[DCacheWrapper.scala 829:28]
  wire [3:0] missQueue_io_mem_acquire_bits_user_reqSource; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_mem_acquire_bits_user_needHint; // @[DCacheWrapper.scala 829:28]
  wire [31:0] missQueue_io_mem_acquire_bits_mask; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_mem_grant_ready; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_mem_grant_valid; // @[DCacheWrapper.scala 829:28]
  wire [2:0] missQueue_io_mem_grant_bits_opcode; // @[DCacheWrapper.scala 829:28]
  wire [1:0] missQueue_io_mem_grant_bits_param; // @[DCacheWrapper.scala 829:28]
  wire [2:0] missQueue_io_mem_grant_bits_size; // @[DCacheWrapper.scala 829:28]
  wire [3:0] missQueue_io_mem_grant_bits_source; // @[DCacheWrapper.scala 829:28]
  wire [8:0] missQueue_io_mem_grant_bits_sink; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_mem_grant_bits_denied; // @[DCacheWrapper.scala 829:28]
  wire [255:0] missQueue_io_mem_grant_bits_data; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_mem_grant_bits_corrupt; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_mem_finish_ready; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_mem_finish_valid; // @[DCacheWrapper.scala 829:28]
  wire [8:0] missQueue_io_mem_finish_bits_sink; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_ready; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_valid; // @[DCacheWrapper.scala 829:28]
  wire [3:0] missQueue_io_refill_pipe_req_bits_source; // @[DCacheWrapper.scala 829:28]
  wire [35:0] missQueue_io_refill_pipe_req_bits_addr; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_refill_pipe_req_bits_way_en; // @[DCacheWrapper.scala 829:28]
  wire [1:0] missQueue_io_refill_pipe_req_bits_alias; // @[DCacheWrapper.scala 829:28]
  wire [1:0] missQueue_io_refill_pipe_req_bits_miss_id; // @[DCacheWrapper.scala 829:28]
  wire [3:0] missQueue_io_refill_pipe_req_bits_id; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_bits_error; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_refill_pipe_req_bits_wmask; // @[DCacheWrapper.scala 829:28]
  wire [63:0] missQueue_io_refill_pipe_req_bits_data_0; // @[DCacheWrapper.scala 829:28]
  wire [63:0] missQueue_io_refill_pipe_req_bits_data_1; // @[DCacheWrapper.scala 829:28]
  wire [63:0] missQueue_io_refill_pipe_req_bits_data_2; // @[DCacheWrapper.scala 829:28]
  wire [63:0] missQueue_io_refill_pipe_req_bits_data_3; // @[DCacheWrapper.scala 829:28]
  wire [63:0] missQueue_io_refill_pipe_req_bits_data_4; // @[DCacheWrapper.scala 829:28]
  wire [63:0] missQueue_io_refill_pipe_req_bits_data_5; // @[DCacheWrapper.scala 829:28]
  wire [63:0] missQueue_io_refill_pipe_req_bits_data_6; // @[DCacheWrapper.scala 829:28]
  wire [63:0] missQueue_io_refill_pipe_req_bits_data_7; // @[DCacheWrapper.scala 829:28]
  wire [1:0] missQueue_io_refill_pipe_req_bits_meta_coh_state; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_0_ready; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_0_valid; // @[DCacheWrapper.scala 829:28]
  wire [35:0] missQueue_io_refill_pipe_req_dup_0_bits_addr; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_refill_pipe_req_dup_0_bits_way_en; // @[DCacheWrapper.scala 829:28]
  wire [1:0] missQueue_io_refill_pipe_req_dup_0_bits_alias; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_1_ready; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_1_valid; // @[DCacheWrapper.scala 829:28]
  wire [35:0] missQueue_io_refill_pipe_req_dup_1_bits_addr; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_refill_pipe_req_dup_1_bits_way_en; // @[DCacheWrapper.scala 829:28]
  wire [1:0] missQueue_io_refill_pipe_req_dup_1_bits_alias; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_2_ready; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_2_valid; // @[DCacheWrapper.scala 829:28]
  wire [35:0] missQueue_io_refill_pipe_req_dup_2_bits_addr; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_refill_pipe_req_dup_2_bits_way_en; // @[DCacheWrapper.scala 829:28]
  wire [1:0] missQueue_io_refill_pipe_req_dup_2_bits_alias; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_3_ready; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_3_valid; // @[DCacheWrapper.scala 829:28]
  wire [35:0] missQueue_io_refill_pipe_req_dup_3_bits_addr; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_refill_pipe_req_dup_3_bits_way_en; // @[DCacheWrapper.scala 829:28]
  wire [1:0] missQueue_io_refill_pipe_req_dup_3_bits_alias; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_4_ready; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_4_valid; // @[DCacheWrapper.scala 829:28]
  wire [35:0] missQueue_io_refill_pipe_req_dup_4_bits_addr; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_refill_pipe_req_dup_4_bits_way_en; // @[DCacheWrapper.scala 829:28]
  wire [1:0] missQueue_io_refill_pipe_req_dup_4_bits_alias; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_5_ready; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_5_valid; // @[DCacheWrapper.scala 829:28]
  wire [35:0] missQueue_io_refill_pipe_req_dup_5_bits_addr; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_refill_pipe_req_dup_5_bits_way_en; // @[DCacheWrapper.scala 829:28]
  wire [1:0] missQueue_io_refill_pipe_req_dup_5_bits_alias; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_6_ready; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_6_valid; // @[DCacheWrapper.scala 829:28]
  wire [35:0] missQueue_io_refill_pipe_req_dup_6_bits_addr; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_refill_pipe_req_dup_6_bits_way_en; // @[DCacheWrapper.scala 829:28]
  wire [1:0] missQueue_io_refill_pipe_req_dup_6_bits_alias; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_7_ready; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_7_valid; // @[DCacheWrapper.scala 829:28]
  wire [35:0] missQueue_io_refill_pipe_req_dup_7_bits_addr; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_refill_pipe_req_dup_7_bits_way_en; // @[DCacheWrapper.scala 829:28]
  wire [1:0] missQueue_io_refill_pipe_req_dup_7_bits_alias; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_8_ready; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_8_valid; // @[DCacheWrapper.scala 829:28]
  wire [35:0] missQueue_io_refill_pipe_req_dup_8_bits_addr; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_refill_pipe_req_dup_8_bits_way_en; // @[DCacheWrapper.scala 829:28]
  wire [1:0] missQueue_io_refill_pipe_req_dup_8_bits_alias; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_9_ready; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_9_valid; // @[DCacheWrapper.scala 829:28]
  wire [35:0] missQueue_io_refill_pipe_req_dup_9_bits_addr; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_refill_pipe_req_dup_9_bits_way_en; // @[DCacheWrapper.scala 829:28]
  wire [1:0] missQueue_io_refill_pipe_req_dup_9_bits_alias; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_10_ready; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_10_valid; // @[DCacheWrapper.scala 829:28]
  wire [35:0] missQueue_io_refill_pipe_req_dup_10_bits_addr; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_refill_pipe_req_dup_10_bits_way_en; // @[DCacheWrapper.scala 829:28]
  wire [1:0] missQueue_io_refill_pipe_req_dup_10_bits_alias; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_11_ready; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_11_valid; // @[DCacheWrapper.scala 829:28]
  wire [35:0] missQueue_io_refill_pipe_req_dup_11_bits_addr; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_refill_pipe_req_dup_11_bits_way_en; // @[DCacheWrapper.scala 829:28]
  wire [1:0] missQueue_io_refill_pipe_req_dup_11_bits_alias; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_12_ready; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_12_valid; // @[DCacheWrapper.scala 829:28]
  wire [35:0] missQueue_io_refill_pipe_req_dup_12_bits_addr; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_refill_pipe_req_dup_12_bits_way_en; // @[DCacheWrapper.scala 829:28]
  wire [1:0] missQueue_io_refill_pipe_req_dup_12_bits_alias; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_13_ready; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_13_valid; // @[DCacheWrapper.scala 829:28]
  wire [35:0] missQueue_io_refill_pipe_req_dup_13_bits_addr; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_refill_pipe_req_dup_13_bits_way_en; // @[DCacheWrapper.scala 829:28]
  wire [1:0] missQueue_io_refill_pipe_req_dup_13_bits_alias; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_14_ready; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_14_valid; // @[DCacheWrapper.scala 829:28]
  wire [35:0] missQueue_io_refill_pipe_req_dup_14_bits_addr; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_refill_pipe_req_dup_14_bits_way_en; // @[DCacheWrapper.scala 829:28]
  wire [1:0] missQueue_io_refill_pipe_req_dup_14_bits_alias; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_15_ready; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_15_valid; // @[DCacheWrapper.scala 829:28]
  wire [35:0] missQueue_io_refill_pipe_req_dup_15_bits_addr; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_refill_pipe_req_dup_15_bits_way_en; // @[DCacheWrapper.scala 829:28]
  wire [1:0] missQueue_io_refill_pipe_req_dup_15_bits_alias; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_16_ready; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_16_valid; // @[DCacheWrapper.scala 829:28]
  wire [35:0] missQueue_io_refill_pipe_req_dup_16_bits_addr; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_refill_pipe_req_dup_16_bits_way_en; // @[DCacheWrapper.scala 829:28]
  wire [1:0] missQueue_io_refill_pipe_req_dup_16_bits_alias; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_17_ready; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_17_valid; // @[DCacheWrapper.scala 829:28]
  wire [35:0] missQueue_io_refill_pipe_req_dup_17_bits_addr; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_refill_pipe_req_dup_17_bits_way_en; // @[DCacheWrapper.scala 829:28]
  wire [1:0] missQueue_io_refill_pipe_req_dup_17_bits_alias; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_18_ready; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_18_valid; // @[DCacheWrapper.scala 829:28]
  wire [35:0] missQueue_io_refill_pipe_req_dup_18_bits_addr; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_refill_pipe_req_dup_18_bits_way_en; // @[DCacheWrapper.scala 829:28]
  wire [1:0] missQueue_io_refill_pipe_req_dup_18_bits_alias; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_19_ready; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_19_valid; // @[DCacheWrapper.scala 829:28]
  wire [35:0] missQueue_io_refill_pipe_req_dup_19_bits_addr; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_refill_pipe_req_dup_19_bits_way_en; // @[DCacheWrapper.scala 829:28]
  wire [1:0] missQueue_io_refill_pipe_req_dup_19_bits_alias; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_20_ready; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_20_valid; // @[DCacheWrapper.scala 829:28]
  wire [35:0] missQueue_io_refill_pipe_req_dup_20_bits_addr; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_refill_pipe_req_dup_20_bits_way_en; // @[DCacheWrapper.scala 829:28]
  wire [1:0] missQueue_io_refill_pipe_req_dup_20_bits_alias; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_21_ready; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_21_valid; // @[DCacheWrapper.scala 829:28]
  wire [35:0] missQueue_io_refill_pipe_req_dup_21_bits_addr; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_refill_pipe_req_dup_21_bits_way_en; // @[DCacheWrapper.scala 829:28]
  wire [1:0] missQueue_io_refill_pipe_req_dup_21_bits_alias; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_22_ready; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_22_valid; // @[DCacheWrapper.scala 829:28]
  wire [35:0] missQueue_io_refill_pipe_req_dup_22_bits_addr; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_refill_pipe_req_dup_22_bits_way_en; // @[DCacheWrapper.scala 829:28]
  wire [1:0] missQueue_io_refill_pipe_req_dup_22_bits_alias; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_23_ready; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_req_dup_23_valid; // @[DCacheWrapper.scala 829:28]
  wire [35:0] missQueue_io_refill_pipe_req_dup_23_bits_addr; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_refill_pipe_req_dup_23_bits_way_en; // @[DCacheWrapper.scala 829:28]
  wire [1:0] missQueue_io_refill_pipe_req_dup_23_bits_alias; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_refill_pipe_resp_valid; // @[DCacheWrapper.scala 829:28]
  wire [1:0] missQueue_io_refill_pipe_resp_bits; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_replace_pipe_req_ready; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_replace_pipe_req_valid; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_replace_pipe_req_bits_miss; // @[DCacheWrapper.scala 829:28]
  wire [1:0] missQueue_io_replace_pipe_req_bits_miss_id; // @[DCacheWrapper.scala 829:28]
  wire [1:0] missQueue_io_replace_pipe_req_bits_miss_param; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_replace_pipe_req_bits_miss_dirty; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_replace_pipe_req_bits_miss_way_en; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_replace_pipe_req_bits_probe; // @[DCacheWrapper.scala 829:28]
  wire [1:0] missQueue_io_replace_pipe_req_bits_probe_param; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_replace_pipe_req_bits_probe_need_data; // @[DCacheWrapper.scala 829:28]
  wire [3:0] missQueue_io_replace_pipe_req_bits_source; // @[DCacheWrapper.scala 829:28]
  wire [4:0] missQueue_io_replace_pipe_req_bits_cmd; // @[DCacheWrapper.scala 829:28]
  wire [38:0] missQueue_io_replace_pipe_req_bits_vaddr; // @[DCacheWrapper.scala 829:28]
  wire [35:0] missQueue_io_replace_pipe_req_bits_addr; // @[DCacheWrapper.scala 829:28]
  wire [511:0] missQueue_io_replace_pipe_req_bits_store_data; // @[DCacheWrapper.scala 829:28]
  wire [63:0] missQueue_io_replace_pipe_req_bits_store_mask; // @[DCacheWrapper.scala 829:28]
  wire [2:0] missQueue_io_replace_pipe_req_bits_word_idx; // @[DCacheWrapper.scala 829:28]
  wire [63:0] missQueue_io_replace_pipe_req_bits_amo_data; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_replace_pipe_req_bits_amo_mask; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_replace_pipe_req_bits_error; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_replace_pipe_req_bits_replace; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_replace_pipe_req_bits_replace_way_en; // @[DCacheWrapper.scala 829:28]
  wire [3:0] missQueue_io_replace_pipe_req_bits_id; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_replace_pipe_resp_valid; // @[DCacheWrapper.scala 829:28]
  wire [1:0] missQueue_io_replace_pipe_resp_bits; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_main_pipe_req_ready; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_main_pipe_req_valid; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_main_pipe_req_bits_miss; // @[DCacheWrapper.scala 829:28]
  wire [1:0] missQueue_io_main_pipe_req_bits_miss_id; // @[DCacheWrapper.scala 829:28]
  wire [1:0] missQueue_io_main_pipe_req_bits_miss_param; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_main_pipe_req_bits_miss_way_en; // @[DCacheWrapper.scala 829:28]
  wire [3:0] missQueue_io_main_pipe_req_bits_source; // @[DCacheWrapper.scala 829:28]
  wire [4:0] missQueue_io_main_pipe_req_bits_cmd; // @[DCacheWrapper.scala 829:28]
  wire [38:0] missQueue_io_main_pipe_req_bits_vaddr; // @[DCacheWrapper.scala 829:28]
  wire [35:0] missQueue_io_main_pipe_req_bits_addr; // @[DCacheWrapper.scala 829:28]
  wire [511:0] missQueue_io_main_pipe_req_bits_store_data; // @[DCacheWrapper.scala 829:28]
  wire [63:0] missQueue_io_main_pipe_req_bits_store_mask; // @[DCacheWrapper.scala 829:28]
  wire [2:0] missQueue_io_main_pipe_req_bits_word_idx; // @[DCacheWrapper.scala 829:28]
  wire [63:0] missQueue_io_main_pipe_req_bits_amo_data; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_main_pipe_req_bits_amo_mask; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_main_pipe_req_bits_error; // @[DCacheWrapper.scala 829:28]
  wire [3:0] missQueue_io_main_pipe_req_bits_id; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_main_pipe_resp_valid; // @[DCacheWrapper.scala 829:28]
  wire [1:0] missQueue_io_main_pipe_resp_bits_miss_id; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_main_pipe_resp_bits_ack_miss_queue; // @[DCacheWrapper.scala 829:28]
  wire [35:0] missQueue_io_probe_addr; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_probe_block; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_forward_0_valid; // @[DCacheWrapper.scala 829:28]
  wire [1:0] missQueue_io_forward_0_mshrid; // @[DCacheWrapper.scala 829:28]
  wire [35:0] missQueue_io_forward_0_paddr; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_forward_0_forward_mshr; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_forward_0_forwardData_0; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_forward_0_forwardData_1; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_forward_0_forwardData_2; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_forward_0_forwardData_3; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_forward_0_forwardData_4; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_forward_0_forwardData_5; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_forward_0_forwardData_6; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_forward_0_forwardData_7; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_forward_0_forwardData_8; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_forward_0_forwardData_9; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_forward_0_forwardData_10; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_forward_0_forwardData_11; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_forward_0_forwardData_12; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_forward_0_forwardData_13; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_forward_0_forwardData_14; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_forward_0_forwardData_15; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_forward_0_forward_result_valid; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_forward_1_valid; // @[DCacheWrapper.scala 829:28]
  wire [1:0] missQueue_io_forward_1_mshrid; // @[DCacheWrapper.scala 829:28]
  wire [35:0] missQueue_io_forward_1_paddr; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_forward_1_forward_mshr; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_forward_1_forwardData_0; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_forward_1_forwardData_1; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_forward_1_forwardData_2; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_forward_1_forwardData_3; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_forward_1_forwardData_4; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_forward_1_forwardData_5; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_forward_1_forwardData_6; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_forward_1_forwardData_7; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_forward_1_forwardData_8; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_forward_1_forwardData_9; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_forward_1_forwardData_10; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_forward_1_forwardData_11; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_forward_1_forwardData_12; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_forward_1_forwardData_13; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_forward_1_forwardData_14; // @[DCacheWrapper.scala 829:28]
  wire [7:0] missQueue_io_forward_1_forwardData_15; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_forward_1_forward_result_valid; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_l2_pf_store_only; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_lqEmpty; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_io_mq_enq_cancel; // @[DCacheWrapper.scala 829:28]
  wire [5:0] missQueue_io_perf_0_value; // @[DCacheWrapper.scala 829:28]
  wire [5:0] missQueue_io_perf_1_value; // @[DCacheWrapper.scala 829:28]
  wire [5:0] missQueue_io_perf_2_value; // @[DCacheWrapper.scala 829:28]
  wire [5:0] missQueue_io_perf_3_value; // @[DCacheWrapper.scala 829:28]
  wire [5:0] missQueue_io_perf_4_value; // @[DCacheWrapper.scala 829:28]
  wire  missQueue_rob_head_vaddr_0_valid; // @[DCacheWrapper.scala 829:28]
  wire [38:0] missQueue_rob_head_vaddr_0_bits; // @[DCacheWrapper.scala 829:28]
  wire  probeQueue_clock; // @[DCacheWrapper.scala 830:28]
  wire  probeQueue_reset; // @[DCacheWrapper.scala 830:28]
  wire  probeQueue_io_mem_probe_ready; // @[DCacheWrapper.scala 830:28]
  wire  probeQueue_io_mem_probe_valid; // @[DCacheWrapper.scala 830:28]
  wire [1:0] probeQueue_io_mem_probe_bits_param; // @[DCacheWrapper.scala 830:28]
  wire [35:0] probeQueue_io_mem_probe_bits_address; // @[DCacheWrapper.scala 830:28]
  wire [255:0] probeQueue_io_mem_probe_bits_data; // @[DCacheWrapper.scala 830:28]
  wire  probeQueue_io_pipe_req_ready; // @[DCacheWrapper.scala 830:28]
  wire  probeQueue_io_pipe_req_valid; // @[DCacheWrapper.scala 830:28]
  wire  probeQueue_io_pipe_req_bits_miss; // @[DCacheWrapper.scala 830:28]
  wire [1:0] probeQueue_io_pipe_req_bits_miss_id; // @[DCacheWrapper.scala 830:28]
  wire [1:0] probeQueue_io_pipe_req_bits_miss_param; // @[DCacheWrapper.scala 830:28]
  wire  probeQueue_io_pipe_req_bits_miss_dirty; // @[DCacheWrapper.scala 830:28]
  wire [7:0] probeQueue_io_pipe_req_bits_miss_way_en; // @[DCacheWrapper.scala 830:28]
  wire  probeQueue_io_pipe_req_bits_probe; // @[DCacheWrapper.scala 830:28]
  wire [1:0] probeQueue_io_pipe_req_bits_probe_param; // @[DCacheWrapper.scala 830:28]
  wire  probeQueue_io_pipe_req_bits_probe_need_data; // @[DCacheWrapper.scala 830:28]
  wire [3:0] probeQueue_io_pipe_req_bits_source; // @[DCacheWrapper.scala 830:28]
  wire [4:0] probeQueue_io_pipe_req_bits_cmd; // @[DCacheWrapper.scala 830:28]
  wire [38:0] probeQueue_io_pipe_req_bits_vaddr; // @[DCacheWrapper.scala 830:28]
  wire [35:0] probeQueue_io_pipe_req_bits_addr; // @[DCacheWrapper.scala 830:28]
  wire [511:0] probeQueue_io_pipe_req_bits_store_data; // @[DCacheWrapper.scala 830:28]
  wire [63:0] probeQueue_io_pipe_req_bits_store_mask; // @[DCacheWrapper.scala 830:28]
  wire [2:0] probeQueue_io_pipe_req_bits_word_idx; // @[DCacheWrapper.scala 830:28]
  wire [63:0] probeQueue_io_pipe_req_bits_amo_data; // @[DCacheWrapper.scala 830:28]
  wire [7:0] probeQueue_io_pipe_req_bits_amo_mask; // @[DCacheWrapper.scala 830:28]
  wire  probeQueue_io_pipe_req_bits_error; // @[DCacheWrapper.scala 830:28]
  wire  probeQueue_io_pipe_req_bits_replace; // @[DCacheWrapper.scala 830:28]
  wire [7:0] probeQueue_io_pipe_req_bits_replace_way_en; // @[DCacheWrapper.scala 830:28]
  wire [3:0] probeQueue_io_pipe_req_bits_id; // @[DCacheWrapper.scala 830:28]
  wire  probeQueue_io_lrsc_locked_block_valid; // @[DCacheWrapper.scala 830:28]
  wire [35:0] probeQueue_io_lrsc_locked_block_bits; // @[DCacheWrapper.scala 830:28]
  wire  probeQueue_io_update_resv_set; // @[DCacheWrapper.scala 830:28]
  wire [5:0] probeQueue_io_perf_0_value; // @[DCacheWrapper.scala 830:28]
  wire [5:0] probeQueue_io_perf_1_value; // @[DCacheWrapper.scala 830:28]
  wire [5:0] probeQueue_io_perf_2_value; // @[DCacheWrapper.scala 830:28]
  wire [5:0] probeQueue_io_perf_3_value; // @[DCacheWrapper.scala 830:28]
  wire [5:0] probeQueue_io_perf_4_value; // @[DCacheWrapper.scala 830:28]
  wire  wb_clock; // @[DCacheWrapper.scala 831:28]
  wire  wb_reset; // @[DCacheWrapper.scala 831:28]
  wire  wb_io_req_ready; // @[DCacheWrapper.scala 831:28]
  wire  wb_io_req_valid; // @[DCacheWrapper.scala 831:28]
  wire [2:0] wb_io_req_bits_param; // @[DCacheWrapper.scala 831:28]
  wire  wb_io_req_bits_voluntary; // @[DCacheWrapper.scala 831:28]
  wire  wb_io_req_bits_hasData; // @[DCacheWrapper.scala 831:28]
  wire  wb_io_req_bits_delay_release; // @[DCacheWrapper.scala 831:28]
  wire [1:0] wb_io_req_bits_miss_id; // @[DCacheWrapper.scala 831:28]
  wire [35:0] wb_io_req_bits_addr; // @[DCacheWrapper.scala 831:28]
  wire [511:0] wb_io_req_bits_data; // @[DCacheWrapper.scala 831:28]
  wire  wb_io_req_ready_dup_0; // @[DCacheWrapper.scala 831:28]
  wire  wb_io_req_ready_dup_1; // @[DCacheWrapper.scala 831:28]
  wire  wb_io_req_ready_dup_2; // @[DCacheWrapper.scala 831:28]
  wire  wb_io_req_ready_dup_3; // @[DCacheWrapper.scala 831:28]
  wire  wb_io_req_ready_dup_4; // @[DCacheWrapper.scala 831:28]
  wire  wb_io_req_ready_dup_5; // @[DCacheWrapper.scala 831:28]
  wire  wb_io_req_ready_dup_6; // @[DCacheWrapper.scala 831:28]
  wire  wb_io_req_ready_dup_7; // @[DCacheWrapper.scala 831:28]
  wire  wb_io_req_ready_dup_8; // @[DCacheWrapper.scala 831:28]
  wire  wb_io_req_ready_dup_9; // @[DCacheWrapper.scala 831:28]
  wire  wb_io_req_ready_dup_10; // @[DCacheWrapper.scala 831:28]
  wire  wb_io_req_ready_dup_11; // @[DCacheWrapper.scala 831:28]
  wire  wb_io_mem_release_ready; // @[DCacheWrapper.scala 831:28]
  wire  wb_io_mem_release_valid; // @[DCacheWrapper.scala 831:28]
  wire [2:0] wb_io_mem_release_bits_opcode; // @[DCacheWrapper.scala 831:28]
  wire [2:0] wb_io_mem_release_bits_param; // @[DCacheWrapper.scala 831:28]
  wire [2:0] wb_io_mem_release_bits_size; // @[DCacheWrapper.scala 831:28]
  wire [3:0] wb_io_mem_release_bits_source; // @[DCacheWrapper.scala 831:28]
  wire [35:0] wb_io_mem_release_bits_address; // @[DCacheWrapper.scala 831:28]
  wire [255:0] wb_io_mem_release_bits_data; // @[DCacheWrapper.scala 831:28]
  wire  wb_io_mem_grant_valid; // @[DCacheWrapper.scala 831:28]
  wire [3:0] wb_io_mem_grant_bits_source; // @[DCacheWrapper.scala 831:28]
  wire  wb_io_release_wakeup_valid; // @[DCacheWrapper.scala 831:28]
  wire [1:0] wb_io_release_wakeup_bits; // @[DCacheWrapper.scala 831:28]
  wire  wb_io_release_update_valid; // @[DCacheWrapper.scala 831:28]
  wire [35:0] wb_io_release_update_bits_addr; // @[DCacheWrapper.scala 831:28]
  wire [7:0] wb_io_release_update_bits_mask; // @[DCacheWrapper.scala 831:28]
  wire [511:0] wb_io_release_update_bits_data; // @[DCacheWrapper.scala 831:28]
  wire  wb_io_probe_ttob_check_req_valid; // @[DCacheWrapper.scala 831:28]
  wire [35:0] wb_io_probe_ttob_check_req_bits_addr; // @[DCacheWrapper.scala 831:28]
  wire  wb_io_probe_ttob_check_resp_bits_toN; // @[DCacheWrapper.scala 831:28]
  wire  wb_io_miss_req_valid; // @[DCacheWrapper.scala 831:28]
  wire [35:0] wb_io_miss_req_bits; // @[DCacheWrapper.scala 831:28]
  wire  wb_io_block_miss_req; // @[DCacheWrapper.scala 831:28]
  wire [5:0] wb_io_perf_0_value; // @[DCacheWrapper.scala 831:28]
  wire [5:0] wb_io_perf_1_value; // @[DCacheWrapper.scala 831:28]
  wire [5:0] wb_io_perf_2_value; // @[DCacheWrapper.scala 831:28]
  wire [5:0] wb_io_perf_3_value; // @[DCacheWrapper.scala 831:28]
  wire [5:0] wb_io_perf_4_value; // @[DCacheWrapper.scala 831:28]
  wire  tag_write_arb_io_in_0_valid; // @[DCacheWrapper.scala 962:29]
  wire [5:0] tag_write_arb_io_in_0_bits_idx; // @[DCacheWrapper.scala 962:29]
  wire [7:0] tag_write_arb_io_in_0_bits_way_en; // @[DCacheWrapper.scala 962:29]
  wire [23:0] tag_write_arb_io_in_0_bits_tag; // @[DCacheWrapper.scala 962:29]
  wire  tag_write_arb_io_in_1_ready; // @[DCacheWrapper.scala 962:29]
  wire  tag_write_arb_io_in_1_valid; // @[DCacheWrapper.scala 962:29]
  wire [5:0] tag_write_arb_io_in_1_bits_idx; // @[DCacheWrapper.scala 962:29]
  wire [7:0] tag_write_arb_io_in_1_bits_way_en; // @[DCacheWrapper.scala 962:29]
  wire [23:0] tag_write_arb_io_in_1_bits_tag; // @[DCacheWrapper.scala 962:29]
  wire  tag_write_arb_io_out_valid; // @[DCacheWrapper.scala 962:29]
  wire [5:0] tag_write_arb_io_out_bits_idx; // @[DCacheWrapper.scala 962:29]
  wire [7:0] tag_write_arb_io_out_bits_way_en; // @[DCacheWrapper.scala 962:29]
  wire [23:0] tag_write_arb_io_out_bits_tag; // @[DCacheWrapper.scala 962:29]
  wire  dataWriteArb_io_in_0_valid; // @[DCacheWrapper.scala 976:28]
  wire [7:0] dataWriteArb_io_in_0_bits_wmask; // @[DCacheWrapper.scala 976:28]
  wire [63:0] dataWriteArb_io_in_0_bits_data_0; // @[DCacheWrapper.scala 976:28]
  wire [63:0] dataWriteArb_io_in_0_bits_data_1; // @[DCacheWrapper.scala 976:28]
  wire [63:0] dataWriteArb_io_in_0_bits_data_2; // @[DCacheWrapper.scala 976:28]
  wire [63:0] dataWriteArb_io_in_0_bits_data_3; // @[DCacheWrapper.scala 976:28]
  wire [63:0] dataWriteArb_io_in_0_bits_data_4; // @[DCacheWrapper.scala 976:28]
  wire [63:0] dataWriteArb_io_in_0_bits_data_5; // @[DCacheWrapper.scala 976:28]
  wire [63:0] dataWriteArb_io_in_0_bits_data_6; // @[DCacheWrapper.scala 976:28]
  wire [63:0] dataWriteArb_io_in_0_bits_data_7; // @[DCacheWrapper.scala 976:28]
  wire  dataWriteArb_io_in_1_ready; // @[DCacheWrapper.scala 976:28]
  wire  dataWriteArb_io_in_1_valid; // @[DCacheWrapper.scala 976:28]
  wire [7:0] dataWriteArb_io_in_1_bits_wmask; // @[DCacheWrapper.scala 976:28]
  wire [63:0] dataWriteArb_io_in_1_bits_data_0; // @[DCacheWrapper.scala 976:28]
  wire [63:0] dataWriteArb_io_in_1_bits_data_1; // @[DCacheWrapper.scala 976:28]
  wire [63:0] dataWriteArb_io_in_1_bits_data_2; // @[DCacheWrapper.scala 976:28]
  wire [63:0] dataWriteArb_io_in_1_bits_data_3; // @[DCacheWrapper.scala 976:28]
  wire [63:0] dataWriteArb_io_in_1_bits_data_4; // @[DCacheWrapper.scala 976:28]
  wire [63:0] dataWriteArb_io_in_1_bits_data_5; // @[DCacheWrapper.scala 976:28]
  wire [63:0] dataWriteArb_io_in_1_bits_data_6; // @[DCacheWrapper.scala 976:28]
  wire [63:0] dataWriteArb_io_in_1_bits_data_7; // @[DCacheWrapper.scala 976:28]
  wire  dataWriteArb_io_out_valid; // @[DCacheWrapper.scala 976:28]
  wire [7:0] dataWriteArb_io_out_bits_wmask; // @[DCacheWrapper.scala 976:28]
  wire [63:0] dataWriteArb_io_out_bits_data_0; // @[DCacheWrapper.scala 976:28]
  wire [63:0] dataWriteArb_io_out_bits_data_1; // @[DCacheWrapper.scala 976:28]
  wire [63:0] dataWriteArb_io_out_bits_data_2; // @[DCacheWrapper.scala 976:28]
  wire [63:0] dataWriteArb_io_out_bits_data_3; // @[DCacheWrapper.scala 976:28]
  wire [63:0] dataWriteArb_io_out_bits_data_4; // @[DCacheWrapper.scala 976:28]
  wire [63:0] dataWriteArb_io_out_bits_data_5; // @[DCacheWrapper.scala 976:28]
  wire [63:0] dataWriteArb_io_out_bits_data_6; // @[DCacheWrapper.scala 976:28]
  wire [63:0] dataWriteArb_io_out_bits_data_7; // @[DCacheWrapper.scala 976:28]
  wire  dataWriteArb_dup_io_in_0_valid; // @[DCacheWrapper.scala 983:34]
  wire [7:0] dataWriteArb_dup_io_in_0_bits_way_en; // @[DCacheWrapper.scala 983:34]
  wire [35:0] dataWriteArb_dup_io_in_0_bits_addr; // @[DCacheWrapper.scala 983:34]
  wire  dataWriteArb_dup_io_in_1_valid; // @[DCacheWrapper.scala 983:34]
  wire [7:0] dataWriteArb_dup_io_in_1_bits_way_en; // @[DCacheWrapper.scala 983:34]
  wire [35:0] dataWriteArb_dup_io_in_1_bits_addr; // @[DCacheWrapper.scala 983:34]
  wire  dataWriteArb_dup_io_out_valid; // @[DCacheWrapper.scala 983:34]
  wire [7:0] dataWriteArb_dup_io_out_bits_way_en; // @[DCacheWrapper.scala 983:34]
  wire [35:0] dataWriteArb_dup_io_out_bits_addr; // @[DCacheWrapper.scala 983:34]
  wire  dataWriteArb_dup_1_io_in_0_valid; // @[DCacheWrapper.scala 983:34]
  wire [7:0] dataWriteArb_dup_1_io_in_0_bits_way_en; // @[DCacheWrapper.scala 983:34]
  wire [35:0] dataWriteArb_dup_1_io_in_0_bits_addr; // @[DCacheWrapper.scala 983:34]
  wire  dataWriteArb_dup_1_io_in_1_valid; // @[DCacheWrapper.scala 983:34]
  wire [7:0] dataWriteArb_dup_1_io_in_1_bits_way_en; // @[DCacheWrapper.scala 983:34]
  wire [35:0] dataWriteArb_dup_1_io_in_1_bits_addr; // @[DCacheWrapper.scala 983:34]
  wire  dataWriteArb_dup_1_io_out_valid; // @[DCacheWrapper.scala 983:34]
  wire [7:0] dataWriteArb_dup_1_io_out_bits_way_en; // @[DCacheWrapper.scala 983:34]
  wire [35:0] dataWriteArb_dup_1_io_out_bits_addr; // @[DCacheWrapper.scala 983:34]
  wire  dataWriteArb_dup_2_io_in_0_valid; // @[DCacheWrapper.scala 983:34]
  wire [7:0] dataWriteArb_dup_2_io_in_0_bits_way_en; // @[DCacheWrapper.scala 983:34]
  wire [35:0] dataWriteArb_dup_2_io_in_0_bits_addr; // @[DCacheWrapper.scala 983:34]
  wire  dataWriteArb_dup_2_io_in_1_valid; // @[DCacheWrapper.scala 983:34]
  wire [7:0] dataWriteArb_dup_2_io_in_1_bits_way_en; // @[DCacheWrapper.scala 983:34]
  wire [35:0] dataWriteArb_dup_2_io_in_1_bits_addr; // @[DCacheWrapper.scala 983:34]
  wire  dataWriteArb_dup_2_io_out_valid; // @[DCacheWrapper.scala 983:34]
  wire [7:0] dataWriteArb_dup_2_io_out_bits_way_en; // @[DCacheWrapper.scala 983:34]
  wire [35:0] dataWriteArb_dup_2_io_out_bits_addr; // @[DCacheWrapper.scala 983:34]
  wire  dataWriteArb_dup_3_io_in_0_valid; // @[DCacheWrapper.scala 983:34]
  wire [7:0] dataWriteArb_dup_3_io_in_0_bits_way_en; // @[DCacheWrapper.scala 983:34]
  wire [35:0] dataWriteArb_dup_3_io_in_0_bits_addr; // @[DCacheWrapper.scala 983:34]
  wire  dataWriteArb_dup_3_io_in_1_valid; // @[DCacheWrapper.scala 983:34]
  wire [7:0] dataWriteArb_dup_3_io_in_1_bits_way_en; // @[DCacheWrapper.scala 983:34]
  wire [35:0] dataWriteArb_dup_3_io_in_1_bits_addr; // @[DCacheWrapper.scala 983:34]
  wire  dataWriteArb_dup_3_io_out_valid; // @[DCacheWrapper.scala 983:34]
  wire [7:0] dataWriteArb_dup_3_io_out_bits_way_en; // @[DCacheWrapper.scala 983:34]
  wire [35:0] dataWriteArb_dup_3_io_out_bits_addr; // @[DCacheWrapper.scala 983:34]
  wire  dataWriteArb_dup_4_io_in_0_valid; // @[DCacheWrapper.scala 983:34]
  wire [7:0] dataWriteArb_dup_4_io_in_0_bits_way_en; // @[DCacheWrapper.scala 983:34]
  wire [35:0] dataWriteArb_dup_4_io_in_0_bits_addr; // @[DCacheWrapper.scala 983:34]
  wire  dataWriteArb_dup_4_io_in_1_valid; // @[DCacheWrapper.scala 983:34]
  wire [7:0] dataWriteArb_dup_4_io_in_1_bits_way_en; // @[DCacheWrapper.scala 983:34]
  wire [35:0] dataWriteArb_dup_4_io_in_1_bits_addr; // @[DCacheWrapper.scala 983:34]
  wire  dataWriteArb_dup_4_io_out_valid; // @[DCacheWrapper.scala 983:34]
  wire [7:0] dataWriteArb_dup_4_io_out_bits_way_en; // @[DCacheWrapper.scala 983:34]
  wire [35:0] dataWriteArb_dup_4_io_out_bits_addr; // @[DCacheWrapper.scala 983:34]
  wire  dataWriteArb_dup_5_io_in_0_valid; // @[DCacheWrapper.scala 983:34]
  wire [7:0] dataWriteArb_dup_5_io_in_0_bits_way_en; // @[DCacheWrapper.scala 983:34]
  wire [35:0] dataWriteArb_dup_5_io_in_0_bits_addr; // @[DCacheWrapper.scala 983:34]
  wire  dataWriteArb_dup_5_io_in_1_valid; // @[DCacheWrapper.scala 983:34]
  wire [7:0] dataWriteArb_dup_5_io_in_1_bits_way_en; // @[DCacheWrapper.scala 983:34]
  wire [35:0] dataWriteArb_dup_5_io_in_1_bits_addr; // @[DCacheWrapper.scala 983:34]
  wire  dataWriteArb_dup_5_io_out_valid; // @[DCacheWrapper.scala 983:34]
  wire [7:0] dataWriteArb_dup_5_io_out_bits_way_en; // @[DCacheWrapper.scala 983:34]
  wire [35:0] dataWriteArb_dup_5_io_out_bits_addr; // @[DCacheWrapper.scala 983:34]
  wire  dataWriteArb_dup_6_io_in_0_valid; // @[DCacheWrapper.scala 983:34]
  wire [7:0] dataWriteArb_dup_6_io_in_0_bits_way_en; // @[DCacheWrapper.scala 983:34]
  wire [35:0] dataWriteArb_dup_6_io_in_0_bits_addr; // @[DCacheWrapper.scala 983:34]
  wire  dataWriteArb_dup_6_io_in_1_valid; // @[DCacheWrapper.scala 983:34]
  wire [7:0] dataWriteArb_dup_6_io_in_1_bits_way_en; // @[DCacheWrapper.scala 983:34]
  wire [35:0] dataWriteArb_dup_6_io_in_1_bits_addr; // @[DCacheWrapper.scala 983:34]
  wire  dataWriteArb_dup_6_io_out_valid; // @[DCacheWrapper.scala 983:34]
  wire [7:0] dataWriteArb_dup_6_io_out_bits_way_en; // @[DCacheWrapper.scala 983:34]
  wire [35:0] dataWriteArb_dup_6_io_out_bits_addr; // @[DCacheWrapper.scala 983:34]
  wire  dataWriteArb_dup_7_io_in_0_valid; // @[DCacheWrapper.scala 983:34]
  wire [7:0] dataWriteArb_dup_7_io_in_0_bits_way_en; // @[DCacheWrapper.scala 983:34]
  wire [35:0] dataWriteArb_dup_7_io_in_0_bits_addr; // @[DCacheWrapper.scala 983:34]
  wire  dataWriteArb_dup_7_io_in_1_valid; // @[DCacheWrapper.scala 983:34]
  wire [7:0] dataWriteArb_dup_7_io_in_1_bits_way_en; // @[DCacheWrapper.scala 983:34]
  wire [35:0] dataWriteArb_dup_7_io_in_1_bits_addr; // @[DCacheWrapper.scala 983:34]
  wire  dataWriteArb_dup_7_io_out_valid; // @[DCacheWrapper.scala 983:34]
  wire [7:0] dataWriteArb_dup_7_io_out_bits_way_en; // @[DCacheWrapper.scala 983:34]
  wire [35:0] dataWriteArb_dup_7_io_out_bits_addr; // @[DCacheWrapper.scala 983:34]
  wire  missReqArb_io_in_0_ready; // @[DCacheWrapper.scala 1142:26]
  wire  missReqArb_io_in_0_valid; // @[DCacheWrapper.scala 1142:26]
  wire [3:0] missReqArb_io_in_0_bits_source; // @[DCacheWrapper.scala 1142:26]
  wire [4:0] missReqArb_io_in_0_bits_cmd; // @[DCacheWrapper.scala 1142:26]
  wire [35:0] missReqArb_io_in_0_bits_addr; // @[DCacheWrapper.scala 1142:26]
  wire [38:0] missReqArb_io_in_0_bits_vaddr; // @[DCacheWrapper.scala 1142:26]
  wire [7:0] missReqArb_io_in_0_bits_way_en; // @[DCacheWrapper.scala 1142:26]
  wire [2:0] missReqArb_io_in_0_bits_word_idx; // @[DCacheWrapper.scala 1142:26]
  wire [63:0] missReqArb_io_in_0_bits_amo_data; // @[DCacheWrapper.scala 1142:26]
  wire [7:0] missReqArb_io_in_0_bits_amo_mask; // @[DCacheWrapper.scala 1142:26]
  wire [1:0] missReqArb_io_in_0_bits_req_coh_state; // @[DCacheWrapper.scala 1142:26]
  wire [1:0] missReqArb_io_in_0_bits_replace_coh_state; // @[DCacheWrapper.scala 1142:26]
  wire [23:0] missReqArb_io_in_0_bits_replace_tag; // @[DCacheWrapper.scala 1142:26]
  wire [3:0] missReqArb_io_in_0_bits_id; // @[DCacheWrapper.scala 1142:26]
  wire [511:0] missReqArb_io_in_0_bits_store_data; // @[DCacheWrapper.scala 1142:26]
  wire [63:0] missReqArb_io_in_0_bits_store_mask; // @[DCacheWrapper.scala 1142:26]
  wire  missReqArb_io_in_1_ready; // @[DCacheWrapper.scala 1142:26]
  wire  missReqArb_io_in_1_valid; // @[DCacheWrapper.scala 1142:26]
  wire [3:0] missReqArb_io_in_1_bits_source; // @[DCacheWrapper.scala 1142:26]
  wire [4:0] missReqArb_io_in_1_bits_cmd; // @[DCacheWrapper.scala 1142:26]
  wire [35:0] missReqArb_io_in_1_bits_addr; // @[DCacheWrapper.scala 1142:26]
  wire [38:0] missReqArb_io_in_1_bits_vaddr; // @[DCacheWrapper.scala 1142:26]
  wire [7:0] missReqArb_io_in_1_bits_way_en; // @[DCacheWrapper.scala 1142:26]
  wire [1:0] missReqArb_io_in_1_bits_req_coh_state; // @[DCacheWrapper.scala 1142:26]
  wire [1:0] missReqArb_io_in_1_bits_replace_coh_state; // @[DCacheWrapper.scala 1142:26]
  wire [23:0] missReqArb_io_in_1_bits_replace_tag; // @[DCacheWrapper.scala 1142:26]
  wire  missReqArb_io_in_1_bits_cancel; // @[DCacheWrapper.scala 1142:26]
  wire  missReqArb_io_in_2_ready; // @[DCacheWrapper.scala 1142:26]
  wire  missReqArb_io_in_2_valid; // @[DCacheWrapper.scala 1142:26]
  wire [3:0] missReqArb_io_in_2_bits_source; // @[DCacheWrapper.scala 1142:26]
  wire [4:0] missReqArb_io_in_2_bits_cmd; // @[DCacheWrapper.scala 1142:26]
  wire [35:0] missReqArb_io_in_2_bits_addr; // @[DCacheWrapper.scala 1142:26]
  wire [38:0] missReqArb_io_in_2_bits_vaddr; // @[DCacheWrapper.scala 1142:26]
  wire [7:0] missReqArb_io_in_2_bits_way_en; // @[DCacheWrapper.scala 1142:26]
  wire [1:0] missReqArb_io_in_2_bits_req_coh_state; // @[DCacheWrapper.scala 1142:26]
  wire [1:0] missReqArb_io_in_2_bits_replace_coh_state; // @[DCacheWrapper.scala 1142:26]
  wire [23:0] missReqArb_io_in_2_bits_replace_tag; // @[DCacheWrapper.scala 1142:26]
  wire  missReqArb_io_in_2_bits_cancel; // @[DCacheWrapper.scala 1142:26]
  wire  missReqArb_io_out_ready; // @[DCacheWrapper.scala 1142:26]
  wire  missReqArb_io_out_valid; // @[DCacheWrapper.scala 1142:26]
  wire [3:0] missReqArb_io_out_bits_source; // @[DCacheWrapper.scala 1142:26]
  wire [4:0] missReqArb_io_out_bits_cmd; // @[DCacheWrapper.scala 1142:26]
  wire [35:0] missReqArb_io_out_bits_addr; // @[DCacheWrapper.scala 1142:26]
  wire [38:0] missReqArb_io_out_bits_vaddr; // @[DCacheWrapper.scala 1142:26]
  wire [7:0] missReqArb_io_out_bits_way_en; // @[DCacheWrapper.scala 1142:26]
  wire [2:0] missReqArb_io_out_bits_word_idx; // @[DCacheWrapper.scala 1142:26]
  wire [63:0] missReqArb_io_out_bits_amo_data; // @[DCacheWrapper.scala 1142:26]
  wire [7:0] missReqArb_io_out_bits_amo_mask; // @[DCacheWrapper.scala 1142:26]
  wire [1:0] missReqArb_io_out_bits_req_coh_state; // @[DCacheWrapper.scala 1142:26]
  wire [1:0] missReqArb_io_out_bits_replace_coh_state; // @[DCacheWrapper.scala 1142:26]
  wire [23:0] missReqArb_io_out_bits_replace_tag; // @[DCacheWrapper.scala 1142:26]
  wire [3:0] missReqArb_io_out_bits_id; // @[DCacheWrapper.scala 1142:26]
  wire  missReqArb_io_out_bits_cancel; // @[DCacheWrapper.scala 1142:26]
  wire [511:0] missReqArb_io_out_bits_store_data; // @[DCacheWrapper.scala 1142:26]
  wire [63:0] missReqArb_io_out_bits_store_mask; // @[DCacheWrapper.scala 1142:26]
  wire  main_pipe_atomic_req_arb_io_in_0_ready; // @[DCacheWrapper.scala 262:21]
  wire  main_pipe_atomic_req_arb_io_in_0_valid; // @[DCacheWrapper.scala 262:21]
  wire  main_pipe_atomic_req_arb_io_in_0_bits_miss; // @[DCacheWrapper.scala 262:21]
  wire [1:0] main_pipe_atomic_req_arb_io_in_0_bits_miss_id; // @[DCacheWrapper.scala 262:21]
  wire [1:0] main_pipe_atomic_req_arb_io_in_0_bits_miss_param; // @[DCacheWrapper.scala 262:21]
  wire [7:0] main_pipe_atomic_req_arb_io_in_0_bits_miss_way_en; // @[DCacheWrapper.scala 262:21]
  wire [3:0] main_pipe_atomic_req_arb_io_in_0_bits_source; // @[DCacheWrapper.scala 262:21]
  wire [4:0] main_pipe_atomic_req_arb_io_in_0_bits_cmd; // @[DCacheWrapper.scala 262:21]
  wire [38:0] main_pipe_atomic_req_arb_io_in_0_bits_vaddr; // @[DCacheWrapper.scala 262:21]
  wire [35:0] main_pipe_atomic_req_arb_io_in_0_bits_addr; // @[DCacheWrapper.scala 262:21]
  wire [511:0] main_pipe_atomic_req_arb_io_in_0_bits_store_data; // @[DCacheWrapper.scala 262:21]
  wire [63:0] main_pipe_atomic_req_arb_io_in_0_bits_store_mask; // @[DCacheWrapper.scala 262:21]
  wire [2:0] main_pipe_atomic_req_arb_io_in_0_bits_word_idx; // @[DCacheWrapper.scala 262:21]
  wire [63:0] main_pipe_atomic_req_arb_io_in_0_bits_amo_data; // @[DCacheWrapper.scala 262:21]
  wire [7:0] main_pipe_atomic_req_arb_io_in_0_bits_amo_mask; // @[DCacheWrapper.scala 262:21]
  wire  main_pipe_atomic_req_arb_io_in_0_bits_error; // @[DCacheWrapper.scala 262:21]
  wire [3:0] main_pipe_atomic_req_arb_io_in_0_bits_id; // @[DCacheWrapper.scala 262:21]
  wire  main_pipe_atomic_req_arb_io_in_1_ready; // @[DCacheWrapper.scala 262:21]
  wire  main_pipe_atomic_req_arb_io_in_1_valid; // @[DCacheWrapper.scala 262:21]
  wire [4:0] main_pipe_atomic_req_arb_io_in_1_bits_cmd; // @[DCacheWrapper.scala 262:21]
  wire [38:0] main_pipe_atomic_req_arb_io_in_1_bits_vaddr; // @[DCacheWrapper.scala 262:21]
  wire [35:0] main_pipe_atomic_req_arb_io_in_1_bits_addr; // @[DCacheWrapper.scala 262:21]
  wire [2:0] main_pipe_atomic_req_arb_io_in_1_bits_word_idx; // @[DCacheWrapper.scala 262:21]
  wire [63:0] main_pipe_atomic_req_arb_io_in_1_bits_amo_data; // @[DCacheWrapper.scala 262:21]
  wire [7:0] main_pipe_atomic_req_arb_io_in_1_bits_amo_mask; // @[DCacheWrapper.scala 262:21]
  wire  main_pipe_atomic_req_arb_io_out_ready; // @[DCacheWrapper.scala 262:21]
  wire  main_pipe_atomic_req_arb_io_out_valid; // @[DCacheWrapper.scala 262:21]
  wire  main_pipe_atomic_req_arb_io_out_bits_miss; // @[DCacheWrapper.scala 262:21]
  wire [1:0] main_pipe_atomic_req_arb_io_out_bits_miss_id; // @[DCacheWrapper.scala 262:21]
  wire [1:0] main_pipe_atomic_req_arb_io_out_bits_miss_param; // @[DCacheWrapper.scala 262:21]
  wire [7:0] main_pipe_atomic_req_arb_io_out_bits_miss_way_en; // @[DCacheWrapper.scala 262:21]
  wire [3:0] main_pipe_atomic_req_arb_io_out_bits_source; // @[DCacheWrapper.scala 262:21]
  wire [4:0] main_pipe_atomic_req_arb_io_out_bits_cmd; // @[DCacheWrapper.scala 262:21]
  wire [38:0] main_pipe_atomic_req_arb_io_out_bits_vaddr; // @[DCacheWrapper.scala 262:21]
  wire [35:0] main_pipe_atomic_req_arb_io_out_bits_addr; // @[DCacheWrapper.scala 262:21]
  wire [511:0] main_pipe_atomic_req_arb_io_out_bits_store_data; // @[DCacheWrapper.scala 262:21]
  wire [63:0] main_pipe_atomic_req_arb_io_out_bits_store_mask; // @[DCacheWrapper.scala 262:21]
  wire [2:0] main_pipe_atomic_req_arb_io_out_bits_word_idx; // @[DCacheWrapper.scala 262:21]
  wire [63:0] main_pipe_atomic_req_arb_io_out_bits_amo_data; // @[DCacheWrapper.scala 262:21]
  wire [7:0] main_pipe_atomic_req_arb_io_out_bits_amo_mask; // @[DCacheWrapper.scala 262:21]
  wire  main_pipe_atomic_req_arb_io_out_bits_error; // @[DCacheWrapper.scala 262:21]
  wire [3:0] main_pipe_atomic_req_arb_io_out_bits_id; // @[DCacheWrapper.scala 262:21]
  wire  pipelineReg_clock; // @[MemCommon.scala 400:29]
  wire  pipelineReg_reset; // @[MemCommon.scala 400:29]
  wire  pipelineReg_io_in_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_io_in_valid; // @[MemCommon.scala 400:29]
  wire  pipelineReg_io_in_bits_miss; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_io_in_bits_miss_id; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_io_in_bits_miss_param; // @[MemCommon.scala 400:29]
  wire  pipelineReg_io_in_bits_miss_dirty; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_io_in_bits_miss_way_en; // @[MemCommon.scala 400:29]
  wire  pipelineReg_io_in_bits_probe; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_io_in_bits_probe_param; // @[MemCommon.scala 400:29]
  wire  pipelineReg_io_in_bits_probe_need_data; // @[MemCommon.scala 400:29]
  wire [3:0] pipelineReg_io_in_bits_source; // @[MemCommon.scala 400:29]
  wire [4:0] pipelineReg_io_in_bits_cmd; // @[MemCommon.scala 400:29]
  wire [38:0] pipelineReg_io_in_bits_vaddr; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_io_in_bits_addr; // @[MemCommon.scala 400:29]
  wire [511:0] pipelineReg_io_in_bits_store_data; // @[MemCommon.scala 400:29]
  wire [63:0] pipelineReg_io_in_bits_store_mask; // @[MemCommon.scala 400:29]
  wire [2:0] pipelineReg_io_in_bits_word_idx; // @[MemCommon.scala 400:29]
  wire [63:0] pipelineReg_io_in_bits_amo_data; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_io_in_bits_amo_mask; // @[MemCommon.scala 400:29]
  wire  pipelineReg_io_in_bits_error; // @[MemCommon.scala 400:29]
  wire  pipelineReg_io_in_bits_replace; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_io_in_bits_replace_way_en; // @[MemCommon.scala 400:29]
  wire [3:0] pipelineReg_io_in_bits_id; // @[MemCommon.scala 400:29]
  wire  pipelineReg_io_out_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_io_out_valid; // @[MemCommon.scala 400:29]
  wire  pipelineReg_io_out_bits_miss; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_io_out_bits_miss_id; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_io_out_bits_miss_param; // @[MemCommon.scala 400:29]
  wire  pipelineReg_io_out_bits_miss_dirty; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_io_out_bits_miss_way_en; // @[MemCommon.scala 400:29]
  wire  pipelineReg_io_out_bits_probe; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_io_out_bits_probe_param; // @[MemCommon.scala 400:29]
  wire  pipelineReg_io_out_bits_probe_need_data; // @[MemCommon.scala 400:29]
  wire [3:0] pipelineReg_io_out_bits_source; // @[MemCommon.scala 400:29]
  wire [4:0] pipelineReg_io_out_bits_cmd; // @[MemCommon.scala 400:29]
  wire [38:0] pipelineReg_io_out_bits_vaddr; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_io_out_bits_addr; // @[MemCommon.scala 400:29]
  wire [511:0] pipelineReg_io_out_bits_store_data; // @[MemCommon.scala 400:29]
  wire [63:0] pipelineReg_io_out_bits_store_mask; // @[MemCommon.scala 400:29]
  wire [2:0] pipelineReg_io_out_bits_word_idx; // @[MemCommon.scala 400:29]
  wire [63:0] pipelineReg_io_out_bits_amo_data; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_io_out_bits_amo_mask; // @[MemCommon.scala 400:29]
  wire  pipelineReg_io_out_bits_error; // @[MemCommon.scala 400:29]
  wire  pipelineReg_io_out_bits_replace; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_io_out_bits_replace_way_en; // @[MemCommon.scala 400:29]
  wire [3:0] pipelineReg_io_out_bits_id; // @[MemCommon.scala 400:29]
  wire  cacheOpDecoder_clock; // @[DCacheWrapper.scala 1402:30]
  wire  cacheOpDecoder_reset; // @[DCacheWrapper.scala 1402:30]
  wire  cacheOpDecoder_io_csr_distribute_csr_wvalid; // @[DCacheWrapper.scala 1402:30]
  wire [11:0] cacheOpDecoder_io_csr_distribute_csr_waddr; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_csr_distribute_csr_wdata; // @[DCacheWrapper.scala 1402:30]
  wire  cacheOpDecoder_io_csr_update_wvalid; // @[DCacheWrapper.scala 1402:30]
  wire [11:0] cacheOpDecoder_io_csr_update_waddr; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_csr_update_wdata; // @[DCacheWrapper.scala 1402:30]
  wire  cacheOpDecoder_io_cache_req_valid; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_cache_req_bits_wayNum; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_cache_req_bits_index; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_cache_req_bits_write_tag_low; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_cache_req_bits_write_tag_ecc; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_cache_req_bits_write_data_vec_0; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_cache_req_bits_write_data_vec_1; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_cache_req_bits_write_data_vec_2; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_cache_req_bits_write_data_vec_3; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_cache_req_bits_write_data_vec_4; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_cache_req_bits_write_data_vec_5; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_cache_req_bits_write_data_vec_6; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_cache_req_bits_write_data_vec_7; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_cache_req_bits_write_data_ecc; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_cache_req_bits_bank_num; // @[DCacheWrapper.scala 1402:30]
  wire  cacheOpDecoder_io_cache_resp_valid; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_cache_resp_bits_read_tag_low; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_cache_resp_bits_read_tag_ecc; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_cache_resp_bits_read_data_vec_0; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_cache_resp_bits_read_data_vec_1; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_cache_resp_bits_read_data_vec_2; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_cache_resp_bits_read_data_vec_3; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_cache_resp_bits_read_data_vec_4; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_cache_resp_bits_read_data_vec_5; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_cache_resp_bits_read_data_vec_6; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_cache_resp_bits_read_data_vec_7; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_cache_resp_bits_read_data_ecc; // @[DCacheWrapper.scala 1402:30]
  wire  cacheOpDecoder_io_cache_req_dup_0_valid; // @[DCacheWrapper.scala 1402:30]
  wire  cacheOpDecoder_io_cache_req_dup_1_valid; // @[DCacheWrapper.scala 1402:30]
  wire  cacheOpDecoder_io_cache_req_dup_2_valid; // @[DCacheWrapper.scala 1402:30]
  wire  cacheOpDecoder_io_cache_req_dup_3_valid; // @[DCacheWrapper.scala 1402:30]
  wire  cacheOpDecoder_io_cache_req_dup_4_valid; // @[DCacheWrapper.scala 1402:30]
  wire  cacheOpDecoder_io_cache_req_dup_5_valid; // @[DCacheWrapper.scala 1402:30]
  wire  cacheOpDecoder_io_cache_req_dup_6_valid; // @[DCacheWrapper.scala 1402:30]
  wire  cacheOpDecoder_io_cache_req_dup_7_valid; // @[DCacheWrapper.scala 1402:30]
  wire  cacheOpDecoder_io_cache_req_dup_8_valid; // @[DCacheWrapper.scala 1402:30]
  wire  cacheOpDecoder_io_cache_req_dup_9_valid; // @[DCacheWrapper.scala 1402:30]
  wire  cacheOpDecoder_io_cache_req_dup_10_valid; // @[DCacheWrapper.scala 1402:30]
  wire  cacheOpDecoder_io_cache_req_dup_11_valid; // @[DCacheWrapper.scala 1402:30]
  wire  cacheOpDecoder_io_cache_req_dup_12_valid; // @[DCacheWrapper.scala 1402:30]
  wire  cacheOpDecoder_io_cache_req_dup_13_valid; // @[DCacheWrapper.scala 1402:30]
  wire  cacheOpDecoder_io_cache_req_dup_14_valid; // @[DCacheWrapper.scala 1402:30]
  wire  cacheOpDecoder_io_cache_req_dup_15_valid; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_0; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_1; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_2; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_3; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_4; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_5; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_6; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_7; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_8; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_9; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_10; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_11; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_12; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_13; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_14; // @[DCacheWrapper.scala 1402:30]
  wire [63:0] cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_15; // @[DCacheWrapper.scala 1402:30]
  wire  cacheOpDecoder_io_error_source_tag; // @[DCacheWrapper.scala 1402:30]
  wire  cacheOpDecoder_io_error_source_data; // @[DCacheWrapper.scala 1402:30]
  wire  cacheOpDecoder_io_error_source_l2; // @[DCacheWrapper.scala 1402:30]
  wire  cacheOpDecoder_io_error_opType_fetch; // @[DCacheWrapper.scala 1402:30]
  wire  cacheOpDecoder_io_error_opType_load; // @[DCacheWrapper.scala 1402:30]
  wire  cacheOpDecoder_io_error_opType_store; // @[DCacheWrapper.scala 1402:30]
  wire  cacheOpDecoder_io_error_opType_probe; // @[DCacheWrapper.scala 1402:30]
  wire  cacheOpDecoder_io_error_opType_release; // @[DCacheWrapper.scala 1402:30]
  wire  cacheOpDecoder_io_error_opType_atom; // @[DCacheWrapper.scala 1402:30]
  wire [35:0] cacheOpDecoder_io_error_paddr; // @[DCacheWrapper.scala 1402:30]
  wire  cacheOpDecoder_io_error_report_to_beu; // @[DCacheWrapper.scala 1402:30]
  wire  cacheOpDecoder_io_error_valid; // @[DCacheWrapper.scala 1402:30]
  reg  missQueue_io_l2_pf_store_only_REG; // @[DCacheWrapper.scala 835:43]
  reg  io_error_REG; // @[DCacheWrapper.scala 840:52]
  reg  io_error_REG_1_source_tag; // @[DCacheWrapper.scala 840:72]
  reg  io_error_REG_1_source_data; // @[DCacheWrapper.scala 840:72]
  reg  io_error_REG_1_source_l2; // @[DCacheWrapper.scala 840:72]
  reg [35:0] io_error_REG_1_paddr; // @[DCacheWrapper.scala 840:72]
  reg  io_error_REG_1_report_to_beu; // @[DCacheWrapper.scala 840:72]
  reg  io_error_REG_1_valid; // @[DCacheWrapper.scala 840:72]
  reg  io_error_REG_2; // @[DCacheWrapper.scala 840:52]
  reg  io_error_REG_3_source_tag; // @[DCacheWrapper.scala 840:72]
  reg  io_error_REG_3_source_data; // @[DCacheWrapper.scala 840:72]
  reg  io_error_REG_3_source_l2; // @[DCacheWrapper.scala 840:72]
  reg [35:0] io_error_REG_3_paddr; // @[DCacheWrapper.scala 840:72]
  reg  io_error_REG_3_report_to_beu; // @[DCacheWrapper.scala 840:72]
  reg  io_error_REG_3_valid; // @[DCacheWrapper.scala 840:72]
  reg  io_error_REG_4; // @[DCacheWrapper.scala 840:52]
  reg  io_error_REG_5_source_tag; // @[DCacheWrapper.scala 840:72]
  reg  io_error_REG_5_source_data; // @[DCacheWrapper.scala 840:72]
  reg  io_error_REG_5_source_l2; // @[DCacheWrapper.scala 840:72]
  reg  io_error_REG_5_opType_store; // @[DCacheWrapper.scala 840:72]
  reg  io_error_REG_5_opType_probe; // @[DCacheWrapper.scala 840:72]
  reg  io_error_REG_5_opType_release; // @[DCacheWrapper.scala 840:72]
  reg  io_error_REG_5_opType_atom; // @[DCacheWrapper.scala 840:72]
  reg [35:0] io_error_REG_5_paddr; // @[DCacheWrapper.scala 840:72]
  reg  io_error_REG_5_report_to_beu; // @[DCacheWrapper.scala 840:72]
  reg  io_error_REG_5_valid; // @[DCacheWrapper.scala 840:72]
  wire [35:0] _io_error_T_10 = io_error_REG ? io_error_REG_1_paddr : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _io_error_T_11 = io_error_REG_2 ? io_error_REG_3_paddr : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _io_error_T_12 = io_error_REG_4 ? io_error_REG_5_paddr : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _io_error_T_13 = _io_error_T_10 | _io_error_T_11; // @[Mux.scala 27:73]
  reg  io_error_REG_6_source_tag; // @[DCacheWrapper.scala 840:22]
  reg  io_error_REG_6_source_data; // @[DCacheWrapper.scala 840:22]
  reg  io_error_REG_6_source_l2; // @[DCacheWrapper.scala 840:22]
  reg  io_error_REG_6_opType_load; // @[DCacheWrapper.scala 840:22]
  reg  io_error_REG_6_opType_store; // @[DCacheWrapper.scala 840:22]
  reg  io_error_REG_6_opType_probe; // @[DCacheWrapper.scala 840:22]
  reg  io_error_REG_6_opType_release; // @[DCacheWrapper.scala 840:22]
  reg  io_error_REG_6_opType_atom; // @[DCacheWrapper.scala 840:22]
  reg [35:0] io_error_REG_6_paddr; // @[DCacheWrapper.scala 840:22]
  reg  io_error_REG_6_report_to_beu; // @[DCacheWrapper.scala 840:22]
  reg  io_error_REG_6_valid; // @[DCacheWrapper.scala 840:22]
  wire  tag_write_intend = missQueue_io_refill_pipe_req_valid | mainPipe_io_tag_write_intend; // @[DCacheWrapper.scala 934:61]
  wire  _T_102 = auto_client_out_d_bits_opcode == 3'h4; // @[DCacheWrapper.scala 1302:27]
  wire  _T_103 = auto_client_out_d_bits_opcode == 3'h5; // @[DCacheWrapper.scala 1302:69]
  wire  _T_105 = auto_client_out_d_bits_opcode == 3'h6; // @[DCacheWrapper.scala 1304:34]
  wire  bus_d_ready = auto_client_out_d_bits_opcode == 3'h4 | auto_client_out_d_bits_opcode == 3'h5 ?
    missQueue_io_mem_grant_ready : _T_105; // @[DCacheWrapper.scala 1302:95 1303:28]
  wire  _done_T = bus_d_ready & auto_client_out_d_valid; // @[Decoupled.scala 50:35]
  wire [12:0] _done_beats1_decode_T_1 = 13'h3f << auto_client_out_d_bits_size; // @[package.scala 234:77]
  wire [5:0] _done_beats1_decode_T_3 = ~_done_beats1_decode_T_1[5:0]; // @[package.scala 234:46]
  wire  done_beats1_decode = _done_beats1_decode_T_3[5]; // @[Edges.scala 219:59]
  wire  done_beats1_opdata = auto_client_out_d_bits_opcode[0]; // @[Edges.scala 105:36]
  wire  done_beats1 = done_beats1_opdata & done_beats1_decode; // @[Edges.scala 220:14]
  reg  done_counter; // @[Edges.scala 228:27]
  wire  done_counter1 = done_counter - 1'h1; // @[Edges.scala 229:28]
  wire  done_first = ~done_counter; // @[Edges.scala 230:25]
  wire  done_last = done_counter | ~done_beats1; // @[Edges.scala 231:37]
  reg  done_counter_1; // @[Edges.scala 228:27]
  wire  done_counter1_1 = done_counter_1 - 1'h1; // @[Edges.scala 229:28]
  wire  done_first_1 = ~done_counter_1; // @[Edges.scala 230:25]
  wire  done_last_1 = done_counter_1 | ~done_beats1; // @[Edges.scala 231:37]
  reg  io_lsu_atomics_resp_REG_valid; // @[DCacheWrapper.scala 1128:33]
  reg [63:0] io_lsu_atomics_resp_REG_bits_data; // @[DCacheWrapper.scala 1128:33]
  reg  io_lsu_atomics_resp_REG_bits_miss; // @[DCacheWrapper.scala 1128:33]
  reg  io_lsu_atomics_resp_REG_bits_replay; // @[DCacheWrapper.scala 1128:33]
  reg  io_lsu_atomics_resp_REG_bits_error; // @[DCacheWrapper.scala 1128:33]
  reg [3:0] io_lsu_atomics_resp_REG_bits_id; // @[DCacheWrapper.scala 1128:33]
  reg  missQueue_io_main_pipe_resp_REG_valid; // @[DCacheWrapper.scala 1186:41]
  reg [1:0] missQueue_io_main_pipe_resp_REG_bits_miss_id; // @[DCacheWrapper.scala 1186:41]
  reg  missQueue_io_main_pipe_resp_REG_bits_ack_miss_queue; // @[DCacheWrapper.scala 1186:41]
  wire  _probeQueue_io_mem_probe_valid_T = ~missQueue_io_probe_block; // @[DCacheWrapper.scala 1395:37]
  wire  _mainPipe_io_probe_req_valid_T = ~missQueue_io_refill_pipe_req_valid; // @[DCacheWrapper.scala 1395:37]
  wire  _mainPipe_io_store_req_valid_T = ~refillPipe_io_req_valid; // @[DCacheWrapper.scala 1395:37]
  reg  io_lsu_store_replay_resp_REG_valid; // @[DCacheWrapper.scala 1202:38]
  reg [3:0] io_lsu_store_replay_resp_REG_bits_id; // @[DCacheWrapper.scala 1202:38]
  wire  _mainPipe_io_invalid_resv_set_T = wb_io_req_ready & wb_io_req_valid; // @[Decoupled.scala 50:35]
  reg  mainPipe_io_invalid_resv_set_REG; // @[DCacheWrapper.scala 1211:42]
  wire [13:0] _refillShouldBeBlocked_T_1 = {missQueue_io_refill_pipe_req_bits_alias,
    missQueue_io_refill_pipe_req_bits_addr[11:0]}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_T_8 = mainPipe_io_status_s2_bits_set == _refillShouldBeBlocked_T_1[11:6]; // @[DCacheWrapper.scala 1224:20]
  wire  _refillShouldBeBlocked_T_9 = mainPipe_io_status_s2_valid & _refillShouldBeBlocked_T_8; // @[DCacheWrapper.scala 1223:15]
  wire  _refillShouldBeBlocked_T_10 = mainPipe_io_status_s2_bits_way_en == missQueue_io_refill_pipe_req_bits_way_en; // @[DCacheWrapper.scala 1225:23]
  wire  _refillShouldBeBlocked_T_11 = _refillShouldBeBlocked_T_9 & _refillShouldBeBlocked_T_10; // @[DCacheWrapper.scala 1224:62]
  wire  _refillShouldBeBlocked_T_15 = mainPipe_io_status_s3_bits_set == _refillShouldBeBlocked_T_1[11:6]; // @[DCacheWrapper.scala 1224:20]
  wire  _refillShouldBeBlocked_T_16 = mainPipe_io_status_s3_valid & _refillShouldBeBlocked_T_15; // @[DCacheWrapper.scala 1223:15]
  wire  _refillShouldBeBlocked_T_17 = mainPipe_io_status_s3_bits_way_en == missQueue_io_refill_pipe_req_bits_way_en; // @[DCacheWrapper.scala 1225:23]
  wire  _refillShouldBeBlocked_T_18 = _refillShouldBeBlocked_T_16 & _refillShouldBeBlocked_T_17; // @[DCacheWrapper.scala 1224:62]
  wire [1:0] _refillShouldBeBlocked_T_19 = {_refillShouldBeBlocked_T_11,_refillShouldBeBlocked_T_18}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_T_20 = |_refillShouldBeBlocked_T_19; // @[DCacheWrapper.scala 1226:8]
  wire  refillShouldBeBlocked = mainPipe_io_status_s1_valid & mainPipe_io_status_s1_bits_set ==
    _refillShouldBeBlocked_T_1[11:6] | _refillShouldBeBlocked_T_20; // @[DCacheWrapper.scala 1221:117]
  wire [13:0] _refillShouldBeBlocked_dup_T_1 = {missQueue_io_refill_pipe_req_dup_0_bits_alias,
    missQueue_io_refill_pipe_req_dup_0_bits_addr[11:0]}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_8 = mainPipe_io_status_dup_0_s2_bits_set == _refillShouldBeBlocked_dup_T_1[11:6]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_9 = mainPipe_io_status_dup_0_s2_valid & _refillShouldBeBlocked_dup_T_8; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_10 = mainPipe_io_status_dup_0_s2_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_0_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_11 = _refillShouldBeBlocked_dup_T_9 & _refillShouldBeBlocked_dup_T_10; // @[DCacheWrapper.scala 1235:50]
  wire  _refillShouldBeBlocked_dup_T_15 = mainPipe_io_status_dup_0_s3_bits_set == _refillShouldBeBlocked_dup_T_1[11:6]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_16 = mainPipe_io_status_dup_0_s3_valid & _refillShouldBeBlocked_dup_T_15; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_17 = mainPipe_io_status_dup_0_s3_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_0_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_18 = _refillShouldBeBlocked_dup_T_16 & _refillShouldBeBlocked_dup_T_17; // @[DCacheWrapper.scala 1235:50]
  wire [1:0] _refillShouldBeBlocked_dup_T_19 = {_refillShouldBeBlocked_dup_T_11,_refillShouldBeBlocked_dup_T_18}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_20 = |_refillShouldBeBlocked_dup_T_19; // @[DCacheWrapper.scala 1237:8]
  wire [13:0] _refillShouldBeBlocked_dup_T_23 = {missQueue_io_refill_pipe_req_dup_1_bits_alias,
    missQueue_io_refill_pipe_req_dup_1_bits_addr[11:0]}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_30 = mainPipe_io_status_dup_1_s2_bits_set == _refillShouldBeBlocked_dup_T_23[11:6]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_31 = mainPipe_io_status_dup_1_s2_valid & _refillShouldBeBlocked_dup_T_30; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_32 = mainPipe_io_status_dup_1_s2_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_1_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_33 = _refillShouldBeBlocked_dup_T_31 & _refillShouldBeBlocked_dup_T_32; // @[DCacheWrapper.scala 1235:50]
  wire  _refillShouldBeBlocked_dup_T_37 = mainPipe_io_status_dup_1_s3_bits_set == _refillShouldBeBlocked_dup_T_23[11:6]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_38 = mainPipe_io_status_dup_1_s3_valid & _refillShouldBeBlocked_dup_T_37; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_39 = mainPipe_io_status_dup_1_s3_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_1_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_40 = _refillShouldBeBlocked_dup_T_38 & _refillShouldBeBlocked_dup_T_39; // @[DCacheWrapper.scala 1235:50]
  wire [1:0] _refillShouldBeBlocked_dup_T_41 = {_refillShouldBeBlocked_dup_T_33,_refillShouldBeBlocked_dup_T_40}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_42 = |_refillShouldBeBlocked_dup_T_41; // @[DCacheWrapper.scala 1237:8]
  wire [13:0] _refillShouldBeBlocked_dup_T_45 = {missQueue_io_refill_pipe_req_dup_2_bits_alias,
    missQueue_io_refill_pipe_req_dup_2_bits_addr[11:0]}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_52 = mainPipe_io_status_dup_2_s2_bits_set == _refillShouldBeBlocked_dup_T_45[11:6]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_53 = mainPipe_io_status_dup_2_s2_valid & _refillShouldBeBlocked_dup_T_52; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_54 = mainPipe_io_status_dup_2_s2_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_2_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_55 = _refillShouldBeBlocked_dup_T_53 & _refillShouldBeBlocked_dup_T_54; // @[DCacheWrapper.scala 1235:50]
  wire  _refillShouldBeBlocked_dup_T_59 = mainPipe_io_status_dup_2_s3_bits_set == _refillShouldBeBlocked_dup_T_45[11:6]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_60 = mainPipe_io_status_dup_2_s3_valid & _refillShouldBeBlocked_dup_T_59; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_61 = mainPipe_io_status_dup_2_s3_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_2_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_62 = _refillShouldBeBlocked_dup_T_60 & _refillShouldBeBlocked_dup_T_61; // @[DCacheWrapper.scala 1235:50]
  wire [1:0] _refillShouldBeBlocked_dup_T_63 = {_refillShouldBeBlocked_dup_T_55,_refillShouldBeBlocked_dup_T_62}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_64 = |_refillShouldBeBlocked_dup_T_63; // @[DCacheWrapper.scala 1237:8]
  wire [13:0] _refillShouldBeBlocked_dup_T_67 = {missQueue_io_refill_pipe_req_dup_3_bits_alias,
    missQueue_io_refill_pipe_req_dup_3_bits_addr[11:0]}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_74 = mainPipe_io_status_dup_3_s2_bits_set == _refillShouldBeBlocked_dup_T_67[11:6]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_75 = mainPipe_io_status_dup_3_s2_valid & _refillShouldBeBlocked_dup_T_74; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_76 = mainPipe_io_status_dup_3_s2_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_3_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_77 = _refillShouldBeBlocked_dup_T_75 & _refillShouldBeBlocked_dup_T_76; // @[DCacheWrapper.scala 1235:50]
  wire  _refillShouldBeBlocked_dup_T_81 = mainPipe_io_status_dup_3_s3_bits_set == _refillShouldBeBlocked_dup_T_67[11:6]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_82 = mainPipe_io_status_dup_3_s3_valid & _refillShouldBeBlocked_dup_T_81; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_83 = mainPipe_io_status_dup_3_s3_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_3_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_84 = _refillShouldBeBlocked_dup_T_82 & _refillShouldBeBlocked_dup_T_83; // @[DCacheWrapper.scala 1235:50]
  wire [1:0] _refillShouldBeBlocked_dup_T_85 = {_refillShouldBeBlocked_dup_T_77,_refillShouldBeBlocked_dup_T_84}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_86 = |_refillShouldBeBlocked_dup_T_85; // @[DCacheWrapper.scala 1237:8]
  wire [13:0] _refillShouldBeBlocked_dup_T_89 = {missQueue_io_refill_pipe_req_dup_4_bits_alias,
    missQueue_io_refill_pipe_req_dup_4_bits_addr[11:0]}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_96 = mainPipe_io_status_dup_4_s2_bits_set == _refillShouldBeBlocked_dup_T_89[11:6]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_97 = mainPipe_io_status_dup_4_s2_valid & _refillShouldBeBlocked_dup_T_96; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_98 = mainPipe_io_status_dup_4_s2_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_4_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_99 = _refillShouldBeBlocked_dup_T_97 & _refillShouldBeBlocked_dup_T_98; // @[DCacheWrapper.scala 1235:50]
  wire  _refillShouldBeBlocked_dup_T_103 = mainPipe_io_status_dup_4_s3_bits_set == _refillShouldBeBlocked_dup_T_89[11:6]
    ; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_104 = mainPipe_io_status_dup_4_s3_valid & _refillShouldBeBlocked_dup_T_103; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_105 = mainPipe_io_status_dup_4_s3_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_4_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_106 = _refillShouldBeBlocked_dup_T_104 & _refillShouldBeBlocked_dup_T_105; // @[DCacheWrapper.scala 1235:50]
  wire [1:0] _refillShouldBeBlocked_dup_T_107 = {_refillShouldBeBlocked_dup_T_99,_refillShouldBeBlocked_dup_T_106}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_108 = |_refillShouldBeBlocked_dup_T_107; // @[DCacheWrapper.scala 1237:8]
  wire [13:0] _refillShouldBeBlocked_dup_T_111 = {missQueue_io_refill_pipe_req_dup_5_bits_alias,
    missQueue_io_refill_pipe_req_dup_5_bits_addr[11:0]}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_118 = mainPipe_io_status_dup_5_s2_bits_set == _refillShouldBeBlocked_dup_T_111[11:6
    ]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_119 = mainPipe_io_status_dup_5_s2_valid & _refillShouldBeBlocked_dup_T_118; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_120 = mainPipe_io_status_dup_5_s2_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_5_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_121 = _refillShouldBeBlocked_dup_T_119 & _refillShouldBeBlocked_dup_T_120; // @[DCacheWrapper.scala 1235:50]
  wire  _refillShouldBeBlocked_dup_T_125 = mainPipe_io_status_dup_5_s3_bits_set == _refillShouldBeBlocked_dup_T_111[11:6
    ]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_126 = mainPipe_io_status_dup_5_s3_valid & _refillShouldBeBlocked_dup_T_125; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_127 = mainPipe_io_status_dup_5_s3_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_5_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_128 = _refillShouldBeBlocked_dup_T_126 & _refillShouldBeBlocked_dup_T_127; // @[DCacheWrapper.scala 1235:50]
  wire [1:0] _refillShouldBeBlocked_dup_T_129 = {_refillShouldBeBlocked_dup_T_121,_refillShouldBeBlocked_dup_T_128}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_130 = |_refillShouldBeBlocked_dup_T_129; // @[DCacheWrapper.scala 1237:8]
  wire [13:0] _refillShouldBeBlocked_dup_T_133 = {missQueue_io_refill_pipe_req_dup_6_bits_alias,
    missQueue_io_refill_pipe_req_dup_6_bits_addr[11:0]}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_140 = mainPipe_io_status_dup_6_s2_bits_set == _refillShouldBeBlocked_dup_T_133[11:6
    ]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_141 = mainPipe_io_status_dup_6_s2_valid & _refillShouldBeBlocked_dup_T_140; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_142 = mainPipe_io_status_dup_6_s2_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_6_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_143 = _refillShouldBeBlocked_dup_T_141 & _refillShouldBeBlocked_dup_T_142; // @[DCacheWrapper.scala 1235:50]
  wire  _refillShouldBeBlocked_dup_T_147 = mainPipe_io_status_dup_6_s3_bits_set == _refillShouldBeBlocked_dup_T_133[11:6
    ]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_148 = mainPipe_io_status_dup_6_s3_valid & _refillShouldBeBlocked_dup_T_147; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_149 = mainPipe_io_status_dup_6_s3_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_6_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_150 = _refillShouldBeBlocked_dup_T_148 & _refillShouldBeBlocked_dup_T_149; // @[DCacheWrapper.scala 1235:50]
  wire [1:0] _refillShouldBeBlocked_dup_T_151 = {_refillShouldBeBlocked_dup_T_143,_refillShouldBeBlocked_dup_T_150}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_152 = |_refillShouldBeBlocked_dup_T_151; // @[DCacheWrapper.scala 1237:8]
  wire [13:0] _refillShouldBeBlocked_dup_T_155 = {missQueue_io_refill_pipe_req_dup_7_bits_alias,
    missQueue_io_refill_pipe_req_dup_7_bits_addr[11:0]}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_162 = mainPipe_io_status_dup_7_s2_bits_set == _refillShouldBeBlocked_dup_T_155[11:6
    ]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_163 = mainPipe_io_status_dup_7_s2_valid & _refillShouldBeBlocked_dup_T_162; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_164 = mainPipe_io_status_dup_7_s2_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_7_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_165 = _refillShouldBeBlocked_dup_T_163 & _refillShouldBeBlocked_dup_T_164; // @[DCacheWrapper.scala 1235:50]
  wire  _refillShouldBeBlocked_dup_T_169 = mainPipe_io_status_dup_7_s3_bits_set == _refillShouldBeBlocked_dup_T_155[11:6
    ]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_170 = mainPipe_io_status_dup_7_s3_valid & _refillShouldBeBlocked_dup_T_169; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_171 = mainPipe_io_status_dup_7_s3_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_7_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_172 = _refillShouldBeBlocked_dup_T_170 & _refillShouldBeBlocked_dup_T_171; // @[DCacheWrapper.scala 1235:50]
  wire [1:0] _refillShouldBeBlocked_dup_T_173 = {_refillShouldBeBlocked_dup_T_165,_refillShouldBeBlocked_dup_T_172}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_174 = |_refillShouldBeBlocked_dup_T_173; // @[DCacheWrapper.scala 1237:8]
  wire [13:0] _refillShouldBeBlocked_dup_T_177 = {missQueue_io_refill_pipe_req_dup_8_bits_alias,
    missQueue_io_refill_pipe_req_dup_8_bits_addr[11:0]}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_184 = mainPipe_io_status_dup_8_s2_bits_set == _refillShouldBeBlocked_dup_T_177[11:6
    ]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_185 = mainPipe_io_status_dup_8_s2_valid & _refillShouldBeBlocked_dup_T_184; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_186 = mainPipe_io_status_dup_8_s2_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_8_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_187 = _refillShouldBeBlocked_dup_T_185 & _refillShouldBeBlocked_dup_T_186; // @[DCacheWrapper.scala 1235:50]
  wire  _refillShouldBeBlocked_dup_T_191 = mainPipe_io_status_dup_8_s3_bits_set == _refillShouldBeBlocked_dup_T_177[11:6
    ]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_192 = mainPipe_io_status_dup_8_s3_valid & _refillShouldBeBlocked_dup_T_191; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_193 = mainPipe_io_status_dup_8_s3_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_8_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_194 = _refillShouldBeBlocked_dup_T_192 & _refillShouldBeBlocked_dup_T_193; // @[DCacheWrapper.scala 1235:50]
  wire [1:0] _refillShouldBeBlocked_dup_T_195 = {_refillShouldBeBlocked_dup_T_187,_refillShouldBeBlocked_dup_T_194}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_196 = |_refillShouldBeBlocked_dup_T_195; // @[DCacheWrapper.scala 1237:8]
  wire [13:0] _refillShouldBeBlocked_dup_T_199 = {missQueue_io_refill_pipe_req_dup_9_bits_alias,
    missQueue_io_refill_pipe_req_dup_9_bits_addr[11:0]}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_206 = mainPipe_io_status_dup_9_s2_bits_set == _refillShouldBeBlocked_dup_T_199[11:6
    ]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_207 = mainPipe_io_status_dup_9_s2_valid & _refillShouldBeBlocked_dup_T_206; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_208 = mainPipe_io_status_dup_9_s2_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_9_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_209 = _refillShouldBeBlocked_dup_T_207 & _refillShouldBeBlocked_dup_T_208; // @[DCacheWrapper.scala 1235:50]
  wire  _refillShouldBeBlocked_dup_T_213 = mainPipe_io_status_dup_9_s3_bits_set == _refillShouldBeBlocked_dup_T_199[11:6
    ]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_214 = mainPipe_io_status_dup_9_s3_valid & _refillShouldBeBlocked_dup_T_213; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_215 = mainPipe_io_status_dup_9_s3_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_9_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_216 = _refillShouldBeBlocked_dup_T_214 & _refillShouldBeBlocked_dup_T_215; // @[DCacheWrapper.scala 1235:50]
  wire [1:0] _refillShouldBeBlocked_dup_T_217 = {_refillShouldBeBlocked_dup_T_209,_refillShouldBeBlocked_dup_T_216}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_218 = |_refillShouldBeBlocked_dup_T_217; // @[DCacheWrapper.scala 1237:8]
  wire [13:0] _refillShouldBeBlocked_dup_T_221 = {missQueue_io_refill_pipe_req_dup_10_bits_alias,
    missQueue_io_refill_pipe_req_dup_10_bits_addr[11:0]}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_228 = mainPipe_io_status_dup_10_s2_bits_set == _refillShouldBeBlocked_dup_T_221[11:
    6]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_229 = mainPipe_io_status_dup_10_s2_valid & _refillShouldBeBlocked_dup_T_228; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_230 = mainPipe_io_status_dup_10_s2_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_10_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_231 = _refillShouldBeBlocked_dup_T_229 & _refillShouldBeBlocked_dup_T_230; // @[DCacheWrapper.scala 1235:50]
  wire  _refillShouldBeBlocked_dup_T_235 = mainPipe_io_status_dup_10_s3_bits_set == _refillShouldBeBlocked_dup_T_221[11:
    6]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_236 = mainPipe_io_status_dup_10_s3_valid & _refillShouldBeBlocked_dup_T_235; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_237 = mainPipe_io_status_dup_10_s3_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_10_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_238 = _refillShouldBeBlocked_dup_T_236 & _refillShouldBeBlocked_dup_T_237; // @[DCacheWrapper.scala 1235:50]
  wire [1:0] _refillShouldBeBlocked_dup_T_239 = {_refillShouldBeBlocked_dup_T_231,_refillShouldBeBlocked_dup_T_238}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_240 = |_refillShouldBeBlocked_dup_T_239; // @[DCacheWrapper.scala 1237:8]
  wire [13:0] _refillShouldBeBlocked_dup_T_243 = {missQueue_io_refill_pipe_req_dup_11_bits_alias,
    missQueue_io_refill_pipe_req_dup_11_bits_addr[11:0]}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_250 = mainPipe_io_status_dup_11_s2_bits_set == _refillShouldBeBlocked_dup_T_243[11:
    6]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_251 = mainPipe_io_status_dup_11_s2_valid & _refillShouldBeBlocked_dup_T_250; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_252 = mainPipe_io_status_dup_11_s2_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_11_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_253 = _refillShouldBeBlocked_dup_T_251 & _refillShouldBeBlocked_dup_T_252; // @[DCacheWrapper.scala 1235:50]
  wire  _refillShouldBeBlocked_dup_T_257 = mainPipe_io_status_dup_11_s3_bits_set == _refillShouldBeBlocked_dup_T_243[11:
    6]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_258 = mainPipe_io_status_dup_11_s3_valid & _refillShouldBeBlocked_dup_T_257; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_259 = mainPipe_io_status_dup_11_s3_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_11_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_260 = _refillShouldBeBlocked_dup_T_258 & _refillShouldBeBlocked_dup_T_259; // @[DCacheWrapper.scala 1235:50]
  wire [1:0] _refillShouldBeBlocked_dup_T_261 = {_refillShouldBeBlocked_dup_T_253,_refillShouldBeBlocked_dup_T_260}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_262 = |_refillShouldBeBlocked_dup_T_261; // @[DCacheWrapper.scala 1237:8]
  wire [13:0] _refillShouldBeBlocked_dup_T_265 = {missQueue_io_refill_pipe_req_dup_12_bits_alias,
    missQueue_io_refill_pipe_req_dup_12_bits_addr[11:0]}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_272 = mainPipe_io_status_dup_12_s2_bits_set == _refillShouldBeBlocked_dup_T_265[11:
    6]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_273 = mainPipe_io_status_dup_12_s2_valid & _refillShouldBeBlocked_dup_T_272; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_274 = mainPipe_io_status_dup_12_s2_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_12_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_275 = _refillShouldBeBlocked_dup_T_273 & _refillShouldBeBlocked_dup_T_274; // @[DCacheWrapper.scala 1235:50]
  wire  _refillShouldBeBlocked_dup_T_279 = mainPipe_io_status_dup_12_s3_bits_set == _refillShouldBeBlocked_dup_T_265[11:
    6]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_280 = mainPipe_io_status_dup_12_s3_valid & _refillShouldBeBlocked_dup_T_279; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_281 = mainPipe_io_status_dup_12_s3_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_12_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_282 = _refillShouldBeBlocked_dup_T_280 & _refillShouldBeBlocked_dup_T_281; // @[DCacheWrapper.scala 1235:50]
  wire [1:0] _refillShouldBeBlocked_dup_T_283 = {_refillShouldBeBlocked_dup_T_275,_refillShouldBeBlocked_dup_T_282}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_284 = |_refillShouldBeBlocked_dup_T_283; // @[DCacheWrapper.scala 1237:8]
  wire [13:0] _refillShouldBeBlocked_dup_T_287 = {missQueue_io_refill_pipe_req_dup_13_bits_alias,
    missQueue_io_refill_pipe_req_dup_13_bits_addr[11:0]}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_294 = mainPipe_io_status_dup_13_s2_bits_set == _refillShouldBeBlocked_dup_T_287[11:
    6]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_295 = mainPipe_io_status_dup_13_s2_valid & _refillShouldBeBlocked_dup_T_294; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_296 = mainPipe_io_status_dup_13_s2_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_13_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_297 = _refillShouldBeBlocked_dup_T_295 & _refillShouldBeBlocked_dup_T_296; // @[DCacheWrapper.scala 1235:50]
  wire  _refillShouldBeBlocked_dup_T_301 = mainPipe_io_status_dup_13_s3_bits_set == _refillShouldBeBlocked_dup_T_287[11:
    6]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_302 = mainPipe_io_status_dup_13_s3_valid & _refillShouldBeBlocked_dup_T_301; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_303 = mainPipe_io_status_dup_13_s3_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_13_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_304 = _refillShouldBeBlocked_dup_T_302 & _refillShouldBeBlocked_dup_T_303; // @[DCacheWrapper.scala 1235:50]
  wire [1:0] _refillShouldBeBlocked_dup_T_305 = {_refillShouldBeBlocked_dup_T_297,_refillShouldBeBlocked_dup_T_304}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_306 = |_refillShouldBeBlocked_dup_T_305; // @[DCacheWrapper.scala 1237:8]
  wire [13:0] _refillShouldBeBlocked_dup_T_309 = {missQueue_io_refill_pipe_req_dup_14_bits_alias,
    missQueue_io_refill_pipe_req_dup_14_bits_addr[11:0]}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_316 = mainPipe_io_status_dup_14_s2_bits_set == _refillShouldBeBlocked_dup_T_309[11:
    6]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_317 = mainPipe_io_status_dup_14_s2_valid & _refillShouldBeBlocked_dup_T_316; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_318 = mainPipe_io_status_dup_14_s2_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_14_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_319 = _refillShouldBeBlocked_dup_T_317 & _refillShouldBeBlocked_dup_T_318; // @[DCacheWrapper.scala 1235:50]
  wire  _refillShouldBeBlocked_dup_T_323 = mainPipe_io_status_dup_14_s3_bits_set == _refillShouldBeBlocked_dup_T_309[11:
    6]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_324 = mainPipe_io_status_dup_14_s3_valid & _refillShouldBeBlocked_dup_T_323; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_325 = mainPipe_io_status_dup_14_s3_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_14_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_326 = _refillShouldBeBlocked_dup_T_324 & _refillShouldBeBlocked_dup_T_325; // @[DCacheWrapper.scala 1235:50]
  wire [1:0] _refillShouldBeBlocked_dup_T_327 = {_refillShouldBeBlocked_dup_T_319,_refillShouldBeBlocked_dup_T_326}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_328 = |_refillShouldBeBlocked_dup_T_327; // @[DCacheWrapper.scala 1237:8]
  wire [13:0] _refillShouldBeBlocked_dup_T_331 = {missQueue_io_refill_pipe_req_dup_15_bits_alias,
    missQueue_io_refill_pipe_req_dup_15_bits_addr[11:0]}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_338 = mainPipe_io_status_dup_15_s2_bits_set == _refillShouldBeBlocked_dup_T_331[11:
    6]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_339 = mainPipe_io_status_dup_15_s2_valid & _refillShouldBeBlocked_dup_T_338; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_340 = mainPipe_io_status_dup_15_s2_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_15_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_341 = _refillShouldBeBlocked_dup_T_339 & _refillShouldBeBlocked_dup_T_340; // @[DCacheWrapper.scala 1235:50]
  wire  _refillShouldBeBlocked_dup_T_345 = mainPipe_io_status_dup_15_s3_bits_set == _refillShouldBeBlocked_dup_T_331[11:
    6]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_346 = mainPipe_io_status_dup_15_s3_valid & _refillShouldBeBlocked_dup_T_345; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_347 = mainPipe_io_status_dup_15_s3_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_15_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_348 = _refillShouldBeBlocked_dup_T_346 & _refillShouldBeBlocked_dup_T_347; // @[DCacheWrapper.scala 1235:50]
  wire [1:0] _refillShouldBeBlocked_dup_T_349 = {_refillShouldBeBlocked_dup_T_341,_refillShouldBeBlocked_dup_T_348}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_350 = |_refillShouldBeBlocked_dup_T_349; // @[DCacheWrapper.scala 1237:8]
  wire [13:0] _refillShouldBeBlocked_dup_T_353 = {missQueue_io_refill_pipe_req_dup_16_bits_alias,
    missQueue_io_refill_pipe_req_dup_16_bits_addr[11:0]}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_360 = mainPipe_io_status_dup_16_s2_bits_set == _refillShouldBeBlocked_dup_T_353[11:
    6]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_361 = mainPipe_io_status_dup_16_s2_valid & _refillShouldBeBlocked_dup_T_360; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_362 = mainPipe_io_status_dup_16_s2_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_16_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_363 = _refillShouldBeBlocked_dup_T_361 & _refillShouldBeBlocked_dup_T_362; // @[DCacheWrapper.scala 1235:50]
  wire  _refillShouldBeBlocked_dup_T_367 = mainPipe_io_status_dup_16_s3_bits_set == _refillShouldBeBlocked_dup_T_353[11:
    6]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_368 = mainPipe_io_status_dup_16_s3_valid & _refillShouldBeBlocked_dup_T_367; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_369 = mainPipe_io_status_dup_16_s3_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_16_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_370 = _refillShouldBeBlocked_dup_T_368 & _refillShouldBeBlocked_dup_T_369; // @[DCacheWrapper.scala 1235:50]
  wire [1:0] _refillShouldBeBlocked_dup_T_371 = {_refillShouldBeBlocked_dup_T_363,_refillShouldBeBlocked_dup_T_370}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_372 = |_refillShouldBeBlocked_dup_T_371; // @[DCacheWrapper.scala 1237:8]
  wire [13:0] _refillShouldBeBlocked_dup_T_375 = {missQueue_io_refill_pipe_req_dup_17_bits_alias,
    missQueue_io_refill_pipe_req_dup_17_bits_addr[11:0]}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_382 = mainPipe_io_status_dup_17_s2_bits_set == _refillShouldBeBlocked_dup_T_375[11:
    6]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_383 = mainPipe_io_status_dup_17_s2_valid & _refillShouldBeBlocked_dup_T_382; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_384 = mainPipe_io_status_dup_17_s2_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_17_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_385 = _refillShouldBeBlocked_dup_T_383 & _refillShouldBeBlocked_dup_T_384; // @[DCacheWrapper.scala 1235:50]
  wire  _refillShouldBeBlocked_dup_T_389 = mainPipe_io_status_dup_17_s3_bits_set == _refillShouldBeBlocked_dup_T_375[11:
    6]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_390 = mainPipe_io_status_dup_17_s3_valid & _refillShouldBeBlocked_dup_T_389; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_391 = mainPipe_io_status_dup_17_s3_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_17_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_392 = _refillShouldBeBlocked_dup_T_390 & _refillShouldBeBlocked_dup_T_391; // @[DCacheWrapper.scala 1235:50]
  wire [1:0] _refillShouldBeBlocked_dup_T_393 = {_refillShouldBeBlocked_dup_T_385,_refillShouldBeBlocked_dup_T_392}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_394 = |_refillShouldBeBlocked_dup_T_393; // @[DCacheWrapper.scala 1237:8]
  wire [13:0] _refillShouldBeBlocked_dup_T_397 = {missQueue_io_refill_pipe_req_dup_18_bits_alias,
    missQueue_io_refill_pipe_req_dup_18_bits_addr[11:0]}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_404 = mainPipe_io_status_dup_18_s2_bits_set == _refillShouldBeBlocked_dup_T_397[11:
    6]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_405 = mainPipe_io_status_dup_18_s2_valid & _refillShouldBeBlocked_dup_T_404; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_406 = mainPipe_io_status_dup_18_s2_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_18_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_407 = _refillShouldBeBlocked_dup_T_405 & _refillShouldBeBlocked_dup_T_406; // @[DCacheWrapper.scala 1235:50]
  wire  _refillShouldBeBlocked_dup_T_411 = mainPipe_io_status_dup_18_s3_bits_set == _refillShouldBeBlocked_dup_T_397[11:
    6]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_412 = mainPipe_io_status_dup_18_s3_valid & _refillShouldBeBlocked_dup_T_411; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_413 = mainPipe_io_status_dup_18_s3_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_18_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_414 = _refillShouldBeBlocked_dup_T_412 & _refillShouldBeBlocked_dup_T_413; // @[DCacheWrapper.scala 1235:50]
  wire [1:0] _refillShouldBeBlocked_dup_T_415 = {_refillShouldBeBlocked_dup_T_407,_refillShouldBeBlocked_dup_T_414}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_416 = |_refillShouldBeBlocked_dup_T_415; // @[DCacheWrapper.scala 1237:8]
  wire [13:0] _refillShouldBeBlocked_dup_T_419 = {missQueue_io_refill_pipe_req_dup_19_bits_alias,
    missQueue_io_refill_pipe_req_dup_19_bits_addr[11:0]}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_426 = mainPipe_io_status_dup_19_s2_bits_set == _refillShouldBeBlocked_dup_T_419[11:
    6]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_427 = mainPipe_io_status_dup_19_s2_valid & _refillShouldBeBlocked_dup_T_426; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_428 = mainPipe_io_status_dup_19_s2_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_19_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_429 = _refillShouldBeBlocked_dup_T_427 & _refillShouldBeBlocked_dup_T_428; // @[DCacheWrapper.scala 1235:50]
  wire  _refillShouldBeBlocked_dup_T_433 = mainPipe_io_status_dup_19_s3_bits_set == _refillShouldBeBlocked_dup_T_419[11:
    6]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_434 = mainPipe_io_status_dup_19_s3_valid & _refillShouldBeBlocked_dup_T_433; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_435 = mainPipe_io_status_dup_19_s3_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_19_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_436 = _refillShouldBeBlocked_dup_T_434 & _refillShouldBeBlocked_dup_T_435; // @[DCacheWrapper.scala 1235:50]
  wire [1:0] _refillShouldBeBlocked_dup_T_437 = {_refillShouldBeBlocked_dup_T_429,_refillShouldBeBlocked_dup_T_436}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_438 = |_refillShouldBeBlocked_dup_T_437; // @[DCacheWrapper.scala 1237:8]
  wire [13:0] _refillShouldBeBlocked_dup_T_441 = {missQueue_io_refill_pipe_req_dup_20_bits_alias,
    missQueue_io_refill_pipe_req_dup_20_bits_addr[11:0]}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_448 = mainPipe_io_status_dup_20_s2_bits_set == _refillShouldBeBlocked_dup_T_441[11:
    6]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_449 = mainPipe_io_status_dup_20_s2_valid & _refillShouldBeBlocked_dup_T_448; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_450 = mainPipe_io_status_dup_20_s2_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_20_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_451 = _refillShouldBeBlocked_dup_T_449 & _refillShouldBeBlocked_dup_T_450; // @[DCacheWrapper.scala 1235:50]
  wire  _refillShouldBeBlocked_dup_T_455 = mainPipe_io_status_dup_20_s3_bits_set == _refillShouldBeBlocked_dup_T_441[11:
    6]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_456 = mainPipe_io_status_dup_20_s3_valid & _refillShouldBeBlocked_dup_T_455; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_457 = mainPipe_io_status_dup_20_s3_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_20_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_458 = _refillShouldBeBlocked_dup_T_456 & _refillShouldBeBlocked_dup_T_457; // @[DCacheWrapper.scala 1235:50]
  wire [1:0] _refillShouldBeBlocked_dup_T_459 = {_refillShouldBeBlocked_dup_T_451,_refillShouldBeBlocked_dup_T_458}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_460 = |_refillShouldBeBlocked_dup_T_459; // @[DCacheWrapper.scala 1237:8]
  wire [13:0] _refillShouldBeBlocked_dup_T_463 = {missQueue_io_refill_pipe_req_dup_21_bits_alias,
    missQueue_io_refill_pipe_req_dup_21_bits_addr[11:0]}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_470 = mainPipe_io_status_dup_21_s2_bits_set == _refillShouldBeBlocked_dup_T_463[11:
    6]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_471 = mainPipe_io_status_dup_21_s2_valid & _refillShouldBeBlocked_dup_T_470; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_472 = mainPipe_io_status_dup_21_s2_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_21_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_473 = _refillShouldBeBlocked_dup_T_471 & _refillShouldBeBlocked_dup_T_472; // @[DCacheWrapper.scala 1235:50]
  wire  _refillShouldBeBlocked_dup_T_477 = mainPipe_io_status_dup_21_s3_bits_set == _refillShouldBeBlocked_dup_T_463[11:
    6]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_478 = mainPipe_io_status_dup_21_s3_valid & _refillShouldBeBlocked_dup_T_477; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_479 = mainPipe_io_status_dup_21_s3_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_21_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_480 = _refillShouldBeBlocked_dup_T_478 & _refillShouldBeBlocked_dup_T_479; // @[DCacheWrapper.scala 1235:50]
  wire [1:0] _refillShouldBeBlocked_dup_T_481 = {_refillShouldBeBlocked_dup_T_473,_refillShouldBeBlocked_dup_T_480}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_482 = |_refillShouldBeBlocked_dup_T_481; // @[DCacheWrapper.scala 1237:8]
  wire [13:0] _refillShouldBeBlocked_dup_T_485 = {missQueue_io_refill_pipe_req_dup_22_bits_alias,
    missQueue_io_refill_pipe_req_dup_22_bits_addr[11:0]}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_492 = mainPipe_io_status_dup_22_s2_bits_set == _refillShouldBeBlocked_dup_T_485[11:
    6]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_493 = mainPipe_io_status_dup_22_s2_valid & _refillShouldBeBlocked_dup_T_492; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_494 = mainPipe_io_status_dup_22_s2_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_22_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_495 = _refillShouldBeBlocked_dup_T_493 & _refillShouldBeBlocked_dup_T_494; // @[DCacheWrapper.scala 1235:50]
  wire  _refillShouldBeBlocked_dup_T_499 = mainPipe_io_status_dup_22_s3_bits_set == _refillShouldBeBlocked_dup_T_485[11:
    6]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_500 = mainPipe_io_status_dup_22_s3_valid & _refillShouldBeBlocked_dup_T_499; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_501 = mainPipe_io_status_dup_22_s3_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_22_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_502 = _refillShouldBeBlocked_dup_T_500 & _refillShouldBeBlocked_dup_T_501; // @[DCacheWrapper.scala 1235:50]
  wire [1:0] _refillShouldBeBlocked_dup_T_503 = {_refillShouldBeBlocked_dup_T_495,_refillShouldBeBlocked_dup_T_502}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_504 = |_refillShouldBeBlocked_dup_T_503; // @[DCacheWrapper.scala 1237:8]
  wire [13:0] _refillShouldBeBlocked_dup_T_507 = {missQueue_io_refill_pipe_req_dup_23_bits_alias,
    missQueue_io_refill_pipe_req_dup_23_bits_addr[11:0]}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_514 = mainPipe_io_status_dup_23_s2_bits_set == _refillShouldBeBlocked_dup_T_507[11:
    6]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_515 = mainPipe_io_status_dup_23_s2_valid & _refillShouldBeBlocked_dup_T_514; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_516 = mainPipe_io_status_dup_23_s2_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_23_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_517 = _refillShouldBeBlocked_dup_T_515 & _refillShouldBeBlocked_dup_T_516; // @[DCacheWrapper.scala 1235:50]
  wire  _refillShouldBeBlocked_dup_T_521 = mainPipe_io_status_dup_23_s3_bits_set == _refillShouldBeBlocked_dup_T_507[11:
    6]; // @[DCacheWrapper.scala 1235:20]
  wire  _refillShouldBeBlocked_dup_T_522 = mainPipe_io_status_dup_23_s3_valid & _refillShouldBeBlocked_dup_T_521; // @[DCacheWrapper.scala 1234:15]
  wire  _refillShouldBeBlocked_dup_T_523 = mainPipe_io_status_dup_23_s3_bits_way_en ==
    missQueue_io_refill_pipe_req_dup_23_bits_way_en; // @[DCacheWrapper.scala 1236:23]
  wire  _refillShouldBeBlocked_dup_T_524 = _refillShouldBeBlocked_dup_T_522 & _refillShouldBeBlocked_dup_T_523; // @[DCacheWrapper.scala 1235:50]
  wire [1:0] _refillShouldBeBlocked_dup_T_525 = {_refillShouldBeBlocked_dup_T_517,_refillShouldBeBlocked_dup_T_524}; // @[Cat.scala 31:58]
  wire  _refillShouldBeBlocked_dup_T_526 = |_refillShouldBeBlocked_dup_T_525; // @[DCacheWrapper.scala 1237:8]
  wire  refillShouldBeBlocked_dup_0 = mainPipe_io_status_dup_0_s1_valid & mainPipe_io_status_dup_0_s1_bits_set ==
    _refillShouldBeBlocked_dup_T_1[11:6] | _refillShouldBeBlocked_dup_T_20; // @[DCacheWrapper.scala 1232:91]
  wire  _refillPipe_io_req_dup_for_data_w0_valid_T = ~refillShouldBeBlocked_dup_0; // @[DCacheWrapper.scala 1249:7]
  wire  _refillPipe_io_req_dup_for_data_w0_valid_T_1 = missQueue_io_refill_pipe_req_dup_0_valid &
    _refillPipe_io_req_dup_for_data_w0_valid_T; // @[DCacheWrapper.scala 1248:79]
  wire  refillShouldBeBlocked_dup_1 = mainPipe_io_status_dup_1_s1_valid & mainPipe_io_status_dup_1_s1_bits_set ==
    _refillShouldBeBlocked_dup_T_23[11:6] | _refillShouldBeBlocked_dup_T_42; // @[DCacheWrapper.scala 1232:91]
  wire  _refillPipe_io_req_dup_for_data_w1_valid_T = ~refillShouldBeBlocked_dup_1; // @[DCacheWrapper.scala 1249:7]
  wire  _refillPipe_io_req_dup_for_data_w1_valid_T_1 = missQueue_io_refill_pipe_req_dup_1_valid &
    _refillPipe_io_req_dup_for_data_w1_valid_T; // @[DCacheWrapper.scala 1248:79]
  wire  refillShouldBeBlocked_dup_2 = mainPipe_io_status_dup_2_s1_valid & mainPipe_io_status_dup_2_s1_bits_set ==
    _refillShouldBeBlocked_dup_T_45[11:6] | _refillShouldBeBlocked_dup_T_64; // @[DCacheWrapper.scala 1232:91]
  wire  _refillPipe_io_req_dup_for_data_w2_valid_T = ~refillShouldBeBlocked_dup_2; // @[DCacheWrapper.scala 1249:7]
  wire  _refillPipe_io_req_dup_for_data_w2_valid_T_1 = missQueue_io_refill_pipe_req_dup_2_valid &
    _refillPipe_io_req_dup_for_data_w2_valid_T; // @[DCacheWrapper.scala 1248:79]
  wire  refillShouldBeBlocked_dup_3 = mainPipe_io_status_dup_3_s1_valid & mainPipe_io_status_dup_3_s1_bits_set ==
    _refillShouldBeBlocked_dup_T_67[11:6] | _refillShouldBeBlocked_dup_T_86; // @[DCacheWrapper.scala 1232:91]
  wire  _refillPipe_io_req_dup_for_data_w3_valid_T = ~refillShouldBeBlocked_dup_3; // @[DCacheWrapper.scala 1249:7]
  wire  _refillPipe_io_req_dup_for_data_w3_valid_T_1 = missQueue_io_refill_pipe_req_dup_3_valid &
    _refillPipe_io_req_dup_for_data_w3_valid_T; // @[DCacheWrapper.scala 1248:79]
  wire  refillShouldBeBlocked_dup_4 = mainPipe_io_status_dup_4_s1_valid & mainPipe_io_status_dup_4_s1_bits_set ==
    _refillShouldBeBlocked_dup_T_89[11:6] | _refillShouldBeBlocked_dup_T_108; // @[DCacheWrapper.scala 1232:91]
  wire  _refillPipe_io_req_dup_for_data_w4_valid_T = ~refillShouldBeBlocked_dup_4; // @[DCacheWrapper.scala 1249:7]
  wire  _refillPipe_io_req_dup_for_data_w4_valid_T_1 = missQueue_io_refill_pipe_req_dup_4_valid &
    _refillPipe_io_req_dup_for_data_w4_valid_T; // @[DCacheWrapper.scala 1248:79]
  wire  refillShouldBeBlocked_dup_5 = mainPipe_io_status_dup_5_s1_valid & mainPipe_io_status_dup_5_s1_bits_set ==
    _refillShouldBeBlocked_dup_T_111[11:6] | _refillShouldBeBlocked_dup_T_130; // @[DCacheWrapper.scala 1232:91]
  wire  _refillPipe_io_req_dup_for_data_w5_valid_T = ~refillShouldBeBlocked_dup_5; // @[DCacheWrapper.scala 1249:7]
  wire  _refillPipe_io_req_dup_for_data_w5_valid_T_1 = missQueue_io_refill_pipe_req_dup_5_valid &
    _refillPipe_io_req_dup_for_data_w5_valid_T; // @[DCacheWrapper.scala 1248:79]
  wire  refillShouldBeBlocked_dup_6 = mainPipe_io_status_dup_6_s1_valid & mainPipe_io_status_dup_6_s1_bits_set ==
    _refillShouldBeBlocked_dup_T_133[11:6] | _refillShouldBeBlocked_dup_T_152; // @[DCacheWrapper.scala 1232:91]
  wire  _refillPipe_io_req_dup_for_data_w6_valid_T = ~refillShouldBeBlocked_dup_6; // @[DCacheWrapper.scala 1249:7]
  wire  _refillPipe_io_req_dup_for_data_w6_valid_T_1 = missQueue_io_refill_pipe_req_dup_6_valid &
    _refillPipe_io_req_dup_for_data_w6_valid_T; // @[DCacheWrapper.scala 1248:79]
  wire  refillShouldBeBlocked_dup_7 = mainPipe_io_status_dup_7_s1_valid & mainPipe_io_status_dup_7_s1_bits_set ==
    _refillShouldBeBlocked_dup_T_155[11:6] | _refillShouldBeBlocked_dup_T_174; // @[DCacheWrapper.scala 1232:91]
  wire  _refillPipe_io_req_dup_for_data_w7_valid_T = ~refillShouldBeBlocked_dup_7; // @[DCacheWrapper.scala 1249:7]
  wire  _refillPipe_io_req_dup_for_data_w7_valid_T_1 = missQueue_io_refill_pipe_req_dup_7_valid &
    _refillPipe_io_req_dup_for_data_w7_valid_T; // @[DCacheWrapper.scala 1248:79]
  wire  refillShouldBeBlocked_dup_8 = mainPipe_io_status_dup_8_s1_valid & mainPipe_io_status_dup_8_s1_bits_set ==
    _refillShouldBeBlocked_dup_T_177[11:6] | _refillShouldBeBlocked_dup_T_196; // @[DCacheWrapper.scala 1232:91]
  wire  _refillPipe_io_req_dup_for_meta_wvalid_T_1 = missQueue_io_refill_pipe_req_dup_8_valid & ~
    refillShouldBeBlocked_dup_8; // @[DCacheWrapper.scala 1251:80]
  wire  refillShouldBeBlocked_dup_9 = mainPipe_io_status_dup_9_s1_valid & mainPipe_io_status_dup_9_s1_bits_set ==
    _refillShouldBeBlocked_dup_T_199[11:6] | _refillShouldBeBlocked_dup_T_218; // @[DCacheWrapper.scala 1232:91]
  wire  _refillPipe_io_req_dup_for_tag_wvalid_T_1 = missQueue_io_refill_pipe_req_dup_9_valid & ~
    refillShouldBeBlocked_dup_9; // @[DCacheWrapper.scala 1252:78]
  wire  refillShouldBeBlocked_dup_10 = mainPipe_io_status_dup_10_s1_valid & mainPipe_io_status_dup_10_s1_bits_set ==
    _refillShouldBeBlocked_dup_T_221[11:6] | _refillShouldBeBlocked_dup_T_240; // @[DCacheWrapper.scala 1232:91]
  wire  _refillPipe_io_req_dup_for_err_wvalid_T_1 = missQueue_io_refill_pipe_req_dup_10_valid & ~
    refillShouldBeBlocked_dup_10; // @[DCacheWrapper.scala 1253:78]
  wire  refillShouldBeBlocked_dup_11 = mainPipe_io_status_dup_11_s1_valid & mainPipe_io_status_dup_11_s1_bits_set ==
    _refillShouldBeBlocked_dup_T_243[11:6] | _refillShouldBeBlocked_dup_T_262; // @[DCacheWrapper.scala 1232:91]
  wire  refillShouldBeBlocked_dup_12 = mainPipe_io_status_dup_12_s1_valid & mainPipe_io_status_dup_12_s1_bits_set ==
    _refillShouldBeBlocked_dup_T_265[11:6] | _refillShouldBeBlocked_dup_T_284; // @[DCacheWrapper.scala 1232:91]
  wire  refillShouldBeBlocked_dup_13 = mainPipe_io_status_dup_13_s1_valid & mainPipe_io_status_dup_13_s1_bits_set ==
    _refillShouldBeBlocked_dup_T_287[11:6] | _refillShouldBeBlocked_dup_T_306; // @[DCacheWrapper.scala 1232:91]
  wire  refillShouldBeBlocked_dup_14 = mainPipe_io_status_dup_14_s1_valid & mainPipe_io_status_dup_14_s1_bits_set ==
    _refillShouldBeBlocked_dup_T_309[11:6] | _refillShouldBeBlocked_dup_T_328; // @[DCacheWrapper.scala 1232:91]
  wire  refillShouldBeBlocked_dup_15 = mainPipe_io_status_dup_15_s1_valid & mainPipe_io_status_dup_15_s1_bits_set ==
    _refillShouldBeBlocked_dup_T_331[11:6] | _refillShouldBeBlocked_dup_T_350; // @[DCacheWrapper.scala 1232:91]
  wire  refillShouldBeBlocked_dup_16 = mainPipe_io_status_dup_16_s1_valid & mainPipe_io_status_dup_16_s1_bits_set ==
    _refillShouldBeBlocked_dup_T_353[11:6] | _refillShouldBeBlocked_dup_T_372; // @[DCacheWrapper.scala 1232:91]
  wire  refillShouldBeBlocked_dup_17 = mainPipe_io_status_dup_17_s1_valid & mainPipe_io_status_dup_17_s1_bits_set ==
    _refillShouldBeBlocked_dup_T_375[11:6] | _refillShouldBeBlocked_dup_T_394; // @[DCacheWrapper.scala 1232:91]
  wire  refillShouldBeBlocked_dup_18 = mainPipe_io_status_dup_18_s1_valid & mainPipe_io_status_dup_18_s1_bits_set ==
    _refillShouldBeBlocked_dup_T_397[11:6] | _refillShouldBeBlocked_dup_T_416; // @[DCacheWrapper.scala 1232:91]
  wire  refillShouldBeBlocked_dup_19 = mainPipe_io_status_dup_19_s1_valid & mainPipe_io_status_dup_19_s1_bits_set ==
    _refillShouldBeBlocked_dup_T_419[11:6] | _refillShouldBeBlocked_dup_T_438; // @[DCacheWrapper.scala 1232:91]
  wire  refillShouldBeBlocked_dup_20 = mainPipe_io_status_dup_20_s1_valid & mainPipe_io_status_dup_20_s1_bits_set ==
    _refillShouldBeBlocked_dup_T_441[11:6] | _refillShouldBeBlocked_dup_T_460; // @[DCacheWrapper.scala 1232:91]
  wire  refillShouldBeBlocked_dup_21 = mainPipe_io_status_dup_21_s1_valid & mainPipe_io_status_dup_21_s1_bits_set ==
    _refillShouldBeBlocked_dup_T_463[11:6] | _refillShouldBeBlocked_dup_T_482; // @[DCacheWrapper.scala 1232:91]
  wire  refillShouldBeBlocked_dup_22 = mainPipe_io_status_dup_22_s1_valid & mainPipe_io_status_dup_22_s1_bits_set ==
    _refillShouldBeBlocked_dup_T_485[11:6] | _refillShouldBeBlocked_dup_T_504; // @[DCacheWrapper.scala 1232:91]
  wire  refillShouldBeBlocked_dup_23 = mainPipe_io_status_dup_23_s1_valid & mainPipe_io_status_dup_23_s1_bits_set ==
    _refillShouldBeBlocked_dup_T_507[11:6] | _refillShouldBeBlocked_dup_T_526; // @[DCacheWrapper.scala 1232:91]
  wire  refillPipe_io_req_valid_dup_0 = _refillPipe_io_req_dup_for_data_w0_valid_T_1; // @[DCacheWrapper.scala 1256:21]
  wire  refillPipe_io_data_write_valid_dup_0 = refillPipe_io_req_valid_dup_0; // @[DCacheWrapper.scala 1258:{51,51}]
  wire  refillPipe_io_req_valid_dup_1 = _refillPipe_io_req_dup_for_data_w1_valid_T_1; // @[DCacheWrapper.scala 1256:21]
  wire  refillPipe_io_data_write_valid_dup_1 = refillPipe_io_req_valid_dup_1; // @[DCacheWrapper.scala 1258:{51,51}]
  wire  refillPipe_io_req_valid_dup_2 = _refillPipe_io_req_dup_for_data_w2_valid_T_1; // @[DCacheWrapper.scala 1256:21]
  wire  refillPipe_io_data_write_valid_dup_2 = refillPipe_io_req_valid_dup_2; // @[DCacheWrapper.scala 1258:{51,51}]
  wire  refillPipe_io_req_valid_dup_3 = _refillPipe_io_req_dup_for_data_w3_valid_T_1; // @[DCacheWrapper.scala 1256:21]
  wire  refillPipe_io_data_write_valid_dup_3 = refillPipe_io_req_valid_dup_3; // @[DCacheWrapper.scala 1258:{51,51}]
  wire  refillPipe_io_req_valid_dup_4 = _refillPipe_io_req_dup_for_data_w4_valid_T_1; // @[DCacheWrapper.scala 1256:21]
  wire  refillPipe_io_data_write_valid_dup_4 = refillPipe_io_req_valid_dup_4; // @[DCacheWrapper.scala 1258:{51,51}]
  wire  refillPipe_io_req_valid_dup_5 = _refillPipe_io_req_dup_for_data_w5_valid_T_1; // @[DCacheWrapper.scala 1256:21]
  wire  refillPipe_io_data_write_valid_dup_5 = refillPipe_io_req_valid_dup_5; // @[DCacheWrapper.scala 1258:{51,51}]
  wire  refillPipe_io_req_valid_dup_6 = _refillPipe_io_req_dup_for_data_w6_valid_T_1; // @[DCacheWrapper.scala 1256:21]
  wire  refillPipe_io_data_write_valid_dup_6 = refillPipe_io_req_valid_dup_6; // @[DCacheWrapper.scala 1258:{51,51}]
  wire  refillPipe_io_req_valid_dup_7 = _refillPipe_io_req_dup_for_data_w7_valid_T_1; // @[DCacheWrapper.scala 1256:21]
  wire  refillPipe_io_data_write_valid_dup_7 = refillPipe_io_req_valid_dup_7; // @[DCacheWrapper.scala 1258:{51,51}]
  wire  refillPipe_io_req_valid_dup_8 = _refillPipe_io_req_dup_for_meta_wvalid_T_1; // @[DCacheWrapper.scala 1256:21]
  wire  refillPipe_io_data_write_valid_dup_8 = refillPipe_io_req_valid_dup_8; // @[DCacheWrapper.scala 1258:{51,51}]
  wire  refillPipe_io_req_valid_dup_9 = _refillPipe_io_req_dup_for_tag_wvalid_T_1; // @[DCacheWrapper.scala 1256:21]
  wire  refillPipe_io_data_write_valid_dup_9 = refillPipe_io_req_valid_dup_9; // @[DCacheWrapper.scala 1258:{51,51}]
  wire  refillPipe_io_req_valid_dup_10 = _refillPipe_io_req_dup_for_err_wvalid_T_1; // @[DCacheWrapper.scala 1256:21]
  wire  refillPipe_io_data_write_valid_dup_10 = refillPipe_io_req_valid_dup_10; // @[DCacheWrapper.scala 1258:{51,51}]
  wire  refillPipe_io_req_valid_dup_11 = missQueue_io_refill_pipe_req_dup_11_valid & ~refillShouldBeBlocked_dup_11; // @[DCacheWrapper.scala 1256:21]
  wire  refillPipe_io_data_write_valid_dup_11 = refillPipe_io_req_valid_dup_11; // @[DCacheWrapper.scala 1258:{51,51}]
  wire  refillPipe_io_req_valid_dup_12 = missQueue_io_refill_pipe_req_dup_12_valid & ~refillShouldBeBlocked_dup_12; // @[DCacheWrapper.scala 1256:21]
  wire  refillPipe_io_tag_write_valid_dup_0 = refillPipe_io_req_valid_dup_12; // @[DCacheWrapper.scala 1259:{50,50}]
  wire  refillPipe_io_req_valid_dup_13 = missQueue_io_refill_pipe_req_dup_13_valid & ~refillShouldBeBlocked_dup_13; // @[DCacheWrapper.scala 1256:21]
  wire  refillPipe_io_tag_write_valid_dup_1 = refillPipe_io_req_valid_dup_13; // @[DCacheWrapper.scala 1259:{50,50}]
  wire  refillPipe_io_req_valid_dup_14 = missQueue_io_refill_pipe_req_dup_14_valid & ~refillShouldBeBlocked_dup_14; // @[DCacheWrapper.scala 1256:21]
  wire  refillPipe_io_tag_write_valid_dup_2 = refillPipe_io_req_valid_dup_14; // @[DCacheWrapper.scala 1259:{50,50}]
  wire  refillPipe_io_req_valid_dup_15 = missQueue_io_refill_pipe_req_dup_15_valid & ~refillShouldBeBlocked_dup_15; // @[DCacheWrapper.scala 1256:21]
  wire  refillPipe_io_tag_write_valid_dup_3 = refillPipe_io_req_valid_dup_15; // @[DCacheWrapper.scala 1259:{50,50}]
  wire  refillPipe_io_req_valid_dup_16 = missQueue_io_refill_pipe_req_dup_16_valid & ~refillShouldBeBlocked_dup_16; // @[DCacheWrapper.scala 1256:21]
  wire  refillPipe_io_tag_write_valid_dup_4 = refillPipe_io_req_valid_dup_16; // @[DCacheWrapper.scala 1259:{50,50}]
  wire  refillPipe_io_req_valid_dup_17 = missQueue_io_refill_pipe_req_dup_17_valid & ~refillShouldBeBlocked_dup_17; // @[DCacheWrapper.scala 1256:21]
  wire  refillPipe_io_tag_write_valid_dup_5 = refillPipe_io_req_valid_dup_17; // @[DCacheWrapper.scala 1259:{50,50}]
  wire  refillPipe_io_req_valid_dup_18 = missQueue_io_refill_pipe_req_dup_18_valid & ~refillShouldBeBlocked_dup_18; // @[DCacheWrapper.scala 1256:21]
  wire  refillPipe_io_tag_write_valid_dup_6 = refillPipe_io_req_valid_dup_18; // @[DCacheWrapper.scala 1259:{50,50}]
  wire  refillPipe_io_req_valid_dup_19 = missQueue_io_refill_pipe_req_dup_19_valid & ~refillShouldBeBlocked_dup_19; // @[DCacheWrapper.scala 1256:21]
  wire  refillPipe_io_tag_write_valid_dup_7 = refillPipe_io_req_valid_dup_19; // @[DCacheWrapper.scala 1259:{50,50}]
  wire  refillPipe_io_req_valid_dup_20 = missQueue_io_refill_pipe_req_dup_20_valid & ~refillShouldBeBlocked_dup_20; // @[DCacheWrapper.scala 1256:21]
  wire  refillPipe_io_tag_write_valid_dup_8 = refillPipe_io_req_valid_dup_20; // @[DCacheWrapper.scala 1259:{50,50}]
  wire  refillPipe_io_req_valid_dup_21 = missQueue_io_refill_pipe_req_dup_21_valid & ~refillShouldBeBlocked_dup_21; // @[DCacheWrapper.scala 1256:21]
  wire  refillPipe_io_tag_write_valid_dup_9 = refillPipe_io_req_valid_dup_21; // @[DCacheWrapper.scala 1259:{50,50}]
  wire  refillPipe_io_req_valid_dup_22 = missQueue_io_refill_pipe_req_dup_22_valid & ~refillShouldBeBlocked_dup_22; // @[DCacheWrapper.scala 1256:21]
  wire  refillPipe_io_tag_write_valid_dup_10 = refillPipe_io_req_valid_dup_22; // @[DCacheWrapper.scala 1259:{50,50}]
  wire  refillPipe_io_req_valid_dup_23 = missQueue_io_refill_pipe_req_dup_23_valid & ~refillShouldBeBlocked_dup_23; // @[DCacheWrapper.scala 1256:21]
  wire  refillPipe_io_tag_write_valid_dup_11 = refillPipe_io_req_valid_dup_23; // @[DCacheWrapper.scala 1259:{50,50}]
  reg  io_lsu_store_refill_hit_resp_REG_valid; // @[DCacheWrapper.scala 1272:42]
  reg [3:0] io_lsu_store_refill_hit_resp_REG_bits_id; // @[DCacheWrapper.scala 1272:42]
  reg  io_lsu_release_valid_REG; // @[DCacheWrapper.scala 1285:34]
  reg [35:0] io_lsu_release_bits_paddr_REG; // @[DCacheWrapper.scala 1286:39]
  wire  _GEN_19 = auto_client_out_d_bits_opcode == 3'h6 & auto_client_out_d_valid; // @[DCacheWrapper.scala 1304:61 1305:21 1297:25]
  reg [6:0] state_vec_0; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_1; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_2; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_3; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_4; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_5; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_6; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_7; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_8; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_9; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_10; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_11; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_12; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_13; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_14; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_15; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_16; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_17; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_18; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_19; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_20; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_21; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_22; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_23; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_24; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_25; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_26; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_27; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_28; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_29; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_30; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_31; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_32; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_33; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_34; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_35; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_36; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_37; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_38; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_39; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_40; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_41; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_42; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_43; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_44; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_45; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_46; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_47; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_48; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_49; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_50; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_51; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_52; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_53; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_54; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_55; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_56; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_57; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_58; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_59; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_60; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_61; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_62; // @[Replacement.scala 374:17]
  reg [6:0] state_vec_63; // @[Replacement.scala 374:17]
  wire [6:0] _GEN_48 = 6'h1 == ldu_0_io_replace_way_set_bits ? state_vec_1 : state_vec_0; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_49 = 6'h2 == ldu_0_io_replace_way_set_bits ? state_vec_2 : _GEN_48; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_50 = 6'h3 == ldu_0_io_replace_way_set_bits ? state_vec_3 : _GEN_49; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_51 = 6'h4 == ldu_0_io_replace_way_set_bits ? state_vec_4 : _GEN_50; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_52 = 6'h5 == ldu_0_io_replace_way_set_bits ? state_vec_5 : _GEN_51; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_53 = 6'h6 == ldu_0_io_replace_way_set_bits ? state_vec_6 : _GEN_52; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_54 = 6'h7 == ldu_0_io_replace_way_set_bits ? state_vec_7 : _GEN_53; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_55 = 6'h8 == ldu_0_io_replace_way_set_bits ? state_vec_8 : _GEN_54; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_56 = 6'h9 == ldu_0_io_replace_way_set_bits ? state_vec_9 : _GEN_55; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_57 = 6'ha == ldu_0_io_replace_way_set_bits ? state_vec_10 : _GEN_56; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_58 = 6'hb == ldu_0_io_replace_way_set_bits ? state_vec_11 : _GEN_57; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_59 = 6'hc == ldu_0_io_replace_way_set_bits ? state_vec_12 : _GEN_58; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_60 = 6'hd == ldu_0_io_replace_way_set_bits ? state_vec_13 : _GEN_59; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_61 = 6'he == ldu_0_io_replace_way_set_bits ? state_vec_14 : _GEN_60; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_62 = 6'hf == ldu_0_io_replace_way_set_bits ? state_vec_15 : _GEN_61; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_63 = 6'h10 == ldu_0_io_replace_way_set_bits ? state_vec_16 : _GEN_62; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_64 = 6'h11 == ldu_0_io_replace_way_set_bits ? state_vec_17 : _GEN_63; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_65 = 6'h12 == ldu_0_io_replace_way_set_bits ? state_vec_18 : _GEN_64; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_66 = 6'h13 == ldu_0_io_replace_way_set_bits ? state_vec_19 : _GEN_65; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_67 = 6'h14 == ldu_0_io_replace_way_set_bits ? state_vec_20 : _GEN_66; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_68 = 6'h15 == ldu_0_io_replace_way_set_bits ? state_vec_21 : _GEN_67; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_69 = 6'h16 == ldu_0_io_replace_way_set_bits ? state_vec_22 : _GEN_68; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_70 = 6'h17 == ldu_0_io_replace_way_set_bits ? state_vec_23 : _GEN_69; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_71 = 6'h18 == ldu_0_io_replace_way_set_bits ? state_vec_24 : _GEN_70; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_72 = 6'h19 == ldu_0_io_replace_way_set_bits ? state_vec_25 : _GEN_71; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_73 = 6'h1a == ldu_0_io_replace_way_set_bits ? state_vec_26 : _GEN_72; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_74 = 6'h1b == ldu_0_io_replace_way_set_bits ? state_vec_27 : _GEN_73; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_75 = 6'h1c == ldu_0_io_replace_way_set_bits ? state_vec_28 : _GEN_74; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_76 = 6'h1d == ldu_0_io_replace_way_set_bits ? state_vec_29 : _GEN_75; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_77 = 6'h1e == ldu_0_io_replace_way_set_bits ? state_vec_30 : _GEN_76; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_78 = 6'h1f == ldu_0_io_replace_way_set_bits ? state_vec_31 : _GEN_77; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_79 = 6'h20 == ldu_0_io_replace_way_set_bits ? state_vec_32 : _GEN_78; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_80 = 6'h21 == ldu_0_io_replace_way_set_bits ? state_vec_33 : _GEN_79; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_81 = 6'h22 == ldu_0_io_replace_way_set_bits ? state_vec_34 : _GEN_80; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_82 = 6'h23 == ldu_0_io_replace_way_set_bits ? state_vec_35 : _GEN_81; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_83 = 6'h24 == ldu_0_io_replace_way_set_bits ? state_vec_36 : _GEN_82; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_84 = 6'h25 == ldu_0_io_replace_way_set_bits ? state_vec_37 : _GEN_83; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_85 = 6'h26 == ldu_0_io_replace_way_set_bits ? state_vec_38 : _GEN_84; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_86 = 6'h27 == ldu_0_io_replace_way_set_bits ? state_vec_39 : _GEN_85; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_87 = 6'h28 == ldu_0_io_replace_way_set_bits ? state_vec_40 : _GEN_86; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_88 = 6'h29 == ldu_0_io_replace_way_set_bits ? state_vec_41 : _GEN_87; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_89 = 6'h2a == ldu_0_io_replace_way_set_bits ? state_vec_42 : _GEN_88; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_90 = 6'h2b == ldu_0_io_replace_way_set_bits ? state_vec_43 : _GEN_89; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_91 = 6'h2c == ldu_0_io_replace_way_set_bits ? state_vec_44 : _GEN_90; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_92 = 6'h2d == ldu_0_io_replace_way_set_bits ? state_vec_45 : _GEN_91; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_93 = 6'h2e == ldu_0_io_replace_way_set_bits ? state_vec_46 : _GEN_92; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_94 = 6'h2f == ldu_0_io_replace_way_set_bits ? state_vec_47 : _GEN_93; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_95 = 6'h30 == ldu_0_io_replace_way_set_bits ? state_vec_48 : _GEN_94; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_96 = 6'h31 == ldu_0_io_replace_way_set_bits ? state_vec_49 : _GEN_95; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_97 = 6'h32 == ldu_0_io_replace_way_set_bits ? state_vec_50 : _GEN_96; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_98 = 6'h33 == ldu_0_io_replace_way_set_bits ? state_vec_51 : _GEN_97; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_99 = 6'h34 == ldu_0_io_replace_way_set_bits ? state_vec_52 : _GEN_98; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_100 = 6'h35 == ldu_0_io_replace_way_set_bits ? state_vec_53 : _GEN_99; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_101 = 6'h36 == ldu_0_io_replace_way_set_bits ? state_vec_54 : _GEN_100; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_102 = 6'h37 == ldu_0_io_replace_way_set_bits ? state_vec_55 : _GEN_101; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_103 = 6'h38 == ldu_0_io_replace_way_set_bits ? state_vec_56 : _GEN_102; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_104 = 6'h39 == ldu_0_io_replace_way_set_bits ? state_vec_57 : _GEN_103; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_105 = 6'h3a == ldu_0_io_replace_way_set_bits ? state_vec_58 : _GEN_104; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_106 = 6'h3b == ldu_0_io_replace_way_set_bits ? state_vec_59 : _GEN_105; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_107 = 6'h3c == ldu_0_io_replace_way_set_bits ? state_vec_60 : _GEN_106; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_108 = 6'h3d == ldu_0_io_replace_way_set_bits ? state_vec_61 : _GEN_107; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_109 = 6'h3e == ldu_0_io_replace_way_set_bits ? state_vec_62 : _GEN_108; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_110 = 6'h3f == ldu_0_io_replace_way_set_bits ? state_vec_63 : _GEN_109; // @[Replacement.scala 243:{38,38}]
  wire  ldu_0_io_replace_way_way_left_subtree_older = _GEN_110[6]; // @[Replacement.scala 243:38]
  wire [2:0] ldu_0_io_replace_way_way_left_subtree_state = _GEN_110[5:3]; // @[package.scala 154:13]
  wire [2:0] ldu_0_io_replace_way_way_right_subtree_state = _GEN_110[2:0]; // @[Replacement.scala 245:38]
  wire  ldu_0_io_replace_way_way_left_subtree_older_1 = ldu_0_io_replace_way_way_left_subtree_state[2]; // @[Replacement.scala 243:38]
  wire  ldu_0_io_replace_way_way_left_subtree_state_1 = ldu_0_io_replace_way_way_left_subtree_state[1]; // @[package.scala 154:13]
  wire  ldu_0_io_replace_way_way_right_subtree_state_1 = ldu_0_io_replace_way_way_left_subtree_state[0]; // @[Replacement.scala 245:38]
  wire  _ldu_0_io_replace_way_way_T_2 = ldu_0_io_replace_way_way_left_subtree_older_1 ?
    ldu_0_io_replace_way_way_left_subtree_state_1 : ldu_0_io_replace_way_way_right_subtree_state_1; // @[Replacement.scala 250:16]
  wire [1:0] _ldu_0_io_replace_way_way_T_3 = {ldu_0_io_replace_way_way_left_subtree_older_1,
    _ldu_0_io_replace_way_way_T_2}; // @[Cat.scala 31:58]
  wire  ldu_0_io_replace_way_way_left_subtree_older_2 = ldu_0_io_replace_way_way_right_subtree_state[2]; // @[Replacement.scala 243:38]
  wire  ldu_0_io_replace_way_way_left_subtree_state_2 = ldu_0_io_replace_way_way_right_subtree_state[1]; // @[package.scala 154:13]
  wire  ldu_0_io_replace_way_way_right_subtree_state_2 = ldu_0_io_replace_way_way_right_subtree_state[0]; // @[Replacement.scala 245:38]
  wire  _ldu_0_io_replace_way_way_T_6 = ldu_0_io_replace_way_way_left_subtree_older_2 ?
    ldu_0_io_replace_way_way_left_subtree_state_2 : ldu_0_io_replace_way_way_right_subtree_state_2; // @[Replacement.scala 250:16]
  wire [1:0] _ldu_0_io_replace_way_way_T_7 = {ldu_0_io_replace_way_way_left_subtree_older_2,
    _ldu_0_io_replace_way_way_T_6}; // @[Cat.scala 31:58]
  wire [1:0] _ldu_0_io_replace_way_way_T_8 = ldu_0_io_replace_way_way_left_subtree_older ? _ldu_0_io_replace_way_way_T_3
     : _ldu_0_io_replace_way_way_T_7; // @[Replacement.scala 250:16]
  wire [6:0] _GEN_113 = 6'h1 == ldu_1_io_replace_way_set_bits ? state_vec_1 : state_vec_0; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_114 = 6'h2 == ldu_1_io_replace_way_set_bits ? state_vec_2 : _GEN_113; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_115 = 6'h3 == ldu_1_io_replace_way_set_bits ? state_vec_3 : _GEN_114; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_116 = 6'h4 == ldu_1_io_replace_way_set_bits ? state_vec_4 : _GEN_115; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_117 = 6'h5 == ldu_1_io_replace_way_set_bits ? state_vec_5 : _GEN_116; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_118 = 6'h6 == ldu_1_io_replace_way_set_bits ? state_vec_6 : _GEN_117; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_119 = 6'h7 == ldu_1_io_replace_way_set_bits ? state_vec_7 : _GEN_118; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_120 = 6'h8 == ldu_1_io_replace_way_set_bits ? state_vec_8 : _GEN_119; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_121 = 6'h9 == ldu_1_io_replace_way_set_bits ? state_vec_9 : _GEN_120; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_122 = 6'ha == ldu_1_io_replace_way_set_bits ? state_vec_10 : _GEN_121; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_123 = 6'hb == ldu_1_io_replace_way_set_bits ? state_vec_11 : _GEN_122; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_124 = 6'hc == ldu_1_io_replace_way_set_bits ? state_vec_12 : _GEN_123; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_125 = 6'hd == ldu_1_io_replace_way_set_bits ? state_vec_13 : _GEN_124; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_126 = 6'he == ldu_1_io_replace_way_set_bits ? state_vec_14 : _GEN_125; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_127 = 6'hf == ldu_1_io_replace_way_set_bits ? state_vec_15 : _GEN_126; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_128 = 6'h10 == ldu_1_io_replace_way_set_bits ? state_vec_16 : _GEN_127; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_129 = 6'h11 == ldu_1_io_replace_way_set_bits ? state_vec_17 : _GEN_128; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_130 = 6'h12 == ldu_1_io_replace_way_set_bits ? state_vec_18 : _GEN_129; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_131 = 6'h13 == ldu_1_io_replace_way_set_bits ? state_vec_19 : _GEN_130; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_132 = 6'h14 == ldu_1_io_replace_way_set_bits ? state_vec_20 : _GEN_131; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_133 = 6'h15 == ldu_1_io_replace_way_set_bits ? state_vec_21 : _GEN_132; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_134 = 6'h16 == ldu_1_io_replace_way_set_bits ? state_vec_22 : _GEN_133; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_135 = 6'h17 == ldu_1_io_replace_way_set_bits ? state_vec_23 : _GEN_134; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_136 = 6'h18 == ldu_1_io_replace_way_set_bits ? state_vec_24 : _GEN_135; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_137 = 6'h19 == ldu_1_io_replace_way_set_bits ? state_vec_25 : _GEN_136; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_138 = 6'h1a == ldu_1_io_replace_way_set_bits ? state_vec_26 : _GEN_137; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_139 = 6'h1b == ldu_1_io_replace_way_set_bits ? state_vec_27 : _GEN_138; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_140 = 6'h1c == ldu_1_io_replace_way_set_bits ? state_vec_28 : _GEN_139; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_141 = 6'h1d == ldu_1_io_replace_way_set_bits ? state_vec_29 : _GEN_140; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_142 = 6'h1e == ldu_1_io_replace_way_set_bits ? state_vec_30 : _GEN_141; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_143 = 6'h1f == ldu_1_io_replace_way_set_bits ? state_vec_31 : _GEN_142; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_144 = 6'h20 == ldu_1_io_replace_way_set_bits ? state_vec_32 : _GEN_143; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_145 = 6'h21 == ldu_1_io_replace_way_set_bits ? state_vec_33 : _GEN_144; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_146 = 6'h22 == ldu_1_io_replace_way_set_bits ? state_vec_34 : _GEN_145; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_147 = 6'h23 == ldu_1_io_replace_way_set_bits ? state_vec_35 : _GEN_146; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_148 = 6'h24 == ldu_1_io_replace_way_set_bits ? state_vec_36 : _GEN_147; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_149 = 6'h25 == ldu_1_io_replace_way_set_bits ? state_vec_37 : _GEN_148; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_150 = 6'h26 == ldu_1_io_replace_way_set_bits ? state_vec_38 : _GEN_149; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_151 = 6'h27 == ldu_1_io_replace_way_set_bits ? state_vec_39 : _GEN_150; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_152 = 6'h28 == ldu_1_io_replace_way_set_bits ? state_vec_40 : _GEN_151; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_153 = 6'h29 == ldu_1_io_replace_way_set_bits ? state_vec_41 : _GEN_152; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_154 = 6'h2a == ldu_1_io_replace_way_set_bits ? state_vec_42 : _GEN_153; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_155 = 6'h2b == ldu_1_io_replace_way_set_bits ? state_vec_43 : _GEN_154; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_156 = 6'h2c == ldu_1_io_replace_way_set_bits ? state_vec_44 : _GEN_155; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_157 = 6'h2d == ldu_1_io_replace_way_set_bits ? state_vec_45 : _GEN_156; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_158 = 6'h2e == ldu_1_io_replace_way_set_bits ? state_vec_46 : _GEN_157; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_159 = 6'h2f == ldu_1_io_replace_way_set_bits ? state_vec_47 : _GEN_158; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_160 = 6'h30 == ldu_1_io_replace_way_set_bits ? state_vec_48 : _GEN_159; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_161 = 6'h31 == ldu_1_io_replace_way_set_bits ? state_vec_49 : _GEN_160; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_162 = 6'h32 == ldu_1_io_replace_way_set_bits ? state_vec_50 : _GEN_161; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_163 = 6'h33 == ldu_1_io_replace_way_set_bits ? state_vec_51 : _GEN_162; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_164 = 6'h34 == ldu_1_io_replace_way_set_bits ? state_vec_52 : _GEN_163; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_165 = 6'h35 == ldu_1_io_replace_way_set_bits ? state_vec_53 : _GEN_164; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_166 = 6'h36 == ldu_1_io_replace_way_set_bits ? state_vec_54 : _GEN_165; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_167 = 6'h37 == ldu_1_io_replace_way_set_bits ? state_vec_55 : _GEN_166; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_168 = 6'h38 == ldu_1_io_replace_way_set_bits ? state_vec_56 : _GEN_167; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_169 = 6'h39 == ldu_1_io_replace_way_set_bits ? state_vec_57 : _GEN_168; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_170 = 6'h3a == ldu_1_io_replace_way_set_bits ? state_vec_58 : _GEN_169; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_171 = 6'h3b == ldu_1_io_replace_way_set_bits ? state_vec_59 : _GEN_170; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_172 = 6'h3c == ldu_1_io_replace_way_set_bits ? state_vec_60 : _GEN_171; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_173 = 6'h3d == ldu_1_io_replace_way_set_bits ? state_vec_61 : _GEN_172; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_174 = 6'h3e == ldu_1_io_replace_way_set_bits ? state_vec_62 : _GEN_173; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_175 = 6'h3f == ldu_1_io_replace_way_set_bits ? state_vec_63 : _GEN_174; // @[Replacement.scala 243:{38,38}]
  wire  ldu_1_io_replace_way_way_left_subtree_older = _GEN_175[6]; // @[Replacement.scala 243:38]
  wire [2:0] ldu_1_io_replace_way_way_left_subtree_state = _GEN_175[5:3]; // @[package.scala 154:13]
  wire [2:0] ldu_1_io_replace_way_way_right_subtree_state = _GEN_175[2:0]; // @[Replacement.scala 245:38]
  wire  ldu_1_io_replace_way_way_left_subtree_older_1 = ldu_1_io_replace_way_way_left_subtree_state[2]; // @[Replacement.scala 243:38]
  wire  ldu_1_io_replace_way_way_left_subtree_state_1 = ldu_1_io_replace_way_way_left_subtree_state[1]; // @[package.scala 154:13]
  wire  ldu_1_io_replace_way_way_right_subtree_state_1 = ldu_1_io_replace_way_way_left_subtree_state[0]; // @[Replacement.scala 245:38]
  wire  _ldu_1_io_replace_way_way_T_2 = ldu_1_io_replace_way_way_left_subtree_older_1 ?
    ldu_1_io_replace_way_way_left_subtree_state_1 : ldu_1_io_replace_way_way_right_subtree_state_1; // @[Replacement.scala 250:16]
  wire [1:0] _ldu_1_io_replace_way_way_T_3 = {ldu_1_io_replace_way_way_left_subtree_older_1,
    _ldu_1_io_replace_way_way_T_2}; // @[Cat.scala 31:58]
  wire  ldu_1_io_replace_way_way_left_subtree_older_2 = ldu_1_io_replace_way_way_right_subtree_state[2]; // @[Replacement.scala 243:38]
  wire  ldu_1_io_replace_way_way_left_subtree_state_2 = ldu_1_io_replace_way_way_right_subtree_state[1]; // @[package.scala 154:13]
  wire  ldu_1_io_replace_way_way_right_subtree_state_2 = ldu_1_io_replace_way_way_right_subtree_state[0]; // @[Replacement.scala 245:38]
  wire  _ldu_1_io_replace_way_way_T_6 = ldu_1_io_replace_way_way_left_subtree_older_2 ?
    ldu_1_io_replace_way_way_left_subtree_state_2 : ldu_1_io_replace_way_way_right_subtree_state_2; // @[Replacement.scala 250:16]
  wire [1:0] _ldu_1_io_replace_way_way_T_7 = {ldu_1_io_replace_way_way_left_subtree_older_2,
    _ldu_1_io_replace_way_way_T_6}; // @[Cat.scala 31:58]
  wire [1:0] _ldu_1_io_replace_way_way_T_8 = ldu_1_io_replace_way_way_left_subtree_older ? _ldu_1_io_replace_way_way_T_3
     : _ldu_1_io_replace_way_way_T_7; // @[Replacement.scala 250:16]
  wire [6:0] _GEN_178 = 6'h1 == mainPipe_io_replace_way_set_bits ? state_vec_1 : state_vec_0; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_179 = 6'h2 == mainPipe_io_replace_way_set_bits ? state_vec_2 : _GEN_178; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_180 = 6'h3 == mainPipe_io_replace_way_set_bits ? state_vec_3 : _GEN_179; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_181 = 6'h4 == mainPipe_io_replace_way_set_bits ? state_vec_4 : _GEN_180; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_182 = 6'h5 == mainPipe_io_replace_way_set_bits ? state_vec_5 : _GEN_181; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_183 = 6'h6 == mainPipe_io_replace_way_set_bits ? state_vec_6 : _GEN_182; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_184 = 6'h7 == mainPipe_io_replace_way_set_bits ? state_vec_7 : _GEN_183; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_185 = 6'h8 == mainPipe_io_replace_way_set_bits ? state_vec_8 : _GEN_184; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_186 = 6'h9 == mainPipe_io_replace_way_set_bits ? state_vec_9 : _GEN_185; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_187 = 6'ha == mainPipe_io_replace_way_set_bits ? state_vec_10 : _GEN_186; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_188 = 6'hb == mainPipe_io_replace_way_set_bits ? state_vec_11 : _GEN_187; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_189 = 6'hc == mainPipe_io_replace_way_set_bits ? state_vec_12 : _GEN_188; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_190 = 6'hd == mainPipe_io_replace_way_set_bits ? state_vec_13 : _GEN_189; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_191 = 6'he == mainPipe_io_replace_way_set_bits ? state_vec_14 : _GEN_190; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_192 = 6'hf == mainPipe_io_replace_way_set_bits ? state_vec_15 : _GEN_191; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_193 = 6'h10 == mainPipe_io_replace_way_set_bits ? state_vec_16 : _GEN_192; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_194 = 6'h11 == mainPipe_io_replace_way_set_bits ? state_vec_17 : _GEN_193; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_195 = 6'h12 == mainPipe_io_replace_way_set_bits ? state_vec_18 : _GEN_194; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_196 = 6'h13 == mainPipe_io_replace_way_set_bits ? state_vec_19 : _GEN_195; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_197 = 6'h14 == mainPipe_io_replace_way_set_bits ? state_vec_20 : _GEN_196; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_198 = 6'h15 == mainPipe_io_replace_way_set_bits ? state_vec_21 : _GEN_197; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_199 = 6'h16 == mainPipe_io_replace_way_set_bits ? state_vec_22 : _GEN_198; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_200 = 6'h17 == mainPipe_io_replace_way_set_bits ? state_vec_23 : _GEN_199; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_201 = 6'h18 == mainPipe_io_replace_way_set_bits ? state_vec_24 : _GEN_200; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_202 = 6'h19 == mainPipe_io_replace_way_set_bits ? state_vec_25 : _GEN_201; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_203 = 6'h1a == mainPipe_io_replace_way_set_bits ? state_vec_26 : _GEN_202; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_204 = 6'h1b == mainPipe_io_replace_way_set_bits ? state_vec_27 : _GEN_203; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_205 = 6'h1c == mainPipe_io_replace_way_set_bits ? state_vec_28 : _GEN_204; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_206 = 6'h1d == mainPipe_io_replace_way_set_bits ? state_vec_29 : _GEN_205; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_207 = 6'h1e == mainPipe_io_replace_way_set_bits ? state_vec_30 : _GEN_206; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_208 = 6'h1f == mainPipe_io_replace_way_set_bits ? state_vec_31 : _GEN_207; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_209 = 6'h20 == mainPipe_io_replace_way_set_bits ? state_vec_32 : _GEN_208; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_210 = 6'h21 == mainPipe_io_replace_way_set_bits ? state_vec_33 : _GEN_209; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_211 = 6'h22 == mainPipe_io_replace_way_set_bits ? state_vec_34 : _GEN_210; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_212 = 6'h23 == mainPipe_io_replace_way_set_bits ? state_vec_35 : _GEN_211; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_213 = 6'h24 == mainPipe_io_replace_way_set_bits ? state_vec_36 : _GEN_212; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_214 = 6'h25 == mainPipe_io_replace_way_set_bits ? state_vec_37 : _GEN_213; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_215 = 6'h26 == mainPipe_io_replace_way_set_bits ? state_vec_38 : _GEN_214; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_216 = 6'h27 == mainPipe_io_replace_way_set_bits ? state_vec_39 : _GEN_215; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_217 = 6'h28 == mainPipe_io_replace_way_set_bits ? state_vec_40 : _GEN_216; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_218 = 6'h29 == mainPipe_io_replace_way_set_bits ? state_vec_41 : _GEN_217; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_219 = 6'h2a == mainPipe_io_replace_way_set_bits ? state_vec_42 : _GEN_218; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_220 = 6'h2b == mainPipe_io_replace_way_set_bits ? state_vec_43 : _GEN_219; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_221 = 6'h2c == mainPipe_io_replace_way_set_bits ? state_vec_44 : _GEN_220; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_222 = 6'h2d == mainPipe_io_replace_way_set_bits ? state_vec_45 : _GEN_221; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_223 = 6'h2e == mainPipe_io_replace_way_set_bits ? state_vec_46 : _GEN_222; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_224 = 6'h2f == mainPipe_io_replace_way_set_bits ? state_vec_47 : _GEN_223; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_225 = 6'h30 == mainPipe_io_replace_way_set_bits ? state_vec_48 : _GEN_224; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_226 = 6'h31 == mainPipe_io_replace_way_set_bits ? state_vec_49 : _GEN_225; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_227 = 6'h32 == mainPipe_io_replace_way_set_bits ? state_vec_50 : _GEN_226; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_228 = 6'h33 == mainPipe_io_replace_way_set_bits ? state_vec_51 : _GEN_227; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_229 = 6'h34 == mainPipe_io_replace_way_set_bits ? state_vec_52 : _GEN_228; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_230 = 6'h35 == mainPipe_io_replace_way_set_bits ? state_vec_53 : _GEN_229; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_231 = 6'h36 == mainPipe_io_replace_way_set_bits ? state_vec_54 : _GEN_230; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_232 = 6'h37 == mainPipe_io_replace_way_set_bits ? state_vec_55 : _GEN_231; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_233 = 6'h38 == mainPipe_io_replace_way_set_bits ? state_vec_56 : _GEN_232; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_234 = 6'h39 == mainPipe_io_replace_way_set_bits ? state_vec_57 : _GEN_233; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_235 = 6'h3a == mainPipe_io_replace_way_set_bits ? state_vec_58 : _GEN_234; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_236 = 6'h3b == mainPipe_io_replace_way_set_bits ? state_vec_59 : _GEN_235; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_237 = 6'h3c == mainPipe_io_replace_way_set_bits ? state_vec_60 : _GEN_236; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_238 = 6'h3d == mainPipe_io_replace_way_set_bits ? state_vec_61 : _GEN_237; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_239 = 6'h3e == mainPipe_io_replace_way_set_bits ? state_vec_62 : _GEN_238; // @[Replacement.scala 243:{38,38}]
  wire [6:0] _GEN_240 = 6'h3f == mainPipe_io_replace_way_set_bits ? state_vec_63 : _GEN_239; // @[Replacement.scala 243:{38,38}]
  wire  mainPipe_io_replace_way_way_left_subtree_older = _GEN_240[6]; // @[Replacement.scala 243:38]
  wire [2:0] mainPipe_io_replace_way_way_left_subtree_state = _GEN_240[5:3]; // @[package.scala 154:13]
  wire [2:0] mainPipe_io_replace_way_way_right_subtree_state = _GEN_240[2:0]; // @[Replacement.scala 245:38]
  wire  mainPipe_io_replace_way_way_left_subtree_older_1 = mainPipe_io_replace_way_way_left_subtree_state[2]; // @[Replacement.scala 243:38]
  wire  mainPipe_io_replace_way_way_left_subtree_state_1 = mainPipe_io_replace_way_way_left_subtree_state[1]; // @[package.scala 154:13]
  wire  mainPipe_io_replace_way_way_right_subtree_state_1 = mainPipe_io_replace_way_way_left_subtree_state[0]; // @[Replacement.scala 245:38]
  wire  _mainPipe_io_replace_way_way_T_2 = mainPipe_io_replace_way_way_left_subtree_older_1 ?
    mainPipe_io_replace_way_way_left_subtree_state_1 : mainPipe_io_replace_way_way_right_subtree_state_1; // @[Replacement.scala 250:16]
  wire [1:0] _mainPipe_io_replace_way_way_T_3 = {mainPipe_io_replace_way_way_left_subtree_older_1,
    _mainPipe_io_replace_way_way_T_2}; // @[Cat.scala 31:58]
  wire  mainPipe_io_replace_way_way_left_subtree_older_2 = mainPipe_io_replace_way_way_right_subtree_state[2]; // @[Replacement.scala 243:38]
  wire  mainPipe_io_replace_way_way_left_subtree_state_2 = mainPipe_io_replace_way_way_right_subtree_state[1]; // @[package.scala 154:13]
  wire  mainPipe_io_replace_way_way_right_subtree_state_2 = mainPipe_io_replace_way_way_right_subtree_state[0]; // @[Replacement.scala 245:38]
  wire  _mainPipe_io_replace_way_way_T_6 = mainPipe_io_replace_way_way_left_subtree_older_2 ?
    mainPipe_io_replace_way_way_left_subtree_state_2 : mainPipe_io_replace_way_way_right_subtree_state_2; // @[Replacement.scala 250:16]
  wire [1:0] _mainPipe_io_replace_way_way_T_7 = {mainPipe_io_replace_way_way_left_subtree_older_2,
    _mainPipe_io_replace_way_way_T_6}; // @[Cat.scala 31:58]
  wire [1:0] _mainPipe_io_replace_way_way_T_8 = mainPipe_io_replace_way_way_left_subtree_older ?
    _mainPipe_io_replace_way_way_T_3 : _mainPipe_io_replace_way_way_T_7; // @[Replacement.scala 250:16]
  wire  touchWays_0_valid = ldu_0_io_replace_access_valid; // @[DCacheWrapper.scala 1370:53 1373:15]
  wire  set_touch_ways_0_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h0; // @[Replacement.scala 384:30]
  wire  touchWays_1_valid = ldu_1_io_replace_access_valid; // @[DCacheWrapper.scala 1370:53 1373:15]
  wire  set_touch_ways_1_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h0; // @[Replacement.scala 384:30]
  wire  touchWays_2_valid = mainPipe_io_replace_access_valid; // @[DCacheWrapper.scala 1370:53 1373:15]
  wire  set_touch_ways_2_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h0; // @[Replacement.scala 384:30]
  wire  _T_112 = set_touch_ways_0_valid | set_touch_ways_1_valid | set_touch_ways_2_valid; // @[package.scala 72:59]
  wire [2:0] touchWays_0_bits = ldu_0_io_replace_access_bits_way; // @[DCacheWrapper.scala 1370:53 1374:14]
  wire  state_vec_0_set_left_older = ~touchWays_0_bits[2]; // @[Replacement.scala 196:33]
  wire [2:0] state_vec_0_left_subtree_state = state_vec_0[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_0_right_subtree_state = state_vec_0[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_0_set_left_older_1 = ~touchWays_0_bits[1]; // @[Replacement.scala 196:33]
  wire  state_vec_0_left_subtree_state_1 = state_vec_0_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_0_right_subtree_state_1 = state_vec_0_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_0_T_3 = ~touchWays_0_bits[0]; // @[Replacement.scala 218:7]
  wire  _state_vec_0_T_4 = state_vec_0_set_left_older_1 ? state_vec_0_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_0_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_0_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_0_T_9 = {state_vec_0_set_left_older_1,_state_vec_0_T_4,_state_vec_0_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_0_T_10 = state_vec_0_set_left_older ? state_vec_0_left_subtree_state : _state_vec_0_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_0_left_subtree_state_2 = state_vec_0_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_0_right_subtree_state_2 = state_vec_0_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_0_T_15 = state_vec_0_set_left_older_1 ? state_vec_0_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_0_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_0_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_0_T_20 = {state_vec_0_set_left_older_1,_state_vec_0_T_15,_state_vec_0_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_0_T_21 = state_vec_0_set_left_older ? _state_vec_0_T_20 : state_vec_0_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_0_T_22 = {state_vec_0_set_left_older,_state_vec_0_T_10,_state_vec_0_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_0_T_23 = set_touch_ways_0_valid ? _state_vec_0_T_22 : state_vec_0; // @[Replacement.scala 22:56]
  wire [2:0] touchWays_1_bits = ldu_1_io_replace_access_bits_way; // @[DCacheWrapper.scala 1370:53 1374:14]
  wire  state_vec_0_set_left_older_3 = ~touchWays_1_bits[2]; // @[Replacement.scala 196:33]
  wire [2:0] state_vec_0_left_subtree_state_3 = _state_vec_0_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_0_right_subtree_state_3 = _state_vec_0_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_0_set_left_older_4 = ~touchWays_1_bits[1]; // @[Replacement.scala 196:33]
  wire  state_vec_0_left_subtree_state_4 = state_vec_0_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_0_right_subtree_state_4 = state_vec_0_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_0_T_27 = ~touchWays_1_bits[0]; // @[Replacement.scala 218:7]
  wire  _state_vec_0_T_28 = state_vec_0_set_left_older_4 ? state_vec_0_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_0_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_0_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_0_T_33 = {state_vec_0_set_left_older_4,_state_vec_0_T_28,_state_vec_0_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_0_T_34 = state_vec_0_set_left_older_3 ? state_vec_0_left_subtree_state_3 : _state_vec_0_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_0_left_subtree_state_5 = state_vec_0_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_0_right_subtree_state_5 = state_vec_0_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_0_T_39 = state_vec_0_set_left_older_4 ? state_vec_0_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_0_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_0_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_0_T_44 = {state_vec_0_set_left_older_4,_state_vec_0_T_39,_state_vec_0_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_0_T_45 = state_vec_0_set_left_older_3 ? _state_vec_0_T_44 : state_vec_0_right_subtree_state_3; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_0_T_46 = {state_vec_0_set_left_older_3,_state_vec_0_T_34,_state_vec_0_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_0_T_47 = set_touch_ways_1_valid ? _state_vec_0_T_46 : _state_vec_0_T_23; // @[Replacement.scala 22:56]
  wire [2:0] touchWays_2_bits = mainPipe_io_replace_access_bits_way; // @[DCacheWrapper.scala 1370:53 1374:14]
  wire  state_vec_0_set_left_older_6 = ~touchWays_2_bits[2]; // @[Replacement.scala 196:33]
  wire [2:0] state_vec_0_left_subtree_state_6 = _state_vec_0_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_0_right_subtree_state_6 = _state_vec_0_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_0_set_left_older_7 = ~touchWays_2_bits[1]; // @[Replacement.scala 196:33]
  wire  state_vec_0_left_subtree_state_7 = state_vec_0_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_0_right_subtree_state_7 = state_vec_0_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_0_T_51 = ~touchWays_2_bits[0]; // @[Replacement.scala 218:7]
  wire  _state_vec_0_T_52 = state_vec_0_set_left_older_7 ? state_vec_0_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_0_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_0_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_0_T_57 = {state_vec_0_set_left_older_7,_state_vec_0_T_52,_state_vec_0_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_0_T_58 = state_vec_0_set_left_older_6 ? state_vec_0_left_subtree_state_6 : _state_vec_0_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_0_left_subtree_state_8 = state_vec_0_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_0_right_subtree_state_8 = state_vec_0_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_0_T_63 = state_vec_0_set_left_older_7 ? state_vec_0_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_0_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_0_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_0_T_68 = {state_vec_0_set_left_older_7,_state_vec_0_T_63,_state_vec_0_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_0_T_69 = state_vec_0_set_left_older_6 ? _state_vec_0_T_68 : state_vec_0_right_subtree_state_6; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_0_T_70 = {state_vec_0_set_left_older_6,_state_vec_0_T_58,_state_vec_0_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_1_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h1; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_1_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h1; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_1_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h1; // @[Replacement.scala 384:30]
  wire  _T_116 = set_touch_ways_0_1_valid | set_touch_ways_1_1_valid | set_touch_ways_2_1_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_1_left_subtree_state = state_vec_1[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_1_right_subtree_state = state_vec_1[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_1_left_subtree_state_1 = state_vec_1_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_1_right_subtree_state_1 = state_vec_1_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_1_T_4 = state_vec_0_set_left_older_1 ? state_vec_1_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_1_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_1_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_1_T_9 = {state_vec_0_set_left_older_1,_state_vec_1_T_4,_state_vec_1_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_1_T_10 = state_vec_0_set_left_older ? state_vec_1_left_subtree_state : _state_vec_1_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_1_left_subtree_state_2 = state_vec_1_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_1_right_subtree_state_2 = state_vec_1_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_1_T_15 = state_vec_0_set_left_older_1 ? state_vec_1_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_1_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_1_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_1_T_20 = {state_vec_0_set_left_older_1,_state_vec_1_T_15,_state_vec_1_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_1_T_21 = state_vec_0_set_left_older ? _state_vec_1_T_20 : state_vec_1_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_1_T_22 = {state_vec_0_set_left_older,_state_vec_1_T_10,_state_vec_1_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_1_T_23 = set_touch_ways_0_1_valid ? _state_vec_1_T_22 : state_vec_1; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_1_left_subtree_state_3 = _state_vec_1_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_1_right_subtree_state_3 = _state_vec_1_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_1_left_subtree_state_4 = state_vec_1_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_1_right_subtree_state_4 = state_vec_1_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_1_T_28 = state_vec_0_set_left_older_4 ? state_vec_1_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_1_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_1_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_1_T_33 = {state_vec_0_set_left_older_4,_state_vec_1_T_28,_state_vec_1_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_1_T_34 = state_vec_0_set_left_older_3 ? state_vec_1_left_subtree_state_3 : _state_vec_1_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_1_left_subtree_state_5 = state_vec_1_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_1_right_subtree_state_5 = state_vec_1_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_1_T_39 = state_vec_0_set_left_older_4 ? state_vec_1_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_1_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_1_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_1_T_44 = {state_vec_0_set_left_older_4,_state_vec_1_T_39,_state_vec_1_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_1_T_45 = state_vec_0_set_left_older_3 ? _state_vec_1_T_44 : state_vec_1_right_subtree_state_3; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_1_T_46 = {state_vec_0_set_left_older_3,_state_vec_1_T_34,_state_vec_1_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_1_T_47 = set_touch_ways_1_1_valid ? _state_vec_1_T_46 : _state_vec_1_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_1_left_subtree_state_6 = _state_vec_1_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_1_right_subtree_state_6 = _state_vec_1_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_1_left_subtree_state_7 = state_vec_1_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_1_right_subtree_state_7 = state_vec_1_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_1_T_52 = state_vec_0_set_left_older_7 ? state_vec_1_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_1_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_1_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_1_T_57 = {state_vec_0_set_left_older_7,_state_vec_1_T_52,_state_vec_1_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_1_T_58 = state_vec_0_set_left_older_6 ? state_vec_1_left_subtree_state_6 : _state_vec_1_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_1_left_subtree_state_8 = state_vec_1_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_1_right_subtree_state_8 = state_vec_1_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_1_T_63 = state_vec_0_set_left_older_7 ? state_vec_1_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_1_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_1_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_1_T_68 = {state_vec_0_set_left_older_7,_state_vec_1_T_63,_state_vec_1_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_1_T_69 = state_vec_0_set_left_older_6 ? _state_vec_1_T_68 : state_vec_1_right_subtree_state_6; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_1_T_70 = {state_vec_0_set_left_older_6,_state_vec_1_T_58,_state_vec_1_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_2_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h2; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_2_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h2; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_2_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h2; // @[Replacement.scala 384:30]
  wire  _T_120 = set_touch_ways_0_2_valid | set_touch_ways_1_2_valid | set_touch_ways_2_2_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_2_left_subtree_state = state_vec_2[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_2_right_subtree_state = state_vec_2[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_2_left_subtree_state_1 = state_vec_2_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_2_right_subtree_state_1 = state_vec_2_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_2_T_4 = state_vec_0_set_left_older_1 ? state_vec_2_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_2_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_2_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_2_T_9 = {state_vec_0_set_left_older_1,_state_vec_2_T_4,_state_vec_2_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_2_T_10 = state_vec_0_set_left_older ? state_vec_2_left_subtree_state : _state_vec_2_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_2_left_subtree_state_2 = state_vec_2_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_2_right_subtree_state_2 = state_vec_2_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_2_T_15 = state_vec_0_set_left_older_1 ? state_vec_2_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_2_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_2_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_2_T_20 = {state_vec_0_set_left_older_1,_state_vec_2_T_15,_state_vec_2_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_2_T_21 = state_vec_0_set_left_older ? _state_vec_2_T_20 : state_vec_2_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_2_T_22 = {state_vec_0_set_left_older,_state_vec_2_T_10,_state_vec_2_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_2_T_23 = set_touch_ways_0_2_valid ? _state_vec_2_T_22 : state_vec_2; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_2_left_subtree_state_3 = _state_vec_2_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_2_right_subtree_state_3 = _state_vec_2_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_2_left_subtree_state_4 = state_vec_2_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_2_right_subtree_state_4 = state_vec_2_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_2_T_28 = state_vec_0_set_left_older_4 ? state_vec_2_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_2_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_2_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_2_T_33 = {state_vec_0_set_left_older_4,_state_vec_2_T_28,_state_vec_2_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_2_T_34 = state_vec_0_set_left_older_3 ? state_vec_2_left_subtree_state_3 : _state_vec_2_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_2_left_subtree_state_5 = state_vec_2_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_2_right_subtree_state_5 = state_vec_2_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_2_T_39 = state_vec_0_set_left_older_4 ? state_vec_2_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_2_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_2_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_2_T_44 = {state_vec_0_set_left_older_4,_state_vec_2_T_39,_state_vec_2_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_2_T_45 = state_vec_0_set_left_older_3 ? _state_vec_2_T_44 : state_vec_2_right_subtree_state_3; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_2_T_46 = {state_vec_0_set_left_older_3,_state_vec_2_T_34,_state_vec_2_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_2_T_47 = set_touch_ways_1_2_valid ? _state_vec_2_T_46 : _state_vec_2_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_2_left_subtree_state_6 = _state_vec_2_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_2_right_subtree_state_6 = _state_vec_2_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_2_left_subtree_state_7 = state_vec_2_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_2_right_subtree_state_7 = state_vec_2_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_2_T_52 = state_vec_0_set_left_older_7 ? state_vec_2_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_2_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_2_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_2_T_57 = {state_vec_0_set_left_older_7,_state_vec_2_T_52,_state_vec_2_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_2_T_58 = state_vec_0_set_left_older_6 ? state_vec_2_left_subtree_state_6 : _state_vec_2_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_2_left_subtree_state_8 = state_vec_2_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_2_right_subtree_state_8 = state_vec_2_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_2_T_63 = state_vec_0_set_left_older_7 ? state_vec_2_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_2_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_2_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_2_T_68 = {state_vec_0_set_left_older_7,_state_vec_2_T_63,_state_vec_2_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_2_T_69 = state_vec_0_set_left_older_6 ? _state_vec_2_T_68 : state_vec_2_right_subtree_state_6; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_2_T_70 = {state_vec_0_set_left_older_6,_state_vec_2_T_58,_state_vec_2_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_3_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h3; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_3_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h3; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_3_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h3; // @[Replacement.scala 384:30]
  wire  _T_124 = set_touch_ways_0_3_valid | set_touch_ways_1_3_valid | set_touch_ways_2_3_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_3_left_subtree_state = state_vec_3[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_3_right_subtree_state = state_vec_3[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_3_left_subtree_state_1 = state_vec_3_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_3_right_subtree_state_1 = state_vec_3_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_3_T_4 = state_vec_0_set_left_older_1 ? state_vec_3_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_3_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_3_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_3_T_9 = {state_vec_0_set_left_older_1,_state_vec_3_T_4,_state_vec_3_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_3_T_10 = state_vec_0_set_left_older ? state_vec_3_left_subtree_state : _state_vec_3_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_3_left_subtree_state_2 = state_vec_3_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_3_right_subtree_state_2 = state_vec_3_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_3_T_15 = state_vec_0_set_left_older_1 ? state_vec_3_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_3_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_3_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_3_T_20 = {state_vec_0_set_left_older_1,_state_vec_3_T_15,_state_vec_3_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_3_T_21 = state_vec_0_set_left_older ? _state_vec_3_T_20 : state_vec_3_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_3_T_22 = {state_vec_0_set_left_older,_state_vec_3_T_10,_state_vec_3_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_3_T_23 = set_touch_ways_0_3_valid ? _state_vec_3_T_22 : state_vec_3; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_3_left_subtree_state_3 = _state_vec_3_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_3_right_subtree_state_3 = _state_vec_3_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_3_left_subtree_state_4 = state_vec_3_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_3_right_subtree_state_4 = state_vec_3_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_3_T_28 = state_vec_0_set_left_older_4 ? state_vec_3_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_3_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_3_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_3_T_33 = {state_vec_0_set_left_older_4,_state_vec_3_T_28,_state_vec_3_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_3_T_34 = state_vec_0_set_left_older_3 ? state_vec_3_left_subtree_state_3 : _state_vec_3_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_3_left_subtree_state_5 = state_vec_3_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_3_right_subtree_state_5 = state_vec_3_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_3_T_39 = state_vec_0_set_left_older_4 ? state_vec_3_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_3_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_3_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_3_T_44 = {state_vec_0_set_left_older_4,_state_vec_3_T_39,_state_vec_3_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_3_T_45 = state_vec_0_set_left_older_3 ? _state_vec_3_T_44 : state_vec_3_right_subtree_state_3; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_3_T_46 = {state_vec_0_set_left_older_3,_state_vec_3_T_34,_state_vec_3_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_3_T_47 = set_touch_ways_1_3_valid ? _state_vec_3_T_46 : _state_vec_3_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_3_left_subtree_state_6 = _state_vec_3_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_3_right_subtree_state_6 = _state_vec_3_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_3_left_subtree_state_7 = state_vec_3_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_3_right_subtree_state_7 = state_vec_3_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_3_T_52 = state_vec_0_set_left_older_7 ? state_vec_3_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_3_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_3_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_3_T_57 = {state_vec_0_set_left_older_7,_state_vec_3_T_52,_state_vec_3_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_3_T_58 = state_vec_0_set_left_older_6 ? state_vec_3_left_subtree_state_6 : _state_vec_3_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_3_left_subtree_state_8 = state_vec_3_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_3_right_subtree_state_8 = state_vec_3_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_3_T_63 = state_vec_0_set_left_older_7 ? state_vec_3_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_3_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_3_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_3_T_68 = {state_vec_0_set_left_older_7,_state_vec_3_T_63,_state_vec_3_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_3_T_69 = state_vec_0_set_left_older_6 ? _state_vec_3_T_68 : state_vec_3_right_subtree_state_6; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_3_T_70 = {state_vec_0_set_left_older_6,_state_vec_3_T_58,_state_vec_3_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_4_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h4; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_4_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h4; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_4_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h4; // @[Replacement.scala 384:30]
  wire  _T_128 = set_touch_ways_0_4_valid | set_touch_ways_1_4_valid | set_touch_ways_2_4_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_4_left_subtree_state = state_vec_4[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_4_right_subtree_state = state_vec_4[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_4_left_subtree_state_1 = state_vec_4_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_4_right_subtree_state_1 = state_vec_4_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_4_T_4 = state_vec_0_set_left_older_1 ? state_vec_4_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_4_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_4_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_4_T_9 = {state_vec_0_set_left_older_1,_state_vec_4_T_4,_state_vec_4_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_4_T_10 = state_vec_0_set_left_older ? state_vec_4_left_subtree_state : _state_vec_4_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_4_left_subtree_state_2 = state_vec_4_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_4_right_subtree_state_2 = state_vec_4_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_4_T_15 = state_vec_0_set_left_older_1 ? state_vec_4_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_4_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_4_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_4_T_20 = {state_vec_0_set_left_older_1,_state_vec_4_T_15,_state_vec_4_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_4_T_21 = state_vec_0_set_left_older ? _state_vec_4_T_20 : state_vec_4_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_4_T_22 = {state_vec_0_set_left_older,_state_vec_4_T_10,_state_vec_4_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_4_T_23 = set_touch_ways_0_4_valid ? _state_vec_4_T_22 : state_vec_4; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_4_left_subtree_state_3 = _state_vec_4_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_4_right_subtree_state_3 = _state_vec_4_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_4_left_subtree_state_4 = state_vec_4_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_4_right_subtree_state_4 = state_vec_4_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_4_T_28 = state_vec_0_set_left_older_4 ? state_vec_4_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_4_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_4_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_4_T_33 = {state_vec_0_set_left_older_4,_state_vec_4_T_28,_state_vec_4_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_4_T_34 = state_vec_0_set_left_older_3 ? state_vec_4_left_subtree_state_3 : _state_vec_4_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_4_left_subtree_state_5 = state_vec_4_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_4_right_subtree_state_5 = state_vec_4_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_4_T_39 = state_vec_0_set_left_older_4 ? state_vec_4_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_4_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_4_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_4_T_44 = {state_vec_0_set_left_older_4,_state_vec_4_T_39,_state_vec_4_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_4_T_45 = state_vec_0_set_left_older_3 ? _state_vec_4_T_44 : state_vec_4_right_subtree_state_3; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_4_T_46 = {state_vec_0_set_left_older_3,_state_vec_4_T_34,_state_vec_4_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_4_T_47 = set_touch_ways_1_4_valid ? _state_vec_4_T_46 : _state_vec_4_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_4_left_subtree_state_6 = _state_vec_4_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_4_right_subtree_state_6 = _state_vec_4_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_4_left_subtree_state_7 = state_vec_4_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_4_right_subtree_state_7 = state_vec_4_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_4_T_52 = state_vec_0_set_left_older_7 ? state_vec_4_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_4_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_4_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_4_T_57 = {state_vec_0_set_left_older_7,_state_vec_4_T_52,_state_vec_4_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_4_T_58 = state_vec_0_set_left_older_6 ? state_vec_4_left_subtree_state_6 : _state_vec_4_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_4_left_subtree_state_8 = state_vec_4_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_4_right_subtree_state_8 = state_vec_4_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_4_T_63 = state_vec_0_set_left_older_7 ? state_vec_4_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_4_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_4_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_4_T_68 = {state_vec_0_set_left_older_7,_state_vec_4_T_63,_state_vec_4_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_4_T_69 = state_vec_0_set_left_older_6 ? _state_vec_4_T_68 : state_vec_4_right_subtree_state_6; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_4_T_70 = {state_vec_0_set_left_older_6,_state_vec_4_T_58,_state_vec_4_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_5_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h5; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_5_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h5; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_5_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h5; // @[Replacement.scala 384:30]
  wire  _T_132 = set_touch_ways_0_5_valid | set_touch_ways_1_5_valid | set_touch_ways_2_5_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_5_left_subtree_state = state_vec_5[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_5_right_subtree_state = state_vec_5[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_5_left_subtree_state_1 = state_vec_5_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_5_right_subtree_state_1 = state_vec_5_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_5_T_4 = state_vec_0_set_left_older_1 ? state_vec_5_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_5_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_5_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_5_T_9 = {state_vec_0_set_left_older_1,_state_vec_5_T_4,_state_vec_5_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_5_T_10 = state_vec_0_set_left_older ? state_vec_5_left_subtree_state : _state_vec_5_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_5_left_subtree_state_2 = state_vec_5_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_5_right_subtree_state_2 = state_vec_5_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_5_T_15 = state_vec_0_set_left_older_1 ? state_vec_5_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_5_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_5_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_5_T_20 = {state_vec_0_set_left_older_1,_state_vec_5_T_15,_state_vec_5_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_5_T_21 = state_vec_0_set_left_older ? _state_vec_5_T_20 : state_vec_5_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_5_T_22 = {state_vec_0_set_left_older,_state_vec_5_T_10,_state_vec_5_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_5_T_23 = set_touch_ways_0_5_valid ? _state_vec_5_T_22 : state_vec_5; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_5_left_subtree_state_3 = _state_vec_5_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_5_right_subtree_state_3 = _state_vec_5_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_5_left_subtree_state_4 = state_vec_5_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_5_right_subtree_state_4 = state_vec_5_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_5_T_28 = state_vec_0_set_left_older_4 ? state_vec_5_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_5_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_5_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_5_T_33 = {state_vec_0_set_left_older_4,_state_vec_5_T_28,_state_vec_5_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_5_T_34 = state_vec_0_set_left_older_3 ? state_vec_5_left_subtree_state_3 : _state_vec_5_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_5_left_subtree_state_5 = state_vec_5_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_5_right_subtree_state_5 = state_vec_5_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_5_T_39 = state_vec_0_set_left_older_4 ? state_vec_5_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_5_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_5_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_5_T_44 = {state_vec_0_set_left_older_4,_state_vec_5_T_39,_state_vec_5_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_5_T_45 = state_vec_0_set_left_older_3 ? _state_vec_5_T_44 : state_vec_5_right_subtree_state_3; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_5_T_46 = {state_vec_0_set_left_older_3,_state_vec_5_T_34,_state_vec_5_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_5_T_47 = set_touch_ways_1_5_valid ? _state_vec_5_T_46 : _state_vec_5_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_5_left_subtree_state_6 = _state_vec_5_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_5_right_subtree_state_6 = _state_vec_5_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_5_left_subtree_state_7 = state_vec_5_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_5_right_subtree_state_7 = state_vec_5_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_5_T_52 = state_vec_0_set_left_older_7 ? state_vec_5_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_5_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_5_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_5_T_57 = {state_vec_0_set_left_older_7,_state_vec_5_T_52,_state_vec_5_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_5_T_58 = state_vec_0_set_left_older_6 ? state_vec_5_left_subtree_state_6 : _state_vec_5_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_5_left_subtree_state_8 = state_vec_5_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_5_right_subtree_state_8 = state_vec_5_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_5_T_63 = state_vec_0_set_left_older_7 ? state_vec_5_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_5_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_5_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_5_T_68 = {state_vec_0_set_left_older_7,_state_vec_5_T_63,_state_vec_5_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_5_T_69 = state_vec_0_set_left_older_6 ? _state_vec_5_T_68 : state_vec_5_right_subtree_state_6; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_5_T_70 = {state_vec_0_set_left_older_6,_state_vec_5_T_58,_state_vec_5_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_6_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h6; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_6_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h6; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_6_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h6; // @[Replacement.scala 384:30]
  wire  _T_136 = set_touch_ways_0_6_valid | set_touch_ways_1_6_valid | set_touch_ways_2_6_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_6_left_subtree_state = state_vec_6[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_6_right_subtree_state = state_vec_6[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_6_left_subtree_state_1 = state_vec_6_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_6_right_subtree_state_1 = state_vec_6_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_6_T_4 = state_vec_0_set_left_older_1 ? state_vec_6_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_6_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_6_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_6_T_9 = {state_vec_0_set_left_older_1,_state_vec_6_T_4,_state_vec_6_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_6_T_10 = state_vec_0_set_left_older ? state_vec_6_left_subtree_state : _state_vec_6_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_6_left_subtree_state_2 = state_vec_6_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_6_right_subtree_state_2 = state_vec_6_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_6_T_15 = state_vec_0_set_left_older_1 ? state_vec_6_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_6_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_6_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_6_T_20 = {state_vec_0_set_left_older_1,_state_vec_6_T_15,_state_vec_6_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_6_T_21 = state_vec_0_set_left_older ? _state_vec_6_T_20 : state_vec_6_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_6_T_22 = {state_vec_0_set_left_older,_state_vec_6_T_10,_state_vec_6_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_6_T_23 = set_touch_ways_0_6_valid ? _state_vec_6_T_22 : state_vec_6; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_6_left_subtree_state_3 = _state_vec_6_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_6_right_subtree_state_3 = _state_vec_6_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_6_left_subtree_state_4 = state_vec_6_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_6_right_subtree_state_4 = state_vec_6_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_6_T_28 = state_vec_0_set_left_older_4 ? state_vec_6_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_6_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_6_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_6_T_33 = {state_vec_0_set_left_older_4,_state_vec_6_T_28,_state_vec_6_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_6_T_34 = state_vec_0_set_left_older_3 ? state_vec_6_left_subtree_state_3 : _state_vec_6_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_6_left_subtree_state_5 = state_vec_6_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_6_right_subtree_state_5 = state_vec_6_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_6_T_39 = state_vec_0_set_left_older_4 ? state_vec_6_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_6_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_6_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_6_T_44 = {state_vec_0_set_left_older_4,_state_vec_6_T_39,_state_vec_6_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_6_T_45 = state_vec_0_set_left_older_3 ? _state_vec_6_T_44 : state_vec_6_right_subtree_state_3; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_6_T_46 = {state_vec_0_set_left_older_3,_state_vec_6_T_34,_state_vec_6_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_6_T_47 = set_touch_ways_1_6_valid ? _state_vec_6_T_46 : _state_vec_6_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_6_left_subtree_state_6 = _state_vec_6_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_6_right_subtree_state_6 = _state_vec_6_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_6_left_subtree_state_7 = state_vec_6_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_6_right_subtree_state_7 = state_vec_6_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_6_T_52 = state_vec_0_set_left_older_7 ? state_vec_6_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_6_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_6_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_6_T_57 = {state_vec_0_set_left_older_7,_state_vec_6_T_52,_state_vec_6_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_6_T_58 = state_vec_0_set_left_older_6 ? state_vec_6_left_subtree_state_6 : _state_vec_6_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_6_left_subtree_state_8 = state_vec_6_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_6_right_subtree_state_8 = state_vec_6_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_6_T_63 = state_vec_0_set_left_older_7 ? state_vec_6_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_6_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_6_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_6_T_68 = {state_vec_0_set_left_older_7,_state_vec_6_T_63,_state_vec_6_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_6_T_69 = state_vec_0_set_left_older_6 ? _state_vec_6_T_68 : state_vec_6_right_subtree_state_6; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_6_T_70 = {state_vec_0_set_left_older_6,_state_vec_6_T_58,_state_vec_6_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_7_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h7; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_7_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h7; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_7_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h7; // @[Replacement.scala 384:30]
  wire  _T_140 = set_touch_ways_0_7_valid | set_touch_ways_1_7_valid | set_touch_ways_2_7_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_7_left_subtree_state = state_vec_7[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_7_right_subtree_state = state_vec_7[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_7_left_subtree_state_1 = state_vec_7_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_7_right_subtree_state_1 = state_vec_7_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_7_T_4 = state_vec_0_set_left_older_1 ? state_vec_7_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_7_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_7_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_7_T_9 = {state_vec_0_set_left_older_1,_state_vec_7_T_4,_state_vec_7_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_7_T_10 = state_vec_0_set_left_older ? state_vec_7_left_subtree_state : _state_vec_7_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_7_left_subtree_state_2 = state_vec_7_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_7_right_subtree_state_2 = state_vec_7_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_7_T_15 = state_vec_0_set_left_older_1 ? state_vec_7_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_7_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_7_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_7_T_20 = {state_vec_0_set_left_older_1,_state_vec_7_T_15,_state_vec_7_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_7_T_21 = state_vec_0_set_left_older ? _state_vec_7_T_20 : state_vec_7_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_7_T_22 = {state_vec_0_set_left_older,_state_vec_7_T_10,_state_vec_7_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_7_T_23 = set_touch_ways_0_7_valid ? _state_vec_7_T_22 : state_vec_7; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_7_left_subtree_state_3 = _state_vec_7_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_7_right_subtree_state_3 = _state_vec_7_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_7_left_subtree_state_4 = state_vec_7_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_7_right_subtree_state_4 = state_vec_7_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_7_T_28 = state_vec_0_set_left_older_4 ? state_vec_7_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_7_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_7_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_7_T_33 = {state_vec_0_set_left_older_4,_state_vec_7_T_28,_state_vec_7_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_7_T_34 = state_vec_0_set_left_older_3 ? state_vec_7_left_subtree_state_3 : _state_vec_7_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_7_left_subtree_state_5 = state_vec_7_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_7_right_subtree_state_5 = state_vec_7_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_7_T_39 = state_vec_0_set_left_older_4 ? state_vec_7_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_7_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_7_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_7_T_44 = {state_vec_0_set_left_older_4,_state_vec_7_T_39,_state_vec_7_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_7_T_45 = state_vec_0_set_left_older_3 ? _state_vec_7_T_44 : state_vec_7_right_subtree_state_3; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_7_T_46 = {state_vec_0_set_left_older_3,_state_vec_7_T_34,_state_vec_7_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_7_T_47 = set_touch_ways_1_7_valid ? _state_vec_7_T_46 : _state_vec_7_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_7_left_subtree_state_6 = _state_vec_7_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_7_right_subtree_state_6 = _state_vec_7_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_7_left_subtree_state_7 = state_vec_7_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_7_right_subtree_state_7 = state_vec_7_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_7_T_52 = state_vec_0_set_left_older_7 ? state_vec_7_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_7_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_7_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_7_T_57 = {state_vec_0_set_left_older_7,_state_vec_7_T_52,_state_vec_7_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_7_T_58 = state_vec_0_set_left_older_6 ? state_vec_7_left_subtree_state_6 : _state_vec_7_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_7_left_subtree_state_8 = state_vec_7_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_7_right_subtree_state_8 = state_vec_7_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_7_T_63 = state_vec_0_set_left_older_7 ? state_vec_7_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_7_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_7_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_7_T_68 = {state_vec_0_set_left_older_7,_state_vec_7_T_63,_state_vec_7_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_7_T_69 = state_vec_0_set_left_older_6 ? _state_vec_7_T_68 : state_vec_7_right_subtree_state_6; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_7_T_70 = {state_vec_0_set_left_older_6,_state_vec_7_T_58,_state_vec_7_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_8_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h8; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_8_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h8; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_8_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h8; // @[Replacement.scala 384:30]
  wire  _T_144 = set_touch_ways_0_8_valid | set_touch_ways_1_8_valid | set_touch_ways_2_8_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_8_left_subtree_state = state_vec_8[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_8_right_subtree_state = state_vec_8[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_8_left_subtree_state_1 = state_vec_8_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_8_right_subtree_state_1 = state_vec_8_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_8_T_4 = state_vec_0_set_left_older_1 ? state_vec_8_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_8_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_8_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_8_T_9 = {state_vec_0_set_left_older_1,_state_vec_8_T_4,_state_vec_8_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_8_T_10 = state_vec_0_set_left_older ? state_vec_8_left_subtree_state : _state_vec_8_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_8_left_subtree_state_2 = state_vec_8_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_8_right_subtree_state_2 = state_vec_8_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_8_T_15 = state_vec_0_set_left_older_1 ? state_vec_8_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_8_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_8_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_8_T_20 = {state_vec_0_set_left_older_1,_state_vec_8_T_15,_state_vec_8_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_8_T_21 = state_vec_0_set_left_older ? _state_vec_8_T_20 : state_vec_8_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_8_T_22 = {state_vec_0_set_left_older,_state_vec_8_T_10,_state_vec_8_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_8_T_23 = set_touch_ways_0_8_valid ? _state_vec_8_T_22 : state_vec_8; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_8_left_subtree_state_3 = _state_vec_8_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_8_right_subtree_state_3 = _state_vec_8_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_8_left_subtree_state_4 = state_vec_8_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_8_right_subtree_state_4 = state_vec_8_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_8_T_28 = state_vec_0_set_left_older_4 ? state_vec_8_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_8_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_8_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_8_T_33 = {state_vec_0_set_left_older_4,_state_vec_8_T_28,_state_vec_8_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_8_T_34 = state_vec_0_set_left_older_3 ? state_vec_8_left_subtree_state_3 : _state_vec_8_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_8_left_subtree_state_5 = state_vec_8_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_8_right_subtree_state_5 = state_vec_8_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_8_T_39 = state_vec_0_set_left_older_4 ? state_vec_8_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_8_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_8_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_8_T_44 = {state_vec_0_set_left_older_4,_state_vec_8_T_39,_state_vec_8_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_8_T_45 = state_vec_0_set_left_older_3 ? _state_vec_8_T_44 : state_vec_8_right_subtree_state_3; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_8_T_46 = {state_vec_0_set_left_older_3,_state_vec_8_T_34,_state_vec_8_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_8_T_47 = set_touch_ways_1_8_valid ? _state_vec_8_T_46 : _state_vec_8_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_8_left_subtree_state_6 = _state_vec_8_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_8_right_subtree_state_6 = _state_vec_8_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_8_left_subtree_state_7 = state_vec_8_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_8_right_subtree_state_7 = state_vec_8_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_8_T_52 = state_vec_0_set_left_older_7 ? state_vec_8_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_8_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_8_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_8_T_57 = {state_vec_0_set_left_older_7,_state_vec_8_T_52,_state_vec_8_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_8_T_58 = state_vec_0_set_left_older_6 ? state_vec_8_left_subtree_state_6 : _state_vec_8_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_8_left_subtree_state_8 = state_vec_8_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_8_right_subtree_state_8 = state_vec_8_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_8_T_63 = state_vec_0_set_left_older_7 ? state_vec_8_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_8_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_8_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_8_T_68 = {state_vec_0_set_left_older_7,_state_vec_8_T_63,_state_vec_8_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_8_T_69 = state_vec_0_set_left_older_6 ? _state_vec_8_T_68 : state_vec_8_right_subtree_state_6; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_8_T_70 = {state_vec_0_set_left_older_6,_state_vec_8_T_58,_state_vec_8_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_9_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h9; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_9_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h9; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_9_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h9; // @[Replacement.scala 384:30]
  wire  _T_148 = set_touch_ways_0_9_valid | set_touch_ways_1_9_valid | set_touch_ways_2_9_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_9_left_subtree_state = state_vec_9[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_9_right_subtree_state = state_vec_9[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_9_left_subtree_state_1 = state_vec_9_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_9_right_subtree_state_1 = state_vec_9_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_9_T_4 = state_vec_0_set_left_older_1 ? state_vec_9_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_9_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_9_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_9_T_9 = {state_vec_0_set_left_older_1,_state_vec_9_T_4,_state_vec_9_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_9_T_10 = state_vec_0_set_left_older ? state_vec_9_left_subtree_state : _state_vec_9_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_9_left_subtree_state_2 = state_vec_9_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_9_right_subtree_state_2 = state_vec_9_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_9_T_15 = state_vec_0_set_left_older_1 ? state_vec_9_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_9_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_9_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_9_T_20 = {state_vec_0_set_left_older_1,_state_vec_9_T_15,_state_vec_9_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_9_T_21 = state_vec_0_set_left_older ? _state_vec_9_T_20 : state_vec_9_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_9_T_22 = {state_vec_0_set_left_older,_state_vec_9_T_10,_state_vec_9_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_9_T_23 = set_touch_ways_0_9_valid ? _state_vec_9_T_22 : state_vec_9; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_9_left_subtree_state_3 = _state_vec_9_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_9_right_subtree_state_3 = _state_vec_9_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_9_left_subtree_state_4 = state_vec_9_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_9_right_subtree_state_4 = state_vec_9_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_9_T_28 = state_vec_0_set_left_older_4 ? state_vec_9_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_9_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_9_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_9_T_33 = {state_vec_0_set_left_older_4,_state_vec_9_T_28,_state_vec_9_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_9_T_34 = state_vec_0_set_left_older_3 ? state_vec_9_left_subtree_state_3 : _state_vec_9_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_9_left_subtree_state_5 = state_vec_9_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_9_right_subtree_state_5 = state_vec_9_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_9_T_39 = state_vec_0_set_left_older_4 ? state_vec_9_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_9_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_9_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_9_T_44 = {state_vec_0_set_left_older_4,_state_vec_9_T_39,_state_vec_9_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_9_T_45 = state_vec_0_set_left_older_3 ? _state_vec_9_T_44 : state_vec_9_right_subtree_state_3; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_9_T_46 = {state_vec_0_set_left_older_3,_state_vec_9_T_34,_state_vec_9_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_9_T_47 = set_touch_ways_1_9_valid ? _state_vec_9_T_46 : _state_vec_9_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_9_left_subtree_state_6 = _state_vec_9_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_9_right_subtree_state_6 = _state_vec_9_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_9_left_subtree_state_7 = state_vec_9_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_9_right_subtree_state_7 = state_vec_9_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_9_T_52 = state_vec_0_set_left_older_7 ? state_vec_9_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_9_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_9_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_9_T_57 = {state_vec_0_set_left_older_7,_state_vec_9_T_52,_state_vec_9_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_9_T_58 = state_vec_0_set_left_older_6 ? state_vec_9_left_subtree_state_6 : _state_vec_9_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_9_left_subtree_state_8 = state_vec_9_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_9_right_subtree_state_8 = state_vec_9_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_9_T_63 = state_vec_0_set_left_older_7 ? state_vec_9_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_9_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_9_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_9_T_68 = {state_vec_0_set_left_older_7,_state_vec_9_T_63,_state_vec_9_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_9_T_69 = state_vec_0_set_left_older_6 ? _state_vec_9_T_68 : state_vec_9_right_subtree_state_6; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_9_T_70 = {state_vec_0_set_left_older_6,_state_vec_9_T_58,_state_vec_9_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_10_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'ha; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_10_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'ha; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_10_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'ha; // @[Replacement.scala 384:30]
  wire  _T_152 = set_touch_ways_0_10_valid | set_touch_ways_1_10_valid | set_touch_ways_2_10_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_10_left_subtree_state = state_vec_10[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_10_right_subtree_state = state_vec_10[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_10_left_subtree_state_1 = state_vec_10_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_10_right_subtree_state_1 = state_vec_10_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_10_T_4 = state_vec_0_set_left_older_1 ? state_vec_10_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_10_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_10_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_10_T_9 = {state_vec_0_set_left_older_1,_state_vec_10_T_4,_state_vec_10_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_10_T_10 = state_vec_0_set_left_older ? state_vec_10_left_subtree_state : _state_vec_10_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_10_left_subtree_state_2 = state_vec_10_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_10_right_subtree_state_2 = state_vec_10_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_10_T_15 = state_vec_0_set_left_older_1 ? state_vec_10_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_10_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_10_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_10_T_20 = {state_vec_0_set_left_older_1,_state_vec_10_T_15,_state_vec_10_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_10_T_21 = state_vec_0_set_left_older ? _state_vec_10_T_20 : state_vec_10_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_10_T_22 = {state_vec_0_set_left_older,_state_vec_10_T_10,_state_vec_10_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_10_T_23 = set_touch_ways_0_10_valid ? _state_vec_10_T_22 : state_vec_10; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_10_left_subtree_state_3 = _state_vec_10_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_10_right_subtree_state_3 = _state_vec_10_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_10_left_subtree_state_4 = state_vec_10_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_10_right_subtree_state_4 = state_vec_10_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_10_T_28 = state_vec_0_set_left_older_4 ? state_vec_10_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_10_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_10_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_10_T_33 = {state_vec_0_set_left_older_4,_state_vec_10_T_28,_state_vec_10_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_10_T_34 = state_vec_0_set_left_older_3 ? state_vec_10_left_subtree_state_3 : _state_vec_10_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_10_left_subtree_state_5 = state_vec_10_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_10_right_subtree_state_5 = state_vec_10_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_10_T_39 = state_vec_0_set_left_older_4 ? state_vec_10_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_10_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_10_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_10_T_44 = {state_vec_0_set_left_older_4,_state_vec_10_T_39,_state_vec_10_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_10_T_45 = state_vec_0_set_left_older_3 ? _state_vec_10_T_44 : state_vec_10_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_10_T_46 = {state_vec_0_set_left_older_3,_state_vec_10_T_34,_state_vec_10_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_10_T_47 = set_touch_ways_1_10_valid ? _state_vec_10_T_46 : _state_vec_10_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_10_left_subtree_state_6 = _state_vec_10_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_10_right_subtree_state_6 = _state_vec_10_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_10_left_subtree_state_7 = state_vec_10_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_10_right_subtree_state_7 = state_vec_10_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_10_T_52 = state_vec_0_set_left_older_7 ? state_vec_10_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_10_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_10_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_10_T_57 = {state_vec_0_set_left_older_7,_state_vec_10_T_52,_state_vec_10_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_10_T_58 = state_vec_0_set_left_older_6 ? state_vec_10_left_subtree_state_6 : _state_vec_10_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_10_left_subtree_state_8 = state_vec_10_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_10_right_subtree_state_8 = state_vec_10_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_10_T_63 = state_vec_0_set_left_older_7 ? state_vec_10_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_10_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_10_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_10_T_68 = {state_vec_0_set_left_older_7,_state_vec_10_T_63,_state_vec_10_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_10_T_69 = state_vec_0_set_left_older_6 ? _state_vec_10_T_68 : state_vec_10_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_10_T_70 = {state_vec_0_set_left_older_6,_state_vec_10_T_58,_state_vec_10_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_11_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'hb; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_11_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'hb; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_11_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'hb; // @[Replacement.scala 384:30]
  wire  _T_156 = set_touch_ways_0_11_valid | set_touch_ways_1_11_valid | set_touch_ways_2_11_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_11_left_subtree_state = state_vec_11[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_11_right_subtree_state = state_vec_11[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_11_left_subtree_state_1 = state_vec_11_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_11_right_subtree_state_1 = state_vec_11_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_11_T_4 = state_vec_0_set_left_older_1 ? state_vec_11_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_11_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_11_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_11_T_9 = {state_vec_0_set_left_older_1,_state_vec_11_T_4,_state_vec_11_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_11_T_10 = state_vec_0_set_left_older ? state_vec_11_left_subtree_state : _state_vec_11_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_11_left_subtree_state_2 = state_vec_11_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_11_right_subtree_state_2 = state_vec_11_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_11_T_15 = state_vec_0_set_left_older_1 ? state_vec_11_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_11_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_11_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_11_T_20 = {state_vec_0_set_left_older_1,_state_vec_11_T_15,_state_vec_11_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_11_T_21 = state_vec_0_set_left_older ? _state_vec_11_T_20 : state_vec_11_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_11_T_22 = {state_vec_0_set_left_older,_state_vec_11_T_10,_state_vec_11_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_11_T_23 = set_touch_ways_0_11_valid ? _state_vec_11_T_22 : state_vec_11; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_11_left_subtree_state_3 = _state_vec_11_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_11_right_subtree_state_3 = _state_vec_11_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_11_left_subtree_state_4 = state_vec_11_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_11_right_subtree_state_4 = state_vec_11_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_11_T_28 = state_vec_0_set_left_older_4 ? state_vec_11_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_11_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_11_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_11_T_33 = {state_vec_0_set_left_older_4,_state_vec_11_T_28,_state_vec_11_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_11_T_34 = state_vec_0_set_left_older_3 ? state_vec_11_left_subtree_state_3 : _state_vec_11_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_11_left_subtree_state_5 = state_vec_11_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_11_right_subtree_state_5 = state_vec_11_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_11_T_39 = state_vec_0_set_left_older_4 ? state_vec_11_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_11_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_11_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_11_T_44 = {state_vec_0_set_left_older_4,_state_vec_11_T_39,_state_vec_11_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_11_T_45 = state_vec_0_set_left_older_3 ? _state_vec_11_T_44 : state_vec_11_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_11_T_46 = {state_vec_0_set_left_older_3,_state_vec_11_T_34,_state_vec_11_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_11_T_47 = set_touch_ways_1_11_valid ? _state_vec_11_T_46 : _state_vec_11_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_11_left_subtree_state_6 = _state_vec_11_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_11_right_subtree_state_6 = _state_vec_11_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_11_left_subtree_state_7 = state_vec_11_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_11_right_subtree_state_7 = state_vec_11_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_11_T_52 = state_vec_0_set_left_older_7 ? state_vec_11_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_11_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_11_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_11_T_57 = {state_vec_0_set_left_older_7,_state_vec_11_T_52,_state_vec_11_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_11_T_58 = state_vec_0_set_left_older_6 ? state_vec_11_left_subtree_state_6 : _state_vec_11_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_11_left_subtree_state_8 = state_vec_11_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_11_right_subtree_state_8 = state_vec_11_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_11_T_63 = state_vec_0_set_left_older_7 ? state_vec_11_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_11_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_11_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_11_T_68 = {state_vec_0_set_left_older_7,_state_vec_11_T_63,_state_vec_11_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_11_T_69 = state_vec_0_set_left_older_6 ? _state_vec_11_T_68 : state_vec_11_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_11_T_70 = {state_vec_0_set_left_older_6,_state_vec_11_T_58,_state_vec_11_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_12_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'hc; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_12_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'hc; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_12_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'hc; // @[Replacement.scala 384:30]
  wire  _T_160 = set_touch_ways_0_12_valid | set_touch_ways_1_12_valid | set_touch_ways_2_12_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_12_left_subtree_state = state_vec_12[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_12_right_subtree_state = state_vec_12[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_12_left_subtree_state_1 = state_vec_12_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_12_right_subtree_state_1 = state_vec_12_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_12_T_4 = state_vec_0_set_left_older_1 ? state_vec_12_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_12_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_12_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_12_T_9 = {state_vec_0_set_left_older_1,_state_vec_12_T_4,_state_vec_12_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_12_T_10 = state_vec_0_set_left_older ? state_vec_12_left_subtree_state : _state_vec_12_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_12_left_subtree_state_2 = state_vec_12_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_12_right_subtree_state_2 = state_vec_12_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_12_T_15 = state_vec_0_set_left_older_1 ? state_vec_12_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_12_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_12_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_12_T_20 = {state_vec_0_set_left_older_1,_state_vec_12_T_15,_state_vec_12_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_12_T_21 = state_vec_0_set_left_older ? _state_vec_12_T_20 : state_vec_12_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_12_T_22 = {state_vec_0_set_left_older,_state_vec_12_T_10,_state_vec_12_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_12_T_23 = set_touch_ways_0_12_valid ? _state_vec_12_T_22 : state_vec_12; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_12_left_subtree_state_3 = _state_vec_12_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_12_right_subtree_state_3 = _state_vec_12_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_12_left_subtree_state_4 = state_vec_12_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_12_right_subtree_state_4 = state_vec_12_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_12_T_28 = state_vec_0_set_left_older_4 ? state_vec_12_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_12_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_12_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_12_T_33 = {state_vec_0_set_left_older_4,_state_vec_12_T_28,_state_vec_12_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_12_T_34 = state_vec_0_set_left_older_3 ? state_vec_12_left_subtree_state_3 : _state_vec_12_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_12_left_subtree_state_5 = state_vec_12_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_12_right_subtree_state_5 = state_vec_12_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_12_T_39 = state_vec_0_set_left_older_4 ? state_vec_12_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_12_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_12_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_12_T_44 = {state_vec_0_set_left_older_4,_state_vec_12_T_39,_state_vec_12_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_12_T_45 = state_vec_0_set_left_older_3 ? _state_vec_12_T_44 : state_vec_12_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_12_T_46 = {state_vec_0_set_left_older_3,_state_vec_12_T_34,_state_vec_12_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_12_T_47 = set_touch_ways_1_12_valid ? _state_vec_12_T_46 : _state_vec_12_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_12_left_subtree_state_6 = _state_vec_12_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_12_right_subtree_state_6 = _state_vec_12_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_12_left_subtree_state_7 = state_vec_12_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_12_right_subtree_state_7 = state_vec_12_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_12_T_52 = state_vec_0_set_left_older_7 ? state_vec_12_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_12_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_12_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_12_T_57 = {state_vec_0_set_left_older_7,_state_vec_12_T_52,_state_vec_12_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_12_T_58 = state_vec_0_set_left_older_6 ? state_vec_12_left_subtree_state_6 : _state_vec_12_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_12_left_subtree_state_8 = state_vec_12_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_12_right_subtree_state_8 = state_vec_12_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_12_T_63 = state_vec_0_set_left_older_7 ? state_vec_12_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_12_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_12_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_12_T_68 = {state_vec_0_set_left_older_7,_state_vec_12_T_63,_state_vec_12_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_12_T_69 = state_vec_0_set_left_older_6 ? _state_vec_12_T_68 : state_vec_12_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_12_T_70 = {state_vec_0_set_left_older_6,_state_vec_12_T_58,_state_vec_12_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_13_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'hd; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_13_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'hd; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_13_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'hd; // @[Replacement.scala 384:30]
  wire  _T_164 = set_touch_ways_0_13_valid | set_touch_ways_1_13_valid | set_touch_ways_2_13_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_13_left_subtree_state = state_vec_13[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_13_right_subtree_state = state_vec_13[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_13_left_subtree_state_1 = state_vec_13_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_13_right_subtree_state_1 = state_vec_13_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_13_T_4 = state_vec_0_set_left_older_1 ? state_vec_13_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_13_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_13_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_13_T_9 = {state_vec_0_set_left_older_1,_state_vec_13_T_4,_state_vec_13_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_13_T_10 = state_vec_0_set_left_older ? state_vec_13_left_subtree_state : _state_vec_13_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_13_left_subtree_state_2 = state_vec_13_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_13_right_subtree_state_2 = state_vec_13_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_13_T_15 = state_vec_0_set_left_older_1 ? state_vec_13_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_13_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_13_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_13_T_20 = {state_vec_0_set_left_older_1,_state_vec_13_T_15,_state_vec_13_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_13_T_21 = state_vec_0_set_left_older ? _state_vec_13_T_20 : state_vec_13_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_13_T_22 = {state_vec_0_set_left_older,_state_vec_13_T_10,_state_vec_13_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_13_T_23 = set_touch_ways_0_13_valid ? _state_vec_13_T_22 : state_vec_13; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_13_left_subtree_state_3 = _state_vec_13_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_13_right_subtree_state_3 = _state_vec_13_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_13_left_subtree_state_4 = state_vec_13_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_13_right_subtree_state_4 = state_vec_13_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_13_T_28 = state_vec_0_set_left_older_4 ? state_vec_13_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_13_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_13_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_13_T_33 = {state_vec_0_set_left_older_4,_state_vec_13_T_28,_state_vec_13_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_13_T_34 = state_vec_0_set_left_older_3 ? state_vec_13_left_subtree_state_3 : _state_vec_13_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_13_left_subtree_state_5 = state_vec_13_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_13_right_subtree_state_5 = state_vec_13_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_13_T_39 = state_vec_0_set_left_older_4 ? state_vec_13_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_13_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_13_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_13_T_44 = {state_vec_0_set_left_older_4,_state_vec_13_T_39,_state_vec_13_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_13_T_45 = state_vec_0_set_left_older_3 ? _state_vec_13_T_44 : state_vec_13_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_13_T_46 = {state_vec_0_set_left_older_3,_state_vec_13_T_34,_state_vec_13_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_13_T_47 = set_touch_ways_1_13_valid ? _state_vec_13_T_46 : _state_vec_13_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_13_left_subtree_state_6 = _state_vec_13_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_13_right_subtree_state_6 = _state_vec_13_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_13_left_subtree_state_7 = state_vec_13_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_13_right_subtree_state_7 = state_vec_13_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_13_T_52 = state_vec_0_set_left_older_7 ? state_vec_13_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_13_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_13_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_13_T_57 = {state_vec_0_set_left_older_7,_state_vec_13_T_52,_state_vec_13_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_13_T_58 = state_vec_0_set_left_older_6 ? state_vec_13_left_subtree_state_6 : _state_vec_13_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_13_left_subtree_state_8 = state_vec_13_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_13_right_subtree_state_8 = state_vec_13_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_13_T_63 = state_vec_0_set_left_older_7 ? state_vec_13_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_13_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_13_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_13_T_68 = {state_vec_0_set_left_older_7,_state_vec_13_T_63,_state_vec_13_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_13_T_69 = state_vec_0_set_left_older_6 ? _state_vec_13_T_68 : state_vec_13_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_13_T_70 = {state_vec_0_set_left_older_6,_state_vec_13_T_58,_state_vec_13_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_14_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'he; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_14_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'he; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_14_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'he; // @[Replacement.scala 384:30]
  wire  _T_168 = set_touch_ways_0_14_valid | set_touch_ways_1_14_valid | set_touch_ways_2_14_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_14_left_subtree_state = state_vec_14[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_14_right_subtree_state = state_vec_14[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_14_left_subtree_state_1 = state_vec_14_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_14_right_subtree_state_1 = state_vec_14_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_14_T_4 = state_vec_0_set_left_older_1 ? state_vec_14_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_14_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_14_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_14_T_9 = {state_vec_0_set_left_older_1,_state_vec_14_T_4,_state_vec_14_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_14_T_10 = state_vec_0_set_left_older ? state_vec_14_left_subtree_state : _state_vec_14_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_14_left_subtree_state_2 = state_vec_14_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_14_right_subtree_state_2 = state_vec_14_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_14_T_15 = state_vec_0_set_left_older_1 ? state_vec_14_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_14_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_14_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_14_T_20 = {state_vec_0_set_left_older_1,_state_vec_14_T_15,_state_vec_14_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_14_T_21 = state_vec_0_set_left_older ? _state_vec_14_T_20 : state_vec_14_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_14_T_22 = {state_vec_0_set_left_older,_state_vec_14_T_10,_state_vec_14_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_14_T_23 = set_touch_ways_0_14_valid ? _state_vec_14_T_22 : state_vec_14; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_14_left_subtree_state_3 = _state_vec_14_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_14_right_subtree_state_3 = _state_vec_14_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_14_left_subtree_state_4 = state_vec_14_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_14_right_subtree_state_4 = state_vec_14_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_14_T_28 = state_vec_0_set_left_older_4 ? state_vec_14_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_14_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_14_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_14_T_33 = {state_vec_0_set_left_older_4,_state_vec_14_T_28,_state_vec_14_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_14_T_34 = state_vec_0_set_left_older_3 ? state_vec_14_left_subtree_state_3 : _state_vec_14_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_14_left_subtree_state_5 = state_vec_14_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_14_right_subtree_state_5 = state_vec_14_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_14_T_39 = state_vec_0_set_left_older_4 ? state_vec_14_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_14_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_14_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_14_T_44 = {state_vec_0_set_left_older_4,_state_vec_14_T_39,_state_vec_14_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_14_T_45 = state_vec_0_set_left_older_3 ? _state_vec_14_T_44 : state_vec_14_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_14_T_46 = {state_vec_0_set_left_older_3,_state_vec_14_T_34,_state_vec_14_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_14_T_47 = set_touch_ways_1_14_valid ? _state_vec_14_T_46 : _state_vec_14_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_14_left_subtree_state_6 = _state_vec_14_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_14_right_subtree_state_6 = _state_vec_14_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_14_left_subtree_state_7 = state_vec_14_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_14_right_subtree_state_7 = state_vec_14_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_14_T_52 = state_vec_0_set_left_older_7 ? state_vec_14_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_14_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_14_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_14_T_57 = {state_vec_0_set_left_older_7,_state_vec_14_T_52,_state_vec_14_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_14_T_58 = state_vec_0_set_left_older_6 ? state_vec_14_left_subtree_state_6 : _state_vec_14_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_14_left_subtree_state_8 = state_vec_14_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_14_right_subtree_state_8 = state_vec_14_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_14_T_63 = state_vec_0_set_left_older_7 ? state_vec_14_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_14_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_14_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_14_T_68 = {state_vec_0_set_left_older_7,_state_vec_14_T_63,_state_vec_14_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_14_T_69 = state_vec_0_set_left_older_6 ? _state_vec_14_T_68 : state_vec_14_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_14_T_70 = {state_vec_0_set_left_older_6,_state_vec_14_T_58,_state_vec_14_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_15_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'hf; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_15_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'hf; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_15_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'hf; // @[Replacement.scala 384:30]
  wire  _T_172 = set_touch_ways_0_15_valid | set_touch_ways_1_15_valid | set_touch_ways_2_15_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_15_left_subtree_state = state_vec_15[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_15_right_subtree_state = state_vec_15[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_15_left_subtree_state_1 = state_vec_15_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_15_right_subtree_state_1 = state_vec_15_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_15_T_4 = state_vec_0_set_left_older_1 ? state_vec_15_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_15_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_15_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_15_T_9 = {state_vec_0_set_left_older_1,_state_vec_15_T_4,_state_vec_15_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_15_T_10 = state_vec_0_set_left_older ? state_vec_15_left_subtree_state : _state_vec_15_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_15_left_subtree_state_2 = state_vec_15_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_15_right_subtree_state_2 = state_vec_15_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_15_T_15 = state_vec_0_set_left_older_1 ? state_vec_15_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_15_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_15_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_15_T_20 = {state_vec_0_set_left_older_1,_state_vec_15_T_15,_state_vec_15_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_15_T_21 = state_vec_0_set_left_older ? _state_vec_15_T_20 : state_vec_15_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_15_T_22 = {state_vec_0_set_left_older,_state_vec_15_T_10,_state_vec_15_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_15_T_23 = set_touch_ways_0_15_valid ? _state_vec_15_T_22 : state_vec_15; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_15_left_subtree_state_3 = _state_vec_15_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_15_right_subtree_state_3 = _state_vec_15_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_15_left_subtree_state_4 = state_vec_15_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_15_right_subtree_state_4 = state_vec_15_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_15_T_28 = state_vec_0_set_left_older_4 ? state_vec_15_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_15_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_15_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_15_T_33 = {state_vec_0_set_left_older_4,_state_vec_15_T_28,_state_vec_15_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_15_T_34 = state_vec_0_set_left_older_3 ? state_vec_15_left_subtree_state_3 : _state_vec_15_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_15_left_subtree_state_5 = state_vec_15_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_15_right_subtree_state_5 = state_vec_15_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_15_T_39 = state_vec_0_set_left_older_4 ? state_vec_15_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_15_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_15_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_15_T_44 = {state_vec_0_set_left_older_4,_state_vec_15_T_39,_state_vec_15_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_15_T_45 = state_vec_0_set_left_older_3 ? _state_vec_15_T_44 : state_vec_15_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_15_T_46 = {state_vec_0_set_left_older_3,_state_vec_15_T_34,_state_vec_15_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_15_T_47 = set_touch_ways_1_15_valid ? _state_vec_15_T_46 : _state_vec_15_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_15_left_subtree_state_6 = _state_vec_15_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_15_right_subtree_state_6 = _state_vec_15_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_15_left_subtree_state_7 = state_vec_15_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_15_right_subtree_state_7 = state_vec_15_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_15_T_52 = state_vec_0_set_left_older_7 ? state_vec_15_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_15_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_15_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_15_T_57 = {state_vec_0_set_left_older_7,_state_vec_15_T_52,_state_vec_15_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_15_T_58 = state_vec_0_set_left_older_6 ? state_vec_15_left_subtree_state_6 : _state_vec_15_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_15_left_subtree_state_8 = state_vec_15_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_15_right_subtree_state_8 = state_vec_15_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_15_T_63 = state_vec_0_set_left_older_7 ? state_vec_15_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_15_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_15_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_15_T_68 = {state_vec_0_set_left_older_7,_state_vec_15_T_63,_state_vec_15_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_15_T_69 = state_vec_0_set_left_older_6 ? _state_vec_15_T_68 : state_vec_15_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_15_T_70 = {state_vec_0_set_left_older_6,_state_vec_15_T_58,_state_vec_15_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_16_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h10; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_16_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h10; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_16_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h10; // @[Replacement.scala 384:30]
  wire  _T_176 = set_touch_ways_0_16_valid | set_touch_ways_1_16_valid | set_touch_ways_2_16_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_16_left_subtree_state = state_vec_16[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_16_right_subtree_state = state_vec_16[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_16_left_subtree_state_1 = state_vec_16_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_16_right_subtree_state_1 = state_vec_16_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_16_T_4 = state_vec_0_set_left_older_1 ? state_vec_16_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_16_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_16_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_16_T_9 = {state_vec_0_set_left_older_1,_state_vec_16_T_4,_state_vec_16_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_16_T_10 = state_vec_0_set_left_older ? state_vec_16_left_subtree_state : _state_vec_16_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_16_left_subtree_state_2 = state_vec_16_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_16_right_subtree_state_2 = state_vec_16_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_16_T_15 = state_vec_0_set_left_older_1 ? state_vec_16_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_16_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_16_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_16_T_20 = {state_vec_0_set_left_older_1,_state_vec_16_T_15,_state_vec_16_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_16_T_21 = state_vec_0_set_left_older ? _state_vec_16_T_20 : state_vec_16_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_16_T_22 = {state_vec_0_set_left_older,_state_vec_16_T_10,_state_vec_16_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_16_T_23 = set_touch_ways_0_16_valid ? _state_vec_16_T_22 : state_vec_16; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_16_left_subtree_state_3 = _state_vec_16_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_16_right_subtree_state_3 = _state_vec_16_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_16_left_subtree_state_4 = state_vec_16_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_16_right_subtree_state_4 = state_vec_16_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_16_T_28 = state_vec_0_set_left_older_4 ? state_vec_16_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_16_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_16_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_16_T_33 = {state_vec_0_set_left_older_4,_state_vec_16_T_28,_state_vec_16_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_16_T_34 = state_vec_0_set_left_older_3 ? state_vec_16_left_subtree_state_3 : _state_vec_16_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_16_left_subtree_state_5 = state_vec_16_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_16_right_subtree_state_5 = state_vec_16_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_16_T_39 = state_vec_0_set_left_older_4 ? state_vec_16_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_16_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_16_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_16_T_44 = {state_vec_0_set_left_older_4,_state_vec_16_T_39,_state_vec_16_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_16_T_45 = state_vec_0_set_left_older_3 ? _state_vec_16_T_44 : state_vec_16_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_16_T_46 = {state_vec_0_set_left_older_3,_state_vec_16_T_34,_state_vec_16_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_16_T_47 = set_touch_ways_1_16_valid ? _state_vec_16_T_46 : _state_vec_16_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_16_left_subtree_state_6 = _state_vec_16_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_16_right_subtree_state_6 = _state_vec_16_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_16_left_subtree_state_7 = state_vec_16_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_16_right_subtree_state_7 = state_vec_16_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_16_T_52 = state_vec_0_set_left_older_7 ? state_vec_16_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_16_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_16_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_16_T_57 = {state_vec_0_set_left_older_7,_state_vec_16_T_52,_state_vec_16_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_16_T_58 = state_vec_0_set_left_older_6 ? state_vec_16_left_subtree_state_6 : _state_vec_16_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_16_left_subtree_state_8 = state_vec_16_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_16_right_subtree_state_8 = state_vec_16_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_16_T_63 = state_vec_0_set_left_older_7 ? state_vec_16_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_16_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_16_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_16_T_68 = {state_vec_0_set_left_older_7,_state_vec_16_T_63,_state_vec_16_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_16_T_69 = state_vec_0_set_left_older_6 ? _state_vec_16_T_68 : state_vec_16_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_16_T_70 = {state_vec_0_set_left_older_6,_state_vec_16_T_58,_state_vec_16_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_17_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h11; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_17_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h11; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_17_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h11; // @[Replacement.scala 384:30]
  wire  _T_180 = set_touch_ways_0_17_valid | set_touch_ways_1_17_valid | set_touch_ways_2_17_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_17_left_subtree_state = state_vec_17[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_17_right_subtree_state = state_vec_17[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_17_left_subtree_state_1 = state_vec_17_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_17_right_subtree_state_1 = state_vec_17_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_17_T_4 = state_vec_0_set_left_older_1 ? state_vec_17_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_17_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_17_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_17_T_9 = {state_vec_0_set_left_older_1,_state_vec_17_T_4,_state_vec_17_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_17_T_10 = state_vec_0_set_left_older ? state_vec_17_left_subtree_state : _state_vec_17_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_17_left_subtree_state_2 = state_vec_17_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_17_right_subtree_state_2 = state_vec_17_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_17_T_15 = state_vec_0_set_left_older_1 ? state_vec_17_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_17_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_17_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_17_T_20 = {state_vec_0_set_left_older_1,_state_vec_17_T_15,_state_vec_17_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_17_T_21 = state_vec_0_set_left_older ? _state_vec_17_T_20 : state_vec_17_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_17_T_22 = {state_vec_0_set_left_older,_state_vec_17_T_10,_state_vec_17_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_17_T_23 = set_touch_ways_0_17_valid ? _state_vec_17_T_22 : state_vec_17; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_17_left_subtree_state_3 = _state_vec_17_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_17_right_subtree_state_3 = _state_vec_17_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_17_left_subtree_state_4 = state_vec_17_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_17_right_subtree_state_4 = state_vec_17_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_17_T_28 = state_vec_0_set_left_older_4 ? state_vec_17_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_17_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_17_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_17_T_33 = {state_vec_0_set_left_older_4,_state_vec_17_T_28,_state_vec_17_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_17_T_34 = state_vec_0_set_left_older_3 ? state_vec_17_left_subtree_state_3 : _state_vec_17_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_17_left_subtree_state_5 = state_vec_17_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_17_right_subtree_state_5 = state_vec_17_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_17_T_39 = state_vec_0_set_left_older_4 ? state_vec_17_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_17_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_17_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_17_T_44 = {state_vec_0_set_left_older_4,_state_vec_17_T_39,_state_vec_17_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_17_T_45 = state_vec_0_set_left_older_3 ? _state_vec_17_T_44 : state_vec_17_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_17_T_46 = {state_vec_0_set_left_older_3,_state_vec_17_T_34,_state_vec_17_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_17_T_47 = set_touch_ways_1_17_valid ? _state_vec_17_T_46 : _state_vec_17_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_17_left_subtree_state_6 = _state_vec_17_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_17_right_subtree_state_6 = _state_vec_17_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_17_left_subtree_state_7 = state_vec_17_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_17_right_subtree_state_7 = state_vec_17_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_17_T_52 = state_vec_0_set_left_older_7 ? state_vec_17_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_17_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_17_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_17_T_57 = {state_vec_0_set_left_older_7,_state_vec_17_T_52,_state_vec_17_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_17_T_58 = state_vec_0_set_left_older_6 ? state_vec_17_left_subtree_state_6 : _state_vec_17_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_17_left_subtree_state_8 = state_vec_17_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_17_right_subtree_state_8 = state_vec_17_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_17_T_63 = state_vec_0_set_left_older_7 ? state_vec_17_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_17_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_17_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_17_T_68 = {state_vec_0_set_left_older_7,_state_vec_17_T_63,_state_vec_17_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_17_T_69 = state_vec_0_set_left_older_6 ? _state_vec_17_T_68 : state_vec_17_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_17_T_70 = {state_vec_0_set_left_older_6,_state_vec_17_T_58,_state_vec_17_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_18_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h12; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_18_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h12; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_18_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h12; // @[Replacement.scala 384:30]
  wire  _T_184 = set_touch_ways_0_18_valid | set_touch_ways_1_18_valid | set_touch_ways_2_18_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_18_left_subtree_state = state_vec_18[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_18_right_subtree_state = state_vec_18[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_18_left_subtree_state_1 = state_vec_18_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_18_right_subtree_state_1 = state_vec_18_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_18_T_4 = state_vec_0_set_left_older_1 ? state_vec_18_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_18_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_18_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_18_T_9 = {state_vec_0_set_left_older_1,_state_vec_18_T_4,_state_vec_18_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_18_T_10 = state_vec_0_set_left_older ? state_vec_18_left_subtree_state : _state_vec_18_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_18_left_subtree_state_2 = state_vec_18_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_18_right_subtree_state_2 = state_vec_18_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_18_T_15 = state_vec_0_set_left_older_1 ? state_vec_18_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_18_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_18_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_18_T_20 = {state_vec_0_set_left_older_1,_state_vec_18_T_15,_state_vec_18_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_18_T_21 = state_vec_0_set_left_older ? _state_vec_18_T_20 : state_vec_18_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_18_T_22 = {state_vec_0_set_left_older,_state_vec_18_T_10,_state_vec_18_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_18_T_23 = set_touch_ways_0_18_valid ? _state_vec_18_T_22 : state_vec_18; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_18_left_subtree_state_3 = _state_vec_18_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_18_right_subtree_state_3 = _state_vec_18_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_18_left_subtree_state_4 = state_vec_18_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_18_right_subtree_state_4 = state_vec_18_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_18_T_28 = state_vec_0_set_left_older_4 ? state_vec_18_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_18_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_18_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_18_T_33 = {state_vec_0_set_left_older_4,_state_vec_18_T_28,_state_vec_18_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_18_T_34 = state_vec_0_set_left_older_3 ? state_vec_18_left_subtree_state_3 : _state_vec_18_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_18_left_subtree_state_5 = state_vec_18_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_18_right_subtree_state_5 = state_vec_18_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_18_T_39 = state_vec_0_set_left_older_4 ? state_vec_18_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_18_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_18_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_18_T_44 = {state_vec_0_set_left_older_4,_state_vec_18_T_39,_state_vec_18_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_18_T_45 = state_vec_0_set_left_older_3 ? _state_vec_18_T_44 : state_vec_18_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_18_T_46 = {state_vec_0_set_left_older_3,_state_vec_18_T_34,_state_vec_18_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_18_T_47 = set_touch_ways_1_18_valid ? _state_vec_18_T_46 : _state_vec_18_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_18_left_subtree_state_6 = _state_vec_18_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_18_right_subtree_state_6 = _state_vec_18_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_18_left_subtree_state_7 = state_vec_18_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_18_right_subtree_state_7 = state_vec_18_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_18_T_52 = state_vec_0_set_left_older_7 ? state_vec_18_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_18_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_18_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_18_T_57 = {state_vec_0_set_left_older_7,_state_vec_18_T_52,_state_vec_18_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_18_T_58 = state_vec_0_set_left_older_6 ? state_vec_18_left_subtree_state_6 : _state_vec_18_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_18_left_subtree_state_8 = state_vec_18_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_18_right_subtree_state_8 = state_vec_18_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_18_T_63 = state_vec_0_set_left_older_7 ? state_vec_18_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_18_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_18_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_18_T_68 = {state_vec_0_set_left_older_7,_state_vec_18_T_63,_state_vec_18_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_18_T_69 = state_vec_0_set_left_older_6 ? _state_vec_18_T_68 : state_vec_18_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_18_T_70 = {state_vec_0_set_left_older_6,_state_vec_18_T_58,_state_vec_18_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_19_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h13; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_19_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h13; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_19_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h13; // @[Replacement.scala 384:30]
  wire  _T_188 = set_touch_ways_0_19_valid | set_touch_ways_1_19_valid | set_touch_ways_2_19_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_19_left_subtree_state = state_vec_19[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_19_right_subtree_state = state_vec_19[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_19_left_subtree_state_1 = state_vec_19_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_19_right_subtree_state_1 = state_vec_19_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_19_T_4 = state_vec_0_set_left_older_1 ? state_vec_19_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_19_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_19_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_19_T_9 = {state_vec_0_set_left_older_1,_state_vec_19_T_4,_state_vec_19_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_19_T_10 = state_vec_0_set_left_older ? state_vec_19_left_subtree_state : _state_vec_19_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_19_left_subtree_state_2 = state_vec_19_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_19_right_subtree_state_2 = state_vec_19_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_19_T_15 = state_vec_0_set_left_older_1 ? state_vec_19_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_19_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_19_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_19_T_20 = {state_vec_0_set_left_older_1,_state_vec_19_T_15,_state_vec_19_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_19_T_21 = state_vec_0_set_left_older ? _state_vec_19_T_20 : state_vec_19_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_19_T_22 = {state_vec_0_set_left_older,_state_vec_19_T_10,_state_vec_19_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_19_T_23 = set_touch_ways_0_19_valid ? _state_vec_19_T_22 : state_vec_19; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_19_left_subtree_state_3 = _state_vec_19_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_19_right_subtree_state_3 = _state_vec_19_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_19_left_subtree_state_4 = state_vec_19_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_19_right_subtree_state_4 = state_vec_19_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_19_T_28 = state_vec_0_set_left_older_4 ? state_vec_19_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_19_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_19_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_19_T_33 = {state_vec_0_set_left_older_4,_state_vec_19_T_28,_state_vec_19_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_19_T_34 = state_vec_0_set_left_older_3 ? state_vec_19_left_subtree_state_3 : _state_vec_19_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_19_left_subtree_state_5 = state_vec_19_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_19_right_subtree_state_5 = state_vec_19_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_19_T_39 = state_vec_0_set_left_older_4 ? state_vec_19_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_19_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_19_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_19_T_44 = {state_vec_0_set_left_older_4,_state_vec_19_T_39,_state_vec_19_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_19_T_45 = state_vec_0_set_left_older_3 ? _state_vec_19_T_44 : state_vec_19_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_19_T_46 = {state_vec_0_set_left_older_3,_state_vec_19_T_34,_state_vec_19_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_19_T_47 = set_touch_ways_1_19_valid ? _state_vec_19_T_46 : _state_vec_19_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_19_left_subtree_state_6 = _state_vec_19_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_19_right_subtree_state_6 = _state_vec_19_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_19_left_subtree_state_7 = state_vec_19_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_19_right_subtree_state_7 = state_vec_19_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_19_T_52 = state_vec_0_set_left_older_7 ? state_vec_19_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_19_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_19_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_19_T_57 = {state_vec_0_set_left_older_7,_state_vec_19_T_52,_state_vec_19_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_19_T_58 = state_vec_0_set_left_older_6 ? state_vec_19_left_subtree_state_6 : _state_vec_19_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_19_left_subtree_state_8 = state_vec_19_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_19_right_subtree_state_8 = state_vec_19_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_19_T_63 = state_vec_0_set_left_older_7 ? state_vec_19_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_19_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_19_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_19_T_68 = {state_vec_0_set_left_older_7,_state_vec_19_T_63,_state_vec_19_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_19_T_69 = state_vec_0_set_left_older_6 ? _state_vec_19_T_68 : state_vec_19_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_19_T_70 = {state_vec_0_set_left_older_6,_state_vec_19_T_58,_state_vec_19_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_20_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h14; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_20_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h14; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_20_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h14; // @[Replacement.scala 384:30]
  wire  _T_192 = set_touch_ways_0_20_valid | set_touch_ways_1_20_valid | set_touch_ways_2_20_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_20_left_subtree_state = state_vec_20[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_20_right_subtree_state = state_vec_20[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_20_left_subtree_state_1 = state_vec_20_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_20_right_subtree_state_1 = state_vec_20_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_20_T_4 = state_vec_0_set_left_older_1 ? state_vec_20_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_20_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_20_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_20_T_9 = {state_vec_0_set_left_older_1,_state_vec_20_T_4,_state_vec_20_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_20_T_10 = state_vec_0_set_left_older ? state_vec_20_left_subtree_state : _state_vec_20_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_20_left_subtree_state_2 = state_vec_20_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_20_right_subtree_state_2 = state_vec_20_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_20_T_15 = state_vec_0_set_left_older_1 ? state_vec_20_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_20_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_20_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_20_T_20 = {state_vec_0_set_left_older_1,_state_vec_20_T_15,_state_vec_20_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_20_T_21 = state_vec_0_set_left_older ? _state_vec_20_T_20 : state_vec_20_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_20_T_22 = {state_vec_0_set_left_older,_state_vec_20_T_10,_state_vec_20_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_20_T_23 = set_touch_ways_0_20_valid ? _state_vec_20_T_22 : state_vec_20; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_20_left_subtree_state_3 = _state_vec_20_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_20_right_subtree_state_3 = _state_vec_20_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_20_left_subtree_state_4 = state_vec_20_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_20_right_subtree_state_4 = state_vec_20_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_20_T_28 = state_vec_0_set_left_older_4 ? state_vec_20_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_20_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_20_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_20_T_33 = {state_vec_0_set_left_older_4,_state_vec_20_T_28,_state_vec_20_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_20_T_34 = state_vec_0_set_left_older_3 ? state_vec_20_left_subtree_state_3 : _state_vec_20_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_20_left_subtree_state_5 = state_vec_20_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_20_right_subtree_state_5 = state_vec_20_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_20_T_39 = state_vec_0_set_left_older_4 ? state_vec_20_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_20_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_20_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_20_T_44 = {state_vec_0_set_left_older_4,_state_vec_20_T_39,_state_vec_20_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_20_T_45 = state_vec_0_set_left_older_3 ? _state_vec_20_T_44 : state_vec_20_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_20_T_46 = {state_vec_0_set_left_older_3,_state_vec_20_T_34,_state_vec_20_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_20_T_47 = set_touch_ways_1_20_valid ? _state_vec_20_T_46 : _state_vec_20_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_20_left_subtree_state_6 = _state_vec_20_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_20_right_subtree_state_6 = _state_vec_20_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_20_left_subtree_state_7 = state_vec_20_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_20_right_subtree_state_7 = state_vec_20_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_20_T_52 = state_vec_0_set_left_older_7 ? state_vec_20_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_20_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_20_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_20_T_57 = {state_vec_0_set_left_older_7,_state_vec_20_T_52,_state_vec_20_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_20_T_58 = state_vec_0_set_left_older_6 ? state_vec_20_left_subtree_state_6 : _state_vec_20_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_20_left_subtree_state_8 = state_vec_20_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_20_right_subtree_state_8 = state_vec_20_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_20_T_63 = state_vec_0_set_left_older_7 ? state_vec_20_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_20_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_20_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_20_T_68 = {state_vec_0_set_left_older_7,_state_vec_20_T_63,_state_vec_20_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_20_T_69 = state_vec_0_set_left_older_6 ? _state_vec_20_T_68 : state_vec_20_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_20_T_70 = {state_vec_0_set_left_older_6,_state_vec_20_T_58,_state_vec_20_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_21_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h15; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_21_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h15; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_21_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h15; // @[Replacement.scala 384:30]
  wire  _T_196 = set_touch_ways_0_21_valid | set_touch_ways_1_21_valid | set_touch_ways_2_21_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_21_left_subtree_state = state_vec_21[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_21_right_subtree_state = state_vec_21[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_21_left_subtree_state_1 = state_vec_21_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_21_right_subtree_state_1 = state_vec_21_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_21_T_4 = state_vec_0_set_left_older_1 ? state_vec_21_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_21_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_21_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_21_T_9 = {state_vec_0_set_left_older_1,_state_vec_21_T_4,_state_vec_21_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_21_T_10 = state_vec_0_set_left_older ? state_vec_21_left_subtree_state : _state_vec_21_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_21_left_subtree_state_2 = state_vec_21_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_21_right_subtree_state_2 = state_vec_21_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_21_T_15 = state_vec_0_set_left_older_1 ? state_vec_21_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_21_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_21_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_21_T_20 = {state_vec_0_set_left_older_1,_state_vec_21_T_15,_state_vec_21_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_21_T_21 = state_vec_0_set_left_older ? _state_vec_21_T_20 : state_vec_21_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_21_T_22 = {state_vec_0_set_left_older,_state_vec_21_T_10,_state_vec_21_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_21_T_23 = set_touch_ways_0_21_valid ? _state_vec_21_T_22 : state_vec_21; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_21_left_subtree_state_3 = _state_vec_21_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_21_right_subtree_state_3 = _state_vec_21_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_21_left_subtree_state_4 = state_vec_21_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_21_right_subtree_state_4 = state_vec_21_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_21_T_28 = state_vec_0_set_left_older_4 ? state_vec_21_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_21_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_21_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_21_T_33 = {state_vec_0_set_left_older_4,_state_vec_21_T_28,_state_vec_21_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_21_T_34 = state_vec_0_set_left_older_3 ? state_vec_21_left_subtree_state_3 : _state_vec_21_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_21_left_subtree_state_5 = state_vec_21_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_21_right_subtree_state_5 = state_vec_21_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_21_T_39 = state_vec_0_set_left_older_4 ? state_vec_21_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_21_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_21_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_21_T_44 = {state_vec_0_set_left_older_4,_state_vec_21_T_39,_state_vec_21_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_21_T_45 = state_vec_0_set_left_older_3 ? _state_vec_21_T_44 : state_vec_21_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_21_T_46 = {state_vec_0_set_left_older_3,_state_vec_21_T_34,_state_vec_21_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_21_T_47 = set_touch_ways_1_21_valid ? _state_vec_21_T_46 : _state_vec_21_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_21_left_subtree_state_6 = _state_vec_21_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_21_right_subtree_state_6 = _state_vec_21_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_21_left_subtree_state_7 = state_vec_21_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_21_right_subtree_state_7 = state_vec_21_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_21_T_52 = state_vec_0_set_left_older_7 ? state_vec_21_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_21_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_21_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_21_T_57 = {state_vec_0_set_left_older_7,_state_vec_21_T_52,_state_vec_21_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_21_T_58 = state_vec_0_set_left_older_6 ? state_vec_21_left_subtree_state_6 : _state_vec_21_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_21_left_subtree_state_8 = state_vec_21_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_21_right_subtree_state_8 = state_vec_21_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_21_T_63 = state_vec_0_set_left_older_7 ? state_vec_21_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_21_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_21_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_21_T_68 = {state_vec_0_set_left_older_7,_state_vec_21_T_63,_state_vec_21_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_21_T_69 = state_vec_0_set_left_older_6 ? _state_vec_21_T_68 : state_vec_21_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_21_T_70 = {state_vec_0_set_left_older_6,_state_vec_21_T_58,_state_vec_21_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_22_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h16; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_22_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h16; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_22_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h16; // @[Replacement.scala 384:30]
  wire  _T_200 = set_touch_ways_0_22_valid | set_touch_ways_1_22_valid | set_touch_ways_2_22_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_22_left_subtree_state = state_vec_22[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_22_right_subtree_state = state_vec_22[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_22_left_subtree_state_1 = state_vec_22_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_22_right_subtree_state_1 = state_vec_22_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_22_T_4 = state_vec_0_set_left_older_1 ? state_vec_22_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_22_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_22_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_22_T_9 = {state_vec_0_set_left_older_1,_state_vec_22_T_4,_state_vec_22_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_22_T_10 = state_vec_0_set_left_older ? state_vec_22_left_subtree_state : _state_vec_22_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_22_left_subtree_state_2 = state_vec_22_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_22_right_subtree_state_2 = state_vec_22_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_22_T_15 = state_vec_0_set_left_older_1 ? state_vec_22_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_22_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_22_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_22_T_20 = {state_vec_0_set_left_older_1,_state_vec_22_T_15,_state_vec_22_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_22_T_21 = state_vec_0_set_left_older ? _state_vec_22_T_20 : state_vec_22_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_22_T_22 = {state_vec_0_set_left_older,_state_vec_22_T_10,_state_vec_22_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_22_T_23 = set_touch_ways_0_22_valid ? _state_vec_22_T_22 : state_vec_22; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_22_left_subtree_state_3 = _state_vec_22_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_22_right_subtree_state_3 = _state_vec_22_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_22_left_subtree_state_4 = state_vec_22_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_22_right_subtree_state_4 = state_vec_22_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_22_T_28 = state_vec_0_set_left_older_4 ? state_vec_22_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_22_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_22_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_22_T_33 = {state_vec_0_set_left_older_4,_state_vec_22_T_28,_state_vec_22_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_22_T_34 = state_vec_0_set_left_older_3 ? state_vec_22_left_subtree_state_3 : _state_vec_22_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_22_left_subtree_state_5 = state_vec_22_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_22_right_subtree_state_5 = state_vec_22_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_22_T_39 = state_vec_0_set_left_older_4 ? state_vec_22_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_22_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_22_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_22_T_44 = {state_vec_0_set_left_older_4,_state_vec_22_T_39,_state_vec_22_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_22_T_45 = state_vec_0_set_left_older_3 ? _state_vec_22_T_44 : state_vec_22_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_22_T_46 = {state_vec_0_set_left_older_3,_state_vec_22_T_34,_state_vec_22_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_22_T_47 = set_touch_ways_1_22_valid ? _state_vec_22_T_46 : _state_vec_22_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_22_left_subtree_state_6 = _state_vec_22_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_22_right_subtree_state_6 = _state_vec_22_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_22_left_subtree_state_7 = state_vec_22_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_22_right_subtree_state_7 = state_vec_22_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_22_T_52 = state_vec_0_set_left_older_7 ? state_vec_22_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_22_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_22_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_22_T_57 = {state_vec_0_set_left_older_7,_state_vec_22_T_52,_state_vec_22_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_22_T_58 = state_vec_0_set_left_older_6 ? state_vec_22_left_subtree_state_6 : _state_vec_22_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_22_left_subtree_state_8 = state_vec_22_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_22_right_subtree_state_8 = state_vec_22_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_22_T_63 = state_vec_0_set_left_older_7 ? state_vec_22_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_22_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_22_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_22_T_68 = {state_vec_0_set_left_older_7,_state_vec_22_T_63,_state_vec_22_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_22_T_69 = state_vec_0_set_left_older_6 ? _state_vec_22_T_68 : state_vec_22_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_22_T_70 = {state_vec_0_set_left_older_6,_state_vec_22_T_58,_state_vec_22_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_23_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h17; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_23_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h17; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_23_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h17; // @[Replacement.scala 384:30]
  wire  _T_204 = set_touch_ways_0_23_valid | set_touch_ways_1_23_valid | set_touch_ways_2_23_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_23_left_subtree_state = state_vec_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_23_right_subtree_state = state_vec_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_23_left_subtree_state_1 = state_vec_23_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_23_right_subtree_state_1 = state_vec_23_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_23_T_4 = state_vec_0_set_left_older_1 ? state_vec_23_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_23_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_23_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_23_T_9 = {state_vec_0_set_left_older_1,_state_vec_23_T_4,_state_vec_23_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_23_T_10 = state_vec_0_set_left_older ? state_vec_23_left_subtree_state : _state_vec_23_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_23_left_subtree_state_2 = state_vec_23_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_23_right_subtree_state_2 = state_vec_23_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_23_T_15 = state_vec_0_set_left_older_1 ? state_vec_23_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_23_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_23_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_23_T_20 = {state_vec_0_set_left_older_1,_state_vec_23_T_15,_state_vec_23_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_23_T_21 = state_vec_0_set_left_older ? _state_vec_23_T_20 : state_vec_23_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_23_T_22 = {state_vec_0_set_left_older,_state_vec_23_T_10,_state_vec_23_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_23_T_23 = set_touch_ways_0_23_valid ? _state_vec_23_T_22 : state_vec_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_23_left_subtree_state_3 = _state_vec_23_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_23_right_subtree_state_3 = _state_vec_23_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_23_left_subtree_state_4 = state_vec_23_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_23_right_subtree_state_4 = state_vec_23_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_23_T_28 = state_vec_0_set_left_older_4 ? state_vec_23_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_23_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_23_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_23_T_33 = {state_vec_0_set_left_older_4,_state_vec_23_T_28,_state_vec_23_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_23_T_34 = state_vec_0_set_left_older_3 ? state_vec_23_left_subtree_state_3 : _state_vec_23_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_23_left_subtree_state_5 = state_vec_23_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_23_right_subtree_state_5 = state_vec_23_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_23_T_39 = state_vec_0_set_left_older_4 ? state_vec_23_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_23_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_23_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_23_T_44 = {state_vec_0_set_left_older_4,_state_vec_23_T_39,_state_vec_23_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_23_T_45 = state_vec_0_set_left_older_3 ? _state_vec_23_T_44 : state_vec_23_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_23_T_46 = {state_vec_0_set_left_older_3,_state_vec_23_T_34,_state_vec_23_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_23_T_47 = set_touch_ways_1_23_valid ? _state_vec_23_T_46 : _state_vec_23_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_23_left_subtree_state_6 = _state_vec_23_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_23_right_subtree_state_6 = _state_vec_23_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_23_left_subtree_state_7 = state_vec_23_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_23_right_subtree_state_7 = state_vec_23_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_23_T_52 = state_vec_0_set_left_older_7 ? state_vec_23_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_23_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_23_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_23_T_57 = {state_vec_0_set_left_older_7,_state_vec_23_T_52,_state_vec_23_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_23_T_58 = state_vec_0_set_left_older_6 ? state_vec_23_left_subtree_state_6 : _state_vec_23_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_23_left_subtree_state_8 = state_vec_23_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_23_right_subtree_state_8 = state_vec_23_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_23_T_63 = state_vec_0_set_left_older_7 ? state_vec_23_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_23_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_23_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_23_T_68 = {state_vec_0_set_left_older_7,_state_vec_23_T_63,_state_vec_23_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_23_T_69 = state_vec_0_set_left_older_6 ? _state_vec_23_T_68 : state_vec_23_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_23_T_70 = {state_vec_0_set_left_older_6,_state_vec_23_T_58,_state_vec_23_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_24_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h18; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_24_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h18; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_24_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h18; // @[Replacement.scala 384:30]
  wire  _T_208 = set_touch_ways_0_24_valid | set_touch_ways_1_24_valid | set_touch_ways_2_24_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_24_left_subtree_state = state_vec_24[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_24_right_subtree_state = state_vec_24[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_24_left_subtree_state_1 = state_vec_24_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_24_right_subtree_state_1 = state_vec_24_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_24_T_4 = state_vec_0_set_left_older_1 ? state_vec_24_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_24_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_24_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_24_T_9 = {state_vec_0_set_left_older_1,_state_vec_24_T_4,_state_vec_24_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_24_T_10 = state_vec_0_set_left_older ? state_vec_24_left_subtree_state : _state_vec_24_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_24_left_subtree_state_2 = state_vec_24_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_24_right_subtree_state_2 = state_vec_24_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_24_T_15 = state_vec_0_set_left_older_1 ? state_vec_24_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_24_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_24_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_24_T_20 = {state_vec_0_set_left_older_1,_state_vec_24_T_15,_state_vec_24_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_24_T_21 = state_vec_0_set_left_older ? _state_vec_24_T_20 : state_vec_24_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_24_T_22 = {state_vec_0_set_left_older,_state_vec_24_T_10,_state_vec_24_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_24_T_23 = set_touch_ways_0_24_valid ? _state_vec_24_T_22 : state_vec_24; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_24_left_subtree_state_3 = _state_vec_24_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_24_right_subtree_state_3 = _state_vec_24_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_24_left_subtree_state_4 = state_vec_24_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_24_right_subtree_state_4 = state_vec_24_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_24_T_28 = state_vec_0_set_left_older_4 ? state_vec_24_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_24_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_24_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_24_T_33 = {state_vec_0_set_left_older_4,_state_vec_24_T_28,_state_vec_24_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_24_T_34 = state_vec_0_set_left_older_3 ? state_vec_24_left_subtree_state_3 : _state_vec_24_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_24_left_subtree_state_5 = state_vec_24_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_24_right_subtree_state_5 = state_vec_24_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_24_T_39 = state_vec_0_set_left_older_4 ? state_vec_24_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_24_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_24_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_24_T_44 = {state_vec_0_set_left_older_4,_state_vec_24_T_39,_state_vec_24_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_24_T_45 = state_vec_0_set_left_older_3 ? _state_vec_24_T_44 : state_vec_24_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_24_T_46 = {state_vec_0_set_left_older_3,_state_vec_24_T_34,_state_vec_24_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_24_T_47 = set_touch_ways_1_24_valid ? _state_vec_24_T_46 : _state_vec_24_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_24_left_subtree_state_6 = _state_vec_24_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_24_right_subtree_state_6 = _state_vec_24_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_24_left_subtree_state_7 = state_vec_24_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_24_right_subtree_state_7 = state_vec_24_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_24_T_52 = state_vec_0_set_left_older_7 ? state_vec_24_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_24_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_24_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_24_T_57 = {state_vec_0_set_left_older_7,_state_vec_24_T_52,_state_vec_24_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_24_T_58 = state_vec_0_set_left_older_6 ? state_vec_24_left_subtree_state_6 : _state_vec_24_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_24_left_subtree_state_8 = state_vec_24_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_24_right_subtree_state_8 = state_vec_24_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_24_T_63 = state_vec_0_set_left_older_7 ? state_vec_24_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_24_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_24_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_24_T_68 = {state_vec_0_set_left_older_7,_state_vec_24_T_63,_state_vec_24_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_24_T_69 = state_vec_0_set_left_older_6 ? _state_vec_24_T_68 : state_vec_24_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_24_T_70 = {state_vec_0_set_left_older_6,_state_vec_24_T_58,_state_vec_24_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_25_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h19; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_25_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h19; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_25_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h19; // @[Replacement.scala 384:30]
  wire  _T_212 = set_touch_ways_0_25_valid | set_touch_ways_1_25_valid | set_touch_ways_2_25_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_25_left_subtree_state = state_vec_25[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_25_right_subtree_state = state_vec_25[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_25_left_subtree_state_1 = state_vec_25_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_25_right_subtree_state_1 = state_vec_25_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_25_T_4 = state_vec_0_set_left_older_1 ? state_vec_25_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_25_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_25_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_25_T_9 = {state_vec_0_set_left_older_1,_state_vec_25_T_4,_state_vec_25_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_25_T_10 = state_vec_0_set_left_older ? state_vec_25_left_subtree_state : _state_vec_25_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_25_left_subtree_state_2 = state_vec_25_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_25_right_subtree_state_2 = state_vec_25_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_25_T_15 = state_vec_0_set_left_older_1 ? state_vec_25_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_25_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_25_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_25_T_20 = {state_vec_0_set_left_older_1,_state_vec_25_T_15,_state_vec_25_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_25_T_21 = state_vec_0_set_left_older ? _state_vec_25_T_20 : state_vec_25_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_25_T_22 = {state_vec_0_set_left_older,_state_vec_25_T_10,_state_vec_25_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_25_T_23 = set_touch_ways_0_25_valid ? _state_vec_25_T_22 : state_vec_25; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_25_left_subtree_state_3 = _state_vec_25_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_25_right_subtree_state_3 = _state_vec_25_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_25_left_subtree_state_4 = state_vec_25_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_25_right_subtree_state_4 = state_vec_25_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_25_T_28 = state_vec_0_set_left_older_4 ? state_vec_25_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_25_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_25_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_25_T_33 = {state_vec_0_set_left_older_4,_state_vec_25_T_28,_state_vec_25_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_25_T_34 = state_vec_0_set_left_older_3 ? state_vec_25_left_subtree_state_3 : _state_vec_25_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_25_left_subtree_state_5 = state_vec_25_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_25_right_subtree_state_5 = state_vec_25_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_25_T_39 = state_vec_0_set_left_older_4 ? state_vec_25_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_25_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_25_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_25_T_44 = {state_vec_0_set_left_older_4,_state_vec_25_T_39,_state_vec_25_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_25_T_45 = state_vec_0_set_left_older_3 ? _state_vec_25_T_44 : state_vec_25_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_25_T_46 = {state_vec_0_set_left_older_3,_state_vec_25_T_34,_state_vec_25_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_25_T_47 = set_touch_ways_1_25_valid ? _state_vec_25_T_46 : _state_vec_25_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_25_left_subtree_state_6 = _state_vec_25_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_25_right_subtree_state_6 = _state_vec_25_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_25_left_subtree_state_7 = state_vec_25_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_25_right_subtree_state_7 = state_vec_25_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_25_T_52 = state_vec_0_set_left_older_7 ? state_vec_25_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_25_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_25_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_25_T_57 = {state_vec_0_set_left_older_7,_state_vec_25_T_52,_state_vec_25_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_25_T_58 = state_vec_0_set_left_older_6 ? state_vec_25_left_subtree_state_6 : _state_vec_25_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_25_left_subtree_state_8 = state_vec_25_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_25_right_subtree_state_8 = state_vec_25_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_25_T_63 = state_vec_0_set_left_older_7 ? state_vec_25_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_25_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_25_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_25_T_68 = {state_vec_0_set_left_older_7,_state_vec_25_T_63,_state_vec_25_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_25_T_69 = state_vec_0_set_left_older_6 ? _state_vec_25_T_68 : state_vec_25_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_25_T_70 = {state_vec_0_set_left_older_6,_state_vec_25_T_58,_state_vec_25_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_26_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h1a; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_26_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h1a; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_26_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h1a; // @[Replacement.scala 384:30]
  wire  _T_216 = set_touch_ways_0_26_valid | set_touch_ways_1_26_valid | set_touch_ways_2_26_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_26_left_subtree_state = state_vec_26[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_26_right_subtree_state = state_vec_26[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_26_left_subtree_state_1 = state_vec_26_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_26_right_subtree_state_1 = state_vec_26_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_26_T_4 = state_vec_0_set_left_older_1 ? state_vec_26_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_26_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_26_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_26_T_9 = {state_vec_0_set_left_older_1,_state_vec_26_T_4,_state_vec_26_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_26_T_10 = state_vec_0_set_left_older ? state_vec_26_left_subtree_state : _state_vec_26_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_26_left_subtree_state_2 = state_vec_26_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_26_right_subtree_state_2 = state_vec_26_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_26_T_15 = state_vec_0_set_left_older_1 ? state_vec_26_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_26_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_26_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_26_T_20 = {state_vec_0_set_left_older_1,_state_vec_26_T_15,_state_vec_26_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_26_T_21 = state_vec_0_set_left_older ? _state_vec_26_T_20 : state_vec_26_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_26_T_22 = {state_vec_0_set_left_older,_state_vec_26_T_10,_state_vec_26_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_26_T_23 = set_touch_ways_0_26_valid ? _state_vec_26_T_22 : state_vec_26; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_26_left_subtree_state_3 = _state_vec_26_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_26_right_subtree_state_3 = _state_vec_26_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_26_left_subtree_state_4 = state_vec_26_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_26_right_subtree_state_4 = state_vec_26_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_26_T_28 = state_vec_0_set_left_older_4 ? state_vec_26_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_26_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_26_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_26_T_33 = {state_vec_0_set_left_older_4,_state_vec_26_T_28,_state_vec_26_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_26_T_34 = state_vec_0_set_left_older_3 ? state_vec_26_left_subtree_state_3 : _state_vec_26_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_26_left_subtree_state_5 = state_vec_26_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_26_right_subtree_state_5 = state_vec_26_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_26_T_39 = state_vec_0_set_left_older_4 ? state_vec_26_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_26_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_26_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_26_T_44 = {state_vec_0_set_left_older_4,_state_vec_26_T_39,_state_vec_26_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_26_T_45 = state_vec_0_set_left_older_3 ? _state_vec_26_T_44 : state_vec_26_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_26_T_46 = {state_vec_0_set_left_older_3,_state_vec_26_T_34,_state_vec_26_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_26_T_47 = set_touch_ways_1_26_valid ? _state_vec_26_T_46 : _state_vec_26_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_26_left_subtree_state_6 = _state_vec_26_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_26_right_subtree_state_6 = _state_vec_26_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_26_left_subtree_state_7 = state_vec_26_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_26_right_subtree_state_7 = state_vec_26_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_26_T_52 = state_vec_0_set_left_older_7 ? state_vec_26_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_26_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_26_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_26_T_57 = {state_vec_0_set_left_older_7,_state_vec_26_T_52,_state_vec_26_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_26_T_58 = state_vec_0_set_left_older_6 ? state_vec_26_left_subtree_state_6 : _state_vec_26_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_26_left_subtree_state_8 = state_vec_26_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_26_right_subtree_state_8 = state_vec_26_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_26_T_63 = state_vec_0_set_left_older_7 ? state_vec_26_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_26_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_26_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_26_T_68 = {state_vec_0_set_left_older_7,_state_vec_26_T_63,_state_vec_26_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_26_T_69 = state_vec_0_set_left_older_6 ? _state_vec_26_T_68 : state_vec_26_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_26_T_70 = {state_vec_0_set_left_older_6,_state_vec_26_T_58,_state_vec_26_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_27_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h1b; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_27_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h1b; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_27_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h1b; // @[Replacement.scala 384:30]
  wire  _T_220 = set_touch_ways_0_27_valid | set_touch_ways_1_27_valid | set_touch_ways_2_27_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_27_left_subtree_state = state_vec_27[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_27_right_subtree_state = state_vec_27[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_27_left_subtree_state_1 = state_vec_27_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_27_right_subtree_state_1 = state_vec_27_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_27_T_4 = state_vec_0_set_left_older_1 ? state_vec_27_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_27_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_27_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_27_T_9 = {state_vec_0_set_left_older_1,_state_vec_27_T_4,_state_vec_27_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_27_T_10 = state_vec_0_set_left_older ? state_vec_27_left_subtree_state : _state_vec_27_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_27_left_subtree_state_2 = state_vec_27_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_27_right_subtree_state_2 = state_vec_27_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_27_T_15 = state_vec_0_set_left_older_1 ? state_vec_27_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_27_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_27_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_27_T_20 = {state_vec_0_set_left_older_1,_state_vec_27_T_15,_state_vec_27_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_27_T_21 = state_vec_0_set_left_older ? _state_vec_27_T_20 : state_vec_27_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_27_T_22 = {state_vec_0_set_left_older,_state_vec_27_T_10,_state_vec_27_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_27_T_23 = set_touch_ways_0_27_valid ? _state_vec_27_T_22 : state_vec_27; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_27_left_subtree_state_3 = _state_vec_27_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_27_right_subtree_state_3 = _state_vec_27_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_27_left_subtree_state_4 = state_vec_27_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_27_right_subtree_state_4 = state_vec_27_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_27_T_28 = state_vec_0_set_left_older_4 ? state_vec_27_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_27_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_27_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_27_T_33 = {state_vec_0_set_left_older_4,_state_vec_27_T_28,_state_vec_27_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_27_T_34 = state_vec_0_set_left_older_3 ? state_vec_27_left_subtree_state_3 : _state_vec_27_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_27_left_subtree_state_5 = state_vec_27_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_27_right_subtree_state_5 = state_vec_27_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_27_T_39 = state_vec_0_set_left_older_4 ? state_vec_27_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_27_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_27_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_27_T_44 = {state_vec_0_set_left_older_4,_state_vec_27_T_39,_state_vec_27_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_27_T_45 = state_vec_0_set_left_older_3 ? _state_vec_27_T_44 : state_vec_27_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_27_T_46 = {state_vec_0_set_left_older_3,_state_vec_27_T_34,_state_vec_27_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_27_T_47 = set_touch_ways_1_27_valid ? _state_vec_27_T_46 : _state_vec_27_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_27_left_subtree_state_6 = _state_vec_27_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_27_right_subtree_state_6 = _state_vec_27_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_27_left_subtree_state_7 = state_vec_27_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_27_right_subtree_state_7 = state_vec_27_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_27_T_52 = state_vec_0_set_left_older_7 ? state_vec_27_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_27_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_27_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_27_T_57 = {state_vec_0_set_left_older_7,_state_vec_27_T_52,_state_vec_27_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_27_T_58 = state_vec_0_set_left_older_6 ? state_vec_27_left_subtree_state_6 : _state_vec_27_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_27_left_subtree_state_8 = state_vec_27_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_27_right_subtree_state_8 = state_vec_27_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_27_T_63 = state_vec_0_set_left_older_7 ? state_vec_27_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_27_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_27_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_27_T_68 = {state_vec_0_set_left_older_7,_state_vec_27_T_63,_state_vec_27_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_27_T_69 = state_vec_0_set_left_older_6 ? _state_vec_27_T_68 : state_vec_27_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_27_T_70 = {state_vec_0_set_left_older_6,_state_vec_27_T_58,_state_vec_27_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_28_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h1c; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_28_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h1c; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_28_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h1c; // @[Replacement.scala 384:30]
  wire  _T_224 = set_touch_ways_0_28_valid | set_touch_ways_1_28_valid | set_touch_ways_2_28_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_28_left_subtree_state = state_vec_28[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_28_right_subtree_state = state_vec_28[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_28_left_subtree_state_1 = state_vec_28_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_28_right_subtree_state_1 = state_vec_28_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_28_T_4 = state_vec_0_set_left_older_1 ? state_vec_28_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_28_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_28_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_28_T_9 = {state_vec_0_set_left_older_1,_state_vec_28_T_4,_state_vec_28_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_28_T_10 = state_vec_0_set_left_older ? state_vec_28_left_subtree_state : _state_vec_28_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_28_left_subtree_state_2 = state_vec_28_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_28_right_subtree_state_2 = state_vec_28_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_28_T_15 = state_vec_0_set_left_older_1 ? state_vec_28_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_28_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_28_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_28_T_20 = {state_vec_0_set_left_older_1,_state_vec_28_T_15,_state_vec_28_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_28_T_21 = state_vec_0_set_left_older ? _state_vec_28_T_20 : state_vec_28_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_28_T_22 = {state_vec_0_set_left_older,_state_vec_28_T_10,_state_vec_28_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_28_T_23 = set_touch_ways_0_28_valid ? _state_vec_28_T_22 : state_vec_28; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_28_left_subtree_state_3 = _state_vec_28_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_28_right_subtree_state_3 = _state_vec_28_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_28_left_subtree_state_4 = state_vec_28_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_28_right_subtree_state_4 = state_vec_28_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_28_T_28 = state_vec_0_set_left_older_4 ? state_vec_28_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_28_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_28_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_28_T_33 = {state_vec_0_set_left_older_4,_state_vec_28_T_28,_state_vec_28_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_28_T_34 = state_vec_0_set_left_older_3 ? state_vec_28_left_subtree_state_3 : _state_vec_28_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_28_left_subtree_state_5 = state_vec_28_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_28_right_subtree_state_5 = state_vec_28_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_28_T_39 = state_vec_0_set_left_older_4 ? state_vec_28_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_28_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_28_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_28_T_44 = {state_vec_0_set_left_older_4,_state_vec_28_T_39,_state_vec_28_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_28_T_45 = state_vec_0_set_left_older_3 ? _state_vec_28_T_44 : state_vec_28_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_28_T_46 = {state_vec_0_set_left_older_3,_state_vec_28_T_34,_state_vec_28_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_28_T_47 = set_touch_ways_1_28_valid ? _state_vec_28_T_46 : _state_vec_28_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_28_left_subtree_state_6 = _state_vec_28_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_28_right_subtree_state_6 = _state_vec_28_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_28_left_subtree_state_7 = state_vec_28_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_28_right_subtree_state_7 = state_vec_28_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_28_T_52 = state_vec_0_set_left_older_7 ? state_vec_28_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_28_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_28_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_28_T_57 = {state_vec_0_set_left_older_7,_state_vec_28_T_52,_state_vec_28_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_28_T_58 = state_vec_0_set_left_older_6 ? state_vec_28_left_subtree_state_6 : _state_vec_28_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_28_left_subtree_state_8 = state_vec_28_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_28_right_subtree_state_8 = state_vec_28_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_28_T_63 = state_vec_0_set_left_older_7 ? state_vec_28_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_28_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_28_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_28_T_68 = {state_vec_0_set_left_older_7,_state_vec_28_T_63,_state_vec_28_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_28_T_69 = state_vec_0_set_left_older_6 ? _state_vec_28_T_68 : state_vec_28_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_28_T_70 = {state_vec_0_set_left_older_6,_state_vec_28_T_58,_state_vec_28_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_29_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h1d; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_29_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h1d; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_29_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h1d; // @[Replacement.scala 384:30]
  wire  _T_228 = set_touch_ways_0_29_valid | set_touch_ways_1_29_valid | set_touch_ways_2_29_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_29_left_subtree_state = state_vec_29[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_29_right_subtree_state = state_vec_29[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_29_left_subtree_state_1 = state_vec_29_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_29_right_subtree_state_1 = state_vec_29_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_29_T_4 = state_vec_0_set_left_older_1 ? state_vec_29_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_29_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_29_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_29_T_9 = {state_vec_0_set_left_older_1,_state_vec_29_T_4,_state_vec_29_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_29_T_10 = state_vec_0_set_left_older ? state_vec_29_left_subtree_state : _state_vec_29_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_29_left_subtree_state_2 = state_vec_29_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_29_right_subtree_state_2 = state_vec_29_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_29_T_15 = state_vec_0_set_left_older_1 ? state_vec_29_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_29_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_29_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_29_T_20 = {state_vec_0_set_left_older_1,_state_vec_29_T_15,_state_vec_29_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_29_T_21 = state_vec_0_set_left_older ? _state_vec_29_T_20 : state_vec_29_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_29_T_22 = {state_vec_0_set_left_older,_state_vec_29_T_10,_state_vec_29_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_29_T_23 = set_touch_ways_0_29_valid ? _state_vec_29_T_22 : state_vec_29; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_29_left_subtree_state_3 = _state_vec_29_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_29_right_subtree_state_3 = _state_vec_29_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_29_left_subtree_state_4 = state_vec_29_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_29_right_subtree_state_4 = state_vec_29_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_29_T_28 = state_vec_0_set_left_older_4 ? state_vec_29_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_29_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_29_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_29_T_33 = {state_vec_0_set_left_older_4,_state_vec_29_T_28,_state_vec_29_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_29_T_34 = state_vec_0_set_left_older_3 ? state_vec_29_left_subtree_state_3 : _state_vec_29_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_29_left_subtree_state_5 = state_vec_29_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_29_right_subtree_state_5 = state_vec_29_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_29_T_39 = state_vec_0_set_left_older_4 ? state_vec_29_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_29_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_29_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_29_T_44 = {state_vec_0_set_left_older_4,_state_vec_29_T_39,_state_vec_29_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_29_T_45 = state_vec_0_set_left_older_3 ? _state_vec_29_T_44 : state_vec_29_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_29_T_46 = {state_vec_0_set_left_older_3,_state_vec_29_T_34,_state_vec_29_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_29_T_47 = set_touch_ways_1_29_valid ? _state_vec_29_T_46 : _state_vec_29_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_29_left_subtree_state_6 = _state_vec_29_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_29_right_subtree_state_6 = _state_vec_29_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_29_left_subtree_state_7 = state_vec_29_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_29_right_subtree_state_7 = state_vec_29_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_29_T_52 = state_vec_0_set_left_older_7 ? state_vec_29_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_29_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_29_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_29_T_57 = {state_vec_0_set_left_older_7,_state_vec_29_T_52,_state_vec_29_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_29_T_58 = state_vec_0_set_left_older_6 ? state_vec_29_left_subtree_state_6 : _state_vec_29_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_29_left_subtree_state_8 = state_vec_29_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_29_right_subtree_state_8 = state_vec_29_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_29_T_63 = state_vec_0_set_left_older_7 ? state_vec_29_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_29_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_29_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_29_T_68 = {state_vec_0_set_left_older_7,_state_vec_29_T_63,_state_vec_29_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_29_T_69 = state_vec_0_set_left_older_6 ? _state_vec_29_T_68 : state_vec_29_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_29_T_70 = {state_vec_0_set_left_older_6,_state_vec_29_T_58,_state_vec_29_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_30_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h1e; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_30_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h1e; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_30_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h1e; // @[Replacement.scala 384:30]
  wire  _T_232 = set_touch_ways_0_30_valid | set_touch_ways_1_30_valid | set_touch_ways_2_30_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_30_left_subtree_state = state_vec_30[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_30_right_subtree_state = state_vec_30[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_30_left_subtree_state_1 = state_vec_30_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_30_right_subtree_state_1 = state_vec_30_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_30_T_4 = state_vec_0_set_left_older_1 ? state_vec_30_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_30_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_30_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_30_T_9 = {state_vec_0_set_left_older_1,_state_vec_30_T_4,_state_vec_30_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_30_T_10 = state_vec_0_set_left_older ? state_vec_30_left_subtree_state : _state_vec_30_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_30_left_subtree_state_2 = state_vec_30_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_30_right_subtree_state_2 = state_vec_30_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_30_T_15 = state_vec_0_set_left_older_1 ? state_vec_30_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_30_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_30_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_30_T_20 = {state_vec_0_set_left_older_1,_state_vec_30_T_15,_state_vec_30_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_30_T_21 = state_vec_0_set_left_older ? _state_vec_30_T_20 : state_vec_30_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_30_T_22 = {state_vec_0_set_left_older,_state_vec_30_T_10,_state_vec_30_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_30_T_23 = set_touch_ways_0_30_valid ? _state_vec_30_T_22 : state_vec_30; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_30_left_subtree_state_3 = _state_vec_30_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_30_right_subtree_state_3 = _state_vec_30_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_30_left_subtree_state_4 = state_vec_30_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_30_right_subtree_state_4 = state_vec_30_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_30_T_28 = state_vec_0_set_left_older_4 ? state_vec_30_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_30_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_30_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_30_T_33 = {state_vec_0_set_left_older_4,_state_vec_30_T_28,_state_vec_30_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_30_T_34 = state_vec_0_set_left_older_3 ? state_vec_30_left_subtree_state_3 : _state_vec_30_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_30_left_subtree_state_5 = state_vec_30_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_30_right_subtree_state_5 = state_vec_30_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_30_T_39 = state_vec_0_set_left_older_4 ? state_vec_30_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_30_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_30_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_30_T_44 = {state_vec_0_set_left_older_4,_state_vec_30_T_39,_state_vec_30_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_30_T_45 = state_vec_0_set_left_older_3 ? _state_vec_30_T_44 : state_vec_30_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_30_T_46 = {state_vec_0_set_left_older_3,_state_vec_30_T_34,_state_vec_30_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_30_T_47 = set_touch_ways_1_30_valid ? _state_vec_30_T_46 : _state_vec_30_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_30_left_subtree_state_6 = _state_vec_30_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_30_right_subtree_state_6 = _state_vec_30_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_30_left_subtree_state_7 = state_vec_30_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_30_right_subtree_state_7 = state_vec_30_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_30_T_52 = state_vec_0_set_left_older_7 ? state_vec_30_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_30_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_30_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_30_T_57 = {state_vec_0_set_left_older_7,_state_vec_30_T_52,_state_vec_30_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_30_T_58 = state_vec_0_set_left_older_6 ? state_vec_30_left_subtree_state_6 : _state_vec_30_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_30_left_subtree_state_8 = state_vec_30_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_30_right_subtree_state_8 = state_vec_30_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_30_T_63 = state_vec_0_set_left_older_7 ? state_vec_30_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_30_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_30_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_30_T_68 = {state_vec_0_set_left_older_7,_state_vec_30_T_63,_state_vec_30_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_30_T_69 = state_vec_0_set_left_older_6 ? _state_vec_30_T_68 : state_vec_30_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_30_T_70 = {state_vec_0_set_left_older_6,_state_vec_30_T_58,_state_vec_30_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_31_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h1f; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_31_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h1f; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_31_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h1f; // @[Replacement.scala 384:30]
  wire  _T_236 = set_touch_ways_0_31_valid | set_touch_ways_1_31_valid | set_touch_ways_2_31_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_31_left_subtree_state = state_vec_31[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_31_right_subtree_state = state_vec_31[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_31_left_subtree_state_1 = state_vec_31_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_31_right_subtree_state_1 = state_vec_31_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_31_T_4 = state_vec_0_set_left_older_1 ? state_vec_31_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_31_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_31_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_31_T_9 = {state_vec_0_set_left_older_1,_state_vec_31_T_4,_state_vec_31_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_31_T_10 = state_vec_0_set_left_older ? state_vec_31_left_subtree_state : _state_vec_31_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_31_left_subtree_state_2 = state_vec_31_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_31_right_subtree_state_2 = state_vec_31_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_31_T_15 = state_vec_0_set_left_older_1 ? state_vec_31_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_31_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_31_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_31_T_20 = {state_vec_0_set_left_older_1,_state_vec_31_T_15,_state_vec_31_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_31_T_21 = state_vec_0_set_left_older ? _state_vec_31_T_20 : state_vec_31_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_31_T_22 = {state_vec_0_set_left_older,_state_vec_31_T_10,_state_vec_31_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_31_T_23 = set_touch_ways_0_31_valid ? _state_vec_31_T_22 : state_vec_31; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_31_left_subtree_state_3 = _state_vec_31_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_31_right_subtree_state_3 = _state_vec_31_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_31_left_subtree_state_4 = state_vec_31_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_31_right_subtree_state_4 = state_vec_31_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_31_T_28 = state_vec_0_set_left_older_4 ? state_vec_31_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_31_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_31_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_31_T_33 = {state_vec_0_set_left_older_4,_state_vec_31_T_28,_state_vec_31_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_31_T_34 = state_vec_0_set_left_older_3 ? state_vec_31_left_subtree_state_3 : _state_vec_31_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_31_left_subtree_state_5 = state_vec_31_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_31_right_subtree_state_5 = state_vec_31_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_31_T_39 = state_vec_0_set_left_older_4 ? state_vec_31_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_31_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_31_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_31_T_44 = {state_vec_0_set_left_older_4,_state_vec_31_T_39,_state_vec_31_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_31_T_45 = state_vec_0_set_left_older_3 ? _state_vec_31_T_44 : state_vec_31_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_31_T_46 = {state_vec_0_set_left_older_3,_state_vec_31_T_34,_state_vec_31_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_31_T_47 = set_touch_ways_1_31_valid ? _state_vec_31_T_46 : _state_vec_31_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_31_left_subtree_state_6 = _state_vec_31_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_31_right_subtree_state_6 = _state_vec_31_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_31_left_subtree_state_7 = state_vec_31_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_31_right_subtree_state_7 = state_vec_31_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_31_T_52 = state_vec_0_set_left_older_7 ? state_vec_31_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_31_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_31_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_31_T_57 = {state_vec_0_set_left_older_7,_state_vec_31_T_52,_state_vec_31_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_31_T_58 = state_vec_0_set_left_older_6 ? state_vec_31_left_subtree_state_6 : _state_vec_31_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_31_left_subtree_state_8 = state_vec_31_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_31_right_subtree_state_8 = state_vec_31_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_31_T_63 = state_vec_0_set_left_older_7 ? state_vec_31_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_31_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_31_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_31_T_68 = {state_vec_0_set_left_older_7,_state_vec_31_T_63,_state_vec_31_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_31_T_69 = state_vec_0_set_left_older_6 ? _state_vec_31_T_68 : state_vec_31_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_31_T_70 = {state_vec_0_set_left_older_6,_state_vec_31_T_58,_state_vec_31_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_32_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h20; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_32_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h20; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_32_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h20; // @[Replacement.scala 384:30]
  wire  _T_240 = set_touch_ways_0_32_valid | set_touch_ways_1_32_valid | set_touch_ways_2_32_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_32_left_subtree_state = state_vec_32[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_32_right_subtree_state = state_vec_32[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_32_left_subtree_state_1 = state_vec_32_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_32_right_subtree_state_1 = state_vec_32_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_32_T_4 = state_vec_0_set_left_older_1 ? state_vec_32_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_32_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_32_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_32_T_9 = {state_vec_0_set_left_older_1,_state_vec_32_T_4,_state_vec_32_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_32_T_10 = state_vec_0_set_left_older ? state_vec_32_left_subtree_state : _state_vec_32_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_32_left_subtree_state_2 = state_vec_32_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_32_right_subtree_state_2 = state_vec_32_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_32_T_15 = state_vec_0_set_left_older_1 ? state_vec_32_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_32_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_32_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_32_T_20 = {state_vec_0_set_left_older_1,_state_vec_32_T_15,_state_vec_32_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_32_T_21 = state_vec_0_set_left_older ? _state_vec_32_T_20 : state_vec_32_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_32_T_22 = {state_vec_0_set_left_older,_state_vec_32_T_10,_state_vec_32_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_32_T_23 = set_touch_ways_0_32_valid ? _state_vec_32_T_22 : state_vec_32; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_32_left_subtree_state_3 = _state_vec_32_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_32_right_subtree_state_3 = _state_vec_32_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_32_left_subtree_state_4 = state_vec_32_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_32_right_subtree_state_4 = state_vec_32_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_32_T_28 = state_vec_0_set_left_older_4 ? state_vec_32_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_32_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_32_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_32_T_33 = {state_vec_0_set_left_older_4,_state_vec_32_T_28,_state_vec_32_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_32_T_34 = state_vec_0_set_left_older_3 ? state_vec_32_left_subtree_state_3 : _state_vec_32_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_32_left_subtree_state_5 = state_vec_32_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_32_right_subtree_state_5 = state_vec_32_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_32_T_39 = state_vec_0_set_left_older_4 ? state_vec_32_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_32_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_32_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_32_T_44 = {state_vec_0_set_left_older_4,_state_vec_32_T_39,_state_vec_32_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_32_T_45 = state_vec_0_set_left_older_3 ? _state_vec_32_T_44 : state_vec_32_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_32_T_46 = {state_vec_0_set_left_older_3,_state_vec_32_T_34,_state_vec_32_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_32_T_47 = set_touch_ways_1_32_valid ? _state_vec_32_T_46 : _state_vec_32_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_32_left_subtree_state_6 = _state_vec_32_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_32_right_subtree_state_6 = _state_vec_32_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_32_left_subtree_state_7 = state_vec_32_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_32_right_subtree_state_7 = state_vec_32_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_32_T_52 = state_vec_0_set_left_older_7 ? state_vec_32_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_32_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_32_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_32_T_57 = {state_vec_0_set_left_older_7,_state_vec_32_T_52,_state_vec_32_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_32_T_58 = state_vec_0_set_left_older_6 ? state_vec_32_left_subtree_state_6 : _state_vec_32_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_32_left_subtree_state_8 = state_vec_32_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_32_right_subtree_state_8 = state_vec_32_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_32_T_63 = state_vec_0_set_left_older_7 ? state_vec_32_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_32_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_32_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_32_T_68 = {state_vec_0_set_left_older_7,_state_vec_32_T_63,_state_vec_32_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_32_T_69 = state_vec_0_set_left_older_6 ? _state_vec_32_T_68 : state_vec_32_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_32_T_70 = {state_vec_0_set_left_older_6,_state_vec_32_T_58,_state_vec_32_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_33_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h21; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_33_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h21; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_33_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h21; // @[Replacement.scala 384:30]
  wire  _T_244 = set_touch_ways_0_33_valid | set_touch_ways_1_33_valid | set_touch_ways_2_33_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_33_left_subtree_state = state_vec_33[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_33_right_subtree_state = state_vec_33[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_33_left_subtree_state_1 = state_vec_33_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_33_right_subtree_state_1 = state_vec_33_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_33_T_4 = state_vec_0_set_left_older_1 ? state_vec_33_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_33_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_33_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_33_T_9 = {state_vec_0_set_left_older_1,_state_vec_33_T_4,_state_vec_33_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_33_T_10 = state_vec_0_set_left_older ? state_vec_33_left_subtree_state : _state_vec_33_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_33_left_subtree_state_2 = state_vec_33_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_33_right_subtree_state_2 = state_vec_33_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_33_T_15 = state_vec_0_set_left_older_1 ? state_vec_33_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_33_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_33_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_33_T_20 = {state_vec_0_set_left_older_1,_state_vec_33_T_15,_state_vec_33_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_33_T_21 = state_vec_0_set_left_older ? _state_vec_33_T_20 : state_vec_33_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_33_T_22 = {state_vec_0_set_left_older,_state_vec_33_T_10,_state_vec_33_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_33_T_23 = set_touch_ways_0_33_valid ? _state_vec_33_T_22 : state_vec_33; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_33_left_subtree_state_3 = _state_vec_33_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_33_right_subtree_state_3 = _state_vec_33_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_33_left_subtree_state_4 = state_vec_33_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_33_right_subtree_state_4 = state_vec_33_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_33_T_28 = state_vec_0_set_left_older_4 ? state_vec_33_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_33_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_33_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_33_T_33 = {state_vec_0_set_left_older_4,_state_vec_33_T_28,_state_vec_33_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_33_T_34 = state_vec_0_set_left_older_3 ? state_vec_33_left_subtree_state_3 : _state_vec_33_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_33_left_subtree_state_5 = state_vec_33_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_33_right_subtree_state_5 = state_vec_33_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_33_T_39 = state_vec_0_set_left_older_4 ? state_vec_33_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_33_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_33_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_33_T_44 = {state_vec_0_set_left_older_4,_state_vec_33_T_39,_state_vec_33_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_33_T_45 = state_vec_0_set_left_older_3 ? _state_vec_33_T_44 : state_vec_33_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_33_T_46 = {state_vec_0_set_left_older_3,_state_vec_33_T_34,_state_vec_33_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_33_T_47 = set_touch_ways_1_33_valid ? _state_vec_33_T_46 : _state_vec_33_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_33_left_subtree_state_6 = _state_vec_33_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_33_right_subtree_state_6 = _state_vec_33_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_33_left_subtree_state_7 = state_vec_33_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_33_right_subtree_state_7 = state_vec_33_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_33_T_52 = state_vec_0_set_left_older_7 ? state_vec_33_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_33_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_33_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_33_T_57 = {state_vec_0_set_left_older_7,_state_vec_33_T_52,_state_vec_33_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_33_T_58 = state_vec_0_set_left_older_6 ? state_vec_33_left_subtree_state_6 : _state_vec_33_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_33_left_subtree_state_8 = state_vec_33_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_33_right_subtree_state_8 = state_vec_33_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_33_T_63 = state_vec_0_set_left_older_7 ? state_vec_33_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_33_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_33_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_33_T_68 = {state_vec_0_set_left_older_7,_state_vec_33_T_63,_state_vec_33_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_33_T_69 = state_vec_0_set_left_older_6 ? _state_vec_33_T_68 : state_vec_33_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_33_T_70 = {state_vec_0_set_left_older_6,_state_vec_33_T_58,_state_vec_33_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_34_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h22; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_34_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h22; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_34_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h22; // @[Replacement.scala 384:30]
  wire  _T_248 = set_touch_ways_0_34_valid | set_touch_ways_1_34_valid | set_touch_ways_2_34_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_34_left_subtree_state = state_vec_34[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_34_right_subtree_state = state_vec_34[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_34_left_subtree_state_1 = state_vec_34_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_34_right_subtree_state_1 = state_vec_34_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_34_T_4 = state_vec_0_set_left_older_1 ? state_vec_34_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_34_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_34_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_34_T_9 = {state_vec_0_set_left_older_1,_state_vec_34_T_4,_state_vec_34_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_34_T_10 = state_vec_0_set_left_older ? state_vec_34_left_subtree_state : _state_vec_34_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_34_left_subtree_state_2 = state_vec_34_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_34_right_subtree_state_2 = state_vec_34_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_34_T_15 = state_vec_0_set_left_older_1 ? state_vec_34_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_34_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_34_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_34_T_20 = {state_vec_0_set_left_older_1,_state_vec_34_T_15,_state_vec_34_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_34_T_21 = state_vec_0_set_left_older ? _state_vec_34_T_20 : state_vec_34_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_34_T_22 = {state_vec_0_set_left_older,_state_vec_34_T_10,_state_vec_34_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_34_T_23 = set_touch_ways_0_34_valid ? _state_vec_34_T_22 : state_vec_34; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_34_left_subtree_state_3 = _state_vec_34_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_34_right_subtree_state_3 = _state_vec_34_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_34_left_subtree_state_4 = state_vec_34_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_34_right_subtree_state_4 = state_vec_34_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_34_T_28 = state_vec_0_set_left_older_4 ? state_vec_34_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_34_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_34_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_34_T_33 = {state_vec_0_set_left_older_4,_state_vec_34_T_28,_state_vec_34_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_34_T_34 = state_vec_0_set_left_older_3 ? state_vec_34_left_subtree_state_3 : _state_vec_34_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_34_left_subtree_state_5 = state_vec_34_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_34_right_subtree_state_5 = state_vec_34_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_34_T_39 = state_vec_0_set_left_older_4 ? state_vec_34_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_34_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_34_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_34_T_44 = {state_vec_0_set_left_older_4,_state_vec_34_T_39,_state_vec_34_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_34_T_45 = state_vec_0_set_left_older_3 ? _state_vec_34_T_44 : state_vec_34_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_34_T_46 = {state_vec_0_set_left_older_3,_state_vec_34_T_34,_state_vec_34_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_34_T_47 = set_touch_ways_1_34_valid ? _state_vec_34_T_46 : _state_vec_34_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_34_left_subtree_state_6 = _state_vec_34_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_34_right_subtree_state_6 = _state_vec_34_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_34_left_subtree_state_7 = state_vec_34_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_34_right_subtree_state_7 = state_vec_34_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_34_T_52 = state_vec_0_set_left_older_7 ? state_vec_34_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_34_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_34_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_34_T_57 = {state_vec_0_set_left_older_7,_state_vec_34_T_52,_state_vec_34_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_34_T_58 = state_vec_0_set_left_older_6 ? state_vec_34_left_subtree_state_6 : _state_vec_34_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_34_left_subtree_state_8 = state_vec_34_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_34_right_subtree_state_8 = state_vec_34_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_34_T_63 = state_vec_0_set_left_older_7 ? state_vec_34_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_34_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_34_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_34_T_68 = {state_vec_0_set_left_older_7,_state_vec_34_T_63,_state_vec_34_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_34_T_69 = state_vec_0_set_left_older_6 ? _state_vec_34_T_68 : state_vec_34_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_34_T_70 = {state_vec_0_set_left_older_6,_state_vec_34_T_58,_state_vec_34_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_35_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h23; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_35_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h23; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_35_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h23; // @[Replacement.scala 384:30]
  wire  _T_252 = set_touch_ways_0_35_valid | set_touch_ways_1_35_valid | set_touch_ways_2_35_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_35_left_subtree_state = state_vec_35[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_35_right_subtree_state = state_vec_35[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_35_left_subtree_state_1 = state_vec_35_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_35_right_subtree_state_1 = state_vec_35_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_35_T_4 = state_vec_0_set_left_older_1 ? state_vec_35_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_35_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_35_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_35_T_9 = {state_vec_0_set_left_older_1,_state_vec_35_T_4,_state_vec_35_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_35_T_10 = state_vec_0_set_left_older ? state_vec_35_left_subtree_state : _state_vec_35_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_35_left_subtree_state_2 = state_vec_35_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_35_right_subtree_state_2 = state_vec_35_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_35_T_15 = state_vec_0_set_left_older_1 ? state_vec_35_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_35_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_35_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_35_T_20 = {state_vec_0_set_left_older_1,_state_vec_35_T_15,_state_vec_35_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_35_T_21 = state_vec_0_set_left_older ? _state_vec_35_T_20 : state_vec_35_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_35_T_22 = {state_vec_0_set_left_older,_state_vec_35_T_10,_state_vec_35_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_35_T_23 = set_touch_ways_0_35_valid ? _state_vec_35_T_22 : state_vec_35; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_35_left_subtree_state_3 = _state_vec_35_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_35_right_subtree_state_3 = _state_vec_35_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_35_left_subtree_state_4 = state_vec_35_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_35_right_subtree_state_4 = state_vec_35_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_35_T_28 = state_vec_0_set_left_older_4 ? state_vec_35_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_35_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_35_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_35_T_33 = {state_vec_0_set_left_older_4,_state_vec_35_T_28,_state_vec_35_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_35_T_34 = state_vec_0_set_left_older_3 ? state_vec_35_left_subtree_state_3 : _state_vec_35_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_35_left_subtree_state_5 = state_vec_35_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_35_right_subtree_state_5 = state_vec_35_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_35_T_39 = state_vec_0_set_left_older_4 ? state_vec_35_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_35_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_35_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_35_T_44 = {state_vec_0_set_left_older_4,_state_vec_35_T_39,_state_vec_35_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_35_T_45 = state_vec_0_set_left_older_3 ? _state_vec_35_T_44 : state_vec_35_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_35_T_46 = {state_vec_0_set_left_older_3,_state_vec_35_T_34,_state_vec_35_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_35_T_47 = set_touch_ways_1_35_valid ? _state_vec_35_T_46 : _state_vec_35_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_35_left_subtree_state_6 = _state_vec_35_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_35_right_subtree_state_6 = _state_vec_35_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_35_left_subtree_state_7 = state_vec_35_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_35_right_subtree_state_7 = state_vec_35_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_35_T_52 = state_vec_0_set_left_older_7 ? state_vec_35_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_35_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_35_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_35_T_57 = {state_vec_0_set_left_older_7,_state_vec_35_T_52,_state_vec_35_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_35_T_58 = state_vec_0_set_left_older_6 ? state_vec_35_left_subtree_state_6 : _state_vec_35_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_35_left_subtree_state_8 = state_vec_35_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_35_right_subtree_state_8 = state_vec_35_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_35_T_63 = state_vec_0_set_left_older_7 ? state_vec_35_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_35_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_35_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_35_T_68 = {state_vec_0_set_left_older_7,_state_vec_35_T_63,_state_vec_35_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_35_T_69 = state_vec_0_set_left_older_6 ? _state_vec_35_T_68 : state_vec_35_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_35_T_70 = {state_vec_0_set_left_older_6,_state_vec_35_T_58,_state_vec_35_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_36_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h24; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_36_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h24; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_36_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h24; // @[Replacement.scala 384:30]
  wire  _T_256 = set_touch_ways_0_36_valid | set_touch_ways_1_36_valid | set_touch_ways_2_36_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_36_left_subtree_state = state_vec_36[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_36_right_subtree_state = state_vec_36[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_36_left_subtree_state_1 = state_vec_36_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_36_right_subtree_state_1 = state_vec_36_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_36_T_4 = state_vec_0_set_left_older_1 ? state_vec_36_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_36_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_36_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_36_T_9 = {state_vec_0_set_left_older_1,_state_vec_36_T_4,_state_vec_36_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_36_T_10 = state_vec_0_set_left_older ? state_vec_36_left_subtree_state : _state_vec_36_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_36_left_subtree_state_2 = state_vec_36_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_36_right_subtree_state_2 = state_vec_36_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_36_T_15 = state_vec_0_set_left_older_1 ? state_vec_36_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_36_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_36_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_36_T_20 = {state_vec_0_set_left_older_1,_state_vec_36_T_15,_state_vec_36_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_36_T_21 = state_vec_0_set_left_older ? _state_vec_36_T_20 : state_vec_36_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_36_T_22 = {state_vec_0_set_left_older,_state_vec_36_T_10,_state_vec_36_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_36_T_23 = set_touch_ways_0_36_valid ? _state_vec_36_T_22 : state_vec_36; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_36_left_subtree_state_3 = _state_vec_36_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_36_right_subtree_state_3 = _state_vec_36_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_36_left_subtree_state_4 = state_vec_36_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_36_right_subtree_state_4 = state_vec_36_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_36_T_28 = state_vec_0_set_left_older_4 ? state_vec_36_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_36_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_36_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_36_T_33 = {state_vec_0_set_left_older_4,_state_vec_36_T_28,_state_vec_36_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_36_T_34 = state_vec_0_set_left_older_3 ? state_vec_36_left_subtree_state_3 : _state_vec_36_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_36_left_subtree_state_5 = state_vec_36_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_36_right_subtree_state_5 = state_vec_36_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_36_T_39 = state_vec_0_set_left_older_4 ? state_vec_36_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_36_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_36_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_36_T_44 = {state_vec_0_set_left_older_4,_state_vec_36_T_39,_state_vec_36_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_36_T_45 = state_vec_0_set_left_older_3 ? _state_vec_36_T_44 : state_vec_36_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_36_T_46 = {state_vec_0_set_left_older_3,_state_vec_36_T_34,_state_vec_36_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_36_T_47 = set_touch_ways_1_36_valid ? _state_vec_36_T_46 : _state_vec_36_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_36_left_subtree_state_6 = _state_vec_36_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_36_right_subtree_state_6 = _state_vec_36_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_36_left_subtree_state_7 = state_vec_36_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_36_right_subtree_state_7 = state_vec_36_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_36_T_52 = state_vec_0_set_left_older_7 ? state_vec_36_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_36_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_36_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_36_T_57 = {state_vec_0_set_left_older_7,_state_vec_36_T_52,_state_vec_36_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_36_T_58 = state_vec_0_set_left_older_6 ? state_vec_36_left_subtree_state_6 : _state_vec_36_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_36_left_subtree_state_8 = state_vec_36_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_36_right_subtree_state_8 = state_vec_36_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_36_T_63 = state_vec_0_set_left_older_7 ? state_vec_36_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_36_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_36_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_36_T_68 = {state_vec_0_set_left_older_7,_state_vec_36_T_63,_state_vec_36_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_36_T_69 = state_vec_0_set_left_older_6 ? _state_vec_36_T_68 : state_vec_36_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_36_T_70 = {state_vec_0_set_left_older_6,_state_vec_36_T_58,_state_vec_36_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_37_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h25; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_37_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h25; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_37_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h25; // @[Replacement.scala 384:30]
  wire  _T_260 = set_touch_ways_0_37_valid | set_touch_ways_1_37_valid | set_touch_ways_2_37_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_37_left_subtree_state = state_vec_37[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_37_right_subtree_state = state_vec_37[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_37_left_subtree_state_1 = state_vec_37_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_37_right_subtree_state_1 = state_vec_37_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_37_T_4 = state_vec_0_set_left_older_1 ? state_vec_37_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_37_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_37_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_37_T_9 = {state_vec_0_set_left_older_1,_state_vec_37_T_4,_state_vec_37_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_37_T_10 = state_vec_0_set_left_older ? state_vec_37_left_subtree_state : _state_vec_37_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_37_left_subtree_state_2 = state_vec_37_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_37_right_subtree_state_2 = state_vec_37_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_37_T_15 = state_vec_0_set_left_older_1 ? state_vec_37_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_37_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_37_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_37_T_20 = {state_vec_0_set_left_older_1,_state_vec_37_T_15,_state_vec_37_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_37_T_21 = state_vec_0_set_left_older ? _state_vec_37_T_20 : state_vec_37_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_37_T_22 = {state_vec_0_set_left_older,_state_vec_37_T_10,_state_vec_37_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_37_T_23 = set_touch_ways_0_37_valid ? _state_vec_37_T_22 : state_vec_37; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_37_left_subtree_state_3 = _state_vec_37_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_37_right_subtree_state_3 = _state_vec_37_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_37_left_subtree_state_4 = state_vec_37_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_37_right_subtree_state_4 = state_vec_37_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_37_T_28 = state_vec_0_set_left_older_4 ? state_vec_37_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_37_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_37_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_37_T_33 = {state_vec_0_set_left_older_4,_state_vec_37_T_28,_state_vec_37_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_37_T_34 = state_vec_0_set_left_older_3 ? state_vec_37_left_subtree_state_3 : _state_vec_37_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_37_left_subtree_state_5 = state_vec_37_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_37_right_subtree_state_5 = state_vec_37_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_37_T_39 = state_vec_0_set_left_older_4 ? state_vec_37_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_37_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_37_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_37_T_44 = {state_vec_0_set_left_older_4,_state_vec_37_T_39,_state_vec_37_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_37_T_45 = state_vec_0_set_left_older_3 ? _state_vec_37_T_44 : state_vec_37_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_37_T_46 = {state_vec_0_set_left_older_3,_state_vec_37_T_34,_state_vec_37_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_37_T_47 = set_touch_ways_1_37_valid ? _state_vec_37_T_46 : _state_vec_37_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_37_left_subtree_state_6 = _state_vec_37_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_37_right_subtree_state_6 = _state_vec_37_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_37_left_subtree_state_7 = state_vec_37_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_37_right_subtree_state_7 = state_vec_37_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_37_T_52 = state_vec_0_set_left_older_7 ? state_vec_37_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_37_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_37_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_37_T_57 = {state_vec_0_set_left_older_7,_state_vec_37_T_52,_state_vec_37_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_37_T_58 = state_vec_0_set_left_older_6 ? state_vec_37_left_subtree_state_6 : _state_vec_37_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_37_left_subtree_state_8 = state_vec_37_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_37_right_subtree_state_8 = state_vec_37_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_37_T_63 = state_vec_0_set_left_older_7 ? state_vec_37_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_37_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_37_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_37_T_68 = {state_vec_0_set_left_older_7,_state_vec_37_T_63,_state_vec_37_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_37_T_69 = state_vec_0_set_left_older_6 ? _state_vec_37_T_68 : state_vec_37_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_37_T_70 = {state_vec_0_set_left_older_6,_state_vec_37_T_58,_state_vec_37_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_38_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h26; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_38_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h26; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_38_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h26; // @[Replacement.scala 384:30]
  wire  _T_264 = set_touch_ways_0_38_valid | set_touch_ways_1_38_valid | set_touch_ways_2_38_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_38_left_subtree_state = state_vec_38[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_38_right_subtree_state = state_vec_38[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_38_left_subtree_state_1 = state_vec_38_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_38_right_subtree_state_1 = state_vec_38_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_38_T_4 = state_vec_0_set_left_older_1 ? state_vec_38_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_38_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_38_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_38_T_9 = {state_vec_0_set_left_older_1,_state_vec_38_T_4,_state_vec_38_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_38_T_10 = state_vec_0_set_left_older ? state_vec_38_left_subtree_state : _state_vec_38_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_38_left_subtree_state_2 = state_vec_38_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_38_right_subtree_state_2 = state_vec_38_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_38_T_15 = state_vec_0_set_left_older_1 ? state_vec_38_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_38_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_38_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_38_T_20 = {state_vec_0_set_left_older_1,_state_vec_38_T_15,_state_vec_38_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_38_T_21 = state_vec_0_set_left_older ? _state_vec_38_T_20 : state_vec_38_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_38_T_22 = {state_vec_0_set_left_older,_state_vec_38_T_10,_state_vec_38_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_38_T_23 = set_touch_ways_0_38_valid ? _state_vec_38_T_22 : state_vec_38; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_38_left_subtree_state_3 = _state_vec_38_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_38_right_subtree_state_3 = _state_vec_38_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_38_left_subtree_state_4 = state_vec_38_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_38_right_subtree_state_4 = state_vec_38_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_38_T_28 = state_vec_0_set_left_older_4 ? state_vec_38_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_38_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_38_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_38_T_33 = {state_vec_0_set_left_older_4,_state_vec_38_T_28,_state_vec_38_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_38_T_34 = state_vec_0_set_left_older_3 ? state_vec_38_left_subtree_state_3 : _state_vec_38_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_38_left_subtree_state_5 = state_vec_38_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_38_right_subtree_state_5 = state_vec_38_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_38_T_39 = state_vec_0_set_left_older_4 ? state_vec_38_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_38_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_38_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_38_T_44 = {state_vec_0_set_left_older_4,_state_vec_38_T_39,_state_vec_38_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_38_T_45 = state_vec_0_set_left_older_3 ? _state_vec_38_T_44 : state_vec_38_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_38_T_46 = {state_vec_0_set_left_older_3,_state_vec_38_T_34,_state_vec_38_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_38_T_47 = set_touch_ways_1_38_valid ? _state_vec_38_T_46 : _state_vec_38_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_38_left_subtree_state_6 = _state_vec_38_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_38_right_subtree_state_6 = _state_vec_38_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_38_left_subtree_state_7 = state_vec_38_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_38_right_subtree_state_7 = state_vec_38_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_38_T_52 = state_vec_0_set_left_older_7 ? state_vec_38_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_38_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_38_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_38_T_57 = {state_vec_0_set_left_older_7,_state_vec_38_T_52,_state_vec_38_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_38_T_58 = state_vec_0_set_left_older_6 ? state_vec_38_left_subtree_state_6 : _state_vec_38_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_38_left_subtree_state_8 = state_vec_38_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_38_right_subtree_state_8 = state_vec_38_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_38_T_63 = state_vec_0_set_left_older_7 ? state_vec_38_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_38_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_38_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_38_T_68 = {state_vec_0_set_left_older_7,_state_vec_38_T_63,_state_vec_38_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_38_T_69 = state_vec_0_set_left_older_6 ? _state_vec_38_T_68 : state_vec_38_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_38_T_70 = {state_vec_0_set_left_older_6,_state_vec_38_T_58,_state_vec_38_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_39_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h27; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_39_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h27; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_39_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h27; // @[Replacement.scala 384:30]
  wire  _T_268 = set_touch_ways_0_39_valid | set_touch_ways_1_39_valid | set_touch_ways_2_39_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_39_left_subtree_state = state_vec_39[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_39_right_subtree_state = state_vec_39[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_39_left_subtree_state_1 = state_vec_39_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_39_right_subtree_state_1 = state_vec_39_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_39_T_4 = state_vec_0_set_left_older_1 ? state_vec_39_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_39_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_39_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_39_T_9 = {state_vec_0_set_left_older_1,_state_vec_39_T_4,_state_vec_39_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_39_T_10 = state_vec_0_set_left_older ? state_vec_39_left_subtree_state : _state_vec_39_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_39_left_subtree_state_2 = state_vec_39_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_39_right_subtree_state_2 = state_vec_39_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_39_T_15 = state_vec_0_set_left_older_1 ? state_vec_39_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_39_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_39_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_39_T_20 = {state_vec_0_set_left_older_1,_state_vec_39_T_15,_state_vec_39_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_39_T_21 = state_vec_0_set_left_older ? _state_vec_39_T_20 : state_vec_39_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_39_T_22 = {state_vec_0_set_left_older,_state_vec_39_T_10,_state_vec_39_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_39_T_23 = set_touch_ways_0_39_valid ? _state_vec_39_T_22 : state_vec_39; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_39_left_subtree_state_3 = _state_vec_39_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_39_right_subtree_state_3 = _state_vec_39_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_39_left_subtree_state_4 = state_vec_39_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_39_right_subtree_state_4 = state_vec_39_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_39_T_28 = state_vec_0_set_left_older_4 ? state_vec_39_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_39_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_39_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_39_T_33 = {state_vec_0_set_left_older_4,_state_vec_39_T_28,_state_vec_39_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_39_T_34 = state_vec_0_set_left_older_3 ? state_vec_39_left_subtree_state_3 : _state_vec_39_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_39_left_subtree_state_5 = state_vec_39_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_39_right_subtree_state_5 = state_vec_39_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_39_T_39 = state_vec_0_set_left_older_4 ? state_vec_39_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_39_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_39_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_39_T_44 = {state_vec_0_set_left_older_4,_state_vec_39_T_39,_state_vec_39_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_39_T_45 = state_vec_0_set_left_older_3 ? _state_vec_39_T_44 : state_vec_39_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_39_T_46 = {state_vec_0_set_left_older_3,_state_vec_39_T_34,_state_vec_39_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_39_T_47 = set_touch_ways_1_39_valid ? _state_vec_39_T_46 : _state_vec_39_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_39_left_subtree_state_6 = _state_vec_39_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_39_right_subtree_state_6 = _state_vec_39_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_39_left_subtree_state_7 = state_vec_39_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_39_right_subtree_state_7 = state_vec_39_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_39_T_52 = state_vec_0_set_left_older_7 ? state_vec_39_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_39_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_39_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_39_T_57 = {state_vec_0_set_left_older_7,_state_vec_39_T_52,_state_vec_39_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_39_T_58 = state_vec_0_set_left_older_6 ? state_vec_39_left_subtree_state_6 : _state_vec_39_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_39_left_subtree_state_8 = state_vec_39_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_39_right_subtree_state_8 = state_vec_39_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_39_T_63 = state_vec_0_set_left_older_7 ? state_vec_39_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_39_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_39_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_39_T_68 = {state_vec_0_set_left_older_7,_state_vec_39_T_63,_state_vec_39_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_39_T_69 = state_vec_0_set_left_older_6 ? _state_vec_39_T_68 : state_vec_39_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_39_T_70 = {state_vec_0_set_left_older_6,_state_vec_39_T_58,_state_vec_39_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_40_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h28; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_40_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h28; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_40_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h28; // @[Replacement.scala 384:30]
  wire  _T_272 = set_touch_ways_0_40_valid | set_touch_ways_1_40_valid | set_touch_ways_2_40_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_40_left_subtree_state = state_vec_40[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_40_right_subtree_state = state_vec_40[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_40_left_subtree_state_1 = state_vec_40_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_40_right_subtree_state_1 = state_vec_40_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_40_T_4 = state_vec_0_set_left_older_1 ? state_vec_40_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_40_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_40_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_40_T_9 = {state_vec_0_set_left_older_1,_state_vec_40_T_4,_state_vec_40_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_40_T_10 = state_vec_0_set_left_older ? state_vec_40_left_subtree_state : _state_vec_40_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_40_left_subtree_state_2 = state_vec_40_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_40_right_subtree_state_2 = state_vec_40_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_40_T_15 = state_vec_0_set_left_older_1 ? state_vec_40_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_40_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_40_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_40_T_20 = {state_vec_0_set_left_older_1,_state_vec_40_T_15,_state_vec_40_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_40_T_21 = state_vec_0_set_left_older ? _state_vec_40_T_20 : state_vec_40_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_40_T_22 = {state_vec_0_set_left_older,_state_vec_40_T_10,_state_vec_40_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_40_T_23 = set_touch_ways_0_40_valid ? _state_vec_40_T_22 : state_vec_40; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_40_left_subtree_state_3 = _state_vec_40_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_40_right_subtree_state_3 = _state_vec_40_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_40_left_subtree_state_4 = state_vec_40_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_40_right_subtree_state_4 = state_vec_40_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_40_T_28 = state_vec_0_set_left_older_4 ? state_vec_40_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_40_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_40_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_40_T_33 = {state_vec_0_set_left_older_4,_state_vec_40_T_28,_state_vec_40_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_40_T_34 = state_vec_0_set_left_older_3 ? state_vec_40_left_subtree_state_3 : _state_vec_40_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_40_left_subtree_state_5 = state_vec_40_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_40_right_subtree_state_5 = state_vec_40_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_40_T_39 = state_vec_0_set_left_older_4 ? state_vec_40_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_40_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_40_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_40_T_44 = {state_vec_0_set_left_older_4,_state_vec_40_T_39,_state_vec_40_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_40_T_45 = state_vec_0_set_left_older_3 ? _state_vec_40_T_44 : state_vec_40_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_40_T_46 = {state_vec_0_set_left_older_3,_state_vec_40_T_34,_state_vec_40_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_40_T_47 = set_touch_ways_1_40_valid ? _state_vec_40_T_46 : _state_vec_40_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_40_left_subtree_state_6 = _state_vec_40_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_40_right_subtree_state_6 = _state_vec_40_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_40_left_subtree_state_7 = state_vec_40_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_40_right_subtree_state_7 = state_vec_40_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_40_T_52 = state_vec_0_set_left_older_7 ? state_vec_40_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_40_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_40_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_40_T_57 = {state_vec_0_set_left_older_7,_state_vec_40_T_52,_state_vec_40_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_40_T_58 = state_vec_0_set_left_older_6 ? state_vec_40_left_subtree_state_6 : _state_vec_40_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_40_left_subtree_state_8 = state_vec_40_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_40_right_subtree_state_8 = state_vec_40_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_40_T_63 = state_vec_0_set_left_older_7 ? state_vec_40_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_40_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_40_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_40_T_68 = {state_vec_0_set_left_older_7,_state_vec_40_T_63,_state_vec_40_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_40_T_69 = state_vec_0_set_left_older_6 ? _state_vec_40_T_68 : state_vec_40_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_40_T_70 = {state_vec_0_set_left_older_6,_state_vec_40_T_58,_state_vec_40_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_41_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h29; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_41_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h29; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_41_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h29; // @[Replacement.scala 384:30]
  wire  _T_276 = set_touch_ways_0_41_valid | set_touch_ways_1_41_valid | set_touch_ways_2_41_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_41_left_subtree_state = state_vec_41[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_41_right_subtree_state = state_vec_41[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_41_left_subtree_state_1 = state_vec_41_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_41_right_subtree_state_1 = state_vec_41_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_41_T_4 = state_vec_0_set_left_older_1 ? state_vec_41_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_41_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_41_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_41_T_9 = {state_vec_0_set_left_older_1,_state_vec_41_T_4,_state_vec_41_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_41_T_10 = state_vec_0_set_left_older ? state_vec_41_left_subtree_state : _state_vec_41_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_41_left_subtree_state_2 = state_vec_41_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_41_right_subtree_state_2 = state_vec_41_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_41_T_15 = state_vec_0_set_left_older_1 ? state_vec_41_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_41_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_41_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_41_T_20 = {state_vec_0_set_left_older_1,_state_vec_41_T_15,_state_vec_41_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_41_T_21 = state_vec_0_set_left_older ? _state_vec_41_T_20 : state_vec_41_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_41_T_22 = {state_vec_0_set_left_older,_state_vec_41_T_10,_state_vec_41_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_41_T_23 = set_touch_ways_0_41_valid ? _state_vec_41_T_22 : state_vec_41; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_41_left_subtree_state_3 = _state_vec_41_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_41_right_subtree_state_3 = _state_vec_41_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_41_left_subtree_state_4 = state_vec_41_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_41_right_subtree_state_4 = state_vec_41_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_41_T_28 = state_vec_0_set_left_older_4 ? state_vec_41_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_41_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_41_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_41_T_33 = {state_vec_0_set_left_older_4,_state_vec_41_T_28,_state_vec_41_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_41_T_34 = state_vec_0_set_left_older_3 ? state_vec_41_left_subtree_state_3 : _state_vec_41_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_41_left_subtree_state_5 = state_vec_41_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_41_right_subtree_state_5 = state_vec_41_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_41_T_39 = state_vec_0_set_left_older_4 ? state_vec_41_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_41_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_41_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_41_T_44 = {state_vec_0_set_left_older_4,_state_vec_41_T_39,_state_vec_41_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_41_T_45 = state_vec_0_set_left_older_3 ? _state_vec_41_T_44 : state_vec_41_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_41_T_46 = {state_vec_0_set_left_older_3,_state_vec_41_T_34,_state_vec_41_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_41_T_47 = set_touch_ways_1_41_valid ? _state_vec_41_T_46 : _state_vec_41_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_41_left_subtree_state_6 = _state_vec_41_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_41_right_subtree_state_6 = _state_vec_41_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_41_left_subtree_state_7 = state_vec_41_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_41_right_subtree_state_7 = state_vec_41_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_41_T_52 = state_vec_0_set_left_older_7 ? state_vec_41_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_41_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_41_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_41_T_57 = {state_vec_0_set_left_older_7,_state_vec_41_T_52,_state_vec_41_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_41_T_58 = state_vec_0_set_left_older_6 ? state_vec_41_left_subtree_state_6 : _state_vec_41_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_41_left_subtree_state_8 = state_vec_41_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_41_right_subtree_state_8 = state_vec_41_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_41_T_63 = state_vec_0_set_left_older_7 ? state_vec_41_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_41_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_41_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_41_T_68 = {state_vec_0_set_left_older_7,_state_vec_41_T_63,_state_vec_41_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_41_T_69 = state_vec_0_set_left_older_6 ? _state_vec_41_T_68 : state_vec_41_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_41_T_70 = {state_vec_0_set_left_older_6,_state_vec_41_T_58,_state_vec_41_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_42_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h2a; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_42_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h2a; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_42_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h2a; // @[Replacement.scala 384:30]
  wire  _T_280 = set_touch_ways_0_42_valid | set_touch_ways_1_42_valid | set_touch_ways_2_42_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_42_left_subtree_state = state_vec_42[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_42_right_subtree_state = state_vec_42[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_42_left_subtree_state_1 = state_vec_42_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_42_right_subtree_state_1 = state_vec_42_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_42_T_4 = state_vec_0_set_left_older_1 ? state_vec_42_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_42_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_42_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_42_T_9 = {state_vec_0_set_left_older_1,_state_vec_42_T_4,_state_vec_42_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_42_T_10 = state_vec_0_set_left_older ? state_vec_42_left_subtree_state : _state_vec_42_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_42_left_subtree_state_2 = state_vec_42_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_42_right_subtree_state_2 = state_vec_42_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_42_T_15 = state_vec_0_set_left_older_1 ? state_vec_42_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_42_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_42_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_42_T_20 = {state_vec_0_set_left_older_1,_state_vec_42_T_15,_state_vec_42_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_42_T_21 = state_vec_0_set_left_older ? _state_vec_42_T_20 : state_vec_42_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_42_T_22 = {state_vec_0_set_left_older,_state_vec_42_T_10,_state_vec_42_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_42_T_23 = set_touch_ways_0_42_valid ? _state_vec_42_T_22 : state_vec_42; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_42_left_subtree_state_3 = _state_vec_42_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_42_right_subtree_state_3 = _state_vec_42_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_42_left_subtree_state_4 = state_vec_42_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_42_right_subtree_state_4 = state_vec_42_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_42_T_28 = state_vec_0_set_left_older_4 ? state_vec_42_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_42_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_42_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_42_T_33 = {state_vec_0_set_left_older_4,_state_vec_42_T_28,_state_vec_42_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_42_T_34 = state_vec_0_set_left_older_3 ? state_vec_42_left_subtree_state_3 : _state_vec_42_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_42_left_subtree_state_5 = state_vec_42_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_42_right_subtree_state_5 = state_vec_42_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_42_T_39 = state_vec_0_set_left_older_4 ? state_vec_42_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_42_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_42_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_42_T_44 = {state_vec_0_set_left_older_4,_state_vec_42_T_39,_state_vec_42_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_42_T_45 = state_vec_0_set_left_older_3 ? _state_vec_42_T_44 : state_vec_42_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_42_T_46 = {state_vec_0_set_left_older_3,_state_vec_42_T_34,_state_vec_42_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_42_T_47 = set_touch_ways_1_42_valid ? _state_vec_42_T_46 : _state_vec_42_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_42_left_subtree_state_6 = _state_vec_42_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_42_right_subtree_state_6 = _state_vec_42_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_42_left_subtree_state_7 = state_vec_42_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_42_right_subtree_state_7 = state_vec_42_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_42_T_52 = state_vec_0_set_left_older_7 ? state_vec_42_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_42_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_42_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_42_T_57 = {state_vec_0_set_left_older_7,_state_vec_42_T_52,_state_vec_42_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_42_T_58 = state_vec_0_set_left_older_6 ? state_vec_42_left_subtree_state_6 : _state_vec_42_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_42_left_subtree_state_8 = state_vec_42_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_42_right_subtree_state_8 = state_vec_42_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_42_T_63 = state_vec_0_set_left_older_7 ? state_vec_42_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_42_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_42_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_42_T_68 = {state_vec_0_set_left_older_7,_state_vec_42_T_63,_state_vec_42_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_42_T_69 = state_vec_0_set_left_older_6 ? _state_vec_42_T_68 : state_vec_42_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_42_T_70 = {state_vec_0_set_left_older_6,_state_vec_42_T_58,_state_vec_42_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_43_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h2b; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_43_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h2b; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_43_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h2b; // @[Replacement.scala 384:30]
  wire  _T_284 = set_touch_ways_0_43_valid | set_touch_ways_1_43_valid | set_touch_ways_2_43_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_43_left_subtree_state = state_vec_43[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_43_right_subtree_state = state_vec_43[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_43_left_subtree_state_1 = state_vec_43_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_43_right_subtree_state_1 = state_vec_43_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_43_T_4 = state_vec_0_set_left_older_1 ? state_vec_43_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_43_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_43_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_43_T_9 = {state_vec_0_set_left_older_1,_state_vec_43_T_4,_state_vec_43_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_43_T_10 = state_vec_0_set_left_older ? state_vec_43_left_subtree_state : _state_vec_43_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_43_left_subtree_state_2 = state_vec_43_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_43_right_subtree_state_2 = state_vec_43_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_43_T_15 = state_vec_0_set_left_older_1 ? state_vec_43_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_43_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_43_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_43_T_20 = {state_vec_0_set_left_older_1,_state_vec_43_T_15,_state_vec_43_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_43_T_21 = state_vec_0_set_left_older ? _state_vec_43_T_20 : state_vec_43_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_43_T_22 = {state_vec_0_set_left_older,_state_vec_43_T_10,_state_vec_43_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_43_T_23 = set_touch_ways_0_43_valid ? _state_vec_43_T_22 : state_vec_43; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_43_left_subtree_state_3 = _state_vec_43_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_43_right_subtree_state_3 = _state_vec_43_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_43_left_subtree_state_4 = state_vec_43_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_43_right_subtree_state_4 = state_vec_43_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_43_T_28 = state_vec_0_set_left_older_4 ? state_vec_43_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_43_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_43_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_43_T_33 = {state_vec_0_set_left_older_4,_state_vec_43_T_28,_state_vec_43_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_43_T_34 = state_vec_0_set_left_older_3 ? state_vec_43_left_subtree_state_3 : _state_vec_43_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_43_left_subtree_state_5 = state_vec_43_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_43_right_subtree_state_5 = state_vec_43_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_43_T_39 = state_vec_0_set_left_older_4 ? state_vec_43_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_43_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_43_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_43_T_44 = {state_vec_0_set_left_older_4,_state_vec_43_T_39,_state_vec_43_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_43_T_45 = state_vec_0_set_left_older_3 ? _state_vec_43_T_44 : state_vec_43_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_43_T_46 = {state_vec_0_set_left_older_3,_state_vec_43_T_34,_state_vec_43_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_43_T_47 = set_touch_ways_1_43_valid ? _state_vec_43_T_46 : _state_vec_43_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_43_left_subtree_state_6 = _state_vec_43_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_43_right_subtree_state_6 = _state_vec_43_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_43_left_subtree_state_7 = state_vec_43_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_43_right_subtree_state_7 = state_vec_43_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_43_T_52 = state_vec_0_set_left_older_7 ? state_vec_43_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_43_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_43_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_43_T_57 = {state_vec_0_set_left_older_7,_state_vec_43_T_52,_state_vec_43_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_43_T_58 = state_vec_0_set_left_older_6 ? state_vec_43_left_subtree_state_6 : _state_vec_43_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_43_left_subtree_state_8 = state_vec_43_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_43_right_subtree_state_8 = state_vec_43_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_43_T_63 = state_vec_0_set_left_older_7 ? state_vec_43_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_43_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_43_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_43_T_68 = {state_vec_0_set_left_older_7,_state_vec_43_T_63,_state_vec_43_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_43_T_69 = state_vec_0_set_left_older_6 ? _state_vec_43_T_68 : state_vec_43_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_43_T_70 = {state_vec_0_set_left_older_6,_state_vec_43_T_58,_state_vec_43_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_44_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h2c; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_44_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h2c; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_44_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h2c; // @[Replacement.scala 384:30]
  wire  _T_288 = set_touch_ways_0_44_valid | set_touch_ways_1_44_valid | set_touch_ways_2_44_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_44_left_subtree_state = state_vec_44[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_44_right_subtree_state = state_vec_44[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_44_left_subtree_state_1 = state_vec_44_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_44_right_subtree_state_1 = state_vec_44_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_44_T_4 = state_vec_0_set_left_older_1 ? state_vec_44_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_44_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_44_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_44_T_9 = {state_vec_0_set_left_older_1,_state_vec_44_T_4,_state_vec_44_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_44_T_10 = state_vec_0_set_left_older ? state_vec_44_left_subtree_state : _state_vec_44_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_44_left_subtree_state_2 = state_vec_44_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_44_right_subtree_state_2 = state_vec_44_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_44_T_15 = state_vec_0_set_left_older_1 ? state_vec_44_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_44_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_44_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_44_T_20 = {state_vec_0_set_left_older_1,_state_vec_44_T_15,_state_vec_44_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_44_T_21 = state_vec_0_set_left_older ? _state_vec_44_T_20 : state_vec_44_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_44_T_22 = {state_vec_0_set_left_older,_state_vec_44_T_10,_state_vec_44_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_44_T_23 = set_touch_ways_0_44_valid ? _state_vec_44_T_22 : state_vec_44; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_44_left_subtree_state_3 = _state_vec_44_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_44_right_subtree_state_3 = _state_vec_44_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_44_left_subtree_state_4 = state_vec_44_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_44_right_subtree_state_4 = state_vec_44_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_44_T_28 = state_vec_0_set_left_older_4 ? state_vec_44_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_44_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_44_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_44_T_33 = {state_vec_0_set_left_older_4,_state_vec_44_T_28,_state_vec_44_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_44_T_34 = state_vec_0_set_left_older_3 ? state_vec_44_left_subtree_state_3 : _state_vec_44_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_44_left_subtree_state_5 = state_vec_44_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_44_right_subtree_state_5 = state_vec_44_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_44_T_39 = state_vec_0_set_left_older_4 ? state_vec_44_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_44_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_44_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_44_T_44 = {state_vec_0_set_left_older_4,_state_vec_44_T_39,_state_vec_44_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_44_T_45 = state_vec_0_set_left_older_3 ? _state_vec_44_T_44 : state_vec_44_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_44_T_46 = {state_vec_0_set_left_older_3,_state_vec_44_T_34,_state_vec_44_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_44_T_47 = set_touch_ways_1_44_valid ? _state_vec_44_T_46 : _state_vec_44_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_44_left_subtree_state_6 = _state_vec_44_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_44_right_subtree_state_6 = _state_vec_44_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_44_left_subtree_state_7 = state_vec_44_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_44_right_subtree_state_7 = state_vec_44_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_44_T_52 = state_vec_0_set_left_older_7 ? state_vec_44_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_44_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_44_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_44_T_57 = {state_vec_0_set_left_older_7,_state_vec_44_T_52,_state_vec_44_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_44_T_58 = state_vec_0_set_left_older_6 ? state_vec_44_left_subtree_state_6 : _state_vec_44_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_44_left_subtree_state_8 = state_vec_44_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_44_right_subtree_state_8 = state_vec_44_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_44_T_63 = state_vec_0_set_left_older_7 ? state_vec_44_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_44_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_44_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_44_T_68 = {state_vec_0_set_left_older_7,_state_vec_44_T_63,_state_vec_44_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_44_T_69 = state_vec_0_set_left_older_6 ? _state_vec_44_T_68 : state_vec_44_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_44_T_70 = {state_vec_0_set_left_older_6,_state_vec_44_T_58,_state_vec_44_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_45_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h2d; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_45_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h2d; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_45_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h2d; // @[Replacement.scala 384:30]
  wire  _T_292 = set_touch_ways_0_45_valid | set_touch_ways_1_45_valid | set_touch_ways_2_45_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_45_left_subtree_state = state_vec_45[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_45_right_subtree_state = state_vec_45[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_45_left_subtree_state_1 = state_vec_45_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_45_right_subtree_state_1 = state_vec_45_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_45_T_4 = state_vec_0_set_left_older_1 ? state_vec_45_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_45_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_45_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_45_T_9 = {state_vec_0_set_left_older_1,_state_vec_45_T_4,_state_vec_45_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_45_T_10 = state_vec_0_set_left_older ? state_vec_45_left_subtree_state : _state_vec_45_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_45_left_subtree_state_2 = state_vec_45_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_45_right_subtree_state_2 = state_vec_45_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_45_T_15 = state_vec_0_set_left_older_1 ? state_vec_45_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_45_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_45_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_45_T_20 = {state_vec_0_set_left_older_1,_state_vec_45_T_15,_state_vec_45_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_45_T_21 = state_vec_0_set_left_older ? _state_vec_45_T_20 : state_vec_45_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_45_T_22 = {state_vec_0_set_left_older,_state_vec_45_T_10,_state_vec_45_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_45_T_23 = set_touch_ways_0_45_valid ? _state_vec_45_T_22 : state_vec_45; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_45_left_subtree_state_3 = _state_vec_45_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_45_right_subtree_state_3 = _state_vec_45_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_45_left_subtree_state_4 = state_vec_45_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_45_right_subtree_state_4 = state_vec_45_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_45_T_28 = state_vec_0_set_left_older_4 ? state_vec_45_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_45_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_45_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_45_T_33 = {state_vec_0_set_left_older_4,_state_vec_45_T_28,_state_vec_45_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_45_T_34 = state_vec_0_set_left_older_3 ? state_vec_45_left_subtree_state_3 : _state_vec_45_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_45_left_subtree_state_5 = state_vec_45_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_45_right_subtree_state_5 = state_vec_45_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_45_T_39 = state_vec_0_set_left_older_4 ? state_vec_45_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_45_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_45_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_45_T_44 = {state_vec_0_set_left_older_4,_state_vec_45_T_39,_state_vec_45_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_45_T_45 = state_vec_0_set_left_older_3 ? _state_vec_45_T_44 : state_vec_45_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_45_T_46 = {state_vec_0_set_left_older_3,_state_vec_45_T_34,_state_vec_45_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_45_T_47 = set_touch_ways_1_45_valid ? _state_vec_45_T_46 : _state_vec_45_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_45_left_subtree_state_6 = _state_vec_45_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_45_right_subtree_state_6 = _state_vec_45_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_45_left_subtree_state_7 = state_vec_45_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_45_right_subtree_state_7 = state_vec_45_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_45_T_52 = state_vec_0_set_left_older_7 ? state_vec_45_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_45_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_45_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_45_T_57 = {state_vec_0_set_left_older_7,_state_vec_45_T_52,_state_vec_45_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_45_T_58 = state_vec_0_set_left_older_6 ? state_vec_45_left_subtree_state_6 : _state_vec_45_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_45_left_subtree_state_8 = state_vec_45_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_45_right_subtree_state_8 = state_vec_45_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_45_T_63 = state_vec_0_set_left_older_7 ? state_vec_45_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_45_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_45_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_45_T_68 = {state_vec_0_set_left_older_7,_state_vec_45_T_63,_state_vec_45_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_45_T_69 = state_vec_0_set_left_older_6 ? _state_vec_45_T_68 : state_vec_45_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_45_T_70 = {state_vec_0_set_left_older_6,_state_vec_45_T_58,_state_vec_45_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_46_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h2e; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_46_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h2e; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_46_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h2e; // @[Replacement.scala 384:30]
  wire  _T_296 = set_touch_ways_0_46_valid | set_touch_ways_1_46_valid | set_touch_ways_2_46_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_46_left_subtree_state = state_vec_46[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_46_right_subtree_state = state_vec_46[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_46_left_subtree_state_1 = state_vec_46_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_46_right_subtree_state_1 = state_vec_46_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_46_T_4 = state_vec_0_set_left_older_1 ? state_vec_46_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_46_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_46_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_46_T_9 = {state_vec_0_set_left_older_1,_state_vec_46_T_4,_state_vec_46_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_46_T_10 = state_vec_0_set_left_older ? state_vec_46_left_subtree_state : _state_vec_46_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_46_left_subtree_state_2 = state_vec_46_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_46_right_subtree_state_2 = state_vec_46_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_46_T_15 = state_vec_0_set_left_older_1 ? state_vec_46_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_46_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_46_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_46_T_20 = {state_vec_0_set_left_older_1,_state_vec_46_T_15,_state_vec_46_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_46_T_21 = state_vec_0_set_left_older ? _state_vec_46_T_20 : state_vec_46_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_46_T_22 = {state_vec_0_set_left_older,_state_vec_46_T_10,_state_vec_46_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_46_T_23 = set_touch_ways_0_46_valid ? _state_vec_46_T_22 : state_vec_46; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_46_left_subtree_state_3 = _state_vec_46_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_46_right_subtree_state_3 = _state_vec_46_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_46_left_subtree_state_4 = state_vec_46_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_46_right_subtree_state_4 = state_vec_46_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_46_T_28 = state_vec_0_set_left_older_4 ? state_vec_46_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_46_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_46_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_46_T_33 = {state_vec_0_set_left_older_4,_state_vec_46_T_28,_state_vec_46_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_46_T_34 = state_vec_0_set_left_older_3 ? state_vec_46_left_subtree_state_3 : _state_vec_46_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_46_left_subtree_state_5 = state_vec_46_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_46_right_subtree_state_5 = state_vec_46_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_46_T_39 = state_vec_0_set_left_older_4 ? state_vec_46_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_46_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_46_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_46_T_44 = {state_vec_0_set_left_older_4,_state_vec_46_T_39,_state_vec_46_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_46_T_45 = state_vec_0_set_left_older_3 ? _state_vec_46_T_44 : state_vec_46_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_46_T_46 = {state_vec_0_set_left_older_3,_state_vec_46_T_34,_state_vec_46_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_46_T_47 = set_touch_ways_1_46_valid ? _state_vec_46_T_46 : _state_vec_46_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_46_left_subtree_state_6 = _state_vec_46_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_46_right_subtree_state_6 = _state_vec_46_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_46_left_subtree_state_7 = state_vec_46_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_46_right_subtree_state_7 = state_vec_46_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_46_T_52 = state_vec_0_set_left_older_7 ? state_vec_46_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_46_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_46_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_46_T_57 = {state_vec_0_set_left_older_7,_state_vec_46_T_52,_state_vec_46_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_46_T_58 = state_vec_0_set_left_older_6 ? state_vec_46_left_subtree_state_6 : _state_vec_46_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_46_left_subtree_state_8 = state_vec_46_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_46_right_subtree_state_8 = state_vec_46_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_46_T_63 = state_vec_0_set_left_older_7 ? state_vec_46_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_46_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_46_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_46_T_68 = {state_vec_0_set_left_older_7,_state_vec_46_T_63,_state_vec_46_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_46_T_69 = state_vec_0_set_left_older_6 ? _state_vec_46_T_68 : state_vec_46_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_46_T_70 = {state_vec_0_set_left_older_6,_state_vec_46_T_58,_state_vec_46_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_47_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h2f; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_47_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h2f; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_47_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h2f; // @[Replacement.scala 384:30]
  wire  _T_300 = set_touch_ways_0_47_valid | set_touch_ways_1_47_valid | set_touch_ways_2_47_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_47_left_subtree_state = state_vec_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_47_right_subtree_state = state_vec_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_47_left_subtree_state_1 = state_vec_47_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_47_right_subtree_state_1 = state_vec_47_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_47_T_4 = state_vec_0_set_left_older_1 ? state_vec_47_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_47_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_47_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_47_T_9 = {state_vec_0_set_left_older_1,_state_vec_47_T_4,_state_vec_47_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_47_T_10 = state_vec_0_set_left_older ? state_vec_47_left_subtree_state : _state_vec_47_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_47_left_subtree_state_2 = state_vec_47_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_47_right_subtree_state_2 = state_vec_47_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_47_T_15 = state_vec_0_set_left_older_1 ? state_vec_47_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_47_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_47_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_47_T_20 = {state_vec_0_set_left_older_1,_state_vec_47_T_15,_state_vec_47_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_47_T_21 = state_vec_0_set_left_older ? _state_vec_47_T_20 : state_vec_47_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_47_T_22 = {state_vec_0_set_left_older,_state_vec_47_T_10,_state_vec_47_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_47_T_23 = set_touch_ways_0_47_valid ? _state_vec_47_T_22 : state_vec_47; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_47_left_subtree_state_3 = _state_vec_47_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_47_right_subtree_state_3 = _state_vec_47_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_47_left_subtree_state_4 = state_vec_47_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_47_right_subtree_state_4 = state_vec_47_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_47_T_28 = state_vec_0_set_left_older_4 ? state_vec_47_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_47_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_47_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_47_T_33 = {state_vec_0_set_left_older_4,_state_vec_47_T_28,_state_vec_47_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_47_T_34 = state_vec_0_set_left_older_3 ? state_vec_47_left_subtree_state_3 : _state_vec_47_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_47_left_subtree_state_5 = state_vec_47_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_47_right_subtree_state_5 = state_vec_47_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_47_T_39 = state_vec_0_set_left_older_4 ? state_vec_47_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_47_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_47_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_47_T_44 = {state_vec_0_set_left_older_4,_state_vec_47_T_39,_state_vec_47_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_47_T_45 = state_vec_0_set_left_older_3 ? _state_vec_47_T_44 : state_vec_47_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_47_T_46 = {state_vec_0_set_left_older_3,_state_vec_47_T_34,_state_vec_47_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_47_T_47 = set_touch_ways_1_47_valid ? _state_vec_47_T_46 : _state_vec_47_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_47_left_subtree_state_6 = _state_vec_47_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_47_right_subtree_state_6 = _state_vec_47_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_47_left_subtree_state_7 = state_vec_47_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_47_right_subtree_state_7 = state_vec_47_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_47_T_52 = state_vec_0_set_left_older_7 ? state_vec_47_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_47_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_47_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_47_T_57 = {state_vec_0_set_left_older_7,_state_vec_47_T_52,_state_vec_47_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_47_T_58 = state_vec_0_set_left_older_6 ? state_vec_47_left_subtree_state_6 : _state_vec_47_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_47_left_subtree_state_8 = state_vec_47_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_47_right_subtree_state_8 = state_vec_47_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_47_T_63 = state_vec_0_set_left_older_7 ? state_vec_47_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_47_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_47_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_47_T_68 = {state_vec_0_set_left_older_7,_state_vec_47_T_63,_state_vec_47_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_47_T_69 = state_vec_0_set_left_older_6 ? _state_vec_47_T_68 : state_vec_47_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_47_T_70 = {state_vec_0_set_left_older_6,_state_vec_47_T_58,_state_vec_47_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_48_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h30; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_48_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h30; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_48_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h30; // @[Replacement.scala 384:30]
  wire  _T_304 = set_touch_ways_0_48_valid | set_touch_ways_1_48_valid | set_touch_ways_2_48_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_48_left_subtree_state = state_vec_48[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_48_right_subtree_state = state_vec_48[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_48_left_subtree_state_1 = state_vec_48_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_48_right_subtree_state_1 = state_vec_48_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_48_T_4 = state_vec_0_set_left_older_1 ? state_vec_48_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_48_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_48_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_48_T_9 = {state_vec_0_set_left_older_1,_state_vec_48_T_4,_state_vec_48_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_48_T_10 = state_vec_0_set_left_older ? state_vec_48_left_subtree_state : _state_vec_48_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_48_left_subtree_state_2 = state_vec_48_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_48_right_subtree_state_2 = state_vec_48_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_48_T_15 = state_vec_0_set_left_older_1 ? state_vec_48_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_48_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_48_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_48_T_20 = {state_vec_0_set_left_older_1,_state_vec_48_T_15,_state_vec_48_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_48_T_21 = state_vec_0_set_left_older ? _state_vec_48_T_20 : state_vec_48_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_48_T_22 = {state_vec_0_set_left_older,_state_vec_48_T_10,_state_vec_48_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_48_T_23 = set_touch_ways_0_48_valid ? _state_vec_48_T_22 : state_vec_48; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_48_left_subtree_state_3 = _state_vec_48_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_48_right_subtree_state_3 = _state_vec_48_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_48_left_subtree_state_4 = state_vec_48_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_48_right_subtree_state_4 = state_vec_48_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_48_T_28 = state_vec_0_set_left_older_4 ? state_vec_48_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_48_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_48_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_48_T_33 = {state_vec_0_set_left_older_4,_state_vec_48_T_28,_state_vec_48_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_48_T_34 = state_vec_0_set_left_older_3 ? state_vec_48_left_subtree_state_3 : _state_vec_48_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_48_left_subtree_state_5 = state_vec_48_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_48_right_subtree_state_5 = state_vec_48_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_48_T_39 = state_vec_0_set_left_older_4 ? state_vec_48_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_48_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_48_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_48_T_44 = {state_vec_0_set_left_older_4,_state_vec_48_T_39,_state_vec_48_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_48_T_45 = state_vec_0_set_left_older_3 ? _state_vec_48_T_44 : state_vec_48_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_48_T_46 = {state_vec_0_set_left_older_3,_state_vec_48_T_34,_state_vec_48_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_48_T_47 = set_touch_ways_1_48_valid ? _state_vec_48_T_46 : _state_vec_48_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_48_left_subtree_state_6 = _state_vec_48_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_48_right_subtree_state_6 = _state_vec_48_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_48_left_subtree_state_7 = state_vec_48_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_48_right_subtree_state_7 = state_vec_48_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_48_T_52 = state_vec_0_set_left_older_7 ? state_vec_48_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_48_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_48_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_48_T_57 = {state_vec_0_set_left_older_7,_state_vec_48_T_52,_state_vec_48_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_48_T_58 = state_vec_0_set_left_older_6 ? state_vec_48_left_subtree_state_6 : _state_vec_48_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_48_left_subtree_state_8 = state_vec_48_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_48_right_subtree_state_8 = state_vec_48_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_48_T_63 = state_vec_0_set_left_older_7 ? state_vec_48_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_48_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_48_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_48_T_68 = {state_vec_0_set_left_older_7,_state_vec_48_T_63,_state_vec_48_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_48_T_69 = state_vec_0_set_left_older_6 ? _state_vec_48_T_68 : state_vec_48_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_48_T_70 = {state_vec_0_set_left_older_6,_state_vec_48_T_58,_state_vec_48_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_49_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h31; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_49_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h31; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_49_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h31; // @[Replacement.scala 384:30]
  wire  _T_308 = set_touch_ways_0_49_valid | set_touch_ways_1_49_valid | set_touch_ways_2_49_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_49_left_subtree_state = state_vec_49[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_49_right_subtree_state = state_vec_49[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_49_left_subtree_state_1 = state_vec_49_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_49_right_subtree_state_1 = state_vec_49_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_49_T_4 = state_vec_0_set_left_older_1 ? state_vec_49_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_49_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_49_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_49_T_9 = {state_vec_0_set_left_older_1,_state_vec_49_T_4,_state_vec_49_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_49_T_10 = state_vec_0_set_left_older ? state_vec_49_left_subtree_state : _state_vec_49_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_49_left_subtree_state_2 = state_vec_49_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_49_right_subtree_state_2 = state_vec_49_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_49_T_15 = state_vec_0_set_left_older_1 ? state_vec_49_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_49_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_49_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_49_T_20 = {state_vec_0_set_left_older_1,_state_vec_49_T_15,_state_vec_49_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_49_T_21 = state_vec_0_set_left_older ? _state_vec_49_T_20 : state_vec_49_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_49_T_22 = {state_vec_0_set_left_older,_state_vec_49_T_10,_state_vec_49_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_49_T_23 = set_touch_ways_0_49_valid ? _state_vec_49_T_22 : state_vec_49; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_49_left_subtree_state_3 = _state_vec_49_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_49_right_subtree_state_3 = _state_vec_49_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_49_left_subtree_state_4 = state_vec_49_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_49_right_subtree_state_4 = state_vec_49_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_49_T_28 = state_vec_0_set_left_older_4 ? state_vec_49_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_49_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_49_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_49_T_33 = {state_vec_0_set_left_older_4,_state_vec_49_T_28,_state_vec_49_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_49_T_34 = state_vec_0_set_left_older_3 ? state_vec_49_left_subtree_state_3 : _state_vec_49_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_49_left_subtree_state_5 = state_vec_49_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_49_right_subtree_state_5 = state_vec_49_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_49_T_39 = state_vec_0_set_left_older_4 ? state_vec_49_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_49_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_49_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_49_T_44 = {state_vec_0_set_left_older_4,_state_vec_49_T_39,_state_vec_49_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_49_T_45 = state_vec_0_set_left_older_3 ? _state_vec_49_T_44 : state_vec_49_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_49_T_46 = {state_vec_0_set_left_older_3,_state_vec_49_T_34,_state_vec_49_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_49_T_47 = set_touch_ways_1_49_valid ? _state_vec_49_T_46 : _state_vec_49_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_49_left_subtree_state_6 = _state_vec_49_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_49_right_subtree_state_6 = _state_vec_49_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_49_left_subtree_state_7 = state_vec_49_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_49_right_subtree_state_7 = state_vec_49_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_49_T_52 = state_vec_0_set_left_older_7 ? state_vec_49_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_49_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_49_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_49_T_57 = {state_vec_0_set_left_older_7,_state_vec_49_T_52,_state_vec_49_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_49_T_58 = state_vec_0_set_left_older_6 ? state_vec_49_left_subtree_state_6 : _state_vec_49_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_49_left_subtree_state_8 = state_vec_49_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_49_right_subtree_state_8 = state_vec_49_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_49_T_63 = state_vec_0_set_left_older_7 ? state_vec_49_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_49_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_49_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_49_T_68 = {state_vec_0_set_left_older_7,_state_vec_49_T_63,_state_vec_49_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_49_T_69 = state_vec_0_set_left_older_6 ? _state_vec_49_T_68 : state_vec_49_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_49_T_70 = {state_vec_0_set_left_older_6,_state_vec_49_T_58,_state_vec_49_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_50_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h32; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_50_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h32; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_50_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h32; // @[Replacement.scala 384:30]
  wire  _T_312 = set_touch_ways_0_50_valid | set_touch_ways_1_50_valid | set_touch_ways_2_50_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_50_left_subtree_state = state_vec_50[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_50_right_subtree_state = state_vec_50[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_50_left_subtree_state_1 = state_vec_50_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_50_right_subtree_state_1 = state_vec_50_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_50_T_4 = state_vec_0_set_left_older_1 ? state_vec_50_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_50_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_50_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_50_T_9 = {state_vec_0_set_left_older_1,_state_vec_50_T_4,_state_vec_50_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_50_T_10 = state_vec_0_set_left_older ? state_vec_50_left_subtree_state : _state_vec_50_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_50_left_subtree_state_2 = state_vec_50_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_50_right_subtree_state_2 = state_vec_50_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_50_T_15 = state_vec_0_set_left_older_1 ? state_vec_50_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_50_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_50_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_50_T_20 = {state_vec_0_set_left_older_1,_state_vec_50_T_15,_state_vec_50_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_50_T_21 = state_vec_0_set_left_older ? _state_vec_50_T_20 : state_vec_50_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_50_T_22 = {state_vec_0_set_left_older,_state_vec_50_T_10,_state_vec_50_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_50_T_23 = set_touch_ways_0_50_valid ? _state_vec_50_T_22 : state_vec_50; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_50_left_subtree_state_3 = _state_vec_50_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_50_right_subtree_state_3 = _state_vec_50_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_50_left_subtree_state_4 = state_vec_50_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_50_right_subtree_state_4 = state_vec_50_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_50_T_28 = state_vec_0_set_left_older_4 ? state_vec_50_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_50_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_50_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_50_T_33 = {state_vec_0_set_left_older_4,_state_vec_50_T_28,_state_vec_50_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_50_T_34 = state_vec_0_set_left_older_3 ? state_vec_50_left_subtree_state_3 : _state_vec_50_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_50_left_subtree_state_5 = state_vec_50_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_50_right_subtree_state_5 = state_vec_50_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_50_T_39 = state_vec_0_set_left_older_4 ? state_vec_50_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_50_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_50_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_50_T_44 = {state_vec_0_set_left_older_4,_state_vec_50_T_39,_state_vec_50_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_50_T_45 = state_vec_0_set_left_older_3 ? _state_vec_50_T_44 : state_vec_50_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_50_T_46 = {state_vec_0_set_left_older_3,_state_vec_50_T_34,_state_vec_50_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_50_T_47 = set_touch_ways_1_50_valid ? _state_vec_50_T_46 : _state_vec_50_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_50_left_subtree_state_6 = _state_vec_50_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_50_right_subtree_state_6 = _state_vec_50_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_50_left_subtree_state_7 = state_vec_50_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_50_right_subtree_state_7 = state_vec_50_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_50_T_52 = state_vec_0_set_left_older_7 ? state_vec_50_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_50_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_50_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_50_T_57 = {state_vec_0_set_left_older_7,_state_vec_50_T_52,_state_vec_50_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_50_T_58 = state_vec_0_set_left_older_6 ? state_vec_50_left_subtree_state_6 : _state_vec_50_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_50_left_subtree_state_8 = state_vec_50_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_50_right_subtree_state_8 = state_vec_50_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_50_T_63 = state_vec_0_set_left_older_7 ? state_vec_50_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_50_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_50_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_50_T_68 = {state_vec_0_set_left_older_7,_state_vec_50_T_63,_state_vec_50_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_50_T_69 = state_vec_0_set_left_older_6 ? _state_vec_50_T_68 : state_vec_50_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_50_T_70 = {state_vec_0_set_left_older_6,_state_vec_50_T_58,_state_vec_50_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_51_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h33; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_51_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h33; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_51_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h33; // @[Replacement.scala 384:30]
  wire  _T_316 = set_touch_ways_0_51_valid | set_touch_ways_1_51_valid | set_touch_ways_2_51_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_51_left_subtree_state = state_vec_51[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_51_right_subtree_state = state_vec_51[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_51_left_subtree_state_1 = state_vec_51_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_51_right_subtree_state_1 = state_vec_51_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_51_T_4 = state_vec_0_set_left_older_1 ? state_vec_51_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_51_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_51_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_51_T_9 = {state_vec_0_set_left_older_1,_state_vec_51_T_4,_state_vec_51_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_51_T_10 = state_vec_0_set_left_older ? state_vec_51_left_subtree_state : _state_vec_51_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_51_left_subtree_state_2 = state_vec_51_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_51_right_subtree_state_2 = state_vec_51_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_51_T_15 = state_vec_0_set_left_older_1 ? state_vec_51_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_51_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_51_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_51_T_20 = {state_vec_0_set_left_older_1,_state_vec_51_T_15,_state_vec_51_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_51_T_21 = state_vec_0_set_left_older ? _state_vec_51_T_20 : state_vec_51_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_51_T_22 = {state_vec_0_set_left_older,_state_vec_51_T_10,_state_vec_51_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_51_T_23 = set_touch_ways_0_51_valid ? _state_vec_51_T_22 : state_vec_51; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_51_left_subtree_state_3 = _state_vec_51_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_51_right_subtree_state_3 = _state_vec_51_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_51_left_subtree_state_4 = state_vec_51_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_51_right_subtree_state_4 = state_vec_51_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_51_T_28 = state_vec_0_set_left_older_4 ? state_vec_51_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_51_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_51_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_51_T_33 = {state_vec_0_set_left_older_4,_state_vec_51_T_28,_state_vec_51_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_51_T_34 = state_vec_0_set_left_older_3 ? state_vec_51_left_subtree_state_3 : _state_vec_51_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_51_left_subtree_state_5 = state_vec_51_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_51_right_subtree_state_5 = state_vec_51_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_51_T_39 = state_vec_0_set_left_older_4 ? state_vec_51_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_51_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_51_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_51_T_44 = {state_vec_0_set_left_older_4,_state_vec_51_T_39,_state_vec_51_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_51_T_45 = state_vec_0_set_left_older_3 ? _state_vec_51_T_44 : state_vec_51_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_51_T_46 = {state_vec_0_set_left_older_3,_state_vec_51_T_34,_state_vec_51_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_51_T_47 = set_touch_ways_1_51_valid ? _state_vec_51_T_46 : _state_vec_51_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_51_left_subtree_state_6 = _state_vec_51_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_51_right_subtree_state_6 = _state_vec_51_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_51_left_subtree_state_7 = state_vec_51_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_51_right_subtree_state_7 = state_vec_51_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_51_T_52 = state_vec_0_set_left_older_7 ? state_vec_51_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_51_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_51_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_51_T_57 = {state_vec_0_set_left_older_7,_state_vec_51_T_52,_state_vec_51_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_51_T_58 = state_vec_0_set_left_older_6 ? state_vec_51_left_subtree_state_6 : _state_vec_51_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_51_left_subtree_state_8 = state_vec_51_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_51_right_subtree_state_8 = state_vec_51_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_51_T_63 = state_vec_0_set_left_older_7 ? state_vec_51_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_51_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_51_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_51_T_68 = {state_vec_0_set_left_older_7,_state_vec_51_T_63,_state_vec_51_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_51_T_69 = state_vec_0_set_left_older_6 ? _state_vec_51_T_68 : state_vec_51_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_51_T_70 = {state_vec_0_set_left_older_6,_state_vec_51_T_58,_state_vec_51_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_52_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h34; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_52_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h34; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_52_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h34; // @[Replacement.scala 384:30]
  wire  _T_320 = set_touch_ways_0_52_valid | set_touch_ways_1_52_valid | set_touch_ways_2_52_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_52_left_subtree_state = state_vec_52[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_52_right_subtree_state = state_vec_52[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_52_left_subtree_state_1 = state_vec_52_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_52_right_subtree_state_1 = state_vec_52_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_52_T_4 = state_vec_0_set_left_older_1 ? state_vec_52_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_52_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_52_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_52_T_9 = {state_vec_0_set_left_older_1,_state_vec_52_T_4,_state_vec_52_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_52_T_10 = state_vec_0_set_left_older ? state_vec_52_left_subtree_state : _state_vec_52_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_52_left_subtree_state_2 = state_vec_52_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_52_right_subtree_state_2 = state_vec_52_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_52_T_15 = state_vec_0_set_left_older_1 ? state_vec_52_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_52_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_52_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_52_T_20 = {state_vec_0_set_left_older_1,_state_vec_52_T_15,_state_vec_52_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_52_T_21 = state_vec_0_set_left_older ? _state_vec_52_T_20 : state_vec_52_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_52_T_22 = {state_vec_0_set_left_older,_state_vec_52_T_10,_state_vec_52_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_52_T_23 = set_touch_ways_0_52_valid ? _state_vec_52_T_22 : state_vec_52; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_52_left_subtree_state_3 = _state_vec_52_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_52_right_subtree_state_3 = _state_vec_52_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_52_left_subtree_state_4 = state_vec_52_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_52_right_subtree_state_4 = state_vec_52_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_52_T_28 = state_vec_0_set_left_older_4 ? state_vec_52_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_52_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_52_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_52_T_33 = {state_vec_0_set_left_older_4,_state_vec_52_T_28,_state_vec_52_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_52_T_34 = state_vec_0_set_left_older_3 ? state_vec_52_left_subtree_state_3 : _state_vec_52_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_52_left_subtree_state_5 = state_vec_52_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_52_right_subtree_state_5 = state_vec_52_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_52_T_39 = state_vec_0_set_left_older_4 ? state_vec_52_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_52_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_52_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_52_T_44 = {state_vec_0_set_left_older_4,_state_vec_52_T_39,_state_vec_52_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_52_T_45 = state_vec_0_set_left_older_3 ? _state_vec_52_T_44 : state_vec_52_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_52_T_46 = {state_vec_0_set_left_older_3,_state_vec_52_T_34,_state_vec_52_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_52_T_47 = set_touch_ways_1_52_valid ? _state_vec_52_T_46 : _state_vec_52_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_52_left_subtree_state_6 = _state_vec_52_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_52_right_subtree_state_6 = _state_vec_52_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_52_left_subtree_state_7 = state_vec_52_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_52_right_subtree_state_7 = state_vec_52_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_52_T_52 = state_vec_0_set_left_older_7 ? state_vec_52_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_52_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_52_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_52_T_57 = {state_vec_0_set_left_older_7,_state_vec_52_T_52,_state_vec_52_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_52_T_58 = state_vec_0_set_left_older_6 ? state_vec_52_left_subtree_state_6 : _state_vec_52_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_52_left_subtree_state_8 = state_vec_52_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_52_right_subtree_state_8 = state_vec_52_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_52_T_63 = state_vec_0_set_left_older_7 ? state_vec_52_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_52_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_52_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_52_T_68 = {state_vec_0_set_left_older_7,_state_vec_52_T_63,_state_vec_52_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_52_T_69 = state_vec_0_set_left_older_6 ? _state_vec_52_T_68 : state_vec_52_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_52_T_70 = {state_vec_0_set_left_older_6,_state_vec_52_T_58,_state_vec_52_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_53_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h35; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_53_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h35; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_53_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h35; // @[Replacement.scala 384:30]
  wire  _T_324 = set_touch_ways_0_53_valid | set_touch_ways_1_53_valid | set_touch_ways_2_53_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_53_left_subtree_state = state_vec_53[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_53_right_subtree_state = state_vec_53[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_53_left_subtree_state_1 = state_vec_53_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_53_right_subtree_state_1 = state_vec_53_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_53_T_4 = state_vec_0_set_left_older_1 ? state_vec_53_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_53_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_53_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_53_T_9 = {state_vec_0_set_left_older_1,_state_vec_53_T_4,_state_vec_53_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_53_T_10 = state_vec_0_set_left_older ? state_vec_53_left_subtree_state : _state_vec_53_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_53_left_subtree_state_2 = state_vec_53_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_53_right_subtree_state_2 = state_vec_53_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_53_T_15 = state_vec_0_set_left_older_1 ? state_vec_53_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_53_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_53_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_53_T_20 = {state_vec_0_set_left_older_1,_state_vec_53_T_15,_state_vec_53_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_53_T_21 = state_vec_0_set_left_older ? _state_vec_53_T_20 : state_vec_53_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_53_T_22 = {state_vec_0_set_left_older,_state_vec_53_T_10,_state_vec_53_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_53_T_23 = set_touch_ways_0_53_valid ? _state_vec_53_T_22 : state_vec_53; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_53_left_subtree_state_3 = _state_vec_53_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_53_right_subtree_state_3 = _state_vec_53_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_53_left_subtree_state_4 = state_vec_53_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_53_right_subtree_state_4 = state_vec_53_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_53_T_28 = state_vec_0_set_left_older_4 ? state_vec_53_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_53_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_53_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_53_T_33 = {state_vec_0_set_left_older_4,_state_vec_53_T_28,_state_vec_53_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_53_T_34 = state_vec_0_set_left_older_3 ? state_vec_53_left_subtree_state_3 : _state_vec_53_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_53_left_subtree_state_5 = state_vec_53_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_53_right_subtree_state_5 = state_vec_53_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_53_T_39 = state_vec_0_set_left_older_4 ? state_vec_53_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_53_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_53_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_53_T_44 = {state_vec_0_set_left_older_4,_state_vec_53_T_39,_state_vec_53_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_53_T_45 = state_vec_0_set_left_older_3 ? _state_vec_53_T_44 : state_vec_53_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_53_T_46 = {state_vec_0_set_left_older_3,_state_vec_53_T_34,_state_vec_53_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_53_T_47 = set_touch_ways_1_53_valid ? _state_vec_53_T_46 : _state_vec_53_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_53_left_subtree_state_6 = _state_vec_53_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_53_right_subtree_state_6 = _state_vec_53_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_53_left_subtree_state_7 = state_vec_53_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_53_right_subtree_state_7 = state_vec_53_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_53_T_52 = state_vec_0_set_left_older_7 ? state_vec_53_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_53_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_53_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_53_T_57 = {state_vec_0_set_left_older_7,_state_vec_53_T_52,_state_vec_53_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_53_T_58 = state_vec_0_set_left_older_6 ? state_vec_53_left_subtree_state_6 : _state_vec_53_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_53_left_subtree_state_8 = state_vec_53_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_53_right_subtree_state_8 = state_vec_53_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_53_T_63 = state_vec_0_set_left_older_7 ? state_vec_53_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_53_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_53_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_53_T_68 = {state_vec_0_set_left_older_7,_state_vec_53_T_63,_state_vec_53_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_53_T_69 = state_vec_0_set_left_older_6 ? _state_vec_53_T_68 : state_vec_53_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_53_T_70 = {state_vec_0_set_left_older_6,_state_vec_53_T_58,_state_vec_53_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_54_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h36; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_54_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h36; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_54_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h36; // @[Replacement.scala 384:30]
  wire  _T_328 = set_touch_ways_0_54_valid | set_touch_ways_1_54_valid | set_touch_ways_2_54_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_54_left_subtree_state = state_vec_54[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_54_right_subtree_state = state_vec_54[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_54_left_subtree_state_1 = state_vec_54_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_54_right_subtree_state_1 = state_vec_54_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_54_T_4 = state_vec_0_set_left_older_1 ? state_vec_54_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_54_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_54_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_54_T_9 = {state_vec_0_set_left_older_1,_state_vec_54_T_4,_state_vec_54_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_54_T_10 = state_vec_0_set_left_older ? state_vec_54_left_subtree_state : _state_vec_54_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_54_left_subtree_state_2 = state_vec_54_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_54_right_subtree_state_2 = state_vec_54_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_54_T_15 = state_vec_0_set_left_older_1 ? state_vec_54_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_54_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_54_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_54_T_20 = {state_vec_0_set_left_older_1,_state_vec_54_T_15,_state_vec_54_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_54_T_21 = state_vec_0_set_left_older ? _state_vec_54_T_20 : state_vec_54_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_54_T_22 = {state_vec_0_set_left_older,_state_vec_54_T_10,_state_vec_54_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_54_T_23 = set_touch_ways_0_54_valid ? _state_vec_54_T_22 : state_vec_54; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_54_left_subtree_state_3 = _state_vec_54_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_54_right_subtree_state_3 = _state_vec_54_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_54_left_subtree_state_4 = state_vec_54_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_54_right_subtree_state_4 = state_vec_54_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_54_T_28 = state_vec_0_set_left_older_4 ? state_vec_54_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_54_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_54_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_54_T_33 = {state_vec_0_set_left_older_4,_state_vec_54_T_28,_state_vec_54_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_54_T_34 = state_vec_0_set_left_older_3 ? state_vec_54_left_subtree_state_3 : _state_vec_54_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_54_left_subtree_state_5 = state_vec_54_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_54_right_subtree_state_5 = state_vec_54_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_54_T_39 = state_vec_0_set_left_older_4 ? state_vec_54_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_54_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_54_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_54_T_44 = {state_vec_0_set_left_older_4,_state_vec_54_T_39,_state_vec_54_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_54_T_45 = state_vec_0_set_left_older_3 ? _state_vec_54_T_44 : state_vec_54_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_54_T_46 = {state_vec_0_set_left_older_3,_state_vec_54_T_34,_state_vec_54_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_54_T_47 = set_touch_ways_1_54_valid ? _state_vec_54_T_46 : _state_vec_54_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_54_left_subtree_state_6 = _state_vec_54_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_54_right_subtree_state_6 = _state_vec_54_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_54_left_subtree_state_7 = state_vec_54_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_54_right_subtree_state_7 = state_vec_54_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_54_T_52 = state_vec_0_set_left_older_7 ? state_vec_54_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_54_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_54_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_54_T_57 = {state_vec_0_set_left_older_7,_state_vec_54_T_52,_state_vec_54_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_54_T_58 = state_vec_0_set_left_older_6 ? state_vec_54_left_subtree_state_6 : _state_vec_54_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_54_left_subtree_state_8 = state_vec_54_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_54_right_subtree_state_8 = state_vec_54_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_54_T_63 = state_vec_0_set_left_older_7 ? state_vec_54_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_54_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_54_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_54_T_68 = {state_vec_0_set_left_older_7,_state_vec_54_T_63,_state_vec_54_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_54_T_69 = state_vec_0_set_left_older_6 ? _state_vec_54_T_68 : state_vec_54_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_54_T_70 = {state_vec_0_set_left_older_6,_state_vec_54_T_58,_state_vec_54_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_55_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h37; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_55_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h37; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_55_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h37; // @[Replacement.scala 384:30]
  wire  _T_332 = set_touch_ways_0_55_valid | set_touch_ways_1_55_valid | set_touch_ways_2_55_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_55_left_subtree_state = state_vec_55[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_55_right_subtree_state = state_vec_55[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_55_left_subtree_state_1 = state_vec_55_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_55_right_subtree_state_1 = state_vec_55_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_55_T_4 = state_vec_0_set_left_older_1 ? state_vec_55_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_55_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_55_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_55_T_9 = {state_vec_0_set_left_older_1,_state_vec_55_T_4,_state_vec_55_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_55_T_10 = state_vec_0_set_left_older ? state_vec_55_left_subtree_state : _state_vec_55_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_55_left_subtree_state_2 = state_vec_55_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_55_right_subtree_state_2 = state_vec_55_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_55_T_15 = state_vec_0_set_left_older_1 ? state_vec_55_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_55_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_55_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_55_T_20 = {state_vec_0_set_left_older_1,_state_vec_55_T_15,_state_vec_55_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_55_T_21 = state_vec_0_set_left_older ? _state_vec_55_T_20 : state_vec_55_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_55_T_22 = {state_vec_0_set_left_older,_state_vec_55_T_10,_state_vec_55_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_55_T_23 = set_touch_ways_0_55_valid ? _state_vec_55_T_22 : state_vec_55; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_55_left_subtree_state_3 = _state_vec_55_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_55_right_subtree_state_3 = _state_vec_55_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_55_left_subtree_state_4 = state_vec_55_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_55_right_subtree_state_4 = state_vec_55_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_55_T_28 = state_vec_0_set_left_older_4 ? state_vec_55_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_55_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_55_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_55_T_33 = {state_vec_0_set_left_older_4,_state_vec_55_T_28,_state_vec_55_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_55_T_34 = state_vec_0_set_left_older_3 ? state_vec_55_left_subtree_state_3 : _state_vec_55_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_55_left_subtree_state_5 = state_vec_55_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_55_right_subtree_state_5 = state_vec_55_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_55_T_39 = state_vec_0_set_left_older_4 ? state_vec_55_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_55_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_55_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_55_T_44 = {state_vec_0_set_left_older_4,_state_vec_55_T_39,_state_vec_55_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_55_T_45 = state_vec_0_set_left_older_3 ? _state_vec_55_T_44 : state_vec_55_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_55_T_46 = {state_vec_0_set_left_older_3,_state_vec_55_T_34,_state_vec_55_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_55_T_47 = set_touch_ways_1_55_valid ? _state_vec_55_T_46 : _state_vec_55_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_55_left_subtree_state_6 = _state_vec_55_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_55_right_subtree_state_6 = _state_vec_55_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_55_left_subtree_state_7 = state_vec_55_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_55_right_subtree_state_7 = state_vec_55_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_55_T_52 = state_vec_0_set_left_older_7 ? state_vec_55_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_55_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_55_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_55_T_57 = {state_vec_0_set_left_older_7,_state_vec_55_T_52,_state_vec_55_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_55_T_58 = state_vec_0_set_left_older_6 ? state_vec_55_left_subtree_state_6 : _state_vec_55_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_55_left_subtree_state_8 = state_vec_55_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_55_right_subtree_state_8 = state_vec_55_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_55_T_63 = state_vec_0_set_left_older_7 ? state_vec_55_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_55_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_55_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_55_T_68 = {state_vec_0_set_left_older_7,_state_vec_55_T_63,_state_vec_55_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_55_T_69 = state_vec_0_set_left_older_6 ? _state_vec_55_T_68 : state_vec_55_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_55_T_70 = {state_vec_0_set_left_older_6,_state_vec_55_T_58,_state_vec_55_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_56_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h38; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_56_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h38; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_56_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h38; // @[Replacement.scala 384:30]
  wire  _T_336 = set_touch_ways_0_56_valid | set_touch_ways_1_56_valid | set_touch_ways_2_56_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_56_left_subtree_state = state_vec_56[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_56_right_subtree_state = state_vec_56[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_56_left_subtree_state_1 = state_vec_56_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_56_right_subtree_state_1 = state_vec_56_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_56_T_4 = state_vec_0_set_left_older_1 ? state_vec_56_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_56_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_56_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_56_T_9 = {state_vec_0_set_left_older_1,_state_vec_56_T_4,_state_vec_56_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_56_T_10 = state_vec_0_set_left_older ? state_vec_56_left_subtree_state : _state_vec_56_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_56_left_subtree_state_2 = state_vec_56_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_56_right_subtree_state_2 = state_vec_56_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_56_T_15 = state_vec_0_set_left_older_1 ? state_vec_56_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_56_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_56_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_56_T_20 = {state_vec_0_set_left_older_1,_state_vec_56_T_15,_state_vec_56_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_56_T_21 = state_vec_0_set_left_older ? _state_vec_56_T_20 : state_vec_56_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_56_T_22 = {state_vec_0_set_left_older,_state_vec_56_T_10,_state_vec_56_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_56_T_23 = set_touch_ways_0_56_valid ? _state_vec_56_T_22 : state_vec_56; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_56_left_subtree_state_3 = _state_vec_56_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_56_right_subtree_state_3 = _state_vec_56_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_56_left_subtree_state_4 = state_vec_56_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_56_right_subtree_state_4 = state_vec_56_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_56_T_28 = state_vec_0_set_left_older_4 ? state_vec_56_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_56_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_56_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_56_T_33 = {state_vec_0_set_left_older_4,_state_vec_56_T_28,_state_vec_56_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_56_T_34 = state_vec_0_set_left_older_3 ? state_vec_56_left_subtree_state_3 : _state_vec_56_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_56_left_subtree_state_5 = state_vec_56_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_56_right_subtree_state_5 = state_vec_56_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_56_T_39 = state_vec_0_set_left_older_4 ? state_vec_56_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_56_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_56_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_56_T_44 = {state_vec_0_set_left_older_4,_state_vec_56_T_39,_state_vec_56_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_56_T_45 = state_vec_0_set_left_older_3 ? _state_vec_56_T_44 : state_vec_56_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_56_T_46 = {state_vec_0_set_left_older_3,_state_vec_56_T_34,_state_vec_56_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_56_T_47 = set_touch_ways_1_56_valid ? _state_vec_56_T_46 : _state_vec_56_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_56_left_subtree_state_6 = _state_vec_56_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_56_right_subtree_state_6 = _state_vec_56_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_56_left_subtree_state_7 = state_vec_56_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_56_right_subtree_state_7 = state_vec_56_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_56_T_52 = state_vec_0_set_left_older_7 ? state_vec_56_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_56_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_56_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_56_T_57 = {state_vec_0_set_left_older_7,_state_vec_56_T_52,_state_vec_56_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_56_T_58 = state_vec_0_set_left_older_6 ? state_vec_56_left_subtree_state_6 : _state_vec_56_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_56_left_subtree_state_8 = state_vec_56_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_56_right_subtree_state_8 = state_vec_56_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_56_T_63 = state_vec_0_set_left_older_7 ? state_vec_56_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_56_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_56_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_56_T_68 = {state_vec_0_set_left_older_7,_state_vec_56_T_63,_state_vec_56_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_56_T_69 = state_vec_0_set_left_older_6 ? _state_vec_56_T_68 : state_vec_56_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_56_T_70 = {state_vec_0_set_left_older_6,_state_vec_56_T_58,_state_vec_56_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_57_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h39; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_57_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h39; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_57_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h39; // @[Replacement.scala 384:30]
  wire  _T_340 = set_touch_ways_0_57_valid | set_touch_ways_1_57_valid | set_touch_ways_2_57_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_57_left_subtree_state = state_vec_57[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_57_right_subtree_state = state_vec_57[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_57_left_subtree_state_1 = state_vec_57_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_57_right_subtree_state_1 = state_vec_57_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_57_T_4 = state_vec_0_set_left_older_1 ? state_vec_57_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_57_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_57_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_57_T_9 = {state_vec_0_set_left_older_1,_state_vec_57_T_4,_state_vec_57_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_57_T_10 = state_vec_0_set_left_older ? state_vec_57_left_subtree_state : _state_vec_57_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_57_left_subtree_state_2 = state_vec_57_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_57_right_subtree_state_2 = state_vec_57_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_57_T_15 = state_vec_0_set_left_older_1 ? state_vec_57_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_57_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_57_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_57_T_20 = {state_vec_0_set_left_older_1,_state_vec_57_T_15,_state_vec_57_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_57_T_21 = state_vec_0_set_left_older ? _state_vec_57_T_20 : state_vec_57_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_57_T_22 = {state_vec_0_set_left_older,_state_vec_57_T_10,_state_vec_57_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_57_T_23 = set_touch_ways_0_57_valid ? _state_vec_57_T_22 : state_vec_57; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_57_left_subtree_state_3 = _state_vec_57_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_57_right_subtree_state_3 = _state_vec_57_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_57_left_subtree_state_4 = state_vec_57_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_57_right_subtree_state_4 = state_vec_57_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_57_T_28 = state_vec_0_set_left_older_4 ? state_vec_57_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_57_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_57_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_57_T_33 = {state_vec_0_set_left_older_4,_state_vec_57_T_28,_state_vec_57_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_57_T_34 = state_vec_0_set_left_older_3 ? state_vec_57_left_subtree_state_3 : _state_vec_57_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_57_left_subtree_state_5 = state_vec_57_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_57_right_subtree_state_5 = state_vec_57_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_57_T_39 = state_vec_0_set_left_older_4 ? state_vec_57_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_57_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_57_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_57_T_44 = {state_vec_0_set_left_older_4,_state_vec_57_T_39,_state_vec_57_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_57_T_45 = state_vec_0_set_left_older_3 ? _state_vec_57_T_44 : state_vec_57_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_57_T_46 = {state_vec_0_set_left_older_3,_state_vec_57_T_34,_state_vec_57_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_57_T_47 = set_touch_ways_1_57_valid ? _state_vec_57_T_46 : _state_vec_57_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_57_left_subtree_state_6 = _state_vec_57_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_57_right_subtree_state_6 = _state_vec_57_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_57_left_subtree_state_7 = state_vec_57_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_57_right_subtree_state_7 = state_vec_57_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_57_T_52 = state_vec_0_set_left_older_7 ? state_vec_57_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_57_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_57_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_57_T_57 = {state_vec_0_set_left_older_7,_state_vec_57_T_52,_state_vec_57_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_57_T_58 = state_vec_0_set_left_older_6 ? state_vec_57_left_subtree_state_6 : _state_vec_57_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_57_left_subtree_state_8 = state_vec_57_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_57_right_subtree_state_8 = state_vec_57_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_57_T_63 = state_vec_0_set_left_older_7 ? state_vec_57_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_57_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_57_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_57_T_68 = {state_vec_0_set_left_older_7,_state_vec_57_T_63,_state_vec_57_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_57_T_69 = state_vec_0_set_left_older_6 ? _state_vec_57_T_68 : state_vec_57_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_57_T_70 = {state_vec_0_set_left_older_6,_state_vec_57_T_58,_state_vec_57_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_58_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h3a; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_58_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h3a; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_58_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h3a; // @[Replacement.scala 384:30]
  wire  _T_344 = set_touch_ways_0_58_valid | set_touch_ways_1_58_valid | set_touch_ways_2_58_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_58_left_subtree_state = state_vec_58[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_58_right_subtree_state = state_vec_58[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_58_left_subtree_state_1 = state_vec_58_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_58_right_subtree_state_1 = state_vec_58_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_58_T_4 = state_vec_0_set_left_older_1 ? state_vec_58_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_58_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_58_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_58_T_9 = {state_vec_0_set_left_older_1,_state_vec_58_T_4,_state_vec_58_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_58_T_10 = state_vec_0_set_left_older ? state_vec_58_left_subtree_state : _state_vec_58_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_58_left_subtree_state_2 = state_vec_58_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_58_right_subtree_state_2 = state_vec_58_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_58_T_15 = state_vec_0_set_left_older_1 ? state_vec_58_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_58_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_58_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_58_T_20 = {state_vec_0_set_left_older_1,_state_vec_58_T_15,_state_vec_58_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_58_T_21 = state_vec_0_set_left_older ? _state_vec_58_T_20 : state_vec_58_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_58_T_22 = {state_vec_0_set_left_older,_state_vec_58_T_10,_state_vec_58_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_58_T_23 = set_touch_ways_0_58_valid ? _state_vec_58_T_22 : state_vec_58; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_58_left_subtree_state_3 = _state_vec_58_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_58_right_subtree_state_3 = _state_vec_58_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_58_left_subtree_state_4 = state_vec_58_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_58_right_subtree_state_4 = state_vec_58_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_58_T_28 = state_vec_0_set_left_older_4 ? state_vec_58_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_58_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_58_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_58_T_33 = {state_vec_0_set_left_older_4,_state_vec_58_T_28,_state_vec_58_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_58_T_34 = state_vec_0_set_left_older_3 ? state_vec_58_left_subtree_state_3 : _state_vec_58_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_58_left_subtree_state_5 = state_vec_58_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_58_right_subtree_state_5 = state_vec_58_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_58_T_39 = state_vec_0_set_left_older_4 ? state_vec_58_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_58_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_58_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_58_T_44 = {state_vec_0_set_left_older_4,_state_vec_58_T_39,_state_vec_58_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_58_T_45 = state_vec_0_set_left_older_3 ? _state_vec_58_T_44 : state_vec_58_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_58_T_46 = {state_vec_0_set_left_older_3,_state_vec_58_T_34,_state_vec_58_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_58_T_47 = set_touch_ways_1_58_valid ? _state_vec_58_T_46 : _state_vec_58_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_58_left_subtree_state_6 = _state_vec_58_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_58_right_subtree_state_6 = _state_vec_58_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_58_left_subtree_state_7 = state_vec_58_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_58_right_subtree_state_7 = state_vec_58_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_58_T_52 = state_vec_0_set_left_older_7 ? state_vec_58_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_58_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_58_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_58_T_57 = {state_vec_0_set_left_older_7,_state_vec_58_T_52,_state_vec_58_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_58_T_58 = state_vec_0_set_left_older_6 ? state_vec_58_left_subtree_state_6 : _state_vec_58_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_58_left_subtree_state_8 = state_vec_58_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_58_right_subtree_state_8 = state_vec_58_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_58_T_63 = state_vec_0_set_left_older_7 ? state_vec_58_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_58_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_58_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_58_T_68 = {state_vec_0_set_left_older_7,_state_vec_58_T_63,_state_vec_58_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_58_T_69 = state_vec_0_set_left_older_6 ? _state_vec_58_T_68 : state_vec_58_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_58_T_70 = {state_vec_0_set_left_older_6,_state_vec_58_T_58,_state_vec_58_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_59_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h3b; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_59_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h3b; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_59_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h3b; // @[Replacement.scala 384:30]
  wire  _T_348 = set_touch_ways_0_59_valid | set_touch_ways_1_59_valid | set_touch_ways_2_59_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_59_left_subtree_state = state_vec_59[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_59_right_subtree_state = state_vec_59[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_59_left_subtree_state_1 = state_vec_59_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_59_right_subtree_state_1 = state_vec_59_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_59_T_4 = state_vec_0_set_left_older_1 ? state_vec_59_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_59_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_59_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_59_T_9 = {state_vec_0_set_left_older_1,_state_vec_59_T_4,_state_vec_59_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_59_T_10 = state_vec_0_set_left_older ? state_vec_59_left_subtree_state : _state_vec_59_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_59_left_subtree_state_2 = state_vec_59_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_59_right_subtree_state_2 = state_vec_59_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_59_T_15 = state_vec_0_set_left_older_1 ? state_vec_59_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_59_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_59_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_59_T_20 = {state_vec_0_set_left_older_1,_state_vec_59_T_15,_state_vec_59_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_59_T_21 = state_vec_0_set_left_older ? _state_vec_59_T_20 : state_vec_59_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_59_T_22 = {state_vec_0_set_left_older,_state_vec_59_T_10,_state_vec_59_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_59_T_23 = set_touch_ways_0_59_valid ? _state_vec_59_T_22 : state_vec_59; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_59_left_subtree_state_3 = _state_vec_59_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_59_right_subtree_state_3 = _state_vec_59_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_59_left_subtree_state_4 = state_vec_59_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_59_right_subtree_state_4 = state_vec_59_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_59_T_28 = state_vec_0_set_left_older_4 ? state_vec_59_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_59_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_59_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_59_T_33 = {state_vec_0_set_left_older_4,_state_vec_59_T_28,_state_vec_59_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_59_T_34 = state_vec_0_set_left_older_3 ? state_vec_59_left_subtree_state_3 : _state_vec_59_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_59_left_subtree_state_5 = state_vec_59_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_59_right_subtree_state_5 = state_vec_59_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_59_T_39 = state_vec_0_set_left_older_4 ? state_vec_59_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_59_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_59_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_59_T_44 = {state_vec_0_set_left_older_4,_state_vec_59_T_39,_state_vec_59_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_59_T_45 = state_vec_0_set_left_older_3 ? _state_vec_59_T_44 : state_vec_59_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_59_T_46 = {state_vec_0_set_left_older_3,_state_vec_59_T_34,_state_vec_59_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_59_T_47 = set_touch_ways_1_59_valid ? _state_vec_59_T_46 : _state_vec_59_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_59_left_subtree_state_6 = _state_vec_59_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_59_right_subtree_state_6 = _state_vec_59_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_59_left_subtree_state_7 = state_vec_59_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_59_right_subtree_state_7 = state_vec_59_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_59_T_52 = state_vec_0_set_left_older_7 ? state_vec_59_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_59_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_59_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_59_T_57 = {state_vec_0_set_left_older_7,_state_vec_59_T_52,_state_vec_59_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_59_T_58 = state_vec_0_set_left_older_6 ? state_vec_59_left_subtree_state_6 : _state_vec_59_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_59_left_subtree_state_8 = state_vec_59_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_59_right_subtree_state_8 = state_vec_59_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_59_T_63 = state_vec_0_set_left_older_7 ? state_vec_59_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_59_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_59_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_59_T_68 = {state_vec_0_set_left_older_7,_state_vec_59_T_63,_state_vec_59_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_59_T_69 = state_vec_0_set_left_older_6 ? _state_vec_59_T_68 : state_vec_59_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_59_T_70 = {state_vec_0_set_left_older_6,_state_vec_59_T_58,_state_vec_59_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_60_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h3c; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_60_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h3c; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_60_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h3c; // @[Replacement.scala 384:30]
  wire  _T_352 = set_touch_ways_0_60_valid | set_touch_ways_1_60_valid | set_touch_ways_2_60_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_60_left_subtree_state = state_vec_60[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_60_right_subtree_state = state_vec_60[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_60_left_subtree_state_1 = state_vec_60_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_60_right_subtree_state_1 = state_vec_60_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_60_T_4 = state_vec_0_set_left_older_1 ? state_vec_60_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_60_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_60_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_60_T_9 = {state_vec_0_set_left_older_1,_state_vec_60_T_4,_state_vec_60_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_60_T_10 = state_vec_0_set_left_older ? state_vec_60_left_subtree_state : _state_vec_60_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_60_left_subtree_state_2 = state_vec_60_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_60_right_subtree_state_2 = state_vec_60_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_60_T_15 = state_vec_0_set_left_older_1 ? state_vec_60_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_60_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_60_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_60_T_20 = {state_vec_0_set_left_older_1,_state_vec_60_T_15,_state_vec_60_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_60_T_21 = state_vec_0_set_left_older ? _state_vec_60_T_20 : state_vec_60_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_60_T_22 = {state_vec_0_set_left_older,_state_vec_60_T_10,_state_vec_60_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_60_T_23 = set_touch_ways_0_60_valid ? _state_vec_60_T_22 : state_vec_60; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_60_left_subtree_state_3 = _state_vec_60_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_60_right_subtree_state_3 = _state_vec_60_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_60_left_subtree_state_4 = state_vec_60_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_60_right_subtree_state_4 = state_vec_60_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_60_T_28 = state_vec_0_set_left_older_4 ? state_vec_60_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_60_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_60_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_60_T_33 = {state_vec_0_set_left_older_4,_state_vec_60_T_28,_state_vec_60_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_60_T_34 = state_vec_0_set_left_older_3 ? state_vec_60_left_subtree_state_3 : _state_vec_60_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_60_left_subtree_state_5 = state_vec_60_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_60_right_subtree_state_5 = state_vec_60_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_60_T_39 = state_vec_0_set_left_older_4 ? state_vec_60_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_60_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_60_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_60_T_44 = {state_vec_0_set_left_older_4,_state_vec_60_T_39,_state_vec_60_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_60_T_45 = state_vec_0_set_left_older_3 ? _state_vec_60_T_44 : state_vec_60_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_60_T_46 = {state_vec_0_set_left_older_3,_state_vec_60_T_34,_state_vec_60_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_60_T_47 = set_touch_ways_1_60_valid ? _state_vec_60_T_46 : _state_vec_60_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_60_left_subtree_state_6 = _state_vec_60_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_60_right_subtree_state_6 = _state_vec_60_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_60_left_subtree_state_7 = state_vec_60_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_60_right_subtree_state_7 = state_vec_60_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_60_T_52 = state_vec_0_set_left_older_7 ? state_vec_60_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_60_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_60_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_60_T_57 = {state_vec_0_set_left_older_7,_state_vec_60_T_52,_state_vec_60_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_60_T_58 = state_vec_0_set_left_older_6 ? state_vec_60_left_subtree_state_6 : _state_vec_60_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_60_left_subtree_state_8 = state_vec_60_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_60_right_subtree_state_8 = state_vec_60_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_60_T_63 = state_vec_0_set_left_older_7 ? state_vec_60_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_60_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_60_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_60_T_68 = {state_vec_0_set_left_older_7,_state_vec_60_T_63,_state_vec_60_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_60_T_69 = state_vec_0_set_left_older_6 ? _state_vec_60_T_68 : state_vec_60_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_60_T_70 = {state_vec_0_set_left_older_6,_state_vec_60_T_58,_state_vec_60_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_61_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h3d; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_61_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h3d; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_61_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h3d; // @[Replacement.scala 384:30]
  wire  _T_356 = set_touch_ways_0_61_valid | set_touch_ways_1_61_valid | set_touch_ways_2_61_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_61_left_subtree_state = state_vec_61[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_61_right_subtree_state = state_vec_61[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_61_left_subtree_state_1 = state_vec_61_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_61_right_subtree_state_1 = state_vec_61_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_61_T_4 = state_vec_0_set_left_older_1 ? state_vec_61_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_61_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_61_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_61_T_9 = {state_vec_0_set_left_older_1,_state_vec_61_T_4,_state_vec_61_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_61_T_10 = state_vec_0_set_left_older ? state_vec_61_left_subtree_state : _state_vec_61_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_61_left_subtree_state_2 = state_vec_61_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_61_right_subtree_state_2 = state_vec_61_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_61_T_15 = state_vec_0_set_left_older_1 ? state_vec_61_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_61_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_61_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_61_T_20 = {state_vec_0_set_left_older_1,_state_vec_61_T_15,_state_vec_61_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_61_T_21 = state_vec_0_set_left_older ? _state_vec_61_T_20 : state_vec_61_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_61_T_22 = {state_vec_0_set_left_older,_state_vec_61_T_10,_state_vec_61_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_61_T_23 = set_touch_ways_0_61_valid ? _state_vec_61_T_22 : state_vec_61; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_61_left_subtree_state_3 = _state_vec_61_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_61_right_subtree_state_3 = _state_vec_61_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_61_left_subtree_state_4 = state_vec_61_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_61_right_subtree_state_4 = state_vec_61_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_61_T_28 = state_vec_0_set_left_older_4 ? state_vec_61_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_61_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_61_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_61_T_33 = {state_vec_0_set_left_older_4,_state_vec_61_T_28,_state_vec_61_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_61_T_34 = state_vec_0_set_left_older_3 ? state_vec_61_left_subtree_state_3 : _state_vec_61_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_61_left_subtree_state_5 = state_vec_61_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_61_right_subtree_state_5 = state_vec_61_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_61_T_39 = state_vec_0_set_left_older_4 ? state_vec_61_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_61_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_61_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_61_T_44 = {state_vec_0_set_left_older_4,_state_vec_61_T_39,_state_vec_61_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_61_T_45 = state_vec_0_set_left_older_3 ? _state_vec_61_T_44 : state_vec_61_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_61_T_46 = {state_vec_0_set_left_older_3,_state_vec_61_T_34,_state_vec_61_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_61_T_47 = set_touch_ways_1_61_valid ? _state_vec_61_T_46 : _state_vec_61_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_61_left_subtree_state_6 = _state_vec_61_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_61_right_subtree_state_6 = _state_vec_61_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_61_left_subtree_state_7 = state_vec_61_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_61_right_subtree_state_7 = state_vec_61_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_61_T_52 = state_vec_0_set_left_older_7 ? state_vec_61_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_61_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_61_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_61_T_57 = {state_vec_0_set_left_older_7,_state_vec_61_T_52,_state_vec_61_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_61_T_58 = state_vec_0_set_left_older_6 ? state_vec_61_left_subtree_state_6 : _state_vec_61_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_61_left_subtree_state_8 = state_vec_61_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_61_right_subtree_state_8 = state_vec_61_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_61_T_63 = state_vec_0_set_left_older_7 ? state_vec_61_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_61_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_61_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_61_T_68 = {state_vec_0_set_left_older_7,_state_vec_61_T_63,_state_vec_61_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_61_T_69 = state_vec_0_set_left_older_6 ? _state_vec_61_T_68 : state_vec_61_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_61_T_70 = {state_vec_0_set_left_older_6,_state_vec_61_T_58,_state_vec_61_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_62_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h3e; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_62_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h3e; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_62_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h3e; // @[Replacement.scala 384:30]
  wire  _T_360 = set_touch_ways_0_62_valid | set_touch_ways_1_62_valid | set_touch_ways_2_62_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_62_left_subtree_state = state_vec_62[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_62_right_subtree_state = state_vec_62[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_62_left_subtree_state_1 = state_vec_62_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_62_right_subtree_state_1 = state_vec_62_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_62_T_4 = state_vec_0_set_left_older_1 ? state_vec_62_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_62_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_62_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_62_T_9 = {state_vec_0_set_left_older_1,_state_vec_62_T_4,_state_vec_62_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_62_T_10 = state_vec_0_set_left_older ? state_vec_62_left_subtree_state : _state_vec_62_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_62_left_subtree_state_2 = state_vec_62_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_62_right_subtree_state_2 = state_vec_62_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_62_T_15 = state_vec_0_set_left_older_1 ? state_vec_62_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_62_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_62_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_62_T_20 = {state_vec_0_set_left_older_1,_state_vec_62_T_15,_state_vec_62_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_62_T_21 = state_vec_0_set_left_older ? _state_vec_62_T_20 : state_vec_62_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_62_T_22 = {state_vec_0_set_left_older,_state_vec_62_T_10,_state_vec_62_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_62_T_23 = set_touch_ways_0_62_valid ? _state_vec_62_T_22 : state_vec_62; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_62_left_subtree_state_3 = _state_vec_62_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_62_right_subtree_state_3 = _state_vec_62_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_62_left_subtree_state_4 = state_vec_62_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_62_right_subtree_state_4 = state_vec_62_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_62_T_28 = state_vec_0_set_left_older_4 ? state_vec_62_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_62_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_62_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_62_T_33 = {state_vec_0_set_left_older_4,_state_vec_62_T_28,_state_vec_62_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_62_T_34 = state_vec_0_set_left_older_3 ? state_vec_62_left_subtree_state_3 : _state_vec_62_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_62_left_subtree_state_5 = state_vec_62_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_62_right_subtree_state_5 = state_vec_62_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_62_T_39 = state_vec_0_set_left_older_4 ? state_vec_62_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_62_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_62_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_62_T_44 = {state_vec_0_set_left_older_4,_state_vec_62_T_39,_state_vec_62_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_62_T_45 = state_vec_0_set_left_older_3 ? _state_vec_62_T_44 : state_vec_62_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_62_T_46 = {state_vec_0_set_left_older_3,_state_vec_62_T_34,_state_vec_62_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_62_T_47 = set_touch_ways_1_62_valid ? _state_vec_62_T_46 : _state_vec_62_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_62_left_subtree_state_6 = _state_vec_62_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_62_right_subtree_state_6 = _state_vec_62_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_62_left_subtree_state_7 = state_vec_62_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_62_right_subtree_state_7 = state_vec_62_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_62_T_52 = state_vec_0_set_left_older_7 ? state_vec_62_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_62_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_62_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_62_T_57 = {state_vec_0_set_left_older_7,_state_vec_62_T_52,_state_vec_62_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_62_T_58 = state_vec_0_set_left_older_6 ? state_vec_62_left_subtree_state_6 : _state_vec_62_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_62_left_subtree_state_8 = state_vec_62_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_62_right_subtree_state_8 = state_vec_62_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_62_T_63 = state_vec_0_set_left_older_7 ? state_vec_62_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_62_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_62_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_62_T_68 = {state_vec_0_set_left_older_7,_state_vec_62_T_63,_state_vec_62_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_62_T_69 = state_vec_0_set_left_older_6 ? _state_vec_62_T_68 : state_vec_62_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_62_T_70 = {state_vec_0_set_left_older_6,_state_vec_62_T_58,_state_vec_62_T_69}; // @[Cat.scala 31:58]
  wire  set_touch_ways_0_63_valid = touchWays_0_valid & ldu_0_io_replace_access_bits_set == 6'h3f; // @[Replacement.scala 384:30]
  wire  set_touch_ways_1_63_valid = touchWays_1_valid & ldu_1_io_replace_access_bits_set == 6'h3f; // @[Replacement.scala 384:30]
  wire  set_touch_ways_2_63_valid = touchWays_2_valid & mainPipe_io_replace_access_bits_set == 6'h3f; // @[Replacement.scala 384:30]
  wire  _T_364 = set_touch_ways_0_63_valid | set_touch_ways_1_63_valid | set_touch_ways_2_63_valid; // @[package.scala 72:59]
  wire [2:0] state_vec_63_left_subtree_state = state_vec_63[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_63_right_subtree_state = state_vec_63[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_63_left_subtree_state_1 = state_vec_63_left_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_63_right_subtree_state_1 = state_vec_63_left_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_63_T_4 = state_vec_0_set_left_older_1 ? state_vec_63_left_subtree_state_1 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_63_T_8 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_63_right_subtree_state_1; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_63_T_9 = {state_vec_0_set_left_older_1,_state_vec_63_T_4,_state_vec_63_T_8}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_63_T_10 = state_vec_0_set_left_older ? state_vec_63_left_subtree_state : _state_vec_63_T_9; // @[Replacement.scala 203:16]
  wire  state_vec_63_left_subtree_state_2 = state_vec_63_right_subtree_state[1]; // @[package.scala 154:13]
  wire  state_vec_63_right_subtree_state_2 = state_vec_63_right_subtree_state[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_63_T_15 = state_vec_0_set_left_older_1 ? state_vec_63_left_subtree_state_2 : _state_vec_0_T_3; // @[Replacement.scala 203:16]
  wire  _state_vec_63_T_19 = state_vec_0_set_left_older_1 ? _state_vec_0_T_3 : state_vec_63_right_subtree_state_2; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_63_T_20 = {state_vec_0_set_left_older_1,_state_vec_63_T_15,_state_vec_63_T_19}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_63_T_21 = state_vec_0_set_left_older ? _state_vec_63_T_20 : state_vec_63_right_subtree_state; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_63_T_22 = {state_vec_0_set_left_older,_state_vec_63_T_10,_state_vec_63_T_21}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_63_T_23 = set_touch_ways_0_63_valid ? _state_vec_63_T_22 : state_vec_63; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_63_left_subtree_state_3 = _state_vec_63_T_23[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_63_right_subtree_state_3 = _state_vec_63_T_23[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_63_left_subtree_state_4 = state_vec_63_left_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_63_right_subtree_state_4 = state_vec_63_left_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_63_T_28 = state_vec_0_set_left_older_4 ? state_vec_63_left_subtree_state_4 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_63_T_32 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_63_right_subtree_state_4; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_63_T_33 = {state_vec_0_set_left_older_4,_state_vec_63_T_28,_state_vec_63_T_32}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_63_T_34 = state_vec_0_set_left_older_3 ? state_vec_63_left_subtree_state_3 : _state_vec_63_T_33; // @[Replacement.scala 203:16]
  wire  state_vec_63_left_subtree_state_5 = state_vec_63_right_subtree_state_3[1]; // @[package.scala 154:13]
  wire  state_vec_63_right_subtree_state_5 = state_vec_63_right_subtree_state_3[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_63_T_39 = state_vec_0_set_left_older_4 ? state_vec_63_left_subtree_state_5 : _state_vec_0_T_27; // @[Replacement.scala 203:16]
  wire  _state_vec_63_T_43 = state_vec_0_set_left_older_4 ? _state_vec_0_T_27 : state_vec_63_right_subtree_state_5; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_63_T_44 = {state_vec_0_set_left_older_4,_state_vec_63_T_39,_state_vec_63_T_43}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_63_T_45 = state_vec_0_set_left_older_3 ? _state_vec_63_T_44 : state_vec_63_right_subtree_state_3
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_63_T_46 = {state_vec_0_set_left_older_3,_state_vec_63_T_34,_state_vec_63_T_45}; // @[Cat.scala 31:58]
  wire [6:0] _state_vec_63_T_47 = set_touch_ways_1_63_valid ? _state_vec_63_T_46 : _state_vec_63_T_23; // @[Replacement.scala 22:56]
  wire [2:0] state_vec_63_left_subtree_state_6 = _state_vec_63_T_47[5:3]; // @[package.scala 154:13]
  wire [2:0] state_vec_63_right_subtree_state_6 = _state_vec_63_T_47[2:0]; // @[Replacement.scala 198:38]
  wire  state_vec_63_left_subtree_state_7 = state_vec_63_left_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_63_right_subtree_state_7 = state_vec_63_left_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_63_T_52 = state_vec_0_set_left_older_7 ? state_vec_63_left_subtree_state_7 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_63_T_56 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_63_right_subtree_state_7; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_63_T_57 = {state_vec_0_set_left_older_7,_state_vec_63_T_52,_state_vec_63_T_56}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_63_T_58 = state_vec_0_set_left_older_6 ? state_vec_63_left_subtree_state_6 : _state_vec_63_T_57; // @[Replacement.scala 203:16]
  wire  state_vec_63_left_subtree_state_8 = state_vec_63_right_subtree_state_6[1]; // @[package.scala 154:13]
  wire  state_vec_63_right_subtree_state_8 = state_vec_63_right_subtree_state_6[0]; // @[Replacement.scala 198:38]
  wire  _state_vec_63_T_63 = state_vec_0_set_left_older_7 ? state_vec_63_left_subtree_state_8 : _state_vec_0_T_51; // @[Replacement.scala 203:16]
  wire  _state_vec_63_T_67 = state_vec_0_set_left_older_7 ? _state_vec_0_T_51 : state_vec_63_right_subtree_state_8; // @[Replacement.scala 206:16]
  wire [2:0] _state_vec_63_T_68 = {state_vec_0_set_left_older_7,_state_vec_63_T_63,_state_vec_63_T_67}; // @[Cat.scala 31:58]
  wire [2:0] _state_vec_63_T_69 = state_vec_0_set_left_older_6 ? _state_vec_63_T_68 : state_vec_63_right_subtree_state_6
    ; // @[Replacement.scala 206:16]
  wire [6:0] _state_vec_63_T_70 = {state_vec_0_set_left_older_6,_state_vec_63_T_58,_state_vec_63_T_69}; // @[Cat.scala 31:58]
  reg [5:0] io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_3_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_4_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_4_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_5_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_5_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_6_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_6_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_7_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_7_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_8_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_8_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_9_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_9_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_10_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_10_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_11_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_11_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_12_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_12_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_13_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_13_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_14_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_14_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_15_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_15_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_16_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_16_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_17_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_17_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [5:0] io_perf_22_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_22_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  BankedDataArray bankedDataArray ( // @[DCacheWrapper.scala 811:84]
    .clock(bankedDataArray_clock),
    .io_read_0_ready(bankedDataArray_io_read_0_ready),
    .io_read_0_valid(bankedDataArray_io_read_0_valid),
    .io_read_0_bits_way_en(bankedDataArray_io_read_0_bits_way_en),
    .io_read_0_bits_addr(bankedDataArray_io_read_0_bits_addr),
    .io_read_0_bits_bankMask(bankedDataArray_io_read_0_bits_bankMask),
    .io_read_1_ready(bankedDataArray_io_read_1_ready),
    .io_read_1_valid(bankedDataArray_io_read_1_valid),
    .io_read_1_bits_way_en(bankedDataArray_io_read_1_bits_way_en),
    .io_read_1_bits_addr(bankedDataArray_io_read_1_bits_addr),
    .io_read_1_bits_bankMask(bankedDataArray_io_read_1_bits_bankMask),
    .io_readline_intend(bankedDataArray_io_readline_intend),
    .io_readline_ready(bankedDataArray_io_readline_ready),
    .io_readline_valid(bankedDataArray_io_readline_valid),
    .io_readline_bits_way_en(bankedDataArray_io_readline_bits_way_en),
    .io_readline_bits_addr(bankedDataArray_io_readline_bits_addr),
    .io_write_valid(bankedDataArray_io_write_valid),
    .io_write_bits_wmask(bankedDataArray_io_write_bits_wmask),
    .io_write_bits_data_0(bankedDataArray_io_write_bits_data_0),
    .io_write_bits_data_1(bankedDataArray_io_write_bits_data_1),
    .io_write_bits_data_2(bankedDataArray_io_write_bits_data_2),
    .io_write_bits_data_3(bankedDataArray_io_write_bits_data_3),
    .io_write_bits_data_4(bankedDataArray_io_write_bits_data_4),
    .io_write_bits_data_5(bankedDataArray_io_write_bits_data_5),
    .io_write_bits_data_6(bankedDataArray_io_write_bits_data_6),
    .io_write_bits_data_7(bankedDataArray_io_write_bits_data_7),
    .io_write_dup_0_valid(bankedDataArray_io_write_dup_0_valid),
    .io_write_dup_0_bits_way_en(bankedDataArray_io_write_dup_0_bits_way_en),
    .io_write_dup_0_bits_addr(bankedDataArray_io_write_dup_0_bits_addr),
    .io_write_dup_1_valid(bankedDataArray_io_write_dup_1_valid),
    .io_write_dup_1_bits_way_en(bankedDataArray_io_write_dup_1_bits_way_en),
    .io_write_dup_1_bits_addr(bankedDataArray_io_write_dup_1_bits_addr),
    .io_write_dup_2_valid(bankedDataArray_io_write_dup_2_valid),
    .io_write_dup_2_bits_way_en(bankedDataArray_io_write_dup_2_bits_way_en),
    .io_write_dup_2_bits_addr(bankedDataArray_io_write_dup_2_bits_addr),
    .io_write_dup_3_valid(bankedDataArray_io_write_dup_3_valid),
    .io_write_dup_3_bits_way_en(bankedDataArray_io_write_dup_3_bits_way_en),
    .io_write_dup_3_bits_addr(bankedDataArray_io_write_dup_3_bits_addr),
    .io_write_dup_4_valid(bankedDataArray_io_write_dup_4_valid),
    .io_write_dup_4_bits_way_en(bankedDataArray_io_write_dup_4_bits_way_en),
    .io_write_dup_4_bits_addr(bankedDataArray_io_write_dup_4_bits_addr),
    .io_write_dup_5_valid(bankedDataArray_io_write_dup_5_valid),
    .io_write_dup_5_bits_way_en(bankedDataArray_io_write_dup_5_bits_way_en),
    .io_write_dup_5_bits_addr(bankedDataArray_io_write_dup_5_bits_addr),
    .io_write_dup_6_valid(bankedDataArray_io_write_dup_6_valid),
    .io_write_dup_6_bits_way_en(bankedDataArray_io_write_dup_6_bits_way_en),
    .io_write_dup_6_bits_addr(bankedDataArray_io_write_dup_6_bits_addr),
    .io_write_dup_7_valid(bankedDataArray_io_write_dup_7_valid),
    .io_write_dup_7_bits_way_en(bankedDataArray_io_write_dup_7_bits_way_en),
    .io_write_dup_7_bits_addr(bankedDataArray_io_write_dup_7_bits_addr),
    .io_readline_resp_0_raw_data(bankedDataArray_io_readline_resp_0_raw_data),
    .io_readline_resp_0_error_delayed(bankedDataArray_io_readline_resp_0_error_delayed),
    .io_readline_resp_1_raw_data(bankedDataArray_io_readline_resp_1_raw_data),
    .io_readline_resp_1_error_delayed(bankedDataArray_io_readline_resp_1_error_delayed),
    .io_readline_resp_2_raw_data(bankedDataArray_io_readline_resp_2_raw_data),
    .io_readline_resp_2_error_delayed(bankedDataArray_io_readline_resp_2_error_delayed),
    .io_readline_resp_3_raw_data(bankedDataArray_io_readline_resp_3_raw_data),
    .io_readline_resp_3_error_delayed(bankedDataArray_io_readline_resp_3_error_delayed),
    .io_readline_resp_4_raw_data(bankedDataArray_io_readline_resp_4_raw_data),
    .io_readline_resp_4_error_delayed(bankedDataArray_io_readline_resp_4_error_delayed),
    .io_readline_resp_5_raw_data(bankedDataArray_io_readline_resp_5_raw_data),
    .io_readline_resp_5_error_delayed(bankedDataArray_io_readline_resp_5_error_delayed),
    .io_readline_resp_6_raw_data(bankedDataArray_io_readline_resp_6_raw_data),
    .io_readline_resp_6_error_delayed(bankedDataArray_io_readline_resp_6_error_delayed),
    .io_readline_resp_7_raw_data(bankedDataArray_io_readline_resp_7_raw_data),
    .io_readline_resp_7_error_delayed(bankedDataArray_io_readline_resp_7_error_delayed),
    .io_readline_error_delayed(bankedDataArray_io_readline_error_delayed),
    .io_read_resp_delayed_0_0_raw_data(bankedDataArray_io_read_resp_delayed_0_0_raw_data),
    .io_read_resp_delayed_1_0_raw_data(bankedDataArray_io_read_resp_delayed_1_0_raw_data),
    .io_read_error_delayed_0_0(bankedDataArray_io_read_error_delayed_0_0),
    .io_read_error_delayed_1_0(bankedDataArray_io_read_error_delayed_1_0),
    .io_bank_conflict_slow_0(bankedDataArray_io_bank_conflict_slow_0),
    .io_bank_conflict_slow_1(bankedDataArray_io_bank_conflict_slow_1),
    .io_disable_ld_fast_wakeup_0(bankedDataArray_io_disable_ld_fast_wakeup_0),
    .io_disable_ld_fast_wakeup_1(bankedDataArray_io_disable_ld_fast_wakeup_1),
    .io_cacheOp_req_valid(bankedDataArray_io_cacheOp_req_valid),
    .io_cacheOp_req_bits_wayNum(bankedDataArray_io_cacheOp_req_bits_wayNum),
    .io_cacheOp_req_bits_index(bankedDataArray_io_cacheOp_req_bits_index),
    .io_cacheOp_req_bits_write_data_vec_0(bankedDataArray_io_cacheOp_req_bits_write_data_vec_0),
    .io_cacheOp_req_bits_write_data_vec_1(bankedDataArray_io_cacheOp_req_bits_write_data_vec_1),
    .io_cacheOp_req_bits_write_data_vec_2(bankedDataArray_io_cacheOp_req_bits_write_data_vec_2),
    .io_cacheOp_req_bits_write_data_vec_3(bankedDataArray_io_cacheOp_req_bits_write_data_vec_3),
    .io_cacheOp_req_bits_write_data_vec_4(bankedDataArray_io_cacheOp_req_bits_write_data_vec_4),
    .io_cacheOp_req_bits_write_data_vec_5(bankedDataArray_io_cacheOp_req_bits_write_data_vec_5),
    .io_cacheOp_req_bits_write_data_vec_6(bankedDataArray_io_cacheOp_req_bits_write_data_vec_6),
    .io_cacheOp_req_bits_write_data_vec_7(bankedDataArray_io_cacheOp_req_bits_write_data_vec_7),
    .io_cacheOp_req_bits_write_data_ecc(bankedDataArray_io_cacheOp_req_bits_write_data_ecc),
    .io_cacheOp_req_bits_bank_num(bankedDataArray_io_cacheOp_req_bits_bank_num),
    .io_cacheOp_resp_valid(bankedDataArray_io_cacheOp_resp_valid),
    .io_cacheOp_resp_bits_read_data_vec_0(bankedDataArray_io_cacheOp_resp_bits_read_data_vec_0),
    .io_cacheOp_resp_bits_read_data_vec_1(bankedDataArray_io_cacheOp_resp_bits_read_data_vec_1),
    .io_cacheOp_resp_bits_read_data_vec_2(bankedDataArray_io_cacheOp_resp_bits_read_data_vec_2),
    .io_cacheOp_resp_bits_read_data_vec_3(bankedDataArray_io_cacheOp_resp_bits_read_data_vec_3),
    .io_cacheOp_resp_bits_read_data_vec_4(bankedDataArray_io_cacheOp_resp_bits_read_data_vec_4),
    .io_cacheOp_resp_bits_read_data_vec_5(bankedDataArray_io_cacheOp_resp_bits_read_data_vec_5),
    .io_cacheOp_resp_bits_read_data_vec_6(bankedDataArray_io_cacheOp_resp_bits_read_data_vec_6),
    .io_cacheOp_resp_bits_read_data_vec_7(bankedDataArray_io_cacheOp_resp_bits_read_data_vec_7),
    .io_cacheOp_resp_bits_read_data_ecc(bankedDataArray_io_cacheOp_resp_bits_read_data_ecc),
    .io_cacheOp_req_dup_0_valid(bankedDataArray_io_cacheOp_req_dup_0_valid),
    .io_cacheOp_req_dup_1_valid(bankedDataArray_io_cacheOp_req_dup_1_valid),
    .io_cacheOp_req_dup_2_valid(bankedDataArray_io_cacheOp_req_dup_2_valid),
    .io_cacheOp_req_dup_3_valid(bankedDataArray_io_cacheOp_req_dup_3_valid),
    .io_cacheOp_req_dup_4_valid(bankedDataArray_io_cacheOp_req_dup_4_valid),
    .io_cacheOp_req_dup_5_valid(bankedDataArray_io_cacheOp_req_dup_5_valid),
    .io_cacheOp_req_dup_6_valid(bankedDataArray_io_cacheOp_req_dup_6_valid),
    .io_cacheOp_req_dup_7_valid(bankedDataArray_io_cacheOp_req_dup_7_valid),
    .io_cacheOp_req_dup_8_valid(bankedDataArray_io_cacheOp_req_dup_8_valid),
    .io_cacheOp_req_dup_9_valid(bankedDataArray_io_cacheOp_req_dup_9_valid),
    .io_cacheOp_req_dup_10_valid(bankedDataArray_io_cacheOp_req_dup_10_valid),
    .io_cacheOp_req_dup_11_valid(bankedDataArray_io_cacheOp_req_dup_11_valid),
    .io_cacheOp_req_dup_12_valid(bankedDataArray_io_cacheOp_req_dup_12_valid),
    .io_cacheOp_req_dup_13_valid(bankedDataArray_io_cacheOp_req_dup_13_valid),
    .io_cacheOp_req_dup_14_valid(bankedDataArray_io_cacheOp_req_dup_14_valid),
    .io_cacheOp_req_dup_15_valid(bankedDataArray_io_cacheOp_req_dup_15_valid),
    .io_cacheOp_req_bits_opCode_dup_0(bankedDataArray_io_cacheOp_req_bits_opCode_dup_0),
    .io_cacheOp_req_bits_opCode_dup_1(bankedDataArray_io_cacheOp_req_bits_opCode_dup_1),
    .io_cacheOp_req_bits_opCode_dup_2(bankedDataArray_io_cacheOp_req_bits_opCode_dup_2),
    .io_cacheOp_req_bits_opCode_dup_3(bankedDataArray_io_cacheOp_req_bits_opCode_dup_3),
    .io_cacheOp_req_bits_opCode_dup_4(bankedDataArray_io_cacheOp_req_bits_opCode_dup_4),
    .io_cacheOp_req_bits_opCode_dup_5(bankedDataArray_io_cacheOp_req_bits_opCode_dup_5),
    .io_cacheOp_req_bits_opCode_dup_6(bankedDataArray_io_cacheOp_req_bits_opCode_dup_6),
    .io_cacheOp_req_bits_opCode_dup_7(bankedDataArray_io_cacheOp_req_bits_opCode_dup_7),
    .io_cacheOp_req_bits_opCode_dup_8(bankedDataArray_io_cacheOp_req_bits_opCode_dup_8),
    .io_cacheOp_req_bits_opCode_dup_9(bankedDataArray_io_cacheOp_req_bits_opCode_dup_9),
    .io_cacheOp_req_bits_opCode_dup_10(bankedDataArray_io_cacheOp_req_bits_opCode_dup_10),
    .io_cacheOp_req_bits_opCode_dup_11(bankedDataArray_io_cacheOp_req_bits_opCode_dup_11),
    .io_cacheOp_req_bits_opCode_dup_12(bankedDataArray_io_cacheOp_req_bits_opCode_dup_12),
    .io_cacheOp_req_bits_opCode_dup_13(bankedDataArray_io_cacheOp_req_bits_opCode_dup_13),
    .io_cacheOp_req_bits_opCode_dup_14(bankedDataArray_io_cacheOp_req_bits_opCode_dup_14),
    .io_cacheOp_req_bits_opCode_dup_15(bankedDataArray_io_cacheOp_req_bits_opCode_dup_15)
  );
  L1CohMetaArray metaArray ( // @[DCacheWrapper.scala 812:25]
    .clock(metaArray_clock),
    .reset(metaArray_reset),
    .io_read_0_valid(metaArray_io_read_0_valid),
    .io_read_0_bits_idx(metaArray_io_read_0_bits_idx),
    .io_read_1_valid(metaArray_io_read_1_valid),
    .io_read_1_bits_idx(metaArray_io_read_1_bits_idx),
    .io_read_2_valid(metaArray_io_read_2_valid),
    .io_read_2_bits_idx(metaArray_io_read_2_bits_idx),
    .io_resp_0_0_coh_state(metaArray_io_resp_0_0_coh_state),
    .io_resp_0_1_coh_state(metaArray_io_resp_0_1_coh_state),
    .io_resp_0_2_coh_state(metaArray_io_resp_0_2_coh_state),
    .io_resp_0_3_coh_state(metaArray_io_resp_0_3_coh_state),
    .io_resp_0_4_coh_state(metaArray_io_resp_0_4_coh_state),
    .io_resp_0_5_coh_state(metaArray_io_resp_0_5_coh_state),
    .io_resp_0_6_coh_state(metaArray_io_resp_0_6_coh_state),
    .io_resp_0_7_coh_state(metaArray_io_resp_0_7_coh_state),
    .io_resp_1_0_coh_state(metaArray_io_resp_1_0_coh_state),
    .io_resp_1_1_coh_state(metaArray_io_resp_1_1_coh_state),
    .io_resp_1_2_coh_state(metaArray_io_resp_1_2_coh_state),
    .io_resp_1_3_coh_state(metaArray_io_resp_1_3_coh_state),
    .io_resp_1_4_coh_state(metaArray_io_resp_1_4_coh_state),
    .io_resp_1_5_coh_state(metaArray_io_resp_1_5_coh_state),
    .io_resp_1_6_coh_state(metaArray_io_resp_1_6_coh_state),
    .io_resp_1_7_coh_state(metaArray_io_resp_1_7_coh_state),
    .io_resp_2_0_coh_state(metaArray_io_resp_2_0_coh_state),
    .io_resp_2_1_coh_state(metaArray_io_resp_2_1_coh_state),
    .io_resp_2_2_coh_state(metaArray_io_resp_2_2_coh_state),
    .io_resp_2_3_coh_state(metaArray_io_resp_2_3_coh_state),
    .io_resp_2_4_coh_state(metaArray_io_resp_2_4_coh_state),
    .io_resp_2_5_coh_state(metaArray_io_resp_2_5_coh_state),
    .io_resp_2_6_coh_state(metaArray_io_resp_2_6_coh_state),
    .io_resp_2_7_coh_state(metaArray_io_resp_2_7_coh_state),
    .io_write_0_valid(metaArray_io_write_0_valid),
    .io_write_0_bits_idx(metaArray_io_write_0_bits_idx),
    .io_write_0_bits_way_en(metaArray_io_write_0_bits_way_en),
    .io_write_0_bits_meta_coh_state(metaArray_io_write_0_bits_meta_coh_state),
    .io_write_1_valid(metaArray_io_write_1_valid),
    .io_write_1_bits_idx(metaArray_io_write_1_bits_idx),
    .io_write_1_bits_way_en(metaArray_io_write_1_bits_way_en),
    .io_write_1_bits_meta_coh_state(metaArray_io_write_1_bits_meta_coh_state)
  );
  L1FlagMetaArray errorArray ( // @[DCacheWrapper.scala 813:26]
    .clock(errorArray_clock),
    .reset(errorArray_reset),
    .io_read_0_valid(errorArray_io_read_0_valid),
    .io_read_0_bits_idx(errorArray_io_read_0_bits_idx),
    .io_read_1_valid(errorArray_io_read_1_valid),
    .io_read_1_bits_idx(errorArray_io_read_1_bits_idx),
    .io_read_2_valid(errorArray_io_read_2_valid),
    .io_read_2_bits_idx(errorArray_io_read_2_bits_idx),
    .io_resp_0_0(errorArray_io_resp_0_0),
    .io_resp_0_1(errorArray_io_resp_0_1),
    .io_resp_0_2(errorArray_io_resp_0_2),
    .io_resp_0_3(errorArray_io_resp_0_3),
    .io_resp_0_4(errorArray_io_resp_0_4),
    .io_resp_0_5(errorArray_io_resp_0_5),
    .io_resp_0_6(errorArray_io_resp_0_6),
    .io_resp_0_7(errorArray_io_resp_0_7),
    .io_resp_1_0(errorArray_io_resp_1_0),
    .io_resp_1_1(errorArray_io_resp_1_1),
    .io_resp_1_2(errorArray_io_resp_1_2),
    .io_resp_1_3(errorArray_io_resp_1_3),
    .io_resp_1_4(errorArray_io_resp_1_4),
    .io_resp_1_5(errorArray_io_resp_1_5),
    .io_resp_1_6(errorArray_io_resp_1_6),
    .io_resp_1_7(errorArray_io_resp_1_7),
    .io_resp_2_0(errorArray_io_resp_2_0),
    .io_resp_2_1(errorArray_io_resp_2_1),
    .io_resp_2_2(errorArray_io_resp_2_2),
    .io_resp_2_3(errorArray_io_resp_2_3),
    .io_resp_2_4(errorArray_io_resp_2_4),
    .io_resp_2_5(errorArray_io_resp_2_5),
    .io_resp_2_6(errorArray_io_resp_2_6),
    .io_resp_2_7(errorArray_io_resp_2_7),
    .io_write_0_valid(errorArray_io_write_0_valid),
    .io_write_0_bits_idx(errorArray_io_write_0_bits_idx),
    .io_write_0_bits_way_en(errorArray_io_write_0_bits_way_en),
    .io_write_0_bits_flag(errorArray_io_write_0_bits_flag),
    .io_write_1_valid(errorArray_io_write_1_valid),
    .io_write_1_bits_idx(errorArray_io_write_1_bits_idx),
    .io_write_1_bits_way_en(errorArray_io_write_1_bits_way_en),
    .io_write_1_bits_flag(errorArray_io_write_1_bits_flag)
  );
  DuplicatedTagArray tagArray ( // @[DCacheWrapper.scala 816:24]
    .clock(tagArray_clock),
    .reset(tagArray_reset),
    .io_read_0_valid(tagArray_io_read_0_valid),
    .io_read_0_bits_idx(tagArray_io_read_0_bits_idx),
    .io_read_1_valid(tagArray_io_read_1_valid),
    .io_read_1_bits_idx(tagArray_io_read_1_bits_idx),
    .io_read_2_ready(tagArray_io_read_2_ready),
    .io_read_2_valid(tagArray_io_read_2_valid),
    .io_read_2_bits_idx(tagArray_io_read_2_bits_idx),
    .io_resp_0_0(tagArray_io_resp_0_0),
    .io_resp_0_1(tagArray_io_resp_0_1),
    .io_resp_0_2(tagArray_io_resp_0_2),
    .io_resp_0_3(tagArray_io_resp_0_3),
    .io_resp_0_4(tagArray_io_resp_0_4),
    .io_resp_0_5(tagArray_io_resp_0_5),
    .io_resp_0_6(tagArray_io_resp_0_6),
    .io_resp_0_7(tagArray_io_resp_0_7),
    .io_resp_1_0(tagArray_io_resp_1_0),
    .io_resp_1_1(tagArray_io_resp_1_1),
    .io_resp_1_2(tagArray_io_resp_1_2),
    .io_resp_1_3(tagArray_io_resp_1_3),
    .io_resp_1_4(tagArray_io_resp_1_4),
    .io_resp_1_5(tagArray_io_resp_1_5),
    .io_resp_1_6(tagArray_io_resp_1_6),
    .io_resp_1_7(tagArray_io_resp_1_7),
    .io_resp_2_0(tagArray_io_resp_2_0),
    .io_resp_2_1(tagArray_io_resp_2_1),
    .io_resp_2_2(tagArray_io_resp_2_2),
    .io_resp_2_3(tagArray_io_resp_2_3),
    .io_resp_2_4(tagArray_io_resp_2_4),
    .io_resp_2_5(tagArray_io_resp_2_5),
    .io_resp_2_6(tagArray_io_resp_2_6),
    .io_resp_2_7(tagArray_io_resp_2_7),
    .io_write_valid(tagArray_io_write_valid),
    .io_write_bits_idx(tagArray_io_write_bits_idx),
    .io_write_bits_way_en(tagArray_io_write_bits_way_en),
    .io_write_bits_tag(tagArray_io_write_bits_tag),
    .io_cacheOp_req_valid(tagArray_io_cacheOp_req_valid),
    .io_cacheOp_req_bits_wayNum(tagArray_io_cacheOp_req_bits_wayNum),
    .io_cacheOp_req_bits_index(tagArray_io_cacheOp_req_bits_index),
    .io_cacheOp_req_bits_write_tag_low(tagArray_io_cacheOp_req_bits_write_tag_low),
    .io_cacheOp_req_bits_write_tag_ecc(tagArray_io_cacheOp_req_bits_write_tag_ecc),
    .io_cacheOp_resp_valid(tagArray_io_cacheOp_resp_valid),
    .io_cacheOp_resp_bits_read_tag_low(tagArray_io_cacheOp_resp_bits_read_tag_low),
    .io_cacheOp_resp_bits_read_tag_ecc(tagArray_io_cacheOp_resp_bits_read_tag_ecc),
    .io_cacheOp_req_dup_0_valid(tagArray_io_cacheOp_req_dup_0_valid),
    .io_cacheOp_req_dup_1_valid(tagArray_io_cacheOp_req_dup_1_valid),
    .io_cacheOp_req_dup_2_valid(tagArray_io_cacheOp_req_dup_2_valid),
    .io_cacheOp_req_dup_3_valid(tagArray_io_cacheOp_req_dup_3_valid),
    .io_cacheOp_req_dup_4_valid(tagArray_io_cacheOp_req_dup_4_valid),
    .io_cacheOp_req_dup_5_valid(tagArray_io_cacheOp_req_dup_5_valid),
    .io_cacheOp_req_dup_6_valid(tagArray_io_cacheOp_req_dup_6_valid),
    .io_cacheOp_req_dup_7_valid(tagArray_io_cacheOp_req_dup_7_valid),
    .io_cacheOp_req_dup_8_valid(tagArray_io_cacheOp_req_dup_8_valid),
    .io_cacheOp_req_dup_9_valid(tagArray_io_cacheOp_req_dup_9_valid),
    .io_cacheOp_req_dup_10_valid(tagArray_io_cacheOp_req_dup_10_valid),
    .io_cacheOp_req_dup_11_valid(tagArray_io_cacheOp_req_dup_11_valid),
    .io_cacheOp_req_bits_opCode_dup_0(tagArray_io_cacheOp_req_bits_opCode_dup_0),
    .io_cacheOp_req_bits_opCode_dup_1(tagArray_io_cacheOp_req_bits_opCode_dup_1),
    .io_cacheOp_req_bits_opCode_dup_2(tagArray_io_cacheOp_req_bits_opCode_dup_2),
    .io_cacheOp_req_bits_opCode_dup_3(tagArray_io_cacheOp_req_bits_opCode_dup_3),
    .io_cacheOp_req_bits_opCode_dup_4(tagArray_io_cacheOp_req_bits_opCode_dup_4),
    .io_cacheOp_req_bits_opCode_dup_5(tagArray_io_cacheOp_req_bits_opCode_dup_5),
    .io_cacheOp_req_bits_opCode_dup_6(tagArray_io_cacheOp_req_bits_opCode_dup_6),
    .io_cacheOp_req_bits_opCode_dup_7(tagArray_io_cacheOp_req_bits_opCode_dup_7),
    .io_cacheOp_req_bits_opCode_dup_8(tagArray_io_cacheOp_req_bits_opCode_dup_8),
    .io_cacheOp_req_bits_opCode_dup_9(tagArray_io_cacheOp_req_bits_opCode_dup_9),
    .io_cacheOp_req_bits_opCode_dup_10(tagArray_io_cacheOp_req_bits_opCode_dup_10),
    .io_cacheOp_req_bits_opCode_dup_11(tagArray_io_cacheOp_req_bits_opCode_dup_11)
  );
  LoadPipe ldu_0 ( // @[DCacheWrapper.scala 825:58]
    .clock(ldu_0_clock),
    .reset(ldu_0_reset),
    .io_lsu_req_ready(ldu_0_io_lsu_req_ready),
    .io_lsu_req_valid(ldu_0_io_lsu_req_valid),
    .io_lsu_req_bits_cmd(ldu_0_io_lsu_req_bits_cmd),
    .io_lsu_req_bits_vaddr(ldu_0_io_lsu_req_bits_vaddr),
    .io_lsu_req_bits_instrtype(ldu_0_io_lsu_req_bits_instrtype),
    .io_lsu_resp_valid(ldu_0_io_lsu_resp_valid),
    .io_lsu_resp_bits_data_delayed(ldu_0_io_lsu_resp_bits_data_delayed),
    .io_lsu_resp_bits_miss(ldu_0_io_lsu_resp_bits_miss),
    .io_lsu_resp_bits_tag_error(ldu_0_io_lsu_resp_bits_tag_error),
    .io_lsu_resp_bits_mshr_id(ldu_0_io_lsu_resp_bits_mshr_id),
    .io_lsu_resp_bits_handled(ldu_0_io_lsu_resp_bits_handled),
    .io_lsu_resp_bits_error_delayed(ldu_0_io_lsu_resp_bits_error_delayed),
    .io_lsu_s1_kill(ldu_0_io_lsu_s1_kill),
    .io_lsu_s2_kill(ldu_0_io_lsu_s2_kill),
    .io_lsu_s1_paddr_dup_lsu(ldu_0_io_lsu_s1_paddr_dup_lsu),
    .io_lsu_s1_paddr_dup_dcache(ldu_0_io_lsu_s1_paddr_dup_dcache),
    .io_lsu_s1_disable_fast_wakeup(ldu_0_io_lsu_s1_disable_fast_wakeup),
    .io_lsu_s2_bank_conflict(ldu_0_io_lsu_s2_bank_conflict),
    .io_lsu_s2_mq_nack(ldu_0_io_lsu_s2_mq_nack),
    .io_meta_read_valid(ldu_0_io_meta_read_valid),
    .io_meta_read_bits_idx(ldu_0_io_meta_read_bits_idx),
    .io_meta_resp_0_coh_state(ldu_0_io_meta_resp_0_coh_state),
    .io_meta_resp_1_coh_state(ldu_0_io_meta_resp_1_coh_state),
    .io_meta_resp_2_coh_state(ldu_0_io_meta_resp_2_coh_state),
    .io_meta_resp_3_coh_state(ldu_0_io_meta_resp_3_coh_state),
    .io_meta_resp_4_coh_state(ldu_0_io_meta_resp_4_coh_state),
    .io_meta_resp_5_coh_state(ldu_0_io_meta_resp_5_coh_state),
    .io_meta_resp_6_coh_state(ldu_0_io_meta_resp_6_coh_state),
    .io_meta_resp_7_coh_state(ldu_0_io_meta_resp_7_coh_state),
    .io_extra_meta_resp_0_error(ldu_0_io_extra_meta_resp_0_error),
    .io_extra_meta_resp_1_error(ldu_0_io_extra_meta_resp_1_error),
    .io_extra_meta_resp_2_error(ldu_0_io_extra_meta_resp_2_error),
    .io_extra_meta_resp_3_error(ldu_0_io_extra_meta_resp_3_error),
    .io_extra_meta_resp_4_error(ldu_0_io_extra_meta_resp_4_error),
    .io_extra_meta_resp_5_error(ldu_0_io_extra_meta_resp_5_error),
    .io_extra_meta_resp_6_error(ldu_0_io_extra_meta_resp_6_error),
    .io_extra_meta_resp_7_error(ldu_0_io_extra_meta_resp_7_error),
    .io_tag_read_ready(ldu_0_io_tag_read_ready),
    .io_tag_read_valid(ldu_0_io_tag_read_valid),
    .io_tag_read_bits_idx(ldu_0_io_tag_read_bits_idx),
    .io_tag_resp_0(ldu_0_io_tag_resp_0),
    .io_tag_resp_1(ldu_0_io_tag_resp_1),
    .io_tag_resp_2(ldu_0_io_tag_resp_2),
    .io_tag_resp_3(ldu_0_io_tag_resp_3),
    .io_tag_resp_4(ldu_0_io_tag_resp_4),
    .io_tag_resp_5(ldu_0_io_tag_resp_5),
    .io_tag_resp_6(ldu_0_io_tag_resp_6),
    .io_tag_resp_7(ldu_0_io_tag_resp_7),
    .io_banked_data_read_ready(ldu_0_io_banked_data_read_ready),
    .io_banked_data_read_valid(ldu_0_io_banked_data_read_valid),
    .io_banked_data_read_bits_way_en(ldu_0_io_banked_data_read_bits_way_en),
    .io_banked_data_read_bits_addr(ldu_0_io_banked_data_read_bits_addr),
    .io_banked_data_read_bits_bankMask(ldu_0_io_banked_data_read_bits_bankMask),
    .io_banked_data_resp_0_raw_data(ldu_0_io_banked_data_resp_0_raw_data),
    .io_read_error_delayed_0(ldu_0_io_read_error_delayed_0),
    .io_bank_conflict_slow(ldu_0_io_bank_conflict_slow),
    .io_miss_req_ready(ldu_0_io_miss_req_ready),
    .io_miss_req_valid(ldu_0_io_miss_req_valid),
    .io_miss_req_bits_source(ldu_0_io_miss_req_bits_source),
    .io_miss_req_bits_cmd(ldu_0_io_miss_req_bits_cmd),
    .io_miss_req_bits_addr(ldu_0_io_miss_req_bits_addr),
    .io_miss_req_bits_vaddr(ldu_0_io_miss_req_bits_vaddr),
    .io_miss_req_bits_way_en(ldu_0_io_miss_req_bits_way_en),
    .io_miss_req_bits_req_coh_state(ldu_0_io_miss_req_bits_req_coh_state),
    .io_miss_req_bits_replace_coh_state(ldu_0_io_miss_req_bits_replace_coh_state),
    .io_miss_req_bits_replace_tag(ldu_0_io_miss_req_bits_replace_tag),
    .io_miss_req_bits_cancel(ldu_0_io_miss_req_bits_cancel),
    .io_miss_resp_id(ldu_0_io_miss_resp_id),
    .io_miss_resp_handled(ldu_0_io_miss_resp_handled),
    .io_miss_resp_merged(ldu_0_io_miss_resp_merged),
    .io_miss_resp_repl_way_en(ldu_0_io_miss_resp_repl_way_en),
    .io_replace_access_valid(ldu_0_io_replace_access_valid),
    .io_replace_access_bits_set(ldu_0_io_replace_access_bits_set),
    .io_replace_access_bits_way(ldu_0_io_replace_access_bits_way),
    .io_replace_way_set_bits(ldu_0_io_replace_way_set_bits),
    .io_replace_way_way(ldu_0_io_replace_way_way),
    .io_disable_ld_fast_wakeup(ldu_0_io_disable_ld_fast_wakeup),
    .io_error_source_tag(ldu_0_io_error_source_tag),
    .io_error_source_data(ldu_0_io_error_source_data),
    .io_error_source_l2(ldu_0_io_error_source_l2),
    .io_error_paddr(ldu_0_io_error_paddr),
    .io_error_report_to_beu(ldu_0_io_error_report_to_beu),
    .io_error_valid(ldu_0_io_error_valid),
    .io_mq_enq_cancel(ldu_0_io_mq_enq_cancel),
    .io_perf_0_value(ldu_0_io_perf_0_value)
  );
  LoadPipe ldu_1 ( // @[DCacheWrapper.scala 825:58]
    .clock(ldu_1_clock),
    .reset(ldu_1_reset),
    .io_lsu_req_ready(ldu_1_io_lsu_req_ready),
    .io_lsu_req_valid(ldu_1_io_lsu_req_valid),
    .io_lsu_req_bits_cmd(ldu_1_io_lsu_req_bits_cmd),
    .io_lsu_req_bits_vaddr(ldu_1_io_lsu_req_bits_vaddr),
    .io_lsu_req_bits_instrtype(ldu_1_io_lsu_req_bits_instrtype),
    .io_lsu_resp_valid(ldu_1_io_lsu_resp_valid),
    .io_lsu_resp_bits_data_delayed(ldu_1_io_lsu_resp_bits_data_delayed),
    .io_lsu_resp_bits_miss(ldu_1_io_lsu_resp_bits_miss),
    .io_lsu_resp_bits_tag_error(ldu_1_io_lsu_resp_bits_tag_error),
    .io_lsu_resp_bits_mshr_id(ldu_1_io_lsu_resp_bits_mshr_id),
    .io_lsu_resp_bits_handled(ldu_1_io_lsu_resp_bits_handled),
    .io_lsu_resp_bits_error_delayed(ldu_1_io_lsu_resp_bits_error_delayed),
    .io_lsu_s1_kill(ldu_1_io_lsu_s1_kill),
    .io_lsu_s2_kill(ldu_1_io_lsu_s2_kill),
    .io_lsu_s1_paddr_dup_lsu(ldu_1_io_lsu_s1_paddr_dup_lsu),
    .io_lsu_s1_paddr_dup_dcache(ldu_1_io_lsu_s1_paddr_dup_dcache),
    .io_lsu_s1_disable_fast_wakeup(ldu_1_io_lsu_s1_disable_fast_wakeup),
    .io_lsu_s2_bank_conflict(ldu_1_io_lsu_s2_bank_conflict),
    .io_lsu_s2_mq_nack(ldu_1_io_lsu_s2_mq_nack),
    .io_meta_read_valid(ldu_1_io_meta_read_valid),
    .io_meta_read_bits_idx(ldu_1_io_meta_read_bits_idx),
    .io_meta_resp_0_coh_state(ldu_1_io_meta_resp_0_coh_state),
    .io_meta_resp_1_coh_state(ldu_1_io_meta_resp_1_coh_state),
    .io_meta_resp_2_coh_state(ldu_1_io_meta_resp_2_coh_state),
    .io_meta_resp_3_coh_state(ldu_1_io_meta_resp_3_coh_state),
    .io_meta_resp_4_coh_state(ldu_1_io_meta_resp_4_coh_state),
    .io_meta_resp_5_coh_state(ldu_1_io_meta_resp_5_coh_state),
    .io_meta_resp_6_coh_state(ldu_1_io_meta_resp_6_coh_state),
    .io_meta_resp_7_coh_state(ldu_1_io_meta_resp_7_coh_state),
    .io_extra_meta_resp_0_error(ldu_1_io_extra_meta_resp_0_error),
    .io_extra_meta_resp_1_error(ldu_1_io_extra_meta_resp_1_error),
    .io_extra_meta_resp_2_error(ldu_1_io_extra_meta_resp_2_error),
    .io_extra_meta_resp_3_error(ldu_1_io_extra_meta_resp_3_error),
    .io_extra_meta_resp_4_error(ldu_1_io_extra_meta_resp_4_error),
    .io_extra_meta_resp_5_error(ldu_1_io_extra_meta_resp_5_error),
    .io_extra_meta_resp_6_error(ldu_1_io_extra_meta_resp_6_error),
    .io_extra_meta_resp_7_error(ldu_1_io_extra_meta_resp_7_error),
    .io_tag_read_ready(ldu_1_io_tag_read_ready),
    .io_tag_read_valid(ldu_1_io_tag_read_valid),
    .io_tag_read_bits_idx(ldu_1_io_tag_read_bits_idx),
    .io_tag_resp_0(ldu_1_io_tag_resp_0),
    .io_tag_resp_1(ldu_1_io_tag_resp_1),
    .io_tag_resp_2(ldu_1_io_tag_resp_2),
    .io_tag_resp_3(ldu_1_io_tag_resp_3),
    .io_tag_resp_4(ldu_1_io_tag_resp_4),
    .io_tag_resp_5(ldu_1_io_tag_resp_5),
    .io_tag_resp_6(ldu_1_io_tag_resp_6),
    .io_tag_resp_7(ldu_1_io_tag_resp_7),
    .io_banked_data_read_ready(ldu_1_io_banked_data_read_ready),
    .io_banked_data_read_valid(ldu_1_io_banked_data_read_valid),
    .io_banked_data_read_bits_way_en(ldu_1_io_banked_data_read_bits_way_en),
    .io_banked_data_read_bits_addr(ldu_1_io_banked_data_read_bits_addr),
    .io_banked_data_read_bits_bankMask(ldu_1_io_banked_data_read_bits_bankMask),
    .io_banked_data_resp_0_raw_data(ldu_1_io_banked_data_resp_0_raw_data),
    .io_read_error_delayed_0(ldu_1_io_read_error_delayed_0),
    .io_bank_conflict_slow(ldu_1_io_bank_conflict_slow),
    .io_miss_req_ready(ldu_1_io_miss_req_ready),
    .io_miss_req_valid(ldu_1_io_miss_req_valid),
    .io_miss_req_bits_source(ldu_1_io_miss_req_bits_source),
    .io_miss_req_bits_cmd(ldu_1_io_miss_req_bits_cmd),
    .io_miss_req_bits_addr(ldu_1_io_miss_req_bits_addr),
    .io_miss_req_bits_vaddr(ldu_1_io_miss_req_bits_vaddr),
    .io_miss_req_bits_way_en(ldu_1_io_miss_req_bits_way_en),
    .io_miss_req_bits_req_coh_state(ldu_1_io_miss_req_bits_req_coh_state),
    .io_miss_req_bits_replace_coh_state(ldu_1_io_miss_req_bits_replace_coh_state),
    .io_miss_req_bits_replace_tag(ldu_1_io_miss_req_bits_replace_tag),
    .io_miss_req_bits_cancel(ldu_1_io_miss_req_bits_cancel),
    .io_miss_resp_id(ldu_1_io_miss_resp_id),
    .io_miss_resp_handled(ldu_1_io_miss_resp_handled),
    .io_miss_resp_merged(ldu_1_io_miss_resp_merged),
    .io_miss_resp_repl_way_en(ldu_1_io_miss_resp_repl_way_en),
    .io_replace_access_valid(ldu_1_io_replace_access_valid),
    .io_replace_access_bits_set(ldu_1_io_replace_access_bits_set),
    .io_replace_access_bits_way(ldu_1_io_replace_access_bits_way),
    .io_replace_way_set_bits(ldu_1_io_replace_way_set_bits),
    .io_replace_way_way(ldu_1_io_replace_way_way),
    .io_disable_ld_fast_wakeup(ldu_1_io_disable_ld_fast_wakeup),
    .io_error_source_tag(ldu_1_io_error_source_tag),
    .io_error_source_data(ldu_1_io_error_source_data),
    .io_error_source_l2(ldu_1_io_error_source_l2),
    .io_error_paddr(ldu_1_io_error_paddr),
    .io_error_report_to_beu(ldu_1_io_error_report_to_beu),
    .io_error_valid(ldu_1_io_error_valid),
    .io_mq_enq_cancel(ldu_1_io_mq_enq_cancel),
    .io_perf_0_value(ldu_1_io_perf_0_value)
  );
  MainPipe mainPipe ( // @[DCacheWrapper.scala 827:28]
    .clock(mainPipe_clock),
    .reset(mainPipe_reset),
    .io_probe_req_ready(mainPipe_io_probe_req_ready),
    .io_probe_req_valid(mainPipe_io_probe_req_valid),
    .io_probe_req_bits_miss(mainPipe_io_probe_req_bits_miss),
    .io_probe_req_bits_miss_id(mainPipe_io_probe_req_bits_miss_id),
    .io_probe_req_bits_miss_param(mainPipe_io_probe_req_bits_miss_param),
    .io_probe_req_bits_miss_dirty(mainPipe_io_probe_req_bits_miss_dirty),
    .io_probe_req_bits_miss_way_en(mainPipe_io_probe_req_bits_miss_way_en),
    .io_probe_req_bits_probe(mainPipe_io_probe_req_bits_probe),
    .io_probe_req_bits_probe_param(mainPipe_io_probe_req_bits_probe_param),
    .io_probe_req_bits_probe_need_data(mainPipe_io_probe_req_bits_probe_need_data),
    .io_probe_req_bits_source(mainPipe_io_probe_req_bits_source),
    .io_probe_req_bits_cmd(mainPipe_io_probe_req_bits_cmd),
    .io_probe_req_bits_vaddr(mainPipe_io_probe_req_bits_vaddr),
    .io_probe_req_bits_addr(mainPipe_io_probe_req_bits_addr),
    .io_probe_req_bits_store_data(mainPipe_io_probe_req_bits_store_data),
    .io_probe_req_bits_store_mask(mainPipe_io_probe_req_bits_store_mask),
    .io_probe_req_bits_word_idx(mainPipe_io_probe_req_bits_word_idx),
    .io_probe_req_bits_amo_data(mainPipe_io_probe_req_bits_amo_data),
    .io_probe_req_bits_amo_mask(mainPipe_io_probe_req_bits_amo_mask),
    .io_probe_req_bits_error(mainPipe_io_probe_req_bits_error),
    .io_probe_req_bits_replace(mainPipe_io_probe_req_bits_replace),
    .io_probe_req_bits_replace_way_en(mainPipe_io_probe_req_bits_replace_way_en),
    .io_probe_req_bits_id(mainPipe_io_probe_req_bits_id),
    .io_miss_req_ready(mainPipe_io_miss_req_ready),
    .io_miss_req_valid(mainPipe_io_miss_req_valid),
    .io_miss_req_bits_source(mainPipe_io_miss_req_bits_source),
    .io_miss_req_bits_cmd(mainPipe_io_miss_req_bits_cmd),
    .io_miss_req_bits_addr(mainPipe_io_miss_req_bits_addr),
    .io_miss_req_bits_vaddr(mainPipe_io_miss_req_bits_vaddr),
    .io_miss_req_bits_way_en(mainPipe_io_miss_req_bits_way_en),
    .io_miss_req_bits_word_idx(mainPipe_io_miss_req_bits_word_idx),
    .io_miss_req_bits_amo_data(mainPipe_io_miss_req_bits_amo_data),
    .io_miss_req_bits_amo_mask(mainPipe_io_miss_req_bits_amo_mask),
    .io_miss_req_bits_req_coh_state(mainPipe_io_miss_req_bits_req_coh_state),
    .io_miss_req_bits_replace_coh_state(mainPipe_io_miss_req_bits_replace_coh_state),
    .io_miss_req_bits_replace_tag(mainPipe_io_miss_req_bits_replace_tag),
    .io_miss_req_bits_id(mainPipe_io_miss_req_bits_id),
    .io_miss_req_bits_store_data(mainPipe_io_miss_req_bits_store_data),
    .io_miss_req_bits_store_mask(mainPipe_io_miss_req_bits_store_mask),
    .io_miss_resp_merged(mainPipe_io_miss_resp_merged),
    .io_miss_resp_repl_way_en(mainPipe_io_miss_resp_repl_way_en),
    .io_store_req_ready(mainPipe_io_store_req_ready),
    .io_store_req_valid(mainPipe_io_store_req_valid),
    .io_store_req_bits_vaddr(mainPipe_io_store_req_bits_vaddr),
    .io_store_req_bits_addr(mainPipe_io_store_req_bits_addr),
    .io_store_req_bits_data(mainPipe_io_store_req_bits_data),
    .io_store_req_bits_mask(mainPipe_io_store_req_bits_mask),
    .io_store_req_bits_id(mainPipe_io_store_req_bits_id),
    .io_store_replay_resp_valid(mainPipe_io_store_replay_resp_valid),
    .io_store_replay_resp_bits_id(mainPipe_io_store_replay_resp_bits_id),
    .io_store_hit_resp_valid(mainPipe_io_store_hit_resp_valid),
    .io_store_hit_resp_bits_id(mainPipe_io_store_hit_resp_bits_id),
    .io_release_update_valid(mainPipe_io_release_update_valid),
    .io_release_update_bits_addr(mainPipe_io_release_update_bits_addr),
    .io_release_update_bits_mask(mainPipe_io_release_update_bits_mask),
    .io_release_update_bits_data(mainPipe_io_release_update_bits_data),
    .io_atomic_req_ready(mainPipe_io_atomic_req_ready),
    .io_atomic_req_valid(mainPipe_io_atomic_req_valid),
    .io_atomic_req_bits_miss(mainPipe_io_atomic_req_bits_miss),
    .io_atomic_req_bits_miss_id(mainPipe_io_atomic_req_bits_miss_id),
    .io_atomic_req_bits_miss_param(mainPipe_io_atomic_req_bits_miss_param),
    .io_atomic_req_bits_miss_dirty(mainPipe_io_atomic_req_bits_miss_dirty),
    .io_atomic_req_bits_miss_way_en(mainPipe_io_atomic_req_bits_miss_way_en),
    .io_atomic_req_bits_probe(mainPipe_io_atomic_req_bits_probe),
    .io_atomic_req_bits_probe_param(mainPipe_io_atomic_req_bits_probe_param),
    .io_atomic_req_bits_probe_need_data(mainPipe_io_atomic_req_bits_probe_need_data),
    .io_atomic_req_bits_source(mainPipe_io_atomic_req_bits_source),
    .io_atomic_req_bits_cmd(mainPipe_io_atomic_req_bits_cmd),
    .io_atomic_req_bits_vaddr(mainPipe_io_atomic_req_bits_vaddr),
    .io_atomic_req_bits_addr(mainPipe_io_atomic_req_bits_addr),
    .io_atomic_req_bits_store_data(mainPipe_io_atomic_req_bits_store_data),
    .io_atomic_req_bits_store_mask(mainPipe_io_atomic_req_bits_store_mask),
    .io_atomic_req_bits_word_idx(mainPipe_io_atomic_req_bits_word_idx),
    .io_atomic_req_bits_amo_data(mainPipe_io_atomic_req_bits_amo_data),
    .io_atomic_req_bits_amo_mask(mainPipe_io_atomic_req_bits_amo_mask),
    .io_atomic_req_bits_error(mainPipe_io_atomic_req_bits_error),
    .io_atomic_req_bits_replace(mainPipe_io_atomic_req_bits_replace),
    .io_atomic_req_bits_replace_way_en(mainPipe_io_atomic_req_bits_replace_way_en),
    .io_atomic_req_bits_id(mainPipe_io_atomic_req_bits_id),
    .io_atomic_resp_valid(mainPipe_io_atomic_resp_valid),
    .io_atomic_resp_bits_data(mainPipe_io_atomic_resp_bits_data),
    .io_atomic_resp_bits_miss(mainPipe_io_atomic_resp_bits_miss),
    .io_atomic_resp_bits_miss_id(mainPipe_io_atomic_resp_bits_miss_id),
    .io_atomic_resp_bits_replay(mainPipe_io_atomic_resp_bits_replay),
    .io_atomic_resp_bits_error(mainPipe_io_atomic_resp_bits_error),
    .io_atomic_resp_bits_ack_miss_queue(mainPipe_io_atomic_resp_bits_ack_miss_queue),
    .io_atomic_resp_bits_id(mainPipe_io_atomic_resp_bits_id),
    .io_replace_req_ready(mainPipe_io_replace_req_ready),
    .io_replace_req_valid(mainPipe_io_replace_req_valid),
    .io_replace_req_bits_miss(mainPipe_io_replace_req_bits_miss),
    .io_replace_req_bits_miss_id(mainPipe_io_replace_req_bits_miss_id),
    .io_replace_req_bits_miss_param(mainPipe_io_replace_req_bits_miss_param),
    .io_replace_req_bits_miss_dirty(mainPipe_io_replace_req_bits_miss_dirty),
    .io_replace_req_bits_miss_way_en(mainPipe_io_replace_req_bits_miss_way_en),
    .io_replace_req_bits_probe(mainPipe_io_replace_req_bits_probe),
    .io_replace_req_bits_probe_param(mainPipe_io_replace_req_bits_probe_param),
    .io_replace_req_bits_probe_need_data(mainPipe_io_replace_req_bits_probe_need_data),
    .io_replace_req_bits_source(mainPipe_io_replace_req_bits_source),
    .io_replace_req_bits_cmd(mainPipe_io_replace_req_bits_cmd),
    .io_replace_req_bits_vaddr(mainPipe_io_replace_req_bits_vaddr),
    .io_replace_req_bits_addr(mainPipe_io_replace_req_bits_addr),
    .io_replace_req_bits_store_data(mainPipe_io_replace_req_bits_store_data),
    .io_replace_req_bits_store_mask(mainPipe_io_replace_req_bits_store_mask),
    .io_replace_req_bits_word_idx(mainPipe_io_replace_req_bits_word_idx),
    .io_replace_req_bits_amo_data(mainPipe_io_replace_req_bits_amo_data),
    .io_replace_req_bits_amo_mask(mainPipe_io_replace_req_bits_amo_mask),
    .io_replace_req_bits_error(mainPipe_io_replace_req_bits_error),
    .io_replace_req_bits_replace(mainPipe_io_replace_req_bits_replace),
    .io_replace_req_bits_replace_way_en(mainPipe_io_replace_req_bits_replace_way_en),
    .io_replace_req_bits_id(mainPipe_io_replace_req_bits_id),
    .io_replace_resp_valid(mainPipe_io_replace_resp_valid),
    .io_replace_resp_bits(mainPipe_io_replace_resp_bits),
    .io_wb_ready(mainPipe_io_wb_ready),
    .io_wb_valid(mainPipe_io_wb_valid),
    .io_wb_bits_param(mainPipe_io_wb_bits_param),
    .io_wb_bits_voluntary(mainPipe_io_wb_bits_voluntary),
    .io_wb_bits_hasData(mainPipe_io_wb_bits_hasData),
    .io_wb_bits_delay_release(mainPipe_io_wb_bits_delay_release),
    .io_wb_bits_miss_id(mainPipe_io_wb_bits_miss_id),
    .io_wb_bits_addr(mainPipe_io_wb_bits_addr),
    .io_wb_bits_data(mainPipe_io_wb_bits_data),
    .io_wb_ready_dup_0(mainPipe_io_wb_ready_dup_0),
    .io_wb_ready_dup_1(mainPipe_io_wb_ready_dup_1),
    .io_wb_ready_dup_2(mainPipe_io_wb_ready_dup_2),
    .io_wb_ready_dup_3(mainPipe_io_wb_ready_dup_3),
    .io_wb_ready_dup_4(mainPipe_io_wb_ready_dup_4),
    .io_wb_ready_dup_5(mainPipe_io_wb_ready_dup_5),
    .io_wb_ready_dup_6(mainPipe_io_wb_ready_dup_6),
    .io_wb_ready_dup_7(mainPipe_io_wb_ready_dup_7),
    .io_wb_ready_dup_8(mainPipe_io_wb_ready_dup_8),
    .io_wb_ready_dup_9(mainPipe_io_wb_ready_dup_9),
    .io_wb_ready_dup_10(mainPipe_io_wb_ready_dup_10),
    .io_wb_ready_dup_11(mainPipe_io_wb_ready_dup_11),
    .io_probe_ttob_check_req_valid(mainPipe_io_probe_ttob_check_req_valid),
    .io_probe_ttob_check_req_bits_addr(mainPipe_io_probe_ttob_check_req_bits_addr),
    .io_probe_ttob_check_resp_bits_toN(mainPipe_io_probe_ttob_check_resp_bits_toN),
    .io_data_read_intend(mainPipe_io_data_read_intend),
    .io_data_readline_ready(mainPipe_io_data_readline_ready),
    .io_data_readline_valid(mainPipe_io_data_readline_valid),
    .io_data_readline_bits_way_en(mainPipe_io_data_readline_bits_way_en),
    .io_data_readline_bits_addr(mainPipe_io_data_readline_bits_addr),
    .io_data_resp_0_raw_data(mainPipe_io_data_resp_0_raw_data),
    .io_data_resp_1_raw_data(mainPipe_io_data_resp_1_raw_data),
    .io_data_resp_2_raw_data(mainPipe_io_data_resp_2_raw_data),
    .io_data_resp_3_raw_data(mainPipe_io_data_resp_3_raw_data),
    .io_data_resp_4_raw_data(mainPipe_io_data_resp_4_raw_data),
    .io_data_resp_5_raw_data(mainPipe_io_data_resp_5_raw_data),
    .io_data_resp_6_raw_data(mainPipe_io_data_resp_6_raw_data),
    .io_data_resp_7_raw_data(mainPipe_io_data_resp_7_raw_data),
    .io_readline_error_delayed(mainPipe_io_readline_error_delayed),
    .io_data_write_ready(mainPipe_io_data_write_ready),
    .io_data_write_valid(mainPipe_io_data_write_valid),
    .io_data_write_bits_wmask(mainPipe_io_data_write_bits_wmask),
    .io_data_write_bits_data_0(mainPipe_io_data_write_bits_data_0),
    .io_data_write_bits_data_1(mainPipe_io_data_write_bits_data_1),
    .io_data_write_bits_data_2(mainPipe_io_data_write_bits_data_2),
    .io_data_write_bits_data_3(mainPipe_io_data_write_bits_data_3),
    .io_data_write_bits_data_4(mainPipe_io_data_write_bits_data_4),
    .io_data_write_bits_data_5(mainPipe_io_data_write_bits_data_5),
    .io_data_write_bits_data_6(mainPipe_io_data_write_bits_data_6),
    .io_data_write_bits_data_7(mainPipe_io_data_write_bits_data_7),
    .io_data_write_dup_0_valid(mainPipe_io_data_write_dup_0_valid),
    .io_data_write_dup_0_bits_way_en(mainPipe_io_data_write_dup_0_bits_way_en),
    .io_data_write_dup_0_bits_addr(mainPipe_io_data_write_dup_0_bits_addr),
    .io_data_write_dup_1_valid(mainPipe_io_data_write_dup_1_valid),
    .io_data_write_dup_1_bits_way_en(mainPipe_io_data_write_dup_1_bits_way_en),
    .io_data_write_dup_1_bits_addr(mainPipe_io_data_write_dup_1_bits_addr),
    .io_data_write_dup_2_valid(mainPipe_io_data_write_dup_2_valid),
    .io_data_write_dup_2_bits_way_en(mainPipe_io_data_write_dup_2_bits_way_en),
    .io_data_write_dup_2_bits_addr(mainPipe_io_data_write_dup_2_bits_addr),
    .io_data_write_dup_3_valid(mainPipe_io_data_write_dup_3_valid),
    .io_data_write_dup_3_bits_way_en(mainPipe_io_data_write_dup_3_bits_way_en),
    .io_data_write_dup_3_bits_addr(mainPipe_io_data_write_dup_3_bits_addr),
    .io_data_write_dup_4_valid(mainPipe_io_data_write_dup_4_valid),
    .io_data_write_dup_4_bits_way_en(mainPipe_io_data_write_dup_4_bits_way_en),
    .io_data_write_dup_4_bits_addr(mainPipe_io_data_write_dup_4_bits_addr),
    .io_data_write_dup_5_valid(mainPipe_io_data_write_dup_5_valid),
    .io_data_write_dup_5_bits_way_en(mainPipe_io_data_write_dup_5_bits_way_en),
    .io_data_write_dup_5_bits_addr(mainPipe_io_data_write_dup_5_bits_addr),
    .io_data_write_dup_6_valid(mainPipe_io_data_write_dup_6_valid),
    .io_data_write_dup_6_bits_way_en(mainPipe_io_data_write_dup_6_bits_way_en),
    .io_data_write_dup_6_bits_addr(mainPipe_io_data_write_dup_6_bits_addr),
    .io_data_write_dup_7_valid(mainPipe_io_data_write_dup_7_valid),
    .io_data_write_dup_7_bits_way_en(mainPipe_io_data_write_dup_7_bits_way_en),
    .io_data_write_dup_7_bits_addr(mainPipe_io_data_write_dup_7_bits_addr),
    .io_data_write_ready_dup_0(mainPipe_io_data_write_ready_dup_0),
    .io_data_write_ready_dup_1(mainPipe_io_data_write_ready_dup_1),
    .io_data_write_ready_dup_2(mainPipe_io_data_write_ready_dup_2),
    .io_data_write_ready_dup_3(mainPipe_io_data_write_ready_dup_3),
    .io_data_write_ready_dup_4(mainPipe_io_data_write_ready_dup_4),
    .io_data_write_ready_dup_5(mainPipe_io_data_write_ready_dup_5),
    .io_data_write_ready_dup_6(mainPipe_io_data_write_ready_dup_6),
    .io_data_write_ready_dup_7(mainPipe_io_data_write_ready_dup_7),
    .io_data_write_ready_dup_8(mainPipe_io_data_write_ready_dup_8),
    .io_data_write_ready_dup_9(mainPipe_io_data_write_ready_dup_9),
    .io_data_write_ready_dup_10(mainPipe_io_data_write_ready_dup_10),
    .io_data_write_ready_dup_11(mainPipe_io_data_write_ready_dup_11),
    .io_meta_read_valid(mainPipe_io_meta_read_valid),
    .io_meta_read_bits_idx(mainPipe_io_meta_read_bits_idx),
    .io_meta_resp_0_coh_state(mainPipe_io_meta_resp_0_coh_state),
    .io_meta_resp_1_coh_state(mainPipe_io_meta_resp_1_coh_state),
    .io_meta_resp_2_coh_state(mainPipe_io_meta_resp_2_coh_state),
    .io_meta_resp_3_coh_state(mainPipe_io_meta_resp_3_coh_state),
    .io_meta_resp_4_coh_state(mainPipe_io_meta_resp_4_coh_state),
    .io_meta_resp_5_coh_state(mainPipe_io_meta_resp_5_coh_state),
    .io_meta_resp_6_coh_state(mainPipe_io_meta_resp_6_coh_state),
    .io_meta_resp_7_coh_state(mainPipe_io_meta_resp_7_coh_state),
    .io_meta_write_valid(mainPipe_io_meta_write_valid),
    .io_meta_write_bits_idx(mainPipe_io_meta_write_bits_idx),
    .io_meta_write_bits_way_en(mainPipe_io_meta_write_bits_way_en),
    .io_meta_write_bits_meta_coh_state(mainPipe_io_meta_write_bits_meta_coh_state),
    .io_extra_meta_resp_0_error(mainPipe_io_extra_meta_resp_0_error),
    .io_extra_meta_resp_1_error(mainPipe_io_extra_meta_resp_1_error),
    .io_extra_meta_resp_2_error(mainPipe_io_extra_meta_resp_2_error),
    .io_extra_meta_resp_3_error(mainPipe_io_extra_meta_resp_3_error),
    .io_extra_meta_resp_4_error(mainPipe_io_extra_meta_resp_4_error),
    .io_extra_meta_resp_5_error(mainPipe_io_extra_meta_resp_5_error),
    .io_extra_meta_resp_6_error(mainPipe_io_extra_meta_resp_6_error),
    .io_extra_meta_resp_7_error(mainPipe_io_extra_meta_resp_7_error),
    .io_error_flag_write_valid(mainPipe_io_error_flag_write_valid),
    .io_error_flag_write_bits_idx(mainPipe_io_error_flag_write_bits_idx),
    .io_error_flag_write_bits_way_en(mainPipe_io_error_flag_write_bits_way_en),
    .io_error_flag_write_bits_flag(mainPipe_io_error_flag_write_bits_flag),
    .io_tag_read_ready(mainPipe_io_tag_read_ready),
    .io_tag_read_valid(mainPipe_io_tag_read_valid),
    .io_tag_read_bits_idx(mainPipe_io_tag_read_bits_idx),
    .io_tag_resp_0(mainPipe_io_tag_resp_0),
    .io_tag_resp_1(mainPipe_io_tag_resp_1),
    .io_tag_resp_2(mainPipe_io_tag_resp_2),
    .io_tag_resp_3(mainPipe_io_tag_resp_3),
    .io_tag_resp_4(mainPipe_io_tag_resp_4),
    .io_tag_resp_5(mainPipe_io_tag_resp_5),
    .io_tag_resp_6(mainPipe_io_tag_resp_6),
    .io_tag_resp_7(mainPipe_io_tag_resp_7),
    .io_tag_write_ready(mainPipe_io_tag_write_ready),
    .io_tag_write_valid(mainPipe_io_tag_write_valid),
    .io_tag_write_bits_idx(mainPipe_io_tag_write_bits_idx),
    .io_tag_write_bits_way_en(mainPipe_io_tag_write_bits_way_en),
    .io_tag_write_bits_tag(mainPipe_io_tag_write_bits_tag),
    .io_tag_write_ready_dup_0(mainPipe_io_tag_write_ready_dup_0),
    .io_tag_write_ready_dup_1(mainPipe_io_tag_write_ready_dup_1),
    .io_tag_write_ready_dup_2(mainPipe_io_tag_write_ready_dup_2),
    .io_tag_write_ready_dup_3(mainPipe_io_tag_write_ready_dup_3),
    .io_tag_write_ready_dup_4(mainPipe_io_tag_write_ready_dup_4),
    .io_tag_write_ready_dup_5(mainPipe_io_tag_write_ready_dup_5),
    .io_tag_write_ready_dup_6(mainPipe_io_tag_write_ready_dup_6),
    .io_tag_write_ready_dup_7(mainPipe_io_tag_write_ready_dup_7),
    .io_tag_write_ready_dup_8(mainPipe_io_tag_write_ready_dup_8),
    .io_tag_write_ready_dup_9(mainPipe_io_tag_write_ready_dup_9),
    .io_tag_write_ready_dup_10(mainPipe_io_tag_write_ready_dup_10),
    .io_tag_write_ready_dup_11(mainPipe_io_tag_write_ready_dup_11),
    .io_tag_write_intend(mainPipe_io_tag_write_intend),
    .io_replace_access_valid(mainPipe_io_replace_access_valid),
    .io_replace_access_bits_set(mainPipe_io_replace_access_bits_set),
    .io_replace_access_bits_way(mainPipe_io_replace_access_bits_way),
    .io_replace_way_set_bits(mainPipe_io_replace_way_set_bits),
    .io_replace_way_way(mainPipe_io_replace_way_way),
    .io_status_s1_valid(mainPipe_io_status_s1_valid),
    .io_status_s1_bits_set(mainPipe_io_status_s1_bits_set),
    .io_status_s2_valid(mainPipe_io_status_s2_valid),
    .io_status_s2_bits_set(mainPipe_io_status_s2_bits_set),
    .io_status_s2_bits_way_en(mainPipe_io_status_s2_bits_way_en),
    .io_status_s3_valid(mainPipe_io_status_s3_valid),
    .io_status_s3_bits_set(mainPipe_io_status_s3_bits_set),
    .io_status_s3_bits_way_en(mainPipe_io_status_s3_bits_way_en),
    .io_status_dup_0_s1_valid(mainPipe_io_status_dup_0_s1_valid),
    .io_status_dup_0_s1_bits_set(mainPipe_io_status_dup_0_s1_bits_set),
    .io_status_dup_0_s1_bits_way_en(mainPipe_io_status_dup_0_s1_bits_way_en),
    .io_status_dup_0_s2_valid(mainPipe_io_status_dup_0_s2_valid),
    .io_status_dup_0_s2_bits_set(mainPipe_io_status_dup_0_s2_bits_set),
    .io_status_dup_0_s2_bits_way_en(mainPipe_io_status_dup_0_s2_bits_way_en),
    .io_status_dup_0_s3_valid(mainPipe_io_status_dup_0_s3_valid),
    .io_status_dup_0_s3_bits_set(mainPipe_io_status_dup_0_s3_bits_set),
    .io_status_dup_0_s3_bits_way_en(mainPipe_io_status_dup_0_s3_bits_way_en),
    .io_status_dup_1_s1_valid(mainPipe_io_status_dup_1_s1_valid),
    .io_status_dup_1_s1_bits_set(mainPipe_io_status_dup_1_s1_bits_set),
    .io_status_dup_1_s1_bits_way_en(mainPipe_io_status_dup_1_s1_bits_way_en),
    .io_status_dup_1_s2_valid(mainPipe_io_status_dup_1_s2_valid),
    .io_status_dup_1_s2_bits_set(mainPipe_io_status_dup_1_s2_bits_set),
    .io_status_dup_1_s2_bits_way_en(mainPipe_io_status_dup_1_s2_bits_way_en),
    .io_status_dup_1_s3_valid(mainPipe_io_status_dup_1_s3_valid),
    .io_status_dup_1_s3_bits_set(mainPipe_io_status_dup_1_s3_bits_set),
    .io_status_dup_1_s3_bits_way_en(mainPipe_io_status_dup_1_s3_bits_way_en),
    .io_status_dup_2_s1_valid(mainPipe_io_status_dup_2_s1_valid),
    .io_status_dup_2_s1_bits_set(mainPipe_io_status_dup_2_s1_bits_set),
    .io_status_dup_2_s1_bits_way_en(mainPipe_io_status_dup_2_s1_bits_way_en),
    .io_status_dup_2_s2_valid(mainPipe_io_status_dup_2_s2_valid),
    .io_status_dup_2_s2_bits_set(mainPipe_io_status_dup_2_s2_bits_set),
    .io_status_dup_2_s2_bits_way_en(mainPipe_io_status_dup_2_s2_bits_way_en),
    .io_status_dup_2_s3_valid(mainPipe_io_status_dup_2_s3_valid),
    .io_status_dup_2_s3_bits_set(mainPipe_io_status_dup_2_s3_bits_set),
    .io_status_dup_2_s3_bits_way_en(mainPipe_io_status_dup_2_s3_bits_way_en),
    .io_status_dup_3_s1_valid(mainPipe_io_status_dup_3_s1_valid),
    .io_status_dup_3_s1_bits_set(mainPipe_io_status_dup_3_s1_bits_set),
    .io_status_dup_3_s1_bits_way_en(mainPipe_io_status_dup_3_s1_bits_way_en),
    .io_status_dup_3_s2_valid(mainPipe_io_status_dup_3_s2_valid),
    .io_status_dup_3_s2_bits_set(mainPipe_io_status_dup_3_s2_bits_set),
    .io_status_dup_3_s2_bits_way_en(mainPipe_io_status_dup_3_s2_bits_way_en),
    .io_status_dup_3_s3_valid(mainPipe_io_status_dup_3_s3_valid),
    .io_status_dup_3_s3_bits_set(mainPipe_io_status_dup_3_s3_bits_set),
    .io_status_dup_3_s3_bits_way_en(mainPipe_io_status_dup_3_s3_bits_way_en),
    .io_status_dup_4_s1_valid(mainPipe_io_status_dup_4_s1_valid),
    .io_status_dup_4_s1_bits_set(mainPipe_io_status_dup_4_s1_bits_set),
    .io_status_dup_4_s1_bits_way_en(mainPipe_io_status_dup_4_s1_bits_way_en),
    .io_status_dup_4_s2_valid(mainPipe_io_status_dup_4_s2_valid),
    .io_status_dup_4_s2_bits_set(mainPipe_io_status_dup_4_s2_bits_set),
    .io_status_dup_4_s2_bits_way_en(mainPipe_io_status_dup_4_s2_bits_way_en),
    .io_status_dup_4_s3_valid(mainPipe_io_status_dup_4_s3_valid),
    .io_status_dup_4_s3_bits_set(mainPipe_io_status_dup_4_s3_bits_set),
    .io_status_dup_4_s3_bits_way_en(mainPipe_io_status_dup_4_s3_bits_way_en),
    .io_status_dup_5_s1_valid(mainPipe_io_status_dup_5_s1_valid),
    .io_status_dup_5_s1_bits_set(mainPipe_io_status_dup_5_s1_bits_set),
    .io_status_dup_5_s1_bits_way_en(mainPipe_io_status_dup_5_s1_bits_way_en),
    .io_status_dup_5_s2_valid(mainPipe_io_status_dup_5_s2_valid),
    .io_status_dup_5_s2_bits_set(mainPipe_io_status_dup_5_s2_bits_set),
    .io_status_dup_5_s2_bits_way_en(mainPipe_io_status_dup_5_s2_bits_way_en),
    .io_status_dup_5_s3_valid(mainPipe_io_status_dup_5_s3_valid),
    .io_status_dup_5_s3_bits_set(mainPipe_io_status_dup_5_s3_bits_set),
    .io_status_dup_5_s3_bits_way_en(mainPipe_io_status_dup_5_s3_bits_way_en),
    .io_status_dup_6_s1_valid(mainPipe_io_status_dup_6_s1_valid),
    .io_status_dup_6_s1_bits_set(mainPipe_io_status_dup_6_s1_bits_set),
    .io_status_dup_6_s1_bits_way_en(mainPipe_io_status_dup_6_s1_bits_way_en),
    .io_status_dup_6_s2_valid(mainPipe_io_status_dup_6_s2_valid),
    .io_status_dup_6_s2_bits_set(mainPipe_io_status_dup_6_s2_bits_set),
    .io_status_dup_6_s2_bits_way_en(mainPipe_io_status_dup_6_s2_bits_way_en),
    .io_status_dup_6_s3_valid(mainPipe_io_status_dup_6_s3_valid),
    .io_status_dup_6_s3_bits_set(mainPipe_io_status_dup_6_s3_bits_set),
    .io_status_dup_6_s3_bits_way_en(mainPipe_io_status_dup_6_s3_bits_way_en),
    .io_status_dup_7_s1_valid(mainPipe_io_status_dup_7_s1_valid),
    .io_status_dup_7_s1_bits_set(mainPipe_io_status_dup_7_s1_bits_set),
    .io_status_dup_7_s1_bits_way_en(mainPipe_io_status_dup_7_s1_bits_way_en),
    .io_status_dup_7_s2_valid(mainPipe_io_status_dup_7_s2_valid),
    .io_status_dup_7_s2_bits_set(mainPipe_io_status_dup_7_s2_bits_set),
    .io_status_dup_7_s2_bits_way_en(mainPipe_io_status_dup_7_s2_bits_way_en),
    .io_status_dup_7_s3_valid(mainPipe_io_status_dup_7_s3_valid),
    .io_status_dup_7_s3_bits_set(mainPipe_io_status_dup_7_s3_bits_set),
    .io_status_dup_7_s3_bits_way_en(mainPipe_io_status_dup_7_s3_bits_way_en),
    .io_status_dup_8_s1_valid(mainPipe_io_status_dup_8_s1_valid),
    .io_status_dup_8_s1_bits_set(mainPipe_io_status_dup_8_s1_bits_set),
    .io_status_dup_8_s1_bits_way_en(mainPipe_io_status_dup_8_s1_bits_way_en),
    .io_status_dup_8_s2_valid(mainPipe_io_status_dup_8_s2_valid),
    .io_status_dup_8_s2_bits_set(mainPipe_io_status_dup_8_s2_bits_set),
    .io_status_dup_8_s2_bits_way_en(mainPipe_io_status_dup_8_s2_bits_way_en),
    .io_status_dup_8_s3_valid(mainPipe_io_status_dup_8_s3_valid),
    .io_status_dup_8_s3_bits_set(mainPipe_io_status_dup_8_s3_bits_set),
    .io_status_dup_8_s3_bits_way_en(mainPipe_io_status_dup_8_s3_bits_way_en),
    .io_status_dup_9_s1_valid(mainPipe_io_status_dup_9_s1_valid),
    .io_status_dup_9_s1_bits_set(mainPipe_io_status_dup_9_s1_bits_set),
    .io_status_dup_9_s1_bits_way_en(mainPipe_io_status_dup_9_s1_bits_way_en),
    .io_status_dup_9_s2_valid(mainPipe_io_status_dup_9_s2_valid),
    .io_status_dup_9_s2_bits_set(mainPipe_io_status_dup_9_s2_bits_set),
    .io_status_dup_9_s2_bits_way_en(mainPipe_io_status_dup_9_s2_bits_way_en),
    .io_status_dup_9_s3_valid(mainPipe_io_status_dup_9_s3_valid),
    .io_status_dup_9_s3_bits_set(mainPipe_io_status_dup_9_s3_bits_set),
    .io_status_dup_9_s3_bits_way_en(mainPipe_io_status_dup_9_s3_bits_way_en),
    .io_status_dup_10_s1_valid(mainPipe_io_status_dup_10_s1_valid),
    .io_status_dup_10_s1_bits_set(mainPipe_io_status_dup_10_s1_bits_set),
    .io_status_dup_10_s1_bits_way_en(mainPipe_io_status_dup_10_s1_bits_way_en),
    .io_status_dup_10_s2_valid(mainPipe_io_status_dup_10_s2_valid),
    .io_status_dup_10_s2_bits_set(mainPipe_io_status_dup_10_s2_bits_set),
    .io_status_dup_10_s2_bits_way_en(mainPipe_io_status_dup_10_s2_bits_way_en),
    .io_status_dup_10_s3_valid(mainPipe_io_status_dup_10_s3_valid),
    .io_status_dup_10_s3_bits_set(mainPipe_io_status_dup_10_s3_bits_set),
    .io_status_dup_10_s3_bits_way_en(mainPipe_io_status_dup_10_s3_bits_way_en),
    .io_status_dup_11_s1_valid(mainPipe_io_status_dup_11_s1_valid),
    .io_status_dup_11_s1_bits_set(mainPipe_io_status_dup_11_s1_bits_set),
    .io_status_dup_11_s1_bits_way_en(mainPipe_io_status_dup_11_s1_bits_way_en),
    .io_status_dup_11_s2_valid(mainPipe_io_status_dup_11_s2_valid),
    .io_status_dup_11_s2_bits_set(mainPipe_io_status_dup_11_s2_bits_set),
    .io_status_dup_11_s2_bits_way_en(mainPipe_io_status_dup_11_s2_bits_way_en),
    .io_status_dup_11_s3_valid(mainPipe_io_status_dup_11_s3_valid),
    .io_status_dup_11_s3_bits_set(mainPipe_io_status_dup_11_s3_bits_set),
    .io_status_dup_11_s3_bits_way_en(mainPipe_io_status_dup_11_s3_bits_way_en),
    .io_status_dup_12_s1_valid(mainPipe_io_status_dup_12_s1_valid),
    .io_status_dup_12_s1_bits_set(mainPipe_io_status_dup_12_s1_bits_set),
    .io_status_dup_12_s1_bits_way_en(mainPipe_io_status_dup_12_s1_bits_way_en),
    .io_status_dup_12_s2_valid(mainPipe_io_status_dup_12_s2_valid),
    .io_status_dup_12_s2_bits_set(mainPipe_io_status_dup_12_s2_bits_set),
    .io_status_dup_12_s2_bits_way_en(mainPipe_io_status_dup_12_s2_bits_way_en),
    .io_status_dup_12_s3_valid(mainPipe_io_status_dup_12_s3_valid),
    .io_status_dup_12_s3_bits_set(mainPipe_io_status_dup_12_s3_bits_set),
    .io_status_dup_12_s3_bits_way_en(mainPipe_io_status_dup_12_s3_bits_way_en),
    .io_status_dup_13_s1_valid(mainPipe_io_status_dup_13_s1_valid),
    .io_status_dup_13_s1_bits_set(mainPipe_io_status_dup_13_s1_bits_set),
    .io_status_dup_13_s1_bits_way_en(mainPipe_io_status_dup_13_s1_bits_way_en),
    .io_status_dup_13_s2_valid(mainPipe_io_status_dup_13_s2_valid),
    .io_status_dup_13_s2_bits_set(mainPipe_io_status_dup_13_s2_bits_set),
    .io_status_dup_13_s2_bits_way_en(mainPipe_io_status_dup_13_s2_bits_way_en),
    .io_status_dup_13_s3_valid(mainPipe_io_status_dup_13_s3_valid),
    .io_status_dup_13_s3_bits_set(mainPipe_io_status_dup_13_s3_bits_set),
    .io_status_dup_13_s3_bits_way_en(mainPipe_io_status_dup_13_s3_bits_way_en),
    .io_status_dup_14_s1_valid(mainPipe_io_status_dup_14_s1_valid),
    .io_status_dup_14_s1_bits_set(mainPipe_io_status_dup_14_s1_bits_set),
    .io_status_dup_14_s1_bits_way_en(mainPipe_io_status_dup_14_s1_bits_way_en),
    .io_status_dup_14_s2_valid(mainPipe_io_status_dup_14_s2_valid),
    .io_status_dup_14_s2_bits_set(mainPipe_io_status_dup_14_s2_bits_set),
    .io_status_dup_14_s2_bits_way_en(mainPipe_io_status_dup_14_s2_bits_way_en),
    .io_status_dup_14_s3_valid(mainPipe_io_status_dup_14_s3_valid),
    .io_status_dup_14_s3_bits_set(mainPipe_io_status_dup_14_s3_bits_set),
    .io_status_dup_14_s3_bits_way_en(mainPipe_io_status_dup_14_s3_bits_way_en),
    .io_status_dup_15_s1_valid(mainPipe_io_status_dup_15_s1_valid),
    .io_status_dup_15_s1_bits_set(mainPipe_io_status_dup_15_s1_bits_set),
    .io_status_dup_15_s1_bits_way_en(mainPipe_io_status_dup_15_s1_bits_way_en),
    .io_status_dup_15_s2_valid(mainPipe_io_status_dup_15_s2_valid),
    .io_status_dup_15_s2_bits_set(mainPipe_io_status_dup_15_s2_bits_set),
    .io_status_dup_15_s2_bits_way_en(mainPipe_io_status_dup_15_s2_bits_way_en),
    .io_status_dup_15_s3_valid(mainPipe_io_status_dup_15_s3_valid),
    .io_status_dup_15_s3_bits_set(mainPipe_io_status_dup_15_s3_bits_set),
    .io_status_dup_15_s3_bits_way_en(mainPipe_io_status_dup_15_s3_bits_way_en),
    .io_status_dup_16_s1_valid(mainPipe_io_status_dup_16_s1_valid),
    .io_status_dup_16_s1_bits_set(mainPipe_io_status_dup_16_s1_bits_set),
    .io_status_dup_16_s1_bits_way_en(mainPipe_io_status_dup_16_s1_bits_way_en),
    .io_status_dup_16_s2_valid(mainPipe_io_status_dup_16_s2_valid),
    .io_status_dup_16_s2_bits_set(mainPipe_io_status_dup_16_s2_bits_set),
    .io_status_dup_16_s2_bits_way_en(mainPipe_io_status_dup_16_s2_bits_way_en),
    .io_status_dup_16_s3_valid(mainPipe_io_status_dup_16_s3_valid),
    .io_status_dup_16_s3_bits_set(mainPipe_io_status_dup_16_s3_bits_set),
    .io_status_dup_16_s3_bits_way_en(mainPipe_io_status_dup_16_s3_bits_way_en),
    .io_status_dup_17_s1_valid(mainPipe_io_status_dup_17_s1_valid),
    .io_status_dup_17_s1_bits_set(mainPipe_io_status_dup_17_s1_bits_set),
    .io_status_dup_17_s1_bits_way_en(mainPipe_io_status_dup_17_s1_bits_way_en),
    .io_status_dup_17_s2_valid(mainPipe_io_status_dup_17_s2_valid),
    .io_status_dup_17_s2_bits_set(mainPipe_io_status_dup_17_s2_bits_set),
    .io_status_dup_17_s2_bits_way_en(mainPipe_io_status_dup_17_s2_bits_way_en),
    .io_status_dup_17_s3_valid(mainPipe_io_status_dup_17_s3_valid),
    .io_status_dup_17_s3_bits_set(mainPipe_io_status_dup_17_s3_bits_set),
    .io_status_dup_17_s3_bits_way_en(mainPipe_io_status_dup_17_s3_bits_way_en),
    .io_status_dup_18_s1_valid(mainPipe_io_status_dup_18_s1_valid),
    .io_status_dup_18_s1_bits_set(mainPipe_io_status_dup_18_s1_bits_set),
    .io_status_dup_18_s1_bits_way_en(mainPipe_io_status_dup_18_s1_bits_way_en),
    .io_status_dup_18_s2_valid(mainPipe_io_status_dup_18_s2_valid),
    .io_status_dup_18_s2_bits_set(mainPipe_io_status_dup_18_s2_bits_set),
    .io_status_dup_18_s2_bits_way_en(mainPipe_io_status_dup_18_s2_bits_way_en),
    .io_status_dup_18_s3_valid(mainPipe_io_status_dup_18_s3_valid),
    .io_status_dup_18_s3_bits_set(mainPipe_io_status_dup_18_s3_bits_set),
    .io_status_dup_18_s3_bits_way_en(mainPipe_io_status_dup_18_s3_bits_way_en),
    .io_status_dup_19_s1_valid(mainPipe_io_status_dup_19_s1_valid),
    .io_status_dup_19_s1_bits_set(mainPipe_io_status_dup_19_s1_bits_set),
    .io_status_dup_19_s1_bits_way_en(mainPipe_io_status_dup_19_s1_bits_way_en),
    .io_status_dup_19_s2_valid(mainPipe_io_status_dup_19_s2_valid),
    .io_status_dup_19_s2_bits_set(mainPipe_io_status_dup_19_s2_bits_set),
    .io_status_dup_19_s2_bits_way_en(mainPipe_io_status_dup_19_s2_bits_way_en),
    .io_status_dup_19_s3_valid(mainPipe_io_status_dup_19_s3_valid),
    .io_status_dup_19_s3_bits_set(mainPipe_io_status_dup_19_s3_bits_set),
    .io_status_dup_19_s3_bits_way_en(mainPipe_io_status_dup_19_s3_bits_way_en),
    .io_status_dup_20_s1_valid(mainPipe_io_status_dup_20_s1_valid),
    .io_status_dup_20_s1_bits_set(mainPipe_io_status_dup_20_s1_bits_set),
    .io_status_dup_20_s1_bits_way_en(mainPipe_io_status_dup_20_s1_bits_way_en),
    .io_status_dup_20_s2_valid(mainPipe_io_status_dup_20_s2_valid),
    .io_status_dup_20_s2_bits_set(mainPipe_io_status_dup_20_s2_bits_set),
    .io_status_dup_20_s2_bits_way_en(mainPipe_io_status_dup_20_s2_bits_way_en),
    .io_status_dup_20_s3_valid(mainPipe_io_status_dup_20_s3_valid),
    .io_status_dup_20_s3_bits_set(mainPipe_io_status_dup_20_s3_bits_set),
    .io_status_dup_20_s3_bits_way_en(mainPipe_io_status_dup_20_s3_bits_way_en),
    .io_status_dup_21_s1_valid(mainPipe_io_status_dup_21_s1_valid),
    .io_status_dup_21_s1_bits_set(mainPipe_io_status_dup_21_s1_bits_set),
    .io_status_dup_21_s1_bits_way_en(mainPipe_io_status_dup_21_s1_bits_way_en),
    .io_status_dup_21_s2_valid(mainPipe_io_status_dup_21_s2_valid),
    .io_status_dup_21_s2_bits_set(mainPipe_io_status_dup_21_s2_bits_set),
    .io_status_dup_21_s2_bits_way_en(mainPipe_io_status_dup_21_s2_bits_way_en),
    .io_status_dup_21_s3_valid(mainPipe_io_status_dup_21_s3_valid),
    .io_status_dup_21_s3_bits_set(mainPipe_io_status_dup_21_s3_bits_set),
    .io_status_dup_21_s3_bits_way_en(mainPipe_io_status_dup_21_s3_bits_way_en),
    .io_status_dup_22_s1_valid(mainPipe_io_status_dup_22_s1_valid),
    .io_status_dup_22_s1_bits_set(mainPipe_io_status_dup_22_s1_bits_set),
    .io_status_dup_22_s1_bits_way_en(mainPipe_io_status_dup_22_s1_bits_way_en),
    .io_status_dup_22_s2_valid(mainPipe_io_status_dup_22_s2_valid),
    .io_status_dup_22_s2_bits_set(mainPipe_io_status_dup_22_s2_bits_set),
    .io_status_dup_22_s2_bits_way_en(mainPipe_io_status_dup_22_s2_bits_way_en),
    .io_status_dup_22_s3_valid(mainPipe_io_status_dup_22_s3_valid),
    .io_status_dup_22_s3_bits_set(mainPipe_io_status_dup_22_s3_bits_set),
    .io_status_dup_22_s3_bits_way_en(mainPipe_io_status_dup_22_s3_bits_way_en),
    .io_status_dup_23_s1_valid(mainPipe_io_status_dup_23_s1_valid),
    .io_status_dup_23_s1_bits_set(mainPipe_io_status_dup_23_s1_bits_set),
    .io_status_dup_23_s1_bits_way_en(mainPipe_io_status_dup_23_s1_bits_way_en),
    .io_status_dup_23_s2_valid(mainPipe_io_status_dup_23_s2_valid),
    .io_status_dup_23_s2_bits_set(mainPipe_io_status_dup_23_s2_bits_set),
    .io_status_dup_23_s2_bits_way_en(mainPipe_io_status_dup_23_s2_bits_way_en),
    .io_status_dup_23_s3_valid(mainPipe_io_status_dup_23_s3_valid),
    .io_status_dup_23_s3_bits_set(mainPipe_io_status_dup_23_s3_bits_set),
    .io_status_dup_23_s3_bits_way_en(mainPipe_io_status_dup_23_s3_bits_way_en),
    .io_lrsc_locked_block_valid(mainPipe_io_lrsc_locked_block_valid),
    .io_lrsc_locked_block_bits(mainPipe_io_lrsc_locked_block_bits),
    .io_invalid_resv_set(mainPipe_io_invalid_resv_set),
    .io_update_resv_set(mainPipe_io_update_resv_set),
    .io_block_lr(mainPipe_io_block_lr),
    .io_error_source_tag(mainPipe_io_error_source_tag),
    .io_error_source_data(mainPipe_io_error_source_data),
    .io_error_source_l2(mainPipe_io_error_source_l2),
    .io_error_opType_store(mainPipe_io_error_opType_store),
    .io_error_opType_probe(mainPipe_io_error_opType_probe),
    .io_error_opType_release(mainPipe_io_error_opType_release),
    .io_error_opType_atom(mainPipe_io_error_opType_atom),
    .io_error_paddr(mainPipe_io_error_paddr),
    .io_error_report_to_beu(mainPipe_io_error_report_to_beu),
    .io_error_valid(mainPipe_io_error_valid),
    .io_perf_0_value(mainPipe_io_perf_0_value),
    .io_perf_1_value(mainPipe_io_perf_1_value)
  );
  RefillPipe refillPipe ( // @[DCacheWrapper.scala 828:28]
    .io_req_ready(refillPipe_io_req_ready),
    .io_req_valid(refillPipe_io_req_valid),
    .io_req_bits_source(refillPipe_io_req_bits_source),
    .io_req_bits_addr(refillPipe_io_req_bits_addr),
    .io_req_bits_miss_id(refillPipe_io_req_bits_miss_id),
    .io_req_bits_id(refillPipe_io_req_bits_id),
    .io_req_bits_error(refillPipe_io_req_bits_error),
    .io_req_bits_wmask(refillPipe_io_req_bits_wmask),
    .io_req_bits_data_0(refillPipe_io_req_bits_data_0),
    .io_req_bits_data_1(refillPipe_io_req_bits_data_1),
    .io_req_bits_data_2(refillPipe_io_req_bits_data_2),
    .io_req_bits_data_3(refillPipe_io_req_bits_data_3),
    .io_req_bits_data_4(refillPipe_io_req_bits_data_4),
    .io_req_bits_data_5(refillPipe_io_req_bits_data_5),
    .io_req_bits_data_6(refillPipe_io_req_bits_data_6),
    .io_req_bits_data_7(refillPipe_io_req_bits_data_7),
    .io_req_bits_meta_coh_state(refillPipe_io_req_bits_meta_coh_state),
    .io_req_dup_for_data_w0_valid(refillPipe_io_req_dup_for_data_w0_valid),
    .io_req_dup_for_data_w0_bits_addr(refillPipe_io_req_dup_for_data_w0_bits_addr),
    .io_req_dup_for_data_w0_bits_way_en(refillPipe_io_req_dup_for_data_w0_bits_way_en),
    .io_req_dup_for_data_w0_bits_alias(refillPipe_io_req_dup_for_data_w0_bits_alias),
    .io_req_dup_for_data_w1_valid(refillPipe_io_req_dup_for_data_w1_valid),
    .io_req_dup_for_data_w1_bits_addr(refillPipe_io_req_dup_for_data_w1_bits_addr),
    .io_req_dup_for_data_w1_bits_way_en(refillPipe_io_req_dup_for_data_w1_bits_way_en),
    .io_req_dup_for_data_w1_bits_alias(refillPipe_io_req_dup_for_data_w1_bits_alias),
    .io_req_dup_for_data_w2_valid(refillPipe_io_req_dup_for_data_w2_valid),
    .io_req_dup_for_data_w2_bits_addr(refillPipe_io_req_dup_for_data_w2_bits_addr),
    .io_req_dup_for_data_w2_bits_way_en(refillPipe_io_req_dup_for_data_w2_bits_way_en),
    .io_req_dup_for_data_w2_bits_alias(refillPipe_io_req_dup_for_data_w2_bits_alias),
    .io_req_dup_for_data_w3_valid(refillPipe_io_req_dup_for_data_w3_valid),
    .io_req_dup_for_data_w3_bits_addr(refillPipe_io_req_dup_for_data_w3_bits_addr),
    .io_req_dup_for_data_w3_bits_way_en(refillPipe_io_req_dup_for_data_w3_bits_way_en),
    .io_req_dup_for_data_w3_bits_alias(refillPipe_io_req_dup_for_data_w3_bits_alias),
    .io_req_dup_for_data_w4_valid(refillPipe_io_req_dup_for_data_w4_valid),
    .io_req_dup_for_data_w4_bits_addr(refillPipe_io_req_dup_for_data_w4_bits_addr),
    .io_req_dup_for_data_w4_bits_way_en(refillPipe_io_req_dup_for_data_w4_bits_way_en),
    .io_req_dup_for_data_w4_bits_alias(refillPipe_io_req_dup_for_data_w4_bits_alias),
    .io_req_dup_for_data_w5_valid(refillPipe_io_req_dup_for_data_w5_valid),
    .io_req_dup_for_data_w5_bits_addr(refillPipe_io_req_dup_for_data_w5_bits_addr),
    .io_req_dup_for_data_w5_bits_way_en(refillPipe_io_req_dup_for_data_w5_bits_way_en),
    .io_req_dup_for_data_w5_bits_alias(refillPipe_io_req_dup_for_data_w5_bits_alias),
    .io_req_dup_for_data_w6_valid(refillPipe_io_req_dup_for_data_w6_valid),
    .io_req_dup_for_data_w6_bits_addr(refillPipe_io_req_dup_for_data_w6_bits_addr),
    .io_req_dup_for_data_w6_bits_way_en(refillPipe_io_req_dup_for_data_w6_bits_way_en),
    .io_req_dup_for_data_w6_bits_alias(refillPipe_io_req_dup_for_data_w6_bits_alias),
    .io_req_dup_for_data_w7_valid(refillPipe_io_req_dup_for_data_w7_valid),
    .io_req_dup_for_data_w7_bits_addr(refillPipe_io_req_dup_for_data_w7_bits_addr),
    .io_req_dup_for_data_w7_bits_way_en(refillPipe_io_req_dup_for_data_w7_bits_way_en),
    .io_req_dup_for_data_w7_bits_alias(refillPipe_io_req_dup_for_data_w7_bits_alias),
    .io_req_dup_for_meta_wvalid(refillPipe_io_req_dup_for_meta_wvalid),
    .io_req_dup_for_meta_waddr(refillPipe_io_req_dup_for_meta_waddr),
    .io_req_dup_for_meta_wway_en(refillPipe_io_req_dup_for_meta_wway_en),
    .io_req_dup_for_meta_walias(refillPipe_io_req_dup_for_meta_walias),
    .io_req_dup_for_tag_wvalid(refillPipe_io_req_dup_for_tag_wvalid),
    .io_req_dup_for_tag_waddr(refillPipe_io_req_dup_for_tag_waddr),
    .io_req_dup_for_tag_wway_en(refillPipe_io_req_dup_for_tag_wway_en),
    .io_req_dup_for_tag_walias(refillPipe_io_req_dup_for_tag_walias),
    .io_req_dup_for_err_wvalid(refillPipe_io_req_dup_for_err_wvalid),
    .io_req_dup_for_err_waddr(refillPipe_io_req_dup_for_err_waddr),
    .io_req_dup_for_err_wway_en(refillPipe_io_req_dup_for_err_wway_en),
    .io_req_dup_for_err_walias(refillPipe_io_req_dup_for_err_walias),
    .io_resp_valid(refillPipe_io_resp_valid),
    .io_resp_bits(refillPipe_io_resp_bits),
    .io_data_write_valid(refillPipe_io_data_write_valid),
    .io_data_write_bits_wmask(refillPipe_io_data_write_bits_wmask),
    .io_data_write_bits_data_0(refillPipe_io_data_write_bits_data_0),
    .io_data_write_bits_data_1(refillPipe_io_data_write_bits_data_1),
    .io_data_write_bits_data_2(refillPipe_io_data_write_bits_data_2),
    .io_data_write_bits_data_3(refillPipe_io_data_write_bits_data_3),
    .io_data_write_bits_data_4(refillPipe_io_data_write_bits_data_4),
    .io_data_write_bits_data_5(refillPipe_io_data_write_bits_data_5),
    .io_data_write_bits_data_6(refillPipe_io_data_write_bits_data_6),
    .io_data_write_bits_data_7(refillPipe_io_data_write_bits_data_7),
    .io_data_write_dup_0_valid(refillPipe_io_data_write_dup_0_valid),
    .io_data_write_dup_0_bits_way_en(refillPipe_io_data_write_dup_0_bits_way_en),
    .io_data_write_dup_0_bits_addr(refillPipe_io_data_write_dup_0_bits_addr),
    .io_data_write_dup_1_valid(refillPipe_io_data_write_dup_1_valid),
    .io_data_write_dup_1_bits_way_en(refillPipe_io_data_write_dup_1_bits_way_en),
    .io_data_write_dup_1_bits_addr(refillPipe_io_data_write_dup_1_bits_addr),
    .io_data_write_dup_2_valid(refillPipe_io_data_write_dup_2_valid),
    .io_data_write_dup_2_bits_way_en(refillPipe_io_data_write_dup_2_bits_way_en),
    .io_data_write_dup_2_bits_addr(refillPipe_io_data_write_dup_2_bits_addr),
    .io_data_write_dup_3_valid(refillPipe_io_data_write_dup_3_valid),
    .io_data_write_dup_3_bits_way_en(refillPipe_io_data_write_dup_3_bits_way_en),
    .io_data_write_dup_3_bits_addr(refillPipe_io_data_write_dup_3_bits_addr),
    .io_data_write_dup_4_valid(refillPipe_io_data_write_dup_4_valid),
    .io_data_write_dup_4_bits_way_en(refillPipe_io_data_write_dup_4_bits_way_en),
    .io_data_write_dup_4_bits_addr(refillPipe_io_data_write_dup_4_bits_addr),
    .io_data_write_dup_5_valid(refillPipe_io_data_write_dup_5_valid),
    .io_data_write_dup_5_bits_way_en(refillPipe_io_data_write_dup_5_bits_way_en),
    .io_data_write_dup_5_bits_addr(refillPipe_io_data_write_dup_5_bits_addr),
    .io_data_write_dup_6_valid(refillPipe_io_data_write_dup_6_valid),
    .io_data_write_dup_6_bits_way_en(refillPipe_io_data_write_dup_6_bits_way_en),
    .io_data_write_dup_6_bits_addr(refillPipe_io_data_write_dup_6_bits_addr),
    .io_data_write_dup_7_valid(refillPipe_io_data_write_dup_7_valid),
    .io_data_write_dup_7_bits_way_en(refillPipe_io_data_write_dup_7_bits_way_en),
    .io_data_write_dup_7_bits_addr(refillPipe_io_data_write_dup_7_bits_addr),
    .io_meta_write_valid(refillPipe_io_meta_write_valid),
    .io_meta_write_bits_idx(refillPipe_io_meta_write_bits_idx),
    .io_meta_write_bits_way_en(refillPipe_io_meta_write_bits_way_en),
    .io_meta_write_bits_meta_coh_state(refillPipe_io_meta_write_bits_meta_coh_state),
    .io_error_flag_write_valid(refillPipe_io_error_flag_write_valid),
    .io_error_flag_write_bits_idx(refillPipe_io_error_flag_write_bits_idx),
    .io_error_flag_write_bits_way_en(refillPipe_io_error_flag_write_bits_way_en),
    .io_error_flag_write_bits_flag(refillPipe_io_error_flag_write_bits_flag),
    .io_tag_write_valid(refillPipe_io_tag_write_valid),
    .io_tag_write_bits_idx(refillPipe_io_tag_write_bits_idx),
    .io_tag_write_bits_way_en(refillPipe_io_tag_write_bits_way_en),
    .io_tag_write_bits_tag(refillPipe_io_tag_write_bits_tag),
    .io_store_resp_valid(refillPipe_io_store_resp_valid),
    .io_store_resp_bits_id(refillPipe_io_store_resp_bits_id),
    .io_release_wakeup_valid(refillPipe_io_release_wakeup_valid),
    .io_release_wakeup_bits(refillPipe_io_release_wakeup_bits)
  );
  MissQueue missQueue ( // @[DCacheWrapper.scala 829:28]
    .clock(missQueue_clock),
    .reset(missQueue_reset),
    .io_req_ready(missQueue_io_req_ready),
    .io_req_valid(missQueue_io_req_valid),
    .io_req_bits_source(missQueue_io_req_bits_source),
    .io_req_bits_cmd(missQueue_io_req_bits_cmd),
    .io_req_bits_addr(missQueue_io_req_bits_addr),
    .io_req_bits_vaddr(missQueue_io_req_bits_vaddr),
    .io_req_bits_way_en(missQueue_io_req_bits_way_en),
    .io_req_bits_word_idx(missQueue_io_req_bits_word_idx),
    .io_req_bits_amo_data(missQueue_io_req_bits_amo_data),
    .io_req_bits_amo_mask(missQueue_io_req_bits_amo_mask),
    .io_req_bits_req_coh_state(missQueue_io_req_bits_req_coh_state),
    .io_req_bits_replace_coh_state(missQueue_io_req_bits_replace_coh_state),
    .io_req_bits_replace_tag(missQueue_io_req_bits_replace_tag),
    .io_req_bits_id(missQueue_io_req_bits_id),
    .io_req_bits_cancel(missQueue_io_req_bits_cancel),
    .io_req_bits_store_data(missQueue_io_req_bits_store_data),
    .io_req_bits_store_mask(missQueue_io_req_bits_store_mask),
    .io_resp_id(missQueue_io_resp_id),
    .io_resp_handled(missQueue_io_resp_handled),
    .io_resp_merged(missQueue_io_resp_merged),
    .io_resp_repl_way_en(missQueue_io_resp_repl_way_en),
    .io_mem_acquire_ready(missQueue_io_mem_acquire_ready),
    .io_mem_acquire_valid(missQueue_io_mem_acquire_valid),
    .io_mem_acquire_bits_opcode(missQueue_io_mem_acquire_bits_opcode),
    .io_mem_acquire_bits_param(missQueue_io_mem_acquire_bits_param),
    .io_mem_acquire_bits_size(missQueue_io_mem_acquire_bits_size),
    .io_mem_acquire_bits_source(missQueue_io_mem_acquire_bits_source),
    .io_mem_acquire_bits_address(missQueue_io_mem_acquire_bits_address),
    .io_mem_acquire_bits_user_vaddr(missQueue_io_mem_acquire_bits_user_vaddr),
    .io_mem_acquire_bits_user_reqSource(missQueue_io_mem_acquire_bits_user_reqSource),
    .io_mem_acquire_bits_user_needHint(missQueue_io_mem_acquire_bits_user_needHint),
    .io_mem_acquire_bits_mask(missQueue_io_mem_acquire_bits_mask),
    .io_mem_grant_ready(missQueue_io_mem_grant_ready),
    .io_mem_grant_valid(missQueue_io_mem_grant_valid),
    .io_mem_grant_bits_opcode(missQueue_io_mem_grant_bits_opcode),
    .io_mem_grant_bits_param(missQueue_io_mem_grant_bits_param),
    .io_mem_grant_bits_size(missQueue_io_mem_grant_bits_size),
    .io_mem_grant_bits_source(missQueue_io_mem_grant_bits_source),
    .io_mem_grant_bits_sink(missQueue_io_mem_grant_bits_sink),
    .io_mem_grant_bits_denied(missQueue_io_mem_grant_bits_denied),
    .io_mem_grant_bits_data(missQueue_io_mem_grant_bits_data),
    .io_mem_grant_bits_corrupt(missQueue_io_mem_grant_bits_corrupt),
    .io_mem_finish_ready(missQueue_io_mem_finish_ready),
    .io_mem_finish_valid(missQueue_io_mem_finish_valid),
    .io_mem_finish_bits_sink(missQueue_io_mem_finish_bits_sink),
    .io_refill_pipe_req_ready(missQueue_io_refill_pipe_req_ready),
    .io_refill_pipe_req_valid(missQueue_io_refill_pipe_req_valid),
    .io_refill_pipe_req_bits_source(missQueue_io_refill_pipe_req_bits_source),
    .io_refill_pipe_req_bits_addr(missQueue_io_refill_pipe_req_bits_addr),
    .io_refill_pipe_req_bits_way_en(missQueue_io_refill_pipe_req_bits_way_en),
    .io_refill_pipe_req_bits_alias(missQueue_io_refill_pipe_req_bits_alias),
    .io_refill_pipe_req_bits_miss_id(missQueue_io_refill_pipe_req_bits_miss_id),
    .io_refill_pipe_req_bits_id(missQueue_io_refill_pipe_req_bits_id),
    .io_refill_pipe_req_bits_error(missQueue_io_refill_pipe_req_bits_error),
    .io_refill_pipe_req_bits_wmask(missQueue_io_refill_pipe_req_bits_wmask),
    .io_refill_pipe_req_bits_data_0(missQueue_io_refill_pipe_req_bits_data_0),
    .io_refill_pipe_req_bits_data_1(missQueue_io_refill_pipe_req_bits_data_1),
    .io_refill_pipe_req_bits_data_2(missQueue_io_refill_pipe_req_bits_data_2),
    .io_refill_pipe_req_bits_data_3(missQueue_io_refill_pipe_req_bits_data_3),
    .io_refill_pipe_req_bits_data_4(missQueue_io_refill_pipe_req_bits_data_4),
    .io_refill_pipe_req_bits_data_5(missQueue_io_refill_pipe_req_bits_data_5),
    .io_refill_pipe_req_bits_data_6(missQueue_io_refill_pipe_req_bits_data_6),
    .io_refill_pipe_req_bits_data_7(missQueue_io_refill_pipe_req_bits_data_7),
    .io_refill_pipe_req_bits_meta_coh_state(missQueue_io_refill_pipe_req_bits_meta_coh_state),
    .io_refill_pipe_req_dup_0_ready(missQueue_io_refill_pipe_req_dup_0_ready),
    .io_refill_pipe_req_dup_0_valid(missQueue_io_refill_pipe_req_dup_0_valid),
    .io_refill_pipe_req_dup_0_bits_addr(missQueue_io_refill_pipe_req_dup_0_bits_addr),
    .io_refill_pipe_req_dup_0_bits_way_en(missQueue_io_refill_pipe_req_dup_0_bits_way_en),
    .io_refill_pipe_req_dup_0_bits_alias(missQueue_io_refill_pipe_req_dup_0_bits_alias),
    .io_refill_pipe_req_dup_1_ready(missQueue_io_refill_pipe_req_dup_1_ready),
    .io_refill_pipe_req_dup_1_valid(missQueue_io_refill_pipe_req_dup_1_valid),
    .io_refill_pipe_req_dup_1_bits_addr(missQueue_io_refill_pipe_req_dup_1_bits_addr),
    .io_refill_pipe_req_dup_1_bits_way_en(missQueue_io_refill_pipe_req_dup_1_bits_way_en),
    .io_refill_pipe_req_dup_1_bits_alias(missQueue_io_refill_pipe_req_dup_1_bits_alias),
    .io_refill_pipe_req_dup_2_ready(missQueue_io_refill_pipe_req_dup_2_ready),
    .io_refill_pipe_req_dup_2_valid(missQueue_io_refill_pipe_req_dup_2_valid),
    .io_refill_pipe_req_dup_2_bits_addr(missQueue_io_refill_pipe_req_dup_2_bits_addr),
    .io_refill_pipe_req_dup_2_bits_way_en(missQueue_io_refill_pipe_req_dup_2_bits_way_en),
    .io_refill_pipe_req_dup_2_bits_alias(missQueue_io_refill_pipe_req_dup_2_bits_alias),
    .io_refill_pipe_req_dup_3_ready(missQueue_io_refill_pipe_req_dup_3_ready),
    .io_refill_pipe_req_dup_3_valid(missQueue_io_refill_pipe_req_dup_3_valid),
    .io_refill_pipe_req_dup_3_bits_addr(missQueue_io_refill_pipe_req_dup_3_bits_addr),
    .io_refill_pipe_req_dup_3_bits_way_en(missQueue_io_refill_pipe_req_dup_3_bits_way_en),
    .io_refill_pipe_req_dup_3_bits_alias(missQueue_io_refill_pipe_req_dup_3_bits_alias),
    .io_refill_pipe_req_dup_4_ready(missQueue_io_refill_pipe_req_dup_4_ready),
    .io_refill_pipe_req_dup_4_valid(missQueue_io_refill_pipe_req_dup_4_valid),
    .io_refill_pipe_req_dup_4_bits_addr(missQueue_io_refill_pipe_req_dup_4_bits_addr),
    .io_refill_pipe_req_dup_4_bits_way_en(missQueue_io_refill_pipe_req_dup_4_bits_way_en),
    .io_refill_pipe_req_dup_4_bits_alias(missQueue_io_refill_pipe_req_dup_4_bits_alias),
    .io_refill_pipe_req_dup_5_ready(missQueue_io_refill_pipe_req_dup_5_ready),
    .io_refill_pipe_req_dup_5_valid(missQueue_io_refill_pipe_req_dup_5_valid),
    .io_refill_pipe_req_dup_5_bits_addr(missQueue_io_refill_pipe_req_dup_5_bits_addr),
    .io_refill_pipe_req_dup_5_bits_way_en(missQueue_io_refill_pipe_req_dup_5_bits_way_en),
    .io_refill_pipe_req_dup_5_bits_alias(missQueue_io_refill_pipe_req_dup_5_bits_alias),
    .io_refill_pipe_req_dup_6_ready(missQueue_io_refill_pipe_req_dup_6_ready),
    .io_refill_pipe_req_dup_6_valid(missQueue_io_refill_pipe_req_dup_6_valid),
    .io_refill_pipe_req_dup_6_bits_addr(missQueue_io_refill_pipe_req_dup_6_bits_addr),
    .io_refill_pipe_req_dup_6_bits_way_en(missQueue_io_refill_pipe_req_dup_6_bits_way_en),
    .io_refill_pipe_req_dup_6_bits_alias(missQueue_io_refill_pipe_req_dup_6_bits_alias),
    .io_refill_pipe_req_dup_7_ready(missQueue_io_refill_pipe_req_dup_7_ready),
    .io_refill_pipe_req_dup_7_valid(missQueue_io_refill_pipe_req_dup_7_valid),
    .io_refill_pipe_req_dup_7_bits_addr(missQueue_io_refill_pipe_req_dup_7_bits_addr),
    .io_refill_pipe_req_dup_7_bits_way_en(missQueue_io_refill_pipe_req_dup_7_bits_way_en),
    .io_refill_pipe_req_dup_7_bits_alias(missQueue_io_refill_pipe_req_dup_7_bits_alias),
    .io_refill_pipe_req_dup_8_ready(missQueue_io_refill_pipe_req_dup_8_ready),
    .io_refill_pipe_req_dup_8_valid(missQueue_io_refill_pipe_req_dup_8_valid),
    .io_refill_pipe_req_dup_8_bits_addr(missQueue_io_refill_pipe_req_dup_8_bits_addr),
    .io_refill_pipe_req_dup_8_bits_way_en(missQueue_io_refill_pipe_req_dup_8_bits_way_en),
    .io_refill_pipe_req_dup_8_bits_alias(missQueue_io_refill_pipe_req_dup_8_bits_alias),
    .io_refill_pipe_req_dup_9_ready(missQueue_io_refill_pipe_req_dup_9_ready),
    .io_refill_pipe_req_dup_9_valid(missQueue_io_refill_pipe_req_dup_9_valid),
    .io_refill_pipe_req_dup_9_bits_addr(missQueue_io_refill_pipe_req_dup_9_bits_addr),
    .io_refill_pipe_req_dup_9_bits_way_en(missQueue_io_refill_pipe_req_dup_9_bits_way_en),
    .io_refill_pipe_req_dup_9_bits_alias(missQueue_io_refill_pipe_req_dup_9_bits_alias),
    .io_refill_pipe_req_dup_10_ready(missQueue_io_refill_pipe_req_dup_10_ready),
    .io_refill_pipe_req_dup_10_valid(missQueue_io_refill_pipe_req_dup_10_valid),
    .io_refill_pipe_req_dup_10_bits_addr(missQueue_io_refill_pipe_req_dup_10_bits_addr),
    .io_refill_pipe_req_dup_10_bits_way_en(missQueue_io_refill_pipe_req_dup_10_bits_way_en),
    .io_refill_pipe_req_dup_10_bits_alias(missQueue_io_refill_pipe_req_dup_10_bits_alias),
    .io_refill_pipe_req_dup_11_ready(missQueue_io_refill_pipe_req_dup_11_ready),
    .io_refill_pipe_req_dup_11_valid(missQueue_io_refill_pipe_req_dup_11_valid),
    .io_refill_pipe_req_dup_11_bits_addr(missQueue_io_refill_pipe_req_dup_11_bits_addr),
    .io_refill_pipe_req_dup_11_bits_way_en(missQueue_io_refill_pipe_req_dup_11_bits_way_en),
    .io_refill_pipe_req_dup_11_bits_alias(missQueue_io_refill_pipe_req_dup_11_bits_alias),
    .io_refill_pipe_req_dup_12_ready(missQueue_io_refill_pipe_req_dup_12_ready),
    .io_refill_pipe_req_dup_12_valid(missQueue_io_refill_pipe_req_dup_12_valid),
    .io_refill_pipe_req_dup_12_bits_addr(missQueue_io_refill_pipe_req_dup_12_bits_addr),
    .io_refill_pipe_req_dup_12_bits_way_en(missQueue_io_refill_pipe_req_dup_12_bits_way_en),
    .io_refill_pipe_req_dup_12_bits_alias(missQueue_io_refill_pipe_req_dup_12_bits_alias),
    .io_refill_pipe_req_dup_13_ready(missQueue_io_refill_pipe_req_dup_13_ready),
    .io_refill_pipe_req_dup_13_valid(missQueue_io_refill_pipe_req_dup_13_valid),
    .io_refill_pipe_req_dup_13_bits_addr(missQueue_io_refill_pipe_req_dup_13_bits_addr),
    .io_refill_pipe_req_dup_13_bits_way_en(missQueue_io_refill_pipe_req_dup_13_bits_way_en),
    .io_refill_pipe_req_dup_13_bits_alias(missQueue_io_refill_pipe_req_dup_13_bits_alias),
    .io_refill_pipe_req_dup_14_ready(missQueue_io_refill_pipe_req_dup_14_ready),
    .io_refill_pipe_req_dup_14_valid(missQueue_io_refill_pipe_req_dup_14_valid),
    .io_refill_pipe_req_dup_14_bits_addr(missQueue_io_refill_pipe_req_dup_14_bits_addr),
    .io_refill_pipe_req_dup_14_bits_way_en(missQueue_io_refill_pipe_req_dup_14_bits_way_en),
    .io_refill_pipe_req_dup_14_bits_alias(missQueue_io_refill_pipe_req_dup_14_bits_alias),
    .io_refill_pipe_req_dup_15_ready(missQueue_io_refill_pipe_req_dup_15_ready),
    .io_refill_pipe_req_dup_15_valid(missQueue_io_refill_pipe_req_dup_15_valid),
    .io_refill_pipe_req_dup_15_bits_addr(missQueue_io_refill_pipe_req_dup_15_bits_addr),
    .io_refill_pipe_req_dup_15_bits_way_en(missQueue_io_refill_pipe_req_dup_15_bits_way_en),
    .io_refill_pipe_req_dup_15_bits_alias(missQueue_io_refill_pipe_req_dup_15_bits_alias),
    .io_refill_pipe_req_dup_16_ready(missQueue_io_refill_pipe_req_dup_16_ready),
    .io_refill_pipe_req_dup_16_valid(missQueue_io_refill_pipe_req_dup_16_valid),
    .io_refill_pipe_req_dup_16_bits_addr(missQueue_io_refill_pipe_req_dup_16_bits_addr),
    .io_refill_pipe_req_dup_16_bits_way_en(missQueue_io_refill_pipe_req_dup_16_bits_way_en),
    .io_refill_pipe_req_dup_16_bits_alias(missQueue_io_refill_pipe_req_dup_16_bits_alias),
    .io_refill_pipe_req_dup_17_ready(missQueue_io_refill_pipe_req_dup_17_ready),
    .io_refill_pipe_req_dup_17_valid(missQueue_io_refill_pipe_req_dup_17_valid),
    .io_refill_pipe_req_dup_17_bits_addr(missQueue_io_refill_pipe_req_dup_17_bits_addr),
    .io_refill_pipe_req_dup_17_bits_way_en(missQueue_io_refill_pipe_req_dup_17_bits_way_en),
    .io_refill_pipe_req_dup_17_bits_alias(missQueue_io_refill_pipe_req_dup_17_bits_alias),
    .io_refill_pipe_req_dup_18_ready(missQueue_io_refill_pipe_req_dup_18_ready),
    .io_refill_pipe_req_dup_18_valid(missQueue_io_refill_pipe_req_dup_18_valid),
    .io_refill_pipe_req_dup_18_bits_addr(missQueue_io_refill_pipe_req_dup_18_bits_addr),
    .io_refill_pipe_req_dup_18_bits_way_en(missQueue_io_refill_pipe_req_dup_18_bits_way_en),
    .io_refill_pipe_req_dup_18_bits_alias(missQueue_io_refill_pipe_req_dup_18_bits_alias),
    .io_refill_pipe_req_dup_19_ready(missQueue_io_refill_pipe_req_dup_19_ready),
    .io_refill_pipe_req_dup_19_valid(missQueue_io_refill_pipe_req_dup_19_valid),
    .io_refill_pipe_req_dup_19_bits_addr(missQueue_io_refill_pipe_req_dup_19_bits_addr),
    .io_refill_pipe_req_dup_19_bits_way_en(missQueue_io_refill_pipe_req_dup_19_bits_way_en),
    .io_refill_pipe_req_dup_19_bits_alias(missQueue_io_refill_pipe_req_dup_19_bits_alias),
    .io_refill_pipe_req_dup_20_ready(missQueue_io_refill_pipe_req_dup_20_ready),
    .io_refill_pipe_req_dup_20_valid(missQueue_io_refill_pipe_req_dup_20_valid),
    .io_refill_pipe_req_dup_20_bits_addr(missQueue_io_refill_pipe_req_dup_20_bits_addr),
    .io_refill_pipe_req_dup_20_bits_way_en(missQueue_io_refill_pipe_req_dup_20_bits_way_en),
    .io_refill_pipe_req_dup_20_bits_alias(missQueue_io_refill_pipe_req_dup_20_bits_alias),
    .io_refill_pipe_req_dup_21_ready(missQueue_io_refill_pipe_req_dup_21_ready),
    .io_refill_pipe_req_dup_21_valid(missQueue_io_refill_pipe_req_dup_21_valid),
    .io_refill_pipe_req_dup_21_bits_addr(missQueue_io_refill_pipe_req_dup_21_bits_addr),
    .io_refill_pipe_req_dup_21_bits_way_en(missQueue_io_refill_pipe_req_dup_21_bits_way_en),
    .io_refill_pipe_req_dup_21_bits_alias(missQueue_io_refill_pipe_req_dup_21_bits_alias),
    .io_refill_pipe_req_dup_22_ready(missQueue_io_refill_pipe_req_dup_22_ready),
    .io_refill_pipe_req_dup_22_valid(missQueue_io_refill_pipe_req_dup_22_valid),
    .io_refill_pipe_req_dup_22_bits_addr(missQueue_io_refill_pipe_req_dup_22_bits_addr),
    .io_refill_pipe_req_dup_22_bits_way_en(missQueue_io_refill_pipe_req_dup_22_bits_way_en),
    .io_refill_pipe_req_dup_22_bits_alias(missQueue_io_refill_pipe_req_dup_22_bits_alias),
    .io_refill_pipe_req_dup_23_ready(missQueue_io_refill_pipe_req_dup_23_ready),
    .io_refill_pipe_req_dup_23_valid(missQueue_io_refill_pipe_req_dup_23_valid),
    .io_refill_pipe_req_dup_23_bits_addr(missQueue_io_refill_pipe_req_dup_23_bits_addr),
    .io_refill_pipe_req_dup_23_bits_way_en(missQueue_io_refill_pipe_req_dup_23_bits_way_en),
    .io_refill_pipe_req_dup_23_bits_alias(missQueue_io_refill_pipe_req_dup_23_bits_alias),
    .io_refill_pipe_resp_valid(missQueue_io_refill_pipe_resp_valid),
    .io_refill_pipe_resp_bits(missQueue_io_refill_pipe_resp_bits),
    .io_replace_pipe_req_ready(missQueue_io_replace_pipe_req_ready),
    .io_replace_pipe_req_valid(missQueue_io_replace_pipe_req_valid),
    .io_replace_pipe_req_bits_miss(missQueue_io_replace_pipe_req_bits_miss),
    .io_replace_pipe_req_bits_miss_id(missQueue_io_replace_pipe_req_bits_miss_id),
    .io_replace_pipe_req_bits_miss_param(missQueue_io_replace_pipe_req_bits_miss_param),
    .io_replace_pipe_req_bits_miss_dirty(missQueue_io_replace_pipe_req_bits_miss_dirty),
    .io_replace_pipe_req_bits_miss_way_en(missQueue_io_replace_pipe_req_bits_miss_way_en),
    .io_replace_pipe_req_bits_probe(missQueue_io_replace_pipe_req_bits_probe),
    .io_replace_pipe_req_bits_probe_param(missQueue_io_replace_pipe_req_bits_probe_param),
    .io_replace_pipe_req_bits_probe_need_data(missQueue_io_replace_pipe_req_bits_probe_need_data),
    .io_replace_pipe_req_bits_source(missQueue_io_replace_pipe_req_bits_source),
    .io_replace_pipe_req_bits_cmd(missQueue_io_replace_pipe_req_bits_cmd),
    .io_replace_pipe_req_bits_vaddr(missQueue_io_replace_pipe_req_bits_vaddr),
    .io_replace_pipe_req_bits_addr(missQueue_io_replace_pipe_req_bits_addr),
    .io_replace_pipe_req_bits_store_data(missQueue_io_replace_pipe_req_bits_store_data),
    .io_replace_pipe_req_bits_store_mask(missQueue_io_replace_pipe_req_bits_store_mask),
    .io_replace_pipe_req_bits_word_idx(missQueue_io_replace_pipe_req_bits_word_idx),
    .io_replace_pipe_req_bits_amo_data(missQueue_io_replace_pipe_req_bits_amo_data),
    .io_replace_pipe_req_bits_amo_mask(missQueue_io_replace_pipe_req_bits_amo_mask),
    .io_replace_pipe_req_bits_error(missQueue_io_replace_pipe_req_bits_error),
    .io_replace_pipe_req_bits_replace(missQueue_io_replace_pipe_req_bits_replace),
    .io_replace_pipe_req_bits_replace_way_en(missQueue_io_replace_pipe_req_bits_replace_way_en),
    .io_replace_pipe_req_bits_id(missQueue_io_replace_pipe_req_bits_id),
    .io_replace_pipe_resp_valid(missQueue_io_replace_pipe_resp_valid),
    .io_replace_pipe_resp_bits(missQueue_io_replace_pipe_resp_bits),
    .io_main_pipe_req_ready(missQueue_io_main_pipe_req_ready),
    .io_main_pipe_req_valid(missQueue_io_main_pipe_req_valid),
    .io_main_pipe_req_bits_miss(missQueue_io_main_pipe_req_bits_miss),
    .io_main_pipe_req_bits_miss_id(missQueue_io_main_pipe_req_bits_miss_id),
    .io_main_pipe_req_bits_miss_param(missQueue_io_main_pipe_req_bits_miss_param),
    .io_main_pipe_req_bits_miss_way_en(missQueue_io_main_pipe_req_bits_miss_way_en),
    .io_main_pipe_req_bits_source(missQueue_io_main_pipe_req_bits_source),
    .io_main_pipe_req_bits_cmd(missQueue_io_main_pipe_req_bits_cmd),
    .io_main_pipe_req_bits_vaddr(missQueue_io_main_pipe_req_bits_vaddr),
    .io_main_pipe_req_bits_addr(missQueue_io_main_pipe_req_bits_addr),
    .io_main_pipe_req_bits_store_data(missQueue_io_main_pipe_req_bits_store_data),
    .io_main_pipe_req_bits_store_mask(missQueue_io_main_pipe_req_bits_store_mask),
    .io_main_pipe_req_bits_word_idx(missQueue_io_main_pipe_req_bits_word_idx),
    .io_main_pipe_req_bits_amo_data(missQueue_io_main_pipe_req_bits_amo_data),
    .io_main_pipe_req_bits_amo_mask(missQueue_io_main_pipe_req_bits_amo_mask),
    .io_main_pipe_req_bits_error(missQueue_io_main_pipe_req_bits_error),
    .io_main_pipe_req_bits_id(missQueue_io_main_pipe_req_bits_id),
    .io_main_pipe_resp_valid(missQueue_io_main_pipe_resp_valid),
    .io_main_pipe_resp_bits_miss_id(missQueue_io_main_pipe_resp_bits_miss_id),
    .io_main_pipe_resp_bits_ack_miss_queue(missQueue_io_main_pipe_resp_bits_ack_miss_queue),
    .io_probe_addr(missQueue_io_probe_addr),
    .io_probe_block(missQueue_io_probe_block),
    .io_forward_0_valid(missQueue_io_forward_0_valid),
    .io_forward_0_mshrid(missQueue_io_forward_0_mshrid),
    .io_forward_0_paddr(missQueue_io_forward_0_paddr),
    .io_forward_0_forward_mshr(missQueue_io_forward_0_forward_mshr),
    .io_forward_0_forwardData_0(missQueue_io_forward_0_forwardData_0),
    .io_forward_0_forwardData_1(missQueue_io_forward_0_forwardData_1),
    .io_forward_0_forwardData_2(missQueue_io_forward_0_forwardData_2),
    .io_forward_0_forwardData_3(missQueue_io_forward_0_forwardData_3),
    .io_forward_0_forwardData_4(missQueue_io_forward_0_forwardData_4),
    .io_forward_0_forwardData_5(missQueue_io_forward_0_forwardData_5),
    .io_forward_0_forwardData_6(missQueue_io_forward_0_forwardData_6),
    .io_forward_0_forwardData_7(missQueue_io_forward_0_forwardData_7),
    .io_forward_0_forwardData_8(missQueue_io_forward_0_forwardData_8),
    .io_forward_0_forwardData_9(missQueue_io_forward_0_forwardData_9),
    .io_forward_0_forwardData_10(missQueue_io_forward_0_forwardData_10),
    .io_forward_0_forwardData_11(missQueue_io_forward_0_forwardData_11),
    .io_forward_0_forwardData_12(missQueue_io_forward_0_forwardData_12),
    .io_forward_0_forwardData_13(missQueue_io_forward_0_forwardData_13),
    .io_forward_0_forwardData_14(missQueue_io_forward_0_forwardData_14),
    .io_forward_0_forwardData_15(missQueue_io_forward_0_forwardData_15),
    .io_forward_0_forward_result_valid(missQueue_io_forward_0_forward_result_valid),
    .io_forward_1_valid(missQueue_io_forward_1_valid),
    .io_forward_1_mshrid(missQueue_io_forward_1_mshrid),
    .io_forward_1_paddr(missQueue_io_forward_1_paddr),
    .io_forward_1_forward_mshr(missQueue_io_forward_1_forward_mshr),
    .io_forward_1_forwardData_0(missQueue_io_forward_1_forwardData_0),
    .io_forward_1_forwardData_1(missQueue_io_forward_1_forwardData_1),
    .io_forward_1_forwardData_2(missQueue_io_forward_1_forwardData_2),
    .io_forward_1_forwardData_3(missQueue_io_forward_1_forwardData_3),
    .io_forward_1_forwardData_4(missQueue_io_forward_1_forwardData_4),
    .io_forward_1_forwardData_5(missQueue_io_forward_1_forwardData_5),
    .io_forward_1_forwardData_6(missQueue_io_forward_1_forwardData_6),
    .io_forward_1_forwardData_7(missQueue_io_forward_1_forwardData_7),
    .io_forward_1_forwardData_8(missQueue_io_forward_1_forwardData_8),
    .io_forward_1_forwardData_9(missQueue_io_forward_1_forwardData_9),
    .io_forward_1_forwardData_10(missQueue_io_forward_1_forwardData_10),
    .io_forward_1_forwardData_11(missQueue_io_forward_1_forwardData_11),
    .io_forward_1_forwardData_12(missQueue_io_forward_1_forwardData_12),
    .io_forward_1_forwardData_13(missQueue_io_forward_1_forwardData_13),
    .io_forward_1_forwardData_14(missQueue_io_forward_1_forwardData_14),
    .io_forward_1_forwardData_15(missQueue_io_forward_1_forwardData_15),
    .io_forward_1_forward_result_valid(missQueue_io_forward_1_forward_result_valid),
    .io_l2_pf_store_only(missQueue_io_l2_pf_store_only),
    .io_lqEmpty(missQueue_io_lqEmpty),
    .io_mq_enq_cancel(missQueue_io_mq_enq_cancel),
    .io_perf_0_value(missQueue_io_perf_0_value),
    .io_perf_1_value(missQueue_io_perf_1_value),
    .io_perf_2_value(missQueue_io_perf_2_value),
    .io_perf_3_value(missQueue_io_perf_3_value),
    .io_perf_4_value(missQueue_io_perf_4_value),
    .rob_head_vaddr_0_valid(missQueue_rob_head_vaddr_0_valid),
    .rob_head_vaddr_0_bits(missQueue_rob_head_vaddr_0_bits)
  );
  ProbeQueue probeQueue ( // @[DCacheWrapper.scala 830:28]
    .clock(probeQueue_clock),
    .reset(probeQueue_reset),
    .io_mem_probe_ready(probeQueue_io_mem_probe_ready),
    .io_mem_probe_valid(probeQueue_io_mem_probe_valid),
    .io_mem_probe_bits_param(probeQueue_io_mem_probe_bits_param),
    .io_mem_probe_bits_address(probeQueue_io_mem_probe_bits_address),
    .io_mem_probe_bits_data(probeQueue_io_mem_probe_bits_data),
    .io_pipe_req_ready(probeQueue_io_pipe_req_ready),
    .io_pipe_req_valid(probeQueue_io_pipe_req_valid),
    .io_pipe_req_bits_miss(probeQueue_io_pipe_req_bits_miss),
    .io_pipe_req_bits_miss_id(probeQueue_io_pipe_req_bits_miss_id),
    .io_pipe_req_bits_miss_param(probeQueue_io_pipe_req_bits_miss_param),
    .io_pipe_req_bits_miss_dirty(probeQueue_io_pipe_req_bits_miss_dirty),
    .io_pipe_req_bits_miss_way_en(probeQueue_io_pipe_req_bits_miss_way_en),
    .io_pipe_req_bits_probe(probeQueue_io_pipe_req_bits_probe),
    .io_pipe_req_bits_probe_param(probeQueue_io_pipe_req_bits_probe_param),
    .io_pipe_req_bits_probe_need_data(probeQueue_io_pipe_req_bits_probe_need_data),
    .io_pipe_req_bits_source(probeQueue_io_pipe_req_bits_source),
    .io_pipe_req_bits_cmd(probeQueue_io_pipe_req_bits_cmd),
    .io_pipe_req_bits_vaddr(probeQueue_io_pipe_req_bits_vaddr),
    .io_pipe_req_bits_addr(probeQueue_io_pipe_req_bits_addr),
    .io_pipe_req_bits_store_data(probeQueue_io_pipe_req_bits_store_data),
    .io_pipe_req_bits_store_mask(probeQueue_io_pipe_req_bits_store_mask),
    .io_pipe_req_bits_word_idx(probeQueue_io_pipe_req_bits_word_idx),
    .io_pipe_req_bits_amo_data(probeQueue_io_pipe_req_bits_amo_data),
    .io_pipe_req_bits_amo_mask(probeQueue_io_pipe_req_bits_amo_mask),
    .io_pipe_req_bits_error(probeQueue_io_pipe_req_bits_error),
    .io_pipe_req_bits_replace(probeQueue_io_pipe_req_bits_replace),
    .io_pipe_req_bits_replace_way_en(probeQueue_io_pipe_req_bits_replace_way_en),
    .io_pipe_req_bits_id(probeQueue_io_pipe_req_bits_id),
    .io_lrsc_locked_block_valid(probeQueue_io_lrsc_locked_block_valid),
    .io_lrsc_locked_block_bits(probeQueue_io_lrsc_locked_block_bits),
    .io_update_resv_set(probeQueue_io_update_resv_set),
    .io_perf_0_value(probeQueue_io_perf_0_value),
    .io_perf_1_value(probeQueue_io_perf_1_value),
    .io_perf_2_value(probeQueue_io_perf_2_value),
    .io_perf_3_value(probeQueue_io_perf_3_value),
    .io_perf_4_value(probeQueue_io_perf_4_value)
  );
  WritebackQueue wb ( // @[DCacheWrapper.scala 831:28]
    .clock(wb_clock),
    .reset(wb_reset),
    .io_req_ready(wb_io_req_ready),
    .io_req_valid(wb_io_req_valid),
    .io_req_bits_param(wb_io_req_bits_param),
    .io_req_bits_voluntary(wb_io_req_bits_voluntary),
    .io_req_bits_hasData(wb_io_req_bits_hasData),
    .io_req_bits_delay_release(wb_io_req_bits_delay_release),
    .io_req_bits_miss_id(wb_io_req_bits_miss_id),
    .io_req_bits_addr(wb_io_req_bits_addr),
    .io_req_bits_data(wb_io_req_bits_data),
    .io_req_ready_dup_0(wb_io_req_ready_dup_0),
    .io_req_ready_dup_1(wb_io_req_ready_dup_1),
    .io_req_ready_dup_2(wb_io_req_ready_dup_2),
    .io_req_ready_dup_3(wb_io_req_ready_dup_3),
    .io_req_ready_dup_4(wb_io_req_ready_dup_4),
    .io_req_ready_dup_5(wb_io_req_ready_dup_5),
    .io_req_ready_dup_6(wb_io_req_ready_dup_6),
    .io_req_ready_dup_7(wb_io_req_ready_dup_7),
    .io_req_ready_dup_8(wb_io_req_ready_dup_8),
    .io_req_ready_dup_9(wb_io_req_ready_dup_9),
    .io_req_ready_dup_10(wb_io_req_ready_dup_10),
    .io_req_ready_dup_11(wb_io_req_ready_dup_11),
    .io_mem_release_ready(wb_io_mem_release_ready),
    .io_mem_release_valid(wb_io_mem_release_valid),
    .io_mem_release_bits_opcode(wb_io_mem_release_bits_opcode),
    .io_mem_release_bits_param(wb_io_mem_release_bits_param),
    .io_mem_release_bits_size(wb_io_mem_release_bits_size),
    .io_mem_release_bits_source(wb_io_mem_release_bits_source),
    .io_mem_release_bits_address(wb_io_mem_release_bits_address),
    .io_mem_release_bits_data(wb_io_mem_release_bits_data),
    .io_mem_grant_valid(wb_io_mem_grant_valid),
    .io_mem_grant_bits_source(wb_io_mem_grant_bits_source),
    .io_release_wakeup_valid(wb_io_release_wakeup_valid),
    .io_release_wakeup_bits(wb_io_release_wakeup_bits),
    .io_release_update_valid(wb_io_release_update_valid),
    .io_release_update_bits_addr(wb_io_release_update_bits_addr),
    .io_release_update_bits_mask(wb_io_release_update_bits_mask),
    .io_release_update_bits_data(wb_io_release_update_bits_data),
    .io_probe_ttob_check_req_valid(wb_io_probe_ttob_check_req_valid),
    .io_probe_ttob_check_req_bits_addr(wb_io_probe_ttob_check_req_bits_addr),
    .io_probe_ttob_check_resp_bits_toN(wb_io_probe_ttob_check_resp_bits_toN),
    .io_miss_req_valid(wb_io_miss_req_valid),
    .io_miss_req_bits(wb_io_miss_req_bits),
    .io_block_miss_req(wb_io_block_miss_req),
    .io_perf_0_value(wb_io_perf_0_value),
    .io_perf_1_value(wb_io_perf_1_value),
    .io_perf_2_value(wb_io_perf_2_value),
    .io_perf_3_value(wb_io_perf_3_value),
    .io_perf_4_value(wb_io_perf_4_value)
  );
  Arbiter_16 tag_write_arb ( // @[DCacheWrapper.scala 962:29]
    .io_in_0_valid(tag_write_arb_io_in_0_valid),
    .io_in_0_bits_idx(tag_write_arb_io_in_0_bits_idx),
    .io_in_0_bits_way_en(tag_write_arb_io_in_0_bits_way_en),
    .io_in_0_bits_tag(tag_write_arb_io_in_0_bits_tag),
    .io_in_1_ready(tag_write_arb_io_in_1_ready),
    .io_in_1_valid(tag_write_arb_io_in_1_valid),
    .io_in_1_bits_idx(tag_write_arb_io_in_1_bits_idx),
    .io_in_1_bits_way_en(tag_write_arb_io_in_1_bits_way_en),
    .io_in_1_bits_tag(tag_write_arb_io_in_1_bits_tag),
    .io_out_valid(tag_write_arb_io_out_valid),
    .io_out_bits_idx(tag_write_arb_io_out_bits_idx),
    .io_out_bits_way_en(tag_write_arb_io_out_bits_way_en),
    .io_out_bits_tag(tag_write_arb_io_out_bits_tag)
  );
  Arbiter_17 dataWriteArb ( // @[DCacheWrapper.scala 976:28]
    .io_in_0_valid(dataWriteArb_io_in_0_valid),
    .io_in_0_bits_wmask(dataWriteArb_io_in_0_bits_wmask),
    .io_in_0_bits_data_0(dataWriteArb_io_in_0_bits_data_0),
    .io_in_0_bits_data_1(dataWriteArb_io_in_0_bits_data_1),
    .io_in_0_bits_data_2(dataWriteArb_io_in_0_bits_data_2),
    .io_in_0_bits_data_3(dataWriteArb_io_in_0_bits_data_3),
    .io_in_0_bits_data_4(dataWriteArb_io_in_0_bits_data_4),
    .io_in_0_bits_data_5(dataWriteArb_io_in_0_bits_data_5),
    .io_in_0_bits_data_6(dataWriteArb_io_in_0_bits_data_6),
    .io_in_0_bits_data_7(dataWriteArb_io_in_0_bits_data_7),
    .io_in_1_ready(dataWriteArb_io_in_1_ready),
    .io_in_1_valid(dataWriteArb_io_in_1_valid),
    .io_in_1_bits_wmask(dataWriteArb_io_in_1_bits_wmask),
    .io_in_1_bits_data_0(dataWriteArb_io_in_1_bits_data_0),
    .io_in_1_bits_data_1(dataWriteArb_io_in_1_bits_data_1),
    .io_in_1_bits_data_2(dataWriteArb_io_in_1_bits_data_2),
    .io_in_1_bits_data_3(dataWriteArb_io_in_1_bits_data_3),
    .io_in_1_bits_data_4(dataWriteArb_io_in_1_bits_data_4),
    .io_in_1_bits_data_5(dataWriteArb_io_in_1_bits_data_5),
    .io_in_1_bits_data_6(dataWriteArb_io_in_1_bits_data_6),
    .io_in_1_bits_data_7(dataWriteArb_io_in_1_bits_data_7),
    .io_out_valid(dataWriteArb_io_out_valid),
    .io_out_bits_wmask(dataWriteArb_io_out_bits_wmask),
    .io_out_bits_data_0(dataWriteArb_io_out_bits_data_0),
    .io_out_bits_data_1(dataWriteArb_io_out_bits_data_1),
    .io_out_bits_data_2(dataWriteArb_io_out_bits_data_2),
    .io_out_bits_data_3(dataWriteArb_io_out_bits_data_3),
    .io_out_bits_data_4(dataWriteArb_io_out_bits_data_4),
    .io_out_bits_data_5(dataWriteArb_io_out_bits_data_5),
    .io_out_bits_data_6(dataWriteArb_io_out_bits_data_6),
    .io_out_bits_data_7(dataWriteArb_io_out_bits_data_7)
  );
  Arbiter_18 dataWriteArb_dup ( // @[DCacheWrapper.scala 983:34]
    .io_in_0_valid(dataWriteArb_dup_io_in_0_valid),
    .io_in_0_bits_way_en(dataWriteArb_dup_io_in_0_bits_way_en),
    .io_in_0_bits_addr(dataWriteArb_dup_io_in_0_bits_addr),
    .io_in_1_valid(dataWriteArb_dup_io_in_1_valid),
    .io_in_1_bits_way_en(dataWriteArb_dup_io_in_1_bits_way_en),
    .io_in_1_bits_addr(dataWriteArb_dup_io_in_1_bits_addr),
    .io_out_valid(dataWriteArb_dup_io_out_valid),
    .io_out_bits_way_en(dataWriteArb_dup_io_out_bits_way_en),
    .io_out_bits_addr(dataWriteArb_dup_io_out_bits_addr)
  );
  Arbiter_18 dataWriteArb_dup_1 ( // @[DCacheWrapper.scala 983:34]
    .io_in_0_valid(dataWriteArb_dup_1_io_in_0_valid),
    .io_in_0_bits_way_en(dataWriteArb_dup_1_io_in_0_bits_way_en),
    .io_in_0_bits_addr(dataWriteArb_dup_1_io_in_0_bits_addr),
    .io_in_1_valid(dataWriteArb_dup_1_io_in_1_valid),
    .io_in_1_bits_way_en(dataWriteArb_dup_1_io_in_1_bits_way_en),
    .io_in_1_bits_addr(dataWriteArb_dup_1_io_in_1_bits_addr),
    .io_out_valid(dataWriteArb_dup_1_io_out_valid),
    .io_out_bits_way_en(dataWriteArb_dup_1_io_out_bits_way_en),
    .io_out_bits_addr(dataWriteArb_dup_1_io_out_bits_addr)
  );
  Arbiter_18 dataWriteArb_dup_2 ( // @[DCacheWrapper.scala 983:34]
    .io_in_0_valid(dataWriteArb_dup_2_io_in_0_valid),
    .io_in_0_bits_way_en(dataWriteArb_dup_2_io_in_0_bits_way_en),
    .io_in_0_bits_addr(dataWriteArb_dup_2_io_in_0_bits_addr),
    .io_in_1_valid(dataWriteArb_dup_2_io_in_1_valid),
    .io_in_1_bits_way_en(dataWriteArb_dup_2_io_in_1_bits_way_en),
    .io_in_1_bits_addr(dataWriteArb_dup_2_io_in_1_bits_addr),
    .io_out_valid(dataWriteArb_dup_2_io_out_valid),
    .io_out_bits_way_en(dataWriteArb_dup_2_io_out_bits_way_en),
    .io_out_bits_addr(dataWriteArb_dup_2_io_out_bits_addr)
  );
  Arbiter_18 dataWriteArb_dup_3 ( // @[DCacheWrapper.scala 983:34]
    .io_in_0_valid(dataWriteArb_dup_3_io_in_0_valid),
    .io_in_0_bits_way_en(dataWriteArb_dup_3_io_in_0_bits_way_en),
    .io_in_0_bits_addr(dataWriteArb_dup_3_io_in_0_bits_addr),
    .io_in_1_valid(dataWriteArb_dup_3_io_in_1_valid),
    .io_in_1_bits_way_en(dataWriteArb_dup_3_io_in_1_bits_way_en),
    .io_in_1_bits_addr(dataWriteArb_dup_3_io_in_1_bits_addr),
    .io_out_valid(dataWriteArb_dup_3_io_out_valid),
    .io_out_bits_way_en(dataWriteArb_dup_3_io_out_bits_way_en),
    .io_out_bits_addr(dataWriteArb_dup_3_io_out_bits_addr)
  );
  Arbiter_18 dataWriteArb_dup_4 ( // @[DCacheWrapper.scala 983:34]
    .io_in_0_valid(dataWriteArb_dup_4_io_in_0_valid),
    .io_in_0_bits_way_en(dataWriteArb_dup_4_io_in_0_bits_way_en),
    .io_in_0_bits_addr(dataWriteArb_dup_4_io_in_0_bits_addr),
    .io_in_1_valid(dataWriteArb_dup_4_io_in_1_valid),
    .io_in_1_bits_way_en(dataWriteArb_dup_4_io_in_1_bits_way_en),
    .io_in_1_bits_addr(dataWriteArb_dup_4_io_in_1_bits_addr),
    .io_out_valid(dataWriteArb_dup_4_io_out_valid),
    .io_out_bits_way_en(dataWriteArb_dup_4_io_out_bits_way_en),
    .io_out_bits_addr(dataWriteArb_dup_4_io_out_bits_addr)
  );
  Arbiter_18 dataWriteArb_dup_5 ( // @[DCacheWrapper.scala 983:34]
    .io_in_0_valid(dataWriteArb_dup_5_io_in_0_valid),
    .io_in_0_bits_way_en(dataWriteArb_dup_5_io_in_0_bits_way_en),
    .io_in_0_bits_addr(dataWriteArb_dup_5_io_in_0_bits_addr),
    .io_in_1_valid(dataWriteArb_dup_5_io_in_1_valid),
    .io_in_1_bits_way_en(dataWriteArb_dup_5_io_in_1_bits_way_en),
    .io_in_1_bits_addr(dataWriteArb_dup_5_io_in_1_bits_addr),
    .io_out_valid(dataWriteArb_dup_5_io_out_valid),
    .io_out_bits_way_en(dataWriteArb_dup_5_io_out_bits_way_en),
    .io_out_bits_addr(dataWriteArb_dup_5_io_out_bits_addr)
  );
  Arbiter_18 dataWriteArb_dup_6 ( // @[DCacheWrapper.scala 983:34]
    .io_in_0_valid(dataWriteArb_dup_6_io_in_0_valid),
    .io_in_0_bits_way_en(dataWriteArb_dup_6_io_in_0_bits_way_en),
    .io_in_0_bits_addr(dataWriteArb_dup_6_io_in_0_bits_addr),
    .io_in_1_valid(dataWriteArb_dup_6_io_in_1_valid),
    .io_in_1_bits_way_en(dataWriteArb_dup_6_io_in_1_bits_way_en),
    .io_in_1_bits_addr(dataWriteArb_dup_6_io_in_1_bits_addr),
    .io_out_valid(dataWriteArb_dup_6_io_out_valid),
    .io_out_bits_way_en(dataWriteArb_dup_6_io_out_bits_way_en),
    .io_out_bits_addr(dataWriteArb_dup_6_io_out_bits_addr)
  );
  Arbiter_18 dataWriteArb_dup_7 ( // @[DCacheWrapper.scala 983:34]
    .io_in_0_valid(dataWriteArb_dup_7_io_in_0_valid),
    .io_in_0_bits_way_en(dataWriteArb_dup_7_io_in_0_bits_way_en),
    .io_in_0_bits_addr(dataWriteArb_dup_7_io_in_0_bits_addr),
    .io_in_1_valid(dataWriteArb_dup_7_io_in_1_valid),
    .io_in_1_bits_way_en(dataWriteArb_dup_7_io_in_1_bits_way_en),
    .io_in_1_bits_addr(dataWriteArb_dup_7_io_in_1_bits_addr),
    .io_out_valid(dataWriteArb_dup_7_io_out_valid),
    .io_out_bits_way_en(dataWriteArb_dup_7_io_out_bits_way_en),
    .io_out_bits_addr(dataWriteArb_dup_7_io_out_bits_addr)
  );
  ArbiterFilterByCacheLineAddr missReqArb ( // @[DCacheWrapper.scala 1142:26]
    .io_in_0_ready(missReqArb_io_in_0_ready),
    .io_in_0_valid(missReqArb_io_in_0_valid),
    .io_in_0_bits_source(missReqArb_io_in_0_bits_source),
    .io_in_0_bits_cmd(missReqArb_io_in_0_bits_cmd),
    .io_in_0_bits_addr(missReqArb_io_in_0_bits_addr),
    .io_in_0_bits_vaddr(missReqArb_io_in_0_bits_vaddr),
    .io_in_0_bits_way_en(missReqArb_io_in_0_bits_way_en),
    .io_in_0_bits_word_idx(missReqArb_io_in_0_bits_word_idx),
    .io_in_0_bits_amo_data(missReqArb_io_in_0_bits_amo_data),
    .io_in_0_bits_amo_mask(missReqArb_io_in_0_bits_amo_mask),
    .io_in_0_bits_req_coh_state(missReqArb_io_in_0_bits_req_coh_state),
    .io_in_0_bits_replace_coh_state(missReqArb_io_in_0_bits_replace_coh_state),
    .io_in_0_bits_replace_tag(missReqArb_io_in_0_bits_replace_tag),
    .io_in_0_bits_id(missReqArb_io_in_0_bits_id),
    .io_in_0_bits_store_data(missReqArb_io_in_0_bits_store_data),
    .io_in_0_bits_store_mask(missReqArb_io_in_0_bits_store_mask),
    .io_in_1_ready(missReqArb_io_in_1_ready),
    .io_in_1_valid(missReqArb_io_in_1_valid),
    .io_in_1_bits_source(missReqArb_io_in_1_bits_source),
    .io_in_1_bits_cmd(missReqArb_io_in_1_bits_cmd),
    .io_in_1_bits_addr(missReqArb_io_in_1_bits_addr),
    .io_in_1_bits_vaddr(missReqArb_io_in_1_bits_vaddr),
    .io_in_1_bits_way_en(missReqArb_io_in_1_bits_way_en),
    .io_in_1_bits_req_coh_state(missReqArb_io_in_1_bits_req_coh_state),
    .io_in_1_bits_replace_coh_state(missReqArb_io_in_1_bits_replace_coh_state),
    .io_in_1_bits_replace_tag(missReqArb_io_in_1_bits_replace_tag),
    .io_in_1_bits_cancel(missReqArb_io_in_1_bits_cancel),
    .io_in_2_ready(missReqArb_io_in_2_ready),
    .io_in_2_valid(missReqArb_io_in_2_valid),
    .io_in_2_bits_source(missReqArb_io_in_2_bits_source),
    .io_in_2_bits_cmd(missReqArb_io_in_2_bits_cmd),
    .io_in_2_bits_addr(missReqArb_io_in_2_bits_addr),
    .io_in_2_bits_vaddr(missReqArb_io_in_2_bits_vaddr),
    .io_in_2_bits_way_en(missReqArb_io_in_2_bits_way_en),
    .io_in_2_bits_req_coh_state(missReqArb_io_in_2_bits_req_coh_state),
    .io_in_2_bits_replace_coh_state(missReqArb_io_in_2_bits_replace_coh_state),
    .io_in_2_bits_replace_tag(missReqArb_io_in_2_bits_replace_tag),
    .io_in_2_bits_cancel(missReqArb_io_in_2_bits_cancel),
    .io_out_ready(missReqArb_io_out_ready),
    .io_out_valid(missReqArb_io_out_valid),
    .io_out_bits_source(missReqArb_io_out_bits_source),
    .io_out_bits_cmd(missReqArb_io_out_bits_cmd),
    .io_out_bits_addr(missReqArb_io_out_bits_addr),
    .io_out_bits_vaddr(missReqArb_io_out_bits_vaddr),
    .io_out_bits_way_en(missReqArb_io_out_bits_way_en),
    .io_out_bits_word_idx(missReqArb_io_out_bits_word_idx),
    .io_out_bits_amo_data(missReqArb_io_out_bits_amo_data),
    .io_out_bits_amo_mask(missReqArb_io_out_bits_amo_mask),
    .io_out_bits_req_coh_state(missReqArb_io_out_bits_req_coh_state),
    .io_out_bits_replace_coh_state(missReqArb_io_out_bits_replace_coh_state),
    .io_out_bits_replace_tag(missReqArb_io_out_bits_replace_tag),
    .io_out_bits_id(missReqArb_io_out_bits_id),
    .io_out_bits_cancel(missReqArb_io_out_bits_cancel),
    .io_out_bits_store_data(missReqArb_io_out_bits_store_data),
    .io_out_bits_store_mask(missReqArb_io_out_bits_store_mask)
  );
  Arbiter_26 main_pipe_atomic_req_arb ( // @[DCacheWrapper.scala 262:21]
    .io_in_0_ready(main_pipe_atomic_req_arb_io_in_0_ready),
    .io_in_0_valid(main_pipe_atomic_req_arb_io_in_0_valid),
    .io_in_0_bits_miss(main_pipe_atomic_req_arb_io_in_0_bits_miss),
    .io_in_0_bits_miss_id(main_pipe_atomic_req_arb_io_in_0_bits_miss_id),
    .io_in_0_bits_miss_param(main_pipe_atomic_req_arb_io_in_0_bits_miss_param),
    .io_in_0_bits_miss_way_en(main_pipe_atomic_req_arb_io_in_0_bits_miss_way_en),
    .io_in_0_bits_source(main_pipe_atomic_req_arb_io_in_0_bits_source),
    .io_in_0_bits_cmd(main_pipe_atomic_req_arb_io_in_0_bits_cmd),
    .io_in_0_bits_vaddr(main_pipe_atomic_req_arb_io_in_0_bits_vaddr),
    .io_in_0_bits_addr(main_pipe_atomic_req_arb_io_in_0_bits_addr),
    .io_in_0_bits_store_data(main_pipe_atomic_req_arb_io_in_0_bits_store_data),
    .io_in_0_bits_store_mask(main_pipe_atomic_req_arb_io_in_0_bits_store_mask),
    .io_in_0_bits_word_idx(main_pipe_atomic_req_arb_io_in_0_bits_word_idx),
    .io_in_0_bits_amo_data(main_pipe_atomic_req_arb_io_in_0_bits_amo_data),
    .io_in_0_bits_amo_mask(main_pipe_atomic_req_arb_io_in_0_bits_amo_mask),
    .io_in_0_bits_error(main_pipe_atomic_req_arb_io_in_0_bits_error),
    .io_in_0_bits_id(main_pipe_atomic_req_arb_io_in_0_bits_id),
    .io_in_1_ready(main_pipe_atomic_req_arb_io_in_1_ready),
    .io_in_1_valid(main_pipe_atomic_req_arb_io_in_1_valid),
    .io_in_1_bits_cmd(main_pipe_atomic_req_arb_io_in_1_bits_cmd),
    .io_in_1_bits_vaddr(main_pipe_atomic_req_arb_io_in_1_bits_vaddr),
    .io_in_1_bits_addr(main_pipe_atomic_req_arb_io_in_1_bits_addr),
    .io_in_1_bits_word_idx(main_pipe_atomic_req_arb_io_in_1_bits_word_idx),
    .io_in_1_bits_amo_data(main_pipe_atomic_req_arb_io_in_1_bits_amo_data),
    .io_in_1_bits_amo_mask(main_pipe_atomic_req_arb_io_in_1_bits_amo_mask),
    .io_out_ready(main_pipe_atomic_req_arb_io_out_ready),
    .io_out_valid(main_pipe_atomic_req_arb_io_out_valid),
    .io_out_bits_miss(main_pipe_atomic_req_arb_io_out_bits_miss),
    .io_out_bits_miss_id(main_pipe_atomic_req_arb_io_out_bits_miss_id),
    .io_out_bits_miss_param(main_pipe_atomic_req_arb_io_out_bits_miss_param),
    .io_out_bits_miss_way_en(main_pipe_atomic_req_arb_io_out_bits_miss_way_en),
    .io_out_bits_source(main_pipe_atomic_req_arb_io_out_bits_source),
    .io_out_bits_cmd(main_pipe_atomic_req_arb_io_out_bits_cmd),
    .io_out_bits_vaddr(main_pipe_atomic_req_arb_io_out_bits_vaddr),
    .io_out_bits_addr(main_pipe_atomic_req_arb_io_out_bits_addr),
    .io_out_bits_store_data(main_pipe_atomic_req_arb_io_out_bits_store_data),
    .io_out_bits_store_mask(main_pipe_atomic_req_arb_io_out_bits_store_mask),
    .io_out_bits_word_idx(main_pipe_atomic_req_arb_io_out_bits_word_idx),
    .io_out_bits_amo_data(main_pipe_atomic_req_arb_io_out_bits_amo_data),
    .io_out_bits_amo_mask(main_pipe_atomic_req_arb_io_out_bits_amo_mask),
    .io_out_bits_error(main_pipe_atomic_req_arb_io_out_bits_error),
    .io_out_bits_id(main_pipe_atomic_req_arb_io_out_bits_id)
  );
  PipelineRegModule_25 pipelineReg ( // @[MemCommon.scala 400:29]
    .clock(pipelineReg_clock),
    .reset(pipelineReg_reset),
    .io_in_ready(pipelineReg_io_in_ready),
    .io_in_valid(pipelineReg_io_in_valid),
    .io_in_bits_miss(pipelineReg_io_in_bits_miss),
    .io_in_bits_miss_id(pipelineReg_io_in_bits_miss_id),
    .io_in_bits_miss_param(pipelineReg_io_in_bits_miss_param),
    .io_in_bits_miss_dirty(pipelineReg_io_in_bits_miss_dirty),
    .io_in_bits_miss_way_en(pipelineReg_io_in_bits_miss_way_en),
    .io_in_bits_probe(pipelineReg_io_in_bits_probe),
    .io_in_bits_probe_param(pipelineReg_io_in_bits_probe_param),
    .io_in_bits_probe_need_data(pipelineReg_io_in_bits_probe_need_data),
    .io_in_bits_source(pipelineReg_io_in_bits_source),
    .io_in_bits_cmd(pipelineReg_io_in_bits_cmd),
    .io_in_bits_vaddr(pipelineReg_io_in_bits_vaddr),
    .io_in_bits_addr(pipelineReg_io_in_bits_addr),
    .io_in_bits_store_data(pipelineReg_io_in_bits_store_data),
    .io_in_bits_store_mask(pipelineReg_io_in_bits_store_mask),
    .io_in_bits_word_idx(pipelineReg_io_in_bits_word_idx),
    .io_in_bits_amo_data(pipelineReg_io_in_bits_amo_data),
    .io_in_bits_amo_mask(pipelineReg_io_in_bits_amo_mask),
    .io_in_bits_error(pipelineReg_io_in_bits_error),
    .io_in_bits_replace(pipelineReg_io_in_bits_replace),
    .io_in_bits_replace_way_en(pipelineReg_io_in_bits_replace_way_en),
    .io_in_bits_id(pipelineReg_io_in_bits_id),
    .io_out_ready(pipelineReg_io_out_ready),
    .io_out_valid(pipelineReg_io_out_valid),
    .io_out_bits_miss(pipelineReg_io_out_bits_miss),
    .io_out_bits_miss_id(pipelineReg_io_out_bits_miss_id),
    .io_out_bits_miss_param(pipelineReg_io_out_bits_miss_param),
    .io_out_bits_miss_dirty(pipelineReg_io_out_bits_miss_dirty),
    .io_out_bits_miss_way_en(pipelineReg_io_out_bits_miss_way_en),
    .io_out_bits_probe(pipelineReg_io_out_bits_probe),
    .io_out_bits_probe_param(pipelineReg_io_out_bits_probe_param),
    .io_out_bits_probe_need_data(pipelineReg_io_out_bits_probe_need_data),
    .io_out_bits_source(pipelineReg_io_out_bits_source),
    .io_out_bits_cmd(pipelineReg_io_out_bits_cmd),
    .io_out_bits_vaddr(pipelineReg_io_out_bits_vaddr),
    .io_out_bits_addr(pipelineReg_io_out_bits_addr),
    .io_out_bits_store_data(pipelineReg_io_out_bits_store_data),
    .io_out_bits_store_mask(pipelineReg_io_out_bits_store_mask),
    .io_out_bits_word_idx(pipelineReg_io_out_bits_word_idx),
    .io_out_bits_amo_data(pipelineReg_io_out_bits_amo_data),
    .io_out_bits_amo_mask(pipelineReg_io_out_bits_amo_mask),
    .io_out_bits_error(pipelineReg_io_out_bits_error),
    .io_out_bits_replace(pipelineReg_io_out_bits_replace),
    .io_out_bits_replace_way_en(pipelineReg_io_out_bits_replace_way_en),
    .io_out_bits_id(pipelineReg_io_out_bits_id)
  );
  CSRCacheOpDecoder_1 cacheOpDecoder ( // @[DCacheWrapper.scala 1402:30]
    .clock(cacheOpDecoder_clock),
    .reset(cacheOpDecoder_reset),
    .io_csr_distribute_csr_wvalid(cacheOpDecoder_io_csr_distribute_csr_wvalid),
    .io_csr_distribute_csr_waddr(cacheOpDecoder_io_csr_distribute_csr_waddr),
    .io_csr_distribute_csr_wdata(cacheOpDecoder_io_csr_distribute_csr_wdata),
    .io_csr_update_wvalid(cacheOpDecoder_io_csr_update_wvalid),
    .io_csr_update_waddr(cacheOpDecoder_io_csr_update_waddr),
    .io_csr_update_wdata(cacheOpDecoder_io_csr_update_wdata),
    .io_cache_req_valid(cacheOpDecoder_io_cache_req_valid),
    .io_cache_req_bits_wayNum(cacheOpDecoder_io_cache_req_bits_wayNum),
    .io_cache_req_bits_index(cacheOpDecoder_io_cache_req_bits_index),
    .io_cache_req_bits_write_tag_low(cacheOpDecoder_io_cache_req_bits_write_tag_low),
    .io_cache_req_bits_write_tag_ecc(cacheOpDecoder_io_cache_req_bits_write_tag_ecc),
    .io_cache_req_bits_write_data_vec_0(cacheOpDecoder_io_cache_req_bits_write_data_vec_0),
    .io_cache_req_bits_write_data_vec_1(cacheOpDecoder_io_cache_req_bits_write_data_vec_1),
    .io_cache_req_bits_write_data_vec_2(cacheOpDecoder_io_cache_req_bits_write_data_vec_2),
    .io_cache_req_bits_write_data_vec_3(cacheOpDecoder_io_cache_req_bits_write_data_vec_3),
    .io_cache_req_bits_write_data_vec_4(cacheOpDecoder_io_cache_req_bits_write_data_vec_4),
    .io_cache_req_bits_write_data_vec_5(cacheOpDecoder_io_cache_req_bits_write_data_vec_5),
    .io_cache_req_bits_write_data_vec_6(cacheOpDecoder_io_cache_req_bits_write_data_vec_6),
    .io_cache_req_bits_write_data_vec_7(cacheOpDecoder_io_cache_req_bits_write_data_vec_7),
    .io_cache_req_bits_write_data_ecc(cacheOpDecoder_io_cache_req_bits_write_data_ecc),
    .io_cache_req_bits_bank_num(cacheOpDecoder_io_cache_req_bits_bank_num),
    .io_cache_resp_valid(cacheOpDecoder_io_cache_resp_valid),
    .io_cache_resp_bits_read_tag_low(cacheOpDecoder_io_cache_resp_bits_read_tag_low),
    .io_cache_resp_bits_read_tag_ecc(cacheOpDecoder_io_cache_resp_bits_read_tag_ecc),
    .io_cache_resp_bits_read_data_vec_0(cacheOpDecoder_io_cache_resp_bits_read_data_vec_0),
    .io_cache_resp_bits_read_data_vec_1(cacheOpDecoder_io_cache_resp_bits_read_data_vec_1),
    .io_cache_resp_bits_read_data_vec_2(cacheOpDecoder_io_cache_resp_bits_read_data_vec_2),
    .io_cache_resp_bits_read_data_vec_3(cacheOpDecoder_io_cache_resp_bits_read_data_vec_3),
    .io_cache_resp_bits_read_data_vec_4(cacheOpDecoder_io_cache_resp_bits_read_data_vec_4),
    .io_cache_resp_bits_read_data_vec_5(cacheOpDecoder_io_cache_resp_bits_read_data_vec_5),
    .io_cache_resp_bits_read_data_vec_6(cacheOpDecoder_io_cache_resp_bits_read_data_vec_6),
    .io_cache_resp_bits_read_data_vec_7(cacheOpDecoder_io_cache_resp_bits_read_data_vec_7),
    .io_cache_resp_bits_read_data_ecc(cacheOpDecoder_io_cache_resp_bits_read_data_ecc),
    .io_cache_req_dup_0_valid(cacheOpDecoder_io_cache_req_dup_0_valid),
    .io_cache_req_dup_1_valid(cacheOpDecoder_io_cache_req_dup_1_valid),
    .io_cache_req_dup_2_valid(cacheOpDecoder_io_cache_req_dup_2_valid),
    .io_cache_req_dup_3_valid(cacheOpDecoder_io_cache_req_dup_3_valid),
    .io_cache_req_dup_4_valid(cacheOpDecoder_io_cache_req_dup_4_valid),
    .io_cache_req_dup_5_valid(cacheOpDecoder_io_cache_req_dup_5_valid),
    .io_cache_req_dup_6_valid(cacheOpDecoder_io_cache_req_dup_6_valid),
    .io_cache_req_dup_7_valid(cacheOpDecoder_io_cache_req_dup_7_valid),
    .io_cache_req_dup_8_valid(cacheOpDecoder_io_cache_req_dup_8_valid),
    .io_cache_req_dup_9_valid(cacheOpDecoder_io_cache_req_dup_9_valid),
    .io_cache_req_dup_10_valid(cacheOpDecoder_io_cache_req_dup_10_valid),
    .io_cache_req_dup_11_valid(cacheOpDecoder_io_cache_req_dup_11_valid),
    .io_cache_req_dup_12_valid(cacheOpDecoder_io_cache_req_dup_12_valid),
    .io_cache_req_dup_13_valid(cacheOpDecoder_io_cache_req_dup_13_valid),
    .io_cache_req_dup_14_valid(cacheOpDecoder_io_cache_req_dup_14_valid),
    .io_cache_req_dup_15_valid(cacheOpDecoder_io_cache_req_dup_15_valid),
    .io_cacheOp_req_bits_opCode_dup_0(cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_0),
    .io_cacheOp_req_bits_opCode_dup_1(cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_1),
    .io_cacheOp_req_bits_opCode_dup_2(cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_2),
    .io_cacheOp_req_bits_opCode_dup_3(cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_3),
    .io_cacheOp_req_bits_opCode_dup_4(cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_4),
    .io_cacheOp_req_bits_opCode_dup_5(cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_5),
    .io_cacheOp_req_bits_opCode_dup_6(cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_6),
    .io_cacheOp_req_bits_opCode_dup_7(cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_7),
    .io_cacheOp_req_bits_opCode_dup_8(cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_8),
    .io_cacheOp_req_bits_opCode_dup_9(cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_9),
    .io_cacheOp_req_bits_opCode_dup_10(cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_10),
    .io_cacheOp_req_bits_opCode_dup_11(cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_11),
    .io_cacheOp_req_bits_opCode_dup_12(cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_12),
    .io_cacheOp_req_bits_opCode_dup_13(cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_13),
    .io_cacheOp_req_bits_opCode_dup_14(cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_14),
    .io_cacheOp_req_bits_opCode_dup_15(cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_15),
    .io_error_source_tag(cacheOpDecoder_io_error_source_tag),
    .io_error_source_data(cacheOpDecoder_io_error_source_data),
    .io_error_source_l2(cacheOpDecoder_io_error_source_l2),
    .io_error_opType_fetch(cacheOpDecoder_io_error_opType_fetch),
    .io_error_opType_load(cacheOpDecoder_io_error_opType_load),
    .io_error_opType_store(cacheOpDecoder_io_error_opType_store),
    .io_error_opType_probe(cacheOpDecoder_io_error_opType_probe),
    .io_error_opType_release(cacheOpDecoder_io_error_opType_release),
    .io_error_opType_atom(cacheOpDecoder_io_error_opType_atom),
    .io_error_paddr(cacheOpDecoder_io_error_paddr),
    .io_error_report_to_beu(cacheOpDecoder_io_error_report_to_beu),
    .io_error_valid(cacheOpDecoder_io_error_valid)
  );
  assign auto_client_out_a_valid = missQueue_io_mem_acquire_valid; // @[Nodes.scala 1207:84 DCacheWrapper.scala 1182:9]
  assign auto_client_out_a_bits_opcode = missQueue_io_mem_acquire_bits_opcode; // @[Nodes.scala 1207:84 DCacheWrapper.scala 1182:9]
  assign auto_client_out_a_bits_param = missQueue_io_mem_acquire_bits_param; // @[Nodes.scala 1207:84 DCacheWrapper.scala 1182:9]
  assign auto_client_out_a_bits_size = missQueue_io_mem_acquire_bits_size; // @[Nodes.scala 1207:84 DCacheWrapper.scala 1182:9]
  assign auto_client_out_a_bits_source = missQueue_io_mem_acquire_bits_source; // @[Nodes.scala 1207:84 DCacheWrapper.scala 1182:9]
  assign auto_client_out_a_bits_address = missQueue_io_mem_acquire_bits_address; // @[Nodes.scala 1207:84 DCacheWrapper.scala 1182:9]
  assign auto_client_out_a_bits_user_vaddr = missQueue_io_mem_acquire_bits_user_vaddr; // @[Nodes.scala 1207:84 DCacheWrapper.scala 1182:9]
  assign auto_client_out_a_bits_user_reqSource = missQueue_io_mem_acquire_bits_user_reqSource; // @[Nodes.scala 1207:84 DCacheWrapper.scala 1182:9]
  assign auto_client_out_a_bits_user_needHint = missQueue_io_mem_acquire_bits_user_needHint; // @[Nodes.scala 1207:84 DCacheWrapper.scala 1182:9]
  assign auto_client_out_a_bits_mask = missQueue_io_mem_acquire_bits_mask; // @[Nodes.scala 1207:84 DCacheWrapper.scala 1182:9]
  assign auto_client_out_bready = probeQueue_io_mem_probe_ready & _probeQueue_io_mem_probe_valid_T; // @[DCacheWrapper.scala 1396:34]
  assign auto_client_out_c_valid = wb_io_mem_release_valid; // @[Nodes.scala 1207:84 DCacheWrapper.scala 1279:13]
  assign auto_client_out_c_bits_opcode = wb_io_mem_release_bits_opcode; // @[Nodes.scala 1207:84 DCacheWrapper.scala 1279:13]
  assign auto_client_out_c_bits_param = wb_io_mem_release_bits_param; // @[Nodes.scala 1207:84 DCacheWrapper.scala 1279:13]
  assign auto_client_out_c_bits_size = wb_io_mem_release_bits_size; // @[Nodes.scala 1207:84 DCacheWrapper.scala 1279:13]
  assign auto_client_out_c_bits_source = wb_io_mem_release_bits_source; // @[Nodes.scala 1207:84 DCacheWrapper.scala 1279:13]
  assign auto_client_out_c_bits_address = wb_io_mem_release_bits_address; // @[Nodes.scala 1207:84 DCacheWrapper.scala 1279:13]
  assign auto_client_out_c_bits_data = wb_io_mem_release_bits_data; // @[Nodes.scala 1207:84 DCacheWrapper.scala 1279:13]
  assign auto_client_out_d_ready = auto_client_out_d_bits_opcode == 3'h4 | auto_client_out_d_bits_opcode == 3'h5 ?
    missQueue_io_mem_grant_ready : _T_105; // @[DCacheWrapper.scala 1302:95 1303:28]
  assign auto_client_out_e_valid = missQueue_io_mem_finish_valid; // @[Nodes.scala 1207:84 DCacheWrapper.scala 1183:9]
  assign auto_client_out_e_bits_sink = missQueue_io_mem_finish_bits_sink; // @[Nodes.scala 1207:84 DCacheWrapper.scala 1183:9]
  assign io_lsu_load_0_req_ready = ldu_0_io_lsu_req_ready; // @[DCacheWrapper.scala 1041:19]
  assign io_lsu_load_0_resp_bits_data_delayed = ldu_0_io_lsu_resp_bits_data_delayed; // @[DCacheWrapper.scala 1041:19]
  assign io_lsu_load_0_resp_bits_miss = ldu_0_io_lsu_resp_bits_miss; // @[DCacheWrapper.scala 1041:19]
  assign io_lsu_load_0_resp_bits_tag_error = ldu_0_io_lsu_resp_bits_tag_error; // @[DCacheWrapper.scala 1041:19]
  assign io_lsu_load_0_resp_bits_mshr_id = ldu_0_io_lsu_resp_bits_mshr_id; // @[DCacheWrapper.scala 1041:19]
  assign io_lsu_load_0_resp_bits_handled = ldu_0_io_lsu_resp_bits_handled; // @[DCacheWrapper.scala 1041:19]
  assign io_lsu_load_0_resp_bits_error_delayed = ldu_0_io_lsu_resp_bits_error_delayed; // @[DCacheWrapper.scala 1041:19]
  assign io_lsu_load_0_s1_disable_fast_wakeup = ldu_0_io_lsu_s1_disable_fast_wakeup; // @[DCacheWrapper.scala 1041:19]
  assign io_lsu_load_0_s2_bank_conflict = ldu_0_io_lsu_s2_bank_conflict; // @[DCacheWrapper.scala 1041:19]
  assign io_lsu_load_0_s2_mq_nack = ldu_0_io_lsu_s2_mq_nack; // @[DCacheWrapper.scala 1041:19]
  assign io_lsu_load_1_req_ready = ldu_1_io_lsu_req_ready; // @[DCacheWrapper.scala 1041:19]
  assign io_lsu_load_1_resp_bits_data_delayed = ldu_1_io_lsu_resp_bits_data_delayed; // @[DCacheWrapper.scala 1041:19]
  assign io_lsu_load_1_resp_bits_miss = ldu_1_io_lsu_resp_bits_miss; // @[DCacheWrapper.scala 1041:19]
  assign io_lsu_load_1_resp_bits_tag_error = ldu_1_io_lsu_resp_bits_tag_error; // @[DCacheWrapper.scala 1041:19]
  assign io_lsu_load_1_resp_bits_mshr_id = ldu_1_io_lsu_resp_bits_mshr_id; // @[DCacheWrapper.scala 1041:19]
  assign io_lsu_load_1_resp_bits_handled = ldu_1_io_lsu_resp_bits_handled; // @[DCacheWrapper.scala 1041:19]
  assign io_lsu_load_1_resp_bits_error_delayed = ldu_1_io_lsu_resp_bits_error_delayed; // @[DCacheWrapper.scala 1041:19]
  assign io_lsu_load_1_s1_disable_fast_wakeup = ldu_1_io_lsu_s1_disable_fast_wakeup; // @[DCacheWrapper.scala 1041:19]
  assign io_lsu_load_1_s2_bank_conflict = ldu_1_io_lsu_s2_bank_conflict; // @[DCacheWrapper.scala 1041:19]
  assign io_lsu_load_1_s2_mq_nack = ldu_1_io_lsu_s2_mq_nack; // @[DCacheWrapper.scala 1041:19]
  assign io_lsu_tl_d_channel_valid = (_T_103 | _T_102) & auto_client_out_d_valid; // @[DCacheWrapper.scala 1017:95 615:11 622:11]
  assign io_lsu_tl_d_channel_mshrid = auto_client_out_d_bits_source[1:0];
  assign io_lsu_store_req_ready = mainPipe_io_store_req_ready & _mainPipe_io_store_req_valid_T; // @[DCacheWrapper.scala 1396:34]
  assign io_lsu_store_main_pipe_hit_resp_valid = mainPipe_io_store_hit_resp_valid; // @[DCacheWrapper.scala 1203:35]
  assign io_lsu_store_main_pipe_hit_resp_bits_id = mainPipe_io_store_hit_resp_bits_id; // @[DCacheWrapper.scala 1203:35]
  assign io_lsu_store_refill_hit_resp_valid = io_lsu_store_refill_hit_resp_REG_valid; // @[DCacheWrapper.scala 1272:32]
  assign io_lsu_store_refill_hit_resp_bits_id = io_lsu_store_refill_hit_resp_REG_bits_id; // @[DCacheWrapper.scala 1272:32]
  assign io_lsu_store_replay_resp_valid = io_lsu_store_replay_resp_REG_valid; // @[DCacheWrapper.scala 1202:28]
  assign io_lsu_store_replay_resp_bits_id = io_lsu_store_replay_resp_REG_bits_id; // @[DCacheWrapper.scala 1202:28]
  assign io_lsu_atomics_req_ready = main_pipe_atomic_req_arb_io_in_1_ready; // @[DCacheWrapper.scala 265:9]
  assign io_lsu_atomics_resp_valid = io_lsu_atomics_resp_REG_valid; // @[DCacheWrapper.scala 1128:23]
  assign io_lsu_atomics_resp_bits_data = io_lsu_atomics_resp_REG_bits_data; // @[DCacheWrapper.scala 1128:23]
  assign io_lsu_atomics_resp_bits_miss = io_lsu_atomics_resp_REG_bits_miss; // @[DCacheWrapper.scala 1128:23]
  assign io_lsu_atomics_resp_bits_replay = io_lsu_atomics_resp_REG_bits_replay; // @[DCacheWrapper.scala 1128:23]
  assign io_lsu_atomics_resp_bits_error = io_lsu_atomics_resp_REG_bits_error; // @[DCacheWrapper.scala 1128:23]
  assign io_lsu_atomics_resp_bits_id = io_lsu_atomics_resp_REG_bits_id; // @[DCacheWrapper.scala 1128:23]
  assign io_lsu_atomics_block_lr = mainPipe_io_block_lr; // @[DCacheWrapper.scala 1129:27]
  assign io_lsu_release_valid = io_lsu_release_valid_REG; // @[DCacheWrapper.scala 1285:24]
  assign io_lsu_release_bits_paddr = io_lsu_release_bits_paddr_REG; // @[DCacheWrapper.scala 1286:29]
  assign io_lsu_forward_D_0_valid = _T_103 & auto_client_out_d_valid; // @[DCacheWrapper.scala 1009:54 615:11 622:11]
  assign io_lsu_forward_D_0_data = auto_client_out_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign io_lsu_forward_D_0_mshrid = auto_client_out_d_bits_source[1:0];
  assign io_lsu_forward_D_0_last = done_last & _done_T; // @[Edges.scala 232:22]
  assign io_lsu_forward_D_1_valid = _T_103 & auto_client_out_d_valid; // @[DCacheWrapper.scala 1009:54 615:11 622:11]
  assign io_lsu_forward_D_1_data = auto_client_out_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign io_lsu_forward_D_1_mshrid = auto_client_out_d_bits_source[1:0];
  assign io_lsu_forward_D_1_last = done_last_1 & _done_T; // @[Edges.scala 232:22]
  assign io_lsu_forward_mshr_0_forward_mshr = missQueue_io_forward_0_forward_mshr; // @[DCacheWrapper.scala 710:18]
  assign io_lsu_forward_mshr_0_forwardData_0 = missQueue_io_forward_0_forwardData_0; // @[DCacheWrapper.scala 711:17]
  assign io_lsu_forward_mshr_0_forwardData_1 = missQueue_io_forward_0_forwardData_1; // @[DCacheWrapper.scala 711:17]
  assign io_lsu_forward_mshr_0_forwardData_2 = missQueue_io_forward_0_forwardData_2; // @[DCacheWrapper.scala 711:17]
  assign io_lsu_forward_mshr_0_forwardData_3 = missQueue_io_forward_0_forwardData_3; // @[DCacheWrapper.scala 711:17]
  assign io_lsu_forward_mshr_0_forwardData_4 = missQueue_io_forward_0_forwardData_4; // @[DCacheWrapper.scala 711:17]
  assign io_lsu_forward_mshr_0_forwardData_5 = missQueue_io_forward_0_forwardData_5; // @[DCacheWrapper.scala 711:17]
  assign io_lsu_forward_mshr_0_forwardData_6 = missQueue_io_forward_0_forwardData_6; // @[DCacheWrapper.scala 711:17]
  assign io_lsu_forward_mshr_0_forwardData_7 = missQueue_io_forward_0_forwardData_7; // @[DCacheWrapper.scala 711:17]
  assign io_lsu_forward_mshr_0_forwardData_8 = missQueue_io_forward_0_forwardData_8; // @[DCacheWrapper.scala 711:17]
  assign io_lsu_forward_mshr_0_forwardData_9 = missQueue_io_forward_0_forwardData_9; // @[DCacheWrapper.scala 711:17]
  assign io_lsu_forward_mshr_0_forwardData_10 = missQueue_io_forward_0_forwardData_10; // @[DCacheWrapper.scala 711:17]
  assign io_lsu_forward_mshr_0_forwardData_11 = missQueue_io_forward_0_forwardData_11; // @[DCacheWrapper.scala 711:17]
  assign io_lsu_forward_mshr_0_forwardData_12 = missQueue_io_forward_0_forwardData_12; // @[DCacheWrapper.scala 711:17]
  assign io_lsu_forward_mshr_0_forwardData_13 = missQueue_io_forward_0_forwardData_13; // @[DCacheWrapper.scala 711:17]
  assign io_lsu_forward_mshr_0_forwardData_14 = missQueue_io_forward_0_forwardData_14; // @[DCacheWrapper.scala 711:17]
  assign io_lsu_forward_mshr_0_forwardData_15 = missQueue_io_forward_0_forwardData_15; // @[DCacheWrapper.scala 711:17]
  assign io_lsu_forward_mshr_0_forward_result_valid = missQueue_io_forward_0_forward_result_valid; // @[DCacheWrapper.scala 712:26]
  assign io_lsu_forward_mshr_1_forward_mshr = missQueue_io_forward_1_forward_mshr; // @[DCacheWrapper.scala 710:18]
  assign io_lsu_forward_mshr_1_forwardData_0 = missQueue_io_forward_1_forwardData_0; // @[DCacheWrapper.scala 711:17]
  assign io_lsu_forward_mshr_1_forwardData_1 = missQueue_io_forward_1_forwardData_1; // @[DCacheWrapper.scala 711:17]
  assign io_lsu_forward_mshr_1_forwardData_2 = missQueue_io_forward_1_forwardData_2; // @[DCacheWrapper.scala 711:17]
  assign io_lsu_forward_mshr_1_forwardData_3 = missQueue_io_forward_1_forwardData_3; // @[DCacheWrapper.scala 711:17]
  assign io_lsu_forward_mshr_1_forwardData_4 = missQueue_io_forward_1_forwardData_4; // @[DCacheWrapper.scala 711:17]
  assign io_lsu_forward_mshr_1_forwardData_5 = missQueue_io_forward_1_forwardData_5; // @[DCacheWrapper.scala 711:17]
  assign io_lsu_forward_mshr_1_forwardData_6 = missQueue_io_forward_1_forwardData_6; // @[DCacheWrapper.scala 711:17]
  assign io_lsu_forward_mshr_1_forwardData_7 = missQueue_io_forward_1_forwardData_7; // @[DCacheWrapper.scala 711:17]
  assign io_lsu_forward_mshr_1_forwardData_8 = missQueue_io_forward_1_forwardData_8; // @[DCacheWrapper.scala 711:17]
  assign io_lsu_forward_mshr_1_forwardData_9 = missQueue_io_forward_1_forwardData_9; // @[DCacheWrapper.scala 711:17]
  assign io_lsu_forward_mshr_1_forwardData_10 = missQueue_io_forward_1_forwardData_10; // @[DCacheWrapper.scala 711:17]
  assign io_lsu_forward_mshr_1_forwardData_11 = missQueue_io_forward_1_forwardData_11; // @[DCacheWrapper.scala 711:17]
  assign io_lsu_forward_mshr_1_forwardData_12 = missQueue_io_forward_1_forwardData_12; // @[DCacheWrapper.scala 711:17]
  assign io_lsu_forward_mshr_1_forwardData_13 = missQueue_io_forward_1_forwardData_13; // @[DCacheWrapper.scala 711:17]
  assign io_lsu_forward_mshr_1_forwardData_14 = missQueue_io_forward_1_forwardData_14; // @[DCacheWrapper.scala 711:17]
  assign io_lsu_forward_mshr_1_forwardData_15 = missQueue_io_forward_1_forwardData_15; // @[DCacheWrapper.scala 711:17]
  assign io_lsu_forward_mshr_1_forward_result_valid = missQueue_io_forward_1_forward_result_valid; // @[DCacheWrapper.scala 712:26]
  assign io_csr_update_wvalid = cacheOpDecoder_io_csr_update_wvalid; // @[DCacheWrapper.scala 1403:25]
  assign io_csr_update_waddr = cacheOpDecoder_io_csr_update_waddr; // @[DCacheWrapper.scala 1403:25]
  assign io_csr_update_wdata = cacheOpDecoder_io_csr_update_wdata; // @[DCacheWrapper.scala 1403:25]
  assign io_error_source_tag = io_error_REG_6_source_tag; // @[DCacheWrapper.scala 840:12]
  assign io_error_source_data = io_error_REG_6_source_data; // @[DCacheWrapper.scala 840:12]
  assign io_error_source_l2 = io_error_REG_6_source_l2; // @[DCacheWrapper.scala 840:12]
  assign io_error_opType_fetch = 1'h0; // @[DCacheWrapper.scala 840:12]
  assign io_error_opType_load = io_error_REG_6_opType_load; // @[DCacheWrapper.scala 840:12]
  assign io_error_opType_store = io_error_REG_6_opType_store; // @[DCacheWrapper.scala 840:12]
  assign io_error_opType_probe = io_error_REG_6_opType_probe; // @[DCacheWrapper.scala 840:12]
  assign io_error_opType_release = io_error_REG_6_opType_release; // @[DCacheWrapper.scala 840:12]
  assign io_error_opType_atom = io_error_REG_6_opType_atom; // @[DCacheWrapper.scala 840:12]
  assign io_error_paddr = io_error_REG_6_paddr; // @[DCacheWrapper.scala 840:12]
  assign io_error_report_to_beu = io_error_REG_6_report_to_beu; // @[DCacheWrapper.scala 840:12]
  assign io_error_valid = io_error_REG_6_valid; // @[DCacheWrapper.scala 840:12]
  assign io_perf_0_value = io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_1_value = io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_2_value = io_perf_2_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_3_value = io_perf_3_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_4_value = io_perf_4_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_5_value = io_perf_5_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_6_value = io_perf_6_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_7_value = io_perf_7_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_8_value = io_perf_8_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_9_value = io_perf_9_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_10_value = io_perf_10_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_11_value = io_perf_11_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_12_value = io_perf_12_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_13_value = io_perf_13_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_14_value = io_perf_14_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_15_value = io_perf_15_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_16_value = io_perf_16_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_17_value = io_perf_17_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_22_value = io_perf_22_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign bankedDataArray_clock = clock;
  assign bankedDataArray_io_read_0_valid = ldu_0_io_banked_data_read_valid; // @[DCacheWrapper.scala 998:32]
  assign bankedDataArray_io_read_0_bits_way_en = ldu_0_io_banked_data_read_bits_way_en; // @[DCacheWrapper.scala 998:32]
  assign bankedDataArray_io_read_0_bits_addr = ldu_0_io_banked_data_read_bits_addr; // @[DCacheWrapper.scala 998:32]
  assign bankedDataArray_io_read_0_bits_bankMask = ldu_0_io_banked_data_read_bits_bankMask; // @[DCacheWrapper.scala 998:32]
  assign bankedDataArray_io_read_1_valid = ldu_1_io_banked_data_read_valid; // @[DCacheWrapper.scala 998:32]
  assign bankedDataArray_io_read_1_bits_way_en = ldu_1_io_banked_data_read_bits_way_en; // @[DCacheWrapper.scala 998:32]
  assign bankedDataArray_io_read_1_bits_addr = ldu_1_io_banked_data_read_bits_addr; // @[DCacheWrapper.scala 998:32]
  assign bankedDataArray_io_read_1_bits_bankMask = ldu_1_io_banked_data_read_bits_bankMask; // @[DCacheWrapper.scala 998:32]
  assign bankedDataArray_io_readline_intend = mainPipe_io_data_read_intend; // @[DCacheWrapper.scala 993:38]
  assign bankedDataArray_io_readline_valid = mainPipe_io_data_readline_valid; // @[DCacheWrapper.scala 992:31]
  assign bankedDataArray_io_readline_bits_way_en = mainPipe_io_data_readline_bits_way_en; // @[DCacheWrapper.scala 992:31]
  assign bankedDataArray_io_readline_bits_addr = mainPipe_io_data_readline_bits_addr; // @[DCacheWrapper.scala 992:31]
  assign bankedDataArray_io_write_valid = dataWriteArb_io_out_valid; // @[DCacheWrapper.scala 980:28]
  assign bankedDataArray_io_write_bits_wmask = dataWriteArb_io_out_bits_wmask; // @[DCacheWrapper.scala 980:28]
  assign bankedDataArray_io_write_bits_data_0 = dataWriteArb_io_out_bits_data_0; // @[DCacheWrapper.scala 980:28]
  assign bankedDataArray_io_write_bits_data_1 = dataWriteArb_io_out_bits_data_1; // @[DCacheWrapper.scala 980:28]
  assign bankedDataArray_io_write_bits_data_2 = dataWriteArb_io_out_bits_data_2; // @[DCacheWrapper.scala 980:28]
  assign bankedDataArray_io_write_bits_data_3 = dataWriteArb_io_out_bits_data_3; // @[DCacheWrapper.scala 980:28]
  assign bankedDataArray_io_write_bits_data_4 = dataWriteArb_io_out_bits_data_4; // @[DCacheWrapper.scala 980:28]
  assign bankedDataArray_io_write_bits_data_5 = dataWriteArb_io_out_bits_data_5; // @[DCacheWrapper.scala 980:28]
  assign bankedDataArray_io_write_bits_data_6 = dataWriteArb_io_out_bits_data_6; // @[DCacheWrapper.scala 980:28]
  assign bankedDataArray_io_write_bits_data_7 = dataWriteArb_io_out_bits_data_7; // @[DCacheWrapper.scala 980:28]
  assign bankedDataArray_io_write_dup_0_valid = dataWriteArb_dup_io_out_valid; // @[DCacheWrapper.scala 989:40]
  assign bankedDataArray_io_write_dup_0_bits_way_en = dataWriteArb_dup_io_out_bits_way_en; // @[DCacheWrapper.scala 989:40]
  assign bankedDataArray_io_write_dup_0_bits_addr = dataWriteArb_dup_io_out_bits_addr; // @[DCacheWrapper.scala 989:40]
  assign bankedDataArray_io_write_dup_1_valid = dataWriteArb_dup_1_io_out_valid; // @[DCacheWrapper.scala 989:40]
  assign bankedDataArray_io_write_dup_1_bits_way_en = dataWriteArb_dup_1_io_out_bits_way_en; // @[DCacheWrapper.scala 989:40]
  assign bankedDataArray_io_write_dup_1_bits_addr = dataWriteArb_dup_1_io_out_bits_addr; // @[DCacheWrapper.scala 989:40]
  assign bankedDataArray_io_write_dup_2_valid = dataWriteArb_dup_2_io_out_valid; // @[DCacheWrapper.scala 989:40]
  assign bankedDataArray_io_write_dup_2_bits_way_en = dataWriteArb_dup_2_io_out_bits_way_en; // @[DCacheWrapper.scala 989:40]
  assign bankedDataArray_io_write_dup_2_bits_addr = dataWriteArb_dup_2_io_out_bits_addr; // @[DCacheWrapper.scala 989:40]
  assign bankedDataArray_io_write_dup_3_valid = dataWriteArb_dup_3_io_out_valid; // @[DCacheWrapper.scala 989:40]
  assign bankedDataArray_io_write_dup_3_bits_way_en = dataWriteArb_dup_3_io_out_bits_way_en; // @[DCacheWrapper.scala 989:40]
  assign bankedDataArray_io_write_dup_3_bits_addr = dataWriteArb_dup_3_io_out_bits_addr; // @[DCacheWrapper.scala 989:40]
  assign bankedDataArray_io_write_dup_4_valid = dataWriteArb_dup_4_io_out_valid; // @[DCacheWrapper.scala 989:40]
  assign bankedDataArray_io_write_dup_4_bits_way_en = dataWriteArb_dup_4_io_out_bits_way_en; // @[DCacheWrapper.scala 989:40]
  assign bankedDataArray_io_write_dup_4_bits_addr = dataWriteArb_dup_4_io_out_bits_addr; // @[DCacheWrapper.scala 989:40]
  assign bankedDataArray_io_write_dup_5_valid = dataWriteArb_dup_5_io_out_valid; // @[DCacheWrapper.scala 989:40]
  assign bankedDataArray_io_write_dup_5_bits_way_en = dataWriteArb_dup_5_io_out_bits_way_en; // @[DCacheWrapper.scala 989:40]
  assign bankedDataArray_io_write_dup_5_bits_addr = dataWriteArb_dup_5_io_out_bits_addr; // @[DCacheWrapper.scala 989:40]
  assign bankedDataArray_io_write_dup_6_valid = dataWriteArb_dup_6_io_out_valid; // @[DCacheWrapper.scala 989:40]
  assign bankedDataArray_io_write_dup_6_bits_way_en = dataWriteArb_dup_6_io_out_bits_way_en; // @[DCacheWrapper.scala 989:40]
  assign bankedDataArray_io_write_dup_6_bits_addr = dataWriteArb_dup_6_io_out_bits_addr; // @[DCacheWrapper.scala 989:40]
  assign bankedDataArray_io_write_dup_7_valid = dataWriteArb_dup_7_io_out_valid; // @[DCacheWrapper.scala 989:40]
  assign bankedDataArray_io_write_dup_7_bits_way_en = dataWriteArb_dup_7_io_out_bits_way_en; // @[DCacheWrapper.scala 989:40]
  assign bankedDataArray_io_write_dup_7_bits_addr = dataWriteArb_dup_7_io_out_bits_addr; // @[DCacheWrapper.scala 989:40]
  assign bankedDataArray_io_cacheOp_req_valid = cacheOpDecoder_io_cache_req_valid; // @[DCacheWrapper.scala 1404:34]
  assign bankedDataArray_io_cacheOp_req_bits_wayNum = cacheOpDecoder_io_cache_req_bits_wayNum; // @[DCacheWrapper.scala 1404:34]
  assign bankedDataArray_io_cacheOp_req_bits_index = cacheOpDecoder_io_cache_req_bits_index; // @[DCacheWrapper.scala 1404:34]
  assign bankedDataArray_io_cacheOp_req_bits_write_data_vec_0 = cacheOpDecoder_io_cache_req_bits_write_data_vec_0; // @[DCacheWrapper.scala 1404:34]
  assign bankedDataArray_io_cacheOp_req_bits_write_data_vec_1 = cacheOpDecoder_io_cache_req_bits_write_data_vec_1; // @[DCacheWrapper.scala 1404:34]
  assign bankedDataArray_io_cacheOp_req_bits_write_data_vec_2 = cacheOpDecoder_io_cache_req_bits_write_data_vec_2; // @[DCacheWrapper.scala 1404:34]
  assign bankedDataArray_io_cacheOp_req_bits_write_data_vec_3 = cacheOpDecoder_io_cache_req_bits_write_data_vec_3; // @[DCacheWrapper.scala 1404:34]
  assign bankedDataArray_io_cacheOp_req_bits_write_data_vec_4 = cacheOpDecoder_io_cache_req_bits_write_data_vec_4; // @[DCacheWrapper.scala 1404:34]
  assign bankedDataArray_io_cacheOp_req_bits_write_data_vec_5 = cacheOpDecoder_io_cache_req_bits_write_data_vec_5; // @[DCacheWrapper.scala 1404:34]
  assign bankedDataArray_io_cacheOp_req_bits_write_data_vec_6 = cacheOpDecoder_io_cache_req_bits_write_data_vec_6; // @[DCacheWrapper.scala 1404:34]
  assign bankedDataArray_io_cacheOp_req_bits_write_data_vec_7 = cacheOpDecoder_io_cache_req_bits_write_data_vec_7; // @[DCacheWrapper.scala 1404:34]
  assign bankedDataArray_io_cacheOp_req_bits_write_data_ecc = cacheOpDecoder_io_cache_req_bits_write_data_ecc; // @[DCacheWrapper.scala 1404:34]
  assign bankedDataArray_io_cacheOp_req_bits_bank_num = cacheOpDecoder_io_cache_req_bits_bank_num; // @[DCacheWrapper.scala 1404:34]
  assign bankedDataArray_io_cacheOp_req_dup_0_valid = cacheOpDecoder_io_cache_req_dup_0_valid; // @[DCacheWrapper.scala 1406:76]
  assign bankedDataArray_io_cacheOp_req_dup_1_valid = cacheOpDecoder_io_cache_req_dup_1_valid; // @[DCacheWrapper.scala 1406:76]
  assign bankedDataArray_io_cacheOp_req_dup_2_valid = cacheOpDecoder_io_cache_req_dup_2_valid; // @[DCacheWrapper.scala 1406:76]
  assign bankedDataArray_io_cacheOp_req_dup_3_valid = cacheOpDecoder_io_cache_req_dup_3_valid; // @[DCacheWrapper.scala 1406:76]
  assign bankedDataArray_io_cacheOp_req_dup_4_valid = cacheOpDecoder_io_cache_req_dup_4_valid; // @[DCacheWrapper.scala 1406:76]
  assign bankedDataArray_io_cacheOp_req_dup_5_valid = cacheOpDecoder_io_cache_req_dup_5_valid; // @[DCacheWrapper.scala 1406:76]
  assign bankedDataArray_io_cacheOp_req_dup_6_valid = cacheOpDecoder_io_cache_req_dup_6_valid; // @[DCacheWrapper.scala 1406:76]
  assign bankedDataArray_io_cacheOp_req_dup_7_valid = cacheOpDecoder_io_cache_req_dup_7_valid; // @[DCacheWrapper.scala 1406:76]
  assign bankedDataArray_io_cacheOp_req_dup_8_valid = cacheOpDecoder_io_cache_req_dup_8_valid; // @[DCacheWrapper.scala 1406:76]
  assign bankedDataArray_io_cacheOp_req_dup_9_valid = cacheOpDecoder_io_cache_req_dup_9_valid; // @[DCacheWrapper.scala 1406:76]
  assign bankedDataArray_io_cacheOp_req_dup_10_valid = cacheOpDecoder_io_cache_req_dup_10_valid; // @[DCacheWrapper.scala 1406:76]
  assign bankedDataArray_io_cacheOp_req_dup_11_valid = cacheOpDecoder_io_cache_req_dup_11_valid; // @[DCacheWrapper.scala 1406:76]
  assign bankedDataArray_io_cacheOp_req_dup_12_valid = cacheOpDecoder_io_cache_req_dup_12_valid; // @[DCacheWrapper.scala 1406:76]
  assign bankedDataArray_io_cacheOp_req_dup_13_valid = cacheOpDecoder_io_cache_req_dup_13_valid; // @[DCacheWrapper.scala 1406:76]
  assign bankedDataArray_io_cacheOp_req_dup_14_valid = cacheOpDecoder_io_cache_req_dup_14_valid; // @[DCacheWrapper.scala 1406:76]
  assign bankedDataArray_io_cacheOp_req_dup_15_valid = cacheOpDecoder_io_cache_req_dup_15_valid; // @[DCacheWrapper.scala 1406:76]
  assign bankedDataArray_io_cacheOp_req_bits_opCode_dup_0 = cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_0; // @[DCacheWrapper.scala 1408:89]
  assign bankedDataArray_io_cacheOp_req_bits_opCode_dup_1 = cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_1; // @[DCacheWrapper.scala 1408:89]
  assign bankedDataArray_io_cacheOp_req_bits_opCode_dup_2 = cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_2; // @[DCacheWrapper.scala 1408:89]
  assign bankedDataArray_io_cacheOp_req_bits_opCode_dup_3 = cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_3; // @[DCacheWrapper.scala 1408:89]
  assign bankedDataArray_io_cacheOp_req_bits_opCode_dup_4 = cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_4; // @[DCacheWrapper.scala 1408:89]
  assign bankedDataArray_io_cacheOp_req_bits_opCode_dup_5 = cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_5; // @[DCacheWrapper.scala 1408:89]
  assign bankedDataArray_io_cacheOp_req_bits_opCode_dup_6 = cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_6; // @[DCacheWrapper.scala 1408:89]
  assign bankedDataArray_io_cacheOp_req_bits_opCode_dup_7 = cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_7; // @[DCacheWrapper.scala 1408:89]
  assign bankedDataArray_io_cacheOp_req_bits_opCode_dup_8 = cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_8; // @[DCacheWrapper.scala 1408:89]
  assign bankedDataArray_io_cacheOp_req_bits_opCode_dup_9 = cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_9; // @[DCacheWrapper.scala 1408:89]
  assign bankedDataArray_io_cacheOp_req_bits_opCode_dup_10 = cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_10; // @[DCacheWrapper.scala 1408:89]
  assign bankedDataArray_io_cacheOp_req_bits_opCode_dup_11 = cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_11; // @[DCacheWrapper.scala 1408:89]
  assign bankedDataArray_io_cacheOp_req_bits_opCode_dup_12 = cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_12; // @[DCacheWrapper.scala 1408:89]
  assign bankedDataArray_io_cacheOp_req_bits_opCode_dup_13 = cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_13; // @[DCacheWrapper.scala 1408:89]
  assign bankedDataArray_io_cacheOp_req_bits_opCode_dup_14 = cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_14; // @[DCacheWrapper.scala 1408:89]
  assign bankedDataArray_io_cacheOp_req_bits_opCode_dup_15 = cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_15; // @[DCacheWrapper.scala 1408:89]
  assign metaArray_clock = clock;
  assign metaArray_reset = reset;
  assign metaArray_io_read_0_valid = ldu_0_io_meta_read_valid; // @[DCacheWrapper.scala 862:99]
  assign metaArray_io_read_0_bits_idx = ldu_0_io_meta_read_bits_idx; // @[DCacheWrapper.scala 862:99]
  assign metaArray_io_read_1_valid = ldu_1_io_meta_read_valid; // @[DCacheWrapper.scala 862:99]
  assign metaArray_io_read_1_bits_idx = ldu_1_io_meta_read_bits_idx; // @[DCacheWrapper.scala 862:99]
  assign metaArray_io_read_2_valid = mainPipe_io_meta_read_valid; // @[DCacheWrapper.scala 862:99]
  assign metaArray_io_read_2_bits_idx = mainPipe_io_meta_read_bits_idx; // @[DCacheWrapper.scala 862:99]
  assign metaArray_io_write_0_valid = mainPipe_io_meta_write_valid; // @[DCacheWrapper.scala 868:71]
  assign metaArray_io_write_0_bits_idx = mainPipe_io_meta_write_bits_idx; // @[DCacheWrapper.scala 868:71]
  assign metaArray_io_write_0_bits_way_en = mainPipe_io_meta_write_bits_way_en; // @[DCacheWrapper.scala 868:71]
  assign metaArray_io_write_0_bits_meta_coh_state = mainPipe_io_meta_write_bits_meta_coh_state; // @[DCacheWrapper.scala 868:71]
  assign metaArray_io_write_1_valid = refillPipe_io_meta_write_valid; // @[DCacheWrapper.scala 868:71]
  assign metaArray_io_write_1_bits_idx = refillPipe_io_meta_write_bits_idx; // @[DCacheWrapper.scala 868:71]
  assign metaArray_io_write_1_bits_way_en = refillPipe_io_meta_write_bits_way_en; // @[DCacheWrapper.scala 868:71]
  assign metaArray_io_write_1_bits_meta_coh_state = refillPipe_io_meta_write_bits_meta_coh_state; // @[DCacheWrapper.scala 868:71]
  assign errorArray_clock = clock;
  assign errorArray_reset = reset;
  assign errorArray_io_read_0_valid = ldu_0_io_meta_read_valid; // @[DCacheWrapper.scala 871:98]
  assign errorArray_io_read_0_bits_idx = ldu_0_io_meta_read_bits_idx; // @[DCacheWrapper.scala 871:98]
  assign errorArray_io_read_1_valid = ldu_1_io_meta_read_valid; // @[DCacheWrapper.scala 871:98]
  assign errorArray_io_read_1_bits_idx = ldu_1_io_meta_read_bits_idx; // @[DCacheWrapper.scala 871:98]
  assign errorArray_io_read_2_valid = mainPipe_io_meta_read_valid; // @[DCacheWrapper.scala 871:98]
  assign errorArray_io_read_2_bits_idx = mainPipe_io_meta_read_bits_idx; // @[DCacheWrapper.scala 871:98]
  assign errorArray_io_write_0_valid = mainPipe_io_error_flag_write_valid; // @[DCacheWrapper.scala 910:78]
  assign errorArray_io_write_0_bits_idx = mainPipe_io_error_flag_write_bits_idx; // @[DCacheWrapper.scala 910:78]
  assign errorArray_io_write_0_bits_way_en = mainPipe_io_error_flag_write_bits_way_en; // @[DCacheWrapper.scala 910:78]
  assign errorArray_io_write_0_bits_flag = mainPipe_io_error_flag_write_bits_flag; // @[DCacheWrapper.scala 910:78]
  assign errorArray_io_write_1_valid = refillPipe_io_error_flag_write_valid; // @[DCacheWrapper.scala 910:78]
  assign errorArray_io_write_1_bits_idx = refillPipe_io_error_flag_write_bits_idx; // @[DCacheWrapper.scala 910:78]
  assign errorArray_io_write_1_bits_way_en = refillPipe_io_error_flag_write_bits_way_en; // @[DCacheWrapper.scala 910:78]
  assign errorArray_io_write_1_bits_flag = refillPipe_io_error_flag_write_bits_flag; // @[DCacheWrapper.scala 910:78]
  assign tagArray_clock = clock;
  assign tagArray_reset = reset;
  assign tagArray_io_read_0_valid = ldu_0_io_tag_read_valid; // @[DCacheWrapper.scala 938:27]
  assign tagArray_io_read_0_bits_idx = ldu_0_io_tag_read_bits_idx; // @[DCacheWrapper.scala 938:27]
  assign tagArray_io_read_1_valid = ldu_1_io_tag_read_valid; // @[DCacheWrapper.scala 938:27]
  assign tagArray_io_read_1_bits_idx = ldu_1_io_tag_read_bits_idx; // @[DCacheWrapper.scala 938:27]
  assign tagArray_io_read_2_valid = mainPipe_io_tag_read_valid; // @[DCacheWrapper.scala 956:25]
  assign tagArray_io_read_2_bits_idx = mainPipe_io_tag_read_bits_idx; // @[DCacheWrapper.scala 956:25]
  assign tagArray_io_write_valid = tag_write_arb_io_out_valid; // @[DCacheWrapper.scala 965:21]
  assign tagArray_io_write_bits_idx = tag_write_arb_io_out_bits_idx; // @[DCacheWrapper.scala 965:21]
  assign tagArray_io_write_bits_way_en = tag_write_arb_io_out_bits_way_en; // @[DCacheWrapper.scala 965:21]
  assign tagArray_io_write_bits_tag = tag_write_arb_io_out_bits_tag; // @[DCacheWrapper.scala 965:21]
  assign tagArray_io_cacheOp_req_valid = cacheOpDecoder_io_cache_req_valid; // @[DCacheWrapper.scala 1410:27]
  assign tagArray_io_cacheOp_req_bits_wayNum = cacheOpDecoder_io_cache_req_bits_wayNum; // @[DCacheWrapper.scala 1410:27]
  assign tagArray_io_cacheOp_req_bits_index = cacheOpDecoder_io_cache_req_bits_index; // @[DCacheWrapper.scala 1410:27]
  assign tagArray_io_cacheOp_req_bits_write_tag_low = cacheOpDecoder_io_cache_req_bits_write_tag_low; // @[DCacheWrapper.scala 1410:27]
  assign tagArray_io_cacheOp_req_bits_write_tag_ecc = cacheOpDecoder_io_cache_req_bits_write_tag_ecc; // @[DCacheWrapper.scala 1410:27]
  assign tagArray_io_cacheOp_req_dup_0_valid = cacheOpDecoder_io_cache_req_dup_0_valid; // @[DCacheWrapper.scala 1412:69]
  assign tagArray_io_cacheOp_req_dup_1_valid = cacheOpDecoder_io_cache_req_dup_1_valid; // @[DCacheWrapper.scala 1412:69]
  assign tagArray_io_cacheOp_req_dup_2_valid = cacheOpDecoder_io_cache_req_dup_2_valid; // @[DCacheWrapper.scala 1412:69]
  assign tagArray_io_cacheOp_req_dup_3_valid = cacheOpDecoder_io_cache_req_dup_3_valid; // @[DCacheWrapper.scala 1412:69]
  assign tagArray_io_cacheOp_req_dup_4_valid = cacheOpDecoder_io_cache_req_dup_4_valid; // @[DCacheWrapper.scala 1412:69]
  assign tagArray_io_cacheOp_req_dup_5_valid = cacheOpDecoder_io_cache_req_dup_5_valid; // @[DCacheWrapper.scala 1412:69]
  assign tagArray_io_cacheOp_req_dup_6_valid = cacheOpDecoder_io_cache_req_dup_6_valid; // @[DCacheWrapper.scala 1412:69]
  assign tagArray_io_cacheOp_req_dup_7_valid = cacheOpDecoder_io_cache_req_dup_7_valid; // @[DCacheWrapper.scala 1412:69]
  assign tagArray_io_cacheOp_req_dup_8_valid = cacheOpDecoder_io_cache_req_dup_8_valid; // @[DCacheWrapper.scala 1412:69]
  assign tagArray_io_cacheOp_req_dup_9_valid = cacheOpDecoder_io_cache_req_dup_9_valid; // @[DCacheWrapper.scala 1412:69]
  assign tagArray_io_cacheOp_req_dup_10_valid = cacheOpDecoder_io_cache_req_dup_10_valid; // @[DCacheWrapper.scala 1412:69]
  assign tagArray_io_cacheOp_req_dup_11_valid = cacheOpDecoder_io_cache_req_dup_11_valid; // @[DCacheWrapper.scala 1412:69]
  assign tagArray_io_cacheOp_req_bits_opCode_dup_0 = cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_0; // @[DCacheWrapper.scala 1414:82]
  assign tagArray_io_cacheOp_req_bits_opCode_dup_1 = cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_1; // @[DCacheWrapper.scala 1414:82]
  assign tagArray_io_cacheOp_req_bits_opCode_dup_2 = cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_2; // @[DCacheWrapper.scala 1414:82]
  assign tagArray_io_cacheOp_req_bits_opCode_dup_3 = cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_3; // @[DCacheWrapper.scala 1414:82]
  assign tagArray_io_cacheOp_req_bits_opCode_dup_4 = cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_4; // @[DCacheWrapper.scala 1414:82]
  assign tagArray_io_cacheOp_req_bits_opCode_dup_5 = cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_5; // @[DCacheWrapper.scala 1414:82]
  assign tagArray_io_cacheOp_req_bits_opCode_dup_6 = cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_6; // @[DCacheWrapper.scala 1414:82]
  assign tagArray_io_cacheOp_req_bits_opCode_dup_7 = cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_7; // @[DCacheWrapper.scala 1414:82]
  assign tagArray_io_cacheOp_req_bits_opCode_dup_8 = cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_8; // @[DCacheWrapper.scala 1414:82]
  assign tagArray_io_cacheOp_req_bits_opCode_dup_9 = cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_9; // @[DCacheWrapper.scala 1414:82]
  assign tagArray_io_cacheOp_req_bits_opCode_dup_10 = cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_10; // @[DCacheWrapper.scala 1414:82]
  assign tagArray_io_cacheOp_req_bits_opCode_dup_11 = cacheOpDecoder_io_cacheOp_req_bits_opCode_dup_11; // @[DCacheWrapper.scala 1414:82]
  assign ldu_0_clock = clock;
  assign ldu_0_reset = reset;
  assign ldu_0_io_lsu_req_valid = io_lsu_load_0_req_valid; // @[DCacheWrapper.scala 1041:19]
  assign ldu_0_io_lsu_req_bits_cmd = io_lsu_load_0_req_bits_cmd; // @[DCacheWrapper.scala 1041:19]
  assign ldu_0_io_lsu_req_bits_vaddr = io_lsu_load_0_req_bits_vaddr; // @[DCacheWrapper.scala 1041:19]
  assign ldu_0_io_lsu_req_bits_instrtype = io_lsu_load_0_req_bits_instrtype; // @[DCacheWrapper.scala 1041:19]
  assign ldu_0_io_lsu_s1_kill = io_lsu_load_0_s1_kill; // @[DCacheWrapper.scala 1041:19]
  assign ldu_0_io_lsu_s2_kill = io_lsu_load_0_s2_kill; // @[DCacheWrapper.scala 1041:19]
  assign ldu_0_io_lsu_s1_paddr_dup_lsu = io_lsu_load_0_s1_paddr_dup_lsu; // @[DCacheWrapper.scala 1041:19]
  assign ldu_0_io_lsu_s1_paddr_dup_dcache = io_lsu_load_0_s1_paddr_dup_dcache; // @[DCacheWrapper.scala 1041:19]
  assign ldu_0_io_meta_resp_0_coh_state = metaArray_io_resp_0_0_coh_state; // @[DCacheWrapper.scala 863:99]
  assign ldu_0_io_meta_resp_1_coh_state = metaArray_io_resp_0_1_coh_state; // @[DCacheWrapper.scala 863:99]
  assign ldu_0_io_meta_resp_2_coh_state = metaArray_io_resp_0_2_coh_state; // @[DCacheWrapper.scala 863:99]
  assign ldu_0_io_meta_resp_3_coh_state = metaArray_io_resp_0_3_coh_state; // @[DCacheWrapper.scala 863:99]
  assign ldu_0_io_meta_resp_4_coh_state = metaArray_io_resp_0_4_coh_state; // @[DCacheWrapper.scala 863:99]
  assign ldu_0_io_meta_resp_5_coh_state = metaArray_io_resp_0_5_coh_state; // @[DCacheWrapper.scala 863:99]
  assign ldu_0_io_meta_resp_6_coh_state = metaArray_io_resp_0_6_coh_state; // @[DCacheWrapper.scala 863:99]
  assign ldu_0_io_meta_resp_7_coh_state = metaArray_io_resp_0_7_coh_state; // @[DCacheWrapper.scala 863:99]
  assign ldu_0_io_extra_meta_resp_0_error = errorArray_io_resp_0_0; // @[DCacheWrapper.scala 877:43]
  assign ldu_0_io_extra_meta_resp_1_error = errorArray_io_resp_0_1; // @[DCacheWrapper.scala 877:43]
  assign ldu_0_io_extra_meta_resp_2_error = errorArray_io_resp_0_2; // @[DCacheWrapper.scala 877:43]
  assign ldu_0_io_extra_meta_resp_3_error = errorArray_io_resp_0_3; // @[DCacheWrapper.scala 877:43]
  assign ldu_0_io_extra_meta_resp_4_error = errorArray_io_resp_0_4; // @[DCacheWrapper.scala 877:43]
  assign ldu_0_io_extra_meta_resp_5_error = errorArray_io_resp_0_5; // @[DCacheWrapper.scala 877:43]
  assign ldu_0_io_extra_meta_resp_6_error = errorArray_io_resp_0_6; // @[DCacheWrapper.scala 877:43]
  assign ldu_0_io_extra_meta_resp_7_error = errorArray_io_resp_0_7; // @[DCacheWrapper.scala 877:43]
  assign ldu_0_io_tag_read_ready = ~tag_write_intend; // @[DCacheWrapper.scala 940:31]
  assign ldu_0_io_tag_resp_0 = tagArray_io_resp_0_0; // @[DCacheWrapper.scala 939:22]
  assign ldu_0_io_tag_resp_1 = tagArray_io_resp_0_1; // @[DCacheWrapper.scala 939:22]
  assign ldu_0_io_tag_resp_2 = tagArray_io_resp_0_2; // @[DCacheWrapper.scala 939:22]
  assign ldu_0_io_tag_resp_3 = tagArray_io_resp_0_3; // @[DCacheWrapper.scala 939:22]
  assign ldu_0_io_tag_resp_4 = tagArray_io_resp_0_4; // @[DCacheWrapper.scala 939:22]
  assign ldu_0_io_tag_resp_5 = tagArray_io_resp_0_5; // @[DCacheWrapper.scala 939:22]
  assign ldu_0_io_tag_resp_6 = tagArray_io_resp_0_6; // @[DCacheWrapper.scala 939:22]
  assign ldu_0_io_tag_resp_7 = tagArray_io_resp_0_7; // @[DCacheWrapper.scala 939:22]
  assign ldu_0_io_banked_data_read_ready = bankedDataArray_io_read_0_ready; // @[DCacheWrapper.scala 998:32]
  assign ldu_0_io_banked_data_resp_0_raw_data = bankedDataArray_io_read_resp_delayed_0_0_raw_data; // @[DCacheWrapper.scala 1002:32]
  assign ldu_0_io_read_error_delayed_0 = bankedDataArray_io_read_error_delayed_0_0; // @[DCacheWrapper.scala 1000:46]
  assign ldu_0_io_bank_conflict_slow = bankedDataArray_io_bank_conflict_slow_0; // @[DCacheWrapper.scala 1004:34]
  assign ldu_0_io_miss_req_ready = missReqArb_io_in_1_ready; // @[DCacheWrapper.scala 1145:67]
  assign ldu_0_io_miss_resp_id = missQueue_io_resp_id; // @[DCacheWrapper.scala 1147:62]
  assign ldu_0_io_miss_resp_handled = missQueue_io_resp_handled; // @[DCacheWrapper.scala 1147:62]
  assign ldu_0_io_miss_resp_merged = missQueue_io_resp_merged; // @[DCacheWrapper.scala 1147:62]
  assign ldu_0_io_miss_resp_repl_way_en = missQueue_io_resp_repl_way_en; // @[DCacheWrapper.scala 1147:62]
  assign ldu_0_io_replace_way_way = {ldu_0_io_replace_way_way_left_subtree_older,_ldu_0_io_replace_way_way_T_8}; // @[Cat.scala 31:58]
  assign ldu_0_io_disable_ld_fast_wakeup = bankedDataArray_io_disable_ld_fast_wakeup_0; // @[DCacheWrapper.scala 1050:38]
  assign ldu_0_io_mq_enq_cancel = missQueue_io_mq_enq_cancel; // @[DCacheWrapper.scala 1166:66]
  assign ldu_1_clock = clock;
  assign ldu_1_reset = reset;
  assign ldu_1_io_lsu_req_valid = io_lsu_load_1_req_valid; // @[DCacheWrapper.scala 1041:19]
  assign ldu_1_io_lsu_req_bits_cmd = io_lsu_load_1_req_bits_cmd; // @[DCacheWrapper.scala 1041:19]
  assign ldu_1_io_lsu_req_bits_vaddr = io_lsu_load_1_req_bits_vaddr; // @[DCacheWrapper.scala 1041:19]
  assign ldu_1_io_lsu_req_bits_instrtype = io_lsu_load_1_req_bits_instrtype; // @[DCacheWrapper.scala 1041:19]
  assign ldu_1_io_lsu_s1_kill = io_lsu_load_1_s1_kill; // @[DCacheWrapper.scala 1041:19]
  assign ldu_1_io_lsu_s2_kill = io_lsu_load_1_s2_kill; // @[DCacheWrapper.scala 1041:19]
  assign ldu_1_io_lsu_s1_paddr_dup_lsu = io_lsu_load_1_s1_paddr_dup_lsu; // @[DCacheWrapper.scala 1041:19]
  assign ldu_1_io_lsu_s1_paddr_dup_dcache = io_lsu_load_1_s1_paddr_dup_dcache; // @[DCacheWrapper.scala 1041:19]
  assign ldu_1_io_meta_resp_0_coh_state = metaArray_io_resp_1_0_coh_state; // @[DCacheWrapper.scala 863:99]
  assign ldu_1_io_meta_resp_1_coh_state = metaArray_io_resp_1_1_coh_state; // @[DCacheWrapper.scala 863:99]
  assign ldu_1_io_meta_resp_2_coh_state = metaArray_io_resp_1_2_coh_state; // @[DCacheWrapper.scala 863:99]
  assign ldu_1_io_meta_resp_3_coh_state = metaArray_io_resp_1_3_coh_state; // @[DCacheWrapper.scala 863:99]
  assign ldu_1_io_meta_resp_4_coh_state = metaArray_io_resp_1_4_coh_state; // @[DCacheWrapper.scala 863:99]
  assign ldu_1_io_meta_resp_5_coh_state = metaArray_io_resp_1_5_coh_state; // @[DCacheWrapper.scala 863:99]
  assign ldu_1_io_meta_resp_6_coh_state = metaArray_io_resp_1_6_coh_state; // @[DCacheWrapper.scala 863:99]
  assign ldu_1_io_meta_resp_7_coh_state = metaArray_io_resp_1_7_coh_state; // @[DCacheWrapper.scala 863:99]
  assign ldu_1_io_extra_meta_resp_0_error = errorArray_io_resp_1_0; // @[DCacheWrapper.scala 877:43]
  assign ldu_1_io_extra_meta_resp_1_error = errorArray_io_resp_1_1; // @[DCacheWrapper.scala 877:43]
  assign ldu_1_io_extra_meta_resp_2_error = errorArray_io_resp_1_2; // @[DCacheWrapper.scala 877:43]
  assign ldu_1_io_extra_meta_resp_3_error = errorArray_io_resp_1_3; // @[DCacheWrapper.scala 877:43]
  assign ldu_1_io_extra_meta_resp_4_error = errorArray_io_resp_1_4; // @[DCacheWrapper.scala 877:43]
  assign ldu_1_io_extra_meta_resp_5_error = errorArray_io_resp_1_5; // @[DCacheWrapper.scala 877:43]
  assign ldu_1_io_extra_meta_resp_6_error = errorArray_io_resp_1_6; // @[DCacheWrapper.scala 877:43]
  assign ldu_1_io_extra_meta_resp_7_error = errorArray_io_resp_1_7; // @[DCacheWrapper.scala 877:43]
  assign ldu_1_io_tag_read_ready = ~tag_write_intend; // @[DCacheWrapper.scala 940:31]
  assign ldu_1_io_tag_resp_0 = tagArray_io_resp_1_0; // @[DCacheWrapper.scala 939:22]
  assign ldu_1_io_tag_resp_1 = tagArray_io_resp_1_1; // @[DCacheWrapper.scala 939:22]
  assign ldu_1_io_tag_resp_2 = tagArray_io_resp_1_2; // @[DCacheWrapper.scala 939:22]
  assign ldu_1_io_tag_resp_3 = tagArray_io_resp_1_3; // @[DCacheWrapper.scala 939:22]
  assign ldu_1_io_tag_resp_4 = tagArray_io_resp_1_4; // @[DCacheWrapper.scala 939:22]
  assign ldu_1_io_tag_resp_5 = tagArray_io_resp_1_5; // @[DCacheWrapper.scala 939:22]
  assign ldu_1_io_tag_resp_6 = tagArray_io_resp_1_6; // @[DCacheWrapper.scala 939:22]
  assign ldu_1_io_tag_resp_7 = tagArray_io_resp_1_7; // @[DCacheWrapper.scala 939:22]
  assign ldu_1_io_banked_data_read_ready = bankedDataArray_io_read_1_ready; // @[DCacheWrapper.scala 998:32]
  assign ldu_1_io_banked_data_resp_0_raw_data = bankedDataArray_io_read_resp_delayed_1_0_raw_data; // @[DCacheWrapper.scala 1002:32]
  assign ldu_1_io_read_error_delayed_0 = bankedDataArray_io_read_error_delayed_1_0; // @[DCacheWrapper.scala 1000:46]
  assign ldu_1_io_bank_conflict_slow = bankedDataArray_io_bank_conflict_slow_1; // @[DCacheWrapper.scala 1004:34]
  assign ldu_1_io_miss_req_ready = missReqArb_io_in_2_ready; // @[DCacheWrapper.scala 1145:67]
  assign ldu_1_io_miss_resp_id = missQueue_io_resp_id; // @[DCacheWrapper.scala 1147:62]
  assign ldu_1_io_miss_resp_handled = missQueue_io_resp_handled; // @[DCacheWrapper.scala 1147:62]
  assign ldu_1_io_miss_resp_merged = missQueue_io_resp_merged; // @[DCacheWrapper.scala 1147:62]
  assign ldu_1_io_miss_resp_repl_way_en = missQueue_io_resp_repl_way_en; // @[DCacheWrapper.scala 1147:62]
  assign ldu_1_io_replace_way_way = {ldu_1_io_replace_way_way_left_subtree_older,_ldu_1_io_replace_way_way_T_8}; // @[Cat.scala 31:58]
  assign ldu_1_io_disable_ld_fast_wakeup = bankedDataArray_io_disable_ld_fast_wakeup_1; // @[DCacheWrapper.scala 1050:38]
  assign ldu_1_io_mq_enq_cancel = missQueue_io_mq_enq_cancel; // @[DCacheWrapper.scala 1166:66]
  assign mainPipe_clock = clock;
  assign mainPipe_reset = reset;
  assign mainPipe_io_probe_req_valid = probeQueue_io_pipe_req_valid & ~missQueue_io_refill_pipe_req_valid; // @[DCacheWrapper.scala 1395:34]
  assign mainPipe_io_probe_req_bits_miss = probeQueue_io_pipe_req_bits_miss; // @[DCacheWrapper.scala 1397:18]
  assign mainPipe_io_probe_req_bits_miss_id = probeQueue_io_pipe_req_bits_miss_id; // @[DCacheWrapper.scala 1397:18]
  assign mainPipe_io_probe_req_bits_miss_param = probeQueue_io_pipe_req_bits_miss_param; // @[DCacheWrapper.scala 1397:18]
  assign mainPipe_io_probe_req_bits_miss_dirty = probeQueue_io_pipe_req_bits_miss_dirty; // @[DCacheWrapper.scala 1397:18]
  assign mainPipe_io_probe_req_bits_miss_way_en = probeQueue_io_pipe_req_bits_miss_way_en; // @[DCacheWrapper.scala 1397:18]
  assign mainPipe_io_probe_req_bits_probe = probeQueue_io_pipe_req_bits_probe; // @[DCacheWrapper.scala 1397:18]
  assign mainPipe_io_probe_req_bits_probe_param = probeQueue_io_pipe_req_bits_probe_param; // @[DCacheWrapper.scala 1397:18]
  assign mainPipe_io_probe_req_bits_probe_need_data = probeQueue_io_pipe_req_bits_probe_need_data; // @[DCacheWrapper.scala 1397:18]
  assign mainPipe_io_probe_req_bits_source = probeQueue_io_pipe_req_bits_source; // @[DCacheWrapper.scala 1397:18]
  assign mainPipe_io_probe_req_bits_cmd = probeQueue_io_pipe_req_bits_cmd; // @[DCacheWrapper.scala 1397:18]
  assign mainPipe_io_probe_req_bits_vaddr = probeQueue_io_pipe_req_bits_vaddr; // @[DCacheWrapper.scala 1397:18]
  assign mainPipe_io_probe_req_bits_addr = probeQueue_io_pipe_req_bits_addr; // @[DCacheWrapper.scala 1397:18]
  assign mainPipe_io_probe_req_bits_store_data = probeQueue_io_pipe_req_bits_store_data; // @[DCacheWrapper.scala 1397:18]
  assign mainPipe_io_probe_req_bits_store_mask = probeQueue_io_pipe_req_bits_store_mask; // @[DCacheWrapper.scala 1397:18]
  assign mainPipe_io_probe_req_bits_word_idx = probeQueue_io_pipe_req_bits_word_idx; // @[DCacheWrapper.scala 1397:18]
  assign mainPipe_io_probe_req_bits_amo_data = probeQueue_io_pipe_req_bits_amo_data; // @[DCacheWrapper.scala 1397:18]
  assign mainPipe_io_probe_req_bits_amo_mask = probeQueue_io_pipe_req_bits_amo_mask; // @[DCacheWrapper.scala 1397:18]
  assign mainPipe_io_probe_req_bits_error = probeQueue_io_pipe_req_bits_error; // @[DCacheWrapper.scala 1397:18]
  assign mainPipe_io_probe_req_bits_replace = probeQueue_io_pipe_req_bits_replace; // @[DCacheWrapper.scala 1397:18]
  assign mainPipe_io_probe_req_bits_replace_way_en = probeQueue_io_pipe_req_bits_replace_way_en; // @[DCacheWrapper.scala 1397:18]
  assign mainPipe_io_probe_req_bits_id = probeQueue_io_pipe_req_bits_id; // @[DCacheWrapper.scala 1397:18]
  assign mainPipe_io_miss_req_ready = missReqArb_io_in_0_ready; // @[DCacheWrapper.scala 1144:41]
  assign mainPipe_io_miss_resp_merged = missQueue_io_resp_merged; // @[DCacheWrapper.scala 1148:25]
  assign mainPipe_io_miss_resp_repl_way_en = missQueue_io_resp_repl_way_en; // @[DCacheWrapper.scala 1148:25]
  assign mainPipe_io_store_req_valid = io_lsu_store_req_valid & ~refillPipe_io_req_valid; // @[DCacheWrapper.scala 1395:34]
  assign mainPipe_io_store_req_bits_vaddr = io_lsu_store_req_bits_vaddr; // @[DCacheWrapper.scala 1397:18]
  assign mainPipe_io_store_req_bits_addr = io_lsu_store_req_bits_addr; // @[DCacheWrapper.scala 1397:18]
  assign mainPipe_io_store_req_bits_data = io_lsu_store_req_bits_data; // @[DCacheWrapper.scala 1397:18]
  assign mainPipe_io_store_req_bits_mask = io_lsu_store_req_bits_mask; // @[DCacheWrapper.scala 1397:18]
  assign mainPipe_io_store_req_bits_id = io_lsu_store_req_bits_id; // @[DCacheWrapper.scala 1397:18]
  assign mainPipe_io_atomic_req_valid = pipelineReg_io_out_valid; // @[MemCommon.scala 403:11]
  assign mainPipe_io_atomic_req_bits_miss = pipelineReg_io_out_bits_miss; // @[MemCommon.scala 403:11]
  assign mainPipe_io_atomic_req_bits_miss_id = pipelineReg_io_out_bits_miss_id; // @[MemCommon.scala 403:11]
  assign mainPipe_io_atomic_req_bits_miss_param = pipelineReg_io_out_bits_miss_param; // @[MemCommon.scala 403:11]
  assign mainPipe_io_atomic_req_bits_miss_dirty = pipelineReg_io_out_bits_miss_dirty; // @[MemCommon.scala 403:11]
  assign mainPipe_io_atomic_req_bits_miss_way_en = pipelineReg_io_out_bits_miss_way_en; // @[MemCommon.scala 403:11]
  assign mainPipe_io_atomic_req_bits_probe = pipelineReg_io_out_bits_probe; // @[MemCommon.scala 403:11]
  assign mainPipe_io_atomic_req_bits_probe_param = pipelineReg_io_out_bits_probe_param; // @[MemCommon.scala 403:11]
  assign mainPipe_io_atomic_req_bits_probe_need_data = pipelineReg_io_out_bits_probe_need_data; // @[MemCommon.scala 403:11]
  assign mainPipe_io_atomic_req_bits_source = pipelineReg_io_out_bits_source; // @[MemCommon.scala 403:11]
  assign mainPipe_io_atomic_req_bits_cmd = pipelineReg_io_out_bits_cmd; // @[MemCommon.scala 403:11]
  assign mainPipe_io_atomic_req_bits_vaddr = pipelineReg_io_out_bits_vaddr; // @[MemCommon.scala 403:11]
  assign mainPipe_io_atomic_req_bits_addr = pipelineReg_io_out_bits_addr; // @[MemCommon.scala 403:11]
  assign mainPipe_io_atomic_req_bits_store_data = pipelineReg_io_out_bits_store_data; // @[MemCommon.scala 403:11]
  assign mainPipe_io_atomic_req_bits_store_mask = pipelineReg_io_out_bits_store_mask; // @[MemCommon.scala 403:11]
  assign mainPipe_io_atomic_req_bits_word_idx = pipelineReg_io_out_bits_word_idx; // @[MemCommon.scala 403:11]
  assign mainPipe_io_atomic_req_bits_amo_data = pipelineReg_io_out_bits_amo_data; // @[MemCommon.scala 403:11]
  assign mainPipe_io_atomic_req_bits_amo_mask = pipelineReg_io_out_bits_amo_mask; // @[MemCommon.scala 403:11]
  assign mainPipe_io_atomic_req_bits_error = pipelineReg_io_out_bits_error; // @[MemCommon.scala 403:11]
  assign mainPipe_io_atomic_req_bits_replace = pipelineReg_io_out_bits_replace; // @[MemCommon.scala 403:11]
  assign mainPipe_io_atomic_req_bits_replace_way_en = pipelineReg_io_out_bits_replace_way_en; // @[MemCommon.scala 403:11]
  assign mainPipe_io_atomic_req_bits_id = pipelineReg_io_out_bits_id; // @[MemCommon.scala 403:11]
  assign mainPipe_io_replace_req_valid = missQueue_io_replace_pipe_req_valid; // @[DCacheWrapper.scala 1216:27]
  assign mainPipe_io_replace_req_bits_miss = missQueue_io_replace_pipe_req_bits_miss; // @[DCacheWrapper.scala 1216:27]
  assign mainPipe_io_replace_req_bits_miss_id = missQueue_io_replace_pipe_req_bits_miss_id; // @[DCacheWrapper.scala 1216:27]
  assign mainPipe_io_replace_req_bits_miss_param = missQueue_io_replace_pipe_req_bits_miss_param; // @[DCacheWrapper.scala 1216:27]
  assign mainPipe_io_replace_req_bits_miss_dirty = missQueue_io_replace_pipe_req_bits_miss_dirty; // @[DCacheWrapper.scala 1216:27]
  assign mainPipe_io_replace_req_bits_miss_way_en = missQueue_io_replace_pipe_req_bits_miss_way_en; // @[DCacheWrapper.scala 1216:27]
  assign mainPipe_io_replace_req_bits_probe = missQueue_io_replace_pipe_req_bits_probe; // @[DCacheWrapper.scala 1216:27]
  assign mainPipe_io_replace_req_bits_probe_param = missQueue_io_replace_pipe_req_bits_probe_param; // @[DCacheWrapper.scala 1216:27]
  assign mainPipe_io_replace_req_bits_probe_need_data = missQueue_io_replace_pipe_req_bits_probe_need_data; // @[DCacheWrapper.scala 1216:27]
  assign mainPipe_io_replace_req_bits_source = missQueue_io_replace_pipe_req_bits_source; // @[DCacheWrapper.scala 1216:27]
  assign mainPipe_io_replace_req_bits_cmd = missQueue_io_replace_pipe_req_bits_cmd; // @[DCacheWrapper.scala 1216:27]
  assign mainPipe_io_replace_req_bits_vaddr = missQueue_io_replace_pipe_req_bits_vaddr; // @[DCacheWrapper.scala 1216:27]
  assign mainPipe_io_replace_req_bits_addr = missQueue_io_replace_pipe_req_bits_addr; // @[DCacheWrapper.scala 1216:27]
  assign mainPipe_io_replace_req_bits_store_data = missQueue_io_replace_pipe_req_bits_store_data; // @[DCacheWrapper.scala 1216:27]
  assign mainPipe_io_replace_req_bits_store_mask = missQueue_io_replace_pipe_req_bits_store_mask; // @[DCacheWrapper.scala 1216:27]
  assign mainPipe_io_replace_req_bits_word_idx = missQueue_io_replace_pipe_req_bits_word_idx; // @[DCacheWrapper.scala 1216:27]
  assign mainPipe_io_replace_req_bits_amo_data = missQueue_io_replace_pipe_req_bits_amo_data; // @[DCacheWrapper.scala 1216:27]
  assign mainPipe_io_replace_req_bits_amo_mask = missQueue_io_replace_pipe_req_bits_amo_mask; // @[DCacheWrapper.scala 1216:27]
  assign mainPipe_io_replace_req_bits_error = missQueue_io_replace_pipe_req_bits_error; // @[DCacheWrapper.scala 1216:27]
  assign mainPipe_io_replace_req_bits_replace = missQueue_io_replace_pipe_req_bits_replace; // @[DCacheWrapper.scala 1216:27]
  assign mainPipe_io_replace_req_bits_replace_way_en = missQueue_io_replace_pipe_req_bits_replace_way_en; // @[DCacheWrapper.scala 1216:27]
  assign mainPipe_io_replace_req_bits_id = missQueue_io_replace_pipe_req_bits_id; // @[DCacheWrapper.scala 1216:27]
  assign mainPipe_io_wb_ready = wb_io_req_ready; // @[DCacheWrapper.scala 1278:13]
  assign mainPipe_io_wb_ready_dup_0 = wb_io_req_ready_dup_0; // @[DCacheWrapper.scala 1265:28]
  assign mainPipe_io_wb_ready_dup_1 = wb_io_req_ready_dup_1; // @[DCacheWrapper.scala 1265:28]
  assign mainPipe_io_wb_ready_dup_2 = wb_io_req_ready_dup_2; // @[DCacheWrapper.scala 1265:28]
  assign mainPipe_io_wb_ready_dup_3 = wb_io_req_ready_dup_3; // @[DCacheWrapper.scala 1265:28]
  assign mainPipe_io_wb_ready_dup_4 = wb_io_req_ready_dup_4; // @[DCacheWrapper.scala 1265:28]
  assign mainPipe_io_wb_ready_dup_5 = wb_io_req_ready_dup_5; // @[DCacheWrapper.scala 1265:28]
  assign mainPipe_io_wb_ready_dup_6 = wb_io_req_ready_dup_6; // @[DCacheWrapper.scala 1265:28]
  assign mainPipe_io_wb_ready_dup_7 = wb_io_req_ready_dup_7; // @[DCacheWrapper.scala 1265:28]
  assign mainPipe_io_wb_ready_dup_8 = wb_io_req_ready_dup_8; // @[DCacheWrapper.scala 1265:28]
  assign mainPipe_io_wb_ready_dup_9 = wb_io_req_ready_dup_9; // @[DCacheWrapper.scala 1265:28]
  assign mainPipe_io_wb_ready_dup_10 = wb_io_req_ready_dup_10; // @[DCacheWrapper.scala 1265:28]
  assign mainPipe_io_wb_ready_dup_11 = wb_io_req_ready_dup_11; // @[DCacheWrapper.scala 1265:28]
  assign mainPipe_io_probe_ttob_check_resp_bits_toN = wb_io_probe_ttob_check_resp_bits_toN; // @[DCacheWrapper.scala 1283:31]
  assign mainPipe_io_data_readline_ready = bankedDataArray_io_readline_ready; // @[DCacheWrapper.scala 992:31]
  assign mainPipe_io_data_resp_0_raw_data = bankedDataArray_io_readline_resp_0_raw_data; // @[DCacheWrapper.scala 995:25]
  assign mainPipe_io_data_resp_1_raw_data = bankedDataArray_io_readline_resp_1_raw_data; // @[DCacheWrapper.scala 995:25]
  assign mainPipe_io_data_resp_2_raw_data = bankedDataArray_io_readline_resp_2_raw_data; // @[DCacheWrapper.scala 995:25]
  assign mainPipe_io_data_resp_3_raw_data = bankedDataArray_io_readline_resp_3_raw_data; // @[DCacheWrapper.scala 995:25]
  assign mainPipe_io_data_resp_4_raw_data = bankedDataArray_io_readline_resp_4_raw_data; // @[DCacheWrapper.scala 995:25]
  assign mainPipe_io_data_resp_5_raw_data = bankedDataArray_io_readline_resp_5_raw_data; // @[DCacheWrapper.scala 995:25]
  assign mainPipe_io_data_resp_6_raw_data = bankedDataArray_io_readline_resp_6_raw_data; // @[DCacheWrapper.scala 995:25]
  assign mainPipe_io_data_resp_7_raw_data = bankedDataArray_io_readline_resp_7_raw_data; // @[DCacheWrapper.scala 995:25]
  assign mainPipe_io_readline_error_delayed = bankedDataArray_io_readline_error_delayed; // @[DCacheWrapper.scala 994:38]
  assign mainPipe_io_data_write_ready = dataWriteArb_io_in_1_ready; // @[DCacheWrapper.scala 978:25]
  assign mainPipe_io_data_write_ready_dup_0 = ~refillPipe_io_data_write_valid_dup_0; // @[DCacheWrapper.scala 1263:91]
  assign mainPipe_io_data_write_ready_dup_1 = ~refillPipe_io_data_write_valid_dup_1; // @[DCacheWrapper.scala 1263:91]
  assign mainPipe_io_data_write_ready_dup_2 = ~refillPipe_io_data_write_valid_dup_2; // @[DCacheWrapper.scala 1263:91]
  assign mainPipe_io_data_write_ready_dup_3 = ~refillPipe_io_data_write_valid_dup_3; // @[DCacheWrapper.scala 1263:91]
  assign mainPipe_io_data_write_ready_dup_4 = ~refillPipe_io_data_write_valid_dup_4; // @[DCacheWrapper.scala 1263:91]
  assign mainPipe_io_data_write_ready_dup_5 = ~refillPipe_io_data_write_valid_dup_5; // @[DCacheWrapper.scala 1263:91]
  assign mainPipe_io_data_write_ready_dup_6 = ~refillPipe_io_data_write_valid_dup_6; // @[DCacheWrapper.scala 1263:91]
  assign mainPipe_io_data_write_ready_dup_7 = ~refillPipe_io_data_write_valid_dup_7; // @[DCacheWrapper.scala 1263:91]
  assign mainPipe_io_data_write_ready_dup_8 = ~refillPipe_io_data_write_valid_dup_8; // @[DCacheWrapper.scala 1263:91]
  assign mainPipe_io_data_write_ready_dup_9 = ~refillPipe_io_data_write_valid_dup_9; // @[DCacheWrapper.scala 1263:91]
  assign mainPipe_io_data_write_ready_dup_10 = ~refillPipe_io_data_write_valid_dup_10; // @[DCacheWrapper.scala 1263:91]
  assign mainPipe_io_data_write_ready_dup_11 = ~refillPipe_io_data_write_valid_dup_11; // @[DCacheWrapper.scala 1263:91]
  assign mainPipe_io_meta_resp_0_coh_state = metaArray_io_resp_2_0_coh_state; // @[DCacheWrapper.scala 863:99]
  assign mainPipe_io_meta_resp_1_coh_state = metaArray_io_resp_2_1_coh_state; // @[DCacheWrapper.scala 863:99]
  assign mainPipe_io_meta_resp_2_coh_state = metaArray_io_resp_2_2_coh_state; // @[DCacheWrapper.scala 863:99]
  assign mainPipe_io_meta_resp_3_coh_state = metaArray_io_resp_2_3_coh_state; // @[DCacheWrapper.scala 863:99]
  assign mainPipe_io_meta_resp_4_coh_state = metaArray_io_resp_2_4_coh_state; // @[DCacheWrapper.scala 863:99]
  assign mainPipe_io_meta_resp_5_coh_state = metaArray_io_resp_2_5_coh_state; // @[DCacheWrapper.scala 863:99]
  assign mainPipe_io_meta_resp_6_coh_state = metaArray_io_resp_2_6_coh_state; // @[DCacheWrapper.scala 863:99]
  assign mainPipe_io_meta_resp_7_coh_state = metaArray_io_resp_2_7_coh_state; // @[DCacheWrapper.scala 863:99]
  assign mainPipe_io_extra_meta_resp_0_error = errorArray_io_resp_2_0; // @[DCacheWrapper.scala 877:43]
  assign mainPipe_io_extra_meta_resp_1_error = errorArray_io_resp_2_1; // @[DCacheWrapper.scala 877:43]
  assign mainPipe_io_extra_meta_resp_2_error = errorArray_io_resp_2_2; // @[DCacheWrapper.scala 877:43]
  assign mainPipe_io_extra_meta_resp_3_error = errorArray_io_resp_2_3; // @[DCacheWrapper.scala 877:43]
  assign mainPipe_io_extra_meta_resp_4_error = errorArray_io_resp_2_4; // @[DCacheWrapper.scala 877:43]
  assign mainPipe_io_extra_meta_resp_5_error = errorArray_io_resp_2_5; // @[DCacheWrapper.scala 877:43]
  assign mainPipe_io_extra_meta_resp_6_error = errorArray_io_resp_2_6; // @[DCacheWrapper.scala 877:43]
  assign mainPipe_io_extra_meta_resp_7_error = errorArray_io_resp_2_7; // @[DCacheWrapper.scala 877:43]
  assign mainPipe_io_tag_read_ready = tagArray_io_read_2_ready; // @[DCacheWrapper.scala 956:25]
  assign mainPipe_io_tag_resp_0 = tagArray_io_resp_2_0; // @[DCacheWrapper.scala 957:24]
  assign mainPipe_io_tag_resp_1 = tagArray_io_resp_2_1; // @[DCacheWrapper.scala 957:24]
  assign mainPipe_io_tag_resp_2 = tagArray_io_resp_2_2; // @[DCacheWrapper.scala 957:24]
  assign mainPipe_io_tag_resp_3 = tagArray_io_resp_2_3; // @[DCacheWrapper.scala 957:24]
  assign mainPipe_io_tag_resp_4 = tagArray_io_resp_2_4; // @[DCacheWrapper.scala 957:24]
  assign mainPipe_io_tag_resp_5 = tagArray_io_resp_2_5; // @[DCacheWrapper.scala 957:24]
  assign mainPipe_io_tag_resp_6 = tagArray_io_resp_2_6; // @[DCacheWrapper.scala 957:24]
  assign mainPipe_io_tag_resp_7 = tagArray_io_resp_2_7; // @[DCacheWrapper.scala 957:24]
  assign mainPipe_io_tag_write_ready = tag_write_arb_io_in_1_ready; // @[DCacheWrapper.scala 964:26]
  assign mainPipe_io_tag_write_ready_dup_0 = ~refillPipe_io_tag_write_valid_dup_0; // @[DCacheWrapper.scala 1264:89]
  assign mainPipe_io_tag_write_ready_dup_1 = ~refillPipe_io_tag_write_valid_dup_1; // @[DCacheWrapper.scala 1264:89]
  assign mainPipe_io_tag_write_ready_dup_2 = ~refillPipe_io_tag_write_valid_dup_2; // @[DCacheWrapper.scala 1264:89]
  assign mainPipe_io_tag_write_ready_dup_3 = ~refillPipe_io_tag_write_valid_dup_3; // @[DCacheWrapper.scala 1264:89]
  assign mainPipe_io_tag_write_ready_dup_4 = ~refillPipe_io_tag_write_valid_dup_4; // @[DCacheWrapper.scala 1264:89]
  assign mainPipe_io_tag_write_ready_dup_5 = ~refillPipe_io_tag_write_valid_dup_5; // @[DCacheWrapper.scala 1264:89]
  assign mainPipe_io_tag_write_ready_dup_6 = ~refillPipe_io_tag_write_valid_dup_6; // @[DCacheWrapper.scala 1264:89]
  assign mainPipe_io_tag_write_ready_dup_7 = ~refillPipe_io_tag_write_valid_dup_7; // @[DCacheWrapper.scala 1264:89]
  assign mainPipe_io_tag_write_ready_dup_8 = ~refillPipe_io_tag_write_valid_dup_8; // @[DCacheWrapper.scala 1264:89]
  assign mainPipe_io_tag_write_ready_dup_9 = ~refillPipe_io_tag_write_valid_dup_9; // @[DCacheWrapper.scala 1264:89]
  assign mainPipe_io_tag_write_ready_dup_10 = ~refillPipe_io_tag_write_valid_dup_10; // @[DCacheWrapper.scala 1264:89]
  assign mainPipe_io_tag_write_ready_dup_11 = ~refillPipe_io_tag_write_valid_dup_11; // @[DCacheWrapper.scala 1264:89]
  assign mainPipe_io_replace_way_way = {mainPipe_io_replace_way_way_left_subtree_older,_mainPipe_io_replace_way_way_T_8}
    ; // @[Cat.scala 31:58]
  assign mainPipe_io_invalid_resv_set = mainPipe_io_invalid_resv_set_REG; // @[DCacheWrapper.scala 1211:32]
  assign refillPipe_io_req_valid = missQueue_io_refill_pipe_req_valid & ~refillShouldBeBlocked; // @[DCacheWrapper.scala 1395:34]
  assign refillPipe_io_req_bits_source = missQueue_io_refill_pipe_req_bits_source; // @[DCacheWrapper.scala 1397:18]
  assign refillPipe_io_req_bits_addr = missQueue_io_refill_pipe_req_bits_addr; // @[DCacheWrapper.scala 1397:18]
  assign refillPipe_io_req_bits_miss_id = missQueue_io_refill_pipe_req_bits_miss_id; // @[DCacheWrapper.scala 1397:18]
  assign refillPipe_io_req_bits_id = missQueue_io_refill_pipe_req_bits_id; // @[DCacheWrapper.scala 1397:18]
  assign refillPipe_io_req_bits_error = missQueue_io_refill_pipe_req_bits_error; // @[DCacheWrapper.scala 1397:18]
  assign refillPipe_io_req_bits_wmask = missQueue_io_refill_pipe_req_bits_wmask; // @[DCacheWrapper.scala 1397:18]
  assign refillPipe_io_req_bits_data_0 = missQueue_io_refill_pipe_req_bits_data_0; // @[DCacheWrapper.scala 1397:18]
  assign refillPipe_io_req_bits_data_1 = missQueue_io_refill_pipe_req_bits_data_1; // @[DCacheWrapper.scala 1397:18]
  assign refillPipe_io_req_bits_data_2 = missQueue_io_refill_pipe_req_bits_data_2; // @[DCacheWrapper.scala 1397:18]
  assign refillPipe_io_req_bits_data_3 = missQueue_io_refill_pipe_req_bits_data_3; // @[DCacheWrapper.scala 1397:18]
  assign refillPipe_io_req_bits_data_4 = missQueue_io_refill_pipe_req_bits_data_4; // @[DCacheWrapper.scala 1397:18]
  assign refillPipe_io_req_bits_data_5 = missQueue_io_refill_pipe_req_bits_data_5; // @[DCacheWrapper.scala 1397:18]
  assign refillPipe_io_req_bits_data_6 = missQueue_io_refill_pipe_req_bits_data_6; // @[DCacheWrapper.scala 1397:18]
  assign refillPipe_io_req_bits_data_7 = missQueue_io_refill_pipe_req_bits_data_7; // @[DCacheWrapper.scala 1397:18]
  assign refillPipe_io_req_bits_meta_coh_state = missQueue_io_refill_pipe_req_bits_meta_coh_state; // @[DCacheWrapper.scala 1397:18]
  assign refillPipe_io_req_dup_for_data_w0_valid = missQueue_io_refill_pipe_req_dup_0_valid &
    _refillPipe_io_req_dup_for_data_w0_valid_T; // @[DCacheWrapper.scala 1248:79]
  assign refillPipe_io_req_dup_for_data_w0_bits_addr = missQueue_io_refill_pipe_req_dup_0_bits_addr; // @[DCacheWrapper.scala 1242:12]
  assign refillPipe_io_req_dup_for_data_w0_bits_way_en = missQueue_io_refill_pipe_req_dup_0_bits_way_en; // @[DCacheWrapper.scala 1242:12]
  assign refillPipe_io_req_dup_for_data_w0_bits_alias = missQueue_io_refill_pipe_req_dup_0_bits_alias; // @[DCacheWrapper.scala 1242:12]
  assign refillPipe_io_req_dup_for_data_w1_valid = missQueue_io_refill_pipe_req_dup_1_valid &
    _refillPipe_io_req_dup_for_data_w1_valid_T; // @[DCacheWrapper.scala 1248:79]
  assign refillPipe_io_req_dup_for_data_w1_bits_addr = missQueue_io_refill_pipe_req_dup_1_bits_addr; // @[DCacheWrapper.scala 1242:12]
  assign refillPipe_io_req_dup_for_data_w1_bits_way_en = missQueue_io_refill_pipe_req_dup_1_bits_way_en; // @[DCacheWrapper.scala 1242:12]
  assign refillPipe_io_req_dup_for_data_w1_bits_alias = missQueue_io_refill_pipe_req_dup_1_bits_alias; // @[DCacheWrapper.scala 1242:12]
  assign refillPipe_io_req_dup_for_data_w2_valid = missQueue_io_refill_pipe_req_dup_2_valid &
    _refillPipe_io_req_dup_for_data_w2_valid_T; // @[DCacheWrapper.scala 1248:79]
  assign refillPipe_io_req_dup_for_data_w2_bits_addr = missQueue_io_refill_pipe_req_dup_2_bits_addr; // @[DCacheWrapper.scala 1242:12]
  assign refillPipe_io_req_dup_for_data_w2_bits_way_en = missQueue_io_refill_pipe_req_dup_2_bits_way_en; // @[DCacheWrapper.scala 1242:12]
  assign refillPipe_io_req_dup_for_data_w2_bits_alias = missQueue_io_refill_pipe_req_dup_2_bits_alias; // @[DCacheWrapper.scala 1242:12]
  assign refillPipe_io_req_dup_for_data_w3_valid = missQueue_io_refill_pipe_req_dup_3_valid &
    _refillPipe_io_req_dup_for_data_w3_valid_T; // @[DCacheWrapper.scala 1248:79]
  assign refillPipe_io_req_dup_for_data_w3_bits_addr = missQueue_io_refill_pipe_req_dup_3_bits_addr; // @[DCacheWrapper.scala 1242:12]
  assign refillPipe_io_req_dup_for_data_w3_bits_way_en = missQueue_io_refill_pipe_req_dup_3_bits_way_en; // @[DCacheWrapper.scala 1242:12]
  assign refillPipe_io_req_dup_for_data_w3_bits_alias = missQueue_io_refill_pipe_req_dup_3_bits_alias; // @[DCacheWrapper.scala 1242:12]
  assign refillPipe_io_req_dup_for_data_w4_valid = missQueue_io_refill_pipe_req_dup_4_valid &
    _refillPipe_io_req_dup_for_data_w4_valid_T; // @[DCacheWrapper.scala 1248:79]
  assign refillPipe_io_req_dup_for_data_w4_bits_addr = missQueue_io_refill_pipe_req_dup_4_bits_addr; // @[DCacheWrapper.scala 1242:12]
  assign refillPipe_io_req_dup_for_data_w4_bits_way_en = missQueue_io_refill_pipe_req_dup_4_bits_way_en; // @[DCacheWrapper.scala 1242:12]
  assign refillPipe_io_req_dup_for_data_w4_bits_alias = missQueue_io_refill_pipe_req_dup_4_bits_alias; // @[DCacheWrapper.scala 1242:12]
  assign refillPipe_io_req_dup_for_data_w5_valid = missQueue_io_refill_pipe_req_dup_5_valid &
    _refillPipe_io_req_dup_for_data_w5_valid_T; // @[DCacheWrapper.scala 1248:79]
  assign refillPipe_io_req_dup_for_data_w5_bits_addr = missQueue_io_refill_pipe_req_dup_5_bits_addr; // @[DCacheWrapper.scala 1242:12]
  assign refillPipe_io_req_dup_for_data_w5_bits_way_en = missQueue_io_refill_pipe_req_dup_5_bits_way_en; // @[DCacheWrapper.scala 1242:12]
  assign refillPipe_io_req_dup_for_data_w5_bits_alias = missQueue_io_refill_pipe_req_dup_5_bits_alias; // @[DCacheWrapper.scala 1242:12]
  assign refillPipe_io_req_dup_for_data_w6_valid = missQueue_io_refill_pipe_req_dup_6_valid &
    _refillPipe_io_req_dup_for_data_w6_valid_T; // @[DCacheWrapper.scala 1248:79]
  assign refillPipe_io_req_dup_for_data_w6_bits_addr = missQueue_io_refill_pipe_req_dup_6_bits_addr; // @[DCacheWrapper.scala 1242:12]
  assign refillPipe_io_req_dup_for_data_w6_bits_way_en = missQueue_io_refill_pipe_req_dup_6_bits_way_en; // @[DCacheWrapper.scala 1242:12]
  assign refillPipe_io_req_dup_for_data_w6_bits_alias = missQueue_io_refill_pipe_req_dup_6_bits_alias; // @[DCacheWrapper.scala 1242:12]
  assign refillPipe_io_req_dup_for_data_w7_valid = missQueue_io_refill_pipe_req_dup_7_valid &
    _refillPipe_io_req_dup_for_data_w7_valid_T; // @[DCacheWrapper.scala 1248:79]
  assign refillPipe_io_req_dup_for_data_w7_bits_addr = missQueue_io_refill_pipe_req_dup_7_bits_addr; // @[DCacheWrapper.scala 1242:12]
  assign refillPipe_io_req_dup_for_data_w7_bits_way_en = missQueue_io_refill_pipe_req_dup_7_bits_way_en; // @[DCacheWrapper.scala 1242:12]
  assign refillPipe_io_req_dup_for_data_w7_bits_alias = missQueue_io_refill_pipe_req_dup_7_bits_alias; // @[DCacheWrapper.scala 1242:12]
  assign refillPipe_io_req_dup_for_meta_wvalid = missQueue_io_refill_pipe_req_dup_8_valid & ~
    refillShouldBeBlocked_dup_8; // @[DCacheWrapper.scala 1251:80]
  assign refillPipe_io_req_dup_for_meta_waddr = missQueue_io_refill_pipe_req_dup_8_bits_addr; // @[DCacheWrapper.scala 1244:41]
  assign refillPipe_io_req_dup_for_meta_wway_en = missQueue_io_refill_pipe_req_dup_8_bits_way_en; // @[DCacheWrapper.scala 1244:41]
  assign refillPipe_io_req_dup_for_meta_walias = missQueue_io_refill_pipe_req_dup_8_bits_alias; // @[DCacheWrapper.scala 1244:41]
  assign refillPipe_io_req_dup_for_tag_wvalid = missQueue_io_refill_pipe_req_dup_9_valid & ~refillShouldBeBlocked_dup_9
    ; // @[DCacheWrapper.scala 1252:78]
  assign refillPipe_io_req_dup_for_tag_waddr = missQueue_io_refill_pipe_req_dup_9_bits_addr; // @[DCacheWrapper.scala 1245:40]
  assign refillPipe_io_req_dup_for_tag_wway_en = missQueue_io_refill_pipe_req_dup_9_bits_way_en; // @[DCacheWrapper.scala 1245:40]
  assign refillPipe_io_req_dup_for_tag_walias = missQueue_io_refill_pipe_req_dup_9_bits_alias; // @[DCacheWrapper.scala 1245:40]
  assign refillPipe_io_req_dup_for_err_wvalid = missQueue_io_refill_pipe_req_dup_10_valid & ~
    refillShouldBeBlocked_dup_10; // @[DCacheWrapper.scala 1253:78]
  assign refillPipe_io_req_dup_for_err_waddr = missQueue_io_refill_pipe_req_dup_10_bits_addr; // @[DCacheWrapper.scala 1246:40]
  assign refillPipe_io_req_dup_for_err_wway_en = missQueue_io_refill_pipe_req_dup_10_bits_way_en; // @[DCacheWrapper.scala 1246:40]
  assign refillPipe_io_req_dup_for_err_walias = missQueue_io_refill_pipe_req_dup_10_bits_alias; // @[DCacheWrapper.scala 1246:40]
  assign missQueue_clock = clock;
  assign missQueue_reset = reset;
  assign missQueue_io_req_valid = missReqArb_io_out_valid; // @[DCacheWrapper.scala 1160:21]
  assign missQueue_io_req_bits_source = missReqArb_io_out_bits_source; // @[DCacheWrapper.scala 1160:21]
  assign missQueue_io_req_bits_cmd = missReqArb_io_out_bits_cmd; // @[DCacheWrapper.scala 1160:21]
  assign missQueue_io_req_bits_addr = missReqArb_io_out_bits_addr; // @[DCacheWrapper.scala 1160:21]
  assign missQueue_io_req_bits_vaddr = missReqArb_io_out_bits_vaddr; // @[DCacheWrapper.scala 1160:21]
  assign missQueue_io_req_bits_way_en = missReqArb_io_out_bits_way_en; // @[DCacheWrapper.scala 1160:21]
  assign missQueue_io_req_bits_word_idx = missReqArb_io_out_bits_word_idx; // @[DCacheWrapper.scala 1160:21]
  assign missQueue_io_req_bits_amo_data = missReqArb_io_out_bits_amo_data; // @[DCacheWrapper.scala 1160:21]
  assign missQueue_io_req_bits_amo_mask = missReqArb_io_out_bits_amo_mask; // @[DCacheWrapper.scala 1160:21]
  assign missQueue_io_req_bits_req_coh_state = missReqArb_io_out_bits_req_coh_state; // @[DCacheWrapper.scala 1160:21]
  assign missQueue_io_req_bits_replace_coh_state = missReqArb_io_out_bits_replace_coh_state; // @[DCacheWrapper.scala 1160:21]
  assign missQueue_io_req_bits_replace_tag = missReqArb_io_out_bits_replace_tag; // @[DCacheWrapper.scala 1160:21]
  assign missQueue_io_req_bits_id = missReqArb_io_out_bits_id; // @[DCacheWrapper.scala 1160:21]
  assign missQueue_io_req_bits_cancel = wb_io_block_miss_req | missReqArb_io_out_bits_cancel; // @[DCacheWrapper.scala 1160:21 1161:30 1162:34]
  assign missQueue_io_req_bits_store_data = missReqArb_io_out_bits_store_data; // @[DCacheWrapper.scala 1160:21]
  assign missQueue_io_req_bits_store_mask = missReqArb_io_out_bits_store_mask; // @[DCacheWrapper.scala 1160:21]
  assign missQueue_io_mem_acquire_ready = auto_client_out_a_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign missQueue_io_mem_grant_valid = (auto_client_out_d_bits_opcode == 3'h4 | auto_client_out_d_bits_opcode == 3'h5)
     & auto_client_out_d_valid; // @[DCacheWrapper.scala 1302:95 1303:28 1294:32]
  assign missQueue_io_mem_grant_bits_opcode = auto_client_out_d_bits_opcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign missQueue_io_mem_grant_bits_param = auto_client_out_d_bits_param; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign missQueue_io_mem_grant_bits_size = auto_client_out_d_bits_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign missQueue_io_mem_grant_bits_source = auto_client_out_d_bits_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign missQueue_io_mem_grant_bits_sink = auto_client_out_d_bits_sink; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign missQueue_io_mem_grant_bits_denied = auto_client_out_d_bits_denied; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign missQueue_io_mem_grant_bits_data = auto_client_out_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign missQueue_io_mem_grant_bits_corrupt = auto_client_out_d_bits_corrupt; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign missQueue_io_mem_finish_ready = auto_client_out_e_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign missQueue_io_refill_pipe_req_ready = ~refillShouldBeBlocked; // @[DCacheWrapper.scala 1396:37]
  assign missQueue_io_refill_pipe_req_dup_0_ready = ~refillShouldBeBlocked_dup_0; // @[DCacheWrapper.scala 1268:43]
  assign missQueue_io_refill_pipe_req_dup_1_ready = ~refillShouldBeBlocked_dup_1; // @[DCacheWrapper.scala 1268:43]
  assign missQueue_io_refill_pipe_req_dup_2_ready = ~refillShouldBeBlocked_dup_2; // @[DCacheWrapper.scala 1268:43]
  assign missQueue_io_refill_pipe_req_dup_3_ready = ~refillShouldBeBlocked_dup_3; // @[DCacheWrapper.scala 1268:43]
  assign missQueue_io_refill_pipe_req_dup_4_ready = ~refillShouldBeBlocked_dup_4; // @[DCacheWrapper.scala 1268:43]
  assign missQueue_io_refill_pipe_req_dup_5_ready = ~refillShouldBeBlocked_dup_5; // @[DCacheWrapper.scala 1268:43]
  assign missQueue_io_refill_pipe_req_dup_6_ready = ~refillShouldBeBlocked_dup_6; // @[DCacheWrapper.scala 1268:43]
  assign missQueue_io_refill_pipe_req_dup_7_ready = ~refillShouldBeBlocked_dup_7; // @[DCacheWrapper.scala 1268:43]
  assign missQueue_io_refill_pipe_req_dup_8_ready = ~refillShouldBeBlocked_dup_8; // @[DCacheWrapper.scala 1268:43]
  assign missQueue_io_refill_pipe_req_dup_9_ready = ~refillShouldBeBlocked_dup_9; // @[DCacheWrapper.scala 1268:43]
  assign missQueue_io_refill_pipe_req_dup_10_ready = ~refillShouldBeBlocked_dup_10; // @[DCacheWrapper.scala 1268:43]
  assign missQueue_io_refill_pipe_req_dup_11_ready = ~refillShouldBeBlocked_dup_11; // @[DCacheWrapper.scala 1268:43]
  assign missQueue_io_refill_pipe_req_dup_12_ready = ~refillShouldBeBlocked_dup_12; // @[DCacheWrapper.scala 1268:43]
  assign missQueue_io_refill_pipe_req_dup_13_ready = ~refillShouldBeBlocked_dup_13; // @[DCacheWrapper.scala 1268:43]
  assign missQueue_io_refill_pipe_req_dup_14_ready = ~refillShouldBeBlocked_dup_14; // @[DCacheWrapper.scala 1268:43]
  assign missQueue_io_refill_pipe_req_dup_15_ready = ~refillShouldBeBlocked_dup_15; // @[DCacheWrapper.scala 1268:43]
  assign missQueue_io_refill_pipe_req_dup_16_ready = ~refillShouldBeBlocked_dup_16; // @[DCacheWrapper.scala 1268:43]
  assign missQueue_io_refill_pipe_req_dup_17_ready = ~refillShouldBeBlocked_dup_17; // @[DCacheWrapper.scala 1268:43]
  assign missQueue_io_refill_pipe_req_dup_18_ready = ~refillShouldBeBlocked_dup_18; // @[DCacheWrapper.scala 1268:43]
  assign missQueue_io_refill_pipe_req_dup_19_ready = ~refillShouldBeBlocked_dup_19; // @[DCacheWrapper.scala 1268:43]
  assign missQueue_io_refill_pipe_req_dup_20_ready = ~refillShouldBeBlocked_dup_20; // @[DCacheWrapper.scala 1268:43]
  assign missQueue_io_refill_pipe_req_dup_21_ready = ~refillShouldBeBlocked_dup_21; // @[DCacheWrapper.scala 1268:43]
  assign missQueue_io_refill_pipe_req_dup_22_ready = ~refillShouldBeBlocked_dup_22; // @[DCacheWrapper.scala 1268:43]
  assign missQueue_io_refill_pipe_req_dup_23_ready = ~refillShouldBeBlocked_dup_23; // @[DCacheWrapper.scala 1268:43]
  assign missQueue_io_refill_pipe_resp_valid = refillPipe_io_resp_valid; // @[DCacheWrapper.scala 1271:33]
  assign missQueue_io_refill_pipe_resp_bits = refillPipe_io_resp_bits; // @[DCacheWrapper.scala 1271:33]
  assign missQueue_io_replace_pipe_req_ready = mainPipe_io_replace_req_ready; // @[DCacheWrapper.scala 1216:27]
  assign missQueue_io_replace_pipe_resp_valid = mainPipe_io_replace_resp_valid; // @[DCacheWrapper.scala 1217:34]
  assign missQueue_io_replace_pipe_resp_bits = mainPipe_io_replace_resp_bits; // @[DCacheWrapper.scala 1217:34]
  assign missQueue_io_main_pipe_req_ready = main_pipe_atomic_req_arb_io_in_0_ready; // @[DCacheWrapper.scala 265:9]
  assign missQueue_io_main_pipe_resp_valid = missQueue_io_main_pipe_resp_REG_valid; // @[DCacheWrapper.scala 1186:31]
  assign missQueue_io_main_pipe_resp_bits_miss_id = missQueue_io_main_pipe_resp_REG_bits_miss_id; // @[DCacheWrapper.scala 1186:31]
  assign missQueue_io_main_pipe_resp_bits_ack_miss_queue = missQueue_io_main_pipe_resp_REG_bits_ack_miss_queue; // @[DCacheWrapper.scala 1186:31]
  assign missQueue_io_probe_addr = auto_client_out_baddress; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign missQueue_io_forward_0_valid = io_lsu_forward_mshr_0_valid; // @[DCacheWrapper.scala 707:16]
  assign missQueue_io_forward_0_mshrid = io_lsu_forward_mshr_0_mshrid; // @[DCacheWrapper.scala 708:17]
  assign missQueue_io_forward_0_paddr = io_lsu_forward_mshr_0_paddr; // @[DCacheWrapper.scala 709:16]
  assign missQueue_io_forward_1_valid = io_lsu_forward_mshr_1_valid; // @[DCacheWrapper.scala 707:16]
  assign missQueue_io_forward_1_mshrid = io_lsu_forward_mshr_1_mshrid; // @[DCacheWrapper.scala 708:17]
  assign missQueue_io_forward_1_paddr = io_lsu_forward_mshr_1_paddr; // @[DCacheWrapper.scala 709:16]
  assign missQueue_io_l2_pf_store_only = missQueue_io_l2_pf_store_only_REG; // @[DCacheWrapper.scala 835:33]
  assign missQueue_io_lqEmpty = io_lqEmpty; // @[DCacheWrapper.scala 833:24]
  assign missQueue_rob_head_vaddr_0_valid = sourceVaddr_valid;
  assign missQueue_rob_head_vaddr_0_bits = sourceVaddr_bits;
  assign probeQueue_clock = clock;
  assign probeQueue_reset = reset;
  assign probeQueue_io_mem_probe_valid = auto_client_out_bvalid & ~missQueue_io_probe_block; // @[DCacheWrapper.scala 1395:34]
  assign probeQueue_io_mem_probe_bits_param = auto_client_out_bparam; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign probeQueue_io_mem_probe_bits_address = auto_client_out_baddress; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign probeQueue_io_mem_probe_bits_data = auto_client_out_bdata; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign probeQueue_io_pipe_req_ready = mainPipe_io_probe_req_ready & _mainPipe_io_probe_req_valid_T; // @[DCacheWrapper.scala 1396:34]
  assign probeQueue_io_lrsc_locked_block_valid = mainPipe_io_lrsc_locked_block_valid; // @[DCacheWrapper.scala 1192:35]
  assign probeQueue_io_lrsc_locked_block_bits = mainPipe_io_lrsc_locked_block_bits; // @[DCacheWrapper.scala 1192:35]
  assign probeQueue_io_update_resv_set = mainPipe_io_update_resv_set; // @[DCacheWrapper.scala 1193:33]
  assign wb_clock = clock;
  assign wb_reset = reset;
  assign wb_io_req_valid = mainPipe_io_wb_valid; // @[DCacheWrapper.scala 1278:13]
  assign wb_io_req_bits_param = mainPipe_io_wb_bits_param; // @[DCacheWrapper.scala 1278:13]
  assign wb_io_req_bits_voluntary = mainPipe_io_wb_bits_voluntary; // @[DCacheWrapper.scala 1278:13]
  assign wb_io_req_bits_hasData = mainPipe_io_wb_bits_hasData; // @[DCacheWrapper.scala 1278:13]
  assign wb_io_req_bits_delay_release = mainPipe_io_wb_bits_delay_release; // @[DCacheWrapper.scala 1278:13]
  assign wb_io_req_bits_miss_id = mainPipe_io_wb_bits_miss_id; // @[DCacheWrapper.scala 1278:13]
  assign wb_io_req_bits_addr = mainPipe_io_wb_bits_addr; // @[DCacheWrapper.scala 1278:13]
  assign wb_io_req_bits_data = mainPipe_io_wb_bits_data; // @[DCacheWrapper.scala 1278:13]
  assign wb_io_mem_release_ready = auto_client_out_c_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign wb_io_mem_grant_valid = auto_client_out_d_bits_opcode == 3'h4 | auto_client_out_d_bits_opcode == 3'h5 ? 1'h0 :
    _GEN_19; // @[DCacheWrapper.scala 1297:25 1302:95]
  assign wb_io_mem_grant_bits_source = auto_client_out_d_bits_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign wb_io_release_wakeup_valid = refillPipe_io_release_wakeup_valid; // @[DCacheWrapper.scala 1280:24]
  assign wb_io_release_wakeup_bits = refillPipe_io_release_wakeup_bits; // @[DCacheWrapper.scala 1280:24]
  assign wb_io_release_update_valid = mainPipe_io_release_update_valid; // @[DCacheWrapper.scala 1281:24]
  assign wb_io_release_update_bits_addr = mainPipe_io_release_update_bits_addr; // @[DCacheWrapper.scala 1281:24]
  assign wb_io_release_update_bits_mask = mainPipe_io_release_update_bits_mask; // @[DCacheWrapper.scala 1281:24]
  assign wb_io_release_update_bits_data = mainPipe_io_release_update_bits_data; // @[DCacheWrapper.scala 1281:24]
  assign wb_io_probe_ttob_check_req_valid = mainPipe_io_probe_ttob_check_req_valid; // @[DCacheWrapper.scala 1282:30]
  assign wb_io_probe_ttob_check_req_bits_addr = mainPipe_io_probe_ttob_check_req_bits_addr; // @[DCacheWrapper.scala 1282:30]
  assign wb_io_miss_req_valid = missReqArb_io_out_valid; // @[DCacheWrapper.scala 1156:24]
  assign wb_io_miss_req_bits = missReqArb_io_out_bits_addr; // @[DCacheWrapper.scala 1157:24]
  assign tag_write_arb_io_in_0_valid = refillPipe_io_tag_write_valid; // @[DCacheWrapper.scala 963:26]
  assign tag_write_arb_io_in_0_bits_idx = refillPipe_io_tag_write_bits_idx; // @[DCacheWrapper.scala 963:26]
  assign tag_write_arb_io_in_0_bits_way_en = refillPipe_io_tag_write_bits_way_en; // @[DCacheWrapper.scala 963:26]
  assign tag_write_arb_io_in_0_bits_tag = refillPipe_io_tag_write_bits_tag; // @[DCacheWrapper.scala 963:26]
  assign tag_write_arb_io_in_1_valid = mainPipe_io_tag_write_valid; // @[DCacheWrapper.scala 964:26]
  assign tag_write_arb_io_in_1_bits_idx = mainPipe_io_tag_write_bits_idx; // @[DCacheWrapper.scala 964:26]
  assign tag_write_arb_io_in_1_bits_way_en = mainPipe_io_tag_write_bits_way_en; // @[DCacheWrapper.scala 964:26]
  assign tag_write_arb_io_in_1_bits_tag = mainPipe_io_tag_write_bits_tag; // @[DCacheWrapper.scala 964:26]
  assign dataWriteArb_io_in_0_valid = refillPipe_io_data_write_valid; // @[DCacheWrapper.scala 977:25]
  assign dataWriteArb_io_in_0_bits_wmask = refillPipe_io_data_write_bits_wmask; // @[DCacheWrapper.scala 977:25]
  assign dataWriteArb_io_in_0_bits_data_0 = refillPipe_io_data_write_bits_data_0; // @[DCacheWrapper.scala 977:25]
  assign dataWriteArb_io_in_0_bits_data_1 = refillPipe_io_data_write_bits_data_1; // @[DCacheWrapper.scala 977:25]
  assign dataWriteArb_io_in_0_bits_data_2 = refillPipe_io_data_write_bits_data_2; // @[DCacheWrapper.scala 977:25]
  assign dataWriteArb_io_in_0_bits_data_3 = refillPipe_io_data_write_bits_data_3; // @[DCacheWrapper.scala 977:25]
  assign dataWriteArb_io_in_0_bits_data_4 = refillPipe_io_data_write_bits_data_4; // @[DCacheWrapper.scala 977:25]
  assign dataWriteArb_io_in_0_bits_data_5 = refillPipe_io_data_write_bits_data_5; // @[DCacheWrapper.scala 977:25]
  assign dataWriteArb_io_in_0_bits_data_6 = refillPipe_io_data_write_bits_data_6; // @[DCacheWrapper.scala 977:25]
  assign dataWriteArb_io_in_0_bits_data_7 = refillPipe_io_data_write_bits_data_7; // @[DCacheWrapper.scala 977:25]
  assign dataWriteArb_io_in_1_valid = mainPipe_io_data_write_valid; // @[DCacheWrapper.scala 978:25]
  assign dataWriteArb_io_in_1_bits_wmask = mainPipe_io_data_write_bits_wmask; // @[DCacheWrapper.scala 978:25]
  assign dataWriteArb_io_in_1_bits_data_0 = mainPipe_io_data_write_bits_data_0; // @[DCacheWrapper.scala 978:25]
  assign dataWriteArb_io_in_1_bits_data_1 = mainPipe_io_data_write_bits_data_1; // @[DCacheWrapper.scala 978:25]
  assign dataWriteArb_io_in_1_bits_data_2 = mainPipe_io_data_write_bits_data_2; // @[DCacheWrapper.scala 978:25]
  assign dataWriteArb_io_in_1_bits_data_3 = mainPipe_io_data_write_bits_data_3; // @[DCacheWrapper.scala 978:25]
  assign dataWriteArb_io_in_1_bits_data_4 = mainPipe_io_data_write_bits_data_4; // @[DCacheWrapper.scala 978:25]
  assign dataWriteArb_io_in_1_bits_data_5 = mainPipe_io_data_write_bits_data_5; // @[DCacheWrapper.scala 978:25]
  assign dataWriteArb_io_in_1_bits_data_6 = mainPipe_io_data_write_bits_data_6; // @[DCacheWrapper.scala 978:25]
  assign dataWriteArb_io_in_1_bits_data_7 = mainPipe_io_data_write_bits_data_7; // @[DCacheWrapper.scala 978:25]
  assign dataWriteArb_dup_io_in_0_valid = refillPipe_io_data_write_dup_0_valid; // @[DCacheWrapper.scala 984:37]
  assign dataWriteArb_dup_io_in_0_bits_way_en = refillPipe_io_data_write_dup_0_bits_way_en; // @[DCacheWrapper.scala 985:36]
  assign dataWriteArb_dup_io_in_0_bits_addr = refillPipe_io_data_write_dup_0_bits_addr; // @[DCacheWrapper.scala 985:36]
  assign dataWriteArb_dup_io_in_1_valid = mainPipe_io_data_write_dup_0_valid; // @[DCacheWrapper.scala 986:37]
  assign dataWriteArb_dup_io_in_1_bits_way_en = mainPipe_io_data_write_dup_0_bits_way_en; // @[DCacheWrapper.scala 987:36]
  assign dataWriteArb_dup_io_in_1_bits_addr = mainPipe_io_data_write_dup_0_bits_addr; // @[DCacheWrapper.scala 987:36]
  assign dataWriteArb_dup_1_io_in_0_valid = refillPipe_io_data_write_dup_1_valid; // @[DCacheWrapper.scala 984:37]
  assign dataWriteArb_dup_1_io_in_0_bits_way_en = refillPipe_io_data_write_dup_1_bits_way_en; // @[DCacheWrapper.scala 985:36]
  assign dataWriteArb_dup_1_io_in_0_bits_addr = refillPipe_io_data_write_dup_1_bits_addr; // @[DCacheWrapper.scala 985:36]
  assign dataWriteArb_dup_1_io_in_1_valid = mainPipe_io_data_write_dup_1_valid; // @[DCacheWrapper.scala 986:37]
  assign dataWriteArb_dup_1_io_in_1_bits_way_en = mainPipe_io_data_write_dup_1_bits_way_en; // @[DCacheWrapper.scala 987:36]
  assign dataWriteArb_dup_1_io_in_1_bits_addr = mainPipe_io_data_write_dup_1_bits_addr; // @[DCacheWrapper.scala 987:36]
  assign dataWriteArb_dup_2_io_in_0_valid = refillPipe_io_data_write_dup_2_valid; // @[DCacheWrapper.scala 984:37]
  assign dataWriteArb_dup_2_io_in_0_bits_way_en = refillPipe_io_data_write_dup_2_bits_way_en; // @[DCacheWrapper.scala 985:36]
  assign dataWriteArb_dup_2_io_in_0_bits_addr = refillPipe_io_data_write_dup_2_bits_addr; // @[DCacheWrapper.scala 985:36]
  assign dataWriteArb_dup_2_io_in_1_valid = mainPipe_io_data_write_dup_2_valid; // @[DCacheWrapper.scala 986:37]
  assign dataWriteArb_dup_2_io_in_1_bits_way_en = mainPipe_io_data_write_dup_2_bits_way_en; // @[DCacheWrapper.scala 987:36]
  assign dataWriteArb_dup_2_io_in_1_bits_addr = mainPipe_io_data_write_dup_2_bits_addr; // @[DCacheWrapper.scala 987:36]
  assign dataWriteArb_dup_3_io_in_0_valid = refillPipe_io_data_write_dup_3_valid; // @[DCacheWrapper.scala 984:37]
  assign dataWriteArb_dup_3_io_in_0_bits_way_en = refillPipe_io_data_write_dup_3_bits_way_en; // @[DCacheWrapper.scala 985:36]
  assign dataWriteArb_dup_3_io_in_0_bits_addr = refillPipe_io_data_write_dup_3_bits_addr; // @[DCacheWrapper.scala 985:36]
  assign dataWriteArb_dup_3_io_in_1_valid = mainPipe_io_data_write_dup_3_valid; // @[DCacheWrapper.scala 986:37]
  assign dataWriteArb_dup_3_io_in_1_bits_way_en = mainPipe_io_data_write_dup_3_bits_way_en; // @[DCacheWrapper.scala 987:36]
  assign dataWriteArb_dup_3_io_in_1_bits_addr = mainPipe_io_data_write_dup_3_bits_addr; // @[DCacheWrapper.scala 987:36]
  assign dataWriteArb_dup_4_io_in_0_valid = refillPipe_io_data_write_dup_4_valid; // @[DCacheWrapper.scala 984:37]
  assign dataWriteArb_dup_4_io_in_0_bits_way_en = refillPipe_io_data_write_dup_4_bits_way_en; // @[DCacheWrapper.scala 985:36]
  assign dataWriteArb_dup_4_io_in_0_bits_addr = refillPipe_io_data_write_dup_4_bits_addr; // @[DCacheWrapper.scala 985:36]
  assign dataWriteArb_dup_4_io_in_1_valid = mainPipe_io_data_write_dup_4_valid; // @[DCacheWrapper.scala 986:37]
  assign dataWriteArb_dup_4_io_in_1_bits_way_en = mainPipe_io_data_write_dup_4_bits_way_en; // @[DCacheWrapper.scala 987:36]
  assign dataWriteArb_dup_4_io_in_1_bits_addr = mainPipe_io_data_write_dup_4_bits_addr; // @[DCacheWrapper.scala 987:36]
  assign dataWriteArb_dup_5_io_in_0_valid = refillPipe_io_data_write_dup_5_valid; // @[DCacheWrapper.scala 984:37]
  assign dataWriteArb_dup_5_io_in_0_bits_way_en = refillPipe_io_data_write_dup_5_bits_way_en; // @[DCacheWrapper.scala 985:36]
  assign dataWriteArb_dup_5_io_in_0_bits_addr = refillPipe_io_data_write_dup_5_bits_addr; // @[DCacheWrapper.scala 985:36]
  assign dataWriteArb_dup_5_io_in_1_valid = mainPipe_io_data_write_dup_5_valid; // @[DCacheWrapper.scala 986:37]
  assign dataWriteArb_dup_5_io_in_1_bits_way_en = mainPipe_io_data_write_dup_5_bits_way_en; // @[DCacheWrapper.scala 987:36]
  assign dataWriteArb_dup_5_io_in_1_bits_addr = mainPipe_io_data_write_dup_5_bits_addr; // @[DCacheWrapper.scala 987:36]
  assign dataWriteArb_dup_6_io_in_0_valid = refillPipe_io_data_write_dup_6_valid; // @[DCacheWrapper.scala 984:37]
  assign dataWriteArb_dup_6_io_in_0_bits_way_en = refillPipe_io_data_write_dup_6_bits_way_en; // @[DCacheWrapper.scala 985:36]
  assign dataWriteArb_dup_6_io_in_0_bits_addr = refillPipe_io_data_write_dup_6_bits_addr; // @[DCacheWrapper.scala 985:36]
  assign dataWriteArb_dup_6_io_in_1_valid = mainPipe_io_data_write_dup_6_valid; // @[DCacheWrapper.scala 986:37]
  assign dataWriteArb_dup_6_io_in_1_bits_way_en = mainPipe_io_data_write_dup_6_bits_way_en; // @[DCacheWrapper.scala 987:36]
  assign dataWriteArb_dup_6_io_in_1_bits_addr = mainPipe_io_data_write_dup_6_bits_addr; // @[DCacheWrapper.scala 987:36]
  assign dataWriteArb_dup_7_io_in_0_valid = refillPipe_io_data_write_dup_7_valid; // @[DCacheWrapper.scala 984:37]
  assign dataWriteArb_dup_7_io_in_0_bits_way_en = refillPipe_io_data_write_dup_7_bits_way_en; // @[DCacheWrapper.scala 985:36]
  assign dataWriteArb_dup_7_io_in_0_bits_addr = refillPipe_io_data_write_dup_7_bits_addr; // @[DCacheWrapper.scala 985:36]
  assign dataWriteArb_dup_7_io_in_1_valid = mainPipe_io_data_write_dup_7_valid; // @[DCacheWrapper.scala 986:37]
  assign dataWriteArb_dup_7_io_in_1_bits_way_en = mainPipe_io_data_write_dup_7_bits_way_en; // @[DCacheWrapper.scala 987:36]
  assign dataWriteArb_dup_7_io_in_1_bits_addr = mainPipe_io_data_write_dup_7_bits_addr; // @[DCacheWrapper.scala 987:36]
  assign missReqArb_io_in_0_valid = mainPipe_io_miss_req_valid; // @[DCacheWrapper.scala 1144:41]
  assign missReqArb_io_in_0_bits_source = mainPipe_io_miss_req_bits_source; // @[DCacheWrapper.scala 1144:41]
  assign missReqArb_io_in_0_bits_cmd = mainPipe_io_miss_req_bits_cmd; // @[DCacheWrapper.scala 1144:41]
  assign missReqArb_io_in_0_bits_addr = mainPipe_io_miss_req_bits_addr; // @[DCacheWrapper.scala 1144:41]
  assign missReqArb_io_in_0_bits_vaddr = mainPipe_io_miss_req_bits_vaddr; // @[DCacheWrapper.scala 1144:41]
  assign missReqArb_io_in_0_bits_way_en = mainPipe_io_miss_req_bits_way_en; // @[DCacheWrapper.scala 1144:41]
  assign missReqArb_io_in_0_bits_word_idx = mainPipe_io_miss_req_bits_word_idx; // @[DCacheWrapper.scala 1144:41]
  assign missReqArb_io_in_0_bits_amo_data = mainPipe_io_miss_req_bits_amo_data; // @[DCacheWrapper.scala 1144:41]
  assign missReqArb_io_in_0_bits_amo_mask = mainPipe_io_miss_req_bits_amo_mask; // @[DCacheWrapper.scala 1144:41]
  assign missReqArb_io_in_0_bits_req_coh_state = mainPipe_io_miss_req_bits_req_coh_state; // @[DCacheWrapper.scala 1144:41]
  assign missReqArb_io_in_0_bits_replace_coh_state = mainPipe_io_miss_req_bits_replace_coh_state; // @[DCacheWrapper.scala 1144:41]
  assign missReqArb_io_in_0_bits_replace_tag = mainPipe_io_miss_req_bits_replace_tag; // @[DCacheWrapper.scala 1144:41]
  assign missReqArb_io_in_0_bits_id = mainPipe_io_miss_req_bits_id; // @[DCacheWrapper.scala 1144:41]
  assign missReqArb_io_in_0_bits_store_data = mainPipe_io_miss_req_bits_store_data; // @[DCacheWrapper.scala 1144:41]
  assign missReqArb_io_in_0_bits_store_mask = mainPipe_io_miss_req_bits_store_mask; // @[DCacheWrapper.scala 1144:41]
  assign missReqArb_io_in_1_valid = ldu_0_io_miss_req_valid; // @[DCacheWrapper.scala 1145:67]
  assign missReqArb_io_in_1_bits_source = ldu_0_io_miss_req_bits_source; // @[DCacheWrapper.scala 1145:67]
  assign missReqArb_io_in_1_bits_cmd = ldu_0_io_miss_req_bits_cmd; // @[DCacheWrapper.scala 1145:67]
  assign missReqArb_io_in_1_bits_addr = ldu_0_io_miss_req_bits_addr; // @[DCacheWrapper.scala 1145:67]
  assign missReqArb_io_in_1_bits_vaddr = ldu_0_io_miss_req_bits_vaddr; // @[DCacheWrapper.scala 1145:67]
  assign missReqArb_io_in_1_bits_way_en = ldu_0_io_miss_req_bits_way_en; // @[DCacheWrapper.scala 1145:67]
  assign missReqArb_io_in_1_bits_req_coh_state = ldu_0_io_miss_req_bits_req_coh_state; // @[DCacheWrapper.scala 1145:67]
  assign missReqArb_io_in_1_bits_replace_coh_state = ldu_0_io_miss_req_bits_replace_coh_state; // @[DCacheWrapper.scala 1145:67]
  assign missReqArb_io_in_1_bits_replace_tag = ldu_0_io_miss_req_bits_replace_tag; // @[DCacheWrapper.scala 1145:67]
  assign missReqArb_io_in_1_bits_cancel = ldu_0_io_miss_req_bits_cancel; // @[DCacheWrapper.scala 1145:67]
  assign missReqArb_io_in_2_valid = ldu_1_io_miss_req_valid; // @[DCacheWrapper.scala 1145:67]
  assign missReqArb_io_in_2_bits_source = ldu_1_io_miss_req_bits_source; // @[DCacheWrapper.scala 1145:67]
  assign missReqArb_io_in_2_bits_cmd = ldu_1_io_miss_req_bits_cmd; // @[DCacheWrapper.scala 1145:67]
  assign missReqArb_io_in_2_bits_addr = ldu_1_io_miss_req_bits_addr; // @[DCacheWrapper.scala 1145:67]
  assign missReqArb_io_in_2_bits_vaddr = ldu_1_io_miss_req_bits_vaddr; // @[DCacheWrapper.scala 1145:67]
  assign missReqArb_io_in_2_bits_way_en = ldu_1_io_miss_req_bits_way_en; // @[DCacheWrapper.scala 1145:67]
  assign missReqArb_io_in_2_bits_req_coh_state = ldu_1_io_miss_req_bits_req_coh_state; // @[DCacheWrapper.scala 1145:67]
  assign missReqArb_io_in_2_bits_replace_coh_state = ldu_1_io_miss_req_bits_replace_coh_state; // @[DCacheWrapper.scala 1145:67]
  assign missReqArb_io_in_2_bits_replace_tag = ldu_1_io_miss_req_bits_replace_tag; // @[DCacheWrapper.scala 1145:67]
  assign missReqArb_io_in_2_bits_cancel = ldu_1_io_miss_req_bits_cancel; // @[DCacheWrapper.scala 1145:67]
  assign missReqArb_io_out_ready = wb_io_block_miss_req ? 1'h0 : missQueue_io_req_ready; // @[DCacheWrapper.scala 1160:21 1161:30 1163:29]
  assign main_pipe_atomic_req_arb_io_in_0_valid = missQueue_io_main_pipe_req_valid; // @[DCacheWrapper.scala 265:9]
  assign main_pipe_atomic_req_arb_io_in_0_bits_miss = missQueue_io_main_pipe_req_bits_miss; // @[DCacheWrapper.scala 265:9]
  assign main_pipe_atomic_req_arb_io_in_0_bits_miss_id = missQueue_io_main_pipe_req_bits_miss_id; // @[DCacheWrapper.scala 265:9]
  assign main_pipe_atomic_req_arb_io_in_0_bits_miss_param = missQueue_io_main_pipe_req_bits_miss_param; // @[DCacheWrapper.scala 265:9]
  assign main_pipe_atomic_req_arb_io_in_0_bits_miss_way_en = missQueue_io_main_pipe_req_bits_miss_way_en; // @[DCacheWrapper.scala 265:9]
  assign main_pipe_atomic_req_arb_io_in_0_bits_source = missQueue_io_main_pipe_req_bits_source; // @[DCacheWrapper.scala 265:9]
  assign main_pipe_atomic_req_arb_io_in_0_bits_cmd = missQueue_io_main_pipe_req_bits_cmd; // @[DCacheWrapper.scala 265:9]
  assign main_pipe_atomic_req_arb_io_in_0_bits_vaddr = missQueue_io_main_pipe_req_bits_vaddr; // @[DCacheWrapper.scala 265:9]
  assign main_pipe_atomic_req_arb_io_in_0_bits_addr = missQueue_io_main_pipe_req_bits_addr; // @[DCacheWrapper.scala 265:9]
  assign main_pipe_atomic_req_arb_io_in_0_bits_store_data = missQueue_io_main_pipe_req_bits_store_data; // @[DCacheWrapper.scala 265:9]
  assign main_pipe_atomic_req_arb_io_in_0_bits_store_mask = missQueue_io_main_pipe_req_bits_store_mask; // @[DCacheWrapper.scala 265:9]
  assign main_pipe_atomic_req_arb_io_in_0_bits_word_idx = missQueue_io_main_pipe_req_bits_word_idx; // @[DCacheWrapper.scala 265:9]
  assign main_pipe_atomic_req_arb_io_in_0_bits_amo_data = missQueue_io_main_pipe_req_bits_amo_data; // @[DCacheWrapper.scala 265:9]
  assign main_pipe_atomic_req_arb_io_in_0_bits_amo_mask = missQueue_io_main_pipe_req_bits_amo_mask; // @[DCacheWrapper.scala 265:9]
  assign main_pipe_atomic_req_arb_io_in_0_bits_error = missQueue_io_main_pipe_req_bits_error; // @[DCacheWrapper.scala 265:9]
  assign main_pipe_atomic_req_arb_io_in_0_bits_id = missQueue_io_main_pipe_req_bits_id; // @[DCacheWrapper.scala 265:9]
  assign main_pipe_atomic_req_arb_io_in_1_valid = io_lsu_atomics_req_valid; // @[DCacheWrapper.scala 265:9]
  assign main_pipe_atomic_req_arb_io_in_1_bits_cmd = io_lsu_atomics_req_bits_cmd; // @[DCacheWrapper.scala 265:9]
  assign main_pipe_atomic_req_arb_io_in_1_bits_vaddr = io_lsu_atomics_req_bits_vaddr; // @[DCacheWrapper.scala 265:9]
  assign main_pipe_atomic_req_arb_io_in_1_bits_addr = io_lsu_atomics_req_bits_addr; // @[DCacheWrapper.scala 265:9]
  assign main_pipe_atomic_req_arb_io_in_1_bits_word_idx = io_lsu_atomics_req_bits_word_idx; // @[DCacheWrapper.scala 265:9]
  assign main_pipe_atomic_req_arb_io_in_1_bits_amo_data = io_lsu_atomics_req_bits_amo_data; // @[DCacheWrapper.scala 265:9]
  assign main_pipe_atomic_req_arb_io_in_1_bits_amo_mask = io_lsu_atomics_req_bits_amo_mask; // @[DCacheWrapper.scala 265:9]
  assign main_pipe_atomic_req_arb_io_out_ready = pipelineReg_io_in_ready; // @[MemCommon.scala 402:23]
  assign pipelineReg_clock = clock;
  assign pipelineReg_reset = reset;
  assign pipelineReg_io_in_valid = main_pipe_atomic_req_arb_io_out_valid; // @[MemCommon.scala 402:23]
  assign pipelineReg_io_in_bits_miss = main_pipe_atomic_req_arb_io_out_bits_miss; // @[MemCommon.scala 402:23]
  assign pipelineReg_io_in_bits_miss_id = main_pipe_atomic_req_arb_io_out_bits_miss_id; // @[MemCommon.scala 402:23]
  assign pipelineReg_io_in_bits_miss_param = main_pipe_atomic_req_arb_io_out_bits_miss_param; // @[MemCommon.scala 402:23]
  assign pipelineReg_io_in_bits_miss_dirty = 1'h0; // @[MemCommon.scala 402:23]
  assign pipelineReg_io_in_bits_miss_way_en = main_pipe_atomic_req_arb_io_out_bits_miss_way_en; // @[MemCommon.scala 402:23]
  assign pipelineReg_io_in_bits_probe = 1'h0; // @[MemCommon.scala 402:23]
  assign pipelineReg_io_in_bits_probe_param = 2'h0; // @[MemCommon.scala 402:23]
  assign pipelineReg_io_in_bits_probe_need_data = 1'h0; // @[MemCommon.scala 402:23]
  assign pipelineReg_io_in_bits_source = main_pipe_atomic_req_arb_io_out_bits_source; // @[MemCommon.scala 402:23]
  assign pipelineReg_io_in_bits_cmd = main_pipe_atomic_req_arb_io_out_bits_cmd; // @[MemCommon.scala 402:23]
  assign pipelineReg_io_in_bits_vaddr = main_pipe_atomic_req_arb_io_out_bits_vaddr; // @[MemCommon.scala 402:23]
  assign pipelineReg_io_in_bits_addr = main_pipe_atomic_req_arb_io_out_bits_addr; // @[MemCommon.scala 402:23]
  assign pipelineReg_io_in_bits_store_data = main_pipe_atomic_req_arb_io_out_bits_store_data; // @[MemCommon.scala 402:23]
  assign pipelineReg_io_in_bits_store_mask = main_pipe_atomic_req_arb_io_out_bits_store_mask; // @[MemCommon.scala 402:23]
  assign pipelineReg_io_in_bits_word_idx = main_pipe_atomic_req_arb_io_out_bits_word_idx; // @[MemCommon.scala 402:23]
  assign pipelineReg_io_in_bits_amo_data = main_pipe_atomic_req_arb_io_out_bits_amo_data; // @[MemCommon.scala 402:23]
  assign pipelineReg_io_in_bits_amo_mask = main_pipe_atomic_req_arb_io_out_bits_amo_mask; // @[MemCommon.scala 402:23]
  assign pipelineReg_io_in_bits_error = main_pipe_atomic_req_arb_io_out_bits_error; // @[MemCommon.scala 402:23]
  assign pipelineReg_io_in_bits_replace = 1'h0; // @[MemCommon.scala 402:23]
  assign pipelineReg_io_in_bits_replace_way_en = 8'h0; // @[MemCommon.scala 402:23]
  assign pipelineReg_io_in_bits_id = main_pipe_atomic_req_arb_io_out_bits_id; // @[MemCommon.scala 402:23]
  assign pipelineReg_io_out_ready = mainPipe_io_atomic_req_ready; // @[MemCommon.scala 403:11]
  assign cacheOpDecoder_clock = clock;
  assign cacheOpDecoder_reset = reset;
  assign cacheOpDecoder_io_csr_distribute_csr_wvalid = io_csr_distribute_csr_wvalid; // @[DCacheWrapper.scala 1403:25]
  assign cacheOpDecoder_io_csr_distribute_csr_waddr = io_csr_distribute_csr_waddr; // @[DCacheWrapper.scala 1403:25]
  assign cacheOpDecoder_io_csr_distribute_csr_wdata = io_csr_distribute_csr_wdata; // @[DCacheWrapper.scala 1403:25]
  assign cacheOpDecoder_io_cache_resp_valid = bankedDataArray_io_cacheOp_resp_valid | tagArray_io_cacheOp_resp_valid; // @[DCacheWrapper.scala 1416:79]
  assign cacheOpDecoder_io_cache_resp_bits_read_tag_low = tagArray_io_cacheOp_resp_valid ?
    tagArray_io_cacheOp_resp_bits_read_tag_low : 64'h0; // @[Mux.scala 27:73]
  assign cacheOpDecoder_io_cache_resp_bits_read_tag_ecc = tagArray_io_cacheOp_resp_valid ?
    tagArray_io_cacheOp_resp_bits_read_tag_ecc : 64'h0; // @[Mux.scala 27:73]
  assign cacheOpDecoder_io_cache_resp_bits_read_data_vec_0 = bankedDataArray_io_cacheOp_resp_valid ?
    bankedDataArray_io_cacheOp_resp_bits_read_data_vec_0 : 64'h0; // @[Mux.scala 27:73]
  assign cacheOpDecoder_io_cache_resp_bits_read_data_vec_1 = bankedDataArray_io_cacheOp_resp_valid ?
    bankedDataArray_io_cacheOp_resp_bits_read_data_vec_1 : 64'h0; // @[Mux.scala 27:73]
  assign cacheOpDecoder_io_cache_resp_bits_read_data_vec_2 = bankedDataArray_io_cacheOp_resp_valid ?
    bankedDataArray_io_cacheOp_resp_bits_read_data_vec_2 : 64'h0; // @[Mux.scala 27:73]
  assign cacheOpDecoder_io_cache_resp_bits_read_data_vec_3 = bankedDataArray_io_cacheOp_resp_valid ?
    bankedDataArray_io_cacheOp_resp_bits_read_data_vec_3 : 64'h0; // @[Mux.scala 27:73]
  assign cacheOpDecoder_io_cache_resp_bits_read_data_vec_4 = bankedDataArray_io_cacheOp_resp_valid ?
    bankedDataArray_io_cacheOp_resp_bits_read_data_vec_4 : 64'h0; // @[Mux.scala 27:73]
  assign cacheOpDecoder_io_cache_resp_bits_read_data_vec_5 = bankedDataArray_io_cacheOp_resp_valid ?
    bankedDataArray_io_cacheOp_resp_bits_read_data_vec_5 : 64'h0; // @[Mux.scala 27:73]
  assign cacheOpDecoder_io_cache_resp_bits_read_data_vec_6 = bankedDataArray_io_cacheOp_resp_valid ?
    bankedDataArray_io_cacheOp_resp_bits_read_data_vec_6 : 64'h0; // @[Mux.scala 27:73]
  assign cacheOpDecoder_io_cache_resp_bits_read_data_vec_7 = bankedDataArray_io_cacheOp_resp_valid ?
    bankedDataArray_io_cacheOp_resp_bits_read_data_vec_7 : 64'h0; // @[Mux.scala 27:73]
  assign cacheOpDecoder_io_cache_resp_bits_read_data_ecc = bankedDataArray_io_cacheOp_resp_valid ?
    bankedDataArray_io_cacheOp_resp_bits_read_data_ecc : 64'h0; // @[Mux.scala 27:73]
  assign cacheOpDecoder_io_error_source_tag = io_error_source_tag; // @[DCacheWrapper.scala 1422:27]
  assign cacheOpDecoder_io_error_source_data = io_error_source_data; // @[DCacheWrapper.scala 1422:27]
  assign cacheOpDecoder_io_error_source_l2 = io_error_source_l2; // @[DCacheWrapper.scala 1422:27]
  assign cacheOpDecoder_io_error_opType_fetch = io_error_opType_fetch; // @[DCacheWrapper.scala 1422:27]
  assign cacheOpDecoder_io_error_opType_load = io_error_opType_load; // @[DCacheWrapper.scala 1422:27]
  assign cacheOpDecoder_io_error_opType_store = io_error_opType_store; // @[DCacheWrapper.scala 1422:27]
  assign cacheOpDecoder_io_error_opType_probe = io_error_opType_probe; // @[DCacheWrapper.scala 1422:27]
  assign cacheOpDecoder_io_error_opType_release = io_error_opType_release; // @[DCacheWrapper.scala 1422:27]
  assign cacheOpDecoder_io_error_opType_atom = io_error_opType_atom; // @[DCacheWrapper.scala 1422:27]
  assign cacheOpDecoder_io_error_paddr = io_error_paddr; // @[DCacheWrapper.scala 1422:27]
  assign cacheOpDecoder_io_error_report_to_beu = io_error_report_to_beu; // @[DCacheWrapper.scala 1422:27]
  assign cacheOpDecoder_io_error_valid = io_error_valid; // @[DCacheWrapper.scala 1422:27]
  always @(posedge clock) begin
    io_error_REG <= ldu_0_io_error_valid; // @[DCacheWrapper.scala 840:52]
    io_error_REG_1_source_tag <= ldu_0_io_error_source_tag; // @[DCacheWrapper.scala 840:72]
    io_error_REG_1_source_data <= ldu_0_io_error_source_data; // @[DCacheWrapper.scala 840:72]
    io_error_REG_1_source_l2 <= ldu_0_io_error_source_l2; // @[DCacheWrapper.scala 840:72]
    io_error_REG_1_paddr <= ldu_0_io_error_paddr; // @[DCacheWrapper.scala 840:72]
    io_error_REG_1_report_to_beu <= ldu_0_io_error_report_to_beu; // @[DCacheWrapper.scala 840:72]
    io_error_REG_1_valid <= ldu_0_io_error_valid; // @[DCacheWrapper.scala 840:72]
    io_error_REG_2 <= ldu_1_io_error_valid; // @[DCacheWrapper.scala 840:52]
    io_error_REG_3_source_tag <= ldu_1_io_error_source_tag; // @[DCacheWrapper.scala 840:72]
    io_error_REG_3_source_data <= ldu_1_io_error_source_data; // @[DCacheWrapper.scala 840:72]
    io_error_REG_3_source_l2 <= ldu_1_io_error_source_l2; // @[DCacheWrapper.scala 840:72]
    io_error_REG_3_paddr <= ldu_1_io_error_paddr; // @[DCacheWrapper.scala 840:72]
    io_error_REG_3_report_to_beu <= ldu_1_io_error_report_to_beu; // @[DCacheWrapper.scala 840:72]
    io_error_REG_3_valid <= ldu_1_io_error_valid; // @[DCacheWrapper.scala 840:72]
    io_error_REG_4 <= mainPipe_io_error_valid; // @[DCacheWrapper.scala 840:52]
    io_error_REG_5_source_tag <= mainPipe_io_error_source_tag; // @[DCacheWrapper.scala 840:72]
    io_error_REG_5_source_data <= mainPipe_io_error_source_data; // @[DCacheWrapper.scala 840:72]
    io_error_REG_5_source_l2 <= mainPipe_io_error_source_l2; // @[DCacheWrapper.scala 840:72]
    io_error_REG_5_opType_store <= mainPipe_io_error_opType_store; // @[DCacheWrapper.scala 840:72]
    io_error_REG_5_opType_probe <= mainPipe_io_error_opType_probe; // @[DCacheWrapper.scala 840:72]
    io_error_REG_5_opType_release <= mainPipe_io_error_opType_release; // @[DCacheWrapper.scala 840:72]
    io_error_REG_5_opType_atom <= mainPipe_io_error_opType_atom; // @[DCacheWrapper.scala 840:72]
    io_error_REG_5_paddr <= mainPipe_io_error_paddr; // @[DCacheWrapper.scala 840:72]
    io_error_REG_5_report_to_beu <= mainPipe_io_error_report_to_beu; // @[DCacheWrapper.scala 840:72]
    io_error_REG_5_valid <= mainPipe_io_error_valid; // @[DCacheWrapper.scala 840:72]
    io_error_REG_6_source_tag <= io_error_REG & io_error_REG_1_source_tag | io_error_REG_2 & io_error_REG_3_source_tag
       | io_error_REG_4 & io_error_REG_5_source_tag; // @[Mux.scala 27:73]
    io_error_REG_6_source_data <= io_error_REG & io_error_REG_1_source_data | io_error_REG_2 &
      io_error_REG_3_source_data | io_error_REG_4 & io_error_REG_5_source_data; // @[Mux.scala 27:73]
    io_error_REG_6_source_l2 <= io_error_REG & io_error_REG_1_source_l2 | io_error_REG_2 & io_error_REG_3_source_l2 |
      io_error_REG_4 & io_error_REG_5_source_l2; // @[Mux.scala 27:73]
    io_error_REG_6_opType_load <= io_error_REG | io_error_REG_2; // @[Mux.scala 27:73]
    io_error_REG_6_opType_store <= io_error_REG_4 & io_error_REG_5_opType_store; // @[Mux.scala 27:73]
    io_error_REG_6_opType_probe <= io_error_REG_4 & io_error_REG_5_opType_probe; // @[Mux.scala 27:73]
    io_error_REG_6_opType_release <= io_error_REG_4 & io_error_REG_5_opType_release; // @[Mux.scala 27:73]
    io_error_REG_6_opType_atom <= io_error_REG_4 & io_error_REG_5_opType_atom; // @[Mux.scala 27:73]
    io_error_REG_6_paddr <= _io_error_T_13 | _io_error_T_12; // @[Mux.scala 27:73]
    io_error_REG_6_report_to_beu <= io_error_REG & io_error_REG_1_report_to_beu | io_error_REG_2 &
      io_error_REG_3_report_to_beu | io_error_REG_4 & io_error_REG_5_report_to_beu; // @[Mux.scala 27:73]
    io_error_REG_6_valid <= io_error_REG & io_error_REG_1_valid | io_error_REG_2 & io_error_REG_3_valid | io_error_REG_4
       & io_error_REG_5_valid; // @[Mux.scala 27:73]
    io_lsu_atomics_resp_REG_valid <= mainPipe_io_atomic_resp_valid; // @[DCacheWrapper.scala 1128:33]
    io_lsu_atomics_resp_REG_bits_data <= mainPipe_io_atomic_resp_bits_data; // @[DCacheWrapper.scala 1128:33]
    io_lsu_atomics_resp_REG_bits_miss <= mainPipe_io_atomic_resp_bits_miss; // @[DCacheWrapper.scala 1128:33]
    io_lsu_atomics_resp_REG_bits_replay <= mainPipe_io_atomic_resp_bits_replay; // @[DCacheWrapper.scala 1128:33]
    io_lsu_atomics_resp_REG_bits_error <= mainPipe_io_atomic_resp_bits_error; // @[DCacheWrapper.scala 1128:33]
    io_lsu_atomics_resp_REG_bits_id <= mainPipe_io_atomic_resp_bits_id; // @[DCacheWrapper.scala 1128:33]
    missQueue_io_main_pipe_resp_REG_valid <= mainPipe_io_atomic_resp_valid; // @[DCacheWrapper.scala 1186:41]
    missQueue_io_main_pipe_resp_REG_bits_miss_id <= mainPipe_io_atomic_resp_bits_miss_id; // @[DCacheWrapper.scala 1186:41]
    missQueue_io_main_pipe_resp_REG_bits_ack_miss_queue <= mainPipe_io_atomic_resp_bits_ack_miss_queue; // @[DCacheWrapper.scala 1186:41]
    io_lsu_store_replay_resp_REG_valid <= mainPipe_io_store_replay_resp_valid; // @[DCacheWrapper.scala 1202:38]
    io_lsu_store_replay_resp_REG_bits_id <= mainPipe_io_store_replay_resp_bits_id; // @[DCacheWrapper.scala 1202:38]
    mainPipe_io_invalid_resv_set_REG <= _mainPipe_io_invalid_resv_set_T & wb_io_req_bits_addr ==
      mainPipe_io_lrsc_locked_block_bits; // @[DCacheWrapper.scala 1211:58]
    io_lsu_store_refill_hit_resp_REG_valid <= refillPipe_io_store_resp_valid; // @[DCacheWrapper.scala 1272:42]
    io_lsu_store_refill_hit_resp_REG_bits_id <= refillPipe_io_store_resp_bits_id; // @[DCacheWrapper.scala 1272:42]
    io_lsu_release_valid_REG <= wb_io_req_ready & wb_io_req_valid; // @[Decoupled.scala 50:35]
    io_lsu_release_bits_paddr_REG <= wb_io_req_bits_addr; // @[DCacheWrapper.scala 1286:39]
    io_perf_0_value_REG <= wb_io_perf_0_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_1_value_REG <= wb_io_perf_1_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_2_value_REG <= wb_io_perf_2_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_3_value_REG <= wb_io_perf_3_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_4_value_REG <= wb_io_perf_4_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_4_value_REG_1 <= io_perf_4_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_5_value_REG <= mainPipe_io_perf_0_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_5_value_REG_1 <= io_perf_5_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_6_value_REG <= mainPipe_io_perf_1_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_6_value_REG_1 <= io_perf_6_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_7_value_REG <= missQueue_io_perf_0_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_7_value_REG_1 <= io_perf_7_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_8_value_REG <= missQueue_io_perf_1_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_8_value_REG_1 <= io_perf_8_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_9_value_REG <= missQueue_io_perf_2_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_9_value_REG_1 <= io_perf_9_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_10_value_REG <= missQueue_io_perf_3_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_10_value_REG_1 <= io_perf_10_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_11_value_REG <= missQueue_io_perf_4_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_11_value_REG_1 <= io_perf_11_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_12_value_REG <= probeQueue_io_perf_0_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_12_value_REG_1 <= io_perf_12_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_13_value_REG <= probeQueue_io_perf_1_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_13_value_REG_1 <= io_perf_13_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_14_value_REG <= probeQueue_io_perf_2_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_14_value_REG_1 <= io_perf_14_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_15_value_REG <= probeQueue_io_perf_3_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_15_value_REG_1 <= io_perf_15_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_16_value_REG <= probeQueue_io_perf_4_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_16_value_REG_1 <= io_perf_16_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_17_value_REG <= ldu_0_io_perf_0_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_17_value_REG_1 <= io_perf_17_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_22_value_REG <= ldu_1_io_perf_0_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_22_value_REG_1 <= io_perf_22_value_REG; // @[PerfCounterUtils.scala 295:27]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 835:43]
      missQueue_io_l2_pf_store_only_REG <= 1'h0; // @[DCacheWrapper.scala 835:43]
    end else begin
      missQueue_io_l2_pf_store_only_REG <= io_l2_pf_store_only; // @[DCacheWrapper.scala 835:43]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Edges.scala 234:17]
      done_counter <= 1'h0; // @[Edges.scala 235:21]
    end else if (_done_T) begin // @[Edges.scala 228:27]
      if (done_first) begin
        done_counter <= done_beats1;
      end else begin
        done_counter <= done_counter1;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Edges.scala 234:17]
      done_counter_1 <= 1'h0; // @[Edges.scala 235:21]
    end else if (_done_T) begin // @[Edges.scala 228:27]
      if (done_first_1) begin
        done_counter_1 <= done_beats1;
      end else begin
        done_counter_1 <= done_counter1_1;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_0 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_112) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_valid) begin
        state_vec_0 <= _state_vec_0_T_70;
      end else if (set_touch_ways_1_valid) begin
        state_vec_0 <= _state_vec_0_T_46;
      end else if (set_touch_ways_0_valid) begin
        state_vec_0 <= _state_vec_0_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_1 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_116) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_1_valid) begin
        state_vec_1 <= _state_vec_1_T_70;
      end else if (set_touch_ways_1_1_valid) begin
        state_vec_1 <= _state_vec_1_T_46;
      end else if (set_touch_ways_0_1_valid) begin
        state_vec_1 <= _state_vec_1_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_2 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_120) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_2_valid) begin
        state_vec_2 <= _state_vec_2_T_70;
      end else if (set_touch_ways_1_2_valid) begin
        state_vec_2 <= _state_vec_2_T_46;
      end else if (set_touch_ways_0_2_valid) begin
        state_vec_2 <= _state_vec_2_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_3 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_124) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_3_valid) begin
        state_vec_3 <= _state_vec_3_T_70;
      end else if (set_touch_ways_1_3_valid) begin
        state_vec_3 <= _state_vec_3_T_46;
      end else if (set_touch_ways_0_3_valid) begin
        state_vec_3 <= _state_vec_3_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_4 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_128) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_4_valid) begin
        state_vec_4 <= _state_vec_4_T_70;
      end else if (set_touch_ways_1_4_valid) begin
        state_vec_4 <= _state_vec_4_T_46;
      end else if (set_touch_ways_0_4_valid) begin
        state_vec_4 <= _state_vec_4_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_5 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_132) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_5_valid) begin
        state_vec_5 <= _state_vec_5_T_70;
      end else if (set_touch_ways_1_5_valid) begin
        state_vec_5 <= _state_vec_5_T_46;
      end else if (set_touch_ways_0_5_valid) begin
        state_vec_5 <= _state_vec_5_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_6 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_136) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_6_valid) begin
        state_vec_6 <= _state_vec_6_T_70;
      end else if (set_touch_ways_1_6_valid) begin
        state_vec_6 <= _state_vec_6_T_46;
      end else if (set_touch_ways_0_6_valid) begin
        state_vec_6 <= _state_vec_6_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_7 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_140) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_7_valid) begin
        state_vec_7 <= _state_vec_7_T_70;
      end else if (set_touch_ways_1_7_valid) begin
        state_vec_7 <= _state_vec_7_T_46;
      end else if (set_touch_ways_0_7_valid) begin
        state_vec_7 <= _state_vec_7_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_8 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_144) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_8_valid) begin
        state_vec_8 <= _state_vec_8_T_70;
      end else if (set_touch_ways_1_8_valid) begin
        state_vec_8 <= _state_vec_8_T_46;
      end else if (set_touch_ways_0_8_valid) begin
        state_vec_8 <= _state_vec_8_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_9 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_148) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_9_valid) begin
        state_vec_9 <= _state_vec_9_T_70;
      end else if (set_touch_ways_1_9_valid) begin
        state_vec_9 <= _state_vec_9_T_46;
      end else if (set_touch_ways_0_9_valid) begin
        state_vec_9 <= _state_vec_9_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_10 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_152) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_10_valid) begin
        state_vec_10 <= _state_vec_10_T_70;
      end else if (set_touch_ways_1_10_valid) begin
        state_vec_10 <= _state_vec_10_T_46;
      end else if (set_touch_ways_0_10_valid) begin
        state_vec_10 <= _state_vec_10_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_11 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_156) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_11_valid) begin
        state_vec_11 <= _state_vec_11_T_70;
      end else if (set_touch_ways_1_11_valid) begin
        state_vec_11 <= _state_vec_11_T_46;
      end else if (set_touch_ways_0_11_valid) begin
        state_vec_11 <= _state_vec_11_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_12 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_160) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_12_valid) begin
        state_vec_12 <= _state_vec_12_T_70;
      end else if (set_touch_ways_1_12_valid) begin
        state_vec_12 <= _state_vec_12_T_46;
      end else if (set_touch_ways_0_12_valid) begin
        state_vec_12 <= _state_vec_12_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_13 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_164) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_13_valid) begin
        state_vec_13 <= _state_vec_13_T_70;
      end else if (set_touch_ways_1_13_valid) begin
        state_vec_13 <= _state_vec_13_T_46;
      end else if (set_touch_ways_0_13_valid) begin
        state_vec_13 <= _state_vec_13_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_14 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_168) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_14_valid) begin
        state_vec_14 <= _state_vec_14_T_70;
      end else if (set_touch_ways_1_14_valid) begin
        state_vec_14 <= _state_vec_14_T_46;
      end else if (set_touch_ways_0_14_valid) begin
        state_vec_14 <= _state_vec_14_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_15 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_172) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_15_valid) begin
        state_vec_15 <= _state_vec_15_T_70;
      end else if (set_touch_ways_1_15_valid) begin
        state_vec_15 <= _state_vec_15_T_46;
      end else if (set_touch_ways_0_15_valid) begin
        state_vec_15 <= _state_vec_15_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_16 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_176) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_16_valid) begin
        state_vec_16 <= _state_vec_16_T_70;
      end else if (set_touch_ways_1_16_valid) begin
        state_vec_16 <= _state_vec_16_T_46;
      end else if (set_touch_ways_0_16_valid) begin
        state_vec_16 <= _state_vec_16_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_17 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_180) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_17_valid) begin
        state_vec_17 <= _state_vec_17_T_70;
      end else if (set_touch_ways_1_17_valid) begin
        state_vec_17 <= _state_vec_17_T_46;
      end else if (set_touch_ways_0_17_valid) begin
        state_vec_17 <= _state_vec_17_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_18 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_184) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_18_valid) begin
        state_vec_18 <= _state_vec_18_T_70;
      end else if (set_touch_ways_1_18_valid) begin
        state_vec_18 <= _state_vec_18_T_46;
      end else if (set_touch_ways_0_18_valid) begin
        state_vec_18 <= _state_vec_18_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_19 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_188) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_19_valid) begin
        state_vec_19 <= _state_vec_19_T_70;
      end else if (set_touch_ways_1_19_valid) begin
        state_vec_19 <= _state_vec_19_T_46;
      end else if (set_touch_ways_0_19_valid) begin
        state_vec_19 <= _state_vec_19_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_20 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_192) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_20_valid) begin
        state_vec_20 <= _state_vec_20_T_70;
      end else if (set_touch_ways_1_20_valid) begin
        state_vec_20 <= _state_vec_20_T_46;
      end else if (set_touch_ways_0_20_valid) begin
        state_vec_20 <= _state_vec_20_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_21 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_196) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_21_valid) begin
        state_vec_21 <= _state_vec_21_T_70;
      end else if (set_touch_ways_1_21_valid) begin
        state_vec_21 <= _state_vec_21_T_46;
      end else if (set_touch_ways_0_21_valid) begin
        state_vec_21 <= _state_vec_21_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_22 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_200) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_22_valid) begin
        state_vec_22 <= _state_vec_22_T_70;
      end else if (set_touch_ways_1_22_valid) begin
        state_vec_22 <= _state_vec_22_T_46;
      end else if (set_touch_ways_0_22_valid) begin
        state_vec_22 <= _state_vec_22_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_23 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_204) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_23_valid) begin
        state_vec_23 <= _state_vec_23_T_70;
      end else if (set_touch_ways_1_23_valid) begin
        state_vec_23 <= _state_vec_23_T_46;
      end else if (set_touch_ways_0_23_valid) begin
        state_vec_23 <= _state_vec_23_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_24 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_208) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_24_valid) begin
        state_vec_24 <= _state_vec_24_T_70;
      end else if (set_touch_ways_1_24_valid) begin
        state_vec_24 <= _state_vec_24_T_46;
      end else if (set_touch_ways_0_24_valid) begin
        state_vec_24 <= _state_vec_24_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_25 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_212) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_25_valid) begin
        state_vec_25 <= _state_vec_25_T_70;
      end else if (set_touch_ways_1_25_valid) begin
        state_vec_25 <= _state_vec_25_T_46;
      end else if (set_touch_ways_0_25_valid) begin
        state_vec_25 <= _state_vec_25_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_26 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_216) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_26_valid) begin
        state_vec_26 <= _state_vec_26_T_70;
      end else if (set_touch_ways_1_26_valid) begin
        state_vec_26 <= _state_vec_26_T_46;
      end else if (set_touch_ways_0_26_valid) begin
        state_vec_26 <= _state_vec_26_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_27 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_220) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_27_valid) begin
        state_vec_27 <= _state_vec_27_T_70;
      end else if (set_touch_ways_1_27_valid) begin
        state_vec_27 <= _state_vec_27_T_46;
      end else if (set_touch_ways_0_27_valid) begin
        state_vec_27 <= _state_vec_27_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_28 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_224) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_28_valid) begin
        state_vec_28 <= _state_vec_28_T_70;
      end else if (set_touch_ways_1_28_valid) begin
        state_vec_28 <= _state_vec_28_T_46;
      end else if (set_touch_ways_0_28_valid) begin
        state_vec_28 <= _state_vec_28_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_29 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_228) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_29_valid) begin
        state_vec_29 <= _state_vec_29_T_70;
      end else if (set_touch_ways_1_29_valid) begin
        state_vec_29 <= _state_vec_29_T_46;
      end else if (set_touch_ways_0_29_valid) begin
        state_vec_29 <= _state_vec_29_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_30 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_232) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_30_valid) begin
        state_vec_30 <= _state_vec_30_T_70;
      end else if (set_touch_ways_1_30_valid) begin
        state_vec_30 <= _state_vec_30_T_46;
      end else if (set_touch_ways_0_30_valid) begin
        state_vec_30 <= _state_vec_30_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_31 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_236) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_31_valid) begin
        state_vec_31 <= _state_vec_31_T_70;
      end else if (set_touch_ways_1_31_valid) begin
        state_vec_31 <= _state_vec_31_T_46;
      end else if (set_touch_ways_0_31_valid) begin
        state_vec_31 <= _state_vec_31_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_32 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_240) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_32_valid) begin
        state_vec_32 <= _state_vec_32_T_70;
      end else if (set_touch_ways_1_32_valid) begin
        state_vec_32 <= _state_vec_32_T_46;
      end else if (set_touch_ways_0_32_valid) begin
        state_vec_32 <= _state_vec_32_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_33 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_244) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_33_valid) begin
        state_vec_33 <= _state_vec_33_T_70;
      end else if (set_touch_ways_1_33_valid) begin
        state_vec_33 <= _state_vec_33_T_46;
      end else if (set_touch_ways_0_33_valid) begin
        state_vec_33 <= _state_vec_33_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_34 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_248) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_34_valid) begin
        state_vec_34 <= _state_vec_34_T_70;
      end else if (set_touch_ways_1_34_valid) begin
        state_vec_34 <= _state_vec_34_T_46;
      end else if (set_touch_ways_0_34_valid) begin
        state_vec_34 <= _state_vec_34_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_35 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_252) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_35_valid) begin
        state_vec_35 <= _state_vec_35_T_70;
      end else if (set_touch_ways_1_35_valid) begin
        state_vec_35 <= _state_vec_35_T_46;
      end else if (set_touch_ways_0_35_valid) begin
        state_vec_35 <= _state_vec_35_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_36 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_256) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_36_valid) begin
        state_vec_36 <= _state_vec_36_T_70;
      end else if (set_touch_ways_1_36_valid) begin
        state_vec_36 <= _state_vec_36_T_46;
      end else if (set_touch_ways_0_36_valid) begin
        state_vec_36 <= _state_vec_36_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_37 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_260) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_37_valid) begin
        state_vec_37 <= _state_vec_37_T_70;
      end else if (set_touch_ways_1_37_valid) begin
        state_vec_37 <= _state_vec_37_T_46;
      end else if (set_touch_ways_0_37_valid) begin
        state_vec_37 <= _state_vec_37_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_38 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_264) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_38_valid) begin
        state_vec_38 <= _state_vec_38_T_70;
      end else if (set_touch_ways_1_38_valid) begin
        state_vec_38 <= _state_vec_38_T_46;
      end else if (set_touch_ways_0_38_valid) begin
        state_vec_38 <= _state_vec_38_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_39 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_268) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_39_valid) begin
        state_vec_39 <= _state_vec_39_T_70;
      end else if (set_touch_ways_1_39_valid) begin
        state_vec_39 <= _state_vec_39_T_46;
      end else if (set_touch_ways_0_39_valid) begin
        state_vec_39 <= _state_vec_39_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_40 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_272) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_40_valid) begin
        state_vec_40 <= _state_vec_40_T_70;
      end else if (set_touch_ways_1_40_valid) begin
        state_vec_40 <= _state_vec_40_T_46;
      end else if (set_touch_ways_0_40_valid) begin
        state_vec_40 <= _state_vec_40_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_41 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_276) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_41_valid) begin
        state_vec_41 <= _state_vec_41_T_70;
      end else if (set_touch_ways_1_41_valid) begin
        state_vec_41 <= _state_vec_41_T_46;
      end else if (set_touch_ways_0_41_valid) begin
        state_vec_41 <= _state_vec_41_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_42 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_280) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_42_valid) begin
        state_vec_42 <= _state_vec_42_T_70;
      end else if (set_touch_ways_1_42_valid) begin
        state_vec_42 <= _state_vec_42_T_46;
      end else if (set_touch_ways_0_42_valid) begin
        state_vec_42 <= _state_vec_42_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_43 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_284) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_43_valid) begin
        state_vec_43 <= _state_vec_43_T_70;
      end else if (set_touch_ways_1_43_valid) begin
        state_vec_43 <= _state_vec_43_T_46;
      end else if (set_touch_ways_0_43_valid) begin
        state_vec_43 <= _state_vec_43_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_44 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_288) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_44_valid) begin
        state_vec_44 <= _state_vec_44_T_70;
      end else if (set_touch_ways_1_44_valid) begin
        state_vec_44 <= _state_vec_44_T_46;
      end else if (set_touch_ways_0_44_valid) begin
        state_vec_44 <= _state_vec_44_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_45 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_292) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_45_valid) begin
        state_vec_45 <= _state_vec_45_T_70;
      end else if (set_touch_ways_1_45_valid) begin
        state_vec_45 <= _state_vec_45_T_46;
      end else if (set_touch_ways_0_45_valid) begin
        state_vec_45 <= _state_vec_45_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_46 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_296) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_46_valid) begin
        state_vec_46 <= _state_vec_46_T_70;
      end else if (set_touch_ways_1_46_valid) begin
        state_vec_46 <= _state_vec_46_T_46;
      end else if (set_touch_ways_0_46_valid) begin
        state_vec_46 <= _state_vec_46_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_47 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_300) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_47_valid) begin
        state_vec_47 <= _state_vec_47_T_70;
      end else if (set_touch_ways_1_47_valid) begin
        state_vec_47 <= _state_vec_47_T_46;
      end else if (set_touch_ways_0_47_valid) begin
        state_vec_47 <= _state_vec_47_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_48 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_304) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_48_valid) begin
        state_vec_48 <= _state_vec_48_T_70;
      end else if (set_touch_ways_1_48_valid) begin
        state_vec_48 <= _state_vec_48_T_46;
      end else if (set_touch_ways_0_48_valid) begin
        state_vec_48 <= _state_vec_48_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_49 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_308) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_49_valid) begin
        state_vec_49 <= _state_vec_49_T_70;
      end else if (set_touch_ways_1_49_valid) begin
        state_vec_49 <= _state_vec_49_T_46;
      end else if (set_touch_ways_0_49_valid) begin
        state_vec_49 <= _state_vec_49_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_50 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_312) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_50_valid) begin
        state_vec_50 <= _state_vec_50_T_70;
      end else if (set_touch_ways_1_50_valid) begin
        state_vec_50 <= _state_vec_50_T_46;
      end else if (set_touch_ways_0_50_valid) begin
        state_vec_50 <= _state_vec_50_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_51 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_316) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_51_valid) begin
        state_vec_51 <= _state_vec_51_T_70;
      end else if (set_touch_ways_1_51_valid) begin
        state_vec_51 <= _state_vec_51_T_46;
      end else if (set_touch_ways_0_51_valid) begin
        state_vec_51 <= _state_vec_51_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_52 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_320) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_52_valid) begin
        state_vec_52 <= _state_vec_52_T_70;
      end else if (set_touch_ways_1_52_valid) begin
        state_vec_52 <= _state_vec_52_T_46;
      end else if (set_touch_ways_0_52_valid) begin
        state_vec_52 <= _state_vec_52_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_53 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_324) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_53_valid) begin
        state_vec_53 <= _state_vec_53_T_70;
      end else if (set_touch_ways_1_53_valid) begin
        state_vec_53 <= _state_vec_53_T_46;
      end else if (set_touch_ways_0_53_valid) begin
        state_vec_53 <= _state_vec_53_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_54 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_328) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_54_valid) begin
        state_vec_54 <= _state_vec_54_T_70;
      end else if (set_touch_ways_1_54_valid) begin
        state_vec_54 <= _state_vec_54_T_46;
      end else if (set_touch_ways_0_54_valid) begin
        state_vec_54 <= _state_vec_54_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_55 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_332) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_55_valid) begin
        state_vec_55 <= _state_vec_55_T_70;
      end else if (set_touch_ways_1_55_valid) begin
        state_vec_55 <= _state_vec_55_T_46;
      end else if (set_touch_ways_0_55_valid) begin
        state_vec_55 <= _state_vec_55_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_56 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_336) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_56_valid) begin
        state_vec_56 <= _state_vec_56_T_70;
      end else if (set_touch_ways_1_56_valid) begin
        state_vec_56 <= _state_vec_56_T_46;
      end else if (set_touch_ways_0_56_valid) begin
        state_vec_56 <= _state_vec_56_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_57 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_340) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_57_valid) begin
        state_vec_57 <= _state_vec_57_T_70;
      end else if (set_touch_ways_1_57_valid) begin
        state_vec_57 <= _state_vec_57_T_46;
      end else if (set_touch_ways_0_57_valid) begin
        state_vec_57 <= _state_vec_57_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_58 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_344) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_58_valid) begin
        state_vec_58 <= _state_vec_58_T_70;
      end else if (set_touch_ways_1_58_valid) begin
        state_vec_58 <= _state_vec_58_T_46;
      end else if (set_touch_ways_0_58_valid) begin
        state_vec_58 <= _state_vec_58_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_59 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_348) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_59_valid) begin
        state_vec_59 <= _state_vec_59_T_70;
      end else if (set_touch_ways_1_59_valid) begin
        state_vec_59 <= _state_vec_59_T_46;
      end else if (set_touch_ways_0_59_valid) begin
        state_vec_59 <= _state_vec_59_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_60 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_352) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_60_valid) begin
        state_vec_60 <= _state_vec_60_T_70;
      end else if (set_touch_ways_1_60_valid) begin
        state_vec_60 <= _state_vec_60_T_46;
      end else if (set_touch_ways_0_60_valid) begin
        state_vec_60 <= _state_vec_60_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_61 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_356) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_61_valid) begin
        state_vec_61 <= _state_vec_61_T_70;
      end else if (set_touch_ways_1_61_valid) begin
        state_vec_61 <= _state_vec_61_T_46;
      end else if (set_touch_ways_0_61_valid) begin
        state_vec_61 <= _state_vec_61_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_62 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_360) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_62_valid) begin
        state_vec_62 <= _state_vec_62_T_70;
      end else if (set_touch_ways_1_62_valid) begin
        state_vec_62 <= _state_vec_62_T_46;
      end else if (set_touch_ways_0_62_valid) begin
        state_vec_62 <= _state_vec_62_T_22;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 385:46]
      state_vec_63 <= 7'h0; // @[Replacement.scala 22:{56,56,56}]
    end else if (_T_364) begin // @[Replacement.scala 374:17]
      if (set_touch_ways_2_63_valid) begin
        state_vec_63 <= _state_vec_63_T_70;
      end else if (set_touch_ways_1_63_valid) begin
        state_vec_63 <= _state_vec_63_T_46;
      end else if (set_touch_ways_0_63_valid) begin
        state_vec_63 <= _state_vec_63_T_22;
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
  missQueue_io_l2_pf_store_only_REG = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  io_error_REG = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  io_error_REG_1_source_tag = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  io_error_REG_1_source_data = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  io_error_REG_1_source_l2 = _RAND_4[0:0];
  _RAND_5 = {2{`RANDOM}};
  io_error_REG_1_paddr = _RAND_5[35:0];
  _RAND_6 = {1{`RANDOM}};
  io_error_REG_1_report_to_beu = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  io_error_REG_1_valid = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  io_error_REG_2 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  io_error_REG_3_source_tag = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  io_error_REG_3_source_data = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  io_error_REG_3_source_l2 = _RAND_11[0:0];
  _RAND_12 = {2{`RANDOM}};
  io_error_REG_3_paddr = _RAND_12[35:0];
  _RAND_13 = {1{`RANDOM}};
  io_error_REG_3_report_to_beu = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  io_error_REG_3_valid = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  io_error_REG_4 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  io_error_REG_5_source_tag = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  io_error_REG_5_source_data = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  io_error_REG_5_source_l2 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  io_error_REG_5_opType_store = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  io_error_REG_5_opType_probe = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  io_error_REG_5_opType_release = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  io_error_REG_5_opType_atom = _RAND_22[0:0];
  _RAND_23 = {2{`RANDOM}};
  io_error_REG_5_paddr = _RAND_23[35:0];
  _RAND_24 = {1{`RANDOM}};
  io_error_REG_5_report_to_beu = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  io_error_REG_5_valid = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  io_error_REG_6_source_tag = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  io_error_REG_6_source_data = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  io_error_REG_6_source_l2 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  io_error_REG_6_opType_load = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  io_error_REG_6_opType_store = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  io_error_REG_6_opType_probe = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  io_error_REG_6_opType_release = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  io_error_REG_6_opType_atom = _RAND_33[0:0];
  _RAND_34 = {2{`RANDOM}};
  io_error_REG_6_paddr = _RAND_34[35:0];
  _RAND_35 = {1{`RANDOM}};
  io_error_REG_6_report_to_beu = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  io_error_REG_6_valid = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  done_counter = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  done_counter_1 = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  io_lsu_atomics_resp_REG_valid = _RAND_39[0:0];
  _RAND_40 = {2{`RANDOM}};
  io_lsu_atomics_resp_REG_bits_data = _RAND_40[63:0];
  _RAND_41 = {1{`RANDOM}};
  io_lsu_atomics_resp_REG_bits_miss = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  io_lsu_atomics_resp_REG_bits_replay = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  io_lsu_atomics_resp_REG_bits_error = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  io_lsu_atomics_resp_REG_bits_id = _RAND_44[3:0];
  _RAND_45 = {1{`RANDOM}};
  missQueue_io_main_pipe_resp_REG_valid = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  missQueue_io_main_pipe_resp_REG_bits_miss_id = _RAND_46[1:0];
  _RAND_47 = {1{`RANDOM}};
  missQueue_io_main_pipe_resp_REG_bits_ack_miss_queue = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  io_lsu_store_replay_resp_REG_valid = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  io_lsu_store_replay_resp_REG_bits_id = _RAND_49[3:0];
  _RAND_50 = {1{`RANDOM}};
  mainPipe_io_invalid_resv_set_REG = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  io_lsu_store_refill_hit_resp_REG_valid = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  io_lsu_store_refill_hit_resp_REG_bits_id = _RAND_52[3:0];
  _RAND_53 = {1{`RANDOM}};
  io_lsu_release_valid_REG = _RAND_53[0:0];
  _RAND_54 = {2{`RANDOM}};
  io_lsu_release_bits_paddr_REG = _RAND_54[35:0];
  _RAND_55 = {1{`RANDOM}};
  state_vec_0 = _RAND_55[6:0];
  _RAND_56 = {1{`RANDOM}};
  state_vec_1 = _RAND_56[6:0];
  _RAND_57 = {1{`RANDOM}};
  state_vec_2 = _RAND_57[6:0];
  _RAND_58 = {1{`RANDOM}};
  state_vec_3 = _RAND_58[6:0];
  _RAND_59 = {1{`RANDOM}};
  state_vec_4 = _RAND_59[6:0];
  _RAND_60 = {1{`RANDOM}};
  state_vec_5 = _RAND_60[6:0];
  _RAND_61 = {1{`RANDOM}};
  state_vec_6 = _RAND_61[6:0];
  _RAND_62 = {1{`RANDOM}};
  state_vec_7 = _RAND_62[6:0];
  _RAND_63 = {1{`RANDOM}};
  state_vec_8 = _RAND_63[6:0];
  _RAND_64 = {1{`RANDOM}};
  state_vec_9 = _RAND_64[6:0];
  _RAND_65 = {1{`RANDOM}};
  state_vec_10 = _RAND_65[6:0];
  _RAND_66 = {1{`RANDOM}};
  state_vec_11 = _RAND_66[6:0];
  _RAND_67 = {1{`RANDOM}};
  state_vec_12 = _RAND_67[6:0];
  _RAND_68 = {1{`RANDOM}};
  state_vec_13 = _RAND_68[6:0];
  _RAND_69 = {1{`RANDOM}};
  state_vec_14 = _RAND_69[6:0];
  _RAND_70 = {1{`RANDOM}};
  state_vec_15 = _RAND_70[6:0];
  _RAND_71 = {1{`RANDOM}};
  state_vec_16 = _RAND_71[6:0];
  _RAND_72 = {1{`RANDOM}};
  state_vec_17 = _RAND_72[6:0];
  _RAND_73 = {1{`RANDOM}};
  state_vec_18 = _RAND_73[6:0];
  _RAND_74 = {1{`RANDOM}};
  state_vec_19 = _RAND_74[6:0];
  _RAND_75 = {1{`RANDOM}};
  state_vec_20 = _RAND_75[6:0];
  _RAND_76 = {1{`RANDOM}};
  state_vec_21 = _RAND_76[6:0];
  _RAND_77 = {1{`RANDOM}};
  state_vec_22 = _RAND_77[6:0];
  _RAND_78 = {1{`RANDOM}};
  state_vec_23 = _RAND_78[6:0];
  _RAND_79 = {1{`RANDOM}};
  state_vec_24 = _RAND_79[6:0];
  _RAND_80 = {1{`RANDOM}};
  state_vec_25 = _RAND_80[6:0];
  _RAND_81 = {1{`RANDOM}};
  state_vec_26 = _RAND_81[6:0];
  _RAND_82 = {1{`RANDOM}};
  state_vec_27 = _RAND_82[6:0];
  _RAND_83 = {1{`RANDOM}};
  state_vec_28 = _RAND_83[6:0];
  _RAND_84 = {1{`RANDOM}};
  state_vec_29 = _RAND_84[6:0];
  _RAND_85 = {1{`RANDOM}};
  state_vec_30 = _RAND_85[6:0];
  _RAND_86 = {1{`RANDOM}};
  state_vec_31 = _RAND_86[6:0];
  _RAND_87 = {1{`RANDOM}};
  state_vec_32 = _RAND_87[6:0];
  _RAND_88 = {1{`RANDOM}};
  state_vec_33 = _RAND_88[6:0];
  _RAND_89 = {1{`RANDOM}};
  state_vec_34 = _RAND_89[6:0];
  _RAND_90 = {1{`RANDOM}};
  state_vec_35 = _RAND_90[6:0];
  _RAND_91 = {1{`RANDOM}};
  state_vec_36 = _RAND_91[6:0];
  _RAND_92 = {1{`RANDOM}};
  state_vec_37 = _RAND_92[6:0];
  _RAND_93 = {1{`RANDOM}};
  state_vec_38 = _RAND_93[6:0];
  _RAND_94 = {1{`RANDOM}};
  state_vec_39 = _RAND_94[6:0];
  _RAND_95 = {1{`RANDOM}};
  state_vec_40 = _RAND_95[6:0];
  _RAND_96 = {1{`RANDOM}};
  state_vec_41 = _RAND_96[6:0];
  _RAND_97 = {1{`RANDOM}};
  state_vec_42 = _RAND_97[6:0];
  _RAND_98 = {1{`RANDOM}};
  state_vec_43 = _RAND_98[6:0];
  _RAND_99 = {1{`RANDOM}};
  state_vec_44 = _RAND_99[6:0];
  _RAND_100 = {1{`RANDOM}};
  state_vec_45 = _RAND_100[6:0];
  _RAND_101 = {1{`RANDOM}};
  state_vec_46 = _RAND_101[6:0];
  _RAND_102 = {1{`RANDOM}};
  state_vec_47 = _RAND_102[6:0];
  _RAND_103 = {1{`RANDOM}};
  state_vec_48 = _RAND_103[6:0];
  _RAND_104 = {1{`RANDOM}};
  state_vec_49 = _RAND_104[6:0];
  _RAND_105 = {1{`RANDOM}};
  state_vec_50 = _RAND_105[6:0];
  _RAND_106 = {1{`RANDOM}};
  state_vec_51 = _RAND_106[6:0];
  _RAND_107 = {1{`RANDOM}};
  state_vec_52 = _RAND_107[6:0];
  _RAND_108 = {1{`RANDOM}};
  state_vec_53 = _RAND_108[6:0];
  _RAND_109 = {1{`RANDOM}};
  state_vec_54 = _RAND_109[6:0];
  _RAND_110 = {1{`RANDOM}};
  state_vec_55 = _RAND_110[6:0];
  _RAND_111 = {1{`RANDOM}};
  state_vec_56 = _RAND_111[6:0];
  _RAND_112 = {1{`RANDOM}};
  state_vec_57 = _RAND_112[6:0];
  _RAND_113 = {1{`RANDOM}};
  state_vec_58 = _RAND_113[6:0];
  _RAND_114 = {1{`RANDOM}};
  state_vec_59 = _RAND_114[6:0];
  _RAND_115 = {1{`RANDOM}};
  state_vec_60 = _RAND_115[6:0];
  _RAND_116 = {1{`RANDOM}};
  state_vec_61 = _RAND_116[6:0];
  _RAND_117 = {1{`RANDOM}};
  state_vec_62 = _RAND_117[6:0];
  _RAND_118 = {1{`RANDOM}};
  state_vec_63 = _RAND_118[6:0];
  _RAND_119 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_119[5:0];
  _RAND_120 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_120[5:0];
  _RAND_121 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_121[5:0];
  _RAND_122 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_122[5:0];
  _RAND_123 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_123[5:0];
  _RAND_124 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_124[5:0];
  _RAND_125 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_125[5:0];
  _RAND_126 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_126[5:0];
  _RAND_127 = {1{`RANDOM}};
  io_perf_4_value_REG = _RAND_127[5:0];
  _RAND_128 = {1{`RANDOM}};
  io_perf_4_value_REG_1 = _RAND_128[5:0];
  _RAND_129 = {1{`RANDOM}};
  io_perf_5_value_REG = _RAND_129[5:0];
  _RAND_130 = {1{`RANDOM}};
  io_perf_5_value_REG_1 = _RAND_130[5:0];
  _RAND_131 = {1{`RANDOM}};
  io_perf_6_value_REG = _RAND_131[5:0];
  _RAND_132 = {1{`RANDOM}};
  io_perf_6_value_REG_1 = _RAND_132[5:0];
  _RAND_133 = {1{`RANDOM}};
  io_perf_7_value_REG = _RAND_133[5:0];
  _RAND_134 = {1{`RANDOM}};
  io_perf_7_value_REG_1 = _RAND_134[5:0];
  _RAND_135 = {1{`RANDOM}};
  io_perf_8_value_REG = _RAND_135[5:0];
  _RAND_136 = {1{`RANDOM}};
  io_perf_8_value_REG_1 = _RAND_136[5:0];
  _RAND_137 = {1{`RANDOM}};
  io_perf_9_value_REG = _RAND_137[5:0];
  _RAND_138 = {1{`RANDOM}};
  io_perf_9_value_REG_1 = _RAND_138[5:0];
  _RAND_139 = {1{`RANDOM}};
  io_perf_10_value_REG = _RAND_139[5:0];
  _RAND_140 = {1{`RANDOM}};
  io_perf_10_value_REG_1 = _RAND_140[5:0];
  _RAND_141 = {1{`RANDOM}};
  io_perf_11_value_REG = _RAND_141[5:0];
  _RAND_142 = {1{`RANDOM}};
  io_perf_11_value_REG_1 = _RAND_142[5:0];
  _RAND_143 = {1{`RANDOM}};
  io_perf_12_value_REG = _RAND_143[5:0];
  _RAND_144 = {1{`RANDOM}};
  io_perf_12_value_REG_1 = _RAND_144[5:0];
  _RAND_145 = {1{`RANDOM}};
  io_perf_13_value_REG = _RAND_145[5:0];
  _RAND_146 = {1{`RANDOM}};
  io_perf_13_value_REG_1 = _RAND_146[5:0];
  _RAND_147 = {1{`RANDOM}};
  io_perf_14_value_REG = _RAND_147[5:0];
  _RAND_148 = {1{`RANDOM}};
  io_perf_14_value_REG_1 = _RAND_148[5:0];
  _RAND_149 = {1{`RANDOM}};
  io_perf_15_value_REG = _RAND_149[5:0];
  _RAND_150 = {1{`RANDOM}};
  io_perf_15_value_REG_1 = _RAND_150[5:0];
  _RAND_151 = {1{`RANDOM}};
  io_perf_16_value_REG = _RAND_151[5:0];
  _RAND_152 = {1{`RANDOM}};
  io_perf_16_value_REG_1 = _RAND_152[5:0];
  _RAND_153 = {1{`RANDOM}};
  io_perf_17_value_REG = _RAND_153[5:0];
  _RAND_154 = {1{`RANDOM}};
  io_perf_17_value_REG_1 = _RAND_154[5:0];
  _RAND_155 = {1{`RANDOM}};
  io_perf_22_value_REG = _RAND_155[5:0];
  _RAND_156 = {1{`RANDOM}};
  io_perf_22_value_REG_1 = _RAND_156[5:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    missQueue_io_l2_pf_store_only_REG = 1'h0;
  end
  if (reset) begin
    done_counter = 1'h0;
  end
  if (reset) begin
    done_counter_1 = 1'h0;
  end
  if (reset) begin
    state_vec_0 = 7'h0;
  end
  if (reset) begin
    state_vec_1 = 7'h0;
  end
  if (reset) begin
    state_vec_2 = 7'h0;
  end
  if (reset) begin
    state_vec_3 = 7'h0;
  end
  if (reset) begin
    state_vec_4 = 7'h0;
  end
  if (reset) begin
    state_vec_5 = 7'h0;
  end
  if (reset) begin
    state_vec_6 = 7'h0;
  end
  if (reset) begin
    state_vec_7 = 7'h0;
  end
  if (reset) begin
    state_vec_8 = 7'h0;
  end
  if (reset) begin
    state_vec_9 = 7'h0;
  end
  if (reset) begin
    state_vec_10 = 7'h0;
  end
  if (reset) begin
    state_vec_11 = 7'h0;
  end
  if (reset) begin
    state_vec_12 = 7'h0;
  end
  if (reset) begin
    state_vec_13 = 7'h0;
  end
  if (reset) begin
    state_vec_14 = 7'h0;
  end
  if (reset) begin
    state_vec_15 = 7'h0;
  end
  if (reset) begin
    state_vec_16 = 7'h0;
  end
  if (reset) begin
    state_vec_17 = 7'h0;
  end
  if (reset) begin
    state_vec_18 = 7'h0;
  end
  if (reset) begin
    state_vec_19 = 7'h0;
  end
  if (reset) begin
    state_vec_20 = 7'h0;
  end
  if (reset) begin
    state_vec_21 = 7'h0;
  end
  if (reset) begin
    state_vec_22 = 7'h0;
  end
  if (reset) begin
    state_vec_23 = 7'h0;
  end
  if (reset) begin
    state_vec_24 = 7'h0;
  end
  if (reset) begin
    state_vec_25 = 7'h0;
  end
  if (reset) begin
    state_vec_26 = 7'h0;
  end
  if (reset) begin
    state_vec_27 = 7'h0;
  end
  if (reset) begin
    state_vec_28 = 7'h0;
  end
  if (reset) begin
    state_vec_29 = 7'h0;
  end
  if (reset) begin
    state_vec_30 = 7'h0;
  end
  if (reset) begin
    state_vec_31 = 7'h0;
  end
  if (reset) begin
    state_vec_32 = 7'h0;
  end
  if (reset) begin
    state_vec_33 = 7'h0;
  end
  if (reset) begin
    state_vec_34 = 7'h0;
  end
  if (reset) begin
    state_vec_35 = 7'h0;
  end
  if (reset) begin
    state_vec_36 = 7'h0;
  end
  if (reset) begin
    state_vec_37 = 7'h0;
  end
  if (reset) begin
    state_vec_38 = 7'h0;
  end
  if (reset) begin
    state_vec_39 = 7'h0;
  end
  if (reset) begin
    state_vec_40 = 7'h0;
  end
  if (reset) begin
    state_vec_41 = 7'h0;
  end
  if (reset) begin
    state_vec_42 = 7'h0;
  end
  if (reset) begin
    state_vec_43 = 7'h0;
  end
  if (reset) begin
    state_vec_44 = 7'h0;
  end
  if (reset) begin
    state_vec_45 = 7'h0;
  end
  if (reset) begin
    state_vec_46 = 7'h0;
  end
  if (reset) begin
    state_vec_47 = 7'h0;
  end
  if (reset) begin
    state_vec_48 = 7'h0;
  end
  if (reset) begin
    state_vec_49 = 7'h0;
  end
  if (reset) begin
    state_vec_50 = 7'h0;
  end
  if (reset) begin
    state_vec_51 = 7'h0;
  end
  if (reset) begin
    state_vec_52 = 7'h0;
  end
  if (reset) begin
    state_vec_53 = 7'h0;
  end
  if (reset) begin
    state_vec_54 = 7'h0;
  end
  if (reset) begin
    state_vec_55 = 7'h0;
  end
  if (reset) begin
    state_vec_56 = 7'h0;
  end
  if (reset) begin
    state_vec_57 = 7'h0;
  end
  if (reset) begin
    state_vec_58 = 7'h0;
  end
  if (reset) begin
    state_vec_59 = 7'h0;
  end
  if (reset) begin
    state_vec_60 = 7'h0;
  end
  if (reset) begin
    state_vec_61 = 7'h0;
  end
  if (reset) begin
    state_vec_62 = 7'h0;
  end
  if (reset) begin
    state_vec_63 = 7'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

