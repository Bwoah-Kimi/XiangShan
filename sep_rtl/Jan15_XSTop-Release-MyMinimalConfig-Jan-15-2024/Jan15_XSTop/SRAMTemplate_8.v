module SRAMTemplate_8(
  input         clock,
  input         reset,
  input         io_rreq_valid,
  input  [2:0]  io_rreq_bits_setIdx,
  input         io_wreq_valid,
  input  [2:0]  io_wreq_bits_setIdx,
  input  [24:0] io_wreq_bits_data_0,
  input  [24:0] io_wreq_bits_data_1,
  input  [24:0] io_wreq_bits_data_2,
  input  [24:0] io_wreq_bits_data_3,
  input  [3:0]  io_wreq_bits_waymask
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire [2:0] array_RW0_addr; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_en; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_clk; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmode; // @[SRAMTemplate.scala 105:26]
  wire [24:0] array_RW0_wdata_0; // @[SRAMTemplate.scala 105:26]
  wire [24:0] array_RW0_wdata_1; // @[SRAMTemplate.scala 105:26]
  wire [24:0] array_RW0_wdata_2; // @[SRAMTemplate.scala 105:26]
  wire [24:0] array_RW0_wdata_3; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_0; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_1; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_2; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_3; // @[SRAMTemplate.scala 105:26]
  reg  resetState; // @[SRAMTemplate.scala 109:30]
  reg [2:0] resetSet; // @[Counter.scala 62:40]
  wire  wrap_wrap = resetSet == 3'h7; // @[Counter.scala 74:24]
  wire [2:0] _wrap_value_T_1 = resetSet + 3'h1; // @[Counter.scala 78:24]
  wire  resetFinish = resetState & wrap_wrap; // @[Counter.scala 120:{16,23}]
  wire  wen = io_wreq_valid | resetState; // @[SRAMTemplate.scala 122:52]
  wire  realRen = io_rreq_valid & ~wen; // @[SRAMTemplate.scala 123:38]
  wire [2:0] setIdx = resetState ? resetSet : io_wreq_bits_setIdx; // @[SRAMTemplate.scala 125:19]
  wire [3:0] waymask = resetState ? 4'hf : io_wreq_bits_waymask; // @[SRAMTemplate.scala 127:20]
  array_2 array ( // @[SRAMTemplate.scala 105:26]
    .RW0_addr(array_RW0_addr),
    .RW0_en(array_RW0_en),
    .RW0_clk(array_RW0_clk),
    .RW0_wmode(array_RW0_wmode),
    .RW0_wdata_0(array_RW0_wdata_0),
    .RW0_wdata_1(array_RW0_wdata_1),
    .RW0_wdata_2(array_RW0_wdata_2),
    .RW0_wdata_3(array_RW0_wdata_3),
    .RW0_wmask_0(array_RW0_wmask_0),
    .RW0_wmask_1(array_RW0_wmask_1),
    .RW0_wmask_2(array_RW0_wmask_2),
    .RW0_wmask_3(array_RW0_wmask_3)
  );
  assign array_RW0_clk = clock; // @[SRAMTemplate.scala 128:14]
  assign array_RW0_wdata_0 = resetState ? 25'h0 : io_wreq_bits_data_0; // @[SRAMTemplate.scala 126:26]
  assign array_RW0_wdata_1 = resetState ? 25'h0 : io_wreq_bits_data_1; // @[SRAMTemplate.scala 126:26]
  assign array_RW0_wdata_2 = resetState ? 25'h0 : io_wreq_bits_data_2; // @[SRAMTemplate.scala 126:26]
  assign array_RW0_wdata_3 = resetState ? 25'h0 : io_wreq_bits_data_3; // @[SRAMTemplate.scala 126:26]
  assign array_RW0_wmask_0 = waymask[0]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_wmask_1 = waymask[1]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_wmask_2 = waymask[2]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_wmask_3 = waymask[3]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_en = realRen | wen;
  assign array_RW0_wmode = io_wreq_valid | resetState; // @[SRAMTemplate.scala 122:52]
  assign array_RW0_addr = wen ? setIdx : io_rreq_bits_setIdx;
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SRAMTemplate.scala 111:24]
      resetState <= 1'h1; // @[SRAMTemplate.scala 111:38]
    end else if (resetFinish) begin // @[SRAMTemplate.scala 109:30]
      resetState <= 1'h0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Counter.scala 120:16]
      resetSet <= 3'h0; // @[Counter.scala 78:15]
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
  resetSet = _RAND_1[2:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    resetState = 1'h1;
  end
  if (reset) begin
    resetSet = 3'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

