module DCacheWrapper(
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
  output [35:0]  io_error_paddr,
  output         io_error_report_to_beu,
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
`endif // RANDOMIZE_REG_INIT
  wire  dcache_clock; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_reset; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_auto_client_out_a_ready; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_auto_client_out_a_valid; // @[DCacheWrapper.scala 1475:41]
  wire [2:0] dcache_auto_client_out_a_bits_opcode; // @[DCacheWrapper.scala 1475:41]
  wire [2:0] dcache_auto_client_out_a_bits_param; // @[DCacheWrapper.scala 1475:41]
  wire [2:0] dcache_auto_client_out_a_bits_size; // @[DCacheWrapper.scala 1475:41]
  wire [3:0] dcache_auto_client_out_a_bits_source; // @[DCacheWrapper.scala 1475:41]
  wire [35:0] dcache_auto_client_out_a_bits_address; // @[DCacheWrapper.scala 1475:41]
  wire [32:0] dcache_auto_client_out_a_bits_user_vaddr; // @[DCacheWrapper.scala 1475:41]
  wire [3:0] dcache_auto_client_out_a_bits_user_reqSource; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_auto_client_out_a_bits_user_needHint; // @[DCacheWrapper.scala 1475:41]
  wire [31:0] dcache_auto_client_out_a_bits_mask; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_auto_client_out_bready; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_auto_client_out_bvalid; // @[DCacheWrapper.scala 1475:41]
  wire [1:0] dcache_auto_client_out_bparam; // @[DCacheWrapper.scala 1475:41]
  wire [35:0] dcache_auto_client_out_baddress; // @[DCacheWrapper.scala 1475:41]
  wire [255:0] dcache_auto_client_out_bdata; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_auto_client_out_c_ready; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_auto_client_out_c_valid; // @[DCacheWrapper.scala 1475:41]
  wire [2:0] dcache_auto_client_out_c_bits_opcode; // @[DCacheWrapper.scala 1475:41]
  wire [2:0] dcache_auto_client_out_c_bits_param; // @[DCacheWrapper.scala 1475:41]
  wire [2:0] dcache_auto_client_out_c_bits_size; // @[DCacheWrapper.scala 1475:41]
  wire [3:0] dcache_auto_client_out_c_bits_source; // @[DCacheWrapper.scala 1475:41]
  wire [35:0] dcache_auto_client_out_c_bits_address; // @[DCacheWrapper.scala 1475:41]
  wire [255:0] dcache_auto_client_out_c_bits_data; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_auto_client_out_d_ready; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_auto_client_out_d_valid; // @[DCacheWrapper.scala 1475:41]
  wire [2:0] dcache_auto_client_out_d_bits_opcode; // @[DCacheWrapper.scala 1475:41]
  wire [1:0] dcache_auto_client_out_d_bits_param; // @[DCacheWrapper.scala 1475:41]
  wire [2:0] dcache_auto_client_out_d_bits_size; // @[DCacheWrapper.scala 1475:41]
  wire [3:0] dcache_auto_client_out_d_bits_source; // @[DCacheWrapper.scala 1475:41]
  wire [8:0] dcache_auto_client_out_d_bits_sink; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_auto_client_out_d_bits_denied; // @[DCacheWrapper.scala 1475:41]
  wire [255:0] dcache_auto_client_out_d_bits_data; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_auto_client_out_d_bits_corrupt; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_auto_client_out_e_ready; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_auto_client_out_e_valid; // @[DCacheWrapper.scala 1475:41]
  wire [8:0] dcache_auto_client_out_e_bits_sink; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_l2_pf_store_only; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_load_0_req_ready; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_load_0_req_valid; // @[DCacheWrapper.scala 1475:41]
  wire [4:0] dcache_io_lsu_load_0_req_bits_cmd; // @[DCacheWrapper.scala 1475:41]
  wire [38:0] dcache_io_lsu_load_0_req_bits_vaddr; // @[DCacheWrapper.scala 1475:41]
  wire [3:0] dcache_io_lsu_load_0_req_bits_instrtype; // @[DCacheWrapper.scala 1475:41]
  wire [127:0] dcache_io_lsu_load_0_resp_bits_data_delayed; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_load_0_resp_bits_miss; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_load_0_resp_bits_tag_error; // @[DCacheWrapper.scala 1475:41]
  wire [1:0] dcache_io_lsu_load_0_resp_bits_mshr_id; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_load_0_resp_bits_handled; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_load_0_resp_bits_error_delayed; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_load_0_s1_kill; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_load_0_s2_kill; // @[DCacheWrapper.scala 1475:41]
  wire [35:0] dcache_io_lsu_load_0_s1_paddr_dup_lsu; // @[DCacheWrapper.scala 1475:41]
  wire [35:0] dcache_io_lsu_load_0_s1_paddr_dup_dcache; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_load_0_s1_disable_fast_wakeup; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_load_0_s2_bank_conflict; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_load_0_s2_mq_nack; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_load_1_req_ready; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_load_1_req_valid; // @[DCacheWrapper.scala 1475:41]
  wire [4:0] dcache_io_lsu_load_1_req_bits_cmd; // @[DCacheWrapper.scala 1475:41]
  wire [38:0] dcache_io_lsu_load_1_req_bits_vaddr; // @[DCacheWrapper.scala 1475:41]
  wire [3:0] dcache_io_lsu_load_1_req_bits_instrtype; // @[DCacheWrapper.scala 1475:41]
  wire [127:0] dcache_io_lsu_load_1_resp_bits_data_delayed; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_load_1_resp_bits_miss; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_load_1_resp_bits_tag_error; // @[DCacheWrapper.scala 1475:41]
  wire [1:0] dcache_io_lsu_load_1_resp_bits_mshr_id; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_load_1_resp_bits_handled; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_load_1_resp_bits_error_delayed; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_load_1_s1_kill; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_load_1_s2_kill; // @[DCacheWrapper.scala 1475:41]
  wire [35:0] dcache_io_lsu_load_1_s1_paddr_dup_lsu; // @[DCacheWrapper.scala 1475:41]
  wire [35:0] dcache_io_lsu_load_1_s1_paddr_dup_dcache; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_load_1_s1_disable_fast_wakeup; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_load_1_s2_bank_conflict; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_load_1_s2_mq_nack; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_tl_d_channel_valid; // @[DCacheWrapper.scala 1475:41]
  wire [1:0] dcache_io_lsu_tl_d_channel_mshrid; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_store_req_ready; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_store_req_valid; // @[DCacheWrapper.scala 1475:41]
  wire [38:0] dcache_io_lsu_store_req_bits_vaddr; // @[DCacheWrapper.scala 1475:41]
  wire [35:0] dcache_io_lsu_store_req_bits_addr; // @[DCacheWrapper.scala 1475:41]
  wire [511:0] dcache_io_lsu_store_req_bits_data; // @[DCacheWrapper.scala 1475:41]
  wire [63:0] dcache_io_lsu_store_req_bits_mask; // @[DCacheWrapper.scala 1475:41]
  wire [3:0] dcache_io_lsu_store_req_bits_id; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_store_main_pipe_hit_resp_valid; // @[DCacheWrapper.scala 1475:41]
  wire [3:0] dcache_io_lsu_store_main_pipe_hit_resp_bits_id; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_store_refill_hit_resp_valid; // @[DCacheWrapper.scala 1475:41]
  wire [3:0] dcache_io_lsu_store_refill_hit_resp_bits_id; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_store_replay_resp_valid; // @[DCacheWrapper.scala 1475:41]
  wire [3:0] dcache_io_lsu_store_replay_resp_bits_id; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_atomics_req_ready; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_atomics_req_valid; // @[DCacheWrapper.scala 1475:41]
  wire [4:0] dcache_io_lsu_atomics_req_bits_cmd; // @[DCacheWrapper.scala 1475:41]
  wire [38:0] dcache_io_lsu_atomics_req_bits_vaddr; // @[DCacheWrapper.scala 1475:41]
  wire [35:0] dcache_io_lsu_atomics_req_bits_addr; // @[DCacheWrapper.scala 1475:41]
  wire [2:0] dcache_io_lsu_atomics_req_bits_word_idx; // @[DCacheWrapper.scala 1475:41]
  wire [63:0] dcache_io_lsu_atomics_req_bits_amo_data; // @[DCacheWrapper.scala 1475:41]
  wire [7:0] dcache_io_lsu_atomics_req_bits_amo_mask; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_atomics_resp_valid; // @[DCacheWrapper.scala 1475:41]
  wire [63:0] dcache_io_lsu_atomics_resp_bits_data; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_atomics_resp_bits_miss; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_atomics_resp_bits_replay; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_atomics_resp_bits_error; // @[DCacheWrapper.scala 1475:41]
  wire [3:0] dcache_io_lsu_atomics_resp_bits_id; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_atomics_block_lr; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_release_valid; // @[DCacheWrapper.scala 1475:41]
  wire [35:0] dcache_io_lsu_release_bits_paddr; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_forward_D_0_valid; // @[DCacheWrapper.scala 1475:41]
  wire [255:0] dcache_io_lsu_forward_D_0_data; // @[DCacheWrapper.scala 1475:41]
  wire [1:0] dcache_io_lsu_forward_D_0_mshrid; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_forward_D_0_last; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_forward_D_1_valid; // @[DCacheWrapper.scala 1475:41]
  wire [255:0] dcache_io_lsu_forward_D_1_data; // @[DCacheWrapper.scala 1475:41]
  wire [1:0] dcache_io_lsu_forward_D_1_mshrid; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_forward_D_1_last; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_forward_mshr_0_valid; // @[DCacheWrapper.scala 1475:41]
  wire [1:0] dcache_io_lsu_forward_mshr_0_mshrid; // @[DCacheWrapper.scala 1475:41]
  wire [35:0] dcache_io_lsu_forward_mshr_0_paddr; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_forward_mshr_0_forward_mshr; // @[DCacheWrapper.scala 1475:41]
  wire [7:0] dcache_io_lsu_forward_mshr_0_forwardData_0; // @[DCacheWrapper.scala 1475:41]
  wire [7:0] dcache_io_lsu_forward_mshr_0_forwardData_1; // @[DCacheWrapper.scala 1475:41]
  wire [7:0] dcache_io_lsu_forward_mshr_0_forwardData_2; // @[DCacheWrapper.scala 1475:41]
  wire [7:0] dcache_io_lsu_forward_mshr_0_forwardData_3; // @[DCacheWrapper.scala 1475:41]
  wire [7:0] dcache_io_lsu_forward_mshr_0_forwardData_4; // @[DCacheWrapper.scala 1475:41]
  wire [7:0] dcache_io_lsu_forward_mshr_0_forwardData_5; // @[DCacheWrapper.scala 1475:41]
  wire [7:0] dcache_io_lsu_forward_mshr_0_forwardData_6; // @[DCacheWrapper.scala 1475:41]
  wire [7:0] dcache_io_lsu_forward_mshr_0_forwardData_7; // @[DCacheWrapper.scala 1475:41]
  wire [7:0] dcache_io_lsu_forward_mshr_0_forwardData_8; // @[DCacheWrapper.scala 1475:41]
  wire [7:0] dcache_io_lsu_forward_mshr_0_forwardData_9; // @[DCacheWrapper.scala 1475:41]
  wire [7:0] dcache_io_lsu_forward_mshr_0_forwardData_10; // @[DCacheWrapper.scala 1475:41]
  wire [7:0] dcache_io_lsu_forward_mshr_0_forwardData_11; // @[DCacheWrapper.scala 1475:41]
  wire [7:0] dcache_io_lsu_forward_mshr_0_forwardData_12; // @[DCacheWrapper.scala 1475:41]
  wire [7:0] dcache_io_lsu_forward_mshr_0_forwardData_13; // @[DCacheWrapper.scala 1475:41]
  wire [7:0] dcache_io_lsu_forward_mshr_0_forwardData_14; // @[DCacheWrapper.scala 1475:41]
  wire [7:0] dcache_io_lsu_forward_mshr_0_forwardData_15; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_forward_mshr_0_forward_result_valid; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_forward_mshr_1_valid; // @[DCacheWrapper.scala 1475:41]
  wire [1:0] dcache_io_lsu_forward_mshr_1_mshrid; // @[DCacheWrapper.scala 1475:41]
  wire [35:0] dcache_io_lsu_forward_mshr_1_paddr; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_forward_mshr_1_forward_mshr; // @[DCacheWrapper.scala 1475:41]
  wire [7:0] dcache_io_lsu_forward_mshr_1_forwardData_0; // @[DCacheWrapper.scala 1475:41]
  wire [7:0] dcache_io_lsu_forward_mshr_1_forwardData_1; // @[DCacheWrapper.scala 1475:41]
  wire [7:0] dcache_io_lsu_forward_mshr_1_forwardData_2; // @[DCacheWrapper.scala 1475:41]
  wire [7:0] dcache_io_lsu_forward_mshr_1_forwardData_3; // @[DCacheWrapper.scala 1475:41]
  wire [7:0] dcache_io_lsu_forward_mshr_1_forwardData_4; // @[DCacheWrapper.scala 1475:41]
  wire [7:0] dcache_io_lsu_forward_mshr_1_forwardData_5; // @[DCacheWrapper.scala 1475:41]
  wire [7:0] dcache_io_lsu_forward_mshr_1_forwardData_6; // @[DCacheWrapper.scala 1475:41]
  wire [7:0] dcache_io_lsu_forward_mshr_1_forwardData_7; // @[DCacheWrapper.scala 1475:41]
  wire [7:0] dcache_io_lsu_forward_mshr_1_forwardData_8; // @[DCacheWrapper.scala 1475:41]
  wire [7:0] dcache_io_lsu_forward_mshr_1_forwardData_9; // @[DCacheWrapper.scala 1475:41]
  wire [7:0] dcache_io_lsu_forward_mshr_1_forwardData_10; // @[DCacheWrapper.scala 1475:41]
  wire [7:0] dcache_io_lsu_forward_mshr_1_forwardData_11; // @[DCacheWrapper.scala 1475:41]
  wire [7:0] dcache_io_lsu_forward_mshr_1_forwardData_12; // @[DCacheWrapper.scala 1475:41]
  wire [7:0] dcache_io_lsu_forward_mshr_1_forwardData_13; // @[DCacheWrapper.scala 1475:41]
  wire [7:0] dcache_io_lsu_forward_mshr_1_forwardData_14; // @[DCacheWrapper.scala 1475:41]
  wire [7:0] dcache_io_lsu_forward_mshr_1_forwardData_15; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lsu_forward_mshr_1_forward_result_valid; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_csr_distribute_csr_wvalid; // @[DCacheWrapper.scala 1475:41]
  wire [11:0] dcache_io_csr_distribute_csr_waddr; // @[DCacheWrapper.scala 1475:41]
  wire [63:0] dcache_io_csr_distribute_csr_wdata; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_csr_update_wvalid; // @[DCacheWrapper.scala 1475:41]
  wire [11:0] dcache_io_csr_update_waddr; // @[DCacheWrapper.scala 1475:41]
  wire [63:0] dcache_io_csr_update_wdata; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_error_source_tag; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_error_source_data; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_error_source_l2; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_error_opType_fetch; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_error_opType_load; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_error_opType_store; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_error_opType_probe; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_error_opType_release; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_error_opType_atom; // @[DCacheWrapper.scala 1475:41]
  wire [35:0] dcache_io_error_paddr; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_error_report_to_beu; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_error_valid; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_io_lqEmpty; // @[DCacheWrapper.scala 1475:41]
  wire [5:0] dcache_io_perf_0_value; // @[DCacheWrapper.scala 1475:41]
  wire [5:0] dcache_io_perf_1_value; // @[DCacheWrapper.scala 1475:41]
  wire [5:0] dcache_io_perf_2_value; // @[DCacheWrapper.scala 1475:41]
  wire [5:0] dcache_io_perf_3_value; // @[DCacheWrapper.scala 1475:41]
  wire [5:0] dcache_io_perf_4_value; // @[DCacheWrapper.scala 1475:41]
  wire [5:0] dcache_io_perf_5_value; // @[DCacheWrapper.scala 1475:41]
  wire [5:0] dcache_io_perf_6_value; // @[DCacheWrapper.scala 1475:41]
  wire [5:0] dcache_io_perf_7_value; // @[DCacheWrapper.scala 1475:41]
  wire [5:0] dcache_io_perf_8_value; // @[DCacheWrapper.scala 1475:41]
  wire [5:0] dcache_io_perf_9_value; // @[DCacheWrapper.scala 1475:41]
  wire [5:0] dcache_io_perf_10_value; // @[DCacheWrapper.scala 1475:41]
  wire [5:0] dcache_io_perf_11_value; // @[DCacheWrapper.scala 1475:41]
  wire [5:0] dcache_io_perf_12_value; // @[DCacheWrapper.scala 1475:41]
  wire [5:0] dcache_io_perf_13_value; // @[DCacheWrapper.scala 1475:41]
  wire [5:0] dcache_io_perf_14_value; // @[DCacheWrapper.scala 1475:41]
  wire [5:0] dcache_io_perf_15_value; // @[DCacheWrapper.scala 1475:41]
  wire [5:0] dcache_io_perf_16_value; // @[DCacheWrapper.scala 1475:41]
  wire [5:0] dcache_io_perf_17_value; // @[DCacheWrapper.scala 1475:41]
  wire [5:0] dcache_io_perf_22_value; // @[DCacheWrapper.scala 1475:41]
  wire  dcache_sourceVaddr_valid; // @[DCacheWrapper.scala 1475:41]
  wire [38:0] dcache_sourceVaddr_bits; // @[DCacheWrapper.scala 1475:41]
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
  DCache dcache ( // @[DCacheWrapper.scala 1475:41]
    .clock(dcache_clock),
    .reset(dcache_reset),
    .auto_client_out_a_ready(dcache_auto_client_out_a_ready),
    .auto_client_out_a_valid(dcache_auto_client_out_a_valid),
    .auto_client_out_a_bits_opcode(dcache_auto_client_out_a_bits_opcode),
    .auto_client_out_a_bits_param(dcache_auto_client_out_a_bits_param),
    .auto_client_out_a_bits_size(dcache_auto_client_out_a_bits_size),
    .auto_client_out_a_bits_source(dcache_auto_client_out_a_bits_source),
    .auto_client_out_a_bits_address(dcache_auto_client_out_a_bits_address),
    .auto_client_out_a_bits_user_vaddr(dcache_auto_client_out_a_bits_user_vaddr),
    .auto_client_out_a_bits_user_reqSource(dcache_auto_client_out_a_bits_user_reqSource),
    .auto_client_out_a_bits_user_needHint(dcache_auto_client_out_a_bits_user_needHint),
    .auto_client_out_a_bits_mask(dcache_auto_client_out_a_bits_mask),
    .auto_client_out_bready(dcache_auto_client_out_bready),
    .auto_client_out_bvalid(dcache_auto_client_out_bvalid),
    .auto_client_out_bparam(dcache_auto_client_out_bparam),
    .auto_client_out_baddress(dcache_auto_client_out_baddress),
    .auto_client_out_bdata(dcache_auto_client_out_bdata),
    .auto_client_out_c_ready(dcache_auto_client_out_c_ready),
    .auto_client_out_c_valid(dcache_auto_client_out_c_valid),
    .auto_client_out_c_bits_opcode(dcache_auto_client_out_c_bits_opcode),
    .auto_client_out_c_bits_param(dcache_auto_client_out_c_bits_param),
    .auto_client_out_c_bits_size(dcache_auto_client_out_c_bits_size),
    .auto_client_out_c_bits_source(dcache_auto_client_out_c_bits_source),
    .auto_client_out_c_bits_address(dcache_auto_client_out_c_bits_address),
    .auto_client_out_c_bits_data(dcache_auto_client_out_c_bits_data),
    .auto_client_out_d_ready(dcache_auto_client_out_d_ready),
    .auto_client_out_d_valid(dcache_auto_client_out_d_valid),
    .auto_client_out_d_bits_opcode(dcache_auto_client_out_d_bits_opcode),
    .auto_client_out_d_bits_param(dcache_auto_client_out_d_bits_param),
    .auto_client_out_d_bits_size(dcache_auto_client_out_d_bits_size),
    .auto_client_out_d_bits_source(dcache_auto_client_out_d_bits_source),
    .auto_client_out_d_bits_sink(dcache_auto_client_out_d_bits_sink),
    .auto_client_out_d_bits_denied(dcache_auto_client_out_d_bits_denied),
    .auto_client_out_d_bits_data(dcache_auto_client_out_d_bits_data),
    .auto_client_out_d_bits_corrupt(dcache_auto_client_out_d_bits_corrupt),
    .auto_client_out_e_ready(dcache_auto_client_out_e_ready),
    .auto_client_out_e_valid(dcache_auto_client_out_e_valid),
    .auto_client_out_e_bits_sink(dcache_auto_client_out_e_bits_sink),
    .io_l2_pf_store_only(dcache_io_l2_pf_store_only),
    .io_lsu_load_0_req_ready(dcache_io_lsu_load_0_req_ready),
    .io_lsu_load_0_req_valid(dcache_io_lsu_load_0_req_valid),
    .io_lsu_load_0_req_bits_cmd(dcache_io_lsu_load_0_req_bits_cmd),
    .io_lsu_load_0_req_bits_vaddr(dcache_io_lsu_load_0_req_bits_vaddr),
    .io_lsu_load_0_req_bits_instrtype(dcache_io_lsu_load_0_req_bits_instrtype),
    .io_lsu_load_0_resp_bits_data_delayed(dcache_io_lsu_load_0_resp_bits_data_delayed),
    .io_lsu_load_0_resp_bits_miss(dcache_io_lsu_load_0_resp_bits_miss),
    .io_lsu_load_0_resp_bits_tag_error(dcache_io_lsu_load_0_resp_bits_tag_error),
    .io_lsu_load_0_resp_bits_mshr_id(dcache_io_lsu_load_0_resp_bits_mshr_id),
    .io_lsu_load_0_resp_bits_handled(dcache_io_lsu_load_0_resp_bits_handled),
    .io_lsu_load_0_resp_bits_error_delayed(dcache_io_lsu_load_0_resp_bits_error_delayed),
    .io_lsu_load_0_s1_kill(dcache_io_lsu_load_0_s1_kill),
    .io_lsu_load_0_s2_kill(dcache_io_lsu_load_0_s2_kill),
    .io_lsu_load_0_s1_paddr_dup_lsu(dcache_io_lsu_load_0_s1_paddr_dup_lsu),
    .io_lsu_load_0_s1_paddr_dup_dcache(dcache_io_lsu_load_0_s1_paddr_dup_dcache),
    .io_lsu_load_0_s1_disable_fast_wakeup(dcache_io_lsu_load_0_s1_disable_fast_wakeup),
    .io_lsu_load_0_s2_bank_conflict(dcache_io_lsu_load_0_s2_bank_conflict),
    .io_lsu_load_0_s2_mq_nack(dcache_io_lsu_load_0_s2_mq_nack),
    .io_lsu_load_1_req_ready(dcache_io_lsu_load_1_req_ready),
    .io_lsu_load_1_req_valid(dcache_io_lsu_load_1_req_valid),
    .io_lsu_load_1_req_bits_cmd(dcache_io_lsu_load_1_req_bits_cmd),
    .io_lsu_load_1_req_bits_vaddr(dcache_io_lsu_load_1_req_bits_vaddr),
    .io_lsu_load_1_req_bits_instrtype(dcache_io_lsu_load_1_req_bits_instrtype),
    .io_lsu_load_1_resp_bits_data_delayed(dcache_io_lsu_load_1_resp_bits_data_delayed),
    .io_lsu_load_1_resp_bits_miss(dcache_io_lsu_load_1_resp_bits_miss),
    .io_lsu_load_1_resp_bits_tag_error(dcache_io_lsu_load_1_resp_bits_tag_error),
    .io_lsu_load_1_resp_bits_mshr_id(dcache_io_lsu_load_1_resp_bits_mshr_id),
    .io_lsu_load_1_resp_bits_handled(dcache_io_lsu_load_1_resp_bits_handled),
    .io_lsu_load_1_resp_bits_error_delayed(dcache_io_lsu_load_1_resp_bits_error_delayed),
    .io_lsu_load_1_s1_kill(dcache_io_lsu_load_1_s1_kill),
    .io_lsu_load_1_s2_kill(dcache_io_lsu_load_1_s2_kill),
    .io_lsu_load_1_s1_paddr_dup_lsu(dcache_io_lsu_load_1_s1_paddr_dup_lsu),
    .io_lsu_load_1_s1_paddr_dup_dcache(dcache_io_lsu_load_1_s1_paddr_dup_dcache),
    .io_lsu_load_1_s1_disable_fast_wakeup(dcache_io_lsu_load_1_s1_disable_fast_wakeup),
    .io_lsu_load_1_s2_bank_conflict(dcache_io_lsu_load_1_s2_bank_conflict),
    .io_lsu_load_1_s2_mq_nack(dcache_io_lsu_load_1_s2_mq_nack),
    .io_lsu_tl_d_channel_valid(dcache_io_lsu_tl_d_channel_valid),
    .io_lsu_tl_d_channel_mshrid(dcache_io_lsu_tl_d_channel_mshrid),
    .io_lsu_store_req_ready(dcache_io_lsu_store_req_ready),
    .io_lsu_store_req_valid(dcache_io_lsu_store_req_valid),
    .io_lsu_store_req_bits_vaddr(dcache_io_lsu_store_req_bits_vaddr),
    .io_lsu_store_req_bits_addr(dcache_io_lsu_store_req_bits_addr),
    .io_lsu_store_req_bits_data(dcache_io_lsu_store_req_bits_data),
    .io_lsu_store_req_bits_mask(dcache_io_lsu_store_req_bits_mask),
    .io_lsu_store_req_bits_id(dcache_io_lsu_store_req_bits_id),
    .io_lsu_store_main_pipe_hit_resp_valid(dcache_io_lsu_store_main_pipe_hit_resp_valid),
    .io_lsu_store_main_pipe_hit_resp_bits_id(dcache_io_lsu_store_main_pipe_hit_resp_bits_id),
    .io_lsu_store_refill_hit_resp_valid(dcache_io_lsu_store_refill_hit_resp_valid),
    .io_lsu_store_refill_hit_resp_bits_id(dcache_io_lsu_store_refill_hit_resp_bits_id),
    .io_lsu_store_replay_resp_valid(dcache_io_lsu_store_replay_resp_valid),
    .io_lsu_store_replay_resp_bits_id(dcache_io_lsu_store_replay_resp_bits_id),
    .io_lsu_atomics_req_ready(dcache_io_lsu_atomics_req_ready),
    .io_lsu_atomics_req_valid(dcache_io_lsu_atomics_req_valid),
    .io_lsu_atomics_req_bits_cmd(dcache_io_lsu_atomics_req_bits_cmd),
    .io_lsu_atomics_req_bits_vaddr(dcache_io_lsu_atomics_req_bits_vaddr),
    .io_lsu_atomics_req_bits_addr(dcache_io_lsu_atomics_req_bits_addr),
    .io_lsu_atomics_req_bits_word_idx(dcache_io_lsu_atomics_req_bits_word_idx),
    .io_lsu_atomics_req_bits_amo_data(dcache_io_lsu_atomics_req_bits_amo_data),
    .io_lsu_atomics_req_bits_amo_mask(dcache_io_lsu_atomics_req_bits_amo_mask),
    .io_lsu_atomics_resp_valid(dcache_io_lsu_atomics_resp_valid),
    .io_lsu_atomics_resp_bits_data(dcache_io_lsu_atomics_resp_bits_data),
    .io_lsu_atomics_resp_bits_miss(dcache_io_lsu_atomics_resp_bits_miss),
    .io_lsu_atomics_resp_bits_replay(dcache_io_lsu_atomics_resp_bits_replay),
    .io_lsu_atomics_resp_bits_error(dcache_io_lsu_atomics_resp_bits_error),
    .io_lsu_atomics_resp_bits_id(dcache_io_lsu_atomics_resp_bits_id),
    .io_lsu_atomics_block_lr(dcache_io_lsu_atomics_block_lr),
    .io_lsu_release_valid(dcache_io_lsu_release_valid),
    .io_lsu_release_bits_paddr(dcache_io_lsu_release_bits_paddr),
    .io_lsu_forward_D_0_valid(dcache_io_lsu_forward_D_0_valid),
    .io_lsu_forward_D_0_data(dcache_io_lsu_forward_D_0_data),
    .io_lsu_forward_D_0_mshrid(dcache_io_lsu_forward_D_0_mshrid),
    .io_lsu_forward_D_0_last(dcache_io_lsu_forward_D_0_last),
    .io_lsu_forward_D_1_valid(dcache_io_lsu_forward_D_1_valid),
    .io_lsu_forward_D_1_data(dcache_io_lsu_forward_D_1_data),
    .io_lsu_forward_D_1_mshrid(dcache_io_lsu_forward_D_1_mshrid),
    .io_lsu_forward_D_1_last(dcache_io_lsu_forward_D_1_last),
    .io_lsu_forward_mshr_0_valid(dcache_io_lsu_forward_mshr_0_valid),
    .io_lsu_forward_mshr_0_mshrid(dcache_io_lsu_forward_mshr_0_mshrid),
    .io_lsu_forward_mshr_0_paddr(dcache_io_lsu_forward_mshr_0_paddr),
    .io_lsu_forward_mshr_0_forward_mshr(dcache_io_lsu_forward_mshr_0_forward_mshr),
    .io_lsu_forward_mshr_0_forwardData_0(dcache_io_lsu_forward_mshr_0_forwardData_0),
    .io_lsu_forward_mshr_0_forwardData_1(dcache_io_lsu_forward_mshr_0_forwardData_1),
    .io_lsu_forward_mshr_0_forwardData_2(dcache_io_lsu_forward_mshr_0_forwardData_2),
    .io_lsu_forward_mshr_0_forwardData_3(dcache_io_lsu_forward_mshr_0_forwardData_3),
    .io_lsu_forward_mshr_0_forwardData_4(dcache_io_lsu_forward_mshr_0_forwardData_4),
    .io_lsu_forward_mshr_0_forwardData_5(dcache_io_lsu_forward_mshr_0_forwardData_5),
    .io_lsu_forward_mshr_0_forwardData_6(dcache_io_lsu_forward_mshr_0_forwardData_6),
    .io_lsu_forward_mshr_0_forwardData_7(dcache_io_lsu_forward_mshr_0_forwardData_7),
    .io_lsu_forward_mshr_0_forwardData_8(dcache_io_lsu_forward_mshr_0_forwardData_8),
    .io_lsu_forward_mshr_0_forwardData_9(dcache_io_lsu_forward_mshr_0_forwardData_9),
    .io_lsu_forward_mshr_0_forwardData_10(dcache_io_lsu_forward_mshr_0_forwardData_10),
    .io_lsu_forward_mshr_0_forwardData_11(dcache_io_lsu_forward_mshr_0_forwardData_11),
    .io_lsu_forward_mshr_0_forwardData_12(dcache_io_lsu_forward_mshr_0_forwardData_12),
    .io_lsu_forward_mshr_0_forwardData_13(dcache_io_lsu_forward_mshr_0_forwardData_13),
    .io_lsu_forward_mshr_0_forwardData_14(dcache_io_lsu_forward_mshr_0_forwardData_14),
    .io_lsu_forward_mshr_0_forwardData_15(dcache_io_lsu_forward_mshr_0_forwardData_15),
    .io_lsu_forward_mshr_0_forward_result_valid(dcache_io_lsu_forward_mshr_0_forward_result_valid),
    .io_lsu_forward_mshr_1_valid(dcache_io_lsu_forward_mshr_1_valid),
    .io_lsu_forward_mshr_1_mshrid(dcache_io_lsu_forward_mshr_1_mshrid),
    .io_lsu_forward_mshr_1_paddr(dcache_io_lsu_forward_mshr_1_paddr),
    .io_lsu_forward_mshr_1_forward_mshr(dcache_io_lsu_forward_mshr_1_forward_mshr),
    .io_lsu_forward_mshr_1_forwardData_0(dcache_io_lsu_forward_mshr_1_forwardData_0),
    .io_lsu_forward_mshr_1_forwardData_1(dcache_io_lsu_forward_mshr_1_forwardData_1),
    .io_lsu_forward_mshr_1_forwardData_2(dcache_io_lsu_forward_mshr_1_forwardData_2),
    .io_lsu_forward_mshr_1_forwardData_3(dcache_io_lsu_forward_mshr_1_forwardData_3),
    .io_lsu_forward_mshr_1_forwardData_4(dcache_io_lsu_forward_mshr_1_forwardData_4),
    .io_lsu_forward_mshr_1_forwardData_5(dcache_io_lsu_forward_mshr_1_forwardData_5),
    .io_lsu_forward_mshr_1_forwardData_6(dcache_io_lsu_forward_mshr_1_forwardData_6),
    .io_lsu_forward_mshr_1_forwardData_7(dcache_io_lsu_forward_mshr_1_forwardData_7),
    .io_lsu_forward_mshr_1_forwardData_8(dcache_io_lsu_forward_mshr_1_forwardData_8),
    .io_lsu_forward_mshr_1_forwardData_9(dcache_io_lsu_forward_mshr_1_forwardData_9),
    .io_lsu_forward_mshr_1_forwardData_10(dcache_io_lsu_forward_mshr_1_forwardData_10),
    .io_lsu_forward_mshr_1_forwardData_11(dcache_io_lsu_forward_mshr_1_forwardData_11),
    .io_lsu_forward_mshr_1_forwardData_12(dcache_io_lsu_forward_mshr_1_forwardData_12),
    .io_lsu_forward_mshr_1_forwardData_13(dcache_io_lsu_forward_mshr_1_forwardData_13),
    .io_lsu_forward_mshr_1_forwardData_14(dcache_io_lsu_forward_mshr_1_forwardData_14),
    .io_lsu_forward_mshr_1_forwardData_15(dcache_io_lsu_forward_mshr_1_forwardData_15),
    .io_lsu_forward_mshr_1_forward_result_valid(dcache_io_lsu_forward_mshr_1_forward_result_valid),
    .io_csr_distribute_csr_wvalid(dcache_io_csr_distribute_csr_wvalid),
    .io_csr_distribute_csr_waddr(dcache_io_csr_distribute_csr_waddr),
    .io_csr_distribute_csr_wdata(dcache_io_csr_distribute_csr_wdata),
    .io_csr_update_wvalid(dcache_io_csr_update_wvalid),
    .io_csr_update_waddr(dcache_io_csr_update_waddr),
    .io_csr_update_wdata(dcache_io_csr_update_wdata),
    .io_error_source_tag(dcache_io_error_source_tag),
    .io_error_source_data(dcache_io_error_source_data),
    .io_error_source_l2(dcache_io_error_source_l2),
    .io_error_opType_fetch(dcache_io_error_opType_fetch),
    .io_error_opType_load(dcache_io_error_opType_load),
    .io_error_opType_store(dcache_io_error_opType_store),
    .io_error_opType_probe(dcache_io_error_opType_probe),
    .io_error_opType_release(dcache_io_error_opType_release),
    .io_error_opType_atom(dcache_io_error_opType_atom),
    .io_error_paddr(dcache_io_error_paddr),
    .io_error_report_to_beu(dcache_io_error_report_to_beu),
    .io_error_valid(dcache_io_error_valid),
    .io_lqEmpty(dcache_io_lqEmpty),
    .io_perf_0_value(dcache_io_perf_0_value),
    .io_perf_1_value(dcache_io_perf_1_value),
    .io_perf_2_value(dcache_io_perf_2_value),
    .io_perf_3_value(dcache_io_perf_3_value),
    .io_perf_4_value(dcache_io_perf_4_value),
    .io_perf_5_value(dcache_io_perf_5_value),
    .io_perf_6_value(dcache_io_perf_6_value),
    .io_perf_7_value(dcache_io_perf_7_value),
    .io_perf_8_value(dcache_io_perf_8_value),
    .io_perf_9_value(dcache_io_perf_9_value),
    .io_perf_10_value(dcache_io_perf_10_value),
    .io_perf_11_value(dcache_io_perf_11_value),
    .io_perf_12_value(dcache_io_perf_12_value),
    .io_perf_13_value(dcache_io_perf_13_value),
    .io_perf_14_value(dcache_io_perf_14_value),
    .io_perf_15_value(dcache_io_perf_15_value),
    .io_perf_16_value(dcache_io_perf_16_value),
    .io_perf_17_value(dcache_io_perf_17_value),
    .io_perf_22_value(dcache_io_perf_22_value),
    .sourceVaddr_valid(dcache_sourceVaddr_valid),
    .sourceVaddr_bits(dcache_sourceVaddr_bits)
  );
  assign auto_client_out_a_valid = dcache_auto_client_out_a_valid; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_client_out_a_bits_opcode = dcache_auto_client_out_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_client_out_a_bits_param = dcache_auto_client_out_a_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_client_out_a_bits_size = dcache_auto_client_out_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_client_out_a_bits_source = dcache_auto_client_out_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_client_out_a_bits_address = dcache_auto_client_out_a_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_client_out_a_bits_user_vaddr = dcache_auto_client_out_a_bits_user_vaddr; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_client_out_a_bits_user_reqSource = dcache_auto_client_out_a_bits_user_reqSource; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_client_out_a_bits_user_needHint = dcache_auto_client_out_a_bits_user_needHint; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_client_out_a_bits_mask = dcache_auto_client_out_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_client_out_bready = dcache_auto_client_out_bready; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_client_out_c_valid = dcache_auto_client_out_c_valid; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_client_out_c_bits_opcode = dcache_auto_client_out_c_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_client_out_c_bits_param = dcache_auto_client_out_c_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_client_out_c_bits_size = dcache_auto_client_out_c_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_client_out_c_bits_source = dcache_auto_client_out_c_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_client_out_c_bits_address = dcache_auto_client_out_c_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_client_out_c_bits_data = dcache_auto_client_out_c_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_client_out_d_ready = dcache_auto_client_out_d_ready; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_client_out_e_valid = dcache_auto_client_out_e_valid; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign auto_client_out_e_bits_sink = dcache_auto_client_out_e_bits_sink; // @[Nodes.scala 1210:84 LazyModule.scala 296:16]
  assign io_lsu_load_0_req_ready = dcache_io_lsu_load_0_req_ready; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_load_0_resp_bits_data_delayed = dcache_io_lsu_load_0_resp_bits_data_delayed; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_load_0_resp_bits_miss = dcache_io_lsu_load_0_resp_bits_miss; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_load_0_resp_bits_tag_error = dcache_io_lsu_load_0_resp_bits_tag_error; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_load_0_resp_bits_mshr_id = dcache_io_lsu_load_0_resp_bits_mshr_id; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_load_0_resp_bits_handled = dcache_io_lsu_load_0_resp_bits_handled; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_load_0_resp_bits_error_delayed = dcache_io_lsu_load_0_resp_bits_error_delayed; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_load_0_s1_disable_fast_wakeup = dcache_io_lsu_load_0_s1_disable_fast_wakeup; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_load_0_s2_bank_conflict = dcache_io_lsu_load_0_s2_bank_conflict; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_load_0_s2_mq_nack = dcache_io_lsu_load_0_s2_mq_nack; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_load_1_req_ready = dcache_io_lsu_load_1_req_ready; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_load_1_resp_bits_data_delayed = dcache_io_lsu_load_1_resp_bits_data_delayed; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_load_1_resp_bits_miss = dcache_io_lsu_load_1_resp_bits_miss; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_load_1_resp_bits_tag_error = dcache_io_lsu_load_1_resp_bits_tag_error; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_load_1_resp_bits_mshr_id = dcache_io_lsu_load_1_resp_bits_mshr_id; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_load_1_resp_bits_handled = dcache_io_lsu_load_1_resp_bits_handled; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_load_1_resp_bits_error_delayed = dcache_io_lsu_load_1_resp_bits_error_delayed; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_load_1_s1_disable_fast_wakeup = dcache_io_lsu_load_1_s1_disable_fast_wakeup; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_load_1_s2_bank_conflict = dcache_io_lsu_load_1_s2_bank_conflict; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_load_1_s2_mq_nack = dcache_io_lsu_load_1_s2_mq_nack; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_tl_d_channel_valid = dcache_io_lsu_tl_d_channel_valid; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_tl_d_channel_mshrid = dcache_io_lsu_tl_d_channel_mshrid; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_store_req_ready = dcache_io_lsu_store_req_ready; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_store_main_pipe_hit_resp_valid = dcache_io_lsu_store_main_pipe_hit_resp_valid; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_store_main_pipe_hit_resp_bits_id = dcache_io_lsu_store_main_pipe_hit_resp_bits_id; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_store_refill_hit_resp_valid = dcache_io_lsu_store_refill_hit_resp_valid; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_store_refill_hit_resp_bits_id = dcache_io_lsu_store_refill_hit_resp_bits_id; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_store_replay_resp_valid = dcache_io_lsu_store_replay_resp_valid; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_store_replay_resp_bits_id = dcache_io_lsu_store_replay_resp_bits_id; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_atomics_req_ready = dcache_io_lsu_atomics_req_ready; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_atomics_resp_valid = dcache_io_lsu_atomics_resp_valid; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_atomics_resp_bits_data = dcache_io_lsu_atomics_resp_bits_data; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_atomics_resp_bits_miss = dcache_io_lsu_atomics_resp_bits_miss; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_atomics_resp_bits_replay = dcache_io_lsu_atomics_resp_bits_replay; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_atomics_resp_bits_error = dcache_io_lsu_atomics_resp_bits_error; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_atomics_resp_bits_id = dcache_io_lsu_atomics_resp_bits_id; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_atomics_block_lr = dcache_io_lsu_atomics_block_lr; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_release_valid = dcache_io_lsu_release_valid; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_release_bits_paddr = dcache_io_lsu_release_bits_paddr; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_D_0_valid = dcache_io_lsu_forward_D_0_valid; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_D_0_data = dcache_io_lsu_forward_D_0_data; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_D_0_mshrid = dcache_io_lsu_forward_D_0_mshrid; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_D_0_last = dcache_io_lsu_forward_D_0_last; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_D_1_valid = dcache_io_lsu_forward_D_1_valid; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_D_1_data = dcache_io_lsu_forward_D_1_data; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_D_1_mshrid = dcache_io_lsu_forward_D_1_mshrid; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_D_1_last = dcache_io_lsu_forward_D_1_last; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_mshr_0_forward_mshr = dcache_io_lsu_forward_mshr_0_forward_mshr; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_mshr_0_forwardData_0 = dcache_io_lsu_forward_mshr_0_forwardData_0; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_mshr_0_forwardData_1 = dcache_io_lsu_forward_mshr_0_forwardData_1; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_mshr_0_forwardData_2 = dcache_io_lsu_forward_mshr_0_forwardData_2; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_mshr_0_forwardData_3 = dcache_io_lsu_forward_mshr_0_forwardData_3; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_mshr_0_forwardData_4 = dcache_io_lsu_forward_mshr_0_forwardData_4; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_mshr_0_forwardData_5 = dcache_io_lsu_forward_mshr_0_forwardData_5; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_mshr_0_forwardData_6 = dcache_io_lsu_forward_mshr_0_forwardData_6; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_mshr_0_forwardData_7 = dcache_io_lsu_forward_mshr_0_forwardData_7; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_mshr_0_forwardData_8 = dcache_io_lsu_forward_mshr_0_forwardData_8; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_mshr_0_forwardData_9 = dcache_io_lsu_forward_mshr_0_forwardData_9; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_mshr_0_forwardData_10 = dcache_io_lsu_forward_mshr_0_forwardData_10; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_mshr_0_forwardData_11 = dcache_io_lsu_forward_mshr_0_forwardData_11; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_mshr_0_forwardData_12 = dcache_io_lsu_forward_mshr_0_forwardData_12; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_mshr_0_forwardData_13 = dcache_io_lsu_forward_mshr_0_forwardData_13; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_mshr_0_forwardData_14 = dcache_io_lsu_forward_mshr_0_forwardData_14; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_mshr_0_forwardData_15 = dcache_io_lsu_forward_mshr_0_forwardData_15; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_mshr_0_forward_result_valid = dcache_io_lsu_forward_mshr_0_forward_result_valid; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_mshr_1_forward_mshr = dcache_io_lsu_forward_mshr_1_forward_mshr; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_mshr_1_forwardData_0 = dcache_io_lsu_forward_mshr_1_forwardData_0; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_mshr_1_forwardData_1 = dcache_io_lsu_forward_mshr_1_forwardData_1; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_mshr_1_forwardData_2 = dcache_io_lsu_forward_mshr_1_forwardData_2; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_mshr_1_forwardData_3 = dcache_io_lsu_forward_mshr_1_forwardData_3; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_mshr_1_forwardData_4 = dcache_io_lsu_forward_mshr_1_forwardData_4; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_mshr_1_forwardData_5 = dcache_io_lsu_forward_mshr_1_forwardData_5; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_mshr_1_forwardData_6 = dcache_io_lsu_forward_mshr_1_forwardData_6; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_mshr_1_forwardData_7 = dcache_io_lsu_forward_mshr_1_forwardData_7; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_mshr_1_forwardData_8 = dcache_io_lsu_forward_mshr_1_forwardData_8; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_mshr_1_forwardData_9 = dcache_io_lsu_forward_mshr_1_forwardData_9; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_mshr_1_forwardData_10 = dcache_io_lsu_forward_mshr_1_forwardData_10; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_mshr_1_forwardData_11 = dcache_io_lsu_forward_mshr_1_forwardData_11; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_mshr_1_forwardData_12 = dcache_io_lsu_forward_mshr_1_forwardData_12; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_mshr_1_forwardData_13 = dcache_io_lsu_forward_mshr_1_forwardData_13; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_mshr_1_forwardData_14 = dcache_io_lsu_forward_mshr_1_forwardData_14; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_mshr_1_forwardData_15 = dcache_io_lsu_forward_mshr_1_forwardData_15; // @[DCacheWrapper.scala 1489:10]
  assign io_lsu_forward_mshr_1_forward_result_valid = dcache_io_lsu_forward_mshr_1_forward_result_valid; // @[DCacheWrapper.scala 1489:10]
  assign io_csr_update_wvalid = dcache_io_csr_update_wvalid; // @[DCacheWrapper.scala 1489:10]
  assign io_csr_update_waddr = dcache_io_csr_update_waddr; // @[DCacheWrapper.scala 1489:10]
  assign io_csr_update_wdata = dcache_io_csr_update_wdata; // @[DCacheWrapper.scala 1489:10]
  assign io_error_paddr = dcache_io_error_paddr; // @[DCacheWrapper.scala 1489:10]
  assign io_error_report_to_beu = dcache_io_error_report_to_beu; // @[DCacheWrapper.scala 1489:10]
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
  assign dcache_clock = clock;
  assign dcache_reset = reset;
  assign dcache_auto_client_out_a_ready = auto_client_out_a_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign dcache_auto_client_out_bvalid = auto_client_out_bvalid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign dcache_auto_client_out_bparam = auto_client_out_bparam; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign dcache_auto_client_out_baddress = auto_client_out_baddress; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign dcache_auto_client_out_bdata = auto_client_out_bdata; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign dcache_auto_client_out_c_ready = auto_client_out_c_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign dcache_auto_client_out_d_valid = auto_client_out_d_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign dcache_auto_client_out_d_bits_opcode = auto_client_out_d_bits_opcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign dcache_auto_client_out_d_bits_param = auto_client_out_d_bits_param; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign dcache_auto_client_out_d_bits_size = auto_client_out_d_bits_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign dcache_auto_client_out_d_bits_source = auto_client_out_d_bits_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign dcache_auto_client_out_d_bits_sink = auto_client_out_d_bits_sink; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign dcache_auto_client_out_d_bits_denied = auto_client_out_d_bits_denied; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign dcache_auto_client_out_d_bits_data = auto_client_out_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign dcache_auto_client_out_d_bits_corrupt = auto_client_out_d_bits_corrupt; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign dcache_auto_client_out_e_ready = auto_client_out_e_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign dcache_io_l2_pf_store_only = io_l2_pf_store_only; // @[DCacheWrapper.scala 1489:10]
  assign dcache_io_lsu_load_0_req_valid = io_lsu_load_0_req_valid; // @[DCacheWrapper.scala 1489:10]
  assign dcache_io_lsu_load_0_req_bits_cmd = io_lsu_load_0_req_bits_cmd; // @[DCacheWrapper.scala 1489:10]
  assign dcache_io_lsu_load_0_req_bits_vaddr = io_lsu_load_0_req_bits_vaddr; // @[DCacheWrapper.scala 1489:10]
  assign dcache_io_lsu_load_0_req_bits_instrtype = io_lsu_load_0_req_bits_instrtype; // @[DCacheWrapper.scala 1489:10]
  assign dcache_io_lsu_load_0_s1_kill = io_lsu_load_0_s1_kill; // @[DCacheWrapper.scala 1489:10]
  assign dcache_io_lsu_load_0_s2_kill = io_lsu_load_0_s2_kill; // @[DCacheWrapper.scala 1489:10]
  assign dcache_io_lsu_load_0_s1_paddr_dup_lsu = io_lsu_load_0_s1_paddr_dup_lsu; // @[DCacheWrapper.scala 1489:10]
  assign dcache_io_lsu_load_0_s1_paddr_dup_dcache = io_lsu_load_0_s1_paddr_dup_dcache; // @[DCacheWrapper.scala 1489:10]
  assign dcache_io_lsu_load_1_req_valid = io_lsu_load_1_req_valid; // @[DCacheWrapper.scala 1489:10]
  assign dcache_io_lsu_load_1_req_bits_cmd = io_lsu_load_1_req_bits_cmd; // @[DCacheWrapper.scala 1489:10]
  assign dcache_io_lsu_load_1_req_bits_vaddr = io_lsu_load_1_req_bits_vaddr; // @[DCacheWrapper.scala 1489:10]
  assign dcache_io_lsu_load_1_req_bits_instrtype = io_lsu_load_1_req_bits_instrtype; // @[DCacheWrapper.scala 1489:10]
  assign dcache_io_lsu_load_1_s1_kill = io_lsu_load_1_s1_kill; // @[DCacheWrapper.scala 1489:10]
  assign dcache_io_lsu_load_1_s2_kill = io_lsu_load_1_s2_kill; // @[DCacheWrapper.scala 1489:10]
  assign dcache_io_lsu_load_1_s1_paddr_dup_lsu = io_lsu_load_1_s1_paddr_dup_lsu; // @[DCacheWrapper.scala 1489:10]
  assign dcache_io_lsu_load_1_s1_paddr_dup_dcache = io_lsu_load_1_s1_paddr_dup_dcache; // @[DCacheWrapper.scala 1489:10]
  assign dcache_io_lsu_store_req_valid = io_lsu_store_req_valid; // @[DCacheWrapper.scala 1489:10]
  assign dcache_io_lsu_store_req_bits_vaddr = io_lsu_store_req_bits_vaddr; // @[DCacheWrapper.scala 1489:10]
  assign dcache_io_lsu_store_req_bits_addr = io_lsu_store_req_bits_addr; // @[DCacheWrapper.scala 1489:10]
  assign dcache_io_lsu_store_req_bits_data = io_lsu_store_req_bits_data; // @[DCacheWrapper.scala 1489:10]
  assign dcache_io_lsu_store_req_bits_mask = io_lsu_store_req_bits_mask; // @[DCacheWrapper.scala 1489:10]
  assign dcache_io_lsu_store_req_bits_id = io_lsu_store_req_bits_id; // @[DCacheWrapper.scala 1489:10]
  assign dcache_io_lsu_atomics_req_valid = io_lsu_atomics_req_valid; // @[DCacheWrapper.scala 1489:10]
  assign dcache_io_lsu_atomics_req_bits_cmd = io_lsu_atomics_req_bits_cmd; // @[DCacheWrapper.scala 1489:10]
  assign dcache_io_lsu_atomics_req_bits_vaddr = io_lsu_atomics_req_bits_vaddr; // @[DCacheWrapper.scala 1489:10]
  assign dcache_io_lsu_atomics_req_bits_addr = io_lsu_atomics_req_bits_addr; // @[DCacheWrapper.scala 1489:10]
  assign dcache_io_lsu_atomics_req_bits_word_idx = io_lsu_atomics_req_bits_word_idx; // @[DCacheWrapper.scala 1489:10]
  assign dcache_io_lsu_atomics_req_bits_amo_data = io_lsu_atomics_req_bits_amo_data; // @[DCacheWrapper.scala 1489:10]
  assign dcache_io_lsu_atomics_req_bits_amo_mask = io_lsu_atomics_req_bits_amo_mask; // @[DCacheWrapper.scala 1489:10]
  assign dcache_io_lsu_forward_mshr_0_valid = io_lsu_forward_mshr_0_valid; // @[DCacheWrapper.scala 1489:10]
  assign dcache_io_lsu_forward_mshr_0_mshrid = io_lsu_forward_mshr_0_mshrid; // @[DCacheWrapper.scala 1489:10]
  assign dcache_io_lsu_forward_mshr_0_paddr = io_lsu_forward_mshr_0_paddr; // @[DCacheWrapper.scala 1489:10]
  assign dcache_io_lsu_forward_mshr_1_valid = io_lsu_forward_mshr_1_valid; // @[DCacheWrapper.scala 1489:10]
  assign dcache_io_lsu_forward_mshr_1_mshrid = io_lsu_forward_mshr_1_mshrid; // @[DCacheWrapper.scala 1489:10]
  assign dcache_io_lsu_forward_mshr_1_paddr = io_lsu_forward_mshr_1_paddr; // @[DCacheWrapper.scala 1489:10]
  assign dcache_io_csr_distribute_csr_wvalid = io_csr_distribute_csr_wvalid; // @[DCacheWrapper.scala 1489:10]
  assign dcache_io_csr_distribute_csr_waddr = io_csr_distribute_csr_waddr; // @[DCacheWrapper.scala 1489:10]
  assign dcache_io_csr_distribute_csr_wdata = io_csr_distribute_csr_wdata; // @[DCacheWrapper.scala 1489:10]
  assign dcache_io_lqEmpty = io_lqEmpty; // @[DCacheWrapper.scala 1489:10]
  assign dcache_sourceVaddr_valid = sourceVaddr_valid;
  assign dcache_sourceVaddr_bits = sourceVaddr_bits;
  always @(posedge clock) begin
    io_perf_0_value_REG <= dcache_io_perf_0_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_1_value_REG <= dcache_io_perf_1_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_2_value_REG <= dcache_io_perf_2_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_3_value_REG <= dcache_io_perf_3_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_4_value_REG <= dcache_io_perf_4_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_4_value_REG_1 <= io_perf_4_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_5_value_REG <= dcache_io_perf_5_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_5_value_REG_1 <= io_perf_5_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_6_value_REG <= dcache_io_perf_6_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_6_value_REG_1 <= io_perf_6_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_7_value_REG <= dcache_io_perf_7_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_7_value_REG_1 <= io_perf_7_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_8_value_REG <= dcache_io_perf_8_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_8_value_REG_1 <= io_perf_8_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_9_value_REG <= dcache_io_perf_9_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_9_value_REG_1 <= io_perf_9_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_10_value_REG <= dcache_io_perf_10_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_10_value_REG_1 <= io_perf_10_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_11_value_REG <= dcache_io_perf_11_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_11_value_REG_1 <= io_perf_11_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_12_value_REG <= dcache_io_perf_12_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_12_value_REG_1 <= io_perf_12_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_13_value_REG <= dcache_io_perf_13_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_13_value_REG_1 <= io_perf_13_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_14_value_REG <= dcache_io_perf_14_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_14_value_REG_1 <= io_perf_14_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_15_value_REG <= dcache_io_perf_15_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_15_value_REG_1 <= io_perf_15_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_16_value_REG <= dcache_io_perf_16_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_16_value_REG_1 <= io_perf_16_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_17_value_REG <= dcache_io_perf_17_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_17_value_REG_1 <= io_perf_17_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_22_value_REG <= dcache_io_perf_22_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_22_value_REG_1 <= io_perf_22_value_REG; // @[PerfCounterUtils.scala 295:27]
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
  io_perf_0_value_REG = _RAND_0[5:0];
  _RAND_1 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_1[5:0];
  _RAND_2 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_2[5:0];
  _RAND_3 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_3[5:0];
  _RAND_4 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_4[5:0];
  _RAND_5 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_5[5:0];
  _RAND_6 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_6[5:0];
  _RAND_7 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_7[5:0];
  _RAND_8 = {1{`RANDOM}};
  io_perf_4_value_REG = _RAND_8[5:0];
  _RAND_9 = {1{`RANDOM}};
  io_perf_4_value_REG_1 = _RAND_9[5:0];
  _RAND_10 = {1{`RANDOM}};
  io_perf_5_value_REG = _RAND_10[5:0];
  _RAND_11 = {1{`RANDOM}};
  io_perf_5_value_REG_1 = _RAND_11[5:0];
  _RAND_12 = {1{`RANDOM}};
  io_perf_6_value_REG = _RAND_12[5:0];
  _RAND_13 = {1{`RANDOM}};
  io_perf_6_value_REG_1 = _RAND_13[5:0];
  _RAND_14 = {1{`RANDOM}};
  io_perf_7_value_REG = _RAND_14[5:0];
  _RAND_15 = {1{`RANDOM}};
  io_perf_7_value_REG_1 = _RAND_15[5:0];
  _RAND_16 = {1{`RANDOM}};
  io_perf_8_value_REG = _RAND_16[5:0];
  _RAND_17 = {1{`RANDOM}};
  io_perf_8_value_REG_1 = _RAND_17[5:0];
  _RAND_18 = {1{`RANDOM}};
  io_perf_9_value_REG = _RAND_18[5:0];
  _RAND_19 = {1{`RANDOM}};
  io_perf_9_value_REG_1 = _RAND_19[5:0];
  _RAND_20 = {1{`RANDOM}};
  io_perf_10_value_REG = _RAND_20[5:0];
  _RAND_21 = {1{`RANDOM}};
  io_perf_10_value_REG_1 = _RAND_21[5:0];
  _RAND_22 = {1{`RANDOM}};
  io_perf_11_value_REG = _RAND_22[5:0];
  _RAND_23 = {1{`RANDOM}};
  io_perf_11_value_REG_1 = _RAND_23[5:0];
  _RAND_24 = {1{`RANDOM}};
  io_perf_12_value_REG = _RAND_24[5:0];
  _RAND_25 = {1{`RANDOM}};
  io_perf_12_value_REG_1 = _RAND_25[5:0];
  _RAND_26 = {1{`RANDOM}};
  io_perf_13_value_REG = _RAND_26[5:0];
  _RAND_27 = {1{`RANDOM}};
  io_perf_13_value_REG_1 = _RAND_27[5:0];
  _RAND_28 = {1{`RANDOM}};
  io_perf_14_value_REG = _RAND_28[5:0];
  _RAND_29 = {1{`RANDOM}};
  io_perf_14_value_REG_1 = _RAND_29[5:0];
  _RAND_30 = {1{`RANDOM}};
  io_perf_15_value_REG = _RAND_30[5:0];
  _RAND_31 = {1{`RANDOM}};
  io_perf_15_value_REG_1 = _RAND_31[5:0];
  _RAND_32 = {1{`RANDOM}};
  io_perf_16_value_REG = _RAND_32[5:0];
  _RAND_33 = {1{`RANDOM}};
  io_perf_16_value_REG_1 = _RAND_33[5:0];
  _RAND_34 = {1{`RANDOM}};
  io_perf_17_value_REG = _RAND_34[5:0];
  _RAND_35 = {1{`RANDOM}};
  io_perf_17_value_REG_1 = _RAND_35[5:0];
  _RAND_36 = {1{`RANDOM}};
  io_perf_22_value_REG = _RAND_36[5:0];
  _RAND_37 = {1{`RANDOM}};
  io_perf_22_value_REG_1 = _RAND_37[5:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

