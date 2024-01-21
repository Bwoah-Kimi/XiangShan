module AgeDetector_6(
  input        clock,
  input        reset,
  input  [3:0] io_enq_0,
  input  [3:0] io_deq,
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
  reg  age_0_0; // @[SelectPolicy.scala 115:62]
  reg  age_0_1; // @[SelectPolicy.scala 115:62]
  reg  age_0_2; // @[SelectPolicy.scala 115:62]
  reg  age_0_3; // @[SelectPolicy.scala 115:62]
  reg  age_1_1; // @[SelectPolicy.scala 115:62]
  reg  age_1_2; // @[SelectPolicy.scala 115:62]
  reg  age_1_3; // @[SelectPolicy.scala 115:62]
  reg  age_2_2; // @[SelectPolicy.scala 115:62]
  reg  age_2_3; // @[SelectPolicy.scala 115:62]
  reg  age_3_3; // @[SelectPolicy.scala 115:62]
  wire  _thisValid_T_3 = io_enq_0[0] & ~io_deq[0]; // @[SelectPolicy.scala 126:32]
  wire  thisValid = age_0_0 | _thisValid_T_3; // @[SelectPolicy.scala 132:35]
  wire  _thisValid_T_7 = io_enq_0[1] & ~io_deq[1]; // @[SelectPolicy.scala 126:32]
  wire  thisValid_1 = age_1_1 | _thisValid_T_7; // @[SelectPolicy.scala 132:35]
  wire  _nextAge_1_0_T_3 = ~age_0_1; // @[SelectPolicy.scala 119:78]
  wire  _thisValid_T_11 = io_enq_0[2] & ~io_deq[2]; // @[SelectPolicy.scala 126:32]
  wire  thisValid_2 = age_2_2 | _thisValid_T_11; // @[SelectPolicy.scala 132:35]
  wire  _nextAge_2_0_T_3 = ~age_0_2; // @[SelectPolicy.scala 119:78]
  wire  _nextAge_2_1_T_3 = ~age_1_2; // @[SelectPolicy.scala 119:78]
  wire  _thisValid_T_15 = io_enq_0[3] & ~io_deq[3]; // @[SelectPolicy.scala 126:32]
  wire  thisValid_3 = age_3_3 | _thisValid_T_15; // @[SelectPolicy.scala 132:35]
  wire  _nextAge_3_0_T_3 = ~age_0_3; // @[SelectPolicy.scala 119:78]
  wire  _nextAge_3_1_T_3 = ~age_1_3; // @[SelectPolicy.scala 119:78]
  wire  _nextAge_3_2_T_3 = ~age_2_3; // @[SelectPolicy.scala 119:78]
  wire [3:0] _best_T = {age_0_3,age_0_2,age_0_1,age_0_0}; // @[SelectPolicy.scala 159:57]
  wire  _best_T_1 = &_best_T; // @[SelectPolicy.scala 159:64]
  wire [3:0] _best_T_3 = {age_1_3,age_1_2,age_1_1,_nextAge_1_0_T_3}; // @[SelectPolicy.scala 159:57]
  wire  _best_T_4 = &_best_T_3; // @[SelectPolicy.scala 159:64]
  wire [3:0] _best_T_7 = {age_2_3,age_2_2,_nextAge_2_1_T_3,_nextAge_2_0_T_3}; // @[SelectPolicy.scala 159:57]
  wire  _best_T_8 = &_best_T_7; // @[SelectPolicy.scala 159:64]
  wire [3:0] _best_T_12 = {age_3_3,_nextAge_3_2_T_3,_nextAge_3_1_T_3,_nextAge_3_0_T_3}; // @[SelectPolicy.scala 159:57]
  wire  _best_T_13 = &_best_T_12; // @[SelectPolicy.scala 159:64]
  wire [1:0] best_lo_4 = {_best_T_4,_best_T_1}; // @[SelectPolicy.scala 160:9]
  wire [1:0] best_hi_4 = {_best_T_13,_best_T_8}; // @[SelectPolicy.scala 160:9]
  assign io_out = {best_hi_4,best_lo_4}; // @[SelectPolicy.scala 160:9]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SelectPolicy.scala 134:27]
      age_0_0 <= 1'h0; // @[SelectPolicy.scala 136:14]
    end else if (io_deq[0]) begin // @[SelectPolicy.scala 137:33]
      age_0_0 <= 1'h0; // @[SelectPolicy.scala 139:14]
    end else if (io_deq[0]) begin // @[SelectPolicy.scala 140:34]
      age_0_0 <= thisValid; // @[SelectPolicy.scala 148:14]
    end else if (_thisValid_T_3) begin // @[SelectPolicy.scala 151:14]
      age_0_0 <= ~age_0_0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SelectPolicy.scala 134:27]
      age_0_1 <= 1'h0; // @[SelectPolicy.scala 136:14]
    end else if (io_deq[0]) begin // @[SelectPolicy.scala 137:33]
      age_0_1 <= 1'h0; // @[SelectPolicy.scala 139:14]
    end else if (io_deq[1]) begin // @[SelectPolicy.scala 140:34]
      age_0_1 <= thisValid; // @[SelectPolicy.scala 148:14]
    end else if (_thisValid_T_3) begin // @[SelectPolicy.scala 151:14]
      age_0_1 <= ~age_1_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SelectPolicy.scala 134:27]
      age_0_2 <= 1'h0; // @[SelectPolicy.scala 136:14]
    end else if (io_deq[0]) begin // @[SelectPolicy.scala 137:33]
      age_0_2 <= 1'h0; // @[SelectPolicy.scala 139:14]
    end else if (io_deq[2]) begin // @[SelectPolicy.scala 140:34]
      age_0_2 <= thisValid; // @[SelectPolicy.scala 148:14]
    end else if (_thisValid_T_3) begin // @[SelectPolicy.scala 151:14]
      age_0_2 <= ~age_2_2;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SelectPolicy.scala 134:27]
      age_0_3 <= 1'h0; // @[SelectPolicy.scala 136:14]
    end else if (io_deq[0]) begin // @[SelectPolicy.scala 137:33]
      age_0_3 <= 1'h0; // @[SelectPolicy.scala 139:14]
    end else if (io_deq[3]) begin // @[SelectPolicy.scala 140:34]
      age_0_3 <= thisValid; // @[SelectPolicy.scala 148:14]
    end else if (_thisValid_T_3) begin // @[SelectPolicy.scala 151:14]
      age_0_3 <= ~age_3_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SelectPolicy.scala 134:27]
      age_1_1 <= 1'h0; // @[SelectPolicy.scala 136:14]
    end else if (io_deq[1]) begin // @[SelectPolicy.scala 137:33]
      age_1_1 <= 1'h0; // @[SelectPolicy.scala 139:14]
    end else if (io_deq[1]) begin // @[SelectPolicy.scala 140:34]
      age_1_1 <= thisValid_1; // @[SelectPolicy.scala 148:14]
    end else if (_thisValid_T_7) begin // @[SelectPolicy.scala 151:14]
      age_1_1 <= ~age_1_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SelectPolicy.scala 134:27]
      age_1_2 <= 1'h0; // @[SelectPolicy.scala 136:14]
    end else if (io_deq[1]) begin // @[SelectPolicy.scala 137:33]
      age_1_2 <= 1'h0; // @[SelectPolicy.scala 139:14]
    end else if (io_deq[2]) begin // @[SelectPolicy.scala 140:34]
      age_1_2 <= thisValid_1; // @[SelectPolicy.scala 148:14]
    end else if (_thisValid_T_7) begin // @[SelectPolicy.scala 151:14]
      age_1_2 <= ~age_2_2;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SelectPolicy.scala 134:27]
      age_1_3 <= 1'h0; // @[SelectPolicy.scala 136:14]
    end else if (io_deq[1]) begin // @[SelectPolicy.scala 137:33]
      age_1_3 <= 1'h0; // @[SelectPolicy.scala 139:14]
    end else if (io_deq[3]) begin // @[SelectPolicy.scala 140:34]
      age_1_3 <= thisValid_1; // @[SelectPolicy.scala 148:14]
    end else if (_thisValid_T_7) begin // @[SelectPolicy.scala 151:14]
      age_1_3 <= ~age_3_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SelectPolicy.scala 134:27]
      age_2_2 <= 1'h0; // @[SelectPolicy.scala 136:14]
    end else if (io_deq[2]) begin // @[SelectPolicy.scala 137:33]
      age_2_2 <= 1'h0; // @[SelectPolicy.scala 139:14]
    end else if (io_deq[2]) begin // @[SelectPolicy.scala 140:34]
      age_2_2 <= thisValid_2; // @[SelectPolicy.scala 148:14]
    end else if (_thisValid_T_11) begin // @[SelectPolicy.scala 151:14]
      age_2_2 <= ~age_2_2;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SelectPolicy.scala 134:27]
      age_2_3 <= 1'h0; // @[SelectPolicy.scala 136:14]
    end else if (io_deq[2]) begin // @[SelectPolicy.scala 137:33]
      age_2_3 <= 1'h0; // @[SelectPolicy.scala 139:14]
    end else if (io_deq[3]) begin // @[SelectPolicy.scala 140:34]
      age_2_3 <= thisValid_2; // @[SelectPolicy.scala 148:14]
    end else if (_thisValid_T_11) begin // @[SelectPolicy.scala 151:14]
      age_2_3 <= ~age_3_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SelectPolicy.scala 134:27]
      age_3_3 <= 1'h0; // @[SelectPolicy.scala 136:14]
    end else if (io_deq[3]) begin // @[SelectPolicy.scala 137:33]
      age_3_3 <= 1'h0; // @[SelectPolicy.scala 139:14]
    end else if (io_deq[3]) begin // @[SelectPolicy.scala 140:34]
      age_3_3 <= thisValid_3; // @[SelectPolicy.scala 148:14]
    end else if (_thisValid_T_15) begin // @[SelectPolicy.scala 151:14]
      age_3_3 <= ~age_3_3;
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

