module TLWidthWidget(
  input          clock,
  input          reset,
  output         auto_in_a_ready,
  input          auto_in_a_valid,
  input  [2:0]   auto_in_a_bits_opcode,
  input  [2:0]   auto_in_a_bits_size,
  input  [2:0]   auto_in_a_bits_source,
  input  [35:0]  auto_in_a_bits_address,
  input  [7:0]   auto_in_a_bits_mask,
  input  [63:0]  auto_in_a_bits_data,
  input          auto_in_d_ready,
  output         auto_in_d_valid,
  output [2:0]   auto_in_d_bits_opcode,
  output [2:0]   auto_in_d_bits_size,
  output [2:0]   auto_in_d_bits_source,
  output [63:0]  auto_in_d_bits_data,
  input          auto_out_a_ready,
  output         auto_out_a_valid,
  output [2:0]   auto_out_a_bits_opcode,
  output [2:0]   auto_out_a_bits_size,
  output [2:0]   auto_out_a_bits_source,
  output [35:0]  auto_out_a_bits_address,
  output [31:0]  auto_out_a_bits_mask,
  output [255:0] auto_out_a_bits_data,
  output         auto_out_d_ready,
  input          auto_out_d_valid,
  input  [2:0]   auto_out_d_bits_opcode,
  input  [2:0]   auto_out_d_bits_size,
  input  [2:0]   auto_out_d_bits_source,
  input  [255:0] auto_out_d_bits_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
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
`endif // RANDOMIZE_REG_INIT
  wire  repeated_repeater_clock; // @[Repeater.scala 35:26]
  wire  repeated_repeater_reset; // @[Repeater.scala 35:26]
  wire  repeated_repeater_io_repeat; // @[Repeater.scala 35:26]
  wire  repeated_repeater_io_enq_ready; // @[Repeater.scala 35:26]
  wire  repeated_repeater_io_enq_valid; // @[Repeater.scala 35:26]
  wire [2:0] repeated_repeater_io_enq_bits_opcode; // @[Repeater.scala 35:26]
  wire [2:0] repeated_repeater_io_enq_bits_size; // @[Repeater.scala 35:26]
  wire [2:0] repeated_repeater_io_enq_bits_source; // @[Repeater.scala 35:26]
  wire [255:0] repeated_repeater_io_enq_bits_data; // @[Repeater.scala 35:26]
  wire  repeated_repeater_io_deq_ready; // @[Repeater.scala 35:26]
  wire  repeated_repeater_io_deq_valid; // @[Repeater.scala 35:26]
  wire [2:0] repeated_repeater_io_deq_bits_opcode; // @[Repeater.scala 35:26]
  wire [2:0] repeated_repeater_io_deq_bits_size; // @[Repeater.scala 35:26]
  wire [2:0] repeated_repeater_io_deq_bits_source; // @[Repeater.scala 35:26]
  wire [255:0] repeated_repeater_io_deq_bits_data; // @[Repeater.scala 35:26]
  wire  hasData = ~auto_in_a_bits_opcode[2]; // @[Edges.scala 91:28]
  wire [11:0] _limit_T_1 = 12'h1f << auto_in_a_bits_size; // @[package.scala 234:77]
  wire [4:0] _limit_T_3 = ~_limit_T_1[4:0]; // @[package.scala 234:46]
  wire [1:0] limit = _limit_T_3[4:3]; // @[WidthWidget.scala 32:47]
  reg [1:0] count; // @[WidthWidget.scala 34:27]
  wire  last = count == limit | ~hasData; // @[WidthWidget.scala 36:36]
  wire [1:0] _enable_T_1 = count & limit; // @[WidthWidget.scala 37:63]
  wire  enable_0 = ~(|_enable_T_1); // @[WidthWidget.scala 37:47]
  wire [1:0] _enable_T_3 = count ^ 2'h1; // @[WidthWidget.scala 37:56]
  wire [1:0] _enable_T_4 = _enable_T_3 & limit; // @[WidthWidget.scala 37:63]
  wire  enable_1 = ~(|_enable_T_4); // @[WidthWidget.scala 37:47]
  wire [1:0] _enable_T_6 = count ^ 2'h2; // @[WidthWidget.scala 37:56]
  wire [1:0] _enable_T_7 = _enable_T_6 & limit; // @[WidthWidget.scala 37:63]
  wire  enable_2 = ~(|_enable_T_7); // @[WidthWidget.scala 37:47]
  wire  _bundleIn_0_a_ready_T = ~last; // @[WidthWidget.scala 70:32]
  wire  bundleIn_0_a_ready = auto_out_a_ready | ~last; // @[WidthWidget.scala 70:29]
  wire  _T = bundleIn_0_a_ready & auto_in_a_valid; // @[Decoupled.scala 50:35]
  wire [1:0] _count_T_1 = count + 2'h1; // @[WidthWidget.scala 44:24]
  reg  bundleOut_0_a_bits_data_rdata_written_once; // @[WidthWidget.scala 56:41]
  wire  bundleOut_0_a_bits_data_masked_enable_0 = enable_0 | ~bundleOut_0_a_bits_data_rdata_written_once; // @[WidthWidget.scala 57:42]
  wire  bundleOut_0_a_bits_data_masked_enable_1 = enable_1 | ~bundleOut_0_a_bits_data_rdata_written_once; // @[WidthWidget.scala 57:42]
  wire  bundleOut_0_a_bits_data_masked_enable_2 = enable_2 | ~bundleOut_0_a_bits_data_rdata_written_once; // @[WidthWidget.scala 57:42]
  reg [63:0] bundleOut_0_a_bits_data_rdata_0; // @[WidthWidget.scala 60:24]
  reg [63:0] bundleOut_0_a_bits_data_rdata_1; // @[WidthWidget.scala 60:24]
  reg [63:0] bundleOut_0_a_bits_data_rdata_2; // @[WidthWidget.scala 60:24]
  wire [63:0] bundleOut_0_a_bits_data_mdata_0 = bundleOut_0_a_bits_data_masked_enable_0 ? auto_in_a_bits_data :
    bundleOut_0_a_bits_data_rdata_0; // @[WidthWidget.scala 62:88]
  wire [63:0] bundleOut_0_a_bits_data_mdata_1 = bundleOut_0_a_bits_data_masked_enable_1 ? auto_in_a_bits_data :
    bundleOut_0_a_bits_data_rdata_1; // @[WidthWidget.scala 62:88]
  wire [63:0] bundleOut_0_a_bits_data_mdata_2 = bundleOut_0_a_bits_data_masked_enable_2 ? auto_in_a_bits_data :
    bundleOut_0_a_bits_data_rdata_2; // @[WidthWidget.scala 62:88]
  wire [127:0] bundleOut_0_a_bits_data_lo = {bundleOut_0_a_bits_data_mdata_1,bundleOut_0_a_bits_data_mdata_0}; // @[Cat.scala 31:58]
  wire [127:0] bundleOut_0_a_bits_data_hi = {auto_in_a_bits_data,bundleOut_0_a_bits_data_mdata_2}; // @[Cat.scala 31:58]
  wire [4:0] _bundleOut_0_a_bits_mask_sizeOH_T = {{2'd0}, auto_in_a_bits_size}; // @[Misc.scala 201:34]
  wire [2:0] bundleOut_0_a_bits_mask_sizeOH_shiftAmount = _bundleOut_0_a_bits_mask_sizeOH_T[2:0]; // @[OneHot.scala 63:49]
  wire [7:0] _bundleOut_0_a_bits_mask_sizeOH_T_1 = 8'h1 << bundleOut_0_a_bits_mask_sizeOH_shiftAmount; // @[OneHot.scala 64:12]
  wire [4:0] bundleOut_0_a_bits_mask_sizeOH = _bundleOut_0_a_bits_mask_sizeOH_T_1[4:0] | 5'h1; // @[Misc.scala 201:81]
  wire  _bundleOut_0_a_bits_mask_T = auto_in_a_bits_size >= 3'h5; // @[Misc.scala 205:21]
  wire  bundleOut_0_a_bits_mask_size = bundleOut_0_a_bits_mask_sizeOH[4]; // @[Misc.scala 208:26]
  wire  bundleOut_0_a_bits_mask_bit = auto_in_a_bits_address[4]; // @[Misc.scala 209:26]
  wire  bundleOut_0_a_bits_mask_nbit = ~bundleOut_0_a_bits_mask_bit; // @[Misc.scala 210:20]
  wire  bundleOut_0_a_bits_mask_acc = _bundleOut_0_a_bits_mask_T | bundleOut_0_a_bits_mask_size &
    bundleOut_0_a_bits_mask_nbit; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_acc_1 = _bundleOut_0_a_bits_mask_T | bundleOut_0_a_bits_mask_size &
    bundleOut_0_a_bits_mask_bit; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_size_1 = bundleOut_0_a_bits_mask_sizeOH[3]; // @[Misc.scala 208:26]
  wire  bundleOut_0_a_bits_mask_bit_1 = auto_in_a_bits_address[3]; // @[Misc.scala 209:26]
  wire  bundleOut_0_a_bits_mask_nbit_1 = ~bundleOut_0_a_bits_mask_bit_1; // @[Misc.scala 210:20]
  wire  bundleOut_0_a_bits_mask_eq_2 = bundleOut_0_a_bits_mask_nbit & bundleOut_0_a_bits_mask_nbit_1; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_2 = bundleOut_0_a_bits_mask_acc | bundleOut_0_a_bits_mask_size_1 &
    bundleOut_0_a_bits_mask_eq_2; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_3 = bundleOut_0_a_bits_mask_nbit & bundleOut_0_a_bits_mask_bit_1; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_3 = bundleOut_0_a_bits_mask_acc | bundleOut_0_a_bits_mask_size_1 &
    bundleOut_0_a_bits_mask_eq_3; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_4 = bundleOut_0_a_bits_mask_bit & bundleOut_0_a_bits_mask_nbit_1; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_4 = bundleOut_0_a_bits_mask_acc_1 | bundleOut_0_a_bits_mask_size_1 &
    bundleOut_0_a_bits_mask_eq_4; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_5 = bundleOut_0_a_bits_mask_bit & bundleOut_0_a_bits_mask_bit_1; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_5 = bundleOut_0_a_bits_mask_acc_1 | bundleOut_0_a_bits_mask_size_1 &
    bundleOut_0_a_bits_mask_eq_5; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_size_2 = bundleOut_0_a_bits_mask_sizeOH[2]; // @[Misc.scala 208:26]
  wire  bundleOut_0_a_bits_mask_bit_2 = auto_in_a_bits_address[2]; // @[Misc.scala 209:26]
  wire  bundleOut_0_a_bits_mask_nbit_2 = ~bundleOut_0_a_bits_mask_bit_2; // @[Misc.scala 210:20]
  wire  bundleOut_0_a_bits_mask_eq_6 = bundleOut_0_a_bits_mask_eq_2 & bundleOut_0_a_bits_mask_nbit_2; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_6 = bundleOut_0_a_bits_mask_acc_2 | bundleOut_0_a_bits_mask_size_2 &
    bundleOut_0_a_bits_mask_eq_6; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_7 = bundleOut_0_a_bits_mask_eq_2 & bundleOut_0_a_bits_mask_bit_2; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_7 = bundleOut_0_a_bits_mask_acc_2 | bundleOut_0_a_bits_mask_size_2 &
    bundleOut_0_a_bits_mask_eq_7; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_8 = bundleOut_0_a_bits_mask_eq_3 & bundleOut_0_a_bits_mask_nbit_2; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_8 = bundleOut_0_a_bits_mask_acc_3 | bundleOut_0_a_bits_mask_size_2 &
    bundleOut_0_a_bits_mask_eq_8; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_9 = bundleOut_0_a_bits_mask_eq_3 & bundleOut_0_a_bits_mask_bit_2; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_9 = bundleOut_0_a_bits_mask_acc_3 | bundleOut_0_a_bits_mask_size_2 &
    bundleOut_0_a_bits_mask_eq_9; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_10 = bundleOut_0_a_bits_mask_eq_4 & bundleOut_0_a_bits_mask_nbit_2; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_10 = bundleOut_0_a_bits_mask_acc_4 | bundleOut_0_a_bits_mask_size_2 &
    bundleOut_0_a_bits_mask_eq_10; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_11 = bundleOut_0_a_bits_mask_eq_4 & bundleOut_0_a_bits_mask_bit_2; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_11 = bundleOut_0_a_bits_mask_acc_4 | bundleOut_0_a_bits_mask_size_2 &
    bundleOut_0_a_bits_mask_eq_11; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_12 = bundleOut_0_a_bits_mask_eq_5 & bundleOut_0_a_bits_mask_nbit_2; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_12 = bundleOut_0_a_bits_mask_acc_5 | bundleOut_0_a_bits_mask_size_2 &
    bundleOut_0_a_bits_mask_eq_12; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_13 = bundleOut_0_a_bits_mask_eq_5 & bundleOut_0_a_bits_mask_bit_2; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_13 = bundleOut_0_a_bits_mask_acc_5 | bundleOut_0_a_bits_mask_size_2 &
    bundleOut_0_a_bits_mask_eq_13; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_size_3 = bundleOut_0_a_bits_mask_sizeOH[1]; // @[Misc.scala 208:26]
  wire  bundleOut_0_a_bits_mask_bit_3 = auto_in_a_bits_address[1]; // @[Misc.scala 209:26]
  wire  bundleOut_0_a_bits_mask_nbit_3 = ~bundleOut_0_a_bits_mask_bit_3; // @[Misc.scala 210:20]
  wire  bundleOut_0_a_bits_mask_eq_14 = bundleOut_0_a_bits_mask_eq_6 & bundleOut_0_a_bits_mask_nbit_3; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_14 = bundleOut_0_a_bits_mask_acc_6 | bundleOut_0_a_bits_mask_size_3 &
    bundleOut_0_a_bits_mask_eq_14; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_15 = bundleOut_0_a_bits_mask_eq_6 & bundleOut_0_a_bits_mask_bit_3; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_15 = bundleOut_0_a_bits_mask_acc_6 | bundleOut_0_a_bits_mask_size_3 &
    bundleOut_0_a_bits_mask_eq_15; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_16 = bundleOut_0_a_bits_mask_eq_7 & bundleOut_0_a_bits_mask_nbit_3; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_16 = bundleOut_0_a_bits_mask_acc_7 | bundleOut_0_a_bits_mask_size_3 &
    bundleOut_0_a_bits_mask_eq_16; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_17 = bundleOut_0_a_bits_mask_eq_7 & bundleOut_0_a_bits_mask_bit_3; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_17 = bundleOut_0_a_bits_mask_acc_7 | bundleOut_0_a_bits_mask_size_3 &
    bundleOut_0_a_bits_mask_eq_17; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_18 = bundleOut_0_a_bits_mask_eq_8 & bundleOut_0_a_bits_mask_nbit_3; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_18 = bundleOut_0_a_bits_mask_acc_8 | bundleOut_0_a_bits_mask_size_3 &
    bundleOut_0_a_bits_mask_eq_18; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_19 = bundleOut_0_a_bits_mask_eq_8 & bundleOut_0_a_bits_mask_bit_3; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_19 = bundleOut_0_a_bits_mask_acc_8 | bundleOut_0_a_bits_mask_size_3 &
    bundleOut_0_a_bits_mask_eq_19; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_20 = bundleOut_0_a_bits_mask_eq_9 & bundleOut_0_a_bits_mask_nbit_3; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_20 = bundleOut_0_a_bits_mask_acc_9 | bundleOut_0_a_bits_mask_size_3 &
    bundleOut_0_a_bits_mask_eq_20; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_21 = bundleOut_0_a_bits_mask_eq_9 & bundleOut_0_a_bits_mask_bit_3; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_21 = bundleOut_0_a_bits_mask_acc_9 | bundleOut_0_a_bits_mask_size_3 &
    bundleOut_0_a_bits_mask_eq_21; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_22 = bundleOut_0_a_bits_mask_eq_10 & bundleOut_0_a_bits_mask_nbit_3; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_22 = bundleOut_0_a_bits_mask_acc_10 | bundleOut_0_a_bits_mask_size_3 &
    bundleOut_0_a_bits_mask_eq_22; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_23 = bundleOut_0_a_bits_mask_eq_10 & bundleOut_0_a_bits_mask_bit_3; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_23 = bundleOut_0_a_bits_mask_acc_10 | bundleOut_0_a_bits_mask_size_3 &
    bundleOut_0_a_bits_mask_eq_23; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_24 = bundleOut_0_a_bits_mask_eq_11 & bundleOut_0_a_bits_mask_nbit_3; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_24 = bundleOut_0_a_bits_mask_acc_11 | bundleOut_0_a_bits_mask_size_3 &
    bundleOut_0_a_bits_mask_eq_24; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_25 = bundleOut_0_a_bits_mask_eq_11 & bundleOut_0_a_bits_mask_bit_3; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_25 = bundleOut_0_a_bits_mask_acc_11 | bundleOut_0_a_bits_mask_size_3 &
    bundleOut_0_a_bits_mask_eq_25; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_26 = bundleOut_0_a_bits_mask_eq_12 & bundleOut_0_a_bits_mask_nbit_3; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_26 = bundleOut_0_a_bits_mask_acc_12 | bundleOut_0_a_bits_mask_size_3 &
    bundleOut_0_a_bits_mask_eq_26; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_27 = bundleOut_0_a_bits_mask_eq_12 & bundleOut_0_a_bits_mask_bit_3; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_27 = bundleOut_0_a_bits_mask_acc_12 | bundleOut_0_a_bits_mask_size_3 &
    bundleOut_0_a_bits_mask_eq_27; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_28 = bundleOut_0_a_bits_mask_eq_13 & bundleOut_0_a_bits_mask_nbit_3; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_28 = bundleOut_0_a_bits_mask_acc_13 | bundleOut_0_a_bits_mask_size_3 &
    bundleOut_0_a_bits_mask_eq_28; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_29 = bundleOut_0_a_bits_mask_eq_13 & bundleOut_0_a_bits_mask_bit_3; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_29 = bundleOut_0_a_bits_mask_acc_13 | bundleOut_0_a_bits_mask_size_3 &
    bundleOut_0_a_bits_mask_eq_29; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_size_4 = bundleOut_0_a_bits_mask_sizeOH[0]; // @[Misc.scala 208:26]
  wire  bundleOut_0_a_bits_mask_bit_4 = auto_in_a_bits_address[0]; // @[Misc.scala 209:26]
  wire  bundleOut_0_a_bits_mask_nbit_4 = ~bundleOut_0_a_bits_mask_bit_4; // @[Misc.scala 210:20]
  wire  bundleOut_0_a_bits_mask_eq_30 = bundleOut_0_a_bits_mask_eq_14 & bundleOut_0_a_bits_mask_nbit_4; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_30 = bundleOut_0_a_bits_mask_acc_14 | bundleOut_0_a_bits_mask_size_4 &
    bundleOut_0_a_bits_mask_eq_30; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_31 = bundleOut_0_a_bits_mask_eq_14 & bundleOut_0_a_bits_mask_bit_4; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_31 = bundleOut_0_a_bits_mask_acc_14 | bundleOut_0_a_bits_mask_size_4 &
    bundleOut_0_a_bits_mask_eq_31; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_32 = bundleOut_0_a_bits_mask_eq_15 & bundleOut_0_a_bits_mask_nbit_4; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_32 = bundleOut_0_a_bits_mask_acc_15 | bundleOut_0_a_bits_mask_size_4 &
    bundleOut_0_a_bits_mask_eq_32; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_33 = bundleOut_0_a_bits_mask_eq_15 & bundleOut_0_a_bits_mask_bit_4; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_33 = bundleOut_0_a_bits_mask_acc_15 | bundleOut_0_a_bits_mask_size_4 &
    bundleOut_0_a_bits_mask_eq_33; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_34 = bundleOut_0_a_bits_mask_eq_16 & bundleOut_0_a_bits_mask_nbit_4; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_34 = bundleOut_0_a_bits_mask_acc_16 | bundleOut_0_a_bits_mask_size_4 &
    bundleOut_0_a_bits_mask_eq_34; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_35 = bundleOut_0_a_bits_mask_eq_16 & bundleOut_0_a_bits_mask_bit_4; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_35 = bundleOut_0_a_bits_mask_acc_16 | bundleOut_0_a_bits_mask_size_4 &
    bundleOut_0_a_bits_mask_eq_35; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_36 = bundleOut_0_a_bits_mask_eq_17 & bundleOut_0_a_bits_mask_nbit_4; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_36 = bundleOut_0_a_bits_mask_acc_17 | bundleOut_0_a_bits_mask_size_4 &
    bundleOut_0_a_bits_mask_eq_36; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_37 = bundleOut_0_a_bits_mask_eq_17 & bundleOut_0_a_bits_mask_bit_4; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_37 = bundleOut_0_a_bits_mask_acc_17 | bundleOut_0_a_bits_mask_size_4 &
    bundleOut_0_a_bits_mask_eq_37; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_38 = bundleOut_0_a_bits_mask_eq_18 & bundleOut_0_a_bits_mask_nbit_4; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_38 = bundleOut_0_a_bits_mask_acc_18 | bundleOut_0_a_bits_mask_size_4 &
    bundleOut_0_a_bits_mask_eq_38; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_39 = bundleOut_0_a_bits_mask_eq_18 & bundleOut_0_a_bits_mask_bit_4; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_39 = bundleOut_0_a_bits_mask_acc_18 | bundleOut_0_a_bits_mask_size_4 &
    bundleOut_0_a_bits_mask_eq_39; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_40 = bundleOut_0_a_bits_mask_eq_19 & bundleOut_0_a_bits_mask_nbit_4; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_40 = bundleOut_0_a_bits_mask_acc_19 | bundleOut_0_a_bits_mask_size_4 &
    bundleOut_0_a_bits_mask_eq_40; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_41 = bundleOut_0_a_bits_mask_eq_19 & bundleOut_0_a_bits_mask_bit_4; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_41 = bundleOut_0_a_bits_mask_acc_19 | bundleOut_0_a_bits_mask_size_4 &
    bundleOut_0_a_bits_mask_eq_41; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_42 = bundleOut_0_a_bits_mask_eq_20 & bundleOut_0_a_bits_mask_nbit_4; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_42 = bundleOut_0_a_bits_mask_acc_20 | bundleOut_0_a_bits_mask_size_4 &
    bundleOut_0_a_bits_mask_eq_42; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_43 = bundleOut_0_a_bits_mask_eq_20 & bundleOut_0_a_bits_mask_bit_4; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_43 = bundleOut_0_a_bits_mask_acc_20 | bundleOut_0_a_bits_mask_size_4 &
    bundleOut_0_a_bits_mask_eq_43; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_44 = bundleOut_0_a_bits_mask_eq_21 & bundleOut_0_a_bits_mask_nbit_4; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_44 = bundleOut_0_a_bits_mask_acc_21 | bundleOut_0_a_bits_mask_size_4 &
    bundleOut_0_a_bits_mask_eq_44; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_45 = bundleOut_0_a_bits_mask_eq_21 & bundleOut_0_a_bits_mask_bit_4; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_45 = bundleOut_0_a_bits_mask_acc_21 | bundleOut_0_a_bits_mask_size_4 &
    bundleOut_0_a_bits_mask_eq_45; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_46 = bundleOut_0_a_bits_mask_eq_22 & bundleOut_0_a_bits_mask_nbit_4; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_46 = bundleOut_0_a_bits_mask_acc_22 | bundleOut_0_a_bits_mask_size_4 &
    bundleOut_0_a_bits_mask_eq_46; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_47 = bundleOut_0_a_bits_mask_eq_22 & bundleOut_0_a_bits_mask_bit_4; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_47 = bundleOut_0_a_bits_mask_acc_22 | bundleOut_0_a_bits_mask_size_4 &
    bundleOut_0_a_bits_mask_eq_47; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_48 = bundleOut_0_a_bits_mask_eq_23 & bundleOut_0_a_bits_mask_nbit_4; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_48 = bundleOut_0_a_bits_mask_acc_23 | bundleOut_0_a_bits_mask_size_4 &
    bundleOut_0_a_bits_mask_eq_48; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_49 = bundleOut_0_a_bits_mask_eq_23 & bundleOut_0_a_bits_mask_bit_4; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_49 = bundleOut_0_a_bits_mask_acc_23 | bundleOut_0_a_bits_mask_size_4 &
    bundleOut_0_a_bits_mask_eq_49; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_50 = bundleOut_0_a_bits_mask_eq_24 & bundleOut_0_a_bits_mask_nbit_4; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_50 = bundleOut_0_a_bits_mask_acc_24 | bundleOut_0_a_bits_mask_size_4 &
    bundleOut_0_a_bits_mask_eq_50; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_51 = bundleOut_0_a_bits_mask_eq_24 & bundleOut_0_a_bits_mask_bit_4; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_51 = bundleOut_0_a_bits_mask_acc_24 | bundleOut_0_a_bits_mask_size_4 &
    bundleOut_0_a_bits_mask_eq_51; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_52 = bundleOut_0_a_bits_mask_eq_25 & bundleOut_0_a_bits_mask_nbit_4; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_52 = bundleOut_0_a_bits_mask_acc_25 | bundleOut_0_a_bits_mask_size_4 &
    bundleOut_0_a_bits_mask_eq_52; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_53 = bundleOut_0_a_bits_mask_eq_25 & bundleOut_0_a_bits_mask_bit_4; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_53 = bundleOut_0_a_bits_mask_acc_25 | bundleOut_0_a_bits_mask_size_4 &
    bundleOut_0_a_bits_mask_eq_53; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_54 = bundleOut_0_a_bits_mask_eq_26 & bundleOut_0_a_bits_mask_nbit_4; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_54 = bundleOut_0_a_bits_mask_acc_26 | bundleOut_0_a_bits_mask_size_4 &
    bundleOut_0_a_bits_mask_eq_54; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_55 = bundleOut_0_a_bits_mask_eq_26 & bundleOut_0_a_bits_mask_bit_4; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_55 = bundleOut_0_a_bits_mask_acc_26 | bundleOut_0_a_bits_mask_size_4 &
    bundleOut_0_a_bits_mask_eq_55; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_56 = bundleOut_0_a_bits_mask_eq_27 & bundleOut_0_a_bits_mask_nbit_4; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_56 = bundleOut_0_a_bits_mask_acc_27 | bundleOut_0_a_bits_mask_size_4 &
    bundleOut_0_a_bits_mask_eq_56; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_57 = bundleOut_0_a_bits_mask_eq_27 & bundleOut_0_a_bits_mask_bit_4; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_57 = bundleOut_0_a_bits_mask_acc_27 | bundleOut_0_a_bits_mask_size_4 &
    bundleOut_0_a_bits_mask_eq_57; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_58 = bundleOut_0_a_bits_mask_eq_28 & bundleOut_0_a_bits_mask_nbit_4; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_58 = bundleOut_0_a_bits_mask_acc_28 | bundleOut_0_a_bits_mask_size_4 &
    bundleOut_0_a_bits_mask_eq_58; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_59 = bundleOut_0_a_bits_mask_eq_28 & bundleOut_0_a_bits_mask_bit_4; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_59 = bundleOut_0_a_bits_mask_acc_28 | bundleOut_0_a_bits_mask_size_4 &
    bundleOut_0_a_bits_mask_eq_59; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_60 = bundleOut_0_a_bits_mask_eq_29 & bundleOut_0_a_bits_mask_nbit_4; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_60 = bundleOut_0_a_bits_mask_acc_29 | bundleOut_0_a_bits_mask_size_4 &
    bundleOut_0_a_bits_mask_eq_60; // @[Misc.scala 214:29]
  wire  bundleOut_0_a_bits_mask_eq_61 = bundleOut_0_a_bits_mask_eq_29 & bundleOut_0_a_bits_mask_bit_4; // @[Misc.scala 213:27]
  wire  bundleOut_0_a_bits_mask_acc_61 = bundleOut_0_a_bits_mask_acc_29 | bundleOut_0_a_bits_mask_size_4 &
    bundleOut_0_a_bits_mask_eq_61; // @[Misc.scala 214:29]
  wire [7:0] bundleOut_0_a_bits_mask_lo_lo = {bundleOut_0_a_bits_mask_acc_37,bundleOut_0_a_bits_mask_acc_36,
    bundleOut_0_a_bits_mask_acc_35,bundleOut_0_a_bits_mask_acc_34,bundleOut_0_a_bits_mask_acc_33,
    bundleOut_0_a_bits_mask_acc_32,bundleOut_0_a_bits_mask_acc_31,bundleOut_0_a_bits_mask_acc_30}; // @[Cat.scala 31:58]
  wire [15:0] bundleOut_0_a_bits_mask_lo = {bundleOut_0_a_bits_mask_acc_45,bundleOut_0_a_bits_mask_acc_44,
    bundleOut_0_a_bits_mask_acc_43,bundleOut_0_a_bits_mask_acc_42,bundleOut_0_a_bits_mask_acc_41,
    bundleOut_0_a_bits_mask_acc_40,bundleOut_0_a_bits_mask_acc_39,bundleOut_0_a_bits_mask_acc_38,
    bundleOut_0_a_bits_mask_lo_lo}; // @[Cat.scala 31:58]
  wire [7:0] bundleOut_0_a_bits_mask_hi_lo = {bundleOut_0_a_bits_mask_acc_53,bundleOut_0_a_bits_mask_acc_52,
    bundleOut_0_a_bits_mask_acc_51,bundleOut_0_a_bits_mask_acc_50,bundleOut_0_a_bits_mask_acc_49,
    bundleOut_0_a_bits_mask_acc_48,bundleOut_0_a_bits_mask_acc_47,bundleOut_0_a_bits_mask_acc_46}; // @[Cat.scala 31:58]
  wire [31:0] _bundleOut_0_a_bits_mask_T_1 = {bundleOut_0_a_bits_mask_acc_61,bundleOut_0_a_bits_mask_acc_60,
    bundleOut_0_a_bits_mask_acc_59,bundleOut_0_a_bits_mask_acc_58,bundleOut_0_a_bits_mask_acc_57,
    bundleOut_0_a_bits_mask_acc_56,bundleOut_0_a_bits_mask_acc_55,bundleOut_0_a_bits_mask_acc_54,
    bundleOut_0_a_bits_mask_hi_lo,bundleOut_0_a_bits_mask_lo}; // @[Cat.scala 31:58]
  reg  bundleOut_0_a_bits_mask_rdata_written_once; // @[WidthWidget.scala 56:41]
  wire  bundleOut_0_a_bits_mask_masked_enable_0 = enable_0 | ~bundleOut_0_a_bits_mask_rdata_written_once; // @[WidthWidget.scala 57:42]
  wire  bundleOut_0_a_bits_mask_masked_enable_1 = enable_1 | ~bundleOut_0_a_bits_mask_rdata_written_once; // @[WidthWidget.scala 57:42]
  wire  bundleOut_0_a_bits_mask_masked_enable_2 = enable_2 | ~bundleOut_0_a_bits_mask_rdata_written_once; // @[WidthWidget.scala 57:42]
  reg [7:0] bundleOut_0_a_bits_mask_rdata_0; // @[WidthWidget.scala 60:24]
  reg [7:0] bundleOut_0_a_bits_mask_rdata_1; // @[WidthWidget.scala 60:24]
  reg [7:0] bundleOut_0_a_bits_mask_rdata_2; // @[WidthWidget.scala 60:24]
  wire [7:0] bundleOut_0_a_bits_mask_mdata_0 = bundleOut_0_a_bits_mask_masked_enable_0 ? auto_in_a_bits_mask :
    bundleOut_0_a_bits_mask_rdata_0; // @[WidthWidget.scala 62:88]
  wire [7:0] bundleOut_0_a_bits_mask_mdata_1 = bundleOut_0_a_bits_mask_masked_enable_1 ? auto_in_a_bits_mask :
    bundleOut_0_a_bits_mask_rdata_1; // @[WidthWidget.scala 62:88]
  wire [7:0] bundleOut_0_a_bits_mask_mdata_2 = bundleOut_0_a_bits_mask_masked_enable_2 ? auto_in_a_bits_mask :
    bundleOut_0_a_bits_mask_rdata_2; // @[WidthWidget.scala 62:88]
  wire [31:0] _bundleOut_0_a_bits_mask_T_5 = {auto_in_a_bits_mask,bundleOut_0_a_bits_mask_mdata_2,
    bundleOut_0_a_bits_mask_mdata_1,bundleOut_0_a_bits_mask_mdata_0}; // @[Cat.scala 31:58]
  wire [31:0] _bundleOut_0_a_bits_mask_T_7 = hasData ? _bundleOut_0_a_bits_mask_T_5 : 32'hffffffff; // @[WidthWidget.scala 79:93]
  wire [255:0] cated_bits_data = {repeated_repeater_io_deq_bits_data[255:64],auto_out_d_bits_data[63:0]}; // @[Cat.scala 31:58]
  wire [2:0] cated_bits_opcode = repeated_repeater_io_deq_bits_opcode; // @[WidthWidget.scala 155:25 156:15]
  wire  repeat_hasData = cated_bits_opcode[0]; // @[Edges.scala 105:36]
  wire [2:0] cated_bits_size = repeated_repeater_io_deq_bits_size; // @[WidthWidget.scala 155:25 156:15]
  wire [11:0] _repeat_limit_T_1 = 12'h1f << cated_bits_size; // @[package.scala 234:77]
  wire [4:0] _repeat_limit_T_3 = ~_repeat_limit_T_1[4:0]; // @[package.scala 234:46]
  wire [1:0] repeat_limit = _repeat_limit_T_3[4:3]; // @[WidthWidget.scala 97:47]
  reg [1:0] repeat_count; // @[WidthWidget.scala 99:26]
  wire  repeat_first = repeat_count == 2'h0; // @[WidthWidget.scala 100:25]
  wire  repeat_last = repeat_count == repeat_limit | ~repeat_hasData; // @[WidthWidget.scala 101:35]
  wire  cated_valid = repeated_repeater_io_deq_valid; // @[WidthWidget.scala 155:25 156:15]
  wire  _repeat_T = auto_in_d_ready & cated_valid; // @[Decoupled.scala 50:35]
  wire [1:0] _repeat_count_T_1 = repeat_count + 2'h1; // @[WidthWidget.scala 104:24]
  reg [1:0] repeat_sel_sel_sources_0; // @[WidthWidget.scala 180:27]
  reg [1:0] repeat_sel_sel_sources_1; // @[WidthWidget.scala 180:27]
  reg [1:0] repeat_sel_sel_sources_2; // @[WidthWidget.scala 180:27]
  reg [1:0] repeat_sel_sel_sources_3; // @[WidthWidget.scala 180:27]
  reg [1:0] repeat_sel_sel_sources_4; // @[WidthWidget.scala 180:27]
  wire [1:0] repeat_sel_sel_a_sel = auto_in_a_bits_address[4:3]; // @[WidthWidget.scala 181:38]
  wire [2:0] cated_bits_source = repeated_repeater_io_deq_bits_source; // @[WidthWidget.scala 155:25 156:15]
  reg [1:0] repeat_sel_hold_r; // @[Reg.scala 16:16]
  wire [1:0] _GEN_25 = 3'h1 == cated_bits_source ? repeat_sel_sel_sources_1 : repeat_sel_sel_sources_0; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_26 = 3'h2 == cated_bits_source ? repeat_sel_sel_sources_2 : _GEN_25; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_27 = 3'h3 == cated_bits_source ? repeat_sel_sel_sources_3 : _GEN_26; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_28 = 3'h4 == cated_bits_source ? repeat_sel_sel_sources_4 : _GEN_27; // @[Reg.scala 17:{22,22}]
  wire [1:0] _GEN_29 = repeat_first ? _GEN_28 : repeat_sel_hold_r; // @[Reg.scala 16:16 17:{18,22}]
  wire [1:0] _repeat_sel_T = ~repeat_limit; // @[WidthWidget.scala 116:18]
  wire [1:0] repeat_sel = _GEN_29 & _repeat_sel_T; // @[WidthWidget.scala 116:16]
  wire [1:0] repeat_index = repeat_sel | repeat_count; // @[WidthWidget.scala 120:24]
  wire [63:0] repeat_bundleIn_0_d_bits_data_mux_0 = cated_bits_data[63:0]; // @[WidthWidget.scala 122:55]
  wire [63:0] repeat_bundleIn_0_d_bits_data_mux_1 = cated_bits_data[127:64]; // @[WidthWidget.scala 122:55]
  wire [63:0] repeat_bundleIn_0_d_bits_data_mux_2 = cated_bits_data[191:128]; // @[WidthWidget.scala 122:55]
  wire [63:0] repeat_bundleIn_0_d_bits_data_mux_3 = cated_bits_data[255:192]; // @[WidthWidget.scala 122:55]
  wire [63:0] _GEN_31 = 2'h1 == repeat_index ? repeat_bundleIn_0_d_bits_data_mux_1 : repeat_bundleIn_0_d_bits_data_mux_0
    ; // @[WidthWidget.scala 131:{30,30}]
  wire [63:0] _GEN_32 = 2'h2 == repeat_index ? repeat_bundleIn_0_d_bits_data_mux_2 : _GEN_31; // @[WidthWidget.scala 131:{30,30}]
  Repeater repeated_repeater ( // @[Repeater.scala 35:26]
    .clock(repeated_repeater_clock),
    .reset(repeated_repeater_reset),
    .io_repeat(repeated_repeater_io_repeat),
    .io_enq_ready(repeated_repeater_io_enq_ready),
    .io_enq_valid(repeated_repeater_io_enq_valid),
    .io_enq_bits_opcode(repeated_repeater_io_enq_bits_opcode),
    .io_enq_bits_size(repeated_repeater_io_enq_bits_size),
    .io_enq_bits_source(repeated_repeater_io_enq_bits_source),
    .io_enq_bits_data(repeated_repeater_io_enq_bits_data),
    .io_deq_ready(repeated_repeater_io_deq_ready),
    .io_deq_valid(repeated_repeater_io_deq_valid),
    .io_deq_bits_opcode(repeated_repeater_io_deq_bits_opcode),
    .io_deq_bits_size(repeated_repeater_io_deq_bits_size),
    .io_deq_bits_source(repeated_repeater_io_deq_bits_source),
    .io_deq_bits_data(repeated_repeater_io_deq_bits_data)
  );
  assign auto_in_a_ready = auto_out_a_ready | ~last; // @[WidthWidget.scala 70:29]
  assign auto_in_d_valid = repeated_repeater_io_deq_valid; // @[WidthWidget.scala 155:25 156:15]
  assign auto_in_d_bits_opcode = repeated_repeater_io_deq_bits_opcode; // @[WidthWidget.scala 155:25 156:15]
  assign auto_in_d_bits_size = repeated_repeater_io_deq_bits_size; // @[WidthWidget.scala 155:25 156:15]
  assign auto_in_d_bits_source = repeated_repeater_io_deq_bits_source; // @[WidthWidget.scala 155:25 156:15]
  assign auto_in_d_bits_data = 2'h3 == repeat_index ? repeat_bundleIn_0_d_bits_data_mux_3 : _GEN_32; // @[WidthWidget.scala 131:{30,30}]
  assign auto_out_a_valid = auto_in_a_valid & last; // @[WidthWidget.scala 71:29]
  assign auto_out_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_a_bits_source = auto_in_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_a_bits_mask = _bundleOut_0_a_bits_mask_T_1 & _bundleOut_0_a_bits_mask_T_7; // @[WidthWidget.scala 79:88]
  assign auto_out_a_bits_data = {bundleOut_0_a_bits_data_hi,bundleOut_0_a_bits_data_lo}; // @[Cat.scala 31:58]
  assign auto_out_d_ready = repeated_repeater_io_enq_ready; // @[Nodes.scala 1207:84 Repeater.scala 37:21]
  assign repeated_repeater_clock = clock;
  assign repeated_repeater_reset = reset;
  assign repeated_repeater_io_repeat = ~repeat_last; // @[WidthWidget.scala 142:7]
  assign repeated_repeater_io_enq_valid = auto_out_d_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign repeated_repeater_io_enq_bits_opcode = auto_out_d_bits_opcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign repeated_repeater_io_enq_bits_size = auto_out_d_bits_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign repeated_repeater_io_enq_bits_source = auto_out_d_bits_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign repeated_repeater_io_enq_bits_data = auto_out_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign repeated_repeater_io_deq_ready = auto_in_d_ready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  always @(posedge clock) begin
    if (_T & _bundleIn_0_a_ready_T) begin // @[WidthWidget.scala 63:35]
      if (bundleOut_0_a_bits_data_masked_enable_0) begin // @[WidthWidget.scala 62:88]
        bundleOut_0_a_bits_data_rdata_0 <= auto_in_a_bits_data;
      end
    end
    if (_T & _bundleIn_0_a_ready_T) begin // @[WidthWidget.scala 63:35]
      if (bundleOut_0_a_bits_data_masked_enable_1) begin // @[WidthWidget.scala 62:88]
        bundleOut_0_a_bits_data_rdata_1 <= auto_in_a_bits_data;
      end
    end
    if (_T & _bundleIn_0_a_ready_T) begin // @[WidthWidget.scala 63:35]
      if (bundleOut_0_a_bits_data_masked_enable_2) begin // @[WidthWidget.scala 62:88]
        bundleOut_0_a_bits_data_rdata_2 <= auto_in_a_bits_data;
      end
    end
    if (_T & _bundleIn_0_a_ready_T) begin // @[WidthWidget.scala 63:35]
      if (bundleOut_0_a_bits_mask_masked_enable_0) begin // @[WidthWidget.scala 62:88]
        bundleOut_0_a_bits_mask_rdata_0 <= auto_in_a_bits_mask;
      end
    end
    if (_T & _bundleIn_0_a_ready_T) begin // @[WidthWidget.scala 63:35]
      if (bundleOut_0_a_bits_mask_masked_enable_1) begin // @[WidthWidget.scala 62:88]
        bundleOut_0_a_bits_mask_rdata_1 <= auto_in_a_bits_mask;
      end
    end
    if (_T & _bundleIn_0_a_ready_T) begin // @[WidthWidget.scala 63:35]
      if (bundleOut_0_a_bits_mask_masked_enable_2) begin // @[WidthWidget.scala 62:88]
        bundleOut_0_a_bits_mask_rdata_2 <= auto_in_a_bits_mask;
      end
    end
    if (_T) begin // @[WidthWidget.scala 182:28]
      if (3'h0 == auto_in_a_bits_source) begin // @[WidthWidget.scala 183:37]
        repeat_sel_sel_sources_0 <= repeat_sel_sel_a_sel; // @[WidthWidget.scala 183:37]
      end
    end
    if (_T) begin // @[WidthWidget.scala 182:28]
      if (3'h1 == auto_in_a_bits_source) begin // @[WidthWidget.scala 183:37]
        repeat_sel_sel_sources_1 <= repeat_sel_sel_a_sel; // @[WidthWidget.scala 183:37]
      end
    end
    if (_T) begin // @[WidthWidget.scala 182:28]
      if (3'h2 == auto_in_a_bits_source) begin // @[WidthWidget.scala 183:37]
        repeat_sel_sel_sources_2 <= repeat_sel_sel_a_sel; // @[WidthWidget.scala 183:37]
      end
    end
    if (_T) begin // @[WidthWidget.scala 182:28]
      if (3'h3 == auto_in_a_bits_source) begin // @[WidthWidget.scala 183:37]
        repeat_sel_sel_sources_3 <= repeat_sel_sel_a_sel; // @[WidthWidget.scala 183:37]
      end
    end
    if (_T) begin // @[WidthWidget.scala 182:28]
      if (3'h4 == auto_in_a_bits_source) begin // @[WidthWidget.scala 183:37]
        repeat_sel_sel_sources_4 <= repeat_sel_sel_a_sel; // @[WidthWidget.scala 183:37]
      end
    end
    if (repeat_first) begin // @[Reg.scala 17:18]
      if (3'h4 == cated_bits_source) begin // @[Reg.scala 17:22]
        repeat_sel_hold_r <= repeat_sel_sel_sources_4; // @[Reg.scala 17:22]
      end else if (3'h3 == cated_bits_source) begin // @[Reg.scala 17:22]
        repeat_sel_hold_r <= repeat_sel_sel_sources_3; // @[Reg.scala 17:22]
      end else if (3'h2 == cated_bits_source) begin // @[Reg.scala 17:22]
        repeat_sel_hold_r <= repeat_sel_sel_sources_2; // @[Reg.scala 17:22]
      end else begin
        repeat_sel_hold_r <= _GEN_25;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WidthWidget.scala 43:24]
      count <= 2'h0; // @[WidthWidget.scala 44:15 46:21 47:17]
    end else if (_T) begin // @[WidthWidget.scala 34:27]
      if (last) begin
        count <= 2'h0;
      end else begin
        count <= _count_T_1;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WidthWidget.scala 63:35]
      bundleOut_0_a_bits_data_rdata_written_once <= 1'h0; // @[WidthWidget.scala 64:30]
    end else begin
      bundleOut_0_a_bits_data_rdata_written_once <= _T & _bundleIn_0_a_ready_T |
        bundleOut_0_a_bits_data_rdata_written_once; // @[WidthWidget.scala 56:41]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WidthWidget.scala 63:35]
      bundleOut_0_a_bits_mask_rdata_written_once <= 1'h0; // @[WidthWidget.scala 64:30]
    end else begin
      bundleOut_0_a_bits_mask_rdata_written_once <= _T & _bundleIn_0_a_ready_T |
        bundleOut_0_a_bits_mask_rdata_written_once; // @[WidthWidget.scala 56:41]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WidthWidget.scala 103:25]
      repeat_count <= 2'h0; // @[WidthWidget.scala 104:15 105:{21,29}]
    end else if (_repeat_T) begin // @[WidthWidget.scala 99:26]
      if (repeat_last) begin
        repeat_count <= 2'h0;
      end else begin
        repeat_count <= _repeat_count_T_1;
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
  count = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  bundleOut_0_a_bits_data_rdata_written_once = _RAND_1[0:0];
  _RAND_2 = {2{`RANDOM}};
  bundleOut_0_a_bits_data_rdata_0 = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  bundleOut_0_a_bits_data_rdata_1 = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  bundleOut_0_a_bits_data_rdata_2 = _RAND_4[63:0];
  _RAND_5 = {1{`RANDOM}};
  bundleOut_0_a_bits_mask_rdata_written_once = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  bundleOut_0_a_bits_mask_rdata_0 = _RAND_6[7:0];
  _RAND_7 = {1{`RANDOM}};
  bundleOut_0_a_bits_mask_rdata_1 = _RAND_7[7:0];
  _RAND_8 = {1{`RANDOM}};
  bundleOut_0_a_bits_mask_rdata_2 = _RAND_8[7:0];
  _RAND_9 = {1{`RANDOM}};
  repeat_count = _RAND_9[1:0];
  _RAND_10 = {1{`RANDOM}};
  repeat_sel_sel_sources_0 = _RAND_10[1:0];
  _RAND_11 = {1{`RANDOM}};
  repeat_sel_sel_sources_1 = _RAND_11[1:0];
  _RAND_12 = {1{`RANDOM}};
  repeat_sel_sel_sources_2 = _RAND_12[1:0];
  _RAND_13 = {1{`RANDOM}};
  repeat_sel_sel_sources_3 = _RAND_13[1:0];
  _RAND_14 = {1{`RANDOM}};
  repeat_sel_sel_sources_4 = _RAND_14[1:0];
  _RAND_15 = {1{`RANDOM}};
  repeat_sel_hold_r = _RAND_15[1:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    count = 2'h0;
  end
  if (reset) begin
    bundleOut_0_a_bits_data_rdata_written_once = 1'h0;
  end
  if (reset) begin
    bundleOut_0_a_bits_mask_rdata_written_once = 1'h0;
  end
  if (reset) begin
    repeat_count = 2'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

