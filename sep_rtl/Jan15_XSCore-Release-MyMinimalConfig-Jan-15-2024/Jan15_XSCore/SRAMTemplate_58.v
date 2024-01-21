module SRAMTemplate_58(
  input         clock,
  input         reset,
  input         io_rreq_valid,
  input  [6:0]  io_rreq_bits_setIdx,
  output [8:0]  io_rresp_data_0_tag,
  output [1:0]  io_rresp_data_0_ctr,
  output [38:0] io_rresp_data_0_target,
  input         io_wreq_valid,
  input  [6:0]  io_wreq_bits_setIdx,
  input  [8:0]  io_wreq_bits_data_0_tag,
  input  [1:0]  io_wreq_bits_data_0_ctr,
  input  [38:0] io_wreq_bits_data_0_target
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [63:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  wire [6:0] array_RW0_addr; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_en; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_clk; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmode; // @[SRAMTemplate.scala 105:26]
  wire [49:0] array_RW0_wdata_0; // @[SRAMTemplate.scala 105:26]
  wire [49:0] array_RW0_rdata_0; // @[SRAMTemplate.scala 105:26]
  reg  resetState; // @[SRAMTemplate.scala 109:30]
  reg [6:0] resetSet; // @[Counter.scala 62:40]
  wire  wrap_wrap = resetSet == 7'h7f; // @[Counter.scala 74:24]
  wire [6:0] _wrap_value_T_1 = resetSet + 7'h1; // @[Counter.scala 78:24]
  wire  resetFinish = resetState & wrap_wrap; // @[Counter.scala 120:{16,23}]
  wire  wen = io_wreq_valid | resetState; // @[SRAMTemplate.scala 122:52]
  wire  realRen = io_rreq_valid & ~wen; // @[SRAMTemplate.scala 123:38]
  wire [6:0] setIdx = resetState ? resetSet : io_wreq_bits_setIdx; // @[SRAMTemplate.scala 125:19]
  wire [8:0] _wdata_T_0_tag = resetState ? 9'h0 : io_wreq_bits_data_0_tag; // @[SRAMTemplate.scala 126:26]
  wire [1:0] _wdata_T_0_ctr = resetState ? 2'h0 : io_wreq_bits_data_0_ctr; // @[SRAMTemplate.scala 126:26]
  wire [38:0] _wdata_T_0_target = resetState ? 39'h0 : io_wreq_bits_data_0_target; // @[SRAMTemplate.scala 126:26]
  wire [10:0] wdata_hi = {_wdata_T_0_tag,_wdata_T_0_ctr}; // @[SRAMTemplate.scala 126:102]
  reg  rdata_REG; // @[SRAMTemplate.scala 153:59]
  reg [49:0] rdata_hold_data_0; // @[Reg.scala 16:16]
  wire [49:0] _GEN_15 = rdata_REG ? array_RW0_rdata_0 : rdata_hold_data_0; // @[Reg.scala 16:16 17:{18,22}]
  array_8 array ( // @[SRAMTemplate.scala 105:26]
    .RW0_addr(array_RW0_addr),
    .RW0_en(array_RW0_en),
    .RW0_clk(array_RW0_clk),
    .RW0_wmode(array_RW0_wmode),
    .RW0_wdata_0(array_RW0_wdata_0),
    .RW0_rdata_0(array_RW0_rdata_0)
  );
  assign io_rresp_data_0_tag = _GEN_15[49:41]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_ctr = _GEN_15[40:39]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_target = _GEN_15[38:0]; // @[SRAMTemplate.scala 154:45]
  assign array_RW0_clk = clock; // @[SRAMTemplate.scala 128:14]
  assign array_RW0_wdata_0 = {wdata_hi,_wdata_T_0_target}; // @[SRAMTemplate.scala 126:102]
  assign array_RW0_en = realRen | wen;
  assign array_RW0_wmode = io_wreq_valid | resetState; // @[SRAMTemplate.scala 122:52]
  assign array_RW0_addr = wen ? setIdx : io_rreq_bits_setIdx;
  always @(posedge clock) begin
    rdata_REG <= io_rreq_valid & ~wen; // @[SRAMTemplate.scala 123:38]
    if (rdata_REG) begin // @[Reg.scala 17:18]
      rdata_hold_data_0 <= array_RW0_rdata_0; // @[Reg.scala 17:22]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SRAMTemplate.scala 111:24]
      resetState <= 1'h1; // @[SRAMTemplate.scala 111:38]
    end else if (resetFinish) begin // @[SRAMTemplate.scala 109:30]
      resetState <= 1'h0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Counter.scala 120:16]
      resetSet <= 7'h0; // @[Counter.scala 78:15]
    end else if (resetState) begin // @[Counter.scala 62:40]
      resetSet <= _wrap_value_T_1;
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
  resetState = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  resetSet = _RAND_1[6:0];
  _RAND_2 = {1{`RANDOM}};
  rdata_REG = _RAND_2[0:0];
  _RAND_3 = {2{`RANDOM}};
  rdata_hold_data_0 = _RAND_3[49:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    resetState = 1'h1;
  end
  if (reset) begin
    resetSet = 7'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

