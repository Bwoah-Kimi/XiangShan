module RequestBuffer_2(
  input         clock,
  input         reset,
  output        io_in_ready,
  input         io_in_valid,
  input  [2:0]  io_in_bits_opcode,
  input  [2:0]  io_in_bits_param,
  input  [2:0]  io_in_bits_size,
  input  [9:0]  io_in_bits_source,
  input  [7:0]  io_in_bits_set,
  input  [21:0] io_in_bits_tag,
  input  [5:0]  io_in_bits_off,
  input  [31:0] io_in_bits_mask,
  input  [2:0]  io_in_bits_bufIdx,
  input         io_out_ready,
  output        io_out_valid,
  output [2:0]  io_out_bits_channel,
  output [2:0]  io_out_bits_opcode,
  output [2:0]  io_out_bits_param,
  output [2:0]  io_out_bits_size,
  output [9:0]  io_out_bits_source,
  output [7:0]  io_out_bits_set,
  output [21:0] io_out_bits_tag,
  output [5:0]  io_out_bits_off,
  output [31:0] io_out_bits_mask,
  output [2:0]  io_out_bits_bufIdx,
  output        io_out_bits_preferCache,
  output        io_out_bits_dirty,
  output        io_out_bits_fromProbeHelper,
  output        io_out_bits_fromCmoHelper,
  output        io_out_bits_needProbeAckData,
  output [3:0]  io_out_bits_reqSource,
  input         io_mshr_status_0_valid,
  input  [7:0]  io_mshr_status_0_bits_set,
  input         io_mshr_status_0_bits_will_free,
  input         io_mshr_status_1_valid,
  input  [7:0]  io_mshr_status_1_bits_set,
  input         io_mshr_status_1_bits_will_free,
  input         io_mshr_status_2_valid,
  input  [7:0]  io_mshr_status_2_bits_set,
  input         io_mshr_status_2_bits_will_free,
  input         io_mshr_status_3_valid,
  input  [7:0]  io_mshr_status_3_bits_set,
  input         io_mshr_status_3_bits_will_free,
  input         io_mshr_status_4_valid,
  input  [7:0]  io_mshr_status_4_bits_set,
  input         io_mshr_status_4_bits_will_free,
  input         io_mshr_status_5_valid,
  input  [7:0]  io_mshr_status_5_bits_set,
  input         io_mshr_status_5_bits_will_free,
  input         io_mshr_status_6_valid,
  input  [7:0]  io_mshr_status_6_bits_set,
  input         io_mshr_status_6_bits_will_free,
  input         io_mshr_status_7_valid,
  input  [7:0]  io_mshr_status_7_bits_set,
  input         io_mshr_status_7_bits_will_free,
  input         io_mshr_status_8_valid,
  input  [7:0]  io_mshr_status_8_bits_set,
  input         io_mshr_status_8_bits_will_free,
  input         io_mshr_status_9_valid,
  input  [7:0]  io_mshr_status_9_bits_set,
  input         io_mshr_status_9_bits_will_free,
  input         io_mshr_status_10_valid,
  input  [7:0]  io_mshr_status_10_bits_set,
  input         io_mshr_status_10_bits_will_free,
  input         io_mshr_status_11_valid,
  input  [7:0]  io_mshr_status_11_bits_set,
  input         io_mshr_status_11_bits_will_free,
  input         io_mshr_status_12_valid,
  input  [7:0]  io_mshr_status_12_bits_set,
  input         io_mshr_status_12_bits_will_free,
  input         io_mshr_status_13_valid,
  input  [7:0]  io_mshr_status_13_bits_set,
  input         io_mshr_status_13_bits_will_free
);
`ifdef RANDOMIZE_MEM_INIT
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
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
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
`endif // RANDOMIZE_REG_INIT
  reg [2:0] buffer_channel [0:3]; // @[RequestBuffer.scala 17:19]
  wire  buffer_channel_issue_arb_io_in_0_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_channel_issue_arb_io_in_0_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_channel_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_channel_issue_arb_io_in_1_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_channel_issue_arb_io_in_1_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_channel_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_channel_issue_arb_io_in_2_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_channel_issue_arb_io_in_2_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_channel_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_channel_issue_arb_io_in_3_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_channel_issue_arb_io_in_3_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_channel_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_channel_dup_mask_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_channel_dup_mask_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_channel_dup_mask_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_channel_dup_mask_MPORT_1_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_channel_dup_mask_MPORT_1_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_channel_dup_mask_MPORT_1_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_channel_dup_mask_MPORT_2_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_channel_dup_mask_MPORT_2_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_channel_dup_mask_MPORT_2_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_channel_dup_mask_MPORT_3_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_channel_dup_mask_MPORT_3_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_channel_dup_mask_MPORT_3_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_channel_dup_mask_MPORT_4_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_channel_dup_mask_MPORT_4_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_channel_dup_mask_MPORT_4_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_channel_dup_mask_MPORT_5_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_channel_dup_mask_MPORT_5_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_channel_dup_mask_MPORT_5_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_channel_dup_mask_MPORT_6_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_channel_dup_mask_MPORT_6_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_channel_dup_mask_MPORT_6_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_channel_dup_mask_MPORT_7_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_channel_dup_mask_MPORT_7_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_channel_dup_mask_MPORT_7_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_channel_req_deps_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_channel_req_deps_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_channel_req_deps_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_channel_req_deps_MPORT_1_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_channel_req_deps_MPORT_1_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_channel_req_deps_MPORT_1_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_channel_req_deps_MPORT_2_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_channel_req_deps_MPORT_2_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_channel_req_deps_MPORT_2_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_channel_req_deps_MPORT_3_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_channel_req_deps_MPORT_3_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_channel_req_deps_MPORT_3_data; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_channel_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_channel_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_channel_MPORT_mask; // @[RequestBuffer.scala 17:19]
  wire  buffer_channel_MPORT_en; // @[RequestBuffer.scala 17:19]
  reg [2:0] buffer_opcode [0:3]; // @[RequestBuffer.scala 17:19]
  wire  buffer_opcode_issue_arb_io_in_0_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_opcode_issue_arb_io_in_0_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_opcode_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_opcode_issue_arb_io_in_1_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_opcode_issue_arb_io_in_1_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_opcode_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_opcode_issue_arb_io_in_2_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_opcode_issue_arb_io_in_2_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_opcode_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_opcode_issue_arb_io_in_3_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_opcode_issue_arb_io_in_3_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_opcode_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_opcode_dup_mask_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_opcode_dup_mask_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_opcode_dup_mask_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_opcode_dup_mask_MPORT_1_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_opcode_dup_mask_MPORT_1_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_opcode_dup_mask_MPORT_1_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_opcode_dup_mask_MPORT_2_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_opcode_dup_mask_MPORT_2_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_opcode_dup_mask_MPORT_2_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_opcode_dup_mask_MPORT_3_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_opcode_dup_mask_MPORT_3_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_opcode_dup_mask_MPORT_3_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_opcode_dup_mask_MPORT_4_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_opcode_dup_mask_MPORT_4_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_opcode_dup_mask_MPORT_4_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_opcode_dup_mask_MPORT_5_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_opcode_dup_mask_MPORT_5_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_opcode_dup_mask_MPORT_5_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_opcode_dup_mask_MPORT_6_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_opcode_dup_mask_MPORT_6_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_opcode_dup_mask_MPORT_6_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_opcode_dup_mask_MPORT_7_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_opcode_dup_mask_MPORT_7_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_opcode_dup_mask_MPORT_7_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_opcode_req_deps_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_opcode_req_deps_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_opcode_req_deps_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_opcode_req_deps_MPORT_1_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_opcode_req_deps_MPORT_1_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_opcode_req_deps_MPORT_1_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_opcode_req_deps_MPORT_2_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_opcode_req_deps_MPORT_2_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_opcode_req_deps_MPORT_2_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_opcode_req_deps_MPORT_3_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_opcode_req_deps_MPORT_3_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_opcode_req_deps_MPORT_3_data; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_opcode_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_opcode_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_opcode_MPORT_mask; // @[RequestBuffer.scala 17:19]
  wire  buffer_opcode_MPORT_en; // @[RequestBuffer.scala 17:19]
  reg [2:0] buffer_param [0:3]; // @[RequestBuffer.scala 17:19]
  wire  buffer_param_issue_arb_io_in_0_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_param_issue_arb_io_in_0_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_param_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_param_issue_arb_io_in_1_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_param_issue_arb_io_in_1_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_param_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_param_issue_arb_io_in_2_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_param_issue_arb_io_in_2_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_param_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_param_issue_arb_io_in_3_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_param_issue_arb_io_in_3_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_param_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_param_dup_mask_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_param_dup_mask_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_param_dup_mask_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_param_dup_mask_MPORT_1_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_param_dup_mask_MPORT_1_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_param_dup_mask_MPORT_1_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_param_dup_mask_MPORT_2_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_param_dup_mask_MPORT_2_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_param_dup_mask_MPORT_2_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_param_dup_mask_MPORT_3_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_param_dup_mask_MPORT_3_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_param_dup_mask_MPORT_3_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_param_dup_mask_MPORT_4_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_param_dup_mask_MPORT_4_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_param_dup_mask_MPORT_4_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_param_dup_mask_MPORT_5_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_param_dup_mask_MPORT_5_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_param_dup_mask_MPORT_5_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_param_dup_mask_MPORT_6_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_param_dup_mask_MPORT_6_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_param_dup_mask_MPORT_6_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_param_dup_mask_MPORT_7_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_param_dup_mask_MPORT_7_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_param_dup_mask_MPORT_7_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_param_req_deps_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_param_req_deps_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_param_req_deps_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_param_req_deps_MPORT_1_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_param_req_deps_MPORT_1_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_param_req_deps_MPORT_1_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_param_req_deps_MPORT_2_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_param_req_deps_MPORT_2_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_param_req_deps_MPORT_2_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_param_req_deps_MPORT_3_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_param_req_deps_MPORT_3_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_param_req_deps_MPORT_3_data; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_param_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_param_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_param_MPORT_mask; // @[RequestBuffer.scala 17:19]
  wire  buffer_param_MPORT_en; // @[RequestBuffer.scala 17:19]
  reg [2:0] buffer_size [0:3]; // @[RequestBuffer.scala 17:19]
  wire  buffer_size_issue_arb_io_in_0_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_size_issue_arb_io_in_0_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_size_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_size_issue_arb_io_in_1_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_size_issue_arb_io_in_1_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_size_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_size_issue_arb_io_in_2_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_size_issue_arb_io_in_2_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_size_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_size_issue_arb_io_in_3_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_size_issue_arb_io_in_3_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_size_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_size_dup_mask_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_size_dup_mask_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_size_dup_mask_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_size_dup_mask_MPORT_1_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_size_dup_mask_MPORT_1_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_size_dup_mask_MPORT_1_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_size_dup_mask_MPORT_2_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_size_dup_mask_MPORT_2_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_size_dup_mask_MPORT_2_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_size_dup_mask_MPORT_3_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_size_dup_mask_MPORT_3_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_size_dup_mask_MPORT_3_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_size_dup_mask_MPORT_4_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_size_dup_mask_MPORT_4_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_size_dup_mask_MPORT_4_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_size_dup_mask_MPORT_5_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_size_dup_mask_MPORT_5_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_size_dup_mask_MPORT_5_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_size_dup_mask_MPORT_6_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_size_dup_mask_MPORT_6_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_size_dup_mask_MPORT_6_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_size_dup_mask_MPORT_7_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_size_dup_mask_MPORT_7_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_size_dup_mask_MPORT_7_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_size_req_deps_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_size_req_deps_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_size_req_deps_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_size_req_deps_MPORT_1_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_size_req_deps_MPORT_1_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_size_req_deps_MPORT_1_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_size_req_deps_MPORT_2_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_size_req_deps_MPORT_2_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_size_req_deps_MPORT_2_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_size_req_deps_MPORT_3_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_size_req_deps_MPORT_3_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_size_req_deps_MPORT_3_data; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_size_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_size_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_size_MPORT_mask; // @[RequestBuffer.scala 17:19]
  wire  buffer_size_MPORT_en; // @[RequestBuffer.scala 17:19]
  reg [9:0] buffer_source [0:3]; // @[RequestBuffer.scala 17:19]
  wire  buffer_source_issue_arb_io_in_0_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_source_issue_arb_io_in_0_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [9:0] buffer_source_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_source_issue_arb_io_in_1_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_source_issue_arb_io_in_1_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [9:0] buffer_source_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_source_issue_arb_io_in_2_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_source_issue_arb_io_in_2_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [9:0] buffer_source_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_source_issue_arb_io_in_3_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_source_issue_arb_io_in_3_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [9:0] buffer_source_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_source_dup_mask_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_source_dup_mask_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [9:0] buffer_source_dup_mask_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_source_dup_mask_MPORT_1_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_source_dup_mask_MPORT_1_addr; // @[RequestBuffer.scala 17:19]
  wire [9:0] buffer_source_dup_mask_MPORT_1_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_source_dup_mask_MPORT_2_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_source_dup_mask_MPORT_2_addr; // @[RequestBuffer.scala 17:19]
  wire [9:0] buffer_source_dup_mask_MPORT_2_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_source_dup_mask_MPORT_3_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_source_dup_mask_MPORT_3_addr; // @[RequestBuffer.scala 17:19]
  wire [9:0] buffer_source_dup_mask_MPORT_3_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_source_dup_mask_MPORT_4_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_source_dup_mask_MPORT_4_addr; // @[RequestBuffer.scala 17:19]
  wire [9:0] buffer_source_dup_mask_MPORT_4_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_source_dup_mask_MPORT_5_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_source_dup_mask_MPORT_5_addr; // @[RequestBuffer.scala 17:19]
  wire [9:0] buffer_source_dup_mask_MPORT_5_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_source_dup_mask_MPORT_6_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_source_dup_mask_MPORT_6_addr; // @[RequestBuffer.scala 17:19]
  wire [9:0] buffer_source_dup_mask_MPORT_6_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_source_dup_mask_MPORT_7_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_source_dup_mask_MPORT_7_addr; // @[RequestBuffer.scala 17:19]
  wire [9:0] buffer_source_dup_mask_MPORT_7_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_source_req_deps_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_source_req_deps_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [9:0] buffer_source_req_deps_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_source_req_deps_MPORT_1_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_source_req_deps_MPORT_1_addr; // @[RequestBuffer.scala 17:19]
  wire [9:0] buffer_source_req_deps_MPORT_1_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_source_req_deps_MPORT_2_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_source_req_deps_MPORT_2_addr; // @[RequestBuffer.scala 17:19]
  wire [9:0] buffer_source_req_deps_MPORT_2_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_source_req_deps_MPORT_3_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_source_req_deps_MPORT_3_addr; // @[RequestBuffer.scala 17:19]
  wire [9:0] buffer_source_req_deps_MPORT_3_data; // @[RequestBuffer.scala 17:19]
  wire [9:0] buffer_source_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_source_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_source_MPORT_mask; // @[RequestBuffer.scala 17:19]
  wire  buffer_source_MPORT_en; // @[RequestBuffer.scala 17:19]
  reg [7:0] buffer_set [0:3]; // @[RequestBuffer.scala 17:19]
  wire  buffer_set_issue_arb_io_in_0_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_set_issue_arb_io_in_0_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [7:0] buffer_set_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_set_issue_arb_io_in_1_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_set_issue_arb_io_in_1_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [7:0] buffer_set_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_set_issue_arb_io_in_2_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_set_issue_arb_io_in_2_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [7:0] buffer_set_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_set_issue_arb_io_in_3_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_set_issue_arb_io_in_3_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [7:0] buffer_set_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_set_dup_mask_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_set_dup_mask_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [7:0] buffer_set_dup_mask_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_set_dup_mask_MPORT_1_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_set_dup_mask_MPORT_1_addr; // @[RequestBuffer.scala 17:19]
  wire [7:0] buffer_set_dup_mask_MPORT_1_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_set_dup_mask_MPORT_2_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_set_dup_mask_MPORT_2_addr; // @[RequestBuffer.scala 17:19]
  wire [7:0] buffer_set_dup_mask_MPORT_2_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_set_dup_mask_MPORT_3_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_set_dup_mask_MPORT_3_addr; // @[RequestBuffer.scala 17:19]
  wire [7:0] buffer_set_dup_mask_MPORT_3_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_set_dup_mask_MPORT_4_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_set_dup_mask_MPORT_4_addr; // @[RequestBuffer.scala 17:19]
  wire [7:0] buffer_set_dup_mask_MPORT_4_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_set_dup_mask_MPORT_5_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_set_dup_mask_MPORT_5_addr; // @[RequestBuffer.scala 17:19]
  wire [7:0] buffer_set_dup_mask_MPORT_5_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_set_dup_mask_MPORT_6_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_set_dup_mask_MPORT_6_addr; // @[RequestBuffer.scala 17:19]
  wire [7:0] buffer_set_dup_mask_MPORT_6_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_set_dup_mask_MPORT_7_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_set_dup_mask_MPORT_7_addr; // @[RequestBuffer.scala 17:19]
  wire [7:0] buffer_set_dup_mask_MPORT_7_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_set_req_deps_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_set_req_deps_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [7:0] buffer_set_req_deps_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_set_req_deps_MPORT_1_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_set_req_deps_MPORT_1_addr; // @[RequestBuffer.scala 17:19]
  wire [7:0] buffer_set_req_deps_MPORT_1_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_set_req_deps_MPORT_2_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_set_req_deps_MPORT_2_addr; // @[RequestBuffer.scala 17:19]
  wire [7:0] buffer_set_req_deps_MPORT_2_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_set_req_deps_MPORT_3_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_set_req_deps_MPORT_3_addr; // @[RequestBuffer.scala 17:19]
  wire [7:0] buffer_set_req_deps_MPORT_3_data; // @[RequestBuffer.scala 17:19]
  wire [7:0] buffer_set_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_set_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_set_MPORT_mask; // @[RequestBuffer.scala 17:19]
  wire  buffer_set_MPORT_en; // @[RequestBuffer.scala 17:19]
  reg [21:0] buffer_tag [0:3]; // @[RequestBuffer.scala 17:19]
  wire  buffer_tag_issue_arb_io_in_0_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_tag_issue_arb_io_in_0_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [21:0] buffer_tag_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_tag_issue_arb_io_in_1_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_tag_issue_arb_io_in_1_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [21:0] buffer_tag_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_tag_issue_arb_io_in_2_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_tag_issue_arb_io_in_2_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [21:0] buffer_tag_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_tag_issue_arb_io_in_3_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_tag_issue_arb_io_in_3_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [21:0] buffer_tag_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_tag_dup_mask_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_tag_dup_mask_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [21:0] buffer_tag_dup_mask_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_tag_dup_mask_MPORT_1_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_tag_dup_mask_MPORT_1_addr; // @[RequestBuffer.scala 17:19]
  wire [21:0] buffer_tag_dup_mask_MPORT_1_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_tag_dup_mask_MPORT_2_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_tag_dup_mask_MPORT_2_addr; // @[RequestBuffer.scala 17:19]
  wire [21:0] buffer_tag_dup_mask_MPORT_2_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_tag_dup_mask_MPORT_3_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_tag_dup_mask_MPORT_3_addr; // @[RequestBuffer.scala 17:19]
  wire [21:0] buffer_tag_dup_mask_MPORT_3_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_tag_dup_mask_MPORT_4_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_tag_dup_mask_MPORT_4_addr; // @[RequestBuffer.scala 17:19]
  wire [21:0] buffer_tag_dup_mask_MPORT_4_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_tag_dup_mask_MPORT_5_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_tag_dup_mask_MPORT_5_addr; // @[RequestBuffer.scala 17:19]
  wire [21:0] buffer_tag_dup_mask_MPORT_5_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_tag_dup_mask_MPORT_6_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_tag_dup_mask_MPORT_6_addr; // @[RequestBuffer.scala 17:19]
  wire [21:0] buffer_tag_dup_mask_MPORT_6_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_tag_dup_mask_MPORT_7_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_tag_dup_mask_MPORT_7_addr; // @[RequestBuffer.scala 17:19]
  wire [21:0] buffer_tag_dup_mask_MPORT_7_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_tag_req_deps_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_tag_req_deps_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [21:0] buffer_tag_req_deps_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_tag_req_deps_MPORT_1_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_tag_req_deps_MPORT_1_addr; // @[RequestBuffer.scala 17:19]
  wire [21:0] buffer_tag_req_deps_MPORT_1_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_tag_req_deps_MPORT_2_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_tag_req_deps_MPORT_2_addr; // @[RequestBuffer.scala 17:19]
  wire [21:0] buffer_tag_req_deps_MPORT_2_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_tag_req_deps_MPORT_3_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_tag_req_deps_MPORT_3_addr; // @[RequestBuffer.scala 17:19]
  wire [21:0] buffer_tag_req_deps_MPORT_3_data; // @[RequestBuffer.scala 17:19]
  wire [21:0] buffer_tag_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_tag_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_tag_MPORT_mask; // @[RequestBuffer.scala 17:19]
  wire  buffer_tag_MPORT_en; // @[RequestBuffer.scala 17:19]
  reg [5:0] buffer_off [0:3]; // @[RequestBuffer.scala 17:19]
  wire  buffer_off_issue_arb_io_in_0_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_off_issue_arb_io_in_0_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [5:0] buffer_off_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_off_issue_arb_io_in_1_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_off_issue_arb_io_in_1_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [5:0] buffer_off_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_off_issue_arb_io_in_2_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_off_issue_arb_io_in_2_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [5:0] buffer_off_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_off_issue_arb_io_in_3_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_off_issue_arb_io_in_3_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [5:0] buffer_off_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_off_dup_mask_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_off_dup_mask_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [5:0] buffer_off_dup_mask_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_off_dup_mask_MPORT_1_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_off_dup_mask_MPORT_1_addr; // @[RequestBuffer.scala 17:19]
  wire [5:0] buffer_off_dup_mask_MPORT_1_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_off_dup_mask_MPORT_2_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_off_dup_mask_MPORT_2_addr; // @[RequestBuffer.scala 17:19]
  wire [5:0] buffer_off_dup_mask_MPORT_2_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_off_dup_mask_MPORT_3_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_off_dup_mask_MPORT_3_addr; // @[RequestBuffer.scala 17:19]
  wire [5:0] buffer_off_dup_mask_MPORT_3_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_off_dup_mask_MPORT_4_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_off_dup_mask_MPORT_4_addr; // @[RequestBuffer.scala 17:19]
  wire [5:0] buffer_off_dup_mask_MPORT_4_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_off_dup_mask_MPORT_5_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_off_dup_mask_MPORT_5_addr; // @[RequestBuffer.scala 17:19]
  wire [5:0] buffer_off_dup_mask_MPORT_5_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_off_dup_mask_MPORT_6_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_off_dup_mask_MPORT_6_addr; // @[RequestBuffer.scala 17:19]
  wire [5:0] buffer_off_dup_mask_MPORT_6_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_off_dup_mask_MPORT_7_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_off_dup_mask_MPORT_7_addr; // @[RequestBuffer.scala 17:19]
  wire [5:0] buffer_off_dup_mask_MPORT_7_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_off_req_deps_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_off_req_deps_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [5:0] buffer_off_req_deps_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_off_req_deps_MPORT_1_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_off_req_deps_MPORT_1_addr; // @[RequestBuffer.scala 17:19]
  wire [5:0] buffer_off_req_deps_MPORT_1_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_off_req_deps_MPORT_2_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_off_req_deps_MPORT_2_addr; // @[RequestBuffer.scala 17:19]
  wire [5:0] buffer_off_req_deps_MPORT_2_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_off_req_deps_MPORT_3_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_off_req_deps_MPORT_3_addr; // @[RequestBuffer.scala 17:19]
  wire [5:0] buffer_off_req_deps_MPORT_3_data; // @[RequestBuffer.scala 17:19]
  wire [5:0] buffer_off_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_off_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_off_MPORT_mask; // @[RequestBuffer.scala 17:19]
  wire  buffer_off_MPORT_en; // @[RequestBuffer.scala 17:19]
  reg [31:0] buffer_mask [0:3]; // @[RequestBuffer.scala 17:19]
  wire  buffer_mask_issue_arb_io_in_0_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_mask_issue_arb_io_in_0_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [31:0] buffer_mask_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_mask_issue_arb_io_in_1_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_mask_issue_arb_io_in_1_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [31:0] buffer_mask_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_mask_issue_arb_io_in_2_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_mask_issue_arb_io_in_2_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [31:0] buffer_mask_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_mask_issue_arb_io_in_3_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_mask_issue_arb_io_in_3_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [31:0] buffer_mask_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_mask_dup_mask_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_mask_dup_mask_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [31:0] buffer_mask_dup_mask_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_mask_dup_mask_MPORT_1_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_mask_dup_mask_MPORT_1_addr; // @[RequestBuffer.scala 17:19]
  wire [31:0] buffer_mask_dup_mask_MPORT_1_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_mask_dup_mask_MPORT_2_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_mask_dup_mask_MPORT_2_addr; // @[RequestBuffer.scala 17:19]
  wire [31:0] buffer_mask_dup_mask_MPORT_2_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_mask_dup_mask_MPORT_3_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_mask_dup_mask_MPORT_3_addr; // @[RequestBuffer.scala 17:19]
  wire [31:0] buffer_mask_dup_mask_MPORT_3_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_mask_dup_mask_MPORT_4_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_mask_dup_mask_MPORT_4_addr; // @[RequestBuffer.scala 17:19]
  wire [31:0] buffer_mask_dup_mask_MPORT_4_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_mask_dup_mask_MPORT_5_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_mask_dup_mask_MPORT_5_addr; // @[RequestBuffer.scala 17:19]
  wire [31:0] buffer_mask_dup_mask_MPORT_5_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_mask_dup_mask_MPORT_6_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_mask_dup_mask_MPORT_6_addr; // @[RequestBuffer.scala 17:19]
  wire [31:0] buffer_mask_dup_mask_MPORT_6_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_mask_dup_mask_MPORT_7_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_mask_dup_mask_MPORT_7_addr; // @[RequestBuffer.scala 17:19]
  wire [31:0] buffer_mask_dup_mask_MPORT_7_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_mask_req_deps_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_mask_req_deps_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [31:0] buffer_mask_req_deps_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_mask_req_deps_MPORT_1_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_mask_req_deps_MPORT_1_addr; // @[RequestBuffer.scala 17:19]
  wire [31:0] buffer_mask_req_deps_MPORT_1_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_mask_req_deps_MPORT_2_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_mask_req_deps_MPORT_2_addr; // @[RequestBuffer.scala 17:19]
  wire [31:0] buffer_mask_req_deps_MPORT_2_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_mask_req_deps_MPORT_3_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_mask_req_deps_MPORT_3_addr; // @[RequestBuffer.scala 17:19]
  wire [31:0] buffer_mask_req_deps_MPORT_3_data; // @[RequestBuffer.scala 17:19]
  wire [31:0] buffer_mask_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_mask_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_mask_MPORT_mask; // @[RequestBuffer.scala 17:19]
  wire  buffer_mask_MPORT_en; // @[RequestBuffer.scala 17:19]
  reg [2:0] buffer_bufIdx [0:3]; // @[RequestBuffer.scala 17:19]
  wire  buffer_bufIdx_issue_arb_io_in_0_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_bufIdx_issue_arb_io_in_0_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_bufIdx_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_bufIdx_issue_arb_io_in_1_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_bufIdx_issue_arb_io_in_1_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_bufIdx_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_bufIdx_issue_arb_io_in_2_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_bufIdx_issue_arb_io_in_2_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_bufIdx_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_bufIdx_issue_arb_io_in_3_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_bufIdx_issue_arb_io_in_3_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_bufIdx_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_bufIdx_dup_mask_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_bufIdx_dup_mask_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_bufIdx_dup_mask_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_bufIdx_dup_mask_MPORT_1_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_bufIdx_dup_mask_MPORT_1_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_bufIdx_dup_mask_MPORT_1_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_bufIdx_dup_mask_MPORT_2_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_bufIdx_dup_mask_MPORT_2_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_bufIdx_dup_mask_MPORT_2_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_bufIdx_dup_mask_MPORT_3_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_bufIdx_dup_mask_MPORT_3_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_bufIdx_dup_mask_MPORT_3_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_bufIdx_dup_mask_MPORT_4_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_bufIdx_dup_mask_MPORT_4_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_bufIdx_dup_mask_MPORT_4_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_bufIdx_dup_mask_MPORT_5_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_bufIdx_dup_mask_MPORT_5_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_bufIdx_dup_mask_MPORT_5_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_bufIdx_dup_mask_MPORT_6_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_bufIdx_dup_mask_MPORT_6_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_bufIdx_dup_mask_MPORT_6_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_bufIdx_dup_mask_MPORT_7_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_bufIdx_dup_mask_MPORT_7_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_bufIdx_dup_mask_MPORT_7_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_bufIdx_req_deps_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_bufIdx_req_deps_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_bufIdx_req_deps_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_bufIdx_req_deps_MPORT_1_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_bufIdx_req_deps_MPORT_1_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_bufIdx_req_deps_MPORT_1_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_bufIdx_req_deps_MPORT_2_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_bufIdx_req_deps_MPORT_2_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_bufIdx_req_deps_MPORT_2_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_bufIdx_req_deps_MPORT_3_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_bufIdx_req_deps_MPORT_3_addr; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_bufIdx_req_deps_MPORT_3_data; // @[RequestBuffer.scala 17:19]
  wire [2:0] buffer_bufIdx_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_bufIdx_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_bufIdx_MPORT_mask; // @[RequestBuffer.scala 17:19]
  wire  buffer_bufIdx_MPORT_en; // @[RequestBuffer.scala 17:19]
  reg  buffer_preferCache [0:3]; // @[RequestBuffer.scala 17:19]
  wire  buffer_preferCache_issue_arb_io_in_0_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_preferCache_issue_arb_io_in_0_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_preferCache_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_preferCache_issue_arb_io_in_1_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_preferCache_issue_arb_io_in_1_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_preferCache_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_preferCache_issue_arb_io_in_2_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_preferCache_issue_arb_io_in_2_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_preferCache_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_preferCache_issue_arb_io_in_3_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_preferCache_issue_arb_io_in_3_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_preferCache_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_preferCache_dup_mask_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_preferCache_dup_mask_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_preferCache_dup_mask_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_preferCache_dup_mask_MPORT_1_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_preferCache_dup_mask_MPORT_1_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_preferCache_dup_mask_MPORT_1_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_preferCache_dup_mask_MPORT_2_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_preferCache_dup_mask_MPORT_2_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_preferCache_dup_mask_MPORT_2_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_preferCache_dup_mask_MPORT_3_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_preferCache_dup_mask_MPORT_3_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_preferCache_dup_mask_MPORT_3_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_preferCache_dup_mask_MPORT_4_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_preferCache_dup_mask_MPORT_4_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_preferCache_dup_mask_MPORT_4_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_preferCache_dup_mask_MPORT_5_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_preferCache_dup_mask_MPORT_5_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_preferCache_dup_mask_MPORT_5_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_preferCache_dup_mask_MPORT_6_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_preferCache_dup_mask_MPORT_6_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_preferCache_dup_mask_MPORT_6_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_preferCache_dup_mask_MPORT_7_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_preferCache_dup_mask_MPORT_7_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_preferCache_dup_mask_MPORT_7_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_preferCache_req_deps_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_preferCache_req_deps_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_preferCache_req_deps_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_preferCache_req_deps_MPORT_1_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_preferCache_req_deps_MPORT_1_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_preferCache_req_deps_MPORT_1_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_preferCache_req_deps_MPORT_2_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_preferCache_req_deps_MPORT_2_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_preferCache_req_deps_MPORT_2_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_preferCache_req_deps_MPORT_3_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_preferCache_req_deps_MPORT_3_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_preferCache_req_deps_MPORT_3_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_preferCache_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_preferCache_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_preferCache_MPORT_mask; // @[RequestBuffer.scala 17:19]
  wire  buffer_preferCache_MPORT_en; // @[RequestBuffer.scala 17:19]
  reg  buffer_dirty [0:3]; // @[RequestBuffer.scala 17:19]
  wire  buffer_dirty_issue_arb_io_in_0_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_dirty_issue_arb_io_in_0_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_dirty_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_dirty_issue_arb_io_in_1_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_dirty_issue_arb_io_in_1_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_dirty_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_dirty_issue_arb_io_in_2_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_dirty_issue_arb_io_in_2_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_dirty_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_dirty_issue_arb_io_in_3_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_dirty_issue_arb_io_in_3_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_dirty_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_dirty_dup_mask_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_dirty_dup_mask_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_dirty_dup_mask_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_dirty_dup_mask_MPORT_1_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_dirty_dup_mask_MPORT_1_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_dirty_dup_mask_MPORT_1_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_dirty_dup_mask_MPORT_2_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_dirty_dup_mask_MPORT_2_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_dirty_dup_mask_MPORT_2_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_dirty_dup_mask_MPORT_3_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_dirty_dup_mask_MPORT_3_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_dirty_dup_mask_MPORT_3_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_dirty_dup_mask_MPORT_4_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_dirty_dup_mask_MPORT_4_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_dirty_dup_mask_MPORT_4_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_dirty_dup_mask_MPORT_5_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_dirty_dup_mask_MPORT_5_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_dirty_dup_mask_MPORT_5_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_dirty_dup_mask_MPORT_6_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_dirty_dup_mask_MPORT_6_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_dirty_dup_mask_MPORT_6_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_dirty_dup_mask_MPORT_7_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_dirty_dup_mask_MPORT_7_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_dirty_dup_mask_MPORT_7_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_dirty_req_deps_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_dirty_req_deps_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_dirty_req_deps_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_dirty_req_deps_MPORT_1_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_dirty_req_deps_MPORT_1_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_dirty_req_deps_MPORT_1_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_dirty_req_deps_MPORT_2_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_dirty_req_deps_MPORT_2_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_dirty_req_deps_MPORT_2_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_dirty_req_deps_MPORT_3_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_dirty_req_deps_MPORT_3_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_dirty_req_deps_MPORT_3_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_dirty_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_dirty_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_dirty_MPORT_mask; // @[RequestBuffer.scala 17:19]
  wire  buffer_dirty_MPORT_en; // @[RequestBuffer.scala 17:19]
  reg  buffer_fromProbeHelper [0:3]; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromProbeHelper_issue_arb_io_in_0_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_fromProbeHelper_issue_arb_io_in_0_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromProbeHelper_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromProbeHelper_issue_arb_io_in_1_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_fromProbeHelper_issue_arb_io_in_1_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromProbeHelper_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromProbeHelper_issue_arb_io_in_2_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_fromProbeHelper_issue_arb_io_in_2_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromProbeHelper_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromProbeHelper_issue_arb_io_in_3_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_fromProbeHelper_issue_arb_io_in_3_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromProbeHelper_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromProbeHelper_dup_mask_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_fromProbeHelper_dup_mask_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromProbeHelper_dup_mask_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromProbeHelper_dup_mask_MPORT_1_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_fromProbeHelper_dup_mask_MPORT_1_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromProbeHelper_dup_mask_MPORT_1_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromProbeHelper_dup_mask_MPORT_2_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_fromProbeHelper_dup_mask_MPORT_2_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromProbeHelper_dup_mask_MPORT_2_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromProbeHelper_dup_mask_MPORT_3_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_fromProbeHelper_dup_mask_MPORT_3_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromProbeHelper_dup_mask_MPORT_3_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromProbeHelper_dup_mask_MPORT_4_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_fromProbeHelper_dup_mask_MPORT_4_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromProbeHelper_dup_mask_MPORT_4_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromProbeHelper_dup_mask_MPORT_5_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_fromProbeHelper_dup_mask_MPORT_5_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromProbeHelper_dup_mask_MPORT_5_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromProbeHelper_dup_mask_MPORT_6_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_fromProbeHelper_dup_mask_MPORT_6_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromProbeHelper_dup_mask_MPORT_6_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromProbeHelper_dup_mask_MPORT_7_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_fromProbeHelper_dup_mask_MPORT_7_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromProbeHelper_dup_mask_MPORT_7_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromProbeHelper_req_deps_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_fromProbeHelper_req_deps_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromProbeHelper_req_deps_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromProbeHelper_req_deps_MPORT_1_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_fromProbeHelper_req_deps_MPORT_1_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromProbeHelper_req_deps_MPORT_1_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromProbeHelper_req_deps_MPORT_2_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_fromProbeHelper_req_deps_MPORT_2_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromProbeHelper_req_deps_MPORT_2_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromProbeHelper_req_deps_MPORT_3_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_fromProbeHelper_req_deps_MPORT_3_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromProbeHelper_req_deps_MPORT_3_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromProbeHelper_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_fromProbeHelper_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromProbeHelper_MPORT_mask; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromProbeHelper_MPORT_en; // @[RequestBuffer.scala 17:19]
  reg  buffer_fromCmoHelper [0:3]; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromCmoHelper_issue_arb_io_in_0_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_fromCmoHelper_issue_arb_io_in_0_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromCmoHelper_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromCmoHelper_issue_arb_io_in_1_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_fromCmoHelper_issue_arb_io_in_1_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromCmoHelper_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromCmoHelper_issue_arb_io_in_2_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_fromCmoHelper_issue_arb_io_in_2_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromCmoHelper_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromCmoHelper_issue_arb_io_in_3_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_fromCmoHelper_issue_arb_io_in_3_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromCmoHelper_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromCmoHelper_dup_mask_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_fromCmoHelper_dup_mask_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromCmoHelper_dup_mask_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromCmoHelper_dup_mask_MPORT_1_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_fromCmoHelper_dup_mask_MPORT_1_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromCmoHelper_dup_mask_MPORT_1_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromCmoHelper_dup_mask_MPORT_2_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_fromCmoHelper_dup_mask_MPORT_2_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromCmoHelper_dup_mask_MPORT_2_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromCmoHelper_dup_mask_MPORT_3_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_fromCmoHelper_dup_mask_MPORT_3_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromCmoHelper_dup_mask_MPORT_3_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromCmoHelper_dup_mask_MPORT_4_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_fromCmoHelper_dup_mask_MPORT_4_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromCmoHelper_dup_mask_MPORT_4_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromCmoHelper_dup_mask_MPORT_5_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_fromCmoHelper_dup_mask_MPORT_5_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromCmoHelper_dup_mask_MPORT_5_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromCmoHelper_dup_mask_MPORT_6_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_fromCmoHelper_dup_mask_MPORT_6_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromCmoHelper_dup_mask_MPORT_6_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromCmoHelper_dup_mask_MPORT_7_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_fromCmoHelper_dup_mask_MPORT_7_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromCmoHelper_dup_mask_MPORT_7_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromCmoHelper_req_deps_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_fromCmoHelper_req_deps_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromCmoHelper_req_deps_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromCmoHelper_req_deps_MPORT_1_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_fromCmoHelper_req_deps_MPORT_1_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromCmoHelper_req_deps_MPORT_1_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromCmoHelper_req_deps_MPORT_2_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_fromCmoHelper_req_deps_MPORT_2_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromCmoHelper_req_deps_MPORT_2_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromCmoHelper_req_deps_MPORT_3_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_fromCmoHelper_req_deps_MPORT_3_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromCmoHelper_req_deps_MPORT_3_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromCmoHelper_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_fromCmoHelper_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromCmoHelper_MPORT_mask; // @[RequestBuffer.scala 17:19]
  wire  buffer_fromCmoHelper_MPORT_en; // @[RequestBuffer.scala 17:19]
  reg  buffer_needProbeAckData [0:3]; // @[RequestBuffer.scala 17:19]
  wire  buffer_needProbeAckData_issue_arb_io_in_0_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_needProbeAckData_issue_arb_io_in_0_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_needProbeAckData_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_needProbeAckData_issue_arb_io_in_1_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_needProbeAckData_issue_arb_io_in_1_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_needProbeAckData_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_needProbeAckData_issue_arb_io_in_2_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_needProbeAckData_issue_arb_io_in_2_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_needProbeAckData_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_needProbeAckData_issue_arb_io_in_3_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_needProbeAckData_issue_arb_io_in_3_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_needProbeAckData_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_needProbeAckData_dup_mask_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_needProbeAckData_dup_mask_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_needProbeAckData_dup_mask_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_needProbeAckData_dup_mask_MPORT_1_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_needProbeAckData_dup_mask_MPORT_1_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_needProbeAckData_dup_mask_MPORT_1_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_needProbeAckData_dup_mask_MPORT_2_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_needProbeAckData_dup_mask_MPORT_2_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_needProbeAckData_dup_mask_MPORT_2_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_needProbeAckData_dup_mask_MPORT_3_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_needProbeAckData_dup_mask_MPORT_3_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_needProbeAckData_dup_mask_MPORT_3_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_needProbeAckData_dup_mask_MPORT_4_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_needProbeAckData_dup_mask_MPORT_4_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_needProbeAckData_dup_mask_MPORT_4_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_needProbeAckData_dup_mask_MPORT_5_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_needProbeAckData_dup_mask_MPORT_5_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_needProbeAckData_dup_mask_MPORT_5_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_needProbeAckData_dup_mask_MPORT_6_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_needProbeAckData_dup_mask_MPORT_6_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_needProbeAckData_dup_mask_MPORT_6_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_needProbeAckData_dup_mask_MPORT_7_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_needProbeAckData_dup_mask_MPORT_7_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_needProbeAckData_dup_mask_MPORT_7_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_needProbeAckData_req_deps_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_needProbeAckData_req_deps_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_needProbeAckData_req_deps_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_needProbeAckData_req_deps_MPORT_1_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_needProbeAckData_req_deps_MPORT_1_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_needProbeAckData_req_deps_MPORT_1_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_needProbeAckData_req_deps_MPORT_2_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_needProbeAckData_req_deps_MPORT_2_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_needProbeAckData_req_deps_MPORT_2_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_needProbeAckData_req_deps_MPORT_3_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_needProbeAckData_req_deps_MPORT_3_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_needProbeAckData_req_deps_MPORT_3_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_needProbeAckData_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_needProbeAckData_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_needProbeAckData_MPORT_mask; // @[RequestBuffer.scala 17:19]
  wire  buffer_needProbeAckData_MPORT_en; // @[RequestBuffer.scala 17:19]
  reg [3:0] buffer_reqSource [0:3]; // @[RequestBuffer.scala 17:19]
  wire  buffer_reqSource_issue_arb_io_in_0_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_reqSource_issue_arb_io_in_0_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [3:0] buffer_reqSource_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_reqSource_issue_arb_io_in_1_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_reqSource_issue_arb_io_in_1_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [3:0] buffer_reqSource_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_reqSource_issue_arb_io_in_2_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_reqSource_issue_arb_io_in_2_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [3:0] buffer_reqSource_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_reqSource_issue_arb_io_in_3_bits_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_reqSource_issue_arb_io_in_3_bits_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [3:0] buffer_reqSource_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_reqSource_dup_mask_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_reqSource_dup_mask_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [3:0] buffer_reqSource_dup_mask_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_reqSource_dup_mask_MPORT_1_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_reqSource_dup_mask_MPORT_1_addr; // @[RequestBuffer.scala 17:19]
  wire [3:0] buffer_reqSource_dup_mask_MPORT_1_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_reqSource_dup_mask_MPORT_2_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_reqSource_dup_mask_MPORT_2_addr; // @[RequestBuffer.scala 17:19]
  wire [3:0] buffer_reqSource_dup_mask_MPORT_2_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_reqSource_dup_mask_MPORT_3_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_reqSource_dup_mask_MPORT_3_addr; // @[RequestBuffer.scala 17:19]
  wire [3:0] buffer_reqSource_dup_mask_MPORT_3_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_reqSource_dup_mask_MPORT_4_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_reqSource_dup_mask_MPORT_4_addr; // @[RequestBuffer.scala 17:19]
  wire [3:0] buffer_reqSource_dup_mask_MPORT_4_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_reqSource_dup_mask_MPORT_5_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_reqSource_dup_mask_MPORT_5_addr; // @[RequestBuffer.scala 17:19]
  wire [3:0] buffer_reqSource_dup_mask_MPORT_5_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_reqSource_dup_mask_MPORT_6_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_reqSource_dup_mask_MPORT_6_addr; // @[RequestBuffer.scala 17:19]
  wire [3:0] buffer_reqSource_dup_mask_MPORT_6_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_reqSource_dup_mask_MPORT_7_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_reqSource_dup_mask_MPORT_7_addr; // @[RequestBuffer.scala 17:19]
  wire [3:0] buffer_reqSource_dup_mask_MPORT_7_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_reqSource_req_deps_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_reqSource_req_deps_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire [3:0] buffer_reqSource_req_deps_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_reqSource_req_deps_MPORT_1_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_reqSource_req_deps_MPORT_1_addr; // @[RequestBuffer.scala 17:19]
  wire [3:0] buffer_reqSource_req_deps_MPORT_1_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_reqSource_req_deps_MPORT_2_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_reqSource_req_deps_MPORT_2_addr; // @[RequestBuffer.scala 17:19]
  wire [3:0] buffer_reqSource_req_deps_MPORT_2_data; // @[RequestBuffer.scala 17:19]
  wire  buffer_reqSource_req_deps_MPORT_3_en; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_reqSource_req_deps_MPORT_3_addr; // @[RequestBuffer.scala 17:19]
  wire [3:0] buffer_reqSource_req_deps_MPORT_3_data; // @[RequestBuffer.scala 17:19]
  wire [3:0] buffer_reqSource_MPORT_data; // @[RequestBuffer.scala 17:19]
  wire [1:0] buffer_reqSource_MPORT_addr; // @[RequestBuffer.scala 17:19]
  wire  buffer_reqSource_MPORT_mask; // @[RequestBuffer.scala 17:19]
  wire  buffer_reqSource_MPORT_en; // @[RequestBuffer.scala 17:19]
  wire  issue_arb_clock; // @[RequestBuffer.scala 29:25]
  wire  issue_arb_reset; // @[RequestBuffer.scala 29:25]
  wire  issue_arb_io_in_0_ready; // @[RequestBuffer.scala 29:25]
  wire  issue_arb_io_in_0_valid; // @[RequestBuffer.scala 29:25]
  wire [2:0] issue_arb_io_in_0_bits_channel; // @[RequestBuffer.scala 29:25]
  wire [2:0] issue_arb_io_in_0_bits_opcode; // @[RequestBuffer.scala 29:25]
  wire [2:0] issue_arb_io_in_0_bits_param; // @[RequestBuffer.scala 29:25]
  wire [2:0] issue_arb_io_in_0_bits_size; // @[RequestBuffer.scala 29:25]
  wire [9:0] issue_arb_io_in_0_bits_source; // @[RequestBuffer.scala 29:25]
  wire [7:0] issue_arb_io_in_0_bits_set; // @[RequestBuffer.scala 29:25]
  wire [21:0] issue_arb_io_in_0_bits_tag; // @[RequestBuffer.scala 29:25]
  wire [5:0] issue_arb_io_in_0_bits_off; // @[RequestBuffer.scala 29:25]
  wire [31:0] issue_arb_io_in_0_bits_mask; // @[RequestBuffer.scala 29:25]
  wire [2:0] issue_arb_io_in_0_bits_bufIdx; // @[RequestBuffer.scala 29:25]
  wire  issue_arb_io_in_0_bits_preferCache; // @[RequestBuffer.scala 29:25]
  wire  issue_arb_io_in_0_bits_dirty; // @[RequestBuffer.scala 29:25]
  wire  issue_arb_io_in_0_bits_fromProbeHelper; // @[RequestBuffer.scala 29:25]
  wire  issue_arb_io_in_0_bits_fromCmoHelper; // @[RequestBuffer.scala 29:25]
  wire  issue_arb_io_in_0_bits_needProbeAckData; // @[RequestBuffer.scala 29:25]
  wire [3:0] issue_arb_io_in_0_bits_reqSource; // @[RequestBuffer.scala 29:25]
  wire  issue_arb_io_in_1_ready; // @[RequestBuffer.scala 29:25]
  wire  issue_arb_io_in_1_valid; // @[RequestBuffer.scala 29:25]
  wire [2:0] issue_arb_io_in_1_bits_channel; // @[RequestBuffer.scala 29:25]
  wire [2:0] issue_arb_io_in_1_bits_opcode; // @[RequestBuffer.scala 29:25]
  wire [2:0] issue_arb_io_in_1_bits_param; // @[RequestBuffer.scala 29:25]
  wire [2:0] issue_arb_io_in_1_bits_size; // @[RequestBuffer.scala 29:25]
  wire [9:0] issue_arb_io_in_1_bits_source; // @[RequestBuffer.scala 29:25]
  wire [7:0] issue_arb_io_in_1_bits_set; // @[RequestBuffer.scala 29:25]
  wire [21:0] issue_arb_io_in_1_bits_tag; // @[RequestBuffer.scala 29:25]
  wire [5:0] issue_arb_io_in_1_bits_off; // @[RequestBuffer.scala 29:25]
  wire [31:0] issue_arb_io_in_1_bits_mask; // @[RequestBuffer.scala 29:25]
  wire [2:0] issue_arb_io_in_1_bits_bufIdx; // @[RequestBuffer.scala 29:25]
  wire  issue_arb_io_in_1_bits_preferCache; // @[RequestBuffer.scala 29:25]
  wire  issue_arb_io_in_1_bits_dirty; // @[RequestBuffer.scala 29:25]
  wire  issue_arb_io_in_1_bits_fromProbeHelper; // @[RequestBuffer.scala 29:25]
  wire  issue_arb_io_in_1_bits_fromCmoHelper; // @[RequestBuffer.scala 29:25]
  wire  issue_arb_io_in_1_bits_needProbeAckData; // @[RequestBuffer.scala 29:25]
  wire [3:0] issue_arb_io_in_1_bits_reqSource; // @[RequestBuffer.scala 29:25]
  wire  issue_arb_io_in_2_ready; // @[RequestBuffer.scala 29:25]
  wire  issue_arb_io_in_2_valid; // @[RequestBuffer.scala 29:25]
  wire [2:0] issue_arb_io_in_2_bits_channel; // @[RequestBuffer.scala 29:25]
  wire [2:0] issue_arb_io_in_2_bits_opcode; // @[RequestBuffer.scala 29:25]
  wire [2:0] issue_arb_io_in_2_bits_param; // @[RequestBuffer.scala 29:25]
  wire [2:0] issue_arb_io_in_2_bits_size; // @[RequestBuffer.scala 29:25]
  wire [9:0] issue_arb_io_in_2_bits_source; // @[RequestBuffer.scala 29:25]
  wire [7:0] issue_arb_io_in_2_bits_set; // @[RequestBuffer.scala 29:25]
  wire [21:0] issue_arb_io_in_2_bits_tag; // @[RequestBuffer.scala 29:25]
  wire [5:0] issue_arb_io_in_2_bits_off; // @[RequestBuffer.scala 29:25]
  wire [31:0] issue_arb_io_in_2_bits_mask; // @[RequestBuffer.scala 29:25]
  wire [2:0] issue_arb_io_in_2_bits_bufIdx; // @[RequestBuffer.scala 29:25]
  wire  issue_arb_io_in_2_bits_preferCache; // @[RequestBuffer.scala 29:25]
  wire  issue_arb_io_in_2_bits_dirty; // @[RequestBuffer.scala 29:25]
  wire  issue_arb_io_in_2_bits_fromProbeHelper; // @[RequestBuffer.scala 29:25]
  wire  issue_arb_io_in_2_bits_fromCmoHelper; // @[RequestBuffer.scala 29:25]
  wire  issue_arb_io_in_2_bits_needProbeAckData; // @[RequestBuffer.scala 29:25]
  wire [3:0] issue_arb_io_in_2_bits_reqSource; // @[RequestBuffer.scala 29:25]
  wire  issue_arb_io_in_3_ready; // @[RequestBuffer.scala 29:25]
  wire  issue_arb_io_in_3_valid; // @[RequestBuffer.scala 29:25]
  wire [2:0] issue_arb_io_in_3_bits_channel; // @[RequestBuffer.scala 29:25]
  wire [2:0] issue_arb_io_in_3_bits_opcode; // @[RequestBuffer.scala 29:25]
  wire [2:0] issue_arb_io_in_3_bits_param; // @[RequestBuffer.scala 29:25]
  wire [2:0] issue_arb_io_in_3_bits_size; // @[RequestBuffer.scala 29:25]
  wire [9:0] issue_arb_io_in_3_bits_source; // @[RequestBuffer.scala 29:25]
  wire [7:0] issue_arb_io_in_3_bits_set; // @[RequestBuffer.scala 29:25]
  wire [21:0] issue_arb_io_in_3_bits_tag; // @[RequestBuffer.scala 29:25]
  wire [5:0] issue_arb_io_in_3_bits_off; // @[RequestBuffer.scala 29:25]
  wire [31:0] issue_arb_io_in_3_bits_mask; // @[RequestBuffer.scala 29:25]
  wire [2:0] issue_arb_io_in_3_bits_bufIdx; // @[RequestBuffer.scala 29:25]
  wire  issue_arb_io_in_3_bits_preferCache; // @[RequestBuffer.scala 29:25]
  wire  issue_arb_io_in_3_bits_dirty; // @[RequestBuffer.scala 29:25]
  wire  issue_arb_io_in_3_bits_fromProbeHelper; // @[RequestBuffer.scala 29:25]
  wire  issue_arb_io_in_3_bits_fromCmoHelper; // @[RequestBuffer.scala 29:25]
  wire  issue_arb_io_in_3_bits_needProbeAckData; // @[RequestBuffer.scala 29:25]
  wire [3:0] issue_arb_io_in_3_bits_reqSource; // @[RequestBuffer.scala 29:25]
  wire  issue_arb_io_out_ready; // @[RequestBuffer.scala 29:25]
  wire  issue_arb_io_out_valid; // @[RequestBuffer.scala 29:25]
  wire [2:0] issue_arb_io_out_bits_channel; // @[RequestBuffer.scala 29:25]
  wire [2:0] issue_arb_io_out_bits_opcode; // @[RequestBuffer.scala 29:25]
  wire [2:0] issue_arb_io_out_bits_param; // @[RequestBuffer.scala 29:25]
  wire [2:0] issue_arb_io_out_bits_size; // @[RequestBuffer.scala 29:25]
  wire [9:0] issue_arb_io_out_bits_source; // @[RequestBuffer.scala 29:25]
  wire [7:0] issue_arb_io_out_bits_set; // @[RequestBuffer.scala 29:25]
  wire [21:0] issue_arb_io_out_bits_tag; // @[RequestBuffer.scala 29:25]
  wire [5:0] issue_arb_io_out_bits_off; // @[RequestBuffer.scala 29:25]
  wire [31:0] issue_arb_io_out_bits_mask; // @[RequestBuffer.scala 29:25]
  wire [2:0] issue_arb_io_out_bits_bufIdx; // @[RequestBuffer.scala 29:25]
  wire  issue_arb_io_out_bits_preferCache; // @[RequestBuffer.scala 29:25]
  wire  issue_arb_io_out_bits_dirty; // @[RequestBuffer.scala 29:25]
  wire  issue_arb_io_out_bits_fromProbeHelper; // @[RequestBuffer.scala 29:25]
  wire  issue_arb_io_out_bits_fromCmoHelper; // @[RequestBuffer.scala 29:25]
  wire  issue_arb_io_out_bits_needProbeAckData; // @[RequestBuffer.scala 29:25]
  wire [3:0] issue_arb_io_out_bits_reqSource; // @[RequestBuffer.scala 29:25]
  wire [1:0] issue_arb_io_chosen; // @[RequestBuffer.scala 29:25]
  wire  output_pipe_clock; // @[Decoupled.scala 361:21]
  wire  output_pipe_reset; // @[Decoupled.scala 361:21]
  wire  output_pipe_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  output_pipe_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] output_pipe_io_enq_bits_channel; // @[Decoupled.scala 361:21]
  wire [2:0] output_pipe_io_enq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [2:0] output_pipe_io_enq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] output_pipe_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [9:0] output_pipe_io_enq_bits_source; // @[Decoupled.scala 361:21]
  wire [7:0] output_pipe_io_enq_bits_set; // @[Decoupled.scala 361:21]
  wire [21:0] output_pipe_io_enq_bits_tag; // @[Decoupled.scala 361:21]
  wire [5:0] output_pipe_io_enq_bits_off; // @[Decoupled.scala 361:21]
  wire [31:0] output_pipe_io_enq_bits_mask; // @[Decoupled.scala 361:21]
  wire [2:0] output_pipe_io_enq_bits_bufIdx; // @[Decoupled.scala 361:21]
  wire  output_pipe_io_enq_bits_preferCache; // @[Decoupled.scala 361:21]
  wire  output_pipe_io_enq_bits_dirty; // @[Decoupled.scala 361:21]
  wire  output_pipe_io_enq_bits_fromProbeHelper; // @[Decoupled.scala 361:21]
  wire  output_pipe_io_enq_bits_fromCmoHelper; // @[Decoupled.scala 361:21]
  wire  output_pipe_io_enq_bits_needProbeAckData; // @[Decoupled.scala 361:21]
  wire [3:0] output_pipe_io_enq_bits_reqSource; // @[Decoupled.scala 361:21]
  wire  output_pipe_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  output_pipe_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] output_pipe_io_deq_bits_channel; // @[Decoupled.scala 361:21]
  wire [2:0] output_pipe_io_deq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [2:0] output_pipe_io_deq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] output_pipe_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [9:0] output_pipe_io_deq_bits_source; // @[Decoupled.scala 361:21]
  wire [7:0] output_pipe_io_deq_bits_set; // @[Decoupled.scala 361:21]
  wire [21:0] output_pipe_io_deq_bits_tag; // @[Decoupled.scala 361:21]
  wire [5:0] output_pipe_io_deq_bits_off; // @[Decoupled.scala 361:21]
  wire [31:0] output_pipe_io_deq_bits_mask; // @[Decoupled.scala 361:21]
  wire [2:0] output_pipe_io_deq_bits_bufIdx; // @[Decoupled.scala 361:21]
  wire  output_pipe_io_deq_bits_preferCache; // @[Decoupled.scala 361:21]
  wire  output_pipe_io_deq_bits_dirty; // @[Decoupled.scala 361:21]
  wire  output_pipe_io_deq_bits_fromProbeHelper; // @[Decoupled.scala 361:21]
  wire  output_pipe_io_deq_bits_fromCmoHelper; // @[Decoupled.scala 361:21]
  wire  output_pipe_io_deq_bits_needProbeAckData; // @[Decoupled.scala 361:21]
  wire [3:0] output_pipe_io_deq_bits_reqSource; // @[Decoupled.scala 361:21]
  reg  valids_0; // @[RequestBuffer.scala 18:23]
  reg  valids_1; // @[RequestBuffer.scala 18:23]
  reg  valids_2; // @[RequestBuffer.scala 18:23]
  reg  valids_3; // @[RequestBuffer.scala 18:23]
  reg [13:0] wait_table_0; // @[RequestBuffer.scala 20:23]
  reg [13:0] wait_table_1; // @[RequestBuffer.scala 20:23]
  reg [13:0] wait_table_2; // @[RequestBuffer.scala 20:23]
  reg [13:0] wait_table_3; // @[RequestBuffer.scala 20:23]
  reg  buffer_dep_mask_0_0; // @[RequestBuffer.scala 26:28]
  reg  buffer_dep_mask_0_1; // @[RequestBuffer.scala 26:28]
  reg  buffer_dep_mask_0_2; // @[RequestBuffer.scala 26:28]
  reg  buffer_dep_mask_0_3; // @[RequestBuffer.scala 26:28]
  reg  buffer_dep_mask_1_0; // @[RequestBuffer.scala 26:28]
  reg  buffer_dep_mask_1_1; // @[RequestBuffer.scala 26:28]
  reg  buffer_dep_mask_1_2; // @[RequestBuffer.scala 26:28]
  reg  buffer_dep_mask_1_3; // @[RequestBuffer.scala 26:28]
  reg  buffer_dep_mask_2_0; // @[RequestBuffer.scala 26:28]
  reg  buffer_dep_mask_2_1; // @[RequestBuffer.scala 26:28]
  reg  buffer_dep_mask_2_2; // @[RequestBuffer.scala 26:28]
  reg  buffer_dep_mask_2_3; // @[RequestBuffer.scala 26:28]
  reg  buffer_dep_mask_3_0; // @[RequestBuffer.scala 26:28]
  reg  buffer_dep_mask_3_1; // @[RequestBuffer.scala 26:28]
  reg  buffer_dep_mask_3_2; // @[RequestBuffer.scala 26:28]
  reg  buffer_dep_mask_3_3; // @[RequestBuffer.scala 26:28]
  reg  rdys_0; // @[RequestBuffer.scala 27:21]
  reg  rdys_1; // @[RequestBuffer.scala 27:21]
  reg  rdys_2; // @[RequestBuffer.scala 27:21]
  reg  rdys_3; // @[RequestBuffer.scala 27:21]
  wire  _T = issue_arb_io_in_0_ready & issue_arb_io_in_0_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_0 = _T ? 1'h0 : valids_0; // @[RequestBuffer.scala 33:36 34:17 18:23]
  wire  _T_1 = issue_arb_io_in_1_ready & issue_arb_io_in_1_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_1 = _T_1 ? 1'h0 : valids_1; // @[RequestBuffer.scala 33:36 34:17 18:23]
  wire  _T_2 = issue_arb_io_in_2_ready & issue_arb_io_in_2_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_2 = _T_2 ? 1'h0 : valids_2; // @[RequestBuffer.scala 33:36 34:17 18:23]
  wire  _T_3 = issue_arb_io_in_3_ready & issue_arb_io_in_3_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_3 = _T_3 ? 1'h0 : valids_3; // @[RequestBuffer.scala 33:36 34:17 18:23]
  wire [3:0] _full_T = {valids_0,valids_1,valids_2,valids_3}; // @[Cat.scala 31:58]
  wire  full = &_full_T; // @[RequestBuffer.scala 40:30]
  wire  no_ready_entry = ~output_pipe_io_deq_valid; // @[RequestBuffer.scala 41:24]
  wire  _io_out_valid_T_2 = ~full; // @[RequestBuffer.scala 44:63]
  wire  _conflict_mask_s_conflict_T_2 = io_mshr_status_0_bits_set[6:0] == io_in_bits_set[6:0]; // @[RequestBuffer.scala 51:37]
  wire  conflict_mask_0 = io_mshr_status_0_valid & _conflict_mask_s_conflict_T_2 & ~io_mshr_status_0_bits_will_free; // @[RequestBuffer.scala 55:66]
  wire  _conflict_mask_s_conflict_T_7 = io_mshr_status_1_bits_set[6:0] == io_in_bits_set[6:0]; // @[RequestBuffer.scala 51:37]
  wire  conflict_mask_1 = io_mshr_status_1_valid & _conflict_mask_s_conflict_T_7 & ~io_mshr_status_1_bits_will_free; // @[RequestBuffer.scala 55:66]
  wire  _conflict_mask_s_conflict_T_12 = io_mshr_status_2_bits_set[6:0] == io_in_bits_set[6:0]; // @[RequestBuffer.scala 51:37]
  wire  conflict_mask_2 = io_mshr_status_2_valid & _conflict_mask_s_conflict_T_12 & ~io_mshr_status_2_bits_will_free; // @[RequestBuffer.scala 55:66]
  wire  _conflict_mask_s_conflict_T_17 = io_mshr_status_3_bits_set[6:0] == io_in_bits_set[6:0]; // @[RequestBuffer.scala 51:37]
  wire  conflict_mask_3 = io_mshr_status_3_valid & _conflict_mask_s_conflict_T_17 & ~io_mshr_status_3_bits_will_free; // @[RequestBuffer.scala 55:66]
  wire  _conflict_mask_s_conflict_T_22 = io_mshr_status_4_bits_set[6:0] == io_in_bits_set[6:0]; // @[RequestBuffer.scala 51:37]
  wire  conflict_mask_4 = io_mshr_status_4_valid & _conflict_mask_s_conflict_T_22 & ~io_mshr_status_4_bits_will_free; // @[RequestBuffer.scala 55:66]
  wire  _conflict_mask_s_conflict_T_27 = io_mshr_status_5_bits_set[6:0] == io_in_bits_set[6:0]; // @[RequestBuffer.scala 51:37]
  wire  conflict_mask_5 = io_mshr_status_5_valid & _conflict_mask_s_conflict_T_27 & ~io_mshr_status_5_bits_will_free; // @[RequestBuffer.scala 55:66]
  wire  _conflict_mask_s_conflict_T_32 = io_mshr_status_6_bits_set[6:0] == io_in_bits_set[6:0]; // @[RequestBuffer.scala 51:37]
  wire  conflict_mask_6 = io_mshr_status_6_valid & _conflict_mask_s_conflict_T_32 & ~io_mshr_status_6_bits_will_free; // @[RequestBuffer.scala 55:66]
  wire  _conflict_mask_s_conflict_T_37 = io_mshr_status_7_bits_set[6:0] == io_in_bits_set[6:0]; // @[RequestBuffer.scala 51:37]
  wire  conflict_mask_7 = io_mshr_status_7_valid & _conflict_mask_s_conflict_T_37 & ~io_mshr_status_7_bits_will_free; // @[RequestBuffer.scala 55:66]
  wire  _conflict_mask_s_conflict_T_42 = io_mshr_status_8_bits_set[6:0] == io_in_bits_set[6:0]; // @[RequestBuffer.scala 51:37]
  wire  conflict_mask_8 = io_mshr_status_8_valid & _conflict_mask_s_conflict_T_42 & ~io_mshr_status_8_bits_will_free; // @[RequestBuffer.scala 55:66]
  wire  _conflict_mask_s_conflict_T_47 = io_mshr_status_9_bits_set[6:0] == io_in_bits_set[6:0]; // @[RequestBuffer.scala 51:37]
  wire  conflict_mask_9 = io_mshr_status_9_valid & _conflict_mask_s_conflict_T_47 & ~io_mshr_status_9_bits_will_free; // @[RequestBuffer.scala 55:66]
  wire  _conflict_mask_s_conflict_T_52 = io_mshr_status_10_bits_set[6:0] == io_in_bits_set[6:0]; // @[RequestBuffer.scala 51:37]
  wire  conflict_mask_10 = io_mshr_status_10_valid & _conflict_mask_s_conflict_T_52 & ~io_mshr_status_10_bits_will_free; // @[RequestBuffer.scala 55:66]
  wire  _conflict_mask_s_conflict_T_57 = io_mshr_status_11_bits_set[6:0] == io_in_bits_set[6:0]; // @[RequestBuffer.scala 51:37]
  wire  conflict_mask_11 = io_mshr_status_11_valid & _conflict_mask_s_conflict_T_57 & ~io_mshr_status_11_bits_will_free; // @[RequestBuffer.scala 55:66]
  wire  _conflict_mask_s_conflict_T_62 = io_mshr_status_12_bits_set[6:0] == io_in_bits_set[6:0]; // @[RequestBuffer.scala 51:37]
  wire  conflict_mask_12 = io_mshr_status_12_valid & _conflict_mask_s_conflict_T_62 & ~io_mshr_status_12_bits_will_free; // @[RequestBuffer.scala 55:66]
  wire  _conflict_mask_s_conflict_T_67 = io_mshr_status_13_bits_set[6:0] == io_in_bits_set[6:0]; // @[RequestBuffer.scala 51:37]
  wire  conflict_mask_13 = io_mshr_status_13_valid & _conflict_mask_s_conflict_T_67 & ~io_mshr_status_13_bits_will_free; // @[RequestBuffer.scala 55:66]
  wire [6:0] conflict_lo = {conflict_mask_7,conflict_mask_8,conflict_mask_9,conflict_mask_10,conflict_mask_11,
    conflict_mask_12,conflict_mask_13}; // @[Cat.scala 31:58]
  wire [13:0] _conflict_T = {conflict_mask_0,conflict_mask_1,conflict_mask_2,conflict_mask_3,conflict_mask_4,
    conflict_mask_5,conflict_mask_6,conflict_lo}; // @[Cat.scala 31:58]
  wire  conflict = |_conflict_T; // @[RequestBuffer.scala 58:40]
  wire  _req_deps_T_2 = buffer_set_req_deps_MPORT_data[6:0] == io_in_bits_set[6:0]; // @[RequestBuffer.scala 51:37]
  wire  req_deps_0 = valids_0 & _req_deps_T_2; // @[RequestBuffer.scala 65:15]
  wire  _req_deps_T_5 = buffer_set_req_deps_MPORT_1_data[6:0] == io_in_bits_set[6:0]; // @[RequestBuffer.scala 51:37]
  wire  req_deps_1 = valids_1 & _req_deps_T_5; // @[RequestBuffer.scala 65:15]
  wire  _req_deps_T_8 = buffer_set_req_deps_MPORT_2_data[6:0] == io_in_bits_set[6:0]; // @[RequestBuffer.scala 51:37]
  wire  req_deps_2 = valids_2 & _req_deps_T_8; // @[RequestBuffer.scala 65:15]
  wire  _req_deps_T_11 = buffer_set_req_deps_MPORT_3_data[6:0] == io_in_bits_set[6:0]; // @[RequestBuffer.scala 51:37]
  wire  req_deps_3 = valids_3 & _req_deps_T_11; // @[RequestBuffer.scala 65:15]
  wire [3:0] _insert_idx_T = {valids_3,valids_2,valids_1,valids_0}; // @[RequestBuffer.scala 67:50]
  wire [3:0] _insert_idx_T_1 = ~_insert_idx_T; // @[RequestBuffer.scala 67:36]
  wire [1:0] _insert_idx_T_6 = _insert_idx_T_1[2] ? 2'h2 : 2'h3; // @[Mux.scala 47:70]
  wire [1:0] _insert_idx_T_7 = _insert_idx_T_1[1] ? 2'h1 : _insert_idx_T_6; // @[Mux.scala 47:70]
  wire [1:0] insert_idx = _insert_idx_T_1[0] ? 2'h0 : _insert_idx_T_7; // @[Mux.scala 47:70]
  wire  _alloc_T_1 = _io_out_valid_T_2 & io_in_valid; // @[RequestBuffer.scala 68:21]
  wire  _alloc_T_4 = ~(no_ready_entry & io_out_ready); // @[RequestBuffer.scala 68:39]
  wire  alloc = _io_out_valid_T_2 & io_in_valid & ~(no_ready_entry & io_out_ready); // @[RequestBuffer.scala 68:36]
  wire  _GEN_4 = 2'h0 == insert_idx | _GEN_0; // @[RequestBuffer.scala 71:{24,24}]
  wire  _GEN_5 = 2'h1 == insert_idx | _GEN_1; // @[RequestBuffer.scala 71:{24,24}]
  wire  _GEN_6 = 2'h2 == insert_idx | _GEN_2; // @[RequestBuffer.scala 71:{24,24}]
  wire  _GEN_7 = 2'h3 == insert_idx | _GEN_3; // @[RequestBuffer.scala 71:{24,24}]
  wire [6:0] wait_table_lo = {conflict_mask_6,conflict_mask_5,conflict_mask_4,conflict_mask_3,conflict_mask_2,
    conflict_mask_1,conflict_mask_0}; // @[RequestBuffer.scala 72:60]
  wire [13:0] _wait_table_T = {conflict_mask_13,conflict_mask_12,conflict_mask_11,conflict_mask_10,conflict_mask_9,
    conflict_mask_8,conflict_mask_7,wait_table_lo}; // @[RequestBuffer.scala 72:60]
  wire  _GEN_12 = 2'h0 == insert_idx ? req_deps_0 : buffer_dep_mask_0_0; // @[RequestBuffer.scala 26:28 73:{33,33}]
  wire  _GEN_13 = 2'h1 == insert_idx ? req_deps_0 : buffer_dep_mask_1_0; // @[RequestBuffer.scala 26:28 73:{33,33}]
  wire  _GEN_14 = 2'h2 == insert_idx ? req_deps_0 : buffer_dep_mask_2_0; // @[RequestBuffer.scala 26:28 73:{33,33}]
  wire  _GEN_15 = 2'h3 == insert_idx ? req_deps_0 : buffer_dep_mask_3_0; // @[RequestBuffer.scala 26:28 73:{33,33}]
  wire  _GEN_16 = 2'h0 == insert_idx ? req_deps_1 : buffer_dep_mask_0_1; // @[RequestBuffer.scala 26:28 73:{33,33}]
  wire  _GEN_17 = 2'h1 == insert_idx ? req_deps_1 : buffer_dep_mask_1_1; // @[RequestBuffer.scala 26:28 73:{33,33}]
  wire  _GEN_18 = 2'h2 == insert_idx ? req_deps_1 : buffer_dep_mask_2_1; // @[RequestBuffer.scala 26:28 73:{33,33}]
  wire  _GEN_19 = 2'h3 == insert_idx ? req_deps_1 : buffer_dep_mask_3_1; // @[RequestBuffer.scala 26:28 73:{33,33}]
  wire  _GEN_20 = 2'h0 == insert_idx ? req_deps_2 : buffer_dep_mask_0_2; // @[RequestBuffer.scala 26:28 73:{33,33}]
  wire  _GEN_21 = 2'h1 == insert_idx ? req_deps_2 : buffer_dep_mask_1_2; // @[RequestBuffer.scala 26:28 73:{33,33}]
  wire  _GEN_22 = 2'h2 == insert_idx ? req_deps_2 : buffer_dep_mask_2_2; // @[RequestBuffer.scala 26:28 73:{33,33}]
  wire  _GEN_23 = 2'h3 == insert_idx ? req_deps_2 : buffer_dep_mask_3_2; // @[RequestBuffer.scala 26:28 73:{33,33}]
  wire  _GEN_24 = 2'h0 == insert_idx ? req_deps_3 : buffer_dep_mask_0_3; // @[RequestBuffer.scala 26:28 73:{33,33}]
  wire  _GEN_25 = 2'h1 == insert_idx ? req_deps_3 : buffer_dep_mask_1_3; // @[RequestBuffer.scala 26:28 73:{33,33}]
  wire  _GEN_26 = 2'h2 == insert_idx ? req_deps_3 : buffer_dep_mask_2_3; // @[RequestBuffer.scala 26:28 73:{33,33}]
  wire  _GEN_27 = 2'h3 == insert_idx ? req_deps_3 : buffer_dep_mask_3_3; // @[RequestBuffer.scala 26:28 73:{33,33}]
  wire [3:0] _rdys_T_1 = {req_deps_0,req_deps_1,req_deps_2,req_deps_3}; // @[Cat.scala 31:58]
  wire  _GEN_61 = alloc ? _GEN_12 : buffer_dep_mask_0_0; // @[RequestBuffer.scala 69:14 26:28]
  wire  _GEN_62 = alloc ? _GEN_13 : buffer_dep_mask_1_0; // @[RequestBuffer.scala 69:14 26:28]
  wire  _GEN_63 = alloc ? _GEN_14 : buffer_dep_mask_2_0; // @[RequestBuffer.scala 69:14 26:28]
  wire  _GEN_64 = alloc ? _GEN_15 : buffer_dep_mask_3_0; // @[RequestBuffer.scala 69:14 26:28]
  wire  _GEN_65 = alloc ? _GEN_16 : buffer_dep_mask_0_1; // @[RequestBuffer.scala 69:14 26:28]
  wire  _GEN_66 = alloc ? _GEN_17 : buffer_dep_mask_1_1; // @[RequestBuffer.scala 69:14 26:28]
  wire  _GEN_67 = alloc ? _GEN_18 : buffer_dep_mask_2_1; // @[RequestBuffer.scala 69:14 26:28]
  wire  _GEN_68 = alloc ? _GEN_19 : buffer_dep_mask_3_1; // @[RequestBuffer.scala 69:14 26:28]
  wire  _GEN_69 = alloc ? _GEN_20 : buffer_dep_mask_0_2; // @[RequestBuffer.scala 69:14 26:28]
  wire  _GEN_70 = alloc ? _GEN_21 : buffer_dep_mask_1_2; // @[RequestBuffer.scala 69:14 26:28]
  wire  _GEN_71 = alloc ? _GEN_22 : buffer_dep_mask_2_2; // @[RequestBuffer.scala 69:14 26:28]
  wire  _GEN_72 = alloc ? _GEN_23 : buffer_dep_mask_3_2; // @[RequestBuffer.scala 69:14 26:28]
  wire  _GEN_73 = alloc ? _GEN_24 : buffer_dep_mask_0_3; // @[RequestBuffer.scala 69:14 26:28]
  wire  _GEN_74 = alloc ? _GEN_25 : buffer_dep_mask_1_3; // @[RequestBuffer.scala 69:14 26:28]
  wire  _GEN_75 = alloc ? _GEN_26 : buffer_dep_mask_2_3; // @[RequestBuffer.scala 69:14 26:28]
  wire  _GEN_76 = alloc ? _GEN_27 : buffer_dep_mask_3_3; // @[RequestBuffer.scala 69:14 26:28]
  wire  _free_mask_T = io_mshr_status_0_valid & io_mshr_status_0_bits_will_free; // @[RequestBuffer.scala 78:59]
  wire  _free_mask_T_1 = io_mshr_status_1_valid & io_mshr_status_1_bits_will_free; // @[RequestBuffer.scala 78:59]
  wire  _free_mask_T_2 = io_mshr_status_2_valid & io_mshr_status_2_bits_will_free; // @[RequestBuffer.scala 78:59]
  wire  _free_mask_T_3 = io_mshr_status_3_valid & io_mshr_status_3_bits_will_free; // @[RequestBuffer.scala 78:59]
  wire  _free_mask_T_4 = io_mshr_status_4_valid & io_mshr_status_4_bits_will_free; // @[RequestBuffer.scala 78:59]
  wire  _free_mask_T_5 = io_mshr_status_5_valid & io_mshr_status_5_bits_will_free; // @[RequestBuffer.scala 78:59]
  wire  _free_mask_T_6 = io_mshr_status_6_valid & io_mshr_status_6_bits_will_free; // @[RequestBuffer.scala 78:59]
  wire  _free_mask_T_7 = io_mshr_status_7_valid & io_mshr_status_7_bits_will_free; // @[RequestBuffer.scala 78:59]
  wire  _free_mask_T_8 = io_mshr_status_8_valid & io_mshr_status_8_bits_will_free; // @[RequestBuffer.scala 78:59]
  wire  _free_mask_T_9 = io_mshr_status_9_valid & io_mshr_status_9_bits_will_free; // @[RequestBuffer.scala 78:59]
  wire  _free_mask_T_10 = io_mshr_status_10_valid & io_mshr_status_10_bits_will_free; // @[RequestBuffer.scala 78:59]
  wire  _free_mask_T_11 = io_mshr_status_11_valid & io_mshr_status_11_bits_will_free; // @[RequestBuffer.scala 78:59]
  wire  _free_mask_T_12 = io_mshr_status_12_valid & io_mshr_status_12_bits_will_free; // @[RequestBuffer.scala 78:59]
  wire  _free_mask_T_13 = io_mshr_status_13_valid & io_mshr_status_13_bits_will_free; // @[RequestBuffer.scala 78:59]
  wire [6:0] free_mask_lo = {_free_mask_T_6,_free_mask_T_5,_free_mask_T_4,_free_mask_T_3,_free_mask_T_2,_free_mask_T_1,
    _free_mask_T}; // @[RequestBuffer.scala 78:87]
  wire [13:0] free_mask = {_free_mask_T_13,_free_mask_T_12,_free_mask_T_11,_free_mask_T_10,_free_mask_T_9,_free_mask_T_8
    ,_free_mask_T_7,free_mask_lo}; // @[RequestBuffer.scala 78:87]
  wire [13:0] _wait_next_T = ~free_mask; // @[RequestBuffer.scala 83:46]
  wire [13:0] wait_next = wait_table_0 & _wait_next_T; // @[RequestBuffer.scala 83:43]
  wire  _T_34 = issue_arb_io_out_ready & issue_arb_io_out_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_81 = 2'h0 == issue_arb_io_chosen ? 1'h0 : buffer_dep_mask_0_0; // @[RequestBuffer.scala 85:{44,44}]
  wire  _GEN_82 = 2'h1 == issue_arb_io_chosen ? 1'h0 : buffer_dep_mask_0_1; // @[RequestBuffer.scala 85:{44,44}]
  wire  _GEN_83 = 2'h2 == issue_arb_io_chosen ? 1'h0 : buffer_dep_mask_0_2; // @[RequestBuffer.scala 85:{44,44}]
  wire  _GEN_84 = 2'h3 == issue_arb_io_chosen ? 1'h0 : buffer_dep_mask_0_3; // @[RequestBuffer.scala 85:{44,44}]
  wire  dep_mask_next__0 = _T_34 ? _GEN_81 : buffer_dep_mask_0_0; // @[RequestBuffer.scala 84:36]
  wire  dep_mask_next__1 = _T_34 ? _GEN_82 : buffer_dep_mask_0_1; // @[RequestBuffer.scala 84:36]
  wire  dep_mask_next__2 = _T_34 ? _GEN_83 : buffer_dep_mask_0_2; // @[RequestBuffer.scala 84:36]
  wire  dep_mask_next__3 = _T_34 ? _GEN_84 : buffer_dep_mask_0_3; // @[RequestBuffer.scala 84:36]
  wire [3:0] _rdys_0_T_2 = {dep_mask_next__0,dep_mask_next__1,dep_mask_next__2,dep_mask_next__3}; // @[Cat.scala 31:58]
  wire [13:0] wait_next_1 = wait_table_1 & _wait_next_T; // @[RequestBuffer.scala 83:43]
  wire  _GEN_99 = 2'h0 == issue_arb_io_chosen ? 1'h0 : buffer_dep_mask_1_0; // @[RequestBuffer.scala 85:{44,44}]
  wire  _GEN_100 = 2'h1 == issue_arb_io_chosen ? 1'h0 : buffer_dep_mask_1_1; // @[RequestBuffer.scala 85:{44,44}]
  wire  _GEN_101 = 2'h2 == issue_arb_io_chosen ? 1'h0 : buffer_dep_mask_1_2; // @[RequestBuffer.scala 85:{44,44}]
  wire  _GEN_102 = 2'h3 == issue_arb_io_chosen ? 1'h0 : buffer_dep_mask_1_3; // @[RequestBuffer.scala 85:{44,44}]
  wire  dep_mask_next_1_0 = _T_34 ? _GEN_99 : buffer_dep_mask_1_0; // @[RequestBuffer.scala 84:36]
  wire  dep_mask_next_1_1 = _T_34 ? _GEN_100 : buffer_dep_mask_1_1; // @[RequestBuffer.scala 84:36]
  wire  dep_mask_next_1_2 = _T_34 ? _GEN_101 : buffer_dep_mask_1_2; // @[RequestBuffer.scala 84:36]
  wire  dep_mask_next_1_3 = _T_34 ? _GEN_102 : buffer_dep_mask_1_3; // @[RequestBuffer.scala 84:36]
  wire [3:0] _rdys_1_T_2 = {dep_mask_next_1_0,dep_mask_next_1_1,dep_mask_next_1_2,dep_mask_next_1_3}; // @[Cat.scala 31:58]
  wire [13:0] wait_next_2 = wait_table_2 & _wait_next_T; // @[RequestBuffer.scala 83:43]
  wire  _GEN_117 = 2'h0 == issue_arb_io_chosen ? 1'h0 : buffer_dep_mask_2_0; // @[RequestBuffer.scala 85:{44,44}]
  wire  _GEN_118 = 2'h1 == issue_arb_io_chosen ? 1'h0 : buffer_dep_mask_2_1; // @[RequestBuffer.scala 85:{44,44}]
  wire  _GEN_119 = 2'h2 == issue_arb_io_chosen ? 1'h0 : buffer_dep_mask_2_2; // @[RequestBuffer.scala 85:{44,44}]
  wire  _GEN_120 = 2'h3 == issue_arb_io_chosen ? 1'h0 : buffer_dep_mask_2_3; // @[RequestBuffer.scala 85:{44,44}]
  wire  dep_mask_next_2_0 = _T_34 ? _GEN_117 : buffer_dep_mask_2_0; // @[RequestBuffer.scala 84:36]
  wire  dep_mask_next_2_1 = _T_34 ? _GEN_118 : buffer_dep_mask_2_1; // @[RequestBuffer.scala 84:36]
  wire  dep_mask_next_2_2 = _T_34 ? _GEN_119 : buffer_dep_mask_2_2; // @[RequestBuffer.scala 84:36]
  wire  dep_mask_next_2_3 = _T_34 ? _GEN_120 : buffer_dep_mask_2_3; // @[RequestBuffer.scala 84:36]
  wire [3:0] _rdys_2_T_2 = {dep_mask_next_2_0,dep_mask_next_2_1,dep_mask_next_2_2,dep_mask_next_2_3}; // @[Cat.scala 31:58]
  wire [13:0] wait_next_3 = wait_table_3 & _wait_next_T; // @[RequestBuffer.scala 83:43]
  wire  _GEN_135 = 2'h0 == issue_arb_io_chosen ? 1'h0 : buffer_dep_mask_3_0; // @[RequestBuffer.scala 85:{44,44}]
  wire  _GEN_136 = 2'h1 == issue_arb_io_chosen ? 1'h0 : buffer_dep_mask_3_1; // @[RequestBuffer.scala 85:{44,44}]
  wire  _GEN_137 = 2'h2 == issue_arb_io_chosen ? 1'h0 : buffer_dep_mask_3_2; // @[RequestBuffer.scala 85:{44,44}]
  wire  _GEN_138 = 2'h3 == issue_arb_io_chosen ? 1'h0 : buffer_dep_mask_3_3; // @[RequestBuffer.scala 85:{44,44}]
  wire  dep_mask_next_3_0 = _T_34 ? _GEN_135 : buffer_dep_mask_3_0; // @[RequestBuffer.scala 84:36]
  wire  dep_mask_next_3_1 = _T_34 ? _GEN_136 : buffer_dep_mask_3_1; // @[RequestBuffer.scala 84:36]
  wire  dep_mask_next_3_2 = _T_34 ? _GEN_137 : buffer_dep_mask_3_2; // @[RequestBuffer.scala 84:36]
  wire  dep_mask_next_3_3 = _T_34 ? _GEN_138 : buffer_dep_mask_3_3; // @[RequestBuffer.scala 84:36]
  wire [3:0] _rdys_3_T_2 = {dep_mask_next_3_0,dep_mask_next_3_1,dep_mask_next_3_2,dep_mask_next_3_3}; // @[Cat.scala 31:58]
  FastArbiter_10 issue_arb ( // @[RequestBuffer.scala 29:25]
    .clock(issue_arb_clock),
    .reset(issue_arb_reset),
    .io_in_0_ready(issue_arb_io_in_0_ready),
    .io_in_0_valid(issue_arb_io_in_0_valid),
    .io_in_0_bits_channel(issue_arb_io_in_0_bits_channel),
    .io_in_0_bits_opcode(issue_arb_io_in_0_bits_opcode),
    .io_in_0_bits_param(issue_arb_io_in_0_bits_param),
    .io_in_0_bits_size(issue_arb_io_in_0_bits_size),
    .io_in_0_bits_source(issue_arb_io_in_0_bits_source),
    .io_in_0_bits_set(issue_arb_io_in_0_bits_set),
    .io_in_0_bits_tag(issue_arb_io_in_0_bits_tag),
    .io_in_0_bits_off(issue_arb_io_in_0_bits_off),
    .io_in_0_bits_mask(issue_arb_io_in_0_bits_mask),
    .io_in_0_bits_bufIdx(issue_arb_io_in_0_bits_bufIdx),
    .io_in_0_bits_preferCache(issue_arb_io_in_0_bits_preferCache),
    .io_in_0_bits_dirty(issue_arb_io_in_0_bits_dirty),
    .io_in_0_bits_fromProbeHelper(issue_arb_io_in_0_bits_fromProbeHelper),
    .io_in_0_bits_fromCmoHelper(issue_arb_io_in_0_bits_fromCmoHelper),
    .io_in_0_bits_needProbeAckData(issue_arb_io_in_0_bits_needProbeAckData),
    .io_in_0_bits_reqSource(issue_arb_io_in_0_bits_reqSource),
    .io_in_1_ready(issue_arb_io_in_1_ready),
    .io_in_1_valid(issue_arb_io_in_1_valid),
    .io_in_1_bits_channel(issue_arb_io_in_1_bits_channel),
    .io_in_1_bits_opcode(issue_arb_io_in_1_bits_opcode),
    .io_in_1_bits_param(issue_arb_io_in_1_bits_param),
    .io_in_1_bits_size(issue_arb_io_in_1_bits_size),
    .io_in_1_bits_source(issue_arb_io_in_1_bits_source),
    .io_in_1_bits_set(issue_arb_io_in_1_bits_set),
    .io_in_1_bits_tag(issue_arb_io_in_1_bits_tag),
    .io_in_1_bits_off(issue_arb_io_in_1_bits_off),
    .io_in_1_bits_mask(issue_arb_io_in_1_bits_mask),
    .io_in_1_bits_bufIdx(issue_arb_io_in_1_bits_bufIdx),
    .io_in_1_bits_preferCache(issue_arb_io_in_1_bits_preferCache),
    .io_in_1_bits_dirty(issue_arb_io_in_1_bits_dirty),
    .io_in_1_bits_fromProbeHelper(issue_arb_io_in_1_bits_fromProbeHelper),
    .io_in_1_bits_fromCmoHelper(issue_arb_io_in_1_bits_fromCmoHelper),
    .io_in_1_bits_needProbeAckData(issue_arb_io_in_1_bits_needProbeAckData),
    .io_in_1_bits_reqSource(issue_arb_io_in_1_bits_reqSource),
    .io_in_2_ready(issue_arb_io_in_2_ready),
    .io_in_2_valid(issue_arb_io_in_2_valid),
    .io_in_2_bits_channel(issue_arb_io_in_2_bits_channel),
    .io_in_2_bits_opcode(issue_arb_io_in_2_bits_opcode),
    .io_in_2_bits_param(issue_arb_io_in_2_bits_param),
    .io_in_2_bits_size(issue_arb_io_in_2_bits_size),
    .io_in_2_bits_source(issue_arb_io_in_2_bits_source),
    .io_in_2_bits_set(issue_arb_io_in_2_bits_set),
    .io_in_2_bits_tag(issue_arb_io_in_2_bits_tag),
    .io_in_2_bits_off(issue_arb_io_in_2_bits_off),
    .io_in_2_bits_mask(issue_arb_io_in_2_bits_mask),
    .io_in_2_bits_bufIdx(issue_arb_io_in_2_bits_bufIdx),
    .io_in_2_bits_preferCache(issue_arb_io_in_2_bits_preferCache),
    .io_in_2_bits_dirty(issue_arb_io_in_2_bits_dirty),
    .io_in_2_bits_fromProbeHelper(issue_arb_io_in_2_bits_fromProbeHelper),
    .io_in_2_bits_fromCmoHelper(issue_arb_io_in_2_bits_fromCmoHelper),
    .io_in_2_bits_needProbeAckData(issue_arb_io_in_2_bits_needProbeAckData),
    .io_in_2_bits_reqSource(issue_arb_io_in_2_bits_reqSource),
    .io_in_3_ready(issue_arb_io_in_3_ready),
    .io_in_3_valid(issue_arb_io_in_3_valid),
    .io_in_3_bits_channel(issue_arb_io_in_3_bits_channel),
    .io_in_3_bits_opcode(issue_arb_io_in_3_bits_opcode),
    .io_in_3_bits_param(issue_arb_io_in_3_bits_param),
    .io_in_3_bits_size(issue_arb_io_in_3_bits_size),
    .io_in_3_bits_source(issue_arb_io_in_3_bits_source),
    .io_in_3_bits_set(issue_arb_io_in_3_bits_set),
    .io_in_3_bits_tag(issue_arb_io_in_3_bits_tag),
    .io_in_3_bits_off(issue_arb_io_in_3_bits_off),
    .io_in_3_bits_mask(issue_arb_io_in_3_bits_mask),
    .io_in_3_bits_bufIdx(issue_arb_io_in_3_bits_bufIdx),
    .io_in_3_bits_preferCache(issue_arb_io_in_3_bits_preferCache),
    .io_in_3_bits_dirty(issue_arb_io_in_3_bits_dirty),
    .io_in_3_bits_fromProbeHelper(issue_arb_io_in_3_bits_fromProbeHelper),
    .io_in_3_bits_fromCmoHelper(issue_arb_io_in_3_bits_fromCmoHelper),
    .io_in_3_bits_needProbeAckData(issue_arb_io_in_3_bits_needProbeAckData),
    .io_in_3_bits_reqSource(issue_arb_io_in_3_bits_reqSource),
    .io_out_ready(issue_arb_io_out_ready),
    .io_out_valid(issue_arb_io_out_valid),
    .io_out_bits_channel(issue_arb_io_out_bits_channel),
    .io_out_bits_opcode(issue_arb_io_out_bits_opcode),
    .io_out_bits_param(issue_arb_io_out_bits_param),
    .io_out_bits_size(issue_arb_io_out_bits_size),
    .io_out_bits_source(issue_arb_io_out_bits_source),
    .io_out_bits_set(issue_arb_io_out_bits_set),
    .io_out_bits_tag(issue_arb_io_out_bits_tag),
    .io_out_bits_off(issue_arb_io_out_bits_off),
    .io_out_bits_mask(issue_arb_io_out_bits_mask),
    .io_out_bits_bufIdx(issue_arb_io_out_bits_bufIdx),
    .io_out_bits_preferCache(issue_arb_io_out_bits_preferCache),
    .io_out_bits_dirty(issue_arb_io_out_bits_dirty),
    .io_out_bits_fromProbeHelper(issue_arb_io_out_bits_fromProbeHelper),
    .io_out_bits_fromCmoHelper(issue_arb_io_out_bits_fromCmoHelper),
    .io_out_bits_needProbeAckData(issue_arb_io_out_bits_needProbeAckData),
    .io_out_bits_reqSource(issue_arb_io_out_bits_reqSource),
    .io_chosen(issue_arb_io_chosen)
  );
  Queue_193 output_pipe ( // @[Decoupled.scala 361:21]
    .clock(output_pipe_clock),
    .reset(output_pipe_reset),
    .io_enq_ready(output_pipe_io_enq_ready),
    .io_enq_valid(output_pipe_io_enq_valid),
    .io_enq_bits_channel(output_pipe_io_enq_bits_channel),
    .io_enq_bits_opcode(output_pipe_io_enq_bits_opcode),
    .io_enq_bits_param(output_pipe_io_enq_bits_param),
    .io_enq_bits_size(output_pipe_io_enq_bits_size),
    .io_enq_bits_source(output_pipe_io_enq_bits_source),
    .io_enq_bits_set(output_pipe_io_enq_bits_set),
    .io_enq_bits_tag(output_pipe_io_enq_bits_tag),
    .io_enq_bits_off(output_pipe_io_enq_bits_off),
    .io_enq_bits_mask(output_pipe_io_enq_bits_mask),
    .io_enq_bits_bufIdx(output_pipe_io_enq_bits_bufIdx),
    .io_enq_bits_preferCache(output_pipe_io_enq_bits_preferCache),
    .io_enq_bits_dirty(output_pipe_io_enq_bits_dirty),
    .io_enq_bits_fromProbeHelper(output_pipe_io_enq_bits_fromProbeHelper),
    .io_enq_bits_fromCmoHelper(output_pipe_io_enq_bits_fromCmoHelper),
    .io_enq_bits_needProbeAckData(output_pipe_io_enq_bits_needProbeAckData),
    .io_enq_bits_reqSource(output_pipe_io_enq_bits_reqSource),
    .io_deq_ready(output_pipe_io_deq_ready),
    .io_deq_valid(output_pipe_io_deq_valid),
    .io_deq_bits_channel(output_pipe_io_deq_bits_channel),
    .io_deq_bits_opcode(output_pipe_io_deq_bits_opcode),
    .io_deq_bits_param(output_pipe_io_deq_bits_param),
    .io_deq_bits_size(output_pipe_io_deq_bits_size),
    .io_deq_bits_source(output_pipe_io_deq_bits_source),
    .io_deq_bits_set(output_pipe_io_deq_bits_set),
    .io_deq_bits_tag(output_pipe_io_deq_bits_tag),
    .io_deq_bits_off(output_pipe_io_deq_bits_off),
    .io_deq_bits_mask(output_pipe_io_deq_bits_mask),
    .io_deq_bits_bufIdx(output_pipe_io_deq_bits_bufIdx),
    .io_deq_bits_preferCache(output_pipe_io_deq_bits_preferCache),
    .io_deq_bits_dirty(output_pipe_io_deq_bits_dirty),
    .io_deq_bits_fromProbeHelper(output_pipe_io_deq_bits_fromProbeHelper),
    .io_deq_bits_fromCmoHelper(output_pipe_io_deq_bits_fromCmoHelper),
    .io_deq_bits_needProbeAckData(output_pipe_io_deq_bits_needProbeAckData),
    .io_deq_bits_reqSource(output_pipe_io_deq_bits_reqSource)
  );
  assign buffer_channel_issue_arb_io_in_0_bits_MPORT_en = 1'h1;
  assign buffer_channel_issue_arb_io_in_0_bits_MPORT_addr = 2'h0;
  assign buffer_channel_issue_arb_io_in_0_bits_MPORT_data =
    buffer_channel[buffer_channel_issue_arb_io_in_0_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_channel_issue_arb_io_in_1_bits_MPORT_en = 1'h1;
  assign buffer_channel_issue_arb_io_in_1_bits_MPORT_addr = 2'h1;
  assign buffer_channel_issue_arb_io_in_1_bits_MPORT_data =
    buffer_channel[buffer_channel_issue_arb_io_in_1_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_channel_issue_arb_io_in_2_bits_MPORT_en = 1'h1;
  assign buffer_channel_issue_arb_io_in_2_bits_MPORT_addr = 2'h2;
  assign buffer_channel_issue_arb_io_in_2_bits_MPORT_data =
    buffer_channel[buffer_channel_issue_arb_io_in_2_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_channel_issue_arb_io_in_3_bits_MPORT_en = 1'h1;
  assign buffer_channel_issue_arb_io_in_3_bits_MPORT_addr = 2'h3;
  assign buffer_channel_issue_arb_io_in_3_bits_MPORT_data =
    buffer_channel[buffer_channel_issue_arb_io_in_3_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_channel_dup_mask_MPORT_en = 1'h1;
  assign buffer_channel_dup_mask_MPORT_addr = 2'h0;
  assign buffer_channel_dup_mask_MPORT_data = buffer_channel[buffer_channel_dup_mask_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_channel_dup_mask_MPORT_1_en = 1'h1;
  assign buffer_channel_dup_mask_MPORT_1_addr = 2'h0;
  assign buffer_channel_dup_mask_MPORT_1_data = buffer_channel[buffer_channel_dup_mask_MPORT_1_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_channel_dup_mask_MPORT_2_en = 1'h1;
  assign buffer_channel_dup_mask_MPORT_2_addr = 2'h1;
  assign buffer_channel_dup_mask_MPORT_2_data = buffer_channel[buffer_channel_dup_mask_MPORT_2_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_channel_dup_mask_MPORT_3_en = 1'h1;
  assign buffer_channel_dup_mask_MPORT_3_addr = 2'h1;
  assign buffer_channel_dup_mask_MPORT_3_data = buffer_channel[buffer_channel_dup_mask_MPORT_3_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_channel_dup_mask_MPORT_4_en = 1'h1;
  assign buffer_channel_dup_mask_MPORT_4_addr = 2'h2;
  assign buffer_channel_dup_mask_MPORT_4_data = buffer_channel[buffer_channel_dup_mask_MPORT_4_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_channel_dup_mask_MPORT_5_en = 1'h1;
  assign buffer_channel_dup_mask_MPORT_5_addr = 2'h2;
  assign buffer_channel_dup_mask_MPORT_5_data = buffer_channel[buffer_channel_dup_mask_MPORT_5_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_channel_dup_mask_MPORT_6_en = 1'h1;
  assign buffer_channel_dup_mask_MPORT_6_addr = 2'h3;
  assign buffer_channel_dup_mask_MPORT_6_data = buffer_channel[buffer_channel_dup_mask_MPORT_6_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_channel_dup_mask_MPORT_7_en = 1'h1;
  assign buffer_channel_dup_mask_MPORT_7_addr = 2'h3;
  assign buffer_channel_dup_mask_MPORT_7_data = buffer_channel[buffer_channel_dup_mask_MPORT_7_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_channel_req_deps_MPORT_en = 1'h1;
  assign buffer_channel_req_deps_MPORT_addr = 2'h0;
  assign buffer_channel_req_deps_MPORT_data = buffer_channel[buffer_channel_req_deps_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_channel_req_deps_MPORT_1_en = 1'h1;
  assign buffer_channel_req_deps_MPORT_1_addr = 2'h1;
  assign buffer_channel_req_deps_MPORT_1_data = buffer_channel[buffer_channel_req_deps_MPORT_1_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_channel_req_deps_MPORT_2_en = 1'h1;
  assign buffer_channel_req_deps_MPORT_2_addr = 2'h2;
  assign buffer_channel_req_deps_MPORT_2_data = buffer_channel[buffer_channel_req_deps_MPORT_2_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_channel_req_deps_MPORT_3_en = 1'h1;
  assign buffer_channel_req_deps_MPORT_3_addr = 2'h3;
  assign buffer_channel_req_deps_MPORT_3_data = buffer_channel[buffer_channel_req_deps_MPORT_3_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_channel_MPORT_data = 3'h1;
  assign buffer_channel_MPORT_addr = _insert_idx_T_1[0] ? 2'h0 : _insert_idx_T_7;
  assign buffer_channel_MPORT_mask = 1'h1;
  assign buffer_channel_MPORT_en = _alloc_T_1 & _alloc_T_4;
  assign buffer_opcode_issue_arb_io_in_0_bits_MPORT_en = 1'h1;
  assign buffer_opcode_issue_arb_io_in_0_bits_MPORT_addr = 2'h0;
  assign buffer_opcode_issue_arb_io_in_0_bits_MPORT_data =
    buffer_opcode[buffer_opcode_issue_arb_io_in_0_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_opcode_issue_arb_io_in_1_bits_MPORT_en = 1'h1;
  assign buffer_opcode_issue_arb_io_in_1_bits_MPORT_addr = 2'h1;
  assign buffer_opcode_issue_arb_io_in_1_bits_MPORT_data =
    buffer_opcode[buffer_opcode_issue_arb_io_in_1_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_opcode_issue_arb_io_in_2_bits_MPORT_en = 1'h1;
  assign buffer_opcode_issue_arb_io_in_2_bits_MPORT_addr = 2'h2;
  assign buffer_opcode_issue_arb_io_in_2_bits_MPORT_data =
    buffer_opcode[buffer_opcode_issue_arb_io_in_2_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_opcode_issue_arb_io_in_3_bits_MPORT_en = 1'h1;
  assign buffer_opcode_issue_arb_io_in_3_bits_MPORT_addr = 2'h3;
  assign buffer_opcode_issue_arb_io_in_3_bits_MPORT_data =
    buffer_opcode[buffer_opcode_issue_arb_io_in_3_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_opcode_dup_mask_MPORT_en = 1'h1;
  assign buffer_opcode_dup_mask_MPORT_addr = 2'h0;
  assign buffer_opcode_dup_mask_MPORT_data = buffer_opcode[buffer_opcode_dup_mask_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_opcode_dup_mask_MPORT_1_en = 1'h1;
  assign buffer_opcode_dup_mask_MPORT_1_addr = 2'h0;
  assign buffer_opcode_dup_mask_MPORT_1_data = buffer_opcode[buffer_opcode_dup_mask_MPORT_1_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_opcode_dup_mask_MPORT_2_en = 1'h1;
  assign buffer_opcode_dup_mask_MPORT_2_addr = 2'h1;
  assign buffer_opcode_dup_mask_MPORT_2_data = buffer_opcode[buffer_opcode_dup_mask_MPORT_2_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_opcode_dup_mask_MPORT_3_en = 1'h1;
  assign buffer_opcode_dup_mask_MPORT_3_addr = 2'h1;
  assign buffer_opcode_dup_mask_MPORT_3_data = buffer_opcode[buffer_opcode_dup_mask_MPORT_3_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_opcode_dup_mask_MPORT_4_en = 1'h1;
  assign buffer_opcode_dup_mask_MPORT_4_addr = 2'h2;
  assign buffer_opcode_dup_mask_MPORT_4_data = buffer_opcode[buffer_opcode_dup_mask_MPORT_4_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_opcode_dup_mask_MPORT_5_en = 1'h1;
  assign buffer_opcode_dup_mask_MPORT_5_addr = 2'h2;
  assign buffer_opcode_dup_mask_MPORT_5_data = buffer_opcode[buffer_opcode_dup_mask_MPORT_5_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_opcode_dup_mask_MPORT_6_en = 1'h1;
  assign buffer_opcode_dup_mask_MPORT_6_addr = 2'h3;
  assign buffer_opcode_dup_mask_MPORT_6_data = buffer_opcode[buffer_opcode_dup_mask_MPORT_6_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_opcode_dup_mask_MPORT_7_en = 1'h1;
  assign buffer_opcode_dup_mask_MPORT_7_addr = 2'h3;
  assign buffer_opcode_dup_mask_MPORT_7_data = buffer_opcode[buffer_opcode_dup_mask_MPORT_7_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_opcode_req_deps_MPORT_en = 1'h1;
  assign buffer_opcode_req_deps_MPORT_addr = 2'h0;
  assign buffer_opcode_req_deps_MPORT_data = buffer_opcode[buffer_opcode_req_deps_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_opcode_req_deps_MPORT_1_en = 1'h1;
  assign buffer_opcode_req_deps_MPORT_1_addr = 2'h1;
  assign buffer_opcode_req_deps_MPORT_1_data = buffer_opcode[buffer_opcode_req_deps_MPORT_1_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_opcode_req_deps_MPORT_2_en = 1'h1;
  assign buffer_opcode_req_deps_MPORT_2_addr = 2'h2;
  assign buffer_opcode_req_deps_MPORT_2_data = buffer_opcode[buffer_opcode_req_deps_MPORT_2_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_opcode_req_deps_MPORT_3_en = 1'h1;
  assign buffer_opcode_req_deps_MPORT_3_addr = 2'h3;
  assign buffer_opcode_req_deps_MPORT_3_data = buffer_opcode[buffer_opcode_req_deps_MPORT_3_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_opcode_MPORT_data = io_in_bits_opcode;
  assign buffer_opcode_MPORT_addr = _insert_idx_T_1[0] ? 2'h0 : _insert_idx_T_7;
  assign buffer_opcode_MPORT_mask = 1'h1;
  assign buffer_opcode_MPORT_en = _alloc_T_1 & _alloc_T_4;
  assign buffer_param_issue_arb_io_in_0_bits_MPORT_en = 1'h1;
  assign buffer_param_issue_arb_io_in_0_bits_MPORT_addr = 2'h0;
  assign buffer_param_issue_arb_io_in_0_bits_MPORT_data = buffer_param[buffer_param_issue_arb_io_in_0_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_param_issue_arb_io_in_1_bits_MPORT_en = 1'h1;
  assign buffer_param_issue_arb_io_in_1_bits_MPORT_addr = 2'h1;
  assign buffer_param_issue_arb_io_in_1_bits_MPORT_data = buffer_param[buffer_param_issue_arb_io_in_1_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_param_issue_arb_io_in_2_bits_MPORT_en = 1'h1;
  assign buffer_param_issue_arb_io_in_2_bits_MPORT_addr = 2'h2;
  assign buffer_param_issue_arb_io_in_2_bits_MPORT_data = buffer_param[buffer_param_issue_arb_io_in_2_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_param_issue_arb_io_in_3_bits_MPORT_en = 1'h1;
  assign buffer_param_issue_arb_io_in_3_bits_MPORT_addr = 2'h3;
  assign buffer_param_issue_arb_io_in_3_bits_MPORT_data = buffer_param[buffer_param_issue_arb_io_in_3_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_param_dup_mask_MPORT_en = 1'h1;
  assign buffer_param_dup_mask_MPORT_addr = 2'h0;
  assign buffer_param_dup_mask_MPORT_data = buffer_param[buffer_param_dup_mask_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_param_dup_mask_MPORT_1_en = 1'h1;
  assign buffer_param_dup_mask_MPORT_1_addr = 2'h0;
  assign buffer_param_dup_mask_MPORT_1_data = buffer_param[buffer_param_dup_mask_MPORT_1_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_param_dup_mask_MPORT_2_en = 1'h1;
  assign buffer_param_dup_mask_MPORT_2_addr = 2'h1;
  assign buffer_param_dup_mask_MPORT_2_data = buffer_param[buffer_param_dup_mask_MPORT_2_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_param_dup_mask_MPORT_3_en = 1'h1;
  assign buffer_param_dup_mask_MPORT_3_addr = 2'h1;
  assign buffer_param_dup_mask_MPORT_3_data = buffer_param[buffer_param_dup_mask_MPORT_3_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_param_dup_mask_MPORT_4_en = 1'h1;
  assign buffer_param_dup_mask_MPORT_4_addr = 2'h2;
  assign buffer_param_dup_mask_MPORT_4_data = buffer_param[buffer_param_dup_mask_MPORT_4_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_param_dup_mask_MPORT_5_en = 1'h1;
  assign buffer_param_dup_mask_MPORT_5_addr = 2'h2;
  assign buffer_param_dup_mask_MPORT_5_data = buffer_param[buffer_param_dup_mask_MPORT_5_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_param_dup_mask_MPORT_6_en = 1'h1;
  assign buffer_param_dup_mask_MPORT_6_addr = 2'h3;
  assign buffer_param_dup_mask_MPORT_6_data = buffer_param[buffer_param_dup_mask_MPORT_6_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_param_dup_mask_MPORT_7_en = 1'h1;
  assign buffer_param_dup_mask_MPORT_7_addr = 2'h3;
  assign buffer_param_dup_mask_MPORT_7_data = buffer_param[buffer_param_dup_mask_MPORT_7_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_param_req_deps_MPORT_en = 1'h1;
  assign buffer_param_req_deps_MPORT_addr = 2'h0;
  assign buffer_param_req_deps_MPORT_data = buffer_param[buffer_param_req_deps_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_param_req_deps_MPORT_1_en = 1'h1;
  assign buffer_param_req_deps_MPORT_1_addr = 2'h1;
  assign buffer_param_req_deps_MPORT_1_data = buffer_param[buffer_param_req_deps_MPORT_1_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_param_req_deps_MPORT_2_en = 1'h1;
  assign buffer_param_req_deps_MPORT_2_addr = 2'h2;
  assign buffer_param_req_deps_MPORT_2_data = buffer_param[buffer_param_req_deps_MPORT_2_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_param_req_deps_MPORT_3_en = 1'h1;
  assign buffer_param_req_deps_MPORT_3_addr = 2'h3;
  assign buffer_param_req_deps_MPORT_3_data = buffer_param[buffer_param_req_deps_MPORT_3_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_param_MPORT_data = io_in_bits_param;
  assign buffer_param_MPORT_addr = _insert_idx_T_1[0] ? 2'h0 : _insert_idx_T_7;
  assign buffer_param_MPORT_mask = 1'h1;
  assign buffer_param_MPORT_en = _alloc_T_1 & _alloc_T_4;
  assign buffer_size_issue_arb_io_in_0_bits_MPORT_en = 1'h1;
  assign buffer_size_issue_arb_io_in_0_bits_MPORT_addr = 2'h0;
  assign buffer_size_issue_arb_io_in_0_bits_MPORT_data = buffer_size[buffer_size_issue_arb_io_in_0_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_size_issue_arb_io_in_1_bits_MPORT_en = 1'h1;
  assign buffer_size_issue_arb_io_in_1_bits_MPORT_addr = 2'h1;
  assign buffer_size_issue_arb_io_in_1_bits_MPORT_data = buffer_size[buffer_size_issue_arb_io_in_1_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_size_issue_arb_io_in_2_bits_MPORT_en = 1'h1;
  assign buffer_size_issue_arb_io_in_2_bits_MPORT_addr = 2'h2;
  assign buffer_size_issue_arb_io_in_2_bits_MPORT_data = buffer_size[buffer_size_issue_arb_io_in_2_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_size_issue_arb_io_in_3_bits_MPORT_en = 1'h1;
  assign buffer_size_issue_arb_io_in_3_bits_MPORT_addr = 2'h3;
  assign buffer_size_issue_arb_io_in_3_bits_MPORT_data = buffer_size[buffer_size_issue_arb_io_in_3_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_size_dup_mask_MPORT_en = 1'h1;
  assign buffer_size_dup_mask_MPORT_addr = 2'h0;
  assign buffer_size_dup_mask_MPORT_data = buffer_size[buffer_size_dup_mask_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_size_dup_mask_MPORT_1_en = 1'h1;
  assign buffer_size_dup_mask_MPORT_1_addr = 2'h0;
  assign buffer_size_dup_mask_MPORT_1_data = buffer_size[buffer_size_dup_mask_MPORT_1_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_size_dup_mask_MPORT_2_en = 1'h1;
  assign buffer_size_dup_mask_MPORT_2_addr = 2'h1;
  assign buffer_size_dup_mask_MPORT_2_data = buffer_size[buffer_size_dup_mask_MPORT_2_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_size_dup_mask_MPORT_3_en = 1'h1;
  assign buffer_size_dup_mask_MPORT_3_addr = 2'h1;
  assign buffer_size_dup_mask_MPORT_3_data = buffer_size[buffer_size_dup_mask_MPORT_3_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_size_dup_mask_MPORT_4_en = 1'h1;
  assign buffer_size_dup_mask_MPORT_4_addr = 2'h2;
  assign buffer_size_dup_mask_MPORT_4_data = buffer_size[buffer_size_dup_mask_MPORT_4_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_size_dup_mask_MPORT_5_en = 1'h1;
  assign buffer_size_dup_mask_MPORT_5_addr = 2'h2;
  assign buffer_size_dup_mask_MPORT_5_data = buffer_size[buffer_size_dup_mask_MPORT_5_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_size_dup_mask_MPORT_6_en = 1'h1;
  assign buffer_size_dup_mask_MPORT_6_addr = 2'h3;
  assign buffer_size_dup_mask_MPORT_6_data = buffer_size[buffer_size_dup_mask_MPORT_6_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_size_dup_mask_MPORT_7_en = 1'h1;
  assign buffer_size_dup_mask_MPORT_7_addr = 2'h3;
  assign buffer_size_dup_mask_MPORT_7_data = buffer_size[buffer_size_dup_mask_MPORT_7_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_size_req_deps_MPORT_en = 1'h1;
  assign buffer_size_req_deps_MPORT_addr = 2'h0;
  assign buffer_size_req_deps_MPORT_data = buffer_size[buffer_size_req_deps_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_size_req_deps_MPORT_1_en = 1'h1;
  assign buffer_size_req_deps_MPORT_1_addr = 2'h1;
  assign buffer_size_req_deps_MPORT_1_data = buffer_size[buffer_size_req_deps_MPORT_1_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_size_req_deps_MPORT_2_en = 1'h1;
  assign buffer_size_req_deps_MPORT_2_addr = 2'h2;
  assign buffer_size_req_deps_MPORT_2_data = buffer_size[buffer_size_req_deps_MPORT_2_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_size_req_deps_MPORT_3_en = 1'h1;
  assign buffer_size_req_deps_MPORT_3_addr = 2'h3;
  assign buffer_size_req_deps_MPORT_3_data = buffer_size[buffer_size_req_deps_MPORT_3_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_size_MPORT_data = io_in_bits_size;
  assign buffer_size_MPORT_addr = _insert_idx_T_1[0] ? 2'h0 : _insert_idx_T_7;
  assign buffer_size_MPORT_mask = 1'h1;
  assign buffer_size_MPORT_en = _alloc_T_1 & _alloc_T_4;
  assign buffer_source_issue_arb_io_in_0_bits_MPORT_en = 1'h1;
  assign buffer_source_issue_arb_io_in_0_bits_MPORT_addr = 2'h0;
  assign buffer_source_issue_arb_io_in_0_bits_MPORT_data =
    buffer_source[buffer_source_issue_arb_io_in_0_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_source_issue_arb_io_in_1_bits_MPORT_en = 1'h1;
  assign buffer_source_issue_arb_io_in_1_bits_MPORT_addr = 2'h1;
  assign buffer_source_issue_arb_io_in_1_bits_MPORT_data =
    buffer_source[buffer_source_issue_arb_io_in_1_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_source_issue_arb_io_in_2_bits_MPORT_en = 1'h1;
  assign buffer_source_issue_arb_io_in_2_bits_MPORT_addr = 2'h2;
  assign buffer_source_issue_arb_io_in_2_bits_MPORT_data =
    buffer_source[buffer_source_issue_arb_io_in_2_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_source_issue_arb_io_in_3_bits_MPORT_en = 1'h1;
  assign buffer_source_issue_arb_io_in_3_bits_MPORT_addr = 2'h3;
  assign buffer_source_issue_arb_io_in_3_bits_MPORT_data =
    buffer_source[buffer_source_issue_arb_io_in_3_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_source_dup_mask_MPORT_en = 1'h1;
  assign buffer_source_dup_mask_MPORT_addr = 2'h0;
  assign buffer_source_dup_mask_MPORT_data = buffer_source[buffer_source_dup_mask_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_source_dup_mask_MPORT_1_en = 1'h1;
  assign buffer_source_dup_mask_MPORT_1_addr = 2'h0;
  assign buffer_source_dup_mask_MPORT_1_data = buffer_source[buffer_source_dup_mask_MPORT_1_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_source_dup_mask_MPORT_2_en = 1'h1;
  assign buffer_source_dup_mask_MPORT_2_addr = 2'h1;
  assign buffer_source_dup_mask_MPORT_2_data = buffer_source[buffer_source_dup_mask_MPORT_2_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_source_dup_mask_MPORT_3_en = 1'h1;
  assign buffer_source_dup_mask_MPORT_3_addr = 2'h1;
  assign buffer_source_dup_mask_MPORT_3_data = buffer_source[buffer_source_dup_mask_MPORT_3_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_source_dup_mask_MPORT_4_en = 1'h1;
  assign buffer_source_dup_mask_MPORT_4_addr = 2'h2;
  assign buffer_source_dup_mask_MPORT_4_data = buffer_source[buffer_source_dup_mask_MPORT_4_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_source_dup_mask_MPORT_5_en = 1'h1;
  assign buffer_source_dup_mask_MPORT_5_addr = 2'h2;
  assign buffer_source_dup_mask_MPORT_5_data = buffer_source[buffer_source_dup_mask_MPORT_5_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_source_dup_mask_MPORT_6_en = 1'h1;
  assign buffer_source_dup_mask_MPORT_6_addr = 2'h3;
  assign buffer_source_dup_mask_MPORT_6_data = buffer_source[buffer_source_dup_mask_MPORT_6_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_source_dup_mask_MPORT_7_en = 1'h1;
  assign buffer_source_dup_mask_MPORT_7_addr = 2'h3;
  assign buffer_source_dup_mask_MPORT_7_data = buffer_source[buffer_source_dup_mask_MPORT_7_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_source_req_deps_MPORT_en = 1'h1;
  assign buffer_source_req_deps_MPORT_addr = 2'h0;
  assign buffer_source_req_deps_MPORT_data = buffer_source[buffer_source_req_deps_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_source_req_deps_MPORT_1_en = 1'h1;
  assign buffer_source_req_deps_MPORT_1_addr = 2'h1;
  assign buffer_source_req_deps_MPORT_1_data = buffer_source[buffer_source_req_deps_MPORT_1_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_source_req_deps_MPORT_2_en = 1'h1;
  assign buffer_source_req_deps_MPORT_2_addr = 2'h2;
  assign buffer_source_req_deps_MPORT_2_data = buffer_source[buffer_source_req_deps_MPORT_2_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_source_req_deps_MPORT_3_en = 1'h1;
  assign buffer_source_req_deps_MPORT_3_addr = 2'h3;
  assign buffer_source_req_deps_MPORT_3_data = buffer_source[buffer_source_req_deps_MPORT_3_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_source_MPORT_data = io_in_bits_source;
  assign buffer_source_MPORT_addr = _insert_idx_T_1[0] ? 2'h0 : _insert_idx_T_7;
  assign buffer_source_MPORT_mask = 1'h1;
  assign buffer_source_MPORT_en = _alloc_T_1 & _alloc_T_4;
  assign buffer_set_issue_arb_io_in_0_bits_MPORT_en = 1'h1;
  assign buffer_set_issue_arb_io_in_0_bits_MPORT_addr = 2'h0;
  assign buffer_set_issue_arb_io_in_0_bits_MPORT_data = buffer_set[buffer_set_issue_arb_io_in_0_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_set_issue_arb_io_in_1_bits_MPORT_en = 1'h1;
  assign buffer_set_issue_arb_io_in_1_bits_MPORT_addr = 2'h1;
  assign buffer_set_issue_arb_io_in_1_bits_MPORT_data = buffer_set[buffer_set_issue_arb_io_in_1_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_set_issue_arb_io_in_2_bits_MPORT_en = 1'h1;
  assign buffer_set_issue_arb_io_in_2_bits_MPORT_addr = 2'h2;
  assign buffer_set_issue_arb_io_in_2_bits_MPORT_data = buffer_set[buffer_set_issue_arb_io_in_2_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_set_issue_arb_io_in_3_bits_MPORT_en = 1'h1;
  assign buffer_set_issue_arb_io_in_3_bits_MPORT_addr = 2'h3;
  assign buffer_set_issue_arb_io_in_3_bits_MPORT_data = buffer_set[buffer_set_issue_arb_io_in_3_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_set_dup_mask_MPORT_en = 1'h1;
  assign buffer_set_dup_mask_MPORT_addr = 2'h0;
  assign buffer_set_dup_mask_MPORT_data = buffer_set[buffer_set_dup_mask_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_set_dup_mask_MPORT_1_en = 1'h1;
  assign buffer_set_dup_mask_MPORT_1_addr = 2'h0;
  assign buffer_set_dup_mask_MPORT_1_data = buffer_set[buffer_set_dup_mask_MPORT_1_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_set_dup_mask_MPORT_2_en = 1'h1;
  assign buffer_set_dup_mask_MPORT_2_addr = 2'h1;
  assign buffer_set_dup_mask_MPORT_2_data = buffer_set[buffer_set_dup_mask_MPORT_2_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_set_dup_mask_MPORT_3_en = 1'h1;
  assign buffer_set_dup_mask_MPORT_3_addr = 2'h1;
  assign buffer_set_dup_mask_MPORT_3_data = buffer_set[buffer_set_dup_mask_MPORT_3_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_set_dup_mask_MPORT_4_en = 1'h1;
  assign buffer_set_dup_mask_MPORT_4_addr = 2'h2;
  assign buffer_set_dup_mask_MPORT_4_data = buffer_set[buffer_set_dup_mask_MPORT_4_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_set_dup_mask_MPORT_5_en = 1'h1;
  assign buffer_set_dup_mask_MPORT_5_addr = 2'h2;
  assign buffer_set_dup_mask_MPORT_5_data = buffer_set[buffer_set_dup_mask_MPORT_5_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_set_dup_mask_MPORT_6_en = 1'h1;
  assign buffer_set_dup_mask_MPORT_6_addr = 2'h3;
  assign buffer_set_dup_mask_MPORT_6_data = buffer_set[buffer_set_dup_mask_MPORT_6_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_set_dup_mask_MPORT_7_en = 1'h1;
  assign buffer_set_dup_mask_MPORT_7_addr = 2'h3;
  assign buffer_set_dup_mask_MPORT_7_data = buffer_set[buffer_set_dup_mask_MPORT_7_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_set_req_deps_MPORT_en = 1'h1;
  assign buffer_set_req_deps_MPORT_addr = 2'h0;
  assign buffer_set_req_deps_MPORT_data = buffer_set[buffer_set_req_deps_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_set_req_deps_MPORT_1_en = 1'h1;
  assign buffer_set_req_deps_MPORT_1_addr = 2'h1;
  assign buffer_set_req_deps_MPORT_1_data = buffer_set[buffer_set_req_deps_MPORT_1_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_set_req_deps_MPORT_2_en = 1'h1;
  assign buffer_set_req_deps_MPORT_2_addr = 2'h2;
  assign buffer_set_req_deps_MPORT_2_data = buffer_set[buffer_set_req_deps_MPORT_2_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_set_req_deps_MPORT_3_en = 1'h1;
  assign buffer_set_req_deps_MPORT_3_addr = 2'h3;
  assign buffer_set_req_deps_MPORT_3_data = buffer_set[buffer_set_req_deps_MPORT_3_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_set_MPORT_data = io_in_bits_set;
  assign buffer_set_MPORT_addr = _insert_idx_T_1[0] ? 2'h0 : _insert_idx_T_7;
  assign buffer_set_MPORT_mask = 1'h1;
  assign buffer_set_MPORT_en = _alloc_T_1 & _alloc_T_4;
  assign buffer_tag_issue_arb_io_in_0_bits_MPORT_en = 1'h1;
  assign buffer_tag_issue_arb_io_in_0_bits_MPORT_addr = 2'h0;
  assign buffer_tag_issue_arb_io_in_0_bits_MPORT_data = buffer_tag[buffer_tag_issue_arb_io_in_0_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_tag_issue_arb_io_in_1_bits_MPORT_en = 1'h1;
  assign buffer_tag_issue_arb_io_in_1_bits_MPORT_addr = 2'h1;
  assign buffer_tag_issue_arb_io_in_1_bits_MPORT_data = buffer_tag[buffer_tag_issue_arb_io_in_1_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_tag_issue_arb_io_in_2_bits_MPORT_en = 1'h1;
  assign buffer_tag_issue_arb_io_in_2_bits_MPORT_addr = 2'h2;
  assign buffer_tag_issue_arb_io_in_2_bits_MPORT_data = buffer_tag[buffer_tag_issue_arb_io_in_2_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_tag_issue_arb_io_in_3_bits_MPORT_en = 1'h1;
  assign buffer_tag_issue_arb_io_in_3_bits_MPORT_addr = 2'h3;
  assign buffer_tag_issue_arb_io_in_3_bits_MPORT_data = buffer_tag[buffer_tag_issue_arb_io_in_3_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_tag_dup_mask_MPORT_en = 1'h1;
  assign buffer_tag_dup_mask_MPORT_addr = 2'h0;
  assign buffer_tag_dup_mask_MPORT_data = buffer_tag[buffer_tag_dup_mask_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_tag_dup_mask_MPORT_1_en = 1'h1;
  assign buffer_tag_dup_mask_MPORT_1_addr = 2'h0;
  assign buffer_tag_dup_mask_MPORT_1_data = buffer_tag[buffer_tag_dup_mask_MPORT_1_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_tag_dup_mask_MPORT_2_en = 1'h1;
  assign buffer_tag_dup_mask_MPORT_2_addr = 2'h1;
  assign buffer_tag_dup_mask_MPORT_2_data = buffer_tag[buffer_tag_dup_mask_MPORT_2_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_tag_dup_mask_MPORT_3_en = 1'h1;
  assign buffer_tag_dup_mask_MPORT_3_addr = 2'h1;
  assign buffer_tag_dup_mask_MPORT_3_data = buffer_tag[buffer_tag_dup_mask_MPORT_3_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_tag_dup_mask_MPORT_4_en = 1'h1;
  assign buffer_tag_dup_mask_MPORT_4_addr = 2'h2;
  assign buffer_tag_dup_mask_MPORT_4_data = buffer_tag[buffer_tag_dup_mask_MPORT_4_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_tag_dup_mask_MPORT_5_en = 1'h1;
  assign buffer_tag_dup_mask_MPORT_5_addr = 2'h2;
  assign buffer_tag_dup_mask_MPORT_5_data = buffer_tag[buffer_tag_dup_mask_MPORT_5_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_tag_dup_mask_MPORT_6_en = 1'h1;
  assign buffer_tag_dup_mask_MPORT_6_addr = 2'h3;
  assign buffer_tag_dup_mask_MPORT_6_data = buffer_tag[buffer_tag_dup_mask_MPORT_6_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_tag_dup_mask_MPORT_7_en = 1'h1;
  assign buffer_tag_dup_mask_MPORT_7_addr = 2'h3;
  assign buffer_tag_dup_mask_MPORT_7_data = buffer_tag[buffer_tag_dup_mask_MPORT_7_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_tag_req_deps_MPORT_en = 1'h1;
  assign buffer_tag_req_deps_MPORT_addr = 2'h0;
  assign buffer_tag_req_deps_MPORT_data = buffer_tag[buffer_tag_req_deps_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_tag_req_deps_MPORT_1_en = 1'h1;
  assign buffer_tag_req_deps_MPORT_1_addr = 2'h1;
  assign buffer_tag_req_deps_MPORT_1_data = buffer_tag[buffer_tag_req_deps_MPORT_1_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_tag_req_deps_MPORT_2_en = 1'h1;
  assign buffer_tag_req_deps_MPORT_2_addr = 2'h2;
  assign buffer_tag_req_deps_MPORT_2_data = buffer_tag[buffer_tag_req_deps_MPORT_2_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_tag_req_deps_MPORT_3_en = 1'h1;
  assign buffer_tag_req_deps_MPORT_3_addr = 2'h3;
  assign buffer_tag_req_deps_MPORT_3_data = buffer_tag[buffer_tag_req_deps_MPORT_3_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_tag_MPORT_data = io_in_bits_tag;
  assign buffer_tag_MPORT_addr = _insert_idx_T_1[0] ? 2'h0 : _insert_idx_T_7;
  assign buffer_tag_MPORT_mask = 1'h1;
  assign buffer_tag_MPORT_en = _alloc_T_1 & _alloc_T_4;
  assign buffer_off_issue_arb_io_in_0_bits_MPORT_en = 1'h1;
  assign buffer_off_issue_arb_io_in_0_bits_MPORT_addr = 2'h0;
  assign buffer_off_issue_arb_io_in_0_bits_MPORT_data = buffer_off[buffer_off_issue_arb_io_in_0_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_off_issue_arb_io_in_1_bits_MPORT_en = 1'h1;
  assign buffer_off_issue_arb_io_in_1_bits_MPORT_addr = 2'h1;
  assign buffer_off_issue_arb_io_in_1_bits_MPORT_data = buffer_off[buffer_off_issue_arb_io_in_1_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_off_issue_arb_io_in_2_bits_MPORT_en = 1'h1;
  assign buffer_off_issue_arb_io_in_2_bits_MPORT_addr = 2'h2;
  assign buffer_off_issue_arb_io_in_2_bits_MPORT_data = buffer_off[buffer_off_issue_arb_io_in_2_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_off_issue_arb_io_in_3_bits_MPORT_en = 1'h1;
  assign buffer_off_issue_arb_io_in_3_bits_MPORT_addr = 2'h3;
  assign buffer_off_issue_arb_io_in_3_bits_MPORT_data = buffer_off[buffer_off_issue_arb_io_in_3_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_off_dup_mask_MPORT_en = 1'h1;
  assign buffer_off_dup_mask_MPORT_addr = 2'h0;
  assign buffer_off_dup_mask_MPORT_data = buffer_off[buffer_off_dup_mask_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_off_dup_mask_MPORT_1_en = 1'h1;
  assign buffer_off_dup_mask_MPORT_1_addr = 2'h0;
  assign buffer_off_dup_mask_MPORT_1_data = buffer_off[buffer_off_dup_mask_MPORT_1_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_off_dup_mask_MPORT_2_en = 1'h1;
  assign buffer_off_dup_mask_MPORT_2_addr = 2'h1;
  assign buffer_off_dup_mask_MPORT_2_data = buffer_off[buffer_off_dup_mask_MPORT_2_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_off_dup_mask_MPORT_3_en = 1'h1;
  assign buffer_off_dup_mask_MPORT_3_addr = 2'h1;
  assign buffer_off_dup_mask_MPORT_3_data = buffer_off[buffer_off_dup_mask_MPORT_3_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_off_dup_mask_MPORT_4_en = 1'h1;
  assign buffer_off_dup_mask_MPORT_4_addr = 2'h2;
  assign buffer_off_dup_mask_MPORT_4_data = buffer_off[buffer_off_dup_mask_MPORT_4_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_off_dup_mask_MPORT_5_en = 1'h1;
  assign buffer_off_dup_mask_MPORT_5_addr = 2'h2;
  assign buffer_off_dup_mask_MPORT_5_data = buffer_off[buffer_off_dup_mask_MPORT_5_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_off_dup_mask_MPORT_6_en = 1'h1;
  assign buffer_off_dup_mask_MPORT_6_addr = 2'h3;
  assign buffer_off_dup_mask_MPORT_6_data = buffer_off[buffer_off_dup_mask_MPORT_6_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_off_dup_mask_MPORT_7_en = 1'h1;
  assign buffer_off_dup_mask_MPORT_7_addr = 2'h3;
  assign buffer_off_dup_mask_MPORT_7_data = buffer_off[buffer_off_dup_mask_MPORT_7_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_off_req_deps_MPORT_en = 1'h1;
  assign buffer_off_req_deps_MPORT_addr = 2'h0;
  assign buffer_off_req_deps_MPORT_data = buffer_off[buffer_off_req_deps_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_off_req_deps_MPORT_1_en = 1'h1;
  assign buffer_off_req_deps_MPORT_1_addr = 2'h1;
  assign buffer_off_req_deps_MPORT_1_data = buffer_off[buffer_off_req_deps_MPORT_1_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_off_req_deps_MPORT_2_en = 1'h1;
  assign buffer_off_req_deps_MPORT_2_addr = 2'h2;
  assign buffer_off_req_deps_MPORT_2_data = buffer_off[buffer_off_req_deps_MPORT_2_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_off_req_deps_MPORT_3_en = 1'h1;
  assign buffer_off_req_deps_MPORT_3_addr = 2'h3;
  assign buffer_off_req_deps_MPORT_3_data = buffer_off[buffer_off_req_deps_MPORT_3_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_off_MPORT_data = io_in_bits_off;
  assign buffer_off_MPORT_addr = _insert_idx_T_1[0] ? 2'h0 : _insert_idx_T_7;
  assign buffer_off_MPORT_mask = 1'h1;
  assign buffer_off_MPORT_en = _alloc_T_1 & _alloc_T_4;
  assign buffer_mask_issue_arb_io_in_0_bits_MPORT_en = 1'h1;
  assign buffer_mask_issue_arb_io_in_0_bits_MPORT_addr = 2'h0;
  assign buffer_mask_issue_arb_io_in_0_bits_MPORT_data = buffer_mask[buffer_mask_issue_arb_io_in_0_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_mask_issue_arb_io_in_1_bits_MPORT_en = 1'h1;
  assign buffer_mask_issue_arb_io_in_1_bits_MPORT_addr = 2'h1;
  assign buffer_mask_issue_arb_io_in_1_bits_MPORT_data = buffer_mask[buffer_mask_issue_arb_io_in_1_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_mask_issue_arb_io_in_2_bits_MPORT_en = 1'h1;
  assign buffer_mask_issue_arb_io_in_2_bits_MPORT_addr = 2'h2;
  assign buffer_mask_issue_arb_io_in_2_bits_MPORT_data = buffer_mask[buffer_mask_issue_arb_io_in_2_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_mask_issue_arb_io_in_3_bits_MPORT_en = 1'h1;
  assign buffer_mask_issue_arb_io_in_3_bits_MPORT_addr = 2'h3;
  assign buffer_mask_issue_arb_io_in_3_bits_MPORT_data = buffer_mask[buffer_mask_issue_arb_io_in_3_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_mask_dup_mask_MPORT_en = 1'h1;
  assign buffer_mask_dup_mask_MPORT_addr = 2'h0;
  assign buffer_mask_dup_mask_MPORT_data = buffer_mask[buffer_mask_dup_mask_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_mask_dup_mask_MPORT_1_en = 1'h1;
  assign buffer_mask_dup_mask_MPORT_1_addr = 2'h0;
  assign buffer_mask_dup_mask_MPORT_1_data = buffer_mask[buffer_mask_dup_mask_MPORT_1_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_mask_dup_mask_MPORT_2_en = 1'h1;
  assign buffer_mask_dup_mask_MPORT_2_addr = 2'h1;
  assign buffer_mask_dup_mask_MPORT_2_data = buffer_mask[buffer_mask_dup_mask_MPORT_2_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_mask_dup_mask_MPORT_3_en = 1'h1;
  assign buffer_mask_dup_mask_MPORT_3_addr = 2'h1;
  assign buffer_mask_dup_mask_MPORT_3_data = buffer_mask[buffer_mask_dup_mask_MPORT_3_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_mask_dup_mask_MPORT_4_en = 1'h1;
  assign buffer_mask_dup_mask_MPORT_4_addr = 2'h2;
  assign buffer_mask_dup_mask_MPORT_4_data = buffer_mask[buffer_mask_dup_mask_MPORT_4_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_mask_dup_mask_MPORT_5_en = 1'h1;
  assign buffer_mask_dup_mask_MPORT_5_addr = 2'h2;
  assign buffer_mask_dup_mask_MPORT_5_data = buffer_mask[buffer_mask_dup_mask_MPORT_5_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_mask_dup_mask_MPORT_6_en = 1'h1;
  assign buffer_mask_dup_mask_MPORT_6_addr = 2'h3;
  assign buffer_mask_dup_mask_MPORT_6_data = buffer_mask[buffer_mask_dup_mask_MPORT_6_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_mask_dup_mask_MPORT_7_en = 1'h1;
  assign buffer_mask_dup_mask_MPORT_7_addr = 2'h3;
  assign buffer_mask_dup_mask_MPORT_7_data = buffer_mask[buffer_mask_dup_mask_MPORT_7_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_mask_req_deps_MPORT_en = 1'h1;
  assign buffer_mask_req_deps_MPORT_addr = 2'h0;
  assign buffer_mask_req_deps_MPORT_data = buffer_mask[buffer_mask_req_deps_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_mask_req_deps_MPORT_1_en = 1'h1;
  assign buffer_mask_req_deps_MPORT_1_addr = 2'h1;
  assign buffer_mask_req_deps_MPORT_1_data = buffer_mask[buffer_mask_req_deps_MPORT_1_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_mask_req_deps_MPORT_2_en = 1'h1;
  assign buffer_mask_req_deps_MPORT_2_addr = 2'h2;
  assign buffer_mask_req_deps_MPORT_2_data = buffer_mask[buffer_mask_req_deps_MPORT_2_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_mask_req_deps_MPORT_3_en = 1'h1;
  assign buffer_mask_req_deps_MPORT_3_addr = 2'h3;
  assign buffer_mask_req_deps_MPORT_3_data = buffer_mask[buffer_mask_req_deps_MPORT_3_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_mask_MPORT_data = io_in_bits_mask;
  assign buffer_mask_MPORT_addr = _insert_idx_T_1[0] ? 2'h0 : _insert_idx_T_7;
  assign buffer_mask_MPORT_mask = 1'h1;
  assign buffer_mask_MPORT_en = _alloc_T_1 & _alloc_T_4;
  assign buffer_bufIdx_issue_arb_io_in_0_bits_MPORT_en = 1'h1;
  assign buffer_bufIdx_issue_arb_io_in_0_bits_MPORT_addr = 2'h0;
  assign buffer_bufIdx_issue_arb_io_in_0_bits_MPORT_data =
    buffer_bufIdx[buffer_bufIdx_issue_arb_io_in_0_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_bufIdx_issue_arb_io_in_1_bits_MPORT_en = 1'h1;
  assign buffer_bufIdx_issue_arb_io_in_1_bits_MPORT_addr = 2'h1;
  assign buffer_bufIdx_issue_arb_io_in_1_bits_MPORT_data =
    buffer_bufIdx[buffer_bufIdx_issue_arb_io_in_1_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_bufIdx_issue_arb_io_in_2_bits_MPORT_en = 1'h1;
  assign buffer_bufIdx_issue_arb_io_in_2_bits_MPORT_addr = 2'h2;
  assign buffer_bufIdx_issue_arb_io_in_2_bits_MPORT_data =
    buffer_bufIdx[buffer_bufIdx_issue_arb_io_in_2_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_bufIdx_issue_arb_io_in_3_bits_MPORT_en = 1'h1;
  assign buffer_bufIdx_issue_arb_io_in_3_bits_MPORT_addr = 2'h3;
  assign buffer_bufIdx_issue_arb_io_in_3_bits_MPORT_data =
    buffer_bufIdx[buffer_bufIdx_issue_arb_io_in_3_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_bufIdx_dup_mask_MPORT_en = 1'h1;
  assign buffer_bufIdx_dup_mask_MPORT_addr = 2'h0;
  assign buffer_bufIdx_dup_mask_MPORT_data = buffer_bufIdx[buffer_bufIdx_dup_mask_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_bufIdx_dup_mask_MPORT_1_en = 1'h1;
  assign buffer_bufIdx_dup_mask_MPORT_1_addr = 2'h0;
  assign buffer_bufIdx_dup_mask_MPORT_1_data = buffer_bufIdx[buffer_bufIdx_dup_mask_MPORT_1_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_bufIdx_dup_mask_MPORT_2_en = 1'h1;
  assign buffer_bufIdx_dup_mask_MPORT_2_addr = 2'h1;
  assign buffer_bufIdx_dup_mask_MPORT_2_data = buffer_bufIdx[buffer_bufIdx_dup_mask_MPORT_2_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_bufIdx_dup_mask_MPORT_3_en = 1'h1;
  assign buffer_bufIdx_dup_mask_MPORT_3_addr = 2'h1;
  assign buffer_bufIdx_dup_mask_MPORT_3_data = buffer_bufIdx[buffer_bufIdx_dup_mask_MPORT_3_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_bufIdx_dup_mask_MPORT_4_en = 1'h1;
  assign buffer_bufIdx_dup_mask_MPORT_4_addr = 2'h2;
  assign buffer_bufIdx_dup_mask_MPORT_4_data = buffer_bufIdx[buffer_bufIdx_dup_mask_MPORT_4_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_bufIdx_dup_mask_MPORT_5_en = 1'h1;
  assign buffer_bufIdx_dup_mask_MPORT_5_addr = 2'h2;
  assign buffer_bufIdx_dup_mask_MPORT_5_data = buffer_bufIdx[buffer_bufIdx_dup_mask_MPORT_5_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_bufIdx_dup_mask_MPORT_6_en = 1'h1;
  assign buffer_bufIdx_dup_mask_MPORT_6_addr = 2'h3;
  assign buffer_bufIdx_dup_mask_MPORT_6_data = buffer_bufIdx[buffer_bufIdx_dup_mask_MPORT_6_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_bufIdx_dup_mask_MPORT_7_en = 1'h1;
  assign buffer_bufIdx_dup_mask_MPORT_7_addr = 2'h3;
  assign buffer_bufIdx_dup_mask_MPORT_7_data = buffer_bufIdx[buffer_bufIdx_dup_mask_MPORT_7_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_bufIdx_req_deps_MPORT_en = 1'h1;
  assign buffer_bufIdx_req_deps_MPORT_addr = 2'h0;
  assign buffer_bufIdx_req_deps_MPORT_data = buffer_bufIdx[buffer_bufIdx_req_deps_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_bufIdx_req_deps_MPORT_1_en = 1'h1;
  assign buffer_bufIdx_req_deps_MPORT_1_addr = 2'h1;
  assign buffer_bufIdx_req_deps_MPORT_1_data = buffer_bufIdx[buffer_bufIdx_req_deps_MPORT_1_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_bufIdx_req_deps_MPORT_2_en = 1'h1;
  assign buffer_bufIdx_req_deps_MPORT_2_addr = 2'h2;
  assign buffer_bufIdx_req_deps_MPORT_2_data = buffer_bufIdx[buffer_bufIdx_req_deps_MPORT_2_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_bufIdx_req_deps_MPORT_3_en = 1'h1;
  assign buffer_bufIdx_req_deps_MPORT_3_addr = 2'h3;
  assign buffer_bufIdx_req_deps_MPORT_3_data = buffer_bufIdx[buffer_bufIdx_req_deps_MPORT_3_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_bufIdx_MPORT_data = io_in_bits_bufIdx;
  assign buffer_bufIdx_MPORT_addr = _insert_idx_T_1[0] ? 2'h0 : _insert_idx_T_7;
  assign buffer_bufIdx_MPORT_mask = 1'h1;
  assign buffer_bufIdx_MPORT_en = _alloc_T_1 & _alloc_T_4;
  assign buffer_preferCache_issue_arb_io_in_0_bits_MPORT_en = 1'h1;
  assign buffer_preferCache_issue_arb_io_in_0_bits_MPORT_addr = 2'h0;
  assign buffer_preferCache_issue_arb_io_in_0_bits_MPORT_data =
    buffer_preferCache[buffer_preferCache_issue_arb_io_in_0_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_preferCache_issue_arb_io_in_1_bits_MPORT_en = 1'h1;
  assign buffer_preferCache_issue_arb_io_in_1_bits_MPORT_addr = 2'h1;
  assign buffer_preferCache_issue_arb_io_in_1_bits_MPORT_data =
    buffer_preferCache[buffer_preferCache_issue_arb_io_in_1_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_preferCache_issue_arb_io_in_2_bits_MPORT_en = 1'h1;
  assign buffer_preferCache_issue_arb_io_in_2_bits_MPORT_addr = 2'h2;
  assign buffer_preferCache_issue_arb_io_in_2_bits_MPORT_data =
    buffer_preferCache[buffer_preferCache_issue_arb_io_in_2_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_preferCache_issue_arb_io_in_3_bits_MPORT_en = 1'h1;
  assign buffer_preferCache_issue_arb_io_in_3_bits_MPORT_addr = 2'h3;
  assign buffer_preferCache_issue_arb_io_in_3_bits_MPORT_data =
    buffer_preferCache[buffer_preferCache_issue_arb_io_in_3_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_preferCache_dup_mask_MPORT_en = 1'h1;
  assign buffer_preferCache_dup_mask_MPORT_addr = 2'h0;
  assign buffer_preferCache_dup_mask_MPORT_data = buffer_preferCache[buffer_preferCache_dup_mask_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_preferCache_dup_mask_MPORT_1_en = 1'h1;
  assign buffer_preferCache_dup_mask_MPORT_1_addr = 2'h0;
  assign buffer_preferCache_dup_mask_MPORT_1_data = buffer_preferCache[buffer_preferCache_dup_mask_MPORT_1_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_preferCache_dup_mask_MPORT_2_en = 1'h1;
  assign buffer_preferCache_dup_mask_MPORT_2_addr = 2'h1;
  assign buffer_preferCache_dup_mask_MPORT_2_data = buffer_preferCache[buffer_preferCache_dup_mask_MPORT_2_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_preferCache_dup_mask_MPORT_3_en = 1'h1;
  assign buffer_preferCache_dup_mask_MPORT_3_addr = 2'h1;
  assign buffer_preferCache_dup_mask_MPORT_3_data = buffer_preferCache[buffer_preferCache_dup_mask_MPORT_3_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_preferCache_dup_mask_MPORT_4_en = 1'h1;
  assign buffer_preferCache_dup_mask_MPORT_4_addr = 2'h2;
  assign buffer_preferCache_dup_mask_MPORT_4_data = buffer_preferCache[buffer_preferCache_dup_mask_MPORT_4_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_preferCache_dup_mask_MPORT_5_en = 1'h1;
  assign buffer_preferCache_dup_mask_MPORT_5_addr = 2'h2;
  assign buffer_preferCache_dup_mask_MPORT_5_data = buffer_preferCache[buffer_preferCache_dup_mask_MPORT_5_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_preferCache_dup_mask_MPORT_6_en = 1'h1;
  assign buffer_preferCache_dup_mask_MPORT_6_addr = 2'h3;
  assign buffer_preferCache_dup_mask_MPORT_6_data = buffer_preferCache[buffer_preferCache_dup_mask_MPORT_6_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_preferCache_dup_mask_MPORT_7_en = 1'h1;
  assign buffer_preferCache_dup_mask_MPORT_7_addr = 2'h3;
  assign buffer_preferCache_dup_mask_MPORT_7_data = buffer_preferCache[buffer_preferCache_dup_mask_MPORT_7_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_preferCache_req_deps_MPORT_en = 1'h1;
  assign buffer_preferCache_req_deps_MPORT_addr = 2'h0;
  assign buffer_preferCache_req_deps_MPORT_data = buffer_preferCache[buffer_preferCache_req_deps_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_preferCache_req_deps_MPORT_1_en = 1'h1;
  assign buffer_preferCache_req_deps_MPORT_1_addr = 2'h1;
  assign buffer_preferCache_req_deps_MPORT_1_data = buffer_preferCache[buffer_preferCache_req_deps_MPORT_1_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_preferCache_req_deps_MPORT_2_en = 1'h1;
  assign buffer_preferCache_req_deps_MPORT_2_addr = 2'h2;
  assign buffer_preferCache_req_deps_MPORT_2_data = buffer_preferCache[buffer_preferCache_req_deps_MPORT_2_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_preferCache_req_deps_MPORT_3_en = 1'h1;
  assign buffer_preferCache_req_deps_MPORT_3_addr = 2'h3;
  assign buffer_preferCache_req_deps_MPORT_3_data = buffer_preferCache[buffer_preferCache_req_deps_MPORT_3_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_preferCache_MPORT_data = 1'h1;
  assign buffer_preferCache_MPORT_addr = _insert_idx_T_1[0] ? 2'h0 : _insert_idx_T_7;
  assign buffer_preferCache_MPORT_mask = 1'h1;
  assign buffer_preferCache_MPORT_en = _alloc_T_1 & _alloc_T_4;
  assign buffer_dirty_issue_arb_io_in_0_bits_MPORT_en = 1'h1;
  assign buffer_dirty_issue_arb_io_in_0_bits_MPORT_addr = 2'h0;
  assign buffer_dirty_issue_arb_io_in_0_bits_MPORT_data = buffer_dirty[buffer_dirty_issue_arb_io_in_0_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_dirty_issue_arb_io_in_1_bits_MPORT_en = 1'h1;
  assign buffer_dirty_issue_arb_io_in_1_bits_MPORT_addr = 2'h1;
  assign buffer_dirty_issue_arb_io_in_1_bits_MPORT_data = buffer_dirty[buffer_dirty_issue_arb_io_in_1_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_dirty_issue_arb_io_in_2_bits_MPORT_en = 1'h1;
  assign buffer_dirty_issue_arb_io_in_2_bits_MPORT_addr = 2'h2;
  assign buffer_dirty_issue_arb_io_in_2_bits_MPORT_data = buffer_dirty[buffer_dirty_issue_arb_io_in_2_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_dirty_issue_arb_io_in_3_bits_MPORT_en = 1'h1;
  assign buffer_dirty_issue_arb_io_in_3_bits_MPORT_addr = 2'h3;
  assign buffer_dirty_issue_arb_io_in_3_bits_MPORT_data = buffer_dirty[buffer_dirty_issue_arb_io_in_3_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_dirty_dup_mask_MPORT_en = 1'h1;
  assign buffer_dirty_dup_mask_MPORT_addr = 2'h0;
  assign buffer_dirty_dup_mask_MPORT_data = buffer_dirty[buffer_dirty_dup_mask_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_dirty_dup_mask_MPORT_1_en = 1'h1;
  assign buffer_dirty_dup_mask_MPORT_1_addr = 2'h0;
  assign buffer_dirty_dup_mask_MPORT_1_data = buffer_dirty[buffer_dirty_dup_mask_MPORT_1_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_dirty_dup_mask_MPORT_2_en = 1'h1;
  assign buffer_dirty_dup_mask_MPORT_2_addr = 2'h1;
  assign buffer_dirty_dup_mask_MPORT_2_data = buffer_dirty[buffer_dirty_dup_mask_MPORT_2_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_dirty_dup_mask_MPORT_3_en = 1'h1;
  assign buffer_dirty_dup_mask_MPORT_3_addr = 2'h1;
  assign buffer_dirty_dup_mask_MPORT_3_data = buffer_dirty[buffer_dirty_dup_mask_MPORT_3_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_dirty_dup_mask_MPORT_4_en = 1'h1;
  assign buffer_dirty_dup_mask_MPORT_4_addr = 2'h2;
  assign buffer_dirty_dup_mask_MPORT_4_data = buffer_dirty[buffer_dirty_dup_mask_MPORT_4_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_dirty_dup_mask_MPORT_5_en = 1'h1;
  assign buffer_dirty_dup_mask_MPORT_5_addr = 2'h2;
  assign buffer_dirty_dup_mask_MPORT_5_data = buffer_dirty[buffer_dirty_dup_mask_MPORT_5_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_dirty_dup_mask_MPORT_6_en = 1'h1;
  assign buffer_dirty_dup_mask_MPORT_6_addr = 2'h3;
  assign buffer_dirty_dup_mask_MPORT_6_data = buffer_dirty[buffer_dirty_dup_mask_MPORT_6_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_dirty_dup_mask_MPORT_7_en = 1'h1;
  assign buffer_dirty_dup_mask_MPORT_7_addr = 2'h3;
  assign buffer_dirty_dup_mask_MPORT_7_data = buffer_dirty[buffer_dirty_dup_mask_MPORT_7_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_dirty_req_deps_MPORT_en = 1'h1;
  assign buffer_dirty_req_deps_MPORT_addr = 2'h0;
  assign buffer_dirty_req_deps_MPORT_data = buffer_dirty[buffer_dirty_req_deps_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_dirty_req_deps_MPORT_1_en = 1'h1;
  assign buffer_dirty_req_deps_MPORT_1_addr = 2'h1;
  assign buffer_dirty_req_deps_MPORT_1_data = buffer_dirty[buffer_dirty_req_deps_MPORT_1_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_dirty_req_deps_MPORT_2_en = 1'h1;
  assign buffer_dirty_req_deps_MPORT_2_addr = 2'h2;
  assign buffer_dirty_req_deps_MPORT_2_data = buffer_dirty[buffer_dirty_req_deps_MPORT_2_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_dirty_req_deps_MPORT_3_en = 1'h1;
  assign buffer_dirty_req_deps_MPORT_3_addr = 2'h3;
  assign buffer_dirty_req_deps_MPORT_3_data = buffer_dirty[buffer_dirty_req_deps_MPORT_3_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_dirty_MPORT_data = 1'h0;
  assign buffer_dirty_MPORT_addr = _insert_idx_T_1[0] ? 2'h0 : _insert_idx_T_7;
  assign buffer_dirty_MPORT_mask = 1'h1;
  assign buffer_dirty_MPORT_en = _alloc_T_1 & _alloc_T_4;
  assign buffer_fromProbeHelper_issue_arb_io_in_0_bits_MPORT_en = 1'h1;
  assign buffer_fromProbeHelper_issue_arb_io_in_0_bits_MPORT_addr = 2'h0;
  assign buffer_fromProbeHelper_issue_arb_io_in_0_bits_MPORT_data =
    buffer_fromProbeHelper[buffer_fromProbeHelper_issue_arb_io_in_0_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_fromProbeHelper_issue_arb_io_in_1_bits_MPORT_en = 1'h1;
  assign buffer_fromProbeHelper_issue_arb_io_in_1_bits_MPORT_addr = 2'h1;
  assign buffer_fromProbeHelper_issue_arb_io_in_1_bits_MPORT_data =
    buffer_fromProbeHelper[buffer_fromProbeHelper_issue_arb_io_in_1_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_fromProbeHelper_issue_arb_io_in_2_bits_MPORT_en = 1'h1;
  assign buffer_fromProbeHelper_issue_arb_io_in_2_bits_MPORT_addr = 2'h2;
  assign buffer_fromProbeHelper_issue_arb_io_in_2_bits_MPORT_data =
    buffer_fromProbeHelper[buffer_fromProbeHelper_issue_arb_io_in_2_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_fromProbeHelper_issue_arb_io_in_3_bits_MPORT_en = 1'h1;
  assign buffer_fromProbeHelper_issue_arb_io_in_3_bits_MPORT_addr = 2'h3;
  assign buffer_fromProbeHelper_issue_arb_io_in_3_bits_MPORT_data =
    buffer_fromProbeHelper[buffer_fromProbeHelper_issue_arb_io_in_3_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_fromProbeHelper_dup_mask_MPORT_en = 1'h1;
  assign buffer_fromProbeHelper_dup_mask_MPORT_addr = 2'h0;
  assign buffer_fromProbeHelper_dup_mask_MPORT_data = buffer_fromProbeHelper[buffer_fromProbeHelper_dup_mask_MPORT_addr]
    ; // @[RequestBuffer.scala 17:19]
  assign buffer_fromProbeHelper_dup_mask_MPORT_1_en = 1'h1;
  assign buffer_fromProbeHelper_dup_mask_MPORT_1_addr = 2'h0;
  assign buffer_fromProbeHelper_dup_mask_MPORT_1_data =
    buffer_fromProbeHelper[buffer_fromProbeHelper_dup_mask_MPORT_1_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_fromProbeHelper_dup_mask_MPORT_2_en = 1'h1;
  assign buffer_fromProbeHelper_dup_mask_MPORT_2_addr = 2'h1;
  assign buffer_fromProbeHelper_dup_mask_MPORT_2_data =
    buffer_fromProbeHelper[buffer_fromProbeHelper_dup_mask_MPORT_2_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_fromProbeHelper_dup_mask_MPORT_3_en = 1'h1;
  assign buffer_fromProbeHelper_dup_mask_MPORT_3_addr = 2'h1;
  assign buffer_fromProbeHelper_dup_mask_MPORT_3_data =
    buffer_fromProbeHelper[buffer_fromProbeHelper_dup_mask_MPORT_3_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_fromProbeHelper_dup_mask_MPORT_4_en = 1'h1;
  assign buffer_fromProbeHelper_dup_mask_MPORT_4_addr = 2'h2;
  assign buffer_fromProbeHelper_dup_mask_MPORT_4_data =
    buffer_fromProbeHelper[buffer_fromProbeHelper_dup_mask_MPORT_4_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_fromProbeHelper_dup_mask_MPORT_5_en = 1'h1;
  assign buffer_fromProbeHelper_dup_mask_MPORT_5_addr = 2'h2;
  assign buffer_fromProbeHelper_dup_mask_MPORT_5_data =
    buffer_fromProbeHelper[buffer_fromProbeHelper_dup_mask_MPORT_5_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_fromProbeHelper_dup_mask_MPORT_6_en = 1'h1;
  assign buffer_fromProbeHelper_dup_mask_MPORT_6_addr = 2'h3;
  assign buffer_fromProbeHelper_dup_mask_MPORT_6_data =
    buffer_fromProbeHelper[buffer_fromProbeHelper_dup_mask_MPORT_6_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_fromProbeHelper_dup_mask_MPORT_7_en = 1'h1;
  assign buffer_fromProbeHelper_dup_mask_MPORT_7_addr = 2'h3;
  assign buffer_fromProbeHelper_dup_mask_MPORT_7_data =
    buffer_fromProbeHelper[buffer_fromProbeHelper_dup_mask_MPORT_7_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_fromProbeHelper_req_deps_MPORT_en = 1'h1;
  assign buffer_fromProbeHelper_req_deps_MPORT_addr = 2'h0;
  assign buffer_fromProbeHelper_req_deps_MPORT_data = buffer_fromProbeHelper[buffer_fromProbeHelper_req_deps_MPORT_addr]
    ; // @[RequestBuffer.scala 17:19]
  assign buffer_fromProbeHelper_req_deps_MPORT_1_en = 1'h1;
  assign buffer_fromProbeHelper_req_deps_MPORT_1_addr = 2'h1;
  assign buffer_fromProbeHelper_req_deps_MPORT_1_data =
    buffer_fromProbeHelper[buffer_fromProbeHelper_req_deps_MPORT_1_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_fromProbeHelper_req_deps_MPORT_2_en = 1'h1;
  assign buffer_fromProbeHelper_req_deps_MPORT_2_addr = 2'h2;
  assign buffer_fromProbeHelper_req_deps_MPORT_2_data =
    buffer_fromProbeHelper[buffer_fromProbeHelper_req_deps_MPORT_2_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_fromProbeHelper_req_deps_MPORT_3_en = 1'h1;
  assign buffer_fromProbeHelper_req_deps_MPORT_3_addr = 2'h3;
  assign buffer_fromProbeHelper_req_deps_MPORT_3_data =
    buffer_fromProbeHelper[buffer_fromProbeHelper_req_deps_MPORT_3_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_fromProbeHelper_MPORT_data = 1'h0;
  assign buffer_fromProbeHelper_MPORT_addr = _insert_idx_T_1[0] ? 2'h0 : _insert_idx_T_7;
  assign buffer_fromProbeHelper_MPORT_mask = 1'h1;
  assign buffer_fromProbeHelper_MPORT_en = _alloc_T_1 & _alloc_T_4;
  assign buffer_fromCmoHelper_issue_arb_io_in_0_bits_MPORT_en = 1'h1;
  assign buffer_fromCmoHelper_issue_arb_io_in_0_bits_MPORT_addr = 2'h0;
  assign buffer_fromCmoHelper_issue_arb_io_in_0_bits_MPORT_data =
    buffer_fromCmoHelper[buffer_fromCmoHelper_issue_arb_io_in_0_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_fromCmoHelper_issue_arb_io_in_1_bits_MPORT_en = 1'h1;
  assign buffer_fromCmoHelper_issue_arb_io_in_1_bits_MPORT_addr = 2'h1;
  assign buffer_fromCmoHelper_issue_arb_io_in_1_bits_MPORT_data =
    buffer_fromCmoHelper[buffer_fromCmoHelper_issue_arb_io_in_1_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_fromCmoHelper_issue_arb_io_in_2_bits_MPORT_en = 1'h1;
  assign buffer_fromCmoHelper_issue_arb_io_in_2_bits_MPORT_addr = 2'h2;
  assign buffer_fromCmoHelper_issue_arb_io_in_2_bits_MPORT_data =
    buffer_fromCmoHelper[buffer_fromCmoHelper_issue_arb_io_in_2_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_fromCmoHelper_issue_arb_io_in_3_bits_MPORT_en = 1'h1;
  assign buffer_fromCmoHelper_issue_arb_io_in_3_bits_MPORT_addr = 2'h3;
  assign buffer_fromCmoHelper_issue_arb_io_in_3_bits_MPORT_data =
    buffer_fromCmoHelper[buffer_fromCmoHelper_issue_arb_io_in_3_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_fromCmoHelper_dup_mask_MPORT_en = 1'h1;
  assign buffer_fromCmoHelper_dup_mask_MPORT_addr = 2'h0;
  assign buffer_fromCmoHelper_dup_mask_MPORT_data = buffer_fromCmoHelper[buffer_fromCmoHelper_dup_mask_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_fromCmoHelper_dup_mask_MPORT_1_en = 1'h1;
  assign buffer_fromCmoHelper_dup_mask_MPORT_1_addr = 2'h0;
  assign buffer_fromCmoHelper_dup_mask_MPORT_1_data = buffer_fromCmoHelper[buffer_fromCmoHelper_dup_mask_MPORT_1_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_fromCmoHelper_dup_mask_MPORT_2_en = 1'h1;
  assign buffer_fromCmoHelper_dup_mask_MPORT_2_addr = 2'h1;
  assign buffer_fromCmoHelper_dup_mask_MPORT_2_data = buffer_fromCmoHelper[buffer_fromCmoHelper_dup_mask_MPORT_2_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_fromCmoHelper_dup_mask_MPORT_3_en = 1'h1;
  assign buffer_fromCmoHelper_dup_mask_MPORT_3_addr = 2'h1;
  assign buffer_fromCmoHelper_dup_mask_MPORT_3_data = buffer_fromCmoHelper[buffer_fromCmoHelper_dup_mask_MPORT_3_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_fromCmoHelper_dup_mask_MPORT_4_en = 1'h1;
  assign buffer_fromCmoHelper_dup_mask_MPORT_4_addr = 2'h2;
  assign buffer_fromCmoHelper_dup_mask_MPORT_4_data = buffer_fromCmoHelper[buffer_fromCmoHelper_dup_mask_MPORT_4_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_fromCmoHelper_dup_mask_MPORT_5_en = 1'h1;
  assign buffer_fromCmoHelper_dup_mask_MPORT_5_addr = 2'h2;
  assign buffer_fromCmoHelper_dup_mask_MPORT_5_data = buffer_fromCmoHelper[buffer_fromCmoHelper_dup_mask_MPORT_5_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_fromCmoHelper_dup_mask_MPORT_6_en = 1'h1;
  assign buffer_fromCmoHelper_dup_mask_MPORT_6_addr = 2'h3;
  assign buffer_fromCmoHelper_dup_mask_MPORT_6_data = buffer_fromCmoHelper[buffer_fromCmoHelper_dup_mask_MPORT_6_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_fromCmoHelper_dup_mask_MPORT_7_en = 1'h1;
  assign buffer_fromCmoHelper_dup_mask_MPORT_7_addr = 2'h3;
  assign buffer_fromCmoHelper_dup_mask_MPORT_7_data = buffer_fromCmoHelper[buffer_fromCmoHelper_dup_mask_MPORT_7_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_fromCmoHelper_req_deps_MPORT_en = 1'h1;
  assign buffer_fromCmoHelper_req_deps_MPORT_addr = 2'h0;
  assign buffer_fromCmoHelper_req_deps_MPORT_data = buffer_fromCmoHelper[buffer_fromCmoHelper_req_deps_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_fromCmoHelper_req_deps_MPORT_1_en = 1'h1;
  assign buffer_fromCmoHelper_req_deps_MPORT_1_addr = 2'h1;
  assign buffer_fromCmoHelper_req_deps_MPORT_1_data = buffer_fromCmoHelper[buffer_fromCmoHelper_req_deps_MPORT_1_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_fromCmoHelper_req_deps_MPORT_2_en = 1'h1;
  assign buffer_fromCmoHelper_req_deps_MPORT_2_addr = 2'h2;
  assign buffer_fromCmoHelper_req_deps_MPORT_2_data = buffer_fromCmoHelper[buffer_fromCmoHelper_req_deps_MPORT_2_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_fromCmoHelper_req_deps_MPORT_3_en = 1'h1;
  assign buffer_fromCmoHelper_req_deps_MPORT_3_addr = 2'h3;
  assign buffer_fromCmoHelper_req_deps_MPORT_3_data = buffer_fromCmoHelper[buffer_fromCmoHelper_req_deps_MPORT_3_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_fromCmoHelper_MPORT_data = 1'h0;
  assign buffer_fromCmoHelper_MPORT_addr = _insert_idx_T_1[0] ? 2'h0 : _insert_idx_T_7;
  assign buffer_fromCmoHelper_MPORT_mask = 1'h1;
  assign buffer_fromCmoHelper_MPORT_en = _alloc_T_1 & _alloc_T_4;
  assign buffer_needProbeAckData_issue_arb_io_in_0_bits_MPORT_en = 1'h1;
  assign buffer_needProbeAckData_issue_arb_io_in_0_bits_MPORT_addr = 2'h0;
  assign buffer_needProbeAckData_issue_arb_io_in_0_bits_MPORT_data =
    buffer_needProbeAckData[buffer_needProbeAckData_issue_arb_io_in_0_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_needProbeAckData_issue_arb_io_in_1_bits_MPORT_en = 1'h1;
  assign buffer_needProbeAckData_issue_arb_io_in_1_bits_MPORT_addr = 2'h1;
  assign buffer_needProbeAckData_issue_arb_io_in_1_bits_MPORT_data =
    buffer_needProbeAckData[buffer_needProbeAckData_issue_arb_io_in_1_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_needProbeAckData_issue_arb_io_in_2_bits_MPORT_en = 1'h1;
  assign buffer_needProbeAckData_issue_arb_io_in_2_bits_MPORT_addr = 2'h2;
  assign buffer_needProbeAckData_issue_arb_io_in_2_bits_MPORT_data =
    buffer_needProbeAckData[buffer_needProbeAckData_issue_arb_io_in_2_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_needProbeAckData_issue_arb_io_in_3_bits_MPORT_en = 1'h1;
  assign buffer_needProbeAckData_issue_arb_io_in_3_bits_MPORT_addr = 2'h3;
  assign buffer_needProbeAckData_issue_arb_io_in_3_bits_MPORT_data =
    buffer_needProbeAckData[buffer_needProbeAckData_issue_arb_io_in_3_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_needProbeAckData_dup_mask_MPORT_en = 1'h1;
  assign buffer_needProbeAckData_dup_mask_MPORT_addr = 2'h0;
  assign buffer_needProbeAckData_dup_mask_MPORT_data =
    buffer_needProbeAckData[buffer_needProbeAckData_dup_mask_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_needProbeAckData_dup_mask_MPORT_1_en = 1'h1;
  assign buffer_needProbeAckData_dup_mask_MPORT_1_addr = 2'h0;
  assign buffer_needProbeAckData_dup_mask_MPORT_1_data =
    buffer_needProbeAckData[buffer_needProbeAckData_dup_mask_MPORT_1_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_needProbeAckData_dup_mask_MPORT_2_en = 1'h1;
  assign buffer_needProbeAckData_dup_mask_MPORT_2_addr = 2'h1;
  assign buffer_needProbeAckData_dup_mask_MPORT_2_data =
    buffer_needProbeAckData[buffer_needProbeAckData_dup_mask_MPORT_2_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_needProbeAckData_dup_mask_MPORT_3_en = 1'h1;
  assign buffer_needProbeAckData_dup_mask_MPORT_3_addr = 2'h1;
  assign buffer_needProbeAckData_dup_mask_MPORT_3_data =
    buffer_needProbeAckData[buffer_needProbeAckData_dup_mask_MPORT_3_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_needProbeAckData_dup_mask_MPORT_4_en = 1'h1;
  assign buffer_needProbeAckData_dup_mask_MPORT_4_addr = 2'h2;
  assign buffer_needProbeAckData_dup_mask_MPORT_4_data =
    buffer_needProbeAckData[buffer_needProbeAckData_dup_mask_MPORT_4_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_needProbeAckData_dup_mask_MPORT_5_en = 1'h1;
  assign buffer_needProbeAckData_dup_mask_MPORT_5_addr = 2'h2;
  assign buffer_needProbeAckData_dup_mask_MPORT_5_data =
    buffer_needProbeAckData[buffer_needProbeAckData_dup_mask_MPORT_5_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_needProbeAckData_dup_mask_MPORT_6_en = 1'h1;
  assign buffer_needProbeAckData_dup_mask_MPORT_6_addr = 2'h3;
  assign buffer_needProbeAckData_dup_mask_MPORT_6_data =
    buffer_needProbeAckData[buffer_needProbeAckData_dup_mask_MPORT_6_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_needProbeAckData_dup_mask_MPORT_7_en = 1'h1;
  assign buffer_needProbeAckData_dup_mask_MPORT_7_addr = 2'h3;
  assign buffer_needProbeAckData_dup_mask_MPORT_7_data =
    buffer_needProbeAckData[buffer_needProbeAckData_dup_mask_MPORT_7_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_needProbeAckData_req_deps_MPORT_en = 1'h1;
  assign buffer_needProbeAckData_req_deps_MPORT_addr = 2'h0;
  assign buffer_needProbeAckData_req_deps_MPORT_data =
    buffer_needProbeAckData[buffer_needProbeAckData_req_deps_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_needProbeAckData_req_deps_MPORT_1_en = 1'h1;
  assign buffer_needProbeAckData_req_deps_MPORT_1_addr = 2'h1;
  assign buffer_needProbeAckData_req_deps_MPORT_1_data =
    buffer_needProbeAckData[buffer_needProbeAckData_req_deps_MPORT_1_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_needProbeAckData_req_deps_MPORT_2_en = 1'h1;
  assign buffer_needProbeAckData_req_deps_MPORT_2_addr = 2'h2;
  assign buffer_needProbeAckData_req_deps_MPORT_2_data =
    buffer_needProbeAckData[buffer_needProbeAckData_req_deps_MPORT_2_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_needProbeAckData_req_deps_MPORT_3_en = 1'h1;
  assign buffer_needProbeAckData_req_deps_MPORT_3_addr = 2'h3;
  assign buffer_needProbeAckData_req_deps_MPORT_3_data =
    buffer_needProbeAckData[buffer_needProbeAckData_req_deps_MPORT_3_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_needProbeAckData_MPORT_data = 1'h0;
  assign buffer_needProbeAckData_MPORT_addr = _insert_idx_T_1[0] ? 2'h0 : _insert_idx_T_7;
  assign buffer_needProbeAckData_MPORT_mask = 1'h1;
  assign buffer_needProbeAckData_MPORT_en = _alloc_T_1 & _alloc_T_4;
  assign buffer_reqSource_issue_arb_io_in_0_bits_MPORT_en = 1'h1;
  assign buffer_reqSource_issue_arb_io_in_0_bits_MPORT_addr = 2'h0;
  assign buffer_reqSource_issue_arb_io_in_0_bits_MPORT_data =
    buffer_reqSource[buffer_reqSource_issue_arb_io_in_0_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_reqSource_issue_arb_io_in_1_bits_MPORT_en = 1'h1;
  assign buffer_reqSource_issue_arb_io_in_1_bits_MPORT_addr = 2'h1;
  assign buffer_reqSource_issue_arb_io_in_1_bits_MPORT_data =
    buffer_reqSource[buffer_reqSource_issue_arb_io_in_1_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_reqSource_issue_arb_io_in_2_bits_MPORT_en = 1'h1;
  assign buffer_reqSource_issue_arb_io_in_2_bits_MPORT_addr = 2'h2;
  assign buffer_reqSource_issue_arb_io_in_2_bits_MPORT_data =
    buffer_reqSource[buffer_reqSource_issue_arb_io_in_2_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_reqSource_issue_arb_io_in_3_bits_MPORT_en = 1'h1;
  assign buffer_reqSource_issue_arb_io_in_3_bits_MPORT_addr = 2'h3;
  assign buffer_reqSource_issue_arb_io_in_3_bits_MPORT_data =
    buffer_reqSource[buffer_reqSource_issue_arb_io_in_3_bits_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_reqSource_dup_mask_MPORT_en = 1'h1;
  assign buffer_reqSource_dup_mask_MPORT_addr = 2'h0;
  assign buffer_reqSource_dup_mask_MPORT_data = buffer_reqSource[buffer_reqSource_dup_mask_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_reqSource_dup_mask_MPORT_1_en = 1'h1;
  assign buffer_reqSource_dup_mask_MPORT_1_addr = 2'h0;
  assign buffer_reqSource_dup_mask_MPORT_1_data = buffer_reqSource[buffer_reqSource_dup_mask_MPORT_1_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_reqSource_dup_mask_MPORT_2_en = 1'h1;
  assign buffer_reqSource_dup_mask_MPORT_2_addr = 2'h1;
  assign buffer_reqSource_dup_mask_MPORT_2_data = buffer_reqSource[buffer_reqSource_dup_mask_MPORT_2_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_reqSource_dup_mask_MPORT_3_en = 1'h1;
  assign buffer_reqSource_dup_mask_MPORT_3_addr = 2'h1;
  assign buffer_reqSource_dup_mask_MPORT_3_data = buffer_reqSource[buffer_reqSource_dup_mask_MPORT_3_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_reqSource_dup_mask_MPORT_4_en = 1'h1;
  assign buffer_reqSource_dup_mask_MPORT_4_addr = 2'h2;
  assign buffer_reqSource_dup_mask_MPORT_4_data = buffer_reqSource[buffer_reqSource_dup_mask_MPORT_4_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_reqSource_dup_mask_MPORT_5_en = 1'h1;
  assign buffer_reqSource_dup_mask_MPORT_5_addr = 2'h2;
  assign buffer_reqSource_dup_mask_MPORT_5_data = buffer_reqSource[buffer_reqSource_dup_mask_MPORT_5_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_reqSource_dup_mask_MPORT_6_en = 1'h1;
  assign buffer_reqSource_dup_mask_MPORT_6_addr = 2'h3;
  assign buffer_reqSource_dup_mask_MPORT_6_data = buffer_reqSource[buffer_reqSource_dup_mask_MPORT_6_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_reqSource_dup_mask_MPORT_7_en = 1'h1;
  assign buffer_reqSource_dup_mask_MPORT_7_addr = 2'h3;
  assign buffer_reqSource_dup_mask_MPORT_7_data = buffer_reqSource[buffer_reqSource_dup_mask_MPORT_7_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_reqSource_req_deps_MPORT_en = 1'h1;
  assign buffer_reqSource_req_deps_MPORT_addr = 2'h0;
  assign buffer_reqSource_req_deps_MPORT_data = buffer_reqSource[buffer_reqSource_req_deps_MPORT_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_reqSource_req_deps_MPORT_1_en = 1'h1;
  assign buffer_reqSource_req_deps_MPORT_1_addr = 2'h1;
  assign buffer_reqSource_req_deps_MPORT_1_data = buffer_reqSource[buffer_reqSource_req_deps_MPORT_1_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_reqSource_req_deps_MPORT_2_en = 1'h1;
  assign buffer_reqSource_req_deps_MPORT_2_addr = 2'h2;
  assign buffer_reqSource_req_deps_MPORT_2_data = buffer_reqSource[buffer_reqSource_req_deps_MPORT_2_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_reqSource_req_deps_MPORT_3_en = 1'h1;
  assign buffer_reqSource_req_deps_MPORT_3_addr = 2'h3;
  assign buffer_reqSource_req_deps_MPORT_3_data = buffer_reqSource[buffer_reqSource_req_deps_MPORT_3_addr]; // @[RequestBuffer.scala 17:19]
  assign buffer_reqSource_MPORT_data = 4'h0;
  assign buffer_reqSource_MPORT_addr = _insert_idx_T_1[0] ? 2'h0 : _insert_idx_T_7;
  assign buffer_reqSource_MPORT_mask = 1'h1;
  assign buffer_reqSource_MPORT_en = _alloc_T_1 & _alloc_T_4;
  assign io_in_ready = ~full; // @[RequestBuffer.scala 46:18]
  assign io_out_valid = no_ready_entry & io_in_valid & ~full | output_pipe_io_deq_valid; // @[RequestBuffer.scala 44:70]
  assign io_out_bits_channel = no_ready_entry ? 3'h1 : output_pipe_io_deq_bits_channel; // @[RequestBuffer.scala 42:21]
  assign io_out_bits_opcode = no_ready_entry ? io_in_bits_opcode : output_pipe_io_deq_bits_opcode; // @[RequestBuffer.scala 42:21]
  assign io_out_bits_param = no_ready_entry ? io_in_bits_param : output_pipe_io_deq_bits_param; // @[RequestBuffer.scala 42:21]
  assign io_out_bits_size = no_ready_entry ? io_in_bits_size : output_pipe_io_deq_bits_size; // @[RequestBuffer.scala 42:21]
  assign io_out_bits_source = no_ready_entry ? io_in_bits_source : output_pipe_io_deq_bits_source; // @[RequestBuffer.scala 42:21]
  assign io_out_bits_set = no_ready_entry ? io_in_bits_set : output_pipe_io_deq_bits_set; // @[RequestBuffer.scala 42:21]
  assign io_out_bits_tag = no_ready_entry ? io_in_bits_tag : output_pipe_io_deq_bits_tag; // @[RequestBuffer.scala 42:21]
  assign io_out_bits_off = no_ready_entry ? io_in_bits_off : output_pipe_io_deq_bits_off; // @[RequestBuffer.scala 42:21]
  assign io_out_bits_mask = no_ready_entry ? io_in_bits_mask : output_pipe_io_deq_bits_mask; // @[RequestBuffer.scala 42:21]
  assign io_out_bits_bufIdx = no_ready_entry ? io_in_bits_bufIdx : output_pipe_io_deq_bits_bufIdx; // @[RequestBuffer.scala 42:21]
  assign io_out_bits_preferCache = no_ready_entry | output_pipe_io_deq_bits_preferCache; // @[RequestBuffer.scala 42:21]
  assign io_out_bits_dirty = no_ready_entry ? 1'h0 : output_pipe_io_deq_bits_dirty; // @[RequestBuffer.scala 42:21]
  assign io_out_bits_fromProbeHelper = no_ready_entry ? 1'h0 : output_pipe_io_deq_bits_fromProbeHelper; // @[RequestBuffer.scala 42:21]
  assign io_out_bits_fromCmoHelper = no_ready_entry ? 1'h0 : output_pipe_io_deq_bits_fromCmoHelper; // @[RequestBuffer.scala 42:21]
  assign io_out_bits_needProbeAckData = no_ready_entry ? 1'h0 : output_pipe_io_deq_bits_needProbeAckData; // @[RequestBuffer.scala 42:21]
  assign io_out_bits_reqSource = no_ready_entry ? 4'h0 : output_pipe_io_deq_bits_reqSource; // @[RequestBuffer.scala 42:21]
  assign issue_arb_clock = clock;
  assign issue_arb_reset = reset;
  assign issue_arb_io_in_0_valid = valids_0 & rdys_0; // @[RequestBuffer.scala 31:43]
  assign issue_arb_io_in_0_bits_channel = buffer_channel_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_0_bits_opcode = buffer_opcode_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_0_bits_param = buffer_param_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_0_bits_size = buffer_size_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_0_bits_source = buffer_source_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_0_bits_set = buffer_set_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_0_bits_tag = buffer_tag_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_0_bits_off = buffer_off_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_0_bits_mask = buffer_mask_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_0_bits_bufIdx = buffer_bufIdx_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_0_bits_preferCache = buffer_preferCache_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_0_bits_dirty = buffer_dirty_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_0_bits_fromProbeHelper = buffer_fromProbeHelper_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_0_bits_fromCmoHelper = buffer_fromCmoHelper_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_0_bits_needProbeAckData = buffer_needProbeAckData_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_0_bits_reqSource = buffer_reqSource_issue_arb_io_in_0_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_1_valid = valids_1 & rdys_1; // @[RequestBuffer.scala 31:43]
  assign issue_arb_io_in_1_bits_channel = buffer_channel_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_1_bits_opcode = buffer_opcode_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_1_bits_param = buffer_param_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_1_bits_size = buffer_size_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_1_bits_source = buffer_source_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_1_bits_set = buffer_set_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_1_bits_tag = buffer_tag_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_1_bits_off = buffer_off_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_1_bits_mask = buffer_mask_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_1_bits_bufIdx = buffer_bufIdx_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_1_bits_preferCache = buffer_preferCache_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_1_bits_dirty = buffer_dirty_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_1_bits_fromProbeHelper = buffer_fromProbeHelper_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_1_bits_fromCmoHelper = buffer_fromCmoHelper_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_1_bits_needProbeAckData = buffer_needProbeAckData_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_1_bits_reqSource = buffer_reqSource_issue_arb_io_in_1_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_2_valid = valids_2 & rdys_2; // @[RequestBuffer.scala 31:43]
  assign issue_arb_io_in_2_bits_channel = buffer_channel_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_2_bits_opcode = buffer_opcode_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_2_bits_param = buffer_param_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_2_bits_size = buffer_size_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_2_bits_source = buffer_source_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_2_bits_set = buffer_set_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_2_bits_tag = buffer_tag_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_2_bits_off = buffer_off_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_2_bits_mask = buffer_mask_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_2_bits_bufIdx = buffer_bufIdx_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_2_bits_preferCache = buffer_preferCache_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_2_bits_dirty = buffer_dirty_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_2_bits_fromProbeHelper = buffer_fromProbeHelper_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_2_bits_fromCmoHelper = buffer_fromCmoHelper_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_2_bits_needProbeAckData = buffer_needProbeAckData_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_2_bits_reqSource = buffer_reqSource_issue_arb_io_in_2_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_3_valid = valids_3 & rdys_3; // @[RequestBuffer.scala 31:43]
  assign issue_arb_io_in_3_bits_channel = buffer_channel_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_3_bits_opcode = buffer_opcode_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_3_bits_param = buffer_param_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_3_bits_size = buffer_size_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_3_bits_source = buffer_source_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_3_bits_set = buffer_set_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_3_bits_tag = buffer_tag_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_3_bits_off = buffer_off_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_3_bits_mask = buffer_mask_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_3_bits_bufIdx = buffer_bufIdx_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_3_bits_preferCache = buffer_preferCache_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_3_bits_dirty = buffer_dirty_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_3_bits_fromProbeHelper = buffer_fromProbeHelper_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_3_bits_fromCmoHelper = buffer_fromCmoHelper_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_3_bits_needProbeAckData = buffer_needProbeAckData_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_in_3_bits_reqSource = buffer_reqSource_issue_arb_io_in_3_bits_MPORT_data; // @[RequestBuffer.scala 32:29]
  assign issue_arb_io_out_ready = output_pipe_io_enq_ready; // @[Decoupled.scala 365:17]
  assign output_pipe_clock = clock;
  assign output_pipe_reset = reset;
  assign output_pipe_io_enq_valid = issue_arb_io_out_valid; // @[Decoupled.scala 363:22]
  assign output_pipe_io_enq_bits_channel = issue_arb_io_out_bits_channel; // @[Decoupled.scala 364:21]
  assign output_pipe_io_enq_bits_opcode = issue_arb_io_out_bits_opcode; // @[Decoupled.scala 364:21]
  assign output_pipe_io_enq_bits_param = issue_arb_io_out_bits_param; // @[Decoupled.scala 364:21]
  assign output_pipe_io_enq_bits_size = issue_arb_io_out_bits_size; // @[Decoupled.scala 364:21]
  assign output_pipe_io_enq_bits_source = issue_arb_io_out_bits_source; // @[Decoupled.scala 364:21]
  assign output_pipe_io_enq_bits_set = issue_arb_io_out_bits_set; // @[Decoupled.scala 364:21]
  assign output_pipe_io_enq_bits_tag = issue_arb_io_out_bits_tag; // @[Decoupled.scala 364:21]
  assign output_pipe_io_enq_bits_off = issue_arb_io_out_bits_off; // @[Decoupled.scala 364:21]
  assign output_pipe_io_enq_bits_mask = issue_arb_io_out_bits_mask; // @[Decoupled.scala 364:21]
  assign output_pipe_io_enq_bits_bufIdx = issue_arb_io_out_bits_bufIdx; // @[Decoupled.scala 364:21]
  assign output_pipe_io_enq_bits_preferCache = issue_arb_io_out_bits_preferCache; // @[Decoupled.scala 364:21]
  assign output_pipe_io_enq_bits_dirty = issue_arb_io_out_bits_dirty; // @[Decoupled.scala 364:21]
  assign output_pipe_io_enq_bits_fromProbeHelper = issue_arb_io_out_bits_fromProbeHelper; // @[Decoupled.scala 364:21]
  assign output_pipe_io_enq_bits_fromCmoHelper = issue_arb_io_out_bits_fromCmoHelper; // @[Decoupled.scala 364:21]
  assign output_pipe_io_enq_bits_needProbeAckData = issue_arb_io_out_bits_needProbeAckData; // @[Decoupled.scala 364:21]
  assign output_pipe_io_enq_bits_reqSource = issue_arb_io_out_bits_reqSource; // @[Decoupled.scala 364:21]
  assign output_pipe_io_deq_ready = io_out_ready; // @[RequestBuffer.scala 38:21]
  always @(posedge clock) begin
    if (buffer_channel_MPORT_en & buffer_channel_MPORT_mask) begin
      buffer_channel[buffer_channel_MPORT_addr] <= buffer_channel_MPORT_data; // @[RequestBuffer.scala 17:19]
    end
    if (buffer_opcode_MPORT_en & buffer_opcode_MPORT_mask) begin
      buffer_opcode[buffer_opcode_MPORT_addr] <= buffer_opcode_MPORT_data; // @[RequestBuffer.scala 17:19]
    end
    if (buffer_param_MPORT_en & buffer_param_MPORT_mask) begin
      buffer_param[buffer_param_MPORT_addr] <= buffer_param_MPORT_data; // @[RequestBuffer.scala 17:19]
    end
    if (buffer_size_MPORT_en & buffer_size_MPORT_mask) begin
      buffer_size[buffer_size_MPORT_addr] <= buffer_size_MPORT_data; // @[RequestBuffer.scala 17:19]
    end
    if (buffer_source_MPORT_en & buffer_source_MPORT_mask) begin
      buffer_source[buffer_source_MPORT_addr] <= buffer_source_MPORT_data; // @[RequestBuffer.scala 17:19]
    end
    if (buffer_set_MPORT_en & buffer_set_MPORT_mask) begin
      buffer_set[buffer_set_MPORT_addr] <= buffer_set_MPORT_data; // @[RequestBuffer.scala 17:19]
    end
    if (buffer_tag_MPORT_en & buffer_tag_MPORT_mask) begin
      buffer_tag[buffer_tag_MPORT_addr] <= buffer_tag_MPORT_data; // @[RequestBuffer.scala 17:19]
    end
    if (buffer_off_MPORT_en & buffer_off_MPORT_mask) begin
      buffer_off[buffer_off_MPORT_addr] <= buffer_off_MPORT_data; // @[RequestBuffer.scala 17:19]
    end
    if (buffer_mask_MPORT_en & buffer_mask_MPORT_mask) begin
      buffer_mask[buffer_mask_MPORT_addr] <= buffer_mask_MPORT_data; // @[RequestBuffer.scala 17:19]
    end
    if (buffer_bufIdx_MPORT_en & buffer_bufIdx_MPORT_mask) begin
      buffer_bufIdx[buffer_bufIdx_MPORT_addr] <= buffer_bufIdx_MPORT_data; // @[RequestBuffer.scala 17:19]
    end
    if (buffer_preferCache_MPORT_en & buffer_preferCache_MPORT_mask) begin
      buffer_preferCache[buffer_preferCache_MPORT_addr] <= buffer_preferCache_MPORT_data; // @[RequestBuffer.scala 17:19]
    end
    if (buffer_dirty_MPORT_en & buffer_dirty_MPORT_mask) begin
      buffer_dirty[buffer_dirty_MPORT_addr] <= buffer_dirty_MPORT_data; // @[RequestBuffer.scala 17:19]
    end
    if (buffer_fromProbeHelper_MPORT_en & buffer_fromProbeHelper_MPORT_mask) begin
      buffer_fromProbeHelper[buffer_fromProbeHelper_MPORT_addr] <= buffer_fromProbeHelper_MPORT_data; // @[RequestBuffer.scala 17:19]
    end
    if (buffer_fromCmoHelper_MPORT_en & buffer_fromCmoHelper_MPORT_mask) begin
      buffer_fromCmoHelper[buffer_fromCmoHelper_MPORT_addr] <= buffer_fromCmoHelper_MPORT_data; // @[RequestBuffer.scala 17:19]
    end
    if (buffer_needProbeAckData_MPORT_en & buffer_needProbeAckData_MPORT_mask) begin
      buffer_needProbeAckData[buffer_needProbeAckData_MPORT_addr] <= buffer_needProbeAckData_MPORT_data; // @[RequestBuffer.scala 17:19]
    end
    if (buffer_reqSource_MPORT_en & buffer_reqSource_MPORT_mask) begin
      buffer_reqSource[buffer_reqSource_MPORT_addr] <= buffer_reqSource_MPORT_data; // @[RequestBuffer.scala 17:19]
    end
    if (valids_0) begin // @[RequestBuffer.scala 80:20]
      wait_table_0 <= wait_next; // @[RequestBuffer.scala 87:21]
    end else if (alloc) begin // @[RequestBuffer.scala 69:14]
      if (2'h0 == insert_idx) begin // @[RequestBuffer.scala 72:28]
        wait_table_0 <= _wait_table_T; // @[RequestBuffer.scala 72:28]
      end
    end
    if (valids_1) begin // @[RequestBuffer.scala 80:20]
      wait_table_1 <= wait_next_1; // @[RequestBuffer.scala 87:21]
    end else if (alloc) begin // @[RequestBuffer.scala 69:14]
      if (2'h1 == insert_idx) begin // @[RequestBuffer.scala 72:28]
        wait_table_1 <= _wait_table_T; // @[RequestBuffer.scala 72:28]
      end
    end
    if (valids_2) begin // @[RequestBuffer.scala 80:20]
      wait_table_2 <= wait_next_2; // @[RequestBuffer.scala 87:21]
    end else if (alloc) begin // @[RequestBuffer.scala 69:14]
      if (2'h2 == insert_idx) begin // @[RequestBuffer.scala 72:28]
        wait_table_2 <= _wait_table_T; // @[RequestBuffer.scala 72:28]
      end
    end
    if (valids_3) begin // @[RequestBuffer.scala 80:20]
      wait_table_3 <= wait_next_3; // @[RequestBuffer.scala 87:21]
    end else if (alloc) begin // @[RequestBuffer.scala 69:14]
      if (2'h3 == insert_idx) begin // @[RequestBuffer.scala 72:28]
        wait_table_3 <= _wait_table_T; // @[RequestBuffer.scala 72:28]
      end
    end
    if (_T_34) begin // @[RequestBuffer.scala 90:34]
      if (2'h0 == issue_arb_io_chosen) begin // @[RequestBuffer.scala 91:47]
        buffer_dep_mask_0_0 <= 1'h0; // @[RequestBuffer.scala 91:47]
      end else begin
        buffer_dep_mask_0_0 <= _GEN_61;
      end
    end else begin
      buffer_dep_mask_0_0 <= _GEN_61;
    end
    if (_T_34) begin // @[RequestBuffer.scala 90:34]
      if (2'h1 == issue_arb_io_chosen) begin // @[RequestBuffer.scala 91:47]
        buffer_dep_mask_0_1 <= 1'h0; // @[RequestBuffer.scala 91:47]
      end else begin
        buffer_dep_mask_0_1 <= _GEN_65;
      end
    end else begin
      buffer_dep_mask_0_1 <= _GEN_65;
    end
    if (_T_34) begin // @[RequestBuffer.scala 90:34]
      if (2'h2 == issue_arb_io_chosen) begin // @[RequestBuffer.scala 91:47]
        buffer_dep_mask_0_2 <= 1'h0; // @[RequestBuffer.scala 91:47]
      end else begin
        buffer_dep_mask_0_2 <= _GEN_69;
      end
    end else begin
      buffer_dep_mask_0_2 <= _GEN_69;
    end
    if (_T_34) begin // @[RequestBuffer.scala 90:34]
      if (2'h3 == issue_arb_io_chosen) begin // @[RequestBuffer.scala 91:47]
        buffer_dep_mask_0_3 <= 1'h0; // @[RequestBuffer.scala 91:47]
      end else begin
        buffer_dep_mask_0_3 <= _GEN_73;
      end
    end else begin
      buffer_dep_mask_0_3 <= _GEN_73;
    end
    if (_T_34) begin // @[RequestBuffer.scala 90:34]
      if (2'h0 == issue_arb_io_chosen) begin // @[RequestBuffer.scala 91:47]
        buffer_dep_mask_1_0 <= 1'h0; // @[RequestBuffer.scala 91:47]
      end else begin
        buffer_dep_mask_1_0 <= _GEN_62;
      end
    end else begin
      buffer_dep_mask_1_0 <= _GEN_62;
    end
    if (_T_34) begin // @[RequestBuffer.scala 90:34]
      if (2'h1 == issue_arb_io_chosen) begin // @[RequestBuffer.scala 91:47]
        buffer_dep_mask_1_1 <= 1'h0; // @[RequestBuffer.scala 91:47]
      end else begin
        buffer_dep_mask_1_1 <= _GEN_66;
      end
    end else begin
      buffer_dep_mask_1_1 <= _GEN_66;
    end
    if (_T_34) begin // @[RequestBuffer.scala 90:34]
      if (2'h2 == issue_arb_io_chosen) begin // @[RequestBuffer.scala 91:47]
        buffer_dep_mask_1_2 <= 1'h0; // @[RequestBuffer.scala 91:47]
      end else begin
        buffer_dep_mask_1_2 <= _GEN_70;
      end
    end else begin
      buffer_dep_mask_1_2 <= _GEN_70;
    end
    if (_T_34) begin // @[RequestBuffer.scala 90:34]
      if (2'h3 == issue_arb_io_chosen) begin // @[RequestBuffer.scala 91:47]
        buffer_dep_mask_1_3 <= 1'h0; // @[RequestBuffer.scala 91:47]
      end else begin
        buffer_dep_mask_1_3 <= _GEN_74;
      end
    end else begin
      buffer_dep_mask_1_3 <= _GEN_74;
    end
    if (_T_34) begin // @[RequestBuffer.scala 90:34]
      if (2'h0 == issue_arb_io_chosen) begin // @[RequestBuffer.scala 91:47]
        buffer_dep_mask_2_0 <= 1'h0; // @[RequestBuffer.scala 91:47]
      end else begin
        buffer_dep_mask_2_0 <= _GEN_63;
      end
    end else begin
      buffer_dep_mask_2_0 <= _GEN_63;
    end
    if (_T_34) begin // @[RequestBuffer.scala 90:34]
      if (2'h1 == issue_arb_io_chosen) begin // @[RequestBuffer.scala 91:47]
        buffer_dep_mask_2_1 <= 1'h0; // @[RequestBuffer.scala 91:47]
      end else begin
        buffer_dep_mask_2_1 <= _GEN_67;
      end
    end else begin
      buffer_dep_mask_2_1 <= _GEN_67;
    end
    if (_T_34) begin // @[RequestBuffer.scala 90:34]
      if (2'h2 == issue_arb_io_chosen) begin // @[RequestBuffer.scala 91:47]
        buffer_dep_mask_2_2 <= 1'h0; // @[RequestBuffer.scala 91:47]
      end else begin
        buffer_dep_mask_2_2 <= _GEN_71;
      end
    end else begin
      buffer_dep_mask_2_2 <= _GEN_71;
    end
    if (_T_34) begin // @[RequestBuffer.scala 90:34]
      if (2'h3 == issue_arb_io_chosen) begin // @[RequestBuffer.scala 91:47]
        buffer_dep_mask_2_3 <= 1'h0; // @[RequestBuffer.scala 91:47]
      end else begin
        buffer_dep_mask_2_3 <= _GEN_75;
      end
    end else begin
      buffer_dep_mask_2_3 <= _GEN_75;
    end
    if (_T_34) begin // @[RequestBuffer.scala 90:34]
      if (2'h0 == issue_arb_io_chosen) begin // @[RequestBuffer.scala 91:47]
        buffer_dep_mask_3_0 <= 1'h0; // @[RequestBuffer.scala 91:47]
      end else begin
        buffer_dep_mask_3_0 <= _GEN_64;
      end
    end else begin
      buffer_dep_mask_3_0 <= _GEN_64;
    end
    if (_T_34) begin // @[RequestBuffer.scala 90:34]
      if (2'h1 == issue_arb_io_chosen) begin // @[RequestBuffer.scala 91:47]
        buffer_dep_mask_3_1 <= 1'h0; // @[RequestBuffer.scala 91:47]
      end else begin
        buffer_dep_mask_3_1 <= _GEN_68;
      end
    end else begin
      buffer_dep_mask_3_1 <= _GEN_68;
    end
    if (_T_34) begin // @[RequestBuffer.scala 90:34]
      if (2'h2 == issue_arb_io_chosen) begin // @[RequestBuffer.scala 91:47]
        buffer_dep_mask_3_2 <= 1'h0; // @[RequestBuffer.scala 91:47]
      end else begin
        buffer_dep_mask_3_2 <= _GEN_72;
      end
    end else begin
      buffer_dep_mask_3_2 <= _GEN_72;
    end
    if (_T_34) begin // @[RequestBuffer.scala 90:34]
      if (2'h3 == issue_arb_io_chosen) begin // @[RequestBuffer.scala 91:47]
        buffer_dep_mask_3_3 <= 1'h0; // @[RequestBuffer.scala 91:47]
      end else begin
        buffer_dep_mask_3_3 <= _GEN_76;
      end
    end else begin
      buffer_dep_mask_3_3 <= _GEN_76;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 69:14]
      valids_0 <= 1'h0;
    end else if (alloc) begin // @[RequestBuffer.scala 33:36]
      valids_0 <= _GEN_4; // @[RequestBuffer.scala 34:17]
    end else if (_T) begin // @[RequestBuffer.scala 18:23]
      valids_0 <= 1'h0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 69:14]
      valids_1 <= 1'h0;
    end else if (alloc) begin // @[RequestBuffer.scala 33:36]
      valids_1 <= _GEN_5; // @[RequestBuffer.scala 34:17]
    end else if (_T_1) begin // @[RequestBuffer.scala 18:23]
      valids_1 <= 1'h0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 69:14]
      valids_2 <= 1'h0;
    end else if (alloc) begin // @[RequestBuffer.scala 33:36]
      valids_2 <= _GEN_6; // @[RequestBuffer.scala 34:17]
    end else if (_T_2) begin // @[RequestBuffer.scala 18:23]
      valids_2 <= 1'h0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 69:14]
      valids_3 <= 1'h0;
    end else if (alloc) begin // @[RequestBuffer.scala 33:36]
      valids_3 <= _GEN_7; // @[RequestBuffer.scala 34:17]
    end else if (_T_3) begin // @[RequestBuffer.scala 18:23]
      valids_3 <= 1'h0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 80:20]
      rdys_0 <= 1'h0; // @[RequestBuffer.scala 88:15]
    end else if (valids_0) begin // @[RequestBuffer.scala 69:14]
      rdys_0 <= ~(|wait_next) & ~(|_rdys_0_T_2); // @[RequestBuffer.scala 27:21 75:{22,22}]
    end else if (alloc) begin // @[RequestBuffer.scala 27:21]
      if (2'h0 == insert_idx) begin
        rdys_0 <= ~conflict & ~(|_rdys_T_1);
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 80:20]
      rdys_1 <= 1'h0; // @[RequestBuffer.scala 88:15]
    end else if (valids_1) begin // @[RequestBuffer.scala 69:14]
      rdys_1 <= ~(|wait_next_1) & ~(|_rdys_1_T_2); // @[RequestBuffer.scala 27:21 75:{22,22}]
    end else if (alloc) begin // @[RequestBuffer.scala 27:21]
      if (2'h1 == insert_idx) begin
        rdys_1 <= ~conflict & ~(|_rdys_T_1);
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 80:20]
      rdys_2 <= 1'h0; // @[RequestBuffer.scala 88:15]
    end else if (valids_2) begin // @[RequestBuffer.scala 69:14]
      rdys_2 <= ~(|wait_next_2) & ~(|_rdys_2_T_2); // @[RequestBuffer.scala 27:21 75:{22,22}]
    end else if (alloc) begin // @[RequestBuffer.scala 27:21]
      if (2'h2 == insert_idx) begin
        rdys_2 <= ~conflict & ~(|_rdys_T_1);
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RequestBuffer.scala 80:20]
      rdys_3 <= 1'h0; // @[RequestBuffer.scala 88:15]
    end else if (valids_3) begin // @[RequestBuffer.scala 69:14]
      rdys_3 <= ~(|wait_next_3) & ~(|_rdys_3_T_2); // @[RequestBuffer.scala 27:21 75:{22,22}]
    end else if (alloc) begin // @[RequestBuffer.scala 27:21]
      if (2'h3 == insert_idx) begin
        rdys_3 <= ~conflict & ~(|_rdys_T_1);
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
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    buffer_channel[initvar] = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    buffer_opcode[initvar] = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    buffer_param[initvar] = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    buffer_size[initvar] = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    buffer_source[initvar] = _RAND_4[9:0];
  _RAND_5 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    buffer_set[initvar] = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    buffer_tag[initvar] = _RAND_6[21:0];
  _RAND_7 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    buffer_off[initvar] = _RAND_7[5:0];
  _RAND_8 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    buffer_mask[initvar] = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    buffer_bufIdx[initvar] = _RAND_9[2:0];
  _RAND_10 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    buffer_preferCache[initvar] = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    buffer_dirty[initvar] = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    buffer_fromProbeHelper[initvar] = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    buffer_fromCmoHelper[initvar] = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    buffer_needProbeAckData[initvar] = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    buffer_reqSource[initvar] = _RAND_15[3:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  valids_0 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  valids_1 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  valids_2 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  valids_3 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  wait_table_0 = _RAND_20[13:0];
  _RAND_21 = {1{`RANDOM}};
  wait_table_1 = _RAND_21[13:0];
  _RAND_22 = {1{`RANDOM}};
  wait_table_2 = _RAND_22[13:0];
  _RAND_23 = {1{`RANDOM}};
  wait_table_3 = _RAND_23[13:0];
  _RAND_24 = {1{`RANDOM}};
  buffer_dep_mask_0_0 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  buffer_dep_mask_0_1 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  buffer_dep_mask_0_2 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  buffer_dep_mask_0_3 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  buffer_dep_mask_1_0 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  buffer_dep_mask_1_1 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  buffer_dep_mask_1_2 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  buffer_dep_mask_1_3 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  buffer_dep_mask_2_0 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  buffer_dep_mask_2_1 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  buffer_dep_mask_2_2 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  buffer_dep_mask_2_3 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  buffer_dep_mask_3_0 = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  buffer_dep_mask_3_1 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  buffer_dep_mask_3_2 = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  buffer_dep_mask_3_3 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  rdys_0 = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  rdys_1 = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  rdys_2 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  rdys_3 = _RAND_43[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    valids_0 = 1'h0;
  end
  if (reset) begin
    valids_1 = 1'h0;
  end
  if (reset) begin
    valids_2 = 1'h0;
  end
  if (reset) begin
    valids_3 = 1'h0;
  end
  if (reset) begin
    rdys_0 = 1'h0;
  end
  if (reset) begin
    rdys_1 = 1'h0;
  end
  if (reset) begin
    rdys_2 = 1'h0;
  end
  if (reset) begin
    rdys_3 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

