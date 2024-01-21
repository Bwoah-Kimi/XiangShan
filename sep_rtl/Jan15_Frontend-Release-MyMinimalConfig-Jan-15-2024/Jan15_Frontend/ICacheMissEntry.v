module ICacheMissEntry(
  input          clock,
  input          reset,
  input          io_id,
  output         io_req_ready,
  input          io_req_valid,
  input  [35:0]  io_req_bits_paddr,
  input  [38:0]  io_req_bits_vaddr,
  input  [3:0]   io_req_bits_waymask,
  output         io_resp_valid,
  output [511:0] io_resp_bits_data,
  output         io_resp_bits_corrupt,
  input          io_mem_acquire_ready,
  output         io_mem_acquire_valid,
  output [1:0]   io_mem_acquire_bits_source,
  output [35:0]  io_mem_acquire_bits_address,
  output         io_mem_grant_ready,
  input          io_mem_grant_valid,
  input  [2:0]   io_mem_grant_bits_opcode,
  input  [255:0] io_mem_grant_bits_data,
  input          io_mem_grant_bits_corrupt,
  input          io_meta_write_ready,
  output         io_meta_write_valid,
  output [5:0]   io_meta_write_bits_virIdx,
  output [23:0]  io_meta_write_bits_phyTag,
  output [3:0]   io_meta_write_bits_waymask,
  output         io_meta_write_bits_bankIdx,
  input          io_data_write_ready,
  output         io_data_write_valid,
  output [5:0]   io_data_write_bits_virIdx,
  output [511:0] io_data_write_bits_data,
  output [3:0]   io_data_write_bits_waymask,
  output         io_data_write_bits_bankIdx,
  input          io_fencei
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [255:0] _RAND_7;
  reg [255:0] _RAND_8;
`endif // RANDOMIZE_REG_INIT
  reg [2:0] state; // @[ICacheMissUnit.scala 91:22]
  reg [35:0] req_paddr; // @[ICacheMissUnit.scala 94:16]
  reg [38:0] req_vaddr; // @[ICacheMissUnit.scala 94:16]
  reg [3:0] req_waymask; // @[ICacheMissUnit.scala 94:16]
  wire [5:0] req_idx = req_vaddr[11:6]; // @[L1Cache.scala 83:33]
  reg  req_corrupt; // @[ICacheMissUnit.scala 98:28]
  wire  _T = io_mem_grant_ready & io_mem_grant_valid; // @[Decoupled.scala 50:35]
  wire  beats1_opdata = io_mem_grant_bits_opcode[0]; // @[Edges.scala 105:36]
  reg  needflush_r; // @[ICacheMissUnit.scala 102:28]
  wire  _GEN_1 = state == 3'h0 ? 1'h0 : needflush_r; // @[ICacheMissUnit.scala 103:27 102:28 103:41]
  wire  needflush = needflush_r | io_fencei; // @[ICacheMissUnit.scala 105:31]
  reg  readBeatCnt; // @[ICacheMissUnit.scala 108:24]
  reg [255:0] respDataReg_0; // @[ICacheMissUnit.scala 109:24]
  reg [255:0] respDataReg_1; // @[ICacheMissUnit.scala 109:24]
  wire  _T_5 = io_req_ready & io_req_valid; // @[Decoupled.scala 50:35]
  wire  _T_7 = io_mem_acquire_ready & io_mem_acquire_valid; // @[Decoupled.scala 50:35]
  wire [255:0] _GEN_9 = ~readBeatCnt ? io_mem_grant_bits_data : respDataReg_0; // @[ICacheMissUnit.scala 109:24 145:{36,36}]
  wire [255:0] _GEN_10 = readBeatCnt ? io_mem_grant_bits_data : respDataReg_1; // @[ICacheMissUnit.scala 109:24 145:{36,36}]
  wire [2:0] _GEN_11 = readBeatCnt ? 3'h3 : state; // @[ICacheMissUnit.scala 147:54 149:19 91:22]
  wire  _GEN_12 = _T ? readBeatCnt + 1'h1 : readBeatCnt; // @[ICacheMissUnit.scala 143:35 144:23 108:24]
  wire [255:0] _GEN_13 = _T ? _GEN_9 : respDataReg_0; // @[ICacheMissUnit.scala 109:24 143:35]
  wire [255:0] _GEN_14 = _T ? _GEN_10 : respDataReg_1; // @[ICacheMissUnit.scala 109:24 143:35]
  wire  _GEN_15 = _T ? io_mem_grant_bits_corrupt : req_corrupt; // @[ICacheMissUnit.scala 143:35 146:23 98:28]
  wire [2:0] _GEN_16 = _T ? _GEN_11 : state; // @[ICacheMissUnit.scala 143:35 91:22]
  wire  _state_T = io_meta_write_ready & io_meta_write_valid; // @[Decoupled.scala 50:35]
  wire  _state_T_1 = io_data_write_ready & io_data_write_valid; // @[Decoupled.scala 50:35]
  wire [2:0] _state_T_4 = _state_T & _state_T_1 | needflush ? 3'h4 : 3'h3; // @[ICacheMissUnit.scala 156:19]
  wire [2:0] _GEN_22 = io_resp_valid ? 3'h0 : state; // @[ICacheMissUnit.scala 162:28 163:15 91:22]
  wire [2:0] _GEN_25 = 3'h4 == state ? _GEN_22 : state; // @[ICacheMissUnit.scala 125:17 91:22]
  wire  _io_meta_write_valid_T = state == 3'h3; // @[ICacheMissUnit.scala 184:33]
  wire  _io_meta_write_valid_T_1 = ~needflush; // @[ICacheMissUnit.scala 184:53]
  assign io_req_ready = state == 3'h0; // @[ICacheMissUnit.scala 118:26]
  assign io_resp_valid = state == 3'h4; // @[ICacheMissUnit.scala 182:26]
  assign io_resp_bits_data = {respDataReg_1,respDataReg_0}; // @[ICacheMissUnit.scala 160:40]
  assign io_resp_bits_corrupt = req_corrupt; // @[ICacheMissUnit.scala 125:17 161:28]
  assign io_mem_acquire_valid = state == 3'h1; // @[ICacheMissUnit.scala 119:34]
  assign io_mem_acquire_bits_source = {{1'd0}, io_id}; // @[Edges.scala 447:17 451:15]
  assign io_mem_acquire_bits_address = {req_paddr[35:6],6'h0}; // @[Cat.scala 31:58]
  assign io_mem_grant_ready = 1'h1; // @[ICacheMissUnit.scala 114:22]
  assign io_meta_write_valid = state == 3'h3 & ~needflush; // @[ICacheMissUnit.scala 184:50]
  assign io_meta_write_bits_virIdx = req_vaddr[11:6]; // @[L1Cache.scala 83:33]
  assign io_meta_write_bits_phyTag = req_paddr[35:12]; // @[L1Cache.scala 80:41]
  assign io_meta_write_bits_waymask = req_waymask; // @[ICacheBundle.scala 61:18]
  assign io_meta_write_bits_bankIdx = req_idx[0]; // @[ICacheMissUnit.scala 185:101]
  assign io_data_write_valid = _io_meta_write_valid_T & _io_meta_write_valid_T_1; // @[ICacheMissUnit.scala 187:50]
  assign io_data_write_bits_virIdx = req_vaddr[11:6]; // @[L1Cache.scala 83:33]
  assign io_data_write_bits_data = {respDataReg_1,respDataReg_0}; // @[ICacheMissUnit.scala 188:50]
  assign io_data_write_bits_waymask = req_waymask; // @[ICacheBundle.scala 78:18]
  assign io_data_write_bits_bankIdx = req_idx[0]; // @[ICacheMissUnit.scala 191:48]
  always @(posedge clock) begin
    if (3'h0 == state) begin // @[ICacheMissUnit.scala 125:17]
      if (_T_5) begin // @[ICacheMissUnit.scala 127:27]
        req_paddr <= io_req_bits_paddr; // @[ICacheMissUnit.scala 130:13]
      end
    end
    if (3'h0 == state) begin // @[ICacheMissUnit.scala 125:17]
      if (_T_5) begin // @[ICacheMissUnit.scala 127:27]
        req_vaddr <= io_req_bits_vaddr; // @[ICacheMissUnit.scala 130:13]
      end
    end
    if (3'h0 == state) begin // @[ICacheMissUnit.scala 125:17]
      if (_T_5) begin // @[ICacheMissUnit.scala 127:27]
        req_waymask <= io_req_bits_waymask; // @[ICacheMissUnit.scala 130:13]
      end
    end
    if (3'h0 == state) begin // @[ICacheMissUnit.scala 125:17]
      if (_T_5) begin // @[ICacheMissUnit.scala 127:27]
        readBeatCnt <= 1'h0; // @[ICacheMissUnit.scala 128:21]
      end
    end else if (!(3'h1 == state)) begin // @[ICacheMissUnit.scala 125:17]
      if (3'h2 == state) begin // @[ICacheMissUnit.scala 125:17]
        if (beats1_opdata) begin // @[ICacheMissUnit.scala 142:45]
          readBeatCnt <= _GEN_12;
        end
      end
    end
    if (!(3'h0 == state)) begin // @[ICacheMissUnit.scala 125:17]
      if (!(3'h1 == state)) begin // @[ICacheMissUnit.scala 125:17]
        if (3'h2 == state) begin // @[ICacheMissUnit.scala 125:17]
          if (beats1_opdata) begin // @[ICacheMissUnit.scala 142:45]
            respDataReg_0 <= _GEN_13;
          end
        end
      end
    end
    if (!(3'h0 == state)) begin // @[ICacheMissUnit.scala 125:17]
      if (!(3'h1 == state)) begin // @[ICacheMissUnit.scala 125:17]
        if (3'h2 == state) begin // @[ICacheMissUnit.scala 125:17]
          if (beats1_opdata) begin // @[ICacheMissUnit.scala 142:45]
            respDataReg_1 <= _GEN_14;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[ICacheMissUnit.scala 125:17]
      state <= 3'h0; // @[ICacheMissUnit.scala 127:27 129:15 91:22]
    end else if (3'h0 == state) begin // @[ICacheMissUnit.scala 125:17]
      if (_T_5) begin // @[ICacheMissUnit.scala 136:35]
        state <= 3'h1; // @[ICacheMissUnit.scala 137:15]
      end
    end else if (3'h1 == state) begin // @[ICacheMissUnit.scala 125:17]
      if (_T_7) begin // @[ICacheMissUnit.scala 142:45]
        state <= 3'h2;
      end
    end else if (3'h2 == state) begin // @[ICacheMissUnit.scala 125:17]
      if (beats1_opdata) begin // @[ICacheMissUnit.scala 156:13]
        state <= _GEN_16;
      end
    end else if (3'h3 == state) begin
      state <= _state_T_4;
    end else begin
      state <= _GEN_25;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[ICacheMissUnit.scala 125:17]
      req_corrupt <= 1'h0; // @[ICacheMissUnit.scala 98:28]
    end else if (!(3'h0 == state)) begin // @[ICacheMissUnit.scala 125:17]
      if (!(3'h1 == state)) begin // @[ICacheMissUnit.scala 125:17]
        if (3'h2 == state) begin // @[ICacheMissUnit.scala 98:28]
          if (beats1_opdata) begin
            req_corrupt <= _GEN_15;
          end
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[ICacheMissUnit.scala 104:40]
      needflush_r <= 1'h0; // @[ICacheMissUnit.scala 104:54]
    end else begin
      needflush_r <= state != 3'h0 & io_fencei | _GEN_1;
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
  state = _RAND_0[2:0];
  _RAND_1 = {2{`RANDOM}};
  req_paddr = _RAND_1[35:0];
  _RAND_2 = {2{`RANDOM}};
  req_vaddr = _RAND_2[38:0];
  _RAND_3 = {1{`RANDOM}};
  req_waymask = _RAND_3[3:0];
  _RAND_4 = {1{`RANDOM}};
  req_corrupt = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  needflush_r = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  readBeatCnt = _RAND_6[0:0];
  _RAND_7 = {8{`RANDOM}};
  respDataReg_0 = _RAND_7[255:0];
  _RAND_8 = {8{`RANDOM}};
  respDataReg_1 = _RAND_8[255:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    state = 3'h0;
  end
  if (reset) begin
    req_corrupt = 1'h0;
  end
  if (reset) begin
    needflush_r = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

