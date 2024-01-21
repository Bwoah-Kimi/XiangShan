module ArrayMultiplier(
  input         clock,
  input         reset,
  output        io_in_ready,
  input         io_in_valid,
  input  [64:0] io_in_bits_src_0,
  input  [64:0] io_in_bits_src_1,
  input         io_in_bits_uop_ctrl_rfWen,
  input         io_in_bits_uop_ctrl_fpWen,
  input  [5:0]  io_in_bits_uop_pdest,
  input         io_in_bits_uop_robIdx_flag,
  input  [4:0]  io_in_bits_uop_robIdx_value,
  input         io_in_bits_uop_lqIdx_flag,
  input  [3:0]  io_in_bits_uop_lqIdx_value,
  input         io_out_ready,
  output        io_out_valid,
  output [64:0] io_out_bits_data,
  output        io_out_bits_uop_ctrl_rfWen,
  output        io_out_bits_uop_ctrl_fpWen,
  output [5:0]  io_out_bits_uop_pdest,
  output        io_out_bits_uop_robIdx_flag,
  output [4:0]  io_out_bits_uop_robIdx_value,
  output        io_out_bits_uop_lqIdx_flag,
  output [3:0]  io_out_bits_uop_lqIdx_value,
  input         io_redirectIn_valid,
  input         io_redirectIn_bits_robIdx_flag,
  input  [4:0]  io_redirectIn_bits_robIdx_value,
  input         io_redirectIn_bits_level,
  input         ctrl_isW,
  input         ctrl_isHi
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
`endif // RANDOMIZE_REG_INIT
  wire  mulDataModule_clock; // @[Multiplier.scala 189:29]
  wire [64:0] mulDataModule_io_a; // @[Multiplier.scala 189:29]
  wire [64:0] mulDataModule_io_b; // @[Multiplier.scala 189:29]
  wire  mulDataModule_io_regEnables_0; // @[Multiplier.scala 189:29]
  wire  mulDataModule_io_regEnables_1; // @[Multiplier.scala 189:29]
  wire [129:0] mulDataModule_io_result; // @[Multiplier.scala 189:29]
  reg  REG; // @[FunctionUnit.scala 103:60]
  reg  REG_2_ctrl_rfWen; // @[FunctionUnit.scala 105:57]
  reg  REG_2_ctrl_fpWen; // @[FunctionUnit.scala 105:57]
  reg [5:0] REG_2_pdest; // @[FunctionUnit.scala 105:57]
  reg  REG_2_robIdx_flag; // @[FunctionUnit.scala 105:57]
  reg [4:0] REG_2_robIdx_value; // @[FunctionUnit.scala 105:57]
  reg  REG_2_lqIdx_flag; // @[FunctionUnit.scala 105:57]
  reg [3:0] REG_2_lqIdx_value; // @[FunctionUnit.scala 105:57]
  wire [5:0] _flushItself_T_1 = {io_in_bits_uop_robIdx_flag,io_in_bits_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire [5:0] _flushItself_T_2 = {io_redirectIn_bits_robIdx_flag,io_redirectIn_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _flushItself_T_3 = _flushItself_T_1 == _flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  flushItself = io_redirectIn_bits_level & _flushItself_T_3; // @[Rob.scala 142:51]
  wire  differentFlag = io_in_bits_uop_robIdx_flag ^ io_redirectIn_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  compare = io_in_bits_uop_robIdx_value > io_redirectIn_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _T_2 = differentFlag ^ compare; // @[CircularQueuePtr.scala 68:19]
  wire  _T_4 = io_redirectIn_valid & (flushItself | _T_2); // @[Rob.scala 143:20]
  wire  _T_5 = io_in_valid & _T_4; // @[FunctionUnit.scala 109:53]
  wire [5:0] _flushItself_T_5 = {REG_2_robIdx_flag,REG_2_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _flushItself_T_7 = _flushItself_T_5 == _flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  flushItself_1 = io_redirectIn_bits_level & _flushItself_T_7; // @[Rob.scala 142:51]
  wire  differentFlag_1 = REG_2_robIdx_flag ^ io_redirectIn_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  compare_1 = REG_2_robIdx_value > io_redirectIn_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _T_6 = differentFlag_1 ^ compare_1; // @[CircularQueuePtr.scala 68:19]
  wire  _T_8 = io_redirectIn_valid & (flushItself_1 | _T_6); // @[Rob.scala 143:20]
  wire  _T_9 = REG & _T_8; // @[FunctionUnit.scala 109:53]
  wire  _T_15 = ~REG | io_out_ready; // @[FunctionUnit.scala 112:35]
  wire  _T_17 = ~_T_5; // @[FunctionUnit.scala 116:46]
  wire  _T_21 = ~_T_9; // @[FunctionUnit.scala 116:46]
  wire  _T_26 = io_in_valid & _T_15 & _T_17; // @[FunctionUnit.scala 128:66]
  wire  _T_29 = REG & io_out_ready & _T_21; // @[FunctionUnit.scala 128:66]
  reg  ctrlVec_1_isW; // @[Reg.scala 16:16]
  reg  ctrlVec_1_isHi; // @[Reg.scala 16:16]
  reg  ctrlVec_2_isW; // @[Reg.scala 16:16]
  reg  ctrlVec_2_isHi; // @[Reg.scala 16:16]
  wire [63:0] res = ctrlVec_2_isHi ? mulDataModule_io_result[127:64] : mulDataModule_io_result[63:0]; // @[Multiplier.scala 200:16]
  wire  io_out_bits_data_signBit = res[31]; // @[BitUtils.scala 80:20]
  wire [31:0] _io_out_bits_data_T_2 = io_out_bits_data_signBit ? 32'hffffffff : 32'h0; // @[Bitwise.scala 74:12]
  wire [63:0] _io_out_bits_data_T_3 = {_io_out_bits_data_T_2,res[31:0]}; // @[Cat.scala 31:58]
  wire [63:0] _io_out_bits_data_T_4 = ctrlVec_2_isW ? _io_out_bits_data_T_3 : res; // @[Multiplier.scala 202:26]
  ArrayMulDataModule mulDataModule ( // @[Multiplier.scala 189:29]
    .clock(mulDataModule_clock),
    .io_a(mulDataModule_io_a),
    .io_b(mulDataModule_io_b),
    .io_regEnables_0(mulDataModule_io_regEnables_0),
    .io_regEnables_1(mulDataModule_io_regEnables_1),
    .io_result(mulDataModule_io_result)
  );
  assign io_in_ready = ~REG | io_out_ready; // @[FunctionUnit.scala 112:35]
  assign io_out_valid = REG; // @[FunctionUnit.scala 125:16]
  assign io_out_bits_data = {{1'd0}, _io_out_bits_data_T_4}; // @[Multiplier.scala 202:20]
  assign io_out_bits_uop_ctrl_rfWen = REG_2_ctrl_rfWen; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_ctrl_fpWen = REG_2_ctrl_fpWen; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_pdest = REG_2_pdest; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_robIdx_flag = REG_2_robIdx_flag; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_robIdx_value = REG_2_robIdx_value; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_lqIdx_flag = REG_2_lqIdx_flag; // @[FunctionUnit.scala 126:19]
  assign io_out_bits_uop_lqIdx_value = REG_2_lqIdx_value; // @[FunctionUnit.scala 126:19]
  assign mulDataModule_clock = clock;
  assign mulDataModule_io_a = io_in_bits_src_0; // @[Multiplier.scala 190:22]
  assign mulDataModule_io_b = io_in_bits_src_1; // @[Multiplier.scala 191:22]
  assign mulDataModule_io_regEnables_0 = io_in_valid & _T_15 & _T_17; // @[FunctionUnit.scala 128:66]
  assign mulDataModule_io_regEnables_1 = REG & io_out_ready & _T_21; // @[FunctionUnit.scala 128:66]
  always @(posedge clock) begin
    if (_T_15 & io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_ctrl_rfWen <= io_in_bits_uop_ctrl_rfWen; // @[FunctionUnit.scala 118:17]
    end
    if (_T_15 & io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_ctrl_fpWen <= io_in_bits_uop_ctrl_fpWen; // @[FunctionUnit.scala 118:17]
    end
    if (_T_15 & io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_pdest <= io_in_bits_uop_pdest; // @[FunctionUnit.scala 118:17]
    end
    if (_T_15 & io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_robIdx_flag <= io_in_bits_uop_robIdx_flag; // @[FunctionUnit.scala 118:17]
    end
    if (_T_15 & io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_robIdx_value <= io_in_bits_uop_robIdx_value; // @[FunctionUnit.scala 118:17]
    end
    if (_T_15 & io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_lqIdx_flag <= io_in_bits_uop_lqIdx_flag; // @[FunctionUnit.scala 118:17]
    end
    if (_T_15 & io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 116:63]
      REG_2_lqIdx_value <= io_in_bits_uop_lqIdx_value; // @[FunctionUnit.scala 118:17]
    end
    if (_T_26) begin // @[Reg.scala 17:18]
      ctrlVec_1_isW <= ctrl_isW; // @[Reg.scala 17:22]
    end
    if (_T_26) begin // @[Reg.scala 17:18]
      ctrlVec_1_isHi <= ctrl_isHi; // @[Reg.scala 17:22]
    end
    if (_T_29) begin // @[Reg.scala 17:18]
      ctrlVec_2_isW <= ctrlVec_1_isW; // @[Reg.scala 17:22]
    end
    if (_T_29) begin // @[Reg.scala 17:18]
      ctrlVec_2_isHi <= ctrlVec_1_isHi; // @[Reg.scala 17:22]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FunctionUnit.scala 116:63]
      REG <= 1'h0; // @[FunctionUnit.scala 117:19]
    end else if (_T_15 & io_in_valid & ~_T_5) begin // @[FunctionUnit.scala 119:41]
      REG <= io_in_valid; // @[FunctionUnit.scala 120:19]
    end else if (_T_9 | io_out_ready) begin // @[FunctionUnit.scala 103:60]
      REG <= 1'h0;
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
  REG = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  REG_2_ctrl_rfWen = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  REG_2_ctrl_fpWen = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  REG_2_pdest = _RAND_3[5:0];
  _RAND_4 = {1{`RANDOM}};
  REG_2_robIdx_flag = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  REG_2_robIdx_value = _RAND_5[4:0];
  _RAND_6 = {1{`RANDOM}};
  REG_2_lqIdx_flag = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  REG_2_lqIdx_value = _RAND_7[3:0];
  _RAND_8 = {1{`RANDOM}};
  ctrlVec_1_isW = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  ctrlVec_1_isHi = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  ctrlVec_2_isW = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  ctrlVec_2_isHi = _RAND_11[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    REG = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

