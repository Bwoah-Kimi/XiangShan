module SSIT(
  input        clock,
  input        reset,
  input  [9:0] io_raddr_0,
  input  [9:0] io_raddr_1,
  output       io_rdata_0_valid,
  output [4:0] io_rdata_0_ssid,
  output       io_rdata_0_strict,
  output       io_rdata_1_valid,
  output [4:0] io_rdata_1_ssid,
  output       io_rdata_1_strict,
  input        io_update_valid,
  input  [9:0] io_update_ldpc,
  input  [9:0] io_update_stpc,
  input  [4:0] io_csrCtrl_lvpred_timeout
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
`endif // RANDOMIZE_REG_INIT
  wire  valid_array_clock; // @[StoreSet.scala 76:27]
  wire [9:0] valid_array_io_raddr_0; // @[StoreSet.scala 76:27]
  wire [9:0] valid_array_io_raddr_1; // @[StoreSet.scala 76:27]
  wire  valid_array_io_rdata_0; // @[StoreSet.scala 76:27]
  wire  valid_array_io_rdata_1; // @[StoreSet.scala 76:27]
  wire  valid_array_io_wen_0; // @[StoreSet.scala 76:27]
  wire  valid_array_io_wen_1; // @[StoreSet.scala 76:27]
  wire [9:0] valid_array_io_waddr_0; // @[StoreSet.scala 76:27]
  wire [9:0] valid_array_io_waddr_1; // @[StoreSet.scala 76:27]
  wire  valid_array_io_wdata_0; // @[StoreSet.scala 76:27]
  wire  valid_array_io_wdata_1; // @[StoreSet.scala 76:27]
  wire  data_array_clock; // @[StoreSet.scala 83:26]
  wire [9:0] data_array_io_raddr_0; // @[StoreSet.scala 83:26]
  wire [9:0] data_array_io_raddr_1; // @[StoreSet.scala 83:26]
  wire [4:0] data_array_io_rdata_0_ssid; // @[StoreSet.scala 83:26]
  wire  data_array_io_rdata_0_strict; // @[StoreSet.scala 83:26]
  wire [4:0] data_array_io_rdata_1_ssid; // @[StoreSet.scala 83:26]
  wire  data_array_io_rdata_1_strict; // @[StoreSet.scala 83:26]
  wire  data_array_io_wen_0; // @[StoreSet.scala 83:26]
  wire  data_array_io_wen_1; // @[StoreSet.scala 83:26]
  wire [9:0] data_array_io_waddr_0; // @[StoreSet.scala 83:26]
  wire [9:0] data_array_io_waddr_1; // @[StoreSet.scala 83:26]
  wire [4:0] data_array_io_wdata_0_ssid; // @[StoreSet.scala 83:26]
  wire  data_array_io_wdata_0_strict; // @[StoreSet.scala 83:26]
  wire [4:0] data_array_io_wdata_1_ssid; // @[StoreSet.scala 83:26]
  reg [19:0] resetCounter; // @[StoreSet.scala 109:29]
  wire [19:0] _resetCounter_T_1 = resetCounter + 20'h1; // @[StoreSet.scala 110:32]
  reg [10:0] resetStepCounter; // @[StoreSet.scala 129:33]
  reg  state; // @[StoreSet.scala 131:22]
  reg [4:0] REG; // @[StoreSet.scala 135:72]
  wire [9:0] _T_2 = resetCounter[19:10] >> REG; // @[StoreSet.scala 135:64]
  wire  _GEN_0 = _T_2[0] | state; // @[StoreSet.scala 135:102 136:15 131:22]
  wire [10:0] _resetStepCounter_T_1 = resetStepCounter + 11'h1; // @[StoreSet.scala 145:46]
  wire [10:0] _GEN_1031 = state ? resetStepCounter : 11'h0; // @[StoreSet.scala 133:18 148:50 93:29]
  wire  _GEN_2060 = ~state ? 1'h0 : state; // @[StoreSet.scala 133:18 92:27]
  wire [10:0] _GEN_2061 = ~state ? 11'h0 : _GEN_1031; // @[StoreSet.scala 133:18 93:29]
  reg  s1_mempred_update_req_valid; // @[StoreSet.scala 158:44]
  reg [9:0] s1_mempred_update_req__ldpc; // @[Reg.scala 16:16]
  reg [9:0] s1_mempred_update_req__stpc; // @[Reg.scala 16:16]
  reg  s2_mempred_update_req_valid; // @[StoreSet.scala 183:44]
  reg [9:0] s2_mempred_update_req__ldpc; // @[Reg.scala 16:16]
  reg [9:0] s2_mempred_update_req__stpc; // @[Reg.scala 16:16]
  reg  s2_loadAssigned; // @[Reg.scala 16:16]
  reg  s2_storeAssigned; // @[Reg.scala 16:16]
  reg [4:0] s2_loadOldSSID; // @[Reg.scala 16:16]
  reg [4:0] s2_storeOldSSID; // @[Reg.scala 16:16]
  wire  s2_ssidIsSame = s2_loadOldSSID == s2_storeOldSSID; // @[StoreSet.scala 191:38]
  wire [4:0] s2_ldSsidAllocate = s2_mempred_update_req__ldpc[4:0] ^ s2_mempred_update_req__ldpc[9:5]; // @[ParallelMux.scala 58:52]
  wire [4:0] s2_stSsidAllocate = s2_mempred_update_req__stpc[4:0] ^ s2_mempred_update_req__stpc[9:5]; // @[ParallelMux.scala 58:52]
  wire [4:0] s2_winnerSSID = s2_loadOldSSID < s2_storeOldSSID ? s2_loadOldSSID : s2_storeOldSSID; // @[StoreSet.scala 197:26]
  wire [1:0] _T_10 = {s2_loadAssigned,s2_storeAssigned}; // @[Cat.scala 31:58]
  wire [10:0] _GEN_23586 = 2'h3 == _T_10 ? {{1'd0}, s2_mempred_update_req__ldpc} : _GEN_2061; // @[StoreSet.scala 226:53 201:55]
  wire [9:0] _GEN_23589 = 2'h3 == _T_10 ? s2_mempred_update_req__ldpc : 10'h0; // @[StoreSet.scala 226:53 204:54 96:28]
  wire [4:0] _GEN_23590 = 2'h3 == _T_10 ? s2_winnerSSID : 5'h0; // @[StoreSet.scala 226:53 205:59 97:28]
  wire  _GEN_23591 = 2'h3 == _T_10 & s2_ssidIsSame; // @[StoreSet.scala 226:53 97:28]
  wire [9:0] _GEN_26664 = 2'h3 == _T_10 ? s2_mempred_update_req__stpc : 10'h0; // @[StoreSet.scala 226:53 214:56 93:29]
  wire  _GEN_26667 = 2'h1 == _T_10 | (2'h3 == _T_10 | _GEN_2060); // @[StoreSet.scala 200:53 226:53]
  wire [10:0] _GEN_26668 = 2'h1 == _T_10 ? {{1'd0}, s2_mempred_update_req__ldpc} : _GEN_23586; // @[StoreSet.scala 226:53 201:55]
  wire  _GEN_26669 = 2'h1 == _T_10 | 2'h3 == _T_10; // @[StoreSet.scala 226:53 202:55]
  wire [9:0] _GEN_26671 = 2'h1 == _T_10 ? s2_mempred_update_req__ldpc : _GEN_23589; // @[StoreSet.scala 226:53 204:54]
  wire [4:0] _GEN_26672 = 2'h1 == _T_10 ? s2_ldSsidAllocate : _GEN_23590; // @[StoreSet.scala 226:53 205:59]
  wire  _GEN_26673 = 2'h1 == _T_10 ? 1'h0 : _GEN_23591; // @[StoreSet.scala 226:53 206:61]
  wire  _GEN_29746 = 2'h1 == _T_10 ? 1'h0 : 2'h3 == _T_10; // @[StoreSet.scala 226:53 92:27]
  wire [9:0] _GEN_29747 = 2'h1 == _T_10 ? 10'h0 : _GEN_26664; // @[StoreSet.scala 226:53 93:29]
  wire [4:0] _GEN_29748 = 2'h1 == _T_10 ? 5'h0 : _GEN_23590; // @[StoreSet.scala 226:53 97:28]
  wire [9:0] _GEN_29751 = 2'h2 == _T_10 ? s2_mempred_update_req__stpc : _GEN_29747; // @[StoreSet.scala 226:53 214:56]
  wire [4:0] _GEN_29752 = 2'h2 == _T_10 ? s2_stSsidAllocate : _GEN_29748; // @[StoreSet.scala 226:53 218:60]
  wire  _GEN_32826 = 2'h2 == _T_10 ? _GEN_2060 : _GEN_26667; // @[StoreSet.scala 226:53]
  wire [10:0] _GEN_32827 = 2'h2 == _T_10 ? _GEN_2061 : _GEN_26668; // @[StoreSet.scala 226:53]
  wire  _GEN_32828 = 2'h2 == _T_10 ? 1'h0 : _GEN_26669; // @[StoreSet.scala 226:53]
  wire [9:0] _GEN_32830 = 2'h2 == _T_10 ? 10'h0 : _GEN_26671; // @[StoreSet.scala 226:53 96:28]
  wire [4:0] _GEN_32831 = 2'h2 == _T_10 ? 5'h0 : _GEN_26672; // @[StoreSet.scala 226:53 97:28]
  wire  _GEN_32832 = 2'h2 == _T_10 ? 1'h0 : _GEN_26673; // @[StoreSet.scala 226:53 97:28]
  wire  _GEN_32833 = 2'h0 == _T_10 | _GEN_32826; // @[StoreSet.scala 200:53 226:53]
  wire [10:0] _GEN_32834 = 2'h0 == _T_10 ? {{1'd0}, s2_mempred_update_req__ldpc} : _GEN_32827; // @[StoreSet.scala 226:53 201:55]
  wire  _GEN_32835 = 2'h0 == _T_10 | _GEN_32828; // @[StoreSet.scala 226:53 202:55]
  wire [9:0] _GEN_32837 = 2'h0 == _T_10 ? s2_mempred_update_req__ldpc : _GEN_32830; // @[StoreSet.scala 226:53 204:54]
  wire [4:0] _GEN_32838 = 2'h0 == _T_10 ? s2_ldSsidAllocate : _GEN_32831; // @[StoreSet.scala 226:53 205:59]
  wire  _GEN_32839 = 2'h0 == _T_10 ? 1'h0 : _GEN_32832; // @[StoreSet.scala 226:53 206:61]
  wire  _GEN_35912 = 2'h0 == _T_10 | (2'h2 == _T_10 | _GEN_29746); // @[StoreSet.scala 226:53 213:54]
  wire [9:0] _GEN_35913 = 2'h0 == _T_10 ? s2_mempred_update_req__stpc : _GEN_29751; // @[StoreSet.scala 226:53 214:56]
  wire [4:0] _GEN_35914 = 2'h0 == _T_10 ? s2_stSsidAllocate : _GEN_29752; // @[StoreSet.scala 226:53 218:60]
  wire [10:0] _GEN_35917 = s2_mempred_update_req_valid ? _GEN_32834 : _GEN_2061; // @[StoreSet.scala 225:36]
  wire  _GEN_38995 = s2_mempred_update_req_valid & _GEN_35912; // @[StoreSet.scala 225:36 92:27]
  SyncDataModuleTemplate__1024entry valid_array ( // @[StoreSet.scala 76:27]
    .clock(valid_array_clock),
    .io_raddr_0(valid_array_io_raddr_0),
    .io_raddr_1(valid_array_io_raddr_1),
    .io_rdata_0(valid_array_io_rdata_0),
    .io_rdata_1(valid_array_io_rdata_1),
    .io_wen_0(valid_array_io_wen_0),
    .io_wen_1(valid_array_io_wen_1),
    .io_waddr_0(valid_array_io_waddr_0),
    .io_waddr_1(valid_array_io_waddr_1),
    .io_wdata_0(valid_array_io_wdata_0),
    .io_wdata_1(valid_array_io_wdata_1)
  );
  SyncDataModuleTemplate__1024entry_1 data_array ( // @[StoreSet.scala 83:26]
    .clock(data_array_clock),
    .io_raddr_0(data_array_io_raddr_0),
    .io_raddr_1(data_array_io_raddr_1),
    .io_rdata_0_ssid(data_array_io_rdata_0_ssid),
    .io_rdata_0_strict(data_array_io_rdata_0_strict),
    .io_rdata_1_ssid(data_array_io_rdata_1_ssid),
    .io_rdata_1_strict(data_array_io_rdata_1_strict),
    .io_wen_0(data_array_io_wen_0),
    .io_wen_1(data_array_io_wen_1),
    .io_waddr_0(data_array_io_waddr_0),
    .io_waddr_1(data_array_io_waddr_1),
    .io_wdata_0_ssid(data_array_io_wdata_0_ssid),
    .io_wdata_0_strict(data_array_io_wdata_0_strict),
    .io_wdata_1_ssid(data_array_io_wdata_1_ssid)
  );
  assign io_rdata_0_valid = valid_array_io_rdata_0; // @[StoreSet.scala 122:23]
  assign io_rdata_0_ssid = data_array_io_rdata_0_ssid; // @[StoreSet.scala 123:22]
  assign io_rdata_0_strict = data_array_io_rdata_0_strict; // @[StoreSet.scala 124:24]
  assign io_rdata_1_valid = valid_array_io_rdata_1; // @[StoreSet.scala 122:23]
  assign io_rdata_1_ssid = data_array_io_rdata_1_ssid; // @[StoreSet.scala 123:22]
  assign io_rdata_1_strict = data_array_io_rdata_1_strict; // @[StoreSet.scala 124:24]
  assign valid_array_clock = clock;
  assign valid_array_io_raddr_0 = io_update_valid ? io_update_ldpc : io_raddr_0; // @[StoreSet.scala 162:26 118:29 163:54]
  assign valid_array_io_raddr_1 = io_update_valid ? io_update_stpc : io_raddr_1; // @[StoreSet.scala 162:26 118:29 164:55]
  assign valid_array_io_wen_0 = s2_mempred_update_req_valid ? _GEN_32833 : _GEN_2060; // @[StoreSet.scala 225:36]
  assign valid_array_io_wen_1 = valid_array_io_waddr_0 == valid_array_io_waddr_1 ? 1'h0 : _GEN_38995; // @[StoreSet.scala 288:113 289:54]
  assign valid_array_io_waddr_0 = _GEN_35917[9:0];
  assign valid_array_io_waddr_1 = s2_mempred_update_req_valid ? _GEN_35913 : 10'h0; // @[StoreSet.scala 225:36 93:29]
  assign valid_array_io_wdata_0 = s2_mempred_update_req_valid & _GEN_32835; // @[StoreSet.scala 225:36]
  assign valid_array_io_wdata_1 = s2_mempred_update_req_valid & _GEN_35912; // @[StoreSet.scala 225:36 92:27]
  assign data_array_clock = clock;
  assign data_array_io_raddr_0 = io_update_valid ? io_update_ldpc : io_raddr_0; // @[StoreSet.scala 162:26 118:29 163:54]
  assign data_array_io_raddr_1 = io_update_valid ? io_update_stpc : io_raddr_1; // @[StoreSet.scala 162:26 118:29 164:55]
  assign data_array_io_wen_0 = s2_mempred_update_req_valid & _GEN_32835; // @[StoreSet.scala 225:36 95:26]
  assign data_array_io_wen_1 = data_array_io_waddr_0 == data_array_io_waddr_1 ? 1'h0 : _GEN_38995; // @[StoreSet.scala 292:111 293:53]
  assign data_array_io_waddr_0 = s2_mempred_update_req_valid ? _GEN_32837 : 10'h0; // @[StoreSet.scala 225:36 96:28]
  assign data_array_io_waddr_1 = s2_mempred_update_req_valid ? _GEN_35913 : 10'h0; // @[StoreSet.scala 225:36 93:29]
  assign data_array_io_wdata_0_ssid = s2_mempred_update_req_valid ? _GEN_32838 : 5'h0; // @[StoreSet.scala 225:36 97:28]
  assign data_array_io_wdata_0_strict = s2_mempred_update_req_valid & _GEN_32839; // @[StoreSet.scala 225:36 97:28]
  assign data_array_io_wdata_1_ssid = s2_mempred_update_req_valid ? _GEN_35914 : 5'h0; // @[StoreSet.scala 225:36 97:28]
  always @(posedge clock) begin
    REG <= io_csrCtrl_lvpred_timeout; // @[StoreSet.scala 135:72]
    s1_mempred_update_req_valid <= io_update_valid; // @[StoreSet.scala 158:44]
    if (io_update_valid) begin // @[Reg.scala 17:18]
      s1_mempred_update_req__ldpc <= io_update_ldpc; // @[Reg.scala 17:22]
    end
    if (io_update_valid) begin // @[Reg.scala 17:18]
      s1_mempred_update_req__stpc <= io_update_stpc; // @[Reg.scala 17:22]
    end
    s2_mempred_update_req_valid <= s1_mempred_update_req_valid; // @[StoreSet.scala 183:44]
    if (s1_mempred_update_req_valid) begin // @[Reg.scala 17:18]
      s2_mempred_update_req__ldpc <= s1_mempred_update_req__ldpc; // @[Reg.scala 17:22]
    end
    if (s1_mempred_update_req_valid) begin // @[Reg.scala 17:18]
      s2_mempred_update_req__stpc <= s1_mempred_update_req__stpc; // @[Reg.scala 17:22]
    end
    if (s1_mempred_update_req_valid) begin // @[Reg.scala 17:18]
      s2_loadAssigned <= valid_array_io_rdata_0; // @[Reg.scala 17:22]
    end
    if (s1_mempred_update_req_valid) begin // @[Reg.scala 17:18]
      s2_storeAssigned <= valid_array_io_rdata_1; // @[Reg.scala 17:22]
    end
    if (s1_mempred_update_req_valid) begin // @[Reg.scala 17:18]
      s2_loadOldSSID <= data_array_io_rdata_0_ssid; // @[Reg.scala 17:22]
    end
    if (s1_mempred_update_req_valid) begin // @[Reg.scala 17:18]
      s2_storeOldSSID <= data_array_io_rdata_1_ssid; // @[Reg.scala 17:22]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreSet.scala 133:18]
      resetCounter <= 20'h0; // @[StoreSet.scala 135:102 110:16 137:22]
    end else if (~state) begin // @[StoreSet.scala 110:16]
      if (_T_2[0]) begin
        resetCounter <= 20'h0;
      end else begin
        resetCounter <= _resetCounter_T_1;
      end
    end else begin
      resetCounter <= _resetCounter_T_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreSet.scala 133:18]
      resetStepCounter <= 11'h0; // @[StoreSet.scala 129:33]
    end else if (!(~state)) begin // @[StoreSet.scala 133:18]
      if (state) begin // @[StoreSet.scala 129:33]
        if (resetStepCounter == 11'h3ff) begin
          resetStepCounter <= 11'h0;
        end else begin
          resetStepCounter <= _resetStepCounter_T_1;
        end
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StoreSet.scala 133:18]
      state <= 1'h1;
    end else if (~state) begin // @[StoreSet.scala 133:18]
      state <= _GEN_0; // @[StoreSet.scala 141:51 142:15 131:22]
    end else if (state) begin // @[StoreSet.scala 131:22]
      if (resetStepCounter == 11'h3ff) begin
        state <= 1'h0;
      end
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
  resetCounter = _RAND_0[19:0];
  _RAND_1 = {1{`RANDOM}};
  resetStepCounter = _RAND_1[10:0];
  _RAND_2 = {1{`RANDOM}};
  state = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  REG = _RAND_3[4:0];
  _RAND_4 = {1{`RANDOM}};
  s1_mempred_update_req_valid = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  s1_mempred_update_req__ldpc = _RAND_5[9:0];
  _RAND_6 = {1{`RANDOM}};
  s1_mempred_update_req__stpc = _RAND_6[9:0];
  _RAND_7 = {1{`RANDOM}};
  s2_mempred_update_req_valid = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  s2_mempred_update_req__ldpc = _RAND_8[9:0];
  _RAND_9 = {1{`RANDOM}};
  s2_mempred_update_req__stpc = _RAND_9[9:0];
  _RAND_10 = {1{`RANDOM}};
  s2_loadAssigned = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  s2_storeAssigned = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  s2_loadOldSSID = _RAND_12[4:0];
  _RAND_13 = {1{`RANDOM}};
  s2_storeOldSSID = _RAND_13[4:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    resetCounter = 20'h0;
  end
  if (reset) begin
    resetStepCounter = 11'h0;
  end
  if (reset) begin
    state = 1'h1;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

