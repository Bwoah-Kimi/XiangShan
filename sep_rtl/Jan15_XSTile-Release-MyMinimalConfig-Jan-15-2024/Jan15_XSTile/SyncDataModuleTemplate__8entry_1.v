module SyncDataModuleTemplate__8entry_1(
  input         clock,
  input  [2:0]  io_raddr_0,
  output        io_rdata_0_brMask_0,
  output        io_rdata_0_brMask_1,
  output        io_rdata_0_brMask_2,
  output        io_rdata_0_brMask_3,
  output        io_rdata_0_brMask_4,
  output        io_rdata_0_brMask_5,
  output        io_rdata_0_brMask_6,
  output        io_rdata_0_brMask_7,
  output        io_rdata_0_jmpInfo_valid,
  output        io_rdata_0_jmpInfo_bits_0,
  output        io_rdata_0_jmpInfo_bits_1,
  output        io_rdata_0_jmpInfo_bits_2,
  output [2:0]  io_rdata_0_jmpOffset,
  output [38:0] io_rdata_0_jalTarget,
  output        io_rdata_0_rvcMask_0,
  output        io_rdata_0_rvcMask_1,
  output        io_rdata_0_rvcMask_2,
  output        io_rdata_0_rvcMask_3,
  output        io_rdata_0_rvcMask_4,
  output        io_rdata_0_rvcMask_5,
  output        io_rdata_0_rvcMask_6,
  output        io_rdata_0_rvcMask_7,
  input         io_wen_0,
  input  [2:0]  io_waddr_0,
  input         io_wdata_0_brMask_0,
  input         io_wdata_0_brMask_1,
  input         io_wdata_0_brMask_2,
  input         io_wdata_0_brMask_3,
  input         io_wdata_0_brMask_4,
  input         io_wdata_0_brMask_5,
  input         io_wdata_0_brMask_6,
  input         io_wdata_0_brMask_7,
  input         io_wdata_0_jmpInfo_valid,
  input         io_wdata_0_jmpInfo_bits_0,
  input         io_wdata_0_jmpInfo_bits_1,
  input         io_wdata_0_jmpInfo_bits_2,
  input  [2:0]  io_wdata_0_jmpOffset,
  input  [38:0] io_wdata_0_jalTarget,
  input         io_wdata_0_rvcMask_0,
  input         io_wdata_0_rvcMask_1,
  input         io_wdata_0_rvcMask_2,
  input         io_wdata_0_rvcMask_3,
  input         io_wdata_0_rvcMask_4,
  input         io_wdata_0_rvcMask_5,
  input         io_wdata_0_rvcMask_6,
  input         io_wdata_0_rvcMask_7
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
  reg [63:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
`endif // RANDOMIZE_REG_INIT
  wire  dataBanks_0_clock; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_raddr_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_brMask_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_brMask_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_brMask_2; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_brMask_3; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_brMask_4; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_brMask_5; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_brMask_6; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_brMask_7; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_jmpInfo_valid; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_jmpInfo_bits_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_jmpInfo_bits_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_jmpInfo_bits_2; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_rdata_0_jmpOffset; // @[DataModuleTemplate.scala 120:26]
  wire [38:0] dataBanks_0_io_rdata_0_jalTarget; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_rvcMask_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_rvcMask_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_rvcMask_2; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_rvcMask_3; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_rvcMask_4; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_rvcMask_5; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_rvcMask_6; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_rvcMask_7; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wen_0; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_waddr_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_brMask_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_brMask_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_brMask_2; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_brMask_3; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_brMask_4; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_brMask_5; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_brMask_6; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_brMask_7; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_jmpInfo_valid; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_jmpInfo_bits_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_jmpInfo_bits_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_jmpInfo_bits_2; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_wdata_0_jmpOffset; // @[DataModuleTemplate.scala 120:26]
  wire [38:0] dataBanks_0_io_wdata_0_jalTarget; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_rvcMask_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_rvcMask_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_rvcMask_2; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_rvcMask_3; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_rvcMask_4; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_rvcMask_5; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_rvcMask_6; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_rvcMask_7; // @[DataModuleTemplate.scala 120:26]
  reg [2:0] raddr_dup_0; // @[DataModuleTemplate.scala 123:28]
  reg  wen_dup_0; // @[DataModuleTemplate.scala 124:26]
  reg [2:0] waddr_dup_0; // @[Reg.scala 16:16]
  reg  r_brMask_0; // @[Reg.scala 16:16]
  reg  r_brMask_1; // @[Reg.scala 16:16]
  reg  r_brMask_2; // @[Reg.scala 16:16]
  reg  r_brMask_3; // @[Reg.scala 16:16]
  reg  r_brMask_4; // @[Reg.scala 16:16]
  reg  r_brMask_5; // @[Reg.scala 16:16]
  reg  r_brMask_6; // @[Reg.scala 16:16]
  reg  r_brMask_7; // @[Reg.scala 16:16]
  reg  r_jmpInfo_valid; // @[Reg.scala 16:16]
  reg  r_jmpInfo_bits_0; // @[Reg.scala 16:16]
  reg  r_jmpInfo_bits_1; // @[Reg.scala 16:16]
  reg  r_jmpInfo_bits_2; // @[Reg.scala 16:16]
  reg [2:0] r_jmpOffset; // @[Reg.scala 16:16]
  reg [38:0] r_jalTarget; // @[Reg.scala 16:16]
  reg  r_rvcMask_0; // @[Reg.scala 16:16]
  reg  r_rvcMask_1; // @[Reg.scala 16:16]
  reg  r_rvcMask_2; // @[Reg.scala 16:16]
  reg  r_rvcMask_3; // @[Reg.scala 16:16]
  reg  r_rvcMask_4; // @[Reg.scala 16:16]
  reg  r_rvcMask_5; // @[Reg.scala 16:16]
  reg  r_rvcMask_6; // @[Reg.scala 16:16]
  reg  r_rvcMask_7; // @[Reg.scala 16:16]
  NegedgeDataModule__8entry_1 dataBanks_0 ( // @[DataModuleTemplate.scala 120:26]
    .clock(dataBanks_0_clock),
    .io_raddr_0(dataBanks_0_io_raddr_0),
    .io_rdata_0_brMask_0(dataBanks_0_io_rdata_0_brMask_0),
    .io_rdata_0_brMask_1(dataBanks_0_io_rdata_0_brMask_1),
    .io_rdata_0_brMask_2(dataBanks_0_io_rdata_0_brMask_2),
    .io_rdata_0_brMask_3(dataBanks_0_io_rdata_0_brMask_3),
    .io_rdata_0_brMask_4(dataBanks_0_io_rdata_0_brMask_4),
    .io_rdata_0_brMask_5(dataBanks_0_io_rdata_0_brMask_5),
    .io_rdata_0_brMask_6(dataBanks_0_io_rdata_0_brMask_6),
    .io_rdata_0_brMask_7(dataBanks_0_io_rdata_0_brMask_7),
    .io_rdata_0_jmpInfo_valid(dataBanks_0_io_rdata_0_jmpInfo_valid),
    .io_rdata_0_jmpInfo_bits_0(dataBanks_0_io_rdata_0_jmpInfo_bits_0),
    .io_rdata_0_jmpInfo_bits_1(dataBanks_0_io_rdata_0_jmpInfo_bits_1),
    .io_rdata_0_jmpInfo_bits_2(dataBanks_0_io_rdata_0_jmpInfo_bits_2),
    .io_rdata_0_jmpOffset(dataBanks_0_io_rdata_0_jmpOffset),
    .io_rdata_0_jalTarget(dataBanks_0_io_rdata_0_jalTarget),
    .io_rdata_0_rvcMask_0(dataBanks_0_io_rdata_0_rvcMask_0),
    .io_rdata_0_rvcMask_1(dataBanks_0_io_rdata_0_rvcMask_1),
    .io_rdata_0_rvcMask_2(dataBanks_0_io_rdata_0_rvcMask_2),
    .io_rdata_0_rvcMask_3(dataBanks_0_io_rdata_0_rvcMask_3),
    .io_rdata_0_rvcMask_4(dataBanks_0_io_rdata_0_rvcMask_4),
    .io_rdata_0_rvcMask_5(dataBanks_0_io_rdata_0_rvcMask_5),
    .io_rdata_0_rvcMask_6(dataBanks_0_io_rdata_0_rvcMask_6),
    .io_rdata_0_rvcMask_7(dataBanks_0_io_rdata_0_rvcMask_7),
    .io_wen_0(dataBanks_0_io_wen_0),
    .io_waddr_0(dataBanks_0_io_waddr_0),
    .io_wdata_0_brMask_0(dataBanks_0_io_wdata_0_brMask_0),
    .io_wdata_0_brMask_1(dataBanks_0_io_wdata_0_brMask_1),
    .io_wdata_0_brMask_2(dataBanks_0_io_wdata_0_brMask_2),
    .io_wdata_0_brMask_3(dataBanks_0_io_wdata_0_brMask_3),
    .io_wdata_0_brMask_4(dataBanks_0_io_wdata_0_brMask_4),
    .io_wdata_0_brMask_5(dataBanks_0_io_wdata_0_brMask_5),
    .io_wdata_0_brMask_6(dataBanks_0_io_wdata_0_brMask_6),
    .io_wdata_0_brMask_7(dataBanks_0_io_wdata_0_brMask_7),
    .io_wdata_0_jmpInfo_valid(dataBanks_0_io_wdata_0_jmpInfo_valid),
    .io_wdata_0_jmpInfo_bits_0(dataBanks_0_io_wdata_0_jmpInfo_bits_0),
    .io_wdata_0_jmpInfo_bits_1(dataBanks_0_io_wdata_0_jmpInfo_bits_1),
    .io_wdata_0_jmpInfo_bits_2(dataBanks_0_io_wdata_0_jmpInfo_bits_2),
    .io_wdata_0_jmpOffset(dataBanks_0_io_wdata_0_jmpOffset),
    .io_wdata_0_jalTarget(dataBanks_0_io_wdata_0_jalTarget),
    .io_wdata_0_rvcMask_0(dataBanks_0_io_wdata_0_rvcMask_0),
    .io_wdata_0_rvcMask_1(dataBanks_0_io_wdata_0_rvcMask_1),
    .io_wdata_0_rvcMask_2(dataBanks_0_io_wdata_0_rvcMask_2),
    .io_wdata_0_rvcMask_3(dataBanks_0_io_wdata_0_rvcMask_3),
    .io_wdata_0_rvcMask_4(dataBanks_0_io_wdata_0_rvcMask_4),
    .io_wdata_0_rvcMask_5(dataBanks_0_io_wdata_0_rvcMask_5),
    .io_wdata_0_rvcMask_6(dataBanks_0_io_wdata_0_rvcMask_6),
    .io_wdata_0_rvcMask_7(dataBanks_0_io_wdata_0_rvcMask_7)
  );
  assign io_rdata_0_brMask_0 = dataBanks_0_io_rdata_0_brMask_0; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_brMask_1 = dataBanks_0_io_rdata_0_brMask_1; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_brMask_2 = dataBanks_0_io_rdata_0_brMask_2; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_brMask_3 = dataBanks_0_io_rdata_0_brMask_3; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_brMask_4 = dataBanks_0_io_rdata_0_brMask_4; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_brMask_5 = dataBanks_0_io_rdata_0_brMask_5; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_brMask_6 = dataBanks_0_io_rdata_0_brMask_6; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_brMask_7 = dataBanks_0_io_rdata_0_brMask_7; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_jmpInfo_valid = dataBanks_0_io_rdata_0_jmpInfo_valid; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_jmpInfo_bits_0 = dataBanks_0_io_rdata_0_jmpInfo_bits_0; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_jmpInfo_bits_1 = dataBanks_0_io_rdata_0_jmpInfo_bits_1; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_jmpInfo_bits_2 = dataBanks_0_io_rdata_0_jmpInfo_bits_2; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_jmpOffset = dataBanks_0_io_rdata_0_jmpOffset; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_jalTarget = dataBanks_0_io_rdata_0_jalTarget; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_rvcMask_0 = dataBanks_0_io_rdata_0_rvcMask_0; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_rvcMask_1 = dataBanks_0_io_rdata_0_rvcMask_1; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_rvcMask_2 = dataBanks_0_io_rdata_0_rvcMask_2; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_rvcMask_3 = dataBanks_0_io_rdata_0_rvcMask_3; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_rvcMask_4 = dataBanks_0_io_rdata_0_rvcMask_4; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_rvcMask_5 = dataBanks_0_io_rdata_0_rvcMask_5; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_rvcMask_6 = dataBanks_0_io_rdata_0_rvcMask_6; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_rvcMask_7 = dataBanks_0_io_rdata_0_rvcMask_7; // @[DataModuleTemplate.scala 147:17]
  assign dataBanks_0_clock = clock;
  assign dataBanks_0_io_raddr_0 = raddr_dup_0; // @[DataModuleTemplate.scala 128:23]
  assign dataBanks_0_io_wen_0 = wen_dup_0; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_0_io_waddr_0 = waddr_dup_0; // @[DataModuleTemplate.scala 130:23]
  assign dataBanks_0_io_wdata_0_brMask_0 = r_brMask_0; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_brMask_1 = r_brMask_1; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_brMask_2 = r_brMask_2; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_brMask_3 = r_brMask_3; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_brMask_4 = r_brMask_4; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_brMask_5 = r_brMask_5; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_brMask_6 = r_brMask_6; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_brMask_7 = r_brMask_7; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_jmpInfo_valid = r_jmpInfo_valid; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_jmpInfo_bits_0 = r_jmpInfo_bits_0; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_jmpInfo_bits_1 = r_jmpInfo_bits_1; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_jmpInfo_bits_2 = r_jmpInfo_bits_2; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_jmpOffset = r_jmpOffset; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_jalTarget = r_jalTarget; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_rvcMask_0 = r_rvcMask_0; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_rvcMask_1 = r_rvcMask_1; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_rvcMask_2 = r_rvcMask_2; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_rvcMask_3 = r_rvcMask_3; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_rvcMask_4 = r_rvcMask_4; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_rvcMask_5 = r_rvcMask_5; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_rvcMask_6 = r_rvcMask_6; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_rvcMask_7 = r_rvcMask_7; // @[DataModuleTemplate.scala 136:25]
  always @(posedge clock) begin
    raddr_dup_0 <= io_raddr_0; // @[DataModuleTemplate.scala 123:28]
    wen_dup_0 <= io_wen_0; // @[DataModuleTemplate.scala 124:26]
    if (io_wen_0) begin // @[Reg.scala 17:18]
      waddr_dup_0 <= io_waddr_0; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_brMask_0 <= io_wdata_0_brMask_0; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_brMask_1 <= io_wdata_0_brMask_1; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_brMask_2 <= io_wdata_0_brMask_2; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_brMask_3 <= io_wdata_0_brMask_3; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_brMask_4 <= io_wdata_0_brMask_4; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_brMask_5 <= io_wdata_0_brMask_5; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_brMask_6 <= io_wdata_0_brMask_6; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_brMask_7 <= io_wdata_0_brMask_7; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_jmpInfo_valid <= io_wdata_0_jmpInfo_valid; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_jmpInfo_bits_0 <= io_wdata_0_jmpInfo_bits_0; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_jmpInfo_bits_1 <= io_wdata_0_jmpInfo_bits_1; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_jmpInfo_bits_2 <= io_wdata_0_jmpInfo_bits_2; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_jmpOffset <= io_wdata_0_jmpOffset; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_jalTarget <= io_wdata_0_jalTarget; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_rvcMask_0 <= io_wdata_0_rvcMask_0; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_rvcMask_1 <= io_wdata_0_rvcMask_1; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_rvcMask_2 <= io_wdata_0_rvcMask_2; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_rvcMask_3 <= io_wdata_0_rvcMask_3; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_rvcMask_4 <= io_wdata_0_rvcMask_4; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_rvcMask_5 <= io_wdata_0_rvcMask_5; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_rvcMask_6 <= io_wdata_0_rvcMask_6; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_rvcMask_7 <= io_wdata_0_rvcMask_7; // @[Reg.scala 17:22]
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
  raddr_dup_0 = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  wen_dup_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  waddr_dup_0 = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  r_brMask_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  r_brMask_1 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  r_brMask_2 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  r_brMask_3 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  r_brMask_4 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  r_brMask_5 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  r_brMask_6 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  r_brMask_7 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  r_jmpInfo_valid = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  r_jmpInfo_bits_0 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  r_jmpInfo_bits_1 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  r_jmpInfo_bits_2 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  r_jmpOffset = _RAND_15[2:0];
  _RAND_16 = {2{`RANDOM}};
  r_jalTarget = _RAND_16[38:0];
  _RAND_17 = {1{`RANDOM}};
  r_rvcMask_0 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  r_rvcMask_1 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  r_rvcMask_2 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  r_rvcMask_3 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  r_rvcMask_4 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  r_rvcMask_5 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  r_rvcMask_6 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  r_rvcMask_7 = _RAND_24[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

