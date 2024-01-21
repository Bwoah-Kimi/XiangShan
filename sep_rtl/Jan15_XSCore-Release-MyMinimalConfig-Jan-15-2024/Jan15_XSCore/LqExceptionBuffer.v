module LqExceptionBuffer(
  input         clock,
  input         reset,
  input         io_redirect_valid,
  input         io_redirect_bits_robIdx_flag,
  input  [4:0]  io_redirect_bits_robIdx_value,
  input         io_redirect_bits_level,
  input         io_req_0_valid,
  input         io_req_0_bits_uop_cf_exceptionVec_4,
  input         io_req_0_bits_uop_cf_exceptionVec_5,
  input         io_req_0_bits_uop_cf_exceptionVec_13,
  input         io_req_0_bits_uop_robIdx_flag,
  input  [4:0]  io_req_0_bits_uop_robIdx_value,
  input  [38:0] io_req_0_bits_vaddr,
  input         io_req_1_valid,
  input         io_req_1_bits_uop_cf_exceptionVec_4,
  input         io_req_1_bits_uop_cf_exceptionVec_5,
  input         io_req_1_bits_uop_cf_exceptionVec_13,
  input         io_req_1_bits_uop_robIdx_flag,
  input  [4:0]  io_req_1_bits_uop_robIdx_value,
  input  [38:0] io_req_1_bits_vaddr,
  output [38:0] io_exceptionAddr_vaddr
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [63:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [63:0] _RAND_15;
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
`endif // RANDOMIZE_REG_INIT
  reg  req_valid; // @[LoadExceptionBuffer.scala 40:26]
  reg  req_uop_robIdx_flag; // @[LoadExceptionBuffer.scala 41:16]
  reg [4:0] req_uop_robIdx_value; // @[LoadExceptionBuffer.scala 41:16]
  reg [38:0] req_vaddr; // @[LoadExceptionBuffer.scala 41:16]
  reg  s2_req_0_uop_cf_exceptionVec_4; // @[LoadExceptionBuffer.scala 49:23]
  reg  s2_req_0_uop_cf_exceptionVec_5; // @[LoadExceptionBuffer.scala 49:23]
  reg  s2_req_0_uop_cf_exceptionVec_13; // @[LoadExceptionBuffer.scala 49:23]
  reg  s2_req_0_uop_robIdx_flag; // @[LoadExceptionBuffer.scala 49:23]
  reg [4:0] s2_req_0_uop_robIdx_value; // @[LoadExceptionBuffer.scala 49:23]
  reg [38:0] s2_req_0_vaddr; // @[LoadExceptionBuffer.scala 49:23]
  reg  s2_req_1_uop_cf_exceptionVec_4; // @[LoadExceptionBuffer.scala 49:23]
  reg  s2_req_1_uop_cf_exceptionVec_5; // @[LoadExceptionBuffer.scala 49:23]
  reg  s2_req_1_uop_cf_exceptionVec_13; // @[LoadExceptionBuffer.scala 49:23]
  reg  s2_req_1_uop_robIdx_flag; // @[LoadExceptionBuffer.scala 49:23]
  reg [4:0] s2_req_1_uop_robIdx_value; // @[LoadExceptionBuffer.scala 49:23]
  reg [38:0] s2_req_1_vaddr; // @[LoadExceptionBuffer.scala 49:23]
  reg  s2_valid_REG; // @[LoadExceptionBuffer.scala 51:12]
  reg  s2_valid_REG_1_valid; // @[LoadExceptionBuffer.scala 52:44]
  reg  s2_valid_REG_1_bits_robIdx_flag; // @[LoadExceptionBuffer.scala 52:44]
  reg [4:0] s2_valid_REG_1_bits_robIdx_value; // @[LoadExceptionBuffer.scala 52:44]
  reg  s2_valid_REG_1_bits_level; // @[LoadExceptionBuffer.scala 52:44]
  wire [5:0] _s2_valid_flushItself_T_1 = {s2_req_0_uop_robIdx_flag,s2_req_0_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire [5:0] _s2_valid_flushItself_T_2 = {s2_valid_REG_1_bits_robIdx_flag,s2_valid_REG_1_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _s2_valid_flushItself_T_3 = _s2_valid_flushItself_T_1 == _s2_valid_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  s2_valid_flushItself = s2_valid_REG_1_bits_level & _s2_valid_flushItself_T_3; // @[Rob.scala 142:51]
  wire  s2_valid_differentFlag = s2_req_0_uop_robIdx_flag ^ s2_valid_REG_1_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s2_valid_compare = s2_req_0_uop_robIdx_value > s2_valid_REG_1_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s2_valid_T = s2_valid_differentFlag ^ s2_valid_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _s2_valid_T_2 = s2_valid_REG_1_valid & (s2_valid_flushItself | _s2_valid_T); // @[Rob.scala 143:20]
  wire  _s2_valid_T_3 = ~_s2_valid_T_2; // @[LoadExceptionBuffer.scala 52:5]
  wire  _s2_valid_T_4 = s2_valid_REG & _s2_valid_T_3; // @[LoadExceptionBuffer.scala 51:26]
  wire [5:0] _s2_valid_flushItself_T_6 = {io_redirect_bits_robIdx_flag,io_redirect_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _s2_valid_flushItself_T_7 = _s2_valid_flushItself_T_1 == _s2_valid_flushItself_T_6; // @[CircularQueuePtr.scala 61:47]
  wire  s2_valid_flushItself_1 = io_redirect_bits_level & _s2_valid_flushItself_T_7; // @[Rob.scala 142:51]
  wire  s2_valid_differentFlag_1 = s2_req_0_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s2_valid_compare_1 = s2_req_0_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s2_valid_T_5 = s2_valid_differentFlag_1 ^ s2_valid_compare_1; // @[CircularQueuePtr.scala 68:19]
  wire  _s2_valid_T_7 = io_redirect_valid & (s2_valid_flushItself_1 | _s2_valid_T_5); // @[Rob.scala 143:20]
  wire  _s2_valid_T_8 = ~_s2_valid_T_7; // @[LoadExceptionBuffer.scala 53:5]
  wire  s2_valid_0 = _s2_valid_T_4 & _s2_valid_T_8; // @[LoadExceptionBuffer.scala 52:59]
  reg  s2_valid_REG_2; // @[LoadExceptionBuffer.scala 51:12]
  reg  s2_valid_REG_3_valid; // @[LoadExceptionBuffer.scala 52:44]
  reg  s2_valid_REG_3_bits_robIdx_flag; // @[LoadExceptionBuffer.scala 52:44]
  reg [4:0] s2_valid_REG_3_bits_robIdx_value; // @[LoadExceptionBuffer.scala 52:44]
  reg  s2_valid_REG_3_bits_level; // @[LoadExceptionBuffer.scala 52:44]
  wire [5:0] _s2_valid_flushItself_T_9 = {s2_req_1_uop_robIdx_flag,s2_req_1_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire [5:0] _s2_valid_flushItself_T_10 = {s2_valid_REG_3_bits_robIdx_flag,s2_valid_REG_3_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _s2_valid_flushItself_T_11 = _s2_valid_flushItself_T_9 == _s2_valid_flushItself_T_10; // @[CircularQueuePtr.scala 61:47]
  wire  s2_valid_flushItself_2 = s2_valid_REG_3_bits_level & _s2_valid_flushItself_T_11; // @[Rob.scala 142:51]
  wire  s2_valid_differentFlag_2 = s2_req_1_uop_robIdx_flag ^ s2_valid_REG_3_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s2_valid_compare_2 = s2_req_1_uop_robIdx_value > s2_valid_REG_3_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s2_valid_T_9 = s2_valid_differentFlag_2 ^ s2_valid_compare_2; // @[CircularQueuePtr.scala 68:19]
  wire  _s2_valid_T_11 = s2_valid_REG_3_valid & (s2_valid_flushItself_2 | _s2_valid_T_9); // @[Rob.scala 143:20]
  wire  _s2_valid_T_12 = ~_s2_valid_T_11; // @[LoadExceptionBuffer.scala 52:5]
  wire  _s2_valid_T_13 = s2_valid_REG_2 & _s2_valid_T_12; // @[LoadExceptionBuffer.scala 51:26]
  wire  _s2_valid_flushItself_T_15 = _s2_valid_flushItself_T_9 == _s2_valid_flushItself_T_6; // @[CircularQueuePtr.scala 61:47]
  wire  s2_valid_flushItself_3 = io_redirect_bits_level & _s2_valid_flushItself_T_15; // @[Rob.scala 142:51]
  wire  s2_valid_differentFlag_3 = s2_req_1_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s2_valid_compare_3 = s2_req_1_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s2_valid_T_14 = s2_valid_differentFlag_3 ^ s2_valid_compare_3; // @[CircularQueuePtr.scala 68:19]
  wire  _s2_valid_T_16 = io_redirect_valid & (s2_valid_flushItself_3 | _s2_valid_T_14); // @[Rob.scala 143:20]
  wire  _s2_valid_T_17 = ~_s2_valid_T_16; // @[LoadExceptionBuffer.scala 53:5]
  wire  s2_valid_1 = _s2_valid_T_13 & _s2_valid_T_17; // @[LoadExceptionBuffer.scala 52:59]
  wire [15:0] _s2_has_exception_T = {2'h0,s2_req_0_uop_cf_exceptionVec_13,1'h0,4'h0,2'h0,s2_req_0_uop_cf_exceptionVec_5,
    s2_req_0_uop_cf_exceptionVec_4,4'h0}; // @[LoadExceptionBuffer.scala 55:96]
  wire  s2_has_exception_0 = |_s2_has_exception_T; // @[LoadExceptionBuffer.scala 55:103]
  wire [15:0] _s2_has_exception_T_1 = {2'h0,s2_req_1_uop_cf_exceptionVec_13,1'h0,4'h0,2'h0,
    s2_req_1_uop_cf_exceptionVec_5,s2_req_1_uop_cf_exceptionVec_4,4'h0}; // @[LoadExceptionBuffer.scala 55:96]
  wire  s2_has_exception_1 = |_s2_has_exception_T_1; // @[LoadExceptionBuffer.scala 55:103]
  wire  s2_enqueue_0 = s2_valid_0 & s2_has_exception_0; // @[LoadExceptionBuffer.scala 59:34]
  wire  s2_enqueue_1 = s2_valid_1 & s2_has_exception_1; // @[LoadExceptionBuffer.scala 59:34]
  wire [5:0] _flushItself_T_1 = {req_uop_robIdx_flag,req_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _flushItself_T_3 = _flushItself_T_1 == _s2_valid_flushItself_T_6; // @[CircularQueuePtr.scala 61:47]
  wire  flushItself = io_redirect_bits_level & _flushItself_T_3; // @[Rob.scala 142:51]
  wire  differentFlag = req_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  compare = req_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _T = differentFlag ^ compare; // @[CircularQueuePtr.scala 68:19]
  wire  _T_2 = io_redirect_valid & (flushItself | _T); // @[Rob.scala 143:20]
  wire [1:0] _req_valid_T = {s2_enqueue_1,s2_enqueue_0}; // @[LoadExceptionBuffer.scala 63:29]
  wire  _req_valid_T_1 = |_req_valid_T; // @[LoadExceptionBuffer.scala 63:36]
  wire  _GEN_0 = _req_valid_T_1 | req_valid; // @[LoadExceptionBuffer.scala 64:39 65:15 40:26]
  wire  oldest_differentFlag = s2_req_0_uop_robIdx_flag ^ s2_req_1_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  oldest_compare = s2_req_0_uop_robIdx_value > s2_req_1_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _oldest_T_1 = oldest_differentFlag ^ oldest_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _oldest_T_2_valid = _oldest_T_1 ? s2_enqueue_1 : s2_enqueue_0; // @[LoadExceptionBuffer.scala 78:49]
  wire  _oldest_T_2_bits_uop_robIdx_flag = _oldest_T_1 ? s2_req_1_uop_robIdx_flag : s2_req_0_uop_robIdx_flag; // @[LoadExceptionBuffer.scala 78:49]
  wire [4:0] _oldest_T_2_bits_uop_robIdx_value = _oldest_T_1 ? s2_req_1_uop_robIdx_value : s2_req_0_uop_robIdx_value; // @[LoadExceptionBuffer.scala 78:49]
  wire [38:0] _oldest_T_2_bits_vaddr = _oldest_T_1 ? s2_req_1_vaddr : s2_req_0_vaddr; // @[LoadExceptionBuffer.scala 78:49]
  wire  _oldest_T_5_valid = s2_enqueue_0 & ~s2_enqueue_1 ? s2_enqueue_0 : s2_enqueue_1; // @[LoadExceptionBuffer.scala 78:119]
  wire  _oldest_T_5_bits_uop_robIdx_flag = s2_enqueue_0 & ~s2_enqueue_1 ? s2_req_0_uop_robIdx_flag :
    s2_req_1_uop_robIdx_flag; // @[LoadExceptionBuffer.scala 78:119]
  wire [4:0] _oldest_T_5_bits_uop_robIdx_value = s2_enqueue_0 & ~s2_enqueue_1 ? s2_req_0_uop_robIdx_value :
    s2_req_1_uop_robIdx_value; // @[LoadExceptionBuffer.scala 78:119]
  wire [38:0] _oldest_T_5_bits_vaddr = s2_enqueue_0 & ~s2_enqueue_1 ? s2_req_0_vaddr : s2_req_1_vaddr; // @[LoadExceptionBuffer.scala 78:119]
  wire  oldest_valid = s2_enqueue_0 & s2_enqueue_1 ? _oldest_T_2_valid : _oldest_T_5_valid; // @[LoadExceptionBuffer.scala 78:23]
  wire  oldest_bits_uop_robIdx_flag = s2_enqueue_0 & s2_enqueue_1 ? _oldest_T_2_bits_uop_robIdx_flag :
    _oldest_T_5_bits_uop_robIdx_flag; // @[LoadExceptionBuffer.scala 78:23]
  wire [4:0] oldest_bits_uop_robIdx_value = s2_enqueue_0 & s2_enqueue_1 ? _oldest_T_2_bits_uop_robIdx_value :
    _oldest_T_5_bits_uop_robIdx_value; // @[LoadExceptionBuffer.scala 78:23]
  wire [38:0] oldest_bits_vaddr = s2_enqueue_0 & s2_enqueue_1 ? _oldest_T_2_bits_vaddr : _oldest_T_5_bits_vaddr; // @[LoadExceptionBuffer.scala 78:23]
  wire  req_differentFlag = req_uop_robIdx_flag ^ oldest_bits_uop_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  req_compare = req_uop_robIdx_value > oldest_bits_uop_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _req_T = req_differentFlag ^ req_compare; // @[CircularQueuePtr.scala 68:19]
  assign io_exceptionAddr_vaddr = req_vaddr; // @[LoadExceptionBuffer.scala 95:26]
  always @(posedge clock) begin
    if (req_valid) begin // @[LoadExceptionBuffer.scala 89:20]
      if (oldest_valid & _req_T) begin // @[LoadExceptionBuffer.scala 90:15]
        req_uop_robIdx_flag <= oldest_bits_uop_robIdx_flag;
      end
    end else if (_req_valid_T_1) begin // @[LoadExceptionBuffer.scala 91:39]
      req_uop_robIdx_flag <= oldest_bits_uop_robIdx_flag; // @[LoadExceptionBuffer.scala 92:9]
    end
    if (req_valid) begin // @[LoadExceptionBuffer.scala 89:20]
      if (oldest_valid & _req_T) begin // @[LoadExceptionBuffer.scala 90:15]
        req_uop_robIdx_value <= oldest_bits_uop_robIdx_value;
      end
    end else if (_req_valid_T_1) begin // @[LoadExceptionBuffer.scala 91:39]
      req_uop_robIdx_value <= oldest_bits_uop_robIdx_value; // @[LoadExceptionBuffer.scala 92:9]
    end
    if (req_valid) begin // @[LoadExceptionBuffer.scala 89:20]
      if (oldest_valid & _req_T) begin // @[LoadExceptionBuffer.scala 90:15]
        req_vaddr <= oldest_bits_vaddr;
      end
    end else if (_req_valid_T_1) begin // @[LoadExceptionBuffer.scala 91:39]
      req_vaddr <= oldest_bits_vaddr; // @[LoadExceptionBuffer.scala 92:9]
    end
    s2_req_0_uop_cf_exceptionVec_4 <= io_req_0_bits_uop_cf_exceptionVec_4; // @[LoadExceptionBuffer.scala 45:{23,23}]
    s2_req_0_uop_cf_exceptionVec_5 <= io_req_0_bits_uop_cf_exceptionVec_5; // @[LoadExceptionBuffer.scala 45:{23,23}]
    s2_req_0_uop_cf_exceptionVec_13 <= io_req_0_bits_uop_cf_exceptionVec_13; // @[LoadExceptionBuffer.scala 45:{23,23}]
    s2_req_0_uop_robIdx_flag <= io_req_0_bits_uop_robIdx_flag; // @[LoadExceptionBuffer.scala 45:{23,23}]
    s2_req_0_uop_robIdx_value <= io_req_0_bits_uop_robIdx_value; // @[LoadExceptionBuffer.scala 45:{23,23}]
    s2_req_0_vaddr <= io_req_0_bits_vaddr; // @[LoadExceptionBuffer.scala 45:{23,23}]
    s2_req_1_uop_cf_exceptionVec_4 <= io_req_1_bits_uop_cf_exceptionVec_4; // @[LoadExceptionBuffer.scala 45:{23,23}]
    s2_req_1_uop_cf_exceptionVec_5 <= io_req_1_bits_uop_cf_exceptionVec_5; // @[LoadExceptionBuffer.scala 45:{23,23}]
    s2_req_1_uop_cf_exceptionVec_13 <= io_req_1_bits_uop_cf_exceptionVec_13; // @[LoadExceptionBuffer.scala 45:{23,23}]
    s2_req_1_uop_robIdx_flag <= io_req_1_bits_uop_robIdx_flag; // @[LoadExceptionBuffer.scala 45:{23,23}]
    s2_req_1_uop_robIdx_value <= io_req_1_bits_uop_robIdx_value; // @[LoadExceptionBuffer.scala 45:{23,23}]
    s2_req_1_vaddr <= io_req_1_bits_vaddr; // @[LoadExceptionBuffer.scala 45:{23,23}]
    s2_valid_REG <= io_req_0_valid; // @[LoadExceptionBuffer.scala 46:{25,25}]
    s2_valid_REG_1_valid <= io_redirect_valid; // @[LoadExceptionBuffer.scala 52:44]
    s2_valid_REG_1_bits_robIdx_flag <= io_redirect_bits_robIdx_flag; // @[LoadExceptionBuffer.scala 52:44]
    s2_valid_REG_1_bits_robIdx_value <= io_redirect_bits_robIdx_value; // @[LoadExceptionBuffer.scala 52:44]
    s2_valid_REG_1_bits_level <= io_redirect_bits_level; // @[LoadExceptionBuffer.scala 52:44]
    s2_valid_REG_2 <= io_req_1_valid; // @[LoadExceptionBuffer.scala 46:{25,25}]
    s2_valid_REG_3_valid <= io_redirect_valid; // @[LoadExceptionBuffer.scala 52:44]
    s2_valid_REG_3_bits_robIdx_flag <= io_redirect_bits_robIdx_flag; // @[LoadExceptionBuffer.scala 52:44]
    s2_valid_REG_3_bits_robIdx_value <= io_redirect_bits_robIdx_value; // @[LoadExceptionBuffer.scala 52:44]
    s2_valid_REG_3_bits_level <= io_redirect_bits_level; // @[LoadExceptionBuffer.scala 52:44]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[LoadExceptionBuffer.scala 62:61]
      req_valid <= 1'h0; // @[LoadExceptionBuffer.scala 63:15]
    end else if (req_valid & _T_2) begin
      req_valid <= |_req_valid_T;
    end else begin
      req_valid <= _GEN_0;
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
  req_valid = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  req_uop_robIdx_flag = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  req_uop_robIdx_value = _RAND_2[4:0];
  _RAND_3 = {2{`RANDOM}};
  req_vaddr = _RAND_3[38:0];
  _RAND_4 = {1{`RANDOM}};
  s2_req_0_uop_cf_exceptionVec_4 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  s2_req_0_uop_cf_exceptionVec_5 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  s2_req_0_uop_cf_exceptionVec_13 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  s2_req_0_uop_robIdx_flag = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  s2_req_0_uop_robIdx_value = _RAND_8[4:0];
  _RAND_9 = {2{`RANDOM}};
  s2_req_0_vaddr = _RAND_9[38:0];
  _RAND_10 = {1{`RANDOM}};
  s2_req_1_uop_cf_exceptionVec_4 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  s2_req_1_uop_cf_exceptionVec_5 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  s2_req_1_uop_cf_exceptionVec_13 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  s2_req_1_uop_robIdx_flag = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  s2_req_1_uop_robIdx_value = _RAND_14[4:0];
  _RAND_15 = {2{`RANDOM}};
  s2_req_1_vaddr = _RAND_15[38:0];
  _RAND_16 = {1{`RANDOM}};
  s2_valid_REG = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  s2_valid_REG_1_valid = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  s2_valid_REG_1_bits_robIdx_flag = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  s2_valid_REG_1_bits_robIdx_value = _RAND_19[4:0];
  _RAND_20 = {1{`RANDOM}};
  s2_valid_REG_1_bits_level = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  s2_valid_REG_2 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  s2_valid_REG_3_valid = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  s2_valid_REG_3_bits_robIdx_flag = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  s2_valid_REG_3_bits_robIdx_value = _RAND_24[4:0];
  _RAND_25 = {1{`RANDOM}};
  s2_valid_REG_3_bits_level = _RAND_25[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    req_valid = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

