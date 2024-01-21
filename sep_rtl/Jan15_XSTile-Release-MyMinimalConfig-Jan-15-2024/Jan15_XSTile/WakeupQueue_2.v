module WakeupQueue_2(
  input        clock,
  input        reset,
  input        io_in_valid,
  input        io_in_bits_ctrl_rfWen,
  input  [5:0] io_in_bits_pdest,
  input        io_in_bits_robIdx_flag,
  input  [4:0] io_in_bits_robIdx_value,
  output       io_out_valid,
  output       io_out_bits_ctrl_rfWen,
  output [5:0] io_out_bits_pdest,
  input        io_redirect_valid,
  input        io_redirect_bits_robIdx_flag,
  input  [4:0] io_redirect_bits_robIdx_value,
  input        io_redirect_bits_level
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
`endif // RANDOMIZE_REG_INIT
  reg  queue_0_valid; // @[WakeupQueue.scala 40:41]
  reg  queue_0_bits_ctrl_rfWen; // @[WakeupQueue.scala 40:41]
  reg [5:0] queue_0_bits_pdest; // @[WakeupQueue.scala 40:41]
  reg  queue_0_bits_robIdx_flag; // @[WakeupQueue.scala 40:41]
  reg [4:0] queue_0_bits_robIdx_value; // @[WakeupQueue.scala 40:41]
  reg  queue_1_valid; // @[WakeupQueue.scala 40:41]
  reg  queue_1_bits_ctrl_rfWen; // @[WakeupQueue.scala 40:41]
  reg [5:0] queue_1_bits_pdest; // @[WakeupQueue.scala 40:41]
  wire [5:0] _queue_0_valid_flushItself_T_1 = {io_in_bits_robIdx_flag,io_in_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire [5:0] _queue_0_valid_flushItself_T_2 = {io_redirect_bits_robIdx_flag,io_redirect_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _queue_0_valid_flushItself_T_3 = _queue_0_valid_flushItself_T_1 == _queue_0_valid_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  queue_0_valid_flushItself = io_redirect_bits_level & _queue_0_valid_flushItself_T_3; // @[Rob.scala 142:51]
  wire  queue_0_valid_differentFlag = io_in_bits_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  queue_0_valid_compare = io_in_bits_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _queue_0_valid_T = queue_0_valid_differentFlag ^ queue_0_valid_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _queue_0_valid_T_2 = io_redirect_valid & (queue_0_valid_flushItself | _queue_0_valid_T); // @[Rob.scala 143:20]
  wire [5:0] _queue_1_valid_flushItself_T_1 = {queue_0_bits_robIdx_flag,queue_0_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _queue_1_valid_flushItself_T_3 = _queue_1_valid_flushItself_T_1 == _queue_0_valid_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  queue_1_valid_flushItself = io_redirect_bits_level & _queue_1_valid_flushItself_T_3; // @[Rob.scala 142:51]
  wire  queue_1_valid_differentFlag = queue_0_bits_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  queue_1_valid_compare = queue_0_bits_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _queue_1_valid_T = queue_1_valid_differentFlag ^ queue_1_valid_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _queue_1_valid_T_2 = io_redirect_valid & (queue_1_valid_flushItself | _queue_1_valid_T); // @[Rob.scala 143:20]
  assign io_out_valid = queue_1_valid; // @[WakeupQueue.scala 50:18]
  assign io_out_bits_ctrl_rfWen = queue_1_bits_ctrl_rfWen; // @[WakeupQueue.scala 51:17]
  assign io_out_bits_pdest = queue_1_bits_pdest; // @[WakeupQueue.scala 51:17]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WakeupQueue.scala 44:35]
      queue_0_valid <= 1'h0;
    end else begin
      queue_0_valid <= io_in_valid & ~_queue_0_valid_T_2;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WakeupQueue.scala 40:41]
      queue_0_bits_ctrl_rfWen <= 1'h0; // @[WakeupQueue.scala 40:41]
    end else begin
      queue_0_bits_ctrl_rfWen <= io_in_bits_ctrl_rfWen; // @[WakeupQueue.scala 45:20]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WakeupQueue.scala 40:41]
      queue_0_bits_pdest <= 6'h0; // @[WakeupQueue.scala 40:41]
    end else begin
      queue_0_bits_pdest <= io_in_bits_pdest; // @[WakeupQueue.scala 45:20]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WakeupQueue.scala 40:41]
      queue_0_bits_robIdx_flag <= 1'h0; // @[WakeupQueue.scala 40:41]
    end else begin
      queue_0_bits_robIdx_flag <= io_in_bits_robIdx_flag; // @[WakeupQueue.scala 45:20]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WakeupQueue.scala 40:41]
      queue_0_bits_robIdx_value <= 5'h0; // @[WakeupQueue.scala 40:41]
    end else begin
      queue_0_bits_robIdx_value <= io_in_bits_robIdx_value; // @[WakeupQueue.scala 45:20]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WakeupQueue.scala 48:42]
      queue_1_valid <= 1'h0;
    end else begin
      queue_1_valid <= queue_0_valid & ~_queue_1_valid_T_2;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WakeupQueue.scala 40:41]
      queue_1_bits_ctrl_rfWen <= 1'h0; // @[WakeupQueue.scala 40:41]
    end else begin
      queue_1_bits_ctrl_rfWen <= queue_0_bits_ctrl_rfWen; // @[WakeupQueue.scala 47:18]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WakeupQueue.scala 40:41]
      queue_1_bits_pdest <= 6'h0; // @[WakeupQueue.scala 40:41]
    end else begin
      queue_1_bits_pdest <= queue_0_bits_pdest; // @[WakeupQueue.scala 47:18]
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
  queue_0_valid = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  queue_0_bits_ctrl_rfWen = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  queue_0_bits_pdest = _RAND_2[5:0];
  _RAND_3 = {1{`RANDOM}};
  queue_0_bits_robIdx_flag = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  queue_0_bits_robIdx_value = _RAND_4[4:0];
  _RAND_5 = {1{`RANDOM}};
  queue_1_valid = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  queue_1_bits_ctrl_rfWen = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  queue_1_bits_pdest = _RAND_7[5:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    queue_0_valid = 1'h0;
  end
  if (reset) begin
    queue_0_bits_ctrl_rfWen = 1'h0;
  end
  if (reset) begin
    queue_0_bits_pdest = 6'h0;
  end
  if (reset) begin
    queue_0_bits_robIdx_flag = 1'h0;
  end
  if (reset) begin
    queue_0_bits_robIdx_value = 5'h0;
  end
  if (reset) begin
    queue_1_valid = 1'h0;
  end
  if (reset) begin
    queue_1_bits_ctrl_rfWen = 1'h0;
  end
  if (reset) begin
    queue_1_bits_pdest = 6'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

