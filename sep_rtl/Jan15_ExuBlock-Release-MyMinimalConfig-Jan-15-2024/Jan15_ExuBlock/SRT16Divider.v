module SRT16Divider(
  input         clock,
  input         reset,
  output        io_in_ready,
  input         io_in_valid,
  input  [63:0] io_in_bits_src_0,
  input  [63:0] io_in_bits_src_1,
  input         io_in_bits_uop_ctrl_rfWen,
  input         io_in_bits_uop_ctrl_fpWen,
  input  [5:0]  io_in_bits_uop_pdest,
  input         io_in_bits_uop_robIdx_flag,
  input  [4:0]  io_in_bits_uop_robIdx_value,
  input         io_in_bits_uop_lqIdx_flag,
  input  [3:0]  io_in_bits_uop_lqIdx_value,
  input         io_out_ready,
  output        io_out_valid,
  output [63:0] io_out_bits_data,
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
  input         ctrl_sign,
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
`endif // RANDOMIZE_REG_INIT
  wire  divDataModule_clock; // @[SRT16Divider.scala 450:29]
  wire  divDataModule_reset; // @[SRT16Divider.scala 450:29]
  wire [63:0] divDataModule_io_src_0; // @[SRT16Divider.scala 450:29]
  wire [63:0] divDataModule_io_src_1; // @[SRT16Divider.scala 450:29]
  wire  divDataModule_io_valid; // @[SRT16Divider.scala 450:29]
  wire  divDataModule_io_sign; // @[SRT16Divider.scala 450:29]
  wire  divDataModule_io_kill_w; // @[SRT16Divider.scala 450:29]
  wire  divDataModule_io_kill_r; // @[SRT16Divider.scala 450:29]
  wire  divDataModule_io_isHi; // @[SRT16Divider.scala 450:29]
  wire  divDataModule_io_isW; // @[SRT16Divider.scala 450:29]
  wire  divDataModule_io_in_ready; // @[SRT16Divider.scala 450:29]
  wire  divDataModule_io_out_valid; // @[SRT16Divider.scala 450:29]
  wire [63:0] divDataModule_io_out_data; // @[SRT16Divider.scala 450:29]
  wire  divDataModule_io_out_ready; // @[SRT16Divider.scala 450:29]
  wire  _T = io_in_ready & io_in_valid; // @[Decoupled.scala 50:35]
  reg  uopReg_ctrl_rfWen; // @[Reg.scala 16:16]
  reg  uopReg_ctrl_fpWen; // @[Reg.scala 16:16]
  reg [5:0] uopReg_pdest; // @[Reg.scala 16:16]
  reg  uopReg_robIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] uopReg_robIdx_value; // @[Reg.scala 16:16]
  reg  uopReg_lqIdx_flag; // @[Reg.scala 16:16]
  reg [3:0] uopReg_lqIdx_value; // @[Reg.scala 16:16]
  reg  ctrlReg_isW; // @[Reg.scala 16:16]
  reg  ctrlReg_isHi; // @[Reg.scala 16:16]
  wire [5:0] _kill_wflushItself_T_1 = {io_in_bits_uop_robIdx_flag,io_in_bits_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire [5:0] _kill_wflushItself_T_2 = {io_redirectIn_bits_robIdx_flag,io_redirectIn_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _kill_wflushItself_T_3 = _kill_wflushItself_T_1 == _kill_wflushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  kill_wflushItself = io_redirectIn_bits_level & _kill_wflushItself_T_3; // @[Rob.scala 142:51]
  wire  kill_wdifferentFlag = io_in_bits_uop_robIdx_flag ^ io_redirectIn_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  kill_wcompare = io_in_bits_uop_robIdx_value > io_redirectIn_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _kill_wT = kill_wdifferentFlag ^ kill_wcompare; // @[CircularQueuePtr.scala 68:19]
  wire [5:0] _kill_rflushItself_T_1 = {uopReg_robIdx_flag,uopReg_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _kill_rflushItself_T_3 = _kill_rflushItself_T_1 == _kill_wflushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  kill_rflushItself = io_redirectIn_bits_level & _kill_rflushItself_T_3; // @[Rob.scala 142:51]
  wire  kill_rdifferentFlag = uopReg_robIdx_flag ^ io_redirectIn_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  kill_rcompare = uopReg_robIdx_value > io_redirectIn_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _kill_rT_1 = kill_rdifferentFlag ^ kill_rcompare; // @[CircularQueuePtr.scala 68:19]
  wire  _kill_rT_3 = io_redirectIn_valid & (kill_rflushItself | _kill_rT_1); // @[Rob.scala 143:20]
  SRT16DividerDataModule divDataModule ( // @[SRT16Divider.scala 450:29]
    .clock(divDataModule_clock),
    .reset(divDataModule_reset),
    .io_src_0(divDataModule_io_src_0),
    .io_src_1(divDataModule_io_src_1),
    .io_valid(divDataModule_io_valid),
    .io_sign(divDataModule_io_sign),
    .io_kill_w(divDataModule_io_kill_w),
    .io_kill_r(divDataModule_io_kill_r),
    .io_isHi(divDataModule_io_isHi),
    .io_isW(divDataModule_io_isW),
    .io_in_ready(divDataModule_io_in_ready),
    .io_out_valid(divDataModule_io_out_valid),
    .io_out_data(divDataModule_io_out_data),
    .io_out_ready(divDataModule_io_out_ready)
  );
  assign io_in_ready = divDataModule_io_in_ready; // @[SRT16Divider.scala 465:15]
  assign io_out_valid = divDataModule_io_out_valid; // @[SRT16Divider.scala 466:16]
  assign io_out_bits_data = divDataModule_io_out_data; // @[SRT16Divider.scala 467:20]
  assign io_out_bits_uop_ctrl_rfWen = uopReg_ctrl_rfWen; // @[SRT16Divider.scala 468:19]
  assign io_out_bits_uop_ctrl_fpWen = uopReg_ctrl_fpWen; // @[SRT16Divider.scala 468:19]
  assign io_out_bits_uop_pdest = uopReg_pdest; // @[SRT16Divider.scala 468:19]
  assign io_out_bits_uop_robIdx_flag = uopReg_robIdx_flag; // @[SRT16Divider.scala 468:19]
  assign io_out_bits_uop_robIdx_value = uopReg_robIdx_value; // @[SRT16Divider.scala 468:19]
  assign io_out_bits_uop_lqIdx_flag = uopReg_lqIdx_flag; // @[SRT16Divider.scala 468:19]
  assign io_out_bits_uop_lqIdx_value = uopReg_lqIdx_value; // @[SRT16Divider.scala 468:19]
  assign divDataModule_clock = clock;
  assign divDataModule_reset = reset;
  assign divDataModule_io_src_0 = io_in_bits_src_0; // @[SRT16Divider.scala 455:27]
  assign divDataModule_io_src_1 = io_in_bits_src_1; // @[SRT16Divider.scala 456:27]
  assign divDataModule_io_valid = io_in_valid; // @[SRT16Divider.scala 457:26]
  assign divDataModule_io_sign = ctrl_sign; // @[SRT16Divider.scala 458:25]
  assign divDataModule_io_kill_w = io_redirectIn_valid & (kill_wflushItself | _kill_wT); // @[Rob.scala 143:20]
  assign divDataModule_io_kill_r = ~divDataModule_io_in_ready & _kill_rT_3; // @[SRT16Divider.scala 453:43]
  assign divDataModule_io_isHi = ctrlReg_isHi; // @[SRT16Divider.scala 461:25]
  assign divDataModule_io_isW = ctrlReg_isW; // @[SRT16Divider.scala 462:24]
  assign divDataModule_io_out_ready = io_out_ready; // @[SRT16Divider.scala 463:30]
  always @(posedge clock) begin
    if (_T) begin // @[Reg.scala 17:18]
      uopReg_ctrl_rfWen <= io_in_bits_uop_ctrl_rfWen; // @[Reg.scala 17:22]
    end
    if (_T) begin // @[Reg.scala 17:18]
      uopReg_ctrl_fpWen <= io_in_bits_uop_ctrl_fpWen; // @[Reg.scala 17:22]
    end
    if (_T) begin // @[Reg.scala 17:18]
      uopReg_pdest <= io_in_bits_uop_pdest; // @[Reg.scala 17:22]
    end
    if (_T) begin // @[Reg.scala 17:18]
      uopReg_robIdx_flag <= io_in_bits_uop_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (_T) begin // @[Reg.scala 17:18]
      uopReg_robIdx_value <= io_in_bits_uop_robIdx_value; // @[Reg.scala 17:22]
    end
    if (_T) begin // @[Reg.scala 17:18]
      uopReg_lqIdx_flag <= io_in_bits_uop_lqIdx_flag; // @[Reg.scala 17:22]
    end
    if (_T) begin // @[Reg.scala 17:18]
      uopReg_lqIdx_value <= io_in_bits_uop_lqIdx_value; // @[Reg.scala 17:22]
    end
    if (_T) begin // @[Reg.scala 17:18]
      ctrlReg_isW <= ctrl_isW; // @[Reg.scala 17:22]
    end
    if (_T) begin // @[Reg.scala 17:18]
      ctrlReg_isHi <= ctrl_isHi; // @[Reg.scala 17:22]
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
  uopReg_ctrl_rfWen = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  uopReg_ctrl_fpWen = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  uopReg_pdest = _RAND_2[5:0];
  _RAND_3 = {1{`RANDOM}};
  uopReg_robIdx_flag = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  uopReg_robIdx_value = _RAND_4[4:0];
  _RAND_5 = {1{`RANDOM}};
  uopReg_lqIdx_flag = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  uopReg_lqIdx_value = _RAND_6[3:0];
  _RAND_7 = {1{`RANDOM}};
  ctrlReg_isW = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  ctrlReg_isHi = _RAND_8[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

