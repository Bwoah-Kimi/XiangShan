module SyncDataModuleTemplate_FtqPC_8entry(
  input         clock,
  input  [2:0]  io_raddr_0,
  input  [2:0]  io_raddr_1,
  input  [2:0]  io_raddr_2,
  input  [2:0]  io_raddr_3,
  input  [2:0]  io_raddr_4,
  input  [2:0]  io_raddr_5,
  output [38:0] io_rdata_0_startAddr,
  output [38:0] io_rdata_1_startAddr,
  output [38:0] io_rdata_1_nextLineAddr,
  output        io_rdata_1_fallThruError,
  output [38:0] io_rdata_2_startAddr,
  output [38:0] io_rdata_2_nextLineAddr,
  output        io_rdata_2_fallThruError,
  output [38:0] io_rdata_3_startAddr,
  output [38:0] io_rdata_4_startAddr,
  output [38:0] io_rdata_5_startAddr,
  input         io_wen_0,
  input  [2:0]  io_waddr_0,
  input  [38:0] io_wdata_0_startAddr,
  input  [38:0] io_wdata_0_nextLineAddr,
  input         io_wdata_0_fallThruError
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
  reg [63:0] _RAND_8;
  reg [63:0] _RAND_9;
  reg [31:0] _RAND_10;
`endif // RANDOMIZE_REG_INIT
  wire  dataBanks_0_clock; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_raddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_raddr_1; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_raddr_2; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_raddr_3; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_raddr_4; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_raddr_5; // @[DataModuleTemplate.scala 120:26]
  wire [38:0] dataBanks_0_io_rdata_0_startAddr; // @[DataModuleTemplate.scala 120:26]
  wire [38:0] dataBanks_0_io_rdata_1_startAddr; // @[DataModuleTemplate.scala 120:26]
  wire [38:0] dataBanks_0_io_rdata_1_nextLineAddr; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_1_fallThruError; // @[DataModuleTemplate.scala 120:26]
  wire [38:0] dataBanks_0_io_rdata_2_startAddr; // @[DataModuleTemplate.scala 120:26]
  wire [38:0] dataBanks_0_io_rdata_2_nextLineAddr; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_2_fallThruError; // @[DataModuleTemplate.scala 120:26]
  wire [38:0] dataBanks_0_io_rdata_3_startAddr; // @[DataModuleTemplate.scala 120:26]
  wire [38:0] dataBanks_0_io_rdata_4_startAddr; // @[DataModuleTemplate.scala 120:26]
  wire [38:0] dataBanks_0_io_rdata_5_startAddr; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wen_0; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_waddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [38:0] dataBanks_0_io_wdata_0_startAddr; // @[DataModuleTemplate.scala 120:26]
  wire [38:0] dataBanks_0_io_wdata_0_nextLineAddr; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_fallThruError; // @[DataModuleTemplate.scala 120:26]
  reg [2:0] raddr_dup__0; // @[DataModuleTemplate.scala 123:28]
  reg [2:0] raddr_dup__1; // @[DataModuleTemplate.scala 123:28]
  reg [2:0] raddr_dup__2; // @[DataModuleTemplate.scala 123:28]
  reg [2:0] raddr_dup__3; // @[DataModuleTemplate.scala 123:28]
  reg [2:0] raddr_dup__4; // @[DataModuleTemplate.scala 123:28]
  reg [2:0] raddr_dup__5; // @[DataModuleTemplate.scala 123:28]
  reg  wen_dup_0; // @[DataModuleTemplate.scala 124:26]
  reg [2:0] waddr_dup_0; // @[Reg.scala 16:16]
  reg [38:0] r_startAddr; // @[Reg.scala 16:16]
  reg [38:0] r_nextLineAddr; // @[Reg.scala 16:16]
  reg  r_fallThruError; // @[Reg.scala 16:16]
  NegedgeDataModule_FtqPC_8entry dataBanks_0 ( // @[DataModuleTemplate.scala 120:26]
    .clock(dataBanks_0_clock),
    .io_raddr_0(dataBanks_0_io_raddr_0),
    .io_raddr_1(dataBanks_0_io_raddr_1),
    .io_raddr_2(dataBanks_0_io_raddr_2),
    .io_raddr_3(dataBanks_0_io_raddr_3),
    .io_raddr_4(dataBanks_0_io_raddr_4),
    .io_raddr_5(dataBanks_0_io_raddr_5),
    .io_rdata_0_startAddr(dataBanks_0_io_rdata_0_startAddr),
    .io_rdata_1_startAddr(dataBanks_0_io_rdata_1_startAddr),
    .io_rdata_1_nextLineAddr(dataBanks_0_io_rdata_1_nextLineAddr),
    .io_rdata_1_fallThruError(dataBanks_0_io_rdata_1_fallThruError),
    .io_rdata_2_startAddr(dataBanks_0_io_rdata_2_startAddr),
    .io_rdata_2_nextLineAddr(dataBanks_0_io_rdata_2_nextLineAddr),
    .io_rdata_2_fallThruError(dataBanks_0_io_rdata_2_fallThruError),
    .io_rdata_3_startAddr(dataBanks_0_io_rdata_3_startAddr),
    .io_rdata_4_startAddr(dataBanks_0_io_rdata_4_startAddr),
    .io_rdata_5_startAddr(dataBanks_0_io_rdata_5_startAddr),
    .io_wen_0(dataBanks_0_io_wen_0),
    .io_waddr_0(dataBanks_0_io_waddr_0),
    .io_wdata_0_startAddr(dataBanks_0_io_wdata_0_startAddr),
    .io_wdata_0_nextLineAddr(dataBanks_0_io_wdata_0_nextLineAddr),
    .io_wdata_0_fallThruError(dataBanks_0_io_wdata_0_fallThruError)
  );
  assign io_rdata_0_startAddr = dataBanks_0_io_rdata_0_startAddr; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_1_startAddr = dataBanks_0_io_rdata_1_startAddr; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_1_nextLineAddr = dataBanks_0_io_rdata_1_nextLineAddr; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_1_fallThruError = dataBanks_0_io_rdata_1_fallThruError; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_startAddr = dataBanks_0_io_rdata_2_startAddr; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_nextLineAddr = dataBanks_0_io_rdata_2_nextLineAddr; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_fallThruError = dataBanks_0_io_rdata_2_fallThruError; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_3_startAddr = dataBanks_0_io_rdata_3_startAddr; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_4_startAddr = dataBanks_0_io_rdata_4_startAddr; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_5_startAddr = dataBanks_0_io_rdata_5_startAddr; // @[DataModuleTemplate.scala 147:17]
  assign dataBanks_0_clock = clock;
  assign dataBanks_0_io_raddr_0 = raddr_dup__0; // @[DataModuleTemplate.scala 128:23]
  assign dataBanks_0_io_raddr_1 = raddr_dup__1; // @[DataModuleTemplate.scala 128:23]
  assign dataBanks_0_io_raddr_2 = raddr_dup__2; // @[DataModuleTemplate.scala 128:23]
  assign dataBanks_0_io_raddr_3 = raddr_dup__3; // @[DataModuleTemplate.scala 128:23]
  assign dataBanks_0_io_raddr_4 = raddr_dup__4; // @[DataModuleTemplate.scala 128:23]
  assign dataBanks_0_io_raddr_5 = raddr_dup__5; // @[DataModuleTemplate.scala 128:23]
  assign dataBanks_0_io_wen_0 = wen_dup_0; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_0_io_waddr_0 = waddr_dup_0; // @[DataModuleTemplate.scala 130:23]
  assign dataBanks_0_io_wdata_0_startAddr = r_startAddr; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_nextLineAddr = r_nextLineAddr; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_fallThruError = r_fallThruError; // @[DataModuleTemplate.scala 136:25]
  always @(posedge clock) begin
    raddr_dup__0 <= io_raddr_0; // @[DataModuleTemplate.scala 123:28]
    raddr_dup__1 <= io_raddr_1; // @[DataModuleTemplate.scala 123:28]
    raddr_dup__2 <= io_raddr_2; // @[DataModuleTemplate.scala 123:28]
    raddr_dup__3 <= io_raddr_3; // @[DataModuleTemplate.scala 123:28]
    raddr_dup__4 <= io_raddr_4; // @[DataModuleTemplate.scala 123:28]
    raddr_dup__5 <= io_raddr_5; // @[DataModuleTemplate.scala 123:28]
    wen_dup_0 <= io_wen_0; // @[DataModuleTemplate.scala 124:26]
    if (io_wen_0) begin // @[Reg.scala 17:18]
      waddr_dup_0 <= io_waddr_0; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_startAddr <= io_wdata_0_startAddr; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_nextLineAddr <= io_wdata_0_nextLineAddr; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_fallThruError <= io_wdata_0_fallThruError; // @[Reg.scala 17:22]
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
  raddr_dup__0 = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  raddr_dup__1 = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  raddr_dup__2 = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  raddr_dup__3 = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  raddr_dup__4 = _RAND_4[2:0];
  _RAND_5 = {1{`RANDOM}};
  raddr_dup__5 = _RAND_5[2:0];
  _RAND_6 = {1{`RANDOM}};
  wen_dup_0 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  waddr_dup_0 = _RAND_7[2:0];
  _RAND_8 = {2{`RANDOM}};
  r_startAddr = _RAND_8[38:0];
  _RAND_9 = {2{`RANDOM}};
  r_nextLineAddr = _RAND_9[38:0];
  _RAND_10 = {1{`RANDOM}};
  r_fallThruError = _RAND_10[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

