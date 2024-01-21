module SRAMTemplate_18(
  input        clock,
  input        reset,
  input        io_rreq_valid,
  input  [7:0] io_rreq_bits_setIdx,
  output       io_rresp_data_0_valid,
  output [7:0] io_rresp_data_0_tag,
  output [2:0] io_rresp_data_0_ctr,
  output       io_rresp_data_1_valid,
  output [7:0] io_rresp_data_1_tag,
  output [2:0] io_rresp_data_1_ctr,
  input        io_wreq_valid,
  input  [7:0] io_wreq_bits_setIdx,
  input  [7:0] io_wreq_bits_data_0_tag,
  input  [2:0] io_wreq_bits_data_0_ctr,
  input  [7:0] io_wreq_bits_data_1_tag,
  input  [2:0] io_wreq_bits_data_1_ctr,
  input  [1:0] io_wreq_bits_waymask
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  wire [7:0] array_RW0_addr; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_en; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_clk; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmode; // @[SRAMTemplate.scala 105:26]
  wire [11:0] array_RW0_wdata_0; // @[SRAMTemplate.scala 105:26]
  wire [11:0] array_RW0_wdata_1; // @[SRAMTemplate.scala 105:26]
  wire [11:0] array_RW0_rdata_0; // @[SRAMTemplate.scala 105:26]
  wire [11:0] array_RW0_rdata_1; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_0; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_1; // @[SRAMTemplate.scala 105:26]
  reg  resetState; // @[SRAMTemplate.scala 109:30]
  reg [7:0] resetSet; // @[Counter.scala 62:40]
  wire  wrap_wrap = resetSet == 8'hff; // @[Counter.scala 74:24]
  wire [7:0] _wrap_value_T_1 = resetSet + 8'h1; // @[Counter.scala 78:24]
  wire  resetFinish = resetState & wrap_wrap; // @[Counter.scala 120:{16,23}]
  wire  wen = io_wreq_valid | resetState; // @[SRAMTemplate.scala 122:52]
  wire  realRen = io_rreq_valid & ~wen; // @[SRAMTemplate.scala 123:38]
  wire [7:0] setIdx = resetState ? resetSet : io_wreq_bits_setIdx; // @[SRAMTemplate.scala 125:19]
  wire  _wdata_T__0_valid = resetState ? 1'h0 : 1'h1; // @[SRAMTemplate.scala 126:26]
  wire [7:0] _wdata_T__0_tag = resetState ? 8'h0 : io_wreq_bits_data_0_tag; // @[SRAMTemplate.scala 126:26]
  wire [2:0] _wdata_T__0_ctr = resetState ? 3'h0 : io_wreq_bits_data_0_ctr; // @[SRAMTemplate.scala 126:26]
  wire [7:0] _wdata_T__1_tag = resetState ? 8'h0 : io_wreq_bits_data_1_tag; // @[SRAMTemplate.scala 126:26]
  wire [2:0] _wdata_T__1_ctr = resetState ? 3'h0 : io_wreq_bits_data_1_ctr; // @[SRAMTemplate.scala 126:26]
  wire [8:0] wdata_hi = {_wdata_T__0_valid,_wdata_T__0_tag}; // @[SRAMTemplate.scala 126:102]
  wire [8:0] wdata_hi_1 = {_wdata_T__0_valid,_wdata_T__1_tag}; // @[SRAMTemplate.scala 126:102]
  wire [1:0] waymask = resetState ? 2'h3 : io_wreq_bits_waymask; // @[SRAMTemplate.scala 127:20]
  reg  rdata_REG; // @[SRAMTemplate.scala 153:59]
  reg [11:0] rdata_hold_data_0; // @[Reg.scala 16:16]
  reg [11:0] rdata_hold_data_1; // @[Reg.scala 16:16]
  wire [11:0] _GEN_20 = rdata_REG ? array_RW0_rdata_0 : rdata_hold_data_0; // @[Reg.scala 16:16 17:{18,22}]
  wire [11:0] _GEN_21 = rdata_REG ? array_RW0_rdata_1 : rdata_hold_data_1; // @[Reg.scala 16:16 17:{18,22}]
  array_5 array ( // @[SRAMTemplate.scala 105:26]
    .RW0_addr(array_RW0_addr),
    .RW0_en(array_RW0_en),
    .RW0_clk(array_RW0_clk),
    .RW0_wmode(array_RW0_wmode),
    .RW0_wdata_0(array_RW0_wdata_0),
    .RW0_wdata_1(array_RW0_wdata_1),
    .RW0_rdata_0(array_RW0_rdata_0),
    .RW0_rdata_1(array_RW0_rdata_1),
    .RW0_wmask_0(array_RW0_wmask_0),
    .RW0_wmask_1(array_RW0_wmask_1)
  );
  assign io_rresp_data_0_valid = _GEN_20[11]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_tag = _GEN_20[10:3]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_ctr = _GEN_20[2:0]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_valid = _GEN_21[11]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_tag = _GEN_21[10:3]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_ctr = _GEN_21[2:0]; // @[SRAMTemplate.scala 154:45]
  assign array_RW0_clk = clock; // @[SRAMTemplate.scala 128:14]
  assign array_RW0_wdata_0 = {wdata_hi,_wdata_T__0_ctr}; // @[SRAMTemplate.scala 126:102]
  assign array_RW0_wdata_1 = {wdata_hi_1,_wdata_T__1_ctr}; // @[SRAMTemplate.scala 126:102]
  assign array_RW0_wmask_0 = waymask[0]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_wmask_1 = waymask[1]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_en = realRen | wen;
  assign array_RW0_wmode = io_wreq_valid | resetState; // @[SRAMTemplate.scala 122:52]
  assign array_RW0_addr = wen ? setIdx : io_rreq_bits_setIdx;
  always @(posedge clock) begin
    rdata_REG <= io_rreq_valid & ~wen; // @[SRAMTemplate.scala 123:38]
    if (rdata_REG) begin // @[Reg.scala 17:18]
      rdata_hold_data_0 <= array_RW0_rdata_0; // @[Reg.scala 17:22]
    end
    if (rdata_REG) begin // @[Reg.scala 17:18]
      rdata_hold_data_1 <= array_RW0_rdata_1; // @[Reg.scala 17:22]
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
      resetSet <= 8'h0; // @[Counter.scala 78:15]
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
  resetSet = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  rdata_REG = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  rdata_hold_data_0 = _RAND_3[11:0];
  _RAND_4 = {1{`RANDOM}};
  rdata_hold_data_1 = _RAND_4[11:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    resetState = 1'h1;
  end
  if (reset) begin
    resetSet = 8'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

