module SRAMTemplate_17(
  input         clock,
  input         reset,
  input         io_rreq_valid,
  input  [7:0]  io_rreq_bits_setIdx,
  output        io_rresp_data_0,
  output        io_rresp_data_1,
  output        io_rresp_data_2,
  output        io_rresp_data_3,
  output        io_rresp_data_4,
  output        io_rresp_data_5,
  output        io_rresp_data_6,
  output        io_rresp_data_7,
  output        io_rresp_data_8,
  output        io_rresp_data_9,
  output        io_rresp_data_10,
  output        io_rresp_data_11,
  output        io_rresp_data_12,
  output        io_rresp_data_13,
  output        io_rresp_data_14,
  output        io_rresp_data_15,
  input         io_wreq_valid,
  input  [7:0]  io_wreq_bits_setIdx,
  input         io_wreq_bits_data_0,
  input         io_wreq_bits_data_1,
  input         io_wreq_bits_data_2,
  input         io_wreq_bits_data_3,
  input         io_wreq_bits_data_4,
  input         io_wreq_bits_data_5,
  input         io_wreq_bits_data_6,
  input         io_wreq_bits_data_7,
  input         io_wreq_bits_data_8,
  input         io_wreq_bits_data_9,
  input         io_wreq_bits_data_10,
  input         io_wreq_bits_data_11,
  input         io_wreq_bits_data_12,
  input         io_wreq_bits_data_13,
  input         io_wreq_bits_data_14,
  input         io_wreq_bits_data_15,
  input  [15:0] io_wreq_bits_waymask,
  input         extra_reset
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
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
`endif // RANDOMIZE_REG_INIT
  wire [7:0] array_RW0_addr; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_en; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_clk; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmode; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wdata_0; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wdata_1; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wdata_2; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wdata_3; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wdata_4; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wdata_5; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wdata_6; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wdata_7; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wdata_8; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wdata_9; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wdata_10; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wdata_11; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wdata_12; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wdata_13; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wdata_14; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wdata_15; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_rdata_0; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_rdata_1; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_rdata_2; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_rdata_3; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_rdata_4; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_rdata_5; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_rdata_6; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_rdata_7; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_rdata_8; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_rdata_9; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_rdata_10; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_rdata_11; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_rdata_12; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_rdata_13; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_rdata_14; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_rdata_15; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_0; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_1; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_2; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_3; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_4; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_5; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_6; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_7; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_8; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_9; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_10; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_11; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_12; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_13; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_14; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_15; // @[SRAMTemplate.scala 105:26]
  reg  resetState; // @[SRAMTemplate.scala 109:30]
  reg [7:0] resetSet; // @[Counter.scala 62:40]
  wire  wrap_wrap = resetSet == 8'hff; // @[Counter.scala 74:24]
  wire [7:0] _wrap_value_T_1 = resetSet + 8'h1; // @[Counter.scala 78:24]
  wire  resetFinish = resetState & wrap_wrap; // @[Counter.scala 120:{16,23}]
  wire  _GEN_2 = resetFinish ? 1'h0 : resetState; // @[SRAMTemplate.scala 111:24 109:30 111:38]
  wire  wen = io_wreq_valid | resetState; // @[SRAMTemplate.scala 122:52]
  wire  realRen = io_rreq_valid & ~wen; // @[SRAMTemplate.scala 123:38]
  wire [7:0] setIdx = resetState ? resetSet : io_wreq_bits_setIdx; // @[SRAMTemplate.scala 125:19]
  wire [15:0] waymask = resetState ? 16'hffff : io_wreq_bits_waymask; // @[SRAMTemplate.scala 127:20]
  reg  rdata_REG; // @[SRAMTemplate.scala 153:59]
  reg  rdata_hold_data_0; // @[Reg.scala 16:16]
  reg  rdata_hold_data_1; // @[Reg.scala 16:16]
  reg  rdata_hold_data_2; // @[Reg.scala 16:16]
  reg  rdata_hold_data_3; // @[Reg.scala 16:16]
  reg  rdata_hold_data_4; // @[Reg.scala 16:16]
  reg  rdata_hold_data_5; // @[Reg.scala 16:16]
  reg  rdata_hold_data_6; // @[Reg.scala 16:16]
  reg  rdata_hold_data_7; // @[Reg.scala 16:16]
  reg  rdata_hold_data_8; // @[Reg.scala 16:16]
  reg  rdata_hold_data_9; // @[Reg.scala 16:16]
  reg  rdata_hold_data_10; // @[Reg.scala 16:16]
  reg  rdata_hold_data_11; // @[Reg.scala 16:16]
  reg  rdata_hold_data_12; // @[Reg.scala 16:16]
  reg  rdata_hold_data_13; // @[Reg.scala 16:16]
  reg  rdata_hold_data_14; // @[Reg.scala 16:16]
  reg  rdata_hold_data_15; // @[Reg.scala 16:16]
  array_4 array ( // @[SRAMTemplate.scala 105:26]
    .RW0_addr(array_RW0_addr),
    .RW0_en(array_RW0_en),
    .RW0_clk(array_RW0_clk),
    .RW0_wmode(array_RW0_wmode),
    .RW0_wdata_0(array_RW0_wdata_0),
    .RW0_wdata_1(array_RW0_wdata_1),
    .RW0_wdata_2(array_RW0_wdata_2),
    .RW0_wdata_3(array_RW0_wdata_3),
    .RW0_wdata_4(array_RW0_wdata_4),
    .RW0_wdata_5(array_RW0_wdata_5),
    .RW0_wdata_6(array_RW0_wdata_6),
    .RW0_wdata_7(array_RW0_wdata_7),
    .RW0_wdata_8(array_RW0_wdata_8),
    .RW0_wdata_9(array_RW0_wdata_9),
    .RW0_wdata_10(array_RW0_wdata_10),
    .RW0_wdata_11(array_RW0_wdata_11),
    .RW0_wdata_12(array_RW0_wdata_12),
    .RW0_wdata_13(array_RW0_wdata_13),
    .RW0_wdata_14(array_RW0_wdata_14),
    .RW0_wdata_15(array_RW0_wdata_15),
    .RW0_rdata_0(array_RW0_rdata_0),
    .RW0_rdata_1(array_RW0_rdata_1),
    .RW0_rdata_2(array_RW0_rdata_2),
    .RW0_rdata_3(array_RW0_rdata_3),
    .RW0_rdata_4(array_RW0_rdata_4),
    .RW0_rdata_5(array_RW0_rdata_5),
    .RW0_rdata_6(array_RW0_rdata_6),
    .RW0_rdata_7(array_RW0_rdata_7),
    .RW0_rdata_8(array_RW0_rdata_8),
    .RW0_rdata_9(array_RW0_rdata_9),
    .RW0_rdata_10(array_RW0_rdata_10),
    .RW0_rdata_11(array_RW0_rdata_11),
    .RW0_rdata_12(array_RW0_rdata_12),
    .RW0_rdata_13(array_RW0_rdata_13),
    .RW0_rdata_14(array_RW0_rdata_14),
    .RW0_rdata_15(array_RW0_rdata_15),
    .RW0_wmask_0(array_RW0_wmask_0),
    .RW0_wmask_1(array_RW0_wmask_1),
    .RW0_wmask_2(array_RW0_wmask_2),
    .RW0_wmask_3(array_RW0_wmask_3),
    .RW0_wmask_4(array_RW0_wmask_4),
    .RW0_wmask_5(array_RW0_wmask_5),
    .RW0_wmask_6(array_RW0_wmask_6),
    .RW0_wmask_7(array_RW0_wmask_7),
    .RW0_wmask_8(array_RW0_wmask_8),
    .RW0_wmask_9(array_RW0_wmask_9),
    .RW0_wmask_10(array_RW0_wmask_10),
    .RW0_wmask_11(array_RW0_wmask_11),
    .RW0_wmask_12(array_RW0_wmask_12),
    .RW0_wmask_13(array_RW0_wmask_13),
    .RW0_wmask_14(array_RW0_wmask_14),
    .RW0_wmask_15(array_RW0_wmask_15)
  );
  assign io_rresp_data_0 = rdata_REG ? array_RW0_rdata_0 : rdata_hold_data_0; // @[Hold.scala 25:8]
  assign io_rresp_data_1 = rdata_REG ? array_RW0_rdata_1 : rdata_hold_data_1; // @[Hold.scala 25:8]
  assign io_rresp_data_2 = rdata_REG ? array_RW0_rdata_2 : rdata_hold_data_2; // @[Hold.scala 25:8]
  assign io_rresp_data_3 = rdata_REG ? array_RW0_rdata_3 : rdata_hold_data_3; // @[Hold.scala 25:8]
  assign io_rresp_data_4 = rdata_REG ? array_RW0_rdata_4 : rdata_hold_data_4; // @[Hold.scala 25:8]
  assign io_rresp_data_5 = rdata_REG ? array_RW0_rdata_5 : rdata_hold_data_5; // @[Hold.scala 25:8]
  assign io_rresp_data_6 = rdata_REG ? array_RW0_rdata_6 : rdata_hold_data_6; // @[Hold.scala 25:8]
  assign io_rresp_data_7 = rdata_REG ? array_RW0_rdata_7 : rdata_hold_data_7; // @[Hold.scala 25:8]
  assign io_rresp_data_8 = rdata_REG ? array_RW0_rdata_8 : rdata_hold_data_8; // @[Hold.scala 25:8]
  assign io_rresp_data_9 = rdata_REG ? array_RW0_rdata_9 : rdata_hold_data_9; // @[Hold.scala 25:8]
  assign io_rresp_data_10 = rdata_REG ? array_RW0_rdata_10 : rdata_hold_data_10; // @[Hold.scala 25:8]
  assign io_rresp_data_11 = rdata_REG ? array_RW0_rdata_11 : rdata_hold_data_11; // @[Hold.scala 25:8]
  assign io_rresp_data_12 = rdata_REG ? array_RW0_rdata_12 : rdata_hold_data_12; // @[Hold.scala 25:8]
  assign io_rresp_data_13 = rdata_REG ? array_RW0_rdata_13 : rdata_hold_data_13; // @[Hold.scala 25:8]
  assign io_rresp_data_14 = rdata_REG ? array_RW0_rdata_14 : rdata_hold_data_14; // @[Hold.scala 25:8]
  assign io_rresp_data_15 = rdata_REG ? array_RW0_rdata_15 : rdata_hold_data_15; // @[Hold.scala 25:8]
  assign array_RW0_clk = clock; // @[SRAMTemplate.scala 128:14]
  assign array_RW0_wdata_0 = resetState ? 1'h0 : io_wreq_bits_data_0; // @[SRAMTemplate.scala 126:26]
  assign array_RW0_wdata_1 = resetState ? 1'h0 : io_wreq_bits_data_1; // @[SRAMTemplate.scala 126:26]
  assign array_RW0_wdata_2 = resetState ? 1'h0 : io_wreq_bits_data_2; // @[SRAMTemplate.scala 126:26]
  assign array_RW0_wdata_3 = resetState ? 1'h0 : io_wreq_bits_data_3; // @[SRAMTemplate.scala 126:26]
  assign array_RW0_wdata_4 = resetState ? 1'h0 : io_wreq_bits_data_4; // @[SRAMTemplate.scala 126:26]
  assign array_RW0_wdata_5 = resetState ? 1'h0 : io_wreq_bits_data_5; // @[SRAMTemplate.scala 126:26]
  assign array_RW0_wdata_6 = resetState ? 1'h0 : io_wreq_bits_data_6; // @[SRAMTemplate.scala 126:26]
  assign array_RW0_wdata_7 = resetState ? 1'h0 : io_wreq_bits_data_7; // @[SRAMTemplate.scala 126:26]
  assign array_RW0_wdata_8 = resetState ? 1'h0 : io_wreq_bits_data_8; // @[SRAMTemplate.scala 126:26]
  assign array_RW0_wdata_9 = resetState ? 1'h0 : io_wreq_bits_data_9; // @[SRAMTemplate.scala 126:26]
  assign array_RW0_wdata_10 = resetState ? 1'h0 : io_wreq_bits_data_10; // @[SRAMTemplate.scala 126:26]
  assign array_RW0_wdata_11 = resetState ? 1'h0 : io_wreq_bits_data_11; // @[SRAMTemplate.scala 126:26]
  assign array_RW0_wdata_12 = resetState ? 1'h0 : io_wreq_bits_data_12; // @[SRAMTemplate.scala 126:26]
  assign array_RW0_wdata_13 = resetState ? 1'h0 : io_wreq_bits_data_13; // @[SRAMTemplate.scala 126:26]
  assign array_RW0_wdata_14 = resetState ? 1'h0 : io_wreq_bits_data_14; // @[SRAMTemplate.scala 126:26]
  assign array_RW0_wdata_15 = resetState ? 1'h0 : io_wreq_bits_data_15; // @[SRAMTemplate.scala 126:26]
  assign array_RW0_wmask_0 = waymask[0]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_wmask_1 = waymask[1]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_wmask_2 = waymask[2]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_wmask_3 = waymask[3]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_wmask_4 = waymask[4]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_wmask_5 = waymask[5]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_wmask_6 = waymask[6]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_wmask_7 = waymask[7]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_wmask_8 = waymask[8]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_wmask_9 = waymask[9]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_wmask_10 = waymask[10]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_wmask_11 = waymask[11]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_wmask_12 = waymask[12]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_wmask_13 = waymask[13]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_wmask_14 = waymask[14]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_wmask_15 = waymask[15]; // @[SRAMTemplate.scala 128:51]
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
    if (rdata_REG) begin // @[Reg.scala 17:18]
      rdata_hold_data_2 <= array_RW0_rdata_2; // @[Reg.scala 17:22]
    end
    if (rdata_REG) begin // @[Reg.scala 17:18]
      rdata_hold_data_3 <= array_RW0_rdata_3; // @[Reg.scala 17:22]
    end
    if (rdata_REG) begin // @[Reg.scala 17:18]
      rdata_hold_data_4 <= array_RW0_rdata_4; // @[Reg.scala 17:22]
    end
    if (rdata_REG) begin // @[Reg.scala 17:18]
      rdata_hold_data_5 <= array_RW0_rdata_5; // @[Reg.scala 17:22]
    end
    if (rdata_REG) begin // @[Reg.scala 17:18]
      rdata_hold_data_6 <= array_RW0_rdata_6; // @[Reg.scala 17:22]
    end
    if (rdata_REG) begin // @[Reg.scala 17:18]
      rdata_hold_data_7 <= array_RW0_rdata_7; // @[Reg.scala 17:22]
    end
    if (rdata_REG) begin // @[Reg.scala 17:18]
      rdata_hold_data_8 <= array_RW0_rdata_8; // @[Reg.scala 17:22]
    end
    if (rdata_REG) begin // @[Reg.scala 17:18]
      rdata_hold_data_9 <= array_RW0_rdata_9; // @[Reg.scala 17:22]
    end
    if (rdata_REG) begin // @[Reg.scala 17:18]
      rdata_hold_data_10 <= array_RW0_rdata_10; // @[Reg.scala 17:22]
    end
    if (rdata_REG) begin // @[Reg.scala 17:18]
      rdata_hold_data_11 <= array_RW0_rdata_11; // @[Reg.scala 17:22]
    end
    if (rdata_REG) begin // @[Reg.scala 17:18]
      rdata_hold_data_12 <= array_RW0_rdata_12; // @[Reg.scala 17:22]
    end
    if (rdata_REG) begin // @[Reg.scala 17:18]
      rdata_hold_data_13 <= array_RW0_rdata_13; // @[Reg.scala 17:22]
    end
    if (rdata_REG) begin // @[Reg.scala 17:18]
      rdata_hold_data_14 <= array_RW0_rdata_14; // @[Reg.scala 17:22]
    end
    if (rdata_REG) begin // @[Reg.scala 17:18]
      rdata_hold_data_15 <= array_RW0_rdata_15; // @[Reg.scala 17:22]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SRAMTemplate.scala 113:30]
      resetState <= 1'h1; // @[SRAMTemplate.scala 114:21]
    end else begin
      resetState <= extra_reset | _GEN_2;
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
  rdata_hold_data_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  rdata_hold_data_1 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  rdata_hold_data_2 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  rdata_hold_data_3 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  rdata_hold_data_4 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  rdata_hold_data_5 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  rdata_hold_data_6 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  rdata_hold_data_7 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  rdata_hold_data_8 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  rdata_hold_data_9 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  rdata_hold_data_10 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  rdata_hold_data_11 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  rdata_hold_data_12 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  rdata_hold_data_13 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  rdata_hold_data_14 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  rdata_hold_data_15 = _RAND_18[0:0];
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

