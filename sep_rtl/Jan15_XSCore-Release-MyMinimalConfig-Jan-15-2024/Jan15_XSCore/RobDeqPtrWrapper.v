module RobDeqPtrWrapper(
  input        clock,
  input        reset,
  input  [1:0] io_state,
  input        io_deq_v_0,
  input        io_deq_v_1,
  input        io_deq_w0,
  input        io_deq_w1,
  input        io_exception_state_valid,
  input        io_exception_state_bits_robIdx_flag,
  input  [4:0] io_exception_state_bits_robIdx_value,
  input        io_exception_state_bits_exceptionVec_0,
  input        io_exception_state_bits_exceptionVec_1,
  input        io_exception_state_bits_exceptionVec_2,
  input        io_exception_state_bits_exceptionVec_3,
  input        io_exception_state_bits_exceptionVec_4,
  input        io_exception_state_bits_exceptionVec_5,
  input        io_exception_state_bits_exceptionVec_6,
  input        io_exception_state_bits_exceptionVec_7,
  input        io_exception_state_bits_exceptionVec_8,
  input        io_exception_state_bits_exceptionVec_9,
  input        io_exception_state_bits_exceptionVec_10,
  input        io_exception_state_bits_exceptionVec_11,
  input        io_exception_state_bits_exceptionVec_12,
  input        io_exception_state_bits_exceptionVec_13,
  input        io_exception_state_bits_exceptionVec_14,
  input        io_exception_state_bits_exceptionVec_15,
  input        io_exception_state_bits_replayInst,
  input        io_exception_state_bits_singleStep,
  input        io_exception_state_bits_trigger_frontendHit_0,
  input        io_exception_state_bits_trigger_frontendHit_1,
  input        io_exception_state_bits_trigger_frontendHit_2,
  input        io_exception_state_bits_trigger_frontendHit_3,
  input        io_exception_state_bits_trigger_backendHit_0,
  input        io_exception_state_bits_trigger_backendHit_1,
  input        io_exception_state_bits_trigger_backendHit_2,
  input        io_exception_state_bits_trigger_backendHit_3,
  input        io_exception_state_bits_trigger_backendHit_4,
  input        io_exception_state_bits_trigger_backendHit_5,
  input        io_intrBitSetReg,
  input        io_hasNoSpecExec,
  input        io_interrupt_safe,
  input        io_blockCommit,
  output       io_out_0_flag,
  output [4:0] io_out_0_value,
  output       io_out_1_flag,
  output [4:0] io_out_1_value,
  output       io_next_out_0_flag,
  output [4:0] io_next_out_0_value,
  output       io_next_out_1_flag,
  output [4:0] io_next_out_1_value
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  reg  deqPtrVec_0_flag; // @[Rob.scala 209:26]
  reg [4:0] deqPtrVec_0_value; // @[Rob.scala 209:26]
  reg  deqPtrVec_1_flag; // @[Rob.scala 209:26]
  reg [4:0] deqPtrVec_1_value; // @[Rob.scala 209:26]
  wire  intrEnable = io_intrBitSetReg & ~io_hasNoSpecExec & io_interrupt_safe; // @[Rob.scala 213:58]
  wire [7:0] exceptionEnable_lo = {io_exception_state_bits_exceptionVec_7,io_exception_state_bits_exceptionVec_6,
    io_exception_state_bits_exceptionVec_5,io_exception_state_bits_exceptionVec_4,io_exception_state_bits_exceptionVec_3
    ,io_exception_state_bits_exceptionVec_2,io_exception_state_bits_exceptionVec_1,
    io_exception_state_bits_exceptionVec_0}; // @[Rob.scala 283:33]
  wire [15:0] _exceptionEnable_T_1 = {io_exception_state_bits_exceptionVec_15,io_exception_state_bits_exceptionVec_14,
    io_exception_state_bits_exceptionVec_13,io_exception_state_bits_exceptionVec_12,
    io_exception_state_bits_exceptionVec_11,io_exception_state_bits_exceptionVec_10,
    io_exception_state_bits_exceptionVec_9,io_exception_state_bits_exceptionVec_8,exceptionEnable_lo}; // @[Rob.scala 283:33]
  wire  _exceptionEnable_T_7 = io_exception_state_bits_trigger_frontendHit_0 |
    io_exception_state_bits_trigger_frontendHit_1 | io_exception_state_bits_trigger_frontendHit_2 |
    io_exception_state_bits_trigger_frontendHit_3; // @[Bundle.scala 644:45]
  wire  _exceptionEnable_T_12 = io_exception_state_bits_trigger_backendHit_0 |
    io_exception_state_bits_trigger_backendHit_1 | io_exception_state_bits_trigger_backendHit_2 |
    io_exception_state_bits_trigger_backendHit_3 | io_exception_state_bits_trigger_backendHit_4 |
    io_exception_state_bits_trigger_backendHit_5; // @[Bundle.scala 645:43]
  wire  _exceptionEnable_T_13 = _exceptionEnable_T_7 | _exceptionEnable_T_12; // @[Bundle.scala 646:28]
  wire  _exceptionEnable_T_14 = |_exceptionEnable_T_1 | io_exception_state_bits_singleStep |
    io_exception_state_bits_replayInst | _exceptionEnable_T_13; // @[Rob.scala 283:72]
  wire [5:0] _exceptionEnable_T_16 = {io_exception_state_bits_robIdx_flag,io_exception_state_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire [5:0] _exceptionEnable_T_17 = {deqPtrVec_0_flag,deqPtrVec_0_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _exceptionEnable_T_18 = _exceptionEnable_T_16 == _exceptionEnable_T_17; // @[CircularQueuePtr.scala 61:47]
  wire  exceptionEnable = io_deq_w0 & io_exception_state_valid & _exceptionEnable_T_14 & _exceptionEnable_T_18; // @[Rob.scala 214:103]
  wire  _redirectOutValid_T = io_state == 2'h0; // @[Rob.scala 215:35]
  wire  redirectOutValid = io_state == 2'h0 & io_deq_v_0 & (intrEnable | exceptionEnable); // @[Rob.scala 215:58]
  wire  commit_exception_differentFlag = io_exception_state_bits_robIdx_flag ^ deqPtrVec_1_flag; // @[CircularQueuePtr.scala 66:35]
  wire  commit_exception_compare = io_exception_state_bits_robIdx_value > deqPtrVec_1_value; // @[CircularQueuePtr.scala 67:30]
  wire  _commit_exception_T = commit_exception_differentFlag ^ commit_exception_compare; // @[CircularQueuePtr.scala 68:19]
  wire  commit_exception = io_exception_state_valid & ~_commit_exception_T; // @[Rob.scala 219:51]
  wire  canCommit_0 = io_deq_v_0 & io_deq_w0; // @[Rob.scala 220:70]
  wire  canCommit_1 = io_deq_v_1 & io_deq_w1; // @[Rob.scala 220:70]
  wire  _normalCommitCnt_T = ~canCommit_0; // @[Rob.scala 221:60]
  wire  _normalCommitCnt_T_1 = ~canCommit_1; // @[Rob.scala 221:60]
  wire [1:0] _normalCommitCnt_T_2 = _normalCommitCnt_T_1 ? 2'h1 : 2'h2; // @[Mux.scala 47:70]
  wire [1:0] normalCommitCnt = _normalCommitCnt_T ? 2'h0 : _normalCommitCnt_T_2; // @[Mux.scala 47:70]
  wire  allowOnlyOne = commit_exception | io_intrBitSetReg; // @[Rob.scala 224:39]
  wire [1:0] commitCnt = allowOnlyOne ? {{1'd0}, canCommit_0} : normalCommitCnt; // @[Rob.scala 225:22]
  wire [5:0] _GEN_0 = {{4'd0}, commitCnt}; // @[CircularQueuePtr.scala 39:46]
  wire [5:0] _commitDeqPtrVec_new_ptr_T_2 = _exceptionEnable_T_17 + _GEN_0; // @[CircularQueuePtr.scala 39:46]
  wire [4:0] commitDeqPtrVec_new_ptr_value = _commitDeqPtrVec_new_ptr_T_2[4:0]; // @[CircularQueuePtr.scala 39:59]
  wire  commitDeqPtrVec_new_ptr_flag = _commitDeqPtrVec_new_ptr_T_2[5]; // @[CircularQueuePtr.scala 39:59]
  wire [5:0] _commitDeqPtrVec_new_ptr_T_5 = {deqPtrVec_1_flag,deqPtrVec_1_value}; // @[Cat.scala 31:58]
  wire [5:0] _commitDeqPtrVec_new_ptr_T_7 = _commitDeqPtrVec_new_ptr_T_5 + _GEN_0; // @[CircularQueuePtr.scala 39:46]
  wire [4:0] commitDeqPtrVec_new_ptr_1_value = _commitDeqPtrVec_new_ptr_T_7[4:0]; // @[CircularQueuePtr.scala 39:59]
  wire  commitDeqPtrVec_new_ptr_1_flag = _commitDeqPtrVec_new_ptr_T_7[5]; // @[CircularQueuePtr.scala 39:59]
  assign io_out_0_flag = deqPtrVec_0_flag; // @[Rob.scala 233:15]
  assign io_out_0_value = deqPtrVec_0_value; // @[Rob.scala 233:15]
  assign io_out_1_flag = deqPtrVec_1_flag; // @[Rob.scala 233:15]
  assign io_out_1_value = deqPtrVec_1_value; // @[Rob.scala 233:15]
  assign io_next_out_0_flag = _redirectOutValid_T & ~redirectOutValid & ~io_blockCommit ? commitDeqPtrVec_new_ptr_flag
     : deqPtrVec_0_flag; // @[Rob.scala 228:27]
  assign io_next_out_0_value = _redirectOutValid_T & ~redirectOutValid & ~io_blockCommit ? commitDeqPtrVec_new_ptr_value
     : deqPtrVec_0_value; // @[Rob.scala 228:27]
  assign io_next_out_1_flag = _redirectOutValid_T & ~redirectOutValid & ~io_blockCommit ? commitDeqPtrVec_new_ptr_1_flag
     : deqPtrVec_1_flag; // @[Rob.scala 228:27]
  assign io_next_out_1_value = _redirectOutValid_T & ~redirectOutValid & ~io_blockCommit ?
    commitDeqPtrVec_new_ptr_1_value : deqPtrVec_1_value; // @[Rob.scala 228:27]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Rob.scala 228:27]
      deqPtrVec_0_flag <= 1'h0;
    end else if (_redirectOutValid_T & ~redirectOutValid & ~io_blockCommit) begin
      deqPtrVec_0_flag <= commitDeqPtrVec_new_ptr_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Rob.scala 228:27]
      deqPtrVec_0_value <= 5'h0;
    end else if (_redirectOutValid_T & ~redirectOutValid & ~io_blockCommit) begin
      deqPtrVec_0_value <= commitDeqPtrVec_new_ptr_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Rob.scala 228:27]
      deqPtrVec_1_flag <= 1'h0;
    end else if (_redirectOutValid_T & ~redirectOutValid & ~io_blockCommit) begin
      deqPtrVec_1_flag <= commitDeqPtrVec_new_ptr_1_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Rob.scala 228:27]
      deqPtrVec_1_value <= 5'h1;
    end else if (_redirectOutValid_T & ~redirectOutValid & ~io_blockCommit) begin
      deqPtrVec_1_value <= commitDeqPtrVec_new_ptr_1_value;
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
  deqPtrVec_0_flag = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  deqPtrVec_0_value = _RAND_1[4:0];
  _RAND_2 = {1{`RANDOM}};
  deqPtrVec_1_flag = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  deqPtrVec_1_value = _RAND_3[4:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    deqPtrVec_0_flag = 1'h0;
  end
  if (reset) begin
    deqPtrVec_0_value = 5'h0;
  end
  if (reset) begin
    deqPtrVec_1_flag = 1'h0;
  end
  if (reset) begin
    deqPtrVec_1_value = 5'h1;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

