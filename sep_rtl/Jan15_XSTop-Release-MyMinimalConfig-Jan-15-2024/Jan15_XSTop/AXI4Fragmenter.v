module AXI4Fragmenter(
  input          clock,
  input          reset,
  output         auto_in_awready,
  input          auto_in_awvalid,
  input          auto_in_awid,
  input  [35:0]  auto_in_awaddr,
  input  [7:0]   auto_in_awlen,
  input  [2:0]   auto_in_awsize,
  input  [1:0]   auto_in_awburst,
  input  [12:0]  auto_in_awecho_extra_id,
  output         auto_in_wready,
  input          auto_in_wvalid,
  input  [255:0] auto_in_wdata,
  input  [31:0]  auto_in_wstrb,
  input          auto_in_wlast,
  input          auto_in_bready,
  output         auto_in_bvalid,
  output         auto_in_bid,
  output [1:0]   auto_in_bresp,
  output [12:0]  auto_in_becho_extra_id,
  output         auto_in_arready,
  input          auto_in_arvalid,
  input          auto_in_arid,
  input  [35:0]  auto_in_araddr,
  input  [7:0]   auto_in_arlen,
  input  [2:0]   auto_in_arsize,
  input  [1:0]   auto_in_arburst,
  input  [12:0]  auto_in_arecho_extra_id,
  input          auto_in_rready,
  output         auto_in_rvalid,
  output         auto_in_rid,
  output [255:0] auto_in_rdata,
  output [1:0]   auto_in_rresp,
  output [12:0]  auto_in_recho_extra_id,
  output         auto_in_rlast,
  input          auto_out_awready,
  output         auto_out_awvalid,
  output         auto_out_awid,
  output [35:0]  auto_out_awaddr,
  output [7:0]   auto_out_awlen,
  output [2:0]   auto_out_awsize,
  output [12:0]  auto_out_awecho_extra_id,
  output         auto_out_awecho_real_last,
  input          auto_out_wready,
  output         auto_out_wvalid,
  output [255:0] auto_out_wdata,
  output [31:0]  auto_out_wstrb,
  output         auto_out_wlast,
  output         auto_out_bready,
  input          auto_out_bvalid,
  input          auto_out_bid,
  input  [1:0]   auto_out_bresp,
  input  [12:0]  auto_out_becho_extra_id,
  input          auto_out_becho_real_last,
  input          auto_out_arready,
  output         auto_out_arvalid,
  output         auto_out_arid,
  output [35:0]  auto_out_araddr,
  output [7:0]   auto_out_arlen,
  output [2:0]   auto_out_arsize,
  output [12:0]  auto_out_arecho_extra_id,
  output         auto_out_arecho_real_last,
  output         auto_out_rready,
  input          auto_out_rvalid,
  input          auto_out_rid,
  input  [255:0] auto_out_rdata,
  input  [1:0]   auto_out_rresp,
  input  [12:0]  auto_out_recho_extra_id,
  input          auto_out_recho_real_last,
  input          auto_out_rlast
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
`endif // RANDOMIZE_REG_INIT
  wire  deq_clock; // @[Decoupled.scala 361:21]
  wire  deq_reset; // @[Decoupled.scala 361:21]
  wire  deq_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  deq_io_enq_valid; // @[Decoupled.scala 361:21]
  wire  deq_io_enq_bits_id; // @[Decoupled.scala 361:21]
  wire [35:0] deq_io_enq_bits_addr; // @[Decoupled.scala 361:21]
  wire [7:0] deq_io_enq_bits_len; // @[Decoupled.scala 361:21]
  wire [2:0] deq_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [1:0] deq_io_enq_bits_burst; // @[Decoupled.scala 361:21]
  wire [12:0] deq_io_enq_bits_echo_extra_id; // @[Decoupled.scala 361:21]
  wire  deq_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  deq_io_deq_valid; // @[Decoupled.scala 361:21]
  wire  deq_io_deq_bits_id; // @[Decoupled.scala 361:21]
  wire [35:0] deq_io_deq_bits_addr; // @[Decoupled.scala 361:21]
  wire [7:0] deq_io_deq_bits_len; // @[Decoupled.scala 361:21]
  wire [2:0] deq_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [1:0] deq_io_deq_bits_burst; // @[Decoupled.scala 361:21]
  wire [12:0] deq_io_deq_bits_echo_extra_id; // @[Decoupled.scala 361:21]
  wire  deq_1_clock; // @[Decoupled.scala 361:21]
  wire  deq_1_reset; // @[Decoupled.scala 361:21]
  wire  deq_1_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  deq_1_io_enq_valid; // @[Decoupled.scala 361:21]
  wire  deq_1_io_enq_bits_id; // @[Decoupled.scala 361:21]
  wire [35:0] deq_1_io_enq_bits_addr; // @[Decoupled.scala 361:21]
  wire [7:0] deq_1_io_enq_bits_len; // @[Decoupled.scala 361:21]
  wire [2:0] deq_1_io_enq_bits_size; // @[Decoupled.scala 361:21]
  wire [1:0] deq_1_io_enq_bits_burst; // @[Decoupled.scala 361:21]
  wire [12:0] deq_1_io_enq_bits_echo_extra_id; // @[Decoupled.scala 361:21]
  wire  deq_1_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  deq_1_io_deq_valid; // @[Decoupled.scala 361:21]
  wire  deq_1_io_deq_bits_id; // @[Decoupled.scala 361:21]
  wire [35:0] deq_1_io_deq_bits_addr; // @[Decoupled.scala 361:21]
  wire [7:0] deq_1_io_deq_bits_len; // @[Decoupled.scala 361:21]
  wire [2:0] deq_1_io_deq_bits_size; // @[Decoupled.scala 361:21]
  wire [1:0] deq_1_io_deq_bits_burst; // @[Decoupled.scala 361:21]
  wire [12:0] deq_1_io_deq_bits_echo_extra_id; // @[Decoupled.scala 361:21]
  wire  in_wdeq_clock; // @[Decoupled.scala 361:21]
  wire  in_wdeq_reset; // @[Decoupled.scala 361:21]
  wire  in_wdeq_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  in_wdeq_io_enq_valid; // @[Decoupled.scala 361:21]
  wire [255:0] in_wdeq_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire [31:0] in_wdeq_io_enq_bits_strb; // @[Decoupled.scala 361:21]
  wire  in_wdeq_io_enq_bits_last; // @[Decoupled.scala 361:21]
  wire  in_wdeq_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  in_wdeq_io_deq_valid; // @[Decoupled.scala 361:21]
  wire [255:0] in_wdeq_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire [31:0] in_wdeq_io_deq_bits_strb; // @[Decoupled.scala 361:21]
  wire  in_wdeq_io_deq_bits_last; // @[Decoupled.scala 361:21]
  reg  busy; // @[Fragmenter.scala 63:29]
  reg [35:0] r_addr; // @[Fragmenter.scala 64:25]
  reg [7:0] r_len; // @[Fragmenter.scala 65:25]
  wire [7:0] irr_bits_len = deq_io_deq_bits_len; // @[Decoupled.scala 401:19 402:14]
  wire [7:0] len = busy ? r_len : irr_bits_len; // @[Fragmenter.scala 67:23]
  wire [35:0] irr_bits_addr = deq_io_deq_bits_addr; // @[Decoupled.scala 401:19 402:14]
  wire [35:0] addr = busy ? r_addr : irr_bits_addr; // @[Fragmenter.scala 68:23]
  wire [7:0] alignment = addr[12:5]; // @[Fragmenter.scala 72:29]
  wire [7:0] _GEN_16 = {{1'd0}, len[7:1]}; // @[package.scala 253:43]
  wire [7:0] _fillLow_T_1 = len | _GEN_16; // @[package.scala 253:43]
  wire [7:0] _GEN_17 = {{2'd0}, _fillLow_T_1[7:2]}; // @[package.scala 253:43]
  wire [7:0] _fillLow_T_3 = _fillLow_T_1 | _GEN_17; // @[package.scala 253:43]
  wire [7:0] _GEN_18 = {{4'd0}, _fillLow_T_3[7:4]}; // @[package.scala 253:43]
  wire [7:0] _fillLow_T_5 = _fillLow_T_3 | _GEN_18; // @[package.scala 253:43]
  wire [6:0] fillLow = _fillLow_T_5[7:1]; // @[Fragmenter.scala 88:37]
  wire [7:0] _wipeHigh_T = ~len; // @[Fragmenter.scala 89:32]
  wire [8:0] _wipeHigh_T_1 = {_wipeHigh_T, 1'h0}; // @[package.scala 244:48]
  wire [7:0] _wipeHigh_T_3 = _wipeHigh_T | _wipeHigh_T_1[7:0]; // @[package.scala 244:43]
  wire [9:0] _wipeHigh_T_4 = {_wipeHigh_T_3, 2'h0}; // @[package.scala 244:48]
  wire [7:0] _wipeHigh_T_6 = _wipeHigh_T_3 | _wipeHigh_T_4[7:0]; // @[package.scala 244:43]
  wire [11:0] _wipeHigh_T_7 = {_wipeHigh_T_6, 4'h0}; // @[package.scala 244:48]
  wire [7:0] _wipeHigh_T_9 = _wipeHigh_T_6 | _wipeHigh_T_7[7:0]; // @[package.scala 244:43]
  wire [7:0] wipeHigh = ~_wipeHigh_T_9; // @[Fragmenter.scala 89:24]
  wire [7:0] _GEN_19 = {{1'd0}, fillLow}; // @[Fragmenter.scala 90:32]
  wire [7:0] remain1 = _GEN_19 | wipeHigh; // @[Fragmenter.scala 90:32]
  wire [8:0] _align1_T = {alignment, 1'h0}; // @[package.scala 244:48]
  wire [7:0] _align1_T_2 = alignment | _align1_T[7:0]; // @[package.scala 244:43]
  wire [9:0] _align1_T_3 = {_align1_T_2, 2'h0}; // @[package.scala 244:48]
  wire [7:0] _align1_T_5 = _align1_T_2 | _align1_T_3[7:0]; // @[package.scala 244:43]
  wire [11:0] _align1_T_6 = {_align1_T_5, 4'h0}; // @[package.scala 244:48]
  wire [7:0] _align1_T_8 = _align1_T_5 | _align1_T_6[7:0]; // @[package.scala 244:43]
  wire [7:0] align1 = ~_align1_T_8; // @[Fragmenter.scala 91:24]
  wire [7:0] _maxSupported1_T = remain1 & align1; // @[Fragmenter.scala 92:37]
  wire [7:0] maxSupported1 = _maxSupported1_T & 8'h1; // @[Fragmenter.scala 92:46]
  wire [1:0] irr_bits_burst = deq_io_deq_bits_burst; // @[Decoupled.scala 401:19 402:14]
  wire  fixed = irr_bits_burst == 2'h0; // @[Fragmenter.scala 95:34]
  wire [2:0] irr_bits_size = deq_io_deq_bits_size; // @[Decoupled.scala 401:19 402:14]
  wire  narrow = irr_bits_size != 3'h5; // @[Fragmenter.scala 96:34]
  wire  bad = fixed | narrow; // @[Fragmenter.scala 97:25]
  wire [7:0] beats1 = bad ? 8'h0 : maxSupported1; // @[Fragmenter.scala 100:25]
  wire [8:0] _beats_T = {beats1, 1'h0}; // @[package.scala 232:35]
  wire [8:0] _beats_T_1 = _beats_T | 9'h1; // @[package.scala 232:40]
  wire [8:0] _beats_T_2 = {1'h0,beats1}; // @[Cat.scala 31:58]
  wire [8:0] _beats_T_3 = ~_beats_T_2; // @[package.scala 232:53]
  wire [8:0] beats = _beats_T_1 & _beats_T_3; // @[package.scala 232:51]
  wire [15:0] _GEN_1 = {{7'd0}, beats}; // @[Fragmenter.scala 103:38]
  wire [15:0] _inc_addr_T = _GEN_1 << irr_bits_size; // @[Fragmenter.scala 103:38]
  wire [35:0] _GEN_20 = {{20'd0}, _inc_addr_T}; // @[Fragmenter.scala 103:29]
  wire [35:0] inc_addr = addr + _GEN_20; // @[Fragmenter.scala 103:29]
  wire [15:0] _wrapMask_T = {irr_bits_len,8'hff}; // @[Cat.scala 31:58]
  wire [22:0] _GEN_2 = {{7'd0}, _wrapMask_T}; // @[Bundles.scala 34:21]
  wire [22:0] _wrapMask_T_1 = _GEN_2 << irr_bits_size; // @[Bundles.scala 34:21]
  wire [14:0] wrapMask = _wrapMask_T_1[22:8]; // @[Bundles.scala 34:30]
  wire [35:0] _GEN_21 = {{21'd0}, wrapMask}; // @[Fragmenter.scala 107:33]
  wire [35:0] _mux_addr_T = inc_addr & _GEN_21; // @[Fragmenter.scala 107:33]
  wire [35:0] _mux_addr_T_1 = ~irr_bits_addr; // @[Fragmenter.scala 107:49]
  wire [35:0] _mux_addr_T_2 = _mux_addr_T_1 | _GEN_21; // @[Fragmenter.scala 107:62]
  wire [35:0] _mux_addr_T_3 = ~_mux_addr_T_2; // @[Fragmenter.scala 107:47]
  wire [35:0] _mux_addr_T_4 = _mux_addr_T | _mux_addr_T_3; // @[Fragmenter.scala 107:45]
  wire  ar_last = beats1 == len; // @[Fragmenter.scala 113:27]
  wire [35:0] _out_bits_addr_T = ~addr; // @[Fragmenter.scala 125:28]
  wire [11:0] _out_bits_addr_T_2 = 12'h1f << irr_bits_size; // @[package.scala 234:77]
  wire [4:0] _out_bits_addr_T_4 = ~_out_bits_addr_T_2[4:0]; // @[package.scala 234:46]
  wire [35:0] _GEN_23 = {{31'd0}, _out_bits_addr_T_4}; // @[Fragmenter.scala 125:34]
  wire [35:0] _out_bits_addr_T_5 = _out_bits_addr_T | _GEN_23; // @[Fragmenter.scala 125:34]
  wire  irr_valid = deq_io_deq_valid; // @[Decoupled.scala 401:19 403:15]
  wire  _T_2 = auto_out_arready & irr_valid; // @[Decoupled.scala 50:35]
  wire [8:0] _GEN_24 = {{1'd0}, len}; // @[Fragmenter.scala 130:25]
  wire [8:0] _rlen_T_1 = _GEN_24 - beats; // @[Fragmenter.scala 130:25]
  wire [8:0] _GEN_4 = _T_2 ? _rlen_T_1 : {{1'd0}, r_len}; // @[Fragmenter.scala 127:27 130:18 65:25]
  reg  busy_1; // @[Fragmenter.scala 63:29]
  reg [35:0] r_addr_1; // @[Fragmenter.scala 64:25]
  reg [7:0] r_len_1; // @[Fragmenter.scala 65:25]
  wire [7:0] irr_1_bits_len = deq_1_io_deq_bits_len; // @[Decoupled.scala 401:19 402:14]
  wire [7:0] len_1 = busy_1 ? r_len_1 : irr_1_bits_len; // @[Fragmenter.scala 67:23]
  wire [35:0] irr_1_bits_addr = deq_1_io_deq_bits_addr; // @[Decoupled.scala 401:19 402:14]
  wire [35:0] addr_1 = busy_1 ? r_addr_1 : irr_1_bits_addr; // @[Fragmenter.scala 68:23]
  wire [7:0] alignment_1 = addr_1[12:5]; // @[Fragmenter.scala 72:29]
  wire [7:0] _GEN_25 = {{1'd0}, len_1[7:1]}; // @[package.scala 253:43]
  wire [7:0] _fillLow_T_8 = len_1 | _GEN_25; // @[package.scala 253:43]
  wire [7:0] _GEN_26 = {{2'd0}, _fillLow_T_8[7:2]}; // @[package.scala 253:43]
  wire [7:0] _fillLow_T_10 = _fillLow_T_8 | _GEN_26; // @[package.scala 253:43]
  wire [7:0] _GEN_27 = {{4'd0}, _fillLow_T_10[7:4]}; // @[package.scala 253:43]
  wire [7:0] _fillLow_T_12 = _fillLow_T_10 | _GEN_27; // @[package.scala 253:43]
  wire [6:0] fillLow_1 = _fillLow_T_12[7:1]; // @[Fragmenter.scala 88:37]
  wire [7:0] _wipeHigh_T_11 = ~len_1; // @[Fragmenter.scala 89:32]
  wire [8:0] _wipeHigh_T_12 = {_wipeHigh_T_11, 1'h0}; // @[package.scala 244:48]
  wire [7:0] _wipeHigh_T_14 = _wipeHigh_T_11 | _wipeHigh_T_12[7:0]; // @[package.scala 244:43]
  wire [9:0] _wipeHigh_T_15 = {_wipeHigh_T_14, 2'h0}; // @[package.scala 244:48]
  wire [7:0] _wipeHigh_T_17 = _wipeHigh_T_14 | _wipeHigh_T_15[7:0]; // @[package.scala 244:43]
  wire [11:0] _wipeHigh_T_18 = {_wipeHigh_T_17, 4'h0}; // @[package.scala 244:48]
  wire [7:0] _wipeHigh_T_20 = _wipeHigh_T_17 | _wipeHigh_T_18[7:0]; // @[package.scala 244:43]
  wire [7:0] wipeHigh_1 = ~_wipeHigh_T_20; // @[Fragmenter.scala 89:24]
  wire [7:0] _GEN_28 = {{1'd0}, fillLow_1}; // @[Fragmenter.scala 90:32]
  wire [7:0] remain1_1 = _GEN_28 | wipeHigh_1; // @[Fragmenter.scala 90:32]
  wire [8:0] _align1_T_10 = {alignment_1, 1'h0}; // @[package.scala 244:48]
  wire [7:0] _align1_T_12 = alignment_1 | _align1_T_10[7:0]; // @[package.scala 244:43]
  wire [9:0] _align1_T_13 = {_align1_T_12, 2'h0}; // @[package.scala 244:48]
  wire [7:0] _align1_T_15 = _align1_T_12 | _align1_T_13[7:0]; // @[package.scala 244:43]
  wire [11:0] _align1_T_16 = {_align1_T_15, 4'h0}; // @[package.scala 244:48]
  wire [7:0] _align1_T_18 = _align1_T_15 | _align1_T_16[7:0]; // @[package.scala 244:43]
  wire [7:0] align1_1 = ~_align1_T_18; // @[Fragmenter.scala 91:24]
  wire [7:0] _maxSupported1_T_1 = remain1_1 & align1_1; // @[Fragmenter.scala 92:37]
  wire [7:0] maxSupported1_1 = _maxSupported1_T_1 & 8'h1; // @[Fragmenter.scala 92:46]
  wire [1:0] irr_1_bits_burst = deq_1_io_deq_bits_burst; // @[Decoupled.scala 401:19 402:14]
  wire  fixed_1 = irr_1_bits_burst == 2'h0; // @[Fragmenter.scala 95:34]
  wire [2:0] irr_1_bits_size = deq_1_io_deq_bits_size; // @[Decoupled.scala 401:19 402:14]
  wire  narrow_1 = irr_1_bits_size != 3'h5; // @[Fragmenter.scala 96:34]
  wire  bad_1 = fixed_1 | narrow_1; // @[Fragmenter.scala 97:25]
  wire [7:0] beats1_1 = bad_1 ? 8'h0 : maxSupported1_1; // @[Fragmenter.scala 100:25]
  wire [8:0] _beats_T_4 = {beats1_1, 1'h0}; // @[package.scala 232:35]
  wire [8:0] _beats_T_5 = _beats_T_4 | 9'h1; // @[package.scala 232:40]
  wire [8:0] _beats_T_6 = {1'h0,beats1_1}; // @[Cat.scala 31:58]
  wire [8:0] _beats_T_7 = ~_beats_T_6; // @[package.scala 232:53]
  wire [8:0] w_beats = _beats_T_5 & _beats_T_7; // @[package.scala 232:51]
  wire [15:0] _GEN_3 = {{7'd0}, w_beats}; // @[Fragmenter.scala 103:38]
  wire [15:0] _inc_addr_T_2 = _GEN_3 << irr_1_bits_size; // @[Fragmenter.scala 103:38]
  wire [35:0] _GEN_29 = {{20'd0}, _inc_addr_T_2}; // @[Fragmenter.scala 103:29]
  wire [35:0] inc_addr_1 = addr_1 + _GEN_29; // @[Fragmenter.scala 103:29]
  wire [15:0] _wrapMask_T_2 = {irr_1_bits_len,8'hff}; // @[Cat.scala 31:58]
  wire [22:0] _GEN_6 = {{7'd0}, _wrapMask_T_2}; // @[Bundles.scala 34:21]
  wire [22:0] _wrapMask_T_3 = _GEN_6 << irr_1_bits_size; // @[Bundles.scala 34:21]
  wire [14:0] wrapMask_1 = _wrapMask_T_3[22:8]; // @[Bundles.scala 34:30]
  wire [35:0] _GEN_30 = {{21'd0}, wrapMask_1}; // @[Fragmenter.scala 107:33]
  wire [35:0] _mux_addr_T_5 = inc_addr_1 & _GEN_30; // @[Fragmenter.scala 107:33]
  wire [35:0] _mux_addr_T_6 = ~irr_1_bits_addr; // @[Fragmenter.scala 107:49]
  wire [35:0] _mux_addr_T_7 = _mux_addr_T_6 | _GEN_30; // @[Fragmenter.scala 107:62]
  wire [35:0] _mux_addr_T_8 = ~_mux_addr_T_7; // @[Fragmenter.scala 107:47]
  wire [35:0] _mux_addr_T_9 = _mux_addr_T_5 | _mux_addr_T_8; // @[Fragmenter.scala 107:45]
  wire  aw_last = beats1_1 == len_1; // @[Fragmenter.scala 113:27]
  reg [8:0] w_counter; // @[Fragmenter.scala 167:30]
  wire  w_idle = w_counter == 9'h0; // @[Fragmenter.scala 168:30]
  reg  wbeats_latched; // @[Fragmenter.scala 153:35]
  wire  _in_awready_T = w_idle | wbeats_latched; // @[Fragmenter.scala 161:52]
  wire  in_awready = auto_out_awready & (w_idle | wbeats_latched); // @[Fragmenter.scala 161:35]
  wire [35:0] _out_bits_addr_T_7 = ~addr_1; // @[Fragmenter.scala 125:28]
  wire [11:0] _out_bits_addr_T_9 = 12'h1f << irr_1_bits_size; // @[package.scala 234:77]
  wire [4:0] _out_bits_addr_T_11 = ~_out_bits_addr_T_9[4:0]; // @[package.scala 234:46]
  wire [35:0] _GEN_32 = {{31'd0}, _out_bits_addr_T_11}; // @[Fragmenter.scala 125:34]
  wire [35:0] _out_bits_addr_T_12 = _out_bits_addr_T_7 | _GEN_32; // @[Fragmenter.scala 125:34]
  wire  irr_1_valid = deq_1_io_deq_valid; // @[Decoupled.scala 401:19 403:15]
  wire  _T_5 = in_awready & irr_1_valid; // @[Decoupled.scala 50:35]
  wire [8:0] _GEN_33 = {{1'd0}, len_1}; // @[Fragmenter.scala 130:25]
  wire [8:0] _rlen_T_3 = _GEN_33 - w_beats; // @[Fragmenter.scala 130:25]
  wire [8:0] _GEN_9 = _T_5 ? _rlen_T_3 : {{1'd0}, r_len_1}; // @[Fragmenter.scala 127:27 130:18 65:25]
  wire  wbeats_valid = irr_1_valid & ~wbeats_latched; // @[Fragmenter.scala 162:35]
  wire  _GEN_10 = wbeats_valid & w_idle | wbeats_latched; // @[Fragmenter.scala 153:35 156:{43,60}]
  wire  bundleOut_0_awvalid = irr_1_valid & _in_awready_T; // @[Fragmenter.scala 160:35]
  wire  _T_7 = auto_out_awready & bundleOut_0_awvalid; // @[Decoupled.scala 50:35]
  wire [8:0] _wtodo_T = wbeats_valid ? w_beats : 9'h0; // @[Fragmenter.scala 169:35]
  wire [8:0] w_todo = w_idle ? _wtodo_T : w_counter; // @[Fragmenter.scala 169:23]
  wire  in_wvalid = in_wdeq_io_deq_valid; // @[Decoupled.scala 401:19 403:15]
  wire  _bundleOut_0_wvalid_T_1 = ~w_idle | wbeats_valid; // @[Fragmenter.scala 176:51]
  wire  bundleOut_0_wvalid = in_wvalid & (~w_idle | wbeats_valid); // @[Fragmenter.scala 176:33]
  wire  _wcounter_T = auto_out_wready & bundleOut_0_wvalid; // @[Decoupled.scala 50:35]
  wire [8:0] _GEN_34 = {{8'd0}, _wcounter_T}; // @[Fragmenter.scala 171:27]
  wire  bundleOut_0_bready = auto_in_bready | ~auto_out_becho_real_last; // @[Fragmenter.scala 192:33]
  reg [1:0] error_0; // @[Fragmenter.scala 195:26]
  reg [1:0] error_1; // @[Fragmenter.scala 195:26]
  wire [1:0] _GEN_13 = auto_out_bid ? error_1 : error_0; // @[Fragmenter.scala 196:{41,41}]
  wire [1:0] _T_22 = 2'h1 << auto_out_bid; // @[OneHot.scala 64:12]
  wire  _T_26 = bundleOut_0_bready & auto_out_bvalid; // @[Decoupled.scala 50:35]
  wire [1:0] _error_0_T = error_0 | auto_out_bresp; // @[Fragmenter.scala 198:70]
  wire [1:0] _error_1_T = error_1 | auto_out_bresp; // @[Fragmenter.scala 198:70]
  Queue_102 deq ( // @[Decoupled.scala 361:21]
    .clock(deq_clock),
    .reset(deq_reset),
    .io_enq_ready(deq_io_enq_ready),
    .io_enq_valid(deq_io_enq_valid),
    .io_enq_bits_id(deq_io_enq_bits_id),
    .io_enq_bits_addr(deq_io_enq_bits_addr),
    .io_enq_bits_len(deq_io_enq_bits_len),
    .io_enq_bits_size(deq_io_enq_bits_size),
    .io_enq_bits_burst(deq_io_enq_bits_burst),
    .io_enq_bits_echo_extra_id(deq_io_enq_bits_echo_extra_id),
    .io_deq_ready(deq_io_deq_ready),
    .io_deq_valid(deq_io_deq_valid),
    .io_deq_bits_id(deq_io_deq_bits_id),
    .io_deq_bits_addr(deq_io_deq_bits_addr),
    .io_deq_bits_len(deq_io_deq_bits_len),
    .io_deq_bits_size(deq_io_deq_bits_size),
    .io_deq_bits_burst(deq_io_deq_bits_burst),
    .io_deq_bits_echo_extra_id(deq_io_deq_bits_echo_extra_id)
  );
  Queue_102 deq_1 ( // @[Decoupled.scala 361:21]
    .clock(deq_1_clock),
    .reset(deq_1_reset),
    .io_enq_ready(deq_1_io_enq_ready),
    .io_enq_valid(deq_1_io_enq_valid),
    .io_enq_bits_id(deq_1_io_enq_bits_id),
    .io_enq_bits_addr(deq_1_io_enq_bits_addr),
    .io_enq_bits_len(deq_1_io_enq_bits_len),
    .io_enq_bits_size(deq_1_io_enq_bits_size),
    .io_enq_bits_burst(deq_1_io_enq_bits_burst),
    .io_enq_bits_echo_extra_id(deq_1_io_enq_bits_echo_extra_id),
    .io_deq_ready(deq_1_io_deq_ready),
    .io_deq_valid(deq_1_io_deq_valid),
    .io_deq_bits_id(deq_1_io_deq_bits_id),
    .io_deq_bits_addr(deq_1_io_deq_bits_addr),
    .io_deq_bits_len(deq_1_io_deq_bits_len),
    .io_deq_bits_size(deq_1_io_deq_bits_size),
    .io_deq_bits_burst(deq_1_io_deq_bits_burst),
    .io_deq_bits_echo_extra_id(deq_1_io_deq_bits_echo_extra_id)
  );
  Queue_64 in_wdeq ( // @[Decoupled.scala 361:21]
    .clock(in_wdeq_clock),
    .reset(in_wdeq_reset),
    .io_enq_ready(in_wdeq_io_enq_ready),
    .io_enq_valid(in_wdeq_io_enq_valid),
    .io_enq_bits_data(in_wdeq_io_enq_bits_data),
    .io_enq_bits_strb(in_wdeq_io_enq_bits_strb),
    .io_enq_bits_last(in_wdeq_io_enq_bits_last),
    .io_deq_ready(in_wdeq_io_deq_ready),
    .io_deq_valid(in_wdeq_io_deq_valid),
    .io_deq_bits_data(in_wdeq_io_deq_bits_data),
    .io_deq_bits_strb(in_wdeq_io_deq_bits_strb),
    .io_deq_bits_last(in_wdeq_io_deq_bits_last)
  );
  assign auto_in_awready = deq_1_io_enq_ready; // @[Nodes.scala 1210:84 Decoupled.scala 365:17]
  assign auto_in_wready = in_wdeq_io_enq_ready; // @[Nodes.scala 1210:84 Decoupled.scala 365:17]
  assign auto_in_bvalid = auto_out_bvalid & auto_out_becho_real_last; // @[Fragmenter.scala 191:33]
  assign auto_in_bid = auto_out_bid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_bresp = auto_out_bresp | _GEN_13; // @[Fragmenter.scala 196:41]
  assign auto_in_becho_extra_id = auto_out_becho_extra_id; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_arready = deq_io_enq_ready; // @[Nodes.scala 1210:84 Decoupled.scala 365:17]
  assign auto_in_rvalid = auto_out_rvalid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_rid = auto_out_rid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_rdata = auto_out_rdata; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_rresp = auto_out_rresp; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_recho_extra_id = auto_out_recho_extra_id; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_rlast = auto_out_rlast & auto_out_recho_real_last; // @[Fragmenter.scala 186:41]
  assign auto_out_awvalid = irr_1_valid & _in_awready_T; // @[Fragmenter.scala 160:35]
  assign auto_out_awid = deq_1_io_deq_bits_id; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_awaddr = ~_out_bits_addr_T_12; // @[Fragmenter.scala 125:26]
  assign auto_out_awlen = bad_1 ? 8'h0 : maxSupported1_1; // @[Fragmenter.scala 100:25]
  assign auto_out_awsize = deq_1_io_deq_bits_size; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_awecho_extra_id = deq_1_io_deq_bits_echo_extra_id; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_awecho_real_last = beats1_1 == len_1; // @[Fragmenter.scala 113:27]
  assign auto_out_wvalid = in_wvalid & (~w_idle | wbeats_valid); // @[Fragmenter.scala 176:33]
  assign auto_out_wdata = in_wdeq_io_deq_bits_data; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_wstrb = in_wdeq_io_deq_bits_strb; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_wlast = w_todo == 9'h1; // @[Fragmenter.scala 170:27]
  assign auto_out_bready = auto_in_bready | ~auto_out_becho_real_last; // @[Fragmenter.scala 192:33]
  assign auto_out_arvalid = deq_io_deq_valid; // @[Decoupled.scala 401:19 403:15]
  assign auto_out_arid = deq_io_deq_bits_id; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_araddr = ~_out_bits_addr_T_5; // @[Fragmenter.scala 125:26]
  assign auto_out_arlen = bad ? 8'h0 : maxSupported1; // @[Fragmenter.scala 100:25]
  assign auto_out_arsize = deq_io_deq_bits_size; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_arecho_extra_id = deq_io_deq_bits_echo_extra_id; // @[Decoupled.scala 401:19 402:14]
  assign auto_out_arecho_real_last = beats1 == len; // @[Fragmenter.scala 113:27]
  assign auto_out_rready = auto_in_rready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign deq_clock = clock;
  assign deq_reset = reset;
  assign deq_io_enq_valid = auto_in_arvalid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign deq_io_enq_bits_id = auto_in_arid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign deq_io_enq_bits_addr = auto_in_araddr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign deq_io_enq_bits_len = auto_in_arlen; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign deq_io_enq_bits_size = auto_in_arsize; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign deq_io_enq_bits_burst = auto_in_arburst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign deq_io_enq_bits_echo_extra_id = auto_in_arecho_extra_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign deq_io_deq_ready = auto_out_arready & ar_last; // @[Fragmenter.scala 114:30]
  assign deq_1_clock = clock;
  assign deq_1_reset = reset;
  assign deq_1_io_enq_valid = auto_in_awvalid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign deq_1_io_enq_bits_id = auto_in_awid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign deq_1_io_enq_bits_addr = auto_in_awaddr; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign deq_1_io_enq_bits_len = auto_in_awlen; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign deq_1_io_enq_bits_size = auto_in_awsize; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign deq_1_io_enq_bits_burst = auto_in_awburst; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign deq_1_io_enq_bits_echo_extra_id = auto_in_awecho_extra_id; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign deq_1_io_deq_ready = in_awready & aw_last; // @[Fragmenter.scala 114:30]
  assign in_wdeq_clock = clock;
  assign in_wdeq_reset = reset;
  assign in_wdeq_io_enq_valid = auto_in_wvalid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign in_wdeq_io_enq_bits_data = auto_in_wdata; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign in_wdeq_io_enq_bits_strb = auto_in_wstrb; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign in_wdeq_io_enq_bits_last = auto_in_wlast; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign in_wdeq_io_deq_ready = auto_out_wready & _bundleOut_0_wvalid_T_1; // @[Fragmenter.scala 177:33]
  always @(posedge clock) begin
    if (_T_2) begin // @[Fragmenter.scala 127:27]
      if (fixed) begin // @[Fragmenter.scala 109:60]
        r_addr <= irr_bits_addr; // @[Fragmenter.scala 110:20]
      end else if (irr_bits_burst == 2'h2) begin // @[Fragmenter.scala 106:59]
        r_addr <= _mux_addr_T_4; // @[Fragmenter.scala 107:20]
      end else begin
        r_addr <= inc_addr;
      end
    end
    r_len <= _GEN_4[7:0];
    if (_T_5) begin // @[Fragmenter.scala 127:27]
      if (fixed_1) begin // @[Fragmenter.scala 109:60]
        r_addr_1 <= irr_1_bits_addr; // @[Fragmenter.scala 110:20]
      end else if (irr_1_bits_burst == 2'h2) begin // @[Fragmenter.scala 106:59]
        r_addr_1 <= _mux_addr_T_9; // @[Fragmenter.scala 107:20]
      end else begin
        r_addr_1 <= inc_addr_1;
      end
    end
    r_len_1 <= _GEN_9[7:0];
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Fragmenter.scala 127:27]
      busy <= 1'h0; // @[Fragmenter.scala 128:16]
    end else if (_T_2) begin // @[Fragmenter.scala 63:29]
      busy <= ~ar_last;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Fragmenter.scala 127:27]
      busy_1 <= 1'h0; // @[Fragmenter.scala 128:16]
    end else if (_T_5) begin // @[Fragmenter.scala 63:29]
      busy_1 <= ~aw_last;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Fragmenter.scala 171:27]
      w_counter <= 9'h0;
    end else begin
      w_counter <= w_todo - _GEN_34;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Fragmenter.scala 157:28]
      wbeats_latched <= 1'h0; // @[Fragmenter.scala 157:45]
    end else if (_T_7) begin
      wbeats_latched <= 1'h0;
    end else begin
      wbeats_latched <= _GEN_10;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Fragmenter.scala 198:36]
      error_0 <= 2'h0; // @[Fragmenter.scala 198:48]
    end else if (_T_22[0] & _T_26) begin // @[Fragmenter.scala 195:26]
      if (auto_out_becho_real_last) begin
        error_0 <= 2'h0;
      end else begin
        error_0 <= _error_0_T;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Fragmenter.scala 198:36]
      error_1 <= 2'h0; // @[Fragmenter.scala 198:48]
    end else if (_T_22[1] & _T_26) begin // @[Fragmenter.scala 195:26]
      if (auto_out_becho_real_last) begin
        error_1 <= 2'h0;
      end else begin
        error_1 <= _error_1_T;
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
  busy = _RAND_0[0:0];
  _RAND_1 = {2{`RANDOM}};
  r_addr = _RAND_1[35:0];
  _RAND_2 = {1{`RANDOM}};
  r_len = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  busy_1 = _RAND_3[0:0];
  _RAND_4 = {2{`RANDOM}};
  r_addr_1 = _RAND_4[35:0];
  _RAND_5 = {1{`RANDOM}};
  r_len_1 = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  w_counter = _RAND_6[8:0];
  _RAND_7 = {1{`RANDOM}};
  wbeats_latched = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  error_0 = _RAND_8[1:0];
  _RAND_9 = {1{`RANDOM}};
  error_1 = _RAND_9[1:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    busy = 1'h0;
  end
  if (reset) begin
    busy_1 = 1'h0;
  end
  if (reset) begin
    w_counter = 9'h0;
  end
  if (reset) begin
    wbeats_latched = 1'h0;
  end
  if (reset) begin
    error_0 = 2'h0;
  end
  if (reset) begin
    error_1 = 2'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

