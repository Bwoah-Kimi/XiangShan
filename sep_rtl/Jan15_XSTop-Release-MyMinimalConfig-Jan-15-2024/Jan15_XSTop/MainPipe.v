module MainPipe(
  input          clock,
  input          reset,
  output         io_probe_req_ready,
  input          io_probe_req_valid,
  input          io_probe_req_bits_miss,
  input  [1:0]   io_probe_req_bits_miss_id,
  input  [1:0]   io_probe_req_bits_miss_param,
  input          io_probe_req_bits_miss_dirty,
  input  [7:0]   io_probe_req_bits_miss_way_en,
  input          io_probe_req_bits_probe,
  input  [1:0]   io_probe_req_bits_probe_param,
  input          io_probe_req_bits_probe_need_data,
  input  [3:0]   io_probe_req_bits_source,
  input  [4:0]   io_probe_req_bits_cmd,
  input  [38:0]  io_probe_req_bits_vaddr,
  input  [35:0]  io_probe_req_bits_addr,
  input  [511:0] io_probe_req_bits_store_data,
  input  [63:0]  io_probe_req_bits_store_mask,
  input  [2:0]   io_probe_req_bits_word_idx,
  input  [63:0]  io_probe_req_bits_amo_data,
  input  [7:0]   io_probe_req_bits_amo_mask,
  input          io_probe_req_bits_error,
  input          io_probe_req_bits_replace,
  input  [7:0]   io_probe_req_bits_replace_way_en,
  input  [3:0]   io_probe_req_bits_id,
  input          io_miss_req_ready,
  output         io_miss_req_valid,
  output [3:0]   io_miss_req_bits_source,
  output [4:0]   io_miss_req_bits_cmd,
  output [35:0]  io_miss_req_bits_addr,
  output [38:0]  io_miss_req_bits_vaddr,
  output [7:0]   io_miss_req_bits_way_en,
  output [2:0]   io_miss_req_bits_word_idx,
  output [63:0]  io_miss_req_bits_amo_data,
  output [7:0]   io_miss_req_bits_amo_mask,
  output [1:0]   io_miss_req_bits_req_coh_state,
  output [1:0]   io_miss_req_bits_replace_coh_state,
  output [23:0]  io_miss_req_bits_replace_tag,
  output [3:0]   io_miss_req_bits_id,
  output [511:0] io_miss_req_bits_store_data,
  output [63:0]  io_miss_req_bits_store_mask,
  input          io_miss_resp_merged,
  input  [7:0]   io_miss_resp_repl_way_en,
  output         io_store_req_ready,
  input          io_store_req_valid,
  input  [38:0]  io_store_req_bits_vaddr,
  input  [35:0]  io_store_req_bits_addr,
  input  [511:0] io_store_req_bits_data,
  input  [63:0]  io_store_req_bits_mask,
  input  [3:0]   io_store_req_bits_id,
  output         io_store_replay_resp_valid,
  output [3:0]   io_store_replay_resp_bits_id,
  output         io_store_hit_resp_valid,
  output [3:0]   io_store_hit_resp_bits_id,
  output         io_release_update_valid,
  output [35:0]  io_release_update_bits_addr,
  output [7:0]   io_release_update_bits_mask,
  output [511:0] io_release_update_bits_data,
  output         io_atomic_req_ready,
  input          io_atomic_req_valid,
  input          io_atomic_req_bits_miss,
  input  [1:0]   io_atomic_req_bits_miss_id,
  input  [1:0]   io_atomic_req_bits_miss_param,
  input          io_atomic_req_bits_miss_dirty,
  input  [7:0]   io_atomic_req_bits_miss_way_en,
  input          io_atomic_req_bits_probe,
  input  [1:0]   io_atomic_req_bits_probe_param,
  input          io_atomic_req_bits_probe_need_data,
  input  [3:0]   io_atomic_req_bits_source,
  input  [4:0]   io_atomic_req_bits_cmd,
  input  [38:0]  io_atomic_req_bits_vaddr,
  input  [35:0]  io_atomic_req_bits_addr,
  input  [511:0] io_atomic_req_bits_store_data,
  input  [63:0]  io_atomic_req_bits_store_mask,
  input  [2:0]   io_atomic_req_bits_word_idx,
  input  [63:0]  io_atomic_req_bits_amo_data,
  input  [7:0]   io_atomic_req_bits_amo_mask,
  input          io_atomic_req_bits_error,
  input          io_atomic_req_bits_replace,
  input  [7:0]   io_atomic_req_bits_replace_way_en,
  input  [3:0]   io_atomic_req_bits_id,
  output         io_atomic_resp_valid,
  output [63:0]  io_atomic_resp_bits_data,
  output         io_atomic_resp_bits_miss,
  output [1:0]   io_atomic_resp_bits_miss_id,
  output         io_atomic_resp_bits_replay,
  output         io_atomic_resp_bits_error,
  output         io_atomic_resp_bits_ack_miss_queue,
  output [3:0]   io_atomic_resp_bits_id,
  output         io_replace_req_ready,
  input          io_replace_req_valid,
  input          io_replace_req_bits_miss,
  input  [1:0]   io_replace_req_bits_miss_id,
  input  [1:0]   io_replace_req_bits_miss_param,
  input          io_replace_req_bits_miss_dirty,
  input  [7:0]   io_replace_req_bits_miss_way_en,
  input          io_replace_req_bits_probe,
  input  [1:0]   io_replace_req_bits_probe_param,
  input          io_replace_req_bits_probe_need_data,
  input  [3:0]   io_replace_req_bits_source,
  input  [4:0]   io_replace_req_bits_cmd,
  input  [38:0]  io_replace_req_bits_vaddr,
  input  [35:0]  io_replace_req_bits_addr,
  input  [511:0] io_replace_req_bits_store_data,
  input  [63:0]  io_replace_req_bits_store_mask,
  input  [2:0]   io_replace_req_bits_word_idx,
  input  [63:0]  io_replace_req_bits_amo_data,
  input  [7:0]   io_replace_req_bits_amo_mask,
  input          io_replace_req_bits_error,
  input          io_replace_req_bits_replace,
  input  [7:0]   io_replace_req_bits_replace_way_en,
  input  [3:0]   io_replace_req_bits_id,
  output         io_replace_resp_valid,
  output [1:0]   io_replace_resp_bits,
  input          io_wb_ready,
  output         io_wb_valid,
  output [2:0]   io_wb_bits_param,
  output         io_wb_bits_voluntary,
  output         io_wb_bits_hasData,
  output         io_wb_bits_delay_release,
  output [1:0]   io_wb_bits_miss_id,
  output [35:0]  io_wb_bits_addr,
  output [511:0] io_wb_bits_data,
  input          io_wb_ready_dup_0,
  input          io_wb_ready_dup_1,
  input          io_wb_ready_dup_2,
  input          io_wb_ready_dup_3,
  input          io_wb_ready_dup_4,
  input          io_wb_ready_dup_5,
  input          io_wb_ready_dup_6,
  input          io_wb_ready_dup_7,
  input          io_wb_ready_dup_8,
  input          io_wb_ready_dup_9,
  input          io_wb_ready_dup_10,
  input          io_wb_ready_dup_11,
  output         io_probe_ttob_check_req_valid,
  output [35:0]  io_probe_ttob_check_req_bits_addr,
  input          io_probe_ttob_check_resp_bits_toN,
  output         io_data_read_intend,
  input          io_data_readline_ready,
  output         io_data_readline_valid,
  output [7:0]   io_data_readline_bits_way_en,
  output [35:0]  io_data_readline_bits_addr,
  input  [63:0]  io_data_resp_0_raw_data,
  input  [63:0]  io_data_resp_1_raw_data,
  input  [63:0]  io_data_resp_2_raw_data,
  input  [63:0]  io_data_resp_3_raw_data,
  input  [63:0]  io_data_resp_4_raw_data,
  input  [63:0]  io_data_resp_5_raw_data,
  input  [63:0]  io_data_resp_6_raw_data,
  input  [63:0]  io_data_resp_7_raw_data,
  input          io_readline_error_delayed,
  input          io_data_write_ready,
  output         io_data_write_valid,
  output [7:0]   io_data_write_bits_wmask,
  output [63:0]  io_data_write_bits_data_0,
  output [63:0]  io_data_write_bits_data_1,
  output [63:0]  io_data_write_bits_data_2,
  output [63:0]  io_data_write_bits_data_3,
  output [63:0]  io_data_write_bits_data_4,
  output [63:0]  io_data_write_bits_data_5,
  output [63:0]  io_data_write_bits_data_6,
  output [63:0]  io_data_write_bits_data_7,
  output         io_data_write_dup_0_valid,
  output [7:0]   io_data_write_dup_0_bits_way_en,
  output [35:0]  io_data_write_dup_0_bits_addr,
  output         io_data_write_dup_1_valid,
  output [7:0]   io_data_write_dup_1_bits_way_en,
  output [35:0]  io_data_write_dup_1_bits_addr,
  output         io_data_write_dup_2_valid,
  output [7:0]   io_data_write_dup_2_bits_way_en,
  output [35:0]  io_data_write_dup_2_bits_addr,
  output         io_data_write_dup_3_valid,
  output [7:0]   io_data_write_dup_3_bits_way_en,
  output [35:0]  io_data_write_dup_3_bits_addr,
  output         io_data_write_dup_4_valid,
  output [7:0]   io_data_write_dup_4_bits_way_en,
  output [35:0]  io_data_write_dup_4_bits_addr,
  output         io_data_write_dup_5_valid,
  output [7:0]   io_data_write_dup_5_bits_way_en,
  output [35:0]  io_data_write_dup_5_bits_addr,
  output         io_data_write_dup_6_valid,
  output [7:0]   io_data_write_dup_6_bits_way_en,
  output [35:0]  io_data_write_dup_6_bits_addr,
  output         io_data_write_dup_7_valid,
  output [7:0]   io_data_write_dup_7_bits_way_en,
  output [35:0]  io_data_write_dup_7_bits_addr,
  input          io_data_write_ready_dup_0,
  input          io_data_write_ready_dup_1,
  input          io_data_write_ready_dup_2,
  input          io_data_write_ready_dup_3,
  input          io_data_write_ready_dup_4,
  input          io_data_write_ready_dup_5,
  input          io_data_write_ready_dup_6,
  input          io_data_write_ready_dup_7,
  input          io_data_write_ready_dup_8,
  input          io_data_write_ready_dup_9,
  input          io_data_write_ready_dup_10,
  input          io_data_write_ready_dup_11,
  output         io_meta_read_valid,
  output [5:0]   io_meta_read_bits_idx,
  input  [1:0]   io_meta_resp_0_coh_state,
  input  [1:0]   io_meta_resp_1_coh_state,
  input  [1:0]   io_meta_resp_2_coh_state,
  input  [1:0]   io_meta_resp_3_coh_state,
  input  [1:0]   io_meta_resp_4_coh_state,
  input  [1:0]   io_meta_resp_5_coh_state,
  input  [1:0]   io_meta_resp_6_coh_state,
  input  [1:0]   io_meta_resp_7_coh_state,
  output         io_meta_write_valid,
  output [5:0]   io_meta_write_bits_idx,
  output [7:0]   io_meta_write_bits_way_en,
  output [1:0]   io_meta_write_bits_meta_coh_state,
  input          io_extra_meta_resp_0_error,
  input          io_extra_meta_resp_1_error,
  input          io_extra_meta_resp_2_error,
  input          io_extra_meta_resp_3_error,
  input          io_extra_meta_resp_4_error,
  input          io_extra_meta_resp_5_error,
  input          io_extra_meta_resp_6_error,
  input          io_extra_meta_resp_7_error,
  output         io_error_flag_write_valid,
  output [5:0]   io_error_flag_write_bits_idx,
  output [7:0]   io_error_flag_write_bits_way_en,
  output         io_error_flag_write_bits_flag,
  input          io_tag_read_ready,
  output         io_tag_read_valid,
  output [5:0]   io_tag_read_bits_idx,
  input  [29:0]  io_tag_resp_0,
  input  [29:0]  io_tag_resp_1,
  input  [29:0]  io_tag_resp_2,
  input  [29:0]  io_tag_resp_3,
  input  [29:0]  io_tag_resp_4,
  input  [29:0]  io_tag_resp_5,
  input  [29:0]  io_tag_resp_6,
  input  [29:0]  io_tag_resp_7,
  input          io_tag_write_ready,
  output         io_tag_write_valid,
  output [5:0]   io_tag_write_bits_idx,
  output [7:0]   io_tag_write_bits_way_en,
  output [23:0]  io_tag_write_bits_tag,
  input          io_tag_write_ready_dup_0,
  input          io_tag_write_ready_dup_1,
  input          io_tag_write_ready_dup_2,
  input          io_tag_write_ready_dup_3,
  input          io_tag_write_ready_dup_4,
  input          io_tag_write_ready_dup_5,
  input          io_tag_write_ready_dup_6,
  input          io_tag_write_ready_dup_7,
  input          io_tag_write_ready_dup_8,
  input          io_tag_write_ready_dup_9,
  input          io_tag_write_ready_dup_10,
  input          io_tag_write_ready_dup_11,
  output         io_tag_write_intend,
  output         io_replace_access_valid,
  output [5:0]   io_replace_access_bits_set,
  output [2:0]   io_replace_access_bits_way,
  output [5:0]   io_replace_way_set_bits,
  input  [2:0]   io_replace_way_way,
  output         io_status_s1_valid,
  output [5:0]   io_status_s1_bits_set,
  output         io_status_s2_valid,
  output [5:0]   io_status_s2_bits_set,
  output [7:0]   io_status_s2_bits_way_en,
  output         io_status_s3_valid,
  output [5:0]   io_status_s3_bits_set,
  output [7:0]   io_status_s3_bits_way_en,
  output         io_status_dup_0_s1_valid,
  output [5:0]   io_status_dup_0_s1_bits_set,
  output [7:0]   io_status_dup_0_s1_bits_way_en,
  output         io_status_dup_0_s2_valid,
  output [5:0]   io_status_dup_0_s2_bits_set,
  output [7:0]   io_status_dup_0_s2_bits_way_en,
  output         io_status_dup_0_s3_valid,
  output [5:0]   io_status_dup_0_s3_bits_set,
  output [7:0]   io_status_dup_0_s3_bits_way_en,
  output         io_status_dup_1_s1_valid,
  output [5:0]   io_status_dup_1_s1_bits_set,
  output [7:0]   io_status_dup_1_s1_bits_way_en,
  output         io_status_dup_1_s2_valid,
  output [5:0]   io_status_dup_1_s2_bits_set,
  output [7:0]   io_status_dup_1_s2_bits_way_en,
  output         io_status_dup_1_s3_valid,
  output [5:0]   io_status_dup_1_s3_bits_set,
  output [7:0]   io_status_dup_1_s3_bits_way_en,
  output         io_status_dup_2_s1_valid,
  output [5:0]   io_status_dup_2_s1_bits_set,
  output [7:0]   io_status_dup_2_s1_bits_way_en,
  output         io_status_dup_2_s2_valid,
  output [5:0]   io_status_dup_2_s2_bits_set,
  output [7:0]   io_status_dup_2_s2_bits_way_en,
  output         io_status_dup_2_s3_valid,
  output [5:0]   io_status_dup_2_s3_bits_set,
  output [7:0]   io_status_dup_2_s3_bits_way_en,
  output         io_status_dup_3_s1_valid,
  output [5:0]   io_status_dup_3_s1_bits_set,
  output [7:0]   io_status_dup_3_s1_bits_way_en,
  output         io_status_dup_3_s2_valid,
  output [5:0]   io_status_dup_3_s2_bits_set,
  output [7:0]   io_status_dup_3_s2_bits_way_en,
  output         io_status_dup_3_s3_valid,
  output [5:0]   io_status_dup_3_s3_bits_set,
  output [7:0]   io_status_dup_3_s3_bits_way_en,
  output         io_status_dup_4_s1_valid,
  output [5:0]   io_status_dup_4_s1_bits_set,
  output [7:0]   io_status_dup_4_s1_bits_way_en,
  output         io_status_dup_4_s2_valid,
  output [5:0]   io_status_dup_4_s2_bits_set,
  output [7:0]   io_status_dup_4_s2_bits_way_en,
  output         io_status_dup_4_s3_valid,
  output [5:0]   io_status_dup_4_s3_bits_set,
  output [7:0]   io_status_dup_4_s3_bits_way_en,
  output         io_status_dup_5_s1_valid,
  output [5:0]   io_status_dup_5_s1_bits_set,
  output [7:0]   io_status_dup_5_s1_bits_way_en,
  output         io_status_dup_5_s2_valid,
  output [5:0]   io_status_dup_5_s2_bits_set,
  output [7:0]   io_status_dup_5_s2_bits_way_en,
  output         io_status_dup_5_s3_valid,
  output [5:0]   io_status_dup_5_s3_bits_set,
  output [7:0]   io_status_dup_5_s3_bits_way_en,
  output         io_status_dup_6_s1_valid,
  output [5:0]   io_status_dup_6_s1_bits_set,
  output [7:0]   io_status_dup_6_s1_bits_way_en,
  output         io_status_dup_6_s2_valid,
  output [5:0]   io_status_dup_6_s2_bits_set,
  output [7:0]   io_status_dup_6_s2_bits_way_en,
  output         io_status_dup_6_s3_valid,
  output [5:0]   io_status_dup_6_s3_bits_set,
  output [7:0]   io_status_dup_6_s3_bits_way_en,
  output         io_status_dup_7_s1_valid,
  output [5:0]   io_status_dup_7_s1_bits_set,
  output [7:0]   io_status_dup_7_s1_bits_way_en,
  output         io_status_dup_7_s2_valid,
  output [5:0]   io_status_dup_7_s2_bits_set,
  output [7:0]   io_status_dup_7_s2_bits_way_en,
  output         io_status_dup_7_s3_valid,
  output [5:0]   io_status_dup_7_s3_bits_set,
  output [7:0]   io_status_dup_7_s3_bits_way_en,
  output         io_status_dup_8_s1_valid,
  output [5:0]   io_status_dup_8_s1_bits_set,
  output [7:0]   io_status_dup_8_s1_bits_way_en,
  output         io_status_dup_8_s2_valid,
  output [5:0]   io_status_dup_8_s2_bits_set,
  output [7:0]   io_status_dup_8_s2_bits_way_en,
  output         io_status_dup_8_s3_valid,
  output [5:0]   io_status_dup_8_s3_bits_set,
  output [7:0]   io_status_dup_8_s3_bits_way_en,
  output         io_status_dup_9_s1_valid,
  output [5:0]   io_status_dup_9_s1_bits_set,
  output [7:0]   io_status_dup_9_s1_bits_way_en,
  output         io_status_dup_9_s2_valid,
  output [5:0]   io_status_dup_9_s2_bits_set,
  output [7:0]   io_status_dup_9_s2_bits_way_en,
  output         io_status_dup_9_s3_valid,
  output [5:0]   io_status_dup_9_s3_bits_set,
  output [7:0]   io_status_dup_9_s3_bits_way_en,
  output         io_status_dup_10_s1_valid,
  output [5:0]   io_status_dup_10_s1_bits_set,
  output [7:0]   io_status_dup_10_s1_bits_way_en,
  output         io_status_dup_10_s2_valid,
  output [5:0]   io_status_dup_10_s2_bits_set,
  output [7:0]   io_status_dup_10_s2_bits_way_en,
  output         io_status_dup_10_s3_valid,
  output [5:0]   io_status_dup_10_s3_bits_set,
  output [7:0]   io_status_dup_10_s3_bits_way_en,
  output         io_status_dup_11_s1_valid,
  output [5:0]   io_status_dup_11_s1_bits_set,
  output [7:0]   io_status_dup_11_s1_bits_way_en,
  output         io_status_dup_11_s2_valid,
  output [5:0]   io_status_dup_11_s2_bits_set,
  output [7:0]   io_status_dup_11_s2_bits_way_en,
  output         io_status_dup_11_s3_valid,
  output [5:0]   io_status_dup_11_s3_bits_set,
  output [7:0]   io_status_dup_11_s3_bits_way_en,
  output         io_status_dup_12_s1_valid,
  output [5:0]   io_status_dup_12_s1_bits_set,
  output [7:0]   io_status_dup_12_s1_bits_way_en,
  output         io_status_dup_12_s2_valid,
  output [5:0]   io_status_dup_12_s2_bits_set,
  output [7:0]   io_status_dup_12_s2_bits_way_en,
  output         io_status_dup_12_s3_valid,
  output [5:0]   io_status_dup_12_s3_bits_set,
  output [7:0]   io_status_dup_12_s3_bits_way_en,
  output         io_status_dup_13_s1_valid,
  output [5:0]   io_status_dup_13_s1_bits_set,
  output [7:0]   io_status_dup_13_s1_bits_way_en,
  output         io_status_dup_13_s2_valid,
  output [5:0]   io_status_dup_13_s2_bits_set,
  output [7:0]   io_status_dup_13_s2_bits_way_en,
  output         io_status_dup_13_s3_valid,
  output [5:0]   io_status_dup_13_s3_bits_set,
  output [7:0]   io_status_dup_13_s3_bits_way_en,
  output         io_status_dup_14_s1_valid,
  output [5:0]   io_status_dup_14_s1_bits_set,
  output [7:0]   io_status_dup_14_s1_bits_way_en,
  output         io_status_dup_14_s2_valid,
  output [5:0]   io_status_dup_14_s2_bits_set,
  output [7:0]   io_status_dup_14_s2_bits_way_en,
  output         io_status_dup_14_s3_valid,
  output [5:0]   io_status_dup_14_s3_bits_set,
  output [7:0]   io_status_dup_14_s3_bits_way_en,
  output         io_status_dup_15_s1_valid,
  output [5:0]   io_status_dup_15_s1_bits_set,
  output [7:0]   io_status_dup_15_s1_bits_way_en,
  output         io_status_dup_15_s2_valid,
  output [5:0]   io_status_dup_15_s2_bits_set,
  output [7:0]   io_status_dup_15_s2_bits_way_en,
  output         io_status_dup_15_s3_valid,
  output [5:0]   io_status_dup_15_s3_bits_set,
  output [7:0]   io_status_dup_15_s3_bits_way_en,
  output         io_status_dup_16_s1_valid,
  output [5:0]   io_status_dup_16_s1_bits_set,
  output [7:0]   io_status_dup_16_s1_bits_way_en,
  output         io_status_dup_16_s2_valid,
  output [5:0]   io_status_dup_16_s2_bits_set,
  output [7:0]   io_status_dup_16_s2_bits_way_en,
  output         io_status_dup_16_s3_valid,
  output [5:0]   io_status_dup_16_s3_bits_set,
  output [7:0]   io_status_dup_16_s3_bits_way_en,
  output         io_status_dup_17_s1_valid,
  output [5:0]   io_status_dup_17_s1_bits_set,
  output [7:0]   io_status_dup_17_s1_bits_way_en,
  output         io_status_dup_17_s2_valid,
  output [5:0]   io_status_dup_17_s2_bits_set,
  output [7:0]   io_status_dup_17_s2_bits_way_en,
  output         io_status_dup_17_s3_valid,
  output [5:0]   io_status_dup_17_s3_bits_set,
  output [7:0]   io_status_dup_17_s3_bits_way_en,
  output         io_status_dup_18_s1_valid,
  output [5:0]   io_status_dup_18_s1_bits_set,
  output [7:0]   io_status_dup_18_s1_bits_way_en,
  output         io_status_dup_18_s2_valid,
  output [5:0]   io_status_dup_18_s2_bits_set,
  output [7:0]   io_status_dup_18_s2_bits_way_en,
  output         io_status_dup_18_s3_valid,
  output [5:0]   io_status_dup_18_s3_bits_set,
  output [7:0]   io_status_dup_18_s3_bits_way_en,
  output         io_status_dup_19_s1_valid,
  output [5:0]   io_status_dup_19_s1_bits_set,
  output [7:0]   io_status_dup_19_s1_bits_way_en,
  output         io_status_dup_19_s2_valid,
  output [5:0]   io_status_dup_19_s2_bits_set,
  output [7:0]   io_status_dup_19_s2_bits_way_en,
  output         io_status_dup_19_s3_valid,
  output [5:0]   io_status_dup_19_s3_bits_set,
  output [7:0]   io_status_dup_19_s3_bits_way_en,
  output         io_status_dup_20_s1_valid,
  output [5:0]   io_status_dup_20_s1_bits_set,
  output [7:0]   io_status_dup_20_s1_bits_way_en,
  output         io_status_dup_20_s2_valid,
  output [5:0]   io_status_dup_20_s2_bits_set,
  output [7:0]   io_status_dup_20_s2_bits_way_en,
  output         io_status_dup_20_s3_valid,
  output [5:0]   io_status_dup_20_s3_bits_set,
  output [7:0]   io_status_dup_20_s3_bits_way_en,
  output         io_status_dup_21_s1_valid,
  output [5:0]   io_status_dup_21_s1_bits_set,
  output [7:0]   io_status_dup_21_s1_bits_way_en,
  output         io_status_dup_21_s2_valid,
  output [5:0]   io_status_dup_21_s2_bits_set,
  output [7:0]   io_status_dup_21_s2_bits_way_en,
  output         io_status_dup_21_s3_valid,
  output [5:0]   io_status_dup_21_s3_bits_set,
  output [7:0]   io_status_dup_21_s3_bits_way_en,
  output         io_status_dup_22_s1_valid,
  output [5:0]   io_status_dup_22_s1_bits_set,
  output [7:0]   io_status_dup_22_s1_bits_way_en,
  output         io_status_dup_22_s2_valid,
  output [5:0]   io_status_dup_22_s2_bits_set,
  output [7:0]   io_status_dup_22_s2_bits_way_en,
  output         io_status_dup_22_s3_valid,
  output [5:0]   io_status_dup_22_s3_bits_set,
  output [7:0]   io_status_dup_22_s3_bits_way_en,
  output         io_status_dup_23_s1_valid,
  output [5:0]   io_status_dup_23_s1_bits_set,
  output [7:0]   io_status_dup_23_s1_bits_way_en,
  output         io_status_dup_23_s2_valid,
  output [5:0]   io_status_dup_23_s2_bits_set,
  output [7:0]   io_status_dup_23_s2_bits_way_en,
  output         io_status_dup_23_s3_valid,
  output [5:0]   io_status_dup_23_s3_bits_set,
  output [7:0]   io_status_dup_23_s3_bits_way_en,
  output         io_lrsc_locked_block_valid,
  output [35:0]  io_lrsc_locked_block_bits,
  input          io_invalid_resv_set,
  output         io_update_resv_set,
  output         io_block_lr,
  output         io_error_source_tag,
  output         io_error_source_data,
  output         io_error_source_l2,
  output         io_error_opType_store,
  output         io_error_opType_probe,
  output         io_error_opType_release,
  output         io_error_opType_atom,
  output [35:0]  io_error_paddr,
  output         io_error_report_to_beu,
  output         io_error_valid,
  output [5:0]   io_perf_0_value,
  output [5:0]   io_perf_1_value
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [63:0] _RAND_3;
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
  reg [63:0] _RAND_38;
  reg [63:0] _RAND_39;
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
  reg [63:0] _RAND_62;
  reg [511:0] _RAND_63;
  reg [63:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [63:0] _RAND_66;
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
  reg [63:0] _RAND_77;
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
  reg [63:0] _RAND_138;
  reg [511:0] _RAND_139;
  reg [63:0] _RAND_140;
  reg [31:0] _RAND_141;
  reg [63:0] _RAND_142;
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
  reg [31:0] _RAND_157;
  reg [31:0] _RAND_158;
  reg [31:0] _RAND_159;
  reg [31:0] _RAND_160;
  reg [31:0] _RAND_161;
  reg [31:0] _RAND_162;
  reg [31:0] _RAND_163;
  reg [31:0] _RAND_164;
  reg [31:0] _RAND_165;
  reg [31:0] _RAND_166;
  reg [31:0] _RAND_167;
  reg [31:0] _RAND_168;
  reg [31:0] _RAND_169;
  reg [31:0] _RAND_170;
  reg [31:0] _RAND_171;
  reg [31:0] _RAND_172;
  reg [31:0] _RAND_173;
  reg [31:0] _RAND_174;
  reg [31:0] _RAND_175;
  reg [31:0] _RAND_176;
  reg [31:0] _RAND_177;
  reg [31:0] _RAND_178;
  reg [31:0] _RAND_179;
  reg [31:0] _RAND_180;
  reg [31:0] _RAND_181;
  reg [31:0] _RAND_182;
  reg [31:0] _RAND_183;
  reg [63:0] _RAND_184;
  reg [31:0] _RAND_185;
  reg [31:0] _RAND_186;
  reg [31:0] _RAND_187;
  reg [31:0] _RAND_188;
  reg [31:0] _RAND_189;
  reg [31:0] _RAND_190;
  reg [31:0] _RAND_191;
  reg [31:0] _RAND_192;
  reg [31:0] _RAND_193;
  reg [31:0] _RAND_194;
  reg [31:0] _RAND_195;
  reg [31:0] _RAND_196;
  reg [63:0] _RAND_197;
  reg [63:0] _RAND_198;
  reg [63:0] _RAND_199;
  reg [63:0] _RAND_200;
  reg [63:0] _RAND_201;
  reg [63:0] _RAND_202;
  reg [63:0] _RAND_203;
  reg [63:0] _RAND_204;
  reg [31:0] _RAND_205;
  reg [63:0] _RAND_206;
  reg [31:0] _RAND_207;
  reg [31:0] _RAND_208;
  reg [31:0] _RAND_209;
  reg [31:0] _RAND_210;
  reg [31:0] _RAND_211;
  reg [63:0] _RAND_212;
  reg [31:0] _RAND_213;
  reg [63:0] _RAND_214;
  reg [31:0] _RAND_215;
  reg [31:0] _RAND_216;
  reg [31:0] _RAND_217;
  reg [31:0] _RAND_218;
  reg [31:0] _RAND_219;
  reg [31:0] _RAND_220;
  reg [63:0] _RAND_221;
  reg [63:0] _RAND_222;
  reg [63:0] _RAND_223;
  reg [63:0] _RAND_224;
  reg [63:0] _RAND_225;
  reg [63:0] _RAND_226;
  reg [63:0] _RAND_227;
  reg [63:0] _RAND_228;
  reg [63:0] _RAND_229;
  reg [63:0] _RAND_230;
  reg [63:0] _RAND_231;
  reg [63:0] _RAND_232;
  reg [63:0] _RAND_233;
  reg [63:0] _RAND_234;
  reg [63:0] _RAND_235;
  reg [63:0] _RAND_236;
  reg [63:0] _RAND_237;
  reg [31:0] _RAND_238;
  reg [31:0] _RAND_239;
  reg [31:0] _RAND_240;
  reg [31:0] _RAND_241;
  reg [31:0] _RAND_242;
  reg [31:0] _RAND_243;
  reg [31:0] _RAND_244;
  reg [31:0] _RAND_245;
  reg [31:0] _RAND_246;
  reg [31:0] _RAND_247;
  reg [31:0] _RAND_248;
  reg [31:0] _RAND_249;
  reg [31:0] _RAND_250;
  reg [31:0] _RAND_251;
  reg [31:0] _RAND_252;
  reg [31:0] _RAND_253;
  reg [31:0] _RAND_254;
  reg [31:0] _RAND_255;
  reg [31:0] _RAND_256;
  reg [31:0] _RAND_257;
  reg [31:0] _RAND_258;
  reg [31:0] _RAND_259;
  reg [31:0] _RAND_260;
  reg [31:0] _RAND_261;
  reg [31:0] _RAND_262;
  reg [31:0] _RAND_263;
  reg [31:0] _RAND_264;
  reg [31:0] _RAND_265;
  reg [31:0] _RAND_266;
  reg [31:0] _RAND_267;
  reg [31:0] _RAND_268;
  reg [31:0] _RAND_269;
  reg [31:0] _RAND_270;
  reg [31:0] _RAND_271;
  reg [31:0] _RAND_272;
  reg [31:0] _RAND_273;
  reg [31:0] _RAND_274;
  reg [31:0] _RAND_275;
  reg [31:0] _RAND_276;
  reg [31:0] _RAND_277;
  reg [31:0] _RAND_278;
  reg [31:0] _RAND_279;
  reg [31:0] _RAND_280;
  reg [31:0] _RAND_281;
  reg [31:0] _RAND_282;
  reg [31:0] _RAND_283;
  reg [31:0] _RAND_284;
  reg [31:0] _RAND_285;
  reg [31:0] _RAND_286;
  reg [31:0] _RAND_287;
  reg [31:0] _RAND_288;
  reg [63:0] _RAND_289;
  reg [63:0] _RAND_290;
  reg [63:0] _RAND_291;
  reg [31:0] _RAND_292;
  reg [31:0] _RAND_293;
  reg [31:0] _RAND_294;
  reg [31:0] _RAND_295;
  reg [31:0] _RAND_296;
  reg [31:0] _RAND_297;
  reg [31:0] _RAND_298;
  reg [31:0] _RAND_299;
  reg [31:0] _RAND_300;
  reg [31:0] _RAND_301;
  reg [31:0] _RAND_302;
  reg [31:0] _RAND_303;
  reg [31:0] _RAND_304;
  reg [31:0] _RAND_305;
  reg [63:0] _RAND_306;
  reg [31:0] _RAND_307;
  reg [31:0] _RAND_308;
  reg [31:0] _RAND_309;
  reg [63:0] _RAND_310;
  reg [63:0] _RAND_311;
  reg [63:0] _RAND_312;
  reg [63:0] _RAND_313;
  reg [63:0] _RAND_314;
  reg [63:0] _RAND_315;
  reg [63:0] _RAND_316;
  reg [63:0] _RAND_317;
  reg [31:0] _RAND_318;
  reg [31:0] _RAND_319;
  reg [31:0] _RAND_320;
  reg [31:0] _RAND_321;
  reg [31:0] _RAND_322;
  reg [31:0] _RAND_323;
  reg [31:0] _RAND_324;
  reg [31:0] _RAND_325;
  reg [31:0] _RAND_326;
  reg [31:0] _RAND_327;
  reg [31:0] _RAND_328;
  reg [31:0] _RAND_329;
  reg [31:0] _RAND_330;
  reg [31:0] _RAND_331;
  reg [63:0] _RAND_332;
  reg [63:0] _RAND_333;
  reg [31:0] _RAND_334;
  reg [31:0] _RAND_335;
  reg [31:0] _RAND_336;
  reg [31:0] _RAND_337;
  reg [31:0] _RAND_338;
  reg [31:0] _RAND_339;
  reg [31:0] _RAND_340;
  reg [31:0] _RAND_341;
  reg [31:0] _RAND_342;
  reg [31:0] _RAND_343;
  reg [31:0] _RAND_344;
  reg [31:0] _RAND_345;
  reg [31:0] _RAND_346;
  reg [31:0] _RAND_347;
  reg [31:0] _RAND_348;
  reg [63:0] _RAND_349;
  reg [63:0] _RAND_350;
  reg [31:0] _RAND_351;
  reg [31:0] _RAND_352;
  reg [31:0] _RAND_353;
  reg [31:0] _RAND_354;
  reg [31:0] _RAND_355;
  reg [31:0] _RAND_356;
  reg [31:0] _RAND_357;
  reg [31:0] _RAND_358;
  reg [31:0] _RAND_359;
  reg [31:0] _RAND_360;
  reg [31:0] _RAND_361;
  reg [63:0] _RAND_362;
  reg [63:0] _RAND_363;
  reg [31:0] _RAND_364;
  reg [31:0] _RAND_365;
  reg [31:0] _RAND_366;
  reg [31:0] _RAND_367;
  reg [31:0] _RAND_368;
  reg [31:0] _RAND_369;
  reg [31:0] _RAND_370;
  reg [31:0] _RAND_371;
  reg [31:0] _RAND_372;
  reg [31:0] _RAND_373;
  reg [31:0] _RAND_374;
  reg [63:0] _RAND_375;
  reg [63:0] _RAND_376;
  reg [31:0] _RAND_377;
  reg [31:0] _RAND_378;
  reg [31:0] _RAND_379;
  reg [63:0] _RAND_380;
  reg [31:0] _RAND_381;
  reg [31:0] _RAND_382;
  reg [31:0] _RAND_383;
  reg [31:0] _RAND_384;
  reg [31:0] _RAND_385;
  reg [31:0] _RAND_386;
  reg [31:0] _RAND_387;
  reg [31:0] _RAND_388;
  reg [31:0] _RAND_389;
  reg [31:0] _RAND_390;
  reg [31:0] _RAND_391;
  reg [31:0] _RAND_392;
  reg [31:0] _RAND_393;
  reg [31:0] _RAND_394;
  reg [31:0] _RAND_395;
  reg [31:0] _RAND_396;
  reg [31:0] _RAND_397;
  reg [31:0] _RAND_398;
  reg [63:0] _RAND_399;
  reg [63:0] _RAND_400;
  reg [31:0] _RAND_401;
  reg [31:0] _RAND_402;
  reg [63:0] _RAND_403;
  reg [31:0] _RAND_404;
  reg [31:0] _RAND_405;
  reg [31:0] _RAND_406;
  reg [31:0] _RAND_407;
  reg [31:0] _RAND_408;
  reg [31:0] _RAND_409;
  reg [31:0] _RAND_410;
  reg [31:0] _RAND_411;
  reg [31:0] _RAND_412;
  reg [63:0] _RAND_413;
  reg [63:0] _RAND_414;
  reg [31:0] _RAND_415;
  reg [31:0] _RAND_416;
  reg [63:0] _RAND_417;
  reg [31:0] _RAND_418;
  reg [31:0] _RAND_419;
  reg [31:0] _RAND_420;
  reg [31:0] _RAND_421;
  reg [31:0] _RAND_422;
  reg [31:0] _RAND_423;
  reg [31:0] _RAND_424;
  reg [31:0] _RAND_425;
  reg [31:0] _RAND_426;
  reg [63:0] _RAND_427;
  reg [63:0] _RAND_428;
  reg [31:0] _RAND_429;
  reg [31:0] _RAND_430;
  reg [63:0] _RAND_431;
  reg [31:0] _RAND_432;
  reg [31:0] _RAND_433;
  reg [31:0] _RAND_434;
  reg [31:0] _RAND_435;
  reg [31:0] _RAND_436;
  reg [31:0] _RAND_437;
  reg [31:0] _RAND_438;
  reg [31:0] _RAND_439;
  reg [31:0] _RAND_440;
  reg [63:0] _RAND_441;
  reg [63:0] _RAND_442;
  reg [31:0] _RAND_443;
  reg [31:0] _RAND_444;
  reg [63:0] _RAND_445;
  reg [31:0] _RAND_446;
  reg [31:0] _RAND_447;
  reg [31:0] _RAND_448;
  reg [31:0] _RAND_449;
  reg [31:0] _RAND_450;
  reg [31:0] _RAND_451;
  reg [31:0] _RAND_452;
  reg [31:0] _RAND_453;
  reg [31:0] _RAND_454;
  reg [63:0] _RAND_455;
  reg [63:0] _RAND_456;
  reg [31:0] _RAND_457;
  reg [31:0] _RAND_458;
  reg [63:0] _RAND_459;
  reg [31:0] _RAND_460;
  reg [31:0] _RAND_461;
  reg [31:0] _RAND_462;
  reg [31:0] _RAND_463;
  reg [31:0] _RAND_464;
  reg [31:0] _RAND_465;
  reg [31:0] _RAND_466;
  reg [31:0] _RAND_467;
  reg [31:0] _RAND_468;
  reg [63:0] _RAND_469;
  reg [63:0] _RAND_470;
  reg [31:0] _RAND_471;
  reg [31:0] _RAND_472;
  reg [63:0] _RAND_473;
  reg [31:0] _RAND_474;
  reg [31:0] _RAND_475;
  reg [31:0] _RAND_476;
  reg [31:0] _RAND_477;
  reg [31:0] _RAND_478;
  reg [31:0] _RAND_479;
  reg [31:0] _RAND_480;
  reg [31:0] _RAND_481;
  reg [31:0] _RAND_482;
  reg [63:0] _RAND_483;
  reg [63:0] _RAND_484;
  reg [31:0] _RAND_485;
  reg [31:0] _RAND_486;
  reg [63:0] _RAND_487;
  reg [31:0] _RAND_488;
  reg [31:0] _RAND_489;
  reg [31:0] _RAND_490;
  reg [31:0] _RAND_491;
  reg [31:0] _RAND_492;
  reg [31:0] _RAND_493;
  reg [31:0] _RAND_494;
  reg [31:0] _RAND_495;
  reg [31:0] _RAND_496;
  reg [63:0] _RAND_497;
  reg [63:0] _RAND_498;
  reg [31:0] _RAND_499;
  reg [31:0] _RAND_500;
  reg [63:0] _RAND_501;
  reg [31:0] _RAND_502;
  reg [31:0] _RAND_503;
  reg [31:0] _RAND_504;
  reg [31:0] _RAND_505;
  reg [31:0] _RAND_506;
  reg [31:0] _RAND_507;
  reg [31:0] _RAND_508;
  reg [31:0] _RAND_509;
  reg [31:0] _RAND_510;
  reg [31:0] _RAND_511;
  reg [31:0] _RAND_512;
  reg [31:0] _RAND_513;
  reg [63:0] _RAND_514;
  reg [63:0] _RAND_515;
  reg [31:0] _RAND_516;
  reg [31:0] _RAND_517;
  reg [31:0] _RAND_518;
  reg [31:0] _RAND_519;
  reg [31:0] _RAND_520;
  reg [31:0] _RAND_521;
  reg [31:0] _RAND_522;
  reg [31:0] _RAND_523;
  reg [31:0] _RAND_524;
  reg [31:0] _RAND_525;
  reg [31:0] _RAND_526;
  reg [31:0] _RAND_527;
  reg [31:0] _RAND_528;
  reg [31:0] _RAND_529;
  reg [31:0] _RAND_530;
  reg [31:0] _RAND_531;
  reg [31:0] _RAND_532;
  reg [31:0] _RAND_533;
  reg [31:0] _RAND_534;
  reg [31:0] _RAND_535;
  reg [31:0] _RAND_536;
  reg [31:0] _RAND_537;
  reg [31:0] _RAND_538;
  reg [31:0] _RAND_539;
  reg [31:0] _RAND_540;
  reg [31:0] _RAND_541;
  reg [31:0] _RAND_542;
  reg [31:0] _RAND_543;
  reg [31:0] _RAND_544;
  reg [31:0] _RAND_545;
  reg [31:0] _RAND_546;
  reg [31:0] _RAND_547;
  reg [31:0] _RAND_548;
  reg [31:0] _RAND_549;
  reg [31:0] _RAND_550;
  reg [31:0] _RAND_551;
  reg [31:0] _RAND_552;
  reg [31:0] _RAND_553;
  reg [31:0] _RAND_554;
  reg [31:0] _RAND_555;
  reg [31:0] _RAND_556;
  reg [31:0] _RAND_557;
  reg [31:0] _RAND_558;
  reg [31:0] _RAND_559;
  reg [31:0] _RAND_560;
  reg [31:0] _RAND_561;
  reg [31:0] _RAND_562;
  reg [31:0] _RAND_563;
  reg [31:0] _RAND_564;
  reg [31:0] _RAND_565;
  reg [31:0] _RAND_566;
  reg [31:0] _RAND_567;
  reg [31:0] _RAND_568;
  reg [31:0] _RAND_569;
  reg [31:0] _RAND_570;
  reg [31:0] _RAND_571;
  reg [31:0] _RAND_572;
  reg [31:0] _RAND_573;
  reg [31:0] _RAND_574;
  reg [31:0] _RAND_575;
  reg [31:0] _RAND_576;
  reg [31:0] _RAND_577;
  reg [31:0] _RAND_578;
  reg [31:0] _RAND_579;
  reg [31:0] _RAND_580;
  reg [31:0] _RAND_581;
  reg [31:0] _RAND_582;
  reg [31:0] _RAND_583;
  reg [31:0] _RAND_584;
  reg [31:0] _RAND_585;
  reg [31:0] _RAND_586;
  reg [31:0] _RAND_587;
  reg [31:0] _RAND_588;
  reg [31:0] _RAND_589;
  reg [31:0] _RAND_590;
  reg [31:0] _RAND_591;
  reg [31:0] _RAND_592;
  reg [31:0] _RAND_593;
  reg [31:0] _RAND_594;
  reg [31:0] _RAND_595;
  reg [31:0] _RAND_596;
  reg [31:0] _RAND_597;
  reg [31:0] _RAND_598;
  reg [31:0] _RAND_599;
  reg [31:0] _RAND_600;
  reg [31:0] _RAND_601;
  reg [31:0] _RAND_602;
  reg [31:0] _RAND_603;
  reg [31:0] _RAND_604;
  reg [31:0] _RAND_605;
  reg [31:0] _RAND_606;
  reg [31:0] _RAND_607;
  reg [31:0] _RAND_608;
  reg [31:0] _RAND_609;
  reg [31:0] _RAND_610;
  reg [31:0] _RAND_611;
  reg [31:0] _RAND_612;
  reg [31:0] _RAND_613;
  reg [31:0] _RAND_614;
  reg [31:0] _RAND_615;
  reg [31:0] _RAND_616;
  reg [31:0] _RAND_617;
  reg [31:0] _RAND_618;
  reg [31:0] _RAND_619;
  reg [31:0] _RAND_620;
  reg [31:0] _RAND_621;
  reg [31:0] _RAND_622;
  reg [31:0] _RAND_623;
  reg [31:0] _RAND_624;
  reg [31:0] _RAND_625;
  reg [31:0] _RAND_626;
  reg [31:0] _RAND_627;
  reg [31:0] _RAND_628;
  reg [31:0] _RAND_629;
  reg [31:0] _RAND_630;
  reg [31:0] _RAND_631;
  reg [31:0] _RAND_632;
  reg [31:0] _RAND_633;
  reg [31:0] _RAND_634;
  reg [31:0] _RAND_635;
  reg [31:0] _RAND_636;
  reg [31:0] _RAND_637;
  reg [31:0] _RAND_638;
  reg [31:0] _RAND_639;
  reg [31:0] _RAND_640;
  reg [31:0] _RAND_641;
  reg [31:0] _RAND_642;
  reg [31:0] _RAND_643;
  reg [31:0] _RAND_644;
  reg [31:0] _RAND_645;
  reg [31:0] _RAND_646;
  reg [31:0] _RAND_647;
  reg [31:0] _RAND_648;
  reg [31:0] _RAND_649;
  reg [31:0] _RAND_650;
  reg [31:0] _RAND_651;
  reg [31:0] _RAND_652;
  reg [31:0] _RAND_653;
  reg [31:0] _RAND_654;
  reg [31:0] _RAND_655;
  reg [31:0] _RAND_656;
  reg [31:0] _RAND_657;
  reg [31:0] _RAND_658;
  reg [31:0] _RAND_659;
  reg [31:0] _RAND_660;
  reg [31:0] _RAND_661;
  reg [31:0] _RAND_662;
  reg [31:0] _RAND_663;
  reg [31:0] _RAND_664;
  reg [31:0] _RAND_665;
  reg [31:0] _RAND_666;
  reg [31:0] _RAND_667;
  reg [31:0] _RAND_668;
  reg [31:0] _RAND_669;
  reg [31:0] _RAND_670;
  reg [31:0] _RAND_671;
  reg [31:0] _RAND_672;
  reg [31:0] _RAND_673;
  reg [31:0] _RAND_674;
  reg [31:0] _RAND_675;
  reg [31:0] _RAND_676;
  reg [31:0] _RAND_677;
  reg [31:0] _RAND_678;
  reg [31:0] _RAND_679;
  reg [31:0] _RAND_680;
  reg [31:0] _RAND_681;
  reg [31:0] _RAND_682;
  reg [31:0] _RAND_683;
  reg [31:0] _RAND_684;
  reg [31:0] _RAND_685;
  reg [31:0] _RAND_686;
  reg [31:0] _RAND_687;
  reg [31:0] _RAND_688;
  reg [31:0] _RAND_689;
  reg [31:0] _RAND_690;
  reg [31:0] _RAND_691;
  reg [31:0] _RAND_692;
  reg [31:0] _RAND_693;
  reg [31:0] _RAND_694;
  reg [31:0] _RAND_695;
  reg [63:0] _RAND_696;
  reg [31:0] _RAND_697;
  reg [31:0] _RAND_698;
  reg [31:0] _RAND_699;
  reg [31:0] _RAND_700;
  reg [31:0] _RAND_701;
  reg [31:0] _RAND_702;
  reg [31:0] _RAND_703;
  reg [31:0] _RAND_704;
  reg [31:0] _RAND_705;
  reg [31:0] _RAND_706;
`endif // RANDOMIZE_REG_INIT
  wire  main_pipe_req_arb_io_in_0_ready; // @[DCacheWrapper.scala 250:21]
  wire  main_pipe_req_arb_io_in_0_valid; // @[DCacheWrapper.scala 250:21]
  wire  main_pipe_req_arb_io_in_0_bits_miss; // @[DCacheWrapper.scala 250:21]
  wire [1:0] main_pipe_req_arb_io_in_0_bits_miss_id; // @[DCacheWrapper.scala 250:21]
  wire [1:0] main_pipe_req_arb_io_in_0_bits_miss_param; // @[DCacheWrapper.scala 250:21]
  wire  main_pipe_req_arb_io_in_0_bits_miss_dirty; // @[DCacheWrapper.scala 250:21]
  wire [7:0] main_pipe_req_arb_io_in_0_bits_miss_way_en; // @[DCacheWrapper.scala 250:21]
  wire  main_pipe_req_arb_io_in_0_bits_probe; // @[DCacheWrapper.scala 250:21]
  wire [1:0] main_pipe_req_arb_io_in_0_bits_probe_param; // @[DCacheWrapper.scala 250:21]
  wire  main_pipe_req_arb_io_in_0_bits_probe_need_data; // @[DCacheWrapper.scala 250:21]
  wire [3:0] main_pipe_req_arb_io_in_0_bits_source; // @[DCacheWrapper.scala 250:21]
  wire [4:0] main_pipe_req_arb_io_in_0_bits_cmd; // @[DCacheWrapper.scala 250:21]
  wire [38:0] main_pipe_req_arb_io_in_0_bits_vaddr; // @[DCacheWrapper.scala 250:21]
  wire [35:0] main_pipe_req_arb_io_in_0_bits_addr; // @[DCacheWrapper.scala 250:21]
  wire [511:0] main_pipe_req_arb_io_in_0_bits_store_data; // @[DCacheWrapper.scala 250:21]
  wire [63:0] main_pipe_req_arb_io_in_0_bits_store_mask; // @[DCacheWrapper.scala 250:21]
  wire [2:0] main_pipe_req_arb_io_in_0_bits_word_idx; // @[DCacheWrapper.scala 250:21]
  wire [63:0] main_pipe_req_arb_io_in_0_bits_amo_data; // @[DCacheWrapper.scala 250:21]
  wire [7:0] main_pipe_req_arb_io_in_0_bits_amo_mask; // @[DCacheWrapper.scala 250:21]
  wire  main_pipe_req_arb_io_in_0_bits_error; // @[DCacheWrapper.scala 250:21]
  wire  main_pipe_req_arb_io_in_0_bits_replace; // @[DCacheWrapper.scala 250:21]
  wire [7:0] main_pipe_req_arb_io_in_0_bits_replace_way_en; // @[DCacheWrapper.scala 250:21]
  wire [3:0] main_pipe_req_arb_io_in_0_bits_id; // @[DCacheWrapper.scala 250:21]
  wire  main_pipe_req_arb_io_in_1_ready; // @[DCacheWrapper.scala 250:21]
  wire  main_pipe_req_arb_io_in_1_valid; // @[DCacheWrapper.scala 250:21]
  wire  main_pipe_req_arb_io_in_1_bits_miss; // @[DCacheWrapper.scala 250:21]
  wire [1:0] main_pipe_req_arb_io_in_1_bits_miss_id; // @[DCacheWrapper.scala 250:21]
  wire [1:0] main_pipe_req_arb_io_in_1_bits_miss_param; // @[DCacheWrapper.scala 250:21]
  wire  main_pipe_req_arb_io_in_1_bits_miss_dirty; // @[DCacheWrapper.scala 250:21]
  wire [7:0] main_pipe_req_arb_io_in_1_bits_miss_way_en; // @[DCacheWrapper.scala 250:21]
  wire  main_pipe_req_arb_io_in_1_bits_probe; // @[DCacheWrapper.scala 250:21]
  wire [1:0] main_pipe_req_arb_io_in_1_bits_probe_param; // @[DCacheWrapper.scala 250:21]
  wire  main_pipe_req_arb_io_in_1_bits_probe_need_data; // @[DCacheWrapper.scala 250:21]
  wire [3:0] main_pipe_req_arb_io_in_1_bits_source; // @[DCacheWrapper.scala 250:21]
  wire [4:0] main_pipe_req_arb_io_in_1_bits_cmd; // @[DCacheWrapper.scala 250:21]
  wire [38:0] main_pipe_req_arb_io_in_1_bits_vaddr; // @[DCacheWrapper.scala 250:21]
  wire [35:0] main_pipe_req_arb_io_in_1_bits_addr; // @[DCacheWrapper.scala 250:21]
  wire [511:0] main_pipe_req_arb_io_in_1_bits_store_data; // @[DCacheWrapper.scala 250:21]
  wire [63:0] main_pipe_req_arb_io_in_1_bits_store_mask; // @[DCacheWrapper.scala 250:21]
  wire [2:0] main_pipe_req_arb_io_in_1_bits_word_idx; // @[DCacheWrapper.scala 250:21]
  wire [63:0] main_pipe_req_arb_io_in_1_bits_amo_data; // @[DCacheWrapper.scala 250:21]
  wire [7:0] main_pipe_req_arb_io_in_1_bits_amo_mask; // @[DCacheWrapper.scala 250:21]
  wire  main_pipe_req_arb_io_in_1_bits_error; // @[DCacheWrapper.scala 250:21]
  wire  main_pipe_req_arb_io_in_1_bits_replace; // @[DCacheWrapper.scala 250:21]
  wire [7:0] main_pipe_req_arb_io_in_1_bits_replace_way_en; // @[DCacheWrapper.scala 250:21]
  wire [3:0] main_pipe_req_arb_io_in_1_bits_id; // @[DCacheWrapper.scala 250:21]
  wire  main_pipe_req_arb_io_in_2_ready; // @[DCacheWrapper.scala 250:21]
  wire  main_pipe_req_arb_io_in_2_valid; // @[DCacheWrapper.scala 250:21]
  wire [1:0] main_pipe_req_arb_io_in_2_bits_miss_id; // @[DCacheWrapper.scala 250:21]
  wire  main_pipe_req_arb_io_in_2_bits_probe; // @[DCacheWrapper.scala 250:21]
  wire [1:0] main_pipe_req_arb_io_in_2_bits_probe_param; // @[DCacheWrapper.scala 250:21]
  wire  main_pipe_req_arb_io_in_2_bits_probe_need_data; // @[DCacheWrapper.scala 250:21]
  wire [3:0] main_pipe_req_arb_io_in_2_bits_source; // @[DCacheWrapper.scala 250:21]
  wire [4:0] main_pipe_req_arb_io_in_2_bits_cmd; // @[DCacheWrapper.scala 250:21]
  wire [38:0] main_pipe_req_arb_io_in_2_bits_vaddr; // @[DCacheWrapper.scala 250:21]
  wire [35:0] main_pipe_req_arb_io_in_2_bits_addr; // @[DCacheWrapper.scala 250:21]
  wire [511:0] main_pipe_req_arb_io_in_2_bits_store_data; // @[DCacheWrapper.scala 250:21]
  wire [63:0] main_pipe_req_arb_io_in_2_bits_store_mask; // @[DCacheWrapper.scala 250:21]
  wire  main_pipe_req_arb_io_in_2_bits_replace; // @[DCacheWrapper.scala 250:21]
  wire [7:0] main_pipe_req_arb_io_in_2_bits_replace_way_en; // @[DCacheWrapper.scala 250:21]
  wire [3:0] main_pipe_req_arb_io_in_2_bits_id; // @[DCacheWrapper.scala 250:21]
  wire  main_pipe_req_arb_io_in_3_ready; // @[DCacheWrapper.scala 250:21]
  wire  main_pipe_req_arb_io_in_3_valid; // @[DCacheWrapper.scala 250:21]
  wire  main_pipe_req_arb_io_in_3_bits_miss; // @[DCacheWrapper.scala 250:21]
  wire [1:0] main_pipe_req_arb_io_in_3_bits_miss_id; // @[DCacheWrapper.scala 250:21]
  wire [1:0] main_pipe_req_arb_io_in_3_bits_miss_param; // @[DCacheWrapper.scala 250:21]
  wire  main_pipe_req_arb_io_in_3_bits_miss_dirty; // @[DCacheWrapper.scala 250:21]
  wire [7:0] main_pipe_req_arb_io_in_3_bits_miss_way_en; // @[DCacheWrapper.scala 250:21]
  wire  main_pipe_req_arb_io_in_3_bits_probe; // @[DCacheWrapper.scala 250:21]
  wire [1:0] main_pipe_req_arb_io_in_3_bits_probe_param; // @[DCacheWrapper.scala 250:21]
  wire  main_pipe_req_arb_io_in_3_bits_probe_need_data; // @[DCacheWrapper.scala 250:21]
  wire [3:0] main_pipe_req_arb_io_in_3_bits_source; // @[DCacheWrapper.scala 250:21]
  wire [4:0] main_pipe_req_arb_io_in_3_bits_cmd; // @[DCacheWrapper.scala 250:21]
  wire [38:0] main_pipe_req_arb_io_in_3_bits_vaddr; // @[DCacheWrapper.scala 250:21]
  wire [35:0] main_pipe_req_arb_io_in_3_bits_addr; // @[DCacheWrapper.scala 250:21]
  wire [511:0] main_pipe_req_arb_io_in_3_bits_store_data; // @[DCacheWrapper.scala 250:21]
  wire [63:0] main_pipe_req_arb_io_in_3_bits_store_mask; // @[DCacheWrapper.scala 250:21]
  wire [2:0] main_pipe_req_arb_io_in_3_bits_word_idx; // @[DCacheWrapper.scala 250:21]
  wire [63:0] main_pipe_req_arb_io_in_3_bits_amo_data; // @[DCacheWrapper.scala 250:21]
  wire [7:0] main_pipe_req_arb_io_in_3_bits_amo_mask; // @[DCacheWrapper.scala 250:21]
  wire  main_pipe_req_arb_io_in_3_bits_error; // @[DCacheWrapper.scala 250:21]
  wire  main_pipe_req_arb_io_in_3_bits_replace; // @[DCacheWrapper.scala 250:21]
  wire [7:0] main_pipe_req_arb_io_in_3_bits_replace_way_en; // @[DCacheWrapper.scala 250:21]
  wire [3:0] main_pipe_req_arb_io_in_3_bits_id; // @[DCacheWrapper.scala 250:21]
  wire  main_pipe_req_arb_io_out_ready; // @[DCacheWrapper.scala 250:21]
  wire  main_pipe_req_arb_io_out_valid; // @[DCacheWrapper.scala 250:21]
  wire  main_pipe_req_arb_io_out_bits_miss; // @[DCacheWrapper.scala 250:21]
  wire [1:0] main_pipe_req_arb_io_out_bits_miss_id; // @[DCacheWrapper.scala 250:21]
  wire [1:0] main_pipe_req_arb_io_out_bits_miss_param; // @[DCacheWrapper.scala 250:21]
  wire  main_pipe_req_arb_io_out_bits_miss_dirty; // @[DCacheWrapper.scala 250:21]
  wire [7:0] main_pipe_req_arb_io_out_bits_miss_way_en; // @[DCacheWrapper.scala 250:21]
  wire  main_pipe_req_arb_io_out_bits_probe; // @[DCacheWrapper.scala 250:21]
  wire [1:0] main_pipe_req_arb_io_out_bits_probe_param; // @[DCacheWrapper.scala 250:21]
  wire  main_pipe_req_arb_io_out_bits_probe_need_data; // @[DCacheWrapper.scala 250:21]
  wire [3:0] main_pipe_req_arb_io_out_bits_source; // @[DCacheWrapper.scala 250:21]
  wire [4:0] main_pipe_req_arb_io_out_bits_cmd; // @[DCacheWrapper.scala 250:21]
  wire [38:0] main_pipe_req_arb_io_out_bits_vaddr; // @[DCacheWrapper.scala 250:21]
  wire [35:0] main_pipe_req_arb_io_out_bits_addr; // @[DCacheWrapper.scala 250:21]
  wire [511:0] main_pipe_req_arb_io_out_bits_store_data; // @[DCacheWrapper.scala 250:21]
  wire [63:0] main_pipe_req_arb_io_out_bits_store_mask; // @[DCacheWrapper.scala 250:21]
  wire [2:0] main_pipe_req_arb_io_out_bits_word_idx; // @[DCacheWrapper.scala 250:21]
  wire [63:0] main_pipe_req_arb_io_out_bits_amo_data; // @[DCacheWrapper.scala 250:21]
  wire [7:0] main_pipe_req_arb_io_out_bits_amo_mask; // @[DCacheWrapper.scala 250:21]
  wire  main_pipe_req_arb_io_out_bits_error; // @[DCacheWrapper.scala 250:21]
  wire  main_pipe_req_arb_io_out_bits_replace; // @[DCacheWrapper.scala 250:21]
  wire [7:0] main_pipe_req_arb_io_out_bits_replace_way_en; // @[DCacheWrapper.scala 250:21]
  wire [3:0] main_pipe_req_arb_io_out_bits_id; // @[DCacheWrapper.scala 250:21]
  wire [7:0] amoalu_io_mask; // @[MainPipe.scala 651:24]
  wire [4:0] amoalu_io_cmd; // @[MainPipe.scala 651:24]
  wire [63:0] amoalu_io_lhs; // @[MainPipe.scala 651:24]
  wire [63:0] amoalu_io_rhs; // @[MainPipe.scala 651:24]
  wire [63:0] amoalu_io_out; // @[MainPipe.scala 651:24]
  reg  s1_valid_dup_1; // @[MainPipe.scala 269:29]
  wire [38:0] req_bits_vaddr = main_pipe_req_arb_io_out_bits_vaddr; // @[MainPipe.scala 207:17 DCacheWrapper.scala 255:9]
  wire [5:0] s0_idx = req_bits_vaddr[11:6]; // @[L1Cache.scala 83:33]
  reg [38:0] s1_req_vaddr; // @[Reg.scala 16:16]
  wire [5:0] s1_idx = s1_req_vaddr[11:6]; // @[L1Cache.scala 83:33]
  wire  s1_s0_set_conflict = s1_valid_dup_1 & s0_idx == s1_idx; // @[MainPipe.scala 286:41]
  reg  s2_valid_dup_0; // @[MainPipe.scala 393:29]
  reg [38:0] s2_req_vaddr; // @[Reg.scala 16:16]
  wire [5:0] s2_idx = s2_req_vaddr[11:6]; // @[L1Cache.scala 83:33]
  wire  s2_s0_set_conlict = s2_valid_dup_0 & s0_idx == s2_idx; // @[MainPipe.scala 419:40]
  reg  s3_valid_dup_6; // @[MainPipe.scala 504:29]
  reg [5:0] s3_idx_dup_0; // @[Reg.scala 16:16]
  wire  s3_s0_set_conflict = s3_valid_dup_6 & s3_idx_dup_0 == s0_idx; // @[MainPipe.scala 1410:41]
  wire  set_conflict = s1_s0_set_conflict | s2_s0_set_conlict | s3_s0_set_conflict; // @[MainPipe.scala 180:62]
  reg  s1_valid_dup_2; // @[MainPipe.scala 269:29]
  wire [5:0] store_idx = io_store_req_bits_vaddr[11:6]; // @[L1Cache.scala 83:33]
  wire  s1_s0_set_conflict_store = s1_valid_dup_2 & store_idx == s1_idx; // @[MainPipe.scala 287:47]
  reg  s2_valid_dup_1; // @[MainPipe.scala 393:29]
  wire  s2_s0_set_conlict_store = s2_valid_dup_1 & store_idx == s2_idx; // @[MainPipe.scala 420:46]
  reg  s3_valid_dup_7; // @[MainPipe.scala 504:29]
  reg [5:0] s3_idx_dup_1; // @[Reg.scala 16:16]
  wire  s3_s0_set_conflict_store = s3_valid_dup_7 & s3_idx_dup_1 == store_idx; // @[MainPipe.scala 1411:47]
  wire  store_set_conflict = s1_s0_set_conflict_store | s2_s0_set_conlict_store | s3_s0_set_conflict_store; // @[MainPipe.scala 184:80]
  reg  s1_valid_dup_0; // @[MainPipe.scala 269:29]
  reg  s2_valid_dup_3; // @[MainPipe.scala 393:29]
  reg  s2_req_replace_dup_1; // @[Reg.scala 16:16]
  reg  s2_req_probe; // @[Reg.scala 16:16]
  reg  s2_req_miss; // @[Reg.scala 16:16]
  reg [3:0] s2_req_source; // @[Reg.scala 16:16]
  wire  _s2_can_go_to_s3_T_2 = s2_req_source == 4'h1; // @[MainPipe.scala 72:30]
  wire  _s2_can_go_to_s3_T_3 = s2_req_source == 4'h2; // @[MainPipe.scala 73:28]
  reg  s2_tag_match; // @[Reg.scala 16:16]
  reg [4:0] s2_req_cmd; // @[Reg.scala 16:16]
  wire  _c_cat_T_5 = s2_req_cmd == 5'h4; // @[package.scala 15:47]
  wire  _c_cat_T_6 = s2_req_cmd == 5'h9; // @[package.scala 15:47]
  wire  _c_cat_T_7 = s2_req_cmd == 5'ha; // @[package.scala 15:47]
  wire  _c_cat_T_8 = s2_req_cmd == 5'hb; // @[package.scala 15:47]
  wire  _c_cat_T_11 = _c_cat_T_5 | _c_cat_T_6 | _c_cat_T_7 | _c_cat_T_8; // @[package.scala 72:59]
  wire  _c_cat_T_12 = s2_req_cmd == 5'h8; // @[package.scala 15:47]
  wire  _c_cat_T_13 = s2_req_cmd == 5'hc; // @[package.scala 15:47]
  wire  _c_cat_T_14 = s2_req_cmd == 5'hd; // @[package.scala 15:47]
  wire  _c_cat_T_15 = s2_req_cmd == 5'he; // @[package.scala 15:47]
  wire  _c_cat_T_16 = s2_req_cmd == 5'hf; // @[package.scala 15:47]
  wire  _c_cat_T_20 = _c_cat_T_12 | _c_cat_T_13 | _c_cat_T_14 | _c_cat_T_15 | _c_cat_T_16; // @[package.scala 72:59]
  wire  _c_cat_T_21 = _c_cat_T_11 | _c_cat_T_20; // @[Consts.scala 82:44]
  wire  _c_cat_T_22 = s2_req_cmd == 5'h1 | s2_req_cmd == 5'h11 | s2_req_cmd == 5'h7 | _c_cat_T_21; // @[Consts.scala 85:76]
  wire  _c_cat_T_49 = _c_cat_T_22 | s2_req_cmd == 5'h3 | s2_req_cmd == 5'h6; // @[Consts.scala 86:64]
  reg [1:0] s2_hit_coh_state; // @[Reg.scala 16:16]
  wire [3:0] _T_90 = {_c_cat_T_22,_c_cat_T_49,s2_hit_coh_state}; // @[Cat.scala 31:58]
  wire  _T_148 = 4'h3 == _T_90; // @[Misc.scala 48:20]
  wire  _T_145 = 4'h2 == _T_90; // @[Misc.scala 48:20]
  wire  _T_142 = 4'h1 == _T_90; // @[Misc.scala 48:20]
  wire  _T_139 = 4'h7 == _T_90; // @[Misc.scala 48:20]
  wire  _T_136 = 4'h6 == _T_90; // @[Misc.scala 48:20]
  wire  _T_133 = 4'hf == _T_90; // @[Misc.scala 48:20]
  wire  _T_130 = 4'he == _T_90; // @[Misc.scala 48:20]
  wire  _T_127 = 4'h0 == _T_90; // @[Misc.scala 48:20]
  wire  _T_124 = 4'h5 == _T_90; // @[Misc.scala 48:20]
  wire  _T_121 = 4'h4 == _T_90; // @[Misc.scala 48:20]
  wire  _T_118 = 4'hd == _T_90; // @[Misc.scala 48:20]
  wire  _T_115 = 4'hc == _T_90; // @[Misc.scala 48:20]
  wire  s2_has_permission = _T_148 | (_T_145 | (_T_142 | (_T_139 | (_T_136 | (_T_133 | _T_130))))); // @[Misc.scala 34:9]
  wire  s2_hit = s2_tag_match & s2_has_permission; // @[MainPipe.scala 415:29]
  reg  s3_valid_dup_5; // @[MainPipe.scala 504:29]
  reg  s3_req_probe_dup_7; // @[Reg.scala 16:16]
  wire  s3_probe_can_go = s3_req_probe_dup_7 & io_wb_ready; // @[MainPipe.scala 695:45]
  reg  s3_req_probe_dup_0; // @[Reg.scala 16:16]
  reg  s3_tag_match_dup; // @[Reg.scala 16:16]
  reg [1:0] s3_coh_dup_0_state; // @[Reg.scala 16:16]
  reg [1:0] s3_req_probe_param; // @[Reg.scala 16:16]
  reg [1:0] s3_coh_state; // @[Reg.scala 16:16]
  wire [3:0] _probe_new_coh_T = {s3_req_probe_param,s3_coh_state}; // @[Cat.scala 31:58]
  wire  _probe_new_coh_T_57 = 4'h3 == _probe_new_coh_T; // @[Misc.scala 55:20]
  wire  _probe_new_coh_T_53 = 4'h2 == _probe_new_coh_T; // @[Misc.scala 55:20]
  wire  _probe_new_coh_T_49 = 4'h1 == _probe_new_coh_T; // @[Misc.scala 55:20]
  wire  _probe_new_coh_T_45 = 4'h0 == _probe_new_coh_T; // @[Misc.scala 55:20]
  wire  _probe_new_coh_T_41 = 4'h7 == _probe_new_coh_T; // @[Misc.scala 55:20]
  wire  _probe_new_coh_T_37 = 4'h6 == _probe_new_coh_T; // @[Misc.scala 55:20]
  wire  _probe_new_coh_T_33 = 4'h5 == _probe_new_coh_T; // @[Misc.scala 55:20]
  wire [1:0] _probe_new_coh_T_36 = _probe_new_coh_T_33 ? 2'h1 : 2'h0; // @[Misc.scala 37:63]
  wire [1:0] _probe_new_coh_T_40 = _probe_new_coh_T_37 ? 2'h1 : _probe_new_coh_T_36; // @[Misc.scala 37:63]
  wire [1:0] _probe_new_coh_T_44 = _probe_new_coh_T_41 ? 2'h1 : _probe_new_coh_T_40; // @[Misc.scala 37:63]
  wire [1:0] _probe_new_coh_T_48 = _probe_new_coh_T_45 ? 2'h0 : _probe_new_coh_T_44; // @[Misc.scala 37:63]
  wire [1:0] _probe_new_coh_T_52 = _probe_new_coh_T_49 ? 2'h1 : _probe_new_coh_T_48; // @[Misc.scala 37:63]
  wire [1:0] _probe_new_coh_T_56 = _probe_new_coh_T_53 ? 2'h2 : _probe_new_coh_T_52; // @[Misc.scala 37:63]
  wire [1:0] probe_new_coh_state = _probe_new_coh_T_57 ? 2'h2 : _probe_new_coh_T_56; // @[Misc.scala 37:63]
  wire  _probe_update_meta_T_1 = s3_coh_dup_0_state == probe_new_coh_state; // @[Metadata.scala 45:46]
  wire  _probe_update_meta_T_2 = ~_probe_update_meta_T_1; // @[Metadata.scala 46:40]
  wire  probe_update_meta = s3_req_probe_dup_0 & s3_tag_match_dup & _probe_update_meta_T_2; // @[MainPipe.scala 541:67]
  reg [3:0] s3_req_source_dup_1; // @[Reg.scala 16:16]
  reg  s3_req_probe_dup_8; // @[Reg.scala 16:16]
  reg [3:0] s3_req_source; // @[Reg.scala 16:16]
  reg  s3_req_miss_dup_2; // @[Reg.scala 16:16]
  reg  s3_store_hit_dup_0; // @[Reg.scala 16:16]
  reg  s3_req_miss_dup_0; // @[Reg.scala 16:16]
  reg  s3_req_probe_dup_5; // @[Reg.scala 16:16]
  wire  _s3_can_do_amo_T_2 = s3_req_source == 4'h2; // @[MainPipe.scala 73:28]
  reg  s3_amo_hit; // @[Reg.scala 16:16]
  wire  s3_can_do_amo = s3_req_miss_dup_0 & ~s3_req_probe_dup_5 & _s3_can_do_amo_T_2 | s3_amo_hit; // @[MainPipe.scala 577:84]
  reg [4:0] s3_req_cmd_dup_5; // @[Reg.scala 16:16]
  wire  _s3_can_do_amo_write_T_11 = s3_req_cmd_dup_5 == 5'h4 | s3_req_cmd_dup_5 == 5'h9 | s3_req_cmd_dup_5 == 5'ha |
    s3_req_cmd_dup_5 == 5'hb; // @[CacheConstants.scala 52:90]
  wire  _s3_can_do_amo_write_T_20 = s3_req_cmd_dup_5 == 5'h8 | s3_req_cmd_dup_5 == 5'hc | s3_req_cmd_dup_5 == 5'hd |
    s3_req_cmd_dup_5 == 5'he | s3_req_cmd_dup_5 == 5'hf; // @[CacheConstants.scala 53:114]
  wire  _s3_can_do_amo_write_T_21 = _s3_can_do_amo_write_T_11 | _s3_can_do_amo_write_T_20; // @[CacheConstants.scala 54:44]
  wire  _s3_can_do_amo_write_T_22 = s3_req_cmd_dup_5 == 5'h1 | s3_req_cmd_dup_5 == 5'h11 | s3_req_cmd_dup_5 == 5'h7 |
    _s3_can_do_amo_write_T_21; // @[CacheConstants.scala 57:76]
  reg  s3_req_probe_dup_4; // @[Reg.scala 16:16]
  reg [4:0] s3_req_cmd_dup_4; // @[Reg.scala 16:16]
  wire  s3_sc = ~s3_req_probe_dup_4 & _s3_can_do_amo_T_2 & s3_req_cmd_dup_4 == 5'h7; // @[MainPipe.scala 571:52]
  reg [5:0] lrsc_count_dup_0; // @[MainPipe.scala 532:31]
  wire  lrsc_valid_dup_0 = lrsc_count_dup_0 > 6'h8; // @[MainPipe.scala 533:61]
  reg [35:0] lrsc_addr; // @[MainPipe.scala 569:23]
  reg [35:0] s3_req_addr; // @[Reg.scala 16:16]
  wire [35:0] _s3_lrsc_addr_match_T_1 = {s3_req_addr[35:6], 6'h0}; // @[L1Cache.scala 86:59]
  wire  s3_lrsc_addr_match = lrsc_valid_dup_0 & lrsc_addr == _s3_lrsc_addr_match_T_1; // @[MainPipe.scala 572:46]
  wire  s3_sc_fail = s3_sc & ~s3_lrsc_addr_match; // @[MainPipe.scala 573:26]
  wire  _s3_can_do_amo_write_T_24 = ~s3_sc_fail; // @[MainPipe.scala 578:76]
  wire  s3_can_do_amo_write = s3_can_do_amo & _s3_can_do_amo_write_T_22 & ~s3_sc_fail; // @[MainPipe.scala 578:73]
  wire  update_data = s3_req_miss_dup_2 | s3_store_hit_dup_0 | s3_can_do_amo_write; // @[MainPipe.scala 645:63]
  wire  _s3_store_can_go_T_7 = io_data_write_ready | ~update_data; // @[MainPipe.scala 696:159]
  wire  s3_store_can_go = s3_req_source_dup_1 == 4'h1 & ~s3_req_probe_dup_8 & (io_data_write_ready | ~update_data); // @[MainPipe.scala 696:135]
  reg  s3_amo_hit_dup; // @[Reg.scala 16:16]
  reg  s3_s_amoalu_dup_0; // @[MainPipe.scala 525:32]
  reg [4:0] s3_req_cmd_dup_0; // @[Reg.scala 16:16]
  reg [4:0] s3_req_cmd_dup_1; // @[Reg.scala 16:16]
  wire  amo_wait_amoalu = _s3_can_do_amo_T_2 & s3_req_cmd_dup_0 != 5'h6 & s3_req_cmd_dup_1 != 5'h7; // @[MainPipe.scala 544:69]
  wire  _s3_amo_can_go_T_6 = ~amo_wait_amoalu; // @[MainPipe.scala 697:150]
  wire  s3_amo_can_go = s3_amo_hit_dup & _s3_store_can_go_T_7 & (s3_s_amoalu_dup_0 | ~amo_wait_amoalu); // @[MainPipe.scala 697:124]
  reg  s3_req_miss_dup_4; // @[Reg.scala 16:16]
  wire  _s3_miss_can_go_T_5 = s3_req_miss_dup_4 & _s3_store_can_go_T_7; // @[MainPipe.scala 699:47]
  reg  s3_s_amoalu_dup_1; // @[MainPipe.scala 525:32]
  wire  _s3_miss_can_go_T_7 = s3_s_amoalu_dup_1 | _s3_amo_can_go_T_6; // @[MainPipe.scala 701:25]
  wire  _s3_miss_can_go_T_8 = _s3_miss_can_go_T_5 & _s3_miss_can_go_T_7; // @[MainPipe.scala 700:43]
  wire  _s3_miss_can_go_T_9 = _s3_miss_can_go_T_8 & io_tag_write_ready; // @[MainPipe.scala 701:46]
  wire  s3_miss_can_go = _s3_miss_can_go_T_9 & io_wb_ready; // @[MainPipe.scala 702:24]
  reg  s3_req_replace_dup_2; // @[Reg.scala 16:16]
  reg  s3_req_replace_dup_1; // @[Reg.scala 16:16]
  reg [1:0] s3_coh_dup_4_state; // @[Reg.scala 16:16]
  wire  s3_replace_nothing = s3_req_replace_dup_1 & s3_coh_dup_4_state == 2'h0; // @[MainPipe.scala 704:50]
  wire  s3_replace_can_go = s3_req_replace_dup_2 & (s3_replace_nothing | io_wb_ready); // @[MainPipe.scala 705:49]
  wire  s3_can_go = s3_probe_can_go | s3_store_can_go | s3_amo_can_go | s3_miss_can_go | s3_replace_can_go; // @[MainPipe.scala 706:89]
  wire  s3_ready = ~s3_valid_dup_5 | s3_can_go; // @[MainPipe.scala 1409:32]
  wire  s2_can_go_to_s3 = (s2_req_replace_dup_1 | s2_req_probe | s2_req_miss | (_s2_can_go_to_s3_T_2 |
    _s2_can_go_to_s3_T_3) & s2_hit) & s3_ready; // @[MainPipe.scala 423:125]
  reg  s2_can_go_to_mq; // @[Reg.scala 16:16]
  wire  s2_can_go = s2_can_go_to_s3 | s2_can_go_to_mq; // @[MainPipe.scala 426:35]
  wire  s2_ready = ~s2_valid_dup_3 | s2_can_go; // @[MainPipe.scala 438:32]
  reg  s1_need_data; // @[Reg.scala 16:16]
  wire  s1_can_go = s2_ready & (io_data_readline_ready | ~s1_need_data); // @[MainPipe.scala 264:28]
  wire  s1_ready = ~s1_valid_dup_0 | s1_can_go; // @[MainPipe.scala 285:32]
  wire  _store_req_ready_T_1 = io_tag_read_ready & s1_ready; // @[MainPipe.scala 222:62]
  wire  _store_req_ready_T_4 = ~io_probe_req_valid; // @[MainPipe.scala 223:5]
  wire  _store_req_ready_T_5 = io_tag_read_ready & s1_ready & ~store_set_conflict & _store_req_ready_T_4; // @[MainPipe.scala 222:97]
  wire  _s0_can_go_T_2 = ~set_conflict; // @[MainPipe.scala 227:74]
  wire  s0_can_go = _store_req_ready_T_1 & ~set_conflict; // @[MainPipe.scala 227:71]
  wire  req_valid = main_pipe_req_arb_io_out_valid; // @[MainPipe.scala 207:17 DCacheWrapper.scala 255:9]
  wire  s0_fire = req_valid & s0_can_go; // @[MainPipe.scala 228:27]
  wire [63:0] req_bits_store_mask = main_pipe_req_arb_io_out_bits_store_mask; // @[MainPipe.scala 207:17 DCacheWrapper.scala 255:9]
  wire [7:0] bank_write = {|req_bits_store_mask[63:56],|req_bits_store_mask[55:48],|req_bits_store_mask[47:40],|
    req_bits_store_mask[39:32],|req_bits_store_mask[31:24],|req_bits_store_mask[23:16],|req_bits_store_mask[15:8],|
    req_bits_store_mask[7:0]}; // @[MainPipe.scala 230:104]
  wire [7:0] bank_full_write = {&req_bits_store_mask[63:56],&req_bits_store_mask[55:48],&req_bits_store_mask[47:40],&
    req_bits_store_mask[39:32],&req_bits_store_mask[31:24],&req_bits_store_mask[23:16],&req_bits_store_mask[15:8],&
    req_bits_store_mask[7:0]}; // @[MainPipe.scala 231:110]
  wire [7:0] _banked_store_rmask_T = ~bank_full_write; // @[MainPipe.scala 234:41]
  wire [7:0] banked_store_rmask = bank_write & _banked_store_rmask_T; // @[MainPipe.scala 234:39]
  wire  req_bits_probe = main_pipe_req_arb_io_out_bits_probe; // @[MainPipe.scala 207:17 DCacheWrapper.scala 255:9]
  wire  _store_need_data_T = ~req_bits_probe; // @[MainPipe.scala 238:25]
  wire [3:0] req_bits_source = main_pipe_req_arb_io_out_bits_source; // @[MainPipe.scala 207:17 DCacheWrapper.scala 255:9]
  wire  _store_need_data_T_1 = req_bits_source == 4'h1; // @[MainPipe.scala 72:30]
  wire  store_need_data = ~req_bits_probe & _store_need_data_T_1 & |banked_store_rmask; // @[MainPipe.scala 238:57]
  wire  _amo_need_data_T_1 = req_bits_source == 4'h2; // @[MainPipe.scala 73:28]
  wire  amo_need_data = _store_need_data_T & _amo_need_data_T_1; // @[MainPipe.scala 240:37]
  wire  req_bits_miss = main_pipe_req_arb_io_out_bits_miss; // @[MainPipe.scala 207:17 DCacheWrapper.scala 255:9]
  wire  req_bits_replace = main_pipe_req_arb_io_out_bits_replace; // @[MainPipe.scala 207:17 DCacheWrapper.scala 255:9]
  wire  banked_need_data = store_need_data | req_bits_probe | amo_need_data | req_bits_miss | req_bits_replace; // @[MainPipe.scala 244:96]
  reg  s1_valid; // @[MainPipe.scala 258:25]
  reg  s1_req_miss; // @[Reg.scala 16:16]
  reg [1:0] s1_req_miss_id; // @[Reg.scala 16:16]
  reg [1:0] s1_req_miss_param; // @[Reg.scala 16:16]
  reg  s1_req_miss_dirty; // @[Reg.scala 16:16]
  reg [7:0] s1_req_miss_way_en; // @[Reg.scala 16:16]
  reg  s1_req_probe; // @[Reg.scala 16:16]
  reg [1:0] s1_req_probe_param; // @[Reg.scala 16:16]
  reg  s1_req_probe_need_data; // @[Reg.scala 16:16]
  reg [3:0] s1_req_source; // @[Reg.scala 16:16]
  reg [4:0] s1_req_cmd; // @[Reg.scala 16:16]
  reg [35:0] s1_req_addr; // @[Reg.scala 16:16]
  reg [511:0] s1_req_store_data; // @[Reg.scala 16:16]
  reg [63:0] s1_req_store_mask; // @[Reg.scala 16:16]
  reg [2:0] s1_req_word_idx; // @[Reg.scala 16:16]
  reg [63:0] s1_req_amo_data; // @[Reg.scala 16:16]
  reg [7:0] s1_req_amo_mask; // @[Reg.scala 16:16]
  reg  s1_req_error; // @[Reg.scala 16:16]
  reg  s1_req_replace; // @[Reg.scala 16:16]
  reg [7:0] s1_req_replace_way_en; // @[Reg.scala 16:16]
  reg [3:0] s1_req_id; // @[Reg.scala 16:16]
  wire [1:0] req_bits_miss_id = main_pipe_req_arb_io_out_bits_miss_id; // @[MainPipe.scala 207:17 DCacheWrapper.scala 255:9]
  wire [1:0] req_bits_miss_param = main_pipe_req_arb_io_out_bits_miss_param; // @[MainPipe.scala 207:17 DCacheWrapper.scala 255:9]
  wire  req_bits_miss_dirty = main_pipe_req_arb_io_out_bits_miss_dirty; // @[MainPipe.scala 207:17 DCacheWrapper.scala 255:9]
  wire [7:0] req_bits_miss_way_en = main_pipe_req_arb_io_out_bits_miss_way_en; // @[MainPipe.scala 207:17 DCacheWrapper.scala 255:9]
  wire [1:0] req_bits_probe_param = main_pipe_req_arb_io_out_bits_probe_param; // @[MainPipe.scala 207:17 DCacheWrapper.scala 255:9]
  wire  req_bits_probe_need_data = main_pipe_req_arb_io_out_bits_probe_need_data; // @[MainPipe.scala 207:17 DCacheWrapper.scala 255:9]
  wire [4:0] req_bits_cmd = main_pipe_req_arb_io_out_bits_cmd; // @[MainPipe.scala 207:17 DCacheWrapper.scala 255:9]
  wire [35:0] req_bits_addr = main_pipe_req_arb_io_out_bits_addr; // @[MainPipe.scala 207:17 DCacheWrapper.scala 255:9]
  wire [511:0] req_bits_store_data = main_pipe_req_arb_io_out_bits_store_data; // @[MainPipe.scala 207:17 DCacheWrapper.scala 255:9]
  wire [2:0] req_bits_word_idx = main_pipe_req_arb_io_out_bits_word_idx; // @[MainPipe.scala 207:17 DCacheWrapper.scala 255:9]
  wire [63:0] req_bits_amo_data = main_pipe_req_arb_io_out_bits_amo_data; // @[MainPipe.scala 207:17 DCacheWrapper.scala 255:9]
  wire [7:0] req_bits_amo_mask = main_pipe_req_arb_io_out_bits_amo_mask; // @[MainPipe.scala 207:17 DCacheWrapper.scala 255:9]
  wire  req_bits_error = main_pipe_req_arb_io_out_bits_error; // @[MainPipe.scala 207:17 DCacheWrapper.scala 255:9]
  wire [7:0] req_bits_replace_way_en = main_pipe_req_arb_io_out_bits_replace_way_en; // @[MainPipe.scala 207:17 DCacheWrapper.scala 255:9]
  wire [3:0] req_bits_id = main_pipe_req_arb_io_out_bits_id; // @[MainPipe.scala 207:17 DCacheWrapper.scala 255:9]
  reg [7:0] s1_banked_store_wmask; // @[Reg.scala 16:16]
  reg  s1_need_tag; // @[Reg.scala 16:16]
  wire  s1_fire = s1_valid & s1_can_go; // @[MainPipe.scala 265:26]
  reg  s1_valid_dup_3; // @[MainPipe.scala 269:29]
  reg  s1_valid_dup_4; // @[MainPipe.scala 269:29]
  reg  s1_valid_dup_5; // @[MainPipe.scala 269:29]
  reg [38:0] s1_req_vaddr_dup_for_data_read; // @[Reg.scala 16:16]
  reg [5:0] s1_idx_dup_for_replace_way; // @[Reg.scala 16:16]
  reg  s1_valid_dup_for_status_0; // @[MainPipe.scala 274:40]
  reg  s1_valid_dup_for_status_1; // @[MainPipe.scala 274:40]
  reg  s1_valid_dup_for_status_2; // @[MainPipe.scala 274:40]
  reg  s1_valid_dup_for_status_3; // @[MainPipe.scala 274:40]
  reg  s1_valid_dup_for_status_4; // @[MainPipe.scala 274:40]
  reg  s1_valid_dup_for_status_5; // @[MainPipe.scala 274:40]
  reg  s1_valid_dup_for_status_6; // @[MainPipe.scala 274:40]
  reg  s1_valid_dup_for_status_7; // @[MainPipe.scala 274:40]
  reg  s1_valid_dup_for_status_8; // @[MainPipe.scala 274:40]
  reg  s1_valid_dup_for_status_9; // @[MainPipe.scala 274:40]
  reg  s1_valid_dup_for_status_10; // @[MainPipe.scala 274:40]
  reg  s1_valid_dup_for_status_11; // @[MainPipe.scala 274:40]
  reg  s1_valid_dup_for_status_12; // @[MainPipe.scala 274:40]
  reg  s1_valid_dup_for_status_13; // @[MainPipe.scala 274:40]
  reg  s1_valid_dup_for_status_14; // @[MainPipe.scala 274:40]
  reg  s1_valid_dup_for_status_15; // @[MainPipe.scala 274:40]
  reg  s1_valid_dup_for_status_16; // @[MainPipe.scala 274:40]
  reg  s1_valid_dup_for_status_17; // @[MainPipe.scala 274:40]
  reg  s1_valid_dup_for_status_18; // @[MainPipe.scala 274:40]
  reg  s1_valid_dup_for_status_19; // @[MainPipe.scala 274:40]
  reg  s1_valid_dup_for_status_20; // @[MainPipe.scala 274:40]
  reg  s1_valid_dup_for_status_21; // @[MainPipe.scala 274:40]
  reg  s1_valid_dup_for_status_22; // @[MainPipe.scala 274:40]
  reg  s1_valid_dup_for_status_23; // @[MainPipe.scala 274:40]
  wire  _GEN_30 = s1_fire ? 1'h0 : s1_valid; // @[MainPipe.scala 280:24 281:14 258:25]
  wire  _GEN_31 = s1_fire ? 1'h0 : s1_valid_dup_0; // @[MainPipe.scala 280:24 282:28 269:29]
  wire  _GEN_32 = s1_fire ? 1'h0 : s1_valid_dup_1; // @[MainPipe.scala 280:24 282:28 269:29]
  wire  _GEN_33 = s1_fire ? 1'h0 : s1_valid_dup_2; // @[MainPipe.scala 280:24 282:28 269:29]
  wire  _GEN_34 = s1_fire ? 1'h0 : s1_valid_dup_3; // @[MainPipe.scala 280:24 282:28 269:29]
  wire  _GEN_35 = s1_fire ? 1'h0 : s1_valid_dup_4; // @[MainPipe.scala 280:24 282:28 269:29]
  wire  _GEN_36 = s1_fire ? 1'h0 : s1_valid_dup_5; // @[MainPipe.scala 280:24 282:28 269:29]
  wire  _GEN_37 = s1_fire ? 1'h0 : s1_valid_dup_for_status_0; // @[MainPipe.scala 280:24 283:39 274:40]
  wire  _GEN_38 = s1_fire ? 1'h0 : s1_valid_dup_for_status_1; // @[MainPipe.scala 280:24 283:39 274:40]
  wire  _GEN_39 = s1_fire ? 1'h0 : s1_valid_dup_for_status_2; // @[MainPipe.scala 280:24 283:39 274:40]
  wire  _GEN_40 = s1_fire ? 1'h0 : s1_valid_dup_for_status_3; // @[MainPipe.scala 280:24 283:39 274:40]
  wire  _GEN_41 = s1_fire ? 1'h0 : s1_valid_dup_for_status_4; // @[MainPipe.scala 280:24 283:39 274:40]
  wire  _GEN_42 = s1_fire ? 1'h0 : s1_valid_dup_for_status_5; // @[MainPipe.scala 280:24 283:39 274:40]
  wire  _GEN_43 = s1_fire ? 1'h0 : s1_valid_dup_for_status_6; // @[MainPipe.scala 280:24 283:39 274:40]
  wire  _GEN_44 = s1_fire ? 1'h0 : s1_valid_dup_for_status_7; // @[MainPipe.scala 280:24 283:39 274:40]
  wire  _GEN_45 = s1_fire ? 1'h0 : s1_valid_dup_for_status_8; // @[MainPipe.scala 280:24 283:39 274:40]
  wire  _GEN_46 = s1_fire ? 1'h0 : s1_valid_dup_for_status_9; // @[MainPipe.scala 280:24 283:39 274:40]
  wire  _GEN_47 = s1_fire ? 1'h0 : s1_valid_dup_for_status_10; // @[MainPipe.scala 280:24 283:39 274:40]
  wire  _GEN_48 = s1_fire ? 1'h0 : s1_valid_dup_for_status_11; // @[MainPipe.scala 280:24 283:39 274:40]
  wire  _GEN_49 = s1_fire ? 1'h0 : s1_valid_dup_for_status_12; // @[MainPipe.scala 280:24 283:39 274:40]
  wire  _GEN_50 = s1_fire ? 1'h0 : s1_valid_dup_for_status_13; // @[MainPipe.scala 280:24 283:39 274:40]
  wire  _GEN_51 = s1_fire ? 1'h0 : s1_valid_dup_for_status_14; // @[MainPipe.scala 280:24 283:39 274:40]
  wire  _GEN_52 = s1_fire ? 1'h0 : s1_valid_dup_for_status_15; // @[MainPipe.scala 280:24 283:39 274:40]
  wire  _GEN_53 = s1_fire ? 1'h0 : s1_valid_dup_for_status_16; // @[MainPipe.scala 280:24 283:39 274:40]
  wire  _GEN_54 = s1_fire ? 1'h0 : s1_valid_dup_for_status_17; // @[MainPipe.scala 280:24 283:39 274:40]
  wire  _GEN_55 = s1_fire ? 1'h0 : s1_valid_dup_for_status_18; // @[MainPipe.scala 280:24 283:39 274:40]
  wire  _GEN_56 = s1_fire ? 1'h0 : s1_valid_dup_for_status_19; // @[MainPipe.scala 280:24 283:39 274:40]
  wire  _GEN_57 = s1_fire ? 1'h0 : s1_valid_dup_for_status_20; // @[MainPipe.scala 280:24 283:39 274:40]
  wire  _GEN_58 = s1_fire ? 1'h0 : s1_valid_dup_for_status_21; // @[MainPipe.scala 280:24 283:39 274:40]
  wire  _GEN_59 = s1_fire ? 1'h0 : s1_valid_dup_for_status_22; // @[MainPipe.scala 280:24 283:39 274:40]
  wire  _GEN_60 = s1_fire ? 1'h0 : s1_valid_dup_for_status_23; // @[MainPipe.scala 280:24 283:39 274:40]
  reg  REG_2; // @[MainPipe.scala 292:27]
  reg [1:0] REG_3_0; // @[MainPipe.scala 292:82]
  reg [1:0] REG_3_1; // @[MainPipe.scala 292:82]
  reg [1:0] REG_3_2; // @[MainPipe.scala 292:82]
  reg [1:0] REG_3_3; // @[MainPipe.scala 292:82]
  reg [1:0] REG_3_4; // @[MainPipe.scala 292:82]
  reg [1:0] REG_3_5; // @[MainPipe.scala 292:82]
  reg [1:0] REG_3_6; // @[MainPipe.scala 292:82]
  reg [1:0] REG_3_7; // @[MainPipe.scala 292:82]
  wire [1:0] meta_resp_0 = REG_2 ? io_meta_resp_0_coh_state : REG_3_0; // @[MainPipe.scala 292:19]
  wire [1:0] meta_resp_1 = REG_2 ? io_meta_resp_1_coh_state : REG_3_1; // @[MainPipe.scala 292:19]
  wire [1:0] meta_resp_2 = REG_2 ? io_meta_resp_2_coh_state : REG_3_2; // @[MainPipe.scala 292:19]
  wire [1:0] meta_resp_3 = REG_2 ? io_meta_resp_3_coh_state : REG_3_3; // @[MainPipe.scala 292:19]
  wire [1:0] meta_resp_4 = REG_2 ? io_meta_resp_4_coh_state : REG_3_4; // @[MainPipe.scala 292:19]
  wire [1:0] meta_resp_5 = REG_2 ? io_meta_resp_5_coh_state : REG_3_5; // @[MainPipe.scala 292:19]
  wire [1:0] meta_resp_6 = REG_2 ? io_meta_resp_6_coh_state : REG_3_6; // @[MainPipe.scala 292:19]
  wire [1:0] meta_resp_7 = REG_2 ? io_meta_resp_7_coh_state : REG_3_7; // @[MainPipe.scala 292:19]
  reg  REG_4; // @[MainPipe.scala 293:26]
  reg [23:0] REG_5_0; // @[MainPipe.scala 293:94]
  reg [23:0] REG_5_1; // @[MainPipe.scala 293:94]
  reg [23:0] REG_5_2; // @[MainPipe.scala 293:94]
  reg [23:0] REG_5_3; // @[MainPipe.scala 293:94]
  reg [23:0] REG_5_4; // @[MainPipe.scala 293:94]
  reg [23:0] REG_5_5; // @[MainPipe.scala 293:94]
  reg [23:0] REG_5_6; // @[MainPipe.scala 293:94]
  reg [23:0] REG_5_7; // @[MainPipe.scala 293:94]
  wire [23:0] tag_resp_0 = REG_4 ? io_tag_resp_0[23:0] : REG_5_0; // @[MainPipe.scala 293:18]
  wire [23:0] tag_resp_1 = REG_4 ? io_tag_resp_1[23:0] : REG_5_1; // @[MainPipe.scala 293:18]
  wire [23:0] tag_resp_2 = REG_4 ? io_tag_resp_2[23:0] : REG_5_2; // @[MainPipe.scala 293:18]
  wire [23:0] tag_resp_3 = REG_4 ? io_tag_resp_3[23:0] : REG_5_3; // @[MainPipe.scala 293:18]
  wire [23:0] tag_resp_4 = REG_4 ? io_tag_resp_4[23:0] : REG_5_4; // @[MainPipe.scala 293:18]
  wire [23:0] tag_resp_5 = REG_4 ? io_tag_resp_5[23:0] : REG_5_5; // @[MainPipe.scala 293:18]
  wire [23:0] tag_resp_6 = REG_4 ? io_tag_resp_6[23:0] : REG_5_6; // @[MainPipe.scala 293:18]
  wire [23:0] tag_resp_7 = REG_4 ? io_tag_resp_7[23:0] : REG_5_7; // @[MainPipe.scala 293:18]
  reg  REG_8; // @[MainPipe.scala 296:30]
  reg [29:0] REG_9_0; // @[MainPipe.scala 296:61]
  reg [29:0] REG_9_1; // @[MainPipe.scala 296:61]
  reg [29:0] REG_9_2; // @[MainPipe.scala 296:61]
  reg [29:0] REG_9_3; // @[MainPipe.scala 296:61]
  reg [29:0] REG_9_4; // @[MainPipe.scala 296:61]
  reg [29:0] REG_9_5; // @[MainPipe.scala 296:61]
  reg [29:0] REG_9_6; // @[MainPipe.scala 296:61]
  reg [29:0] REG_9_7; // @[MainPipe.scala 296:61]
  wire [29:0] enc_tag_resp_0 = REG_8 ? io_tag_resp_0 : REG_9_0; // @[MainPipe.scala 296:22]
  wire [29:0] enc_tag_resp_1 = REG_8 ? io_tag_resp_1 : REG_9_1; // @[MainPipe.scala 296:22]
  wire [29:0] enc_tag_resp_2 = REG_8 ? io_tag_resp_2 : REG_9_2; // @[MainPipe.scala 296:22]
  wire [29:0] enc_tag_resp_3 = REG_8 ? io_tag_resp_3 : REG_9_3; // @[MainPipe.scala 296:22]
  wire [29:0] enc_tag_resp_4 = REG_8 ? io_tag_resp_4 : REG_9_4; // @[MainPipe.scala 296:22]
  wire [29:0] enc_tag_resp_5 = REG_8 ? io_tag_resp_5 : REG_9_5; // @[MainPipe.scala 296:22]
  wire [29:0] enc_tag_resp_6 = REG_8 ? io_tag_resp_6 : REG_9_6; // @[MainPipe.scala 296:22]
  wire [29:0] enc_tag_resp_7 = REG_8 ? io_tag_resp_7 : REG_9_7; // @[MainPipe.scala 296:22]
  wire [7:0] s1_tag_eq_way = {tag_resp_7 == s1_req_addr[35:12],tag_resp_6 == s1_req_addr[35:12],tag_resp_5 ==
    s1_req_addr[35:12],tag_resp_4 == s1_req_addr[35:12],tag_resp_3 == s1_req_addr[35:12],tag_resp_2 == s1_req_addr[35:12
    ],tag_resp_1 == s1_req_addr[35:12],tag_resp_0 == s1_req_addr[35:12]}; // @[MainPipe.scala 299:80]
  wire  _s1_tag_match_way_T_1 = meta_resp_0 > 2'h0; // @[Metadata.scala 49:45]
  wire  _s1_tag_match_way_T_2 = s1_tag_eq_way[0] & _s1_tag_match_way_T_1; // @[MainPipe.scala 300:62]
  wire  _s1_tag_match_way_T_4 = meta_resp_1 > 2'h0; // @[Metadata.scala 49:45]
  wire  _s1_tag_match_way_T_5 = s1_tag_eq_way[1] & _s1_tag_match_way_T_4; // @[MainPipe.scala 300:62]
  wire  _s1_tag_match_way_T_7 = meta_resp_2 > 2'h0; // @[Metadata.scala 49:45]
  wire  _s1_tag_match_way_T_8 = s1_tag_eq_way[2] & _s1_tag_match_way_T_7; // @[MainPipe.scala 300:62]
  wire  _s1_tag_match_way_T_10 = meta_resp_3 > 2'h0; // @[Metadata.scala 49:45]
  wire  _s1_tag_match_way_T_11 = s1_tag_eq_way[3] & _s1_tag_match_way_T_10; // @[MainPipe.scala 300:62]
  wire  _s1_tag_match_way_T_13 = meta_resp_4 > 2'h0; // @[Metadata.scala 49:45]
  wire  _s1_tag_match_way_T_14 = s1_tag_eq_way[4] & _s1_tag_match_way_T_13; // @[MainPipe.scala 300:62]
  wire  _s1_tag_match_way_T_16 = meta_resp_5 > 2'h0; // @[Metadata.scala 49:45]
  wire  _s1_tag_match_way_T_17 = s1_tag_eq_way[5] & _s1_tag_match_way_T_16; // @[MainPipe.scala 300:62]
  wire  _s1_tag_match_way_T_19 = meta_resp_6 > 2'h0; // @[Metadata.scala 49:45]
  wire  _s1_tag_match_way_T_20 = s1_tag_eq_way[6] & _s1_tag_match_way_T_19; // @[MainPipe.scala 300:62]
  wire  _s1_tag_match_way_T_22 = meta_resp_7 > 2'h0; // @[Metadata.scala 49:45]
  wire  _s1_tag_match_way_T_23 = s1_tag_eq_way[7] & _s1_tag_match_way_T_22; // @[MainPipe.scala 300:62]
  wire [7:0] s1_tag_match_way = {_s1_tag_match_way_T_23,_s1_tag_match_way_T_20,_s1_tag_match_way_T_17,
    _s1_tag_match_way_T_14,_s1_tag_match_way_T_11,_s1_tag_match_way_T_8,_s1_tag_match_way_T_5,_s1_tag_match_way_T_2}; // @[MainPipe.scala 300:99]
  wire  s1_tag_match = |s1_tag_match_way; // @[MainPipe.scala 301:39]
  wire [23:0] _s1_hit_tag_T_8 = s1_tag_match_way[0] ? tag_resp_0 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_hit_tag_T_9 = s1_tag_match_way[1] ? tag_resp_1 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_hit_tag_T_10 = s1_tag_match_way[2] ? tag_resp_2 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_hit_tag_T_11 = s1_tag_match_way[3] ? tag_resp_3 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_hit_tag_T_12 = s1_tag_match_way[4] ? tag_resp_4 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_hit_tag_T_13 = s1_tag_match_way[5] ? tag_resp_5 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_hit_tag_T_14 = s1_tag_match_way[6] ? tag_resp_6 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_hit_tag_T_15 = s1_tag_match_way[7] ? tag_resp_7 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_hit_tag_T_16 = _s1_hit_tag_T_8 | _s1_hit_tag_T_9; // @[Mux.scala 27:73]
  wire [23:0] _s1_hit_tag_T_17 = _s1_hit_tag_T_16 | _s1_hit_tag_T_10; // @[Mux.scala 27:73]
  wire [23:0] _s1_hit_tag_T_18 = _s1_hit_tag_T_17 | _s1_hit_tag_T_11; // @[Mux.scala 27:73]
  wire [23:0] _s1_hit_tag_T_19 = _s1_hit_tag_T_18 | _s1_hit_tag_T_12; // @[Mux.scala 27:73]
  wire [23:0] _s1_hit_tag_T_20 = _s1_hit_tag_T_19 | _s1_hit_tag_T_13; // @[Mux.scala 27:73]
  wire [23:0] _s1_hit_tag_T_21 = _s1_hit_tag_T_20 | _s1_hit_tag_T_14; // @[Mux.scala 27:73]
  wire [23:0] _s1_hit_tag_T_22 = _s1_hit_tag_T_21 | _s1_hit_tag_T_15; // @[Mux.scala 27:73]
  wire [23:0] s1_hit_tag = s1_tag_match ? _s1_hit_tag_T_22 : s1_req_addr[35:12]; // @[MainPipe.scala 303:23]
  wire [1:0] _s1_hit_coh_T_8 = s1_tag_match_way[0] ? meta_resp_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_hit_coh_T_9 = s1_tag_match_way[1] ? meta_resp_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_hit_coh_T_10 = s1_tag_match_way[2] ? meta_resp_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_hit_coh_T_11 = s1_tag_match_way[3] ? meta_resp_3 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_hit_coh_T_12 = s1_tag_match_way[4] ? meta_resp_4 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_hit_coh_T_13 = s1_tag_match_way[5] ? meta_resp_5 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_hit_coh_T_14 = s1_tag_match_way[6] ? meta_resp_6 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_hit_coh_T_15 = s1_tag_match_way[7] ? meta_resp_7 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_hit_coh_T_16 = _s1_hit_coh_T_8 | _s1_hit_coh_T_9; // @[Mux.scala 27:73]
  wire [1:0] _s1_hit_coh_T_17 = _s1_hit_coh_T_16 | _s1_hit_coh_T_10; // @[Mux.scala 27:73]
  wire [1:0] _s1_hit_coh_T_18 = _s1_hit_coh_T_17 | _s1_hit_coh_T_11; // @[Mux.scala 27:73]
  wire [1:0] _s1_hit_coh_T_19 = _s1_hit_coh_T_18 | _s1_hit_coh_T_12; // @[Mux.scala 27:73]
  wire [1:0] _s1_hit_coh_T_20 = _s1_hit_coh_T_19 | _s1_hit_coh_T_13; // @[Mux.scala 27:73]
  wire [1:0] _s1_hit_coh_T_21 = _s1_hit_coh_T_20 | _s1_hit_coh_T_14; // @[Mux.scala 27:73]
  wire [1:0] _s1_hit_coh_T_22 = _s1_hit_coh_T_21 | _s1_hit_coh_T_15; // @[Mux.scala 27:73]
  wire [1:0] s1_hit_coh_state = s1_tag_match ? _s1_hit_coh_T_22 : 2'h0; // @[MainPipe.scala 304:38]
  wire [29:0] _s1_encTag_T_8 = s1_tag_match_way[0] ? enc_tag_resp_0 : 30'h0; // @[Mux.scala 27:73]
  wire [29:0] _s1_encTag_T_9 = s1_tag_match_way[1] ? enc_tag_resp_1 : 30'h0; // @[Mux.scala 27:73]
  wire [29:0] _s1_encTag_T_10 = s1_tag_match_way[2] ? enc_tag_resp_2 : 30'h0; // @[Mux.scala 27:73]
  wire [29:0] _s1_encTag_T_11 = s1_tag_match_way[3] ? enc_tag_resp_3 : 30'h0; // @[Mux.scala 27:73]
  wire [29:0] _s1_encTag_T_12 = s1_tag_match_way[4] ? enc_tag_resp_4 : 30'h0; // @[Mux.scala 27:73]
  wire [29:0] _s1_encTag_T_13 = s1_tag_match_way[5] ? enc_tag_resp_5 : 30'h0; // @[Mux.scala 27:73]
  wire [29:0] _s1_encTag_T_14 = s1_tag_match_way[6] ? enc_tag_resp_6 : 30'h0; // @[Mux.scala 27:73]
  wire [29:0] _s1_encTag_T_15 = s1_tag_match_way[7] ? enc_tag_resp_7 : 30'h0; // @[Mux.scala 27:73]
  wire [29:0] _s1_encTag_T_16 = _s1_encTag_T_8 | _s1_encTag_T_9; // @[Mux.scala 27:73]
  wire [29:0] _s1_encTag_T_17 = _s1_encTag_T_16 | _s1_encTag_T_10; // @[Mux.scala 27:73]
  wire [29:0] _s1_encTag_T_18 = _s1_encTag_T_17 | _s1_encTag_T_11; // @[Mux.scala 27:73]
  wire [29:0] _s1_encTag_T_19 = _s1_encTag_T_18 | _s1_encTag_T_12; // @[Mux.scala 27:73]
  wire [29:0] _s1_encTag_T_20 = _s1_encTag_T_19 | _s1_encTag_T_13; // @[Mux.scala 27:73]
  wire [29:0] _s1_encTag_T_21 = _s1_encTag_T_20 | _s1_encTag_T_14; // @[Mux.scala 27:73]
  wire [29:0] s1_encTag = _s1_encTag_T_21 | _s1_encTag_T_15; // @[Mux.scala 27:73]
  wire  _s1_flag_error_T_22 = s1_tag_match_way[0] & io_extra_meta_resp_0_error | s1_tag_match_way[1] &
    io_extra_meta_resp_1_error | s1_tag_match_way[2] & io_extra_meta_resp_2_error | s1_tag_match_way[3] &
    io_extra_meta_resp_3_error | s1_tag_match_way[4] & io_extra_meta_resp_4_error | s1_tag_match_way[5] &
    io_extra_meta_resp_5_error | s1_tag_match_way[6] & io_extra_meta_resp_6_error | s1_tag_match_way[7] &
    io_extra_meta_resp_7_error; // @[Mux.scala 27:73]
  wire  s1_flag_error = s1_tag_match & _s1_flag_error_T_22; // @[MainPipe.scala 306:26]
  reg  s1_repl_way_en_REG; // @[MainPipe.scala 319:12]
  wire [7:0] _s1_repl_way_en_T = 8'h1 << io_replace_way_way; // @[OneHot.scala 57:35]
  reg [7:0] s1_repl_way_en_REG_1; // @[MainPipe.scala 321:12]
  wire [7:0] s1_repl_way_en = s1_repl_way_en_REG ? _s1_repl_way_en_T : s1_repl_way_en_REG_1; // @[MainPipe.scala 318:24]
  wire [23:0] _s1_repl_tag_T_8 = s1_repl_way_en[0] ? tag_resp_0 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_repl_tag_T_9 = s1_repl_way_en[1] ? tag_resp_1 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_repl_tag_T_10 = s1_repl_way_en[2] ? tag_resp_2 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_repl_tag_T_11 = s1_repl_way_en[3] ? tag_resp_3 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_repl_tag_T_12 = s1_repl_way_en[4] ? tag_resp_4 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_repl_tag_T_13 = s1_repl_way_en[5] ? tag_resp_5 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_repl_tag_T_14 = s1_repl_way_en[6] ? tag_resp_6 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_repl_tag_T_15 = s1_repl_way_en[7] ? tag_resp_7 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_repl_tag_T_16 = _s1_repl_tag_T_8 | _s1_repl_tag_T_9; // @[Mux.scala 27:73]
  wire [23:0] _s1_repl_tag_T_17 = _s1_repl_tag_T_16 | _s1_repl_tag_T_10; // @[Mux.scala 27:73]
  wire [23:0] _s1_repl_tag_T_18 = _s1_repl_tag_T_17 | _s1_repl_tag_T_11; // @[Mux.scala 27:73]
  wire [23:0] _s1_repl_tag_T_19 = _s1_repl_tag_T_18 | _s1_repl_tag_T_12; // @[Mux.scala 27:73]
  wire [23:0] _s1_repl_tag_T_20 = _s1_repl_tag_T_19 | _s1_repl_tag_T_13; // @[Mux.scala 27:73]
  wire [23:0] _s1_repl_tag_T_21 = _s1_repl_tag_T_20 | _s1_repl_tag_T_14; // @[Mux.scala 27:73]
  wire [23:0] s1_repl_tag = _s1_repl_tag_T_21 | _s1_repl_tag_T_15; // @[Mux.scala 27:73]
  wire [1:0] _s1_repl_coh_T_8 = s1_repl_way_en[0] ? meta_resp_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_repl_coh_T_9 = s1_repl_way_en[1] ? meta_resp_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_repl_coh_T_10 = s1_repl_way_en[2] ? meta_resp_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_repl_coh_T_11 = s1_repl_way_en[3] ? meta_resp_3 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_repl_coh_T_12 = s1_repl_way_en[4] ? meta_resp_4 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_repl_coh_T_13 = s1_repl_way_en[5] ? meta_resp_5 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_repl_coh_T_14 = s1_repl_way_en[6] ? meta_resp_6 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_repl_coh_T_15 = s1_repl_way_en[7] ? meta_resp_7 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_repl_coh_T_16 = _s1_repl_coh_T_8 | _s1_repl_coh_T_9; // @[Mux.scala 27:73]
  wire [1:0] _s1_repl_coh_T_17 = _s1_repl_coh_T_16 | _s1_repl_coh_T_10; // @[Mux.scala 27:73]
  wire [1:0] _s1_repl_coh_T_18 = _s1_repl_coh_T_17 | _s1_repl_coh_T_11; // @[Mux.scala 27:73]
  wire [1:0] _s1_repl_coh_T_19 = _s1_repl_coh_T_18 | _s1_repl_coh_T_12; // @[Mux.scala 27:73]
  wire [1:0] _s1_repl_coh_T_20 = _s1_repl_coh_T_19 | _s1_repl_coh_T_13; // @[Mux.scala 27:73]
  wire [1:0] _s1_repl_coh_T_21 = _s1_repl_coh_T_20 | _s1_repl_coh_T_14; // @[Mux.scala 27:73]
  wire [1:0] s1_repl_coh_state = _s1_repl_coh_T_21 | _s1_repl_coh_T_15; // @[Mux.scala 27:73]
  wire [23:0] _s1_miss_tag_T_8 = s1_req_miss_way_en[0] ? tag_resp_0 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_miss_tag_T_9 = s1_req_miss_way_en[1] ? tag_resp_1 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_miss_tag_T_10 = s1_req_miss_way_en[2] ? tag_resp_2 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_miss_tag_T_11 = s1_req_miss_way_en[3] ? tag_resp_3 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_miss_tag_T_12 = s1_req_miss_way_en[4] ? tag_resp_4 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_miss_tag_T_13 = s1_req_miss_way_en[5] ? tag_resp_5 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_miss_tag_T_14 = s1_req_miss_way_en[6] ? tag_resp_6 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_miss_tag_T_15 = s1_req_miss_way_en[7] ? tag_resp_7 : 24'h0; // @[Mux.scala 27:73]
  wire [23:0] _s1_miss_tag_T_16 = _s1_miss_tag_T_8 | _s1_miss_tag_T_9; // @[Mux.scala 27:73]
  wire [23:0] _s1_miss_tag_T_17 = _s1_miss_tag_T_16 | _s1_miss_tag_T_10; // @[Mux.scala 27:73]
  wire [23:0] _s1_miss_tag_T_18 = _s1_miss_tag_T_17 | _s1_miss_tag_T_11; // @[Mux.scala 27:73]
  wire [23:0] _s1_miss_tag_T_19 = _s1_miss_tag_T_18 | _s1_miss_tag_T_12; // @[Mux.scala 27:73]
  wire [23:0] _s1_miss_tag_T_20 = _s1_miss_tag_T_19 | _s1_miss_tag_T_13; // @[Mux.scala 27:73]
  wire [23:0] _s1_miss_tag_T_21 = _s1_miss_tag_T_20 | _s1_miss_tag_T_14; // @[Mux.scala 27:73]
  wire [23:0] s1_miss_tag = _s1_miss_tag_T_21 | _s1_miss_tag_T_15; // @[Mux.scala 27:73]
  wire [1:0] _s1_miss_coh_T_8 = s1_req_miss_way_en[0] ? meta_resp_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_miss_coh_T_9 = s1_req_miss_way_en[1] ? meta_resp_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_miss_coh_T_10 = s1_req_miss_way_en[2] ? meta_resp_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_miss_coh_T_11 = s1_req_miss_way_en[3] ? meta_resp_3 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_miss_coh_T_12 = s1_req_miss_way_en[4] ? meta_resp_4 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_miss_coh_T_13 = s1_req_miss_way_en[5] ? meta_resp_5 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_miss_coh_T_14 = s1_req_miss_way_en[6] ? meta_resp_6 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_miss_coh_T_15 = s1_req_miss_way_en[7] ? meta_resp_7 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_miss_coh_T_16 = _s1_miss_coh_T_8 | _s1_miss_coh_T_9; // @[Mux.scala 27:73]
  wire [1:0] _s1_miss_coh_T_17 = _s1_miss_coh_T_16 | _s1_miss_coh_T_10; // @[Mux.scala 27:73]
  wire [1:0] _s1_miss_coh_T_18 = _s1_miss_coh_T_17 | _s1_miss_coh_T_11; // @[Mux.scala 27:73]
  wire [1:0] _s1_miss_coh_T_19 = _s1_miss_coh_T_18 | _s1_miss_coh_T_12; // @[Mux.scala 27:73]
  wire [1:0] _s1_miss_coh_T_20 = _s1_miss_coh_T_19 | _s1_miss_coh_T_13; // @[Mux.scala 27:73]
  wire [1:0] _s1_miss_coh_T_21 = _s1_miss_coh_T_20 | _s1_miss_coh_T_14; // @[Mux.scala 27:73]
  wire [1:0] s1_miss_coh_state = _s1_miss_coh_T_21 | _s1_miss_coh_T_15; // @[Mux.scala 27:73]
  wire  _s1_need_replacement_T = s1_req_source == 4'h1; // @[MainPipe.scala 72:30]
  wire  _s1_need_replacement_T_1 = ~s1_req_probe; // @[MainPipe.scala 331:63]
  wire  s1_need_replacement = (s1_req_miss | _s1_need_replacement_T & ~s1_req_probe) & ~s1_tag_match; // @[MainPipe.scala 331:78]
  wire [7:0] _s1_way_en_T = s1_need_replacement ? s1_repl_way_en : s1_tag_match_way; // @[MainPipe.scala 338:10]
  wire [7:0] _s1_way_en_T_1 = s1_req_miss ? s1_req_miss_way_en : _s1_way_en_T; // @[MainPipe.scala 335:8]
  wire [7:0] s1_way_en = s1_req_replace ? s1_req_replace_way_en : _s1_way_en_T_1; // @[MainPipe.scala 332:22]
  wire [23:0] _s1_tag_T_1 = s1_need_replacement ? s1_repl_tag : s1_hit_tag; // @[MainPipe.scala 352:10]
  wire [23:0] _s1_tag_T_2 = s1_req_miss ? s1_miss_tag : _s1_tag_T_1; // @[MainPipe.scala 349:8]
  wire [23:0] s1_tag = s1_req_replace ? s1_req_addr[35:12] : _s1_tag_T_2; // @[MainPipe.scala 346:19]
  wire [1:0] _s1_coh_T_8 = s1_req_replace_way_en[0] ? meta_resp_0 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_coh_T_9 = s1_req_replace_way_en[1] ? meta_resp_1 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_coh_T_10 = s1_req_replace_way_en[2] ? meta_resp_2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_coh_T_11 = s1_req_replace_way_en[3] ? meta_resp_3 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_coh_T_12 = s1_req_replace_way_en[4] ? meta_resp_4 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_coh_T_13 = s1_req_replace_way_en[5] ? meta_resp_5 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_coh_T_14 = s1_req_replace_way_en[6] ? meta_resp_6 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_coh_T_15 = s1_req_replace_way_en[7] ? meta_resp_7 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _s1_coh_T_16 = _s1_coh_T_8 | _s1_coh_T_9; // @[Mux.scala 27:73]
  wire [1:0] _s1_coh_T_17 = _s1_coh_T_16 | _s1_coh_T_10; // @[Mux.scala 27:73]
  wire [1:0] _s1_coh_T_18 = _s1_coh_T_17 | _s1_coh_T_11; // @[Mux.scala 27:73]
  wire [1:0] _s1_coh_T_19 = _s1_coh_T_18 | _s1_coh_T_12; // @[Mux.scala 27:73]
  wire [1:0] _s1_coh_T_20 = _s1_coh_T_19 | _s1_coh_T_13; // @[Mux.scala 27:73]
  wire [1:0] _s1_coh_T_21 = _s1_coh_T_20 | _s1_coh_T_14; // @[Mux.scala 27:73]
  wire [1:0] _s1_coh_T_22 = _s1_coh_T_21 | _s1_coh_T_15; // @[Mux.scala 27:73]
  wire  _s1_has_permission_c_cat_T_5 = s1_req_cmd == 5'h4; // @[package.scala 15:47]
  wire  _s1_has_permission_c_cat_T_6 = s1_req_cmd == 5'h9; // @[package.scala 15:47]
  wire  _s1_has_permission_c_cat_T_7 = s1_req_cmd == 5'ha; // @[package.scala 15:47]
  wire  _s1_has_permission_c_cat_T_8 = s1_req_cmd == 5'hb; // @[package.scala 15:47]
  wire  _s1_has_permission_c_cat_T_11 = _s1_has_permission_c_cat_T_5 | _s1_has_permission_c_cat_T_6 |
    _s1_has_permission_c_cat_T_7 | _s1_has_permission_c_cat_T_8; // @[package.scala 72:59]
  wire  _s1_has_permission_c_cat_T_12 = s1_req_cmd == 5'h8; // @[package.scala 15:47]
  wire  _s1_has_permission_c_cat_T_13 = s1_req_cmd == 5'hc; // @[package.scala 15:47]
  wire  _s1_has_permission_c_cat_T_14 = s1_req_cmd == 5'hd; // @[package.scala 15:47]
  wire  _s1_has_permission_c_cat_T_15 = s1_req_cmd == 5'he; // @[package.scala 15:47]
  wire  _s1_has_permission_c_cat_T_16 = s1_req_cmd == 5'hf; // @[package.scala 15:47]
  wire  _s1_has_permission_c_cat_T_20 = _s1_has_permission_c_cat_T_12 | _s1_has_permission_c_cat_T_13 |
    _s1_has_permission_c_cat_T_14 | _s1_has_permission_c_cat_T_15 | _s1_has_permission_c_cat_T_16; // @[package.scala 72:59]
  wire  _s1_has_permission_c_cat_T_21 = _s1_has_permission_c_cat_T_11 | _s1_has_permission_c_cat_T_20; // @[Consts.scala 82:44]
  wire  _s1_has_permission_c_cat_T_22 = s1_req_cmd == 5'h1 | s1_req_cmd == 5'h11 | s1_req_cmd == 5'h7 |
    _s1_has_permission_c_cat_T_21; // @[Consts.scala 85:76]
  wire  _s1_has_permission_c_cat_T_49 = _s1_has_permission_c_cat_T_22 | s1_req_cmd == 5'h3 | s1_req_cmd == 5'h6; // @[Consts.scala 86:64]
  wire [3:0] _s1_has_permission_T = {_s1_has_permission_c_cat_T_22,_s1_has_permission_c_cat_T_49,s1_hit_coh_state}; // @[Cat.scala 31:58]
  wire  _s1_has_permission_T_40 = 4'he == _s1_has_permission_T; // @[Misc.scala 48:20]
  wire  _s1_has_permission_T_43 = 4'hf == _s1_has_permission_T; // @[Misc.scala 48:20]
  wire  _s1_has_permission_T_46 = 4'h6 == _s1_has_permission_T; // @[Misc.scala 48:20]
  wire  _s1_has_permission_T_49 = 4'h7 == _s1_has_permission_T; // @[Misc.scala 48:20]
  wire  _s1_has_permission_T_52 = 4'h1 == _s1_has_permission_T; // @[Misc.scala 48:20]
  wire  _s1_has_permission_T_55 = 4'h2 == _s1_has_permission_T; // @[Misc.scala 48:20]
  wire  _s1_has_permission_T_58 = 4'h3 == _s1_has_permission_T; // @[Misc.scala 48:20]
  wire  s1_has_permission = _s1_has_permission_T_58 | (_s1_has_permission_T_55 | (_s1_has_permission_T_52 | (
    _s1_has_permission_T_49 | (_s1_has_permission_T_46 | (_s1_has_permission_T_43 | _s1_has_permission_T_40))))); // @[Misc.scala 34:9]
  wire  s1_hit = s1_tag_match & s1_has_permission; // @[MainPipe.scala 369:29]
  wire  _s1_pregen_can_go_to_mq_T_6 = s1_req_source == 4'h2; // @[MainPipe.scala 73:28]
  wire  s1_pregen_can_go_to_mq = ~s1_req_replace & _s1_need_replacement_T_1 & ~s1_req_miss & (_s1_need_replacement_T |
    _s1_pregen_can_go_to_mq_T_6) & ~s1_hit; // @[MainPipe.scala 370:117]
  wire  s1_ttob_probe_valid = s1_valid & s1_req_probe & s1_req_probe_param == 2'h1; // @[MainPipe.scala 372:54]
  wire [35:0] _s1_ttob_probe_addr_T_1 = {s1_tag,s1_req_vaddr[11:0]}; // @[Cat.scala 31:58]
  wire [35:0] s1_ttob_probe_addr = {_s1_ttob_probe_addr_T_1[35:6], 6'h0}; // @[L1Cache.scala 86:59]
  reg  s2_valid; // @[MainPipe.scala 376:25]
  reg [1:0] s2_req_miss_id; // @[Reg.scala 16:16]
  reg [1:0] s2_req_miss_param; // @[Reg.scala 16:16]
  reg  s2_req_miss_dirty; // @[Reg.scala 16:16]
  reg [1:0] s2_req_probe_param; // @[Reg.scala 16:16]
  reg  s2_req_probe_need_data; // @[Reg.scala 16:16]
  reg [35:0] s2_req_addr; // @[Reg.scala 16:16]
  reg [511:0] s2_req_store_data; // @[Reg.scala 16:16]
  reg [63:0] s2_req_store_mask; // @[Reg.scala 16:16]
  reg [2:0] s2_req_word_idx; // @[Reg.scala 16:16]
  reg [63:0] s2_req_amo_data; // @[Reg.scala 16:16]
  reg [7:0] s2_req_amo_mask; // @[Reg.scala 16:16]
  reg  s2_req_error; // @[Reg.scala 16:16]
  reg  s2_req_replace; // @[Reg.scala 16:16]
  reg [3:0] s2_req_id; // @[Reg.scala 16:16]
  reg [7:0] s2_tag_match_way; // @[Reg.scala 16:16]
  wire [1:0] _T_117 = _T_115 ? 2'h1 : 2'h0; // @[Misc.scala 34:36]
  wire [1:0] _T_120 = _T_118 ? 2'h2 : _T_117; // @[Misc.scala 34:36]
  wire [1:0] _T_123 = _T_121 ? 2'h1 : _T_120; // @[Misc.scala 34:36]
  wire [1:0] _T_126 = _T_124 ? 2'h2 : _T_123; // @[Misc.scala 34:36]
  wire [1:0] _T_129 = _T_127 ? 2'h0 : _T_126; // @[Misc.scala 34:36]
  wire [1:0] _T_132 = _T_130 ? 2'h3 : _T_129; // @[Misc.scala 34:36]
  wire [1:0] _T_135 = _T_133 ? 2'h3 : _T_132; // @[Misc.scala 34:36]
  wire [1:0] _T_138 = _T_136 ? 2'h2 : _T_135; // @[Misc.scala 34:36]
  wire [1:0] _T_141 = _T_139 ? 2'h3 : _T_138; // @[Misc.scala 34:36]
  reg [23:0] s2_repl_tag; // @[Reg.scala 16:16]
  reg [1:0] s2_repl_coh_state; // @[Reg.scala 16:16]
  reg [7:0] s2_repl_way_en; // @[Reg.scala 16:16]
  reg  s2_need_replacement; // @[Reg.scala 16:16]
  reg  s2_need_data; // @[Reg.scala 16:16]
  reg  s2_need_tag; // @[Reg.scala 16:16]
  reg [29:0] s2_encTag; // @[Reg.scala 16:16]
  reg  s2_valid_dup_2; // @[MainPipe.scala 393:29]
  reg  s2_valid_dup_4; // @[MainPipe.scala 393:29]
  reg  s2_valid_dup_5; // @[MainPipe.scala 393:29]
  reg  s2_valid_dup_6; // @[MainPipe.scala 393:29]
  reg  s2_valid_dup_7; // @[MainPipe.scala 393:29]
  reg  s2_valid_dup_for_status_0; // @[MainPipe.scala 394:40]
  reg  s2_valid_dup_for_status_1; // @[MainPipe.scala 394:40]
  reg  s2_valid_dup_for_status_2; // @[MainPipe.scala 394:40]
  reg  s2_valid_dup_for_status_3; // @[MainPipe.scala 394:40]
  reg  s2_valid_dup_for_status_4; // @[MainPipe.scala 394:40]
  reg  s2_valid_dup_for_status_5; // @[MainPipe.scala 394:40]
  reg  s2_valid_dup_for_status_6; // @[MainPipe.scala 394:40]
  reg  s2_valid_dup_for_status_7; // @[MainPipe.scala 394:40]
  reg  s2_valid_dup_for_status_8; // @[MainPipe.scala 394:40]
  reg  s2_valid_dup_for_status_9; // @[MainPipe.scala 394:40]
  reg  s2_valid_dup_for_status_10; // @[MainPipe.scala 394:40]
  reg  s2_valid_dup_for_status_11; // @[MainPipe.scala 394:40]
  reg  s2_valid_dup_for_status_12; // @[MainPipe.scala 394:40]
  reg  s2_valid_dup_for_status_13; // @[MainPipe.scala 394:40]
  reg  s2_valid_dup_for_status_14; // @[MainPipe.scala 394:40]
  reg  s2_valid_dup_for_status_15; // @[MainPipe.scala 394:40]
  reg  s2_valid_dup_for_status_16; // @[MainPipe.scala 394:40]
  reg  s2_valid_dup_for_status_17; // @[MainPipe.scala 394:40]
  reg  s2_valid_dup_for_status_18; // @[MainPipe.scala 394:40]
  reg  s2_valid_dup_for_status_19; // @[MainPipe.scala 394:40]
  reg  s2_valid_dup_for_status_20; // @[MainPipe.scala 394:40]
  reg  s2_valid_dup_for_status_21; // @[MainPipe.scala 394:40]
  reg  s2_valid_dup_for_status_22; // @[MainPipe.scala 394:40]
  reg  s2_valid_dup_for_status_23; // @[MainPipe.scala 394:40]
  reg [38:0] s2_req_vaddr_dup_for_miss_req; // @[Reg.scala 16:16]
  reg [5:0] s2_idx_dup_for_status; // @[Reg.scala 16:16]
  reg [5:0] s2_idx_dup_for_replace_access; // @[Reg.scala 16:16]
  reg  s2_req_replace_dup_2; // @[Reg.scala 16:16]
  reg  s2_can_go_to_mq_dup_0; // @[Reg.scala 16:16]
  reg  s2_can_go_to_mq_dup_1; // @[Reg.scala 16:16]
  reg  s2_can_go_to_mq_dup_2; // @[Reg.scala 16:16]
  reg [7:0] s2_way_en; // @[Reg.scala 16:16]
  reg [23:0] s2_tag; // @[Reg.scala 16:16]
  reg [1:0] s2_coh_state; // @[Reg.scala 16:16]
  reg [7:0] s2_banked_store_wmask; // @[Reg.scala 16:16]
  reg  s2_flag_error; // @[Reg.scala 16:16]
  wire [28:0] _s2_tag_error_syndromeUInt_T = 29'h1aaad5b & s2_encTag[28:0]; // @[ECC.scala 156:66]
  wire [28:0] _s2_tag_error_syndromeUInt_T_2 = 29'h233366d & s2_encTag[28:0]; // @[ECC.scala 156:66]
  wire [28:0] _s2_tag_error_syndromeUInt_T_4 = 29'h4c3c78e & s2_encTag[28:0]; // @[ECC.scala 156:66]
  wire [28:0] _s2_tag_error_syndromeUInt_T_6 = 29'h8fc07f0 & s2_encTag[28:0]; // @[ECC.scala 156:66]
  wire [28:0] _s2_tag_error_syndromeUInt_T_8 = 29'h10fff800 & s2_encTag[28:0]; // @[ECC.scala 156:66]
  wire [4:0] s2_tag_error_syndromeUInt = {^_s2_tag_error_syndromeUInt_T_8,^_s2_tag_error_syndromeUInt_T_6,^
    _s2_tag_error_syndromeUInt_T_4,^_s2_tag_error_syndromeUInt_T_2,^_s2_tag_error_syndromeUInt_T}; // @[ECC.scala 156:78]
  wire  s2_tag_error_correctable = |s2_tag_error_syndromeUInt; // @[ECC.scala 163:36]
  wire  s2_tag_error_uncorrectable_1 = ^s2_encTag; // @[ECC.scala 87:27]
  wire  s2_tag_error_uncorrectable_2 = ~s2_tag_error_uncorrectable_1 & s2_tag_error_correctable; // @[ECC.scala 195:47]
  wire  _s2_tag_error_T_1 = s2_tag_error_uncorrectable_1 | s2_tag_error_uncorrectable_2; // @[ECC.scala 31:27]
  wire  s2_tag_error = _s2_tag_error_T_1 & s2_need_tag; // @[MainPipe.scala 409:71]
  wire  s2_error = s2_flag_error | s2_tag_error | s2_req_error; // @[MainPipe.scala 411:48]
  wire  _s2_amo_hit_T = ~s2_req_probe; // @[MainPipe.scala 416:30]
  wire  _s2_amo_hit_T_3 = s2_hit & ~s2_req_probe & ~s2_req_miss; // @[MainPipe.scala 416:44]
  wire  s2_amo_hit = s2_hit & ~s2_req_probe & ~s2_req_miss & _s2_can_go_to_s3_T_3; // @[MainPipe.scala 416:60]
  wire  s2_store_hit = _s2_amo_hit_T_3 & _s2_can_go_to_s3_T_2; // @[MainPipe.scala 417:62]
  wire  s2_fire = s2_valid & s2_can_go; // @[MainPipe.scala 427:26]
  wire  s2_fire_to_s3 = s2_valid_dup_2 & s2_can_go_to_s3; // @[MainPipe.scala 428:39]
  wire  _GEN_137 = s2_fire ? 1'h0 : s2_valid; // @[MainPipe.scala 433:24 434:14 376:25]
  wire  _GEN_138 = s2_fire ? 1'h0 : s2_valid_dup_0; // @[MainPipe.scala 433:24 435:28 393:29]
  wire  _GEN_139 = s2_fire ? 1'h0 : s2_valid_dup_1; // @[MainPipe.scala 433:24 435:28 393:29]
  wire  _GEN_140 = s2_fire ? 1'h0 : s2_valid_dup_2; // @[MainPipe.scala 433:24 435:28 393:29]
  wire  _GEN_141 = s2_fire ? 1'h0 : s2_valid_dup_3; // @[MainPipe.scala 433:24 435:28 393:29]
  wire  _GEN_142 = s2_fire ? 1'h0 : s2_valid_dup_4; // @[MainPipe.scala 433:24 435:28 393:29]
  wire  _GEN_143 = s2_fire ? 1'h0 : s2_valid_dup_5; // @[MainPipe.scala 433:24 435:28 393:29]
  wire  _GEN_144 = s2_fire ? 1'h0 : s2_valid_dup_6; // @[MainPipe.scala 433:24 435:28 393:29]
  wire  _GEN_145 = s2_fire ? 1'h0 : s2_valid_dup_7; // @[MainPipe.scala 433:24 435:28 393:29]
  wire  _GEN_146 = s2_fire ? 1'h0 : s2_valid_dup_for_status_0; // @[MainPipe.scala 433:24 436:39 394:40]
  wire  _GEN_147 = s2_fire ? 1'h0 : s2_valid_dup_for_status_1; // @[MainPipe.scala 433:24 436:39 394:40]
  wire  _GEN_148 = s2_fire ? 1'h0 : s2_valid_dup_for_status_2; // @[MainPipe.scala 433:24 436:39 394:40]
  wire  _GEN_149 = s2_fire ? 1'h0 : s2_valid_dup_for_status_3; // @[MainPipe.scala 433:24 436:39 394:40]
  wire  _GEN_150 = s2_fire ? 1'h0 : s2_valid_dup_for_status_4; // @[MainPipe.scala 433:24 436:39 394:40]
  wire  _GEN_151 = s2_fire ? 1'h0 : s2_valid_dup_for_status_5; // @[MainPipe.scala 433:24 436:39 394:40]
  wire  _GEN_152 = s2_fire ? 1'h0 : s2_valid_dup_for_status_6; // @[MainPipe.scala 433:24 436:39 394:40]
  wire  _GEN_153 = s2_fire ? 1'h0 : s2_valid_dup_for_status_7; // @[MainPipe.scala 433:24 436:39 394:40]
  wire  _GEN_154 = s2_fire ? 1'h0 : s2_valid_dup_for_status_8; // @[MainPipe.scala 433:24 436:39 394:40]
  wire  _GEN_155 = s2_fire ? 1'h0 : s2_valid_dup_for_status_9; // @[MainPipe.scala 433:24 436:39 394:40]
  wire  _GEN_156 = s2_fire ? 1'h0 : s2_valid_dup_for_status_10; // @[MainPipe.scala 433:24 436:39 394:40]
  wire  _GEN_157 = s2_fire ? 1'h0 : s2_valid_dup_for_status_11; // @[MainPipe.scala 433:24 436:39 394:40]
  wire  _GEN_158 = s2_fire ? 1'h0 : s2_valid_dup_for_status_12; // @[MainPipe.scala 433:24 436:39 394:40]
  wire  _GEN_159 = s2_fire ? 1'h0 : s2_valid_dup_for_status_13; // @[MainPipe.scala 433:24 436:39 394:40]
  wire  _GEN_160 = s2_fire ? 1'h0 : s2_valid_dup_for_status_14; // @[MainPipe.scala 433:24 436:39 394:40]
  wire  _GEN_161 = s2_fire ? 1'h0 : s2_valid_dup_for_status_15; // @[MainPipe.scala 433:24 436:39 394:40]
  wire  _GEN_162 = s2_fire ? 1'h0 : s2_valid_dup_for_status_16; // @[MainPipe.scala 433:24 436:39 394:40]
  wire  _GEN_163 = s2_fire ? 1'h0 : s2_valid_dup_for_status_17; // @[MainPipe.scala 433:24 436:39 394:40]
  wire  _GEN_164 = s2_fire ? 1'h0 : s2_valid_dup_for_status_18; // @[MainPipe.scala 433:24 436:39 394:40]
  wire  _GEN_165 = s2_fire ? 1'h0 : s2_valid_dup_for_status_19; // @[MainPipe.scala 433:24 436:39 394:40]
  wire  _GEN_166 = s2_fire ? 1'h0 : s2_valid_dup_for_status_20; // @[MainPipe.scala 433:24 436:39 394:40]
  wire  _GEN_167 = s2_fire ? 1'h0 : s2_valid_dup_for_status_21; // @[MainPipe.scala 433:24 436:39 394:40]
  wire  _GEN_168 = s2_fire ? 1'h0 : s2_valid_dup_for_status_22; // @[MainPipe.scala 433:24 436:39 394:40]
  wire  _GEN_169 = s2_fire ? 1'h0 : s2_valid_dup_for_status_23; // @[MainPipe.scala 433:24 436:39 394:40]
  wire  replay = ~io_miss_req_ready; // @[MainPipe.scala 439:16]
  reg  REG_12; // @[MainPipe.scala 442:27]
  reg [63:0] REG_13_0_raw_data; // @[MainPipe.scala 442:59]
  reg [63:0] REG_13_1_raw_data; // @[MainPipe.scala 442:59]
  reg [63:0] REG_13_2_raw_data; // @[MainPipe.scala 442:59]
  reg [63:0] REG_13_3_raw_data; // @[MainPipe.scala 442:59]
  reg [63:0] REG_13_4_raw_data; // @[MainPipe.scala 442:59]
  reg [63:0] REG_13_5_raw_data; // @[MainPipe.scala 442:59]
  reg [63:0] REG_13_6_raw_data; // @[MainPipe.scala 442:59]
  reg [63:0] REG_13_7_raw_data; // @[MainPipe.scala 442:59]
  wire [63:0] data_resp_0_raw_data = REG_12 ? io_data_resp_0_raw_data : REG_13_0_raw_data; // @[MainPipe.scala 442:19]
  wire [63:0] data_resp_1_raw_data = REG_12 ? io_data_resp_1_raw_data : REG_13_1_raw_data; // @[MainPipe.scala 442:19]
  wire [63:0] data_resp_2_raw_data = REG_12 ? io_data_resp_2_raw_data : REG_13_2_raw_data; // @[MainPipe.scala 442:19]
  wire [63:0] data_resp_3_raw_data = REG_12 ? io_data_resp_3_raw_data : REG_13_3_raw_data; // @[MainPipe.scala 442:19]
  wire [63:0] data_resp_4_raw_data = REG_12 ? io_data_resp_4_raw_data : REG_13_4_raw_data; // @[MainPipe.scala 442:19]
  wire [63:0] data_resp_5_raw_data = REG_12 ? io_data_resp_5_raw_data : REG_13_5_raw_data; // @[MainPipe.scala 442:19]
  wire [63:0] data_resp_6_raw_data = REG_12 ? io_data_resp_6_raw_data : REG_13_6_raw_data; // @[MainPipe.scala 442:19]
  wire [63:0] data_resp_7_raw_data = REG_12 ? io_data_resp_7_raw_data : REG_13_7_raw_data; // @[MainPipe.scala 442:19]
  wire [63:0] new_data = s2_req_store_data[63:0]; // @[DCacheWrapper.scala 224:9]
  wire [7:0] wmask = s2_amo_hit ? 8'h0 : s2_req_store_mask[7:0]; // @[MainPipe.scala 459:20]
  wire [7:0] _s2_store_data_merged_0_full_wmask_T_9 = wmask[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_0_full_wmask_T_11 = wmask[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_0_full_wmask_T_13 = wmask[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_0_full_wmask_T_15 = wmask[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_0_full_wmask_T_17 = wmask[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_0_full_wmask_T_19 = wmask[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_0_full_wmask_T_21 = wmask[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_0_full_wmask_T_23 = wmask[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s2_store_data_merged_0_full_wmask = {_s2_store_data_merged_0_full_wmask_T_23,
    _s2_store_data_merged_0_full_wmask_T_21,_s2_store_data_merged_0_full_wmask_T_19,
    _s2_store_data_merged_0_full_wmask_T_17,_s2_store_data_merged_0_full_wmask_T_15,
    _s2_store_data_merged_0_full_wmask_T_13,_s2_store_data_merged_0_full_wmask_T_11,
    _s2_store_data_merged_0_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s2_store_data_merged_0_T = ~s2_store_data_merged_0_full_wmask; // @[MainPipe.scala 447:7]
  wire [63:0] _s2_store_data_merged_0_T_1 = _s2_store_data_merged_0_T & data_resp_0_raw_data; // @[MainPipe.scala 447:19]
  wire [63:0] _s2_store_data_merged_0_T_2 = s2_store_data_merged_0_full_wmask & new_data; // @[MainPipe.scala 447:45]
  wire [63:0] s2_store_data_merged_0 = _s2_store_data_merged_0_T_1 | _s2_store_data_merged_0_T_2; // @[MainPipe.scala 447:31]
  wire [63:0] new_data_1 = s2_req_store_data[127:64]; // @[DCacheWrapper.scala 224:9]
  wire [7:0] wmask_1 = s2_amo_hit ? 8'h0 : s2_req_store_mask[15:8]; // @[MainPipe.scala 459:20]
  wire [7:0] _s2_store_data_merged_1_full_wmask_T_9 = wmask_1[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_1_full_wmask_T_11 = wmask_1[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_1_full_wmask_T_13 = wmask_1[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_1_full_wmask_T_15 = wmask_1[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_1_full_wmask_T_17 = wmask_1[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_1_full_wmask_T_19 = wmask_1[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_1_full_wmask_T_21 = wmask_1[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_1_full_wmask_T_23 = wmask_1[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s2_store_data_merged_1_full_wmask = {_s2_store_data_merged_1_full_wmask_T_23,
    _s2_store_data_merged_1_full_wmask_T_21,_s2_store_data_merged_1_full_wmask_T_19,
    _s2_store_data_merged_1_full_wmask_T_17,_s2_store_data_merged_1_full_wmask_T_15,
    _s2_store_data_merged_1_full_wmask_T_13,_s2_store_data_merged_1_full_wmask_T_11,
    _s2_store_data_merged_1_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s2_store_data_merged_1_T = ~s2_store_data_merged_1_full_wmask; // @[MainPipe.scala 447:7]
  wire [63:0] _s2_store_data_merged_1_T_1 = _s2_store_data_merged_1_T & data_resp_1_raw_data; // @[MainPipe.scala 447:19]
  wire [63:0] _s2_store_data_merged_1_T_2 = s2_store_data_merged_1_full_wmask & new_data_1; // @[MainPipe.scala 447:45]
  wire [63:0] s2_store_data_merged_1 = _s2_store_data_merged_1_T_1 | _s2_store_data_merged_1_T_2; // @[MainPipe.scala 447:31]
  wire [63:0] new_data_2 = s2_req_store_data[191:128]; // @[DCacheWrapper.scala 224:9]
  wire [7:0] wmask_2 = s2_amo_hit ? 8'h0 : s2_req_store_mask[23:16]; // @[MainPipe.scala 459:20]
  wire [7:0] _s2_store_data_merged_2_full_wmask_T_9 = wmask_2[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_2_full_wmask_T_11 = wmask_2[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_2_full_wmask_T_13 = wmask_2[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_2_full_wmask_T_15 = wmask_2[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_2_full_wmask_T_17 = wmask_2[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_2_full_wmask_T_19 = wmask_2[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_2_full_wmask_T_21 = wmask_2[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_2_full_wmask_T_23 = wmask_2[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s2_store_data_merged_2_full_wmask = {_s2_store_data_merged_2_full_wmask_T_23,
    _s2_store_data_merged_2_full_wmask_T_21,_s2_store_data_merged_2_full_wmask_T_19,
    _s2_store_data_merged_2_full_wmask_T_17,_s2_store_data_merged_2_full_wmask_T_15,
    _s2_store_data_merged_2_full_wmask_T_13,_s2_store_data_merged_2_full_wmask_T_11,
    _s2_store_data_merged_2_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s2_store_data_merged_2_T = ~s2_store_data_merged_2_full_wmask; // @[MainPipe.scala 447:7]
  wire [63:0] _s2_store_data_merged_2_T_1 = _s2_store_data_merged_2_T & data_resp_2_raw_data; // @[MainPipe.scala 447:19]
  wire [63:0] _s2_store_data_merged_2_T_2 = s2_store_data_merged_2_full_wmask & new_data_2; // @[MainPipe.scala 447:45]
  wire [63:0] s2_store_data_merged_2 = _s2_store_data_merged_2_T_1 | _s2_store_data_merged_2_T_2; // @[MainPipe.scala 447:31]
  wire [63:0] new_data_3 = s2_req_store_data[255:192]; // @[DCacheWrapper.scala 224:9]
  wire [7:0] wmask_3 = s2_amo_hit ? 8'h0 : s2_req_store_mask[31:24]; // @[MainPipe.scala 459:20]
  wire [7:0] _s2_store_data_merged_3_full_wmask_T_9 = wmask_3[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_3_full_wmask_T_11 = wmask_3[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_3_full_wmask_T_13 = wmask_3[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_3_full_wmask_T_15 = wmask_3[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_3_full_wmask_T_17 = wmask_3[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_3_full_wmask_T_19 = wmask_3[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_3_full_wmask_T_21 = wmask_3[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_3_full_wmask_T_23 = wmask_3[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s2_store_data_merged_3_full_wmask = {_s2_store_data_merged_3_full_wmask_T_23,
    _s2_store_data_merged_3_full_wmask_T_21,_s2_store_data_merged_3_full_wmask_T_19,
    _s2_store_data_merged_3_full_wmask_T_17,_s2_store_data_merged_3_full_wmask_T_15,
    _s2_store_data_merged_3_full_wmask_T_13,_s2_store_data_merged_3_full_wmask_T_11,
    _s2_store_data_merged_3_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s2_store_data_merged_3_T = ~s2_store_data_merged_3_full_wmask; // @[MainPipe.scala 447:7]
  wire [63:0] _s2_store_data_merged_3_T_1 = _s2_store_data_merged_3_T & data_resp_3_raw_data; // @[MainPipe.scala 447:19]
  wire [63:0] _s2_store_data_merged_3_T_2 = s2_store_data_merged_3_full_wmask & new_data_3; // @[MainPipe.scala 447:45]
  wire [63:0] s2_store_data_merged_3 = _s2_store_data_merged_3_T_1 | _s2_store_data_merged_3_T_2; // @[MainPipe.scala 447:31]
  wire [63:0] new_data_4 = s2_req_store_data[319:256]; // @[DCacheWrapper.scala 224:9]
  wire [7:0] wmask_4 = s2_amo_hit ? 8'h0 : s2_req_store_mask[39:32]; // @[MainPipe.scala 459:20]
  wire [7:0] _s2_store_data_merged_4_full_wmask_T_9 = wmask_4[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_4_full_wmask_T_11 = wmask_4[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_4_full_wmask_T_13 = wmask_4[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_4_full_wmask_T_15 = wmask_4[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_4_full_wmask_T_17 = wmask_4[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_4_full_wmask_T_19 = wmask_4[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_4_full_wmask_T_21 = wmask_4[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_4_full_wmask_T_23 = wmask_4[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s2_store_data_merged_4_full_wmask = {_s2_store_data_merged_4_full_wmask_T_23,
    _s2_store_data_merged_4_full_wmask_T_21,_s2_store_data_merged_4_full_wmask_T_19,
    _s2_store_data_merged_4_full_wmask_T_17,_s2_store_data_merged_4_full_wmask_T_15,
    _s2_store_data_merged_4_full_wmask_T_13,_s2_store_data_merged_4_full_wmask_T_11,
    _s2_store_data_merged_4_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s2_store_data_merged_4_T = ~s2_store_data_merged_4_full_wmask; // @[MainPipe.scala 447:7]
  wire [63:0] _s2_store_data_merged_4_T_1 = _s2_store_data_merged_4_T & data_resp_4_raw_data; // @[MainPipe.scala 447:19]
  wire [63:0] _s2_store_data_merged_4_T_2 = s2_store_data_merged_4_full_wmask & new_data_4; // @[MainPipe.scala 447:45]
  wire [63:0] s2_store_data_merged_4 = _s2_store_data_merged_4_T_1 | _s2_store_data_merged_4_T_2; // @[MainPipe.scala 447:31]
  wire [63:0] new_data_5 = s2_req_store_data[383:320]; // @[DCacheWrapper.scala 224:9]
  wire [7:0] wmask_5 = s2_amo_hit ? 8'h0 : s2_req_store_mask[47:40]; // @[MainPipe.scala 459:20]
  wire [7:0] _s2_store_data_merged_5_full_wmask_T_9 = wmask_5[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_5_full_wmask_T_11 = wmask_5[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_5_full_wmask_T_13 = wmask_5[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_5_full_wmask_T_15 = wmask_5[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_5_full_wmask_T_17 = wmask_5[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_5_full_wmask_T_19 = wmask_5[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_5_full_wmask_T_21 = wmask_5[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_5_full_wmask_T_23 = wmask_5[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s2_store_data_merged_5_full_wmask = {_s2_store_data_merged_5_full_wmask_T_23,
    _s2_store_data_merged_5_full_wmask_T_21,_s2_store_data_merged_5_full_wmask_T_19,
    _s2_store_data_merged_5_full_wmask_T_17,_s2_store_data_merged_5_full_wmask_T_15,
    _s2_store_data_merged_5_full_wmask_T_13,_s2_store_data_merged_5_full_wmask_T_11,
    _s2_store_data_merged_5_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s2_store_data_merged_5_T = ~s2_store_data_merged_5_full_wmask; // @[MainPipe.scala 447:7]
  wire [63:0] _s2_store_data_merged_5_T_1 = _s2_store_data_merged_5_T & data_resp_5_raw_data; // @[MainPipe.scala 447:19]
  wire [63:0] _s2_store_data_merged_5_T_2 = s2_store_data_merged_5_full_wmask & new_data_5; // @[MainPipe.scala 447:45]
  wire [63:0] s2_store_data_merged_5 = _s2_store_data_merged_5_T_1 | _s2_store_data_merged_5_T_2; // @[MainPipe.scala 447:31]
  wire [63:0] new_data_6 = s2_req_store_data[447:384]; // @[DCacheWrapper.scala 224:9]
  wire [7:0] wmask_6 = s2_amo_hit ? 8'h0 : s2_req_store_mask[55:48]; // @[MainPipe.scala 459:20]
  wire [7:0] _s2_store_data_merged_6_full_wmask_T_9 = wmask_6[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_6_full_wmask_T_11 = wmask_6[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_6_full_wmask_T_13 = wmask_6[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_6_full_wmask_T_15 = wmask_6[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_6_full_wmask_T_17 = wmask_6[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_6_full_wmask_T_19 = wmask_6[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_6_full_wmask_T_21 = wmask_6[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_6_full_wmask_T_23 = wmask_6[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s2_store_data_merged_6_full_wmask = {_s2_store_data_merged_6_full_wmask_T_23,
    _s2_store_data_merged_6_full_wmask_T_21,_s2_store_data_merged_6_full_wmask_T_19,
    _s2_store_data_merged_6_full_wmask_T_17,_s2_store_data_merged_6_full_wmask_T_15,
    _s2_store_data_merged_6_full_wmask_T_13,_s2_store_data_merged_6_full_wmask_T_11,
    _s2_store_data_merged_6_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s2_store_data_merged_6_T = ~s2_store_data_merged_6_full_wmask; // @[MainPipe.scala 447:7]
  wire [63:0] _s2_store_data_merged_6_T_1 = _s2_store_data_merged_6_T & data_resp_6_raw_data; // @[MainPipe.scala 447:19]
  wire [63:0] _s2_store_data_merged_6_T_2 = s2_store_data_merged_6_full_wmask & new_data_6; // @[MainPipe.scala 447:45]
  wire [63:0] s2_store_data_merged_6 = _s2_store_data_merged_6_T_1 | _s2_store_data_merged_6_T_2; // @[MainPipe.scala 447:31]
  wire [63:0] new_data_7 = s2_req_store_data[511:448]; // @[DCacheWrapper.scala 224:9]
  wire [7:0] wmask_7 = s2_amo_hit ? 8'h0 : s2_req_store_mask[63:56]; // @[MainPipe.scala 459:20]
  wire [7:0] _s2_store_data_merged_7_full_wmask_T_9 = wmask_7[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_7_full_wmask_T_11 = wmask_7[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_7_full_wmask_T_13 = wmask_7[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_7_full_wmask_T_15 = wmask_7[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_7_full_wmask_T_17 = wmask_7[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_7_full_wmask_T_19 = wmask_7[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_7_full_wmask_T_21 = wmask_7[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s2_store_data_merged_7_full_wmask_T_23 = wmask_7[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s2_store_data_merged_7_full_wmask = {_s2_store_data_merged_7_full_wmask_T_23,
    _s2_store_data_merged_7_full_wmask_T_21,_s2_store_data_merged_7_full_wmask_T_19,
    _s2_store_data_merged_7_full_wmask_T_17,_s2_store_data_merged_7_full_wmask_T_15,
    _s2_store_data_merged_7_full_wmask_T_13,_s2_store_data_merged_7_full_wmask_T_11,
    _s2_store_data_merged_7_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s2_store_data_merged_7_T = ~s2_store_data_merged_7_full_wmask; // @[MainPipe.scala 447:7]
  wire [63:0] _s2_store_data_merged_7_T_1 = _s2_store_data_merged_7_T & data_resp_7_raw_data; // @[MainPipe.scala 447:19]
  wire [63:0] _s2_store_data_merged_7_T_2 = s2_store_data_merged_7_full_wmask & new_data_7; // @[MainPipe.scala 447:45]
  wire [63:0] s2_store_data_merged_7 = _s2_store_data_merged_7_T_1 | _s2_store_data_merged_7_T_2; // @[MainPipe.scala 447:31]
  reg  s2_ttob_probe_valid; // @[Reg.scala 16:16]
  reg [35:0] s2_ttob_probe_addr; // @[Reg.scala 16:16]
  reg  s3_valid; // @[MainPipe.scala 472:25]
  reg [1:0] s3_req_miss_id; // @[Reg.scala 16:16]
  reg [1:0] s3_req_miss_param; // @[Reg.scala 16:16]
  reg  s3_req_miss_dirty; // @[Reg.scala 16:16]
  reg [4:0] s3_req_cmd; // @[Reg.scala 16:16]
  reg [38:0] s3_req_vaddr; // @[Reg.scala 16:16]
  reg [2:0] s3_req_word_idx; // @[Reg.scala 16:16]
  reg [63:0] s3_req_amo_data; // @[Reg.scala 16:16]
  reg [7:0] s3_req_amo_mask; // @[Reg.scala 16:16]
  reg  s3_req_error; // @[Reg.scala 16:16]
  reg [3:0] s3_req_id; // @[Reg.scala 16:16]
  reg  s3_hit; // @[Reg.scala 16:16]
  reg [7:0] s3_way_en; // @[Reg.scala 16:16]
  reg [7:0] s3_banked_store_wmask; // @[Reg.scala 16:16]
  reg [63:0] s3_store_data_merged_0; // @[Reg.scala 16:16]
  reg [63:0] s3_store_data_merged_1; // @[Reg.scala 16:16]
  reg [63:0] s3_store_data_merged_2; // @[Reg.scala 16:16]
  reg [63:0] s3_store_data_merged_3; // @[Reg.scala 16:16]
  reg [63:0] s3_store_data_merged_4; // @[Reg.scala 16:16]
  reg [63:0] s3_store_data_merged_5; // @[Reg.scala 16:16]
  reg [63:0] s3_store_data_merged_6; // @[Reg.scala 16:16]
  reg [63:0] s3_store_data_merged_7; // @[Reg.scala 16:16]
  reg [63:0] s3_data_word; // @[Reg.scala 16:16]
  wire [63:0] _GEN_245 = 3'h1 == s2_req_word_idx ? s2_store_data_merged_1 : s2_store_data_merged_0; // @[Reg.scala 17:{22,22}]
  wire [63:0] _GEN_246 = 3'h2 == s2_req_word_idx ? s2_store_data_merged_2 : _GEN_245; // @[Reg.scala 17:{22,22}]
  wire [63:0] _GEN_247 = 3'h3 == s2_req_word_idx ? s2_store_data_merged_3 : _GEN_246; // @[Reg.scala 17:{22,22}]
  wire [63:0] _GEN_248 = 3'h4 == s2_req_word_idx ? s2_store_data_merged_4 : _GEN_247; // @[Reg.scala 17:{22,22}]
  reg [63:0] s3_data_0; // @[Reg.scala 16:16]
  reg [63:0] s3_data_1; // @[Reg.scala 16:16]
  reg [63:0] s3_data_2; // @[Reg.scala 16:16]
  reg [63:0] s3_data_3; // @[Reg.scala 16:16]
  reg [63:0] s3_data_4; // @[Reg.scala 16:16]
  reg [63:0] s3_data_5; // @[Reg.scala 16:16]
  reg [63:0] s3_data_6; // @[Reg.scala 16:16]
  reg [63:0] s3_data_7; // @[Reg.scala 16:16]
  reg  s3_data_error_REG; // @[MainPipe.scala 491:39]
  reg  s3_data_error_REG_1; // @[MainPipe.scala 491:31]
  reg  s3_data_error_REG_2; // @[MainPipe.scala 492:41]
  wire  _s3_data_error_T = io_readline_error_delayed & s3_data_error_REG_2; // @[MainPipe.scala 492:31]
  reg  s3_data_error_REG_3; // @[MainPipe.scala 493:12]
  wire  s3_data_error = s3_data_error_REG_1 ? _s3_data_error_T : s3_data_error_REG_3; // @[MainPipe.scala 491:23]
  reg  s3_error_r; // @[Reg.scala 16:16]
  wire  s3_error = s3_error_r | s3_data_error; // @[MainPipe.scala 497:53]
  reg  s3_probe_ttob_check_resp_rREG; // @[MainPipe.scala 500:79]
  reg  s3_probe_ttob_check_resp_rtoN; // @[Reg.scala 16:16]
  reg  s3_probe_ttob_check_resp_REG; // @[MainPipe.scala 501:45]
  wire  s3_probe_ttob_check_resp_bits_toN = s3_probe_ttob_check_resp_REG ? io_probe_ttob_check_resp_bits_toN :
    s3_probe_ttob_check_resp_rtoN; // @[MainPipe.scala 501:37]
  reg  s3_valid_dup_0; // @[MainPipe.scala 504:29]
  reg  s3_valid_dup_1; // @[MainPipe.scala 504:29]
  reg  s3_valid_dup_3; // @[MainPipe.scala 504:29]
  reg  s3_valid_dup_4; // @[MainPipe.scala 504:29]
  reg  s3_valid_dup_8; // @[MainPipe.scala 504:29]
  reg  s3_valid_dup_9; // @[MainPipe.scala 504:29]
  reg  s3_valid_dup_10; // @[MainPipe.scala 504:29]
  reg  s3_valid_dup_11; // @[MainPipe.scala 504:29]
  reg  s3_valid_dup_for_status_0; // @[MainPipe.scala 505:40]
  reg  s3_valid_dup_for_status_1; // @[MainPipe.scala 505:40]
  reg  s3_valid_dup_for_status_2; // @[MainPipe.scala 505:40]
  reg  s3_valid_dup_for_status_3; // @[MainPipe.scala 505:40]
  reg  s3_valid_dup_for_status_4; // @[MainPipe.scala 505:40]
  reg  s3_valid_dup_for_status_5; // @[MainPipe.scala 505:40]
  reg  s3_valid_dup_for_status_6; // @[MainPipe.scala 505:40]
  reg  s3_valid_dup_for_status_7; // @[MainPipe.scala 505:40]
  reg  s3_valid_dup_for_status_8; // @[MainPipe.scala 505:40]
  reg  s3_valid_dup_for_status_9; // @[MainPipe.scala 505:40]
  reg  s3_valid_dup_for_status_10; // @[MainPipe.scala 505:40]
  reg  s3_valid_dup_for_status_11; // @[MainPipe.scala 505:40]
  reg  s3_valid_dup_for_status_12; // @[MainPipe.scala 505:40]
  reg  s3_valid_dup_for_status_13; // @[MainPipe.scala 505:40]
  reg  s3_valid_dup_for_status_14; // @[MainPipe.scala 505:40]
  reg  s3_valid_dup_for_status_15; // @[MainPipe.scala 505:40]
  reg  s3_valid_dup_for_status_16; // @[MainPipe.scala 505:40]
  reg  s3_valid_dup_for_status_17; // @[MainPipe.scala 505:40]
  reg  s3_valid_dup_for_status_18; // @[MainPipe.scala 505:40]
  reg  s3_valid_dup_for_status_19; // @[MainPipe.scala 505:40]
  reg  s3_valid_dup_for_status_20; // @[MainPipe.scala 505:40]
  reg  s3_valid_dup_for_status_21; // @[MainPipe.scala 505:40]
  reg  s3_valid_dup_for_status_22; // @[MainPipe.scala 505:40]
  reg  s3_valid_dup_for_status_23; // @[MainPipe.scala 505:40]
  reg [7:0] s3_way_en_dup_0; // @[Reg.scala 16:16]
  reg [7:0] s3_way_en_dup_1; // @[Reg.scala 16:16]
  reg [7:0] s3_way_en_dup_2; // @[Reg.scala 16:16]
  reg [5:0] s3_idx_dup_2; // @[Reg.scala 16:16]
  reg [5:0] s3_idx_dup_3; // @[Reg.scala 16:16]
  reg [5:0] s3_idx_dup_4; // @[Reg.scala 16:16]
  reg [5:0] s3_idx_dup_5; // @[Reg.scala 16:16]
  reg  s3_req_replace_dup_3; // @[Reg.scala 16:16]
  reg  s3_req_replace_dup_7; // @[Reg.scala 16:16]
  reg [4:0] s3_req_cmd_dup_2; // @[Reg.scala 16:16]
  reg [4:0] s3_req_cmd_dup_3; // @[Reg.scala 16:16]
  reg [35:0] s3_req_addr_dup_0; // @[Reg.scala 16:16]
  reg [35:0] s3_req_addr_dup_3; // @[Reg.scala 16:16]
  reg [35:0] s3_req_addr_dup_4; // @[Reg.scala 16:16]
  reg  s3_req_probe_dup_3; // @[Reg.scala 16:16]
  reg  s3_req_miss_dup_5; // @[Reg.scala 16:16]
  reg  s3_req_miss_dup_7; // @[Reg.scala 16:16]
  reg [2:0] s3_req_word_idx_dup_0; // @[Reg.scala 16:16]
  reg [2:0] s3_req_word_idx_dup_1; // @[Reg.scala 16:16]
  reg [2:0] s3_req_word_idx_dup_2; // @[Reg.scala 16:16]
  reg [2:0] s3_req_word_idx_dup_3; // @[Reg.scala 16:16]
  reg [2:0] s3_req_word_idx_dup_4; // @[Reg.scala 16:16]
  reg [2:0] s3_req_word_idx_dup_5; // @[Reg.scala 16:16]
  reg [2:0] s3_req_word_idx_dup_6; // @[Reg.scala 16:16]
  reg [2:0] s3_req_word_idx_dup_7; // @[Reg.scala 16:16]
  reg  s3_store_hit_dup_1; // @[Reg.scala 16:16]
  reg [5:0] lrsc_count_dup_1; // @[MainPipe.scala 532:31]
  reg [5:0] lrsc_count_dup_2; // @[MainPipe.scala 532:31]
  wire  lrsc_valid_dup_2 = lrsc_count_dup_2 > 6'h8; // @[MainPipe.scala 533:61]
  reg [35:0] lrsc_addr_dup; // @[MainPipe.scala 534:26]
  wire  _miss_new_coh_c_cat_T_5 = s3_req_cmd_dup_2 == 5'h4; // @[package.scala 15:47]
  wire  _miss_new_coh_c_cat_T_6 = s3_req_cmd_dup_2 == 5'h9; // @[package.scala 15:47]
  wire  _miss_new_coh_c_cat_T_7 = s3_req_cmd_dup_2 == 5'ha; // @[package.scala 15:47]
  wire  _miss_new_coh_c_cat_T_8 = s3_req_cmd_dup_2 == 5'hb; // @[package.scala 15:47]
  wire  _miss_new_coh_c_cat_T_11 = _miss_new_coh_c_cat_T_5 | _miss_new_coh_c_cat_T_6 | _miss_new_coh_c_cat_T_7 |
    _miss_new_coh_c_cat_T_8; // @[package.scala 72:59]
  wire  _miss_new_coh_c_cat_T_12 = s3_req_cmd_dup_2 == 5'h8; // @[package.scala 15:47]
  wire  _miss_new_coh_c_cat_T_13 = s3_req_cmd_dup_2 == 5'hc; // @[package.scala 15:47]
  wire  _miss_new_coh_c_cat_T_14 = s3_req_cmd_dup_2 == 5'hd; // @[package.scala 15:47]
  wire  _miss_new_coh_c_cat_T_15 = s3_req_cmd_dup_2 == 5'he; // @[package.scala 15:47]
  wire  _miss_new_coh_c_cat_T_16 = s3_req_cmd_dup_2 == 5'hf; // @[package.scala 15:47]
  wire  _miss_new_coh_c_cat_T_20 = _miss_new_coh_c_cat_T_12 | _miss_new_coh_c_cat_T_13 | _miss_new_coh_c_cat_T_14 |
    _miss_new_coh_c_cat_T_15 | _miss_new_coh_c_cat_T_16; // @[package.scala 72:59]
  wire  _miss_new_coh_c_cat_T_21 = _miss_new_coh_c_cat_T_11 | _miss_new_coh_c_cat_T_20; // @[Consts.scala 82:44]
  wire  _miss_new_coh_c_cat_T_22 = s3_req_cmd_dup_2 == 5'h1 | s3_req_cmd_dup_2 == 5'h11 | s3_req_cmd_dup_2 == 5'h7 |
    _miss_new_coh_c_cat_T_21; // @[Consts.scala 85:76]
  wire  _miss_new_coh_c_cat_T_49 = _miss_new_coh_c_cat_T_22 | s3_req_cmd_dup_2 == 5'h3 | s3_req_cmd_dup_2 == 5'h6; // @[Consts.scala 86:64]
  wire [4:0] _miss_new_coh_T = {_miss_new_coh_c_cat_T_22,_miss_new_coh_c_cat_T_49,s3_req_miss_param,s3_req_miss_dirty}; // @[Cat.scala 31:58]
  wire [1:0] _miss_new_coh_T_18 = 5'h2 == _miss_new_coh_T ? 2'h1 : 2'h0; // @[Mux.scala 81:58]
  wire [1:0] _miss_new_coh_T_20 = 5'h3 == _miss_new_coh_T ? 2'h1 : _miss_new_coh_T_18; // @[Mux.scala 81:58]
  wire [1:0] _miss_new_coh_T_22 = 5'h0 == _miss_new_coh_T ? 2'h2 : _miss_new_coh_T_20; // @[Mux.scala 81:58]
  wire [1:0] _miss_new_coh_T_24 = 5'h1 == _miss_new_coh_T ? 2'h3 : _miss_new_coh_T_22; // @[Mux.scala 81:58]
  wire [1:0] _miss_new_coh_T_26 = 5'h8 == _miss_new_coh_T ? 2'h2 : _miss_new_coh_T_24; // @[Mux.scala 81:58]
  wire [1:0] _miss_new_coh_T_28 = 5'h9 == _miss_new_coh_T ? 2'h3 : _miss_new_coh_T_26; // @[Mux.scala 81:58]
  wire [1:0] _miss_new_coh_T_30 = 5'h18 == _miss_new_coh_T ? 2'h3 : _miss_new_coh_T_28; // @[Mux.scala 81:58]
  wire [1:0] miss_new_coh_state = 5'h19 == _miss_new_coh_T ? 2'h3 : _miss_new_coh_T_30; // @[Mux.scala 81:58]
  reg [5:0] lrsc_count; // @[MainPipe.scala 567:27]
  wire  s3_lr = ~s3_req_probe_dup_3 & _s3_can_do_amo_T_2 & s3_req_cmd_dup_3 == 5'h6; // @[MainPipe.scala 570:52]
  wire [35:0] _lrsc_addr_T_1 = {s3_req_addr_dup_0[35:6], 6'h0}; // @[L1Cache.scala 86:59]
  wire [5:0] _lrsc_count_T_1 = lrsc_count - 6'h1; // @[MainPipe.scala 596:30]
  wire [5:0] _lrsc_count_dup_0_T_1 = lrsc_count_dup_0 - 6'h1; // @[MainPipe.scala 598:18]
  wire [5:0] _lrsc_count_dup_1_T_1 = lrsc_count_dup_1 - 6'h1; // @[MainPipe.scala 598:18]
  wire [5:0] _lrsc_count_dup_2_T_1 = lrsc_count_dup_2 - 6'h1; // @[MainPipe.scala 598:18]
  reg  io_block_lr_REG; // @[MainPipe.scala 604:25]
  wire [7:0] banked_amo_wmask = 8'h1 << s3_req_word_idx; // @[OneHot.scala 57:35]
  reg  s3_s_amoalu; // @[MainPipe.scala 649:28]
  wire  do_amoalu = amo_wait_amoalu & s3_valid_dup_3 & ~s3_s_amoalu; // @[MainPipe.scala 650:54]
  wire  _wmask_T_8 = s3_req_word_idx_dup_0 == 3'h0; // @[MainPipe.scala 665:30]
  wire [7:0] wmask_8 = _wmask_T_8 ? 8'hff : 8'h0; // @[MainPipe.scala 664:20]
  wire [7:0] _s3_amo_data_merged_0_full_wmask_T_9 = wmask_8[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_0_full_wmask_T_11 = wmask_8[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_0_full_wmask_T_13 = wmask_8[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_0_full_wmask_T_15 = wmask_8[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_0_full_wmask_T_17 = wmask_8[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_0_full_wmask_T_19 = wmask_8[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_0_full_wmask_T_21 = wmask_8[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_0_full_wmask_T_23 = wmask_8[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s3_amo_data_merged_0_full_wmask = {_s3_amo_data_merged_0_full_wmask_T_23,
    _s3_amo_data_merged_0_full_wmask_T_21,_s3_amo_data_merged_0_full_wmask_T_19,_s3_amo_data_merged_0_full_wmask_T_17,
    _s3_amo_data_merged_0_full_wmask_T_15,_s3_amo_data_merged_0_full_wmask_T_13,_s3_amo_data_merged_0_full_wmask_T_11,
    _s3_amo_data_merged_0_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s3_amo_data_merged_0_T = ~s3_amo_data_merged_0_full_wmask; // @[MainPipe.scala 447:7]
  wire [63:0] _s3_amo_data_merged_0_T_1 = _s3_amo_data_merged_0_T & s3_store_data_merged_0; // @[MainPipe.scala 447:19]
  wire [63:0] _s3_amo_data_merged_0_T_2 = s3_amo_data_merged_0_full_wmask & amoalu_io_out; // @[MainPipe.scala 447:45]
  wire [63:0] s3_amo_data_merged_0 = _s3_amo_data_merged_0_T_1 | _s3_amo_data_merged_0_T_2; // @[MainPipe.scala 447:31]
  wire [7:0] _s3_sc_data_merged_0_T_3 = _wmask_T_8 & _s3_can_do_amo_write_T_24 ? s3_req_amo_mask : 8'h0; // @[MainPipe.scala 671:10]
  wire [7:0] _s3_sc_data_merged_0_full_wmask_T_9 = _s3_sc_data_merged_0_T_3[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_0_full_wmask_T_11 = _s3_sc_data_merged_0_T_3[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_0_full_wmask_T_13 = _s3_sc_data_merged_0_T_3[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_0_full_wmask_T_15 = _s3_sc_data_merged_0_T_3[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_0_full_wmask_T_17 = _s3_sc_data_merged_0_T_3[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_0_full_wmask_T_19 = _s3_sc_data_merged_0_T_3[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_0_full_wmask_T_21 = _s3_sc_data_merged_0_T_3[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_0_full_wmask_T_23 = _s3_sc_data_merged_0_T_3[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s3_sc_data_merged_0_full_wmask = {_s3_sc_data_merged_0_full_wmask_T_23,
    _s3_sc_data_merged_0_full_wmask_T_21,_s3_sc_data_merged_0_full_wmask_T_19,_s3_sc_data_merged_0_full_wmask_T_17,
    _s3_sc_data_merged_0_full_wmask_T_15,_s3_sc_data_merged_0_full_wmask_T_13,_s3_sc_data_merged_0_full_wmask_T_11,
    _s3_sc_data_merged_0_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s3_sc_data_merged_0_T_4 = ~s3_sc_data_merged_0_full_wmask; // @[MainPipe.scala 447:7]
  wire [63:0] _s3_sc_data_merged_0_T_5 = _s3_sc_data_merged_0_T_4 & s3_store_data_merged_0; // @[MainPipe.scala 447:19]
  wire [63:0] _s3_sc_data_merged_0_T_6 = s3_sc_data_merged_0_full_wmask & s3_req_amo_data; // @[MainPipe.scala 447:45]
  wire [63:0] s3_sc_data_merged_0 = _s3_sc_data_merged_0_T_5 | _s3_sc_data_merged_0_T_6; // @[MainPipe.scala 447:31]
  wire  _wmask_T_10 = s3_req_word_idx_dup_1 == 3'h1; // @[MainPipe.scala 665:30]
  wire [7:0] wmask_9 = _wmask_T_10 ? 8'hff : 8'h0; // @[MainPipe.scala 664:20]
  wire [7:0] _s3_amo_data_merged_1_full_wmask_T_9 = wmask_9[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_1_full_wmask_T_11 = wmask_9[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_1_full_wmask_T_13 = wmask_9[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_1_full_wmask_T_15 = wmask_9[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_1_full_wmask_T_17 = wmask_9[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_1_full_wmask_T_19 = wmask_9[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_1_full_wmask_T_21 = wmask_9[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_1_full_wmask_T_23 = wmask_9[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s3_amo_data_merged_1_full_wmask = {_s3_amo_data_merged_1_full_wmask_T_23,
    _s3_amo_data_merged_1_full_wmask_T_21,_s3_amo_data_merged_1_full_wmask_T_19,_s3_amo_data_merged_1_full_wmask_T_17,
    _s3_amo_data_merged_1_full_wmask_T_15,_s3_amo_data_merged_1_full_wmask_T_13,_s3_amo_data_merged_1_full_wmask_T_11,
    _s3_amo_data_merged_1_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s3_amo_data_merged_1_T = ~s3_amo_data_merged_1_full_wmask; // @[MainPipe.scala 447:7]
  wire [63:0] _s3_amo_data_merged_1_T_1 = _s3_amo_data_merged_1_T & s3_store_data_merged_1; // @[MainPipe.scala 447:19]
  wire [63:0] _s3_amo_data_merged_1_T_2 = s3_amo_data_merged_1_full_wmask & amoalu_io_out; // @[MainPipe.scala 447:45]
  wire [63:0] s3_amo_data_merged_1 = _s3_amo_data_merged_1_T_1 | _s3_amo_data_merged_1_T_2; // @[MainPipe.scala 447:31]
  wire [7:0] _s3_sc_data_merged_1_T_3 = _wmask_T_10 & _s3_can_do_amo_write_T_24 ? s3_req_amo_mask : 8'h0; // @[MainPipe.scala 671:10]
  wire [7:0] _s3_sc_data_merged_1_full_wmask_T_9 = _s3_sc_data_merged_1_T_3[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_1_full_wmask_T_11 = _s3_sc_data_merged_1_T_3[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_1_full_wmask_T_13 = _s3_sc_data_merged_1_T_3[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_1_full_wmask_T_15 = _s3_sc_data_merged_1_T_3[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_1_full_wmask_T_17 = _s3_sc_data_merged_1_T_3[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_1_full_wmask_T_19 = _s3_sc_data_merged_1_T_3[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_1_full_wmask_T_21 = _s3_sc_data_merged_1_T_3[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_1_full_wmask_T_23 = _s3_sc_data_merged_1_T_3[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s3_sc_data_merged_1_full_wmask = {_s3_sc_data_merged_1_full_wmask_T_23,
    _s3_sc_data_merged_1_full_wmask_T_21,_s3_sc_data_merged_1_full_wmask_T_19,_s3_sc_data_merged_1_full_wmask_T_17,
    _s3_sc_data_merged_1_full_wmask_T_15,_s3_sc_data_merged_1_full_wmask_T_13,_s3_sc_data_merged_1_full_wmask_T_11,
    _s3_sc_data_merged_1_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s3_sc_data_merged_1_T_4 = ~s3_sc_data_merged_1_full_wmask; // @[MainPipe.scala 447:7]
  wire [63:0] _s3_sc_data_merged_1_T_5 = _s3_sc_data_merged_1_T_4 & s3_store_data_merged_1; // @[MainPipe.scala 447:19]
  wire [63:0] _s3_sc_data_merged_1_T_6 = s3_sc_data_merged_1_full_wmask & s3_req_amo_data; // @[MainPipe.scala 447:45]
  wire [63:0] s3_sc_data_merged_1 = _s3_sc_data_merged_1_T_5 | _s3_sc_data_merged_1_T_6; // @[MainPipe.scala 447:31]
  wire  _wmask_T_12 = s3_req_word_idx_dup_2 == 3'h2; // @[MainPipe.scala 665:30]
  wire [7:0] wmask_10 = _wmask_T_12 ? 8'hff : 8'h0; // @[MainPipe.scala 664:20]
  wire [7:0] _s3_amo_data_merged_2_full_wmask_T_9 = wmask_10[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_2_full_wmask_T_11 = wmask_10[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_2_full_wmask_T_13 = wmask_10[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_2_full_wmask_T_15 = wmask_10[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_2_full_wmask_T_17 = wmask_10[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_2_full_wmask_T_19 = wmask_10[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_2_full_wmask_T_21 = wmask_10[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_2_full_wmask_T_23 = wmask_10[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s3_amo_data_merged_2_full_wmask = {_s3_amo_data_merged_2_full_wmask_T_23,
    _s3_amo_data_merged_2_full_wmask_T_21,_s3_amo_data_merged_2_full_wmask_T_19,_s3_amo_data_merged_2_full_wmask_T_17,
    _s3_amo_data_merged_2_full_wmask_T_15,_s3_amo_data_merged_2_full_wmask_T_13,_s3_amo_data_merged_2_full_wmask_T_11,
    _s3_amo_data_merged_2_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s3_amo_data_merged_2_T = ~s3_amo_data_merged_2_full_wmask; // @[MainPipe.scala 447:7]
  wire [63:0] _s3_amo_data_merged_2_T_1 = _s3_amo_data_merged_2_T & s3_store_data_merged_2; // @[MainPipe.scala 447:19]
  wire [63:0] _s3_amo_data_merged_2_T_2 = s3_amo_data_merged_2_full_wmask & amoalu_io_out; // @[MainPipe.scala 447:45]
  wire [63:0] s3_amo_data_merged_2 = _s3_amo_data_merged_2_T_1 | _s3_amo_data_merged_2_T_2; // @[MainPipe.scala 447:31]
  wire [7:0] _s3_sc_data_merged_2_T_3 = _wmask_T_12 & _s3_can_do_amo_write_T_24 ? s3_req_amo_mask : 8'h0; // @[MainPipe.scala 671:10]
  wire [7:0] _s3_sc_data_merged_2_full_wmask_T_9 = _s3_sc_data_merged_2_T_3[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_2_full_wmask_T_11 = _s3_sc_data_merged_2_T_3[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_2_full_wmask_T_13 = _s3_sc_data_merged_2_T_3[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_2_full_wmask_T_15 = _s3_sc_data_merged_2_T_3[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_2_full_wmask_T_17 = _s3_sc_data_merged_2_T_3[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_2_full_wmask_T_19 = _s3_sc_data_merged_2_T_3[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_2_full_wmask_T_21 = _s3_sc_data_merged_2_T_3[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_2_full_wmask_T_23 = _s3_sc_data_merged_2_T_3[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s3_sc_data_merged_2_full_wmask = {_s3_sc_data_merged_2_full_wmask_T_23,
    _s3_sc_data_merged_2_full_wmask_T_21,_s3_sc_data_merged_2_full_wmask_T_19,_s3_sc_data_merged_2_full_wmask_T_17,
    _s3_sc_data_merged_2_full_wmask_T_15,_s3_sc_data_merged_2_full_wmask_T_13,_s3_sc_data_merged_2_full_wmask_T_11,
    _s3_sc_data_merged_2_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s3_sc_data_merged_2_T_4 = ~s3_sc_data_merged_2_full_wmask; // @[MainPipe.scala 447:7]
  wire [63:0] _s3_sc_data_merged_2_T_5 = _s3_sc_data_merged_2_T_4 & s3_store_data_merged_2; // @[MainPipe.scala 447:19]
  wire [63:0] _s3_sc_data_merged_2_T_6 = s3_sc_data_merged_2_full_wmask & s3_req_amo_data; // @[MainPipe.scala 447:45]
  wire [63:0] s3_sc_data_merged_2 = _s3_sc_data_merged_2_T_5 | _s3_sc_data_merged_2_T_6; // @[MainPipe.scala 447:31]
  wire  _wmask_T_14 = s3_req_word_idx_dup_3 == 3'h3; // @[MainPipe.scala 665:30]
  wire [7:0] wmask_11 = _wmask_T_14 ? 8'hff : 8'h0; // @[MainPipe.scala 664:20]
  wire [7:0] _s3_amo_data_merged_3_full_wmask_T_9 = wmask_11[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_3_full_wmask_T_11 = wmask_11[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_3_full_wmask_T_13 = wmask_11[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_3_full_wmask_T_15 = wmask_11[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_3_full_wmask_T_17 = wmask_11[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_3_full_wmask_T_19 = wmask_11[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_3_full_wmask_T_21 = wmask_11[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_3_full_wmask_T_23 = wmask_11[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s3_amo_data_merged_3_full_wmask = {_s3_amo_data_merged_3_full_wmask_T_23,
    _s3_amo_data_merged_3_full_wmask_T_21,_s3_amo_data_merged_3_full_wmask_T_19,_s3_amo_data_merged_3_full_wmask_T_17,
    _s3_amo_data_merged_3_full_wmask_T_15,_s3_amo_data_merged_3_full_wmask_T_13,_s3_amo_data_merged_3_full_wmask_T_11,
    _s3_amo_data_merged_3_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s3_amo_data_merged_3_T = ~s3_amo_data_merged_3_full_wmask; // @[MainPipe.scala 447:7]
  wire [63:0] _s3_amo_data_merged_3_T_1 = _s3_amo_data_merged_3_T & s3_store_data_merged_3; // @[MainPipe.scala 447:19]
  wire [63:0] _s3_amo_data_merged_3_T_2 = s3_amo_data_merged_3_full_wmask & amoalu_io_out; // @[MainPipe.scala 447:45]
  wire [63:0] s3_amo_data_merged_3 = _s3_amo_data_merged_3_T_1 | _s3_amo_data_merged_3_T_2; // @[MainPipe.scala 447:31]
  wire [7:0] _s3_sc_data_merged_3_T_3 = _wmask_T_14 & _s3_can_do_amo_write_T_24 ? s3_req_amo_mask : 8'h0; // @[MainPipe.scala 671:10]
  wire [7:0] _s3_sc_data_merged_3_full_wmask_T_9 = _s3_sc_data_merged_3_T_3[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_3_full_wmask_T_11 = _s3_sc_data_merged_3_T_3[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_3_full_wmask_T_13 = _s3_sc_data_merged_3_T_3[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_3_full_wmask_T_15 = _s3_sc_data_merged_3_T_3[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_3_full_wmask_T_17 = _s3_sc_data_merged_3_T_3[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_3_full_wmask_T_19 = _s3_sc_data_merged_3_T_3[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_3_full_wmask_T_21 = _s3_sc_data_merged_3_T_3[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_3_full_wmask_T_23 = _s3_sc_data_merged_3_T_3[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s3_sc_data_merged_3_full_wmask = {_s3_sc_data_merged_3_full_wmask_T_23,
    _s3_sc_data_merged_3_full_wmask_T_21,_s3_sc_data_merged_3_full_wmask_T_19,_s3_sc_data_merged_3_full_wmask_T_17,
    _s3_sc_data_merged_3_full_wmask_T_15,_s3_sc_data_merged_3_full_wmask_T_13,_s3_sc_data_merged_3_full_wmask_T_11,
    _s3_sc_data_merged_3_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s3_sc_data_merged_3_T_4 = ~s3_sc_data_merged_3_full_wmask; // @[MainPipe.scala 447:7]
  wire [63:0] _s3_sc_data_merged_3_T_5 = _s3_sc_data_merged_3_T_4 & s3_store_data_merged_3; // @[MainPipe.scala 447:19]
  wire [63:0] _s3_sc_data_merged_3_T_6 = s3_sc_data_merged_3_full_wmask & s3_req_amo_data; // @[MainPipe.scala 447:45]
  wire [63:0] s3_sc_data_merged_3 = _s3_sc_data_merged_3_T_5 | _s3_sc_data_merged_3_T_6; // @[MainPipe.scala 447:31]
  wire  _wmask_T_16 = s3_req_word_idx_dup_4 == 3'h4; // @[MainPipe.scala 665:30]
  wire [7:0] wmask_12 = _wmask_T_16 ? 8'hff : 8'h0; // @[MainPipe.scala 664:20]
  wire [7:0] _s3_amo_data_merged_4_full_wmask_T_9 = wmask_12[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_4_full_wmask_T_11 = wmask_12[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_4_full_wmask_T_13 = wmask_12[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_4_full_wmask_T_15 = wmask_12[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_4_full_wmask_T_17 = wmask_12[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_4_full_wmask_T_19 = wmask_12[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_4_full_wmask_T_21 = wmask_12[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_4_full_wmask_T_23 = wmask_12[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s3_amo_data_merged_4_full_wmask = {_s3_amo_data_merged_4_full_wmask_T_23,
    _s3_amo_data_merged_4_full_wmask_T_21,_s3_amo_data_merged_4_full_wmask_T_19,_s3_amo_data_merged_4_full_wmask_T_17,
    _s3_amo_data_merged_4_full_wmask_T_15,_s3_amo_data_merged_4_full_wmask_T_13,_s3_amo_data_merged_4_full_wmask_T_11,
    _s3_amo_data_merged_4_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s3_amo_data_merged_4_T = ~s3_amo_data_merged_4_full_wmask; // @[MainPipe.scala 447:7]
  wire [63:0] _s3_amo_data_merged_4_T_1 = _s3_amo_data_merged_4_T & s3_store_data_merged_4; // @[MainPipe.scala 447:19]
  wire [63:0] _s3_amo_data_merged_4_T_2 = s3_amo_data_merged_4_full_wmask & amoalu_io_out; // @[MainPipe.scala 447:45]
  wire [63:0] s3_amo_data_merged_4 = _s3_amo_data_merged_4_T_1 | _s3_amo_data_merged_4_T_2; // @[MainPipe.scala 447:31]
  wire [7:0] _s3_sc_data_merged_4_T_3 = _wmask_T_16 & _s3_can_do_amo_write_T_24 ? s3_req_amo_mask : 8'h0; // @[MainPipe.scala 671:10]
  wire [7:0] _s3_sc_data_merged_4_full_wmask_T_9 = _s3_sc_data_merged_4_T_3[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_4_full_wmask_T_11 = _s3_sc_data_merged_4_T_3[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_4_full_wmask_T_13 = _s3_sc_data_merged_4_T_3[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_4_full_wmask_T_15 = _s3_sc_data_merged_4_T_3[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_4_full_wmask_T_17 = _s3_sc_data_merged_4_T_3[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_4_full_wmask_T_19 = _s3_sc_data_merged_4_T_3[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_4_full_wmask_T_21 = _s3_sc_data_merged_4_T_3[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_4_full_wmask_T_23 = _s3_sc_data_merged_4_T_3[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s3_sc_data_merged_4_full_wmask = {_s3_sc_data_merged_4_full_wmask_T_23,
    _s3_sc_data_merged_4_full_wmask_T_21,_s3_sc_data_merged_4_full_wmask_T_19,_s3_sc_data_merged_4_full_wmask_T_17,
    _s3_sc_data_merged_4_full_wmask_T_15,_s3_sc_data_merged_4_full_wmask_T_13,_s3_sc_data_merged_4_full_wmask_T_11,
    _s3_sc_data_merged_4_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s3_sc_data_merged_4_T_4 = ~s3_sc_data_merged_4_full_wmask; // @[MainPipe.scala 447:7]
  wire [63:0] _s3_sc_data_merged_4_T_5 = _s3_sc_data_merged_4_T_4 & s3_store_data_merged_4; // @[MainPipe.scala 447:19]
  wire [63:0] _s3_sc_data_merged_4_T_6 = s3_sc_data_merged_4_full_wmask & s3_req_amo_data; // @[MainPipe.scala 447:45]
  wire [63:0] s3_sc_data_merged_4 = _s3_sc_data_merged_4_T_5 | _s3_sc_data_merged_4_T_6; // @[MainPipe.scala 447:31]
  wire  _wmask_T_18 = s3_req_word_idx_dup_5 == 3'h5; // @[MainPipe.scala 665:30]
  wire [7:0] wmask_13 = _wmask_T_18 ? 8'hff : 8'h0; // @[MainPipe.scala 664:20]
  wire [7:0] _s3_amo_data_merged_5_full_wmask_T_9 = wmask_13[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_5_full_wmask_T_11 = wmask_13[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_5_full_wmask_T_13 = wmask_13[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_5_full_wmask_T_15 = wmask_13[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_5_full_wmask_T_17 = wmask_13[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_5_full_wmask_T_19 = wmask_13[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_5_full_wmask_T_21 = wmask_13[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_5_full_wmask_T_23 = wmask_13[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s3_amo_data_merged_5_full_wmask = {_s3_amo_data_merged_5_full_wmask_T_23,
    _s3_amo_data_merged_5_full_wmask_T_21,_s3_amo_data_merged_5_full_wmask_T_19,_s3_amo_data_merged_5_full_wmask_T_17,
    _s3_amo_data_merged_5_full_wmask_T_15,_s3_amo_data_merged_5_full_wmask_T_13,_s3_amo_data_merged_5_full_wmask_T_11,
    _s3_amo_data_merged_5_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s3_amo_data_merged_5_T = ~s3_amo_data_merged_5_full_wmask; // @[MainPipe.scala 447:7]
  wire [63:0] _s3_amo_data_merged_5_T_1 = _s3_amo_data_merged_5_T & s3_store_data_merged_5; // @[MainPipe.scala 447:19]
  wire [63:0] _s3_amo_data_merged_5_T_2 = s3_amo_data_merged_5_full_wmask & amoalu_io_out; // @[MainPipe.scala 447:45]
  wire [63:0] s3_amo_data_merged_5 = _s3_amo_data_merged_5_T_1 | _s3_amo_data_merged_5_T_2; // @[MainPipe.scala 447:31]
  wire [7:0] _s3_sc_data_merged_5_T_3 = _wmask_T_18 & _s3_can_do_amo_write_T_24 ? s3_req_amo_mask : 8'h0; // @[MainPipe.scala 671:10]
  wire [7:0] _s3_sc_data_merged_5_full_wmask_T_9 = _s3_sc_data_merged_5_T_3[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_5_full_wmask_T_11 = _s3_sc_data_merged_5_T_3[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_5_full_wmask_T_13 = _s3_sc_data_merged_5_T_3[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_5_full_wmask_T_15 = _s3_sc_data_merged_5_T_3[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_5_full_wmask_T_17 = _s3_sc_data_merged_5_T_3[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_5_full_wmask_T_19 = _s3_sc_data_merged_5_T_3[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_5_full_wmask_T_21 = _s3_sc_data_merged_5_T_3[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_5_full_wmask_T_23 = _s3_sc_data_merged_5_T_3[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s3_sc_data_merged_5_full_wmask = {_s3_sc_data_merged_5_full_wmask_T_23,
    _s3_sc_data_merged_5_full_wmask_T_21,_s3_sc_data_merged_5_full_wmask_T_19,_s3_sc_data_merged_5_full_wmask_T_17,
    _s3_sc_data_merged_5_full_wmask_T_15,_s3_sc_data_merged_5_full_wmask_T_13,_s3_sc_data_merged_5_full_wmask_T_11,
    _s3_sc_data_merged_5_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s3_sc_data_merged_5_T_4 = ~s3_sc_data_merged_5_full_wmask; // @[MainPipe.scala 447:7]
  wire [63:0] _s3_sc_data_merged_5_T_5 = _s3_sc_data_merged_5_T_4 & s3_store_data_merged_5; // @[MainPipe.scala 447:19]
  wire [63:0] _s3_sc_data_merged_5_T_6 = s3_sc_data_merged_5_full_wmask & s3_req_amo_data; // @[MainPipe.scala 447:45]
  wire [63:0] s3_sc_data_merged_5 = _s3_sc_data_merged_5_T_5 | _s3_sc_data_merged_5_T_6; // @[MainPipe.scala 447:31]
  wire  _wmask_T_20 = s3_req_word_idx_dup_6 == 3'h6; // @[MainPipe.scala 665:30]
  wire [7:0] wmask_14 = _wmask_T_20 ? 8'hff : 8'h0; // @[MainPipe.scala 664:20]
  wire [7:0] _s3_amo_data_merged_6_full_wmask_T_9 = wmask_14[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_6_full_wmask_T_11 = wmask_14[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_6_full_wmask_T_13 = wmask_14[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_6_full_wmask_T_15 = wmask_14[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_6_full_wmask_T_17 = wmask_14[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_6_full_wmask_T_19 = wmask_14[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_6_full_wmask_T_21 = wmask_14[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_6_full_wmask_T_23 = wmask_14[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s3_amo_data_merged_6_full_wmask = {_s3_amo_data_merged_6_full_wmask_T_23,
    _s3_amo_data_merged_6_full_wmask_T_21,_s3_amo_data_merged_6_full_wmask_T_19,_s3_amo_data_merged_6_full_wmask_T_17,
    _s3_amo_data_merged_6_full_wmask_T_15,_s3_amo_data_merged_6_full_wmask_T_13,_s3_amo_data_merged_6_full_wmask_T_11,
    _s3_amo_data_merged_6_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s3_amo_data_merged_6_T = ~s3_amo_data_merged_6_full_wmask; // @[MainPipe.scala 447:7]
  wire [63:0] _s3_amo_data_merged_6_T_1 = _s3_amo_data_merged_6_T & s3_store_data_merged_6; // @[MainPipe.scala 447:19]
  wire [63:0] _s3_amo_data_merged_6_T_2 = s3_amo_data_merged_6_full_wmask & amoalu_io_out; // @[MainPipe.scala 447:45]
  wire [63:0] s3_amo_data_merged_6 = _s3_amo_data_merged_6_T_1 | _s3_amo_data_merged_6_T_2; // @[MainPipe.scala 447:31]
  wire [7:0] _s3_sc_data_merged_6_T_3 = _wmask_T_20 & _s3_can_do_amo_write_T_24 ? s3_req_amo_mask : 8'h0; // @[MainPipe.scala 671:10]
  wire [7:0] _s3_sc_data_merged_6_full_wmask_T_9 = _s3_sc_data_merged_6_T_3[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_6_full_wmask_T_11 = _s3_sc_data_merged_6_T_3[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_6_full_wmask_T_13 = _s3_sc_data_merged_6_T_3[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_6_full_wmask_T_15 = _s3_sc_data_merged_6_T_3[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_6_full_wmask_T_17 = _s3_sc_data_merged_6_T_3[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_6_full_wmask_T_19 = _s3_sc_data_merged_6_T_3[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_6_full_wmask_T_21 = _s3_sc_data_merged_6_T_3[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_6_full_wmask_T_23 = _s3_sc_data_merged_6_T_3[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s3_sc_data_merged_6_full_wmask = {_s3_sc_data_merged_6_full_wmask_T_23,
    _s3_sc_data_merged_6_full_wmask_T_21,_s3_sc_data_merged_6_full_wmask_T_19,_s3_sc_data_merged_6_full_wmask_T_17,
    _s3_sc_data_merged_6_full_wmask_T_15,_s3_sc_data_merged_6_full_wmask_T_13,_s3_sc_data_merged_6_full_wmask_T_11,
    _s3_sc_data_merged_6_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s3_sc_data_merged_6_T_4 = ~s3_sc_data_merged_6_full_wmask; // @[MainPipe.scala 447:7]
  wire [63:0] _s3_sc_data_merged_6_T_5 = _s3_sc_data_merged_6_T_4 & s3_store_data_merged_6; // @[MainPipe.scala 447:19]
  wire [63:0] _s3_sc_data_merged_6_T_6 = s3_sc_data_merged_6_full_wmask & s3_req_amo_data; // @[MainPipe.scala 447:45]
  wire [63:0] s3_sc_data_merged_6 = _s3_sc_data_merged_6_T_5 | _s3_sc_data_merged_6_T_6; // @[MainPipe.scala 447:31]
  wire  _wmask_T_22 = s3_req_word_idx_dup_7 == 3'h7; // @[MainPipe.scala 665:30]
  wire [7:0] wmask_15 = _wmask_T_22 ? 8'hff : 8'h0; // @[MainPipe.scala 664:20]
  wire [7:0] _s3_amo_data_merged_7_full_wmask_T_9 = wmask_15[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_7_full_wmask_T_11 = wmask_15[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_7_full_wmask_T_13 = wmask_15[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_7_full_wmask_T_15 = wmask_15[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_7_full_wmask_T_17 = wmask_15[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_7_full_wmask_T_19 = wmask_15[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_7_full_wmask_T_21 = wmask_15[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_amo_data_merged_7_full_wmask_T_23 = wmask_15[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s3_amo_data_merged_7_full_wmask = {_s3_amo_data_merged_7_full_wmask_T_23,
    _s3_amo_data_merged_7_full_wmask_T_21,_s3_amo_data_merged_7_full_wmask_T_19,_s3_amo_data_merged_7_full_wmask_T_17,
    _s3_amo_data_merged_7_full_wmask_T_15,_s3_amo_data_merged_7_full_wmask_T_13,_s3_amo_data_merged_7_full_wmask_T_11,
    _s3_amo_data_merged_7_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s3_amo_data_merged_7_T = ~s3_amo_data_merged_7_full_wmask; // @[MainPipe.scala 447:7]
  wire [63:0] _s3_amo_data_merged_7_T_1 = _s3_amo_data_merged_7_T & s3_store_data_merged_7; // @[MainPipe.scala 447:19]
  wire [63:0] _s3_amo_data_merged_7_T_2 = s3_amo_data_merged_7_full_wmask & amoalu_io_out; // @[MainPipe.scala 447:45]
  wire [63:0] s3_amo_data_merged_7 = _s3_amo_data_merged_7_T_1 | _s3_amo_data_merged_7_T_2; // @[MainPipe.scala 447:31]
  wire [7:0] _s3_sc_data_merged_7_T_3 = _wmask_T_22 & _s3_can_do_amo_write_T_24 ? s3_req_amo_mask : 8'h0; // @[MainPipe.scala 671:10]
  wire [7:0] _s3_sc_data_merged_7_full_wmask_T_9 = _s3_sc_data_merged_7_T_3[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_7_full_wmask_T_11 = _s3_sc_data_merged_7_T_3[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_7_full_wmask_T_13 = _s3_sc_data_merged_7_T_3[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_7_full_wmask_T_15 = _s3_sc_data_merged_7_T_3[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_7_full_wmask_T_17 = _s3_sc_data_merged_7_T_3[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_7_full_wmask_T_19 = _s3_sc_data_merged_7_T_3[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_7_full_wmask_T_21 = _s3_sc_data_merged_7_T_3[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_7_full_wmask_T_23 = _s3_sc_data_merged_7_T_3[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s3_sc_data_merged_7_full_wmask = {_s3_sc_data_merged_7_full_wmask_T_23,
    _s3_sc_data_merged_7_full_wmask_T_21,_s3_sc_data_merged_7_full_wmask_T_19,_s3_sc_data_merged_7_full_wmask_T_17,
    _s3_sc_data_merged_7_full_wmask_T_15,_s3_sc_data_merged_7_full_wmask_T_13,_s3_sc_data_merged_7_full_wmask_T_11,
    _s3_sc_data_merged_7_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s3_sc_data_merged_7_T_4 = ~s3_sc_data_merged_7_full_wmask; // @[MainPipe.scala 447:7]
  wire [63:0] _s3_sc_data_merged_7_T_5 = _s3_sc_data_merged_7_T_4 & s3_store_data_merged_7; // @[MainPipe.scala 447:19]
  wire [63:0] _s3_sc_data_merged_7_T_6 = s3_sc_data_merged_7_full_wmask & s3_req_amo_data; // @[MainPipe.scala 447:45]
  wire [63:0] s3_sc_data_merged_7 = _s3_sc_data_merged_7_T_5 | _s3_sc_data_merged_7_T_6; // @[MainPipe.scala 447:31]
  reg [63:0] s3_amo_data_merged_reg_0; // @[Reg.scala 16:16]
  reg [63:0] s3_amo_data_merged_reg_1; // @[Reg.scala 16:16]
  reg [63:0] s3_amo_data_merged_reg_2; // @[Reg.scala 16:16]
  reg [63:0] s3_amo_data_merged_reg_3; // @[Reg.scala 16:16]
  reg [63:0] s3_amo_data_merged_reg_4; // @[Reg.scala 16:16]
  reg [63:0] s3_amo_data_merged_reg_5; // @[Reg.scala 16:16]
  reg [63:0] s3_amo_data_merged_reg_6; // @[Reg.scala 16:16]
  reg [63:0] s3_amo_data_merged_reg_7; // @[Reg.scala 16:16]
  wire  _GEN_379 = do_amoalu | s3_s_amoalu; // @[MainPipe.scala 675:18 676:17 649:28]
  wire  _GEN_380 = do_amoalu | s3_s_amoalu_dup_0; // @[MainPipe.scala 675:18 677:31 525:32]
  wire  _GEN_381 = do_amoalu | s3_s_amoalu_dup_1; // @[MainPipe.scala 675:18 677:31 525:32]
  wire  _s3_update_data_cango_T = s3_store_can_go | s3_amo_can_go; // @[MainPipe.scala 707:46]
  reg  miss_update_meta_dup_for_meta_wvalid; // @[Reg.scala 16:16]
  reg  s3_req_probe_dup_for_meta_wvalid; // @[Reg.scala 16:16]
  reg  s3_tag_match_dup_for_meta_wvalid; // @[Reg.scala 16:16]
  reg [1:0] s3_coh_dup_for_meta_wvalid_state; // @[Reg.scala 16:16]
  reg [1:0] s3_req_probe_param_dup_for_meta_wvalid; // @[Reg.scala 16:16]
  wire [3:0] _probe_new_coh_dup_for_meta_wvalid_T = {s3_req_probe_param_dup_for_meta_wvalid,
    s3_coh_dup_for_meta_wvalid_state}; // @[Cat.scala 31:58]
  wire  _probe_new_coh_dup_for_meta_wvalid_T_33 = 4'h5 == _probe_new_coh_dup_for_meta_wvalid_T; // @[Misc.scala 55:20]
  wire [1:0] _probe_new_coh_dup_for_meta_wvalid_T_36 = _probe_new_coh_dup_for_meta_wvalid_T_33 ? 2'h1 : 2'h0; // @[Misc.scala 37:63]
  wire  _probe_new_coh_dup_for_meta_wvalid_T_37 = 4'h6 == _probe_new_coh_dup_for_meta_wvalid_T; // @[Misc.scala 55:20]
  wire [1:0] _probe_new_coh_dup_for_meta_wvalid_T_40 = _probe_new_coh_dup_for_meta_wvalid_T_37 ? 2'h1 :
    _probe_new_coh_dup_for_meta_wvalid_T_36; // @[Misc.scala 37:63]
  wire  _probe_new_coh_dup_for_meta_wvalid_T_41 = 4'h7 == _probe_new_coh_dup_for_meta_wvalid_T; // @[Misc.scala 55:20]
  wire [1:0] _probe_new_coh_dup_for_meta_wvalid_T_44 = _probe_new_coh_dup_for_meta_wvalid_T_41 ? 2'h1 :
    _probe_new_coh_dup_for_meta_wvalid_T_40; // @[Misc.scala 37:63]
  wire  _probe_new_coh_dup_for_meta_wvalid_T_45 = 4'h0 == _probe_new_coh_dup_for_meta_wvalid_T; // @[Misc.scala 55:20]
  wire [1:0] _probe_new_coh_dup_for_meta_wvalid_T_48 = _probe_new_coh_dup_for_meta_wvalid_T_45 ? 2'h0 :
    _probe_new_coh_dup_for_meta_wvalid_T_44; // @[Misc.scala 37:63]
  wire  _probe_new_coh_dup_for_meta_wvalid_T_49 = 4'h1 == _probe_new_coh_dup_for_meta_wvalid_T; // @[Misc.scala 55:20]
  wire [1:0] _probe_new_coh_dup_for_meta_wvalid_T_52 = _probe_new_coh_dup_for_meta_wvalid_T_49 ? 2'h1 :
    _probe_new_coh_dup_for_meta_wvalid_T_48; // @[Misc.scala 37:63]
  wire  _probe_new_coh_dup_for_meta_wvalid_T_53 = 4'h2 == _probe_new_coh_dup_for_meta_wvalid_T; // @[Misc.scala 55:20]
  wire [1:0] _probe_new_coh_dup_for_meta_wvalid_T_56 = _probe_new_coh_dup_for_meta_wvalid_T_53 ? 2'h2 :
    _probe_new_coh_dup_for_meta_wvalid_T_52; // @[Misc.scala 37:63]
  wire  _probe_new_coh_dup_for_meta_wvalid_T_57 = 4'h3 == _probe_new_coh_dup_for_meta_wvalid_T; // @[Misc.scala 55:20]
  wire [1:0] probe_new_coh_dup_for_meta_wvalid_state = _probe_new_coh_dup_for_meta_wvalid_T_57 ? 2'h2 :
    _probe_new_coh_dup_for_meta_wvalid_T_56; // @[Misc.scala 37:63]
  reg [3:0] s3_req_source_dup_for_meta_wvalid; // @[Reg.scala 16:16]
  reg [4:0] s3_req_cmd_dup_for_meta_wvalid; // @[Reg.scala 16:16]
  reg  s3_req_replace_dup_for_meta_wvalid; // @[Reg.scala 16:16]
  reg [1:0] s3_hit_coh_dup_for_meta_wvalid_state; // @[Reg.scala 16:16]
  reg [1:0] s3_new_hit_coh_dup_for_meta_wvalid_state; // @[Reg.scala 16:16]
  wire  _probe_update_meta_dup_for_meta_wvalid_T_1 = s3_coh_dup_for_meta_wvalid_state ==
    probe_new_coh_dup_for_meta_wvalid_state; // @[Metadata.scala 45:46]
  wire  _probe_update_meta_dup_for_meta_wvalid_T_2 = ~_probe_update_meta_dup_for_meta_wvalid_T_1; // @[Metadata.scala 46:40]
  wire  _probe_update_meta_dup_for_meta_wvalid_T_3 = s3_req_probe_dup_for_meta_wvalid &
    s3_tag_match_dup_for_meta_wvalid & _probe_update_meta_dup_for_meta_wvalid_T_2; // @[MainPipe.scala 723:128]
  wire  _store_update_meta_dup_for_meta_wvalid_T_1 = ~s3_req_probe_dup_for_meta_wvalid; // @[MainPipe.scala 725:5]
  wire  _store_update_meta_dup_for_meta_wvalid_T_2 = s3_req_source_dup_for_meta_wvalid == 4'h1 &
    _store_update_meta_dup_for_meta_wvalid_T_1; // @[MainPipe.scala 724:102]
  wire  _store_update_meta_dup_for_meta_wvalid_T_3 = s3_hit_coh_dup_for_meta_wvalid_state ==
    s3_new_hit_coh_dup_for_meta_wvalid_state; // @[Metadata.scala 45:46]
  wire  _store_update_meta_dup_for_meta_wvalid_T_4 = ~_store_update_meta_dup_for_meta_wvalid_T_3; // @[Metadata.scala 46:40]
  wire  store_update_meta_dup_for_meta_wvalid = _store_update_meta_dup_for_meta_wvalid_T_2 &
    _store_update_meta_dup_for_meta_wvalid_T_4; // @[MainPipe.scala 725:40]
  wire  _amo_update_meta_dup_for_meta_wvalid_T = s3_req_source_dup_for_meta_wvalid == 4'h2; // @[MainPipe.scala 727:81]
  wire  _amo_update_meta_dup_for_meta_wvalid_T_2 = s3_req_source_dup_for_meta_wvalid == 4'h2 &
    _store_update_meta_dup_for_meta_wvalid_T_1; // @[MainPipe.scala 727:98]
  wire  amo_update_meta_dup_for_meta_wvalid = _amo_update_meta_dup_for_meta_wvalid_T_2 &
    _store_update_meta_dup_for_meta_wvalid_T_4; // @[MainPipe.scala 728:40]
  wire  _s3_probe_ttob_override_T = s3_valid & s3_probe_ttob_check_resp_bits_toN; // @[MainPipe.scala 803:41]
  wire  _s3_probe_ttob_override_T_1 = s3_coh_dup_for_meta_wvalid_state == 2'h2; // @[Metadata.scala 44:36]
  wire  s3_probe_ttob_override = _s3_probe_ttob_override_T & _s3_probe_ttob_override_T_1; // @[MainPipe.scala 805:39]
  wire  probe_update_meta_dup_for_meta_wvalid = s3_probe_ttob_override | _probe_update_meta_dup_for_meta_wvalid_T_3; // @[MainPipe.scala 812:32 813:44]
  wire  _update_meta_dup_for_meta_wvalid_T = miss_update_meta_dup_for_meta_wvalid |
    probe_update_meta_dup_for_meta_wvalid; // @[MainPipe.scala 731:43]
  wire  _update_meta_dup_for_meta_wvalid_T_1 = _update_meta_dup_for_meta_wvalid_T |
    store_update_meta_dup_for_meta_wvalid; // @[MainPipe.scala 732:44]
  wire  _update_meta_dup_for_meta_wvalid_T_2 = _update_meta_dup_for_meta_wvalid_T_1 |
    amo_update_meta_dup_for_meta_wvalid; // @[MainPipe.scala 733:44]
  wire  update_meta_dup_for_meta_wvalid = _update_meta_dup_for_meta_wvalid_T_2 & ~s3_req_replace_dup_for_meta_wvalid; // @[MainPipe.scala 735:5]
  reg  s3_valid_dup_for_meta_wvalid; // @[MainPipe.scala 737:46]
  reg  s3_amo_hit_dup_for_meta_wvalid; // @[Reg.scala 16:16]
  reg  s3_s_amoalu_dup_for_meta_wvalid; // @[MainPipe.scala 739:49]
  wire  _amo_wait_amoalu_dup_for_meta_wvalid_T_1 = s3_req_cmd_dup_for_meta_wvalid != 5'h6; // @[MainPipe.scala 741:37]
  wire  _amo_wait_amoalu_dup_for_meta_wvalid_T_2 = _amo_update_meta_dup_for_meta_wvalid_T &
    _amo_wait_amoalu_dup_for_meta_wvalid_T_1; // @[MainPipe.scala 740:98]
  wire  _amo_wait_amoalu_dup_for_meta_wvalid_T_3 = s3_req_cmd_dup_for_meta_wvalid != 5'h7; // @[MainPipe.scala 742:37]
  wire  amo_wait_amoalu_dup_for_meta_wvalid = _amo_wait_amoalu_dup_for_meta_wvalid_T_2 &
    _amo_wait_amoalu_dup_for_meta_wvalid_T_3; // @[MainPipe.scala 741:47]
  wire  do_amoalu_dup_for_meta_wvalid = amo_wait_amoalu_dup_for_meta_wvalid & s3_valid_dup_for_meta_wvalid & ~
    s3_s_amoalu_dup_for_meta_wvalid; // @[MainPipe.scala 743:110]
  reg  s3_store_hit_dup_for_meta_wvalid; // @[Reg.scala 16:16]
  reg [35:0] s3_req_addr_dup_for_meta_wvalid; // @[Reg.scala 16:16]
  wire  s3_can_do_amo_dup_for_meta_wvalid = miss_update_meta_dup_for_meta_wvalid &
    _store_update_meta_dup_for_meta_wvalid_T_1 & _amo_update_meta_dup_for_meta_wvalid_T |
    s3_amo_hit_dup_for_meta_wvalid; // @[MainPipe.scala 747:172]
  wire  _s3_lr_dup_for_meta_wvalid_T_2 = _store_update_meta_dup_for_meta_wvalid_T_1 &
    _amo_update_meta_dup_for_meta_wvalid_T; // @[MainPipe.scala 750:71]
  wire  s3_lr_dup_for_meta_wvalid = _store_update_meta_dup_for_meta_wvalid_T_1 &
    _amo_update_meta_dup_for_meta_wvalid_T & s3_req_cmd_dup_for_meta_wvalid == 5'h6; // @[MainPipe.scala 750:126]
  wire  _s3_sc_dup_for_meta_wvalid_T_3 = s3_req_cmd_dup_for_meta_wvalid == 5'h7; // @[MainPipe.scala 751:161]
  wire  s3_sc_dup_for_meta_wvalid = _s3_lr_dup_for_meta_wvalid_T_2 & s3_req_cmd_dup_for_meta_wvalid == 5'h7; // @[MainPipe.scala 751:126]
  reg [35:0] lrsc_addr_dup_for_meta_wvalid; // @[MainPipe.scala 752:43]
  reg [5:0] lrsc_count_dup_for_meta_wvalid; // @[MainPipe.scala 753:48]
  wire [35:0] _lrsc_addr_dup_for_meta_wvalid_T_1 = {s3_req_addr_dup_for_meta_wvalid[35:6], 6'h0}; // @[L1Cache.scala 86:59]
  wire [5:0] _lrsc_count_dup_for_meta_wvalid_T_1 = lrsc_count_dup_for_meta_wvalid - 6'h1; // @[MainPipe.scala 765:72]
  wire  lrsc_valid_dup_for_meta_wvalid = lrsc_count_dup_for_meta_wvalid > 6'h8; // @[MainPipe.scala 768:73]
  wire  s3_lrsc_addr_match_dup_for_meta_wvalid = lrsc_valid_dup_for_meta_wvalid & lrsc_addr_dup_for_meta_wvalid ==
    _lrsc_addr_dup_for_meta_wvalid_T_1; // @[MainPipe.scala 769:81]
  wire  s3_sc_fail_dup_for_meta_wvalid = s3_sc_dup_for_meta_wvalid & ~s3_lrsc_addr_match_dup_for_meta_wvalid; // @[MainPipe.scala 770:68]
  wire  _s3_can_do_amo_write_dup_for_meta_wvalid_T_11 = s3_req_cmd_dup_for_meta_wvalid == 5'h4 |
    s3_req_cmd_dup_for_meta_wvalid == 5'h9 | s3_req_cmd_dup_for_meta_wvalid == 5'ha | s3_req_cmd_dup_for_meta_wvalid
     == 5'hb; // @[CacheConstants.scala 52:90]
  wire  _s3_can_do_amo_write_dup_for_meta_wvalid_T_20 = s3_req_cmd_dup_for_meta_wvalid == 5'h8 |
    s3_req_cmd_dup_for_meta_wvalid == 5'hc | s3_req_cmd_dup_for_meta_wvalid == 5'hd | s3_req_cmd_dup_for_meta_wvalid
     == 5'he | s3_req_cmd_dup_for_meta_wvalid == 5'hf; // @[CacheConstants.scala 53:114]
  wire  _s3_can_do_amo_write_dup_for_meta_wvalid_T_21 = _s3_can_do_amo_write_dup_for_meta_wvalid_T_11 |
    _s3_can_do_amo_write_dup_for_meta_wvalid_T_20; // @[CacheConstants.scala 54:44]
  wire  _s3_can_do_amo_write_dup_for_meta_wvalid_T_22 = s3_req_cmd_dup_for_meta_wvalid == 5'h1 |
    s3_req_cmd_dup_for_meta_wvalid == 5'h11 | _s3_sc_dup_for_meta_wvalid_T_3 |
    _s3_can_do_amo_write_dup_for_meta_wvalid_T_21; // @[CacheConstants.scala 57:76]
  wire  s3_can_do_amo_write_dup_for_meta_wvalid = s3_can_do_amo_dup_for_meta_wvalid &
    _s3_can_do_amo_write_dup_for_meta_wvalid_T_22 & ~s3_sc_fail_dup_for_meta_wvalid; // @[MainPipe.scala 771:129]
  wire  update_data_dup_for_meta_wvalid = miss_update_meta_dup_for_meta_wvalid | s3_store_hit_dup_for_meta_wvalid |
    s3_can_do_amo_write_dup_for_meta_wvalid; // @[MainPipe.scala 772:112]
  wire  s3_probe_can_go_dup_for_meta_wvalid = s3_req_probe_dup_for_meta_wvalid & io_wb_ready_dup_8; // @[MainPipe.scala 774:80]
  wire  _s3_store_can_go_dup_for_meta_wvalid_T_7 = io_data_write_ready_dup_8 | ~update_data_dup_for_meta_wvalid; // @[MainPipe.scala 779:45]
  wire  s3_store_can_go_dup_for_meta_wvalid = _store_update_meta_dup_for_meta_wvalid_T_2 &
    _s3_store_can_go_dup_for_meta_wvalid_T_7; // @[MainPipe.scala 778:70]
  wire  _s3_amo_can_go_dup_for_meta_wvalid_T_5 = s3_amo_hit_dup_for_meta_wvalid &
    _s3_store_can_go_dup_for_meta_wvalid_T_7; // @[MainPipe.scala 781:68]
  wire  _s3_amo_can_go_dup_for_meta_wvalid_T_7 = s3_s_amoalu_dup_for_meta_wvalid | ~
    amo_wait_amoalu_dup_for_meta_wvalid; // @[MainPipe.scala 783:39]
  wire  s3_amo_can_go_dup_for_meta_wvalid = _s3_amo_can_go_dup_for_meta_wvalid_T_5 &
    _s3_amo_can_go_dup_for_meta_wvalid_T_7; // @[MainPipe.scala 782:83]
  wire  _s3_miss_can_go_dup_for_meta_wvalid_T_5 = miss_update_meta_dup_for_meta_wvalid &
    _s3_store_can_go_dup_for_meta_wvalid_T_7; // @[MainPipe.scala 785:68]
  wire  _s3_miss_can_go_dup_for_meta_wvalid_T_8 = _s3_miss_can_go_dup_for_meta_wvalid_T_5 &
    _s3_amo_can_go_dup_for_meta_wvalid_T_7; // @[MainPipe.scala 786:83]
  wire  _s3_miss_can_go_dup_for_meta_wvalid_T_9 = _s3_miss_can_go_dup_for_meta_wvalid_T_8 & io_tag_write_ready_dup_8; // @[MainPipe.scala 787:81]
  wire  s3_miss_can_go_dup_for_meta_wvalid = _s3_miss_can_go_dup_for_meta_wvalid_T_9 & io_wb_ready_dup_8; // @[MainPipe.scala 788:43]
  wire  _s3_replace_can_go_dup_for_meta_wvalid_T_1 = s3_coh_dup_for_meta_wvalid_state == 2'h0 | io_wb_ready_dup_8; // @[MainPipe.scala 791:65]
  wire  s3_replace_can_go_dup_for_meta_wvalid = s3_req_replace_dup_for_meta_wvalid &
    _s3_replace_can_go_dup_for_meta_wvalid_T_1; // @[MainPipe.scala 790:84]
  wire  _s3_can_go_dup_for_meta_wvalid_T = s3_probe_can_go_dup_for_meta_wvalid | s3_store_can_go_dup_for_meta_wvalid; // @[MainPipe.scala 792:77]
  wire  _s3_can_go_dup_for_meta_wvalid_T_1 = _s3_can_go_dup_for_meta_wvalid_T | s3_amo_can_go_dup_for_meta_wvalid; // @[MainPipe.scala 793:42]
  wire  _s3_can_go_dup_for_meta_wvalid_T_2 = _s3_can_go_dup_for_meta_wvalid_T_1 | s3_miss_can_go_dup_for_meta_wvalid; // @[MainPipe.scala 794:40]
  wire  s3_can_go_dup_for_meta_wvalid = _s3_can_go_dup_for_meta_wvalid_T_2 | s3_replace_can_go_dup_for_meta_wvalid; // @[MainPipe.scala 795:41]
  wire  s3_fire_dup_for_meta_wvalid = s3_valid_dup_for_meta_wvalid & s3_can_go_dup_for_meta_wvalid; // @[MainPipe.scala 798:68]
  wire  _GEN_402 = do_amoalu_dup_for_meta_wvalid | s3_s_amoalu_dup_for_meta_wvalid; // @[MainPipe.scala 799:41 739:49 799:76]
  wire [1:0] s3_probe_new_coh_state = s3_probe_ttob_override ? 2'h0 : probe_new_coh_dup_for_meta_wvalid_state; // @[MainPipe.scala 807:29]
  wire  _new_coh_T = store_update_meta_dup_for_meta_wvalid | amo_update_meta_dup_for_meta_wvalid; // @[MainPipe.scala 823:48]
  wire [1:0] _new_coh_T_1_state = _new_coh_T ? s3_new_hit_coh_dup_for_meta_wvalid_state : 2'h0; // @[MainPipe.scala 822:10]
  wire [1:0] _new_coh_T_2_state = probe_update_meta ? s3_probe_new_coh_state : _new_coh_T_1_state; // @[MainPipe.scala 819:8]
  wire  _GEN_405 = s3_fire_dup_for_meta_wvalid ? 1'h0 : s3_valid_dup_for_meta_wvalid; // @[MainPipe.scala 831:44 737:46 831:76]
  reg  miss_update_meta_dup_for_err_wvalid; // @[Reg.scala 16:16]
  reg  s3_req_probe_dup_for_err_wvalid; // @[Reg.scala 16:16]
  reg  s3_tag_match_dup_for_err_wvalid; // @[Reg.scala 16:16]
  reg [1:0] s3_coh_dup_for_err_wvalid_state; // @[Reg.scala 16:16]
  reg [1:0] s3_req_probe_param_dup_for_err_wvalid; // @[Reg.scala 16:16]
  wire [3:0] _probe_new_coh_dup_for_err_wvalid_T = {s3_req_probe_param_dup_for_err_wvalid,
    s3_coh_dup_for_err_wvalid_state}; // @[Cat.scala 31:58]
  wire  _probe_new_coh_dup_for_err_wvalid_T_33 = 4'h5 == _probe_new_coh_dup_for_err_wvalid_T; // @[Misc.scala 55:20]
  wire [1:0] _probe_new_coh_dup_for_err_wvalid_T_36 = _probe_new_coh_dup_for_err_wvalid_T_33 ? 2'h1 : 2'h0; // @[Misc.scala 37:63]
  wire  _probe_new_coh_dup_for_err_wvalid_T_37 = 4'h6 == _probe_new_coh_dup_for_err_wvalid_T; // @[Misc.scala 55:20]
  wire [1:0] _probe_new_coh_dup_for_err_wvalid_T_40 = _probe_new_coh_dup_for_err_wvalid_T_37 ? 2'h1 :
    _probe_new_coh_dup_for_err_wvalid_T_36; // @[Misc.scala 37:63]
  wire  _probe_new_coh_dup_for_err_wvalid_T_41 = 4'h7 == _probe_new_coh_dup_for_err_wvalid_T; // @[Misc.scala 55:20]
  wire [1:0] _probe_new_coh_dup_for_err_wvalid_T_44 = _probe_new_coh_dup_for_err_wvalid_T_41 ? 2'h1 :
    _probe_new_coh_dup_for_err_wvalid_T_40; // @[Misc.scala 37:63]
  wire  _probe_new_coh_dup_for_err_wvalid_T_45 = 4'h0 == _probe_new_coh_dup_for_err_wvalid_T; // @[Misc.scala 55:20]
  wire [1:0] _probe_new_coh_dup_for_err_wvalid_T_48 = _probe_new_coh_dup_for_err_wvalid_T_45 ? 2'h0 :
    _probe_new_coh_dup_for_err_wvalid_T_44; // @[Misc.scala 37:63]
  wire  _probe_new_coh_dup_for_err_wvalid_T_49 = 4'h1 == _probe_new_coh_dup_for_err_wvalid_T; // @[Misc.scala 55:20]
  wire [1:0] _probe_new_coh_dup_for_err_wvalid_T_52 = _probe_new_coh_dup_for_err_wvalid_T_49 ? 2'h1 :
    _probe_new_coh_dup_for_err_wvalid_T_48; // @[Misc.scala 37:63]
  wire  _probe_new_coh_dup_for_err_wvalid_T_53 = 4'h2 == _probe_new_coh_dup_for_err_wvalid_T; // @[Misc.scala 55:20]
  wire [1:0] _probe_new_coh_dup_for_err_wvalid_T_56 = _probe_new_coh_dup_for_err_wvalid_T_53 ? 2'h2 :
    _probe_new_coh_dup_for_err_wvalid_T_52; // @[Misc.scala 37:63]
  wire  _probe_new_coh_dup_for_err_wvalid_T_57 = 4'h3 == _probe_new_coh_dup_for_err_wvalid_T; // @[Misc.scala 55:20]
  wire [1:0] probe_new_coh_dup_for_err_wvalid_state = _probe_new_coh_dup_for_err_wvalid_T_57 ? 2'h2 :
    _probe_new_coh_dup_for_err_wvalid_T_56; // @[Misc.scala 37:63]
  reg [3:0] s3_req_source_dup_for_err_wvalid; // @[Reg.scala 16:16]
  reg [4:0] s3_req_cmd_dup_for_err_wvalid; // @[Reg.scala 16:16]
  reg  s3_req_replace_dup_for_err_wvalid; // @[Reg.scala 16:16]
  reg [1:0] s3_hit_coh_dup_for_err_wvalid_state; // @[Reg.scala 16:16]
  reg [1:0] s3_new_hit_coh_dup_for_err_wvalid_state; // @[Reg.scala 16:16]
  wire  _probe_update_meta_dup_for_err_wvalid_T_1 = s3_coh_dup_for_err_wvalid_state ==
    probe_new_coh_dup_for_err_wvalid_state; // @[Metadata.scala 45:46]
  wire  _probe_update_meta_dup_for_err_wvalid_T_2 = ~_probe_update_meta_dup_for_err_wvalid_T_1; // @[Metadata.scala 46:40]
  wire  probe_update_meta_dup_for_err_wvalid = s3_req_probe_dup_for_err_wvalid & s3_tag_match_dup_for_err_wvalid &
    _probe_update_meta_dup_for_err_wvalid_T_2; // @[MainPipe.scala 848:116]
  wire  _store_update_meta_dup_for_err_wvalid_T_1 = ~s3_req_probe_dup_for_err_wvalid; // @[MainPipe.scala 850:5]
  wire  _store_update_meta_dup_for_err_wvalid_T_2 = s3_req_source_dup_for_err_wvalid == 4'h1 &
    _store_update_meta_dup_for_err_wvalid_T_1; // @[MainPipe.scala 849:100]
  wire  _store_update_meta_dup_for_err_wvalid_T_3 = s3_hit_coh_dup_for_err_wvalid_state ==
    s3_new_hit_coh_dup_for_err_wvalid_state; // @[Metadata.scala 45:46]
  wire  _store_update_meta_dup_for_err_wvalid_T_4 = ~_store_update_meta_dup_for_err_wvalid_T_3; // @[Metadata.scala 46:40]
  wire  store_update_meta_dup_for_err_wvalid = _store_update_meta_dup_for_err_wvalid_T_2 &
    _store_update_meta_dup_for_err_wvalid_T_4; // @[MainPipe.scala 850:39]
  wire  _amo_update_meta_dup_for_err_wvalid_T = s3_req_source_dup_for_err_wvalid == 4'h2; // @[MainPipe.scala 852:79]
  wire  _amo_update_meta_dup_for_err_wvalid_T_2 = s3_req_source_dup_for_err_wvalid == 4'h2 &
    _store_update_meta_dup_for_err_wvalid_T_1; // @[MainPipe.scala 852:96]
  wire  amo_update_meta_dup_for_err_wvalid = _amo_update_meta_dup_for_err_wvalid_T_2 &
    _store_update_meta_dup_for_err_wvalid_T_4; // @[MainPipe.scala 853:39]
  wire  _update_meta_dup_for_err_wvalid_T = miss_update_meta_dup_for_err_wvalid |
    probe_update_meta_dup_for_err_wvalid; // @[MainPipe.scala 856:42]
  wire  _update_meta_dup_for_err_wvalid_T_1 = _update_meta_dup_for_err_wvalid_T |
    store_update_meta_dup_for_err_wvalid; // @[MainPipe.scala 857:43]
  wire  _update_meta_dup_for_err_wvalid_T_2 = _update_meta_dup_for_err_wvalid_T_1 |
    amo_update_meta_dup_for_err_wvalid; // @[MainPipe.scala 858:43]
  wire  update_meta_dup_for_err_wvalid = _update_meta_dup_for_err_wvalid_T_2 & ~s3_req_replace_dup_for_err_wvalid; // @[MainPipe.scala 860:5]
  reg  s3_valid_dup_for_err_wvalid; // @[MainPipe.scala 862:45]
  reg  s3_amo_hit_dup_for_err_wvalid; // @[Reg.scala 16:16]
  reg  s3_s_amoalu_dup_for_err_wvalid; // @[MainPipe.scala 864:48]
  wire  _amo_wait_amoalu_dup_for_err_wvalid_T_1 = s3_req_cmd_dup_for_err_wvalid != 5'h6; // @[MainPipe.scala 866:36]
  wire  _amo_wait_amoalu_dup_for_err_wvalid_T_2 = _amo_update_meta_dup_for_err_wvalid_T &
    _amo_wait_amoalu_dup_for_err_wvalid_T_1; // @[MainPipe.scala 865:96]
  wire  _amo_wait_amoalu_dup_for_err_wvalid_T_3 = s3_req_cmd_dup_for_err_wvalid != 5'h7; // @[MainPipe.scala 867:36]
  wire  amo_wait_amoalu_dup_for_err_wvalid = _amo_wait_amoalu_dup_for_err_wvalid_T_2 &
    _amo_wait_amoalu_dup_for_err_wvalid_T_3; // @[MainPipe.scala 866:46]
  wire  do_amoalu_dup_for_err_wvalid = amo_wait_amoalu_dup_for_err_wvalid & s3_valid_dup_for_err_wvalid & ~
    s3_s_amoalu_dup_for_err_wvalid; // @[MainPipe.scala 868:107]
  reg  s3_store_hit_dup_for_err_wvalid; // @[Reg.scala 16:16]
  reg [35:0] s3_req_addr_dup_for_err_wvalid; // @[Reg.scala 16:16]
  wire  s3_can_do_amo_dup_for_err_wvalid = miss_update_meta_dup_for_err_wvalid &
    _store_update_meta_dup_for_err_wvalid_T_1 & _amo_update_meta_dup_for_err_wvalid_T | s3_amo_hit_dup_for_err_wvalid
    ; // @[MainPipe.scala 872:168]
  wire  _s3_lr_dup_for_err_wvalid_T_2 = _store_update_meta_dup_for_err_wvalid_T_1 &
    _amo_update_meta_dup_for_err_wvalid_T; // @[MainPipe.scala 875:69]
  wire  s3_lr_dup_for_err_wvalid = _store_update_meta_dup_for_err_wvalid_T_1 & _amo_update_meta_dup_for_err_wvalid_T
     & s3_req_cmd_dup_for_err_wvalid == 5'h6; // @[MainPipe.scala 875:123]
  wire  _s3_sc_dup_for_err_wvalid_T_3 = s3_req_cmd_dup_for_err_wvalid == 5'h7; // @[MainPipe.scala 876:157]
  wire  s3_sc_dup_for_err_wvalid = _s3_lr_dup_for_err_wvalid_T_2 & s3_req_cmd_dup_for_err_wvalid == 5'h7; // @[MainPipe.scala 876:123]
  reg [35:0] lrsc_addr_dup_for_err_wvalid; // @[MainPipe.scala 877:42]
  reg [5:0] lrsc_count_dup_for_err_wvalid; // @[MainPipe.scala 878:47]
  wire [35:0] _lrsc_addr_dup_for_err_wvalid_T_1 = {s3_req_addr_dup_for_err_wvalid[35:6], 6'h0}; // @[L1Cache.scala 86:59]
  wire [5:0] _lrsc_count_dup_for_err_wvalid_T_1 = lrsc_count_dup_for_err_wvalid - 6'h1; // @[MainPipe.scala 890:70]
  wire  lrsc_valid_dup_for_err_wvalid = lrsc_count_dup_for_err_wvalid > 6'h8; // @[MainPipe.scala 893:71]
  wire  s3_lrsc_addr_match_dup_for_err_wvalid = lrsc_valid_dup_for_err_wvalid & lrsc_addr_dup_for_err_wvalid ==
    _lrsc_addr_dup_for_err_wvalid_T_1; // @[MainPipe.scala 894:79]
  wire  s3_sc_fail_dup_for_err_wvalid = s3_sc_dup_for_err_wvalid & ~s3_lrsc_addr_match_dup_for_err_wvalid; // @[MainPipe.scala 895:66]
  wire  _s3_can_do_amo_write_dup_for_err_wvalid_T_11 = s3_req_cmd_dup_for_err_wvalid == 5'h4 |
    s3_req_cmd_dup_for_err_wvalid == 5'h9 | s3_req_cmd_dup_for_err_wvalid == 5'ha | s3_req_cmd_dup_for_err_wvalid == 5'hb
    ; // @[CacheConstants.scala 52:90]
  wire  _s3_can_do_amo_write_dup_for_err_wvalid_T_20 = s3_req_cmd_dup_for_err_wvalid == 5'h8 |
    s3_req_cmd_dup_for_err_wvalid == 5'hc | s3_req_cmd_dup_for_err_wvalid == 5'hd | s3_req_cmd_dup_for_err_wvalid == 5'he
     | s3_req_cmd_dup_for_err_wvalid == 5'hf; // @[CacheConstants.scala 53:114]
  wire  _s3_can_do_amo_write_dup_for_err_wvalid_T_21 = _s3_can_do_amo_write_dup_for_err_wvalid_T_11 |
    _s3_can_do_amo_write_dup_for_err_wvalid_T_20; // @[CacheConstants.scala 54:44]
  wire  _s3_can_do_amo_write_dup_for_err_wvalid_T_22 = s3_req_cmd_dup_for_err_wvalid == 5'h1 |
    s3_req_cmd_dup_for_err_wvalid == 5'h11 | _s3_sc_dup_for_err_wvalid_T_3 |
    _s3_can_do_amo_write_dup_for_err_wvalid_T_21; // @[CacheConstants.scala 57:76]
  wire  s3_can_do_amo_write_dup_for_err_wvalid = s3_can_do_amo_dup_for_err_wvalid &
    _s3_can_do_amo_write_dup_for_err_wvalid_T_22 & ~s3_sc_fail_dup_for_err_wvalid; // @[MainPipe.scala 896:126]
  wire  update_data_dup_for_err_wvalid = miss_update_meta_dup_for_err_wvalid | s3_store_hit_dup_for_err_wvalid |
    s3_can_do_amo_write_dup_for_err_wvalid; // @[MainPipe.scala 897:109]
  wire  s3_probe_can_go_dup_for_err_wvalid = s3_req_probe_dup_for_err_wvalid & io_wb_ready_dup_10; // @[MainPipe.scala 899:78]
  wire  _s3_store_can_go_dup_for_err_wvalid_T_7 = io_data_write_ready_dup_10 | ~update_data_dup_for_err_wvalid; // @[MainPipe.scala 904:44]
  wire  s3_store_can_go_dup_for_err_wvalid = _store_update_meta_dup_for_err_wvalid_T_2 &
    _s3_store_can_go_dup_for_err_wvalid_T_7; // @[MainPipe.scala 903:69]
  wire  _s3_amo_can_go_dup_for_err_wvalid_T_5 = s3_amo_hit_dup_for_err_wvalid &
    _s3_store_can_go_dup_for_err_wvalid_T_7; // @[MainPipe.scala 906:67]
  wire  _s3_amo_can_go_dup_for_err_wvalid_T_7 = s3_s_amoalu_dup_for_err_wvalid | ~amo_wait_amoalu_dup_for_err_wvalid; // @[MainPipe.scala 908:38]
  wire  s3_amo_can_go_dup_for_err_wvalid = _s3_amo_can_go_dup_for_err_wvalid_T_5 &
    _s3_amo_can_go_dup_for_err_wvalid_T_7; // @[MainPipe.scala 907:81]
  wire  _s3_miss_can_go_dup_for_err_wvalid_T_5 = miss_update_meta_dup_for_err_wvalid &
    _s3_store_can_go_dup_for_err_wvalid_T_7; // @[MainPipe.scala 910:67]
  wire  _s3_miss_can_go_dup_for_err_wvalid_T_8 = _s3_miss_can_go_dup_for_err_wvalid_T_5 &
    _s3_amo_can_go_dup_for_err_wvalid_T_7; // @[MainPipe.scala 911:81]
  wire  _s3_miss_can_go_dup_for_err_wvalid_T_9 = _s3_miss_can_go_dup_for_err_wvalid_T_8 & io_tag_write_ready_dup_10; // @[MainPipe.scala 912:79]
  wire  s3_miss_can_go_dup_for_err_wvalid = _s3_miss_can_go_dup_for_err_wvalid_T_9 & io_wb_ready_dup_10; // @[MainPipe.scala 913:42]
  wire  _s3_replace_can_go_dup_for_err_wvalid_T_1 = s3_coh_dup_for_err_wvalid_state == 2'h0 | io_wb_ready_dup_10; // @[MainPipe.scala 916:64]
  wire  s3_replace_can_go_dup_for_err_wvalid = s3_req_replace_dup_for_err_wvalid &
    _s3_replace_can_go_dup_for_err_wvalid_T_1; // @[MainPipe.scala 915:82]
  wire  _s3_can_go_dup_for_err_wvalid_T = s3_probe_can_go_dup_for_err_wvalid | s3_store_can_go_dup_for_err_wvalid; // @[MainPipe.scala 917:75]
  wire  _s3_can_go_dup_for_err_wvalid_T_1 = _s3_can_go_dup_for_err_wvalid_T | s3_amo_can_go_dup_for_err_wvalid; // @[MainPipe.scala 918:41]
  wire  _s3_can_go_dup_for_err_wvalid_T_2 = _s3_can_go_dup_for_err_wvalid_T_1 | s3_miss_can_go_dup_for_err_wvalid; // @[MainPipe.scala 919:39]
  wire  s3_can_go_dup_for_err_wvalid = _s3_can_go_dup_for_err_wvalid_T_2 | s3_replace_can_go_dup_for_err_wvalid; // @[MainPipe.scala 920:40]
  wire  s3_fire_dup_for_err_wvalid = s3_valid_dup_for_err_wvalid & s3_can_go_dup_for_err_wvalid; // @[MainPipe.scala 923:66]
  wire  _GEN_426 = do_amoalu_dup_for_err_wvalid | s3_s_amoalu_dup_for_err_wvalid; // @[MainPipe.scala 924:40 864:48 924:74]
  wire  _GEN_428 = s3_fire_dup_for_err_wvalid ? 1'h0 : s3_valid_dup_for_err_wvalid; // @[MainPipe.scala 928:43 862:45 928:74]
  reg  miss_update_meta_dup_for_tag_wvalid; // @[Reg.scala 16:16]
  reg  s3_req_probe_dup_for_tag_wvalid; // @[Reg.scala 16:16]
  reg [1:0] s3_coh_dup_for_tag_wvalid_state; // @[Reg.scala 16:16]
  reg [3:0] s3_req_source_dup_for_tag_wvalid; // @[Reg.scala 16:16]
  reg [4:0] s3_req_cmd_dup_for_tag_wvalid; // @[Reg.scala 16:16]
  reg  s3_req_replace_dup_for_tag_wvalid; // @[Reg.scala 16:16]
  wire  _store_update_meta_dup_for_tag_wvalid_T_1 = ~s3_req_probe_dup_for_tag_wvalid; // @[MainPipe.scala 946:5]
  wire  _store_update_meta_dup_for_tag_wvalid_T_2 = s3_req_source_dup_for_tag_wvalid == 4'h1 &
    _store_update_meta_dup_for_tag_wvalid_T_1; // @[MainPipe.scala 945:100]
  wire  _amo_update_meta_dup_for_tag_wvalid_T = s3_req_source_dup_for_tag_wvalid == 4'h2; // @[MainPipe.scala 948:79]
  reg  s3_valid_dup_for_tag_wvalid; // @[MainPipe.scala 958:45]
  reg  s3_amo_hit_dup_for_tag_wvalid; // @[Reg.scala 16:16]
  reg  s3_s_amoalu_dup_for_tag_wvalid; // @[MainPipe.scala 960:48]
  wire  _amo_wait_amoalu_dup_for_tag_wvalid_T_1 = s3_req_cmd_dup_for_tag_wvalid != 5'h6; // @[MainPipe.scala 962:36]
  wire  _amo_wait_amoalu_dup_for_tag_wvalid_T_2 = _amo_update_meta_dup_for_tag_wvalid_T &
    _amo_wait_amoalu_dup_for_tag_wvalid_T_1; // @[MainPipe.scala 961:96]
  wire  _amo_wait_amoalu_dup_for_tag_wvalid_T_3 = s3_req_cmd_dup_for_tag_wvalid != 5'h7; // @[MainPipe.scala 963:36]
  wire  amo_wait_amoalu_dup_for_tag_wvalid = _amo_wait_amoalu_dup_for_tag_wvalid_T_2 &
    _amo_wait_amoalu_dup_for_tag_wvalid_T_3; // @[MainPipe.scala 962:46]
  wire  do_amoalu_dup_for_tag_wvalid = amo_wait_amoalu_dup_for_tag_wvalid & s3_valid_dup_for_tag_wvalid & ~
    s3_s_amoalu_dup_for_tag_wvalid; // @[MainPipe.scala 964:107]
  reg  s3_store_hit_dup_for_tag_wvalid; // @[Reg.scala 16:16]
  reg [35:0] s3_req_addr_dup_for_tag_wvalid; // @[Reg.scala 16:16]
  wire  s3_can_do_amo_dup_for_tag_wvalid = miss_update_meta_dup_for_tag_wvalid &
    _store_update_meta_dup_for_tag_wvalid_T_1 & _amo_update_meta_dup_for_tag_wvalid_T | s3_amo_hit_dup_for_tag_wvalid
    ; // @[MainPipe.scala 968:168]
  wire  _s3_lr_dup_for_tag_wvalid_T_2 = _store_update_meta_dup_for_tag_wvalid_T_1 &
    _amo_update_meta_dup_for_tag_wvalid_T; // @[MainPipe.scala 971:69]
  wire  s3_lr_dup_for_tag_wvalid = _store_update_meta_dup_for_tag_wvalid_T_1 & _amo_update_meta_dup_for_tag_wvalid_T
     & s3_req_cmd_dup_for_tag_wvalid == 5'h6; // @[MainPipe.scala 971:123]
  wire  _s3_sc_dup_for_tag_wvalid_T_3 = s3_req_cmd_dup_for_tag_wvalid == 5'h7; // @[MainPipe.scala 972:157]
  wire  s3_sc_dup_for_tag_wvalid = _s3_lr_dup_for_tag_wvalid_T_2 & s3_req_cmd_dup_for_tag_wvalid == 5'h7; // @[MainPipe.scala 972:123]
  reg [35:0] lrsc_addr_dup_for_tag_wvalid; // @[MainPipe.scala 973:42]
  reg [5:0] lrsc_count_dup_for_tag_wvalid; // @[MainPipe.scala 974:47]
  wire [35:0] _lrsc_addr_dup_for_tag_wvalid_T_1 = {s3_req_addr_dup_for_tag_wvalid[35:6], 6'h0}; // @[L1Cache.scala 86:59]
  wire [5:0] _lrsc_count_dup_for_tag_wvalid_T_1 = lrsc_count_dup_for_tag_wvalid - 6'h1; // @[MainPipe.scala 986:70]
  wire  lrsc_valid_dup_for_tag_wvalid = lrsc_count_dup_for_tag_wvalid > 6'h8; // @[MainPipe.scala 989:71]
  wire  s3_lrsc_addr_match_dup_for_tag_wvalid = lrsc_valid_dup_for_tag_wvalid & lrsc_addr_dup_for_tag_wvalid ==
    _lrsc_addr_dup_for_tag_wvalid_T_1; // @[MainPipe.scala 990:79]
  wire  s3_sc_fail_dup_for_tag_wvalid = s3_sc_dup_for_tag_wvalid & ~s3_lrsc_addr_match_dup_for_tag_wvalid; // @[MainPipe.scala 991:66]
  wire  _s3_can_do_amo_write_dup_for_tag_wvalid_T_11 = s3_req_cmd_dup_for_tag_wvalid == 5'h4 |
    s3_req_cmd_dup_for_tag_wvalid == 5'h9 | s3_req_cmd_dup_for_tag_wvalid == 5'ha | s3_req_cmd_dup_for_tag_wvalid == 5'hb
    ; // @[CacheConstants.scala 52:90]
  wire  _s3_can_do_amo_write_dup_for_tag_wvalid_T_20 = s3_req_cmd_dup_for_tag_wvalid == 5'h8 |
    s3_req_cmd_dup_for_tag_wvalid == 5'hc | s3_req_cmd_dup_for_tag_wvalid == 5'hd | s3_req_cmd_dup_for_tag_wvalid == 5'he
     | s3_req_cmd_dup_for_tag_wvalid == 5'hf; // @[CacheConstants.scala 53:114]
  wire  _s3_can_do_amo_write_dup_for_tag_wvalid_T_21 = _s3_can_do_amo_write_dup_for_tag_wvalid_T_11 |
    _s3_can_do_amo_write_dup_for_tag_wvalid_T_20; // @[CacheConstants.scala 54:44]
  wire  _s3_can_do_amo_write_dup_for_tag_wvalid_T_22 = s3_req_cmd_dup_for_tag_wvalid == 5'h1 |
    s3_req_cmd_dup_for_tag_wvalid == 5'h11 | _s3_sc_dup_for_tag_wvalid_T_3 |
    _s3_can_do_amo_write_dup_for_tag_wvalid_T_21; // @[CacheConstants.scala 57:76]
  wire  s3_can_do_amo_write_dup_for_tag_wvalid = s3_can_do_amo_dup_for_tag_wvalid &
    _s3_can_do_amo_write_dup_for_tag_wvalid_T_22 & ~s3_sc_fail_dup_for_tag_wvalid; // @[MainPipe.scala 992:126]
  wire  update_data_dup_for_tag_wvalid = miss_update_meta_dup_for_tag_wvalid | s3_store_hit_dup_for_tag_wvalid |
    s3_can_do_amo_write_dup_for_tag_wvalid; // @[MainPipe.scala 993:109]
  wire  s3_probe_can_go_dup_for_tag_wvalid = s3_req_probe_dup_for_tag_wvalid & io_wb_ready_dup_9; // @[MainPipe.scala 995:78]
  wire  _s3_store_can_go_dup_for_tag_wvalid_T_7 = io_data_write_ready_dup_9 | ~update_data_dup_for_tag_wvalid; // @[MainPipe.scala 1000:44]
  wire  s3_store_can_go_dup_for_tag_wvalid = _store_update_meta_dup_for_tag_wvalid_T_2 &
    _s3_store_can_go_dup_for_tag_wvalid_T_7; // @[MainPipe.scala 999:69]
  wire  _s3_amo_can_go_dup_for_tag_wvalid_T_5 = s3_amo_hit_dup_for_tag_wvalid &
    _s3_store_can_go_dup_for_tag_wvalid_T_7; // @[MainPipe.scala 1002:67]
  wire  _s3_amo_can_go_dup_for_tag_wvalid_T_7 = s3_s_amoalu_dup_for_tag_wvalid | ~amo_wait_amoalu_dup_for_tag_wvalid; // @[MainPipe.scala 1004:38]
  wire  s3_amo_can_go_dup_for_tag_wvalid = _s3_amo_can_go_dup_for_tag_wvalid_T_5 &
    _s3_amo_can_go_dup_for_tag_wvalid_T_7; // @[MainPipe.scala 1003:81]
  wire  _s3_miss_can_go_dup_for_tag_wvalid_T_5 = miss_update_meta_dup_for_tag_wvalid &
    _s3_store_can_go_dup_for_tag_wvalid_T_7; // @[MainPipe.scala 1006:67]
  wire  _s3_miss_can_go_dup_for_tag_wvalid_T_8 = _s3_miss_can_go_dup_for_tag_wvalid_T_5 &
    _s3_amo_can_go_dup_for_tag_wvalid_T_7; // @[MainPipe.scala 1007:81]
  wire  _s3_miss_can_go_dup_for_tag_wvalid_T_9 = _s3_miss_can_go_dup_for_tag_wvalid_T_8 & io_tag_write_ready_dup_9; // @[MainPipe.scala 1008:79]
  wire  s3_miss_can_go_dup_for_tag_wvalid = _s3_miss_can_go_dup_for_tag_wvalid_T_9 & io_wb_ready_dup_9; // @[MainPipe.scala 1009:42]
  wire  _s3_replace_can_go_dup_for_tag_wvalid_T_1 = s3_coh_dup_for_tag_wvalid_state == 2'h0 | io_wb_ready_dup_9; // @[MainPipe.scala 1012:64]
  wire  s3_replace_can_go_dup_for_tag_wvalid = s3_req_replace_dup_for_tag_wvalid &
    _s3_replace_can_go_dup_for_tag_wvalid_T_1; // @[MainPipe.scala 1011:82]
  wire  _s3_can_go_dup_for_tag_wvalid_T = s3_probe_can_go_dup_for_tag_wvalid | s3_store_can_go_dup_for_tag_wvalid; // @[MainPipe.scala 1013:75]
  wire  _s3_can_go_dup_for_tag_wvalid_T_1 = _s3_can_go_dup_for_tag_wvalid_T | s3_amo_can_go_dup_for_tag_wvalid; // @[MainPipe.scala 1014:41]
  wire  _s3_can_go_dup_for_tag_wvalid_T_2 = _s3_can_go_dup_for_tag_wvalid_T_1 | s3_miss_can_go_dup_for_tag_wvalid; // @[MainPipe.scala 1015:39]
  wire  s3_can_go_dup_for_tag_wvalid = _s3_can_go_dup_for_tag_wvalid_T_2 | s3_replace_can_go_dup_for_tag_wvalid; // @[MainPipe.scala 1016:40]
  wire  s3_fire_dup_for_tag_wvalid = s3_valid_dup_for_tag_wvalid & s3_can_go_dup_for_tag_wvalid; // @[MainPipe.scala 1019:66]
  wire  _GEN_449 = do_amoalu_dup_for_tag_wvalid | s3_s_amoalu_dup_for_tag_wvalid; // @[MainPipe.scala 1020:{40,74} 960:48]
  wire  _GEN_451 = s3_fire_dup_for_tag_wvalid ? 1'h0 : s3_valid_dup_for_tag_wvalid; // @[MainPipe.scala 1024:{43,74} 958:45]
  reg  miss_update_meta_dup_for_data_wvalid; // @[Reg.scala 16:16]
  reg  s3_req_probe_dup_for_data_wvalid; // @[Reg.scala 16:16]
  reg [1:0] s3_coh_dup_for_data_wvalid_state; // @[Reg.scala 16:16]
  reg [3:0] s3_req_source_dup_for_data_wvalid; // @[Reg.scala 16:16]
  reg [4:0] s3_req_cmd_dup_for_data_wvalid; // @[Reg.scala 16:16]
  reg  s3_req_replace_dup_for_data_wvalid; // @[Reg.scala 16:16]
  wire  _store_update_meta_dup_for_data_wvalid_T_1 = ~s3_req_probe_dup_for_data_wvalid; // @[MainPipe.scala 1042:5]
  wire  _store_update_meta_dup_for_data_wvalid_T_2 = s3_req_source_dup_for_data_wvalid == 4'h1 &
    _store_update_meta_dup_for_data_wvalid_T_1; // @[MainPipe.scala 1041:102]
  wire  _amo_update_meta_dup_for_data_wvalid_T = s3_req_source_dup_for_data_wvalid == 4'h2; // @[MainPipe.scala 1044:81]
  reg  s3_valid_dup_for_data_wvalid; // @[MainPipe.scala 1054:46]
  reg  s3_amo_hit_dup_for_data_wvalid; // @[Reg.scala 16:16]
  reg  s3_s_amoalu_dup_for_data_wvalid; // @[MainPipe.scala 1056:49]
  wire  _amo_wait_amoalu_dup_for_data_wvalid_T_1 = s3_req_cmd_dup_for_data_wvalid != 5'h6; // @[MainPipe.scala 1058:37]
  wire  _amo_wait_amoalu_dup_for_data_wvalid_T_2 = _amo_update_meta_dup_for_data_wvalid_T &
    _amo_wait_amoalu_dup_for_data_wvalid_T_1; // @[MainPipe.scala 1057:98]
  wire  _amo_wait_amoalu_dup_for_data_wvalid_T_3 = s3_req_cmd_dup_for_data_wvalid != 5'h7; // @[MainPipe.scala 1059:37]
  wire  amo_wait_amoalu_dup_for_data_wvalid = _amo_wait_amoalu_dup_for_data_wvalid_T_2 &
    _amo_wait_amoalu_dup_for_data_wvalid_T_3; // @[MainPipe.scala 1058:47]
  wire  do_amoalu_dup_for_data_wvalid = amo_wait_amoalu_dup_for_data_wvalid & s3_valid_dup_for_data_wvalid & ~
    s3_s_amoalu_dup_for_data_wvalid; // @[MainPipe.scala 1060:110]
  reg  s3_store_hit_dup_for_data_wvalid; // @[Reg.scala 16:16]
  reg [35:0] s3_req_addr_dup_for_data_wvalid; // @[Reg.scala 16:16]
  wire  s3_can_do_amo_dup_for_data_wvalid = miss_update_meta_dup_for_data_wvalid &
    _store_update_meta_dup_for_data_wvalid_T_1 & _amo_update_meta_dup_for_data_wvalid_T |
    s3_amo_hit_dup_for_data_wvalid; // @[MainPipe.scala 1064:172]
  wire  _s3_lr_dup_for_data_wvalid_T_2 = _store_update_meta_dup_for_data_wvalid_T_1 &
    _amo_update_meta_dup_for_data_wvalid_T; // @[MainPipe.scala 1067:71]
  wire  s3_lr_dup_for_data_wvalid = _store_update_meta_dup_for_data_wvalid_T_1 &
    _amo_update_meta_dup_for_data_wvalid_T & s3_req_cmd_dup_for_data_wvalid == 5'h6; // @[MainPipe.scala 1067:126]
  wire  _s3_sc_dup_for_data_wvalid_T_3 = s3_req_cmd_dup_for_data_wvalid == 5'h7; // @[MainPipe.scala 1068:161]
  wire  s3_sc_dup_for_data_wvalid = _s3_lr_dup_for_data_wvalid_T_2 & s3_req_cmd_dup_for_data_wvalid == 5'h7; // @[MainPipe.scala 1068:126]
  reg [35:0] lrsc_addr_dup_for_data_wvalid; // @[MainPipe.scala 1069:43]
  reg [5:0] lrsc_count_dup_for_data_wvalid; // @[MainPipe.scala 1070:48]
  wire [35:0] _lrsc_addr_dup_for_data_wvalid_T_1 = {s3_req_addr_dup_for_data_wvalid[35:6], 6'h0}; // @[L1Cache.scala 86:59]
  wire [5:0] _lrsc_count_dup_for_data_wvalid_T_1 = lrsc_count_dup_for_data_wvalid - 6'h1; // @[MainPipe.scala 1082:72]
  wire  lrsc_valid_dup_for_data_wvalid = lrsc_count_dup_for_data_wvalid > 6'h8; // @[MainPipe.scala 1085:73]
  wire  s3_lrsc_addr_match_dup_for_data_wvalid = lrsc_valid_dup_for_data_wvalid & lrsc_addr_dup_for_data_wvalid ==
    _lrsc_addr_dup_for_data_wvalid_T_1; // @[MainPipe.scala 1086:81]
  wire  s3_sc_fail_dup_for_data_wvalid = s3_sc_dup_for_data_wvalid & ~s3_lrsc_addr_match_dup_for_data_wvalid; // @[MainPipe.scala 1087:68]
  wire  _s3_can_do_amo_write_dup_for_data_wvalid_T_11 = s3_req_cmd_dup_for_data_wvalid == 5'h4 |
    s3_req_cmd_dup_for_data_wvalid == 5'h9 | s3_req_cmd_dup_for_data_wvalid == 5'ha | s3_req_cmd_dup_for_data_wvalid
     == 5'hb; // @[CacheConstants.scala 52:90]
  wire  _s3_can_do_amo_write_dup_for_data_wvalid_T_20 = s3_req_cmd_dup_for_data_wvalid == 5'h8 |
    s3_req_cmd_dup_for_data_wvalid == 5'hc | s3_req_cmd_dup_for_data_wvalid == 5'hd | s3_req_cmd_dup_for_data_wvalid
     == 5'he | s3_req_cmd_dup_for_data_wvalid == 5'hf; // @[CacheConstants.scala 53:114]
  wire  _s3_can_do_amo_write_dup_for_data_wvalid_T_21 = _s3_can_do_amo_write_dup_for_data_wvalid_T_11 |
    _s3_can_do_amo_write_dup_for_data_wvalid_T_20; // @[CacheConstants.scala 54:44]
  wire  _s3_can_do_amo_write_dup_for_data_wvalid_T_22 = s3_req_cmd_dup_for_data_wvalid == 5'h1 |
    s3_req_cmd_dup_for_data_wvalid == 5'h11 | _s3_sc_dup_for_data_wvalid_T_3 |
    _s3_can_do_amo_write_dup_for_data_wvalid_T_21; // @[CacheConstants.scala 57:76]
  wire  _s3_can_do_amo_write_dup_for_data_wvalid_T_24 = ~s3_sc_fail_dup_for_data_wvalid; // @[MainPipe.scala 1088:132]
  wire  s3_can_do_amo_write_dup_for_data_wvalid = s3_can_do_amo_dup_for_data_wvalid &
    _s3_can_do_amo_write_dup_for_data_wvalid_T_22 & ~s3_sc_fail_dup_for_data_wvalid; // @[MainPipe.scala 1088:129]
  wire  update_data_dup_for_data_wvalid = miss_update_meta_dup_for_data_wvalid | s3_store_hit_dup_for_data_wvalid |
    s3_can_do_amo_write_dup_for_data_wvalid; // @[MainPipe.scala 1089:112]
  wire  s3_probe_can_go_dup_for_data_wvalid = s3_req_probe_dup_for_data_wvalid & io_wb_ready_dup_0; // @[MainPipe.scala 1091:80]
  wire  _s3_store_can_go_dup_for_data_wvalid_T_7 = io_data_write_ready_dup_0 | ~update_data_dup_for_data_wvalid; // @[MainPipe.scala 1096:45]
  wire  s3_store_can_go_dup_for_data_wvalid = _store_update_meta_dup_for_data_wvalid_T_2 &
    _s3_store_can_go_dup_for_data_wvalid_T_7; // @[MainPipe.scala 1095:70]
  wire  _s3_amo_can_go_dup_for_data_wvalid_T_5 = s3_amo_hit_dup_for_data_wvalid &
    _s3_store_can_go_dup_for_data_wvalid_T_7; // @[MainPipe.scala 1098:68]
  wire  _s3_amo_can_go_dup_for_data_wvalid_T_7 = s3_s_amoalu_dup_for_data_wvalid | ~
    amo_wait_amoalu_dup_for_data_wvalid; // @[MainPipe.scala 1100:39]
  wire  s3_amo_can_go_dup_for_data_wvalid = _s3_amo_can_go_dup_for_data_wvalid_T_5 &
    _s3_amo_can_go_dup_for_data_wvalid_T_7; // @[MainPipe.scala 1099:83]
  wire  _s3_miss_can_go_dup_for_data_wvalid_T_5 = miss_update_meta_dup_for_data_wvalid &
    _s3_store_can_go_dup_for_data_wvalid_T_7; // @[MainPipe.scala 1102:68]
  wire  _s3_miss_can_go_dup_for_data_wvalid_T_8 = _s3_miss_can_go_dup_for_data_wvalid_T_5 &
    _s3_amo_can_go_dup_for_data_wvalid_T_7; // @[MainPipe.scala 1103:83]
  wire  _s3_miss_can_go_dup_for_data_wvalid_T_9 = _s3_miss_can_go_dup_for_data_wvalid_T_8 & io_tag_write_ready_dup_0; // @[MainPipe.scala 1104:81]
  wire  s3_miss_can_go_dup_for_data_wvalid = _s3_miss_can_go_dup_for_data_wvalid_T_9 & io_wb_ready_dup_0; // @[MainPipe.scala 1105:43]
  wire  _s3_replace_can_go_dup_for_data_wvalid_T_1 = s3_coh_dup_for_data_wvalid_state == 2'h0 | io_wb_ready_dup_0; // @[MainPipe.scala 1108:65]
  wire  s3_replace_can_go_dup_for_data_wvalid = s3_req_replace_dup_for_data_wvalid &
    _s3_replace_can_go_dup_for_data_wvalid_T_1; // @[MainPipe.scala 1107:84]
  wire  _s3_can_go_dup_for_data_wvalid_T = s3_probe_can_go_dup_for_data_wvalid | s3_store_can_go_dup_for_data_wvalid; // @[MainPipe.scala 1109:77]
  wire  _s3_can_go_dup_for_data_wvalid_T_1 = _s3_can_go_dup_for_data_wvalid_T | s3_amo_can_go_dup_for_data_wvalid; // @[MainPipe.scala 1110:42]
  wire  _s3_can_go_dup_for_data_wvalid_T_2 = _s3_can_go_dup_for_data_wvalid_T_1 | s3_miss_can_go_dup_for_data_wvalid; // @[MainPipe.scala 1111:40]
  wire  s3_can_go_dup_for_data_wvalid = _s3_can_go_dup_for_data_wvalid_T_2 | s3_replace_can_go_dup_for_data_wvalid; // @[MainPipe.scala 1112:41]
  wire  s3_update_data_cango_dup_for_data_wvalid = s3_store_can_go_dup_for_data_wvalid |
    s3_amo_can_go_dup_for_data_wvalid | s3_miss_can_go_dup_for_data_wvalid; // @[MainPipe.scala 1114:126]
  wire  s3_fire_dup_for_data_wvalid = s3_valid_dup_for_data_wvalid & s3_can_go_dup_for_data_wvalid; // @[MainPipe.scala 1116:68]
  wire  _GEN_472 = do_amoalu_dup_for_data_wvalid | s3_s_amoalu_dup_for_data_wvalid; // @[MainPipe.scala 1117:41 1056:49 1117:76]
  reg [7:0] s3_banked_store_wmask_dup_for_data_wvalid; // @[Reg.scala 16:16]
  reg [2:0] s3_req_word_idx_dup_for_data_wvalid; // @[Reg.scala 16:16]
  wire [7:0] _banked_wmask_T = 8'h1 << s3_req_word_idx_dup_for_data_wvalid; // @[OneHot.scala 57:35]
  wire [7:0] _banked_wmask_T_1 = s3_can_do_amo_write_dup_for_data_wvalid ? _banked_wmask_T : 8'h0; // @[MainPipe.scala 1128:10]
  wire [7:0] _banked_wmask_T_2 = s3_store_hit_dup_for_data_wvalid ? s3_banked_store_wmask_dup_for_data_wvalid :
    _banked_wmask_T_1; // @[MainPipe.scala 1125:8]
  reg [63:0] s3_req_amo_data_dup_for_data_wvalid; // @[Reg.scala 16:16]
  reg [7:0] s3_req_amo_mask_dup_for_data_wvalid; // @[Reg.scala 16:16]
  wire  _s3_sc_data_merged_dup_for_data_wvalid_0_T_2 = s3_req_word_idx_dup_for_data_wvalid == 3'h0 &
    _s3_can_do_amo_write_dup_for_data_wvalid_T_24; // @[MainPipe.scala 1144:54]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_0_T_3 = _s3_sc_data_merged_dup_for_data_wvalid_0_T_2 ?
    s3_req_amo_mask_dup_for_data_wvalid : 8'h0; // @[MainPipe.scala 1143:10]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_0_full_wmask_T_9 = _s3_sc_data_merged_dup_for_data_wvalid_0_T_3[0]
     ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_0_full_wmask_T_11 = _s3_sc_data_merged_dup_for_data_wvalid_0_T_3[1
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_0_full_wmask_T_13 = _s3_sc_data_merged_dup_for_data_wvalid_0_T_3[2
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_0_full_wmask_T_15 = _s3_sc_data_merged_dup_for_data_wvalid_0_T_3[3
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_0_full_wmask_T_17 = _s3_sc_data_merged_dup_for_data_wvalid_0_T_3[4
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_0_full_wmask_T_19 = _s3_sc_data_merged_dup_for_data_wvalid_0_T_3[5
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_0_full_wmask_T_21 = _s3_sc_data_merged_dup_for_data_wvalid_0_T_3[6
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_0_full_wmask_T_23 = _s3_sc_data_merged_dup_for_data_wvalid_0_T_3[7
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s3_sc_data_merged_dup_for_data_wvalid_0_full_wmask = {
    _s3_sc_data_merged_dup_for_data_wvalid_0_full_wmask_T_23,_s3_sc_data_merged_dup_for_data_wvalid_0_full_wmask_T_21,
    _s3_sc_data_merged_dup_for_data_wvalid_0_full_wmask_T_19,_s3_sc_data_merged_dup_for_data_wvalid_0_full_wmask_T_17,
    _s3_sc_data_merged_dup_for_data_wvalid_0_full_wmask_T_15,_s3_sc_data_merged_dup_for_data_wvalid_0_full_wmask_T_13,
    _s3_sc_data_merged_dup_for_data_wvalid_0_full_wmask_T_11,_s3_sc_data_merged_dup_for_data_wvalid_0_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s3_sc_data_merged_dup_for_data_wvalid_0_T_4 = ~s3_sc_data_merged_dup_for_data_wvalid_0_full_wmask; // @[MainPipe.scala 447:7]
  wire [63:0] _s3_sc_data_merged_dup_for_data_wvalid_0_T_5 = _s3_sc_data_merged_dup_for_data_wvalid_0_T_4 &
    s3_store_data_merged_0; // @[MainPipe.scala 447:19]
  wire [63:0] _s3_sc_data_merged_dup_for_data_wvalid_0_T_6 = s3_sc_data_merged_dup_for_data_wvalid_0_full_wmask &
    s3_req_amo_data_dup_for_data_wvalid; // @[MainPipe.scala 447:45]
  wire [63:0] s3_sc_data_merged_dup_for_data_wvalid_0 = _s3_sc_data_merged_dup_for_data_wvalid_0_T_5 |
    _s3_sc_data_merged_dup_for_data_wvalid_0_T_6; // @[MainPipe.scala 447:31]
  wire  _s3_sc_data_merged_dup_for_data_wvalid_1_T_2 = s3_req_word_idx_dup_for_data_wvalid == 3'h1 &
    _s3_can_do_amo_write_dup_for_data_wvalid_T_24; // @[MainPipe.scala 1144:54]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_1_T_3 = _s3_sc_data_merged_dup_for_data_wvalid_1_T_2 ?
    s3_req_amo_mask_dup_for_data_wvalid : 8'h0; // @[MainPipe.scala 1143:10]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_1_full_wmask_T_9 = _s3_sc_data_merged_dup_for_data_wvalid_1_T_3[0]
     ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_1_full_wmask_T_11 = _s3_sc_data_merged_dup_for_data_wvalid_1_T_3[1
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_1_full_wmask_T_13 = _s3_sc_data_merged_dup_for_data_wvalid_1_T_3[2
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_1_full_wmask_T_15 = _s3_sc_data_merged_dup_for_data_wvalid_1_T_3[3
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_1_full_wmask_T_17 = _s3_sc_data_merged_dup_for_data_wvalid_1_T_3[4
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_1_full_wmask_T_19 = _s3_sc_data_merged_dup_for_data_wvalid_1_T_3[5
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_1_full_wmask_T_21 = _s3_sc_data_merged_dup_for_data_wvalid_1_T_3[6
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_1_full_wmask_T_23 = _s3_sc_data_merged_dup_for_data_wvalid_1_T_3[7
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s3_sc_data_merged_dup_for_data_wvalid_1_full_wmask = {
    _s3_sc_data_merged_dup_for_data_wvalid_1_full_wmask_T_23,_s3_sc_data_merged_dup_for_data_wvalid_1_full_wmask_T_21,
    _s3_sc_data_merged_dup_for_data_wvalid_1_full_wmask_T_19,_s3_sc_data_merged_dup_for_data_wvalid_1_full_wmask_T_17,
    _s3_sc_data_merged_dup_for_data_wvalid_1_full_wmask_T_15,_s3_sc_data_merged_dup_for_data_wvalid_1_full_wmask_T_13,
    _s3_sc_data_merged_dup_for_data_wvalid_1_full_wmask_T_11,_s3_sc_data_merged_dup_for_data_wvalid_1_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s3_sc_data_merged_dup_for_data_wvalid_1_T_4 = ~s3_sc_data_merged_dup_for_data_wvalid_1_full_wmask; // @[MainPipe.scala 447:7]
  wire [63:0] _s3_sc_data_merged_dup_for_data_wvalid_1_T_5 = _s3_sc_data_merged_dup_for_data_wvalid_1_T_4 &
    s3_store_data_merged_1; // @[MainPipe.scala 447:19]
  wire [63:0] _s3_sc_data_merged_dup_for_data_wvalid_1_T_6 = s3_sc_data_merged_dup_for_data_wvalid_1_full_wmask &
    s3_req_amo_data_dup_for_data_wvalid; // @[MainPipe.scala 447:45]
  wire [63:0] s3_sc_data_merged_dup_for_data_wvalid_1 = _s3_sc_data_merged_dup_for_data_wvalid_1_T_5 |
    _s3_sc_data_merged_dup_for_data_wvalid_1_T_6; // @[MainPipe.scala 447:31]
  wire  _s3_sc_data_merged_dup_for_data_wvalid_2_T_2 = s3_req_word_idx_dup_for_data_wvalid == 3'h2 &
    _s3_can_do_amo_write_dup_for_data_wvalid_T_24; // @[MainPipe.scala 1144:54]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_2_T_3 = _s3_sc_data_merged_dup_for_data_wvalid_2_T_2 ?
    s3_req_amo_mask_dup_for_data_wvalid : 8'h0; // @[MainPipe.scala 1143:10]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_2_full_wmask_T_9 = _s3_sc_data_merged_dup_for_data_wvalid_2_T_3[0]
     ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_2_full_wmask_T_11 = _s3_sc_data_merged_dup_for_data_wvalid_2_T_3[1
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_2_full_wmask_T_13 = _s3_sc_data_merged_dup_for_data_wvalid_2_T_3[2
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_2_full_wmask_T_15 = _s3_sc_data_merged_dup_for_data_wvalid_2_T_3[3
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_2_full_wmask_T_17 = _s3_sc_data_merged_dup_for_data_wvalid_2_T_3[4
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_2_full_wmask_T_19 = _s3_sc_data_merged_dup_for_data_wvalid_2_T_3[5
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_2_full_wmask_T_21 = _s3_sc_data_merged_dup_for_data_wvalid_2_T_3[6
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_2_full_wmask_T_23 = _s3_sc_data_merged_dup_for_data_wvalid_2_T_3[7
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s3_sc_data_merged_dup_for_data_wvalid_2_full_wmask = {
    _s3_sc_data_merged_dup_for_data_wvalid_2_full_wmask_T_23,_s3_sc_data_merged_dup_for_data_wvalid_2_full_wmask_T_21,
    _s3_sc_data_merged_dup_for_data_wvalid_2_full_wmask_T_19,_s3_sc_data_merged_dup_for_data_wvalid_2_full_wmask_T_17,
    _s3_sc_data_merged_dup_for_data_wvalid_2_full_wmask_T_15,_s3_sc_data_merged_dup_for_data_wvalid_2_full_wmask_T_13,
    _s3_sc_data_merged_dup_for_data_wvalid_2_full_wmask_T_11,_s3_sc_data_merged_dup_for_data_wvalid_2_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s3_sc_data_merged_dup_for_data_wvalid_2_T_4 = ~s3_sc_data_merged_dup_for_data_wvalid_2_full_wmask; // @[MainPipe.scala 447:7]
  wire [63:0] _s3_sc_data_merged_dup_for_data_wvalid_2_T_5 = _s3_sc_data_merged_dup_for_data_wvalid_2_T_4 &
    s3_store_data_merged_2; // @[MainPipe.scala 447:19]
  wire [63:0] _s3_sc_data_merged_dup_for_data_wvalid_2_T_6 = s3_sc_data_merged_dup_for_data_wvalid_2_full_wmask &
    s3_req_amo_data_dup_for_data_wvalid; // @[MainPipe.scala 447:45]
  wire [63:0] s3_sc_data_merged_dup_for_data_wvalid_2 = _s3_sc_data_merged_dup_for_data_wvalid_2_T_5 |
    _s3_sc_data_merged_dup_for_data_wvalid_2_T_6; // @[MainPipe.scala 447:31]
  wire  _s3_sc_data_merged_dup_for_data_wvalid_3_T_2 = s3_req_word_idx_dup_for_data_wvalid == 3'h3 &
    _s3_can_do_amo_write_dup_for_data_wvalid_T_24; // @[MainPipe.scala 1144:54]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_3_T_3 = _s3_sc_data_merged_dup_for_data_wvalid_3_T_2 ?
    s3_req_amo_mask_dup_for_data_wvalid : 8'h0; // @[MainPipe.scala 1143:10]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_3_full_wmask_T_9 = _s3_sc_data_merged_dup_for_data_wvalid_3_T_3[0]
     ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_3_full_wmask_T_11 = _s3_sc_data_merged_dup_for_data_wvalid_3_T_3[1
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_3_full_wmask_T_13 = _s3_sc_data_merged_dup_for_data_wvalid_3_T_3[2
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_3_full_wmask_T_15 = _s3_sc_data_merged_dup_for_data_wvalid_3_T_3[3
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_3_full_wmask_T_17 = _s3_sc_data_merged_dup_for_data_wvalid_3_T_3[4
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_3_full_wmask_T_19 = _s3_sc_data_merged_dup_for_data_wvalid_3_T_3[5
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_3_full_wmask_T_21 = _s3_sc_data_merged_dup_for_data_wvalid_3_T_3[6
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_3_full_wmask_T_23 = _s3_sc_data_merged_dup_for_data_wvalid_3_T_3[7
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s3_sc_data_merged_dup_for_data_wvalid_3_full_wmask = {
    _s3_sc_data_merged_dup_for_data_wvalid_3_full_wmask_T_23,_s3_sc_data_merged_dup_for_data_wvalid_3_full_wmask_T_21,
    _s3_sc_data_merged_dup_for_data_wvalid_3_full_wmask_T_19,_s3_sc_data_merged_dup_for_data_wvalid_3_full_wmask_T_17,
    _s3_sc_data_merged_dup_for_data_wvalid_3_full_wmask_T_15,_s3_sc_data_merged_dup_for_data_wvalid_3_full_wmask_T_13,
    _s3_sc_data_merged_dup_for_data_wvalid_3_full_wmask_T_11,_s3_sc_data_merged_dup_for_data_wvalid_3_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s3_sc_data_merged_dup_for_data_wvalid_3_T_4 = ~s3_sc_data_merged_dup_for_data_wvalid_3_full_wmask; // @[MainPipe.scala 447:7]
  wire [63:0] _s3_sc_data_merged_dup_for_data_wvalid_3_T_5 = _s3_sc_data_merged_dup_for_data_wvalid_3_T_4 &
    s3_store_data_merged_3; // @[MainPipe.scala 447:19]
  wire [63:0] _s3_sc_data_merged_dup_for_data_wvalid_3_T_6 = s3_sc_data_merged_dup_for_data_wvalid_3_full_wmask &
    s3_req_amo_data_dup_for_data_wvalid; // @[MainPipe.scala 447:45]
  wire [63:0] s3_sc_data_merged_dup_for_data_wvalid_3 = _s3_sc_data_merged_dup_for_data_wvalid_3_T_5 |
    _s3_sc_data_merged_dup_for_data_wvalid_3_T_6; // @[MainPipe.scala 447:31]
  wire  _s3_sc_data_merged_dup_for_data_wvalid_4_T_2 = s3_req_word_idx_dup_for_data_wvalid == 3'h4 &
    _s3_can_do_amo_write_dup_for_data_wvalid_T_24; // @[MainPipe.scala 1144:54]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_4_T_3 = _s3_sc_data_merged_dup_for_data_wvalid_4_T_2 ?
    s3_req_amo_mask_dup_for_data_wvalid : 8'h0; // @[MainPipe.scala 1143:10]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_4_full_wmask_T_9 = _s3_sc_data_merged_dup_for_data_wvalid_4_T_3[0]
     ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_4_full_wmask_T_11 = _s3_sc_data_merged_dup_for_data_wvalid_4_T_3[1
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_4_full_wmask_T_13 = _s3_sc_data_merged_dup_for_data_wvalid_4_T_3[2
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_4_full_wmask_T_15 = _s3_sc_data_merged_dup_for_data_wvalid_4_T_3[3
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_4_full_wmask_T_17 = _s3_sc_data_merged_dup_for_data_wvalid_4_T_3[4
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_4_full_wmask_T_19 = _s3_sc_data_merged_dup_for_data_wvalid_4_T_3[5
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_4_full_wmask_T_21 = _s3_sc_data_merged_dup_for_data_wvalid_4_T_3[6
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_4_full_wmask_T_23 = _s3_sc_data_merged_dup_for_data_wvalid_4_T_3[7
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s3_sc_data_merged_dup_for_data_wvalid_4_full_wmask = {
    _s3_sc_data_merged_dup_for_data_wvalid_4_full_wmask_T_23,_s3_sc_data_merged_dup_for_data_wvalid_4_full_wmask_T_21,
    _s3_sc_data_merged_dup_for_data_wvalid_4_full_wmask_T_19,_s3_sc_data_merged_dup_for_data_wvalid_4_full_wmask_T_17,
    _s3_sc_data_merged_dup_for_data_wvalid_4_full_wmask_T_15,_s3_sc_data_merged_dup_for_data_wvalid_4_full_wmask_T_13,
    _s3_sc_data_merged_dup_for_data_wvalid_4_full_wmask_T_11,_s3_sc_data_merged_dup_for_data_wvalid_4_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s3_sc_data_merged_dup_for_data_wvalid_4_T_4 = ~s3_sc_data_merged_dup_for_data_wvalid_4_full_wmask; // @[MainPipe.scala 447:7]
  wire [63:0] _s3_sc_data_merged_dup_for_data_wvalid_4_T_5 = _s3_sc_data_merged_dup_for_data_wvalid_4_T_4 &
    s3_store_data_merged_4; // @[MainPipe.scala 447:19]
  wire [63:0] _s3_sc_data_merged_dup_for_data_wvalid_4_T_6 = s3_sc_data_merged_dup_for_data_wvalid_4_full_wmask &
    s3_req_amo_data_dup_for_data_wvalid; // @[MainPipe.scala 447:45]
  wire [63:0] s3_sc_data_merged_dup_for_data_wvalid_4 = _s3_sc_data_merged_dup_for_data_wvalid_4_T_5 |
    _s3_sc_data_merged_dup_for_data_wvalid_4_T_6; // @[MainPipe.scala 447:31]
  wire  _s3_sc_data_merged_dup_for_data_wvalid_5_T_2 = s3_req_word_idx_dup_for_data_wvalid == 3'h5 &
    _s3_can_do_amo_write_dup_for_data_wvalid_T_24; // @[MainPipe.scala 1144:54]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_5_T_3 = _s3_sc_data_merged_dup_for_data_wvalid_5_T_2 ?
    s3_req_amo_mask_dup_for_data_wvalid : 8'h0; // @[MainPipe.scala 1143:10]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_5_full_wmask_T_9 = _s3_sc_data_merged_dup_for_data_wvalid_5_T_3[0]
     ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_5_full_wmask_T_11 = _s3_sc_data_merged_dup_for_data_wvalid_5_T_3[1
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_5_full_wmask_T_13 = _s3_sc_data_merged_dup_for_data_wvalid_5_T_3[2
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_5_full_wmask_T_15 = _s3_sc_data_merged_dup_for_data_wvalid_5_T_3[3
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_5_full_wmask_T_17 = _s3_sc_data_merged_dup_for_data_wvalid_5_T_3[4
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_5_full_wmask_T_19 = _s3_sc_data_merged_dup_for_data_wvalid_5_T_3[5
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_5_full_wmask_T_21 = _s3_sc_data_merged_dup_for_data_wvalid_5_T_3[6
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_5_full_wmask_T_23 = _s3_sc_data_merged_dup_for_data_wvalid_5_T_3[7
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s3_sc_data_merged_dup_for_data_wvalid_5_full_wmask = {
    _s3_sc_data_merged_dup_for_data_wvalid_5_full_wmask_T_23,_s3_sc_data_merged_dup_for_data_wvalid_5_full_wmask_T_21,
    _s3_sc_data_merged_dup_for_data_wvalid_5_full_wmask_T_19,_s3_sc_data_merged_dup_for_data_wvalid_5_full_wmask_T_17,
    _s3_sc_data_merged_dup_for_data_wvalid_5_full_wmask_T_15,_s3_sc_data_merged_dup_for_data_wvalid_5_full_wmask_T_13,
    _s3_sc_data_merged_dup_for_data_wvalid_5_full_wmask_T_11,_s3_sc_data_merged_dup_for_data_wvalid_5_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s3_sc_data_merged_dup_for_data_wvalid_5_T_4 = ~s3_sc_data_merged_dup_for_data_wvalid_5_full_wmask; // @[MainPipe.scala 447:7]
  wire [63:0] _s3_sc_data_merged_dup_for_data_wvalid_5_T_5 = _s3_sc_data_merged_dup_for_data_wvalid_5_T_4 &
    s3_store_data_merged_5; // @[MainPipe.scala 447:19]
  wire [63:0] _s3_sc_data_merged_dup_for_data_wvalid_5_T_6 = s3_sc_data_merged_dup_for_data_wvalid_5_full_wmask &
    s3_req_amo_data_dup_for_data_wvalid; // @[MainPipe.scala 447:45]
  wire [63:0] s3_sc_data_merged_dup_for_data_wvalid_5 = _s3_sc_data_merged_dup_for_data_wvalid_5_T_5 |
    _s3_sc_data_merged_dup_for_data_wvalid_5_T_6; // @[MainPipe.scala 447:31]
  wire  _s3_sc_data_merged_dup_for_data_wvalid_6_T_2 = s3_req_word_idx_dup_for_data_wvalid == 3'h6 &
    _s3_can_do_amo_write_dup_for_data_wvalid_T_24; // @[MainPipe.scala 1144:54]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_6_T_3 = _s3_sc_data_merged_dup_for_data_wvalid_6_T_2 ?
    s3_req_amo_mask_dup_for_data_wvalid : 8'h0; // @[MainPipe.scala 1143:10]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_6_full_wmask_T_9 = _s3_sc_data_merged_dup_for_data_wvalid_6_T_3[0]
     ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_6_full_wmask_T_11 = _s3_sc_data_merged_dup_for_data_wvalid_6_T_3[1
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_6_full_wmask_T_13 = _s3_sc_data_merged_dup_for_data_wvalid_6_T_3[2
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_6_full_wmask_T_15 = _s3_sc_data_merged_dup_for_data_wvalid_6_T_3[3
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_6_full_wmask_T_17 = _s3_sc_data_merged_dup_for_data_wvalid_6_T_3[4
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_6_full_wmask_T_19 = _s3_sc_data_merged_dup_for_data_wvalid_6_T_3[5
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_6_full_wmask_T_21 = _s3_sc_data_merged_dup_for_data_wvalid_6_T_3[6
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_6_full_wmask_T_23 = _s3_sc_data_merged_dup_for_data_wvalid_6_T_3[7
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s3_sc_data_merged_dup_for_data_wvalid_6_full_wmask = {
    _s3_sc_data_merged_dup_for_data_wvalid_6_full_wmask_T_23,_s3_sc_data_merged_dup_for_data_wvalid_6_full_wmask_T_21,
    _s3_sc_data_merged_dup_for_data_wvalid_6_full_wmask_T_19,_s3_sc_data_merged_dup_for_data_wvalid_6_full_wmask_T_17,
    _s3_sc_data_merged_dup_for_data_wvalid_6_full_wmask_T_15,_s3_sc_data_merged_dup_for_data_wvalid_6_full_wmask_T_13,
    _s3_sc_data_merged_dup_for_data_wvalid_6_full_wmask_T_11,_s3_sc_data_merged_dup_for_data_wvalid_6_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s3_sc_data_merged_dup_for_data_wvalid_6_T_4 = ~s3_sc_data_merged_dup_for_data_wvalid_6_full_wmask; // @[MainPipe.scala 447:7]
  wire [63:0] _s3_sc_data_merged_dup_for_data_wvalid_6_T_5 = _s3_sc_data_merged_dup_for_data_wvalid_6_T_4 &
    s3_store_data_merged_6; // @[MainPipe.scala 447:19]
  wire [63:0] _s3_sc_data_merged_dup_for_data_wvalid_6_T_6 = s3_sc_data_merged_dup_for_data_wvalid_6_full_wmask &
    s3_req_amo_data_dup_for_data_wvalid; // @[MainPipe.scala 447:45]
  wire [63:0] s3_sc_data_merged_dup_for_data_wvalid_6 = _s3_sc_data_merged_dup_for_data_wvalid_6_T_5 |
    _s3_sc_data_merged_dup_for_data_wvalid_6_T_6; // @[MainPipe.scala 447:31]
  wire  _s3_sc_data_merged_dup_for_data_wvalid_7_T_2 = s3_req_word_idx_dup_for_data_wvalid == 3'h7 &
    _s3_can_do_amo_write_dup_for_data_wvalid_T_24; // @[MainPipe.scala 1144:54]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_7_T_3 = _s3_sc_data_merged_dup_for_data_wvalid_7_T_2 ?
    s3_req_amo_mask_dup_for_data_wvalid : 8'h0; // @[MainPipe.scala 1143:10]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_7_full_wmask_T_9 = _s3_sc_data_merged_dup_for_data_wvalid_7_T_3[0]
     ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_7_full_wmask_T_11 = _s3_sc_data_merged_dup_for_data_wvalid_7_T_3[1
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_7_full_wmask_T_13 = _s3_sc_data_merged_dup_for_data_wvalid_7_T_3[2
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_7_full_wmask_T_15 = _s3_sc_data_merged_dup_for_data_wvalid_7_T_3[3
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_7_full_wmask_T_17 = _s3_sc_data_merged_dup_for_data_wvalid_7_T_3[4
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_7_full_wmask_T_19 = _s3_sc_data_merged_dup_for_data_wvalid_7_T_3[5
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_7_full_wmask_T_21 = _s3_sc_data_merged_dup_for_data_wvalid_7_T_3[6
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _s3_sc_data_merged_dup_for_data_wvalid_7_full_wmask_T_23 = _s3_sc_data_merged_dup_for_data_wvalid_7_T_3[7
    ] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] s3_sc_data_merged_dup_for_data_wvalid_7_full_wmask = {
    _s3_sc_data_merged_dup_for_data_wvalid_7_full_wmask_T_23,_s3_sc_data_merged_dup_for_data_wvalid_7_full_wmask_T_21,
    _s3_sc_data_merged_dup_for_data_wvalid_7_full_wmask_T_19,_s3_sc_data_merged_dup_for_data_wvalid_7_full_wmask_T_17,
    _s3_sc_data_merged_dup_for_data_wvalid_7_full_wmask_T_15,_s3_sc_data_merged_dup_for_data_wvalid_7_full_wmask_T_13,
    _s3_sc_data_merged_dup_for_data_wvalid_7_full_wmask_T_11,_s3_sc_data_merged_dup_for_data_wvalid_7_full_wmask_T_9}; // @[Cat.scala 31:58]
  wire [63:0] _s3_sc_data_merged_dup_for_data_wvalid_7_T_4 = ~s3_sc_data_merged_dup_for_data_wvalid_7_full_wmask; // @[MainPipe.scala 447:7]
  wire [63:0] _s3_sc_data_merged_dup_for_data_wvalid_7_T_5 = _s3_sc_data_merged_dup_for_data_wvalid_7_T_4 &
    s3_store_data_merged_7; // @[MainPipe.scala 447:19]
  wire [63:0] _s3_sc_data_merged_dup_for_data_wvalid_7_T_6 = s3_sc_data_merged_dup_for_data_wvalid_7_full_wmask &
    s3_req_amo_data_dup_for_data_wvalid; // @[MainPipe.scala 447:45]
  wire [63:0] s3_sc_data_merged_dup_for_data_wvalid_7 = _s3_sc_data_merged_dup_for_data_wvalid_7_T_5 |
    _s3_sc_data_merged_dup_for_data_wvalid_7_T_6; // @[MainPipe.scala 447:31]
  wire  _GEN_478 = s3_fire_dup_for_data_wvalid ? 1'h0 : s3_valid_dup_for_data_wvalid; // @[MainPipe.scala 1152:44 1054:46 1152:76]
  reg  s3_valid_dup_for_data_wbank_0; // @[MainPipe.scala 1154:45]
  reg  s3_valid_dup_for_data_wbank_1; // @[MainPipe.scala 1154:45]
  reg  s3_valid_dup_for_data_wbank_2; // @[MainPipe.scala 1154:45]
  reg  s3_valid_dup_for_data_wbank_3; // @[MainPipe.scala 1154:45]
  reg  s3_valid_dup_for_data_wbank_4; // @[MainPipe.scala 1154:45]
  reg  s3_valid_dup_for_data_wbank_5; // @[MainPipe.scala 1154:45]
  reg  s3_valid_dup_for_data_wbank_6; // @[MainPipe.scala 1154:45]
  reg  s3_valid_dup_for_data_wbank_7; // @[MainPipe.scala 1154:45]
  reg  s3_req_miss_dup_for_data_wbank; // @[Reg.scala 16:16]
  reg  s3_req_probe_dup_for_data_wbank; // @[Reg.scala 16:16]
  reg [1:0] s3_coh_dup_for_data_wbank_state; // @[Reg.scala 16:16]
  reg [3:0] s3_req_source_dup_for_data_wbank; // @[Reg.scala 16:16]
  reg [4:0] s3_req_cmd_dup_for_data_wbank; // @[Reg.scala 16:16]
  reg  s3_req_replace_dup_for_data_wbank; // @[Reg.scala 16:16]
  wire  _store_update_meta_dup_for_data_wbank_T_1 = ~s3_req_probe_dup_for_data_wbank; // @[MainPipe.scala 1174:7]
  wire  _store_update_meta_dup_for_data_wbank_T_2 = s3_req_source_dup_for_data_wbank == 4'h1 &
    _store_update_meta_dup_for_data_wbank_T_1; // @[MainPipe.scala 1173:102]
  wire  _amo_update_meta_dup_for_data_wbank_T = s3_req_source_dup_for_data_wbank == 4'h2; // @[MainPipe.scala 1176:81]
  reg  s3_amo_hit_dup_for_data_wbank; // @[Reg.scala 16:16]
  reg  s3_s_amoalu_dup_for_data_wbank; // @[MainPipe.scala 1187:50]
  wire  _amo_wait_amoalu_dup_for_data_wbank_T_1 = s3_req_cmd_dup_for_data_wbank != 5'h6; // @[MainPipe.scala 1189:38]
  wire  _amo_wait_amoalu_dup_for_data_wbank_T_2 = _amo_update_meta_dup_for_data_wbank_T &
    _amo_wait_amoalu_dup_for_data_wbank_T_1; // @[MainPipe.scala 1188:98]
  wire  _amo_wait_amoalu_dup_for_data_wbank_T_3 = s3_req_cmd_dup_for_data_wbank != 5'h7; // @[MainPipe.scala 1190:38]
  wire  amo_wait_amoalu_dup_for_data_wbank = _amo_wait_amoalu_dup_for_data_wbank_T_2 &
    _amo_wait_amoalu_dup_for_data_wbank_T_3; // @[MainPipe.scala 1189:48]
  wire  do_amoalu_dup_for_data_wbank = amo_wait_amoalu_dup_for_data_wbank & s3_valid_dup_for_data_wbank_0 & ~
    s3_s_amoalu_dup_for_data_wbank; // @[MainPipe.scala 1191:112]
  reg  s3_store_hit_dup_for_data_wbank; // @[Reg.scala 16:16]
  reg [35:0] s3_req_addr_dup_for_data_wbank; // @[Reg.scala 16:16]
  wire  s3_can_do_amo_dup_for_data_wbank = s3_req_miss_dup_for_data_wbank & _store_update_meta_dup_for_data_wbank_T_1
     & _amo_update_meta_dup_for_data_wbank_T | s3_amo_hit_dup_for_data_wbank; // @[MainPipe.scala 1195:170]
  wire  _s3_lr_dup_for_data_wbank_T_2 = _store_update_meta_dup_for_data_wbank_T_1 &
    _amo_update_meta_dup_for_data_wbank_T; // @[MainPipe.scala 1198:71]
  wire  s3_lr_dup_for_data_wbank = _store_update_meta_dup_for_data_wbank_T_1 & _amo_update_meta_dup_for_data_wbank_T
     & s3_req_cmd_dup_for_data_wbank == 5'h6; // @[MainPipe.scala 1198:125]
  wire  _s3_sc_dup_for_data_wbank_T_3 = s3_req_cmd_dup_for_data_wbank == 5'h7; // @[MainPipe.scala 1199:159]
  wire  s3_sc_dup_for_data_wbank = _s3_lr_dup_for_data_wbank_T_2 & s3_req_cmd_dup_for_data_wbank == 5'h7; // @[MainPipe.scala 1199:125]
  reg [35:0] lrsc_addr_dup_for_data_wbank; // @[MainPipe.scala 1200:44]
  reg [5:0] lrsc_count_dup_for_data_wbank; // @[MainPipe.scala 1201:49]
  wire [35:0] _lrsc_addr_dup_for_data_wbank_T_1 = {s3_req_addr_dup_for_data_wbank[35:6], 6'h0}; // @[L1Cache.scala 86:59]
  wire [5:0] _lrsc_count_dup_for_data_wbank_T_1 = lrsc_count_dup_for_data_wbank - 6'h1; // @[MainPipe.scala 1213:72]
  wire  lrsc_valid_dup_for_data_wbank = lrsc_count_dup_for_data_wbank > 6'h8; // @[MainPipe.scala 1216:73]
  wire  s3_lrsc_addr_match_dup_for_data_wbank = lrsc_valid_dup_for_data_wbank & lrsc_addr_dup_for_data_wbank ==
    _lrsc_addr_dup_for_data_wbank_T_1; // @[MainPipe.scala 1217:81]
  wire  s3_sc_fail_dup_for_data_wbank = s3_sc_dup_for_data_wbank & ~s3_lrsc_addr_match_dup_for_data_wbank; // @[MainPipe.scala 1218:68]
  wire  _s3_can_do_amo_write_dup_for_data_wbank_T_11 = s3_req_cmd_dup_for_data_wbank == 5'h4 |
    s3_req_cmd_dup_for_data_wbank == 5'h9 | s3_req_cmd_dup_for_data_wbank == 5'ha | s3_req_cmd_dup_for_data_wbank == 5'hb
    ; // @[CacheConstants.scala 52:90]
  wire  _s3_can_do_amo_write_dup_for_data_wbank_T_20 = s3_req_cmd_dup_for_data_wbank == 5'h8 |
    s3_req_cmd_dup_for_data_wbank == 5'hc | s3_req_cmd_dup_for_data_wbank == 5'hd | s3_req_cmd_dup_for_data_wbank == 5'he
     | s3_req_cmd_dup_for_data_wbank == 5'hf; // @[CacheConstants.scala 53:114]
  wire  _s3_can_do_amo_write_dup_for_data_wbank_T_21 = _s3_can_do_amo_write_dup_for_data_wbank_T_11 |
    _s3_can_do_amo_write_dup_for_data_wbank_T_20; // @[CacheConstants.scala 54:44]
  wire  _s3_can_do_amo_write_dup_for_data_wbank_T_22 = s3_req_cmd_dup_for_data_wbank == 5'h1 |
    s3_req_cmd_dup_for_data_wbank == 5'h11 | _s3_sc_dup_for_data_wbank_T_3 |
    _s3_can_do_amo_write_dup_for_data_wbank_T_21; // @[CacheConstants.scala 57:76]
  wire  s3_can_do_amo_write_dup_for_data_wbank = s3_can_do_amo_dup_for_data_wbank &
    _s3_can_do_amo_write_dup_for_data_wbank_T_22 & ~s3_sc_fail_dup_for_data_wbank; // @[MainPipe.scala 1219:128]
  wire  update_data_dup_for_data_wbank = s3_req_miss_dup_for_data_wbank | s3_store_hit_dup_for_data_wbank |
    s3_can_do_amo_write_dup_for_data_wbank; // @[MainPipe.scala 1220:111]
  wire  s3_probe_can_go_dup_for_data_wbank = s3_req_probe_dup_for_data_wbank & io_wb_ready_dup_0; // @[MainPipe.scala 1222:80]
  wire  _s3_store_can_go_dup_for_data_wbank_T_7 = io_data_write_ready_dup_0 | ~update_data_dup_for_data_wbank; // @[MainPipe.scala 1227:48]
  wire  s3_store_can_go_dup_for_data_wbank = _store_update_meta_dup_for_data_wbank_T_2 &
    _s3_store_can_go_dup_for_data_wbank_T_7; // @[MainPipe.scala 1226:71]
  wire  _s3_amo_can_go_dup_for_data_wbank_T_5 = s3_amo_hit_dup_for_data_wbank &
    _s3_store_can_go_dup_for_data_wbank_T_7; // @[MainPipe.scala 1229:69]
  wire  _s3_amo_can_go_dup_for_data_wbank_T_7 = s3_s_amoalu_dup_for_data_wbank | ~amo_wait_amoalu_dup_for_data_wbank; // @[MainPipe.scala 1231:40]
  wire  s3_amo_can_go_dup_for_data_wbank = _s3_amo_can_go_dup_for_data_wbank_T_5 &
    _s3_amo_can_go_dup_for_data_wbank_T_7; // @[MainPipe.scala 1230:85]
  wire  _s3_miss_can_go_dup_for_data_wbank_T_5 = s3_req_miss_dup_for_data_wbank &
    _s3_store_can_go_dup_for_data_wbank_T_7; // @[MainPipe.scala 1233:69]
  wire  _s3_miss_can_go_dup_for_data_wbank_T_8 = _s3_miss_can_go_dup_for_data_wbank_T_5 &
    _s3_amo_can_go_dup_for_data_wbank_T_7; // @[MainPipe.scala 1234:85]
  wire  _s3_miss_can_go_dup_for_data_wbank_T_9 = _s3_miss_can_go_dup_for_data_wbank_T_8 & io_tag_write_ready_dup_0; // @[MainPipe.scala 1235:81]
  wire  s3_miss_can_go_dup_for_data_wbank = _s3_miss_can_go_dup_for_data_wbank_T_9 & io_wb_ready_dup_0; // @[MainPipe.scala 1236:46]
  wire  _s3_replace_can_go_dup_for_data_wbank_T_1 = s3_coh_dup_for_data_wbank_state == 2'h0 | io_wb_ready_dup_0; // @[MainPipe.scala 1239:66]
  wire  s3_replace_can_go_dup_for_data_wbank = s3_req_replace_dup_for_data_wbank &
    _s3_replace_can_go_dup_for_data_wbank_T_1; // @[MainPipe.scala 1238:84]
  wire  _s3_can_go_dup_for_data_wbank_T = s3_probe_can_go_dup_for_data_wbank | s3_store_can_go_dup_for_data_wbank; // @[MainPipe.scala 1240:77]
  wire  _s3_can_go_dup_for_data_wbank_T_1 = _s3_can_go_dup_for_data_wbank_T | s3_amo_can_go_dup_for_data_wbank; // @[MainPipe.scala 1241:43]
  wire  _s3_can_go_dup_for_data_wbank_T_2 = _s3_can_go_dup_for_data_wbank_T_1 | s3_miss_can_go_dup_for_data_wbank; // @[MainPipe.scala 1242:41]
  wire  s3_can_go_dup_for_data_wbank = _s3_can_go_dup_for_data_wbank_T_2 | s3_replace_can_go_dup_for_data_wbank; // @[MainPipe.scala 1243:42]
  wire  s3_update_data_cango_dup_for_data_wbank = s3_store_can_go_dup_for_data_wbank |
    s3_amo_can_go_dup_for_data_wbank | s3_miss_can_go_dup_for_data_wbank; // @[MainPipe.scala 1245:125]
  wire  s3_fire_dup_for_data_wbank = s3_valid_dup_for_data_wbank_0 & s3_can_go_dup_for_data_wbank; // @[MainPipe.scala 1247:71]
  wire  _GEN_499 = do_amoalu_dup_for_data_wbank | s3_s_amoalu_dup_for_data_wbank; // @[MainPipe.scala 1249:42 1187:50 1249:76]
  wire  _GEN_501 = s3_fire_dup_for_data_wbank ? 1'h0 : s3_valid_dup_for_data_wbank_0; // @[MainPipe.scala 1154:45 1253:{45,79}]
  reg [7:0] io_data_write_dup_0_bits_way_en_r; // @[Reg.scala 16:16]
  reg [38:0] io_data_write_dup_0_bits_addr_r; // @[Reg.scala 16:16]
  reg  s3_req_miss_dup_for_data_wbank_1; // @[Reg.scala 16:16]
  reg  s3_req_probe_dup_for_data_wbank_1; // @[Reg.scala 16:16]
  reg [1:0] s3_coh_dup_for_data_wbank_1_state; // @[Reg.scala 16:16]
  reg [3:0] s3_req_source_dup_for_data_wbank_1; // @[Reg.scala 16:16]
  reg [4:0] s3_req_cmd_dup_for_data_wbank_1; // @[Reg.scala 16:16]
  reg  s3_req_replace_dup_for_data_wbank_1; // @[Reg.scala 16:16]
  wire  _store_update_meta_dup_for_data_wbank_T_6 = ~s3_req_probe_dup_for_data_wbank_1; // @[MainPipe.scala 1174:7]
  wire  _store_update_meta_dup_for_data_wbank_T_7 = s3_req_source_dup_for_data_wbank_1 == 4'h1 &
    _store_update_meta_dup_for_data_wbank_T_6; // @[MainPipe.scala 1173:102]
  wire  _amo_update_meta_dup_for_data_wbank_T_5 = s3_req_source_dup_for_data_wbank_1 == 4'h2; // @[MainPipe.scala 1176:81]
  reg  s3_amo_hit_dup_for_data_wbank_1; // @[Reg.scala 16:16]
  reg  s3_s_amoalu_dup_for_data_wbank_1; // @[MainPipe.scala 1187:50]
  wire  _amo_wait_amoalu_dup_for_data_wbank_T_5 = s3_req_cmd_dup_for_data_wbank_1 != 5'h6; // @[MainPipe.scala 1189:38]
  wire  _amo_wait_amoalu_dup_for_data_wbank_T_6 = _amo_update_meta_dup_for_data_wbank_T_5 &
    _amo_wait_amoalu_dup_for_data_wbank_T_5; // @[MainPipe.scala 1188:98]
  wire  _amo_wait_amoalu_dup_for_data_wbank_T_7 = s3_req_cmd_dup_for_data_wbank_1 != 5'h7; // @[MainPipe.scala 1190:38]
  wire  amo_wait_amoalu_dup_for_data_wbank_1 = _amo_wait_amoalu_dup_for_data_wbank_T_6 &
    _amo_wait_amoalu_dup_for_data_wbank_T_7; // @[MainPipe.scala 1189:48]
  wire  do_amoalu_dup_for_data_wbank_1 = amo_wait_amoalu_dup_for_data_wbank_1 & s3_valid_dup_for_data_wbank_1 & ~
    s3_s_amoalu_dup_for_data_wbank_1; // @[MainPipe.scala 1191:112]
  reg  s3_store_hit_dup_for_data_wbank_1; // @[Reg.scala 16:16]
  reg [35:0] s3_req_addr_dup_for_data_wbank_1; // @[Reg.scala 16:16]
  wire  s3_can_do_amo_dup_for_data_wbank_1 = s3_req_miss_dup_for_data_wbank_1 &
    _store_update_meta_dup_for_data_wbank_T_6 & _amo_update_meta_dup_for_data_wbank_T_5 |
    s3_amo_hit_dup_for_data_wbank_1; // @[MainPipe.scala 1195:170]
  wire  _s3_lr_dup_for_data_wbank_T_6 = _store_update_meta_dup_for_data_wbank_T_6 &
    _amo_update_meta_dup_for_data_wbank_T_5; // @[MainPipe.scala 1198:71]
  wire  s3_lr_dup_for_data_wbank_1 = _store_update_meta_dup_for_data_wbank_T_6 &
    _amo_update_meta_dup_for_data_wbank_T_5 & s3_req_cmd_dup_for_data_wbank_1 == 5'h6; // @[MainPipe.scala 1198:125]
  wire  _s3_sc_dup_for_data_wbank_T_7 = s3_req_cmd_dup_for_data_wbank_1 == 5'h7; // @[MainPipe.scala 1199:159]
  wire  s3_sc_dup_for_data_wbank_1 = _s3_lr_dup_for_data_wbank_T_6 & s3_req_cmd_dup_for_data_wbank_1 == 5'h7; // @[MainPipe.scala 1199:125]
  reg [35:0] lrsc_addr_dup_for_data_wbank_1; // @[MainPipe.scala 1200:44]
  reg [5:0] lrsc_count_dup_for_data_wbank_1; // @[MainPipe.scala 1201:49]
  wire [35:0] _lrsc_addr_dup_for_data_wbank_T_3 = {s3_req_addr_dup_for_data_wbank_1[35:6], 6'h0}; // @[L1Cache.scala 86:59]
  wire [5:0] _lrsc_count_dup_for_data_wbank_T_3 = lrsc_count_dup_for_data_wbank_1 - 6'h1; // @[MainPipe.scala 1213:72]
  wire  lrsc_valid_dup_for_data_wbank_1 = lrsc_count_dup_for_data_wbank_1 > 6'h8; // @[MainPipe.scala 1216:73]
  wire  s3_lrsc_addr_match_dup_for_data_wbank_1 = lrsc_valid_dup_for_data_wbank_1 & lrsc_addr_dup_for_data_wbank_1
     == _lrsc_addr_dup_for_data_wbank_T_3; // @[MainPipe.scala 1217:81]
  wire  s3_sc_fail_dup_for_data_wbank_1 = s3_sc_dup_for_data_wbank_1 & ~s3_lrsc_addr_match_dup_for_data_wbank_1; // @[MainPipe.scala 1218:68]
  wire  _s3_can_do_amo_write_dup_for_data_wbank_T_36 = s3_req_cmd_dup_for_data_wbank_1 == 5'h4 |
    s3_req_cmd_dup_for_data_wbank_1 == 5'h9 | s3_req_cmd_dup_for_data_wbank_1 == 5'ha |
    s3_req_cmd_dup_for_data_wbank_1 == 5'hb; // @[CacheConstants.scala 52:90]
  wire  _s3_can_do_amo_write_dup_for_data_wbank_T_45 = s3_req_cmd_dup_for_data_wbank_1 == 5'h8 |
    s3_req_cmd_dup_for_data_wbank_1 == 5'hc | s3_req_cmd_dup_for_data_wbank_1 == 5'hd |
    s3_req_cmd_dup_for_data_wbank_1 == 5'he | s3_req_cmd_dup_for_data_wbank_1 == 5'hf; // @[CacheConstants.scala 53:114]
  wire  _s3_can_do_amo_write_dup_for_data_wbank_T_46 = _s3_can_do_amo_write_dup_for_data_wbank_T_36 |
    _s3_can_do_amo_write_dup_for_data_wbank_T_45; // @[CacheConstants.scala 54:44]
  wire  _s3_can_do_amo_write_dup_for_data_wbank_T_47 = s3_req_cmd_dup_for_data_wbank_1 == 5'h1 |
    s3_req_cmd_dup_for_data_wbank_1 == 5'h11 | _s3_sc_dup_for_data_wbank_T_7 |
    _s3_can_do_amo_write_dup_for_data_wbank_T_46; // @[CacheConstants.scala 57:76]
  wire  s3_can_do_amo_write_dup_for_data_wbank_1 = s3_can_do_amo_dup_for_data_wbank_1 &
    _s3_can_do_amo_write_dup_for_data_wbank_T_47 & ~s3_sc_fail_dup_for_data_wbank_1; // @[MainPipe.scala 1219:128]
  wire  update_data_dup_for_data_wbank_1 = s3_req_miss_dup_for_data_wbank_1 | s3_store_hit_dup_for_data_wbank_1 |
    s3_can_do_amo_write_dup_for_data_wbank_1; // @[MainPipe.scala 1220:111]
  wire  s3_probe_can_go_dup_for_data_wbank_1 = s3_req_probe_dup_for_data_wbank_1 & io_wb_ready_dup_1; // @[MainPipe.scala 1222:80]
  wire  _s3_store_can_go_dup_for_data_wbank_T_15 = io_data_write_ready_dup_1 | ~update_data_dup_for_data_wbank_1; // @[MainPipe.scala 1227:48]
  wire  s3_store_can_go_dup_for_data_wbank_1 = _store_update_meta_dup_for_data_wbank_T_7 &
    _s3_store_can_go_dup_for_data_wbank_T_15; // @[MainPipe.scala 1226:71]
  wire  _s3_amo_can_go_dup_for_data_wbank_T_13 = s3_amo_hit_dup_for_data_wbank_1 &
    _s3_store_can_go_dup_for_data_wbank_T_15; // @[MainPipe.scala 1229:69]
  wire  _s3_amo_can_go_dup_for_data_wbank_T_15 = s3_s_amoalu_dup_for_data_wbank_1 | ~
    amo_wait_amoalu_dup_for_data_wbank_1; // @[MainPipe.scala 1231:40]
  wire  s3_amo_can_go_dup_for_data_wbank_1 = _s3_amo_can_go_dup_for_data_wbank_T_13 &
    _s3_amo_can_go_dup_for_data_wbank_T_15; // @[MainPipe.scala 1230:85]
  wire  _s3_miss_can_go_dup_for_data_wbank_T_15 = s3_req_miss_dup_for_data_wbank_1 &
    _s3_store_can_go_dup_for_data_wbank_T_15; // @[MainPipe.scala 1233:69]
  wire  _s3_miss_can_go_dup_for_data_wbank_T_18 = _s3_miss_can_go_dup_for_data_wbank_T_15 &
    _s3_amo_can_go_dup_for_data_wbank_T_15; // @[MainPipe.scala 1234:85]
  wire  _s3_miss_can_go_dup_for_data_wbank_T_19 = _s3_miss_can_go_dup_for_data_wbank_T_18 & io_tag_write_ready_dup_1; // @[MainPipe.scala 1235:81]
  wire  s3_miss_can_go_dup_for_data_wbank_1 = _s3_miss_can_go_dup_for_data_wbank_T_19 & io_wb_ready_dup_1; // @[MainPipe.scala 1236:46]
  wire  _s3_replace_can_go_dup_for_data_wbank_T_3 = s3_coh_dup_for_data_wbank_1_state == 2'h0 | io_wb_ready_dup_1; // @[MainPipe.scala 1239:66]
  wire  s3_replace_can_go_dup_for_data_wbank_1 = s3_req_replace_dup_for_data_wbank_1 &
    _s3_replace_can_go_dup_for_data_wbank_T_3; // @[MainPipe.scala 1238:84]
  wire  _s3_can_go_dup_for_data_wbank_T_3 = s3_probe_can_go_dup_for_data_wbank_1 |
    s3_store_can_go_dup_for_data_wbank_1; // @[MainPipe.scala 1240:77]
  wire  _s3_can_go_dup_for_data_wbank_T_4 = _s3_can_go_dup_for_data_wbank_T_3 | s3_amo_can_go_dup_for_data_wbank_1; // @[MainPipe.scala 1241:43]
  wire  _s3_can_go_dup_for_data_wbank_T_5 = _s3_can_go_dup_for_data_wbank_T_4 | s3_miss_can_go_dup_for_data_wbank_1; // @[MainPipe.scala 1242:41]
  wire  s3_can_go_dup_for_data_wbank_1 = _s3_can_go_dup_for_data_wbank_T_5 | s3_replace_can_go_dup_for_data_wbank_1; // @[MainPipe.scala 1243:42]
  wire  s3_update_data_cango_dup_for_data_wbank_1 = s3_store_can_go_dup_for_data_wbank_1 |
    s3_amo_can_go_dup_for_data_wbank_1 | s3_miss_can_go_dup_for_data_wbank_1; // @[MainPipe.scala 1245:125]
  wire  s3_fire_dup_for_data_wbank_1 = s3_valid_dup_for_data_wbank_1 & s3_can_go_dup_for_data_wbank_1; // @[MainPipe.scala 1247:71]
  wire  _GEN_524 = do_amoalu_dup_for_data_wbank_1 | s3_s_amoalu_dup_for_data_wbank_1; // @[MainPipe.scala 1249:42 1187:50 1249:76]
  wire  _GEN_526 = s3_fire_dup_for_data_wbank_1 ? 1'h0 : s3_valid_dup_for_data_wbank_1; // @[MainPipe.scala 1154:45 1253:{45,79}]
  reg [7:0] io_data_write_dup_1_bits_way_en_r; // @[Reg.scala 16:16]
  reg [38:0] io_data_write_dup_1_bits_addr_r; // @[Reg.scala 16:16]
  reg  s3_req_miss_dup_for_data_wbank_2; // @[Reg.scala 16:16]
  reg  s3_req_probe_dup_for_data_wbank_2; // @[Reg.scala 16:16]
  reg [1:0] s3_coh_dup_for_data_wbank_2_state; // @[Reg.scala 16:16]
  reg [3:0] s3_req_source_dup_for_data_wbank_2; // @[Reg.scala 16:16]
  reg [4:0] s3_req_cmd_dup_for_data_wbank_2; // @[Reg.scala 16:16]
  reg  s3_req_replace_dup_for_data_wbank_2; // @[Reg.scala 16:16]
  wire  _store_update_meta_dup_for_data_wbank_T_11 = ~s3_req_probe_dup_for_data_wbank_2; // @[MainPipe.scala 1174:7]
  wire  _store_update_meta_dup_for_data_wbank_T_12 = s3_req_source_dup_for_data_wbank_2 == 4'h1 &
    _store_update_meta_dup_for_data_wbank_T_11; // @[MainPipe.scala 1173:102]
  wire  _amo_update_meta_dup_for_data_wbank_T_10 = s3_req_source_dup_for_data_wbank_2 == 4'h2; // @[MainPipe.scala 1176:81]
  reg  s3_amo_hit_dup_for_data_wbank_2; // @[Reg.scala 16:16]
  reg  s3_s_amoalu_dup_for_data_wbank_2; // @[MainPipe.scala 1187:50]
  wire  _amo_wait_amoalu_dup_for_data_wbank_T_9 = s3_req_cmd_dup_for_data_wbank_2 != 5'h6; // @[MainPipe.scala 1189:38]
  wire  _amo_wait_amoalu_dup_for_data_wbank_T_10 = _amo_update_meta_dup_for_data_wbank_T_10 &
    _amo_wait_amoalu_dup_for_data_wbank_T_9; // @[MainPipe.scala 1188:98]
  wire  _amo_wait_amoalu_dup_for_data_wbank_T_11 = s3_req_cmd_dup_for_data_wbank_2 != 5'h7; // @[MainPipe.scala 1190:38]
  wire  amo_wait_amoalu_dup_for_data_wbank_2 = _amo_wait_amoalu_dup_for_data_wbank_T_10 &
    _amo_wait_amoalu_dup_for_data_wbank_T_11; // @[MainPipe.scala 1189:48]
  wire  do_amoalu_dup_for_data_wbank_2 = amo_wait_amoalu_dup_for_data_wbank_2 & s3_valid_dup_for_data_wbank_2 & ~
    s3_s_amoalu_dup_for_data_wbank_2; // @[MainPipe.scala 1191:112]
  reg  s3_store_hit_dup_for_data_wbank_2; // @[Reg.scala 16:16]
  reg [35:0] s3_req_addr_dup_for_data_wbank_2; // @[Reg.scala 16:16]
  wire  s3_can_do_amo_dup_for_data_wbank_2 = s3_req_miss_dup_for_data_wbank_2 &
    _store_update_meta_dup_for_data_wbank_T_11 & _amo_update_meta_dup_for_data_wbank_T_10 |
    s3_amo_hit_dup_for_data_wbank_2; // @[MainPipe.scala 1195:170]
  wire  _s3_lr_dup_for_data_wbank_T_10 = _store_update_meta_dup_for_data_wbank_T_11 &
    _amo_update_meta_dup_for_data_wbank_T_10; // @[MainPipe.scala 1198:71]
  wire  s3_lr_dup_for_data_wbank_2 = _store_update_meta_dup_for_data_wbank_T_11 &
    _amo_update_meta_dup_for_data_wbank_T_10 & s3_req_cmd_dup_for_data_wbank_2 == 5'h6; // @[MainPipe.scala 1198:125]
  wire  _s3_sc_dup_for_data_wbank_T_11 = s3_req_cmd_dup_for_data_wbank_2 == 5'h7; // @[MainPipe.scala 1199:159]
  wire  s3_sc_dup_for_data_wbank_2 = _s3_lr_dup_for_data_wbank_T_10 & s3_req_cmd_dup_for_data_wbank_2 == 5'h7; // @[MainPipe.scala 1199:125]
  reg [35:0] lrsc_addr_dup_for_data_wbank_2; // @[MainPipe.scala 1200:44]
  reg [5:0] lrsc_count_dup_for_data_wbank_2; // @[MainPipe.scala 1201:49]
  wire [35:0] _lrsc_addr_dup_for_data_wbank_T_5 = {s3_req_addr_dup_for_data_wbank_2[35:6], 6'h0}; // @[L1Cache.scala 86:59]
  wire [5:0] _lrsc_count_dup_for_data_wbank_T_5 = lrsc_count_dup_for_data_wbank_2 - 6'h1; // @[MainPipe.scala 1213:72]
  wire  lrsc_valid_dup_for_data_wbank_2 = lrsc_count_dup_for_data_wbank_2 > 6'h8; // @[MainPipe.scala 1216:73]
  wire  s3_lrsc_addr_match_dup_for_data_wbank_2 = lrsc_valid_dup_for_data_wbank_2 & lrsc_addr_dup_for_data_wbank_2
     == _lrsc_addr_dup_for_data_wbank_T_5; // @[MainPipe.scala 1217:81]
  wire  s3_sc_fail_dup_for_data_wbank_2 = s3_sc_dup_for_data_wbank_2 & ~s3_lrsc_addr_match_dup_for_data_wbank_2; // @[MainPipe.scala 1218:68]
  wire  _s3_can_do_amo_write_dup_for_data_wbank_T_61 = s3_req_cmd_dup_for_data_wbank_2 == 5'h4 |
    s3_req_cmd_dup_for_data_wbank_2 == 5'h9 | s3_req_cmd_dup_for_data_wbank_2 == 5'ha |
    s3_req_cmd_dup_for_data_wbank_2 == 5'hb; // @[CacheConstants.scala 52:90]
  wire  _s3_can_do_amo_write_dup_for_data_wbank_T_70 = s3_req_cmd_dup_for_data_wbank_2 == 5'h8 |
    s3_req_cmd_dup_for_data_wbank_2 == 5'hc | s3_req_cmd_dup_for_data_wbank_2 == 5'hd |
    s3_req_cmd_dup_for_data_wbank_2 == 5'he | s3_req_cmd_dup_for_data_wbank_2 == 5'hf; // @[CacheConstants.scala 53:114]
  wire  _s3_can_do_amo_write_dup_for_data_wbank_T_71 = _s3_can_do_amo_write_dup_for_data_wbank_T_61 |
    _s3_can_do_amo_write_dup_for_data_wbank_T_70; // @[CacheConstants.scala 54:44]
  wire  _s3_can_do_amo_write_dup_for_data_wbank_T_72 = s3_req_cmd_dup_for_data_wbank_2 == 5'h1 |
    s3_req_cmd_dup_for_data_wbank_2 == 5'h11 | _s3_sc_dup_for_data_wbank_T_11 |
    _s3_can_do_amo_write_dup_for_data_wbank_T_71; // @[CacheConstants.scala 57:76]
  wire  s3_can_do_amo_write_dup_for_data_wbank_2 = s3_can_do_amo_dup_for_data_wbank_2 &
    _s3_can_do_amo_write_dup_for_data_wbank_T_72 & ~s3_sc_fail_dup_for_data_wbank_2; // @[MainPipe.scala 1219:128]
  wire  update_data_dup_for_data_wbank_2 = s3_req_miss_dup_for_data_wbank_2 | s3_store_hit_dup_for_data_wbank_2 |
    s3_can_do_amo_write_dup_for_data_wbank_2; // @[MainPipe.scala 1220:111]
  wire  s3_probe_can_go_dup_for_data_wbank_2 = s3_req_probe_dup_for_data_wbank_2 & io_wb_ready_dup_2; // @[MainPipe.scala 1222:80]
  wire  _s3_store_can_go_dup_for_data_wbank_T_23 = io_data_write_ready_dup_2 | ~update_data_dup_for_data_wbank_2; // @[MainPipe.scala 1227:48]
  wire  s3_store_can_go_dup_for_data_wbank_2 = _store_update_meta_dup_for_data_wbank_T_12 &
    _s3_store_can_go_dup_for_data_wbank_T_23; // @[MainPipe.scala 1226:71]
  wire  _s3_amo_can_go_dup_for_data_wbank_T_21 = s3_amo_hit_dup_for_data_wbank_2 &
    _s3_store_can_go_dup_for_data_wbank_T_23; // @[MainPipe.scala 1229:69]
  wire  _s3_amo_can_go_dup_for_data_wbank_T_23 = s3_s_amoalu_dup_for_data_wbank_2 | ~
    amo_wait_amoalu_dup_for_data_wbank_2; // @[MainPipe.scala 1231:40]
  wire  s3_amo_can_go_dup_for_data_wbank_2 = _s3_amo_can_go_dup_for_data_wbank_T_21 &
    _s3_amo_can_go_dup_for_data_wbank_T_23; // @[MainPipe.scala 1230:85]
  wire  _s3_miss_can_go_dup_for_data_wbank_T_25 = s3_req_miss_dup_for_data_wbank_2 &
    _s3_store_can_go_dup_for_data_wbank_T_23; // @[MainPipe.scala 1233:69]
  wire  _s3_miss_can_go_dup_for_data_wbank_T_28 = _s3_miss_can_go_dup_for_data_wbank_T_25 &
    _s3_amo_can_go_dup_for_data_wbank_T_23; // @[MainPipe.scala 1234:85]
  wire  _s3_miss_can_go_dup_for_data_wbank_T_29 = _s3_miss_can_go_dup_for_data_wbank_T_28 & io_tag_write_ready_dup_2; // @[MainPipe.scala 1235:81]
  wire  s3_miss_can_go_dup_for_data_wbank_2 = _s3_miss_can_go_dup_for_data_wbank_T_29 & io_wb_ready_dup_2; // @[MainPipe.scala 1236:46]
  wire  _s3_replace_can_go_dup_for_data_wbank_T_5 = s3_coh_dup_for_data_wbank_2_state == 2'h0 | io_wb_ready_dup_2; // @[MainPipe.scala 1239:66]
  wire  s3_replace_can_go_dup_for_data_wbank_2 = s3_req_replace_dup_for_data_wbank_2 &
    _s3_replace_can_go_dup_for_data_wbank_T_5; // @[MainPipe.scala 1238:84]
  wire  _s3_can_go_dup_for_data_wbank_T_6 = s3_probe_can_go_dup_for_data_wbank_2 |
    s3_store_can_go_dup_for_data_wbank_2; // @[MainPipe.scala 1240:77]
  wire  _s3_can_go_dup_for_data_wbank_T_7 = _s3_can_go_dup_for_data_wbank_T_6 | s3_amo_can_go_dup_for_data_wbank_2; // @[MainPipe.scala 1241:43]
  wire  _s3_can_go_dup_for_data_wbank_T_8 = _s3_can_go_dup_for_data_wbank_T_7 | s3_miss_can_go_dup_for_data_wbank_2; // @[MainPipe.scala 1242:41]
  wire  s3_can_go_dup_for_data_wbank_2 = _s3_can_go_dup_for_data_wbank_T_8 | s3_replace_can_go_dup_for_data_wbank_2; // @[MainPipe.scala 1243:42]
  wire  s3_update_data_cango_dup_for_data_wbank_2 = s3_store_can_go_dup_for_data_wbank_2 |
    s3_amo_can_go_dup_for_data_wbank_2 | s3_miss_can_go_dup_for_data_wbank_2; // @[MainPipe.scala 1245:125]
  wire  s3_fire_dup_for_data_wbank_2 = s3_valid_dup_for_data_wbank_2 & s3_can_go_dup_for_data_wbank_2; // @[MainPipe.scala 1247:71]
  wire  _GEN_549 = do_amoalu_dup_for_data_wbank_2 | s3_s_amoalu_dup_for_data_wbank_2; // @[MainPipe.scala 1249:42 1187:50 1249:76]
  wire  _GEN_551 = s3_fire_dup_for_data_wbank_2 ? 1'h0 : s3_valid_dup_for_data_wbank_2; // @[MainPipe.scala 1154:45 1253:{45,79}]
  reg [7:0] io_data_write_dup_2_bits_way_en_r; // @[Reg.scala 16:16]
  reg [38:0] io_data_write_dup_2_bits_addr_r; // @[Reg.scala 16:16]
  reg  s3_req_miss_dup_for_data_wbank_3; // @[Reg.scala 16:16]
  reg  s3_req_probe_dup_for_data_wbank_3; // @[Reg.scala 16:16]
  reg [1:0] s3_coh_dup_for_data_wbank_3_state; // @[Reg.scala 16:16]
  reg [3:0] s3_req_source_dup_for_data_wbank_3; // @[Reg.scala 16:16]
  reg [4:0] s3_req_cmd_dup_for_data_wbank_3; // @[Reg.scala 16:16]
  reg  s3_req_replace_dup_for_data_wbank_3; // @[Reg.scala 16:16]
  wire  _store_update_meta_dup_for_data_wbank_T_16 = ~s3_req_probe_dup_for_data_wbank_3; // @[MainPipe.scala 1174:7]
  wire  _store_update_meta_dup_for_data_wbank_T_17 = s3_req_source_dup_for_data_wbank_3 == 4'h1 &
    _store_update_meta_dup_for_data_wbank_T_16; // @[MainPipe.scala 1173:102]
  wire  _amo_update_meta_dup_for_data_wbank_T_15 = s3_req_source_dup_for_data_wbank_3 == 4'h2; // @[MainPipe.scala 1176:81]
  reg  s3_amo_hit_dup_for_data_wbank_3; // @[Reg.scala 16:16]
  reg  s3_s_amoalu_dup_for_data_wbank_3; // @[MainPipe.scala 1187:50]
  wire  _amo_wait_amoalu_dup_for_data_wbank_T_13 = s3_req_cmd_dup_for_data_wbank_3 != 5'h6; // @[MainPipe.scala 1189:38]
  wire  _amo_wait_amoalu_dup_for_data_wbank_T_14 = _amo_update_meta_dup_for_data_wbank_T_15 &
    _amo_wait_amoalu_dup_for_data_wbank_T_13; // @[MainPipe.scala 1188:98]
  wire  _amo_wait_amoalu_dup_for_data_wbank_T_15 = s3_req_cmd_dup_for_data_wbank_3 != 5'h7; // @[MainPipe.scala 1190:38]
  wire  amo_wait_amoalu_dup_for_data_wbank_3 = _amo_wait_amoalu_dup_for_data_wbank_T_14 &
    _amo_wait_amoalu_dup_for_data_wbank_T_15; // @[MainPipe.scala 1189:48]
  wire  do_amoalu_dup_for_data_wbank_3 = amo_wait_amoalu_dup_for_data_wbank_3 & s3_valid_dup_for_data_wbank_3 & ~
    s3_s_amoalu_dup_for_data_wbank_3; // @[MainPipe.scala 1191:112]
  reg  s3_store_hit_dup_for_data_wbank_3; // @[Reg.scala 16:16]
  reg [35:0] s3_req_addr_dup_for_data_wbank_3; // @[Reg.scala 16:16]
  wire  s3_can_do_amo_dup_for_data_wbank_3 = s3_req_miss_dup_for_data_wbank_3 &
    _store_update_meta_dup_for_data_wbank_T_16 & _amo_update_meta_dup_for_data_wbank_T_15 |
    s3_amo_hit_dup_for_data_wbank_3; // @[MainPipe.scala 1195:170]
  wire  _s3_lr_dup_for_data_wbank_T_14 = _store_update_meta_dup_for_data_wbank_T_16 &
    _amo_update_meta_dup_for_data_wbank_T_15; // @[MainPipe.scala 1198:71]
  wire  s3_lr_dup_for_data_wbank_3 = _store_update_meta_dup_for_data_wbank_T_16 &
    _amo_update_meta_dup_for_data_wbank_T_15 & s3_req_cmd_dup_for_data_wbank_3 == 5'h6; // @[MainPipe.scala 1198:125]
  wire  _s3_sc_dup_for_data_wbank_T_15 = s3_req_cmd_dup_for_data_wbank_3 == 5'h7; // @[MainPipe.scala 1199:159]
  wire  s3_sc_dup_for_data_wbank_3 = _s3_lr_dup_for_data_wbank_T_14 & s3_req_cmd_dup_for_data_wbank_3 == 5'h7; // @[MainPipe.scala 1199:125]
  reg [35:0] lrsc_addr_dup_for_data_wbank_3; // @[MainPipe.scala 1200:44]
  reg [5:0] lrsc_count_dup_for_data_wbank_3; // @[MainPipe.scala 1201:49]
  wire [35:0] _lrsc_addr_dup_for_data_wbank_T_7 = {s3_req_addr_dup_for_data_wbank_3[35:6], 6'h0}; // @[L1Cache.scala 86:59]
  wire [5:0] _lrsc_count_dup_for_data_wbank_T_7 = lrsc_count_dup_for_data_wbank_3 - 6'h1; // @[MainPipe.scala 1213:72]
  wire  lrsc_valid_dup_for_data_wbank_3 = lrsc_count_dup_for_data_wbank_3 > 6'h8; // @[MainPipe.scala 1216:73]
  wire  s3_lrsc_addr_match_dup_for_data_wbank_3 = lrsc_valid_dup_for_data_wbank_3 & lrsc_addr_dup_for_data_wbank_3
     == _lrsc_addr_dup_for_data_wbank_T_7; // @[MainPipe.scala 1217:81]
  wire  s3_sc_fail_dup_for_data_wbank_3 = s3_sc_dup_for_data_wbank_3 & ~s3_lrsc_addr_match_dup_for_data_wbank_3; // @[MainPipe.scala 1218:68]
  wire  _s3_can_do_amo_write_dup_for_data_wbank_T_86 = s3_req_cmd_dup_for_data_wbank_3 == 5'h4 |
    s3_req_cmd_dup_for_data_wbank_3 == 5'h9 | s3_req_cmd_dup_for_data_wbank_3 == 5'ha |
    s3_req_cmd_dup_for_data_wbank_3 == 5'hb; // @[CacheConstants.scala 52:90]
  wire  _s3_can_do_amo_write_dup_for_data_wbank_T_95 = s3_req_cmd_dup_for_data_wbank_3 == 5'h8 |
    s3_req_cmd_dup_for_data_wbank_3 == 5'hc | s3_req_cmd_dup_for_data_wbank_3 == 5'hd |
    s3_req_cmd_dup_for_data_wbank_3 == 5'he | s3_req_cmd_dup_for_data_wbank_3 == 5'hf; // @[CacheConstants.scala 53:114]
  wire  _s3_can_do_amo_write_dup_for_data_wbank_T_96 = _s3_can_do_amo_write_dup_for_data_wbank_T_86 |
    _s3_can_do_amo_write_dup_for_data_wbank_T_95; // @[CacheConstants.scala 54:44]
  wire  _s3_can_do_amo_write_dup_for_data_wbank_T_97 = s3_req_cmd_dup_for_data_wbank_3 == 5'h1 |
    s3_req_cmd_dup_for_data_wbank_3 == 5'h11 | _s3_sc_dup_for_data_wbank_T_15 |
    _s3_can_do_amo_write_dup_for_data_wbank_T_96; // @[CacheConstants.scala 57:76]
  wire  s3_can_do_amo_write_dup_for_data_wbank_3 = s3_can_do_amo_dup_for_data_wbank_3 &
    _s3_can_do_amo_write_dup_for_data_wbank_T_97 & ~s3_sc_fail_dup_for_data_wbank_3; // @[MainPipe.scala 1219:128]
  wire  update_data_dup_for_data_wbank_3 = s3_req_miss_dup_for_data_wbank_3 | s3_store_hit_dup_for_data_wbank_3 |
    s3_can_do_amo_write_dup_for_data_wbank_3; // @[MainPipe.scala 1220:111]
  wire  s3_probe_can_go_dup_for_data_wbank_3 = s3_req_probe_dup_for_data_wbank_3 & io_wb_ready_dup_3; // @[MainPipe.scala 1222:80]
  wire  _s3_store_can_go_dup_for_data_wbank_T_31 = io_data_write_ready_dup_3 | ~update_data_dup_for_data_wbank_3; // @[MainPipe.scala 1227:48]
  wire  s3_store_can_go_dup_for_data_wbank_3 = _store_update_meta_dup_for_data_wbank_T_17 &
    _s3_store_can_go_dup_for_data_wbank_T_31; // @[MainPipe.scala 1226:71]
  wire  _s3_amo_can_go_dup_for_data_wbank_T_29 = s3_amo_hit_dup_for_data_wbank_3 &
    _s3_store_can_go_dup_for_data_wbank_T_31; // @[MainPipe.scala 1229:69]
  wire  _s3_amo_can_go_dup_for_data_wbank_T_31 = s3_s_amoalu_dup_for_data_wbank_3 | ~
    amo_wait_amoalu_dup_for_data_wbank_3; // @[MainPipe.scala 1231:40]
  wire  s3_amo_can_go_dup_for_data_wbank_3 = _s3_amo_can_go_dup_for_data_wbank_T_29 &
    _s3_amo_can_go_dup_for_data_wbank_T_31; // @[MainPipe.scala 1230:85]
  wire  _s3_miss_can_go_dup_for_data_wbank_T_35 = s3_req_miss_dup_for_data_wbank_3 &
    _s3_store_can_go_dup_for_data_wbank_T_31; // @[MainPipe.scala 1233:69]
  wire  _s3_miss_can_go_dup_for_data_wbank_T_38 = _s3_miss_can_go_dup_for_data_wbank_T_35 &
    _s3_amo_can_go_dup_for_data_wbank_T_31; // @[MainPipe.scala 1234:85]
  wire  _s3_miss_can_go_dup_for_data_wbank_T_39 = _s3_miss_can_go_dup_for_data_wbank_T_38 & io_tag_write_ready_dup_3; // @[MainPipe.scala 1235:81]
  wire  s3_miss_can_go_dup_for_data_wbank_3 = _s3_miss_can_go_dup_for_data_wbank_T_39 & io_wb_ready_dup_3; // @[MainPipe.scala 1236:46]
  wire  _s3_replace_can_go_dup_for_data_wbank_T_7 = s3_coh_dup_for_data_wbank_3_state == 2'h0 | io_wb_ready_dup_3; // @[MainPipe.scala 1239:66]
  wire  s3_replace_can_go_dup_for_data_wbank_3 = s3_req_replace_dup_for_data_wbank_3 &
    _s3_replace_can_go_dup_for_data_wbank_T_7; // @[MainPipe.scala 1238:84]
  wire  _s3_can_go_dup_for_data_wbank_T_9 = s3_probe_can_go_dup_for_data_wbank_3 |
    s3_store_can_go_dup_for_data_wbank_3; // @[MainPipe.scala 1240:77]
  wire  _s3_can_go_dup_for_data_wbank_T_10 = _s3_can_go_dup_for_data_wbank_T_9 | s3_amo_can_go_dup_for_data_wbank_3; // @[MainPipe.scala 1241:43]
  wire  _s3_can_go_dup_for_data_wbank_T_11 = _s3_can_go_dup_for_data_wbank_T_10 | s3_miss_can_go_dup_for_data_wbank_3
    ; // @[MainPipe.scala 1242:41]
  wire  s3_can_go_dup_for_data_wbank_3 = _s3_can_go_dup_for_data_wbank_T_11 | s3_replace_can_go_dup_for_data_wbank_3; // @[MainPipe.scala 1243:42]
  wire  s3_update_data_cango_dup_for_data_wbank_3 = s3_store_can_go_dup_for_data_wbank_3 |
    s3_amo_can_go_dup_for_data_wbank_3 | s3_miss_can_go_dup_for_data_wbank_3; // @[MainPipe.scala 1245:125]
  wire  s3_fire_dup_for_data_wbank_3 = s3_valid_dup_for_data_wbank_3 & s3_can_go_dup_for_data_wbank_3; // @[MainPipe.scala 1247:71]
  wire  _GEN_574 = do_amoalu_dup_for_data_wbank_3 | s3_s_amoalu_dup_for_data_wbank_3; // @[MainPipe.scala 1249:42 1187:50 1249:76]
  wire  _GEN_576 = s3_fire_dup_for_data_wbank_3 ? 1'h0 : s3_valid_dup_for_data_wbank_3; // @[MainPipe.scala 1154:45 1253:{45,79}]
  reg [7:0] io_data_write_dup_3_bits_way_en_r; // @[Reg.scala 16:16]
  reg [38:0] io_data_write_dup_3_bits_addr_r; // @[Reg.scala 16:16]
  reg  s3_req_miss_dup_for_data_wbank_4; // @[Reg.scala 16:16]
  reg  s3_req_probe_dup_for_data_wbank_4; // @[Reg.scala 16:16]
  reg [1:0] s3_coh_dup_for_data_wbank_4_state; // @[Reg.scala 16:16]
  reg [3:0] s3_req_source_dup_for_data_wbank_4; // @[Reg.scala 16:16]
  reg [4:0] s3_req_cmd_dup_for_data_wbank_4; // @[Reg.scala 16:16]
  reg  s3_req_replace_dup_for_data_wbank_4; // @[Reg.scala 16:16]
  wire  _store_update_meta_dup_for_data_wbank_T_21 = ~s3_req_probe_dup_for_data_wbank_4; // @[MainPipe.scala 1174:7]
  wire  _store_update_meta_dup_for_data_wbank_T_22 = s3_req_source_dup_for_data_wbank_4 == 4'h1 &
    _store_update_meta_dup_for_data_wbank_T_21; // @[MainPipe.scala 1173:102]
  wire  _amo_update_meta_dup_for_data_wbank_T_20 = s3_req_source_dup_for_data_wbank_4 == 4'h2; // @[MainPipe.scala 1176:81]
  reg  s3_amo_hit_dup_for_data_wbank_4; // @[Reg.scala 16:16]
  reg  s3_s_amoalu_dup_for_data_wbank_4; // @[MainPipe.scala 1187:50]
  wire  _amo_wait_amoalu_dup_for_data_wbank_T_17 = s3_req_cmd_dup_for_data_wbank_4 != 5'h6; // @[MainPipe.scala 1189:38]
  wire  _amo_wait_amoalu_dup_for_data_wbank_T_18 = _amo_update_meta_dup_for_data_wbank_T_20 &
    _amo_wait_amoalu_dup_for_data_wbank_T_17; // @[MainPipe.scala 1188:98]
  wire  _amo_wait_amoalu_dup_for_data_wbank_T_19 = s3_req_cmd_dup_for_data_wbank_4 != 5'h7; // @[MainPipe.scala 1190:38]
  wire  amo_wait_amoalu_dup_for_data_wbank_4 = _amo_wait_amoalu_dup_for_data_wbank_T_18 &
    _amo_wait_amoalu_dup_for_data_wbank_T_19; // @[MainPipe.scala 1189:48]
  wire  do_amoalu_dup_for_data_wbank_4 = amo_wait_amoalu_dup_for_data_wbank_4 & s3_valid_dup_for_data_wbank_4 & ~
    s3_s_amoalu_dup_for_data_wbank_4; // @[MainPipe.scala 1191:112]
  reg  s3_store_hit_dup_for_data_wbank_4; // @[Reg.scala 16:16]
  reg [35:0] s3_req_addr_dup_for_data_wbank_4; // @[Reg.scala 16:16]
  wire  s3_can_do_amo_dup_for_data_wbank_4 = s3_req_miss_dup_for_data_wbank_4 &
    _store_update_meta_dup_for_data_wbank_T_21 & _amo_update_meta_dup_for_data_wbank_T_20 |
    s3_amo_hit_dup_for_data_wbank_4; // @[MainPipe.scala 1195:170]
  wire  _s3_lr_dup_for_data_wbank_T_18 = _store_update_meta_dup_for_data_wbank_T_21 &
    _amo_update_meta_dup_for_data_wbank_T_20; // @[MainPipe.scala 1198:71]
  wire  s3_lr_dup_for_data_wbank_4 = _store_update_meta_dup_for_data_wbank_T_21 &
    _amo_update_meta_dup_for_data_wbank_T_20 & s3_req_cmd_dup_for_data_wbank_4 == 5'h6; // @[MainPipe.scala 1198:125]
  wire  _s3_sc_dup_for_data_wbank_T_19 = s3_req_cmd_dup_for_data_wbank_4 == 5'h7; // @[MainPipe.scala 1199:159]
  wire  s3_sc_dup_for_data_wbank_4 = _s3_lr_dup_for_data_wbank_T_18 & s3_req_cmd_dup_for_data_wbank_4 == 5'h7; // @[MainPipe.scala 1199:125]
  reg [35:0] lrsc_addr_dup_for_data_wbank_4; // @[MainPipe.scala 1200:44]
  reg [5:0] lrsc_count_dup_for_data_wbank_4; // @[MainPipe.scala 1201:49]
  wire [35:0] _lrsc_addr_dup_for_data_wbank_T_9 = {s3_req_addr_dup_for_data_wbank_4[35:6], 6'h0}; // @[L1Cache.scala 86:59]
  wire [5:0] _lrsc_count_dup_for_data_wbank_T_9 = lrsc_count_dup_for_data_wbank_4 - 6'h1; // @[MainPipe.scala 1213:72]
  wire  lrsc_valid_dup_for_data_wbank_4 = lrsc_count_dup_for_data_wbank_4 > 6'h8; // @[MainPipe.scala 1216:73]
  wire  s3_lrsc_addr_match_dup_for_data_wbank_4 = lrsc_valid_dup_for_data_wbank_4 & lrsc_addr_dup_for_data_wbank_4
     == _lrsc_addr_dup_for_data_wbank_T_9; // @[MainPipe.scala 1217:81]
  wire  s3_sc_fail_dup_for_data_wbank_4 = s3_sc_dup_for_data_wbank_4 & ~s3_lrsc_addr_match_dup_for_data_wbank_4; // @[MainPipe.scala 1218:68]
  wire  _s3_can_do_amo_write_dup_for_data_wbank_T_111 = s3_req_cmd_dup_for_data_wbank_4 == 5'h4 |
    s3_req_cmd_dup_for_data_wbank_4 == 5'h9 | s3_req_cmd_dup_for_data_wbank_4 == 5'ha |
    s3_req_cmd_dup_for_data_wbank_4 == 5'hb; // @[CacheConstants.scala 52:90]
  wire  _s3_can_do_amo_write_dup_for_data_wbank_T_120 = s3_req_cmd_dup_for_data_wbank_4 == 5'h8 |
    s3_req_cmd_dup_for_data_wbank_4 == 5'hc | s3_req_cmd_dup_for_data_wbank_4 == 5'hd |
    s3_req_cmd_dup_for_data_wbank_4 == 5'he | s3_req_cmd_dup_for_data_wbank_4 == 5'hf; // @[CacheConstants.scala 53:114]
  wire  _s3_can_do_amo_write_dup_for_data_wbank_T_121 = _s3_can_do_amo_write_dup_for_data_wbank_T_111 |
    _s3_can_do_amo_write_dup_for_data_wbank_T_120; // @[CacheConstants.scala 54:44]
  wire  _s3_can_do_amo_write_dup_for_data_wbank_T_122 = s3_req_cmd_dup_for_data_wbank_4 == 5'h1 |
    s3_req_cmd_dup_for_data_wbank_4 == 5'h11 | _s3_sc_dup_for_data_wbank_T_19 |
    _s3_can_do_amo_write_dup_for_data_wbank_T_121; // @[CacheConstants.scala 57:76]
  wire  s3_can_do_amo_write_dup_for_data_wbank_4 = s3_can_do_amo_dup_for_data_wbank_4 &
    _s3_can_do_amo_write_dup_for_data_wbank_T_122 & ~s3_sc_fail_dup_for_data_wbank_4; // @[MainPipe.scala 1219:128]
  wire  update_data_dup_for_data_wbank_4 = s3_req_miss_dup_for_data_wbank_4 | s3_store_hit_dup_for_data_wbank_4 |
    s3_can_do_amo_write_dup_for_data_wbank_4; // @[MainPipe.scala 1220:111]
  wire  s3_probe_can_go_dup_for_data_wbank_4 = s3_req_probe_dup_for_data_wbank_4 & io_wb_ready_dup_4; // @[MainPipe.scala 1222:80]
  wire  _s3_store_can_go_dup_for_data_wbank_T_39 = io_data_write_ready_dup_4 | ~update_data_dup_for_data_wbank_4; // @[MainPipe.scala 1227:48]
  wire  s3_store_can_go_dup_for_data_wbank_4 = _store_update_meta_dup_for_data_wbank_T_22 &
    _s3_store_can_go_dup_for_data_wbank_T_39; // @[MainPipe.scala 1226:71]
  wire  _s3_amo_can_go_dup_for_data_wbank_T_37 = s3_amo_hit_dup_for_data_wbank_4 &
    _s3_store_can_go_dup_for_data_wbank_T_39; // @[MainPipe.scala 1229:69]
  wire  _s3_amo_can_go_dup_for_data_wbank_T_39 = s3_s_amoalu_dup_for_data_wbank_4 | ~
    amo_wait_amoalu_dup_for_data_wbank_4; // @[MainPipe.scala 1231:40]
  wire  s3_amo_can_go_dup_for_data_wbank_4 = _s3_amo_can_go_dup_for_data_wbank_T_37 &
    _s3_amo_can_go_dup_for_data_wbank_T_39; // @[MainPipe.scala 1230:85]
  wire  _s3_miss_can_go_dup_for_data_wbank_T_45 = s3_req_miss_dup_for_data_wbank_4 &
    _s3_store_can_go_dup_for_data_wbank_T_39; // @[MainPipe.scala 1233:69]
  wire  _s3_miss_can_go_dup_for_data_wbank_T_48 = _s3_miss_can_go_dup_for_data_wbank_T_45 &
    _s3_amo_can_go_dup_for_data_wbank_T_39; // @[MainPipe.scala 1234:85]
  wire  _s3_miss_can_go_dup_for_data_wbank_T_49 = _s3_miss_can_go_dup_for_data_wbank_T_48 & io_tag_write_ready_dup_4; // @[MainPipe.scala 1235:81]
  wire  s3_miss_can_go_dup_for_data_wbank_4 = _s3_miss_can_go_dup_for_data_wbank_T_49 & io_wb_ready_dup_4; // @[MainPipe.scala 1236:46]
  wire  _s3_replace_can_go_dup_for_data_wbank_T_9 = s3_coh_dup_for_data_wbank_4_state == 2'h0 | io_wb_ready_dup_4; // @[MainPipe.scala 1239:66]
  wire  s3_replace_can_go_dup_for_data_wbank_4 = s3_req_replace_dup_for_data_wbank_4 &
    _s3_replace_can_go_dup_for_data_wbank_T_9; // @[MainPipe.scala 1238:84]
  wire  _s3_can_go_dup_for_data_wbank_T_12 = s3_probe_can_go_dup_for_data_wbank_4 |
    s3_store_can_go_dup_for_data_wbank_4; // @[MainPipe.scala 1240:77]
  wire  _s3_can_go_dup_for_data_wbank_T_13 = _s3_can_go_dup_for_data_wbank_T_12 | s3_amo_can_go_dup_for_data_wbank_4; // @[MainPipe.scala 1241:43]
  wire  _s3_can_go_dup_for_data_wbank_T_14 = _s3_can_go_dup_for_data_wbank_T_13 | s3_miss_can_go_dup_for_data_wbank_4
    ; // @[MainPipe.scala 1242:41]
  wire  s3_can_go_dup_for_data_wbank_4 = _s3_can_go_dup_for_data_wbank_T_14 | s3_replace_can_go_dup_for_data_wbank_4; // @[MainPipe.scala 1243:42]
  wire  s3_update_data_cango_dup_for_data_wbank_4 = s3_store_can_go_dup_for_data_wbank_4 |
    s3_amo_can_go_dup_for_data_wbank_4 | s3_miss_can_go_dup_for_data_wbank_4; // @[MainPipe.scala 1245:125]
  wire  s3_fire_dup_for_data_wbank_4 = s3_valid_dup_for_data_wbank_4 & s3_can_go_dup_for_data_wbank_4; // @[MainPipe.scala 1247:71]
  wire  _GEN_599 = do_amoalu_dup_for_data_wbank_4 | s3_s_amoalu_dup_for_data_wbank_4; // @[MainPipe.scala 1249:42 1187:50 1249:76]
  wire  _GEN_601 = s3_fire_dup_for_data_wbank_4 ? 1'h0 : s3_valid_dup_for_data_wbank_4; // @[MainPipe.scala 1154:45 1253:{45,79}]
  reg [7:0] io_data_write_dup_4_bits_way_en_r; // @[Reg.scala 16:16]
  reg [38:0] io_data_write_dup_4_bits_addr_r; // @[Reg.scala 16:16]
  reg  s3_req_miss_dup_for_data_wbank_5; // @[Reg.scala 16:16]
  reg  s3_req_probe_dup_for_data_wbank_5; // @[Reg.scala 16:16]
  reg [1:0] s3_coh_dup_for_data_wbank_5_state; // @[Reg.scala 16:16]
  reg [3:0] s3_req_source_dup_for_data_wbank_5; // @[Reg.scala 16:16]
  reg [4:0] s3_req_cmd_dup_for_data_wbank_5; // @[Reg.scala 16:16]
  reg  s3_req_replace_dup_for_data_wbank_5; // @[Reg.scala 16:16]
  wire  _store_update_meta_dup_for_data_wbank_T_26 = ~s3_req_probe_dup_for_data_wbank_5; // @[MainPipe.scala 1174:7]
  wire  _store_update_meta_dup_for_data_wbank_T_27 = s3_req_source_dup_for_data_wbank_5 == 4'h1 &
    _store_update_meta_dup_for_data_wbank_T_26; // @[MainPipe.scala 1173:102]
  wire  _amo_update_meta_dup_for_data_wbank_T_25 = s3_req_source_dup_for_data_wbank_5 == 4'h2; // @[MainPipe.scala 1176:81]
  reg  s3_amo_hit_dup_for_data_wbank_5; // @[Reg.scala 16:16]
  reg  s3_s_amoalu_dup_for_data_wbank_5; // @[MainPipe.scala 1187:50]
  wire  _amo_wait_amoalu_dup_for_data_wbank_T_21 = s3_req_cmd_dup_for_data_wbank_5 != 5'h6; // @[MainPipe.scala 1189:38]
  wire  _amo_wait_amoalu_dup_for_data_wbank_T_22 = _amo_update_meta_dup_for_data_wbank_T_25 &
    _amo_wait_amoalu_dup_for_data_wbank_T_21; // @[MainPipe.scala 1188:98]
  wire  _amo_wait_amoalu_dup_for_data_wbank_T_23 = s3_req_cmd_dup_for_data_wbank_5 != 5'h7; // @[MainPipe.scala 1190:38]
  wire  amo_wait_amoalu_dup_for_data_wbank_5 = _amo_wait_amoalu_dup_for_data_wbank_T_22 &
    _amo_wait_amoalu_dup_for_data_wbank_T_23; // @[MainPipe.scala 1189:48]
  wire  do_amoalu_dup_for_data_wbank_5 = amo_wait_amoalu_dup_for_data_wbank_5 & s3_valid_dup_for_data_wbank_5 & ~
    s3_s_amoalu_dup_for_data_wbank_5; // @[MainPipe.scala 1191:112]
  reg  s3_store_hit_dup_for_data_wbank_5; // @[Reg.scala 16:16]
  reg [35:0] s3_req_addr_dup_for_data_wbank_5; // @[Reg.scala 16:16]
  wire  s3_can_do_amo_dup_for_data_wbank_5 = s3_req_miss_dup_for_data_wbank_5 &
    _store_update_meta_dup_for_data_wbank_T_26 & _amo_update_meta_dup_for_data_wbank_T_25 |
    s3_amo_hit_dup_for_data_wbank_5; // @[MainPipe.scala 1195:170]
  wire  _s3_lr_dup_for_data_wbank_T_22 = _store_update_meta_dup_for_data_wbank_T_26 &
    _amo_update_meta_dup_for_data_wbank_T_25; // @[MainPipe.scala 1198:71]
  wire  s3_lr_dup_for_data_wbank_5 = _store_update_meta_dup_for_data_wbank_T_26 &
    _amo_update_meta_dup_for_data_wbank_T_25 & s3_req_cmd_dup_for_data_wbank_5 == 5'h6; // @[MainPipe.scala 1198:125]
  wire  _s3_sc_dup_for_data_wbank_T_23 = s3_req_cmd_dup_for_data_wbank_5 == 5'h7; // @[MainPipe.scala 1199:159]
  wire  s3_sc_dup_for_data_wbank_5 = _s3_lr_dup_for_data_wbank_T_22 & s3_req_cmd_dup_for_data_wbank_5 == 5'h7; // @[MainPipe.scala 1199:125]
  reg [35:0] lrsc_addr_dup_for_data_wbank_5; // @[MainPipe.scala 1200:44]
  reg [5:0] lrsc_count_dup_for_data_wbank_5; // @[MainPipe.scala 1201:49]
  wire [35:0] _lrsc_addr_dup_for_data_wbank_T_11 = {s3_req_addr_dup_for_data_wbank_5[35:6], 6'h0}; // @[L1Cache.scala 86:59]
  wire [5:0] _lrsc_count_dup_for_data_wbank_T_11 = lrsc_count_dup_for_data_wbank_5 - 6'h1; // @[MainPipe.scala 1213:72]
  wire  lrsc_valid_dup_for_data_wbank_5 = lrsc_count_dup_for_data_wbank_5 > 6'h8; // @[MainPipe.scala 1216:73]
  wire  s3_lrsc_addr_match_dup_for_data_wbank_5 = lrsc_valid_dup_for_data_wbank_5 & lrsc_addr_dup_for_data_wbank_5
     == _lrsc_addr_dup_for_data_wbank_T_11; // @[MainPipe.scala 1217:81]
  wire  s3_sc_fail_dup_for_data_wbank_5 = s3_sc_dup_for_data_wbank_5 & ~s3_lrsc_addr_match_dup_for_data_wbank_5; // @[MainPipe.scala 1218:68]
  wire  _s3_can_do_amo_write_dup_for_data_wbank_T_136 = s3_req_cmd_dup_for_data_wbank_5 == 5'h4 |
    s3_req_cmd_dup_for_data_wbank_5 == 5'h9 | s3_req_cmd_dup_for_data_wbank_5 == 5'ha |
    s3_req_cmd_dup_for_data_wbank_5 == 5'hb; // @[CacheConstants.scala 52:90]
  wire  _s3_can_do_amo_write_dup_for_data_wbank_T_145 = s3_req_cmd_dup_for_data_wbank_5 == 5'h8 |
    s3_req_cmd_dup_for_data_wbank_5 == 5'hc | s3_req_cmd_dup_for_data_wbank_5 == 5'hd |
    s3_req_cmd_dup_for_data_wbank_5 == 5'he | s3_req_cmd_dup_for_data_wbank_5 == 5'hf; // @[CacheConstants.scala 53:114]
  wire  _s3_can_do_amo_write_dup_for_data_wbank_T_146 = _s3_can_do_amo_write_dup_for_data_wbank_T_136 |
    _s3_can_do_amo_write_dup_for_data_wbank_T_145; // @[CacheConstants.scala 54:44]
  wire  _s3_can_do_amo_write_dup_for_data_wbank_T_147 = s3_req_cmd_dup_for_data_wbank_5 == 5'h1 |
    s3_req_cmd_dup_for_data_wbank_5 == 5'h11 | _s3_sc_dup_for_data_wbank_T_23 |
    _s3_can_do_amo_write_dup_for_data_wbank_T_146; // @[CacheConstants.scala 57:76]
  wire  s3_can_do_amo_write_dup_for_data_wbank_5 = s3_can_do_amo_dup_for_data_wbank_5 &
    _s3_can_do_amo_write_dup_for_data_wbank_T_147 & ~s3_sc_fail_dup_for_data_wbank_5; // @[MainPipe.scala 1219:128]
  wire  update_data_dup_for_data_wbank_5 = s3_req_miss_dup_for_data_wbank_5 | s3_store_hit_dup_for_data_wbank_5 |
    s3_can_do_amo_write_dup_for_data_wbank_5; // @[MainPipe.scala 1220:111]
  wire  s3_probe_can_go_dup_for_data_wbank_5 = s3_req_probe_dup_for_data_wbank_5 & io_wb_ready_dup_5; // @[MainPipe.scala 1222:80]
  wire  _s3_store_can_go_dup_for_data_wbank_T_47 = io_data_write_ready_dup_5 | ~update_data_dup_for_data_wbank_5; // @[MainPipe.scala 1227:48]
  wire  s3_store_can_go_dup_for_data_wbank_5 = _store_update_meta_dup_for_data_wbank_T_27 &
    _s3_store_can_go_dup_for_data_wbank_T_47; // @[MainPipe.scala 1226:71]
  wire  _s3_amo_can_go_dup_for_data_wbank_T_45 = s3_amo_hit_dup_for_data_wbank_5 &
    _s3_store_can_go_dup_for_data_wbank_T_47; // @[MainPipe.scala 1229:69]
  wire  _s3_amo_can_go_dup_for_data_wbank_T_47 = s3_s_amoalu_dup_for_data_wbank_5 | ~
    amo_wait_amoalu_dup_for_data_wbank_5; // @[MainPipe.scala 1231:40]
  wire  s3_amo_can_go_dup_for_data_wbank_5 = _s3_amo_can_go_dup_for_data_wbank_T_45 &
    _s3_amo_can_go_dup_for_data_wbank_T_47; // @[MainPipe.scala 1230:85]
  wire  _s3_miss_can_go_dup_for_data_wbank_T_55 = s3_req_miss_dup_for_data_wbank_5 &
    _s3_store_can_go_dup_for_data_wbank_T_47; // @[MainPipe.scala 1233:69]
  wire  _s3_miss_can_go_dup_for_data_wbank_T_58 = _s3_miss_can_go_dup_for_data_wbank_T_55 &
    _s3_amo_can_go_dup_for_data_wbank_T_47; // @[MainPipe.scala 1234:85]
  wire  _s3_miss_can_go_dup_for_data_wbank_T_59 = _s3_miss_can_go_dup_for_data_wbank_T_58 & io_tag_write_ready_dup_5; // @[MainPipe.scala 1235:81]
  wire  s3_miss_can_go_dup_for_data_wbank_5 = _s3_miss_can_go_dup_for_data_wbank_T_59 & io_wb_ready_dup_5; // @[MainPipe.scala 1236:46]
  wire  _s3_replace_can_go_dup_for_data_wbank_T_11 = s3_coh_dup_for_data_wbank_5_state == 2'h0 | io_wb_ready_dup_5; // @[MainPipe.scala 1239:66]
  wire  s3_replace_can_go_dup_for_data_wbank_5 = s3_req_replace_dup_for_data_wbank_5 &
    _s3_replace_can_go_dup_for_data_wbank_T_11; // @[MainPipe.scala 1238:84]
  wire  _s3_can_go_dup_for_data_wbank_T_15 = s3_probe_can_go_dup_for_data_wbank_5 |
    s3_store_can_go_dup_for_data_wbank_5; // @[MainPipe.scala 1240:77]
  wire  _s3_can_go_dup_for_data_wbank_T_16 = _s3_can_go_dup_for_data_wbank_T_15 | s3_amo_can_go_dup_for_data_wbank_5; // @[MainPipe.scala 1241:43]
  wire  _s3_can_go_dup_for_data_wbank_T_17 = _s3_can_go_dup_for_data_wbank_T_16 | s3_miss_can_go_dup_for_data_wbank_5
    ; // @[MainPipe.scala 1242:41]
  wire  s3_can_go_dup_for_data_wbank_5 = _s3_can_go_dup_for_data_wbank_T_17 | s3_replace_can_go_dup_for_data_wbank_5; // @[MainPipe.scala 1243:42]
  wire  s3_update_data_cango_dup_for_data_wbank_5 = s3_store_can_go_dup_for_data_wbank_5 |
    s3_amo_can_go_dup_for_data_wbank_5 | s3_miss_can_go_dup_for_data_wbank_5; // @[MainPipe.scala 1245:125]
  wire  s3_fire_dup_for_data_wbank_5 = s3_valid_dup_for_data_wbank_5 & s3_can_go_dup_for_data_wbank_5; // @[MainPipe.scala 1247:71]
  wire  _GEN_624 = do_amoalu_dup_for_data_wbank_5 | s3_s_amoalu_dup_for_data_wbank_5; // @[MainPipe.scala 1249:42 1187:50 1249:76]
  wire  _GEN_626 = s3_fire_dup_for_data_wbank_5 ? 1'h0 : s3_valid_dup_for_data_wbank_5; // @[MainPipe.scala 1154:45 1253:{45,79}]
  reg [7:0] io_data_write_dup_5_bits_way_en_r; // @[Reg.scala 16:16]
  reg [38:0] io_data_write_dup_5_bits_addr_r; // @[Reg.scala 16:16]
  reg  s3_req_miss_dup_for_data_wbank_6; // @[Reg.scala 16:16]
  reg  s3_req_probe_dup_for_data_wbank_6; // @[Reg.scala 16:16]
  reg [1:0] s3_coh_dup_for_data_wbank_6_state; // @[Reg.scala 16:16]
  reg [3:0] s3_req_source_dup_for_data_wbank_6; // @[Reg.scala 16:16]
  reg [4:0] s3_req_cmd_dup_for_data_wbank_6; // @[Reg.scala 16:16]
  reg  s3_req_replace_dup_for_data_wbank_6; // @[Reg.scala 16:16]
  wire  _store_update_meta_dup_for_data_wbank_T_31 = ~s3_req_probe_dup_for_data_wbank_6; // @[MainPipe.scala 1174:7]
  wire  _store_update_meta_dup_for_data_wbank_T_32 = s3_req_source_dup_for_data_wbank_6 == 4'h1 &
    _store_update_meta_dup_for_data_wbank_T_31; // @[MainPipe.scala 1173:102]
  wire  _amo_update_meta_dup_for_data_wbank_T_30 = s3_req_source_dup_for_data_wbank_6 == 4'h2; // @[MainPipe.scala 1176:81]
  reg  s3_amo_hit_dup_for_data_wbank_6; // @[Reg.scala 16:16]
  reg  s3_s_amoalu_dup_for_data_wbank_6; // @[MainPipe.scala 1187:50]
  wire  _amo_wait_amoalu_dup_for_data_wbank_T_25 = s3_req_cmd_dup_for_data_wbank_6 != 5'h6; // @[MainPipe.scala 1189:38]
  wire  _amo_wait_amoalu_dup_for_data_wbank_T_26 = _amo_update_meta_dup_for_data_wbank_T_30 &
    _amo_wait_amoalu_dup_for_data_wbank_T_25; // @[MainPipe.scala 1188:98]
  wire  _amo_wait_amoalu_dup_for_data_wbank_T_27 = s3_req_cmd_dup_for_data_wbank_6 != 5'h7; // @[MainPipe.scala 1190:38]
  wire  amo_wait_amoalu_dup_for_data_wbank_6 = _amo_wait_amoalu_dup_for_data_wbank_T_26 &
    _amo_wait_amoalu_dup_for_data_wbank_T_27; // @[MainPipe.scala 1189:48]
  wire  do_amoalu_dup_for_data_wbank_6 = amo_wait_amoalu_dup_for_data_wbank_6 & s3_valid_dup_for_data_wbank_6 & ~
    s3_s_amoalu_dup_for_data_wbank_6; // @[MainPipe.scala 1191:112]
  reg  s3_store_hit_dup_for_data_wbank_6; // @[Reg.scala 16:16]
  reg [35:0] s3_req_addr_dup_for_data_wbank_6; // @[Reg.scala 16:16]
  wire  s3_can_do_amo_dup_for_data_wbank_6 = s3_req_miss_dup_for_data_wbank_6 &
    _store_update_meta_dup_for_data_wbank_T_31 & _amo_update_meta_dup_for_data_wbank_T_30 |
    s3_amo_hit_dup_for_data_wbank_6; // @[MainPipe.scala 1195:170]
  wire  _s3_lr_dup_for_data_wbank_T_26 = _store_update_meta_dup_for_data_wbank_T_31 &
    _amo_update_meta_dup_for_data_wbank_T_30; // @[MainPipe.scala 1198:71]
  wire  s3_lr_dup_for_data_wbank_6 = _store_update_meta_dup_for_data_wbank_T_31 &
    _amo_update_meta_dup_for_data_wbank_T_30 & s3_req_cmd_dup_for_data_wbank_6 == 5'h6; // @[MainPipe.scala 1198:125]
  wire  _s3_sc_dup_for_data_wbank_T_27 = s3_req_cmd_dup_for_data_wbank_6 == 5'h7; // @[MainPipe.scala 1199:159]
  wire  s3_sc_dup_for_data_wbank_6 = _s3_lr_dup_for_data_wbank_T_26 & s3_req_cmd_dup_for_data_wbank_6 == 5'h7; // @[MainPipe.scala 1199:125]
  reg [35:0] lrsc_addr_dup_for_data_wbank_6; // @[MainPipe.scala 1200:44]
  reg [5:0] lrsc_count_dup_for_data_wbank_6; // @[MainPipe.scala 1201:49]
  wire [35:0] _lrsc_addr_dup_for_data_wbank_T_13 = {s3_req_addr_dup_for_data_wbank_6[35:6], 6'h0}; // @[L1Cache.scala 86:59]
  wire [5:0] _lrsc_count_dup_for_data_wbank_T_13 = lrsc_count_dup_for_data_wbank_6 - 6'h1; // @[MainPipe.scala 1213:72]
  wire  lrsc_valid_dup_for_data_wbank_6 = lrsc_count_dup_for_data_wbank_6 > 6'h8; // @[MainPipe.scala 1216:73]
  wire  s3_lrsc_addr_match_dup_for_data_wbank_6 = lrsc_valid_dup_for_data_wbank_6 & lrsc_addr_dup_for_data_wbank_6
     == _lrsc_addr_dup_for_data_wbank_T_13; // @[MainPipe.scala 1217:81]
  wire  s3_sc_fail_dup_for_data_wbank_6 = s3_sc_dup_for_data_wbank_6 & ~s3_lrsc_addr_match_dup_for_data_wbank_6; // @[MainPipe.scala 1218:68]
  wire  _s3_can_do_amo_write_dup_for_data_wbank_T_161 = s3_req_cmd_dup_for_data_wbank_6 == 5'h4 |
    s3_req_cmd_dup_for_data_wbank_6 == 5'h9 | s3_req_cmd_dup_for_data_wbank_6 == 5'ha |
    s3_req_cmd_dup_for_data_wbank_6 == 5'hb; // @[CacheConstants.scala 52:90]
  wire  _s3_can_do_amo_write_dup_for_data_wbank_T_170 = s3_req_cmd_dup_for_data_wbank_6 == 5'h8 |
    s3_req_cmd_dup_for_data_wbank_6 == 5'hc | s3_req_cmd_dup_for_data_wbank_6 == 5'hd |
    s3_req_cmd_dup_for_data_wbank_6 == 5'he | s3_req_cmd_dup_for_data_wbank_6 == 5'hf; // @[CacheConstants.scala 53:114]
  wire  _s3_can_do_amo_write_dup_for_data_wbank_T_171 = _s3_can_do_amo_write_dup_for_data_wbank_T_161 |
    _s3_can_do_amo_write_dup_for_data_wbank_T_170; // @[CacheConstants.scala 54:44]
  wire  _s3_can_do_amo_write_dup_for_data_wbank_T_172 = s3_req_cmd_dup_for_data_wbank_6 == 5'h1 |
    s3_req_cmd_dup_for_data_wbank_6 == 5'h11 | _s3_sc_dup_for_data_wbank_T_27 |
    _s3_can_do_amo_write_dup_for_data_wbank_T_171; // @[CacheConstants.scala 57:76]
  wire  s3_can_do_amo_write_dup_for_data_wbank_6 = s3_can_do_amo_dup_for_data_wbank_6 &
    _s3_can_do_amo_write_dup_for_data_wbank_T_172 & ~s3_sc_fail_dup_for_data_wbank_6; // @[MainPipe.scala 1219:128]
  wire  update_data_dup_for_data_wbank_6 = s3_req_miss_dup_for_data_wbank_6 | s3_store_hit_dup_for_data_wbank_6 |
    s3_can_do_amo_write_dup_for_data_wbank_6; // @[MainPipe.scala 1220:111]
  wire  s3_probe_can_go_dup_for_data_wbank_6 = s3_req_probe_dup_for_data_wbank_6 & io_wb_ready_dup_6; // @[MainPipe.scala 1222:80]
  wire  _s3_store_can_go_dup_for_data_wbank_T_55 = io_data_write_ready_dup_6 | ~update_data_dup_for_data_wbank_6; // @[MainPipe.scala 1227:48]
  wire  s3_store_can_go_dup_for_data_wbank_6 = _store_update_meta_dup_for_data_wbank_T_32 &
    _s3_store_can_go_dup_for_data_wbank_T_55; // @[MainPipe.scala 1226:71]
  wire  _s3_amo_can_go_dup_for_data_wbank_T_53 = s3_amo_hit_dup_for_data_wbank_6 &
    _s3_store_can_go_dup_for_data_wbank_T_55; // @[MainPipe.scala 1229:69]
  wire  _s3_amo_can_go_dup_for_data_wbank_T_55 = s3_s_amoalu_dup_for_data_wbank_6 | ~
    amo_wait_amoalu_dup_for_data_wbank_6; // @[MainPipe.scala 1231:40]
  wire  s3_amo_can_go_dup_for_data_wbank_6 = _s3_amo_can_go_dup_for_data_wbank_T_53 &
    _s3_amo_can_go_dup_for_data_wbank_T_55; // @[MainPipe.scala 1230:85]
  wire  _s3_miss_can_go_dup_for_data_wbank_T_65 = s3_req_miss_dup_for_data_wbank_6 &
    _s3_store_can_go_dup_for_data_wbank_T_55; // @[MainPipe.scala 1233:69]
  wire  _s3_miss_can_go_dup_for_data_wbank_T_68 = _s3_miss_can_go_dup_for_data_wbank_T_65 &
    _s3_amo_can_go_dup_for_data_wbank_T_55; // @[MainPipe.scala 1234:85]
  wire  _s3_miss_can_go_dup_for_data_wbank_T_69 = _s3_miss_can_go_dup_for_data_wbank_T_68 & io_tag_write_ready_dup_6; // @[MainPipe.scala 1235:81]
  wire  s3_miss_can_go_dup_for_data_wbank_6 = _s3_miss_can_go_dup_for_data_wbank_T_69 & io_wb_ready_dup_6; // @[MainPipe.scala 1236:46]
  wire  _s3_replace_can_go_dup_for_data_wbank_T_13 = s3_coh_dup_for_data_wbank_6_state == 2'h0 | io_wb_ready_dup_6; // @[MainPipe.scala 1239:66]
  wire  s3_replace_can_go_dup_for_data_wbank_6 = s3_req_replace_dup_for_data_wbank_6 &
    _s3_replace_can_go_dup_for_data_wbank_T_13; // @[MainPipe.scala 1238:84]
  wire  _s3_can_go_dup_for_data_wbank_T_18 = s3_probe_can_go_dup_for_data_wbank_6 |
    s3_store_can_go_dup_for_data_wbank_6; // @[MainPipe.scala 1240:77]
  wire  _s3_can_go_dup_for_data_wbank_T_19 = _s3_can_go_dup_for_data_wbank_T_18 | s3_amo_can_go_dup_for_data_wbank_6; // @[MainPipe.scala 1241:43]
  wire  _s3_can_go_dup_for_data_wbank_T_20 = _s3_can_go_dup_for_data_wbank_T_19 | s3_miss_can_go_dup_for_data_wbank_6
    ; // @[MainPipe.scala 1242:41]
  wire  s3_can_go_dup_for_data_wbank_6 = _s3_can_go_dup_for_data_wbank_T_20 | s3_replace_can_go_dup_for_data_wbank_6; // @[MainPipe.scala 1243:42]
  wire  s3_update_data_cango_dup_for_data_wbank_6 = s3_store_can_go_dup_for_data_wbank_6 |
    s3_amo_can_go_dup_for_data_wbank_6 | s3_miss_can_go_dup_for_data_wbank_6; // @[MainPipe.scala 1245:125]
  wire  s3_fire_dup_for_data_wbank_6 = s3_valid_dup_for_data_wbank_6 & s3_can_go_dup_for_data_wbank_6; // @[MainPipe.scala 1247:71]
  wire  _GEN_649 = do_amoalu_dup_for_data_wbank_6 | s3_s_amoalu_dup_for_data_wbank_6; // @[MainPipe.scala 1249:42 1187:50 1249:76]
  wire  _GEN_651 = s3_fire_dup_for_data_wbank_6 ? 1'h0 : s3_valid_dup_for_data_wbank_6; // @[MainPipe.scala 1154:45 1253:{45,79}]
  reg [7:0] io_data_write_dup_6_bits_way_en_r; // @[Reg.scala 16:16]
  reg [38:0] io_data_write_dup_6_bits_addr_r; // @[Reg.scala 16:16]
  reg  s3_req_miss_dup_for_data_wbank_7; // @[Reg.scala 16:16]
  reg  s3_req_probe_dup_for_data_wbank_7; // @[Reg.scala 16:16]
  reg [1:0] s3_coh_dup_for_data_wbank_7_state; // @[Reg.scala 16:16]
  reg [3:0] s3_req_source_dup_for_data_wbank_7; // @[Reg.scala 16:16]
  reg [4:0] s3_req_cmd_dup_for_data_wbank_7; // @[Reg.scala 16:16]
  reg  s3_req_replace_dup_for_data_wbank_7; // @[Reg.scala 16:16]
  wire  _store_update_meta_dup_for_data_wbank_T_36 = ~s3_req_probe_dup_for_data_wbank_7; // @[MainPipe.scala 1174:7]
  wire  _store_update_meta_dup_for_data_wbank_T_37 = s3_req_source_dup_for_data_wbank_7 == 4'h1 &
    _store_update_meta_dup_for_data_wbank_T_36; // @[MainPipe.scala 1173:102]
  wire  _amo_update_meta_dup_for_data_wbank_T_35 = s3_req_source_dup_for_data_wbank_7 == 4'h2; // @[MainPipe.scala 1176:81]
  reg  s3_amo_hit_dup_for_data_wbank_7; // @[Reg.scala 16:16]
  reg  s3_s_amoalu_dup_for_data_wbank_7; // @[MainPipe.scala 1187:50]
  wire  _amo_wait_amoalu_dup_for_data_wbank_T_29 = s3_req_cmd_dup_for_data_wbank_7 != 5'h6; // @[MainPipe.scala 1189:38]
  wire  _amo_wait_amoalu_dup_for_data_wbank_T_30 = _amo_update_meta_dup_for_data_wbank_T_35 &
    _amo_wait_amoalu_dup_for_data_wbank_T_29; // @[MainPipe.scala 1188:98]
  wire  _amo_wait_amoalu_dup_for_data_wbank_T_31 = s3_req_cmd_dup_for_data_wbank_7 != 5'h7; // @[MainPipe.scala 1190:38]
  wire  amo_wait_amoalu_dup_for_data_wbank_7 = _amo_wait_amoalu_dup_for_data_wbank_T_30 &
    _amo_wait_amoalu_dup_for_data_wbank_T_31; // @[MainPipe.scala 1189:48]
  wire  do_amoalu_dup_for_data_wbank_7 = amo_wait_amoalu_dup_for_data_wbank_7 & s3_valid_dup_for_data_wbank_7 & ~
    s3_s_amoalu_dup_for_data_wbank_7; // @[MainPipe.scala 1191:112]
  reg  s3_store_hit_dup_for_data_wbank_7; // @[Reg.scala 16:16]
  reg [35:0] s3_req_addr_dup_for_data_wbank_7; // @[Reg.scala 16:16]
  wire  s3_can_do_amo_dup_for_data_wbank_7 = s3_req_miss_dup_for_data_wbank_7 &
    _store_update_meta_dup_for_data_wbank_T_36 & _amo_update_meta_dup_for_data_wbank_T_35 |
    s3_amo_hit_dup_for_data_wbank_7; // @[MainPipe.scala 1195:170]
  wire  _s3_lr_dup_for_data_wbank_T_30 = _store_update_meta_dup_for_data_wbank_T_36 &
    _amo_update_meta_dup_for_data_wbank_T_35; // @[MainPipe.scala 1198:71]
  wire  s3_lr_dup_for_data_wbank_7 = _store_update_meta_dup_for_data_wbank_T_36 &
    _amo_update_meta_dup_for_data_wbank_T_35 & s3_req_cmd_dup_for_data_wbank_7 == 5'h6; // @[MainPipe.scala 1198:125]
  wire  _s3_sc_dup_for_data_wbank_T_31 = s3_req_cmd_dup_for_data_wbank_7 == 5'h7; // @[MainPipe.scala 1199:159]
  wire  s3_sc_dup_for_data_wbank_7 = _s3_lr_dup_for_data_wbank_T_30 & s3_req_cmd_dup_for_data_wbank_7 == 5'h7; // @[MainPipe.scala 1199:125]
  reg [35:0] lrsc_addr_dup_for_data_wbank_7; // @[MainPipe.scala 1200:44]
  reg [5:0] lrsc_count_dup_for_data_wbank_7; // @[MainPipe.scala 1201:49]
  wire [35:0] _lrsc_addr_dup_for_data_wbank_T_15 = {s3_req_addr_dup_for_data_wbank_7[35:6], 6'h0}; // @[L1Cache.scala 86:59]
  wire [5:0] _lrsc_count_dup_for_data_wbank_T_15 = lrsc_count_dup_for_data_wbank_7 - 6'h1; // @[MainPipe.scala 1213:72]
  wire  lrsc_valid_dup_for_data_wbank_7 = lrsc_count_dup_for_data_wbank_7 > 6'h8; // @[MainPipe.scala 1216:73]
  wire  s3_lrsc_addr_match_dup_for_data_wbank_7 = lrsc_valid_dup_for_data_wbank_7 & lrsc_addr_dup_for_data_wbank_7
     == _lrsc_addr_dup_for_data_wbank_T_15; // @[MainPipe.scala 1217:81]
  wire  s3_sc_fail_dup_for_data_wbank_7 = s3_sc_dup_for_data_wbank_7 & ~s3_lrsc_addr_match_dup_for_data_wbank_7; // @[MainPipe.scala 1218:68]
  wire  _s3_can_do_amo_write_dup_for_data_wbank_T_186 = s3_req_cmd_dup_for_data_wbank_7 == 5'h4 |
    s3_req_cmd_dup_for_data_wbank_7 == 5'h9 | s3_req_cmd_dup_for_data_wbank_7 == 5'ha |
    s3_req_cmd_dup_for_data_wbank_7 == 5'hb; // @[CacheConstants.scala 52:90]
  wire  _s3_can_do_amo_write_dup_for_data_wbank_T_195 = s3_req_cmd_dup_for_data_wbank_7 == 5'h8 |
    s3_req_cmd_dup_for_data_wbank_7 == 5'hc | s3_req_cmd_dup_for_data_wbank_7 == 5'hd |
    s3_req_cmd_dup_for_data_wbank_7 == 5'he | s3_req_cmd_dup_for_data_wbank_7 == 5'hf; // @[CacheConstants.scala 53:114]
  wire  _s3_can_do_amo_write_dup_for_data_wbank_T_196 = _s3_can_do_amo_write_dup_for_data_wbank_T_186 |
    _s3_can_do_amo_write_dup_for_data_wbank_T_195; // @[CacheConstants.scala 54:44]
  wire  _s3_can_do_amo_write_dup_for_data_wbank_T_197 = s3_req_cmd_dup_for_data_wbank_7 == 5'h1 |
    s3_req_cmd_dup_for_data_wbank_7 == 5'h11 | _s3_sc_dup_for_data_wbank_T_31 |
    _s3_can_do_amo_write_dup_for_data_wbank_T_196; // @[CacheConstants.scala 57:76]
  wire  s3_can_do_amo_write_dup_for_data_wbank_7 = s3_can_do_amo_dup_for_data_wbank_7 &
    _s3_can_do_amo_write_dup_for_data_wbank_T_197 & ~s3_sc_fail_dup_for_data_wbank_7; // @[MainPipe.scala 1219:128]
  wire  update_data_dup_for_data_wbank_7 = s3_req_miss_dup_for_data_wbank_7 | s3_store_hit_dup_for_data_wbank_7 |
    s3_can_do_amo_write_dup_for_data_wbank_7; // @[MainPipe.scala 1220:111]
  wire  s3_probe_can_go_dup_for_data_wbank_7 = s3_req_probe_dup_for_data_wbank_7 & io_wb_ready_dup_7; // @[MainPipe.scala 1222:80]
  wire  _s3_store_can_go_dup_for_data_wbank_T_63 = io_data_write_ready_dup_7 | ~update_data_dup_for_data_wbank_7; // @[MainPipe.scala 1227:48]
  wire  s3_store_can_go_dup_for_data_wbank_7 = _store_update_meta_dup_for_data_wbank_T_37 &
    _s3_store_can_go_dup_for_data_wbank_T_63; // @[MainPipe.scala 1226:71]
  wire  _s3_amo_can_go_dup_for_data_wbank_T_61 = s3_amo_hit_dup_for_data_wbank_7 &
    _s3_store_can_go_dup_for_data_wbank_T_63; // @[MainPipe.scala 1229:69]
  wire  _s3_amo_can_go_dup_for_data_wbank_T_63 = s3_s_amoalu_dup_for_data_wbank_7 | ~
    amo_wait_amoalu_dup_for_data_wbank_7; // @[MainPipe.scala 1231:40]
  wire  s3_amo_can_go_dup_for_data_wbank_7 = _s3_amo_can_go_dup_for_data_wbank_T_61 &
    _s3_amo_can_go_dup_for_data_wbank_T_63; // @[MainPipe.scala 1230:85]
  wire  _s3_miss_can_go_dup_for_data_wbank_T_75 = s3_req_miss_dup_for_data_wbank_7 &
    _s3_store_can_go_dup_for_data_wbank_T_63; // @[MainPipe.scala 1233:69]
  wire  _s3_miss_can_go_dup_for_data_wbank_T_78 = _s3_miss_can_go_dup_for_data_wbank_T_75 &
    _s3_amo_can_go_dup_for_data_wbank_T_63; // @[MainPipe.scala 1234:85]
  wire  _s3_miss_can_go_dup_for_data_wbank_T_79 = _s3_miss_can_go_dup_for_data_wbank_T_78 & io_tag_write_ready_dup_7; // @[MainPipe.scala 1235:81]
  wire  s3_miss_can_go_dup_for_data_wbank_7 = _s3_miss_can_go_dup_for_data_wbank_T_79 & io_wb_ready_dup_7; // @[MainPipe.scala 1236:46]
  wire  _s3_replace_can_go_dup_for_data_wbank_T_15 = s3_coh_dup_for_data_wbank_7_state == 2'h0 | io_wb_ready_dup_7; // @[MainPipe.scala 1239:66]
  wire  s3_replace_can_go_dup_for_data_wbank_7 = s3_req_replace_dup_for_data_wbank_7 &
    _s3_replace_can_go_dup_for_data_wbank_T_15; // @[MainPipe.scala 1238:84]
  wire  _s3_can_go_dup_for_data_wbank_T_21 = s3_probe_can_go_dup_for_data_wbank_7 |
    s3_store_can_go_dup_for_data_wbank_7; // @[MainPipe.scala 1240:77]
  wire  _s3_can_go_dup_for_data_wbank_T_22 = _s3_can_go_dup_for_data_wbank_T_21 | s3_amo_can_go_dup_for_data_wbank_7; // @[MainPipe.scala 1241:43]
  wire  _s3_can_go_dup_for_data_wbank_T_23 = _s3_can_go_dup_for_data_wbank_T_22 | s3_miss_can_go_dup_for_data_wbank_7
    ; // @[MainPipe.scala 1242:41]
  wire  s3_can_go_dup_for_data_wbank_7 = _s3_can_go_dup_for_data_wbank_T_23 | s3_replace_can_go_dup_for_data_wbank_7; // @[MainPipe.scala 1243:42]
  wire  s3_update_data_cango_dup_for_data_wbank_7 = s3_store_can_go_dup_for_data_wbank_7 |
    s3_amo_can_go_dup_for_data_wbank_7 | s3_miss_can_go_dup_for_data_wbank_7; // @[MainPipe.scala 1245:125]
  wire  s3_fire_dup_for_data_wbank_7 = s3_valid_dup_for_data_wbank_7 & s3_can_go_dup_for_data_wbank_7; // @[MainPipe.scala 1247:71]
  wire  _GEN_674 = do_amoalu_dup_for_data_wbank_7 | s3_s_amoalu_dup_for_data_wbank_7; // @[MainPipe.scala 1249:42 1187:50 1249:76]
  wire  _GEN_676 = s3_fire_dup_for_data_wbank_7 ? 1'h0 : s3_valid_dup_for_data_wbank_7; // @[MainPipe.scala 1154:45 1253:{45,79}]
  reg [7:0] io_data_write_dup_7_bits_way_en_r; // @[Reg.scala 16:16]
  reg [38:0] io_data_write_dup_7_bits_addr_r; // @[Reg.scala 16:16]
  reg  miss_update_meta_dup_for_wb_valid; // @[Reg.scala 16:16]
  reg  s3_req_probe_dup_for_wb_valid; // @[Reg.scala 16:16]
  reg  s3_tag_match_dup_for_wb_valid; // @[Reg.scala 16:16]
  reg [1:0] s3_coh_dup_for_wb_valid_state; // @[Reg.scala 16:16]
  reg [1:0] s3_req_probe_param_dup_for_wb_valid; // @[Reg.scala 16:16]
  wire [3:0] _probe_new_coh_dup_for_wb_valid_T = {s3_req_probe_param_dup_for_wb_valid,s3_coh_dup_for_wb_valid_state}; // @[Cat.scala 31:58]
  wire  _probe_new_coh_dup_for_wb_valid_T_13 = 4'h8 == _probe_new_coh_dup_for_wb_valid_T; // @[Misc.scala 55:20]
  wire [2:0] _probe_new_coh_dup_for_wb_valid_T_15 = _probe_new_coh_dup_for_wb_valid_T_13 ? 3'h5 : 3'h0; // @[Misc.scala 37:36]
  wire  _probe_new_coh_dup_for_wb_valid_T_17 = 4'h9 == _probe_new_coh_dup_for_wb_valid_T; // @[Misc.scala 55:20]
  wire [2:0] _probe_new_coh_dup_for_wb_valid_T_19 = _probe_new_coh_dup_for_wb_valid_T_17 ? 3'h2 :
    _probe_new_coh_dup_for_wb_valid_T_15; // @[Misc.scala 37:36]
  wire  _probe_new_coh_dup_for_wb_valid_T_21 = 4'ha == _probe_new_coh_dup_for_wb_valid_T; // @[Misc.scala 55:20]
  wire [2:0] _probe_new_coh_dup_for_wb_valid_T_23 = _probe_new_coh_dup_for_wb_valid_T_21 ? 3'h1 :
    _probe_new_coh_dup_for_wb_valid_T_19; // @[Misc.scala 37:36]
  wire  _probe_new_coh_dup_for_wb_valid_T_25 = 4'hb == _probe_new_coh_dup_for_wb_valid_T; // @[Misc.scala 55:20]
  wire [2:0] _probe_new_coh_dup_for_wb_valid_T_27 = _probe_new_coh_dup_for_wb_valid_T_25 ? 3'h1 :
    _probe_new_coh_dup_for_wb_valid_T_23; // @[Misc.scala 37:36]
  wire  _probe_new_coh_dup_for_wb_valid_T_29 = 4'h4 == _probe_new_coh_dup_for_wb_valid_T; // @[Misc.scala 55:20]
  wire [2:0] _probe_new_coh_dup_for_wb_valid_T_31 = _probe_new_coh_dup_for_wb_valid_T_29 ? 3'h5 :
    _probe_new_coh_dup_for_wb_valid_T_27; // @[Misc.scala 37:36]
  wire  _probe_new_coh_dup_for_wb_valid_T_33 = 4'h5 == _probe_new_coh_dup_for_wb_valid_T; // @[Misc.scala 55:20]
  wire [2:0] _probe_new_coh_dup_for_wb_valid_T_35 = _probe_new_coh_dup_for_wb_valid_T_33 ? 3'h4 :
    _probe_new_coh_dup_for_wb_valid_T_31; // @[Misc.scala 37:36]
  wire  _probe_new_coh_dup_for_wb_valid_T_37 = 4'h6 == _probe_new_coh_dup_for_wb_valid_T; // @[Misc.scala 55:20]
  wire [2:0] _probe_new_coh_dup_for_wb_valid_T_39 = _probe_new_coh_dup_for_wb_valid_T_37 ? 3'h0 :
    _probe_new_coh_dup_for_wb_valid_T_35; // @[Misc.scala 37:36]
  wire  _probe_new_coh_dup_for_wb_valid_T_41 = 4'h7 == _probe_new_coh_dup_for_wb_valid_T; // @[Misc.scala 55:20]
  wire [2:0] _probe_new_coh_dup_for_wb_valid_T_43 = _probe_new_coh_dup_for_wb_valid_T_41 ? 3'h0 :
    _probe_new_coh_dup_for_wb_valid_T_39; // @[Misc.scala 37:36]
  wire  _probe_new_coh_dup_for_wb_valid_T_45 = 4'h0 == _probe_new_coh_dup_for_wb_valid_T; // @[Misc.scala 55:20]
  wire [2:0] _probe_new_coh_dup_for_wb_valid_T_47 = _probe_new_coh_dup_for_wb_valid_T_45 ? 3'h5 :
    _probe_new_coh_dup_for_wb_valid_T_43; // @[Misc.scala 37:36]
  wire  _probe_new_coh_dup_for_wb_valid_T_49 = 4'h1 == _probe_new_coh_dup_for_wb_valid_T; // @[Misc.scala 55:20]
  wire [2:0] _probe_new_coh_dup_for_wb_valid_T_51 = _probe_new_coh_dup_for_wb_valid_T_49 ? 3'h4 :
    _probe_new_coh_dup_for_wb_valid_T_47; // @[Misc.scala 37:36]
  wire  _probe_new_coh_dup_for_wb_valid_T_53 = 4'h2 == _probe_new_coh_dup_for_wb_valid_T; // @[Misc.scala 55:20]
  wire [2:0] _probe_new_coh_dup_for_wb_valid_T_55 = _probe_new_coh_dup_for_wb_valid_T_53 ? 3'h3 :
    _probe_new_coh_dup_for_wb_valid_T_51; // @[Misc.scala 37:36]
  wire  _probe_new_coh_dup_for_wb_valid_T_57 = 4'h3 == _probe_new_coh_dup_for_wb_valid_T; // @[Misc.scala 55:20]
  wire [2:0] _probe_new_coh_dup_for_wb_valid_T_59 = _probe_new_coh_dup_for_wb_valid_T_57 ? 3'h3 :
    _probe_new_coh_dup_for_wb_valid_T_55; // @[Misc.scala 37:36]
  reg [3:0] s3_req_source_dup_for_wb_valid; // @[Reg.scala 16:16]
  reg [4:0] s3_req_cmd_dup_for_wb_valid; // @[Reg.scala 16:16]
  reg  s3_req_replace_dup_for_wb_valid; // @[Reg.scala 16:16]
  wire  _store_update_meta_dup_for_wb_valid_T_1 = ~s3_req_probe_dup_for_wb_valid; // @[MainPipe.scala 1277:5]
  wire  _store_update_meta_dup_for_wb_valid_T_2 = s3_req_source_dup_for_wb_valid == 4'h1 &
    _store_update_meta_dup_for_wb_valid_T_1; // @[MainPipe.scala 1276:94]
  wire  _amo_update_meta_dup_for_wb_valid_T = s3_req_source_dup_for_wb_valid == 4'h2; // @[MainPipe.scala 1279:73]
  reg  s3_valid_dup_for_wb_valid; // @[MainPipe.scala 1289:42]
  reg  s3_amo_hit_dup_for_wb_valid; // @[Reg.scala 16:16]
  reg  s3_s_amoalu_dup_for_wb_valid; // @[MainPipe.scala 1291:45]
  wire  _amo_wait_amoalu_dup_for_wb_valid_T_1 = s3_req_cmd_dup_for_wb_valid != 5'h6; // @[MainPipe.scala 1293:33]
  wire  _amo_wait_amoalu_dup_for_wb_valid_T_2 = _amo_update_meta_dup_for_wb_valid_T &
    _amo_wait_amoalu_dup_for_wb_valid_T_1; // @[MainPipe.scala 1292:90]
  wire  _amo_wait_amoalu_dup_for_wb_valid_T_3 = s3_req_cmd_dup_for_wb_valid != 5'h7; // @[MainPipe.scala 1294:33]
  wire  amo_wait_amoalu_dup_for_wb_valid = _amo_wait_amoalu_dup_for_wb_valid_T_2 & _amo_wait_amoalu_dup_for_wb_valid_T_3
    ; // @[MainPipe.scala 1293:43]
  wire  do_amoalu_dup_for_wb_valid = amo_wait_amoalu_dup_for_wb_valid & s3_valid_dup_for_wb_valid & ~
    s3_s_amoalu_dup_for_wb_valid; // @[MainPipe.scala 1295:98]
  reg  s3_store_hit_dup_for_wb_valid; // @[Reg.scala 16:16]
  reg [35:0] s3_req_addr_dup_for_wb_valid; // @[Reg.scala 16:16]
  wire  s3_can_do_amo_dup_for_wb_valid = miss_update_meta_dup_for_wb_valid & _store_update_meta_dup_for_wb_valid_T_1 &
    _amo_update_meta_dup_for_wb_valid_T | s3_amo_hit_dup_for_wb_valid; // @[MainPipe.scala 1299:156]
  wire  _s3_lr_dup_for_wb_valid_T_2 = _store_update_meta_dup_for_wb_valid_T_1 & _amo_update_meta_dup_for_wb_valid_T; // @[MainPipe.scala 1302:63]
  wire  s3_lr_dup_for_wb_valid = _store_update_meta_dup_for_wb_valid_T_1 & _amo_update_meta_dup_for_wb_valid_T &
    s3_req_cmd_dup_for_wb_valid == 5'h6; // @[MainPipe.scala 1302:114]
  wire  _s3_sc_dup_for_wb_valid_T_3 = s3_req_cmd_dup_for_wb_valid == 5'h7; // @[MainPipe.scala 1303:145]
  wire  s3_sc_dup_for_wb_valid = _s3_lr_dup_for_wb_valid_T_2 & s3_req_cmd_dup_for_wb_valid == 5'h7; // @[MainPipe.scala 1303:114]
  reg [35:0] lrsc_addr_dup_for_wb_valid; // @[MainPipe.scala 1304:39]
  reg [5:0] lrsc_count_dup_for_wb_valid; // @[MainPipe.scala 1305:44]
  wire [35:0] _lrsc_addr_dup_for_wb_valid_T_1 = {s3_req_addr_dup_for_wb_valid[35:6], 6'h0}; // @[L1Cache.scala 86:59]
  wire [5:0] _lrsc_count_dup_for_wb_valid_T_1 = lrsc_count_dup_for_wb_valid - 6'h1; // @[MainPipe.scala 1317:64]
  wire  lrsc_valid_dup_for_wb_valid = lrsc_count_dup_for_wb_valid > 6'h8; // @[MainPipe.scala 1320:65]
  wire  s3_lrsc_addr_match_dup_for_wb_valid = lrsc_valid_dup_for_wb_valid & lrsc_addr_dup_for_wb_valid ==
    _lrsc_addr_dup_for_wb_valid_T_1; // @[MainPipe.scala 1321:73]
  wire  s3_sc_fail_dup_for_wb_valid = s3_sc_dup_for_wb_valid & ~s3_lrsc_addr_match_dup_for_wb_valid; // @[MainPipe.scala 1322:60]
  wire  _s3_can_do_amo_write_dup_for_wb_valid_T_11 = s3_req_cmd_dup_for_wb_valid == 5'h4 | s3_req_cmd_dup_for_wb_valid
     == 5'h9 | s3_req_cmd_dup_for_wb_valid == 5'ha | s3_req_cmd_dup_for_wb_valid == 5'hb; // @[CacheConstants.scala 52:90]
  wire  _s3_can_do_amo_write_dup_for_wb_valid_T_20 = s3_req_cmd_dup_for_wb_valid == 5'h8 | s3_req_cmd_dup_for_wb_valid
     == 5'hc | s3_req_cmd_dup_for_wb_valid == 5'hd | s3_req_cmd_dup_for_wb_valid == 5'he | s3_req_cmd_dup_for_wb_valid
     == 5'hf; // @[CacheConstants.scala 53:114]
  wire  _s3_can_do_amo_write_dup_for_wb_valid_T_21 = _s3_can_do_amo_write_dup_for_wb_valid_T_11 |
    _s3_can_do_amo_write_dup_for_wb_valid_T_20; // @[CacheConstants.scala 54:44]
  wire  _s3_can_do_amo_write_dup_for_wb_valid_T_22 = s3_req_cmd_dup_for_wb_valid == 5'h1 | s3_req_cmd_dup_for_wb_valid
     == 5'h11 | _s3_sc_dup_for_wb_valid_T_3 | _s3_can_do_amo_write_dup_for_wb_valid_T_21; // @[CacheConstants.scala 57:76]
  wire  s3_can_do_amo_write_dup_for_wb_valid = s3_can_do_amo_dup_for_wb_valid &
    _s3_can_do_amo_write_dup_for_wb_valid_T_22 & ~s3_sc_fail_dup_for_wb_valid; // @[MainPipe.scala 1323:117]
  wire  update_data_dup_for_wb_valid = miss_update_meta_dup_for_wb_valid | s3_store_hit_dup_for_wb_valid |
    s3_can_do_amo_write_dup_for_wb_valid; // @[MainPipe.scala 1324:100]
  wire  s3_probe_can_go_dup_for_wb_valid = s3_req_probe_dup_for_wb_valid & io_wb_ready_dup_11; // @[MainPipe.scala 1326:72]
  wire  _s3_store_can_go_dup_for_wb_valid_T_7 = io_data_write_ready_dup_11 | ~update_data_dup_for_wb_valid; // @[MainPipe.scala 1331:38]
  wire  s3_store_can_go_dup_for_wb_valid = _store_update_meta_dup_for_wb_valid_T_2 &
    _s3_store_can_go_dup_for_wb_valid_T_7; // @[MainPipe.scala 1330:66]
  wire  _s3_amo_can_go_dup_for_wb_valid_T_5 = s3_amo_hit_dup_for_wb_valid & _s3_store_can_go_dup_for_wb_valid_T_7; // @[MainPipe.scala 1333:64]
  wire  _s3_amo_can_go_dup_for_wb_valid_T_7 = s3_s_amoalu_dup_for_wb_valid | ~amo_wait_amoalu_dup_for_wb_valid; // @[MainPipe.scala 1335:35]
  wire  s3_amo_can_go_dup_for_wb_valid = _s3_amo_can_go_dup_for_wb_valid_T_5 & _s3_amo_can_go_dup_for_wb_valid_T_7; // @[MainPipe.scala 1334:72]
  wire  _s3_miss_can_go_dup_for_wb_valid_T_5 = miss_update_meta_dup_for_wb_valid & _s3_store_can_go_dup_for_wb_valid_T_7
    ; // @[MainPipe.scala 1337:64]
  wire  _s3_miss_can_go_dup_for_wb_valid_T_8 = _s3_miss_can_go_dup_for_wb_valid_T_5 &
    _s3_amo_can_go_dup_for_wb_valid_T_7; // @[MainPipe.scala 1338:72]
  wire  _s3_miss_can_go_dup_for_wb_valid_T_9 = _s3_miss_can_go_dup_for_wb_valid_T_8 & io_tag_write_ready_dup_11; // @[MainPipe.scala 1339:73]
  wire  s3_miss_can_go_dup_for_wb_valid = _s3_miss_can_go_dup_for_wb_valid_T_9 & io_wb_ready_dup_11; // @[MainPipe.scala 1340:36]
  wire  _s3_replace_can_go_dup_for_wb_valid_T = s3_coh_dup_for_wb_valid_state == 2'h0; // @[MainPipe.scala 1343:36]
  wire  _s3_replace_can_go_dup_for_wb_valid_T_1 = s3_coh_dup_for_wb_valid_state == 2'h0 | io_wb_ready_dup_11; // @[MainPipe.scala 1343:61]
  wire  s3_replace_can_go_dup_for_wb_valid = s3_req_replace_dup_for_wb_valid & _s3_replace_can_go_dup_for_wb_valid_T_1; // @[MainPipe.scala 1342:76]
  wire  _s3_can_go_dup_for_wb_valid_T = s3_probe_can_go_dup_for_wb_valid | s3_store_can_go_dup_for_wb_valid; // @[MainPipe.scala 1344:69]
  wire  _s3_can_go_dup_for_wb_valid_T_1 = _s3_can_go_dup_for_wb_valid_T | s3_amo_can_go_dup_for_wb_valid; // @[MainPipe.scala 1345:38]
  wire  _s3_can_go_dup_for_wb_valid_T_2 = _s3_can_go_dup_for_wb_valid_T_1 | s3_miss_can_go_dup_for_wb_valid; // @[MainPipe.scala 1346:36]
  wire  s3_can_go_dup_for_wb_valid = _s3_can_go_dup_for_wb_valid_T_2 | s3_replace_can_go_dup_for_wb_valid; // @[MainPipe.scala 1347:37]
  wire  s3_fire_dup_for_wb_valid = s3_valid_dup_for_wb_valid & s3_can_go_dup_for_wb_valid; // @[MainPipe.scala 1351:60]
  wire  _GEN_699 = do_amoalu_dup_for_wb_valid | s3_s_amoalu_dup_for_wb_valid; // @[MainPipe.scala 1352:37 1291:45 1352:68]
  wire  s3_replace_nothing_dup_for_wb_valid = s3_req_replace_dup_for_wb_valid & _s3_replace_can_go_dup_for_wb_valid_T; // @[MainPipe.scala 1357:77]
  reg  s3_need_replacement_dup_for_wb_valid; // @[Reg.scala 16:16]
  wire  _miss_wb_dup_for_wb_valid_T_1 = s3_coh_dup_for_wb_valid_state != 2'h0; // @[MainPipe.scala 1375:35]
  wire  miss_wb_dup_for_wb_valid = miss_update_meta_dup_for_wb_valid & s3_need_replacement_dup_for_wb_valid &
    _miss_wb_dup_for_wb_valid_T_1; // @[MainPipe.scala 1374:103]
  wire  need_wb_dup_for_wb_valid = miss_wb_dup_for_wb_valid | s3_req_probe_dup_for_wb_valid |
    s3_req_replace_dup_for_wb_valid; // @[MainPipe.scala 1376:92]
  reg [23:0] s3_tag_dup_for_wb_valid; // @[Reg.scala 16:16]
  wire [3:0] _miss_shrink_param_dup_for_wb_valid_T_6 = {2'h2,s3_coh_dup_for_wb_valid_state}; // @[Cat.scala 31:58]
  wire  _miss_shrink_param_dup_for_wb_valid_T_19 = 4'h8 == _miss_shrink_param_dup_for_wb_valid_T_6; // @[Misc.scala 55:20]
  wire [2:0] _miss_shrink_param_dup_for_wb_valid_T_21 = _miss_shrink_param_dup_for_wb_valid_T_19 ? 3'h5 : 3'h0; // @[Misc.scala 37:36]
  wire  _miss_shrink_param_dup_for_wb_valid_T_23 = 4'h9 == _miss_shrink_param_dup_for_wb_valid_T_6; // @[Misc.scala 55:20]
  wire [2:0] _miss_shrink_param_dup_for_wb_valid_T_25 = _miss_shrink_param_dup_for_wb_valid_T_23 ? 3'h2 :
    _miss_shrink_param_dup_for_wb_valid_T_21; // @[Misc.scala 37:36]
  wire  _miss_shrink_param_dup_for_wb_valid_T_27 = 4'ha == _miss_shrink_param_dup_for_wb_valid_T_6; // @[Misc.scala 55:20]
  wire [2:0] _miss_shrink_param_dup_for_wb_valid_T_29 = _miss_shrink_param_dup_for_wb_valid_T_27 ? 3'h1 :
    _miss_shrink_param_dup_for_wb_valid_T_25; // @[Misc.scala 37:36]
  wire  _miss_shrink_param_dup_for_wb_valid_T_31 = 4'hb == _miss_shrink_param_dup_for_wb_valid_T_6; // @[Misc.scala 55:20]
  wire [2:0] _miss_shrink_param_dup_for_wb_valid_T_33 = _miss_shrink_param_dup_for_wb_valid_T_31 ? 3'h1 :
    _miss_shrink_param_dup_for_wb_valid_T_29; // @[Misc.scala 37:36]
  wire  _miss_shrink_param_dup_for_wb_valid_T_35 = 4'h4 == _miss_shrink_param_dup_for_wb_valid_T_6; // @[Misc.scala 55:20]
  wire [2:0] _miss_shrink_param_dup_for_wb_valid_T_37 = _miss_shrink_param_dup_for_wb_valid_T_35 ? 3'h5 :
    _miss_shrink_param_dup_for_wb_valid_T_33; // @[Misc.scala 37:36]
  wire  _miss_shrink_param_dup_for_wb_valid_T_39 = 4'h5 == _miss_shrink_param_dup_for_wb_valid_T_6; // @[Misc.scala 55:20]
  wire [2:0] _miss_shrink_param_dup_for_wb_valid_T_41 = _miss_shrink_param_dup_for_wb_valid_T_39 ? 3'h4 :
    _miss_shrink_param_dup_for_wb_valid_T_37; // @[Misc.scala 37:36]
  wire  _miss_shrink_param_dup_for_wb_valid_T_43 = 4'h6 == _miss_shrink_param_dup_for_wb_valid_T_6; // @[Misc.scala 55:20]
  wire [2:0] _miss_shrink_param_dup_for_wb_valid_T_45 = _miss_shrink_param_dup_for_wb_valid_T_43 ? 3'h0 :
    _miss_shrink_param_dup_for_wb_valid_T_41; // @[Misc.scala 37:36]
  wire  _miss_shrink_param_dup_for_wb_valid_T_47 = 4'h7 == _miss_shrink_param_dup_for_wb_valid_T_6; // @[Misc.scala 55:20]
  wire [2:0] _miss_shrink_param_dup_for_wb_valid_T_49 = _miss_shrink_param_dup_for_wb_valid_T_47 ? 3'h0 :
    _miss_shrink_param_dup_for_wb_valid_T_45; // @[Misc.scala 37:36]
  wire  _miss_shrink_param_dup_for_wb_valid_T_51 = 4'h0 == _miss_shrink_param_dup_for_wb_valid_T_6; // @[Misc.scala 55:20]
  wire [2:0] _miss_shrink_param_dup_for_wb_valid_T_53 = _miss_shrink_param_dup_for_wb_valid_T_51 ? 3'h5 :
    _miss_shrink_param_dup_for_wb_valid_T_49; // @[Misc.scala 37:36]
  wire  _miss_shrink_param_dup_for_wb_valid_T_55 = 4'h1 == _miss_shrink_param_dup_for_wb_valid_T_6; // @[Misc.scala 55:20]
  wire [2:0] _miss_shrink_param_dup_for_wb_valid_T_57 = _miss_shrink_param_dup_for_wb_valid_T_55 ? 3'h4 :
    _miss_shrink_param_dup_for_wb_valid_T_53; // @[Misc.scala 37:36]
  wire  _miss_shrink_param_dup_for_wb_valid_T_59 = 4'h2 == _miss_shrink_param_dup_for_wb_valid_T_6; // @[Misc.scala 55:20]
  wire [2:0] _miss_shrink_param_dup_for_wb_valid_T_61 = _miss_shrink_param_dup_for_wb_valid_T_59 ? 3'h3 :
    _miss_shrink_param_dup_for_wb_valid_T_57; // @[Misc.scala 37:36]
  wire  _miss_shrink_param_dup_for_wb_valid_T_63 = 4'h3 == _miss_shrink_param_dup_for_wb_valid_T_6; // @[Misc.scala 55:20]
  wire [2:0] miss_shrink_param_dup_for_wb_valid = _miss_shrink_param_dup_for_wb_valid_T_63 ? 3'h3 :
    _miss_shrink_param_dup_for_wb_valid_T_61; // @[Misc.scala 37:36]
  reg  writeback_data_dup_for_wb_valid_r; // @[Reg.scala 16:16]
  wire  _writeback_data_dup_for_wb_valid_T_2 = s3_coh_dup_for_wb_valid_state == 2'h3; // @[Metadata.scala 44:36]
  wire  _GEN_708 = s3_fire_dup_for_wb_valid ? 1'h0 : s3_valid_dup_for_wb_valid; // @[MainPipe.scala 1395:40 1289:42 1395:68]
  wire  s3_fire = s3_valid_dup_4 & s3_can_go; // @[MainPipe.scala 1399:33]
  wire  _GEN_710 = s3_fire ? 1'h0 : s3_valid; // @[MainPipe.scala 1404:24 1405:14 472:25]
  wire  _GEN_711 = s3_fire ? 1'h0 : s3_valid_dup_0; // @[MainPipe.scala 1404:24 1406:28 504:29]
  wire  _GEN_712 = s3_fire ? 1'h0 : s3_valid_dup_1; // @[MainPipe.scala 1404:24 1406:28 504:29]
  wire  _GEN_714 = s3_fire ? 1'h0 : s3_valid_dup_3; // @[MainPipe.scala 1404:24 1406:28 504:29]
  wire  _GEN_715 = s3_fire ? 1'h0 : s3_valid_dup_4; // @[MainPipe.scala 1404:24 1406:28 504:29]
  wire  _GEN_716 = s3_fire ? 1'h0 : s3_valid_dup_5; // @[MainPipe.scala 1404:24 1406:28 504:29]
  wire  _GEN_717 = s3_fire ? 1'h0 : s3_valid_dup_6; // @[MainPipe.scala 1404:24 1406:28 504:29]
  wire  _GEN_718 = s3_fire ? 1'h0 : s3_valid_dup_7; // @[MainPipe.scala 1404:24 1406:28 504:29]
  wire  _GEN_719 = s3_fire ? 1'h0 : s3_valid_dup_8; // @[MainPipe.scala 1404:24 1406:28 504:29]
  wire  _GEN_720 = s3_fire ? 1'h0 : s3_valid_dup_9; // @[MainPipe.scala 1404:24 1406:28 504:29]
  wire  _GEN_721 = s3_fire ? 1'h0 : s3_valid_dup_10; // @[MainPipe.scala 1404:24 1406:28 504:29]
  wire  _GEN_722 = s3_fire ? 1'h0 : s3_valid_dup_11; // @[MainPipe.scala 1404:24 1406:28 504:29]
  wire  _GEN_725 = s3_fire ? 1'h0 : s3_valid_dup_for_status_0; // @[MainPipe.scala 1404:24 1407:39 505:40]
  wire  _GEN_726 = s3_fire ? 1'h0 : s3_valid_dup_for_status_1; // @[MainPipe.scala 1404:24 1407:39 505:40]
  wire  _GEN_727 = s3_fire ? 1'h0 : s3_valid_dup_for_status_2; // @[MainPipe.scala 1404:24 1407:39 505:40]
  wire  _GEN_728 = s3_fire ? 1'h0 : s3_valid_dup_for_status_3; // @[MainPipe.scala 1404:24 1407:39 505:40]
  wire  _GEN_729 = s3_fire ? 1'h0 : s3_valid_dup_for_status_4; // @[MainPipe.scala 1404:24 1407:39 505:40]
  wire  _GEN_730 = s3_fire ? 1'h0 : s3_valid_dup_for_status_5; // @[MainPipe.scala 1404:24 1407:39 505:40]
  wire  _GEN_731 = s3_fire ? 1'h0 : s3_valid_dup_for_status_6; // @[MainPipe.scala 1404:24 1407:39 505:40]
  wire  _GEN_732 = s3_fire ? 1'h0 : s3_valid_dup_for_status_7; // @[MainPipe.scala 1404:24 1407:39 505:40]
  wire  _GEN_733 = s3_fire ? 1'h0 : s3_valid_dup_for_status_8; // @[MainPipe.scala 1404:24 1407:39 505:40]
  wire  _GEN_734 = s3_fire ? 1'h0 : s3_valid_dup_for_status_9; // @[MainPipe.scala 1404:24 1407:39 505:40]
  wire  _GEN_735 = s3_fire ? 1'h0 : s3_valid_dup_for_status_10; // @[MainPipe.scala 1404:24 1407:39 505:40]
  wire  _GEN_736 = s3_fire ? 1'h0 : s3_valid_dup_for_status_11; // @[MainPipe.scala 1404:24 1407:39 505:40]
  wire  _GEN_737 = s3_fire ? 1'h0 : s3_valid_dup_for_status_12; // @[MainPipe.scala 1404:24 1407:39 505:40]
  wire  _GEN_738 = s3_fire ? 1'h0 : s3_valid_dup_for_status_13; // @[MainPipe.scala 1404:24 1407:39 505:40]
  wire  _GEN_739 = s3_fire ? 1'h0 : s3_valid_dup_for_status_14; // @[MainPipe.scala 1404:24 1407:39 505:40]
  wire  _GEN_740 = s3_fire ? 1'h0 : s3_valid_dup_for_status_15; // @[MainPipe.scala 1404:24 1407:39 505:40]
  wire  _GEN_741 = s3_fire ? 1'h0 : s3_valid_dup_for_status_16; // @[MainPipe.scala 1404:24 1407:39 505:40]
  wire  _GEN_742 = s3_fire ? 1'h0 : s3_valid_dup_for_status_17; // @[MainPipe.scala 1404:24 1407:39 505:40]
  wire  _GEN_743 = s3_fire ? 1'h0 : s3_valid_dup_for_status_18; // @[MainPipe.scala 1404:24 1407:39 505:40]
  wire  _GEN_744 = s3_fire ? 1'h0 : s3_valid_dup_for_status_19; // @[MainPipe.scala 1404:24 1407:39 505:40]
  wire  _GEN_745 = s3_fire ? 1'h0 : s3_valid_dup_for_status_20; // @[MainPipe.scala 1404:24 1407:39 505:40]
  wire  _GEN_746 = s3_fire ? 1'h0 : s3_valid_dup_for_status_21; // @[MainPipe.scala 1404:24 1407:39 505:40]
  wire  _GEN_747 = s3_fire ? 1'h0 : s3_valid_dup_for_status_22; // @[MainPipe.scala 1404:24 1407:39 505:40]
  wire  _GEN_748 = s3_fire ? 1'h0 : s3_valid_dup_for_status_23; // @[MainPipe.scala 1404:24 1407:39 505:40]
  wire  _io_meta_read_valid_T_2 = req_valid & s1_ready & _s0_can_go_T_2; // @[MainPipe.scala 1421:47]
  wire [63:0] _io_release_update_bits_data_T__0 = s3_sc ? s3_sc_data_merged_0 : s3_store_data_merged_0; // @[MainPipe.scala 1475:8]
  wire [63:0] _io_release_update_bits_data_T__1 = s3_sc ? s3_sc_data_merged_1 : s3_store_data_merged_1; // @[MainPipe.scala 1475:8]
  wire [63:0] _io_release_update_bits_data_T__2 = s3_sc ? s3_sc_data_merged_2 : s3_store_data_merged_2; // @[MainPipe.scala 1475:8]
  wire [63:0] _io_release_update_bits_data_T__3 = s3_sc ? s3_sc_data_merged_3 : s3_store_data_merged_3; // @[MainPipe.scala 1475:8]
  wire [63:0] _io_release_update_bits_data_T__4 = s3_sc ? s3_sc_data_merged_4 : s3_store_data_merged_4; // @[MainPipe.scala 1475:8]
  wire [63:0] _io_release_update_bits_data_T__5 = s3_sc ? s3_sc_data_merged_5 : s3_store_data_merged_5; // @[MainPipe.scala 1475:8]
  wire [63:0] _io_release_update_bits_data_T__6 = s3_sc ? s3_sc_data_merged_6 : s3_store_data_merged_6; // @[MainPipe.scala 1475:8]
  wire [63:0] _io_release_update_bits_data_T__7 = s3_sc ? s3_sc_data_merged_7 : s3_store_data_merged_7; // @[MainPipe.scala 1475:8]
  wire [63:0] _io_release_update_bits_data_T_1_0 = amo_wait_amoalu ? s3_amo_data_merged_reg_0 :
    _io_release_update_bits_data_T__0; // @[MainPipe.scala 1472:37]
  wire [63:0] _io_release_update_bits_data_T_1_1 = amo_wait_amoalu ? s3_amo_data_merged_reg_1 :
    _io_release_update_bits_data_T__1; // @[MainPipe.scala 1472:37]
  wire [63:0] _io_release_update_bits_data_T_1_2 = amo_wait_amoalu ? s3_amo_data_merged_reg_2 :
    _io_release_update_bits_data_T__2; // @[MainPipe.scala 1472:37]
  wire [63:0] _io_release_update_bits_data_T_1_3 = amo_wait_amoalu ? s3_amo_data_merged_reg_3 :
    _io_release_update_bits_data_T__3; // @[MainPipe.scala 1472:37]
  wire [63:0] _io_release_update_bits_data_T_1_4 = amo_wait_amoalu ? s3_amo_data_merged_reg_4 :
    _io_release_update_bits_data_T__4; // @[MainPipe.scala 1472:37]
  wire [63:0] _io_release_update_bits_data_T_1_5 = amo_wait_amoalu ? s3_amo_data_merged_reg_5 :
    _io_release_update_bits_data_T__5; // @[MainPipe.scala 1472:37]
  wire [63:0] _io_release_update_bits_data_T_1_6 = amo_wait_amoalu ? s3_amo_data_merged_reg_6 :
    _io_release_update_bits_data_T__6; // @[MainPipe.scala 1472:37]
  wire [63:0] _io_release_update_bits_data_T_1_7 = amo_wait_amoalu ? s3_amo_data_merged_reg_7 :
    _io_release_update_bits_data_T__7; // @[MainPipe.scala 1472:37]
  wire [255:0] io_release_update_bits_data_lo = {_io_release_update_bits_data_T_1_3,_io_release_update_bits_data_T_1_2,
    _io_release_update_bits_data_T_1_1,_io_release_update_bits_data_T_1_0}; // @[MainPipe.scala 1480:5]
  wire [255:0] io_release_update_bits_data_hi = {_io_release_update_bits_data_T_1_7,_io_release_update_bits_data_T_1_6,
    _io_release_update_bits_data_T_1_5,_io_release_update_bits_data_T_1_4}; // @[MainPipe.scala 1480:5]
  wire [63:0] atomic_hit_resp_data = s3_sc ? {{63'd0}, s3_sc_fail} : s3_data_word; // @[MainPipe.scala 1483:30]
  wire  atomic_replay_resp_valid = s2_valid_dup_6 & s2_can_go_to_mq_dup_2 & replay & _s2_can_go_to_s3_T_3; // @[MainPipe.scala 1498:86]
  wire  atomic_hit_resp_valid = s3_valid_dup_10 & (s3_amo_can_go | s3_miss_can_go & _s3_can_do_amo_T_2); // @[MainPipe.scala 1499:48]
  wire [3:0] atomic_hit_resp_id = {{3'd0}, lrsc_valid_dup_2}; // @[MainPipe.scala 1482:29 1489:22]
  wire [63:0] _T_244_0 = s3_sc_dup_for_data_wvalid ? s3_sc_data_merged_dup_for_data_wvalid_0 : s3_store_data_merged_0; // @[MainPipe.scala 1550:8]
  wire [63:0] _T_244_1 = s3_sc_dup_for_data_wvalid ? s3_sc_data_merged_dup_for_data_wvalid_1 : s3_store_data_merged_1; // @[MainPipe.scala 1550:8]
  wire [63:0] _T_244_2 = s3_sc_dup_for_data_wvalid ? s3_sc_data_merged_dup_for_data_wvalid_2 : s3_store_data_merged_2; // @[MainPipe.scala 1550:8]
  wire [63:0] _T_244_3 = s3_sc_dup_for_data_wvalid ? s3_sc_data_merged_dup_for_data_wvalid_3 : s3_store_data_merged_3; // @[MainPipe.scala 1550:8]
  wire [63:0] _T_244_4 = s3_sc_dup_for_data_wvalid ? s3_sc_data_merged_dup_for_data_wvalid_4 : s3_store_data_merged_4; // @[MainPipe.scala 1550:8]
  wire [63:0] _T_244_5 = s3_sc_dup_for_data_wvalid ? s3_sc_data_merged_dup_for_data_wvalid_5 : s3_store_data_merged_5; // @[MainPipe.scala 1550:8]
  wire [63:0] _T_244_6 = s3_sc_dup_for_data_wvalid ? s3_sc_data_merged_dup_for_data_wvalid_6 : s3_store_data_merged_6; // @[MainPipe.scala 1550:8]
  wire [63:0] _T_244_7 = s3_sc_dup_for_data_wvalid ? s3_sc_data_merged_dup_for_data_wvalid_7 : s3_store_data_merged_7; // @[MainPipe.scala 1550:8]
  wire  _io_wb_valid_T_5 = s3_req_replace_dup_for_wb_valid & ~s3_replace_nothing_dup_for_wb_valid |
    s3_req_probe_dup_for_wb_valid; // @[MainPipe.scala 1562:77]
  wire  _io_wb_valid_T_16 = _io_wb_valid_T_5 | _s3_miss_can_go_dup_for_wb_valid_T_9; // @[MainPipe.scala 1564:99]
  wire  _io_wb_valid_T_17 = s3_valid_dup_for_wb_valid & _io_wb_valid_T_16; // @[MainPipe.scala 1560:44]
  wire [35:0] _io_wb_bits_addr_T_1 = {s3_tag_dup_for_wb_valid,s3_req_vaddr[11:0]}; // @[Cat.scala 31:58]
  wire [255:0] io_wb_bits_data_lo = {s3_data_3,s3_data_2,s3_data_1,s3_data_0}; // @[MainPipe.scala 1578:36]
  wire [255:0] io_wb_bits_data_hi = {s3_data_7,s3_data_6,s3_data_5,s3_data_4}; // @[MainPipe.scala 1578:36]
  reg  io_replace_access_valid_REG; // @[MainPipe.scala 1602:14]
  wire  _io_replace_access_valid_T_6 = io_miss_req_valid ? io_miss_req_ready : 1'h1; // @[MainPipe.scala 1604:10]
  reg  io_replace_access_valid_REG_1; // @[MainPipe.scala 1600:39]
  reg [5:0] io_replace_access_bits_set_REG; // @[MainPipe.scala 1610:42]
  wire  _io_replace_access_bits_way_T = io_miss_req_valid & io_miss_resp_merged; // @[MainPipe.scala 1613:27]
  wire [3:0] io_replace_access_bits_way_hi = io_miss_resp_repl_way_en[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] io_replace_access_bits_way_lo = io_miss_resp_repl_way_en[3:0]; // @[OneHot.scala 31:18]
  wire  _io_replace_access_bits_way_T_1 = |io_replace_access_bits_way_hi; // @[OneHot.scala 32:14]
  wire [3:0] _io_replace_access_bits_way_T_2 = io_replace_access_bits_way_hi | io_replace_access_bits_way_lo; // @[OneHot.scala 32:28]
  wire [1:0] io_replace_access_bits_way_hi_1 = _io_replace_access_bits_way_T_2[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] io_replace_access_bits_way_lo_1 = _io_replace_access_bits_way_T_2[1:0]; // @[OneHot.scala 31:18]
  wire  _io_replace_access_bits_way_T_3 = |io_replace_access_bits_way_hi_1; // @[OneHot.scala 32:14]
  wire [1:0] _io_replace_access_bits_way_T_4 = io_replace_access_bits_way_hi_1 | io_replace_access_bits_way_lo_1; // @[OneHot.scala 32:28]
  wire [2:0] _io_replace_access_bits_way_T_7 = {_io_replace_access_bits_way_T_1,_io_replace_access_bits_way_T_3,
    _io_replace_access_bits_way_T_4[1]}; // @[Cat.scala 31:58]
  wire [3:0] io_replace_access_bits_way_hi_2 = s1_way_en[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] io_replace_access_bits_way_lo_2 = s1_way_en[3:0]; // @[OneHot.scala 31:18]
  wire  _io_replace_access_bits_way_T_8 = |io_replace_access_bits_way_hi_2; // @[OneHot.scala 32:14]
  wire [3:0] _io_replace_access_bits_way_T_9 = io_replace_access_bits_way_hi_2 | io_replace_access_bits_way_lo_2; // @[OneHot.scala 32:28]
  wire [1:0] io_replace_access_bits_way_hi_3 = _io_replace_access_bits_way_T_9[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] io_replace_access_bits_way_lo_3 = _io_replace_access_bits_way_T_9[1:0]; // @[OneHot.scala 31:18]
  wire  _io_replace_access_bits_way_T_10 = |io_replace_access_bits_way_hi_3; // @[OneHot.scala 32:14]
  wire [1:0] _io_replace_access_bits_way_T_11 = io_replace_access_bits_way_hi_3 | io_replace_access_bits_way_lo_3; // @[OneHot.scala 32:28]
  wire [1:0] _io_replace_access_bits_way_T_13 = {_io_replace_access_bits_way_T_10,_io_replace_access_bits_way_T_11[1]}; // @[Cat.scala 31:58]
  reg [2:0] io_replace_access_bits_way_REG; // @[MainPipe.scala 1617:16]
  reg [2:0] io_replace_access_bits_way_REG_1; // @[MainPipe.scala 1611:42]
  reg [5:0] io_status_dup_0_s1_bits_set_r; // @[Reg.scala 16:16]
  reg  io_status_dup_0_s2_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_0_s2_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_0_s2_bits_way_en_r; // @[Reg.scala 16:16]
  reg  io_status_dup_0_s3_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_0_s3_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_0_s3_bits_way_en_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_1_s1_bits_set_r; // @[Reg.scala 16:16]
  reg  io_status_dup_1_s2_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_1_s2_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_1_s2_bits_way_en_r; // @[Reg.scala 16:16]
  reg  io_status_dup_1_s3_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_1_s3_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_1_s3_bits_way_en_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_2_s1_bits_set_r; // @[Reg.scala 16:16]
  reg  io_status_dup_2_s2_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_2_s2_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_2_s2_bits_way_en_r; // @[Reg.scala 16:16]
  reg  io_status_dup_2_s3_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_2_s3_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_2_s3_bits_way_en_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_3_s1_bits_set_r; // @[Reg.scala 16:16]
  reg  io_status_dup_3_s2_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_3_s2_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_3_s2_bits_way_en_r; // @[Reg.scala 16:16]
  reg  io_status_dup_3_s3_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_3_s3_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_3_s3_bits_way_en_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_4_s1_bits_set_r; // @[Reg.scala 16:16]
  reg  io_status_dup_4_s2_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_4_s2_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_4_s2_bits_way_en_r; // @[Reg.scala 16:16]
  reg  io_status_dup_4_s3_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_4_s3_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_4_s3_bits_way_en_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_5_s1_bits_set_r; // @[Reg.scala 16:16]
  reg  io_status_dup_5_s2_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_5_s2_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_5_s2_bits_way_en_r; // @[Reg.scala 16:16]
  reg  io_status_dup_5_s3_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_5_s3_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_5_s3_bits_way_en_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_6_s1_bits_set_r; // @[Reg.scala 16:16]
  reg  io_status_dup_6_s2_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_6_s2_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_6_s2_bits_way_en_r; // @[Reg.scala 16:16]
  reg  io_status_dup_6_s3_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_6_s3_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_6_s3_bits_way_en_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_7_s1_bits_set_r; // @[Reg.scala 16:16]
  reg  io_status_dup_7_s2_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_7_s2_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_7_s2_bits_way_en_r; // @[Reg.scala 16:16]
  reg  io_status_dup_7_s3_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_7_s3_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_7_s3_bits_way_en_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_8_s1_bits_set_r; // @[Reg.scala 16:16]
  reg  io_status_dup_8_s2_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_8_s2_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_8_s2_bits_way_en_r; // @[Reg.scala 16:16]
  reg  io_status_dup_8_s3_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_8_s3_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_8_s3_bits_way_en_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_9_s1_bits_set_r; // @[Reg.scala 16:16]
  reg  io_status_dup_9_s2_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_9_s2_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_9_s2_bits_way_en_r; // @[Reg.scala 16:16]
  reg  io_status_dup_9_s3_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_9_s3_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_9_s3_bits_way_en_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_10_s1_bits_set_r; // @[Reg.scala 16:16]
  reg  io_status_dup_10_s2_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_10_s2_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_10_s2_bits_way_en_r; // @[Reg.scala 16:16]
  reg  io_status_dup_10_s3_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_10_s3_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_10_s3_bits_way_en_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_11_s1_bits_set_r; // @[Reg.scala 16:16]
  reg  io_status_dup_11_s2_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_11_s2_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_11_s2_bits_way_en_r; // @[Reg.scala 16:16]
  reg  io_status_dup_11_s3_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_11_s3_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_11_s3_bits_way_en_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_12_s1_bits_set_r; // @[Reg.scala 16:16]
  reg  io_status_dup_12_s2_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_12_s2_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_12_s2_bits_way_en_r; // @[Reg.scala 16:16]
  reg  io_status_dup_12_s3_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_12_s3_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_12_s3_bits_way_en_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_13_s1_bits_set_r; // @[Reg.scala 16:16]
  reg  io_status_dup_13_s2_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_13_s2_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_13_s2_bits_way_en_r; // @[Reg.scala 16:16]
  reg  io_status_dup_13_s3_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_13_s3_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_13_s3_bits_way_en_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_14_s1_bits_set_r; // @[Reg.scala 16:16]
  reg  io_status_dup_14_s2_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_14_s2_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_14_s2_bits_way_en_r; // @[Reg.scala 16:16]
  reg  io_status_dup_14_s3_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_14_s3_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_14_s3_bits_way_en_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_15_s1_bits_set_r; // @[Reg.scala 16:16]
  reg  io_status_dup_15_s2_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_15_s2_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_15_s2_bits_way_en_r; // @[Reg.scala 16:16]
  reg  io_status_dup_15_s3_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_15_s3_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_15_s3_bits_way_en_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_16_s1_bits_set_r; // @[Reg.scala 16:16]
  reg  io_status_dup_16_s2_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_16_s2_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_16_s2_bits_way_en_r; // @[Reg.scala 16:16]
  reg  io_status_dup_16_s3_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_16_s3_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_16_s3_bits_way_en_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_17_s1_bits_set_r; // @[Reg.scala 16:16]
  reg  io_status_dup_17_s2_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_17_s2_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_17_s2_bits_way_en_r; // @[Reg.scala 16:16]
  reg  io_status_dup_17_s3_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_17_s3_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_17_s3_bits_way_en_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_18_s1_bits_set_r; // @[Reg.scala 16:16]
  reg  io_status_dup_18_s2_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_18_s2_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_18_s2_bits_way_en_r; // @[Reg.scala 16:16]
  reg  io_status_dup_18_s3_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_18_s3_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_18_s3_bits_way_en_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_19_s1_bits_set_r; // @[Reg.scala 16:16]
  reg  io_status_dup_19_s2_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_19_s2_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_19_s2_bits_way_en_r; // @[Reg.scala 16:16]
  reg  io_status_dup_19_s3_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_19_s3_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_19_s3_bits_way_en_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_20_s1_bits_set_r; // @[Reg.scala 16:16]
  reg  io_status_dup_20_s2_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_20_s2_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_20_s2_bits_way_en_r; // @[Reg.scala 16:16]
  reg  io_status_dup_20_s3_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_20_s3_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_20_s3_bits_way_en_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_21_s1_bits_set_r; // @[Reg.scala 16:16]
  reg  io_status_dup_21_s2_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_21_s2_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_21_s2_bits_way_en_r; // @[Reg.scala 16:16]
  reg  io_status_dup_21_s3_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_21_s3_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_21_s3_bits_way_en_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_22_s1_bits_set_r; // @[Reg.scala 16:16]
  reg  io_status_dup_22_s2_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_22_s2_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_22_s2_bits_way_en_r; // @[Reg.scala 16:16]
  reg  io_status_dup_22_s3_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_22_s3_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_22_s3_bits_way_en_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_23_s1_bits_set_r; // @[Reg.scala 16:16]
  reg  io_status_dup_23_s2_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_23_s2_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_23_s2_bits_way_en_r; // @[Reg.scala 16:16]
  reg  io_status_dup_23_s3_valid_r; // @[Reg.scala 16:16]
  reg [5:0] io_status_dup_23_s3_bits_set_r; // @[Reg.scala 16:16]
  reg [7:0] io_status_dup_23_s3_bits_way_en_r; // @[Reg.scala 16:16]
  reg  io_error_valid_REG; // @[MainPipe.scala 1655:40]
  reg  io_error_report_to_beu_r; // @[Reg.scala 16:16]
  reg  io_error_report_to_beu_REG; // @[MainPipe.scala 1658:91]
  reg [35:0] io_error_paddr_r; // @[Reg.scala 16:16]
  reg  io_error_source_tag_r; // @[Reg.scala 16:16]
  wire  _io_error_source_l2_T = s2_flag_error | s2_req_error; // @[MainPipe.scala 1662:49]
  reg  io_error_source_l2_r; // @[Reg.scala 16:16]
  wire  _io_error_opType_store_T_2 = _s2_can_go_to_s3_T_2 & _s2_amo_hit_T; // @[MainPipe.scala 1663:53]
  reg  io_error_opType_store_r; // @[Reg.scala 16:16]
  reg  io_error_opType_probe_r; // @[Reg.scala 16:16]
  reg  io_error_opType_release_r; // @[Reg.scala 16:16]
  wire  _io_error_opType_atom_T_2 = _s2_can_go_to_s3_T_3 & _s2_amo_hit_T; // @[MainPipe.scala 1666:50]
  reg  io_error_opType_atom_r; // @[Reg.scala 16:16]
  wire [1:0] _T_264 = s0_fire + s1_valid; // @[Bitwise.scala 48:55]
  wire [1:0] _T_266 = s2_valid + s3_valid; // @[Bitwise.scala 48:55]
  reg  io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg  io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  reg [2:0] io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [2:0] io_perf_1_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  Arbiter_12 main_pipe_req_arb ( // @[DCacheWrapper.scala 250:21]
    .io_in_0_ready(main_pipe_req_arb_io_in_0_ready),
    .io_in_0_valid(main_pipe_req_arb_io_in_0_valid),
    .io_in_0_bits_miss(main_pipe_req_arb_io_in_0_bits_miss),
    .io_in_0_bits_miss_id(main_pipe_req_arb_io_in_0_bits_miss_id),
    .io_in_0_bits_miss_param(main_pipe_req_arb_io_in_0_bits_miss_param),
    .io_in_0_bits_miss_dirty(main_pipe_req_arb_io_in_0_bits_miss_dirty),
    .io_in_0_bits_miss_way_en(main_pipe_req_arb_io_in_0_bits_miss_way_en),
    .io_in_0_bits_probe(main_pipe_req_arb_io_in_0_bits_probe),
    .io_in_0_bits_probe_param(main_pipe_req_arb_io_in_0_bits_probe_param),
    .io_in_0_bits_probe_need_data(main_pipe_req_arb_io_in_0_bits_probe_need_data),
    .io_in_0_bits_source(main_pipe_req_arb_io_in_0_bits_source),
    .io_in_0_bits_cmd(main_pipe_req_arb_io_in_0_bits_cmd),
    .io_in_0_bits_vaddr(main_pipe_req_arb_io_in_0_bits_vaddr),
    .io_in_0_bits_addr(main_pipe_req_arb_io_in_0_bits_addr),
    .io_in_0_bits_store_data(main_pipe_req_arb_io_in_0_bits_store_data),
    .io_in_0_bits_store_mask(main_pipe_req_arb_io_in_0_bits_store_mask),
    .io_in_0_bits_word_idx(main_pipe_req_arb_io_in_0_bits_word_idx),
    .io_in_0_bits_amo_data(main_pipe_req_arb_io_in_0_bits_amo_data),
    .io_in_0_bits_amo_mask(main_pipe_req_arb_io_in_0_bits_amo_mask),
    .io_in_0_bits_error(main_pipe_req_arb_io_in_0_bits_error),
    .io_in_0_bits_replace(main_pipe_req_arb_io_in_0_bits_replace),
    .io_in_0_bits_replace_way_en(main_pipe_req_arb_io_in_0_bits_replace_way_en),
    .io_in_0_bits_id(main_pipe_req_arb_io_in_0_bits_id),
    .io_in_1_ready(main_pipe_req_arb_io_in_1_ready),
    .io_in_1_valid(main_pipe_req_arb_io_in_1_valid),
    .io_in_1_bits_miss(main_pipe_req_arb_io_in_1_bits_miss),
    .io_in_1_bits_miss_id(main_pipe_req_arb_io_in_1_bits_miss_id),
    .io_in_1_bits_miss_param(main_pipe_req_arb_io_in_1_bits_miss_param),
    .io_in_1_bits_miss_dirty(main_pipe_req_arb_io_in_1_bits_miss_dirty),
    .io_in_1_bits_miss_way_en(main_pipe_req_arb_io_in_1_bits_miss_way_en),
    .io_in_1_bits_probe(main_pipe_req_arb_io_in_1_bits_probe),
    .io_in_1_bits_probe_param(main_pipe_req_arb_io_in_1_bits_probe_param),
    .io_in_1_bits_probe_need_data(main_pipe_req_arb_io_in_1_bits_probe_need_data),
    .io_in_1_bits_source(main_pipe_req_arb_io_in_1_bits_source),
    .io_in_1_bits_cmd(main_pipe_req_arb_io_in_1_bits_cmd),
    .io_in_1_bits_vaddr(main_pipe_req_arb_io_in_1_bits_vaddr),
    .io_in_1_bits_addr(main_pipe_req_arb_io_in_1_bits_addr),
    .io_in_1_bits_store_data(main_pipe_req_arb_io_in_1_bits_store_data),
    .io_in_1_bits_store_mask(main_pipe_req_arb_io_in_1_bits_store_mask),
    .io_in_1_bits_word_idx(main_pipe_req_arb_io_in_1_bits_word_idx),
    .io_in_1_bits_amo_data(main_pipe_req_arb_io_in_1_bits_amo_data),
    .io_in_1_bits_amo_mask(main_pipe_req_arb_io_in_1_bits_amo_mask),
    .io_in_1_bits_error(main_pipe_req_arb_io_in_1_bits_error),
    .io_in_1_bits_replace(main_pipe_req_arb_io_in_1_bits_replace),
    .io_in_1_bits_replace_way_en(main_pipe_req_arb_io_in_1_bits_replace_way_en),
    .io_in_1_bits_id(main_pipe_req_arb_io_in_1_bits_id),
    .io_in_2_ready(main_pipe_req_arb_io_in_2_ready),
    .io_in_2_valid(main_pipe_req_arb_io_in_2_valid),
    .io_in_2_bits_miss_id(main_pipe_req_arb_io_in_2_bits_miss_id),
    .io_in_2_bits_probe(main_pipe_req_arb_io_in_2_bits_probe),
    .io_in_2_bits_probe_param(main_pipe_req_arb_io_in_2_bits_probe_param),
    .io_in_2_bits_probe_need_data(main_pipe_req_arb_io_in_2_bits_probe_need_data),
    .io_in_2_bits_source(main_pipe_req_arb_io_in_2_bits_source),
    .io_in_2_bits_cmd(main_pipe_req_arb_io_in_2_bits_cmd),
    .io_in_2_bits_vaddr(main_pipe_req_arb_io_in_2_bits_vaddr),
    .io_in_2_bits_addr(main_pipe_req_arb_io_in_2_bits_addr),
    .io_in_2_bits_store_data(main_pipe_req_arb_io_in_2_bits_store_data),
    .io_in_2_bits_store_mask(main_pipe_req_arb_io_in_2_bits_store_mask),
    .io_in_2_bits_replace(main_pipe_req_arb_io_in_2_bits_replace),
    .io_in_2_bits_replace_way_en(main_pipe_req_arb_io_in_2_bits_replace_way_en),
    .io_in_2_bits_id(main_pipe_req_arb_io_in_2_bits_id),
    .io_in_3_ready(main_pipe_req_arb_io_in_3_ready),
    .io_in_3_valid(main_pipe_req_arb_io_in_3_valid),
    .io_in_3_bits_miss(main_pipe_req_arb_io_in_3_bits_miss),
    .io_in_3_bits_miss_id(main_pipe_req_arb_io_in_3_bits_miss_id),
    .io_in_3_bits_miss_param(main_pipe_req_arb_io_in_3_bits_miss_param),
    .io_in_3_bits_miss_dirty(main_pipe_req_arb_io_in_3_bits_miss_dirty),
    .io_in_3_bits_miss_way_en(main_pipe_req_arb_io_in_3_bits_miss_way_en),
    .io_in_3_bits_probe(main_pipe_req_arb_io_in_3_bits_probe),
    .io_in_3_bits_probe_param(main_pipe_req_arb_io_in_3_bits_probe_param),
    .io_in_3_bits_probe_need_data(main_pipe_req_arb_io_in_3_bits_probe_need_data),
    .io_in_3_bits_source(main_pipe_req_arb_io_in_3_bits_source),
    .io_in_3_bits_cmd(main_pipe_req_arb_io_in_3_bits_cmd),
    .io_in_3_bits_vaddr(main_pipe_req_arb_io_in_3_bits_vaddr),
    .io_in_3_bits_addr(main_pipe_req_arb_io_in_3_bits_addr),
    .io_in_3_bits_store_data(main_pipe_req_arb_io_in_3_bits_store_data),
    .io_in_3_bits_store_mask(main_pipe_req_arb_io_in_3_bits_store_mask),
    .io_in_3_bits_word_idx(main_pipe_req_arb_io_in_3_bits_word_idx),
    .io_in_3_bits_amo_data(main_pipe_req_arb_io_in_3_bits_amo_data),
    .io_in_3_bits_amo_mask(main_pipe_req_arb_io_in_3_bits_amo_mask),
    .io_in_3_bits_error(main_pipe_req_arb_io_in_3_bits_error),
    .io_in_3_bits_replace(main_pipe_req_arb_io_in_3_bits_replace),
    .io_in_3_bits_replace_way_en(main_pipe_req_arb_io_in_3_bits_replace_way_en),
    .io_in_3_bits_id(main_pipe_req_arb_io_in_3_bits_id),
    .io_out_ready(main_pipe_req_arb_io_out_ready),
    .io_out_valid(main_pipe_req_arb_io_out_valid),
    .io_out_bits_miss(main_pipe_req_arb_io_out_bits_miss),
    .io_out_bits_miss_id(main_pipe_req_arb_io_out_bits_miss_id),
    .io_out_bits_miss_param(main_pipe_req_arb_io_out_bits_miss_param),
    .io_out_bits_miss_dirty(main_pipe_req_arb_io_out_bits_miss_dirty),
    .io_out_bits_miss_way_en(main_pipe_req_arb_io_out_bits_miss_way_en),
    .io_out_bits_probe(main_pipe_req_arb_io_out_bits_probe),
    .io_out_bits_probe_param(main_pipe_req_arb_io_out_bits_probe_param),
    .io_out_bits_probe_need_data(main_pipe_req_arb_io_out_bits_probe_need_data),
    .io_out_bits_source(main_pipe_req_arb_io_out_bits_source),
    .io_out_bits_cmd(main_pipe_req_arb_io_out_bits_cmd),
    .io_out_bits_vaddr(main_pipe_req_arb_io_out_bits_vaddr),
    .io_out_bits_addr(main_pipe_req_arb_io_out_bits_addr),
    .io_out_bits_store_data(main_pipe_req_arb_io_out_bits_store_data),
    .io_out_bits_store_mask(main_pipe_req_arb_io_out_bits_store_mask),
    .io_out_bits_word_idx(main_pipe_req_arb_io_out_bits_word_idx),
    .io_out_bits_amo_data(main_pipe_req_arb_io_out_bits_amo_data),
    .io_out_bits_amo_mask(main_pipe_req_arb_io_out_bits_amo_mask),
    .io_out_bits_error(main_pipe_req_arb_io_out_bits_error),
    .io_out_bits_replace(main_pipe_req_arb_io_out_bits_replace),
    .io_out_bits_replace_way_en(main_pipe_req_arb_io_out_bits_replace_way_en),
    .io_out_bits_id(main_pipe_req_arb_io_out_bits_id)
  );
  AMOALU amoalu ( // @[MainPipe.scala 651:24]
    .io_mask(amoalu_io_mask),
    .io_cmd(amoalu_io_cmd),
    .io_lhs(amoalu_io_lhs),
    .io_rhs(amoalu_io_rhs),
    .io_out(amoalu_io_out)
  );
  assign io_probe_req_ready = main_pipe_req_arb_io_in_0_ready; // @[DCacheWrapper.scala 253:9]
  assign io_miss_req_valid = s2_valid_dup_4 & s2_can_go_to_mq_dup_0; // @[MainPipe.scala 1435:40]
  assign io_miss_req_bits_source = s2_req_source; // @[MainPipe.scala 1438:19]
  assign io_miss_req_bits_cmd = s2_req_cmd; // @[MainPipe.scala 1440:16]
  assign io_miss_req_bits_addr = s2_req_addr; // @[MainPipe.scala 1441:17]
  assign io_miss_req_bits_vaddr = s2_req_vaddr_dup_for_miss_req; // @[MainPipe.scala 1442:18]
  assign io_miss_req_bits_way_en = s2_tag_match ? s2_tag_match_way : s2_repl_way_en; // @[MainPipe.scala 1443:25]
  assign io_miss_req_bits_word_idx = s2_req_word_idx; // @[MainPipe.scala 1446:21]
  assign io_miss_req_bits_amo_data = s2_req_amo_data; // @[MainPipe.scala 1447:21]
  assign io_miss_req_bits_amo_mask = s2_req_amo_mask; // @[MainPipe.scala 1448:21]
  assign io_miss_req_bits_req_coh_state = s2_hit_coh_state; // @[MainPipe.scala 1449:20]
  assign io_miss_req_bits_replace_coh_state = s2_repl_coh_state; // @[MainPipe.scala 1450:24]
  assign io_miss_req_bits_replace_tag = s2_repl_tag; // @[MainPipe.scala 1451:24]
  assign io_miss_req_bits_id = s2_req_id; // @[MainPipe.scala 1453:15]
  assign io_miss_req_bits_store_data = s2_req_store_data; // @[MainPipe.scala 1444:23]
  assign io_miss_req_bits_store_mask = s2_req_store_mask; // @[MainPipe.scala 1445:23]
  assign io_store_req_ready = _store_req_ready_T_5 & ~io_replace_req_valid; // @[MainPipe.scala 223:25]
  assign io_store_replay_resp_valid = s2_valid_dup_5 & s2_can_go_to_mq_dup_1 & replay & _s2_can_go_to_s3_T_2; // @[MainPipe.scala 1457:85]
  assign io_store_replay_resp_bits_id = s2_req_id; // @[MainPipe.scala 1461:32]
  assign io_store_hit_resp_valid = s3_valid_dup_8 & s3_store_can_go; // @[MainPipe.scala 1463:46]
  assign io_store_hit_resp_bits_id = s3_req_id; // @[MainPipe.scala 1467:29]
  assign io_release_update_valid = s3_valid_dup_9 & _s3_update_data_cango_T & s3_hit & update_data; // @[MainPipe.scala 1469:94]
  assign io_release_update_bits_addr = s3_req_addr_dup_3; // @[MainPipe.scala 1470:31]
  assign io_release_update_bits_mask = s3_store_hit_dup_1 ? s3_banked_store_wmask : banked_amo_wmask; // @[MainPipe.scala 1471:37]
  assign io_release_update_bits_data = {io_release_update_bits_data_hi,io_release_update_bits_data_lo}; // @[MainPipe.scala 1480:5]
  assign io_atomic_req_ready = main_pipe_req_arb_io_in_3_ready; // @[DCacheWrapper.scala 253:9]
  assign io_atomic_resp_valid = atomic_replay_resp_valid | atomic_hit_resp_valid; // @[MainPipe.scala 1500:52]
  assign io_atomic_resp_bits_data = atomic_replay_resp_valid ? 64'h0 : atomic_hit_resp_data; // @[MainPipe.scala 1501:29]
  assign io_atomic_resp_bits_miss = s2_valid_dup_6 & s2_can_go_to_mq_dup_2 & replay & _s2_can_go_to_s3_T_3; // @[MainPipe.scala 1498:86]
  assign io_atomic_resp_bits_miss_id = atomic_replay_resp_valid ? 2'h0 : s3_req_miss_id; // @[MainPipe.scala 1501:29]
  assign io_atomic_resp_bits_replay = s2_valid_dup_6 & s2_can_go_to_mq_dup_2 & replay & _s2_can_go_to_s3_T_3; // @[MainPipe.scala 1498:86]
  assign io_atomic_resp_bits_error = atomic_replay_resp_valid ? 1'h0 : s3_error; // @[MainPipe.scala 1501:29]
  assign io_atomic_resp_bits_ack_miss_queue = atomic_replay_resp_valid ? 1'h0 : s3_req_miss_dup_5; // @[MainPipe.scala 1501:29]
  assign io_atomic_resp_bits_id = atomic_replay_resp_valid ? 4'h0 : atomic_hit_resp_id; // @[MainPipe.scala 1501:29]
  assign io_replace_req_ready = main_pipe_req_arb_io_in_1_ready; // @[DCacheWrapper.scala 253:9]
  assign io_replace_resp_valid = s3_fire & s3_req_replace_dup_3; // @[MainPipe.scala 1503:36]
  assign io_replace_resp_bits = s3_req_miss_id; // @[MainPipe.scala 1504:24]
  assign io_wb_valid = _io_wb_valid_T_17 & need_wb_dup_for_wb_valid; // @[MainPipe.scala 1571:7]
  assign io_wb_bits_param = s3_req_probe_dup_for_wb_valid ? _probe_new_coh_dup_for_wb_valid_T_59 :
    miss_shrink_param_dup_for_wb_valid; // @[MainPipe.scala 1382:45]
  assign io_wb_bits_voluntary = miss_update_meta_dup_for_wb_valid | s3_req_replace_dup_for_wb_valid; // @[MainPipe.scala 1575:56]
  assign io_wb_bits_hasData = s3_tag_match_dup_for_wb_valid & s3_req_probe_dup_for_wb_valid &
    writeback_data_dup_for_wb_valid_r | _writeback_data_dup_for_wb_valid_T_2; // @[MainPipe.scala 1391:120]
  assign io_wb_bits_delay_release = s3_req_replace_dup_for_wb_valid; // @[MainPipe.scala 1579:28]
  assign io_wb_bits_miss_id = s3_req_miss_id; // @[MainPipe.scala 1580:22]
  assign io_wb_bits_addr = {_io_wb_bits_addr_T_1[35:6], 6'h0}; // @[L1Cache.scala 86:59]
  assign io_wb_bits_data = {io_wb_bits_data_hi,io_wb_bits_data_lo}; // @[MainPipe.scala 1578:36]
  assign io_probe_ttob_check_req_valid = s2_ttob_probe_valid & s2_valid; // @[MainPipe.scala 468:56]
  assign io_probe_ttob_check_req_bits_addr = s2_ttob_probe_addr; // @[MainPipe.scala 469:37]
  assign io_data_read_intend = s1_valid_dup_3 & s1_need_data; // @[MainPipe.scala 1429:42]
  assign io_data_readline_valid = s1_valid_dup_4 & s1_need_data; // @[MainPipe.scala 1430:45]
  assign io_data_readline_bits_way_en = s1_req_replace ? s1_req_replace_way_en : _s1_way_en_T_1; // @[MainPipe.scala 332:22]
  assign io_data_readline_bits_addr = s1_req_vaddr_dup_for_data_read[35:0]; // @[MainPipe.scala 1433:30]
  assign io_data_write_valid = s3_valid_dup_for_data_wvalid & s3_update_data_cango_dup_for_data_wvalid &
    update_data_dup_for_data_wvalid; // @[MainPipe.scala 1543:101]
  assign io_data_write_bits_wmask = miss_update_meta_dup_for_data_wvalid ? 8'hff : _banked_wmask_T_2; // @[MainPipe.scala 1122:25]
  assign io_data_write_bits_data_0 = amo_wait_amoalu_dup_for_data_wvalid ? s3_amo_data_merged_reg_0 : _T_244_0; // @[MainPipe.scala 1547:33]
  assign io_data_write_bits_data_1 = amo_wait_amoalu_dup_for_data_wvalid ? s3_amo_data_merged_reg_1 : _T_244_1; // @[MainPipe.scala 1547:33]
  assign io_data_write_bits_data_2 = amo_wait_amoalu_dup_for_data_wvalid ? s3_amo_data_merged_reg_2 : _T_244_2; // @[MainPipe.scala 1547:33]
  assign io_data_write_bits_data_3 = amo_wait_amoalu_dup_for_data_wvalid ? s3_amo_data_merged_reg_3 : _T_244_3; // @[MainPipe.scala 1547:33]
  assign io_data_write_bits_data_4 = amo_wait_amoalu_dup_for_data_wvalid ? s3_amo_data_merged_reg_4 : _T_244_4; // @[MainPipe.scala 1547:33]
  assign io_data_write_bits_data_5 = amo_wait_amoalu_dup_for_data_wvalid ? s3_amo_data_merged_reg_5 : _T_244_5; // @[MainPipe.scala 1547:33]
  assign io_data_write_bits_data_6 = amo_wait_amoalu_dup_for_data_wvalid ? s3_amo_data_merged_reg_6 : _T_244_6; // @[MainPipe.scala 1547:33]
  assign io_data_write_bits_data_7 = amo_wait_amoalu_dup_for_data_wvalid ? s3_amo_data_merged_reg_7 : _T_244_7; // @[MainPipe.scala 1547:33]
  assign io_data_write_dup_0_valid = s3_valid_dup_for_data_wbank_0 & s3_update_data_cango_dup_for_data_wbank &
    update_data_dup_for_data_wbank; // @[MainPipe.scala 1255:111]
  assign io_data_write_dup_0_bits_way_en = io_data_write_dup_0_bits_way_en_r; // @[MainPipe.scala 1256:38]
  assign io_data_write_dup_0_bits_addr = io_data_write_dup_0_bits_addr_r[35:0]; // @[MainPipe.scala 1257:36]
  assign io_data_write_dup_1_valid = s3_valid_dup_for_data_wbank_1 & s3_update_data_cango_dup_for_data_wbank_1 &
    update_data_dup_for_data_wbank_1; // @[MainPipe.scala 1255:111]
  assign io_data_write_dup_1_bits_way_en = io_data_write_dup_1_bits_way_en_r; // @[MainPipe.scala 1256:38]
  assign io_data_write_dup_1_bits_addr = io_data_write_dup_1_bits_addr_r[35:0]; // @[MainPipe.scala 1257:36]
  assign io_data_write_dup_2_valid = s3_valid_dup_for_data_wbank_2 & s3_update_data_cango_dup_for_data_wbank_2 &
    update_data_dup_for_data_wbank_2; // @[MainPipe.scala 1255:111]
  assign io_data_write_dup_2_bits_way_en = io_data_write_dup_2_bits_way_en_r; // @[MainPipe.scala 1256:38]
  assign io_data_write_dup_2_bits_addr = io_data_write_dup_2_bits_addr_r[35:0]; // @[MainPipe.scala 1257:36]
  assign io_data_write_dup_3_valid = s3_valid_dup_for_data_wbank_3 & s3_update_data_cango_dup_for_data_wbank_3 &
    update_data_dup_for_data_wbank_3; // @[MainPipe.scala 1255:111]
  assign io_data_write_dup_3_bits_way_en = io_data_write_dup_3_bits_way_en_r; // @[MainPipe.scala 1256:38]
  assign io_data_write_dup_3_bits_addr = io_data_write_dup_3_bits_addr_r[35:0]; // @[MainPipe.scala 1257:36]
  assign io_data_write_dup_4_valid = s3_valid_dup_for_data_wbank_4 & s3_update_data_cango_dup_for_data_wbank_4 &
    update_data_dup_for_data_wbank_4; // @[MainPipe.scala 1255:111]
  assign io_data_write_dup_4_bits_way_en = io_data_write_dup_4_bits_way_en_r; // @[MainPipe.scala 1256:38]
  assign io_data_write_dup_4_bits_addr = io_data_write_dup_4_bits_addr_r[35:0]; // @[MainPipe.scala 1257:36]
  assign io_data_write_dup_5_valid = s3_valid_dup_for_data_wbank_5 & s3_update_data_cango_dup_for_data_wbank_5 &
    update_data_dup_for_data_wbank_5; // @[MainPipe.scala 1255:111]
  assign io_data_write_dup_5_bits_way_en = io_data_write_dup_5_bits_way_en_r; // @[MainPipe.scala 1256:38]
  assign io_data_write_dup_5_bits_addr = io_data_write_dup_5_bits_addr_r[35:0]; // @[MainPipe.scala 1257:36]
  assign io_data_write_dup_6_valid = s3_valid_dup_for_data_wbank_6 & s3_update_data_cango_dup_for_data_wbank_6 &
    update_data_dup_for_data_wbank_6; // @[MainPipe.scala 1255:111]
  assign io_data_write_dup_6_bits_way_en = io_data_write_dup_6_bits_way_en_r; // @[MainPipe.scala 1256:38]
  assign io_data_write_dup_6_bits_addr = io_data_write_dup_6_bits_addr_r[35:0]; // @[MainPipe.scala 1257:36]
  assign io_data_write_dup_7_valid = s3_valid_dup_for_data_wbank_7 & s3_update_data_cango_dup_for_data_wbank_7 &
    update_data_dup_for_data_wbank_7; // @[MainPipe.scala 1255:111]
  assign io_data_write_dup_7_bits_way_en = io_data_write_dup_7_bits_way_en_r; // @[MainPipe.scala 1256:38]
  assign io_data_write_dup_7_bits_addr = io_data_write_dup_7_bits_addr_r[35:0]; // @[MainPipe.scala 1257:36]
  assign io_meta_read_valid = req_valid & s1_ready & _s0_can_go_T_2; // @[MainPipe.scala 1421:47]
  assign io_meta_read_bits_idx = req_bits_vaddr[11:6]; // @[L1Cache.scala 83:33]
  assign io_meta_write_valid = s3_fire_dup_for_meta_wvalid & update_meta_dup_for_meta_wvalid; // @[MainPipe.scala 1506:55]
  assign io_meta_write_bits_idx = s3_idx_dup_2; // @[MainPipe.scala 1507:26]
  assign io_meta_write_bits_way_en = s3_way_en_dup_0; // @[MainPipe.scala 1508:29]
  assign io_meta_write_bits_meta_coh_state = miss_update_meta_dup_for_meta_wvalid ? miss_new_coh_state :
    _new_coh_T_2_state; // @[MainPipe.scala 816:20]
  assign io_error_flag_write_valid = s3_fire_dup_for_err_wvalid & update_meta_dup_for_err_wvalid & s3_req_error; // @[MainPipe.scala 1511:95]
  assign io_error_flag_write_bits_idx = s3_idx_dup_3; // @[MainPipe.scala 1512:32]
  assign io_error_flag_write_bits_way_en = s3_way_en_dup_1; // @[MainPipe.scala 1513:35]
  assign io_error_flag_write_bits_flag = s3_req_error; // @[MainPipe.scala 1514:33]
  assign io_tag_read_valid = _io_meta_read_valid_T_2 & ~req_bits_replace; // @[MainPipe.scala 1425:63]
  assign io_tag_read_bits_idx = req_bits_vaddr[11:6]; // @[L1Cache.scala 83:33]
  assign io_tag_write_valid = s3_fire_dup_for_tag_wvalid & miss_update_meta_dup_for_tag_wvalid; // @[MainPipe.scala 1531:53]
  assign io_tag_write_bits_idx = s3_idx_dup_4; // @[MainPipe.scala 1532:25]
  assign io_tag_write_bits_way_en = s3_way_en_dup_2; // @[MainPipe.scala 1533:28]
  assign io_tag_write_bits_tag = s3_req_addr_dup_4[35:12]; // @[L1Cache.scala 80:41]
  assign io_tag_write_intend = s3_req_miss_dup_7 & s3_valid_dup_11; // @[MainPipe.scala 1537:45]
  assign io_replace_access_valid = io_replace_access_valid_REG_1; // @[MainPipe.scala 1600:29]
  assign io_replace_access_bits_set = io_replace_access_bits_set_REG; // @[MainPipe.scala 1610:32]
  assign io_replace_access_bits_way = io_replace_access_bits_way_REG_1; // @[MainPipe.scala 1611:32]
  assign io_replace_way_set_bits = s1_idx_dup_for_replace_way; // @[MainPipe.scala 1623:27]
  assign io_status_s1_valid = s1_valid_dup_5; // @[MainPipe.scala 1629:22]
  assign io_status_s1_bits_set = s1_req_vaddr[11:6]; // @[L1Cache.scala 83:33]
  assign io_status_s2_valid = s2_valid_dup_7 & ~s2_req_replace_dup_2; // @[MainPipe.scala 1632:41]
  assign io_status_s2_bits_set = s2_idx_dup_for_status; // @[MainPipe.scala 1633:25]
  assign io_status_s2_bits_way_en = s2_way_en; // @[MainPipe.scala 1634:28]
  assign io_status_s3_valid = s3_valid & ~s3_req_replace_dup_7; // @[MainPipe.scala 1635:34]
  assign io_status_s3_bits_set = s3_idx_dup_5; // @[MainPipe.scala 1636:25]
  assign io_status_s3_bits_way_en = s3_way_en; // @[MainPipe.scala 1637:28]
  assign io_status_dup_0_s1_valid = s1_valid_dup_for_status_0; // @[MainPipe.scala 1640:16]
  assign io_status_dup_0_s1_bits_set = io_status_dup_0_s1_bits_set_r; // @[MainPipe.scala 1641:19]
  assign io_status_dup_0_s1_bits_way_en = s1_req_replace ? s1_req_replace_way_en : _s1_way_en_T_1; // @[MainPipe.scala 332:22]
  assign io_status_dup_0_s2_valid = s2_valid_dup_for_status_0 & ~io_status_dup_0_s2_valid_r; // @[MainPipe.scala 1643:46]
  assign io_status_dup_0_s2_bits_set = io_status_dup_0_s2_bits_set_r; // @[MainPipe.scala 1644:19]
  assign io_status_dup_0_s2_bits_way_en = io_status_dup_0_s2_bits_way_en_r; // @[MainPipe.scala 1645:22]
  assign io_status_dup_0_s3_valid = s3_valid_dup_for_status_0 & ~io_status_dup_0_s3_valid_r; // @[MainPipe.scala 1646:46]
  assign io_status_dup_0_s3_bits_set = io_status_dup_0_s3_bits_set_r; // @[MainPipe.scala 1647:19]
  assign io_status_dup_0_s3_bits_way_en = io_status_dup_0_s3_bits_way_en_r; // @[MainPipe.scala 1648:22]
  assign io_status_dup_1_s1_valid = s1_valid_dup_for_status_1; // @[MainPipe.scala 1640:16]
  assign io_status_dup_1_s1_bits_set = io_status_dup_1_s1_bits_set_r; // @[MainPipe.scala 1641:19]
  assign io_status_dup_1_s1_bits_way_en = s1_req_replace ? s1_req_replace_way_en : _s1_way_en_T_1; // @[MainPipe.scala 332:22]
  assign io_status_dup_1_s2_valid = s2_valid_dup_for_status_1 & ~io_status_dup_1_s2_valid_r; // @[MainPipe.scala 1643:46]
  assign io_status_dup_1_s2_bits_set = io_status_dup_1_s2_bits_set_r; // @[MainPipe.scala 1644:19]
  assign io_status_dup_1_s2_bits_way_en = io_status_dup_1_s2_bits_way_en_r; // @[MainPipe.scala 1645:22]
  assign io_status_dup_1_s3_valid = s3_valid_dup_for_status_1 & ~io_status_dup_1_s3_valid_r; // @[MainPipe.scala 1646:46]
  assign io_status_dup_1_s3_bits_set = io_status_dup_1_s3_bits_set_r; // @[MainPipe.scala 1647:19]
  assign io_status_dup_1_s3_bits_way_en = io_status_dup_1_s3_bits_way_en_r; // @[MainPipe.scala 1648:22]
  assign io_status_dup_2_s1_valid = s1_valid_dup_for_status_2; // @[MainPipe.scala 1640:16]
  assign io_status_dup_2_s1_bits_set = io_status_dup_2_s1_bits_set_r; // @[MainPipe.scala 1641:19]
  assign io_status_dup_2_s1_bits_way_en = s1_req_replace ? s1_req_replace_way_en : _s1_way_en_T_1; // @[MainPipe.scala 332:22]
  assign io_status_dup_2_s2_valid = s2_valid_dup_for_status_2 & ~io_status_dup_2_s2_valid_r; // @[MainPipe.scala 1643:46]
  assign io_status_dup_2_s2_bits_set = io_status_dup_2_s2_bits_set_r; // @[MainPipe.scala 1644:19]
  assign io_status_dup_2_s2_bits_way_en = io_status_dup_2_s2_bits_way_en_r; // @[MainPipe.scala 1645:22]
  assign io_status_dup_2_s3_valid = s3_valid_dup_for_status_2 & ~io_status_dup_2_s3_valid_r; // @[MainPipe.scala 1646:46]
  assign io_status_dup_2_s3_bits_set = io_status_dup_2_s3_bits_set_r; // @[MainPipe.scala 1647:19]
  assign io_status_dup_2_s3_bits_way_en = io_status_dup_2_s3_bits_way_en_r; // @[MainPipe.scala 1648:22]
  assign io_status_dup_3_s1_valid = s1_valid_dup_for_status_3; // @[MainPipe.scala 1640:16]
  assign io_status_dup_3_s1_bits_set = io_status_dup_3_s1_bits_set_r; // @[MainPipe.scala 1641:19]
  assign io_status_dup_3_s1_bits_way_en = s1_req_replace ? s1_req_replace_way_en : _s1_way_en_T_1; // @[MainPipe.scala 332:22]
  assign io_status_dup_3_s2_valid = s2_valid_dup_for_status_3 & ~io_status_dup_3_s2_valid_r; // @[MainPipe.scala 1643:46]
  assign io_status_dup_3_s2_bits_set = io_status_dup_3_s2_bits_set_r; // @[MainPipe.scala 1644:19]
  assign io_status_dup_3_s2_bits_way_en = io_status_dup_3_s2_bits_way_en_r; // @[MainPipe.scala 1645:22]
  assign io_status_dup_3_s3_valid = s3_valid_dup_for_status_3 & ~io_status_dup_3_s3_valid_r; // @[MainPipe.scala 1646:46]
  assign io_status_dup_3_s3_bits_set = io_status_dup_3_s3_bits_set_r; // @[MainPipe.scala 1647:19]
  assign io_status_dup_3_s3_bits_way_en = io_status_dup_3_s3_bits_way_en_r; // @[MainPipe.scala 1648:22]
  assign io_status_dup_4_s1_valid = s1_valid_dup_for_status_4; // @[MainPipe.scala 1640:16]
  assign io_status_dup_4_s1_bits_set = io_status_dup_4_s1_bits_set_r; // @[MainPipe.scala 1641:19]
  assign io_status_dup_4_s1_bits_way_en = s1_req_replace ? s1_req_replace_way_en : _s1_way_en_T_1; // @[MainPipe.scala 332:22]
  assign io_status_dup_4_s2_valid = s2_valid_dup_for_status_4 & ~io_status_dup_4_s2_valid_r; // @[MainPipe.scala 1643:46]
  assign io_status_dup_4_s2_bits_set = io_status_dup_4_s2_bits_set_r; // @[MainPipe.scala 1644:19]
  assign io_status_dup_4_s2_bits_way_en = io_status_dup_4_s2_bits_way_en_r; // @[MainPipe.scala 1645:22]
  assign io_status_dup_4_s3_valid = s3_valid_dup_for_status_4 & ~io_status_dup_4_s3_valid_r; // @[MainPipe.scala 1646:46]
  assign io_status_dup_4_s3_bits_set = io_status_dup_4_s3_bits_set_r; // @[MainPipe.scala 1647:19]
  assign io_status_dup_4_s3_bits_way_en = io_status_dup_4_s3_bits_way_en_r; // @[MainPipe.scala 1648:22]
  assign io_status_dup_5_s1_valid = s1_valid_dup_for_status_5; // @[MainPipe.scala 1640:16]
  assign io_status_dup_5_s1_bits_set = io_status_dup_5_s1_bits_set_r; // @[MainPipe.scala 1641:19]
  assign io_status_dup_5_s1_bits_way_en = s1_req_replace ? s1_req_replace_way_en : _s1_way_en_T_1; // @[MainPipe.scala 332:22]
  assign io_status_dup_5_s2_valid = s2_valid_dup_for_status_5 & ~io_status_dup_5_s2_valid_r; // @[MainPipe.scala 1643:46]
  assign io_status_dup_5_s2_bits_set = io_status_dup_5_s2_bits_set_r; // @[MainPipe.scala 1644:19]
  assign io_status_dup_5_s2_bits_way_en = io_status_dup_5_s2_bits_way_en_r; // @[MainPipe.scala 1645:22]
  assign io_status_dup_5_s3_valid = s3_valid_dup_for_status_5 & ~io_status_dup_5_s3_valid_r; // @[MainPipe.scala 1646:46]
  assign io_status_dup_5_s3_bits_set = io_status_dup_5_s3_bits_set_r; // @[MainPipe.scala 1647:19]
  assign io_status_dup_5_s3_bits_way_en = io_status_dup_5_s3_bits_way_en_r; // @[MainPipe.scala 1648:22]
  assign io_status_dup_6_s1_valid = s1_valid_dup_for_status_6; // @[MainPipe.scala 1640:16]
  assign io_status_dup_6_s1_bits_set = io_status_dup_6_s1_bits_set_r; // @[MainPipe.scala 1641:19]
  assign io_status_dup_6_s1_bits_way_en = s1_req_replace ? s1_req_replace_way_en : _s1_way_en_T_1; // @[MainPipe.scala 332:22]
  assign io_status_dup_6_s2_valid = s2_valid_dup_for_status_6 & ~io_status_dup_6_s2_valid_r; // @[MainPipe.scala 1643:46]
  assign io_status_dup_6_s2_bits_set = io_status_dup_6_s2_bits_set_r; // @[MainPipe.scala 1644:19]
  assign io_status_dup_6_s2_bits_way_en = io_status_dup_6_s2_bits_way_en_r; // @[MainPipe.scala 1645:22]
  assign io_status_dup_6_s3_valid = s3_valid_dup_for_status_6 & ~io_status_dup_6_s3_valid_r; // @[MainPipe.scala 1646:46]
  assign io_status_dup_6_s3_bits_set = io_status_dup_6_s3_bits_set_r; // @[MainPipe.scala 1647:19]
  assign io_status_dup_6_s3_bits_way_en = io_status_dup_6_s3_bits_way_en_r; // @[MainPipe.scala 1648:22]
  assign io_status_dup_7_s1_valid = s1_valid_dup_for_status_7; // @[MainPipe.scala 1640:16]
  assign io_status_dup_7_s1_bits_set = io_status_dup_7_s1_bits_set_r; // @[MainPipe.scala 1641:19]
  assign io_status_dup_7_s1_bits_way_en = s1_req_replace ? s1_req_replace_way_en : _s1_way_en_T_1; // @[MainPipe.scala 332:22]
  assign io_status_dup_7_s2_valid = s2_valid_dup_for_status_7 & ~io_status_dup_7_s2_valid_r; // @[MainPipe.scala 1643:46]
  assign io_status_dup_7_s2_bits_set = io_status_dup_7_s2_bits_set_r; // @[MainPipe.scala 1644:19]
  assign io_status_dup_7_s2_bits_way_en = io_status_dup_7_s2_bits_way_en_r; // @[MainPipe.scala 1645:22]
  assign io_status_dup_7_s3_valid = s3_valid_dup_for_status_7 & ~io_status_dup_7_s3_valid_r; // @[MainPipe.scala 1646:46]
  assign io_status_dup_7_s3_bits_set = io_status_dup_7_s3_bits_set_r; // @[MainPipe.scala 1647:19]
  assign io_status_dup_7_s3_bits_way_en = io_status_dup_7_s3_bits_way_en_r; // @[MainPipe.scala 1648:22]
  assign io_status_dup_8_s1_valid = s1_valid_dup_for_status_8; // @[MainPipe.scala 1640:16]
  assign io_status_dup_8_s1_bits_set = io_status_dup_8_s1_bits_set_r; // @[MainPipe.scala 1641:19]
  assign io_status_dup_8_s1_bits_way_en = s1_req_replace ? s1_req_replace_way_en : _s1_way_en_T_1; // @[MainPipe.scala 332:22]
  assign io_status_dup_8_s2_valid = s2_valid_dup_for_status_8 & ~io_status_dup_8_s2_valid_r; // @[MainPipe.scala 1643:46]
  assign io_status_dup_8_s2_bits_set = io_status_dup_8_s2_bits_set_r; // @[MainPipe.scala 1644:19]
  assign io_status_dup_8_s2_bits_way_en = io_status_dup_8_s2_bits_way_en_r; // @[MainPipe.scala 1645:22]
  assign io_status_dup_8_s3_valid = s3_valid_dup_for_status_8 & ~io_status_dup_8_s3_valid_r; // @[MainPipe.scala 1646:46]
  assign io_status_dup_8_s3_bits_set = io_status_dup_8_s3_bits_set_r; // @[MainPipe.scala 1647:19]
  assign io_status_dup_8_s3_bits_way_en = io_status_dup_8_s3_bits_way_en_r; // @[MainPipe.scala 1648:22]
  assign io_status_dup_9_s1_valid = s1_valid_dup_for_status_9; // @[MainPipe.scala 1640:16]
  assign io_status_dup_9_s1_bits_set = io_status_dup_9_s1_bits_set_r; // @[MainPipe.scala 1641:19]
  assign io_status_dup_9_s1_bits_way_en = s1_req_replace ? s1_req_replace_way_en : _s1_way_en_T_1; // @[MainPipe.scala 332:22]
  assign io_status_dup_9_s2_valid = s2_valid_dup_for_status_9 & ~io_status_dup_9_s2_valid_r; // @[MainPipe.scala 1643:46]
  assign io_status_dup_9_s2_bits_set = io_status_dup_9_s2_bits_set_r; // @[MainPipe.scala 1644:19]
  assign io_status_dup_9_s2_bits_way_en = io_status_dup_9_s2_bits_way_en_r; // @[MainPipe.scala 1645:22]
  assign io_status_dup_9_s3_valid = s3_valid_dup_for_status_9 & ~io_status_dup_9_s3_valid_r; // @[MainPipe.scala 1646:46]
  assign io_status_dup_9_s3_bits_set = io_status_dup_9_s3_bits_set_r; // @[MainPipe.scala 1647:19]
  assign io_status_dup_9_s3_bits_way_en = io_status_dup_9_s3_bits_way_en_r; // @[MainPipe.scala 1648:22]
  assign io_status_dup_10_s1_valid = s1_valid_dup_for_status_10; // @[MainPipe.scala 1640:16]
  assign io_status_dup_10_s1_bits_set = io_status_dup_10_s1_bits_set_r; // @[MainPipe.scala 1641:19]
  assign io_status_dup_10_s1_bits_way_en = s1_req_replace ? s1_req_replace_way_en : _s1_way_en_T_1; // @[MainPipe.scala 332:22]
  assign io_status_dup_10_s2_valid = s2_valid_dup_for_status_10 & ~io_status_dup_10_s2_valid_r; // @[MainPipe.scala 1643:46]
  assign io_status_dup_10_s2_bits_set = io_status_dup_10_s2_bits_set_r; // @[MainPipe.scala 1644:19]
  assign io_status_dup_10_s2_bits_way_en = io_status_dup_10_s2_bits_way_en_r; // @[MainPipe.scala 1645:22]
  assign io_status_dup_10_s3_valid = s3_valid_dup_for_status_10 & ~io_status_dup_10_s3_valid_r; // @[MainPipe.scala 1646:46]
  assign io_status_dup_10_s3_bits_set = io_status_dup_10_s3_bits_set_r; // @[MainPipe.scala 1647:19]
  assign io_status_dup_10_s3_bits_way_en = io_status_dup_10_s3_bits_way_en_r; // @[MainPipe.scala 1648:22]
  assign io_status_dup_11_s1_valid = s1_valid_dup_for_status_11; // @[MainPipe.scala 1640:16]
  assign io_status_dup_11_s1_bits_set = io_status_dup_11_s1_bits_set_r; // @[MainPipe.scala 1641:19]
  assign io_status_dup_11_s1_bits_way_en = s1_req_replace ? s1_req_replace_way_en : _s1_way_en_T_1; // @[MainPipe.scala 332:22]
  assign io_status_dup_11_s2_valid = s2_valid_dup_for_status_11 & ~io_status_dup_11_s2_valid_r; // @[MainPipe.scala 1643:46]
  assign io_status_dup_11_s2_bits_set = io_status_dup_11_s2_bits_set_r; // @[MainPipe.scala 1644:19]
  assign io_status_dup_11_s2_bits_way_en = io_status_dup_11_s2_bits_way_en_r; // @[MainPipe.scala 1645:22]
  assign io_status_dup_11_s3_valid = s3_valid_dup_for_status_11 & ~io_status_dup_11_s3_valid_r; // @[MainPipe.scala 1646:46]
  assign io_status_dup_11_s3_bits_set = io_status_dup_11_s3_bits_set_r; // @[MainPipe.scala 1647:19]
  assign io_status_dup_11_s3_bits_way_en = io_status_dup_11_s3_bits_way_en_r; // @[MainPipe.scala 1648:22]
  assign io_status_dup_12_s1_valid = s1_valid_dup_for_status_12; // @[MainPipe.scala 1640:16]
  assign io_status_dup_12_s1_bits_set = io_status_dup_12_s1_bits_set_r; // @[MainPipe.scala 1641:19]
  assign io_status_dup_12_s1_bits_way_en = s1_req_replace ? s1_req_replace_way_en : _s1_way_en_T_1; // @[MainPipe.scala 332:22]
  assign io_status_dup_12_s2_valid = s2_valid_dup_for_status_12 & ~io_status_dup_12_s2_valid_r; // @[MainPipe.scala 1643:46]
  assign io_status_dup_12_s2_bits_set = io_status_dup_12_s2_bits_set_r; // @[MainPipe.scala 1644:19]
  assign io_status_dup_12_s2_bits_way_en = io_status_dup_12_s2_bits_way_en_r; // @[MainPipe.scala 1645:22]
  assign io_status_dup_12_s3_valid = s3_valid_dup_for_status_12 & ~io_status_dup_12_s3_valid_r; // @[MainPipe.scala 1646:46]
  assign io_status_dup_12_s3_bits_set = io_status_dup_12_s3_bits_set_r; // @[MainPipe.scala 1647:19]
  assign io_status_dup_12_s3_bits_way_en = io_status_dup_12_s3_bits_way_en_r; // @[MainPipe.scala 1648:22]
  assign io_status_dup_13_s1_valid = s1_valid_dup_for_status_13; // @[MainPipe.scala 1640:16]
  assign io_status_dup_13_s1_bits_set = io_status_dup_13_s1_bits_set_r; // @[MainPipe.scala 1641:19]
  assign io_status_dup_13_s1_bits_way_en = s1_req_replace ? s1_req_replace_way_en : _s1_way_en_T_1; // @[MainPipe.scala 332:22]
  assign io_status_dup_13_s2_valid = s2_valid_dup_for_status_13 & ~io_status_dup_13_s2_valid_r; // @[MainPipe.scala 1643:46]
  assign io_status_dup_13_s2_bits_set = io_status_dup_13_s2_bits_set_r; // @[MainPipe.scala 1644:19]
  assign io_status_dup_13_s2_bits_way_en = io_status_dup_13_s2_bits_way_en_r; // @[MainPipe.scala 1645:22]
  assign io_status_dup_13_s3_valid = s3_valid_dup_for_status_13 & ~io_status_dup_13_s3_valid_r; // @[MainPipe.scala 1646:46]
  assign io_status_dup_13_s3_bits_set = io_status_dup_13_s3_bits_set_r; // @[MainPipe.scala 1647:19]
  assign io_status_dup_13_s3_bits_way_en = io_status_dup_13_s3_bits_way_en_r; // @[MainPipe.scala 1648:22]
  assign io_status_dup_14_s1_valid = s1_valid_dup_for_status_14; // @[MainPipe.scala 1640:16]
  assign io_status_dup_14_s1_bits_set = io_status_dup_14_s1_bits_set_r; // @[MainPipe.scala 1641:19]
  assign io_status_dup_14_s1_bits_way_en = s1_req_replace ? s1_req_replace_way_en : _s1_way_en_T_1; // @[MainPipe.scala 332:22]
  assign io_status_dup_14_s2_valid = s2_valid_dup_for_status_14 & ~io_status_dup_14_s2_valid_r; // @[MainPipe.scala 1643:46]
  assign io_status_dup_14_s2_bits_set = io_status_dup_14_s2_bits_set_r; // @[MainPipe.scala 1644:19]
  assign io_status_dup_14_s2_bits_way_en = io_status_dup_14_s2_bits_way_en_r; // @[MainPipe.scala 1645:22]
  assign io_status_dup_14_s3_valid = s3_valid_dup_for_status_14 & ~io_status_dup_14_s3_valid_r; // @[MainPipe.scala 1646:46]
  assign io_status_dup_14_s3_bits_set = io_status_dup_14_s3_bits_set_r; // @[MainPipe.scala 1647:19]
  assign io_status_dup_14_s3_bits_way_en = io_status_dup_14_s3_bits_way_en_r; // @[MainPipe.scala 1648:22]
  assign io_status_dup_15_s1_valid = s1_valid_dup_for_status_15; // @[MainPipe.scala 1640:16]
  assign io_status_dup_15_s1_bits_set = io_status_dup_15_s1_bits_set_r; // @[MainPipe.scala 1641:19]
  assign io_status_dup_15_s1_bits_way_en = s1_req_replace ? s1_req_replace_way_en : _s1_way_en_T_1; // @[MainPipe.scala 332:22]
  assign io_status_dup_15_s2_valid = s2_valid_dup_for_status_15 & ~io_status_dup_15_s2_valid_r; // @[MainPipe.scala 1643:46]
  assign io_status_dup_15_s2_bits_set = io_status_dup_15_s2_bits_set_r; // @[MainPipe.scala 1644:19]
  assign io_status_dup_15_s2_bits_way_en = io_status_dup_15_s2_bits_way_en_r; // @[MainPipe.scala 1645:22]
  assign io_status_dup_15_s3_valid = s3_valid_dup_for_status_15 & ~io_status_dup_15_s3_valid_r; // @[MainPipe.scala 1646:46]
  assign io_status_dup_15_s3_bits_set = io_status_dup_15_s3_bits_set_r; // @[MainPipe.scala 1647:19]
  assign io_status_dup_15_s3_bits_way_en = io_status_dup_15_s3_bits_way_en_r; // @[MainPipe.scala 1648:22]
  assign io_status_dup_16_s1_valid = s1_valid_dup_for_status_16; // @[MainPipe.scala 1640:16]
  assign io_status_dup_16_s1_bits_set = io_status_dup_16_s1_bits_set_r; // @[MainPipe.scala 1641:19]
  assign io_status_dup_16_s1_bits_way_en = s1_req_replace ? s1_req_replace_way_en : _s1_way_en_T_1; // @[MainPipe.scala 332:22]
  assign io_status_dup_16_s2_valid = s2_valid_dup_for_status_16 & ~io_status_dup_16_s2_valid_r; // @[MainPipe.scala 1643:46]
  assign io_status_dup_16_s2_bits_set = io_status_dup_16_s2_bits_set_r; // @[MainPipe.scala 1644:19]
  assign io_status_dup_16_s2_bits_way_en = io_status_dup_16_s2_bits_way_en_r; // @[MainPipe.scala 1645:22]
  assign io_status_dup_16_s3_valid = s3_valid_dup_for_status_16 & ~io_status_dup_16_s3_valid_r; // @[MainPipe.scala 1646:46]
  assign io_status_dup_16_s3_bits_set = io_status_dup_16_s3_bits_set_r; // @[MainPipe.scala 1647:19]
  assign io_status_dup_16_s3_bits_way_en = io_status_dup_16_s3_bits_way_en_r; // @[MainPipe.scala 1648:22]
  assign io_status_dup_17_s1_valid = s1_valid_dup_for_status_17; // @[MainPipe.scala 1640:16]
  assign io_status_dup_17_s1_bits_set = io_status_dup_17_s1_bits_set_r; // @[MainPipe.scala 1641:19]
  assign io_status_dup_17_s1_bits_way_en = s1_req_replace ? s1_req_replace_way_en : _s1_way_en_T_1; // @[MainPipe.scala 332:22]
  assign io_status_dup_17_s2_valid = s2_valid_dup_for_status_17 & ~io_status_dup_17_s2_valid_r; // @[MainPipe.scala 1643:46]
  assign io_status_dup_17_s2_bits_set = io_status_dup_17_s2_bits_set_r; // @[MainPipe.scala 1644:19]
  assign io_status_dup_17_s2_bits_way_en = io_status_dup_17_s2_bits_way_en_r; // @[MainPipe.scala 1645:22]
  assign io_status_dup_17_s3_valid = s3_valid_dup_for_status_17 & ~io_status_dup_17_s3_valid_r; // @[MainPipe.scala 1646:46]
  assign io_status_dup_17_s3_bits_set = io_status_dup_17_s3_bits_set_r; // @[MainPipe.scala 1647:19]
  assign io_status_dup_17_s3_bits_way_en = io_status_dup_17_s3_bits_way_en_r; // @[MainPipe.scala 1648:22]
  assign io_status_dup_18_s1_valid = s1_valid_dup_for_status_18; // @[MainPipe.scala 1640:16]
  assign io_status_dup_18_s1_bits_set = io_status_dup_18_s1_bits_set_r; // @[MainPipe.scala 1641:19]
  assign io_status_dup_18_s1_bits_way_en = s1_req_replace ? s1_req_replace_way_en : _s1_way_en_T_1; // @[MainPipe.scala 332:22]
  assign io_status_dup_18_s2_valid = s2_valid_dup_for_status_18 & ~io_status_dup_18_s2_valid_r; // @[MainPipe.scala 1643:46]
  assign io_status_dup_18_s2_bits_set = io_status_dup_18_s2_bits_set_r; // @[MainPipe.scala 1644:19]
  assign io_status_dup_18_s2_bits_way_en = io_status_dup_18_s2_bits_way_en_r; // @[MainPipe.scala 1645:22]
  assign io_status_dup_18_s3_valid = s3_valid_dup_for_status_18 & ~io_status_dup_18_s3_valid_r; // @[MainPipe.scala 1646:46]
  assign io_status_dup_18_s3_bits_set = io_status_dup_18_s3_bits_set_r; // @[MainPipe.scala 1647:19]
  assign io_status_dup_18_s3_bits_way_en = io_status_dup_18_s3_bits_way_en_r; // @[MainPipe.scala 1648:22]
  assign io_status_dup_19_s1_valid = s1_valid_dup_for_status_19; // @[MainPipe.scala 1640:16]
  assign io_status_dup_19_s1_bits_set = io_status_dup_19_s1_bits_set_r; // @[MainPipe.scala 1641:19]
  assign io_status_dup_19_s1_bits_way_en = s1_req_replace ? s1_req_replace_way_en : _s1_way_en_T_1; // @[MainPipe.scala 332:22]
  assign io_status_dup_19_s2_valid = s2_valid_dup_for_status_19 & ~io_status_dup_19_s2_valid_r; // @[MainPipe.scala 1643:46]
  assign io_status_dup_19_s2_bits_set = io_status_dup_19_s2_bits_set_r; // @[MainPipe.scala 1644:19]
  assign io_status_dup_19_s2_bits_way_en = io_status_dup_19_s2_bits_way_en_r; // @[MainPipe.scala 1645:22]
  assign io_status_dup_19_s3_valid = s3_valid_dup_for_status_19 & ~io_status_dup_19_s3_valid_r; // @[MainPipe.scala 1646:46]
  assign io_status_dup_19_s3_bits_set = io_status_dup_19_s3_bits_set_r; // @[MainPipe.scala 1647:19]
  assign io_status_dup_19_s3_bits_way_en = io_status_dup_19_s3_bits_way_en_r; // @[MainPipe.scala 1648:22]
  assign io_status_dup_20_s1_valid = s1_valid_dup_for_status_20; // @[MainPipe.scala 1640:16]
  assign io_status_dup_20_s1_bits_set = io_status_dup_20_s1_bits_set_r; // @[MainPipe.scala 1641:19]
  assign io_status_dup_20_s1_bits_way_en = s1_req_replace ? s1_req_replace_way_en : _s1_way_en_T_1; // @[MainPipe.scala 332:22]
  assign io_status_dup_20_s2_valid = s2_valid_dup_for_status_20 & ~io_status_dup_20_s2_valid_r; // @[MainPipe.scala 1643:46]
  assign io_status_dup_20_s2_bits_set = io_status_dup_20_s2_bits_set_r; // @[MainPipe.scala 1644:19]
  assign io_status_dup_20_s2_bits_way_en = io_status_dup_20_s2_bits_way_en_r; // @[MainPipe.scala 1645:22]
  assign io_status_dup_20_s3_valid = s3_valid_dup_for_status_20 & ~io_status_dup_20_s3_valid_r; // @[MainPipe.scala 1646:46]
  assign io_status_dup_20_s3_bits_set = io_status_dup_20_s3_bits_set_r; // @[MainPipe.scala 1647:19]
  assign io_status_dup_20_s3_bits_way_en = io_status_dup_20_s3_bits_way_en_r; // @[MainPipe.scala 1648:22]
  assign io_status_dup_21_s1_valid = s1_valid_dup_for_status_21; // @[MainPipe.scala 1640:16]
  assign io_status_dup_21_s1_bits_set = io_status_dup_21_s1_bits_set_r; // @[MainPipe.scala 1641:19]
  assign io_status_dup_21_s1_bits_way_en = s1_req_replace ? s1_req_replace_way_en : _s1_way_en_T_1; // @[MainPipe.scala 332:22]
  assign io_status_dup_21_s2_valid = s2_valid_dup_for_status_21 & ~io_status_dup_21_s2_valid_r; // @[MainPipe.scala 1643:46]
  assign io_status_dup_21_s2_bits_set = io_status_dup_21_s2_bits_set_r; // @[MainPipe.scala 1644:19]
  assign io_status_dup_21_s2_bits_way_en = io_status_dup_21_s2_bits_way_en_r; // @[MainPipe.scala 1645:22]
  assign io_status_dup_21_s3_valid = s3_valid_dup_for_status_21 & ~io_status_dup_21_s3_valid_r; // @[MainPipe.scala 1646:46]
  assign io_status_dup_21_s3_bits_set = io_status_dup_21_s3_bits_set_r; // @[MainPipe.scala 1647:19]
  assign io_status_dup_21_s3_bits_way_en = io_status_dup_21_s3_bits_way_en_r; // @[MainPipe.scala 1648:22]
  assign io_status_dup_22_s1_valid = s1_valid_dup_for_status_22; // @[MainPipe.scala 1640:16]
  assign io_status_dup_22_s1_bits_set = io_status_dup_22_s1_bits_set_r; // @[MainPipe.scala 1641:19]
  assign io_status_dup_22_s1_bits_way_en = s1_req_replace ? s1_req_replace_way_en : _s1_way_en_T_1; // @[MainPipe.scala 332:22]
  assign io_status_dup_22_s2_valid = s2_valid_dup_for_status_22 & ~io_status_dup_22_s2_valid_r; // @[MainPipe.scala 1643:46]
  assign io_status_dup_22_s2_bits_set = io_status_dup_22_s2_bits_set_r; // @[MainPipe.scala 1644:19]
  assign io_status_dup_22_s2_bits_way_en = io_status_dup_22_s2_bits_way_en_r; // @[MainPipe.scala 1645:22]
  assign io_status_dup_22_s3_valid = s3_valid_dup_for_status_22 & ~io_status_dup_22_s3_valid_r; // @[MainPipe.scala 1646:46]
  assign io_status_dup_22_s3_bits_set = io_status_dup_22_s3_bits_set_r; // @[MainPipe.scala 1647:19]
  assign io_status_dup_22_s3_bits_way_en = io_status_dup_22_s3_bits_way_en_r; // @[MainPipe.scala 1648:22]
  assign io_status_dup_23_s1_valid = s1_valid_dup_for_status_23; // @[MainPipe.scala 1640:16]
  assign io_status_dup_23_s1_bits_set = io_status_dup_23_s1_bits_set_r; // @[MainPipe.scala 1641:19]
  assign io_status_dup_23_s1_bits_way_en = s1_req_replace ? s1_req_replace_way_en : _s1_way_en_T_1; // @[MainPipe.scala 332:22]
  assign io_status_dup_23_s2_valid = s2_valid_dup_for_status_23 & ~io_status_dup_23_s2_valid_r; // @[MainPipe.scala 1643:46]
  assign io_status_dup_23_s2_bits_set = io_status_dup_23_s2_bits_set_r; // @[MainPipe.scala 1644:19]
  assign io_status_dup_23_s2_bits_way_en = io_status_dup_23_s2_bits_way_en_r; // @[MainPipe.scala 1645:22]
  assign io_status_dup_23_s3_valid = s3_valid_dup_for_status_23 & ~io_status_dup_23_s3_valid_r; // @[MainPipe.scala 1646:46]
  assign io_status_dup_23_s3_bits_set = io_status_dup_23_s3_bits_set_r; // @[MainPipe.scala 1647:19]
  assign io_status_dup_23_s3_bits_way_en = io_status_dup_23_s3_bits_way_en_r; // @[MainPipe.scala 1648:22]
  assign io_lrsc_locked_block_valid = lrsc_count_dup_1 > 6'h8; // @[MainPipe.scala 533:61]
  assign io_lrsc_locked_block_bits = lrsc_addr_dup; // @[MainPipe.scala 603:30]
  assign io_update_resv_set = s3_valid_dup_1 & s3_lr & s3_can_do_amo; // @[MainPipe.scala 609:50]
  assign io_block_lr = io_block_lr_REG; // @[MainPipe.scala 604:15]
  assign io_error_source_tag = io_error_source_tag_r; // @[MainPipe.scala 1660:23]
  assign io_error_source_data = s3_data_error_REG_1 ? _s3_data_error_T : s3_data_error_REG_3; // @[MainPipe.scala 491:23]
  assign io_error_source_l2 = io_error_source_l2_r; // @[MainPipe.scala 1662:22]
  assign io_error_opType_store = io_error_opType_store_r; // @[MainPipe.scala 1663:25]
  assign io_error_opType_probe = io_error_opType_probe_r; // @[MainPipe.scala 1664:25]
  assign io_error_opType_release = io_error_opType_release_r; // @[MainPipe.scala 1665:27]
  assign io_error_opType_atom = io_error_opType_atom_r; // @[MainPipe.scala 1666:24]
  assign io_error_paddr = io_error_paddr_r; // @[MainPipe.scala 1659:18]
  assign io_error_report_to_beu = (io_error_report_to_beu_r | s3_data_error) & io_error_report_to_beu_REG; // @[MainPipe.scala 1658:81]
  assign io_error_valid = s3_error & io_error_valid_REG; // @[MainPipe.scala 1655:30]
  assign io_perf_0_value = {{5'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_1_value = {{3'd0}, io_perf_1_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign main_pipe_req_arb_io_in_0_valid = io_probe_req_valid; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_0_bits_miss = io_probe_req_bits_miss; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_0_bits_miss_id = io_probe_req_bits_miss_id; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_0_bits_miss_param = io_probe_req_bits_miss_param; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_0_bits_miss_dirty = io_probe_req_bits_miss_dirty; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_0_bits_miss_way_en = io_probe_req_bits_miss_way_en; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_0_bits_probe = io_probe_req_bits_probe; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_0_bits_probe_param = io_probe_req_bits_probe_param; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_0_bits_probe_need_data = io_probe_req_bits_probe_need_data; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_0_bits_source = io_probe_req_bits_source; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_0_bits_cmd = io_probe_req_bits_cmd; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_0_bits_vaddr = io_probe_req_bits_vaddr; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_0_bits_addr = io_probe_req_bits_addr; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_0_bits_store_data = io_probe_req_bits_store_data; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_0_bits_store_mask = io_probe_req_bits_store_mask; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_0_bits_word_idx = io_probe_req_bits_word_idx; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_0_bits_amo_data = io_probe_req_bits_amo_data; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_0_bits_amo_mask = io_probe_req_bits_amo_mask; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_0_bits_error = io_probe_req_bits_error; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_0_bits_replace = io_probe_req_bits_replace; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_0_bits_replace_way_en = io_probe_req_bits_replace_way_en; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_0_bits_id = io_probe_req_bits_id; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_1_valid = io_replace_req_valid; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_1_bits_miss = io_replace_req_bits_miss; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_1_bits_miss_id = io_replace_req_bits_miss_id; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_1_bits_miss_param = io_replace_req_bits_miss_param; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_1_bits_miss_dirty = io_replace_req_bits_miss_dirty; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_1_bits_miss_way_en = io_replace_req_bits_miss_way_en; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_1_bits_probe = io_replace_req_bits_probe; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_1_bits_probe_param = io_replace_req_bits_probe_param; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_1_bits_probe_need_data = io_replace_req_bits_probe_need_data; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_1_bits_source = io_replace_req_bits_source; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_1_bits_cmd = io_replace_req_bits_cmd; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_1_bits_vaddr = io_replace_req_bits_vaddr; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_1_bits_addr = io_replace_req_bits_addr; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_1_bits_store_data = io_replace_req_bits_store_data; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_1_bits_store_mask = io_replace_req_bits_store_mask; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_1_bits_word_idx = io_replace_req_bits_word_idx; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_1_bits_amo_data = io_replace_req_bits_amo_data; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_1_bits_amo_mask = io_replace_req_bits_amo_mask; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_1_bits_error = io_replace_req_bits_error; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_1_bits_replace = io_replace_req_bits_replace; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_1_bits_replace_way_en = io_replace_req_bits_replace_way_en; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_1_bits_id = io_replace_req_bits_id; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_2_valid = io_store_req_valid; // @[MainPipe.scala 197:41]
  assign main_pipe_req_arb_io_in_2_bits_miss_id = 2'h0; // @[MainPipe.scala 195:23 196:18]
  assign main_pipe_req_arb_io_in_2_bits_probe = 1'h0; // @[MainPipe.scala 76:19 80:15]
  assign main_pipe_req_arb_io_in_2_bits_probe_param = 2'h0; // @[MainPipe.scala 195:23 196:18]
  assign main_pipe_req_arb_io_in_2_bits_probe_need_data = 1'h0; // @[MainPipe.scala 76:19 81:25]
  assign main_pipe_req_arb_io_in_2_bits_source = 4'h1; // @[MainPipe.scala 76:19 82:16]
  assign main_pipe_req_arb_io_in_2_bits_cmd = 5'h1; // @[MainPipe.scala 76:19 83:13]
  assign main_pipe_req_arb_io_in_2_bits_vaddr = io_store_req_bits_vaddr; // @[MainPipe.scala 76:19 85:15]
  assign main_pipe_req_arb_io_in_2_bits_addr = io_store_req_bits_addr; // @[MainPipe.scala 76:19 84:14]
  assign main_pipe_req_arb_io_in_2_bits_store_data = io_store_req_bits_data; // @[MainPipe.scala 76:19 86:20]
  assign main_pipe_req_arb_io_in_2_bits_store_mask = io_store_req_bits_mask; // @[MainPipe.scala 76:19 87:20]
  assign main_pipe_req_arb_io_in_2_bits_replace = 1'h0; // @[MainPipe.scala 76:19 88:17]
  assign main_pipe_req_arb_io_in_2_bits_replace_way_en = 8'h0; // @[MainPipe.scala 195:23 196:18]
  assign main_pipe_req_arb_io_in_2_bits_id = io_store_req_bits_id; // @[MainPipe.scala 76:19 90:12]
  assign main_pipe_req_arb_io_in_3_valid = io_atomic_req_valid; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_3_bits_miss = io_atomic_req_bits_miss; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_3_bits_miss_id = io_atomic_req_bits_miss_id; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_3_bits_miss_param = io_atomic_req_bits_miss_param; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_3_bits_miss_dirty = io_atomic_req_bits_miss_dirty; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_3_bits_miss_way_en = io_atomic_req_bits_miss_way_en; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_3_bits_probe = io_atomic_req_bits_probe; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_3_bits_probe_param = io_atomic_req_bits_probe_param; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_3_bits_probe_need_data = io_atomic_req_bits_probe_need_data; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_3_bits_source = io_atomic_req_bits_source; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_3_bits_cmd = io_atomic_req_bits_cmd; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_3_bits_vaddr = io_atomic_req_bits_vaddr; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_3_bits_addr = io_atomic_req_bits_addr; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_3_bits_store_data = io_atomic_req_bits_store_data; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_3_bits_store_mask = io_atomic_req_bits_store_mask; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_3_bits_word_idx = io_atomic_req_bits_word_idx; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_3_bits_amo_data = io_atomic_req_bits_amo_data; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_3_bits_amo_mask = io_atomic_req_bits_amo_mask; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_3_bits_error = io_atomic_req_bits_error; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_3_bits_replace = io_atomic_req_bits_replace; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_3_bits_replace_way_en = io_atomic_req_bits_replace_way_en; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_in_3_bits_id = io_atomic_req_bits_id; // @[DCacheWrapper.scala 253:9]
  assign main_pipe_req_arb_io_out_ready = _store_req_ready_T_1 & ~set_conflict; // @[MainPipe.scala 227:71]
  assign amoalu_io_mask = s3_req_amo_mask; // @[MainPipe.scala 652:18]
  assign amoalu_io_cmd = s3_req_cmd; // @[MainPipe.scala 653:18]
  assign amoalu_io_lhs = s3_data_word; // @[MainPipe.scala 654:18]
  assign amoalu_io_rhs = s3_req_amo_data; // @[MainPipe.scala 655:18]
  always @(posedge clock) begin
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_vaddr <= req_bits_vaddr; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_req_vaddr <= s1_req_vaddr; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_idx_dup_0 <= s2_idx; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_idx_dup_1 <= s2_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_req_replace_dup_1 <= s1_req_replace; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_req_probe <= s1_req_probe; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_req_miss <= s1_req_miss; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_req_source <= s1_req_source; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_tag_match <= s1_tag_match; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_req_cmd <= s1_req_cmd; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_tag_match) begin // @[MainPipe.scala 304:38]
        s2_hit_coh_state <= _s1_hit_coh_T_22;
      end else begin
        s2_hit_coh_state <= 2'h0;
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_probe_dup_7 <= s2_req_probe; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_probe_dup_0 <= s2_req_probe; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_tag_match_dup <= s2_tag_match; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_coh_dup_0_state <= s2_coh_state; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_probe_param <= s2_req_probe_param; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_coh_state <= s2_coh_state; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_source_dup_1 <= s2_req_source; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_probe_dup_8 <= s2_req_probe; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_source <= s2_req_source; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_miss_dup_2 <= s2_req_miss; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_store_hit_dup_0 <= s2_store_hit; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_miss_dup_0 <= s2_req_miss; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_probe_dup_5 <= s2_req_probe; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_amo_hit <= s2_amo_hit; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_cmd_dup_5 <= s2_req_cmd; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_probe_dup_4 <= s2_req_probe; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_cmd_dup_4 <= s2_req_cmd; // @[Reg.scala 17:22]
    end
    if (s3_valid_dup_0 & (s3_lr | s3_sc)) begin // @[MainPipe.scala 580:46]
      if (s3_can_do_amo & s3_lr) begin // @[MainPipe.scala 581:35]
        lrsc_addr <= _lrsc_addr_T_1; // @[MainPipe.scala 584:17]
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_addr <= s2_req_addr; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_amo_hit_dup <= s2_amo_hit; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_cmd_dup_0 <= s2_req_cmd; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_cmd_dup_1 <= s2_req_cmd; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_miss_dup_4 <= s2_req_miss; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_replace_dup_2 <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_replace_dup_1 <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_coh_dup_4_state <= s2_coh_state; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_can_go_to_mq <= s1_pregen_can_go_to_mq; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_need_data <= banked_need_data; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_miss <= req_bits_miss; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_miss_id <= req_bits_miss_id; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_miss_param <= req_bits_miss_param; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_miss_dirty <= req_bits_miss_dirty; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_miss_way_en <= req_bits_miss_way_en; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_probe <= req_bits_probe; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_probe_param <= req_bits_probe_param; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_probe_need_data <= req_bits_probe_need_data; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_source <= req_bits_source; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_cmd <= req_bits_cmd; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_addr <= req_bits_addr; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_store_data <= req_bits_store_data; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_store_mask <= req_bits_store_mask; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_word_idx <= req_bits_word_idx; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_amo_data <= req_bits_amo_data; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_amo_mask <= req_bits_amo_mask; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_error <= req_bits_error; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_replace <= req_bits_replace; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_replace_way_en <= req_bits_replace_way_en; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_id <= req_bits_id; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_banked_store_wmask <= bank_write; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_need_tag <= io_tag_read_valid; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_req_vaddr_dup_for_data_read <= req_bits_vaddr; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      s1_idx_dup_for_replace_way <= s0_idx; // @[Reg.scala 17:22]
    end
    REG_2 <= req_valid & s0_can_go; // @[MainPipe.scala 228:27]
    if (REG_2) begin // @[MainPipe.scala 292:19]
      REG_3_0 <= io_meta_resp_0_coh_state;
    end
    if (REG_2) begin // @[MainPipe.scala 292:19]
      REG_3_1 <= io_meta_resp_1_coh_state;
    end
    if (REG_2) begin // @[MainPipe.scala 292:19]
      REG_3_2 <= io_meta_resp_2_coh_state;
    end
    if (REG_2) begin // @[MainPipe.scala 292:19]
      REG_3_3 <= io_meta_resp_3_coh_state;
    end
    if (REG_2) begin // @[MainPipe.scala 292:19]
      REG_3_4 <= io_meta_resp_4_coh_state;
    end
    if (REG_2) begin // @[MainPipe.scala 292:19]
      REG_3_5 <= io_meta_resp_5_coh_state;
    end
    if (REG_2) begin // @[MainPipe.scala 292:19]
      REG_3_6 <= io_meta_resp_6_coh_state;
    end
    if (REG_2) begin // @[MainPipe.scala 292:19]
      REG_3_7 <= io_meta_resp_7_coh_state;
    end
    REG_4 <= req_valid & s0_can_go; // @[MainPipe.scala 228:27]
    if (REG_4) begin // @[MainPipe.scala 293:18]
      REG_5_0 <= io_tag_resp_0[23:0];
    end
    if (REG_4) begin // @[MainPipe.scala 293:18]
      REG_5_1 <= io_tag_resp_1[23:0];
    end
    if (REG_4) begin // @[MainPipe.scala 293:18]
      REG_5_2 <= io_tag_resp_2[23:0];
    end
    if (REG_4) begin // @[MainPipe.scala 293:18]
      REG_5_3 <= io_tag_resp_3[23:0];
    end
    if (REG_4) begin // @[MainPipe.scala 293:18]
      REG_5_4 <= io_tag_resp_4[23:0];
    end
    if (REG_4) begin // @[MainPipe.scala 293:18]
      REG_5_5 <= io_tag_resp_5[23:0];
    end
    if (REG_4) begin // @[MainPipe.scala 293:18]
      REG_5_6 <= io_tag_resp_6[23:0];
    end
    if (REG_4) begin // @[MainPipe.scala 293:18]
      REG_5_7 <= io_tag_resp_7[23:0];
    end
    REG_8 <= req_valid & s0_can_go; // @[MainPipe.scala 228:27]
    if (REG_8) begin // @[MainPipe.scala 296:22]
      REG_9_0 <= io_tag_resp_0;
    end
    if (REG_8) begin // @[MainPipe.scala 296:22]
      REG_9_1 <= io_tag_resp_1;
    end
    if (REG_8) begin // @[MainPipe.scala 296:22]
      REG_9_2 <= io_tag_resp_2;
    end
    if (REG_8) begin // @[MainPipe.scala 296:22]
      REG_9_3 <= io_tag_resp_3;
    end
    if (REG_8) begin // @[MainPipe.scala 296:22]
      REG_9_4 <= io_tag_resp_4;
    end
    if (REG_8) begin // @[MainPipe.scala 296:22]
      REG_9_5 <= io_tag_resp_5;
    end
    if (REG_8) begin // @[MainPipe.scala 296:22]
      REG_9_6 <= io_tag_resp_6;
    end
    if (REG_8) begin // @[MainPipe.scala 296:22]
      REG_9_7 <= io_tag_resp_7;
    end
    s1_repl_way_en_REG <= req_valid & s0_can_go; // @[MainPipe.scala 228:27]
    if (s1_repl_way_en_REG) begin // @[MainPipe.scala 318:24]
      s1_repl_way_en_REG_1 <= _s1_repl_way_en_T;
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_req_miss_id <= s1_req_miss_id; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_req_miss_param <= s1_req_miss_param; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_req_miss_dirty <= s1_req_miss_dirty; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_req_probe_param <= s1_req_probe_param; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_req_probe_need_data <= s1_req_probe_need_data; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_req_addr <= s1_req_addr; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_req_store_data <= s1_req_store_data; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_req_store_mask <= s1_req_store_mask; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_req_word_idx <= s1_req_word_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_req_amo_data <= s1_req_amo_data; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_req_amo_mask <= s1_req_amo_mask; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_req_error <= s1_req_error; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_req_replace <= s1_req_replace; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_req_id <= s1_req_id; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_tag_match_way <= s1_tag_match_way; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_repl_tag <= s1_repl_tag; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_repl_coh_state <= s1_repl_coh_state; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_repl_way_en_REG) begin // @[MainPipe.scala 318:24]
        s2_repl_way_en <= _s1_repl_way_en_T;
      end else begin
        s2_repl_way_en <= s1_repl_way_en_REG_1;
      end
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_need_replacement <= s1_need_replacement; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_need_data <= s1_need_data; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_need_tag <= s1_need_tag; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_encTag <= s1_encTag; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_req_vaddr_dup_for_miss_req <= s1_req_vaddr; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_idx_dup_for_status <= s1_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_idx_dup_for_replace_access <= s1_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_req_replace_dup_2 <= s1_req_replace; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_can_go_to_mq_dup_0 <= s1_pregen_can_go_to_mq; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_can_go_to_mq_dup_1 <= s1_pregen_can_go_to_mq; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_can_go_to_mq_dup_2 <= s1_pregen_can_go_to_mq; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_req_replace) begin // @[MainPipe.scala 332:22]
        s2_way_en <= s1_req_replace_way_en;
      end else if (s1_req_miss) begin // @[MainPipe.scala 335:8]
        s2_way_en <= s1_req_miss_way_en;
      end else if (s1_need_replacement) begin // @[MainPipe.scala 338:10]
        s2_way_en <= s1_repl_way_en;
      end else begin
        s2_way_en <= s1_tag_match_way;
      end
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_req_replace) begin // @[MainPipe.scala 346:19]
        s2_tag <= s1_req_addr[35:12];
      end else if (s1_req_miss) begin // @[MainPipe.scala 349:8]
        s2_tag <= s1_miss_tag;
      end else if (s1_need_replacement) begin // @[MainPipe.scala 352:10]
        s2_tag <= s1_repl_tag;
      end else begin
        s2_tag <= s1_hit_tag;
      end
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_req_replace) begin // @[MainPipe.scala 355:19]
        s2_coh_state <= _s1_coh_T_22;
      end else if (s1_req_miss) begin // @[MainPipe.scala 358:8]
        s2_coh_state <= s1_miss_coh_state;
      end else if (s1_need_replacement) begin // @[MainPipe.scala 361:10]
        s2_coh_state <= s1_repl_coh_state;
      end else begin
        s2_coh_state <= s1_hit_coh_state;
      end
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_banked_store_wmask <= s1_banked_store_wmask; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_flag_error <= s1_flag_error; // @[Reg.scala 17:22]
    end
    REG_12 <= s1_valid & s1_can_go; // @[MainPipe.scala 265:26]
    if (REG_12) begin // @[MainPipe.scala 442:19]
      REG_13_0_raw_data <= io_data_resp_0_raw_data;
    end
    if (REG_12) begin // @[MainPipe.scala 442:19]
      REG_13_1_raw_data <= io_data_resp_1_raw_data;
    end
    if (REG_12) begin // @[MainPipe.scala 442:19]
      REG_13_2_raw_data <= io_data_resp_2_raw_data;
    end
    if (REG_12) begin // @[MainPipe.scala 442:19]
      REG_13_3_raw_data <= io_data_resp_3_raw_data;
    end
    if (REG_12) begin // @[MainPipe.scala 442:19]
      REG_13_4_raw_data <= io_data_resp_4_raw_data;
    end
    if (REG_12) begin // @[MainPipe.scala 442:19]
      REG_13_5_raw_data <= io_data_resp_5_raw_data;
    end
    if (REG_12) begin // @[MainPipe.scala 442:19]
      REG_13_6_raw_data <= io_data_resp_6_raw_data;
    end
    if (REG_12) begin // @[MainPipe.scala 442:19]
      REG_13_7_raw_data <= io_data_resp_7_raw_data;
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_ttob_probe_valid <= s1_ttob_probe_valid; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      s2_ttob_probe_addr <= s1_ttob_probe_addr; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_miss_id <= s2_req_miss_id; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_miss_param <= s2_req_miss_param; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_miss_dirty <= s2_req_miss_dirty; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_cmd <= s2_req_cmd; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_vaddr <= s2_req_vaddr; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_word_idx <= s2_req_word_idx; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_amo_data <= s2_req_amo_data; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_amo_mask <= s2_req_amo_mask; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_error <= s2_req_error; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_id <= s2_req_id; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_hit <= s2_hit; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_way_en <= s2_way_en; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_banked_store_wmask <= s2_banked_store_wmask; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_store_data_merged_0 <= s2_store_data_merged_0; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_store_data_merged_1 <= s2_store_data_merged_1; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_store_data_merged_2 <= s2_store_data_merged_2; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_store_data_merged_3 <= s2_store_data_merged_3; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_store_data_merged_4 <= s2_store_data_merged_4; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_store_data_merged_5 <= s2_store_data_merged_5; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_store_data_merged_6 <= s2_store_data_merged_6; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_store_data_merged_7 <= s2_store_data_merged_7; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      if (3'h7 == s2_req_word_idx) begin // @[Reg.scala 17:22]
        s3_data_word <= s2_store_data_merged_7; // @[Reg.scala 17:22]
      end else if (3'h6 == s2_req_word_idx) begin // @[Reg.scala 17:22]
        s3_data_word <= s2_store_data_merged_6; // @[Reg.scala 17:22]
      end else if (3'h5 == s2_req_word_idx) begin // @[Reg.scala 17:22]
        s3_data_word <= s2_store_data_merged_5; // @[Reg.scala 17:22]
      end else begin
        s3_data_word <= _GEN_248;
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      if (REG_12) begin // @[MainPipe.scala 442:19]
        s3_data_0 <= io_data_resp_0_raw_data;
      end else begin
        s3_data_0 <= REG_13_0_raw_data;
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      if (REG_12) begin // @[MainPipe.scala 442:19]
        s3_data_1 <= io_data_resp_1_raw_data;
      end else begin
        s3_data_1 <= REG_13_1_raw_data;
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      if (REG_12) begin // @[MainPipe.scala 442:19]
        s3_data_2 <= io_data_resp_2_raw_data;
      end else begin
        s3_data_2 <= REG_13_2_raw_data;
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      if (REG_12) begin // @[MainPipe.scala 442:19]
        s3_data_3 <= io_data_resp_3_raw_data;
      end else begin
        s3_data_3 <= REG_13_3_raw_data;
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      if (REG_12) begin // @[MainPipe.scala 442:19]
        s3_data_4 <= io_data_resp_4_raw_data;
      end else begin
        s3_data_4 <= REG_13_4_raw_data;
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      if (REG_12) begin // @[MainPipe.scala 442:19]
        s3_data_5 <= io_data_resp_5_raw_data;
      end else begin
        s3_data_5 <= REG_13_5_raw_data;
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      if (REG_12) begin // @[MainPipe.scala 442:19]
        s3_data_6 <= io_data_resp_6_raw_data;
      end else begin
        s3_data_6 <= REG_13_6_raw_data;
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      if (REG_12) begin // @[MainPipe.scala 442:19]
        s3_data_7 <= io_data_resp_7_raw_data;
      end else begin
        s3_data_7 <= REG_13_7_raw_data;
      end
    end
    s3_data_error_REG <= s1_valid & s1_can_go; // @[MainPipe.scala 265:26]
    s3_data_error_REG_1 <= s3_data_error_REG; // @[MainPipe.scala 491:31]
    s3_data_error_REG_2 <= s2_need_data & s2_coh_state != 2'h0; // @[MainPipe.scala 413:47]
    if (s3_data_error_REG_1) begin // @[MainPipe.scala 491:23]
      s3_data_error_REG_3 <= _s3_data_error_T;
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_error_r <= s2_error; // @[Reg.scala 17:22]
    end
    s3_probe_ttob_check_resp_rREG <= s2_valid_dup_2 & s2_can_go_to_s3; // @[MainPipe.scala 428:39]
    if (s3_probe_ttob_check_resp_rREG) begin // @[Reg.scala 17:18]
      s3_probe_ttob_check_resp_rtoN <= io_probe_ttob_check_resp_bits_toN; // @[Reg.scala 17:22]
    end
    s3_probe_ttob_check_resp_REG <= s2_valid_dup_2 & s2_can_go_to_s3; // @[MainPipe.scala 428:39]
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_way_en_dup_0 <= s2_way_en; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_way_en_dup_1 <= s2_way_en; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_way_en_dup_2 <= s2_way_en; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_idx_dup_2 <= s2_idx; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_idx_dup_3 <= s2_idx; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_idx_dup_4 <= s2_idx; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_idx_dup_5 <= s2_idx; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_replace_dup_3 <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_replace_dup_7 <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_cmd_dup_2 <= s2_req_cmd; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_cmd_dup_3 <= s2_req_cmd; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_addr_dup_0 <= s2_req_addr; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_addr_dup_3 <= s2_req_addr; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_addr_dup_4 <= s2_req_addr; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_probe_dup_3 <= s2_req_probe; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_miss_dup_5 <= s2_req_miss; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_miss_dup_7 <= s2_req_miss; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_word_idx_dup_0 <= s2_req_word_idx; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_word_idx_dup_1 <= s2_req_word_idx; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_word_idx_dup_2 <= s2_req_word_idx; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_word_idx_dup_3 <= s2_req_word_idx; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_word_idx_dup_4 <= s2_req_word_idx; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_word_idx_dup_5 <= s2_req_word_idx; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_word_idx_dup_6 <= s2_req_word_idx; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_word_idx_dup_7 <= s2_req_word_idx; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_store_hit_dup_1 <= s2_store_hit; // @[Reg.scala 17:22]
    end
    if (s3_valid_dup_0 & (s3_lr | s3_sc)) begin // @[MainPipe.scala 580:46]
      if (s3_can_do_amo & s3_lr) begin // @[MainPipe.scala 581:35]
        lrsc_addr_dup <= _lrsc_addr_T_1; // @[MainPipe.scala 585:21]
      end
    end
    io_block_lr_REG <= lrsc_count > 6'h0; // @[MainPipe.scala 604:37]
    if (do_amoalu) begin // @[Reg.scala 17:18]
      s3_amo_data_merged_reg_0 <= s3_amo_data_merged_0; // @[Reg.scala 17:22]
    end
    if (do_amoalu) begin // @[Reg.scala 17:18]
      s3_amo_data_merged_reg_1 <= s3_amo_data_merged_1; // @[Reg.scala 17:22]
    end
    if (do_amoalu) begin // @[Reg.scala 17:18]
      s3_amo_data_merged_reg_2 <= s3_amo_data_merged_2; // @[Reg.scala 17:22]
    end
    if (do_amoalu) begin // @[Reg.scala 17:18]
      s3_amo_data_merged_reg_3 <= s3_amo_data_merged_3; // @[Reg.scala 17:22]
    end
    if (do_amoalu) begin // @[Reg.scala 17:18]
      s3_amo_data_merged_reg_4 <= s3_amo_data_merged_4; // @[Reg.scala 17:22]
    end
    if (do_amoalu) begin // @[Reg.scala 17:18]
      s3_amo_data_merged_reg_5 <= s3_amo_data_merged_5; // @[Reg.scala 17:22]
    end
    if (do_amoalu) begin // @[Reg.scala 17:18]
      s3_amo_data_merged_reg_6 <= s3_amo_data_merged_6; // @[Reg.scala 17:22]
    end
    if (do_amoalu) begin // @[Reg.scala 17:18]
      s3_amo_data_merged_reg_7 <= s3_amo_data_merged_7; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      miss_update_meta_dup_for_meta_wvalid <= s2_req_miss; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_probe_dup_for_meta_wvalid <= s2_req_probe; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_tag_match_dup_for_meta_wvalid <= s2_tag_match; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_coh_dup_for_meta_wvalid_state <= s2_coh_state; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_probe_param_dup_for_meta_wvalid <= s2_req_probe_param; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_source_dup_for_meta_wvalid <= s2_req_source; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_cmd_dup_for_meta_wvalid <= s2_req_cmd; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_replace_dup_for_meta_wvalid <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_hit_coh_dup_for_meta_wvalid_state <= s2_hit_coh_state; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      if (_T_148) begin // @[Misc.scala 34:36]
        s3_new_hit_coh_dup_for_meta_wvalid_state <= 2'h3;
      end else if (_T_145) begin // @[Misc.scala 34:36]
        s3_new_hit_coh_dup_for_meta_wvalid_state <= 2'h2;
      end else if (_T_142) begin // @[Misc.scala 34:36]
        s3_new_hit_coh_dup_for_meta_wvalid_state <= 2'h1;
      end else begin
        s3_new_hit_coh_dup_for_meta_wvalid_state <= _T_141;
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_amo_hit_dup_for_meta_wvalid <= s2_amo_hit; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_store_hit_dup_for_meta_wvalid <= s2_store_hit; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_addr_dup_for_meta_wvalid <= s2_req_addr; // @[Reg.scala 17:22]
    end
    if (s3_valid_dup_for_meta_wvalid & (s3_lr_dup_for_meta_wvalid | s3_sc_dup_for_meta_wvalid)) begin // @[MainPipe.scala 755:102]
      if (s3_can_do_amo_dup_for_meta_wvalid & s3_lr_dup_for_meta_wvalid) begin // @[MainPipe.scala 756:77]
        lrsc_addr_dup_for_meta_wvalid <= _lrsc_addr_dup_for_meta_wvalid_T_1; // @[MainPipe.scala 758:38]
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      miss_update_meta_dup_for_err_wvalid <= s2_req_miss; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_probe_dup_for_err_wvalid <= s2_req_probe; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_tag_match_dup_for_err_wvalid <= s2_tag_match; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_coh_dup_for_err_wvalid_state <= s2_coh_state; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_probe_param_dup_for_err_wvalid <= s2_req_probe_param; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_source_dup_for_err_wvalid <= s2_req_source; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_cmd_dup_for_err_wvalid <= s2_req_cmd; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_replace_dup_for_err_wvalid <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_hit_coh_dup_for_err_wvalid_state <= s2_hit_coh_state; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      if (_T_148) begin // @[Misc.scala 34:36]
        s3_new_hit_coh_dup_for_err_wvalid_state <= 2'h3;
      end else if (_T_145) begin // @[Misc.scala 34:36]
        s3_new_hit_coh_dup_for_err_wvalid_state <= 2'h2;
      end else if (_T_142) begin // @[Misc.scala 34:36]
        s3_new_hit_coh_dup_for_err_wvalid_state <= 2'h1;
      end else begin
        s3_new_hit_coh_dup_for_err_wvalid_state <= _T_141;
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_amo_hit_dup_for_err_wvalid <= s2_amo_hit; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_store_hit_dup_for_err_wvalid <= s2_store_hit; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_addr_dup_for_err_wvalid <= s2_req_addr; // @[Reg.scala 17:22]
    end
    if (s3_valid_dup_for_err_wvalid & (s3_lr_dup_for_err_wvalid | s3_sc_dup_for_err_wvalid)) begin // @[MainPipe.scala 880:99]
      if (s3_can_do_amo_dup_for_err_wvalid & s3_lr_dup_for_err_wvalid) begin // @[MainPipe.scala 881:75]
        lrsc_addr_dup_for_err_wvalid <= _lrsc_addr_dup_for_err_wvalid_T_1; // @[MainPipe.scala 883:37]
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      miss_update_meta_dup_for_tag_wvalid <= s2_req_miss; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_probe_dup_for_tag_wvalid <= s2_req_probe; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_coh_dup_for_tag_wvalid_state <= s2_coh_state; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_source_dup_for_tag_wvalid <= s2_req_source; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_cmd_dup_for_tag_wvalid <= s2_req_cmd; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_replace_dup_for_tag_wvalid <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_amo_hit_dup_for_tag_wvalid <= s2_amo_hit; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_store_hit_dup_for_tag_wvalid <= s2_store_hit; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_addr_dup_for_tag_wvalid <= s2_req_addr; // @[Reg.scala 17:22]
    end
    if (s3_valid_dup_for_tag_wvalid & (s3_lr_dup_for_tag_wvalid | s3_sc_dup_for_tag_wvalid)) begin // @[MainPipe.scala 976:99]
      if (s3_can_do_amo_dup_for_tag_wvalid & s3_lr_dup_for_tag_wvalid) begin // @[MainPipe.scala 977:75]
        lrsc_addr_dup_for_tag_wvalid <= _lrsc_addr_dup_for_tag_wvalid_T_1; // @[MainPipe.scala 979:37]
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      miss_update_meta_dup_for_data_wvalid <= s2_req_miss; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_probe_dup_for_data_wvalid <= s2_req_probe; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_coh_dup_for_data_wvalid_state <= s2_coh_state; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_source_dup_for_data_wvalid <= s2_req_source; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_cmd_dup_for_data_wvalid <= s2_req_cmd; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_replace_dup_for_data_wvalid <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_amo_hit_dup_for_data_wvalid <= s2_amo_hit; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_store_hit_dup_for_data_wvalid <= s2_store_hit; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_addr_dup_for_data_wvalid <= s2_req_addr; // @[Reg.scala 17:22]
    end
    if (s3_valid_dup_for_data_wvalid & (s3_lr_dup_for_data_wvalid | s3_sc_dup_for_data_wvalid)) begin // @[MainPipe.scala 1072:102]
      if (s3_can_do_amo_dup_for_data_wvalid & s3_lr_dup_for_data_wvalid) begin // @[MainPipe.scala 1073:77]
        lrsc_addr_dup_for_data_wvalid <= _lrsc_addr_dup_for_data_wvalid_T_1; // @[MainPipe.scala 1075:38]
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_banked_store_wmask_dup_for_data_wvalid <= s2_banked_store_wmask; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_word_idx_dup_for_data_wvalid <= s2_req_word_idx; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_amo_data_dup_for_data_wvalid <= s2_req_amo_data; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_amo_mask_dup_for_data_wvalid <= s2_req_amo_mask; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_miss_dup_for_data_wbank <= s2_req_miss; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_probe_dup_for_data_wbank <= s2_req_probe; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_coh_dup_for_data_wbank_state <= s2_coh_state; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_source_dup_for_data_wbank <= s2_req_source; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_cmd_dup_for_data_wbank <= s2_req_cmd; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_replace_dup_for_data_wbank <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_amo_hit_dup_for_data_wbank <= s2_amo_hit; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_store_hit_dup_for_data_wbank <= s2_store_hit; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_addr_dup_for_data_wbank <= s2_req_addr; // @[Reg.scala 17:22]
    end
    if (s3_valid_dup_for_data_wbank_0 & (s3_lr_dup_for_data_wbank | s3_sc_dup_for_data_wbank)) begin // @[MainPipe.scala 1203:104]
      if (s3_can_do_amo_dup_for_data_wbank & s3_lr_dup_for_data_wbank) begin // @[MainPipe.scala 1204:77]
        lrsc_addr_dup_for_data_wbank <= _lrsc_addr_dup_for_data_wbank_T_1; // @[MainPipe.scala 1206:39]
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_data_write_dup_0_bits_way_en_r <= s2_way_en; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_data_write_dup_0_bits_addr_r <= s2_req_vaddr; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_miss_dup_for_data_wbank_1 <= s2_req_miss; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_probe_dup_for_data_wbank_1 <= s2_req_probe; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_coh_dup_for_data_wbank_1_state <= s2_coh_state; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_source_dup_for_data_wbank_1 <= s2_req_source; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_cmd_dup_for_data_wbank_1 <= s2_req_cmd; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_replace_dup_for_data_wbank_1 <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_amo_hit_dup_for_data_wbank_1 <= s2_amo_hit; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_store_hit_dup_for_data_wbank_1 <= s2_store_hit; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_addr_dup_for_data_wbank_1 <= s2_req_addr; // @[Reg.scala 17:22]
    end
    if (s3_valid_dup_for_data_wbank_1 & (s3_lr_dup_for_data_wbank_1 | s3_sc_dup_for_data_wbank_1)) begin // @[MainPipe.scala 1203:104]
      if (s3_can_do_amo_dup_for_data_wbank_1 & s3_lr_dup_for_data_wbank_1) begin // @[MainPipe.scala 1204:77]
        lrsc_addr_dup_for_data_wbank_1 <= _lrsc_addr_dup_for_data_wbank_T_3; // @[MainPipe.scala 1206:39]
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_data_write_dup_1_bits_way_en_r <= s2_way_en; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_data_write_dup_1_bits_addr_r <= s2_req_vaddr; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_miss_dup_for_data_wbank_2 <= s2_req_miss; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_probe_dup_for_data_wbank_2 <= s2_req_probe; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_coh_dup_for_data_wbank_2_state <= s2_coh_state; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_source_dup_for_data_wbank_2 <= s2_req_source; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_cmd_dup_for_data_wbank_2 <= s2_req_cmd; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_replace_dup_for_data_wbank_2 <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_amo_hit_dup_for_data_wbank_2 <= s2_amo_hit; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_store_hit_dup_for_data_wbank_2 <= s2_store_hit; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_addr_dup_for_data_wbank_2 <= s2_req_addr; // @[Reg.scala 17:22]
    end
    if (s3_valid_dup_for_data_wbank_2 & (s3_lr_dup_for_data_wbank_2 | s3_sc_dup_for_data_wbank_2)) begin // @[MainPipe.scala 1203:104]
      if (s3_can_do_amo_dup_for_data_wbank_2 & s3_lr_dup_for_data_wbank_2) begin // @[MainPipe.scala 1204:77]
        lrsc_addr_dup_for_data_wbank_2 <= _lrsc_addr_dup_for_data_wbank_T_5; // @[MainPipe.scala 1206:39]
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_data_write_dup_2_bits_way_en_r <= s2_way_en; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_data_write_dup_2_bits_addr_r <= s2_req_vaddr; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_miss_dup_for_data_wbank_3 <= s2_req_miss; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_probe_dup_for_data_wbank_3 <= s2_req_probe; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_coh_dup_for_data_wbank_3_state <= s2_coh_state; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_source_dup_for_data_wbank_3 <= s2_req_source; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_cmd_dup_for_data_wbank_3 <= s2_req_cmd; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_replace_dup_for_data_wbank_3 <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_amo_hit_dup_for_data_wbank_3 <= s2_amo_hit; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_store_hit_dup_for_data_wbank_3 <= s2_store_hit; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_addr_dup_for_data_wbank_3 <= s2_req_addr; // @[Reg.scala 17:22]
    end
    if (s3_valid_dup_for_data_wbank_3 & (s3_lr_dup_for_data_wbank_3 | s3_sc_dup_for_data_wbank_3)) begin // @[MainPipe.scala 1203:104]
      if (s3_can_do_amo_dup_for_data_wbank_3 & s3_lr_dup_for_data_wbank_3) begin // @[MainPipe.scala 1204:77]
        lrsc_addr_dup_for_data_wbank_3 <= _lrsc_addr_dup_for_data_wbank_T_7; // @[MainPipe.scala 1206:39]
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_data_write_dup_3_bits_way_en_r <= s2_way_en; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_data_write_dup_3_bits_addr_r <= s2_req_vaddr; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_miss_dup_for_data_wbank_4 <= s2_req_miss; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_probe_dup_for_data_wbank_4 <= s2_req_probe; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_coh_dup_for_data_wbank_4_state <= s2_coh_state; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_source_dup_for_data_wbank_4 <= s2_req_source; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_cmd_dup_for_data_wbank_4 <= s2_req_cmd; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_replace_dup_for_data_wbank_4 <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_amo_hit_dup_for_data_wbank_4 <= s2_amo_hit; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_store_hit_dup_for_data_wbank_4 <= s2_store_hit; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_addr_dup_for_data_wbank_4 <= s2_req_addr; // @[Reg.scala 17:22]
    end
    if (s3_valid_dup_for_data_wbank_4 & (s3_lr_dup_for_data_wbank_4 | s3_sc_dup_for_data_wbank_4)) begin // @[MainPipe.scala 1203:104]
      if (s3_can_do_amo_dup_for_data_wbank_4 & s3_lr_dup_for_data_wbank_4) begin // @[MainPipe.scala 1204:77]
        lrsc_addr_dup_for_data_wbank_4 <= _lrsc_addr_dup_for_data_wbank_T_9; // @[MainPipe.scala 1206:39]
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_data_write_dup_4_bits_way_en_r <= s2_way_en; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_data_write_dup_4_bits_addr_r <= s2_req_vaddr; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_miss_dup_for_data_wbank_5 <= s2_req_miss; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_probe_dup_for_data_wbank_5 <= s2_req_probe; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_coh_dup_for_data_wbank_5_state <= s2_coh_state; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_source_dup_for_data_wbank_5 <= s2_req_source; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_cmd_dup_for_data_wbank_5 <= s2_req_cmd; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_replace_dup_for_data_wbank_5 <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_amo_hit_dup_for_data_wbank_5 <= s2_amo_hit; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_store_hit_dup_for_data_wbank_5 <= s2_store_hit; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_addr_dup_for_data_wbank_5 <= s2_req_addr; // @[Reg.scala 17:22]
    end
    if (s3_valid_dup_for_data_wbank_5 & (s3_lr_dup_for_data_wbank_5 | s3_sc_dup_for_data_wbank_5)) begin // @[MainPipe.scala 1203:104]
      if (s3_can_do_amo_dup_for_data_wbank_5 & s3_lr_dup_for_data_wbank_5) begin // @[MainPipe.scala 1204:77]
        lrsc_addr_dup_for_data_wbank_5 <= _lrsc_addr_dup_for_data_wbank_T_11; // @[MainPipe.scala 1206:39]
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_data_write_dup_5_bits_way_en_r <= s2_way_en; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_data_write_dup_5_bits_addr_r <= s2_req_vaddr; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_miss_dup_for_data_wbank_6 <= s2_req_miss; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_probe_dup_for_data_wbank_6 <= s2_req_probe; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_coh_dup_for_data_wbank_6_state <= s2_coh_state; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_source_dup_for_data_wbank_6 <= s2_req_source; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_cmd_dup_for_data_wbank_6 <= s2_req_cmd; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_replace_dup_for_data_wbank_6 <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_amo_hit_dup_for_data_wbank_6 <= s2_amo_hit; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_store_hit_dup_for_data_wbank_6 <= s2_store_hit; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_addr_dup_for_data_wbank_6 <= s2_req_addr; // @[Reg.scala 17:22]
    end
    if (s3_valid_dup_for_data_wbank_6 & (s3_lr_dup_for_data_wbank_6 | s3_sc_dup_for_data_wbank_6)) begin // @[MainPipe.scala 1203:104]
      if (s3_can_do_amo_dup_for_data_wbank_6 & s3_lr_dup_for_data_wbank_6) begin // @[MainPipe.scala 1204:77]
        lrsc_addr_dup_for_data_wbank_6 <= _lrsc_addr_dup_for_data_wbank_T_13; // @[MainPipe.scala 1206:39]
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_data_write_dup_6_bits_way_en_r <= s2_way_en; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_data_write_dup_6_bits_addr_r <= s2_req_vaddr; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_miss_dup_for_data_wbank_7 <= s2_req_miss; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_probe_dup_for_data_wbank_7 <= s2_req_probe; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_coh_dup_for_data_wbank_7_state <= s2_coh_state; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_source_dup_for_data_wbank_7 <= s2_req_source; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_cmd_dup_for_data_wbank_7 <= s2_req_cmd; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_replace_dup_for_data_wbank_7 <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_amo_hit_dup_for_data_wbank_7 <= s2_amo_hit; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_store_hit_dup_for_data_wbank_7 <= s2_store_hit; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_addr_dup_for_data_wbank_7 <= s2_req_addr; // @[Reg.scala 17:22]
    end
    if (s3_valid_dup_for_data_wbank_7 & (s3_lr_dup_for_data_wbank_7 | s3_sc_dup_for_data_wbank_7)) begin // @[MainPipe.scala 1203:104]
      if (s3_can_do_amo_dup_for_data_wbank_7 & s3_lr_dup_for_data_wbank_7) begin // @[MainPipe.scala 1204:77]
        lrsc_addr_dup_for_data_wbank_7 <= _lrsc_addr_dup_for_data_wbank_T_15; // @[MainPipe.scala 1206:39]
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_data_write_dup_7_bits_way_en_r <= s2_way_en; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_data_write_dup_7_bits_addr_r <= s2_req_vaddr; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      miss_update_meta_dup_for_wb_valid <= s2_req_miss; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_probe_dup_for_wb_valid <= s2_req_probe; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_tag_match_dup_for_wb_valid <= s2_tag_match; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_coh_dup_for_wb_valid_state <= s2_coh_state; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_probe_param_dup_for_wb_valid <= s2_req_probe_param; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_source_dup_for_wb_valid <= s2_req_source; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_cmd_dup_for_wb_valid <= s2_req_cmd; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_replace_dup_for_wb_valid <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_amo_hit_dup_for_wb_valid <= s2_amo_hit; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_store_hit_dup_for_wb_valid <= s2_store_hit; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_req_addr_dup_for_wb_valid <= s2_req_addr; // @[Reg.scala 17:22]
    end
    if (s3_valid_dup_for_wb_valid & (s3_lr_dup_for_wb_valid | s3_sc_dup_for_wb_valid)) begin // @[MainPipe.scala 1307:90]
      if (s3_can_do_amo_dup_for_wb_valid & s3_lr_dup_for_wb_valid) begin // @[MainPipe.scala 1308:69]
        lrsc_addr_dup_for_wb_valid <= _lrsc_addr_dup_for_wb_valid_T_1; // @[MainPipe.scala 1310:34]
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_need_replacement_dup_for_wb_valid <= s2_need_replacement; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      s3_tag_dup_for_wb_valid <= s2_tag; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      writeback_data_dup_for_wb_valid_r <= s2_req_probe_need_data; // @[Reg.scala 17:22]
    end
    io_replace_access_valid_REG <= s1_fire & (_s1_pregen_can_go_to_mq_T_6 | _s1_need_replacement_T) &
      _s1_need_replacement_T_1; // @[MainPipe.scala 1602:59]
    io_replace_access_valid_REG_1 <= io_replace_access_valid_REG & _io_replace_access_valid_T_6; // @[MainPipe.scala 1602:77]
    io_replace_access_bits_set_REG <= s2_idx_dup_for_replace_access; // @[MainPipe.scala 1610:42]
    io_replace_access_bits_way_REG <= {_io_replace_access_bits_way_T_8,_io_replace_access_bits_way_T_13}; // @[Cat.scala 31:58]
    if (_io_replace_access_bits_way_T) begin // @[MainPipe.scala 1612:10]
      io_replace_access_bits_way_REG_1 <= _io_replace_access_bits_way_T_7;
    end else begin
      io_replace_access_bits_way_REG_1 <= io_replace_access_bits_way_REG;
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      io_status_dup_0_s1_bits_set_r <= s0_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_0_s2_valid_r <= s1_req_replace; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_0_s2_bits_set_r <= s1_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_req_replace) begin // @[MainPipe.scala 332:22]
        io_status_dup_0_s2_bits_way_en_r <= s1_req_replace_way_en;
      end else if (s1_req_miss) begin // @[MainPipe.scala 335:8]
        io_status_dup_0_s2_bits_way_en_r <= s1_req_miss_way_en;
      end else if (s1_need_replacement) begin // @[MainPipe.scala 338:10]
        io_status_dup_0_s2_bits_way_en_r <= s1_repl_way_en;
      end else begin
        io_status_dup_0_s2_bits_way_en_r <= s1_tag_match_way;
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_0_s3_valid_r <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_0_s3_bits_set_r <= s2_idx; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_0_s3_bits_way_en_r <= s2_way_en; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      io_status_dup_1_s1_bits_set_r <= s0_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_1_s2_valid_r <= s1_req_replace; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_1_s2_bits_set_r <= s1_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_req_replace) begin // @[MainPipe.scala 332:22]
        io_status_dup_1_s2_bits_way_en_r <= s1_req_replace_way_en;
      end else if (s1_req_miss) begin // @[MainPipe.scala 335:8]
        io_status_dup_1_s2_bits_way_en_r <= s1_req_miss_way_en;
      end else if (s1_need_replacement) begin // @[MainPipe.scala 338:10]
        io_status_dup_1_s2_bits_way_en_r <= s1_repl_way_en;
      end else begin
        io_status_dup_1_s2_bits_way_en_r <= s1_tag_match_way;
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_1_s3_valid_r <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_1_s3_bits_set_r <= s2_idx; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_1_s3_bits_way_en_r <= s2_way_en; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      io_status_dup_2_s1_bits_set_r <= s0_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_2_s2_valid_r <= s1_req_replace; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_2_s2_bits_set_r <= s1_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_req_replace) begin // @[MainPipe.scala 332:22]
        io_status_dup_2_s2_bits_way_en_r <= s1_req_replace_way_en;
      end else if (s1_req_miss) begin // @[MainPipe.scala 335:8]
        io_status_dup_2_s2_bits_way_en_r <= s1_req_miss_way_en;
      end else if (s1_need_replacement) begin // @[MainPipe.scala 338:10]
        io_status_dup_2_s2_bits_way_en_r <= s1_repl_way_en;
      end else begin
        io_status_dup_2_s2_bits_way_en_r <= s1_tag_match_way;
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_2_s3_valid_r <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_2_s3_bits_set_r <= s2_idx; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_2_s3_bits_way_en_r <= s2_way_en; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      io_status_dup_3_s1_bits_set_r <= s0_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_3_s2_valid_r <= s1_req_replace; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_3_s2_bits_set_r <= s1_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_req_replace) begin // @[MainPipe.scala 332:22]
        io_status_dup_3_s2_bits_way_en_r <= s1_req_replace_way_en;
      end else if (s1_req_miss) begin // @[MainPipe.scala 335:8]
        io_status_dup_3_s2_bits_way_en_r <= s1_req_miss_way_en;
      end else if (s1_need_replacement) begin // @[MainPipe.scala 338:10]
        io_status_dup_3_s2_bits_way_en_r <= s1_repl_way_en;
      end else begin
        io_status_dup_3_s2_bits_way_en_r <= s1_tag_match_way;
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_3_s3_valid_r <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_3_s3_bits_set_r <= s2_idx; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_3_s3_bits_way_en_r <= s2_way_en; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      io_status_dup_4_s1_bits_set_r <= s0_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_4_s2_valid_r <= s1_req_replace; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_4_s2_bits_set_r <= s1_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_req_replace) begin // @[MainPipe.scala 332:22]
        io_status_dup_4_s2_bits_way_en_r <= s1_req_replace_way_en;
      end else if (s1_req_miss) begin // @[MainPipe.scala 335:8]
        io_status_dup_4_s2_bits_way_en_r <= s1_req_miss_way_en;
      end else if (s1_need_replacement) begin // @[MainPipe.scala 338:10]
        io_status_dup_4_s2_bits_way_en_r <= s1_repl_way_en;
      end else begin
        io_status_dup_4_s2_bits_way_en_r <= s1_tag_match_way;
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_4_s3_valid_r <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_4_s3_bits_set_r <= s2_idx; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_4_s3_bits_way_en_r <= s2_way_en; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      io_status_dup_5_s1_bits_set_r <= s0_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_5_s2_valid_r <= s1_req_replace; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_5_s2_bits_set_r <= s1_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_req_replace) begin // @[MainPipe.scala 332:22]
        io_status_dup_5_s2_bits_way_en_r <= s1_req_replace_way_en;
      end else if (s1_req_miss) begin // @[MainPipe.scala 335:8]
        io_status_dup_5_s2_bits_way_en_r <= s1_req_miss_way_en;
      end else if (s1_need_replacement) begin // @[MainPipe.scala 338:10]
        io_status_dup_5_s2_bits_way_en_r <= s1_repl_way_en;
      end else begin
        io_status_dup_5_s2_bits_way_en_r <= s1_tag_match_way;
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_5_s3_valid_r <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_5_s3_bits_set_r <= s2_idx; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_5_s3_bits_way_en_r <= s2_way_en; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      io_status_dup_6_s1_bits_set_r <= s0_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_6_s2_valid_r <= s1_req_replace; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_6_s2_bits_set_r <= s1_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_req_replace) begin // @[MainPipe.scala 332:22]
        io_status_dup_6_s2_bits_way_en_r <= s1_req_replace_way_en;
      end else if (s1_req_miss) begin // @[MainPipe.scala 335:8]
        io_status_dup_6_s2_bits_way_en_r <= s1_req_miss_way_en;
      end else if (s1_need_replacement) begin // @[MainPipe.scala 338:10]
        io_status_dup_6_s2_bits_way_en_r <= s1_repl_way_en;
      end else begin
        io_status_dup_6_s2_bits_way_en_r <= s1_tag_match_way;
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_6_s3_valid_r <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_6_s3_bits_set_r <= s2_idx; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_6_s3_bits_way_en_r <= s2_way_en; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      io_status_dup_7_s1_bits_set_r <= s0_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_7_s2_valid_r <= s1_req_replace; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_7_s2_bits_set_r <= s1_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_req_replace) begin // @[MainPipe.scala 332:22]
        io_status_dup_7_s2_bits_way_en_r <= s1_req_replace_way_en;
      end else if (s1_req_miss) begin // @[MainPipe.scala 335:8]
        io_status_dup_7_s2_bits_way_en_r <= s1_req_miss_way_en;
      end else if (s1_need_replacement) begin // @[MainPipe.scala 338:10]
        io_status_dup_7_s2_bits_way_en_r <= s1_repl_way_en;
      end else begin
        io_status_dup_7_s2_bits_way_en_r <= s1_tag_match_way;
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_7_s3_valid_r <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_7_s3_bits_set_r <= s2_idx; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_7_s3_bits_way_en_r <= s2_way_en; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      io_status_dup_8_s1_bits_set_r <= s0_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_8_s2_valid_r <= s1_req_replace; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_8_s2_bits_set_r <= s1_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_req_replace) begin // @[MainPipe.scala 332:22]
        io_status_dup_8_s2_bits_way_en_r <= s1_req_replace_way_en;
      end else if (s1_req_miss) begin // @[MainPipe.scala 335:8]
        io_status_dup_8_s2_bits_way_en_r <= s1_req_miss_way_en;
      end else if (s1_need_replacement) begin // @[MainPipe.scala 338:10]
        io_status_dup_8_s2_bits_way_en_r <= s1_repl_way_en;
      end else begin
        io_status_dup_8_s2_bits_way_en_r <= s1_tag_match_way;
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_8_s3_valid_r <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_8_s3_bits_set_r <= s2_idx; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_8_s3_bits_way_en_r <= s2_way_en; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      io_status_dup_9_s1_bits_set_r <= s0_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_9_s2_valid_r <= s1_req_replace; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_9_s2_bits_set_r <= s1_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_req_replace) begin // @[MainPipe.scala 332:22]
        io_status_dup_9_s2_bits_way_en_r <= s1_req_replace_way_en;
      end else if (s1_req_miss) begin // @[MainPipe.scala 335:8]
        io_status_dup_9_s2_bits_way_en_r <= s1_req_miss_way_en;
      end else if (s1_need_replacement) begin // @[MainPipe.scala 338:10]
        io_status_dup_9_s2_bits_way_en_r <= s1_repl_way_en;
      end else begin
        io_status_dup_9_s2_bits_way_en_r <= s1_tag_match_way;
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_9_s3_valid_r <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_9_s3_bits_set_r <= s2_idx; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_9_s3_bits_way_en_r <= s2_way_en; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      io_status_dup_10_s1_bits_set_r <= s0_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_10_s2_valid_r <= s1_req_replace; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_10_s2_bits_set_r <= s1_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_req_replace) begin // @[MainPipe.scala 332:22]
        io_status_dup_10_s2_bits_way_en_r <= s1_req_replace_way_en;
      end else if (s1_req_miss) begin // @[MainPipe.scala 335:8]
        io_status_dup_10_s2_bits_way_en_r <= s1_req_miss_way_en;
      end else if (s1_need_replacement) begin // @[MainPipe.scala 338:10]
        io_status_dup_10_s2_bits_way_en_r <= s1_repl_way_en;
      end else begin
        io_status_dup_10_s2_bits_way_en_r <= s1_tag_match_way;
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_10_s3_valid_r <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_10_s3_bits_set_r <= s2_idx; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_10_s3_bits_way_en_r <= s2_way_en; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      io_status_dup_11_s1_bits_set_r <= s0_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_11_s2_valid_r <= s1_req_replace; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_11_s2_bits_set_r <= s1_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_req_replace) begin // @[MainPipe.scala 332:22]
        io_status_dup_11_s2_bits_way_en_r <= s1_req_replace_way_en;
      end else if (s1_req_miss) begin // @[MainPipe.scala 335:8]
        io_status_dup_11_s2_bits_way_en_r <= s1_req_miss_way_en;
      end else if (s1_need_replacement) begin // @[MainPipe.scala 338:10]
        io_status_dup_11_s2_bits_way_en_r <= s1_repl_way_en;
      end else begin
        io_status_dup_11_s2_bits_way_en_r <= s1_tag_match_way;
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_11_s3_valid_r <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_11_s3_bits_set_r <= s2_idx; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_11_s3_bits_way_en_r <= s2_way_en; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      io_status_dup_12_s1_bits_set_r <= s0_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_12_s2_valid_r <= s1_req_replace; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_12_s2_bits_set_r <= s1_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_req_replace) begin // @[MainPipe.scala 332:22]
        io_status_dup_12_s2_bits_way_en_r <= s1_req_replace_way_en;
      end else if (s1_req_miss) begin // @[MainPipe.scala 335:8]
        io_status_dup_12_s2_bits_way_en_r <= s1_req_miss_way_en;
      end else if (s1_need_replacement) begin // @[MainPipe.scala 338:10]
        io_status_dup_12_s2_bits_way_en_r <= s1_repl_way_en;
      end else begin
        io_status_dup_12_s2_bits_way_en_r <= s1_tag_match_way;
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_12_s3_valid_r <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_12_s3_bits_set_r <= s2_idx; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_12_s3_bits_way_en_r <= s2_way_en; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      io_status_dup_13_s1_bits_set_r <= s0_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_13_s2_valid_r <= s1_req_replace; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_13_s2_bits_set_r <= s1_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_req_replace) begin // @[MainPipe.scala 332:22]
        io_status_dup_13_s2_bits_way_en_r <= s1_req_replace_way_en;
      end else if (s1_req_miss) begin // @[MainPipe.scala 335:8]
        io_status_dup_13_s2_bits_way_en_r <= s1_req_miss_way_en;
      end else if (s1_need_replacement) begin // @[MainPipe.scala 338:10]
        io_status_dup_13_s2_bits_way_en_r <= s1_repl_way_en;
      end else begin
        io_status_dup_13_s2_bits_way_en_r <= s1_tag_match_way;
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_13_s3_valid_r <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_13_s3_bits_set_r <= s2_idx; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_13_s3_bits_way_en_r <= s2_way_en; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      io_status_dup_14_s1_bits_set_r <= s0_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_14_s2_valid_r <= s1_req_replace; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_14_s2_bits_set_r <= s1_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_req_replace) begin // @[MainPipe.scala 332:22]
        io_status_dup_14_s2_bits_way_en_r <= s1_req_replace_way_en;
      end else if (s1_req_miss) begin // @[MainPipe.scala 335:8]
        io_status_dup_14_s2_bits_way_en_r <= s1_req_miss_way_en;
      end else if (s1_need_replacement) begin // @[MainPipe.scala 338:10]
        io_status_dup_14_s2_bits_way_en_r <= s1_repl_way_en;
      end else begin
        io_status_dup_14_s2_bits_way_en_r <= s1_tag_match_way;
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_14_s3_valid_r <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_14_s3_bits_set_r <= s2_idx; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_14_s3_bits_way_en_r <= s2_way_en; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      io_status_dup_15_s1_bits_set_r <= s0_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_15_s2_valid_r <= s1_req_replace; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_15_s2_bits_set_r <= s1_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_req_replace) begin // @[MainPipe.scala 332:22]
        io_status_dup_15_s2_bits_way_en_r <= s1_req_replace_way_en;
      end else if (s1_req_miss) begin // @[MainPipe.scala 335:8]
        io_status_dup_15_s2_bits_way_en_r <= s1_req_miss_way_en;
      end else if (s1_need_replacement) begin // @[MainPipe.scala 338:10]
        io_status_dup_15_s2_bits_way_en_r <= s1_repl_way_en;
      end else begin
        io_status_dup_15_s2_bits_way_en_r <= s1_tag_match_way;
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_15_s3_valid_r <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_15_s3_bits_set_r <= s2_idx; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_15_s3_bits_way_en_r <= s2_way_en; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      io_status_dup_16_s1_bits_set_r <= s0_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_16_s2_valid_r <= s1_req_replace; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_16_s2_bits_set_r <= s1_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_req_replace) begin // @[MainPipe.scala 332:22]
        io_status_dup_16_s2_bits_way_en_r <= s1_req_replace_way_en;
      end else if (s1_req_miss) begin // @[MainPipe.scala 335:8]
        io_status_dup_16_s2_bits_way_en_r <= s1_req_miss_way_en;
      end else if (s1_need_replacement) begin // @[MainPipe.scala 338:10]
        io_status_dup_16_s2_bits_way_en_r <= s1_repl_way_en;
      end else begin
        io_status_dup_16_s2_bits_way_en_r <= s1_tag_match_way;
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_16_s3_valid_r <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_16_s3_bits_set_r <= s2_idx; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_16_s3_bits_way_en_r <= s2_way_en; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      io_status_dup_17_s1_bits_set_r <= s0_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_17_s2_valid_r <= s1_req_replace; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_17_s2_bits_set_r <= s1_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_req_replace) begin // @[MainPipe.scala 332:22]
        io_status_dup_17_s2_bits_way_en_r <= s1_req_replace_way_en;
      end else if (s1_req_miss) begin // @[MainPipe.scala 335:8]
        io_status_dup_17_s2_bits_way_en_r <= s1_req_miss_way_en;
      end else if (s1_need_replacement) begin // @[MainPipe.scala 338:10]
        io_status_dup_17_s2_bits_way_en_r <= s1_repl_way_en;
      end else begin
        io_status_dup_17_s2_bits_way_en_r <= s1_tag_match_way;
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_17_s3_valid_r <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_17_s3_bits_set_r <= s2_idx; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_17_s3_bits_way_en_r <= s2_way_en; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      io_status_dup_18_s1_bits_set_r <= s0_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_18_s2_valid_r <= s1_req_replace; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_18_s2_bits_set_r <= s1_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_req_replace) begin // @[MainPipe.scala 332:22]
        io_status_dup_18_s2_bits_way_en_r <= s1_req_replace_way_en;
      end else if (s1_req_miss) begin // @[MainPipe.scala 335:8]
        io_status_dup_18_s2_bits_way_en_r <= s1_req_miss_way_en;
      end else if (s1_need_replacement) begin // @[MainPipe.scala 338:10]
        io_status_dup_18_s2_bits_way_en_r <= s1_repl_way_en;
      end else begin
        io_status_dup_18_s2_bits_way_en_r <= s1_tag_match_way;
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_18_s3_valid_r <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_18_s3_bits_set_r <= s2_idx; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_18_s3_bits_way_en_r <= s2_way_en; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      io_status_dup_19_s1_bits_set_r <= s0_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_19_s2_valid_r <= s1_req_replace; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_19_s2_bits_set_r <= s1_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_req_replace) begin // @[MainPipe.scala 332:22]
        io_status_dup_19_s2_bits_way_en_r <= s1_req_replace_way_en;
      end else if (s1_req_miss) begin // @[MainPipe.scala 335:8]
        io_status_dup_19_s2_bits_way_en_r <= s1_req_miss_way_en;
      end else if (s1_need_replacement) begin // @[MainPipe.scala 338:10]
        io_status_dup_19_s2_bits_way_en_r <= s1_repl_way_en;
      end else begin
        io_status_dup_19_s2_bits_way_en_r <= s1_tag_match_way;
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_19_s3_valid_r <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_19_s3_bits_set_r <= s2_idx; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_19_s3_bits_way_en_r <= s2_way_en; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      io_status_dup_20_s1_bits_set_r <= s0_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_20_s2_valid_r <= s1_req_replace; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_20_s2_bits_set_r <= s1_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_req_replace) begin // @[MainPipe.scala 332:22]
        io_status_dup_20_s2_bits_way_en_r <= s1_req_replace_way_en;
      end else if (s1_req_miss) begin // @[MainPipe.scala 335:8]
        io_status_dup_20_s2_bits_way_en_r <= s1_req_miss_way_en;
      end else if (s1_need_replacement) begin // @[MainPipe.scala 338:10]
        io_status_dup_20_s2_bits_way_en_r <= s1_repl_way_en;
      end else begin
        io_status_dup_20_s2_bits_way_en_r <= s1_tag_match_way;
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_20_s3_valid_r <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_20_s3_bits_set_r <= s2_idx; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_20_s3_bits_way_en_r <= s2_way_en; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      io_status_dup_21_s1_bits_set_r <= s0_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_21_s2_valid_r <= s1_req_replace; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_21_s2_bits_set_r <= s1_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_req_replace) begin // @[MainPipe.scala 332:22]
        io_status_dup_21_s2_bits_way_en_r <= s1_req_replace_way_en;
      end else if (s1_req_miss) begin // @[MainPipe.scala 335:8]
        io_status_dup_21_s2_bits_way_en_r <= s1_req_miss_way_en;
      end else if (s1_need_replacement) begin // @[MainPipe.scala 338:10]
        io_status_dup_21_s2_bits_way_en_r <= s1_repl_way_en;
      end else begin
        io_status_dup_21_s2_bits_way_en_r <= s1_tag_match_way;
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_21_s3_valid_r <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_21_s3_bits_set_r <= s2_idx; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_21_s3_bits_way_en_r <= s2_way_en; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      io_status_dup_22_s1_bits_set_r <= s0_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_22_s2_valid_r <= s1_req_replace; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_22_s2_bits_set_r <= s1_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_req_replace) begin // @[MainPipe.scala 332:22]
        io_status_dup_22_s2_bits_way_en_r <= s1_req_replace_way_en;
      end else if (s1_req_miss) begin // @[MainPipe.scala 335:8]
        io_status_dup_22_s2_bits_way_en_r <= s1_req_miss_way_en;
      end else if (s1_need_replacement) begin // @[MainPipe.scala 338:10]
        io_status_dup_22_s2_bits_way_en_r <= s1_repl_way_en;
      end else begin
        io_status_dup_22_s2_bits_way_en_r <= s1_tag_match_way;
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_22_s3_valid_r <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_22_s3_bits_set_r <= s2_idx; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_22_s3_bits_way_en_r <= s2_way_en; // @[Reg.scala 17:22]
    end
    if (s0_fire) begin // @[Reg.scala 17:18]
      io_status_dup_23_s1_bits_set_r <= s0_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_23_s2_valid_r <= s1_req_replace; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      io_status_dup_23_s2_bits_set_r <= s1_idx; // @[Reg.scala 17:22]
    end
    if (s1_fire) begin // @[Reg.scala 17:18]
      if (s1_req_replace) begin // @[MainPipe.scala 332:22]
        io_status_dup_23_s2_bits_way_en_r <= s1_req_replace_way_en;
      end else if (s1_req_miss) begin // @[MainPipe.scala 335:8]
        io_status_dup_23_s2_bits_way_en_r <= s1_req_miss_way_en;
      end else if (s1_need_replacement) begin // @[MainPipe.scala 338:10]
        io_status_dup_23_s2_bits_way_en_r <= s1_repl_way_en;
      end else begin
        io_status_dup_23_s2_bits_way_en_r <= s1_tag_match_way;
      end
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_23_s3_valid_r <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_23_s3_bits_set_r <= s2_idx; // @[Reg.scala 17:22]
    end
    if (s2_fire_to_s3) begin // @[Reg.scala 17:18]
      io_status_dup_23_s3_bits_way_en_r <= s2_way_en; // @[Reg.scala 17:22]
    end
    io_error_valid_REG <= s2_valid & s2_can_go; // @[MainPipe.scala 427:26]
    if (s2_fire) begin // @[Reg.scala 17:18]
      io_error_report_to_beu_r <= s2_tag_error; // @[Reg.scala 17:22]
    end
    io_error_report_to_beu_REG <= s2_valid & s2_can_go; // @[MainPipe.scala 427:26]
    if (s2_fire) begin // @[Reg.scala 17:18]
      io_error_paddr_r <= s2_req_addr; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      io_error_source_tag_r <= s2_tag_error; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      io_error_source_l2_r <= _io_error_source_l2_T; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      io_error_opType_store_r <= _io_error_opType_store_T_2; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      io_error_opType_probe_r <= s2_req_probe; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      io_error_opType_release_r <= s2_req_replace; // @[Reg.scala 17:22]
    end
    if (s2_fire) begin // @[Reg.scala 17:18]
      io_error_opType_atom_r <= _io_error_opType_atom_T_2; // @[Reg.scala 17:22]
    end
    io_perf_0_value_REG <= req_valid & s0_can_go; // @[MainPipe.scala 228:27]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_1_value_REG <= _T_264 + _T_266; // @[Bitwise.scala 48:55]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:27]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 276:18]
      s1_valid_dup_1 <= 1'h0; // @[MainPipe.scala 278:28]
    end else begin
      s1_valid_dup_1 <= s0_fire | _GEN_32;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 429:18]
      s2_valid_dup_0 <= 1'h0; // @[MainPipe.scala 431:28]
    end else begin
      s2_valid_dup_0 <= s1_fire | _GEN_138;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1400:24]
      s3_valid_dup_6 <= 1'h0; // @[MainPipe.scala 1402:28]
    end else begin
      s3_valid_dup_6 <= s2_fire_to_s3 | _GEN_717;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 276:18]
      s1_valid_dup_2 <= 1'h0; // @[MainPipe.scala 278:28]
    end else begin
      s1_valid_dup_2 <= s0_fire | _GEN_33;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 429:18]
      s2_valid_dup_1 <= 1'h0; // @[MainPipe.scala 431:28]
    end else begin
      s2_valid_dup_1 <= s1_fire | _GEN_139;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1400:24]
      s3_valid_dup_7 <= 1'h0; // @[MainPipe.scala 1402:28]
    end else begin
      s3_valid_dup_7 <= s2_fire_to_s3 | _GEN_718;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 276:18]
      s1_valid_dup_0 <= 1'h0; // @[MainPipe.scala 278:28]
    end else begin
      s1_valid_dup_0 <= s0_fire | _GEN_31;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 429:18]
      s2_valid_dup_3 <= 1'h0; // @[MainPipe.scala 431:28]
    end else begin
      s2_valid_dup_3 <= s1_fire | _GEN_141;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1400:24]
      s3_valid_dup_5 <= 1'h0; // @[MainPipe.scala 1402:28]
    end else begin
      s3_valid_dup_5 <= s2_fire_to_s3 | _GEN_716;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 580:46]
      lrsc_count_dup_0 <= 6'h0; // @[MainPipe.scala 581:35 582:18 587:18]
    end else if (s3_valid_dup_0 & (s3_lr | s3_sc)) begin // @[MainPipe.scala 590:36]
      if (s3_can_do_amo & s3_lr) begin // @[MainPipe.scala 594:30]
        lrsc_count_dup_0 <= 6'h3f;
      end else begin
        lrsc_count_dup_0 <= 6'h0;
      end
    end else if (io_invalid_resv_set) begin // @[MainPipe.scala 595:33]
      lrsc_count_dup_0 <= 6'h0; // @[MainPipe.scala 598:11]
    end else if (lrsc_count > 6'h0) begin // @[MainPipe.scala 532:31]
      lrsc_count_dup_0 <= _lrsc_count_dup_0_T_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1414:17]
      s3_s_amoalu_dup_0 <= 1'h0; // @[MainPipe.scala 1416:31]
    end else if (s3_fire) begin
      s3_s_amoalu_dup_0 <= 1'h0;
    end else begin
      s3_s_amoalu_dup_0 <= _GEN_380;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1414:17]
      s3_s_amoalu_dup_1 <= 1'h0; // @[MainPipe.scala 1416:31]
    end else if (s3_fire) begin
      s3_s_amoalu_dup_1 <= 1'h0;
    end else begin
      s3_s_amoalu_dup_1 <= _GEN_381;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 276:18]
      s1_valid <= 1'h0; // @[MainPipe.scala 277:14]
    end else begin
      s1_valid <= s0_fire | _GEN_30;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 276:18]
      s1_valid_dup_3 <= 1'h0; // @[MainPipe.scala 278:28]
    end else begin
      s1_valid_dup_3 <= s0_fire | _GEN_34;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 276:18]
      s1_valid_dup_4 <= 1'h0; // @[MainPipe.scala 278:28]
    end else begin
      s1_valid_dup_4 <= s0_fire | _GEN_35;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 276:18]
      s1_valid_dup_5 <= 1'h0; // @[MainPipe.scala 278:28]
    end else begin
      s1_valid_dup_5 <= s0_fire | _GEN_36;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 276:18]
      s1_valid_dup_for_status_0 <= 1'h0; // @[MainPipe.scala 279:39]
    end else begin
      s1_valid_dup_for_status_0 <= s0_fire | _GEN_37;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 276:18]
      s1_valid_dup_for_status_1 <= 1'h0; // @[MainPipe.scala 279:39]
    end else begin
      s1_valid_dup_for_status_1 <= s0_fire | _GEN_38;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 276:18]
      s1_valid_dup_for_status_2 <= 1'h0; // @[MainPipe.scala 279:39]
    end else begin
      s1_valid_dup_for_status_2 <= s0_fire | _GEN_39;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 276:18]
      s1_valid_dup_for_status_3 <= 1'h0; // @[MainPipe.scala 279:39]
    end else begin
      s1_valid_dup_for_status_3 <= s0_fire | _GEN_40;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 276:18]
      s1_valid_dup_for_status_4 <= 1'h0; // @[MainPipe.scala 279:39]
    end else begin
      s1_valid_dup_for_status_4 <= s0_fire | _GEN_41;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 276:18]
      s1_valid_dup_for_status_5 <= 1'h0; // @[MainPipe.scala 279:39]
    end else begin
      s1_valid_dup_for_status_5 <= s0_fire | _GEN_42;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 276:18]
      s1_valid_dup_for_status_6 <= 1'h0; // @[MainPipe.scala 279:39]
    end else begin
      s1_valid_dup_for_status_6 <= s0_fire | _GEN_43;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 276:18]
      s1_valid_dup_for_status_7 <= 1'h0; // @[MainPipe.scala 279:39]
    end else begin
      s1_valid_dup_for_status_7 <= s0_fire | _GEN_44;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 276:18]
      s1_valid_dup_for_status_8 <= 1'h0; // @[MainPipe.scala 279:39]
    end else begin
      s1_valid_dup_for_status_8 <= s0_fire | _GEN_45;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 276:18]
      s1_valid_dup_for_status_9 <= 1'h0; // @[MainPipe.scala 279:39]
    end else begin
      s1_valid_dup_for_status_9 <= s0_fire | _GEN_46;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 276:18]
      s1_valid_dup_for_status_10 <= 1'h0; // @[MainPipe.scala 279:39]
    end else begin
      s1_valid_dup_for_status_10 <= s0_fire | _GEN_47;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 276:18]
      s1_valid_dup_for_status_11 <= 1'h0; // @[MainPipe.scala 279:39]
    end else begin
      s1_valid_dup_for_status_11 <= s0_fire | _GEN_48;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 276:18]
      s1_valid_dup_for_status_12 <= 1'h0; // @[MainPipe.scala 279:39]
    end else begin
      s1_valid_dup_for_status_12 <= s0_fire | _GEN_49;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 276:18]
      s1_valid_dup_for_status_13 <= 1'h0; // @[MainPipe.scala 279:39]
    end else begin
      s1_valid_dup_for_status_13 <= s0_fire | _GEN_50;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 276:18]
      s1_valid_dup_for_status_14 <= 1'h0; // @[MainPipe.scala 279:39]
    end else begin
      s1_valid_dup_for_status_14 <= s0_fire | _GEN_51;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 276:18]
      s1_valid_dup_for_status_15 <= 1'h0; // @[MainPipe.scala 279:39]
    end else begin
      s1_valid_dup_for_status_15 <= s0_fire | _GEN_52;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 276:18]
      s1_valid_dup_for_status_16 <= 1'h0; // @[MainPipe.scala 279:39]
    end else begin
      s1_valid_dup_for_status_16 <= s0_fire | _GEN_53;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 276:18]
      s1_valid_dup_for_status_17 <= 1'h0; // @[MainPipe.scala 279:39]
    end else begin
      s1_valid_dup_for_status_17 <= s0_fire | _GEN_54;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 276:18]
      s1_valid_dup_for_status_18 <= 1'h0; // @[MainPipe.scala 279:39]
    end else begin
      s1_valid_dup_for_status_18 <= s0_fire | _GEN_55;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 276:18]
      s1_valid_dup_for_status_19 <= 1'h0; // @[MainPipe.scala 279:39]
    end else begin
      s1_valid_dup_for_status_19 <= s0_fire | _GEN_56;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 276:18]
      s1_valid_dup_for_status_20 <= 1'h0; // @[MainPipe.scala 279:39]
    end else begin
      s1_valid_dup_for_status_20 <= s0_fire | _GEN_57;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 276:18]
      s1_valid_dup_for_status_21 <= 1'h0; // @[MainPipe.scala 279:39]
    end else begin
      s1_valid_dup_for_status_21 <= s0_fire | _GEN_58;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 276:18]
      s1_valid_dup_for_status_22 <= 1'h0; // @[MainPipe.scala 279:39]
    end else begin
      s1_valid_dup_for_status_22 <= s0_fire | _GEN_59;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 276:18]
      s1_valid_dup_for_status_23 <= 1'h0; // @[MainPipe.scala 279:39]
    end else begin
      s1_valid_dup_for_status_23 <= s0_fire | _GEN_60;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 429:18]
      s2_valid <= 1'h0; // @[MainPipe.scala 430:14]
    end else begin
      s2_valid <= s1_fire | _GEN_137;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 429:18]
      s2_valid_dup_2 <= 1'h0; // @[MainPipe.scala 431:28]
    end else begin
      s2_valid_dup_2 <= s1_fire | _GEN_140;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 429:18]
      s2_valid_dup_4 <= 1'h0; // @[MainPipe.scala 431:28]
    end else begin
      s2_valid_dup_4 <= s1_fire | _GEN_142;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 429:18]
      s2_valid_dup_5 <= 1'h0; // @[MainPipe.scala 431:28]
    end else begin
      s2_valid_dup_5 <= s1_fire | _GEN_143;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 429:18]
      s2_valid_dup_6 <= 1'h0; // @[MainPipe.scala 431:28]
    end else begin
      s2_valid_dup_6 <= s1_fire | _GEN_144;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 429:18]
      s2_valid_dup_7 <= 1'h0; // @[MainPipe.scala 431:28]
    end else begin
      s2_valid_dup_7 <= s1_fire | _GEN_145;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 429:18]
      s2_valid_dup_for_status_0 <= 1'h0; // @[MainPipe.scala 432:39]
    end else begin
      s2_valid_dup_for_status_0 <= s1_fire | _GEN_146;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 429:18]
      s2_valid_dup_for_status_1 <= 1'h0; // @[MainPipe.scala 432:39]
    end else begin
      s2_valid_dup_for_status_1 <= s1_fire | _GEN_147;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 429:18]
      s2_valid_dup_for_status_2 <= 1'h0; // @[MainPipe.scala 432:39]
    end else begin
      s2_valid_dup_for_status_2 <= s1_fire | _GEN_148;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 429:18]
      s2_valid_dup_for_status_3 <= 1'h0; // @[MainPipe.scala 432:39]
    end else begin
      s2_valid_dup_for_status_3 <= s1_fire | _GEN_149;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 429:18]
      s2_valid_dup_for_status_4 <= 1'h0; // @[MainPipe.scala 432:39]
    end else begin
      s2_valid_dup_for_status_4 <= s1_fire | _GEN_150;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 429:18]
      s2_valid_dup_for_status_5 <= 1'h0; // @[MainPipe.scala 432:39]
    end else begin
      s2_valid_dup_for_status_5 <= s1_fire | _GEN_151;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 429:18]
      s2_valid_dup_for_status_6 <= 1'h0; // @[MainPipe.scala 432:39]
    end else begin
      s2_valid_dup_for_status_6 <= s1_fire | _GEN_152;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 429:18]
      s2_valid_dup_for_status_7 <= 1'h0; // @[MainPipe.scala 432:39]
    end else begin
      s2_valid_dup_for_status_7 <= s1_fire | _GEN_153;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 429:18]
      s2_valid_dup_for_status_8 <= 1'h0; // @[MainPipe.scala 432:39]
    end else begin
      s2_valid_dup_for_status_8 <= s1_fire | _GEN_154;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 429:18]
      s2_valid_dup_for_status_9 <= 1'h0; // @[MainPipe.scala 432:39]
    end else begin
      s2_valid_dup_for_status_9 <= s1_fire | _GEN_155;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 429:18]
      s2_valid_dup_for_status_10 <= 1'h0; // @[MainPipe.scala 432:39]
    end else begin
      s2_valid_dup_for_status_10 <= s1_fire | _GEN_156;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 429:18]
      s2_valid_dup_for_status_11 <= 1'h0; // @[MainPipe.scala 432:39]
    end else begin
      s2_valid_dup_for_status_11 <= s1_fire | _GEN_157;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 429:18]
      s2_valid_dup_for_status_12 <= 1'h0; // @[MainPipe.scala 432:39]
    end else begin
      s2_valid_dup_for_status_12 <= s1_fire | _GEN_158;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 429:18]
      s2_valid_dup_for_status_13 <= 1'h0; // @[MainPipe.scala 432:39]
    end else begin
      s2_valid_dup_for_status_13 <= s1_fire | _GEN_159;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 429:18]
      s2_valid_dup_for_status_14 <= 1'h0; // @[MainPipe.scala 432:39]
    end else begin
      s2_valid_dup_for_status_14 <= s1_fire | _GEN_160;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 429:18]
      s2_valid_dup_for_status_15 <= 1'h0; // @[MainPipe.scala 432:39]
    end else begin
      s2_valid_dup_for_status_15 <= s1_fire | _GEN_161;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 429:18]
      s2_valid_dup_for_status_16 <= 1'h0; // @[MainPipe.scala 432:39]
    end else begin
      s2_valid_dup_for_status_16 <= s1_fire | _GEN_162;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 429:18]
      s2_valid_dup_for_status_17 <= 1'h0; // @[MainPipe.scala 432:39]
    end else begin
      s2_valid_dup_for_status_17 <= s1_fire | _GEN_163;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 429:18]
      s2_valid_dup_for_status_18 <= 1'h0; // @[MainPipe.scala 432:39]
    end else begin
      s2_valid_dup_for_status_18 <= s1_fire | _GEN_164;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 429:18]
      s2_valid_dup_for_status_19 <= 1'h0; // @[MainPipe.scala 432:39]
    end else begin
      s2_valid_dup_for_status_19 <= s1_fire | _GEN_165;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 429:18]
      s2_valid_dup_for_status_20 <= 1'h0; // @[MainPipe.scala 432:39]
    end else begin
      s2_valid_dup_for_status_20 <= s1_fire | _GEN_166;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 429:18]
      s2_valid_dup_for_status_21 <= 1'h0; // @[MainPipe.scala 432:39]
    end else begin
      s2_valid_dup_for_status_21 <= s1_fire | _GEN_167;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 429:18]
      s2_valid_dup_for_status_22 <= 1'h0; // @[MainPipe.scala 432:39]
    end else begin
      s2_valid_dup_for_status_22 <= s1_fire | _GEN_168;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 429:18]
      s2_valid_dup_for_status_23 <= 1'h0; // @[MainPipe.scala 432:39]
    end else begin
      s2_valid_dup_for_status_23 <= s1_fire | _GEN_169;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1400:24]
      s3_valid <= 1'h0; // @[MainPipe.scala 1401:14]
    end else begin
      s3_valid <= s2_fire_to_s3 | _GEN_710;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1400:24]
      s3_valid_dup_0 <= 1'h0; // @[MainPipe.scala 1402:28]
    end else begin
      s3_valid_dup_0 <= s2_fire_to_s3 | _GEN_711;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1400:24]
      s3_valid_dup_1 <= 1'h0; // @[MainPipe.scala 1402:28]
    end else begin
      s3_valid_dup_1 <= s2_fire_to_s3 | _GEN_712;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1400:24]
      s3_valid_dup_3 <= 1'h0; // @[MainPipe.scala 1402:28]
    end else begin
      s3_valid_dup_3 <= s2_fire_to_s3 | _GEN_714;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1400:24]
      s3_valid_dup_4 <= 1'h0; // @[MainPipe.scala 1402:28]
    end else begin
      s3_valid_dup_4 <= s2_fire_to_s3 | _GEN_715;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1400:24]
      s3_valid_dup_8 <= 1'h0; // @[MainPipe.scala 1402:28]
    end else begin
      s3_valid_dup_8 <= s2_fire_to_s3 | _GEN_719;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1400:24]
      s3_valid_dup_9 <= 1'h0; // @[MainPipe.scala 1402:28]
    end else begin
      s3_valid_dup_9 <= s2_fire_to_s3 | _GEN_720;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1400:24]
      s3_valid_dup_10 <= 1'h0; // @[MainPipe.scala 1402:28]
    end else begin
      s3_valid_dup_10 <= s2_fire_to_s3 | _GEN_721;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1400:24]
      s3_valid_dup_11 <= 1'h0; // @[MainPipe.scala 1402:28]
    end else begin
      s3_valid_dup_11 <= s2_fire_to_s3 | _GEN_722;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1400:24]
      s3_valid_dup_for_status_0 <= 1'h0; // @[MainPipe.scala 1403:39]
    end else begin
      s3_valid_dup_for_status_0 <= s2_fire_to_s3 | _GEN_725;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1400:24]
      s3_valid_dup_for_status_1 <= 1'h0; // @[MainPipe.scala 1403:39]
    end else begin
      s3_valid_dup_for_status_1 <= s2_fire_to_s3 | _GEN_726;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1400:24]
      s3_valid_dup_for_status_2 <= 1'h0; // @[MainPipe.scala 1403:39]
    end else begin
      s3_valid_dup_for_status_2 <= s2_fire_to_s3 | _GEN_727;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1400:24]
      s3_valid_dup_for_status_3 <= 1'h0; // @[MainPipe.scala 1403:39]
    end else begin
      s3_valid_dup_for_status_3 <= s2_fire_to_s3 | _GEN_728;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1400:24]
      s3_valid_dup_for_status_4 <= 1'h0; // @[MainPipe.scala 1403:39]
    end else begin
      s3_valid_dup_for_status_4 <= s2_fire_to_s3 | _GEN_729;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1400:24]
      s3_valid_dup_for_status_5 <= 1'h0; // @[MainPipe.scala 1403:39]
    end else begin
      s3_valid_dup_for_status_5 <= s2_fire_to_s3 | _GEN_730;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1400:24]
      s3_valid_dup_for_status_6 <= 1'h0; // @[MainPipe.scala 1403:39]
    end else begin
      s3_valid_dup_for_status_6 <= s2_fire_to_s3 | _GEN_731;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1400:24]
      s3_valid_dup_for_status_7 <= 1'h0; // @[MainPipe.scala 1403:39]
    end else begin
      s3_valid_dup_for_status_7 <= s2_fire_to_s3 | _GEN_732;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1400:24]
      s3_valid_dup_for_status_8 <= 1'h0; // @[MainPipe.scala 1403:39]
    end else begin
      s3_valid_dup_for_status_8 <= s2_fire_to_s3 | _GEN_733;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1400:24]
      s3_valid_dup_for_status_9 <= 1'h0; // @[MainPipe.scala 1403:39]
    end else begin
      s3_valid_dup_for_status_9 <= s2_fire_to_s3 | _GEN_734;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1400:24]
      s3_valid_dup_for_status_10 <= 1'h0; // @[MainPipe.scala 1403:39]
    end else begin
      s3_valid_dup_for_status_10 <= s2_fire_to_s3 | _GEN_735;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1400:24]
      s3_valid_dup_for_status_11 <= 1'h0; // @[MainPipe.scala 1403:39]
    end else begin
      s3_valid_dup_for_status_11 <= s2_fire_to_s3 | _GEN_736;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1400:24]
      s3_valid_dup_for_status_12 <= 1'h0; // @[MainPipe.scala 1403:39]
    end else begin
      s3_valid_dup_for_status_12 <= s2_fire_to_s3 | _GEN_737;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1400:24]
      s3_valid_dup_for_status_13 <= 1'h0; // @[MainPipe.scala 1403:39]
    end else begin
      s3_valid_dup_for_status_13 <= s2_fire_to_s3 | _GEN_738;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1400:24]
      s3_valid_dup_for_status_14 <= 1'h0; // @[MainPipe.scala 1403:39]
    end else begin
      s3_valid_dup_for_status_14 <= s2_fire_to_s3 | _GEN_739;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1400:24]
      s3_valid_dup_for_status_15 <= 1'h0; // @[MainPipe.scala 1403:39]
    end else begin
      s3_valid_dup_for_status_15 <= s2_fire_to_s3 | _GEN_740;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1400:24]
      s3_valid_dup_for_status_16 <= 1'h0; // @[MainPipe.scala 1403:39]
    end else begin
      s3_valid_dup_for_status_16 <= s2_fire_to_s3 | _GEN_741;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1400:24]
      s3_valid_dup_for_status_17 <= 1'h0; // @[MainPipe.scala 1403:39]
    end else begin
      s3_valid_dup_for_status_17 <= s2_fire_to_s3 | _GEN_742;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1400:24]
      s3_valid_dup_for_status_18 <= 1'h0; // @[MainPipe.scala 1403:39]
    end else begin
      s3_valid_dup_for_status_18 <= s2_fire_to_s3 | _GEN_743;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1400:24]
      s3_valid_dup_for_status_19 <= 1'h0; // @[MainPipe.scala 1403:39]
    end else begin
      s3_valid_dup_for_status_19 <= s2_fire_to_s3 | _GEN_744;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1400:24]
      s3_valid_dup_for_status_20 <= 1'h0; // @[MainPipe.scala 1403:39]
    end else begin
      s3_valid_dup_for_status_20 <= s2_fire_to_s3 | _GEN_745;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1400:24]
      s3_valid_dup_for_status_21 <= 1'h0; // @[MainPipe.scala 1403:39]
    end else begin
      s3_valid_dup_for_status_21 <= s2_fire_to_s3 | _GEN_746;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1400:24]
      s3_valid_dup_for_status_22 <= 1'h0; // @[MainPipe.scala 1403:39]
    end else begin
      s3_valid_dup_for_status_22 <= s2_fire_to_s3 | _GEN_747;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1400:24]
      s3_valid_dup_for_status_23 <= 1'h0; // @[MainPipe.scala 1403:39]
    end else begin
      s3_valid_dup_for_status_23 <= s2_fire_to_s3 | _GEN_748;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 580:46]
      lrsc_count_dup_1 <= 6'h0; // @[MainPipe.scala 581:35 582:18 587:18]
    end else if (s3_valid_dup_0 & (s3_lr | s3_sc)) begin // @[MainPipe.scala 590:36]
      if (s3_can_do_amo & s3_lr) begin // @[MainPipe.scala 594:30]
        lrsc_count_dup_1 <= 6'h3f;
      end else begin
        lrsc_count_dup_1 <= 6'h0;
      end
    end else if (io_invalid_resv_set) begin // @[MainPipe.scala 595:33]
      lrsc_count_dup_1 <= 6'h0; // @[MainPipe.scala 598:11]
    end else if (lrsc_count > 6'h0) begin // @[MainPipe.scala 532:31]
      lrsc_count_dup_1 <= _lrsc_count_dup_1_T_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 580:46]
      lrsc_count_dup_2 <= 6'h0; // @[MainPipe.scala 581:35 582:18 587:18]
    end else if (s3_valid_dup_0 & (s3_lr | s3_sc)) begin // @[MainPipe.scala 590:36]
      if (s3_can_do_amo & s3_lr) begin // @[MainPipe.scala 594:30]
        lrsc_count_dup_2 <= 6'h3f;
      end else begin
        lrsc_count_dup_2 <= 6'h0;
      end
    end else if (io_invalid_resv_set) begin // @[MainPipe.scala 595:33]
      lrsc_count_dup_2 <= 6'h0; // @[MainPipe.scala 598:11]
    end else if (lrsc_count > 6'h0) begin // @[MainPipe.scala 532:31]
      lrsc_count_dup_2 <= _lrsc_count_dup_2_T_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 580:46]
      lrsc_count <= 6'h0; // @[MainPipe.scala 581:35 582:18 587:18]
    end else if (s3_valid_dup_0 & (s3_lr | s3_sc)) begin // @[MainPipe.scala 590:36]
      if (s3_can_do_amo & s3_lr) begin // @[MainPipe.scala 593:16]
        lrsc_count <= 6'h3f;
      end else begin
        lrsc_count <= 6'h0;
      end
    end else if (io_invalid_resv_set) begin // @[MainPipe.scala 595:33]
      lrsc_count <= 6'h0; // @[MainPipe.scala 596:16]
    end else if (lrsc_count > 6'h0) begin // @[MainPipe.scala 567:27]
      lrsc_count <= _lrsc_count_T_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1414:17]
      s3_s_amoalu <= 1'h0; // @[MainPipe.scala 1415:17]
    end else if (s3_fire) begin
      s3_s_amoalu <= 1'h0;
    end else begin
      s3_s_amoalu <= _GEN_379;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 830:24]
      s3_valid_dup_for_meta_wvalid <= 1'h0; // @[MainPipe.scala 830:56]
    end else begin
      s3_valid_dup_for_meta_wvalid <= s2_fire_to_s3 | _GEN_405;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 800:39]
      s3_s_amoalu_dup_for_meta_wvalid <= 1'h0; // @[MainPipe.scala 800:74]
    end else if (s3_fire_dup_for_meta_wvalid) begin
      s3_s_amoalu_dup_for_meta_wvalid <= 1'h0;
    end else begin
      s3_s_amoalu_dup_for_meta_wvalid <= _GEN_402;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 755:102]
      lrsc_count_dup_for_meta_wvalid <= 6'h0; // @[MainPipe.scala 756:77 757:39 760:39]
    end else if (s3_valid_dup_for_meta_wvalid & (s3_lr_dup_for_meta_wvalid | s3_sc_dup_for_meta_wvalid)) begin // @[MainPipe.scala 762:36]
      if (s3_can_do_amo_dup_for_meta_wvalid & s3_lr_dup_for_meta_wvalid) begin // @[MainPipe.scala 763:37]
        lrsc_count_dup_for_meta_wvalid <= 6'h3f;
      end else begin
        lrsc_count_dup_for_meta_wvalid <= 6'h0;
      end
    end else if (io_invalid_resv_set) begin // @[MainPipe.scala 764:54]
      lrsc_count_dup_for_meta_wvalid <= 6'h0; // @[MainPipe.scala 765:37]
    end else if (lrsc_count_dup_for_meta_wvalid > 6'h0) begin // @[MainPipe.scala 753:48]
      lrsc_count_dup_for_meta_wvalid <= _lrsc_count_dup_for_meta_wvalid_T_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 927:24]
      s3_valid_dup_for_err_wvalid <= 1'h0; // @[MainPipe.scala 927:55]
    end else begin
      s3_valid_dup_for_err_wvalid <= s2_fire_to_s3 | _GEN_428;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 925:38]
      s3_s_amoalu_dup_for_err_wvalid <= 1'h0; // @[MainPipe.scala 925:72]
    end else if (s3_fire_dup_for_err_wvalid) begin
      s3_s_amoalu_dup_for_err_wvalid <= 1'h0;
    end else begin
      s3_s_amoalu_dup_for_err_wvalid <= _GEN_426;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 880:99]
      lrsc_count_dup_for_err_wvalid <= 6'h0; // @[MainPipe.scala 881:75 882:38 885:38]
    end else if (s3_valid_dup_for_err_wvalid & (s3_lr_dup_for_err_wvalid | s3_sc_dup_for_err_wvalid)) begin // @[MainPipe.scala 887:36]
      if (s3_can_do_amo_dup_for_err_wvalid & s3_lr_dup_for_err_wvalid) begin // @[MainPipe.scala 888:36]
        lrsc_count_dup_for_err_wvalid <= 6'h3f;
      end else begin
        lrsc_count_dup_for_err_wvalid <= 6'h0;
      end
    end else if (io_invalid_resv_set) begin // @[MainPipe.scala 889:53]
      lrsc_count_dup_for_err_wvalid <= 6'h0; // @[MainPipe.scala 890:36]
    end else if (lrsc_count_dup_for_err_wvalid > 6'h0) begin // @[MainPipe.scala 878:47]
      lrsc_count_dup_for_err_wvalid <= _lrsc_count_dup_for_err_wvalid_T_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1023:24]
      s3_valid_dup_for_tag_wvalid <= 1'h0; // @[MainPipe.scala 1023:55]
    end else begin
      s3_valid_dup_for_tag_wvalid <= s2_fire_to_s3 | _GEN_451;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1021:38]
      s3_s_amoalu_dup_for_tag_wvalid <= 1'h0; // @[MainPipe.scala 1021:72]
    end else if (s3_fire_dup_for_tag_wvalid) begin
      s3_s_amoalu_dup_for_tag_wvalid <= 1'h0;
    end else begin
      s3_s_amoalu_dup_for_tag_wvalid <= _GEN_449;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 976:99]
      lrsc_count_dup_for_tag_wvalid <= 6'h0; // @[MainPipe.scala 977:75 978:38 981:38]
    end else if (s3_valid_dup_for_tag_wvalid & (s3_lr_dup_for_tag_wvalid | s3_sc_dup_for_tag_wvalid)) begin // @[MainPipe.scala 983:36]
      if (s3_can_do_amo_dup_for_tag_wvalid & s3_lr_dup_for_tag_wvalid) begin // @[MainPipe.scala 984:36]
        lrsc_count_dup_for_tag_wvalid <= 6'h3f;
      end else begin
        lrsc_count_dup_for_tag_wvalid <= 6'h0;
      end
    end else if (io_invalid_resv_set) begin // @[MainPipe.scala 985:53]
      lrsc_count_dup_for_tag_wvalid <= 6'h0; // @[MainPipe.scala 986:36]
    end else if (lrsc_count_dup_for_tag_wvalid > 6'h0) begin // @[MainPipe.scala 974:47]
      lrsc_count_dup_for_tag_wvalid <= _lrsc_count_dup_for_tag_wvalid_T_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1151:24]
      s3_valid_dup_for_data_wvalid <= 1'h0; // @[MainPipe.scala 1151:56]
    end else begin
      s3_valid_dup_for_data_wvalid <= s2_fire_to_s3 | _GEN_478;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1118:39]
      s3_s_amoalu_dup_for_data_wvalid <= 1'h0; // @[MainPipe.scala 1118:74]
    end else if (s3_fire_dup_for_data_wvalid) begin
      s3_s_amoalu_dup_for_data_wvalid <= 1'h0;
    end else begin
      s3_s_amoalu_dup_for_data_wvalid <= _GEN_472;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1072:102]
      lrsc_count_dup_for_data_wvalid <= 6'h0; // @[MainPipe.scala 1073:77 1074:39 1077:39]
    end else if (s3_valid_dup_for_data_wvalid & (s3_lr_dup_for_data_wvalid | s3_sc_dup_for_data_wvalid)) begin // @[MainPipe.scala 1079:36]
      if (s3_can_do_amo_dup_for_data_wvalid & s3_lr_dup_for_data_wvalid) begin // @[MainPipe.scala 1080:37]
        lrsc_count_dup_for_data_wvalid <= 6'h3f;
      end else begin
        lrsc_count_dup_for_data_wvalid <= 6'h0;
      end
    end else if (io_invalid_resv_set) begin // @[MainPipe.scala 1081:54]
      lrsc_count_dup_for_data_wvalid <= 6'h0; // @[MainPipe.scala 1082:37]
    end else if (lrsc_count_dup_for_data_wvalid > 6'h0) begin // @[MainPipe.scala 1070:48]
      lrsc_count_dup_for_data_wvalid <= _lrsc_count_dup_for_data_wvalid_T_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1252:26]
      s3_valid_dup_for_data_wbank_0 <= 1'h0; // @[MainPipe.scala 1252:60]
    end else begin
      s3_valid_dup_for_data_wbank_0 <= s2_fire_to_s3 | _GEN_501;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1252:26]
      s3_valid_dup_for_data_wbank_1 <= 1'h0; // @[MainPipe.scala 1252:60]
    end else begin
      s3_valid_dup_for_data_wbank_1 <= s2_fire_to_s3 | _GEN_526;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1252:26]
      s3_valid_dup_for_data_wbank_2 <= 1'h0; // @[MainPipe.scala 1252:60]
    end else begin
      s3_valid_dup_for_data_wbank_2 <= s2_fire_to_s3 | _GEN_551;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1252:26]
      s3_valid_dup_for_data_wbank_3 <= 1'h0; // @[MainPipe.scala 1252:60]
    end else begin
      s3_valid_dup_for_data_wbank_3 <= s2_fire_to_s3 | _GEN_576;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1252:26]
      s3_valid_dup_for_data_wbank_4 <= 1'h0; // @[MainPipe.scala 1252:60]
    end else begin
      s3_valid_dup_for_data_wbank_4 <= s2_fire_to_s3 | _GEN_601;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1252:26]
      s3_valid_dup_for_data_wbank_5 <= 1'h0; // @[MainPipe.scala 1252:60]
    end else begin
      s3_valid_dup_for_data_wbank_5 <= s2_fire_to_s3 | _GEN_626;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1252:26]
      s3_valid_dup_for_data_wbank_6 <= 1'h0; // @[MainPipe.scala 1252:60]
    end else begin
      s3_valid_dup_for_data_wbank_6 <= s2_fire_to_s3 | _GEN_651;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1252:26]
      s3_valid_dup_for_data_wbank_7 <= 1'h0; // @[MainPipe.scala 1252:60]
    end else begin
      s3_valid_dup_for_data_wbank_7 <= s2_fire_to_s3 | _GEN_676;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1250:40]
      s3_s_amoalu_dup_for_data_wbank <= 1'h0; // @[MainPipe.scala 1250:74]
    end else if (s3_fire_dup_for_data_wbank) begin
      s3_s_amoalu_dup_for_data_wbank <= 1'h0;
    end else begin
      s3_s_amoalu_dup_for_data_wbank <= _GEN_499;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1203:104]
      lrsc_count_dup_for_data_wbank <= 6'h0; // @[MainPipe.scala 1204:77 1205:40 1208:40]
    end else if (s3_valid_dup_for_data_wbank_0 & (s3_lr_dup_for_data_wbank | s3_sc_dup_for_data_wbank)) begin // @[MainPipe.scala 1210:38]
      if (s3_can_do_amo_dup_for_data_wbank & s3_lr_dup_for_data_wbank) begin // @[MainPipe.scala 1211:38]
        lrsc_count_dup_for_data_wbank <= 6'h3f;
      end else begin
        lrsc_count_dup_for_data_wbank <= 6'h0;
      end
    end else if (io_invalid_resv_set) begin // @[MainPipe.scala 1212:55]
      lrsc_count_dup_for_data_wbank <= 6'h0; // @[MainPipe.scala 1213:38]
    end else if (lrsc_count_dup_for_data_wbank > 6'h0) begin // @[MainPipe.scala 1201:49]
      lrsc_count_dup_for_data_wbank <= _lrsc_count_dup_for_data_wbank_T_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1250:40]
      s3_s_amoalu_dup_for_data_wbank_1 <= 1'h0; // @[MainPipe.scala 1250:74]
    end else if (s3_fire_dup_for_data_wbank_1) begin
      s3_s_amoalu_dup_for_data_wbank_1 <= 1'h0;
    end else begin
      s3_s_amoalu_dup_for_data_wbank_1 <= _GEN_524;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1203:104]
      lrsc_count_dup_for_data_wbank_1 <= 6'h0; // @[MainPipe.scala 1204:77 1205:40 1208:40]
    end else if (s3_valid_dup_for_data_wbank_1 & (s3_lr_dup_for_data_wbank_1 | s3_sc_dup_for_data_wbank_1)) begin // @[MainPipe.scala 1210:38]
      if (s3_can_do_amo_dup_for_data_wbank_1 & s3_lr_dup_for_data_wbank_1) begin // @[MainPipe.scala 1211:38]
        lrsc_count_dup_for_data_wbank_1 <= 6'h3f;
      end else begin
        lrsc_count_dup_for_data_wbank_1 <= 6'h0;
      end
    end else if (io_invalid_resv_set) begin // @[MainPipe.scala 1212:55]
      lrsc_count_dup_for_data_wbank_1 <= 6'h0; // @[MainPipe.scala 1213:38]
    end else if (lrsc_count_dup_for_data_wbank_1 > 6'h0) begin // @[MainPipe.scala 1201:49]
      lrsc_count_dup_for_data_wbank_1 <= _lrsc_count_dup_for_data_wbank_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1250:40]
      s3_s_amoalu_dup_for_data_wbank_2 <= 1'h0; // @[MainPipe.scala 1250:74]
    end else if (s3_fire_dup_for_data_wbank_2) begin
      s3_s_amoalu_dup_for_data_wbank_2 <= 1'h0;
    end else begin
      s3_s_amoalu_dup_for_data_wbank_2 <= _GEN_549;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1203:104]
      lrsc_count_dup_for_data_wbank_2 <= 6'h0; // @[MainPipe.scala 1204:77 1205:40 1208:40]
    end else if (s3_valid_dup_for_data_wbank_2 & (s3_lr_dup_for_data_wbank_2 | s3_sc_dup_for_data_wbank_2)) begin // @[MainPipe.scala 1210:38]
      if (s3_can_do_amo_dup_for_data_wbank_2 & s3_lr_dup_for_data_wbank_2) begin // @[MainPipe.scala 1211:38]
        lrsc_count_dup_for_data_wbank_2 <= 6'h3f;
      end else begin
        lrsc_count_dup_for_data_wbank_2 <= 6'h0;
      end
    end else if (io_invalid_resv_set) begin // @[MainPipe.scala 1212:55]
      lrsc_count_dup_for_data_wbank_2 <= 6'h0; // @[MainPipe.scala 1213:38]
    end else if (lrsc_count_dup_for_data_wbank_2 > 6'h0) begin // @[MainPipe.scala 1201:49]
      lrsc_count_dup_for_data_wbank_2 <= _lrsc_count_dup_for_data_wbank_T_5;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1250:40]
      s3_s_amoalu_dup_for_data_wbank_3 <= 1'h0; // @[MainPipe.scala 1250:74]
    end else if (s3_fire_dup_for_data_wbank_3) begin
      s3_s_amoalu_dup_for_data_wbank_3 <= 1'h0;
    end else begin
      s3_s_amoalu_dup_for_data_wbank_3 <= _GEN_574;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1203:104]
      lrsc_count_dup_for_data_wbank_3 <= 6'h0; // @[MainPipe.scala 1204:77 1205:40 1208:40]
    end else if (s3_valid_dup_for_data_wbank_3 & (s3_lr_dup_for_data_wbank_3 | s3_sc_dup_for_data_wbank_3)) begin // @[MainPipe.scala 1210:38]
      if (s3_can_do_amo_dup_for_data_wbank_3 & s3_lr_dup_for_data_wbank_3) begin // @[MainPipe.scala 1211:38]
        lrsc_count_dup_for_data_wbank_3 <= 6'h3f;
      end else begin
        lrsc_count_dup_for_data_wbank_3 <= 6'h0;
      end
    end else if (io_invalid_resv_set) begin // @[MainPipe.scala 1212:55]
      lrsc_count_dup_for_data_wbank_3 <= 6'h0; // @[MainPipe.scala 1213:38]
    end else if (lrsc_count_dup_for_data_wbank_3 > 6'h0) begin // @[MainPipe.scala 1201:49]
      lrsc_count_dup_for_data_wbank_3 <= _lrsc_count_dup_for_data_wbank_T_7;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1250:40]
      s3_s_amoalu_dup_for_data_wbank_4 <= 1'h0; // @[MainPipe.scala 1250:74]
    end else if (s3_fire_dup_for_data_wbank_4) begin
      s3_s_amoalu_dup_for_data_wbank_4 <= 1'h0;
    end else begin
      s3_s_amoalu_dup_for_data_wbank_4 <= _GEN_599;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1203:104]
      lrsc_count_dup_for_data_wbank_4 <= 6'h0; // @[MainPipe.scala 1204:77 1205:40 1208:40]
    end else if (s3_valid_dup_for_data_wbank_4 & (s3_lr_dup_for_data_wbank_4 | s3_sc_dup_for_data_wbank_4)) begin // @[MainPipe.scala 1210:38]
      if (s3_can_do_amo_dup_for_data_wbank_4 & s3_lr_dup_for_data_wbank_4) begin // @[MainPipe.scala 1211:38]
        lrsc_count_dup_for_data_wbank_4 <= 6'h3f;
      end else begin
        lrsc_count_dup_for_data_wbank_4 <= 6'h0;
      end
    end else if (io_invalid_resv_set) begin // @[MainPipe.scala 1212:55]
      lrsc_count_dup_for_data_wbank_4 <= 6'h0; // @[MainPipe.scala 1213:38]
    end else if (lrsc_count_dup_for_data_wbank_4 > 6'h0) begin // @[MainPipe.scala 1201:49]
      lrsc_count_dup_for_data_wbank_4 <= _lrsc_count_dup_for_data_wbank_T_9;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1250:40]
      s3_s_amoalu_dup_for_data_wbank_5 <= 1'h0; // @[MainPipe.scala 1250:74]
    end else if (s3_fire_dup_for_data_wbank_5) begin
      s3_s_amoalu_dup_for_data_wbank_5 <= 1'h0;
    end else begin
      s3_s_amoalu_dup_for_data_wbank_5 <= _GEN_624;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1203:104]
      lrsc_count_dup_for_data_wbank_5 <= 6'h0; // @[MainPipe.scala 1204:77 1205:40 1208:40]
    end else if (s3_valid_dup_for_data_wbank_5 & (s3_lr_dup_for_data_wbank_5 | s3_sc_dup_for_data_wbank_5)) begin // @[MainPipe.scala 1210:38]
      if (s3_can_do_amo_dup_for_data_wbank_5 & s3_lr_dup_for_data_wbank_5) begin // @[MainPipe.scala 1211:38]
        lrsc_count_dup_for_data_wbank_5 <= 6'h3f;
      end else begin
        lrsc_count_dup_for_data_wbank_5 <= 6'h0;
      end
    end else if (io_invalid_resv_set) begin // @[MainPipe.scala 1212:55]
      lrsc_count_dup_for_data_wbank_5 <= 6'h0; // @[MainPipe.scala 1213:38]
    end else if (lrsc_count_dup_for_data_wbank_5 > 6'h0) begin // @[MainPipe.scala 1201:49]
      lrsc_count_dup_for_data_wbank_5 <= _lrsc_count_dup_for_data_wbank_T_11;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1250:40]
      s3_s_amoalu_dup_for_data_wbank_6 <= 1'h0; // @[MainPipe.scala 1250:74]
    end else if (s3_fire_dup_for_data_wbank_6) begin
      s3_s_amoalu_dup_for_data_wbank_6 <= 1'h0;
    end else begin
      s3_s_amoalu_dup_for_data_wbank_6 <= _GEN_649;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1203:104]
      lrsc_count_dup_for_data_wbank_6 <= 6'h0; // @[MainPipe.scala 1204:77 1205:40 1208:40]
    end else if (s3_valid_dup_for_data_wbank_6 & (s3_lr_dup_for_data_wbank_6 | s3_sc_dup_for_data_wbank_6)) begin // @[MainPipe.scala 1210:38]
      if (s3_can_do_amo_dup_for_data_wbank_6 & s3_lr_dup_for_data_wbank_6) begin // @[MainPipe.scala 1211:38]
        lrsc_count_dup_for_data_wbank_6 <= 6'h3f;
      end else begin
        lrsc_count_dup_for_data_wbank_6 <= 6'h0;
      end
    end else if (io_invalid_resv_set) begin // @[MainPipe.scala 1212:55]
      lrsc_count_dup_for_data_wbank_6 <= 6'h0; // @[MainPipe.scala 1213:38]
    end else if (lrsc_count_dup_for_data_wbank_6 > 6'h0) begin // @[MainPipe.scala 1201:49]
      lrsc_count_dup_for_data_wbank_6 <= _lrsc_count_dup_for_data_wbank_T_13;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1250:40]
      s3_s_amoalu_dup_for_data_wbank_7 <= 1'h0; // @[MainPipe.scala 1250:74]
    end else if (s3_fire_dup_for_data_wbank_7) begin
      s3_s_amoalu_dup_for_data_wbank_7 <= 1'h0;
    end else begin
      s3_s_amoalu_dup_for_data_wbank_7 <= _GEN_674;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1203:104]
      lrsc_count_dup_for_data_wbank_7 <= 6'h0; // @[MainPipe.scala 1204:77 1205:40 1208:40]
    end else if (s3_valid_dup_for_data_wbank_7 & (s3_lr_dup_for_data_wbank_7 | s3_sc_dup_for_data_wbank_7)) begin // @[MainPipe.scala 1210:38]
      if (s3_can_do_amo_dup_for_data_wbank_7 & s3_lr_dup_for_data_wbank_7) begin // @[MainPipe.scala 1211:38]
        lrsc_count_dup_for_data_wbank_7 <= 6'h3f;
      end else begin
        lrsc_count_dup_for_data_wbank_7 <= 6'h0;
      end
    end else if (io_invalid_resv_set) begin // @[MainPipe.scala 1212:55]
      lrsc_count_dup_for_data_wbank_7 <= 6'h0; // @[MainPipe.scala 1213:38]
    end else if (lrsc_count_dup_for_data_wbank_7 > 6'h0) begin // @[MainPipe.scala 1201:49]
      lrsc_count_dup_for_data_wbank_7 <= _lrsc_count_dup_for_data_wbank_T_15;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1394:24]
      s3_valid_dup_for_wb_valid <= 1'h0; // @[MainPipe.scala 1394:52]
    end else begin
      s3_valid_dup_for_wb_valid <= s2_fire_to_s3 | _GEN_708;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1353:35]
      s3_s_amoalu_dup_for_wb_valid <= 1'h0; // @[MainPipe.scala 1353:66]
    end else if (s3_fire_dup_for_wb_valid) begin
      s3_s_amoalu_dup_for_wb_valid <= 1'h0;
    end else begin
      s3_s_amoalu_dup_for_wb_valid <= _GEN_699;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[MainPipe.scala 1307:90]
      lrsc_count_dup_for_wb_valid <= 6'h0; // @[MainPipe.scala 1308:69 1309:35 1312:35]
    end else if (s3_valid_dup_for_wb_valid & (s3_lr_dup_for_wb_valid | s3_sc_dup_for_wb_valid)) begin // @[MainPipe.scala 1314:36]
      if (s3_can_do_amo_dup_for_wb_valid & s3_lr_dup_for_wb_valid) begin // @[MainPipe.scala 1315:33]
        lrsc_count_dup_for_wb_valid <= 6'h3f;
      end else begin
        lrsc_count_dup_for_wb_valid <= 6'h0;
      end
    end else if (io_invalid_resv_set) begin // @[MainPipe.scala 1316:50]
      lrsc_count_dup_for_wb_valid <= 6'h0; // @[MainPipe.scala 1317:33]
    end else if (lrsc_count_dup_for_wb_valid > 6'h0) begin // @[MainPipe.scala 1305:44]
      lrsc_count_dup_for_wb_valid <= _lrsc_count_dup_for_wb_valid_T_1;
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
  s1_valid_dup_1 = _RAND_0[0:0];
  _RAND_1 = {2{`RANDOM}};
  s1_req_vaddr = _RAND_1[38:0];
  _RAND_2 = {1{`RANDOM}};
  s2_valid_dup_0 = _RAND_2[0:0];
  _RAND_3 = {2{`RANDOM}};
  s2_req_vaddr = _RAND_3[38:0];
  _RAND_4 = {1{`RANDOM}};
  s3_valid_dup_6 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  s3_idx_dup_0 = _RAND_5[5:0];
  _RAND_6 = {1{`RANDOM}};
  s1_valid_dup_2 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  s2_valid_dup_1 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  s3_valid_dup_7 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  s3_idx_dup_1 = _RAND_9[5:0];
  _RAND_10 = {1{`RANDOM}};
  s1_valid_dup_0 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  s2_valid_dup_3 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  s2_req_replace_dup_1 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  s2_req_probe = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  s2_req_miss = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  s2_req_source = _RAND_15[3:0];
  _RAND_16 = {1{`RANDOM}};
  s2_tag_match = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  s2_req_cmd = _RAND_17[4:0];
  _RAND_18 = {1{`RANDOM}};
  s2_hit_coh_state = _RAND_18[1:0];
  _RAND_19 = {1{`RANDOM}};
  s3_valid_dup_5 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  s3_req_probe_dup_7 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  s3_req_probe_dup_0 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  s3_tag_match_dup = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  s3_coh_dup_0_state = _RAND_23[1:0];
  _RAND_24 = {1{`RANDOM}};
  s3_req_probe_param = _RAND_24[1:0];
  _RAND_25 = {1{`RANDOM}};
  s3_coh_state = _RAND_25[1:0];
  _RAND_26 = {1{`RANDOM}};
  s3_req_source_dup_1 = _RAND_26[3:0];
  _RAND_27 = {1{`RANDOM}};
  s3_req_probe_dup_8 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  s3_req_source = _RAND_28[3:0];
  _RAND_29 = {1{`RANDOM}};
  s3_req_miss_dup_2 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  s3_store_hit_dup_0 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  s3_req_miss_dup_0 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  s3_req_probe_dup_5 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  s3_amo_hit = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  s3_req_cmd_dup_5 = _RAND_34[4:0];
  _RAND_35 = {1{`RANDOM}};
  s3_req_probe_dup_4 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  s3_req_cmd_dup_4 = _RAND_36[4:0];
  _RAND_37 = {1{`RANDOM}};
  lrsc_count_dup_0 = _RAND_37[5:0];
  _RAND_38 = {2{`RANDOM}};
  lrsc_addr = _RAND_38[35:0];
  _RAND_39 = {2{`RANDOM}};
  s3_req_addr = _RAND_39[35:0];
  _RAND_40 = {1{`RANDOM}};
  s3_amo_hit_dup = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  s3_s_amoalu_dup_0 = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  s3_req_cmd_dup_0 = _RAND_42[4:0];
  _RAND_43 = {1{`RANDOM}};
  s3_req_cmd_dup_1 = _RAND_43[4:0];
  _RAND_44 = {1{`RANDOM}};
  s3_req_miss_dup_4 = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  s3_s_amoalu_dup_1 = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  s3_req_replace_dup_2 = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  s3_req_replace_dup_1 = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  s3_coh_dup_4_state = _RAND_48[1:0];
  _RAND_49 = {1{`RANDOM}};
  s2_can_go_to_mq = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  s1_need_data = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  s1_valid = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  s1_req_miss = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  s1_req_miss_id = _RAND_53[1:0];
  _RAND_54 = {1{`RANDOM}};
  s1_req_miss_param = _RAND_54[1:0];
  _RAND_55 = {1{`RANDOM}};
  s1_req_miss_dirty = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  s1_req_miss_way_en = _RAND_56[7:0];
  _RAND_57 = {1{`RANDOM}};
  s1_req_probe = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  s1_req_probe_param = _RAND_58[1:0];
  _RAND_59 = {1{`RANDOM}};
  s1_req_probe_need_data = _RAND_59[0:0];
  _RAND_60 = {1{`RANDOM}};
  s1_req_source = _RAND_60[3:0];
  _RAND_61 = {1{`RANDOM}};
  s1_req_cmd = _RAND_61[4:0];
  _RAND_62 = {2{`RANDOM}};
  s1_req_addr = _RAND_62[35:0];
  _RAND_63 = {16{`RANDOM}};
  s1_req_store_data = _RAND_63[511:0];
  _RAND_64 = {2{`RANDOM}};
  s1_req_store_mask = _RAND_64[63:0];
  _RAND_65 = {1{`RANDOM}};
  s1_req_word_idx = _RAND_65[2:0];
  _RAND_66 = {2{`RANDOM}};
  s1_req_amo_data = _RAND_66[63:0];
  _RAND_67 = {1{`RANDOM}};
  s1_req_amo_mask = _RAND_67[7:0];
  _RAND_68 = {1{`RANDOM}};
  s1_req_error = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  s1_req_replace = _RAND_69[0:0];
  _RAND_70 = {1{`RANDOM}};
  s1_req_replace_way_en = _RAND_70[7:0];
  _RAND_71 = {1{`RANDOM}};
  s1_req_id = _RAND_71[3:0];
  _RAND_72 = {1{`RANDOM}};
  s1_banked_store_wmask = _RAND_72[7:0];
  _RAND_73 = {1{`RANDOM}};
  s1_need_tag = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  s1_valid_dup_3 = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  s1_valid_dup_4 = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  s1_valid_dup_5 = _RAND_76[0:0];
  _RAND_77 = {2{`RANDOM}};
  s1_req_vaddr_dup_for_data_read = _RAND_77[38:0];
  _RAND_78 = {1{`RANDOM}};
  s1_idx_dup_for_replace_way = _RAND_78[5:0];
  _RAND_79 = {1{`RANDOM}};
  s1_valid_dup_for_status_0 = _RAND_79[0:0];
  _RAND_80 = {1{`RANDOM}};
  s1_valid_dup_for_status_1 = _RAND_80[0:0];
  _RAND_81 = {1{`RANDOM}};
  s1_valid_dup_for_status_2 = _RAND_81[0:0];
  _RAND_82 = {1{`RANDOM}};
  s1_valid_dup_for_status_3 = _RAND_82[0:0];
  _RAND_83 = {1{`RANDOM}};
  s1_valid_dup_for_status_4 = _RAND_83[0:0];
  _RAND_84 = {1{`RANDOM}};
  s1_valid_dup_for_status_5 = _RAND_84[0:0];
  _RAND_85 = {1{`RANDOM}};
  s1_valid_dup_for_status_6 = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  s1_valid_dup_for_status_7 = _RAND_86[0:0];
  _RAND_87 = {1{`RANDOM}};
  s1_valid_dup_for_status_8 = _RAND_87[0:0];
  _RAND_88 = {1{`RANDOM}};
  s1_valid_dup_for_status_9 = _RAND_88[0:0];
  _RAND_89 = {1{`RANDOM}};
  s1_valid_dup_for_status_10 = _RAND_89[0:0];
  _RAND_90 = {1{`RANDOM}};
  s1_valid_dup_for_status_11 = _RAND_90[0:0];
  _RAND_91 = {1{`RANDOM}};
  s1_valid_dup_for_status_12 = _RAND_91[0:0];
  _RAND_92 = {1{`RANDOM}};
  s1_valid_dup_for_status_13 = _RAND_92[0:0];
  _RAND_93 = {1{`RANDOM}};
  s1_valid_dup_for_status_14 = _RAND_93[0:0];
  _RAND_94 = {1{`RANDOM}};
  s1_valid_dup_for_status_15 = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  s1_valid_dup_for_status_16 = _RAND_95[0:0];
  _RAND_96 = {1{`RANDOM}};
  s1_valid_dup_for_status_17 = _RAND_96[0:0];
  _RAND_97 = {1{`RANDOM}};
  s1_valid_dup_for_status_18 = _RAND_97[0:0];
  _RAND_98 = {1{`RANDOM}};
  s1_valid_dup_for_status_19 = _RAND_98[0:0];
  _RAND_99 = {1{`RANDOM}};
  s1_valid_dup_for_status_20 = _RAND_99[0:0];
  _RAND_100 = {1{`RANDOM}};
  s1_valid_dup_for_status_21 = _RAND_100[0:0];
  _RAND_101 = {1{`RANDOM}};
  s1_valid_dup_for_status_22 = _RAND_101[0:0];
  _RAND_102 = {1{`RANDOM}};
  s1_valid_dup_for_status_23 = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  REG_2 = _RAND_103[0:0];
  _RAND_104 = {1{`RANDOM}};
  REG_3_0 = _RAND_104[1:0];
  _RAND_105 = {1{`RANDOM}};
  REG_3_1 = _RAND_105[1:0];
  _RAND_106 = {1{`RANDOM}};
  REG_3_2 = _RAND_106[1:0];
  _RAND_107 = {1{`RANDOM}};
  REG_3_3 = _RAND_107[1:0];
  _RAND_108 = {1{`RANDOM}};
  REG_3_4 = _RAND_108[1:0];
  _RAND_109 = {1{`RANDOM}};
  REG_3_5 = _RAND_109[1:0];
  _RAND_110 = {1{`RANDOM}};
  REG_3_6 = _RAND_110[1:0];
  _RAND_111 = {1{`RANDOM}};
  REG_3_7 = _RAND_111[1:0];
  _RAND_112 = {1{`RANDOM}};
  REG_4 = _RAND_112[0:0];
  _RAND_113 = {1{`RANDOM}};
  REG_5_0 = _RAND_113[23:0];
  _RAND_114 = {1{`RANDOM}};
  REG_5_1 = _RAND_114[23:0];
  _RAND_115 = {1{`RANDOM}};
  REG_5_2 = _RAND_115[23:0];
  _RAND_116 = {1{`RANDOM}};
  REG_5_3 = _RAND_116[23:0];
  _RAND_117 = {1{`RANDOM}};
  REG_5_4 = _RAND_117[23:0];
  _RAND_118 = {1{`RANDOM}};
  REG_5_5 = _RAND_118[23:0];
  _RAND_119 = {1{`RANDOM}};
  REG_5_6 = _RAND_119[23:0];
  _RAND_120 = {1{`RANDOM}};
  REG_5_7 = _RAND_120[23:0];
  _RAND_121 = {1{`RANDOM}};
  REG_8 = _RAND_121[0:0];
  _RAND_122 = {1{`RANDOM}};
  REG_9_0 = _RAND_122[29:0];
  _RAND_123 = {1{`RANDOM}};
  REG_9_1 = _RAND_123[29:0];
  _RAND_124 = {1{`RANDOM}};
  REG_9_2 = _RAND_124[29:0];
  _RAND_125 = {1{`RANDOM}};
  REG_9_3 = _RAND_125[29:0];
  _RAND_126 = {1{`RANDOM}};
  REG_9_4 = _RAND_126[29:0];
  _RAND_127 = {1{`RANDOM}};
  REG_9_5 = _RAND_127[29:0];
  _RAND_128 = {1{`RANDOM}};
  REG_9_6 = _RAND_128[29:0];
  _RAND_129 = {1{`RANDOM}};
  REG_9_7 = _RAND_129[29:0];
  _RAND_130 = {1{`RANDOM}};
  s1_repl_way_en_REG = _RAND_130[0:0];
  _RAND_131 = {1{`RANDOM}};
  s1_repl_way_en_REG_1 = _RAND_131[7:0];
  _RAND_132 = {1{`RANDOM}};
  s2_valid = _RAND_132[0:0];
  _RAND_133 = {1{`RANDOM}};
  s2_req_miss_id = _RAND_133[1:0];
  _RAND_134 = {1{`RANDOM}};
  s2_req_miss_param = _RAND_134[1:0];
  _RAND_135 = {1{`RANDOM}};
  s2_req_miss_dirty = _RAND_135[0:0];
  _RAND_136 = {1{`RANDOM}};
  s2_req_probe_param = _RAND_136[1:0];
  _RAND_137 = {1{`RANDOM}};
  s2_req_probe_need_data = _RAND_137[0:0];
  _RAND_138 = {2{`RANDOM}};
  s2_req_addr = _RAND_138[35:0];
  _RAND_139 = {16{`RANDOM}};
  s2_req_store_data = _RAND_139[511:0];
  _RAND_140 = {2{`RANDOM}};
  s2_req_store_mask = _RAND_140[63:0];
  _RAND_141 = {1{`RANDOM}};
  s2_req_word_idx = _RAND_141[2:0];
  _RAND_142 = {2{`RANDOM}};
  s2_req_amo_data = _RAND_142[63:0];
  _RAND_143 = {1{`RANDOM}};
  s2_req_amo_mask = _RAND_143[7:0];
  _RAND_144 = {1{`RANDOM}};
  s2_req_error = _RAND_144[0:0];
  _RAND_145 = {1{`RANDOM}};
  s2_req_replace = _RAND_145[0:0];
  _RAND_146 = {1{`RANDOM}};
  s2_req_id = _RAND_146[3:0];
  _RAND_147 = {1{`RANDOM}};
  s2_tag_match_way = _RAND_147[7:0];
  _RAND_148 = {1{`RANDOM}};
  s2_repl_tag = _RAND_148[23:0];
  _RAND_149 = {1{`RANDOM}};
  s2_repl_coh_state = _RAND_149[1:0];
  _RAND_150 = {1{`RANDOM}};
  s2_repl_way_en = _RAND_150[7:0];
  _RAND_151 = {1{`RANDOM}};
  s2_need_replacement = _RAND_151[0:0];
  _RAND_152 = {1{`RANDOM}};
  s2_need_data = _RAND_152[0:0];
  _RAND_153 = {1{`RANDOM}};
  s2_need_tag = _RAND_153[0:0];
  _RAND_154 = {1{`RANDOM}};
  s2_encTag = _RAND_154[29:0];
  _RAND_155 = {1{`RANDOM}};
  s2_valid_dup_2 = _RAND_155[0:0];
  _RAND_156 = {1{`RANDOM}};
  s2_valid_dup_4 = _RAND_156[0:0];
  _RAND_157 = {1{`RANDOM}};
  s2_valid_dup_5 = _RAND_157[0:0];
  _RAND_158 = {1{`RANDOM}};
  s2_valid_dup_6 = _RAND_158[0:0];
  _RAND_159 = {1{`RANDOM}};
  s2_valid_dup_7 = _RAND_159[0:0];
  _RAND_160 = {1{`RANDOM}};
  s2_valid_dup_for_status_0 = _RAND_160[0:0];
  _RAND_161 = {1{`RANDOM}};
  s2_valid_dup_for_status_1 = _RAND_161[0:0];
  _RAND_162 = {1{`RANDOM}};
  s2_valid_dup_for_status_2 = _RAND_162[0:0];
  _RAND_163 = {1{`RANDOM}};
  s2_valid_dup_for_status_3 = _RAND_163[0:0];
  _RAND_164 = {1{`RANDOM}};
  s2_valid_dup_for_status_4 = _RAND_164[0:0];
  _RAND_165 = {1{`RANDOM}};
  s2_valid_dup_for_status_5 = _RAND_165[0:0];
  _RAND_166 = {1{`RANDOM}};
  s2_valid_dup_for_status_6 = _RAND_166[0:0];
  _RAND_167 = {1{`RANDOM}};
  s2_valid_dup_for_status_7 = _RAND_167[0:0];
  _RAND_168 = {1{`RANDOM}};
  s2_valid_dup_for_status_8 = _RAND_168[0:0];
  _RAND_169 = {1{`RANDOM}};
  s2_valid_dup_for_status_9 = _RAND_169[0:0];
  _RAND_170 = {1{`RANDOM}};
  s2_valid_dup_for_status_10 = _RAND_170[0:0];
  _RAND_171 = {1{`RANDOM}};
  s2_valid_dup_for_status_11 = _RAND_171[0:0];
  _RAND_172 = {1{`RANDOM}};
  s2_valid_dup_for_status_12 = _RAND_172[0:0];
  _RAND_173 = {1{`RANDOM}};
  s2_valid_dup_for_status_13 = _RAND_173[0:0];
  _RAND_174 = {1{`RANDOM}};
  s2_valid_dup_for_status_14 = _RAND_174[0:0];
  _RAND_175 = {1{`RANDOM}};
  s2_valid_dup_for_status_15 = _RAND_175[0:0];
  _RAND_176 = {1{`RANDOM}};
  s2_valid_dup_for_status_16 = _RAND_176[0:0];
  _RAND_177 = {1{`RANDOM}};
  s2_valid_dup_for_status_17 = _RAND_177[0:0];
  _RAND_178 = {1{`RANDOM}};
  s2_valid_dup_for_status_18 = _RAND_178[0:0];
  _RAND_179 = {1{`RANDOM}};
  s2_valid_dup_for_status_19 = _RAND_179[0:0];
  _RAND_180 = {1{`RANDOM}};
  s2_valid_dup_for_status_20 = _RAND_180[0:0];
  _RAND_181 = {1{`RANDOM}};
  s2_valid_dup_for_status_21 = _RAND_181[0:0];
  _RAND_182 = {1{`RANDOM}};
  s2_valid_dup_for_status_22 = _RAND_182[0:0];
  _RAND_183 = {1{`RANDOM}};
  s2_valid_dup_for_status_23 = _RAND_183[0:0];
  _RAND_184 = {2{`RANDOM}};
  s2_req_vaddr_dup_for_miss_req = _RAND_184[38:0];
  _RAND_185 = {1{`RANDOM}};
  s2_idx_dup_for_status = _RAND_185[5:0];
  _RAND_186 = {1{`RANDOM}};
  s2_idx_dup_for_replace_access = _RAND_186[5:0];
  _RAND_187 = {1{`RANDOM}};
  s2_req_replace_dup_2 = _RAND_187[0:0];
  _RAND_188 = {1{`RANDOM}};
  s2_can_go_to_mq_dup_0 = _RAND_188[0:0];
  _RAND_189 = {1{`RANDOM}};
  s2_can_go_to_mq_dup_1 = _RAND_189[0:0];
  _RAND_190 = {1{`RANDOM}};
  s2_can_go_to_mq_dup_2 = _RAND_190[0:0];
  _RAND_191 = {1{`RANDOM}};
  s2_way_en = _RAND_191[7:0];
  _RAND_192 = {1{`RANDOM}};
  s2_tag = _RAND_192[23:0];
  _RAND_193 = {1{`RANDOM}};
  s2_coh_state = _RAND_193[1:0];
  _RAND_194 = {1{`RANDOM}};
  s2_banked_store_wmask = _RAND_194[7:0];
  _RAND_195 = {1{`RANDOM}};
  s2_flag_error = _RAND_195[0:0];
  _RAND_196 = {1{`RANDOM}};
  REG_12 = _RAND_196[0:0];
  _RAND_197 = {2{`RANDOM}};
  REG_13_0_raw_data = _RAND_197[63:0];
  _RAND_198 = {2{`RANDOM}};
  REG_13_1_raw_data = _RAND_198[63:0];
  _RAND_199 = {2{`RANDOM}};
  REG_13_2_raw_data = _RAND_199[63:0];
  _RAND_200 = {2{`RANDOM}};
  REG_13_3_raw_data = _RAND_200[63:0];
  _RAND_201 = {2{`RANDOM}};
  REG_13_4_raw_data = _RAND_201[63:0];
  _RAND_202 = {2{`RANDOM}};
  REG_13_5_raw_data = _RAND_202[63:0];
  _RAND_203 = {2{`RANDOM}};
  REG_13_6_raw_data = _RAND_203[63:0];
  _RAND_204 = {2{`RANDOM}};
  REG_13_7_raw_data = _RAND_204[63:0];
  _RAND_205 = {1{`RANDOM}};
  s2_ttob_probe_valid = _RAND_205[0:0];
  _RAND_206 = {2{`RANDOM}};
  s2_ttob_probe_addr = _RAND_206[35:0];
  _RAND_207 = {1{`RANDOM}};
  s3_valid = _RAND_207[0:0];
  _RAND_208 = {1{`RANDOM}};
  s3_req_miss_id = _RAND_208[1:0];
  _RAND_209 = {1{`RANDOM}};
  s3_req_miss_param = _RAND_209[1:0];
  _RAND_210 = {1{`RANDOM}};
  s3_req_miss_dirty = _RAND_210[0:0];
  _RAND_211 = {1{`RANDOM}};
  s3_req_cmd = _RAND_211[4:0];
  _RAND_212 = {2{`RANDOM}};
  s3_req_vaddr = _RAND_212[38:0];
  _RAND_213 = {1{`RANDOM}};
  s3_req_word_idx = _RAND_213[2:0];
  _RAND_214 = {2{`RANDOM}};
  s3_req_amo_data = _RAND_214[63:0];
  _RAND_215 = {1{`RANDOM}};
  s3_req_amo_mask = _RAND_215[7:0];
  _RAND_216 = {1{`RANDOM}};
  s3_req_error = _RAND_216[0:0];
  _RAND_217 = {1{`RANDOM}};
  s3_req_id = _RAND_217[3:0];
  _RAND_218 = {1{`RANDOM}};
  s3_hit = _RAND_218[0:0];
  _RAND_219 = {1{`RANDOM}};
  s3_way_en = _RAND_219[7:0];
  _RAND_220 = {1{`RANDOM}};
  s3_banked_store_wmask = _RAND_220[7:0];
  _RAND_221 = {2{`RANDOM}};
  s3_store_data_merged_0 = _RAND_221[63:0];
  _RAND_222 = {2{`RANDOM}};
  s3_store_data_merged_1 = _RAND_222[63:0];
  _RAND_223 = {2{`RANDOM}};
  s3_store_data_merged_2 = _RAND_223[63:0];
  _RAND_224 = {2{`RANDOM}};
  s3_store_data_merged_3 = _RAND_224[63:0];
  _RAND_225 = {2{`RANDOM}};
  s3_store_data_merged_4 = _RAND_225[63:0];
  _RAND_226 = {2{`RANDOM}};
  s3_store_data_merged_5 = _RAND_226[63:0];
  _RAND_227 = {2{`RANDOM}};
  s3_store_data_merged_6 = _RAND_227[63:0];
  _RAND_228 = {2{`RANDOM}};
  s3_store_data_merged_7 = _RAND_228[63:0];
  _RAND_229 = {2{`RANDOM}};
  s3_data_word = _RAND_229[63:0];
  _RAND_230 = {2{`RANDOM}};
  s3_data_0 = _RAND_230[63:0];
  _RAND_231 = {2{`RANDOM}};
  s3_data_1 = _RAND_231[63:0];
  _RAND_232 = {2{`RANDOM}};
  s3_data_2 = _RAND_232[63:0];
  _RAND_233 = {2{`RANDOM}};
  s3_data_3 = _RAND_233[63:0];
  _RAND_234 = {2{`RANDOM}};
  s3_data_4 = _RAND_234[63:0];
  _RAND_235 = {2{`RANDOM}};
  s3_data_5 = _RAND_235[63:0];
  _RAND_236 = {2{`RANDOM}};
  s3_data_6 = _RAND_236[63:0];
  _RAND_237 = {2{`RANDOM}};
  s3_data_7 = _RAND_237[63:0];
  _RAND_238 = {1{`RANDOM}};
  s3_data_error_REG = _RAND_238[0:0];
  _RAND_239 = {1{`RANDOM}};
  s3_data_error_REG_1 = _RAND_239[0:0];
  _RAND_240 = {1{`RANDOM}};
  s3_data_error_REG_2 = _RAND_240[0:0];
  _RAND_241 = {1{`RANDOM}};
  s3_data_error_REG_3 = _RAND_241[0:0];
  _RAND_242 = {1{`RANDOM}};
  s3_error_r = _RAND_242[0:0];
  _RAND_243 = {1{`RANDOM}};
  s3_probe_ttob_check_resp_rREG = _RAND_243[0:0];
  _RAND_244 = {1{`RANDOM}};
  s3_probe_ttob_check_resp_rtoN = _RAND_244[0:0];
  _RAND_245 = {1{`RANDOM}};
  s3_probe_ttob_check_resp_REG = _RAND_245[0:0];
  _RAND_246 = {1{`RANDOM}};
  s3_valid_dup_0 = _RAND_246[0:0];
  _RAND_247 = {1{`RANDOM}};
  s3_valid_dup_1 = _RAND_247[0:0];
  _RAND_248 = {1{`RANDOM}};
  s3_valid_dup_3 = _RAND_248[0:0];
  _RAND_249 = {1{`RANDOM}};
  s3_valid_dup_4 = _RAND_249[0:0];
  _RAND_250 = {1{`RANDOM}};
  s3_valid_dup_8 = _RAND_250[0:0];
  _RAND_251 = {1{`RANDOM}};
  s3_valid_dup_9 = _RAND_251[0:0];
  _RAND_252 = {1{`RANDOM}};
  s3_valid_dup_10 = _RAND_252[0:0];
  _RAND_253 = {1{`RANDOM}};
  s3_valid_dup_11 = _RAND_253[0:0];
  _RAND_254 = {1{`RANDOM}};
  s3_valid_dup_for_status_0 = _RAND_254[0:0];
  _RAND_255 = {1{`RANDOM}};
  s3_valid_dup_for_status_1 = _RAND_255[0:0];
  _RAND_256 = {1{`RANDOM}};
  s3_valid_dup_for_status_2 = _RAND_256[0:0];
  _RAND_257 = {1{`RANDOM}};
  s3_valid_dup_for_status_3 = _RAND_257[0:0];
  _RAND_258 = {1{`RANDOM}};
  s3_valid_dup_for_status_4 = _RAND_258[0:0];
  _RAND_259 = {1{`RANDOM}};
  s3_valid_dup_for_status_5 = _RAND_259[0:0];
  _RAND_260 = {1{`RANDOM}};
  s3_valid_dup_for_status_6 = _RAND_260[0:0];
  _RAND_261 = {1{`RANDOM}};
  s3_valid_dup_for_status_7 = _RAND_261[0:0];
  _RAND_262 = {1{`RANDOM}};
  s3_valid_dup_for_status_8 = _RAND_262[0:0];
  _RAND_263 = {1{`RANDOM}};
  s3_valid_dup_for_status_9 = _RAND_263[0:0];
  _RAND_264 = {1{`RANDOM}};
  s3_valid_dup_for_status_10 = _RAND_264[0:0];
  _RAND_265 = {1{`RANDOM}};
  s3_valid_dup_for_status_11 = _RAND_265[0:0];
  _RAND_266 = {1{`RANDOM}};
  s3_valid_dup_for_status_12 = _RAND_266[0:0];
  _RAND_267 = {1{`RANDOM}};
  s3_valid_dup_for_status_13 = _RAND_267[0:0];
  _RAND_268 = {1{`RANDOM}};
  s3_valid_dup_for_status_14 = _RAND_268[0:0];
  _RAND_269 = {1{`RANDOM}};
  s3_valid_dup_for_status_15 = _RAND_269[0:0];
  _RAND_270 = {1{`RANDOM}};
  s3_valid_dup_for_status_16 = _RAND_270[0:0];
  _RAND_271 = {1{`RANDOM}};
  s3_valid_dup_for_status_17 = _RAND_271[0:0];
  _RAND_272 = {1{`RANDOM}};
  s3_valid_dup_for_status_18 = _RAND_272[0:0];
  _RAND_273 = {1{`RANDOM}};
  s3_valid_dup_for_status_19 = _RAND_273[0:0];
  _RAND_274 = {1{`RANDOM}};
  s3_valid_dup_for_status_20 = _RAND_274[0:0];
  _RAND_275 = {1{`RANDOM}};
  s3_valid_dup_for_status_21 = _RAND_275[0:0];
  _RAND_276 = {1{`RANDOM}};
  s3_valid_dup_for_status_22 = _RAND_276[0:0];
  _RAND_277 = {1{`RANDOM}};
  s3_valid_dup_for_status_23 = _RAND_277[0:0];
  _RAND_278 = {1{`RANDOM}};
  s3_way_en_dup_0 = _RAND_278[7:0];
  _RAND_279 = {1{`RANDOM}};
  s3_way_en_dup_1 = _RAND_279[7:0];
  _RAND_280 = {1{`RANDOM}};
  s3_way_en_dup_2 = _RAND_280[7:0];
  _RAND_281 = {1{`RANDOM}};
  s3_idx_dup_2 = _RAND_281[5:0];
  _RAND_282 = {1{`RANDOM}};
  s3_idx_dup_3 = _RAND_282[5:0];
  _RAND_283 = {1{`RANDOM}};
  s3_idx_dup_4 = _RAND_283[5:0];
  _RAND_284 = {1{`RANDOM}};
  s3_idx_dup_5 = _RAND_284[5:0];
  _RAND_285 = {1{`RANDOM}};
  s3_req_replace_dup_3 = _RAND_285[0:0];
  _RAND_286 = {1{`RANDOM}};
  s3_req_replace_dup_7 = _RAND_286[0:0];
  _RAND_287 = {1{`RANDOM}};
  s3_req_cmd_dup_2 = _RAND_287[4:0];
  _RAND_288 = {1{`RANDOM}};
  s3_req_cmd_dup_3 = _RAND_288[4:0];
  _RAND_289 = {2{`RANDOM}};
  s3_req_addr_dup_0 = _RAND_289[35:0];
  _RAND_290 = {2{`RANDOM}};
  s3_req_addr_dup_3 = _RAND_290[35:0];
  _RAND_291 = {2{`RANDOM}};
  s3_req_addr_dup_4 = _RAND_291[35:0];
  _RAND_292 = {1{`RANDOM}};
  s3_req_probe_dup_3 = _RAND_292[0:0];
  _RAND_293 = {1{`RANDOM}};
  s3_req_miss_dup_5 = _RAND_293[0:0];
  _RAND_294 = {1{`RANDOM}};
  s3_req_miss_dup_7 = _RAND_294[0:0];
  _RAND_295 = {1{`RANDOM}};
  s3_req_word_idx_dup_0 = _RAND_295[2:0];
  _RAND_296 = {1{`RANDOM}};
  s3_req_word_idx_dup_1 = _RAND_296[2:0];
  _RAND_297 = {1{`RANDOM}};
  s3_req_word_idx_dup_2 = _RAND_297[2:0];
  _RAND_298 = {1{`RANDOM}};
  s3_req_word_idx_dup_3 = _RAND_298[2:0];
  _RAND_299 = {1{`RANDOM}};
  s3_req_word_idx_dup_4 = _RAND_299[2:0];
  _RAND_300 = {1{`RANDOM}};
  s3_req_word_idx_dup_5 = _RAND_300[2:0];
  _RAND_301 = {1{`RANDOM}};
  s3_req_word_idx_dup_6 = _RAND_301[2:0];
  _RAND_302 = {1{`RANDOM}};
  s3_req_word_idx_dup_7 = _RAND_302[2:0];
  _RAND_303 = {1{`RANDOM}};
  s3_store_hit_dup_1 = _RAND_303[0:0];
  _RAND_304 = {1{`RANDOM}};
  lrsc_count_dup_1 = _RAND_304[5:0];
  _RAND_305 = {1{`RANDOM}};
  lrsc_count_dup_2 = _RAND_305[5:0];
  _RAND_306 = {2{`RANDOM}};
  lrsc_addr_dup = _RAND_306[35:0];
  _RAND_307 = {1{`RANDOM}};
  lrsc_count = _RAND_307[5:0];
  _RAND_308 = {1{`RANDOM}};
  io_block_lr_REG = _RAND_308[0:0];
  _RAND_309 = {1{`RANDOM}};
  s3_s_amoalu = _RAND_309[0:0];
  _RAND_310 = {2{`RANDOM}};
  s3_amo_data_merged_reg_0 = _RAND_310[63:0];
  _RAND_311 = {2{`RANDOM}};
  s3_amo_data_merged_reg_1 = _RAND_311[63:0];
  _RAND_312 = {2{`RANDOM}};
  s3_amo_data_merged_reg_2 = _RAND_312[63:0];
  _RAND_313 = {2{`RANDOM}};
  s3_amo_data_merged_reg_3 = _RAND_313[63:0];
  _RAND_314 = {2{`RANDOM}};
  s3_amo_data_merged_reg_4 = _RAND_314[63:0];
  _RAND_315 = {2{`RANDOM}};
  s3_amo_data_merged_reg_5 = _RAND_315[63:0];
  _RAND_316 = {2{`RANDOM}};
  s3_amo_data_merged_reg_6 = _RAND_316[63:0];
  _RAND_317 = {2{`RANDOM}};
  s3_amo_data_merged_reg_7 = _RAND_317[63:0];
  _RAND_318 = {1{`RANDOM}};
  miss_update_meta_dup_for_meta_wvalid = _RAND_318[0:0];
  _RAND_319 = {1{`RANDOM}};
  s3_req_probe_dup_for_meta_wvalid = _RAND_319[0:0];
  _RAND_320 = {1{`RANDOM}};
  s3_tag_match_dup_for_meta_wvalid = _RAND_320[0:0];
  _RAND_321 = {1{`RANDOM}};
  s3_coh_dup_for_meta_wvalid_state = _RAND_321[1:0];
  _RAND_322 = {1{`RANDOM}};
  s3_req_probe_param_dup_for_meta_wvalid = _RAND_322[1:0];
  _RAND_323 = {1{`RANDOM}};
  s3_req_source_dup_for_meta_wvalid = _RAND_323[3:0];
  _RAND_324 = {1{`RANDOM}};
  s3_req_cmd_dup_for_meta_wvalid = _RAND_324[4:0];
  _RAND_325 = {1{`RANDOM}};
  s3_req_replace_dup_for_meta_wvalid = _RAND_325[0:0];
  _RAND_326 = {1{`RANDOM}};
  s3_hit_coh_dup_for_meta_wvalid_state = _RAND_326[1:0];
  _RAND_327 = {1{`RANDOM}};
  s3_new_hit_coh_dup_for_meta_wvalid_state = _RAND_327[1:0];
  _RAND_328 = {1{`RANDOM}};
  s3_valid_dup_for_meta_wvalid = _RAND_328[0:0];
  _RAND_329 = {1{`RANDOM}};
  s3_amo_hit_dup_for_meta_wvalid = _RAND_329[0:0];
  _RAND_330 = {1{`RANDOM}};
  s3_s_amoalu_dup_for_meta_wvalid = _RAND_330[0:0];
  _RAND_331 = {1{`RANDOM}};
  s3_store_hit_dup_for_meta_wvalid = _RAND_331[0:0];
  _RAND_332 = {2{`RANDOM}};
  s3_req_addr_dup_for_meta_wvalid = _RAND_332[35:0];
  _RAND_333 = {2{`RANDOM}};
  lrsc_addr_dup_for_meta_wvalid = _RAND_333[35:0];
  _RAND_334 = {1{`RANDOM}};
  lrsc_count_dup_for_meta_wvalid = _RAND_334[5:0];
  _RAND_335 = {1{`RANDOM}};
  miss_update_meta_dup_for_err_wvalid = _RAND_335[0:0];
  _RAND_336 = {1{`RANDOM}};
  s3_req_probe_dup_for_err_wvalid = _RAND_336[0:0];
  _RAND_337 = {1{`RANDOM}};
  s3_tag_match_dup_for_err_wvalid = _RAND_337[0:0];
  _RAND_338 = {1{`RANDOM}};
  s3_coh_dup_for_err_wvalid_state = _RAND_338[1:0];
  _RAND_339 = {1{`RANDOM}};
  s3_req_probe_param_dup_for_err_wvalid = _RAND_339[1:0];
  _RAND_340 = {1{`RANDOM}};
  s3_req_source_dup_for_err_wvalid = _RAND_340[3:0];
  _RAND_341 = {1{`RANDOM}};
  s3_req_cmd_dup_for_err_wvalid = _RAND_341[4:0];
  _RAND_342 = {1{`RANDOM}};
  s3_req_replace_dup_for_err_wvalid = _RAND_342[0:0];
  _RAND_343 = {1{`RANDOM}};
  s3_hit_coh_dup_for_err_wvalid_state = _RAND_343[1:0];
  _RAND_344 = {1{`RANDOM}};
  s3_new_hit_coh_dup_for_err_wvalid_state = _RAND_344[1:0];
  _RAND_345 = {1{`RANDOM}};
  s3_valid_dup_for_err_wvalid = _RAND_345[0:0];
  _RAND_346 = {1{`RANDOM}};
  s3_amo_hit_dup_for_err_wvalid = _RAND_346[0:0];
  _RAND_347 = {1{`RANDOM}};
  s3_s_amoalu_dup_for_err_wvalid = _RAND_347[0:0];
  _RAND_348 = {1{`RANDOM}};
  s3_store_hit_dup_for_err_wvalid = _RAND_348[0:0];
  _RAND_349 = {2{`RANDOM}};
  s3_req_addr_dup_for_err_wvalid = _RAND_349[35:0];
  _RAND_350 = {2{`RANDOM}};
  lrsc_addr_dup_for_err_wvalid = _RAND_350[35:0];
  _RAND_351 = {1{`RANDOM}};
  lrsc_count_dup_for_err_wvalid = _RAND_351[5:0];
  _RAND_352 = {1{`RANDOM}};
  miss_update_meta_dup_for_tag_wvalid = _RAND_352[0:0];
  _RAND_353 = {1{`RANDOM}};
  s3_req_probe_dup_for_tag_wvalid = _RAND_353[0:0];
  _RAND_354 = {1{`RANDOM}};
  s3_coh_dup_for_tag_wvalid_state = _RAND_354[1:0];
  _RAND_355 = {1{`RANDOM}};
  s3_req_source_dup_for_tag_wvalid = _RAND_355[3:0];
  _RAND_356 = {1{`RANDOM}};
  s3_req_cmd_dup_for_tag_wvalid = _RAND_356[4:0];
  _RAND_357 = {1{`RANDOM}};
  s3_req_replace_dup_for_tag_wvalid = _RAND_357[0:0];
  _RAND_358 = {1{`RANDOM}};
  s3_valid_dup_for_tag_wvalid = _RAND_358[0:0];
  _RAND_359 = {1{`RANDOM}};
  s3_amo_hit_dup_for_tag_wvalid = _RAND_359[0:0];
  _RAND_360 = {1{`RANDOM}};
  s3_s_amoalu_dup_for_tag_wvalid = _RAND_360[0:0];
  _RAND_361 = {1{`RANDOM}};
  s3_store_hit_dup_for_tag_wvalid = _RAND_361[0:0];
  _RAND_362 = {2{`RANDOM}};
  s3_req_addr_dup_for_tag_wvalid = _RAND_362[35:0];
  _RAND_363 = {2{`RANDOM}};
  lrsc_addr_dup_for_tag_wvalid = _RAND_363[35:0];
  _RAND_364 = {1{`RANDOM}};
  lrsc_count_dup_for_tag_wvalid = _RAND_364[5:0];
  _RAND_365 = {1{`RANDOM}};
  miss_update_meta_dup_for_data_wvalid = _RAND_365[0:0];
  _RAND_366 = {1{`RANDOM}};
  s3_req_probe_dup_for_data_wvalid = _RAND_366[0:0];
  _RAND_367 = {1{`RANDOM}};
  s3_coh_dup_for_data_wvalid_state = _RAND_367[1:0];
  _RAND_368 = {1{`RANDOM}};
  s3_req_source_dup_for_data_wvalid = _RAND_368[3:0];
  _RAND_369 = {1{`RANDOM}};
  s3_req_cmd_dup_for_data_wvalid = _RAND_369[4:0];
  _RAND_370 = {1{`RANDOM}};
  s3_req_replace_dup_for_data_wvalid = _RAND_370[0:0];
  _RAND_371 = {1{`RANDOM}};
  s3_valid_dup_for_data_wvalid = _RAND_371[0:0];
  _RAND_372 = {1{`RANDOM}};
  s3_amo_hit_dup_for_data_wvalid = _RAND_372[0:0];
  _RAND_373 = {1{`RANDOM}};
  s3_s_amoalu_dup_for_data_wvalid = _RAND_373[0:0];
  _RAND_374 = {1{`RANDOM}};
  s3_store_hit_dup_for_data_wvalid = _RAND_374[0:0];
  _RAND_375 = {2{`RANDOM}};
  s3_req_addr_dup_for_data_wvalid = _RAND_375[35:0];
  _RAND_376 = {2{`RANDOM}};
  lrsc_addr_dup_for_data_wvalid = _RAND_376[35:0];
  _RAND_377 = {1{`RANDOM}};
  lrsc_count_dup_for_data_wvalid = _RAND_377[5:0];
  _RAND_378 = {1{`RANDOM}};
  s3_banked_store_wmask_dup_for_data_wvalid = _RAND_378[7:0];
  _RAND_379 = {1{`RANDOM}};
  s3_req_word_idx_dup_for_data_wvalid = _RAND_379[2:0];
  _RAND_380 = {2{`RANDOM}};
  s3_req_amo_data_dup_for_data_wvalid = _RAND_380[63:0];
  _RAND_381 = {1{`RANDOM}};
  s3_req_amo_mask_dup_for_data_wvalid = _RAND_381[7:0];
  _RAND_382 = {1{`RANDOM}};
  s3_valid_dup_for_data_wbank_0 = _RAND_382[0:0];
  _RAND_383 = {1{`RANDOM}};
  s3_valid_dup_for_data_wbank_1 = _RAND_383[0:0];
  _RAND_384 = {1{`RANDOM}};
  s3_valid_dup_for_data_wbank_2 = _RAND_384[0:0];
  _RAND_385 = {1{`RANDOM}};
  s3_valid_dup_for_data_wbank_3 = _RAND_385[0:0];
  _RAND_386 = {1{`RANDOM}};
  s3_valid_dup_for_data_wbank_4 = _RAND_386[0:0];
  _RAND_387 = {1{`RANDOM}};
  s3_valid_dup_for_data_wbank_5 = _RAND_387[0:0];
  _RAND_388 = {1{`RANDOM}};
  s3_valid_dup_for_data_wbank_6 = _RAND_388[0:0];
  _RAND_389 = {1{`RANDOM}};
  s3_valid_dup_for_data_wbank_7 = _RAND_389[0:0];
  _RAND_390 = {1{`RANDOM}};
  s3_req_miss_dup_for_data_wbank = _RAND_390[0:0];
  _RAND_391 = {1{`RANDOM}};
  s3_req_probe_dup_for_data_wbank = _RAND_391[0:0];
  _RAND_392 = {1{`RANDOM}};
  s3_coh_dup_for_data_wbank_state = _RAND_392[1:0];
  _RAND_393 = {1{`RANDOM}};
  s3_req_source_dup_for_data_wbank = _RAND_393[3:0];
  _RAND_394 = {1{`RANDOM}};
  s3_req_cmd_dup_for_data_wbank = _RAND_394[4:0];
  _RAND_395 = {1{`RANDOM}};
  s3_req_replace_dup_for_data_wbank = _RAND_395[0:0];
  _RAND_396 = {1{`RANDOM}};
  s3_amo_hit_dup_for_data_wbank = _RAND_396[0:0];
  _RAND_397 = {1{`RANDOM}};
  s3_s_amoalu_dup_for_data_wbank = _RAND_397[0:0];
  _RAND_398 = {1{`RANDOM}};
  s3_store_hit_dup_for_data_wbank = _RAND_398[0:0];
  _RAND_399 = {2{`RANDOM}};
  s3_req_addr_dup_for_data_wbank = _RAND_399[35:0];
  _RAND_400 = {2{`RANDOM}};
  lrsc_addr_dup_for_data_wbank = _RAND_400[35:0];
  _RAND_401 = {1{`RANDOM}};
  lrsc_count_dup_for_data_wbank = _RAND_401[5:0];
  _RAND_402 = {1{`RANDOM}};
  io_data_write_dup_0_bits_way_en_r = _RAND_402[7:0];
  _RAND_403 = {2{`RANDOM}};
  io_data_write_dup_0_bits_addr_r = _RAND_403[38:0];
  _RAND_404 = {1{`RANDOM}};
  s3_req_miss_dup_for_data_wbank_1 = _RAND_404[0:0];
  _RAND_405 = {1{`RANDOM}};
  s3_req_probe_dup_for_data_wbank_1 = _RAND_405[0:0];
  _RAND_406 = {1{`RANDOM}};
  s3_coh_dup_for_data_wbank_1_state = _RAND_406[1:0];
  _RAND_407 = {1{`RANDOM}};
  s3_req_source_dup_for_data_wbank_1 = _RAND_407[3:0];
  _RAND_408 = {1{`RANDOM}};
  s3_req_cmd_dup_for_data_wbank_1 = _RAND_408[4:0];
  _RAND_409 = {1{`RANDOM}};
  s3_req_replace_dup_for_data_wbank_1 = _RAND_409[0:0];
  _RAND_410 = {1{`RANDOM}};
  s3_amo_hit_dup_for_data_wbank_1 = _RAND_410[0:0];
  _RAND_411 = {1{`RANDOM}};
  s3_s_amoalu_dup_for_data_wbank_1 = _RAND_411[0:0];
  _RAND_412 = {1{`RANDOM}};
  s3_store_hit_dup_for_data_wbank_1 = _RAND_412[0:0];
  _RAND_413 = {2{`RANDOM}};
  s3_req_addr_dup_for_data_wbank_1 = _RAND_413[35:0];
  _RAND_414 = {2{`RANDOM}};
  lrsc_addr_dup_for_data_wbank_1 = _RAND_414[35:0];
  _RAND_415 = {1{`RANDOM}};
  lrsc_count_dup_for_data_wbank_1 = _RAND_415[5:0];
  _RAND_416 = {1{`RANDOM}};
  io_data_write_dup_1_bits_way_en_r = _RAND_416[7:0];
  _RAND_417 = {2{`RANDOM}};
  io_data_write_dup_1_bits_addr_r = _RAND_417[38:0];
  _RAND_418 = {1{`RANDOM}};
  s3_req_miss_dup_for_data_wbank_2 = _RAND_418[0:0];
  _RAND_419 = {1{`RANDOM}};
  s3_req_probe_dup_for_data_wbank_2 = _RAND_419[0:0];
  _RAND_420 = {1{`RANDOM}};
  s3_coh_dup_for_data_wbank_2_state = _RAND_420[1:0];
  _RAND_421 = {1{`RANDOM}};
  s3_req_source_dup_for_data_wbank_2 = _RAND_421[3:0];
  _RAND_422 = {1{`RANDOM}};
  s3_req_cmd_dup_for_data_wbank_2 = _RAND_422[4:0];
  _RAND_423 = {1{`RANDOM}};
  s3_req_replace_dup_for_data_wbank_2 = _RAND_423[0:0];
  _RAND_424 = {1{`RANDOM}};
  s3_amo_hit_dup_for_data_wbank_2 = _RAND_424[0:0];
  _RAND_425 = {1{`RANDOM}};
  s3_s_amoalu_dup_for_data_wbank_2 = _RAND_425[0:0];
  _RAND_426 = {1{`RANDOM}};
  s3_store_hit_dup_for_data_wbank_2 = _RAND_426[0:0];
  _RAND_427 = {2{`RANDOM}};
  s3_req_addr_dup_for_data_wbank_2 = _RAND_427[35:0];
  _RAND_428 = {2{`RANDOM}};
  lrsc_addr_dup_for_data_wbank_2 = _RAND_428[35:0];
  _RAND_429 = {1{`RANDOM}};
  lrsc_count_dup_for_data_wbank_2 = _RAND_429[5:0];
  _RAND_430 = {1{`RANDOM}};
  io_data_write_dup_2_bits_way_en_r = _RAND_430[7:0];
  _RAND_431 = {2{`RANDOM}};
  io_data_write_dup_2_bits_addr_r = _RAND_431[38:0];
  _RAND_432 = {1{`RANDOM}};
  s3_req_miss_dup_for_data_wbank_3 = _RAND_432[0:0];
  _RAND_433 = {1{`RANDOM}};
  s3_req_probe_dup_for_data_wbank_3 = _RAND_433[0:0];
  _RAND_434 = {1{`RANDOM}};
  s3_coh_dup_for_data_wbank_3_state = _RAND_434[1:0];
  _RAND_435 = {1{`RANDOM}};
  s3_req_source_dup_for_data_wbank_3 = _RAND_435[3:0];
  _RAND_436 = {1{`RANDOM}};
  s3_req_cmd_dup_for_data_wbank_3 = _RAND_436[4:0];
  _RAND_437 = {1{`RANDOM}};
  s3_req_replace_dup_for_data_wbank_3 = _RAND_437[0:0];
  _RAND_438 = {1{`RANDOM}};
  s3_amo_hit_dup_for_data_wbank_3 = _RAND_438[0:0];
  _RAND_439 = {1{`RANDOM}};
  s3_s_amoalu_dup_for_data_wbank_3 = _RAND_439[0:0];
  _RAND_440 = {1{`RANDOM}};
  s3_store_hit_dup_for_data_wbank_3 = _RAND_440[0:0];
  _RAND_441 = {2{`RANDOM}};
  s3_req_addr_dup_for_data_wbank_3 = _RAND_441[35:0];
  _RAND_442 = {2{`RANDOM}};
  lrsc_addr_dup_for_data_wbank_3 = _RAND_442[35:0];
  _RAND_443 = {1{`RANDOM}};
  lrsc_count_dup_for_data_wbank_3 = _RAND_443[5:0];
  _RAND_444 = {1{`RANDOM}};
  io_data_write_dup_3_bits_way_en_r = _RAND_444[7:0];
  _RAND_445 = {2{`RANDOM}};
  io_data_write_dup_3_bits_addr_r = _RAND_445[38:0];
  _RAND_446 = {1{`RANDOM}};
  s3_req_miss_dup_for_data_wbank_4 = _RAND_446[0:0];
  _RAND_447 = {1{`RANDOM}};
  s3_req_probe_dup_for_data_wbank_4 = _RAND_447[0:0];
  _RAND_448 = {1{`RANDOM}};
  s3_coh_dup_for_data_wbank_4_state = _RAND_448[1:0];
  _RAND_449 = {1{`RANDOM}};
  s3_req_source_dup_for_data_wbank_4 = _RAND_449[3:0];
  _RAND_450 = {1{`RANDOM}};
  s3_req_cmd_dup_for_data_wbank_4 = _RAND_450[4:0];
  _RAND_451 = {1{`RANDOM}};
  s3_req_replace_dup_for_data_wbank_4 = _RAND_451[0:0];
  _RAND_452 = {1{`RANDOM}};
  s3_amo_hit_dup_for_data_wbank_4 = _RAND_452[0:0];
  _RAND_453 = {1{`RANDOM}};
  s3_s_amoalu_dup_for_data_wbank_4 = _RAND_453[0:0];
  _RAND_454 = {1{`RANDOM}};
  s3_store_hit_dup_for_data_wbank_4 = _RAND_454[0:0];
  _RAND_455 = {2{`RANDOM}};
  s3_req_addr_dup_for_data_wbank_4 = _RAND_455[35:0];
  _RAND_456 = {2{`RANDOM}};
  lrsc_addr_dup_for_data_wbank_4 = _RAND_456[35:0];
  _RAND_457 = {1{`RANDOM}};
  lrsc_count_dup_for_data_wbank_4 = _RAND_457[5:0];
  _RAND_458 = {1{`RANDOM}};
  io_data_write_dup_4_bits_way_en_r = _RAND_458[7:0];
  _RAND_459 = {2{`RANDOM}};
  io_data_write_dup_4_bits_addr_r = _RAND_459[38:0];
  _RAND_460 = {1{`RANDOM}};
  s3_req_miss_dup_for_data_wbank_5 = _RAND_460[0:0];
  _RAND_461 = {1{`RANDOM}};
  s3_req_probe_dup_for_data_wbank_5 = _RAND_461[0:0];
  _RAND_462 = {1{`RANDOM}};
  s3_coh_dup_for_data_wbank_5_state = _RAND_462[1:0];
  _RAND_463 = {1{`RANDOM}};
  s3_req_source_dup_for_data_wbank_5 = _RAND_463[3:0];
  _RAND_464 = {1{`RANDOM}};
  s3_req_cmd_dup_for_data_wbank_5 = _RAND_464[4:0];
  _RAND_465 = {1{`RANDOM}};
  s3_req_replace_dup_for_data_wbank_5 = _RAND_465[0:0];
  _RAND_466 = {1{`RANDOM}};
  s3_amo_hit_dup_for_data_wbank_5 = _RAND_466[0:0];
  _RAND_467 = {1{`RANDOM}};
  s3_s_amoalu_dup_for_data_wbank_5 = _RAND_467[0:0];
  _RAND_468 = {1{`RANDOM}};
  s3_store_hit_dup_for_data_wbank_5 = _RAND_468[0:0];
  _RAND_469 = {2{`RANDOM}};
  s3_req_addr_dup_for_data_wbank_5 = _RAND_469[35:0];
  _RAND_470 = {2{`RANDOM}};
  lrsc_addr_dup_for_data_wbank_5 = _RAND_470[35:0];
  _RAND_471 = {1{`RANDOM}};
  lrsc_count_dup_for_data_wbank_5 = _RAND_471[5:0];
  _RAND_472 = {1{`RANDOM}};
  io_data_write_dup_5_bits_way_en_r = _RAND_472[7:0];
  _RAND_473 = {2{`RANDOM}};
  io_data_write_dup_5_bits_addr_r = _RAND_473[38:0];
  _RAND_474 = {1{`RANDOM}};
  s3_req_miss_dup_for_data_wbank_6 = _RAND_474[0:0];
  _RAND_475 = {1{`RANDOM}};
  s3_req_probe_dup_for_data_wbank_6 = _RAND_475[0:0];
  _RAND_476 = {1{`RANDOM}};
  s3_coh_dup_for_data_wbank_6_state = _RAND_476[1:0];
  _RAND_477 = {1{`RANDOM}};
  s3_req_source_dup_for_data_wbank_6 = _RAND_477[3:0];
  _RAND_478 = {1{`RANDOM}};
  s3_req_cmd_dup_for_data_wbank_6 = _RAND_478[4:0];
  _RAND_479 = {1{`RANDOM}};
  s3_req_replace_dup_for_data_wbank_6 = _RAND_479[0:0];
  _RAND_480 = {1{`RANDOM}};
  s3_amo_hit_dup_for_data_wbank_6 = _RAND_480[0:0];
  _RAND_481 = {1{`RANDOM}};
  s3_s_amoalu_dup_for_data_wbank_6 = _RAND_481[0:0];
  _RAND_482 = {1{`RANDOM}};
  s3_store_hit_dup_for_data_wbank_6 = _RAND_482[0:0];
  _RAND_483 = {2{`RANDOM}};
  s3_req_addr_dup_for_data_wbank_6 = _RAND_483[35:0];
  _RAND_484 = {2{`RANDOM}};
  lrsc_addr_dup_for_data_wbank_6 = _RAND_484[35:0];
  _RAND_485 = {1{`RANDOM}};
  lrsc_count_dup_for_data_wbank_6 = _RAND_485[5:0];
  _RAND_486 = {1{`RANDOM}};
  io_data_write_dup_6_bits_way_en_r = _RAND_486[7:0];
  _RAND_487 = {2{`RANDOM}};
  io_data_write_dup_6_bits_addr_r = _RAND_487[38:0];
  _RAND_488 = {1{`RANDOM}};
  s3_req_miss_dup_for_data_wbank_7 = _RAND_488[0:0];
  _RAND_489 = {1{`RANDOM}};
  s3_req_probe_dup_for_data_wbank_7 = _RAND_489[0:0];
  _RAND_490 = {1{`RANDOM}};
  s3_coh_dup_for_data_wbank_7_state = _RAND_490[1:0];
  _RAND_491 = {1{`RANDOM}};
  s3_req_source_dup_for_data_wbank_7 = _RAND_491[3:0];
  _RAND_492 = {1{`RANDOM}};
  s3_req_cmd_dup_for_data_wbank_7 = _RAND_492[4:0];
  _RAND_493 = {1{`RANDOM}};
  s3_req_replace_dup_for_data_wbank_7 = _RAND_493[0:0];
  _RAND_494 = {1{`RANDOM}};
  s3_amo_hit_dup_for_data_wbank_7 = _RAND_494[0:0];
  _RAND_495 = {1{`RANDOM}};
  s3_s_amoalu_dup_for_data_wbank_7 = _RAND_495[0:0];
  _RAND_496 = {1{`RANDOM}};
  s3_store_hit_dup_for_data_wbank_7 = _RAND_496[0:0];
  _RAND_497 = {2{`RANDOM}};
  s3_req_addr_dup_for_data_wbank_7 = _RAND_497[35:0];
  _RAND_498 = {2{`RANDOM}};
  lrsc_addr_dup_for_data_wbank_7 = _RAND_498[35:0];
  _RAND_499 = {1{`RANDOM}};
  lrsc_count_dup_for_data_wbank_7 = _RAND_499[5:0];
  _RAND_500 = {1{`RANDOM}};
  io_data_write_dup_7_bits_way_en_r = _RAND_500[7:0];
  _RAND_501 = {2{`RANDOM}};
  io_data_write_dup_7_bits_addr_r = _RAND_501[38:0];
  _RAND_502 = {1{`RANDOM}};
  miss_update_meta_dup_for_wb_valid = _RAND_502[0:0];
  _RAND_503 = {1{`RANDOM}};
  s3_req_probe_dup_for_wb_valid = _RAND_503[0:0];
  _RAND_504 = {1{`RANDOM}};
  s3_tag_match_dup_for_wb_valid = _RAND_504[0:0];
  _RAND_505 = {1{`RANDOM}};
  s3_coh_dup_for_wb_valid_state = _RAND_505[1:0];
  _RAND_506 = {1{`RANDOM}};
  s3_req_probe_param_dup_for_wb_valid = _RAND_506[1:0];
  _RAND_507 = {1{`RANDOM}};
  s3_req_source_dup_for_wb_valid = _RAND_507[3:0];
  _RAND_508 = {1{`RANDOM}};
  s3_req_cmd_dup_for_wb_valid = _RAND_508[4:0];
  _RAND_509 = {1{`RANDOM}};
  s3_req_replace_dup_for_wb_valid = _RAND_509[0:0];
  _RAND_510 = {1{`RANDOM}};
  s3_valid_dup_for_wb_valid = _RAND_510[0:0];
  _RAND_511 = {1{`RANDOM}};
  s3_amo_hit_dup_for_wb_valid = _RAND_511[0:0];
  _RAND_512 = {1{`RANDOM}};
  s3_s_amoalu_dup_for_wb_valid = _RAND_512[0:0];
  _RAND_513 = {1{`RANDOM}};
  s3_store_hit_dup_for_wb_valid = _RAND_513[0:0];
  _RAND_514 = {2{`RANDOM}};
  s3_req_addr_dup_for_wb_valid = _RAND_514[35:0];
  _RAND_515 = {2{`RANDOM}};
  lrsc_addr_dup_for_wb_valid = _RAND_515[35:0];
  _RAND_516 = {1{`RANDOM}};
  lrsc_count_dup_for_wb_valid = _RAND_516[5:0];
  _RAND_517 = {1{`RANDOM}};
  s3_need_replacement_dup_for_wb_valid = _RAND_517[0:0];
  _RAND_518 = {1{`RANDOM}};
  s3_tag_dup_for_wb_valid = _RAND_518[23:0];
  _RAND_519 = {1{`RANDOM}};
  writeback_data_dup_for_wb_valid_r = _RAND_519[0:0];
  _RAND_520 = {1{`RANDOM}};
  io_replace_access_valid_REG = _RAND_520[0:0];
  _RAND_521 = {1{`RANDOM}};
  io_replace_access_valid_REG_1 = _RAND_521[0:0];
  _RAND_522 = {1{`RANDOM}};
  io_replace_access_bits_set_REG = _RAND_522[5:0];
  _RAND_523 = {1{`RANDOM}};
  io_replace_access_bits_way_REG = _RAND_523[2:0];
  _RAND_524 = {1{`RANDOM}};
  io_replace_access_bits_way_REG_1 = _RAND_524[2:0];
  _RAND_525 = {1{`RANDOM}};
  io_status_dup_0_s1_bits_set_r = _RAND_525[5:0];
  _RAND_526 = {1{`RANDOM}};
  io_status_dup_0_s2_valid_r = _RAND_526[0:0];
  _RAND_527 = {1{`RANDOM}};
  io_status_dup_0_s2_bits_set_r = _RAND_527[5:0];
  _RAND_528 = {1{`RANDOM}};
  io_status_dup_0_s2_bits_way_en_r = _RAND_528[7:0];
  _RAND_529 = {1{`RANDOM}};
  io_status_dup_0_s3_valid_r = _RAND_529[0:0];
  _RAND_530 = {1{`RANDOM}};
  io_status_dup_0_s3_bits_set_r = _RAND_530[5:0];
  _RAND_531 = {1{`RANDOM}};
  io_status_dup_0_s3_bits_way_en_r = _RAND_531[7:0];
  _RAND_532 = {1{`RANDOM}};
  io_status_dup_1_s1_bits_set_r = _RAND_532[5:0];
  _RAND_533 = {1{`RANDOM}};
  io_status_dup_1_s2_valid_r = _RAND_533[0:0];
  _RAND_534 = {1{`RANDOM}};
  io_status_dup_1_s2_bits_set_r = _RAND_534[5:0];
  _RAND_535 = {1{`RANDOM}};
  io_status_dup_1_s2_bits_way_en_r = _RAND_535[7:0];
  _RAND_536 = {1{`RANDOM}};
  io_status_dup_1_s3_valid_r = _RAND_536[0:0];
  _RAND_537 = {1{`RANDOM}};
  io_status_dup_1_s3_bits_set_r = _RAND_537[5:0];
  _RAND_538 = {1{`RANDOM}};
  io_status_dup_1_s3_bits_way_en_r = _RAND_538[7:0];
  _RAND_539 = {1{`RANDOM}};
  io_status_dup_2_s1_bits_set_r = _RAND_539[5:0];
  _RAND_540 = {1{`RANDOM}};
  io_status_dup_2_s2_valid_r = _RAND_540[0:0];
  _RAND_541 = {1{`RANDOM}};
  io_status_dup_2_s2_bits_set_r = _RAND_541[5:0];
  _RAND_542 = {1{`RANDOM}};
  io_status_dup_2_s2_bits_way_en_r = _RAND_542[7:0];
  _RAND_543 = {1{`RANDOM}};
  io_status_dup_2_s3_valid_r = _RAND_543[0:0];
  _RAND_544 = {1{`RANDOM}};
  io_status_dup_2_s3_bits_set_r = _RAND_544[5:0];
  _RAND_545 = {1{`RANDOM}};
  io_status_dup_2_s3_bits_way_en_r = _RAND_545[7:0];
  _RAND_546 = {1{`RANDOM}};
  io_status_dup_3_s1_bits_set_r = _RAND_546[5:0];
  _RAND_547 = {1{`RANDOM}};
  io_status_dup_3_s2_valid_r = _RAND_547[0:0];
  _RAND_548 = {1{`RANDOM}};
  io_status_dup_3_s2_bits_set_r = _RAND_548[5:0];
  _RAND_549 = {1{`RANDOM}};
  io_status_dup_3_s2_bits_way_en_r = _RAND_549[7:0];
  _RAND_550 = {1{`RANDOM}};
  io_status_dup_3_s3_valid_r = _RAND_550[0:0];
  _RAND_551 = {1{`RANDOM}};
  io_status_dup_3_s3_bits_set_r = _RAND_551[5:0];
  _RAND_552 = {1{`RANDOM}};
  io_status_dup_3_s3_bits_way_en_r = _RAND_552[7:0];
  _RAND_553 = {1{`RANDOM}};
  io_status_dup_4_s1_bits_set_r = _RAND_553[5:0];
  _RAND_554 = {1{`RANDOM}};
  io_status_dup_4_s2_valid_r = _RAND_554[0:0];
  _RAND_555 = {1{`RANDOM}};
  io_status_dup_4_s2_bits_set_r = _RAND_555[5:0];
  _RAND_556 = {1{`RANDOM}};
  io_status_dup_4_s2_bits_way_en_r = _RAND_556[7:0];
  _RAND_557 = {1{`RANDOM}};
  io_status_dup_4_s3_valid_r = _RAND_557[0:0];
  _RAND_558 = {1{`RANDOM}};
  io_status_dup_4_s3_bits_set_r = _RAND_558[5:0];
  _RAND_559 = {1{`RANDOM}};
  io_status_dup_4_s3_bits_way_en_r = _RAND_559[7:0];
  _RAND_560 = {1{`RANDOM}};
  io_status_dup_5_s1_bits_set_r = _RAND_560[5:0];
  _RAND_561 = {1{`RANDOM}};
  io_status_dup_5_s2_valid_r = _RAND_561[0:0];
  _RAND_562 = {1{`RANDOM}};
  io_status_dup_5_s2_bits_set_r = _RAND_562[5:0];
  _RAND_563 = {1{`RANDOM}};
  io_status_dup_5_s2_bits_way_en_r = _RAND_563[7:0];
  _RAND_564 = {1{`RANDOM}};
  io_status_dup_5_s3_valid_r = _RAND_564[0:0];
  _RAND_565 = {1{`RANDOM}};
  io_status_dup_5_s3_bits_set_r = _RAND_565[5:0];
  _RAND_566 = {1{`RANDOM}};
  io_status_dup_5_s3_bits_way_en_r = _RAND_566[7:0];
  _RAND_567 = {1{`RANDOM}};
  io_status_dup_6_s1_bits_set_r = _RAND_567[5:0];
  _RAND_568 = {1{`RANDOM}};
  io_status_dup_6_s2_valid_r = _RAND_568[0:0];
  _RAND_569 = {1{`RANDOM}};
  io_status_dup_6_s2_bits_set_r = _RAND_569[5:0];
  _RAND_570 = {1{`RANDOM}};
  io_status_dup_6_s2_bits_way_en_r = _RAND_570[7:0];
  _RAND_571 = {1{`RANDOM}};
  io_status_dup_6_s3_valid_r = _RAND_571[0:0];
  _RAND_572 = {1{`RANDOM}};
  io_status_dup_6_s3_bits_set_r = _RAND_572[5:0];
  _RAND_573 = {1{`RANDOM}};
  io_status_dup_6_s3_bits_way_en_r = _RAND_573[7:0];
  _RAND_574 = {1{`RANDOM}};
  io_status_dup_7_s1_bits_set_r = _RAND_574[5:0];
  _RAND_575 = {1{`RANDOM}};
  io_status_dup_7_s2_valid_r = _RAND_575[0:0];
  _RAND_576 = {1{`RANDOM}};
  io_status_dup_7_s2_bits_set_r = _RAND_576[5:0];
  _RAND_577 = {1{`RANDOM}};
  io_status_dup_7_s2_bits_way_en_r = _RAND_577[7:0];
  _RAND_578 = {1{`RANDOM}};
  io_status_dup_7_s3_valid_r = _RAND_578[0:0];
  _RAND_579 = {1{`RANDOM}};
  io_status_dup_7_s3_bits_set_r = _RAND_579[5:0];
  _RAND_580 = {1{`RANDOM}};
  io_status_dup_7_s3_bits_way_en_r = _RAND_580[7:0];
  _RAND_581 = {1{`RANDOM}};
  io_status_dup_8_s1_bits_set_r = _RAND_581[5:0];
  _RAND_582 = {1{`RANDOM}};
  io_status_dup_8_s2_valid_r = _RAND_582[0:0];
  _RAND_583 = {1{`RANDOM}};
  io_status_dup_8_s2_bits_set_r = _RAND_583[5:0];
  _RAND_584 = {1{`RANDOM}};
  io_status_dup_8_s2_bits_way_en_r = _RAND_584[7:0];
  _RAND_585 = {1{`RANDOM}};
  io_status_dup_8_s3_valid_r = _RAND_585[0:0];
  _RAND_586 = {1{`RANDOM}};
  io_status_dup_8_s3_bits_set_r = _RAND_586[5:0];
  _RAND_587 = {1{`RANDOM}};
  io_status_dup_8_s3_bits_way_en_r = _RAND_587[7:0];
  _RAND_588 = {1{`RANDOM}};
  io_status_dup_9_s1_bits_set_r = _RAND_588[5:0];
  _RAND_589 = {1{`RANDOM}};
  io_status_dup_9_s2_valid_r = _RAND_589[0:0];
  _RAND_590 = {1{`RANDOM}};
  io_status_dup_9_s2_bits_set_r = _RAND_590[5:0];
  _RAND_591 = {1{`RANDOM}};
  io_status_dup_9_s2_bits_way_en_r = _RAND_591[7:0];
  _RAND_592 = {1{`RANDOM}};
  io_status_dup_9_s3_valid_r = _RAND_592[0:0];
  _RAND_593 = {1{`RANDOM}};
  io_status_dup_9_s3_bits_set_r = _RAND_593[5:0];
  _RAND_594 = {1{`RANDOM}};
  io_status_dup_9_s3_bits_way_en_r = _RAND_594[7:0];
  _RAND_595 = {1{`RANDOM}};
  io_status_dup_10_s1_bits_set_r = _RAND_595[5:0];
  _RAND_596 = {1{`RANDOM}};
  io_status_dup_10_s2_valid_r = _RAND_596[0:0];
  _RAND_597 = {1{`RANDOM}};
  io_status_dup_10_s2_bits_set_r = _RAND_597[5:0];
  _RAND_598 = {1{`RANDOM}};
  io_status_dup_10_s2_bits_way_en_r = _RAND_598[7:0];
  _RAND_599 = {1{`RANDOM}};
  io_status_dup_10_s3_valid_r = _RAND_599[0:0];
  _RAND_600 = {1{`RANDOM}};
  io_status_dup_10_s3_bits_set_r = _RAND_600[5:0];
  _RAND_601 = {1{`RANDOM}};
  io_status_dup_10_s3_bits_way_en_r = _RAND_601[7:0];
  _RAND_602 = {1{`RANDOM}};
  io_status_dup_11_s1_bits_set_r = _RAND_602[5:0];
  _RAND_603 = {1{`RANDOM}};
  io_status_dup_11_s2_valid_r = _RAND_603[0:0];
  _RAND_604 = {1{`RANDOM}};
  io_status_dup_11_s2_bits_set_r = _RAND_604[5:0];
  _RAND_605 = {1{`RANDOM}};
  io_status_dup_11_s2_bits_way_en_r = _RAND_605[7:0];
  _RAND_606 = {1{`RANDOM}};
  io_status_dup_11_s3_valid_r = _RAND_606[0:0];
  _RAND_607 = {1{`RANDOM}};
  io_status_dup_11_s3_bits_set_r = _RAND_607[5:0];
  _RAND_608 = {1{`RANDOM}};
  io_status_dup_11_s3_bits_way_en_r = _RAND_608[7:0];
  _RAND_609 = {1{`RANDOM}};
  io_status_dup_12_s1_bits_set_r = _RAND_609[5:0];
  _RAND_610 = {1{`RANDOM}};
  io_status_dup_12_s2_valid_r = _RAND_610[0:0];
  _RAND_611 = {1{`RANDOM}};
  io_status_dup_12_s2_bits_set_r = _RAND_611[5:0];
  _RAND_612 = {1{`RANDOM}};
  io_status_dup_12_s2_bits_way_en_r = _RAND_612[7:0];
  _RAND_613 = {1{`RANDOM}};
  io_status_dup_12_s3_valid_r = _RAND_613[0:0];
  _RAND_614 = {1{`RANDOM}};
  io_status_dup_12_s3_bits_set_r = _RAND_614[5:0];
  _RAND_615 = {1{`RANDOM}};
  io_status_dup_12_s3_bits_way_en_r = _RAND_615[7:0];
  _RAND_616 = {1{`RANDOM}};
  io_status_dup_13_s1_bits_set_r = _RAND_616[5:0];
  _RAND_617 = {1{`RANDOM}};
  io_status_dup_13_s2_valid_r = _RAND_617[0:0];
  _RAND_618 = {1{`RANDOM}};
  io_status_dup_13_s2_bits_set_r = _RAND_618[5:0];
  _RAND_619 = {1{`RANDOM}};
  io_status_dup_13_s2_bits_way_en_r = _RAND_619[7:0];
  _RAND_620 = {1{`RANDOM}};
  io_status_dup_13_s3_valid_r = _RAND_620[0:0];
  _RAND_621 = {1{`RANDOM}};
  io_status_dup_13_s3_bits_set_r = _RAND_621[5:0];
  _RAND_622 = {1{`RANDOM}};
  io_status_dup_13_s3_bits_way_en_r = _RAND_622[7:0];
  _RAND_623 = {1{`RANDOM}};
  io_status_dup_14_s1_bits_set_r = _RAND_623[5:0];
  _RAND_624 = {1{`RANDOM}};
  io_status_dup_14_s2_valid_r = _RAND_624[0:0];
  _RAND_625 = {1{`RANDOM}};
  io_status_dup_14_s2_bits_set_r = _RAND_625[5:0];
  _RAND_626 = {1{`RANDOM}};
  io_status_dup_14_s2_bits_way_en_r = _RAND_626[7:0];
  _RAND_627 = {1{`RANDOM}};
  io_status_dup_14_s3_valid_r = _RAND_627[0:0];
  _RAND_628 = {1{`RANDOM}};
  io_status_dup_14_s3_bits_set_r = _RAND_628[5:0];
  _RAND_629 = {1{`RANDOM}};
  io_status_dup_14_s3_bits_way_en_r = _RAND_629[7:0];
  _RAND_630 = {1{`RANDOM}};
  io_status_dup_15_s1_bits_set_r = _RAND_630[5:0];
  _RAND_631 = {1{`RANDOM}};
  io_status_dup_15_s2_valid_r = _RAND_631[0:0];
  _RAND_632 = {1{`RANDOM}};
  io_status_dup_15_s2_bits_set_r = _RAND_632[5:0];
  _RAND_633 = {1{`RANDOM}};
  io_status_dup_15_s2_bits_way_en_r = _RAND_633[7:0];
  _RAND_634 = {1{`RANDOM}};
  io_status_dup_15_s3_valid_r = _RAND_634[0:0];
  _RAND_635 = {1{`RANDOM}};
  io_status_dup_15_s3_bits_set_r = _RAND_635[5:0];
  _RAND_636 = {1{`RANDOM}};
  io_status_dup_15_s3_bits_way_en_r = _RAND_636[7:0];
  _RAND_637 = {1{`RANDOM}};
  io_status_dup_16_s1_bits_set_r = _RAND_637[5:0];
  _RAND_638 = {1{`RANDOM}};
  io_status_dup_16_s2_valid_r = _RAND_638[0:0];
  _RAND_639 = {1{`RANDOM}};
  io_status_dup_16_s2_bits_set_r = _RAND_639[5:0];
  _RAND_640 = {1{`RANDOM}};
  io_status_dup_16_s2_bits_way_en_r = _RAND_640[7:0];
  _RAND_641 = {1{`RANDOM}};
  io_status_dup_16_s3_valid_r = _RAND_641[0:0];
  _RAND_642 = {1{`RANDOM}};
  io_status_dup_16_s3_bits_set_r = _RAND_642[5:0];
  _RAND_643 = {1{`RANDOM}};
  io_status_dup_16_s3_bits_way_en_r = _RAND_643[7:0];
  _RAND_644 = {1{`RANDOM}};
  io_status_dup_17_s1_bits_set_r = _RAND_644[5:0];
  _RAND_645 = {1{`RANDOM}};
  io_status_dup_17_s2_valid_r = _RAND_645[0:0];
  _RAND_646 = {1{`RANDOM}};
  io_status_dup_17_s2_bits_set_r = _RAND_646[5:0];
  _RAND_647 = {1{`RANDOM}};
  io_status_dup_17_s2_bits_way_en_r = _RAND_647[7:0];
  _RAND_648 = {1{`RANDOM}};
  io_status_dup_17_s3_valid_r = _RAND_648[0:0];
  _RAND_649 = {1{`RANDOM}};
  io_status_dup_17_s3_bits_set_r = _RAND_649[5:0];
  _RAND_650 = {1{`RANDOM}};
  io_status_dup_17_s3_bits_way_en_r = _RAND_650[7:0];
  _RAND_651 = {1{`RANDOM}};
  io_status_dup_18_s1_bits_set_r = _RAND_651[5:0];
  _RAND_652 = {1{`RANDOM}};
  io_status_dup_18_s2_valid_r = _RAND_652[0:0];
  _RAND_653 = {1{`RANDOM}};
  io_status_dup_18_s2_bits_set_r = _RAND_653[5:0];
  _RAND_654 = {1{`RANDOM}};
  io_status_dup_18_s2_bits_way_en_r = _RAND_654[7:0];
  _RAND_655 = {1{`RANDOM}};
  io_status_dup_18_s3_valid_r = _RAND_655[0:0];
  _RAND_656 = {1{`RANDOM}};
  io_status_dup_18_s3_bits_set_r = _RAND_656[5:0];
  _RAND_657 = {1{`RANDOM}};
  io_status_dup_18_s3_bits_way_en_r = _RAND_657[7:0];
  _RAND_658 = {1{`RANDOM}};
  io_status_dup_19_s1_bits_set_r = _RAND_658[5:0];
  _RAND_659 = {1{`RANDOM}};
  io_status_dup_19_s2_valid_r = _RAND_659[0:0];
  _RAND_660 = {1{`RANDOM}};
  io_status_dup_19_s2_bits_set_r = _RAND_660[5:0];
  _RAND_661 = {1{`RANDOM}};
  io_status_dup_19_s2_bits_way_en_r = _RAND_661[7:0];
  _RAND_662 = {1{`RANDOM}};
  io_status_dup_19_s3_valid_r = _RAND_662[0:0];
  _RAND_663 = {1{`RANDOM}};
  io_status_dup_19_s3_bits_set_r = _RAND_663[5:0];
  _RAND_664 = {1{`RANDOM}};
  io_status_dup_19_s3_bits_way_en_r = _RAND_664[7:0];
  _RAND_665 = {1{`RANDOM}};
  io_status_dup_20_s1_bits_set_r = _RAND_665[5:0];
  _RAND_666 = {1{`RANDOM}};
  io_status_dup_20_s2_valid_r = _RAND_666[0:0];
  _RAND_667 = {1{`RANDOM}};
  io_status_dup_20_s2_bits_set_r = _RAND_667[5:0];
  _RAND_668 = {1{`RANDOM}};
  io_status_dup_20_s2_bits_way_en_r = _RAND_668[7:0];
  _RAND_669 = {1{`RANDOM}};
  io_status_dup_20_s3_valid_r = _RAND_669[0:0];
  _RAND_670 = {1{`RANDOM}};
  io_status_dup_20_s3_bits_set_r = _RAND_670[5:0];
  _RAND_671 = {1{`RANDOM}};
  io_status_dup_20_s3_bits_way_en_r = _RAND_671[7:0];
  _RAND_672 = {1{`RANDOM}};
  io_status_dup_21_s1_bits_set_r = _RAND_672[5:0];
  _RAND_673 = {1{`RANDOM}};
  io_status_dup_21_s2_valid_r = _RAND_673[0:0];
  _RAND_674 = {1{`RANDOM}};
  io_status_dup_21_s2_bits_set_r = _RAND_674[5:0];
  _RAND_675 = {1{`RANDOM}};
  io_status_dup_21_s2_bits_way_en_r = _RAND_675[7:0];
  _RAND_676 = {1{`RANDOM}};
  io_status_dup_21_s3_valid_r = _RAND_676[0:0];
  _RAND_677 = {1{`RANDOM}};
  io_status_dup_21_s3_bits_set_r = _RAND_677[5:0];
  _RAND_678 = {1{`RANDOM}};
  io_status_dup_21_s3_bits_way_en_r = _RAND_678[7:0];
  _RAND_679 = {1{`RANDOM}};
  io_status_dup_22_s1_bits_set_r = _RAND_679[5:0];
  _RAND_680 = {1{`RANDOM}};
  io_status_dup_22_s2_valid_r = _RAND_680[0:0];
  _RAND_681 = {1{`RANDOM}};
  io_status_dup_22_s2_bits_set_r = _RAND_681[5:0];
  _RAND_682 = {1{`RANDOM}};
  io_status_dup_22_s2_bits_way_en_r = _RAND_682[7:0];
  _RAND_683 = {1{`RANDOM}};
  io_status_dup_22_s3_valid_r = _RAND_683[0:0];
  _RAND_684 = {1{`RANDOM}};
  io_status_dup_22_s3_bits_set_r = _RAND_684[5:0];
  _RAND_685 = {1{`RANDOM}};
  io_status_dup_22_s3_bits_way_en_r = _RAND_685[7:0];
  _RAND_686 = {1{`RANDOM}};
  io_status_dup_23_s1_bits_set_r = _RAND_686[5:0];
  _RAND_687 = {1{`RANDOM}};
  io_status_dup_23_s2_valid_r = _RAND_687[0:0];
  _RAND_688 = {1{`RANDOM}};
  io_status_dup_23_s2_bits_set_r = _RAND_688[5:0];
  _RAND_689 = {1{`RANDOM}};
  io_status_dup_23_s2_bits_way_en_r = _RAND_689[7:0];
  _RAND_690 = {1{`RANDOM}};
  io_status_dup_23_s3_valid_r = _RAND_690[0:0];
  _RAND_691 = {1{`RANDOM}};
  io_status_dup_23_s3_bits_set_r = _RAND_691[5:0];
  _RAND_692 = {1{`RANDOM}};
  io_status_dup_23_s3_bits_way_en_r = _RAND_692[7:0];
  _RAND_693 = {1{`RANDOM}};
  io_error_valid_REG = _RAND_693[0:0];
  _RAND_694 = {1{`RANDOM}};
  io_error_report_to_beu_r = _RAND_694[0:0];
  _RAND_695 = {1{`RANDOM}};
  io_error_report_to_beu_REG = _RAND_695[0:0];
  _RAND_696 = {2{`RANDOM}};
  io_error_paddr_r = _RAND_696[35:0];
  _RAND_697 = {1{`RANDOM}};
  io_error_source_tag_r = _RAND_697[0:0];
  _RAND_698 = {1{`RANDOM}};
  io_error_source_l2_r = _RAND_698[0:0];
  _RAND_699 = {1{`RANDOM}};
  io_error_opType_store_r = _RAND_699[0:0];
  _RAND_700 = {1{`RANDOM}};
  io_error_opType_probe_r = _RAND_700[0:0];
  _RAND_701 = {1{`RANDOM}};
  io_error_opType_release_r = _RAND_701[0:0];
  _RAND_702 = {1{`RANDOM}};
  io_error_opType_atom_r = _RAND_702[0:0];
  _RAND_703 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_703[0:0];
  _RAND_704 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_704[0:0];
  _RAND_705 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_705[2:0];
  _RAND_706 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_706[2:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    s1_valid_dup_1 = 1'h0;
  end
  if (reset) begin
    s2_valid_dup_0 = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_6 = 1'h0;
  end
  if (reset) begin
    s1_valid_dup_2 = 1'h0;
  end
  if (reset) begin
    s2_valid_dup_1 = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_7 = 1'h0;
  end
  if (reset) begin
    s1_valid_dup_0 = 1'h0;
  end
  if (reset) begin
    s2_valid_dup_3 = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_5 = 1'h0;
  end
  if (reset) begin
    lrsc_count_dup_0 = 6'h0;
  end
  if (reset) begin
    s3_s_amoalu_dup_0 = 1'h0;
  end
  if (reset) begin
    s3_s_amoalu_dup_1 = 1'h0;
  end
  if (reset) begin
    s1_valid = 1'h0;
  end
  if (reset) begin
    s1_valid_dup_3 = 1'h0;
  end
  if (reset) begin
    s1_valid_dup_4 = 1'h0;
  end
  if (reset) begin
    s1_valid_dup_5 = 1'h0;
  end
  if (reset) begin
    s1_valid_dup_for_status_0 = 1'h0;
  end
  if (reset) begin
    s1_valid_dup_for_status_1 = 1'h0;
  end
  if (reset) begin
    s1_valid_dup_for_status_2 = 1'h0;
  end
  if (reset) begin
    s1_valid_dup_for_status_3 = 1'h0;
  end
  if (reset) begin
    s1_valid_dup_for_status_4 = 1'h0;
  end
  if (reset) begin
    s1_valid_dup_for_status_5 = 1'h0;
  end
  if (reset) begin
    s1_valid_dup_for_status_6 = 1'h0;
  end
  if (reset) begin
    s1_valid_dup_for_status_7 = 1'h0;
  end
  if (reset) begin
    s1_valid_dup_for_status_8 = 1'h0;
  end
  if (reset) begin
    s1_valid_dup_for_status_9 = 1'h0;
  end
  if (reset) begin
    s1_valid_dup_for_status_10 = 1'h0;
  end
  if (reset) begin
    s1_valid_dup_for_status_11 = 1'h0;
  end
  if (reset) begin
    s1_valid_dup_for_status_12 = 1'h0;
  end
  if (reset) begin
    s1_valid_dup_for_status_13 = 1'h0;
  end
  if (reset) begin
    s1_valid_dup_for_status_14 = 1'h0;
  end
  if (reset) begin
    s1_valid_dup_for_status_15 = 1'h0;
  end
  if (reset) begin
    s1_valid_dup_for_status_16 = 1'h0;
  end
  if (reset) begin
    s1_valid_dup_for_status_17 = 1'h0;
  end
  if (reset) begin
    s1_valid_dup_for_status_18 = 1'h0;
  end
  if (reset) begin
    s1_valid_dup_for_status_19 = 1'h0;
  end
  if (reset) begin
    s1_valid_dup_for_status_20 = 1'h0;
  end
  if (reset) begin
    s1_valid_dup_for_status_21 = 1'h0;
  end
  if (reset) begin
    s1_valid_dup_for_status_22 = 1'h0;
  end
  if (reset) begin
    s1_valid_dup_for_status_23 = 1'h0;
  end
  if (reset) begin
    s2_valid = 1'h0;
  end
  if (reset) begin
    s2_valid_dup_2 = 1'h0;
  end
  if (reset) begin
    s2_valid_dup_4 = 1'h0;
  end
  if (reset) begin
    s2_valid_dup_5 = 1'h0;
  end
  if (reset) begin
    s2_valid_dup_6 = 1'h0;
  end
  if (reset) begin
    s2_valid_dup_7 = 1'h0;
  end
  if (reset) begin
    s2_valid_dup_for_status_0 = 1'h0;
  end
  if (reset) begin
    s2_valid_dup_for_status_1 = 1'h0;
  end
  if (reset) begin
    s2_valid_dup_for_status_2 = 1'h0;
  end
  if (reset) begin
    s2_valid_dup_for_status_3 = 1'h0;
  end
  if (reset) begin
    s2_valid_dup_for_status_4 = 1'h0;
  end
  if (reset) begin
    s2_valid_dup_for_status_5 = 1'h0;
  end
  if (reset) begin
    s2_valid_dup_for_status_6 = 1'h0;
  end
  if (reset) begin
    s2_valid_dup_for_status_7 = 1'h0;
  end
  if (reset) begin
    s2_valid_dup_for_status_8 = 1'h0;
  end
  if (reset) begin
    s2_valid_dup_for_status_9 = 1'h0;
  end
  if (reset) begin
    s2_valid_dup_for_status_10 = 1'h0;
  end
  if (reset) begin
    s2_valid_dup_for_status_11 = 1'h0;
  end
  if (reset) begin
    s2_valid_dup_for_status_12 = 1'h0;
  end
  if (reset) begin
    s2_valid_dup_for_status_13 = 1'h0;
  end
  if (reset) begin
    s2_valid_dup_for_status_14 = 1'h0;
  end
  if (reset) begin
    s2_valid_dup_for_status_15 = 1'h0;
  end
  if (reset) begin
    s2_valid_dup_for_status_16 = 1'h0;
  end
  if (reset) begin
    s2_valid_dup_for_status_17 = 1'h0;
  end
  if (reset) begin
    s2_valid_dup_for_status_18 = 1'h0;
  end
  if (reset) begin
    s2_valid_dup_for_status_19 = 1'h0;
  end
  if (reset) begin
    s2_valid_dup_for_status_20 = 1'h0;
  end
  if (reset) begin
    s2_valid_dup_for_status_21 = 1'h0;
  end
  if (reset) begin
    s2_valid_dup_for_status_22 = 1'h0;
  end
  if (reset) begin
    s2_valid_dup_for_status_23 = 1'h0;
  end
  if (reset) begin
    s3_valid = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_0 = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_1 = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_3 = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_4 = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_8 = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_9 = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_10 = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_11 = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_for_status_0 = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_for_status_1 = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_for_status_2 = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_for_status_3 = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_for_status_4 = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_for_status_5 = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_for_status_6 = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_for_status_7 = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_for_status_8 = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_for_status_9 = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_for_status_10 = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_for_status_11 = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_for_status_12 = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_for_status_13 = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_for_status_14 = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_for_status_15 = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_for_status_16 = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_for_status_17 = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_for_status_18 = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_for_status_19 = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_for_status_20 = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_for_status_21 = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_for_status_22 = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_for_status_23 = 1'h0;
  end
  if (reset) begin
    lrsc_count_dup_1 = 6'h0;
  end
  if (reset) begin
    lrsc_count_dup_2 = 6'h0;
  end
  if (reset) begin
    lrsc_count = 6'h0;
  end
  if (reset) begin
    s3_s_amoalu = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_for_meta_wvalid = 1'h0;
  end
  if (reset) begin
    s3_s_amoalu_dup_for_meta_wvalid = 1'h0;
  end
  if (reset) begin
    lrsc_count_dup_for_meta_wvalid = 6'h0;
  end
  if (reset) begin
    s3_valid_dup_for_err_wvalid = 1'h0;
  end
  if (reset) begin
    s3_s_amoalu_dup_for_err_wvalid = 1'h0;
  end
  if (reset) begin
    lrsc_count_dup_for_err_wvalid = 6'h0;
  end
  if (reset) begin
    s3_valid_dup_for_tag_wvalid = 1'h0;
  end
  if (reset) begin
    s3_s_amoalu_dup_for_tag_wvalid = 1'h0;
  end
  if (reset) begin
    lrsc_count_dup_for_tag_wvalid = 6'h0;
  end
  if (reset) begin
    s3_valid_dup_for_data_wvalid = 1'h0;
  end
  if (reset) begin
    s3_s_amoalu_dup_for_data_wvalid = 1'h0;
  end
  if (reset) begin
    lrsc_count_dup_for_data_wvalid = 6'h0;
  end
  if (reset) begin
    s3_valid_dup_for_data_wbank_0 = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_for_data_wbank_1 = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_for_data_wbank_2 = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_for_data_wbank_3 = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_for_data_wbank_4 = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_for_data_wbank_5 = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_for_data_wbank_6 = 1'h0;
  end
  if (reset) begin
    s3_valid_dup_for_data_wbank_7 = 1'h0;
  end
  if (reset) begin
    s3_s_amoalu_dup_for_data_wbank = 1'h0;
  end
  if (reset) begin
    lrsc_count_dup_for_data_wbank = 6'h0;
  end
  if (reset) begin
    s3_s_amoalu_dup_for_data_wbank_1 = 1'h0;
  end
  if (reset) begin
    lrsc_count_dup_for_data_wbank_1 = 6'h0;
  end
  if (reset) begin
    s3_s_amoalu_dup_for_data_wbank_2 = 1'h0;
  end
  if (reset) begin
    lrsc_count_dup_for_data_wbank_2 = 6'h0;
  end
  if (reset) begin
    s3_s_amoalu_dup_for_data_wbank_3 = 1'h0;
  end
  if (reset) begin
    lrsc_count_dup_for_data_wbank_3 = 6'h0;
  end
  if (reset) begin
    s3_s_amoalu_dup_for_data_wbank_4 = 1'h0;
  end
  if (reset) begin
    lrsc_count_dup_for_data_wbank_4 = 6'h0;
  end
  if (reset) begin
    s3_s_amoalu_dup_for_data_wbank_5 = 1'h0;
  end
  if (reset) begin
    lrsc_count_dup_for_data_wbank_5 = 6'h0;
  end
  if (reset) begin
    s3_s_amoalu_dup_for_data_wbank_6 = 1'h0;
  end
  if (reset) begin
    lrsc_count_dup_for_data_wbank_6 = 6'h0;
  end
  if (reset) begin
    s3_s_amoalu_dup_for_data_wbank_7 = 1'h0;
  end
  if (reset) begin
    lrsc_count_dup_for_data_wbank_7 = 6'h0;
  end
  if (reset) begin
    s3_valid_dup_for_wb_valid = 1'h0;
  end
  if (reset) begin
    s3_s_amoalu_dup_for_wb_valid = 1'h0;
  end
  if (reset) begin
    lrsc_count_dup_for_wb_valid = 6'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

