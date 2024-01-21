module RobEnqPtrWrapper(
  input        clock,
  input        reset,
  input        io_redirect_valid,
  input        io_redirect_bits_robIdx_flag,
  input  [4:0] io_redirect_bits_robIdx_value,
  input        io_redirect_bits_level,
  input        io_allowEnqueue,
  input        io_hasBlockBackward,
  input        io_enq_0,
  input        io_enq_1,
  output       io_out_0_flag,
  output [4:0] io_out_0_value,
  output       io_out_1_flag,
  output [4:0] io_out_1_value
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  reg  enqPtrVec_0_flag; // @[Rob.scala 252:26]
  reg [4:0] enqPtrVec_0_value; // @[Rob.scala 252:26]
  reg  enqPtrVec_1_flag; // @[Rob.scala 252:26]
  reg [4:0] enqPtrVec_1_value; // @[Rob.scala 252:26]
  wire  canAccept = io_allowEnqueue & ~io_hasBlockBackward; // @[Rob.scala 255:35]
  wire [1:0] _dispatchNum_T = io_enq_0 + io_enq_1; // @[Bitwise.scala 48:55]
  wire [1:0] dispatchNum = canAccept ? _dispatchNum_T : 2'h0; // @[Rob.scala 256:24]
  wire [5:0] _enqPtrVec_0_new_ptr_T = {io_redirect_bits_robIdx_flag,io_redirect_bits_robIdx_value}; // @[Cat.scala 31:58]
  wire [6:0] _enqPtrVec_0_new_ptr_T_1 = {{1'd0}, _enqPtrVec_0_new_ptr_T}; // @[CircularQueuePtr.scala 39:46]
  wire [4:0] enqPtrVec_0_new_ptr_value = _enqPtrVec_0_new_ptr_T_1[4:0]; // @[CircularQueuePtr.scala 39:59]
  wire  enqPtrVec_0_new_ptr_flag = _enqPtrVec_0_new_ptr_T_1[5]; // @[CircularQueuePtr.scala 39:59]
  wire [5:0] _enqPtrVec_0_new_ptr_T_7 = _enqPtrVec_0_new_ptr_T + 6'h1; // @[CircularQueuePtr.scala 39:46]
  wire [4:0] enqPtrVec_0_new_ptr_1_value = _enqPtrVec_0_new_ptr_T_7[4:0]; // @[CircularQueuePtr.scala 39:59]
  wire  enqPtrVec_0_new_ptr_1_flag = _enqPtrVec_0_new_ptr_T_7[5]; // @[CircularQueuePtr.scala 39:59]
  wire [5:0] _enqPtrVec_0_new_ptr_T_10 = {enqPtrVec_0_flag,enqPtrVec_0_value}; // @[Cat.scala 31:58]
  wire [5:0] _GEN_4 = {{4'd0}, dispatchNum}; // @[CircularQueuePtr.scala 39:46]
  wire [5:0] _enqPtrVec_0_new_ptr_T_12 = _enqPtrVec_0_new_ptr_T_10 + _GEN_4; // @[CircularQueuePtr.scala 39:46]
  wire [4:0] enqPtrVec_0_new_ptr_2_value = _enqPtrVec_0_new_ptr_T_12[4:0]; // @[CircularQueuePtr.scala 39:59]
  wire  enqPtrVec_0_new_ptr_2_flag = _enqPtrVec_0_new_ptr_T_12[5]; // @[CircularQueuePtr.scala 39:59]
  wire [5:0] _enqPtrVec_1_new_ptr_T_7 = _enqPtrVec_0_new_ptr_T + 6'h2; // @[CircularQueuePtr.scala 39:46]
  wire [4:0] enqPtrVec_1_new_ptr_1_value = _enqPtrVec_1_new_ptr_T_7[4:0]; // @[CircularQueuePtr.scala 39:59]
  wire  enqPtrVec_1_new_ptr_1_flag = _enqPtrVec_1_new_ptr_T_7[5]; // @[CircularQueuePtr.scala 39:59]
  wire [5:0] _enqPtrVec_1_new_ptr_T_10 = {enqPtrVec_1_flag,enqPtrVec_1_value}; // @[Cat.scala 31:58]
  wire [5:0] _enqPtrVec_1_new_ptr_T_12 = _enqPtrVec_1_new_ptr_T_10 + _GEN_4; // @[CircularQueuePtr.scala 39:46]
  wire [4:0] enqPtrVec_1_new_ptr_2_value = _enqPtrVec_1_new_ptr_T_12[4:0]; // @[CircularQueuePtr.scala 39:59]
  wire  enqPtrVec_1_new_ptr_2_flag = _enqPtrVec_1_new_ptr_T_12[5]; // @[CircularQueuePtr.scala 39:59]
  assign io_out_0_flag = enqPtrVec_0_flag; // @[Rob.scala 266:10]
  assign io_out_0_value = enqPtrVec_0_value; // @[Rob.scala 266:10]
  assign io_out_1_flag = enqPtrVec_1_flag; // @[Rob.scala 266:10]
  assign io_out_1_value = enqPtrVec_1_value; // @[Rob.scala 266:10]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Rob.scala 259:29]
      enqPtrVec_0_flag <= 1'h0; // @[Rob.scala 260:17]
    end else if (io_redirect_valid) begin // @[Rob.scala 262:11]
      if (io_redirect_bits_level) begin
        enqPtrVec_0_flag <= enqPtrVec_0_new_ptr_flag;
      end else begin
        enqPtrVec_0_flag <= enqPtrVec_0_new_ptr_1_flag;
      end
    end else begin
      enqPtrVec_0_flag <= enqPtrVec_0_new_ptr_2_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Rob.scala 259:29]
      enqPtrVec_0_value <= 5'h0; // @[Rob.scala 260:17]
    end else if (io_redirect_valid) begin // @[Rob.scala 262:11]
      if (io_redirect_bits_level) begin
        enqPtrVec_0_value <= enqPtrVec_0_new_ptr_value;
      end else begin
        enqPtrVec_0_value <= enqPtrVec_0_new_ptr_1_value;
      end
    end else begin
      enqPtrVec_0_value <= enqPtrVec_0_new_ptr_2_value;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Rob.scala 259:29]
      enqPtrVec_1_flag <= 1'h0; // @[Rob.scala 260:17]
    end else if (io_redirect_valid) begin // @[Rob.scala 262:11]
      if (io_redirect_bits_level) begin
        enqPtrVec_1_flag <= enqPtrVec_0_new_ptr_1_flag;
      end else begin
        enqPtrVec_1_flag <= enqPtrVec_1_new_ptr_1_flag;
      end
    end else begin
      enqPtrVec_1_flag <= enqPtrVec_1_new_ptr_2_flag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Rob.scala 259:29]
      enqPtrVec_1_value <= 5'h1; // @[Rob.scala 260:17]
    end else if (io_redirect_valid) begin // @[Rob.scala 262:11]
      if (io_redirect_bits_level) begin
        enqPtrVec_1_value <= enqPtrVec_0_new_ptr_1_value;
      end else begin
        enqPtrVec_1_value <= enqPtrVec_1_new_ptr_1_value;
      end
    end else begin
      enqPtrVec_1_value <= enqPtrVec_1_new_ptr_2_value;
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
  enqPtrVec_0_flag = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  enqPtrVec_0_value = _RAND_1[4:0];
  _RAND_2 = {1{`RANDOM}};
  enqPtrVec_1_flag = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  enqPtrVec_1_value = _RAND_3[4:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    enqPtrVec_0_flag = 1'h0;
  end
  if (reset) begin
    enqPtrVec_0_value = 5'h0;
  end
  if (reset) begin
    enqPtrVec_1_flag = 1'h0;
  end
  if (reset) begin
    enqPtrVec_1_value = 5'h1;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

