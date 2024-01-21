module AXI4ToTL(
  input          clock,
  input          reset,
  output         auto_in_awready,
  input          auto_in_awvalid,
  input          auto_in_awid,
  input  [35:0]  auto_in_awaddr,
  input  [7:0]   auto_in_awlen,
  input  [2:0]   auto_in_awsize,
  output         auto_in_wready,
  input          auto_in_wvalid,
  input  [255:0] auto_in_wdata,
  input  [31:0]  auto_in_wstrb,
  input          auto_in_wlast,
  input          auto_in_bready,
  output         auto_in_bvalid,
  output         auto_in_bid,
  output [1:0]   auto_in_bresp,
  output         auto_in_arready,
  input          auto_in_arvalid,
  input          auto_in_arid,
  input  [35:0]  auto_in_araddr,
  input  [7:0]   auto_in_arlen,
  input  [2:0]   auto_in_arsize,
  input          auto_in_rready,
  output         auto_in_rvalid,
  output         auto_in_rid,
  output [255:0] auto_in_rdata,
  output [1:0]   auto_in_rresp,
  output         auto_in_rlast,
  input          auto_out_a_ready,
  output         auto_out_a_valid,
  output [2:0]   auto_out_a_bits_opcode,
  output [2:0]   auto_out_a_bits_size,
  output [1:0]   auto_out_a_bits_source,
  output [35:0]  auto_out_a_bits_address,
  output [31:0]  auto_out_a_bits_mask,
  output [255:0] auto_out_a_bits_data,
  output         auto_out_d_ready,
  input          auto_out_d_valid,
  input  [2:0]   auto_out_d_bits_opcode,
  input  [2:0]   auto_out_d_bits_size,
  input  [1:0]   auto_out_d_bits_source,
  input          auto_out_d_bits_denied,
  input  [255:0] auto_out_d_bits_data,
  input          auto_out_d_bits_corrupt
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
  wire  deq_clock; // @[Decoupled.scala 361:21]
  wire  deq_reset; // @[Decoupled.scala 361:21]
  wire  deq_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  deq_io_enq_valid; // @[Decoupled.scala 361:21]
  wire  deq_io_enq_bits_id; // @[Decoupled.scala 361:21]
  wire [255:0] deq_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire [1:0] deq_io_enq_bits_resp; // @[Decoupled.scala 361:21]
  wire  deq_io_enq_bits_last; // @[Decoupled.scala 361:21]
  wire  deq_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  deq_io_deq_valid; // @[Decoupled.scala 361:21]
  wire  deq_io_deq_bits_id; // @[Decoupled.scala 361:21]
  wire [255:0] deq_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire [1:0] deq_io_deq_bits_resp; // @[Decoupled.scala 361:21]
  wire  deq_io_deq_bits_last; // @[Decoupled.scala 361:21]
  wire  q_bdeq_clock; // @[Decoupled.scala 361:21]
  wire  q_bdeq_reset; // @[Decoupled.scala 361:21]
  wire  q_bdeq_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  q_bdeq_io_enq_valid; // @[Decoupled.scala 361:21]
  wire  q_bdeq_io_enq_bits_id; // @[Decoupled.scala 361:21]
  wire [1:0] q_bdeq_io_enq_bits_resp; // @[Decoupled.scala 361:21]
  wire  q_bdeq_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  q_bdeq_io_deq_valid; // @[Decoupled.scala 361:21]
  wire  q_bdeq_io_deq_bits_id; // @[Decoupled.scala 361:21]
  wire [1:0] q_bdeq_io_deq_bits_resp; // @[Decoupled.scala 361:21]
  wire [15:0] _rsize1_T = {auto_in_arlen,8'hff}; // @[Cat.scala 31:58]
  wire [22:0] _GEN_0 = {{7'd0}, _rsize1_T}; // @[Bundles.scala 34:21]
  wire [22:0] _rsize1_T_1 = _GEN_0 << auto_in_arsize; // @[Bundles.scala 34:21]
  wire [14:0] r_size1 = _rsize1_T_1[22:8]; // @[Bundles.scala 34:30]
  wire [15:0] _rsize_T = {r_size1, 1'h0}; // @[package.scala 232:35]
  wire [15:0] _rsize_T_1 = _rsize_T | 16'h1; // @[package.scala 232:40]
  wire [15:0] _rsize_T_2 = {1'h0,r_size1}; // @[Cat.scala 31:58]
  wire [15:0] _rsize_T_3 = ~_rsize_T_2; // @[package.scala 232:53]
  wire [15:0] _rsize_T_4 = _rsize_T_1 & _rsize_T_3; // @[package.scala 232:51]
  wire [7:0] r_size_hi = _rsize_T_4[15:8]; // @[OneHot.scala 30:18]
  wire [7:0] r_size_lo = _rsize_T_4[7:0]; // @[OneHot.scala 31:18]
  wire  _rsize_T_5 = |r_size_hi; // @[OneHot.scala 32:14]
  wire [7:0] _rsize_T_6 = r_size_hi | r_size_lo; // @[OneHot.scala 32:28]
  wire [3:0] r_size_hi_1 = _rsize_T_6[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] r_size_lo_1 = _rsize_T_6[3:0]; // @[OneHot.scala 31:18]
  wire  _rsize_T_7 = |r_size_hi_1; // @[OneHot.scala 32:14]
  wire [3:0] _rsize_T_8 = r_size_hi_1 | r_size_lo_1; // @[OneHot.scala 32:28]
  wire [1:0] r_size_hi_2 = _rsize_T_8[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] r_size_lo_2 = _rsize_T_8[1:0]; // @[OneHot.scala 31:18]
  wire  _rsize_T_9 = |r_size_hi_2; // @[OneHot.scala 32:14]
  wire [1:0] _rsize_T_10 = r_size_hi_2 | r_size_lo_2; // @[OneHot.scala 32:28]
  wire [3:0] r_size = {_rsize_T_5,_rsize_T_7,_rsize_T_9,_rsize_T_10[1]}; // @[Cat.scala 31:58]
  wire  _rok_T_1 = r_size <= 4'h6; // @[Parameters.scala 92:42]
  wire [36:0] _rok_T_5 = {1'b0,$signed(auto_in_araddr)}; // @[Parameters.scala 137:49]
  wire [36:0] _rok_T_7 = $signed(_rok_T_5) & 37'sh1000000000; // @[Parameters.scala 137:52]
  wire  _rok_T_8 = $signed(_rok_T_7) == 37'sh0; // @[Parameters.scala 137:67]
  wire  r_ok = _rok_T_1 & _rok_T_8; // @[Parameters.scala 670:56]
  wire [35:0] r_addr = r_ok ? auto_in_araddr : {{31'd0}, auto_in_araddr[4:0]}; // @[ToTL.scala 98:23]
  wire [1:0] r_id = {auto_in_arid,1'h0}; // @[Cat.scala 31:58]
  wire [4:0] _a_mask_sizeOH_T = {{1'd0}, r_size}; // @[Misc.scala 201:34]
  wire [2:0] a_mask_sizeOH_shiftAmount = _a_mask_sizeOH_T[2:0]; // @[OneHot.scala 63:49]
  wire [7:0] _a_mask_sizeOH_T_1 = 8'h1 << a_mask_sizeOH_shiftAmount; // @[OneHot.scala 64:12]
  wire [4:0] a_mask_sizeOH = _a_mask_sizeOH_T_1[4:0] | 5'h1; // @[Misc.scala 201:81]
  wire  _a_mask_T = r_size >= 4'h5; // @[Misc.scala 205:21]
  wire  a_mask_size = a_mask_sizeOH[4]; // @[Misc.scala 208:26]
  wire  a_mask_bit = r_addr[4]; // @[Misc.scala 209:26]
  wire  a_mask_nbit = ~a_mask_bit; // @[Misc.scala 210:20]
  wire  a_mask_acc = _a_mask_T | a_mask_size & a_mask_nbit; // @[Misc.scala 214:29]
  wire  a_mask_acc_1 = _a_mask_T | a_mask_size & a_mask_bit; // @[Misc.scala 214:29]
  wire  a_mask_size_1 = a_mask_sizeOH[3]; // @[Misc.scala 208:26]
  wire  a_mask_bit_1 = r_addr[3]; // @[Misc.scala 209:26]
  wire  a_mask_nbit_1 = ~a_mask_bit_1; // @[Misc.scala 210:20]
  wire  a_mask_eq_2 = a_mask_nbit & a_mask_nbit_1; // @[Misc.scala 213:27]
  wire  a_mask_acc_2 = a_mask_acc | a_mask_size_1 & a_mask_eq_2; // @[Misc.scala 214:29]
  wire  a_mask_eq_3 = a_mask_nbit & a_mask_bit_1; // @[Misc.scala 213:27]
  wire  a_mask_acc_3 = a_mask_acc | a_mask_size_1 & a_mask_eq_3; // @[Misc.scala 214:29]
  wire  a_mask_eq_4 = a_mask_bit & a_mask_nbit_1; // @[Misc.scala 213:27]
  wire  a_mask_acc_4 = a_mask_acc_1 | a_mask_size_1 & a_mask_eq_4; // @[Misc.scala 214:29]
  wire  a_mask_eq_5 = a_mask_bit & a_mask_bit_1; // @[Misc.scala 213:27]
  wire  a_mask_acc_5 = a_mask_acc_1 | a_mask_size_1 & a_mask_eq_5; // @[Misc.scala 214:29]
  wire  a_mask_size_2 = a_mask_sizeOH[2]; // @[Misc.scala 208:26]
  wire  a_mask_bit_2 = r_addr[2]; // @[Misc.scala 209:26]
  wire  a_mask_nbit_2 = ~a_mask_bit_2; // @[Misc.scala 210:20]
  wire  a_mask_eq_6 = a_mask_eq_2 & a_mask_nbit_2; // @[Misc.scala 213:27]
  wire  a_mask_acc_6 = a_mask_acc_2 | a_mask_size_2 & a_mask_eq_6; // @[Misc.scala 214:29]
  wire  a_mask_eq_7 = a_mask_eq_2 & a_mask_bit_2; // @[Misc.scala 213:27]
  wire  a_mask_acc_7 = a_mask_acc_2 | a_mask_size_2 & a_mask_eq_7; // @[Misc.scala 214:29]
  wire  a_mask_eq_8 = a_mask_eq_3 & a_mask_nbit_2; // @[Misc.scala 213:27]
  wire  a_mask_acc_8 = a_mask_acc_3 | a_mask_size_2 & a_mask_eq_8; // @[Misc.scala 214:29]
  wire  a_mask_eq_9 = a_mask_eq_3 & a_mask_bit_2; // @[Misc.scala 213:27]
  wire  a_mask_acc_9 = a_mask_acc_3 | a_mask_size_2 & a_mask_eq_9; // @[Misc.scala 214:29]
  wire  a_mask_eq_10 = a_mask_eq_4 & a_mask_nbit_2; // @[Misc.scala 213:27]
  wire  a_mask_acc_10 = a_mask_acc_4 | a_mask_size_2 & a_mask_eq_10; // @[Misc.scala 214:29]
  wire  a_mask_eq_11 = a_mask_eq_4 & a_mask_bit_2; // @[Misc.scala 213:27]
  wire  a_mask_acc_11 = a_mask_acc_4 | a_mask_size_2 & a_mask_eq_11; // @[Misc.scala 214:29]
  wire  a_mask_eq_12 = a_mask_eq_5 & a_mask_nbit_2; // @[Misc.scala 213:27]
  wire  a_mask_acc_12 = a_mask_acc_5 | a_mask_size_2 & a_mask_eq_12; // @[Misc.scala 214:29]
  wire  a_mask_eq_13 = a_mask_eq_5 & a_mask_bit_2; // @[Misc.scala 213:27]
  wire  a_mask_acc_13 = a_mask_acc_5 | a_mask_size_2 & a_mask_eq_13; // @[Misc.scala 214:29]
  wire  a_mask_size_3 = a_mask_sizeOH[1]; // @[Misc.scala 208:26]
  wire  a_mask_bit_3 = r_addr[1]; // @[Misc.scala 209:26]
  wire  a_mask_nbit_3 = ~a_mask_bit_3; // @[Misc.scala 210:20]
  wire  a_mask_eq_14 = a_mask_eq_6 & a_mask_nbit_3; // @[Misc.scala 213:27]
  wire  a_mask_acc_14 = a_mask_acc_6 | a_mask_size_3 & a_mask_eq_14; // @[Misc.scala 214:29]
  wire  a_mask_eq_15 = a_mask_eq_6 & a_mask_bit_3; // @[Misc.scala 213:27]
  wire  a_mask_acc_15 = a_mask_acc_6 | a_mask_size_3 & a_mask_eq_15; // @[Misc.scala 214:29]
  wire  a_mask_eq_16 = a_mask_eq_7 & a_mask_nbit_3; // @[Misc.scala 213:27]
  wire  a_mask_acc_16 = a_mask_acc_7 | a_mask_size_3 & a_mask_eq_16; // @[Misc.scala 214:29]
  wire  a_mask_eq_17 = a_mask_eq_7 & a_mask_bit_3; // @[Misc.scala 213:27]
  wire  a_mask_acc_17 = a_mask_acc_7 | a_mask_size_3 & a_mask_eq_17; // @[Misc.scala 214:29]
  wire  a_mask_eq_18 = a_mask_eq_8 & a_mask_nbit_3; // @[Misc.scala 213:27]
  wire  a_mask_acc_18 = a_mask_acc_8 | a_mask_size_3 & a_mask_eq_18; // @[Misc.scala 214:29]
  wire  a_mask_eq_19 = a_mask_eq_8 & a_mask_bit_3; // @[Misc.scala 213:27]
  wire  a_mask_acc_19 = a_mask_acc_8 | a_mask_size_3 & a_mask_eq_19; // @[Misc.scala 214:29]
  wire  a_mask_eq_20 = a_mask_eq_9 & a_mask_nbit_3; // @[Misc.scala 213:27]
  wire  a_mask_acc_20 = a_mask_acc_9 | a_mask_size_3 & a_mask_eq_20; // @[Misc.scala 214:29]
  wire  a_mask_eq_21 = a_mask_eq_9 & a_mask_bit_3; // @[Misc.scala 213:27]
  wire  a_mask_acc_21 = a_mask_acc_9 | a_mask_size_3 & a_mask_eq_21; // @[Misc.scala 214:29]
  wire  a_mask_eq_22 = a_mask_eq_10 & a_mask_nbit_3; // @[Misc.scala 213:27]
  wire  a_mask_acc_22 = a_mask_acc_10 | a_mask_size_3 & a_mask_eq_22; // @[Misc.scala 214:29]
  wire  a_mask_eq_23 = a_mask_eq_10 & a_mask_bit_3; // @[Misc.scala 213:27]
  wire  a_mask_acc_23 = a_mask_acc_10 | a_mask_size_3 & a_mask_eq_23; // @[Misc.scala 214:29]
  wire  a_mask_eq_24 = a_mask_eq_11 & a_mask_nbit_3; // @[Misc.scala 213:27]
  wire  a_mask_acc_24 = a_mask_acc_11 | a_mask_size_3 & a_mask_eq_24; // @[Misc.scala 214:29]
  wire  a_mask_eq_25 = a_mask_eq_11 & a_mask_bit_3; // @[Misc.scala 213:27]
  wire  a_mask_acc_25 = a_mask_acc_11 | a_mask_size_3 & a_mask_eq_25; // @[Misc.scala 214:29]
  wire  a_mask_eq_26 = a_mask_eq_12 & a_mask_nbit_3; // @[Misc.scala 213:27]
  wire  a_mask_acc_26 = a_mask_acc_12 | a_mask_size_3 & a_mask_eq_26; // @[Misc.scala 214:29]
  wire  a_mask_eq_27 = a_mask_eq_12 & a_mask_bit_3; // @[Misc.scala 213:27]
  wire  a_mask_acc_27 = a_mask_acc_12 | a_mask_size_3 & a_mask_eq_27; // @[Misc.scala 214:29]
  wire  a_mask_eq_28 = a_mask_eq_13 & a_mask_nbit_3; // @[Misc.scala 213:27]
  wire  a_mask_acc_28 = a_mask_acc_13 | a_mask_size_3 & a_mask_eq_28; // @[Misc.scala 214:29]
  wire  a_mask_eq_29 = a_mask_eq_13 & a_mask_bit_3; // @[Misc.scala 213:27]
  wire  a_mask_acc_29 = a_mask_acc_13 | a_mask_size_3 & a_mask_eq_29; // @[Misc.scala 214:29]
  wire  a_mask_size_4 = a_mask_sizeOH[0]; // @[Misc.scala 208:26]
  wire  a_mask_bit_4 = r_addr[0]; // @[Misc.scala 209:26]
  wire  a_mask_nbit_4 = ~a_mask_bit_4; // @[Misc.scala 210:20]
  wire  a_mask_eq_30 = a_mask_eq_14 & a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  a_mask_acc_30 = a_mask_acc_14 | a_mask_size_4 & a_mask_eq_30; // @[Misc.scala 214:29]
  wire  a_mask_eq_31 = a_mask_eq_14 & a_mask_bit_4; // @[Misc.scala 213:27]
  wire  a_mask_acc_31 = a_mask_acc_14 | a_mask_size_4 & a_mask_eq_31; // @[Misc.scala 214:29]
  wire  a_mask_eq_32 = a_mask_eq_15 & a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  a_mask_acc_32 = a_mask_acc_15 | a_mask_size_4 & a_mask_eq_32; // @[Misc.scala 214:29]
  wire  a_mask_eq_33 = a_mask_eq_15 & a_mask_bit_4; // @[Misc.scala 213:27]
  wire  a_mask_acc_33 = a_mask_acc_15 | a_mask_size_4 & a_mask_eq_33; // @[Misc.scala 214:29]
  wire  a_mask_eq_34 = a_mask_eq_16 & a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  a_mask_acc_34 = a_mask_acc_16 | a_mask_size_4 & a_mask_eq_34; // @[Misc.scala 214:29]
  wire  a_mask_eq_35 = a_mask_eq_16 & a_mask_bit_4; // @[Misc.scala 213:27]
  wire  a_mask_acc_35 = a_mask_acc_16 | a_mask_size_4 & a_mask_eq_35; // @[Misc.scala 214:29]
  wire  a_mask_eq_36 = a_mask_eq_17 & a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  a_mask_acc_36 = a_mask_acc_17 | a_mask_size_4 & a_mask_eq_36; // @[Misc.scala 214:29]
  wire  a_mask_eq_37 = a_mask_eq_17 & a_mask_bit_4; // @[Misc.scala 213:27]
  wire  a_mask_acc_37 = a_mask_acc_17 | a_mask_size_4 & a_mask_eq_37; // @[Misc.scala 214:29]
  wire  a_mask_eq_38 = a_mask_eq_18 & a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  a_mask_acc_38 = a_mask_acc_18 | a_mask_size_4 & a_mask_eq_38; // @[Misc.scala 214:29]
  wire  a_mask_eq_39 = a_mask_eq_18 & a_mask_bit_4; // @[Misc.scala 213:27]
  wire  a_mask_acc_39 = a_mask_acc_18 | a_mask_size_4 & a_mask_eq_39; // @[Misc.scala 214:29]
  wire  a_mask_eq_40 = a_mask_eq_19 & a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  a_mask_acc_40 = a_mask_acc_19 | a_mask_size_4 & a_mask_eq_40; // @[Misc.scala 214:29]
  wire  a_mask_eq_41 = a_mask_eq_19 & a_mask_bit_4; // @[Misc.scala 213:27]
  wire  a_mask_acc_41 = a_mask_acc_19 | a_mask_size_4 & a_mask_eq_41; // @[Misc.scala 214:29]
  wire  a_mask_eq_42 = a_mask_eq_20 & a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  a_mask_acc_42 = a_mask_acc_20 | a_mask_size_4 & a_mask_eq_42; // @[Misc.scala 214:29]
  wire  a_mask_eq_43 = a_mask_eq_20 & a_mask_bit_4; // @[Misc.scala 213:27]
  wire  a_mask_acc_43 = a_mask_acc_20 | a_mask_size_4 & a_mask_eq_43; // @[Misc.scala 214:29]
  wire  a_mask_eq_44 = a_mask_eq_21 & a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  a_mask_acc_44 = a_mask_acc_21 | a_mask_size_4 & a_mask_eq_44; // @[Misc.scala 214:29]
  wire  a_mask_eq_45 = a_mask_eq_21 & a_mask_bit_4; // @[Misc.scala 213:27]
  wire  a_mask_acc_45 = a_mask_acc_21 | a_mask_size_4 & a_mask_eq_45; // @[Misc.scala 214:29]
  wire  a_mask_eq_46 = a_mask_eq_22 & a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  a_mask_acc_46 = a_mask_acc_22 | a_mask_size_4 & a_mask_eq_46; // @[Misc.scala 214:29]
  wire  a_mask_eq_47 = a_mask_eq_22 & a_mask_bit_4; // @[Misc.scala 213:27]
  wire  a_mask_acc_47 = a_mask_acc_22 | a_mask_size_4 & a_mask_eq_47; // @[Misc.scala 214:29]
  wire  a_mask_eq_48 = a_mask_eq_23 & a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  a_mask_acc_48 = a_mask_acc_23 | a_mask_size_4 & a_mask_eq_48; // @[Misc.scala 214:29]
  wire  a_mask_eq_49 = a_mask_eq_23 & a_mask_bit_4; // @[Misc.scala 213:27]
  wire  a_mask_acc_49 = a_mask_acc_23 | a_mask_size_4 & a_mask_eq_49; // @[Misc.scala 214:29]
  wire  a_mask_eq_50 = a_mask_eq_24 & a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  a_mask_acc_50 = a_mask_acc_24 | a_mask_size_4 & a_mask_eq_50; // @[Misc.scala 214:29]
  wire  a_mask_eq_51 = a_mask_eq_24 & a_mask_bit_4; // @[Misc.scala 213:27]
  wire  a_mask_acc_51 = a_mask_acc_24 | a_mask_size_4 & a_mask_eq_51; // @[Misc.scala 214:29]
  wire  a_mask_eq_52 = a_mask_eq_25 & a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  a_mask_acc_52 = a_mask_acc_25 | a_mask_size_4 & a_mask_eq_52; // @[Misc.scala 214:29]
  wire  a_mask_eq_53 = a_mask_eq_25 & a_mask_bit_4; // @[Misc.scala 213:27]
  wire  a_mask_acc_53 = a_mask_acc_25 | a_mask_size_4 & a_mask_eq_53; // @[Misc.scala 214:29]
  wire  a_mask_eq_54 = a_mask_eq_26 & a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  a_mask_acc_54 = a_mask_acc_26 | a_mask_size_4 & a_mask_eq_54; // @[Misc.scala 214:29]
  wire  a_mask_eq_55 = a_mask_eq_26 & a_mask_bit_4; // @[Misc.scala 213:27]
  wire  a_mask_acc_55 = a_mask_acc_26 | a_mask_size_4 & a_mask_eq_55; // @[Misc.scala 214:29]
  wire  a_mask_eq_56 = a_mask_eq_27 & a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  a_mask_acc_56 = a_mask_acc_27 | a_mask_size_4 & a_mask_eq_56; // @[Misc.scala 214:29]
  wire  a_mask_eq_57 = a_mask_eq_27 & a_mask_bit_4; // @[Misc.scala 213:27]
  wire  a_mask_acc_57 = a_mask_acc_27 | a_mask_size_4 & a_mask_eq_57; // @[Misc.scala 214:29]
  wire  a_mask_eq_58 = a_mask_eq_28 & a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  a_mask_acc_58 = a_mask_acc_28 | a_mask_size_4 & a_mask_eq_58; // @[Misc.scala 214:29]
  wire  a_mask_eq_59 = a_mask_eq_28 & a_mask_bit_4; // @[Misc.scala 213:27]
  wire  a_mask_acc_59 = a_mask_acc_28 | a_mask_size_4 & a_mask_eq_59; // @[Misc.scala 214:29]
  wire  a_mask_eq_60 = a_mask_eq_29 & a_mask_nbit_4; // @[Misc.scala 213:27]
  wire  a_mask_acc_60 = a_mask_acc_29 | a_mask_size_4 & a_mask_eq_60; // @[Misc.scala 214:29]
  wire  a_mask_eq_61 = a_mask_eq_29 & a_mask_bit_4; // @[Misc.scala 213:27]
  wire  a_mask_acc_61 = a_mask_acc_29 | a_mask_size_4 & a_mask_eq_61; // @[Misc.scala 214:29]
  wire [7:0] a_mask_lo_lo = {a_mask_acc_37,a_mask_acc_36,a_mask_acc_35,a_mask_acc_34,a_mask_acc_33,a_mask_acc_32,
    a_mask_acc_31,a_mask_acc_30}; // @[Cat.scala 31:58]
  wire [15:0] a_mask_lo = {a_mask_acc_45,a_mask_acc_44,a_mask_acc_43,a_mask_acc_42,a_mask_acc_41,a_mask_acc_40,
    a_mask_acc_39,a_mask_acc_38,a_mask_lo_lo}; // @[Cat.scala 31:58]
  wire [7:0] a_mask_hi_lo = {a_mask_acc_53,a_mask_acc_52,a_mask_acc_51,a_mask_acc_50,a_mask_acc_49,a_mask_acc_48,
    a_mask_acc_47,a_mask_acc_46}; // @[Cat.scala 31:58]
  wire [31:0] a_mask = {a_mask_acc_61,a_mask_acc_60,a_mask_acc_59,a_mask_acc_58,a_mask_acc_57,a_mask_acc_56,
    a_mask_acc_55,a_mask_acc_54,a_mask_hi_lo,a_mask_lo}; // @[Cat.scala 31:58]
  reg [7:0] beatsLeft; // @[Arbiter.scala 87:30]
  wire  idle = beatsLeft == 8'h0; // @[Arbiter.scala 88:28]
  wire  w_out_valid = auto_in_awvalid & auto_in_wvalid; // @[ToTL.scala 143:34]
  wire [1:0] readys_valid = {w_out_valid,auto_in_arvalid}; // @[Cat.scala 31:58]
  reg [1:0] readys_mask; // @[Arbiter.scala 23:23]
  wire [1:0] _readys_filter_T = ~readys_mask; // @[Arbiter.scala 24:30]
  wire [1:0] _readys_filter_T_1 = readys_valid & _readys_filter_T; // @[Arbiter.scala 24:28]
  wire [3:0] readys_filter = {_readys_filter_T_1,w_out_valid,auto_in_arvalid}; // @[Cat.scala 31:58]
  wire [3:0] _GEN_12 = {{1'd0}, readys_filter[3:1]}; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_1 = readys_filter | _GEN_12; // @[package.scala 253:43]
  wire [3:0] _readys_unready_T_4 = {readys_mask, 2'h0}; // @[Arbiter.scala 25:66]
  wire [3:0] _GEN_13 = {{1'd0}, _readys_unready_T_1[3:1]}; // @[Arbiter.scala 25:58]
  wire [3:0] readys_unready = _GEN_13 | _readys_unready_T_4; // @[Arbiter.scala 25:58]
  wire [1:0] _readys_readys_T_2 = readys_unready[3:2] & readys_unready[1:0]; // @[Arbiter.scala 26:39]
  wire [1:0] readys_readys = ~_readys_readys_T_2; // @[Arbiter.scala 26:18]
  wire  readys_0 = readys_readys[0]; // @[Arbiter.scala 95:86]
  reg  state_0; // @[Arbiter.scala 116:26]
  wire  allowed_0 = idle ? readys_0 : state_0; // @[Arbiter.scala 121:24]
  wire [15:0] _wsize1_T = {auto_in_awlen,8'hff}; // @[Cat.scala 31:58]
  wire [22:0] _GEN_1 = {{7'd0}, _wsize1_T}; // @[Bundles.scala 34:21]
  wire [22:0] _wsize1_T_1 = _GEN_1 << auto_in_awsize; // @[Bundles.scala 34:21]
  wire [14:0] w_size1 = _wsize1_T_1[22:8]; // @[Bundles.scala 34:30]
  wire [15:0] _wsize_T = {w_size1, 1'h0}; // @[package.scala 232:35]
  wire [15:0] _wsize_T_1 = _wsize_T | 16'h1; // @[package.scala 232:40]
  wire [15:0] _wsize_T_2 = {1'h0,w_size1}; // @[Cat.scala 31:58]
  wire [15:0] _wsize_T_3 = ~_wsize_T_2; // @[package.scala 232:53]
  wire [15:0] _wsize_T_4 = _wsize_T_1 & _wsize_T_3; // @[package.scala 232:51]
  wire [7:0] w_size_hi = _wsize_T_4[15:8]; // @[OneHot.scala 30:18]
  wire [7:0] w_size_lo = _wsize_T_4[7:0]; // @[OneHot.scala 31:18]
  wire  _wsize_T_5 = |w_size_hi; // @[OneHot.scala 32:14]
  wire [7:0] _wsize_T_6 = w_size_hi | w_size_lo; // @[OneHot.scala 32:28]
  wire [3:0] w_size_hi_1 = _wsize_T_6[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] w_size_lo_1 = _wsize_T_6[3:0]; // @[OneHot.scala 31:18]
  wire  _wsize_T_7 = |w_size_hi_1; // @[OneHot.scala 32:14]
  wire [3:0] _wsize_T_8 = w_size_hi_1 | w_size_lo_1; // @[OneHot.scala 32:28]
  wire [1:0] w_size_hi_2 = _wsize_T_8[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] w_size_lo_2 = _wsize_T_8[1:0]; // @[OneHot.scala 31:18]
  wire  _wsize_T_9 = |w_size_hi_2; // @[OneHot.scala 32:14]
  wire [1:0] _wsize_T_10 = w_size_hi_2 | w_size_lo_2; // @[OneHot.scala 32:28]
  wire [3:0] w_size = {_wsize_T_5,_wsize_T_7,_wsize_T_9,_wsize_T_10[1]}; // @[Cat.scala 31:58]
  wire  _wok_T_1 = w_size <= 4'h6; // @[Parameters.scala 92:42]
  wire [36:0] _wok_T_5 = {1'b0,$signed(auto_in_awaddr)}; // @[Parameters.scala 137:49]
  wire [36:0] _wok_T_7 = $signed(_wok_T_5) & 37'sh1000000000; // @[Parameters.scala 137:52]
  wire  _wok_T_8 = $signed(_wok_T_7) == 37'sh0; // @[Parameters.scala 137:67]
  wire  w_ok = _wok_T_1 & _wok_T_8; // @[Parameters.scala 670:56]
  wire [35:0] w_addr = w_ok ? auto_in_awaddr : {{31'd0}, auto_in_awaddr[4:0]}; // @[ToTL.scala 131:23]
  reg  w_count_0; // @[ToTL.scala 132:28]
  reg  w_count_1; // @[ToTL.scala 132:28]
  wire [1:0] w_id = {auto_in_awid,1'h1}; // @[Cat.scala 31:58]
  wire  readys_1 = readys_readys[1]; // @[Arbiter.scala 95:86]
  reg  state_1; // @[Arbiter.scala 116:26]
  wire  allowed_1 = idle ? readys_1 : state_1; // @[Arbiter.scala 121:24]
  wire  out_1_ready = auto_out_a_ready & allowed_1; // @[Arbiter.scala 123:31]
  wire  bundleIn_0_awready = out_1_ready & auto_in_wvalid & auto_in_wlast; // @[ToTL.scala 141:48]
  wire [1:0] w_sel = 2'h1 << auto_in_awid; // @[OneHot.scala 64:12]
  wire  _T_36 = bundleIn_0_awready & auto_in_awvalid; // @[Decoupled.scala 50:35]
  wire  latch = idle & auto_out_a_ready; // @[Arbiter.scala 89:24]
  wire [1:0] _readys_mask_T = readys_readys & readys_valid; // @[Arbiter.scala 28:29]
  wire [2:0] _readys_mask_T_1 = {_readys_mask_T, 1'h0}; // @[package.scala 244:48]
  wire [1:0] _readys_mask_T_3 = _readys_mask_T | _readys_mask_T_1[1:0]; // @[package.scala 244:43]
  wire  earlyWinner_0 = readys_0 & auto_in_arvalid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_1 = readys_1 & w_out_valid; // @[Arbiter.scala 97:79]
  wire  _T_50 = auto_in_arvalid | w_out_valid; // @[Arbiter.scala 107:36]
  wire  muxStateEarly_0 = idle ? earlyWinner_0 : state_0; // @[Arbiter.scala 117:30]
  wire  muxStateEarly_1 = idle ? earlyWinner_1 : state_1; // @[Arbiter.scala 117:30]
  wire  _sink_ACancel_earlyValid_T_3 = state_0 & auto_in_arvalid | state_1 & w_out_valid; // @[Mux.scala 27:73]
  wire  sink_ACancel_earlyValid = idle ? _T_50 : _sink_ACancel_earlyValid_T_3; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_2 = auto_out_a_ready & sink_ACancel_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire [7:0] _GEN_14 = {{7'd0}, _beatsLeft_T_2}; // @[Arbiter.scala 113:52]
  wire [7:0] _beatsLeft_T_4 = beatsLeft - _GEN_14; // @[Arbiter.scala 113:52]
  wire [31:0] _T_70 = muxStateEarly_0 ? a_mask : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_71 = muxStateEarly_1 ? auto_in_wstrb : 32'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_73 = muxStateEarly_0 ? r_addr : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] _T_74 = muxStateEarly_1 ? w_addr : 36'h0; // @[Mux.scala 27:73]
  wire [1:0] _T_76 = muxStateEarly_0 ? r_id : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _T_77 = muxStateEarly_1 ? w_id : 2'h0; // @[Mux.scala 27:73]
  wire [2:0] a_size = r_size[2:0]; // @[Edges.scala 447:17 450:15]
  wire [2:0] _T_79 = muxStateEarly_0 ? a_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] a_1_size = w_size[2:0]; // @[Edges.scala 483:17 486:15]
  wire [2:0] _T_80 = muxStateEarly_1 ? a_1_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_85 = muxStateEarly_0 ? 3'h4 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_86 = muxStateEarly_1 ? 3'h1 : 3'h0; // @[Mux.scala 27:73]
  wire  d_hasData = auto_out_d_bits_opcode[0]; // @[Edges.scala 105:36]
  wire  ok_rready = deq_io_enq_ready; // @[ToTL.scala 166:23 Decoupled.scala 365:17]
  wire  ok_bready = q_bdeq_io_enq_ready; // @[ToTL.scala 165:23 Decoupled.scala 365:17]
  wire  bundleOut_0_d_ready = d_hasData ? ok_rready : ok_bready; // @[ToTL.scala 172:25]
  wire  _d_last_T = bundleOut_0_d_ready & auto_out_d_valid; // @[Decoupled.scala 50:35]
  wire [12:0] _d_last_beats1_decode_T_1 = 13'h3f << auto_out_d_bits_size; // @[package.scala 234:77]
  wire [5:0] _d_last_beats1_decode_T_3 = ~_d_last_beats1_decode_T_1[5:0]; // @[package.scala 234:46]
  wire  d_last_beats1_decode = _d_last_beats1_decode_T_3[5]; // @[Edges.scala 219:59]
  wire  d_last_beats1 = d_hasData & d_last_beats1_decode; // @[Edges.scala 220:14]
  reg  d_last_counter; // @[Edges.scala 228:27]
  wire  d_last_counter1 = d_last_counter - 1'h1; // @[Edges.scala 229:28]
  wire  d_last_first = ~d_last_counter; // @[Edges.scala 230:25]
  reg  b_count_0; // @[ToTL.scala 194:28]
  reg  b_count_1; // @[ToTL.scala 194:28]
  wire  q_bid = q_bdeq_io_deq_bits_id; // @[Decoupled.scala 401:19 402:14]
  wire  _GEN_7 = q_bid ? b_count_1 : b_count_0; // @[ToTL.scala 195:{43,43}]
  wire  _GEN_9 = q_bid ? w_count_1 : w_count_0; // @[ToTL.scala 195:{43,43}]
  wire  b_allow = _GEN_7 != _GEN_9; // @[ToTL.scala 195:43]
  wire [1:0] b_sel = 2'h1 << q_bid; // @[OneHot.scala 64:12]
  wire  q_bvalid = q_bdeq_io_deq_valid; // @[Decoupled.scala 401:19 403:15]
  wire  bundleIn_0_bvalid = q_bvalid & b_allow; // @[ToTL.scala 203:31]
  wire  _T_90 = auto_in_bready & bundleIn_0_bvalid; // @[Decoupled.scala 50:35]
  Queue_100 deq ( // @[Decoupled.scala 361:21]
    .clock(deq_clock),
    .reset(deq_reset),
    .io_enq_ready(deq_io_enq_ready),
    .io_enq_valid(deq_io_enq_valid),
    .io_enq_bits_id(deq_io_enq_bits_id),
    .io_enq_bits_data(deq_io_enq_bits_data),
    .io_enq_bits_resp(deq_io_enq_bits_resp),
    .io_enq_bits_last(deq_io_enq_bits_last),
    .io_deq_ready(deq_io_deq_ready),
    .io_deq_valid(deq_io_deq_valid),
    .io_deq_bits_id(deq_io_deq_bits_id),
    .io_deq_bits_data(deq_io_deq_bits_data),
    .io_deq_bits_resp(deq_io_deq_bits_resp),
    .io_deq_bits_last(deq_io_deq_bits_last)
  );
  Queue_101 q_bdeq ( // @[Decoupled.scala 361:21]
    .clock(q_bdeq_clock),
    .reset(q_bdeq_reset),
    .io_enq_ready(q_bdeq_io_enq_ready),
    .io_enq_valid(q_bdeq_io_enq_valid),
    .io_enq_bits_id(q_bdeq_io_enq_bits_id),
    .io_enq_bits_resp(q_bdeq_io_enq_bits_resp),
    .io_deq_ready(q_bdeq_io_deq_ready),
    .io_deq_valid(q_bdeq_io_deq_valid),
    .io_deq_bits_id(q_bdeq_io_deq_bits_id),
    .io_deq_bits_resp(q_bdeq_io_deq_bits_resp)
  );
  assign auto_in_awready = out_1_ready & auto_in_wvalid & auto_in_wlast; // @[ToTL.scala 141:48]
  assign auto_in_wready = out_1_ready & auto_in_awvalid; // @[ToTL.scala 142:34]
  assign auto_in_bvalid = q_bvalid & b_allow; // @[ToTL.scala 203:31]
  assign auto_in_bid = q_bdeq_io_deq_bits_id; // @[Decoupled.scala 401:19 402:14]
  assign auto_in_bresp = q_bdeq_io_deq_bits_resp; // @[Decoupled.scala 401:19 402:14]
  assign auto_in_arready = auto_out_a_ready & allowed_0; // @[Arbiter.scala 123:31]
  assign auto_in_rvalid = deq_io_deq_valid; // @[Decoupled.scala 401:19 403:15]
  assign auto_in_rid = deq_io_deq_bits_id; // @[Decoupled.scala 401:19 402:14]
  assign auto_in_rdata = deq_io_deq_bits_data; // @[Decoupled.scala 401:19 402:14]
  assign auto_in_rresp = deq_io_deq_bits_resp; // @[Decoupled.scala 401:19 402:14]
  assign auto_in_rlast = deq_io_deq_bits_last; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_a_valid = idle ? _T_50 : _sink_ACancel_earlyValid_T_3; // @[Arbiter.scala 125:29]
  assign auto_out_a_bits_opcode = _T_85 | _T_86; // @[Mux.scala 27:73]
  assign auto_out_a_bits_size = _T_79 | _T_80; // @[Mux.scala 27:73]
  assign auto_out_a_bits_source = _T_76 | _T_77; // @[Mux.scala 27:73]
  assign auto_out_a_bits_address = _T_73 | _T_74; // @[Mux.scala 27:73]
  assign auto_out_a_bits_mask = _T_70 | _T_71; // @[Mux.scala 27:73]
  assign auto_out_a_bits_data = muxStateEarly_1 ? auto_in_wdata : 256'h0; // @[Mux.scala 27:73]
  assign auto_out_d_ready = d_hasData ? ok_rready : ok_bready; // @[ToTL.scala 172:25]
  assign deq_clock = clock;
  assign deq_reset = reset;
  assign deq_io_enq_valid = auto_out_d_valid & d_hasData; // @[ToTL.scala 173:33]
  assign deq_io_enq_bits_id = auto_out_d_bits_source[1]; // @[ToTL.scala 176:43]
  assign deq_io_enq_bits_data = auto_out_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign deq_io_enq_bits_resp = auto_out_d_bits_denied | auto_out_d_bits_corrupt ? 2'h2 : 2'h0; // @[ToTL.scala 168:23]
  assign deq_io_enq_bits_last = d_last_counter | ~d_last_beats1; // @[Edges.scala 231:37]
  assign deq_io_deq_ready = auto_in_rready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign q_bdeq_clock = clock;
  assign q_bdeq_reset = reset;
  assign q_bdeq_io_enq_valid = auto_out_d_valid & ~d_hasData; // @[ToTL.scala 174:33]
  assign q_bdeq_io_enq_bits_id = auto_out_d_bits_source[1]; // @[ToTL.scala 185:43]
  assign q_bdeq_io_enq_bits_resp = auto_out_d_bits_denied | auto_out_d_bits_corrupt ? 2'h2 : 2'h0; // @[ToTL.scala 168:23]
  assign q_bdeq_io_deq_ready = auto_in_bready & b_allow; // @[ToTL.scala 204:31]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 113:23]
      beatsLeft <= 8'h0; // @[Arbiter.scala 111:73]
    end else if (latch) begin
      if (earlyWinner_1) begin
        beatsLeft <= auto_in_awlen;
      end else begin
        beatsLeft <= 8'h0;
      end
    end else begin
      beatsLeft <= _beatsLeft_T_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 27:32]
      readys_mask <= 2'h3; // @[Arbiter.scala 28:12]
    end else if (latch & |readys_valid) begin // @[Arbiter.scala 23:23]
      readys_mask <= _readys_mask_T_3;
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
    if (reset) begin // @[ToTL.scala 160:34]
      w_count_0 <= 1'h0; // @[ToTL.scala 160:38]
    end else if (_T_36 & w_sel[0]) begin // @[ToTL.scala 132:28]
      w_count_0 <= w_count_0 + 1'h1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[ToTL.scala 160:34]
      w_count_1 <= 1'h0; // @[ToTL.scala 160:38]
    end else if (_T_36 & w_sel[1]) begin // @[ToTL.scala 132:28]
      w_count_1 <= w_count_1 + 1'h1;
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
    if (reset) begin // @[Edges.scala 234:17]
      d_last_counter <= 1'h0; // @[Edges.scala 235:21]
    end else if (_d_last_T) begin // @[Edges.scala 228:27]
      if (d_last_first) begin
        d_last_counter <= d_last_beats1;
      end else begin
        d_last_counter <= d_last_counter1;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[ToTL.scala 199:33]
      b_count_0 <= 1'h0; // @[ToTL.scala 199:37]
    end else if (_T_90 & b_sel[0]) begin // @[ToTL.scala 194:28]
      b_count_0 <= b_count_0 + 1'h1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[ToTL.scala 199:33]
      b_count_1 <= 1'h0; // @[ToTL.scala 199:37]
    end else if (_T_90 & b_sel[1]) begin // @[ToTL.scala 194:28]
      b_count_1 <= b_count_1 + 1'h1;
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
  beatsLeft = _RAND_0[7:0];
  _RAND_1 = {1{`RANDOM}};
  readys_mask = _RAND_1[1:0];
  _RAND_2 = {1{`RANDOM}};
  state_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  w_count_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  w_count_1 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  state_1 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  d_last_counter = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  b_count_0 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  b_count_1 = _RAND_8[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    beatsLeft = 8'h0;
  end
  if (reset) begin
    readys_mask = 2'h3;
  end
  if (reset) begin
    state_0 = 1'h0;
  end
  if (reset) begin
    w_count_0 = 1'h0;
  end
  if (reset) begin
    w_count_1 = 1'h0;
  end
  if (reset) begin
    state_1 = 1'h0;
  end
  if (reset) begin
    d_last_counter = 1'h0;
  end
  if (reset) begin
    b_count_0 = 1'h0;
  end
  if (reset) begin
    b_count_1 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

