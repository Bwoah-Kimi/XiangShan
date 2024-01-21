module CoupledL2(
  input          clock,
  input          reset,
  output         auto_in_1_a_ready,
  input          auto_in_1_a_valid,
  input  [2:0]   auto_in_1_a_bits_opcode,
  input  [2:0]   auto_in_1_a_bits_param,
  input  [2:0]   auto_in_1_a_bits_size,
  input  [4:0]   auto_in_1_a_bits_source,
  input  [35:0]  auto_in_1_a_bits_address,
  input  [32:0]  auto_in_1_a_bits_user_vaddr,
  input  [3:0]   auto_in_1_a_bits_user_reqSource,
  input          auto_in_1_a_bits_user_needHint,
  input  [31:0]  auto_in_1_a_bits_mask,
  input  [255:0] auto_in_1_a_bits_data,
  input          auto_in_1_a_bits_corrupt,
  input          auto_in_1_bready,
  output         auto_in_1_bvalid,
  output [2:0]   auto_in_1_bopcode,
  output [1:0]   auto_in_1_bparam,
  output [2:0]   auto_in_1_bsize,
  output [4:0]   auto_in_1_bsource,
  output [35:0]  auto_in_1_baddress,
  output [31:0]  auto_in_1_bmask,
  output [255:0] auto_in_1_bdata,
  output         auto_in_1_c_ready,
  input          auto_in_1_c_valid,
  input  [2:0]   auto_in_1_c_bits_opcode,
  input  [2:0]   auto_in_1_c_bits_param,
  input  [2:0]   auto_in_1_c_bits_size,
  input  [4:0]   auto_in_1_c_bits_source,
  input  [35:0]  auto_in_1_c_bits_address,
  input  [32:0]  auto_in_1_c_bits_user_vaddr,
  input  [3:0]   auto_in_1_c_bits_user_reqSource,
  input          auto_in_1_c_bits_user_needHint,
  input  [255:0] auto_in_1_c_bits_data,
  input          auto_in_1_c_bits_corrupt,
  input          auto_in_1_d_ready,
  output         auto_in_1_d_valid,
  output [2:0]   auto_in_1_d_bits_opcode,
  output [1:0]   auto_in_1_d_bits_param,
  output [2:0]   auto_in_1_d_bits_size,
  output [4:0]   auto_in_1_d_bits_source,
  output [7:0]   auto_in_1_d_bits_sink,
  output         auto_in_1_d_bits_denied,
  output [255:0] auto_in_1_d_bits_data,
  output         auto_in_1_d_bits_corrupt,
  output         auto_in_1_e_ready,
  input          auto_in_1_e_valid,
  input  [7:0]   auto_in_1_e_bits_sink,
  output         auto_in_0_a_ready,
  input          auto_in_0_a_valid,
  input  [2:0]   auto_in_0_a_bits_opcode,
  input  [2:0]   auto_in_0_a_bits_param,
  input  [2:0]   auto_in_0_a_bits_size,
  input  [4:0]   auto_in_0_a_bits_source,
  input  [35:0]  auto_in_0_a_bits_address,
  input  [32:0]  auto_in_0_a_bits_user_vaddr,
  input  [3:0]   auto_in_0_a_bits_user_reqSource,
  input          auto_in_0_a_bits_user_needHint,
  input  [31:0]  auto_in_0_a_bits_mask,
  input  [255:0] auto_in_0_a_bits_data,
  input          auto_in_0_a_bits_corrupt,
  input          auto_in_0_bready,
  output         auto_in_0_bvalid,
  output [2:0]   auto_in_0_bopcode,
  output [1:0]   auto_in_0_bparam,
  output [2:0]   auto_in_0_bsize,
  output [4:0]   auto_in_0_bsource,
  output [35:0]  auto_in_0_baddress,
  output [31:0]  auto_in_0_bmask,
  output [255:0] auto_in_0_bdata,
  output         auto_in_0_c_ready,
  input          auto_in_0_c_valid,
  input  [2:0]   auto_in_0_c_bits_opcode,
  input  [2:0]   auto_in_0_c_bits_param,
  input  [2:0]   auto_in_0_c_bits_size,
  input  [4:0]   auto_in_0_c_bits_source,
  input  [35:0]  auto_in_0_c_bits_address,
  input  [32:0]  auto_in_0_c_bits_user_vaddr,
  input  [3:0]   auto_in_0_c_bits_user_reqSource,
  input          auto_in_0_c_bits_user_needHint,
  input  [255:0] auto_in_0_c_bits_data,
  input          auto_in_0_c_bits_corrupt,
  input          auto_in_0_d_ready,
  output         auto_in_0_d_valid,
  output [2:0]   auto_in_0_d_bits_opcode,
  output [1:0]   auto_in_0_d_bits_param,
  output [2:0]   auto_in_0_d_bits_size,
  output [4:0]   auto_in_0_d_bits_source,
  output [7:0]   auto_in_0_d_bits_sink,
  output         auto_in_0_d_bits_denied,
  output [255:0] auto_in_0_d_bits_data,
  output         auto_in_0_d_bits_corrupt,
  output         auto_in_0_e_ready,
  input          auto_in_0_e_valid,
  input  [7:0]   auto_in_0_e_bits_sink,
  input          auto_out_1_a_ready,
  output         auto_out_1_a_valid,
  output [2:0]   auto_out_1_a_bits_opcode,
  output [2:0]   auto_out_1_a_bits_param,
  output [2:0]   auto_out_1_a_bits_size,
  output [7:0]   auto_out_1_a_bits_source,
  output [35:0]  auto_out_1_a_bits_address,
  output [31:0]  auto_out_1_a_bits_mask,
  output [255:0] auto_out_1_a_bits_data,
  output         auto_out_1_bready,
  input          auto_out_1_bvalid,
  input  [2:0]   auto_out_1_bopcode,
  input  [1:0]   auto_out_1_bparam,
  input  [2:0]   auto_out_1_bsize,
  input  [7:0]   auto_out_1_bsource,
  input  [35:0]  auto_out_1_baddress,
  input  [31:0]  auto_out_1_bmask,
  input  [255:0] auto_out_1_bdata,
  input          auto_out_1_bcorrupt,
  input          auto_out_1_c_ready,
  output         auto_out_1_c_valid,
  output [2:0]   auto_out_1_c_bits_opcode,
  output [2:0]   auto_out_1_c_bits_param,
  output [2:0]   auto_out_1_c_bits_size,
  output [7:0]   auto_out_1_c_bits_source,
  output [35:0]  auto_out_1_c_bits_address,
  output         auto_out_1_c_bits_echo_blockisdirty,
  output [255:0] auto_out_1_c_bits_data,
  output         auto_out_1_d_ready,
  input          auto_out_1_d_valid,
  input  [2:0]   auto_out_1_d_bits_opcode,
  input  [1:0]   auto_out_1_d_bits_param,
  input  [2:0]   auto_out_1_d_bits_size,
  input  [7:0]   auto_out_1_d_bits_source,
  input  [3:0]   auto_out_1_d_bits_sink,
  input          auto_out_1_d_bits_denied,
  input          auto_out_1_d_bits_echo_blockisdirty,
  input  [255:0] auto_out_1_d_bits_data,
  input          auto_out_1_d_bits_corrupt,
  input          auto_out_1_e_ready,
  output         auto_out_1_e_valid,
  output [3:0]   auto_out_1_e_bits_sink,
  input          auto_out_0_a_ready,
  output         auto_out_0_a_valid,
  output [2:0]   auto_out_0_a_bits_opcode,
  output [2:0]   auto_out_0_a_bits_param,
  output [2:0]   auto_out_0_a_bits_size,
  output [7:0]   auto_out_0_a_bits_source,
  output [35:0]  auto_out_0_a_bits_address,
  output [31:0]  auto_out_0_a_bits_mask,
  output [255:0] auto_out_0_a_bits_data,
  output         auto_out_0_bready,
  input          auto_out_0_bvalid,
  input  [2:0]   auto_out_0_bopcode,
  input  [1:0]   auto_out_0_bparam,
  input  [2:0]   auto_out_0_bsize,
  input  [7:0]   auto_out_0_bsource,
  input  [35:0]  auto_out_0_baddress,
  input  [31:0]  auto_out_0_bmask,
  input  [255:0] auto_out_0_bdata,
  input          auto_out_0_bcorrupt,
  input          auto_out_0_c_ready,
  output         auto_out_0_c_valid,
  output [2:0]   auto_out_0_c_bits_opcode,
  output [2:0]   auto_out_0_c_bits_param,
  output [2:0]   auto_out_0_c_bits_size,
  output [7:0]   auto_out_0_c_bits_source,
  output [35:0]  auto_out_0_c_bits_address,
  output         auto_out_0_c_bits_echo_blockisdirty,
  output [255:0] auto_out_0_c_bits_data,
  output         auto_out_0_d_ready,
  input          auto_out_0_d_valid,
  input  [2:0]   auto_out_0_d_bits_opcode,
  input  [1:0]   auto_out_0_d_bits_param,
  input  [2:0]   auto_out_0_d_bits_size,
  input  [7:0]   auto_out_0_d_bits_source,
  input  [3:0]   auto_out_0_d_bits_sink,
  input          auto_out_0_d_bits_denied,
  input          auto_out_0_d_bits_echo_blockisdirty,
  input  [255:0] auto_out_0_d_bits_data,
  input          auto_out_0_d_bits_corrupt,
  input          auto_out_0_e_ready,
  output         auto_out_0_e_valid,
  output [3:0]   auto_out_0_e_bits_sink,
  output         io_l2_hint_valid,
  output [31:0]  io_l2_hint_bits,
  input          sourcePaddr_valid,
  input  [35:0]  sourcePaddr_bits
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire  slices_0_clock; // @[CoupledL2.scala 311:17]
  wire  slices_0_reset; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_in_a_ready; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_in_a_valid; // @[CoupledL2.scala 311:17]
  wire [2:0] slices_0_io_in_a_bits_opcode; // @[CoupledL2.scala 311:17]
  wire [2:0] slices_0_io_in_a_bits_param; // @[CoupledL2.scala 311:17]
  wire [2:0] slices_0_io_in_a_bits_size; // @[CoupledL2.scala 311:17]
  wire [4:0] slices_0_io_in_a_bits_source; // @[CoupledL2.scala 311:17]
  wire [35:0] slices_0_io_in_a_bits_address; // @[CoupledL2.scala 311:17]
  wire [1:0] slices_0_io_in_a_bits_user_alias; // @[CoupledL2.scala 311:17]
  wire [32:0] slices_0_io_in_a_bits_user_vaddr; // @[CoupledL2.scala 311:17]
  wire [3:0] slices_0_io_in_a_bits_user_reqSource; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_in_a_bits_user_needHint; // @[CoupledL2.scala 311:17]
  wire [31:0] slices_0_io_in_a_bits_mask; // @[CoupledL2.scala 311:17]
  wire [255:0] slices_0_io_in_a_bits_data; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_in_a_bits_corrupt; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_in_bready; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_in_bvalid; // @[CoupledL2.scala 311:17]
  wire [2:0] slices_0_io_in_bopcode; // @[CoupledL2.scala 311:17]
  wire [1:0] slices_0_io_in_bparam; // @[CoupledL2.scala 311:17]
  wire [2:0] slices_0_io_in_bsize; // @[CoupledL2.scala 311:17]
  wire [4:0] slices_0_io_in_bsource; // @[CoupledL2.scala 311:17]
  wire [35:0] slices_0_io_in_baddress; // @[CoupledL2.scala 311:17]
  wire [31:0] slices_0_io_in_bmask; // @[CoupledL2.scala 311:17]
  wire [255:0] slices_0_io_in_bdata; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_in_bcorrupt; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_in_c_ready; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_in_c_valid; // @[CoupledL2.scala 311:17]
  wire [2:0] slices_0_io_in_c_bits_opcode; // @[CoupledL2.scala 311:17]
  wire [2:0] slices_0_io_in_c_bits_param; // @[CoupledL2.scala 311:17]
  wire [2:0] slices_0_io_in_c_bits_size; // @[CoupledL2.scala 311:17]
  wire [4:0] slices_0_io_in_c_bits_source; // @[CoupledL2.scala 311:17]
  wire [35:0] slices_0_io_in_c_bits_address; // @[CoupledL2.scala 311:17]
  wire [1:0] slices_0_io_in_c_bits_user_alias; // @[CoupledL2.scala 311:17]
  wire [32:0] slices_0_io_in_c_bits_user_vaddr; // @[CoupledL2.scala 311:17]
  wire [3:0] slices_0_io_in_c_bits_user_reqSource; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_in_c_bits_user_needHint; // @[CoupledL2.scala 311:17]
  wire [255:0] slices_0_io_in_c_bits_data; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_in_c_bits_corrupt; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_in_d_ready; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_in_d_valid; // @[CoupledL2.scala 311:17]
  wire [2:0] slices_0_io_in_d_bits_opcode; // @[CoupledL2.scala 311:17]
  wire [1:0] slices_0_io_in_d_bits_param; // @[CoupledL2.scala 311:17]
  wire [2:0] slices_0_io_in_d_bits_size; // @[CoupledL2.scala 311:17]
  wire [4:0] slices_0_io_in_d_bits_source; // @[CoupledL2.scala 311:17]
  wire [7:0] slices_0_io_in_d_bits_sink; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_in_d_bits_denied; // @[CoupledL2.scala 311:17]
  wire [255:0] slices_0_io_in_d_bits_data; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_in_d_bits_corrupt; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_in_e_ready; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_in_e_valid; // @[CoupledL2.scala 311:17]
  wire [7:0] slices_0_io_in_e_bits_sink; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_out_a_ready; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_out_a_valid; // @[CoupledL2.scala 311:17]
  wire [2:0] slices_0_io_out_a_bits_opcode; // @[CoupledL2.scala 311:17]
  wire [2:0] slices_0_io_out_a_bits_param; // @[CoupledL2.scala 311:17]
  wire [2:0] slices_0_io_out_a_bits_size; // @[CoupledL2.scala 311:17]
  wire [7:0] slices_0_io_out_a_bits_source; // @[CoupledL2.scala 311:17]
  wire [35:0] slices_0_io_out_a_bits_address; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_out_a_bits_echo_blockisdirty; // @[CoupledL2.scala 311:17]
  wire [31:0] slices_0_io_out_a_bits_mask; // @[CoupledL2.scala 311:17]
  wire [255:0] slices_0_io_out_a_bits_data; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_out_a_bits_corrupt; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_out_bready; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_out_bvalid; // @[CoupledL2.scala 311:17]
  wire [2:0] slices_0_io_out_bopcode; // @[CoupledL2.scala 311:17]
  wire [1:0] slices_0_io_out_bparam; // @[CoupledL2.scala 311:17]
  wire [2:0] slices_0_io_out_bsize; // @[CoupledL2.scala 311:17]
  wire [7:0] slices_0_io_out_bsource; // @[CoupledL2.scala 311:17]
  wire [35:0] slices_0_io_out_baddress; // @[CoupledL2.scala 311:17]
  wire [31:0] slices_0_io_out_bmask; // @[CoupledL2.scala 311:17]
  wire [255:0] slices_0_io_out_bdata; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_out_bcorrupt; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_out_c_ready; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_out_c_valid; // @[CoupledL2.scala 311:17]
  wire [2:0] slices_0_io_out_c_bits_opcode; // @[CoupledL2.scala 311:17]
  wire [2:0] slices_0_io_out_c_bits_param; // @[CoupledL2.scala 311:17]
  wire [2:0] slices_0_io_out_c_bits_size; // @[CoupledL2.scala 311:17]
  wire [7:0] slices_0_io_out_c_bits_source; // @[CoupledL2.scala 311:17]
  wire [35:0] slices_0_io_out_c_bits_address; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_out_c_bits_echo_blockisdirty; // @[CoupledL2.scala 311:17]
  wire [255:0] slices_0_io_out_c_bits_data; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_out_c_bits_corrupt; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_out_d_ready; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_out_d_valid; // @[CoupledL2.scala 311:17]
  wire [2:0] slices_0_io_out_d_bits_opcode; // @[CoupledL2.scala 311:17]
  wire [1:0] slices_0_io_out_d_bits_param; // @[CoupledL2.scala 311:17]
  wire [2:0] slices_0_io_out_d_bits_size; // @[CoupledL2.scala 311:17]
  wire [7:0] slices_0_io_out_d_bits_source; // @[CoupledL2.scala 311:17]
  wire [3:0] slices_0_io_out_d_bits_sink; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_out_d_bits_denied; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_out_d_bits_echo_blockisdirty; // @[CoupledL2.scala 311:17]
  wire [255:0] slices_0_io_out_d_bits_data; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_out_d_bits_corrupt; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_out_e_ready; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_out_e_valid; // @[CoupledL2.scala 311:17]
  wire [3:0] slices_0_io_out_e_bits_sink; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_l1Hint_valid; // @[CoupledL2.scala 311:17]
  wire [31:0] slices_0_io_l1Hint_bits_sourceId; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_msStatus_0_valid; // @[CoupledL2.scala 311:17]
  wire [6:0] slices_0_io_msStatus_0_bits_set; // @[CoupledL2.scala 311:17]
  wire [21:0] slices_0_io_msStatus_0_bits_reqTag; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_msStatus_0_bits_is_miss; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_msStatus_1_valid; // @[CoupledL2.scala 311:17]
  wire [6:0] slices_0_io_msStatus_1_bits_set; // @[CoupledL2.scala 311:17]
  wire [21:0] slices_0_io_msStatus_1_bits_reqTag; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_msStatus_1_bits_is_miss; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_msStatus_2_valid; // @[CoupledL2.scala 311:17]
  wire [6:0] slices_0_io_msStatus_2_bits_set; // @[CoupledL2.scala 311:17]
  wire [21:0] slices_0_io_msStatus_2_bits_reqTag; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_msStatus_2_bits_is_miss; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_msStatus_3_valid; // @[CoupledL2.scala 311:17]
  wire [6:0] slices_0_io_msStatus_3_bits_set; // @[CoupledL2.scala 311:17]
  wire [21:0] slices_0_io_msStatus_3_bits_reqTag; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_msStatus_3_bits_is_miss; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_msStatus_4_valid; // @[CoupledL2.scala 311:17]
  wire [6:0] slices_0_io_msStatus_4_bits_set; // @[CoupledL2.scala 311:17]
  wire [21:0] slices_0_io_msStatus_4_bits_reqTag; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_msStatus_4_bits_is_miss; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_msStatus_5_valid; // @[CoupledL2.scala 311:17]
  wire [6:0] slices_0_io_msStatus_5_bits_set; // @[CoupledL2.scala 311:17]
  wire [21:0] slices_0_io_msStatus_5_bits_reqTag; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_msStatus_5_bits_is_miss; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_msStatus_6_valid; // @[CoupledL2.scala 311:17]
  wire [6:0] slices_0_io_msStatus_6_bits_set; // @[CoupledL2.scala 311:17]
  wire [21:0] slices_0_io_msStatus_6_bits_reqTag; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_msStatus_6_bits_is_miss; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_msStatus_7_valid; // @[CoupledL2.scala 311:17]
  wire [6:0] slices_0_io_msStatus_7_bits_set; // @[CoupledL2.scala 311:17]
  wire [21:0] slices_0_io_msStatus_7_bits_reqTag; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_msStatus_7_bits_is_miss; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_msStatus_8_valid; // @[CoupledL2.scala 311:17]
  wire [6:0] slices_0_io_msStatus_8_bits_set; // @[CoupledL2.scala 311:17]
  wire [21:0] slices_0_io_msStatus_8_bits_reqTag; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_msStatus_8_bits_is_miss; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_msStatus_9_valid; // @[CoupledL2.scala 311:17]
  wire [6:0] slices_0_io_msStatus_9_bits_set; // @[CoupledL2.scala 311:17]
  wire [21:0] slices_0_io_msStatus_9_bits_reqTag; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_msStatus_9_bits_is_miss; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_msStatus_10_valid; // @[CoupledL2.scala 311:17]
  wire [6:0] slices_0_io_msStatus_10_bits_set; // @[CoupledL2.scala 311:17]
  wire [21:0] slices_0_io_msStatus_10_bits_reqTag; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_msStatus_10_bits_is_miss; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_msStatus_11_valid; // @[CoupledL2.scala 311:17]
  wire [6:0] slices_0_io_msStatus_11_bits_set; // @[CoupledL2.scala 311:17]
  wire [21:0] slices_0_io_msStatus_11_bits_reqTag; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_msStatus_11_bits_is_miss; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_msStatus_12_valid; // @[CoupledL2.scala 311:17]
  wire [6:0] slices_0_io_msStatus_12_bits_set; // @[CoupledL2.scala 311:17]
  wire [21:0] slices_0_io_msStatus_12_bits_reqTag; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_msStatus_12_bits_is_miss; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_msStatus_13_valid; // @[CoupledL2.scala 311:17]
  wire [6:0] slices_0_io_msStatus_13_bits_set; // @[CoupledL2.scala 311:17]
  wire [21:0] slices_0_io_msStatus_13_bits_reqTag; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_msStatus_13_bits_is_miss; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_msStatus_14_valid; // @[CoupledL2.scala 311:17]
  wire [6:0] slices_0_io_msStatus_14_bits_set; // @[CoupledL2.scala 311:17]
  wire [21:0] slices_0_io_msStatus_14_bits_reqTag; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_msStatus_14_bits_is_miss; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_msStatus_15_valid; // @[CoupledL2.scala 311:17]
  wire [6:0] slices_0_io_msStatus_15_bits_set; // @[CoupledL2.scala 311:17]
  wire [21:0] slices_0_io_msStatus_15_bits_reqTag; // @[CoupledL2.scala 311:17]
  wire  slices_0_io_msStatus_15_bits_is_miss; // @[CoupledL2.scala 311:17]
  wire  slices_1_clock; // @[CoupledL2.scala 311:17]
  wire  slices_1_reset; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_in_a_ready; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_in_a_valid; // @[CoupledL2.scala 311:17]
  wire [2:0] slices_1_io_in_a_bits_opcode; // @[CoupledL2.scala 311:17]
  wire [2:0] slices_1_io_in_a_bits_param; // @[CoupledL2.scala 311:17]
  wire [2:0] slices_1_io_in_a_bits_size; // @[CoupledL2.scala 311:17]
  wire [4:0] slices_1_io_in_a_bits_source; // @[CoupledL2.scala 311:17]
  wire [35:0] slices_1_io_in_a_bits_address; // @[CoupledL2.scala 311:17]
  wire [1:0] slices_1_io_in_a_bits_user_alias; // @[CoupledL2.scala 311:17]
  wire [32:0] slices_1_io_in_a_bits_user_vaddr; // @[CoupledL2.scala 311:17]
  wire [3:0] slices_1_io_in_a_bits_user_reqSource; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_in_a_bits_user_needHint; // @[CoupledL2.scala 311:17]
  wire [31:0] slices_1_io_in_a_bits_mask; // @[CoupledL2.scala 311:17]
  wire [255:0] slices_1_io_in_a_bits_data; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_in_a_bits_corrupt; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_in_bready; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_in_bvalid; // @[CoupledL2.scala 311:17]
  wire [2:0] slices_1_io_in_bopcode; // @[CoupledL2.scala 311:17]
  wire [1:0] slices_1_io_in_bparam; // @[CoupledL2.scala 311:17]
  wire [2:0] slices_1_io_in_bsize; // @[CoupledL2.scala 311:17]
  wire [4:0] slices_1_io_in_bsource; // @[CoupledL2.scala 311:17]
  wire [35:0] slices_1_io_in_baddress; // @[CoupledL2.scala 311:17]
  wire [31:0] slices_1_io_in_bmask; // @[CoupledL2.scala 311:17]
  wire [255:0] slices_1_io_in_bdata; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_in_bcorrupt; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_in_c_ready; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_in_c_valid; // @[CoupledL2.scala 311:17]
  wire [2:0] slices_1_io_in_c_bits_opcode; // @[CoupledL2.scala 311:17]
  wire [2:0] slices_1_io_in_c_bits_param; // @[CoupledL2.scala 311:17]
  wire [2:0] slices_1_io_in_c_bits_size; // @[CoupledL2.scala 311:17]
  wire [4:0] slices_1_io_in_c_bits_source; // @[CoupledL2.scala 311:17]
  wire [35:0] slices_1_io_in_c_bits_address; // @[CoupledL2.scala 311:17]
  wire [1:0] slices_1_io_in_c_bits_user_alias; // @[CoupledL2.scala 311:17]
  wire [32:0] slices_1_io_in_c_bits_user_vaddr; // @[CoupledL2.scala 311:17]
  wire [3:0] slices_1_io_in_c_bits_user_reqSource; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_in_c_bits_user_needHint; // @[CoupledL2.scala 311:17]
  wire [255:0] slices_1_io_in_c_bits_data; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_in_c_bits_corrupt; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_in_d_ready; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_in_d_valid; // @[CoupledL2.scala 311:17]
  wire [2:0] slices_1_io_in_d_bits_opcode; // @[CoupledL2.scala 311:17]
  wire [1:0] slices_1_io_in_d_bits_param; // @[CoupledL2.scala 311:17]
  wire [2:0] slices_1_io_in_d_bits_size; // @[CoupledL2.scala 311:17]
  wire [4:0] slices_1_io_in_d_bits_source; // @[CoupledL2.scala 311:17]
  wire [7:0] slices_1_io_in_d_bits_sink; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_in_d_bits_denied; // @[CoupledL2.scala 311:17]
  wire [255:0] slices_1_io_in_d_bits_data; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_in_d_bits_corrupt; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_in_e_ready; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_in_e_valid; // @[CoupledL2.scala 311:17]
  wire [7:0] slices_1_io_in_e_bits_sink; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_out_a_ready; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_out_a_valid; // @[CoupledL2.scala 311:17]
  wire [2:0] slices_1_io_out_a_bits_opcode; // @[CoupledL2.scala 311:17]
  wire [2:0] slices_1_io_out_a_bits_param; // @[CoupledL2.scala 311:17]
  wire [2:0] slices_1_io_out_a_bits_size; // @[CoupledL2.scala 311:17]
  wire [7:0] slices_1_io_out_a_bits_source; // @[CoupledL2.scala 311:17]
  wire [35:0] slices_1_io_out_a_bits_address; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_out_a_bits_echo_blockisdirty; // @[CoupledL2.scala 311:17]
  wire [31:0] slices_1_io_out_a_bits_mask; // @[CoupledL2.scala 311:17]
  wire [255:0] slices_1_io_out_a_bits_data; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_out_a_bits_corrupt; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_out_bready; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_out_bvalid; // @[CoupledL2.scala 311:17]
  wire [2:0] slices_1_io_out_bopcode; // @[CoupledL2.scala 311:17]
  wire [1:0] slices_1_io_out_bparam; // @[CoupledL2.scala 311:17]
  wire [2:0] slices_1_io_out_bsize; // @[CoupledL2.scala 311:17]
  wire [7:0] slices_1_io_out_bsource; // @[CoupledL2.scala 311:17]
  wire [35:0] slices_1_io_out_baddress; // @[CoupledL2.scala 311:17]
  wire [31:0] slices_1_io_out_bmask; // @[CoupledL2.scala 311:17]
  wire [255:0] slices_1_io_out_bdata; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_out_bcorrupt; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_out_c_ready; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_out_c_valid; // @[CoupledL2.scala 311:17]
  wire [2:0] slices_1_io_out_c_bits_opcode; // @[CoupledL2.scala 311:17]
  wire [2:0] slices_1_io_out_c_bits_param; // @[CoupledL2.scala 311:17]
  wire [2:0] slices_1_io_out_c_bits_size; // @[CoupledL2.scala 311:17]
  wire [7:0] slices_1_io_out_c_bits_source; // @[CoupledL2.scala 311:17]
  wire [35:0] slices_1_io_out_c_bits_address; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_out_c_bits_echo_blockisdirty; // @[CoupledL2.scala 311:17]
  wire [255:0] slices_1_io_out_c_bits_data; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_out_c_bits_corrupt; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_out_d_ready; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_out_d_valid; // @[CoupledL2.scala 311:17]
  wire [2:0] slices_1_io_out_d_bits_opcode; // @[CoupledL2.scala 311:17]
  wire [1:0] slices_1_io_out_d_bits_param; // @[CoupledL2.scala 311:17]
  wire [2:0] slices_1_io_out_d_bits_size; // @[CoupledL2.scala 311:17]
  wire [7:0] slices_1_io_out_d_bits_source; // @[CoupledL2.scala 311:17]
  wire [3:0] slices_1_io_out_d_bits_sink; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_out_d_bits_denied; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_out_d_bits_echo_blockisdirty; // @[CoupledL2.scala 311:17]
  wire [255:0] slices_1_io_out_d_bits_data; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_out_d_bits_corrupt; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_out_e_ready; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_out_e_valid; // @[CoupledL2.scala 311:17]
  wire [3:0] slices_1_io_out_e_bits_sink; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_l1Hint_valid; // @[CoupledL2.scala 311:17]
  wire [31:0] slices_1_io_l1Hint_bits_sourceId; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_msStatus_0_valid; // @[CoupledL2.scala 311:17]
  wire [6:0] slices_1_io_msStatus_0_bits_set; // @[CoupledL2.scala 311:17]
  wire [21:0] slices_1_io_msStatus_0_bits_reqTag; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_msStatus_0_bits_is_miss; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_msStatus_1_valid; // @[CoupledL2.scala 311:17]
  wire [6:0] slices_1_io_msStatus_1_bits_set; // @[CoupledL2.scala 311:17]
  wire [21:0] slices_1_io_msStatus_1_bits_reqTag; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_msStatus_1_bits_is_miss; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_msStatus_2_valid; // @[CoupledL2.scala 311:17]
  wire [6:0] slices_1_io_msStatus_2_bits_set; // @[CoupledL2.scala 311:17]
  wire [21:0] slices_1_io_msStatus_2_bits_reqTag; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_msStatus_2_bits_is_miss; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_msStatus_3_valid; // @[CoupledL2.scala 311:17]
  wire [6:0] slices_1_io_msStatus_3_bits_set; // @[CoupledL2.scala 311:17]
  wire [21:0] slices_1_io_msStatus_3_bits_reqTag; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_msStatus_3_bits_is_miss; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_msStatus_4_valid; // @[CoupledL2.scala 311:17]
  wire [6:0] slices_1_io_msStatus_4_bits_set; // @[CoupledL2.scala 311:17]
  wire [21:0] slices_1_io_msStatus_4_bits_reqTag; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_msStatus_4_bits_is_miss; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_msStatus_5_valid; // @[CoupledL2.scala 311:17]
  wire [6:0] slices_1_io_msStatus_5_bits_set; // @[CoupledL2.scala 311:17]
  wire [21:0] slices_1_io_msStatus_5_bits_reqTag; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_msStatus_5_bits_is_miss; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_msStatus_6_valid; // @[CoupledL2.scala 311:17]
  wire [6:0] slices_1_io_msStatus_6_bits_set; // @[CoupledL2.scala 311:17]
  wire [21:0] slices_1_io_msStatus_6_bits_reqTag; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_msStatus_6_bits_is_miss; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_msStatus_7_valid; // @[CoupledL2.scala 311:17]
  wire [6:0] slices_1_io_msStatus_7_bits_set; // @[CoupledL2.scala 311:17]
  wire [21:0] slices_1_io_msStatus_7_bits_reqTag; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_msStatus_7_bits_is_miss; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_msStatus_8_valid; // @[CoupledL2.scala 311:17]
  wire [6:0] slices_1_io_msStatus_8_bits_set; // @[CoupledL2.scala 311:17]
  wire [21:0] slices_1_io_msStatus_8_bits_reqTag; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_msStatus_8_bits_is_miss; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_msStatus_9_valid; // @[CoupledL2.scala 311:17]
  wire [6:0] slices_1_io_msStatus_9_bits_set; // @[CoupledL2.scala 311:17]
  wire [21:0] slices_1_io_msStatus_9_bits_reqTag; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_msStatus_9_bits_is_miss; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_msStatus_10_valid; // @[CoupledL2.scala 311:17]
  wire [6:0] slices_1_io_msStatus_10_bits_set; // @[CoupledL2.scala 311:17]
  wire [21:0] slices_1_io_msStatus_10_bits_reqTag; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_msStatus_10_bits_is_miss; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_msStatus_11_valid; // @[CoupledL2.scala 311:17]
  wire [6:0] slices_1_io_msStatus_11_bits_set; // @[CoupledL2.scala 311:17]
  wire [21:0] slices_1_io_msStatus_11_bits_reqTag; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_msStatus_11_bits_is_miss; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_msStatus_12_valid; // @[CoupledL2.scala 311:17]
  wire [6:0] slices_1_io_msStatus_12_bits_set; // @[CoupledL2.scala 311:17]
  wire [21:0] slices_1_io_msStatus_12_bits_reqTag; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_msStatus_12_bits_is_miss; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_msStatus_13_valid; // @[CoupledL2.scala 311:17]
  wire [6:0] slices_1_io_msStatus_13_bits_set; // @[CoupledL2.scala 311:17]
  wire [21:0] slices_1_io_msStatus_13_bits_reqTag; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_msStatus_13_bits_is_miss; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_msStatus_14_valid; // @[CoupledL2.scala 311:17]
  wire [6:0] slices_1_io_msStatus_14_bits_set; // @[CoupledL2.scala 311:17]
  wire [21:0] slices_1_io_msStatus_14_bits_reqTag; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_msStatus_14_bits_is_miss; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_msStatus_15_valid; // @[CoupledL2.scala 311:17]
  wire [6:0] slices_1_io_msStatus_15_bits_set; // @[CoupledL2.scala 311:17]
  wire [21:0] slices_1_io_msStatus_15_bits_reqTag; // @[CoupledL2.scala 311:17]
  wire  slices_1_io_msStatus_15_bits_is_miss; // @[CoupledL2.scala 311:17]
  wire  l1Hint_arb_io_in_0_valid; // @[CoupledL2.scala 362:28]
  wire [31:0] l1Hint_arb_io_in_0_bits_sourceId; // @[CoupledL2.scala 362:28]
  wire  l1Hint_arb_io_in_1_ready; // @[CoupledL2.scala 362:28]
  wire  l1Hint_arb_io_in_1_valid; // @[CoupledL2.scala 362:28]
  wire [31:0] l1Hint_arb_io_in_1_bits_sourceId; // @[CoupledL2.scala 362:28]
  wire  l1Hint_arb_io_out_ready; // @[CoupledL2.scala 362:28]
  wire  l1Hint_arb_io_out_valid; // @[CoupledL2.scala 362:28]
  wire [31:0] l1Hint_arb_io_out_bits_sourceId; // @[CoupledL2.scala 362:28]
  wire  l1Hint_arb_io_chosen; // @[CoupledL2.scala 362:28]
  wire  slices_l1Hint_l1Hint_buffer_0_clock; // @[Pipeline.scala 45:26]
  wire  slices_l1Hint_l1Hint_buffer_0_reset; // @[Pipeline.scala 45:26]
  wire  slices_l1Hint_l1Hint_buffer_0_io_in_valid; // @[Pipeline.scala 45:26]
  wire [31:0] slices_l1Hint_l1Hint_buffer_0_io_in_bits_sourceId; // @[Pipeline.scala 45:26]
  wire  slices_l1Hint_l1Hint_buffer_0_io_out_ready; // @[Pipeline.scala 45:26]
  wire  slices_l1Hint_l1Hint_buffer_0_io_out_valid; // @[Pipeline.scala 45:26]
  wire [31:0] slices_l1Hint_l1Hint_buffer_0_io_out_bits_sourceId; // @[Pipeline.scala 45:26]
  wire  slices_l1Hint_l1Hint_buffer_1_clock; // @[Pipeline.scala 45:26]
  wire  slices_l1Hint_l1Hint_buffer_1_reset; // @[Pipeline.scala 45:26]
  wire  slices_l1Hint_l1Hint_buffer_1_io_in_valid; // @[Pipeline.scala 45:26]
  wire [31:0] slices_l1Hint_l1Hint_buffer_1_io_in_bits_sourceId; // @[Pipeline.scala 45:26]
  wire  slices_l1Hint_l1Hint_buffer_1_io_out_ready; // @[Pipeline.scala 45:26]
  wire  slices_l1Hint_l1Hint_buffer_1_io_out_valid; // @[Pipeline.scala 45:26]
  wire [31:0] slices_l1Hint_l1Hint_buffer_1_io_out_bits_sourceId; // @[Pipeline.scala 45:26]
  wire  topDown_io_msStatus_0_0_valid; // @[CoupledL2.scala 380:45]
  wire [6:0] topDown_io_msStatus_0_0_bits_set; // @[CoupledL2.scala 380:45]
  wire [21:0] topDown_io_msStatus_0_0_bits_reqTag; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_0_0_bits_is_miss; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_0_1_valid; // @[CoupledL2.scala 380:45]
  wire [6:0] topDown_io_msStatus_0_1_bits_set; // @[CoupledL2.scala 380:45]
  wire [21:0] topDown_io_msStatus_0_1_bits_reqTag; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_0_1_bits_is_miss; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_0_2_valid; // @[CoupledL2.scala 380:45]
  wire [6:0] topDown_io_msStatus_0_2_bits_set; // @[CoupledL2.scala 380:45]
  wire [21:0] topDown_io_msStatus_0_2_bits_reqTag; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_0_2_bits_is_miss; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_0_3_valid; // @[CoupledL2.scala 380:45]
  wire [6:0] topDown_io_msStatus_0_3_bits_set; // @[CoupledL2.scala 380:45]
  wire [21:0] topDown_io_msStatus_0_3_bits_reqTag; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_0_3_bits_is_miss; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_0_4_valid; // @[CoupledL2.scala 380:45]
  wire [6:0] topDown_io_msStatus_0_4_bits_set; // @[CoupledL2.scala 380:45]
  wire [21:0] topDown_io_msStatus_0_4_bits_reqTag; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_0_4_bits_is_miss; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_0_5_valid; // @[CoupledL2.scala 380:45]
  wire [6:0] topDown_io_msStatus_0_5_bits_set; // @[CoupledL2.scala 380:45]
  wire [21:0] topDown_io_msStatus_0_5_bits_reqTag; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_0_5_bits_is_miss; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_0_6_valid; // @[CoupledL2.scala 380:45]
  wire [6:0] topDown_io_msStatus_0_6_bits_set; // @[CoupledL2.scala 380:45]
  wire [21:0] topDown_io_msStatus_0_6_bits_reqTag; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_0_6_bits_is_miss; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_0_7_valid; // @[CoupledL2.scala 380:45]
  wire [6:0] topDown_io_msStatus_0_7_bits_set; // @[CoupledL2.scala 380:45]
  wire [21:0] topDown_io_msStatus_0_7_bits_reqTag; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_0_7_bits_is_miss; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_0_8_valid; // @[CoupledL2.scala 380:45]
  wire [6:0] topDown_io_msStatus_0_8_bits_set; // @[CoupledL2.scala 380:45]
  wire [21:0] topDown_io_msStatus_0_8_bits_reqTag; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_0_8_bits_is_miss; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_0_9_valid; // @[CoupledL2.scala 380:45]
  wire [6:0] topDown_io_msStatus_0_9_bits_set; // @[CoupledL2.scala 380:45]
  wire [21:0] topDown_io_msStatus_0_9_bits_reqTag; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_0_9_bits_is_miss; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_0_10_valid; // @[CoupledL2.scala 380:45]
  wire [6:0] topDown_io_msStatus_0_10_bits_set; // @[CoupledL2.scala 380:45]
  wire [21:0] topDown_io_msStatus_0_10_bits_reqTag; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_0_10_bits_is_miss; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_0_11_valid; // @[CoupledL2.scala 380:45]
  wire [6:0] topDown_io_msStatus_0_11_bits_set; // @[CoupledL2.scala 380:45]
  wire [21:0] topDown_io_msStatus_0_11_bits_reqTag; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_0_11_bits_is_miss; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_0_12_valid; // @[CoupledL2.scala 380:45]
  wire [6:0] topDown_io_msStatus_0_12_bits_set; // @[CoupledL2.scala 380:45]
  wire [21:0] topDown_io_msStatus_0_12_bits_reqTag; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_0_12_bits_is_miss; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_0_13_valid; // @[CoupledL2.scala 380:45]
  wire [6:0] topDown_io_msStatus_0_13_bits_set; // @[CoupledL2.scala 380:45]
  wire [21:0] topDown_io_msStatus_0_13_bits_reqTag; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_0_13_bits_is_miss; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_0_14_valid; // @[CoupledL2.scala 380:45]
  wire [6:0] topDown_io_msStatus_0_14_bits_set; // @[CoupledL2.scala 380:45]
  wire [21:0] topDown_io_msStatus_0_14_bits_reqTag; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_0_14_bits_is_miss; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_0_15_valid; // @[CoupledL2.scala 380:45]
  wire [6:0] topDown_io_msStatus_0_15_bits_set; // @[CoupledL2.scala 380:45]
  wire [21:0] topDown_io_msStatus_0_15_bits_reqTag; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_0_15_bits_is_miss; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_1_0_valid; // @[CoupledL2.scala 380:45]
  wire [6:0] topDown_io_msStatus_1_0_bits_set; // @[CoupledL2.scala 380:45]
  wire [21:0] topDown_io_msStatus_1_0_bits_reqTag; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_1_0_bits_is_miss; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_1_1_valid; // @[CoupledL2.scala 380:45]
  wire [6:0] topDown_io_msStatus_1_1_bits_set; // @[CoupledL2.scala 380:45]
  wire [21:0] topDown_io_msStatus_1_1_bits_reqTag; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_1_1_bits_is_miss; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_1_2_valid; // @[CoupledL2.scala 380:45]
  wire [6:0] topDown_io_msStatus_1_2_bits_set; // @[CoupledL2.scala 380:45]
  wire [21:0] topDown_io_msStatus_1_2_bits_reqTag; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_1_2_bits_is_miss; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_1_3_valid; // @[CoupledL2.scala 380:45]
  wire [6:0] topDown_io_msStatus_1_3_bits_set; // @[CoupledL2.scala 380:45]
  wire [21:0] topDown_io_msStatus_1_3_bits_reqTag; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_1_3_bits_is_miss; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_1_4_valid; // @[CoupledL2.scala 380:45]
  wire [6:0] topDown_io_msStatus_1_4_bits_set; // @[CoupledL2.scala 380:45]
  wire [21:0] topDown_io_msStatus_1_4_bits_reqTag; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_1_4_bits_is_miss; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_1_5_valid; // @[CoupledL2.scala 380:45]
  wire [6:0] topDown_io_msStatus_1_5_bits_set; // @[CoupledL2.scala 380:45]
  wire [21:0] topDown_io_msStatus_1_5_bits_reqTag; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_1_5_bits_is_miss; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_1_6_valid; // @[CoupledL2.scala 380:45]
  wire [6:0] topDown_io_msStatus_1_6_bits_set; // @[CoupledL2.scala 380:45]
  wire [21:0] topDown_io_msStatus_1_6_bits_reqTag; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_1_6_bits_is_miss; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_1_7_valid; // @[CoupledL2.scala 380:45]
  wire [6:0] topDown_io_msStatus_1_7_bits_set; // @[CoupledL2.scala 380:45]
  wire [21:0] topDown_io_msStatus_1_7_bits_reqTag; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_1_7_bits_is_miss; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_1_8_valid; // @[CoupledL2.scala 380:45]
  wire [6:0] topDown_io_msStatus_1_8_bits_set; // @[CoupledL2.scala 380:45]
  wire [21:0] topDown_io_msStatus_1_8_bits_reqTag; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_1_8_bits_is_miss; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_1_9_valid; // @[CoupledL2.scala 380:45]
  wire [6:0] topDown_io_msStatus_1_9_bits_set; // @[CoupledL2.scala 380:45]
  wire [21:0] topDown_io_msStatus_1_9_bits_reqTag; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_1_9_bits_is_miss; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_1_10_valid; // @[CoupledL2.scala 380:45]
  wire [6:0] topDown_io_msStatus_1_10_bits_set; // @[CoupledL2.scala 380:45]
  wire [21:0] topDown_io_msStatus_1_10_bits_reqTag; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_1_10_bits_is_miss; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_1_11_valid; // @[CoupledL2.scala 380:45]
  wire [6:0] topDown_io_msStatus_1_11_bits_set; // @[CoupledL2.scala 380:45]
  wire [21:0] topDown_io_msStatus_1_11_bits_reqTag; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_1_11_bits_is_miss; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_1_12_valid; // @[CoupledL2.scala 380:45]
  wire [6:0] topDown_io_msStatus_1_12_bits_set; // @[CoupledL2.scala 380:45]
  wire [21:0] topDown_io_msStatus_1_12_bits_reqTag; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_1_12_bits_is_miss; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_1_13_valid; // @[CoupledL2.scala 380:45]
  wire [6:0] topDown_io_msStatus_1_13_bits_set; // @[CoupledL2.scala 380:45]
  wire [21:0] topDown_io_msStatus_1_13_bits_reqTag; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_1_13_bits_is_miss; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_1_14_valid; // @[CoupledL2.scala 380:45]
  wire [6:0] topDown_io_msStatus_1_14_bits_set; // @[CoupledL2.scala 380:45]
  wire [21:0] topDown_io_msStatus_1_14_bits_reqTag; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_1_14_bits_is_miss; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_1_15_valid; // @[CoupledL2.scala 380:45]
  wire [6:0] topDown_io_msStatus_1_15_bits_set; // @[CoupledL2.scala 380:45]
  wire [21:0] topDown_io_msStatus_1_15_bits_reqTag; // @[CoupledL2.scala 380:45]
  wire  topDown_io_msStatus_1_15_bits_is_miss; // @[CoupledL2.scala 380:45]
  wire  topDown_rob_head_paddr_0_valid; // @[CoupledL2.scala 380:45]
  wire [35:0] topDown_rob_head_paddr_0_bits; // @[CoupledL2.scala 380:45]
  wire [1:0] hint_chosen = {{1'd0}, l1Hint_arb_io_chosen}; // @[CoupledL2.scala 302:27 377:17]
  reg  sourceD_can_go; // @[CoupledL2.scala 297:16]
  wire  release_sourceD_condition_0 = sourceD_can_go & ~slices_0_io_in_d_valid; // @[CoupledL2.scala 319:56]
  reg  sourceD_can_go_1; // @[CoupledL2.scala 297:16]
  wire  release_sourceD_condition_1 = sourceD_can_go_1 & ~slices_1_io_in_d_valid; // @[CoupledL2.scala 319:56]
  wire [1:0] _bundleIn_0_d_valid_T = {release_sourceD_condition_0,release_sourceD_condition_1}; // @[Cat.scala 31:58]
  wire  _bundleIn_0_d_valid_T_2 = sourceD_can_go | |_bundleIn_0_d_valid_T; // @[CoupledL2.scala 325:64]
  wire [29:0] bundleIn_0_baddress_high = slices_0_io_in_baddress[35:6]; // @[CoupledL2.scala 286:22]
  wire [5:0] bundleIn_0_baddress_low = slices_0_io_in_baddress[5:0]; // @[CoupledL2.scala 287:20]
  wire [36:0] _bundleIn_0_baddress_T = {bundleIn_0_baddress_high,1'h0,bundleIn_0_baddress_low}; // @[Cat.scala 31:58]
  wire [29:0] bundleOut_0_a_bits_address_high = slices_0_io_out_a_bits_address[35:6]; // @[CoupledL2.scala 286:22]
  wire [5:0] bundleOut_0_a_bits_address_low = slices_0_io_out_a_bits_address[5:0]; // @[CoupledL2.scala 287:20]
  wire [36:0] _bundleOut_0_a_bits_address_T = {bundleOut_0_a_bits_address_high,1'h0,bundleOut_0_a_bits_address_low}; // @[Cat.scala 31:58]
  wire [29:0] bundleOut_0_c_bits_address_high = slices_0_io_out_c_bits_address[35:6]; // @[CoupledL2.scala 286:22]
  wire [5:0] bundleOut_0_c_bits_address_low = slices_0_io_out_c_bits_address[5:0]; // @[CoupledL2.scala 287:20]
  wire [36:0] _bundleOut_0_c_bits_address_T = {bundleOut_0_c_bits_address_high,1'h0,bundleOut_0_c_bits_address_low}; // @[Cat.scala 31:58]
  wire  _bundleIn_1_d_valid_T_2 = sourceD_can_go_1 | |_bundleIn_0_d_valid_T; // @[CoupledL2.scala 325:64]
  wire [29:0] bundleIn_1_baddress_high = slices_1_io_in_baddress[35:6]; // @[CoupledL2.scala 286:22]
  wire [5:0] bundleIn_1_baddress_low = slices_1_io_in_baddress[5:0]; // @[CoupledL2.scala 287:20]
  wire [36:0] _bundleIn_1_baddress_T = {bundleIn_1_baddress_high,1'h1,bundleIn_1_baddress_low}; // @[Cat.scala 31:58]
  wire [29:0] bundleOut_1_a_bits_address_high = slices_1_io_out_a_bits_address[35:6]; // @[CoupledL2.scala 286:22]
  wire [5:0] bundleOut_1_a_bits_address_low = slices_1_io_out_a_bits_address[5:0]; // @[CoupledL2.scala 287:20]
  wire [36:0] _bundleOut_1_a_bits_address_T = {bundleOut_1_a_bits_address_high,1'h1,bundleOut_1_a_bits_address_low}; // @[Cat.scala 31:58]
  wire [29:0] bundleOut_1_c_bits_address_high = slices_1_io_out_c_bits_address[35:6]; // @[CoupledL2.scala 286:22]
  wire [5:0] bundleOut_1_c_bits_address_low = slices_1_io_out_c_bits_address[5:0]; // @[CoupledL2.scala 287:20]
  wire [36:0] _bundleOut_1_c_bits_address_T = {bundleOut_1_c_bits_address_high,1'h1,bundleOut_1_c_bits_address_low}; // @[Cat.scala 31:58]
  wire [31:0] _uncommonBits_T = l1Hint_arb_io_out_bits_sourceId; // @[Parameters.scala 52:29]
  wire  client_sourceId_match_oh_1 = l1Hint_arb_io_out_bits_sourceId[31:2] == 30'h6; // @[Parameters.scala 54:32]
  wire [2:0] uncommonBits_2 = _uncommonBits_T[2:0]; // @[Parameters.scala 52:64]
  wire  _T_11 = l1Hint_arb_io_out_bits_sourceId[31:3] == 29'h2; // @[Parameters.scala 54:32]
  wire  _T_14 = uncommonBits_2 <= 3'h6; // @[Parameters.scala 57:20]
  wire  client_sourceId_match_oh_2 = _T_11 & _T_14; // @[Parameters.scala 56:50]
  wire [4:0] _io_l2_hint_bits_T_1 = client_sourceId_match_oh_1 ? 5'h18 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_l2_hint_bits_T_2 = client_sourceId_match_oh_2 ? 5'h10 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_l2_hint_bits_T_4 = _io_l2_hint_bits_T_1 | _io_l2_hint_bits_T_2; // @[Mux.scala 27:73]
  wire [31:0] _GEN_2 = {{27'd0}, _io_l2_hint_bits_T_4}; // @[CoupledL2.scala 373:56]
  Slice slices_0 ( // @[CoupledL2.scala 311:17]
    .clock(slices_0_clock),
    .reset(slices_0_reset),
    .io_in_a_ready(slices_0_io_in_a_ready),
    .io_in_a_valid(slices_0_io_in_a_valid),
    .io_in_a_bits_opcode(slices_0_io_in_a_bits_opcode),
    .io_in_a_bits_param(slices_0_io_in_a_bits_param),
    .io_in_a_bits_size(slices_0_io_in_a_bits_size),
    .io_in_a_bits_source(slices_0_io_in_a_bits_source),
    .io_in_a_bits_address(slices_0_io_in_a_bits_address),
    .io_in_a_bits_user_alias(slices_0_io_in_a_bits_user_alias),
    .io_in_a_bits_user_vaddr(slices_0_io_in_a_bits_user_vaddr),
    .io_in_a_bits_user_reqSource(slices_0_io_in_a_bits_user_reqSource),
    .io_in_a_bits_user_needHint(slices_0_io_in_a_bits_user_needHint),
    .io_in_a_bits_mask(slices_0_io_in_a_bits_mask),
    .io_in_a_bits_data(slices_0_io_in_a_bits_data),
    .io_in_a_bits_corrupt(slices_0_io_in_a_bits_corrupt),
    .io_in_bready(slices_0_io_in_bready),
    .io_in_bvalid(slices_0_io_in_bvalid),
    .io_in_bopcode(slices_0_io_in_bopcode),
    .io_in_bparam(slices_0_io_in_bparam),
    .io_in_bsize(slices_0_io_in_bsize),
    .io_in_bsource(slices_0_io_in_bsource),
    .io_in_baddress(slices_0_io_in_baddress),
    .io_in_bmask(slices_0_io_in_bmask),
    .io_in_bdata(slices_0_io_in_bdata),
    .io_in_bcorrupt(slices_0_io_in_bcorrupt),
    .io_in_c_ready(slices_0_io_in_c_ready),
    .io_in_c_valid(slices_0_io_in_c_valid),
    .io_in_c_bits_opcode(slices_0_io_in_c_bits_opcode),
    .io_in_c_bits_param(slices_0_io_in_c_bits_param),
    .io_in_c_bits_size(slices_0_io_in_c_bits_size),
    .io_in_c_bits_source(slices_0_io_in_c_bits_source),
    .io_in_c_bits_address(slices_0_io_in_c_bits_address),
    .io_in_c_bits_user_alias(slices_0_io_in_c_bits_user_alias),
    .io_in_c_bits_user_vaddr(slices_0_io_in_c_bits_user_vaddr),
    .io_in_c_bits_user_reqSource(slices_0_io_in_c_bits_user_reqSource),
    .io_in_c_bits_user_needHint(slices_0_io_in_c_bits_user_needHint),
    .io_in_c_bits_data(slices_0_io_in_c_bits_data),
    .io_in_c_bits_corrupt(slices_0_io_in_c_bits_corrupt),
    .io_in_d_ready(slices_0_io_in_d_ready),
    .io_in_d_valid(slices_0_io_in_d_valid),
    .io_in_d_bits_opcode(slices_0_io_in_d_bits_opcode),
    .io_in_d_bits_param(slices_0_io_in_d_bits_param),
    .io_in_d_bits_size(slices_0_io_in_d_bits_size),
    .io_in_d_bits_source(slices_0_io_in_d_bits_source),
    .io_in_d_bits_sink(slices_0_io_in_d_bits_sink),
    .io_in_d_bits_denied(slices_0_io_in_d_bits_denied),
    .io_in_d_bits_data(slices_0_io_in_d_bits_data),
    .io_in_d_bits_corrupt(slices_0_io_in_d_bits_corrupt),
    .io_in_e_ready(slices_0_io_in_e_ready),
    .io_in_e_valid(slices_0_io_in_e_valid),
    .io_in_e_bits_sink(slices_0_io_in_e_bits_sink),
    .io_out_a_ready(slices_0_io_out_a_ready),
    .io_out_a_valid(slices_0_io_out_a_valid),
    .io_out_a_bits_opcode(slices_0_io_out_a_bits_opcode),
    .io_out_a_bits_param(slices_0_io_out_a_bits_param),
    .io_out_a_bits_size(slices_0_io_out_a_bits_size),
    .io_out_a_bits_source(slices_0_io_out_a_bits_source),
    .io_out_a_bits_address(slices_0_io_out_a_bits_address),
    .io_out_a_bits_echo_blockisdirty(slices_0_io_out_a_bits_echo_blockisdirty),
    .io_out_a_bits_mask(slices_0_io_out_a_bits_mask),
    .io_out_a_bits_data(slices_0_io_out_a_bits_data),
    .io_out_a_bits_corrupt(slices_0_io_out_a_bits_corrupt),
    .io_out_bready(slices_0_io_out_bready),
    .io_out_bvalid(slices_0_io_out_bvalid),
    .io_out_bopcode(slices_0_io_out_bopcode),
    .io_out_bparam(slices_0_io_out_bparam),
    .io_out_bsize(slices_0_io_out_bsize),
    .io_out_bsource(slices_0_io_out_bsource),
    .io_out_baddress(slices_0_io_out_baddress),
    .io_out_bmask(slices_0_io_out_bmask),
    .io_out_bdata(slices_0_io_out_bdata),
    .io_out_bcorrupt(slices_0_io_out_bcorrupt),
    .io_out_c_ready(slices_0_io_out_c_ready),
    .io_out_c_valid(slices_0_io_out_c_valid),
    .io_out_c_bits_opcode(slices_0_io_out_c_bits_opcode),
    .io_out_c_bits_param(slices_0_io_out_c_bits_param),
    .io_out_c_bits_size(slices_0_io_out_c_bits_size),
    .io_out_c_bits_source(slices_0_io_out_c_bits_source),
    .io_out_c_bits_address(slices_0_io_out_c_bits_address),
    .io_out_c_bits_echo_blockisdirty(slices_0_io_out_c_bits_echo_blockisdirty),
    .io_out_c_bits_data(slices_0_io_out_c_bits_data),
    .io_out_c_bits_corrupt(slices_0_io_out_c_bits_corrupt),
    .io_out_d_ready(slices_0_io_out_d_ready),
    .io_out_d_valid(slices_0_io_out_d_valid),
    .io_out_d_bits_opcode(slices_0_io_out_d_bits_opcode),
    .io_out_d_bits_param(slices_0_io_out_d_bits_param),
    .io_out_d_bits_size(slices_0_io_out_d_bits_size),
    .io_out_d_bits_source(slices_0_io_out_d_bits_source),
    .io_out_d_bits_sink(slices_0_io_out_d_bits_sink),
    .io_out_d_bits_denied(slices_0_io_out_d_bits_denied),
    .io_out_d_bits_echo_blockisdirty(slices_0_io_out_d_bits_echo_blockisdirty),
    .io_out_d_bits_data(slices_0_io_out_d_bits_data),
    .io_out_d_bits_corrupt(slices_0_io_out_d_bits_corrupt),
    .io_out_e_ready(slices_0_io_out_e_ready),
    .io_out_e_valid(slices_0_io_out_e_valid),
    .io_out_e_bits_sink(slices_0_io_out_e_bits_sink),
    .io_l1Hint_valid(slices_0_io_l1Hint_valid),
    .io_l1Hint_bits_sourceId(slices_0_io_l1Hint_bits_sourceId),
    .io_msStatus_0_valid(slices_0_io_msStatus_0_valid),
    .io_msStatus_0_bits_set(slices_0_io_msStatus_0_bits_set),
    .io_msStatus_0_bits_reqTag(slices_0_io_msStatus_0_bits_reqTag),
    .io_msStatus_0_bits_is_miss(slices_0_io_msStatus_0_bits_is_miss),
    .io_msStatus_1_valid(slices_0_io_msStatus_1_valid),
    .io_msStatus_1_bits_set(slices_0_io_msStatus_1_bits_set),
    .io_msStatus_1_bits_reqTag(slices_0_io_msStatus_1_bits_reqTag),
    .io_msStatus_1_bits_is_miss(slices_0_io_msStatus_1_bits_is_miss),
    .io_msStatus_2_valid(slices_0_io_msStatus_2_valid),
    .io_msStatus_2_bits_set(slices_0_io_msStatus_2_bits_set),
    .io_msStatus_2_bits_reqTag(slices_0_io_msStatus_2_bits_reqTag),
    .io_msStatus_2_bits_is_miss(slices_0_io_msStatus_2_bits_is_miss),
    .io_msStatus_3_valid(slices_0_io_msStatus_3_valid),
    .io_msStatus_3_bits_set(slices_0_io_msStatus_3_bits_set),
    .io_msStatus_3_bits_reqTag(slices_0_io_msStatus_3_bits_reqTag),
    .io_msStatus_3_bits_is_miss(slices_0_io_msStatus_3_bits_is_miss),
    .io_msStatus_4_valid(slices_0_io_msStatus_4_valid),
    .io_msStatus_4_bits_set(slices_0_io_msStatus_4_bits_set),
    .io_msStatus_4_bits_reqTag(slices_0_io_msStatus_4_bits_reqTag),
    .io_msStatus_4_bits_is_miss(slices_0_io_msStatus_4_bits_is_miss),
    .io_msStatus_5_valid(slices_0_io_msStatus_5_valid),
    .io_msStatus_5_bits_set(slices_0_io_msStatus_5_bits_set),
    .io_msStatus_5_bits_reqTag(slices_0_io_msStatus_5_bits_reqTag),
    .io_msStatus_5_bits_is_miss(slices_0_io_msStatus_5_bits_is_miss),
    .io_msStatus_6_valid(slices_0_io_msStatus_6_valid),
    .io_msStatus_6_bits_set(slices_0_io_msStatus_6_bits_set),
    .io_msStatus_6_bits_reqTag(slices_0_io_msStatus_6_bits_reqTag),
    .io_msStatus_6_bits_is_miss(slices_0_io_msStatus_6_bits_is_miss),
    .io_msStatus_7_valid(slices_0_io_msStatus_7_valid),
    .io_msStatus_7_bits_set(slices_0_io_msStatus_7_bits_set),
    .io_msStatus_7_bits_reqTag(slices_0_io_msStatus_7_bits_reqTag),
    .io_msStatus_7_bits_is_miss(slices_0_io_msStatus_7_bits_is_miss),
    .io_msStatus_8_valid(slices_0_io_msStatus_8_valid),
    .io_msStatus_8_bits_set(slices_0_io_msStatus_8_bits_set),
    .io_msStatus_8_bits_reqTag(slices_0_io_msStatus_8_bits_reqTag),
    .io_msStatus_8_bits_is_miss(slices_0_io_msStatus_8_bits_is_miss),
    .io_msStatus_9_valid(slices_0_io_msStatus_9_valid),
    .io_msStatus_9_bits_set(slices_0_io_msStatus_9_bits_set),
    .io_msStatus_9_bits_reqTag(slices_0_io_msStatus_9_bits_reqTag),
    .io_msStatus_9_bits_is_miss(slices_0_io_msStatus_9_bits_is_miss),
    .io_msStatus_10_valid(slices_0_io_msStatus_10_valid),
    .io_msStatus_10_bits_set(slices_0_io_msStatus_10_bits_set),
    .io_msStatus_10_bits_reqTag(slices_0_io_msStatus_10_bits_reqTag),
    .io_msStatus_10_bits_is_miss(slices_0_io_msStatus_10_bits_is_miss),
    .io_msStatus_11_valid(slices_0_io_msStatus_11_valid),
    .io_msStatus_11_bits_set(slices_0_io_msStatus_11_bits_set),
    .io_msStatus_11_bits_reqTag(slices_0_io_msStatus_11_bits_reqTag),
    .io_msStatus_11_bits_is_miss(slices_0_io_msStatus_11_bits_is_miss),
    .io_msStatus_12_valid(slices_0_io_msStatus_12_valid),
    .io_msStatus_12_bits_set(slices_0_io_msStatus_12_bits_set),
    .io_msStatus_12_bits_reqTag(slices_0_io_msStatus_12_bits_reqTag),
    .io_msStatus_12_bits_is_miss(slices_0_io_msStatus_12_bits_is_miss),
    .io_msStatus_13_valid(slices_0_io_msStatus_13_valid),
    .io_msStatus_13_bits_set(slices_0_io_msStatus_13_bits_set),
    .io_msStatus_13_bits_reqTag(slices_0_io_msStatus_13_bits_reqTag),
    .io_msStatus_13_bits_is_miss(slices_0_io_msStatus_13_bits_is_miss),
    .io_msStatus_14_valid(slices_0_io_msStatus_14_valid),
    .io_msStatus_14_bits_set(slices_0_io_msStatus_14_bits_set),
    .io_msStatus_14_bits_reqTag(slices_0_io_msStatus_14_bits_reqTag),
    .io_msStatus_14_bits_is_miss(slices_0_io_msStatus_14_bits_is_miss),
    .io_msStatus_15_valid(slices_0_io_msStatus_15_valid),
    .io_msStatus_15_bits_set(slices_0_io_msStatus_15_bits_set),
    .io_msStatus_15_bits_reqTag(slices_0_io_msStatus_15_bits_reqTag),
    .io_msStatus_15_bits_is_miss(slices_0_io_msStatus_15_bits_is_miss)
  );
  Slice slices_1 ( // @[CoupledL2.scala 311:17]
    .clock(slices_1_clock),
    .reset(slices_1_reset),
    .io_in_a_ready(slices_1_io_in_a_ready),
    .io_in_a_valid(slices_1_io_in_a_valid),
    .io_in_a_bits_opcode(slices_1_io_in_a_bits_opcode),
    .io_in_a_bits_param(slices_1_io_in_a_bits_param),
    .io_in_a_bits_size(slices_1_io_in_a_bits_size),
    .io_in_a_bits_source(slices_1_io_in_a_bits_source),
    .io_in_a_bits_address(slices_1_io_in_a_bits_address),
    .io_in_a_bits_user_alias(slices_1_io_in_a_bits_user_alias),
    .io_in_a_bits_user_vaddr(slices_1_io_in_a_bits_user_vaddr),
    .io_in_a_bits_user_reqSource(slices_1_io_in_a_bits_user_reqSource),
    .io_in_a_bits_user_needHint(slices_1_io_in_a_bits_user_needHint),
    .io_in_a_bits_mask(slices_1_io_in_a_bits_mask),
    .io_in_a_bits_data(slices_1_io_in_a_bits_data),
    .io_in_a_bits_corrupt(slices_1_io_in_a_bits_corrupt),
    .io_in_bready(slices_1_io_in_bready),
    .io_in_bvalid(slices_1_io_in_bvalid),
    .io_in_bopcode(slices_1_io_in_bopcode),
    .io_in_bparam(slices_1_io_in_bparam),
    .io_in_bsize(slices_1_io_in_bsize),
    .io_in_bsource(slices_1_io_in_bsource),
    .io_in_baddress(slices_1_io_in_baddress),
    .io_in_bmask(slices_1_io_in_bmask),
    .io_in_bdata(slices_1_io_in_bdata),
    .io_in_bcorrupt(slices_1_io_in_bcorrupt),
    .io_in_c_ready(slices_1_io_in_c_ready),
    .io_in_c_valid(slices_1_io_in_c_valid),
    .io_in_c_bits_opcode(slices_1_io_in_c_bits_opcode),
    .io_in_c_bits_param(slices_1_io_in_c_bits_param),
    .io_in_c_bits_size(slices_1_io_in_c_bits_size),
    .io_in_c_bits_source(slices_1_io_in_c_bits_source),
    .io_in_c_bits_address(slices_1_io_in_c_bits_address),
    .io_in_c_bits_user_alias(slices_1_io_in_c_bits_user_alias),
    .io_in_c_bits_user_vaddr(slices_1_io_in_c_bits_user_vaddr),
    .io_in_c_bits_user_reqSource(slices_1_io_in_c_bits_user_reqSource),
    .io_in_c_bits_user_needHint(slices_1_io_in_c_bits_user_needHint),
    .io_in_c_bits_data(slices_1_io_in_c_bits_data),
    .io_in_c_bits_corrupt(slices_1_io_in_c_bits_corrupt),
    .io_in_d_ready(slices_1_io_in_d_ready),
    .io_in_d_valid(slices_1_io_in_d_valid),
    .io_in_d_bits_opcode(slices_1_io_in_d_bits_opcode),
    .io_in_d_bits_param(slices_1_io_in_d_bits_param),
    .io_in_d_bits_size(slices_1_io_in_d_bits_size),
    .io_in_d_bits_source(slices_1_io_in_d_bits_source),
    .io_in_d_bits_sink(slices_1_io_in_d_bits_sink),
    .io_in_d_bits_denied(slices_1_io_in_d_bits_denied),
    .io_in_d_bits_data(slices_1_io_in_d_bits_data),
    .io_in_d_bits_corrupt(slices_1_io_in_d_bits_corrupt),
    .io_in_e_ready(slices_1_io_in_e_ready),
    .io_in_e_valid(slices_1_io_in_e_valid),
    .io_in_e_bits_sink(slices_1_io_in_e_bits_sink),
    .io_out_a_ready(slices_1_io_out_a_ready),
    .io_out_a_valid(slices_1_io_out_a_valid),
    .io_out_a_bits_opcode(slices_1_io_out_a_bits_opcode),
    .io_out_a_bits_param(slices_1_io_out_a_bits_param),
    .io_out_a_bits_size(slices_1_io_out_a_bits_size),
    .io_out_a_bits_source(slices_1_io_out_a_bits_source),
    .io_out_a_bits_address(slices_1_io_out_a_bits_address),
    .io_out_a_bits_echo_blockisdirty(slices_1_io_out_a_bits_echo_blockisdirty),
    .io_out_a_bits_mask(slices_1_io_out_a_bits_mask),
    .io_out_a_bits_data(slices_1_io_out_a_bits_data),
    .io_out_a_bits_corrupt(slices_1_io_out_a_bits_corrupt),
    .io_out_bready(slices_1_io_out_bready),
    .io_out_bvalid(slices_1_io_out_bvalid),
    .io_out_bopcode(slices_1_io_out_bopcode),
    .io_out_bparam(slices_1_io_out_bparam),
    .io_out_bsize(slices_1_io_out_bsize),
    .io_out_bsource(slices_1_io_out_bsource),
    .io_out_baddress(slices_1_io_out_baddress),
    .io_out_bmask(slices_1_io_out_bmask),
    .io_out_bdata(slices_1_io_out_bdata),
    .io_out_bcorrupt(slices_1_io_out_bcorrupt),
    .io_out_c_ready(slices_1_io_out_c_ready),
    .io_out_c_valid(slices_1_io_out_c_valid),
    .io_out_c_bits_opcode(slices_1_io_out_c_bits_opcode),
    .io_out_c_bits_param(slices_1_io_out_c_bits_param),
    .io_out_c_bits_size(slices_1_io_out_c_bits_size),
    .io_out_c_bits_source(slices_1_io_out_c_bits_source),
    .io_out_c_bits_address(slices_1_io_out_c_bits_address),
    .io_out_c_bits_echo_blockisdirty(slices_1_io_out_c_bits_echo_blockisdirty),
    .io_out_c_bits_data(slices_1_io_out_c_bits_data),
    .io_out_c_bits_corrupt(slices_1_io_out_c_bits_corrupt),
    .io_out_d_ready(slices_1_io_out_d_ready),
    .io_out_d_valid(slices_1_io_out_d_valid),
    .io_out_d_bits_opcode(slices_1_io_out_d_bits_opcode),
    .io_out_d_bits_param(slices_1_io_out_d_bits_param),
    .io_out_d_bits_size(slices_1_io_out_d_bits_size),
    .io_out_d_bits_source(slices_1_io_out_d_bits_source),
    .io_out_d_bits_sink(slices_1_io_out_d_bits_sink),
    .io_out_d_bits_denied(slices_1_io_out_d_bits_denied),
    .io_out_d_bits_echo_blockisdirty(slices_1_io_out_d_bits_echo_blockisdirty),
    .io_out_d_bits_data(slices_1_io_out_d_bits_data),
    .io_out_d_bits_corrupt(slices_1_io_out_d_bits_corrupt),
    .io_out_e_ready(slices_1_io_out_e_ready),
    .io_out_e_valid(slices_1_io_out_e_valid),
    .io_out_e_bits_sink(slices_1_io_out_e_bits_sink),
    .io_l1Hint_valid(slices_1_io_l1Hint_valid),
    .io_l1Hint_bits_sourceId(slices_1_io_l1Hint_bits_sourceId),
    .io_msStatus_0_valid(slices_1_io_msStatus_0_valid),
    .io_msStatus_0_bits_set(slices_1_io_msStatus_0_bits_set),
    .io_msStatus_0_bits_reqTag(slices_1_io_msStatus_0_bits_reqTag),
    .io_msStatus_0_bits_is_miss(slices_1_io_msStatus_0_bits_is_miss),
    .io_msStatus_1_valid(slices_1_io_msStatus_1_valid),
    .io_msStatus_1_bits_set(slices_1_io_msStatus_1_bits_set),
    .io_msStatus_1_bits_reqTag(slices_1_io_msStatus_1_bits_reqTag),
    .io_msStatus_1_bits_is_miss(slices_1_io_msStatus_1_bits_is_miss),
    .io_msStatus_2_valid(slices_1_io_msStatus_2_valid),
    .io_msStatus_2_bits_set(slices_1_io_msStatus_2_bits_set),
    .io_msStatus_2_bits_reqTag(slices_1_io_msStatus_2_bits_reqTag),
    .io_msStatus_2_bits_is_miss(slices_1_io_msStatus_2_bits_is_miss),
    .io_msStatus_3_valid(slices_1_io_msStatus_3_valid),
    .io_msStatus_3_bits_set(slices_1_io_msStatus_3_bits_set),
    .io_msStatus_3_bits_reqTag(slices_1_io_msStatus_3_bits_reqTag),
    .io_msStatus_3_bits_is_miss(slices_1_io_msStatus_3_bits_is_miss),
    .io_msStatus_4_valid(slices_1_io_msStatus_4_valid),
    .io_msStatus_4_bits_set(slices_1_io_msStatus_4_bits_set),
    .io_msStatus_4_bits_reqTag(slices_1_io_msStatus_4_bits_reqTag),
    .io_msStatus_4_bits_is_miss(slices_1_io_msStatus_4_bits_is_miss),
    .io_msStatus_5_valid(slices_1_io_msStatus_5_valid),
    .io_msStatus_5_bits_set(slices_1_io_msStatus_5_bits_set),
    .io_msStatus_5_bits_reqTag(slices_1_io_msStatus_5_bits_reqTag),
    .io_msStatus_5_bits_is_miss(slices_1_io_msStatus_5_bits_is_miss),
    .io_msStatus_6_valid(slices_1_io_msStatus_6_valid),
    .io_msStatus_6_bits_set(slices_1_io_msStatus_6_bits_set),
    .io_msStatus_6_bits_reqTag(slices_1_io_msStatus_6_bits_reqTag),
    .io_msStatus_6_bits_is_miss(slices_1_io_msStatus_6_bits_is_miss),
    .io_msStatus_7_valid(slices_1_io_msStatus_7_valid),
    .io_msStatus_7_bits_set(slices_1_io_msStatus_7_bits_set),
    .io_msStatus_7_bits_reqTag(slices_1_io_msStatus_7_bits_reqTag),
    .io_msStatus_7_bits_is_miss(slices_1_io_msStatus_7_bits_is_miss),
    .io_msStatus_8_valid(slices_1_io_msStatus_8_valid),
    .io_msStatus_8_bits_set(slices_1_io_msStatus_8_bits_set),
    .io_msStatus_8_bits_reqTag(slices_1_io_msStatus_8_bits_reqTag),
    .io_msStatus_8_bits_is_miss(slices_1_io_msStatus_8_bits_is_miss),
    .io_msStatus_9_valid(slices_1_io_msStatus_9_valid),
    .io_msStatus_9_bits_set(slices_1_io_msStatus_9_bits_set),
    .io_msStatus_9_bits_reqTag(slices_1_io_msStatus_9_bits_reqTag),
    .io_msStatus_9_bits_is_miss(slices_1_io_msStatus_9_bits_is_miss),
    .io_msStatus_10_valid(slices_1_io_msStatus_10_valid),
    .io_msStatus_10_bits_set(slices_1_io_msStatus_10_bits_set),
    .io_msStatus_10_bits_reqTag(slices_1_io_msStatus_10_bits_reqTag),
    .io_msStatus_10_bits_is_miss(slices_1_io_msStatus_10_bits_is_miss),
    .io_msStatus_11_valid(slices_1_io_msStatus_11_valid),
    .io_msStatus_11_bits_set(slices_1_io_msStatus_11_bits_set),
    .io_msStatus_11_bits_reqTag(slices_1_io_msStatus_11_bits_reqTag),
    .io_msStatus_11_bits_is_miss(slices_1_io_msStatus_11_bits_is_miss),
    .io_msStatus_12_valid(slices_1_io_msStatus_12_valid),
    .io_msStatus_12_bits_set(slices_1_io_msStatus_12_bits_set),
    .io_msStatus_12_bits_reqTag(slices_1_io_msStatus_12_bits_reqTag),
    .io_msStatus_12_bits_is_miss(slices_1_io_msStatus_12_bits_is_miss),
    .io_msStatus_13_valid(slices_1_io_msStatus_13_valid),
    .io_msStatus_13_bits_set(slices_1_io_msStatus_13_bits_set),
    .io_msStatus_13_bits_reqTag(slices_1_io_msStatus_13_bits_reqTag),
    .io_msStatus_13_bits_is_miss(slices_1_io_msStatus_13_bits_is_miss),
    .io_msStatus_14_valid(slices_1_io_msStatus_14_valid),
    .io_msStatus_14_bits_set(slices_1_io_msStatus_14_bits_set),
    .io_msStatus_14_bits_reqTag(slices_1_io_msStatus_14_bits_reqTag),
    .io_msStatus_14_bits_is_miss(slices_1_io_msStatus_14_bits_is_miss),
    .io_msStatus_15_valid(slices_1_io_msStatus_15_valid),
    .io_msStatus_15_bits_set(slices_1_io_msStatus_15_bits_set),
    .io_msStatus_15_bits_reqTag(slices_1_io_msStatus_15_bits_reqTag),
    .io_msStatus_15_bits_is_miss(slices_1_io_msStatus_15_bits_is_miss)
  );
  Arbiter_43 l1Hint_arb ( // @[CoupledL2.scala 362:28]
    .io_in_0_valid(l1Hint_arb_io_in_0_valid),
    .io_in_0_bits_sourceId(l1Hint_arb_io_in_0_bits_sourceId),
    .io_in_1_ready(l1Hint_arb_io_in_1_ready),
    .io_in_1_valid(l1Hint_arb_io_in_1_valid),
    .io_in_1_bits_sourceId(l1Hint_arb_io_in_1_bits_sourceId),
    .io_out_ready(l1Hint_arb_io_out_ready),
    .io_out_valid(l1Hint_arb_io_out_valid),
    .io_out_bits_sourceId(l1Hint_arb_io_out_bits_sourceId),
    .io_chosen(l1Hint_arb_io_chosen)
  );
  Pipeline slices_l1Hint_l1Hint_buffer_0 ( // @[Pipeline.scala 45:26]
    .clock(slices_l1Hint_l1Hint_buffer_0_clock),
    .reset(slices_l1Hint_l1Hint_buffer_0_reset),
    .io_in_valid(slices_l1Hint_l1Hint_buffer_0_io_in_valid),
    .io_in_bits_sourceId(slices_l1Hint_l1Hint_buffer_0_io_in_bits_sourceId),
    .io_out_ready(slices_l1Hint_l1Hint_buffer_0_io_out_ready),
    .io_out_valid(slices_l1Hint_l1Hint_buffer_0_io_out_valid),
    .io_out_bits_sourceId(slices_l1Hint_l1Hint_buffer_0_io_out_bits_sourceId)
  );
  Pipeline slices_l1Hint_l1Hint_buffer_1 ( // @[Pipeline.scala 45:26]
    .clock(slices_l1Hint_l1Hint_buffer_1_clock),
    .reset(slices_l1Hint_l1Hint_buffer_1_reset),
    .io_in_valid(slices_l1Hint_l1Hint_buffer_1_io_in_valid),
    .io_in_bits_sourceId(slices_l1Hint_l1Hint_buffer_1_io_in_bits_sourceId),
    .io_out_ready(slices_l1Hint_l1Hint_buffer_1_io_out_ready),
    .io_out_valid(slices_l1Hint_l1Hint_buffer_1_io_out_valid),
    .io_out_bits_sourceId(slices_l1Hint_l1Hint_buffer_1_io_out_bits_sourceId)
  );
  TopDownMonitor topDown ( // @[CoupledL2.scala 380:45]
    .io_msStatus_0_0_valid(topDown_io_msStatus_0_0_valid),
    .io_msStatus_0_0_bits_set(topDown_io_msStatus_0_0_bits_set),
    .io_msStatus_0_0_bits_reqTag(topDown_io_msStatus_0_0_bits_reqTag),
    .io_msStatus_0_0_bits_is_miss(topDown_io_msStatus_0_0_bits_is_miss),
    .io_msStatus_0_1_valid(topDown_io_msStatus_0_1_valid),
    .io_msStatus_0_1_bits_set(topDown_io_msStatus_0_1_bits_set),
    .io_msStatus_0_1_bits_reqTag(topDown_io_msStatus_0_1_bits_reqTag),
    .io_msStatus_0_1_bits_is_miss(topDown_io_msStatus_0_1_bits_is_miss),
    .io_msStatus_0_2_valid(topDown_io_msStatus_0_2_valid),
    .io_msStatus_0_2_bits_set(topDown_io_msStatus_0_2_bits_set),
    .io_msStatus_0_2_bits_reqTag(topDown_io_msStatus_0_2_bits_reqTag),
    .io_msStatus_0_2_bits_is_miss(topDown_io_msStatus_0_2_bits_is_miss),
    .io_msStatus_0_3_valid(topDown_io_msStatus_0_3_valid),
    .io_msStatus_0_3_bits_set(topDown_io_msStatus_0_3_bits_set),
    .io_msStatus_0_3_bits_reqTag(topDown_io_msStatus_0_3_bits_reqTag),
    .io_msStatus_0_3_bits_is_miss(topDown_io_msStatus_0_3_bits_is_miss),
    .io_msStatus_0_4_valid(topDown_io_msStatus_0_4_valid),
    .io_msStatus_0_4_bits_set(topDown_io_msStatus_0_4_bits_set),
    .io_msStatus_0_4_bits_reqTag(topDown_io_msStatus_0_4_bits_reqTag),
    .io_msStatus_0_4_bits_is_miss(topDown_io_msStatus_0_4_bits_is_miss),
    .io_msStatus_0_5_valid(topDown_io_msStatus_0_5_valid),
    .io_msStatus_0_5_bits_set(topDown_io_msStatus_0_5_bits_set),
    .io_msStatus_0_5_bits_reqTag(topDown_io_msStatus_0_5_bits_reqTag),
    .io_msStatus_0_5_bits_is_miss(topDown_io_msStatus_0_5_bits_is_miss),
    .io_msStatus_0_6_valid(topDown_io_msStatus_0_6_valid),
    .io_msStatus_0_6_bits_set(topDown_io_msStatus_0_6_bits_set),
    .io_msStatus_0_6_bits_reqTag(topDown_io_msStatus_0_6_bits_reqTag),
    .io_msStatus_0_6_bits_is_miss(topDown_io_msStatus_0_6_bits_is_miss),
    .io_msStatus_0_7_valid(topDown_io_msStatus_0_7_valid),
    .io_msStatus_0_7_bits_set(topDown_io_msStatus_0_7_bits_set),
    .io_msStatus_0_7_bits_reqTag(topDown_io_msStatus_0_7_bits_reqTag),
    .io_msStatus_0_7_bits_is_miss(topDown_io_msStatus_0_7_bits_is_miss),
    .io_msStatus_0_8_valid(topDown_io_msStatus_0_8_valid),
    .io_msStatus_0_8_bits_set(topDown_io_msStatus_0_8_bits_set),
    .io_msStatus_0_8_bits_reqTag(topDown_io_msStatus_0_8_bits_reqTag),
    .io_msStatus_0_8_bits_is_miss(topDown_io_msStatus_0_8_bits_is_miss),
    .io_msStatus_0_9_valid(topDown_io_msStatus_0_9_valid),
    .io_msStatus_0_9_bits_set(topDown_io_msStatus_0_9_bits_set),
    .io_msStatus_0_9_bits_reqTag(topDown_io_msStatus_0_9_bits_reqTag),
    .io_msStatus_0_9_bits_is_miss(topDown_io_msStatus_0_9_bits_is_miss),
    .io_msStatus_0_10_valid(topDown_io_msStatus_0_10_valid),
    .io_msStatus_0_10_bits_set(topDown_io_msStatus_0_10_bits_set),
    .io_msStatus_0_10_bits_reqTag(topDown_io_msStatus_0_10_bits_reqTag),
    .io_msStatus_0_10_bits_is_miss(topDown_io_msStatus_0_10_bits_is_miss),
    .io_msStatus_0_11_valid(topDown_io_msStatus_0_11_valid),
    .io_msStatus_0_11_bits_set(topDown_io_msStatus_0_11_bits_set),
    .io_msStatus_0_11_bits_reqTag(topDown_io_msStatus_0_11_bits_reqTag),
    .io_msStatus_0_11_bits_is_miss(topDown_io_msStatus_0_11_bits_is_miss),
    .io_msStatus_0_12_valid(topDown_io_msStatus_0_12_valid),
    .io_msStatus_0_12_bits_set(topDown_io_msStatus_0_12_bits_set),
    .io_msStatus_0_12_bits_reqTag(topDown_io_msStatus_0_12_bits_reqTag),
    .io_msStatus_0_12_bits_is_miss(topDown_io_msStatus_0_12_bits_is_miss),
    .io_msStatus_0_13_valid(topDown_io_msStatus_0_13_valid),
    .io_msStatus_0_13_bits_set(topDown_io_msStatus_0_13_bits_set),
    .io_msStatus_0_13_bits_reqTag(topDown_io_msStatus_0_13_bits_reqTag),
    .io_msStatus_0_13_bits_is_miss(topDown_io_msStatus_0_13_bits_is_miss),
    .io_msStatus_0_14_valid(topDown_io_msStatus_0_14_valid),
    .io_msStatus_0_14_bits_set(topDown_io_msStatus_0_14_bits_set),
    .io_msStatus_0_14_bits_reqTag(topDown_io_msStatus_0_14_bits_reqTag),
    .io_msStatus_0_14_bits_is_miss(topDown_io_msStatus_0_14_bits_is_miss),
    .io_msStatus_0_15_valid(topDown_io_msStatus_0_15_valid),
    .io_msStatus_0_15_bits_set(topDown_io_msStatus_0_15_bits_set),
    .io_msStatus_0_15_bits_reqTag(topDown_io_msStatus_0_15_bits_reqTag),
    .io_msStatus_0_15_bits_is_miss(topDown_io_msStatus_0_15_bits_is_miss),
    .io_msStatus_1_0_valid(topDown_io_msStatus_1_0_valid),
    .io_msStatus_1_0_bits_set(topDown_io_msStatus_1_0_bits_set),
    .io_msStatus_1_0_bits_reqTag(topDown_io_msStatus_1_0_bits_reqTag),
    .io_msStatus_1_0_bits_is_miss(topDown_io_msStatus_1_0_bits_is_miss),
    .io_msStatus_1_1_valid(topDown_io_msStatus_1_1_valid),
    .io_msStatus_1_1_bits_set(topDown_io_msStatus_1_1_bits_set),
    .io_msStatus_1_1_bits_reqTag(topDown_io_msStatus_1_1_bits_reqTag),
    .io_msStatus_1_1_bits_is_miss(topDown_io_msStatus_1_1_bits_is_miss),
    .io_msStatus_1_2_valid(topDown_io_msStatus_1_2_valid),
    .io_msStatus_1_2_bits_set(topDown_io_msStatus_1_2_bits_set),
    .io_msStatus_1_2_bits_reqTag(topDown_io_msStatus_1_2_bits_reqTag),
    .io_msStatus_1_2_bits_is_miss(topDown_io_msStatus_1_2_bits_is_miss),
    .io_msStatus_1_3_valid(topDown_io_msStatus_1_3_valid),
    .io_msStatus_1_3_bits_set(topDown_io_msStatus_1_3_bits_set),
    .io_msStatus_1_3_bits_reqTag(topDown_io_msStatus_1_3_bits_reqTag),
    .io_msStatus_1_3_bits_is_miss(topDown_io_msStatus_1_3_bits_is_miss),
    .io_msStatus_1_4_valid(topDown_io_msStatus_1_4_valid),
    .io_msStatus_1_4_bits_set(topDown_io_msStatus_1_4_bits_set),
    .io_msStatus_1_4_bits_reqTag(topDown_io_msStatus_1_4_bits_reqTag),
    .io_msStatus_1_4_bits_is_miss(topDown_io_msStatus_1_4_bits_is_miss),
    .io_msStatus_1_5_valid(topDown_io_msStatus_1_5_valid),
    .io_msStatus_1_5_bits_set(topDown_io_msStatus_1_5_bits_set),
    .io_msStatus_1_5_bits_reqTag(topDown_io_msStatus_1_5_bits_reqTag),
    .io_msStatus_1_5_bits_is_miss(topDown_io_msStatus_1_5_bits_is_miss),
    .io_msStatus_1_6_valid(topDown_io_msStatus_1_6_valid),
    .io_msStatus_1_6_bits_set(topDown_io_msStatus_1_6_bits_set),
    .io_msStatus_1_6_bits_reqTag(topDown_io_msStatus_1_6_bits_reqTag),
    .io_msStatus_1_6_bits_is_miss(topDown_io_msStatus_1_6_bits_is_miss),
    .io_msStatus_1_7_valid(topDown_io_msStatus_1_7_valid),
    .io_msStatus_1_7_bits_set(topDown_io_msStatus_1_7_bits_set),
    .io_msStatus_1_7_bits_reqTag(topDown_io_msStatus_1_7_bits_reqTag),
    .io_msStatus_1_7_bits_is_miss(topDown_io_msStatus_1_7_bits_is_miss),
    .io_msStatus_1_8_valid(topDown_io_msStatus_1_8_valid),
    .io_msStatus_1_8_bits_set(topDown_io_msStatus_1_8_bits_set),
    .io_msStatus_1_8_bits_reqTag(topDown_io_msStatus_1_8_bits_reqTag),
    .io_msStatus_1_8_bits_is_miss(topDown_io_msStatus_1_8_bits_is_miss),
    .io_msStatus_1_9_valid(topDown_io_msStatus_1_9_valid),
    .io_msStatus_1_9_bits_set(topDown_io_msStatus_1_9_bits_set),
    .io_msStatus_1_9_bits_reqTag(topDown_io_msStatus_1_9_bits_reqTag),
    .io_msStatus_1_9_bits_is_miss(topDown_io_msStatus_1_9_bits_is_miss),
    .io_msStatus_1_10_valid(topDown_io_msStatus_1_10_valid),
    .io_msStatus_1_10_bits_set(topDown_io_msStatus_1_10_bits_set),
    .io_msStatus_1_10_bits_reqTag(topDown_io_msStatus_1_10_bits_reqTag),
    .io_msStatus_1_10_bits_is_miss(topDown_io_msStatus_1_10_bits_is_miss),
    .io_msStatus_1_11_valid(topDown_io_msStatus_1_11_valid),
    .io_msStatus_1_11_bits_set(topDown_io_msStatus_1_11_bits_set),
    .io_msStatus_1_11_bits_reqTag(topDown_io_msStatus_1_11_bits_reqTag),
    .io_msStatus_1_11_bits_is_miss(topDown_io_msStatus_1_11_bits_is_miss),
    .io_msStatus_1_12_valid(topDown_io_msStatus_1_12_valid),
    .io_msStatus_1_12_bits_set(topDown_io_msStatus_1_12_bits_set),
    .io_msStatus_1_12_bits_reqTag(topDown_io_msStatus_1_12_bits_reqTag),
    .io_msStatus_1_12_bits_is_miss(topDown_io_msStatus_1_12_bits_is_miss),
    .io_msStatus_1_13_valid(topDown_io_msStatus_1_13_valid),
    .io_msStatus_1_13_bits_set(topDown_io_msStatus_1_13_bits_set),
    .io_msStatus_1_13_bits_reqTag(topDown_io_msStatus_1_13_bits_reqTag),
    .io_msStatus_1_13_bits_is_miss(topDown_io_msStatus_1_13_bits_is_miss),
    .io_msStatus_1_14_valid(topDown_io_msStatus_1_14_valid),
    .io_msStatus_1_14_bits_set(topDown_io_msStatus_1_14_bits_set),
    .io_msStatus_1_14_bits_reqTag(topDown_io_msStatus_1_14_bits_reqTag),
    .io_msStatus_1_14_bits_is_miss(topDown_io_msStatus_1_14_bits_is_miss),
    .io_msStatus_1_15_valid(topDown_io_msStatus_1_15_valid),
    .io_msStatus_1_15_bits_set(topDown_io_msStatus_1_15_bits_set),
    .io_msStatus_1_15_bits_reqTag(topDown_io_msStatus_1_15_bits_reqTag),
    .io_msStatus_1_15_bits_is_miss(topDown_io_msStatus_1_15_bits_is_miss),
    .rob_head_paddr_0_valid(topDown_rob_head_paddr_0_valid),
    .rob_head_paddr_0_bits(topDown_rob_head_paddr_0_bits)
  );
  assign auto_in_1_a_ready = slices_1_io_in_a_ready; // @[Nodes.scala 1210:84 CoupledL2.scala 320:21]
  assign auto_in_1_bvalid = slices_1_io_in_bvalid; // @[Nodes.scala 1210:84 CoupledL2.scala 320:21]
  assign auto_in_1_bopcode = slices_1_io_in_bopcode; // @[Nodes.scala 1210:84 CoupledL2.scala 320:21]
  assign auto_in_1_bparam = slices_1_io_in_bparam; // @[Nodes.scala 1210:84 CoupledL2.scala 320:21]
  assign auto_in_1_bsize = slices_1_io_in_bsize; // @[Nodes.scala 1210:84 CoupledL2.scala 320:21]
  assign auto_in_1_bsource = slices_1_io_in_bsource; // @[Nodes.scala 1210:84 CoupledL2.scala 320:21]
  assign auto_in_1_baddress = _bundleIn_1_baddress_T[35:0]; // @[Nodes.scala 1210:84 CoupledL2.scala 328:27]
  assign auto_in_1_bmask = slices_1_io_in_bmask; // @[Nodes.scala 1210:84 CoupledL2.scala 320:21]
  assign auto_in_1_bdata = slices_1_io_in_bdata; // @[Nodes.scala 1210:84 CoupledL2.scala 320:21]
  assign auto_in_1_c_ready = slices_1_io_in_c_ready; // @[Nodes.scala 1210:84 CoupledL2.scala 320:21]
  assign auto_in_1_d_valid = slices_1_io_in_d_valid & (sourceD_can_go_1 | |_bundleIn_0_d_valid_T); // @[CoupledL2.scala 325:45]
  assign auto_in_1_d_bits_opcode = slices_1_io_in_d_bits_opcode; // @[Nodes.scala 1210:84 CoupledL2.scala 320:21]
  assign auto_in_1_d_bits_param = slices_1_io_in_d_bits_param; // @[Nodes.scala 1210:84 CoupledL2.scala 320:21]
  assign auto_in_1_d_bits_size = slices_1_io_in_d_bits_size; // @[Nodes.scala 1210:84 CoupledL2.scala 320:21]
  assign auto_in_1_d_bits_source = slices_1_io_in_d_bits_source; // @[Nodes.scala 1210:84 CoupledL2.scala 320:21]
  assign auto_in_1_d_bits_sink = slices_1_io_in_d_bits_sink; // @[Nodes.scala 1210:84 CoupledL2.scala 320:21]
  assign auto_in_1_d_bits_denied = slices_1_io_in_d_bits_denied; // @[Nodes.scala 1210:84 CoupledL2.scala 320:21]
  assign auto_in_1_d_bits_data = slices_1_io_in_d_bits_data; // @[Nodes.scala 1210:84 CoupledL2.scala 320:21]
  assign auto_in_1_d_bits_corrupt = slices_1_io_in_d_bits_corrupt; // @[Nodes.scala 1210:84 CoupledL2.scala 320:21]
  assign auto_in_1_e_ready = slices_1_io_in_e_ready; // @[Nodes.scala 1210:84 CoupledL2.scala 320:21]
  assign auto_in_0_a_ready = slices_0_io_in_a_ready; // @[Nodes.scala 1210:84 CoupledL2.scala 320:21]
  assign auto_in_0_bvalid = slices_0_io_in_bvalid; // @[Nodes.scala 1210:84 CoupledL2.scala 320:21]
  assign auto_in_0_bopcode = slices_0_io_in_bopcode; // @[Nodes.scala 1210:84 CoupledL2.scala 320:21]
  assign auto_in_0_bparam = slices_0_io_in_bparam; // @[Nodes.scala 1210:84 CoupledL2.scala 320:21]
  assign auto_in_0_bsize = slices_0_io_in_bsize; // @[Nodes.scala 1210:84 CoupledL2.scala 320:21]
  assign auto_in_0_bsource = slices_0_io_in_bsource; // @[Nodes.scala 1210:84 CoupledL2.scala 320:21]
  assign auto_in_0_baddress = _bundleIn_0_baddress_T[35:0]; // @[Nodes.scala 1210:84 CoupledL2.scala 328:27]
  assign auto_in_0_bmask = slices_0_io_in_bmask; // @[Nodes.scala 1210:84 CoupledL2.scala 320:21]
  assign auto_in_0_bdata = slices_0_io_in_bdata; // @[Nodes.scala 1210:84 CoupledL2.scala 320:21]
  assign auto_in_0_c_ready = slices_0_io_in_c_ready; // @[Nodes.scala 1210:84 CoupledL2.scala 320:21]
  assign auto_in_0_d_valid = slices_0_io_in_d_valid & (sourceD_can_go | |_bundleIn_0_d_valid_T); // @[CoupledL2.scala 325:45]
  assign auto_in_0_d_bits_opcode = slices_0_io_in_d_bits_opcode; // @[Nodes.scala 1210:84 CoupledL2.scala 320:21]
  assign auto_in_0_d_bits_param = slices_0_io_in_d_bits_param; // @[Nodes.scala 1210:84 CoupledL2.scala 320:21]
  assign auto_in_0_d_bits_size = slices_0_io_in_d_bits_size; // @[Nodes.scala 1210:84 CoupledL2.scala 320:21]
  assign auto_in_0_d_bits_source = slices_0_io_in_d_bits_source; // @[Nodes.scala 1210:84 CoupledL2.scala 320:21]
  assign auto_in_0_d_bits_sink = slices_0_io_in_d_bits_sink; // @[Nodes.scala 1210:84 CoupledL2.scala 320:21]
  assign auto_in_0_d_bits_denied = slices_0_io_in_d_bits_denied; // @[Nodes.scala 1210:84 CoupledL2.scala 320:21]
  assign auto_in_0_d_bits_data = slices_0_io_in_d_bits_data; // @[Nodes.scala 1210:84 CoupledL2.scala 320:21]
  assign auto_in_0_d_bits_corrupt = slices_0_io_in_d_bits_corrupt; // @[Nodes.scala 1210:84 CoupledL2.scala 320:21]
  assign auto_in_0_e_ready = slices_0_io_in_e_ready; // @[Nodes.scala 1210:84 CoupledL2.scala 320:21]
  assign auto_out_1_a_valid = slices_1_io_out_a_valid; // @[Nodes.scala 1207:84 CoupledL2.scala 329:13]
  assign auto_out_1_a_bits_opcode = slices_1_io_out_a_bits_opcode; // @[Nodes.scala 1207:84 CoupledL2.scala 329:13]
  assign auto_out_1_a_bits_param = slices_1_io_out_a_bits_param; // @[Nodes.scala 1207:84 CoupledL2.scala 329:13]
  assign auto_out_1_a_bits_size = slices_1_io_out_a_bits_size; // @[Nodes.scala 1207:84 CoupledL2.scala 329:13]
  assign auto_out_1_a_bits_source = slices_1_io_out_a_bits_source; // @[Nodes.scala 1207:84 CoupledL2.scala 329:13]
  assign auto_out_1_a_bits_address = _bundleOut_1_a_bits_address_T[35:0]; // @[Nodes.scala 1207:84 CoupledL2.scala 330:28]
  assign auto_out_1_a_bits_mask = slices_1_io_out_a_bits_mask; // @[Nodes.scala 1207:84 CoupledL2.scala 329:13]
  assign auto_out_1_a_bits_data = slices_1_io_out_a_bits_data; // @[Nodes.scala 1207:84 CoupledL2.scala 329:13]
  assign auto_out_1_bready = slices_1_io_out_bready; // @[Nodes.scala 1207:84 CoupledL2.scala 329:13]
  assign auto_out_1_c_valid = slices_1_io_out_c_valid; // @[Nodes.scala 1207:84 CoupledL2.scala 329:13]
  assign auto_out_1_c_bits_opcode = slices_1_io_out_c_bits_opcode; // @[Nodes.scala 1207:84 CoupledL2.scala 329:13]
  assign auto_out_1_c_bits_param = slices_1_io_out_c_bits_param; // @[Nodes.scala 1207:84 CoupledL2.scala 329:13]
  assign auto_out_1_c_bits_size = slices_1_io_out_c_bits_size; // @[Nodes.scala 1207:84 CoupledL2.scala 329:13]
  assign auto_out_1_c_bits_source = slices_1_io_out_c_bits_source; // @[Nodes.scala 1207:84 CoupledL2.scala 329:13]
  assign auto_out_1_c_bits_address = _bundleOut_1_c_bits_address_T[35:0]; // @[Nodes.scala 1207:84 CoupledL2.scala 331:28]
  assign auto_out_1_c_bits_echo_blockisdirty = slices_1_io_out_c_bits_echo_blockisdirty; // @[Nodes.scala 1207:84 CoupledL2.scala 329:13]
  assign auto_out_1_c_bits_data = slices_1_io_out_c_bits_data; // @[Nodes.scala 1207:84 CoupledL2.scala 329:13]
  assign auto_out_1_d_ready = slices_1_io_out_d_ready; // @[Nodes.scala 1207:84 CoupledL2.scala 329:13]
  assign auto_out_1_e_valid = slices_1_io_out_e_valid; // @[Nodes.scala 1207:84 CoupledL2.scala 329:13]
  assign auto_out_1_e_bits_sink = slices_1_io_out_e_bits_sink; // @[Nodes.scala 1207:84 CoupledL2.scala 329:13]
  assign auto_out_0_a_valid = slices_0_io_out_a_valid; // @[Nodes.scala 1207:84 CoupledL2.scala 329:13]
  assign auto_out_0_a_bits_opcode = slices_0_io_out_a_bits_opcode; // @[Nodes.scala 1207:84 CoupledL2.scala 329:13]
  assign auto_out_0_a_bits_param = slices_0_io_out_a_bits_param; // @[Nodes.scala 1207:84 CoupledL2.scala 329:13]
  assign auto_out_0_a_bits_size = slices_0_io_out_a_bits_size; // @[Nodes.scala 1207:84 CoupledL2.scala 329:13]
  assign auto_out_0_a_bits_source = slices_0_io_out_a_bits_source; // @[Nodes.scala 1207:84 CoupledL2.scala 329:13]
  assign auto_out_0_a_bits_address = _bundleOut_0_a_bits_address_T[35:0]; // @[Nodes.scala 1207:84 CoupledL2.scala 330:28]
  assign auto_out_0_a_bits_mask = slices_0_io_out_a_bits_mask; // @[Nodes.scala 1207:84 CoupledL2.scala 329:13]
  assign auto_out_0_a_bits_data = slices_0_io_out_a_bits_data; // @[Nodes.scala 1207:84 CoupledL2.scala 329:13]
  assign auto_out_0_bready = slices_0_io_out_bready; // @[Nodes.scala 1207:84 CoupledL2.scala 329:13]
  assign auto_out_0_c_valid = slices_0_io_out_c_valid; // @[Nodes.scala 1207:84 CoupledL2.scala 329:13]
  assign auto_out_0_c_bits_opcode = slices_0_io_out_c_bits_opcode; // @[Nodes.scala 1207:84 CoupledL2.scala 329:13]
  assign auto_out_0_c_bits_param = slices_0_io_out_c_bits_param; // @[Nodes.scala 1207:84 CoupledL2.scala 329:13]
  assign auto_out_0_c_bits_size = slices_0_io_out_c_bits_size; // @[Nodes.scala 1207:84 CoupledL2.scala 329:13]
  assign auto_out_0_c_bits_source = slices_0_io_out_c_bits_source; // @[Nodes.scala 1207:84 CoupledL2.scala 329:13]
  assign auto_out_0_c_bits_address = _bundleOut_0_c_bits_address_T[35:0]; // @[Nodes.scala 1207:84 CoupledL2.scala 331:28]
  assign auto_out_0_c_bits_echo_blockisdirty = slices_0_io_out_c_bits_echo_blockisdirty; // @[Nodes.scala 1207:84 CoupledL2.scala 329:13]
  assign auto_out_0_c_bits_data = slices_0_io_out_c_bits_data; // @[Nodes.scala 1207:84 CoupledL2.scala 329:13]
  assign auto_out_0_d_ready = slices_0_io_out_d_ready; // @[Nodes.scala 1207:84 CoupledL2.scala 329:13]
  assign auto_out_0_e_valid = slices_0_io_out_e_valid; // @[Nodes.scala 1207:84 CoupledL2.scala 329:13]
  assign auto_out_0_e_bits_sink = slices_0_io_out_e_bits_sink; // @[Nodes.scala 1207:84 CoupledL2.scala 329:13]
  assign io_l2_hint_valid = l1Hint_arb_io_out_ready & l1Hint_arb_io_out_valid; // @[Decoupled.scala 50:35]
  assign io_l2_hint_bits = l1Hint_arb_io_out_bits_sourceId - _GEN_2; // @[CoupledL2.scala 373:56]
  assign slices_0_clock = clock;
  assign slices_0_reset = reset;
  assign slices_0_io_in_a_valid = auto_in_0_a_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_a_bits_opcode = auto_in_0_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_a_bits_param = auto_in_0_a_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_a_bits_size = auto_in_0_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_a_bits_source = auto_in_0_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_a_bits_address = auto_in_0_a_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_a_bits_user_alias = 2'h0; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_a_bits_user_vaddr = auto_in_0_a_bits_user_vaddr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_a_bits_user_reqSource = auto_in_0_a_bits_user_reqSource; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_a_bits_user_needHint = auto_in_0_a_bits_user_needHint; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_a_bits_mask = auto_in_0_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_a_bits_data = auto_in_0_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_a_bits_corrupt = auto_in_0_a_bits_corrupt; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_bready = auto_in_0_bready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_c_valid = auto_in_0_c_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_c_bits_opcode = auto_in_0_c_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_c_bits_param = auto_in_0_c_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_c_bits_size = auto_in_0_c_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_c_bits_source = auto_in_0_c_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_c_bits_address = auto_in_0_c_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_c_bits_user_alias = 2'h0; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_c_bits_user_vaddr = auto_in_0_c_bits_user_vaddr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_c_bits_user_reqSource = auto_in_0_c_bits_user_reqSource; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_c_bits_user_needHint = auto_in_0_c_bits_user_needHint; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_c_bits_data = auto_in_0_c_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_c_bits_corrupt = auto_in_0_c_bits_corrupt; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_d_ready = auto_in_0_d_ready & _bundleIn_0_d_valid_T_2; // @[CoupledL2.scala 326:45]
  assign slices_0_io_in_e_valid = auto_in_0_e_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_in_e_bits_sink = auto_in_0_e_bits_sink; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_0_io_out_a_ready = auto_out_0_a_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_bvalid = auto_out_0_bvalid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_bopcode = auto_out_0_bopcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_bparam = auto_out_0_bparam; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_bsize = auto_out_0_bsize; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_bsource = auto_out_0_bsource; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_baddress = auto_out_0_baddress; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_bmask = auto_out_0_bmask; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_bdata = auto_out_0_bdata; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_bcorrupt = auto_out_0_bcorrupt; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_c_ready = auto_out_0_c_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_d_valid = auto_out_0_d_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_d_bits_opcode = auto_out_0_d_bits_opcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_d_bits_param = auto_out_0_d_bits_param; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_d_bits_size = auto_out_0_d_bits_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_d_bits_source = auto_out_0_d_bits_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_d_bits_sink = auto_out_0_d_bits_sink; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_d_bits_denied = auto_out_0_d_bits_denied; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_d_bits_echo_blockisdirty = auto_out_0_d_bits_echo_blockisdirty; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_d_bits_data = auto_out_0_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_d_bits_corrupt = auto_out_0_d_bits_corrupt; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_0_io_out_e_ready = auto_out_0_e_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_clock = clock;
  assign slices_1_reset = reset;
  assign slices_1_io_in_a_valid = auto_in_1_a_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_a_bits_opcode = auto_in_1_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_a_bits_param = auto_in_1_a_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_a_bits_size = auto_in_1_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_a_bits_source = auto_in_1_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_a_bits_address = auto_in_1_a_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_a_bits_user_alias = 2'h0; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_a_bits_user_vaddr = auto_in_1_a_bits_user_vaddr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_a_bits_user_reqSource = auto_in_1_a_bits_user_reqSource; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_a_bits_user_needHint = auto_in_1_a_bits_user_needHint; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_a_bits_mask = auto_in_1_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_a_bits_data = auto_in_1_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_a_bits_corrupt = auto_in_1_a_bits_corrupt; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_bready = auto_in_1_bready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_c_valid = auto_in_1_c_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_c_bits_opcode = auto_in_1_c_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_c_bits_param = auto_in_1_c_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_c_bits_size = auto_in_1_c_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_c_bits_source = auto_in_1_c_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_c_bits_address = auto_in_1_c_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_c_bits_user_alias = 2'h0; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_c_bits_user_vaddr = auto_in_1_c_bits_user_vaddr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_c_bits_user_reqSource = auto_in_1_c_bits_user_reqSource; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_c_bits_user_needHint = auto_in_1_c_bits_user_needHint; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_c_bits_data = auto_in_1_c_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_c_bits_corrupt = auto_in_1_c_bits_corrupt; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_d_ready = auto_in_1_d_ready & _bundleIn_1_d_valid_T_2; // @[CoupledL2.scala 326:45]
  assign slices_1_io_in_e_valid = auto_in_1_e_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_in_e_bits_sink = auto_in_1_e_bits_sink; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign slices_1_io_out_a_ready = auto_out_1_a_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_bvalid = auto_out_1_bvalid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_bopcode = auto_out_1_bopcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_bparam = auto_out_1_bparam; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_bsize = auto_out_1_bsize; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_bsource = auto_out_1_bsource; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_baddress = auto_out_1_baddress; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_bmask = auto_out_1_bmask; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_bdata = auto_out_1_bdata; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_bcorrupt = auto_out_1_bcorrupt; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_c_ready = auto_out_1_c_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_d_valid = auto_out_1_d_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_d_bits_opcode = auto_out_1_d_bits_opcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_d_bits_param = auto_out_1_d_bits_param; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_d_bits_size = auto_out_1_d_bits_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_d_bits_source = auto_out_1_d_bits_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_d_bits_sink = auto_out_1_d_bits_sink; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_d_bits_denied = auto_out_1_d_bits_denied; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_d_bits_echo_blockisdirty = auto_out_1_d_bits_echo_blockisdirty; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_d_bits_data = auto_out_1_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_d_bits_corrupt = auto_out_1_d_bits_corrupt; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign slices_1_io_out_e_ready = auto_out_1_e_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign l1Hint_arb_io_in_0_valid = slices_l1Hint_l1Hint_buffer_0_io_out_valid; // @[CoupledL2.scala 371:{32,32}]
  assign l1Hint_arb_io_in_0_bits_sourceId = slices_l1Hint_l1Hint_buffer_0_io_out_bits_sourceId; // @[CoupledL2.scala 371:{32,32}]
  assign l1Hint_arb_io_in_1_valid = slices_l1Hint_l1Hint_buffer_1_io_out_valid; // @[CoupledL2.scala 371:{32,32}]
  assign l1Hint_arb_io_in_1_bits_sourceId = slices_l1Hint_l1Hint_buffer_1_io_out_bits_sourceId; // @[CoupledL2.scala 371:{32,32}]
  assign l1Hint_arb_io_out_ready = 1'h1; // @[CoupledL2.scala 375:29]
  assign slices_l1Hint_l1Hint_buffer_0_clock = clock;
  assign slices_l1Hint_l1Hint_buffer_0_reset = reset;
  assign slices_l1Hint_l1Hint_buffer_0_io_in_valid = slices_0_io_l1Hint_valid; // @[Pipeline.scala 47:20]
  assign slices_l1Hint_l1Hint_buffer_0_io_in_bits_sourceId = slices_0_io_l1Hint_bits_sourceId; // @[Pipeline.scala 47:20]
  assign slices_l1Hint_l1Hint_buffer_0_io_out_ready = 1'h1; // @[CoupledL2.scala 371:{22,32}]
  assign slices_l1Hint_l1Hint_buffer_1_clock = clock;
  assign slices_l1Hint_l1Hint_buffer_1_reset = reset;
  assign slices_l1Hint_l1Hint_buffer_1_io_in_valid = slices_1_io_l1Hint_valid; // @[Pipeline.scala 47:20]
  assign slices_l1Hint_l1Hint_buffer_1_io_in_bits_sourceId = slices_1_io_l1Hint_bits_sourceId; // @[Pipeline.scala 47:20]
  assign slices_l1Hint_l1Hint_buffer_1_io_out_ready = l1Hint_arb_io_in_1_ready; // @[CoupledL2.scala 371:{22,32}]
  assign topDown_io_msStatus_0_0_valid = slices_0_io_msStatus_0_valid; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_0_bits_set = slices_0_io_msStatus_0_bits_set; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_0_bits_reqTag = slices_0_io_msStatus_0_bits_reqTag; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_0_bits_is_miss = slices_0_io_msStatus_0_bits_is_miss; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_1_valid = slices_0_io_msStatus_1_valid; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_1_bits_set = slices_0_io_msStatus_1_bits_set; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_1_bits_reqTag = slices_0_io_msStatus_1_bits_reqTag; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_1_bits_is_miss = slices_0_io_msStatus_1_bits_is_miss; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_2_valid = slices_0_io_msStatus_2_valid; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_2_bits_set = slices_0_io_msStatus_2_bits_set; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_2_bits_reqTag = slices_0_io_msStatus_2_bits_reqTag; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_2_bits_is_miss = slices_0_io_msStatus_2_bits_is_miss; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_3_valid = slices_0_io_msStatus_3_valid; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_3_bits_set = slices_0_io_msStatus_3_bits_set; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_3_bits_reqTag = slices_0_io_msStatus_3_bits_reqTag; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_3_bits_is_miss = slices_0_io_msStatus_3_bits_is_miss; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_4_valid = slices_0_io_msStatus_4_valid; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_4_bits_set = slices_0_io_msStatus_4_bits_set; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_4_bits_reqTag = slices_0_io_msStatus_4_bits_reqTag; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_4_bits_is_miss = slices_0_io_msStatus_4_bits_is_miss; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_5_valid = slices_0_io_msStatus_5_valid; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_5_bits_set = slices_0_io_msStatus_5_bits_set; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_5_bits_reqTag = slices_0_io_msStatus_5_bits_reqTag; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_5_bits_is_miss = slices_0_io_msStatus_5_bits_is_miss; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_6_valid = slices_0_io_msStatus_6_valid; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_6_bits_set = slices_0_io_msStatus_6_bits_set; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_6_bits_reqTag = slices_0_io_msStatus_6_bits_reqTag; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_6_bits_is_miss = slices_0_io_msStatus_6_bits_is_miss; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_7_valid = slices_0_io_msStatus_7_valid; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_7_bits_set = slices_0_io_msStatus_7_bits_set; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_7_bits_reqTag = slices_0_io_msStatus_7_bits_reqTag; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_7_bits_is_miss = slices_0_io_msStatus_7_bits_is_miss; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_8_valid = slices_0_io_msStatus_8_valid; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_8_bits_set = slices_0_io_msStatus_8_bits_set; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_8_bits_reqTag = slices_0_io_msStatus_8_bits_reqTag; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_8_bits_is_miss = slices_0_io_msStatus_8_bits_is_miss; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_9_valid = slices_0_io_msStatus_9_valid; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_9_bits_set = slices_0_io_msStatus_9_bits_set; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_9_bits_reqTag = slices_0_io_msStatus_9_bits_reqTag; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_9_bits_is_miss = slices_0_io_msStatus_9_bits_is_miss; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_10_valid = slices_0_io_msStatus_10_valid; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_10_bits_set = slices_0_io_msStatus_10_bits_set; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_10_bits_reqTag = slices_0_io_msStatus_10_bits_reqTag; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_10_bits_is_miss = slices_0_io_msStatus_10_bits_is_miss; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_11_valid = slices_0_io_msStatus_11_valid; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_11_bits_set = slices_0_io_msStatus_11_bits_set; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_11_bits_reqTag = slices_0_io_msStatus_11_bits_reqTag; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_11_bits_is_miss = slices_0_io_msStatus_11_bits_is_miss; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_12_valid = slices_0_io_msStatus_12_valid; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_12_bits_set = slices_0_io_msStatus_12_bits_set; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_12_bits_reqTag = slices_0_io_msStatus_12_bits_reqTag; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_12_bits_is_miss = slices_0_io_msStatus_12_bits_is_miss; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_13_valid = slices_0_io_msStatus_13_valid; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_13_bits_set = slices_0_io_msStatus_13_bits_set; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_13_bits_reqTag = slices_0_io_msStatus_13_bits_reqTag; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_13_bits_is_miss = slices_0_io_msStatus_13_bits_is_miss; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_14_valid = slices_0_io_msStatus_14_valid; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_14_bits_set = slices_0_io_msStatus_14_bits_set; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_14_bits_reqTag = slices_0_io_msStatus_14_bits_reqTag; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_14_bits_is_miss = slices_0_io_msStatus_14_bits_is_miss; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_15_valid = slices_0_io_msStatus_15_valid; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_15_bits_set = slices_0_io_msStatus_15_bits_set; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_15_bits_reqTag = slices_0_io_msStatus_15_bits_reqTag; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_0_15_bits_is_miss = slices_0_io_msStatus_15_bits_is_miss; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_0_valid = slices_1_io_msStatus_0_valid; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_0_bits_set = slices_1_io_msStatus_0_bits_set; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_0_bits_reqTag = slices_1_io_msStatus_0_bits_reqTag; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_0_bits_is_miss = slices_1_io_msStatus_0_bits_is_miss; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_1_valid = slices_1_io_msStatus_1_valid; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_1_bits_set = slices_1_io_msStatus_1_bits_set; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_1_bits_reqTag = slices_1_io_msStatus_1_bits_reqTag; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_1_bits_is_miss = slices_1_io_msStatus_1_bits_is_miss; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_2_valid = slices_1_io_msStatus_2_valid; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_2_bits_set = slices_1_io_msStatus_2_bits_set; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_2_bits_reqTag = slices_1_io_msStatus_2_bits_reqTag; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_2_bits_is_miss = slices_1_io_msStatus_2_bits_is_miss; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_3_valid = slices_1_io_msStatus_3_valid; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_3_bits_set = slices_1_io_msStatus_3_bits_set; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_3_bits_reqTag = slices_1_io_msStatus_3_bits_reqTag; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_3_bits_is_miss = slices_1_io_msStatus_3_bits_is_miss; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_4_valid = slices_1_io_msStatus_4_valid; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_4_bits_set = slices_1_io_msStatus_4_bits_set; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_4_bits_reqTag = slices_1_io_msStatus_4_bits_reqTag; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_4_bits_is_miss = slices_1_io_msStatus_4_bits_is_miss; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_5_valid = slices_1_io_msStatus_5_valid; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_5_bits_set = slices_1_io_msStatus_5_bits_set; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_5_bits_reqTag = slices_1_io_msStatus_5_bits_reqTag; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_5_bits_is_miss = slices_1_io_msStatus_5_bits_is_miss; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_6_valid = slices_1_io_msStatus_6_valid; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_6_bits_set = slices_1_io_msStatus_6_bits_set; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_6_bits_reqTag = slices_1_io_msStatus_6_bits_reqTag; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_6_bits_is_miss = slices_1_io_msStatus_6_bits_is_miss; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_7_valid = slices_1_io_msStatus_7_valid; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_7_bits_set = slices_1_io_msStatus_7_bits_set; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_7_bits_reqTag = slices_1_io_msStatus_7_bits_reqTag; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_7_bits_is_miss = slices_1_io_msStatus_7_bits_is_miss; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_8_valid = slices_1_io_msStatus_8_valid; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_8_bits_set = slices_1_io_msStatus_8_bits_set; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_8_bits_reqTag = slices_1_io_msStatus_8_bits_reqTag; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_8_bits_is_miss = slices_1_io_msStatus_8_bits_is_miss; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_9_valid = slices_1_io_msStatus_9_valid; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_9_bits_set = slices_1_io_msStatus_9_bits_set; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_9_bits_reqTag = slices_1_io_msStatus_9_bits_reqTag; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_9_bits_is_miss = slices_1_io_msStatus_9_bits_is_miss; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_10_valid = slices_1_io_msStatus_10_valid; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_10_bits_set = slices_1_io_msStatus_10_bits_set; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_10_bits_reqTag = slices_1_io_msStatus_10_bits_reqTag; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_10_bits_is_miss = slices_1_io_msStatus_10_bits_is_miss; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_11_valid = slices_1_io_msStatus_11_valid; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_11_bits_set = slices_1_io_msStatus_11_bits_set; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_11_bits_reqTag = slices_1_io_msStatus_11_bits_reqTag; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_11_bits_is_miss = slices_1_io_msStatus_11_bits_is_miss; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_12_valid = slices_1_io_msStatus_12_valid; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_12_bits_set = slices_1_io_msStatus_12_bits_set; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_12_bits_reqTag = slices_1_io_msStatus_12_bits_reqTag; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_12_bits_is_miss = slices_1_io_msStatus_12_bits_is_miss; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_13_valid = slices_1_io_msStatus_13_valid; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_13_bits_set = slices_1_io_msStatus_13_bits_set; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_13_bits_reqTag = slices_1_io_msStatus_13_bits_reqTag; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_13_bits_is_miss = slices_1_io_msStatus_13_bits_is_miss; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_14_valid = slices_1_io_msStatus_14_valid; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_14_bits_set = slices_1_io_msStatus_14_bits_set; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_14_bits_reqTag = slices_1_io_msStatus_14_bits_reqTag; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_14_bits_is_miss = slices_1_io_msStatus_14_bits_is_miss; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_15_valid = slices_1_io_msStatus_15_valid; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_15_bits_set = slices_1_io_msStatus_15_bits_set; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_15_bits_reqTag = slices_1_io_msStatus_15_bits_reqTag; // @[CoupledL2.scala 388:30]
  assign topDown_io_msStatus_1_15_bits_is_miss = slices_1_io_msStatus_15_bits_is_miss; // @[CoupledL2.scala 388:30]
  assign topDown_rob_head_paddr_0_valid = sourcePaddr_valid;
  assign topDown_rob_head_paddr_0_bits = sourcePaddr_bits;
  always @(posedge clock) begin
    sourceD_can_go <= ~io_l2_hint_valid | ~hint_chosen[1]; // @[CoupledL2.scala 318:50]
    sourceD_can_go_1 <= ~io_l2_hint_valid | hint_chosen[1]; // @[CoupledL2.scala 318:50]
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
  sourceD_can_go = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  sourceD_can_go_1 = _RAND_1[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

