module UncacheBufferEntry(
  input         clock,
  input         reset,
  input         io_id,
  input         io_redirect_valid,
  input         io_redirect_bits_robIdx_flag,
  input  [4:0]  io_redirect_bits_robIdx_value,
  input         io_redirect_bits_level,
  input         io_req_valid,
  input         io_req_bits_uop_cf_exceptionVec_4,
  input         io_req_bits_uop_cf_exceptionVec_5,
  input         io_req_bits_uop_cf_exceptionVec_13,
  input         io_req_bits_uop_cf_trigger_backendEn_1,
  input         io_req_bits_uop_cf_trigger_backendHit_0,
  input         io_req_bits_uop_cf_trigger_backendHit_1,
  input         io_req_bits_uop_cf_trigger_backendHit_4,
  input  [6:0]  io_req_bits_uop_ctrl_fuOpType,
  input         io_req_bits_uop_ctrl_rfWen,
  input         io_req_bits_uop_ctrl_fpWen,
  input         io_req_bits_uop_ctrl_replayInst,
  input  [5:0]  io_req_bits_uop_pdest,
  input         io_req_bits_uop_robIdx_flag,
  input  [4:0]  io_req_bits_uop_robIdx_value,
  input         io_req_bits_uop_lqIdx_flag,
  input  [3:0]  io_req_bits_uop_lqIdx_value,
  input  [35:0] io_req_bits_paddr,
  input  [15:0] io_req_bits_mask,
  input         io_req_bits_data_wen_dup_5,
  input         io_ldout_ready,
  output        io_ldout_valid,
  output        io_ldout_bits_uop_cf_exceptionVec_4,
  output        io_ldout_bits_uop_cf_exceptionVec_5,
  output        io_ldout_bits_uop_cf_exceptionVec_13,
  output        io_ldout_bits_uop_cf_trigger_backendEn_1,
  output        io_ldout_bits_uop_cf_trigger_backendHit_0,
  output        io_ldout_bits_uop_cf_trigger_backendHit_1,
  output        io_ldout_bits_uop_cf_trigger_backendHit_4,
  output        io_ldout_bits_uop_ctrl_rfWen,
  output        io_ldout_bits_uop_ctrl_fpWen,
  output        io_ldout_bits_uop_ctrl_replayInst,
  output [5:0]  io_ldout_bits_uop_pdest,
  output        io_ldout_bits_uop_robIdx_flag,
  output [4:0]  io_ldout_bits_uop_robIdx_value,
  output        io_ldout_bits_uop_lqIdx_flag,
  output [3:0]  io_ldout_bits_uop_lqIdx_value,
  output [63:0] io_ld_raw_data_lqData,
  output [6:0]  io_ld_raw_data_uop_ctrl_fuOpType,
  output        io_ld_raw_data_uop_ctrl_fpWen,
  output [2:0]  io_ld_raw_data_addrOffset,
  input         io_rob_pendingld,
  input         io_rob_commit,
  input         io_rob_pendingPtr_flag,
  input  [4:0]  io_rob_pendingPtr_value,
  input         io_uncache_req_ready,
  output        io_uncache_req_valid,
  output [35:0] io_uncache_req_bits_addr,
  output [7:0]  io_uncache_req_bits_mask,
  output [4:0]  io_uncache_req_bits_id,
  output        io_uncache_resp_ready,
  input         io_uncache_resp_valid,
  input  [63:0] io_uncache_resp_bits_data,
  input         io_trigger_hitLoadAddrTriggerHitVec_0,
  input         io_trigger_hitLoadAddrTriggerHitVec_1,
  input         io_trigger_hitLoadAddrTriggerHitVec_2,
  output        io_trigger_lqLoadAddrTriggerHitVec_0,
  output        io_trigger_lqLoadAddrTriggerHitVec_1,
  output        io_trigger_lqLoadAddrTriggerHitVec_2,
  output        io_select,
  output        io_flush,
  output        io_commitFire
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
  reg [63:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [63:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
`endif // RANDOMIZE_REG_INIT
  reg  req_valid; // @[UncacheBuffer.scala 62:26]
  reg  req_uop_cf_exceptionVec_4; // @[UncacheBuffer.scala 63:16]
  reg  req_uop_cf_exceptionVec_5; // @[UncacheBuffer.scala 63:16]
  reg  req_uop_cf_exceptionVec_13; // @[UncacheBuffer.scala 63:16]
  reg  req_uop_cf_trigger_backendEn_1; // @[UncacheBuffer.scala 63:16]
  reg  req_uop_cf_trigger_backendHit_0; // @[UncacheBuffer.scala 63:16]
  reg  req_uop_cf_trigger_backendHit_1; // @[UncacheBuffer.scala 63:16]
  reg  req_uop_cf_trigger_backendHit_4; // @[UncacheBuffer.scala 63:16]
  reg [6:0] req_uop_ctrl_fuOpType; // @[UncacheBuffer.scala 63:16]
  reg  req_uop_ctrl_rfWen; // @[UncacheBuffer.scala 63:16]
  reg  req_uop_ctrl_fpWen; // @[UncacheBuffer.scala 63:16]
  reg  req_uop_ctrl_replayInst; // @[UncacheBuffer.scala 63:16]
  reg [5:0] req_uop_pdest; // @[UncacheBuffer.scala 63:16]
  reg  req_uop_robIdx_flag; // @[UncacheBuffer.scala 63:16]
  reg [4:0] req_uop_robIdx_value; // @[UncacheBuffer.scala 63:16]
  reg  req_uop_lqIdx_flag; // @[UncacheBuffer.scala 63:16]
  reg [3:0] req_uop_lqIdx_value; // @[UncacheBuffer.scala 63:16]
  reg [35:0] req_paddr; // @[UncacheBuffer.scala 63:16]
  reg [15:0] req_mask; // @[UncacheBuffer.scala 63:16]
  reg  triggerResult_0; // @[UncacheBuffer.scala 64:30]
  reg  triggerResult_1; // @[UncacheBuffer.scala 64:30]
  reg  triggerResult_2; // @[UncacheBuffer.scala 64:30]
  reg [1:0] uncacheState; // @[UncacheBuffer.scala 68:29]
  reg  uncacheCommitFired; // @[UncacheBuffer.scala 70:35]
  reg [63:0] uncacheData; // @[UncacheBuffer.scala 71:24]
  wire [5:0] _flushItself_T_1 = {req_uop_robIdx_flag,req_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire [5:0] _flushItself_T_2 = {io_redirect_bits_robIdx_flag,io_redirect_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _flushItself_T_3 = _flushItself_T_1 == _flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  flushItself = io_redirect_bits_level & _flushItself_T_3; // @[Rob.scala 142:51]
  wire  differentFlag = req_uop_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  compare = req_uop_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _T = differentFlag ^ compare; // @[CircularQueuePtr.scala 68:19]
  wire  _T_2 = io_redirect_valid & (flushItself | _T); // @[Rob.scala 143:20]
  wire  _T_4 = io_ldout_ready & io_ldout_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_0 = _T_4 ? 1'h0 : req_valid; // @[UncacheBuffer.scala 80:31 81:15 62:26]
  wire  _GEN_1 = io_req_valid | _GEN_0; // @[UncacheBuffer.scala 76:30 78:15]
  reg  REG__0; // @[UncacheBuffer.scala 92:12]
  reg  REG__1; // @[UncacheBuffer.scala 92:12]
  reg  REG__2; // @[UncacheBuffer.scala 92:12]
  wire  _GEN_419 = uncacheState == 2'h1 ? 1'h0 : uncacheCommitFired; // @[UncacheBuffer.scala 107:33 108:24 70:35]
  wire [5:0] _T_10 = {io_rob_pendingPtr_flag,io_rob_pendingPtr_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _T_11 = _flushItself_T_1 == _T_10; // @[CircularQueuePtr.scala 61:47]
  reg  REG_1; // @[UncacheBuffer.scala 116:20]
  wire  _T_14 = io_uncache_req_ready & io_uncache_req_valid; // @[Decoupled.scala 50:35]
  wire  _T_16 = io_uncache_resp_ready & io_uncache_resp_valid; // @[Decoupled.scala 50:35]
  reg  REG_2; // @[UncacheBuffer.scala 131:20]
  wire [1:0] _GEN_423 = REG_2 ? 2'h0 : uncacheState; // @[UncacheBuffer.scala 131:37 132:22 68:29]
  reg  dummyCtrl; // @[UncacheBuffer.scala 200:26]
  wire  uncacheCommitFire = _T_4 & dummyCtrl; // @[UncacheBuffer.scala 202:23]
  assign io_ldout_valid = uncacheState == 2'h3 & ~uncacheCommitFired; // @[UncacheBuffer.scala 183:60]
  assign io_ldout_bits_uop_cf_exceptionVec_4 = req_uop_cf_exceptionVec_4; // @[UncacheBuffer.scala 185:31]
  assign io_ldout_bits_uop_cf_exceptionVec_5 = req_uop_cf_exceptionVec_5; // @[UncacheBuffer.scala 185:31]
  assign io_ldout_bits_uop_cf_exceptionVec_13 = req_uop_cf_exceptionVec_13; // @[UncacheBuffer.scala 185:31]
  assign io_ldout_bits_uop_cf_trigger_backendEn_1 = req_uop_cf_trigger_backendEn_1; // @[UncacheBuffer.scala 185:31]
  assign io_ldout_bits_uop_cf_trigger_backendHit_0 = req_uop_cf_trigger_backendHit_0; // @[UncacheBuffer.scala 185:31]
  assign io_ldout_bits_uop_cf_trigger_backendHit_1 = req_uop_cf_trigger_backendHit_1; // @[UncacheBuffer.scala 185:31]
  assign io_ldout_bits_uop_cf_trigger_backendHit_4 = req_uop_cf_trigger_backendHit_4; // @[UncacheBuffer.scala 185:31]
  assign io_ldout_bits_uop_ctrl_rfWen = req_uop_ctrl_rfWen; // @[UncacheBuffer.scala 185:31]
  assign io_ldout_bits_uop_ctrl_fpWen = req_uop_ctrl_fpWen; // @[UncacheBuffer.scala 185:31]
  assign io_ldout_bits_uop_ctrl_replayInst = req_uop_ctrl_replayInst; // @[UncacheBuffer.scala 185:31]
  assign io_ldout_bits_uop_pdest = req_uop_pdest; // @[UncacheBuffer.scala 185:31]
  assign io_ldout_bits_uop_robIdx_flag = req_uop_robIdx_flag; // @[UncacheBuffer.scala 185:31]
  assign io_ldout_bits_uop_robIdx_value = req_uop_robIdx_value; // @[UncacheBuffer.scala 185:31]
  assign io_ldout_bits_uop_lqIdx_flag = req_uop_lqIdx_flag; // @[UncacheBuffer.scala 186:31]
  assign io_ldout_bits_uop_lqIdx_value = req_uop_lqIdx_value; // @[UncacheBuffer.scala 186:31]
  assign io_ld_raw_data_lqData = uncacheData; // @[UncacheBuffer.scala 195:29]
  assign io_ld_raw_data_uop_ctrl_fuOpType = req_uop_ctrl_fuOpType; // @[UncacheBuffer.scala 196:29]
  assign io_ld_raw_data_uop_ctrl_fpWen = req_uop_ctrl_fpWen; // @[UncacheBuffer.scala 196:29]
  assign io_ld_raw_data_addrOffset = req_paddr[2:0]; // @[UncacheBuffer.scala 197:29]
  assign io_uncache_req_valid = uncacheState == 2'h1; // @[UncacheBuffer.scala 139:44]
  assign io_uncache_req_bits_addr = req_paddr; // @[UncacheBuffer.scala 143:28]
  assign io_uncache_req_bits_mask = req_paddr[3] ? req_mask[15:8] : req_mask[7:0]; // @[UncacheBuffer.scala 144:34]
  assign io_uncache_req_bits_id = {{4'd0}, io_id}; // @[UncacheBuffer.scala 145:28]
  assign io_uncache_resp_ready = 1'h1; // @[UncacheBuffer.scala 150:25]
  assign io_trigger_lqLoadAddrTriggerHitVec_0 = io_ldout_valid & REG__0; // @[UncacheBuffer.scala 90:44]
  assign io_trigger_lqLoadAddrTriggerHitVec_1 = io_ldout_valid & REG__1; // @[UncacheBuffer.scala 90:44]
  assign io_trigger_lqLoadAddrTriggerHitVec_2 = io_ldout_valid & REG__2; // @[UncacheBuffer.scala 90:44]
  assign io_select = uncacheState != 2'h0; // @[UncacheBuffer.scala 137:29]
  assign io_flush = req_valid & _T_2; // @[UncacheBuffer.scala 96:25]
  assign io_commitFire = _T_4 & dummyCtrl; // @[UncacheBuffer.scala 202:23]
  always @(posedge clock) begin
    if (!(req_valid & _T_2)) begin // @[UncacheBuffer.scala 74:61]
      if (io_req_valid) begin // @[UncacheBuffer.scala 76:30]
        req_uop_cf_exceptionVec_4 <= io_req_bits_uop_cf_exceptionVec_4; // @[UncacheBuffer.scala 79:9]
      end
    end
    if (!(req_valid & _T_2)) begin // @[UncacheBuffer.scala 74:61]
      if (io_req_valid) begin // @[UncacheBuffer.scala 76:30]
        req_uop_cf_exceptionVec_5 <= io_req_bits_uop_cf_exceptionVec_5; // @[UncacheBuffer.scala 79:9]
      end
    end
    if (!(req_valid & _T_2)) begin // @[UncacheBuffer.scala 74:61]
      if (io_req_valid) begin // @[UncacheBuffer.scala 76:30]
        req_uop_cf_exceptionVec_13 <= io_req_bits_uop_cf_exceptionVec_13; // @[UncacheBuffer.scala 79:9]
      end
    end
    if (!(req_valid & _T_2)) begin // @[UncacheBuffer.scala 74:61]
      if (io_req_valid) begin // @[UncacheBuffer.scala 76:30]
        req_uop_cf_trigger_backendEn_1 <= io_req_bits_uop_cf_trigger_backendEn_1; // @[UncacheBuffer.scala 79:9]
      end
    end
    if (!(req_valid & _T_2)) begin // @[UncacheBuffer.scala 74:61]
      if (io_req_valid) begin // @[UncacheBuffer.scala 76:30]
        req_uop_cf_trigger_backendHit_0 <= io_req_bits_uop_cf_trigger_backendHit_0; // @[UncacheBuffer.scala 79:9]
      end
    end
    if (!(req_valid & _T_2)) begin // @[UncacheBuffer.scala 74:61]
      if (io_req_valid) begin // @[UncacheBuffer.scala 76:30]
        req_uop_cf_trigger_backendHit_1 <= io_req_bits_uop_cf_trigger_backendHit_1; // @[UncacheBuffer.scala 79:9]
      end
    end
    if (!(req_valid & _T_2)) begin // @[UncacheBuffer.scala 74:61]
      if (io_req_valid) begin // @[UncacheBuffer.scala 76:30]
        req_uop_cf_trigger_backendHit_4 <= io_req_bits_uop_cf_trigger_backendHit_4; // @[UncacheBuffer.scala 79:9]
      end
    end
    if (!(req_valid & _T_2)) begin // @[UncacheBuffer.scala 74:61]
      if (io_req_valid) begin // @[UncacheBuffer.scala 76:30]
        req_uop_ctrl_fuOpType <= io_req_bits_uop_ctrl_fuOpType; // @[UncacheBuffer.scala 79:9]
      end
    end
    if (!(req_valid & _T_2)) begin // @[UncacheBuffer.scala 74:61]
      if (io_req_valid) begin // @[UncacheBuffer.scala 76:30]
        req_uop_ctrl_rfWen <= io_req_bits_uop_ctrl_rfWen; // @[UncacheBuffer.scala 79:9]
      end
    end
    if (!(req_valid & _T_2)) begin // @[UncacheBuffer.scala 74:61]
      if (io_req_valid) begin // @[UncacheBuffer.scala 76:30]
        req_uop_ctrl_fpWen <= io_req_bits_uop_ctrl_fpWen; // @[UncacheBuffer.scala 79:9]
      end
    end
    if (!(req_valid & _T_2)) begin // @[UncacheBuffer.scala 74:61]
      if (io_req_valid) begin // @[UncacheBuffer.scala 76:30]
        req_uop_ctrl_replayInst <= io_req_bits_uop_ctrl_replayInst; // @[UncacheBuffer.scala 79:9]
      end
    end
    if (!(req_valid & _T_2)) begin // @[UncacheBuffer.scala 74:61]
      if (io_req_valid) begin // @[UncacheBuffer.scala 76:30]
        req_uop_pdest <= io_req_bits_uop_pdest; // @[UncacheBuffer.scala 79:9]
      end
    end
    if (!(req_valid & _T_2)) begin // @[UncacheBuffer.scala 74:61]
      if (io_req_valid) begin // @[UncacheBuffer.scala 76:30]
        req_uop_robIdx_flag <= io_req_bits_uop_robIdx_flag; // @[UncacheBuffer.scala 79:9]
      end
    end
    if (!(req_valid & _T_2)) begin // @[UncacheBuffer.scala 74:61]
      if (io_req_valid) begin // @[UncacheBuffer.scala 76:30]
        req_uop_robIdx_value <= io_req_bits_uop_robIdx_value; // @[UncacheBuffer.scala 79:9]
      end
    end
    if (!(req_valid & _T_2)) begin // @[UncacheBuffer.scala 74:61]
      if (io_req_valid) begin // @[UncacheBuffer.scala 76:30]
        req_uop_lqIdx_flag <= io_req_bits_uop_lqIdx_flag; // @[UncacheBuffer.scala 79:9]
      end
    end
    if (!(req_valid & _T_2)) begin // @[UncacheBuffer.scala 74:61]
      if (io_req_valid) begin // @[UncacheBuffer.scala 76:30]
        req_uop_lqIdx_value <= io_req_bits_uop_lqIdx_value; // @[UncacheBuffer.scala 79:9]
      end
    end
    if (!(req_valid & _T_2)) begin // @[UncacheBuffer.scala 74:61]
      if (io_req_valid) begin // @[UncacheBuffer.scala 76:30]
        req_paddr <= io_req_bits_paddr; // @[UncacheBuffer.scala 79:9]
      end
    end
    if (!(req_valid & _T_2)) begin // @[UncacheBuffer.scala 74:61]
      if (io_req_valid) begin // @[UncacheBuffer.scala 76:30]
        req_mask <= io_req_bits_mask; // @[UncacheBuffer.scala 79:9]
      end
    end
    if (_T_16) begin // @[UncacheBuffer.scala 163:31]
      uncacheData <= io_uncache_resp_bits_data; // @[UncacheBuffer.scala 164:17]
    end
    REG__0 <= triggerResult_0; // @[UncacheBuffer.scala 92:12]
    REG__1 <= triggerResult_1; // @[UncacheBuffer.scala 92:12]
    REG__2 <= triggerResult_2; // @[UncacheBuffer.scala 92:12]
    REG_1 <= io_rob_pendingld & req_valid & _T_11; // @[UncacheBuffer.scala 116:51]
    REG_2 <= io_rob_commit; // @[UncacheBuffer.scala 131:20]
    dummyCtrl <= io_ldout_valid; // @[UncacheBuffer.scala 200:26]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[UncacheBuffer.scala 202:37]
      req_valid <= 1'h0; // @[UncacheBuffer.scala 203:15]
    end else if (uncacheCommitFire) begin // @[UncacheBuffer.scala 74:61]
      req_valid <= 1'h0; // @[UncacheBuffer.scala 75:15]
    end else if (req_valid & _T_2) begin
      req_valid <= 1'h0;
    end else begin
      req_valid <= _GEN_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[UncacheBuffer.scala 84:23]
      triggerResult_0 <= 1'h0; // @[UncacheBuffer.scala 85:40 86:21 64:30]
    end else if (io_req_valid) begin // @[UncacheBuffer.scala 64:30]
      if (io_req_bits_data_wen_dup_5) begin
        triggerResult_0 <= io_trigger_hitLoadAddrTriggerHitVec_0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[UncacheBuffer.scala 84:23]
      triggerResult_1 <= 1'h0; // @[UncacheBuffer.scala 85:40 86:21 64:30]
    end else if (io_req_valid) begin // @[UncacheBuffer.scala 64:30]
      if (io_req_bits_data_wen_dup_5) begin
        triggerResult_1 <= io_trigger_hitLoadAddrTriggerHitVec_1;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[UncacheBuffer.scala 84:23]
      triggerResult_2 <= 1'h0; // @[UncacheBuffer.scala 85:40 86:21 64:30]
    end else if (io_req_valid) begin // @[UncacheBuffer.scala 64:30]
      if (io_req_bits_data_wen_dup_5) begin
        triggerResult_2 <= io_trigger_hitLoadAddrTriggerHitVec_2;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[UncacheBuffer.scala 114:25]
      uncacheState <= 2'h0; // @[UncacheBuffer.scala 116:93 117:22 68:29]
    end else if (2'h0 == uncacheState) begin // @[UncacheBuffer.scala 114:25]
      if (REG_1) begin // @[UncacheBuffer.scala 121:34]
        uncacheState <= 2'h1; // @[UncacheBuffer.scala 122:22]
      end
    end else if (2'h1 == uncacheState) begin // @[UncacheBuffer.scala 114:25]
      if (_T_14) begin // @[UncacheBuffer.scala 126:35]
        uncacheState <= 2'h2; // @[UncacheBuffer.scala 127:22]
      end
    end else if (2'h2 == uncacheState) begin // @[UncacheBuffer.scala 114:25]
      if (_T_16) begin
        uncacheState <= 2'h3;
      end
    end else if (2'h3 == uncacheState) begin // @[UncacheBuffer.scala 68:29]
      uncacheState <= _GEN_423;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[UncacheBuffer.scala 202:37]
      uncacheCommitFired <= 1'h0; // @[UncacheBuffer.scala 205:24]
    end else begin
      uncacheCommitFired <= uncacheCommitFire | _GEN_419;
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
  req_uop_cf_exceptionVec_4 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  req_uop_cf_exceptionVec_5 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  req_uop_cf_exceptionVec_13 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  req_uop_cf_trigger_backendEn_1 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  req_uop_cf_trigger_backendHit_0 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  req_uop_cf_trigger_backendHit_1 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  req_uop_cf_trigger_backendHit_4 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  req_uop_ctrl_fuOpType = _RAND_8[6:0];
  _RAND_9 = {1{`RANDOM}};
  req_uop_ctrl_rfWen = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  req_uop_ctrl_fpWen = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  req_uop_ctrl_replayInst = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  req_uop_pdest = _RAND_12[5:0];
  _RAND_13 = {1{`RANDOM}};
  req_uop_robIdx_flag = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  req_uop_robIdx_value = _RAND_14[4:0];
  _RAND_15 = {1{`RANDOM}};
  req_uop_lqIdx_flag = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  req_uop_lqIdx_value = _RAND_16[3:0];
  _RAND_17 = {2{`RANDOM}};
  req_paddr = _RAND_17[35:0];
  _RAND_18 = {1{`RANDOM}};
  req_mask = _RAND_18[15:0];
  _RAND_19 = {1{`RANDOM}};
  triggerResult_0 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  triggerResult_1 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  triggerResult_2 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  uncacheState = _RAND_22[1:0];
  _RAND_23 = {1{`RANDOM}};
  uncacheCommitFired = _RAND_23[0:0];
  _RAND_24 = {2{`RANDOM}};
  uncacheData = _RAND_24[63:0];
  _RAND_25 = {1{`RANDOM}};
  REG__0 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  REG__1 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  REG__2 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  REG_1 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  REG_2 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  dummyCtrl = _RAND_30[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    req_valid = 1'h0;
  end
  if (reset) begin
    triggerResult_0 = 1'h0;
  end
  if (reset) begin
    triggerResult_1 = 1'h0;
  end
  if (reset) begin
    triggerResult_2 = 1'h0;
  end
  if (reset) begin
    uncacheState = 2'h0;
  end
  if (reset) begin
    uncacheCommitFired = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

