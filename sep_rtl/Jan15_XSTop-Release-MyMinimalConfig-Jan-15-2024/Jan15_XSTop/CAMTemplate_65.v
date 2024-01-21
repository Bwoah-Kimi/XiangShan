module CAMTemplate_65(
  input        clock,
  input  [7:0] io_rreq_0_idx,
  output       io_rresp_0_0,
  output       io_rresp_0_1,
  output       io_rresp_0_2,
  output       io_rresp_0_3,
  output       io_rresp_0_4,
  output       io_rresp_0_5,
  output       io_rresp_0_6,
  output       io_rresp_0_7,
  output       io_rresp_0_8,
  output       io_rresp_0_9,
  output       io_rresp_0_10,
  output       io_rresp_0_11,
  output       io_rresp_0_12,
  output       io_rresp_0_13,
  output       io_rresp_0_14,
  output       io_rresp_0_15,
  input        io_wvalid,
  input  [7:0] io_wdata_idx,
  input  [3:0] io_windex
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
`endif // RANDOMIZE_REG_INIT
  reg [7:0] array_0; // @[MMUBundle.scala 164:18]
  reg [7:0] array_1; // @[MMUBundle.scala 164:18]
  reg [7:0] array_2; // @[MMUBundle.scala 164:18]
  reg [7:0] array_3; // @[MMUBundle.scala 164:18]
  reg [7:0] array_4; // @[MMUBundle.scala 164:18]
  reg [7:0] array_5; // @[MMUBundle.scala 164:18]
  reg [7:0] array_6; // @[MMUBundle.scala 164:18]
  reg [7:0] array_7; // @[MMUBundle.scala 164:18]
  reg [7:0] array_8; // @[MMUBundle.scala 164:18]
  reg [7:0] array_9; // @[MMUBundle.scala 164:18]
  reg [7:0] array_10; // @[MMUBundle.scala 164:18]
  reg [7:0] array_11; // @[MMUBundle.scala 164:18]
  reg [7:0] array_12; // @[MMUBundle.scala 164:18]
  reg [7:0] array_13; // @[MMUBundle.scala 164:18]
  reg [7:0] array_14; // @[MMUBundle.scala 164:18]
  reg [7:0] array_15; // @[MMUBundle.scala 164:18]
  assign io_rresp_0_0 = io_rreq_0_idx == array_0; // @[MMUBundle.scala 167:39]
  assign io_rresp_0_1 = io_rreq_0_idx == array_1; // @[MMUBundle.scala 167:39]
  assign io_rresp_0_2 = io_rreq_0_idx == array_2; // @[MMUBundle.scala 167:39]
  assign io_rresp_0_3 = io_rreq_0_idx == array_3; // @[MMUBundle.scala 167:39]
  assign io_rresp_0_4 = io_rreq_0_idx == array_4; // @[MMUBundle.scala 167:39]
  assign io_rresp_0_5 = io_rreq_0_idx == array_5; // @[MMUBundle.scala 167:39]
  assign io_rresp_0_6 = io_rreq_0_idx == array_6; // @[MMUBundle.scala 167:39]
  assign io_rresp_0_7 = io_rreq_0_idx == array_7; // @[MMUBundle.scala 167:39]
  assign io_rresp_0_8 = io_rreq_0_idx == array_8; // @[MMUBundle.scala 167:39]
  assign io_rresp_0_9 = io_rreq_0_idx == array_9; // @[MMUBundle.scala 167:39]
  assign io_rresp_0_10 = io_rreq_0_idx == array_10; // @[MMUBundle.scala 167:39]
  assign io_rresp_0_11 = io_rreq_0_idx == array_11; // @[MMUBundle.scala 167:39]
  assign io_rresp_0_12 = io_rreq_0_idx == array_12; // @[MMUBundle.scala 167:39]
  assign io_rresp_0_13 = io_rreq_0_idx == array_13; // @[MMUBundle.scala 167:39]
  assign io_rresp_0_14 = io_rreq_0_idx == array_14; // @[MMUBundle.scala 167:39]
  assign io_rresp_0_15 = io_rreq_0_idx == array_15; // @[MMUBundle.scala 167:39]
  always @(posedge clock) begin
    if (io_wvalid) begin // @[MMUBundle.scala 170:21]
      if (4'h0 == io_windex) begin // @[MMUBundle.scala 171:28]
        array_0 <= io_wdata_idx; // @[MMUBundle.scala 171:28]
      end
    end
    if (io_wvalid) begin // @[MMUBundle.scala 170:21]
      if (4'h1 == io_windex) begin // @[MMUBundle.scala 171:28]
        array_1 <= io_wdata_idx; // @[MMUBundle.scala 171:28]
      end
    end
    if (io_wvalid) begin // @[MMUBundle.scala 170:21]
      if (4'h2 == io_windex) begin // @[MMUBundle.scala 171:28]
        array_2 <= io_wdata_idx; // @[MMUBundle.scala 171:28]
      end
    end
    if (io_wvalid) begin // @[MMUBundle.scala 170:21]
      if (4'h3 == io_windex) begin // @[MMUBundle.scala 171:28]
        array_3 <= io_wdata_idx; // @[MMUBundle.scala 171:28]
      end
    end
    if (io_wvalid) begin // @[MMUBundle.scala 170:21]
      if (4'h4 == io_windex) begin // @[MMUBundle.scala 171:28]
        array_4 <= io_wdata_idx; // @[MMUBundle.scala 171:28]
      end
    end
    if (io_wvalid) begin // @[MMUBundle.scala 170:21]
      if (4'h5 == io_windex) begin // @[MMUBundle.scala 171:28]
        array_5 <= io_wdata_idx; // @[MMUBundle.scala 171:28]
      end
    end
    if (io_wvalid) begin // @[MMUBundle.scala 170:21]
      if (4'h6 == io_windex) begin // @[MMUBundle.scala 171:28]
        array_6 <= io_wdata_idx; // @[MMUBundle.scala 171:28]
      end
    end
    if (io_wvalid) begin // @[MMUBundle.scala 170:21]
      if (4'h7 == io_windex) begin // @[MMUBundle.scala 171:28]
        array_7 <= io_wdata_idx; // @[MMUBundle.scala 171:28]
      end
    end
    if (io_wvalid) begin // @[MMUBundle.scala 170:21]
      if (4'h8 == io_windex) begin // @[MMUBundle.scala 171:28]
        array_8 <= io_wdata_idx; // @[MMUBundle.scala 171:28]
      end
    end
    if (io_wvalid) begin // @[MMUBundle.scala 170:21]
      if (4'h9 == io_windex) begin // @[MMUBundle.scala 171:28]
        array_9 <= io_wdata_idx; // @[MMUBundle.scala 171:28]
      end
    end
    if (io_wvalid) begin // @[MMUBundle.scala 170:21]
      if (4'ha == io_windex) begin // @[MMUBundle.scala 171:28]
        array_10 <= io_wdata_idx; // @[MMUBundle.scala 171:28]
      end
    end
    if (io_wvalid) begin // @[MMUBundle.scala 170:21]
      if (4'hb == io_windex) begin // @[MMUBundle.scala 171:28]
        array_11 <= io_wdata_idx; // @[MMUBundle.scala 171:28]
      end
    end
    if (io_wvalid) begin // @[MMUBundle.scala 170:21]
      if (4'hc == io_windex) begin // @[MMUBundle.scala 171:28]
        array_12 <= io_wdata_idx; // @[MMUBundle.scala 171:28]
      end
    end
    if (io_wvalid) begin // @[MMUBundle.scala 170:21]
      if (4'hd == io_windex) begin // @[MMUBundle.scala 171:28]
        array_13 <= io_wdata_idx; // @[MMUBundle.scala 171:28]
      end
    end
    if (io_wvalid) begin // @[MMUBundle.scala 170:21]
      if (4'he == io_windex) begin // @[MMUBundle.scala 171:28]
        array_14 <= io_wdata_idx; // @[MMUBundle.scala 171:28]
      end
    end
    if (io_wvalid) begin // @[MMUBundle.scala 170:21]
      if (4'hf == io_windex) begin // @[MMUBundle.scala 171:28]
        array_15 <= io_wdata_idx; // @[MMUBundle.scala 171:28]
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
  array_0 = _RAND_0[7:0];
  _RAND_1 = {1{`RANDOM}};
  array_1 = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  array_2 = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  array_3 = _RAND_3[7:0];
  _RAND_4 = {1{`RANDOM}};
  array_4 = _RAND_4[7:0];
  _RAND_5 = {1{`RANDOM}};
  array_5 = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  array_6 = _RAND_6[7:0];
  _RAND_7 = {1{`RANDOM}};
  array_7 = _RAND_7[7:0];
  _RAND_8 = {1{`RANDOM}};
  array_8 = _RAND_8[7:0];
  _RAND_9 = {1{`RANDOM}};
  array_9 = _RAND_9[7:0];
  _RAND_10 = {1{`RANDOM}};
  array_10 = _RAND_10[7:0];
  _RAND_11 = {1{`RANDOM}};
  array_11 = _RAND_11[7:0];
  _RAND_12 = {1{`RANDOM}};
  array_12 = _RAND_12[7:0];
  _RAND_13 = {1{`RANDOM}};
  array_13 = _RAND_13[7:0];
  _RAND_14 = {1{`RANDOM}};
  array_14 = _RAND_14[7:0];
  _RAND_15 = {1{`RANDOM}};
  array_15 = _RAND_15[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

