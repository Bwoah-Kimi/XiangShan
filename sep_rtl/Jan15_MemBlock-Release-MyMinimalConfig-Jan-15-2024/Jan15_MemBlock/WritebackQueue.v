module WritebackQueue(
  input          clock,
  input          reset,
  output         io_req_ready,
  input          io_req_valid,
  input  [2:0]   io_req_bits_param,
  input          io_req_bits_voluntary,
  input          io_req_bits_hasData,
  input          io_req_bits_delay_release,
  input  [1:0]   io_req_bits_miss_id,
  input  [35:0]  io_req_bits_addr,
  input  [511:0] io_req_bits_data,
  output         io_req_ready_dup_0,
  output         io_req_ready_dup_1,
  output         io_req_ready_dup_2,
  output         io_req_ready_dup_3,
  output         io_req_ready_dup_4,
  output         io_req_ready_dup_5,
  output         io_req_ready_dup_6,
  output         io_req_ready_dup_7,
  output         io_req_ready_dup_8,
  output         io_req_ready_dup_9,
  output         io_req_ready_dup_10,
  output         io_req_ready_dup_11,
  input          io_mem_release_ready,
  output         io_mem_release_valid,
  output [2:0]   io_mem_release_bits_opcode,
  output [2:0]   io_mem_release_bits_param,
  output [2:0]   io_mem_release_bits_size,
  output [3:0]   io_mem_release_bits_source,
  output [35:0]  io_mem_release_bits_address,
  output [255:0] io_mem_release_bits_data,
  input          io_mem_grant_valid,
  input  [3:0]   io_mem_grant_bits_source,
  input          io_release_wakeup_valid,
  input  [1:0]   io_release_wakeup_bits,
  input          io_release_update_valid,
  input  [35:0]  io_release_update_bits_addr,
  input  [7:0]   io_release_update_bits_mask,
  input  [511:0] io_release_update_bits_data,
  input          io_probe_ttob_check_req_valid,
  input  [35:0]  io_probe_ttob_check_req_bits_addr,
  output         io_probe_ttob_check_resp_bits_toN,
  input          io_miss_req_valid,
  input  [35:0]  io_miss_req_bits,
  output         io_block_miss_req,
  output [5:0]   io_perf_0_value,
  output [5:0]   io_perf_1_value,
  output [5:0]   io_perf_2_value,
  output [5:0]   io_perf_3_value,
  output [5:0]   io_perf_4_value
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [511:0] _RAND_1;
  reg [511:0] _RAND_2;
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
`endif // RANDOMIZE_REG_INIT
  wire  entries_0_clock; // @[WritebackQueue.scala 589:53]
  wire  entries_0_reset; // @[WritebackQueue.scala 589:53]
  wire [2:0] entries_0_io_id; // @[WritebackQueue.scala 589:53]
  wire  entries_0_io_primary_valid; // @[WritebackQueue.scala 589:53]
  wire  entries_0_io_primary_ready; // @[WritebackQueue.scala 589:53]
  wire  entries_0_io_primary_ready_dup_0; // @[WritebackQueue.scala 589:53]
  wire  entries_0_io_primary_ready_dup_1; // @[WritebackQueue.scala 589:53]
  wire  entries_0_io_primary_ready_dup_2; // @[WritebackQueue.scala 589:53]
  wire  entries_0_io_primary_ready_dup_3; // @[WritebackQueue.scala 589:53]
  wire  entries_0_io_primary_ready_dup_4; // @[WritebackQueue.scala 589:53]
  wire  entries_0_io_primary_ready_dup_5; // @[WritebackQueue.scala 589:53]
  wire  entries_0_io_primary_ready_dup_6; // @[WritebackQueue.scala 589:53]
  wire  entries_0_io_primary_ready_dup_7; // @[WritebackQueue.scala 589:53]
  wire  entries_0_io_primary_ready_dup_8; // @[WritebackQueue.scala 589:53]
  wire  entries_0_io_primary_ready_dup_9; // @[WritebackQueue.scala 589:53]
  wire  entries_0_io_primary_ready_dup_10; // @[WritebackQueue.scala 589:53]
  wire  entries_0_io_primary_ready_dup_11; // @[WritebackQueue.scala 589:53]
  wire  entries_0_io_secondary_valid; // @[WritebackQueue.scala 589:53]
  wire  entries_0_io_secondary_ready; // @[WritebackQueue.scala 589:53]
  wire  entries_0_io_req_valid; // @[WritebackQueue.scala 589:53]
  wire [2:0] entries_0_io_req_bits_param; // @[WritebackQueue.scala 589:53]
  wire  entries_0_io_req_bits_voluntary; // @[WritebackQueue.scala 589:53]
  wire  entries_0_io_req_bits_hasData; // @[WritebackQueue.scala 589:53]
  wire  entries_0_io_req_bits_delay_release; // @[WritebackQueue.scala 589:53]
  wire [1:0] entries_0_io_req_bits_miss_id; // @[WritebackQueue.scala 589:53]
  wire [35:0] entries_0_io_req_bits_addr; // @[WritebackQueue.scala 589:53]
  wire [511:0] entries_0_io_req_data_data; // @[WritebackQueue.scala 589:53]
  wire  entries_0_io_mem_release_ready; // @[WritebackQueue.scala 589:53]
  wire  entries_0_io_mem_release_valid; // @[WritebackQueue.scala 589:53]
  wire [2:0] entries_0_io_mem_release_bits_opcode; // @[WritebackQueue.scala 589:53]
  wire [2:0] entries_0_io_mem_release_bits_param; // @[WritebackQueue.scala 589:53]
  wire [2:0] entries_0_io_mem_release_bits_size; // @[WritebackQueue.scala 589:53]
  wire [3:0] entries_0_io_mem_release_bits_source; // @[WritebackQueue.scala 589:53]
  wire [35:0] entries_0_io_mem_release_bits_address; // @[WritebackQueue.scala 589:53]
  wire [255:0] entries_0_io_mem_release_bits_data; // @[WritebackQueue.scala 589:53]
  wire  entries_0_io_mem_grant_ready; // @[WritebackQueue.scala 589:53]
  wire  entries_0_io_mem_grant_valid; // @[WritebackQueue.scala 589:53]
  wire  entries_0_io_block_addr_valid; // @[WritebackQueue.scala 589:53]
  wire [35:0] entries_0_io_block_addr_bits; // @[WritebackQueue.scala 589:53]
  wire  entries_0_io_release_wakeup_valid; // @[WritebackQueue.scala 589:53]
  wire [1:0] entries_0_io_release_wakeup_bits; // @[WritebackQueue.scala 589:53]
  wire  entries_0_io_release_update_valid; // @[WritebackQueue.scala 589:53]
  wire [35:0] entries_0_io_release_update_bits_addr; // @[WritebackQueue.scala 589:53]
  wire [7:0] entries_0_io_release_update_bits_mask_delayed; // @[WritebackQueue.scala 589:53]
  wire [511:0] entries_0_io_release_update_bits_data_delayed; // @[WritebackQueue.scala 589:53]
  wire  entries_0_io_release_update_bits_mask_orr; // @[WritebackQueue.scala 589:53]
  wire  entries_0_io_probe_ttob_check_req_valid; // @[WritebackQueue.scala 589:53]
  wire [35:0] entries_0_io_probe_ttob_check_req_bits_addr; // @[WritebackQueue.scala 589:53]
  wire  entries_0_io_probe_ttob_check_resp_bits_toN; // @[WritebackQueue.scala 589:53]
  wire  entries_1_clock; // @[WritebackQueue.scala 589:53]
  wire  entries_1_reset; // @[WritebackQueue.scala 589:53]
  wire [2:0] entries_1_io_id; // @[WritebackQueue.scala 589:53]
  wire  entries_1_io_primary_valid; // @[WritebackQueue.scala 589:53]
  wire  entries_1_io_primary_ready; // @[WritebackQueue.scala 589:53]
  wire  entries_1_io_primary_ready_dup_0; // @[WritebackQueue.scala 589:53]
  wire  entries_1_io_primary_ready_dup_1; // @[WritebackQueue.scala 589:53]
  wire  entries_1_io_primary_ready_dup_2; // @[WritebackQueue.scala 589:53]
  wire  entries_1_io_primary_ready_dup_3; // @[WritebackQueue.scala 589:53]
  wire  entries_1_io_primary_ready_dup_4; // @[WritebackQueue.scala 589:53]
  wire  entries_1_io_primary_ready_dup_5; // @[WritebackQueue.scala 589:53]
  wire  entries_1_io_primary_ready_dup_6; // @[WritebackQueue.scala 589:53]
  wire  entries_1_io_primary_ready_dup_7; // @[WritebackQueue.scala 589:53]
  wire  entries_1_io_primary_ready_dup_8; // @[WritebackQueue.scala 589:53]
  wire  entries_1_io_primary_ready_dup_9; // @[WritebackQueue.scala 589:53]
  wire  entries_1_io_primary_ready_dup_10; // @[WritebackQueue.scala 589:53]
  wire  entries_1_io_primary_ready_dup_11; // @[WritebackQueue.scala 589:53]
  wire  entries_1_io_secondary_valid; // @[WritebackQueue.scala 589:53]
  wire  entries_1_io_secondary_ready; // @[WritebackQueue.scala 589:53]
  wire  entries_1_io_req_valid; // @[WritebackQueue.scala 589:53]
  wire [2:0] entries_1_io_req_bits_param; // @[WritebackQueue.scala 589:53]
  wire  entries_1_io_req_bits_voluntary; // @[WritebackQueue.scala 589:53]
  wire  entries_1_io_req_bits_hasData; // @[WritebackQueue.scala 589:53]
  wire  entries_1_io_req_bits_delay_release; // @[WritebackQueue.scala 589:53]
  wire [1:0] entries_1_io_req_bits_miss_id; // @[WritebackQueue.scala 589:53]
  wire [35:0] entries_1_io_req_bits_addr; // @[WritebackQueue.scala 589:53]
  wire [511:0] entries_1_io_req_data_data; // @[WritebackQueue.scala 589:53]
  wire  entries_1_io_mem_release_ready; // @[WritebackQueue.scala 589:53]
  wire  entries_1_io_mem_release_valid; // @[WritebackQueue.scala 589:53]
  wire [2:0] entries_1_io_mem_release_bits_opcode; // @[WritebackQueue.scala 589:53]
  wire [2:0] entries_1_io_mem_release_bits_param; // @[WritebackQueue.scala 589:53]
  wire [2:0] entries_1_io_mem_release_bits_size; // @[WritebackQueue.scala 589:53]
  wire [3:0] entries_1_io_mem_release_bits_source; // @[WritebackQueue.scala 589:53]
  wire [35:0] entries_1_io_mem_release_bits_address; // @[WritebackQueue.scala 589:53]
  wire [255:0] entries_1_io_mem_release_bits_data; // @[WritebackQueue.scala 589:53]
  wire  entries_1_io_mem_grant_ready; // @[WritebackQueue.scala 589:53]
  wire  entries_1_io_mem_grant_valid; // @[WritebackQueue.scala 589:53]
  wire  entries_1_io_block_addr_valid; // @[WritebackQueue.scala 589:53]
  wire [35:0] entries_1_io_block_addr_bits; // @[WritebackQueue.scala 589:53]
  wire  entries_1_io_release_wakeup_valid; // @[WritebackQueue.scala 589:53]
  wire [1:0] entries_1_io_release_wakeup_bits; // @[WritebackQueue.scala 589:53]
  wire  entries_1_io_release_update_valid; // @[WritebackQueue.scala 589:53]
  wire [35:0] entries_1_io_release_update_bits_addr; // @[WritebackQueue.scala 589:53]
  wire [7:0] entries_1_io_release_update_bits_mask_delayed; // @[WritebackQueue.scala 589:53]
  wire [511:0] entries_1_io_release_update_bits_data_delayed; // @[WritebackQueue.scala 589:53]
  wire  entries_1_io_release_update_bits_mask_orr; // @[WritebackQueue.scala 589:53]
  wire  entries_1_io_probe_ttob_check_req_valid; // @[WritebackQueue.scala 589:53]
  wire [35:0] entries_1_io_probe_ttob_check_req_bits_addr; // @[WritebackQueue.scala 589:53]
  wire  entries_1_io_probe_ttob_check_resp_bits_toN; // @[WritebackQueue.scala 589:53]
  wire  entries_2_clock; // @[WritebackQueue.scala 589:53]
  wire  entries_2_reset; // @[WritebackQueue.scala 589:53]
  wire [2:0] entries_2_io_id; // @[WritebackQueue.scala 589:53]
  wire  entries_2_io_primary_valid; // @[WritebackQueue.scala 589:53]
  wire  entries_2_io_primary_ready; // @[WritebackQueue.scala 589:53]
  wire  entries_2_io_primary_ready_dup_0; // @[WritebackQueue.scala 589:53]
  wire  entries_2_io_primary_ready_dup_1; // @[WritebackQueue.scala 589:53]
  wire  entries_2_io_primary_ready_dup_2; // @[WritebackQueue.scala 589:53]
  wire  entries_2_io_primary_ready_dup_3; // @[WritebackQueue.scala 589:53]
  wire  entries_2_io_primary_ready_dup_4; // @[WritebackQueue.scala 589:53]
  wire  entries_2_io_primary_ready_dup_5; // @[WritebackQueue.scala 589:53]
  wire  entries_2_io_primary_ready_dup_6; // @[WritebackQueue.scala 589:53]
  wire  entries_2_io_primary_ready_dup_7; // @[WritebackQueue.scala 589:53]
  wire  entries_2_io_primary_ready_dup_8; // @[WritebackQueue.scala 589:53]
  wire  entries_2_io_primary_ready_dup_9; // @[WritebackQueue.scala 589:53]
  wire  entries_2_io_primary_ready_dup_10; // @[WritebackQueue.scala 589:53]
  wire  entries_2_io_primary_ready_dup_11; // @[WritebackQueue.scala 589:53]
  wire  entries_2_io_secondary_valid; // @[WritebackQueue.scala 589:53]
  wire  entries_2_io_secondary_ready; // @[WritebackQueue.scala 589:53]
  wire  entries_2_io_req_valid; // @[WritebackQueue.scala 589:53]
  wire [2:0] entries_2_io_req_bits_param; // @[WritebackQueue.scala 589:53]
  wire  entries_2_io_req_bits_voluntary; // @[WritebackQueue.scala 589:53]
  wire  entries_2_io_req_bits_hasData; // @[WritebackQueue.scala 589:53]
  wire  entries_2_io_req_bits_delay_release; // @[WritebackQueue.scala 589:53]
  wire [1:0] entries_2_io_req_bits_miss_id; // @[WritebackQueue.scala 589:53]
  wire [35:0] entries_2_io_req_bits_addr; // @[WritebackQueue.scala 589:53]
  wire [511:0] entries_2_io_req_data_data; // @[WritebackQueue.scala 589:53]
  wire  entries_2_io_mem_release_ready; // @[WritebackQueue.scala 589:53]
  wire  entries_2_io_mem_release_valid; // @[WritebackQueue.scala 589:53]
  wire [2:0] entries_2_io_mem_release_bits_opcode; // @[WritebackQueue.scala 589:53]
  wire [2:0] entries_2_io_mem_release_bits_param; // @[WritebackQueue.scala 589:53]
  wire [2:0] entries_2_io_mem_release_bits_size; // @[WritebackQueue.scala 589:53]
  wire [3:0] entries_2_io_mem_release_bits_source; // @[WritebackQueue.scala 589:53]
  wire [35:0] entries_2_io_mem_release_bits_address; // @[WritebackQueue.scala 589:53]
  wire [255:0] entries_2_io_mem_release_bits_data; // @[WritebackQueue.scala 589:53]
  wire  entries_2_io_mem_grant_ready; // @[WritebackQueue.scala 589:53]
  wire  entries_2_io_mem_grant_valid; // @[WritebackQueue.scala 589:53]
  wire  entries_2_io_block_addr_valid; // @[WritebackQueue.scala 589:53]
  wire [35:0] entries_2_io_block_addr_bits; // @[WritebackQueue.scala 589:53]
  wire  entries_2_io_release_wakeup_valid; // @[WritebackQueue.scala 589:53]
  wire [1:0] entries_2_io_release_wakeup_bits; // @[WritebackQueue.scala 589:53]
  wire  entries_2_io_release_update_valid; // @[WritebackQueue.scala 589:53]
  wire [35:0] entries_2_io_release_update_bits_addr; // @[WritebackQueue.scala 589:53]
  wire [7:0] entries_2_io_release_update_bits_mask_delayed; // @[WritebackQueue.scala 589:53]
  wire [511:0] entries_2_io_release_update_bits_data_delayed; // @[WritebackQueue.scala 589:53]
  wire  entries_2_io_release_update_bits_mask_orr; // @[WritebackQueue.scala 589:53]
  wire  entries_2_io_probe_ttob_check_req_valid; // @[WritebackQueue.scala 589:53]
  wire [35:0] entries_2_io_probe_ttob_check_req_bits_addr; // @[WritebackQueue.scala 589:53]
  wire  entries_2_io_probe_ttob_check_resp_bits_toN; // @[WritebackQueue.scala 589:53]
  wire  entries_3_clock; // @[WritebackQueue.scala 589:53]
  wire  entries_3_reset; // @[WritebackQueue.scala 589:53]
  wire [2:0] entries_3_io_id; // @[WritebackQueue.scala 589:53]
  wire  entries_3_io_primary_valid; // @[WritebackQueue.scala 589:53]
  wire  entries_3_io_primary_ready; // @[WritebackQueue.scala 589:53]
  wire  entries_3_io_primary_ready_dup_0; // @[WritebackQueue.scala 589:53]
  wire  entries_3_io_primary_ready_dup_1; // @[WritebackQueue.scala 589:53]
  wire  entries_3_io_primary_ready_dup_2; // @[WritebackQueue.scala 589:53]
  wire  entries_3_io_primary_ready_dup_3; // @[WritebackQueue.scala 589:53]
  wire  entries_3_io_primary_ready_dup_4; // @[WritebackQueue.scala 589:53]
  wire  entries_3_io_primary_ready_dup_5; // @[WritebackQueue.scala 589:53]
  wire  entries_3_io_primary_ready_dup_6; // @[WritebackQueue.scala 589:53]
  wire  entries_3_io_primary_ready_dup_7; // @[WritebackQueue.scala 589:53]
  wire  entries_3_io_primary_ready_dup_8; // @[WritebackQueue.scala 589:53]
  wire  entries_3_io_primary_ready_dup_9; // @[WritebackQueue.scala 589:53]
  wire  entries_3_io_primary_ready_dup_10; // @[WritebackQueue.scala 589:53]
  wire  entries_3_io_primary_ready_dup_11; // @[WritebackQueue.scala 589:53]
  wire  entries_3_io_secondary_valid; // @[WritebackQueue.scala 589:53]
  wire  entries_3_io_secondary_ready; // @[WritebackQueue.scala 589:53]
  wire  entries_3_io_req_valid; // @[WritebackQueue.scala 589:53]
  wire [2:0] entries_3_io_req_bits_param; // @[WritebackQueue.scala 589:53]
  wire  entries_3_io_req_bits_voluntary; // @[WritebackQueue.scala 589:53]
  wire  entries_3_io_req_bits_hasData; // @[WritebackQueue.scala 589:53]
  wire  entries_3_io_req_bits_delay_release; // @[WritebackQueue.scala 589:53]
  wire [1:0] entries_3_io_req_bits_miss_id; // @[WritebackQueue.scala 589:53]
  wire [35:0] entries_3_io_req_bits_addr; // @[WritebackQueue.scala 589:53]
  wire [511:0] entries_3_io_req_data_data; // @[WritebackQueue.scala 589:53]
  wire  entries_3_io_mem_release_ready; // @[WritebackQueue.scala 589:53]
  wire  entries_3_io_mem_release_valid; // @[WritebackQueue.scala 589:53]
  wire [2:0] entries_3_io_mem_release_bits_opcode; // @[WritebackQueue.scala 589:53]
  wire [2:0] entries_3_io_mem_release_bits_param; // @[WritebackQueue.scala 589:53]
  wire [2:0] entries_3_io_mem_release_bits_size; // @[WritebackQueue.scala 589:53]
  wire [3:0] entries_3_io_mem_release_bits_source; // @[WritebackQueue.scala 589:53]
  wire [35:0] entries_3_io_mem_release_bits_address; // @[WritebackQueue.scala 589:53]
  wire [255:0] entries_3_io_mem_release_bits_data; // @[WritebackQueue.scala 589:53]
  wire  entries_3_io_mem_grant_ready; // @[WritebackQueue.scala 589:53]
  wire  entries_3_io_mem_grant_valid; // @[WritebackQueue.scala 589:53]
  wire  entries_3_io_block_addr_valid; // @[WritebackQueue.scala 589:53]
  wire [35:0] entries_3_io_block_addr_bits; // @[WritebackQueue.scala 589:53]
  wire  entries_3_io_release_wakeup_valid; // @[WritebackQueue.scala 589:53]
  wire [1:0] entries_3_io_release_wakeup_bits; // @[WritebackQueue.scala 589:53]
  wire  entries_3_io_release_update_valid; // @[WritebackQueue.scala 589:53]
  wire [35:0] entries_3_io_release_update_bits_addr; // @[WritebackQueue.scala 589:53]
  wire [7:0] entries_3_io_release_update_bits_mask_delayed; // @[WritebackQueue.scala 589:53]
  wire [511:0] entries_3_io_release_update_bits_data_delayed; // @[WritebackQueue.scala 589:53]
  wire  entries_3_io_release_update_bits_mask_orr; // @[WritebackQueue.scala 589:53]
  wire  entries_3_io_probe_ttob_check_req_valid; // @[WritebackQueue.scala 589:53]
  wire [35:0] entries_3_io_probe_ttob_check_req_bits_addr; // @[WritebackQueue.scala 589:53]
  wire  entries_3_io_probe_ttob_check_resp_bits_toN; // @[WritebackQueue.scala 589:53]
  wire  entries_4_clock; // @[WritebackQueue.scala 589:53]
  wire  entries_4_reset; // @[WritebackQueue.scala 589:53]
  wire [3:0] entries_4_io_id; // @[WritebackQueue.scala 589:53]
  wire  entries_4_io_primary_valid; // @[WritebackQueue.scala 589:53]
  wire  entries_4_io_primary_ready; // @[WritebackQueue.scala 589:53]
  wire  entries_4_io_primary_ready_dup_0; // @[WritebackQueue.scala 589:53]
  wire  entries_4_io_primary_ready_dup_1; // @[WritebackQueue.scala 589:53]
  wire  entries_4_io_primary_ready_dup_2; // @[WritebackQueue.scala 589:53]
  wire  entries_4_io_primary_ready_dup_3; // @[WritebackQueue.scala 589:53]
  wire  entries_4_io_primary_ready_dup_4; // @[WritebackQueue.scala 589:53]
  wire  entries_4_io_primary_ready_dup_5; // @[WritebackQueue.scala 589:53]
  wire  entries_4_io_primary_ready_dup_6; // @[WritebackQueue.scala 589:53]
  wire  entries_4_io_primary_ready_dup_7; // @[WritebackQueue.scala 589:53]
  wire  entries_4_io_primary_ready_dup_8; // @[WritebackQueue.scala 589:53]
  wire  entries_4_io_primary_ready_dup_9; // @[WritebackQueue.scala 589:53]
  wire  entries_4_io_primary_ready_dup_10; // @[WritebackQueue.scala 589:53]
  wire  entries_4_io_primary_ready_dup_11; // @[WritebackQueue.scala 589:53]
  wire  entries_4_io_secondary_valid; // @[WritebackQueue.scala 589:53]
  wire  entries_4_io_secondary_ready; // @[WritebackQueue.scala 589:53]
  wire  entries_4_io_req_valid; // @[WritebackQueue.scala 589:53]
  wire [2:0] entries_4_io_req_bits_param; // @[WritebackQueue.scala 589:53]
  wire  entries_4_io_req_bits_voluntary; // @[WritebackQueue.scala 589:53]
  wire  entries_4_io_req_bits_hasData; // @[WritebackQueue.scala 589:53]
  wire  entries_4_io_req_bits_delay_release; // @[WritebackQueue.scala 589:53]
  wire [1:0] entries_4_io_req_bits_miss_id; // @[WritebackQueue.scala 589:53]
  wire [35:0] entries_4_io_req_bits_addr; // @[WritebackQueue.scala 589:53]
  wire [511:0] entries_4_io_req_data_data; // @[WritebackQueue.scala 589:53]
  wire  entries_4_io_mem_release_ready; // @[WritebackQueue.scala 589:53]
  wire  entries_4_io_mem_release_valid; // @[WritebackQueue.scala 589:53]
  wire [2:0] entries_4_io_mem_release_bits_opcode; // @[WritebackQueue.scala 589:53]
  wire [2:0] entries_4_io_mem_release_bits_param; // @[WritebackQueue.scala 589:53]
  wire [2:0] entries_4_io_mem_release_bits_size; // @[WritebackQueue.scala 589:53]
  wire [3:0] entries_4_io_mem_release_bits_source; // @[WritebackQueue.scala 589:53]
  wire [35:0] entries_4_io_mem_release_bits_address; // @[WritebackQueue.scala 589:53]
  wire [255:0] entries_4_io_mem_release_bits_data; // @[WritebackQueue.scala 589:53]
  wire  entries_4_io_mem_grant_ready; // @[WritebackQueue.scala 589:53]
  wire  entries_4_io_mem_grant_valid; // @[WritebackQueue.scala 589:53]
  wire  entries_4_io_block_addr_valid; // @[WritebackQueue.scala 589:53]
  wire [35:0] entries_4_io_block_addr_bits; // @[WritebackQueue.scala 589:53]
  wire  entries_4_io_release_wakeup_valid; // @[WritebackQueue.scala 589:53]
  wire [1:0] entries_4_io_release_wakeup_bits; // @[WritebackQueue.scala 589:53]
  wire  entries_4_io_release_update_valid; // @[WritebackQueue.scala 589:53]
  wire [35:0] entries_4_io_release_update_bits_addr; // @[WritebackQueue.scala 589:53]
  wire [7:0] entries_4_io_release_update_bits_mask_delayed; // @[WritebackQueue.scala 589:53]
  wire [511:0] entries_4_io_release_update_bits_data_delayed; // @[WritebackQueue.scala 589:53]
  wire  entries_4_io_release_update_bits_mask_orr; // @[WritebackQueue.scala 589:53]
  wire  entries_4_io_probe_ttob_check_req_valid; // @[WritebackQueue.scala 589:53]
  wire [35:0] entries_4_io_probe_ttob_check_req_bits_addr; // @[WritebackQueue.scala 589:53]
  wire  entries_4_io_probe_ttob_check_resp_bits_toN; // @[WritebackQueue.scala 589:53]
  wire  entries_5_clock; // @[WritebackQueue.scala 589:53]
  wire  entries_5_reset; // @[WritebackQueue.scala 589:53]
  wire [3:0] entries_5_io_id; // @[WritebackQueue.scala 589:53]
  wire  entries_5_io_primary_valid; // @[WritebackQueue.scala 589:53]
  wire  entries_5_io_primary_ready; // @[WritebackQueue.scala 589:53]
  wire  entries_5_io_primary_ready_dup_0; // @[WritebackQueue.scala 589:53]
  wire  entries_5_io_primary_ready_dup_1; // @[WritebackQueue.scala 589:53]
  wire  entries_5_io_primary_ready_dup_2; // @[WritebackQueue.scala 589:53]
  wire  entries_5_io_primary_ready_dup_3; // @[WritebackQueue.scala 589:53]
  wire  entries_5_io_primary_ready_dup_4; // @[WritebackQueue.scala 589:53]
  wire  entries_5_io_primary_ready_dup_5; // @[WritebackQueue.scala 589:53]
  wire  entries_5_io_primary_ready_dup_6; // @[WritebackQueue.scala 589:53]
  wire  entries_5_io_primary_ready_dup_7; // @[WritebackQueue.scala 589:53]
  wire  entries_5_io_primary_ready_dup_8; // @[WritebackQueue.scala 589:53]
  wire  entries_5_io_primary_ready_dup_9; // @[WritebackQueue.scala 589:53]
  wire  entries_5_io_primary_ready_dup_10; // @[WritebackQueue.scala 589:53]
  wire  entries_5_io_primary_ready_dup_11; // @[WritebackQueue.scala 589:53]
  wire  entries_5_io_secondary_valid; // @[WritebackQueue.scala 589:53]
  wire  entries_5_io_secondary_ready; // @[WritebackQueue.scala 589:53]
  wire  entries_5_io_req_valid; // @[WritebackQueue.scala 589:53]
  wire [2:0] entries_5_io_req_bits_param; // @[WritebackQueue.scala 589:53]
  wire  entries_5_io_req_bits_voluntary; // @[WritebackQueue.scala 589:53]
  wire  entries_5_io_req_bits_hasData; // @[WritebackQueue.scala 589:53]
  wire  entries_5_io_req_bits_delay_release; // @[WritebackQueue.scala 589:53]
  wire [1:0] entries_5_io_req_bits_miss_id; // @[WritebackQueue.scala 589:53]
  wire [35:0] entries_5_io_req_bits_addr; // @[WritebackQueue.scala 589:53]
  wire [511:0] entries_5_io_req_data_data; // @[WritebackQueue.scala 589:53]
  wire  entries_5_io_mem_release_ready; // @[WritebackQueue.scala 589:53]
  wire  entries_5_io_mem_release_valid; // @[WritebackQueue.scala 589:53]
  wire [2:0] entries_5_io_mem_release_bits_opcode; // @[WritebackQueue.scala 589:53]
  wire [2:0] entries_5_io_mem_release_bits_param; // @[WritebackQueue.scala 589:53]
  wire [2:0] entries_5_io_mem_release_bits_size; // @[WritebackQueue.scala 589:53]
  wire [3:0] entries_5_io_mem_release_bits_source; // @[WritebackQueue.scala 589:53]
  wire [35:0] entries_5_io_mem_release_bits_address; // @[WritebackQueue.scala 589:53]
  wire [255:0] entries_5_io_mem_release_bits_data; // @[WritebackQueue.scala 589:53]
  wire  entries_5_io_mem_grant_ready; // @[WritebackQueue.scala 589:53]
  wire  entries_5_io_mem_grant_valid; // @[WritebackQueue.scala 589:53]
  wire  entries_5_io_block_addr_valid; // @[WritebackQueue.scala 589:53]
  wire [35:0] entries_5_io_block_addr_bits; // @[WritebackQueue.scala 589:53]
  wire  entries_5_io_release_wakeup_valid; // @[WritebackQueue.scala 589:53]
  wire [1:0] entries_5_io_release_wakeup_bits; // @[WritebackQueue.scala 589:53]
  wire  entries_5_io_release_update_valid; // @[WritebackQueue.scala 589:53]
  wire [35:0] entries_5_io_release_update_bits_addr; // @[WritebackQueue.scala 589:53]
  wire [7:0] entries_5_io_release_update_bits_mask_delayed; // @[WritebackQueue.scala 589:53]
  wire [511:0] entries_5_io_release_update_bits_data_delayed; // @[WritebackQueue.scala 589:53]
  wire  entries_5_io_release_update_bits_mask_orr; // @[WritebackQueue.scala 589:53]
  wire  entries_5_io_probe_ttob_check_req_valid; // @[WritebackQueue.scala 589:53]
  wire [35:0] entries_5_io_probe_ttob_check_req_bits_addr; // @[WritebackQueue.scala 589:53]
  wire  entries_5_io_probe_ttob_check_resp_bits_toN; // @[WritebackQueue.scala 589:53]
  wire  entries_6_clock; // @[WritebackQueue.scala 589:53]
  wire  entries_6_reset; // @[WritebackQueue.scala 589:53]
  wire [3:0] entries_6_io_id; // @[WritebackQueue.scala 589:53]
  wire  entries_6_io_primary_valid; // @[WritebackQueue.scala 589:53]
  wire  entries_6_io_primary_ready; // @[WritebackQueue.scala 589:53]
  wire  entries_6_io_primary_ready_dup_0; // @[WritebackQueue.scala 589:53]
  wire  entries_6_io_primary_ready_dup_1; // @[WritebackQueue.scala 589:53]
  wire  entries_6_io_primary_ready_dup_2; // @[WritebackQueue.scala 589:53]
  wire  entries_6_io_primary_ready_dup_3; // @[WritebackQueue.scala 589:53]
  wire  entries_6_io_primary_ready_dup_4; // @[WritebackQueue.scala 589:53]
  wire  entries_6_io_primary_ready_dup_5; // @[WritebackQueue.scala 589:53]
  wire  entries_6_io_primary_ready_dup_6; // @[WritebackQueue.scala 589:53]
  wire  entries_6_io_primary_ready_dup_7; // @[WritebackQueue.scala 589:53]
  wire  entries_6_io_primary_ready_dup_8; // @[WritebackQueue.scala 589:53]
  wire  entries_6_io_primary_ready_dup_9; // @[WritebackQueue.scala 589:53]
  wire  entries_6_io_primary_ready_dup_10; // @[WritebackQueue.scala 589:53]
  wire  entries_6_io_primary_ready_dup_11; // @[WritebackQueue.scala 589:53]
  wire  entries_6_io_secondary_valid; // @[WritebackQueue.scala 589:53]
  wire  entries_6_io_secondary_ready; // @[WritebackQueue.scala 589:53]
  wire  entries_6_io_req_valid; // @[WritebackQueue.scala 589:53]
  wire [2:0] entries_6_io_req_bits_param; // @[WritebackQueue.scala 589:53]
  wire  entries_6_io_req_bits_voluntary; // @[WritebackQueue.scala 589:53]
  wire  entries_6_io_req_bits_hasData; // @[WritebackQueue.scala 589:53]
  wire  entries_6_io_req_bits_delay_release; // @[WritebackQueue.scala 589:53]
  wire [1:0] entries_6_io_req_bits_miss_id; // @[WritebackQueue.scala 589:53]
  wire [35:0] entries_6_io_req_bits_addr; // @[WritebackQueue.scala 589:53]
  wire [511:0] entries_6_io_req_data_data; // @[WritebackQueue.scala 589:53]
  wire  entries_6_io_mem_release_ready; // @[WritebackQueue.scala 589:53]
  wire  entries_6_io_mem_release_valid; // @[WritebackQueue.scala 589:53]
  wire [2:0] entries_6_io_mem_release_bits_opcode; // @[WritebackQueue.scala 589:53]
  wire [2:0] entries_6_io_mem_release_bits_param; // @[WritebackQueue.scala 589:53]
  wire [2:0] entries_6_io_mem_release_bits_size; // @[WritebackQueue.scala 589:53]
  wire [3:0] entries_6_io_mem_release_bits_source; // @[WritebackQueue.scala 589:53]
  wire [35:0] entries_6_io_mem_release_bits_address; // @[WritebackQueue.scala 589:53]
  wire [255:0] entries_6_io_mem_release_bits_data; // @[WritebackQueue.scala 589:53]
  wire  entries_6_io_mem_grant_ready; // @[WritebackQueue.scala 589:53]
  wire  entries_6_io_mem_grant_valid; // @[WritebackQueue.scala 589:53]
  wire  entries_6_io_block_addr_valid; // @[WritebackQueue.scala 589:53]
  wire [35:0] entries_6_io_block_addr_bits; // @[WritebackQueue.scala 589:53]
  wire  entries_6_io_release_wakeup_valid; // @[WritebackQueue.scala 589:53]
  wire [1:0] entries_6_io_release_wakeup_bits; // @[WritebackQueue.scala 589:53]
  wire  entries_6_io_release_update_valid; // @[WritebackQueue.scala 589:53]
  wire [35:0] entries_6_io_release_update_bits_addr; // @[WritebackQueue.scala 589:53]
  wire [7:0] entries_6_io_release_update_bits_mask_delayed; // @[WritebackQueue.scala 589:53]
  wire [511:0] entries_6_io_release_update_bits_data_delayed; // @[WritebackQueue.scala 589:53]
  wire  entries_6_io_release_update_bits_mask_orr; // @[WritebackQueue.scala 589:53]
  wire  entries_6_io_probe_ttob_check_req_valid; // @[WritebackQueue.scala 589:53]
  wire [35:0] entries_6_io_probe_ttob_check_req_bits_addr; // @[WritebackQueue.scala 589:53]
  wire  entries_6_io_probe_ttob_check_resp_bits_toN; // @[WritebackQueue.scala 589:53]
  wire  entries_7_clock; // @[WritebackQueue.scala 589:53]
  wire  entries_7_reset; // @[WritebackQueue.scala 589:53]
  wire [3:0] entries_7_io_id; // @[WritebackQueue.scala 589:53]
  wire  entries_7_io_primary_valid; // @[WritebackQueue.scala 589:53]
  wire  entries_7_io_primary_ready; // @[WritebackQueue.scala 589:53]
  wire  entries_7_io_primary_ready_dup_0; // @[WritebackQueue.scala 589:53]
  wire  entries_7_io_primary_ready_dup_1; // @[WritebackQueue.scala 589:53]
  wire  entries_7_io_primary_ready_dup_2; // @[WritebackQueue.scala 589:53]
  wire  entries_7_io_primary_ready_dup_3; // @[WritebackQueue.scala 589:53]
  wire  entries_7_io_primary_ready_dup_4; // @[WritebackQueue.scala 589:53]
  wire  entries_7_io_primary_ready_dup_5; // @[WritebackQueue.scala 589:53]
  wire  entries_7_io_primary_ready_dup_6; // @[WritebackQueue.scala 589:53]
  wire  entries_7_io_primary_ready_dup_7; // @[WritebackQueue.scala 589:53]
  wire  entries_7_io_primary_ready_dup_8; // @[WritebackQueue.scala 589:53]
  wire  entries_7_io_primary_ready_dup_9; // @[WritebackQueue.scala 589:53]
  wire  entries_7_io_primary_ready_dup_10; // @[WritebackQueue.scala 589:53]
  wire  entries_7_io_primary_ready_dup_11; // @[WritebackQueue.scala 589:53]
  wire  entries_7_io_secondary_valid; // @[WritebackQueue.scala 589:53]
  wire  entries_7_io_secondary_ready; // @[WritebackQueue.scala 589:53]
  wire  entries_7_io_req_valid; // @[WritebackQueue.scala 589:53]
  wire [2:0] entries_7_io_req_bits_param; // @[WritebackQueue.scala 589:53]
  wire  entries_7_io_req_bits_voluntary; // @[WritebackQueue.scala 589:53]
  wire  entries_7_io_req_bits_hasData; // @[WritebackQueue.scala 589:53]
  wire  entries_7_io_req_bits_delay_release; // @[WritebackQueue.scala 589:53]
  wire [1:0] entries_7_io_req_bits_miss_id; // @[WritebackQueue.scala 589:53]
  wire [35:0] entries_7_io_req_bits_addr; // @[WritebackQueue.scala 589:53]
  wire [511:0] entries_7_io_req_data_data; // @[WritebackQueue.scala 589:53]
  wire  entries_7_io_mem_release_ready; // @[WritebackQueue.scala 589:53]
  wire  entries_7_io_mem_release_valid; // @[WritebackQueue.scala 589:53]
  wire [2:0] entries_7_io_mem_release_bits_opcode; // @[WritebackQueue.scala 589:53]
  wire [2:0] entries_7_io_mem_release_bits_param; // @[WritebackQueue.scala 589:53]
  wire [2:0] entries_7_io_mem_release_bits_size; // @[WritebackQueue.scala 589:53]
  wire [3:0] entries_7_io_mem_release_bits_source; // @[WritebackQueue.scala 589:53]
  wire [35:0] entries_7_io_mem_release_bits_address; // @[WritebackQueue.scala 589:53]
  wire [255:0] entries_7_io_mem_release_bits_data; // @[WritebackQueue.scala 589:53]
  wire  entries_7_io_mem_grant_ready; // @[WritebackQueue.scala 589:53]
  wire  entries_7_io_mem_grant_valid; // @[WritebackQueue.scala 589:53]
  wire  entries_7_io_block_addr_valid; // @[WritebackQueue.scala 589:53]
  wire [35:0] entries_7_io_block_addr_bits; // @[WritebackQueue.scala 589:53]
  wire  entries_7_io_release_wakeup_valid; // @[WritebackQueue.scala 589:53]
  wire [1:0] entries_7_io_release_wakeup_bits; // @[WritebackQueue.scala 589:53]
  wire  entries_7_io_release_update_valid; // @[WritebackQueue.scala 589:53]
  wire [35:0] entries_7_io_release_update_bits_addr; // @[WritebackQueue.scala 589:53]
  wire [7:0] entries_7_io_release_update_bits_mask_delayed; // @[WritebackQueue.scala 589:53]
  wire [511:0] entries_7_io_release_update_bits_data_delayed; // @[WritebackQueue.scala 589:53]
  wire  entries_7_io_release_update_bits_mask_orr; // @[WritebackQueue.scala 589:53]
  wire  entries_7_io_probe_ttob_check_req_valid; // @[WritebackQueue.scala 589:53]
  wire [35:0] entries_7_io_probe_ttob_check_req_bits_addr; // @[WritebackQueue.scala 589:53]
  wire  entries_7_io_probe_ttob_check_resp_bits_toN; // @[WritebackQueue.scala 589:53]
  wire  primary_ready_vec_6 = entries_6_io_primary_ready; // @[WritebackQueue.scala 563:31 602:30]
  wire  primary_ready_vec_7 = entries_7_io_primary_ready; // @[WritebackQueue.scala 563:31 602:30]
  wire  primary_ready_vec_4 = entries_4_io_primary_ready; // @[WritebackQueue.scala 563:31 602:30]
  wire  primary_ready_vec_5 = entries_5_io_primary_ready; // @[WritebackQueue.scala 563:31 602:30]
  wire  primary_ready_vec_2 = entries_2_io_primary_ready; // @[WritebackQueue.scala 563:31 602:30]
  wire  primary_ready_vec_3 = entries_3_io_primary_ready; // @[WritebackQueue.scala 563:31 602:30]
  wire  primary_ready_vec_0 = entries_0_io_primary_ready; // @[WritebackQueue.scala 563:31 602:30]
  wire  primary_ready_vec_1 = entries_1_io_primary_ready; // @[WritebackQueue.scala 563:31 602:30]
  wire [7:0] _accept_T = {primary_ready_vec_0,primary_ready_vec_1,primary_ready_vec_2,primary_ready_vec_3,
    primary_ready_vec_4,primary_ready_vec_5,primary_ready_vec_6,primary_ready_vec_7}; // @[Cat.scala 31:58]
  wire  accept = |_accept_T; // @[WritebackQueue.scala 565:39]
  wire  secondary_ready_vec_6 = entries_6_io_secondary_ready; // @[WritebackQueue.scala 564:33 603:30]
  wire  secondary_ready_vec_7 = entries_7_io_secondary_ready; // @[WritebackQueue.scala 564:33 603:30]
  wire  secondary_ready_vec_4 = entries_4_io_secondary_ready; // @[WritebackQueue.scala 564:33 603:30]
  wire  secondary_ready_vec_5 = entries_5_io_secondary_ready; // @[WritebackQueue.scala 564:33 603:30]
  wire  secondary_ready_vec_2 = entries_2_io_secondary_ready; // @[WritebackQueue.scala 564:33 603:30]
  wire  secondary_ready_vec_3 = entries_3_io_secondary_ready; // @[WritebackQueue.scala 564:33 603:30]
  wire  secondary_ready_vec_0 = entries_0_io_secondary_ready; // @[WritebackQueue.scala 564:33 603:30]
  wire  secondary_ready_vec_1 = entries_1_io_secondary_ready; // @[WritebackQueue.scala 564:33 603:30]
  wire [7:0] _merge_T = {secondary_ready_vec_0,secondary_ready_vec_1,secondary_ready_vec_2,secondary_ready_vec_3,
    secondary_ready_vec_4,secondary_ready_vec_5,secondary_ready_vec_6,secondary_ready_vec_7}; // @[Cat.scala 31:58]
  wire  merge = |_merge_T; // @[WritebackQueue.scala 566:40]
  wire  alloc = accept & ~merge; // @[WritebackQueue.scala 567:22]
  reg [7:0] release_update_bits_for_entry_mask_delayed_r; // @[Reg.scala 16:16]
  reg [511:0] release_update_bits_for_entry_data_delayed_r; // @[Reg.scala 16:16]
  reg [511:0] req_data_data; // @[Reg.scala 16:16]
  wire  former_primary_ready = |entries_0_io_primary_ready; // @[WritebackQueue.scala 595:64]
  wire  _entries_1_io_primary_valid_T = ~former_primary_ready; // @[WritebackQueue.scala 608:9]
  wire  _entries_1_io_primary_valid_T_1 = alloc & _entries_1_io_primary_valid_T; // @[WritebackQueue.scala 607:39]
  wire [1:0] _former_primary_ready_T = {entries_0_io_primary_ready,entries_1_io_primary_ready}; // @[Cat.scala 31:58]
  wire  former_primary_ready_1 = |_former_primary_ready_T; // @[WritebackQueue.scala 595:64]
  wire  _entries_2_io_primary_valid_T = ~former_primary_ready_1; // @[WritebackQueue.scala 608:9]
  wire  _entries_2_io_primary_valid_T_1 = alloc & _entries_2_io_primary_valid_T; // @[WritebackQueue.scala 607:39]
  wire [2:0] _former_primary_ready_T_1 = {entries_0_io_primary_ready,entries_1_io_primary_ready,
    entries_2_io_primary_ready}; // @[Cat.scala 31:58]
  wire  former_primary_ready_2 = |_former_primary_ready_T_1; // @[WritebackQueue.scala 595:64]
  wire  _entries_3_io_primary_valid_T = ~former_primary_ready_2; // @[WritebackQueue.scala 608:9]
  wire  _entries_3_io_primary_valid_T_1 = alloc & _entries_3_io_primary_valid_T; // @[WritebackQueue.scala 607:39]
  wire [3:0] _former_primary_ready_T_2 = {entries_0_io_primary_ready,entries_1_io_primary_ready,
    entries_2_io_primary_ready,entries_3_io_primary_ready}; // @[Cat.scala 31:58]
  wire  former_primary_ready_3 = |_former_primary_ready_T_2; // @[WritebackQueue.scala 595:64]
  wire  _entries_4_io_primary_valid_T = ~former_primary_ready_3; // @[WritebackQueue.scala 608:9]
  wire  _entries_4_io_primary_valid_T_1 = alloc & _entries_4_io_primary_valid_T; // @[WritebackQueue.scala 607:39]
  wire [4:0] _former_primary_ready_T_3 = {entries_0_io_primary_ready,entries_1_io_primary_ready,
    entries_2_io_primary_ready,entries_3_io_primary_ready,entries_4_io_primary_ready}; // @[Cat.scala 31:58]
  wire  former_primary_ready_4 = |_former_primary_ready_T_3; // @[WritebackQueue.scala 595:64]
  wire  _entries_5_io_primary_valid_T = ~former_primary_ready_4; // @[WritebackQueue.scala 608:9]
  wire  _entries_5_io_primary_valid_T_1 = alloc & _entries_5_io_primary_valid_T; // @[WritebackQueue.scala 607:39]
  wire [5:0] _former_primary_ready_T_4 = {entries_0_io_primary_ready,entries_1_io_primary_ready,
    entries_2_io_primary_ready,entries_3_io_primary_ready,entries_4_io_primary_ready,entries_5_io_primary_ready}; // @[Cat.scala 31:58]
  wire  former_primary_ready_5 = |_former_primary_ready_T_4; // @[WritebackQueue.scala 595:64]
  wire  _entries_6_io_primary_valid_T = ~former_primary_ready_5; // @[WritebackQueue.scala 608:9]
  wire  _entries_6_io_primary_valid_T_1 = alloc & _entries_6_io_primary_valid_T; // @[WritebackQueue.scala 607:39]
  wire [6:0] _former_primary_ready_T_5 = {entries_0_io_primary_ready,entries_1_io_primary_ready,
    entries_2_io_primary_ready,entries_3_io_primary_ready,entries_4_io_primary_ready,entries_5_io_primary_ready,
    entries_6_io_primary_ready}; // @[Cat.scala 31:58]
  wire  former_primary_ready_6 = |_former_primary_ready_T_5; // @[WritebackQueue.scala 595:64]
  wire  _entries_7_io_primary_valid_T = ~former_primary_ready_6; // @[WritebackQueue.scala 608:9]
  wire  _entries_7_io_primary_valid_T_1 = alloc & _entries_7_io_primary_valid_T; // @[WritebackQueue.scala 607:39]
  wire [7:0] _io_req_ready_dup_0_T = {entries_0_io_primary_ready_dup_0,entries_1_io_primary_ready_dup_0,
    entries_2_io_primary_ready_dup_0,entries_3_io_primary_ready_dup_0,entries_4_io_primary_ready_dup_0,
    entries_5_io_primary_ready_dup_0,entries_6_io_primary_ready_dup_0,entries_7_io_primary_ready_dup_0}; // @[Cat.scala 31:58]
  wire [7:0] _io_req_ready_dup_1_T = {entries_0_io_primary_ready_dup_1,entries_1_io_primary_ready_dup_1,
    entries_2_io_primary_ready_dup_1,entries_3_io_primary_ready_dup_1,entries_4_io_primary_ready_dup_1,
    entries_5_io_primary_ready_dup_1,entries_6_io_primary_ready_dup_1,entries_7_io_primary_ready_dup_1}; // @[Cat.scala 31:58]
  wire [7:0] _io_req_ready_dup_2_T = {entries_0_io_primary_ready_dup_2,entries_1_io_primary_ready_dup_2,
    entries_2_io_primary_ready_dup_2,entries_3_io_primary_ready_dup_2,entries_4_io_primary_ready_dup_2,
    entries_5_io_primary_ready_dup_2,entries_6_io_primary_ready_dup_2,entries_7_io_primary_ready_dup_2}; // @[Cat.scala 31:58]
  wire [7:0] _io_req_ready_dup_3_T = {entries_0_io_primary_ready_dup_3,entries_1_io_primary_ready_dup_3,
    entries_2_io_primary_ready_dup_3,entries_3_io_primary_ready_dup_3,entries_4_io_primary_ready_dup_3,
    entries_5_io_primary_ready_dup_3,entries_6_io_primary_ready_dup_3,entries_7_io_primary_ready_dup_3}; // @[Cat.scala 31:58]
  wire [7:0] _io_req_ready_dup_4_T = {entries_0_io_primary_ready_dup_4,entries_1_io_primary_ready_dup_4,
    entries_2_io_primary_ready_dup_4,entries_3_io_primary_ready_dup_4,entries_4_io_primary_ready_dup_4,
    entries_5_io_primary_ready_dup_4,entries_6_io_primary_ready_dup_4,entries_7_io_primary_ready_dup_4}; // @[Cat.scala 31:58]
  wire [7:0] _io_req_ready_dup_5_T = {entries_0_io_primary_ready_dup_5,entries_1_io_primary_ready_dup_5,
    entries_2_io_primary_ready_dup_5,entries_3_io_primary_ready_dup_5,entries_4_io_primary_ready_dup_5,
    entries_5_io_primary_ready_dup_5,entries_6_io_primary_ready_dup_5,entries_7_io_primary_ready_dup_5}; // @[Cat.scala 31:58]
  wire [7:0] _io_req_ready_dup_6_T = {entries_0_io_primary_ready_dup_6,entries_1_io_primary_ready_dup_6,
    entries_2_io_primary_ready_dup_6,entries_3_io_primary_ready_dup_6,entries_4_io_primary_ready_dup_6,
    entries_5_io_primary_ready_dup_6,entries_6_io_primary_ready_dup_6,entries_7_io_primary_ready_dup_6}; // @[Cat.scala 31:58]
  wire [7:0] _io_req_ready_dup_7_T = {entries_0_io_primary_ready_dup_7,entries_1_io_primary_ready_dup_7,
    entries_2_io_primary_ready_dup_7,entries_3_io_primary_ready_dup_7,entries_4_io_primary_ready_dup_7,
    entries_5_io_primary_ready_dup_7,entries_6_io_primary_ready_dup_7,entries_7_io_primary_ready_dup_7}; // @[Cat.scala 31:58]
  wire [7:0] _io_req_ready_dup_8_T = {entries_0_io_primary_ready_dup_8,entries_1_io_primary_ready_dup_8,
    entries_2_io_primary_ready_dup_8,entries_3_io_primary_ready_dup_8,entries_4_io_primary_ready_dup_8,
    entries_5_io_primary_ready_dup_8,entries_6_io_primary_ready_dup_8,entries_7_io_primary_ready_dup_8}; // @[Cat.scala 31:58]
  wire [7:0] _io_req_ready_dup_9_T = {entries_0_io_primary_ready_dup_9,entries_1_io_primary_ready_dup_9,
    entries_2_io_primary_ready_dup_9,entries_3_io_primary_ready_dup_9,entries_4_io_primary_ready_dup_9,
    entries_5_io_primary_ready_dup_9,entries_6_io_primary_ready_dup_9,entries_7_io_primary_ready_dup_9}; // @[Cat.scala 31:58]
  wire [7:0] _io_req_ready_dup_10_T = {entries_0_io_primary_ready_dup_10,entries_1_io_primary_ready_dup_10,
    entries_2_io_primary_ready_dup_10,entries_3_io_primary_ready_dup_10,entries_4_io_primary_ready_dup_10,
    entries_5_io_primary_ready_dup_10,entries_6_io_primary_ready_dup_10,entries_7_io_primary_ready_dup_10}; // @[Cat.scala 31:58]
  wire [7:0] _io_req_ready_dup_11_T = {entries_0_io_primary_ready_dup_11,entries_1_io_primary_ready_dup_11,
    entries_2_io_primary_ready_dup_11,entries_3_io_primary_ready_dup_11,entries_4_io_primary_ready_dup_11,
    entries_5_io_primary_ready_dup_11,entries_6_io_primary_ready_dup_11,entries_7_io_primary_ready_dup_11}; // @[Cat.scala 31:58]
  wire  _io_probe_ttob_check_resp_bits_toN_WIRE_1 = entries_1_io_probe_ttob_check_resp_bits_toN; // @[WritebackQueue.scala 627:{47,47}]
  wire  _io_probe_ttob_check_resp_bits_toN_WIRE_0 = entries_0_io_probe_ttob_check_resp_bits_toN; // @[WritebackQueue.scala 627:{47,47}]
  wire  _io_probe_ttob_check_resp_bits_toN_WIRE_3 = entries_3_io_probe_ttob_check_resp_bits_toN; // @[WritebackQueue.scala 627:{47,47}]
  wire  _io_probe_ttob_check_resp_bits_toN_WIRE_2 = entries_2_io_probe_ttob_check_resp_bits_toN; // @[WritebackQueue.scala 627:{47,47}]
  wire  _io_probe_ttob_check_resp_bits_toN_WIRE_5 = entries_5_io_probe_ttob_check_resp_bits_toN; // @[WritebackQueue.scala 627:{47,47}]
  wire  _io_probe_ttob_check_resp_bits_toN_WIRE_4 = entries_4_io_probe_ttob_check_resp_bits_toN; // @[WritebackQueue.scala 627:{47,47}]
  wire  _io_probe_ttob_check_resp_bits_toN_WIRE_7 = entries_7_io_probe_ttob_check_resp_bits_toN; // @[WritebackQueue.scala 627:{47,47}]
  wire  _io_probe_ttob_check_resp_bits_toN_WIRE_6 = entries_6_io_probe_ttob_check_resp_bits_toN; // @[WritebackQueue.scala 627:{47,47}]
  wire [7:0] _io_probe_ttob_check_resp_bits_toN_T = {_io_probe_ttob_check_resp_bits_toN_WIRE_7,
    _io_probe_ttob_check_resp_bits_toN_WIRE_6,_io_probe_ttob_check_resp_bits_toN_WIRE_5,
    _io_probe_ttob_check_resp_bits_toN_WIRE_4,_io_probe_ttob_check_resp_bits_toN_WIRE_3,
    _io_probe_ttob_check_resp_bits_toN_WIRE_2,_io_probe_ttob_check_resp_bits_toN_WIRE_1,
    _io_probe_ttob_check_resp_bits_toN_WIRE_0}; // @[WritebackQueue.scala 627:103]
  wire  _miss_req_conflict_T_1 = entries_0_io_block_addr_valid & entries_0_io_block_addr_bits == io_miss_req_bits; // @[WritebackQueue.scala 632:74]
  wire  _miss_req_conflict_T_3 = entries_1_io_block_addr_valid & entries_1_io_block_addr_bits == io_miss_req_bits; // @[WritebackQueue.scala 632:74]
  wire  _miss_req_conflict_T_5 = entries_2_io_block_addr_valid & entries_2_io_block_addr_bits == io_miss_req_bits; // @[WritebackQueue.scala 632:74]
  wire  _miss_req_conflict_T_7 = entries_3_io_block_addr_valid & entries_3_io_block_addr_bits == io_miss_req_bits; // @[WritebackQueue.scala 632:74]
  wire  _miss_req_conflict_T_9 = entries_4_io_block_addr_valid & entries_4_io_block_addr_bits == io_miss_req_bits; // @[WritebackQueue.scala 632:74]
  wire  _miss_req_conflict_T_11 = entries_5_io_block_addr_valid & entries_5_io_block_addr_bits == io_miss_req_bits; // @[WritebackQueue.scala 632:74]
  wire  _miss_req_conflict_T_13 = entries_6_io_block_addr_valid & entries_6_io_block_addr_bits == io_miss_req_bits; // @[WritebackQueue.scala 632:74]
  wire  _miss_req_conflict_T_15 = entries_7_io_block_addr_valid & entries_7_io_block_addr_bits == io_miss_req_bits; // @[WritebackQueue.scala 632:74]
  wire [7:0] _miss_req_conflict_T_16 = {_miss_req_conflict_T_15,_miss_req_conflict_T_13,_miss_req_conflict_T_11,
    _miss_req_conflict_T_9,_miss_req_conflict_T_7,_miss_req_conflict_T_5,_miss_req_conflict_T_3,_miss_req_conflict_T_1}; // @[WritebackQueue.scala 632:121]
  wire  miss_req_conflict = |_miss_req_conflict_T_16; // @[WritebackQueue.scala 632:128]
  wire  opdata = entries_0_io_mem_release_bits_opcode[0]; // @[Edges.scala 101:36]
  wire  opdata_1 = entries_1_io_mem_release_bits_opcode[0]; // @[Edges.scala 101:36]
  wire  opdata_2 = entries_2_io_mem_release_bits_opcode[0]; // @[Edges.scala 101:36]
  wire  opdata_3 = entries_3_io_mem_release_bits_opcode[0]; // @[Edges.scala 101:36]
  wire  opdata_4 = entries_4_io_mem_release_bits_opcode[0]; // @[Edges.scala 101:36]
  wire  opdata_5 = entries_5_io_mem_release_bits_opcode[0]; // @[Edges.scala 101:36]
  wire  opdata_6 = entries_6_io_mem_release_bits_opcode[0]; // @[Edges.scala 101:36]
  wire  opdata_7 = entries_7_io_mem_release_bits_opcode[0]; // @[Edges.scala 101:36]
  reg  beatsLeft; // @[Arbiter.scala 87:30]
  wire  idle = ~beatsLeft; // @[Arbiter.scala 88:28]
  wire  latch = idle & io_mem_release_ready; // @[Arbiter.scala 89:24]
  wire  out_earlyValid = entries_0_io_mem_release_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_1_earlyValid = entries_1_io_mem_release_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_2_earlyValid = entries_2_io_mem_release_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_3_earlyValid = entries_3_io_mem_release_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_4_earlyValid = entries_4_io_mem_release_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_5_earlyValid = entries_5_io_mem_release_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_6_earlyValid = entries_6_io_mem_release_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_7_earlyValid = entries_7_io_mem_release_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire [7:0] readys_valid = {out_7_earlyValid,out_6_earlyValid,out_5_earlyValid,out_4_earlyValid,out_3_earlyValid,
    out_2_earlyValid,out_1_earlyValid,out_earlyValid}; // @[Cat.scala 31:58]
  reg [7:0] readys_mask; // @[Arbiter.scala 23:23]
  wire [7:0] _readys_filter_T = ~readys_mask; // @[Arbiter.scala 24:30]
  wire [7:0] _readys_filter_T_1 = readys_valid & _readys_filter_T; // @[Arbiter.scala 24:28]
  wire [15:0] readys_filter = {_readys_filter_T_1,out_7_earlyValid,out_6_earlyValid,out_5_earlyValid,out_4_earlyValid,
    out_3_earlyValid,out_2_earlyValid,out_1_earlyValid,out_earlyValid}; // @[Cat.scala 31:58]
  wire [15:0] _GEN_4 = {{1'd0}, readys_filter[15:1]}; // @[package.scala 253:43]
  wire [15:0] _readys_unready_T_1 = readys_filter | _GEN_4; // @[package.scala 253:43]
  wire [15:0] _GEN_5 = {{2'd0}, _readys_unready_T_1[15:2]}; // @[package.scala 253:43]
  wire [15:0] _readys_unready_T_3 = _readys_unready_T_1 | _GEN_5; // @[package.scala 253:43]
  wire [15:0] _GEN_6 = {{4'd0}, _readys_unready_T_3[15:4]}; // @[package.scala 253:43]
  wire [15:0] _readys_unready_T_5 = _readys_unready_T_3 | _GEN_6; // @[package.scala 253:43]
  wire [15:0] _readys_unready_T_8 = {readys_mask, 8'h0}; // @[Arbiter.scala 25:66]
  wire [15:0] _GEN_7 = {{1'd0}, _readys_unready_T_5[15:1]}; // @[Arbiter.scala 25:58]
  wire [15:0] readys_unready = _GEN_7 | _readys_unready_T_8; // @[Arbiter.scala 25:58]
  wire [7:0] _readys_readys_T_2 = readys_unready[15:8] & readys_unready[7:0]; // @[Arbiter.scala 26:39]
  wire [7:0] readys_readys = ~_readys_readys_T_2; // @[Arbiter.scala 26:18]
  wire [7:0] _readys_mask_T = readys_readys & readys_valid; // @[Arbiter.scala 28:29]
  wire [8:0] _readys_mask_T_1 = {_readys_mask_T, 1'h0}; // @[package.scala 244:48]
  wire [7:0] _readys_mask_T_3 = _readys_mask_T | _readys_mask_T_1[7:0]; // @[package.scala 244:43]
  wire [9:0] _readys_mask_T_4 = {_readys_mask_T_3, 2'h0}; // @[package.scala 244:48]
  wire [7:0] _readys_mask_T_6 = _readys_mask_T_3 | _readys_mask_T_4[7:0]; // @[package.scala 244:43]
  wire [11:0] _readys_mask_T_7 = {_readys_mask_T_6, 4'h0}; // @[package.scala 244:48]
  wire [7:0] _readys_mask_T_9 = _readys_mask_T_6 | _readys_mask_T_7[7:0]; // @[package.scala 244:43]
  wire  readys_0 = readys_readys[0]; // @[Arbiter.scala 95:86]
  wire  readys_1 = readys_readys[1]; // @[Arbiter.scala 95:86]
  wire  readys_2 = readys_readys[2]; // @[Arbiter.scala 95:86]
  wire  readys_3 = readys_readys[3]; // @[Arbiter.scala 95:86]
  wire  readys_4 = readys_readys[4]; // @[Arbiter.scala 95:86]
  wire  readys_5 = readys_readys[5]; // @[Arbiter.scala 95:86]
  wire  readys_6 = readys_readys[6]; // @[Arbiter.scala 95:86]
  wire  readys_7 = readys_readys[7]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_0 = readys_0 & out_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_1 = readys_1 & out_1_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_2 = readys_2 & out_2_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_3 = readys_3 & out_3_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_4 = readys_4 & out_4_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_5 = readys_5 & out_5_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_6 = readys_6 & out_6_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_7 = readys_7 & out_7_earlyValid; // @[Arbiter.scala 97:79]
  wire  _T_54 = out_earlyValid | out_1_earlyValid | out_2_earlyValid | out_3_earlyValid | out_4_earlyValid |
    out_5_earlyValid | out_6_earlyValid | out_7_earlyValid; // @[Arbiter.scala 107:36]
  wire  maskedBeats_0 = earlyWinner_0 & opdata; // @[Arbiter.scala 111:73]
  wire  maskedBeats_1 = earlyWinner_1 & opdata_1; // @[Arbiter.scala 111:73]
  wire  maskedBeats_2 = earlyWinner_2 & opdata_2; // @[Arbiter.scala 111:73]
  wire  maskedBeats_3 = earlyWinner_3 & opdata_3; // @[Arbiter.scala 111:73]
  wire  maskedBeats_4 = earlyWinner_4 & opdata_4; // @[Arbiter.scala 111:73]
  wire  maskedBeats_5 = earlyWinner_5 & opdata_5; // @[Arbiter.scala 111:73]
  wire  maskedBeats_6 = earlyWinner_6 & opdata_6; // @[Arbiter.scala 111:73]
  wire  maskedBeats_7 = earlyWinner_7 & opdata_7; // @[Arbiter.scala 111:73]
  wire  initBeats = maskedBeats_0 | maskedBeats_1 | maskedBeats_2 | maskedBeats_3 | maskedBeats_4 | maskedBeats_5 |
    maskedBeats_6 | maskedBeats_7; // @[Arbiter.scala 112:44]
  reg  state_0; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_0 = idle ? earlyWinner_0 : state_0; // @[Arbiter.scala 117:30]
  reg  state_1; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_1 = idle ? earlyWinner_1 : state_1; // @[Arbiter.scala 117:30]
  reg  state_2; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_2 = idle ? earlyWinner_2 : state_2; // @[Arbiter.scala 117:30]
  reg  state_3; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_3 = idle ? earlyWinner_3 : state_3; // @[Arbiter.scala 117:30]
  reg  state_4; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_4 = idle ? earlyWinner_4 : state_4; // @[Arbiter.scala 117:30]
  reg  state_5; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_5 = idle ? earlyWinner_5 : state_5; // @[Arbiter.scala 117:30]
  reg  state_6; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_6 = idle ? earlyWinner_6 : state_6; // @[Arbiter.scala 117:30]
  reg  state_7; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_7 = idle ? earlyWinner_7 : state_7; // @[Arbiter.scala 117:30]
  wire  _sink_ACancel_earlyValid_T_21 = state_0 & out_earlyValid | state_1 & out_1_earlyValid | state_2 &
    out_2_earlyValid | state_3 & out_3_earlyValid | state_4 & out_4_earlyValid | state_5 & out_5_earlyValid | state_6 &
    out_6_earlyValid | state_7 & out_7_earlyValid; // @[Mux.scala 27:73]
  wire  sink_ACancel_earlyValid = idle ? _T_54 : _sink_ACancel_earlyValid_T_21; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_2 = io_mem_release_ready & sink_ACancel_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire  allowed_0 = idle ? readys_0 : state_0; // @[Arbiter.scala 121:24]
  wire  allowed_1 = idle ? readys_1 : state_1; // @[Arbiter.scala 121:24]
  wire  allowed_2 = idle ? readys_2 : state_2; // @[Arbiter.scala 121:24]
  wire  allowed_3 = idle ? readys_3 : state_3; // @[Arbiter.scala 121:24]
  wire  allowed_4 = idle ? readys_4 : state_4; // @[Arbiter.scala 121:24]
  wire  allowed_5 = idle ? readys_5 : state_5; // @[Arbiter.scala 121:24]
  wire  allowed_6 = idle ? readys_6 : state_6; // @[Arbiter.scala 121:24]
  wire  allowed_7 = idle ? readys_7 : state_7; // @[Arbiter.scala 121:24]
  wire [255:0] out_bits_data = entries_0_io_mem_release_bits_data; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [255:0] _T_101 = muxStateEarly_0 ? out_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] out_1_bits_data = entries_1_io_mem_release_bits_data; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [255:0] _T_102 = muxStateEarly_1 ? out_1_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] out_2_bits_data = entries_2_io_mem_release_bits_data; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [255:0] _T_103 = muxStateEarly_2 ? out_2_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] out_3_bits_data = entries_3_io_mem_release_bits_data; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [255:0] _T_104 = muxStateEarly_3 ? out_3_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] out_4_bits_data = entries_4_io_mem_release_bits_data; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [255:0] _T_105 = muxStateEarly_4 ? out_4_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] out_5_bits_data = entries_5_io_mem_release_bits_data; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [255:0] _T_106 = muxStateEarly_5 ? out_5_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] out_6_bits_data = entries_6_io_mem_release_bits_data; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [255:0] _T_107 = muxStateEarly_6 ? out_6_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] out_7_bits_data = entries_7_io_mem_release_bits_data; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [255:0] _T_108 = muxStateEarly_7 ? out_7_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_109 = _T_101 | _T_102; // @[Mux.scala 27:73]
  wire [255:0] _T_110 = _T_109 | _T_103; // @[Mux.scala 27:73]
  wire [255:0] _T_111 = _T_110 | _T_104; // @[Mux.scala 27:73]
  wire [255:0] _T_112 = _T_111 | _T_105; // @[Mux.scala 27:73]
  wire [255:0] _T_113 = _T_112 | _T_106; // @[Mux.scala 27:73]
  wire [255:0] _T_114 = _T_113 | _T_107; // @[Mux.scala 27:73]
  wire [35:0] out_bits_address = entries_0_io_mem_release_bits_address; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [35:0] _T_161 = muxStateEarly_0 ? out_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] out_1_bits_address = entries_1_io_mem_release_bits_address; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [35:0] _T_162 = muxStateEarly_1 ? out_1_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] out_2_bits_address = entries_2_io_mem_release_bits_address; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [35:0] _T_163 = muxStateEarly_2 ? out_2_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] out_3_bits_address = entries_3_io_mem_release_bits_address; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [35:0] _T_164 = muxStateEarly_3 ? out_3_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] out_4_bits_address = entries_4_io_mem_release_bits_address; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [35:0] _T_165 = muxStateEarly_4 ? out_4_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] out_5_bits_address = entries_5_io_mem_release_bits_address; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [35:0] _T_166 = muxStateEarly_5 ? out_5_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] out_6_bits_address = entries_6_io_mem_release_bits_address; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [35:0] _T_167 = muxStateEarly_6 ? out_6_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] out_7_bits_address = entries_7_io_mem_release_bits_address; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [35:0] _T_168 = muxStateEarly_7 ? out_7_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_169 = _T_161 | _T_162; // @[Mux.scala 27:73]
  wire [35:0] _T_170 = _T_169 | _T_163; // @[Mux.scala 27:73]
  wire [35:0] _T_171 = _T_170 | _T_164; // @[Mux.scala 27:73]
  wire [35:0] _T_172 = _T_171 | _T_165; // @[Mux.scala 27:73]
  wire [35:0] _T_173 = _T_172 | _T_166; // @[Mux.scala 27:73]
  wire [35:0] _T_174 = _T_173 | _T_167; // @[Mux.scala 27:73]
  wire [3:0] out_bits_source = entries_0_io_mem_release_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [3:0] _T_176 = muxStateEarly_0 ? out_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] out_1_bits_source = entries_1_io_mem_release_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [3:0] _T_177 = muxStateEarly_1 ? out_1_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] out_2_bits_source = entries_2_io_mem_release_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [3:0] _T_178 = muxStateEarly_2 ? out_2_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] out_3_bits_source = entries_3_io_mem_release_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [3:0] _T_179 = muxStateEarly_3 ? out_3_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] out_4_bits_source = entries_4_io_mem_release_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [3:0] _T_180 = muxStateEarly_4 ? out_4_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] out_5_bits_source = entries_5_io_mem_release_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [3:0] _T_181 = muxStateEarly_5 ? out_5_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] out_6_bits_source = entries_6_io_mem_release_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [3:0] _T_182 = muxStateEarly_6 ? out_6_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] out_7_bits_source = entries_7_io_mem_release_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [3:0] _T_183 = muxStateEarly_7 ? out_7_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _T_184 = _T_176 | _T_177; // @[Mux.scala 27:73]
  wire [3:0] _T_185 = _T_184 | _T_178; // @[Mux.scala 27:73]
  wire [3:0] _T_186 = _T_185 | _T_179; // @[Mux.scala 27:73]
  wire [3:0] _T_187 = _T_186 | _T_180; // @[Mux.scala 27:73]
  wire [3:0] _T_188 = _T_187 | _T_181; // @[Mux.scala 27:73]
  wire [3:0] _T_189 = _T_188 | _T_182; // @[Mux.scala 27:73]
  wire [2:0] _T_191 = muxStateEarly_0 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_192 = muxStateEarly_1 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_193 = muxStateEarly_2 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_194 = muxStateEarly_3 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_195 = muxStateEarly_4 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_196 = muxStateEarly_5 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_197 = muxStateEarly_6 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_198 = muxStateEarly_7 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_199 = _T_191 | _T_192; // @[Mux.scala 27:73]
  wire [2:0] _T_200 = _T_199 | _T_193; // @[Mux.scala 27:73]
  wire [2:0] _T_201 = _T_200 | _T_194; // @[Mux.scala 27:73]
  wire [2:0] _T_202 = _T_201 | _T_195; // @[Mux.scala 27:73]
  wire [2:0] _T_203 = _T_202 | _T_196; // @[Mux.scala 27:73]
  wire [2:0] _T_204 = _T_203 | _T_197; // @[Mux.scala 27:73]
  wire [2:0] out_bits_param = entries_0_io_mem_release_bits_param; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_206 = muxStateEarly_0 ? out_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_1_bits_param = entries_1_io_mem_release_bits_param; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_207 = muxStateEarly_1 ? out_1_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_2_bits_param = entries_2_io_mem_release_bits_param; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_208 = muxStateEarly_2 ? out_2_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_3_bits_param = entries_3_io_mem_release_bits_param; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_209 = muxStateEarly_3 ? out_3_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_4_bits_param = entries_4_io_mem_release_bits_param; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_210 = muxStateEarly_4 ? out_4_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_5_bits_param = entries_5_io_mem_release_bits_param; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_211 = muxStateEarly_5 ? out_5_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_6_bits_param = entries_6_io_mem_release_bits_param; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_212 = muxStateEarly_6 ? out_6_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_7_bits_param = entries_7_io_mem_release_bits_param; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_213 = muxStateEarly_7 ? out_7_bits_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_214 = _T_206 | _T_207; // @[Mux.scala 27:73]
  wire [2:0] _T_215 = _T_214 | _T_208; // @[Mux.scala 27:73]
  wire [2:0] _T_216 = _T_215 | _T_209; // @[Mux.scala 27:73]
  wire [2:0] _T_217 = _T_216 | _T_210; // @[Mux.scala 27:73]
  wire [2:0] _T_218 = _T_217 | _T_211; // @[Mux.scala 27:73]
  wire [2:0] _T_219 = _T_218 | _T_212; // @[Mux.scala 27:73]
  wire [2:0] out_bits_opcode = entries_0_io_mem_release_bits_opcode; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_221 = muxStateEarly_0 ? out_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_1_bits_opcode = entries_1_io_mem_release_bits_opcode; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_222 = muxStateEarly_1 ? out_1_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_2_bits_opcode = entries_2_io_mem_release_bits_opcode; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_223 = muxStateEarly_2 ? out_2_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_3_bits_opcode = entries_3_io_mem_release_bits_opcode; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_224 = muxStateEarly_3 ? out_3_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_4_bits_opcode = entries_4_io_mem_release_bits_opcode; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_225 = muxStateEarly_4 ? out_4_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_5_bits_opcode = entries_5_io_mem_release_bits_opcode; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_226 = muxStateEarly_5 ? out_5_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_6_bits_opcode = entries_6_io_mem_release_bits_opcode; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_227 = muxStateEarly_6 ? out_6_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_7_bits_opcode = entries_7_io_mem_release_bits_opcode; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_228 = muxStateEarly_7 ? out_7_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_229 = _T_221 | _T_222; // @[Mux.scala 27:73]
  wire [2:0] _T_230 = _T_229 | _T_223; // @[Mux.scala 27:73]
  wire [2:0] _T_231 = _T_230 | _T_224; // @[Mux.scala 27:73]
  wire [2:0] _T_232 = _T_231 | _T_225; // @[Mux.scala 27:73]
  wire [2:0] _T_233 = _T_232 | _T_226; // @[Mux.scala 27:73]
  wire [2:0] _T_234 = _T_233 | _T_227; // @[Mux.scala 27:73]
  wire [1:0] _perfValidCount_T = entries_0_io_block_addr_valid + entries_1_io_block_addr_valid; // @[Bitwise.scala 48:55]
  wire [1:0] _perfValidCount_T_2 = entries_2_io_block_addr_valid + entries_3_io_block_addr_valid; // @[Bitwise.scala 48:55]
  wire [2:0] _perfValidCount_T_4 = _perfValidCount_T + _perfValidCount_T_2; // @[Bitwise.scala 48:55]
  wire [1:0] _perfValidCount_T_6 = entries_4_io_block_addr_valid + entries_5_io_block_addr_valid; // @[Bitwise.scala 48:55]
  wire [1:0] _perfValidCount_T_8 = entries_6_io_block_addr_valid + entries_7_io_block_addr_valid; // @[Bitwise.scala 48:55]
  wire [2:0] _perfValidCount_T_10 = _perfValidCount_T_6 + _perfValidCount_T_8; // @[Bitwise.scala 48:55]
  reg [3:0] perfValidCount; // @[WritebackQueue.scala 663:31]
  wire [3:0] _T_284 = 4'h8 / 3'h4; // @[WritebackQueue.scala 666:70]
  wire [3:0] _T_288 = 4'h8 / 2'h2; // @[WritebackQueue.scala 667:120]
  wire [5:0] _T_293 = 4'h8 * 2'h3; // @[WritebackQueue.scala 668:120]
  wire [5:0] _T_294 = _T_293 / 3'h4; // @[WritebackQueue.scala 668:124]
  wire [5:0] _GEN_8 = {{2'd0}, perfValidCount}; // @[WritebackQueue.scala 668:95]
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
  WritebackEntry entries_0 ( // @[WritebackQueue.scala 589:53]
    .clock(entries_0_clock),
    .reset(entries_0_reset),
    .io_id(entries_0_io_id),
    .io_primary_valid(entries_0_io_primary_valid),
    .io_primary_ready(entries_0_io_primary_ready),
    .io_primary_ready_dup_0(entries_0_io_primary_ready_dup_0),
    .io_primary_ready_dup_1(entries_0_io_primary_ready_dup_1),
    .io_primary_ready_dup_2(entries_0_io_primary_ready_dup_2),
    .io_primary_ready_dup_3(entries_0_io_primary_ready_dup_3),
    .io_primary_ready_dup_4(entries_0_io_primary_ready_dup_4),
    .io_primary_ready_dup_5(entries_0_io_primary_ready_dup_5),
    .io_primary_ready_dup_6(entries_0_io_primary_ready_dup_6),
    .io_primary_ready_dup_7(entries_0_io_primary_ready_dup_7),
    .io_primary_ready_dup_8(entries_0_io_primary_ready_dup_8),
    .io_primary_ready_dup_9(entries_0_io_primary_ready_dup_9),
    .io_primary_ready_dup_10(entries_0_io_primary_ready_dup_10),
    .io_primary_ready_dup_11(entries_0_io_primary_ready_dup_11),
    .io_secondary_valid(entries_0_io_secondary_valid),
    .io_secondary_ready(entries_0_io_secondary_ready),
    .io_req_valid(entries_0_io_req_valid),
    .io_req_bits_param(entries_0_io_req_bits_param),
    .io_req_bits_voluntary(entries_0_io_req_bits_voluntary),
    .io_req_bits_hasData(entries_0_io_req_bits_hasData),
    .io_req_bits_delay_release(entries_0_io_req_bits_delay_release),
    .io_req_bits_miss_id(entries_0_io_req_bits_miss_id),
    .io_req_bits_addr(entries_0_io_req_bits_addr),
    .io_req_data_data(entries_0_io_req_data_data),
    .io_mem_release_ready(entries_0_io_mem_release_ready),
    .io_mem_release_valid(entries_0_io_mem_release_valid),
    .io_mem_release_bits_opcode(entries_0_io_mem_release_bits_opcode),
    .io_mem_release_bits_param(entries_0_io_mem_release_bits_param),
    .io_mem_release_bits_size(entries_0_io_mem_release_bits_size),
    .io_mem_release_bits_source(entries_0_io_mem_release_bits_source),
    .io_mem_release_bits_address(entries_0_io_mem_release_bits_address),
    .io_mem_release_bits_data(entries_0_io_mem_release_bits_data),
    .io_mem_grant_ready(entries_0_io_mem_grant_ready),
    .io_mem_grant_valid(entries_0_io_mem_grant_valid),
    .io_block_addr_valid(entries_0_io_block_addr_valid),
    .io_block_addr_bits(entries_0_io_block_addr_bits),
    .io_release_wakeup_valid(entries_0_io_release_wakeup_valid),
    .io_release_wakeup_bits(entries_0_io_release_wakeup_bits),
    .io_release_update_valid(entries_0_io_release_update_valid),
    .io_release_update_bits_addr(entries_0_io_release_update_bits_addr),
    .io_release_update_bits_mask_delayed(entries_0_io_release_update_bits_mask_delayed),
    .io_release_update_bits_data_delayed(entries_0_io_release_update_bits_data_delayed),
    .io_release_update_bits_mask_orr(entries_0_io_release_update_bits_mask_orr),
    .io_probe_ttob_check_req_valid(entries_0_io_probe_ttob_check_req_valid),
    .io_probe_ttob_check_req_bits_addr(entries_0_io_probe_ttob_check_req_bits_addr),
    .io_probe_ttob_check_resp_bits_toN(entries_0_io_probe_ttob_check_resp_bits_toN)
  );
  WritebackEntry entries_1 ( // @[WritebackQueue.scala 589:53]
    .clock(entries_1_clock),
    .reset(entries_1_reset),
    .io_id(entries_1_io_id),
    .io_primary_valid(entries_1_io_primary_valid),
    .io_primary_ready(entries_1_io_primary_ready),
    .io_primary_ready_dup_0(entries_1_io_primary_ready_dup_0),
    .io_primary_ready_dup_1(entries_1_io_primary_ready_dup_1),
    .io_primary_ready_dup_2(entries_1_io_primary_ready_dup_2),
    .io_primary_ready_dup_3(entries_1_io_primary_ready_dup_3),
    .io_primary_ready_dup_4(entries_1_io_primary_ready_dup_4),
    .io_primary_ready_dup_5(entries_1_io_primary_ready_dup_5),
    .io_primary_ready_dup_6(entries_1_io_primary_ready_dup_6),
    .io_primary_ready_dup_7(entries_1_io_primary_ready_dup_7),
    .io_primary_ready_dup_8(entries_1_io_primary_ready_dup_8),
    .io_primary_ready_dup_9(entries_1_io_primary_ready_dup_9),
    .io_primary_ready_dup_10(entries_1_io_primary_ready_dup_10),
    .io_primary_ready_dup_11(entries_1_io_primary_ready_dup_11),
    .io_secondary_valid(entries_1_io_secondary_valid),
    .io_secondary_ready(entries_1_io_secondary_ready),
    .io_req_valid(entries_1_io_req_valid),
    .io_req_bits_param(entries_1_io_req_bits_param),
    .io_req_bits_voluntary(entries_1_io_req_bits_voluntary),
    .io_req_bits_hasData(entries_1_io_req_bits_hasData),
    .io_req_bits_delay_release(entries_1_io_req_bits_delay_release),
    .io_req_bits_miss_id(entries_1_io_req_bits_miss_id),
    .io_req_bits_addr(entries_1_io_req_bits_addr),
    .io_req_data_data(entries_1_io_req_data_data),
    .io_mem_release_ready(entries_1_io_mem_release_ready),
    .io_mem_release_valid(entries_1_io_mem_release_valid),
    .io_mem_release_bits_opcode(entries_1_io_mem_release_bits_opcode),
    .io_mem_release_bits_param(entries_1_io_mem_release_bits_param),
    .io_mem_release_bits_size(entries_1_io_mem_release_bits_size),
    .io_mem_release_bits_source(entries_1_io_mem_release_bits_source),
    .io_mem_release_bits_address(entries_1_io_mem_release_bits_address),
    .io_mem_release_bits_data(entries_1_io_mem_release_bits_data),
    .io_mem_grant_ready(entries_1_io_mem_grant_ready),
    .io_mem_grant_valid(entries_1_io_mem_grant_valid),
    .io_block_addr_valid(entries_1_io_block_addr_valid),
    .io_block_addr_bits(entries_1_io_block_addr_bits),
    .io_release_wakeup_valid(entries_1_io_release_wakeup_valid),
    .io_release_wakeup_bits(entries_1_io_release_wakeup_bits),
    .io_release_update_valid(entries_1_io_release_update_valid),
    .io_release_update_bits_addr(entries_1_io_release_update_bits_addr),
    .io_release_update_bits_mask_delayed(entries_1_io_release_update_bits_mask_delayed),
    .io_release_update_bits_data_delayed(entries_1_io_release_update_bits_data_delayed),
    .io_release_update_bits_mask_orr(entries_1_io_release_update_bits_mask_orr),
    .io_probe_ttob_check_req_valid(entries_1_io_probe_ttob_check_req_valid),
    .io_probe_ttob_check_req_bits_addr(entries_1_io_probe_ttob_check_req_bits_addr),
    .io_probe_ttob_check_resp_bits_toN(entries_1_io_probe_ttob_check_resp_bits_toN)
  );
  WritebackEntry entries_2 ( // @[WritebackQueue.scala 589:53]
    .clock(entries_2_clock),
    .reset(entries_2_reset),
    .io_id(entries_2_io_id),
    .io_primary_valid(entries_2_io_primary_valid),
    .io_primary_ready(entries_2_io_primary_ready),
    .io_primary_ready_dup_0(entries_2_io_primary_ready_dup_0),
    .io_primary_ready_dup_1(entries_2_io_primary_ready_dup_1),
    .io_primary_ready_dup_2(entries_2_io_primary_ready_dup_2),
    .io_primary_ready_dup_3(entries_2_io_primary_ready_dup_3),
    .io_primary_ready_dup_4(entries_2_io_primary_ready_dup_4),
    .io_primary_ready_dup_5(entries_2_io_primary_ready_dup_5),
    .io_primary_ready_dup_6(entries_2_io_primary_ready_dup_6),
    .io_primary_ready_dup_7(entries_2_io_primary_ready_dup_7),
    .io_primary_ready_dup_8(entries_2_io_primary_ready_dup_8),
    .io_primary_ready_dup_9(entries_2_io_primary_ready_dup_9),
    .io_primary_ready_dup_10(entries_2_io_primary_ready_dup_10),
    .io_primary_ready_dup_11(entries_2_io_primary_ready_dup_11),
    .io_secondary_valid(entries_2_io_secondary_valid),
    .io_secondary_ready(entries_2_io_secondary_ready),
    .io_req_valid(entries_2_io_req_valid),
    .io_req_bits_param(entries_2_io_req_bits_param),
    .io_req_bits_voluntary(entries_2_io_req_bits_voluntary),
    .io_req_bits_hasData(entries_2_io_req_bits_hasData),
    .io_req_bits_delay_release(entries_2_io_req_bits_delay_release),
    .io_req_bits_miss_id(entries_2_io_req_bits_miss_id),
    .io_req_bits_addr(entries_2_io_req_bits_addr),
    .io_req_data_data(entries_2_io_req_data_data),
    .io_mem_release_ready(entries_2_io_mem_release_ready),
    .io_mem_release_valid(entries_2_io_mem_release_valid),
    .io_mem_release_bits_opcode(entries_2_io_mem_release_bits_opcode),
    .io_mem_release_bits_param(entries_2_io_mem_release_bits_param),
    .io_mem_release_bits_size(entries_2_io_mem_release_bits_size),
    .io_mem_release_bits_source(entries_2_io_mem_release_bits_source),
    .io_mem_release_bits_address(entries_2_io_mem_release_bits_address),
    .io_mem_release_bits_data(entries_2_io_mem_release_bits_data),
    .io_mem_grant_ready(entries_2_io_mem_grant_ready),
    .io_mem_grant_valid(entries_2_io_mem_grant_valid),
    .io_block_addr_valid(entries_2_io_block_addr_valid),
    .io_block_addr_bits(entries_2_io_block_addr_bits),
    .io_release_wakeup_valid(entries_2_io_release_wakeup_valid),
    .io_release_wakeup_bits(entries_2_io_release_wakeup_bits),
    .io_release_update_valid(entries_2_io_release_update_valid),
    .io_release_update_bits_addr(entries_2_io_release_update_bits_addr),
    .io_release_update_bits_mask_delayed(entries_2_io_release_update_bits_mask_delayed),
    .io_release_update_bits_data_delayed(entries_2_io_release_update_bits_data_delayed),
    .io_release_update_bits_mask_orr(entries_2_io_release_update_bits_mask_orr),
    .io_probe_ttob_check_req_valid(entries_2_io_probe_ttob_check_req_valid),
    .io_probe_ttob_check_req_bits_addr(entries_2_io_probe_ttob_check_req_bits_addr),
    .io_probe_ttob_check_resp_bits_toN(entries_2_io_probe_ttob_check_resp_bits_toN)
  );
  WritebackEntry entries_3 ( // @[WritebackQueue.scala 589:53]
    .clock(entries_3_clock),
    .reset(entries_3_reset),
    .io_id(entries_3_io_id),
    .io_primary_valid(entries_3_io_primary_valid),
    .io_primary_ready(entries_3_io_primary_ready),
    .io_primary_ready_dup_0(entries_3_io_primary_ready_dup_0),
    .io_primary_ready_dup_1(entries_3_io_primary_ready_dup_1),
    .io_primary_ready_dup_2(entries_3_io_primary_ready_dup_2),
    .io_primary_ready_dup_3(entries_3_io_primary_ready_dup_3),
    .io_primary_ready_dup_4(entries_3_io_primary_ready_dup_4),
    .io_primary_ready_dup_5(entries_3_io_primary_ready_dup_5),
    .io_primary_ready_dup_6(entries_3_io_primary_ready_dup_6),
    .io_primary_ready_dup_7(entries_3_io_primary_ready_dup_7),
    .io_primary_ready_dup_8(entries_3_io_primary_ready_dup_8),
    .io_primary_ready_dup_9(entries_3_io_primary_ready_dup_9),
    .io_primary_ready_dup_10(entries_3_io_primary_ready_dup_10),
    .io_primary_ready_dup_11(entries_3_io_primary_ready_dup_11),
    .io_secondary_valid(entries_3_io_secondary_valid),
    .io_secondary_ready(entries_3_io_secondary_ready),
    .io_req_valid(entries_3_io_req_valid),
    .io_req_bits_param(entries_3_io_req_bits_param),
    .io_req_bits_voluntary(entries_3_io_req_bits_voluntary),
    .io_req_bits_hasData(entries_3_io_req_bits_hasData),
    .io_req_bits_delay_release(entries_3_io_req_bits_delay_release),
    .io_req_bits_miss_id(entries_3_io_req_bits_miss_id),
    .io_req_bits_addr(entries_3_io_req_bits_addr),
    .io_req_data_data(entries_3_io_req_data_data),
    .io_mem_release_ready(entries_3_io_mem_release_ready),
    .io_mem_release_valid(entries_3_io_mem_release_valid),
    .io_mem_release_bits_opcode(entries_3_io_mem_release_bits_opcode),
    .io_mem_release_bits_param(entries_3_io_mem_release_bits_param),
    .io_mem_release_bits_size(entries_3_io_mem_release_bits_size),
    .io_mem_release_bits_source(entries_3_io_mem_release_bits_source),
    .io_mem_release_bits_address(entries_3_io_mem_release_bits_address),
    .io_mem_release_bits_data(entries_3_io_mem_release_bits_data),
    .io_mem_grant_ready(entries_3_io_mem_grant_ready),
    .io_mem_grant_valid(entries_3_io_mem_grant_valid),
    .io_block_addr_valid(entries_3_io_block_addr_valid),
    .io_block_addr_bits(entries_3_io_block_addr_bits),
    .io_release_wakeup_valid(entries_3_io_release_wakeup_valid),
    .io_release_wakeup_bits(entries_3_io_release_wakeup_bits),
    .io_release_update_valid(entries_3_io_release_update_valid),
    .io_release_update_bits_addr(entries_3_io_release_update_bits_addr),
    .io_release_update_bits_mask_delayed(entries_3_io_release_update_bits_mask_delayed),
    .io_release_update_bits_data_delayed(entries_3_io_release_update_bits_data_delayed),
    .io_release_update_bits_mask_orr(entries_3_io_release_update_bits_mask_orr),
    .io_probe_ttob_check_req_valid(entries_3_io_probe_ttob_check_req_valid),
    .io_probe_ttob_check_req_bits_addr(entries_3_io_probe_ttob_check_req_bits_addr),
    .io_probe_ttob_check_resp_bits_toN(entries_3_io_probe_ttob_check_resp_bits_toN)
  );
  WritebackEntry_4 entries_4 ( // @[WritebackQueue.scala 589:53]
    .clock(entries_4_clock),
    .reset(entries_4_reset),
    .io_id(entries_4_io_id),
    .io_primary_valid(entries_4_io_primary_valid),
    .io_primary_ready(entries_4_io_primary_ready),
    .io_primary_ready_dup_0(entries_4_io_primary_ready_dup_0),
    .io_primary_ready_dup_1(entries_4_io_primary_ready_dup_1),
    .io_primary_ready_dup_2(entries_4_io_primary_ready_dup_2),
    .io_primary_ready_dup_3(entries_4_io_primary_ready_dup_3),
    .io_primary_ready_dup_4(entries_4_io_primary_ready_dup_4),
    .io_primary_ready_dup_5(entries_4_io_primary_ready_dup_5),
    .io_primary_ready_dup_6(entries_4_io_primary_ready_dup_6),
    .io_primary_ready_dup_7(entries_4_io_primary_ready_dup_7),
    .io_primary_ready_dup_8(entries_4_io_primary_ready_dup_8),
    .io_primary_ready_dup_9(entries_4_io_primary_ready_dup_9),
    .io_primary_ready_dup_10(entries_4_io_primary_ready_dup_10),
    .io_primary_ready_dup_11(entries_4_io_primary_ready_dup_11),
    .io_secondary_valid(entries_4_io_secondary_valid),
    .io_secondary_ready(entries_4_io_secondary_ready),
    .io_req_valid(entries_4_io_req_valid),
    .io_req_bits_param(entries_4_io_req_bits_param),
    .io_req_bits_voluntary(entries_4_io_req_bits_voluntary),
    .io_req_bits_hasData(entries_4_io_req_bits_hasData),
    .io_req_bits_delay_release(entries_4_io_req_bits_delay_release),
    .io_req_bits_miss_id(entries_4_io_req_bits_miss_id),
    .io_req_bits_addr(entries_4_io_req_bits_addr),
    .io_req_data_data(entries_4_io_req_data_data),
    .io_mem_release_ready(entries_4_io_mem_release_ready),
    .io_mem_release_valid(entries_4_io_mem_release_valid),
    .io_mem_release_bits_opcode(entries_4_io_mem_release_bits_opcode),
    .io_mem_release_bits_param(entries_4_io_mem_release_bits_param),
    .io_mem_release_bits_size(entries_4_io_mem_release_bits_size),
    .io_mem_release_bits_source(entries_4_io_mem_release_bits_source),
    .io_mem_release_bits_address(entries_4_io_mem_release_bits_address),
    .io_mem_release_bits_data(entries_4_io_mem_release_bits_data),
    .io_mem_grant_ready(entries_4_io_mem_grant_ready),
    .io_mem_grant_valid(entries_4_io_mem_grant_valid),
    .io_block_addr_valid(entries_4_io_block_addr_valid),
    .io_block_addr_bits(entries_4_io_block_addr_bits),
    .io_release_wakeup_valid(entries_4_io_release_wakeup_valid),
    .io_release_wakeup_bits(entries_4_io_release_wakeup_bits),
    .io_release_update_valid(entries_4_io_release_update_valid),
    .io_release_update_bits_addr(entries_4_io_release_update_bits_addr),
    .io_release_update_bits_mask_delayed(entries_4_io_release_update_bits_mask_delayed),
    .io_release_update_bits_data_delayed(entries_4_io_release_update_bits_data_delayed),
    .io_release_update_bits_mask_orr(entries_4_io_release_update_bits_mask_orr),
    .io_probe_ttob_check_req_valid(entries_4_io_probe_ttob_check_req_valid),
    .io_probe_ttob_check_req_bits_addr(entries_4_io_probe_ttob_check_req_bits_addr),
    .io_probe_ttob_check_resp_bits_toN(entries_4_io_probe_ttob_check_resp_bits_toN)
  );
  WritebackEntry_4 entries_5 ( // @[WritebackQueue.scala 589:53]
    .clock(entries_5_clock),
    .reset(entries_5_reset),
    .io_id(entries_5_io_id),
    .io_primary_valid(entries_5_io_primary_valid),
    .io_primary_ready(entries_5_io_primary_ready),
    .io_primary_ready_dup_0(entries_5_io_primary_ready_dup_0),
    .io_primary_ready_dup_1(entries_5_io_primary_ready_dup_1),
    .io_primary_ready_dup_2(entries_5_io_primary_ready_dup_2),
    .io_primary_ready_dup_3(entries_5_io_primary_ready_dup_3),
    .io_primary_ready_dup_4(entries_5_io_primary_ready_dup_4),
    .io_primary_ready_dup_5(entries_5_io_primary_ready_dup_5),
    .io_primary_ready_dup_6(entries_5_io_primary_ready_dup_6),
    .io_primary_ready_dup_7(entries_5_io_primary_ready_dup_7),
    .io_primary_ready_dup_8(entries_5_io_primary_ready_dup_8),
    .io_primary_ready_dup_9(entries_5_io_primary_ready_dup_9),
    .io_primary_ready_dup_10(entries_5_io_primary_ready_dup_10),
    .io_primary_ready_dup_11(entries_5_io_primary_ready_dup_11),
    .io_secondary_valid(entries_5_io_secondary_valid),
    .io_secondary_ready(entries_5_io_secondary_ready),
    .io_req_valid(entries_5_io_req_valid),
    .io_req_bits_param(entries_5_io_req_bits_param),
    .io_req_bits_voluntary(entries_5_io_req_bits_voluntary),
    .io_req_bits_hasData(entries_5_io_req_bits_hasData),
    .io_req_bits_delay_release(entries_5_io_req_bits_delay_release),
    .io_req_bits_miss_id(entries_5_io_req_bits_miss_id),
    .io_req_bits_addr(entries_5_io_req_bits_addr),
    .io_req_data_data(entries_5_io_req_data_data),
    .io_mem_release_ready(entries_5_io_mem_release_ready),
    .io_mem_release_valid(entries_5_io_mem_release_valid),
    .io_mem_release_bits_opcode(entries_5_io_mem_release_bits_opcode),
    .io_mem_release_bits_param(entries_5_io_mem_release_bits_param),
    .io_mem_release_bits_size(entries_5_io_mem_release_bits_size),
    .io_mem_release_bits_source(entries_5_io_mem_release_bits_source),
    .io_mem_release_bits_address(entries_5_io_mem_release_bits_address),
    .io_mem_release_bits_data(entries_5_io_mem_release_bits_data),
    .io_mem_grant_ready(entries_5_io_mem_grant_ready),
    .io_mem_grant_valid(entries_5_io_mem_grant_valid),
    .io_block_addr_valid(entries_5_io_block_addr_valid),
    .io_block_addr_bits(entries_5_io_block_addr_bits),
    .io_release_wakeup_valid(entries_5_io_release_wakeup_valid),
    .io_release_wakeup_bits(entries_5_io_release_wakeup_bits),
    .io_release_update_valid(entries_5_io_release_update_valid),
    .io_release_update_bits_addr(entries_5_io_release_update_bits_addr),
    .io_release_update_bits_mask_delayed(entries_5_io_release_update_bits_mask_delayed),
    .io_release_update_bits_data_delayed(entries_5_io_release_update_bits_data_delayed),
    .io_release_update_bits_mask_orr(entries_5_io_release_update_bits_mask_orr),
    .io_probe_ttob_check_req_valid(entries_5_io_probe_ttob_check_req_valid),
    .io_probe_ttob_check_req_bits_addr(entries_5_io_probe_ttob_check_req_bits_addr),
    .io_probe_ttob_check_resp_bits_toN(entries_5_io_probe_ttob_check_resp_bits_toN)
  );
  WritebackEntry_4 entries_6 ( // @[WritebackQueue.scala 589:53]
    .clock(entries_6_clock),
    .reset(entries_6_reset),
    .io_id(entries_6_io_id),
    .io_primary_valid(entries_6_io_primary_valid),
    .io_primary_ready(entries_6_io_primary_ready),
    .io_primary_ready_dup_0(entries_6_io_primary_ready_dup_0),
    .io_primary_ready_dup_1(entries_6_io_primary_ready_dup_1),
    .io_primary_ready_dup_2(entries_6_io_primary_ready_dup_2),
    .io_primary_ready_dup_3(entries_6_io_primary_ready_dup_3),
    .io_primary_ready_dup_4(entries_6_io_primary_ready_dup_4),
    .io_primary_ready_dup_5(entries_6_io_primary_ready_dup_5),
    .io_primary_ready_dup_6(entries_6_io_primary_ready_dup_6),
    .io_primary_ready_dup_7(entries_6_io_primary_ready_dup_7),
    .io_primary_ready_dup_8(entries_6_io_primary_ready_dup_8),
    .io_primary_ready_dup_9(entries_6_io_primary_ready_dup_9),
    .io_primary_ready_dup_10(entries_6_io_primary_ready_dup_10),
    .io_primary_ready_dup_11(entries_6_io_primary_ready_dup_11),
    .io_secondary_valid(entries_6_io_secondary_valid),
    .io_secondary_ready(entries_6_io_secondary_ready),
    .io_req_valid(entries_6_io_req_valid),
    .io_req_bits_param(entries_6_io_req_bits_param),
    .io_req_bits_voluntary(entries_6_io_req_bits_voluntary),
    .io_req_bits_hasData(entries_6_io_req_bits_hasData),
    .io_req_bits_delay_release(entries_6_io_req_bits_delay_release),
    .io_req_bits_miss_id(entries_6_io_req_bits_miss_id),
    .io_req_bits_addr(entries_6_io_req_bits_addr),
    .io_req_data_data(entries_6_io_req_data_data),
    .io_mem_release_ready(entries_6_io_mem_release_ready),
    .io_mem_release_valid(entries_6_io_mem_release_valid),
    .io_mem_release_bits_opcode(entries_6_io_mem_release_bits_opcode),
    .io_mem_release_bits_param(entries_6_io_mem_release_bits_param),
    .io_mem_release_bits_size(entries_6_io_mem_release_bits_size),
    .io_mem_release_bits_source(entries_6_io_mem_release_bits_source),
    .io_mem_release_bits_address(entries_6_io_mem_release_bits_address),
    .io_mem_release_bits_data(entries_6_io_mem_release_bits_data),
    .io_mem_grant_ready(entries_6_io_mem_grant_ready),
    .io_mem_grant_valid(entries_6_io_mem_grant_valid),
    .io_block_addr_valid(entries_6_io_block_addr_valid),
    .io_block_addr_bits(entries_6_io_block_addr_bits),
    .io_release_wakeup_valid(entries_6_io_release_wakeup_valid),
    .io_release_wakeup_bits(entries_6_io_release_wakeup_bits),
    .io_release_update_valid(entries_6_io_release_update_valid),
    .io_release_update_bits_addr(entries_6_io_release_update_bits_addr),
    .io_release_update_bits_mask_delayed(entries_6_io_release_update_bits_mask_delayed),
    .io_release_update_bits_data_delayed(entries_6_io_release_update_bits_data_delayed),
    .io_release_update_bits_mask_orr(entries_6_io_release_update_bits_mask_orr),
    .io_probe_ttob_check_req_valid(entries_6_io_probe_ttob_check_req_valid),
    .io_probe_ttob_check_req_bits_addr(entries_6_io_probe_ttob_check_req_bits_addr),
    .io_probe_ttob_check_resp_bits_toN(entries_6_io_probe_ttob_check_resp_bits_toN)
  );
  WritebackEntry_4 entries_7 ( // @[WritebackQueue.scala 589:53]
    .clock(entries_7_clock),
    .reset(entries_7_reset),
    .io_id(entries_7_io_id),
    .io_primary_valid(entries_7_io_primary_valid),
    .io_primary_ready(entries_7_io_primary_ready),
    .io_primary_ready_dup_0(entries_7_io_primary_ready_dup_0),
    .io_primary_ready_dup_1(entries_7_io_primary_ready_dup_1),
    .io_primary_ready_dup_2(entries_7_io_primary_ready_dup_2),
    .io_primary_ready_dup_3(entries_7_io_primary_ready_dup_3),
    .io_primary_ready_dup_4(entries_7_io_primary_ready_dup_4),
    .io_primary_ready_dup_5(entries_7_io_primary_ready_dup_5),
    .io_primary_ready_dup_6(entries_7_io_primary_ready_dup_6),
    .io_primary_ready_dup_7(entries_7_io_primary_ready_dup_7),
    .io_primary_ready_dup_8(entries_7_io_primary_ready_dup_8),
    .io_primary_ready_dup_9(entries_7_io_primary_ready_dup_9),
    .io_primary_ready_dup_10(entries_7_io_primary_ready_dup_10),
    .io_primary_ready_dup_11(entries_7_io_primary_ready_dup_11),
    .io_secondary_valid(entries_7_io_secondary_valid),
    .io_secondary_ready(entries_7_io_secondary_ready),
    .io_req_valid(entries_7_io_req_valid),
    .io_req_bits_param(entries_7_io_req_bits_param),
    .io_req_bits_voluntary(entries_7_io_req_bits_voluntary),
    .io_req_bits_hasData(entries_7_io_req_bits_hasData),
    .io_req_bits_delay_release(entries_7_io_req_bits_delay_release),
    .io_req_bits_miss_id(entries_7_io_req_bits_miss_id),
    .io_req_bits_addr(entries_7_io_req_bits_addr),
    .io_req_data_data(entries_7_io_req_data_data),
    .io_mem_release_ready(entries_7_io_mem_release_ready),
    .io_mem_release_valid(entries_7_io_mem_release_valid),
    .io_mem_release_bits_opcode(entries_7_io_mem_release_bits_opcode),
    .io_mem_release_bits_param(entries_7_io_mem_release_bits_param),
    .io_mem_release_bits_size(entries_7_io_mem_release_bits_size),
    .io_mem_release_bits_source(entries_7_io_mem_release_bits_source),
    .io_mem_release_bits_address(entries_7_io_mem_release_bits_address),
    .io_mem_release_bits_data(entries_7_io_mem_release_bits_data),
    .io_mem_grant_ready(entries_7_io_mem_grant_ready),
    .io_mem_grant_valid(entries_7_io_mem_grant_valid),
    .io_block_addr_valid(entries_7_io_block_addr_valid),
    .io_block_addr_bits(entries_7_io_block_addr_bits),
    .io_release_wakeup_valid(entries_7_io_release_wakeup_valid),
    .io_release_wakeup_bits(entries_7_io_release_wakeup_bits),
    .io_release_update_valid(entries_7_io_release_update_valid),
    .io_release_update_bits_addr(entries_7_io_release_update_bits_addr),
    .io_release_update_bits_mask_delayed(entries_7_io_release_update_bits_mask_delayed),
    .io_release_update_bits_data_delayed(entries_7_io_release_update_bits_data_delayed),
    .io_release_update_bits_mask_orr(entries_7_io_release_update_bits_mask_orr),
    .io_probe_ttob_check_req_valid(entries_7_io_probe_ttob_check_req_valid),
    .io_probe_ttob_check_req_bits_addr(entries_7_io_probe_ttob_check_req_bits_addr),
    .io_probe_ttob_check_resp_bits_toN(entries_7_io_probe_ttob_check_resp_bits_toN)
  );
  assign io_req_ready = |_accept_T; // @[WritebackQueue.scala 565:39]
  assign io_req_ready_dup_0 = |_io_req_ready_dup_0_T; // @[WritebackQueue.scala 623:56]
  assign io_req_ready_dup_1 = |_io_req_ready_dup_1_T; // @[WritebackQueue.scala 623:56]
  assign io_req_ready_dup_2 = |_io_req_ready_dup_2_T; // @[WritebackQueue.scala 623:56]
  assign io_req_ready_dup_3 = |_io_req_ready_dup_3_T; // @[WritebackQueue.scala 623:56]
  assign io_req_ready_dup_4 = |_io_req_ready_dup_4_T; // @[WritebackQueue.scala 623:56]
  assign io_req_ready_dup_5 = |_io_req_ready_dup_5_T; // @[WritebackQueue.scala 623:56]
  assign io_req_ready_dup_6 = |_io_req_ready_dup_6_T; // @[WritebackQueue.scala 623:56]
  assign io_req_ready_dup_7 = |_io_req_ready_dup_7_T; // @[WritebackQueue.scala 623:56]
  assign io_req_ready_dup_8 = |_io_req_ready_dup_8_T; // @[WritebackQueue.scala 623:56]
  assign io_req_ready_dup_9 = |_io_req_ready_dup_9_T; // @[WritebackQueue.scala 623:56]
  assign io_req_ready_dup_10 = |_io_req_ready_dup_10_T; // @[WritebackQueue.scala 623:56]
  assign io_req_ready_dup_11 = |_io_req_ready_dup_11_T; // @[WritebackQueue.scala 623:56]
  assign io_mem_release_valid = idle ? _T_54 : _sink_ACancel_earlyValid_T_21; // @[Arbiter.scala 125:29]
  assign io_mem_release_bits_opcode = _T_234 | _T_228; // @[Mux.scala 27:73]
  assign io_mem_release_bits_param = _T_219 | _T_213; // @[Mux.scala 27:73]
  assign io_mem_release_bits_size = _T_204 | _T_198; // @[Mux.scala 27:73]
  assign io_mem_release_bits_source = _T_189 | _T_183; // @[Mux.scala 27:73]
  assign io_mem_release_bits_address = _T_174 | _T_168; // @[Mux.scala 27:73]
  assign io_mem_release_bits_data = _T_114 | _T_108; // @[Mux.scala 27:73]
  assign io_probe_ttob_check_resp_bits_toN = |_io_probe_ttob_check_resp_bits_toN_T; // @[WritebackQueue.scala 627:110]
  assign io_block_miss_req = io_miss_req_valid & miss_req_conflict; // @[WritebackQueue.scala 633:42]
  assign io_perf_0_value = {{5'd0}, io_perf_0_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_1_value = {{5'd0}, io_perf_1_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_2_value = {{5'd0}, io_perf_2_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_3_value = {{5'd0}, io_perf_3_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign io_perf_4_value = {{5'd0}, io_perf_4_value_REG_1}; // @[PerfCounterUtils.scala 295:17]
  assign entries_0_clock = clock;
  assign entries_0_reset = reset;
  assign entries_0_io_id = 3'h4; // @[WritebackQueue.scala 598:19]
  assign entries_0_io_primary_valid = alloc & entries_0_io_primary_ready; // @[WritebackQueue.scala 608:31]
  assign entries_0_io_secondary_valid = io_req_valid & accept; // @[WritebackQueue.scala 610:48]
  assign entries_0_io_req_valid = io_req_valid; // @[WritebackQueue.scala 601:26]
  assign entries_0_io_req_bits_param = io_req_bits_param; // @[WritebackQueue.scala 604:26]
  assign entries_0_io_req_bits_voluntary = io_req_bits_voluntary; // @[WritebackQueue.scala 604:26]
  assign entries_0_io_req_bits_hasData = io_req_bits_hasData; // @[WritebackQueue.scala 604:26]
  assign entries_0_io_req_bits_delay_release = io_req_bits_delay_release; // @[WritebackQueue.scala 604:26]
  assign entries_0_io_req_bits_miss_id = io_req_bits_miss_id; // @[WritebackQueue.scala 604:26]
  assign entries_0_io_req_bits_addr = io_req_bits_addr; // @[WritebackQueue.scala 604:26]
  assign entries_0_io_req_data_data = req_data_data; // @[WritebackQueue.scala 605:26]
  assign entries_0_io_mem_release_ready = io_mem_release_ready & allowed_0; // @[Arbiter.scala 123:31]
  assign entries_0_io_mem_grant_valid = 4'h4 == io_mem_grant_bits_source & io_mem_grant_valid; // @[WritebackQueue.scala 612:63]
  assign entries_0_io_release_wakeup_valid = io_release_wakeup_valid; // @[WritebackQueue.scala 615:31]
  assign entries_0_io_release_wakeup_bits = io_release_wakeup_bits; // @[WritebackQueue.scala 615:31]
  assign entries_0_io_release_update_valid = io_release_update_valid; // @[WritebackQueue.scala 616:37]
  assign entries_0_io_release_update_bits_addr = io_release_update_bits_addr; // @[WritebackQueue.scala 578:43 579:38]
  assign entries_0_io_release_update_bits_mask_delayed = release_update_bits_for_entry_mask_delayed_r; // @[WritebackQueue.scala 578:43 580:46]
  assign entries_0_io_release_update_bits_data_delayed = release_update_bits_for_entry_data_delayed_r; // @[WritebackQueue.scala 578:43 581:46]
  assign entries_0_io_release_update_bits_mask_orr = |io_release_update_bits_mask; // @[WritebackQueue.scala 582:73]
  assign entries_0_io_probe_ttob_check_req_valid = io_probe_ttob_check_req_valid; // @[WritebackQueue.scala 619:37]
  assign entries_0_io_probe_ttob_check_req_bits_addr = io_probe_ttob_check_req_bits_addr; // @[WritebackQueue.scala 619:37]
  assign entries_1_clock = clock;
  assign entries_1_reset = reset;
  assign entries_1_io_id = 3'h5; // @[WritebackQueue.scala 598:19]
  assign entries_1_io_primary_valid = _entries_1_io_primary_valid_T_1 & entries_1_io_primary_ready; // @[WritebackQueue.scala 608:31]
  assign entries_1_io_secondary_valid = io_req_valid & accept; // @[WritebackQueue.scala 610:48]
  assign entries_1_io_req_valid = io_req_valid; // @[WritebackQueue.scala 601:26]
  assign entries_1_io_req_bits_param = io_req_bits_param; // @[WritebackQueue.scala 604:26]
  assign entries_1_io_req_bits_voluntary = io_req_bits_voluntary; // @[WritebackQueue.scala 604:26]
  assign entries_1_io_req_bits_hasData = io_req_bits_hasData; // @[WritebackQueue.scala 604:26]
  assign entries_1_io_req_bits_delay_release = io_req_bits_delay_release; // @[WritebackQueue.scala 604:26]
  assign entries_1_io_req_bits_miss_id = io_req_bits_miss_id; // @[WritebackQueue.scala 604:26]
  assign entries_1_io_req_bits_addr = io_req_bits_addr; // @[WritebackQueue.scala 604:26]
  assign entries_1_io_req_data_data = req_data_data; // @[WritebackQueue.scala 605:26]
  assign entries_1_io_mem_release_ready = io_mem_release_ready & allowed_1; // @[Arbiter.scala 123:31]
  assign entries_1_io_mem_grant_valid = 4'h5 == io_mem_grant_bits_source & io_mem_grant_valid; // @[WritebackQueue.scala 612:63]
  assign entries_1_io_release_wakeup_valid = io_release_wakeup_valid; // @[WritebackQueue.scala 615:31]
  assign entries_1_io_release_wakeup_bits = io_release_wakeup_bits; // @[WritebackQueue.scala 615:31]
  assign entries_1_io_release_update_valid = io_release_update_valid; // @[WritebackQueue.scala 616:37]
  assign entries_1_io_release_update_bits_addr = io_release_update_bits_addr; // @[WritebackQueue.scala 578:43 579:38]
  assign entries_1_io_release_update_bits_mask_delayed = release_update_bits_for_entry_mask_delayed_r; // @[WritebackQueue.scala 578:43 580:46]
  assign entries_1_io_release_update_bits_data_delayed = release_update_bits_for_entry_data_delayed_r; // @[WritebackQueue.scala 578:43 581:46]
  assign entries_1_io_release_update_bits_mask_orr = |io_release_update_bits_mask; // @[WritebackQueue.scala 582:73]
  assign entries_1_io_probe_ttob_check_req_valid = io_probe_ttob_check_req_valid; // @[WritebackQueue.scala 619:37]
  assign entries_1_io_probe_ttob_check_req_bits_addr = io_probe_ttob_check_req_bits_addr; // @[WritebackQueue.scala 619:37]
  assign entries_2_clock = clock;
  assign entries_2_reset = reset;
  assign entries_2_io_id = 3'h6; // @[WritebackQueue.scala 598:19]
  assign entries_2_io_primary_valid = _entries_2_io_primary_valid_T_1 & entries_2_io_primary_ready; // @[WritebackQueue.scala 608:31]
  assign entries_2_io_secondary_valid = io_req_valid & accept; // @[WritebackQueue.scala 610:48]
  assign entries_2_io_req_valid = io_req_valid; // @[WritebackQueue.scala 601:26]
  assign entries_2_io_req_bits_param = io_req_bits_param; // @[WritebackQueue.scala 604:26]
  assign entries_2_io_req_bits_voluntary = io_req_bits_voluntary; // @[WritebackQueue.scala 604:26]
  assign entries_2_io_req_bits_hasData = io_req_bits_hasData; // @[WritebackQueue.scala 604:26]
  assign entries_2_io_req_bits_delay_release = io_req_bits_delay_release; // @[WritebackQueue.scala 604:26]
  assign entries_2_io_req_bits_miss_id = io_req_bits_miss_id; // @[WritebackQueue.scala 604:26]
  assign entries_2_io_req_bits_addr = io_req_bits_addr; // @[WritebackQueue.scala 604:26]
  assign entries_2_io_req_data_data = req_data_data; // @[WritebackQueue.scala 605:26]
  assign entries_2_io_mem_release_ready = io_mem_release_ready & allowed_2; // @[Arbiter.scala 123:31]
  assign entries_2_io_mem_grant_valid = 4'h6 == io_mem_grant_bits_source & io_mem_grant_valid; // @[WritebackQueue.scala 612:63]
  assign entries_2_io_release_wakeup_valid = io_release_wakeup_valid; // @[WritebackQueue.scala 615:31]
  assign entries_2_io_release_wakeup_bits = io_release_wakeup_bits; // @[WritebackQueue.scala 615:31]
  assign entries_2_io_release_update_valid = io_release_update_valid; // @[WritebackQueue.scala 616:37]
  assign entries_2_io_release_update_bits_addr = io_release_update_bits_addr; // @[WritebackQueue.scala 578:43 579:38]
  assign entries_2_io_release_update_bits_mask_delayed = release_update_bits_for_entry_mask_delayed_r; // @[WritebackQueue.scala 578:43 580:46]
  assign entries_2_io_release_update_bits_data_delayed = release_update_bits_for_entry_data_delayed_r; // @[WritebackQueue.scala 578:43 581:46]
  assign entries_2_io_release_update_bits_mask_orr = |io_release_update_bits_mask; // @[WritebackQueue.scala 582:73]
  assign entries_2_io_probe_ttob_check_req_valid = io_probe_ttob_check_req_valid; // @[WritebackQueue.scala 619:37]
  assign entries_2_io_probe_ttob_check_req_bits_addr = io_probe_ttob_check_req_bits_addr; // @[WritebackQueue.scala 619:37]
  assign entries_3_clock = clock;
  assign entries_3_reset = reset;
  assign entries_3_io_id = 3'h7; // @[WritebackQueue.scala 598:19]
  assign entries_3_io_primary_valid = _entries_3_io_primary_valid_T_1 & entries_3_io_primary_ready; // @[WritebackQueue.scala 608:31]
  assign entries_3_io_secondary_valid = io_req_valid & accept; // @[WritebackQueue.scala 610:48]
  assign entries_3_io_req_valid = io_req_valid; // @[WritebackQueue.scala 601:26]
  assign entries_3_io_req_bits_param = io_req_bits_param; // @[WritebackQueue.scala 604:26]
  assign entries_3_io_req_bits_voluntary = io_req_bits_voluntary; // @[WritebackQueue.scala 604:26]
  assign entries_3_io_req_bits_hasData = io_req_bits_hasData; // @[WritebackQueue.scala 604:26]
  assign entries_3_io_req_bits_delay_release = io_req_bits_delay_release; // @[WritebackQueue.scala 604:26]
  assign entries_3_io_req_bits_miss_id = io_req_bits_miss_id; // @[WritebackQueue.scala 604:26]
  assign entries_3_io_req_bits_addr = io_req_bits_addr; // @[WritebackQueue.scala 604:26]
  assign entries_3_io_req_data_data = req_data_data; // @[WritebackQueue.scala 605:26]
  assign entries_3_io_mem_release_ready = io_mem_release_ready & allowed_3; // @[Arbiter.scala 123:31]
  assign entries_3_io_mem_grant_valid = 4'h7 == io_mem_grant_bits_source & io_mem_grant_valid; // @[WritebackQueue.scala 612:63]
  assign entries_3_io_release_wakeup_valid = io_release_wakeup_valid; // @[WritebackQueue.scala 615:31]
  assign entries_3_io_release_wakeup_bits = io_release_wakeup_bits; // @[WritebackQueue.scala 615:31]
  assign entries_3_io_release_update_valid = io_release_update_valid; // @[WritebackQueue.scala 616:37]
  assign entries_3_io_release_update_bits_addr = io_release_update_bits_addr; // @[WritebackQueue.scala 578:43 579:38]
  assign entries_3_io_release_update_bits_mask_delayed = release_update_bits_for_entry_mask_delayed_r; // @[WritebackQueue.scala 578:43 580:46]
  assign entries_3_io_release_update_bits_data_delayed = release_update_bits_for_entry_data_delayed_r; // @[WritebackQueue.scala 578:43 581:46]
  assign entries_3_io_release_update_bits_mask_orr = |io_release_update_bits_mask; // @[WritebackQueue.scala 582:73]
  assign entries_3_io_probe_ttob_check_req_valid = io_probe_ttob_check_req_valid; // @[WritebackQueue.scala 619:37]
  assign entries_3_io_probe_ttob_check_req_bits_addr = io_probe_ttob_check_req_bits_addr; // @[WritebackQueue.scala 619:37]
  assign entries_4_clock = clock;
  assign entries_4_reset = reset;
  assign entries_4_io_id = 4'h8; // @[WritebackQueue.scala 598:19]
  assign entries_4_io_primary_valid = _entries_4_io_primary_valid_T_1 & entries_4_io_primary_ready; // @[WritebackQueue.scala 608:31]
  assign entries_4_io_secondary_valid = io_req_valid & accept; // @[WritebackQueue.scala 610:48]
  assign entries_4_io_req_valid = io_req_valid; // @[WritebackQueue.scala 601:26]
  assign entries_4_io_req_bits_param = io_req_bits_param; // @[WritebackQueue.scala 604:26]
  assign entries_4_io_req_bits_voluntary = io_req_bits_voluntary; // @[WritebackQueue.scala 604:26]
  assign entries_4_io_req_bits_hasData = io_req_bits_hasData; // @[WritebackQueue.scala 604:26]
  assign entries_4_io_req_bits_delay_release = io_req_bits_delay_release; // @[WritebackQueue.scala 604:26]
  assign entries_4_io_req_bits_miss_id = io_req_bits_miss_id; // @[WritebackQueue.scala 604:26]
  assign entries_4_io_req_bits_addr = io_req_bits_addr; // @[WritebackQueue.scala 604:26]
  assign entries_4_io_req_data_data = req_data_data; // @[WritebackQueue.scala 605:26]
  assign entries_4_io_mem_release_ready = io_mem_release_ready & allowed_4; // @[Arbiter.scala 123:31]
  assign entries_4_io_mem_grant_valid = 4'h8 == io_mem_grant_bits_source & io_mem_grant_valid; // @[WritebackQueue.scala 612:63]
  assign entries_4_io_release_wakeup_valid = io_release_wakeup_valid; // @[WritebackQueue.scala 615:31]
  assign entries_4_io_release_wakeup_bits = io_release_wakeup_bits; // @[WritebackQueue.scala 615:31]
  assign entries_4_io_release_update_valid = io_release_update_valid; // @[WritebackQueue.scala 616:37]
  assign entries_4_io_release_update_bits_addr = io_release_update_bits_addr; // @[WritebackQueue.scala 578:43 579:38]
  assign entries_4_io_release_update_bits_mask_delayed = release_update_bits_for_entry_mask_delayed_r; // @[WritebackQueue.scala 578:43 580:46]
  assign entries_4_io_release_update_bits_data_delayed = release_update_bits_for_entry_data_delayed_r; // @[WritebackQueue.scala 578:43 581:46]
  assign entries_4_io_release_update_bits_mask_orr = |io_release_update_bits_mask; // @[WritebackQueue.scala 582:73]
  assign entries_4_io_probe_ttob_check_req_valid = io_probe_ttob_check_req_valid; // @[WritebackQueue.scala 619:37]
  assign entries_4_io_probe_ttob_check_req_bits_addr = io_probe_ttob_check_req_bits_addr; // @[WritebackQueue.scala 619:37]
  assign entries_5_clock = clock;
  assign entries_5_reset = reset;
  assign entries_5_io_id = 4'h9; // @[WritebackQueue.scala 598:19]
  assign entries_5_io_primary_valid = _entries_5_io_primary_valid_T_1 & entries_5_io_primary_ready; // @[WritebackQueue.scala 608:31]
  assign entries_5_io_secondary_valid = io_req_valid & accept; // @[WritebackQueue.scala 610:48]
  assign entries_5_io_req_valid = io_req_valid; // @[WritebackQueue.scala 601:26]
  assign entries_5_io_req_bits_param = io_req_bits_param; // @[WritebackQueue.scala 604:26]
  assign entries_5_io_req_bits_voluntary = io_req_bits_voluntary; // @[WritebackQueue.scala 604:26]
  assign entries_5_io_req_bits_hasData = io_req_bits_hasData; // @[WritebackQueue.scala 604:26]
  assign entries_5_io_req_bits_delay_release = io_req_bits_delay_release; // @[WritebackQueue.scala 604:26]
  assign entries_5_io_req_bits_miss_id = io_req_bits_miss_id; // @[WritebackQueue.scala 604:26]
  assign entries_5_io_req_bits_addr = io_req_bits_addr; // @[WritebackQueue.scala 604:26]
  assign entries_5_io_req_data_data = req_data_data; // @[WritebackQueue.scala 605:26]
  assign entries_5_io_mem_release_ready = io_mem_release_ready & allowed_5; // @[Arbiter.scala 123:31]
  assign entries_5_io_mem_grant_valid = 4'h9 == io_mem_grant_bits_source & io_mem_grant_valid; // @[WritebackQueue.scala 612:63]
  assign entries_5_io_release_wakeup_valid = io_release_wakeup_valid; // @[WritebackQueue.scala 615:31]
  assign entries_5_io_release_wakeup_bits = io_release_wakeup_bits; // @[WritebackQueue.scala 615:31]
  assign entries_5_io_release_update_valid = io_release_update_valid; // @[WritebackQueue.scala 616:37]
  assign entries_5_io_release_update_bits_addr = io_release_update_bits_addr; // @[WritebackQueue.scala 578:43 579:38]
  assign entries_5_io_release_update_bits_mask_delayed = release_update_bits_for_entry_mask_delayed_r; // @[WritebackQueue.scala 578:43 580:46]
  assign entries_5_io_release_update_bits_data_delayed = release_update_bits_for_entry_data_delayed_r; // @[WritebackQueue.scala 578:43 581:46]
  assign entries_5_io_release_update_bits_mask_orr = |io_release_update_bits_mask; // @[WritebackQueue.scala 582:73]
  assign entries_5_io_probe_ttob_check_req_valid = io_probe_ttob_check_req_valid; // @[WritebackQueue.scala 619:37]
  assign entries_5_io_probe_ttob_check_req_bits_addr = io_probe_ttob_check_req_bits_addr; // @[WritebackQueue.scala 619:37]
  assign entries_6_clock = clock;
  assign entries_6_reset = reset;
  assign entries_6_io_id = 4'ha; // @[WritebackQueue.scala 598:19]
  assign entries_6_io_primary_valid = _entries_6_io_primary_valid_T_1 & entries_6_io_primary_ready; // @[WritebackQueue.scala 608:31]
  assign entries_6_io_secondary_valid = io_req_valid & accept; // @[WritebackQueue.scala 610:48]
  assign entries_6_io_req_valid = io_req_valid; // @[WritebackQueue.scala 601:26]
  assign entries_6_io_req_bits_param = io_req_bits_param; // @[WritebackQueue.scala 604:26]
  assign entries_6_io_req_bits_voluntary = io_req_bits_voluntary; // @[WritebackQueue.scala 604:26]
  assign entries_6_io_req_bits_hasData = io_req_bits_hasData; // @[WritebackQueue.scala 604:26]
  assign entries_6_io_req_bits_delay_release = io_req_bits_delay_release; // @[WritebackQueue.scala 604:26]
  assign entries_6_io_req_bits_miss_id = io_req_bits_miss_id; // @[WritebackQueue.scala 604:26]
  assign entries_6_io_req_bits_addr = io_req_bits_addr; // @[WritebackQueue.scala 604:26]
  assign entries_6_io_req_data_data = req_data_data; // @[WritebackQueue.scala 605:26]
  assign entries_6_io_mem_release_ready = io_mem_release_ready & allowed_6; // @[Arbiter.scala 123:31]
  assign entries_6_io_mem_grant_valid = 4'ha == io_mem_grant_bits_source & io_mem_grant_valid; // @[WritebackQueue.scala 612:63]
  assign entries_6_io_release_wakeup_valid = io_release_wakeup_valid; // @[WritebackQueue.scala 615:31]
  assign entries_6_io_release_wakeup_bits = io_release_wakeup_bits; // @[WritebackQueue.scala 615:31]
  assign entries_6_io_release_update_valid = io_release_update_valid; // @[WritebackQueue.scala 616:37]
  assign entries_6_io_release_update_bits_addr = io_release_update_bits_addr; // @[WritebackQueue.scala 578:43 579:38]
  assign entries_6_io_release_update_bits_mask_delayed = release_update_bits_for_entry_mask_delayed_r; // @[WritebackQueue.scala 578:43 580:46]
  assign entries_6_io_release_update_bits_data_delayed = release_update_bits_for_entry_data_delayed_r; // @[WritebackQueue.scala 578:43 581:46]
  assign entries_6_io_release_update_bits_mask_orr = |io_release_update_bits_mask; // @[WritebackQueue.scala 582:73]
  assign entries_6_io_probe_ttob_check_req_valid = io_probe_ttob_check_req_valid; // @[WritebackQueue.scala 619:37]
  assign entries_6_io_probe_ttob_check_req_bits_addr = io_probe_ttob_check_req_bits_addr; // @[WritebackQueue.scala 619:37]
  assign entries_7_clock = clock;
  assign entries_7_reset = reset;
  assign entries_7_io_id = 4'hb; // @[WritebackQueue.scala 598:19]
  assign entries_7_io_primary_valid = _entries_7_io_primary_valid_T_1 & entries_7_io_primary_ready; // @[WritebackQueue.scala 608:31]
  assign entries_7_io_secondary_valid = io_req_valid & accept; // @[WritebackQueue.scala 610:48]
  assign entries_7_io_req_valid = io_req_valid; // @[WritebackQueue.scala 601:26]
  assign entries_7_io_req_bits_param = io_req_bits_param; // @[WritebackQueue.scala 604:26]
  assign entries_7_io_req_bits_voluntary = io_req_bits_voluntary; // @[WritebackQueue.scala 604:26]
  assign entries_7_io_req_bits_hasData = io_req_bits_hasData; // @[WritebackQueue.scala 604:26]
  assign entries_7_io_req_bits_delay_release = io_req_bits_delay_release; // @[WritebackQueue.scala 604:26]
  assign entries_7_io_req_bits_miss_id = io_req_bits_miss_id; // @[WritebackQueue.scala 604:26]
  assign entries_7_io_req_bits_addr = io_req_bits_addr; // @[WritebackQueue.scala 604:26]
  assign entries_7_io_req_data_data = req_data_data; // @[WritebackQueue.scala 605:26]
  assign entries_7_io_mem_release_ready = io_mem_release_ready & allowed_7; // @[Arbiter.scala 123:31]
  assign entries_7_io_mem_grant_valid = 4'hb == io_mem_grant_bits_source & io_mem_grant_valid; // @[WritebackQueue.scala 612:63]
  assign entries_7_io_release_wakeup_valid = io_release_wakeup_valid; // @[WritebackQueue.scala 615:31]
  assign entries_7_io_release_wakeup_bits = io_release_wakeup_bits; // @[WritebackQueue.scala 615:31]
  assign entries_7_io_release_update_valid = io_release_update_valid; // @[WritebackQueue.scala 616:37]
  assign entries_7_io_release_update_bits_addr = io_release_update_bits_addr; // @[WritebackQueue.scala 578:43 579:38]
  assign entries_7_io_release_update_bits_mask_delayed = release_update_bits_for_entry_mask_delayed_r; // @[WritebackQueue.scala 578:43 580:46]
  assign entries_7_io_release_update_bits_data_delayed = release_update_bits_for_entry_data_delayed_r; // @[WritebackQueue.scala 578:43 581:46]
  assign entries_7_io_release_update_bits_mask_orr = |io_release_update_bits_mask; // @[WritebackQueue.scala 582:73]
  assign entries_7_io_probe_ttob_check_req_valid = io_probe_ttob_check_req_valid; // @[WritebackQueue.scala 619:37]
  assign entries_7_io_probe_ttob_check_req_bits_addr = io_probe_ttob_check_req_bits_addr; // @[WritebackQueue.scala 619:37]
  always @(posedge clock) begin
    if (io_release_update_valid) begin // @[Reg.scala 17:18]
      release_update_bits_for_entry_mask_delayed_r <= io_release_update_bits_mask; // @[Reg.scala 17:22]
    end
    if (io_release_update_valid) begin // @[Reg.scala 17:18]
      release_update_bits_for_entry_data_delayed_r <= io_release_update_bits_data; // @[Reg.scala 17:22]
    end
    if (io_req_valid) begin // @[Reg.scala 17:18]
      req_data_data <= io_req_bits_data; // @[Reg.scala 17:22]
    end
    perfValidCount <= _perfValidCount_T_4 + _perfValidCount_T_10; // @[Bitwise.scala 48:55]
    io_perf_0_value_REG <= io_req_ready & io_req_valid; // @[Decoupled.scala 50:35]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_1_value_REG <= perfValidCount < _T_284; // @[WritebackQueue.scala 666:46]
    io_perf_1_value_REG_1 <= io_perf_1_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_2_value_REG <= perfValidCount > _T_284 & perfValidCount <= _T_288; // @[WritebackQueue.scala 667:77]
    io_perf_2_value_REG_1 <= io_perf_2_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_3_value_REG <= perfValidCount > _T_288 & _GEN_8 <= _T_294; // @[WritebackQueue.scala 668:77]
    io_perf_3_value_REG_1 <= io_perf_3_value_REG; // @[PerfCounterUtils.scala 295:27]
    io_perf_4_value_REG <= _GEN_8 > _T_294; // @[WritebackQueue.scala 669:46]
    io_perf_4_value_REG_1 <= io_perf_4_value_REG; // @[PerfCounterUtils.scala 295:27]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 113:23]
      beatsLeft <= 1'h0;
    end else if (latch) begin
      beatsLeft <= initBeats;
    end else begin
      beatsLeft <= beatsLeft - _beatsLeft_T_2;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 27:32]
      readys_mask <= 8'hff; // @[Arbiter.scala 28:12]
    end else if (latch & |readys_valid) begin // @[Arbiter.scala 23:23]
      readys_mask <= _readys_mask_T_9;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state_0 <= 1'h0;
    end else if (idle) begin
      state_0 <= earlyWinner_0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state_1 <= 1'h0;
    end else if (idle) begin
      state_1 <= earlyWinner_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state_2 <= 1'h0;
    end else if (idle) begin
      state_2 <= earlyWinner_2;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state_3 <= 1'h0;
    end else if (idle) begin
      state_3 <= earlyWinner_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state_4 <= 1'h0;
    end else if (idle) begin
      state_4 <= earlyWinner_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state_5 <= 1'h0;
    end else if (idle) begin
      state_5 <= earlyWinner_5;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state_6 <= 1'h0;
    end else if (idle) begin
      state_6 <= earlyWinner_6;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state_7 <= 1'h0;
    end else if (idle) begin
      state_7 <= earlyWinner_7;
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
  release_update_bits_for_entry_mask_delayed_r = _RAND_0[7:0];
  _RAND_1 = {16{`RANDOM}};
  release_update_bits_for_entry_data_delayed_r = _RAND_1[511:0];
  _RAND_2 = {16{`RANDOM}};
  req_data_data = _RAND_2[511:0];
  _RAND_3 = {1{`RANDOM}};
  beatsLeft = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  readys_mask = _RAND_4[7:0];
  _RAND_5 = {1{`RANDOM}};
  state_0 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  state_1 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  state_2 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  state_3 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  state_4 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  state_5 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  state_6 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  state_7 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  perfValidCount = _RAND_13[3:0];
  _RAND_14 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  io_perf_1_value_REG = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  io_perf_1_value_REG_1 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  io_perf_2_value_REG = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  io_perf_2_value_REG_1 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  io_perf_3_value_REG = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  io_perf_3_value_REG_1 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  io_perf_4_value_REG = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  io_perf_4_value_REG_1 = _RAND_23[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    beatsLeft = 1'h0;
  end
  if (reset) begin
    readys_mask = 8'hff;
  end
  if (reset) begin
    state_0 = 1'h0;
  end
  if (reset) begin
    state_1 = 1'h0;
  end
  if (reset) begin
    state_2 = 1'h0;
  end
  if (reset) begin
    state_3 = 1'h0;
  end
  if (reset) begin
    state_4 = 1'h0;
  end
  if (reset) begin
    state_5 = 1'h0;
  end
  if (reset) begin
    state_6 = 1'h0;
  end
  if (reset) begin
    state_7 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

