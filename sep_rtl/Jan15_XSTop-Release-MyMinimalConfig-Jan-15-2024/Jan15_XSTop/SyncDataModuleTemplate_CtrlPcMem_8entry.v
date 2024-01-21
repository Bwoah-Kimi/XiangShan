module SyncDataModuleTemplate_CtrlPcMem_8entry(
  input         clock,
  input  [2:0]  io_raddr_0,
  input  [2:0]  io_raddr_2,
  input  [2:0]  io_raddr_3,
  input  [2:0]  io_raddr_4,
  input  [2:0]  io_raddr_7,
  output [38:0] io_rdata_0_startAddr,
  output [38:0] io_rdata_0_nextLineAddr,
  output        io_rdata_0_isNextMask_0,
  output        io_rdata_0_isNextMask_1,
  output        io_rdata_0_isNextMask_2,
  output        io_rdata_0_isNextMask_3,
  output        io_rdata_0_isNextMask_4,
  output        io_rdata_0_isNextMask_5,
  output        io_rdata_0_isNextMask_6,
  output        io_rdata_0_isNextMask_7,
  output [38:0] io_rdata_2_startAddr,
  output [38:0] io_rdata_2_nextLineAddr,
  output        io_rdata_2_isNextMask_0,
  output        io_rdata_2_isNextMask_1,
  output        io_rdata_2_isNextMask_2,
  output        io_rdata_2_isNextMask_3,
  output        io_rdata_2_isNextMask_4,
  output        io_rdata_2_isNextMask_5,
  output        io_rdata_2_isNextMask_6,
  output        io_rdata_2_isNextMask_7,
  output [38:0] io_rdata_3_startAddr,
  output [38:0] io_rdata_3_nextLineAddr,
  output        io_rdata_3_isNextMask_0,
  output        io_rdata_3_isNextMask_1,
  output        io_rdata_3_isNextMask_2,
  output        io_rdata_3_isNextMask_3,
  output        io_rdata_3_isNextMask_4,
  output        io_rdata_3_isNextMask_5,
  output        io_rdata_3_isNextMask_6,
  output        io_rdata_3_isNextMask_7,
  output [38:0] io_rdata_4_startAddr,
  output [38:0] io_rdata_7_startAddr,
  output [38:0] io_rdata_7_nextLineAddr,
  output        io_rdata_7_isNextMask_0,
  output        io_rdata_7_isNextMask_1,
  output        io_rdata_7_isNextMask_2,
  output        io_rdata_7_isNextMask_3,
  output        io_rdata_7_isNextMask_4,
  output        io_rdata_7_isNextMask_5,
  output        io_rdata_7_isNextMask_6,
  output        io_rdata_7_isNextMask_7,
  input         io_wen_0,
  input  [2:0]  io_waddr_0,
  input  [38:0] io_wdata_0_startAddr,
  input  [38:0] io_wdata_0_nextLineAddr,
  input         io_wdata_0_isNextMask_0,
  input         io_wdata_0_isNextMask_1,
  input         io_wdata_0_isNextMask_2,
  input         io_wdata_0_isNextMask_3,
  input         io_wdata_0_isNextMask_4,
  input         io_wdata_0_isNextMask_5,
  input         io_wdata_0_isNextMask_6,
  input         io_wdata_0_isNextMask_7
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [63:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
`endif // RANDOMIZE_REG_INIT
  wire  dataBanks_0_clock; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_raddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_raddr_2; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_raddr_3; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_raddr_4; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_raddr_7; // @[DataModuleTemplate.scala 120:26]
  wire [38:0] dataBanks_0_io_rdata_0_startAddr; // @[DataModuleTemplate.scala 120:26]
  wire [38:0] dataBanks_0_io_rdata_0_nextLineAddr; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_isNextMask_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_isNextMask_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_isNextMask_2; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_isNextMask_3; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_isNextMask_4; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_isNextMask_5; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_isNextMask_6; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_isNextMask_7; // @[DataModuleTemplate.scala 120:26]
  wire [38:0] dataBanks_0_io_rdata_2_startAddr; // @[DataModuleTemplate.scala 120:26]
  wire [38:0] dataBanks_0_io_rdata_2_nextLineAddr; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_2_isNextMask_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_2_isNextMask_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_2_isNextMask_2; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_2_isNextMask_3; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_2_isNextMask_4; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_2_isNextMask_5; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_2_isNextMask_6; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_2_isNextMask_7; // @[DataModuleTemplate.scala 120:26]
  wire [38:0] dataBanks_0_io_rdata_3_startAddr; // @[DataModuleTemplate.scala 120:26]
  wire [38:0] dataBanks_0_io_rdata_3_nextLineAddr; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_3_isNextMask_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_3_isNextMask_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_3_isNextMask_2; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_3_isNextMask_3; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_3_isNextMask_4; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_3_isNextMask_5; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_3_isNextMask_6; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_3_isNextMask_7; // @[DataModuleTemplate.scala 120:26]
  wire [38:0] dataBanks_0_io_rdata_4_startAddr; // @[DataModuleTemplate.scala 120:26]
  wire [38:0] dataBanks_0_io_rdata_7_startAddr; // @[DataModuleTemplate.scala 120:26]
  wire [38:0] dataBanks_0_io_rdata_7_nextLineAddr; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_7_isNextMask_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_7_isNextMask_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_7_isNextMask_2; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_7_isNextMask_3; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_7_isNextMask_4; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_7_isNextMask_5; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_7_isNextMask_6; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_7_isNextMask_7; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wen_0; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_waddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [38:0] dataBanks_0_io_wdata_0_startAddr; // @[DataModuleTemplate.scala 120:26]
  wire [38:0] dataBanks_0_io_wdata_0_nextLineAddr; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_isNextMask_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_isNextMask_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_isNextMask_2; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_isNextMask_3; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_isNextMask_4; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_isNextMask_5; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_isNextMask_6; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_isNextMask_7; // @[DataModuleTemplate.scala 120:26]
  reg [2:0] raddr_dup__0; // @[DataModuleTemplate.scala 123:28]
  reg [2:0] raddr_dup__2; // @[DataModuleTemplate.scala 123:28]
  reg [2:0] raddr_dup__3; // @[DataModuleTemplate.scala 123:28]
  reg [2:0] raddr_dup__4; // @[DataModuleTemplate.scala 123:28]
  reg [2:0] raddr_dup__7; // @[DataModuleTemplate.scala 123:28]
  reg  wen_dup_0; // @[DataModuleTemplate.scala 124:26]
  reg [2:0] waddr_dup_0; // @[Reg.scala 16:16]
  reg [38:0] r_startAddr; // @[Reg.scala 16:16]
  reg [38:0] r_nextLineAddr; // @[Reg.scala 16:16]
  reg  r_isNextMask_0; // @[Reg.scala 16:16]
  reg  r_isNextMask_1; // @[Reg.scala 16:16]
  reg  r_isNextMask_2; // @[Reg.scala 16:16]
  reg  r_isNextMask_3; // @[Reg.scala 16:16]
  reg  r_isNextMask_4; // @[Reg.scala 16:16]
  reg  r_isNextMask_5; // @[Reg.scala 16:16]
  reg  r_isNextMask_6; // @[Reg.scala 16:16]
  reg  r_isNextMask_7; // @[Reg.scala 16:16]
  NegedgeDataModule_CtrlPcMem_8entry dataBanks_0 ( // @[DataModuleTemplate.scala 120:26]
    .clock(dataBanks_0_clock),
    .io_raddr_0(dataBanks_0_io_raddr_0),
    .io_raddr_2(dataBanks_0_io_raddr_2),
    .io_raddr_3(dataBanks_0_io_raddr_3),
    .io_raddr_4(dataBanks_0_io_raddr_4),
    .io_raddr_7(dataBanks_0_io_raddr_7),
    .io_rdata_0_startAddr(dataBanks_0_io_rdata_0_startAddr),
    .io_rdata_0_nextLineAddr(dataBanks_0_io_rdata_0_nextLineAddr),
    .io_rdata_0_isNextMask_0(dataBanks_0_io_rdata_0_isNextMask_0),
    .io_rdata_0_isNextMask_1(dataBanks_0_io_rdata_0_isNextMask_1),
    .io_rdata_0_isNextMask_2(dataBanks_0_io_rdata_0_isNextMask_2),
    .io_rdata_0_isNextMask_3(dataBanks_0_io_rdata_0_isNextMask_3),
    .io_rdata_0_isNextMask_4(dataBanks_0_io_rdata_0_isNextMask_4),
    .io_rdata_0_isNextMask_5(dataBanks_0_io_rdata_0_isNextMask_5),
    .io_rdata_0_isNextMask_6(dataBanks_0_io_rdata_0_isNextMask_6),
    .io_rdata_0_isNextMask_7(dataBanks_0_io_rdata_0_isNextMask_7),
    .io_rdata_2_startAddr(dataBanks_0_io_rdata_2_startAddr),
    .io_rdata_2_nextLineAddr(dataBanks_0_io_rdata_2_nextLineAddr),
    .io_rdata_2_isNextMask_0(dataBanks_0_io_rdata_2_isNextMask_0),
    .io_rdata_2_isNextMask_1(dataBanks_0_io_rdata_2_isNextMask_1),
    .io_rdata_2_isNextMask_2(dataBanks_0_io_rdata_2_isNextMask_2),
    .io_rdata_2_isNextMask_3(dataBanks_0_io_rdata_2_isNextMask_3),
    .io_rdata_2_isNextMask_4(dataBanks_0_io_rdata_2_isNextMask_4),
    .io_rdata_2_isNextMask_5(dataBanks_0_io_rdata_2_isNextMask_5),
    .io_rdata_2_isNextMask_6(dataBanks_0_io_rdata_2_isNextMask_6),
    .io_rdata_2_isNextMask_7(dataBanks_0_io_rdata_2_isNextMask_7),
    .io_rdata_3_startAddr(dataBanks_0_io_rdata_3_startAddr),
    .io_rdata_3_nextLineAddr(dataBanks_0_io_rdata_3_nextLineAddr),
    .io_rdata_3_isNextMask_0(dataBanks_0_io_rdata_3_isNextMask_0),
    .io_rdata_3_isNextMask_1(dataBanks_0_io_rdata_3_isNextMask_1),
    .io_rdata_3_isNextMask_2(dataBanks_0_io_rdata_3_isNextMask_2),
    .io_rdata_3_isNextMask_3(dataBanks_0_io_rdata_3_isNextMask_3),
    .io_rdata_3_isNextMask_4(dataBanks_0_io_rdata_3_isNextMask_4),
    .io_rdata_3_isNextMask_5(dataBanks_0_io_rdata_3_isNextMask_5),
    .io_rdata_3_isNextMask_6(dataBanks_0_io_rdata_3_isNextMask_6),
    .io_rdata_3_isNextMask_7(dataBanks_0_io_rdata_3_isNextMask_7),
    .io_rdata_4_startAddr(dataBanks_0_io_rdata_4_startAddr),
    .io_rdata_7_startAddr(dataBanks_0_io_rdata_7_startAddr),
    .io_rdata_7_nextLineAddr(dataBanks_0_io_rdata_7_nextLineAddr),
    .io_rdata_7_isNextMask_0(dataBanks_0_io_rdata_7_isNextMask_0),
    .io_rdata_7_isNextMask_1(dataBanks_0_io_rdata_7_isNextMask_1),
    .io_rdata_7_isNextMask_2(dataBanks_0_io_rdata_7_isNextMask_2),
    .io_rdata_7_isNextMask_3(dataBanks_0_io_rdata_7_isNextMask_3),
    .io_rdata_7_isNextMask_4(dataBanks_0_io_rdata_7_isNextMask_4),
    .io_rdata_7_isNextMask_5(dataBanks_0_io_rdata_7_isNextMask_5),
    .io_rdata_7_isNextMask_6(dataBanks_0_io_rdata_7_isNextMask_6),
    .io_rdata_7_isNextMask_7(dataBanks_0_io_rdata_7_isNextMask_7),
    .io_wen_0(dataBanks_0_io_wen_0),
    .io_waddr_0(dataBanks_0_io_waddr_0),
    .io_wdata_0_startAddr(dataBanks_0_io_wdata_0_startAddr),
    .io_wdata_0_nextLineAddr(dataBanks_0_io_wdata_0_nextLineAddr),
    .io_wdata_0_isNextMask_0(dataBanks_0_io_wdata_0_isNextMask_0),
    .io_wdata_0_isNextMask_1(dataBanks_0_io_wdata_0_isNextMask_1),
    .io_wdata_0_isNextMask_2(dataBanks_0_io_wdata_0_isNextMask_2),
    .io_wdata_0_isNextMask_3(dataBanks_0_io_wdata_0_isNextMask_3),
    .io_wdata_0_isNextMask_4(dataBanks_0_io_wdata_0_isNextMask_4),
    .io_wdata_0_isNextMask_5(dataBanks_0_io_wdata_0_isNextMask_5),
    .io_wdata_0_isNextMask_6(dataBanks_0_io_wdata_0_isNextMask_6),
    .io_wdata_0_isNextMask_7(dataBanks_0_io_wdata_0_isNextMask_7)
  );
  assign io_rdata_0_startAddr = dataBanks_0_io_rdata_0_startAddr; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_nextLineAddr = dataBanks_0_io_rdata_0_nextLineAddr; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_isNextMask_0 = dataBanks_0_io_rdata_0_isNextMask_0; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_isNextMask_1 = dataBanks_0_io_rdata_0_isNextMask_1; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_isNextMask_2 = dataBanks_0_io_rdata_0_isNextMask_2; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_isNextMask_3 = dataBanks_0_io_rdata_0_isNextMask_3; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_isNextMask_4 = dataBanks_0_io_rdata_0_isNextMask_4; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_isNextMask_5 = dataBanks_0_io_rdata_0_isNextMask_5; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_isNextMask_6 = dataBanks_0_io_rdata_0_isNextMask_6; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_isNextMask_7 = dataBanks_0_io_rdata_0_isNextMask_7; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_startAddr = dataBanks_0_io_rdata_2_startAddr; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_nextLineAddr = dataBanks_0_io_rdata_2_nextLineAddr; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_isNextMask_0 = dataBanks_0_io_rdata_2_isNextMask_0; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_isNextMask_1 = dataBanks_0_io_rdata_2_isNextMask_1; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_isNextMask_2 = dataBanks_0_io_rdata_2_isNextMask_2; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_isNextMask_3 = dataBanks_0_io_rdata_2_isNextMask_3; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_isNextMask_4 = dataBanks_0_io_rdata_2_isNextMask_4; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_isNextMask_5 = dataBanks_0_io_rdata_2_isNextMask_5; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_isNextMask_6 = dataBanks_0_io_rdata_2_isNextMask_6; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_isNextMask_7 = dataBanks_0_io_rdata_2_isNextMask_7; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_3_startAddr = dataBanks_0_io_rdata_3_startAddr; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_3_nextLineAddr = dataBanks_0_io_rdata_3_nextLineAddr; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_3_isNextMask_0 = dataBanks_0_io_rdata_3_isNextMask_0; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_3_isNextMask_1 = dataBanks_0_io_rdata_3_isNextMask_1; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_3_isNextMask_2 = dataBanks_0_io_rdata_3_isNextMask_2; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_3_isNextMask_3 = dataBanks_0_io_rdata_3_isNextMask_3; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_3_isNextMask_4 = dataBanks_0_io_rdata_3_isNextMask_4; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_3_isNextMask_5 = dataBanks_0_io_rdata_3_isNextMask_5; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_3_isNextMask_6 = dataBanks_0_io_rdata_3_isNextMask_6; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_3_isNextMask_7 = dataBanks_0_io_rdata_3_isNextMask_7; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_4_startAddr = dataBanks_0_io_rdata_4_startAddr; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_7_startAddr = dataBanks_0_io_rdata_7_startAddr; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_7_nextLineAddr = dataBanks_0_io_rdata_7_nextLineAddr; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_7_isNextMask_0 = dataBanks_0_io_rdata_7_isNextMask_0; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_7_isNextMask_1 = dataBanks_0_io_rdata_7_isNextMask_1; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_7_isNextMask_2 = dataBanks_0_io_rdata_7_isNextMask_2; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_7_isNextMask_3 = dataBanks_0_io_rdata_7_isNextMask_3; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_7_isNextMask_4 = dataBanks_0_io_rdata_7_isNextMask_4; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_7_isNextMask_5 = dataBanks_0_io_rdata_7_isNextMask_5; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_7_isNextMask_6 = dataBanks_0_io_rdata_7_isNextMask_6; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_7_isNextMask_7 = dataBanks_0_io_rdata_7_isNextMask_7; // @[DataModuleTemplate.scala 147:17]
  assign dataBanks_0_clock = clock;
  assign dataBanks_0_io_raddr_0 = raddr_dup__0; // @[DataModuleTemplate.scala 128:23]
  assign dataBanks_0_io_raddr_2 = raddr_dup__2; // @[DataModuleTemplate.scala 128:23]
  assign dataBanks_0_io_raddr_3 = raddr_dup__3; // @[DataModuleTemplate.scala 128:23]
  assign dataBanks_0_io_raddr_4 = raddr_dup__4; // @[DataModuleTemplate.scala 128:23]
  assign dataBanks_0_io_raddr_7 = raddr_dup__7; // @[DataModuleTemplate.scala 128:23]
  assign dataBanks_0_io_wen_0 = wen_dup_0; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_0_io_waddr_0 = waddr_dup_0; // @[DataModuleTemplate.scala 130:23]
  assign dataBanks_0_io_wdata_0_startAddr = r_startAddr; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_nextLineAddr = r_nextLineAddr; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_isNextMask_0 = r_isNextMask_0; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_isNextMask_1 = r_isNextMask_1; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_isNextMask_2 = r_isNextMask_2; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_isNextMask_3 = r_isNextMask_3; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_isNextMask_4 = r_isNextMask_4; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_isNextMask_5 = r_isNextMask_5; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_isNextMask_6 = r_isNextMask_6; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_isNextMask_7 = r_isNextMask_7; // @[DataModuleTemplate.scala 136:25]
  always @(posedge clock) begin
    raddr_dup__0 <= io_raddr_0; // @[DataModuleTemplate.scala 123:28]
    raddr_dup__2 <= io_raddr_2; // @[DataModuleTemplate.scala 123:28]
    raddr_dup__3 <= io_raddr_3; // @[DataModuleTemplate.scala 123:28]
    raddr_dup__4 <= io_raddr_4; // @[DataModuleTemplate.scala 123:28]
    raddr_dup__7 <= io_raddr_7; // @[DataModuleTemplate.scala 123:28]
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
      r_isNextMask_0 <= io_wdata_0_isNextMask_0; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_isNextMask_1 <= io_wdata_0_isNextMask_1; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_isNextMask_2 <= io_wdata_0_isNextMask_2; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_isNextMask_3 <= io_wdata_0_isNextMask_3; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_isNextMask_4 <= io_wdata_0_isNextMask_4; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_isNextMask_5 <= io_wdata_0_isNextMask_5; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_isNextMask_6 <= io_wdata_0_isNextMask_6; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_isNextMask_7 <= io_wdata_0_isNextMask_7; // @[Reg.scala 17:22]
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
  raddr_dup__2 = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  raddr_dup__3 = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  raddr_dup__4 = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  raddr_dup__7 = _RAND_4[2:0];
  _RAND_5 = {1{`RANDOM}};
  wen_dup_0 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  waddr_dup_0 = _RAND_6[2:0];
  _RAND_7 = {2{`RANDOM}};
  r_startAddr = _RAND_7[38:0];
  _RAND_8 = {2{`RANDOM}};
  r_nextLineAddr = _RAND_8[38:0];
  _RAND_9 = {1{`RANDOM}};
  r_isNextMask_0 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  r_isNextMask_1 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  r_isNextMask_2 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  r_isNextMask_3 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  r_isNextMask_4 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  r_isNextMask_5 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  r_isNextMask_6 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  r_isNextMask_7 = _RAND_16[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

