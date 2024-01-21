module AgeDetector_2(
  input        clock,
  input        reset,
  input  [7:0] io_enq_0,
  input  [7:0] io_deq,
  output [7:0] io_out
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
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
`endif // RANDOMIZE_REG_INIT
  reg  age_0_0; // @[SelectPolicy.scala 115:62]
  reg  age_0_1; // @[SelectPolicy.scala 115:62]
  reg  age_0_2; // @[SelectPolicy.scala 115:62]
  reg  age_0_3; // @[SelectPolicy.scala 115:62]
  reg  age_0_4; // @[SelectPolicy.scala 115:62]
  reg  age_0_5; // @[SelectPolicy.scala 115:62]
  reg  age_0_6; // @[SelectPolicy.scala 115:62]
  reg  age_0_7; // @[SelectPolicy.scala 115:62]
  reg  age_1_1; // @[SelectPolicy.scala 115:62]
  reg  age_1_2; // @[SelectPolicy.scala 115:62]
  reg  age_1_3; // @[SelectPolicy.scala 115:62]
  reg  age_1_4; // @[SelectPolicy.scala 115:62]
  reg  age_1_5; // @[SelectPolicy.scala 115:62]
  reg  age_1_6; // @[SelectPolicy.scala 115:62]
  reg  age_1_7; // @[SelectPolicy.scala 115:62]
  reg  age_2_2; // @[SelectPolicy.scala 115:62]
  reg  age_2_3; // @[SelectPolicy.scala 115:62]
  reg  age_2_4; // @[SelectPolicy.scala 115:62]
  reg  age_2_5; // @[SelectPolicy.scala 115:62]
  reg  age_2_6; // @[SelectPolicy.scala 115:62]
  reg  age_2_7; // @[SelectPolicy.scala 115:62]
  reg  age_3_3; // @[SelectPolicy.scala 115:62]
  reg  age_3_4; // @[SelectPolicy.scala 115:62]
  reg  age_3_5; // @[SelectPolicy.scala 115:62]
  reg  age_3_6; // @[SelectPolicy.scala 115:62]
  reg  age_3_7; // @[SelectPolicy.scala 115:62]
  reg  age_4_4; // @[SelectPolicy.scala 115:62]
  reg  age_4_5; // @[SelectPolicy.scala 115:62]
  reg  age_4_6; // @[SelectPolicy.scala 115:62]
  reg  age_4_7; // @[SelectPolicy.scala 115:62]
  reg  age_5_5; // @[SelectPolicy.scala 115:62]
  reg  age_5_6; // @[SelectPolicy.scala 115:62]
  reg  age_5_7; // @[SelectPolicy.scala 115:62]
  reg  age_6_6; // @[SelectPolicy.scala 115:62]
  reg  age_6_7; // @[SelectPolicy.scala 115:62]
  reg  age_7_7; // @[SelectPolicy.scala 115:62]
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
  wire  _thisValid_T_19 = io_enq_0[4] & ~io_deq[4]; // @[SelectPolicy.scala 126:32]
  wire  thisValid_4 = age_4_4 | _thisValid_T_19; // @[SelectPolicy.scala 132:35]
  wire  _nextAge_4_0_T_3 = ~age_0_4; // @[SelectPolicy.scala 119:78]
  wire  _nextAge_4_1_T_3 = ~age_1_4; // @[SelectPolicy.scala 119:78]
  wire  _nextAge_4_2_T_3 = ~age_2_4; // @[SelectPolicy.scala 119:78]
  wire  _nextAge_4_3_T_3 = ~age_3_4; // @[SelectPolicy.scala 119:78]
  wire  _thisValid_T_23 = io_enq_0[5] & ~io_deq[5]; // @[SelectPolicy.scala 126:32]
  wire  thisValid_5 = age_5_5 | _thisValid_T_23; // @[SelectPolicy.scala 132:35]
  wire  _nextAge_5_0_T_3 = ~age_0_5; // @[SelectPolicy.scala 119:78]
  wire  _nextAge_5_1_T_3 = ~age_1_5; // @[SelectPolicy.scala 119:78]
  wire  _nextAge_5_2_T_3 = ~age_2_5; // @[SelectPolicy.scala 119:78]
  wire  _nextAge_5_3_T_3 = ~age_3_5; // @[SelectPolicy.scala 119:78]
  wire  _nextAge_5_4_T_3 = ~age_4_5; // @[SelectPolicy.scala 119:78]
  wire  _thisValid_T_27 = io_enq_0[6] & ~io_deq[6]; // @[SelectPolicy.scala 126:32]
  wire  thisValid_6 = age_6_6 | _thisValid_T_27; // @[SelectPolicy.scala 132:35]
  wire  _nextAge_6_0_T_3 = ~age_0_6; // @[SelectPolicy.scala 119:78]
  wire  _nextAge_6_1_T_3 = ~age_1_6; // @[SelectPolicy.scala 119:78]
  wire  _nextAge_6_2_T_3 = ~age_2_6; // @[SelectPolicy.scala 119:78]
  wire  _nextAge_6_3_T_3 = ~age_3_6; // @[SelectPolicy.scala 119:78]
  wire  _nextAge_6_4_T_3 = ~age_4_6; // @[SelectPolicy.scala 119:78]
  wire  _nextAge_6_5_T_3 = ~age_5_6; // @[SelectPolicy.scala 119:78]
  wire  _thisValid_T_31 = io_enq_0[7] & ~io_deq[7]; // @[SelectPolicy.scala 126:32]
  wire  thisValid_7 = age_7_7 | _thisValid_T_31; // @[SelectPolicy.scala 132:35]
  wire  _nextAge_7_0_T_3 = ~age_0_7; // @[SelectPolicy.scala 119:78]
  wire  _nextAge_7_1_T_3 = ~age_1_7; // @[SelectPolicy.scala 119:78]
  wire  _nextAge_7_2_T_3 = ~age_2_7; // @[SelectPolicy.scala 119:78]
  wire  _nextAge_7_3_T_3 = ~age_3_7; // @[SelectPolicy.scala 119:78]
  wire  _nextAge_7_4_T_3 = ~age_4_7; // @[SelectPolicy.scala 119:78]
  wire  _nextAge_7_5_T_3 = ~age_5_7; // @[SelectPolicy.scala 119:78]
  wire  _nextAge_7_6_T_3 = ~age_6_7; // @[SelectPolicy.scala 119:78]
  wire [7:0] _best_T = {age_0_7,age_0_6,age_0_5,age_0_4,age_0_3,age_0_2,age_0_1,age_0_0}; // @[SelectPolicy.scala 159:57]
  wire  _best_T_1 = &_best_T; // @[SelectPolicy.scala 159:64]
  wire [7:0] _best_T_3 = {age_1_7,age_1_6,age_1_5,age_1_4,age_1_3,age_1_2,age_1_1,_nextAge_1_0_T_3}; // @[SelectPolicy.scala 159:57]
  wire  _best_T_4 = &_best_T_3; // @[SelectPolicy.scala 159:64]
  wire [7:0] _best_T_7 = {age_2_7,age_2_6,age_2_5,age_2_4,age_2_3,age_2_2,_nextAge_2_1_T_3,_nextAge_2_0_T_3}; // @[SelectPolicy.scala 159:57]
  wire  _best_T_8 = &_best_T_7; // @[SelectPolicy.scala 159:64]
  wire [7:0] _best_T_12 = {age_3_7,age_3_6,age_3_5,age_3_4,age_3_3,_nextAge_3_2_T_3,_nextAge_3_1_T_3,_nextAge_3_0_T_3}; // @[SelectPolicy.scala 159:57]
  wire  _best_T_13 = &_best_T_12; // @[SelectPolicy.scala 159:64]
  wire [7:0] _best_T_18 = {age_4_7,age_4_6,age_4_5,age_4_4,_nextAge_4_3_T_3,_nextAge_4_2_T_3,_nextAge_4_1_T_3,
    _nextAge_4_0_T_3}; // @[SelectPolicy.scala 159:57]
  wire  _best_T_19 = &_best_T_18; // @[SelectPolicy.scala 159:64]
  wire [7:0] _best_T_25 = {age_5_7,age_5_6,age_5_5,_nextAge_5_4_T_3,_nextAge_5_3_T_3,_nextAge_5_2_T_3,_nextAge_5_1_T_3,
    _nextAge_5_0_T_3}; // @[SelectPolicy.scala 159:57]
  wire  _best_T_26 = &_best_T_25; // @[SelectPolicy.scala 159:64]
  wire [7:0] _best_T_33 = {age_6_7,age_6_6,_nextAge_6_5_T_3,_nextAge_6_4_T_3,_nextAge_6_3_T_3,_nextAge_6_2_T_3,
    _nextAge_6_1_T_3,_nextAge_6_0_T_3}; // @[SelectPolicy.scala 159:57]
  wire  _best_T_34 = &_best_T_33; // @[SelectPolicy.scala 159:64]
  wire [7:0] _best_T_42 = {age_7_7,_nextAge_7_6_T_3,_nextAge_7_5_T_3,_nextAge_7_4_T_3,_nextAge_7_3_T_3,_nextAge_7_2_T_3,
    _nextAge_7_1_T_3,_nextAge_7_0_T_3}; // @[SelectPolicy.scala 159:57]
  wire  _best_T_43 = &_best_T_42; // @[SelectPolicy.scala 159:64]
  wire [3:0] best_lo_8 = {_best_T_13,_best_T_8,_best_T_4,_best_T_1}; // @[SelectPolicy.scala 160:9]
  wire [3:0] best_hi_8 = {_best_T_43,_best_T_34,_best_T_26,_best_T_19}; // @[SelectPolicy.scala 160:9]
  assign io_out = {best_hi_8,best_lo_8}; // @[SelectPolicy.scala 160:9]
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
      age_0_4 <= 1'h0; // @[SelectPolicy.scala 136:14]
    end else if (io_deq[0]) begin // @[SelectPolicy.scala 137:33]
      age_0_4 <= 1'h0; // @[SelectPolicy.scala 139:14]
    end else if (io_deq[4]) begin // @[SelectPolicy.scala 140:34]
      age_0_4 <= thisValid; // @[SelectPolicy.scala 148:14]
    end else if (_thisValid_T_3) begin // @[SelectPolicy.scala 151:14]
      age_0_4 <= ~age_4_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SelectPolicy.scala 134:27]
      age_0_5 <= 1'h0; // @[SelectPolicy.scala 136:14]
    end else if (io_deq[0]) begin // @[SelectPolicy.scala 137:33]
      age_0_5 <= 1'h0; // @[SelectPolicy.scala 139:14]
    end else if (io_deq[5]) begin // @[SelectPolicy.scala 140:34]
      age_0_5 <= thisValid; // @[SelectPolicy.scala 148:14]
    end else if (_thisValid_T_3) begin // @[SelectPolicy.scala 151:14]
      age_0_5 <= ~age_5_5;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SelectPolicy.scala 134:27]
      age_0_6 <= 1'h0; // @[SelectPolicy.scala 136:14]
    end else if (io_deq[0]) begin // @[SelectPolicy.scala 137:33]
      age_0_6 <= 1'h0; // @[SelectPolicy.scala 139:14]
    end else if (io_deq[6]) begin // @[SelectPolicy.scala 140:34]
      age_0_6 <= thisValid; // @[SelectPolicy.scala 148:14]
    end else if (_thisValid_T_3) begin // @[SelectPolicy.scala 151:14]
      age_0_6 <= ~age_6_6;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SelectPolicy.scala 134:27]
      age_0_7 <= 1'h0; // @[SelectPolicy.scala 136:14]
    end else if (io_deq[0]) begin // @[SelectPolicy.scala 137:33]
      age_0_7 <= 1'h0; // @[SelectPolicy.scala 139:14]
    end else if (io_deq[7]) begin // @[SelectPolicy.scala 140:34]
      age_0_7 <= thisValid; // @[SelectPolicy.scala 148:14]
    end else if (_thisValid_T_3) begin // @[SelectPolicy.scala 151:14]
      age_0_7 <= ~age_7_7;
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
      age_1_4 <= 1'h0; // @[SelectPolicy.scala 136:14]
    end else if (io_deq[1]) begin // @[SelectPolicy.scala 137:33]
      age_1_4 <= 1'h0; // @[SelectPolicy.scala 139:14]
    end else if (io_deq[4]) begin // @[SelectPolicy.scala 140:34]
      age_1_4 <= thisValid_1; // @[SelectPolicy.scala 148:14]
    end else if (_thisValid_T_7) begin // @[SelectPolicy.scala 151:14]
      age_1_4 <= ~age_4_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SelectPolicy.scala 134:27]
      age_1_5 <= 1'h0; // @[SelectPolicy.scala 136:14]
    end else if (io_deq[1]) begin // @[SelectPolicy.scala 137:33]
      age_1_5 <= 1'h0; // @[SelectPolicy.scala 139:14]
    end else if (io_deq[5]) begin // @[SelectPolicy.scala 140:34]
      age_1_5 <= thisValid_1; // @[SelectPolicy.scala 148:14]
    end else if (_thisValid_T_7) begin // @[SelectPolicy.scala 151:14]
      age_1_5 <= ~age_5_5;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SelectPolicy.scala 134:27]
      age_1_6 <= 1'h0; // @[SelectPolicy.scala 136:14]
    end else if (io_deq[1]) begin // @[SelectPolicy.scala 137:33]
      age_1_6 <= 1'h0; // @[SelectPolicy.scala 139:14]
    end else if (io_deq[6]) begin // @[SelectPolicy.scala 140:34]
      age_1_6 <= thisValid_1; // @[SelectPolicy.scala 148:14]
    end else if (_thisValid_T_7) begin // @[SelectPolicy.scala 151:14]
      age_1_6 <= ~age_6_6;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SelectPolicy.scala 134:27]
      age_1_7 <= 1'h0; // @[SelectPolicy.scala 136:14]
    end else if (io_deq[1]) begin // @[SelectPolicy.scala 137:33]
      age_1_7 <= 1'h0; // @[SelectPolicy.scala 139:14]
    end else if (io_deq[7]) begin // @[SelectPolicy.scala 140:34]
      age_1_7 <= thisValid_1; // @[SelectPolicy.scala 148:14]
    end else if (_thisValid_T_7) begin // @[SelectPolicy.scala 151:14]
      age_1_7 <= ~age_7_7;
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
      age_2_4 <= 1'h0; // @[SelectPolicy.scala 136:14]
    end else if (io_deq[2]) begin // @[SelectPolicy.scala 137:33]
      age_2_4 <= 1'h0; // @[SelectPolicy.scala 139:14]
    end else if (io_deq[4]) begin // @[SelectPolicy.scala 140:34]
      age_2_4 <= thisValid_2; // @[SelectPolicy.scala 148:14]
    end else if (_thisValid_T_11) begin // @[SelectPolicy.scala 151:14]
      age_2_4 <= ~age_4_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SelectPolicy.scala 134:27]
      age_2_5 <= 1'h0; // @[SelectPolicy.scala 136:14]
    end else if (io_deq[2]) begin // @[SelectPolicy.scala 137:33]
      age_2_5 <= 1'h0; // @[SelectPolicy.scala 139:14]
    end else if (io_deq[5]) begin // @[SelectPolicy.scala 140:34]
      age_2_5 <= thisValid_2; // @[SelectPolicy.scala 148:14]
    end else if (_thisValid_T_11) begin // @[SelectPolicy.scala 151:14]
      age_2_5 <= ~age_5_5;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SelectPolicy.scala 134:27]
      age_2_6 <= 1'h0; // @[SelectPolicy.scala 136:14]
    end else if (io_deq[2]) begin // @[SelectPolicy.scala 137:33]
      age_2_6 <= 1'h0; // @[SelectPolicy.scala 139:14]
    end else if (io_deq[6]) begin // @[SelectPolicy.scala 140:34]
      age_2_6 <= thisValid_2; // @[SelectPolicy.scala 148:14]
    end else if (_thisValid_T_11) begin // @[SelectPolicy.scala 151:14]
      age_2_6 <= ~age_6_6;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SelectPolicy.scala 134:27]
      age_2_7 <= 1'h0; // @[SelectPolicy.scala 136:14]
    end else if (io_deq[2]) begin // @[SelectPolicy.scala 137:33]
      age_2_7 <= 1'h0; // @[SelectPolicy.scala 139:14]
    end else if (io_deq[7]) begin // @[SelectPolicy.scala 140:34]
      age_2_7 <= thisValid_2; // @[SelectPolicy.scala 148:14]
    end else if (_thisValid_T_11) begin // @[SelectPolicy.scala 151:14]
      age_2_7 <= ~age_7_7;
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
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SelectPolicy.scala 134:27]
      age_3_4 <= 1'h0; // @[SelectPolicy.scala 136:14]
    end else if (io_deq[3]) begin // @[SelectPolicy.scala 137:33]
      age_3_4 <= 1'h0; // @[SelectPolicy.scala 139:14]
    end else if (io_deq[4]) begin // @[SelectPolicy.scala 140:34]
      age_3_4 <= thisValid_3; // @[SelectPolicy.scala 148:14]
    end else if (_thisValid_T_15) begin // @[SelectPolicy.scala 151:14]
      age_3_4 <= ~age_4_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SelectPolicy.scala 134:27]
      age_3_5 <= 1'h0; // @[SelectPolicy.scala 136:14]
    end else if (io_deq[3]) begin // @[SelectPolicy.scala 137:33]
      age_3_5 <= 1'h0; // @[SelectPolicy.scala 139:14]
    end else if (io_deq[5]) begin // @[SelectPolicy.scala 140:34]
      age_3_5 <= thisValid_3; // @[SelectPolicy.scala 148:14]
    end else if (_thisValid_T_15) begin // @[SelectPolicy.scala 151:14]
      age_3_5 <= ~age_5_5;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SelectPolicy.scala 134:27]
      age_3_6 <= 1'h0; // @[SelectPolicy.scala 136:14]
    end else if (io_deq[3]) begin // @[SelectPolicy.scala 137:33]
      age_3_6 <= 1'h0; // @[SelectPolicy.scala 139:14]
    end else if (io_deq[6]) begin // @[SelectPolicy.scala 140:34]
      age_3_6 <= thisValid_3; // @[SelectPolicy.scala 148:14]
    end else if (_thisValid_T_15) begin // @[SelectPolicy.scala 151:14]
      age_3_6 <= ~age_6_6;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SelectPolicy.scala 134:27]
      age_3_7 <= 1'h0; // @[SelectPolicy.scala 136:14]
    end else if (io_deq[3]) begin // @[SelectPolicy.scala 137:33]
      age_3_7 <= 1'h0; // @[SelectPolicy.scala 139:14]
    end else if (io_deq[7]) begin // @[SelectPolicy.scala 140:34]
      age_3_7 <= thisValid_3; // @[SelectPolicy.scala 148:14]
    end else if (_thisValid_T_15) begin // @[SelectPolicy.scala 151:14]
      age_3_7 <= ~age_7_7;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SelectPolicy.scala 134:27]
      age_4_4 <= 1'h0; // @[SelectPolicy.scala 136:14]
    end else if (io_deq[4]) begin // @[SelectPolicy.scala 137:33]
      age_4_4 <= 1'h0; // @[SelectPolicy.scala 139:14]
    end else if (io_deq[4]) begin // @[SelectPolicy.scala 140:34]
      age_4_4 <= thisValid_4; // @[SelectPolicy.scala 148:14]
    end else if (_thisValid_T_19) begin // @[SelectPolicy.scala 151:14]
      age_4_4 <= ~age_4_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SelectPolicy.scala 134:27]
      age_4_5 <= 1'h0; // @[SelectPolicy.scala 136:14]
    end else if (io_deq[4]) begin // @[SelectPolicy.scala 137:33]
      age_4_5 <= 1'h0; // @[SelectPolicy.scala 139:14]
    end else if (io_deq[5]) begin // @[SelectPolicy.scala 140:34]
      age_4_5 <= thisValid_4; // @[SelectPolicy.scala 148:14]
    end else if (_thisValid_T_19) begin // @[SelectPolicy.scala 151:14]
      age_4_5 <= ~age_5_5;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SelectPolicy.scala 134:27]
      age_4_6 <= 1'h0; // @[SelectPolicy.scala 136:14]
    end else if (io_deq[4]) begin // @[SelectPolicy.scala 137:33]
      age_4_6 <= 1'h0; // @[SelectPolicy.scala 139:14]
    end else if (io_deq[6]) begin // @[SelectPolicy.scala 140:34]
      age_4_6 <= thisValid_4; // @[SelectPolicy.scala 148:14]
    end else if (_thisValid_T_19) begin // @[SelectPolicy.scala 151:14]
      age_4_6 <= ~age_6_6;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SelectPolicy.scala 134:27]
      age_4_7 <= 1'h0; // @[SelectPolicy.scala 136:14]
    end else if (io_deq[4]) begin // @[SelectPolicy.scala 137:33]
      age_4_7 <= 1'h0; // @[SelectPolicy.scala 139:14]
    end else if (io_deq[7]) begin // @[SelectPolicy.scala 140:34]
      age_4_7 <= thisValid_4; // @[SelectPolicy.scala 148:14]
    end else if (_thisValid_T_19) begin // @[SelectPolicy.scala 151:14]
      age_4_7 <= ~age_7_7;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SelectPolicy.scala 134:27]
      age_5_5 <= 1'h0; // @[SelectPolicy.scala 136:14]
    end else if (io_deq[5]) begin // @[SelectPolicy.scala 137:33]
      age_5_5 <= 1'h0; // @[SelectPolicy.scala 139:14]
    end else if (io_deq[5]) begin // @[SelectPolicy.scala 140:34]
      age_5_5 <= thisValid_5; // @[SelectPolicy.scala 148:14]
    end else if (_thisValid_T_23) begin // @[SelectPolicy.scala 151:14]
      age_5_5 <= ~age_5_5;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SelectPolicy.scala 134:27]
      age_5_6 <= 1'h0; // @[SelectPolicy.scala 136:14]
    end else if (io_deq[5]) begin // @[SelectPolicy.scala 137:33]
      age_5_6 <= 1'h0; // @[SelectPolicy.scala 139:14]
    end else if (io_deq[6]) begin // @[SelectPolicy.scala 140:34]
      age_5_6 <= thisValid_5; // @[SelectPolicy.scala 148:14]
    end else if (_thisValid_T_23) begin // @[SelectPolicy.scala 151:14]
      age_5_6 <= ~age_6_6;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SelectPolicy.scala 134:27]
      age_5_7 <= 1'h0; // @[SelectPolicy.scala 136:14]
    end else if (io_deq[5]) begin // @[SelectPolicy.scala 137:33]
      age_5_7 <= 1'h0; // @[SelectPolicy.scala 139:14]
    end else if (io_deq[7]) begin // @[SelectPolicy.scala 140:34]
      age_5_7 <= thisValid_5; // @[SelectPolicy.scala 148:14]
    end else if (_thisValid_T_23) begin // @[SelectPolicy.scala 151:14]
      age_5_7 <= ~age_7_7;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SelectPolicy.scala 134:27]
      age_6_6 <= 1'h0; // @[SelectPolicy.scala 136:14]
    end else if (io_deq[6]) begin // @[SelectPolicy.scala 137:33]
      age_6_6 <= 1'h0; // @[SelectPolicy.scala 139:14]
    end else if (io_deq[6]) begin // @[SelectPolicy.scala 140:34]
      age_6_6 <= thisValid_6; // @[SelectPolicy.scala 148:14]
    end else if (_thisValid_T_27) begin // @[SelectPolicy.scala 151:14]
      age_6_6 <= ~age_6_6;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SelectPolicy.scala 134:27]
      age_6_7 <= 1'h0; // @[SelectPolicy.scala 136:14]
    end else if (io_deq[6]) begin // @[SelectPolicy.scala 137:33]
      age_6_7 <= 1'h0; // @[SelectPolicy.scala 139:14]
    end else if (io_deq[7]) begin // @[SelectPolicy.scala 140:34]
      age_6_7 <= thisValid_6; // @[SelectPolicy.scala 148:14]
    end else if (_thisValid_T_27) begin // @[SelectPolicy.scala 151:14]
      age_6_7 <= ~age_7_7;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SelectPolicy.scala 134:27]
      age_7_7 <= 1'h0; // @[SelectPolicy.scala 136:14]
    end else if (io_deq[7]) begin // @[SelectPolicy.scala 137:33]
      age_7_7 <= 1'h0; // @[SelectPolicy.scala 139:14]
    end else if (io_deq[7]) begin // @[SelectPolicy.scala 140:34]
      age_7_7 <= thisValid_7; // @[SelectPolicy.scala 148:14]
    end else if (_thisValid_T_31) begin // @[SelectPolicy.scala 151:14]
      age_7_7 <= ~age_7_7;
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
  age_0_4 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  age_0_5 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  age_0_6 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  age_0_7 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  age_1_1 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  age_1_2 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  age_1_3 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  age_1_4 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  age_1_5 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  age_1_6 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  age_1_7 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  age_2_2 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  age_2_3 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  age_2_4 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  age_2_5 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  age_2_6 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  age_2_7 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  age_3_3 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  age_3_4 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  age_3_5 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  age_3_6 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  age_3_7 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  age_4_4 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  age_4_5 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  age_4_6 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  age_4_7 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  age_5_5 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  age_5_6 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  age_5_7 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  age_6_6 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  age_6_7 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  age_7_7 = _RAND_35[0:0];
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
    age_0_4 = 1'h0;
  end
  if (reset) begin
    age_0_5 = 1'h0;
  end
  if (reset) begin
    age_0_6 = 1'h0;
  end
  if (reset) begin
    age_0_7 = 1'h0;
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
    age_1_4 = 1'h0;
  end
  if (reset) begin
    age_1_5 = 1'h0;
  end
  if (reset) begin
    age_1_6 = 1'h0;
  end
  if (reset) begin
    age_1_7 = 1'h0;
  end
  if (reset) begin
    age_2_2 = 1'h0;
  end
  if (reset) begin
    age_2_3 = 1'h0;
  end
  if (reset) begin
    age_2_4 = 1'h0;
  end
  if (reset) begin
    age_2_5 = 1'h0;
  end
  if (reset) begin
    age_2_6 = 1'h0;
  end
  if (reset) begin
    age_2_7 = 1'h0;
  end
  if (reset) begin
    age_3_3 = 1'h0;
  end
  if (reset) begin
    age_3_4 = 1'h0;
  end
  if (reset) begin
    age_3_5 = 1'h0;
  end
  if (reset) begin
    age_3_6 = 1'h0;
  end
  if (reset) begin
    age_3_7 = 1'h0;
  end
  if (reset) begin
    age_4_4 = 1'h0;
  end
  if (reset) begin
    age_4_5 = 1'h0;
  end
  if (reset) begin
    age_4_6 = 1'h0;
  end
  if (reset) begin
    age_4_7 = 1'h0;
  end
  if (reset) begin
    age_5_5 = 1'h0;
  end
  if (reset) begin
    age_5_6 = 1'h0;
  end
  if (reset) begin
    age_5_7 = 1'h0;
  end
  if (reset) begin
    age_6_6 = 1'h0;
  end
  if (reset) begin
    age_6_7 = 1'h0;
  end
  if (reset) begin
    age_7_7 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

