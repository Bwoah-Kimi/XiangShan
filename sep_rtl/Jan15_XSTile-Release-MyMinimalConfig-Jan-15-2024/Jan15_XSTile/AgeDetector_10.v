module AgeDetector_10(
  input        clock,
  input        reset,
  input  [3:0] io_enq_0,
  input  [3:0] io_enq_1,
  input  [3:0] io_deq,
  input  [3:0] io_ready,
  output [3:0] io_out
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
`endif // RANDOMIZE_REG_INIT
  reg  age_0_0; // @[LoadQueueReplay.scala 81:62]
  reg  age_0_1; // @[LoadQueueReplay.scala 81:62]
  reg  age_0_2; // @[LoadQueueReplay.scala 81:62]
  reg  age_0_3; // @[LoadQueueReplay.scala 81:62]
  reg  age_1_1; // @[LoadQueueReplay.scala 81:62]
  reg  age_1_2; // @[LoadQueueReplay.scala 81:62]
  reg  age_1_3; // @[LoadQueueReplay.scala 81:62]
  reg  age_2_2; // @[LoadQueueReplay.scala 81:62]
  reg  age_2_3; // @[LoadQueueReplay.scala 81:62]
  reg  age_3_3; // @[LoadQueueReplay.scala 81:62]
  wire [1:0] _thisValid_T_2 = {io_enq_1[0],io_enq_0[0]}; // @[LoadQueueReplay.scala 93:51]
  wire  _thisValid_T_5 = ~io_deq[0]; // @[LoadQueueReplay.scala 93:65]
  wire  _thisValid_T_6 = |_thisValid_T_2 & ~io_deq[0]; // @[LoadQueueReplay.scala 93:62]
  wire  thisValid = age_0_0 | _thisValid_T_6; // @[LoadQueueReplay.scala 98:35]
  wire  result_1 = io_enq_0[0] & _thisValid_T_5; // @[LoadQueueReplay.scala 92:32]
  wire  nextAge_0_0_xs_1 = io_enq_1[0] & result_1; // @[ParallelMux.scala 64:44]
  wire  _result_T_5 = ~io_deq[1]; // @[LoadQueueReplay.scala 92:35]
  wire  result_1_1 = io_enq_0[1] & ~io_deq[1]; // @[LoadQueueReplay.scala 92:32]
  wire  nextAge_0_1_xs_1 = io_enq_1[0] & result_1_1; // @[ParallelMux.scala 64:44]
  wire  _result_T_8 = ~io_deq[2]; // @[LoadQueueReplay.scala 92:35]
  wire  result_1_2 = io_enq_0[2] & ~io_deq[2]; // @[LoadQueueReplay.scala 92:32]
  wire  nextAge_0_2_xs_1 = io_enq_1[0] & result_1_2; // @[ParallelMux.scala 64:44]
  wire  _result_T_11 = ~io_deq[3]; // @[LoadQueueReplay.scala 92:35]
  wire  result_1_3 = io_enq_0[3] & ~io_deq[3]; // @[LoadQueueReplay.scala 92:32]
  wire  nextAge_0_3_xs_1 = io_enq_1[0] & result_1_3; // @[ParallelMux.scala 64:44]
  wire [1:0] _thisValid_T_9 = {io_enq_1[1],io_enq_0[1]}; // @[LoadQueueReplay.scala 93:51]
  wire  _thisValid_T_13 = |_thisValid_T_9 & _result_T_5; // @[LoadQueueReplay.scala 93:62]
  wire  thisValid_1 = age_1_1 | _thisValid_T_13; // @[LoadQueueReplay.scala 98:35]
  wire  _nextAge_1_0_T_4 = ~age_0_1; // @[LoadQueueReplay.scala 85:78]
  wire  nextAge_1_1_xs_1 = io_enq_1[1] & result_1_1; // @[ParallelMux.scala 64:44]
  wire  nextAge_1_2_xs_1 = io_enq_1[1] & result_1_2; // @[ParallelMux.scala 64:44]
  wire  nextAge_1_3_xs_1 = io_enq_1[1] & result_1_3; // @[ParallelMux.scala 64:44]
  wire [1:0] _thisValid_T_16 = {io_enq_1[2],io_enq_0[2]}; // @[LoadQueueReplay.scala 93:51]
  wire  _thisValid_T_20 = |_thisValid_T_16 & _result_T_8; // @[LoadQueueReplay.scala 93:62]
  wire  thisValid_2 = age_2_2 | _thisValid_T_20; // @[LoadQueueReplay.scala 98:35]
  wire  _nextAge_2_0_T_4 = ~age_0_2; // @[LoadQueueReplay.scala 85:78]
  wire  _nextAge_2_1_T_4 = ~age_1_2; // @[LoadQueueReplay.scala 85:78]
  wire  nextAge_2_2_xs_1 = io_enq_1[2] & result_1_2; // @[ParallelMux.scala 64:44]
  wire  nextAge_2_3_xs_1 = io_enq_1[2] & result_1_3; // @[ParallelMux.scala 64:44]
  wire [1:0] _thisValid_T_23 = {io_enq_1[3],io_enq_0[3]}; // @[LoadQueueReplay.scala 93:51]
  wire  _thisValid_T_27 = |_thisValid_T_23 & _result_T_11; // @[LoadQueueReplay.scala 93:62]
  wire  thisValid_3 = age_3_3 | _thisValid_T_27; // @[LoadQueueReplay.scala 98:35]
  wire  _nextAge_3_0_T_4 = ~age_0_3; // @[LoadQueueReplay.scala 85:78]
  wire  _nextAge_3_1_T_4 = ~age_1_3; // @[LoadQueueReplay.scala 85:78]
  wire  _nextAge_3_2_T_4 = ~age_2_3; // @[LoadQueueReplay.scala 85:78]
  wire  nextAge_3_3_xs_1 = io_enq_1[3] & result_1_3; // @[ParallelMux.scala 64:44]
  wire  _best_T_3 = ~io_ready[1] | age_0_1; // @[LoadQueueReplay.scala 125:84]
  wire  _best_T_6 = ~io_ready[2] | age_0_2; // @[LoadQueueReplay.scala 125:84]
  wire  _best_T_9 = ~io_ready[3] | age_0_3; // @[LoadQueueReplay.scala 125:84]
  wire [3:0] _best_T_10 = {_best_T_9,_best_T_6,_best_T_3,1'h1}; // @[LoadQueueReplay.scala 125:111]
  wire  _best_T_12 = io_ready[0] & &_best_T_10; // @[LoadQueueReplay.scala 125:19]
  wire  _best_T_17 = ~io_ready[0] | _nextAge_1_0_T_4; // @[LoadQueueReplay.scala 125:84]
  wire  _best_T_20 = ~io_ready[2] | age_1_2; // @[LoadQueueReplay.scala 125:84]
  wire  _best_T_23 = ~io_ready[3] | age_1_3; // @[LoadQueueReplay.scala 125:84]
  wire [3:0] _best_T_24 = {_best_T_23,_best_T_20,1'h1,_best_T_17}; // @[LoadQueueReplay.scala 125:111]
  wire  _best_T_26 = io_ready[1] & &_best_T_24; // @[LoadQueueReplay.scala 125:19]
  wire  _best_T_31 = ~io_ready[0] | _nextAge_2_0_T_4; // @[LoadQueueReplay.scala 125:84]
  wire  _best_T_35 = ~io_ready[1] | _nextAge_2_1_T_4; // @[LoadQueueReplay.scala 125:84]
  wire  _best_T_38 = ~io_ready[3] | age_2_3; // @[LoadQueueReplay.scala 125:84]
  wire [3:0] _best_T_39 = {_best_T_38,1'h1,_best_T_35,_best_T_31}; // @[LoadQueueReplay.scala 125:111]
  wire  _best_T_41 = io_ready[2] & &_best_T_39; // @[LoadQueueReplay.scala 125:19]
  wire  _best_T_46 = ~io_ready[0] | _nextAge_3_0_T_4; // @[LoadQueueReplay.scala 125:84]
  wire  _best_T_50 = ~io_ready[1] | _nextAge_3_1_T_4; // @[LoadQueueReplay.scala 125:84]
  wire  _best_T_54 = ~io_ready[2] | _nextAge_3_2_T_4; // @[LoadQueueReplay.scala 125:84]
  wire [3:0] _best_T_55 = {1'h1,_best_T_54,_best_T_50,_best_T_46}; // @[LoadQueueReplay.scala 125:111]
  wire  _best_T_57 = io_ready[3] & &_best_T_55; // @[LoadQueueReplay.scala 125:19]
  wire [1:0] best_lo_4 = {_best_T_26,_best_T_12}; // @[LoadQueueReplay.scala 126:9]
  wire [1:0] best_hi_4 = {_best_T_57,_best_T_41}; // @[LoadQueueReplay.scala 126:9]
  assign io_out = {best_hi_4,best_lo_4}; // @[LoadQueueReplay.scala 126:9]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 100:27]
      age_0_0 <= 1'h0; // @[LoadQueueReplay.scala 102:14]
    end else if (io_deq[0]) begin // @[LoadQueueReplay.scala 103:33]
      age_0_0 <= 1'h0; // @[LoadQueueReplay.scala 105:14]
    end else if (io_deq[0]) begin // @[LoadQueueReplay.scala 106:34]
      age_0_0 <= thisValid; // @[LoadQueueReplay.scala 114:14]
    end else if (_thisValid_T_6) begin // @[LoadQueueReplay.scala 117:14]
      age_0_0 <= ~age_0_0 & ~nextAge_0_0_xs_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 100:27]
      age_0_1 <= 1'h0; // @[LoadQueueReplay.scala 102:14]
    end else if (io_deq[0]) begin // @[LoadQueueReplay.scala 103:33]
      age_0_1 <= 1'h0; // @[LoadQueueReplay.scala 105:14]
    end else if (io_deq[1]) begin // @[LoadQueueReplay.scala 106:34]
      age_0_1 <= thisValid; // @[LoadQueueReplay.scala 114:14]
    end else if (_thisValid_T_6) begin // @[LoadQueueReplay.scala 117:14]
      age_0_1 <= ~age_1_1 & ~nextAge_0_1_xs_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 100:27]
      age_0_2 <= 1'h0; // @[LoadQueueReplay.scala 102:14]
    end else if (io_deq[0]) begin // @[LoadQueueReplay.scala 103:33]
      age_0_2 <= 1'h0; // @[LoadQueueReplay.scala 105:14]
    end else if (io_deq[2]) begin // @[LoadQueueReplay.scala 106:34]
      age_0_2 <= thisValid; // @[LoadQueueReplay.scala 114:14]
    end else if (_thisValid_T_6) begin // @[LoadQueueReplay.scala 117:14]
      age_0_2 <= ~age_2_2 & ~nextAge_0_2_xs_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 100:27]
      age_0_3 <= 1'h0; // @[LoadQueueReplay.scala 102:14]
    end else if (io_deq[0]) begin // @[LoadQueueReplay.scala 103:33]
      age_0_3 <= 1'h0; // @[LoadQueueReplay.scala 105:14]
    end else if (io_deq[3]) begin // @[LoadQueueReplay.scala 106:34]
      age_0_3 <= thisValid; // @[LoadQueueReplay.scala 114:14]
    end else if (_thisValid_T_6) begin // @[LoadQueueReplay.scala 117:14]
      age_0_3 <= ~age_3_3 & ~nextAge_0_3_xs_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 100:27]
      age_1_1 <= 1'h0; // @[LoadQueueReplay.scala 102:14]
    end else if (io_deq[1]) begin // @[LoadQueueReplay.scala 103:33]
      age_1_1 <= 1'h0; // @[LoadQueueReplay.scala 105:14]
    end else if (io_deq[1]) begin // @[LoadQueueReplay.scala 106:34]
      age_1_1 <= thisValid_1; // @[LoadQueueReplay.scala 114:14]
    end else if (_thisValid_T_13) begin // @[LoadQueueReplay.scala 117:14]
      age_1_1 <= ~age_1_1 & ~nextAge_1_1_xs_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 100:27]
      age_1_2 <= 1'h0; // @[LoadQueueReplay.scala 102:14]
    end else if (io_deq[1]) begin // @[LoadQueueReplay.scala 103:33]
      age_1_2 <= 1'h0; // @[LoadQueueReplay.scala 105:14]
    end else if (io_deq[2]) begin // @[LoadQueueReplay.scala 106:34]
      age_1_2 <= thisValid_1; // @[LoadQueueReplay.scala 114:14]
    end else if (_thisValid_T_13) begin // @[LoadQueueReplay.scala 117:14]
      age_1_2 <= ~age_2_2 & ~nextAge_1_2_xs_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 100:27]
      age_1_3 <= 1'h0; // @[LoadQueueReplay.scala 102:14]
    end else if (io_deq[1]) begin // @[LoadQueueReplay.scala 103:33]
      age_1_3 <= 1'h0; // @[LoadQueueReplay.scala 105:14]
    end else if (io_deq[3]) begin // @[LoadQueueReplay.scala 106:34]
      age_1_3 <= thisValid_1; // @[LoadQueueReplay.scala 114:14]
    end else if (_thisValid_T_13) begin // @[LoadQueueReplay.scala 117:14]
      age_1_3 <= ~age_3_3 & ~nextAge_1_3_xs_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 100:27]
      age_2_2 <= 1'h0; // @[LoadQueueReplay.scala 102:14]
    end else if (io_deq[2]) begin // @[LoadQueueReplay.scala 103:33]
      age_2_2 <= 1'h0; // @[LoadQueueReplay.scala 105:14]
    end else if (io_deq[2]) begin // @[LoadQueueReplay.scala 106:34]
      age_2_2 <= thisValid_2; // @[LoadQueueReplay.scala 114:14]
    end else if (_thisValid_T_20) begin // @[LoadQueueReplay.scala 117:14]
      age_2_2 <= ~age_2_2 & ~nextAge_2_2_xs_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 100:27]
      age_2_3 <= 1'h0; // @[LoadQueueReplay.scala 102:14]
    end else if (io_deq[2]) begin // @[LoadQueueReplay.scala 103:33]
      age_2_3 <= 1'h0; // @[LoadQueueReplay.scala 105:14]
    end else if (io_deq[3]) begin // @[LoadQueueReplay.scala 106:34]
      age_2_3 <= thisValid_2; // @[LoadQueueReplay.scala 114:14]
    end else if (_thisValid_T_20) begin // @[LoadQueueReplay.scala 117:14]
      age_2_3 <= ~age_3_3 & ~nextAge_2_3_xs_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadQueueReplay.scala 100:27]
      age_3_3 <= 1'h0; // @[LoadQueueReplay.scala 102:14]
    end else if (io_deq[3]) begin // @[LoadQueueReplay.scala 103:33]
      age_3_3 <= 1'h0; // @[LoadQueueReplay.scala 105:14]
    end else if (io_deq[3]) begin // @[LoadQueueReplay.scala 106:34]
      age_3_3 <= thisValid_3; // @[LoadQueueReplay.scala 114:14]
    end else if (_thisValid_T_27) begin // @[LoadQueueReplay.scala 117:14]
      age_3_3 <= ~age_3_3 & ~nextAge_3_3_xs_1;
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
  age_0_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  age_0_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  age_0_2 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  age_0_3 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  age_1_1 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  age_1_2 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  age_1_3 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  age_2_2 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  age_2_3 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  age_3_3 = _RAND_9[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    age_0_0 = 1'h0;
  end
  if (reset) begin
    age_0_1 = 1'h0;
  end
  if (reset) begin
    age_0_2 = 1'h0;
  end
  if (reset) begin
    age_0_3 = 1'h0;
  end
  if (reset) begin
    age_1_1 = 1'h0;
  end
  if (reset) begin
    age_1_2 = 1'h0;
  end
  if (reset) begin
    age_1_3 = 1'h0;
  end
  if (reset) begin
    age_2_2 = 1'h0;
  end
  if (reset) begin
    age_2_3 = 1'h0;
  end
  if (reset) begin
    age_3_3 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

