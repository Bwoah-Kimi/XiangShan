module SRAMTemplate_53(
  input         clock,
  input         reset,
  input         io_rreq_valid,
  input  [10:0] io_rreq_bits_setIdx,
  output [1:0]  io_rresp_data_0,
  output [1:0]  io_rresp_data_1,
  input         io_wreq_valid,
  input  [10:0] io_wreq_bits_setIdx,
  input  [1:0]  io_wreq_bits_data_0,
  input  [1:0]  io_wreq_bits_data_1,
  input  [1:0]  io_wreq_bits_waymask
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
`endif // RANDOMIZE_REG_INIT
  wire [10:0] array_R0_addr; // @[SRAMTemplate.scala 105:26]
  wire  array_R0_en; // @[SRAMTemplate.scala 105:26]
  wire  array_R0_clk; // @[SRAMTemplate.scala 105:26]
  wire [1:0] array_R0_data_0; // @[SRAMTemplate.scala 105:26]
  wire [1:0] array_R0_data_1; // @[SRAMTemplate.scala 105:26]
  wire [10:0] array_W0_addr; // @[SRAMTemplate.scala 105:26]
  wire  array_W0_en; // @[SRAMTemplate.scala 105:26]
  wire  array_W0_clk; // @[SRAMTemplate.scala 105:26]
  wire [1:0] array_W0_data_0; // @[SRAMTemplate.scala 105:26]
  wire [1:0] array_W0_data_1; // @[SRAMTemplate.scala 105:26]
  wire  array_W0_mask_0; // @[SRAMTemplate.scala 105:26]
  wire  array_W0_mask_1; // @[SRAMTemplate.scala 105:26]
  reg  resetState; // @[SRAMTemplate.scala 109:30]
  reg [10:0] resetSet; // @[Counter.scala 62:40]
  wire  wrap_wrap = resetSet == 11'h7ff; // @[Counter.scala 74:24]
  wire [10:0] _wrap_value_T_1 = resetSet + 11'h1; // @[Counter.scala 78:24]
  wire  resetFinish = resetState & wrap_wrap; // @[Counter.scala 120:{16,23}]
  wire [1:0] waymask = resetState ? 2'h3 : io_wreq_bits_waymask; // @[SRAMTemplate.scala 127:20]
  reg [1:0] bypass_wdata_REG_0; // @[SRAMTemplate.scala 142:54]
  reg [1:0] bypass_wdata_REG_1; // @[SRAMTemplate.scala 142:54]
  reg  bypass_mask_need_check; // @[SRAMTemplate.scala 135:29]
  reg [10:0] bypass_mask_waddr_reg; // @[SRAMTemplate.scala 136:28]
  reg [10:0] bypass_mask_raddr_reg; // @[SRAMTemplate.scala 137:28]
  wire  _bypass_mask_bypass_T_1 = bypass_mask_need_check & bypass_mask_waddr_reg == bypass_mask_raddr_reg; // @[SRAMTemplate.scala 139:39]
  wire [1:0] _bypass_mask_bypass_T_3 = _bypass_mask_bypass_T_1 ? 2'h3 : 2'h0; // @[Bitwise.scala 74:12]
  reg [1:0] bypass_mask_bypass_REG; // @[SRAMTemplate.scala 139:76]
  wire [1:0] bypass_mask_bypass = _bypass_mask_bypass_T_3 & bypass_mask_bypass_REG; // @[SRAMTemplate.scala 139:67]
  wire [1:0] mem_rdata_0 = bypass_mask_bypass[0] ? bypass_wdata_REG_0 : array_R0_data_0; // @[SRAMTemplate.scala 148:30]
  wire [1:0] mem_rdata_1 = bypass_mask_bypass[1] ? bypass_wdata_REG_1 : array_R0_data_1; // @[SRAMTemplate.scala 148:30]
  reg  rdata_REG; // @[SRAMTemplate.scala 153:59]
  reg [1:0] rdata_hold_data_0; // @[Reg.scala 16:16]
  reg [1:0] rdata_hold_data_1; // @[Reg.scala 16:16]
  array_6 array ( // @[SRAMTemplate.scala 105:26]
    .R0_addr(array_R0_addr),
    .R0_en(array_R0_en),
    .R0_clk(array_R0_clk),
    .R0_data_0(array_R0_data_0),
    .R0_data_1(array_R0_data_1),
    .W0_addr(array_W0_addr),
    .W0_en(array_W0_en),
    .W0_clk(array_W0_clk),
    .W0_data_0(array_W0_data_0),
    .W0_data_1(array_W0_data_1),
    .W0_mask_0(array_W0_mask_0),
    .W0_mask_1(array_W0_mask_1)
  );
  assign io_rresp_data_0 = rdata_REG ? mem_rdata_0 : rdata_hold_data_0; // @[Hold.scala 25:8]
  assign io_rresp_data_1 = rdata_REG ? mem_rdata_1 : rdata_hold_data_1; // @[Hold.scala 25:8]
  assign array_R0_addr = io_rreq_bits_setIdx; // @[SRAMTemplate.scala 130:29]
  assign array_R0_en = io_rreq_valid; // @[SRAMTemplate.scala 105:26 130:{29,29}]
  assign array_R0_clk = clock; // @[SRAMTemplate.scala 130:{29,29}]
  assign array_W0_addr = resetState ? resetSet : io_wreq_bits_setIdx; // @[SRAMTemplate.scala 125:19]
  assign array_W0_en = io_wreq_valid | resetState; // @[SRAMTemplate.scala 122:52]
  assign array_W0_clk = clock; // @[SRAMTemplate.scala 128:14]
  assign array_W0_data_0 = resetState ? 2'h0 : io_wreq_bits_data_0; // @[SRAMTemplate.scala 126:26]
  assign array_W0_data_1 = resetState ? 2'h0 : io_wreq_bits_data_1; // @[SRAMTemplate.scala 126:26]
  assign array_W0_mask_0 = waymask[0]; // @[SRAMTemplate.scala 128:51]
  assign array_W0_mask_1 = waymask[1]; // @[SRAMTemplate.scala 128:51]
  always @(posedge clock) begin
    bypass_wdata_REG_0 <= io_wreq_bits_data_0; // @[SRAMTemplate.scala 142:54]
    bypass_wdata_REG_1 <= io_wreq_bits_data_1; // @[SRAMTemplate.scala 142:54]
    bypass_mask_need_check <= io_rreq_valid & io_wreq_valid; // @[SRAMTemplate.scala 135:34]
    bypass_mask_waddr_reg <= io_wreq_bits_setIdx; // @[SRAMTemplate.scala 136:28]
    bypass_mask_raddr_reg <= io_rreq_bits_setIdx; // @[SRAMTemplate.scala 137:28]
    bypass_mask_bypass_REG <= io_wreq_bits_waymask; // @[SRAMTemplate.scala 139:76]
    rdata_REG <= io_rreq_valid; // @[SRAMTemplate.scala 153:59]
    if (rdata_REG) begin // @[Reg.scala 17:18]
      if (bypass_mask_bypass[0]) begin // @[SRAMTemplate.scala 148:30]
        rdata_hold_data_0 <= bypass_wdata_REG_0;
      end else begin
        rdata_hold_data_0 <= array_R0_data_0;
      end
    end
    if (rdata_REG) begin // @[Reg.scala 17:18]
      if (bypass_mask_bypass[1]) begin // @[SRAMTemplate.scala 148:30]
        rdata_hold_data_1 <= bypass_wdata_REG_1;
      end else begin
        rdata_hold_data_1 <= array_R0_data_1;
      end
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
      resetSet <= 11'h0; // @[Counter.scala 78:15]
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
  resetSet = _RAND_1[10:0];
  _RAND_2 = {1{`RANDOM}};
  bypass_wdata_REG_0 = _RAND_2[1:0];
  _RAND_3 = {1{`RANDOM}};
  bypass_wdata_REG_1 = _RAND_3[1:0];
  _RAND_4 = {1{`RANDOM}};
  bypass_mask_need_check = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  bypass_mask_waddr_reg = _RAND_5[10:0];
  _RAND_6 = {1{`RANDOM}};
  bypass_mask_raddr_reg = _RAND_6[10:0];
  _RAND_7 = {1{`RANDOM}};
  bypass_mask_bypass_REG = _RAND_7[1:0];
  _RAND_8 = {1{`RANDOM}};
  rdata_REG = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  rdata_hold_data_0 = _RAND_9[1:0];
  _RAND_10 = {1{`RANDOM}};
  rdata_hold_data_1 = _RAND_10[1:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    resetState = 1'h1;
  end
  if (reset) begin
    resetSet = 11'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

