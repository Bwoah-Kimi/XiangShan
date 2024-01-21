module FtqPcMemWrapper(
  input         clock,
  input  [2:0]  io_ifuPtr_wvalue,
  input  [2:0]  io_ifuPtrPlus1_wvalue,
  input  [2:0]  io_ifuPtrPlus2_wvalue,
  input  [2:0]  io_commPtr_wvalue,
  input  [2:0]  io_commPtrPlus1_wvalue,
  output [38:0] io_ifuPtr_rdata_startAddr,
  output [38:0] io_ifuPtr_rdata_nextLineAddr,
  output        io_ifuPtr_rdata_fallThruError,
  output [38:0] io_ifuPtrPlus1_rdata_startAddr,
  output [38:0] io_ifuPtrPlus1_rdata_nextLineAddr,
  output        io_ifuPtrPlus1_rdata_fallThruError,
  output [38:0] io_ifuPtrPlus2_rdata_startAddr,
  output [38:0] io_commPtr_rdata_startAddr,
  output [38:0] io_commPtrPlus1_rdata_startAddr,
  input  [2:0]  io_other_raddrs_0,
  output [38:0] io_other_rdatas_0_startAddr,
  input         io_wen,
  input  [2:0]  io_waddr,
  input  [38:0] io_wdata_startAddr,
  input  [38:0] io_wdata_nextLineAddr,
  input         io_wdata_isNextMask_0,
  input         io_wdata_isNextMask_1,
  input         io_wdata_isNextMask_2,
  input         io_wdata_isNextMask_3,
  input         io_wdata_isNextMask_4,
  input         io_wdata_isNextMask_5,
  input         io_wdata_isNextMask_6,
  input         io_wdata_isNextMask_7,
  input         io_wdata_fallThruError
);
  wire  mem_clock; // @[NewFtq.scala 421:19]
  wire [2:0] mem_io_raddr_0; // @[NewFtq.scala 421:19]
  wire [2:0] mem_io_raddr_1; // @[NewFtq.scala 421:19]
  wire [2:0] mem_io_raddr_2; // @[NewFtq.scala 421:19]
  wire [2:0] mem_io_raddr_3; // @[NewFtq.scala 421:19]
  wire [2:0] mem_io_raddr_4; // @[NewFtq.scala 421:19]
  wire [2:0] mem_io_raddr_5; // @[NewFtq.scala 421:19]
  wire [38:0] mem_io_rdata_0_startAddr; // @[NewFtq.scala 421:19]
  wire [38:0] mem_io_rdata_1_startAddr; // @[NewFtq.scala 421:19]
  wire [38:0] mem_io_rdata_1_nextLineAddr; // @[NewFtq.scala 421:19]
  wire  mem_io_rdata_1_fallThruError; // @[NewFtq.scala 421:19]
  wire [38:0] mem_io_rdata_2_startAddr; // @[NewFtq.scala 421:19]
  wire [38:0] mem_io_rdata_2_nextLineAddr; // @[NewFtq.scala 421:19]
  wire  mem_io_rdata_2_fallThruError; // @[NewFtq.scala 421:19]
  wire [38:0] mem_io_rdata_3_startAddr; // @[NewFtq.scala 421:19]
  wire [38:0] mem_io_rdata_4_startAddr; // @[NewFtq.scala 421:19]
  wire [38:0] mem_io_rdata_5_startAddr; // @[NewFtq.scala 421:19]
  wire  mem_io_wen_0; // @[NewFtq.scala 421:19]
  wire [2:0] mem_io_waddr_0; // @[NewFtq.scala 421:19]
  wire [38:0] mem_io_wdata_0_startAddr; // @[NewFtq.scala 421:19]
  wire [38:0] mem_io_wdata_0_nextLineAddr; // @[NewFtq.scala 421:19]
  wire  mem_io_wdata_0_fallThruError; // @[NewFtq.scala 421:19]
  SyncDataModuleTemplate_FtqPC_8entry mem ( // @[NewFtq.scala 421:19]
    .clock(mem_clock),
    .io_raddr_0(mem_io_raddr_0),
    .io_raddr_1(mem_io_raddr_1),
    .io_raddr_2(mem_io_raddr_2),
    .io_raddr_3(mem_io_raddr_3),
    .io_raddr_4(mem_io_raddr_4),
    .io_raddr_5(mem_io_raddr_5),
    .io_rdata_0_startAddr(mem_io_rdata_0_startAddr),
    .io_rdata_1_startAddr(mem_io_rdata_1_startAddr),
    .io_rdata_1_nextLineAddr(mem_io_rdata_1_nextLineAddr),
    .io_rdata_1_fallThruError(mem_io_rdata_1_fallThruError),
    .io_rdata_2_startAddr(mem_io_rdata_2_startAddr),
    .io_rdata_2_nextLineAddr(mem_io_rdata_2_nextLineAddr),
    .io_rdata_2_fallThruError(mem_io_rdata_2_fallThruError),
    .io_rdata_3_startAddr(mem_io_rdata_3_startAddr),
    .io_rdata_4_startAddr(mem_io_rdata_4_startAddr),
    .io_rdata_5_startAddr(mem_io_rdata_5_startAddr),
    .io_wen_0(mem_io_wen_0),
    .io_waddr_0(mem_io_waddr_0),
    .io_wdata_0_startAddr(mem_io_wdata_0_startAddr),
    .io_wdata_0_nextLineAddr(mem_io_wdata_0_nextLineAddr),
    .io_wdata_0_fallThruError(mem_io_wdata_0_fallThruError)
  );
  assign io_ifuPtr_rdata_startAddr = mem_io_rdata_1_startAddr; // @[NewFtq.scala 434:25]
  assign io_ifuPtr_rdata_nextLineAddr = mem_io_rdata_1_nextLineAddr; // @[NewFtq.scala 434:25]
  assign io_ifuPtr_rdata_fallThruError = mem_io_rdata_1_fallThruError; // @[NewFtq.scala 434:25]
  assign io_ifuPtrPlus1_rdata_startAddr = mem_io_rdata_2_startAddr; // @[NewFtq.scala 435:25]
  assign io_ifuPtrPlus1_rdata_nextLineAddr = mem_io_rdata_2_nextLineAddr; // @[NewFtq.scala 435:25]
  assign io_ifuPtrPlus1_rdata_fallThruError = mem_io_rdata_2_fallThruError; // @[NewFtq.scala 435:25]
  assign io_ifuPtrPlus2_rdata_startAddr = mem_io_rdata_3_startAddr; // @[NewFtq.scala 436:25]
  assign io_commPtr_rdata_startAddr = mem_io_rdata_5_startAddr; // @[NewFtq.scala 438:25]
  assign io_commPtrPlus1_rdata_startAddr = mem_io_rdata_4_startAddr; // @[NewFtq.scala 437:25]
  assign io_other_rdatas_0_startAddr = mem_io_rdata_0_startAddr; // @[NewFtq.scala 433:25]
  assign mem_clock = clock;
  assign mem_io_raddr_0 = io_other_raddrs_0; // @[NewFtq.scala 428:{26,26}]
  assign mem_io_raddr_1 = io_ifuPtr_wvalue; // @[NewFtq.scala 428:{26,26}]
  assign mem_io_raddr_2 = io_ifuPtrPlus1_wvalue; // @[NewFtq.scala 428:{26,26}]
  assign mem_io_raddr_3 = io_ifuPtrPlus2_wvalue; // @[NewFtq.scala 428:{26,26}]
  assign mem_io_raddr_4 = io_commPtrPlus1_wvalue; // @[NewFtq.scala 428:{26,26}]
  assign mem_io_raddr_5 = io_commPtr_wvalue; // @[NewFtq.scala 428:{26,26}]
  assign mem_io_wen_0 = io_wen; // @[NewFtq.scala 423:19]
  assign mem_io_waddr_0 = io_waddr; // @[NewFtq.scala 424:19]
  assign mem_io_wdata_0_startAddr = io_wdata_startAddr; // @[NewFtq.scala 425:19]
  assign mem_io_wdata_0_nextLineAddr = io_wdata_nextLineAddr; // @[NewFtq.scala 425:19]
  assign mem_io_wdata_0_fallThruError = io_wdata_fallThruError; // @[NewFtq.scala 425:19]
endmodule

