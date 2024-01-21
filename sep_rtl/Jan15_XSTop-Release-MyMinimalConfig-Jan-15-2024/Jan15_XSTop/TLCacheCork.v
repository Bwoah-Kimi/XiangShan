module TLCacheCork(
  input          clock,
  input          reset,
  output         auto_in_a_ready,
  input          auto_in_a_valid,
  input  [2:0]   auto_in_a_bits_opcode,
  input  [2:0]   auto_in_a_bits_param,
  input  [2:0]   auto_in_a_bits_size,
  input  [3:0]   auto_in_a_bits_source,
  input  [35:0]  auto_in_a_bits_address,
  input  [31:0]  auto_in_a_bits_mask,
  input  [255:0] auto_in_a_bits_data,
  output         auto_in_c_ready,
  input          auto_in_c_valid,
  input  [2:0]   auto_in_c_bits_opcode,
  input  [2:0]   auto_in_c_bits_size,
  input  [3:0]   auto_in_c_bits_source,
  input  [35:0]  auto_in_c_bits_address,
  input  [255:0] auto_in_c_bits_data,
  input          auto_in_d_ready,
  output         auto_in_d_valid,
  output [2:0]   auto_in_d_bits_opcode,
  output [1:0]   auto_in_d_bits_param,
  output [2:0]   auto_in_d_bits_size,
  output [3:0]   auto_in_d_bits_source,
  output [2:0]   auto_in_d_bits_sink,
  output         auto_in_d_bits_denied,
  output [255:0] auto_in_d_bits_data,
  input          auto_in_e_valid,
  input  [2:0]   auto_in_e_bits_sink,
  input          auto_out_a_ready,
  output         auto_out_a_valid,
  output [2:0]   auto_out_a_bits_opcode,
  output [2:0]   auto_out_a_bits_size,
  output [4:0]   auto_out_a_bits_source,
  output [35:0]  auto_out_a_bits_address,
  output [31:0]  auto_out_a_bits_mask,
  output [255:0] auto_out_a_bits_data,
  output         auto_out_d_ready,
  input          auto_out_d_valid,
  input  [2:0]   auto_out_d_bits_opcode,
  input  [1:0]   auto_out_d_bits_param,
  input  [2:0]   auto_out_d_bits_size,
  input  [4:0]   auto_out_d_bits_source,
  input          auto_out_d_bits_denied,
  input  [255:0] auto_out_d_bits_data
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
`endif // RANDOMIZE_REG_INIT
  wire  pool_clock; // @[CacheCork.scala 117:26]
  wire  pool_reset; // @[CacheCork.scala 117:26]
  wire  pool_io_free_valid; // @[CacheCork.scala 117:26]
  wire [2:0] pool_io_free_bits; // @[CacheCork.scala 117:26]
  wire  pool_io_alloc_ready; // @[CacheCork.scala 117:26]
  wire  pool_io_alloc_valid; // @[CacheCork.scala 117:26]
  wire [2:0] pool_io_alloc_bits; // @[CacheCork.scala 117:26]
  wire  q_clock; // @[Decoupled.scala 361:21]
  wire  q_reset; // @[Decoupled.scala 361:21]
  wire  q_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  q_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] q_io_enq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] q_io_enq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] q_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [3:0] q_io_enq_bits_source; // @[Decoupled.scala 361:21]
  wire [2:0] q_io_enq_bits_sink; // @[Decoupled.scala 361:21]
  wire  q_io_enq_bits_denied; // @[Decoupled.scala 361:21]
  wire [255:0] q_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire  q_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  q_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] q_io_deq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] q_io_deq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] q_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [3:0] q_io_deq_bits_source; // @[Decoupled.scala 361:21]
  wire [2:0] q_io_deq_bits_sink; // @[Decoupled.scala 361:21]
  wire  q_io_deq_bits_denied; // @[Decoupled.scala 361:21]
  wire [255:0] q_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire  q_1_clock; // @[Decoupled.scala 361:21]
  wire  q_1_reset; // @[Decoupled.scala 361:21]
  wire  q_1_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  q_1_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] q_1_io_enq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] q_1_io_enq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] q_1_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [3:0] q_1_io_enq_bits_source; // @[Decoupled.scala 361:21]
  wire [2:0] q_1_io_enq_bits_sink; // @[Decoupled.scala 361:21]
  wire  q_1_io_enq_bits_denied; // @[Decoupled.scala 361:21]
  wire [255:0] q_1_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire  q_1_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  q_1_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [2:0] q_1_io_deq_bits_opcode; // @[Decoupled.scala 361:21]
  wire [1:0] q_1_io_deq_bits_param; // @[Decoupled.scala 361:21]
  wire [2:0] q_1_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [3:0] q_1_io_deq_bits_source; // @[Decoupled.scala 361:21]
  wire [2:0] q_1_io_deq_bits_sink; // @[Decoupled.scala 361:21]
  wire  q_1_io_deq_bits_denied; // @[Decoupled.scala 361:21]
  wire [255:0] q_1_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire  isPut = auto_in_a_bits_opcode == 3'h0 | auto_in_a_bits_opcode == 3'h1; // @[CacheCork.scala 66:54]
  wire  _toD_T = auto_in_a_bits_opcode == 3'h6; // @[CacheCork.scala 67:37]
  wire  _toD_T_3 = auto_in_a_bits_opcode == 3'h7; // @[CacheCork.scala 68:37]
  wire  toD = auto_in_a_bits_opcode == 3'h6 & auto_in_a_bits_param == 3'h2 | _toD_T_3; // @[CacheCork.scala 67:97]
  wire  a_d_ready = q_1_io_enq_ready; // @[CacheCork.scala 65:23 Decoupled.scala 365:17]
  reg  beatsLeft; // @[Arbiter.scala 87:30]
  wire  idle = ~beatsLeft; // @[Arbiter.scala 88:28]
  wire  a_a_valid = auto_in_a_valid & ~toD; // @[CacheCork.scala 71:33]
  wire  c_a_valid = auto_in_c_valid & auto_in_c_bits_opcode == 3'h7; // @[CacheCork.scala 92:33]
  wire [1:0] _readys_T = {a_a_valid,c_a_valid}; // @[Cat.scala 31:58]
  wire [2:0] _readys_T_1 = {_readys_T, 1'h0}; // @[package.scala 244:48]
  wire [1:0] _readys_T_3 = _readys_T | _readys_T_1[1:0]; // @[package.scala 244:43]
  wire [2:0] _readys_T_5 = {_readys_T_3, 1'h0}; // @[Arbiter.scala 16:78]
  wire [1:0] _readys_T_7 = ~_readys_T_5[1:0]; // @[Arbiter.scala 16:61]
  wire  readys__1 = _readys_T_7[1]; // @[Arbiter.scala 95:86]
  reg  state__1; // @[Arbiter.scala 116:26]
  wire  allowed__1 = idle ? readys__1 : state__1; // @[Arbiter.scala 121:24]
  wire  out_1_ready = auto_out_a_ready & allowed__1; // @[Arbiter.scala 123:31]
  wire [4:0] _a_a_bits_source_T = {auto_in_a_bits_source, 1'h0}; // @[CacheCork.scala 73:45]
  wire [4:0] _GEN_57 = {{4'd0}, isPut}; // @[CacheCork.scala 73:50]
  wire [4:0] _a_a_bits_source_T_2 = _a_a_bits_source_T | _GEN_57; // @[CacheCork.scala 73:50]
  wire [4:0] _a_a_bits_source_T_4 = _a_a_bits_source_T | 5'h1; // @[CacheCork.scala 79:52]
  wire [2:0] a_a_bits_opcode = _toD_T | _toD_T_3 ? 3'h4 : auto_in_a_bits_opcode; // @[CacheCork.scala 72:18 76:86 77:27]
  wire [4:0] a_a_bits_source = _toD_T | _toD_T_3 ? _a_a_bits_source_T_4 : _a_a_bits_source_T_2; // @[CacheCork.scala 73:25 76:86 79:27]
  wire [4:0] c_a_bits_a_source = {auto_in_c_bits_source, 1'h0}; // @[CacheCork.scala 94:41]
  wire [4:0] _c_a_bits_a_mask_sizeOH_T = {{2'd0}, auto_in_c_bits_size}; // @[Misc.scala 201:34]
  wire [2:0] c_a_bits_a_mask_sizeOH_shiftAmount = _c_a_bits_a_mask_sizeOH_T[2:0]; // @[OneHot.scala 63:49]
  wire [7:0] _c_a_bits_a_mask_sizeOH_T_1 = 8'h1 << c_a_bits_a_mask_sizeOH_shiftAmount; // @[OneHot.scala 64:12]
  wire [4:0] c_a_bits_a_mask_sizeOH = _c_a_bits_a_mask_sizeOH_T_1[4:0] | 5'h1; // @[Misc.scala 201:81]
  wire  _c_a_bits_a_mask_T = auto_in_c_bits_size >= 3'h5; // @[Misc.scala 205:21]
  wire  c_a_bits_a_mask_size = c_a_bits_a_mask_sizeOH[4]; // @[Misc.scala 208:26]
  wire  c_a_bits_a_mask_bit = auto_in_c_bits_address[4]; // @[Misc.scala 209:26]
  wire  c_a_bits_a_mask_nbit = ~c_a_bits_a_mask_bit; // @[Misc.scala 210:20]
  wire  c_a_bits_a_mask_acc = _c_a_bits_a_mask_T | c_a_bits_a_mask_size & c_a_bits_a_mask_nbit; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_acc_1 = _c_a_bits_a_mask_T | c_a_bits_a_mask_size & c_a_bits_a_mask_bit; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_size_1 = c_a_bits_a_mask_sizeOH[3]; // @[Misc.scala 208:26]
  wire  c_a_bits_a_mask_bit_1 = auto_in_c_bits_address[3]; // @[Misc.scala 209:26]
  wire  c_a_bits_a_mask_nbit_1 = ~c_a_bits_a_mask_bit_1; // @[Misc.scala 210:20]
  wire  c_a_bits_a_mask_eq_2 = c_a_bits_a_mask_nbit & c_a_bits_a_mask_nbit_1; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_2 = c_a_bits_a_mask_acc | c_a_bits_a_mask_size_1 & c_a_bits_a_mask_eq_2; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_3 = c_a_bits_a_mask_nbit & c_a_bits_a_mask_bit_1; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_3 = c_a_bits_a_mask_acc | c_a_bits_a_mask_size_1 & c_a_bits_a_mask_eq_3; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_4 = c_a_bits_a_mask_bit & c_a_bits_a_mask_nbit_1; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_4 = c_a_bits_a_mask_acc_1 | c_a_bits_a_mask_size_1 & c_a_bits_a_mask_eq_4; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_5 = c_a_bits_a_mask_bit & c_a_bits_a_mask_bit_1; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_5 = c_a_bits_a_mask_acc_1 | c_a_bits_a_mask_size_1 & c_a_bits_a_mask_eq_5; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_size_2 = c_a_bits_a_mask_sizeOH[2]; // @[Misc.scala 208:26]
  wire  c_a_bits_a_mask_bit_2 = auto_in_c_bits_address[2]; // @[Misc.scala 209:26]
  wire  c_a_bits_a_mask_nbit_2 = ~c_a_bits_a_mask_bit_2; // @[Misc.scala 210:20]
  wire  c_a_bits_a_mask_eq_6 = c_a_bits_a_mask_eq_2 & c_a_bits_a_mask_nbit_2; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_6 = c_a_bits_a_mask_acc_2 | c_a_bits_a_mask_size_2 & c_a_bits_a_mask_eq_6; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_7 = c_a_bits_a_mask_eq_2 & c_a_bits_a_mask_bit_2; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_7 = c_a_bits_a_mask_acc_2 | c_a_bits_a_mask_size_2 & c_a_bits_a_mask_eq_7; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_8 = c_a_bits_a_mask_eq_3 & c_a_bits_a_mask_nbit_2; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_8 = c_a_bits_a_mask_acc_3 | c_a_bits_a_mask_size_2 & c_a_bits_a_mask_eq_8; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_9 = c_a_bits_a_mask_eq_3 & c_a_bits_a_mask_bit_2; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_9 = c_a_bits_a_mask_acc_3 | c_a_bits_a_mask_size_2 & c_a_bits_a_mask_eq_9; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_10 = c_a_bits_a_mask_eq_4 & c_a_bits_a_mask_nbit_2; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_10 = c_a_bits_a_mask_acc_4 | c_a_bits_a_mask_size_2 & c_a_bits_a_mask_eq_10; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_11 = c_a_bits_a_mask_eq_4 & c_a_bits_a_mask_bit_2; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_11 = c_a_bits_a_mask_acc_4 | c_a_bits_a_mask_size_2 & c_a_bits_a_mask_eq_11; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_12 = c_a_bits_a_mask_eq_5 & c_a_bits_a_mask_nbit_2; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_12 = c_a_bits_a_mask_acc_5 | c_a_bits_a_mask_size_2 & c_a_bits_a_mask_eq_12; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_13 = c_a_bits_a_mask_eq_5 & c_a_bits_a_mask_bit_2; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_13 = c_a_bits_a_mask_acc_5 | c_a_bits_a_mask_size_2 & c_a_bits_a_mask_eq_13; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_size_3 = c_a_bits_a_mask_sizeOH[1]; // @[Misc.scala 208:26]
  wire  c_a_bits_a_mask_bit_3 = auto_in_c_bits_address[1]; // @[Misc.scala 209:26]
  wire  c_a_bits_a_mask_nbit_3 = ~c_a_bits_a_mask_bit_3; // @[Misc.scala 210:20]
  wire  c_a_bits_a_mask_eq_14 = c_a_bits_a_mask_eq_6 & c_a_bits_a_mask_nbit_3; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_14 = c_a_bits_a_mask_acc_6 | c_a_bits_a_mask_size_3 & c_a_bits_a_mask_eq_14; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_15 = c_a_bits_a_mask_eq_6 & c_a_bits_a_mask_bit_3; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_15 = c_a_bits_a_mask_acc_6 | c_a_bits_a_mask_size_3 & c_a_bits_a_mask_eq_15; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_16 = c_a_bits_a_mask_eq_7 & c_a_bits_a_mask_nbit_3; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_16 = c_a_bits_a_mask_acc_7 | c_a_bits_a_mask_size_3 & c_a_bits_a_mask_eq_16; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_17 = c_a_bits_a_mask_eq_7 & c_a_bits_a_mask_bit_3; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_17 = c_a_bits_a_mask_acc_7 | c_a_bits_a_mask_size_3 & c_a_bits_a_mask_eq_17; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_18 = c_a_bits_a_mask_eq_8 & c_a_bits_a_mask_nbit_3; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_18 = c_a_bits_a_mask_acc_8 | c_a_bits_a_mask_size_3 & c_a_bits_a_mask_eq_18; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_19 = c_a_bits_a_mask_eq_8 & c_a_bits_a_mask_bit_3; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_19 = c_a_bits_a_mask_acc_8 | c_a_bits_a_mask_size_3 & c_a_bits_a_mask_eq_19; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_20 = c_a_bits_a_mask_eq_9 & c_a_bits_a_mask_nbit_3; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_20 = c_a_bits_a_mask_acc_9 | c_a_bits_a_mask_size_3 & c_a_bits_a_mask_eq_20; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_21 = c_a_bits_a_mask_eq_9 & c_a_bits_a_mask_bit_3; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_21 = c_a_bits_a_mask_acc_9 | c_a_bits_a_mask_size_3 & c_a_bits_a_mask_eq_21; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_22 = c_a_bits_a_mask_eq_10 & c_a_bits_a_mask_nbit_3; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_22 = c_a_bits_a_mask_acc_10 | c_a_bits_a_mask_size_3 & c_a_bits_a_mask_eq_22; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_23 = c_a_bits_a_mask_eq_10 & c_a_bits_a_mask_bit_3; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_23 = c_a_bits_a_mask_acc_10 | c_a_bits_a_mask_size_3 & c_a_bits_a_mask_eq_23; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_24 = c_a_bits_a_mask_eq_11 & c_a_bits_a_mask_nbit_3; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_24 = c_a_bits_a_mask_acc_11 | c_a_bits_a_mask_size_3 & c_a_bits_a_mask_eq_24; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_25 = c_a_bits_a_mask_eq_11 & c_a_bits_a_mask_bit_3; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_25 = c_a_bits_a_mask_acc_11 | c_a_bits_a_mask_size_3 & c_a_bits_a_mask_eq_25; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_26 = c_a_bits_a_mask_eq_12 & c_a_bits_a_mask_nbit_3; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_26 = c_a_bits_a_mask_acc_12 | c_a_bits_a_mask_size_3 & c_a_bits_a_mask_eq_26; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_27 = c_a_bits_a_mask_eq_12 & c_a_bits_a_mask_bit_3; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_27 = c_a_bits_a_mask_acc_12 | c_a_bits_a_mask_size_3 & c_a_bits_a_mask_eq_27; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_28 = c_a_bits_a_mask_eq_13 & c_a_bits_a_mask_nbit_3; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_28 = c_a_bits_a_mask_acc_13 | c_a_bits_a_mask_size_3 & c_a_bits_a_mask_eq_28; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_29 = c_a_bits_a_mask_eq_13 & c_a_bits_a_mask_bit_3; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_29 = c_a_bits_a_mask_acc_13 | c_a_bits_a_mask_size_3 & c_a_bits_a_mask_eq_29; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_size_4 = c_a_bits_a_mask_sizeOH[0]; // @[Misc.scala 208:26]
  wire  c_a_bits_a_mask_bit_4 = auto_in_c_bits_address[0]; // @[Misc.scala 209:26]
  wire  c_a_bits_a_mask_nbit_4 = ~c_a_bits_a_mask_bit_4; // @[Misc.scala 210:20]
  wire  c_a_bits_a_mask_eq_30 = c_a_bits_a_mask_eq_14 & c_a_bits_a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_30 = c_a_bits_a_mask_acc_14 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_30; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_31 = c_a_bits_a_mask_eq_14 & c_a_bits_a_mask_bit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_31 = c_a_bits_a_mask_acc_14 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_31; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_32 = c_a_bits_a_mask_eq_15 & c_a_bits_a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_32 = c_a_bits_a_mask_acc_15 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_32; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_33 = c_a_bits_a_mask_eq_15 & c_a_bits_a_mask_bit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_33 = c_a_bits_a_mask_acc_15 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_33; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_34 = c_a_bits_a_mask_eq_16 & c_a_bits_a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_34 = c_a_bits_a_mask_acc_16 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_34; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_35 = c_a_bits_a_mask_eq_16 & c_a_bits_a_mask_bit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_35 = c_a_bits_a_mask_acc_16 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_35; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_36 = c_a_bits_a_mask_eq_17 & c_a_bits_a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_36 = c_a_bits_a_mask_acc_17 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_36; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_37 = c_a_bits_a_mask_eq_17 & c_a_bits_a_mask_bit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_37 = c_a_bits_a_mask_acc_17 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_37; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_38 = c_a_bits_a_mask_eq_18 & c_a_bits_a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_38 = c_a_bits_a_mask_acc_18 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_38; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_39 = c_a_bits_a_mask_eq_18 & c_a_bits_a_mask_bit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_39 = c_a_bits_a_mask_acc_18 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_39; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_40 = c_a_bits_a_mask_eq_19 & c_a_bits_a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_40 = c_a_bits_a_mask_acc_19 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_40; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_41 = c_a_bits_a_mask_eq_19 & c_a_bits_a_mask_bit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_41 = c_a_bits_a_mask_acc_19 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_41; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_42 = c_a_bits_a_mask_eq_20 & c_a_bits_a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_42 = c_a_bits_a_mask_acc_20 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_42; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_43 = c_a_bits_a_mask_eq_20 & c_a_bits_a_mask_bit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_43 = c_a_bits_a_mask_acc_20 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_43; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_44 = c_a_bits_a_mask_eq_21 & c_a_bits_a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_44 = c_a_bits_a_mask_acc_21 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_44; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_45 = c_a_bits_a_mask_eq_21 & c_a_bits_a_mask_bit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_45 = c_a_bits_a_mask_acc_21 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_45; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_46 = c_a_bits_a_mask_eq_22 & c_a_bits_a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_46 = c_a_bits_a_mask_acc_22 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_46; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_47 = c_a_bits_a_mask_eq_22 & c_a_bits_a_mask_bit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_47 = c_a_bits_a_mask_acc_22 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_47; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_48 = c_a_bits_a_mask_eq_23 & c_a_bits_a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_48 = c_a_bits_a_mask_acc_23 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_48; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_49 = c_a_bits_a_mask_eq_23 & c_a_bits_a_mask_bit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_49 = c_a_bits_a_mask_acc_23 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_49; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_50 = c_a_bits_a_mask_eq_24 & c_a_bits_a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_50 = c_a_bits_a_mask_acc_24 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_50; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_51 = c_a_bits_a_mask_eq_24 & c_a_bits_a_mask_bit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_51 = c_a_bits_a_mask_acc_24 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_51; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_52 = c_a_bits_a_mask_eq_25 & c_a_bits_a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_52 = c_a_bits_a_mask_acc_25 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_52; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_53 = c_a_bits_a_mask_eq_25 & c_a_bits_a_mask_bit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_53 = c_a_bits_a_mask_acc_25 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_53; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_54 = c_a_bits_a_mask_eq_26 & c_a_bits_a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_54 = c_a_bits_a_mask_acc_26 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_54; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_55 = c_a_bits_a_mask_eq_26 & c_a_bits_a_mask_bit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_55 = c_a_bits_a_mask_acc_26 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_55; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_56 = c_a_bits_a_mask_eq_27 & c_a_bits_a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_56 = c_a_bits_a_mask_acc_27 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_56; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_57 = c_a_bits_a_mask_eq_27 & c_a_bits_a_mask_bit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_57 = c_a_bits_a_mask_acc_27 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_57; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_58 = c_a_bits_a_mask_eq_28 & c_a_bits_a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_58 = c_a_bits_a_mask_acc_28 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_58; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_59 = c_a_bits_a_mask_eq_28 & c_a_bits_a_mask_bit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_59 = c_a_bits_a_mask_acc_28 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_59; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_60 = c_a_bits_a_mask_eq_29 & c_a_bits_a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_60 = c_a_bits_a_mask_acc_29 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_60; // @[Misc.scala 214:29]
  wire  c_a_bits_a_mask_eq_61 = c_a_bits_a_mask_eq_29 & c_a_bits_a_mask_bit_4; // @[Misc.scala 213:27]
  wire  c_a_bits_a_mask_acc_61 = c_a_bits_a_mask_acc_29 | c_a_bits_a_mask_size_4 & c_a_bits_a_mask_eq_61; // @[Misc.scala 214:29]
  wire [7:0] c_a_bits_a_mask_lo_lo = {c_a_bits_a_mask_acc_37,c_a_bits_a_mask_acc_36,c_a_bits_a_mask_acc_35,
    c_a_bits_a_mask_acc_34,c_a_bits_a_mask_acc_33,c_a_bits_a_mask_acc_32,c_a_bits_a_mask_acc_31,c_a_bits_a_mask_acc_30}; // @[Cat.scala 31:58]
  wire [15:0] c_a_bits_a_mask_lo = {c_a_bits_a_mask_acc_45,c_a_bits_a_mask_acc_44,c_a_bits_a_mask_acc_43,
    c_a_bits_a_mask_acc_42,c_a_bits_a_mask_acc_41,c_a_bits_a_mask_acc_40,c_a_bits_a_mask_acc_39,c_a_bits_a_mask_acc_38,
    c_a_bits_a_mask_lo_lo}; // @[Cat.scala 31:58]
  wire [7:0] c_a_bits_a_mask_hi_lo = {c_a_bits_a_mask_acc_53,c_a_bits_a_mask_acc_52,c_a_bits_a_mask_acc_51,
    c_a_bits_a_mask_acc_50,c_a_bits_a_mask_acc_49,c_a_bits_a_mask_acc_48,c_a_bits_a_mask_acc_47,c_a_bits_a_mask_acc_46}; // @[Cat.scala 31:58]
  wire [31:0] c_a_bits_a_mask = {c_a_bits_a_mask_acc_61,c_a_bits_a_mask_acc_60,c_a_bits_a_mask_acc_59,
    c_a_bits_a_mask_acc_58,c_a_bits_a_mask_acc_57,c_a_bits_a_mask_acc_56,c_a_bits_a_mask_acc_55,c_a_bits_a_mask_acc_54,
    c_a_bits_a_mask_hi_lo,c_a_bits_a_mask_lo}; // @[Cat.scala 31:58]
  wire  _c_d_valid_T = auto_in_c_bits_opcode == 3'h6; // @[CacheCork.scala 103:53]
  wire  c_d_ready = q_io_enq_ready; // @[CacheCork.scala 102:23 Decoupled.scala 365:17]
  wire  readys__0 = _readys_T_7[0]; // @[Arbiter.scala 95:86]
  reg  state__0; // @[Arbiter.scala 116:26]
  wire  allowed__0 = idle ? readys__0 : state__0; // @[Arbiter.scala 121:24]
  wire  out_ready = auto_out_a_ready & allowed__0; // @[Arbiter.scala 123:31]
  reg  d_first_counter; // @[Edges.scala 228:27]
  wire  d_first = ~d_first_counter; // @[Edges.scala 230:25]
  reg  beatsLeft_1; // @[Arbiter.scala 87:30]
  wire  idle_1 = ~beatsLeft_1; // @[Arbiter.scala 88:28]
  wire  out_5_earlyValid = q_1_io_deq_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_4_earlyValid = q_io_deq_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire [2:0] _readys_T_10 = {out_5_earlyValid,out_4_earlyValid,auto_out_d_valid}; // @[Cat.scala 31:58]
  wire [3:0] _readys_T_11 = {_readys_T_10, 1'h0}; // @[package.scala 244:48]
  wire [2:0] _readys_T_13 = _readys_T_10 | _readys_T_11[2:0]; // @[package.scala 244:43]
  wire [4:0] _readys_T_14 = {_readys_T_13, 2'h0}; // @[package.scala 244:48]
  wire [2:0] _readys_T_16 = _readys_T_13 | _readys_T_14[2:0]; // @[package.scala 244:43]
  wire [3:0] _readys_T_18 = {_readys_T_16, 1'h0}; // @[Arbiter.scala 16:78]
  wire [2:0] _readys_T_20 = ~_readys_T_18[2:0]; // @[Arbiter.scala 16:61]
  wire  readys_1_0 = _readys_T_20[0]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_1_0 = readys_1_0 & auto_out_d_valid; // @[Arbiter.scala 97:79]
  reg  state_1_0; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_1_0 = idle_1 ? earlyWinner_1_0 : state_1_0; // @[Arbiter.scala 117:30]
  wire [2:0] _GEN_54 = auto_out_d_bits_opcode == 3'h1 & auto_out_d_bits_source[0] ? 3'h5 : auto_out_d_bits_opcode; // @[CacheCork.scala 132:13 152:76 153:27]
  wire [2:0] d_d_bits_opcode = auto_out_d_bits_opcode == 3'h0 & ~auto_out_d_bits_source[0] ? 3'h6 : _GEN_54; // @[CacheCork.scala 156:73 157:27]
  wire [2:0] _T_141 = muxStateEarly_1_0 ? d_d_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire  readys_1_1 = _readys_T_20[1]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_1_1 = readys_1_1 & out_4_earlyValid; // @[Arbiter.scala 97:79]
  reg  state_1_1; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_1_1 = idle_1 ? earlyWinner_1_1 : state_1_1; // @[Arbiter.scala 117:30]
  wire [2:0] out_4_bits_opcode = q_io_deq_bits_opcode; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_142 = muxStateEarly_1_1 ? out_4_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_144 = _T_141 | _T_142; // @[Mux.scala 27:73]
  wire  readys_1_2 = _readys_T_20[2]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_1_2 = readys_1_2 & out_5_earlyValid; // @[Arbiter.scala 97:79]
  reg  state_1_2; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_1_2 = idle_1 ? earlyWinner_1_2 : state_1_2; // @[Arbiter.scala 117:30]
  wire [2:0] out_5_bits_opcode = q_1_io_deq_bits_opcode; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_143 = muxStateEarly_1_2 ? out_5_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] sink_ACancel_1_bits_opcode = _T_144 | _T_143; // @[Mux.scala 27:73]
  wire  d_grant = sink_ACancel_1_bits_opcode == 3'h5 | sink_ACancel_1_bits_opcode == 3'h4; // @[CacheCork.scala 123:54]
  wire  _in_d_ready_T_3 = pool_io_alloc_valid | ~d_first | ~d_grant; // @[CacheCork.scala 126:70]
  wire  in_d_ready = auto_in_d_ready & (pool_io_alloc_valid | ~d_first | ~d_grant); // @[CacheCork.scala 126:34]
  wire  _sink_ACancel_earlyValid_T_11 = state_1_0 & auto_out_d_valid | state_1_1 & out_4_earlyValid | state_1_2 &
    out_5_earlyValid; // @[Mux.scala 27:73]
  wire  sink_ACancel_1_earlyValid = idle_1 ? auto_out_d_valid | out_4_earlyValid | out_5_earlyValid :
    _sink_ACancel_earlyValid_T_11; // @[Arbiter.scala 125:29]
  wire  _d_first_T = in_d_ready & sink_ACancel_1_earlyValid; // @[Decoupled.scala 50:35]
  wire [2:0] _T_131 = muxStateEarly_1_0 ? auto_out_d_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] out_4_bits_size = q_io_deq_bits_size; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_132 = muxStateEarly_1_1 ? out_4_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_134 = _T_131 | _T_132; // @[Mux.scala 27:73]
  wire [2:0] out_5_bits_size = q_1_io_deq_bits_size; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [2:0] _T_133 = muxStateEarly_1_2 ? out_5_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] sink_ACancel_1_bits_size = _T_134 | _T_133; // @[Mux.scala 27:73]
  wire [12:0] _d_first_beats1_decode_T_1 = 13'h3f << sink_ACancel_1_bits_size; // @[package.scala 234:77]
  wire [5:0] _d_first_beats1_decode_T_3 = ~_d_first_beats1_decode_T_1[5:0]; // @[package.scala 234:46]
  wire  d_first_beats1_decode = _d_first_beats1_decode_T_3[5]; // @[Edges.scala 219:59]
  wire  d_first_beats1_opdata = sink_ACancel_1_bits_opcode[0]; // @[Edges.scala 105:36]
  wire  d_first_beats1 = d_first_beats1_opdata & d_first_beats1_decode; // @[Edges.scala 220:14]
  wire  d_first_counter1 = d_first_counter - 1'h1; // @[Edges.scala 229:28]
  wire  bundleIn_0_d_valid = sink_ACancel_1_earlyValid & _in_d_ready_T_3; // @[CacheCork.scala 125:34]
  wire  _pool_io_alloc_ready_T = auto_in_d_ready & bundleIn_0_d_valid; // @[Decoupled.scala 50:35]
  reg [2:0] bundleIn_0_d_bits_sink_r; // @[Reg.scala 16:16]
  wire [3:0] d_d_bits_source = auto_out_d_bits_source[4:1]; // @[CacheCork.scala 133:46]
  wire [1:0] d_d_bits_param = auto_out_d_bits_opcode == 3'h1 & auto_out_d_bits_source[0] ? 2'h0 : auto_out_d_bits_param; // @[CacheCork.scala 132:13 152:76 154:26]
  wire [12:0] _decode_T_1 = 13'h3f << auto_in_c_bits_size; // @[package.scala 234:77]
  wire [5:0] _decode_T_3 = ~_decode_T_1[5:0]; // @[package.scala 234:46]
  wire  decode = _decode_T_3[5]; // @[Edges.scala 219:59]
  wire [12:0] _decode_T_5 = 13'h3f << auto_in_a_bits_size; // @[package.scala 234:77]
  wire [5:0] _decode_T_7 = ~_decode_T_5[5:0]; // @[package.scala 234:46]
  wire  decode_1 = _decode_T_7[5]; // @[Edges.scala 219:59]
  wire  opdata_1 = ~a_a_bits_opcode[2]; // @[Edges.scala 91:28]
  wire  _T_24 = opdata_1 & decode_1; // @[Edges.scala 220:14]
  wire  latch = idle & auto_out_a_ready; // @[Arbiter.scala 89:24]
  wire  earlyWinner__0 = readys__0 & c_a_valid; // @[Arbiter.scala 97:79]
  wire  earlyWinner__1 = readys__1 & a_a_valid; // @[Arbiter.scala 97:79]
  wire  _T_35 = c_a_valid | a_a_valid; // @[Arbiter.scala 107:36]
  wire  maskedBeats_0 = earlyWinner__0 & decode; // @[Arbiter.scala 111:73]
  wire  maskedBeats_1 = earlyWinner__1 & _T_24; // @[Arbiter.scala 111:73]
  wire  initBeats = maskedBeats_0 | maskedBeats_1; // @[Arbiter.scala 112:44]
  wire  muxStateEarly__0 = idle ? earlyWinner__0 : state__0; // @[Arbiter.scala 117:30]
  wire  muxStateEarly__1 = idle ? earlyWinner__1 : state__1; // @[Arbiter.scala 117:30]
  wire  _sink_ACancel_earlyValid_T_3 = state__0 & c_a_valid | state__1 & a_a_valid; // @[Mux.scala 27:73]
  wire  sink_ACancel_earlyValid = idle ? _T_35 : _sink_ACancel_earlyValid_T_3; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_2 = auto_out_a_ready & sink_ACancel_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire [255:0] _T_52 = muxStateEarly__0 ? auto_in_c_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_53 = muxStateEarly__1 ? auto_in_a_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_55 = muxStateEarly__0 ? c_a_bits_a_mask : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_56 = muxStateEarly__1 ? auto_in_a_bits_mask : 32'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_58 = muxStateEarly__0 ? auto_in_c_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_59 = muxStateEarly__1 ? auto_in_a_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_61 = muxStateEarly__0 ? c_a_bits_a_source : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _T_62 = muxStateEarly__1 ? a_a_bits_source : 5'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_64 = muxStateEarly__0 ? auto_in_c_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_65 = muxStateEarly__1 ? auto_in_a_bits_size : 3'h0; // @[Mux.scala 27:73]
  wire [12:0] _decode_T_9 = 13'h3f << auto_out_d_bits_size; // @[package.scala 234:77]
  wire [5:0] _decode_T_11 = ~_decode_T_9[5:0]; // @[package.scala 234:46]
  wire  decode_2 = _decode_T_11[5]; // @[Edges.scala 219:59]
  wire  opdata_2 = d_d_bits_opcode[0]; // @[Edges.scala 105:36]
  wire  _T_73 = opdata_2 & decode_2; // @[Edges.scala 220:14]
  wire  latch_1 = idle_1 & in_d_ready; // @[Arbiter.scala 89:24]
  wire  maskedBeats_0_1 = earlyWinner_1_0 & _T_73; // @[Arbiter.scala 111:73]
  wire  allowed_1_0 = idle_1 ? readys_1_0 : state_1_0; // @[Arbiter.scala 121:24]
  wire  allowed_1_1 = idle_1 ? readys_1_1 : state_1_1; // @[Arbiter.scala 121:24]
  wire  allowed_1_2 = idle_1 ? readys_1_2 : state_1_2; // @[Arbiter.scala 121:24]
  wire [255:0] _T_111 = muxStateEarly_1_0 ? auto_out_d_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] out_4_bits_data = q_io_deq_bits_data; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [255:0] _T_112 = muxStateEarly_1_1 ? out_4_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] out_5_bits_data = q_1_io_deq_bits_data; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [255:0] _T_113 = muxStateEarly_1_2 ? out_5_bits_data : 256'h0; // @[Mux.scala 27:73]
  wire [255:0] _T_114 = _T_111 | _T_112; // @[Mux.scala 27:73]
  wire  out_4_bits_denied = q_io_deq_bits_denied; // @[ReadyValidCancel.scala 68:19 71:14]
  wire  out_5_bits_denied = q_1_io_deq_bits_denied; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [3:0] _T_126 = muxStateEarly_1_0 ? d_d_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] out_4_bits_source = q_io_deq_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [3:0] _T_127 = muxStateEarly_1_1 ? out_4_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] out_5_bits_source = q_1_io_deq_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [3:0] _T_128 = muxStateEarly_1_2 ? out_5_bits_source : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _T_129 = _T_126 | _T_127; // @[Mux.scala 27:73]
  wire [1:0] _T_136 = muxStateEarly_1_0 ? d_d_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] out_4_bits_param = q_io_deq_bits_param; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [1:0] _T_137 = muxStateEarly_1_1 ? out_4_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] out_5_bits_param = q_1_io_deq_bits_param; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [1:0] _T_138 = muxStateEarly_1_2 ? out_5_bits_param : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _T_139 = _T_136 | _T_137; // @[Mux.scala 27:73]
  IDPool pool ( // @[CacheCork.scala 117:26]
    .clock(pool_clock),
    .reset(pool_reset),
    .io_free_valid(pool_io_free_valid),
    .io_free_bits(pool_io_free_bits),
    .io_alloc_ready(pool_io_alloc_ready),
    .io_alloc_valid(pool_io_alloc_valid),
    .io_alloc_bits(pool_io_alloc_bits)
  );
  Queue_4 q ( // @[Decoupled.scala 361:21]
    .clock(q_clock),
    .reset(q_reset),
    .io_enq_ready(q_io_enq_ready),
    .io_enq_valid(q_io_enq_valid),
    .io_enq_bits_opcode(q_io_enq_bits_opcode),
    .io_enq_bits_param(q_io_enq_bits_param),
    .io_enq_bits_size(q_io_enq_bits_size),
    .io_enq_bits_source(q_io_enq_bits_source),
    .io_enq_bits_sink(q_io_enq_bits_sink),
    .io_enq_bits_denied(q_io_enq_bits_denied),
    .io_enq_bits_data(q_io_enq_bits_data),
    .io_deq_ready(q_io_deq_ready),
    .io_deq_valid(q_io_deq_valid),
    .io_deq_bits_opcode(q_io_deq_bits_opcode),
    .io_deq_bits_param(q_io_deq_bits_param),
    .io_deq_bits_size(q_io_deq_bits_size),
    .io_deq_bits_source(q_io_deq_bits_source),
    .io_deq_bits_sink(q_io_deq_bits_sink),
    .io_deq_bits_denied(q_io_deq_bits_denied),
    .io_deq_bits_data(q_io_deq_bits_data)
  );
  Queue_4 q_1 ( // @[Decoupled.scala 361:21]
    .clock(q_1_clock),
    .reset(q_1_reset),
    .io_enq_ready(q_1_io_enq_ready),
    .io_enq_valid(q_1_io_enq_valid),
    .io_enq_bits_opcode(q_1_io_enq_bits_opcode),
    .io_enq_bits_param(q_1_io_enq_bits_param),
    .io_enq_bits_size(q_1_io_enq_bits_size),
    .io_enq_bits_source(q_1_io_enq_bits_source),
    .io_enq_bits_sink(q_1_io_enq_bits_sink),
    .io_enq_bits_denied(q_1_io_enq_bits_denied),
    .io_enq_bits_data(q_1_io_enq_bits_data),
    .io_deq_ready(q_1_io_deq_ready),
    .io_deq_valid(q_1_io_deq_valid),
    .io_deq_bits_opcode(q_1_io_deq_bits_opcode),
    .io_deq_bits_param(q_1_io_deq_bits_param),
    .io_deq_bits_size(q_1_io_deq_bits_size),
    .io_deq_bits_source(q_1_io_deq_bits_source),
    .io_deq_bits_sink(q_1_io_deq_bits_sink),
    .io_deq_bits_denied(q_1_io_deq_bits_denied),
    .io_deq_bits_data(q_1_io_deq_bits_data)
  );
  assign auto_in_a_ready = toD ? a_d_ready : out_1_ready; // @[CacheCork.scala 69:26]
  assign auto_in_c_ready = _c_d_valid_T ? c_d_ready : out_ready; // @[CacheCork.scala 107:26]
  assign auto_in_d_valid = sink_ACancel_1_earlyValid & _in_d_ready_T_3; // @[CacheCork.scala 125:34]
  assign auto_in_d_bits_opcode = _T_144 | _T_143; // @[Mux.scala 27:73]
  assign auto_in_d_bits_param = _T_139 | _T_138; // @[Mux.scala 27:73]
  assign auto_in_d_bits_size = _T_134 | _T_133; // @[Mux.scala 27:73]
  assign auto_in_d_bits_source = _T_129 | _T_128; // @[Mux.scala 27:73]
  assign auto_in_d_bits_sink = d_first ? pool_io_alloc_bits : bundleIn_0_d_bits_sink_r; // @[package.scala 79:42]
  assign auto_in_d_bits_denied = muxStateEarly_1_0 & auto_out_d_bits_denied | muxStateEarly_1_1 & out_4_bits_denied |
    muxStateEarly_1_2 & out_5_bits_denied; // @[Mux.scala 27:73]
  assign auto_in_d_bits_data = _T_114 | _T_113; // @[Mux.scala 27:73]
  assign auto_out_a_valid = idle ? _T_35 : _sink_ACancel_earlyValid_T_3; // @[Arbiter.scala 125:29]
  assign auto_out_a_bits_opcode = muxStateEarly__1 ? a_a_bits_opcode : 3'h0; // @[Mux.scala 27:73]
  assign auto_out_a_bits_size = _T_64 | _T_65; // @[Mux.scala 27:73]
  assign auto_out_a_bits_source = _T_61 | _T_62; // @[Mux.scala 27:73]
  assign auto_out_a_bits_address = _T_58 | _T_59; // @[Mux.scala 27:73]
  assign auto_out_a_bits_mask = _T_55 | _T_56; // @[Mux.scala 27:73]
  assign auto_out_a_bits_data = _T_52 | _T_53; // @[Mux.scala 27:73]
  assign auto_out_d_ready = in_d_ready & allowed_1_0; // @[Arbiter.scala 123:31]
  assign pool_clock = clock;
  assign pool_reset = reset;
  assign pool_io_free_valid = auto_in_e_valid; // @[Decoupled.scala 50:35]
  assign pool_io_free_bits = auto_in_e_bits_sink; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign pool_io_alloc_ready = _pool_io_alloc_ready_T & d_first & d_grant; // @[CacheCork.scala 124:55]
  assign q_clock = clock;
  assign q_reset = reset;
  assign q_io_enq_valid = auto_in_c_valid & auto_in_c_bits_opcode == 3'h6; // @[CacheCork.scala 103:33]
  assign q_io_enq_bits_opcode = 3'h6; // @[Edges.scala 642:17 643:15]
  assign q_io_enq_bits_param = 2'h0; // @[Edges.scala 642:17 644:15]
  assign q_io_enq_bits_size = auto_in_c_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign q_io_enq_bits_source = auto_in_c_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign q_io_enq_bits_sink = 3'h0; // @[Edges.scala 642:17 647:15]
  assign q_io_enq_bits_denied = 1'h0; // @[Edges.scala 642:17 648:15]
  assign q_io_enq_bits_data = 256'h0; // @[Edges.scala 642:17 649:15]
  assign q_io_deq_ready = in_d_ready & allowed_1_1; // @[Arbiter.scala 123:31]
  assign q_1_clock = clock;
  assign q_1_reset = reset;
  assign q_1_io_enq_valid = auto_in_a_valid & toD; // @[CacheCork.scala 83:33]
  assign q_1_io_enq_bits_opcode = 3'h4; // @[Edges.scala 614:17 615:15]
  assign q_1_io_enq_bits_param = 2'h0; // @[Edges.scala 614:17 616:15]
  assign q_1_io_enq_bits_size = auto_in_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign q_1_io_enq_bits_source = auto_in_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign q_1_io_enq_bits_sink = 3'h0; // @[Edges.scala 614:17 619:15]
  assign q_1_io_enq_bits_denied = 1'h0; // @[Edges.scala 614:17 620:15]
  assign q_1_io_enq_bits_data = 256'h0; // @[Edges.scala 614:17 621:15]
  assign q_1_io_deq_ready = in_d_ready & allowed_1_2; // @[Arbiter.scala 123:31]
  always @(posedge clock) begin
    if (d_first) begin // @[Reg.scala 17:18]
      bundleIn_0_d_bits_sink_r <= pool_io_alloc_bits; // @[Reg.scala 17:22]
    end
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
    if (reset) begin // @[Arbiter.scala 118:30]
      state__1 <= 1'h0;
    end else if (idle) begin
      state__1 <= earlyWinner__1;
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
    if (reset) begin // @[Edges.scala 234:17]
      d_first_counter <= 1'h0; // @[Edges.scala 235:21]
    end else if (_d_first_T) begin // @[Edges.scala 228:27]
      if (d_first) begin
        d_first_counter <= d_first_beats1;
      end else begin
        d_first_counter <= d_first_counter1;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 113:23]
      beatsLeft_1 <= 1'h0;
    end else if (latch_1) begin
      beatsLeft_1 <= maskedBeats_0_1;
    end else begin
      beatsLeft_1 <= beatsLeft_1 - _d_first_T;
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
  beatsLeft = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  state__1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  state__0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  d_first_counter = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  beatsLeft_1 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  state_1_0 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  state_1_1 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  state_1_2 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  bundleIn_0_d_bits_sink_r = _RAND_8[2:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    beatsLeft = 1'h0;
  end
  if (reset) begin
    state__1 = 1'h0;
  end
  if (reset) begin
    state__0 = 1'h0;
  end
  if (reset) begin
    d_first_counter = 1'h0;
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
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

