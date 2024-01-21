module ProbeQueue(
  input          clock,
  input          reset,
  output         io_mem_probe_ready,
  input          io_mem_probe_valid,
  input  [1:0]   io_mem_probe_bits_param,
  input  [35:0]  io_mem_probe_bits_address,
  input  [255:0] io_mem_probe_bits_data,
  input          io_pipe_req_ready,
  output         io_pipe_req_valid,
  output         io_pipe_req_bits_miss,
  output [1:0]   io_pipe_req_bits_miss_id,
  output [1:0]   io_pipe_req_bits_miss_param,
  output         io_pipe_req_bits_miss_dirty,
  output [7:0]   io_pipe_req_bits_miss_way_en,
  output         io_pipe_req_bits_probe,
  output [1:0]   io_pipe_req_bits_probe_param,
  output         io_pipe_req_bits_probe_need_data,
  output [3:0]   io_pipe_req_bits_source,
  output [4:0]   io_pipe_req_bits_cmd,
  output [38:0]  io_pipe_req_bits_vaddr,
  output [35:0]  io_pipe_req_bits_addr,
  output [511:0] io_pipe_req_bits_store_data,
  output [63:0]  io_pipe_req_bits_store_mask,
  output [2:0]   io_pipe_req_bits_word_idx,
  output [63:0]  io_pipe_req_bits_amo_data,
  output [7:0]   io_pipe_req_bits_amo_mask,
  output         io_pipe_req_bits_error,
  output         io_pipe_req_bits_replace,
  output [7:0]   io_pipe_req_bits_replace_way_en,
  output [3:0]   io_pipe_req_bits_id,
  input          io_lrsc_locked_block_valid,
  input  [35:0]  io_lrsc_locked_block_bits,
  input          io_update_resv_set,
  output [5:0]   io_perf_0_value,
  output [5:0]   io_perf_1_value,
  output [5:0]   io_perf_2_value,
  output [5:0]   io_perf_3_value,
  output [5:0]   io_perf_4_value
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
  reg [511:0] _RAND_13;
  reg [63:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [63:0] _RAND_16;
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
`endif // RANDOMIZE_REG_INIT
  wire  pipe_req_arb_io_in_0_ready; // @[Probe.scala 139:28]
  wire  pipe_req_arb_io_in_0_valid; // @[Probe.scala 139:28]
  wire  pipe_req_arb_io_in_0_bits_miss; // @[Probe.scala 139:28]
  wire [1:0] pipe_req_arb_io_in_0_bits_miss_id; // @[Probe.scala 139:28]
  wire [1:0] pipe_req_arb_io_in_0_bits_miss_param; // @[Probe.scala 139:28]
  wire  pipe_req_arb_io_in_0_bits_miss_dirty; // @[Probe.scala 139:28]
  wire [7:0] pipe_req_arb_io_in_0_bits_miss_way_en; // @[Probe.scala 139:28]
  wire  pipe_req_arb_io_in_0_bits_probe; // @[Probe.scala 139:28]
  wire [1:0] pipe_req_arb_io_in_0_bits_probe_param; // @[Probe.scala 139:28]
  wire  pipe_req_arb_io_in_0_bits_probe_need_data; // @[Probe.scala 139:28]
  wire [3:0] pipe_req_arb_io_in_0_bits_source; // @[Probe.scala 139:28]
  wire [4:0] pipe_req_arb_io_in_0_bits_cmd; // @[Probe.scala 139:28]
  wire [38:0] pipe_req_arb_io_in_0_bits_vaddr; // @[Probe.scala 139:28]
  wire [35:0] pipe_req_arb_io_in_0_bits_addr; // @[Probe.scala 139:28]
  wire [511:0] pipe_req_arb_io_in_0_bits_store_data; // @[Probe.scala 139:28]
  wire [63:0] pipe_req_arb_io_in_0_bits_store_mask; // @[Probe.scala 139:28]
  wire [2:0] pipe_req_arb_io_in_0_bits_word_idx; // @[Probe.scala 139:28]
  wire [63:0] pipe_req_arb_io_in_0_bits_amo_data; // @[Probe.scala 139:28]
  wire [7:0] pipe_req_arb_io_in_0_bits_amo_mask; // @[Probe.scala 139:28]
  wire  pipe_req_arb_io_in_0_bits_error; // @[Probe.scala 139:28]
  wire  pipe_req_arb_io_in_0_bits_replace; // @[Probe.scala 139:28]
  wire [7:0] pipe_req_arb_io_in_0_bits_replace_way_en; // @[Probe.scala 139:28]
  wire [3:0] pipe_req_arb_io_in_0_bits_id; // @[Probe.scala 139:28]
  wire  pipe_req_arb_io_in_1_ready; // @[Probe.scala 139:28]
  wire  pipe_req_arb_io_in_1_valid; // @[Probe.scala 139:28]
  wire  pipe_req_arb_io_in_1_bits_miss; // @[Probe.scala 139:28]
  wire [1:0] pipe_req_arb_io_in_1_bits_miss_id; // @[Probe.scala 139:28]
  wire [1:0] pipe_req_arb_io_in_1_bits_miss_param; // @[Probe.scala 139:28]
  wire  pipe_req_arb_io_in_1_bits_miss_dirty; // @[Probe.scala 139:28]
  wire [7:0] pipe_req_arb_io_in_1_bits_miss_way_en; // @[Probe.scala 139:28]
  wire  pipe_req_arb_io_in_1_bits_probe; // @[Probe.scala 139:28]
  wire [1:0] pipe_req_arb_io_in_1_bits_probe_param; // @[Probe.scala 139:28]
  wire  pipe_req_arb_io_in_1_bits_probe_need_data; // @[Probe.scala 139:28]
  wire [3:0] pipe_req_arb_io_in_1_bits_source; // @[Probe.scala 139:28]
  wire [4:0] pipe_req_arb_io_in_1_bits_cmd; // @[Probe.scala 139:28]
  wire [38:0] pipe_req_arb_io_in_1_bits_vaddr; // @[Probe.scala 139:28]
  wire [35:0] pipe_req_arb_io_in_1_bits_addr; // @[Probe.scala 139:28]
  wire [511:0] pipe_req_arb_io_in_1_bits_store_data; // @[Probe.scala 139:28]
  wire [63:0] pipe_req_arb_io_in_1_bits_store_mask; // @[Probe.scala 139:28]
  wire [2:0] pipe_req_arb_io_in_1_bits_word_idx; // @[Probe.scala 139:28]
  wire [63:0] pipe_req_arb_io_in_1_bits_amo_data; // @[Probe.scala 139:28]
  wire [7:0] pipe_req_arb_io_in_1_bits_amo_mask; // @[Probe.scala 139:28]
  wire  pipe_req_arb_io_in_1_bits_error; // @[Probe.scala 139:28]
  wire  pipe_req_arb_io_in_1_bits_replace; // @[Probe.scala 139:28]
  wire [7:0] pipe_req_arb_io_in_1_bits_replace_way_en; // @[Probe.scala 139:28]
  wire [3:0] pipe_req_arb_io_in_1_bits_id; // @[Probe.scala 139:28]
  wire  pipe_req_arb_io_in_2_ready; // @[Probe.scala 139:28]
  wire  pipe_req_arb_io_in_2_valid; // @[Probe.scala 139:28]
  wire [1:0] pipe_req_arb_io_in_2_bits_miss_id; // @[Probe.scala 139:28]
  wire  pipe_req_arb_io_in_2_bits_probe; // @[Probe.scala 139:28]
  wire [1:0] pipe_req_arb_io_in_2_bits_probe_param; // @[Probe.scala 139:28]
  wire  pipe_req_arb_io_in_2_bits_probe_need_data; // @[Probe.scala 139:28]
  wire [3:0] pipe_req_arb_io_in_2_bits_source; // @[Probe.scala 139:28]
  wire [4:0] pipe_req_arb_io_in_2_bits_cmd; // @[Probe.scala 139:28]
  wire [38:0] pipe_req_arb_io_in_2_bits_vaddr; // @[Probe.scala 139:28]
  wire [35:0] pipe_req_arb_io_in_2_bits_addr; // @[Probe.scala 139:28]
  wire [511:0] pipe_req_arb_io_in_2_bits_store_data; // @[Probe.scala 139:28]
  wire [63:0] pipe_req_arb_io_in_2_bits_store_mask; // @[Probe.scala 139:28]
  wire  pipe_req_arb_io_in_2_bits_replace; // @[Probe.scala 139:28]
  wire [7:0] pipe_req_arb_io_in_2_bits_replace_way_en; // @[Probe.scala 139:28]
  wire [3:0] pipe_req_arb_io_in_2_bits_id; // @[Probe.scala 139:28]
  wire  pipe_req_arb_io_in_3_ready; // @[Probe.scala 139:28]
  wire  pipe_req_arb_io_in_3_valid; // @[Probe.scala 139:28]
  wire  pipe_req_arb_io_in_3_bits_miss; // @[Probe.scala 139:28]
  wire [1:0] pipe_req_arb_io_in_3_bits_miss_id; // @[Probe.scala 139:28]
  wire [1:0] pipe_req_arb_io_in_3_bits_miss_param; // @[Probe.scala 139:28]
  wire  pipe_req_arb_io_in_3_bits_miss_dirty; // @[Probe.scala 139:28]
  wire [7:0] pipe_req_arb_io_in_3_bits_miss_way_en; // @[Probe.scala 139:28]
  wire  pipe_req_arb_io_in_3_bits_probe; // @[Probe.scala 139:28]
  wire [1:0] pipe_req_arb_io_in_3_bits_probe_param; // @[Probe.scala 139:28]
  wire  pipe_req_arb_io_in_3_bits_probe_need_data; // @[Probe.scala 139:28]
  wire [3:0] pipe_req_arb_io_in_3_bits_source; // @[Probe.scala 139:28]
  wire [4:0] pipe_req_arb_io_in_3_bits_cmd; // @[Probe.scala 139:28]
  wire [38:0] pipe_req_arb_io_in_3_bits_vaddr; // @[Probe.scala 139:28]
  wire [35:0] pipe_req_arb_io_in_3_bits_addr; // @[Probe.scala 139:28]
  wire [511:0] pipe_req_arb_io_in_3_bits_store_data; // @[Probe.scala 139:28]
  wire [63:0] pipe_req_arb_io_in_3_bits_store_mask; // @[Probe.scala 139:28]
  wire [2:0] pipe_req_arb_io_in_3_bits_word_idx; // @[Probe.scala 139:28]
  wire [63:0] pipe_req_arb_io_in_3_bits_amo_data; // @[Probe.scala 139:28]
  wire [7:0] pipe_req_arb_io_in_3_bits_amo_mask; // @[Probe.scala 139:28]
  wire  pipe_req_arb_io_in_3_bits_error; // @[Probe.scala 139:28]
  wire  pipe_req_arb_io_in_3_bits_replace; // @[Probe.scala 139:28]
  wire [7:0] pipe_req_arb_io_in_3_bits_replace_way_en; // @[Probe.scala 139:28]
  wire [3:0] pipe_req_arb_io_in_3_bits_id; // @[Probe.scala 139:28]
  wire  pipe_req_arb_io_out_ready; // @[Probe.scala 139:28]
  wire  pipe_req_arb_io_out_valid; // @[Probe.scala 139:28]
  wire  pipe_req_arb_io_out_bits_miss; // @[Probe.scala 139:28]
  wire [1:0] pipe_req_arb_io_out_bits_miss_id; // @[Probe.scala 139:28]
  wire [1:0] pipe_req_arb_io_out_bits_miss_param; // @[Probe.scala 139:28]
  wire  pipe_req_arb_io_out_bits_miss_dirty; // @[Probe.scala 139:28]
  wire [7:0] pipe_req_arb_io_out_bits_miss_way_en; // @[Probe.scala 139:28]
  wire  pipe_req_arb_io_out_bits_probe; // @[Probe.scala 139:28]
  wire [1:0] pipe_req_arb_io_out_bits_probe_param; // @[Probe.scala 139:28]
  wire  pipe_req_arb_io_out_bits_probe_need_data; // @[Probe.scala 139:28]
  wire [3:0] pipe_req_arb_io_out_bits_source; // @[Probe.scala 139:28]
  wire [4:0] pipe_req_arb_io_out_bits_cmd; // @[Probe.scala 139:28]
  wire [38:0] pipe_req_arb_io_out_bits_vaddr; // @[Probe.scala 139:28]
  wire [35:0] pipe_req_arb_io_out_bits_addr; // @[Probe.scala 139:28]
  wire [511:0] pipe_req_arb_io_out_bits_store_data; // @[Probe.scala 139:28]
  wire [63:0] pipe_req_arb_io_out_bits_store_mask; // @[Probe.scala 139:28]
  wire [2:0] pipe_req_arb_io_out_bits_word_idx; // @[Probe.scala 139:28]
  wire [63:0] pipe_req_arb_io_out_bits_amo_data; // @[Probe.scala 139:28]
  wire [7:0] pipe_req_arb_io_out_bits_amo_mask; // @[Probe.scala 139:28]
  wire  pipe_req_arb_io_out_bits_error; // @[Probe.scala 139:28]
  wire  pipe_req_arb_io_out_bits_replace; // @[Probe.scala 139:28]
  wire [7:0] pipe_req_arb_io_out_bits_replace_way_en; // @[Probe.scala 139:28]
  wire [3:0] pipe_req_arb_io_out_bits_id; // @[Probe.scala 139:28]
  wire  entries_0_clock; // @[Probe.scala 169:23]
  wire  entries_0_reset; // @[Probe.scala 169:23]
  wire  entries_0_io_req_ready; // @[Probe.scala 169:23]
  wire  entries_0_io_req_valid; // @[Probe.scala 169:23]
  wire [35:0] entries_0_io_req_bits_addr; // @[Probe.scala 169:23]
  wire [38:0] entries_0_io_req_bits_vaddr; // @[Probe.scala 169:23]
  wire [1:0] entries_0_io_req_bits_param; // @[Probe.scala 169:23]
  wire  entries_0_io_req_bits_needData; // @[Probe.scala 169:23]
  wire  entries_0_io_pipe_req_ready; // @[Probe.scala 169:23]
  wire  entries_0_io_pipe_req_valid; // @[Probe.scala 169:23]
  wire [1:0] entries_0_io_pipe_req_bits_probe_param; // @[Probe.scala 169:23]
  wire  entries_0_io_pipe_req_bits_probe_need_data; // @[Probe.scala 169:23]
  wire [38:0] entries_0_io_pipe_req_bits_vaddr; // @[Probe.scala 169:23]
  wire [35:0] entries_0_io_pipe_req_bits_addr; // @[Probe.scala 169:23]
  wire [3:0] entries_0_io_pipe_req_bits_id; // @[Probe.scala 169:23]
  wire  entries_0_io_pipe_resp_valid; // @[Probe.scala 169:23]
  wire [1:0] entries_0_io_pipe_resp_bits_id; // @[Probe.scala 169:23]
  wire  entries_0_io_lrsc_locked_block_valid; // @[Probe.scala 169:23]
  wire [35:0] entries_0_io_lrsc_locked_block_bits; // @[Probe.scala 169:23]
  wire [1:0] entries_0_io_id; // @[Probe.scala 169:23]
  wire  entries_0_io_block_addr_valid; // @[Probe.scala 169:23]
  wire  entries_1_clock; // @[Probe.scala 169:23]
  wire  entries_1_reset; // @[Probe.scala 169:23]
  wire  entries_1_io_req_ready; // @[Probe.scala 169:23]
  wire  entries_1_io_req_valid; // @[Probe.scala 169:23]
  wire [35:0] entries_1_io_req_bits_addr; // @[Probe.scala 169:23]
  wire [38:0] entries_1_io_req_bits_vaddr; // @[Probe.scala 169:23]
  wire [1:0] entries_1_io_req_bits_param; // @[Probe.scala 169:23]
  wire  entries_1_io_req_bits_needData; // @[Probe.scala 169:23]
  wire  entries_1_io_pipe_req_ready; // @[Probe.scala 169:23]
  wire  entries_1_io_pipe_req_valid; // @[Probe.scala 169:23]
  wire [1:0] entries_1_io_pipe_req_bits_probe_param; // @[Probe.scala 169:23]
  wire  entries_1_io_pipe_req_bits_probe_need_data; // @[Probe.scala 169:23]
  wire [38:0] entries_1_io_pipe_req_bits_vaddr; // @[Probe.scala 169:23]
  wire [35:0] entries_1_io_pipe_req_bits_addr; // @[Probe.scala 169:23]
  wire [3:0] entries_1_io_pipe_req_bits_id; // @[Probe.scala 169:23]
  wire  entries_1_io_pipe_resp_valid; // @[Probe.scala 169:23]
  wire [1:0] entries_1_io_pipe_resp_bits_id; // @[Probe.scala 169:23]
  wire  entries_1_io_lrsc_locked_block_valid; // @[Probe.scala 169:23]
  wire [35:0] entries_1_io_lrsc_locked_block_bits; // @[Probe.scala 169:23]
  wire [1:0] entries_1_io_id; // @[Probe.scala 169:23]
  wire  entries_1_io_block_addr_valid; // @[Probe.scala 169:23]
  wire  entries_2_clock; // @[Probe.scala 169:23]
  wire  entries_2_reset; // @[Probe.scala 169:23]
  wire  entries_2_io_req_ready; // @[Probe.scala 169:23]
  wire  entries_2_io_req_valid; // @[Probe.scala 169:23]
  wire [35:0] entries_2_io_req_bits_addr; // @[Probe.scala 169:23]
  wire [38:0] entries_2_io_req_bits_vaddr; // @[Probe.scala 169:23]
  wire [1:0] entries_2_io_req_bits_param; // @[Probe.scala 169:23]
  wire  entries_2_io_req_bits_needData; // @[Probe.scala 169:23]
  wire  entries_2_io_pipe_req_ready; // @[Probe.scala 169:23]
  wire  entries_2_io_pipe_req_valid; // @[Probe.scala 169:23]
  wire [1:0] entries_2_io_pipe_req_bits_probe_param; // @[Probe.scala 169:23]
  wire  entries_2_io_pipe_req_bits_probe_need_data; // @[Probe.scala 169:23]
  wire [38:0] entries_2_io_pipe_req_bits_vaddr; // @[Probe.scala 169:23]
  wire [35:0] entries_2_io_pipe_req_bits_addr; // @[Probe.scala 169:23]
  wire [3:0] entries_2_io_pipe_req_bits_id; // @[Probe.scala 169:23]
  wire  entries_2_io_pipe_resp_valid; // @[Probe.scala 169:23]
  wire [1:0] entries_2_io_pipe_resp_bits_id; // @[Probe.scala 169:23]
  wire  entries_2_io_lrsc_locked_block_valid; // @[Probe.scala 169:23]
  wire [35:0] entries_2_io_lrsc_locked_block_bits; // @[Probe.scala 169:23]
  wire [1:0] entries_2_io_id; // @[Probe.scala 169:23]
  wire  entries_2_io_block_addr_valid; // @[Probe.scala 169:23]
  wire  entries_3_clock; // @[Probe.scala 169:23]
  wire  entries_3_reset; // @[Probe.scala 169:23]
  wire  entries_3_io_req_ready; // @[Probe.scala 169:23]
  wire  entries_3_io_req_valid; // @[Probe.scala 169:23]
  wire [35:0] entries_3_io_req_bits_addr; // @[Probe.scala 169:23]
  wire [38:0] entries_3_io_req_bits_vaddr; // @[Probe.scala 169:23]
  wire [1:0] entries_3_io_req_bits_param; // @[Probe.scala 169:23]
  wire  entries_3_io_req_bits_needData; // @[Probe.scala 169:23]
  wire  entries_3_io_pipe_req_ready; // @[Probe.scala 169:23]
  wire  entries_3_io_pipe_req_valid; // @[Probe.scala 169:23]
  wire [1:0] entries_3_io_pipe_req_bits_probe_param; // @[Probe.scala 169:23]
  wire  entries_3_io_pipe_req_bits_probe_need_data; // @[Probe.scala 169:23]
  wire [38:0] entries_3_io_pipe_req_bits_vaddr; // @[Probe.scala 169:23]
  wire [35:0] entries_3_io_pipe_req_bits_addr; // @[Probe.scala 169:23]
  wire [3:0] entries_3_io_pipe_req_bits_id; // @[Probe.scala 169:23]
  wire  entries_3_io_pipe_resp_valid; // @[Probe.scala 169:23]
  wire [1:0] entries_3_io_pipe_resp_bits_id; // @[Probe.scala 169:23]
  wire  entries_3_io_lrsc_locked_block_valid; // @[Probe.scala 169:23]
  wire [35:0] entries_3_io_lrsc_locked_block_bits; // @[Probe.scala 169:23]
  wire [1:0] entries_3_io_id; // @[Probe.scala 169:23]
  wire  entries_3_io_block_addr_valid; // @[Probe.scala 169:23]
  wire  primary_ready_1 = entries_1_io_req_ready; // @[Probe.scala 142:28 174:24]
  wire  primary_ready_0 = entries_0_io_req_ready; // @[Probe.scala 142:28 174:24]
  wire  primary_ready_3 = entries_3_io_req_ready; // @[Probe.scala 142:28 174:24]
  wire  primary_ready_2 = entries_2_io_req_ready; // @[Probe.scala 142:28 174:24]
  wire [3:0] _allocate_T = {primary_ready_3,primary_ready_2,primary_ready_1,primary_ready_0}; // @[Probe.scala 143:32]
  wire  allocate = |_allocate_T; // @[Probe.scala 143:39]
  wire [1:0] _alloc_idx_T = primary_ready_2 ? 2'h2 : 2'h3; // @[Mux.scala 47:70]
  wire [1:0] _alloc_idx_T_1 = primary_ready_1 ? 2'h1 : _alloc_idx_T; // @[Mux.scala 47:70]
  wire [1:0] alloc_idx = primary_ready_0 ? 2'h0 : _alloc_idx_T_1; // @[Mux.scala 47:70]
  wire  _entry_io_pipe_resp_valid_T = io_pipe_req_ready & io_pipe_req_valid; // @[Decoupled.scala 50:35]
  reg  selected_req_valid; // @[Probe.scala 190:35]
  wire  _selected_req_bits_T = pipe_req_arb_io_out_ready & pipe_req_arb_io_out_valid; // @[Decoupled.scala 50:35]
  reg  selected_req_bits_miss; // @[Reg.scala 16:16]
  reg [1:0] selected_req_bits_miss_id; // @[Reg.scala 16:16]
  reg [1:0] selected_req_bits_miss_param; // @[Reg.scala 16:16]
  reg  selected_req_bits_miss_dirty; // @[Reg.scala 16:16]
  reg [7:0] selected_req_bits_miss_way_en; // @[Reg.scala 16:16]
  reg  selected_req_bits_probe; // @[Reg.scala 16:16]
  reg [1:0] selected_req_bits_probe_param; // @[Reg.scala 16:16]
  reg  selected_req_bits_probe_need_data; // @[Reg.scala 16:16]
  reg [3:0] selected_req_bits_source; // @[Reg.scala 16:16]
  reg [4:0] selected_req_bits_cmd; // @[Reg.scala 16:16]
  reg [38:0] selected_req_bits_vaddr; // @[Reg.scala 16:16]
  reg [35:0] selected_req_bits_addr; // @[Reg.scala 16:16]
  reg [511:0] selected_req_bits_store_data; // @[Reg.scala 16:16]
  reg [63:0] selected_req_bits_store_mask; // @[Reg.scala 16:16]
  reg [2:0] selected_req_bits_word_idx; // @[Reg.scala 16:16]
  reg [63:0] selected_req_bits_amo_data; // @[Reg.scala 16:16]
  reg [7:0] selected_req_bits_amo_mask; // @[Reg.scala 16:16]
  reg  selected_req_bits_error; // @[Reg.scala 16:16]
  reg  selected_req_bits_replace; // @[Reg.scala 16:16]
  reg [7:0] selected_req_bits_replace_way_en; // @[Reg.scala 16:16]
  reg [3:0] selected_req_bits_id; // @[Reg.scala 16:16]
  wire  _selected_lrsc_blocked_T_4 = io_lrsc_locked_block_valid & io_lrsc_locked_block_bits[35:6] ==
    pipe_req_arb_io_out_bits_addr[35:6]; // @[Probe.scala 194:32]
  wire  _selected_lrsc_blocked_T_9 = io_lrsc_locked_block_valid & io_lrsc_locked_block_bits[35:6] ==
    selected_req_bits_addr[35:6] & selected_req_valid; // @[Probe.scala 195:110]
  wire  selected_lrsc_blocked = _selected_req_bits_T ? _selected_lrsc_blocked_T_4 : _selected_lrsc_blocked_T_9; // @[Probe.scala 192:34]
  reg  resvsetProbeBlock; // @[Probe.scala 197:34]
  wire  _GEN_21 = _entry_io_pipe_resp_valid_T ? 1'h0 : selected_req_valid; // @[Probe.scala 204:27 205:24 190:35]
  wire [1:0] _perfValidCount_T = entries_0_io_block_addr_valid + entries_1_io_block_addr_valid; // @[Bitwise.scala 48:55]
  wire [1:0] _perfValidCount_T_2 = entries_2_io_block_addr_valid + entries_3_io_block_addr_valid; // @[Bitwise.scala 48:55]
  reg [2:0] perfValidCount; // @[Probe.scala 235:31]
  wire [2:0] _T_27 = 3'h4 / 2'h2; // @[Probe.scala 239:118]
  wire [4:0] _T_32 = 3'h4 * 2'h3; // @[Probe.scala 240:118]
  wire [4:0] _T_33 = _T_32 / 3'h4; // @[Probe.scala 240:122]
  wire [4:0] _GEN_23 = {{2'd0}, perfValidCount}; // @[Probe.scala 240:95]
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
  Arbiter_12 pipe_req_arb ( // @[Probe.scala 139:28]
    .io_in_0_ready(pipe_req_arb_io_in_0_ready),
    .io_in_0_valid(pipe_req_arb_io_in_0_valid),
    .io_in_0_bits_miss(pipe_req_arb_io_in_0_bits_miss),
    .io_in_0_bits_miss_id(pipe_req_arb_io_in_0_bits_miss_id),
    .io_in_0_bits_miss_param(pipe_req_arb_io_in_0_bits_miss_param),
    .io_in_0_bits_miss_dirty(pipe_req_arb_io_in_0_bits_miss_dirty),
    .io_in_0_bits_miss_way_en(pipe_req_arb_io_in_0_bits_miss_way_en),
    .io_in_0_bits_probe(pipe_req_arb_io_in_0_bits_probe),
    .io_in_0_bits_probe_param(pipe_req_arb_io_in_0_bits_probe_param),
    .io_in_0_bits_probe_need_data(pipe_req_arb_io_in_0_bits_probe_need_data),
    .io_in_0_bits_source(pipe_req_arb_io_in_0_bits_source),
    .io_in_0_bits_cmd(pipe_req_arb_io_in_0_bits_cmd),
    .io_in_0_bits_vaddr(pipe_req_arb_io_in_0_bits_vaddr),
    .io_in_0_bits_addr(pipe_req_arb_io_in_0_bits_addr),
    .io_in_0_bits_store_data(pipe_req_arb_io_in_0_bits_store_data),
    .io_in_0_bits_store_mask(pipe_req_arb_io_in_0_bits_store_mask),
    .io_in_0_bits_word_idx(pipe_req_arb_io_in_0_bits_word_idx),
    .io_in_0_bits_amo_data(pipe_req_arb_io_in_0_bits_amo_data),
    .io_in_0_bits_amo_mask(pipe_req_arb_io_in_0_bits_amo_mask),
    .io_in_0_bits_error(pipe_req_arb_io_in_0_bits_error),
    .io_in_0_bits_replace(pipe_req_arb_io_in_0_bits_replace),
    .io_in_0_bits_replace_way_en(pipe_req_arb_io_in_0_bits_replace_way_en),
    .io_in_0_bits_id(pipe_req_arb_io_in_0_bits_id),
    .io_in_1_ready(pipe_req_arb_io_in_1_ready),
    .io_in_1_valid(pipe_req_arb_io_in_1_valid),
    .io_in_1_bits_miss(pipe_req_arb_io_in_1_bits_miss),
    .io_in_1_bits_miss_id(pipe_req_arb_io_in_1_bits_miss_id),
    .io_in_1_bits_miss_param(pipe_req_arb_io_in_1_bits_miss_param),
    .io_in_1_bits_miss_dirty(pipe_req_arb_io_in_1_bits_miss_dirty),
    .io_in_1_bits_miss_way_en(pipe_req_arb_io_in_1_bits_miss_way_en),
    .io_in_1_bits_probe(pipe_req_arb_io_in_1_bits_probe),
    .io_in_1_bits_probe_param(pipe_req_arb_io_in_1_bits_probe_param),
    .io_in_1_bits_probe_need_data(pipe_req_arb_io_in_1_bits_probe_need_data),
    .io_in_1_bits_source(pipe_req_arb_io_in_1_bits_source),
    .io_in_1_bits_cmd(pipe_req_arb_io_in_1_bits_cmd),
    .io_in_1_bits_vaddr(pipe_req_arb_io_in_1_bits_vaddr),
    .io_in_1_bits_addr(pipe_req_arb_io_in_1_bits_addr),
    .io_in_1_bits_store_data(pipe_req_arb_io_in_1_bits_store_data),
    .io_in_1_bits_store_mask(pipe_req_arb_io_in_1_bits_store_mask),
    .io_in_1_bits_word_idx(pipe_req_arb_io_in_1_bits_word_idx),
    .io_in_1_bits_amo_data(pipe_req_arb_io_in_1_bits_amo_data),
    .io_in_1_bits_amo_mask(pipe_req_arb_io_in_1_bits_amo_mask),
    .io_in_1_bits_error(pipe_req_arb_io_in_1_bits_error),
    .io_in_1_bits_replace(pipe_req_arb_io_in_1_bits_replace),
    .io_in_1_bits_replace_way_en(pipe_req_arb_io_in_1_bits_replace_way_en),
    .io_in_1_bits_id(pipe_req_arb_io_in_1_bits_id),
    .io_in_2_ready(pipe_req_arb_io_in_2_ready),
    .io_in_2_valid(pipe_req_arb_io_in_2_valid),
    .io_in_2_bits_miss_id(pipe_req_arb_io_in_2_bits_miss_id),
    .io_in_2_bits_probe(pipe_req_arb_io_in_2_bits_probe),
    .io_in_2_bits_probe_param(pipe_req_arb_io_in_2_bits_probe_param),
    .io_in_2_bits_probe_need_data(pipe_req_arb_io_in_2_bits_probe_need_data),
    .io_in_2_bits_source(pipe_req_arb_io_in_2_bits_source),
    .io_in_2_bits_cmd(pipe_req_arb_io_in_2_bits_cmd),
    .io_in_2_bits_vaddr(pipe_req_arb_io_in_2_bits_vaddr),
    .io_in_2_bits_addr(pipe_req_arb_io_in_2_bits_addr),
    .io_in_2_bits_store_data(pipe_req_arb_io_in_2_bits_store_data),
    .io_in_2_bits_store_mask(pipe_req_arb_io_in_2_bits_store_mask),
    .io_in_2_bits_replace(pipe_req_arb_io_in_2_bits_replace),
    .io_in_2_bits_replace_way_en(pipe_req_arb_io_in_2_bits_replace_way_en),
    .io_in_2_bits_id(pipe_req_arb_io_in_2_bits_id),
    .io_in_3_ready(pipe_req_arb_io_in_3_ready),
    .io_in_3_valid(pipe_req_arb_io_in_3_valid),
    .io_in_3_bits_miss(pipe_req_arb_io_in_3_bits_miss),
    .io_in_3_bits_miss_id(pipe_req_arb_io_in_3_bits_miss_id),
    .io_in_3_bits_miss_param(pipe_req_arb_io_in_3_bits_miss_param),
    .io_in_3_bits_miss_dirty(pipe_req_arb_io_in_3_bits_miss_dirty),
    .io_in_3_bits_miss_way_en(pipe_req_arb_io_in_3_bits_miss_way_en),
    .io_in_3_bits_probe(pipe_req_arb_io_in_3_bits_probe),
    .io_in_3_bits_probe_param(pipe_req_arb_io_in_3_bits_probe_param),
    .io_in_3_bits_probe_need_data(pipe_req_arb_io_in_3_bits_probe_need_data),
    .io_in_3_bits_source(pipe_req_arb_io_in_3_bits_source),
    .io_in_3_bits_cmd(pipe_req_arb_io_in_3_bits_cmd),
    .io_in_3_bits_vaddr(pipe_req_arb_io_in_3_bits_vaddr),
    .io_in_3_bits_addr(pipe_req_arb_io_in_3_bits_addr),
    .io_in_3_bits_store_data(pipe_req_arb_io_in_3_bits_store_data),
    .io_in_3_bits_store_mask(pipe_req_arb_io_in_3_bits_store_mask),
    .io_in_3_bits_word_idx(pipe_req_arb_io_in_3_bits_word_idx),
    .io_in_3_bits_amo_data(pipe_req_arb_io_in_3_bits_amo_data),
    .io_in_3_bits_amo_mask(pipe_req_arb_io_in_3_bits_amo_mask),
    .io_in_3_bits_error(pipe_req_arb_io_in_3_bits_error),
    .io_in_3_bits_replace(pipe_req_arb_io_in_3_bits_replace),
    .io_in_3_bits_replace_way_en(pipe_req_arb_io_in_3_bits_replace_way_en),
    .io_in_3_bits_id(pipe_req_arb_io_in_3_bits_id),
    .io_out_ready(pipe_req_arb_io_out_ready),
    .io_out_valid(pipe_req_arb_io_out_valid),
    .io_out_bits_miss(pipe_req_arb_io_out_bits_miss),
    .io_out_bits_miss_id(pipe_req_arb_io_out_bits_miss_id),
    .io_out_bits_miss_param(pipe_req_arb_io_out_bits_miss_param),
    .io_out_bits_miss_dirty(pipe_req_arb_io_out_bits_miss_dirty),
    .io_out_bits_miss_way_en(pipe_req_arb_io_out_bits_miss_way_en),
    .io_out_bits_probe(pipe_req_arb_io_out_bits_probe),
    .io_out_bits_probe_param(pipe_req_arb_io_out_bits_probe_param),
    .io_out_bits_probe_need_data(pipe_req_arb_io_out_bits_probe_need_data),
    .io_out_bits_source(pipe_req_arb_io_out_bits_source),
    .io_out_bits_cmd(pipe_req_arb_io_out_bits_cmd),
    .io_out_bits_vaddr(pipe_req_arb_io_out_bits_vaddr),
    .io_out_bits_addr(pipe_req_arb_io_out_bits_addr),
    .io_out_bits_store_data(pipe_req_arb_io_out_bits_store_data),
    .io_out_bits_store_mask(pipe_req_arb_io_out_bits_store_mask),
    .io_out_bits_word_idx(pipe_req_arb_io_out_bits_word_idx),
    .io_out_bits_amo_data(pipe_req_arb_io_out_bits_amo_data),
    .io_out_bits_amo_mask(pipe_req_arb_io_out_bits_amo_mask),
    .io_out_bits_error(pipe_req_arb_io_out_bits_error),
    .io_out_bits_replace(pipe_req_arb_io_out_bits_replace),
    .io_out_bits_replace_way_en(pipe_req_arb_io_out_bits_replace_way_en),
    .io_out_bits_id(pipe_req_arb_io_out_bits_id)
  );
  ProbeEntry entries_0 ( // @[Probe.scala 169:23]
    .clock(entries_0_clock),
    .reset(entries_0_reset),
    .io_req_ready(entries_0_io_req_ready),
    .io_req_valid(entries_0_io_req_valid),
    .io_req_bits_addr(entries_0_io_req_bits_addr),
    .io_req_bits_vaddr(entries_0_io_req_bits_vaddr),
    .io_req_bits_param(entries_0_io_req_bits_param),
    .io_req_bits_needData(entries_0_io_req_bits_needData),
    .io_pipe_req_ready(entries_0_io_pipe_req_ready),
    .io_pipe_req_valid(entries_0_io_pipe_req_valid),
    .io_pipe_req_bits_probe_param(entries_0_io_pipe_req_bits_probe_param),
    .io_pipe_req_bits_probe_need_data(entries_0_io_pipe_req_bits_probe_need_data),
    .io_pipe_req_bits_vaddr(entries_0_io_pipe_req_bits_vaddr),
    .io_pipe_req_bits_addr(entries_0_io_pipe_req_bits_addr),
    .io_pipe_req_bits_id(entries_0_io_pipe_req_bits_id),
    .io_pipe_resp_valid(entries_0_io_pipe_resp_valid),
    .io_pipe_resp_bits_id(entries_0_io_pipe_resp_bits_id),
    .io_lrsc_locked_block_valid(entries_0_io_lrsc_locked_block_valid),
    .io_lrsc_locked_block_bits(entries_0_io_lrsc_locked_block_bits),
    .io_id(entries_0_io_id),
    .io_block_addr_valid(entries_0_io_block_addr_valid)
  );
  ProbeEntry entries_1 ( // @[Probe.scala 169:23]
    .clock(entries_1_clock),
    .reset(entries_1_reset),
    .io_req_ready(entries_1_io_req_ready),
    .io_req_valid(entries_1_io_req_valid),
    .io_req_bits_addr(entries_1_io_req_bits_addr),
    .io_req_bits_vaddr(entries_1_io_req_bits_vaddr),
    .io_req_bits_param(entries_1_io_req_bits_param),
    .io_req_bits_needData(entries_1_io_req_bits_needData),
    .io_pipe_req_ready(entries_1_io_pipe_req_ready),
    .io_pipe_req_valid(entries_1_io_pipe_req_valid),
    .io_pipe_req_bits_probe_param(entries_1_io_pipe_req_bits_probe_param),
    .io_pipe_req_bits_probe_need_data(entries_1_io_pipe_req_bits_probe_need_data),
    .io_pipe_req_bits_vaddr(entries_1_io_pipe_req_bits_vaddr),
    .io_pipe_req_bits_addr(entries_1_io_pipe_req_bits_addr),
    .io_pipe_req_bits_id(entries_1_io_pipe_req_bits_id),
    .io_pipe_resp_valid(entries_1_io_pipe_resp_valid),
    .io_pipe_resp_bits_id(entries_1_io_pipe_resp_bits_id),
    .io_lrsc_locked_block_valid(entries_1_io_lrsc_locked_block_valid),
    .io_lrsc_locked_block_bits(entries_1_io_lrsc_locked_block_bits),
    .io_id(entries_1_io_id),
    .io_block_addr_valid(entries_1_io_block_addr_valid)
  );
  ProbeEntry entries_2 ( // @[Probe.scala 169:23]
    .clock(entries_2_clock),
    .reset(entries_2_reset),
    .io_req_ready(entries_2_io_req_ready),
    .io_req_valid(entries_2_io_req_valid),
    .io_req_bits_addr(entries_2_io_req_bits_addr),
    .io_req_bits_vaddr(entries_2_io_req_bits_vaddr),
    .io_req_bits_param(entries_2_io_req_bits_param),
    .io_req_bits_needData(entries_2_io_req_bits_needData),
    .io_pipe_req_ready(entries_2_io_pipe_req_ready),
    .io_pipe_req_valid(entries_2_io_pipe_req_valid),
    .io_pipe_req_bits_probe_param(entries_2_io_pipe_req_bits_probe_param),
    .io_pipe_req_bits_probe_need_data(entries_2_io_pipe_req_bits_probe_need_data),
    .io_pipe_req_bits_vaddr(entries_2_io_pipe_req_bits_vaddr),
    .io_pipe_req_bits_addr(entries_2_io_pipe_req_bits_addr),
    .io_pipe_req_bits_id(entries_2_io_pipe_req_bits_id),
    .io_pipe_resp_valid(entries_2_io_pipe_resp_valid),
    .io_pipe_resp_bits_id(entries_2_io_pipe_resp_bits_id),
    .io_lrsc_locked_block_valid(entries_2_io_lrsc_locked_block_valid),
    .io_lrsc_locked_block_bits(entries_2_io_lrsc_locked_block_bits),
    .io_id(entries_2_io_id),
    .io_block_addr_valid(entries_2_io_block_addr_valid)
  );
  ProbeEntry entries_3 ( // @[Probe.scala 169:23]
    .clock(entries_3_clock),
    .reset(entries_3_reset),
    .io_req_ready(entries_3_io_req_ready),
    .io_req_valid(entries_3_io_req_valid),
    .io_req_bits_addr(entries_3_io_req_bits_addr),
    .io_req_bits_vaddr(entries_3_io_req_bits_vaddr),
    .io_req_bits_param(entries_3_io_req_bits_param),
    .io_req_bits_needData(entries_3_io_req_bits_needData),
    .io_pipe_req_ready(entries_3_io_pipe_req_ready),
    .io_pipe_req_valid(entries_3_io_pipe_req_valid),
    .io_pipe_req_bits_probe_param(entries_3_io_pipe_req_bits_probe_param),
    .io_pipe_req_bits_probe_need_data(entries_3_io_pipe_req_bits_probe_need_data),
    .io_pipe_req_bits_vaddr(entries_3_io_pipe_req_bits_vaddr),
    .io_pipe_req_bits_addr(entries_3_io_pipe_req_bits_addr),
    .io_pipe_req_bits_id(entries_3_io_pipe_req_bits_id),
    .io_pipe_resp_valid(entries_3_io_pipe_resp_valid),
    .io_pipe_resp_bits_id(entries_3_io_pipe_resp_bits_id),
    .io_lrsc_locked_block_valid(entries_3_io_lrsc_locked_block_valid),
    .io_lrsc_locked_block_bits(entries_3_io_lrsc_locked_block_bits),
    .io_id(entries_3_io_id),
    .io_block_addr_valid(entries_3_io_block_addr_valid)
  );
  assign io_mem_probe_ready = |_allocate_T; // @[Probe.scala 143:39]
  assign io_pipe_req_valid = selected_req_valid & ~resvsetProbeBlock; // @[Probe.scala 202:43]
  assign io_pipe_req_bits_miss = selected_req_bits_miss; // @[Probe.scala 203:20]
  assign io_pipe_req_bits_miss_id = selected_req_bits_miss_id; // @[Probe.scala 203:20]
  assign io_pipe_req_bits_miss_param = selected_req_bits_miss_param; // @[Probe.scala 203:20]
  assign io_pipe_req_bits_miss_dirty = selected_req_bits_miss_dirty; // @[Probe.scala 203:20]
  assign io_pipe_req_bits_miss_way_en = selected_req_bits_miss_way_en; // @[Probe.scala 203:20]
  assign io_pipe_req_bits_probe = selected_req_bits_probe; // @[Probe.scala 203:20]
  assign io_pipe_req_bits_probe_param = selected_req_bits_probe_param; // @[Probe.scala 203:20]
  assign io_pipe_req_bits_probe_need_data = selected_req_bits_probe_need_data; // @[Probe.scala 203:20]
  assign io_pipe_req_bits_source = selected_req_bits_source; // @[Probe.scala 203:20]
  assign io_pipe_req_bits_cmd = selected_req_bits_cmd; // @[Probe.scala 203:20]
  assign io_pipe_req_bits_vaddr = selected_req_bits_vaddr; // @[Probe.scala 203:20]
  assign io_pipe_req_bits_addr = selected_req_bits_addr; // @[Probe.scala 203:20]
  assign io_pipe_req_bits_store_data = selected_req_bits_store_data; // @[Probe.scala 203:20]
  assign io_pipe_req_bits_store_mask = selected_req_bits_store_mask; // @[Probe.scala 203:20]
  assign io_pipe_req_bits_word_idx = selected_req_bits_word_idx; // @[Probe.scala 203:20]
  assign io_pipe_req_bits_amo_data = selected_req_bits_amo_data; // @[Probe.scala 203:20]
  assign io_pipe_req_bits_amo_mask = selected_req_bits_amo_mask; // @[Probe.scala 203:20]
  assign io_pipe_req_bits_error = selected_req_bits_error; // @[Probe.scala 203:20]
  assign io_pipe_req_bits_replace = selected_req_bits_replace; // @[Probe.scala 203:20]
  assign io_pipe_req_bits_replace_way_en = selected_req_bits_replace_way_en; // @[Probe.scala 203:20]
  assign io_pipe_req_bits_id = selected_req_bits_id; // @[Probe.scala 203:20]
  assign io_perf_0_value = {{5'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_1_value = {{5'd0}, io_perf_1_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_2_value = {{5'd0}, io_perf_2_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_3_value = {{5'd0}, io_perf_3_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_4_value = {{5'd0}, io_perf_4_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign pipe_req_arb_io_in_0_valid = entries_0_io_pipe_req_valid; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_0_bits_miss = 1'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_0_bits_miss_id = 2'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_0_bits_miss_param = 2'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_0_bits_miss_dirty = 1'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_0_bits_miss_way_en = 8'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_0_bits_probe = 1'h1; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_0_bits_probe_param = entries_0_io_pipe_req_bits_probe_param; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_0_bits_probe_need_data = entries_0_io_pipe_req_bits_probe_need_data; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_0_bits_source = 4'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_0_bits_cmd = 5'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_0_bits_vaddr = entries_0_io_pipe_req_bits_vaddr; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_0_bits_addr = entries_0_io_pipe_req_bits_addr; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_0_bits_store_data = 512'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_0_bits_store_mask = 64'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_0_bits_word_idx = 3'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_0_bits_amo_data = 64'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_0_bits_amo_mask = 8'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_0_bits_error = 1'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_0_bits_replace = 1'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_0_bits_replace_way_en = 8'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_0_bits_id = entries_0_io_pipe_req_bits_id; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_1_valid = entries_1_io_pipe_req_valid; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_1_bits_miss = 1'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_1_bits_miss_id = 2'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_1_bits_miss_param = 2'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_1_bits_miss_dirty = 1'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_1_bits_miss_way_en = 8'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_1_bits_probe = 1'h1; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_1_bits_probe_param = entries_1_io_pipe_req_bits_probe_param; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_1_bits_probe_need_data = entries_1_io_pipe_req_bits_probe_need_data; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_1_bits_source = 4'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_1_bits_cmd = 5'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_1_bits_vaddr = entries_1_io_pipe_req_bits_vaddr; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_1_bits_addr = entries_1_io_pipe_req_bits_addr; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_1_bits_store_data = 512'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_1_bits_store_mask = 64'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_1_bits_word_idx = 3'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_1_bits_amo_data = 64'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_1_bits_amo_mask = 8'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_1_bits_error = 1'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_1_bits_replace = 1'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_1_bits_replace_way_en = 8'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_1_bits_id = entries_1_io_pipe_req_bits_id; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_2_valid = entries_2_io_pipe_req_valid; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_2_bits_miss_id = 2'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_2_bits_probe = 1'h1; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_2_bits_probe_param = entries_2_io_pipe_req_bits_probe_param; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_2_bits_probe_need_data = entries_2_io_pipe_req_bits_probe_need_data; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_2_bits_source = 4'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_2_bits_cmd = 5'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_2_bits_vaddr = entries_2_io_pipe_req_bits_vaddr; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_2_bits_addr = entries_2_io_pipe_req_bits_addr; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_2_bits_store_data = 512'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_2_bits_store_mask = 64'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_2_bits_replace = 1'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_2_bits_replace_way_en = 8'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_2_bits_id = entries_2_io_pipe_req_bits_id; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_3_valid = entries_3_io_pipe_req_valid; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_3_bits_miss = 1'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_3_bits_miss_id = 2'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_3_bits_miss_param = 2'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_3_bits_miss_dirty = 1'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_3_bits_miss_way_en = 8'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_3_bits_probe = 1'h1; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_3_bits_probe_param = entries_3_io_pipe_req_bits_probe_param; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_3_bits_probe_need_data = entries_3_io_pipe_req_bits_probe_need_data; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_3_bits_source = 4'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_3_bits_cmd = 5'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_3_bits_vaddr = entries_3_io_pipe_req_bits_vaddr; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_3_bits_addr = entries_3_io_pipe_req_bits_addr; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_3_bits_store_data = 512'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_3_bits_store_mask = 64'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_3_bits_word_idx = 3'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_3_bits_amo_data = 64'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_3_bits_amo_mask = 8'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_3_bits_error = 1'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_3_bits_replace = 1'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_3_bits_replace_way_en = 8'h0; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_in_3_bits_id = entries_3_io_pipe_req_bits_id; // @[Probe.scala 178:27]
  assign pipe_req_arb_io_out_ready = ~selected_req_valid | _entry_io_pipe_resp_valid_T; // @[Probe.scala 201:52]
  assign entries_0_clock = clock;
  assign entries_0_reset = reset;
  assign entries_0_io_req_valid = 2'h0 == alloc_idx & allocate & io_mem_probe_valid; // @[Probe.scala 173:59]
  assign entries_0_io_req_bits_addr = io_mem_probe_bits_address; // @[Probe.scala 147:17 151:12]
  assign entries_0_io_req_bits_vaddr = {{3'd0}, io_mem_probe_bits_address}; // @[Probe.scala 147:17 160:15]
  assign entries_0_io_req_bits_param = io_mem_probe_bits_param; // @[Probe.scala 147:17 162:13]
  assign entries_0_io_req_bits_needData = io_mem_probe_bits_data[0]; // @[Probe.scala 163:41]
  assign entries_0_io_pipe_req_ready = pipe_req_arb_io_in_0_ready; // @[Probe.scala 178:27]
  assign entries_0_io_pipe_resp_valid = io_pipe_req_ready & io_pipe_req_valid; // @[Decoupled.scala 50:35]
  assign entries_0_io_pipe_resp_bits_id = io_pipe_req_bits_id[1:0]; // @[Probe.scala 182:32]
  assign entries_0_io_lrsc_locked_block_valid = io_lrsc_locked_block_valid; // @[Probe.scala 184:32]
  assign entries_0_io_lrsc_locked_block_bits = io_lrsc_locked_block_bits; // @[Probe.scala 184:32]
  assign entries_0_io_id = 2'h0; // @[Probe.scala 170:17]
  assign entries_1_clock = clock;
  assign entries_1_reset = reset;
  assign entries_1_io_req_valid = 2'h1 == alloc_idx & allocate & io_mem_probe_valid; // @[Probe.scala 173:59]
  assign entries_1_io_req_bits_addr = io_mem_probe_bits_address; // @[Probe.scala 147:17 151:12]
  assign entries_1_io_req_bits_vaddr = {{3'd0}, io_mem_probe_bits_address}; // @[Probe.scala 147:17 160:15]
  assign entries_1_io_req_bits_param = io_mem_probe_bits_param; // @[Probe.scala 147:17 162:13]
  assign entries_1_io_req_bits_needData = io_mem_probe_bits_data[0]; // @[Probe.scala 163:41]
  assign entries_1_io_pipe_req_ready = pipe_req_arb_io_in_1_ready; // @[Probe.scala 178:27]
  assign entries_1_io_pipe_resp_valid = io_pipe_req_ready & io_pipe_req_valid; // @[Decoupled.scala 50:35]
  assign entries_1_io_pipe_resp_bits_id = io_pipe_req_bits_id[1:0]; // @[Probe.scala 182:32]
  assign entries_1_io_lrsc_locked_block_valid = io_lrsc_locked_block_valid; // @[Probe.scala 184:32]
  assign entries_1_io_lrsc_locked_block_bits = io_lrsc_locked_block_bits; // @[Probe.scala 184:32]
  assign entries_1_io_id = 2'h1; // @[Probe.scala 170:17]
  assign entries_2_clock = clock;
  assign entries_2_reset = reset;
  assign entries_2_io_req_valid = 2'h2 == alloc_idx & allocate & io_mem_probe_valid; // @[Probe.scala 173:59]
  assign entries_2_io_req_bits_addr = io_mem_probe_bits_address; // @[Probe.scala 147:17 151:12]
  assign entries_2_io_req_bits_vaddr = {{3'd0}, io_mem_probe_bits_address}; // @[Probe.scala 147:17 160:15]
  assign entries_2_io_req_bits_param = io_mem_probe_bits_param; // @[Probe.scala 147:17 162:13]
  assign entries_2_io_req_bits_needData = io_mem_probe_bits_data[0]; // @[Probe.scala 163:41]
  assign entries_2_io_pipe_req_ready = pipe_req_arb_io_in_2_ready; // @[Probe.scala 178:27]
  assign entries_2_io_pipe_resp_valid = io_pipe_req_ready & io_pipe_req_valid; // @[Decoupled.scala 50:35]
  assign entries_2_io_pipe_resp_bits_id = io_pipe_req_bits_id[1:0]; // @[Probe.scala 182:32]
  assign entries_2_io_lrsc_locked_block_valid = io_lrsc_locked_block_valid; // @[Probe.scala 184:32]
  assign entries_2_io_lrsc_locked_block_bits = io_lrsc_locked_block_bits; // @[Probe.scala 184:32]
  assign entries_2_io_id = 2'h2; // @[Probe.scala 170:17]
  assign entries_3_clock = clock;
  assign entries_3_reset = reset;
  assign entries_3_io_req_valid = 2'h3 == alloc_idx & allocate & io_mem_probe_valid; // @[Probe.scala 173:59]
  assign entries_3_io_req_bits_addr = io_mem_probe_bits_address; // @[Probe.scala 147:17 151:12]
  assign entries_3_io_req_bits_vaddr = {{3'd0}, io_mem_probe_bits_address}; // @[Probe.scala 147:17 160:15]
  assign entries_3_io_req_bits_param = io_mem_probe_bits_param; // @[Probe.scala 147:17 162:13]
  assign entries_3_io_req_bits_needData = io_mem_probe_bits_data[0]; // @[Probe.scala 163:41]
  assign entries_3_io_pipe_req_ready = pipe_req_arb_io_in_3_ready; // @[Probe.scala 178:27]
  assign entries_3_io_pipe_resp_valid = io_pipe_req_ready & io_pipe_req_valid; // @[Decoupled.scala 50:35]
  assign entries_3_io_pipe_resp_bits_id = io_pipe_req_bits_id[1:0]; // @[Probe.scala 182:32]
  assign entries_3_io_lrsc_locked_block_valid = io_lrsc_locked_block_valid; // @[Probe.scala 184:32]
  assign entries_3_io_lrsc_locked_block_bits = io_lrsc_locked_block_bits; // @[Probe.scala 184:32]
  assign entries_3_io_id = 2'h3; // @[Probe.scala 170:17]
  always @(posedge clock) begin
    if (_selected_req_bits_T) begin // @[Reg.scala 17:18]
      selected_req_bits_miss <= pipe_req_arb_io_out_bits_miss; // @[Reg.scala 17:22]
    end
    if (_selected_req_bits_T) begin // @[Reg.scala 17:18]
      selected_req_bits_miss_id <= pipe_req_arb_io_out_bits_miss_id; // @[Reg.scala 17:22]
    end
    if (_selected_req_bits_T) begin // @[Reg.scala 17:18]
      selected_req_bits_miss_param <= pipe_req_arb_io_out_bits_miss_param; // @[Reg.scala 17:22]
    end
    if (_selected_req_bits_T) begin // @[Reg.scala 17:18]
      selected_req_bits_miss_dirty <= pipe_req_arb_io_out_bits_miss_dirty; // @[Reg.scala 17:22]
    end
    if (_selected_req_bits_T) begin // @[Reg.scala 17:18]
      selected_req_bits_miss_way_en <= pipe_req_arb_io_out_bits_miss_way_en; // @[Reg.scala 17:22]
    end
    if (_selected_req_bits_T) begin // @[Reg.scala 17:18]
      selected_req_bits_probe <= pipe_req_arb_io_out_bits_probe; // @[Reg.scala 17:22]
    end
    if (_selected_req_bits_T) begin // @[Reg.scala 17:18]
      selected_req_bits_probe_param <= pipe_req_arb_io_out_bits_probe_param; // @[Reg.scala 17:22]
    end
    if (_selected_req_bits_T) begin // @[Reg.scala 17:18]
      selected_req_bits_probe_need_data <= pipe_req_arb_io_out_bits_probe_need_data; // @[Reg.scala 17:22]
    end
    if (_selected_req_bits_T) begin // @[Reg.scala 17:18]
      selected_req_bits_source <= pipe_req_arb_io_out_bits_source; // @[Reg.scala 17:22]
    end
    if (_selected_req_bits_T) begin // @[Reg.scala 17:18]
      selected_req_bits_cmd <= pipe_req_arb_io_out_bits_cmd; // @[Reg.scala 17:22]
    end
    if (_selected_req_bits_T) begin // @[Reg.scala 17:18]
      selected_req_bits_vaddr <= pipe_req_arb_io_out_bits_vaddr; // @[Reg.scala 17:22]
    end
    if (_selected_req_bits_T) begin // @[Reg.scala 17:18]
      selected_req_bits_addr <= pipe_req_arb_io_out_bits_addr; // @[Reg.scala 17:22]
    end
    if (_selected_req_bits_T) begin // @[Reg.scala 17:18]
      selected_req_bits_store_data <= pipe_req_arb_io_out_bits_store_data; // @[Reg.scala 17:22]
    end
    if (_selected_req_bits_T) begin // @[Reg.scala 17:18]
      selected_req_bits_store_mask <= pipe_req_arb_io_out_bits_store_mask; // @[Reg.scala 17:22]
    end
    if (_selected_req_bits_T) begin // @[Reg.scala 17:18]
      selected_req_bits_word_idx <= pipe_req_arb_io_out_bits_word_idx; // @[Reg.scala 17:22]
    end
    if (_selected_req_bits_T) begin // @[Reg.scala 17:18]
      selected_req_bits_amo_data <= pipe_req_arb_io_out_bits_amo_data; // @[Reg.scala 17:22]
    end
    if (_selected_req_bits_T) begin // @[Reg.scala 17:18]
      selected_req_bits_amo_mask <= pipe_req_arb_io_out_bits_amo_mask; // @[Reg.scala 17:22]
    end
    if (_selected_req_bits_T) begin // @[Reg.scala 17:18]
      selected_req_bits_error <= pipe_req_arb_io_out_bits_error; // @[Reg.scala 17:22]
    end
    if (_selected_req_bits_T) begin // @[Reg.scala 17:18]
      selected_req_bits_replace <= pipe_req_arb_io_out_bits_replace; // @[Reg.scala 17:22]
    end
    if (_selected_req_bits_T) begin // @[Reg.scala 17:18]
      selected_req_bits_replace_way_en <= pipe_req_arb_io_out_bits_replace_way_en; // @[Reg.scala 17:22]
    end
    if (_selected_req_bits_T) begin // @[Reg.scala 17:18]
      selected_req_bits_id <= pipe_req_arb_io_out_bits_id; // @[Reg.scala 17:22]
    end
    resvsetProbeBlock <= io_update_resv_set | selected_lrsc_blocked; // @[Probe.scala 197:54]
    perfValidCount <= _perfValidCount_T + _perfValidCount_T_2; // @[Bitwise.scala 48:55]
    io_perf_0_value_REG <= io_pipe_req_ready & io_pipe_req_valid; // @[Decoupled.scala 50:35]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_1_value_REG <= perfValidCount < 3'h1; // @[Probe.scala 238:48]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_2_value_REG <= perfValidCount > 3'h1 & perfValidCount <= _T_27; // @[Probe.scala 239:77]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_3_value_REG <= perfValidCount > _T_27 & _GEN_23 <= _T_33; // @[Probe.scala 240:77]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_4_value_REG <= _GEN_23 > _T_33; // @[Probe.scala 241:48]
    io_perf_4_value_REG_1 <= io_perf_4_value_REG; // @[PerfCounterUtils.scala 295:27]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Probe.scala 207:35]
      selected_req_valid <= 1'h0; // @[Probe.scala 208:24]
    end else begin
      selected_req_valid <= _selected_req_bits_T | _GEN_21;
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
  selected_req_valid = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  selected_req_bits_miss = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  selected_req_bits_miss_id = _RAND_2[1:0];
  _RAND_3 = {1{`RANDOM}};
  selected_req_bits_miss_param = _RAND_3[1:0];
  _RAND_4 = {1{`RANDOM}};
  selected_req_bits_miss_dirty = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  selected_req_bits_miss_way_en = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  selected_req_bits_probe = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  selected_req_bits_probe_param = _RAND_7[1:0];
  _RAND_8 = {1{`RANDOM}};
  selected_req_bits_probe_need_data = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  selected_req_bits_source = _RAND_9[3:0];
  _RAND_10 = {1{`RANDOM}};
  selected_req_bits_cmd = _RAND_10[4:0];
  _RAND_11 = {2{`RANDOM}};
  selected_req_bits_vaddr = _RAND_11[38:0];
  _RAND_12 = {2{`RANDOM}};
  selected_req_bits_addr = _RAND_12[35:0];
  _RAND_13 = {16{`RANDOM}};
  selected_req_bits_store_data = _RAND_13[511:0];
  _RAND_14 = {2{`RANDOM}};
  selected_req_bits_store_mask = _RAND_14[63:0];
  _RAND_15 = {1{`RANDOM}};
  selected_req_bits_word_idx = _RAND_15[2:0];
  _RAND_16 = {2{`RANDOM}};
  selected_req_bits_amo_data = _RAND_16[63:0];
  _RAND_17 = {1{`RANDOM}};
  selected_req_bits_amo_mask = _RAND_17[7:0];
  _RAND_18 = {1{`RANDOM}};
  selected_req_bits_error = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  selected_req_bits_replace = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  selected_req_bits_replace_way_en = _RAND_20[7:0];
  _RAND_21 = {1{`RANDOM}};
  selected_req_bits_id = _RAND_21[3:0];
  _RAND_22 = {1{`RANDOM}};
  resvsetProbeBlock = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  perfValidCount = _RAND_23[2:0];
  _RAND_24 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  io_perf_4_value_REG = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  io_perf_4_value_REG_1 = _RAND_33[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    selected_req_valid = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

