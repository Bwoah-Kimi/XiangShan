module HuanCun(
  input          clock,
  input          reset,
  output         auto_in_a_ready,
  input          auto_in_a_valid,
  input  [2:0]   auto_in_a_bits_opcode,
  input  [2:0]   auto_in_a_bits_param,
  input  [2:0]   auto_in_a_bits_size,
  input  [9:0]   auto_in_a_bits_source,
  input  [35:0]  auto_in_a_bits_address,
  input  [31:0]  auto_in_a_bits_mask,
  input  [255:0] auto_in_a_bits_data,
  input          auto_in_bready,
  output         auto_in_bvalid,
  output [1:0]   auto_in_bparam,
  output [35:0]  auto_in_baddress,
  output [255:0] auto_in_bdata,
  output         auto_in_c_ready,
  input          auto_in_c_valid,
  input  [2:0]   auto_in_c_bits_opcode,
  input  [2:0]   auto_in_c_bits_param,
  input  [2:0]   auto_in_c_bits_size,
  input  [9:0]   auto_in_c_bits_source,
  input  [35:0]  auto_in_c_bits_address,
  input          auto_in_c_bits_echo_blockisdirty,
  input  [255:0] auto_in_c_bits_data,
  input          auto_in_d_ready,
  output         auto_in_d_valid,
  output [2:0]   auto_in_d_bits_opcode,
  output [1:0]   auto_in_d_bits_param,
  output [2:0]   auto_in_d_bits_size,
  output [9:0]   auto_in_d_bits_source,
  output [3:0]   auto_in_d_bits_sink,
  output         auto_in_d_bits_denied,
  output         auto_in_d_bits_echo_blockisdirty,
  output [255:0] auto_in_d_bits_data,
  output         auto_in_d_bits_corrupt,
  input          auto_in_e_valid,
  input  [3:0]   auto_in_e_bits_sink,
  input          auto_out_a_ready,
  output         auto_out_a_valid,
  output [2:0]   auto_out_a_bits_opcode,
  output [2:0]   auto_out_a_bits_param,
  output [2:0]   auto_out_a_bits_size,
  output [3:0]   auto_out_a_bits_source,
  output [35:0]  auto_out_a_bits_address,
  output [31:0]  auto_out_a_bits_mask,
  output [255:0] auto_out_a_bits_data,
  input          auto_out_c_ready,
  output         auto_out_c_valid,
  output [2:0]   auto_out_c_bits_opcode,
  output [2:0]   auto_out_c_bits_size,
  output [3:0]   auto_out_c_bits_source,
  output [35:0]  auto_out_c_bits_address,
  output [255:0] auto_out_c_bits_data,
  output         auto_out_d_ready,
  input          auto_out_d_valid,
  input  [2:0]   auto_out_d_bits_opcode,
  input  [1:0]   auto_out_d_bits_param,
  input  [2:0]   auto_out_d_bits_size,
  input  [3:0]   auto_out_d_bits_source,
  input  [2:0]   auto_out_d_bits_sink,
  input          auto_out_d_bits_denied,
  input  [255:0] auto_out_d_bits_data,
  input          auto_out_e_ready,
  output         auto_out_e_valid,
  output [2:0]   auto_out_e_bits_sink,
  input          sourcePaddr_valid,
  input  [35:0]  sourcePaddr_bits
);
  wire  rst_resetSync_clock; // @[ResetGen.scala 40:27]
  wire  rst_resetSync_reset; // @[ResetGen.scala 40:27]
  wire  rst_resetSync_o_reset; // @[ResetGen.scala 40:27]
  wire  slices_0_clock; // @[HuanCun.scala 335:43]
  wire  slices_0_reset; // @[HuanCun.scala 335:43]
  wire  slices_0_io_in_a_ready; // @[HuanCun.scala 335:43]
  wire  slices_0_io_in_a_valid; // @[HuanCun.scala 335:43]
  wire [2:0] slices_0_io_in_a_bits_opcode; // @[HuanCun.scala 335:43]
  wire [2:0] slices_0_io_in_a_bits_param; // @[HuanCun.scala 335:43]
  wire [2:0] slices_0_io_in_a_bits_size; // @[HuanCun.scala 335:43]
  wire [9:0] slices_0_io_in_a_bits_source; // @[HuanCun.scala 335:43]
  wire [35:0] slices_0_io_in_a_bits_address; // @[HuanCun.scala 335:43]
  wire [31:0] slices_0_io_in_a_bits_mask; // @[HuanCun.scala 335:43]
  wire [255:0] slices_0_io_in_a_bits_data; // @[HuanCun.scala 335:43]
  wire  slices_0_io_in_bready; // @[HuanCun.scala 335:43]
  wire  slices_0_io_in_bvalid; // @[HuanCun.scala 335:43]
  wire [1:0] slices_0_io_in_bparam; // @[HuanCun.scala 335:43]
  wire [35:0] slices_0_io_in_baddress; // @[HuanCun.scala 335:43]
  wire [255:0] slices_0_io_in_bdata; // @[HuanCun.scala 335:43]
  wire  slices_0_io_in_c_ready; // @[HuanCun.scala 335:43]
  wire  slices_0_io_in_c_valid; // @[HuanCun.scala 335:43]
  wire [2:0] slices_0_io_in_c_bits_opcode; // @[HuanCun.scala 335:43]
  wire [2:0] slices_0_io_in_c_bits_param; // @[HuanCun.scala 335:43]
  wire [2:0] slices_0_io_in_c_bits_size; // @[HuanCun.scala 335:43]
  wire [9:0] slices_0_io_in_c_bits_source; // @[HuanCun.scala 335:43]
  wire [35:0] slices_0_io_in_c_bits_address; // @[HuanCun.scala 335:43]
  wire  slices_0_io_in_c_bits_echo_blockisdirty; // @[HuanCun.scala 335:43]
  wire [255:0] slices_0_io_in_c_bits_data; // @[HuanCun.scala 335:43]
  wire  slices_0_io_in_d_ready; // @[HuanCun.scala 335:43]
  wire  slices_0_io_in_d_valid; // @[HuanCun.scala 335:43]
  wire [2:0] slices_0_io_in_d_bits_opcode; // @[HuanCun.scala 335:43]
  wire [1:0] slices_0_io_in_d_bits_param; // @[HuanCun.scala 335:43]
  wire [2:0] slices_0_io_in_d_bits_size; // @[HuanCun.scala 335:43]
  wire [9:0] slices_0_io_in_d_bits_source; // @[HuanCun.scala 335:43]
  wire [3:0] slices_0_io_in_d_bits_sink; // @[HuanCun.scala 335:43]
  wire  slices_0_io_in_d_bits_denied; // @[HuanCun.scala 335:43]
  wire  slices_0_io_in_d_bits_echo_blockisdirty; // @[HuanCun.scala 335:43]
  wire [255:0] slices_0_io_in_d_bits_data; // @[HuanCun.scala 335:43]
  wire  slices_0_io_in_d_bits_corrupt; // @[HuanCun.scala 335:43]
  wire  slices_0_io_in_e_valid; // @[HuanCun.scala 335:43]
  wire [3:0] slices_0_io_in_e_bits_sink; // @[HuanCun.scala 335:43]
  wire  slices_0_io_out_a_ready; // @[HuanCun.scala 335:43]
  wire  slices_0_io_out_a_valid; // @[HuanCun.scala 335:43]
  wire [2:0] slices_0_io_out_a_bits_opcode; // @[HuanCun.scala 335:43]
  wire [2:0] slices_0_io_out_a_bits_param; // @[HuanCun.scala 335:43]
  wire [2:0] slices_0_io_out_a_bits_size; // @[HuanCun.scala 335:43]
  wire [3:0] slices_0_io_out_a_bits_source; // @[HuanCun.scala 335:43]
  wire [35:0] slices_0_io_out_a_bits_address; // @[HuanCun.scala 335:43]
  wire [31:0] slices_0_io_out_a_bits_mask; // @[HuanCun.scala 335:43]
  wire [255:0] slices_0_io_out_a_bits_data; // @[HuanCun.scala 335:43]
  wire  slices_0_io_out_c_ready; // @[HuanCun.scala 335:43]
  wire  slices_0_io_out_c_valid; // @[HuanCun.scala 335:43]
  wire [2:0] slices_0_io_out_c_bits_opcode; // @[HuanCun.scala 335:43]
  wire [2:0] slices_0_io_out_c_bits_size; // @[HuanCun.scala 335:43]
  wire [3:0] slices_0_io_out_c_bits_source; // @[HuanCun.scala 335:43]
  wire [35:0] slices_0_io_out_c_bits_address; // @[HuanCun.scala 335:43]
  wire [255:0] slices_0_io_out_c_bits_data; // @[HuanCun.scala 335:43]
  wire  slices_0_io_out_d_ready; // @[HuanCun.scala 335:43]
  wire  slices_0_io_out_d_valid; // @[HuanCun.scala 335:43]
  wire [2:0] slices_0_io_out_d_bits_opcode; // @[HuanCun.scala 335:43]
  wire [1:0] slices_0_io_out_d_bits_param; // @[HuanCun.scala 335:43]
  wire [2:0] slices_0_io_out_d_bits_size; // @[HuanCun.scala 335:43]
  wire [3:0] slices_0_io_out_d_bits_source; // @[HuanCun.scala 335:43]
  wire [2:0] slices_0_io_out_d_bits_sink; // @[HuanCun.scala 335:43]
  wire  slices_0_io_out_d_bits_denied; // @[HuanCun.scala 335:43]
  wire [255:0] slices_0_io_out_d_bits_data; // @[HuanCun.scala 335:43]
  wire  slices_0_io_out_e_ready; // @[HuanCun.scala 335:43]
  wire  slices_0_io_out_e_valid; // @[HuanCun.scala 335:43]
  wire [2:0] slices_0_io_out_e_bits_sink; // @[HuanCun.scala 335:43]
  wire  slices_0_io_ms_status_0_valid; // @[HuanCun.scala 335:43]
  wire [7:0] slices_0_io_ms_status_0_bits_set; // @[HuanCun.scala 335:43]
  wire [21:0] slices_0_io_ms_status_0_bits_tag; // @[HuanCun.scala 335:43]
  wire  slices_0_io_ms_status_0_bits_is_miss; // @[HuanCun.scala 335:43]
  wire  slices_0_io_ms_status_1_valid; // @[HuanCun.scala 335:43]
  wire [7:0] slices_0_io_ms_status_1_bits_set; // @[HuanCun.scala 335:43]
  wire [21:0] slices_0_io_ms_status_1_bits_tag; // @[HuanCun.scala 335:43]
  wire  slices_0_io_ms_status_1_bits_is_miss; // @[HuanCun.scala 335:43]
  wire  slices_0_io_ms_status_2_valid; // @[HuanCun.scala 335:43]
  wire [7:0] slices_0_io_ms_status_2_bits_set; // @[HuanCun.scala 335:43]
  wire [21:0] slices_0_io_ms_status_2_bits_tag; // @[HuanCun.scala 335:43]
  wire  slices_0_io_ms_status_2_bits_is_miss; // @[HuanCun.scala 335:43]
  wire  slices_0_io_ms_status_3_valid; // @[HuanCun.scala 335:43]
  wire [7:0] slices_0_io_ms_status_3_bits_set; // @[HuanCun.scala 335:43]
  wire [21:0] slices_0_io_ms_status_3_bits_tag; // @[HuanCun.scala 335:43]
  wire  slices_0_io_ms_status_3_bits_is_miss; // @[HuanCun.scala 335:43]
  wire  slices_0_io_ms_status_4_valid; // @[HuanCun.scala 335:43]
  wire [7:0] slices_0_io_ms_status_4_bits_set; // @[HuanCun.scala 335:43]
  wire [21:0] slices_0_io_ms_status_4_bits_tag; // @[HuanCun.scala 335:43]
  wire  slices_0_io_ms_status_4_bits_is_miss; // @[HuanCun.scala 335:43]
  wire  slices_0_io_ms_status_5_valid; // @[HuanCun.scala 335:43]
  wire [7:0] slices_0_io_ms_status_5_bits_set; // @[HuanCun.scala 335:43]
  wire [21:0] slices_0_io_ms_status_5_bits_tag; // @[HuanCun.scala 335:43]
  wire  slices_0_io_ms_status_5_bits_is_miss; // @[HuanCun.scala 335:43]
  wire  slices_0_io_ms_status_6_valid; // @[HuanCun.scala 335:43]
  wire [7:0] slices_0_io_ms_status_6_bits_set; // @[HuanCun.scala 335:43]
  wire [21:0] slices_0_io_ms_status_6_bits_tag; // @[HuanCun.scala 335:43]
  wire  slices_0_io_ms_status_6_bits_is_miss; // @[HuanCun.scala 335:43]
  wire  slices_0_io_ms_status_7_valid; // @[HuanCun.scala 335:43]
  wire [7:0] slices_0_io_ms_status_7_bits_set; // @[HuanCun.scala 335:43]
  wire [21:0] slices_0_io_ms_status_7_bits_tag; // @[HuanCun.scala 335:43]
  wire  slices_0_io_ms_status_7_bits_is_miss; // @[HuanCun.scala 335:43]
  wire  slices_0_io_ms_status_8_valid; // @[HuanCun.scala 335:43]
  wire [7:0] slices_0_io_ms_status_8_bits_set; // @[HuanCun.scala 335:43]
  wire [21:0] slices_0_io_ms_status_8_bits_tag; // @[HuanCun.scala 335:43]
  wire  slices_0_io_ms_status_8_bits_is_miss; // @[HuanCun.scala 335:43]
  wire  slices_0_io_ms_status_9_valid; // @[HuanCun.scala 335:43]
  wire [7:0] slices_0_io_ms_status_9_bits_set; // @[HuanCun.scala 335:43]
  wire [21:0] slices_0_io_ms_status_9_bits_tag; // @[HuanCun.scala 335:43]
  wire  slices_0_io_ms_status_9_bits_is_miss; // @[HuanCun.scala 335:43]
  wire  slices_0_io_ms_status_10_valid; // @[HuanCun.scala 335:43]
  wire [7:0] slices_0_io_ms_status_10_bits_set; // @[HuanCun.scala 335:43]
  wire [21:0] slices_0_io_ms_status_10_bits_tag; // @[HuanCun.scala 335:43]
  wire  slices_0_io_ms_status_10_bits_is_miss; // @[HuanCun.scala 335:43]
  wire  slices_0_io_ms_status_11_valid; // @[HuanCun.scala 335:43]
  wire [7:0] slices_0_io_ms_status_11_bits_set; // @[HuanCun.scala 335:43]
  wire [21:0] slices_0_io_ms_status_11_bits_tag; // @[HuanCun.scala 335:43]
  wire  slices_0_io_ms_status_11_bits_is_miss; // @[HuanCun.scala 335:43]
  wire  slices_0_io_ms_status_12_valid; // @[HuanCun.scala 335:43]
  wire [7:0] slices_0_io_ms_status_12_bits_set; // @[HuanCun.scala 335:43]
  wire [21:0] slices_0_io_ms_status_12_bits_tag; // @[HuanCun.scala 335:43]
  wire  slices_0_io_ms_status_12_bits_is_miss; // @[HuanCun.scala 335:43]
  wire  slices_0_io_ms_status_13_valid; // @[HuanCun.scala 335:43]
  wire [7:0] slices_0_io_ms_status_13_bits_set; // @[HuanCun.scala 335:43]
  wire [21:0] slices_0_io_ms_status_13_bits_tag; // @[HuanCun.scala 335:43]
  wire  slices_0_io_ms_status_13_bits_is_miss; // @[HuanCun.scala 335:43]
  wire  slices_0_io_ms_status_14_valid; // @[HuanCun.scala 335:43]
  wire [7:0] slices_0_io_ms_status_14_bits_set; // @[HuanCun.scala 335:43]
  wire [21:0] slices_0_io_ms_status_14_bits_tag; // @[HuanCun.scala 335:43]
  wire  slices_0_io_ms_status_14_bits_is_miss; // @[HuanCun.scala 335:43]
  wire  slices_0_io_ms_status_15_valid; // @[HuanCun.scala 335:43]
  wire [7:0] slices_0_io_ms_status_15_bits_set; // @[HuanCun.scala 335:43]
  wire [21:0] slices_0_io_ms_status_15_bits_tag; // @[HuanCun.scala 335:43]
  wire  slices_0_io_ms_status_15_bits_is_miss; // @[HuanCun.scala 335:43]
  wire  topDown_io_msStatus_0_0_valid; // @[HuanCun.scala 414:45]
  wire [7:0] topDown_io_msStatus_0_0_bits_set; // @[HuanCun.scala 414:45]
  wire [21:0] topDown_io_msStatus_0_0_bits_tag; // @[HuanCun.scala 414:45]
  wire  topDown_io_msStatus_0_0_bits_is_miss; // @[HuanCun.scala 414:45]
  wire  topDown_io_msStatus_0_1_valid; // @[HuanCun.scala 414:45]
  wire [7:0] topDown_io_msStatus_0_1_bits_set; // @[HuanCun.scala 414:45]
  wire [21:0] topDown_io_msStatus_0_1_bits_tag; // @[HuanCun.scala 414:45]
  wire  topDown_io_msStatus_0_1_bits_is_miss; // @[HuanCun.scala 414:45]
  wire  topDown_io_msStatus_0_2_valid; // @[HuanCun.scala 414:45]
  wire [7:0] topDown_io_msStatus_0_2_bits_set; // @[HuanCun.scala 414:45]
  wire [21:0] topDown_io_msStatus_0_2_bits_tag; // @[HuanCun.scala 414:45]
  wire  topDown_io_msStatus_0_2_bits_is_miss; // @[HuanCun.scala 414:45]
  wire  topDown_io_msStatus_0_3_valid; // @[HuanCun.scala 414:45]
  wire [7:0] topDown_io_msStatus_0_3_bits_set; // @[HuanCun.scala 414:45]
  wire [21:0] topDown_io_msStatus_0_3_bits_tag; // @[HuanCun.scala 414:45]
  wire  topDown_io_msStatus_0_3_bits_is_miss; // @[HuanCun.scala 414:45]
  wire  topDown_io_msStatus_0_4_valid; // @[HuanCun.scala 414:45]
  wire [7:0] topDown_io_msStatus_0_4_bits_set; // @[HuanCun.scala 414:45]
  wire [21:0] topDown_io_msStatus_0_4_bits_tag; // @[HuanCun.scala 414:45]
  wire  topDown_io_msStatus_0_4_bits_is_miss; // @[HuanCun.scala 414:45]
  wire  topDown_io_msStatus_0_5_valid; // @[HuanCun.scala 414:45]
  wire [7:0] topDown_io_msStatus_0_5_bits_set; // @[HuanCun.scala 414:45]
  wire [21:0] topDown_io_msStatus_0_5_bits_tag; // @[HuanCun.scala 414:45]
  wire  topDown_io_msStatus_0_5_bits_is_miss; // @[HuanCun.scala 414:45]
  wire  topDown_io_msStatus_0_6_valid; // @[HuanCun.scala 414:45]
  wire [7:0] topDown_io_msStatus_0_6_bits_set; // @[HuanCun.scala 414:45]
  wire [21:0] topDown_io_msStatus_0_6_bits_tag; // @[HuanCun.scala 414:45]
  wire  topDown_io_msStatus_0_6_bits_is_miss; // @[HuanCun.scala 414:45]
  wire  topDown_io_msStatus_0_7_valid; // @[HuanCun.scala 414:45]
  wire [7:0] topDown_io_msStatus_0_7_bits_set; // @[HuanCun.scala 414:45]
  wire [21:0] topDown_io_msStatus_0_7_bits_tag; // @[HuanCun.scala 414:45]
  wire  topDown_io_msStatus_0_7_bits_is_miss; // @[HuanCun.scala 414:45]
  wire  topDown_io_msStatus_0_8_valid; // @[HuanCun.scala 414:45]
  wire [7:0] topDown_io_msStatus_0_8_bits_set; // @[HuanCun.scala 414:45]
  wire [21:0] topDown_io_msStatus_0_8_bits_tag; // @[HuanCun.scala 414:45]
  wire  topDown_io_msStatus_0_8_bits_is_miss; // @[HuanCun.scala 414:45]
  wire  topDown_io_msStatus_0_9_valid; // @[HuanCun.scala 414:45]
  wire [7:0] topDown_io_msStatus_0_9_bits_set; // @[HuanCun.scala 414:45]
  wire [21:0] topDown_io_msStatus_0_9_bits_tag; // @[HuanCun.scala 414:45]
  wire  topDown_io_msStatus_0_9_bits_is_miss; // @[HuanCun.scala 414:45]
  wire  topDown_io_msStatus_0_10_valid; // @[HuanCun.scala 414:45]
  wire [7:0] topDown_io_msStatus_0_10_bits_set; // @[HuanCun.scala 414:45]
  wire [21:0] topDown_io_msStatus_0_10_bits_tag; // @[HuanCun.scala 414:45]
  wire  topDown_io_msStatus_0_10_bits_is_miss; // @[HuanCun.scala 414:45]
  wire  topDown_io_msStatus_0_11_valid; // @[HuanCun.scala 414:45]
  wire [7:0] topDown_io_msStatus_0_11_bits_set; // @[HuanCun.scala 414:45]
  wire [21:0] topDown_io_msStatus_0_11_bits_tag; // @[HuanCun.scala 414:45]
  wire  topDown_io_msStatus_0_11_bits_is_miss; // @[HuanCun.scala 414:45]
  wire  topDown_io_msStatus_0_12_valid; // @[HuanCun.scala 414:45]
  wire [7:0] topDown_io_msStatus_0_12_bits_set; // @[HuanCun.scala 414:45]
  wire [21:0] topDown_io_msStatus_0_12_bits_tag; // @[HuanCun.scala 414:45]
  wire  topDown_io_msStatus_0_12_bits_is_miss; // @[HuanCun.scala 414:45]
  wire  topDown_io_msStatus_0_13_valid; // @[HuanCun.scala 414:45]
  wire [7:0] topDown_io_msStatus_0_13_bits_set; // @[HuanCun.scala 414:45]
  wire [21:0] topDown_io_msStatus_0_13_bits_tag; // @[HuanCun.scala 414:45]
  wire  topDown_io_msStatus_0_13_bits_is_miss; // @[HuanCun.scala 414:45]
  wire  topDown_io_msStatus_0_14_valid; // @[HuanCun.scala 414:45]
  wire [7:0] topDown_io_msStatus_0_14_bits_set; // @[HuanCun.scala 414:45]
  wire [21:0] topDown_io_msStatus_0_14_bits_tag; // @[HuanCun.scala 414:45]
  wire  topDown_io_msStatus_0_14_bits_is_miss; // @[HuanCun.scala 414:45]
  wire  topDown_io_msStatus_0_15_valid; // @[HuanCun.scala 414:45]
  wire [7:0] topDown_io_msStatus_0_15_bits_set; // @[HuanCun.scala 414:45]
  wire [21:0] topDown_io_msStatus_0_15_bits_tag; // @[HuanCun.scala 414:45]
  wire  topDown_io_msStatus_0_15_bits_is_miss; // @[HuanCun.scala 414:45]
  wire  topDown_rob_head_paddr_0_valid; // @[HuanCun.scala 414:45]
  wire [35:0] topDown_rob_head_paddr_0_bits; // @[HuanCun.scala 414:45]
  ResetGen rst_resetSync ( // @[ResetGen.scala 40:27]
    .clock(rst_resetSync_clock),
    .reset(rst_resetSync_reset),
    .o_reset(rst_resetSync_o_reset)
  );
  Slice_2 slices_0 ( // @[HuanCun.scala 335:43]
    .clock(slices_0_clock),
    .reset(slices_0_reset),
    .io_in_a_ready(slices_0_io_in_a_ready),
    .io_in_a_valid(slices_0_io_in_a_valid),
    .io_in_a_bits_opcode(slices_0_io_in_a_bits_opcode),
    .io_in_a_bits_param(slices_0_io_in_a_bits_param),
    .io_in_a_bits_size(slices_0_io_in_a_bits_size),
    .io_in_a_bits_source(slices_0_io_in_a_bits_source),
    .io_in_a_bits_address(slices_0_io_in_a_bits_address),
    .io_in_a_bits_mask(slices_0_io_in_a_bits_mask),
    .io_in_a_bits_data(slices_0_io_in_a_bits_data),
    .io_in_bready(slices_0_io_in_bready),
    .io_in_bvalid(slices_0_io_in_bvalid),
    .io_in_bparam(slices_0_io_in_bparam),
    .io_in_baddress(slices_0_io_in_baddress),
    .io_in_bdata(slices_0_io_in_bdata),
    .io_in_c_ready(slices_0_io_in_c_ready),
    .io_in_c_valid(slices_0_io_in_c_valid),
    .io_in_c_bits_opcode(slices_0_io_in_c_bits_opcode),
    .io_in_c_bits_param(slices_0_io_in_c_bits_param),
    .io_in_c_bits_size(slices_0_io_in_c_bits_size),
    .io_in_c_bits_source(slices_0_io_in_c_bits_source),
    .io_in_c_bits_address(slices_0_io_in_c_bits_address),
    .io_in_c_bits_echo_blockisdirty(slices_0_io_in_c_bits_echo_blockisdirty),
    .io_in_c_bits_data(slices_0_io_in_c_bits_data),
    .io_in_d_ready(slices_0_io_in_d_ready),
    .io_in_d_valid(slices_0_io_in_d_valid),
    .io_in_d_bits_opcode(slices_0_io_in_d_bits_opcode),
    .io_in_d_bits_param(slices_0_io_in_d_bits_param),
    .io_in_d_bits_size(slices_0_io_in_d_bits_size),
    .io_in_d_bits_source(slices_0_io_in_d_bits_source),
    .io_in_d_bits_sink(slices_0_io_in_d_bits_sink),
    .io_in_d_bits_denied(slices_0_io_in_d_bits_denied),
    .io_in_d_bits_echo_blockisdirty(slices_0_io_in_d_bits_echo_blockisdirty),
    .io_in_d_bits_data(slices_0_io_in_d_bits_data),
    .io_in_d_bits_corrupt(slices_0_io_in_d_bits_corrupt),
    .io_in_e_valid(slices_0_io_in_e_valid),
    .io_in_e_bits_sink(slices_0_io_in_e_bits_sink),
    .io_out_a_ready(slices_0_io_out_a_ready),
    .io_out_a_valid(slices_0_io_out_a_valid),
    .io_out_a_bits_opcode(slices_0_io_out_a_bits_opcode),
    .io_out_a_bits_param(slices_0_io_out_a_bits_param),
    .io_out_a_bits_size(slices_0_io_out_a_bits_size),
    .io_out_a_bits_source(slices_0_io_out_a_bits_source),
    .io_out_a_bits_address(slices_0_io_out_a_bits_address),
    .io_out_a_bits_mask(slices_0_io_out_a_bits_mask),
    .io_out_a_bits_data(slices_0_io_out_a_bits_data),
    .io_out_c_ready(slices_0_io_out_c_ready),
    .io_out_c_valid(slices_0_io_out_c_valid),
    .io_out_c_bits_opcode(slices_0_io_out_c_bits_opcode),
    .io_out_c_bits_size(slices_0_io_out_c_bits_size),
    .io_out_c_bits_source(slices_0_io_out_c_bits_source),
    .io_out_c_bits_address(slices_0_io_out_c_bits_address),
    .io_out_c_bits_data(slices_0_io_out_c_bits_data),
    .io_out_d_ready(slices_0_io_out_d_ready),
    .io_out_d_valid(slices_0_io_out_d_valid),
    .io_out_d_bits_opcode(slices_0_io_out_d_bits_opcode),
    .io_out_d_bits_param(slices_0_io_out_d_bits_param),
    .io_out_d_bits_size(slices_0_io_out_d_bits_size),
    .io_out_d_bits_source(slices_0_io_out_d_bits_source),
    .io_out_d_bits_sink(slices_0_io_out_d_bits_sink),
    .io_out_d_bits_denied(slices_0_io_out_d_bits_denied),
    .io_out_d_bits_data(slices_0_io_out_d_bits_data),
    .io_out_e_ready(slices_0_io_out_e_ready),
    .io_out_e_valid(slices_0_io_out_e_valid),
    .io_out_e_bits_sink(slices_0_io_out_e_bits_sink),
    .io_ms_status_0_valid(slices_0_io_ms_status_0_valid),
    .io_ms_status_0_bits_set(slices_0_io_ms_status_0_bits_set),
    .io_ms_status_0_bits_tag(slices_0_io_ms_status_0_bits_tag),
    .io_ms_status_0_bits_is_miss(slices_0_io_ms_status_0_bits_is_miss),
    .io_ms_status_1_valid(slices_0_io_ms_status_1_valid),
    .io_ms_status_1_bits_set(slices_0_io_ms_status_1_bits_set),
    .io_ms_status_1_bits_tag(slices_0_io_ms_status_1_bits_tag),
    .io_ms_status_1_bits_is_miss(slices_0_io_ms_status_1_bits_is_miss),
    .io_ms_status_2_valid(slices_0_io_ms_status_2_valid),
    .io_ms_status_2_bits_set(slices_0_io_ms_status_2_bits_set),
    .io_ms_status_2_bits_tag(slices_0_io_ms_status_2_bits_tag),
    .io_ms_status_2_bits_is_miss(slices_0_io_ms_status_2_bits_is_miss),
    .io_ms_status_3_valid(slices_0_io_ms_status_3_valid),
    .io_ms_status_3_bits_set(slices_0_io_ms_status_3_bits_set),
    .io_ms_status_3_bits_tag(slices_0_io_ms_status_3_bits_tag),
    .io_ms_status_3_bits_is_miss(slices_0_io_ms_status_3_bits_is_miss),
    .io_ms_status_4_valid(slices_0_io_ms_status_4_valid),
    .io_ms_status_4_bits_set(slices_0_io_ms_status_4_bits_set),
    .io_ms_status_4_bits_tag(slices_0_io_ms_status_4_bits_tag),
    .io_ms_status_4_bits_is_miss(slices_0_io_ms_status_4_bits_is_miss),
    .io_ms_status_5_valid(slices_0_io_ms_status_5_valid),
    .io_ms_status_5_bits_set(slices_0_io_ms_status_5_bits_set),
    .io_ms_status_5_bits_tag(slices_0_io_ms_status_5_bits_tag),
    .io_ms_status_5_bits_is_miss(slices_0_io_ms_status_5_bits_is_miss),
    .io_ms_status_6_valid(slices_0_io_ms_status_6_valid),
    .io_ms_status_6_bits_set(slices_0_io_ms_status_6_bits_set),
    .io_ms_status_6_bits_tag(slices_0_io_ms_status_6_bits_tag),
    .io_ms_status_6_bits_is_miss(slices_0_io_ms_status_6_bits_is_miss),
    .io_ms_status_7_valid(slices_0_io_ms_status_7_valid),
    .io_ms_status_7_bits_set(slices_0_io_ms_status_7_bits_set),
    .io_ms_status_7_bits_tag(slices_0_io_ms_status_7_bits_tag),
    .io_ms_status_7_bits_is_miss(slices_0_io_ms_status_7_bits_is_miss),
    .io_ms_status_8_valid(slices_0_io_ms_status_8_valid),
    .io_ms_status_8_bits_set(slices_0_io_ms_status_8_bits_set),
    .io_ms_status_8_bits_tag(slices_0_io_ms_status_8_bits_tag),
    .io_ms_status_8_bits_is_miss(slices_0_io_ms_status_8_bits_is_miss),
    .io_ms_status_9_valid(slices_0_io_ms_status_9_valid),
    .io_ms_status_9_bits_set(slices_0_io_ms_status_9_bits_set),
    .io_ms_status_9_bits_tag(slices_0_io_ms_status_9_bits_tag),
    .io_ms_status_9_bits_is_miss(slices_0_io_ms_status_9_bits_is_miss),
    .io_ms_status_10_valid(slices_0_io_ms_status_10_valid),
    .io_ms_status_10_bits_set(slices_0_io_ms_status_10_bits_set),
    .io_ms_status_10_bits_tag(slices_0_io_ms_status_10_bits_tag),
    .io_ms_status_10_bits_is_miss(slices_0_io_ms_status_10_bits_is_miss),
    .io_ms_status_11_valid(slices_0_io_ms_status_11_valid),
    .io_ms_status_11_bits_set(slices_0_io_ms_status_11_bits_set),
    .io_ms_status_11_bits_tag(slices_0_io_ms_status_11_bits_tag),
    .io_ms_status_11_bits_is_miss(slices_0_io_ms_status_11_bits_is_miss),
    .io_ms_status_12_valid(slices_0_io_ms_status_12_valid),
    .io_ms_status_12_bits_set(slices_0_io_ms_status_12_bits_set),
    .io_ms_status_12_bits_tag(slices_0_io_ms_status_12_bits_tag),
    .io_ms_status_12_bits_is_miss(slices_0_io_ms_status_12_bits_is_miss),
    .io_ms_status_13_valid(slices_0_io_ms_status_13_valid),
    .io_ms_status_13_bits_set(slices_0_io_ms_status_13_bits_set),
    .io_ms_status_13_bits_tag(slices_0_io_ms_status_13_bits_tag),
    .io_ms_status_13_bits_is_miss(slices_0_io_ms_status_13_bits_is_miss),
    .io_ms_status_14_valid(slices_0_io_ms_status_14_valid),
    .io_ms_status_14_bits_set(slices_0_io_ms_status_14_bits_set),
    .io_ms_status_14_bits_tag(slices_0_io_ms_status_14_bits_tag),
    .io_ms_status_14_bits_is_miss(slices_0_io_ms_status_14_bits_is_miss),
    .io_ms_status_15_valid(slices_0_io_ms_status_15_valid),
    .io_ms_status_15_bits_set(slices_0_io_ms_status_15_bits_set),
    .io_ms_status_15_bits_tag(slices_0_io_ms_status_15_bits_tag),
    .io_ms_status_15_bits_is_miss(slices_0_io_ms_status_15_bits_is_miss)
  );
  TopDownMonitor_1 topDown ( // @[HuanCun.scala 414:45]
    .io_msStatus_0_0_valid(topDown_io_msStatus_0_0_valid),
    .io_msStatus_0_0_bits_set(topDown_io_msStatus_0_0_bits_set),
    .io_msStatus_0_0_bits_tag(topDown_io_msStatus_0_0_bits_tag),
    .io_msStatus_0_0_bits_is_miss(topDown_io_msStatus_0_0_bits_is_miss),
    .io_msStatus_0_1_valid(topDown_io_msStatus_0_1_valid),
    .io_msStatus_0_1_bits_set(topDown_io_msStatus_0_1_bits_set),
    .io_msStatus_0_1_bits_tag(topDown_io_msStatus_0_1_bits_tag),
    .io_msStatus_0_1_bits_is_miss(topDown_io_msStatus_0_1_bits_is_miss),
    .io_msStatus_0_2_valid(topDown_io_msStatus_0_2_valid),
    .io_msStatus_0_2_bits_set(topDown_io_msStatus_0_2_bits_set),
    .io_msStatus_0_2_bits_tag(topDown_io_msStatus_0_2_bits_tag),
    .io_msStatus_0_2_bits_is_miss(topDown_io_msStatus_0_2_bits_is_miss),
    .io_msStatus_0_3_valid(topDown_io_msStatus_0_3_valid),
    .io_msStatus_0_3_bits_set(topDown_io_msStatus_0_3_bits_set),
    .io_msStatus_0_3_bits_tag(topDown_io_msStatus_0_3_bits_tag),
    .io_msStatus_0_3_bits_is_miss(topDown_io_msStatus_0_3_bits_is_miss),
    .io_msStatus_0_4_valid(topDown_io_msStatus_0_4_valid),
    .io_msStatus_0_4_bits_set(topDown_io_msStatus_0_4_bits_set),
    .io_msStatus_0_4_bits_tag(topDown_io_msStatus_0_4_bits_tag),
    .io_msStatus_0_4_bits_is_miss(topDown_io_msStatus_0_4_bits_is_miss),
    .io_msStatus_0_5_valid(topDown_io_msStatus_0_5_valid),
    .io_msStatus_0_5_bits_set(topDown_io_msStatus_0_5_bits_set),
    .io_msStatus_0_5_bits_tag(topDown_io_msStatus_0_5_bits_tag),
    .io_msStatus_0_5_bits_is_miss(topDown_io_msStatus_0_5_bits_is_miss),
    .io_msStatus_0_6_valid(topDown_io_msStatus_0_6_valid),
    .io_msStatus_0_6_bits_set(topDown_io_msStatus_0_6_bits_set),
    .io_msStatus_0_6_bits_tag(topDown_io_msStatus_0_6_bits_tag),
    .io_msStatus_0_6_bits_is_miss(topDown_io_msStatus_0_6_bits_is_miss),
    .io_msStatus_0_7_valid(topDown_io_msStatus_0_7_valid),
    .io_msStatus_0_7_bits_set(topDown_io_msStatus_0_7_bits_set),
    .io_msStatus_0_7_bits_tag(topDown_io_msStatus_0_7_bits_tag),
    .io_msStatus_0_7_bits_is_miss(topDown_io_msStatus_0_7_bits_is_miss),
    .io_msStatus_0_8_valid(topDown_io_msStatus_0_8_valid),
    .io_msStatus_0_8_bits_set(topDown_io_msStatus_0_8_bits_set),
    .io_msStatus_0_8_bits_tag(topDown_io_msStatus_0_8_bits_tag),
    .io_msStatus_0_8_bits_is_miss(topDown_io_msStatus_0_8_bits_is_miss),
    .io_msStatus_0_9_valid(topDown_io_msStatus_0_9_valid),
    .io_msStatus_0_9_bits_set(topDown_io_msStatus_0_9_bits_set),
    .io_msStatus_0_9_bits_tag(topDown_io_msStatus_0_9_bits_tag),
    .io_msStatus_0_9_bits_is_miss(topDown_io_msStatus_0_9_bits_is_miss),
    .io_msStatus_0_10_valid(topDown_io_msStatus_0_10_valid),
    .io_msStatus_0_10_bits_set(topDown_io_msStatus_0_10_bits_set),
    .io_msStatus_0_10_bits_tag(topDown_io_msStatus_0_10_bits_tag),
    .io_msStatus_0_10_bits_is_miss(topDown_io_msStatus_0_10_bits_is_miss),
    .io_msStatus_0_11_valid(topDown_io_msStatus_0_11_valid),
    .io_msStatus_0_11_bits_set(topDown_io_msStatus_0_11_bits_set),
    .io_msStatus_0_11_bits_tag(topDown_io_msStatus_0_11_bits_tag),
    .io_msStatus_0_11_bits_is_miss(topDown_io_msStatus_0_11_bits_is_miss),
    .io_msStatus_0_12_valid(topDown_io_msStatus_0_12_valid),
    .io_msStatus_0_12_bits_set(topDown_io_msStatus_0_12_bits_set),
    .io_msStatus_0_12_bits_tag(topDown_io_msStatus_0_12_bits_tag),
    .io_msStatus_0_12_bits_is_miss(topDown_io_msStatus_0_12_bits_is_miss),
    .io_msStatus_0_13_valid(topDown_io_msStatus_0_13_valid),
    .io_msStatus_0_13_bits_set(topDown_io_msStatus_0_13_bits_set),
    .io_msStatus_0_13_bits_tag(topDown_io_msStatus_0_13_bits_tag),
    .io_msStatus_0_13_bits_is_miss(topDown_io_msStatus_0_13_bits_is_miss),
    .io_msStatus_0_14_valid(topDown_io_msStatus_0_14_valid),
    .io_msStatus_0_14_bits_set(topDown_io_msStatus_0_14_bits_set),
    .io_msStatus_0_14_bits_tag(topDown_io_msStatus_0_14_bits_tag),
    .io_msStatus_0_14_bits_is_miss(topDown_io_msStatus_0_14_bits_is_miss),
    .io_msStatus_0_15_valid(topDown_io_msStatus_0_15_valid),
    .io_msStatus_0_15_bits_set(topDown_io_msStatus_0_15_bits_set),
    .io_msStatus_0_15_bits_tag(topDown_io_msStatus_0_15_bits_tag),
    .io_msStatus_0_15_bits_is_miss(topDown_io_msStatus_0_15_bits_is_miss),
    .rob_head_paddr_0_valid(topDown_rob_head_paddr_0_valid),
    .rob_head_paddr_0_bits(topDown_rob_head_paddr_0_bits)
  );
  assign auto_in_a_ready = slices_0_io_in_a_ready; // @[Nodes.scala 1210:84 HuanCun.scala 340:21]
  assign auto_in_bvalid = slices_0_io_in_bvalid; // @[Nodes.scala 1210:84 HuanCun.scala 340:21]
  assign auto_in_bparam = slices_0_io_in_bparam; // @[Nodes.scala 1210:84 HuanCun.scala 340:21]
  assign auto_in_baddress = slices_0_io_in_baddress; // @[Nodes.scala 1210:84 HuanCun.scala 341:27]
  assign auto_in_bdata = slices_0_io_in_bdata; // @[Nodes.scala 1210:84 HuanCun.scala 340:21]
  assign auto_in_c_ready = slices_0_io_in_c_ready; // @[Nodes.scala 1210:84 HuanCun.scala 340:21]
  assign auto_in_d_valid = slices_0_io_in_d_valid; // @[Nodes.scala 1210:84 HuanCun.scala 340:21]
  assign auto_in_d_bits_opcode = slices_0_io_in_d_bits_opcode; // @[Nodes.scala 1210:84 HuanCun.scala 340:21]
  assign auto_in_d_bits_param = slices_0_io_in_d_bits_param; // @[Nodes.scala 1210:84 HuanCun.scala 340:21]
  assign auto_in_d_bits_size = slices_0_io_in_d_bits_size; // @[Nodes.scala 1210:84 HuanCun.scala 340:21]
  assign auto_in_d_bits_source = slices_0_io_in_d_bits_source; // @[Nodes.scala 1210:84 HuanCun.scala 340:21]
  assign auto_in_d_bits_sink = slices_0_io_in_d_bits_sink; // @[Nodes.scala 1210:84 HuanCun.scala 340:21]
  assign auto_in_d_bits_denied = slices_0_io_in_d_bits_denied; // @[Nodes.scala 1210:84 HuanCun.scala 340:21]
  assign auto_in_d_bits_echo_blockisdirty = slices_0_io_in_d_bits_echo_blockisdirty; // @[Nodes.scala 1210:84 HuanCun.scala 340:21]
  assign auto_in_d_bits_data = slices_0_io_in_d_bits_data; // @[Nodes.scala 1210:84 HuanCun.scala 340:21]
  assign auto_in_d_bits_corrupt = slices_0_io_in_d_bits_corrupt; // @[Nodes.scala 1210:84 HuanCun.scala 340:21]
  assign auto_out_a_valid = slices_0_io_out_a_valid; // @[Nodes.scala 1207:84 HuanCun.scala 342:13]
  assign auto_out_a_bits_opcode = slices_0_io_out_a_bits_opcode; // @[Nodes.scala 1207:84 HuanCun.scala 342:13]
  assign auto_out_a_bits_param = slices_0_io_out_a_bits_param; // @[Nodes.scala 1207:84 HuanCun.scala 342:13]
  assign auto_out_a_bits_size = slices_0_io_out_a_bits_size; // @[Nodes.scala 1207:84 HuanCun.scala 342:13]
  assign auto_out_a_bits_source = slices_0_io_out_a_bits_source; // @[Nodes.scala 1207:84 HuanCun.scala 342:13]
  assign auto_out_a_bits_address = slices_0_io_out_a_bits_address; // @[Nodes.scala 1207:84 HuanCun.scala 343:28]
  assign auto_out_a_bits_mask = slices_0_io_out_a_bits_mask; // @[Nodes.scala 1207:84 HuanCun.scala 342:13]
  assign auto_out_a_bits_data = slices_0_io_out_a_bits_data; // @[Nodes.scala 1207:84 HuanCun.scala 342:13]
  assign auto_out_c_valid = slices_0_io_out_c_valid; // @[Nodes.scala 1207:84 HuanCun.scala 342:13]
  assign auto_out_c_bits_opcode = slices_0_io_out_c_bits_opcode; // @[Nodes.scala 1207:84 HuanCun.scala 342:13]
  assign auto_out_c_bits_size = slices_0_io_out_c_bits_size; // @[Nodes.scala 1207:84 HuanCun.scala 342:13]
  assign auto_out_c_bits_source = slices_0_io_out_c_bits_source; // @[Nodes.scala 1207:84 HuanCun.scala 342:13]
  assign auto_out_c_bits_address = slices_0_io_out_c_bits_address; // @[Nodes.scala 1207:84 HuanCun.scala 344:28]
  assign auto_out_c_bits_data = slices_0_io_out_c_bits_data; // @[Nodes.scala 1207:84 HuanCun.scala 342:13]
  assign auto_out_d_ready = slices_0_io_out_d_ready; // @[Nodes.scala 1207:84 HuanCun.scala 342:13]
  assign auto_out_e_valid = slices_0_io_out_e_valid; // @[Nodes.scala 1207:84 HuanCun.scala 342:13]
  assign auto_out_e_bits_sink = slices_0_io_out_e_bits_sink; // @[Nodes.scala 1207:84 HuanCun.scala 342:13]
  assign rst_resetSync_clock = clock;
  assign rst_resetSync_reset = reset;
  assign slices_0_clock = clock;
  assign slices_0_reset = rst_resetSync_o_reset;
  assign slices_0_io_in_a_valid = auto_in_a_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_a_bits_param = auto_in_a_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_a_bits_source = auto_in_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_a_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_bready = auto_in_bready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_c_valid = auto_in_c_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_c_bits_opcode = auto_in_c_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_c_bits_param = auto_in_c_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_c_bits_size = auto_in_c_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_c_bits_source = auto_in_c_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_c_bits_address = auto_in_c_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_c_bits_echo_blockisdirty = auto_in_c_bits_echo_blockisdirty; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_c_bits_data = auto_in_c_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_d_ready = auto_in_d_ready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_e_valid = auto_in_e_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_e_bits_sink = auto_in_e_bits_sink; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_out_a_ready = auto_out_a_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_c_ready = auto_out_c_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_d_valid = auto_out_d_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_d_bits_opcode = auto_out_d_bits_opcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_d_bits_param = auto_out_d_bits_param; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_d_bits_size = auto_out_d_bits_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_d_bits_source = auto_out_d_bits_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_d_bits_sink = auto_out_d_bits_sink; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_d_bits_denied = auto_out_d_bits_denied; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_d_bits_data = auto_out_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_e_ready = auto_out_e_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign topDown_io_msStatus_0_0_valid = slices_0_io_ms_status_0_valid; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_0_bits_set = slices_0_io_ms_status_0_bits_set; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_0_bits_tag = slices_0_io_ms_status_0_bits_tag; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_0_bits_is_miss = slices_0_io_ms_status_0_bits_is_miss; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_1_valid = slices_0_io_ms_status_1_valid; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_1_bits_set = slices_0_io_ms_status_1_bits_set; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_1_bits_tag = slices_0_io_ms_status_1_bits_tag; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_1_bits_is_miss = slices_0_io_ms_status_1_bits_is_miss; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_2_valid = slices_0_io_ms_status_2_valid; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_2_bits_set = slices_0_io_ms_status_2_bits_set; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_2_bits_tag = slices_0_io_ms_status_2_bits_tag; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_2_bits_is_miss = slices_0_io_ms_status_2_bits_is_miss; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_3_valid = slices_0_io_ms_status_3_valid; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_3_bits_set = slices_0_io_ms_status_3_bits_set; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_3_bits_tag = slices_0_io_ms_status_3_bits_tag; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_3_bits_is_miss = slices_0_io_ms_status_3_bits_is_miss; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_4_valid = slices_0_io_ms_status_4_valid; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_4_bits_set = slices_0_io_ms_status_4_bits_set; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_4_bits_tag = slices_0_io_ms_status_4_bits_tag; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_4_bits_is_miss = slices_0_io_ms_status_4_bits_is_miss; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_5_valid = slices_0_io_ms_status_5_valid; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_5_bits_set = slices_0_io_ms_status_5_bits_set; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_5_bits_tag = slices_0_io_ms_status_5_bits_tag; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_5_bits_is_miss = slices_0_io_ms_status_5_bits_is_miss; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_6_valid = slices_0_io_ms_status_6_valid; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_6_bits_set = slices_0_io_ms_status_6_bits_set; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_6_bits_tag = slices_0_io_ms_status_6_bits_tag; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_6_bits_is_miss = slices_0_io_ms_status_6_bits_is_miss; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_7_valid = slices_0_io_ms_status_7_valid; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_7_bits_set = slices_0_io_ms_status_7_bits_set; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_7_bits_tag = slices_0_io_ms_status_7_bits_tag; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_7_bits_is_miss = slices_0_io_ms_status_7_bits_is_miss; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_8_valid = slices_0_io_ms_status_8_valid; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_8_bits_set = slices_0_io_ms_status_8_bits_set; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_8_bits_tag = slices_0_io_ms_status_8_bits_tag; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_8_bits_is_miss = slices_0_io_ms_status_8_bits_is_miss; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_9_valid = slices_0_io_ms_status_9_valid; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_9_bits_set = slices_0_io_ms_status_9_bits_set; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_9_bits_tag = slices_0_io_ms_status_9_bits_tag; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_9_bits_is_miss = slices_0_io_ms_status_9_bits_is_miss; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_10_valid = slices_0_io_ms_status_10_valid; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_10_bits_set = slices_0_io_ms_status_10_bits_set; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_10_bits_tag = slices_0_io_ms_status_10_bits_tag; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_10_bits_is_miss = slices_0_io_ms_status_10_bits_is_miss; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_11_valid = slices_0_io_ms_status_11_valid; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_11_bits_set = slices_0_io_ms_status_11_bits_set; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_11_bits_tag = slices_0_io_ms_status_11_bits_tag; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_11_bits_is_miss = slices_0_io_ms_status_11_bits_is_miss; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_12_valid = slices_0_io_ms_status_12_valid; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_12_bits_set = slices_0_io_ms_status_12_bits_set; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_12_bits_tag = slices_0_io_ms_status_12_bits_tag; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_12_bits_is_miss = slices_0_io_ms_status_12_bits_is_miss; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_13_valid = slices_0_io_ms_status_13_valid; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_13_bits_set = slices_0_io_ms_status_13_bits_set; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_13_bits_tag = slices_0_io_ms_status_13_bits_tag; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_13_bits_is_miss = slices_0_io_ms_status_13_bits_is_miss; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_14_valid = slices_0_io_ms_status_14_valid; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_14_bits_set = slices_0_io_ms_status_14_bits_set; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_14_bits_tag = slices_0_io_ms_status_14_bits_tag; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_14_bits_is_miss = slices_0_io_ms_status_14_bits_is_miss; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_15_valid = slices_0_io_ms_status_15_valid; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_15_bits_set = slices_0_io_ms_status_15_bits_set; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_15_bits_tag = slices_0_io_ms_status_15_bits_tag; // @[HuanCun.scala 422:30]
  assign topDown_io_msStatus_0_15_bits_is_miss = slices_0_io_ms_status_15_bits_is_miss; // @[HuanCun.scala 422:30]
  assign topDown_rob_head_paddr_0_valid = sourcePaddr_valid;
  assign topDown_rob_head_paddr_0_bits = sourcePaddr_bits;
endmodule

