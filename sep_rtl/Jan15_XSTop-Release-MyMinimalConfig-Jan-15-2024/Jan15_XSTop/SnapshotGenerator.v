module SnapshotGenerator(
  input        clock,
  input        reset,
  input        io_enq,
  input        io_enqData_0_0_flag,
  input  [4:0] io_enqData_0_0_value,
  input        io_enqData_0_1_flag,
  input  [4:0] io_enqData_0_1_value,
  input        io_deq,
  input        io_flush,
  output       io_snapshots_0_0_flag,
  output [4:0] io_snapshots_0_0_value,
  output       io_snapshots_0_1_flag,
  output [4:0] io_snapshots_0_1_value,
  output       io_snapshots_1_0_flag,
  output [4:0] io_snapshots_1_0_value,
  output       io_snapshots_1_1_flag,
  output [4:0] io_snapshots_1_1_value,
  output       io_snapshots_2_0_flag,
  output [4:0] io_snapshots_2_0_value,
  output       io_snapshots_2_1_flag,
  output [4:0] io_snapshots_2_1_value,
  output       io_snapshots_3_0_flag,
  output [4:0] io_snapshots_3_0_value,
  output       io_snapshots_3_1_flag,
  output [4:0] io_snapshots_3_1_value
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
`endif // RANDOMIZE_REG_INIT
  reg  snapshots_0_0_flag; // @[CtrlBlock.scala 74:22]
  reg [4:0] snapshots_0_0_value; // @[CtrlBlock.scala 74:22]
  reg  snapshots_0_1_flag; // @[CtrlBlock.scala 74:22]
  reg [4:0] snapshots_0_1_value; // @[CtrlBlock.scala 74:22]
  reg  snapshots_1_0_flag; // @[CtrlBlock.scala 74:22]
  reg [4:0] snapshots_1_0_value; // @[CtrlBlock.scala 74:22]
  reg  snapshots_1_1_flag; // @[CtrlBlock.scala 74:22]
  reg [4:0] snapshots_1_1_value; // @[CtrlBlock.scala 74:22]
  reg  snapshots_2_0_flag; // @[CtrlBlock.scala 74:22]
  reg [4:0] snapshots_2_0_value; // @[CtrlBlock.scala 74:22]
  reg  snapshots_2_1_flag; // @[CtrlBlock.scala 74:22]
  reg [4:0] snapshots_2_1_value; // @[CtrlBlock.scala 74:22]
  reg  snapshots_3_0_flag; // @[CtrlBlock.scala 74:22]
  reg [4:0] snapshots_3_0_value; // @[CtrlBlock.scala 74:22]
  reg  snapshots_3_1_flag; // @[CtrlBlock.scala 74:22]
  reg [4:0] snapshots_3_1_value; // @[CtrlBlock.scala 74:22]
  reg  snptEnqPtr_flag; // @[CtrlBlock.scala 75:27]
  reg [1:0] snptEnqPtr_value; // @[CtrlBlock.scala 75:27]
  reg  snptDeqPtr_flag; // @[CtrlBlock.scala 76:27]
  reg [1:0] snptDeqPtr_value; // @[CtrlBlock.scala 76:27]
  wire  _T_2 = snptEnqPtr_flag != snptDeqPtr_flag & snptEnqPtr_value == snptDeqPtr_value; // @[CircularQueuePtr.scala 99:37]
  wire [2:0] _snptEnqPtr_new_ptr_T = {snptEnqPtr_flag,snptEnqPtr_value}; // @[Cat.scala 31:58]
  wire [2:0] _snptEnqPtr_new_ptr_T_2 = _snptEnqPtr_new_ptr_T + 3'h1; // @[CircularQueuePtr.scala 39:46]
  wire [1:0] snptEnqPtr_new_ptr_value = _snptEnqPtr_new_ptr_T_2[1:0]; // @[CircularQueuePtr.scala 39:59]
  wire  snptEnqPtr_new_ptr_flag = _snptEnqPtr_new_ptr_T_2[2]; // @[CircularQueuePtr.scala 39:59]
  wire [2:0] _snptDeqPtr_new_ptr_T = {snptDeqPtr_flag,snptDeqPtr_value}; // @[Cat.scala 31:58]
  wire [2:0] _snptDeqPtr_new_ptr_T_2 = _snptDeqPtr_new_ptr_T + 3'h1; // @[CircularQueuePtr.scala 39:46]
  wire [1:0] snptDeqPtr_new_ptr_value = _snptDeqPtr_new_ptr_T_2[1:0]; // @[CircularQueuePtr.scala 39:59]
  wire  snptDeqPtr_new_ptr_flag = _snptDeqPtr_new_ptr_T_2[2]; // @[CircularQueuePtr.scala 39:59]
  assign io_snapshots_0_0_flag = snapshots_0_0_flag; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_0_0_value = snapshots_0_0_value; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_0_1_flag = snapshots_0_1_flag; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_0_1_value = snapshots_0_1_value; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_1_0_flag = snapshots_1_0_flag; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_1_0_value = snapshots_1_0_value; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_1_1_flag = snapshots_1_1_flag; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_1_1_value = snapshots_1_1_value; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_2_0_flag = snapshots_2_0_flag; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_2_0_value = snapshots_2_0_value; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_2_1_flag = snapshots_2_1_flag; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_2_1_value = snapshots_2_1_value; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_3_0_flag = snapshots_3_0_flag; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_3_0_value = snapshots_3_0_value; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_3_1_flag = snapshots_3_1_flag; // @[CtrlBlock.scala 79:16]
  assign io_snapshots_3_1_value = snapshots_3_1_value; // @[CtrlBlock.scala 79:16]
  always @(posedge clock) begin
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h0 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_0_0_flag <= io_enqData_0_0_flag; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h0 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_0_0_value <= io_enqData_0_0_value; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h0 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_0_1_flag <= io_enqData_0_1_flag; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h0 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_0_1_value <= io_enqData_0_1_value; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h1 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_1_0_flag <= io_enqData_0_0_flag; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h1 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_1_0_value <= io_enqData_0_0_value; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h1 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_1_1_flag <= io_enqData_0_1_flag; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h1 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_1_1_value <= io_enqData_0_1_value; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h2 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_2_0_flag <= io_enqData_0_0_flag; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h2 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_2_0_value <= io_enqData_0_0_value; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h2 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_2_1_flag <= io_enqData_0_1_flag; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h2 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_2_1_value <= io_enqData_0_1_value; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h3 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_3_0_flag <= io_enqData_0_0_flag; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h3 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_3_0_value <= io_enqData_0_0_value; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h3 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_3_1_flag <= io_enqData_0_1_flag; // @[CtrlBlock.scala 85:33]
      end
    end
    if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 84:51]
      if (2'h3 == snptEnqPtr_value) begin // @[CtrlBlock.scala 85:33]
        snapshots_3_1_value <= io_enqData_0_1_value; // @[CtrlBlock.scala 85:33]
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CtrlBlock.scala 94:18]
      snptEnqPtr_flag <= 1'h0; // @[CtrlBlock.scala 96:16]
    end else if (io_flush) begin // @[CtrlBlock.scala 84:51]
      snptEnqPtr_flag <= 1'h0; // @[CtrlBlock.scala 87:16]
    end else if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 75:27]
      snptEnqPtr_flag <= snptEnqPtr_new_ptr_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CtrlBlock.scala 94:18]
      snptEnqPtr_value <= 2'h0; // @[CtrlBlock.scala 96:16]
    end else if (io_flush) begin // @[CtrlBlock.scala 84:51]
      snptEnqPtr_value <= 2'h0; // @[CtrlBlock.scala 87:16]
    end else if (~_T_2 & io_enq) begin // @[CtrlBlock.scala 75:27]
      snptEnqPtr_value <= snptEnqPtr_new_ptr_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CtrlBlock.scala 94:18]
      snptDeqPtr_flag <= 1'h0; // @[CtrlBlock.scala 97:16]
    end else if (io_flush) begin // @[CtrlBlock.scala 89:16]
      snptDeqPtr_flag <= 1'h0; // @[CtrlBlock.scala 91:16]
    end else if (io_deq) begin // @[CtrlBlock.scala 76:27]
      snptDeqPtr_flag <= snptDeqPtr_new_ptr_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[CtrlBlock.scala 94:18]
      snptDeqPtr_value <= 2'h0; // @[CtrlBlock.scala 97:16]
    end else if (io_flush) begin // @[CtrlBlock.scala 89:16]
      snptDeqPtr_value <= 2'h0; // @[CtrlBlock.scala 91:16]
    end else if (io_deq) begin // @[CtrlBlock.scala 76:27]
      snptDeqPtr_value <= snptDeqPtr_new_ptr_value;
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
  snapshots_0_0_flag = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  snapshots_0_0_value = _RAND_1[4:0];
  _RAND_2 = {1{`RANDOM}};
  snapshots_0_1_flag = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  snapshots_0_1_value = _RAND_3[4:0];
  _RAND_4 = {1{`RANDOM}};
  snapshots_1_0_flag = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  snapshots_1_0_value = _RAND_5[4:0];
  _RAND_6 = {1{`RANDOM}};
  snapshots_1_1_flag = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  snapshots_1_1_value = _RAND_7[4:0];
  _RAND_8 = {1{`RANDOM}};
  snapshots_2_0_flag = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  snapshots_2_0_value = _RAND_9[4:0];
  _RAND_10 = {1{`RANDOM}};
  snapshots_2_1_flag = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  snapshots_2_1_value = _RAND_11[4:0];
  _RAND_12 = {1{`RANDOM}};
  snapshots_3_0_flag = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  snapshots_3_0_value = _RAND_13[4:0];
  _RAND_14 = {1{`RANDOM}};
  snapshots_3_1_flag = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  snapshots_3_1_value = _RAND_15[4:0];
  _RAND_16 = {1{`RANDOM}};
  snptEnqPtr_flag = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  snptEnqPtr_value = _RAND_17[1:0];
  _RAND_18 = {1{`RANDOM}};
  snptDeqPtr_flag = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  snptDeqPtr_value = _RAND_19[1:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    snptEnqPtr_flag = 1'h0;
  end
  if (reset) begin
    snptEnqPtr_value = 2'h0;
  end
  if (reset) begin
    snptDeqPtr_flag = 1'h0;
  end
  if (reset) begin
    snptDeqPtr_value = 2'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

