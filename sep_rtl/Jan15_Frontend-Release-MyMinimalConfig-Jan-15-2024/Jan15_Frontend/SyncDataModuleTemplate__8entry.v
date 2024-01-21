module SyncDataModuleTemplate__8entry(
  input         clock,
  input  [2:0]  io_raddr_0,
  input  [2:0]  io_raddr_1,
  input  [2:0]  io_raddr_2,
  output [2:0]  io_rdata_0_brSlots_0_offset,
  output        io_rdata_0_brSlots_0_valid,
  output [2:0]  io_rdata_0_tailSlot_offset,
  output        io_rdata_0_tailSlot_sharing,
  output        io_rdata_0_tailSlot_valid,
  output        io_rdata_0_isCall,
  output        io_rdata_0_isRet,
  output        io_rdata_0_isJalr,
  output [2:0]  io_rdata_1_brSlots_0_offset,
  output        io_rdata_1_brSlots_0_valid,
  output        io_rdata_1_brSlots_0_sc,
  output [2:0]  io_rdata_1_tailSlot_offset,
  output        io_rdata_1_tailSlot_sharing,
  output        io_rdata_1_tailSlot_valid,
  output        io_rdata_1_tailSlot_sc,
  output        io_rdata_1_isJalr,
  output        io_rdata_2_valid,
  output [2:0]  io_rdata_2_brSlots_0_offset,
  output [11:0] io_rdata_2_brSlots_0_lower,
  output [1:0]  io_rdata_2_brSlots_0_tarStat,
  output        io_rdata_2_brSlots_0_sharing,
  output        io_rdata_2_brSlots_0_valid,
  output        io_rdata_2_brSlots_0_sc,
  output [2:0]  io_rdata_2_tailSlot_offset,
  output [19:0] io_rdata_2_tailSlot_lower,
  output [1:0]  io_rdata_2_tailSlot_tarStat,
  output        io_rdata_2_tailSlot_sharing,
  output        io_rdata_2_tailSlot_valid,
  output        io_rdata_2_tailSlot_sc,
  output [2:0]  io_rdata_2_pftAddr,
  output        io_rdata_2_carry,
  output        io_rdata_2_isCall,
  output        io_rdata_2_isRet,
  output        io_rdata_2_isJalr,
  output        io_rdata_2_last_may_be_rvi_call,
  output        io_rdata_2_always_taken_0,
  output        io_rdata_2_always_taken_1,
  input         io_wen_0,
  input  [2:0]  io_waddr_0,
  input         io_wdata_0_valid,
  input  [2:0]  io_wdata_0_brSlots_0_offset,
  input  [11:0] io_wdata_0_brSlots_0_lower,
  input  [1:0]  io_wdata_0_brSlots_0_tarStat,
  input         io_wdata_0_brSlots_0_sharing,
  input         io_wdata_0_brSlots_0_valid,
  input         io_wdata_0_brSlots_0_sc,
  input  [2:0]  io_wdata_0_tailSlot_offset,
  input  [19:0] io_wdata_0_tailSlot_lower,
  input  [1:0]  io_wdata_0_tailSlot_tarStat,
  input         io_wdata_0_tailSlot_sharing,
  input         io_wdata_0_tailSlot_valid,
  input         io_wdata_0_tailSlot_sc,
  input  [2:0]  io_wdata_0_pftAddr,
  input         io_wdata_0_carry,
  input         io_wdata_0_isCall,
  input         io_wdata_0_isRet,
  input         io_wdata_0_isJalr,
  input         io_wdata_0_last_may_be_rvi_call,
  input         io_wdata_0_always_taken_0,
  input         io_wdata_0_always_taken_1
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
  wire  dataBanks_0_clock; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_raddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_raddr_1; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_raddr_2; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_rdata_0_brSlots_0_offset; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_brSlots_0_valid; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_rdata_0_tailSlot_offset; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_tailSlot_sharing; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_tailSlot_valid; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_isCall; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_isRet; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_isJalr; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_rdata_1_brSlots_0_offset; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_1_brSlots_0_valid; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_1_brSlots_0_sc; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_rdata_1_tailSlot_offset; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_1_tailSlot_sharing; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_1_tailSlot_valid; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_1_tailSlot_sc; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_1_isJalr; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_2_valid; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_rdata_2_brSlots_0_offset; // @[DataModuleTemplate.scala 120:26]
  wire [11:0] dataBanks_0_io_rdata_2_brSlots_0_lower; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_rdata_2_brSlots_0_tarStat; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_2_brSlots_0_sharing; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_2_brSlots_0_valid; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_2_brSlots_0_sc; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_rdata_2_tailSlot_offset; // @[DataModuleTemplate.scala 120:26]
  wire [19:0] dataBanks_0_io_rdata_2_tailSlot_lower; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_rdata_2_tailSlot_tarStat; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_2_tailSlot_sharing; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_2_tailSlot_valid; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_2_tailSlot_sc; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_rdata_2_pftAddr; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_2_carry; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_2_isCall; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_2_isRet; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_2_isJalr; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_2_last_may_be_rvi_call; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_2_always_taken_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_2_always_taken_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wen_0; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_waddr_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_valid; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_wdata_0_brSlots_0_offset; // @[DataModuleTemplate.scala 120:26]
  wire [11:0] dataBanks_0_io_wdata_0_brSlots_0_lower; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_wdata_0_brSlots_0_tarStat; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_brSlots_0_sharing; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_brSlots_0_valid; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_brSlots_0_sc; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_wdata_0_tailSlot_offset; // @[DataModuleTemplate.scala 120:26]
  wire [19:0] dataBanks_0_io_wdata_0_tailSlot_lower; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_wdata_0_tailSlot_tarStat; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_tailSlot_sharing; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_tailSlot_valid; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_tailSlot_sc; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_wdata_0_pftAddr; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_carry; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_isCall; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_isRet; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_isJalr; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_last_may_be_rvi_call; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_always_taken_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_always_taken_1; // @[DataModuleTemplate.scala 120:26]
  reg [2:0] raddr_dup__0; // @[DataModuleTemplate.scala 123:28]
  reg [2:0] raddr_dup__1; // @[DataModuleTemplate.scala 123:28]
  reg [2:0] raddr_dup__2; // @[DataModuleTemplate.scala 123:28]
  reg  wen_dup_0; // @[DataModuleTemplate.scala 124:26]
  reg [2:0] waddr_dup_0; // @[Reg.scala 16:16]
  reg  r_valid; // @[Reg.scala 16:16]
  reg [2:0] r_brSlots_0_offset; // @[Reg.scala 16:16]
  reg [11:0] r_brSlots_0_lower; // @[Reg.scala 16:16]
  reg [1:0] r_brSlots_0_tarStat; // @[Reg.scala 16:16]
  reg  r_brSlots_0_sharing; // @[Reg.scala 16:16]
  reg  r_brSlots_0_valid; // @[Reg.scala 16:16]
  reg  r_brSlots_0_sc; // @[Reg.scala 16:16]
  reg [2:0] r_tailSlot_offset; // @[Reg.scala 16:16]
  reg [19:0] r_tailSlot_lower; // @[Reg.scala 16:16]
  reg [1:0] r_tailSlot_tarStat; // @[Reg.scala 16:16]
  reg  r_tailSlot_sharing; // @[Reg.scala 16:16]
  reg  r_tailSlot_valid; // @[Reg.scala 16:16]
  reg  r_tailSlot_sc; // @[Reg.scala 16:16]
  reg [2:0] r_pftAddr; // @[Reg.scala 16:16]
  reg  r_carry; // @[Reg.scala 16:16]
  reg  r_isCall; // @[Reg.scala 16:16]
  reg  r_isRet; // @[Reg.scala 16:16]
  reg  r_isJalr; // @[Reg.scala 16:16]
  reg  r_last_may_be_rvi_call; // @[Reg.scala 16:16]
  reg  r_always_taken_0; // @[Reg.scala 16:16]
  reg  r_always_taken_1; // @[Reg.scala 16:16]
  NegedgeDataModule__8entry dataBanks_0 ( // @[DataModuleTemplate.scala 120:26]
    .clock(dataBanks_0_clock),
    .io_raddr_0(dataBanks_0_io_raddr_0),
    .io_raddr_1(dataBanks_0_io_raddr_1),
    .io_raddr_2(dataBanks_0_io_raddr_2),
    .io_rdata_0_brSlots_0_offset(dataBanks_0_io_rdata_0_brSlots_0_offset),
    .io_rdata_0_brSlots_0_valid(dataBanks_0_io_rdata_0_brSlots_0_valid),
    .io_rdata_0_tailSlot_offset(dataBanks_0_io_rdata_0_tailSlot_offset),
    .io_rdata_0_tailSlot_sharing(dataBanks_0_io_rdata_0_tailSlot_sharing),
    .io_rdata_0_tailSlot_valid(dataBanks_0_io_rdata_0_tailSlot_valid),
    .io_rdata_0_isCall(dataBanks_0_io_rdata_0_isCall),
    .io_rdata_0_isRet(dataBanks_0_io_rdata_0_isRet),
    .io_rdata_0_isJalr(dataBanks_0_io_rdata_0_isJalr),
    .io_rdata_1_brSlots_0_offset(dataBanks_0_io_rdata_1_brSlots_0_offset),
    .io_rdata_1_brSlots_0_valid(dataBanks_0_io_rdata_1_brSlots_0_valid),
    .io_rdata_1_brSlots_0_sc(dataBanks_0_io_rdata_1_brSlots_0_sc),
    .io_rdata_1_tailSlot_offset(dataBanks_0_io_rdata_1_tailSlot_offset),
    .io_rdata_1_tailSlot_sharing(dataBanks_0_io_rdata_1_tailSlot_sharing),
    .io_rdata_1_tailSlot_valid(dataBanks_0_io_rdata_1_tailSlot_valid),
    .io_rdata_1_tailSlot_sc(dataBanks_0_io_rdata_1_tailSlot_sc),
    .io_rdata_1_isJalr(dataBanks_0_io_rdata_1_isJalr),
    .io_rdata_2_valid(dataBanks_0_io_rdata_2_valid),
    .io_rdata_2_brSlots_0_offset(dataBanks_0_io_rdata_2_brSlots_0_offset),
    .io_rdata_2_brSlots_0_lower(dataBanks_0_io_rdata_2_brSlots_0_lower),
    .io_rdata_2_brSlots_0_tarStat(dataBanks_0_io_rdata_2_brSlots_0_tarStat),
    .io_rdata_2_brSlots_0_sharing(dataBanks_0_io_rdata_2_brSlots_0_sharing),
    .io_rdata_2_brSlots_0_valid(dataBanks_0_io_rdata_2_brSlots_0_valid),
    .io_rdata_2_brSlots_0_sc(dataBanks_0_io_rdata_2_brSlots_0_sc),
    .io_rdata_2_tailSlot_offset(dataBanks_0_io_rdata_2_tailSlot_offset),
    .io_rdata_2_tailSlot_lower(dataBanks_0_io_rdata_2_tailSlot_lower),
    .io_rdata_2_tailSlot_tarStat(dataBanks_0_io_rdata_2_tailSlot_tarStat),
    .io_rdata_2_tailSlot_sharing(dataBanks_0_io_rdata_2_tailSlot_sharing),
    .io_rdata_2_tailSlot_valid(dataBanks_0_io_rdata_2_tailSlot_valid),
    .io_rdata_2_tailSlot_sc(dataBanks_0_io_rdata_2_tailSlot_sc),
    .io_rdata_2_pftAddr(dataBanks_0_io_rdata_2_pftAddr),
    .io_rdata_2_carry(dataBanks_0_io_rdata_2_carry),
    .io_rdata_2_isCall(dataBanks_0_io_rdata_2_isCall),
    .io_rdata_2_isRet(dataBanks_0_io_rdata_2_isRet),
    .io_rdata_2_isJalr(dataBanks_0_io_rdata_2_isJalr),
    .io_rdata_2_last_may_be_rvi_call(dataBanks_0_io_rdata_2_last_may_be_rvi_call),
    .io_rdata_2_always_taken_0(dataBanks_0_io_rdata_2_always_taken_0),
    .io_rdata_2_always_taken_1(dataBanks_0_io_rdata_2_always_taken_1),
    .io_wen_0(dataBanks_0_io_wen_0),
    .io_waddr_0(dataBanks_0_io_waddr_0),
    .io_wdata_0_valid(dataBanks_0_io_wdata_0_valid),
    .io_wdata_0_brSlots_0_offset(dataBanks_0_io_wdata_0_brSlots_0_offset),
    .io_wdata_0_brSlots_0_lower(dataBanks_0_io_wdata_0_brSlots_0_lower),
    .io_wdata_0_brSlots_0_tarStat(dataBanks_0_io_wdata_0_brSlots_0_tarStat),
    .io_wdata_0_brSlots_0_sharing(dataBanks_0_io_wdata_0_brSlots_0_sharing),
    .io_wdata_0_brSlots_0_valid(dataBanks_0_io_wdata_0_brSlots_0_valid),
    .io_wdata_0_brSlots_0_sc(dataBanks_0_io_wdata_0_brSlots_0_sc),
    .io_wdata_0_tailSlot_offset(dataBanks_0_io_wdata_0_tailSlot_offset),
    .io_wdata_0_tailSlot_lower(dataBanks_0_io_wdata_0_tailSlot_lower),
    .io_wdata_0_tailSlot_tarStat(dataBanks_0_io_wdata_0_tailSlot_tarStat),
    .io_wdata_0_tailSlot_sharing(dataBanks_0_io_wdata_0_tailSlot_sharing),
    .io_wdata_0_tailSlot_valid(dataBanks_0_io_wdata_0_tailSlot_valid),
    .io_wdata_0_tailSlot_sc(dataBanks_0_io_wdata_0_tailSlot_sc),
    .io_wdata_0_pftAddr(dataBanks_0_io_wdata_0_pftAddr),
    .io_wdata_0_carry(dataBanks_0_io_wdata_0_carry),
    .io_wdata_0_isCall(dataBanks_0_io_wdata_0_isCall),
    .io_wdata_0_isRet(dataBanks_0_io_wdata_0_isRet),
    .io_wdata_0_isJalr(dataBanks_0_io_wdata_0_isJalr),
    .io_wdata_0_last_may_be_rvi_call(dataBanks_0_io_wdata_0_last_may_be_rvi_call),
    .io_wdata_0_always_taken_0(dataBanks_0_io_wdata_0_always_taken_0),
    .io_wdata_0_always_taken_1(dataBanks_0_io_wdata_0_always_taken_1)
  );
  assign io_rdata_0_brSlots_0_offset = dataBanks_0_io_rdata_0_brSlots_0_offset; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_brSlots_0_valid = dataBanks_0_io_rdata_0_brSlots_0_valid; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_tailSlot_offset = dataBanks_0_io_rdata_0_tailSlot_offset; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_tailSlot_sharing = dataBanks_0_io_rdata_0_tailSlot_sharing; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_tailSlot_valid = dataBanks_0_io_rdata_0_tailSlot_valid; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_isCall = dataBanks_0_io_rdata_0_isCall; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_isRet = dataBanks_0_io_rdata_0_isRet; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_isJalr = dataBanks_0_io_rdata_0_isJalr; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_1_brSlots_0_offset = dataBanks_0_io_rdata_1_brSlots_0_offset; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_1_brSlots_0_valid = dataBanks_0_io_rdata_1_brSlots_0_valid; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_1_brSlots_0_sc = dataBanks_0_io_rdata_1_brSlots_0_sc; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_1_tailSlot_offset = dataBanks_0_io_rdata_1_tailSlot_offset; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_1_tailSlot_sharing = dataBanks_0_io_rdata_1_tailSlot_sharing; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_1_tailSlot_valid = dataBanks_0_io_rdata_1_tailSlot_valid; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_1_tailSlot_sc = dataBanks_0_io_rdata_1_tailSlot_sc; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_1_isJalr = dataBanks_0_io_rdata_1_isJalr; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_valid = dataBanks_0_io_rdata_2_valid; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_brSlots_0_offset = dataBanks_0_io_rdata_2_brSlots_0_offset; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_brSlots_0_lower = dataBanks_0_io_rdata_2_brSlots_0_lower; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_brSlots_0_tarStat = dataBanks_0_io_rdata_2_brSlots_0_tarStat; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_brSlots_0_sharing = dataBanks_0_io_rdata_2_brSlots_0_sharing; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_brSlots_0_valid = dataBanks_0_io_rdata_2_brSlots_0_valid; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_brSlots_0_sc = dataBanks_0_io_rdata_2_brSlots_0_sc; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_tailSlot_offset = dataBanks_0_io_rdata_2_tailSlot_offset; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_tailSlot_lower = dataBanks_0_io_rdata_2_tailSlot_lower; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_tailSlot_tarStat = dataBanks_0_io_rdata_2_tailSlot_tarStat; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_tailSlot_sharing = dataBanks_0_io_rdata_2_tailSlot_sharing; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_tailSlot_valid = dataBanks_0_io_rdata_2_tailSlot_valid; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_tailSlot_sc = dataBanks_0_io_rdata_2_tailSlot_sc; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_pftAddr = dataBanks_0_io_rdata_2_pftAddr; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_carry = dataBanks_0_io_rdata_2_carry; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_isCall = dataBanks_0_io_rdata_2_isCall; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_isRet = dataBanks_0_io_rdata_2_isRet; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_isJalr = dataBanks_0_io_rdata_2_isJalr; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_last_may_be_rvi_call = dataBanks_0_io_rdata_2_last_may_be_rvi_call; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_always_taken_0 = dataBanks_0_io_rdata_2_always_taken_0; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_always_taken_1 = dataBanks_0_io_rdata_2_always_taken_1; // @[DataModuleTemplate.scala 147:17]
  assign dataBanks_0_clock = clock;
  assign dataBanks_0_io_raddr_0 = raddr_dup__0; // @[DataModuleTemplate.scala 128:23]
  assign dataBanks_0_io_raddr_1 = raddr_dup__1; // @[DataModuleTemplate.scala 128:23]
  assign dataBanks_0_io_raddr_2 = raddr_dup__2; // @[DataModuleTemplate.scala 128:23]
  assign dataBanks_0_io_wen_0 = wen_dup_0; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_0_io_waddr_0 = waddr_dup_0; // @[DataModuleTemplate.scala 130:23]
  assign dataBanks_0_io_wdata_0_valid = r_valid; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_brSlots_0_offset = r_brSlots_0_offset; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_brSlots_0_lower = r_brSlots_0_lower; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_brSlots_0_tarStat = r_brSlots_0_tarStat; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_brSlots_0_sharing = r_brSlots_0_sharing; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_brSlots_0_valid = r_brSlots_0_valid; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_brSlots_0_sc = r_brSlots_0_sc; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_tailSlot_offset = r_tailSlot_offset; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_tailSlot_lower = r_tailSlot_lower; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_tailSlot_tarStat = r_tailSlot_tarStat; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_tailSlot_sharing = r_tailSlot_sharing; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_tailSlot_valid = r_tailSlot_valid; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_tailSlot_sc = r_tailSlot_sc; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_pftAddr = r_pftAddr; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_carry = r_carry; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_isCall = r_isCall; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_isRet = r_isRet; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_isJalr = r_isJalr; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_last_may_be_rvi_call = r_last_may_be_rvi_call; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_always_taken_0 = r_always_taken_0; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_always_taken_1 = r_always_taken_1; // @[DataModuleTemplate.scala 136:25]
  always @(posedge clock) begin
    raddr_dup__0 <= io_raddr_0; // @[DataModuleTemplate.scala 123:28]
    raddr_dup__1 <= io_raddr_1; // @[DataModuleTemplate.scala 123:28]
    raddr_dup__2 <= io_raddr_2; // @[DataModuleTemplate.scala 123:28]
    wen_dup_0 <= io_wen_0; // @[DataModuleTemplate.scala 124:26]
    if (io_wen_0) begin // @[Reg.scala 17:18]
      waddr_dup_0 <= io_waddr_0; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_valid <= io_wdata_0_valid; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_brSlots_0_offset <= io_wdata_0_brSlots_0_offset; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_brSlots_0_lower <= io_wdata_0_brSlots_0_lower; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_brSlots_0_tarStat <= io_wdata_0_brSlots_0_tarStat; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_brSlots_0_sharing <= io_wdata_0_brSlots_0_sharing; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_brSlots_0_valid <= io_wdata_0_brSlots_0_valid; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_brSlots_0_sc <= io_wdata_0_brSlots_0_sc; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_tailSlot_offset <= io_wdata_0_tailSlot_offset; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_tailSlot_lower <= io_wdata_0_tailSlot_lower; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_tailSlot_tarStat <= io_wdata_0_tailSlot_tarStat; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_tailSlot_sharing <= io_wdata_0_tailSlot_sharing; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_tailSlot_valid <= io_wdata_0_tailSlot_valid; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_tailSlot_sc <= io_wdata_0_tailSlot_sc; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_pftAddr <= io_wdata_0_pftAddr; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_carry <= io_wdata_0_carry; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_isCall <= io_wdata_0_isCall; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_isRet <= io_wdata_0_isRet; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_isJalr <= io_wdata_0_isJalr; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_last_may_be_rvi_call <= io_wdata_0_last_may_be_rvi_call; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_always_taken_0 <= io_wdata_0_always_taken_0; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_always_taken_1 <= io_wdata_0_always_taken_1; // @[Reg.scala 17:22]
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
  wen_dup_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  waddr_dup_0 = _RAND_4[2:0];
  _RAND_5 = {1{`RANDOM}};
  r_valid = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  r_brSlots_0_offset = _RAND_6[2:0];
  _RAND_7 = {1{`RANDOM}};
  r_brSlots_0_lower = _RAND_7[11:0];
  _RAND_8 = {1{`RANDOM}};
  r_brSlots_0_tarStat = _RAND_8[1:0];
  _RAND_9 = {1{`RANDOM}};
  r_brSlots_0_sharing = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  r_brSlots_0_valid = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  r_brSlots_0_sc = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  r_tailSlot_offset = _RAND_12[2:0];
  _RAND_13 = {1{`RANDOM}};
  r_tailSlot_lower = _RAND_13[19:0];
  _RAND_14 = {1{`RANDOM}};
  r_tailSlot_tarStat = _RAND_14[1:0];
  _RAND_15 = {1{`RANDOM}};
  r_tailSlot_sharing = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  r_tailSlot_valid = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  r_tailSlot_sc = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  r_pftAddr = _RAND_18[2:0];
  _RAND_19 = {1{`RANDOM}};
  r_carry = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  r_isCall = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  r_isRet = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  r_isJalr = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  r_last_may_be_rvi_call = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  r_always_taken_0 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  r_always_taken_1 = _RAND_25[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

