module MissQueue(
  input          clock,
  input          reset,
  output         io_req_ready,
  input          io_req_valid,
  input  [3:0]   io_req_bits_source,
  input  [4:0]   io_req_bits_cmd,
  input  [35:0]  io_req_bits_addr,
  input  [38:0]  io_req_bits_vaddr,
  input  [7:0]   io_req_bits_way_en,
  input  [2:0]   io_req_bits_word_idx,
  input  [63:0]  io_req_bits_amo_data,
  input  [7:0]   io_req_bits_amo_mask,
  input  [1:0]   io_req_bits_req_coh_state,
  input  [1:0]   io_req_bits_replace_coh_state,
  input  [23:0]  io_req_bits_replace_tag,
  input  [3:0]   io_req_bits_id,
  input          io_req_bits_cancel,
  input  [511:0] io_req_bits_store_data,
  input  [63:0]  io_req_bits_store_mask,
  output [1:0]   io_resp_id,
  output         io_resp_handled,
  output         io_resp_merged,
  output [7:0]   io_resp_repl_way_en,
  input          io_mem_acquire_ready,
  output         io_mem_acquire_valid,
  output [2:0]   io_mem_acquire_bits_opcode,
  output [2:0]   io_mem_acquire_bits_param,
  output [2:0]   io_mem_acquire_bits_size,
  output [3:0]   io_mem_acquire_bits_source,
  output [35:0]  io_mem_acquire_bits_address,
  output [32:0]  io_mem_acquire_bits_user_vaddr,
  output [3:0]   io_mem_acquire_bits_user_reqSource,
  output         io_mem_acquire_bits_user_needHint,
  output [31:0]  io_mem_acquire_bits_mask,
  output         io_mem_grant_ready,
  input          io_mem_grant_valid,
  input  [2:0]   io_mem_grant_bits_opcode,
  input  [1:0]   io_mem_grant_bits_param,
  input  [2:0]   io_mem_grant_bits_size,
  input  [3:0]   io_mem_grant_bits_source,
  input  [8:0]   io_mem_grant_bits_sink,
  input          io_mem_grant_bits_denied,
  input  [255:0] io_mem_grant_bits_data,
  input          io_mem_grant_bits_corrupt,
  input          io_mem_finish_ready,
  output         io_mem_finish_valid,
  output [8:0]   io_mem_finish_bits_sink,
  input          io_refill_pipe_req_ready,
  output         io_refill_pipe_req_valid,
  output [3:0]   io_refill_pipe_req_bits_source,
  output [35:0]  io_refill_pipe_req_bits_addr,
  output [7:0]   io_refill_pipe_req_bits_way_en,
  output [1:0]   io_refill_pipe_req_bits_alias,
  output [1:0]   io_refill_pipe_req_bits_miss_id,
  output [3:0]   io_refill_pipe_req_bits_id,
  output         io_refill_pipe_req_bits_error,
  output [7:0]   io_refill_pipe_req_bits_wmask,
  output [63:0]  io_refill_pipe_req_bits_data_0,
  output [63:0]  io_refill_pipe_req_bits_data_1,
  output [63:0]  io_refill_pipe_req_bits_data_2,
  output [63:0]  io_refill_pipe_req_bits_data_3,
  output [63:0]  io_refill_pipe_req_bits_data_4,
  output [63:0]  io_refill_pipe_req_bits_data_5,
  output [63:0]  io_refill_pipe_req_bits_data_6,
  output [63:0]  io_refill_pipe_req_bits_data_7,
  output [1:0]   io_refill_pipe_req_bits_meta_coh_state,
  input          io_refill_pipe_req_dup_0_ready,
  output         io_refill_pipe_req_dup_0_valid,
  output [35:0]  io_refill_pipe_req_dup_0_bits_addr,
  output [7:0]   io_refill_pipe_req_dup_0_bits_way_en,
  output [1:0]   io_refill_pipe_req_dup_0_bits_alias,
  input          io_refill_pipe_req_dup_1_ready,
  output         io_refill_pipe_req_dup_1_valid,
  output [35:0]  io_refill_pipe_req_dup_1_bits_addr,
  output [7:0]   io_refill_pipe_req_dup_1_bits_way_en,
  output [1:0]   io_refill_pipe_req_dup_1_bits_alias,
  input          io_refill_pipe_req_dup_2_ready,
  output         io_refill_pipe_req_dup_2_valid,
  output [35:0]  io_refill_pipe_req_dup_2_bits_addr,
  output [7:0]   io_refill_pipe_req_dup_2_bits_way_en,
  output [1:0]   io_refill_pipe_req_dup_2_bits_alias,
  input          io_refill_pipe_req_dup_3_ready,
  output         io_refill_pipe_req_dup_3_valid,
  output [35:0]  io_refill_pipe_req_dup_3_bits_addr,
  output [7:0]   io_refill_pipe_req_dup_3_bits_way_en,
  output [1:0]   io_refill_pipe_req_dup_3_bits_alias,
  input          io_refill_pipe_req_dup_4_ready,
  output         io_refill_pipe_req_dup_4_valid,
  output [35:0]  io_refill_pipe_req_dup_4_bits_addr,
  output [7:0]   io_refill_pipe_req_dup_4_bits_way_en,
  output [1:0]   io_refill_pipe_req_dup_4_bits_alias,
  input          io_refill_pipe_req_dup_5_ready,
  output         io_refill_pipe_req_dup_5_valid,
  output [35:0]  io_refill_pipe_req_dup_5_bits_addr,
  output [7:0]   io_refill_pipe_req_dup_5_bits_way_en,
  output [1:0]   io_refill_pipe_req_dup_5_bits_alias,
  input          io_refill_pipe_req_dup_6_ready,
  output         io_refill_pipe_req_dup_6_valid,
  output [35:0]  io_refill_pipe_req_dup_6_bits_addr,
  output [7:0]   io_refill_pipe_req_dup_6_bits_way_en,
  output [1:0]   io_refill_pipe_req_dup_6_bits_alias,
  input          io_refill_pipe_req_dup_7_ready,
  output         io_refill_pipe_req_dup_7_valid,
  output [35:0]  io_refill_pipe_req_dup_7_bits_addr,
  output [7:0]   io_refill_pipe_req_dup_7_bits_way_en,
  output [1:0]   io_refill_pipe_req_dup_7_bits_alias,
  input          io_refill_pipe_req_dup_8_ready,
  output         io_refill_pipe_req_dup_8_valid,
  output [35:0]  io_refill_pipe_req_dup_8_bits_addr,
  output [7:0]   io_refill_pipe_req_dup_8_bits_way_en,
  output [1:0]   io_refill_pipe_req_dup_8_bits_alias,
  input          io_refill_pipe_req_dup_9_ready,
  output         io_refill_pipe_req_dup_9_valid,
  output [35:0]  io_refill_pipe_req_dup_9_bits_addr,
  output [7:0]   io_refill_pipe_req_dup_9_bits_way_en,
  output [1:0]   io_refill_pipe_req_dup_9_bits_alias,
  input          io_refill_pipe_req_dup_10_ready,
  output         io_refill_pipe_req_dup_10_valid,
  output [35:0]  io_refill_pipe_req_dup_10_bits_addr,
  output [7:0]   io_refill_pipe_req_dup_10_bits_way_en,
  output [1:0]   io_refill_pipe_req_dup_10_bits_alias,
  input          io_refill_pipe_req_dup_11_ready,
  output         io_refill_pipe_req_dup_11_valid,
  output [35:0]  io_refill_pipe_req_dup_11_bits_addr,
  output [7:0]   io_refill_pipe_req_dup_11_bits_way_en,
  output [1:0]   io_refill_pipe_req_dup_11_bits_alias,
  input          io_refill_pipe_req_dup_12_ready,
  output         io_refill_pipe_req_dup_12_valid,
  output [35:0]  io_refill_pipe_req_dup_12_bits_addr,
  output [7:0]   io_refill_pipe_req_dup_12_bits_way_en,
  output [1:0]   io_refill_pipe_req_dup_12_bits_alias,
  input          io_refill_pipe_req_dup_13_ready,
  output         io_refill_pipe_req_dup_13_valid,
  output [35:0]  io_refill_pipe_req_dup_13_bits_addr,
  output [7:0]   io_refill_pipe_req_dup_13_bits_way_en,
  output [1:0]   io_refill_pipe_req_dup_13_bits_alias,
  input          io_refill_pipe_req_dup_14_ready,
  output         io_refill_pipe_req_dup_14_valid,
  output [35:0]  io_refill_pipe_req_dup_14_bits_addr,
  output [7:0]   io_refill_pipe_req_dup_14_bits_way_en,
  output [1:0]   io_refill_pipe_req_dup_14_bits_alias,
  input          io_refill_pipe_req_dup_15_ready,
  output         io_refill_pipe_req_dup_15_valid,
  output [35:0]  io_refill_pipe_req_dup_15_bits_addr,
  output [7:0]   io_refill_pipe_req_dup_15_bits_way_en,
  output [1:0]   io_refill_pipe_req_dup_15_bits_alias,
  input          io_refill_pipe_req_dup_16_ready,
  output         io_refill_pipe_req_dup_16_valid,
  output [35:0]  io_refill_pipe_req_dup_16_bits_addr,
  output [7:0]   io_refill_pipe_req_dup_16_bits_way_en,
  output [1:0]   io_refill_pipe_req_dup_16_bits_alias,
  input          io_refill_pipe_req_dup_17_ready,
  output         io_refill_pipe_req_dup_17_valid,
  output [35:0]  io_refill_pipe_req_dup_17_bits_addr,
  output [7:0]   io_refill_pipe_req_dup_17_bits_way_en,
  output [1:0]   io_refill_pipe_req_dup_17_bits_alias,
  input          io_refill_pipe_req_dup_18_ready,
  output         io_refill_pipe_req_dup_18_valid,
  output [35:0]  io_refill_pipe_req_dup_18_bits_addr,
  output [7:0]   io_refill_pipe_req_dup_18_bits_way_en,
  output [1:0]   io_refill_pipe_req_dup_18_bits_alias,
  input          io_refill_pipe_req_dup_19_ready,
  output         io_refill_pipe_req_dup_19_valid,
  output [35:0]  io_refill_pipe_req_dup_19_bits_addr,
  output [7:0]   io_refill_pipe_req_dup_19_bits_way_en,
  output [1:0]   io_refill_pipe_req_dup_19_bits_alias,
  input          io_refill_pipe_req_dup_20_ready,
  output         io_refill_pipe_req_dup_20_valid,
  output [35:0]  io_refill_pipe_req_dup_20_bits_addr,
  output [7:0]   io_refill_pipe_req_dup_20_bits_way_en,
  output [1:0]   io_refill_pipe_req_dup_20_bits_alias,
  input          io_refill_pipe_req_dup_21_ready,
  output         io_refill_pipe_req_dup_21_valid,
  output [35:0]  io_refill_pipe_req_dup_21_bits_addr,
  output [7:0]   io_refill_pipe_req_dup_21_bits_way_en,
  output [1:0]   io_refill_pipe_req_dup_21_bits_alias,
  input          io_refill_pipe_req_dup_22_ready,
  output         io_refill_pipe_req_dup_22_valid,
  output [35:0]  io_refill_pipe_req_dup_22_bits_addr,
  output [7:0]   io_refill_pipe_req_dup_22_bits_way_en,
  output [1:0]   io_refill_pipe_req_dup_22_bits_alias,
  input          io_refill_pipe_req_dup_23_ready,
  output         io_refill_pipe_req_dup_23_valid,
  output [35:0]  io_refill_pipe_req_dup_23_bits_addr,
  output [7:0]   io_refill_pipe_req_dup_23_bits_way_en,
  output [1:0]   io_refill_pipe_req_dup_23_bits_alias,
  input          io_refill_pipe_resp_valid,
  input  [1:0]   io_refill_pipe_resp_bits,
  input          io_replace_pipe_req_ready,
  output         io_replace_pipe_req_valid,
  output         io_replace_pipe_req_bits_miss,
  output [1:0]   io_replace_pipe_req_bits_miss_id,
  output [1:0]   io_replace_pipe_req_bits_miss_param,
  output         io_replace_pipe_req_bits_miss_dirty,
  output [7:0]   io_replace_pipe_req_bits_miss_way_en,
  output         io_replace_pipe_req_bits_probe,
  output [1:0]   io_replace_pipe_req_bits_probe_param,
  output         io_replace_pipe_req_bits_probe_need_data,
  output [3:0]   io_replace_pipe_req_bits_source,
  output [4:0]   io_replace_pipe_req_bits_cmd,
  output [38:0]  io_replace_pipe_req_bits_vaddr,
  output [35:0]  io_replace_pipe_req_bits_addr,
  output [511:0] io_replace_pipe_req_bits_store_data,
  output [63:0]  io_replace_pipe_req_bits_store_mask,
  output [2:0]   io_replace_pipe_req_bits_word_idx,
  output [63:0]  io_replace_pipe_req_bits_amo_data,
  output [7:0]   io_replace_pipe_req_bits_amo_mask,
  output         io_replace_pipe_req_bits_error,
  output         io_replace_pipe_req_bits_replace,
  output [7:0]   io_replace_pipe_req_bits_replace_way_en,
  output [3:0]   io_replace_pipe_req_bits_id,
  input          io_replace_pipe_resp_valid,
  input  [1:0]   io_replace_pipe_resp_bits,
  input          io_main_pipe_req_ready,
  output         io_main_pipe_req_valid,
  output         io_main_pipe_req_bits_miss,
  output [1:0]   io_main_pipe_req_bits_miss_id,
  output [1:0]   io_main_pipe_req_bits_miss_param,
  output [7:0]   io_main_pipe_req_bits_miss_way_en,
  output [3:0]   io_main_pipe_req_bits_source,
  output [4:0]   io_main_pipe_req_bits_cmd,
  output [38:0]  io_main_pipe_req_bits_vaddr,
  output [35:0]  io_main_pipe_req_bits_addr,
  output [511:0] io_main_pipe_req_bits_store_data,
  output [63:0]  io_main_pipe_req_bits_store_mask,
  output [2:0]   io_main_pipe_req_bits_word_idx,
  output [63:0]  io_main_pipe_req_bits_amo_data,
  output [7:0]   io_main_pipe_req_bits_amo_mask,
  output         io_main_pipe_req_bits_error,
  output [3:0]   io_main_pipe_req_bits_id,
  input          io_main_pipe_resp_valid,
  input  [1:0]   io_main_pipe_resp_bits_miss_id,
  input          io_main_pipe_resp_bits_ack_miss_queue,
  input  [35:0]  io_probe_addr,
  output         io_probe_block,
  input          io_forward_0_valid,
  input  [1:0]   io_forward_0_mshrid,
  input  [35:0]  io_forward_0_paddr,
  output         io_forward_0_forward_mshr,
  output [7:0]   io_forward_0_forwardData_0,
  output [7:0]   io_forward_0_forwardData_1,
  output [7:0]   io_forward_0_forwardData_2,
  output [7:0]   io_forward_0_forwardData_3,
  output [7:0]   io_forward_0_forwardData_4,
  output [7:0]   io_forward_0_forwardData_5,
  output [7:0]   io_forward_0_forwardData_6,
  output [7:0]   io_forward_0_forwardData_7,
  output [7:0]   io_forward_0_forwardData_8,
  output [7:0]   io_forward_0_forwardData_9,
  output [7:0]   io_forward_0_forwardData_10,
  output [7:0]   io_forward_0_forwardData_11,
  output [7:0]   io_forward_0_forwardData_12,
  output [7:0]   io_forward_0_forwardData_13,
  output [7:0]   io_forward_0_forwardData_14,
  output [7:0]   io_forward_0_forwardData_15,
  output         io_forward_0_forward_result_valid,
  input          io_forward_1_valid,
  input  [1:0]   io_forward_1_mshrid,
  input  [35:0]  io_forward_1_paddr,
  output         io_forward_1_forward_mshr,
  output [7:0]   io_forward_1_forwardData_0,
  output [7:0]   io_forward_1_forwardData_1,
  output [7:0]   io_forward_1_forwardData_2,
  output [7:0]   io_forward_1_forwardData_3,
  output [7:0]   io_forward_1_forwardData_4,
  output [7:0]   io_forward_1_forwardData_5,
  output [7:0]   io_forward_1_forwardData_6,
  output [7:0]   io_forward_1_forwardData_7,
  output [7:0]   io_forward_1_forwardData_8,
  output [7:0]   io_forward_1_forwardData_9,
  output [7:0]   io_forward_1_forwardData_10,
  output [7:0]   io_forward_1_forwardData_11,
  output [7:0]   io_forward_1_forwardData_12,
  output [7:0]   io_forward_1_forwardData_13,
  output [7:0]   io_forward_1_forwardData_14,
  output [7:0]   io_forward_1_forwardData_15,
  output         io_forward_1_forward_result_valid,
  input          io_l2_pf_store_only,
  input          io_lqEmpty,
  output         io_mq_enq_cancel,
  output [5:0]   io_perf_0_value,
  output [5:0]   io_perf_1_value,
  output [5:0]   io_perf_2_value,
  output [5:0]   io_perf_3_value,
  output [5:0]   io_perf_4_value,
  input          rob_head_vaddr_0_valid,
  input  [38:0]  rob_head_vaddr_0_bits
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [511:0] _RAND_12;
  reg [63:0] _RAND_13;
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
`endif // RANDOMIZE_REG_INIT
  wire  entries_0_clock; // @[MissQueue.scala 857:50]
  wire  entries_0_reset; // @[MissQueue.scala 857:50]
  wire [1:0] entries_0_io_id; // @[MissQueue.scala 857:50]
  wire  entries_0_io_req_valid; // @[MissQueue.scala 857:50]
  wire [3:0] entries_0_io_req_bits_source; // @[MissQueue.scala 857:50]
  wire [35:0] entries_0_io_req_bits_addr; // @[MissQueue.scala 857:50]
  wire [38:0] entries_0_io_req_bits_vaddr; // @[MissQueue.scala 857:50]
  wire [7:0] entries_0_io_req_bits_way_en; // @[MissQueue.scala 857:50]
  wire  entries_0_io_req_bits_cancel; // @[MissQueue.scala 857:50]
  wire [3:0] entries_0_io_miss_req_pipe_reg_req_source; // @[MissQueue.scala 857:50]
  wire [4:0] entries_0_io_miss_req_pipe_reg_req_cmd; // @[MissQueue.scala 857:50]
  wire [35:0] entries_0_io_miss_req_pipe_reg_req_addr; // @[MissQueue.scala 857:50]
  wire [38:0] entries_0_io_miss_req_pipe_reg_req_vaddr; // @[MissQueue.scala 857:50]
  wire [7:0] entries_0_io_miss_req_pipe_reg_req_way_en; // @[MissQueue.scala 857:50]
  wire [2:0] entries_0_io_miss_req_pipe_reg_req_word_idx; // @[MissQueue.scala 857:50]
  wire [63:0] entries_0_io_miss_req_pipe_reg_req_amo_data; // @[MissQueue.scala 857:50]
  wire [7:0] entries_0_io_miss_req_pipe_reg_req_amo_mask; // @[MissQueue.scala 857:50]
  wire [1:0] entries_0_io_miss_req_pipe_reg_req_req_coh_state; // @[MissQueue.scala 857:50]
  wire [1:0] entries_0_io_miss_req_pipe_reg_req_replace_coh_state; // @[MissQueue.scala 857:50]
  wire [23:0] entries_0_io_miss_req_pipe_reg_req_replace_tag; // @[MissQueue.scala 857:50]
  wire [3:0] entries_0_io_miss_req_pipe_reg_req_id; // @[MissQueue.scala 857:50]
  wire [511:0] entries_0_io_miss_req_pipe_reg_req_store_data; // @[MissQueue.scala 857:50]
  wire [63:0] entries_0_io_miss_req_pipe_reg_req_store_mask; // @[MissQueue.scala 857:50]
  wire  entries_0_io_miss_req_pipe_reg_merge; // @[MissQueue.scala 857:50]
  wire  entries_0_io_miss_req_pipe_reg_alloc; // @[MissQueue.scala 857:50]
  wire  entries_0_io_primary_valid; // @[MissQueue.scala 857:50]
  wire  entries_0_io_primary_ready; // @[MissQueue.scala 857:50]
  wire  entries_0_io_secondary_ready; // @[MissQueue.scala 857:50]
  wire  entries_0_io_secondary_reject; // @[MissQueue.scala 857:50]
  wire [7:0] entries_0_io_repl_way_en; // @[MissQueue.scala 857:50]
  wire  entries_0_io_mem_acquire_ready; // @[MissQueue.scala 857:50]
  wire  entries_0_io_mem_acquire_valid; // @[MissQueue.scala 857:50]
  wire [2:0] entries_0_io_mem_acquire_bits_param; // @[MissQueue.scala 857:50]
  wire [3:0] entries_0_io_mem_acquire_bits_source; // @[MissQueue.scala 857:50]
  wire [35:0] entries_0_io_mem_acquire_bits_address; // @[MissQueue.scala 857:50]
  wire [32:0] entries_0_io_mem_acquire_bits_user_vaddr; // @[MissQueue.scala 857:50]
  wire [3:0] entries_0_io_mem_acquire_bits_user_reqSource; // @[MissQueue.scala 857:50]
  wire  entries_0_io_mem_acquire_bits_user_needHint; // @[MissQueue.scala 857:50]
  wire  entries_0_io_mem_grant_ready; // @[MissQueue.scala 857:50]
  wire  entries_0_io_mem_grant_valid; // @[MissQueue.scala 857:50]
  wire [2:0] entries_0_io_mem_grant_bits_opcode; // @[MissQueue.scala 857:50]
  wire [1:0] entries_0_io_mem_grant_bits_param; // @[MissQueue.scala 857:50]
  wire [2:0] entries_0_io_mem_grant_bits_size; // @[MissQueue.scala 857:50]
  wire [8:0] entries_0_io_mem_grant_bits_sink; // @[MissQueue.scala 857:50]
  wire  entries_0_io_mem_grant_bits_denied; // @[MissQueue.scala 857:50]
  wire [255:0] entries_0_io_mem_grant_bits_data; // @[MissQueue.scala 857:50]
  wire  entries_0_io_mem_grant_bits_corrupt; // @[MissQueue.scala 857:50]
  wire  entries_0_io_mem_finish_ready; // @[MissQueue.scala 857:50]
  wire  entries_0_io_mem_finish_valid; // @[MissQueue.scala 857:50]
  wire [8:0] entries_0_io_mem_finish_bits_sink; // @[MissQueue.scala 857:50]
  wire  entries_0_io_refill_pipe_req_ready; // @[MissQueue.scala 857:50]
  wire  entries_0_io_refill_pipe_req_valid; // @[MissQueue.scala 857:50]
  wire [3:0] entries_0_io_refill_pipe_req_bits_source; // @[MissQueue.scala 857:50]
  wire [35:0] entries_0_io_refill_pipe_req_bits_addr; // @[MissQueue.scala 857:50]
  wire [7:0] entries_0_io_refill_pipe_req_bits_way_en; // @[MissQueue.scala 857:50]
  wire [1:0] entries_0_io_refill_pipe_req_bits_alias; // @[MissQueue.scala 857:50]
  wire [1:0] entries_0_io_refill_pipe_req_bits_miss_id; // @[MissQueue.scala 857:50]
  wire [3:0] entries_0_io_refill_pipe_req_bits_id; // @[MissQueue.scala 857:50]
  wire  entries_0_io_refill_pipe_req_bits_error; // @[MissQueue.scala 857:50]
  wire [7:0] entries_0_io_refill_pipe_req_bits_wmask; // @[MissQueue.scala 857:50]
  wire [63:0] entries_0_io_refill_pipe_req_bits_data_0; // @[MissQueue.scala 857:50]
  wire [63:0] entries_0_io_refill_pipe_req_bits_data_1; // @[MissQueue.scala 857:50]
  wire [63:0] entries_0_io_refill_pipe_req_bits_data_2; // @[MissQueue.scala 857:50]
  wire [63:0] entries_0_io_refill_pipe_req_bits_data_3; // @[MissQueue.scala 857:50]
  wire [63:0] entries_0_io_refill_pipe_req_bits_data_4; // @[MissQueue.scala 857:50]
  wire [63:0] entries_0_io_refill_pipe_req_bits_data_5; // @[MissQueue.scala 857:50]
  wire [63:0] entries_0_io_refill_pipe_req_bits_data_6; // @[MissQueue.scala 857:50]
  wire [63:0] entries_0_io_refill_pipe_req_bits_data_7; // @[MissQueue.scala 857:50]
  wire [1:0] entries_0_io_refill_pipe_req_bits_meta_coh_state; // @[MissQueue.scala 857:50]
  wire  entries_0_io_refill_pipe_resp; // @[MissQueue.scala 857:50]
  wire  entries_0_io_replace_pipe_req_ready; // @[MissQueue.scala 857:50]
  wire  entries_0_io_replace_pipe_req_valid; // @[MissQueue.scala 857:50]
  wire [1:0] entries_0_io_replace_pipe_req_bits_miss_id; // @[MissQueue.scala 857:50]
  wire [38:0] entries_0_io_replace_pipe_req_bits_vaddr; // @[MissQueue.scala 857:50]
  wire [35:0] entries_0_io_replace_pipe_req_bits_addr; // @[MissQueue.scala 857:50]
  wire [7:0] entries_0_io_replace_pipe_req_bits_replace_way_en; // @[MissQueue.scala 857:50]
  wire  entries_0_io_replace_pipe_resp; // @[MissQueue.scala 857:50]
  wire  entries_0_io_main_pipe_req_ready; // @[MissQueue.scala 857:50]
  wire  entries_0_io_main_pipe_req_valid; // @[MissQueue.scala 857:50]
  wire [1:0] entries_0_io_main_pipe_req_bits_miss_id; // @[MissQueue.scala 857:50]
  wire [1:0] entries_0_io_main_pipe_req_bits_miss_param; // @[MissQueue.scala 857:50]
  wire [7:0] entries_0_io_main_pipe_req_bits_miss_way_en; // @[MissQueue.scala 857:50]
  wire [3:0] entries_0_io_main_pipe_req_bits_source; // @[MissQueue.scala 857:50]
  wire [4:0] entries_0_io_main_pipe_req_bits_cmd; // @[MissQueue.scala 857:50]
  wire [38:0] entries_0_io_main_pipe_req_bits_vaddr; // @[MissQueue.scala 857:50]
  wire [35:0] entries_0_io_main_pipe_req_bits_addr; // @[MissQueue.scala 857:50]
  wire [511:0] entries_0_io_main_pipe_req_bits_store_data; // @[MissQueue.scala 857:50]
  wire [2:0] entries_0_io_main_pipe_req_bits_word_idx; // @[MissQueue.scala 857:50]
  wire [63:0] entries_0_io_main_pipe_req_bits_amo_data; // @[MissQueue.scala 857:50]
  wire [7:0] entries_0_io_main_pipe_req_bits_amo_mask; // @[MissQueue.scala 857:50]
  wire  entries_0_io_main_pipe_req_bits_error; // @[MissQueue.scala 857:50]
  wire [3:0] entries_0_io_main_pipe_req_bits_id; // @[MissQueue.scala 857:50]
  wire  entries_0_io_main_pipe_resp; // @[MissQueue.scala 857:50]
  wire  entries_0_io_block_addr_valid; // @[MissQueue.scala 857:50]
  wire [35:0] entries_0_io_block_addr_bits; // @[MissQueue.scala 857:50]
  wire  entries_0_io_req_handled_by_this_entry; // @[MissQueue.scala 857:50]
  wire  entries_0_io_forwardInfo_inflight; // @[MissQueue.scala 857:50]
  wire [35:0] entries_0_io_forwardInfo_paddr; // @[MissQueue.scala 857:50]
  wire [63:0] entries_0_io_forwardInfo_raw_data_0; // @[MissQueue.scala 857:50]
  wire [63:0] entries_0_io_forwardInfo_raw_data_1; // @[MissQueue.scala 857:50]
  wire [63:0] entries_0_io_forwardInfo_raw_data_2; // @[MissQueue.scala 857:50]
  wire [63:0] entries_0_io_forwardInfo_raw_data_3; // @[MissQueue.scala 857:50]
  wire [63:0] entries_0_io_forwardInfo_raw_data_4; // @[MissQueue.scala 857:50]
  wire [63:0] entries_0_io_forwardInfo_raw_data_5; // @[MissQueue.scala 857:50]
  wire [63:0] entries_0_io_forwardInfo_raw_data_6; // @[MissQueue.scala 857:50]
  wire [63:0] entries_0_io_forwardInfo_raw_data_7; // @[MissQueue.scala 857:50]
  wire  entries_0_io_forwardInfo_firstbeat_valid; // @[MissQueue.scala 857:50]
  wire  entries_0_io_forwardInfo_lastbeat_valid; // @[MissQueue.scala 857:50]
  wire  entries_0_io_l2_pf_store_only; // @[MissQueue.scala 857:50]
  wire  entries_0_io_acquire_fired_by_pipe_reg; // @[MissQueue.scala 857:50]
  wire  entries_0_io_memSetPattenDetected; // @[MissQueue.scala 857:50]
  wire [38:0] entries_0_io_rob_head_query_vaddr; // @[MissQueue.scala 857:50]
  wire  entries_0_io_rob_head_query_query_valid; // @[MissQueue.scala 857:50]
  wire  entries_0_io_rob_head_query_resp; // @[MissQueue.scala 857:50]
  wire  entries_0_io_prefetch_info_late_prefetch; // @[MissQueue.scala 857:50]
  wire  entries_1_clock; // @[MissQueue.scala 857:50]
  wire  entries_1_reset; // @[MissQueue.scala 857:50]
  wire [1:0] entries_1_io_id; // @[MissQueue.scala 857:50]
  wire  entries_1_io_req_valid; // @[MissQueue.scala 857:50]
  wire [3:0] entries_1_io_req_bits_source; // @[MissQueue.scala 857:50]
  wire [35:0] entries_1_io_req_bits_addr; // @[MissQueue.scala 857:50]
  wire [38:0] entries_1_io_req_bits_vaddr; // @[MissQueue.scala 857:50]
  wire [7:0] entries_1_io_req_bits_way_en; // @[MissQueue.scala 857:50]
  wire  entries_1_io_req_bits_cancel; // @[MissQueue.scala 857:50]
  wire [3:0] entries_1_io_miss_req_pipe_reg_req_source; // @[MissQueue.scala 857:50]
  wire [4:0] entries_1_io_miss_req_pipe_reg_req_cmd; // @[MissQueue.scala 857:50]
  wire [35:0] entries_1_io_miss_req_pipe_reg_req_addr; // @[MissQueue.scala 857:50]
  wire [38:0] entries_1_io_miss_req_pipe_reg_req_vaddr; // @[MissQueue.scala 857:50]
  wire [7:0] entries_1_io_miss_req_pipe_reg_req_way_en; // @[MissQueue.scala 857:50]
  wire [2:0] entries_1_io_miss_req_pipe_reg_req_word_idx; // @[MissQueue.scala 857:50]
  wire [63:0] entries_1_io_miss_req_pipe_reg_req_amo_data; // @[MissQueue.scala 857:50]
  wire [7:0] entries_1_io_miss_req_pipe_reg_req_amo_mask; // @[MissQueue.scala 857:50]
  wire [1:0] entries_1_io_miss_req_pipe_reg_req_req_coh_state; // @[MissQueue.scala 857:50]
  wire [1:0] entries_1_io_miss_req_pipe_reg_req_replace_coh_state; // @[MissQueue.scala 857:50]
  wire [23:0] entries_1_io_miss_req_pipe_reg_req_replace_tag; // @[MissQueue.scala 857:50]
  wire [3:0] entries_1_io_miss_req_pipe_reg_req_id; // @[MissQueue.scala 857:50]
  wire [511:0] entries_1_io_miss_req_pipe_reg_req_store_data; // @[MissQueue.scala 857:50]
  wire [63:0] entries_1_io_miss_req_pipe_reg_req_store_mask; // @[MissQueue.scala 857:50]
  wire  entries_1_io_miss_req_pipe_reg_merge; // @[MissQueue.scala 857:50]
  wire  entries_1_io_miss_req_pipe_reg_alloc; // @[MissQueue.scala 857:50]
  wire  entries_1_io_primary_valid; // @[MissQueue.scala 857:50]
  wire  entries_1_io_primary_ready; // @[MissQueue.scala 857:50]
  wire  entries_1_io_secondary_ready; // @[MissQueue.scala 857:50]
  wire  entries_1_io_secondary_reject; // @[MissQueue.scala 857:50]
  wire [7:0] entries_1_io_repl_way_en; // @[MissQueue.scala 857:50]
  wire  entries_1_io_mem_acquire_ready; // @[MissQueue.scala 857:50]
  wire  entries_1_io_mem_acquire_valid; // @[MissQueue.scala 857:50]
  wire [2:0] entries_1_io_mem_acquire_bits_param; // @[MissQueue.scala 857:50]
  wire [3:0] entries_1_io_mem_acquire_bits_source; // @[MissQueue.scala 857:50]
  wire [35:0] entries_1_io_mem_acquire_bits_address; // @[MissQueue.scala 857:50]
  wire [32:0] entries_1_io_mem_acquire_bits_user_vaddr; // @[MissQueue.scala 857:50]
  wire [3:0] entries_1_io_mem_acquire_bits_user_reqSource; // @[MissQueue.scala 857:50]
  wire  entries_1_io_mem_acquire_bits_user_needHint; // @[MissQueue.scala 857:50]
  wire  entries_1_io_mem_grant_ready; // @[MissQueue.scala 857:50]
  wire  entries_1_io_mem_grant_valid; // @[MissQueue.scala 857:50]
  wire [2:0] entries_1_io_mem_grant_bits_opcode; // @[MissQueue.scala 857:50]
  wire [1:0] entries_1_io_mem_grant_bits_param; // @[MissQueue.scala 857:50]
  wire [2:0] entries_1_io_mem_grant_bits_size; // @[MissQueue.scala 857:50]
  wire [8:0] entries_1_io_mem_grant_bits_sink; // @[MissQueue.scala 857:50]
  wire  entries_1_io_mem_grant_bits_denied; // @[MissQueue.scala 857:50]
  wire [255:0] entries_1_io_mem_grant_bits_data; // @[MissQueue.scala 857:50]
  wire  entries_1_io_mem_grant_bits_corrupt; // @[MissQueue.scala 857:50]
  wire  entries_1_io_mem_finish_ready; // @[MissQueue.scala 857:50]
  wire  entries_1_io_mem_finish_valid; // @[MissQueue.scala 857:50]
  wire [8:0] entries_1_io_mem_finish_bits_sink; // @[MissQueue.scala 857:50]
  wire  entries_1_io_refill_pipe_req_ready; // @[MissQueue.scala 857:50]
  wire  entries_1_io_refill_pipe_req_valid; // @[MissQueue.scala 857:50]
  wire [3:0] entries_1_io_refill_pipe_req_bits_source; // @[MissQueue.scala 857:50]
  wire [35:0] entries_1_io_refill_pipe_req_bits_addr; // @[MissQueue.scala 857:50]
  wire [7:0] entries_1_io_refill_pipe_req_bits_way_en; // @[MissQueue.scala 857:50]
  wire [1:0] entries_1_io_refill_pipe_req_bits_alias; // @[MissQueue.scala 857:50]
  wire [1:0] entries_1_io_refill_pipe_req_bits_miss_id; // @[MissQueue.scala 857:50]
  wire [3:0] entries_1_io_refill_pipe_req_bits_id; // @[MissQueue.scala 857:50]
  wire  entries_1_io_refill_pipe_req_bits_error; // @[MissQueue.scala 857:50]
  wire [7:0] entries_1_io_refill_pipe_req_bits_wmask; // @[MissQueue.scala 857:50]
  wire [63:0] entries_1_io_refill_pipe_req_bits_data_0; // @[MissQueue.scala 857:50]
  wire [63:0] entries_1_io_refill_pipe_req_bits_data_1; // @[MissQueue.scala 857:50]
  wire [63:0] entries_1_io_refill_pipe_req_bits_data_2; // @[MissQueue.scala 857:50]
  wire [63:0] entries_1_io_refill_pipe_req_bits_data_3; // @[MissQueue.scala 857:50]
  wire [63:0] entries_1_io_refill_pipe_req_bits_data_4; // @[MissQueue.scala 857:50]
  wire [63:0] entries_1_io_refill_pipe_req_bits_data_5; // @[MissQueue.scala 857:50]
  wire [63:0] entries_1_io_refill_pipe_req_bits_data_6; // @[MissQueue.scala 857:50]
  wire [63:0] entries_1_io_refill_pipe_req_bits_data_7; // @[MissQueue.scala 857:50]
  wire [1:0] entries_1_io_refill_pipe_req_bits_meta_coh_state; // @[MissQueue.scala 857:50]
  wire  entries_1_io_refill_pipe_resp; // @[MissQueue.scala 857:50]
  wire  entries_1_io_replace_pipe_req_ready; // @[MissQueue.scala 857:50]
  wire  entries_1_io_replace_pipe_req_valid; // @[MissQueue.scala 857:50]
  wire [1:0] entries_1_io_replace_pipe_req_bits_miss_id; // @[MissQueue.scala 857:50]
  wire [38:0] entries_1_io_replace_pipe_req_bits_vaddr; // @[MissQueue.scala 857:50]
  wire [35:0] entries_1_io_replace_pipe_req_bits_addr; // @[MissQueue.scala 857:50]
  wire [7:0] entries_1_io_replace_pipe_req_bits_replace_way_en; // @[MissQueue.scala 857:50]
  wire  entries_1_io_replace_pipe_resp; // @[MissQueue.scala 857:50]
  wire  entries_1_io_main_pipe_req_ready; // @[MissQueue.scala 857:50]
  wire  entries_1_io_main_pipe_req_valid; // @[MissQueue.scala 857:50]
  wire [1:0] entries_1_io_main_pipe_req_bits_miss_id; // @[MissQueue.scala 857:50]
  wire [1:0] entries_1_io_main_pipe_req_bits_miss_param; // @[MissQueue.scala 857:50]
  wire [7:0] entries_1_io_main_pipe_req_bits_miss_way_en; // @[MissQueue.scala 857:50]
  wire [3:0] entries_1_io_main_pipe_req_bits_source; // @[MissQueue.scala 857:50]
  wire [4:0] entries_1_io_main_pipe_req_bits_cmd; // @[MissQueue.scala 857:50]
  wire [38:0] entries_1_io_main_pipe_req_bits_vaddr; // @[MissQueue.scala 857:50]
  wire [35:0] entries_1_io_main_pipe_req_bits_addr; // @[MissQueue.scala 857:50]
  wire [511:0] entries_1_io_main_pipe_req_bits_store_data; // @[MissQueue.scala 857:50]
  wire [2:0] entries_1_io_main_pipe_req_bits_word_idx; // @[MissQueue.scala 857:50]
  wire [63:0] entries_1_io_main_pipe_req_bits_amo_data; // @[MissQueue.scala 857:50]
  wire [7:0] entries_1_io_main_pipe_req_bits_amo_mask; // @[MissQueue.scala 857:50]
  wire  entries_1_io_main_pipe_req_bits_error; // @[MissQueue.scala 857:50]
  wire [3:0] entries_1_io_main_pipe_req_bits_id; // @[MissQueue.scala 857:50]
  wire  entries_1_io_main_pipe_resp; // @[MissQueue.scala 857:50]
  wire  entries_1_io_block_addr_valid; // @[MissQueue.scala 857:50]
  wire [35:0] entries_1_io_block_addr_bits; // @[MissQueue.scala 857:50]
  wire  entries_1_io_req_handled_by_this_entry; // @[MissQueue.scala 857:50]
  wire  entries_1_io_forwardInfo_inflight; // @[MissQueue.scala 857:50]
  wire [35:0] entries_1_io_forwardInfo_paddr; // @[MissQueue.scala 857:50]
  wire [63:0] entries_1_io_forwardInfo_raw_data_0; // @[MissQueue.scala 857:50]
  wire [63:0] entries_1_io_forwardInfo_raw_data_1; // @[MissQueue.scala 857:50]
  wire [63:0] entries_1_io_forwardInfo_raw_data_2; // @[MissQueue.scala 857:50]
  wire [63:0] entries_1_io_forwardInfo_raw_data_3; // @[MissQueue.scala 857:50]
  wire [63:0] entries_1_io_forwardInfo_raw_data_4; // @[MissQueue.scala 857:50]
  wire [63:0] entries_1_io_forwardInfo_raw_data_5; // @[MissQueue.scala 857:50]
  wire [63:0] entries_1_io_forwardInfo_raw_data_6; // @[MissQueue.scala 857:50]
  wire [63:0] entries_1_io_forwardInfo_raw_data_7; // @[MissQueue.scala 857:50]
  wire  entries_1_io_forwardInfo_firstbeat_valid; // @[MissQueue.scala 857:50]
  wire  entries_1_io_forwardInfo_lastbeat_valid; // @[MissQueue.scala 857:50]
  wire  entries_1_io_l2_pf_store_only; // @[MissQueue.scala 857:50]
  wire  entries_1_io_acquire_fired_by_pipe_reg; // @[MissQueue.scala 857:50]
  wire  entries_1_io_memSetPattenDetected; // @[MissQueue.scala 857:50]
  wire [38:0] entries_1_io_rob_head_query_vaddr; // @[MissQueue.scala 857:50]
  wire  entries_1_io_rob_head_query_query_valid; // @[MissQueue.scala 857:50]
  wire  entries_1_io_rob_head_query_resp; // @[MissQueue.scala 857:50]
  wire  entries_1_io_prefetch_info_late_prefetch; // @[MissQueue.scala 857:50]
  wire  entries_2_clock; // @[MissQueue.scala 857:50]
  wire  entries_2_reset; // @[MissQueue.scala 857:50]
  wire [1:0] entries_2_io_id; // @[MissQueue.scala 857:50]
  wire  entries_2_io_req_valid; // @[MissQueue.scala 857:50]
  wire [3:0] entries_2_io_req_bits_source; // @[MissQueue.scala 857:50]
  wire [35:0] entries_2_io_req_bits_addr; // @[MissQueue.scala 857:50]
  wire [38:0] entries_2_io_req_bits_vaddr; // @[MissQueue.scala 857:50]
  wire [7:0] entries_2_io_req_bits_way_en; // @[MissQueue.scala 857:50]
  wire  entries_2_io_req_bits_cancel; // @[MissQueue.scala 857:50]
  wire [3:0] entries_2_io_miss_req_pipe_reg_req_source; // @[MissQueue.scala 857:50]
  wire [4:0] entries_2_io_miss_req_pipe_reg_req_cmd; // @[MissQueue.scala 857:50]
  wire [35:0] entries_2_io_miss_req_pipe_reg_req_addr; // @[MissQueue.scala 857:50]
  wire [38:0] entries_2_io_miss_req_pipe_reg_req_vaddr; // @[MissQueue.scala 857:50]
  wire [7:0] entries_2_io_miss_req_pipe_reg_req_way_en; // @[MissQueue.scala 857:50]
  wire [2:0] entries_2_io_miss_req_pipe_reg_req_word_idx; // @[MissQueue.scala 857:50]
  wire [63:0] entries_2_io_miss_req_pipe_reg_req_amo_data; // @[MissQueue.scala 857:50]
  wire [7:0] entries_2_io_miss_req_pipe_reg_req_amo_mask; // @[MissQueue.scala 857:50]
  wire [1:0] entries_2_io_miss_req_pipe_reg_req_req_coh_state; // @[MissQueue.scala 857:50]
  wire [1:0] entries_2_io_miss_req_pipe_reg_req_replace_coh_state; // @[MissQueue.scala 857:50]
  wire [23:0] entries_2_io_miss_req_pipe_reg_req_replace_tag; // @[MissQueue.scala 857:50]
  wire [3:0] entries_2_io_miss_req_pipe_reg_req_id; // @[MissQueue.scala 857:50]
  wire [511:0] entries_2_io_miss_req_pipe_reg_req_store_data; // @[MissQueue.scala 857:50]
  wire [63:0] entries_2_io_miss_req_pipe_reg_req_store_mask; // @[MissQueue.scala 857:50]
  wire  entries_2_io_miss_req_pipe_reg_merge; // @[MissQueue.scala 857:50]
  wire  entries_2_io_miss_req_pipe_reg_alloc; // @[MissQueue.scala 857:50]
  wire  entries_2_io_primary_valid; // @[MissQueue.scala 857:50]
  wire  entries_2_io_primary_ready; // @[MissQueue.scala 857:50]
  wire  entries_2_io_secondary_ready; // @[MissQueue.scala 857:50]
  wire  entries_2_io_secondary_reject; // @[MissQueue.scala 857:50]
  wire [7:0] entries_2_io_repl_way_en; // @[MissQueue.scala 857:50]
  wire  entries_2_io_mem_acquire_ready; // @[MissQueue.scala 857:50]
  wire  entries_2_io_mem_acquire_valid; // @[MissQueue.scala 857:50]
  wire [2:0] entries_2_io_mem_acquire_bits_param; // @[MissQueue.scala 857:50]
  wire [3:0] entries_2_io_mem_acquire_bits_source; // @[MissQueue.scala 857:50]
  wire [35:0] entries_2_io_mem_acquire_bits_address; // @[MissQueue.scala 857:50]
  wire [32:0] entries_2_io_mem_acquire_bits_user_vaddr; // @[MissQueue.scala 857:50]
  wire [3:0] entries_2_io_mem_acquire_bits_user_reqSource; // @[MissQueue.scala 857:50]
  wire  entries_2_io_mem_acquire_bits_user_needHint; // @[MissQueue.scala 857:50]
  wire  entries_2_io_mem_grant_ready; // @[MissQueue.scala 857:50]
  wire  entries_2_io_mem_grant_valid; // @[MissQueue.scala 857:50]
  wire [2:0] entries_2_io_mem_grant_bits_opcode; // @[MissQueue.scala 857:50]
  wire [1:0] entries_2_io_mem_grant_bits_param; // @[MissQueue.scala 857:50]
  wire [2:0] entries_2_io_mem_grant_bits_size; // @[MissQueue.scala 857:50]
  wire [8:0] entries_2_io_mem_grant_bits_sink; // @[MissQueue.scala 857:50]
  wire  entries_2_io_mem_grant_bits_denied; // @[MissQueue.scala 857:50]
  wire [255:0] entries_2_io_mem_grant_bits_data; // @[MissQueue.scala 857:50]
  wire  entries_2_io_mem_grant_bits_corrupt; // @[MissQueue.scala 857:50]
  wire  entries_2_io_mem_finish_ready; // @[MissQueue.scala 857:50]
  wire  entries_2_io_mem_finish_valid; // @[MissQueue.scala 857:50]
  wire [8:0] entries_2_io_mem_finish_bits_sink; // @[MissQueue.scala 857:50]
  wire  entries_2_io_refill_pipe_req_ready; // @[MissQueue.scala 857:50]
  wire  entries_2_io_refill_pipe_req_valid; // @[MissQueue.scala 857:50]
  wire [3:0] entries_2_io_refill_pipe_req_bits_source; // @[MissQueue.scala 857:50]
  wire [35:0] entries_2_io_refill_pipe_req_bits_addr; // @[MissQueue.scala 857:50]
  wire [7:0] entries_2_io_refill_pipe_req_bits_way_en; // @[MissQueue.scala 857:50]
  wire [1:0] entries_2_io_refill_pipe_req_bits_alias; // @[MissQueue.scala 857:50]
  wire [1:0] entries_2_io_refill_pipe_req_bits_miss_id; // @[MissQueue.scala 857:50]
  wire [3:0] entries_2_io_refill_pipe_req_bits_id; // @[MissQueue.scala 857:50]
  wire  entries_2_io_refill_pipe_req_bits_error; // @[MissQueue.scala 857:50]
  wire [7:0] entries_2_io_refill_pipe_req_bits_wmask; // @[MissQueue.scala 857:50]
  wire [63:0] entries_2_io_refill_pipe_req_bits_data_0; // @[MissQueue.scala 857:50]
  wire [63:0] entries_2_io_refill_pipe_req_bits_data_1; // @[MissQueue.scala 857:50]
  wire [63:0] entries_2_io_refill_pipe_req_bits_data_2; // @[MissQueue.scala 857:50]
  wire [63:0] entries_2_io_refill_pipe_req_bits_data_3; // @[MissQueue.scala 857:50]
  wire [63:0] entries_2_io_refill_pipe_req_bits_data_4; // @[MissQueue.scala 857:50]
  wire [63:0] entries_2_io_refill_pipe_req_bits_data_5; // @[MissQueue.scala 857:50]
  wire [63:0] entries_2_io_refill_pipe_req_bits_data_6; // @[MissQueue.scala 857:50]
  wire [63:0] entries_2_io_refill_pipe_req_bits_data_7; // @[MissQueue.scala 857:50]
  wire [1:0] entries_2_io_refill_pipe_req_bits_meta_coh_state; // @[MissQueue.scala 857:50]
  wire  entries_2_io_refill_pipe_resp; // @[MissQueue.scala 857:50]
  wire  entries_2_io_replace_pipe_req_ready; // @[MissQueue.scala 857:50]
  wire  entries_2_io_replace_pipe_req_valid; // @[MissQueue.scala 857:50]
  wire [1:0] entries_2_io_replace_pipe_req_bits_miss_id; // @[MissQueue.scala 857:50]
  wire [38:0] entries_2_io_replace_pipe_req_bits_vaddr; // @[MissQueue.scala 857:50]
  wire [35:0] entries_2_io_replace_pipe_req_bits_addr; // @[MissQueue.scala 857:50]
  wire [7:0] entries_2_io_replace_pipe_req_bits_replace_way_en; // @[MissQueue.scala 857:50]
  wire  entries_2_io_replace_pipe_resp; // @[MissQueue.scala 857:50]
  wire  entries_2_io_main_pipe_req_ready; // @[MissQueue.scala 857:50]
  wire  entries_2_io_main_pipe_req_valid; // @[MissQueue.scala 857:50]
  wire [1:0] entries_2_io_main_pipe_req_bits_miss_id; // @[MissQueue.scala 857:50]
  wire [1:0] entries_2_io_main_pipe_req_bits_miss_param; // @[MissQueue.scala 857:50]
  wire [7:0] entries_2_io_main_pipe_req_bits_miss_way_en; // @[MissQueue.scala 857:50]
  wire [3:0] entries_2_io_main_pipe_req_bits_source; // @[MissQueue.scala 857:50]
  wire [4:0] entries_2_io_main_pipe_req_bits_cmd; // @[MissQueue.scala 857:50]
  wire [38:0] entries_2_io_main_pipe_req_bits_vaddr; // @[MissQueue.scala 857:50]
  wire [35:0] entries_2_io_main_pipe_req_bits_addr; // @[MissQueue.scala 857:50]
  wire [511:0] entries_2_io_main_pipe_req_bits_store_data; // @[MissQueue.scala 857:50]
  wire [2:0] entries_2_io_main_pipe_req_bits_word_idx; // @[MissQueue.scala 857:50]
  wire [63:0] entries_2_io_main_pipe_req_bits_amo_data; // @[MissQueue.scala 857:50]
  wire [7:0] entries_2_io_main_pipe_req_bits_amo_mask; // @[MissQueue.scala 857:50]
  wire  entries_2_io_main_pipe_req_bits_error; // @[MissQueue.scala 857:50]
  wire [3:0] entries_2_io_main_pipe_req_bits_id; // @[MissQueue.scala 857:50]
  wire  entries_2_io_main_pipe_resp; // @[MissQueue.scala 857:50]
  wire  entries_2_io_block_addr_valid; // @[MissQueue.scala 857:50]
  wire [35:0] entries_2_io_block_addr_bits; // @[MissQueue.scala 857:50]
  wire  entries_2_io_req_handled_by_this_entry; // @[MissQueue.scala 857:50]
  wire  entries_2_io_forwardInfo_inflight; // @[MissQueue.scala 857:50]
  wire [35:0] entries_2_io_forwardInfo_paddr; // @[MissQueue.scala 857:50]
  wire [63:0] entries_2_io_forwardInfo_raw_data_0; // @[MissQueue.scala 857:50]
  wire [63:0] entries_2_io_forwardInfo_raw_data_1; // @[MissQueue.scala 857:50]
  wire [63:0] entries_2_io_forwardInfo_raw_data_2; // @[MissQueue.scala 857:50]
  wire [63:0] entries_2_io_forwardInfo_raw_data_3; // @[MissQueue.scala 857:50]
  wire [63:0] entries_2_io_forwardInfo_raw_data_4; // @[MissQueue.scala 857:50]
  wire [63:0] entries_2_io_forwardInfo_raw_data_5; // @[MissQueue.scala 857:50]
  wire [63:0] entries_2_io_forwardInfo_raw_data_6; // @[MissQueue.scala 857:50]
  wire [63:0] entries_2_io_forwardInfo_raw_data_7; // @[MissQueue.scala 857:50]
  wire  entries_2_io_forwardInfo_firstbeat_valid; // @[MissQueue.scala 857:50]
  wire  entries_2_io_forwardInfo_lastbeat_valid; // @[MissQueue.scala 857:50]
  wire  entries_2_io_l2_pf_store_only; // @[MissQueue.scala 857:50]
  wire  entries_2_io_acquire_fired_by_pipe_reg; // @[MissQueue.scala 857:50]
  wire  entries_2_io_memSetPattenDetected; // @[MissQueue.scala 857:50]
  wire [38:0] entries_2_io_rob_head_query_vaddr; // @[MissQueue.scala 857:50]
  wire  entries_2_io_rob_head_query_query_valid; // @[MissQueue.scala 857:50]
  wire  entries_2_io_rob_head_query_resp; // @[MissQueue.scala 857:50]
  wire  entries_2_io_prefetch_info_late_prefetch; // @[MissQueue.scala 857:50]
  wire  entries_3_clock; // @[MissQueue.scala 857:50]
  wire  entries_3_reset; // @[MissQueue.scala 857:50]
  wire [1:0] entries_3_io_id; // @[MissQueue.scala 857:50]
  wire  entries_3_io_req_valid; // @[MissQueue.scala 857:50]
  wire [3:0] entries_3_io_req_bits_source; // @[MissQueue.scala 857:50]
  wire [35:0] entries_3_io_req_bits_addr; // @[MissQueue.scala 857:50]
  wire [38:0] entries_3_io_req_bits_vaddr; // @[MissQueue.scala 857:50]
  wire [7:0] entries_3_io_req_bits_way_en; // @[MissQueue.scala 857:50]
  wire  entries_3_io_req_bits_cancel; // @[MissQueue.scala 857:50]
  wire [3:0] entries_3_io_miss_req_pipe_reg_req_source; // @[MissQueue.scala 857:50]
  wire [4:0] entries_3_io_miss_req_pipe_reg_req_cmd; // @[MissQueue.scala 857:50]
  wire [35:0] entries_3_io_miss_req_pipe_reg_req_addr; // @[MissQueue.scala 857:50]
  wire [38:0] entries_3_io_miss_req_pipe_reg_req_vaddr; // @[MissQueue.scala 857:50]
  wire [7:0] entries_3_io_miss_req_pipe_reg_req_way_en; // @[MissQueue.scala 857:50]
  wire [2:0] entries_3_io_miss_req_pipe_reg_req_word_idx; // @[MissQueue.scala 857:50]
  wire [63:0] entries_3_io_miss_req_pipe_reg_req_amo_data; // @[MissQueue.scala 857:50]
  wire [7:0] entries_3_io_miss_req_pipe_reg_req_amo_mask; // @[MissQueue.scala 857:50]
  wire [1:0] entries_3_io_miss_req_pipe_reg_req_req_coh_state; // @[MissQueue.scala 857:50]
  wire [1:0] entries_3_io_miss_req_pipe_reg_req_replace_coh_state; // @[MissQueue.scala 857:50]
  wire [23:0] entries_3_io_miss_req_pipe_reg_req_replace_tag; // @[MissQueue.scala 857:50]
  wire [3:0] entries_3_io_miss_req_pipe_reg_req_id; // @[MissQueue.scala 857:50]
  wire [511:0] entries_3_io_miss_req_pipe_reg_req_store_data; // @[MissQueue.scala 857:50]
  wire [63:0] entries_3_io_miss_req_pipe_reg_req_store_mask; // @[MissQueue.scala 857:50]
  wire  entries_3_io_miss_req_pipe_reg_merge; // @[MissQueue.scala 857:50]
  wire  entries_3_io_miss_req_pipe_reg_alloc; // @[MissQueue.scala 857:50]
  wire  entries_3_io_primary_valid; // @[MissQueue.scala 857:50]
  wire  entries_3_io_primary_ready; // @[MissQueue.scala 857:50]
  wire  entries_3_io_secondary_ready; // @[MissQueue.scala 857:50]
  wire  entries_3_io_secondary_reject; // @[MissQueue.scala 857:50]
  wire [7:0] entries_3_io_repl_way_en; // @[MissQueue.scala 857:50]
  wire  entries_3_io_mem_acquire_ready; // @[MissQueue.scala 857:50]
  wire  entries_3_io_mem_acquire_valid; // @[MissQueue.scala 857:50]
  wire [2:0] entries_3_io_mem_acquire_bits_param; // @[MissQueue.scala 857:50]
  wire [3:0] entries_3_io_mem_acquire_bits_source; // @[MissQueue.scala 857:50]
  wire [35:0] entries_3_io_mem_acquire_bits_address; // @[MissQueue.scala 857:50]
  wire [32:0] entries_3_io_mem_acquire_bits_user_vaddr; // @[MissQueue.scala 857:50]
  wire [3:0] entries_3_io_mem_acquire_bits_user_reqSource; // @[MissQueue.scala 857:50]
  wire  entries_3_io_mem_acquire_bits_user_needHint; // @[MissQueue.scala 857:50]
  wire  entries_3_io_mem_grant_ready; // @[MissQueue.scala 857:50]
  wire  entries_3_io_mem_grant_valid; // @[MissQueue.scala 857:50]
  wire [2:0] entries_3_io_mem_grant_bits_opcode; // @[MissQueue.scala 857:50]
  wire [1:0] entries_3_io_mem_grant_bits_param; // @[MissQueue.scala 857:50]
  wire [2:0] entries_3_io_mem_grant_bits_size; // @[MissQueue.scala 857:50]
  wire [8:0] entries_3_io_mem_grant_bits_sink; // @[MissQueue.scala 857:50]
  wire  entries_3_io_mem_grant_bits_denied; // @[MissQueue.scala 857:50]
  wire [255:0] entries_3_io_mem_grant_bits_data; // @[MissQueue.scala 857:50]
  wire  entries_3_io_mem_grant_bits_corrupt; // @[MissQueue.scala 857:50]
  wire  entries_3_io_mem_finish_ready; // @[MissQueue.scala 857:50]
  wire  entries_3_io_mem_finish_valid; // @[MissQueue.scala 857:50]
  wire [8:0] entries_3_io_mem_finish_bits_sink; // @[MissQueue.scala 857:50]
  wire  entries_3_io_refill_pipe_req_ready; // @[MissQueue.scala 857:50]
  wire  entries_3_io_refill_pipe_req_valid; // @[MissQueue.scala 857:50]
  wire [3:0] entries_3_io_refill_pipe_req_bits_source; // @[MissQueue.scala 857:50]
  wire [35:0] entries_3_io_refill_pipe_req_bits_addr; // @[MissQueue.scala 857:50]
  wire [7:0] entries_3_io_refill_pipe_req_bits_way_en; // @[MissQueue.scala 857:50]
  wire [1:0] entries_3_io_refill_pipe_req_bits_alias; // @[MissQueue.scala 857:50]
  wire [1:0] entries_3_io_refill_pipe_req_bits_miss_id; // @[MissQueue.scala 857:50]
  wire [3:0] entries_3_io_refill_pipe_req_bits_id; // @[MissQueue.scala 857:50]
  wire  entries_3_io_refill_pipe_req_bits_error; // @[MissQueue.scala 857:50]
  wire [7:0] entries_3_io_refill_pipe_req_bits_wmask; // @[MissQueue.scala 857:50]
  wire [63:0] entries_3_io_refill_pipe_req_bits_data_0; // @[MissQueue.scala 857:50]
  wire [63:0] entries_3_io_refill_pipe_req_bits_data_1; // @[MissQueue.scala 857:50]
  wire [63:0] entries_3_io_refill_pipe_req_bits_data_2; // @[MissQueue.scala 857:50]
  wire [63:0] entries_3_io_refill_pipe_req_bits_data_3; // @[MissQueue.scala 857:50]
  wire [63:0] entries_3_io_refill_pipe_req_bits_data_4; // @[MissQueue.scala 857:50]
  wire [63:0] entries_3_io_refill_pipe_req_bits_data_5; // @[MissQueue.scala 857:50]
  wire [63:0] entries_3_io_refill_pipe_req_bits_data_6; // @[MissQueue.scala 857:50]
  wire [63:0] entries_3_io_refill_pipe_req_bits_data_7; // @[MissQueue.scala 857:50]
  wire [1:0] entries_3_io_refill_pipe_req_bits_meta_coh_state; // @[MissQueue.scala 857:50]
  wire  entries_3_io_refill_pipe_resp; // @[MissQueue.scala 857:50]
  wire  entries_3_io_replace_pipe_req_ready; // @[MissQueue.scala 857:50]
  wire  entries_3_io_replace_pipe_req_valid; // @[MissQueue.scala 857:50]
  wire [1:0] entries_3_io_replace_pipe_req_bits_miss_id; // @[MissQueue.scala 857:50]
  wire [38:0] entries_3_io_replace_pipe_req_bits_vaddr; // @[MissQueue.scala 857:50]
  wire [35:0] entries_3_io_replace_pipe_req_bits_addr; // @[MissQueue.scala 857:50]
  wire [7:0] entries_3_io_replace_pipe_req_bits_replace_way_en; // @[MissQueue.scala 857:50]
  wire  entries_3_io_replace_pipe_resp; // @[MissQueue.scala 857:50]
  wire  entries_3_io_main_pipe_req_ready; // @[MissQueue.scala 857:50]
  wire  entries_3_io_main_pipe_req_valid; // @[MissQueue.scala 857:50]
  wire [1:0] entries_3_io_main_pipe_req_bits_miss_id; // @[MissQueue.scala 857:50]
  wire [1:0] entries_3_io_main_pipe_req_bits_miss_param; // @[MissQueue.scala 857:50]
  wire [7:0] entries_3_io_main_pipe_req_bits_miss_way_en; // @[MissQueue.scala 857:50]
  wire [3:0] entries_3_io_main_pipe_req_bits_source; // @[MissQueue.scala 857:50]
  wire [4:0] entries_3_io_main_pipe_req_bits_cmd; // @[MissQueue.scala 857:50]
  wire [38:0] entries_3_io_main_pipe_req_bits_vaddr; // @[MissQueue.scala 857:50]
  wire [35:0] entries_3_io_main_pipe_req_bits_addr; // @[MissQueue.scala 857:50]
  wire [511:0] entries_3_io_main_pipe_req_bits_store_data; // @[MissQueue.scala 857:50]
  wire [2:0] entries_3_io_main_pipe_req_bits_word_idx; // @[MissQueue.scala 857:50]
  wire [63:0] entries_3_io_main_pipe_req_bits_amo_data; // @[MissQueue.scala 857:50]
  wire [7:0] entries_3_io_main_pipe_req_bits_amo_mask; // @[MissQueue.scala 857:50]
  wire  entries_3_io_main_pipe_req_bits_error; // @[MissQueue.scala 857:50]
  wire [3:0] entries_3_io_main_pipe_req_bits_id; // @[MissQueue.scala 857:50]
  wire  entries_3_io_main_pipe_resp; // @[MissQueue.scala 857:50]
  wire  entries_3_io_block_addr_valid; // @[MissQueue.scala 857:50]
  wire [35:0] entries_3_io_block_addr_bits; // @[MissQueue.scala 857:50]
  wire  entries_3_io_req_handled_by_this_entry; // @[MissQueue.scala 857:50]
  wire  entries_3_io_forwardInfo_inflight; // @[MissQueue.scala 857:50]
  wire [35:0] entries_3_io_forwardInfo_paddr; // @[MissQueue.scala 857:50]
  wire [63:0] entries_3_io_forwardInfo_raw_data_0; // @[MissQueue.scala 857:50]
  wire [63:0] entries_3_io_forwardInfo_raw_data_1; // @[MissQueue.scala 857:50]
  wire [63:0] entries_3_io_forwardInfo_raw_data_2; // @[MissQueue.scala 857:50]
  wire [63:0] entries_3_io_forwardInfo_raw_data_3; // @[MissQueue.scala 857:50]
  wire [63:0] entries_3_io_forwardInfo_raw_data_4; // @[MissQueue.scala 857:50]
  wire [63:0] entries_3_io_forwardInfo_raw_data_5; // @[MissQueue.scala 857:50]
  wire [63:0] entries_3_io_forwardInfo_raw_data_6; // @[MissQueue.scala 857:50]
  wire [63:0] entries_3_io_forwardInfo_raw_data_7; // @[MissQueue.scala 857:50]
  wire  entries_3_io_forwardInfo_firstbeat_valid; // @[MissQueue.scala 857:50]
  wire  entries_3_io_forwardInfo_lastbeat_valid; // @[MissQueue.scala 857:50]
  wire  entries_3_io_l2_pf_store_only; // @[MissQueue.scala 857:50]
  wire  entries_3_io_acquire_fired_by_pipe_reg; // @[MissQueue.scala 857:50]
  wire  entries_3_io_memSetPattenDetected; // @[MissQueue.scala 857:50]
  wire [38:0] entries_3_io_rob_head_query_vaddr; // @[MissQueue.scala 857:50]
  wire  entries_3_io_rob_head_query_query_valid; // @[MissQueue.scala 857:50]
  wire  entries_3_io_rob_head_query_resp; // @[MissQueue.scala 857:50]
  wire  entries_3_io_prefetch_info_late_prefetch; // @[MissQueue.scala 857:50]
  wire  refill_pipe_req_arb_io_in_0_ready; // @[DCacheWrapper.scala 250:21]
  wire  refill_pipe_req_arb_io_in_0_valid; // @[DCacheWrapper.scala 250:21]
  wire [3:0] refill_pipe_req_arb_io_in_0_bits_source; // @[DCacheWrapper.scala 250:21]
  wire [35:0] refill_pipe_req_arb_io_in_0_bits_addr; // @[DCacheWrapper.scala 250:21]
  wire [7:0] refill_pipe_req_arb_io_in_0_bits_way_en; // @[DCacheWrapper.scala 250:21]
  wire [1:0] refill_pipe_req_arb_io_in_0_bits_alias; // @[DCacheWrapper.scala 250:21]
  wire [1:0] refill_pipe_req_arb_io_in_0_bits_miss_id; // @[DCacheWrapper.scala 250:21]
  wire [3:0] refill_pipe_req_arb_io_in_0_bits_id; // @[DCacheWrapper.scala 250:21]
  wire  refill_pipe_req_arb_io_in_0_bits_error; // @[DCacheWrapper.scala 250:21]
  wire [7:0] refill_pipe_req_arb_io_in_0_bits_wmask; // @[DCacheWrapper.scala 250:21]
  wire [63:0] refill_pipe_req_arb_io_in_0_bits_data_0; // @[DCacheWrapper.scala 250:21]
  wire [63:0] refill_pipe_req_arb_io_in_0_bits_data_1; // @[DCacheWrapper.scala 250:21]
  wire [63:0] refill_pipe_req_arb_io_in_0_bits_data_2; // @[DCacheWrapper.scala 250:21]
  wire [63:0] refill_pipe_req_arb_io_in_0_bits_data_3; // @[DCacheWrapper.scala 250:21]
  wire [63:0] refill_pipe_req_arb_io_in_0_bits_data_4; // @[DCacheWrapper.scala 250:21]
  wire [63:0] refill_pipe_req_arb_io_in_0_bits_data_5; // @[DCacheWrapper.scala 250:21]
  wire [63:0] refill_pipe_req_arb_io_in_0_bits_data_6; // @[DCacheWrapper.scala 250:21]
  wire [63:0] refill_pipe_req_arb_io_in_0_bits_data_7; // @[DCacheWrapper.scala 250:21]
  wire [1:0] refill_pipe_req_arb_io_in_0_bits_meta_coh_state; // @[DCacheWrapper.scala 250:21]
  wire  refill_pipe_req_arb_io_in_1_ready; // @[DCacheWrapper.scala 250:21]
  wire  refill_pipe_req_arb_io_in_1_valid; // @[DCacheWrapper.scala 250:21]
  wire [3:0] refill_pipe_req_arb_io_in_1_bits_source; // @[DCacheWrapper.scala 250:21]
  wire [35:0] refill_pipe_req_arb_io_in_1_bits_addr; // @[DCacheWrapper.scala 250:21]
  wire [7:0] refill_pipe_req_arb_io_in_1_bits_way_en; // @[DCacheWrapper.scala 250:21]
  wire [1:0] refill_pipe_req_arb_io_in_1_bits_alias; // @[DCacheWrapper.scala 250:21]
  wire [1:0] refill_pipe_req_arb_io_in_1_bits_miss_id; // @[DCacheWrapper.scala 250:21]
  wire [3:0] refill_pipe_req_arb_io_in_1_bits_id; // @[DCacheWrapper.scala 250:21]
  wire  refill_pipe_req_arb_io_in_1_bits_error; // @[DCacheWrapper.scala 250:21]
  wire [7:0] refill_pipe_req_arb_io_in_1_bits_wmask; // @[DCacheWrapper.scala 250:21]
  wire [63:0] refill_pipe_req_arb_io_in_1_bits_data_0; // @[DCacheWrapper.scala 250:21]
  wire [63:0] refill_pipe_req_arb_io_in_1_bits_data_1; // @[DCacheWrapper.scala 250:21]
  wire [63:0] refill_pipe_req_arb_io_in_1_bits_data_2; // @[DCacheWrapper.scala 250:21]
  wire [63:0] refill_pipe_req_arb_io_in_1_bits_data_3; // @[DCacheWrapper.scala 250:21]
  wire [63:0] refill_pipe_req_arb_io_in_1_bits_data_4; // @[DCacheWrapper.scala 250:21]
  wire [63:0] refill_pipe_req_arb_io_in_1_bits_data_5; // @[DCacheWrapper.scala 250:21]
  wire [63:0] refill_pipe_req_arb_io_in_1_bits_data_6; // @[DCacheWrapper.scala 250:21]
  wire [63:0] refill_pipe_req_arb_io_in_1_bits_data_7; // @[DCacheWrapper.scala 250:21]
  wire [1:0] refill_pipe_req_arb_io_in_1_bits_meta_coh_state; // @[DCacheWrapper.scala 250:21]
  wire  refill_pipe_req_arb_io_in_2_ready; // @[DCacheWrapper.scala 250:21]
  wire  refill_pipe_req_arb_io_in_2_valid; // @[DCacheWrapper.scala 250:21]
  wire [3:0] refill_pipe_req_arb_io_in_2_bits_source; // @[DCacheWrapper.scala 250:21]
  wire [35:0] refill_pipe_req_arb_io_in_2_bits_addr; // @[DCacheWrapper.scala 250:21]
  wire [7:0] refill_pipe_req_arb_io_in_2_bits_way_en; // @[DCacheWrapper.scala 250:21]
  wire [1:0] refill_pipe_req_arb_io_in_2_bits_alias; // @[DCacheWrapper.scala 250:21]
  wire [1:0] refill_pipe_req_arb_io_in_2_bits_miss_id; // @[DCacheWrapper.scala 250:21]
  wire [3:0] refill_pipe_req_arb_io_in_2_bits_id; // @[DCacheWrapper.scala 250:21]
  wire  refill_pipe_req_arb_io_in_2_bits_error; // @[DCacheWrapper.scala 250:21]
  wire [7:0] refill_pipe_req_arb_io_in_2_bits_wmask; // @[DCacheWrapper.scala 250:21]
  wire [63:0] refill_pipe_req_arb_io_in_2_bits_data_0; // @[DCacheWrapper.scala 250:21]
  wire [63:0] refill_pipe_req_arb_io_in_2_bits_data_1; // @[DCacheWrapper.scala 250:21]
  wire [63:0] refill_pipe_req_arb_io_in_2_bits_data_2; // @[DCacheWrapper.scala 250:21]
  wire [63:0] refill_pipe_req_arb_io_in_2_bits_data_3; // @[DCacheWrapper.scala 250:21]
  wire [63:0] refill_pipe_req_arb_io_in_2_bits_data_4; // @[DCacheWrapper.scala 250:21]
  wire [63:0] refill_pipe_req_arb_io_in_2_bits_data_5; // @[DCacheWrapper.scala 250:21]
  wire [63:0] refill_pipe_req_arb_io_in_2_bits_data_6; // @[DCacheWrapper.scala 250:21]
  wire [63:0] refill_pipe_req_arb_io_in_2_bits_data_7; // @[DCacheWrapper.scala 250:21]
  wire [1:0] refill_pipe_req_arb_io_in_2_bits_meta_coh_state; // @[DCacheWrapper.scala 250:21]
  wire  refill_pipe_req_arb_io_in_3_ready; // @[DCacheWrapper.scala 250:21]
  wire  refill_pipe_req_arb_io_in_3_valid; // @[DCacheWrapper.scala 250:21]
  wire [3:0] refill_pipe_req_arb_io_in_3_bits_source; // @[DCacheWrapper.scala 250:21]
  wire [35:0] refill_pipe_req_arb_io_in_3_bits_addr; // @[DCacheWrapper.scala 250:21]
  wire [7:0] refill_pipe_req_arb_io_in_3_bits_way_en; // @[DCacheWrapper.scala 250:21]
  wire [1:0] refill_pipe_req_arb_io_in_3_bits_alias; // @[DCacheWrapper.scala 250:21]
  wire [1:0] refill_pipe_req_arb_io_in_3_bits_miss_id; // @[DCacheWrapper.scala 250:21]
  wire [3:0] refill_pipe_req_arb_io_in_3_bits_id; // @[DCacheWrapper.scala 250:21]
  wire  refill_pipe_req_arb_io_in_3_bits_error; // @[DCacheWrapper.scala 250:21]
  wire [7:0] refill_pipe_req_arb_io_in_3_bits_wmask; // @[DCacheWrapper.scala 250:21]
  wire [63:0] refill_pipe_req_arb_io_in_3_bits_data_0; // @[DCacheWrapper.scala 250:21]
  wire [63:0] refill_pipe_req_arb_io_in_3_bits_data_1; // @[DCacheWrapper.scala 250:21]
  wire [63:0] refill_pipe_req_arb_io_in_3_bits_data_2; // @[DCacheWrapper.scala 250:21]
  wire [63:0] refill_pipe_req_arb_io_in_3_bits_data_3; // @[DCacheWrapper.scala 250:21]
  wire [63:0] refill_pipe_req_arb_io_in_3_bits_data_4; // @[DCacheWrapper.scala 250:21]
  wire [63:0] refill_pipe_req_arb_io_in_3_bits_data_5; // @[DCacheWrapper.scala 250:21]
  wire [63:0] refill_pipe_req_arb_io_in_3_bits_data_6; // @[DCacheWrapper.scala 250:21]
  wire [63:0] refill_pipe_req_arb_io_in_3_bits_data_7; // @[DCacheWrapper.scala 250:21]
  wire [1:0] refill_pipe_req_arb_io_in_3_bits_meta_coh_state; // @[DCacheWrapper.scala 250:21]
  wire  refill_pipe_req_arb_io_out_ready; // @[DCacheWrapper.scala 250:21]
  wire  refill_pipe_req_arb_io_out_valid; // @[DCacheWrapper.scala 250:21]
  wire [3:0] refill_pipe_req_arb_io_out_bits_source; // @[DCacheWrapper.scala 250:21]
  wire [35:0] refill_pipe_req_arb_io_out_bits_addr; // @[DCacheWrapper.scala 250:21]
  wire [7:0] refill_pipe_req_arb_io_out_bits_way_en; // @[DCacheWrapper.scala 250:21]
  wire [1:0] refill_pipe_req_arb_io_out_bits_alias; // @[DCacheWrapper.scala 250:21]
  wire [1:0] refill_pipe_req_arb_io_out_bits_miss_id; // @[DCacheWrapper.scala 250:21]
  wire [3:0] refill_pipe_req_arb_io_out_bits_id; // @[DCacheWrapper.scala 250:21]
  wire  refill_pipe_req_arb_io_out_bits_error; // @[DCacheWrapper.scala 250:21]
  wire [7:0] refill_pipe_req_arb_io_out_bits_wmask; // @[DCacheWrapper.scala 250:21]
  wire [63:0] refill_pipe_req_arb_io_out_bits_data_0; // @[DCacheWrapper.scala 250:21]
  wire [63:0] refill_pipe_req_arb_io_out_bits_data_1; // @[DCacheWrapper.scala 250:21]
  wire [63:0] refill_pipe_req_arb_io_out_bits_data_2; // @[DCacheWrapper.scala 250:21]
  wire [63:0] refill_pipe_req_arb_io_out_bits_data_3; // @[DCacheWrapper.scala 250:21]
  wire [63:0] refill_pipe_req_arb_io_out_bits_data_4; // @[DCacheWrapper.scala 250:21]
  wire [63:0] refill_pipe_req_arb_io_out_bits_data_5; // @[DCacheWrapper.scala 250:21]
  wire [63:0] refill_pipe_req_arb_io_out_bits_data_6; // @[DCacheWrapper.scala 250:21]
  wire [63:0] refill_pipe_req_arb_io_out_bits_data_7; // @[DCacheWrapper.scala 250:21]
  wire [1:0] refill_pipe_req_arb_io_out_bits_meta_coh_state; // @[DCacheWrapper.scala 250:21]
  wire  pipelineReg_clock; // @[MemCommon.scala 400:29]
  wire  pipelineReg_reset; // @[MemCommon.scala 400:29]
  wire  pipelineReg_io_in_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_io_in_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_io_in_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_io_in_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_io_in_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_io_out_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_io_out_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_io_out_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_io_out_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_io_out_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_1_clock; // @[MemCommon.scala 400:29]
  wire  pipelineReg_1_reset; // @[MemCommon.scala 400:29]
  wire  pipelineReg_1_io_in_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_1_io_in_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_1_io_in_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_1_io_in_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_1_io_in_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_1_io_out_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_1_io_out_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_1_io_out_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_1_io_out_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_1_io_out_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_2_clock; // @[MemCommon.scala 400:29]
  wire  pipelineReg_2_reset; // @[MemCommon.scala 400:29]
  wire  pipelineReg_2_io_in_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_2_io_in_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_2_io_in_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_2_io_in_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_2_io_in_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_2_io_out_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_2_io_out_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_2_io_out_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_2_io_out_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_2_io_out_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_3_clock; // @[MemCommon.scala 400:29]
  wire  pipelineReg_3_reset; // @[MemCommon.scala 400:29]
  wire  pipelineReg_3_io_in_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_3_io_in_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_3_io_in_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_3_io_in_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_3_io_in_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_3_io_out_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_3_io_out_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_3_io_out_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_3_io_out_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_3_io_out_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_4_clock; // @[MemCommon.scala 400:29]
  wire  pipelineReg_4_reset; // @[MemCommon.scala 400:29]
  wire  pipelineReg_4_io_in_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_4_io_in_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_4_io_in_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_4_io_in_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_4_io_in_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_4_io_out_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_4_io_out_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_4_io_out_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_4_io_out_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_4_io_out_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_5_clock; // @[MemCommon.scala 400:29]
  wire  pipelineReg_5_reset; // @[MemCommon.scala 400:29]
  wire  pipelineReg_5_io_in_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_5_io_in_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_5_io_in_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_5_io_in_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_5_io_in_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_5_io_out_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_5_io_out_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_5_io_out_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_5_io_out_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_5_io_out_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_6_clock; // @[MemCommon.scala 400:29]
  wire  pipelineReg_6_reset; // @[MemCommon.scala 400:29]
  wire  pipelineReg_6_io_in_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_6_io_in_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_6_io_in_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_6_io_in_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_6_io_in_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_6_io_out_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_6_io_out_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_6_io_out_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_6_io_out_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_6_io_out_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_7_clock; // @[MemCommon.scala 400:29]
  wire  pipelineReg_7_reset; // @[MemCommon.scala 400:29]
  wire  pipelineReg_7_io_in_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_7_io_in_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_7_io_in_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_7_io_in_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_7_io_in_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_7_io_out_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_7_io_out_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_7_io_out_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_7_io_out_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_7_io_out_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_8_clock; // @[MemCommon.scala 400:29]
  wire  pipelineReg_8_reset; // @[MemCommon.scala 400:29]
  wire  pipelineReg_8_io_in_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_8_io_in_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_8_io_in_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_8_io_in_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_8_io_in_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_8_io_out_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_8_io_out_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_8_io_out_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_8_io_out_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_8_io_out_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_9_clock; // @[MemCommon.scala 400:29]
  wire  pipelineReg_9_reset; // @[MemCommon.scala 400:29]
  wire  pipelineReg_9_io_in_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_9_io_in_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_9_io_in_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_9_io_in_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_9_io_in_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_9_io_out_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_9_io_out_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_9_io_out_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_9_io_out_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_9_io_out_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_10_clock; // @[MemCommon.scala 400:29]
  wire  pipelineReg_10_reset; // @[MemCommon.scala 400:29]
  wire  pipelineReg_10_io_in_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_10_io_in_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_10_io_in_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_10_io_in_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_10_io_in_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_10_io_out_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_10_io_out_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_10_io_out_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_10_io_out_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_10_io_out_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_11_clock; // @[MemCommon.scala 400:29]
  wire  pipelineReg_11_reset; // @[MemCommon.scala 400:29]
  wire  pipelineReg_11_io_in_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_11_io_in_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_11_io_in_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_11_io_in_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_11_io_in_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_11_io_out_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_11_io_out_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_11_io_out_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_11_io_out_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_11_io_out_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_12_clock; // @[MemCommon.scala 400:29]
  wire  pipelineReg_12_reset; // @[MemCommon.scala 400:29]
  wire  pipelineReg_12_io_in_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_12_io_in_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_12_io_in_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_12_io_in_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_12_io_in_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_12_io_out_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_12_io_out_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_12_io_out_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_12_io_out_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_12_io_out_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_13_clock; // @[MemCommon.scala 400:29]
  wire  pipelineReg_13_reset; // @[MemCommon.scala 400:29]
  wire  pipelineReg_13_io_in_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_13_io_in_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_13_io_in_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_13_io_in_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_13_io_in_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_13_io_out_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_13_io_out_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_13_io_out_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_13_io_out_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_13_io_out_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_14_clock; // @[MemCommon.scala 400:29]
  wire  pipelineReg_14_reset; // @[MemCommon.scala 400:29]
  wire  pipelineReg_14_io_in_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_14_io_in_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_14_io_in_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_14_io_in_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_14_io_in_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_14_io_out_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_14_io_out_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_14_io_out_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_14_io_out_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_14_io_out_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_15_clock; // @[MemCommon.scala 400:29]
  wire  pipelineReg_15_reset; // @[MemCommon.scala 400:29]
  wire  pipelineReg_15_io_in_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_15_io_in_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_15_io_in_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_15_io_in_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_15_io_in_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_15_io_out_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_15_io_out_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_15_io_out_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_15_io_out_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_15_io_out_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_16_clock; // @[MemCommon.scala 400:29]
  wire  pipelineReg_16_reset; // @[MemCommon.scala 400:29]
  wire  pipelineReg_16_io_in_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_16_io_in_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_16_io_in_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_16_io_in_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_16_io_in_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_16_io_out_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_16_io_out_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_16_io_out_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_16_io_out_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_16_io_out_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_17_clock; // @[MemCommon.scala 400:29]
  wire  pipelineReg_17_reset; // @[MemCommon.scala 400:29]
  wire  pipelineReg_17_io_in_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_17_io_in_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_17_io_in_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_17_io_in_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_17_io_in_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_17_io_out_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_17_io_out_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_17_io_out_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_17_io_out_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_17_io_out_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_18_clock; // @[MemCommon.scala 400:29]
  wire  pipelineReg_18_reset; // @[MemCommon.scala 400:29]
  wire  pipelineReg_18_io_in_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_18_io_in_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_18_io_in_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_18_io_in_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_18_io_in_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_18_io_out_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_18_io_out_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_18_io_out_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_18_io_out_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_18_io_out_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_19_clock; // @[MemCommon.scala 400:29]
  wire  pipelineReg_19_reset; // @[MemCommon.scala 400:29]
  wire  pipelineReg_19_io_in_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_19_io_in_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_19_io_in_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_19_io_in_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_19_io_in_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_19_io_out_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_19_io_out_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_19_io_out_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_19_io_out_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_19_io_out_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_20_clock; // @[MemCommon.scala 400:29]
  wire  pipelineReg_20_reset; // @[MemCommon.scala 400:29]
  wire  pipelineReg_20_io_in_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_20_io_in_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_20_io_in_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_20_io_in_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_20_io_in_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_20_io_out_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_20_io_out_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_20_io_out_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_20_io_out_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_20_io_out_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_21_clock; // @[MemCommon.scala 400:29]
  wire  pipelineReg_21_reset; // @[MemCommon.scala 400:29]
  wire  pipelineReg_21_io_in_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_21_io_in_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_21_io_in_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_21_io_in_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_21_io_in_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_21_io_out_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_21_io_out_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_21_io_out_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_21_io_out_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_21_io_out_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_22_clock; // @[MemCommon.scala 400:29]
  wire  pipelineReg_22_reset; // @[MemCommon.scala 400:29]
  wire  pipelineReg_22_io_in_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_22_io_in_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_22_io_in_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_22_io_in_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_22_io_in_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_22_io_out_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_22_io_out_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_22_io_out_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_22_io_out_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_22_io_out_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_23_clock; // @[MemCommon.scala 400:29]
  wire  pipelineReg_23_reset; // @[MemCommon.scala 400:29]
  wire  pipelineReg_23_io_in_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_23_io_in_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_23_io_in_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_23_io_in_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_23_io_in_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_23_io_out_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_23_io_out_valid; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_23_io_out_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_23_io_out_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_23_io_out_bits_alias; // @[MemCommon.scala 400:29]
  wire  pipelineReg_24_clock; // @[MemCommon.scala 400:29]
  wire  pipelineReg_24_reset; // @[MemCommon.scala 400:29]
  wire  pipelineReg_24_io_in_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_24_io_in_valid; // @[MemCommon.scala 400:29]
  wire [3:0] pipelineReg_24_io_in_bits_source; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_24_io_in_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_24_io_in_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_24_io_in_bits_alias; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_24_io_in_bits_miss_id; // @[MemCommon.scala 400:29]
  wire [3:0] pipelineReg_24_io_in_bits_id; // @[MemCommon.scala 400:29]
  wire  pipelineReg_24_io_in_bits_error; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_24_io_in_bits_wmask; // @[MemCommon.scala 400:29]
  wire [63:0] pipelineReg_24_io_in_bits_data_0; // @[MemCommon.scala 400:29]
  wire [63:0] pipelineReg_24_io_in_bits_data_1; // @[MemCommon.scala 400:29]
  wire [63:0] pipelineReg_24_io_in_bits_data_2; // @[MemCommon.scala 400:29]
  wire [63:0] pipelineReg_24_io_in_bits_data_3; // @[MemCommon.scala 400:29]
  wire [63:0] pipelineReg_24_io_in_bits_data_4; // @[MemCommon.scala 400:29]
  wire [63:0] pipelineReg_24_io_in_bits_data_5; // @[MemCommon.scala 400:29]
  wire [63:0] pipelineReg_24_io_in_bits_data_6; // @[MemCommon.scala 400:29]
  wire [63:0] pipelineReg_24_io_in_bits_data_7; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_24_io_in_bits_meta_coh_state; // @[MemCommon.scala 400:29]
  wire  pipelineReg_24_io_out_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_24_io_out_valid; // @[MemCommon.scala 400:29]
  wire [3:0] pipelineReg_24_io_out_bits_source; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_24_io_out_bits_addr; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_24_io_out_bits_way_en; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_24_io_out_bits_alias; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_24_io_out_bits_miss_id; // @[MemCommon.scala 400:29]
  wire [3:0] pipelineReg_24_io_out_bits_id; // @[MemCommon.scala 400:29]
  wire  pipelineReg_24_io_out_bits_error; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_24_io_out_bits_wmask; // @[MemCommon.scala 400:29]
  wire [63:0] pipelineReg_24_io_out_bits_data_0; // @[MemCommon.scala 400:29]
  wire [63:0] pipelineReg_24_io_out_bits_data_1; // @[MemCommon.scala 400:29]
  wire [63:0] pipelineReg_24_io_out_bits_data_2; // @[MemCommon.scala 400:29]
  wire [63:0] pipelineReg_24_io_out_bits_data_3; // @[MemCommon.scala 400:29]
  wire [63:0] pipelineReg_24_io_out_bits_data_4; // @[MemCommon.scala 400:29]
  wire [63:0] pipelineReg_24_io_out_bits_data_5; // @[MemCommon.scala 400:29]
  wire [63:0] pipelineReg_24_io_out_bits_data_6; // @[MemCommon.scala 400:29]
  wire [63:0] pipelineReg_24_io_out_bits_data_7; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_24_io_out_bits_meta_coh_state; // @[MemCommon.scala 400:29]
  wire  replace_pipe_req_arb_io_in_0_ready; // @[DCacheWrapper.scala 262:21]
  wire  replace_pipe_req_arb_io_in_0_valid; // @[DCacheWrapper.scala 262:21]
  wire  replace_pipe_req_arb_io_in_0_bits_miss; // @[DCacheWrapper.scala 262:21]
  wire [1:0] replace_pipe_req_arb_io_in_0_bits_miss_id; // @[DCacheWrapper.scala 262:21]
  wire [1:0] replace_pipe_req_arb_io_in_0_bits_miss_param; // @[DCacheWrapper.scala 262:21]
  wire  replace_pipe_req_arb_io_in_0_bits_miss_dirty; // @[DCacheWrapper.scala 262:21]
  wire [7:0] replace_pipe_req_arb_io_in_0_bits_miss_way_en; // @[DCacheWrapper.scala 262:21]
  wire  replace_pipe_req_arb_io_in_0_bits_probe; // @[DCacheWrapper.scala 262:21]
  wire [1:0] replace_pipe_req_arb_io_in_0_bits_probe_param; // @[DCacheWrapper.scala 262:21]
  wire  replace_pipe_req_arb_io_in_0_bits_probe_need_data; // @[DCacheWrapper.scala 262:21]
  wire [3:0] replace_pipe_req_arb_io_in_0_bits_source; // @[DCacheWrapper.scala 262:21]
  wire [4:0] replace_pipe_req_arb_io_in_0_bits_cmd; // @[DCacheWrapper.scala 262:21]
  wire [38:0] replace_pipe_req_arb_io_in_0_bits_vaddr; // @[DCacheWrapper.scala 262:21]
  wire [35:0] replace_pipe_req_arb_io_in_0_bits_addr; // @[DCacheWrapper.scala 262:21]
  wire [511:0] replace_pipe_req_arb_io_in_0_bits_store_data; // @[DCacheWrapper.scala 262:21]
  wire [63:0] replace_pipe_req_arb_io_in_0_bits_store_mask; // @[DCacheWrapper.scala 262:21]
  wire [2:0] replace_pipe_req_arb_io_in_0_bits_word_idx; // @[DCacheWrapper.scala 262:21]
  wire [63:0] replace_pipe_req_arb_io_in_0_bits_amo_data; // @[DCacheWrapper.scala 262:21]
  wire [7:0] replace_pipe_req_arb_io_in_0_bits_amo_mask; // @[DCacheWrapper.scala 262:21]
  wire  replace_pipe_req_arb_io_in_0_bits_error; // @[DCacheWrapper.scala 262:21]
  wire  replace_pipe_req_arb_io_in_0_bits_replace; // @[DCacheWrapper.scala 262:21]
  wire [7:0] replace_pipe_req_arb_io_in_0_bits_replace_way_en; // @[DCacheWrapper.scala 262:21]
  wire [3:0] replace_pipe_req_arb_io_in_0_bits_id; // @[DCacheWrapper.scala 262:21]
  wire  replace_pipe_req_arb_io_in_1_ready; // @[DCacheWrapper.scala 262:21]
  wire  replace_pipe_req_arb_io_in_1_valid; // @[DCacheWrapper.scala 262:21]
  wire  replace_pipe_req_arb_io_in_1_bits_miss; // @[DCacheWrapper.scala 262:21]
  wire [1:0] replace_pipe_req_arb_io_in_1_bits_miss_id; // @[DCacheWrapper.scala 262:21]
  wire [1:0] replace_pipe_req_arb_io_in_1_bits_miss_param; // @[DCacheWrapper.scala 262:21]
  wire  replace_pipe_req_arb_io_in_1_bits_miss_dirty; // @[DCacheWrapper.scala 262:21]
  wire [7:0] replace_pipe_req_arb_io_in_1_bits_miss_way_en; // @[DCacheWrapper.scala 262:21]
  wire  replace_pipe_req_arb_io_in_1_bits_probe; // @[DCacheWrapper.scala 262:21]
  wire [1:0] replace_pipe_req_arb_io_in_1_bits_probe_param; // @[DCacheWrapper.scala 262:21]
  wire  replace_pipe_req_arb_io_in_1_bits_probe_need_data; // @[DCacheWrapper.scala 262:21]
  wire [3:0] replace_pipe_req_arb_io_in_1_bits_source; // @[DCacheWrapper.scala 262:21]
  wire [4:0] replace_pipe_req_arb_io_in_1_bits_cmd; // @[DCacheWrapper.scala 262:21]
  wire [38:0] replace_pipe_req_arb_io_in_1_bits_vaddr; // @[DCacheWrapper.scala 262:21]
  wire [35:0] replace_pipe_req_arb_io_in_1_bits_addr; // @[DCacheWrapper.scala 262:21]
  wire [511:0] replace_pipe_req_arb_io_in_1_bits_store_data; // @[DCacheWrapper.scala 262:21]
  wire [63:0] replace_pipe_req_arb_io_in_1_bits_store_mask; // @[DCacheWrapper.scala 262:21]
  wire [2:0] replace_pipe_req_arb_io_in_1_bits_word_idx; // @[DCacheWrapper.scala 262:21]
  wire [63:0] replace_pipe_req_arb_io_in_1_bits_amo_data; // @[DCacheWrapper.scala 262:21]
  wire [7:0] replace_pipe_req_arb_io_in_1_bits_amo_mask; // @[DCacheWrapper.scala 262:21]
  wire  replace_pipe_req_arb_io_in_1_bits_error; // @[DCacheWrapper.scala 262:21]
  wire  replace_pipe_req_arb_io_in_1_bits_replace; // @[DCacheWrapper.scala 262:21]
  wire [7:0] replace_pipe_req_arb_io_in_1_bits_replace_way_en; // @[DCacheWrapper.scala 262:21]
  wire [3:0] replace_pipe_req_arb_io_in_1_bits_id; // @[DCacheWrapper.scala 262:21]
  wire  replace_pipe_req_arb_io_in_2_ready; // @[DCacheWrapper.scala 262:21]
  wire  replace_pipe_req_arb_io_in_2_valid; // @[DCacheWrapper.scala 262:21]
  wire [1:0] replace_pipe_req_arb_io_in_2_bits_miss_id; // @[DCacheWrapper.scala 262:21]
  wire  replace_pipe_req_arb_io_in_2_bits_probe; // @[DCacheWrapper.scala 262:21]
  wire [1:0] replace_pipe_req_arb_io_in_2_bits_probe_param; // @[DCacheWrapper.scala 262:21]
  wire  replace_pipe_req_arb_io_in_2_bits_probe_need_data; // @[DCacheWrapper.scala 262:21]
  wire [3:0] replace_pipe_req_arb_io_in_2_bits_source; // @[DCacheWrapper.scala 262:21]
  wire [4:0] replace_pipe_req_arb_io_in_2_bits_cmd; // @[DCacheWrapper.scala 262:21]
  wire [38:0] replace_pipe_req_arb_io_in_2_bits_vaddr; // @[DCacheWrapper.scala 262:21]
  wire [35:0] replace_pipe_req_arb_io_in_2_bits_addr; // @[DCacheWrapper.scala 262:21]
  wire [511:0] replace_pipe_req_arb_io_in_2_bits_store_data; // @[DCacheWrapper.scala 262:21]
  wire [63:0] replace_pipe_req_arb_io_in_2_bits_store_mask; // @[DCacheWrapper.scala 262:21]
  wire  replace_pipe_req_arb_io_in_2_bits_replace; // @[DCacheWrapper.scala 262:21]
  wire [7:0] replace_pipe_req_arb_io_in_2_bits_replace_way_en; // @[DCacheWrapper.scala 262:21]
  wire [3:0] replace_pipe_req_arb_io_in_2_bits_id; // @[DCacheWrapper.scala 262:21]
  wire  replace_pipe_req_arb_io_in_3_ready; // @[DCacheWrapper.scala 262:21]
  wire  replace_pipe_req_arb_io_in_3_valid; // @[DCacheWrapper.scala 262:21]
  wire  replace_pipe_req_arb_io_in_3_bits_miss; // @[DCacheWrapper.scala 262:21]
  wire [1:0] replace_pipe_req_arb_io_in_3_bits_miss_id; // @[DCacheWrapper.scala 262:21]
  wire [1:0] replace_pipe_req_arb_io_in_3_bits_miss_param; // @[DCacheWrapper.scala 262:21]
  wire  replace_pipe_req_arb_io_in_3_bits_miss_dirty; // @[DCacheWrapper.scala 262:21]
  wire [7:0] replace_pipe_req_arb_io_in_3_bits_miss_way_en; // @[DCacheWrapper.scala 262:21]
  wire  replace_pipe_req_arb_io_in_3_bits_probe; // @[DCacheWrapper.scala 262:21]
  wire [1:0] replace_pipe_req_arb_io_in_3_bits_probe_param; // @[DCacheWrapper.scala 262:21]
  wire  replace_pipe_req_arb_io_in_3_bits_probe_need_data; // @[DCacheWrapper.scala 262:21]
  wire [3:0] replace_pipe_req_arb_io_in_3_bits_source; // @[DCacheWrapper.scala 262:21]
  wire [4:0] replace_pipe_req_arb_io_in_3_bits_cmd; // @[DCacheWrapper.scala 262:21]
  wire [38:0] replace_pipe_req_arb_io_in_3_bits_vaddr; // @[DCacheWrapper.scala 262:21]
  wire [35:0] replace_pipe_req_arb_io_in_3_bits_addr; // @[DCacheWrapper.scala 262:21]
  wire [511:0] replace_pipe_req_arb_io_in_3_bits_store_data; // @[DCacheWrapper.scala 262:21]
  wire [63:0] replace_pipe_req_arb_io_in_3_bits_store_mask; // @[DCacheWrapper.scala 262:21]
  wire [2:0] replace_pipe_req_arb_io_in_3_bits_word_idx; // @[DCacheWrapper.scala 262:21]
  wire [63:0] replace_pipe_req_arb_io_in_3_bits_amo_data; // @[DCacheWrapper.scala 262:21]
  wire [7:0] replace_pipe_req_arb_io_in_3_bits_amo_mask; // @[DCacheWrapper.scala 262:21]
  wire  replace_pipe_req_arb_io_in_3_bits_error; // @[DCacheWrapper.scala 262:21]
  wire  replace_pipe_req_arb_io_in_3_bits_replace; // @[DCacheWrapper.scala 262:21]
  wire [7:0] replace_pipe_req_arb_io_in_3_bits_replace_way_en; // @[DCacheWrapper.scala 262:21]
  wire [3:0] replace_pipe_req_arb_io_in_3_bits_id; // @[DCacheWrapper.scala 262:21]
  wire  replace_pipe_req_arb_io_out_ready; // @[DCacheWrapper.scala 262:21]
  wire  replace_pipe_req_arb_io_out_valid; // @[DCacheWrapper.scala 262:21]
  wire  replace_pipe_req_arb_io_out_bits_miss; // @[DCacheWrapper.scala 262:21]
  wire [1:0] replace_pipe_req_arb_io_out_bits_miss_id; // @[DCacheWrapper.scala 262:21]
  wire [1:0] replace_pipe_req_arb_io_out_bits_miss_param; // @[DCacheWrapper.scala 262:21]
  wire  replace_pipe_req_arb_io_out_bits_miss_dirty; // @[DCacheWrapper.scala 262:21]
  wire [7:0] replace_pipe_req_arb_io_out_bits_miss_way_en; // @[DCacheWrapper.scala 262:21]
  wire  replace_pipe_req_arb_io_out_bits_probe; // @[DCacheWrapper.scala 262:21]
  wire [1:0] replace_pipe_req_arb_io_out_bits_probe_param; // @[DCacheWrapper.scala 262:21]
  wire  replace_pipe_req_arb_io_out_bits_probe_need_data; // @[DCacheWrapper.scala 262:21]
  wire [3:0] replace_pipe_req_arb_io_out_bits_source; // @[DCacheWrapper.scala 262:21]
  wire [4:0] replace_pipe_req_arb_io_out_bits_cmd; // @[DCacheWrapper.scala 262:21]
  wire [38:0] replace_pipe_req_arb_io_out_bits_vaddr; // @[DCacheWrapper.scala 262:21]
  wire [35:0] replace_pipe_req_arb_io_out_bits_addr; // @[DCacheWrapper.scala 262:21]
  wire [511:0] replace_pipe_req_arb_io_out_bits_store_data; // @[DCacheWrapper.scala 262:21]
  wire [63:0] replace_pipe_req_arb_io_out_bits_store_mask; // @[DCacheWrapper.scala 262:21]
  wire [2:0] replace_pipe_req_arb_io_out_bits_word_idx; // @[DCacheWrapper.scala 262:21]
  wire [63:0] replace_pipe_req_arb_io_out_bits_amo_data; // @[DCacheWrapper.scala 262:21]
  wire [7:0] replace_pipe_req_arb_io_out_bits_amo_mask; // @[DCacheWrapper.scala 262:21]
  wire  replace_pipe_req_arb_io_out_bits_error; // @[DCacheWrapper.scala 262:21]
  wire  replace_pipe_req_arb_io_out_bits_replace; // @[DCacheWrapper.scala 262:21]
  wire [7:0] replace_pipe_req_arb_io_out_bits_replace_way_en; // @[DCacheWrapper.scala 262:21]
  wire [3:0] replace_pipe_req_arb_io_out_bits_id; // @[DCacheWrapper.scala 262:21]
  wire  pipelineReg_25_clock; // @[MemCommon.scala 400:29]
  wire  pipelineReg_25_reset; // @[MemCommon.scala 400:29]
  wire  pipelineReg_25_io_in_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_25_io_in_valid; // @[MemCommon.scala 400:29]
  wire  pipelineReg_25_io_in_bits_miss; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_25_io_in_bits_miss_id; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_25_io_in_bits_miss_param; // @[MemCommon.scala 400:29]
  wire  pipelineReg_25_io_in_bits_miss_dirty; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_25_io_in_bits_miss_way_en; // @[MemCommon.scala 400:29]
  wire  pipelineReg_25_io_in_bits_probe; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_25_io_in_bits_probe_param; // @[MemCommon.scala 400:29]
  wire  pipelineReg_25_io_in_bits_probe_need_data; // @[MemCommon.scala 400:29]
  wire [3:0] pipelineReg_25_io_in_bits_source; // @[MemCommon.scala 400:29]
  wire [4:0] pipelineReg_25_io_in_bits_cmd; // @[MemCommon.scala 400:29]
  wire [38:0] pipelineReg_25_io_in_bits_vaddr; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_25_io_in_bits_addr; // @[MemCommon.scala 400:29]
  wire [511:0] pipelineReg_25_io_in_bits_store_data; // @[MemCommon.scala 400:29]
  wire [63:0] pipelineReg_25_io_in_bits_store_mask; // @[MemCommon.scala 400:29]
  wire [2:0] pipelineReg_25_io_in_bits_word_idx; // @[MemCommon.scala 400:29]
  wire [63:0] pipelineReg_25_io_in_bits_amo_data; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_25_io_in_bits_amo_mask; // @[MemCommon.scala 400:29]
  wire  pipelineReg_25_io_in_bits_error; // @[MemCommon.scala 400:29]
  wire  pipelineReg_25_io_in_bits_replace; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_25_io_in_bits_replace_way_en; // @[MemCommon.scala 400:29]
  wire [3:0] pipelineReg_25_io_in_bits_id; // @[MemCommon.scala 400:29]
  wire  pipelineReg_25_io_out_ready; // @[MemCommon.scala 400:29]
  wire  pipelineReg_25_io_out_valid; // @[MemCommon.scala 400:29]
  wire  pipelineReg_25_io_out_bits_miss; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_25_io_out_bits_miss_id; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_25_io_out_bits_miss_param; // @[MemCommon.scala 400:29]
  wire  pipelineReg_25_io_out_bits_miss_dirty; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_25_io_out_bits_miss_way_en; // @[MemCommon.scala 400:29]
  wire  pipelineReg_25_io_out_bits_probe; // @[MemCommon.scala 400:29]
  wire [1:0] pipelineReg_25_io_out_bits_probe_param; // @[MemCommon.scala 400:29]
  wire  pipelineReg_25_io_out_bits_probe_need_data; // @[MemCommon.scala 400:29]
  wire [3:0] pipelineReg_25_io_out_bits_source; // @[MemCommon.scala 400:29]
  wire [4:0] pipelineReg_25_io_out_bits_cmd; // @[MemCommon.scala 400:29]
  wire [38:0] pipelineReg_25_io_out_bits_vaddr; // @[MemCommon.scala 400:29]
  wire [35:0] pipelineReg_25_io_out_bits_addr; // @[MemCommon.scala 400:29]
  wire [511:0] pipelineReg_25_io_out_bits_store_data; // @[MemCommon.scala 400:29]
  wire [63:0] pipelineReg_25_io_out_bits_store_mask; // @[MemCommon.scala 400:29]
  wire [2:0] pipelineReg_25_io_out_bits_word_idx; // @[MemCommon.scala 400:29]
  wire [63:0] pipelineReg_25_io_out_bits_amo_data; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_25_io_out_bits_amo_mask; // @[MemCommon.scala 400:29]
  wire  pipelineReg_25_io_out_bits_error; // @[MemCommon.scala 400:29]
  wire  pipelineReg_25_io_out_bits_replace; // @[MemCommon.scala 400:29]
  wire [7:0] pipelineReg_25_io_out_bits_replace_way_en; // @[MemCommon.scala 400:29]
  wire [3:0] pipelineReg_25_io_out_bits_id; // @[MemCommon.scala 400:29]
  reg [3:0] miss_req_pipe_reg_req_source; // @[MissQueue.scala 859:34]
  reg [4:0] miss_req_pipe_reg_req_cmd; // @[MissQueue.scala 859:34]
  reg [35:0] miss_req_pipe_reg_req_addr; // @[MissQueue.scala 859:34]
  reg [38:0] miss_req_pipe_reg_req_vaddr; // @[MissQueue.scala 859:34]
  reg [7:0] miss_req_pipe_reg_req_way_en; // @[MissQueue.scala 859:34]
  reg [2:0] miss_req_pipe_reg_req_word_idx; // @[MissQueue.scala 859:34]
  reg [63:0] miss_req_pipe_reg_req_amo_data; // @[MissQueue.scala 859:34]
  reg [7:0] miss_req_pipe_reg_req_amo_mask; // @[MissQueue.scala 859:34]
  reg [1:0] miss_req_pipe_reg_req_req_coh_state; // @[MissQueue.scala 859:34]
  reg [1:0] miss_req_pipe_reg_req_replace_coh_state; // @[MissQueue.scala 859:34]
  reg [23:0] miss_req_pipe_reg_req_replace_tag; // @[MissQueue.scala 859:34]
  reg [3:0] miss_req_pipe_reg_req_id; // @[MissQueue.scala 859:34]
  reg [511:0] miss_req_pipe_reg_req_store_data; // @[MissQueue.scala 859:34]
  reg [63:0] miss_req_pipe_reg_req_store_mask; // @[MissQueue.scala 859:34]
  reg  miss_req_pipe_reg_merge; // @[MissQueue.scala 859:34]
  reg  miss_req_pipe_reg_alloc; // @[MissQueue.scala 859:34]
  reg [1:0] miss_req_pipe_reg_mshr_id; // @[MissQueue.scala 859:34]
  wire  probe_block_vec_0 = entries_0_io_block_addr_valid & entries_0_io_block_addr_bits == io_probe_addr; // @[MissQueue.scala 865:71]
  wire  probe_block_vec_1 = entries_1_io_block_addr_valid & entries_1_io_block_addr_bits == io_probe_addr; // @[MissQueue.scala 865:71]
  wire  probe_block_vec_2 = entries_2_io_block_addr_valid & entries_2_io_block_addr_bits == io_probe_addr; // @[MissQueue.scala 865:71]
  wire  probe_block_vec_3 = entries_3_io_block_addr_valid & entries_3_io_block_addr_bits == io_probe_addr; // @[MissQueue.scala 865:71]
  wire  merge_block_match = miss_req_pipe_reg_req_addr[35:6] == io_req_bits_addr[35:6]; // @[MissQueue.scala 191:43]
  wire  _merge_merge_load_T = miss_req_pipe_reg_req_source == 4'h0; // @[MissQueue.scala 72:27]
  wire  _merge_merge_load_T_1 = miss_req_pipe_reg_req_source == 4'h1; // @[MissQueue.scala 73:28]
  wire  _merge_merge_load_T_3 = miss_req_pipe_reg_req_source >= 4'h3; // @[MissQueue.scala 75:31]
  wire  _merge_merge_load_T_5 = io_req_bits_source == 4'h0; // @[MissQueue.scala 72:27]
  wire  merge_merge_load = (_merge_merge_load_T | _merge_merge_load_T_1 | _merge_merge_load_T_3) & _merge_merge_load_T_5
    ; // @[MissQueue.scala 193:80]
  wire  _merge_merge_store_T_3 = io_req_bits_source == 4'h1; // @[MissQueue.scala 73:28]
  wire  merge_merge_store = (_merge_merge_load_T | _merge_merge_load_T_3) & _merge_merge_store_T_3; // @[MissQueue.scala 195:62]
  wire  _merge_T_1 = merge_merge_load | merge_merge_store; // @[MissQueue.scala 198:51]
  wire  _merge_T_2 = merge_block_match & (merge_merge_load | merge_merge_store); // @[MissQueue.scala 198:36]
  wire  _merge_T_3 = miss_req_pipe_reg_alloc & _merge_T_2; // @[MissQueue.scala 196:8]
  wire [4:0] _merge_T_4 = {entries_0_io_secondary_ready,entries_1_io_secondary_ready,entries_2_io_secondary_ready,
    entries_3_io_secondary_ready,_merge_T_3}; // @[Cat.scala 31:58]
  wire  merge = |_merge_T_4; // @[MissQueue.scala 867:89]
  wire  reject_set_match = miss_req_pipe_reg_req_vaddr[11:6] == io_req_bits_vaddr[11:6]; // @[MissQueue.scala 177:51]
  wire  reject_way_match = miss_req_pipe_reg_req_way_en == io_req_bits_way_en; // @[MissQueue.scala 178:32]
  wire  _reject_T_2 = ~_merge_T_1; // @[MissQueue.scala 183:29]
  wire  _reject_T_4 = reject_set_match & reject_way_match; // @[MissQueue.scala 184:23]
  wire  _reject_T_5 = merge_block_match ? _reject_T_2 : _reject_T_4; // @[MissQueue.scala 181:12]
  wire  _reject_T_6 = miss_req_pipe_reg_alloc & _reject_T_5; // @[MissQueue.scala 179:8]
  wire [4:0] _reject_T_7 = {entries_0_io_secondary_reject,entries_1_io_secondary_reject,entries_2_io_secondary_reject,
    entries_3_io_secondary_reject,_reject_T_6}; // @[Cat.scala 31:58]
  wire  reject = |_reject_T_7; // @[MissQueue.scala 868:92]
  wire  _alloc_T = ~reject; // @[MissQueue.scala 869:15]
  wire  _alloc_T_1 = ~merge; // @[MissQueue.scala 869:26]
  wire [1:0] alloc_hi = {entries_0_io_primary_ready,entries_1_io_primary_ready}; // @[Cat.scala 31:58]
  wire [3:0] _alloc_T_3 = {entries_0_io_primary_ready,entries_1_io_primary_ready,entries_2_io_primary_ready,
    entries_3_io_primary_ready}; // @[Cat.scala 31:58]
  wire  alloc = ~reject & ~merge & |_alloc_T_3; // @[MissQueue.scala 869:33]
  wire  _WIRE__1 = entries_1_io_req_handled_by_this_entry; // @[MissQueue.scala 875:{56,56}]
  wire  _WIRE__0 = entries_0_io_req_handled_by_this_entry; // @[MissQueue.scala 875:{56,56}]
  wire  _WIRE__3 = entries_3_io_req_handled_by_this_entry; // @[MissQueue.scala 875:{56,56}]
  wire  _WIRE__2 = entries_2_io_req_handled_by_this_entry; // @[MissQueue.scala 875:{56,56}]
  wire [3:0] _T = {_WIRE__3,_WIRE__2,_WIRE__1,_WIRE__0}; // @[MissQueue.scala 875:79]
  wire  _T_1 = |_T; // @[MissQueue.scala 875:86]
  wire  _io_resp_id_T = ~_merge_T_3; // @[MissQueue.scala 877:21]
  wire [3:0] _io_resp_id_T_1 = {entries_3_io_req_handled_by_this_entry,entries_2_io_req_handled_by_this_entry,
    entries_1_io_req_handled_by_this_entry,entries_0_io_req_handled_by_this_entry}; // @[Cat.scala 31:58]
  wire [1:0] io_resp_id_hi_1 = _io_resp_id_T_1[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] io_resp_id_lo_1 = _io_resp_id_T_1[1:0]; // @[OneHot.scala 31:18]
  wire  _io_resp_id_T_2 = |io_resp_id_hi_1; // @[OneHot.scala 32:14]
  wire [1:0] _io_resp_id_T_3 = io_resp_id_hi_1 | io_resp_id_lo_1; // @[OneHot.scala 32:28]
  wire [1:0] _io_resp_id_T_5 = {_io_resp_id_T_2,_io_resp_id_T_3[1]}; // @[Cat.scala 31:58]
  wire [3:0] _io_resp_handled_T = {entries_0_io_req_handled_by_this_entry,entries_1_io_req_handled_by_this_entry,
    entries_2_io_req_handled_by_this_entry,entries_3_io_req_handled_by_this_entry}; // @[Cat.scala 31:58]
  wire [7:0] _io_resp_repl_way_en_T_1 = entries_0_io_secondary_ready ? entries_0_io_repl_way_en : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_resp_repl_way_en_T_2 = entries_1_io_secondary_ready ? entries_1_io_repl_way_en : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_resp_repl_way_en_T_3 = entries_2_io_secondary_ready ? entries_2_io_repl_way_en : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_resp_repl_way_en_T_4 = entries_3_io_secondary_ready ? entries_3_io_repl_way_en : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_resp_repl_way_en_T_5 = _io_resp_repl_way_en_T_1 | _io_resp_repl_way_en_T_2; // @[Mux.scala 27:73]
  wire [7:0] _io_resp_repl_way_en_T_6 = _io_resp_repl_way_en_T_5 | _io_resp_repl_way_en_T_3; // @[Mux.scala 27:73]
  wire [7:0] _io_resp_repl_way_en_T_7 = _io_resp_repl_way_en_T_6 | _io_resp_repl_way_en_T_4; // @[Mux.scala 27:73]
  wire  _miss_req_pipe_reg_alloc_T_1 = ~io_req_bits_cancel; // @[MissQueue.scala 886:57]
  reg [9:0] source_except_load_cnt; // @[MissQueue.scala 892:39]
  wire [9:0] _source_except_load_cnt_T_1 = source_except_load_cnt + 10'h1; // @[MissQueue.scala 898:58]
  reg  memSetPattenDetected; // @[MissQueue.scala 903:37]
  wire  forwardInfo_vec_0_firstbeat_valid = entries_0_io_forwardInfo_firstbeat_valid; // @[MissQueue.scala 907:{32,32}]
  wire  forwardInfo_vec_1_firstbeat_valid = entries_1_io_forwardInfo_firstbeat_valid; // @[MissQueue.scala 907:{32,32}]
  wire  _GEN_4 = 2'h1 == io_forward_0_mshrid ? forwardInfo_vec_1_firstbeat_valid : forwardInfo_vec_0_firstbeat_valid; // @[DCacheWrapper.scala 674:{61,61}]
  wire  forwardInfo_vec_2_firstbeat_valid = entries_2_io_forwardInfo_firstbeat_valid; // @[MissQueue.scala 907:{32,32}]
  wire  _GEN_5 = 2'h2 == io_forward_0_mshrid ? forwardInfo_vec_2_firstbeat_valid : _GEN_4; // @[DCacheWrapper.scala 674:{61,61}]
  wire  forwardInfo_vec_3_firstbeat_valid = entries_3_io_forwardInfo_firstbeat_valid; // @[MissQueue.scala 907:{32,32}]
  wire  _GEN_6 = 2'h3 == io_forward_0_mshrid ? forwardInfo_vec_3_firstbeat_valid : _GEN_5; // @[DCacheWrapper.scala 674:{61,61}]
  wire  forwardInfo_vec_0_lastbeat_valid = entries_0_io_forwardInfo_lastbeat_valid; // @[MissQueue.scala 907:{32,32}]
  wire  forwardInfo_vec_1_lastbeat_valid = entries_1_io_forwardInfo_lastbeat_valid; // @[MissQueue.scala 907:{32,32}]
  wire  _GEN_8 = 2'h1 == io_forward_0_mshrid ? forwardInfo_vec_1_lastbeat_valid : forwardInfo_vec_0_lastbeat_valid; // @[DCacheWrapper.scala 675:{61,61}]
  wire  forwardInfo_vec_2_lastbeat_valid = entries_2_io_forwardInfo_lastbeat_valid; // @[MissQueue.scala 907:{32,32}]
  wire  _GEN_9 = 2'h2 == io_forward_0_mshrid ? forwardInfo_vec_2_lastbeat_valid : _GEN_8; // @[DCacheWrapper.scala 675:{61,61}]
  wire  forwardInfo_vec_3_lastbeat_valid = entries_3_io_forwardInfo_lastbeat_valid; // @[MissQueue.scala 907:{32,32}]
  wire  _GEN_10 = 2'h3 == io_forward_0_mshrid ? forwardInfo_vec_3_lastbeat_valid : _GEN_9; // @[DCacheWrapper.scala 675:{61,61}]
  wire  _all_match_T_5 = io_forward_0_paddr[5] & _GEN_10; // @[DCacheWrapper.scala 675:61]
  reg  forward_mshr; // @[DCacheWrapper.scala 677:31]
  reg [7:0] forwardData__0; // @[DCacheWrapper.scala 678:30]
  reg [7:0] forwardData__1; // @[DCacheWrapper.scala 678:30]
  reg [7:0] forwardData__2; // @[DCacheWrapper.scala 678:30]
  reg [7:0] forwardData__3; // @[DCacheWrapper.scala 678:30]
  reg [7:0] forwardData__4; // @[DCacheWrapper.scala 678:30]
  reg [7:0] forwardData__5; // @[DCacheWrapper.scala 678:30]
  reg [7:0] forwardData__6; // @[DCacheWrapper.scala 678:30]
  reg [7:0] forwardData__7; // @[DCacheWrapper.scala 678:30]
  reg [7:0] forwardData__8; // @[DCacheWrapper.scala 678:30]
  reg [7:0] forwardData__9; // @[DCacheWrapper.scala 678:30]
  reg [7:0] forwardData__10; // @[DCacheWrapper.scala 678:30]
  reg [7:0] forwardData__11; // @[DCacheWrapper.scala 678:30]
  reg [7:0] forwardData__12; // @[DCacheWrapper.scala 678:30]
  reg [7:0] forwardData__13; // @[DCacheWrapper.scala 678:30]
  reg [7:0] forwardData__14; // @[DCacheWrapper.scala 678:30]
  reg [7:0] forwardData__15; // @[DCacheWrapper.scala 678:30]
  wire [2:0] block_idx = io_forward_0_paddr[5:3]; // @[DCacheWrapper.scala 680:30]
  wire [63:0] forwardInfo_vec_0_raw_data_0 = entries_0_io_forwardInfo_raw_data_0; // @[MissQueue.scala 907:{32,32}]
  wire [63:0] forwardInfo_vec_0_raw_data_1 = entries_0_io_forwardInfo_raw_data_1; // @[MissQueue.scala 907:{32,32}]
  wire [63:0] _GEN_12 = 2'h0 == io_forward_0_mshrid & 3'h1 == block_idx ? forwardInfo_vec_0_raw_data_1 :
    forwardInfo_vec_0_raw_data_0; // @[Cat.scala 31:{58,58}]
  wire [63:0] forwardInfo_vec_0_raw_data_2 = entries_0_io_forwardInfo_raw_data_2; // @[MissQueue.scala 907:{32,32}]
  wire [63:0] _GEN_13 = 2'h0 == io_forward_0_mshrid & 3'h2 == block_idx ? forwardInfo_vec_0_raw_data_2 : _GEN_12; // @[Cat.scala 31:{58,58}]
  wire [63:0] forwardInfo_vec_0_raw_data_3 = entries_0_io_forwardInfo_raw_data_3; // @[MissQueue.scala 907:{32,32}]
  wire [63:0] _GEN_14 = 2'h0 == io_forward_0_mshrid & 3'h3 == block_idx ? forwardInfo_vec_0_raw_data_3 : _GEN_13; // @[Cat.scala 31:{58,58}]
  wire [63:0] forwardInfo_vec_0_raw_data_4 = entries_0_io_forwardInfo_raw_data_4; // @[MissQueue.scala 907:{32,32}]
  wire [63:0] _GEN_15 = 2'h0 == io_forward_0_mshrid & 3'h4 == block_idx ? forwardInfo_vec_0_raw_data_4 : _GEN_14; // @[Cat.scala 31:{58,58}]
  wire [63:0] forwardInfo_vec_0_raw_data_5 = entries_0_io_forwardInfo_raw_data_5; // @[MissQueue.scala 907:{32,32}]
  wire [63:0] _GEN_16 = 2'h0 == io_forward_0_mshrid & 3'h5 == block_idx ? forwardInfo_vec_0_raw_data_5 : _GEN_15; // @[Cat.scala 31:{58,58}]
  wire [63:0] forwardInfo_vec_0_raw_data_6 = entries_0_io_forwardInfo_raw_data_6; // @[MissQueue.scala 907:{32,32}]
  wire [63:0] _GEN_17 = 2'h0 == io_forward_0_mshrid & 3'h6 == block_idx ? forwardInfo_vec_0_raw_data_6 : _GEN_16; // @[Cat.scala 31:{58,58}]
  wire [63:0] forwardInfo_vec_0_raw_data_7 = entries_0_io_forwardInfo_raw_data_7; // @[MissQueue.scala 907:{32,32}]
  wire [63:0] _GEN_18 = 2'h0 == io_forward_0_mshrid & 3'h7 == block_idx ? forwardInfo_vec_0_raw_data_7 : _GEN_17; // @[Cat.scala 31:{58,58}]
  wire [63:0] forwardInfo_vec_1_raw_data_0 = entries_1_io_forwardInfo_raw_data_0; // @[MissQueue.scala 907:{32,32}]
  wire [63:0] _GEN_19 = 2'h1 == io_forward_0_mshrid & 3'h0 == block_idx ? forwardInfo_vec_1_raw_data_0 : _GEN_18; // @[Cat.scala 31:{58,58}]
  wire [63:0] forwardInfo_vec_1_raw_data_1 = entries_1_io_forwardInfo_raw_data_1; // @[MissQueue.scala 907:{32,32}]
  wire [63:0] _GEN_20 = 2'h1 == io_forward_0_mshrid & 3'h1 == block_idx ? forwardInfo_vec_1_raw_data_1 : _GEN_19; // @[Cat.scala 31:{58,58}]
  wire [63:0] forwardInfo_vec_1_raw_data_2 = entries_1_io_forwardInfo_raw_data_2; // @[MissQueue.scala 907:{32,32}]
  wire [63:0] _GEN_21 = 2'h1 == io_forward_0_mshrid & 3'h2 == block_idx ? forwardInfo_vec_1_raw_data_2 : _GEN_20; // @[Cat.scala 31:{58,58}]
  wire [63:0] forwardInfo_vec_1_raw_data_3 = entries_1_io_forwardInfo_raw_data_3; // @[MissQueue.scala 907:{32,32}]
  wire [63:0] _GEN_22 = 2'h1 == io_forward_0_mshrid & 3'h3 == block_idx ? forwardInfo_vec_1_raw_data_3 : _GEN_21; // @[Cat.scala 31:{58,58}]
  wire [63:0] forwardInfo_vec_1_raw_data_4 = entries_1_io_forwardInfo_raw_data_4; // @[MissQueue.scala 907:{32,32}]
  wire [63:0] _GEN_23 = 2'h1 == io_forward_0_mshrid & 3'h4 == block_idx ? forwardInfo_vec_1_raw_data_4 : _GEN_22; // @[Cat.scala 31:{58,58}]
  wire [63:0] forwardInfo_vec_1_raw_data_5 = entries_1_io_forwardInfo_raw_data_5; // @[MissQueue.scala 907:{32,32}]
  wire [63:0] _GEN_24 = 2'h1 == io_forward_0_mshrid & 3'h5 == block_idx ? forwardInfo_vec_1_raw_data_5 : _GEN_23; // @[Cat.scala 31:{58,58}]
  wire [63:0] forwardInfo_vec_1_raw_data_6 = entries_1_io_forwardInfo_raw_data_6; // @[MissQueue.scala 907:{32,32}]
  wire [63:0] _GEN_25 = 2'h1 == io_forward_0_mshrid & 3'h6 == block_idx ? forwardInfo_vec_1_raw_data_6 : _GEN_24; // @[Cat.scala 31:{58,58}]
  wire [63:0] forwardInfo_vec_1_raw_data_7 = entries_1_io_forwardInfo_raw_data_7; // @[MissQueue.scala 907:{32,32}]
  wire [63:0] _GEN_26 = 2'h1 == io_forward_0_mshrid & 3'h7 == block_idx ? forwardInfo_vec_1_raw_data_7 : _GEN_25; // @[Cat.scala 31:{58,58}]
  wire [63:0] forwardInfo_vec_2_raw_data_0 = entries_2_io_forwardInfo_raw_data_0; // @[MissQueue.scala 907:{32,32}]
  wire [63:0] _GEN_27 = 2'h2 == io_forward_0_mshrid & 3'h0 == block_idx ? forwardInfo_vec_2_raw_data_0 : _GEN_26; // @[Cat.scala 31:{58,58}]
  wire [63:0] forwardInfo_vec_2_raw_data_1 = entries_2_io_forwardInfo_raw_data_1; // @[MissQueue.scala 907:{32,32}]
  wire [63:0] _GEN_28 = 2'h2 == io_forward_0_mshrid & 3'h1 == block_idx ? forwardInfo_vec_2_raw_data_1 : _GEN_27; // @[Cat.scala 31:{58,58}]
  wire [63:0] forwardInfo_vec_2_raw_data_2 = entries_2_io_forwardInfo_raw_data_2; // @[MissQueue.scala 907:{32,32}]
  wire [63:0] _GEN_29 = 2'h2 == io_forward_0_mshrid & 3'h2 == block_idx ? forwardInfo_vec_2_raw_data_2 : _GEN_28; // @[Cat.scala 31:{58,58}]
  wire [63:0] forwardInfo_vec_2_raw_data_3 = entries_2_io_forwardInfo_raw_data_3; // @[MissQueue.scala 907:{32,32}]
  wire [63:0] _GEN_30 = 2'h2 == io_forward_0_mshrid & 3'h3 == block_idx ? forwardInfo_vec_2_raw_data_3 : _GEN_29; // @[Cat.scala 31:{58,58}]
  wire [63:0] forwardInfo_vec_2_raw_data_4 = entries_2_io_forwardInfo_raw_data_4; // @[MissQueue.scala 907:{32,32}]
  wire [63:0] _GEN_31 = 2'h2 == io_forward_0_mshrid & 3'h4 == block_idx ? forwardInfo_vec_2_raw_data_4 : _GEN_30; // @[Cat.scala 31:{58,58}]
  wire [63:0] forwardInfo_vec_2_raw_data_5 = entries_2_io_forwardInfo_raw_data_5; // @[MissQueue.scala 907:{32,32}]
  wire [63:0] _GEN_32 = 2'h2 == io_forward_0_mshrid & 3'h5 == block_idx ? forwardInfo_vec_2_raw_data_5 : _GEN_31; // @[Cat.scala 31:{58,58}]
  wire [63:0] forwardInfo_vec_2_raw_data_6 = entries_2_io_forwardInfo_raw_data_6; // @[MissQueue.scala 907:{32,32}]
  wire [63:0] _GEN_33 = 2'h2 == io_forward_0_mshrid & 3'h6 == block_idx ? forwardInfo_vec_2_raw_data_6 : _GEN_32; // @[Cat.scala 31:{58,58}]
  wire [63:0] forwardInfo_vec_2_raw_data_7 = entries_2_io_forwardInfo_raw_data_7; // @[MissQueue.scala 907:{32,32}]
  wire [63:0] _GEN_34 = 2'h2 == io_forward_0_mshrid & 3'h7 == block_idx ? forwardInfo_vec_2_raw_data_7 : _GEN_33; // @[Cat.scala 31:{58,58}]
  wire [63:0] forwardInfo_vec_3_raw_data_0 = entries_3_io_forwardInfo_raw_data_0; // @[MissQueue.scala 907:{32,32}]
  wire [63:0] _GEN_35 = 2'h3 == io_forward_0_mshrid & 3'h0 == block_idx ? forwardInfo_vec_3_raw_data_0 : _GEN_34; // @[Cat.scala 31:{58,58}]
  wire [63:0] forwardInfo_vec_3_raw_data_1 = entries_3_io_forwardInfo_raw_data_1; // @[MissQueue.scala 907:{32,32}]
  wire [63:0] _GEN_36 = 2'h3 == io_forward_0_mshrid & 3'h1 == block_idx ? forwardInfo_vec_3_raw_data_1 : _GEN_35; // @[Cat.scala 31:{58,58}]
  wire [63:0] forwardInfo_vec_3_raw_data_2 = entries_3_io_forwardInfo_raw_data_2; // @[MissQueue.scala 907:{32,32}]
  wire [63:0] _GEN_37 = 2'h3 == io_forward_0_mshrid & 3'h2 == block_idx ? forwardInfo_vec_3_raw_data_2 : _GEN_36; // @[Cat.scala 31:{58,58}]
  wire [63:0] forwardInfo_vec_3_raw_data_3 = entries_3_io_forwardInfo_raw_data_3; // @[MissQueue.scala 907:{32,32}]
  wire [63:0] _GEN_38 = 2'h3 == io_forward_0_mshrid & 3'h3 == block_idx ? forwardInfo_vec_3_raw_data_3 : _GEN_37; // @[Cat.scala 31:{58,58}]
  wire [63:0] forwardInfo_vec_3_raw_data_4 = entries_3_io_forwardInfo_raw_data_4; // @[MissQueue.scala 907:{32,32}]
  wire [63:0] _GEN_39 = 2'h3 == io_forward_0_mshrid & 3'h4 == block_idx ? forwardInfo_vec_3_raw_data_4 : _GEN_38; // @[Cat.scala 31:{58,58}]
  wire [63:0] forwardInfo_vec_3_raw_data_5 = entries_3_io_forwardInfo_raw_data_5; // @[MissQueue.scala 907:{32,32}]
  wire [63:0] _GEN_40 = 2'h3 == io_forward_0_mshrid & 3'h5 == block_idx ? forwardInfo_vec_3_raw_data_5 : _GEN_39; // @[Cat.scala 31:{58,58}]
  wire [63:0] forwardInfo_vec_3_raw_data_6 = entries_3_io_forwardInfo_raw_data_6; // @[MissQueue.scala 907:{32,32}]
  wire [63:0] _GEN_41 = 2'h3 == io_forward_0_mshrid & 3'h6 == block_idx ? forwardInfo_vec_3_raw_data_6 : _GEN_40; // @[Cat.scala 31:{58,58}]
  wire [63:0] forwardInfo_vec_3_raw_data_7 = entries_3_io_forwardInfo_raw_data_7; // @[MissQueue.scala 907:{32,32}]
  wire [63:0] _GEN_42 = 2'h3 == io_forward_0_mshrid & 3'h7 == block_idx ? forwardInfo_vec_3_raw_data_7 : _GEN_41; // @[Cat.scala 31:{58,58}]
  wire [127:0] _selected_data_T_1 = {_GEN_42,_GEN_42}; // @[Cat.scala 31:58]
  wire [2:0] _selected_data_T_3 = block_idx + 3'h1; // @[DCacheWrapper.scala 684:97]
  wire [63:0] _GEN_44 = 2'h0 == io_forward_0_mshrid & 3'h1 == _selected_data_T_3 ? forwardInfo_vec_0_raw_data_1 :
    forwardInfo_vec_0_raw_data_0; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_45 = 2'h0 == io_forward_0_mshrid & 3'h2 == _selected_data_T_3 ? forwardInfo_vec_0_raw_data_2 :
    _GEN_44; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_46 = 2'h0 == io_forward_0_mshrid & 3'h3 == _selected_data_T_3 ? forwardInfo_vec_0_raw_data_3 :
    _GEN_45; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_47 = 2'h0 == io_forward_0_mshrid & 3'h4 == _selected_data_T_3 ? forwardInfo_vec_0_raw_data_4 :
    _GEN_46; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_48 = 2'h0 == io_forward_0_mshrid & 3'h5 == _selected_data_T_3 ? forwardInfo_vec_0_raw_data_5 :
    _GEN_47; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_49 = 2'h0 == io_forward_0_mshrid & 3'h6 == _selected_data_T_3 ? forwardInfo_vec_0_raw_data_6 :
    _GEN_48; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_50 = 2'h0 == io_forward_0_mshrid & 3'h7 == _selected_data_T_3 ? forwardInfo_vec_0_raw_data_7 :
    _GEN_49; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_51 = 2'h1 == io_forward_0_mshrid & 3'h0 == _selected_data_T_3 ? forwardInfo_vec_1_raw_data_0 :
    _GEN_50; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_52 = 2'h1 == io_forward_0_mshrid & 3'h1 == _selected_data_T_3 ? forwardInfo_vec_1_raw_data_1 :
    _GEN_51; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_53 = 2'h1 == io_forward_0_mshrid & 3'h2 == _selected_data_T_3 ? forwardInfo_vec_1_raw_data_2 :
    _GEN_52; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_54 = 2'h1 == io_forward_0_mshrid & 3'h3 == _selected_data_T_3 ? forwardInfo_vec_1_raw_data_3 :
    _GEN_53; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_55 = 2'h1 == io_forward_0_mshrid & 3'h4 == _selected_data_T_3 ? forwardInfo_vec_1_raw_data_4 :
    _GEN_54; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_56 = 2'h1 == io_forward_0_mshrid & 3'h5 == _selected_data_T_3 ? forwardInfo_vec_1_raw_data_5 :
    _GEN_55; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_57 = 2'h1 == io_forward_0_mshrid & 3'h6 == _selected_data_T_3 ? forwardInfo_vec_1_raw_data_6 :
    _GEN_56; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_58 = 2'h1 == io_forward_0_mshrid & 3'h7 == _selected_data_T_3 ? forwardInfo_vec_1_raw_data_7 :
    _GEN_57; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_59 = 2'h2 == io_forward_0_mshrid & 3'h0 == _selected_data_T_3 ? forwardInfo_vec_2_raw_data_0 :
    _GEN_58; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_60 = 2'h2 == io_forward_0_mshrid & 3'h1 == _selected_data_T_3 ? forwardInfo_vec_2_raw_data_1 :
    _GEN_59; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_61 = 2'h2 == io_forward_0_mshrid & 3'h2 == _selected_data_T_3 ? forwardInfo_vec_2_raw_data_2 :
    _GEN_60; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_62 = 2'h2 == io_forward_0_mshrid & 3'h3 == _selected_data_T_3 ? forwardInfo_vec_2_raw_data_3 :
    _GEN_61; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_63 = 2'h2 == io_forward_0_mshrid & 3'h4 == _selected_data_T_3 ? forwardInfo_vec_2_raw_data_4 :
    _GEN_62; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_64 = 2'h2 == io_forward_0_mshrid & 3'h5 == _selected_data_T_3 ? forwardInfo_vec_2_raw_data_5 :
    _GEN_63; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_65 = 2'h2 == io_forward_0_mshrid & 3'h6 == _selected_data_T_3 ? forwardInfo_vec_2_raw_data_6 :
    _GEN_64; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_66 = 2'h2 == io_forward_0_mshrid & 3'h7 == _selected_data_T_3 ? forwardInfo_vec_2_raw_data_7 :
    _GEN_65; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_67 = 2'h3 == io_forward_0_mshrid & 3'h0 == _selected_data_T_3 ? forwardInfo_vec_3_raw_data_0 :
    _GEN_66; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_68 = 2'h3 == io_forward_0_mshrid & 3'h1 == _selected_data_T_3 ? forwardInfo_vec_3_raw_data_1 :
    _GEN_67; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_69 = 2'h3 == io_forward_0_mshrid & 3'h2 == _selected_data_T_3 ? forwardInfo_vec_3_raw_data_2 :
    _GEN_68; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_70 = 2'h3 == io_forward_0_mshrid & 3'h3 == _selected_data_T_3 ? forwardInfo_vec_3_raw_data_3 :
    _GEN_69; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_71 = 2'h3 == io_forward_0_mshrid & 3'h4 == _selected_data_T_3 ? forwardInfo_vec_3_raw_data_4 :
    _GEN_70; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_72 = 2'h3 == io_forward_0_mshrid & 3'h5 == _selected_data_T_3 ? forwardInfo_vec_3_raw_data_5 :
    _GEN_71; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_73 = 2'h3 == io_forward_0_mshrid & 3'h6 == _selected_data_T_3 ? forwardInfo_vec_3_raw_data_6 :
    _GEN_72; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_74 = 2'h3 == io_forward_0_mshrid & 3'h7 == _selected_data_T_3 ? forwardInfo_vec_3_raw_data_7 :
    _GEN_73; // @[Cat.scala 31:{58,58}]
  wire [127:0] _selected_data_T_4 = {_GEN_74,_GEN_42}; // @[Cat.scala 31:58]
  wire [127:0] selected_data = io_forward_0_paddr[3] ? _selected_data_T_1 : _selected_data_T_4; // @[DCacheWrapper.scala 684:25]
  wire  forwardInfo_vec_0_inflight = entries_0_io_forwardInfo_inflight; // @[MissQueue.scala 907:{32,32}]
  wire  forwardInfo_vec_1_inflight = entries_1_io_forwardInfo_inflight; // @[MissQueue.scala 907:{32,32}]
  wire  _GEN_76 = 2'h1 == io_forward_0_mshrid ? forwardInfo_vec_1_inflight : forwardInfo_vec_0_inflight; // @[DCacheWrapper.scala 670:{23,23}]
  wire  forwardInfo_vec_2_inflight = entries_2_io_forwardInfo_inflight; // @[MissQueue.scala 907:{32,32}]
  wire  _GEN_77 = 2'h2 == io_forward_0_mshrid ? forwardInfo_vec_2_inflight : _GEN_76; // @[DCacheWrapper.scala 670:{23,23}]
  wire  forwardInfo_vec_3_inflight = entries_3_io_forwardInfo_inflight; // @[MissQueue.scala 907:{32,32}]
  wire  _GEN_78 = 2'h3 == io_forward_0_mshrid ? forwardInfo_vec_3_inflight : _GEN_77; // @[DCacheWrapper.scala 670:{23,23}]
  wire [35:0] forwardInfo_vec_0_paddr = entries_0_io_forwardInfo_paddr; // @[MissQueue.scala 907:{32,32}]
  wire [35:0] forwardInfo_vec_1_paddr = entries_1_io_forwardInfo_paddr; // @[MissQueue.scala 907:{32,32}]
  wire [35:0] _GEN_80 = 2'h1 == io_forward_0_mshrid ? forwardInfo_vec_1_paddr : forwardInfo_vec_0_paddr; // @[DCacheWrapper.scala 670:{86,86}]
  wire [35:0] forwardInfo_vec_2_paddr = entries_2_io_forwardInfo_paddr; // @[MissQueue.scala 907:{32,32}]
  wire [35:0] _GEN_81 = 2'h2 == io_forward_0_mshrid ? forwardInfo_vec_2_paddr : _GEN_80; // @[DCacheWrapper.scala 670:{86,86}]
  wire [35:0] forwardInfo_vec_3_paddr = entries_3_io_forwardInfo_paddr; // @[MissQueue.scala 907:{32,32}]
  wire [35:0] _GEN_82 = 2'h3 == io_forward_0_mshrid ? forwardInfo_vec_3_paddr : _GEN_81; // @[DCacheWrapper.scala 670:{86,86}]
  reg  io_forward_0_forward_result_valid_REG; // @[DCacheWrapper.scala 670:12]
  wire  _GEN_84 = 2'h1 == io_forward_1_mshrid ? forwardInfo_vec_1_firstbeat_valid : forwardInfo_vec_0_firstbeat_valid; // @[DCacheWrapper.scala 674:{61,61}]
  wire  _GEN_85 = 2'h2 == io_forward_1_mshrid ? forwardInfo_vec_2_firstbeat_valid : _GEN_84; // @[DCacheWrapper.scala 674:{61,61}]
  wire  _GEN_86 = 2'h3 == io_forward_1_mshrid ? forwardInfo_vec_3_firstbeat_valid : _GEN_85; // @[DCacheWrapper.scala 674:{61,61}]
  wire  _GEN_88 = 2'h1 == io_forward_1_mshrid ? forwardInfo_vec_1_lastbeat_valid : forwardInfo_vec_0_lastbeat_valid; // @[DCacheWrapper.scala 675:{61,61}]
  wire  _GEN_89 = 2'h2 == io_forward_1_mshrid ? forwardInfo_vec_2_lastbeat_valid : _GEN_88; // @[DCacheWrapper.scala 675:{61,61}]
  wire  _GEN_90 = 2'h3 == io_forward_1_mshrid ? forwardInfo_vec_3_lastbeat_valid : _GEN_89; // @[DCacheWrapper.scala 675:{61,61}]
  wire  _all_match_T_11 = io_forward_1_paddr[5] & _GEN_90; // @[DCacheWrapper.scala 675:61]
  reg  forward_mshr_1; // @[DCacheWrapper.scala 677:31]
  reg [7:0] forwardData_1_0; // @[DCacheWrapper.scala 678:30]
  reg [7:0] forwardData_1_1; // @[DCacheWrapper.scala 678:30]
  reg [7:0] forwardData_1_2; // @[DCacheWrapper.scala 678:30]
  reg [7:0] forwardData_1_3; // @[DCacheWrapper.scala 678:30]
  reg [7:0] forwardData_1_4; // @[DCacheWrapper.scala 678:30]
  reg [7:0] forwardData_1_5; // @[DCacheWrapper.scala 678:30]
  reg [7:0] forwardData_1_6; // @[DCacheWrapper.scala 678:30]
  reg [7:0] forwardData_1_7; // @[DCacheWrapper.scala 678:30]
  reg [7:0] forwardData_1_8; // @[DCacheWrapper.scala 678:30]
  reg [7:0] forwardData_1_9; // @[DCacheWrapper.scala 678:30]
  reg [7:0] forwardData_1_10; // @[DCacheWrapper.scala 678:30]
  reg [7:0] forwardData_1_11; // @[DCacheWrapper.scala 678:30]
  reg [7:0] forwardData_1_12; // @[DCacheWrapper.scala 678:30]
  reg [7:0] forwardData_1_13; // @[DCacheWrapper.scala 678:30]
  reg [7:0] forwardData_1_14; // @[DCacheWrapper.scala 678:30]
  reg [7:0] forwardData_1_15; // @[DCacheWrapper.scala 678:30]
  wire [2:0] block_idx_1 = io_forward_1_paddr[5:3]; // @[DCacheWrapper.scala 680:30]
  wire [63:0] _GEN_92 = 2'h0 == io_forward_1_mshrid & 3'h1 == block_idx_1 ? forwardInfo_vec_0_raw_data_1 :
    forwardInfo_vec_0_raw_data_0; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_93 = 2'h0 == io_forward_1_mshrid & 3'h2 == block_idx_1 ? forwardInfo_vec_0_raw_data_2 : _GEN_92; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_94 = 2'h0 == io_forward_1_mshrid & 3'h3 == block_idx_1 ? forwardInfo_vec_0_raw_data_3 : _GEN_93; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_95 = 2'h0 == io_forward_1_mshrid & 3'h4 == block_idx_1 ? forwardInfo_vec_0_raw_data_4 : _GEN_94; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_96 = 2'h0 == io_forward_1_mshrid & 3'h5 == block_idx_1 ? forwardInfo_vec_0_raw_data_5 : _GEN_95; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_97 = 2'h0 == io_forward_1_mshrid & 3'h6 == block_idx_1 ? forwardInfo_vec_0_raw_data_6 : _GEN_96; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_98 = 2'h0 == io_forward_1_mshrid & 3'h7 == block_idx_1 ? forwardInfo_vec_0_raw_data_7 : _GEN_97; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_99 = 2'h1 == io_forward_1_mshrid & 3'h0 == block_idx_1 ? forwardInfo_vec_1_raw_data_0 : _GEN_98; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_100 = 2'h1 == io_forward_1_mshrid & 3'h1 == block_idx_1 ? forwardInfo_vec_1_raw_data_1 : _GEN_99; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_101 = 2'h1 == io_forward_1_mshrid & 3'h2 == block_idx_1 ? forwardInfo_vec_1_raw_data_2 : _GEN_100; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_102 = 2'h1 == io_forward_1_mshrid & 3'h3 == block_idx_1 ? forwardInfo_vec_1_raw_data_3 : _GEN_101; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_103 = 2'h1 == io_forward_1_mshrid & 3'h4 == block_idx_1 ? forwardInfo_vec_1_raw_data_4 : _GEN_102; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_104 = 2'h1 == io_forward_1_mshrid & 3'h5 == block_idx_1 ? forwardInfo_vec_1_raw_data_5 : _GEN_103; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_105 = 2'h1 == io_forward_1_mshrid & 3'h6 == block_idx_1 ? forwardInfo_vec_1_raw_data_6 : _GEN_104; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_106 = 2'h1 == io_forward_1_mshrid & 3'h7 == block_idx_1 ? forwardInfo_vec_1_raw_data_7 : _GEN_105; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_107 = 2'h2 == io_forward_1_mshrid & 3'h0 == block_idx_1 ? forwardInfo_vec_2_raw_data_0 : _GEN_106; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_108 = 2'h2 == io_forward_1_mshrid & 3'h1 == block_idx_1 ? forwardInfo_vec_2_raw_data_1 : _GEN_107; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_109 = 2'h2 == io_forward_1_mshrid & 3'h2 == block_idx_1 ? forwardInfo_vec_2_raw_data_2 : _GEN_108; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_110 = 2'h2 == io_forward_1_mshrid & 3'h3 == block_idx_1 ? forwardInfo_vec_2_raw_data_3 : _GEN_109; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_111 = 2'h2 == io_forward_1_mshrid & 3'h4 == block_idx_1 ? forwardInfo_vec_2_raw_data_4 : _GEN_110; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_112 = 2'h2 == io_forward_1_mshrid & 3'h5 == block_idx_1 ? forwardInfo_vec_2_raw_data_5 : _GEN_111; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_113 = 2'h2 == io_forward_1_mshrid & 3'h6 == block_idx_1 ? forwardInfo_vec_2_raw_data_6 : _GEN_112; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_114 = 2'h2 == io_forward_1_mshrid & 3'h7 == block_idx_1 ? forwardInfo_vec_2_raw_data_7 : _GEN_113; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_115 = 2'h3 == io_forward_1_mshrid & 3'h0 == block_idx_1 ? forwardInfo_vec_3_raw_data_0 : _GEN_114; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_116 = 2'h3 == io_forward_1_mshrid & 3'h1 == block_idx_1 ? forwardInfo_vec_3_raw_data_1 : _GEN_115; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_117 = 2'h3 == io_forward_1_mshrid & 3'h2 == block_idx_1 ? forwardInfo_vec_3_raw_data_2 : _GEN_116; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_118 = 2'h3 == io_forward_1_mshrid & 3'h3 == block_idx_1 ? forwardInfo_vec_3_raw_data_3 : _GEN_117; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_119 = 2'h3 == io_forward_1_mshrid & 3'h4 == block_idx_1 ? forwardInfo_vec_3_raw_data_4 : _GEN_118; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_120 = 2'h3 == io_forward_1_mshrid & 3'h5 == block_idx_1 ? forwardInfo_vec_3_raw_data_5 : _GEN_119; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_121 = 2'h3 == io_forward_1_mshrid & 3'h6 == block_idx_1 ? forwardInfo_vec_3_raw_data_6 : _GEN_120; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_122 = 2'h3 == io_forward_1_mshrid & 3'h7 == block_idx_1 ? forwardInfo_vec_3_raw_data_7 : _GEN_121; // @[Cat.scala 31:{58,58}]
  wire [127:0] _selected_data_T_7 = {_GEN_122,_GEN_122}; // @[Cat.scala 31:58]
  wire [2:0] _selected_data_T_9 = block_idx_1 + 3'h1; // @[DCacheWrapper.scala 684:97]
  wire [63:0] _GEN_124 = 2'h0 == io_forward_1_mshrid & 3'h1 == _selected_data_T_9 ? forwardInfo_vec_0_raw_data_1 :
    forwardInfo_vec_0_raw_data_0; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_125 = 2'h0 == io_forward_1_mshrid & 3'h2 == _selected_data_T_9 ? forwardInfo_vec_0_raw_data_2 :
    _GEN_124; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_126 = 2'h0 == io_forward_1_mshrid & 3'h3 == _selected_data_T_9 ? forwardInfo_vec_0_raw_data_3 :
    _GEN_125; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_127 = 2'h0 == io_forward_1_mshrid & 3'h4 == _selected_data_T_9 ? forwardInfo_vec_0_raw_data_4 :
    _GEN_126; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_128 = 2'h0 == io_forward_1_mshrid & 3'h5 == _selected_data_T_9 ? forwardInfo_vec_0_raw_data_5 :
    _GEN_127; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_129 = 2'h0 == io_forward_1_mshrid & 3'h6 == _selected_data_T_9 ? forwardInfo_vec_0_raw_data_6 :
    _GEN_128; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_130 = 2'h0 == io_forward_1_mshrid & 3'h7 == _selected_data_T_9 ? forwardInfo_vec_0_raw_data_7 :
    _GEN_129; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_131 = 2'h1 == io_forward_1_mshrid & 3'h0 == _selected_data_T_9 ? forwardInfo_vec_1_raw_data_0 :
    _GEN_130; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_132 = 2'h1 == io_forward_1_mshrid & 3'h1 == _selected_data_T_9 ? forwardInfo_vec_1_raw_data_1 :
    _GEN_131; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_133 = 2'h1 == io_forward_1_mshrid & 3'h2 == _selected_data_T_9 ? forwardInfo_vec_1_raw_data_2 :
    _GEN_132; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_134 = 2'h1 == io_forward_1_mshrid & 3'h3 == _selected_data_T_9 ? forwardInfo_vec_1_raw_data_3 :
    _GEN_133; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_135 = 2'h1 == io_forward_1_mshrid & 3'h4 == _selected_data_T_9 ? forwardInfo_vec_1_raw_data_4 :
    _GEN_134; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_136 = 2'h1 == io_forward_1_mshrid & 3'h5 == _selected_data_T_9 ? forwardInfo_vec_1_raw_data_5 :
    _GEN_135; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_137 = 2'h1 == io_forward_1_mshrid & 3'h6 == _selected_data_T_9 ? forwardInfo_vec_1_raw_data_6 :
    _GEN_136; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_138 = 2'h1 == io_forward_1_mshrid & 3'h7 == _selected_data_T_9 ? forwardInfo_vec_1_raw_data_7 :
    _GEN_137; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_139 = 2'h2 == io_forward_1_mshrid & 3'h0 == _selected_data_T_9 ? forwardInfo_vec_2_raw_data_0 :
    _GEN_138; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_140 = 2'h2 == io_forward_1_mshrid & 3'h1 == _selected_data_T_9 ? forwardInfo_vec_2_raw_data_1 :
    _GEN_139; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_141 = 2'h2 == io_forward_1_mshrid & 3'h2 == _selected_data_T_9 ? forwardInfo_vec_2_raw_data_2 :
    _GEN_140; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_142 = 2'h2 == io_forward_1_mshrid & 3'h3 == _selected_data_T_9 ? forwardInfo_vec_2_raw_data_3 :
    _GEN_141; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_143 = 2'h2 == io_forward_1_mshrid & 3'h4 == _selected_data_T_9 ? forwardInfo_vec_2_raw_data_4 :
    _GEN_142; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_144 = 2'h2 == io_forward_1_mshrid & 3'h5 == _selected_data_T_9 ? forwardInfo_vec_2_raw_data_5 :
    _GEN_143; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_145 = 2'h2 == io_forward_1_mshrid & 3'h6 == _selected_data_T_9 ? forwardInfo_vec_2_raw_data_6 :
    _GEN_144; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_146 = 2'h2 == io_forward_1_mshrid & 3'h7 == _selected_data_T_9 ? forwardInfo_vec_2_raw_data_7 :
    _GEN_145; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_147 = 2'h3 == io_forward_1_mshrid & 3'h0 == _selected_data_T_9 ? forwardInfo_vec_3_raw_data_0 :
    _GEN_146; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_148 = 2'h3 == io_forward_1_mshrid & 3'h1 == _selected_data_T_9 ? forwardInfo_vec_3_raw_data_1 :
    _GEN_147; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_149 = 2'h3 == io_forward_1_mshrid & 3'h2 == _selected_data_T_9 ? forwardInfo_vec_3_raw_data_2 :
    _GEN_148; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_150 = 2'h3 == io_forward_1_mshrid & 3'h3 == _selected_data_T_9 ? forwardInfo_vec_3_raw_data_3 :
    _GEN_149; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_151 = 2'h3 == io_forward_1_mshrid & 3'h4 == _selected_data_T_9 ? forwardInfo_vec_3_raw_data_4 :
    _GEN_150; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_152 = 2'h3 == io_forward_1_mshrid & 3'h5 == _selected_data_T_9 ? forwardInfo_vec_3_raw_data_5 :
    _GEN_151; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_153 = 2'h3 == io_forward_1_mshrid & 3'h6 == _selected_data_T_9 ? forwardInfo_vec_3_raw_data_6 :
    _GEN_152; // @[Cat.scala 31:{58,58}]
  wire [63:0] _GEN_154 = 2'h3 == io_forward_1_mshrid & 3'h7 == _selected_data_T_9 ? forwardInfo_vec_3_raw_data_7 :
    _GEN_153; // @[Cat.scala 31:{58,58}]
  wire [127:0] _selected_data_T_10 = {_GEN_154,_GEN_122}; // @[Cat.scala 31:58]
  wire [127:0] selected_data_1 = io_forward_1_paddr[3] ? _selected_data_T_7 : _selected_data_T_10; // @[DCacheWrapper.scala 684:25]
  wire  _GEN_156 = 2'h1 == io_forward_1_mshrid ? forwardInfo_vec_1_inflight : forwardInfo_vec_0_inflight; // @[DCacheWrapper.scala 670:{23,23}]
  wire  _GEN_157 = 2'h2 == io_forward_1_mshrid ? forwardInfo_vec_2_inflight : _GEN_156; // @[DCacheWrapper.scala 670:{23,23}]
  wire  _GEN_158 = 2'h3 == io_forward_1_mshrid ? forwardInfo_vec_3_inflight : _GEN_157; // @[DCacheWrapper.scala 670:{23,23}]
  wire [35:0] _GEN_160 = 2'h1 == io_forward_1_mshrid ? forwardInfo_vec_1_paddr : forwardInfo_vec_0_paddr; // @[DCacheWrapper.scala 670:{86,86}]
  wire [35:0] _GEN_161 = 2'h2 == io_forward_1_mshrid ? forwardInfo_vec_2_paddr : _GEN_160; // @[DCacheWrapper.scala 670:{86,86}]
  wire [35:0] _GEN_162 = 2'h3 == io_forward_1_mshrid ? forwardInfo_vec_3_paddr : _GEN_161; // @[DCacheWrapper.scala 670:{86,86}]
  reg  io_forward_1_forward_result_valid_REG; // @[DCacheWrapper.scala 670:12]
  wire  _entries_0_io_primary_valid_T_1 = io_req_valid & _alloc_T_1; // @[MissQueue.scala 953:42]
  wire  _entries_0_io_primary_valid_T_3 = _entries_0_io_primary_valid_T_1 & _alloc_T; // @[MissQueue.scala 954:16]
  wire  _GEN_163 = io_mem_grant_bits_source == 4'h0 & entries_0_io_mem_grant_ready; // @[MissQueue.scala 939:22 962:47 963:24]
  wire  _T_42 = miss_req_pipe_reg_merge | miss_req_pipe_reg_alloc; // @[MissQueue.scala 157:12]
  reg  beatsLeft; // @[Arbiter.scala 87:30]
  wire  idle = ~beatsLeft; // @[Arbiter.scala 88:28]
  wire  out_4_earlyValid = entries_3_io_mem_acquire_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_3_earlyValid = entries_2_io_mem_acquire_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_2_earlyValid = entries_1_io_mem_acquire_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_1_earlyValid = entries_0_io_mem_acquire_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  acquire_from_pipereg_valid = miss_req_pipe_reg_alloc & ~(io_req_valid & _merge_T_3 & _merge_merge_store_T_3); // @[MissQueue.scala 206:11]
  wire [4:0] _readys_T = {out_4_earlyValid,out_3_earlyValid,out_2_earlyValid,out_1_earlyValid,acquire_from_pipereg_valid
    }; // @[Cat.scala 31:58]
  wire [5:0] _readys_T_1 = {_readys_T, 1'h0}; // @[package.scala 244:48]
  wire [4:0] _readys_T_3 = _readys_T | _readys_T_1[4:0]; // @[package.scala 244:43]
  wire [6:0] _readys_T_4 = {_readys_T_3, 2'h0}; // @[package.scala 244:48]
  wire [4:0] _readys_T_6 = _readys_T_3 | _readys_T_4[4:0]; // @[package.scala 244:43]
  wire [8:0] _readys_T_7 = {_readys_T_6, 4'h0}; // @[package.scala 244:48]
  wire [4:0] _readys_T_9 = _readys_T_6 | _readys_T_7[4:0]; // @[package.scala 244:43]
  wire [5:0] _readys_T_11 = {_readys_T_9, 1'h0}; // @[Arbiter.scala 16:78]
  wire [4:0] _readys_T_13 = ~_readys_T_11[4:0]; // @[Arbiter.scala 16:61]
  wire  readys__0 = _readys_T_13[0]; // @[Arbiter.scala 95:86]
  reg  state__0; // @[Arbiter.scala 116:26]
  wire  allowed__0 = idle ? readys__0 : state__0; // @[Arbiter.scala 121:24]
  wire  out_ready = io_mem_acquire_ready & allowed__0; // @[Arbiter.scala 123:31]
  wire  former_primary_ready = |entries_0_io_primary_ready; // @[MissQueue.scala 947:64]
  wire  _entries_1_io_primary_valid_T_4 = ~former_primary_ready; // @[MissQueue.scala 956:9]
  wire  _entries_1_io_primary_valid_T_5 = _entries_0_io_primary_valid_T_3 & _entries_1_io_primary_valid_T_4; // @[MissQueue.scala 955:17]
  wire  _GEN_195 = io_mem_grant_bits_source == 4'h1 ? entries_1_io_mem_grant_ready : _GEN_163; // @[MissQueue.scala 962:47 963:24]
  wire  former_primary_ready_1 = |alloc_hi; // @[MissQueue.scala 947:64]
  wire  _entries_2_io_primary_valid_T_4 = ~former_primary_ready_1; // @[MissQueue.scala 956:9]
  wire  _entries_2_io_primary_valid_T_5 = _entries_0_io_primary_valid_T_3 & _entries_2_io_primary_valid_T_4; // @[MissQueue.scala 955:17]
  wire  _GEN_227 = io_mem_grant_bits_source == 4'h2 ? entries_2_io_mem_grant_ready : _GEN_195; // @[MissQueue.scala 962:47 963:24]
  wire [2:0] _former_primary_ready_T_1 = {entries_0_io_primary_ready,entries_1_io_primary_ready,
    entries_2_io_primary_ready}; // @[Cat.scala 31:58]
  wire  former_primary_ready_2 = |_former_primary_ready_T_1; // @[MissQueue.scala 947:64]
  wire  _entries_3_io_primary_valid_T_4 = ~former_primary_ready_2; // @[MissQueue.scala 956:9]
  wire  _entries_3_io_primary_valid_T_5 = _entries_0_io_primary_valid_T_3 & _entries_3_io_primary_valid_T_4; // @[MissQueue.scala 955:17]
  wire  _acquire_from_pipereg_bits_grow_param_c_cat_T_5 = miss_req_pipe_reg_req_cmd == 5'h4; // @[package.scala 15:47]
  wire  _acquire_from_pipereg_bits_grow_param_c_cat_T_6 = miss_req_pipe_reg_req_cmd == 5'h9; // @[package.scala 15:47]
  wire  _acquire_from_pipereg_bits_grow_param_c_cat_T_7 = miss_req_pipe_reg_req_cmd == 5'ha; // @[package.scala 15:47]
  wire  _acquire_from_pipereg_bits_grow_param_c_cat_T_8 = miss_req_pipe_reg_req_cmd == 5'hb; // @[package.scala 15:47]
  wire  _acquire_from_pipereg_bits_grow_param_c_cat_T_11 = _acquire_from_pipereg_bits_grow_param_c_cat_T_5 |
    _acquire_from_pipereg_bits_grow_param_c_cat_T_6 | _acquire_from_pipereg_bits_grow_param_c_cat_T_7 |
    _acquire_from_pipereg_bits_grow_param_c_cat_T_8; // @[package.scala 72:59]
  wire  _acquire_from_pipereg_bits_grow_param_c_cat_T_12 = miss_req_pipe_reg_req_cmd == 5'h8; // @[package.scala 15:47]
  wire  _acquire_from_pipereg_bits_grow_param_c_cat_T_13 = miss_req_pipe_reg_req_cmd == 5'hc; // @[package.scala 15:47]
  wire  _acquire_from_pipereg_bits_grow_param_c_cat_T_14 = miss_req_pipe_reg_req_cmd == 5'hd; // @[package.scala 15:47]
  wire  _acquire_from_pipereg_bits_grow_param_c_cat_T_15 = miss_req_pipe_reg_req_cmd == 5'he; // @[package.scala 15:47]
  wire  _acquire_from_pipereg_bits_grow_param_c_cat_T_16 = miss_req_pipe_reg_req_cmd == 5'hf; // @[package.scala 15:47]
  wire  _acquire_from_pipereg_bits_grow_param_c_cat_T_20 = _acquire_from_pipereg_bits_grow_param_c_cat_T_12 |
    _acquire_from_pipereg_bits_grow_param_c_cat_T_13 | _acquire_from_pipereg_bits_grow_param_c_cat_T_14 |
    _acquire_from_pipereg_bits_grow_param_c_cat_T_15 | _acquire_from_pipereg_bits_grow_param_c_cat_T_16; // @[package.scala 72:59]
  wire  _acquire_from_pipereg_bits_grow_param_c_cat_T_21 = _acquire_from_pipereg_bits_grow_param_c_cat_T_11 |
    _acquire_from_pipereg_bits_grow_param_c_cat_T_20; // @[Consts.scala 82:44]
  wire  _acquire_from_pipereg_bits_grow_param_c_cat_T_22 = miss_req_pipe_reg_req_cmd == 5'h1 | miss_req_pipe_reg_req_cmd
     == 5'h11 | miss_req_pipe_reg_req_cmd == 5'h7 | _acquire_from_pipereg_bits_grow_param_c_cat_T_21; // @[Consts.scala 85:76]
  wire  _acquire_from_pipereg_bits_grow_param_c_cat_T_49 = _acquire_from_pipereg_bits_grow_param_c_cat_T_22 |
    miss_req_pipe_reg_req_cmd == 5'h3 | miss_req_pipe_reg_req_cmd == 5'h6; // @[Consts.scala 86:64]
  wire [3:0] _acquire_from_pipereg_bits_grow_param_T = {_acquire_from_pipereg_bits_grow_param_c_cat_T_22,
    _acquire_from_pipereg_bits_grow_param_c_cat_T_49,miss_req_pipe_reg_req_req_coh_state}; // @[Cat.scala 31:58]
  wire  _acquire_from_pipereg_bits_grow_param_T_25 = 4'hc == _acquire_from_pipereg_bits_grow_param_T; // @[Misc.scala 48:20]
  wire [1:0] _acquire_from_pipereg_bits_grow_param_T_27 = _acquire_from_pipereg_bits_grow_param_T_25 ? 2'h1 : 2'h0; // @[Misc.scala 34:36]
  wire  _acquire_from_pipereg_bits_grow_param_T_28 = 4'hd == _acquire_from_pipereg_bits_grow_param_T; // @[Misc.scala 48:20]
  wire [1:0] _acquire_from_pipereg_bits_grow_param_T_30 = _acquire_from_pipereg_bits_grow_param_T_28 ? 2'h2 :
    _acquire_from_pipereg_bits_grow_param_T_27; // @[Misc.scala 34:36]
  wire  _acquire_from_pipereg_bits_grow_param_T_31 = 4'h4 == _acquire_from_pipereg_bits_grow_param_T; // @[Misc.scala 48:20]
  wire [1:0] _acquire_from_pipereg_bits_grow_param_T_33 = _acquire_from_pipereg_bits_grow_param_T_31 ? 2'h1 :
    _acquire_from_pipereg_bits_grow_param_T_30; // @[Misc.scala 34:36]
  wire  _acquire_from_pipereg_bits_grow_param_T_34 = 4'h5 == _acquire_from_pipereg_bits_grow_param_T; // @[Misc.scala 48:20]
  wire [1:0] _acquire_from_pipereg_bits_grow_param_T_36 = _acquire_from_pipereg_bits_grow_param_T_34 ? 2'h2 :
    _acquire_from_pipereg_bits_grow_param_T_33; // @[Misc.scala 34:36]
  wire  _acquire_from_pipereg_bits_grow_param_T_37 = 4'h0 == _acquire_from_pipereg_bits_grow_param_T; // @[Misc.scala 48:20]
  wire [1:0] _acquire_from_pipereg_bits_grow_param_T_39 = _acquire_from_pipereg_bits_grow_param_T_37 ? 2'h0 :
    _acquire_from_pipereg_bits_grow_param_T_36; // @[Misc.scala 34:36]
  wire  _acquire_from_pipereg_bits_grow_param_T_40 = 4'he == _acquire_from_pipereg_bits_grow_param_T; // @[Misc.scala 48:20]
  wire [1:0] _acquire_from_pipereg_bits_grow_param_T_42 = _acquire_from_pipereg_bits_grow_param_T_40 ? 2'h3 :
    _acquire_from_pipereg_bits_grow_param_T_39; // @[Misc.scala 34:36]
  wire  _acquire_from_pipereg_bits_grow_param_T_43 = 4'hf == _acquire_from_pipereg_bits_grow_param_T; // @[Misc.scala 48:20]
  wire [1:0] _acquire_from_pipereg_bits_grow_param_T_45 = _acquire_from_pipereg_bits_grow_param_T_43 ? 2'h3 :
    _acquire_from_pipereg_bits_grow_param_T_42; // @[Misc.scala 34:36]
  wire  _acquire_from_pipereg_bits_grow_param_T_46 = 4'h6 == _acquire_from_pipereg_bits_grow_param_T; // @[Misc.scala 48:20]
  wire [1:0] _acquire_from_pipereg_bits_grow_param_T_48 = _acquire_from_pipereg_bits_grow_param_T_46 ? 2'h2 :
    _acquire_from_pipereg_bits_grow_param_T_45; // @[Misc.scala 34:36]
  wire  _acquire_from_pipereg_bits_grow_param_T_49 = 4'h7 == _acquire_from_pipereg_bits_grow_param_T; // @[Misc.scala 48:20]
  wire [1:0] _acquire_from_pipereg_bits_grow_param_T_51 = _acquire_from_pipereg_bits_grow_param_T_49 ? 2'h3 :
    _acquire_from_pipereg_bits_grow_param_T_48; // @[Misc.scala 34:36]
  wire  _acquire_from_pipereg_bits_grow_param_T_52 = 4'h1 == _acquire_from_pipereg_bits_grow_param_T; // @[Misc.scala 48:20]
  wire [1:0] _acquire_from_pipereg_bits_grow_param_T_54 = _acquire_from_pipereg_bits_grow_param_T_52 ? 2'h1 :
    _acquire_from_pipereg_bits_grow_param_T_51; // @[Misc.scala 34:36]
  wire  _acquire_from_pipereg_bits_grow_param_T_55 = 4'h2 == _acquire_from_pipereg_bits_grow_param_T; // @[Misc.scala 48:20]
  wire [1:0] _acquire_from_pipereg_bits_grow_param_T_57 = _acquire_from_pipereg_bits_grow_param_T_55 ? 2'h2 :
    _acquire_from_pipereg_bits_grow_param_T_54; // @[Misc.scala 34:36]
  wire  _acquire_from_pipereg_bits_grow_param_T_58 = 4'h3 == _acquire_from_pipereg_bits_grow_param_T; // @[Misc.scala 48:20]
  wire [1:0] acquire_from_pipereg_bits_grow_param = _acquire_from_pipereg_bits_grow_param_T_58 ? 2'h3 :
    _acquire_from_pipereg_bits_grow_param_T_57; // @[Misc.scala 34:36]
  wire [35:0] acquire_from_pipereg_bits_acquireBlock_address = {miss_req_pipe_reg_req_addr[35:6], 6'h0}; // @[L1Cache.scala 86:59]
  wire [2:0] acquire_from_pipereg_bits_acquirePerm_param = {{1'd0}, acquire_from_pipereg_bits_grow_param}; // @[Edges.scala 360:17 362:15]
  wire [3:0] acquire_from_pipereg_bits_acquirePerm_source = {{2'd0}, miss_req_pipe_reg_mshr_id}; // @[Edges.scala 360:17 364:15]
  wire [32:0] acquire_from_pipereg_bits_acquire_user_vaddr = miss_req_pipe_reg_req_vaddr[38:6]; // @[MissQueue.scala 228:55]
  wire  acquire_from_pipereg_bits_acquire_user_needHint = io_l2_pf_store_only ? _merge_merge_load_T_1 : 1'h1; // @[MissQueue.scala 230:52]
  wire  _acquire_from_pipereg_bits_T_2 = miss_req_pipe_reg_req_source == 4'h2; // @[MissQueue.scala 74:26]
  wire [2:0] _GEN_291 = _acquire_from_pipereg_bits_T_2 ? 3'h4 : 3'h6; // @[MissQueue.scala 236:31 237:49 239:49]
  wire [2:0] _GEN_292 = _merge_merge_load_T_1 ? 3'h3 : _GEN_291; // @[MissQueue.scala 234:33 235:49]
  wire [2:0] _GEN_293 = _merge_merge_load_T ? 3'h2 : _GEN_292; // @[MissQueue.scala 232:26 233:49]
  wire  latch = idle & io_mem_acquire_ready; // @[Arbiter.scala 89:24]
  wire  readys__1 = _readys_T_13[1]; // @[Arbiter.scala 95:86]
  wire  readys__2 = _readys_T_13[2]; // @[Arbiter.scala 95:86]
  wire  readys__3 = _readys_T_13[3]; // @[Arbiter.scala 95:86]
  wire  readys__4 = _readys_T_13[4]; // @[Arbiter.scala 95:86]
  wire  earlyWinner__0 = readys__0 & acquire_from_pipereg_valid; // @[Arbiter.scala 97:79]
  wire  earlyWinner__1 = readys__1 & out_1_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner__2 = readys__2 & out_2_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner__3 = readys__3 & out_3_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner__4 = readys__4 & out_4_earlyValid; // @[Arbiter.scala 97:79]
  wire  _T_89 = acquire_from_pipereg_valid | out_1_earlyValid | out_2_earlyValid | out_3_earlyValid | out_4_earlyValid; // @[Arbiter.scala 107:36]
  wire  muxStateEarly__0 = idle ? earlyWinner__0 : state__0; // @[Arbiter.scala 117:30]
  reg  state__1; // @[Arbiter.scala 116:26]
  wire  muxStateEarly__1 = idle ? earlyWinner__1 : state__1; // @[Arbiter.scala 117:30]
  reg  state__2; // @[Arbiter.scala 116:26]
  wire  muxStateEarly__2 = idle ? earlyWinner__2 : state__2; // @[Arbiter.scala 117:30]
  reg  state__3; // @[Arbiter.scala 116:26]
  wire  muxStateEarly__3 = idle ? earlyWinner__3 : state__3; // @[Arbiter.scala 117:30]
  reg  state__4; // @[Arbiter.scala 116:26]
  wire  muxStateEarly__4 = idle ? earlyWinner__4 : state__4; // @[Arbiter.scala 117:30]
  wire  _sink_ACancel_earlyValid_T_12 = state__0 & acquire_from_pipereg_valid | state__1 & out_1_earlyValid | state__2
     & out_2_earlyValid | state__3 & out_3_earlyValid | state__4 & out_4_earlyValid; // @[Mux.scala 27:73]
  wire  sink_ACancel_earlyValid = idle ? _T_89 : _sink_ACancel_earlyValid_T_12; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_2 = io_mem_acquire_ready & sink_ACancel_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire  allowed__1 = idle ? readys__1 : state__1; // @[Arbiter.scala 121:24]
  wire  allowed__2 = idle ? readys__2 : state__2; // @[Arbiter.scala 121:24]
  wire  allowed__3 = idle ? readys__3 : state__3; // @[Arbiter.scala 121:24]
  wire  allowed__4 = idle ? readys__4 : state__4; // @[Arbiter.scala 121:24]
  wire [31:0] _T_130 = muxStateEarly__0 ? 32'hffffffff : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_131 = muxStateEarly__1 ? 32'hffffffff : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_132 = muxStateEarly__2 ? 32'hffffffff : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_133 = muxStateEarly__3 ? 32'hffffffff : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_134 = muxStateEarly__4 ? 32'hffffffff : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_135 = _T_130 | _T_131; // @[Mux.scala 27:73]
  wire [31:0] _T_136 = _T_135 | _T_132; // @[Mux.scala 27:73]
  wire [31:0] _T_137 = _T_136 | _T_133; // @[Mux.scala 27:73]
  wire  out_1_bits_user_needHint = entries_0_io_mem_acquire_bits_user_needHint; // @[ReadyValidCancel.scala 68:19 71:14]
  wire  out_2_bits_user_needHint = entries_1_io_mem_acquire_bits_user_needHint; // @[ReadyValidCancel.scala 68:19 71:14]
  wire  out_3_bits_user_needHint = entries_2_io_mem_acquire_bits_user_needHint; // @[ReadyValidCancel.scala 68:19 71:14]
  wire  out_4_bits_user_needHint = entries_3_io_mem_acquire_bits_user_needHint; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [3:0] acquire_from_pipereg_bits_acquire_user_reqSource = {{1'd0}, _GEN_293}; // @[MissQueue.scala 210:23]
  wire [3:0] _T_148 = muxStateEarly__0 ? acquire_from_pipereg_bits_acquire_user_reqSource : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] out_1_bits_user_reqSource = entries_0_io_mem_acquire_bits_user_reqSource; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [3:0] _T_149 = muxStateEarly__1 ? out_1_bits_user_reqSource : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] out_2_bits_user_reqSource = entries_1_io_mem_acquire_bits_user_reqSource; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [3:0] _T_150 = muxStateEarly__2 ? out_2_bits_user_reqSource : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] out_3_bits_user_reqSource = entries_2_io_mem_acquire_bits_user_reqSource; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [3:0] _T_151 = muxStateEarly__3 ? out_3_bits_user_reqSource : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] out_4_bits_user_reqSource = entries_3_io_mem_acquire_bits_user_reqSource; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [3:0] _T_152 = muxStateEarly__4 ? out_4_bits_user_reqSource : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _T_153 = _T_148 | _T_149; // @[Mux.scala 27:73]
  wire [3:0] _T_154 = _T_153 | _T_150; // @[Mux.scala 27:73]
  wire [3:0] _T_155 = _T_154 | _T_151; // @[Mux.scala 27:73]
  wire [32:0] _T_157 = muxStateEarly__0 ? acquire_from_pipereg_bits_acquire_user_vaddr : 33'h0; // @[Mux.scala 27:73]
  wire [32:0] out_1_bits_user_vaddr = entries_0_io_mem_acquire_bits_user_vaddr; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [32:0] _T_158 = muxStateEarly__1 ? out_1_bits_user_vaddr : 33'h0; // @[Mux.scala 27:73]
  wire [32:0] out_2_bits_user_vaddr = entries_1_io_mem_acquire_bits_user_vaddr; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [32:0] _T_159 = muxStateEarly__2 ? out_2_bits_user_vaddr : 33'h0; // @[Mux.scala 27:73]
  wire [32:0] out_3_bits_user_vaddr = entries_2_io_mem_acquire_bits_user_vaddr; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [32:0] _T_160 = muxStateEarly__3 ? out_3_bits_user_vaddr : 33'h0; // @[Mux.scala 27:73]
  wire [32:0] out_4_bits_user_vaddr = entries_3_io_mem_acquire_bits_user_vaddr; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [32:0] _T_161 = muxStateEarly__4 ? out_4_bits_user_vaddr : 33'h0; // @[Mux.scala 27:73]
  wire [32:0] _T_162 = _T_157 | _T_158; // @[Mux.scala 27:73]
  wire [32:0] _T_163 = _T_162 | _T_159; // @[Mux.scala 27:73]
  wire [32:0] _T_164 = _T_163 | _T_160; // @[Mux.scala 27:73]
  wire [35:0] _T_166 = muxStateEarly__0 ? acquire_from_pipereg_bits_acquireBlock_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] out_1_bits_address = entries_0_io_mem_acquire_bits_address; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [35:0] _T_167 = muxStateEarly__1 ? out_1_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] out_2_bits_address = entries_1_io_mem_acquire_bits_address; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [35:0] _T_168 = muxStateEarly__2 ? out_2_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] out_3_bits_address = entries_2_io_mem_acquire_bits_address; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [35:0] _T_169 = muxStateEarly__3 ? out_3_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] out_4_bits_address = entries_3_io_mem_acquire_bits_address; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [35:0] _T_170 = muxStateEarly__4 ? out_4_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_171 = _T_166 | _T_167; // @[Mux.scala 27:73]
  wire [35:0] _T_172 = _T_171 | _T_168; // @[Mux.scala 27:73]
  wire [35:0] _T_173 = _T_172 | _T_169; // @[Mux.scala 27:73]
  wire [3:0] _T_175 = muxStateEarly__0 ? acquire_from_pipereg_bits_acquirePerm_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] out_1_bits_source = entries_0_io_mem_acquire_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [3:0] _T_176 = muxStateEarly__1 ? out_1_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] out_2_bits_source = entries_1_io_mem_acquire_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [3:0] _T_177 = muxStateEarly__2 ? out_2_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] out_3_bits_source = entries_2_io_mem_acquire_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [3:0] _T_178 = muxStateEarly__3 ? out_3_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] out_4_bits_source = entries_3_io_mem_acquire_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [3:0] _T_179 = muxStateEarly__4 ? out_4_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _T_180 = _T_175 | _T_176; // @[Mux.scala 27:73]
  wire [3:0] _T_181 = _T_180 | _T_177; // @[Mux.scala 27:73]
  wire [3:0] _T_182 = _T_181 | _T_178; // @[Mux.scala 27:73]
  wire [2:0] _T_184 = muxStateEarly__0 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_185 = muxStateEarly__1 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_186 = muxStateEarly__2 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_187 = muxStateEarly__3 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_188 = muxStateEarly__4 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_189 = _T_184 | _T_185; // @[Mux.scala 27:73]
  wire [2:0] _T_190 = _T_189 | _T_186; // @[Mux.scala 27:73]
  wire [2:0] _T_191 = _T_190 | _T_187; // @[Mux.scala 27:73]
  wire [2:0] _T_193 = muxStateEarly__0 ? acquire_from_pipereg_bits_acquirePerm_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_1_bits_param = entries_0_io_mem_acquire_bits_param; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_194 = muxStateEarly__1 ? out_1_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_2_bits_param = entries_1_io_mem_acquire_bits_param; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_195 = muxStateEarly__2 ? out_2_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_3_bits_param = entries_2_io_mem_acquire_bits_param; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_196 = muxStateEarly__3 ? out_3_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_4_bits_param = entries_3_io_mem_acquire_bits_param; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_197 = muxStateEarly__4 ? out_4_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_198 = _T_193 | _T_194; // @[Mux.scala 27:73]
  wire [2:0] _T_199 = _T_198 | _T_195; // @[Mux.scala 27:73]
  wire [2:0] _T_200 = _T_199 | _T_196; // @[Mux.scala 27:73]
  reg  beatsLeft_1; // @[Arbiter.scala 87:30]
  wire  idle_1 = ~beatsLeft_1; // @[Arbiter.scala 88:28]
  wire  latch_1 = idle_1 & io_mem_finish_ready; // @[Arbiter.scala 89:24]
  wire  out_6_earlyValid = entries_0_io_mem_finish_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_7_earlyValid = entries_1_io_mem_finish_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_8_earlyValid = entries_2_io_mem_finish_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_9_earlyValid = entries_3_io_mem_finish_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire [3:0] _readys_T_19 = {out_9_earlyValid,out_8_earlyValid,out_7_earlyValid,out_6_earlyValid}; // @[Cat.scala 31:58]
  wire [4:0] _readys_T_20 = {_readys_T_19, 1'h0}; // @[package.scala 244:48]
  wire [3:0] _readys_T_22 = _readys_T_19 | _readys_T_20[3:0]; // @[package.scala 244:43]
  wire [5:0] _readys_T_23 = {_readys_T_22, 2'h0}; // @[package.scala 244:48]
  wire [3:0] _readys_T_25 = _readys_T_22 | _readys_T_23[3:0]; // @[package.scala 244:43]
  wire [4:0] _readys_T_27 = {_readys_T_25, 1'h0}; // @[Arbiter.scala 16:78]
  wire [3:0] _readys_T_29 = ~_readys_T_27[3:0]; // @[Arbiter.scala 16:61]
  wire  readys_1_0 = _readys_T_29[0]; // @[Arbiter.scala 95:86]
  wire  readys_1_1 = _readys_T_29[1]; // @[Arbiter.scala 95:86]
  wire  readys_1_2 = _readys_T_29[2]; // @[Arbiter.scala 95:86]
  wire  readys_1_3 = _readys_T_29[3]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_1_0 = readys_1_0 & out_6_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_1_1 = readys_1_1 & out_7_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_1_2 = readys_1_2 & out_8_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_1_3 = readys_1_3 & out_9_earlyValid; // @[Arbiter.scala 97:79]
  wire  _T_231 = out_6_earlyValid | out_7_earlyValid | out_8_earlyValid | out_9_earlyValid; // @[Arbiter.scala 107:36]
  reg  state_1_0; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_1_0 = idle_1 ? earlyWinner_1_0 : state_1_0; // @[Arbiter.scala 117:30]
  reg  state_1_1; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_1_1 = idle_1 ? earlyWinner_1_1 : state_1_1; // @[Arbiter.scala 117:30]
  reg  state_1_2; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_1_2 = idle_1 ? earlyWinner_1_2 : state_1_2; // @[Arbiter.scala 117:30]
  reg  state_1_3; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_1_3 = idle_1 ? earlyWinner_1_3 : state_1_3; // @[Arbiter.scala 117:30]
  wire  _sink_ACancel_earlyValid_T_23 = state_1_0 & out_6_earlyValid | state_1_1 & out_7_earlyValid | state_1_2 &
    out_8_earlyValid | state_1_3 & out_9_earlyValid; // @[Mux.scala 27:73]
  wire  sink_ACancel_1_earlyValid = idle_1 ? _T_231 : _sink_ACancel_earlyValid_T_23; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_8 = io_mem_finish_ready & sink_ACancel_1_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire  allowed_1_0 = idle_1 ? readys_1_0 : state_1_0; // @[Arbiter.scala 121:24]
  wire  allowed_1_1 = idle_1 ? readys_1_1 : state_1_1; // @[Arbiter.scala 121:24]
  wire  allowed_1_2 = idle_1 ? readys_1_2 : state_1_2; // @[Arbiter.scala 121:24]
  wire  allowed_1_3 = idle_1 ? readys_1_3 : state_1_3; // @[Arbiter.scala 121:24]
  wire [8:0] out_6_bits_sink = entries_0_io_mem_finish_bits_sink; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [8:0] _T_251 = muxStateEarly_1_0 ? out_6_bits_sink : 9'h0; // @[Mux.scala 27:73]
  wire [8:0] out_7_bits_sink = entries_1_io_mem_finish_bits_sink; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [8:0] _T_252 = muxStateEarly_1_1 ? out_7_bits_sink : 9'h0; // @[Mux.scala 27:73]
  wire [8:0] out_8_bits_sink = entries_2_io_mem_finish_bits_sink; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [8:0] _T_253 = muxStateEarly_1_2 ? out_8_bits_sink : 9'h0; // @[Mux.scala 27:73]
  wire [8:0] out_9_bits_sink = entries_3_io_mem_finish_bits_sink; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [8:0] _T_254 = muxStateEarly_1_3 ? out_9_bits_sink : 9'h0; // @[Mux.scala 27:73]
  wire [8:0] _T_255 = _T_251 | _T_252; // @[Mux.scala 27:73]
  wire [8:0] _T_256 = _T_255 | _T_253; // @[Mux.scala 27:73]
  wire  _io_main_pipe_req_valid_WIRE_1 = entries_1_io_main_pipe_req_valid; // @[MissQueue.scala 1020:{36,36}]
  wire  _io_main_pipe_req_valid_WIRE_0 = entries_0_io_main_pipe_req_valid; // @[MissQueue.scala 1020:{36,36}]
  wire  _io_main_pipe_req_valid_WIRE_3 = entries_3_io_main_pipe_req_valid; // @[MissQueue.scala 1020:{36,36}]
  wire  _io_main_pipe_req_valid_WIRE_2 = entries_2_io_main_pipe_req_valid; // @[MissQueue.scala 1020:{36,36}]
  wire [3:0] _io_main_pipe_req_valid_T = {_io_main_pipe_req_valid_WIRE_3,_io_main_pipe_req_valid_WIRE_2,
    _io_main_pipe_req_valid_WIRE_1,_io_main_pipe_req_valid_WIRE_0}; // @[MissQueue.scala 1020:69]
  wire [3:0] _io_main_pipe_req_bits_T = entries_0_io_main_pipe_req_valid ? entries_0_io_main_pipe_req_bits_id : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_main_pipe_req_bits_T_1 = entries_1_io_main_pipe_req_valid ? entries_1_io_main_pipe_req_bits_id : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_main_pipe_req_bits_T_2 = entries_2_io_main_pipe_req_valid ? entries_2_io_main_pipe_req_bits_id : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_main_pipe_req_bits_T_3 = entries_3_io_main_pipe_req_valid ? entries_3_io_main_pipe_req_bits_id : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_main_pipe_req_bits_T_4 = _io_main_pipe_req_bits_T | _io_main_pipe_req_bits_T_1; // @[Mux.scala 27:73]
  wire [3:0] _io_main_pipe_req_bits_T_5 = _io_main_pipe_req_bits_T_4 | _io_main_pipe_req_bits_T_2; // @[Mux.scala 27:73]
  wire [7:0] _io_main_pipe_req_bits_T_28 = entries_0_io_main_pipe_req_valid ? entries_0_io_main_pipe_req_bits_amo_mask
     : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_main_pipe_req_bits_T_29 = entries_1_io_main_pipe_req_valid ? entries_1_io_main_pipe_req_bits_amo_mask
     : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_main_pipe_req_bits_T_30 = entries_2_io_main_pipe_req_valid ? entries_2_io_main_pipe_req_bits_amo_mask
     : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_main_pipe_req_bits_T_31 = entries_3_io_main_pipe_req_valid ? entries_3_io_main_pipe_req_bits_amo_mask
     : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_main_pipe_req_bits_T_32 = _io_main_pipe_req_bits_T_28 | _io_main_pipe_req_bits_T_29; // @[Mux.scala 27:73]
  wire [7:0] _io_main_pipe_req_bits_T_33 = _io_main_pipe_req_bits_T_32 | _io_main_pipe_req_bits_T_30; // @[Mux.scala 27:73]
  wire [63:0] _io_main_pipe_req_bits_T_35 = entries_0_io_main_pipe_req_valid ? entries_0_io_main_pipe_req_bits_amo_data
     : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_main_pipe_req_bits_T_36 = entries_1_io_main_pipe_req_valid ? entries_1_io_main_pipe_req_bits_amo_data
     : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_main_pipe_req_bits_T_37 = entries_2_io_main_pipe_req_valid ? entries_2_io_main_pipe_req_bits_amo_data
     : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_main_pipe_req_bits_T_38 = entries_3_io_main_pipe_req_valid ? entries_3_io_main_pipe_req_bits_amo_data
     : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_main_pipe_req_bits_T_39 = _io_main_pipe_req_bits_T_35 | _io_main_pipe_req_bits_T_36; // @[Mux.scala 27:73]
  wire [63:0] _io_main_pipe_req_bits_T_40 = _io_main_pipe_req_bits_T_39 | _io_main_pipe_req_bits_T_37; // @[Mux.scala 27:73]
  wire [2:0] _io_main_pipe_req_bits_T_42 = entries_0_io_main_pipe_req_valid ? entries_0_io_main_pipe_req_bits_word_idx
     : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_main_pipe_req_bits_T_43 = entries_1_io_main_pipe_req_valid ? entries_1_io_main_pipe_req_bits_word_idx
     : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_main_pipe_req_bits_T_44 = entries_2_io_main_pipe_req_valid ? entries_2_io_main_pipe_req_bits_word_idx
     : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_main_pipe_req_bits_T_45 = entries_3_io_main_pipe_req_valid ? entries_3_io_main_pipe_req_bits_word_idx
     : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_main_pipe_req_bits_T_46 = _io_main_pipe_req_bits_T_42 | _io_main_pipe_req_bits_T_43; // @[Mux.scala 27:73]
  wire [2:0] _io_main_pipe_req_bits_T_47 = _io_main_pipe_req_bits_T_46 | _io_main_pipe_req_bits_T_44; // @[Mux.scala 27:73]
  wire [63:0] _io_main_pipe_req_bits_T_49 = entries_0_io_main_pipe_req_valid ? 64'hffffffffffffffff : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_main_pipe_req_bits_T_50 = entries_1_io_main_pipe_req_valid ? 64'hffffffffffffffff : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_main_pipe_req_bits_T_51 = entries_2_io_main_pipe_req_valid ? 64'hffffffffffffffff : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_main_pipe_req_bits_T_52 = entries_3_io_main_pipe_req_valid ? 64'hffffffffffffffff : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _io_main_pipe_req_bits_T_53 = _io_main_pipe_req_bits_T_49 | _io_main_pipe_req_bits_T_50; // @[Mux.scala 27:73]
  wire [63:0] _io_main_pipe_req_bits_T_54 = _io_main_pipe_req_bits_T_53 | _io_main_pipe_req_bits_T_51; // @[Mux.scala 27:73]
  wire [511:0] _io_main_pipe_req_bits_T_56 = entries_0_io_main_pipe_req_valid ?
    entries_0_io_main_pipe_req_bits_store_data : 512'h0; // @[Mux.scala 27:73]
  wire [511:0] _io_main_pipe_req_bits_T_57 = entries_1_io_main_pipe_req_valid ?
    entries_1_io_main_pipe_req_bits_store_data : 512'h0; // @[Mux.scala 27:73]
  wire [511:0] _io_main_pipe_req_bits_T_58 = entries_2_io_main_pipe_req_valid ?
    entries_2_io_main_pipe_req_bits_store_data : 512'h0; // @[Mux.scala 27:73]
  wire [511:0] _io_main_pipe_req_bits_T_59 = entries_3_io_main_pipe_req_valid ?
    entries_3_io_main_pipe_req_bits_store_data : 512'h0; // @[Mux.scala 27:73]
  wire [511:0] _io_main_pipe_req_bits_T_60 = _io_main_pipe_req_bits_T_56 | _io_main_pipe_req_bits_T_57; // @[Mux.scala 27:73]
  wire [511:0] _io_main_pipe_req_bits_T_61 = _io_main_pipe_req_bits_T_60 | _io_main_pipe_req_bits_T_58; // @[Mux.scala 27:73]
  wire [35:0] _io_main_pipe_req_bits_T_63 = entries_0_io_main_pipe_req_valid ? entries_0_io_main_pipe_req_bits_addr : 36'h0
    ; // @[Mux.scala 27:73]
  wire [35:0] _io_main_pipe_req_bits_T_64 = entries_1_io_main_pipe_req_valid ? entries_1_io_main_pipe_req_bits_addr : 36'h0
    ; // @[Mux.scala 27:73]
  wire [35:0] _io_main_pipe_req_bits_T_65 = entries_2_io_main_pipe_req_valid ? entries_2_io_main_pipe_req_bits_addr : 36'h0
    ; // @[Mux.scala 27:73]
  wire [35:0] _io_main_pipe_req_bits_T_66 = entries_3_io_main_pipe_req_valid ? entries_3_io_main_pipe_req_bits_addr : 36'h0
    ; // @[Mux.scala 27:73]
  wire [35:0] _io_main_pipe_req_bits_T_67 = _io_main_pipe_req_bits_T_63 | _io_main_pipe_req_bits_T_64; // @[Mux.scala 27:73]
  wire [35:0] _io_main_pipe_req_bits_T_68 = _io_main_pipe_req_bits_T_67 | _io_main_pipe_req_bits_T_65; // @[Mux.scala 27:73]
  wire [38:0] _io_main_pipe_req_bits_T_70 = entries_0_io_main_pipe_req_valid ? entries_0_io_main_pipe_req_bits_vaddr : 39'h0
    ; // @[Mux.scala 27:73]
  wire [38:0] _io_main_pipe_req_bits_T_71 = entries_1_io_main_pipe_req_valid ? entries_1_io_main_pipe_req_bits_vaddr : 39'h0
    ; // @[Mux.scala 27:73]
  wire [38:0] _io_main_pipe_req_bits_T_72 = entries_2_io_main_pipe_req_valid ? entries_2_io_main_pipe_req_bits_vaddr : 39'h0
    ; // @[Mux.scala 27:73]
  wire [38:0] _io_main_pipe_req_bits_T_73 = entries_3_io_main_pipe_req_valid ? entries_3_io_main_pipe_req_bits_vaddr : 39'h0
    ; // @[Mux.scala 27:73]
  wire [38:0] _io_main_pipe_req_bits_T_74 = _io_main_pipe_req_bits_T_70 | _io_main_pipe_req_bits_T_71; // @[Mux.scala 27:73]
  wire [38:0] _io_main_pipe_req_bits_T_75 = _io_main_pipe_req_bits_T_74 | _io_main_pipe_req_bits_T_72; // @[Mux.scala 27:73]
  wire [4:0] _io_main_pipe_req_bits_T_77 = entries_0_io_main_pipe_req_valid ? entries_0_io_main_pipe_req_bits_cmd : 5'h0
    ; // @[Mux.scala 27:73]
  wire [4:0] _io_main_pipe_req_bits_T_78 = entries_1_io_main_pipe_req_valid ? entries_1_io_main_pipe_req_bits_cmd : 5'h0
    ; // @[Mux.scala 27:73]
  wire [4:0] _io_main_pipe_req_bits_T_79 = entries_2_io_main_pipe_req_valid ? entries_2_io_main_pipe_req_bits_cmd : 5'h0
    ; // @[Mux.scala 27:73]
  wire [4:0] _io_main_pipe_req_bits_T_80 = entries_3_io_main_pipe_req_valid ? entries_3_io_main_pipe_req_bits_cmd : 5'h0
    ; // @[Mux.scala 27:73]
  wire [4:0] _io_main_pipe_req_bits_T_81 = _io_main_pipe_req_bits_T_77 | _io_main_pipe_req_bits_T_78; // @[Mux.scala 27:73]
  wire [4:0] _io_main_pipe_req_bits_T_82 = _io_main_pipe_req_bits_T_81 | _io_main_pipe_req_bits_T_79; // @[Mux.scala 27:73]
  wire [3:0] _io_main_pipe_req_bits_T_84 = entries_0_io_main_pipe_req_valid ? entries_0_io_main_pipe_req_bits_source : 4'h0
    ; // @[Mux.scala 27:73]
  wire [3:0] _io_main_pipe_req_bits_T_85 = entries_1_io_main_pipe_req_valid ? entries_1_io_main_pipe_req_bits_source : 4'h0
    ; // @[Mux.scala 27:73]
  wire [3:0] _io_main_pipe_req_bits_T_86 = entries_2_io_main_pipe_req_valid ? entries_2_io_main_pipe_req_bits_source : 4'h0
    ; // @[Mux.scala 27:73]
  wire [3:0] _io_main_pipe_req_bits_T_87 = entries_3_io_main_pipe_req_valid ? entries_3_io_main_pipe_req_bits_source : 4'h0
    ; // @[Mux.scala 27:73]
  wire [3:0] _io_main_pipe_req_bits_T_88 = _io_main_pipe_req_bits_T_84 | _io_main_pipe_req_bits_T_85; // @[Mux.scala 27:73]
  wire [3:0] _io_main_pipe_req_bits_T_89 = _io_main_pipe_req_bits_T_88 | _io_main_pipe_req_bits_T_86; // @[Mux.scala 27:73]
  wire [7:0] _io_main_pipe_req_bits_T_112 = entries_0_io_main_pipe_req_valid ?
    entries_0_io_main_pipe_req_bits_miss_way_en : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_main_pipe_req_bits_T_113 = entries_1_io_main_pipe_req_valid ?
    entries_1_io_main_pipe_req_bits_miss_way_en : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_main_pipe_req_bits_T_114 = entries_2_io_main_pipe_req_valid ?
    entries_2_io_main_pipe_req_bits_miss_way_en : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_main_pipe_req_bits_T_115 = entries_3_io_main_pipe_req_valid ?
    entries_3_io_main_pipe_req_bits_miss_way_en : 8'h0; // @[Mux.scala 27:73]
  wire [7:0] _io_main_pipe_req_bits_T_116 = _io_main_pipe_req_bits_T_112 | _io_main_pipe_req_bits_T_113; // @[Mux.scala 27:73]
  wire [7:0] _io_main_pipe_req_bits_T_117 = _io_main_pipe_req_bits_T_116 | _io_main_pipe_req_bits_T_114; // @[Mux.scala 27:73]
  wire [1:0] _io_main_pipe_req_bits_T_126 = entries_0_io_main_pipe_req_valid ?
    entries_0_io_main_pipe_req_bits_miss_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_main_pipe_req_bits_T_127 = entries_1_io_main_pipe_req_valid ?
    entries_1_io_main_pipe_req_bits_miss_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_main_pipe_req_bits_T_128 = entries_2_io_main_pipe_req_valid ?
    entries_2_io_main_pipe_req_bits_miss_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_main_pipe_req_bits_T_129 = entries_3_io_main_pipe_req_valid ?
    entries_3_io_main_pipe_req_bits_miss_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_main_pipe_req_bits_T_130 = _io_main_pipe_req_bits_T_126 | _io_main_pipe_req_bits_T_127; // @[Mux.scala 27:73]
  wire [1:0] _io_main_pipe_req_bits_T_131 = _io_main_pipe_req_bits_T_130 | _io_main_pipe_req_bits_T_128; // @[Mux.scala 27:73]
  wire [1:0] _io_main_pipe_req_bits_T_133 = entries_0_io_main_pipe_req_valid ? entries_0_io_main_pipe_req_bits_miss_id
     : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_main_pipe_req_bits_T_134 = entries_1_io_main_pipe_req_valid ? entries_1_io_main_pipe_req_bits_miss_id
     : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_main_pipe_req_bits_T_135 = entries_2_io_main_pipe_req_valid ? entries_2_io_main_pipe_req_bits_miss_id
     : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_main_pipe_req_bits_T_136 = entries_3_io_main_pipe_req_valid ? entries_3_io_main_pipe_req_bits_miss_id
     : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _io_main_pipe_req_bits_T_137 = _io_main_pipe_req_bits_T_133 | _io_main_pipe_req_bits_T_134; // @[Mux.scala 27:73]
  wire [1:0] _io_main_pipe_req_bits_T_138 = _io_main_pipe_req_bits_T_137 | _io_main_pipe_req_bits_T_135; // @[Mux.scala 27:73]
  wire [3:0] _io_probe_block_T = {probe_block_vec_0,probe_block_vec_1,probe_block_vec_2,probe_block_vec_3}; // @[Cat.scala 31:58]
  wire  _rob_head_miss_in_dcache_WIRE_1 = entries_1_io_rob_head_query_resp; // @[MissQueue.scala 1095:{40,40}]
  wire  _rob_head_miss_in_dcache_WIRE_0 = entries_0_io_rob_head_query_resp; // @[MissQueue.scala 1095:{40,40}]
  wire  _rob_head_miss_in_dcache_WIRE_3 = entries_3_io_rob_head_query_resp; // @[MissQueue.scala 1095:{40,40}]
  wire  _rob_head_miss_in_dcache_WIRE_2 = entries_2_io_rob_head_query_resp; // @[MissQueue.scala 1095:{40,40}]
  wire [3:0] _rob_head_miss_in_dcache_T = {_rob_head_miss_in_dcache_WIRE_3,_rob_head_miss_in_dcache_WIRE_2,
    _rob_head_miss_in_dcache_WIRE_1,_rob_head_miss_in_dcache_WIRE_0}; // @[MissQueue.scala 1095:80]
  wire  rob_head_miss_in_dcache = |_rob_head_miss_in_dcache_T; // @[MissQueue.scala 1095:87]
  wire  _perfValidCount_T = ~entries_0_io_primary_ready; // @[MissQueue.scala 1112:63]
  wire  _perfValidCount_T_1 = ~entries_1_io_primary_ready; // @[MissQueue.scala 1112:63]
  wire  _perfValidCount_T_2 = ~entries_2_io_primary_ready; // @[MissQueue.scala 1112:63]
  wire  _perfValidCount_T_3 = ~entries_3_io_primary_ready; // @[MissQueue.scala 1112:63]
  wire [1:0] _perfValidCount_T_4 = _perfValidCount_T + _perfValidCount_T_1; // @[Bitwise.scala 48:55]
  wire [1:0] _perfValidCount_T_6 = _perfValidCount_T_2 + _perfValidCount_T_3; // @[Bitwise.scala 48:55]
  reg [2:0] perfValidCount; // @[MissQueue.scala 1112:31]
  wire [2:0] _T_374 = 3'h4 / 2'h2; // @[MissQueue.scala 1116:116]
  wire [4:0] _T_379 = 3'h4 * 2'h3; // @[MissQueue.scala 1117:116]
  wire [4:0] _T_380 = _T_379 / 3'h4; // @[MissQueue.scala 1117:120]
  wire [4:0] _GEN_543 = {{2'd0}, perfValidCount}; // @[MissQueue.scala 1117:94]
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
  MissEntry entries_0 ( // @[MissQueue.scala 857:50]
    .clock(entries_0_clock),
    .reset(entries_0_reset),
    .io_id(entries_0_io_id),
    .io_req_valid(entries_0_io_req_valid),
    .io_req_bits_source(entries_0_io_req_bits_source),
    .io_req_bits_addr(entries_0_io_req_bits_addr),
    .io_req_bits_vaddr(entries_0_io_req_bits_vaddr),
    .io_req_bits_way_en(entries_0_io_req_bits_way_en),
    .io_req_bits_cancel(entries_0_io_req_bits_cancel),
    .io_miss_req_pipe_reg_req_source(entries_0_io_miss_req_pipe_reg_req_source),
    .io_miss_req_pipe_reg_req_cmd(entries_0_io_miss_req_pipe_reg_req_cmd),
    .io_miss_req_pipe_reg_req_addr(entries_0_io_miss_req_pipe_reg_req_addr),
    .io_miss_req_pipe_reg_req_vaddr(entries_0_io_miss_req_pipe_reg_req_vaddr),
    .io_miss_req_pipe_reg_req_way_en(entries_0_io_miss_req_pipe_reg_req_way_en),
    .io_miss_req_pipe_reg_req_word_idx(entries_0_io_miss_req_pipe_reg_req_word_idx),
    .io_miss_req_pipe_reg_req_amo_data(entries_0_io_miss_req_pipe_reg_req_amo_data),
    .io_miss_req_pipe_reg_req_amo_mask(entries_0_io_miss_req_pipe_reg_req_amo_mask),
    .io_miss_req_pipe_reg_req_req_coh_state(entries_0_io_miss_req_pipe_reg_req_req_coh_state),
    .io_miss_req_pipe_reg_req_replace_coh_state(entries_0_io_miss_req_pipe_reg_req_replace_coh_state),
    .io_miss_req_pipe_reg_req_replace_tag(entries_0_io_miss_req_pipe_reg_req_replace_tag),
    .io_miss_req_pipe_reg_req_id(entries_0_io_miss_req_pipe_reg_req_id),
    .io_miss_req_pipe_reg_req_store_data(entries_0_io_miss_req_pipe_reg_req_store_data),
    .io_miss_req_pipe_reg_req_store_mask(entries_0_io_miss_req_pipe_reg_req_store_mask),
    .io_miss_req_pipe_reg_merge(entries_0_io_miss_req_pipe_reg_merge),
    .io_miss_req_pipe_reg_alloc(entries_0_io_miss_req_pipe_reg_alloc),
    .io_primary_valid(entries_0_io_primary_valid),
    .io_primary_ready(entries_0_io_primary_ready),
    .io_secondary_ready(entries_0_io_secondary_ready),
    .io_secondary_reject(entries_0_io_secondary_reject),
    .io_repl_way_en(entries_0_io_repl_way_en),
    .io_mem_acquire_ready(entries_0_io_mem_acquire_ready),
    .io_mem_acquire_valid(entries_0_io_mem_acquire_valid),
    .io_mem_acquire_bits_param(entries_0_io_mem_acquire_bits_param),
    .io_mem_acquire_bits_source(entries_0_io_mem_acquire_bits_source),
    .io_mem_acquire_bits_address(entries_0_io_mem_acquire_bits_address),
    .io_mem_acquire_bits_user_vaddr(entries_0_io_mem_acquire_bits_user_vaddr),
    .io_mem_acquire_bits_user_reqSource(entries_0_io_mem_acquire_bits_user_reqSource),
    .io_mem_acquire_bits_user_needHint(entries_0_io_mem_acquire_bits_user_needHint),
    .io_mem_grant_ready(entries_0_io_mem_grant_ready),
    .io_mem_grant_valid(entries_0_io_mem_grant_valid),
    .io_mem_grant_bits_opcode(entries_0_io_mem_grant_bits_opcode),
    .io_mem_grant_bits_param(entries_0_io_mem_grant_bits_param),
    .io_mem_grant_bits_size(entries_0_io_mem_grant_bits_size),
    .io_mem_grant_bits_sink(entries_0_io_mem_grant_bits_sink),
    .io_mem_grant_bits_denied(entries_0_io_mem_grant_bits_denied),
    .io_mem_grant_bits_data(entries_0_io_mem_grant_bits_data),
    .io_mem_grant_bits_corrupt(entries_0_io_mem_grant_bits_corrupt),
    .io_mem_finish_ready(entries_0_io_mem_finish_ready),
    .io_mem_finish_valid(entries_0_io_mem_finish_valid),
    .io_mem_finish_bits_sink(entries_0_io_mem_finish_bits_sink),
    .io_refill_pipe_req_ready(entries_0_io_refill_pipe_req_ready),
    .io_refill_pipe_req_valid(entries_0_io_refill_pipe_req_valid),
    .io_refill_pipe_req_bits_source(entries_0_io_refill_pipe_req_bits_source),
    .io_refill_pipe_req_bits_addr(entries_0_io_refill_pipe_req_bits_addr),
    .io_refill_pipe_req_bits_way_en(entries_0_io_refill_pipe_req_bits_way_en),
    .io_refill_pipe_req_bits_alias(entries_0_io_refill_pipe_req_bits_alias),
    .io_refill_pipe_req_bits_miss_id(entries_0_io_refill_pipe_req_bits_miss_id),
    .io_refill_pipe_req_bits_id(entries_0_io_refill_pipe_req_bits_id),
    .io_refill_pipe_req_bits_error(entries_0_io_refill_pipe_req_bits_error),
    .io_refill_pipe_req_bits_wmask(entries_0_io_refill_pipe_req_bits_wmask),
    .io_refill_pipe_req_bits_data_0(entries_0_io_refill_pipe_req_bits_data_0),
    .io_refill_pipe_req_bits_data_1(entries_0_io_refill_pipe_req_bits_data_1),
    .io_refill_pipe_req_bits_data_2(entries_0_io_refill_pipe_req_bits_data_2),
    .io_refill_pipe_req_bits_data_3(entries_0_io_refill_pipe_req_bits_data_3),
    .io_refill_pipe_req_bits_data_4(entries_0_io_refill_pipe_req_bits_data_4),
    .io_refill_pipe_req_bits_data_5(entries_0_io_refill_pipe_req_bits_data_5),
    .io_refill_pipe_req_bits_data_6(entries_0_io_refill_pipe_req_bits_data_6),
    .io_refill_pipe_req_bits_data_7(entries_0_io_refill_pipe_req_bits_data_7),
    .io_refill_pipe_req_bits_meta_coh_state(entries_0_io_refill_pipe_req_bits_meta_coh_state),
    .io_refill_pipe_resp(entries_0_io_refill_pipe_resp),
    .io_replace_pipe_req_ready(entries_0_io_replace_pipe_req_ready),
    .io_replace_pipe_req_valid(entries_0_io_replace_pipe_req_valid),
    .io_replace_pipe_req_bits_miss_id(entries_0_io_replace_pipe_req_bits_miss_id),
    .io_replace_pipe_req_bits_vaddr(entries_0_io_replace_pipe_req_bits_vaddr),
    .io_replace_pipe_req_bits_addr(entries_0_io_replace_pipe_req_bits_addr),
    .io_replace_pipe_req_bits_replace_way_en(entries_0_io_replace_pipe_req_bits_replace_way_en),
    .io_replace_pipe_resp(entries_0_io_replace_pipe_resp),
    .io_main_pipe_req_ready(entries_0_io_main_pipe_req_ready),
    .io_main_pipe_req_valid(entries_0_io_main_pipe_req_valid),
    .io_main_pipe_req_bits_miss_id(entries_0_io_main_pipe_req_bits_miss_id),
    .io_main_pipe_req_bits_miss_param(entries_0_io_main_pipe_req_bits_miss_param),
    .io_main_pipe_req_bits_miss_way_en(entries_0_io_main_pipe_req_bits_miss_way_en),
    .io_main_pipe_req_bits_source(entries_0_io_main_pipe_req_bits_source),
    .io_main_pipe_req_bits_cmd(entries_0_io_main_pipe_req_bits_cmd),
    .io_main_pipe_req_bits_vaddr(entries_0_io_main_pipe_req_bits_vaddr),
    .io_main_pipe_req_bits_addr(entries_0_io_main_pipe_req_bits_addr),
    .io_main_pipe_req_bits_store_data(entries_0_io_main_pipe_req_bits_store_data),
    .io_main_pipe_req_bits_word_idx(entries_0_io_main_pipe_req_bits_word_idx),
    .io_main_pipe_req_bits_amo_data(entries_0_io_main_pipe_req_bits_amo_data),
    .io_main_pipe_req_bits_amo_mask(entries_0_io_main_pipe_req_bits_amo_mask),
    .io_main_pipe_req_bits_error(entries_0_io_main_pipe_req_bits_error),
    .io_main_pipe_req_bits_id(entries_0_io_main_pipe_req_bits_id),
    .io_main_pipe_resp(entries_0_io_main_pipe_resp),
    .io_block_addr_valid(entries_0_io_block_addr_valid),
    .io_block_addr_bits(entries_0_io_block_addr_bits),
    .io_req_handled_by_this_entry(entries_0_io_req_handled_by_this_entry),
    .io_forwardInfo_inflight(entries_0_io_forwardInfo_inflight),
    .io_forwardInfo_paddr(entries_0_io_forwardInfo_paddr),
    .io_forwardInfo_raw_data_0(entries_0_io_forwardInfo_raw_data_0),
    .io_forwardInfo_raw_data_1(entries_0_io_forwardInfo_raw_data_1),
    .io_forwardInfo_raw_data_2(entries_0_io_forwardInfo_raw_data_2),
    .io_forwardInfo_raw_data_3(entries_0_io_forwardInfo_raw_data_3),
    .io_forwardInfo_raw_data_4(entries_0_io_forwardInfo_raw_data_4),
    .io_forwardInfo_raw_data_5(entries_0_io_forwardInfo_raw_data_5),
    .io_forwardInfo_raw_data_6(entries_0_io_forwardInfo_raw_data_6),
    .io_forwardInfo_raw_data_7(entries_0_io_forwardInfo_raw_data_7),
    .io_forwardInfo_firstbeat_valid(entries_0_io_forwardInfo_firstbeat_valid),
    .io_forwardInfo_lastbeat_valid(entries_0_io_forwardInfo_lastbeat_valid),
    .io_l2_pf_store_only(entries_0_io_l2_pf_store_only),
    .io_acquire_fired_by_pipe_reg(entries_0_io_acquire_fired_by_pipe_reg),
    .io_memSetPattenDetected(entries_0_io_memSetPattenDetected),
    .io_rob_head_query_vaddr(entries_0_io_rob_head_query_vaddr),
    .io_rob_head_query_query_valid(entries_0_io_rob_head_query_query_valid),
    .io_rob_head_query_resp(entries_0_io_rob_head_query_resp),
    .io_prefetch_info_late_prefetch(entries_0_io_prefetch_info_late_prefetch)
  );
  MissEntry entries_1 ( // @[MissQueue.scala 857:50]
    .clock(entries_1_clock),
    .reset(entries_1_reset),
    .io_id(entries_1_io_id),
    .io_req_valid(entries_1_io_req_valid),
    .io_req_bits_source(entries_1_io_req_bits_source),
    .io_req_bits_addr(entries_1_io_req_bits_addr),
    .io_req_bits_vaddr(entries_1_io_req_bits_vaddr),
    .io_req_bits_way_en(entries_1_io_req_bits_way_en),
    .io_req_bits_cancel(entries_1_io_req_bits_cancel),
    .io_miss_req_pipe_reg_req_source(entries_1_io_miss_req_pipe_reg_req_source),
    .io_miss_req_pipe_reg_req_cmd(entries_1_io_miss_req_pipe_reg_req_cmd),
    .io_miss_req_pipe_reg_req_addr(entries_1_io_miss_req_pipe_reg_req_addr),
    .io_miss_req_pipe_reg_req_vaddr(entries_1_io_miss_req_pipe_reg_req_vaddr),
    .io_miss_req_pipe_reg_req_way_en(entries_1_io_miss_req_pipe_reg_req_way_en),
    .io_miss_req_pipe_reg_req_word_idx(entries_1_io_miss_req_pipe_reg_req_word_idx),
    .io_miss_req_pipe_reg_req_amo_data(entries_1_io_miss_req_pipe_reg_req_amo_data),
    .io_miss_req_pipe_reg_req_amo_mask(entries_1_io_miss_req_pipe_reg_req_amo_mask),
    .io_miss_req_pipe_reg_req_req_coh_state(entries_1_io_miss_req_pipe_reg_req_req_coh_state),
    .io_miss_req_pipe_reg_req_replace_coh_state(entries_1_io_miss_req_pipe_reg_req_replace_coh_state),
    .io_miss_req_pipe_reg_req_replace_tag(entries_1_io_miss_req_pipe_reg_req_replace_tag),
    .io_miss_req_pipe_reg_req_id(entries_1_io_miss_req_pipe_reg_req_id),
    .io_miss_req_pipe_reg_req_store_data(entries_1_io_miss_req_pipe_reg_req_store_data),
    .io_miss_req_pipe_reg_req_store_mask(entries_1_io_miss_req_pipe_reg_req_store_mask),
    .io_miss_req_pipe_reg_merge(entries_1_io_miss_req_pipe_reg_merge),
    .io_miss_req_pipe_reg_alloc(entries_1_io_miss_req_pipe_reg_alloc),
    .io_primary_valid(entries_1_io_primary_valid),
    .io_primary_ready(entries_1_io_primary_ready),
    .io_secondary_ready(entries_1_io_secondary_ready),
    .io_secondary_reject(entries_1_io_secondary_reject),
    .io_repl_way_en(entries_1_io_repl_way_en),
    .io_mem_acquire_ready(entries_1_io_mem_acquire_ready),
    .io_mem_acquire_valid(entries_1_io_mem_acquire_valid),
    .io_mem_acquire_bits_param(entries_1_io_mem_acquire_bits_param),
    .io_mem_acquire_bits_source(entries_1_io_mem_acquire_bits_source),
    .io_mem_acquire_bits_address(entries_1_io_mem_acquire_bits_address),
    .io_mem_acquire_bits_user_vaddr(entries_1_io_mem_acquire_bits_user_vaddr),
    .io_mem_acquire_bits_user_reqSource(entries_1_io_mem_acquire_bits_user_reqSource),
    .io_mem_acquire_bits_user_needHint(entries_1_io_mem_acquire_bits_user_needHint),
    .io_mem_grant_ready(entries_1_io_mem_grant_ready),
    .io_mem_grant_valid(entries_1_io_mem_grant_valid),
    .io_mem_grant_bits_opcode(entries_1_io_mem_grant_bits_opcode),
    .io_mem_grant_bits_param(entries_1_io_mem_grant_bits_param),
    .io_mem_grant_bits_size(entries_1_io_mem_grant_bits_size),
    .io_mem_grant_bits_sink(entries_1_io_mem_grant_bits_sink),
    .io_mem_grant_bits_denied(entries_1_io_mem_grant_bits_denied),
    .io_mem_grant_bits_data(entries_1_io_mem_grant_bits_data),
    .io_mem_grant_bits_corrupt(entries_1_io_mem_grant_bits_corrupt),
    .io_mem_finish_ready(entries_1_io_mem_finish_ready),
    .io_mem_finish_valid(entries_1_io_mem_finish_valid),
    .io_mem_finish_bits_sink(entries_1_io_mem_finish_bits_sink),
    .io_refill_pipe_req_ready(entries_1_io_refill_pipe_req_ready),
    .io_refill_pipe_req_valid(entries_1_io_refill_pipe_req_valid),
    .io_refill_pipe_req_bits_source(entries_1_io_refill_pipe_req_bits_source),
    .io_refill_pipe_req_bits_addr(entries_1_io_refill_pipe_req_bits_addr),
    .io_refill_pipe_req_bits_way_en(entries_1_io_refill_pipe_req_bits_way_en),
    .io_refill_pipe_req_bits_alias(entries_1_io_refill_pipe_req_bits_alias),
    .io_refill_pipe_req_bits_miss_id(entries_1_io_refill_pipe_req_bits_miss_id),
    .io_refill_pipe_req_bits_id(entries_1_io_refill_pipe_req_bits_id),
    .io_refill_pipe_req_bits_error(entries_1_io_refill_pipe_req_bits_error),
    .io_refill_pipe_req_bits_wmask(entries_1_io_refill_pipe_req_bits_wmask),
    .io_refill_pipe_req_bits_data_0(entries_1_io_refill_pipe_req_bits_data_0),
    .io_refill_pipe_req_bits_data_1(entries_1_io_refill_pipe_req_bits_data_1),
    .io_refill_pipe_req_bits_data_2(entries_1_io_refill_pipe_req_bits_data_2),
    .io_refill_pipe_req_bits_data_3(entries_1_io_refill_pipe_req_bits_data_3),
    .io_refill_pipe_req_bits_data_4(entries_1_io_refill_pipe_req_bits_data_4),
    .io_refill_pipe_req_bits_data_5(entries_1_io_refill_pipe_req_bits_data_5),
    .io_refill_pipe_req_bits_data_6(entries_1_io_refill_pipe_req_bits_data_6),
    .io_refill_pipe_req_bits_data_7(entries_1_io_refill_pipe_req_bits_data_7),
    .io_refill_pipe_req_bits_meta_coh_state(entries_1_io_refill_pipe_req_bits_meta_coh_state),
    .io_refill_pipe_resp(entries_1_io_refill_pipe_resp),
    .io_replace_pipe_req_ready(entries_1_io_replace_pipe_req_ready),
    .io_replace_pipe_req_valid(entries_1_io_replace_pipe_req_valid),
    .io_replace_pipe_req_bits_miss_id(entries_1_io_replace_pipe_req_bits_miss_id),
    .io_replace_pipe_req_bits_vaddr(entries_1_io_replace_pipe_req_bits_vaddr),
    .io_replace_pipe_req_bits_addr(entries_1_io_replace_pipe_req_bits_addr),
    .io_replace_pipe_req_bits_replace_way_en(entries_1_io_replace_pipe_req_bits_replace_way_en),
    .io_replace_pipe_resp(entries_1_io_replace_pipe_resp),
    .io_main_pipe_req_ready(entries_1_io_main_pipe_req_ready),
    .io_main_pipe_req_valid(entries_1_io_main_pipe_req_valid),
    .io_main_pipe_req_bits_miss_id(entries_1_io_main_pipe_req_bits_miss_id),
    .io_main_pipe_req_bits_miss_param(entries_1_io_main_pipe_req_bits_miss_param),
    .io_main_pipe_req_bits_miss_way_en(entries_1_io_main_pipe_req_bits_miss_way_en),
    .io_main_pipe_req_bits_source(entries_1_io_main_pipe_req_bits_source),
    .io_main_pipe_req_bits_cmd(entries_1_io_main_pipe_req_bits_cmd),
    .io_main_pipe_req_bits_vaddr(entries_1_io_main_pipe_req_bits_vaddr),
    .io_main_pipe_req_bits_addr(entries_1_io_main_pipe_req_bits_addr),
    .io_main_pipe_req_bits_store_data(entries_1_io_main_pipe_req_bits_store_data),
    .io_main_pipe_req_bits_word_idx(entries_1_io_main_pipe_req_bits_word_idx),
    .io_main_pipe_req_bits_amo_data(entries_1_io_main_pipe_req_bits_amo_data),
    .io_main_pipe_req_bits_amo_mask(entries_1_io_main_pipe_req_bits_amo_mask),
    .io_main_pipe_req_bits_error(entries_1_io_main_pipe_req_bits_error),
    .io_main_pipe_req_bits_id(entries_1_io_main_pipe_req_bits_id),
    .io_main_pipe_resp(entries_1_io_main_pipe_resp),
    .io_block_addr_valid(entries_1_io_block_addr_valid),
    .io_block_addr_bits(entries_1_io_block_addr_bits),
    .io_req_handled_by_this_entry(entries_1_io_req_handled_by_this_entry),
    .io_forwardInfo_inflight(entries_1_io_forwardInfo_inflight),
    .io_forwardInfo_paddr(entries_1_io_forwardInfo_paddr),
    .io_forwardInfo_raw_data_0(entries_1_io_forwardInfo_raw_data_0),
    .io_forwardInfo_raw_data_1(entries_1_io_forwardInfo_raw_data_1),
    .io_forwardInfo_raw_data_2(entries_1_io_forwardInfo_raw_data_2),
    .io_forwardInfo_raw_data_3(entries_1_io_forwardInfo_raw_data_3),
    .io_forwardInfo_raw_data_4(entries_1_io_forwardInfo_raw_data_4),
    .io_forwardInfo_raw_data_5(entries_1_io_forwardInfo_raw_data_5),
    .io_forwardInfo_raw_data_6(entries_1_io_forwardInfo_raw_data_6),
    .io_forwardInfo_raw_data_7(entries_1_io_forwardInfo_raw_data_7),
    .io_forwardInfo_firstbeat_valid(entries_1_io_forwardInfo_firstbeat_valid),
    .io_forwardInfo_lastbeat_valid(entries_1_io_forwardInfo_lastbeat_valid),
    .io_l2_pf_store_only(entries_1_io_l2_pf_store_only),
    .io_acquire_fired_by_pipe_reg(entries_1_io_acquire_fired_by_pipe_reg),
    .io_memSetPattenDetected(entries_1_io_memSetPattenDetected),
    .io_rob_head_query_vaddr(entries_1_io_rob_head_query_vaddr),
    .io_rob_head_query_query_valid(entries_1_io_rob_head_query_query_valid),
    .io_rob_head_query_resp(entries_1_io_rob_head_query_resp),
    .io_prefetch_info_late_prefetch(entries_1_io_prefetch_info_late_prefetch)
  );
  MissEntry entries_2 ( // @[MissQueue.scala 857:50]
    .clock(entries_2_clock),
    .reset(entries_2_reset),
    .io_id(entries_2_io_id),
    .io_req_valid(entries_2_io_req_valid),
    .io_req_bits_source(entries_2_io_req_bits_source),
    .io_req_bits_addr(entries_2_io_req_bits_addr),
    .io_req_bits_vaddr(entries_2_io_req_bits_vaddr),
    .io_req_bits_way_en(entries_2_io_req_bits_way_en),
    .io_req_bits_cancel(entries_2_io_req_bits_cancel),
    .io_miss_req_pipe_reg_req_source(entries_2_io_miss_req_pipe_reg_req_source),
    .io_miss_req_pipe_reg_req_cmd(entries_2_io_miss_req_pipe_reg_req_cmd),
    .io_miss_req_pipe_reg_req_addr(entries_2_io_miss_req_pipe_reg_req_addr),
    .io_miss_req_pipe_reg_req_vaddr(entries_2_io_miss_req_pipe_reg_req_vaddr),
    .io_miss_req_pipe_reg_req_way_en(entries_2_io_miss_req_pipe_reg_req_way_en),
    .io_miss_req_pipe_reg_req_word_idx(entries_2_io_miss_req_pipe_reg_req_word_idx),
    .io_miss_req_pipe_reg_req_amo_data(entries_2_io_miss_req_pipe_reg_req_amo_data),
    .io_miss_req_pipe_reg_req_amo_mask(entries_2_io_miss_req_pipe_reg_req_amo_mask),
    .io_miss_req_pipe_reg_req_req_coh_state(entries_2_io_miss_req_pipe_reg_req_req_coh_state),
    .io_miss_req_pipe_reg_req_replace_coh_state(entries_2_io_miss_req_pipe_reg_req_replace_coh_state),
    .io_miss_req_pipe_reg_req_replace_tag(entries_2_io_miss_req_pipe_reg_req_replace_tag),
    .io_miss_req_pipe_reg_req_id(entries_2_io_miss_req_pipe_reg_req_id),
    .io_miss_req_pipe_reg_req_store_data(entries_2_io_miss_req_pipe_reg_req_store_data),
    .io_miss_req_pipe_reg_req_store_mask(entries_2_io_miss_req_pipe_reg_req_store_mask),
    .io_miss_req_pipe_reg_merge(entries_2_io_miss_req_pipe_reg_merge),
    .io_miss_req_pipe_reg_alloc(entries_2_io_miss_req_pipe_reg_alloc),
    .io_primary_valid(entries_2_io_primary_valid),
    .io_primary_ready(entries_2_io_primary_ready),
    .io_secondary_ready(entries_2_io_secondary_ready),
    .io_secondary_reject(entries_2_io_secondary_reject),
    .io_repl_way_en(entries_2_io_repl_way_en),
    .io_mem_acquire_ready(entries_2_io_mem_acquire_ready),
    .io_mem_acquire_valid(entries_2_io_mem_acquire_valid),
    .io_mem_acquire_bits_param(entries_2_io_mem_acquire_bits_param),
    .io_mem_acquire_bits_source(entries_2_io_mem_acquire_bits_source),
    .io_mem_acquire_bits_address(entries_2_io_mem_acquire_bits_address),
    .io_mem_acquire_bits_user_vaddr(entries_2_io_mem_acquire_bits_user_vaddr),
    .io_mem_acquire_bits_user_reqSource(entries_2_io_mem_acquire_bits_user_reqSource),
    .io_mem_acquire_bits_user_needHint(entries_2_io_mem_acquire_bits_user_needHint),
    .io_mem_grant_ready(entries_2_io_mem_grant_ready),
    .io_mem_grant_valid(entries_2_io_mem_grant_valid),
    .io_mem_grant_bits_opcode(entries_2_io_mem_grant_bits_opcode),
    .io_mem_grant_bits_param(entries_2_io_mem_grant_bits_param),
    .io_mem_grant_bits_size(entries_2_io_mem_grant_bits_size),
    .io_mem_grant_bits_sink(entries_2_io_mem_grant_bits_sink),
    .io_mem_grant_bits_denied(entries_2_io_mem_grant_bits_denied),
    .io_mem_grant_bits_data(entries_2_io_mem_grant_bits_data),
    .io_mem_grant_bits_corrupt(entries_2_io_mem_grant_bits_corrupt),
    .io_mem_finish_ready(entries_2_io_mem_finish_ready),
    .io_mem_finish_valid(entries_2_io_mem_finish_valid),
    .io_mem_finish_bits_sink(entries_2_io_mem_finish_bits_sink),
    .io_refill_pipe_req_ready(entries_2_io_refill_pipe_req_ready),
    .io_refill_pipe_req_valid(entries_2_io_refill_pipe_req_valid),
    .io_refill_pipe_req_bits_source(entries_2_io_refill_pipe_req_bits_source),
    .io_refill_pipe_req_bits_addr(entries_2_io_refill_pipe_req_bits_addr),
    .io_refill_pipe_req_bits_way_en(entries_2_io_refill_pipe_req_bits_way_en),
    .io_refill_pipe_req_bits_alias(entries_2_io_refill_pipe_req_bits_alias),
    .io_refill_pipe_req_bits_miss_id(entries_2_io_refill_pipe_req_bits_miss_id),
    .io_refill_pipe_req_bits_id(entries_2_io_refill_pipe_req_bits_id),
    .io_refill_pipe_req_bits_error(entries_2_io_refill_pipe_req_bits_error),
    .io_refill_pipe_req_bits_wmask(entries_2_io_refill_pipe_req_bits_wmask),
    .io_refill_pipe_req_bits_data_0(entries_2_io_refill_pipe_req_bits_data_0),
    .io_refill_pipe_req_bits_data_1(entries_2_io_refill_pipe_req_bits_data_1),
    .io_refill_pipe_req_bits_data_2(entries_2_io_refill_pipe_req_bits_data_2),
    .io_refill_pipe_req_bits_data_3(entries_2_io_refill_pipe_req_bits_data_3),
    .io_refill_pipe_req_bits_data_4(entries_2_io_refill_pipe_req_bits_data_4),
    .io_refill_pipe_req_bits_data_5(entries_2_io_refill_pipe_req_bits_data_5),
    .io_refill_pipe_req_bits_data_6(entries_2_io_refill_pipe_req_bits_data_6),
    .io_refill_pipe_req_bits_data_7(entries_2_io_refill_pipe_req_bits_data_7),
    .io_refill_pipe_req_bits_meta_coh_state(entries_2_io_refill_pipe_req_bits_meta_coh_state),
    .io_refill_pipe_resp(entries_2_io_refill_pipe_resp),
    .io_replace_pipe_req_ready(entries_2_io_replace_pipe_req_ready),
    .io_replace_pipe_req_valid(entries_2_io_replace_pipe_req_valid),
    .io_replace_pipe_req_bits_miss_id(entries_2_io_replace_pipe_req_bits_miss_id),
    .io_replace_pipe_req_bits_vaddr(entries_2_io_replace_pipe_req_bits_vaddr),
    .io_replace_pipe_req_bits_addr(entries_2_io_replace_pipe_req_bits_addr),
    .io_replace_pipe_req_bits_replace_way_en(entries_2_io_replace_pipe_req_bits_replace_way_en),
    .io_replace_pipe_resp(entries_2_io_replace_pipe_resp),
    .io_main_pipe_req_ready(entries_2_io_main_pipe_req_ready),
    .io_main_pipe_req_valid(entries_2_io_main_pipe_req_valid),
    .io_main_pipe_req_bits_miss_id(entries_2_io_main_pipe_req_bits_miss_id),
    .io_main_pipe_req_bits_miss_param(entries_2_io_main_pipe_req_bits_miss_param),
    .io_main_pipe_req_bits_miss_way_en(entries_2_io_main_pipe_req_bits_miss_way_en),
    .io_main_pipe_req_bits_source(entries_2_io_main_pipe_req_bits_source),
    .io_main_pipe_req_bits_cmd(entries_2_io_main_pipe_req_bits_cmd),
    .io_main_pipe_req_bits_vaddr(entries_2_io_main_pipe_req_bits_vaddr),
    .io_main_pipe_req_bits_addr(entries_2_io_main_pipe_req_bits_addr),
    .io_main_pipe_req_bits_store_data(entries_2_io_main_pipe_req_bits_store_data),
    .io_main_pipe_req_bits_word_idx(entries_2_io_main_pipe_req_bits_word_idx),
    .io_main_pipe_req_bits_amo_data(entries_2_io_main_pipe_req_bits_amo_data),
    .io_main_pipe_req_bits_amo_mask(entries_2_io_main_pipe_req_bits_amo_mask),
    .io_main_pipe_req_bits_error(entries_2_io_main_pipe_req_bits_error),
    .io_main_pipe_req_bits_id(entries_2_io_main_pipe_req_bits_id),
    .io_main_pipe_resp(entries_2_io_main_pipe_resp),
    .io_block_addr_valid(entries_2_io_block_addr_valid),
    .io_block_addr_bits(entries_2_io_block_addr_bits),
    .io_req_handled_by_this_entry(entries_2_io_req_handled_by_this_entry),
    .io_forwardInfo_inflight(entries_2_io_forwardInfo_inflight),
    .io_forwardInfo_paddr(entries_2_io_forwardInfo_paddr),
    .io_forwardInfo_raw_data_0(entries_2_io_forwardInfo_raw_data_0),
    .io_forwardInfo_raw_data_1(entries_2_io_forwardInfo_raw_data_1),
    .io_forwardInfo_raw_data_2(entries_2_io_forwardInfo_raw_data_2),
    .io_forwardInfo_raw_data_3(entries_2_io_forwardInfo_raw_data_3),
    .io_forwardInfo_raw_data_4(entries_2_io_forwardInfo_raw_data_4),
    .io_forwardInfo_raw_data_5(entries_2_io_forwardInfo_raw_data_5),
    .io_forwardInfo_raw_data_6(entries_2_io_forwardInfo_raw_data_6),
    .io_forwardInfo_raw_data_7(entries_2_io_forwardInfo_raw_data_7),
    .io_forwardInfo_firstbeat_valid(entries_2_io_forwardInfo_firstbeat_valid),
    .io_forwardInfo_lastbeat_valid(entries_2_io_forwardInfo_lastbeat_valid),
    .io_l2_pf_store_only(entries_2_io_l2_pf_store_only),
    .io_acquire_fired_by_pipe_reg(entries_2_io_acquire_fired_by_pipe_reg),
    .io_memSetPattenDetected(entries_2_io_memSetPattenDetected),
    .io_rob_head_query_vaddr(entries_2_io_rob_head_query_vaddr),
    .io_rob_head_query_query_valid(entries_2_io_rob_head_query_query_valid),
    .io_rob_head_query_resp(entries_2_io_rob_head_query_resp),
    .io_prefetch_info_late_prefetch(entries_2_io_prefetch_info_late_prefetch)
  );
  MissEntry entries_3 ( // @[MissQueue.scala 857:50]
    .clock(entries_3_clock),
    .reset(entries_3_reset),
    .io_id(entries_3_io_id),
    .io_req_valid(entries_3_io_req_valid),
    .io_req_bits_source(entries_3_io_req_bits_source),
    .io_req_bits_addr(entries_3_io_req_bits_addr),
    .io_req_bits_vaddr(entries_3_io_req_bits_vaddr),
    .io_req_bits_way_en(entries_3_io_req_bits_way_en),
    .io_req_bits_cancel(entries_3_io_req_bits_cancel),
    .io_miss_req_pipe_reg_req_source(entries_3_io_miss_req_pipe_reg_req_source),
    .io_miss_req_pipe_reg_req_cmd(entries_3_io_miss_req_pipe_reg_req_cmd),
    .io_miss_req_pipe_reg_req_addr(entries_3_io_miss_req_pipe_reg_req_addr),
    .io_miss_req_pipe_reg_req_vaddr(entries_3_io_miss_req_pipe_reg_req_vaddr),
    .io_miss_req_pipe_reg_req_way_en(entries_3_io_miss_req_pipe_reg_req_way_en),
    .io_miss_req_pipe_reg_req_word_idx(entries_3_io_miss_req_pipe_reg_req_word_idx),
    .io_miss_req_pipe_reg_req_amo_data(entries_3_io_miss_req_pipe_reg_req_amo_data),
    .io_miss_req_pipe_reg_req_amo_mask(entries_3_io_miss_req_pipe_reg_req_amo_mask),
    .io_miss_req_pipe_reg_req_req_coh_state(entries_3_io_miss_req_pipe_reg_req_req_coh_state),
    .io_miss_req_pipe_reg_req_replace_coh_state(entries_3_io_miss_req_pipe_reg_req_replace_coh_state),
    .io_miss_req_pipe_reg_req_replace_tag(entries_3_io_miss_req_pipe_reg_req_replace_tag),
    .io_miss_req_pipe_reg_req_id(entries_3_io_miss_req_pipe_reg_req_id),
    .io_miss_req_pipe_reg_req_store_data(entries_3_io_miss_req_pipe_reg_req_store_data),
    .io_miss_req_pipe_reg_req_store_mask(entries_3_io_miss_req_pipe_reg_req_store_mask),
    .io_miss_req_pipe_reg_merge(entries_3_io_miss_req_pipe_reg_merge),
    .io_miss_req_pipe_reg_alloc(entries_3_io_miss_req_pipe_reg_alloc),
    .io_primary_valid(entries_3_io_primary_valid),
    .io_primary_ready(entries_3_io_primary_ready),
    .io_secondary_ready(entries_3_io_secondary_ready),
    .io_secondary_reject(entries_3_io_secondary_reject),
    .io_repl_way_en(entries_3_io_repl_way_en),
    .io_mem_acquire_ready(entries_3_io_mem_acquire_ready),
    .io_mem_acquire_valid(entries_3_io_mem_acquire_valid),
    .io_mem_acquire_bits_param(entries_3_io_mem_acquire_bits_param),
    .io_mem_acquire_bits_source(entries_3_io_mem_acquire_bits_source),
    .io_mem_acquire_bits_address(entries_3_io_mem_acquire_bits_address),
    .io_mem_acquire_bits_user_vaddr(entries_3_io_mem_acquire_bits_user_vaddr),
    .io_mem_acquire_bits_user_reqSource(entries_3_io_mem_acquire_bits_user_reqSource),
    .io_mem_acquire_bits_user_needHint(entries_3_io_mem_acquire_bits_user_needHint),
    .io_mem_grant_ready(entries_3_io_mem_grant_ready),
    .io_mem_grant_valid(entries_3_io_mem_grant_valid),
    .io_mem_grant_bits_opcode(entries_3_io_mem_grant_bits_opcode),
    .io_mem_grant_bits_param(entries_3_io_mem_grant_bits_param),
    .io_mem_grant_bits_size(entries_3_io_mem_grant_bits_size),
    .io_mem_grant_bits_sink(entries_3_io_mem_grant_bits_sink),
    .io_mem_grant_bits_denied(entries_3_io_mem_grant_bits_denied),
    .io_mem_grant_bits_data(entries_3_io_mem_grant_bits_data),
    .io_mem_grant_bits_corrupt(entries_3_io_mem_grant_bits_corrupt),
    .io_mem_finish_ready(entries_3_io_mem_finish_ready),
    .io_mem_finish_valid(entries_3_io_mem_finish_valid),
    .io_mem_finish_bits_sink(entries_3_io_mem_finish_bits_sink),
    .io_refill_pipe_req_ready(entries_3_io_refill_pipe_req_ready),
    .io_refill_pipe_req_valid(entries_3_io_refill_pipe_req_valid),
    .io_refill_pipe_req_bits_source(entries_3_io_refill_pipe_req_bits_source),
    .io_refill_pipe_req_bits_addr(entries_3_io_refill_pipe_req_bits_addr),
    .io_refill_pipe_req_bits_way_en(entries_3_io_refill_pipe_req_bits_way_en),
    .io_refill_pipe_req_bits_alias(entries_3_io_refill_pipe_req_bits_alias),
    .io_refill_pipe_req_bits_miss_id(entries_3_io_refill_pipe_req_bits_miss_id),
    .io_refill_pipe_req_bits_id(entries_3_io_refill_pipe_req_bits_id),
    .io_refill_pipe_req_bits_error(entries_3_io_refill_pipe_req_bits_error),
    .io_refill_pipe_req_bits_wmask(entries_3_io_refill_pipe_req_bits_wmask),
    .io_refill_pipe_req_bits_data_0(entries_3_io_refill_pipe_req_bits_data_0),
    .io_refill_pipe_req_bits_data_1(entries_3_io_refill_pipe_req_bits_data_1),
    .io_refill_pipe_req_bits_data_2(entries_3_io_refill_pipe_req_bits_data_2),
    .io_refill_pipe_req_bits_data_3(entries_3_io_refill_pipe_req_bits_data_3),
    .io_refill_pipe_req_bits_data_4(entries_3_io_refill_pipe_req_bits_data_4),
    .io_refill_pipe_req_bits_data_5(entries_3_io_refill_pipe_req_bits_data_5),
    .io_refill_pipe_req_bits_data_6(entries_3_io_refill_pipe_req_bits_data_6),
    .io_refill_pipe_req_bits_data_7(entries_3_io_refill_pipe_req_bits_data_7),
    .io_refill_pipe_req_bits_meta_coh_state(entries_3_io_refill_pipe_req_bits_meta_coh_state),
    .io_refill_pipe_resp(entries_3_io_refill_pipe_resp),
    .io_replace_pipe_req_ready(entries_3_io_replace_pipe_req_ready),
    .io_replace_pipe_req_valid(entries_3_io_replace_pipe_req_valid),
    .io_replace_pipe_req_bits_miss_id(entries_3_io_replace_pipe_req_bits_miss_id),
    .io_replace_pipe_req_bits_vaddr(entries_3_io_replace_pipe_req_bits_vaddr),
    .io_replace_pipe_req_bits_addr(entries_3_io_replace_pipe_req_bits_addr),
    .io_replace_pipe_req_bits_replace_way_en(entries_3_io_replace_pipe_req_bits_replace_way_en),
    .io_replace_pipe_resp(entries_3_io_replace_pipe_resp),
    .io_main_pipe_req_ready(entries_3_io_main_pipe_req_ready),
    .io_main_pipe_req_valid(entries_3_io_main_pipe_req_valid),
    .io_main_pipe_req_bits_miss_id(entries_3_io_main_pipe_req_bits_miss_id),
    .io_main_pipe_req_bits_miss_param(entries_3_io_main_pipe_req_bits_miss_param),
    .io_main_pipe_req_bits_miss_way_en(entries_3_io_main_pipe_req_bits_miss_way_en),
    .io_main_pipe_req_bits_source(entries_3_io_main_pipe_req_bits_source),
    .io_main_pipe_req_bits_cmd(entries_3_io_main_pipe_req_bits_cmd),
    .io_main_pipe_req_bits_vaddr(entries_3_io_main_pipe_req_bits_vaddr),
    .io_main_pipe_req_bits_addr(entries_3_io_main_pipe_req_bits_addr),
    .io_main_pipe_req_bits_store_data(entries_3_io_main_pipe_req_bits_store_data),
    .io_main_pipe_req_bits_word_idx(entries_3_io_main_pipe_req_bits_word_idx),
    .io_main_pipe_req_bits_amo_data(entries_3_io_main_pipe_req_bits_amo_data),
    .io_main_pipe_req_bits_amo_mask(entries_3_io_main_pipe_req_bits_amo_mask),
    .io_main_pipe_req_bits_error(entries_3_io_main_pipe_req_bits_error),
    .io_main_pipe_req_bits_id(entries_3_io_main_pipe_req_bits_id),
    .io_main_pipe_resp(entries_3_io_main_pipe_resp),
    .io_block_addr_valid(entries_3_io_block_addr_valid),
    .io_block_addr_bits(entries_3_io_block_addr_bits),
    .io_req_handled_by_this_entry(entries_3_io_req_handled_by_this_entry),
    .io_forwardInfo_inflight(entries_3_io_forwardInfo_inflight),
    .io_forwardInfo_paddr(entries_3_io_forwardInfo_paddr),
    .io_forwardInfo_raw_data_0(entries_3_io_forwardInfo_raw_data_0),
    .io_forwardInfo_raw_data_1(entries_3_io_forwardInfo_raw_data_1),
    .io_forwardInfo_raw_data_2(entries_3_io_forwardInfo_raw_data_2),
    .io_forwardInfo_raw_data_3(entries_3_io_forwardInfo_raw_data_3),
    .io_forwardInfo_raw_data_4(entries_3_io_forwardInfo_raw_data_4),
    .io_forwardInfo_raw_data_5(entries_3_io_forwardInfo_raw_data_5),
    .io_forwardInfo_raw_data_6(entries_3_io_forwardInfo_raw_data_6),
    .io_forwardInfo_raw_data_7(entries_3_io_forwardInfo_raw_data_7),
    .io_forwardInfo_firstbeat_valid(entries_3_io_forwardInfo_firstbeat_valid),
    .io_forwardInfo_lastbeat_valid(entries_3_io_forwardInfo_lastbeat_valid),
    .io_l2_pf_store_only(entries_3_io_l2_pf_store_only),
    .io_acquire_fired_by_pipe_reg(entries_3_io_acquire_fired_by_pipe_reg),
    .io_memSetPattenDetected(entries_3_io_memSetPattenDetected),
    .io_rob_head_query_vaddr(entries_3_io_rob_head_query_vaddr),
    .io_rob_head_query_query_valid(entries_3_io_rob_head_query_query_valid),
    .io_rob_head_query_resp(entries_3_io_rob_head_query_resp),
    .io_prefetch_info_late_prefetch(entries_3_io_prefetch_info_late_prefetch)
  );
  Arbiter_13 refill_pipe_req_arb ( // @[DCacheWrapper.scala 250:21]
    .io_in_0_ready(refill_pipe_req_arb_io_in_0_ready),
    .io_in_0_valid(refill_pipe_req_arb_io_in_0_valid),
    .io_in_0_bits_source(refill_pipe_req_arb_io_in_0_bits_source),
    .io_in_0_bits_addr(refill_pipe_req_arb_io_in_0_bits_addr),
    .io_in_0_bits_way_en(refill_pipe_req_arb_io_in_0_bits_way_en),
    .io_in_0_bits_alias(refill_pipe_req_arb_io_in_0_bits_alias),
    .io_in_0_bits_miss_id(refill_pipe_req_arb_io_in_0_bits_miss_id),
    .io_in_0_bits_id(refill_pipe_req_arb_io_in_0_bits_id),
    .io_in_0_bits_error(refill_pipe_req_arb_io_in_0_bits_error),
    .io_in_0_bits_wmask(refill_pipe_req_arb_io_in_0_bits_wmask),
    .io_in_0_bits_data_0(refill_pipe_req_arb_io_in_0_bits_data_0),
    .io_in_0_bits_data_1(refill_pipe_req_arb_io_in_0_bits_data_1),
    .io_in_0_bits_data_2(refill_pipe_req_arb_io_in_0_bits_data_2),
    .io_in_0_bits_data_3(refill_pipe_req_arb_io_in_0_bits_data_3),
    .io_in_0_bits_data_4(refill_pipe_req_arb_io_in_0_bits_data_4),
    .io_in_0_bits_data_5(refill_pipe_req_arb_io_in_0_bits_data_5),
    .io_in_0_bits_data_6(refill_pipe_req_arb_io_in_0_bits_data_6),
    .io_in_0_bits_data_7(refill_pipe_req_arb_io_in_0_bits_data_7),
    .io_in_0_bits_meta_coh_state(refill_pipe_req_arb_io_in_0_bits_meta_coh_state),
    .io_in_1_ready(refill_pipe_req_arb_io_in_1_ready),
    .io_in_1_valid(refill_pipe_req_arb_io_in_1_valid),
    .io_in_1_bits_source(refill_pipe_req_arb_io_in_1_bits_source),
    .io_in_1_bits_addr(refill_pipe_req_arb_io_in_1_bits_addr),
    .io_in_1_bits_way_en(refill_pipe_req_arb_io_in_1_bits_way_en),
    .io_in_1_bits_alias(refill_pipe_req_arb_io_in_1_bits_alias),
    .io_in_1_bits_miss_id(refill_pipe_req_arb_io_in_1_bits_miss_id),
    .io_in_1_bits_id(refill_pipe_req_arb_io_in_1_bits_id),
    .io_in_1_bits_error(refill_pipe_req_arb_io_in_1_bits_error),
    .io_in_1_bits_wmask(refill_pipe_req_arb_io_in_1_bits_wmask),
    .io_in_1_bits_data_0(refill_pipe_req_arb_io_in_1_bits_data_0),
    .io_in_1_bits_data_1(refill_pipe_req_arb_io_in_1_bits_data_1),
    .io_in_1_bits_data_2(refill_pipe_req_arb_io_in_1_bits_data_2),
    .io_in_1_bits_data_3(refill_pipe_req_arb_io_in_1_bits_data_3),
    .io_in_1_bits_data_4(refill_pipe_req_arb_io_in_1_bits_data_4),
    .io_in_1_bits_data_5(refill_pipe_req_arb_io_in_1_bits_data_5),
    .io_in_1_bits_data_6(refill_pipe_req_arb_io_in_1_bits_data_6),
    .io_in_1_bits_data_7(refill_pipe_req_arb_io_in_1_bits_data_7),
    .io_in_1_bits_meta_coh_state(refill_pipe_req_arb_io_in_1_bits_meta_coh_state),
    .io_in_2_ready(refill_pipe_req_arb_io_in_2_ready),
    .io_in_2_valid(refill_pipe_req_arb_io_in_2_valid),
    .io_in_2_bits_source(refill_pipe_req_arb_io_in_2_bits_source),
    .io_in_2_bits_addr(refill_pipe_req_arb_io_in_2_bits_addr),
    .io_in_2_bits_way_en(refill_pipe_req_arb_io_in_2_bits_way_en),
    .io_in_2_bits_alias(refill_pipe_req_arb_io_in_2_bits_alias),
    .io_in_2_bits_miss_id(refill_pipe_req_arb_io_in_2_bits_miss_id),
    .io_in_2_bits_id(refill_pipe_req_arb_io_in_2_bits_id),
    .io_in_2_bits_error(refill_pipe_req_arb_io_in_2_bits_error),
    .io_in_2_bits_wmask(refill_pipe_req_arb_io_in_2_bits_wmask),
    .io_in_2_bits_data_0(refill_pipe_req_arb_io_in_2_bits_data_0),
    .io_in_2_bits_data_1(refill_pipe_req_arb_io_in_2_bits_data_1),
    .io_in_2_bits_data_2(refill_pipe_req_arb_io_in_2_bits_data_2),
    .io_in_2_bits_data_3(refill_pipe_req_arb_io_in_2_bits_data_3),
    .io_in_2_bits_data_4(refill_pipe_req_arb_io_in_2_bits_data_4),
    .io_in_2_bits_data_5(refill_pipe_req_arb_io_in_2_bits_data_5),
    .io_in_2_bits_data_6(refill_pipe_req_arb_io_in_2_bits_data_6),
    .io_in_2_bits_data_7(refill_pipe_req_arb_io_in_2_bits_data_7),
    .io_in_2_bits_meta_coh_state(refill_pipe_req_arb_io_in_2_bits_meta_coh_state),
    .io_in_3_ready(refill_pipe_req_arb_io_in_3_ready),
    .io_in_3_valid(refill_pipe_req_arb_io_in_3_valid),
    .io_in_3_bits_source(refill_pipe_req_arb_io_in_3_bits_source),
    .io_in_3_bits_addr(refill_pipe_req_arb_io_in_3_bits_addr),
    .io_in_3_bits_way_en(refill_pipe_req_arb_io_in_3_bits_way_en),
    .io_in_3_bits_alias(refill_pipe_req_arb_io_in_3_bits_alias),
    .io_in_3_bits_miss_id(refill_pipe_req_arb_io_in_3_bits_miss_id),
    .io_in_3_bits_id(refill_pipe_req_arb_io_in_3_bits_id),
    .io_in_3_bits_error(refill_pipe_req_arb_io_in_3_bits_error),
    .io_in_3_bits_wmask(refill_pipe_req_arb_io_in_3_bits_wmask),
    .io_in_3_bits_data_0(refill_pipe_req_arb_io_in_3_bits_data_0),
    .io_in_3_bits_data_1(refill_pipe_req_arb_io_in_3_bits_data_1),
    .io_in_3_bits_data_2(refill_pipe_req_arb_io_in_3_bits_data_2),
    .io_in_3_bits_data_3(refill_pipe_req_arb_io_in_3_bits_data_3),
    .io_in_3_bits_data_4(refill_pipe_req_arb_io_in_3_bits_data_4),
    .io_in_3_bits_data_5(refill_pipe_req_arb_io_in_3_bits_data_5),
    .io_in_3_bits_data_6(refill_pipe_req_arb_io_in_3_bits_data_6),
    .io_in_3_bits_data_7(refill_pipe_req_arb_io_in_3_bits_data_7),
    .io_in_3_bits_meta_coh_state(refill_pipe_req_arb_io_in_3_bits_meta_coh_state),
    .io_out_ready(refill_pipe_req_arb_io_out_ready),
    .io_out_valid(refill_pipe_req_arb_io_out_valid),
    .io_out_bits_source(refill_pipe_req_arb_io_out_bits_source),
    .io_out_bits_addr(refill_pipe_req_arb_io_out_bits_addr),
    .io_out_bits_way_en(refill_pipe_req_arb_io_out_bits_way_en),
    .io_out_bits_alias(refill_pipe_req_arb_io_out_bits_alias),
    .io_out_bits_miss_id(refill_pipe_req_arb_io_out_bits_miss_id),
    .io_out_bits_id(refill_pipe_req_arb_io_out_bits_id),
    .io_out_bits_error(refill_pipe_req_arb_io_out_bits_error),
    .io_out_bits_wmask(refill_pipe_req_arb_io_out_bits_wmask),
    .io_out_bits_data_0(refill_pipe_req_arb_io_out_bits_data_0),
    .io_out_bits_data_1(refill_pipe_req_arb_io_out_bits_data_1),
    .io_out_bits_data_2(refill_pipe_req_arb_io_out_bits_data_2),
    .io_out_bits_data_3(refill_pipe_req_arb_io_out_bits_data_3),
    .io_out_bits_data_4(refill_pipe_req_arb_io_out_bits_data_4),
    .io_out_bits_data_5(refill_pipe_req_arb_io_out_bits_data_5),
    .io_out_bits_data_6(refill_pipe_req_arb_io_out_bits_data_6),
    .io_out_bits_data_7(refill_pipe_req_arb_io_out_bits_data_7),
    .io_out_bits_meta_coh_state(refill_pipe_req_arb_io_out_bits_meta_coh_state)
  );
  PipelineRegModule pipelineReg ( // @[MemCommon.scala 400:29]
    .clock(pipelineReg_clock),
    .reset(pipelineReg_reset),
    .io_in_ready(pipelineReg_io_in_ready),
    .io_in_valid(pipelineReg_io_in_valid),
    .io_in_bits_addr(pipelineReg_io_in_bits_addr),
    .io_in_bits_way_en(pipelineReg_io_in_bits_way_en),
    .io_in_bits_alias(pipelineReg_io_in_bits_alias),
    .io_out_ready(pipelineReg_io_out_ready),
    .io_out_valid(pipelineReg_io_out_valid),
    .io_out_bits_addr(pipelineReg_io_out_bits_addr),
    .io_out_bits_way_en(pipelineReg_io_out_bits_way_en),
    .io_out_bits_alias(pipelineReg_io_out_bits_alias)
  );
  PipelineRegModule pipelineReg_1 ( // @[MemCommon.scala 400:29]
    .clock(pipelineReg_1_clock),
    .reset(pipelineReg_1_reset),
    .io_in_ready(pipelineReg_1_io_in_ready),
    .io_in_valid(pipelineReg_1_io_in_valid),
    .io_in_bits_addr(pipelineReg_1_io_in_bits_addr),
    .io_in_bits_way_en(pipelineReg_1_io_in_bits_way_en),
    .io_in_bits_alias(pipelineReg_1_io_in_bits_alias),
    .io_out_ready(pipelineReg_1_io_out_ready),
    .io_out_valid(pipelineReg_1_io_out_valid),
    .io_out_bits_addr(pipelineReg_1_io_out_bits_addr),
    .io_out_bits_way_en(pipelineReg_1_io_out_bits_way_en),
    .io_out_bits_alias(pipelineReg_1_io_out_bits_alias)
  );
  PipelineRegModule pipelineReg_2 ( // @[MemCommon.scala 400:29]
    .clock(pipelineReg_2_clock),
    .reset(pipelineReg_2_reset),
    .io_in_ready(pipelineReg_2_io_in_ready),
    .io_in_valid(pipelineReg_2_io_in_valid),
    .io_in_bits_addr(pipelineReg_2_io_in_bits_addr),
    .io_in_bits_way_en(pipelineReg_2_io_in_bits_way_en),
    .io_in_bits_alias(pipelineReg_2_io_in_bits_alias),
    .io_out_ready(pipelineReg_2_io_out_ready),
    .io_out_valid(pipelineReg_2_io_out_valid),
    .io_out_bits_addr(pipelineReg_2_io_out_bits_addr),
    .io_out_bits_way_en(pipelineReg_2_io_out_bits_way_en),
    .io_out_bits_alias(pipelineReg_2_io_out_bits_alias)
  );
  PipelineRegModule pipelineReg_3 ( // @[MemCommon.scala 400:29]
    .clock(pipelineReg_3_clock),
    .reset(pipelineReg_3_reset),
    .io_in_ready(pipelineReg_3_io_in_ready),
    .io_in_valid(pipelineReg_3_io_in_valid),
    .io_in_bits_addr(pipelineReg_3_io_in_bits_addr),
    .io_in_bits_way_en(pipelineReg_3_io_in_bits_way_en),
    .io_in_bits_alias(pipelineReg_3_io_in_bits_alias),
    .io_out_ready(pipelineReg_3_io_out_ready),
    .io_out_valid(pipelineReg_3_io_out_valid),
    .io_out_bits_addr(pipelineReg_3_io_out_bits_addr),
    .io_out_bits_way_en(pipelineReg_3_io_out_bits_way_en),
    .io_out_bits_alias(pipelineReg_3_io_out_bits_alias)
  );
  PipelineRegModule pipelineReg_4 ( // @[MemCommon.scala 400:29]
    .clock(pipelineReg_4_clock),
    .reset(pipelineReg_4_reset),
    .io_in_ready(pipelineReg_4_io_in_ready),
    .io_in_valid(pipelineReg_4_io_in_valid),
    .io_in_bits_addr(pipelineReg_4_io_in_bits_addr),
    .io_in_bits_way_en(pipelineReg_4_io_in_bits_way_en),
    .io_in_bits_alias(pipelineReg_4_io_in_bits_alias),
    .io_out_ready(pipelineReg_4_io_out_ready),
    .io_out_valid(pipelineReg_4_io_out_valid),
    .io_out_bits_addr(pipelineReg_4_io_out_bits_addr),
    .io_out_bits_way_en(pipelineReg_4_io_out_bits_way_en),
    .io_out_bits_alias(pipelineReg_4_io_out_bits_alias)
  );
  PipelineRegModule pipelineReg_5 ( // @[MemCommon.scala 400:29]
    .clock(pipelineReg_5_clock),
    .reset(pipelineReg_5_reset),
    .io_in_ready(pipelineReg_5_io_in_ready),
    .io_in_valid(pipelineReg_5_io_in_valid),
    .io_in_bits_addr(pipelineReg_5_io_in_bits_addr),
    .io_in_bits_way_en(pipelineReg_5_io_in_bits_way_en),
    .io_in_bits_alias(pipelineReg_5_io_in_bits_alias),
    .io_out_ready(pipelineReg_5_io_out_ready),
    .io_out_valid(pipelineReg_5_io_out_valid),
    .io_out_bits_addr(pipelineReg_5_io_out_bits_addr),
    .io_out_bits_way_en(pipelineReg_5_io_out_bits_way_en),
    .io_out_bits_alias(pipelineReg_5_io_out_bits_alias)
  );
  PipelineRegModule pipelineReg_6 ( // @[MemCommon.scala 400:29]
    .clock(pipelineReg_6_clock),
    .reset(pipelineReg_6_reset),
    .io_in_ready(pipelineReg_6_io_in_ready),
    .io_in_valid(pipelineReg_6_io_in_valid),
    .io_in_bits_addr(pipelineReg_6_io_in_bits_addr),
    .io_in_bits_way_en(pipelineReg_6_io_in_bits_way_en),
    .io_in_bits_alias(pipelineReg_6_io_in_bits_alias),
    .io_out_ready(pipelineReg_6_io_out_ready),
    .io_out_valid(pipelineReg_6_io_out_valid),
    .io_out_bits_addr(pipelineReg_6_io_out_bits_addr),
    .io_out_bits_way_en(pipelineReg_6_io_out_bits_way_en),
    .io_out_bits_alias(pipelineReg_6_io_out_bits_alias)
  );
  PipelineRegModule pipelineReg_7 ( // @[MemCommon.scala 400:29]
    .clock(pipelineReg_7_clock),
    .reset(pipelineReg_7_reset),
    .io_in_ready(pipelineReg_7_io_in_ready),
    .io_in_valid(pipelineReg_7_io_in_valid),
    .io_in_bits_addr(pipelineReg_7_io_in_bits_addr),
    .io_in_bits_way_en(pipelineReg_7_io_in_bits_way_en),
    .io_in_bits_alias(pipelineReg_7_io_in_bits_alias),
    .io_out_ready(pipelineReg_7_io_out_ready),
    .io_out_valid(pipelineReg_7_io_out_valid),
    .io_out_bits_addr(pipelineReg_7_io_out_bits_addr),
    .io_out_bits_way_en(pipelineReg_7_io_out_bits_way_en),
    .io_out_bits_alias(pipelineReg_7_io_out_bits_alias)
  );
  PipelineRegModule pipelineReg_8 ( // @[MemCommon.scala 400:29]
    .clock(pipelineReg_8_clock),
    .reset(pipelineReg_8_reset),
    .io_in_ready(pipelineReg_8_io_in_ready),
    .io_in_valid(pipelineReg_8_io_in_valid),
    .io_in_bits_addr(pipelineReg_8_io_in_bits_addr),
    .io_in_bits_way_en(pipelineReg_8_io_in_bits_way_en),
    .io_in_bits_alias(pipelineReg_8_io_in_bits_alias),
    .io_out_ready(pipelineReg_8_io_out_ready),
    .io_out_valid(pipelineReg_8_io_out_valid),
    .io_out_bits_addr(pipelineReg_8_io_out_bits_addr),
    .io_out_bits_way_en(pipelineReg_8_io_out_bits_way_en),
    .io_out_bits_alias(pipelineReg_8_io_out_bits_alias)
  );
  PipelineRegModule pipelineReg_9 ( // @[MemCommon.scala 400:29]
    .clock(pipelineReg_9_clock),
    .reset(pipelineReg_9_reset),
    .io_in_ready(pipelineReg_9_io_in_ready),
    .io_in_valid(pipelineReg_9_io_in_valid),
    .io_in_bits_addr(pipelineReg_9_io_in_bits_addr),
    .io_in_bits_way_en(pipelineReg_9_io_in_bits_way_en),
    .io_in_bits_alias(pipelineReg_9_io_in_bits_alias),
    .io_out_ready(pipelineReg_9_io_out_ready),
    .io_out_valid(pipelineReg_9_io_out_valid),
    .io_out_bits_addr(pipelineReg_9_io_out_bits_addr),
    .io_out_bits_way_en(pipelineReg_9_io_out_bits_way_en),
    .io_out_bits_alias(pipelineReg_9_io_out_bits_alias)
  );
  PipelineRegModule pipelineReg_10 ( // @[MemCommon.scala 400:29]
    .clock(pipelineReg_10_clock),
    .reset(pipelineReg_10_reset),
    .io_in_ready(pipelineReg_10_io_in_ready),
    .io_in_valid(pipelineReg_10_io_in_valid),
    .io_in_bits_addr(pipelineReg_10_io_in_bits_addr),
    .io_in_bits_way_en(pipelineReg_10_io_in_bits_way_en),
    .io_in_bits_alias(pipelineReg_10_io_in_bits_alias),
    .io_out_ready(pipelineReg_10_io_out_ready),
    .io_out_valid(pipelineReg_10_io_out_valid),
    .io_out_bits_addr(pipelineReg_10_io_out_bits_addr),
    .io_out_bits_way_en(pipelineReg_10_io_out_bits_way_en),
    .io_out_bits_alias(pipelineReg_10_io_out_bits_alias)
  );
  PipelineRegModule pipelineReg_11 ( // @[MemCommon.scala 400:29]
    .clock(pipelineReg_11_clock),
    .reset(pipelineReg_11_reset),
    .io_in_ready(pipelineReg_11_io_in_ready),
    .io_in_valid(pipelineReg_11_io_in_valid),
    .io_in_bits_addr(pipelineReg_11_io_in_bits_addr),
    .io_in_bits_way_en(pipelineReg_11_io_in_bits_way_en),
    .io_in_bits_alias(pipelineReg_11_io_in_bits_alias),
    .io_out_ready(pipelineReg_11_io_out_ready),
    .io_out_valid(pipelineReg_11_io_out_valid),
    .io_out_bits_addr(pipelineReg_11_io_out_bits_addr),
    .io_out_bits_way_en(pipelineReg_11_io_out_bits_way_en),
    .io_out_bits_alias(pipelineReg_11_io_out_bits_alias)
  );
  PipelineRegModule pipelineReg_12 ( // @[MemCommon.scala 400:29]
    .clock(pipelineReg_12_clock),
    .reset(pipelineReg_12_reset),
    .io_in_ready(pipelineReg_12_io_in_ready),
    .io_in_valid(pipelineReg_12_io_in_valid),
    .io_in_bits_addr(pipelineReg_12_io_in_bits_addr),
    .io_in_bits_way_en(pipelineReg_12_io_in_bits_way_en),
    .io_in_bits_alias(pipelineReg_12_io_in_bits_alias),
    .io_out_ready(pipelineReg_12_io_out_ready),
    .io_out_valid(pipelineReg_12_io_out_valid),
    .io_out_bits_addr(pipelineReg_12_io_out_bits_addr),
    .io_out_bits_way_en(pipelineReg_12_io_out_bits_way_en),
    .io_out_bits_alias(pipelineReg_12_io_out_bits_alias)
  );
  PipelineRegModule pipelineReg_13 ( // @[MemCommon.scala 400:29]
    .clock(pipelineReg_13_clock),
    .reset(pipelineReg_13_reset),
    .io_in_ready(pipelineReg_13_io_in_ready),
    .io_in_valid(pipelineReg_13_io_in_valid),
    .io_in_bits_addr(pipelineReg_13_io_in_bits_addr),
    .io_in_bits_way_en(pipelineReg_13_io_in_bits_way_en),
    .io_in_bits_alias(pipelineReg_13_io_in_bits_alias),
    .io_out_ready(pipelineReg_13_io_out_ready),
    .io_out_valid(pipelineReg_13_io_out_valid),
    .io_out_bits_addr(pipelineReg_13_io_out_bits_addr),
    .io_out_bits_way_en(pipelineReg_13_io_out_bits_way_en),
    .io_out_bits_alias(pipelineReg_13_io_out_bits_alias)
  );
  PipelineRegModule pipelineReg_14 ( // @[MemCommon.scala 400:29]
    .clock(pipelineReg_14_clock),
    .reset(pipelineReg_14_reset),
    .io_in_ready(pipelineReg_14_io_in_ready),
    .io_in_valid(pipelineReg_14_io_in_valid),
    .io_in_bits_addr(pipelineReg_14_io_in_bits_addr),
    .io_in_bits_way_en(pipelineReg_14_io_in_bits_way_en),
    .io_in_bits_alias(pipelineReg_14_io_in_bits_alias),
    .io_out_ready(pipelineReg_14_io_out_ready),
    .io_out_valid(pipelineReg_14_io_out_valid),
    .io_out_bits_addr(pipelineReg_14_io_out_bits_addr),
    .io_out_bits_way_en(pipelineReg_14_io_out_bits_way_en),
    .io_out_bits_alias(pipelineReg_14_io_out_bits_alias)
  );
  PipelineRegModule pipelineReg_15 ( // @[MemCommon.scala 400:29]
    .clock(pipelineReg_15_clock),
    .reset(pipelineReg_15_reset),
    .io_in_ready(pipelineReg_15_io_in_ready),
    .io_in_valid(pipelineReg_15_io_in_valid),
    .io_in_bits_addr(pipelineReg_15_io_in_bits_addr),
    .io_in_bits_way_en(pipelineReg_15_io_in_bits_way_en),
    .io_in_bits_alias(pipelineReg_15_io_in_bits_alias),
    .io_out_ready(pipelineReg_15_io_out_ready),
    .io_out_valid(pipelineReg_15_io_out_valid),
    .io_out_bits_addr(pipelineReg_15_io_out_bits_addr),
    .io_out_bits_way_en(pipelineReg_15_io_out_bits_way_en),
    .io_out_bits_alias(pipelineReg_15_io_out_bits_alias)
  );
  PipelineRegModule pipelineReg_16 ( // @[MemCommon.scala 400:29]
    .clock(pipelineReg_16_clock),
    .reset(pipelineReg_16_reset),
    .io_in_ready(pipelineReg_16_io_in_ready),
    .io_in_valid(pipelineReg_16_io_in_valid),
    .io_in_bits_addr(pipelineReg_16_io_in_bits_addr),
    .io_in_bits_way_en(pipelineReg_16_io_in_bits_way_en),
    .io_in_bits_alias(pipelineReg_16_io_in_bits_alias),
    .io_out_ready(pipelineReg_16_io_out_ready),
    .io_out_valid(pipelineReg_16_io_out_valid),
    .io_out_bits_addr(pipelineReg_16_io_out_bits_addr),
    .io_out_bits_way_en(pipelineReg_16_io_out_bits_way_en),
    .io_out_bits_alias(pipelineReg_16_io_out_bits_alias)
  );
  PipelineRegModule pipelineReg_17 ( // @[MemCommon.scala 400:29]
    .clock(pipelineReg_17_clock),
    .reset(pipelineReg_17_reset),
    .io_in_ready(pipelineReg_17_io_in_ready),
    .io_in_valid(pipelineReg_17_io_in_valid),
    .io_in_bits_addr(pipelineReg_17_io_in_bits_addr),
    .io_in_bits_way_en(pipelineReg_17_io_in_bits_way_en),
    .io_in_bits_alias(pipelineReg_17_io_in_bits_alias),
    .io_out_ready(pipelineReg_17_io_out_ready),
    .io_out_valid(pipelineReg_17_io_out_valid),
    .io_out_bits_addr(pipelineReg_17_io_out_bits_addr),
    .io_out_bits_way_en(pipelineReg_17_io_out_bits_way_en),
    .io_out_bits_alias(pipelineReg_17_io_out_bits_alias)
  );
  PipelineRegModule pipelineReg_18 ( // @[MemCommon.scala 400:29]
    .clock(pipelineReg_18_clock),
    .reset(pipelineReg_18_reset),
    .io_in_ready(pipelineReg_18_io_in_ready),
    .io_in_valid(pipelineReg_18_io_in_valid),
    .io_in_bits_addr(pipelineReg_18_io_in_bits_addr),
    .io_in_bits_way_en(pipelineReg_18_io_in_bits_way_en),
    .io_in_bits_alias(pipelineReg_18_io_in_bits_alias),
    .io_out_ready(pipelineReg_18_io_out_ready),
    .io_out_valid(pipelineReg_18_io_out_valid),
    .io_out_bits_addr(pipelineReg_18_io_out_bits_addr),
    .io_out_bits_way_en(pipelineReg_18_io_out_bits_way_en),
    .io_out_bits_alias(pipelineReg_18_io_out_bits_alias)
  );
  PipelineRegModule pipelineReg_19 ( // @[MemCommon.scala 400:29]
    .clock(pipelineReg_19_clock),
    .reset(pipelineReg_19_reset),
    .io_in_ready(pipelineReg_19_io_in_ready),
    .io_in_valid(pipelineReg_19_io_in_valid),
    .io_in_bits_addr(pipelineReg_19_io_in_bits_addr),
    .io_in_bits_way_en(pipelineReg_19_io_in_bits_way_en),
    .io_in_bits_alias(pipelineReg_19_io_in_bits_alias),
    .io_out_ready(pipelineReg_19_io_out_ready),
    .io_out_valid(pipelineReg_19_io_out_valid),
    .io_out_bits_addr(pipelineReg_19_io_out_bits_addr),
    .io_out_bits_way_en(pipelineReg_19_io_out_bits_way_en),
    .io_out_bits_alias(pipelineReg_19_io_out_bits_alias)
  );
  PipelineRegModule pipelineReg_20 ( // @[MemCommon.scala 400:29]
    .clock(pipelineReg_20_clock),
    .reset(pipelineReg_20_reset),
    .io_in_ready(pipelineReg_20_io_in_ready),
    .io_in_valid(pipelineReg_20_io_in_valid),
    .io_in_bits_addr(pipelineReg_20_io_in_bits_addr),
    .io_in_bits_way_en(pipelineReg_20_io_in_bits_way_en),
    .io_in_bits_alias(pipelineReg_20_io_in_bits_alias),
    .io_out_ready(pipelineReg_20_io_out_ready),
    .io_out_valid(pipelineReg_20_io_out_valid),
    .io_out_bits_addr(pipelineReg_20_io_out_bits_addr),
    .io_out_bits_way_en(pipelineReg_20_io_out_bits_way_en),
    .io_out_bits_alias(pipelineReg_20_io_out_bits_alias)
  );
  PipelineRegModule pipelineReg_21 ( // @[MemCommon.scala 400:29]
    .clock(pipelineReg_21_clock),
    .reset(pipelineReg_21_reset),
    .io_in_ready(pipelineReg_21_io_in_ready),
    .io_in_valid(pipelineReg_21_io_in_valid),
    .io_in_bits_addr(pipelineReg_21_io_in_bits_addr),
    .io_in_bits_way_en(pipelineReg_21_io_in_bits_way_en),
    .io_in_bits_alias(pipelineReg_21_io_in_bits_alias),
    .io_out_ready(pipelineReg_21_io_out_ready),
    .io_out_valid(pipelineReg_21_io_out_valid),
    .io_out_bits_addr(pipelineReg_21_io_out_bits_addr),
    .io_out_bits_way_en(pipelineReg_21_io_out_bits_way_en),
    .io_out_bits_alias(pipelineReg_21_io_out_bits_alias)
  );
  PipelineRegModule pipelineReg_22 ( // @[MemCommon.scala 400:29]
    .clock(pipelineReg_22_clock),
    .reset(pipelineReg_22_reset),
    .io_in_ready(pipelineReg_22_io_in_ready),
    .io_in_valid(pipelineReg_22_io_in_valid),
    .io_in_bits_addr(pipelineReg_22_io_in_bits_addr),
    .io_in_bits_way_en(pipelineReg_22_io_in_bits_way_en),
    .io_in_bits_alias(pipelineReg_22_io_in_bits_alias),
    .io_out_ready(pipelineReg_22_io_out_ready),
    .io_out_valid(pipelineReg_22_io_out_valid),
    .io_out_bits_addr(pipelineReg_22_io_out_bits_addr),
    .io_out_bits_way_en(pipelineReg_22_io_out_bits_way_en),
    .io_out_bits_alias(pipelineReg_22_io_out_bits_alias)
  );
  PipelineRegModule pipelineReg_23 ( // @[MemCommon.scala 400:29]
    .clock(pipelineReg_23_clock),
    .reset(pipelineReg_23_reset),
    .io_in_ready(pipelineReg_23_io_in_ready),
    .io_in_valid(pipelineReg_23_io_in_valid),
    .io_in_bits_addr(pipelineReg_23_io_in_bits_addr),
    .io_in_bits_way_en(pipelineReg_23_io_in_bits_way_en),
    .io_in_bits_alias(pipelineReg_23_io_in_bits_alias),
    .io_out_ready(pipelineReg_23_io_out_ready),
    .io_out_valid(pipelineReg_23_io_out_valid),
    .io_out_bits_addr(pipelineReg_23_io_out_bits_addr),
    .io_out_bits_way_en(pipelineReg_23_io_out_bits_way_en),
    .io_out_bits_alias(pipelineReg_23_io_out_bits_alias)
  );
  PipelineRegModule_24 pipelineReg_24 ( // @[MemCommon.scala 400:29]
    .clock(pipelineReg_24_clock),
    .reset(pipelineReg_24_reset),
    .io_in_ready(pipelineReg_24_io_in_ready),
    .io_in_valid(pipelineReg_24_io_in_valid),
    .io_in_bits_source(pipelineReg_24_io_in_bits_source),
    .io_in_bits_addr(pipelineReg_24_io_in_bits_addr),
    .io_in_bits_way_en(pipelineReg_24_io_in_bits_way_en),
    .io_in_bits_alias(pipelineReg_24_io_in_bits_alias),
    .io_in_bits_miss_id(pipelineReg_24_io_in_bits_miss_id),
    .io_in_bits_id(pipelineReg_24_io_in_bits_id),
    .io_in_bits_error(pipelineReg_24_io_in_bits_error),
    .io_in_bits_wmask(pipelineReg_24_io_in_bits_wmask),
    .io_in_bits_data_0(pipelineReg_24_io_in_bits_data_0),
    .io_in_bits_data_1(pipelineReg_24_io_in_bits_data_1),
    .io_in_bits_data_2(pipelineReg_24_io_in_bits_data_2),
    .io_in_bits_data_3(pipelineReg_24_io_in_bits_data_3),
    .io_in_bits_data_4(pipelineReg_24_io_in_bits_data_4),
    .io_in_bits_data_5(pipelineReg_24_io_in_bits_data_5),
    .io_in_bits_data_6(pipelineReg_24_io_in_bits_data_6),
    .io_in_bits_data_7(pipelineReg_24_io_in_bits_data_7),
    .io_in_bits_meta_coh_state(pipelineReg_24_io_in_bits_meta_coh_state),
    .io_out_ready(pipelineReg_24_io_out_ready),
    .io_out_valid(pipelineReg_24_io_out_valid),
    .io_out_bits_source(pipelineReg_24_io_out_bits_source),
    .io_out_bits_addr(pipelineReg_24_io_out_bits_addr),
    .io_out_bits_way_en(pipelineReg_24_io_out_bits_way_en),
    .io_out_bits_alias(pipelineReg_24_io_out_bits_alias),
    .io_out_bits_miss_id(pipelineReg_24_io_out_bits_miss_id),
    .io_out_bits_id(pipelineReg_24_io_out_bits_id),
    .io_out_bits_error(pipelineReg_24_io_out_bits_error),
    .io_out_bits_wmask(pipelineReg_24_io_out_bits_wmask),
    .io_out_bits_data_0(pipelineReg_24_io_out_bits_data_0),
    .io_out_bits_data_1(pipelineReg_24_io_out_bits_data_1),
    .io_out_bits_data_2(pipelineReg_24_io_out_bits_data_2),
    .io_out_bits_data_3(pipelineReg_24_io_out_bits_data_3),
    .io_out_bits_data_4(pipelineReg_24_io_out_bits_data_4),
    .io_out_bits_data_5(pipelineReg_24_io_out_bits_data_5),
    .io_out_bits_data_6(pipelineReg_24_io_out_bits_data_6),
    .io_out_bits_data_7(pipelineReg_24_io_out_bits_data_7),
    .io_out_bits_meta_coh_state(pipelineReg_24_io_out_bits_meta_coh_state)
  );
  Arbiter_12 replace_pipe_req_arb ( // @[DCacheWrapper.scala 262:21]
    .io_in_0_ready(replace_pipe_req_arb_io_in_0_ready),
    .io_in_0_valid(replace_pipe_req_arb_io_in_0_valid),
    .io_in_0_bits_miss(replace_pipe_req_arb_io_in_0_bits_miss),
    .io_in_0_bits_miss_id(replace_pipe_req_arb_io_in_0_bits_miss_id),
    .io_in_0_bits_miss_param(replace_pipe_req_arb_io_in_0_bits_miss_param),
    .io_in_0_bits_miss_dirty(replace_pipe_req_arb_io_in_0_bits_miss_dirty),
    .io_in_0_bits_miss_way_en(replace_pipe_req_arb_io_in_0_bits_miss_way_en),
    .io_in_0_bits_probe(replace_pipe_req_arb_io_in_0_bits_probe),
    .io_in_0_bits_probe_param(replace_pipe_req_arb_io_in_0_bits_probe_param),
    .io_in_0_bits_probe_need_data(replace_pipe_req_arb_io_in_0_bits_probe_need_data),
    .io_in_0_bits_source(replace_pipe_req_arb_io_in_0_bits_source),
    .io_in_0_bits_cmd(replace_pipe_req_arb_io_in_0_bits_cmd),
    .io_in_0_bits_vaddr(replace_pipe_req_arb_io_in_0_bits_vaddr),
    .io_in_0_bits_addr(replace_pipe_req_arb_io_in_0_bits_addr),
    .io_in_0_bits_store_data(replace_pipe_req_arb_io_in_0_bits_store_data),
    .io_in_0_bits_store_mask(replace_pipe_req_arb_io_in_0_bits_store_mask),
    .io_in_0_bits_word_idx(replace_pipe_req_arb_io_in_0_bits_word_idx),
    .io_in_0_bits_amo_data(replace_pipe_req_arb_io_in_0_bits_amo_data),
    .io_in_0_bits_amo_mask(replace_pipe_req_arb_io_in_0_bits_amo_mask),
    .io_in_0_bits_error(replace_pipe_req_arb_io_in_0_bits_error),
    .io_in_0_bits_replace(replace_pipe_req_arb_io_in_0_bits_replace),
    .io_in_0_bits_replace_way_en(replace_pipe_req_arb_io_in_0_bits_replace_way_en),
    .io_in_0_bits_id(replace_pipe_req_arb_io_in_0_bits_id),
    .io_in_1_ready(replace_pipe_req_arb_io_in_1_ready),
    .io_in_1_valid(replace_pipe_req_arb_io_in_1_valid),
    .io_in_1_bits_miss(replace_pipe_req_arb_io_in_1_bits_miss),
    .io_in_1_bits_miss_id(replace_pipe_req_arb_io_in_1_bits_miss_id),
    .io_in_1_bits_miss_param(replace_pipe_req_arb_io_in_1_bits_miss_param),
    .io_in_1_bits_miss_dirty(replace_pipe_req_arb_io_in_1_bits_miss_dirty),
    .io_in_1_bits_miss_way_en(replace_pipe_req_arb_io_in_1_bits_miss_way_en),
    .io_in_1_bits_probe(replace_pipe_req_arb_io_in_1_bits_probe),
    .io_in_1_bits_probe_param(replace_pipe_req_arb_io_in_1_bits_probe_param),
    .io_in_1_bits_probe_need_data(replace_pipe_req_arb_io_in_1_bits_probe_need_data),
    .io_in_1_bits_source(replace_pipe_req_arb_io_in_1_bits_source),
    .io_in_1_bits_cmd(replace_pipe_req_arb_io_in_1_bits_cmd),
    .io_in_1_bits_vaddr(replace_pipe_req_arb_io_in_1_bits_vaddr),
    .io_in_1_bits_addr(replace_pipe_req_arb_io_in_1_bits_addr),
    .io_in_1_bits_store_data(replace_pipe_req_arb_io_in_1_bits_store_data),
    .io_in_1_bits_store_mask(replace_pipe_req_arb_io_in_1_bits_store_mask),
    .io_in_1_bits_word_idx(replace_pipe_req_arb_io_in_1_bits_word_idx),
    .io_in_1_bits_amo_data(replace_pipe_req_arb_io_in_1_bits_amo_data),
    .io_in_1_bits_amo_mask(replace_pipe_req_arb_io_in_1_bits_amo_mask),
    .io_in_1_bits_error(replace_pipe_req_arb_io_in_1_bits_error),
    .io_in_1_bits_replace(replace_pipe_req_arb_io_in_1_bits_replace),
    .io_in_1_bits_replace_way_en(replace_pipe_req_arb_io_in_1_bits_replace_way_en),
    .io_in_1_bits_id(replace_pipe_req_arb_io_in_1_bits_id),
    .io_in_2_ready(replace_pipe_req_arb_io_in_2_ready),
    .io_in_2_valid(replace_pipe_req_arb_io_in_2_valid),
    .io_in_2_bits_miss_id(replace_pipe_req_arb_io_in_2_bits_miss_id),
    .io_in_2_bits_probe(replace_pipe_req_arb_io_in_2_bits_probe),
    .io_in_2_bits_probe_param(replace_pipe_req_arb_io_in_2_bits_probe_param),
    .io_in_2_bits_probe_need_data(replace_pipe_req_arb_io_in_2_bits_probe_need_data),
    .io_in_2_bits_source(replace_pipe_req_arb_io_in_2_bits_source),
    .io_in_2_bits_cmd(replace_pipe_req_arb_io_in_2_bits_cmd),
    .io_in_2_bits_vaddr(replace_pipe_req_arb_io_in_2_bits_vaddr),
    .io_in_2_bits_addr(replace_pipe_req_arb_io_in_2_bits_addr),
    .io_in_2_bits_store_data(replace_pipe_req_arb_io_in_2_bits_store_data),
    .io_in_2_bits_store_mask(replace_pipe_req_arb_io_in_2_bits_store_mask),
    .io_in_2_bits_replace(replace_pipe_req_arb_io_in_2_bits_replace),
    .io_in_2_bits_replace_way_en(replace_pipe_req_arb_io_in_2_bits_replace_way_en),
    .io_in_2_bits_id(replace_pipe_req_arb_io_in_2_bits_id),
    .io_in_3_ready(replace_pipe_req_arb_io_in_3_ready),
    .io_in_3_valid(replace_pipe_req_arb_io_in_3_valid),
    .io_in_3_bits_miss(replace_pipe_req_arb_io_in_3_bits_miss),
    .io_in_3_bits_miss_id(replace_pipe_req_arb_io_in_3_bits_miss_id),
    .io_in_3_bits_miss_param(replace_pipe_req_arb_io_in_3_bits_miss_param),
    .io_in_3_bits_miss_dirty(replace_pipe_req_arb_io_in_3_bits_miss_dirty),
    .io_in_3_bits_miss_way_en(replace_pipe_req_arb_io_in_3_bits_miss_way_en),
    .io_in_3_bits_probe(replace_pipe_req_arb_io_in_3_bits_probe),
    .io_in_3_bits_probe_param(replace_pipe_req_arb_io_in_3_bits_probe_param),
    .io_in_3_bits_probe_need_data(replace_pipe_req_arb_io_in_3_bits_probe_need_data),
    .io_in_3_bits_source(replace_pipe_req_arb_io_in_3_bits_source),
    .io_in_3_bits_cmd(replace_pipe_req_arb_io_in_3_bits_cmd),
    .io_in_3_bits_vaddr(replace_pipe_req_arb_io_in_3_bits_vaddr),
    .io_in_3_bits_addr(replace_pipe_req_arb_io_in_3_bits_addr),
    .io_in_3_bits_store_data(replace_pipe_req_arb_io_in_3_bits_store_data),
    .io_in_3_bits_store_mask(replace_pipe_req_arb_io_in_3_bits_store_mask),
    .io_in_3_bits_word_idx(replace_pipe_req_arb_io_in_3_bits_word_idx),
    .io_in_3_bits_amo_data(replace_pipe_req_arb_io_in_3_bits_amo_data),
    .io_in_3_bits_amo_mask(replace_pipe_req_arb_io_in_3_bits_amo_mask),
    .io_in_3_bits_error(replace_pipe_req_arb_io_in_3_bits_error),
    .io_in_3_bits_replace(replace_pipe_req_arb_io_in_3_bits_replace),
    .io_in_3_bits_replace_way_en(replace_pipe_req_arb_io_in_3_bits_replace_way_en),
    .io_in_3_bits_id(replace_pipe_req_arb_io_in_3_bits_id),
    .io_out_ready(replace_pipe_req_arb_io_out_ready),
    .io_out_valid(replace_pipe_req_arb_io_out_valid),
    .io_out_bits_miss(replace_pipe_req_arb_io_out_bits_miss),
    .io_out_bits_miss_id(replace_pipe_req_arb_io_out_bits_miss_id),
    .io_out_bits_miss_param(replace_pipe_req_arb_io_out_bits_miss_param),
    .io_out_bits_miss_dirty(replace_pipe_req_arb_io_out_bits_miss_dirty),
    .io_out_bits_miss_way_en(replace_pipe_req_arb_io_out_bits_miss_way_en),
    .io_out_bits_probe(replace_pipe_req_arb_io_out_bits_probe),
    .io_out_bits_probe_param(replace_pipe_req_arb_io_out_bits_probe_param),
    .io_out_bits_probe_need_data(replace_pipe_req_arb_io_out_bits_probe_need_data),
    .io_out_bits_source(replace_pipe_req_arb_io_out_bits_source),
    .io_out_bits_cmd(replace_pipe_req_arb_io_out_bits_cmd),
    .io_out_bits_vaddr(replace_pipe_req_arb_io_out_bits_vaddr),
    .io_out_bits_addr(replace_pipe_req_arb_io_out_bits_addr),
    .io_out_bits_store_data(replace_pipe_req_arb_io_out_bits_store_data),
    .io_out_bits_store_mask(replace_pipe_req_arb_io_out_bits_store_mask),
    .io_out_bits_word_idx(replace_pipe_req_arb_io_out_bits_word_idx),
    .io_out_bits_amo_data(replace_pipe_req_arb_io_out_bits_amo_data),
    .io_out_bits_amo_mask(replace_pipe_req_arb_io_out_bits_amo_mask),
    .io_out_bits_error(replace_pipe_req_arb_io_out_bits_error),
    .io_out_bits_replace(replace_pipe_req_arb_io_out_bits_replace),
    .io_out_bits_replace_way_en(replace_pipe_req_arb_io_out_bits_replace_way_en),
    .io_out_bits_id(replace_pipe_req_arb_io_out_bits_id)
  );
  PipelineRegModule_25 pipelineReg_25 ( // @[MemCommon.scala 400:29]
    .clock(pipelineReg_25_clock),
    .reset(pipelineReg_25_reset),
    .io_in_ready(pipelineReg_25_io_in_ready),
    .io_in_valid(pipelineReg_25_io_in_valid),
    .io_in_bits_miss(pipelineReg_25_io_in_bits_miss),
    .io_in_bits_miss_id(pipelineReg_25_io_in_bits_miss_id),
    .io_in_bits_miss_param(pipelineReg_25_io_in_bits_miss_param),
    .io_in_bits_miss_dirty(pipelineReg_25_io_in_bits_miss_dirty),
    .io_in_bits_miss_way_en(pipelineReg_25_io_in_bits_miss_way_en),
    .io_in_bits_probe(pipelineReg_25_io_in_bits_probe),
    .io_in_bits_probe_param(pipelineReg_25_io_in_bits_probe_param),
    .io_in_bits_probe_need_data(pipelineReg_25_io_in_bits_probe_need_data),
    .io_in_bits_source(pipelineReg_25_io_in_bits_source),
    .io_in_bits_cmd(pipelineReg_25_io_in_bits_cmd),
    .io_in_bits_vaddr(pipelineReg_25_io_in_bits_vaddr),
    .io_in_bits_addr(pipelineReg_25_io_in_bits_addr),
    .io_in_bits_store_data(pipelineReg_25_io_in_bits_store_data),
    .io_in_bits_store_mask(pipelineReg_25_io_in_bits_store_mask),
    .io_in_bits_word_idx(pipelineReg_25_io_in_bits_word_idx),
    .io_in_bits_amo_data(pipelineReg_25_io_in_bits_amo_data),
    .io_in_bits_amo_mask(pipelineReg_25_io_in_bits_amo_mask),
    .io_in_bits_error(pipelineReg_25_io_in_bits_error),
    .io_in_bits_replace(pipelineReg_25_io_in_bits_replace),
    .io_in_bits_replace_way_en(pipelineReg_25_io_in_bits_replace_way_en),
    .io_in_bits_id(pipelineReg_25_io_in_bits_id),
    .io_out_ready(pipelineReg_25_io_out_ready),
    .io_out_valid(pipelineReg_25_io_out_valid),
    .io_out_bits_miss(pipelineReg_25_io_out_bits_miss),
    .io_out_bits_miss_id(pipelineReg_25_io_out_bits_miss_id),
    .io_out_bits_miss_param(pipelineReg_25_io_out_bits_miss_param),
    .io_out_bits_miss_dirty(pipelineReg_25_io_out_bits_miss_dirty),
    .io_out_bits_miss_way_en(pipelineReg_25_io_out_bits_miss_way_en),
    .io_out_bits_probe(pipelineReg_25_io_out_bits_probe),
    .io_out_bits_probe_param(pipelineReg_25_io_out_bits_probe_param),
    .io_out_bits_probe_need_data(pipelineReg_25_io_out_bits_probe_need_data),
    .io_out_bits_source(pipelineReg_25_io_out_bits_source),
    .io_out_bits_cmd(pipelineReg_25_io_out_bits_cmd),
    .io_out_bits_vaddr(pipelineReg_25_io_out_bits_vaddr),
    .io_out_bits_addr(pipelineReg_25_io_out_bits_addr),
    .io_out_bits_store_data(pipelineReg_25_io_out_bits_store_data),
    .io_out_bits_store_mask(pipelineReg_25_io_out_bits_store_mask),
    .io_out_bits_word_idx(pipelineReg_25_io_out_bits_word_idx),
    .io_out_bits_amo_data(pipelineReg_25_io_out_bits_amo_data),
    .io_out_bits_amo_mask(pipelineReg_25_io_out_bits_amo_mask),
    .io_out_bits_error(pipelineReg_25_io_out_bits_error),
    .io_out_bits_replace(pipelineReg_25_io_out_bits_replace),
    .io_out_bits_replace_way_en(pipelineReg_25_io_out_bits_replace_way_en),
    .io_out_bits_id(pipelineReg_25_io_out_bits_id)
  );
  assign io_req_ready = alloc | merge; // @[MissQueue.scala 870:22]
  assign io_resp_id = ~_merge_T_3 ? _io_resp_id_T_5 : miss_req_pipe_reg_mshr_id; // @[MissQueue.scala 877:20]
  assign io_resp_handled = |_io_resp_handled_T | _merge_T_3; // @[MissQueue.scala 878:52]
  assign io_resp_merged = |_merge_T_4; // @[MissQueue.scala 867:89]
  assign io_resp_repl_way_en = _io_resp_id_T ? _io_resp_repl_way_en_T_7 : miss_req_pipe_reg_req_way_en; // @[MissQueue.scala 880:29]
  assign io_mem_acquire_valid = idle ? _T_89 : _sink_ACancel_earlyValid_T_12; // @[Arbiter.scala 125:29]
  assign io_mem_acquire_bits_opcode = _T_191 | _T_188; // @[Mux.scala 27:73]
  assign io_mem_acquire_bits_param = _T_200 | _T_197; // @[Mux.scala 27:73]
  assign io_mem_acquire_bits_size = _T_191 | _T_188; // @[Mux.scala 27:73]
  assign io_mem_acquire_bits_source = _T_182 | _T_179; // @[Mux.scala 27:73]
  assign io_mem_acquire_bits_address = _T_173 | _T_170; // @[Mux.scala 27:73]
  assign io_mem_acquire_bits_user_vaddr = _T_164 | _T_161; // @[Mux.scala 27:73]
  assign io_mem_acquire_bits_user_reqSource = _T_155 | _T_152; // @[Mux.scala 27:73]
  assign io_mem_acquire_bits_user_needHint = muxStateEarly__0 & acquire_from_pipereg_bits_acquire_user_needHint |
    muxStateEarly__1 & out_1_bits_user_needHint | muxStateEarly__2 & out_2_bits_user_needHint | muxStateEarly__3 &
    out_3_bits_user_needHint | muxStateEarly__4 & out_4_bits_user_needHint; // @[Mux.scala 27:73]
  assign io_mem_acquire_bits_mask = _T_137 | _T_134; // @[Mux.scala 27:73]
  assign io_mem_grant_ready = io_mem_grant_bits_source == 4'h3 ? entries_3_io_mem_grant_ready : _GEN_227; // @[MissQueue.scala 962:47 963:24]
  assign io_mem_finish_valid = idle_1 ? _T_231 : _sink_ACancel_earlyValid_T_23; // @[Arbiter.scala 125:29]
  assign io_mem_finish_bits_sink = _T_256 | _T_254; // @[Mux.scala 27:73]
  assign io_refill_pipe_req_valid = pipelineReg_24_io_out_valid; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_bits_source = pipelineReg_24_io_out_bits_source; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_bits_addr = pipelineReg_24_io_out_bits_addr; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_bits_way_en = pipelineReg_24_io_out_bits_way_en; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_bits_alias = pipelineReg_24_io_out_bits_alias; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_bits_miss_id = pipelineReg_24_io_out_bits_miss_id; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_bits_id = pipelineReg_24_io_out_bits_id; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_bits_error = pipelineReg_24_io_out_bits_error; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_bits_wmask = pipelineReg_24_io_out_bits_wmask; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_bits_data_0 = pipelineReg_24_io_out_bits_data_0; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_bits_data_1 = pipelineReg_24_io_out_bits_data_1; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_bits_data_2 = pipelineReg_24_io_out_bits_data_2; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_bits_data_3 = pipelineReg_24_io_out_bits_data_3; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_bits_data_4 = pipelineReg_24_io_out_bits_data_4; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_bits_data_5 = pipelineReg_24_io_out_bits_data_5; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_bits_data_6 = pipelineReg_24_io_out_bits_data_6; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_bits_data_7 = pipelineReg_24_io_out_bits_data_7; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_bits_meta_coh_state = pipelineReg_24_io_out_bits_meta_coh_state; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_0_valid = pipelineReg_io_out_valid; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_0_bits_addr = pipelineReg_io_out_bits_addr; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_0_bits_way_en = pipelineReg_io_out_bits_way_en; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_0_bits_alias = pipelineReg_io_out_bits_alias; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_1_valid = pipelineReg_1_io_out_valid; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_1_bits_addr = pipelineReg_1_io_out_bits_addr; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_1_bits_way_en = pipelineReg_1_io_out_bits_way_en; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_1_bits_alias = pipelineReg_1_io_out_bits_alias; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_2_valid = pipelineReg_2_io_out_valid; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_2_bits_addr = pipelineReg_2_io_out_bits_addr; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_2_bits_way_en = pipelineReg_2_io_out_bits_way_en; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_2_bits_alias = pipelineReg_2_io_out_bits_alias; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_3_valid = pipelineReg_3_io_out_valid; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_3_bits_addr = pipelineReg_3_io_out_bits_addr; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_3_bits_way_en = pipelineReg_3_io_out_bits_way_en; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_3_bits_alias = pipelineReg_3_io_out_bits_alias; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_4_valid = pipelineReg_4_io_out_valid; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_4_bits_addr = pipelineReg_4_io_out_bits_addr; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_4_bits_way_en = pipelineReg_4_io_out_bits_way_en; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_4_bits_alias = pipelineReg_4_io_out_bits_alias; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_5_valid = pipelineReg_5_io_out_valid; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_5_bits_addr = pipelineReg_5_io_out_bits_addr; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_5_bits_way_en = pipelineReg_5_io_out_bits_way_en; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_5_bits_alias = pipelineReg_5_io_out_bits_alias; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_6_valid = pipelineReg_6_io_out_valid; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_6_bits_addr = pipelineReg_6_io_out_bits_addr; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_6_bits_way_en = pipelineReg_6_io_out_bits_way_en; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_6_bits_alias = pipelineReg_6_io_out_bits_alias; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_7_valid = pipelineReg_7_io_out_valid; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_7_bits_addr = pipelineReg_7_io_out_bits_addr; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_7_bits_way_en = pipelineReg_7_io_out_bits_way_en; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_7_bits_alias = pipelineReg_7_io_out_bits_alias; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_8_valid = pipelineReg_8_io_out_valid; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_8_bits_addr = pipelineReg_8_io_out_bits_addr; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_8_bits_way_en = pipelineReg_8_io_out_bits_way_en; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_8_bits_alias = pipelineReg_8_io_out_bits_alias; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_9_valid = pipelineReg_9_io_out_valid; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_9_bits_addr = pipelineReg_9_io_out_bits_addr; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_9_bits_way_en = pipelineReg_9_io_out_bits_way_en; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_9_bits_alias = pipelineReg_9_io_out_bits_alias; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_10_valid = pipelineReg_10_io_out_valid; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_10_bits_addr = pipelineReg_10_io_out_bits_addr; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_10_bits_way_en = pipelineReg_10_io_out_bits_way_en; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_10_bits_alias = pipelineReg_10_io_out_bits_alias; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_11_valid = pipelineReg_11_io_out_valid; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_11_bits_addr = pipelineReg_11_io_out_bits_addr; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_11_bits_way_en = pipelineReg_11_io_out_bits_way_en; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_11_bits_alias = pipelineReg_11_io_out_bits_alias; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_12_valid = pipelineReg_12_io_out_valid; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_12_bits_addr = pipelineReg_12_io_out_bits_addr; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_12_bits_way_en = pipelineReg_12_io_out_bits_way_en; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_12_bits_alias = pipelineReg_12_io_out_bits_alias; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_13_valid = pipelineReg_13_io_out_valid; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_13_bits_addr = pipelineReg_13_io_out_bits_addr; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_13_bits_way_en = pipelineReg_13_io_out_bits_way_en; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_13_bits_alias = pipelineReg_13_io_out_bits_alias; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_14_valid = pipelineReg_14_io_out_valid; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_14_bits_addr = pipelineReg_14_io_out_bits_addr; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_14_bits_way_en = pipelineReg_14_io_out_bits_way_en; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_14_bits_alias = pipelineReg_14_io_out_bits_alias; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_15_valid = pipelineReg_15_io_out_valid; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_15_bits_addr = pipelineReg_15_io_out_bits_addr; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_15_bits_way_en = pipelineReg_15_io_out_bits_way_en; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_15_bits_alias = pipelineReg_15_io_out_bits_alias; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_16_valid = pipelineReg_16_io_out_valid; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_16_bits_addr = pipelineReg_16_io_out_bits_addr; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_16_bits_way_en = pipelineReg_16_io_out_bits_way_en; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_16_bits_alias = pipelineReg_16_io_out_bits_alias; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_17_valid = pipelineReg_17_io_out_valid; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_17_bits_addr = pipelineReg_17_io_out_bits_addr; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_17_bits_way_en = pipelineReg_17_io_out_bits_way_en; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_17_bits_alias = pipelineReg_17_io_out_bits_alias; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_18_valid = pipelineReg_18_io_out_valid; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_18_bits_addr = pipelineReg_18_io_out_bits_addr; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_18_bits_way_en = pipelineReg_18_io_out_bits_way_en; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_18_bits_alias = pipelineReg_18_io_out_bits_alias; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_19_valid = pipelineReg_19_io_out_valid; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_19_bits_addr = pipelineReg_19_io_out_bits_addr; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_19_bits_way_en = pipelineReg_19_io_out_bits_way_en; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_19_bits_alias = pipelineReg_19_io_out_bits_alias; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_20_valid = pipelineReg_20_io_out_valid; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_20_bits_addr = pipelineReg_20_io_out_bits_addr; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_20_bits_way_en = pipelineReg_20_io_out_bits_way_en; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_20_bits_alias = pipelineReg_20_io_out_bits_alias; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_21_valid = pipelineReg_21_io_out_valid; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_21_bits_addr = pipelineReg_21_io_out_bits_addr; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_21_bits_way_en = pipelineReg_21_io_out_bits_way_en; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_21_bits_alias = pipelineReg_21_io_out_bits_alias; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_22_valid = pipelineReg_22_io_out_valid; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_22_bits_addr = pipelineReg_22_io_out_bits_addr; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_22_bits_way_en = pipelineReg_22_io_out_bits_way_en; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_22_bits_alias = pipelineReg_22_io_out_bits_alias; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_23_valid = pipelineReg_23_io_out_valid; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_23_bits_addr = pipelineReg_23_io_out_bits_addr; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_23_bits_way_en = pipelineReg_23_io_out_bits_way_en; // @[MemCommon.scala 403:11]
  assign io_refill_pipe_req_dup_23_bits_alias = pipelineReg_23_io_out_bits_alias; // @[MemCommon.scala 403:11]
  assign io_replace_pipe_req_valid = pipelineReg_25_io_out_valid; // @[MemCommon.scala 403:11]
  assign io_replace_pipe_req_bits_miss = pipelineReg_25_io_out_bits_miss; // @[MemCommon.scala 403:11]
  assign io_replace_pipe_req_bits_miss_id = pipelineReg_25_io_out_bits_miss_id; // @[MemCommon.scala 403:11]
  assign io_replace_pipe_req_bits_miss_param = pipelineReg_25_io_out_bits_miss_param; // @[MemCommon.scala 403:11]
  assign io_replace_pipe_req_bits_miss_dirty = pipelineReg_25_io_out_bits_miss_dirty; // @[MemCommon.scala 403:11]
  assign io_replace_pipe_req_bits_miss_way_en = pipelineReg_25_io_out_bits_miss_way_en; // @[MemCommon.scala 403:11]
  assign io_replace_pipe_req_bits_probe = pipelineReg_25_io_out_bits_probe; // @[MemCommon.scala 403:11]
  assign io_replace_pipe_req_bits_probe_param = pipelineReg_25_io_out_bits_probe_param; // @[MemCommon.scala 403:11]
  assign io_replace_pipe_req_bits_probe_need_data = pipelineReg_25_io_out_bits_probe_need_data; // @[MemCommon.scala 403:11]
  assign io_replace_pipe_req_bits_source = pipelineReg_25_io_out_bits_source; // @[MemCommon.scala 403:11]
  assign io_replace_pipe_req_bits_cmd = pipelineReg_25_io_out_bits_cmd; // @[MemCommon.scala 403:11]
  assign io_replace_pipe_req_bits_vaddr = pipelineReg_25_io_out_bits_vaddr; // @[MemCommon.scala 403:11]
  assign io_replace_pipe_req_bits_addr = pipelineReg_25_io_out_bits_addr; // @[MemCommon.scala 403:11]
  assign io_replace_pipe_req_bits_store_data = pipelineReg_25_io_out_bits_store_data; // @[MemCommon.scala 403:11]
  assign io_replace_pipe_req_bits_store_mask = pipelineReg_25_io_out_bits_store_mask; // @[MemCommon.scala 403:11]
  assign io_replace_pipe_req_bits_word_idx = pipelineReg_25_io_out_bits_word_idx; // @[MemCommon.scala 403:11]
  assign io_replace_pipe_req_bits_amo_data = pipelineReg_25_io_out_bits_amo_data; // @[MemCommon.scala 403:11]
  assign io_replace_pipe_req_bits_amo_mask = pipelineReg_25_io_out_bits_amo_mask; // @[MemCommon.scala 403:11]
  assign io_replace_pipe_req_bits_error = pipelineReg_25_io_out_bits_error; // @[MemCommon.scala 403:11]
  assign io_replace_pipe_req_bits_replace = pipelineReg_25_io_out_bits_replace; // @[MemCommon.scala 403:11]
  assign io_replace_pipe_req_bits_replace_way_en = pipelineReg_25_io_out_bits_replace_way_en; // @[MemCommon.scala 403:11]
  assign io_replace_pipe_req_bits_id = pipelineReg_25_io_out_bits_id; // @[MemCommon.scala 403:11]
  assign io_main_pipe_req_valid = |_io_main_pipe_req_valid_T; // @[MissQueue.scala 1020:76]
  assign io_main_pipe_req_bits_miss = _io_main_pipe_req_valid_WIRE_0 | _io_main_pipe_req_valid_WIRE_1 |
    _io_main_pipe_req_valid_WIRE_2 | _io_main_pipe_req_valid_WIRE_3; // @[Mux.scala 27:73]
  assign io_main_pipe_req_bits_miss_id = _io_main_pipe_req_bits_T_138 | _io_main_pipe_req_bits_T_136; // @[Mux.scala 27:73]
  assign io_main_pipe_req_bits_miss_param = _io_main_pipe_req_bits_T_131 | _io_main_pipe_req_bits_T_129; // @[Mux.scala 27:73]
  assign io_main_pipe_req_bits_miss_way_en = _io_main_pipe_req_bits_T_117 | _io_main_pipe_req_bits_T_115; // @[Mux.scala 27:73]
  assign io_main_pipe_req_bits_source = _io_main_pipe_req_bits_T_89 | _io_main_pipe_req_bits_T_87; // @[Mux.scala 27:73]
  assign io_main_pipe_req_bits_cmd = _io_main_pipe_req_bits_T_82 | _io_main_pipe_req_bits_T_80; // @[Mux.scala 27:73]
  assign io_main_pipe_req_bits_vaddr = _io_main_pipe_req_bits_T_75 | _io_main_pipe_req_bits_T_73; // @[Mux.scala 27:73]
  assign io_main_pipe_req_bits_addr = _io_main_pipe_req_bits_T_68 | _io_main_pipe_req_bits_T_66; // @[Mux.scala 27:73]
  assign io_main_pipe_req_bits_store_data = _io_main_pipe_req_bits_T_61 | _io_main_pipe_req_bits_T_59; // @[Mux.scala 27:73]
  assign io_main_pipe_req_bits_store_mask = _io_main_pipe_req_bits_T_54 | _io_main_pipe_req_bits_T_52; // @[Mux.scala 27:73]
  assign io_main_pipe_req_bits_word_idx = _io_main_pipe_req_bits_T_47 | _io_main_pipe_req_bits_T_45; // @[Mux.scala 27:73]
  assign io_main_pipe_req_bits_amo_data = _io_main_pipe_req_bits_T_40 | _io_main_pipe_req_bits_T_38; // @[Mux.scala 27:73]
  assign io_main_pipe_req_bits_amo_mask = _io_main_pipe_req_bits_T_33 | _io_main_pipe_req_bits_T_31; // @[Mux.scala 27:73]
  assign io_main_pipe_req_bits_error = entries_0_io_main_pipe_req_valid & entries_0_io_main_pipe_req_bits_error |
    entries_1_io_main_pipe_req_valid & entries_1_io_main_pipe_req_bits_error | entries_2_io_main_pipe_req_valid &
    entries_2_io_main_pipe_req_bits_error | entries_3_io_main_pipe_req_valid & entries_3_io_main_pipe_req_bits_error; // @[Mux.scala 27:73]
  assign io_main_pipe_req_bits_id = _io_main_pipe_req_bits_T_5 | _io_main_pipe_req_bits_T_3; // @[Mux.scala 27:73]
  assign io_probe_block = |_io_probe_block_T; // @[MissQueue.scala 1024:42]
  assign io_forward_0_forward_mshr = forward_mshr; // @[MissQueue.scala 915:32]
  assign io_forward_0_forwardData_0 = forwardData__0; // @[MissQueue.scala 916:31]
  assign io_forward_0_forwardData_1 = forwardData__1; // @[MissQueue.scala 916:31]
  assign io_forward_0_forwardData_2 = forwardData__2; // @[MissQueue.scala 916:31]
  assign io_forward_0_forwardData_3 = forwardData__3; // @[MissQueue.scala 916:31]
  assign io_forward_0_forwardData_4 = forwardData__4; // @[MissQueue.scala 916:31]
  assign io_forward_0_forwardData_5 = forwardData__5; // @[MissQueue.scala 916:31]
  assign io_forward_0_forwardData_6 = forwardData__6; // @[MissQueue.scala 916:31]
  assign io_forward_0_forwardData_7 = forwardData__7; // @[MissQueue.scala 916:31]
  assign io_forward_0_forwardData_8 = forwardData__8; // @[MissQueue.scala 916:31]
  assign io_forward_0_forwardData_9 = forwardData__9; // @[MissQueue.scala 916:31]
  assign io_forward_0_forwardData_10 = forwardData__10; // @[MissQueue.scala 916:31]
  assign io_forward_0_forwardData_11 = forwardData__11; // @[MissQueue.scala 916:31]
  assign io_forward_0_forwardData_12 = forwardData__12; // @[MissQueue.scala 916:31]
  assign io_forward_0_forwardData_13 = forwardData__13; // @[MissQueue.scala 916:31]
  assign io_forward_0_forwardData_14 = forwardData__14; // @[MissQueue.scala 916:31]
  assign io_forward_0_forwardData_15 = forwardData__15; // @[MissQueue.scala 916:31]
  assign io_forward_0_forward_result_valid = io_forward_0_forward_result_valid_REG; // @[MissQueue.scala 914:40]
  assign io_forward_1_forward_mshr = forward_mshr_1; // @[MissQueue.scala 915:32]
  assign io_forward_1_forwardData_0 = forwardData_1_0; // @[MissQueue.scala 916:31]
  assign io_forward_1_forwardData_1 = forwardData_1_1; // @[MissQueue.scala 916:31]
  assign io_forward_1_forwardData_2 = forwardData_1_2; // @[MissQueue.scala 916:31]
  assign io_forward_1_forwardData_3 = forwardData_1_3; // @[MissQueue.scala 916:31]
  assign io_forward_1_forwardData_4 = forwardData_1_4; // @[MissQueue.scala 916:31]
  assign io_forward_1_forwardData_5 = forwardData_1_5; // @[MissQueue.scala 916:31]
  assign io_forward_1_forwardData_6 = forwardData_1_6; // @[MissQueue.scala 916:31]
  assign io_forward_1_forwardData_7 = forwardData_1_7; // @[MissQueue.scala 916:31]
  assign io_forward_1_forwardData_8 = forwardData_1_8; // @[MissQueue.scala 916:31]
  assign io_forward_1_forwardData_9 = forwardData_1_9; // @[MissQueue.scala 916:31]
  assign io_forward_1_forwardData_10 = forwardData_1_10; // @[MissQueue.scala 916:31]
  assign io_forward_1_forwardData_11 = forwardData_1_11; // @[MissQueue.scala 916:31]
  assign io_forward_1_forwardData_12 = forwardData_1_12; // @[MissQueue.scala 916:31]
  assign io_forward_1_forwardData_13 = forwardData_1_13; // @[MissQueue.scala 916:31]
  assign io_forward_1_forwardData_14 = forwardData_1_14; // @[MissQueue.scala 916:31]
  assign io_forward_1_forwardData_15 = forwardData_1_15; // @[MissQueue.scala 916:31]
  assign io_forward_1_forward_result_valid = io_forward_1_forward_result_valid_REG; // @[MissQueue.scala 914:40]
  assign io_mq_enq_cancel = io_req_bits_cancel; // @[MissQueue.scala 988:20]
  assign io_perf_0_value = {{5'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_1_value = {{5'd0}, io_perf_1_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_2_value = {{5'd0}, io_perf_2_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_3_value = {{5'd0}, io_perf_3_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_4_value = {{5'd0}, io_perf_4_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign entries_0_clock = clock;
  assign entries_0_reset = reset;
  assign entries_0_io_id = 2'h0; // @[MissQueue.scala 950:15]
  assign entries_0_io_req_valid = io_req_valid; // @[MissQueue.scala 952:22]
  assign entries_0_io_req_bits_source = io_req_bits_source; // @[MissQueue.scala 102:19 103:16]
  assign entries_0_io_req_bits_addr = io_req_bits_addr; // @[MissQueue.scala 102:19 107:14]
  assign entries_0_io_req_bits_vaddr = io_req_bits_vaddr; // @[MissQueue.scala 102:19 108:15]
  assign entries_0_io_req_bits_way_en = io_req_bits_way_en; // @[MissQueue.scala 102:19 109:16]
  assign entries_0_io_req_bits_cancel = io_req_bits_cancel; // @[MissQueue.scala 102:19 118:16]
  assign entries_0_io_miss_req_pipe_reg_req_source = miss_req_pipe_reg_req_source; // @[MissQueue.scala 966:80 967:32]
  assign entries_0_io_miss_req_pipe_reg_req_cmd = miss_req_pipe_reg_req_cmd; // @[MissQueue.scala 966:80 967:32]
  assign entries_0_io_miss_req_pipe_reg_req_addr = miss_req_pipe_reg_req_addr; // @[MissQueue.scala 966:80 967:32]
  assign entries_0_io_miss_req_pipe_reg_req_vaddr = miss_req_pipe_reg_req_vaddr; // @[MissQueue.scala 966:80 967:32]
  assign entries_0_io_miss_req_pipe_reg_req_way_en = miss_req_pipe_reg_req_way_en; // @[MissQueue.scala 966:80 967:32]
  assign entries_0_io_miss_req_pipe_reg_req_word_idx = miss_req_pipe_reg_req_word_idx; // @[MissQueue.scala 966:80 967:32]
  assign entries_0_io_miss_req_pipe_reg_req_amo_data = miss_req_pipe_reg_req_amo_data; // @[MissQueue.scala 966:80 967:32]
  assign entries_0_io_miss_req_pipe_reg_req_amo_mask = miss_req_pipe_reg_req_amo_mask; // @[MissQueue.scala 966:80 967:32]
  assign entries_0_io_miss_req_pipe_reg_req_req_coh_state = miss_req_pipe_reg_req_req_coh_state; // @[MissQueue.scala 966:80 967:32]
  assign entries_0_io_miss_req_pipe_reg_req_replace_coh_state = miss_req_pipe_reg_req_replace_coh_state; // @[MissQueue.scala 966:80 967:32]
  assign entries_0_io_miss_req_pipe_reg_req_replace_tag = miss_req_pipe_reg_req_replace_tag; // @[MissQueue.scala 966:80 967:32]
  assign entries_0_io_miss_req_pipe_reg_req_id = miss_req_pipe_reg_req_id; // @[MissQueue.scala 966:80 967:32]
  assign entries_0_io_miss_req_pipe_reg_req_store_data = miss_req_pipe_reg_req_store_data; // @[MissQueue.scala 966:80 967:32]
  assign entries_0_io_miss_req_pipe_reg_req_store_mask = miss_req_pipe_reg_req_store_mask; // @[MissQueue.scala 966:80 967:32]
  assign entries_0_io_miss_req_pipe_reg_merge = _T_42 & miss_req_pipe_reg_mshr_id == 2'h0 & miss_req_pipe_reg_merge; // @[MissQueue.scala 966:80 967:32 970:38]
  assign entries_0_io_miss_req_pipe_reg_alloc = _T_42 & miss_req_pipe_reg_mshr_id == 2'h0 & miss_req_pipe_reg_alloc; // @[MissQueue.scala 966:80 967:32 971:38]
  assign entries_0_io_primary_valid = _entries_0_io_primary_valid_T_3 & entries_0_io_primary_ready; // @[MissQueue.scala 956:31]
  assign entries_0_io_mem_acquire_ready = io_mem_acquire_ready & allowed__1; // @[Arbiter.scala 123:31]
  assign entries_0_io_mem_grant_valid = io_mem_grant_bits_source == 4'h0 & io_mem_grant_valid; // @[MissQueue.scala 962:47 963:24 960:28]
  assign entries_0_io_mem_grant_bits_opcode = io_mem_grant_bits_opcode; // @[MissQueue.scala 962:47 963:24]
  assign entries_0_io_mem_grant_bits_param = io_mem_grant_bits_param; // @[MissQueue.scala 962:47 963:24]
  assign entries_0_io_mem_grant_bits_size = io_mem_grant_bits_size; // @[MissQueue.scala 962:47 963:24]
  assign entries_0_io_mem_grant_bits_sink = io_mem_grant_bits_sink; // @[MissQueue.scala 962:47 963:24]
  assign entries_0_io_mem_grant_bits_denied = io_mem_grant_bits_denied; // @[MissQueue.scala 962:47 963:24]
  assign entries_0_io_mem_grant_bits_data = io_mem_grant_bits_data; // @[MissQueue.scala 962:47 963:24]
  assign entries_0_io_mem_grant_bits_corrupt = io_mem_grant_bits_corrupt; // @[MissQueue.scala 962:47 963:24]
  assign entries_0_io_mem_finish_ready = io_mem_finish_ready & allowed_1_0; // @[Arbiter.scala 123:31]
  assign entries_0_io_refill_pipe_req_ready = refill_pipe_req_arb_io_in_0_ready; // @[DCacheWrapper.scala 253:9]
  assign entries_0_io_refill_pipe_resp = io_refill_pipe_resp_valid & io_refill_pipe_resp_bits == 2'h0; // @[MissQueue.scala 976:58]
  assign entries_0_io_replace_pipe_req_ready = replace_pipe_req_arb_io_in_0_ready; // @[DCacheWrapper.scala 265:9]
  assign entries_0_io_replace_pipe_resp = io_replace_pipe_resp_valid & io_replace_pipe_resp_bits == 2'h0; // @[MissQueue.scala 977:60]
  assign entries_0_io_main_pipe_req_ready = io_main_pipe_req_ready; // @[MissQueue.scala 984:32]
  assign entries_0_io_main_pipe_resp = io_main_pipe_resp_valid & io_main_pipe_resp_bits_ack_miss_queue &
    io_main_pipe_resp_bits_miss_id == 2'h0; // @[MissQueue.scala 978:95]
  assign entries_0_io_l2_pf_store_only = io_l2_pf_store_only; // @[MissQueue.scala 951:29]
  assign entries_0_io_acquire_fired_by_pipe_reg = out_ready & acquire_from_pipereg_valid; // @[Decoupled.scala 50:35]
  assign entries_0_io_memSetPattenDetected = memSetPattenDetected; // @[MissQueue.scala 980:33]
  assign entries_0_io_rob_head_query_vaddr = rob_head_vaddr_0_bits; // @[MissQueue.scala 1105:33]
  assign entries_0_io_rob_head_query_query_valid = rob_head_vaddr_0_valid; // @[MissQueue.scala 1104:39]
  assign entries_1_clock = clock;
  assign entries_1_reset = reset;
  assign entries_1_io_id = 2'h1; // @[MissQueue.scala 950:15]
  assign entries_1_io_req_valid = io_req_valid; // @[MissQueue.scala 952:22]
  assign entries_1_io_req_bits_source = io_req_bits_source; // @[MissQueue.scala 102:19 103:16]
  assign entries_1_io_req_bits_addr = io_req_bits_addr; // @[MissQueue.scala 102:19 107:14]
  assign entries_1_io_req_bits_vaddr = io_req_bits_vaddr; // @[MissQueue.scala 102:19 108:15]
  assign entries_1_io_req_bits_way_en = io_req_bits_way_en; // @[MissQueue.scala 102:19 109:16]
  assign entries_1_io_req_bits_cancel = io_req_bits_cancel; // @[MissQueue.scala 102:19 118:16]
  assign entries_1_io_miss_req_pipe_reg_req_source = miss_req_pipe_reg_req_source; // @[MissQueue.scala 966:80 967:32]
  assign entries_1_io_miss_req_pipe_reg_req_cmd = miss_req_pipe_reg_req_cmd; // @[MissQueue.scala 966:80 967:32]
  assign entries_1_io_miss_req_pipe_reg_req_addr = miss_req_pipe_reg_req_addr; // @[MissQueue.scala 966:80 967:32]
  assign entries_1_io_miss_req_pipe_reg_req_vaddr = miss_req_pipe_reg_req_vaddr; // @[MissQueue.scala 966:80 967:32]
  assign entries_1_io_miss_req_pipe_reg_req_way_en = miss_req_pipe_reg_req_way_en; // @[MissQueue.scala 966:80 967:32]
  assign entries_1_io_miss_req_pipe_reg_req_word_idx = miss_req_pipe_reg_req_word_idx; // @[MissQueue.scala 966:80 967:32]
  assign entries_1_io_miss_req_pipe_reg_req_amo_data = miss_req_pipe_reg_req_amo_data; // @[MissQueue.scala 966:80 967:32]
  assign entries_1_io_miss_req_pipe_reg_req_amo_mask = miss_req_pipe_reg_req_amo_mask; // @[MissQueue.scala 966:80 967:32]
  assign entries_1_io_miss_req_pipe_reg_req_req_coh_state = miss_req_pipe_reg_req_req_coh_state; // @[MissQueue.scala 966:80 967:32]
  assign entries_1_io_miss_req_pipe_reg_req_replace_coh_state = miss_req_pipe_reg_req_replace_coh_state; // @[MissQueue.scala 966:80 967:32]
  assign entries_1_io_miss_req_pipe_reg_req_replace_tag = miss_req_pipe_reg_req_replace_tag; // @[MissQueue.scala 966:80 967:32]
  assign entries_1_io_miss_req_pipe_reg_req_id = miss_req_pipe_reg_req_id; // @[MissQueue.scala 966:80 967:32]
  assign entries_1_io_miss_req_pipe_reg_req_store_data = miss_req_pipe_reg_req_store_data; // @[MissQueue.scala 966:80 967:32]
  assign entries_1_io_miss_req_pipe_reg_req_store_mask = miss_req_pipe_reg_req_store_mask; // @[MissQueue.scala 966:80 967:32]
  assign entries_1_io_miss_req_pipe_reg_merge = _T_42 & miss_req_pipe_reg_mshr_id == 2'h1 & miss_req_pipe_reg_merge; // @[MissQueue.scala 966:80 967:32 970:38]
  assign entries_1_io_miss_req_pipe_reg_alloc = _T_42 & miss_req_pipe_reg_mshr_id == 2'h1 & miss_req_pipe_reg_alloc; // @[MissQueue.scala 966:80 967:32 971:38]
  assign entries_1_io_primary_valid = _entries_1_io_primary_valid_T_5 & entries_1_io_primary_ready; // @[MissQueue.scala 956:31]
  assign entries_1_io_mem_acquire_ready = io_mem_acquire_ready & allowed__2; // @[Arbiter.scala 123:31]
  assign entries_1_io_mem_grant_valid = io_mem_grant_bits_source == 4'h1 & io_mem_grant_valid; // @[MissQueue.scala 962:47 963:24 960:28]
  assign entries_1_io_mem_grant_bits_opcode = io_mem_grant_bits_opcode; // @[MissQueue.scala 962:47 963:24]
  assign entries_1_io_mem_grant_bits_param = io_mem_grant_bits_param; // @[MissQueue.scala 962:47 963:24]
  assign entries_1_io_mem_grant_bits_size = io_mem_grant_bits_size; // @[MissQueue.scala 962:47 963:24]
  assign entries_1_io_mem_grant_bits_sink = io_mem_grant_bits_sink; // @[MissQueue.scala 962:47 963:24]
  assign entries_1_io_mem_grant_bits_denied = io_mem_grant_bits_denied; // @[MissQueue.scala 962:47 963:24]
  assign entries_1_io_mem_grant_bits_data = io_mem_grant_bits_data; // @[MissQueue.scala 962:47 963:24]
  assign entries_1_io_mem_grant_bits_corrupt = io_mem_grant_bits_corrupt; // @[MissQueue.scala 962:47 963:24]
  assign entries_1_io_mem_finish_ready = io_mem_finish_ready & allowed_1_1; // @[Arbiter.scala 123:31]
  assign entries_1_io_refill_pipe_req_ready = refill_pipe_req_arb_io_in_1_ready; // @[DCacheWrapper.scala 253:9]
  assign entries_1_io_refill_pipe_resp = io_refill_pipe_resp_valid & io_refill_pipe_resp_bits == 2'h1; // @[MissQueue.scala 976:58]
  assign entries_1_io_replace_pipe_req_ready = replace_pipe_req_arb_io_in_1_ready; // @[DCacheWrapper.scala 265:9]
  assign entries_1_io_replace_pipe_resp = io_replace_pipe_resp_valid & io_replace_pipe_resp_bits == 2'h1; // @[MissQueue.scala 977:60]
  assign entries_1_io_main_pipe_req_ready = io_main_pipe_req_ready; // @[MissQueue.scala 984:32]
  assign entries_1_io_main_pipe_resp = io_main_pipe_resp_valid & io_main_pipe_resp_bits_ack_miss_queue &
    io_main_pipe_resp_bits_miss_id == 2'h1; // @[MissQueue.scala 978:95]
  assign entries_1_io_l2_pf_store_only = io_l2_pf_store_only; // @[MissQueue.scala 951:29]
  assign entries_1_io_acquire_fired_by_pipe_reg = out_ready & acquire_from_pipereg_valid; // @[Decoupled.scala 50:35]
  assign entries_1_io_memSetPattenDetected = memSetPattenDetected; // @[MissQueue.scala 980:33]
  assign entries_1_io_rob_head_query_vaddr = rob_head_vaddr_0_bits; // @[MissQueue.scala 1105:33]
  assign entries_1_io_rob_head_query_query_valid = rob_head_vaddr_0_valid; // @[MissQueue.scala 1104:39]
  assign entries_2_clock = clock;
  assign entries_2_reset = reset;
  assign entries_2_io_id = 2'h2; // @[MissQueue.scala 950:15]
  assign entries_2_io_req_valid = io_req_valid; // @[MissQueue.scala 952:22]
  assign entries_2_io_req_bits_source = io_req_bits_source; // @[MissQueue.scala 102:19 103:16]
  assign entries_2_io_req_bits_addr = io_req_bits_addr; // @[MissQueue.scala 102:19 107:14]
  assign entries_2_io_req_bits_vaddr = io_req_bits_vaddr; // @[MissQueue.scala 102:19 108:15]
  assign entries_2_io_req_bits_way_en = io_req_bits_way_en; // @[MissQueue.scala 102:19 109:16]
  assign entries_2_io_req_bits_cancel = io_req_bits_cancel; // @[MissQueue.scala 102:19 118:16]
  assign entries_2_io_miss_req_pipe_reg_req_source = miss_req_pipe_reg_req_source; // @[MissQueue.scala 966:80 967:32]
  assign entries_2_io_miss_req_pipe_reg_req_cmd = miss_req_pipe_reg_req_cmd; // @[MissQueue.scala 966:80 967:32]
  assign entries_2_io_miss_req_pipe_reg_req_addr = miss_req_pipe_reg_req_addr; // @[MissQueue.scala 966:80 967:32]
  assign entries_2_io_miss_req_pipe_reg_req_vaddr = miss_req_pipe_reg_req_vaddr; // @[MissQueue.scala 966:80 967:32]
  assign entries_2_io_miss_req_pipe_reg_req_way_en = miss_req_pipe_reg_req_way_en; // @[MissQueue.scala 966:80 967:32]
  assign entries_2_io_miss_req_pipe_reg_req_word_idx = miss_req_pipe_reg_req_word_idx; // @[MissQueue.scala 966:80 967:32]
  assign entries_2_io_miss_req_pipe_reg_req_amo_data = miss_req_pipe_reg_req_amo_data; // @[MissQueue.scala 966:80 967:32]
  assign entries_2_io_miss_req_pipe_reg_req_amo_mask = miss_req_pipe_reg_req_amo_mask; // @[MissQueue.scala 966:80 967:32]
  assign entries_2_io_miss_req_pipe_reg_req_req_coh_state = miss_req_pipe_reg_req_req_coh_state; // @[MissQueue.scala 966:80 967:32]
  assign entries_2_io_miss_req_pipe_reg_req_replace_coh_state = miss_req_pipe_reg_req_replace_coh_state; // @[MissQueue.scala 966:80 967:32]
  assign entries_2_io_miss_req_pipe_reg_req_replace_tag = miss_req_pipe_reg_req_replace_tag; // @[MissQueue.scala 966:80 967:32]
  assign entries_2_io_miss_req_pipe_reg_req_id = miss_req_pipe_reg_req_id; // @[MissQueue.scala 966:80 967:32]
  assign entries_2_io_miss_req_pipe_reg_req_store_data = miss_req_pipe_reg_req_store_data; // @[MissQueue.scala 966:80 967:32]
  assign entries_2_io_miss_req_pipe_reg_req_store_mask = miss_req_pipe_reg_req_store_mask; // @[MissQueue.scala 966:80 967:32]
  assign entries_2_io_miss_req_pipe_reg_merge = _T_42 & miss_req_pipe_reg_mshr_id == 2'h2 & miss_req_pipe_reg_merge; // @[MissQueue.scala 966:80 967:32 970:38]
  assign entries_2_io_miss_req_pipe_reg_alloc = _T_42 & miss_req_pipe_reg_mshr_id == 2'h2 & miss_req_pipe_reg_alloc; // @[MissQueue.scala 966:80 967:32 971:38]
  assign entries_2_io_primary_valid = _entries_2_io_primary_valid_T_5 & entries_2_io_primary_ready; // @[MissQueue.scala 956:31]
  assign entries_2_io_mem_acquire_ready = io_mem_acquire_ready & allowed__3; // @[Arbiter.scala 123:31]
  assign entries_2_io_mem_grant_valid = io_mem_grant_bits_source == 4'h2 & io_mem_grant_valid; // @[MissQueue.scala 962:47 963:24 960:28]
  assign entries_2_io_mem_grant_bits_opcode = io_mem_grant_bits_opcode; // @[MissQueue.scala 962:47 963:24]
  assign entries_2_io_mem_grant_bits_param = io_mem_grant_bits_param; // @[MissQueue.scala 962:47 963:24]
  assign entries_2_io_mem_grant_bits_size = io_mem_grant_bits_size; // @[MissQueue.scala 962:47 963:24]
  assign entries_2_io_mem_grant_bits_sink = io_mem_grant_bits_sink; // @[MissQueue.scala 962:47 963:24]
  assign entries_2_io_mem_grant_bits_denied = io_mem_grant_bits_denied; // @[MissQueue.scala 962:47 963:24]
  assign entries_2_io_mem_grant_bits_data = io_mem_grant_bits_data; // @[MissQueue.scala 962:47 963:24]
  assign entries_2_io_mem_grant_bits_corrupt = io_mem_grant_bits_corrupt; // @[MissQueue.scala 962:47 963:24]
  assign entries_2_io_mem_finish_ready = io_mem_finish_ready & allowed_1_2; // @[Arbiter.scala 123:31]
  assign entries_2_io_refill_pipe_req_ready = refill_pipe_req_arb_io_in_2_ready; // @[DCacheWrapper.scala 253:9]
  assign entries_2_io_refill_pipe_resp = io_refill_pipe_resp_valid & io_refill_pipe_resp_bits == 2'h2; // @[MissQueue.scala 976:58]
  assign entries_2_io_replace_pipe_req_ready = replace_pipe_req_arb_io_in_2_ready; // @[DCacheWrapper.scala 265:9]
  assign entries_2_io_replace_pipe_resp = io_replace_pipe_resp_valid & io_replace_pipe_resp_bits == 2'h2; // @[MissQueue.scala 977:60]
  assign entries_2_io_main_pipe_req_ready = io_main_pipe_req_ready; // @[MissQueue.scala 984:32]
  assign entries_2_io_main_pipe_resp = io_main_pipe_resp_valid & io_main_pipe_resp_bits_ack_miss_queue &
    io_main_pipe_resp_bits_miss_id == 2'h2; // @[MissQueue.scala 978:95]
  assign entries_2_io_l2_pf_store_only = io_l2_pf_store_only; // @[MissQueue.scala 951:29]
  assign entries_2_io_acquire_fired_by_pipe_reg = out_ready & acquire_from_pipereg_valid; // @[Decoupled.scala 50:35]
  assign entries_2_io_memSetPattenDetected = memSetPattenDetected; // @[MissQueue.scala 980:33]
  assign entries_2_io_rob_head_query_vaddr = rob_head_vaddr_0_bits; // @[MissQueue.scala 1105:33]
  assign entries_2_io_rob_head_query_query_valid = rob_head_vaddr_0_valid; // @[MissQueue.scala 1104:39]
  assign entries_3_clock = clock;
  assign entries_3_reset = reset;
  assign entries_3_io_id = 2'h3; // @[MissQueue.scala 950:15]
  assign entries_3_io_req_valid = io_req_valid; // @[MissQueue.scala 952:22]
  assign entries_3_io_req_bits_source = io_req_bits_source; // @[MissQueue.scala 102:19 103:16]
  assign entries_3_io_req_bits_addr = io_req_bits_addr; // @[MissQueue.scala 102:19 107:14]
  assign entries_3_io_req_bits_vaddr = io_req_bits_vaddr; // @[MissQueue.scala 102:19 108:15]
  assign entries_3_io_req_bits_way_en = io_req_bits_way_en; // @[MissQueue.scala 102:19 109:16]
  assign entries_3_io_req_bits_cancel = io_req_bits_cancel; // @[MissQueue.scala 102:19 118:16]
  assign entries_3_io_miss_req_pipe_reg_req_source = miss_req_pipe_reg_req_source; // @[MissQueue.scala 966:80 967:32]
  assign entries_3_io_miss_req_pipe_reg_req_cmd = miss_req_pipe_reg_req_cmd; // @[MissQueue.scala 966:80 967:32]
  assign entries_3_io_miss_req_pipe_reg_req_addr = miss_req_pipe_reg_req_addr; // @[MissQueue.scala 966:80 967:32]
  assign entries_3_io_miss_req_pipe_reg_req_vaddr = miss_req_pipe_reg_req_vaddr; // @[MissQueue.scala 966:80 967:32]
  assign entries_3_io_miss_req_pipe_reg_req_way_en = miss_req_pipe_reg_req_way_en; // @[MissQueue.scala 966:80 967:32]
  assign entries_3_io_miss_req_pipe_reg_req_word_idx = miss_req_pipe_reg_req_word_idx; // @[MissQueue.scala 966:80 967:32]
  assign entries_3_io_miss_req_pipe_reg_req_amo_data = miss_req_pipe_reg_req_amo_data; // @[MissQueue.scala 966:80 967:32]
  assign entries_3_io_miss_req_pipe_reg_req_amo_mask = miss_req_pipe_reg_req_amo_mask; // @[MissQueue.scala 966:80 967:32]
  assign entries_3_io_miss_req_pipe_reg_req_req_coh_state = miss_req_pipe_reg_req_req_coh_state; // @[MissQueue.scala 966:80 967:32]
  assign entries_3_io_miss_req_pipe_reg_req_replace_coh_state = miss_req_pipe_reg_req_replace_coh_state; // @[MissQueue.scala 966:80 967:32]
  assign entries_3_io_miss_req_pipe_reg_req_replace_tag = miss_req_pipe_reg_req_replace_tag; // @[MissQueue.scala 966:80 967:32]
  assign entries_3_io_miss_req_pipe_reg_req_id = miss_req_pipe_reg_req_id; // @[MissQueue.scala 966:80 967:32]
  assign entries_3_io_miss_req_pipe_reg_req_store_data = miss_req_pipe_reg_req_store_data; // @[MissQueue.scala 966:80 967:32]
  assign entries_3_io_miss_req_pipe_reg_req_store_mask = miss_req_pipe_reg_req_store_mask; // @[MissQueue.scala 966:80 967:32]
  assign entries_3_io_miss_req_pipe_reg_merge = _T_42 & miss_req_pipe_reg_mshr_id == 2'h3 & miss_req_pipe_reg_merge; // @[MissQueue.scala 966:80 967:32 970:38]
  assign entries_3_io_miss_req_pipe_reg_alloc = _T_42 & miss_req_pipe_reg_mshr_id == 2'h3 & miss_req_pipe_reg_alloc; // @[MissQueue.scala 966:80 967:32 971:38]
  assign entries_3_io_primary_valid = _entries_3_io_primary_valid_T_5 & entries_3_io_primary_ready; // @[MissQueue.scala 956:31]
  assign entries_3_io_mem_acquire_ready = io_mem_acquire_ready & allowed__4; // @[Arbiter.scala 123:31]
  assign entries_3_io_mem_grant_valid = io_mem_grant_bits_source == 4'h3 & io_mem_grant_valid; // @[MissQueue.scala 962:47 963:24 960:28]
  assign entries_3_io_mem_grant_bits_opcode = io_mem_grant_bits_opcode; // @[MissQueue.scala 962:47 963:24]
  assign entries_3_io_mem_grant_bits_param = io_mem_grant_bits_param; // @[MissQueue.scala 962:47 963:24]
  assign entries_3_io_mem_grant_bits_size = io_mem_grant_bits_size; // @[MissQueue.scala 962:47 963:24]
  assign entries_3_io_mem_grant_bits_sink = io_mem_grant_bits_sink; // @[MissQueue.scala 962:47 963:24]
  assign entries_3_io_mem_grant_bits_denied = io_mem_grant_bits_denied; // @[MissQueue.scala 962:47 963:24]
  assign entries_3_io_mem_grant_bits_data = io_mem_grant_bits_data; // @[MissQueue.scala 962:47 963:24]
  assign entries_3_io_mem_grant_bits_corrupt = io_mem_grant_bits_corrupt; // @[MissQueue.scala 962:47 963:24]
  assign entries_3_io_mem_finish_ready = io_mem_finish_ready & allowed_1_3; // @[Arbiter.scala 123:31]
  assign entries_3_io_refill_pipe_req_ready = refill_pipe_req_arb_io_in_3_ready; // @[DCacheWrapper.scala 253:9]
  assign entries_3_io_refill_pipe_resp = io_refill_pipe_resp_valid & io_refill_pipe_resp_bits == 2'h3; // @[MissQueue.scala 976:58]
  assign entries_3_io_replace_pipe_req_ready = replace_pipe_req_arb_io_in_3_ready; // @[DCacheWrapper.scala 265:9]
  assign entries_3_io_replace_pipe_resp = io_replace_pipe_resp_valid & io_replace_pipe_resp_bits == 2'h3; // @[MissQueue.scala 977:60]
  assign entries_3_io_main_pipe_req_ready = io_main_pipe_req_ready; // @[MissQueue.scala 984:32]
  assign entries_3_io_main_pipe_resp = io_main_pipe_resp_valid & io_main_pipe_resp_bits_ack_miss_queue &
    io_main_pipe_resp_bits_miss_id == 2'h3; // @[MissQueue.scala 978:95]
  assign entries_3_io_l2_pf_store_only = io_l2_pf_store_only; // @[MissQueue.scala 951:29]
  assign entries_3_io_acquire_fired_by_pipe_reg = out_ready & acquire_from_pipereg_valid; // @[Decoupled.scala 50:35]
  assign entries_3_io_memSetPattenDetected = memSetPattenDetected; // @[MissQueue.scala 980:33]
  assign entries_3_io_rob_head_query_vaddr = rob_head_vaddr_0_bits; // @[MissQueue.scala 1105:33]
  assign entries_3_io_rob_head_query_query_valid = rob_head_vaddr_0_valid; // @[MissQueue.scala 1104:39]
  assign refill_pipe_req_arb_io_in_0_valid = entries_0_io_refill_pipe_req_valid; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_0_bits_source = entries_0_io_refill_pipe_req_bits_source; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_0_bits_addr = entries_0_io_refill_pipe_req_bits_addr; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_0_bits_way_en = entries_0_io_refill_pipe_req_bits_way_en; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_0_bits_alias = entries_0_io_refill_pipe_req_bits_alias; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_0_bits_miss_id = entries_0_io_refill_pipe_req_bits_miss_id; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_0_bits_id = entries_0_io_refill_pipe_req_bits_id; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_0_bits_error = entries_0_io_refill_pipe_req_bits_error; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_0_bits_wmask = entries_0_io_refill_pipe_req_bits_wmask; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_0_bits_data_0 = entries_0_io_refill_pipe_req_bits_data_0; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_0_bits_data_1 = entries_0_io_refill_pipe_req_bits_data_1; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_0_bits_data_2 = entries_0_io_refill_pipe_req_bits_data_2; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_0_bits_data_3 = entries_0_io_refill_pipe_req_bits_data_3; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_0_bits_data_4 = entries_0_io_refill_pipe_req_bits_data_4; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_0_bits_data_5 = entries_0_io_refill_pipe_req_bits_data_5; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_0_bits_data_6 = entries_0_io_refill_pipe_req_bits_data_6; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_0_bits_data_7 = entries_0_io_refill_pipe_req_bits_data_7; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_0_bits_meta_coh_state = entries_0_io_refill_pipe_req_bits_meta_coh_state; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_1_valid = entries_1_io_refill_pipe_req_valid; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_1_bits_source = entries_1_io_refill_pipe_req_bits_source; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_1_bits_addr = entries_1_io_refill_pipe_req_bits_addr; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_1_bits_way_en = entries_1_io_refill_pipe_req_bits_way_en; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_1_bits_alias = entries_1_io_refill_pipe_req_bits_alias; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_1_bits_miss_id = entries_1_io_refill_pipe_req_bits_miss_id; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_1_bits_id = entries_1_io_refill_pipe_req_bits_id; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_1_bits_error = entries_1_io_refill_pipe_req_bits_error; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_1_bits_wmask = entries_1_io_refill_pipe_req_bits_wmask; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_1_bits_data_0 = entries_1_io_refill_pipe_req_bits_data_0; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_1_bits_data_1 = entries_1_io_refill_pipe_req_bits_data_1; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_1_bits_data_2 = entries_1_io_refill_pipe_req_bits_data_2; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_1_bits_data_3 = entries_1_io_refill_pipe_req_bits_data_3; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_1_bits_data_4 = entries_1_io_refill_pipe_req_bits_data_4; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_1_bits_data_5 = entries_1_io_refill_pipe_req_bits_data_5; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_1_bits_data_6 = entries_1_io_refill_pipe_req_bits_data_6; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_1_bits_data_7 = entries_1_io_refill_pipe_req_bits_data_7; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_1_bits_meta_coh_state = entries_1_io_refill_pipe_req_bits_meta_coh_state; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_2_valid = entries_2_io_refill_pipe_req_valid; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_2_bits_source = entries_2_io_refill_pipe_req_bits_source; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_2_bits_addr = entries_2_io_refill_pipe_req_bits_addr; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_2_bits_way_en = entries_2_io_refill_pipe_req_bits_way_en; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_2_bits_alias = entries_2_io_refill_pipe_req_bits_alias; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_2_bits_miss_id = entries_2_io_refill_pipe_req_bits_miss_id; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_2_bits_id = entries_2_io_refill_pipe_req_bits_id; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_2_bits_error = entries_2_io_refill_pipe_req_bits_error; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_2_bits_wmask = entries_2_io_refill_pipe_req_bits_wmask; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_2_bits_data_0 = entries_2_io_refill_pipe_req_bits_data_0; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_2_bits_data_1 = entries_2_io_refill_pipe_req_bits_data_1; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_2_bits_data_2 = entries_2_io_refill_pipe_req_bits_data_2; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_2_bits_data_3 = entries_2_io_refill_pipe_req_bits_data_3; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_2_bits_data_4 = entries_2_io_refill_pipe_req_bits_data_4; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_2_bits_data_5 = entries_2_io_refill_pipe_req_bits_data_5; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_2_bits_data_6 = entries_2_io_refill_pipe_req_bits_data_6; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_2_bits_data_7 = entries_2_io_refill_pipe_req_bits_data_7; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_2_bits_meta_coh_state = entries_2_io_refill_pipe_req_bits_meta_coh_state; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_3_valid = entries_3_io_refill_pipe_req_valid; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_3_bits_source = entries_3_io_refill_pipe_req_bits_source; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_3_bits_addr = entries_3_io_refill_pipe_req_bits_addr; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_3_bits_way_en = entries_3_io_refill_pipe_req_bits_way_en; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_3_bits_alias = entries_3_io_refill_pipe_req_bits_alias; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_3_bits_miss_id = entries_3_io_refill_pipe_req_bits_miss_id; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_3_bits_id = entries_3_io_refill_pipe_req_bits_id; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_3_bits_error = entries_3_io_refill_pipe_req_bits_error; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_3_bits_wmask = entries_3_io_refill_pipe_req_bits_wmask; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_3_bits_data_0 = entries_3_io_refill_pipe_req_bits_data_0; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_3_bits_data_1 = entries_3_io_refill_pipe_req_bits_data_1; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_3_bits_data_2 = entries_3_io_refill_pipe_req_bits_data_2; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_3_bits_data_3 = entries_3_io_refill_pipe_req_bits_data_3; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_3_bits_data_4 = entries_3_io_refill_pipe_req_bits_data_4; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_3_bits_data_5 = entries_3_io_refill_pipe_req_bits_data_5; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_3_bits_data_6 = entries_3_io_refill_pipe_req_bits_data_6; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_3_bits_data_7 = entries_3_io_refill_pipe_req_bits_data_7; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_in_3_bits_meta_coh_state = entries_3_io_refill_pipe_req_bits_meta_coh_state; // @[DCacheWrapper.scala 253:9]
  assign refill_pipe_req_arb_io_out_ready = pipelineReg_24_io_in_ready; // @[MissQueue.scala 1005:33 MemCommon.scala 402:23]
  assign pipelineReg_clock = clock;
  assign pipelineReg_reset = reset;
  assign pipelineReg_io_in_valid = refill_pipe_req_arb_io_out_valid; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_io_in_bits_addr = refill_pipe_req_arb_io_out_bits_addr; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_io_in_bits_way_en = refill_pipe_req_arb_io_out_bits_way_en; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_io_in_bits_alias = refill_pipe_req_arb_io_out_bits_alias; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_io_out_ready = io_refill_pipe_req_dup_0_ready; // @[MemCommon.scala 403:11]
  assign pipelineReg_1_clock = clock;
  assign pipelineReg_1_reset = reset;
  assign pipelineReg_1_io_in_valid = refill_pipe_req_arb_io_out_valid; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_1_io_in_bits_addr = refill_pipe_req_arb_io_out_bits_addr; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_1_io_in_bits_way_en = refill_pipe_req_arb_io_out_bits_way_en; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_1_io_in_bits_alias = refill_pipe_req_arb_io_out_bits_alias; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_1_io_out_ready = io_refill_pipe_req_dup_1_ready; // @[MemCommon.scala 403:11]
  assign pipelineReg_2_clock = clock;
  assign pipelineReg_2_reset = reset;
  assign pipelineReg_2_io_in_valid = refill_pipe_req_arb_io_out_valid; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_2_io_in_bits_addr = refill_pipe_req_arb_io_out_bits_addr; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_2_io_in_bits_way_en = refill_pipe_req_arb_io_out_bits_way_en; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_2_io_in_bits_alias = refill_pipe_req_arb_io_out_bits_alias; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_2_io_out_ready = io_refill_pipe_req_dup_2_ready; // @[MemCommon.scala 403:11]
  assign pipelineReg_3_clock = clock;
  assign pipelineReg_3_reset = reset;
  assign pipelineReg_3_io_in_valid = refill_pipe_req_arb_io_out_valid; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_3_io_in_bits_addr = refill_pipe_req_arb_io_out_bits_addr; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_3_io_in_bits_way_en = refill_pipe_req_arb_io_out_bits_way_en; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_3_io_in_bits_alias = refill_pipe_req_arb_io_out_bits_alias; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_3_io_out_ready = io_refill_pipe_req_dup_3_ready; // @[MemCommon.scala 403:11]
  assign pipelineReg_4_clock = clock;
  assign pipelineReg_4_reset = reset;
  assign pipelineReg_4_io_in_valid = refill_pipe_req_arb_io_out_valid; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_4_io_in_bits_addr = refill_pipe_req_arb_io_out_bits_addr; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_4_io_in_bits_way_en = refill_pipe_req_arb_io_out_bits_way_en; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_4_io_in_bits_alias = refill_pipe_req_arb_io_out_bits_alias; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_4_io_out_ready = io_refill_pipe_req_dup_4_ready; // @[MemCommon.scala 403:11]
  assign pipelineReg_5_clock = clock;
  assign pipelineReg_5_reset = reset;
  assign pipelineReg_5_io_in_valid = refill_pipe_req_arb_io_out_valid; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_5_io_in_bits_addr = refill_pipe_req_arb_io_out_bits_addr; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_5_io_in_bits_way_en = refill_pipe_req_arb_io_out_bits_way_en; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_5_io_in_bits_alias = refill_pipe_req_arb_io_out_bits_alias; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_5_io_out_ready = io_refill_pipe_req_dup_5_ready; // @[MemCommon.scala 403:11]
  assign pipelineReg_6_clock = clock;
  assign pipelineReg_6_reset = reset;
  assign pipelineReg_6_io_in_valid = refill_pipe_req_arb_io_out_valid; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_6_io_in_bits_addr = refill_pipe_req_arb_io_out_bits_addr; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_6_io_in_bits_way_en = refill_pipe_req_arb_io_out_bits_way_en; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_6_io_in_bits_alias = refill_pipe_req_arb_io_out_bits_alias; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_6_io_out_ready = io_refill_pipe_req_dup_6_ready; // @[MemCommon.scala 403:11]
  assign pipelineReg_7_clock = clock;
  assign pipelineReg_7_reset = reset;
  assign pipelineReg_7_io_in_valid = refill_pipe_req_arb_io_out_valid; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_7_io_in_bits_addr = refill_pipe_req_arb_io_out_bits_addr; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_7_io_in_bits_way_en = refill_pipe_req_arb_io_out_bits_way_en; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_7_io_in_bits_alias = refill_pipe_req_arb_io_out_bits_alias; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_7_io_out_ready = io_refill_pipe_req_dup_7_ready; // @[MemCommon.scala 403:11]
  assign pipelineReg_8_clock = clock;
  assign pipelineReg_8_reset = reset;
  assign pipelineReg_8_io_in_valid = refill_pipe_req_arb_io_out_valid; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_8_io_in_bits_addr = refill_pipe_req_arb_io_out_bits_addr; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_8_io_in_bits_way_en = refill_pipe_req_arb_io_out_bits_way_en; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_8_io_in_bits_alias = refill_pipe_req_arb_io_out_bits_alias; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_8_io_out_ready = io_refill_pipe_req_dup_8_ready; // @[MemCommon.scala 403:11]
  assign pipelineReg_9_clock = clock;
  assign pipelineReg_9_reset = reset;
  assign pipelineReg_9_io_in_valid = refill_pipe_req_arb_io_out_valid; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_9_io_in_bits_addr = refill_pipe_req_arb_io_out_bits_addr; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_9_io_in_bits_way_en = refill_pipe_req_arb_io_out_bits_way_en; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_9_io_in_bits_alias = refill_pipe_req_arb_io_out_bits_alias; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_9_io_out_ready = io_refill_pipe_req_dup_9_ready; // @[MemCommon.scala 403:11]
  assign pipelineReg_10_clock = clock;
  assign pipelineReg_10_reset = reset;
  assign pipelineReg_10_io_in_valid = refill_pipe_req_arb_io_out_valid; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_10_io_in_bits_addr = refill_pipe_req_arb_io_out_bits_addr; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_10_io_in_bits_way_en = refill_pipe_req_arb_io_out_bits_way_en; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_10_io_in_bits_alias = refill_pipe_req_arb_io_out_bits_alias; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_10_io_out_ready = io_refill_pipe_req_dup_10_ready; // @[MemCommon.scala 403:11]
  assign pipelineReg_11_clock = clock;
  assign pipelineReg_11_reset = reset;
  assign pipelineReg_11_io_in_valid = refill_pipe_req_arb_io_out_valid; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_11_io_in_bits_addr = refill_pipe_req_arb_io_out_bits_addr; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_11_io_in_bits_way_en = refill_pipe_req_arb_io_out_bits_way_en; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_11_io_in_bits_alias = refill_pipe_req_arb_io_out_bits_alias; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_11_io_out_ready = io_refill_pipe_req_dup_11_ready; // @[MemCommon.scala 403:11]
  assign pipelineReg_12_clock = clock;
  assign pipelineReg_12_reset = reset;
  assign pipelineReg_12_io_in_valid = refill_pipe_req_arb_io_out_valid; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_12_io_in_bits_addr = refill_pipe_req_arb_io_out_bits_addr; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_12_io_in_bits_way_en = refill_pipe_req_arb_io_out_bits_way_en; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_12_io_in_bits_alias = refill_pipe_req_arb_io_out_bits_alias; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_12_io_out_ready = io_refill_pipe_req_dup_12_ready; // @[MemCommon.scala 403:11]
  assign pipelineReg_13_clock = clock;
  assign pipelineReg_13_reset = reset;
  assign pipelineReg_13_io_in_valid = refill_pipe_req_arb_io_out_valid; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_13_io_in_bits_addr = refill_pipe_req_arb_io_out_bits_addr; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_13_io_in_bits_way_en = refill_pipe_req_arb_io_out_bits_way_en; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_13_io_in_bits_alias = refill_pipe_req_arb_io_out_bits_alias; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_13_io_out_ready = io_refill_pipe_req_dup_13_ready; // @[MemCommon.scala 403:11]
  assign pipelineReg_14_clock = clock;
  assign pipelineReg_14_reset = reset;
  assign pipelineReg_14_io_in_valid = refill_pipe_req_arb_io_out_valid; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_14_io_in_bits_addr = refill_pipe_req_arb_io_out_bits_addr; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_14_io_in_bits_way_en = refill_pipe_req_arb_io_out_bits_way_en; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_14_io_in_bits_alias = refill_pipe_req_arb_io_out_bits_alias; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_14_io_out_ready = io_refill_pipe_req_dup_14_ready; // @[MemCommon.scala 403:11]
  assign pipelineReg_15_clock = clock;
  assign pipelineReg_15_reset = reset;
  assign pipelineReg_15_io_in_valid = refill_pipe_req_arb_io_out_valid; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_15_io_in_bits_addr = refill_pipe_req_arb_io_out_bits_addr; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_15_io_in_bits_way_en = refill_pipe_req_arb_io_out_bits_way_en; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_15_io_in_bits_alias = refill_pipe_req_arb_io_out_bits_alias; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_15_io_out_ready = io_refill_pipe_req_dup_15_ready; // @[MemCommon.scala 403:11]
  assign pipelineReg_16_clock = clock;
  assign pipelineReg_16_reset = reset;
  assign pipelineReg_16_io_in_valid = refill_pipe_req_arb_io_out_valid; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_16_io_in_bits_addr = refill_pipe_req_arb_io_out_bits_addr; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_16_io_in_bits_way_en = refill_pipe_req_arb_io_out_bits_way_en; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_16_io_in_bits_alias = refill_pipe_req_arb_io_out_bits_alias; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_16_io_out_ready = io_refill_pipe_req_dup_16_ready; // @[MemCommon.scala 403:11]
  assign pipelineReg_17_clock = clock;
  assign pipelineReg_17_reset = reset;
  assign pipelineReg_17_io_in_valid = refill_pipe_req_arb_io_out_valid; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_17_io_in_bits_addr = refill_pipe_req_arb_io_out_bits_addr; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_17_io_in_bits_way_en = refill_pipe_req_arb_io_out_bits_way_en; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_17_io_in_bits_alias = refill_pipe_req_arb_io_out_bits_alias; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_17_io_out_ready = io_refill_pipe_req_dup_17_ready; // @[MemCommon.scala 403:11]
  assign pipelineReg_18_clock = clock;
  assign pipelineReg_18_reset = reset;
  assign pipelineReg_18_io_in_valid = refill_pipe_req_arb_io_out_valid; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_18_io_in_bits_addr = refill_pipe_req_arb_io_out_bits_addr; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_18_io_in_bits_way_en = refill_pipe_req_arb_io_out_bits_way_en; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_18_io_in_bits_alias = refill_pipe_req_arb_io_out_bits_alias; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_18_io_out_ready = io_refill_pipe_req_dup_18_ready; // @[MemCommon.scala 403:11]
  assign pipelineReg_19_clock = clock;
  assign pipelineReg_19_reset = reset;
  assign pipelineReg_19_io_in_valid = refill_pipe_req_arb_io_out_valid; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_19_io_in_bits_addr = refill_pipe_req_arb_io_out_bits_addr; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_19_io_in_bits_way_en = refill_pipe_req_arb_io_out_bits_way_en; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_19_io_in_bits_alias = refill_pipe_req_arb_io_out_bits_alias; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_19_io_out_ready = io_refill_pipe_req_dup_19_ready; // @[MemCommon.scala 403:11]
  assign pipelineReg_20_clock = clock;
  assign pipelineReg_20_reset = reset;
  assign pipelineReg_20_io_in_valid = refill_pipe_req_arb_io_out_valid; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_20_io_in_bits_addr = refill_pipe_req_arb_io_out_bits_addr; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_20_io_in_bits_way_en = refill_pipe_req_arb_io_out_bits_way_en; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_20_io_in_bits_alias = refill_pipe_req_arb_io_out_bits_alias; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_20_io_out_ready = io_refill_pipe_req_dup_20_ready; // @[MemCommon.scala 403:11]
  assign pipelineReg_21_clock = clock;
  assign pipelineReg_21_reset = reset;
  assign pipelineReg_21_io_in_valid = refill_pipe_req_arb_io_out_valid; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_21_io_in_bits_addr = refill_pipe_req_arb_io_out_bits_addr; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_21_io_in_bits_way_en = refill_pipe_req_arb_io_out_bits_way_en; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_21_io_in_bits_alias = refill_pipe_req_arb_io_out_bits_alias; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_21_io_out_ready = io_refill_pipe_req_dup_21_ready; // @[MemCommon.scala 403:11]
  assign pipelineReg_22_clock = clock;
  assign pipelineReg_22_reset = reset;
  assign pipelineReg_22_io_in_valid = refill_pipe_req_arb_io_out_valid; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_22_io_in_bits_addr = refill_pipe_req_arb_io_out_bits_addr; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_22_io_in_bits_way_en = refill_pipe_req_arb_io_out_bits_way_en; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_22_io_in_bits_alias = refill_pipe_req_arb_io_out_bits_alias; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_22_io_out_ready = io_refill_pipe_req_dup_22_ready; // @[MemCommon.scala 403:11]
  assign pipelineReg_23_clock = clock;
  assign pipelineReg_23_reset = reset;
  assign pipelineReg_23_io_in_valid = refill_pipe_req_arb_io_out_valid; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_23_io_in_bits_addr = refill_pipe_req_arb_io_out_bits_addr; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_23_io_in_bits_way_en = refill_pipe_req_arb_io_out_bits_way_en; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_23_io_in_bits_alias = refill_pipe_req_arb_io_out_bits_alias; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_23_io_out_ready = io_refill_pipe_req_dup_23_ready; // @[MemCommon.scala 403:11]
  assign pipelineReg_24_clock = clock;
  assign pipelineReg_24_reset = reset;
  assign pipelineReg_24_io_in_valid = refill_pipe_req_arb_io_out_valid; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_24_io_in_bits_source = refill_pipe_req_arb_io_out_bits_source; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_24_io_in_bits_addr = refill_pipe_req_arb_io_out_bits_addr; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_24_io_in_bits_way_en = refill_pipe_req_arb_io_out_bits_way_en; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_24_io_in_bits_alias = refill_pipe_req_arb_io_out_bits_alias; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_24_io_in_bits_miss_id = refill_pipe_req_arb_io_out_bits_miss_id; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_24_io_in_bits_id = refill_pipe_req_arb_io_out_bits_id; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_24_io_in_bits_error = refill_pipe_req_arb_io_out_bits_error; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_24_io_in_bits_wmask = refill_pipe_req_arb_io_out_bits_wmask; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_24_io_in_bits_data_0 = refill_pipe_req_arb_io_out_bits_data_0; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_24_io_in_bits_data_1 = refill_pipe_req_arb_io_out_bits_data_1; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_24_io_in_bits_data_2 = refill_pipe_req_arb_io_out_bits_data_2; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_24_io_in_bits_data_3 = refill_pipe_req_arb_io_out_bits_data_3; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_24_io_in_bits_data_4 = refill_pipe_req_arb_io_out_bits_data_4; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_24_io_in_bits_data_5 = refill_pipe_req_arb_io_out_bits_data_5; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_24_io_in_bits_data_6 = refill_pipe_req_arb_io_out_bits_data_6; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_24_io_in_bits_data_7 = refill_pipe_req_arb_io_out_bits_data_7; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_24_io_in_bits_meta_coh_state = refill_pipe_req_arb_io_out_bits_meta_coh_state; // @[MissQueue.scala 1005:33 DCacheWrapper.scala 255:9]
  assign pipelineReg_24_io_out_ready = io_refill_pipe_req_ready; // @[MemCommon.scala 403:11]
  assign replace_pipe_req_arb_io_in_0_valid = entries_0_io_replace_pipe_req_valid; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_0_bits_miss = 1'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_0_bits_miss_id = entries_0_io_replace_pipe_req_bits_miss_id; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_0_bits_miss_param = 2'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_0_bits_miss_dirty = 1'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_0_bits_miss_way_en = 8'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_0_bits_probe = 1'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_0_bits_probe_param = 2'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_0_bits_probe_need_data = 1'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_0_bits_source = 4'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_0_bits_cmd = 5'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_0_bits_vaddr = entries_0_io_replace_pipe_req_bits_vaddr; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_0_bits_addr = entries_0_io_replace_pipe_req_bits_addr; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_0_bits_store_data = 512'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_0_bits_store_mask = 64'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_0_bits_word_idx = 3'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_0_bits_amo_data = 64'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_0_bits_amo_mask = 8'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_0_bits_error = 1'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_0_bits_replace = 1'h1; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_0_bits_replace_way_en = entries_0_io_replace_pipe_req_bits_replace_way_en; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_0_bits_id = 4'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_1_valid = entries_1_io_replace_pipe_req_valid; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_1_bits_miss = 1'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_1_bits_miss_id = entries_1_io_replace_pipe_req_bits_miss_id; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_1_bits_miss_param = 2'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_1_bits_miss_dirty = 1'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_1_bits_miss_way_en = 8'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_1_bits_probe = 1'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_1_bits_probe_param = 2'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_1_bits_probe_need_data = 1'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_1_bits_source = 4'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_1_bits_cmd = 5'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_1_bits_vaddr = entries_1_io_replace_pipe_req_bits_vaddr; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_1_bits_addr = entries_1_io_replace_pipe_req_bits_addr; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_1_bits_store_data = 512'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_1_bits_store_mask = 64'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_1_bits_word_idx = 3'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_1_bits_amo_data = 64'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_1_bits_amo_mask = 8'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_1_bits_error = 1'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_1_bits_replace = 1'h1; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_1_bits_replace_way_en = entries_1_io_replace_pipe_req_bits_replace_way_en; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_1_bits_id = 4'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_2_valid = entries_2_io_replace_pipe_req_valid; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_2_bits_miss_id = entries_2_io_replace_pipe_req_bits_miss_id; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_2_bits_probe = 1'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_2_bits_probe_param = 2'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_2_bits_probe_need_data = 1'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_2_bits_source = 4'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_2_bits_cmd = 5'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_2_bits_vaddr = entries_2_io_replace_pipe_req_bits_vaddr; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_2_bits_addr = entries_2_io_replace_pipe_req_bits_addr; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_2_bits_store_data = 512'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_2_bits_store_mask = 64'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_2_bits_replace = 1'h1; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_2_bits_replace_way_en = entries_2_io_replace_pipe_req_bits_replace_way_en; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_2_bits_id = 4'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_3_valid = entries_3_io_replace_pipe_req_valid; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_3_bits_miss = 1'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_3_bits_miss_id = entries_3_io_replace_pipe_req_bits_miss_id; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_3_bits_miss_param = 2'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_3_bits_miss_dirty = 1'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_3_bits_miss_way_en = 8'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_3_bits_probe = 1'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_3_bits_probe_param = 2'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_3_bits_probe_need_data = 1'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_3_bits_source = 4'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_3_bits_cmd = 5'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_3_bits_vaddr = entries_3_io_replace_pipe_req_bits_vaddr; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_3_bits_addr = entries_3_io_replace_pipe_req_bits_addr; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_3_bits_store_data = 512'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_3_bits_store_mask = 64'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_3_bits_word_idx = 3'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_3_bits_amo_data = 64'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_3_bits_amo_mask = 8'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_3_bits_error = 1'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_3_bits_replace = 1'h1; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_3_bits_replace_way_en = entries_3_io_replace_pipe_req_bits_replace_way_en; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_in_3_bits_id = 4'h0; // @[DCacheWrapper.scala 265:9]
  assign replace_pipe_req_arb_io_out_ready = pipelineReg_25_io_in_ready; // @[MemCommon.scala 402:23]
  assign pipelineReg_25_clock = clock;
  assign pipelineReg_25_reset = reset;
  assign pipelineReg_25_io_in_valid = replace_pipe_req_arb_io_out_valid; // @[MemCommon.scala 402:23]
  assign pipelineReg_25_io_in_bits_miss = replace_pipe_req_arb_io_out_bits_miss; // @[MemCommon.scala 402:23]
  assign pipelineReg_25_io_in_bits_miss_id = replace_pipe_req_arb_io_out_bits_miss_id; // @[MemCommon.scala 402:23]
  assign pipelineReg_25_io_in_bits_miss_param = replace_pipe_req_arb_io_out_bits_miss_param; // @[MemCommon.scala 402:23]
  assign pipelineReg_25_io_in_bits_miss_dirty = replace_pipe_req_arb_io_out_bits_miss_dirty; // @[MemCommon.scala 402:23]
  assign pipelineReg_25_io_in_bits_miss_way_en = replace_pipe_req_arb_io_out_bits_miss_way_en; // @[MemCommon.scala 402:23]
  assign pipelineReg_25_io_in_bits_probe = replace_pipe_req_arb_io_out_bits_probe; // @[MemCommon.scala 402:23]
  assign pipelineReg_25_io_in_bits_probe_param = replace_pipe_req_arb_io_out_bits_probe_param; // @[MemCommon.scala 402:23]
  assign pipelineReg_25_io_in_bits_probe_need_data = replace_pipe_req_arb_io_out_bits_probe_need_data; // @[MemCommon.scala 402:23]
  assign pipelineReg_25_io_in_bits_source = replace_pipe_req_arb_io_out_bits_source; // @[MemCommon.scala 402:23]
  assign pipelineReg_25_io_in_bits_cmd = replace_pipe_req_arb_io_out_bits_cmd; // @[MemCommon.scala 402:23]
  assign pipelineReg_25_io_in_bits_vaddr = replace_pipe_req_arb_io_out_bits_vaddr; // @[MemCommon.scala 402:23]
  assign pipelineReg_25_io_in_bits_addr = replace_pipe_req_arb_io_out_bits_addr; // @[MemCommon.scala 402:23]
  assign pipelineReg_25_io_in_bits_store_data = replace_pipe_req_arb_io_out_bits_store_data; // @[MemCommon.scala 402:23]
  assign pipelineReg_25_io_in_bits_store_mask = replace_pipe_req_arb_io_out_bits_store_mask; // @[MemCommon.scala 402:23]
  assign pipelineReg_25_io_in_bits_word_idx = replace_pipe_req_arb_io_out_bits_word_idx; // @[MemCommon.scala 402:23]
  assign pipelineReg_25_io_in_bits_amo_data = replace_pipe_req_arb_io_out_bits_amo_data; // @[MemCommon.scala 402:23]
  assign pipelineReg_25_io_in_bits_amo_mask = replace_pipe_req_arb_io_out_bits_amo_mask; // @[MemCommon.scala 402:23]
  assign pipelineReg_25_io_in_bits_error = replace_pipe_req_arb_io_out_bits_error; // @[MemCommon.scala 402:23]
  assign pipelineReg_25_io_in_bits_replace = replace_pipe_req_arb_io_out_bits_replace; // @[MemCommon.scala 402:23]
  assign pipelineReg_25_io_in_bits_replace_way_en = replace_pipe_req_arb_io_out_bits_replace_way_en; // @[MemCommon.scala 402:23]
  assign pipelineReg_25_io_in_bits_id = replace_pipe_req_arb_io_out_bits_id; // @[MemCommon.scala 402:23]
  assign pipelineReg_25_io_out_ready = io_replace_pipe_req_ready; // @[MemCommon.scala 403:11]
  always @(posedge clock) begin
    memSetPattenDetected <= source_except_load_cnt >= 10'h8 & io_lqEmpty; // @[MissQueue.scala 903:78]
    io_forward_0_forward_result_valid_REG <= io_forward_0_valid & _GEN_78 & io_forward_0_paddr[35:6] == _GEN_82[35:6]; // @[DCacheWrapper.scala 670:35]
    io_forward_1_forward_result_valid_REG <= io_forward_1_valid & _GEN_158 & io_forward_1_paddr[35:6] == _GEN_162[35:6]; // @[DCacheWrapper.scala 670:35]
    perfValidCount <= _perfValidCount_T_4 + _perfValidCount_T_6; // @[Bitwise.scala 48:55]
    io_perf_0_value_REG <= io_req_ready & io_req_valid; // @[Decoupled.scala 50:35]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_1_value_REG <= perfValidCount < 3'h1; // @[MissQueue.scala 1115:48]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_2_value_REG <= perfValidCount > 3'h1 & perfValidCount <= _T_374; // @[MissQueue.scala 1116:76]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_3_value_REG <= perfValidCount > _T_374 & _GEN_543 <= _T_380; // @[MissQueue.scala 1117:76]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_4_value_REG <= _GEN_543 > _T_380; // @[MissQueue.scala 1118:48]
    io_perf_4_value_REG_1 <= io_perf_4_value_REG; // @[PerfCounterUtils.scala 295:27]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MissQueue.scala 859:34]
      miss_req_pipe_reg_req_source <= 4'h0; // @[MissQueue.scala 859:34]
    end else begin
      miss_req_pipe_reg_req_source <= io_req_bits_source; // @[MissQueue.scala 885:29]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MissQueue.scala 859:34]
      miss_req_pipe_reg_req_cmd <= 5'h0; // @[MissQueue.scala 859:34]
    end else begin
      miss_req_pipe_reg_req_cmd <= io_req_bits_cmd; // @[MissQueue.scala 885:29]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MissQueue.scala 859:34]
      miss_req_pipe_reg_req_addr <= 36'h0; // @[MissQueue.scala 859:34]
    end else begin
      miss_req_pipe_reg_req_addr <= io_req_bits_addr; // @[MissQueue.scala 885:29]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MissQueue.scala 859:34]
      miss_req_pipe_reg_req_vaddr <= 39'h0; // @[MissQueue.scala 859:34]
    end else begin
      miss_req_pipe_reg_req_vaddr <= io_req_bits_vaddr; // @[MissQueue.scala 885:29]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MissQueue.scala 859:34]
      miss_req_pipe_reg_req_way_en <= 8'h0; // @[MissQueue.scala 859:34]
    end else begin
      miss_req_pipe_reg_req_way_en <= io_req_bits_way_en; // @[MissQueue.scala 885:29]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MissQueue.scala 859:34]
      miss_req_pipe_reg_req_word_idx <= 3'h0; // @[MissQueue.scala 859:34]
    end else begin
      miss_req_pipe_reg_req_word_idx <= io_req_bits_word_idx; // @[MissQueue.scala 885:29]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MissQueue.scala 859:34]
      miss_req_pipe_reg_req_amo_data <= 64'h0; // @[MissQueue.scala 859:34]
    end else begin
      miss_req_pipe_reg_req_amo_data <= io_req_bits_amo_data; // @[MissQueue.scala 885:29]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MissQueue.scala 859:34]
      miss_req_pipe_reg_req_amo_mask <= 8'h0; // @[MissQueue.scala 859:34]
    end else begin
      miss_req_pipe_reg_req_amo_mask <= io_req_bits_amo_mask; // @[MissQueue.scala 885:29]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MissQueue.scala 859:34]
      miss_req_pipe_reg_req_req_coh_state <= 2'h0; // @[MissQueue.scala 859:34]
    end else begin
      miss_req_pipe_reg_req_req_coh_state <= io_req_bits_req_coh_state; // @[MissQueue.scala 885:29]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MissQueue.scala 859:34]
      miss_req_pipe_reg_req_replace_coh_state <= 2'h0; // @[MissQueue.scala 859:34]
    end else begin
      miss_req_pipe_reg_req_replace_coh_state <= io_req_bits_replace_coh_state; // @[MissQueue.scala 885:29]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MissQueue.scala 859:34]
      miss_req_pipe_reg_req_replace_tag <= 24'h0; // @[MissQueue.scala 859:34]
    end else begin
      miss_req_pipe_reg_req_replace_tag <= io_req_bits_replace_tag; // @[MissQueue.scala 885:29]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MissQueue.scala 859:34]
      miss_req_pipe_reg_req_id <= 4'h0; // @[MissQueue.scala 859:34]
    end else begin
      miss_req_pipe_reg_req_id <= io_req_bits_id; // @[MissQueue.scala 885:29]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MissQueue.scala 859:34]
      miss_req_pipe_reg_req_store_data <= 512'h0; // @[MissQueue.scala 859:34]
    end else begin
      miss_req_pipe_reg_req_store_data <= io_req_bits_store_data; // @[MissQueue.scala 885:29]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MissQueue.scala 859:34]
      miss_req_pipe_reg_req_store_mask <= 64'h0; // @[MissQueue.scala 859:34]
    end else begin
      miss_req_pipe_reg_req_store_mask <= io_req_bits_store_mask; // @[MissQueue.scala 885:29]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MissQueue.scala 887:54]
      miss_req_pipe_reg_merge <= 1'h0;
    end else begin
      miss_req_pipe_reg_merge <= merge & io_req_valid & _miss_req_pipe_reg_alloc_T_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MissQueue.scala 886:54]
      miss_req_pipe_reg_alloc <= 1'h0;
    end else begin
      miss_req_pipe_reg_alloc <= alloc & io_req_valid & ~io_req_bits_cancel;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MissQueue.scala 859:34]
      miss_req_pipe_reg_mshr_id <= 2'h0; // @[MissQueue.scala 859:34]
    end else begin
      miss_req_pipe_reg_mshr_id <= io_resp_id; // @[MissQueue.scala 888:29]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MissQueue.scala 893:78]
      source_except_load_cnt <= 10'h0; // @[MissQueue.scala 894:34 895:30 897:37 898:32 892:39]
    end else if (_T_1 | _merge_T_3) begin // @[MissQueue.scala 892:39]
      if (_merge_merge_load_T_5) begin
        source_except_load_cnt <= 10'h0;
      end else if (_merge_merge_store_T_3) begin
        source_except_load_cnt <= _source_except_load_cnt_T_1;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 674:81]
      forward_mshr <= 1'h0;
    end else begin
      forward_mshr <= ~io_forward_0_paddr[5] & _GEN_6 | _all_match_T_5;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 688:38]
      forwardData__0 <= 8'h0;
    end else begin
      forwardData__0 <= selected_data[7:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 688:38]
      forwardData__1 <= 8'h0;
    end else begin
      forwardData__1 <= selected_data[15:8];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 688:38]
      forwardData__2 <= 8'h0;
    end else begin
      forwardData__2 <= selected_data[23:16];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 688:38]
      forwardData__3 <= 8'h0;
    end else begin
      forwardData__3 <= selected_data[31:24];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 688:38]
      forwardData__4 <= 8'h0;
    end else begin
      forwardData__4 <= selected_data[39:32];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 688:38]
      forwardData__5 <= 8'h0;
    end else begin
      forwardData__5 <= selected_data[47:40];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 688:38]
      forwardData__6 <= 8'h0;
    end else begin
      forwardData__6 <= selected_data[55:48];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 688:38]
      forwardData__7 <= 8'h0;
    end else begin
      forwardData__7 <= selected_data[63:56];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 688:38]
      forwardData__8 <= 8'h0;
    end else begin
      forwardData__8 <= selected_data[71:64];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 688:38]
      forwardData__9 <= 8'h0;
    end else begin
      forwardData__9 <= selected_data[79:72];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 688:38]
      forwardData__10 <= 8'h0;
    end else begin
      forwardData__10 <= selected_data[87:80];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 688:38]
      forwardData__11 <= 8'h0;
    end else begin
      forwardData__11 <= selected_data[95:88];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 688:38]
      forwardData__12 <= 8'h0;
    end else begin
      forwardData__12 <= selected_data[103:96];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 688:38]
      forwardData__13 <= 8'h0;
    end else begin
      forwardData__13 <= selected_data[111:104];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 688:38]
      forwardData__14 <= 8'h0;
    end else begin
      forwardData__14 <= selected_data[119:112];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 688:38]
      forwardData__15 <= 8'h0;
    end else begin
      forwardData__15 <= selected_data[127:120];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 674:81]
      forward_mshr_1 <= 1'h0;
    end else begin
      forward_mshr_1 <= ~io_forward_1_paddr[5] & _GEN_86 | _all_match_T_11;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 688:38]
      forwardData_1_0 <= 8'h0;
    end else begin
      forwardData_1_0 <= selected_data_1[7:0];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 688:38]
      forwardData_1_1 <= 8'h0;
    end else begin
      forwardData_1_1 <= selected_data_1[15:8];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 688:38]
      forwardData_1_2 <= 8'h0;
    end else begin
      forwardData_1_2 <= selected_data_1[23:16];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 688:38]
      forwardData_1_3 <= 8'h0;
    end else begin
      forwardData_1_3 <= selected_data_1[31:24];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 688:38]
      forwardData_1_4 <= 8'h0;
    end else begin
      forwardData_1_4 <= selected_data_1[39:32];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 688:38]
      forwardData_1_5 <= 8'h0;
    end else begin
      forwardData_1_5 <= selected_data_1[47:40];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 688:38]
      forwardData_1_6 <= 8'h0;
    end else begin
      forwardData_1_6 <= selected_data_1[55:48];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 688:38]
      forwardData_1_7 <= 8'h0;
    end else begin
      forwardData_1_7 <= selected_data_1[63:56];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 688:38]
      forwardData_1_8 <= 8'h0;
    end else begin
      forwardData_1_8 <= selected_data_1[71:64];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 688:38]
      forwardData_1_9 <= 8'h0;
    end else begin
      forwardData_1_9 <= selected_data_1[79:72];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 688:38]
      forwardData_1_10 <= 8'h0;
    end else begin
      forwardData_1_10 <= selected_data_1[87:80];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 688:38]
      forwardData_1_11 <= 8'h0;
    end else begin
      forwardData_1_11 <= selected_data_1[95:88];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 688:38]
      forwardData_1_12 <= 8'h0;
    end else begin
      forwardData_1_12 <= selected_data_1[103:96];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 688:38]
      forwardData_1_13 <= 8'h0;
    end else begin
      forwardData_1_13 <= selected_data_1[111:104];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 688:38]
      forwardData_1_14 <= 8'h0;
    end else begin
      forwardData_1_14 <= selected_data_1[119:112];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[DCacheWrapper.scala 688:38]
      forwardData_1_15 <= 8'h0;
    end else begin
      forwardData_1_15 <= selected_data_1[127:120];
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 113:23]
      beatsLeft <= 1'h0;
    end else if (latch) begin
      beatsLeft <= 1'h0;
    end else begin
      beatsLeft <= beatsLeft - _beatsLeft_T_2;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state__0 <= 1'h0;
    end else if (idle) begin
      state__0 <= earlyWinner__0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state__1 <= 1'h0;
    end else if (idle) begin
      state__1 <= earlyWinner__1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state__2 <= 1'h0;
    end else if (idle) begin
      state__2 <= earlyWinner__2;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state__3 <= 1'h0;
    end else if (idle) begin
      state__3 <= earlyWinner__3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state__4 <= 1'h0;
    end else if (idle) begin
      state__4 <= earlyWinner__4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 113:23]
      beatsLeft_1 <= 1'h0;
    end else if (latch_1) begin
      beatsLeft_1 <= 1'h0;
    end else begin
      beatsLeft_1 <= beatsLeft_1 - _beatsLeft_T_8;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state_1_0 <= 1'h0;
    end else if (idle_1) begin
      state_1_0 <= earlyWinner_1_0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state_1_1 <= 1'h0;
    end else if (idle_1) begin
      state_1_1 <= earlyWinner_1_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state_1_2 <= 1'h0;
    end else if (idle_1) begin
      state_1_2 <= earlyWinner_1_2;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state_1_3 <= 1'h0;
    end else if (idle_1) begin
      state_1_3 <= earlyWinner_1_3;
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
  miss_req_pipe_reg_req_source = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  miss_req_pipe_reg_req_cmd = _RAND_1[4:0];
  _RAND_2 = {2{`RANDOM}};
  miss_req_pipe_reg_req_addr = _RAND_2[35:0];
  _RAND_3 = {2{`RANDOM}};
  miss_req_pipe_reg_req_vaddr = _RAND_3[38:0];
  _RAND_4 = {1{`RANDOM}};
  miss_req_pipe_reg_req_way_en = _RAND_4[7:0];
  _RAND_5 = {1{`RANDOM}};
  miss_req_pipe_reg_req_word_idx = _RAND_5[2:0];
  _RAND_6 = {2{`RANDOM}};
  miss_req_pipe_reg_req_amo_data = _RAND_6[63:0];
  _RAND_7 = {1{`RANDOM}};
  miss_req_pipe_reg_req_amo_mask = _RAND_7[7:0];
  _RAND_8 = {1{`RANDOM}};
  miss_req_pipe_reg_req_req_coh_state = _RAND_8[1:0];
  _RAND_9 = {1{`RANDOM}};
  miss_req_pipe_reg_req_replace_coh_state = _RAND_9[1:0];
  _RAND_10 = {1{`RANDOM}};
  miss_req_pipe_reg_req_replace_tag = _RAND_10[23:0];
  _RAND_11 = {1{`RANDOM}};
  miss_req_pipe_reg_req_id = _RAND_11[3:0];
  _RAND_12 = {16{`RANDOM}};
  miss_req_pipe_reg_req_store_data = _RAND_12[511:0];
  _RAND_13 = {2{`RANDOM}};
  miss_req_pipe_reg_req_store_mask = _RAND_13[63:0];
  _RAND_14 = {1{`RANDOM}};
  miss_req_pipe_reg_merge = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  miss_req_pipe_reg_alloc = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  miss_req_pipe_reg_mshr_id = _RAND_16[1:0];
  _RAND_17 = {1{`RANDOM}};
  source_except_load_cnt = _RAND_17[9:0];
  _RAND_18 = {1{`RANDOM}};
  memSetPattenDetected = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  forward_mshr = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  forwardData__0 = _RAND_20[7:0];
  _RAND_21 = {1{`RANDOM}};
  forwardData__1 = _RAND_21[7:0];
  _RAND_22 = {1{`RANDOM}};
  forwardData__2 = _RAND_22[7:0];
  _RAND_23 = {1{`RANDOM}};
  forwardData__3 = _RAND_23[7:0];
  _RAND_24 = {1{`RANDOM}};
  forwardData__4 = _RAND_24[7:0];
  _RAND_25 = {1{`RANDOM}};
  forwardData__5 = _RAND_25[7:0];
  _RAND_26 = {1{`RANDOM}};
  forwardData__6 = _RAND_26[7:0];
  _RAND_27 = {1{`RANDOM}};
  forwardData__7 = _RAND_27[7:0];
  _RAND_28 = {1{`RANDOM}};
  forwardData__8 = _RAND_28[7:0];
  _RAND_29 = {1{`RANDOM}};
  forwardData__9 = _RAND_29[7:0];
  _RAND_30 = {1{`RANDOM}};
  forwardData__10 = _RAND_30[7:0];
  _RAND_31 = {1{`RANDOM}};
  forwardData__11 = _RAND_31[7:0];
  _RAND_32 = {1{`RANDOM}};
  forwardData__12 = _RAND_32[7:0];
  _RAND_33 = {1{`RANDOM}};
  forwardData__13 = _RAND_33[7:0];
  _RAND_34 = {1{`RANDOM}};
  forwardData__14 = _RAND_34[7:0];
  _RAND_35 = {1{`RANDOM}};
  forwardData__15 = _RAND_35[7:0];
  _RAND_36 = {1{`RANDOM}};
  io_forward_0_forward_result_valid_REG = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  forward_mshr_1 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  forwardData_1_0 = _RAND_38[7:0];
  _RAND_39 = {1{`RANDOM}};
  forwardData_1_1 = _RAND_39[7:0];
  _RAND_40 = {1{`RANDOM}};
  forwardData_1_2 = _RAND_40[7:0];
  _RAND_41 = {1{`RANDOM}};
  forwardData_1_3 = _RAND_41[7:0];
  _RAND_42 = {1{`RANDOM}};
  forwardData_1_4 = _RAND_42[7:0];
  _RAND_43 = {1{`RANDOM}};
  forwardData_1_5 = _RAND_43[7:0];
  _RAND_44 = {1{`RANDOM}};
  forwardData_1_6 = _RAND_44[7:0];
  _RAND_45 = {1{`RANDOM}};
  forwardData_1_7 = _RAND_45[7:0];
  _RAND_46 = {1{`RANDOM}};
  forwardData_1_8 = _RAND_46[7:0];
  _RAND_47 = {1{`RANDOM}};
  forwardData_1_9 = _RAND_47[7:0];
  _RAND_48 = {1{`RANDOM}};
  forwardData_1_10 = _RAND_48[7:0];
  _RAND_49 = {1{`RANDOM}};
  forwardData_1_11 = _RAND_49[7:0];
  _RAND_50 = {1{`RANDOM}};
  forwardData_1_12 = _RAND_50[7:0];
  _RAND_51 = {1{`RANDOM}};
  forwardData_1_13 = _RAND_51[7:0];
  _RAND_52 = {1{`RANDOM}};
  forwardData_1_14 = _RAND_52[7:0];
  _RAND_53 = {1{`RANDOM}};
  forwardData_1_15 = _RAND_53[7:0];
  _RAND_54 = {1{`RANDOM}};
  io_forward_1_forward_result_valid_REG = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  beatsLeft = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  state__0 = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  state__1 = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  state__2 = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  state__3 = _RAND_59[0:0];
  _RAND_60 = {1{`RANDOM}};
  state__4 = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  beatsLeft_1 = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  state_1_0 = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  state_1_1 = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  state_1_2 = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  state_1_3 = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  perfValidCount = _RAND_66[2:0];
  _RAND_67 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_69[0:0];
  _RAND_70 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  io_perf_4_value_REG = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  io_perf_4_value_REG_1 = _RAND_76[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    miss_req_pipe_reg_req_source = 4'h0;
  end
  if (reset) begin
    miss_req_pipe_reg_req_cmd = 5'h0;
  end
  if (reset) begin
    miss_req_pipe_reg_req_addr = 36'h0;
  end
  if (reset) begin
    miss_req_pipe_reg_req_vaddr = 39'h0;
  end
  if (reset) begin
    miss_req_pipe_reg_req_way_en = 8'h0;
  end
  if (reset) begin
    miss_req_pipe_reg_req_word_idx = 3'h0;
  end
  if (reset) begin
    miss_req_pipe_reg_req_amo_data = 64'h0;
  end
  if (reset) begin
    miss_req_pipe_reg_req_amo_mask = 8'h0;
  end
  if (reset) begin
    miss_req_pipe_reg_req_req_coh_state = 2'h0;
  end
  if (reset) begin
    miss_req_pipe_reg_req_replace_coh_state = 2'h0;
  end
  if (reset) begin
    miss_req_pipe_reg_req_replace_tag = 24'h0;
  end
  if (reset) begin
    miss_req_pipe_reg_req_id = 4'h0;
  end
  if (reset) begin
    miss_req_pipe_reg_req_store_data = 512'h0;
  end
  if (reset) begin
    miss_req_pipe_reg_req_store_mask = 64'h0;
  end
  if (reset) begin
    miss_req_pipe_reg_merge = 1'h0;
  end
  if (reset) begin
    miss_req_pipe_reg_alloc = 1'h0;
  end
  if (reset) begin
    miss_req_pipe_reg_mshr_id = 2'h0;
  end
  if (reset) begin
    source_except_load_cnt = 10'h0;
  end
  if (reset) begin
    forward_mshr = 1'h0;
  end
  if (reset) begin
    forwardData__0 = 8'h0;
  end
  if (reset) begin
    forwardData__1 = 8'h0;
  end
  if (reset) begin
    forwardData__2 = 8'h0;
  end
  if (reset) begin
    forwardData__3 = 8'h0;
  end
  if (reset) begin
    forwardData__4 = 8'h0;
  end
  if (reset) begin
    forwardData__5 = 8'h0;
  end
  if (reset) begin
    forwardData__6 = 8'h0;
  end
  if (reset) begin
    forwardData__7 = 8'h0;
  end
  if (reset) begin
    forwardData__8 = 8'h0;
  end
  if (reset) begin
    forwardData__9 = 8'h0;
  end
  if (reset) begin
    forwardData__10 = 8'h0;
  end
  if (reset) begin
    forwardData__11 = 8'h0;
  end
  if (reset) begin
    forwardData__12 = 8'h0;
  end
  if (reset) begin
    forwardData__13 = 8'h0;
  end
  if (reset) begin
    forwardData__14 = 8'h0;
  end
  if (reset) begin
    forwardData__15 = 8'h0;
  end
  if (reset) begin
    forward_mshr_1 = 1'h0;
  end
  if (reset) begin
    forwardData_1_0 = 8'h0;
  end
  if (reset) begin
    forwardData_1_1 = 8'h0;
  end
  if (reset) begin
    forwardData_1_2 = 8'h0;
  end
  if (reset) begin
    forwardData_1_3 = 8'h0;
  end
  if (reset) begin
    forwardData_1_4 = 8'h0;
  end
  if (reset) begin
    forwardData_1_5 = 8'h0;
  end
  if (reset) begin
    forwardData_1_6 = 8'h0;
  end
  if (reset) begin
    forwardData_1_7 = 8'h0;
  end
  if (reset) begin
    forwardData_1_8 = 8'h0;
  end
  if (reset) begin
    forwardData_1_9 = 8'h0;
  end
  if (reset) begin
    forwardData_1_10 = 8'h0;
  end
  if (reset) begin
    forwardData_1_11 = 8'h0;
  end
  if (reset) begin
    forwardData_1_12 = 8'h0;
  end
  if (reset) begin
    forwardData_1_13 = 8'h0;
  end
  if (reset) begin
    forwardData_1_14 = 8'h0;
  end
  if (reset) begin
    forwardData_1_15 = 8'h0;
  end
  if (reset) begin
    beatsLeft = 1'h0;
  end
  if (reset) begin
    state__0 = 1'h0;
  end
  if (reset) begin
    state__1 = 1'h0;
  end
  if (reset) begin
    state__2 = 1'h0;
  end
  if (reset) begin
    state__3 = 1'h0;
  end
  if (reset) begin
    state__4 = 1'h0;
  end
  if (reset) begin
    beatsLeft_1 = 1'h0;
  end
  if (reset) begin
    state_1_0 = 1'h0;
  end
  if (reset) begin
    state_1_1 = 1'h0;
  end
  if (reset) begin
    state_1_2 = 1'h0;
  end
  if (reset) begin
    state_1_3 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

