module MMIOEntry(
  input          clock,
  input          reset,
  input  [7:0]   io_hartId,
  input          io_enableOutstanding,
  output         io_req_ready,
  input          io_req_valid,
  input  [4:0]   io_req_bits_cmd,
  input  [35:0]  io_req_bits_addr,
  input  [63:0]  io_req_bits_data,
  input  [7:0]   io_req_bits_mask,
  input  [4:0]   io_req_bits_id,
  input          io_req_bits_atomic,
  input          io_resp_ready,
  output         io_resp_valid,
  output [127:0] io_resp_bits_data,
  output [3:0]   io_resp_bits_id,
  input          io_mem_acquire_ready,
  output         io_mem_acquire_valid,
  output [2:0]   io_mem_acquire_bits_opcode,
  output [2:0]   io_mem_acquire_bits_size,
  output [1:0]   io_mem_acquire_bits_source,
  output [35:0]  io_mem_acquire_bits_address,
  output [7:0]   io_mem_acquire_bits_mask,
  output [63:0]  io_mem_acquire_bits_data,
  output         io_mem_grant_ready,
  input          io_mem_grant_valid,
  input  [63:0]  io_mem_grant_bits_data,
  input          io_select,
  output         io_atomic
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [63:0] _RAND_7;
`endif // RANDOMIZE_REG_INIT
  reg [1:0] state; // @[Uncache.scala 76:22]
  reg [4:0] req_cmd; // @[Uncache.scala 78:16]
  reg [35:0] req_addr; // @[Uncache.scala 78:16]
  reg [63:0] req_data; // @[Uncache.scala 78:16]
  reg [7:0] req_mask; // @[Uncache.scala 78:16]
  reg [4:0] req_id; // @[Uncache.scala 78:16]
  reg  req_atomic; // @[Uncache.scala 78:16]
  reg [63:0] resp_data; // @[Uncache.scala 79:22]
  wire  _T_1 = io_req_ready & io_req_valid; // @[Decoupled.scala 50:35]
  wire [1:0] _GEN_10 = _T_1 ? 2'h1 : state; // @[Uncache.scala 96:24 99:13 76:22]
  wire [1:0] _GEN_22 = state == 2'h0 ? _GEN_10 : state; // @[Uncache.scala 76:22 93:30]
  wire [1:0] _size_T_8 = req_mask[0] + req_mask[1]; // @[Bitwise.scala 48:55]
  wire [1:0] _size_T_10 = req_mask[2] + req_mask[3]; // @[Bitwise.scala 48:55]
  wire [2:0] _size_T_12 = _size_T_8 + _size_T_10; // @[Bitwise.scala 48:55]
  wire [1:0] _size_T_14 = req_mask[4] + req_mask[5]; // @[Bitwise.scala 48:55]
  wire [1:0] _size_T_16 = req_mask[6] + req_mask[7]; // @[Bitwise.scala 48:55]
  wire [2:0] _size_T_18 = _size_T_14 + _size_T_16; // @[Bitwise.scala 48:55]
  wire [3:0] size = _size_T_12 + _size_T_18; // @[Bitwise.scala 48:55]
  wire  _T_2 = size == 4'h1; // @[Uncache.scala 111:19]
  wire  _T_3 = size == 4'h2; // @[Uncache.scala 111:19]
  wire  _T_4 = size == 4'h4; // @[Uncache.scala 111:19]
  wire [1:0] d_tail = _T_4 ? 2'h2 : 2'h3; // @[PriorityMuxDefault.scala 47:13]
  wire [1:0] d_tail_1 = _T_3 ? 2'h1 : d_tail; // @[PriorityMuxDefault.scala 47:13]
  wire [1:0] lgSize = _T_2 ? 2'h0 : d_tail_1; // @[PriorityMuxDefault.scala 47:13]
  wire [2:0] _load_a_mask_sizeOH_T = {{1'd0}, lgSize}; // @[Misc.scala 201:34]
  wire [1:0] load_a_mask_sizeOH_shiftAmount = _load_a_mask_sizeOH_T[1:0]; // @[OneHot.scala 63:49]
  wire [3:0] _load_a_mask_sizeOH_T_1 = 4'h1 << load_a_mask_sizeOH_shiftAmount; // @[OneHot.scala 64:12]
  wire [2:0] load_a_mask_sizeOH = _load_a_mask_sizeOH_T_1[2:0] | 3'h1; // @[Misc.scala 201:81]
  wire  _load_a_mask_T = lgSize >= 2'h3; // @[Misc.scala 205:21]
  wire  load_a_mask_size = load_a_mask_sizeOH[2]; // @[Misc.scala 208:26]
  wire  load_a_mask_bit = req_addr[2]; // @[Misc.scala 209:26]
  wire  load_a_mask_nbit = ~load_a_mask_bit; // @[Misc.scala 210:20]
  wire  load_a_mask_acc = _load_a_mask_T | load_a_mask_size & load_a_mask_nbit; // @[Misc.scala 214:29]
  wire  load_a_mask_acc_1 = _load_a_mask_T | load_a_mask_size & load_a_mask_bit; // @[Misc.scala 214:29]
  wire  load_a_mask_size_1 = load_a_mask_sizeOH[1]; // @[Misc.scala 208:26]
  wire  load_a_mask_bit_1 = req_addr[1]; // @[Misc.scala 209:26]
  wire  load_a_mask_nbit_1 = ~load_a_mask_bit_1; // @[Misc.scala 210:20]
  wire  load_a_mask_eq_2 = load_a_mask_nbit & load_a_mask_nbit_1; // @[Misc.scala 213:27]
  wire  load_a_mask_acc_2 = load_a_mask_acc | load_a_mask_size_1 & load_a_mask_eq_2; // @[Misc.scala 214:29]
  wire  load_a_mask_eq_3 = load_a_mask_nbit & load_a_mask_bit_1; // @[Misc.scala 213:27]
  wire  load_a_mask_acc_3 = load_a_mask_acc | load_a_mask_size_1 & load_a_mask_eq_3; // @[Misc.scala 214:29]
  wire  load_a_mask_eq_4 = load_a_mask_bit & load_a_mask_nbit_1; // @[Misc.scala 213:27]
  wire  load_a_mask_acc_4 = load_a_mask_acc_1 | load_a_mask_size_1 & load_a_mask_eq_4; // @[Misc.scala 214:29]
  wire  load_a_mask_eq_5 = load_a_mask_bit & load_a_mask_bit_1; // @[Misc.scala 213:27]
  wire  load_a_mask_acc_5 = load_a_mask_acc_1 | load_a_mask_size_1 & load_a_mask_eq_5; // @[Misc.scala 214:29]
  wire  load_a_mask_size_2 = load_a_mask_sizeOH[0]; // @[Misc.scala 208:26]
  wire  load_a_mask_bit_2 = req_addr[0]; // @[Misc.scala 209:26]
  wire  load_a_mask_nbit_2 = ~load_a_mask_bit_2; // @[Misc.scala 210:20]
  wire  load_a_mask_eq_6 = load_a_mask_eq_2 & load_a_mask_nbit_2; // @[Misc.scala 213:27]
  wire  load_a_mask_acc_6 = load_a_mask_acc_2 | load_a_mask_size_2 & load_a_mask_eq_6; // @[Misc.scala 214:29]
  wire  load_a_mask_eq_7 = load_a_mask_eq_2 & load_a_mask_bit_2; // @[Misc.scala 213:27]
  wire  load_a_mask_acc_7 = load_a_mask_acc_2 | load_a_mask_size_2 & load_a_mask_eq_7; // @[Misc.scala 214:29]
  wire  load_a_mask_eq_8 = load_a_mask_eq_3 & load_a_mask_nbit_2; // @[Misc.scala 213:27]
  wire  load_a_mask_acc_8 = load_a_mask_acc_3 | load_a_mask_size_2 & load_a_mask_eq_8; // @[Misc.scala 214:29]
  wire  load_a_mask_eq_9 = load_a_mask_eq_3 & load_a_mask_bit_2; // @[Misc.scala 213:27]
  wire  load_a_mask_acc_9 = load_a_mask_acc_3 | load_a_mask_size_2 & load_a_mask_eq_9; // @[Misc.scala 214:29]
  wire  load_a_mask_eq_10 = load_a_mask_eq_4 & load_a_mask_nbit_2; // @[Misc.scala 213:27]
  wire  load_a_mask_acc_10 = load_a_mask_acc_4 | load_a_mask_size_2 & load_a_mask_eq_10; // @[Misc.scala 214:29]
  wire  load_a_mask_eq_11 = load_a_mask_eq_4 & load_a_mask_bit_2; // @[Misc.scala 213:27]
  wire  load_a_mask_acc_11 = load_a_mask_acc_4 | load_a_mask_size_2 & load_a_mask_eq_11; // @[Misc.scala 214:29]
  wire  load_a_mask_eq_12 = load_a_mask_eq_5 & load_a_mask_nbit_2; // @[Misc.scala 213:27]
  wire  load_a_mask_acc_12 = load_a_mask_acc_5 | load_a_mask_size_2 & load_a_mask_eq_12; // @[Misc.scala 214:29]
  wire  load_a_mask_eq_13 = load_a_mask_eq_5 & load_a_mask_bit_2; // @[Misc.scala 213:27]
  wire  load_a_mask_acc_13 = load_a_mask_acc_5 | load_a_mask_size_2 & load_a_mask_eq_13; // @[Misc.scala 214:29]
  wire [7:0] load_mask = {load_a_mask_acc_13,load_a_mask_acc_12,load_a_mask_acc_11,load_a_mask_acc_10,load_a_mask_acc_9,
    load_a_mask_acc_8,load_a_mask_acc_7,load_a_mask_acc_6}; // @[Cat.scala 31:58]
  wire  _io_mem_acquire_bits_T = req_cmd == 5'h1; // @[Uncache.scala 80:26]
  wire [1:0] store_source = io_hartId[1:0]; // @[Edges.scala 483:17 487:15]
  wire  _T_13 = io_mem_acquire_ready & io_mem_acquire_valid; // @[Decoupled.scala 50:35]
  wire [1:0] _GEN_23 = _T_13 ? 2'h2 : _GEN_22; // @[Uncache.scala 134:32 135:13]
  wire [1:0] _GEN_33 = state == 2'h1 ? _GEN_23 : _GEN_22; // @[Uncache.scala 130:33]
  wire  _refill_done_T = io_mem_grant_ready & io_mem_grant_valid; // @[Decoupled.scala 50:35]
  wire [1:0] _state_T_2 = _io_mem_acquire_bits_T & io_enableOutstanding ? 2'h0 : 2'h3; // @[Uncache.scala 146:19]
  wire [1:0] _GEN_36 = _refill_done_T ? _state_T_2 : _GEN_33; // @[Uncache.scala 143:30 146:13]
  wire [1:0] _GEN_39 = state == 2'h2 ? _GEN_36 : _GEN_33; // @[Uncache.scala 140:34]
  wire  _T_20 = io_resp_ready & io_resp_valid; // @[Decoupled.scala 50:35]
  assign io_req_ready = state == 2'h0; // @[Uncache.scala 93:15]
  assign io_resp_valid = state == 2'h3; // @[Uncache.scala 151:15]
  assign io_resp_bits_data = {{64'd0}, resp_data};
  assign io_resp_bits_id = req_id[3:0];
  assign io_mem_acquire_valid = state == 2'h1 & io_select; // @[Uncache.scala 130:33 131:26 87:24]
  assign io_mem_acquire_bits_opcode = _io_mem_acquire_bits_T ? 3'h1 : 3'h4; // @[Uncache.scala 132:31]
  assign io_mem_acquire_bits_size = _io_mem_acquire_bits_T ? _load_a_mask_sizeOH_T : _load_a_mask_sizeOH_T; // @[Uncache.scala 132:31]
  assign io_mem_acquire_bits_source = _io_mem_acquire_bits_T ? store_source : store_source; // @[Uncache.scala 132:31]
  assign io_mem_acquire_bits_address = req_addr; // @[Uncache.scala 132:31]
  assign io_mem_acquire_bits_mask = _io_mem_acquire_bits_T ? req_mask : load_mask; // @[Uncache.scala 132:31]
  assign io_mem_acquire_bits_data = _io_mem_acquire_bits_T ? req_data : 64'h0; // @[Uncache.scala 132:31]
  assign io_mem_grant_ready = state == 2'h2; // @[Uncache.scala 140:15]
  assign io_atomic = req_atomic; // @[Uncache.scala 91:13]
  always @(posedge clock) begin
    if (state == 2'h0) begin // @[Uncache.scala 93:30]
      if (_T_1) begin // @[Uncache.scala 96:24]
        req_cmd <= io_req_bits_cmd; // @[Uncache.scala 97:11]
      end
    end
    if (state == 2'h0) begin // @[Uncache.scala 93:30]
      if (_T_1) begin // @[Uncache.scala 96:24]
        req_addr <= io_req_bits_addr; // @[Uncache.scala 98:16]
      end
    end
    if (state == 2'h0) begin // @[Uncache.scala 93:30]
      if (_T_1) begin // @[Uncache.scala 96:24]
        req_data <= io_req_bits_data; // @[Uncache.scala 97:11]
      end
    end
    if (state == 2'h0) begin // @[Uncache.scala 93:30]
      if (_T_1) begin // @[Uncache.scala 96:24]
        req_mask <= io_req_bits_mask; // @[Uncache.scala 97:11]
      end
    end
    if (state == 2'h0) begin // @[Uncache.scala 93:30]
      if (_T_1) begin // @[Uncache.scala 96:24]
        req_id <= io_req_bits_id; // @[Uncache.scala 97:11]
      end
    end
    if (state == 2'h0) begin // @[Uncache.scala 93:30]
      if (_T_1) begin // @[Uncache.scala 96:24]
        req_atomic <= io_req_bits_atomic; // @[Uncache.scala 97:11]
      end
    end
    if (state == 2'h2) begin // @[Uncache.scala 140:34]
      if (_refill_done_T) begin // @[Uncache.scala 143:30]
        resp_data <= io_mem_grant_bits_data; // @[Uncache.scala 144:17]
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Uncache.scala 151:32]
      state <= 2'h0; // @[Uncache.scala 161:27 162:13]
    end else if (state == 2'h3) begin
      if (_T_20) begin
        state <= 2'h0;
      end else begin
        state <= _GEN_39;
      end
    end else begin
      state <= _GEN_39;
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
  state = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  req_cmd = _RAND_1[4:0];
  _RAND_2 = {2{`RANDOM}};
  req_addr = _RAND_2[35:0];
  _RAND_3 = {2{`RANDOM}};
  req_data = _RAND_3[63:0];
  _RAND_4 = {1{`RANDOM}};
  req_mask = _RAND_4[7:0];
  _RAND_5 = {1{`RANDOM}};
  req_id = _RAND_5[4:0];
  _RAND_6 = {1{`RANDOM}};
  req_atomic = _RAND_6[0:0];
  _RAND_7 = {2{`RANDOM}};
  resp_data = _RAND_7[63:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    state = 2'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

